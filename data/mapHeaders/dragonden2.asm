DragonDen2_h:
	db OVERWORLD ; tileset
	db DRAGON_DEN_2_HEIGHT, DRAGON_DEN_2_WIDTH ; dimensions (y, x)
	dw DragonDen2Blocks, DragonDen2TextPointers, DragonDen2Script ; blocks, texts, scripts
	db $00 ; connections
	dw DragonDen2Object ; objects
