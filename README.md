## for testing, startup server to host test jar
```
cd mini-blaz
dotnet run
```

## obtain jar file
```
wget localhost:5140/hello-stu.jar --output-document=prog.jar
```


## build docker image
```
docker build . -t stu-mc --build-arg jar=./prog.jar
```

## build docker volume
```
docker volume create mc-server00
```

## run container
```
docker run -i -t -d -p 25565:25565 -v mc-server00:/mcdata stu-mc
```

## attach terminal
```
docker attach xyz..
```