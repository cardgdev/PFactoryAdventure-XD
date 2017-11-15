ModifyLevel:
	push af
	push bc
	push de
	push hl
	ld b, 0
	ld d, 0
	ld a, [wPartyCount]
	ld c, a
	ld hl, $D18C
.searchLevel
	ld a, [hl]	
	cp d
	jp c, .noHigherLevel
	ld d, a	
.noHigherLevel	
	push bc
	ld bc, 44
	add hl, bc
	pop bc
	inc b
	ld a, b
	cp c
	jp nz, .searchLevel
.levelFound
	call Random
	and %0011
	ld b, a
	call Random
	and %0001
	cp 0
	jp z, .subtract	
	ld a, d	
	add b	
	jp .doneApplyingVariance	
.subtract
	ld a, d		
	sub b	
.doneApplyingVariance	
	ld b, a 
	ld a, [wEngagedTrainerClass]
	cp $E5 ; Giovanni
	jp z, .applyPlusFive
	cp $E6 ; ROCKET
	jp z, .applyPlusThree
	cp $E7; Cooltrainer male
	jp z, .applyPlusThree
	cp $E8 ; Cooltrainer female
	jp z, .applyPlusThree
	cp $E9 ; Bruno
	jp z, .applyPlusFive
	cp $EA ; Brock
	jp z, .applyPlusFive
	cp $EB ; Misty
	jp z, .applyPlusFive
	cp $EC ; Lt. Surge
	jp z, .applyPlusFive
	cp $ED ; Erika
	jp z, .applyPlusFive
	cp $EE ; Koga
	jp z, .applyPlusFive
	cp $EF ; Blaine
	jp z, .applyPlusFive
	cp $F0 ; Sabrina
	jp z, .applyPlusFive
	cp $F3 ; Rival Final
	jp z, .applyPlusFive
	cp $F4 ; Lorelei
	jp z, .applyPlusFive
	cp $F6 ; Agatha
	jp z, .applyPlusFive
	cp $F7 ; Lance
	jp z, .applyPlusFive
	ld a, b
	jp .doneApplyingBoost
.applyPlusThree
	ld a, b
	add 3
	jp .doneApplyingBoost
.applyPlusFive	
	ld a, b
	add 5
.doneApplyingBoost	
	ld [wCurEnemyLVL],a
	pop hl
	pop de
	pop bc
	pop af	
	ret
	
ReadTrainer:

; don't change any moves in a link battle
	ld a,[wLinkState]
	and a
	ret nz

; set [wEnemyPartyCount] to 0, [wEnemyPartyMons] to FF
; XXX first is total enemy pokemon?
; XXX second is species of first pokemon?
	ld hl,wEnemyPartyCount
	xor a
	ld [hli],a
	dec a
	ld [hl],a

; get the pointer to trainer data for this class
	ld a,[wCurOpponent]
	sub $C9 ; convert value from pokemon to trainer
	add a,a
	ld hl,TrainerDataPointers
	ld c,a
	ld b,0
	add hl,bc ; hl points to trainer class
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[wTrainerNo]
	ld b,a
; At this point b contains the trainer number,
; and hl points to the trainer class.
; Our next task is to iterate through the trainers,
; decrementing b each time, until we get to the right one.
.outer
	dec b
	jr z,.IterateTrainer
.inner
	ld a,[hli]
	and a
	jr nz,.inner
	jr .outer

; if the first byte of trainer data is FF,
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
; else the first byte is the level of every pokemon on the team
.IterateTrainer
	ld a,[hli]
	cp $FF ; is the trainer special?
	jr z,.SpecialTrainer ; if so, check for special moves
	
.LoopTrainerData
	call ModifyLevel	
	ld a,[hli]
	and a ; have we reached the end of the trainer data?
	jr z,.FinishUp
	ld [wcf91],a ; write species somewhere (XXX why?)
	ld a,ENEMY_PARTY_DATA
	ld [wMonDataLocation],a
	push hl
	call AddPartyMon
	pop hl
	jr .LoopTrainerData
.SpecialTrainer
; if this code is being run:
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
	ld a,[hli]
	and a ; have we reached the end of the trainer data?
	jr z,.AddLoneMove
	call ModifyLevel
	ld a,[hli]
	ld [wcf91],a
	ld a,ENEMY_PARTY_DATA
	ld [wMonDataLocation],a
	push hl
	call AddPartyMon
	pop hl
	jr .SpecialTrainer
.AddLoneMove
; does the trainer have a single monster with a different move
	ld a,[wLoneAttackNo] ; Brock is 01, Misty is 02, Erika is 04, etc
	and a
	jr z,.AddTeamMove
	dec a
	add a,a
	ld c,a
	ld b,0
	ld hl,LoneMoves
	add hl,bc
	ld a,[hli]
	ld d,[hl]
	ld hl,wEnemyMon1Moves + 2
	ld bc,wEnemyMon2 - wEnemyMon1
	call AddNTimes
	ld [hl],d
	jr .FinishUp
.AddTeamMove
; check if our trainer's team has special moves

; get trainer class number
	ld a,[wCurOpponent]
	sub 200
	ld b,a
	ld hl,TeamMoves

; iterate through entries in TeamMoves, checking each for our trainer class
.IterateTeamMoves
	ld a,[hli]
	cp b
	jr z,.GiveTeamMoves ; is there a match?
	inc hl ; if not, go to the next entry
	inc a
	jr nz,.IterateTeamMoves

; no matches found. is this trainer champion rival?
	ld a,b
	cp SONY3
	jr z,.ChampionRival
	jr .FinishUp ; nope
.GiveTeamMoves
	ld a,[hl]
	ld [wEnemyMon5Moves + 2],a
	jr .FinishUp
.ChampionRival ; give moves to his team

; pidgeot
	ld a,SKY_ATTACK
	ld [wEnemyMon1Moves + 2],a

; starter
	ld a,[wRivalStarter]
	cp STARTER3
	ld b,MEGA_DRAIN
	jr z,.GiveStarterMove
	cp STARTER1
	ld b,FIRE_BLAST
	jr z,.GiveStarterMove
	ld b,BLIZZARD ; must be squirtle
.GiveStarterMove
	ld a,b
	ld [wEnemyMon6Moves + 2],a
.FinishUp
; clear wAmountMoneyWon addresses
	xor a
	ld de,wAmountMoneyWon
	ld [de],a
	inc de
	ld [de],a
	inc de
	ld [de],a
	ld a,[wCurEnemyLVL]
	ld b,a
.LastLoop
; update wAmountMoneyWon addresses (money to win) based on enemy's level
	ld hl,wTrainerBaseMoney + 1
	ld c,2 ; wAmountMoneyWon is a 3-byte number
	push bc
	predef AddBCDPredef
	pop bc
	inc de
	inc de
	dec b
	jr nz,.LastLoop ; repeat wCurEnemyLVL times
	ret
