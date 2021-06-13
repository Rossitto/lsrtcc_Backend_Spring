package com.lsrtcc.lsrtcc_spring.api.controller;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.validation.Valid;

import com.lsrtcc.lsrtcc_spring.domain.model.Band;
import com.lsrtcc.lsrtcc_spring.domain.model.User;
import com.lsrtcc.lsrtcc_spring.domain.repository.BandRepository;
import com.lsrtcc.lsrtcc_spring.domain.repository.UserRepository;
import com.lsrtcc.lsrtcc_spring.domain.service.RegisterBandService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/bands")
public class BandController {

    // acho que essa linha de baixo está sobrando no meu código... mas não sei.
    @PersistenceContext
    private EntityManager manager;

    @Autowired
    private BandRepository bandRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RegisterBandService registerBandService;

    // @GetMapping(produces = "application/json; charset=UFT-8")
    @GetMapping
    public List<Band> getAll() {
        return bandRepository.findAll();
    }

    // @GetMapping(produces = "application/json; charset=UFT-8")
    @GetMapping("/{bandId}")
    public ResponseEntity<Band> getById(@PathVariable Long bandId) {
        Optional<Band> band = bandRepository.findById(bandId);

        if (band.isPresent()) {
            return ResponseEntity.ok(band.get());
        }

        return ResponseEntity.notFound().build();
    }

    @GetMapping("/user/{userId}")
    public ResponseEntity<Band> getByUserId(@PathVariable Long userId) {
        User user = userRepository.findById(userId).get();
        if (user != null) {

            Optional<Band> band = bandRepository.findByUser(user);

            if (band.isPresent()) {
                return ResponseEntity.ok(band.get());
            }
        }

        return ResponseEntity.notFound().build();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Band add(@Valid @RequestBody Band band) {
        return registerBandService.save(band);
    }

    @PutMapping("/{bandId}")
    public ResponseEntity<Band> put(@Valid @PathVariable Long bandId, @RequestBody Band band) {

        if (!bandRepository.existsById(bandId)) {
            return ResponseEntity.notFound().build();
        }

        band.setId(bandId);
        band = registerBandService.save(band);

        return ResponseEntity.ok(band);
    }

    @DeleteMapping("/{bandId}")
    public ResponseEntity<Void> delete(@PathVariable("bandId") Long bandId) {
        if (!bandRepository.existsById(bandId)) {
            return ResponseEntity.notFound().build();
        }

        registerBandService.delete(bandId);

        return ResponseEntity.noContent().build();
    }

}
