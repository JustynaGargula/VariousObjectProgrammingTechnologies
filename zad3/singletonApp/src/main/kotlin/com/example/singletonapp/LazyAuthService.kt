package com.example.singletonapp

import org.springframework.stereotype.Service
import org.springframework.context.annotation.Lazy

@Service
@Lazy
class LazyAuthService {
    fun authenticate(userName:String, password: String): Boolean{
        return userName.startsWith("user") && password.startsWith("pass")
    }
}