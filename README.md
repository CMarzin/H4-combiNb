# README

[![Build Status](https://travis-ci.org/CMarzin/ruby-h4.svg?branch=master)](https://travis-ci.org/CMarzin/H4-combiNb)

This README would normally document whatever steps are necessary to get the
application up and running.

We use Git Flow :

- https://danielkummer.github.io/git-flow-cheatsheet/

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

## Deployment instructions
___
Before anything make sure you have installed [Heroku cli](https://devcenter.heroku.com/articles/heroku-cli) and [Travis cli](https://github.com/travis-ci/travis.rb#installation)

If you want to look at the error if the build failed you need to create an account on [Travis](https://travis-ci.org)
 - Duplicate the travis.example.yml
 - Rename it in travis.yml
 - execute this command in the terminal to get a token from heroku (in the root of the repo)
  ```sh
  travis encrypt $(heroku auth:token) --add deploy.api_key
  ```
 - Thats it ! Now every time you push on master if the build is passing the code will be deployed