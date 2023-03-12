; turn the screen off with ppu_off()

; CPU MEMORY
; $0000-07FF Internal Ram

; $2000-2007 PPU Registers

; $4000-4017 APU Registers/Controllers

; $6000-7FFF Extra RAM, if on cartridge
; $8000-FFFF ROM, on cartridge

; $FFFA-FFFB NMI vector
; $FFFC-FFFD Reset vector
; $FFFE-FFFF IRQ/BRK vector

; PPU MEMORY (like a GPU)
; $0000-0FFF Tileset #0
; $1000-1FFF Tileset #1
; $2000-23FF Nametable #0
; $2400-27FF Nametable #1
; $2800-2BFF Nametable #2
; $2C00-2FFF Nametable #3
; $3000-3EFF Mirror of 2000-2EFF
; $3F00-3F1F Color Palette
; $3F20-3FFF Mirrors of Palette
