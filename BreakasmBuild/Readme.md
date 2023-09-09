# Breakasm Build

Build using the Breakasm assembler.

## Текущие проблемы

### Проблема

Should:

```
    680  c3c7				   loc_C3C7
...
    701  c3f0		       85 55		      STA	SEED+1
    702  c3f2		       85 56		      STA	SEED+2
    703  c3f4		       85 57		      STA	SEED+3
    704  c3f6		       85 33		      STA	FRAME_CNT
    705  c3f8		       a9 f4		      LDA	#$F4
    706  c3fa		       85 ac		      STA	DEMOKEY_DATA
    707  c3fc		       a9 ed		      LDA	#$ED
    708  c3fe		       85 ad		      STA	DEMOKEY_DATA+1
    709  c400		       ad f2 ed 	      LDA	DEMO_KEYDATA
    710  c403		       85 ae		      STA	DEMOKEY_TIMEOUT
    711  c405		       ad f3 ed 	      LDA	DEMO_KEYDATA+1
    712  c408		       85 af		      STA	DEMOKEY_PAD1
    713  c40a
    714  c40a				   loc_C40A
```

Get:
```
ROM:C3C7                                                 loc_C3C7:                               ; CODE XREF: sub_C617-25B↑j
...
ROM:C3F0 8D 55 00                                                        STA     byte_55        // SEED+1
ROM:C3F3 8D 56 00                                                        STA     byte_56        // SEED+2
ROM:C3F6 8D 57 00                                                        STA     byte_57        // SEED+3
ROM:C3F9 85 33                                                           STA     byte_33
ROM:C3FB A9 F4                                                           LDA     #$F4
ROM:C3FD 85 AC                                                           STA     byte_AC
ROM:C3FF A9 ED                                                           LDA     #$ED
ROM:C401 8D AD 00                                                        STA     byte_AD        // DEMOKEY_DATA+1
ROM:C404 AD 27 EE                                                        LDA     byte_EE27
ROM:C407 85 AE                                                           STA     byte_AE
ROM:C409 AD 28 EE                                                        LDA     byte_EE28
ROM:C40C 85 AF                                                           STA     byte_AF
ROM:C40E
ROM:C40E                                                 loc_C40E:                               ; CODE XREF: sub_C617-263↑j
```

При составных выражениях считает что метка -- это Abs, а на самом деле - ZeroPage.

Что делать?

Попытаться разрешить "метку" inplace!!
