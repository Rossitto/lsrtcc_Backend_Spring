package com.lsrtcc.lsrtcc_spring.api.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import com.lsrtcc.lsrtcc_spring.domain.model.ShowSchedule;
import com.lsrtcc.lsrtcc_spring.domain.repository.ShowScheduleRepository;
import com.lsrtcc.lsrtcc_spring.domain.service.ManageShowSchedule;

import org.springframework.beans.factory.annotation.Autowired;
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

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public ShowSchedule add(@Valid @RequestBody ShowSchedule showSchedule) {
        return manageShowSchedule.save(showSchedule);
    }

    @PutMapping("/{showId}")
    public ResponseEntity<ShowSchedule> put(@Valid @PathVariable Long showId, @RequestBody ShowSchedule showSchedule) {

        if (!showScheduleRepository.existsById(showId)) {
            return ResponseEntity.notFound().build();
        }

        showSchedule.setId(showId);
        showSchedule = manageShowSchedule.save(showSchedule);

        return ResponseEntity.ok(showSchedule);
    }

    @DeleteMapping("/{showId}")
    public ResponseEntity<Void> delete(@PathVariable("showId") Long showId) {
        if (!showScheduleRepository.existsById(showId)) {
            return ResponseEntity.notFound().build();
        }

        manageShowSchedule.delete(showId);

        return ResponseEntity.noContent().build();
    }

}
