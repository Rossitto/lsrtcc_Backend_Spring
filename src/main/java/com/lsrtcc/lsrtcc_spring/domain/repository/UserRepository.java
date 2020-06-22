package com.lsrtcc.lsrtcc_spring.domain.repository;

import java.util.List;

import com.lsrexample.lsrexample.domain.model.Cliente;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

//Tipo da Classe e qual é o tipo do ID -> por isso Long
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    List<User> findByName(String name);

    List<User> findByNameContaining(String name);

    User findByEmail(String email);

}