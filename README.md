Myapp [![Build Status](https://travis-ci.org/CMarzin/H4-combiNb.svg?branch=master)](https://travis-ci.org/CMarzin/H4-combiNb)
================

#
[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.4.2
- Rails 5.1.4

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

First of all you need to install all the gem, in your directory type :
```
gem install
```
then 
```
bundler install
```

if you have some front dependencies run 
```
yarn
```
In order to run the application you need to have postgres

If you don't have postgres you can install it with this command ( on Mac OSX ) :
```
brew install postgresql
```
Now you can enter the bdd
```
psql postgres
```
If you don't have a role without superadmin 
```
CREATE ROLE username WITH LOGIN PASSWORD 'password';
```
Give you to the role the right to create db 
```
ALTER ROLE username CREATEDB; 
```
you need to quit the db and login with you new role
```
\d
```
Now you do
```
psql postgres -U username
```
and finally
```
CREATE DATABASE super_awesome_application;
```

Learn more about [Installing Postgres](https://www.codementor.io/devops/tutorial/getting-started-postgresql-server-mac-osx)
Learn more about [Postgres](https://www.postgresql.org).

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
