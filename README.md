## build docker volume
```
docker volume create mc-server0
```

## build docker image
```
docker build . -t stu-mc
```

## run container
```
docker run -it -p 25565:25565 -v mc-server0:/mcdata -v ./hello-stu/out/artifacts/hello_stu_jar/hello-stu.jar:/runthis.jar:ro stu-mc
```