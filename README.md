# 🚀 Proyecto CI/CD Multi-Plataforma — Sistemas Operativos & DevOps

Este proyecto implementa un **pipeline CI/CD completo**, utilizando **GitHub Actions**, **Node.js + Express**, pruebas automatizadas con **Jest**, escaneo de seguridad, ejecución en **matriz de sistemas operativos**, automatización de contenedores y **deploy automático a Vercel** usando Webhooks.

Es un proyecto integrador para demostrar conocimientos de:
- Sistemas Operativos  
- Procesos & Runners  
- Contenedores  
- CI/CD  
- Seguridad en pipelines  
- Automatización multiplataforma  

---

# 📛 Badges del Proyecto

[![CI Pipeline](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/ci-pipeline.yml/badge.svg)](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/ci-pipeline.yml)
[![Security Scan](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/security-scan.yml/badge.svg)](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/security-scan.yml)
[![Multi-OS Test](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/multi-os-test.yml/badge.svg)](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/multi-os-test.yml)
[![Release Deploy](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/release.yml/badge.svg)](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/release.yml)

---
# 🏃‍♂️ Instrucciones de Ejecución

## ▶️ Ejecutar la aplicación localmente

1. Clonar el repositorio:
```bash
git clone https://github.com/TonyBSosa/so-github-actions-labs.git

cd so-github-actions-labs/so-cicd-app
npm install
npm start
http://localhost:3000


---
🐳 Ejecutar el contenedor Docker
docker build -t so-cicd-app .
docker run -p 3000:3000 so-cicd-app
---

# 📦 Aplicación Node.js (Express)

La app es simple, diseñada para probar acciones de sistema:

 # ⚙️ Explicación de Cada Workflow

A continuación se detalla la función de cada workflow dentro del pipeline CI/CD del proyecto.

---

## 1️⃣ CI Pipeline — `ci-pipeline.yml`

Este workflow se ejecuta en:
- Ubuntu
- Windows
- macOS

Con dos versiones de Node:
- 18.x
- 20.x

### Funciones principales:
✔ Instala dependencias (npm ci)  
✔ Ejecuta pruebas (npm test)  
✔ Genera reporte de cobertura  
✔ Corre el linter si existe  
✔ Sube artifacts de cobertura  
✔ Garantiza compatibilidad multi-plataforma  

Este workflow valida que toda la aplicación funcione **en múltiples entornos de SO y versiones de Node**.

---

## 2️⃣ Security Scan — `security-scan.yml`

Este workflow tiene dos fases:

### 🔍 1. Dependency Audit
Ejecuta:

```bash
npm audit --json
