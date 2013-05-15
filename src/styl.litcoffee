



https://github.com/geddski/stylus/commit/7763703ede64234ee9527dc573c9245a70c0dc64

Use the same variables in Stylus as in JSON/CSON|JS/CS

    stylus      = require 'stylus'
    commander   = require 'commander'
    cson        = require 'cson'
    fs          = require 'fs'

    DIR_CULTIVUS = __dirname + "/../site/documenten/stijlen/lib/cultivus/"

    str = fs.readFileSync DIR_CULTIVUS + 'index.styl', 'utf-8'


# Render

Gebruik de functie `render` (3 parameters) voor het transformeren van
een string `str` van stylus pre-processor taal als eerste argument

    stylus.render str, { 

Vervolgens het tweede argument: een object met opties, in dit geval
minimaal de bestandsnaam voor uitvoer naar het door browsers 'native'
leesbare `.css` as stylesheet.

        filename:   'huisstijl.css'

We kunnen standaard paden opgeven voor stylus om te ontdekken.

        paths:      [ DIR_CULTIVUS, DIR_CULTIVUS + '/i18n' ]

Tot slot een closure in de vorm van een functie, met als eerste argument
een object voor foutafhandeling `err` en `css` voor de callback van deze
functie in de ReadEvalPrint loop.

     }, (err, css) ->

Op het vroegst mogelijke moment een fout teruggeven.

        console.log err if err
        console.log css
        #console.log stylus
        process.exit 1


