
## Notation

Historicly, in programming: `()` := subshell, procedure, function (call)
argument encapsulation, parameter enclosing, encapsulation, lists,
enumaration, class constructor methods. Lisp-languages.

In texts := parentheses enclose information that is essential enough to
remain in the text, storyline, attributes to it but not be a part of it.
This may also be for editorial purposes, usually comments or remarks
from the author or reviewer of texts.

Hence: txt+code=(()) meta character for inline code. `()` once to
execute a (fictional) anonymous function and second to `()` escape it
once more. This symbol has such a rare occurance (`\(\(.*\)\)` in some
regex) that we can safely tie it further to a limited set of signs to
form the symbols.

Add the fact that we have split our literate program in 2 columns
(text/source) or in a row of 2 columns (prose/code or code/prose up/down
reverse) and only scan markdown text (prose).

`((?))` Resolve issues around lookahead or lookbehind

### Internal

All documents published by Solobit will contain some form of specialized
markup. This is a simple system constantly evolving so please be
patient.

More or less definitive:

`.` symbol to be replaced in case of encapsulation

* `((?))` or `((Q))` Questions
* `((=?=))` or `((=Q= :: ))` Essential (structural) questions
* `((@))` Reference material

Lookbehind:

Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
`Nam cursus((@))`. Morbi ut mi. Nullam enim leo, egestas id,
condimentum at, laoreet mattis, massa.

`Nam cursus` is the terms resolved on a meta level
~> added to list ~> try to resolve from custom ~> try google or give-up

Lookahead:

Lorem `((@))ipsum dolor sit amet`, consectetuer adipiscing elit. Nam cursus. Morbi ut
mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa.

The backtick "\`" starts listening `@cs[TAB]` will expand [CoffeeScript][cs] 

Lorem `~>ipsum` dolor sit amet, `~cs` consectetuer adipiscing elit. Nam cursus. Morbi ut
mi. Nullam enim leo, egestas id, condimentum at, laoreet mattis, massa.

Resolve:

* `(((?)))` or `(((Q)))` Important questions

* `((T))` Time (use % for tasks with completion)
* `((!))`
* `((!!!))` Essential, priority
* `((10))` Data Type
* `((io))` Input / output and performance related
* `((On))` Complexity http://en.wikipedia.org/wiki/Time_complexity
* `((V))` Vision, view (point), visualize, Illustrate, sketch a situation
* `((X))` Example
* `((!?))` Needed
* `((C))` Conceptual
* `((A))` Abstract
* `((^))` Meta
* `((^V))` Better explain an abstract concept
* `((<))` Decrease (the volume of text, code ~ ((R)), ((A)) )
* `((>))` Increase volume of text, code etc.
* `((...))` ??? Marking to resolve... ???
* `((B))` Basic building block
* `((F))` Fact or form?
* `((*))` Idea, suggestion, feature, moment of insight ~> formalize
* `((:.))` Proof
* `((a/b))` A/B Test this
* `((a/s))` Asynchronous
* `((R))` Refactoring or review needed
* `((H))` Help needed (explicit)
* `((!))` Explicit, exclamate, elaborate further
* `((U))` Update / upgrade this
* `((+))` Additional needed
* `((%))` Task (add numbers for amount completed and optionally status)
e.g. `(((P50%T20%)))` : Preparation at 50%, of total 20%
* `(($))` Business idea, model  / monetize or Special cases
* `((i))` Numbering
* `((:))` Summarize, enumerate this, create a list, conclusion
* `((W))` Warning, watch this, reverse M for monitor this or welcome suggestions
* `((@))` Reference, Url, source
* `((m))` Metrics, measure this
* `((e))` Example
* `(([ ]))` Item on/off enable/disable
* `(([x]))` Item completed



The default, and fall-back language is en_US.UTF-8
Since most people have a localized operating system, we can already
make a fair estimate of their language with process.env.LANG

DEFAULT: Localize = yes
Exception is people like me. I'm dutch but my system is English. Too
bad since most of our users will have it correctly set: this becomes
default. But since some people are already English native speaking,
no harm done to that crowd.

So: any locale other than 'en' will be translated unless this is
disabled.
NOT EVERYTHING: base functions, local scope (function) variables,
protected (_stub) with underscore etc. Those DO NOT. Nor do pseudo-
classes or elements.
WHAT DOES: class names, constants/variables string values, aliases
for function names can be done but since those Stylus functions won't
be usable in the HTML, probably just don't need that.
So a good guideline is everything that appears in the HTML
(identifiers # and classes . will be translated)
Class names can be internationalized.

?
$a  = 1      // globally localized names that can be set
$a ?= 2      // globally localized names that can't be set
$a := 2      // globally localized names that can't be set
HTML: elements (all types of nodes), classes (groups), identifiers (unique id)
CSS: above + children, first/last, nth-child etc
Stylus: parent selectors
Conversion notes

* roots-css had a notation of prefix plus `+` in the examples that didnt make any sense, removed it
* going for a much cleaner, obvious and consistent notation figured out here

   ____ ( `/*` ) comment block opening symbol
  /
 /
`
/* (type: title)    <<-- 1st: type in Capital Letters e.g. 'Mixin', next colons `:` a space ` ` and the Full Name
 * (----------- )   <<-- 2nd: 70 dashes (total 73)
 * 
 * (Lorem ipsum..)  <<-- 4th: description may span several lines max 73 cols
 * 
 * (Examples:)      <<-- nth: description spans several lines max 73 cols
 * 
 * (\t)  mix()      <<-- root (base applicative) level applied
 * (\t)  mix: 1em   <<-- applied on n
 

and consecutive lines

 * The existential operator of `?=` allows us to define variables in
 * scripts, up-front (and in any language that compiles to JS really)
 * and have those variables set from within style sheets such as this
 * one.
 *
 * Some examples
 *
 *     rootdir     ?= '../../'
 *     language    ?= 'en|nl'
 *     img-path    ?= '/media/afbeeldingen'
 *     images      ?= img-path
 *     
 *     // resolves image url relative paths
 *     image(path)
 *         url(join('/', images, path))
 */
/* Conditional Assignments ( ?= and := )
 *
 * The conditional assignment operator ?= (aliased as :=) lets us 
 * define variables without clobbering old values (if present). This
 * operator expands to an is defined binary operation within a ternary.
 */
 
// This is easy because CSS already allows it and Stylus works with it
// for i in 1 2 3 4
//   customname{i}
// ~> customname1 { ; } ... 2 ...n







* `((<))` or `((>))` Lookbehind and lookahead?

((+))

> http://something.com/someone/page.html ~> litcoffee.it/sGyG3`


..                / type Ctrl+@ (Ctrl+Shift+2) or ``((@))``
.                /       
.               /        / and the open clipboard uri paste in?
.              /        /
Lorem ipsum [`((@))`][http://some...] sit amet, consectetuer adipiscing elit.
Nam cursus. Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet
mattis, massa.

> Say we use certain things more often, like CoffeeScript but too lazy
> to type and paste:

* references like url, manual, what is it?
* abbreviation
* shortcut commands

`--cs[TAB]`
Pipe in/output `a->-b` and `a-<-b`



Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nam cursus.
Morbi ut mi. Nullam enim leo, egestas id, condimentum at, laoreet
mattis, massa.

