# 🐳 Simple Dockerfile 
*****

### Requeriments
Win, Mac or Linux and 🐳[Docker](https://docs.docker.com/get-docker/)

### Description containers
- PHP version 7.2.34-fpm
- Nginx version 1.21.5
- MySql version 8.0
- PHPMyAdmin version 5.1.1

### Clone repo

```bash
git clone https://github.com/jhowbhz/docker-webserver.git docker-web
```

### Build

```bash
cd docker-web
```

```bash
docker-compose up --build
```

### Build and run  

```bash
docker-compose up -d --build
#docker-compose up -d
#docker-compose up
```

### List containers

```bash
docker-compose ls
```

### Stop

```bash
docker-compose down
```

## Web Server

```bash
http://localhost:9000
```
![heidisql](https://i.imgur.com/sdP1txK.png)

## Use PHPMyAdmin
```bash
http://localhost:9002
```

![PHPMyAdmin](https://i.imgur.com/1RxkI0R.png)

## ⬇️ Download HeidiSql

```bash
https://www.heidisql.com/download.php
```

![heidisql](https://i.imgur.com/gfQkRWg.png)

