package com.lsrtcc.lsrtcc_spring.domain.repository;

import java.util.List;
import java.util.Optional;

import com.lsrtcc.lsrtcc_spring.domain.model.Band;
import com.lsrtcc.lsrtcc_spring.domain.model.Pub;
import com.lsrtcc.lsrtcc_spring.domain.model.ShowSchedule;
import com.lsrtcc.lsrtcc_spring.domain.model.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ShowScheduleRepository extends JpaRepository<ShowSchedule, Long> {

    // TODO: verificar se esses métodos funcionaram. Se precisar, descomentar os de
    // cima.

    // @Query(value = "select * from show_schedule where band_id = :bandId",
    // nativeQuery = true)
    // List<ShowSchedule> findByBand(@Param("bandId") Long band_id);

    // @Query(value = "select * from show_schedule where pub_id = :pubId",
    // nativeQuery = true)
    // List<ShowSchedule> findByPub(@Param("pubId") Long pub_id);

    List<ShowSchedule> findByBand(Optional<Band> band);

    List<ShowSchedule> findByPub(Optional<Pub> pub);

    @Query(value = "select distinct ss.* from show_schedule ss left join pub p on p.user_id = :userId left join band_user bu on bu.user_id = :userId left join band b on bu.band_id = b.id where ss.pub_id = p.id or(ss.band_id = bu.band_id and ss.band_id = b.id) ;", nativeQuery = true)
    List<ShowSchedule> findByUser(Long userId);

    String queryWasRequestedByUser = "select case when (user_band_id = band_id and requested_by_band is true) then true when (user_pub_id = pub_id and requested_by_band is false) then true else false end as requested_by_user from ( select distinct ss.* , b.id user_band_id, p.id user_pub_id from show_schedule ss left join pub p on p.user_id = :userId and ss.pub_id = p.id left join band_user bu on bu.user_id = :userId and ss.band_id = bu.band_id left join band b on bu.band_id = b.id where ss.pub_id = p.id or(ss.band_id = bu.band_id and ss.band_id = b.id) and ss.id = :showScheduleId limit 1 ) as query1;";

    @Query(value = queryWasRequestedByUser, nativeQuery = true)
    Long wasRequestedByUser(Long userId, Long showScheduleId);

    String queryFindByUserPending = "select s.* from user u inner join band_user bu on bu.user_id = u.id inner join band b on b.id = bu.band_id inner join show_schedule s on s.band_id = b.id where u.id = :userId and s.confirmed is false and s.requested_by_band is false UNION ALL select s.* from user u inner join pub p on p.user_id = u.id inner join show_schedule s on s.pub_id = p.id where u.id = :userId and s.confirmed is false and s.requested_by_band is true ;";

    @Query(value = queryFindByUserPending, nativeQuery = true)
    List<ShowSchedule> findByUserPending(Long userId);

    String queryFindByUserAwaiting = "select s.* from user u inner join pub p on p.user_id = u.id inner join show_schedule s on s.pub_id = p.id where u.id = :userId and s.confirmed is false and s.requested_by_band is false UNION ALL select s.* from user u inner join band_user bu on bu.user_id = u.id inner join band b on b.id = bu.band_id inner join show_schedule s on s.band_id = b.id where u.id = :userId and s.confirmed is false and s.requested_by_band is true ;";

    @Query(value = queryFindByUserAwaiting, nativeQuery = true)
    List<ShowSchedule> findByUserAwaiting(Long userId);

    String queryFindByUserConfirmed = "select s.* from user u inner join band_user bu on bu.user_id = u.id inner join band b on b.id = bu.band_id inner join show_schedule s on s.band_id = b.id where u.id = :userId and s.confirmed is true and s.confirmed_at is not null UNION ALL select s.* from user u inner join pub p on p.user_id = u.id inner join show_schedule s on s.pub_id = p.id where u.id = :userId and s.confirmed is true and s.confirmed_at is not null ;";

    @Query(value = queryFindByUserConfirmed, nativeQuery = true)
    List<ShowSchedule> findByUserConfirmed(Long userId);

}
