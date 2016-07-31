;
; Steven Hernandez
; sum-and-difference.pep
; 2016/07/31
; Calculates sum and difference of two values
;

; get input
DECI first,d 
DECI second,d

; calculate sum
LDA first,d
ADDA second,d
STA sum,d

; calculate difference
LDA first,d
SUBA second,d
STA diff,d 

; print sum
DECO first,d 
CHARO ' ',i
CHARO '+',i
CHARO ' ',i
DECO second,d
CHARO ' ',i
CHARO '=',i
CHARO ' ',i
DECO sum,d

CHARO '\n',i

; print difference
DECO first,d 
CHARO ' ',i
CHARO '-',i
CHARO ' ',i
DECO second,d
CHARO ' ',i
CHARO '=',i
CHARO ' ',i
DECO diff,d


STOP
; variables
first: .WORD 0x0000
second: .WORD 0x0000
sum: .WORD 0x0000
diff: .WORD 0x0000
.END