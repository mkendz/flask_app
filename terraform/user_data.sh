#!/bin/bash
exec > /var/log/user-data.log 2>&1
echo "Starting user-data script..."

# Update and install dependencies
yum update -y
yum install -y python3-pip git

# Clone your GitHub repo
cd /home/ec2-user
git clone https://github.com/mkendz/flask_app.git #your github/repo
cd flask_app
cd app

# Install Python packages
pip3 install -r requirements.txt

# Start Flask app (adjust this as needed)
python3 /home/ec2-user/flask_app/app/app.py


