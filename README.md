# SEEKFULLSTACKBACKEND
CODIGO PARA EL TEST SEEK FUULSTACK PARTE DEL FRONT END AQUI ESTA EL DOCKER COPOSE

# Proyecto de Gestión de Tareas

Este proyecto es una aplicación web para la gestión de tareas, desarrollada utilizando Angular 12 en el frontend y Spring Boot con Java 17 en el backend. La aplicación soporta las operaciones básicas de un CRUD (Crear, Leer, Actualizar y Eliminar) y cuenta con configuración para ser desplegada en cualquier entorno mediante Docker.

## Tecnologías Utilizadas

### Frontend:
- **Framework:** Angular 12
- **Node.js:** Versión 14
- **Diseño:** Angular Material
- **Componentes:**
  - Una vista principal que lista todas las tareas, con opciones para actualizar y eliminar.
  - Un componente modal para añadir nuevas tareas.

### Backend:
- **Framework:** Spring Boot
- **Lenguaje:** Java 17
- **Características principales:**
  - CRUD completo implementado con buenas prácticas.
  - Configuración de CORS para permitir el acceso seguro.

## Endpoints del Backend

- **Listar y añadir tareas:**
  - URL: `http://localhost:8080/api/tasks`
  - Métodos: `GET`, `POST`

- **Actualizar y eliminar tareas:**
  - URL: `http://localhost:8080/api/tasks/{id}`
  - Métodos: `PUT`, `DELETE`

## Pruebas

Se implementaron pruebas unitarias y funcionales tanto para el frontend como para el backend, garantizando la correcta funcionalidad de la aplicación.

## Configuración de Docker

### Dockerfile
Se crearon Dockerfiles para el frontend y el backend, permitiendo empaquetar la aplicación para su despliegue.

### Docker Compose
Se configuró un archivo `docker-compose.yml` para levantar tanto el frontend como el backend en contenedores, asegurando una integración sencilla y escalable en cualquier entorno (local o en la nube).

## Cómo Ejecutar la Aplicación

### Requisitos Previos:
- Docker y Docker Compose instalados en tu máquina.

### Pasos:
1. Construye y levanta los servicios con Docker Compose:
   ```bash
   docker-compose up --build

