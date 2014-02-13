# Summary
This project serves as a starting point for front end projects, and uses Grunt to setup a simple server, and support common preprocessors (SASS, CoffeeScript, Haml)

# Setup
TODO
## Node

- initialize node app and follow prompt
    npm init

- install grunt
    npm install grunt --save-dev

- install grunt conntect
    npm install grunt-contrib-connect --save-dev

- install grunt watch
    npm install grunt-contrib-watch --save-dev

- install grunt sass*


- install grunt coffee
    npm install grunt-contrib-coffee --save-dev

- install grunt haml**

## Ruby

To get source maps to work, only certain edge SASS gems will work. I recommend the following

    gem install sass -v '3.3.0.rc2'


# Usage
- To start watcher: `grunt watch`
- To start the server: `grunt connect:keepalive`


# Rerferences 
- https://github.com/gruntjs/grunt-contrib-connect
- https://github.com/gruntjs/grunt-contrib-watch
