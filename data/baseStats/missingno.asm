MissingnoBaseStats:
db 0 ; pokedex id
db 21 ; base hp
db 136 ; base attack
db 0 ; base defense
db 29 ; base speed
db 6 ; base special
db 6 ; species type 1
db NORMAL ; species type 2
db 29 ; catch rate
db 143 ; base exp yield
db $88
dw MissingnoFrontPicBlob
dw $378F
; attacks known at lvl 0
db WATER_GUN
db WATER_GUN
db SKY_ATTACK
db 0
db $1A ; growth rate
; learnset
db $37
db $37
db $0D
db $37
db $00
db $1C
db $0D
db $0D
db %11111111 ; usually spacing

MissingnoFrontPicBlob:
db $DD
db $1C
db $7D
db $E0
db $C3
db $7C
db $E0
db $C4
db $79
db $E0
db $C5
db $7B
db $E0
db $C1
db $C9
db $01
db $68
db $01
db $04
db $21
db $A0
db $C3
db $3E
db $7F
db $22
db $0D
db $20
db $FC
db $05
db $20
db $F9
db $C3
db $D7
db $3D
db $E5
db $3E
db $79
db $22
db $3C
db $CD
db $4F
db $19
db $3C
db $77
db $E1
db $11
db $14
db $00
db $19
db $E5
db $3E
db $7C
db $22
db $3E
db $7F
db $CD
db $4F
db $19
db $36
db $7C
db $E1
db $11
db $14
db $00
db $19
db $05
db $20
db $ED
db $3E
db $7D
db $22
db $3E
db $7A
db $CD
db $4F
db $19
db $36
db $7E
db $C9
db $51
db $22
db $15
db $20
db $FC
db $C9
db $E5
db $1A
db $FE
db $50
db $20
db $04
db $44
db $4D
db $E1
db $C9
db $FE
db $4E
db $20
db $12
db $01
db $28
db $00
db $F0
db $F6
db $CB
db $57
db $28
db $03
db $01
db $14
db $00
db $E1
db $09
db $E5
db $C3
db $E8
db $19
db $FE
db $4F
db $20
db $08
db $E1
db $21
db $E1
db $C4
db $E5
db $C3
db $E8
db $19
db $A7
db $CA
db $EC
db $19
db $FE
db $4C
db $CA
db $0A
db $1B
db $FE
db $4B
db $CA
db $F8
db $1A
db $FE
db $51
db $CA
db $B4
db $1A
db $FE
db $49
db $CA
db $D5
db $1A
db $FE
db $52
db $CA
db $F9
db $19
db $FE
db $53
db $CA
db $FF
db $19
db $FE
db $54
db $CA
db $1D
db $1A
db $FE
db $5B
db $CA
db $11
db $1A
db $FE
db $5E
db $CA
db $17
db $1A
db $FE
db $5C
db $CA
db $0B
db $1A
db $FE
db $5D
db $CA
db $05
db $1A
db $FE
db $55
db $CA
db $7C
db $1A
db $FE
db $56
db $CA
db $23
db $1A
db $FE
db $57
db $CA
db $AD
db $1A
db $FE
db $58
db $CA
db $95
db $1A
db $FE
db $4A
db $CA
db $29
db $1A
db $FE
db $5F
db $CA
db $91
db $1A
db $FE
db $59
db $CA
db $2F
db $1A
db $FE
db $5A
db $CA
db $35
db $1A
db $22
db $CD
db $D3
db $38
db $13
db $C3
db $56
db $19
db $44
db $4D
db $E1
db $11
db $F4
db $19
db $1B
db $C9
db $17
db $96
db $66
db $22
db $50
db $D5
db $11
db $58
db $D1
db $18
db $4C
db $D5
db $11
db $4A
db $D3
db $18
db $46
db $D5
db $11
db $58
db $1A
db $18
db $40
db $D5
db $11
db $55
db $1A
db $18
db $3A
db $D5
db $11
db $60
db $1A
db $18
db $34
db $D5
db $11
db $63
db $1A
db $18
db $2E
db $D5
db $11
db $6A
db $1A
db $18
db $28
db $D5
db $11
db $6F
db $1A
db $18
db $22
db $D5
db $11
db $79
db $1A
db $18
db $1C
db $F0
db $F3
db $EE
db $01
db $18
db $02
db $F0
db $F3
db $D5
db $A7
db $20
db $05
db $11
db $09
db $D0
db $18
db $0B
db $11
db $72
db $1A
db $CD
db $55
db $19
db $60
db $69
db $11
db $DA
db $CF
db $CD
db $55
db $19
db $60
db $69
db $D1
db $13
db $C3
db $56
db $19
db $93
db $8C
db $50
db $93
db $91
db $80
db $88
db $8D
db $84
db $91
db $50
db $8F
db $82
db $50
db $91
db $8E
db $82
db $8A
db $84
db $93
db $50
db $8F
db $8E
db $8A
db $BA
db $50
db $75
db $75
db $50
db $84
db $AD
db $A4
db $AC
db $B8
db $7F
db $50
db $E1
db $E2
db $50
db $D5
db $44
db $4D
db $21
db $8C
db $1A
db $CD
db $40
db $1B
db $60
db $69
db $D1
db $13
db $C3
db $56
db $19
db $17
db $A3
db $66
db $22
db $50
db $36
db $E8
db $E1
db $C9
db $FA
db $2B
db $D1
db $FE
db $04
db $CA
db $A2
db $1A
db $3E
db $EE
db $EA
db $F2
db $C4
db $CD
db $3A
db $1B
db $CD
db $98
db $38
db $3E
db $7F
db $EA
db $F2
db $C4
db $E1
db $11
db $B3
db $1A
db $1B
db $C9
db $50
db $D5
db $3E
db $EE
db $EA
db $F2
db $C4
db $CD
db $3A
db $1B
db $CD
db $98
db $38
db $21
db $A5
db $C4
db $01
db $12
db $04
db $CD
db $C4
db $18
db $0E
db $14
db $CD
db $39
db $37
db $D1
db $21
db $B9
db $C4
db $C3
db $E8
db $19
db $D5
db $3E
db $EE
db $EA
db $F2
db $C4
db $CD
db $3A
db $1B
db $CD
db $98
db $38
db $21
db $69
db $C4
db $01
db $12
db $07
db $CD
db $C4
db $18
db $0E
db $14
db $CD
db $39
db $37
db $D1
db $E1
db $21
db $7D
db $C4
db $E5
db $C3
db $E8
db $19
db $3E
db $EE
db $EA
db $F2
db $C4
db $CD
db $3A
db $1B
db $D5
db $CD
db $98
db $38
db $D1
db $3E
db $7F
db $EA
db $F2
db $C4
db $D5
db $CD
db $18
db $1B
db $CD
db $18
db $1B
db $21
db $E1
db $C4
db $D1
db $C3
db $E8
db $19
db $21
db $B8
db $C4
db $11
db $A4
db $C4
db $06
db $3C
db $2A
db $12
db $13
db $05
db $20
db $FA
db $21
db $E1
db $C4
db $3E
db $7F
db $06
db $12
db $22
db $05
db $20
db $FC
db $06
db $05
db $CD
db $AF
db $20
db $05
db $20
db $FA
db $C9
db $C5
db $CD
db $D7
db $3D
db $C1
db $C9
db $FA
db $58
db $D3
db $F5
db $CB
db $CF
db $5F
db $F0
db $F4
db $AB
db $EA
db $58
db $D3
db $79
db $EA
db $3A
db $CC
db $78
db $EA
db $3B
db $CC
db $2A
db $FE
db $50
db $20
db $05
db $F1
db $EA
db $58
db $D3
db $C9
db $E5
db $FE
db $17
db $CA
db $A3
db $1C
db $FE
db $0E
db $D2
db $31
db $1C
db $21
db $C1
db $1C
db $C5
db $87
db $06
db $00
db $4F
db $09
db $C1
db $2A
db $66
db $6F
db $E9
db $E1
db $2A
db $5F
db $2A
db $57
db $2A
db $47
db $2A
db $4F
db $E5
db $62
db $6B
db $CD
db $22
db $19
db $E1
db $18
db $CB
db $E1
db $54
db $5D
db $60
db $69
db $CD
db $55
db $19
db $62
db $6B
db $23
db $18
db $BE
db $E1
db $2A
db $5F
db $2A
db $57
db $E5
db $60
db $69
db $CD
db $55
db $19
db $E1
db $18
db $B0
db $E1
db $2A
db $5F
db $2A
db $57
db $2A
db $E5
db $60
db $69
db $4F
db $CD
db $CD
db $15
db $44
db $4D
db $E1
db $18
db $9E
db $E1
db $2A
db $EA
db $3A
db $CC
db $4F
db $2A
db $EA
db $3B
db $CC
db $47
db $C3
db $55
db $1B
db $E1
db $01
db $E1
db $C4
db $C3
db $55
db $1B
db $FA
db $2B
db $D1
db $FE
db $04
db $CA
db $9A
db $1C
db $3E
db $EE
db $EA
db $F2
db $C4
db $C5
db $CD
db $98
db $38
db $C1
db $3E
db $7F
db $EA
db $F2
db $C4
db $E1
db $C3
db $55
db $1B
db $3E
db $7F
db $EA
db $F2
db $C4
db $CD
db $18
db $1B
db $CD
db $18
db $1B
db $E1
db $01
db $E1
db $C4
db $C3
db $55
db $1B
db $E1
db $11
db $55
db $1B
db $D5
db $E9
db $E1
db $2A
db $5F
db $2A
db $57
db $2A
db $E5
db $60
db $69
db $47
db $E6
db $0F
db $4F
db $78
db $E6
db $F0
db $CB
db $37
db $CB
db $F7
db $47
db $CD
db $5F
db $3C
db $44
db $4D
db $E1
db $C3
db $55
db $1B
db $C5
db $CD
db $9A
db $01
db $F0
db $B4
db $E6
db $03
db $20
db $05
db $0E
db $1E
db $CD
db $39
db $37
db $C1
db $E1
db $C3
db $55
db $1B
db $E1
db $C5
db $2B
db $2A
db $47
db $E5
db $21
db $64
db $1C
db $2A
db $B8
db $28
db $03
db $23
db $18
db $F9
db $FE
db $14
db $28
db $14
db $FE
db $15
db $28
db $10
db $FE
db $16
db $28
db $0C
db $7E
db $CD
db $B1
db $23
db $CD
db $48
db $37
db $E1
db $C1
db $C3
db $55
db $1B
db $D5
db $7E
db $CD
db $D0
db $13
db $D1
db $E1
db $C1
db $C3
db $55
db $1B
db $0B
db $86
db $12
db $9A
db $0E
db $91
db $0F
db $86
db $10
db $89
db $11
db $94
db $13
db $98
db $14
db $A8
db $15
db $97
db $16
db $78
db $E1
db $2A
db $57
db $E5
db $60
db $69
db $3E
db $75
db $22
db $D5
db $CD
db $9A
db $01
db $D1
db $F0
db $B4
db $E6
db $03
db $20
db $05
db $0E
db $0A
db $CD
db $39
db $37
db $15
db $20
db $EA
db $44
db $4D
db $E1
db $C3
db $55
db $1B
db $C5
db $CD
db $98
db $38
db $C1
db $E1
db $C3
db $55
db $1B
db $E1
db $F0
db $B8
db $F5
db $2A
db $5F
db $2A
db $57
db $2A
db $E0
db $B8
db $EA
db $00
db $20
db $E5
db $6B
db $62
db $CD
db $40
db $1B
db $E1
db $F1
db $E0
db $B8
db $EA
db $00
db $20
db $C3
db $55
db $1B
db $8A
db $1B
db $97
db $1B
db $A5
db $1B
db $B7
db $1B
db $78
db $1B
db $C5
db $1B
db $CC
db $1B
db $E7
db $1B
db $F9
db $1B
db $FF
db $1B
db $1D
db $1C
db $31
db $1C
db $78
db $1C
db $9A
db $1C
db $AF
db $CB
db $3C
db $CB
db $1F
db $CB
db $3C
db $CB
db $1F
db $CB
db $3C
db $CB
db $1F
db $B5
db $6F
db $78
db $B4
db $67
db $C9
db $3E
db $7F
db $18
db $01
db $7D
db $11
db $00
db $04
db $6B
db $22
db $1D
db $20
db $FC
db $15
db $20
db $F9