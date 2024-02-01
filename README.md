# Docker
Docker playground
## MariaDB
Commands to start:

  $ docker-compose -p mariadb up
  
Connect: 

  $ mysql -u root -p -h 192.168.1.40

## Jenkins
Commands to start:

  $ docker-compose -p jenkins up

Connect:

  Use 'localhost:8080' in webbrowser

## Progress

    $ docker start Progress
    $ docker export Progress > progress.tar
    $ docker import - newprogress < progress.tar
