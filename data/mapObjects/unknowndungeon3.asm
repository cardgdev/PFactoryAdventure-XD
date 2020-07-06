UnknownDungeon3Object:
	db $7d ; border block
;warps
	db $2
	db $6, $3, $8, UNKNOWN_DUNGEON_1
	db $D, $1B, $0, MEWTHREE_LAIR
	

	db $0 ; signs

	db $2 ; objects
	object SPRITE_BALL, $10, $9, STAY, NONE, $1, ULTRA_BALL
	object SPRITE_BALL, $12, $1, STAY, NONE, $2, MIST_STONE

	; warp-to
	EVENT_DISP UNKNOWN_DUNGEON_3_WIDTH, $6, $3 ; UNKNOWN_DUNGEON_1
	EVENT_DISP UNKNOWN_DUNGEON_3_WIDTH, $D, $1B ; MEWTHREE_LAIR
