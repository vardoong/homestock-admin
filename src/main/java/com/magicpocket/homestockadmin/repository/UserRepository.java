package com.magicpocket.homestockadmin.repository;

import com.magicpocket.homestockadmin.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    User findTopByUserId(String user_id);
}
