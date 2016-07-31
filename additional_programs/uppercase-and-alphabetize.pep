;
; Steven Hernandez
; uppercase-and-alphabetize.pep
; 2016/07/31
; Uppercase values, then prints them alphabetically
;

; get input
CHARI first,d 
CHARI second,d

; capitalize first
LDBYTEA first,d
ANDA capital,d
STBYTEA first,d

; capitalize second
LDBYTEA second,d
ANDA capital,d
STBYTEA second,d

; compare characters
LDBYTEA first,d
CPA second,d
BRLE reverse

; prints characters
CHARO first,d
CHARO second,d
STOP

; prints characters reversed
reverse: CHARO second,d
CHARO first,d
STOP
; variables
first: .BYTE 0x0000
second: .BYTE 0x0000
capital: .WORD 0x00DF
.END