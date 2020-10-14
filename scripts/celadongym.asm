CeladonGymScript:
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	call nz, CeladonGymScript_48927
	call EnableAutoTextBoxDrawing
	ld hl, CeladonGymTrainerHeader0
	ld de, CeladonGymScriptPointers
	ld a, [wCeladonGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wCeladonGymCurScript], a
	ret

CeladonGymScript_48927:
	ld hl, Gym4CityName
	ld de, Gym4LeaderName
	jp LoadGymLeaderAndCityName

Gym4CityName:
	db "CELADON CITY@"

Gym4LeaderName:
	db "MIKAN@"

CeladonGymText_48943:
	xor a
	ld [wJoyIgnore], a
	ld [wCeladonGymCurScript], a
	ld [wCurMapScript], a
	ret

CeladonGymScriptPointers:
	dw ArrowSpinnerScript ; new
	;dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw CeladonGymScript3
	dw ArrowSpinnerPart2 ; new

ArrowSpinnerScript:
	ld a, [wYCoord]
	ld b, a
	ld a, [wXCoord]
	ld c, a
	ld hl, CeladonGymArrowTilePlayerMovement
	call DecodeArrowMovementRLE
	cp $ff
	jp z, CheckFightingMapTrainers
	ld hl, wd736
	set 7, [hl]
	call StartSimulatingJoypadStates
	ld a, SFX_ARROW_TILES
	call PlaySound
	ld a, $ff
	ld [wJoyIgnore], a
	ld a, $4 ; was 3
	ld [wCurMapScript], a
	;ld hl, wd736
	;res 7, [hl] ; dumbass workaround: because I can't figure out the spinning bug, now the tiles just walk the player
	ret

ArrowSpinnerPart2:
	ld a, [wSimulatedJoypadStatesIndex]
	and a
	jr nz, .asm_74980
	xor a
	ld [wJoyIgnore], a
	ld hl, wd736
	res 7, [hl]
	ld a, $0
	ld [wCurMapScript], a
	ret
.asm_74980
	jpba LoadSpinnerArrowTiles

;format:
;db y,x
;dw pointer to movement
;on the map I organized these from top to bottom, left to right
CeladonGymArrowTilePlayerMovement:
	db $2,$4
	dw CeladonGymArrowMovement1
	db $4,$0
	dw CeladonGymArrowMovement2
	db $4,$5
	dw CeladonGymArrowMovement3
	db $4,$7
	dw CeladonGymArrowMovement4
	
	db $5,$5
	dw CeladonGymArrowMovement6
	db $5,$7
	dw CeladonGymArrowMovement7
	db $8,$3
	dw CeladonGymArrowMovement8
	db $8,$4
	dw CeladonGymArrowMovement9
	
	db $9,$3
	dw CeladonGymArrowMovement11
	db $a,$0
	dw CeladonGymArrowMovement12
	db $a,$5
	dw CeladonGymArrowMovement13
	db $a,$8
	dw CeladonGymArrowMovement14
	db $b,$2
	dw CeladonGymArrowMovement15
	db $b,$3
	dw CeladonGymArrowMovement16
	db $b,$5
	dw CeladonGymArrowMovement17
	db $b,$6
	dw CeladonGymArrowMovement18
	db $b,$7
	dw CeladonGymArrowMovement19
	db $c,$7
	dw CeladonGymArrowMovement20
	db $d,$5
	dw CeladonGymArrowMovement21
	db $d,$7
	dw CeladonGymArrowMovement22
	db $f,$4
	dw CeladonGymArrowMovement23
	db $f,$5
	dw CeladonGymArrowMovement24
	db $FF

;format: direction, count
;each list is read starting from the $FF and working backwards
CeladonGymArrowMovement1:
	db D_DOWN,$04
	db $FF

CeladonGymArrowMovement2:
	db D_RIGHT,$02
	db $FF

CeladonGymArrowMovement3:
	db D_LEFT,$01
	db $FF

CeladonGymArrowMovement4:
	db D_LEFT,$03
	db $FF


CeladonGymArrowMovement6:
	db D_LEFT,$03
	db $FF

CeladonGymArrowMovement7:
	db D_LEFT,$05
	db $FF

CeladonGymArrowMovement8:
	db D_LEFT,$01
	db $FF

CeladonGymArrowMovement9:
	db D_DOWN,$05
	db $FF


CeladonGymArrowMovement11:
	db D_LEFT,$01
	db $FF

CeladonGymArrowMovement12:
	db D_DOWN,$01
	db $FF

