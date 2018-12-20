FROM roura/tengine

COPY codebase /var/app
WORKDIR /var/app

RUN apt-get update && apt-get install -y curl gnupg \
    && curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && apt-get update && apt-get install -y nodejs && apt-get clean

COPY default.conf /etc/nginx/conf.d/
EXPOSE 8080
