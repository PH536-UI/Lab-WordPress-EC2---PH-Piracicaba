# Lab WordPress EC2 - PH@Piracicaba

Stack: wordpress:6.5-php8.2-apache + mysql:5.7 + docker compose

## Rodar
cp .env.example .env
docker compose up -d
http://localhost

## Backup / Restore
./backup.sh
./restore.sh 20260909_203757

Backup dourado 200 OK - 09/09/2026
Autor: PH - Piracicaba
