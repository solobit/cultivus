
#### Important!

If you wish to file a bug report, make sure you have read and understood the
 following text. Use the correct terms and definitions, describe what you
 **expect**  and what you **observe**. If possible, read the [code][cultsrc] to
 ensure you don't have the functionality misunderstood, provided incorrect
 parameters etc. before you file a bug report. 

# Modern age web styling

> If you've ever created a complicated Web site with a lot of
 specialized styles to determine the look and design of your site, you will find
 that your stylesheet will become complex and unwieldy very quickly. But if you
 organize your CSS file you can create a document that makes sense and is even
 easy to maintain and update even years later.
> Source(s): [webdesign.about.com][about]

I've purposely taken a `n00bish` source, that is to say, a reference that is
 considered by veterans perhaps to be of 'lesser value' in terms of currency.
 But perhaps this also has to do with some of [the war][w3fools] people are
 waging on the [number 1 web site][w3schools] in search results at Google as far
 as the 'web' technologies go. I did want to provide a good starting point,
 event for those uninitiated in the fine crafts of styling, development for the
 web and `cultivus` (serving this same purpose of a jumping board, quality
 examples under a working hood driven by modern web engines). Turns out, the
 about.com web pages (2) on this topic, are actually very well written for this
 purpose, so I'll reference (quote) them a lot throughout.

Feel free to skip through the topics as seem fit, depending on your knowledge on
CSS/Stylus.



Since Stylus is, in fact, just CSS with all the `{}` and `;` (well not all, all
 but most) optional, usually we just consider them as equal. It does however,
 create another abstraction layer on top of it, with additional complexities
 (and bugs!). Given the fact that I found it hard enough to dig through the few
 material there is in the manual (on certain concepts it could be improved in
 terms of explaining these things), this guide was compiled.

