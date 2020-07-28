UnknownDungeon4Object:
	db $7d ; border block

	db 1 ; warps
	db 8, 10, 3, ROUTE_4

	db $0 ; signs

	db $1 ; objects
	object SPRITE_DAD, $11, $10, STAY, UP, $1, OPP_DAD, $1 ; are ya winnin son?

	; warp-to
	EVENT_DISP UNKNOWN_DUNGEON_4_WIDTH, 8, 10 ; route 4
