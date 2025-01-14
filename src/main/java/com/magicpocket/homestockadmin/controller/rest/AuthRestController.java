package com.magicpocket.homestockadmin.controller.rest;

import com.magicpocket.homestockadmin.dto.Response;
import com.magicpocket.homestockadmin.dto.SignupDTO;
import com.magicpocket.homestockadmin.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/auth")
@AllArgsConstructor
public class AuthRestController {

    private final UserService userService;

    @PostMapping("/signup")
    public Response signup(@RequestBody SignupDTO input){

        return userService.signup(input);

    }
}
