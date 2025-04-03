package com.example.singletonapp

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController


@RestController
@RequestMapping
class UserController {

    @GetMapping("/users")
    fun getUsers(): List<User>{
        return listOf<User>(
            User("user1", "pass1"),
            User("user2", "pass2"),
            User("user3", "pass3")
        )
    }

    @GetMapping("/login")
    fun login(@RequestParam userName: String, @RequestParam password: String): String{
        if(AuthService.authenticate(userName, password)) {
            return "Successfully logged in"
        }
        else{
            return "Log in failed"
        }
    }

}

data class User(val userName:String, val password: String)