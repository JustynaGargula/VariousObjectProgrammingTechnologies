package com.example.singletonapp

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.web.bind.annotation.*
import org.springframework.context.annotation.Lazy


@RestController
@RequestMapping("/auth")
class UserController @Autowired constructor( private var authService: AuthService, @Lazy private val lazyAuthService: LazyAuthService) {
    private var users = listOf<User>(
        User("user1", "pass1"),
        User("user2", "pass2"),
        User("user3", "pass3")
    )

    @GetMapping("/users")
    fun getUsers(): List<User>{
        return users
    }

    fun checkIfUserRegistered(name: String): Boolean {
        for(user in users){
            if(user.userName == name){
                return true
            }
        }
        return false
    }

    @PostMapping("/login")
    fun login(@RequestParam userName: String, @RequestParam password: String): String{
        if(checkIfUserRegistered(userName) && authService.authenticate(userName, password)) {
            return "Successfully logged in"
        }
        else{
            return "Log in failed"
        }
    }
    @PostMapping("/lazy-login")
    fun lazyLogin(@RequestParam userName: String, @RequestParam password: String): String{
        if(checkIfUserRegistered(userName) && lazyAuthService.authenticate(userName, password)) {
            return "Successfully lazy logged in"
        }
        else{
            return "Lazy log in failed"
        }
    }

}

data class User(val userName:String, val password: String)