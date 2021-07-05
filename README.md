# apt-mirror
apt-mirror server for ubuntu

# run
```
docker run --name apt-mirror -p 8083:80 -v /home/mirror:/var/spool/apt-mirror/mirror/ gdyshi/apt-mirror
```

# 更新源

```
docker exec -it apt-mirror bash
# 按需修改 /etc/apt/mirror.list
apt-mirror
```
