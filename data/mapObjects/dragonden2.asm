DragonDen2Object:
	db $f ; border block

	db $2 ; warps
	db $5, $4, $5, DRAGON_DEN_1
	db $9, $1A, $0, DRAGON_DEN_3

	db $0 ; signs

	db $0 ; objects	

	; warp-to
	EVENT_DISP DRAGON_DEN_2_WIDTH, $5, $4	
	EVENT_DISP DRAGON_DEN_2_WIDTH, $9, $1A
