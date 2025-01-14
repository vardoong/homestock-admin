package com.magicpocket.homestockadmin.service;

import com.magicpocket.homestockadmin.dto.Response;
import com.magicpocket.homestockadmin.dto.SignupDTO;
import com.magicpocket.homestockadmin.model.User;
import com.magicpocket.homestockadmin.repository.UserRepository;
import lombok.AllArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public Optional<User> findOne(int userSeq){
        return userRepository.findById(userSeq);
    }

    public User findOne(String userId){
        return userRepository.findTopByUserId(userId);
    }

    public Response signup(SignupDTO input){

        if(userRepository.findTopByUserId(input.getUserId()) != null){
            return new Response(Response.status.fail, "중복 ID", null);
        }

        User newUser = User.builder()
                .userId(input.getUserId())
                .password(passwordEncoder.encode(input.getPassword()))
                .name(input.getName())
                .phoneNumber(input.getPhoneNumber())
                .birthday(input.getBirthday())
//                .zipNo()
                .build();
        userRepository.save(newUser);

        return new Response(Response.status.success, "", null);
    }
}
