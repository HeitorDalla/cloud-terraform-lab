#!/bin/bash
apt update -y
apt install -y apache2

HOSTNAME=$(hostname)

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html> 
<html> 
<body style='background-color:rgb(250, 210, 210);'> 
    <h1>Welcome to StackSimplify - WebVM App1 </h1>

    <p><strong>VM Hostname:</strong> $HOSTNAME</p>
    <p><strong>VM IP Address:</strong> $(hostname -I)</p>
    <p><strong>Application Version:</strong> V1</p>
    <p>Google Cloud Platform - Demos</p>
</body>
</html>
EOF

systemctl enable apache2
systemctl restart apache2