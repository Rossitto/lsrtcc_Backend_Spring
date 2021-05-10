package com.lsrtcc.lsrtcc_spring.domain.service;

import com.lsrtcc.lsrtcc_spring.domain.exception.DomainException;
import com.lsrtcc.lsrtcc_spring.domain.model.User;
import com.lsrtcc.lsrtcc_spring.domain.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.http.HttpStatus;
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

    // TODO: implementar este método. Revisar parmâmetro!
    public User authenticate(User user) {
        User existingUser = userRepository.findByEmail(user.getEmail());

        if (existingUser == null) {
            throw new DomainException("Não existe nenhum usuário cadastrado com este e-mail.");
        }

        if (passwordEncoder.matches(user.getPassword(), existingUser.getPassword()) == true) {
            return existingUser;
        } else {
            throw new DomainException("Login falhou. Incorreto e-mail e/ou senha.");
        }

    }

    public void delete(Long userId) {

        userRepository.deleteById(userId);

    }

}