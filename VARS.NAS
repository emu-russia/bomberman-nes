; Variables used in the game (memory allocation)
; Names and comments transferred from https://github.com/picosonic/bomberman-nes

; ---------------------------------------------------------------------------
; Zero page ($0000-$00FF). Small single-byte variables, pointers.
; ---------------------------------------------------------------------------

; 7 bytes BCD
DEFINE TOPSCORE            $01 

DEFINE SOFT_RESET_FLAG     $08 
DEFINE CLEAR_TOPSCORE1     $09 
DEFINE CLEAR_TOPSCORE2     $0A 
DEFINE FRAMEDONE           $0B 

DEFINE LAST_2000           $0C  		; The PPU_CTRL1 register is write-only, so its shadow copy in RAM is used (common practice)
DEFINE LAST_2001           $0D 		; The PPU_CTRL2 register is write-only, so its shadow copy in RAM is used

; Scroll offsets
DEFINE H_SCROLL            $0E 		; Horizontal
DEFINE V_SCROLL            $0F 		; Vertical

; Joypad bit fields
DEFINE PAD1_TEST           $10 		; Cache for multiple reads to work around NTSC bug with PCM playback
DEFINE PAD2_TEST           $11 		; Cache as above
DEFINE JOYPAD1             $12 
DEFINE JOYPAD2             $13 

DEFINE TILE_CUR            $14 
DEFINE TILE_PTR            $15 
DEFINE TILE_CNT            $16 
DEFINE TILE_PARAM          $17 		; 4 bytes OAM, plus 4 more (?)
DEFINE byte_18             $18 
DEFINE byte_19             $19 
DEFINE byte_1A             $1A 
DEFINE byte_1B             $1B 
DEFINE byte_1C             $1C 
DEFINE byte_1D             $1D 
DEFINE byte_1E             $1E 

DEFINE CACHE_X             $1F 		; Cached X position
DEFINE CACHE_Y             $20 		; Cached Y position
DEFINE byte_21             $21 
DEFINE byte_22             $22 
DEFINE byte_23             $23 

DEFINE TEMP_X              $24 
DEFINE TEMP_Y              $25 

DEFINE OAM_PTR             $26 		; Pointer to cache of OAM data

; Bomberman related
DEFINE BOMBMAN_X           $28 		; Grid X position
DEFINE BOMBMAN_U           $29 		; Offset X
DEFINE BOMBMAN_Y           $2A 		; Grid Y position
DEFINE BOMBMAN_V           $2B 		; Offset Y
DEFINE BOMBMAN_FRAME       $2C 		; Current animation frame

DEFINE SPR_ATTR_TEMP       $2D 
DEFINE byte_2E             $2E 		; Bomb/fire related

DEFINE TEMP_X2             $2F 
DEFINE TEMP_Y2             $30 
DEFINE TEMP_A2             $31 

DEFINE byte_32             $32 
DEFINE FRAME_CNT           $33 
DEFINE STAGE_MAP           $34 		; Pointer
DEFINE byte_36             $36 

DEFINE BOOM_SOUND          $38 		; Boolean, is BOOM PCM playing

DEFINE SPR_TAB_INDEX       $39 
DEFINE SPR_X               $3A 
DEFINE SPR_Y               $3B 
DEFINE SPR_COL             $3C 
DEFINE SPR_ATTR            $3D 
DEFINE SPR_ID              $3E 
DEFINE SPR_SAVEDX          $3F 
DEFINE SPR_SAVEDY          $40 

; Cache for enemy attributes
DEFINE M_TYPE              $41 
DEFINE M_X                 $42 
DEFINE M_U                 $43 
DEFINE M_Y                 $44 
DEFINE M_V                 $45 
DEFINE M_FRAME             $46 
DEFINE M_AI_TIMER          $47 
DEFINE byte_48             $48 		; ?? Sprite attributes ??
DEFINE byte_49             $49 
DEFINE M_FACE              $4A 
DEFINE byte_4B             $4B 
DEFINE byte_4C             $4C 
DEFINE M_ID                $4D 

