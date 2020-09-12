package com.lsrtcc.lsrtcc_spring.domain.model;

import java.time.OffsetDateTime;

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
public class ShowCalendar {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long pub_id;

    private Long band_id;

    @NotBlank
    private OffsetDateTime event_datetime;

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
        ShowCalendar other = (ShowCalendar) obj;
        if (band_id == null) {
            if (other.band_id != null)
                return false;
        } else if (!band_id.equals(other.band_id))
            return false;
        return true;
    }

}
