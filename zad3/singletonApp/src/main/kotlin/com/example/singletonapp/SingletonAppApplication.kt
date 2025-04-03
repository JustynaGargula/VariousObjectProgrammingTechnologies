package com.example.singletonapp

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class SingletonAppApplication

fun main(args: Array<String>) {
	runApplication<SingletonAppApplication>(*args)
}
