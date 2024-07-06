# Application Status Checker

This Bash script monitors the status of an application by checking its HTTP response code. It determines whether the application is 'up' (functioning correctly) or 'down' (unavailable or not responding) and displays the current uptime.

## Features

- **Continuous Monitoring**: Checks the application status indefinitely.
- **HTTP Status Code Checking**: Determines application status based on HTTP response codes (200 for 'up', non-200 for 'down').
- **Uptime Tracking**: Tracks how long the application has been continuously 'up'.
- **Customizable Check Interval**: Adjust the interval between checks according to your needs.

## Prerequisites

- **Bash**: The script is written in Bash and requires a Bash-compatible shell.
- **curl**: Used for making HTTP requests.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/rinjurachel06/app-status-checker.git
   cd app-status-checker
   ```

2. Make the script executable:

   ```bash
   chmod +x app_status_check.sh
   ```

3. Edit the script to set your application URL:

   ```bash
   nano app_status_check.sh
   # Update APP_URL="http://your-application-url"
   ```

4. Run the script:

   ```bash
   ./app_status_check.sh
   ```

   The script will continuously monitor your application's status and display updates in the terminal.

5. Stop the script:

   Press `Ctrl+C` to stop monitoring.

## Configuration

- **APP_URL**: Replace `"http://your-application-url"` with the URL of your application.
- **CHECK_INTERVAL**: Adjust the `CHECK_INTERVAL` variable in the script to set the interval (in seconds) between each status check.

## Example Output

```
2024-07-06 15:30:00 - Application is UP (Uptime: 10 seconds)
2024-07-06 15:30:10 - Application is DOWN
2024-07-06 15:30:20 - Application is UP (Uptime: 10 seconds)
...

```
