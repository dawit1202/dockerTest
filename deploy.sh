#!/bin/bash

# Set variables
USER="root"
HOST="137.184.160.164"
DIR="/var/www/html"  # Destination directory on the Droplet

# SSH into the Droplet and copy the build files
ssh -o StrictHostKeyChecking=no $USER@$HOST "mkdir -p $DIR"
scp -o StrictHostKeyChecking=no -r build/* $USER@$HOST:$DIR

# Additional commands, if needed
# ...

echo "Deployment completed successfully"