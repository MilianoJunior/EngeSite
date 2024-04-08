# Usa uma imagem base do Debian
FROM debian:latest

# Evita avisos ao rodar comandos no container
ARG DEBIAN_FRONTEND=noninteractive

# Instala dependências necessárias
RUN apt-get update && apt-get install -y --no-install-recommends \
    git \
    wget \
    unzip \
    curl \
    xz-utils \
    libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

# Define o diretório de trabalho
WORKDIR /opt


# Baixa o Flutter SDK
RUN git -c http.sslVerify=false clone https://github.com/flutter/flutter.git -b stable


# Adiciona o Flutter ao PATH
ENV PATH="/opt/flutter/bin:/opt/flutter/bin/cache/dart-sdk/bin:${PATH}"

# Roda o flutter doctor para verificar a instalação e pré-baixar dependências de desenvolvimento
RUN flutter doctor -v
RUN flutter precache

# Configura o volume do projeto
WORKDIR /app

# Mantém o container rodando
CMD ["bash"]
