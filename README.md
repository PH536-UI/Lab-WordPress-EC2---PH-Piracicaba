cd ~/Lab-WordPress-EC2---PH-Piracicaba 2>/dev/null || git clone https://github.com/PH536-UI/Lab-WordPress-EC2---PH-Piracicaba.git ~/Lab-WordPress-EC2---PH-Piracicaba
cd ~/Lab-WordPress-EC2---PH-Piracicaba
cat > README.md << 'EOF'
# 🚀 Lab WordPress EC2 - PH Piracicaba

### 🇧🇷 PT-BR
Deploy de WordPress containerizado na AWS EC2 com Docker e Docker Compose.
- Setup completo EC2 + Linux + Docker
- Guia prático hands-on

### 🇺🇸 EN
Containerized WordPress deployment on AWS EC2 using Docker.
- Complete EC2 setup guide
- Production-ready approach

Stack: AWS EC2 | Docker | Linux | WordPress
Author: Paulo Henrique Pereira | 4x AWS Certified | SRE
EOF
git add README.md && git commit -m "docs: bilingual readme" && git push
