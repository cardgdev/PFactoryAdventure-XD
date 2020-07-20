DragonDenLanceRoomObject:
	db $7d ; border block

	db $1 ; warps
	db $3, $5, $4, DRAGON_DEN_1

	db $0 ; signs

	db $1 ; objects	
	object SPRITE_LANCE, $1, $2, STAY, UP, $1 ; person

	; warp-to
	EVENT_DISP DRAGON_DEN_LANCE_ROOM_WIDTH, $3, $5	