DEFINE ENEMY_HIT           $4E 		; Tile which stopped enemy movement
DEFINE byte_4F             $4F 
DEFINE byte_50             $50 
DEFINE byte_51             $51 
DEFINE byte_52             $52 
DEFINE byte_53             $53 

DEFINE SEED                $54 		; PRNG seed (4 bytes)

DEFINE STAGE               $58 		; Current level (1..50)

DEFINE DEMOPLAY            $59 		; Boolean, DEMO being played

DEFINE TEMP_Y3             $5A 
DEFINE EXIT_ENEMY_TYPE     $5B 
DEFINE DYING               $5C 		; Boolean, in the process of dying 
DEFINE KILLED              $5D 		; Boolean, have we lost a life on this level 
DEFINE NO_ENEMIES_LEFT     $5E  		; Boolean, when no enemies remain

; Title screen cursor
DEFINE CURSOR              $5F 		; Boolean, START or CONTINUE menu option

DEFINE STAGE_STARTED       $60 		; Boolean, level has been started

; 7 bytes BCD
DEFINE SCORE               $61 		; &61..&67
DEFINE LIFELEFT            $68 
DEFINE FPS                 $69 
DEFINE IS_SECOND_PASSED    $6A 
DEFINE byte_6B             $6B 

; Number of frames @ 60Hz to stay on title screen, counting down to demo start
DEFINE DEMO_WAIT_HI        $70 
DEFINE DEMO_WAIT_LO        $71 

DEFINE INMENU              $72 		; Boolean, are we on title screen

; Bonus item status
DEFINE BONUS_POWER         $73 		; Explosion radius in tiles (multiples of 0x10)
DEFINE BONUS_BOMBS         $74 		; 0 .. 9, number of extra bombs
DEFINE BONUS_SPEED         $75 		; Boolean, normal or fast travel
DEFINE BONUS_NOCLIP        $76 		; Boolean, walk through brick walls
DEFINE BONUS_REMOTE        $77 		; Boolean, remote detonator
DEFINE BONUS_BOMBWALK      $78 		; Boolean, can walk through bombs
DEFINE BONUS_FIRESUIT      $79 		; Boolean, invulnerable to explosions

DEFINE INVULNERABLE_TIMER  $7A 		; Invulnerability to monsters for a short time 
DEFINE LAST_INPUT          $7B 		; Last input bitmask from gamepad
DEFINE INVULNERABLE        $7D 		; Invulnerable to monsters for this stage (Boolean)
DEFINE BONUS_ENEMY_TYPE    $7E 

; Password is stored here (20 bytes) .. $92
DEFINE PW_BUFF             $7F			; 
DEFINE byte_92             $92 

; Time in seconds left to play
DEFINE TIMELEFT            $93 

DEFINE DEBUG_MODE          $94 		; Shows location of bonus and exit tiles (render hidden tiles as red half-destroyed walls)
DEFINE PW_CXSUM4           $95 		; Checksum for whole password 
DEFINE MTAB_PTR            $97 		; Pointer to enemy table
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

DEFINE DEMOKEY_DATA        $AC 		; Pointer to DEMO timeout/pad data
DEFINE DEMOKEY_TIMEOUT     $AE 		; Current DEMO key timeout
DEFINE DEMOKEY_PAD1        $AF 		; Current DEMO pad state

DEFINE DEMO_ENDED          $B0 		; Count of times the demo has ended
DEFINE NO_ENEMIES_CELEBRATED $B1 	; Boolean

