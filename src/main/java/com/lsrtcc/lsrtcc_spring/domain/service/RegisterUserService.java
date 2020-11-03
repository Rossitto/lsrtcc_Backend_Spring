package com.lsrtcc.lsrtcc_spring.domain.service;

import com.lsrtcc.lsrtcc_spring.domain.exception.DomainException;
import com.lsrtcc.lsrtcc_spring.domain.model.User;
import com.lsrtcc.lsrtcc_spring.domain.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

// regras de negócio vem aqui
@Service
public class RegisterUserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public User save(User user) {
        User existingUser = userRepository.findByEmail(user.getEmail());

        if (existingUser != null && !existingUser.equals(user)) {
            throw new DomainException("Já existe um usuário cadastrado com este e-mail.");
        }

        user.setPassword(passwordEncoder.encode(user.getPassword()));

        return userRepository.save(user);
    }

    public User authenticate(User user) {
        // TODO: implementar este método. Revisar parmâmetro!
    }

    public void delete(Long userId) {

        userRepository.deleteById(userId);

    }

}