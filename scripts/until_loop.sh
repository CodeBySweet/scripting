
# until [ condition ]; do
#     # commands
# done

count=1
until [ $count -gt 5 ]; do
    echo "Count: $count"
    ((count++))
done