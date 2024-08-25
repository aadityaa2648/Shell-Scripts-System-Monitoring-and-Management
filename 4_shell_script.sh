# Check disk usage and filter out filesystems with usage greater than 80%.
# Remove percentage signs from the output, then print lines where usage exceeds 80%.
df -h | sed -e 's/%//' | awk -F" " '$5>80 {print $0}' > data.txt

# Count the number of lines in data.txt.
count=$(wc -l data.txt | cut -f1 -d" ")

# If there are any lines in data.txt, send an email with the disk usage details.
if [ $count -gt 0 ]; then
  mail -s "High disk usage on machine - hostname" mukul@gmail.com < data.txt
fi
