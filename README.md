# Summary
This project serves as a starting point for front end projects, and uses Grunt to setup a simple server, and support common preprocessors (SASS, CoffeeScript, Haml (todo))

# Setup
## Node

In directory initialize node app and follow prompt
    
    npm init

Install grunt
    
    npm install -g grunt-cli

Install grunt conntect
 
    npm install grunt-contrib-connect --save-dev

Install grunt watch
 
    npm install grunt-contrib-watch --save-dev

Install grunt sass
 
    npm install grunt-contrib-sass --save-dev

Install grunt coffee
 
    npm install grunt-contrib-coffee --save-dev


## Ruby

To get source maps to work, only certain edge SASS gems will work. I recommend the following

    gem install sass -v '3.3.0.rc2'


# Usage
Run default task: `grunt`. This will start a local server on port 8000, compile css/js assets, and start watch task for live reload.


# Rerferences
- [Node.js](http://nodejs.org/)
- [Grunt](http://gruntjs.com/)
- [grunt-contrib-connect](https://github.com/gruntjs/grunt-contrib-connect)
- [grunt-contrib-watch](https://github.com/gruntjs/grunt-contrib-watch)
- [grunt-contrib-sass](https://github.com/gruntjs/grunt-contrib-sass)
- [grunt-contrib-coffee](https://github.com/gruntjs/grunt-contrib-coffee)
