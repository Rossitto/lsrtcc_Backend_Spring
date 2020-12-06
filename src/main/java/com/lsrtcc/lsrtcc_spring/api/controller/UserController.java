package com.lsrtcc.lsrtcc_spring.api.controller;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.validation.Valid;

import com.lsrtcc.lsrtcc_spring.domain.model.User;
import com.lsrtcc.lsrtcc_spring.domain.repository.UserRepository;
import com.lsrtcc.lsrtcc_spring.domain.service.RegisterUserService;

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
@RequestMapping("/users")
public class UserController {

    // acho que essa linha de baixo está sobrando no meu código... mas não sei.
    @PersistenceContext
    private EntityManager manager;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RegisterUserService registerUser;

    // @GetMapping(produces = "application/json; charset=UFT-8")
    @GetMapping
    public List<User> getAll() {
        return userRepository.findAll();
    }

    // @GetMapping(produces = "application/json; charset=UFT-8")
    @GetMapping("/{userId}")
    public ResponseEntity<User> getById(@PathVariable Long userId) {
        Optional<User> user = userRepository.findById(userId);

        if (user.isPresent()) {
            return ResponseEntity.ok(user.get());
        }

        return ResponseEntity.notFound().build();
    }

    // TODO: criar método authenticate() em UserService
    @PostMapping("/auth")
    @ResponseStatus(HttpStatus.ACCEPTED)
    public User authenticateUser(@RequestBody User user) {
        return registerUser.authenticate(user);
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public User add(@Valid @RequestBody User user) {
        return registerUser.save(user);
    }

    @PutMapping("/{userId}")
    public ResponseEntity<User> put(@Valid @PathVariable Long userId, @RequestBody User user) {

        if (!userRepository.existsById(userId)) {
            return ResponseEntity.notFound().build();
        }

        user.setId(userId);
        user = registerUser.save(user);

        return ResponseEntity.ok(user);
    }

    @DeleteMapping("/{userId}")
    public ResponseEntity<Void> delete(@PathVariable("userId") Long userId) {
        if (!userRepository.existsById(userId)) {
            return ResponseEntity.notFound().build();
        }

        registerUser.delete(userId);

        return ResponseEntity.noContent().build();
    }

}