package com.stackspot.testapp

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class testappApplication

fun main(args: Array<String>) {
	runApplication<testappApplication>(*args)
}
