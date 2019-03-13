# FBCTF の構築手順

## 初期セットアップ

```bash
vagrant up
```

`admin`アカウントのパスワードがコンソールに出力されるのでメモすること。

その後、無限ループするようなので注意。

## 使い方

### 起動

```bash
vagrant up

vagrant ssh

# ~~~~~~~~

vagrant@fb:~$ sudo docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                            PORTS               NAMES
aaaaaaaaaaaa        fbctf-image         "./extra/service_s..."   12 minutes ago      Exited (137) About a minute ago                       fbctf
vagrant@fb:~$ sudo docker start fbctf
fbctf
vagrant@fb:~$ sudo docker ps -a
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                                      NAMES
aaaaaaaaaaaa        fbctf-image         "./extra/service_s..."   13 minutes ago      Up 6 seconds        0.0.0.0:80->80/tcp, 0.0.0.0:443->443/tcp   fbctf
```

### 停止

```bash
vagrant halt
```
