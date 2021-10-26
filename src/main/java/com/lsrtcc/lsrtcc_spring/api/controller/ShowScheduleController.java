package com.lsrtcc.lsrtcc_spring.api.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import com.lsrtcc.lsrtcc_spring.domain.model.Band;
import com.lsrtcc.lsrtcc_spring.domain.model.Pub;
import com.lsrtcc.lsrtcc_spring.domain.model.ShowSchedule;
import com.lsrtcc.lsrtcc_spring.domain.model.User;
import com.lsrtcc.lsrtcc_spring.domain.repository.BandRepository;
import com.lsrtcc.lsrtcc_spring.domain.repository.PubRepository;
import com.lsrtcc.lsrtcc_spring.domain.repository.ShowScheduleRepository;
import com.lsrtcc.lsrtcc_spring.domain.repository.UserRepository;
import com.lsrtcc.lsrtcc_spring.domain.service.ManageShowSchedule;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.CrudRepository;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

@RestController
@RequestMapping("/shows")
public class ShowScheduleController {

    @Autowired
    ShowScheduleRepository showScheduleRepository;

    @Autowired
    ManageShowSchedule manageShowSchedule;

    @Autowired
    PubRepository pubRepository;

    @Autowired
    BandRepository bandRepository;

    @Autowired
    UserRepository userRepository;

    @GetMapping
    public List<ShowSchedule> getAll() {
        return showScheduleRepository.findAll();
    }

    @GetMapping("/{showId}")
    public ResponseEntity<ShowSchedule> getById(@PathVariable Long showId) {
        Optional<ShowSchedule> show = showScheduleRepository.findById(showId);

        if (show.isPresent()) {
            return ResponseEntity.ok(show.get());
        }

        return ResponseEntity.notFound().build();
    }

    @GetMapping("/band/{bandId}")
    public List<ShowSchedule> getByBandId(@PathVariable Long bandId) {
        Optional<Band> band = bandRepository.findById(bandId);
        if (band.isPresent()) {
            return showScheduleRepository.findByBand(band);
        }
        return null;
    }

    @GetMapping("/pub/{pubId}")
    public List<ShowSchedule> getByPubId(@PathVariable Long pubId) {
        Optional<Pub> pub = pubRepository.findById(pubId);
        if (pub.isPresent()) {
            return showScheduleRepository.findByPub(pub);
        }
        // return ResponseEntity.notFound().build();
        return null;
    }

    @GetMapping("/user/{userId}")
    public List<ShowSchedule> getByUserId(@PathVariable Long userId) {

        Optional<User> user = userRepository.findById(userId);
        if (user.isPresent()) {
            return showScheduleRepository.findByUser(userId);
        }
        // return ResponseEntity.notFound().build();
        return null;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public ShowSchedule add(@Valid @RequestBody ShowSchedule showSchedule) {
        return manageShowSchedule.save(showSchedule);
    }

    @PutMapping("/{showId}")
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<ShowSchedule> put(@Valid @PathVariable Long showId, @RequestBody ShowSchedule showSchedule) {

        if (!showScheduleRepository.existsById(showId)) {
            return ResponseEntity.notFound().build();
        }

        showSchedule.setId(showId);
        showSchedule = manageShowSchedule.save(showSchedule);

        return ResponseEntity.ok(showSchedule);
    }

    @PutMapping("/{showId}/confirm")
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<ShowSchedule> confirm(@Valid @PathVariable Long showId) {

        if (!showScheduleRepository.existsById(showId)) {
            return ResponseEntity.notFound().build();
        }

        ShowSchedule showSchedule;
        showSchedule = manageShowSchedule.confirm(showId);
        return ResponseEntity.ok(showSchedule);
    }

    @PutMapping("/{showId}/unconfirm")
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<ShowSchedule> unconfirm(@Valid @PathVariable Long showId) {

        if (!showScheduleRepository.existsById(showId)) {
            return ResponseEntity.notFound().build();
        }

        ShowSchedule showSchedule;
        showSchedule = manageShowSchedule.unconfirm(showId);
        return ResponseEntity.ok(showSchedule);
    }

    @DeleteMapping("/{showId}")
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<Void> delete(@PathVariable("showId") Long showId) {
        if (!showScheduleRepository.existsById(showId)) {
            return ResponseEntity.notFound().build();
        }

        manageShowSchedule.delete(showId);

        return ResponseEntity.noContent().build();
    }

}
