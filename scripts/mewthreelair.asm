MewthreeLairScript:
	call EnableAutoTextBoxDrawing
	ld hl, MewtwoTrainerHeader
	ld de, .ScriptPointers
	ld a, [wUnknownDungeon3CurScript]
	call ExecuteCurMapScriptInTable
	ld [wUnknownDungeon3CurScript], a
	ret

.ScriptPointers
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

MewthreeLairTextPointers:
	dw MewtwoText
	dw MewthreeLairText1
	dw MewthreeLairText2
	dw MewthreeLairText3
	dw MewthreeLairText4
	dw MewthreeLairText5
	dw PickUpItemText
	dw PickUpItemText

MewtwoTrainerHeader:
	dbEventFlagBit EVENT_BEAT_MEWTWO
	db ($0 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_MEWTWO
	dw MewtwoBattleText ; TextBeforeBattle
	dw MewtwoBattleText ; TextAfterBattle
	dw MewtwoBattleText ; TextEndBattle
	dw MewtwoBattleText ; TextEndBattle

MewthreeLairTrainerHeader1:
	dbEventFlagBit EVENT_LAIR_TRAINER1
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_LAIR_TRAINER1
	dw MewthreeLairBattleText1 ; TextBeforeBattle
	dw MewthreeLairAfterBattleText1 ; TextAfterBattle
	dw MewthreeLairEndBattleText1 ; TextEndBattle
	dw MewthreeLairEndBattleText1 ; TextEndBattle

MewthreeLairTrainerHeader2:
	dbEventFlagBit EVENT_LAIR_TRAINER2
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_LAIR_TRAINER2
	dw MewthreeLairBattleText2 ; TextBeforeBattle
	dw MewthreeLairAfterBattleText2 ; TextAfterBattle
	dw MewthreeLairEndBattleText2 ; TextEndBattle
	dw MewthreeLairEndBattleText2 ; TextEndBattle

MewthreeLairTrainerHeader3:
	dbEventFlagBit EVENT_LAIR_TRAINER3
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_LAIR_TRAINER3
	dw MewthreeLairBattleText3 ; TextBeforeBattle
	dw MewthreeLairAfterBattleText3 ; TextAfterBattle
	dw MewthreeLairEndBattleText3 ; TextEndBattle
	dw MewthreeLairEndBattleText3; TextEndBattle

MewthreeLairTrainerHeader4:
	dbEventFlagBit EVENT_LAIR_BLAINE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_LAIR_BLAINE
	dw MewthreeLairBattleText4 ; TextBeforeBattle
	dw MewthreeLairAfterBattleText4 ; TextAfterBattle
	dw MewthreeLairEndBattleText4 ; TextEndBattle
	dw MewthreeLairEndBattleText4 ; TextEndBattle

MewthreeLairTrainerHeader5:
	dbEventFlagBit EVENT_LAIR_BLUE
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_LAIR_BLUE
	dw MewthreeLairBattleText5 ; TextBeforeBattle
	dw MewthreeLairAfterBattleText5 ; TextAfterBattle
	dw MewthreeLairEndBattleText5 ; TextEndBattle
	dw MewthreeLairEndBattleText5 ; TextEndBattle

	db $ff

MewthreeLairText1:
	TX_ASM
	ld hl, MewthreeLairTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

MewthreeLairBattleText1:
	TX_FAR _MewthreeLairBattleText1
	db "@"

MewthreeLairEndBattleText1:
	TX_FAR _MewthreeLairEndBattleText1
	db "@"

MewthreeLairAfterBattleText1:
	TX_FAR _MewthreeLairAfterBattleText1
	db "@"


MewthreeLairText2:
	TX_ASM
	ld hl, MewthreeLairTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

MewthreeLairBattleText2:
	TX_FAR _MewthreeLairBattleText2
	db "@"

MewthreeLairEndBattleText2:
	TX_FAR _MewthreeLairEndBattleText2
	db "@"

MewthreeLairAfterBattleText2:
	TX_FAR _MewthreeLairAfterBattleText2
	db "@"

MewthreeLairText3:
	TX_ASM
	ld hl, MewthreeLairTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

MewthreeLairBattleText3:
	TX_FAR _MewthreeLairBattleText3
	db "@"

MewthreeLairEndBattleText3:
	TX_FAR _MewthreeLairEndBattleText3
	db "@"

MewthreeLairAfterBattleText3:
	TX_FAR _MewthreeLairAfterBattleText3
	db "@"

MewthreeLairText4:
	TX_ASM
	ld hl, MewthreeLairTrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

MewthreeLairBattleText4:
	TX_FAR _MewthreeLairBattleText4
	db "@"

MewthreeLairEndBattleText4:
	TX_FAR _MewthreeLairEndBattleText4
	db "@"

MewthreeLairAfterBattleText4:
	TX_FAR _MewthreeLairAfterBattleText4
	db "@"

MewthreeLairText5:
	TX_ASM
	ld hl, MewthreeLairTrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

MewthreeLairBattleText5:
	TX_FAR _MewthreeLairBattleText5
	db "@"

MewthreeLairEndBattleText5:
	TX_FAR _MewthreeLairEndBattleText5
	db "@"

MewthreeLairAfterBattleText5:
	TX_FAR _MewthreeLairAfterBattleText5
	db "@"

;----------------------------------------------------------------------------

MewtwoText:
	TX_ASM
	Call DetermineReferenceLevel
	ld hl, wMapSpriteExtraData+$1
	ld a, [wReferenceLevel]
	ld [hl], a
	ld hl, MewtwoTrainerHeader
	call TalkToTrainer
	ld a, HS_LAIR_TRAINER_1
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_LAIR_TRAINER_2
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_LAIR_TRAINER_3
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_LAIR_BLAINE
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_LAIR_BLUE
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_ROUTE_4_DADBLOCKER
	ld [wMissableObjectIndex], a
	predef HideObject
	jp TextScriptEnd

MewtwoBattleText:
	TX_FAR _MewtwoBattleText
	TX_ASM
	ld a, MEWTHREE
	call PlayCry
	call WaitForSoundToFinish
	jp TextScriptEnd
