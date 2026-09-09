#!/bin/bash
set -e
cd ~/wordpress-ec2-lab
BACKUP_DIR=~/backups/wordpress-lab
if [ -z "$1" ]; then
  echo "Uso: ./restore.sh <timestamp>"
  echo "Backups disponíveis:"
  ls $BACKUP_DIR/db_data_*.tar.gz | sed 's/.*db_data_//; s/.tar.gz//' | sort
  exit 1
fi
TS=$1
echo "Restaurando backup $TS..."
docker compose down
docker volume rm wordpress-ec2-lab_db_data wordpress-ec2-lab_wp_data 2>/dev/null; true
docker volume create wordpress-ec2-lab_db_data
docker volume create wordpress-ec2-lab_wp_data
docker run --rm -v wordpress-ec2-lab_db_data:/volume -v $BACKUP_DIR:/backup ubuntu bash -c "cd /volume && tar xzf /backup/db_data_${TS}.tar.gz --strip 1"
docker run --rm -v wordpress-ec2-lab_wp_data:/volume -v $BACKUP_DIR:/backup ubuntu bash -c "cd /volume && tar xzf /backup/wp_data_${TS}.tar.gz --strip 1"
docker compose up -d
sleep 15
curl -I http://localhost
echo "Restaurado: $TS"