We will take it from the well known grounds of CSS (for some more than others),
 through the landscapes of [Stylus][stylus], the forests of [roots][roots] and
 then finally through the cultivus `opinionated` framework for semantical and
 localized CSS conventions and nomenclature (now that's a mouthful isn't it? no
 worries, soon it'll all be clear)

## Cascading Style Sheets (CSS)
Source(s): [webdesign.about.com][about]

If you really do not know what CSS is, you should probably [read this first][newb]
The first thing you should remember is that the first letter in CSS stands for
 **"Cascading"**. This means that the styles that are applied to a document are
 applied in a cascade - something like a waterfall. As the browser reads through
 the document, the last properties that are defined are the ones that take
 precedence (with some exceptions). That means that you should order your CSS
 document to take advantage of that cascade. Put the **most general** properties
 **first**, and your **most specific properties last**.

We've tried to demonstrate this 'awareness' throughout the `cultivus` files and
documents.

### CSS Order of Precedence

> If two or more CSS rules apply to same HTML element, which rule take the most
priority, it is called 'CSS order of precedence'. The following order will take
place in there.
> http://easycsstricks.blogspot.nl/2012/11/css-order-of-precedence.html

* [BrowserDefault](#defaults) - If there any style added
* [External CSS](#external) - If there are more than one external CSS file the order of link
  tag will take place. last link tag has the most priority.
* [Internal CSS](#internal) - If internal CSS are under link tags, they take the priority. If
  not final link tag take the priority.
* [In-line styles ](#inline) - take the most priority.

If there is a `!important` after a style, it takes the most priority.

### General CSS Properties

CSS properties that I like to think of as "general" are ones that cover the most
 elements on your pages. For example, on a Web site, usually you would define the
 default font family, color, and size, as well as the background color and / or
 image, and page margins. These style properties you should put first in your
 stylesheet to define your entire site. For example:

```css
html, body { margin: 0px; background-color: #fff; }
 p, h1, h2, h3, h4 { font: .8em Arial, Helvetica, sans-serif; color: #000; }
 h1 { font-size: 1.5em; }
 h2 { font-size: 1.2em }
 h3 { font-size: 1em; }
 h4 { font-size: .8em; }
```

This insures that even if you have no other definitions on a page, they will
 have the same background color and font as the rest of your site. General styles
 are styles that are applied when there is no other specific information about
 the element.

### Positioning CSS Properties

Usually, positioning properties are a general style, because you would want all
 of your pages to have the same look and feel, perhaps with a navigation on the
 left and the main body on the right, with specific widths. I consider
 positioning CSS to be a little less general than the properties above, because
 most sites have a different layout for their homepage than they do for the rest
 of the site, so there would need to be some differentiation on the pages to say
 "this is the homepage" and "this is a sub-page". Usually this is done with an id
 tag on either the <body> element or on an enclosing <div> element around the
 contents of the entire page.

```html
 <body id="homepage">
 <div id="page">
```

Navigation is another set of properties that is usually pretty general, such as
 having all the links in the navigation column be bold and have a border around
 them to look like a button, rather than a bulleted list. To get your navigation
 elements, you might put your navigation in a div with an id to indicate that
 it's navigation, or just give the unordered list itself an id.

```html
<ul id="navigation">
```

On the next page we'll take a look at more specific CSS styles. This page will
 also cover how to write context specific styles so that you can have headlines
 that change depending upon where they are.

### Specific CSS Properties

The last items on your CSS style sheet should be the most specific properties.
 These are the properties that define specific sections of a page, or the colors
 of a section of your site, or even widgets that only appear in that one section.
 Because they're at the bottom, you can define them using classes (if there are
 more than one on a page) or by context (perhaps if you want to define all
 headlines on a specific page section as blue).

### Define a Widget

 A widget would be a single paragraph or other element that is different from the
 other paragraphs on your site. For example, you might have a pull-quote widget.
 You can define this widget using a class on your `<p>` tag and use it anywhere
 in the site. Remember that you've already set the default font size and color
 for paragraphs, so you only need to define it if you change it:

```css
.pullquote {
 color: #f80;
 border: solid 1px #000;
 background-color: #FFE4C4;
 width: 200px;
 font-size: 1.3em;
 padding: 5px;
 float: right;
 }
```

For my pull-quote, I changed the font size and color, but I left the font family
the same as the default paragraphs. So I didn't define the font family again.

### Define by Context

Defining your page style by context allows you to define specific attributes
based on a class that the entire page has been given. This is usually defined by
a class in the `<body>` tag. For example, if you want your products section to
have a color scheme using blues, and your buy now section to use reds, you can
label all the pages in those two sections using a specific class:

```html
<body class="product">
<body class="purchase">
```

Then, every page in those sections will have a context that will allow you to
define situations for those sections. For example, to make all the headlines
either blue or red in the sections, you would change the color of your headline
tags, depending upon their context:

```css
.purchase h1 { color: #f00; }
.product h1 { color: #00f; }
```

In the XHTML, you would not need to set any classes on the `<h1>` tags, or in fact
do anything to them to get them to be the correct color when they're on the
correct page:

```html
<body class="product">
 <h1>Buy Now</h1>
```

 This is very useful, because it allows you to reuse the same HTML over and over
 again as a template, only changing the class of the body tag to define where the
 page displays. You can even do things to modify your widgets like your pull-
 quote to make it more specific to a page that it's on. As long as this more
 specific class comes after the more general `.pullquote` class, you only have to
 define the properties that change.

```css
.purchase .pullquote {
 color: #000;
 background-color: #f00;
 }
 .product .pullquote {
 color: #000;
 background-color: #00f;
 }
 ```

### Order Your CSS

If you write your stylesheet in an order from most general to most specific,
you'll have a stylesheet that you can update later and it will be as small and
clean as you can make it. No matter how complicated your Web site becomes.

[newb]: <http://webdesign.about.com/od/beginningcss/a/aa021607.htm>
[try-stylus]: <http://learnboost.github.io/try.html>
[stylus]: <http://learnboost.github.io/>
[roots]: <http://roots.cx/css>
[about]: <http://webdesign.about.com/od/css/a/aa120505.htm>








// Important!

// Order - matters - here ! Just like CSS but an additional layer on top
//      of stylus/css with more sane settings and added stuff No fault
//      tolerance other than those in CSS/HTML/Stylus. Don't fuck it up
//      - explain where you can - abstract and add layers for sanity
//      check and graceful error handling.

// Comments are generated for output CSS as /* */ unless // (more or less)

// User-customizable





//afbeeldingen = _pathImagesRoot
