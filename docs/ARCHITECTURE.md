# Arquitetura Lab WordPress EC2

EC2 t3.medium sa-east-1
Docker Engine 24.0

MySQL 5.7:
- Container mysql-57
- Volume db_data
- Porta 3306 interno

WordPress 6.5:
- Container wordpress-65
- Volume wp_data
- Portas 80 e 443
- Apache + PHP 8.2 + mod_rewrite

Scripts:
- backup.sh -> backup dourado 41M
- restore.sh -> restore 200 OK validado

Endpoints:
- HTTP 80
- HTTPS 443
- Rede bridge wordpress_network

Fluxo: GitHub -> git clone EC2 -> docker compose up -d -> 200 OK
