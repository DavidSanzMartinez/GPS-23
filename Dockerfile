# Usar una imagen base de Python (por ejemplo, Python 3.8)
FROM python:3.8-slim

# Establecer el directorio de trabajo en la imagen Docker
WORKDIR /app

# Copiar el archivo requirements.txt dentro de la imagen Docker
COPY requirements.txt /app/

# Instalar las dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt

# Copiar todo el código fuente del proyecto dentro de la imagen
COPY . /app/

# Exponer el puerto (si es necesario para tu aplicación)
EXPOSE 8000

# Ejecutar el archivo principal del proyecto (si fuera necesario)
CMD ["python", "main.py"]
