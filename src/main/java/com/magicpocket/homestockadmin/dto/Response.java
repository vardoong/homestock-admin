package com.magicpocket.homestockadmin.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter @Setter
@AllArgsConstructor
@NoArgsConstructor
public class Response {

    public enum status {
        success, fail, error
    }

    private status status;
    private String message;
    private Object data;

}
