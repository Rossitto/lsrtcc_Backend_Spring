package com.lsrtcc.lsrtcc_spring.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.lsrtcc.lsrtcc_spring.domain.model.Band;

@Repository
public interface BandRepository extends JpaRepository<Band, Long> {

    Band findByEmail(String email);

    List<Band> findByName(String name);

    List<Band> findByNameContaining(String name);

    List<Band> findAll();

    // TODO: test if method below is working: findByStyleContaining
    List<Band> findByStyleContaining(String style);

    // TODO: test if method below is working: findAllByAttribute
    @Query("select band from #{#entityName} band where band.attribute = ?1")
    List<Band> findAllByAttribute(String style);
}