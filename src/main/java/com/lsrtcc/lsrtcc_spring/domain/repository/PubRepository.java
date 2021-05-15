package com.lsrtcc.lsrtcc_spring.domain.repository;

import java.util.List;

import com.lsrtcc.lsrtcc_spring.domain.model.Pub;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PubRepository extends JpaRepository<Pub, Long> {

    List<Pub> findByName(String name);

    List<Pub> findByNameContaining(String name);

    Pub findByEmail(String email);

    Pub findByCnpj(String cnpj);

    @Query(value = "select * from pub as p inner join pub_manager as pm on p.id = pm.pub_id where pm.user_id = :userId", nativeQuery = true)
    List<Pub> findByUser(@Param("userId") Long user_id);

}