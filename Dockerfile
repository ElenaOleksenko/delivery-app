# Используйте базовый образ Node.js
FROM node:16

# Установите рабочую директорию
WORKDIR /сlon2_my_delivery_app

# Скопируйте файлы package.json и package-lock.json
COPY package*.json ./

# Установите зависимости
RUN npm install

# Скопируйте все файлы приложения
COPY . .

# Установите переменные окружения из файла .env
ENV DB_HOST='mongodb+srv://OlenaOleksenko:5227337109531N@olenaoleksenkomongodbcl.jwck9ba.mongodb.net/users?retryWrites=true&w=majority'
ENV secret_jwt_key = 1000
ENV PORT=8080

# Запустите Express-сервер
CMD [ "node", "src/index.js" ]
