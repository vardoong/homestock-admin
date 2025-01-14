package com.magicpocket.homestockadmin.model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.DynamicInsert;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@DynamicInsert
public class User implements UserDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userSeq;

    private String userId;
    private String password;
    private String name;
    private String phoneNumber;
    private String birthday;
    private String zipNo;
    private String address1;
    private String address2;
    private char userAuthType;
    private char agreePersonalInfo;
    @Builder.Default
    private Date createdAt = new Date();
    @Builder.Default
    private Date updatedAt = new Date();


    // UserDetails (s)
    public String[] getRoles(){
        if ('A' == userAuthType) {
            return new String[]{"ROLE_USER", "ROLE_ADMIN"};
        } else {
            return new String[]{"ROLE_USER"};
        }
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Collection<GrantedAuthority> collectors = new ArrayList<>();
        for(String role: this.getRoles()){
            collectors.add(new SimpleGrantedAuthority(role));
        }
        return collectors;
    }

    /**
     * UserDetails getUsername
     * @return userId
     */
    @Override
    public String getUsername() {
        return this.userId;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }
    // UserDetails (e)
}
