package com.impact.lessons.services;

import com.impact.lessons.Repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    UserRepository userRepository = new UserRepository();

    public List<String> getAllUsers(){
        return userRepository.getUserList();
    }

}
