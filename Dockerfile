#Usa una versión ligera de Node.js 19 como base para construir el contenedor.
FROM node:19-alpine

#Copia los archivos de configuración de Node.js al contenedor para que pueda instalar las dependencias necesarias.
COPY package*.json /usr/app/

#Copia el código fuente del proyecto al contenedor.
COPY src /usr/app/

#Cambia el directorio de trabajo a /usr/app para que los comandos siguientes se ejecuten allí.
WORKDIR /usr/app

#Instala las librerías que el proyecto necesita.
RUN npm install

#Inicia la aplicación ejecutando el archivo server.js con Node.js.
CMD ["node", "server.js"]