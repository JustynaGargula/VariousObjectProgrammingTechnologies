package com.example.singletonapp

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam

@SpringBootApplication
class SingletonAppApplication

fun main(args: Array<String>) {
	runApplication<SingletonAppApplication>(*args)

}