CeladonGymArrowMovement13:
	db D_LEFT,$04
	db $FF

CeladonGymArrowMovement14:
	db D_DOWN,$04
	db $FF

CeladonGymArrowMovement15:
	db D_UP,$03
	db $FF

CeladonGymArrowMovement16:
	db D_LEFT,$01
	db D_UP,$02
	db $FF

CeladonGymArrowMovement17:
	db D_LEFT,$01
	db D_UP,$02
	db D_LEFT,$02
	db $FF

CeladonGymArrowMovement18:
	db D_UP,$01
	db $FF

CeladonGymArrowMovement19:
	db D_UP,$03
	db $FF

CeladonGymArrowMovement20:
	db D_LEFT,$04
	db $FF

CeladonGymArrowMovement21:
	db D_LEFT,$01
	db D_UP,$02
	db D_LEFT,$02
	db D_UP,$02
	db $FF

CeladonGymArrowMovement22:
	db D_LEFT,$01
	db D_UP,$02
	db D_LEFT,$02
	db D_UP,$02
	db D_LEFT,$02
	db $FF

CeladonGymArrowMovement23:
	db D_UP,$02
	db $FF

CeladonGymArrowMovement24:
	db D_LEFT,$01
	db D_UP,$02
	db D_LEFT,$02
	db D_UP,$04
	db $FF



;---------------------------------------------------

CeladonGymScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, CeladonGymText_48943
	ld a, $f0
	ld [wJoyIgnore], a

CeladonGymText_48963:
	ld a, $9
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_ERIKA
	lb bc, TM_04, 1
	call GiveItem
	jr nc, .BagFull
	ld a, $a
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_TM21
	jr .asm_4898c
.BagFull
	ld a, $b
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
.asm_4898c
	ld hl, wObtainedBadges
	set 3, [hl]
	ld hl, wBeatGymFlags
	set 3, [hl]

	; deactivate gym trainers
	SetEventRange EVENT_BEAT_CELADON_GYM_TRAINER_0, EVENT_BEAT_CELADON_GYM_TRAINER_6

	jp CeladonGymText_48943

CeladonGymTextPointers:
	dw CeladonGymText1
	dw CeladonGymText2
	dw CeladonGymText3
	dw CeladonGymText4
	dw CeladonGymText5
	dw CeladonGymText6
	dw CeladonGymText7
	dw CeladonGymText8
	dw CeladonGymText9
	dw TM21Text
	dw TM21NoRoomText

CeladonGymTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_0
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_0
	dw CeladonGymBattleText2 ; TextBeforeBattle
	dw CeladonGymAfterBattleText2 ; TextAfterBattle
	dw CeladonGymEndBattleText2 ; TextEndBattle
	dw CeladonGymEndBattleText2 ; TextEndBattle

CeladonGymTrainerHeader1:
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_1
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_1
	dw CeladonGymBattleText3 ; TextBeforeBattle
	dw CeladonGymAfterBattleText3 ; TextAfterBattle
	dw CeladonGymEndBattleText3 ; TextEndBattle
	dw CeladonGymEndBattleText3 ; TextEndBattle

CeladonGymTrainerHeader2:
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_2
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_2
	dw CeladonGymBattleText4 ; TextBeforeBattle
	dw CeladonGymAfterBattleText4 ; TextAfterBattle
	dw CeladonGymEndBattleText4 ; TextEndBattle
	dw CeladonGymEndBattleText4 ; TextEndBattle

CeladonGymTrainerHeader3:
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_3
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_3
	dw CeladonGymBattleText5 ; TextBeforeBattle
	dw CeladonGymAfterBattleText5 ; TextAfterBattle
	dw CeladonGymEndBattleText5 ; TextEndBattle
	dw CeladonGymEndBattleText5 ; TextEndBattle

CeladonGymTrainerHeader4:
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_4
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_4
	dw CeladonGymBattleText6 ; TextBeforeBattle
	dw CeladonGymAfterBattleText6 ; TextAfterBattle
	dw CeladonGymEndBattleText6 ; TextEndBattle
	dw CeladonGymEndBattleText6 ; TextEndBattle

CeladonGymTrainerHeader5:
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_5
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_5
	dw CeladonGymBattleText7 ; TextBeforeBattle
	dw CeladonGymAfterBattleText7 ; TextAfterBattle
	dw CeladonGymEndBattleText7 ; TextEndBattle
	dw CeladonGymEndBattleText7 ; TextEndBattle

