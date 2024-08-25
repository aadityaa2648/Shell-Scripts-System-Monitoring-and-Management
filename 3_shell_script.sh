# Find and compress all files that haven't been modified in the last 30 days by using gzip.
find / -type f -mtime +30 -exec gzip {} \;
