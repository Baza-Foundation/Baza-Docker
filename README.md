### Official Container for baza daemon

Homepage: [baza.foundation](https://baza.foundation)

Repository: [gitlab.ekata.io/baza-foundation/baza-docker](https://gitlab.ekata.io/baza-foundation/baza-docker)

Dockerfile: [gitlab.ekata.io/baza-foundation/baza-docker/-/blob/main/Dockerfile](https://gitlab.ekata.io/baza-foundation/baza-docker/-/blob/main/Dockerfile)

#### To start a container

-   Pull the image

```bash
docker pull ewarehouse/bazad
```

-   Run it

```bash
docker run -it -v ~/baza-data:/data -p 127.0.0.1:11754:11754 -p 0.0.0.0:11753:11753 ewarehouse/bazad
```

-   If you need block explorer API access (like for getblocks, gettransactionpool, etc.) in RPC api append --enable-blockexplorer like following

```bash
docker run -it -v ~/baza-data:/data -p 127.0.0.1:11754:11754 -p 0.0.0.0:11753:11753 ewarehouse/bazad --enable-blockexplorer
```

For `docker-compose.yml` file please check following link

[gitlab.ekata.io/baza-foundation/baza-docker/-/blob/main/docker-compose.yml](https://gitlab.ekata.io/baza-foundation/baza-docker/-/blob/main/docker-compose.yml)

Have questions, connect to our discord server

[discord.gg/De92vhVD2m](https://discord.gg/De92vhVD2m)
