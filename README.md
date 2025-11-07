# Robot Framework reCAPTCHA Handler

**Automatización de pruebas web con Robot Framework manejando escenarios de reCAPTCHA**

## 📋 Descripción

Este repositorio contiene un script de automatización de pruebas desarrollado en Robot Framework que demuestra cómo manejar inteligentemente los escenarios mediante **Condicionales** y **Keywords**, en escenarios dónde Google activa su sistema de protección **Handler - ReCAPTCHA** durante procesos de automatización.

## 🚀 Características

- **Detección automática** de páginas de verificación de reCAPTCHA
- **Flujo condicional** dónde se maneja tanto el happy path como escenarios bloqueados.
- **Captura de evidencias** mediante screenshots en todos los casos
- **Estructura clara** con keywords modulares y reutilizables

## ⚙️ Funcionalidades Principales

### Happy Path
- Navegación exitosa a Google
- Búsqueda y validación del sitio destino
- Verificación de contenido y títulos esperados
- Captura de evidencia de éxito

### Non-Happy Path (reCAPTCHA)
- Detección automática de páginas de verificación
- Manejo controlado del bloqueo mediante **Condicionales** y **Keywords**
- Captura de evidencia del escenario de seguridad
- Finalización elegante de la prueba

## 🏗️ Estructura del Código
