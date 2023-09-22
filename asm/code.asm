; loop test
;

; Effect:
; 
; 1. print `love you`
; 2. wait for key press
; 3. print `forever`
; 4. wait for key press
; 5. goto 1. and repeat forever

;mode 100+9+13an


space 16  ; chars for love you 

hex 6c 6f 76 65 20 79 6f 75 ; `love you`

home:
    pop qr0
    hex 20 20 80 d1 30 30 30 30
    printline
    waitkey
    pop qr0
    hex 20 20 74 d5 30 30 30 30
    printline
    waitkey
    pop qr0
    hex 22 d5 80 d1 30 30 30 30 
    smart_strcpy
    pop ER14
    adr home -16
    jpop qr80   ;jump and pop qr8,pop qr0

hex 46 6f 72 20 65 76 65 72  ; `Forever`
