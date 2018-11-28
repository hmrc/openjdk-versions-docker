help: ## Print this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build-with-openjdk8: ## build project with sbt and openjdk 8
	env IMAGE=adoptopenjdk/openjdk8 ./docker-openjdk-x ./sbtw clean test

build-with-openjdk9: ## build project with sbt and openjdk 9
	env IMAGE=adoptopenjdk/openjdk9 ./docker-openjdk-x ./sbtw clean test

build-with-openjdk10: ## build project with sbt and openjdk 10
	env IMAGE=adoptopenjdk/openjdk10 ./docker-openjdk-x ./sbtw clean test

build-with-openjdk11: ## build project with sbt and openjdk 11
	env IMAGE=adoptopenjdk/openjdk11 ./docker-openjdk-x ./sbtw clean test

build-with-openjdk8-openj9: ## build project with sbt and openjdk 8 openj9
	env IMAGE=adoptopenjdk/openjdk8-openj9 ./docker-openjdk-x ./sbtw clean test

build-with-openjdk9-openj9: ## build project with sbt and openjdk 9 openj9
	env IMAGE=adoptopenjdk/openjdk9-openj9 ./docker-openjdk-x ./sbtw clean test

build-with-openjdk10-openj9: ## build project with sbt and openjdk 10 openj9
	env IMAGE=adoptopenjdk/openjdk10-openj9 ./docker-openjdk-x ./sbtw clean test

build-with-openjdk11-openj9: ## build project with sbt and openjdk 11 openj9
	env IMAGE=adoptopenjdk/openjdk11-openj9 ./docker-openjdk-x ./sbtw clean test

build-with-azul: ## build project with sbt and azul jvm
	env IMAGE=azul/zulu-openjdk-debian ./docker-openjdk-x apt install -y wget && ./sbtw clean test

build-with-corretto: ## build project with sbt and aws corretto jvm
	env IMAGE=aprasadh/corretto-8-docker ./docker-openjdk-x ./sbtw clean test

clean: ## delete root target directories
	sudo rm -fr target project/target
