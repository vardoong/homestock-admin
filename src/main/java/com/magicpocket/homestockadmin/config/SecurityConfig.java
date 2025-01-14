package com.magicpocket.homestockadmin.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Bean
    public BCryptPasswordEncoder passwordEncoder(){
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {

        return http
                .csrf().disable()
                .cors().disable()

                .authorizeRequests()
                .antMatchers("/", "/resources/**", "/index", "/status", "/signup", "/auth/signup", "/login-process")
                .permitAll()
                .antMatchers("/dashboard")
                .hasRole("ADMIN")
                .anyRequest().authenticated()

                .and().formLogin(login -> login
                        .loginPage("/login")
                        .loginProcessingUrl("/login-process")
                        .usernameParameter("userId")
                        .passwordParameter("password")
                        .defaultSuccessUrl("/dashboard", false)
                        .permitAll()
                )
                .logout(Customizer.withDefaults())	// 로그아웃은 기본설정으로 (/logout 으로 인증해제)

                .build();
    }

}
