package com.magicpocket.homestockadmin.dto;

import lombok.Data;
import lombok.NonNull;

@Data
public class SignupDTO {

    @NonNull
    String name;
    @NonNull
    String userId;
    @NonNull
    String password;
    String phoneNumber;
    String birthday;
}
