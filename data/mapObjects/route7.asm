Route7Object:
	db $f ; border block

	db $5 ; warps
	db $18, $12, $2, ROUTE_7_GATE
	db $19, $12, $3, ROUTE_7_GATE
	db $18, $b, $0, ROUTE_7_GATE
	db $19, $b, $1, ROUTE_7_GATE
	db $1b, $5, $0, PATH_ENTRANCE_ROUTE_7

	db $1 ; signs
	db $1b, $3, $1 ; Route7Text1

	db $6 ; objects
	object SPRITE_BLACK_HAIR_BOY_1, $3, $3, STAY, NONE, $2, OPP_YOUNGSTER, $8
	object SPRITE_LASS, $a, $3, STAY, NONE, $3, OPP_LASS, $b
	object SPRITE_LASS, $3, $7, STAY, NONE, $4, OPP_LASS, $c
	object SPRITE_LASS, $a, $7, STAY, NONE, $5, OPP_JR_TRAINER_F, $1
	object SPRITE_BLACK_HAIR_BOY_1, $6, $5, STAY, NONE, $6, OPP_JR_TRAINER_M, $6
	object SPRITE_ROCKET, $d, $3, STAY, DOWN, $7 ; person

	; warp-to
	EVENT_DISP ROUTE_7_WIDTH, $18, $12 ; ROUTE_7_GATE
	EVENT_DISP ROUTE_7_WIDTH, $19, $12 ; ROUTE_7_GATE
	EVENT_DISP ROUTE_7_WIDTH, $18, $b ; ROUTE_7_GATE
	EVENT_DISP ROUTE_7_WIDTH, $18, $b ; ROUTE_7_GATE
	EVENT_DISP ROUTE_7_WIDTH, $1b, $5 ; PATH_ENTRANCE_ROUTE_7
