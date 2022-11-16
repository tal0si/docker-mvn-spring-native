# docker-mvn-spring-native Image

## Getting started

This Docker image was make to build SpringBoot natively.

To do so we use Java17, GraalVM, Maven.

Executables built this way are compatible with GCP AppEngine.

This dockerfile contains the flag --platform=linux/amd64 to be compatible with Mac M1 processors but it's not recomended the build process may freeze.

## Inside this image

OS: ubuntu:latest amd64

Maven: latest version

GraalVM: 22.3.0

Dependencies installed for GraalVM:
* zlib1g-dev
* gcc

Dependencies installed for global installation :
* wget
* tar

## To build this image

From the file that contains the dockerfile run :

````
docker build -t mvn-spring-native .
````

### Run bash in the container :

go to your SpringBoot Native project directory then run :

Mac / Linux:
```
docker run -it -v $(pwd):/app mvn-spring-native bash
```
Windows
```
docker run -it -v %DIR%:/app mvn-spring-native bash
```


### Build your project :
> /!\ For the moment you may facing problems building a project with a Mac M1 due to incompatibility with AMD emulation

Go the the app directory :

````
cd app
````

You're ready to build native with this command :
```
mvn -Pnative clean package
```

*you can add -DskipTests if you want to skips the tests*

Then your file is ready in the Target/ directory !