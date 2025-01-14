https://nacos.io/zh-cn/docs/quick-start-docker.html


docker-compose -f example/standalone-derby.yaml up
docker-compose -f example/standalone-mysql-5.7.yaml up
docker-compose -f example/standalone-mysql-8.yaml up
docker-compose -f example/cluster-hostname.yaml up

docker network create nacos

docker-compose -f nacos-standalone-mysql-5.7.yaml up -d
docker-compose -f nacos-standalone-mysql-5.7.yaml down

http://10.2.100.2:8848/nacos
nacos
nacos

docker nacos
docker compose redis
docker elasticsearch
docker compose elasticsearch

docker network create roncoo
docker-compose up roncoo-redis
docker-compose up -d
docker-compose up -d roncoo-mysql57
docker-compose up -d roncoo-redis
docker-compose down
docker-compose build

ERROR 2026 (HY000): SSL connection error: error:1425F102:SSL routines:ssl_choose_client_version:unsupported protocol


create database education_course default character set utf8mb4 collate utf8mb4_unicode_ci;
create database education_system default character set utf8mb4 collate utf8mb4_unicode_ci;
create database education_user default character set utf8mb4 collate utf8mb4_unicode_ci;
create user 'roncoo'@'%' identified by 'roncoo';
grant all privileges on education_course.* to 'roncoo'@'%';
grant all privileges on education_system.* to 'roncoo'@'%';
grant all privileges on education_user.* to 'roncoo'@'%';
flush privileges;
use education_course;

redis-cli
auth roncoo

https://edu-api.7otech.com/

13800000000
123456
13800138001 讲师
123qwe
13800138002
123456
13800138003
123456

13800000000
123456

18800000000
123456

前端账号密码
普 通 用 户: 13800138002 密码：123456

讲 师 用 户: 13800138001 密码：123qwe

管理后台账号密码
管 理 员 ：13800000000 密码：123456

超 级 管 理 员 ：18800000000 密码：123456（2.0.0-SNAPSHOT版本）

超 级 管 理 员 ：18800000000 密码：asdanEn.132reFwf（1.0.0版本）


保利威视
https://www.polyv.net/

useid
secretkey
readtoken
writetoken

七牛

阿里云

ossUrl
ossBucket
Bucket

https://www.cnblogs.com/niceyoo/p/13511082.html
https://cloud.tencent.com/developer/article/1667403

mkdir -p /home/fastdfs/tracker/data
mkdir -p /home/fastdfs/storage/data
mkdir -p /home/fastdfs/storage/path

docker run -id --name tracker \
-p 22122:22122 \
--restart=always --net host \
-v /home/fastdfs/tracker/data:/fastdfs/tracker/data \
season/fastdfs:1.2 tracker

-d：让容器在后台运行
-p：指定容器内部使用的网络端口映射到我们使用的主机上
--name：指定容器创建的名称
-v：容器跟宿主机之间的挂载目录

docker exec -it tracker bash

docker run -id --name storage \
--restart=always --net host \
-v /home/fastdfs/storage/data:/fastdfs/store_path \
-e TRACKER_SERVER="10.2.100.2:22122" \
season/fastdfs:1.2 storage

docker cp tracker:/etc/fdfs/client.conf /home/fastdfs/
docker cp /home/fastdfs/client.conf tracker:/etc/fdfs/client.conf

mkdir -p /home/fastdfs/nginx/
docker cp storage:/etc/nginx/conf/nginx.conf /home/fastdfs/nginx/

location / {
    root /fastdfs/store_path/data;
    ngx_fastdfs_module;
}

docker run -id --name fastdfs_nginx \
--restart=always \
-v /home/fastdfs/storage/data:/fastdfs/store_path \
-v /home/fastdfs/nginx/nginx.conf:/etc/nginx/conf/nginx.conf \
-p 8888:80 \
-e TRACKER_SERVER=10.2.100.2:22122 \
season/fastdfs:1.2 nginx

curl -i http://127.0.0.1:8888/group1/M00/00/00/CgJkAmDJkXeAf-kzAAAACBfWGpM977.txt

docker search fastdfs
NAME                           DESCRIPTION                                     STARS               OFFICIAL            AUTOMATED
season/fastdfs                 FastDFS                                         78                                      
ygqygq2/fastdfs-nginx          整合了nginx的fastdfs                                27                                      [OK]
luhuiguo/fastdfs               FastDFS is an open source high performance d…   25                                      [OK]
morunchang/fastdfs             A FastDFS image                                 20                                      
qbanxiaoli/fastdfs             FastDFS+FastDHT(单机+集群版)                         12                                      [OK]
delron/fastdfs                                                                 12                                      
moocu/fastdfs                  fastdfs5.11                                     9                                       
ecarpo/fastdfs-storage                                                         4                                       
lionheart/fastdfs-tracker      just have a try on autobuilded -_-#             3                                       [OK]
ecarpo/fastdfs                                                                 3                                       
imlzw/fastdfs-tracker          fastdfs的tracker服务                               3                                       [OK]
manuku/fastdfs-fastdht         fastdfs fastdht                                 2                                       [OK]
imlzw/fastdfs-storage-dht      fastdfs的storage服务,并且集成了fastdht的服务…              2                                       [OK]
manuku/fastdfs-tracker         fastdfs tracker                                 1                                       [OK]
leaon/fastdfs                  fastdfs                                         1                                       
basemall/fastdfs-nginx         fastdfs with nginx                              1                                       [OK]
lionheart/fastdfs_tracker      fastdfs file system‘s tracker node              1                                       
appcrash/fastdfs_nginx         fastdfs with nginx                              1                                       
evan1120/fastdfs_tracker       The fastdfs tracker docker image, only conta…   1                                       [OK]
evan1120/fastdfs_storage       The fastdfs storage image                       1                                       [OK]
tsl0922/fastdfs                FastDFS is an open source high performance d…   0                                       [OK]
manuku/fastdfs-storage-dht     fastdfs storage dht                             0                                       [OK]
manuku/fastdfs-storage-proxy   fastdfs storage proxy                           0                                       [OK]
mypjb/fastdfs                  this is a fastdfs docker project                0                                       [OK]
lovetutu/fastdfs_fastdht       fastdfs_fastdht_docker                          0