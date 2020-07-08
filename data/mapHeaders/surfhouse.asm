SurfHouse_h:
	db HOUSE ; tileset
	db SURF_HOUSE_HEIGHT, SURF_HOUSE_WIDTH ; dimensions (y, x)
	dw SurfHouseBlocks, SurfHouseTextPointers, SurfHouseScript ; blocks, texts, scripts
	db $00 ; connections
	dw SurfHouseObject ; objects
