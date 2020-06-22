package com.lsrtcc.lsrtcc_spring.domain.repository;

import java.util.List;

import com.lsrtcc.lsrtcc_spring.domain.model.User;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

// JpaRepository<Tipo da Classe e qual é o tipo do ID> -> por isso Long
// REPOSITORY FAZ CONSULTAS NO BANCO DE DADOS
@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    User findByEmail(String email);

    // não utilizado por enquanto
    List<User> findByName(String name);

    // não utilizado por enquanto
    List<User> findByNameContaining(String name);

}