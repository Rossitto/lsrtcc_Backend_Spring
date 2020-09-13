package com.lsrtcc.lsrtcc_spring.domain.repository;

import com.lsrtcc.lsrtcc_spring.domain.model.ShowSchedule;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShowScheduleRepository extends JpaRepository<ShowSchedule, Long> {

}
