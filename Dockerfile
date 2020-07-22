FROM mcr.microsoft.com/dotnet/core/sdk:3.1.302-alpine3.12

RUN apk add --no-cache npm git && \
    npm install -g tslint@5.20.1 typescript@3.7.4

COPY init_dependencies.sh /var/init_dependencies.sh

RUN  /bin/sh /var/init_dependencies.sh
