package com.impact.lessons.controllers;


import com.impact.lessons.Model.UserModel;
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
    @PutMapping("/create_user")
    public UserModel createUser(@RequestBody UserModel user){
        return userService.createUser(user);
    }

}