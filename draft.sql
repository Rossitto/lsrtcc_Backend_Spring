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


