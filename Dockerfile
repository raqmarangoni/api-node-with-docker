# vamos utilizar a imagem do node na versão 14
FROM node:14 
# definição do diretório padrão
WORKDIR /app-node
# Explicita em qual porta aplicação está sendo executada
EXPOSE 3000
# Copia o conteudo do diretório atual do meu host(incluindo o Dockerfile) para o diretório /app-node, dentro da minha imagem
COPY . .
# Executar este comando enquanto a imagem estiver sendo criada
RUN npm install
# E quando o container for executado a partir dessa imagem deve executar o comando abaixo
ENTRYPOINT npm start