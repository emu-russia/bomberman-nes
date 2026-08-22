; Variables used in the game (memory allocation)

; Zero page ($0000-$00FF). Small single-byte variables, pointers.
DEFINE TOPSCORE            $01 
DEFINE SOFT_RESET_FLAG     $08 
DEFINE CLEAR_TOPSCORE1     $09 
DEFINE CLEAR_TOPSCORE2     $0A 
DEFINE FRAMEDONE           $0B 
DEFINE LAST_2000           $0C  		; The PPU_CTRL1 register is write-only, so its shadow copy in RAM is used (common practice)
DEFINE LAST_2001           $0D 		; The PPU_CTRL2 register is write-only, so its shadow copy in RAM is used
DEFINE H_SCROLL            $0E 
DEFINE V_SCROLL            $0F 
DEFINE PAD1_TEST           $10 
DEFINE PAD2_TEST           $11 
DEFINE JOYPAD1             $12 
DEFINE JOYPAD2             $13 
DEFINE TILE_CUR            $14 
DEFINE TILE_PTR            $15 
DEFINE TILE_CNT            $16 
DEFINE byte_17             $17 
DEFINE byte_18             $18 
DEFINE byte_19             $19 
DEFINE byte_1A             $1A 
DEFINE byte_1B             $1B 
DEFINE byte_1C             $1C 
DEFINE byte_1D             $1D 
DEFINE byte_1E             $1E 
DEFINE byte_1F             $1F 
DEFINE byte_20             $20 
DEFINE byte_21             $21 
DEFINE byte_22             $22 
DEFINE byte_23             $23 
DEFINE TEMP_X              $24 
DEFINE TEMP_Y              $25 
DEFINE OAM_PTR             $26 		; Pointer to cache of OAM data
DEFINE BOMBMAN_X           $28 
DEFINE BOMBMAN_U           $29 
DEFINE BOMBMAN_Y           $2A 
DEFINE BOMBMAN_V           $2B 
DEFINE BOMBMAN_FRAME       $2C 
DEFINE byte_2D             $2D 
DEFINE byte_2E             $2E 
DEFINE byte_2F             $2F 
DEFINE byte_30             $30 
DEFINE byte_31             $31 
DEFINE byte_32             $32 
DEFINE FRAME_CNT           $33 
DEFINE STAGE_MAP           $34 
DEFINE byte_36             $36 
DEFINE BOOM_SOUND          $38 
DEFINE SPR_TAB_INDEX       $39 
DEFINE SPR_X               $3A 
DEFINE SPR_Y               $3B 
DEFINE SPR_COL             $3C 
DEFINE SPR_ATTR            $3D 
DEFINE SPR_ID              $3E 
DEFINE SPR_SAVEDX          $3F 
DEFINE SPR_SAVEDY          $40 
DEFINE M_TYPE              $41 
DEFINE M_X                 $42 
DEFINE M_U                 $43 
DEFINE M_Y                 $44 
DEFINE M_V                 $45 
DEFINE M_FRAME             $46 
DEFINE byte_47             $47 
DEFINE byte_48             $48 
DEFINE byte_49             $49 
DEFINE M_FACE              $4A 
DEFINE byte_4B             $4B 
DEFINE byte_4C             $4C 
DEFINE M_ID                $4D 
DEFINE byte_4E             $4E 
DEFINE byte_4F             $4F 
DEFINE byte_50             $50 
DEFINE byte_51             $51 
DEFINE byte_52             $52 
DEFINE byte_53             $53 
DEFINE SEED                $54 
DEFINE STAGE               $58 
DEFINE DEMOPLAY            $59 
DEFINE byte_5A             $5A 
DEFINE EXIT_ENEMY_TYPE     $5B 
DEFINE DYING               $5C 		; Boolean, in the process of dying 
DEFINE KILLED              $5D 		; Boolean, have we lost a life on this level 
DEFINE NO_ENEMIES_LEFT     $5E  		; Boolean, when no enemies remain
DEFINE CURSOR              $5F 
DEFINE STAGE_STARTED       $60 
DEFINE SCORE               $61 
DEFINE LIFELEFT            $68 
DEFINE FPS                 $69 
DEFINE IS_SECOND_PASSED    $6A 
DEFINE byte_6B             $6B 
DEFINE DEMO_WAIT_HI        $70 
DEFINE DEMO_WAIT_LO        $71 
DEFINE INMENU              $72 
DEFINE BONUS_POWER         $73 
DEFINE BONUS_BOMBS         $74 
DEFINE BONUS_SPEED         $75 
DEFINE BONUS_NOCLIP        $76 
DEFINE BONUS_REMOTE        $77 
DEFINE BONUS_BOMBWALK      $78 
DEFINE BONUS_FIRESUIT      $79 
DEFINE INVULNERABLE_TIMER  $7A 		; Invulnerability to monsters for a short time 
DEFINE LAST_INPUT          $7B 
DEFINE INVULNERABLE        $7D 		; Invulnerable to monsters for this stage (Boolean)
DEFINE BONUS_ENEMY_TYPE    $7E 
DEFINE PW_BUFF             $7F			; Password is stored here (20 bytes) .. $92 
DEFINE byte_92             $92 
DEFINE TIMELEFT            $93 
DEFINE DEBUG_MODE          $94 		; render hidden tiles (doors and powerups) as red half-destroyed walls
DEFINE PW_CXSUM4           $95 		; Checksum for whole password 
DEFINE MTAB_PTR            $97 
DEFINE PW_CXSUM1           $99 		; Checksum for characters 1..4 of password 
DEFINE PW_CXSUM2           $9A  		; Checksum for characters 6..9 of password
DEFINE PW_CXSUM3           $9B  		; Checksum for characters 11..14 of password

