#!/bin/bash

# Define variables
APP_URL="http://your-application-url"
CHECK_INTERVAL=10  # Check interval in seconds
UPTIME=0           # Initialize uptime counter

while true; do
    # Make HTTP request to check application status
    response=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)

    if [ $response -eq 200 ]; then
        # Application is up
        echo "$(date +'%Y-%m-%d %H:%M:%S') - Application is UP (Uptime: $UPTIME seconds)"
        UPTIME=$((UPTIME + CHECK_INTERVAL))
    else
        # Application is down
        echo "$(date +'%Y-%m-%d %H:%M:%S') - Application is DOWN"
        UPTIME=0
    fi

    # Wait for the next check interval
    sleep $CHECK_INTERVAL
done
