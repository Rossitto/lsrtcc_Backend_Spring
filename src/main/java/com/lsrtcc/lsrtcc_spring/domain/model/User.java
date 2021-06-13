package com.lsrtcc.lsrtcc_spring.domain.model;

import java.util.List;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Table(name = "user")
@Entity
public class User {

    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    // @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    // RENAN: remover
    // @OneToOne(mappedBy = "user")
    // private Band band;

    // @OneToOne(mappedBy = "user")
    // private Pub pub;

    // EU REMOVI:
    // @OneToMany
    // @JoinColumn(name = "band_id")
    // private List<Band> bands;

    @NotBlank
    @Size(max = 60)
    private String name;

    @NotBlank
    @Email
    @Size(max = 255)
    private String email;

    @NotBlank
    @Size(max = 20)
    private String phone;

    @NotBlank
    @Size(max = 60)
    private String password;

}