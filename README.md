This repository contains various shell scripts for system tasks. Below is a brief overview of what each script does:

1. **Check if `data.txt` file exists**: 
   - Verifies if a file named `data.txt` is present in the current directory and prints whether the file is available or not.

2. **Create a compressed backup**:
   - Creates a compressed backup of a specified directory and logs the results. Includes error handling to ensure the backup process is reliable.

3. **Compress files older than 30 days**:
   - Compresses files in the system that are older than 30 days.

4. **Delete files older than 60 days**:
   - Deletes files in the system that are older than 60 days.

5. **Send email if disk usage exceeds 80%**:
   - Checks disk usage and sends an email alert if the usage is greater than 80%.

## Usage

1. Copy the relevant script into a `.sh` file.
2. Make the script executable using `chmod +x filename.sh`.
3. Run the script using `./filename.sh`.
