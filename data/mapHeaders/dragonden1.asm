DragonDen1_h:
	db CAVERN ; tileset
	db DRAGON_DEN_1_HEIGHT, DRAGON_DEN_1_WIDTH ; dimensions (y, x)
	dw DragonDen1Blocks, DragonDen1TextPointers, DragonDen1Script ; blocks, texts, scripts
	db $00 ; connections
	dw DragonDen1Object ; objects
