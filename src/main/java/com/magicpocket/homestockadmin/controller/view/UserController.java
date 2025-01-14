package com.magicpocket.homestockadmin.controller.view;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@AllArgsConstructor
@RequestMapping("/user")
public class UserController {

    @GetMapping(value = "/admin")
    public String admin(){
        return "user/admin";
    }

    @GetMapping(value = "/member")
    public String member(){
        return "user/member";
    }
}
