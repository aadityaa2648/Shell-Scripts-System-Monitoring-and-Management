# Check disk usage and filter out filesystems with usage greater than 80%.
# Remove percentage signs from the output, then print lines where usage exceeds 80%.
df -h | sed -e 's/%//' | awk -F" " '$5>80 {print $0}' > data.txt

# Count the number of lines in data.txt.
count=$(wc -l data.txt | cut -f1 -d" ")

# If there are any lines in data.txt, print the disk usage details to the terminal.
if [ $count -gt 0 ]; then
  cat data.txt
fi
