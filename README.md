% OpenJDK versions with docker

# Overview

Build a scala based project with different JVM implementations:

- [openjdk](https://openjdk.java.net/) 8, 9, 10 and 11
- [openj9](http://www.eclipse.org/openj9/) (8 to 11)
- [azul](https://www.azul.com/) 8
- [aws corretto](https://aws.amazon.com/corretto/)

### License

This code is open source software licensed under the [Apache 2.0 License]("http://www.apache.org/licenses/LICENSE-2.0.html").

# Requirements

- [docker](https://www.docker.com/)
- [gnu make](https://www.gnu.org/software/make/)

# Usage

A simple scala project is provided for testing, it has been created from the basic scala template:

``` bash
sbt new scala/scala-seed.g8
```

but you can replace it by any other scala project you are interested in.

The following instructions expect a sbt project in the root level of this directory.

``` bash
make help

// test with openjdk 8
make build-with-openjdk8
```

For debugging purposes you may want to ssh into the container:

``` bash
env IMAGE=adoptopenjdk/openjdk11-openj9 ./docker-openjdk-x sh
# java -version
```

