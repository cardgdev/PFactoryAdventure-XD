CinnabarIslandScript:
	call EnableAutoTextBoxDrawing
	ld hl, wCurrentMapScriptFlags
	set 5, [hl]
	ResetEvent EVENT_MANSION_SWITCH_ON
	ResetEvent EVENT_LAB_STILL_REVIVING_FOSSIL
	ret


CinnabarIslandTextPointers:
	dw CinnabarIslandText1
	dw CinnabarIslandText2
	dw CinnabarIslandText3
	dw MartSignText
	dw PokeCenterSignText
	dw CinnabarIslandText6
	dw CinnabarIslandText7
	dw CinnabarIslandText8

CinnabarIslandText8:
	TX_FAR _CinnabarIslandText8
	db "@"

CinnabarIslandText1:
	TX_FAR _CinnabarIslandText1
	db "@"

CinnabarIslandText2:
	TX_FAR _CinnabarIslandText2
	db "@"

CinnabarIslandText3:
	TX_FAR _CinnabarIslandText3
	db "@"

CinnabarIslandText6:
	TX_FAR _CinnabarIslandText6
	db "@"

CinnabarIslandText7:
	TX_FAR _CinnabarIslandText7
	db "@"
