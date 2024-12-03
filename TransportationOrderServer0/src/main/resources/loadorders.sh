while IFS= read -r line; do
    echo "Procesando línea: $line"
    curl -H "Content-Type: application/json" -X PUT --data-binary "$line" http://localhost:8080/transportationorders
done < orders.json
