#!/bin/bash
apt update -y
apt install apache2 -y

cat <<EOF> /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Documento para script de inicializacao</title>
</head>
<body>
    <h1>Pagina web criada com o script de inicializacao</h1>
</body>
</html>
EOF

systemctl enable apache2
systemctl restart apache2