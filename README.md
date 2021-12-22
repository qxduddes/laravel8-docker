# Laravel 8 Development Environment with Docker Compose

1. Install docker for M1 (https://docs.docker.com/desktop/mac/apple-silicon)
2. Clone laravel8-docker to your local computer
3. Clone and install your app inside /laravel8-docker/src folder
4. Run docker-compose build (to build your laravel docker development environment)
5. Run docker-compose up -d (start docker container)
6. Run docker-compose run composer install
7. Open the docker-compose.yml and change the database connection credentials
```
MYSQL_DATABASE: app
MYSQL_USER: root
MYSQL_PASSWORD: secret
```
8. Update your Laravel 8 MySQL connection in .env file
```
DB_CONNECTION=mysql
DB_HOST=mysql
DB_PORT=3306
DB_DATABASE=app
DB_USERNAME=root
DB_PASSWORD=secret
```
10. Run docker-compose run artisan migrate

## Terminal Commands:

- To build or rebuild your docker container
```
docker-compose build
```
- To start your development environment container
```
docker-compose up -d
```
- To end or terminate your development environment container
```
docker-compose down
```
- To run php artisan
```
docker-compose run artisan make:controller TestController
```
- To run composer commands
```
docker-compose run composer install
```
