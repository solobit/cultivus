
```js
@import 'something'
apply-some-method()
```

Do you know what happens here? Of course you don't. Not without the context,
which language it is, to be short: more information is needed. This is exactly
the problem with most parts of information, be it on the web, in books or in
manuals, web logs or official reference - they are incomplete (often), expect a
certain understanding of the techniques used, often a computer and internet :).

But with some degree we can assume stuff without looking further. You know the
file type is `.styl`. The imported thing hence is the import of another `.styl`
file because it has no extension. But it could also mean there is a directory
called `something` which holds a file called `index.styl` because that is how
[Stylus][stylus] works.

Now I've been helpful enough to name the second line a bit more generic but
technically correct term `method` and often enough in programming languages,
those work with parentheses `()` sometimes they may be omitted from the
statement, which is a function call which is the same as a method call but never
called that really. You can 'apply a method', which would be roughly the same as
'calling a method' and thus certain languages require you to `call abc()` or
`call abc`, others use only the name of the variable name pointing to a function
as `cs 'coffee-script', ->` would do.

All fun things aside, it still doesn't tell us much does it? It's named in such
a generic fashion, with this abstract name. Same as when talking about your
friend Joe as 'Person'. Correct, but a little odd nonetheless.

One problem is that not often it's fully understood that Stylus is somewhat a
**blend of JavaScript with some CoffeeScript-like syntactic sugar, generalized
stereotyped functions and data-types inspired by, and working with CSS!!**

Once you get that. the rest is easier. Admitted, if you hardly know anything
about programming, CSS/HTML to begin with, this might be a bridge too far. But
if it isn't, you can see through some of these abstractions, more easily as time
progresses.


