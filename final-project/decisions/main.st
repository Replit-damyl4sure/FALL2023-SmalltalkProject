"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"

Transcript show: 'While statement'; nl.
condition := 1.
[condition < 5] whileTrue: [
    Transcript show: 'Loop iteration ', condition asString; nl.
    condition := condition + 1.
].

Transcript nl.
Transcript nl.

Transcript show: 'If-Else statement'; nl.
|a b|
a := 5.
b := 3.
(a > b) ifTrue: [
    Transcript show: 'value of ', a asString, ' is greater than value of ', b asString; nl.
]
ifFalse: [
    Transcript show: 'value of ', b asString, ' is greater than value of ', a asString; nl.
]
