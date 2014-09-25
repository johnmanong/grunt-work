# Summary
This project serves as a starting point for front end projects, and uses Grunt to setup a simple server, and support common preprocessors (SASS, CoffeeScript, Haml (todo))

# Setup
## Node

Install grunt
    
    npm install -g grunt-cli

Install dev modules
 
    npm install


## Ruby

To get source maps to work, only certain edge SASS gems will work. I recommend the following

    gem install sass -v '3.3.3'


# Usage
Run default task: `grunt`. This will start a local server on port 8000, compile css/js assets, and start watch task for live reload.

## optional

### Use Takana
[Takana](http://usetakana.com/) live reloads scss/css on change, not save, which can make dev even faster. 

#### Setup
##### Install Module globally

    npm install -g takana
    
##### Add snippet to head

    <script type="text/javascript" src="http://localhost:48626/takana.js"></script>
    
##### Start process (parallel with grunt)
    
    takana app/



# Rerferences
- [Node.js](http://nodejs.org/)
- [Grunt](http://gruntjs.com/)
- [grunt-contrib-connect](https://github.com/gruntjs/grunt-contrib-connect)
- [grunt-contrib-watch](https://github.com/gruntjs/grunt-contrib-watch)
- [grunt-contrib-sass](https://github.com/gruntjs/grunt-contrib-sass)
- [grunt-contrib-coffee](https://github.com/gruntjs/grunt-contrib-coffee)
- [takana](https://github.com/mechio/takana)
