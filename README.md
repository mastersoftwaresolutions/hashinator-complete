# Hashinator

Check out the demo at [https://hashinator.herokuapp.com](https://hashinator.herokuapp.com)

An Elance testing framework, originally forked from [LuckyLadyGame's
Coffee-Express](https://github.com/luckyladygames/coffee-express) framework.

## Demonstration

* Implement a SHA256 AJAX endpoint
* Implement an scrypt AJAX endpoint
* Integrate output into frontend code 
* Change the dl/dd/dt tags to a table

## Extra Points

* implement CSS to make the site look nicer

## about coffee-express 

This is how I like to lay out my Express + CoffeeScript projects. It uses CoffeeScript 
instead of JavaScript and it has bits to make the coffeescript compiling as transparent 
and frictionless as possible. 

For backend development, instead of `node server.js` we can run `coffee server.coffee`. 
All the node.js bits inside still work the same but we do not need to compile the 
coffeescript first. 

For frontend development, the express middleware, [connect-coffee-script](https://github.com/wdavidw/node-connect-coffee-script) that compile and cache CoffeeScript just in time. The same goes for the stylus css generator. Just write your code in CoffeeScript or Stylus and ask for them as .js or .css files. 

## Application Layout

    app/                    <- the application
        libs/               <- put misc. libraries in here 
        routes/             <- organize express routes in here
        views/              <- jade templates ...
        public/             <- public files (or ment to be public)
            src/            <- coffeescript/stylus source files
            generated/      <- generated coffeescript files ...
            static/         <- static, public files (.png, .js, .css, etc.)
        index.coffee        <- main entry point into the Application
    docs/                   <- generated documentation
    test/                   <- tests go in here
    server.coffee           <- starts the web server(s)
    Cakefile                <- App. specific tasks
    package.json            <- mmm. npm package definitions


## LICENSE

MIT