CeladonGymTrainerHeader6:
	dbEventFlagBit EVENT_BEAT_CELADON_GYM_TRAINER_6, 1
	db ($1 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_CELADON_GYM_TRAINER_6, 1
	dw CeladonGymBattleText8 ; TextBeforeBattle
	dw CeladonGymAfterBattleText8 ; TextAfterBattle
	dw CeladonGymEndBattleText8 ; TextEndBattle
	dw CeladonGymEndBattleText8 ; TextEndBattle

	db $ff

CeladonGymText1:
	TX_ASM
	CheckEvent EVENT_BEAT_ERIKA
	jr z, .asm_48a2d
	CheckEventReuseA EVENT_GOT_TM21
	jr nz, .asm_48a25
	call z, CeladonGymText_48963
	call DisableWaitingAfterTextDisplay
	jr .asm_48a5b
.asm_48a25
	ld hl, CeladonGymText_48a68
	call PrintText
	jr .asm_48a5b
.asm_48a2d
	ld hl, CeladonGymText_48a5e
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, CeladonGymText_48a63
	ld de, CeladonGymText_48a63
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $4
	ld [wGymLeaderNo], a
	ld a, $3 ; HERE WAS 3
	ld [wCeladonGymCurScript], a
	ld [wCurMapScript], a
.asm_48a5b
	jp TextScriptEnd

CeladonGymText_48a5e:
	TX_FAR _CeladonGymText_48a5e
	db "@"

CeladonGymText_48a63:
	TX_FAR _CeladonGymText_48a63
	db "@"

CeladonGymText_48a68:
	TX_FAR _CeladonGymText_48a68
	db "@"

CeladonGymText9:
	TX_FAR _CeladonGymText9
	db "@"

TM21Text:
	TX_FAR _ReceivedTM21Text
	TX_SFX_ITEM_1
	TX_FAR _TM21ExplanationText
	db "@"

TM21NoRoomText:
	TX_FAR _TM21NoRoomText
	db "@"

CeladonGymText2:
	TX_ASM
	ld hl, CeladonGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText2:
	TX_FAR _CeladonGymBattleText2
	db "@"

CeladonGymEndBattleText2:
	TX_FAR _CeladonGymEndBattleText2
	db "@"

CeladonGymAfterBattleText2:
	TX_FAR _CeladonGymAfterBattleText2
	db "@"

CeladonGymText3:
	TX_ASM
	ld hl, CeladonGymTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText3:
	TX_FAR _CeladonGymBattleText3
	db "@"

CeladonGymEndBattleText3:
	TX_FAR _CeladonGymEndBattleText3
	db "@"

CeladonGymAfterBattleText3:
	TX_FAR _CeladonGymAfterBattleText3
	db "@"

CeladonGymText4:
	TX_ASM
	ld hl, CeladonGymTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText4:
	TX_FAR _CeladonGymBattleText4
	db "@"

CeladonGymEndBattleText4:
	TX_FAR _CeladonGymEndBattleText4
	db "@"

CeladonGymAfterBattleText4:
	TX_FAR _CeladonGymAfterBattleText4
	db "@"

CeladonGymText5:
	TX_ASM
	ld hl, CeladonGymTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText5:
	TX_FAR _CeladonGymBattleText5
	db "@"

CeladonGymEndBattleText5:
	TX_FAR _CeladonGymEndBattleText5
	db "@"

CeladonGymAfterBattleText5:
	TX_FAR _CeladonGymAfterBattleText5
	db "@"

CeladonGymText6:
	TX_ASM
	ld hl, CeladonGymTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText6:
	TX_FAR _CeladonGymBattleText6
	db "@"

CeladonGymEndBattleText6:
	TX_FAR _CeladonGymEndBattleText6
	db "@"

CeladonGymAfterBattleText6:
	TX_FAR _CeladonGymAfterBattleText6
	db "@"

CeladonGymText7:
	TX_ASM
	ld hl, CeladonGymTrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText7:
	TX_FAR _CeladonGymBattleText7
	db "@"

CeladonGymEndBattleText7:
	TX_FAR _CeladonGymEndBattleText7
	db "@"

CeladonGymAfterBattleText7:
	TX_FAR _CeladonGymAfterBattleText7
	db "@"

CeladonGymText8:
	TX_ASM
	ld hl, CeladonGymTrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

CeladonGymBattleText8:
	TX_FAR _CeladonGymBattleText8
	db "@"

CeladonGymEndBattleText8:
	TX_FAR _CeladonGymEndBattleText8
	db "@"

CeladonGymAfterBattleText8:
	TX_FAR _CeladonGymAfterBattleText8
	db "@"
