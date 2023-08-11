# Selecciona la imagen base con la versión de Node.js que deseas
FROM node:18

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . /app

# Instala las dependencias
RUN yarn install --frozen-lockfile

# Ejecuta el comando de inicio de tu aplicación
CMD ["yarn", "run", "start"]