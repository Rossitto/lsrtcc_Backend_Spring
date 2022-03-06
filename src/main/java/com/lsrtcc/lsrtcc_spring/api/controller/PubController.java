package com.lsrtcc.lsrtcc_spring.api.controller;

import java.util.List;
import java.util.Optional;

import javax.validation.Valid;

import com.lsrtcc.lsrtcc_spring.domain.model.Pub;
import com.lsrtcc.lsrtcc_spring.domain.model.User;
import com.lsrtcc.lsrtcc_spring.domain.repository.PubRepository;
import com.lsrtcc.lsrtcc_spring.domain.repository.UserRepository;
import com.lsrtcc.lsrtcc_spring.domain.service.RegisterPubService;

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
@RequestMapping("/pubs")
public class PubController {

    @Autowired
    private PubRepository pubRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RegisterPubService registerPubService;

    @GetMapping
    // @GetMapping(produces = "application/json; charset=UFT-8")
    public List<Pub> getAll() {
        return pubRepository.findAll();
    }

    // @GetMapping(produces = "application/json; charset=UFT-8")
    @GetMapping("/{pubId}")
    public ResponseEntity<Pub> getById(@PathVariable Long pubId) {
        Optional<Pub> pub = pubRepository.findById(pubId);

        if (pub.isPresent()) {
            return ResponseEntity.ok(pub.get());
        }

        return ResponseEntity.notFound().build();
    }

    // @GetMapping("/user/{userId}")
    // public List<Pub> getByUserId(@PathVariable Long userId) {
    // return pubRepository.findByUser(userId);
    // }

    // ! alterado para List<Pub>
    // @GetMapping("/user/{userId}")
    // public ResponseEntity<Pub> getByUserId(@PathVariable Long userId) {
    // User user = userRepository.findById(userId).get();
    // if (user != null) {

    // Optional<Pub> band = pubRepository.findByUser(user);

    // if (band.isPresent()) {
    // return ResponseEntity.ok(band.get());
    // }
    // }
    // return ResponseEntity.notFound().build();
    // }

    // ? Novo get PubsByUserId
    @GetMapping("/user/{userId}")
    public List<Pub> getByUserId(@PathVariable Long userId) {
        User user = userRepository.findById(userId).get();

        if (user != null) {
            return pubRepository.findByUser(user);
        }
        return null;

    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Pub add(@Valid @RequestBody Pub pub) {
        return registerPubService.save(pub);
    }

    @PutMapping("/{pubId}")
    public ResponseEntity<Pub> update(@Valid @PathVariable Long pubId, @RequestBody Pub pub) {

        if (!pubRepository.existsById(pubId)) {
            return ResponseEntity.notFound().build();
        }

        pub.setId(pubId);
        pub = registerPubService.save(pub);

        return ResponseEntity.ok(pub);
    }

    @DeleteMapping("/{pubId}")
    public ResponseEntity<Void> delete(@PathVariable Long pubId) {
        if (!pubRepository.existsById(pubId)) {
            return ResponseEntity.notFound().build();
        }

        registerPubService.delete(pubId);

        return ResponseEntity.noContent().build();
    }

}