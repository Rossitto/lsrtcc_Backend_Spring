package com.lsrtcc.lsrtcc_spring.domain.service;

import java.time.LocalDateTime;
import java.util.List;

import com.lsrtcc.lsrtcc_spring.domain.exception.DomainException;
import com.lsrtcc.lsrtcc_spring.domain.model.Band;
import com.lsrtcc.lsrtcc_spring.domain.model.Pub;
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
        Pub pub = pubRepository.findById(showSchedule.getPub_id())
                .orElseThrow(() -> new DomainException("Pub não encontrado"));

        Band band = bandRepository.findById(showSchedule.getBand_id())
                .orElseThrow(() -> new DomainException("Banda não encontrada"));

        showSchedule.setBand_id(band.getId());
        showSchedule.setPub_id(pub.getId());
        // showSchedule.setEvent_datetime(event_datetime);

        return showScheduleRepository.save(showSchedule);
    }

    public void changeDateTime(Long showScheduleId, LocalDateTime dateTime) {
        ShowSchedule showSchedule = find(showScheduleId);

        showSchedule.setShow_datetime(dateTime);

    }

    // public ShowSchedule confirm(Long showScheduleId) {
    // ShowSchedule showSchedule = find(showScheduleId);

    // showSchedule.setConfirmed(true);

    // return showScheduleRepository.save(showSchedule);

    // }

    // public void unconfirm(Long showScheduleId) {
    // ShowSchedule showSchedule = find(showScheduleId);

    // showSchedule.setConfirmed(false);

    // }

    private ShowSchedule find(Long showScheduleId) {
        return showScheduleRepository.findById(showScheduleId)
                .orElseThrow(() -> new DomainException("Show não encontrado"));
    }

    // public List<ShowSchedule> findByBand(Long bandId) {
    // try {
    // return showScheduleRepository.findByBand(bandId);
    // } catch (Exception e) {
    // throw new DomainException("Show não encontrado");
    // }

    // }

    public void delete(Long showScheduleId) {
        showScheduleRepository.deleteById(showScheduleId);
    }

}
