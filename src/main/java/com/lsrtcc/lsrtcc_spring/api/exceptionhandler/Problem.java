package com.lsrtcc.lsrtcc_spring.api.exceptionhandler;

import java.time.LocalDateTime;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@JsonInclude(Include.NON_NULL)
public class Problem {

    private Integer status;
    private LocalDateTime datetime;
    private String titulo;
    private List<Field> fields;

    public static class Field {
        private String name;
        private String message;

        public Field(String name, String message) {
            this.name = name;
            this.message = message;

        }

    }

}