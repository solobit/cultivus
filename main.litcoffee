
    #FILETYPE: .litcoffee (automagically resolved through .ext) 
    # ~> literate coffeescript ~> litcoffee[prose], litcoffee[code]




## Main routine

This file will expose the entire library and chain-wrap the whole
shebang in several folder structures as easily as possible.

It might be handy to create a list of `.styl` files found under *any*
folder, or atleast during development, since locations may change often
and I dont feel like tying myself to a constant, literal value since I'd
still have to change it by hand to reflect any new source folders for
stylus files. No thanks.


## Modularization

In Node.js, we have the bests of many worlds of programming practices
combined. One of these advantages is modularization of code. This file
is a module and it can reference other, custom or imported, modules.
Node.js will automatically search several options such as 'index.js'
files which can be used for entry points to further build the dependency
tree (of files).


### Built-in core modules

Node.js has a set of internal libraries evolved around mostly, non-
blocking, asynchronous I/O operations on disks and networks.

    path    = require "path"
    fs      = require "fs"

This asynchronous edge means that, if order of the results does not
matter, you may send many threads to walk a directory tree, greatly
improving speed. Your list processing won't be blocked, if you have
proper handling of such events, when say a file name would contain
certain illegal characters (and there are many many ways file names can
be used to exploit software).

    walkdir = require "walkdir"


### Helper functions

Helpers are, by nature, named functions (variables with a name declared
which have their value set to a function). In this case, log references
the method (function) `log` of the global, isomorphic, `console` Object.

    log           = console.log
    getShortName  = (file) -> path.relative(__dirname, file)


## Volatile data

> Non-volatile memory, nonvolatile memory, NVM or non-volatile storage
> is computer memory that can retain stored information even when not
> powered. Examples of non-volatile memory include read-only memory, flash
> memory, ferroelectric RAM (F-RAM), most types of magnetic computer
> storage devices (e.g. hard disks, floppy disks, and magnetic tape),
> optical discs, and early computer storage methods such as paper tape and
> punched cards.

> **Source:** <http://en.wikipedia.org/wiki/Non-volatile_memory>


### Module root variables

These variables sit at the root of this script. They are however, not
exposed to the outside world yet.

    isFileBuffer = true
    
    # Public:
    found   = []
    content = []
    result  = []
    paths   = []
    files   = []
    dirs    = []


## Stubs

Search input

    EXT     = ".styl"

Object with results

    hashResults = {}





## Walking the tree

Our strategy is simple when order of appearance does not matter, we can
use a asynchronous recursion of directories.


### Events

The `walkdir` application emits events on certain conditions. We can
listen to those to populate arrays of certain 'types' of files. since
directories are essentially also files, and we can have paths (absolute
and relative to one another)


#### Module global object

Create a variable by the name of `emitter` and set its value to a
function call to `walkdir` with the current directory `__dirname` as
argumented value for the function input parameter. This triggers the
chain of events where we walk everything under the current directory.

    emitter = walkdir __dirname, (file) ->
        paths.push path.relative __dirname, file


#### Event "directory" found

Populate an array by pushing a directory name, every time it finds one,
to the stack. These are relative paths to the location of this script.

    emitter.on "directory", (fileName, stat) ->
        dirs.push path.relative __dirname, fileName


#### Event "file" found

Do the same but then for file names.

    emitter.on "file", (file, stat) ->
        
        files.push getShortName(file)
        

Filter the file types if we can, early entrance.

        if isFileBuffer
            
            if path.extname(file) is EXT
            
                found.push getShortName(file)

                



#### Event "end" found

When the end has come, `this` also an event. You can use this to
say send stats in the end.

    emitter.on "end", ->

        console.log key for key in found

        ###
        for val, key in files # when path.extname(val) is ".styl"
            if path.extname(val) is EXT
                found.push val.replace(__dirname + "/", "")

        getContent()
        ###

[01]: <http://www.google.com>



    getContent = () ->

        bytes     = 0
        remaining = found.length
        log "Done reading, totalBytes: #{bytes}" if remaining is 0

        for value, index in found
            
            file = path.resolve value

            try

                fs.readFile file, 'utf-8', (error, data) ->

                    if data
                        console.log "Error: ", error if error
                        bytes += data.length
                        console.log "Successfully read '#{file}': "
                        remaining -= 1
                        console.log "Done reading files. bytes: " + bytes  if remaining is 0

            catch e
                throw e
                console.log e
   
    #content = (fs.readFileSync v, 'utf-8') if path.extname(v) is ".styl"



