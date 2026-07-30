# Usa a imagem oficial e leve do Nginx baseada em Alpine Linux
FROM nginx:alpine

# Limpa a página padrão do Nginx
RUN rm /usr/share/nginx/html/index.html

# Copia o seu index.html para a pasta de exibição do Nginx
COPY index.html /usr/share/nginx/html/index.html

# Expõe a porta 80 padrão do servidor web
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]