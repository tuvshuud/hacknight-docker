### Instructions
```
mkdir hacknight_docker
```

```bash
git clone https://github.com/bricehartmann/laravel-5.7-task-app.git laravel-todo
```

```bash
# https://github.com/tuvshuud/php7-apache-laravel
docker pull tuvshuud/php7-apache-laravel
```

```bash
docker images
```

```bash
# create mysql container
docker run -d \
    -e MYSQL_ROOT_PASSWORD=qwe123 \
    -e MYSQL_DATABASE=todos \
    --name todo-db mysql:5.7.9 --character-set-server=utf8 --collation-server=utf8_general_ci

cd laravel-todo

docker build . -t hacknight/todo_web:latest

docker run -d -p 8000:80 --link todo-db \
    --name todo-web hacknight/todo_web:latest

```

#### Survey
https://goo.gl/forms/QJecihmNMKuAWr3J2
