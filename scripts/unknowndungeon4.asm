UnknownDungeon4Script:
	call EnableAutoTextBoxDrawing
	ld hl, UnknownDungeon4ScriptPointers
	ld a, [wUnknownDungeon4CurScript]
	jp CallFunctionInTable
	
UnknownDungeon4ScriptPointers:
	dw UnknownDungeon4Script0
	dw UnknownDungeon4Script1

UnknownDungeon4TextPointers:
    dw UnknownDungeon4Text1
    
UnknownDungeon4Text1:
    TX_ASM
    ld hl, UnknownDungeon4BattleText1
    call PrintText
    ld hl, wd72d
    set 6, [hl]
    set 7, [hl]
    ld hl, UnknownDungeon4EndBattleText1
    ld de, UnknownDungeon4EndBattleText1
    call SaveEndBattleTextPointers
    ld a, [H_SPRITEINDEX]
    ld [wSpriteIndex], a
    call EngageMapTrainer
    call InitBattleEnemyParameters
    xor a
    ld [hJoyHeld], a
    ld [hJoyPressed], a
    ld [hJoyReleased], a
    ld a, $1
    ld [wUnknownDungeon4CurScript], a
    jp TextScriptEnd

UnknownDungeon4BattleText1:
    TX_FAR _UnknownDungeon4BattleText1
    db "@"

UnknownDungeon4EndBattleText1:
    TX_FAR _UnknownDungeon4EndBattleText1
    db "@"
	
UnknownDungeon4Script0:
	ret
	
	;lucky wrote all this code for periwinkle and now I'm rehashing it like a bungler
UnknownDungeon4Script1:
    ld a, [wIsInBattle]
    cp $ff
    jr z, .lostBattle
    call GBFadeOutToBlack
    ld a, HS_DAD_BATTLE
    ld [wMissableObjectIndex], a
    predef HideObject
    ld c, 10 ; some value
    call DelayFrames
    call GBFadeInFromBlack
    ld c, 10 ; some value
    call DelayFrames
    ld a, [wLetterPrintingDelayFlags]
    push af
    xor a
    ld [wJoyIgnore], a
    predef HallOfFamePC
    pop af
    ld [wLetterPrintingDelayFlags], a
    ld hl, wFlags_D733
    res 1, [hl]
    xor a
    ld [wUnknownDungeon4CurScript], a
    ld a, PALLET_TOWN
    ld [wLastBlackoutMap], a
    callba SaveSAVtoSRAM
    call WaitForTextScrollButtonPress
    jp Init
.lostBattle
    xor a
    ld [wJoyIgnore], a
    ld [wUnknownDungeon4CurScript], a
    ld [wCurMapScript], a
    ret

_UnknownDungeon4BattleText1::
	text "...."
	line "...."

	para "Are ya winnin son?"
	done

_UnknownDungeon4EndBattleText1::
	text "..!"
	prompt
