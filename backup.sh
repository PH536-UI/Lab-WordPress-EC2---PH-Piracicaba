#!/bin/bash
set -e
LAB_DIR="$HOME/wordpress-ec2-lab"
BACKUP_DIR="$HOME/backups/wordpress-lab"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
mkdir -p "$BACKUP_DIR"
cd "$LAB_DIR"
docker compose stop db wordpress || true
docker run --rm -v wordpress-ec2-lab_db_data:/volume -v $BACKUP_DIR:/backup ubuntu tar czf /backup/db_data_${TIMESTAMP}.tar.gz -C / volume
docker run --rm -v wordpress-ec2-lab_wp_data:/volume -v $BACKUP_DIR:/backup ubuntu tar czf /backup/wp_data_${TIMESTAMP}.tar.gz -C / volume
cp "$LAB_DIR/docker-compose.yml" "$BACKUP_DIR/docker-compose.yml_${TIMESTAMP}"
cp "$LAB_DIR/.env" "$BACKUP_DIR/.env_${TIMESTAMP}" 2>/dev/null || true
docker compose up -d
sudo chown $USER:$USER $BACKUP_DIR/*${TIMESTAMP}* 2>/dev/null || true
ls -lh $BACKUP_DIR | tail -n 6
echo "Backup OK: $TIMESTAMP"
