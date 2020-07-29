BorderPalettes:
	INCBIN "gfx/red/sgbborder.map"

	ds $100

	RGB 30,29,29 ; PAL_SGB1
	RGB 19,19,19 ; colors from indoor gray in pokecrystal
	RGB 13,13,13
	RGB 7,7,7

	ds $18

	RGB 30,29,29 ; PAL_SGB2
	RGB 22,31,16
	RGB 27,20,6
	RGB 15,15,15

	ds $18

	RGB 30,29,29 ; PAL_SGB3
	RGB 31,31,17
	RGB 18,21,29
	RGB 15,15,15

	ds $18

SGBBorderGraphics:
	INCBIN "gfx/red/sgbborder.2bpp"
