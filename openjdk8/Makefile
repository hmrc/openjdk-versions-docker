help: ## Print this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

# OK
# http-core
# fset-faststream
# pbik-frontend
# help-to-save-stub

# tcs-frontend fails to download dependency
# voa-property-linking mongo failing tests
serviceDir = fraud-prevention
 
clone: ## clone scala service to test
	git clone git@github.com:hmrc/$(serviceDir).git

setup: ## copy sbt wrapper to cloned scala service
	cp sbtw $(serviceDir)/

build-with-docker: ## build project with sbt and openjdk 8 in docker container
	cd $(serviceDir) && \
	.././docker-openjdk-8 ./sbtw clean test 'eval System.getProperty("java.home")' 'eval System.getProperty("java.version")'

build: ## build project with sbt and openjdk 8 locally installed
	cd $(serviceDir) && \
	sbt clean test 'eval System.getProperty("java.home")' 'eval System.getProperty("java.version")'

clean: ## delete root target directories
	sudo rm -fr target project/target
