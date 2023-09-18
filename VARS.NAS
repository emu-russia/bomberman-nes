; Variables used in the game (memory allocation)

; Zero page ($0000-$00FF). Small single-byte variables, pointers.
TOPSCORE            EQU $01 
SOFT_RESET_FLAG     EQU $08 
CLEAR_TOPSCORE1     EQU $09 
CLEAR_TOPSCORE2     EQU $0A 
FRAMEDONE           EQU $0B 
LAST_2000           EQU $0C 
LAST_2001           EQU $0D 
H_SCROLL            EQU $0E 
V_SCROLL            EQU $0F 
PAD1_TEST           EQU $10 
PAD2_TEST           EQU $11 
JOYPAD1             EQU $12 
JOYPAD2             EQU $13 
TILE_CUR            EQU $14 
TILE_PTR            EQU $15 
TILE_CNT            EQU $16 
byte_17             EQU $17 
byte_18             EQU $18 
byte_19             EQU $19 
byte_1A             EQU $1A 
byte_1B             EQU $1B 
byte_1C             EQU $1C 
byte_1D             EQU $1D 
byte_1E             EQU $1E 
byte_1F             EQU $1F 
byte_20             EQU $20 
byte_21             EQU $21 
byte_22             EQU $22 
byte_23             EQU $23 
TEMP_X              EQU $24 
TEMP_Y              EQU $25 
word_26             EQU $26 
BOMBMAN_X           EQU $28 
BOMBMAN_U           EQU $29 
BOMBMAN_Y           EQU $2A 
BOMBMAN_V           EQU $2B 
BOMBMAN_FRAME       EQU $2C 
byte_2D             EQU $2D 
byte_2E             EQU $2E 
byte_2F             EQU $2F 
byte_30             EQU $30 
byte_31             EQU $31 
byte_32             EQU $32 
FRAME_CNT           EQU $33 
STAGE_MAP           EQU $34 
byte_36             EQU $36 
BOOM_SOUND          EQU $38 
SPR_TAB_INDEX       EQU $39 
SPR_X               EQU $3A 
SPR_Y               EQU $3B 
SPR_COL             EQU $3C 
SPR_ATTR            EQU $3D 
SPR_ID              EQU $3E 
SPR_SAVEDX          EQU $3F 
SPR_SAVEDY          EQU $40 
M_TYPE              EQU $41 
M_X                 EQU $42 
M_U                 EQU $43 
M_Y                 EQU $44 
M_V                 EQU $45 
M_FRAME             EQU $46 
byte_47             EQU $47 
byte_48             EQU $48 
byte_49             EQU $49 
M_FACE              EQU $4A 
byte_4B             EQU $4B 
byte_4C             EQU $4C 
M_ID                EQU $4D 
byte_4E             EQU $4E 
byte_4F             EQU $4F 
byte_50             EQU $50 
byte_51             EQU $51 
byte_52             EQU $52 
byte_53             EQU $53 
SEED                EQU $54 
STAGE               EQU $58 
DEMOPLAY            EQU $59 
byte_5A             EQU $5A 
EXIT_ENEMY_TYPE     EQU $5B 
byte_5C             EQU $5C 
byte_5D             EQU $5D 
byte_5E             EQU $5E 
CURSOR              EQU $5F 
STAGE_STARTED       EQU $60 
SCORE               EQU $61 
unk_64              EQU $64 
LIFELEFT            EQU $68 
FPS                 EQU $69 
IS_SECOND_PASSED    EQU $6A 
byte_6B             EQU $6B 
DEMO_WAIT_HI        EQU $70 
DEMO_WAIT_LO        EQU $71 
INMENU              EQU $72 
BONUS_POWER         EQU $73 
BONUS_BOMBS         EQU $74 
BONUS_SPEED         EQU $75 
BONUS_NOCLIP        EQU $76 
BONUS_REMOTE        EQU $77 
BONUS_BOMBWALK      EQU $78 
BONUS_FIRESUIT      EQU $79 
INVUL_UNK1          EQU $7A 
LAST_INPUT          EQU $7B 
INVUL_UNK2          EQU $7D
BONUS_ENEMY_TYPE    EQU $7E 
unk_7F              EQU $7F 
unk_80              EQU $80 
byte_83             EQU $83 
byte_87             EQU $87 
byte_88             EQU $88 
byte_8D             EQU $8D 
byte_92             EQU $92 
TIMELEFT            EQU $93 
DEBUG_MODE          EQU $94 		; render hidden tiles (doors and powerups) as red half-destroyed walls
PW_CXSUM4           EQU $95 		; Checksum for whole password 
MTAB_PTR            EQU $97 
PW_CXSUM1           EQU $99 		; Checksum for characters 1..4 of password 
PW_CXSUM2           EQU $9A  		; Checksum for characters 6..9 of password
PW_CXSUM3           EQU $9B  		; Checksum for characters 11..14 of password

