"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"

"Numbers"
integerNumber := 42.

"FloatNumbers"
floatNumber := 3.14.


"String"
string := 'Hello, World!'.

"Arrays"
array := #(1 2 3 4).

"Dictionaries"
dictionary := Dictionary new.
dictionary at: 'a' put: 1.
dictionary at: 'b' put: 2.
dictionary at: 'c' put: 3.
dictionary at: 'd' put: 4.

"Booleans"
trueValue := true.
falseValue := false.


"Collections (OrderedCollection)"
orderedCollection := OrderedCollection new.
orderedCollection add: 'apple'.
orderedCollection add: 'banana'.


"Print Inputs"
Transcript show: 'Integer Number: ', integerNumber printString; nl.
Transcript nl.
Transcript show: 'Float Number: ', floatNumber printString; nl.
Transcript nl.
Transcript show: 'String: ', string; nl.
Transcript nl.
Transcript show: 'Array: ', array printString; nl.
Transcript nl.
Transcript show: 'Dictionary: ', dictionary printString; nl.
Transcript nl.
Transcript show: 'Boolean (True): ', trueValue printString; nl.
Transcript nl.
Transcript show: 'Boolean (False): ', falseValue printString; nl.
Transcript nl.
Transcript show: 'OrderedCollection: ', orderedCollection printString; nl.
