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

}
