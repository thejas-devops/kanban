# syntax=docker/dockerfile:1.4

# 1. For build React app
FROM node:22-alpine AS builder

# Set working directory
WORKDIR /app

# 
COPY package*.json ./

# Same as npm install
RUN npm ci

COPY . .

RUN npm run build

FROM nginx:alpine

COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]