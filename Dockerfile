# Use Node LTS
FROM node:20-alpine

# Diretório da app
WORKDIR /app

# Copia dependências
COPY package*.json ./

# Instala dependências
RUN npm install

# Copia o restante do código
COPY . .

# Build da aplicação
RUN npm run build

# Expõe porta
EXPOSE 3000

# Start da aplicação
CMD ["npm", "start"]
