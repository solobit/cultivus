

(1)html
(2)    head
(3)        title
(4)            CONTENT
(5)        style
(6)    body
(7)        div
(8)            div
(9)                h2
(10)                    CONTENT
(11)                ul
(12)                    li
(13)                        CONTENT
(14)                    li
(15)                        CONTENT
(16)            div
(17)                div
(18)                    h1
(19)                        CONTENT
(20)                    p
(21)                        CONTENT
(22)                        em
(23)                            a
(24)                                CONTENT
(25)                    p
(26)                        img
(27)                        CONTENT
(28)                    p
(29)                        CONTENT
(30)                div
(31)                    h2
(32)                        CONTENT
(33)                    p
(34)                        a
(35)                            img



Each item that is inside another item is indented to indicate it's relationship.

HTML Descendants
<http://webdesign.about.com/od/cssselectors/qt/html-tag-relationships.htm>

When you view an HTML document tree like this, you can see right away
which elements are descendants. In fact, the only element that is not a
descendant is the HTML element - at the very top.

When you use a CSS descendant selector you match that element, anywhere in the
tree, that is a descendant of the other. For example, if you had a CSS descendant
rule matching all IMG tags that were descendants of DIV tags, you would match
both line 26 and line 35. But matching all A tag descendants of EM tags would
only match line 23, not line 34.

A CSS descendant selector applies to the elements that are inside another
element. For example an unordered list has a `<ul>` tag with `<li>` tags as
descendants. In the following HTML:

```html
<ul>
    <li><a href="">this is a link</a></li>
</ul>
```

The LI tags are descendants of the UL tag. The A tag is a descendant of both the
LI (child descendant) and UL (grandchild descendant) tags.

Define descendant selectors by using two type selectors separated by spaces.

```css
li a {
  text-decoration: none ;
}
```

Remember that it doesn't matter how many tags are in between the two tags. If
the second element is enclosed anywhere within the first element it will be
selected as a descendant.

If you want to select all `<a href="...">` anchors that are descended from `ul`
elements, you would write:

```css
ul a {
  text-decoration: none ;
}
```

Also: the selectors that you're descending from don't have to be type
descendants. For example, you could set up a descendant selector of an ID:

```css
#navigation ul {
  background-color: #ccc ;
}
```

In Stylus, we can reverse some of that logic. We can select parents or ... ?

Add-in the power of expressions, and we can envision a semantic framework:


brighten my-children .someClass
=>
brightest(a, b, c...) ~> return greatest brightness of the series
brighter(A, B) ~> increase brightness



increase-greyness our-children
