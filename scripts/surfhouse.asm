SurfHouseScript:
	jp EnableAutoTextBoxDrawing

SurfHouseTextPointers:
	dw SurfHouseText1

SurfHouseText1:
	TX_ASM
	CheckEvent EVENT_GOT_SURFBOARD
	jr nz, .SurfboardOwned
	ld hl, SurfHouseDudeText1
	call PrintText
	ld a, 6 ; badges needed
	ld b, a 
	ld a, [wObtainedBadges]
	ld c, a
	ld a, 0
	ld e, a	
	ld d, 0

.countBadges
	rr c
	jp nc, .noBadge
	ld a, d	
	inc a 
	ld d, a
.noBadge
	ld a, e
	inc a
	cp 8
	ld e, a 
	jr nz, .countBadges
	ld a, d 
	cp b
	jr c, .notEnoughBadges
	lb bc, SURFBOARD, 1
	call GiveItem
	jr nc, .BagFull
	ld hl, SurfHouseDudeGiveHMText
	call PrintText
	ld hl, SurfHouseDudeText4
	call PrintText
	SetEvent EVENT_GOT_SURFBOARD
	jr .end
.BagFull
	ld hl, SurfHouseDudeText5
	call PrintText
	jr .end
.notEnoughBadges	
	ld hl, SurfHouseDudeText3
	call PrintText
	jr .end
.SurfboardOwned
	ld hl, SurfHouseDudeText4
	call PrintText
.end
	jp TextScriptEnd
	
SurfHouseDudeText1:
	TX_FAR _SurfHouseDudeText1
	db "@"
	

SurfHouseDudeText3:
	TX_FAR _SurfHouseDudeText3
	db "@"

SurfHouseDudeText4:
	TX_FAR _SurfHouseDudeText4
	db "@"		
	
SurfHouseDudeText5:
	TX_FAR _SurfHouseDudeText5
	db "@"		
	
SurfHouseDudeGiveHMText:
	TX_FAR _SurfHouseDudeGiveHMText1
	TX_SFX_KEY_ITEM
	db "@"	

;----------------------------------------------------------------------

_SurfHouseDudeText4::
	text "Now go ride some"
	line "gnarly waves,"
	cont "my dude!"
	done

_SurfHouseDudeText1::
	text "Hey dude! If you"
	line "have 6 BADGES"
	cont "then I'll give"
	cont "you a radical"
	cont "SURFBOARD that"
	cont "lets you cross"
	cont "water without"
	cont "an HM move!"
	prompt	

_SurfHouseDudeText3::
	text "Dang, you don't"
	line "have enough..."
	cont "Come see me when"
	cont "you have them!"
	done	

_SurfHouseDudeText5::
	text "You don't have"
	line "room for it..."
	done
	
_SurfHouseDudeGiveHMText1::
	text "<PLAYER> received"
	line "a SURFBOARD!"
	done
