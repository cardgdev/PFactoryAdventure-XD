DragonDen3Script:
	call EnableAutoTextBoxDrawing
	ld hl, DragonDen3TrainerHeader1
	ld de, .ScriptPointers
	ld a, [wDragonDen3CurScript]
	call ExecuteCurMapScriptInTable
	ld [wDragonDen3CurScript], a
	ret

.ScriptPointers
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

DragonDen3TextPointers:
	dw DragonDen3Text1
	dw DragonDen3Text2
	dw DragonDen3Text3
	dw DragonDen3Text4
	dw DragonDen3Text5
	dw DragonDen3Text6

DragonDen3TrainerHeader1:
	dbEventFlagBit EVENT_BEAT_DRAGON_DEN_3_TRAINER_1
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_DRAGON_DEN_3_TRAINER_1
	dw DragonDen3BattleText1 ; TextBeforeBattle
	dw DragonDen3AfterBattleText1 ; TextAfterBattle
	dw DragonDen3EndBattleText1 ; TextEndBattle
	dw DragonDen3EndBattleText1 ; TextEndBattle

DragonDen3TrainerHeader2:
	dbEventFlagBit EVENT_BEAT_DRAGON_DEN_3_TRAINER_2
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_DRAGON_DEN_3_TRAINER_2
	dw DragonDen3BattleText2 ; TextBeforeBattle
	dw DragonDen3AfterBattleText2 ; TextAfterBattle
	dw DragonDen3EndBattleText2 ; TextEndBattle
	dw DragonDen3EndBattleText2 ; TextEndBattle

DragonDen3TrainerHeader3:
	dbEventFlagBit EVENT_BEAT_DRAGON_DEN_3_TRAINER_3
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_DRAGON_DEN_3_TRAINER_3
	dw DragonDen3BattleText3 ; TextBeforeBattle
	dw DragonDen3AfterBattleText3 ; TextAfterBattle
	dw DragonDen3EndBattleText3 ; TextEndBattle
	dw DragonDen3EndBattleText3 ; TextEndBattle

DragonDen3TrainerHeader4:
	dbEventFlagBit EVENT_BEAT_DRAGON_DEN_3_TRAINER_4
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_DRAGON_DEN_3_TRAINER_4
	dw DragonDen3BattleText4 ; TextBeforeBattle
	dw DragonDen3AfterBattleText4 ; TextAfterBattle
	dw DragonDen3EndBattleText4 ; TextEndBattle
	dw DragonDen3EndBattleText4 ; TextEndBattle

DragonDen3TrainerHeader5:
	dbEventFlagBit EVENT_BEAT_DRAGON_DEN_3_TRAINER_5
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_DRAGON_DEN_3_TRAINER_5
	dw DragonDen3BattleText5 ; TextBeforeBattle
	dw DragonDen3AfterBattleText5 ; TextAfterBattle
	dw DragonDen3EndBattleText5 ; TextEndBattle
	dw DragonDen3EndBattleText5 ; TextEndBattle

DragonDen3TrainerHeader6:
	dbEventFlagBit EVENT_BEAT_DRAGON_DEN_3_TRAINER_6
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_DRAGON_DEN_3_TRAINER_6
	dw DragonDen3BattleText6 ; TextBeforeBattle
	dw DragonDen3AfterBattleText6 ; TextAfterBattle
	dw DragonDen3EndBattleText6 ; TextEndBattle
	dw DragonDen3EndBattleText6 ; TextEndBattle

	db $ff

;----------------------------------------------------------------------------------

DragonDen3Text1:
	TX_ASM
	ld hl, DragonDen3TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

DragonDen3BattleText1:
	TX_FAR _DragonDen3BattleText1
	db "@"

DragonDen3EndBattleText1:
	TX_FAR _DragonDen3EndBattleText1
	db "@"

DragonDen3AfterBattleText1:
	TX_FAR _DragonDen3AfterBattleText1
	db "@"

DragonDen3Text2:
	TX_ASM
	ld hl, DragonDen3TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

DragonDen3BattleText2:
	TX_FAR _DragonDen3BattleText2
	db "@"

DragonDen3EndBattleText2:
	TX_FAR _DragonDen3EndBattleText2
	db "@"

DragonDen3AfterBattleText2:
	TX_FAR _DragonDen3AfterBattleText2
	db "@"

DragonDen3Text3:
	TX_ASM
	ld hl, DragonDen3TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

DragonDen3BattleText3:
	TX_FAR _DragonDen3BattleText3
	db "@"

DragonDen3EndBattleText3:
	TX_FAR _DragonDen3EndBattleText3
	db "@"

DragonDen3AfterBattleText3:
	TX_FAR _DragonDen3AfterBattleText3
	db "@"

DragonDen3Text4:
	TX_ASM
	ld hl, DragonDen3TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

DragonDen3BattleText4:
	TX_FAR _DragonDen3BattleText4
	db "@"

DragonDen3EndBattleText4:
	TX_FAR _DragonDen3EndBattleText4
	db "@"

DragonDen3AfterBattleText4:
	TX_FAR _DragonDen3AfterBattleText4
	db "@"

DragonDen3Text5:
	TX_ASM
	ld hl, DragonDen3TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

DragonDen3BattleText5:
	TX_FAR _DragonDen3BattleText5
	db "@"

DragonDen3EndBattleText5:
	TX_FAR _DragonDen3EndBattleText5
	db "@"

DragonDen3AfterBattleText5:
	TX_FAR _DragonDen3AfterBattleText5
	db "@"

DragonDen3Text6:
	TX_ASM
	ld hl, DragonDen3TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

DragonDen3BattleText6:
	TX_FAR _DragonDen3BattleText6
	db "@"

DragonDen3EndBattleText6:
	TX_FAR _DragonDen3EndBattleText6
	db "@"

DragonDen3AfterBattleText6:
	TX_FAR _DragonDen3AfterBattleText6
	db "@"
;------------------------------------------------------------------------------------

;cooltrainer 1
_DragonDen3BattleText1::
	text "DUMMY1"
	done

_DragonDen3EndBattleText1::
	text "DUMMY2"
	prompt

_DragonDen3AfterBattleText1::
	text "DUMMY3"
	done

;cooltrainer 2
_DragonDen3BattleText2::
	text "DUMMY1"
	done

_DragonDen3EndBattleText2::
	text "DUMMY2"
	prompt

_DragonDen3AfterBattleText2::
	text "DUMMY3"
	done

;cooltrainer 3
_DragonDen3BattleText3::
	text "DUMMY1"
	done

_DragonDen3EndBattleText3::
	text "DUMMY2"
	prompt

_DragonDen3AfterBattleText3::
	text "DUMMY3"
	done

;cooltrainer 4
_DragonDen3BattleText4::
	text "DUMMY1"
	done

_DragonDen3EndBattleText4::
	text "DUMMY2"
	prompt

_DragonDen3AfterBattleText4::
	text "DUMMY3"
	done

;cooltrainer 5
_DragonDen3BattleText5::
	text "DUMMY1"
	done

_DragonDen3EndBattleText5::
	text "DUMMY2"
	prompt

_DragonDen3AfterBattleText5::
	text "DUMMY3"
	done

;cooltrainer 6
_DragonDen3BattleText6::
	text "DUMMY1"
	done

_DragonDen3EndBattleText6::
	text "DUMMY2"
	prompt

_DragonDen3AfterBattleText6::
	text "DUMMY3"
	done

