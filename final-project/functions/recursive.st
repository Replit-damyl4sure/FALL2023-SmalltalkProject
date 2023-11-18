"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"

"Calculate the factorial of a non-negative integer."
Object subclass: ClassPackage [

    ClassPackage>>factorial: num [
        (num < 0) 
            ifTrue: [
                Transcript nl; show: 'Provide a postive interger as input number'; nl.
                Smalltalk quit: 0. "Exit the Smalltalk environment"
        ].
    
        (num = 0 or: [num = 1])
            ifTrue: [
                ^ 1
        ]
            ifFalse: [
                ^ num * (self factorial: num - 1)
        ].
    ]
]


"Usage:"
| number result |

Transcript show: 'Enter a positive integer: '; flush.
number := (FileStream stdin nextLine) asInteger.

object := ClassPackage new. "Use the class object"

result := object factorial: number.
Transcript show: 'The factorial of ', number asString, ' is ', result asString; nl.
