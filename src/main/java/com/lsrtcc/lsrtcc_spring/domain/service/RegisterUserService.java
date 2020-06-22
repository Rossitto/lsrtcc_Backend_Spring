package com.lsrtcc.lsrtcc_spring.domain.service;

import com.lsrexample.lsrexample.domain.exception.NegocioException;
import com.lsrexample.lsrexample.domain.model.Cliente;
import com.lsrexample.lsrexample.domain.repository.ClienteRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterUserService {

    @Autowired
    private ClienteRepository clienteRepository;

    public Cliente salvar(Cliente cliente) {
        Cliente clienteExistente = clienteRepository.findByEmail(cliente.getEmail());

        if (clienteExistente != null && !clienteExistente.equals(cliente)) {
            throw new NegocioException("Já existe um cliente cadastrado com este e-mail.");
        }

        return clienteRepository.save(cliente);
    }

    public void excluir(Long clienteId) {
        clienteRepository.deleteById(clienteId);

    }

}