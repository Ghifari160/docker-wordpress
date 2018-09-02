# Wordpress on Ubuntu for Docker #
[![](https://img.shields.io/badge/docker%20hub-ghifari160%2Fwordpress-0073AA.svg)](https://hub.docker.com/r/ghifari160/apache-php56)
[![](https://images.microbadger.com/badges/image/ghifari160/wordpress.svg)](https://microbadger.com/images/ghifari160/wordpress "Get your own image badge on microbadger.com")

The [best CMS][wp] in the world running on the [best OS][ubuntu] and the
[best container system][docker] in the world.

## Why Use This Image ##
This image is built on [ghifari160/apache-php56][g16-apache-php56], which forces
Apache to run in the foreground and output its log into the container's stdio to
aid in debugging. This container is also equipped with a powerful init script
that will automatically configure Wordpress for installation if no instance is
found (the script will exit if the Wordpress instance is already configured).

## Installation ##
By default, this image should be run as a daemon.
```
docker run -d ghifari160/wordpress
```
However, this image can be run in the foreground for debug purposes.
```
docker run -it ghifari160/wordpress
```

**This image must be [linked](#link-to-another-container) to a database server
or a container running a database server.**

### Further Configurations ###
#### Name your container ####
Add this parameter: `--name <name>`
Example:
```
docker run --name wordpress -d ghifari160/wordpress
```

#### Store the Wordpress instance in a predetermined location of your own choosing ####
Add this parameter: `-v /path/on/host:/var/www/html`
Example:
```
docker run -d -v /path/on/host:/var/www/html ghifari160/wordpress
```

#### Change the port on your container ####
Use the parameter `-p <port on host>:80` to map the container's port to another
port on the host machine.
Example:
```
docker run -d -p 8080:80 ghifari160/wordpress
```

#### Link to another container ####
Use the parameter `--link=<target name>` to link the container to another
container.
Example:
```
docker run --link=mysql -d ghifari160/wordpress
```

## Tags ##
| Tags                      | Ubuntu Version | Size              |
|---------------------------|----------------|:-----------------:|
| `16.04` `xenial`          | 16.04          | [![](https://images.microbadger.com/badges/image/ghifari160/wordpress:16.04.svg)](https://microbadger.com/images/ghifari160/wordpress:16.04 "Get your own image badge on microbadger.com")|
| `17.10` `artful`          | 17.10          | **NOT SUPPORTED** |
| `latest` `18.04` `bionic` | 18.04          |[![](https://images.microbadger.com/badges/image/ghifari160/wordpress.svg)](https://microbadger.com/images/ghifari160/wordpress "Get your own image badge on microbadger.com")|

[wp]: https://wordpress.org
[ubuntu]: http://wordpress.org
[docker]: https://www.docker.com
[g16-apache-php56]: https://github.com/ghifari160/docker-apache-php56
