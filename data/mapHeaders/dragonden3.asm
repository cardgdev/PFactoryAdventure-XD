DragonDen3_h:
	db CAVERN ; tileset
	db DRAGON_DEN_3_HEIGHT, DRAGON_DEN_3_WIDTH ; dimensions (y, x)
	dw DragonDen3Blocks, DragonDen3TextPointers, DragonDen3Script ; blocks, texts, scripts
	db $00 ; connections
	dw DragonDen3Object ; objects
