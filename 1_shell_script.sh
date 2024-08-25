# Count the number of files named "data.txt" (case-insensitive) in the current directory and subdirectories.
a=$(find ./ -type f -iname "data.txt" | wc -l)

# Output the count of matching files.
echo $a

# Check if no files were found.
if [ $a -eq 0 ]; then
  # Display a message if the file is not present.
  echo "file not present"
else
  # Display a message if the file is available.
  echo "file available"
fi
