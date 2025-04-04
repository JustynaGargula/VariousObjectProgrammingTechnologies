#!/bin/bash

# test listy produktów
curl -s -X GET http://127.0.0.1:8080/product > response.html
echo "Test 1"
product_count=$(cat response.html | grep -oP '(?<=<td>)(.*?)(?=</td>)' | wc -l)
if [ $((product_count / 4)) -eq 1 ]; then
    echo "One product in database. Test succesful"
else
    echo "Test failed"
fi

rm response.html

# curl -X POST localhost:8080/product/new \
#     -H "Content-Type: application/json" \
#     -d '{"name": "Notebook", "price": 19.99, "decription": "Checked 60 pages notebook"}'
