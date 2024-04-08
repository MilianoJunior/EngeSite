# Instalação do Flutter SDK (ajuste para a versão específica que você precisa)
RUN git clone https://github.com/flutter/flutter.git -b stable --depth 1 /usr/local/flutter

# Adiciona o Flutter ao PATH
ENV PATH="/usr/local/flutter/bin:${PATH}"

# Navega para o diretório do projeto e executa flutter pub get
WORKDIR /app
RUN flutter pub get
