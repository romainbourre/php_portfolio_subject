# PHP - Portfolio learning project
---

The project goal is develop a personal portfolio to learn PHP without any frameworks and with minimal packages.

**Summary**

- [Instructions](#instructions)
	- [Requirements](#requirements)
	- [Architecture](#architecture)
	- [Helpful commands](#commands)
	- [Code Review](#code-review)
	
- [Subject](#subject)
	- [Step 1 : Display user information and portfolio from database](#step-1)

## <a name="instructions">Instructions<a/>

### <a name="requirements">Requirements</a>

Your project must be respect this requirement

- php >= 7.4
- composer >= 2.0.7

### <a name="architecture">Achitecture</a>

You don't have to modify the basic structure and add/remove files in project root:

```bash
data/data.sql
public/
src/
tests/
.gitignore
composer.json
composer.lock
Makefile
phpunit-watcher.yml
README.md
```


You can just edit `public/index.php` file and push your code on `src/` directory (it's your freedom space).

You must respect a [Code Review](#code-review) part

### <a name="commands">Helpful commands</a>

To make your code review, I will use the commands below, so your project must work with this different Makefile commands :

#### Install

To install different package needed, you can use :

```bash
make install
```

#### Tests

To start all tests suite of your project user :

```bash
make tests
```

To start tests watcher (your tests will auto-run each time file saved on `src/` and `tests/` directory) during development, you can use:

```bash
make tests-watch
```

#### Run

To start your local application server, you can use:

```bash
make run
```

To directly install and run application:

```bash
make install-run
``` 

To directly install, test and run application:

```bash
make tests-run
```

### <a name="code-review">Code review</a>

To launch a code review, I will type this command:

```bash
make code-review
```

This command will test and launch your application without development package.

So, this command must work without any failed.

## <a name="step-1">Step 1 : Display user information and portfolio from database</a>

To make this part, your should develop three web page:

- Presentation web page: to present yourself, with description, ...
- Experience and training web page to explain your experience and formations with dates
- Portfolio web page : this web page should present your project, that what you done, ...

All data must come from MySql database.

### Packages

You have limited package to build this part:

- twig/twig ^3.0
- slim/psr7 ^1.2

You don't have to use this packages but you must haven't add production packages, just development packages as you want (`composer install --dev <package>`).

### Database

Your database must be a MySql database. She must expose on `localhost:3308` with user `root` and password `root`.

I provide a dataset with file `data/data.sql`. You can edit this file and change data.

