# Lab WordPress EC2 - PH@Piracicaba
Ambiente Dockerizado para WordPress em AWS EC2 - DevOps - 09/09/2026

## Stack
- WordPress 6.5 + PHP 8.2 + Apache
- MySQL 5.7
- Docker 24.0 + Compose v2
- EC2 t3.medium sa-east-1

## Quick Start
git clone https://github.com/PH536-UI/Lab-WordPress-EC2---PH-Piracicaba.git
cd Lab-WordPress-EC2---PH-Piracicaba
cp .env.example .env
docker compose up -d

## Arquitetura
Ver docs/ARCHITECTURE.md e docs/infografico.png

## Backup Restore
./backup.sh
./restore.sh 20260909_203757

Status: Backup 41M + Restore 200 OK - 09/09/2026 Piracicaba
