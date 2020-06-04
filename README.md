# Vagrantup

Bash script that will create a Vagrant file.

``` bash
./vagrantup cms url
```

## Dependencies

* Virtualbox
* Vagrant

## Options:

* `lamp`      Will setup a lamp server.
* `wordpress` Will setup a lamp server and download/install wordpress.

Example:

``` bash
./vagrantup wordpress www.example.com
```

This will create a Vagrant file for Ubuntu Xenial64 with: 

* Apache2
* MySQL Server
* MySQL Client
* php7.0
* Wordpress Latest (sv_SE)

It will also add a VirtualHost for the submited url.

## Versioning

This project uses Semantic versioning

* https://semver.org/
