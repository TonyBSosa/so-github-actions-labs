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

# 📦 Aplicación Node.js (Express)

La app es simple, diseñada para probar acciones de sistema:

### `GET /`
```json
{ "message": "Aplicación CI/CD funcionando" }

## 📌 Arquitectura del Pipeline CI/CD

```mermaid
flowchart TD
    A[👨‍💻 Developer] --> B[📁 GitHub Repository]

    B --> C[⚙️ CI Pipeline<br/>- Tests unitarios<br/>- Cobertura<br/>- Linter]
    
    C --> D[🔐 Security Scan<br/>- npm audit<br/>- Permisos de archivos]

    C --> E[🖥️ Multi-OS Matrix<br/>Ubuntu / Windows / macOS]

    D --> F[🚀 Release Workflow<br/>Generación de build]

    F --> G[▲ Deploy automático a Vercel]

    G --> H[🌎 Producción<br/>Aplicación funcionando]

    style A fill:#daf7a6,stroke:#333
    style B fill:#ffe599,stroke:#333
    style C fill:#add8e6,stroke:#333
    style D fill:#f8cccc,stroke:#333
    style E fill:#d5a6bd,stroke:#333
    style F fill:#c9daf8,stroke:#333
    style G fill:#b6d7a8,stroke:#333
    style H fill:#fff2cc,stroke:#333
