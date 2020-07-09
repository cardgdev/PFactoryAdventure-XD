VermillionTradingClubScript:
	jp EnableAutoTextBoxDrawing

VermillionTradingClubTextPointers:
	dw VermillionTradingClubText1
	dw VermillionTradingClubText2
	dw VermillionTradingClubText3
	dw VermillionTradingClubText4
	dw VermillionTradingClubText5

VermillionTradingClubText1:
	TX_ASM
	ld a, $2
	ld [wWhichTrade], a
VermillionTradingClubScriptEnd:
	predef DoInGameTradeDialogue
	jp TextScriptEnd

VermillionTradingClubText2:
	TX_ASM
	ld a, $a
	ld [wWhichTrade], a
	jr VermillionTradingClubScriptEnd

VermillionTradingClubText3:
	TX_ASM
	ld a, $b
	ld [wWhichTrade], a
	jr VermillionTradingClubScriptEnd

VermillionTradingClubText4:
	TX_ASM
	ld a, $c
	ld [wWhichTrade], a
	jr VermillionTradingClubScriptEnd

VermillionTradingClubText5:
	TX_ASM
	ld a, $d
	ld [wWhichTrade], a
	jr VermillionTradingClubScriptEnd

