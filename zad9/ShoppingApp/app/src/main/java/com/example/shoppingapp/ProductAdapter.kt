package com.example.shoppingapp

import android.icu.text.DecimalFormat
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class ProductAdapter(private val products: List<Product>, private val onProductClick: (Product) -> Unit) :
    RecyclerView.Adapter<ProductAdapter.ProductViewHolder>() {

    private val priceFormat = DecimalFormat("#,##0.00")

    class ProductViewHolder(itemView: View): RecyclerView.ViewHolder(itemView) {
        val productName: TextView = itemView.findViewById((R.id.tvProductName))
        val productPrice: TextView = itemView.findViewById((R.id.tvProductPrice))
        val productDescription: TextView = itemView.findViewById((R.id.tvProductDescription))
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ProductViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.product, parent, false)
        return ProductViewHolder(view)
    }

    override fun getItemCount(): Int = products.size

    override fun onBindViewHolder(holder: ProductViewHolder, position: Int) {
        val product = products[position]

        holder.productName.text = product.productName
        holder.productPrice.text = buildString {
            append(priceFormat.format(product.price))
            append(" zł")
        }
        holder.productDescription.text = product.description

        holder.itemView.setOnClickListener {
            onProductClick(product)
        }
    }

}