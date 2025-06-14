package com.example.shoppingapp

data class Product(
    val id: Int,
    val productName: String,
    val description: String,
    val price: Double,
    val categoryId: Int
)

data class Category(
    val id : Int,
    val categoryName: String,
    val description: String
)
