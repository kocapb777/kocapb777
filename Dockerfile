# Указываем, на основе какого образа будет создан наш образ
FROM ubuntu:18.04

# Указываем, какие команды будут выполнены при создании образа (установка компонентов и приложения)
RUN apt update
RUN apt install -y python python-pip git
RUN git clone https://github.com/anfederico/Flaskex
RUN pip install -r ./Flaskex/requirements.txt

# Указываем, какие команды будут выполнены во время запуска контейнера (запуск сервера)
CMD python ./Flaskex/app.py

# Если установить Ubuntu 20.04 (тег latest), то при установке python-pip менеджер пакетов ругается, что не может его
# взять из репо. Если установить python3-pip, то установится pip для 3 версии Python, а Flaskex на этой версии
# не работает (выдаёт ошибку модуля из requirements.txt).
