

<!--
**kocapb777/kocapb777** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
Вся информация находится в файлах конфигураций.

1. Dockerfile положить в директорию. Начать сборку образа:

sudo docker build .

sudo docker run -p 5000:5000 <имя образа>

Flaskex доступен по адресу http://0.0.0.0:5000

2. Vagrantfile, setup.yml, hosts, bootstrap.sh положить в директорию. Начать сборку ВМ с автоматическим деплоем Flaskex.


vagrant up


Flaskex доступен по адресу http://0.0.0.0:5001, http://0.0.0.0:5002, http://0.0.0.0:5003


Логика конфигов: в vagrantfile указывается пул необходимых хостов, циклическим оператором конфигурируется каждая машина. После сборки каждой машины, для неё запускается Ansible для развёртывания Flaskex, а также дополнительный конфиг bootstrap.sh (как оказалось, нет необходимости).
Подробнее о шагах работы можно посмотреть в файлах.
