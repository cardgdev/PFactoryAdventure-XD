Mansion4Script:
	call Mansion4SoldierCheck
	call Mansion4Script_523cf
	call EnableAutoTextBoxDrawing
	ld hl, Mansion4TrainerHeader0
	ld de, Mansion4ScriptPointers
	ld a, [wMansion4CurScript]
	call ExecuteCurMapScriptInTable
	ld [wMansion4CurScript], a
	ret

Mansion4SoldierCheck: ; runs through all the "rocket" events before removing the gym blocking soldier
	CheckEvent EVENT_BEAT_MT_MOON_EXIT_SUPER_NERD
	jr z, .noHideSoldier
	CheckEventReuseA EVENT_SS_ANNE_LEFT
	jr z, .noHideSoldier
	CheckEventReuseA EVENT_RESCUED_MR_FUJI
	jr z, .noHideSoldier
	CheckEventReuseA EVENT_BEAT_ROCKET_HIDEOUT_GIOVANNI
	jr z, .noHideSoldier
	CheckEventReuseA EVENT_BEAT_SILPH_CO_GIOVANNI
	jr z, .noHideSoldier
	ld a, HS_MANSION_4_SOLDIER
	ld [wMissableObjectIndex], a
	predef HideObject
.noHideSoldier
	ret
	

Mansion4Script_523cf:
	ld hl, wCurrentMapScriptFlags
	bit 5, [hl]
	res 5, [hl]
	ret z
	CheckEvent EVENT_MANSION_SWITCH_ON
	jr nz, .asm_523ff
	ld a, $e
	ld bc, $80d
	call Mansion2Script_5202f
	ld a, $e
	ld bc, $b06
	call Mansion2Script_5202f
	ld a, $5f
	ld bc, $304
	call Mansion2Script_5202f
	ld a, $54
	ld bc, $808
	call Mansion2Script_5202f
	ret
.asm_523ff
	ld a, $2d
	ld bc, $80d
	call Mansion2Script_5202f
	ld a, $5f
	ld bc, $b06
	call Mansion2Script_5202f
	ld a, $e
	ld bc, $304
	call Mansion2Script_5202f
	ld a, $e
	ld bc, $808
	call Mansion2Script_5202f
	ret

Mansion4Script_Switches:
	ld a, [wSpriteStateData1 + 9]
	cp SPRITE_FACING_UP
	ret nz
	xor a
	ld [hJoyHeld], a
	ld a, $9
	ld [hSpriteIndexOrTextID], a
	jp DisplayTextID

Mansion4ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

Mansion4TextPointers:
	dw Mansion4Text1
	dw Mansion4Text2
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw PickUpItemText
	dw Mansion4Text7
	dw SoldierBlockingGuyText
	dw Mansion3Text6

Mansion4TrainerHeader0:
	dbEventFlagBit EVENT_BEAT_MANSION_4_TRAINER_0
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MANSION_4_TRAINER_0
	dw Mansion4BattleText1 ; TextBeforeBattle
	dw Mansion4AfterBattleText1 ; TextAfterBattle
	dw Mansion4EndBattleText1 ; TextEndBattle
	dw Mansion4EndBattleText1 ; TextEndBattle

Mansion4TrainerHeader1:
	dbEventFlagBit EVENT_BEAT_MANSION_4_TRAINER_1
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MANSION_4_TRAINER_1
	dw Mansion4BattleText2 ; TextBeforeBattle
	dw Mansion4AfterBattleText2 ; TextAfterBattle
	dw Mansion4EndBattleText2 ; TextEndBattle
	dw Mansion4EndBattleText2 ; TextEndBattle

	db $ff

SoldierBlockingGuyText:
	TX_FAR _GymBlockerSoldier
	db "@"

_GymBlockerSoldier:
	text "Nobody is allowed"
	line "past this point!"
	
	para "Especially chumpy"
	line "looking kids like"
	cont "you!"

	para "...But if you"
	line "want in then try"
	cont "coming back when"
	cont "you have 7 badges!"
	done

Mansion4Text1:
	TX_ASM
	ld hl, Mansion4TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Mansion4Text2:
	TX_ASM
	ld hl, Mansion4TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Mansion4BattleText1:
	TX_FAR _Mansion4BattleText1
	db "@"

Mansion4EndBattleText1:
	TX_FAR _Mansion4EndBattleText1
	db "@"

Mansion4AfterBattleText1:
	TX_FAR _Mansion4AfterBattleText1
	db "@"

Mansion4BattleText2:
	TX_FAR _Mansion4BattleText2
	db "@"

Mansion4EndBattleText2:
	TX_FAR _Mansion4EndBattleText2
	db "@"

Mansion4AfterBattleText2:
	TX_FAR _Mansion4AfterBattleText2
	db "@"

Mansion4Text7:
	TX_FAR _Mansion4Text7
	db "@"
