BillsSecretGardenObject:
	db $f ; border block

	db $3 ; warps
	db $E, $7, $2, BILLS_HOUSE
	db $E, $8, $2, BILLS_HOUSE
	db $1, $6, $0, DRAGON_DEN_1

	db $1 ; signs
	db $D, $7, $1 ;SecretGardenSign

	db $0 ; objects	

	; warp-to
	EVENT_DISP BILLS_SECRET_GARDEN_WIDTH, $E, $7	
	EVENT_DISP BILLS_SECRET_GARDEN_WIDTH, $E, $8
	EVENT_DISP BILLS_SECRET_GARDEN_WIDTH, $1, $6
