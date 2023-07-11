# Instalación usando docker

## Versión de python

`3.9`

### Copiar el archivo .env

`cp -rfv .env.example .env`

### Creación de los servicios

`docker-compose up`

### Ejecutar las migraciones

`docker-compose exec web python manage.py migrate`

### Creación de los servicios construyendo el proyecto
`docker-compose up --build`


### Construcción de imagen

`docker build -t ia-solutions-app .`

### Construcción del contenedor

`docker run -p 8000:8000 ia-solutions-app`

