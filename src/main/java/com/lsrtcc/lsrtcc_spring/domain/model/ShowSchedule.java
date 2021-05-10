package com.lsrtcc.lsrtcc_spring.domain.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
@Table(name = "show_schedule")
@Entity
public class ShowSchedule {

    @EqualsAndHashCode.Include
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long pub_id;

    private Long band_id;

    @NotBlank
    private LocalDateTime show_datetime;

    private boolean confirmed;

    private LocalDateTime confirmed_at;

    private LocalDateTime requested_at;

}