; Audio related
DEFINE APU_DISABLE         $B2 		; Boolean to keep track of music being disabled when paused
DEFINE APU_CHAN            $B3 		; Current audio channel
DEFINE APU_TEMP            $B4 
DEFINE APU_MUSIC           $B5 		; Currently selected melody (top bit set once initialised)
DEFINE byte_B6             $B6 		; ?? for each of the 3 channels
DEFINE byte_B9             $B9 		; ?? for each of the 3 channels
DEFINE byte_BA             $BA 
DEFINE byte_BB             $BB 
DEFINE APU_CHANDAT         $BC 		; 6 bytes of current melody/channel data
DEFINE unk_BD              $BD 
DEFINE unk_C0              $C0 
DEFINE APU_PTR             $C2 		; Pointer to position in current melody data
DEFINE APU_CNT             $C4 		; Counters for each of the 3 channels through their respective melody data
DEFINE APU_PAUSE_PTR       $C7 		; Melody data counter when in sustain for each of the 3 channels
DEFINE unk_C8              $C8 
DEFINE APU_PAUSE_TIMER     $CA 		; Sustain countdown for each of the 3 channels
DEFINE byte_CD             $CD 		; ?? for each of the 3 channels
DEFINE byte_CE             $CE 
DEFINE byte_CF             $CF 
DEFINE byte_D0             $D0 		; ?? (FF or 00) for each of the 3 channels
DEFINE byte_D1             $D1 
DEFINE byte_D2             $D2 
DEFINE APU_FLAGS           $D3 		; Cache for seventh and eighth bytes from melody table
DEFINE byte_D4             $D4 
DEFINE byte_D5             $D5 
DEFINE byte_D6             $D6 		; ?? for each of the 3 channels
DEFINE byte_D7             $D7 
DEFINE byte_D8             $D8 
DEFINE APU_SWEEP           $D9 		; Hard coded to 08 for both of the pulse channels to disable sweep
DEFINE byte_DA             $DA 

DEFINE SPR_TAB_TOGGLE      $DB 

; Used for BONUS_POWER calculations with resume codes
DEFINE BOMB_PWR            $DC  		; 
; Used for low byte of STAGE in resume codes
DEFINE STAGE_LO            $DD  		; 
; Used for high byte of STAGE in resume codes
DEFINE STAGE_HI            $DE  		; 

DEFINE APU_SOUND           $DF 
DEFINE APU_PATTERN         $E0 
DEFINE TEMP_ADDR           $E0 
DEFINE APU_CHAN_DIS        $E1
DEFINE APU_SOUND_MOD       $E1
DEFINE APU_SDELAY          $E4 

; ---------------------------------------------------------------------------
; The rest of the memory ($0100-$07FF). Mostly large tables and buffers.
; ---------------------------------------------------------------------------
DEFINE password_buffer     $0180 		; Password buffer
DEFINE stage_buffer        $0200 		; Current stage map buffer

; Bomb vars (up to 10 bombs)
DEFINE BOMB_ACTIVE         $03A0 		; Boolean
DEFINE BOMB_X              $03AA 		; Grid X position
DEFINE BOMB_Y              $03B4 		; Grid Y position
DEFINE BOMB_TIME_LEFT      $03BE 		; No. frames until explosion (starts at 160 ~ 2.66s @ 60Hz)
DEFINE BOMB_UNUSED         $03C8 		; Set to 0, but never read
DEFINE BOMB_TIME_ELAPSED   $03D2 		; No. frames since placement, used for animation (every 16 frames)

; Fire vars (up to 80 flames)
DEFINE FIRE_ACTIVE         $03E6 		; 0 = inactive, >0 = no. frames flame has been active
DEFINE FIRE_X              $0436 		; Grid X position
DEFINE FIRE_Y              $0486 		; Grid Y position
DEFINE byte_4D6            $04D6 
DEFINE byte_526            $0526 

; Enemy vars (up to 10 enemies)
DEFINE ENEMY_TYPE          $0576 		; Type of enemy (8 types)
DEFINE ENEMY_X             $0580 		; Grid X position
DEFINE ENEMY_U             $058A 		; Offset X
DEFINE ENEMY_Y             $0594 		; Grid Y position
DEFINE ENEMY_V             $059E 		; Offset Y
DEFINE ENEMY_FRAME         $05A8 		; Current animation frame
DEFINE ENEMY_AI_TIMER      $05B2 		; No. frames until next AI call (half second apart)
DEFINE byte_5BC            $05BC 
DEFINE byte_5C6            $05C6 
DEFINE ENEMY_FACE          $05D0 
DEFINE byte_5DA            $05DA 
DEFINE byte_5E4            $05E4 

; ?? 18 bytes unaccounted for

DEFINE TILE_TAB            $0600 
DEFINE SPR_TAB             $0700 		; Sprites to draw (in OAM format)
