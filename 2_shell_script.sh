#!/bin/bash

# Set the directory where files are taken from
source_directory="/path/to/your/source"

# Set the directory where the backup will be stored
backup_directory="/path/to/your/backup"

# Set the file where we'll write logs about the backup process
log_file="/path/to/your/backup_log.txt"

# Create a unique name for the backup file using the current date and time
timestamp=$(date +"%Y%m%d%H%M%S")
backup_file="backup_$timestamp.tar.gz"

# Start the backup process and log everything
{
  # Create a compressed file of the source directory
  tar -czf "$backup_directory/$backup_file" "$source_directory"

  # Check if the backup command was successful
  if [ $? -eq 0 ]; then
    # If successful, write this message to the log file
    echo "Backup completed successfully: $backup_file"
  else
    # If it failed, write this error message to the log file
    echo "Backup failed."
  fi
} >> "$log_file" 2>&1  # Save both the output and errors to the log file
