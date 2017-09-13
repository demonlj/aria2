# aria2
aria2 without webui
---
### Introduction

1. It's modified from [xujinkai/aria2-with-webui](https://hub.docker.com/r/xujinkai/aria2-with-webui/).
2. I do not need webui. So, this is just a simple aria2 without webui.
3. Size only 18MB.
4. Edit config file out of the image.  

### Install

1. Make sure ```docker``` installed already.

2. Pull image from [demonlj/aria2](https://hub.docker.com/r/demonlj/aria2/) ```docker pull demonlj/aria2```

3. Create container

   ```shell
   sudo docker run -d —name [CONTAINER_NAME] \
   				-p 6800:6800 demonlj/aria2
   ```

4. **OPTION 1 :** Secure option

   ```shell
   sudo docker run -d —name [CONTAINER_NAME] \
   				-e SECRET=[YOUR_SECRET_CODE] \
   				-p 6800:6800 demonlj/aria2
   ```

5. **OPTION 2 :** Save **conf** to host directory

   ```shell
   sudo docker run -d —name [CONTAINER_NAME] \
   				-v [HOST_CONF_PATH]:/conf \
   				-p 6800:6800 demonlj/aria2
   ```

6. **OPTION 3 :** Save **data** to host directory

   ```shell
   sudo docker run -d —name [CONTAINER_NAME] \
   				-v [HOST_DATA_PATH]:/data \
   				-p 6800:6800 demonlj/aria2
   ```

7. Connect rpc using ```http://[SERVER-IP]:6800```

### Build from source:  

1. `git clone https://github.com/demonlj/aria2.git`
2. `sudo docker build -f Dockerfile -t demonlj/aria2 .`  

### References:  

https://hub.docker.com/r/xujinkai/aria2-with-webui/

https://github.com/aria2/aria2  

https://github.com/ziahamza/webui-aria2  

https://github.com/acgotaku/BaiduExporter  

