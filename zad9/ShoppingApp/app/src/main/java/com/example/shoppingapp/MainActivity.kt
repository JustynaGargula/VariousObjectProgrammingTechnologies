package com.example.shoppingapp

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.example.shoppingapp.ui.theme.ShoppingAppTheme

class MainActivity : ComponentActivity() {

    private lateinit var recyclerView: RecyclerView
    private lateinit var categoryAdapter: CategoryAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        setContentView(R.layout.activity_main)

        recyclerView = findViewById(R.id.rvCategories)
        recyclerView.layoutManager = LinearLayoutManager(this)

        val categories = listOf(
            Category(1, "Books", "Books of different categories and languages"),
            Category(2, "CDs", "Your favorite albums on CDs"),
            Category(3, "Boardgames", "Boardgames small ang big, short ang long, to play with family, friends or individually.")
        )

        categoryAdapter = CategoryAdapter(categories) {
            category ->
            val intent = Intent(this, ProductsActivity::class.java)
            intent.putExtra("CATEGORY_ID", category.id)
            intent.putExtra("CATEGORY_NAME", category.categoryName)
            startActivity(intent)
        }

        recyclerView.adapter = categoryAdapter
    }
}