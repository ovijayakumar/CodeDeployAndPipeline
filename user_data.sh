#!/usr/bin/env bash

sudo su
sudo yum update -y
sudo yum install httpd -y
sudo chown ec2-user:ec2-user -R /var/www
cat > /var/www/html/index.html <<EOL
<html>
<head><title>Code Deploy App</title></head>
<body>Code Deploy</body>
</html>
EOL
sudo systemctl start httpd
sudo systemctl enable httpd