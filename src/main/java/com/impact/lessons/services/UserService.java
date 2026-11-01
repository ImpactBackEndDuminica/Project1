package com.impact.lessons.services;

import com.impact.lessons.Model.UserModel;
import com.impact.lessons.Repository.UserRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {
    UserRepository userRepository = new UserRepository();

    public List<String> getAllUsers(){
        return userRepository.getUserList();
    }

    public UserModel createUser(UserModel user) {
        if(user.getPassword().length() < 8){
            user.setPassword("invalid data");
            return user;
        } else if (user.getUsername().length()<=3) {

            user.setUsername("invalid data");
            return user;
        }else{
            return userRepository.saveUser(user);

    }
    }
}
