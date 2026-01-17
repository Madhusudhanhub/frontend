FROM nginx:alpine

# Copy your renamed index.html
COPY index.html /usr/share/nginx/html/index.html

# Fix permissions so nginx can read
RUN chmod 644 /usr/share/nginx/html/index.html

EXPOSE 80

