# Overview

Set scala service to be tested with the Makefile *service* variable. 

An openjdk8 docker image with git is used, so our sbt versioning plugins that rely on git work.

# Requirements

- docker
- gnu make

# Usage

Just one interesting task at the moment:

``` sh
make build
```
