FROM microsoft/dotnet:2.1.500-sdk-stretch

RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh && \
    bash nodesource_setup.sh && \
    apt-get install -y nodejs build-essential

COPY package.json /var/package.json
COPY package-lock.json /var/package-lock.json
COPY init_dependencies.sh /var/init_dependencies.sh
COPY build.sh /var/build.sh
RUN  ["/bin/bash", "/var/init_dependencies.sh"]
CMD  ["/bin/bash", "/var/build.sh"]
