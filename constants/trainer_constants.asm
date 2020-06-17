trainer_const: MACRO
\1     EQU const_value
OPP_\1 EQU const_value + 200
const_value = const_value + 1
ENDM

const_value = 1

	trainer_const YOUNGSTER     ; $01
	trainer_const BUG_CATCHER   ; $02
	trainer_const LASS          ; $03
	trainer_const SAILOR        ; $04
	trainer_const JR_TRAINER_M  ; $05
	trainer_const JR_TRAINER_F  ; $06
	trainer_const POKEMANIAC    ; $07
	trainer_const SUPER_NERD    ; $08
	trainer_const HIKER         ; $09
	trainer_const BIKER         ; $0A
	trainer_const BURGLAR       ; $0B
	trainer_const DOJO_COUPLE      ; $0C
	trainer_const JUGGLER_X     ; $0D
	trainer_const FISHER        ; $0E
	trainer_const SWIMMER       ; $0F
	trainer_const CUE_BALL      ; $10
	trainer_const GAMBLER       ; $11
	trainer_const BEAUTY        ; $12
	trainer_const PSYCHIC_TR    ; $13
	trainer_const ROCKER        ; $14
	trainer_const JUGGLER       ; $15
	trainer_const TAMER         ; $16
	trainer_const BIRD_KEEPER   ; $17
	trainer_const BLACKBELT     ; $18
	trainer_const SONY1         ; $19
	trainer_const PROF_OAK      ; $1A
	trainer_const CHIEF         ; $1B
	trainer_const SCIENTIST     ; $1C
	trainer_const BLAINE      ; $1D
	trainer_const SOLDIER        ; $1E
	trainer_const COOLTRAINER_M ; $1F
	trainer_const COOLTRAINER_F ; $20
	trainer_const BRUNO         ; $21
	trainer_const ICHITAROU         ; $22
	trainer_const HAYATO         ; $23
	trainer_const ENOKI      ; $24
	trainer_const MIKAN         ; $25
	trainer_const TUSKUSHI          ; $26
	trainer_const JUNIOR        ; $27
	trainer_const JACK       ; $28
	trainer_const SURGE     ; $29
	trainer_const SONY2         ; $2A
	trainer_const SONY3         ; $2B
	trainer_const WILL       ; $2C
	trainer_const CHANNELER     ; $2D
	trainer_const KOGA        ; $2E
	trainer_const KAREN         ; $2F
