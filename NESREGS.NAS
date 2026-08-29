; NES registers
; Comments transferred from https://github.com/picosonic/bomberman-nes

; Picture processing unit
DEFINE PPU_CTRL_REG1       $2000 	; NMI / PPU master or slave / sprite height / bg tile, sprite tile, nametable select
DEFINE PPU_CTRL_REG2       $2001 	; Colour emphasis / sprite, bg enable / sprite, bg left column / greyscale
DEFINE PPU_STATUS          $2002 	; VBLANK / sprite 0 hit / sprite overflow
DEFINE PPU_SPR_ADDR        $2003 	; OAM address
DEFINE PPU_SPR_DATA        $2004 	; OAM data
DEFINE PPU_SCROLL_REG      $2005 	; For writing both scroll X then scroll Y
DEFINE PPU_ADDRESS         $2006 	; For writing 2-byte PPU VRAM address
DEFINE PPU_DATA            $2007 	; Read/write PPU VRAM (includes address auto-increment)
DEFINE PPU_ATTR_TABLE      $23C0 	; Background palette attribute table for nametable

; Audio processing unit
DEFINE APU_REG_BASE        $4000 	; Shortcut used with indexed addressing
DEFINE APU_SQUARE1_REG     $4000 	; Pulse channel 1 base
DEFINE APU_SQUARE2_REG     $4004 	; Pulse channel 2 base
DEFINE APU_TRIANGLE_REG    $4008 	; Triangle channel base
DEFINE APU_NOISE_REG       $400C 	; Noise channel base
DEFINE APU_DMC_FREQ_REG    $4010 	; Delta modulation channel (for 7-bit PCM), play mode and frequency
DEFINE APU_DMC_RAW_REG     $4011 	; DMC 7-bit DAC
DEFINE APU_DMC_START_REG   $4012 	; DMC start of waveform at address &C000 + &40*&xx
DEFINE APU_DMC_LEN_REG     $4013 	; DMC length of waveform is &10*&xx + 1 bytes (128*&xx + 8 samples)
DEFINE APU_MASTERCTRL_REG  $4015 	; Enable/disable APU channels

; OAM
DEFINE PPU_SPR_DMA         $4014 	; OAM DMA

; I/O
DEFINE JOYPAD_PORT1        $4016
DEFINE JOYPAD_PORT2        $4017
