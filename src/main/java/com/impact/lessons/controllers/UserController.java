package com.impact.lessons.controllers;


import org.springframework.web.bind.annotation.*;


import com.impact.lessons.services.UserService;

import java.util.List;


@RestController
@RequestMapping("/users")
public class UserController {
    UserService userService = new UserService();
    @GetMapping("/all")
    public List<String> get_all(){
        return userService.getAllUsers();
    }
}