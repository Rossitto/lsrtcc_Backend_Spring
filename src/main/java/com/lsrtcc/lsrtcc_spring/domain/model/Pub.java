package com.lsrtcc.lsrtcc_spring.domain.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.NumberFormat;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Table(name = "pub")
@Entity
public class Pub {

    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    @OneToMany(mappedBy = "pub")
    private ShowSchedule showSchedule;

    @NotBlank
    @Size(max = 60)
    private String name;

    @NotBlank
    @Size(max = 22)
    private String cnpj;

    @NotBlank
    @Size(max = 300)
    private String address;

    @NotBlank
    @NumberFormat
    private Integer address_num;

    @NotBlank
    @NumberFormat
    @Size(max = 9)
    private Integer address_cep;

    @NotBlank
    @Size(max = 60)
    private String city;

    @NotBlank
    @Size(max = 2)
    private String state;

    @NotBlank
    @Size(max = 20)
    private String phone;

    @NotBlank
    @Size(max = 60)
    private String email;

}