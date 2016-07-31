;
; Steven Hernandez
; sum-and-difference-and-product.pep
; 2016/07/31
; Calculates sum and difference and product of two values
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

; calculate product
LDX second,d
multi: LDA product,d
ADDA first,d
STA product,d
LDA mulcount,d
ADDA 1,i
STA mulcount,d
CPA second,d
BRNE multi

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

CHARO '\n',i

; print product
DECO first,d 
CHARO ' ',i
CHARO '*',i
CHARO ' ',i
DECO second,d
CHARO ' ',i
CHARO '=',i
CHARO ' ',i
DECO product,d


STOP
; variables
first: .WORD 0x0000
second: .WORD 0x0000
sum: .WORD 0x0000
diff: .WORD 0x0000
product: .WORD 0x0000

mulcount: .WORD 0x0000
.END