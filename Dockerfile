FROM ubuntu:18.04

# Установка зависимостей
RUN apt update && apt install -yy gcc g++ cmake

# Копирование проекта и сборка
COPY . print/
WORKDIR print

RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install && \
    cmake --build _build && \
    cmake --build _build --target install

# Настройка логирования
ENV LOG_PATH /home/logs/log.txt
VOLUME /home/logs

# Запуск приложения
WORKDIR _install/bin
ENTRYPOINT ./demo