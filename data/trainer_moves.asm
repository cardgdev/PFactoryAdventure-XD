LoneMoves:
; these are used for gym leaders.
; this is not automatic! you have to write the number you want to wLoneAttackNo
; first. e.g., erika's script writes 4 to wLoneAttackNo to get mega drain,
; the fourth entry in the list.

; first byte:  pokemon in the trainer's party that gets the move
; second byte: move
; unterminated
	db 4,TOMBSTONER ; ichitarou
	db 4,HURRICANE ; hayato
	db 4,SHADOW ; enoki
	db 4,ICY_BREATH ; mikan
	db 4,WEB_SPIN ; tsukushi
	db 3,JETWING ; jack
	db 0,GLASSBREAKER ; junior
	db 4,FIRE_BLAST ; blaine

TeamMoves:
; these are used for elite four.
; this is automatic, based on trainer class.
; don't be confused by LoneMoves above, the two data structures are
	; _completely_ unrelated.

; first byte: trainer (all trainers in this class have this move)
; second byte: move
; ff-terminated
	db WILL,PSYCHIC_M
	db KOGA,TOXIC
	db KAREN,DOUBLE_TEAM
	db LANCE,PARALYZER
	db SURGE,THUNDERBOLT
	db $FF
