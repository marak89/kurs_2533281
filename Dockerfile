FROM nginx:latest

RUN apt-get update && \
    apt-get install -y \
    mc \
    htop \
    nano && \
    rm -rf /var/lib/apt/lists/*

COPY ./app /usr/share/nginx/html
