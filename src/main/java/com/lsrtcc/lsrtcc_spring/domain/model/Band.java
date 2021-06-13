package com.lsrtcc.lsrtcc_spring.domain.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.NumberFormat;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Table(name = "band")
@Entity
public class Band {

    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // RENAN: remover
    @OneToOne
    @JoinColumn(name = "user_id")
    private User user;

    // RENAN: remover
    // @OneToMany(mappedBy = "band")
    // private List<ShowSchedule> showSchedule;

    // @ManyToMany
    // @JoinTable(name = "show_schedule", joinColumns = @JoinColumn(name =
    // "band_id"), inverseJoinColumns = @JoinColumn(name = "pub_id"))
    // private List<Pub> pubs;

    @NotBlank
    @Size(max = 30)
    private String name;

    @Size(max = 22)
    private String cnpj;

    @NotBlank
    @Size(max = 10)
    private double fee_brl;

    @NotBlank
    @NumberFormat
    private int members_num;

    @Size(max = 50)
    private String style;

    @NotBlank
    @Size(max = 20)
    private String phone;

    @NotBlank
    @Email
    @Size(max = 100)
    private String email;

}