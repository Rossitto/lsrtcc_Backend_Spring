package com.lsrtcc.lsrtcc_spring.domain.repository;

import java.util.List;

import com.lsrtcc.lsrtcc_spring.domain.model.Band;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface BandRepository extends JpaRepository<Band, Long> {

    Band findByEmail(String email);

    List<Band> findByName(String name);

    List<Band> findByNameContaining(String name);

    Band findByCnpj(String cnpj);

    @Query(value = "select * from band as b inner join band_user as bu on b.id = bu.band_id and bu.user_id = :userId", nativeQuery = true)
    List<Band> findByUser(@Param("userId") Long user_id);

    // // TODO: test if method below is working: findByStyleContaining
    // List<Band> findByStyleContaining(String style);

    // // TODO: this method were causeing the application to failt. So, I commented
    // it (01/08/2020)
    // @Query("select band from #{#entityName} band where band.attribute = ?1")
    // List<Band> findAllByAttribute(String style);
}