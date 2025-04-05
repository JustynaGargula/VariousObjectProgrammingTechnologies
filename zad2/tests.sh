#!/bin/bash

# test listy produktów
curl -s -X GET http://127.0.0.1:8080/product > response.html
echo "Test 1 GET all products"
row_count=$(cat response.html | grep -oP '(?<=<td>)(.*?)(?=</td>)' | wc -l)
products_number=$((row_count / 4))
if [ $products_number -gt 0 ]; then
    echo "Got $products_number products from database. Test succesful."
else
    echo "Test failed. Couldn't get any products from database."
fi
echo ""

# test dodania nowego produktu
curl -s -X POST http://127.0.0.1:8080/product/new \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data "product[name]=Notebook&product[price]=9.99&product[description]=checked_notebook" > response.html
curl -s -X GET http://127.0.0.1:8080/product > response.html
echo "Test 2 POST new product"
new_row_count=$(cat response.html | grep -oP '(?<=<td>)(.*?)(?=</td>)' | wc -l)
new_products_number=$((new_row_count / 4))
if [ $new_products_number -eq $((products_number + 1)) ]; then
    echo "Added new product. Test succesful."
else
    echo "Test failed. Couldn't add new product."
fi
echo ""

# id nowego produktu
curl -s http://127.0.0.1:8080/product > response.html
new_product_id=$(cat response.html | grep -oP '(?<=<td>)(.*?)(?=</td>)' \
| grep -oP '\b[0-9]+.+' \
| grep -v '[.,]' \
| tail -n 1)

# test pobrania produktu przed chwilą dodanego
curl -s -X GET http://127.0.0.1:8080/product/$new_product_id > response.html
echo "Test 3 GET product by id"
description=$(cat response.html | grep -oP '(?<=<td>)(.*?)(?=</td>)' | tail -n 1)

if [[ $description == "checked_notebook" ]]; then
    echo "Got product with id $new_product_id. Description matches. Test succesful."
else
    echo "Test failed. Couldn't get product with id $new_product_id."
fi
echo ""

# test edycji produktu
curl -s -X POST http://127.0.0.1:8080/product/$new_product_id/edit \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data "product[name]=Blue notebook&product[price]=9.99&product[description]=checked_notebook" > response.html 
curl -s -X GET http://127.0.0.1:8080/product > response.html
echo "Test 4 update product"
name=$(cat response.html | grep -oP '(?<=<td>)(.*?)(?=</td>)' | tail -n 3 | head -n 1)
if [[ $name == "Blue notebook" ]]; then
    echo "Product updates. Test succesful."
else
    echo "Test failed. Couldn't update product."
fi
echo ""

# test usunięcia nowego produktu
curl -s -X POST http://127.0.0.1:8080/product/$new_product_id > response.html
curl -s -X GET http://127.0.0.1:8080/product > response.html
echo "Test 5 DELETE product by id"
new_row_count=$(cat response.html | grep -oP '(?<=<td>)(.*?)(?=</td>)' | wc -l)
new_products_number=$((new_row_count / 4))
if [ $new_products_number -eq $((products_number)) ]; then
    echo "Deleted new product. Test succesful."
else
    echo "Test failed. Couldn't delete new product."
fi
echo ""

rm response.html