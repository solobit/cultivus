
vim: :sw=4:sts=4:ts=4:ai:spell:

# Cultivus

## Dependencies

### Native core modules

First we import a few of the core modules built-in with Node.js, that allow us
to work with the file system I/O on this machine.

This following line of code will create (instances) of the `child_process`, a
method to create operating system processes under this parent node.js process,
which you already authorized to run by executing this current file. Know that
already we have certain variables and objects available to us.

    log = console.log
    log "Your terminal is #{process.env.TERM} and locale is #{process.env.LANG}"
    log "Good. You have English as your system language" if process.env.LANG = "en_US.UTF-8"

Some really simple examples of early available information. It's always smart
to see which you have available................

    {exec,spawn} = require 'child_process'



