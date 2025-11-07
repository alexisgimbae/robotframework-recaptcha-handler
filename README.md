# Robot Framework reCAPTCHA Handler
**Automatización de pruebas web con Robot Framework manejando escenarios de reCAPTCHA**
<img width="1536" height="1024" alt="ChatGPT Image 7 nov 2025, 03_28_25 p m" src="https://github.com/user-attachments/assets/0edd82ef-1ff5-419f-846b-a9d2154a1bea" />

## 📋 Descripción
Este repositorio contiene un script de automatización de pruebas desarrollado en Robot Framework que demuestra cómo manejar inteligentemente los escenarios con **Condicionales** y **Keywords**, en escenarios dónde Google activa su sistema de protección **Handler - ReCAPTCHA** durante procesos de automatización.

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
*** Test Cases ***
Search Google and Navigate
# Flujo principal con manejo condicional
Run Keyword If ${isRecaptcha} Check Recaptcha ELSE Go To Destination Page

*** Keywords ***
Check Recaptcha
# Maneja el escenario cuando aparece reCAPTCHA

Go To Destination Page
# Ejecuta el flujo normal de navegación

## 📁 Archivos
- `automation.robot` - Script principal de automatización
- `README.md` - Documentación del proyecto

## 🛠️ Tecnologías
- **Robot Framework** - Framework de automatización
- **SeleniumLibrary** - Biblioteca para automatización web
- **Python** - Lenguaje de programación base
- **Git** - Control de versiones

### Programas y Librerías Necesarios
# 1. Instalar Python y pip
# Descargar desde: https://python.org
# 2. Instalar todas las dependencias con pip
pip install robotframework
pip install robotframework-seleniumlibrary
pip install selenium
pip install webdriver-manager

# 3. Navegador Firefox
# Descargar desde: https://mozilla.org/firefox

# 4. GeckoDriver para Firefox (Opciones):
# Opción A: Usar webdriver-manager (recomendado - se instala automáticamente)
# Opción B: Descargar manualmente desde: https://github.com/mozilla/geckodriver/releases
#           y agregar el ejecutable al PATH del sistema

# 5. Verificar instalaciones
python --version
pip --version
robot --version

## Ejecutar las pruebas
# Navegar al directorio del proyecto y ejecutar en la terminal o cmd:
robot VerifyGoogleHandlerRecaptcha.robot
# Ejecutar con tags específicos
robot -i TC_001 automation.robot

📊 Reportes Generados
Después de la ejecución, se generan automáticamente:

    report.html - 📊 Reporte ejecutivo con resultados

    log.html - 📝 Log detallado paso a paso

    output.xml - 🔧 Datos estructurados para integraciones

    screenshot-{index}.png - 🖼️ Capturas de evidencia visual

- ## 📸 Evidencias
El script captura screenshots automáticamente en ambos escenarios:
- `screenshot-{index}.png` - Para flujo normal
- `screenshot-{index}.png` - Para escenarios de reCAPTCHA

## 💡 Casos de Uso
Sugeridos para tipo de pruebas:
- Integración con motores de búsqueda
- Manejo de sistemas anti-bots en automatizaciones
- Aprendizaje de flujos condicionales en Robot Framework

## 📄 Licencia
MIT License

Copyright (c) 2024 Alexis Giménez.
