
# Cultivus Terminal Program

In order for us to run a show in the terminal, we need a program. Let
there be a very nifty program called **commander** ((@)).

    program = require 'commander'
    program = require 'winston'

We can use a few shortcuts and other tools:

    #console.log = (args...) -> console.console.log args...

Also, we'll need to define a few variables on top, might as well write
the whole command hooks here:

    runSetup = () ->

Use space after the string prompt message `Username:[space]` to enable
multiline.

        program
            .prompt('Username: '    , (name)        -> console.log('hi %s', name))
            .prompt('Config file: ' , (filename)    -> console.log('Load %s', filename))
            .prompt('Theme: '       , (name)        -> console.log('hi %s', name))




    program
        .version('0.0.1')
        .option('-C, --chdir <path>', 'change the working directory')
        .option('-c, --config <path>', 'set config path. defaults to ./deploy.conf')
        .option('-T, --no-tests', 'ignore test hook')

    program
        .command('setup')
        .description('run remote setup commands')
        .action(() -> runSetup())
       
    program
        .command('exec <cmd>')
        .description('run the given remote command')
        .action((cmd) -> console.log('exec "%s"', cmd))

    program
        .command('*')
        .description('deploy the given env')
        .action((env) -> console.log("deploying %s", env))

    program.parse process.argv

