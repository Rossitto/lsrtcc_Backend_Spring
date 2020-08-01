package com.lsrtcc.lsrtcc_spring.domain.repository;

import java.util.List;

import com.lsrtcc.lsrtcc_spring.domain.model.Pub;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PubRepository extends JpaRepository<Pub, Long> {

    List<Pub> findByName(String name);

    List<Pub> findByNameContaining(String name);

    Pub findByEmail(String email);

    Pub findByCnpj(String cnpj);

}