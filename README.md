
https://github.com/pdaoust/stylus-helpers


appearance (grid, position, colors)
controls (buttons, forms)
staging (system chain)


/*
 core
    \- appearance
    \- controls
    \- staging -
                I@ preamble
                           - typesetting
                           - ../../themes
                           - ../../i18n
                I@ ../appearance
                I@ ../controls
                
    
    \- typesetting


my-children(parent, children)
    for child, index in children
        {parent}:nth-child({index})
            height: 10px * index

my-children('table tr', (1 2 3 4))

*/

# Essential information

Or **'You may think you know...'** section that is of importance when working with
this software. For simplicity. we shall say that this work is made of a single
piece of upstream software: 'Stylus'. In reality, of course, many many people
contributed to these works. See [this section] for credits.

## The problems

There are many ways someone can learn the fine art of crafting a good CSS file,
 but much information on the web is incomplete, incorrect, out-dated, irrelevant
 or just written poorly. Official 'standards' are either lacking, not implemented
 (fully or incorrect, interpreted wrongfully or just 'different') and many so
 called 'shims' and many 'fall-back' scripts exist to help negate some of these
 negative side effects that go with the above here illustrated problems as means
 of 'coping' with them. These can come in the form of language built-in fault
 tolerance (say omitting quotes for attributes in HTML, or not <img> </img> like
 stuff), others are made by the community. Boilerplates and global resets are
 used to enforce a uniform baseline across different browsers/platforms.
 Vendor prefixes exist. 
`((+))`

Many of these short-comings are temporary of nature and duration. As new
 technologies emerge, older becomes obsolete and even forgotten and backwards
 compatibility will not continue forever. These solutions are 'stale' although
 they may take average to long times before they eventually go out of use.
`((+))`

Form, notation of special meta-information or as a form of marking paragraphs
lazily: ``((S))``

Where `S` is one or multiple glyphs (signs, characters) which represent a
symbol, enclosed in double opening `((` and `))`closing or even triple `(((`
parentheses `)))`. This is fast with color for most editors using GFM or
Markdown highlighting in color and allows for easy extraction of rather
unambiguously used symbols throughout a folder using regular expressions
(Vim, Sublime python, any other like sed, awk or grep you may use).

They can be used together or stand alone and are often obvious in their use as
symbols to remember.
