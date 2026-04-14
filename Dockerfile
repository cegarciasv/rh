# Usar Nginx Alpine como base (ligero)
FROM nginx:alpine

# Limpiar archivos por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copiar todos tus archivos HTML a la imagen
COPY *.html /usr/share/nginx/html/

# Exponer puerto 80
EXPOSE 80

# Iniciar el servidor
CMD ["nginx", "-g", "daemon off;"]
