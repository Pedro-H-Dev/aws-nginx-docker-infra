# 🚀 Deploy de Servidor Web Nginx com Docker na AWS EC2

Projeto prático focado em infraestrutura em nuvem, conteinerização e administração de sistemas Linux.

---

## 📌 Visão Geral da Arquitetura
```mermaid
graph LR
    A[👤 Usuário / Navegador] -->|Porta 80 / HTTP| B[🖥️ AWS EC2 Instance]
    B --> C[🐳 Docker Engine]
    C --> D[🌐 Container Nginx]
````
---

## 🛠️ Tecnologias e Ferramentas Utilizadas
* Provedor Cloud: AWS (Amazon Web Services)
* Compute: Amazon EC2 (t3.micro)
* Sistema Operacional: Amazon Linux 2023
* Containerização: Docker
* Servidor Web: Nginx
* Segurança & Conectividade: SSH (Porta 22), HTTP (Porta 80), Security Groups, SSH Key Pairs (.pem)
* Terminal Local: Git Bash

---

## ⚙️ Todos os Comandos de Execução (Caixa Única)

```bash
# ==========================================
# 1. PERMISSÃO DA CHAVE SSH (No Terminal Local)
# ==========================================
chmod 400 chave-projeto-1.pem

# ==========================================
# 2. ACESSO REMOTO VIA SSH
# ==========================================
ssh -i "chave-projeto-1.pem" ec2-user@<IP-PUBLICO-AWS>

# ==========================================
# 3. ATUALIZAÇÃO DO SISTEMA E INSTALAÇÃO DO DOCKER
# ==========================================
sudo dnf update -y
sudo dnf install docker -y

# ==========================================
# 4. INICIALIZAÇÃO E PERMISSÃO DO DOCKER
# ==========================================
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user

# ==========================================
# 5. DEPLOY E EXECUÇÃO DO CONTAINER NGINX
# ==========================================
sudo docker run -d --name servidor-nginx -p 80:80 nginx

````
### Feito por Pedro H.

<img width="1438" height="357" alt="Captura de tela 2026-07-30 221339" src="https://github.com/user-attachments/assets/6d61b5c3-0d2b-4567-b27b-a878ccf68246" />
