PORT = 8080

# This make command will remove all useless file and install packages
install:
	composer install > /dev/null

# This command will launch your application
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

# This command clean your repository
clean:
	rm -rf vendor/
	rm -rf var/