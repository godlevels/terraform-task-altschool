#!/bin/bash
apt update
apt install -y apache2

#AWS CLI Installation
apt install -y awscli

#Images from s3 bucket
# aws s3 cp s3://altschool_terraform_project_2023/project.webp /var/www/html/project.png --acl

#Simple HTML content to display the Images
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>AltSchool Terraform Project</title>
</head>
<body>
    <h1>Terraform Project Server 1</h1>
    <p>Welcome to my AltSchool project solution after a lot of struggle from practicing</p>
</body>
</html>
EOF

#Start Apache and enable it on boot
systmectl start apache2
systmectl enable apache2