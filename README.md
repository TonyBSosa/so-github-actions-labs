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
