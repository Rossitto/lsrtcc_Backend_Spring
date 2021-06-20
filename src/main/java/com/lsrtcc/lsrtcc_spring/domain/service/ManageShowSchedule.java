package com.lsrtcc.lsrtcc_spring.domain.service;

import java.time.LocalDateTime;

import com.lsrtcc.lsrtcc_spring.domain.exception.DomainException;
import com.lsrtcc.lsrtcc_spring.domain.model.ShowSchedule;
import com.lsrtcc.lsrtcc_spring.domain.repository.BandRepository;
import com.lsrtcc.lsrtcc_spring.domain.repository.PubRepository;
import com.lsrtcc.lsrtcc_spring.domain.repository.ShowScheduleRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ManageShowSchedule {

    @Autowired
    private ShowScheduleRepository showScheduleRepository;

    @Autowired
    private BandRepository bandRepository;

    @Autowired
    private PubRepository pubRepository;

    public ShowSchedule save(ShowSchedule showSchedule) {

        return showScheduleRepository.save(showSchedule);
    }

    public void changeDateTime(Long showScheduleId, LocalDateTime dateTime) {
        ShowSchedule showSchedule = find(showScheduleId);

        showSchedule.setShow_datetime(dateTime);

    }

    public ShowSchedule confirm(Long showScheduleId) {
        ShowSchedule showSchedule = find(showScheduleId);

        showSchedule.setConfirmed(true);

        showSchedule.setConfirmed_at(LocalDateTime.now());

        return showScheduleRepository.save(showSchedule);

    }

    public ShowSchedule unconfirm(Long showScheduleId) {
        ShowSchedule showSchedule = find(showScheduleId);

        showSchedule.setConfirmed(false);

        showSchedule.setConfirmed_at(null);

        return showScheduleRepository.save(showSchedule);

    }

    private ShowSchedule find(Long showScheduleId) {
        return showScheduleRepository.findById(showScheduleId)
                .orElseThrow(() -> new DomainException("Show não encontrado"));
    }

    public void delete(Long showScheduleId) {
        showScheduleRepository.deleteById(showScheduleId);
    }

}
