#!/bin/bash

# Connect to your DigitalOcean Droplet using SSH
ssh travis@137.184.160.164 'bash -s' < deploy-script.sh
