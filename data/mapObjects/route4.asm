Route4Object:
	db $2c ; border block

	db $4 ; warps
	db $5, $b, $0, MT_MOON_POKECENTER
	db $5, $12, $0, MT_MOON_1
	db $5, $18, $7, MT_MOON_2
	db 1, 70, $0, UNKNOWN_DUNGEON_4
	
	db $3 ; signs
	db $5, $c, $5 ; PokeCenterSignText
	db $7, $11, $6 ; Route4Text5
	db $7, $1b, $7 ; Route4Text6

	db $4 ; objects
	object SPRITE_LASS, $9, $8, WALK, $0, $1 ; person
	object SPRITE_LASS, $3f, $3, STAY, RIGHT, $2, OPP_LASS, $4
	object SPRITE_BALL, $39, $3, STAY, NONE, $3, TM_46
	object SPRITE_BLACK_HAIR_BOY_1, $46, $2, STAY, DOWN, $4 ; dadcave blocker

	; warp-to
	EVENT_DISP ROUTE_4_WIDTH, $5, $b ; MT_MOON_POKECENTER
	EVENT_DISP ROUTE_4_WIDTH, $5, $12 ; MT_MOON_1
	EVENT_DISP ROUTE_4_WIDTH, $5, $18 ; MT_MOON_2
	EVENT_DISP ROUTE_4_WIDTH, 1, 70 ; unknown dungeon 4
