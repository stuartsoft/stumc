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
docker run -it -d -p 25565:25565 -v mc-server0:/mcdata -v ./hello-stu/out/artifacts/hello_stu_jar/hello-stu.jar:/runthis.jar:ro stu-mc
```

## just view logs
```
docker logs CONTINER-IDENTIFIER -f
```

## interact with jar
```
docker attach CONTAINER-IDENTIFIER
```

## Note on extra arguments:
You can add additional arguments for your jar like so:
docker run -it -d -p 25565:25565 -v mc-server0:/mcdata -v ./hello-stu/out/artifacts/hello_stu_jar/hello-stu.jar:/runthis.jar:ro stu-mc argumentA argumentB