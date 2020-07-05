DragonDenLanceRoom_h:
	db CAVERN ; tileset
	db DRAGON_DEN_LANCE_ROOM_HEIGHT, DRAGON_DEN_LANCE_ROOM_WIDTH ; dimensions (y, x)
	dw DragonDenLanceRoomBlocks, DragonDenLanceRoomTextPointers, DragonDenLanceRoomScript ; blocks, texts, scripts
	db $00 ; connections
	dw DragonDenLanceRoomObject ; objects
