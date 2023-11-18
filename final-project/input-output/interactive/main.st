"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"

| userInput |

Transcript show: 'Input accepts only a positive number: ', nl.

[userInput := (FileStream stdin nextLine) asNumber.
userInput < 0] whileTrue: [
    Transcript show: 'Please enter a positive number. Try again:'; nl.
].

Transcript show: 'You entered a positive number: ', userInput printString; nl.
