

# Roman numerals to English

ASCII and Unicode functions to convert roman numbers in CoffeeScript.

    numeral = {

        convert: (num = 0, casing = 'to-upper-case') ->

Create digits variabele and type cast from 'number' to to an 'Array'
object of 'string'-s

            digits = String(+num).split ""

We now have say for `100` the data in a list: `['1', '0', '0']`

            numerals = {

Define a numeral system for any language (shared) system as keys of the
numarals. Keep in mind, this is the roman system so add another
abstraction for other systems of counting.

First define ASCII character encoded

                ascii:  ['', 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM',
                         '', 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC',
                         '', 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX']

There ((todo)) probably is another unicode proper system I need to
figure out (ranges, planes?) but literal characters should be ok (on
unicode terminals and properly installed fonts, need to map to html?)

              , unicode: ['', 'ⅽ', 'ⅽⅽ', 'ⅽⅽⅽ', 'ⅽⅾ', 'ⅾ', 'ⅾⅽ', 'ⅾⅾⅽ', 'ⅾⅽⅽⅽ', 'ⅽ'
                          '', 'ⅹ', 'ⅹⅹ', 'ⅹⅹⅹ', 'ⅹⅼ', 'ⅼ',  'ⅼⅹ',  'ⅼⅹⅹ',  'ⅼⅹⅹⅹ', 'ⅹⅽ',
                          '', 'ⅰ',  'ⅱ',  'ⅲ',  'ⅳ', 'ⅴ', 'ⅵ',  'ⅶ',  'ⅷ', 'ⅸ' ]



            }
            roman = ""
            
            key = numerals.unicode

            i = 3
            console.log numerals.ascii.length / 10

            roman = (key[+digits.pop() + (i * 10)] or "") + roman  while i--

            Array(+digits.join("") + 1).join("M") + roman


    }


    console.log numeral.convert 100, 'to-roman'
