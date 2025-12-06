# 🚀 Proyecto CI/CD Multi-Plataforma — Sistemas Operativos & DevOps

Este proyecto implementa un **pipeline CI/CD completo** utilizando:

✔️ GitHub Actions  
✔️ Node.js + Express  
✔️ Pruebas unitarias (Jest)  
✔️ Escaneo de seguridad (npm audit + permisos de archivos)  
✔️ Ejecución en matriz de sistemas operativos (Ubuntu, Windows, macOS)  
✔️ Contenedores Docker  
✔️ Deploy automático a Vercel con Webhook  

Es un proyecto integrador diseñado para demostrar conocimientos de:

- Sistemas Operativos  
- Runners y Procesos  
- Contenedores y virtualización  
- CI/CD  
- Seguridad en pipelines  
- Automatización multiplataforma  

---

# 📚 Tabla de Contenidos

1. [Badges del Proyecto](#-badges-del-proyecto)  
2. [Aplicación Node.js (Express)](#-aplicación-nodejs-express)  
3. [Arquitectura del Pipeline CI/CD](#-arquitectura-del-pipeline-cicd)  
4. [Pruebas Unitarias (Jest)](#-pruebas-unitarias-jest)  
5. [Seguridad del Proyecto](#-seguridad-del-proyecto)  
6. [Ejecución Multi-OS](#️-multi-os-ubuntu--windows--macos)  
7. [Contenedores Docker](#-contenedores-docker)  
8. [Deploy Automático a Vercel](#-deploy-automático-a-vercel)  
9. [Estructura del Repositorio](#-estructura-del-repositorio)  
10. [Autor](#-autor)

---

# 📛 Badges del Proyecto

[![CI Pipeline](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/ci-pipeline.yml/badge.svg)](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/ci-pipeline.yml)
[![Security Scan](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/security-scan.yml/badge.svg)](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/security-scan.yml)
[![Multi-OS Test](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/multi-os-test.yml/badge.svg)](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/multi-os-test.yml)
[![Release Deploy](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/release.yml/badge.svg)](https://github.com/TonyBSosa/so-github-actions-labs/actions/workflows/release.yml)

---

# 📦 Aplicación Node.js (Express)

La aplicación es sencilla y sirve como plataforma para ejecutar pruebas del pipeline.

### ✔️ Endpoint principal

`GET /`

```json
{ "message": "Aplicación CI/CD funcionando" }

flowchart TD

    A[👨‍💻 Developer] --> B[📦 GitHub Repository]

    B --> C[🧪 CI Pipeline<br/>Tests<br/>Cobertura<br/>Linter]

    C --> D[🛡️ Security Scan<br/>npm audit<br/>Permisos de archivos]

    C --> E[🖥️ Multi-OS Matrix<br/>Ubuntu · Windows · macOS]

    D --> F[📤 Release Workflow<br/>Generación de build]

    F --> G[⚡ Deploy automático a Vercel]

    G --> H[🌐 Producción<br/>Aplicación funcionando]

    style A fill:#daf7a6,stroke:#333
    style B fill:#ffe599,stroke:#333
    style C fill:#add8e6,stroke:#333
    style D fill:#f8cccc,stroke:#333
    style E fill:#d5a6bd,stroke:#333
    style F fill:#c9daf8,stroke:#333
    style G fill:#b6d7a8,stroke:#333
    style H fill:#fff2cc,stroke:#333
