package com.lsrtcc.lsrtcc_spring.domain.repository;

import java.util.List;

import com.lsrtcc.lsrtcc_spring.domain.model.Band;
import com.lsrtcc.lsrtcc_spring.domain.model.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BandRepository extends JpaRepository<Band, Long> {

    Band findByEmail(String email);

    List<Band> findByName(String name);

    List<Band> findByNameContaining(String name);

    Band findByCnpj(String cnpj);

    List<Band> findByUser(User user);

    // @Query(value = "select * from band as b inner join band_user as bu on b.id =
    // bu.band_id and bu.user_id = :userId", nativeQuery = true)
    // List<Band> findByUser(@Param("userId") Long user_id);

}