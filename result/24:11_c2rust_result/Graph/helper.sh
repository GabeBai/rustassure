for file in C/**/**/*.dot; do
    # Check if there are any .dot files
    if [ -e "$file" ]; then
        # Get the base name of the file (without extension)
        base_name=$(basename "$file" .dot)
        
        # Get the directory of the .dot file
        dir_name=$(dirname "$file")
        
        # Convert .dot to .png using the dot command    
        dot -Tpng "$file" -o "${dir_name}/${base_name}.png"
        
        echo "Converted $file to ${dir_name}/${base_name}.png"
        gcount=$((gcount + 1))
    else
        echo "No .dot files found in graph_output."
        break
    fi
done


for file in Rust/**/**/*.dot; do
    # Check if there are any .dot files
    if [ -e "$file" ]; then
        # Get the base name of the file (without extension)
        base_name=$(basename "$file" .dot)
        
        # Get the directory of the .dot file
        dir_name=$(dirname "$file")
        
        # Convert .dot to .png using the dot command    
        dot -Tpng "$file" -o "${dir_name}/${base_name}.png"
        
        echo "Converted $file to ${dir_name}/${base_name}.png"
        gcount=$((gcount + 1))
    else
        echo "No .dot files found in graph_output."
        break
    fi
done