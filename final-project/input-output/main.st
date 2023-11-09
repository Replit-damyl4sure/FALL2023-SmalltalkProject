#!/nix/store/9l1lr2zgxvrqzvnvm5phkb9dddy9l3lc-gnu-smalltalk-3.2.5/bin/gst -f
"-------------------------------------------------------------------------------------"
copyright := 'Copyright FALL 2023, Abioye. D, All rights reserved.'.
Transcript show: copyright; flush; nl.
"-------------------------------------------------------------------------------------"

"https://www.gnu.org/software/smalltalk/manual/html_node/Files.html"


| inputFile outputFile |

"Read from input file stream"
inputFile := FileStream open: './input.txt' mode: FileStream read.

"Create a new output file stream"
outputFile := FileStream open: './output.txt' mode: FileStream write.


inputFile linesDo: [ :line |
    Transcript nextPutAll: line; nl.  "Display input filestream line in Transcript"
    
    outputFile nextPutAll: line; nl.
].


"Print another line to the file"
outputFile nextPutAll: 'This is an extra new line.'; nl.


inputFile close.
outputFile close.
