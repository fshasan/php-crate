## Dockerize your PHP application!

This repository contains a simple procedure for making a docker environment that supports PHP applications with services including PHP, Nginx, MySQL & PHPMyAdmin.

## Requirements

- [PHP 8](https://kinsta.com/blog/install-php/)
- [Docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04)
- [Docker Compose](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-20-04)

## Getting Started

- Clone the repository.

  ```sh
  git clone https://github.com/fshasan/php-crate.git
  ```

- Change the directory to the repository.

  ```sh
  cd php-crate
  ```

- Run this script file to install the application.

  ```sh
     sh start.sh
  ```

  or run this

  ```sh
     ./start.sh
  ```

- For checking docker containers status, run this command.

  ```sh
  docker-compose ps
  ```

- To shutdown/terminate running docker containers, run this command.

  ```sh
  docker-compose down
  ```
