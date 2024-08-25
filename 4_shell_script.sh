df -h | sed -e 's/%//' | awk -F" " '$5>80 {print $0}' > data.txt

count=$(wc -l data.txt | cut -f1 -d" ")

if [ $count -gt 0 ]; then
  mail -s "High disk usage on machine - hostname" mukul@gmail.com < data.txt
fi
