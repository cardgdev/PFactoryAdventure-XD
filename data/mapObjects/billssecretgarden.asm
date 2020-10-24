BillsSecretGardenObject:
	db $f ; border block

	db $3 ; warps
	db $12, $B, $2, BILLS_HOUSE
	db $12, $C, $2, BILLS_HOUSE
	db $5, $A, $0, DRAGON_DEN_1

	db $1 ; signs
	db $11, $B, $1 ;SecretGardenSign

	db $0 ; objects	

	; warp-to
	EVENT_DISP BILLS_SECRET_GARDEN_WIDTH, $12, $B	
	EVENT_DISP BILLS_SECRET_GARDEN_WIDTH, $12, $C
	EVENT_DISP BILLS_SECRET_GARDEN_WIDTH, $5, $A
