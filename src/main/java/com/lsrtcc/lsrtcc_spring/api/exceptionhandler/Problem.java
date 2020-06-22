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
    private String title;
    private List<Field> fields;

    public static class Field {
        private String name;
        private String msg;

        public Field(String name, String msg) {
            this.name = name;
            this.msg = msg;

        }

    }

}