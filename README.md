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

NOTE: If you are running the container with --user flag and using a host directory to mount volume. You should create the directory first with same user ownership or change ownership of the directory to avoid `failed to create directory error`.
