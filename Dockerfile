# Використовуємо базовий образ Python
FROM python:3.11-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файли додатку
COPY requirements.txt requirements.txt
COPY app.py app.py

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Виставляємо порт, на якому буде працювати Flask
EXPOSE 3000

# Запускаємо Flask додаток
CMD ["python", "app.py"]