; Extra bonus item criteria
; https://tcrf.net/Bomberman_(NES)#Bonus_Items
DEFINE ENEMIES_LEFT        $9C  		; 
DEFINE BONUS_AVAILABLE     $9D  		; 
DEFINE ENEMIES_DEFEATED    $9E 		; 
DEFINE EXIT_DWELL_TIME     $9F 		; How long we are over exit tile for
DEFINE VISITS_TOP_LEFT     $A0 		; 
DEFINE VISITS_TOP_RIGHT    $A1 		; 
DEFINE VISITS_BOTTOM_LEFT  $A2 		; 
DEFINE VISITS_BOTTOM_RIGHT $A3 		; 
DEFINE BRICKS_BLOWN_UP     $A4 		; 
DEFINE CHAIN_REACTIONS     $A5 		; 
DEFINE KEY_TIMER           $A6 		; How long at least one key is pressed for
DEFINE EXIT_BOMBED_COUNT   $A7 		; 
DEFINE BONUS_STATUS        $A8 		; 0 = Criteria not met / 1 = Achieved / 2 = Collected
DEFINE BONUS_TIMER         $A9 		; Time which the bonus is on screen for
DEFINE EXTRA_BONUS_ITEM_X  $AA 		; X position where extra bonus is placed
DEFINE EXTRA_BONUS_ITEM_Y  $AB 		; Y position where extra bonus is placed

DEFINE DEMOKEY_DATA        $AC 
DEFINE DEMOKEY_TIMEOUT     $AE 
DEFINE DEMOKEY_PAD1        $AF 
DEFINE byte_B0             $B0 
DEFINE byte_B1             $B1 
DEFINE APU_DISABLE         $B2 
DEFINE APU_CHAN            $B3 
DEFINE APU_TEMP            $B4 
DEFINE APU_MUSIC           $B5 
DEFINE byte_B6             $B6 
DEFINE byte_B9             $B9 
DEFINE byte_BA             $BA 
DEFINE byte_BB             $BB 
DEFINE APU_CHANDAT         $BC 
DEFINE unk_BD              $BD 
DEFINE unk_C0              $C0 
DEFINE APU_PTR             $C2 
DEFINE APU_CNT             $C4 
DEFINE unk_C7              $C7 
DEFINE unk_C8              $C8 
DEFINE unk_CA              $CA 
DEFINE byte_CD             $CD 
DEFINE byte_CE             $CE 
DEFINE byte_CF             $CF 
DEFINE byte_D0             $D0 
DEFINE byte_D1             $D1 
DEFINE byte_D2             $D2 
DEFINE byte_D3             $D3 
DEFINE byte_D4             $D4 
DEFINE byte_D5             $D5 
DEFINE byte_D6             $D6 
DEFINE byte_D7             $D7 
DEFINE byte_D8             $D8 
DEFINE byte_D9             $D9 
DEFINE byte_DA             $DA 
DEFINE SPR_TAB_TOGGLE      $DB 
DEFINE BOMB_PWR            $DC  		; Used for BONUS_POWER calculations with resume codes
DEFINE STAGE_LO            $DD  		; Used for low byte of STAGE in resume codes
DEFINE STAGE_HI            $DE  		; Used for high byte of STAGE in resume codes
DEFINE APU_SOUND           $DF 
DEFINE APU_PATTERN         $E0 
DEFINE TEMP_ADDR           $E0 
DEFINE APU_CHAN_DIS        $E1
DEFINE APU_SOUND_MOD       $E1
DEFINE APU_SDELAY          $E4 

; The rest of the memory ($0100-$07FF). Mostly large tables and buffers.
DEFINE _password_buffer    $0180
DEFINE BOMB_ACTIVE         $03A0 
DEFINE BOMB_X              $03AA 
DEFINE BOMB_Y              $03B4 
DEFINE BOMB_TIME_LEFT      $03BE 
DEFINE byte_3C8            $03C8 
DEFINE BOMB_TIME_ELAPSED   $03D2 
DEFINE FIRE_ACTIVE         $03E6 
DEFINE FIRE_X              $0436 
DEFINE FIRE_Y              $0486 
DEFINE byte_4D6            $04D6 
DEFINE byte_526            $0526 
DEFINE ENEMY_TYPE          $0576 
DEFINE ENEMY_X             $0580 
DEFINE ENEMY_U             $058A 
DEFINE ENEMY_Y             $0594 
DEFINE ENEMY_V             $059E 
DEFINE ENEMY_FRAME         $05A8 
DEFINE byte_5B2            $05B2 
DEFINE byte_5BC            $05BC 
DEFINE byte_5C6            $05C6 
DEFINE ENEMY_FACE          $05D0 
DEFINE byte_5DA            $05DA 
DEFINE byte_5E4            $05E4 
DEFINE TILE_TAB            $0600 
DEFINE SPR_TAB             $0700 
