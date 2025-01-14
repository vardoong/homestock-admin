package com.magicpocket.homestockadmin.controller.rest;

import com.magicpocket.homestockadmin.model.User;
import com.magicpocket.homestockadmin.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@AllArgsConstructor
public class IndexRestController {

    private final UserRepository userRepository;

    @RequestMapping("rest")
    public String rest(){
        return "i am rest";
    }


    @GetMapping("rest1")
    public Object rest1(){

        List<User> userList = userRepository.findAll();

        if(userList.isEmpty()){
            return "theres no user";
        }

        return userList;
    }
}
