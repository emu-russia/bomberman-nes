; Game constants
; Transferred from https://github.com/picosonic/bomberman-nes (consts.asm)

; Hardware
DEFINE HW_FPS              60 
DEFINE HW_SCREEN_X         256 
DEFINE HW_SCREEN_Y         240 

; Tiles
DEFINE TILE_OFFS           $2000 
DEFINE TILE_SIZE           8 
DEFINE TILE_WIDTH          32 
DEFINE TILE_HEIGHT         30 

; Palettes
DEFINE BASE_PAL            $3F00 
DEFINE BG_PAL_0            $3F01 
DEFINE BG_PAL_1            $3F05 
DEFINE BG_PAL_2            $3F09 
DEFINE BG_PAL_3            $3F0D 
DEFINE SPR_PAL_0           $3F11 
DEFINE SPR_PAL_1           $3F15 
DEFINE SPR_PAL_2           $3F19 
DEFINE SPR_PAL_3           $3F1D 
DEFINE PAL_SIZE            16 

; Booleans for flags
DEFINE NO                  0 
DEFINE YES                 1 
DEFINE DISABLE             0 
DEFINE ENABLE              1 

; Bonus states
DEFINE BONUS_NOT_MET       0 
DEFINE BONUS_ACHIEVED      1 
DEFINE BONUS_COLLECTED     2 

; Input
DEFINE PAD_RIGHT           $01 
DEFINE PAD_LEFT            $02 
DEFINE PAD_DOWN            $04 
DEFINE PAD_UP              $08 
DEFINE PAD_START           $10 
DEFINE PAD_SELECT          $20 
DEFINE PAD_B               $40 
DEFINE PAD_A               $80 

; Sprites
DEFINE SPR_SIZE            16 
DEFINE SPR_HALFSIZE        8 		; SPR_SIZE/2

DEFINE OAM_CACHE           $0200 
DEFINE OAM_FLIP_NONE       $00 
DEFINE OAM_FLIP_X          $40 
DEFINE OAM_FLIP_Y          $80 

; Stage
DEFINE SECONDSPERLEVEL     200 
DEFINE SECONDSPERBONUSLEVEL 30 
DEFINE LIVESATSTART        3 
DEFINE SCORE_DIGITS        7 

; Maps
DEFINE MAP_FIRST_LEVEL     1 
DEFINE MAP_LEVELS          50 

DEFINE MAP_WIDTH           32 
DEFINE MAP_HEIGHT          13 

DEFINE MAP_HERE            0 
DEFINE MAP_RIGHT           1 
DEFINE MAP_UP              2 
DEFINE MAP_LEFT            3 
DEFINE MAP_DOWN            4 

DEFINE MAP_EMPTY           0 
DEFINE MAP_CONCRETE        1 
DEFINE MAP_BRICK           2 
DEFINE MAP_BOMB            3 
DEFINE MAP_HIDDEN_EXIT     4 
DEFINE MAP_HIDDEN_BONUS    5 
DEFINE MAP_BONUS           6 
DEFINE MAP_EXIT            8 

; Bomb related
DEFINE MAX_BOMB            10 
DEFINE MAX_BOMB_RANGE      5 
DEFINE DEMO_BOMB_RANGE     4 
DEFINE MAX_FIRE            80 		; MAX_BOMB*8

; Enemy related
DEFINE MAX_ENEMY           10 

; Enemy type code
DEFINE ENEMY_NONE          0 
DEFINE ENEMY_VALCOM        1 
DEFINE ENEMY_ONEAL         2 
DEFINE ENEMY_DAHL          3 
DEFINE ENEMY_MINVO         4 
DEFINE ENEMY_DORIA         5 
DEFINE ENEMY_OVAPE         6 
DEFINE ENEMY_PASS          7 
DEFINE ENEMY_PONTAN        8 

; Gaze directions
DEFINE GAZE_RIGHT          1 
DEFINE GAZE_UP             2 
DEFINE GAZE_LEFT           3 
DEFINE GAZE_DOWN           4 

; Password related
DEFINE PW_FIRST_CHAR       $41 	; 'A'
DEFINE PW_LAST_CHAR        $50 	; 'P'
DEFINE PW_MAX_CHARS        20 
DEFINE PW_CURSOR_FLASH_SPEED 10 

; Misc
DEFINE END_OF_STRING       $FF 

; Mini tiles (score digits)
DEFINE SCORE_00            $46 
DEFINE SCORE_0             $47 
DEFINE SCORE_1             $EC 
DEFINE SCORE_2             $ED 
DEFINE SCORE_4             $EE 
DEFINE SCORE_8             $EF 
DEFINE SCORE_10            $FC 
DEFINE SCORE_20            $FD 
DEFINE SCORE_40            $FE 
DEFINE SCORE_80            $FF 

; Tiles
DEFINE SOLIDWHITE          $3B 
DEFINE COPYRIGHT           $FE 
DEFINE FULLSTOP            $FD 

; Sound and music related
DEFINE NUM_TUNES           10 
