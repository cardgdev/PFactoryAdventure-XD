CeladonMansion3Script:
	jp EnableAutoTextBoxDrawing

CeladonMansion3TextPointers:
	dw ProgrammerText
	dw GraphicArtistText
	dw WriterText
	dw DirectorText
	dw NewGFGuyText1
	dw NewGFGuyText2
	dw FireText
	dw FireText2
	dw FireText3
	dw GameFreakPCText1
	dw GameFreakPCText2
	dw GameFreakPCText3
	dw GameFreakSignText

ProgrammerText:
	TX_FAR _ProgrammerText
	db "@"

GraphicArtistText:
	TX_FAR _GraphicArtistText
	db "@"

WriterText:
	TX_FAR _WriterText
	db "@"

NewGFGuyText1:
	TX_FAR _NewGFGuy1Text
	db "@"

NewGFGuyText2:
	TX_FAR _NewGFGuy2Text
	db "@"

FireText3:
FireText2:
FireText:
	TX_FAR _FlamesText
	db "@"

DirectorText:
	TX_ASM

	; check pokédex
	ld hl, wPokedexOwned
	ld b, wPokedexOwnedEnd - wPokedexOwned
	call CountSetBits
	ld a, [wNumSetBits]
	cp 190
	jr nc, .CompletedDex
	ld hl, .GameDesigner
	jr .done
.CompletedDex
	ld hl, .CompletedDexText
.done
	call PrintText
	jp TextScriptEnd

.GameDesigner
	TX_FAR _GameDesignerText
	db "@"

.CompletedDexText
	TX_FAR _CompletedDexText
	TX_BLINK
	TX_ASM
	callab DisplayDiploma
	ld a, $1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd

GameFreakPCText1:
	TX_FAR _CeladonMansion3Text5
	db "@"

GameFreakPCText2:
	TX_FAR _CeladonMansion3Text6
	db "@"

GameFreakPCText3:
	TX_FAR _CeladonMansion3Text7
	db "@"

GameFreakSignText:
	TX_FAR _CeladonMansion3Text8
	db "@"
