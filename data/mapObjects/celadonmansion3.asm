CeladonMansion3Object:
	db $f ; border block

	db $4 ; warps
	db $1, $6, $0, CELADON_MANSION_2
	db $1, $7, $0, CELADON_MANSION_4
	db $1, $2, $1, CELADON_MANSION_4
	db $1, $4, $3, CELADON_MANSION_2

	db $4 ; signs
	db $3, $1, $a ; CeladonMansion3Text5
	db $3, $4, $b ; CeladonMansion3Text6
	db $6, $1, $c ; CeladonMansion3Text7
	db $9, $4, $d ; CeladonMansion3Text8

	db $9 ; objects
	object SPRITE_BLACK_HAIR_BOY_2, $0, $4, WALK, $1, $1 ; person
	object SPRITE_OAK_AIDE, $4, $4, WALK, $1, $2 ; person
	object SPRITE_BLACK_HAIR_BOY_2, $0, $8, STAY, NONE, $3 ; person
	object SPRITE_LAPRAS_GIVER, $2, $3, STAY, NONE, $4 ; person
	object SPRITE_BLACK_HAIR_BOY_1, $1, $a, WALK, $2, $5 ; person
	object SPRITE_BLACK_HAIR_BOY_1, $5, $b, WALK, $1, $6 ; person
	object SPRITE_FLAMES, $2, $8, STAY, NONE, $7 ; fire
	object SPRITE_FLAMES, $4, $6, STAY, NONE, $8 ; fire
	object SPRITE_FLAMES, $0, $3, STAY, NONE, $9 ; fire

	; warp-to
	EVENT_DISP CELADON_MANSION_3_WIDTH, $1, $6 ; CELADON_MANSION_2
	EVENT_DISP CELADON_MANSION_3_WIDTH, $1, $7 ; CELADON_MANSION_4
	EVENT_DISP CELADON_MANSION_3_WIDTH, $1, $2 ; CELADON_MANSION_4
	EVENT_DISP CELADON_MANSION_3_WIDTH, $1, $4 ; CELADON_MANSION_2
