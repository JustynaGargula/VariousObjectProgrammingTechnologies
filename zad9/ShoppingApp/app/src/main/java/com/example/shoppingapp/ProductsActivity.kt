package com.example.shoppingapp

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView

class ProductsActivity: AppCompatActivity() {
    private lateinit var recyclerView: RecyclerView
    private lateinit var productAdapter: ProductAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_products)

        val categoryId = intent.getIntExtra("CATEGORY_ID", -1)
        val categoryName = intent.getStringExtra("CATEGORY_NAME") ?: "Products"


        title = categoryName

        recyclerView = findViewById(R.id.rvProducts)
        recyclerView.layoutManager = LinearLayoutManager(this)

        val products = getProductsForCategory(categoryId)

        productAdapter = ProductAdapter(products) {
//            product ->
        }

        recyclerView.adapter = productAdapter
    }

    private fun getProductsForCategory(categoryId: Int): List<Product> {
        val allProducts = listOf(
            Product(1, "The Hobbit", "Fantasy novel by J.R.R. Tolkien", 39.99, 1),
            Product(2, "1984", "Dystopian novel by George Orwell", 29.50, 1),
            Product(3, "Thriller", "Michael Jackson's best-selling album", 45.00, 2),
            Product(4, "Back in Black", "AC/DC's iconic rock album", 42.00, 2),
            Product(5, "Catan", "Classic strategy board game for 3-4 players", 129.90, 3),
            Product(6, "Dixit", "Creative storytelling card game", 89.99, 3),
            Product(7, "The Mind", "Cooperative card game with a twist", 49.99, 3)
        )
        val productsForCategory = allProducts.filter { it.categoryId == categoryId }

        return productsForCategory
    }
}