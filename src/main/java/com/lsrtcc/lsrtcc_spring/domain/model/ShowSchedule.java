package com.lsrtcc.lsrtcc_spring.domain.model;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class ShowSchedule {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long pub_id;

    private Long band_id;

    @NotBlank
    private LocalDate date;

    @NotBlank
    private LocalTime time;

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((band_id == null) ? 0 : band_id.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        ShowSchedule other = (ShowSchedule) obj;
        if (band_id == null) {
            if (other.band_id != null)
                return false;
        } else if (!band_id.equals(other.band_id))
            return false;
        return true;
    }

    // // COM O CONSTRUCTOR, A API DAVA INTERNAL SERVER ERROR 500 !!!
    // public ShowSchedule(Long pub_id, Long band_id, @NotBlank LocalDateTime
    // event_datetime) {
    // this.pub_id = pub_id;
    // this.band_id = band_id;
    // this.event_datetime = event_datetime;
    // }

}
