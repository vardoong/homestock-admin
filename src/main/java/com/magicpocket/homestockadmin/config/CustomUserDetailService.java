package com.magicpocket.homestockadmin.config;

import com.magicpocket.homestockadmin.model.User;
import com.magicpocket.homestockadmin.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class CustomUserDetailService implements UserDetailsService {
    private final UserService userService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userService.findOne(username);
        if(user == null){
            throw new UsernameNotFoundException("존재하지 않는 회원정보입니다.");
        }

        return user;
    }
}
