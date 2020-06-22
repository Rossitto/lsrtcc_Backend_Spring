package com.lsrtcc.lsrtcc_spring.domain.exception;

public class DomainException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    public DomainException(String msg) {
        super(msg);
    }

}