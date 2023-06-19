#!/bin/bash
# Set variables
USER="root"
HOST="137.184.160.164"
REPO_URL="https://github.com/dawit1202/dockerTest.git"

# Connect to the Droplet via SSH
ssh -o StrictHostKeyChecking=no @USER@$HOST <<EOF
  cd /var/www
  git clone $REPO_URL
  cd your-project-directory
  docker-compose pull
  docker-compose down
  docker-compose up -d
EOF

ssh -v $USER@$HOST