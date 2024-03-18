﻿# Docker-команда FROM вказує базовий образ контейнера
# Наш базовий образ - це Linux з попередньо встановленим python-3.10
FROM python:3.12

# Встановимо змінну середовища
ENV APP_HOME /app

# Встановимо робочу директорію всередині контейнера
WORKDIR $APP_HOME

# Скопіюємо інші файли в робочу директорію контейнера
COPY . .

# Встановимо залежності всередині контейнера

RUN pip install pipenv
RUN pipenv install -r requirements.txt
RUN pip install .

# Позначимо порт, де працює застосунок всередині контейнера
# EXPOSE 5000

# Запустимо наш застосунок всередині контейнера
ENTRYPOINT ["run"]