; Extra bonus item criteria
; https://tcrf.net/Bomberman_(NES)#Bonus_Items
ENEMIES_LEFT        EQU $9C  		; 
BONUS_AVAILABLE     EQU $9D  		; 
ENEMIES_DEFEATED    EQU $9E 		; 
EXIT_DWELL_TIME     EQU $9F 		; How long we are over exit tile for
VISITS_TOP_LEFT     EQU $A0 		; 
VISITS_TOP_RIGHT    EQU $A1 		; 
VISITS_BOTTOM_LEFT  EQU $A2 		; 
VISITS_BOTTOM_RIGHT EQU $A3 		; 
BRICKS_BLOWN_UP     EQU $A4 		; 
CHAIN_REACTIONS     EQU $A5 		; 
KEY_TIMER           EQU $A6 		; How long at least one key is pressed for
EXIT_BOMBED_COUNT   EQU $A7 		; 
BONUS_STATUS        EQU $A8 		; 0 = Criteria not met / 1 = Achieved / 2 = Collected
BONUS_TIMER         EQU $A9 		; Time which the bonus is on screen for
EXTRA_BONUS_ITEM_X  EQU $AA 		; X position where extra bonus is placed
EXTRA_BONUS_ITEM_Y  EQU $AB 		; Y position where extra bonus is placed

DEMOKEY_DATA        EQU $AC 
DEMOKEY_TIMEOUT     EQU $AE 
DEMOKEY_PAD1        EQU $AF 
byte_B0             EQU $B0 
byte_B1             EQU $B1 
APU_DISABLE         EQU $B2 
APU_CHAN            EQU $B3 
APU_TEMP            EQU $B4 
APU_MUSIC           EQU $B5 
byte_B6             EQU $B6 
byte_B9             EQU $B9 
byte_BA             EQU $BA 
byte_BB             EQU $BB 
APU_CHANDAT         EQU $BC 
unk_BD              EQU $BD 
unk_C0              EQU $C0 
APU_PTR             EQU $C2 
APU_CNT             EQU $C4 
unk_C7              EQU $C7 
unk_C8              EQU $C8 
unk_CA              EQU $CA 
byte_CD             EQU $CD 
byte_CE             EQU $CE 
byte_CF             EQU $CF 
byte_D0             EQU $D0 
byte_D1             EQU $D1 
byte_D2             EQU $D2 
byte_D3             EQU $D3 
byte_D4             EQU $D4 
byte_D5             EQU $D5 
byte_D6             EQU $D6 
byte_D7             EQU $D7 
byte_D8             EQU $D8 
byte_D9             EQU $D9 
byte_DA             EQU $DA 
SPR_TAB_TOGGLE      EQU $DB 
byte_DC             EQU $DC 
byte_DD             EQU $DD 
byte_DE             EQU $DE 
APU_SOUND           EQU $DF 
APU_PATTERN         EQU $E0 
TEMP_ADDR           EQU $E0 
APU_CHAN_DIS        EQU $E1
APU_SOUND_MOD       EQU $E1
APU_SDELAY          EQU $E4 

; The rest of the memory ($0100-$07FF). Mostly large tables and buffers.
_password_buffer    EQU $0180
BOMB_ACTIVE         EQU $03A0 
BOMB_X              EQU $03AA 
BOMB_Y              EQU $03B4 
BOMB_TIME_LEFT      EQU $03BE 
byte_3C8            EQU $03C8 
BOMB_TIME_ELAPSED   EQU $03D2 
FIRE_ACTIVE         EQU $03E6 
FIRE_X              EQU $0436 
FIRE_Y              EQU $0486 
byte_4D6            EQU $04D6 
byte_526            EQU $0526 
ENEMY_TYPE          EQU $0576 
ENEMY_X             EQU $0580 
ENEMY_U             EQU $058A 
ENEMY_Y             EQU $0594 
ENEMY_V             EQU $059E 
ENEMY_FRAME         EQU $05A8 
byte_5B2            EQU $05B2 
byte_5BC            EQU $05BC 
byte_5C6            EQU $05C6 
ENEMY_FACE          EQU $05D0 
byte_5DA            EQU $05DA 
byte_5E4            EQU $05E4 
TILE_TAB            EQU $0600 
SPR_TAB             EQU $0700 
