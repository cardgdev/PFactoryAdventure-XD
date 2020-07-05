BillsSecretGarden_h:
	db OVERWORLD ; tileset
	db BILLS_SECRET_GARDEN_HEIGHT, BILLS_SECRET_GARDEN_WIDTH ; dimensions (y, x)
	dw BillsSecretGardenBlocks, BillsSecretGardenTextPointers, BillsSecretGardenScript ; blocks, texts, scripts
	db $00 ; connections
	dw BillsSecretGardenObject ; objects
