PORT = 8080
DOCKER_MYSQL_CONTAINER = php-portfolio-project
DOCKER_MYSQL_CONTAINER_PORT = 3308

# This make command will install packages
install:
	composer install > /dev/null

# This make command will install packages without development package
install-prod:
	composer install --no-dev > /dev/null

# This command will launch your local application server
run:
	php -S localhost:${PORT} -t public/

# This command will run all tests suite
tests: install
	./vendor/bin/phpunit tests

# This command launch phpunit-watcher to execute tests suite each time file saved
tests-watcher: install
	./vendor/bin/phpunit-watcher watch

# This command combine install and run command
install-run: install run

# This command combine install-prod and run command
install-run-prod: install-prod run

# This command will install required package, start tests suite and run your local application server
tests-run: tests run

# This command init a MySql docker container
init-docker-db:
	docker run --name ${DOCKER_MYSQL_CONTAINER} -p ${DOCKER_MYSQL_CONTAINER_PORT}:3306 -v `pwd`/data/data.sql:/docker-entrypoint-initdb.d/data.sql -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7 &> /dev/null || true

# This command remove MySql docker container
clean-docker-db:
	docker rm --force ${DOCKER_MYSQL_CONTAINER} &> /dev/null || true

# This command will install, test, clean then install and run on production environment
code-review: clean tests clean init-docker-db install-run-prod

# This command clean your repository and docker container about db
clean: clean-docker-db
	rm -rf vendor/
	rm -rf var/