help: ## Print this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

serviceDir = fset-faststream
 
setup: ## setup scala service to test
	git clone git@github.com:hmrc/$(serviceDir).git && cp sbtw $(serviceDir)/

build: setup ## build project with sbt and openjdk 8
	cd $(serviceDir) && \
	.././docker-openjdk-8 ./sbtw clean test 'eval System.getProperty("java.home")' 'eval System.getProperty("java.version")'

clean: ## delete root target directories
	sudo rm -fr target project/target
