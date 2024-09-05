# Використовуйте офіційний Python образ як базовий образ
FROM python:3.11-slim

# Встановіть робочу директорію
WORKDIR /app

# Скопіюйте requirements.txt в контейнер
COPY requirements.txt .

# Оновіть pip до останньої версії
RUN pip install --upgrade pip

# Встановіть залежності
RUN pip install --no-cache-dir -r requirements.txt

# Скопіюйте весь вміст проекту в контейнер
COPY . .

# Вкажіть команду для запуску вашого додатку
CMD ["python", "app.py"]
