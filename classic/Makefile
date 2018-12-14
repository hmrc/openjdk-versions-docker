help: ## Print this help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

# OK
# sa-core
# ct-core
# agent-reference
# euvat-core
# euvat-filing
serviceDir = euvat-filing
 
setup: ## setup scala service to test
	git clone git@github.com:hmrc/$(serviceDir).git

build: ## build project with sbt and openjdk 8
	cd $(serviceDir) && \
	mvn clean test
