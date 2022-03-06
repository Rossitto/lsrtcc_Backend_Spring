_selectedIndex

selectedBandJson



select 
    case when requested_by_band is true then 
               else end requested_by_me
from show_schedule   




/* requested by me ? */
select 
    true as requested_by_me
from       show_schedule ss
inner join band           b on ss.band_id = b.id
inner join band_user     bu on bu.band_id = b.id
where
    ss.requested_by_band is true
and ss.id      = :show_id
and bu.user_id = :user_id
limit 1

UNION ALL

/* requested by me ? */
select 
    false as requested_by_me
from       show_schedule ss
inner join band           b on ss.band_id = b.id
inner join band_user     bu on bu.band_id = b.id
where
    ss.requested_by_band is true
and ss.id      =  :show_id
and bu.user_id <> :user_id
limit 1



select 
case when (user_band_id = band_id and requested_by_band is true)  then true 
     when (user_pub_id  = pub_id  and requested_by_band is false) then true 
     else false end as requested_by_me 
from (
select distinct 
    ss.* , b.id user_band_id, p.id user_pub_id
from  show_schedule ss 
left join       pub  p on p.user_id  = 4 and ss.pub_id = p.id
left join band_user bu on bu.user_id = 4 and ss.band_id = bu.band_id 
left join      band  b on bu.band_id = b.id 
where 
    ss.pub_id = p.id or(ss.band_id = bu.band_id and ss.band_id = b.id) 
    and ss.id = 18 
limit 1  
) as query1;    




-- ShowSchedule = WasRequestedByUser ?
select 
case when (user_band_id = band_id and requested_by_band is true)  then true 
     when (user_pub_id  = pub_id  and requested_by_band is false) then true 
     else false end as requested_by_user 
from (
select distinct 
    ss.* , b.id user_band_id, p.id user_pub_id
from  show_schedule ss 
left join       pub  p on p.user_id  = 2 and ss.pub_id = p.id
left join band_user bu on bu.user_id = 2 and ss.band_id = bu.band_id 
left join      band  b on bu.band_id = b.id 
where 
    ss.pub_id = p.id or(ss.band_id = bu.band_id and ss.band_id = b.id) 
    and ss.id = 17
limit 1  
) as query1;    









/* SOLICITADO PELO USER = EVENTS AWAITING OUTRO ACEITAR */
select distinct ss.*  
from  show_schedule ss 
left join       pub  p on p.user_id  = 2 and ss.pub_id = p.id
left join band_user bu on bu.user_id = 2 and ss.band_id = bu.band_id 
left join      band  b on bu.band_id = b.id  
where 
    ss.pub_id = p.id or (ss.band_id = bu.band_id and ss.band_id = b.id) 
    and ss.id = 17
    and ss.confirmed is false 
    AND ( (b.id = ss.band_id and ss.requested_by_band is true) OR (p.id  = ss.pub_id  and ss.requested_by_band is false) );
    

/*SOLICITADO POR OUTRO = EVENTS PENDING USER ACEITAR */
select distinct ss.*  
from  show_schedule ss 
left join       pub  p on p.user_id  = 2 and ss.pub_id = p.id
left join band_user bu on bu.user_id = 2 and ss.band_id = bu.band_id 
left join      band  b on bu.band_id = b.id  
where 
    ss.pub_id = p.id or (ss.band_id = bu.band_id and ss.band_id = b.id) 
    and ss.id = 17
    and ss.confirmed is false 
    AND ( (b.id = ss.band_id and ss.requested_by_band is FALSE) OR (p.id  = ss.pub_id  and ss.requested_by_band is TRUE) );



----- NOVO ...
-- AWAITING ALGUÉM: requisitado pelo pub, e o pub é meu. 
select s.*
from user                u 
inner join pub           p on p.user_id = u.id
inner join show_schedule s on s.pub_id  = p.id
where u.id = 2
and s.confirmed is false 
and s.requested_by_band is false ;

-- AWAITING ALGUÉM: requisitado pela banda, e banda é minha. 
select s.*
from user                 u 
inner join band_user     bu on bu.user_id = u.id
inner join band           b on b.id       = bu.band_id   
inner join show_schedule  s on s.band_id  = b.id
where u.id = 2
and s.confirmed is false 
and s.requested_by_band is true ;


-- PENDING USER ACEITAR: requisitado pelo pub, e a banda é minha. 
select s.*
from user                 u 
inner join band_user     bu on bu.user_id = u.id
inner join band           b on b.id       = bu.band_id   
inner join show_schedule  s on s.band_id  = b.id
where u.id = 2
and s.confirmed is false 
and s.requested_by_band is false ;

-- PENDING USER ACEITAR: requisitado pela banda, e o pub é meu.
select s.*
from user                u 
inner join pub           p on p.user_id = u.id
inner join show_schedule s on s.pub_id  = p.id
where u.id = 2
and s.confirmed is false 
and s.requested_by_band is true ;


-- RESORVIDO !

/* AWAITING ALGUÉM: requisitado pelo pub, e o pub é meu. */
select s.*
from user                u 
inner join pub           p on p.user_id = u.id
inner join show_schedule s on s.pub_id  = p.id
where u.id = :userId
and s.confirmed is false 
and s.requested_by_band is false 
UNION ALL
/* AWAITING ALGUÉM: requisitado pela banda, e banda é minha. */
select s.*
from user                 u 
inner join band_user     bu on bu.user_id = u.id
inner join band           b on b.id       = bu.band_id   
inner join show_schedule  s on s.band_id  = b.id
where u.id = :userId
and s.confirmed is false 
and s.requested_by_band is true ;


/* PENDING USER ACEITAR: requisitado pelo pub, e a banda é minha. */
select s.*
from user                 u 
inner join band_user     bu on bu.user_id = u.id
inner join band           b on b.id       = bu.band_id   
inner join show_schedule  s on s.band_id  = b.id
where u.id = :userId
and s.confirmed is false 
and s.requested_by_band is false 
UNION ALL
/* PENDING USER ACEITAR: requisitado pela banda, e o pub é meu. */
select s.*
from user                u 
inner join pub           p on p.user_id = u.id
inner join show_schedule s on s.pub_id  = p.id
where u.id = :userId
and s.confirmed is false 
and s.requested_by_band is true ;


/* CONFIRMED */
select s.*
from user                 u 
inner join band_user     bu on bu.user_id = u.id
inner join band           b on b.id       = bu.band_id   
inner join show_schedule  s on s.band_id  = b.id
where u.id = :userId
and s.confirmed is true 
and s.confirmed_at is not null
UNION ALL
select s.*
from user                u 
inner join pub           p on p.user_id = u.id
inner join show_schedule s on s.pub_id  = p.id
where u.id = :userId
and s.confirmed is true 
and s.confirmed_at is not null ;