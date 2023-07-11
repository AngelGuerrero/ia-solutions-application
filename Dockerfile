# Imagen base para Python
FROM python:3

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar los archivos de requerimientos (requirements.txt)
COPY requirements.txt requirements.txt

# Instalar virtualenv
RUN pip install virtualenv

# Crear y activar el entorno virtual
RUN virtualenv myenv
RUN . myenv/bin/activate

# Instalar las dependencias del proyecto en el entorno virtual
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código fuente de la aplicación
COPY ./app /app

# Instalar cliente de MySQL
RUN apt-get update && apt-get install -y default-mysql-client

# Exponer el puerto donde se ejecutará la aplicación
EXPOSE 8000