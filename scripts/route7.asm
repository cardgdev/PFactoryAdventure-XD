Route7Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route7TrainerHeader1
	ld de, .ScriptPointers
	ld a, [wRoute7CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute7CurScript], a
	ret

.ScriptPointers
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle

Route7TextPointers:
	dw Route7Text2
	dw Route7Text3
	dw Route7Text4
	dw Route7Text5
	dw Route7Text6
	dw Route7SoldierText
	dw Route7Text1

Route7TrainerHeader1:
	dbEventFlagBit EVENT_BEAT_ROUTE_7_TRAINER_1
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_7_TRAINER_1
	dw Route7BattleText1 ; TextBeforeBattle
	dw Route7AfterBattleText1 ; TextAfterBattle
	dw Route7EndBattleText1 ; TextEndBattle
	dw Route7EndBattleText1 ; TextEndBattle

Route7TrainerHeader2:
	dbEventFlagBit EVENT_BEAT_ROUTE_7_TRAINER_2
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_7_TRAINER_2
	dw Route7BattleText2 ; TextBeforeBattle
	dw Route7AfterBattleText2 ; TextAfterBattle
	dw Route7EndBattleText2 ; TextEndBattle
	dw Route7EndBattleText2 ; TextEndBattle

Route7TrainerHeader3:
	dbEventFlagBit EVENT_BEAT_ROUTE_7_TRAINER_3
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_7_TRAINER_3
	dw Route7BattleText3 ; TextBeforeBattle
	dw Route7AfterBattleText3 ; TextAfterBattle
	dw Route7EndBattleText3 ; TextEndBattle
	dw Route7EndBattleText3 ; TextEndBattle

Route7TrainerHeader4:
	dbEventFlagBit EVENT_BEAT_ROUTE_7_TRAINER_4
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_7_TRAINER_4
	dw Route7BattleText4 ; TextBeforeBattle
	dw Route7AfterBattleText4 ; TextAfterBattle
	dw Route7EndBattleText4 ; TextEndBattle
	dw Route7EndBattleText4 ; TextEndBattle

Route7TrainerHeader5:
	dbEventFlagBit EVENT_BEAT_ROUTE_7_TRAINER_5
	db ($2 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_ROUTE_7_TRAINER_5
	dw Route7BattleText5 ; TextBeforeBattle
	dw Route7AfterBattleText5 ; TextAfterBattle
	dw Route7EndBattleText5 ; TextEndBattle
	dw Route7EndBattleText5 ; TextEndBattle
	
	db $ff

;-----------------------------------------------------------------------

Route7SoldierText:
	TX_ASM
	CheckEvent EVENT_FINISHED_R7_GIFT
	jr nz, .DoneEvent
	CheckEvent EVENT_BEAT_ROUTE_7_TRAINER_1
	jr z, .TrainersNotBeat
	CheckEvent EVENT_BEAT_ROUTE_7_TRAINER_2
	jr z, .TrainersNotBeat
	CheckEvent EVENT_BEAT_ROUTE_7_TRAINER_3
	jr z, .TrainersNotBeat
	CheckEvent EVENT_BEAT_ROUTE_7_TRAINER_4
	jr z, .TrainersNotBeat
	CheckEvent EVENT_BEAT_ROUTE_7_TRAINER_5
	jr z, .TrainersNotBeat
	ld hl, StoneGiftPreText
	call PrintText
	lb bc, MIST_STONE, 1
	call GiveItem
	jr c, .Success
	ld hl, StoneGiftNoRoomText
	call PrintText
	jr .Done
.Success
	ld hl, ReceivedStoneGiftText
	call PrintText
	ld hl, StoneGiftExplanationText
	call PrintText
	SetEvent EVENT_FINISHED_R7_GIFT
	jr .Done
.TrainersNotBeat
	ld hl, R7EventIntroText
	call PrintText
	jr .Done
.DoneEvent
	ld hl, FinishedR7EventText
	call PrintText
.Done
	jp TextScriptEnd

R7EventIntroText:
	TX_FAR _R7EventIntroText
	db "@"

FinishedR7EventText:
	TX_FAR _FinishedR7EventText
	db "@"

StoneGiftPreText:
	TX_FAR _StoneGiftPreText
	db "@"

ReceivedStoneGiftText:
	TX_FAR _ReceivedStoneGiftText
	TX_SFX_ITEM_1
	db "@"

StoneGiftExplanationText:
	TX_FAR _StoneGiftExplanationText
	db "@"

StoneGiftNoRoomText:
	TX_FAR _StoneGiftNoRoomText
	db "@"

;---------------------------------------------------------------------------
Route7Text1:
	TX_FAR _Route7Text1
	db "@"

Route7Text2:
	TX_ASM
	ld hl, Route7TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route7BattleText1:
	TX_FAR _Route7BattleText1
	db "@"

Route7EndBattleText1:
	TX_FAR _Route7EndBattleText1
	db "@"

Route7AfterBattleText1:
	TX_FAR _Route7AfterBattleText1
	db "@"

Route7Text3:
	TX_ASM
	ld hl, Route7TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route7BattleText2:
	TX_FAR _Route7BattleText2
	db "@"

Route7EndBattleText2:
	TX_FAR _Route7EndBattleText2
	db "@"

Route7AfterBattleText2:
	TX_FAR _Route7AfterBattleText2
	db "@"

Route7Text4:
	TX_ASM
	ld hl, Route7TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route7BattleText3:
	TX_FAR _Route7BattleText3
	db "@"

Route7EndBattleText3:
	TX_FAR _Route7EndBattleText3
	db "@"

Route7AfterBattleText3:
	TX_FAR _Route7AfterBattleText3
	db "@"

Route7Text5:
	TX_ASM
	ld hl, Route7TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route7BattleText4:
	TX_FAR _Route7BattleText4
	db "@"

Route7EndBattleText4:
	TX_FAR _Route7EndBattleText4
	db "@"

Route7AfterBattleText4:
	TX_FAR _Route7AfterBattleText4
	db "@"

Route7Text6:
	TX_ASM
	ld hl, Route7TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route7BattleText5:
	TX_FAR _Route7BattleText5
	db "@"

Route7EndBattleText5:
	TX_FAR _Route7EndBattleText5
	db "@"

Route7AfterBattleText5:
	TX_FAR _Route7AfterBattleText5
	db "@"
