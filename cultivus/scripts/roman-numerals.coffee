
romanize = (num) ->

    return false  unless +num

    digits = String(+num).split("")

    key = [
           "", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM",
           "", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC",
           "", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"
          ]

    console.log key

    roman = ""

    i = 3

    roman = (key[+digits.pop() + (i * 10)] or "") + roman  while i--

    Array(+digits.join("") + 1).join("M") + roman

console.log romanize 10