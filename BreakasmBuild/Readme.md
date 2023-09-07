# Breakasm Build

Build using the Breakasm assembler.

## Текущие проблемы

### Проблема 1

```
ERROR(BMAN.NAS,4496): Unknown command SUCCEED"
ERROR(BMAN.NAS,4497): Reserved keyword used as label 'BYTE'
```

Breaknes считает что символы `:` внутри строк - это метки:

```
unk_DC53:   BYTE $20       
        BYTE $88
        BYTE "CONGRATULATIONS"
        BYTE   0
        BYTE $20
        BYTE $E4
        BYTE "YOU:HAVE:SUCCEED"
        BYTE "ED:IN"
```

Это проблема процедуры парсера строки `parse_line`.

### Проблема 2

```
ERROR(BMAN.NAS,43): Undefined label 'SPR_TAB+1' (BABADABA)
ERROR(BMAN.NAS,45): Undefined label 'SPR_TAB+2' (BABADABA)
ERROR(BMAN.NAS,47): Undefined label 'SPR_TAB+3' (BABADABA)
```

Не хватает простого eval-процессора, который умеет делать простые арифметические действия. В данном случае Xref на метку `SPR_TAB+1` воспринялся как имя метки `SPR_TAB+1`, что видно в дампе меток:

```
LABELS (754):
1: $0000C000 = 'RESET'
2: $0000C00D = 'WAIT_VBLANK1'
3: $0000C012 = 'WAIT_VBLANK2'
4: $0000C30C = 'START'
5: $0000C01A = 'NMI'
6: $0000C03E = 'SEND_SPRITES'
7: $BABADABA = 'SPR_TAB+1'
8: $BABADABA = 'SPR_TAB+2'
9: $BABADABA = 'SPR_TAB+3'
```

Нужно прокачать процедуру обработки составных выреажений `eval`.
