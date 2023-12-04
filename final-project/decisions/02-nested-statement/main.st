"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
Transcript nl.
"-------------------------------------------------------------------------------------"

| dayOfWeek |

Transcript show: 'Enter the days of the week: ', nl.
dayOfWeek := (FileStream stdin nextLine) asString.

(dayOfWeek = 'Monday')
    ifTrue: [ 
        Transcript show: 'It''s the start of the work week.'; cr.
    ]
    ifFalse: [
        (dayOfWeek = 'Tuesday' or: [dayOfWeek = 'Wednesday' or: [dayOfWeek = 'Thursday' or: [dayOfWeek = 'Friday']]])
            ifTrue: [
                Transcript show: 'It''s a workday.'; cr.
            ]
            ifFalse: [
                (dayOfWeek = 'Saturday' or: [dayOfWeek = 'Sunday'])
                    ifTrue: [
                        Transcript show: 'It''s the weekend!'; cr.
                    ]
                    ifFalse: [
                        Transcript show: 'Invalid day of the week.'; cr.
                    ].
            ].
    ].
