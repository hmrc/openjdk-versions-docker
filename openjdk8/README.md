# Overview

Set scala service to be tested with the Makefile *service* variable. 

An openjdk8 docker image with git is used, so our sbt versioning plugins that rely on git work.

# Requirements

- gnu make

and

- gnu make
- openjdk 8
- sbt

or

- docker

# Usage

Run `help` task to list available tasks and their description.

If you meet the local requirements and prefer to save the delay
introduced by docker

``` sh
make clone build
```

If you prefer the containerised way go for:

``` sh
make clone build-with-docker
```
