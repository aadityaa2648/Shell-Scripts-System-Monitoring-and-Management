a=$(find ./ -type f -iname "data.txt" | wc -l)
echo $a
if [ $a -eq 0 ]; then
  echo "file not present"
else
  echo "file available"
fi
