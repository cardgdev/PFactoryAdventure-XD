DragonDenLanceRoomObject:
	db $7d ; border block

	db $1 ; warps
	db $3, $5, $4, DRAGON_DEN_1

	db $0 ; signs

	db $0 ; objects	

	; warp-to
	EVENT_DISP DRAGON_DEN_LANCE_ROOM_WIDTH, $3, $5	
