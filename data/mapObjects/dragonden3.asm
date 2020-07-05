DragonDen3Object:
	db $7d ; border block

	db $2 ; warps
	db $1, $3, $1, DRAGON_DEN_2
	db $1, $1B, $0, DRAGON_DEN_4

	db $0 ; signs

	db $0 ; objects	

	; warp-to
	EVENT_DISP DRAGON_DEN_3_WIDTH, $1, $3	
	EVENT_DISP DRAGON_DEN_3_WIDTH, $1, $1B
