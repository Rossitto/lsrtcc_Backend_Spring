package com.lsrtcc.lsrtcc_spring.domain.repository;

import java.util.List;
import java.util.Optional;

import com.lsrtcc.lsrtcc_spring.domain.model.Band;
import com.lsrtcc.lsrtcc_spring.domain.model.Pub;
import com.lsrtcc.lsrtcc_spring.domain.model.ShowSchedule;

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

    List<ShowSchedule> findByBand(Band band);

    List<ShowSchedule> findByPub(Optional<Pub> pub);

}
