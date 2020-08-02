package com.lsrtcc.lsrtcc_spring.domain.service;

import com.lsrtcc.lsrtcc_spring.domain.exception.DomainException;
import com.lsrtcc.lsrtcc_spring.domain.model.Band;
import com.lsrtcc.lsrtcc_spring.domain.repository.BandRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterBandService {

    @Autowired
    private BandRepository bandRepository;

    // TODO: email da banda não pode ser igual a nenhum email de usuário. Por quê?
    public Band save(Band band) {
        Band existingBand = bandRepository.findByEmail(band.getEmail());

        if (existingBand != null && !existingBand.equals(band)) {
            throw new DomainException("Já existe uma banda cadastrada com este email.");
        }

        // TODO: implementar erro se CPNJ já for cadastrado. Mas deixar cadastrar nulo
        // (assim não está deixando).
        // Band existingBandCnpj = bandRepository.findByCnpj(band.getCnpj());

        // if (existingBandCnpj != null && !existingBandCnpj.equals(band)) {
        // throw new DomainException("Já existe uma banda cadastrada com este CNPJ.");
        // }

        return bandRepository.save(band);
    }

    public void delete(Long bandId) {

        bandRepository.deleteById(bandId);
    }

}