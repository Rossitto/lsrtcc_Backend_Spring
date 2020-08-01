package com.lsrtcc.lsrtcc_spring.domain.service;

import com.lsrtcc.lsrtcc_spring.domain.exception.DomainException;
import com.lsrtcc.lsrtcc_spring.domain.model.Pub;
import com.lsrtcc.lsrtcc_spring.domain.repository.PubRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterPubService {

    @Autowired
    private PubRepository pubRepository;

    // // TODO: throw new Exception para cnpj existente!
    public Pub save(Pub pub) {
        Pub existingPub = pubRepository.findByEmail(pub.getEmail());

        if (existingPub != null && !existingPub.equals(pub)) {
            throw new DomainException("Já existe uma casa noturna cadastrada com este e-mail.");
        }

        Pub existingPubCnpj = pubRepository.findByCnpj(pub.getCnpj());

        if (existingPubCnpj != null && !existingPubCnpj.equals(pub)) {
            throw new DomainException("Já existe uma casa noturna cadastrada com este CNPJ.");
        }

        return pubRepository.save(pub);

    }

    public void delete(Long pubId) {
        pubRepository.deleteById(pubId);
    }

}