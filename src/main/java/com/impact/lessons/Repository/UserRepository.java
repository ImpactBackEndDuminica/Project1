package com.impact.lessons.Repository;

import com.impact.lessons.Model.UserModel;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {
    List<String> userList = new ArrayList<>(List.of(
            "john_doe",
            "alice_smith",
            "michael_brown",
            "emma_wilson",
            "david_jones",
            "sophia_miller",
            "robert_taylor",
            "olivia_davis",
            "daniel_martin",
            "isabella_anderson"
    ));

    List<UserModel> actualUserList = new ArrayList<>();


    public List<String> getUserList(){
        return userList;
    }

    public  UserModel saveUser(UserModel user){
        actualUserList.add(user);
        userList.add(user.getUsername());
        return user;
    }

}
