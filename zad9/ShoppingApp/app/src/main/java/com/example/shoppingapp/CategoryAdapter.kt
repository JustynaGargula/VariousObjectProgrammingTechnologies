package com.example.shoppingapp

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class CategoryAdapter(private val categories: List<Category>,
                      private val onCategoryClick: (Category) -> Unit )
    : RecyclerView.Adapter<CategoryAdapter.CategoryViewHolder>(){

    class CategoryViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
        val categoryName: TextView = itemView.findViewById((R.id.tvCategoryName))
        val categoryDescription: TextView = itemView.findViewById((R.id.tvCategoryDescription))
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): CategoryViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.category, parent, false)
        return CategoryViewHolder(view)
    }
    override fun onBindViewHolder(holder: CategoryViewHolder, position: Int){
        val category = categories[position]
        holder.categoryName.text = category.categoryName
        holder.categoryDescription.text = category.description

        holder.itemView.setOnClickListener {
            onCategoryClick(category)
        }
    }

    override fun getItemCount(): Int = categories.size

}