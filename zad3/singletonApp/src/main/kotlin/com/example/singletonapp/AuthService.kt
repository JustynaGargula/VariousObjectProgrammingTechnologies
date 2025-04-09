package com.example.singletonapp

import org.springframework.stereotype.Service

@Service
class AuthService {
    fun authenticate(userName:String, password: String): Boolean{
        return userName.startsWith("user") && password.startsWith("pass")
    }
}