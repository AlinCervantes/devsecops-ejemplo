FROM python:3.9-slim
WORKDIR /app

# Copia el archivo de requisitos e instala las dependencias
COPY requirements.txt .

# Instala las dependencias de la aplicación
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código de la aplicación
COPY . .

# Define el comando para ejecutar la aplicación
# Asume que tu script principal se llama app.py
CMD ["python", "app.py"]
