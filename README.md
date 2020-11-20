# PHP - Portfolio learning project
---

This project goal is to develop a personal portfolio in order to learn PHP without any frameworks and with minimal packages.

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

Your project must respect the following requirements:

- php >= 7.4
- composer >= 2.0.7

### <a name="architecture">Achitecture</a>

You **should not modify** any of the following files and folders:

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


You **must only edit** `public/index.php` file and write your code in the `src/` directory (it is your freedom space).

You must respect a [Code Review](#code-review) part.

### <a name="commands">Helpful commands</a>

To make your code review, I will use the commands below, so your project must work with this different Makefile commands :

#### Install

To install the various required packages, you must use :

```bash
make install
```

#### Tests

To run all your tests :

```bash
make tests
```

To start tests watcher (which will run your tests every time you save a file in the `src/` or `tests/` directories) during development, you can use:

```bash
make tests-watch
```

#### Run

To start your local application server, you must use:

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

So, **this command must work without any fail**.

## <a name="step-1">Step 1 : Display user information and portfolio from database</a>

To make this part, your should develop three web pages:

- Presentation web page: to present yourself, with your description.
- Experience and training web page: to explain your professional experiences and formations with dates.
- Portfolio web page: to present your projects and realisations.

All data must come from a MySql database.

### Packages

You have limited package to build this part:

- twig/twig ^3.0
- slim/psr7 ^1.2

You don't have to use those packages but **you must not add any production packages**. If you need packages, you only can add them as development packages (`composer install --dev <package>`).

**Warning:** if your application uses development packages to run, then they will not be available during code review!

### Database

Your database must be a MySql database. It must be exposed on `localhost:3308` with user `root` and password `root`.

I provide a dataset with file `data/data.sql`. You can edit this file and change data.

### Design

On this step, the design doesn't matter. Just use Bootstrap CDN.