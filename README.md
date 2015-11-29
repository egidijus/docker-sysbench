# DOCKER-SYSBENCH

clone it:
```
git clone https://github.com/egidijus/docker-sysbench.git
```

build it
```
cd docker-sysbench
docker build -t sysbench .
```

run it
```
docker run -it --rm sysbench io 100M
```