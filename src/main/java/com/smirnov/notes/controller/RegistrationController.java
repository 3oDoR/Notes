package com.smirnov.notes.controller;


import com.smirnov.notes.domain.Role;
import com.smirnov.notes.domain.User;
import com.smirnov.notes.repos.UserRepository;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.sql.Date;
import java.util.Collections;

@Controller
public class RegistrationController {
    final UserRepository userRepository;

    public RegistrationController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, String confirmPassword) {
        User checkUsername = userRepository.findByUsername(user.getUsername());
        User checkEmail = userRepository.findByEmail(user.getEmail());

        if (checkUsername != null | checkEmail != null | !user.getPassword().equals(confirmPassword)) {
            return "registration";
        }

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        user.setPassword(new BCryptPasswordEncoder().encode(user.getPassword()));
        user.setCreated_on(new Date(System.currentTimeMillis()));

        userRepository.save(user);

        return "/login";
    }
}
