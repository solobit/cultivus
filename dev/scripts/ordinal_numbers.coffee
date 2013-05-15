

###
log = console.log


getOrdinal = (n = 0) ->
  s = ["th", "st", "nd", "rd"]
  v = n % 100
  n + (s[(v - 20) % 10] or s[v] or s[0])

log getOrdinal 1
#log getOrdinal.toString()

log range = [1..20]
log 
(log getOrdinal(number)) for number in range



```stylus

getOrdinal(n = 0)
  s = ("th" "st" "nd" "rd")
  v = n % 100
  n + (s[(v - 20) % 10] or s[v] or s[0])

getOrdinal(number)) for number in range




```js
function getGetOrdinal(n) {
   var s=["th","st","nd","rd"],
       v=n%100;
   return n+(s[(v-20)%10]||s[v]||s[0]);
}
```
###