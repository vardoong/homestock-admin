package com.magicpocket.homestockadmin.controller.view;

import com.magicpocket.homestockadmin.model.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping(value = {"/", "/index", "/login"})
    public String login(){
        return "login";
    }

    @GetMapping(value = "/status")
    public String status(){
        return "status";
    }

    @GetMapping(value = "/signup")
    public String signup(){
        return "signup";
    }

    @GetMapping(value = "/dashboard")
    public String dashboard(@AuthenticationPrincipal User user, Model model){
        model.addAttribute("loginId", user.getUsername());
        model.addAttribute("loginRoles", user.getAuthorities());
        return "dashboard";
    }
}
