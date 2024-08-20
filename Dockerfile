# Oфіційний образ Node.js як базовий
FROM python:3.11-slim

# Робоча директорія всередині контейнера
WORKDIR /app

# Скопювання package.json і package-lock.json для встановлення залежностей
COPY requirements.txt .

# Встановдення всіх залежностей
RUN pip install --no-cache-dir -r requirements.txt

# Скопіювання всіх файлів додатку до контейнера
COPY . .

# Порт, який буде прослуховуватися в контейнері
EXPOSE 3000

# Команда для запуску додатку
CMD ["python", "app.py"]
