package com.example.singletonapp

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController


@RestController
@RequestMapping("/users")
class UserControler {

    @GetMapping
    fun getUsers(): List<User>{
        return listOf<User>(
            User("user1", "pass1"),
            User("user2", "pass2"),
            User("user3", "pass3")
        )
    }

}

data class User(val userName:String, val password: String)