FROM python:3.11-slim

# Встановлення робочої директорії
WORKDIR /app

# Копіюємо requirements.txt в контейнер
COPY requirements.txt .

# Оновлення pip до останньої версії
RUN pip install --upgrade pip

# Встановлення залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо весь вміст проекту в контейнер
COPY . .

# Команда для запуску додатку
CMD ["python", "app.py"]
