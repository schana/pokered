LoneMoves:
; these are used for gym leaders.
; this is not automatic! you have to write the number you want to wLoneAttackNo
; first. e.g., erika's script writes 4 to wLoneAttackNo to get mega drain,
; the fourth entry in the list.

; first byte:  pokemon in the trainer's party that gets the move
; second byte: move
; unterminated
	db 1,ROCK_SLIDE
	db 1,SURF
	db 2,THUNDERBOLT
	db 2,RAZOR_LEAF
	db 3,TOXIC
	db 3,PSYCHIC
	db 3,FLAMETHROWER
	db 4,EARTHQUAKE

TeamMoves:
; these are used for elite four.
; this is automatic, based on trainer class.
; don't be confused by LoneMoves above, the two data structures are
	; _completely_ unrelated.

; first byte: trainer (all trainers in this class have this move)
; second byte: move
; ff-terminated
	db LORELEI,ICE_BEAM
	db BRUNO,EARTHQUAKE
	db AGATHA,PSYCHIC
	db LANCE,BODY_SLAM
	db $FF
