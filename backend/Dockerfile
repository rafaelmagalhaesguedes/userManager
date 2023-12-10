# Define a imagem base
FROM node:16.14.2

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos de definição do pacote para o diretório de trabalho
COPY package*.json ./

# Instala as dependências Node
RUN npm install

# Copia o código fonte para o diretório de trabalho
COPY . .

USER node

# Define o comando para iniciar o aplicativo
CMD [ "/bin/bash" ]