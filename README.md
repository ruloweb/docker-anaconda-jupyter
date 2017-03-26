# Description
Based on the [continuumio/anaconda](https://hub.docker.com/r/continuumio/anaconda/) docker image.
This package will download and install [Anaconda](https://www.continuum.io/downloads) (based on Python 2.7) that is ready to use.

# Requirements
 - Docker 1.11 or higher
 - Docker composer

# Usage
After cloning the repository you need to update the jupyter notebook password in the .env file. Then, run the command:

```sh
docker-compose up -d
```

By default, it will try to use the port 8888. You can change it in the **docker-compose.yml** file.
