;
; Calulates rectangle perimeter from width and length
;
; Example Input: "9 9"
;
; Example Ouput: 
;  w = 9
;  l = 9
;
;  p = 36
;
DECI    width,d     ;get width
DECI    length,d    ;get length
;calculate perimeter
LDA      width,d     ;load width into Accumulator
ADDA     length,d    ;add length to Accumulator
ASLA                 ;multiply by 2 (shift right)
STA      perim,d     ;store the perimeter
;print out results
;w = #
CHARO    'w',i
STRO     equals,d 
DECO     width,d 
CHARO    '\n',i
;l = #
CHARO    'l',i
STRO     equals,d 
DECO     length,d
CHARO    '\n',i 
CHARO    '\n',i 
;p = #
CHARO    'p',i
STRO     equals,d 
DECO     perim,d
CHARO    '\n',i  
STOP
width:      .WORD 0 
length:     .WORD 0 
perim:     .WORD 0
equals:    .ASCII  " = "
.END