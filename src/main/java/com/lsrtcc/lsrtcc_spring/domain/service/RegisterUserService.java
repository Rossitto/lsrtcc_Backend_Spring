package com.lsrtcc.lsrtcc_spring.domain.service;

import com.lsrtcc.lsrtcc_spring.domain.exception.DomainException;
import com.lsrtcc.lsrtcc_spring.domain.model.User;
import com.lsrtcc.lsrtcc_spring.domain.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterUserService {

    @Autowired
    private UserRepository userRepository;

    public User save(User user) {
        User userExistente = userRepository.findByEmail(user.getEmail());

        if (userExistente != null && !userExistente.equals(user)) {
            throw new DomainException("Já existe um user cadastrado com este e-mail.");
        }

        return userRepository.save(user);
    }

    public void remove(Long userId) {
        userRepository.deleteById(userId);

    }

}