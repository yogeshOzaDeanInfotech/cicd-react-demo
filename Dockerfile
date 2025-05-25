FROM node:23-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci && npm install -g serve
COPY . .
RUN npm run build
EXPOSE 3000
CMD ["serve", "-s", "dist", "-l", "3000"]
