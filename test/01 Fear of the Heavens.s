0200: clrp
0201: di
0202: mov   x,#$FF
0204: mov   sp,x
0205: mov   a,#$00
0207: mov   x,a
0208: mov   (x)+,a
0209: cmp   x,#$F0
020B: bne   $0208
020D: mov   a,#$00
020F: mov   y,#$0C
0211: call  $061B
0214: mov   y,#$1C
0216: call  $061B
0219: mov   y,#$2C
021B: call  $061B
021E: mov   y,#$3C
0220: call  $061B
0223: mov   y,#$2D
0225: call  $061B
0228: mov   y,#$3D
022A: call  $061B
022D: mov   y,#$4D
022F: call  $061B
0232: mov   y,#$5D
0234: mov   a,#$19
0236: call  $061B
0239: mov   y,#$07
023B: mov   x,#$A0
023D: mov   $F2,y
023F: mov   $F3,x
0241: mov   a,y
0242: clrc
0243: adc   a,#$10
0245: mov   y,a
0246: bpl   $023d
0248: mov   $F1,#$F0
024B: mov   $FA,#$24
024E: mov   $F1,#$01
0251: mov   $DF,#$02
0254: call  $12DE
0257: call  $132F
025A: mov   a,#$7F
025C: mov   y,#$0C
025E: call  $061B
0261: mov   y,#$1C
0263: call  $061B
0266: mov   $B0,#$FF
0269: mov   $DD,#$07
026C: set7  $90
026E: set7  $9C
0270: mov   y,#$08
0272: mov   a,#$FF
0274: mov   $FF7F+y,a
0277: dbnz  y,$0274
0279: call  $0CAF
027C: mov   y,$FD
027E: beq   $0279
0280: mov   y,#$06
0282: mov   a,$158B+y
0285: mov   $F2,a
0287: mov   a,$1591+y
028A: mov   x,a
028B: mov   a,(x)
028C: mov   $F3,a
028E: dbnz  y,$0282
0290: mov   $B0,y
0292: mov   $AF,y
0294: bbs7  $B1,$02ac
0297: movw  ya,$AD
0299: movw  $F6,ya
029B: bbs5  $B1,$02a2
029E: mov   a,#$00
02A0: bra   $02a8
02A2: mov   a,$8B
02A4: bne   $02a8
02A6: clr5  $B1
02A8: mov   $F5,a
02AA: bra   $02af
02AC: call  $138E
02AF: movw  ya,$CB
02B1: bne   $02bd
02B3: dec   $DD
02B5: bne   $02bd
02B7: mov   $DD,#$07
02BA: call  $13E5
02BD: call  $02F7
02C0: mov   x,#$00
02C2: mov   $B2,#$01
02C5: mov   a,$AE
02C7: eor   a,#$FF
02C9: and   a,$AD
02CB: mov   $02,a
02CD: lsr   $02
02CF: bcc   $02d6
02D1: mov   $05,x
02D3: call  $0AC0
02D6: inc   x
02D7: inc   x
02D8: asl   $B2
02DA: bne   $02cd
02DC: mov   x,#$10
02DE: mov   $B2,#$01
02E1: mov   a,$AE
02E3: mov   $02,a
02E5: lsr   $02
02E7: bcc   $02ee
02E9: mov   $05,x
02EB: call  $0AC0
02EE: inc   x
02EF: inc   x
02F0: asl   $B2
02F2: bne   $02e5
02F4: jmp   $0279
02F7: mov   a,$90
02F9: eor   a,#$80
02FB: mov   y,$7D
02FD: mul   ya
02FE: mov   a,y
02FF: bbc7  $90,$030c
0302: asl   a
0303: clrc
0304: adc   a,$7D
0306: bcc   $030f
0308: mov   a,#$FF
030A: bra   $030f
030C: bne   $030f
030E: inc   a
030F: clrc
0310: adc   a,$7E
0312: mov   $7E,a
0314: bbs1  $B1,$0319
0317: bcc   $0367
0319: mov   x,#$00
031B: mov   $B2,#$01
031E: mov   ($02),($AD)
0321: lsr   $02
0323: bcc   $0355
0325: mov   $05,x
0327: dec   $3C+x
0329: bne   $0330
032B: call  $03B1
032E: bra   $0351
0330: mov   a,$AE
0332: and   a,$B2
0334: bne   $0355
0336: mov   a,#$02
0338: cbne  $3C+x,$0344
033B: mov   a,$C2
033D: and   a,$B2
033F: bne   $0344
0341: or    ($B0),($B2)
0344: setp
0345: mov   a,$00+x
0347: beq   $034b
0349: dec   $00+x
034B: mov   a,$01+x
034D: beq   $0351
034F: dec   $01+x
0351: clrp
0352: call  $09DF
0355: inc   x
0356: inc   x
0357: asl   $B2
0359: bne   $0321
035B: mov   a,$80
035D: beq   $0367
035F: dec   $80
0361: movw  ya,$81
0363: addw  ya,$7C
0365: movw  $7C,ya
0367: mov   a,#$78
0369: clrc
036A: adc   a,$7F
036C: mov   $7F,a
036E: bbs1  $B1,$0373
0371: bcc   $03b0
0373: mov   x,#$10
0375: mov   $B2,#$01
0378: mov   a,$AE
037A: mov   $02,a
037C: lsr   $02
037E: bcc   $03aa
0380: mov   $05,x
0382: dec   $3C+x
0384: bne   $038b
0386: call  $03B1
0389: bra   $03a6
038B: mov   a,#$02
038D: cbne  $3C+x,$0399
0390: mov   a,$C3
0392: and   a,$B2
0394: bne   $0399
0396: or    ($B0),($B2)
0399: setp
039A: mov   a,$00+x
039C: beq   $03a0
039E: dec   $00+x
03A0: mov   a,$01+x
03A2: beq   $03a6
03A4: dec   $01+x
03A6: clrp
03A7: call  $09DF
03AA: inc   x
03AB: inc   x
03AC: asl   $B2
03AE: bne   $037c
03B0: ret
03B1: call  $0562
03B4: cmp   a,#$D2
03B6: bcc   $03bd
03B8: call  $054E
03BB: bra   $03b1
03BD: mov   y,#$00
03BF: mov   x,#$0F
03C1: div   ya,x
03C2: mov   x,$05
03C4: mov   a,$152C+y
03C7: mov   $3C+x,a
03C9: call  $056D
03CC: cmp   $04,#$B4
03CF: bcc   $03da
03D1: cmp   $04,#$C3
03D4: bcs   $03d9
03D6: jmp   $0485
03D9: ret
03DA: cmp   x,#$10
03DC: bcs   $03e4
03DE: mov   a,$AE
03E0: and   a,$B2
03E2: bne   $03d9
03E4: mov   a,$04
03E6: mov   y,#$00
03E8: mov   x,#$0F
03EA: div   ya,x
03EB: mov   $04,a
03ED: mov   x,$05
03EF: mov   a,$3D+x
03F1: mov   y,#$0C
03F3: mul   ya
03F4: clrc
03F5: adc   a,$04
03F7: clrc
03F8: adc   a,$FD61+x
03FB: setc
03FC: sbc   a,#$0A
03FE: mov   $FD41+x,a
0401: call  $04ED
0404: mov   a,$08
0406: mov   $FE60+x,a
0409: mov   a,$09
040B: mov   $FE61+x,a
040E: mov   y,#$07
0410: mov   a,$0121+x
0413: beq   $0437
0415: cmp   a,#$C0
0417: bcs   $041d
0419: mov   a,#$00
041B: bra   $041f
041D: mov   a,#$80
041F: mov   $FDC0+x,a
0422: mov   a,#$01
0424: mov   $FCE0+x,a
0427: mov   a,$0160+x
042A: mov   $0100+x,a
042D: beq   $0432
042F: mov   a,y
0430: bra   $0434
0432: mov   a,#$00
0434: mov   $FE00+x,a
0437: mov   a,$0140+x
043A: beq   $0460
043C: cmp   a,#$C0
043E: bcs   $0444
0440: mov   a,#$00
0442: bra   $0446
0444: mov   a,#$80
0446: mov   $FDC1+x,a
0449: mov   a,#$01
044B: mov   $FCE1+x,a
044E: mov   a,$0161+x
0451: mov   $0101+x,a
0454: beq   $0459
0456: mov   a,y
0457: bra   $045b
0459: mov   a,#$00
045B: mov   $FE01+x,a
045E: mov   a,#$00
0460: mov   $FE40+x,a
0463: mov   $FE41+x,a
0466: mov   $FD01+x,a
0469: mov   $FD80+x,a
046C: mov   $FD81+x,a
046F: cmp   x,#$10
0471: bcs   $0479
0473: mov   a,$AE
0475: and   a,$B2
0477: bne   $0485
0479: or    ($C9),($B2)
047C: or    ($CA),($B2)
047F: or    ($AF),($B2)
0482: call  $0883
0485: mov   a,$0120+x
0488: beq   $04ec
048A: clrc
048B: adc   a,$FD41+x
048E: mov   $FD41+x,a
0491: call  $04ED
0494: mov   a,$FE60+x
0497: mov   $34,a
0499: mov   a,$FE61+x
049C: mov   $35,a
049E: movw  ya,$08
04A0: setc
04A1: subw  ya,$34
04A3: movw  $34,ya
04A5: push  psw
04A6: bcs   $04b0
04A8: eor   $34,#$FF
04AB: eor   $35,#$FF
04AE: incw  $34
04B0: mov   a,$FCC1+x
04B3: bne   $04bd
04B5: mov   ($34),($35)
04B8: mov   $35,#$00
04BB: bra   $04ca
04BD: mov   x,a
04BE: mov   a,$35
04C0: mov   y,#$00
04C2: div   ya,x
04C3: mov   $35,a
04C5: mov   a,$34
04C7: div   ya,x
04C8: mov   $34,a
04CA: movw  ya,$34
04CC: bne   $04d0
04CE: inc   $34
04D0: pop   psw
04D1: bcs   $04db
04D3: eor   $34,#$FF
04D6: eor   $35,#$FF
04D9: incw  $34
04DB: mov   x,$05
04DD: mov   a,$34
04DF: mov   $FD80+x,a
04E2: mov   a,$35
04E4: mov   $FD81+x,a
04E7: mov   a,#$00
04E9: mov   $0120+x,a
04EC: ret
04ED: mov   x,#$0C
04EF: mov   y,#$00
04F1: div   ya,x
04F2: mov   x,$05
04F4: mov   $03,a
04F6: mov   a,y
04F7: asl   a
04F8: mov   y,a
04F9: mov   a,$14F2+y
04FC: mov   $0A,a
04FE: mov   a,$14F3+y
0501: mov   $0B,a
0503: mov   y,a
0504: mov   a,$FD20+x
0507: clrc
0508: adc   a,$FD40+x
050B: push  psw
050C: push  a
050D: mul   ya
050E: movw  $08,ya
0510: mov   y,$0A
0512: pop   a
0513: mul   ya
0514: mov   a,y
0515: mov   y,#$00
0517: addw  ya,$08
0519: movw  $08,ya
051B: mov   a,$FD21+x
051E: beq   $0528
0520: mul   ya
0521: mov   a,y
0522: mov   y,#$00
0524: addw  ya,$08
0526: bra   $052a
0528: mov   a,$08
052A: pop   psw
052B: bmi   $052f
052D: addw  ya,$0A
052F: movw  $08,ya
0531: mov   a,#$04
0533: mov   y,$03
0535: bmi   $0545
0537: cmp   a,$03
0539: bcs   $054a
053B: asl   $08
053D: rol   $09
053F: inc   a
0540: cbne  $03,$053b
0543: bra   $054d
0545: lsr   $09
0547: ror   $08
0549: dec   a
054A: cbne  $03,$0545
054D: ret
054E: sbc   a,#$D2
0550: asl   a
0551: mov   y,a
0552: mov   a,$1429+y
0555: push  a
0556: mov   a,$1428+y
0559: push  a
055A: mov   a,y
055B: lsr   a
055C: mov   y,a
055D: mov   a,$1484+y
0560: beq   $056c
0562: mov   a,($0C+x)
0564: mov   $04,a
0566: inc   $0C+x
0568: bne   $056c
056A: inc   $0D+x
056C: ret
056D: mov   a,$0C+x
056F: mov   y,$0D+x
0571: movw  $2C,ya
0573: mov   a,$5C+x
0575: mov   $DE,a
0577: mov   y,#$00
0579: mov   a,($2C)+y
057B: cmp   a,#$D2
057D: bcc   $05f5
057F: incw  $2C
0581: cmp   a,#$F2
0583: beq   $05f5
0585: cmp   a,#$FA
0587: bne   $0597
0589: mov   a,($2C)+y
058B: push  a
058C: inc   y
058D: mov   a,($2C)+y
058F: mov   y,a
0590: pop   a
0591: addw  ya,$06
0593: movw  $2C,ya
0595: bra   $0577
0597: cmp   a,#$F1
0599: bne   $05c2
059B: mov   y,$DE
059D: mov   a,$FEC0+y
05A0: beq   $05b3
05A2: dec   a
05A3: bne   $05b3
05A5: dec   $DE
05A7: mov   a,x
05A8: asl   a
05A9: dec   a
05AA: cbne  $DE,$0577
05AD: clrc
05AE: adc   $DE,#$04
05B1: bra   $0577
05B3: mov   a,y
05B4: asl   a
05B5: mov   y,a
05B6: mov   a,$FF00+y
05B9: mov   $2C,a
05BB: mov   a,$FF01+y
05BE: mov   $2D,a
05C0: bra   $0577
05C2: cmp   a,#$F9
05C4: bne   $05d7
05C6: mov   y,$DE
05C8: mov   a,$FEA0+y
05CB: inc   a
05CC: cmp   a,($2C)+y
05CE: bne   $05d3
05D0: inc   y
05D1: bra   $0589
05D3: mov   y,#$03
05D5: bra   $05ef
05D7: cmp   a,#$FB
05D9: bne   $05e5
05DB: mov   a,$B2
05DD: and   a,$C4
05DF: bne   $0589
05E1: mov   y,#$02
05E3: bra   $05ef
05E5: setc
05E6: sbc   a,#$D2
05E8: mov   y,a
05E9: mov   a,$1484+y
05EC: beq   $0577
05EE: mov   y,a
05EF: incw  $2C
05F1: dbnz  y,$05ef
05F3: bra   $0579
05F5: mov   y,a
05F6: mov   a,$B2
05F8: cmp   y,#$C3
05FA: bcs   $060e
05FC: cmp   y,#$B4
05FE: bcc   $060e
0600: cmp   x,#$10
0602: bcs   $0609
0604: tset1 $00C2
0607: bra   $061a
0609: tset1 $00C3
060C: bra   $061a
060E: cmp   x,#$10
0610: bcs   $0617
0612: tclr1 $00C2
0615: bra   $061a
0617: tclr1 $00C3
061A: ret
061B: mov   $F2,y
061D: mov   $F3,a
061F: ret
0620: cmp   x,#$10
0622: bcs   $062c
0624: mov   $7D,a
0626: mov   a,#$00
0628: mov   $7C,a
062A: mov   $80,a
062C: ret
062D: mov   $80,a
062F: call  $0562
0632: cmp   x,#$10
0634: bcs   $0664
0636: mov   y,$80
0638: beq   $0620
063A: setc
063B: sbc   a,$7D
063D: beq   $062a
063F: push  psw
0640: bcs   $0645
0642: eor   a,#$FF
0644: inc   a
0645: mov   x,$80
0647: mov   y,#$00
0649: div   ya,x
064A: mov   $35,a
064C: mov   a,#$00
064E: div   ya,x
064F: mov   $34,a
0651: mov   x,$05
0653: pop   psw
0654: bcs   $065e
0656: eor   $34,#$FF
0659: eor   $35,#$FF
065C: incw  $34
065E: movw  ya,$34
0660: mov   $81,a
0662: mov   $82,y
0664: ret
0665: mov   $AC,a
0667: ret
0668: mov   $FC01+x,a
066B: mov   a,#$00
066D: mov   $FC00+x,a
0670: mov   $FC80+x,a
0673: ret
0674: mov   $34,a
0676: mov   $FC80+x,a
0679: call  $0562
067C: mov   y,$34
067E: beq   $0668
0680: setc
0681: sbc   a,$FC01+x
0684: beq   $0670
0686: push  psw
0687: bcs   $068c
0689: eor   a,#$FF
068B: inc   a
068C: mov   x,$34
068E: mov   y,#$00
0690: div   ya,x
0691: mov   $35,a
0693: mov   a,#$00
0695: div   ya,x
0696: mov   $34,a
0698: mov   x,$05
069A: pop   psw
069B: bcs   $06a5
069D: eor   $34,#$FF
06A0: eor   $35,#$FF
06A3: incw  $34
06A5: mov   a,$34
06A7: mov   $FC20+x,a
06AA: mov   a,$35
06AC: mov   $FC21+x,a
06AF: ret
06B0: call  $0562
06B3: ret
06B4: cmp   x,#$10
06B6: bcs   $06c4
06B8: mov   $FC41+x,a
06BB: mov   a,#$00
06BD: mov   $FC40+x,a
06C0: mov   $FC81+x,a
06C3: ret
06C4: mov   y,a
06C5: push  psw
06C6: eor   a,#$80
06C8: pop   psw
06C9: bpl   $06d5
06CB: clrc
06CC: adc   a,$FC41+x
06CF: bcc   $06e0
06D1: mov   a,#$FF
06D3: bra   $06e0
06D5: eor   a,#$FF
06D7: inc   a
06D8: clrc
06D9: adc   a,$FC41+x
06DC: bcs   $06e0
06DE: mov   a,#$00
06E0: mov   $FC41+x,a
06E3: ret
06E4: mov   $34,a
06E6: mov   $FC81+x,a
06E9: call  $0562
06EC: mov   y,$34
06EE: beq   $06b8
06F0: setc
06F1: sbc   a,$FC41+x
06F4: beq   $06c0
06F6: push  psw
06F7: bcs   $06fc
06F9: eor   a,#$FF
06FB: inc   a
06FC: mov   x,$34
06FE: mov   y,#$00
0700: div   ya,x
0701: mov   $35,a
0703: mov   a,#$00
0705: div   ya,x
0706: mov   $34,a
0708: mov   x,$05
070A: pop   psw
070B: bcs   $0715
070D: eor   $34,#$FF
0710: eor   $35,#$FF
0713: incw  $34
0715: mov   a,$34
0717: mov   $FC60+x,a
071A: mov   a,$35
071C: mov   $FC61+x,a
071F: ret
0720: inc   a
0721: mov   $FCC1+x,a
0724: call  $0562
0727: mov   $0120+x,a
072A: ret
072B: clrc
072C: adc   a,$FD61+x
072F: mov   $FD61+x,a
0732: ret
0733: call  $0562
0736: ret
0737: mov   $0160+x,a
073A: call  $0562
073D: inc   a
073E: mov   $FCA0+x,a
0741: mov   a,#$01
0743: mov   $FCE0+x,a
0746: call  $0562
0749: mov   $0121+x,a
074C: ret
074D: mov   $0161+x,a
0750: call  $0562
0753: inc   a
0754: mov   $FCA1+x,a
0757: mov   a,#$01
0759: mov   $FCE1+x,a
075C: call  $0562
075F: mov   $0140+x,a
0762: ret
0763: clrc
0764: inc   a
0765: mov   $FCC0+x,a
0768: bne   $076b
076A: setc
076B: ror   a
076C: bne   $076f
076E: inc   a
076F: mov   $FD00+x,a
0772: mov   y,a
0773: call  $0562
0776: asl   a
0777: mov   a,$04
0779: and   a,#$7F
077B: bcc   $077f
077D: eor   a,#$7F
077F: mov   $34,a
0781: mov   a,y
0782: bpl   $0789
0784: mov   $35,#$00
0787: bra   $079c
0789: mov   x,a
078A: mov   y,#$00
078C: mov   a,$34
078E: div   ya,x
078F: mov   $35,a
0791: mov   a,#$00
0793: div   ya,x
0794: mov   $34,a
0796: movw  ya,$34
0798: bne   $079c
079A: inc   $34
079C: bcc   $07a6
079E: eor   $34,#$FF
07A1: eor   $35,#$FF
07A4: incw  $34
07A6: mov   x,$05
07A8: mov   a,$34
07AA: mov   $FDA0+x,a
07AD: mov   a,$35
07AF: mov   $FDA1+x,a
07B2: mov   a,$04
07B4: mov   $0141+x,a
07B7: mov   a,#$00
07B9: mov   $FDE0+x,a
07BC: mov   $FDE1+x,a
07BF: ret
07C0: mov   a,$003D+x
07C3: inc   a
07C4: bra   $07ca
07C6: mov   a,$003D+x
07C9: dec   a
07CA: mov   $003D+x,a
07CD: ret
07CE: cmp   x,#$10
07D0: bcs   $07d7
07D2: or    ($BC),($B2)
07D5: bra   $07da
07D7: or    ($BD),($B2)
07DA: mov   a,$AE
07DC: eor   a,#$FF
07DE: and   a,$BC
07E0: or    a,$BD
07E2: mov   $B8,a
07E4: ret
07E5: mov   a,$B2
07E7: cmp   x,#$10
07E9: bcs   $07f0
07EB: tclr1 $00BC
07EE: bra   $07da
07F0: tclr1 $00BD
07F3: bra   $07da
07F5: cmp   x,#$10
07F7: bcs   $07fe
07F9: or    ($BE),($B2)
07FC: bra   $0803
07FE: or    ($BF),($B2)
0801: set4  $B1
0803: mov   a,$BB
0805: and   a,#$E0
0807: bbs4  $B1,$080e
080A: or    a,$C5
080C: bra   $0810
080E: or    a,$C6
0810: mov   $BB,a
0812: mov   a,$AE
0814: eor   a,#$FF
0816: and   a,$BE
0818: or    a,$BF
081A: mov   $B9,a
081C: ret
081D: mov   a,$B2
081F: cmp   x,#$10
0821: bcs   $0828
0823: tclr1 $00BE
0826: bra   $0803
0828: tclr1 $00BF
082B: bne   $0803
082D: clr4  $B1
082F: bra   $0803
0831: and   a,#$1F
0833: cmp   x,#$10
0835: bcs   $083b
0837: mov   $C5,a
0839: bra   $0803
083B: mov   $C6,a
083D: bra   $0803
083F: cmp   x,#$10
0841: bcs   $0848
0843: or    ($C0),($B2)
0846: bra   $084b
0848: or    ($C1),($B2)
084B: mov   a,$AE
084D: eor   a,#$FF
084F: and   a,$C0
0851: or    a,$C1
0853: mov   $BA,a
0855: ret
0856: mov   a,$B2
0858: cmp   x,#$10
085A: bcs   $0861
085C: tclr1 $00C0
085F: bra   $084b
0861: tclr1 $00C1
0864: bra   $084b
0866: mov   $5D+x,a
0868: asl   a
0869: mov   y,a
086A: mov   a,$1800+y
086D: mov   $FD20+x,a
0870: mov   a,$1801+y
0873: mov   $FD21+x,a
0876: mov   a,$1880+y
0879: mov   $FE80+x,a
087C: mov   a,$1881+y
087F: mov   $FE81+x,a
0882: ret
0883: mov   y,$5D+x
0885: mov   a,x
0886: xcn   a
0887: lsr   a
0888: or    a,#$04
088A: mov   $F2,a
088C: mov   $F3,y
088E: bra   $08a0
0890: and   a,#$0F
0892: mov   $04,a
0894: mov   a,$FE80+x
0897: and   a,#$70
0899: or    a,$04
089B: or    a,#$80
089D: mov   $FE80+x,a
08A0: cmp   x,#$10
08A2: bcs   $08ab
08A4: mov   a,$AE
08A6: and   a,$B2
08A8: beq   $08ab
08AA: ret
08AB: mov   a,x
08AC: xcn   a
08AD: lsr   a
08AE: or    a,#$05
08B0: mov   y,a
08B1: mov   a,$FE80+x
08B4: call  $061B
08B7: inc   y
08B8: mov   a,$FE81+x
08BB: jmp   $061B
08BE: and   a,#$07
08C0: xcn   a
08C1: mov   $04,a
08C3: mov   a,$FE80+x
08C6: and   a,#$0F
08C8: or    a,$04
08CA: or    a,#$80
08CC: mov   $FE80+x,a
08CF: bra   $08a0
08D1: and   a,#$07
08D3: xcn   a
08D4: asl   a
08D5: mov   $04,a
08D7: mov   a,$FE81+x
08DA: and   a,#$1F
08DC: or    a,$04
08DE: mov   $FE81+x,a
08E1: bra   $08a0
08E3: and   a,#$1F
08E5: mov   $04,a
08E7: mov   a,$FE81+x
08EA: and   a,#$E0
08EC: or    a,$04
08EE: mov   $FE81+x,a
08F1: bra   $08a0
08F3: mov   a,$5D+x
08F5: asl   a
08F6: mov   y,a
08F7: mov   a,$1880+y
08FA: mov   $FE80+x,a
08FD: mov   a,$1881+y
0900: mov   $FE81+x,a
0903: bra   $08a0
0905: mov   y,a
0906: call  $0562
0909: cmp   x,#$10
090B: bcs   $0916
090D: mov   a,y
090E: mov   y,$04
0910: addw  ya,$06
0912: mov   $0C+x,a
0914: mov   $0D+x,y
0916: ret
0917: mov   $36,a
0919: call  $0562
091C: mov   $34,a
091E: call  $0562
0921: mov   $35,a
0923: cmp   x,#$10
0925: bcs   $0939
0927: mov   a,$FEA0+x
092A: inc   a
092B: mov   $FEA0+x,a
092E: cbne  $36,$0939
0931: movw  ya,$34
0933: addw  ya,$06
0935: mov   $0C+x,a
0937: mov   $0D+x,y
0939: ret
093A: cmp   x,#$10
093C: bcs   $0943
093E: mov   a,#$00
0940: mov   $FEA0+x,a
0943: ret
0944: inc   $5C+x
0946: mov   a,x
0947: asl   a
0948: clrc
0949: adc   a,#$04
094B: cbne  $5C+x,$0953
094E: setc
094F: sbc   a,#$04
0951: mov   $5C+x,a
0953: mov   y,$5C+x
0955: mov   a,$04
0957: beq   $095a
0959: inc   a
095A: mov   $FEC0+y,a
095D: mov   a,y
095E: asl   a
095F: mov   y,a
0960: mov   a,$0C+x
0962: mov   $FF00+y,a
0965: mov   a,$0D+x
0967: mov   $FF01+y,a
096A: ret
096B: mov   y,$5C+x
096D: mov   a,$FEC0+y
0970: beq   $0987
0972: dec   a
0973: bne   $0984
0975: mov   a,x
0976: asl   a
0977: dec   a
0978: dec   $5C+x
097A: cbne  $5C+x,$0994
097D: clrc
097E: adc   a,#$04
0980: mov   $5C+x,a
0982: bra   $0994
0984: mov   $FEC0+y,a
0987: mov   a,y
0988: asl   a
0989: mov   y,a
098A: mov   a,$FF00+y
098D: mov   $0C+x,a
098F: mov   a,$FF01+y
0992: mov   $0D+x,a
0994: ret
0995: mov   y,a
0996: call  $0562
0999: cmp   x,#$10
099B: bcs   $09af
099D: mov   a,$B2
099F: and   a,$C4
09A1: beq   $09af
09A3: tclr1 $00C4
09A6: mov   a,y
09A7: mov   y,$04
09A9: addw  ya,$06
09AB: mov   $0C+x,a
09AD: mov   $0D+x,y
09AF: ret
09B0: mov   $FD40+x,a
09B3: ret
09B4: cmp   x,#$10
09B6: bcs   $09bb
09B8: mov   $FF88,a
09BB: ret
09BC: pop   a
09BD: pop   a
09BE: mov   a,$B2
09C0: cmp   x,#$10
09C2: bcs   $09c9
09C4: tclr1 $00AD
09C7: bra   $09d6
09C9: tclr1 $00AE
09CC: mov   a,x
09CD: lsr   a
09CE: and   a,#$07
09D0: mov   y,a
09D1: mov   a,#$FF
09D3: mov   $FF80+y,a
09D6: call  $081D
09D9: call  $0856
09DC: jmp   $07E5
09DF: mov   a,$FC80+x
09E2: beq   $0a0a
09E4: dec   a
09E5: mov   $FC80+x,a
09E8: mov   a,$FC00+x
09EB: mov   $34,a
09ED: mov   a,$FC01+x
09F0: mov   $35,a
09F2: mov   a,$FC21+x
09F5: mov   y,a
09F6: mov   a,$FC20+x
09F9: addw  ya,$34
09FB: mov   $FC00+x,a
09FE: mov   a,y
09FF: cmp   a,$FC01+x
0A02: mov   $FC01+x,a
0A05: beq   $0a0a
0A07: or    ($C9),($B2)
0A0A: mov   a,$FC81+x
0A0D: beq   $0a35
0A0F: dec   a
0A10: mov   $FC81+x,a
0A13: mov   a,$FC40+x
0A16: mov   $34,a
0A18: mov   a,$FC41+x
0A1B: mov   $35,a
0A1D: mov   a,$FC61+x
0A20: mov   y,a
0A21: mov   a,$FC60+x
0A24: addw  ya,$34
0A26: mov   $FC40+x,a
0A29: mov   a,y
0A2A: cmp   a,$FC41+x
0A2D: mov   $FC41+x,a
0A30: beq   $0a35
0A32: or    ($C9),($B2)
0A35: mov   a,$FD80+x
0A38: mov   $34,a
0A3A: mov   a,$FD81+x
0A3D: mov   $35,a
0A3F: movw  ya,$34
0A41: beq   $0a65
0A43: mov   a,$FCC1+x
0A46: dec   a
0A47: bne   $0a4f
0A49: mov   $FD80+x,a
0A4C: mov   $FD81+x,a
0A4F: mov   $FCC1+x,a
0A52: mov   a,$FE61+x
0A55: mov   y,a
0A56: mov   a,$FE60+x
0A59: addw  ya,$34
0A5B: mov   $FE60+x,a
0A5E: mov   a,y
0A5F: mov   $FE61+x,a
0A62: or    ($CA),($B2)
0A65: mov   a,$0141+x
0A68: beq   $0abf
0A6A: mov   a,$FDA0+x
0A6D: mov   $34,a
0A6F: mov   a,$FDA1+x
0A72: mov   $35,a
0A74: mov   a,$FDE1+x
0A77: mov   y,a
0A78: mov   $36,a
0A7A: mov   a,$FDE0+x
0A7D: addw  ya,$34
0A7F: mov   $FDE0+x,a
0A82: mov   a,y
0A83: bbs7  $35,$0a8f
0A86: bbs7  $36,$0a96
0A89: bpl   $0a96
0A8B: mov   a,#$7F
0A8D: bra   $0a96
0A8F: bbc7  $36,$0a96
0A92: bmi   $0a96
0A94: mov   a,#$80
0A96: cmp   a,$FDE1+x
0A99: mov   $FDE1+x,a
0A9C: beq   $0aa1
0A9E: or    ($C9),($B2)
0AA1: mov   a,$FD00+x
0AA4: dec   a
0AA5: bne   $0abc
0AA7: eor   $34,#$FF
0AAA: eor   $35,#$FF
0AAD: incw  $34
0AAF: mov   a,$34
0AB1: mov   $FDA0+x,a
0AB4: mov   a,$35
0AB6: mov   $FDA1+x,a
0AB9: mov   a,$FCC0+x
0ABC: mov   $FD00+x,a
0ABF: ret
0AC0: mov   a,$0121+x
0AC3: beq   $0b31
0AC5: mov   y,a
0AC6: mov   a,$0100+x
0AC9: bne   $0b31
0ACB: mov   a,$FCE0+x
0ACE: dec   a
0ACF: bne   $0b2e
0AD1: mov   a,$FE00+x
0AD4: movw  $34,ya
0AD6: mov   a,$FDC0+x
0AD9: mov   $36,a
0ADB: call  $0C5E
0ADE: mov   $FDC0+x,a
0AE1: asl   a
0AE2: bne   $0ae7
0AE4: mov   y,a
0AE5: bra   $0b21
0AE7: push  psw
0AE8: push  a
0AE9: push  a
0AEA: mov   a,$34
0AEC: mov   $FE00+x,a
0AEF: mov   y,#$0F
0AF1: mov   a,$FE61+x
0AF4: mul   ya
0AF5: movw  $36,ya
0AF7: mov   y,#$0F
0AF9: mov   a,$FE60+x
0AFC: mul   ya
0AFD: mov   a,y
0AFE: mov   y,#$00
0B00: addw  ya,$36
0B02: mov   $36,a
0B04: pop   a
0B05: mul   ya
0B06: movw  $38,ya
0B08: pop   a
0B09: mov   y,$36
0B0B: mul   ya
0B0C: mov   a,y
0B0D: mov   y,#$00
0B0F: addw  ya,$38
0B11: pop   psw
0B12: bcc   $0b21
0B14: eor   a,#$FF
0B16: mov   $38,a
0B18: mov   a,y
0B19: eor   a,#$FF
0B1B: mov   $39,a
0B1D: incw  $38
0B1F: movw  ya,$38
0B21: mov   $FE40+x,a
0B24: mov   a,y
0B25: mov   $FE41+x,a
0B28: or    ($CA),($B2)
0B2B: mov   a,$FCA0+x
0B2E: mov   $FCE0+x,a
0B31: mov   a,$0140+x
0B34: beq   $0b63
0B36: mov   y,a
0B37: mov   a,$0101+x
0B3A: bne   $0b63
0B3C: mov   a,$FCE1+x
0B3F: dec   a
0B40: bne   $0b60
0B42: mov   a,$FE01+x
0B45: movw  $34,ya
0B47: mov   a,$FDC1+x
0B4A: mov   $36,a
0B4C: call  $0C5E
0B4F: mov   $FDC1+x,a
0B52: mov   $FD01+x,a
0B55: mov   a,$34
0B57: mov   $FE01+x,a
0B5A: or    ($C9),($B2)
0B5D: mov   a,$FCA1+x
0B60: mov   $FCE1+x,a
0B63: movw  ya,$C9
0B65: bne   $0b68
0B67: ret
0B68: mov   a,x
0B69: and   a,#$0F
0B6B: mov   $34,a
0B6D: xcn   a
0B6E: lsr   a
0B6F: mov   $35,a
0B71: mov   a,$B2
0B73: and   a,$C9
0B75: bne   $0b7a
0B77: jmp   $0C0A
0B7A: mov   $36,#$80
0B7D: bbs0  $B1,$0b9c
0B80: mov   a,$FC41+x
0B83: clrc
0B84: adc   a,$FDE1+x
0B87: push  a
0B88: mov   a,$FDE1+x
0B8B: pop   a
0B8C: bmi   $0b94
0B8E: bcc   $0b98
0B90: mov   a,#$FF
0B92: bra   $0b98
0B94: bcs   $0b98
0B96: mov   a,#$00
0B98: eor   a,#$FF
0B9A: mov   $36,a
0B9C: mov   a,$FC01+x
0B9F: mov   y,a
0BA0: mov   $37,a
0BA2: mov   a,$FD01+x
0BA5: asl   a
0BA6: beq   $0bb8
0BA8: bcc   $0bad
0BAA: eor   a,#$FF
0BAC: inc   a
0BAD: mul   ya
0BAE: bcs   $0bb8
0BB0: mov   a,y
0BB1: adc   a,$37
0BB3: bcc   $0bb7
0BB5: mov   a,#$FF
0BB7: mov   y,a
0BB8: cmp   x,#$10
0BBA: bcs   $0bca
0BBC: mov   a,$84
0BBE: mul   ya
0BBF: mov   a,$FF88
0BC2: cmp   a,$5D+x
0BC4: beq   $0bcd
0BC6: mov   a,$AC
0BC8: bra   $0bcc
0BCA: mov   a,#$90
0BCC: mul   ya
0BCD: mov   $37,y
0BCF: cmp   x,#$10
0BD1: bcc   $0bd9
0BD3: mov1  c,$00B1,03
0BD6: mov1  $0034,00,c
0BD9: mov   a,$36
0BDB: mov   y,a
0BDC: mov   a,$37
0BDE: mul   ya
0BDF: mov   a,$B2
0BE1: and   a,$B3
0BE3: beq   $0be7
0BE5: mov   y,#$00
0BE7: mov   a,y
0BE8: mov   y,$34
0BEA: mov   $00CD+y,a
0BED: lsr   a
0BEE: mov   y,a
0BEF: mov   a,$35
0BF1: cmp   x,#$10
0BF3: bcc   $0bfa
0BF5: bbc3  $B1,$0bfa
0BF8: eor   a,#$01
0BFA: mov   $F2,a
0BFC: mov   $F3,y
0BFE: mov   a,$36
0C00: eor   a,#$FF
0C02: not1  $0034,00
0C05: inc   $35
0C07: bbc1  $35,$0bdb
0C0A: set1  $35
0C0C: mov   a,$B2
0C0E: and   a,$CA
0C10: beq   $0c55
0C12: mov   a,$FE60+x
0C15: mov   $36,a
0C17: mov   a,$FE61+x
0C1A: mov   $37,a
0C1C: mov   a,$FE41+x
0C1F: mov   y,a
0C20: mov   a,$FE40+x
0C23: addw  ya,$36
0C25: movw  $36,ya
0C27: cmp   x,#$10
0C29: bcs   $0c48
0C2B: mov   a,$9C
0C2D: eor   a,#$80
0C2F: push  psw
0C30: push  a
0C31: mul   ya
0C32: movw  $38,ya
0C34: pop   a
0C35: mov   y,$36
0C37: mul   ya
0C38: mov   a,y
0C39: mov   y,#$00
0C3B: addw  ya,$38
0C3D: pop   psw
0C3E: bmi   $0c48
0C40: asl   a
0C41: push  a
0C42: mov   a,y
0C43: rol   a
0C44: mov   y,a
0C45: pop   a
0C46: addw  ya,$36
0C48: mov   x,$35
0C4A: mov   $F2,x
0C4C: mov   $F3,a
0C4E: inc   x
0C4F: mov   $F2,x
0C51: mov   $F3,y
0C53: mov   x,$05
0C55: mov   a,$B2
0C57: tclr1 $00C9
0C5A: tclr1 $00CA
0C5D: ret
0C5E: mov   a,y
0C5F: and   a,#$3F
0C61: asl   a
0C62: inc   a
0C63: bbc7  $35,$0c6f
0C66: bbc6  $35,$0c6f
0C69: bbc7  $36,$0caa
0C6C: mov   $36,#$00
0C6F: asl   $36
0C71: bne   $0c9c
0C73: mov   y,$34
0C75: beq   $0c9e
0C77: bbc0  $34,$0c83
0C7A: clr0  $34
0C7C: lsr   a
0C7D: lsr   a
0C7E: bne   $0c9e
0C80: inc   a
0C81: bra   $0c9e
0C83: bbc1  $34,$0c8e
0C86: clr1  $34
0C88: lsr   a
0C89: bne   $0c9e
0C8B: inc   a
0C8C: bra   $0c9e
0C8E: clr2  $34
0C90: lsr   a
0C91: mov   $38,a
0C93: lsr   a
0C94: clrc
0C95: adc   a,$38
0C97: bne   $0c9e
0C99: inc   a
0C9A: bra   $0c9e
0C9C: mov   a,#$00
0C9E: and   $35,#$40
0CA1: asl   $35
0CA3: eor   $35,#$80
0CA6: or    a,$35
0CA8: bra   $0cae
0CAA: mov   a,$36
0CAC: or    a,#$80
0CAE: ret
0CAF: mov   x,$F4
0CB1: beq   $0cf0
0CB3: movw  ya,$F6
0CB5: movw  $B6,ya
0CB7: movw  ya,$F4
0CB9: movw  $B4,ya
0CBB: cmp   a,#$83
0CBD: bne   $0cc1
0CBF: mov   $F5,y
0CC1: mov   $F4,a
0CC3: cmp   a,$F4
0CC5: beq   $0cc3
0CC7: mov   x,a
0CC8: bpl   $0cd7
0CCA: cmp   x,#$FE
0CCC: bne   $0cd1
0CCE: jmp   $11EA
0CD1: mov   $F4,#$00
0CD4: jmp   $0FF9
0CD7: cmp   x,#$01
0CD9: beq   $0cf1
0CDB: mov   $F4,#$00
0CDE: cmp   x,#$02
0CE0: bne   $0ce5
0CE2: jmp   $0E10
0CE5: cmp   x,#$10
0CE7: bcc   $0cf0
0CE9: cmp   x,#$20
0CEB: bcs   $0cf0
0CED: jmp   $0EF6
0CF0: ret
0CF1: mov   a,#$FF
0CF3: mov   y,#$5C
0CF5: call  $061B
0CF8: mov   $F1,#$00
0CFB: mov   $FA,#$40
0CFE: mov   $F1,#$01
0D01: mov   a,$FD
0D03: mov   a,$FD
0D05: beq   $0d03
0D07: mov   $F1,#$00
0D0A: mov   $FA,#$24
0D0D: mov   $F1,#$01
0D10: mov   x,$F4
0D12: mov   a,$F6
0D14: and   a,#$0F
0D16: mov   $DF,a
0D18: mov   a,$F7
0D1A: mov   $A7,a
0D1C: mov   $F4,x
0D1E: cmp   x,$F4
0D20: beq   $0d1e
0D22: mov   x,$F4
0D24: movw  ya,$F6
0D26: mov   $C8,a
0D28: mov   $C7,y
0D2A: mov   $F4,x
0D2C: cmp   x,$F4
0D2E: beq   $0d2c
0D30: call  $12DE
0D33: call  $11EA
0D36: mov   a,#$00
0D38: mov   y,a
0D39: movw  $AD,ya
0D3B: movw  $BC,ya
0D3D: movw  $BE,ya
0D3F: movw  $C0,ya
0D41: mov   $B8,a
0D43: mov   $B9,a
0D45: mov   $BA,a
0D47: clr1  $B1
0D49: movw  $AF,ya
0D4B: mov   $90,a
0D4D: set7  $90
0D4F: mov   $97,a
0D51: mov   $9C,a
0D53: set7  $9C
0D55: mov   $A3,a
0D57: movw  $C9,ya
0D59: movw  $C2,ya
0D5B: mov   $C4,a
0D5D: movw  $CB,ya
0D5F: mov   $7D,#$01
0D62: mov   $7E,#$FF
0D65: mov   $AC,#$FF
0D68: bbs7  $B1,$0d6d
0D6B: mov   $B3,a
0D6D: call  $132F
0D70: bbc3  $04,$0d76
0D73: jmp   $0DDD
0D76: mov   x,#$10
0D78: mov   a,$1A01+x
0D7B: mov   $0B+x,a
0D7D: dec   x
0D7E: bne   $0d78
0D80: mov   a,$1A00
0D83: mov   $06,a
0D85: mov   a,$1A01
0D88: mov   $07,a
0D8A: mov   a,#$14
0D8C: mov   y,#$1A
0D8E: subw  ya,$06
0D90: movw  $06,ya
0D92: mov   x,#$0E
0D94: mov   $B2,#$80
0D97: mov   a,$1A12
0D9A: mov   y,$1A13
0D9D: movw  $34,ya
0D9F: mov   a,$0C+x
0DA1: mov   y,$0D+x
0DA3: cmpw  ya,$34
0DA5: beq   $0db8
0DA7: or    ($AD),($B2)
0DAA: addw  ya,$06
0DAC: mov   $0C+x,a
0DAE: mov   $0D+x,y
0DB0: mov   a,#$FF
0DB2: mov   $FF88,a
0DB5: call  $0DE5
0DB8: dec   x
0DB9: dec   x
0DBA: lsr   $B2
0DBC: bne   $0d9f
0DBE: mov   a,$B7
0DC0: and   a,#$F0
0DC2: xcn   a
0DC3: mov   y,#$11
0DC5: mul   ya
0DC6: mov   $84,a
0DC8: mov   a,$B6
0DCA: and   a,#$F0
0DCC: mov   $B5,a
0DCE: mov   a,$B7
0DD0: and   a,#$0F
0DD2: or    a,$B5
0DD4: mov   $B5,a
0DD6: mov   a,#$81
0DD8: mov   $B4,a
0DDA: call  $1011
0DDD: mov   x,#$FF
0DDF: mov   sp,x
0DE0: mov   a,$FD
0DE2: jmp   $0279
0DE5: mov   a,x
0DE6: asl   a
0DE7: mov   $5C+x,a
0DE9: mov   a,#$00
0DEB: mov   $0120+x,a
0DEE: mov   $FD80+x,a
0DF1: mov   $FD81+x,a
0DF4: mov   $0121+x,a
0DF7: mov   $0140+x,a
0DFA: mov   $0141+x,a
0DFD: mov   $FDE0+x,a
0E00: mov   $FDE1+x,a
0E03: mov   $FD40+x,a
0E06: mov   $FD61+x,a
0E09: mov   $FC80+x,a
0E0C: inc   a
0E0D: mov   $3C+x,a
0E0F: ret
0E10: mov   ($2C),($B5)
0E13: mov   $2D,#$00
0E16: asl   $2C
0E18: rol   $2D
0E1A: asl   $2C
0E1C: rol   $2D
0E1E: mov   a,#$00
0E20: mov   y,#$2C
0E22: addw  ya,$2C
0E24: movw  $2C,ya
0E26: mov   x,#$00
0E28: mov   y,#$01
0E2A: mov   a,($2C)+y
0E2C: bne   $0e37
0E2E: mov   y,#$03
0E30: mov   a,($2C)+y
0E32: beq   $0e4b
0E34: dec   y
0E35: bra   $0e3f
0E37: mov   y,#$03
0E39: mov   a,($2C)+y
0E3B: bne   $0e4c
0E3D: mov   y,#$00
0E3F: mov   a,($2C)+y
0E41: mov   $30,a
0E43: inc   y
0E44: mov   a,($2C)+y
0E46: mov   $31,a
0E48: jmp   $0F11
0E4B: ret
0E4C: mov   $B2,#$40
0E4F: mov   x,#$1C
0E51: call  $0FCE
0E54: mov   a,y
0E55: beq   $0e61
0E57: cmp   x,#$10
0E59: beq   $0e80
0E5B: lsr   $B2
0E5D: dec   x
0E5E: dec   x
0E5F: bra   $0e80
0E61: cmp   $AE,#$FE
0E64: bcc   $0e67
0E66: ret
0E67: mov   $B2,#$40
0E6A: mov   x,#$1C
0E6C: mov   a,$B2
0E6E: and   a,$AE
0E70: bne   $0e79
0E72: mov   a,$B2
0E74: asl   a
0E75: and   a,$AE
0E77: beq   $0e80
0E79: dec   x
0E7A: dec   x
0E7B: lsr   $B2
0E7D: bne   $0e6c
0E7F: ret
0E80: mov   a,$B2
0E82: asl   $B2
0E84: or    a,$B2
0E86: tset1 $00B0
0E89: tclr1 $00AF
0E8C: tclr1 $00C9
0E8F: tclr1 $00CA
0E92: tclr1 $00B8
0E95: tclr1 $00BA
0E98: tclr1 $00B9
0E9B: tclr1 $00BD
0E9E: tclr1 $00C1
0EA1: tclr1 $00BF
0EA4: tclr1 $00C3
0EA7: tset1 $00AE
0EAA: inc   x
0EAB: inc   x
0EAC: mov   a,x
0EAD: lsr   a
0EAE: and   a,#$07
0EB0: mov   y,a
0EB1: mov   a,$B5
0EB3: mov   $FF80+y,a
0EB6: mov   $FF7F+y,a
0EB9: push  x
0EBA: call  $0F91
0EBD: pop   x
0EBE: mov   y,#$03
0EC0: mov   a,($2C)+y
0EC2: mov   $0D+x,a
0EC4: dec   y
0EC5: mov   a,($2C)+y
0EC7: mov   $0C+x,a
0EC9: call  $0DE5
0ECC: inc   $3C+x
0ECE: mov   a,#$64
0ED0: mov   $FC01+x,a
0ED3: mov   a,$B7
0ED5: mov   $FC41+x,a
0ED8: mov   a,$B6
0EDA: mov   $FC81+x,a
0EDD: mov   a,$B4
0EDF: mov   $FC60+x,a
0EE2: mov   a,$B5
0EE4: mov   $FC61+x,a
0EE7: push  y
0EE8: mov   a,#$04
0EEA: call  $0866
0EED: pop   y
0EEE: dec   x
0EEF: dec   x
0EF0: lsr   $B2
0EF2: dec   y
0EF3: bpl   $0ec0
0EF5: ret
0EF6: mov   a,x
0EF7: and   a,#$0F
0EF9: asl   a
0EFA: mov   y,a
0EFB: mov   a,$153C+y
0EFE: bne   $0f01
0F00: ret
0F01: mov   $31,a
0F03: mov   a,$153B+y
0F06: mov   $30,a
0F08: mov   $B5,#$FE
0F0B: mov   $B6,#$0F
0F0E: mov   $B7,#$80
0F11: mov   $B2,#$80
0F14: mov   x,#$1E
0F16: call  $0FCE
0F19: mov   a,y
0F1A: bne   $0f32
0F1C: cmp   $AE,#$FF
0F1F: beq   $0f90
0F21: mov   $B2,#$80
0F24: mov   x,#$1E
0F26: mov   a,$B2
0F28: and   a,$AE
0F2A: beq   $0f32
0F2C: dec   x
0F2D: dec   x
0F2E: lsr   $B2
0F30: bra   $0f26
0F32: mov   a,$B2
0F34: tset1 $00B0
0F37: tclr1 $00AF
0F3A: tclr1 $00C9
0F3D: tclr1 $00CA
0F40: tclr1 $00B8
0F43: tclr1 $00BA
0F46: tclr1 $00B9
0F49: tclr1 $00BD
0F4C: tclr1 $00C1
0F4F: tclr1 $00BF
0F52: tclr1 $00C3
0F55: tset1 $00AE
0F58: mov   a,x
0F59: lsr   a
0F5A: and   a,#$07
0F5C: mov   y,a
0F5D: mov   a,$B5
0F5F: mov   $FF80+y,a
0F62: push  x
0F63: call  $0F91
0F66: pop   x
0F67: movw  ya,$30
0F69: mov   $0C+x,a
0F6B: mov   $0D+x,y
0F6D: call  $0DE5
0F70: inc   $3C+x
0F72: mov   a,#$04
0F74: call  $0866
0F77: mov   a,#$64
0F79: mov   $FC01+x,a
0F7C: mov   a,$B7
0F7E: mov   $FC41+x,a
0F81: mov   a,$B6
0F83: mov   $FC81+x,a
0F86: mov   a,$B4
0F88: mov   $FC60+x,a
0F8B: mov   a,$B5
0F8D: mov   $FC61+x,a
0F90: ret
0F91: mov   a,$B7
0F93: xcn   a
0F94: and   a,#$F0
0F96: bne   $0f9a
0F98: mov   a,#$80
0F9A: mov   $B5,a
0F9C: and   $B7,#$F0
0F9F: bne   $0fa3
0FA1: set7  $B7
0FA3: and   $B6,#$F0
0FA6: mov   a,$B7
0FA8: setc
0FA9: sbc   a,$B5
0FAB: push  psw
0FAC: bcs   $0fb1
0FAE: eor   a,#$FF
0FB0: inc   a
0FB1: mov   x,$B6
0FB3: bne   $0fb8
0FB5: pop   a
0FB6: bra   $0fcd
0FB8: mov   y,#$00
0FBA: div   ya,x
0FBB: mov   $B5,a
0FBD: mov   a,#$00
0FBF: div   ya,x
0FC0: mov   $B4,a
0FC2: pop   psw
0FC3: bcc   $0fcd
0FC5: eor   $B4,#$FF
0FC8: eor   $B5,#$FF
0FCB: incw  $B4
0FCD: ret
0FCE: mov   y,#$08
0FD0: mov   a,$B5
0FD2: cmp   a,$FF7F+y
0FD5: beq   $0fdb
0FD7: dbnz  y,$0fd2
0FD9: bra   $0ff8
0FDB: mov   a,$B6
0FDD: and   a,#$0F
0FDF: beq   $0ff6
0FE1: mov   $34,y
0FE3: dec   $34
0FE5: asl   $34
0FE7: set4  $34
0FE9: mov   a,x
0FEA: bra   $0ff0
0FEC: lsr   $B2
0FEE: dec   a
0FEF: dec   a
0FF0: cbne  $34,$0fec
0FF3: mov   x,a
0FF4: bra   $0ff8
0FF6: pop   a
0FF7: pop   a
0FF8: ret
0FF9: cmp   x,#$F0
0FFB: bcs   $1001
0FFD: cmp   x,#$90
0FFF: bcs   $100e
1001: mov   a,x
1002: and   a,#$1F
1004: asl   a
1005: mov   y,a
1006: mov   a,$14B3+y
1009: push  a
100A: mov   a,$14B2+y
100D: push  a
100E: ret
100F: set5  $B1
1011: mov   a,$B5
1013: and   $B5,#$F0
1016: and   a,#$0F
1018: mov   y,#$11
101A: mul   ya
101B: mov   $B6,a
101D: mov   ($F5),($B5)
1020: mov   y,$B6
1022: mov   a,$B5
1024: mov   $8B,a
1026: bne   $1035
1028: mov   $84,y
102A: mov   $83,a
102C: mov   $88,a
102E: mov   $87,a
1030: or    ($C9),($AD)
1033: bra   $1065
1035: mov   a,y
1036: setc
1037: sbc   a,$84
1039: beq   $1024
103B: push  psw
103C: bcs   $1041
103E: eor   a,#$FF
1040: inc   a
1041: mov   x,$B5
1043: mov   y,#$00
1045: div   ya,x
1046: mov   $35,a
1048: mov   a,#$00
104A: div   ya,x
104B: mov   $34,a
104D: movw  ya,$34
104F: bne   $1053
1051: inc   $34
1053: pop   psw
1054: bcs   $105e
1056: eor   $34,#$FF
1059: eor   $35,#$FF
105C: incw  $34
105E: movw  ya,$34
1060: movw  $87,ya
1062: mov   $83,#$00
1065: ret
1066: mov   a,$B5
1068: and   a,#$07
106A: beq   $1076
106C: bbc3  $B5,$1070
106F: dec   a
1070: mov   y,#$12
1072: mul   ya
1073: bbs3  $B5,$1078
1076: eor   a,#$80
1078: mov   $B6,a
107A: and   $B5,#$F0
107D: mov   y,$B6
107F: mov   a,$B5
1081: mov   $97,a
1083: bne   $108f
1085: mov   $90,y
1087: mov   $8F,a
1089: mov   $94,a
108B: mov   $93,a
108D: bra   $10bf
108F: mov   a,y
1090: setc
1091: sbc   a,$90
1093: beq   $1081
1095: push  psw
1096: bcs   $109b
1098: eor   a,#$FF
109A: inc   a
109B: mov   x,$B5
109D: mov   y,#$00
109F: div   ya,x
10A0: mov   $35,a
10A2: mov   a,#$00
10A4: div   ya,x
10A5: mov   $34,a
10A7: movw  ya,$34
10A9: bne   $10ad
10AB: inc   $34
10AD: pop   psw
10AE: bcs   $10b8
10B0: eor   $34,#$FF
10B3: eor   $35,#$FF
10B6: incw  $34
10B8: movw  ya,$34
10BA: movw  $93,ya
10BC: mov   $8F,#$00
10BF: ret
10C0: inc   $B4
10C2: mov   a,$B5
10C4: and   a,#$07
10C6: beq   $10d2
10C8: bbc3  $B5,$10cc
10CB: dec   a
10CC: mov   y,#$12
10CE: mul   ya
10CF: bbs3  $B5,$10d4
10D2: eor   a,#$80
10D4: mov   $B6,a
10D6: and   $B5,#$F0
10D9: mov   y,$B6
10DB: mov   a,$B5
10DD: mov   $A3,a
10DF: bne   $10ee
10E1: mov   $9C,y
10E3: mov   $9B,a
10E5: mov   $A0,a
10E7: mov   $9F,a
10E9: or    ($CA),($AD)
10EC: bra   $111e
10EE: mov   a,y
10EF: setc
10F0: sbc   a,$9C
10F2: beq   $10dd
10F4: push  psw
10F5: bcs   $10fa
10F7: eor   a,#$FF
10F9: inc   a
10FA: mov   x,$B5
10FC: mov   y,#$00
10FE: div   ya,x
10FF: mov   $35,a
1101: mov   a,#$00
1103: div   ya,x
1104: mov   $34,a
1106: movw  ya,$34
1108: bne   $110c
110A: inc   $34
110C: pop   psw
110D: bcs   $1117
110F: eor   $34,#$FF
1112: eor   $35,#$FF
1115: incw  $34
1117: movw  ya,$34
1119: movw  $9F,ya
111B: mov   $9B,#$00
111E: ret
111F: bbc0  $B4,$1126
1122: clr0  $B1
1124: bra   $1128
1126: set0  $B1
1128: mov   $C9,#$FF
112B: ret
112C: bbs1  $B4,$1153
112F: mov   a,$AE
1131: eor   a,#$FF
1133: tset1 $00B0
1136: tclr1 $00AF
1139: tclr1 $00B8
113C: tclr1 $00BA
113F: tclr1 $00B9
1142: mov   a,#$00
1144: mov   $AD,a
1146: mov   $CB,a
1148: mov   $BC,a
114A: mov   $C0,a
114C: mov   $BE,a
114E: clr5  $B1
1150: bbs0  $B4,$1179
1153: mov   a,$AE
1155: tset1 $00B0
1158: tclr1 $00AF
115B: tclr1 $00B8
115E: tclr1 $00BA
1161: tclr1 $00B9
1164: clr4  $B1
1166: mov   a,#$00
1168: mov   $AE,a
116A: mov   $BD,a
116C: mov   $C1,a
116E: mov   $BF,a
1170: mov   y,#$08
1172: mov   a,#$FF
1174: mov   $FF7F+y,a
1177: dbnz  y,$1174
1179: ret
117A: mov   ($B3),($B5)
117D: mov   $C9,#$FF
1180: ret
1181: mov   ($C4),($AD)
1184: ret
1185: clrc
1186: mov   a,#$FF
1188: adc   a,$B5
118A: mov1  $00B1,03,c
118D: ret
118E: bbs0  $B4,$11cb
1191: mov   y,#$05
1193: mov   $F2,y
1195: mov   a,$F3
1197: and   a,#$7F
1199: mov   $F3,a
119B: mov   a,y
119C: clrc
119D: adc   a,#$10
119F: mov   y,a
11A0: bpl   $1193
11A2: mov   x,#$00
11A4: mov   y,#$00
11A6: mov   $F2,y
11A8: mov   $F3,x
11AA: inc   y
11AB: mov   $F2,y
11AD: mov   $F3,x
11AF: mov   a,y
11B0: clrc
11B1: adc   a,#$0F
11B3: mov   y,a
11B4: bpl   $11a6
11B6: movw  ya,$AD
11B8: beq   $11c0
11BA: movw  $CB,ya
11BC: movw  ya,$00
11BE: movw  $AD,ya
11C0: mov   $AF,a
11C2: mov   y,#$10
11C4: mov   $00CC+y,a
11C7: dbnz  y,$11c4
11C9: bra   $11e9
11CB: mov   y,#$05
11CD: mov   $F2,y
11CF: mov   a,$F3
11D1: or    a,#$80
11D3: mov   $F3,a
11D5: mov   a,y
11D6: clrc
11D7: adc   a,#$10
11D9: mov   y,a
11DA: bpl   $11cd
11DC: movw  ya,$CB
11DE: beq   $11e9
11E0: mov   $C9,#$FF
11E3: movw  $AD,ya
11E5: movw  ya,$00
11E7: movw  $CB,ya
11E9: ret
11EA: mov   a,$F5
11EC: mov   $04,a
11EE: and   a,#$07
11F0: mov   $F5,a
11F2: bne   $11f8
11F4: mov   $F4,x
11F6: bra   $1213
11F8: asl   a
11F9: push  a
11FA: movw  ya,$F6
11FC: movw  $2C,ya
11FE: pop   y
11FF: mov   a,$1419+y
1202: push  a
1203: mov   a,$1418+y
1206: push  a
1207: mov   y,#$00
1209: mov   x,$F4
120B: mov   $F4,x
120D: cmp   x,$F4
120F: beq   $120d
1211: mov   x,$F4
1213: ret
1214: mov   a,$F5
1216: mov   ($2C)+y,a
1218: mov   $F4,x
121A: inc   y
121B: mov   a,$F6
121D: mov   ($2C)+y,a
121F: inc   y
1220: mov   a,$F7
1222: mov   ($2C)+y,a
1224: clrc
1225: adc   $2C,#$03
1228: adc   $2D,#$00
122B: mov   y,#$00
122D: cmp   x,$F4
122F: beq   $122d
1231: mov   x,$F4
1233: bne   $1214
1235: bra   $11ea
1237: mov   a,$F6
1239: mov   ($2C)+y,a
123B: mov   $F4,x
123D: inc   y
123E: mov   a,$F7
1240: mov   ($2C)+y,a
1242: incw  $2C
1244: incw  $2C
1246: dec   y
1247: cmp   x,$F4
1249: beq   $1247
124B: mov   x,$F4
124D: bne   $1237
124F: bra   $11ea
1251: mov   $F4,x
1253: mov   a,$F7
1255: mov   ($2C)+y,a
1257: incw  $2C
1259: cmp   x,$F4
125B: beq   $1259
125D: mov   x,$F4
125F: bne   $1251
1261: bra   $11ea
1263: mov   $F4,x
1265: cmp   x,$F4
1267: beq   $1265
1269: mov   x,$F4
126B: bne   $1263
126D: jmp   $11EA
1270: movw  ya,$F6
1272: movw  $2E,ya
1274: mov   $F4,x
1276: cmp   x,$F4
1278: beq   $1276
127A: mov   x,$F4
127C: movw  ya,$F6
127E: movw  $34,ya
1280: mov   $F4,x
1282: mov   y,#$00
1284: mov   a,($2C)+y
1286: mov   ($2E)+y,a
1288: inc   y
1289: bne   $128f
128B: inc   $2D
128D: inc   $2F
128F: decw  $34
1291: bne   $1284
1293: cmp   x,$F4
1295: beq   $1293
1297: mov   x,$F4
1299: beq   $12a9
129B: movw  ya,$F6
129D: movw  $2C,ya
129F: mov   $F4,x
12A1: cmp   x,$F4
12A3: beq   $12a1
12A5: mov   x,$F4
12A7: bra   $1270
12A9: jmp   $11EA
12AC: not1  $00B4,01
12AF: mov1  c,$00B4,01
12B2: mov1  $00B1,01,c
12B5: bcs   $12bb
12B7: mov   a,#$24
12B9: bra   $12bd
12BB: mov   a,#$01
12BD: mov   $F1,#$00
12C0: mov   $FA,a
12C2: mov   $F1,#$01
12C5: ret
12C6: mov   a,#$FF
12C8: mov   y,#$FE
12CA: cmpw  ya,$B4
12CC: bne   $12da
12CE: mov   a,#$FD
12D0: mov   y,#$FC
12D2: cmpw  ya,$B6
12D4: bne   $12da
12D6: set7  $B1
12D8: bra   $12dc
12DA: clr7  $B1
12DC: ret
12DD: ret
12DE: mov   $F2,#$6C
12E1: mov   a,$F3
12E3: or    a,#$20
12E5: mov   $F3,a
12E7: mov   a,#$00
12E9: mov   y,#$4D
12EB: call  $061B
12EE: mov   y,#$0D
12F0: call  $061B
12F3: mov   y,#$2C
12F5: call  $061B
12F8: mov   y,#$3C
12FA: call  $061B
12FD: mov   y,#$7D
12FF: mov   $F2,y
1301: mov   a,$F3
1303: and   a,#$0F
1305: mov   $E0,a
1307: mov   a,$DF
1309: call  $061B
130C: mov   y,a
130D: bne   $1310
130F: inc   a
1310: asl   a
1311: asl   a
1312: asl   a
1313: eor   a,#$FF
1315: inc   a
1316: clrc
1317: adc   a,#$FA
1319: mov   y,#$6D
131B: call  $061B
131E: mov   $E2,a
1320: mov   $E1,#$00
1323: mov   $F1,#$01
1326: mov   $FB,#$80
1329: mov   $F1,#$03
132C: mov   a,$FE
132E: ret
132F: mov   a,#$00
1331: mov   y,a
1332: mov   ($E1)+y,a
1334: inc   y
1335: bne   $1332
1337: inc   $E2
1339: cmp   $E2,#$FA
133C: bne   $1332
133E: mov   a,$FE
1340: bra   $1347
1342: mov   y,$FE
1344: beq   $1342
1346: inc   a
1347: cmp   a,$E0
1349: bcc   $1342
134B: mov   $F2,#$6C
134E: mov   a,$F3
1350: and   a,#$DF
1352: mov   $F3,a
1354: mov   a,$FE
1356: bra   $135d
1358: mov   y,$FE
135A: beq   $1358
135C: inc   a
135D: cmp   a,$DF
135F: bcc   $1358
1361: mov   a,$A7
1363: mov   y,#$2C
1365: call  $061B
1368: mov   y,#$3C
136A: call  $061B
136D: and   $C7,#$03
1370: mov   a,$C7
1372: asl   a
1373: asl   a
1374: asl   a
1375: mov   y,a
1376: mov   x,#$0F
1378: mov   a,$150C+y
137B: mov   $F2,x
137D: mov   $F3,a
137F: inc   y
1380: mov   a,x
1381: clrc
1382: adc   a,#$10
1384: mov   x,a
1385: bpl   $1378
1387: mov   y,#$0D
1389: mov   a,$C8
138B: jmp   $061B
138E: mov   a,#$34
1390: mov   $39,a
1392: mov   a,#$CD
1394: mov   $03,#$00
1397: bbs2  $B1,$139f
139A: mov   $B2,#$09
139D: bra   $13a7
139F: mov   $B2,#$49
13A2: clrc
13A3: adc   a,#$08
13A5: set7  $03
13A7: mov   $3A,a
13A9: clrc
13AA: adc   a,#$08
13AC: mov   $02,a
13AE: mov   x,$3A
13B0: mov   y,$B2
13B2: mov   $F2,y
13B4: mov   y,$F3
13B6: push  y
13B7: mov   a,(x)+
13B8: mul   ya
13B9: mov   a,y
13BA: and   a,#$70
13BC: mov   $38,a
13BE: pop   y
13BF: mov   a,(x)+
13C0: mul   ya
13C1: mov   a,y
13C2: mov   $3A,x
13C4: mov   x,$39
13C6: xcn   a
13C7: and   a,#$07
13C9: or    a,$38
13CB: or    a,$03
13CD: mov   (x)+,a
13CE: mov   $39,x
13D0: clrc
13D1: adc   $B2,#$10
13D4: cmp   ($3A),($02)
13D7: bne   $13ae
13D9: movw  ya,$34
13DB: movw  $F4,ya
13DD: movw  ya,$36
13DF: movw  $F6,ya
13E1: eor   $B1,#$04
13E4: ret
13E5: mov   a,$8B
13E7: beq   $13f8
13E9: dec   $8B
13EB: movw  ya,$87
13ED: addw  ya,$83
13EF: cmp   y,$84
13F1: movw  $83,ya
13F3: beq   $13f8
13F5: or    ($C9),($AD)
13F8: mov   a,$97
13FA: beq   $1404
13FC: dec   $97
13FE: movw  ya,$93
1400: addw  ya,$8F
1402: movw  $8F,ya
1404: mov   a,$A3
1406: beq   $1417
1408: dec   $A3
140A: movw  ya,$9F
140C: addw  ya,$9B
140E: cmp   y,$9C
1410: movw  $9B,ya
1412: beq   $1417
1414: or    ($CA),($AD)
1417: ret
1418: bbs3  $12,$146c
141B: clr0  $37
141D: clr0  $14
141F: clr0  $63
1421: clr0  $63
1423: clr0  $63
1425: clr0  $70
1427: clr0  $68
1429: or    a,(x)
142A: cmp   a,$06+x
142C: sbc   a,$06+x
142E: mov   a,$06
1430: clrp
1431: or    a,($37+x)
1433: or    a,($49+x)
1435: or    a,($4D+x)
1437: or    a,($5F+x)
1439: or    a,($63+x)
143B: or    a,($B4+x)
143D: or    a,($31+x)
143F: or    a,#$F5
1441: or    a,($1D+x)
1443: or    a,#$3F
1445: or    a,#$56
1447: or    a,#$CE
1449: or    a,($E5+x)
144B: or    a,($CA+x)
144D: or    a,($C0+x)
144F: or    a,($C6+x)
1451: or    a,($2F+x)
1453: or    a,($2B+x)
1455: or    a,($B0+x)
1457: or    ($08),($66)
145A: bcc   $1464
145C: das   a
145D: or    a,#$D1
145F: or    a,#$E3
1461: or    a,#$F3
1463: or    a,#$44
1465: or    ($09),($6B)
1468: inc   a
1469: or    ($06),($20)
146C: push  a
146D: or    a,(x)
146E: bbc5  $06,$1421
1471: or    a,(x)
1472: bbc1  $07,$14da
1475: or    a,(x)
1476: or    a,($09)+y
1478: or    a,$9509
147B: or    ($09),($3A)
147E: sbc   a,$09+x
1480: inc   a
1481: or    ($09),($BC)
1484: tcall 0
1485: set0  $01
1487: set0  $02
1489: bbs0  $00,$148f
148C: nop
148D: set0  $00
148F: tcall 0
1490: nop
1491: nop
1492: nop
1493: nop
1494: nop
1495: nop
1496: tcall 0
1497: nop
1498: nop
1499: tcall 0
149A: tcall 0
149B: tcall 0
149C: tcall 0
149D: tcall 0
149E: tcall 0
149F: tcall 0
14A0: tcall 0
14A1: nop
14A2: tcall 0
14A3: nop
14A4: nop
14A5: tcall 0
14A6: set0  $01
14A8: set0  $02
14AA: tcall 0
14AB: bbs0  $02,$14b0
14AE: nop
14AF: tcall 0
14B0: nop
14B1: nop
14B2: tcall 1
14B3: bpl   $1492
14B5: clr0  $DD
14B7: clr0  $0F
14B9: bpl   $1498
14BB: clr0  $DD
14BD: clr0  $66
14BF: bpl   $149e
14C1: clr0  $DD
14C3: clr0  $C0
14C5: bpl   $14a4
14C7: clr0  $DD
14C9: clr0  $DD
14CB: clr0  $DD
14CD: clr0  $DD
14CF: clr0  $DD
14D1: clr0  $2C
14D3: tcall 1
14D4: rol   $2C11
14D7: tcall 1
14D8: jmp   ($1F11+x)
14DB: tcall 1
14DC: addw  ya,$11
14DE: pop   psw
14DF: tcall 1
14E0: pop   psw
14E1: tcall 1
14E2: inc   $AC12
14E5: clr0  $AC
14E7: clr0  $81
14E9: tcall 1
14EA: adc   a,$DD11
14ED: clr0  $DD
14EF: clr0  $C6
14F1: clr0  $79
14F3: or    a,#$FA
14F5: or    a,#$83
14F7: or    ($0A),($14)
14FA: cmp   y,#$0A
14FC: bvc   $1509
14FE: inc   y
14FF: asl   $B2
1501: asl   $0D74
1504: tcall 4
1505: tset1 $0F1A
1508: nop
1509: bpl   $14fe
150B: bpl   $158c
150D: nop
150E: nop
150F: nop
1510: nop
1511: nop
1512: nop
1513: nop
1514: asl   $2B21
1517: rol   $13
1519: dbnz  y,$150e
151B: mov   x,$58+y
151D: mov   a,(x)+
151E: mov   $F0+x,y
1520: dbnz  y,$1529
1522: asl   $340C
1525: bbc1  $00,$1501
1528: mov   a,$FC01
152B: mov   y,$C0
152D: bcc   $158f
152F: setp
1530: eor   a,#$30
1532: clrp
1533: and   a,$18
1535: bpl   $1543
1537: or    a,#$06
1539: or    a,$03
153B: lsr   $15+x
153D: and1  c,!($1A15,03)
1540: or    a,$0000+x
1543: nop
1544: nop
1545: nop
1546: nop
1547: nop
1548: nop
1549: nop
154A: nop
154B: nop
154C: nop
154D: nop
154E: nop
154F: nop
1550: nop
1551: nop
1552: nop
1553: nop
1554: nop
1555: nop
1556: nop
1557: nop
1558: nop
1559: nop
155A: nop
155B: clr6  $FF
155D: not1  $0403,07
1560: or    a,#$D6
1562: and   a,#$74
1564: mov   ($00)+y,a
1566: or    a,$FF
1568: eor   a,$D2F2+y
156B: stop
156C: not1  $0400,07
156F: or    a,$D7
1571: nop
1572: nop
1573: stop
1574: mov   $0C04+y,a
1577: asl   $1B
1579: clr7  $D2
157B: stop
157C: not1  $0403,07
157F: or    a,($D7+x)
1581: nop
1582: or    $94,#$DD
1585: mov   $7E18+y,a
1588: pop   y
1589: or    a,$71+x
158B: clr7  $4C
158D: lsr   a
158E: push  a
158F: inc   x
1590: push  x
1591: ror   $B0AF
1594: movw  ya,$B9
1596: sbc   $FF,#$BB
1599: stop
159A: stop
159B: stop
159C: stop
159D: stop
159E: stop
159F: stop
15A0: stop
15A1: stop
15A2: stop
15A3: stop
15A4: stop
15A5: stop
15A6: stop
15A7: stop
15A8: stop
15A9: stop
15AA: stop
15AB: stop
15AC: stop
15AD: stop
15AE: stop
15AF: stop
15B0: stop
15B1: stop
15B2: stop
15B3: stop
15B4: stop
15B5: stop
15B6: stop
15B7: stop
15B8: stop
15B9: stop
15BA: stop
15BB: stop
15BC: stop
15BD: stop
15BE: stop
15BF: stop
15C0: stop
15C1: stop
15C2: stop
15C3: stop
15C4: stop
15C5: stop
15C6: stop
15C7: stop
15C8: stop
15C9: stop
15CA: stop
15CB: stop
15CC: stop
15CD: stop
15CE: stop
15CF: stop
15D0: stop
15D1: stop
15D2: stop
15D3: stop
15D4: stop
15D5: stop
15D6: stop
15D7: stop
15D8: stop
15D9: stop
15DA: stop
15DB: stop
15DC: stop
15DD: stop
15DE: stop
15DF: stop
15E0: stop
15E1: stop
15E2: stop
15E3: stop
15E4: stop
15E5: stop
15E6: stop
15E7: stop
15E8: stop
15E9: stop
15EA: stop
15EB: stop
15EC: stop
15ED: stop
15EE: stop
15EF: stop
15F0: stop
15F1: stop
15F2: stop
15F3: stop
15F4: stop
15F5: stop
15F6: stop
15F7: stop
15F8: stop
15F9: stop
15FA: stop
15FB: stop
15FC: stop
15FD: stop
15FE: stop
15FF: stop
1600: stop
1601: stop
1602: stop
1603: stop
1604: stop
1605: stop
1606: stop
1607: stop
1608: stop
1609: stop
160A: stop
160B: stop
160C: stop
160D: stop
160E: stop
160F: stop
1610: stop
1611: stop
1612: stop
1613: stop
1614: stop
1615: stop
1616: stop
1617: stop
1618: stop
1619: stop
161A: stop
161B: stop
161C: stop
161D: stop
161E: stop
161F: stop
1620: stop
1621: stop
1622: stop
1623: stop
1624: stop
1625: stop
1626: stop
1627: stop
1628: stop
1629: stop
162A: stop
162B: stop
162C: stop
162D: stop
162E: stop
162F: stop
1630: stop
1631: stop
1632: stop
1633: stop
1634: stop
1635: stop
1636: stop
1637: stop
1638: stop
1639: stop
163A: stop
163B: stop
163C: stop
163D: stop
163E: stop
163F: stop
1640: stop
1641: stop
1642: stop
1643: stop
1644: stop
1645: stop
1646: stop
1647: stop
1648: stop
1649: stop
164A: stop
164B: stop
164C: stop
164D: stop
164E: stop
164F: stop
1650: stop
1651: stop
1652: stop
1653: stop
1654: stop
1655: stop
1656: stop
1657: stop
1658: stop
1659: stop
165A: stop
165B: stop
165C: stop
165D: stop
165E: stop
165F: stop
1660: stop
1661: stop
1662: stop
1663: stop
1664: stop
1665: stop
1666: stop
1667: stop
1668: stop
1669: stop
166A: stop
166B: stop
166C: stop
166D: stop
166E: stop
166F: stop
1670: stop
1671: stop
1672: stop
1673: stop
1674: stop
1675: stop
1676: stop
1677: stop
1678: stop
1679: stop
167A: stop
167B: stop
167C: stop
167D: stop
167E: stop
167F: stop
1680: stop
1681: stop
1682: stop
1683: stop
1684: stop
1685: stop
1686: stop
1687: stop
1688: stop
1689: stop
168A: stop
168B: stop
168C: stop
168D: stop
168E: stop
168F: stop
1690: stop
1691: stop
1692: stop
1693: stop
1694: stop
1695: stop
1696: stop
1697: stop
1698: stop
1699: stop
169A: stop
169B: stop
169C: stop
169D: stop
169E: stop
169F: stop
16A0: stop
16A1: stop
16A2: stop
16A3: stop
16A4: stop
16A5: stop
16A6: stop
16A7: stop
16A8: stop
16A9: stop
16AA: stop
16AB: stop
16AC: stop
16AD: stop
16AE: stop
16AF: stop
16B0: stop
16B1: stop
16B2: stop
16B3: stop
16B4: stop
16B5: stop
16B6: stop
16B7: stop
16B8: stop
16B9: stop
16BA: stop
16BB: stop
16BC: stop
16BD: stop
16BE: stop
16BF: stop
16C0: stop
16C1: stop
16C2: stop
16C3: stop
16C4: stop
16C5: stop
16C6: stop
16C7: stop
16C8: stop
16C9: stop
16CA: stop
16CB: stop
16CC: stop
16CD: stop
16CE: stop
16CF: stop
16D0: stop
16D1: stop
16D2: stop
16D3: stop
16D4: stop
16D5: stop
16D6: stop
16D7: stop
16D8: stop
16D9: stop
16DA: stop
16DB: stop
16DC: stop
16DD: stop
16DE: stop
16DF: stop
16E0: stop
16E1: stop
16E2: stop
16E3: stop
16E4: stop
16E5: stop
16E6: stop
16E7: stop
16E8: stop
16E9: stop
16EA: stop
16EB: stop
16EC: stop
16ED: stop
16EE: stop
16EF: stop
16F0: stop
16F1: stop
16F2: stop
16F3: stop
16F4: stop
16F5: stop
16F6: stop
16F7: stop
16F8: stop
16F9: stop
16FA: stop
16FB: stop
16FC: stop
16FD: stop
16FE: stop
16FF: stop
1700: stop
1701: stop
1702: stop
1703: stop
1704: stop
1705: stop
1706: stop
1707: stop
1708: stop
1709: stop
170A: stop
170B: stop
170C: stop
170D: stop
170E: stop
170F: stop
1710: stop
1711: stop
1712: stop
1713: stop
1714: stop
1715: stop
1716: stop
1717: stop
1718: stop
1719: stop
171A: stop
171B: stop
171C: stop
171D: stop
171E: stop
171F: stop
1720: stop
1721: stop
1722: stop
1723: stop
1724: stop
1725: stop
1726: stop
1727: stop
1728: stop
1729: stop
172A: stop
172B: stop
172C: stop
172D: stop
172E: stop
172F: stop
1730: stop
1731: stop
1732: stop
1733: stop
1734: stop
1735: stop
1736: stop
1737: stop
1738: stop
1739: stop
173A: stop
173B: stop
173C: stop
173D: stop
173E: stop
173F: stop
1740: stop
1741: stop
1742: stop
1743: stop
1744: stop
1745: stop
1746: stop
1747: stop
1748: stop
1749: stop
174A: stop
174B: stop
174C: stop
174D: stop
174E: stop
174F: stop
1750: stop
1751: stop
1752: stop
1753: stop
1754: stop
1755: stop
1756: stop
1757: stop
1758: stop
1759: stop
175A: stop
175B: stop
175C: stop
175D: stop
175E: stop
175F: stop
1760: stop
1761: stop
1762: stop
1763: stop
1764: stop
1765: stop
1766: stop
1767: stop
1768: stop
1769: stop
176A: stop
176B: stop
176C: stop
176D: stop
176E: stop
176F: stop
1770: stop
1771: stop
1772: stop
1773: stop
1774: stop
1775: stop
1776: stop
1777: stop
1778: stop
1779: stop
177A: stop
177B: stop
177C: stop
177D: stop
177E: stop
177F: stop
1780: stop
1781: stop
1782: stop
1783: stop
1784: stop
1785: stop
1786: stop
1787: stop
1788: stop
1789: stop
178A: stop
178B: stop
178C: stop
178D: stop
178E: stop
178F: stop
1790: stop
1791: stop
1792: stop
1793: stop
1794: stop
1795: stop
1796: stop
1797: stop
1798: stop
1799: stop
179A: stop
179B: stop
179C: stop
179D: stop
179E: stop
179F: stop
17A0: stop
17A1: stop
17A2: stop
17A3: stop
17A4: stop
17A5: stop
17A6: stop
17A7: stop
17A8: stop
17A9: stop
17AA: stop
17AB: stop
17AC: stop
17AD: stop
17AE: stop
17AF: stop
17B0: stop
17B1: stop
17B2: stop
17B3: stop
17B4: stop
17B5: stop
17B6: stop
17B7: stop
17B8: stop
17B9: stop
17BA: stop
17BB: stop
17BC: stop
17BD: stop
17BE: stop
17BF: stop
17C0: stop
17C1: stop
17C2: stop
17C3: stop
17C4: stop
17C5: stop
17C6: stop
17C7: stop
17C8: stop
17C9: stop
17CA: stop
17CB: stop
17CC: stop
17CD: stop
17CE: stop
17CF: stop
17D0: stop
17D1: stop
17D2: stop
17D3: stop
17D4: stop
17D5: stop
17D6: stop
17D7: stop
17D8: stop
17D9: stop
17DA: stop
17DB: stop
17DC: stop
17DD: stop
17DE: stop
17DF: stop
17E0: stop
17E1: stop
17E2: stop
17E3: stop
17E4: stop
17E5: stop
17E6: stop
17E7: stop
17E8: stop
17E9: stop
17EA: stop
17EB: stop
17EC: stop
17ED: stop
17EE: stop
17EF: stop
17F0: stop
17F1: stop
17F2: stop
17F3: stop
17F4: stop
17F5: stop
17F6: stop
17F7: stop
17F8: stop
17F9: stop
17FA: stop
17FB: stop
17FC: stop
17FD: stop
17FE: stop
17FF: stop
1800: clrv
1801: ei
1802: clrv
1803: ei
1804: clrv
1805: ei
1806: clrv
1807: ei
1808: nop
1809: nop
180A: clrv
180B: ei
180C: clrv
180D: ei
180E: nop
180F: nop
1810: nop
1811: nop
1812: nop
1813: nop
1814: nop
1815: nop
1816: nop
1817: nop
1818: stop
1819: stop
181A: stop
181B: stop
181C: stop
181D: stop
181E: stop
181F: stop
1820: stop
1821: stop
1822: stop
1823: stop
1824: stop
1825: stop
1826: stop
1827: stop
1828: stop
1829: stop
182A: stop
182B: stop
182C: stop
182D: stop
182E: stop
182F: stop
1830: stop
1831: stop
1832: stop
1833: stop
1834: stop
1835: stop
1836: stop
1837: stop
1838: stop
1839: stop
183A: stop
183B: stop
183C: stop
183D: stop
183E: stop
183F: stop
1840: mov   sp,x
1841: ei
1842: set7  $00
1844: mov   a,(x)+
1845: bvs   $1844
1847: clrv
1848: sbc   ($7F),($E0)
184B: stop
184C: sbc   a,#$60
184E: nop
184F: nop
1850: nop
1851: nop
1852: nop
1853: nop
1854: nop
1855: nop
1856: nop
1857: nop
1858: nop
1859: nop
185A: nop
185B: nop
185C: nop
185D: nop
185E: nop
185F: nop
1860: nop
1861: nop
1862: nop
1863: nop
1864: nop
1865: nop
1866: nop
1867: nop
1868: nop
1869: nop
186A: nop
186B: nop
186C: nop
186D: nop
186E: nop
186F: nop
1870: nop
1871: nop
1872: nop
1873: nop
1874: nop
1875: nop
1876: nop
1877: nop
1878: nop
1879: nop
187A: nop
187B: nop
187C: nop
187D: nop
187E: nop
187F: nop
1880: stop
1881: clrv
1882: stop
1883: clrv
1884: stop
1885: clrv
1886: stop
1887: clrv
1888: stop
1889: clrv
188A: stop
188B: clrv
188C: stop
188D: clrv
188E: stop
188F: clrv
1890: stop
1891: clrv
1892: stop
1893: clrv
1894: stop
1895: clrv
1896: stop
1897: clrv
1898: stop
1899: stop
189A: stop
189B: stop
189C: stop
189D: stop
189E: stop
189F: stop
18A0: stop
18A1: stop
18A2: stop
18A3: stop
18A4: stop
18A5: stop
18A6: stop
18A7: stop
18A8: stop
18A9: stop
18AA: stop
18AB: stop
18AC: stop
18AD: stop
18AE: stop
18AF: stop
18B0: stop
18B1: stop
18B2: stop
18B3: stop
18B4: stop
18B5: stop
18B6: stop
18B7: stop
18B8: stop
18B9: stop
18BA: stop
18BB: stop
18BC: stop
18BD: stop
18BE: stop
18BF: stop
18C0: stop
18C1: clrv
18C2: dbnz  y,$18a4
18C4: stop
18C5: clrv
18C6: stop
18C7: clrv
18C8: stop
18C9: mov   y,$EEFF
18CC: stop
18CD: pop   y
18CE: nop
18CF: nop
18D0: nop
18D1: nop
18D2: nop
18D3: nop
18D4: nop
18D5: nop
18D6: nop
18D7: nop
18D8: nop
18D9: nop
18DA: nop
18DB: nop
18DC: nop
18DD: nop
18DE: nop
18DF: nop
18E0: nop
18E1: nop
18E2: nop
18E3: nop
18E4: nop
18E5: nop
18E6: nop
18E7: nop
18E8: nop
18E9: nop
18EA: nop
18EB: nop
18EC: nop
18ED: nop
18EE: nop
18EF: nop
18F0: nop
18F1: nop
18F2: nop
18F3: nop
18F4: nop
18F5: nop
18F6: nop
18F7: nop
18F8: nop
18F9: nop
18FA: nop
18FB: nop
18FC: nop
18FD: nop
18FE: nop
18FF: nop
1900: nop
1901: eor   a,#$00
1903: eor   a,#$24
1905: eor   a,#$24
1907: eor   a,#$48
1909: eor   a,#$48
190B: eor   a,#$6C
190D: eor   a,#$87
190F: eor   a,#$AB
1911: eor   a,#$C6
1913: eor   a,#$D8
1915: eor   a,#$D8
1917: eor   a,#$EA
1919: eor   a,#$EA
191B: eor   a,#$FC
191D: eor   a,#$17
191F: eor   ($4B),($4E)
1922: cmp   ($80),($4B)
1925: lsr   $4C9B
1928: tcall 6
1929: push  x
192A: ror   a
192B: push  x
192C: stop
192D: stop
192E: stop
192F: stop
1930: stop
1931: stop
1932: stop
1933: stop
1934: stop
1935: stop
1936: stop
1937: stop
1938: stop
1939: stop
193A: stop
193B: stop
193C: stop
193D: stop
193E: stop
193F: stop
1940: stop
1941: stop
1942: stop
1943: stop
1944: stop
1945: stop
1946: stop
1947: stop
1948: stop
1949: stop
194A: stop
194B: stop
194C: stop
194D: stop
194E: stop
194F: stop
1950: stop
1951: stop
1952: stop
1953: stop
1954: stop
1955: stop
1956: stop
1957: stop
1958: stop
1959: stop
195A: stop
195B: stop
195C: stop
195D: stop
195E: stop
195F: stop
1960: stop
1961: stop
1962: stop
1963: stop
1964: stop
1965: stop
1966: stop
1967: stop
1968: stop
1969: stop
196A: stop
196B: stop
196C: stop
196D: stop
196E: stop
196F: stop
1970: stop
1971: stop
1972: stop
1973: stop
1974: stop
1975: stop
1976: stop
1977: stop
1978: stop
1979: stop
197A: stop
197B: stop
197C: stop
197D: stop
197E: stop
197F: stop
1980: tcall 15
1981: push  x
1982: push  a
1983: tcall 5
1984: rol   $68
1986: eor   a,(x)
1987: cmp   a,#$75
1989: cmp   a,$78D5+x
198C: and   a,$7985+x
198F: mov   $94,#$E3
1992: eor   (x),(y)
1993: ei
1994: tcall 9
1995: sbc   a,$BB
1997: sbc   a,($C1+x)
1999: mov   $C960,a
199C: nop
199D: nop
199E: nop
199F: nop
19A0: nop
19A1: nop
19A2: nop
19A3: nop
19A4: nop
19A5: nop
19A6: nop
19A7: nop
19A8: nop
19A9: nop
19AA: nop
19AB: nop
19AC: nop
19AD: nop
19AE: nop
19AF: nop
19B0: nop
19B1: nop
19B2: nop
19B3: nop
19B4: nop
19B5: nop
19B6: nop
19B7: nop
19B8: nop
19B9: nop
19BA: nop
19BB: nop
19BC: nop
19BD: nop
19BE: nop
19BF: nop
19C0: nop
19C1: nop
19C2: nop
19C3: nop
19C4: nop
19C5: nop
19C6: nop
19C7: nop
19C8: nop
19C9: nop
19CA: nop
19CB: nop
19CC: nop
19CD: nop
19CE: nop
19CF: nop
19D0: nop
19D1: nop
19D2: nop
19D3: nop
19D4: nop
19D5: nop
19D6: nop
19D7: nop
19D8: nop
19D9: nop
19DA: nop
19DB: nop
19DC: nop
19DD: nop
19DE: nop
19DF: nop
19E0: nop
19E1: nop
19E2: nop
19E3: nop
19E4: nop
19E5: nop
19E6: nop
19E7: nop
19E8: nop
19E9: nop
19EA: nop
19EB: nop
19EC: nop
19ED: nop
19EE: nop
19EF: nop
19F0: nop
19F1: nop
19F2: nop
19F3: nop
19F4: nop
19F5: nop
19F6: nop
19F7: nop
19F8: nop
19F9: nop
19FA: nop
19FB: nop
19FC: nop
19FD: nop
19FE: nop
19FF: nop
1A00: inc   $AE
1A02: inc   $AE
1A04: set3  $AF
1A06: or    a,$BDB0
1A09: bcs   $19f0
1A0B: tcall 11
1A0C: and   a,$ECB6+y
1A0F: sbc   a,$B798+y
1A12: mov   y,$B7
1A14: bbc7  $24,$1a0f
1A17: adc   a,($D0+x)
1A19: mov   $40+x,a
1A1B: clr6  $6E
1A1D: not1  $0220,07
1A20: mov   y,$01
1A22: pop   y
1A23: or    a,#$E4
1A25: or    a,$89
1A27: clr6  $5F
1A29: mov   y,$0F
1A2B: adc   ($64),($D2)
1A2E: mov   y,$02
1A30: adc   ($0F),($EB)
1A33: adc   $04,#$EB
1A36: pop   y
1A37: or    a,($89+x)
1A39: ror   $7A
1A3B: ror   $D2
1A3D: mov   a,x
1A3E: mov   y,$07
1A40: adc   ($89),($89)
1A43: adc   $6B,#$89
1A46: mov   a,x
1A47: dbnz  $71,$1a34
1A4A: clrp
1A4B: cmp   a,$B193+x
1A4E: mov   a,$D20C
1A51: tcall 8
1A52: mov   a,(x)
1A53: bbc4  $D2,$19db
1A56: tcall 11
1A57: clr6  $89
1A59: mov   a,$D20C
1A5C: mov   y,#$2A
1A5E: mov   a,(x)
1A5F: clr6  $91
1A61: tcall 11
1A62: mov   a,$95D2
1A65: asl   $99D2
1A68: or1   c,!($1DD2,04)
1A6B: eor   a,#$D4
1A6D: clrp
1A6E: clr6  $8C
1A70: bvc   $1ae0
1A72: bvc   $1ae2
1A74: dec   $8C8C
1A77: dec   $96D2
1A7A: bvc   $1aea
1A7C: eor   a,($75)+y
1A7E: eor   a,($75)+y
1A80: eor   a,($75)+y
1A82: eor   a,($75)+y
1A84: cmp   a,$7593+x
1A87: bbc4  $75,$1a1d
1A8A: cmp   a,$D293+x
1A8D: mov1  c,$1193,05
1A90: bbc4  $B1,$1a26
1A93: tcall 11
1A94: bbc4  $B1,$1a2a
1A97: tcall 11
1A98: bbc4  $B1,$1a2e
1A9B: tcall 11
1A9C: bbc4  $B1,$1a50
1A9F: mov   a,$E60C
1AA2: tcall 11
1AA3: mov   a,$E60C
1AA6: tcall 11
1AA7: mov   a,$E60C
1AAA: tcall 11
1AAB: mov   a,$2A0C
1AAE: asl   $B1E6
1AB1: bbc4  $B1,$1a47
1AB4: cmp   a,$D266+x
1AB7: jmp   $09EB
1ABA: pop   y
1ABB: or    a,($4F+x)
1ABD: das   a
1ABE: eor   a,(x)
1ABF: clrp
1AC0: or    a,$97E6
1AC3: mov   y,$07
1AC5: pop   y
1AC6: or    a,#$E6
1AC8: mov   a,(x)
1AC9: adc   a,($F2+x)
1ACB: mov   $60+x,a
1ACD: clr6  $6E
1ACF: not1  $0220,07
1AD2: mov   y,$01
1AD4: pop   y
1AD5: or    a,#$D0
1AD7: mov   a,$05
1AD9: set0  $D2
1ADB: jmp   $0FEB
1ADE: clrp
1ADF: clr6  $64
1AE1: mov   y,$02
1AE3: set0  $EB
1AE5: brk
1AE6: clrp
1AE7: mov   y,$04
1AE9: pop   y
1AEA: or    a,($02+x)
1AEC: set0  $02
1AEE: mov   a,(x)
1AEF: sbc   a,($D2+x)
1AF1: mov   a,x
1AF2: mov   y,$07
1AF4: mov   a,$2002
1AF7: set0  $20
1AF9: set0  $02
1AFB: or    a,$9BE6
1AFE: mov   a,$EA08
1B01: clrp
1B02: mov   a,(x)
1B03: tcall 11
1B04: mov   a,$2A0C
1B07: eor   a,#$D2
1B09: tcall 8
1B0A: asl   $85D2
1B0D: or1   c,!($09D2,04)
1B10: eor   a,#$D2
1B12: mov   y,#$57
1B14: clr6  $91
1B16: or1   c,!($15D2,04)
1B19: eor   a,#$D2
1B1B: adc   (x),(y)
1B1C: eor   a,($D2)+y
1B1E: mov   x,sp
1B1F: cmp   a,$40D4+x
1B22: clr6  $8C
1B24: dec   $8CAA
1B27: mov1  c,$1DD2,03
1B2A: mov   a,$2305
1B2D: tcall 4
1B2E: bbs1  $D2,$1ac7
1B31: mov   a,(x)
1B32: dec   $8CAA
1B35: mov1  c,$0AD2,05
1B38: mov   a,$2A0C
1B3B: asl   $0C2A
1B3E: or1   c,!($0A0C,01)
1B41: or1   c,!($0A48,01)
1B44: eor   a,#$2A
1B46: eor   a,#$2A
1B48: eor   a,#$48
1B4A: cmp   a,(x)
1B4B: eor   a,#$66
1B4D: eor   a,#$66
1B4F: eor   a,#$66
1B51: cmp   a,$4866+x
1B54: or1   c,!($0A48,01)
1B57: asl   $B1E6
1B5A: clr6  $5F
1B5C: mov   y,$09
1B5E: pop   y
1B5F: or    a,($8B+x)
1B61: das   a
1B62: bbc3  $4D,$1ba6
1B65: jmp   ($07EB+x)
1B68: pop   y
1B69: or    a,($E6+x)
1B6B: mov   a,(x)
1B6C: adc   a,($F2+x)
1B6E: mov   $A0+x,a
1B70: clr6  $6E
1B72: not1  $0220,07
1B75: mov   y,$01
1B77: pop   y
1B78: or    a,#$D1
1B7A: mov   a,$05
1B7C: cmp   x,$D2
1B7E: jmp   $0FEB
1B81: lsr   a
1B82: clr6  $64
1B84: mov   y,$02
1B86: cmp   x,$EB
1B88: brk
1B89: push  x
1B8A: mov   y,$04
1B8C: pop   y
1B8D: or    a,($4D+x)
1B8F: cmp   x,$2F
1B91: clrp
1B92: clr6  $7D
1B94: mov   y,$07
1B96: cmp   x,$5C
1B98: cmp   x,$4D
1B9A: push  x
1B9B: cmp   x,$32
1B9D: bbs1  $44,$1b8a
1BA0: clrp
1BA1: or1   c,!($1748,02)
1BA4: cmp   a,$81D2+x
1BA7: eor   a,#$D2
1BA9: adc   a,$D257
1BAC: adc   ($D2),($75)
1BAF: mov   y,#$93
1BB1: clr6  $91
1BB3: eor   a,($D2)+y
1BB5: adc   a,$D275+x
1BB8: adc   (x),(y)
1BB9: bbc4  $D2,$1b59
1BBC: tcall 11
1BBD: mov   $60+x,a
1BBF: clr6  $8C
1BC1: mov   a,$0505
1BC4: or    a,$D205
1BC7: mov   a,x
1BC8: tcall 4
1BC9: jmp   $5F6E
1BCC: clr6  $96
1BCE: asl   $0C2A
1BD1: or1   c,!($0A0C,01)
1BD4: asl   $0C2A
1BD7: or1   c,!($0A0C,01)
1BDA: asl   $0C2A
1BDD: or1   c,!($0A0C,01)
1BE0: asl   $0C2A
1BE3: or1   c,!($0A0C,01)
1BE6: asl   $0C2A
1BE9: or1   c,!($0A0C,01)
1BEC: asl   $D22A
1BEF: mov1  c,$0648,03
1BF2: eor   a,#$66
1BF4: eor   a,#$66
1BF6: eor   a,#$66
1BF8: cmp   a,(x)
1BF9: cmp   a,$7566+x
1BFC: cmp   a,(x)
1BFD: cmp   a,$7566+x
1C00: cmp   a,$7593+x
1C03: bbc4  $75,$1b99
1C06: cmp   a,$B193+x
1C09: bbc4  $75,$1c72
1C0C: cmp   a,$4866+x
1C0F: or1   c,!($1FD2,02)
1C12: mov   y,$09
1C14: pop   y
1C15: or    a,($04+x)
1C17: das   a
1C18: mov   a,(x)
1C19: mov   (x)+,a
1C1A: adc   ($4C),($6E)
1C1D: mov   $60+x,a
1C1F: mov   y,$07
1C21: pop   y
1C22: or    a,#$E6
1C24: cmp   ($D4),($F2)
1C27: setc
1C28: clr6  $91
1C2A: not1  $0226,07
1C2D: pop   y
1C2E: or    ($C3),($D1)
1C31: bbs6  $C3,$1bf7
1C34: mov   a,$04
1C36: dec   $E5BE
1C39: eor   a,(x)
1C3A: mov   a,$460A
1C3D: bbs1  $BE,$1c26
1C40: mov   (x)+,a
1C41: bbc3  $28,$1c2a
1C44: dec   $E5BE
1C47: eor   a,(x)
1C48: tcall 9
1C49: mov   a,$E60A
1C4C: dec   $BE+x
1C4E: mov   a,$4655
1C51: and   a,#$05
1C53: das   a
1C54: mov   a,(x)
1C55: mov   (x)+,a
1C56: bbc3  $28,$1c5e
1C59: das   a
1C5A: mov   a,$E60A
1C5D: bbc3  $46,$1cdd
1C60: mov   x,sp
1C61: and   a,#$07
1C63: mov   a,$E60A
1C66: asl   $7557
1C69: mov   a,$E60C
1C6C: eor   a,($75)+y
1C6E: mov   a,$570C
1C71: tcall 7
1C72: mov   a,(x)
1C73: mov   a,(x)
1C74: bbc2  $E5,$1c5c
1C77: tcall 7
1C78: mov   a,(x)
1C79: mov   a,(x)
1C7A: bbc2  $E5,$1c62
1C7D: tcall 7
1C7E: mov   a,(x)
1C7F: mov   a,(x)
1C80: bbc2  $E5,$1c68
1C83: tcall 7
1C84: mov   a,(x)
1C85: mov   a,(x)
1C86: bbc2  $E5,$1c1a
1C89: mov   a,(x)
1C8A: tcall 9
1C8B: mov   a,$E693
1C8E: clr6  $4B
1C90: bbc4  $D2,$1c24
1C93: tcall 9
1C94: mov   a,$E691
1C97: tcall 9
1C98: mov   a,$E693
1C9B: clr6  $4B
1C9D: bbc4  $D2,$1c31
1CA0: tcall 9
1CA1: mov   a,$E691
1CA4: tcall 9
1CA5: mov   a,$E693
1CA8: clr6  $4B
1CAA: bbc4  $D2,$1c3e
1CAD: tcall 9
1CAE: mov   a,$E691
1CB1: tcall 9
1CB2: mov   a,$750C
1CB5: mov   a,$570C
1CB8: tcall 7
1CB9: mov   a,(x)
1CBA: mov   a,(x)
1CBB: bbc2  $E5,$1ca3
1CBE: tcall 7
1CBF: mov   a,(x)
1CC0: mov   a,(x)
1CC1: bbc2  $E5,$1ca9
1CC4: tcall 7
1CC5: mov   a,(x)
1CC6: mov   a,(x)
1CC7: bbc2  $E5,$1caf
1CCA: tcall 7
1CCB: mov   a,(x)
1CCC: mov   a,(x)
1CCD: bbc2  $E5,$1c63
1CD0: clr6  $4B
1CD2: bbc4  $D2,$1c66
1CD5: mov   a,(x)
1CD6: bbc4  $D2,$1d24
1CD9: bbc4  $E5,$1cc1
1CDC: clr6  $91
1CDE: bbc4  $E6,$1cb3
1CE1: lsr   $93
1CE3: mov   a,(x)
1CE4: clr6  $91
1CE6: bbc4  $D2,$1d34
1CE9: bbc4  $E5,$1cbe
1CEC: tcall 9
1CED: bbc4  $D2,$1d3b
1CF0: bbc4  $E6,$1cc5
1CF3: tcall 9
1CF4: bbc4  $D2,$1d42
1CF7: bbc4  $E5,$1cdf
1CFA: clr6  $91
1CFC: bbc4  $E6,$1cd1
1CFF: lsr   $93
1D01: mov   a,(x)
1D02: clr6  $91
1D04: bbc4  $D2,$1d52
1D07: bbc4  $E5,$1cdc
1D0A: tcall 9
1D0B: bbc4  $D2,$1d59
1D0E: bbc4  $E6,$1ce3
1D11: tcall 9
1D12: bbc4  $D2,$1d60
1D15: bbc4  $E5,$1cfd
1D18: clr6  $91
1D1A: bbc4  $E6,$1cef
1D1D: lsr   $93
1D1F: mov   a,(x)
1D20: clr6  $91
1D22: bbc4  $D2,$1d70
1D25: bbc4  $E5,$1cfa
1D28: tcall 9
1D29: bbc4  $D2,$1d77
1D2C: bbc4  $E6,$1d01
1D2F: tcall 9
1D30: bbc4  $D2,$1d7e
1D33: bbc4  $E5,$1d1b
1D36: clr6  $91
1D38: bbc4  $48,$1d21
1D3B: bbc4  $75,$1d8d
1D3E: das   a
1D3F: eor   a,(x)
1D40: bbs1  $E6,$1db4
1D43: mov   $09,#$E5
1D46: clr3  $E5
1D48: or    ($E6),($1F)
1D4B: mov   a,(x)
1D4C: adc   a,($F2+x)
1D4E: mov   $80+x,a
1D50: clr6  $96
1D52: not1  $0224,07
1D55: tcall 13
1D56: mov   a,$06
1D58: eor   a,($D2+x)
1D5A: bvc   $1da3
1D5C: clr6  $3C
1D5E: eor   a,($D2+x)
1D60: jmp   $92E6
1D63: clr6  $50
1D65: clr4  $D2
1D67: rol   a
1D68: clr4  $D2
1D6A: adc   a,$74E5+y
1D6D: clr6  $50
1D6F: cmp   a,$D2+x
1D71: rol   a
1D72: cmp   a,$D2+x
1D74: clr1  $74
1D76: clr6  $2D
1D78: cmp   a,$82D2+y
1D7B: asl   $D2
1D7D: bvc   $1d8c
1D7F: clr6  $96
1D81: and   ($50),($D2)
1D84: and   ($3C),($D2)
1D87: and   ($96),($D2)
1D8A: and   ($50),($D2)
1D8D: rol   $D2
1D8F: adc   a,$D247+y
1D92: bvc   $1ddd
1D94: clr6  $6E
1D96: mov   a,(x)
1D97: clr4  $D2
1D99: bvc   $1d2d
1D9B: clr6  $3C
1D9D: clr4  $D2
1D9F: clr1  $92
1DA1: clr6  $2D
1DA3: clr4  $D2
1DA5: and   a,#$92
1DA7: clr6  $96
1DA9: mov   a,$D247
1DAC: bvc   $1df5
1DAE: clr6  $3C
1DB0: eor   a,($D2+x)
1DB2: jmp   $92E6
1DB5: clr6  $50
1DB7: clr4  $D2
1DB9: rol   a
1DBA: clr4  $D2
1DBC: adc   a,$74E5+y
1DBF: clr6  $50
1DC1: cmp   a,$D2+x
1DC3: rol   a
1DC4: cmp   a,$D2+x
1DC6: clr1  $74
1DC8: clr6  $2D
1DCA: cmp   a,$82D2+y
1DCD: asl   $D2
1DCF: bvc   $1dde
1DD1: clr6  $82
1DD3: and   ($50),($D2)
1DD6: rol   $D2
1DD8: adc   a,$D247+y
1DDB: bvc   $1e26
1DDD: clr6  $82
1DDF: and   ($50),($D2)
1DE2: rol   $D2
1DE4: dbnz  $0B,$1db9
1DE7: bvc   $1df6
1DE9: clr6  $82
1DEB: and   ($50),($D2)
1DEE: and   ($3C),($D2)
1DF1: and   ($32),($D2)
1DF4: and   ($2D),($D2)
1DF7: rol   $D2
1DF9: adc   a,$D247+y
1DFC: bvc   $1e47
1DFE: clr6  $96
1E00: eor   a,$50D2+y
1E03: eor   a,$3CD2+y
1E06: eor   a,$82D2+y
1E09: asl   $D2
1E0B: bvc   $1e18
1E0D: clr6  $3C
1E0F: asl   $D2
1E11: adc   a,$D292+y
1E14: bvc   $1da8
1E16: clr6  $3C
1E18: clr4  $D2
1E1A: clr1  $92
1E1C: clr6  $2D
1E1E: adc   a,$D2+x
1E20: set4  $56
1E22: clr6  $50
1E24: eor   $96,#$D2
1E27: cmp   a,$D2+x
1E29: bvc   $1ea1
1E2B: clr6  $96
1E2D: eor   a,($D2+x)
1E2F: bvc   $1e7a
1E31: clr6  $96
1E33: and   ($50),($D2)
1E36: rol   $D2
1E38: adc   a,$D247+y
1E3B: bvc   $1e86
1E3D: clr6  $82
1E3F: asl   $D2
1E41: bvc   $1e4e
1E43: clr6  $3C
1E45: asl   $D2
1E47: clr1  $0B
1E49: clr6  $2D
1E4B: push  psw
1E4C: clr6  $82
1E4E: asl   $D2
1E50: bvc   $1e5f
1E52: clr6  $96
1E54: and   $50,#$D2
1E57: incw  $D2
1E59: adc   a,$D20B+y
1E5C: bvc   $1e6b
1E5E: clr6  $96
1E60: mov   a,(x)
1E61: tcall 10
1E62: clr6  $50
1E64: bbs5  $D2,$1dfd
1E67: mov   a,$D20B
1E6A: bvc   $1e79
1E6C: clr6  $82
1E6E: mov   a,(x)
1E6F: cmp   a,$D2+x
1E71: bvc   $1ee7
1E73: clr6  $3C
1E75: cmp   a,$D2+x
1E77: clr1  $74
1E79: clr6  $2D
1E7B: cmp   a,$82D2+y
1E7E: eor   a,$50D2+y
1E81: eor   $6E,#$D2
1E84: cmp   a,$D2+x
1E86: bvc   $1efc
1E88: clr6  $3C
1E8A: cmp   a,$D2+x
1E8C: clr1  $74
1E8E: clr6  $2D
1E90: cmp   a,$D2+x
1E92: and   a,#$74
1E94: clr6  $24
1E96: cmp   a,$D2+x
1E98: clrp
1E99: cmp   a,$D2+x
1E9B: asl   a
1E9C: cmp   a,$D2+x
1E9E: or    (x),(y)
1E9F: cmp   a,$D2+x
1EA1: or    a,$74+x
1EA3: clr6  $10
1EA5: cmp   a,$DB+x
1EA7: eor   a,$E560+y
1EAA: clr6  $6E
1EAC: bbc4  $D2,$1ee6
1EAF: bbc4  $D2,$1f20
1EB2: or1   c,!($17D2,01)
1EB5: or1   c,!($0ED2,03)
1EB8: eor   a,#$D2
1EBA: and   a,($48)+y
1EBC: clr6  $6E
1EBE: cmp   a,$37D2+x
1EC1: cmp   a,$6ED2+x
1EC4: bbc4  $D2,$1efe
1EC7: bbc4  $D2,$1f38
1ECA: or1   c,!($17D2,01)
1ECD: or1   c,!($0ED2,03)
1ED0: eor   a,#$D2
1ED2: and   a,($48)+y
1ED4: clr6  $6E
1ED6: tcall 11
1ED7: clr6  $37
1ED9: tcall 11
1EDA: clr6  $6E
1EDC: bbc4  $D2,$1f16
1EDF: bbc4  $D2,$1f50
1EE2: asl   $37D2
1EE5: asl   $6ED2
1EE8: or1   c,!($17D2,01)
1EEB: or1   c,!($0ED2,03)
1EEE: cmp   a,$37D2+x
1EF1: cmp   a,$6ED2+x
1EF4: cmp   a,(x)
1EF5: clr6  $37
1EF7: cmp   a,(x)
1EF8: clr6  $6E
1EFA: or1   c,!($17D2,01)
1EFD: or1   c,!($0ED2,03)
1F00: asl   $37D2
1F03: asl   $6ED2
1F06: eor   a,#$D2
1F08: and   a,($48)+y
1F0A: clr6  $6E
1F0C: bbc4  $D2,$1f46
1F0F: bbc4  $D2,$1f80
1F12: or1   c,!($17D2,01)
1F15: or1   c,!($0ED2,03)
1F18: eor   a,#$D2
1F1A: and   a,($48)+y
1F1C: clr6  $6E
1F1E: cmp   a,$37D2+x
1F21: cmp   a,$6ED2+x
1F24: bbc4  $D2,$1f5e
1F27: bbc4  $D2,$1f98
1F2A: or1   c,!($17D2,01)
1F2D: or1   c,!($0ED2,03)
1F30: eor   a,#$D2
1F32: and   a,($48)+y
1F34: clr6  $6E
1F36: mov   a,$D20C
1F39: and   a,($0C)+y
1F3B: clr6  $6E
1F3D: mov   a,(x)
1F3E: set5  $D2
1F40: and   a,($A2)+y
1F42: clr6  $6E
1F44: or1   c,!($17D2,01)
1F47: or1   c,!($0ED2,03)
1F4A: eor   a,($D2)+y
1F4C: and   a,($57)+y
1F4E: clr6  $6E
1F50: cmp   a,$37D2+x
1F53: cmp   a,$6ED2+x
1F56: set5  $D2
1F58: and   a,($A2)+y
1F5A: clr6  $6E
1F5C: eor   a,#$D2
1F5E: and   a,($48)+y
1F60: clr6  $6E
1F62: eor   a,($D2)+y
1F64: and   a,($57)+y
1F66: clr6  $6E
1F68: cmp   a,$37D2+x
1F6B: cmp   a,$6ED2+x
1F6E: bbc4  $D2,$1fa8
1F71: bbc4  $D2,$1fe2
1F74: eor   a,($D2)+y
1F76: and   a,($57)+y
1F78: clr6  $6E
1F7A: cmp   a,$37D2+x
1F7D: cmp   a,$6ED2+x
1F80: or1   c,!($17D2,01)
1F83: or1   c,!($0ED2,03)
1F86: bbc4  $D2,$1fc0
1F89: bbc4  $D2,$1ffa
1F8C: eor   a,($D2)+y
1F8E: and   a,($57)+y
1F90: clr6  $6E
1F92: cmp   a,$37D2+x
1F95: cmp   a,$6ED2+x
1F98: or1   c,!($17D2,01)
1F9B: or1   c,!($0ED2,03)
1F9E: cmp   a,$37D2+x
1FA1: cmp   a,$6ED2+x
1FA4: asl   $37D2
1FA7: asl   $6ED2
1FAA: or1   c,!($17D2,01)
1FAD: or1   c,!($0ED2,03)
1FB0: mov   a,(x)
1FB1: tcall 11
1FB2: clr6  $37
1FB4: tcall 11
1FB5: clr6  $6E
1FB7: mov   a,$D275
1FBA: and   a,($75)+y
1FBC: clr6  $6E
1FBE: asl   $37D2
1FC1: asl   $6ED2
1FC4: or1   c,!($17D2,01)
1FC7: or1   c,!($0BD2,02)
1FCA: mov   a,(x)
1FCB: cmp   a,$32D2+x
1FCE: cmp   a,$5FD2+x
1FD1: mov   a,$D239
1FD4: and   a,($39)+y
1FD6: clr6  $6E
1FD8: mov   a,(x)
1FD9: set5  $D2
1FDB: and   a,($A2)+y
1FDD: clr6  $6E
1FDF: mov   a,$D20C
1FE2: and   a,($0C)+y
1FE4: clr6  $6E
1FE6: eor   a,($D2)+y
1FE8: and   a,($57)+y
1FEA: clr6  $6E
1FEC: set5  $D2
1FEE: and   a,($A2)+y
1FF0: clr6  $6E
1FF2: and   (x),(y)
1FF3: clr6  $37
1FF5: and   (x),(y)
1FF6: clr6  $6E
1FF8: eor   a,($D2)+y
1FFA: and   a,($57)+y
1FFC: clr6  $6E
1FFE: mov   a,(x)
1FFF: set5  $D2
2001: and   a,($A2)+y
2003: clr6  $6E
2005: mov   a,$0DE5
2008: clr6  $50
200A: push  psw
200B: clr6  $6E
200D: mov   a,(x)
200E: cmp   a,$50D2+y
2011: cmp   a,$6ED2+y
2014: bbs5  $D2,$2067
2017: bbs5  $D2,$2088
201A: eor   $50,#$D2
201D: eor   $6E,#$D2
2020: cmp   a,$50D2+y
2023: cmp   a,$6ED2+y
2026: rol   $D2
2028: bvc   $2055
202A: clr6  $6E
202C: tset1 $50D2
202F: tset1 $6ED2
2032: eor   (x),(y)
2033: clr6  $50
2035: eor   (x),(y)
2036: clr6  $6E
2038: cmp   a,($D2)+y
203A: bvc   $20b3
203C: clr6  $6E
203E: adc   a,$50D2+x
2041: adc   a,$6ED2+x
2044: rol   $73D2
2047: and1  c,$18D2,03
204A: eor   (x),(y)
204B: clr6  $7D
204D: cmp   a,($D2)+y
204F: set4  $95
2051: clr6  $87
2053: bbc5  $D2,$1fdd
2056: mov   a,$D20E
2059: adc   a,($2C+x)
205B: clr6  $82
205D: push  psw
205E: rol   $E6
2060: clr5  $E5
2062: push  psw
2063: mov   a,(x)
2064: adc   a,$B2+x
2066: cmp   a,$5894+y
2069: mov   a,$2B0D
206C: mov   a,(x)
206D: clr5  $E5
206F: push  psw
2070: mov   a,(x)
2071: adc   a,$B2+x
2073: cmp   a,$5894+y
2076: mov   a,$2B0D
2079: mov   a,(x)
207A: clr5  $E5
207C: push  psw
207D: mov   a,(x)
207E: adc   a,$B2+x
2080: cmp   a,$5894+y
2083: mov   a,$2B0D
2086: mov   a,(x)
2087: clr5  $E5
2089: push  psw
208A: mov   a,(x)
208B: adc   a,$B2+x
208D: cmp   a,$5894+y
2090: mov   a,$2B0D
2093: mov   a,(x)
2094: clr5  $E5
2096: push  psw
2097: mov   a,(x)
2098: adc   a,$B2+x
209A: cmp   a,$5894+y
209D: cmp   a,$5849+y
20A0: cmp   a,$6794+y
20A3: cmp   a,$6749+y
20A6: rol   $49
20A8: push  psw
20A9: cmp   a,$6794+y
20AC: cmp   a,$6749+y
20AF: rol   $49
20B1: push  psw
20B2: cmp   a,$6794+y
20B5: cmp   a,$6749+y
20B8: rol   $49
20BA: push  psw
20BB: cmp   a,$6794+y
20BE: cmp   a,$6749+y
20C1: rol   $49
20C3: push  psw
20C4: cmp   a,$6794+y
20C7: cmp   a,$6749+y
20CA: rol   $49
20CC: cmp   a,($76+x)
20CE: adc   a,$B2+x
20D0: clr6  $6E
20D2: mov   a,$2B0D
20D5: mov   a,(x)
20D6: clr5  $E5
20D8: push  psw
20D9: mov   a,(x)
20DA: adc   a,$B2+x
20DC: cmp   a,$5894+y
20DF: mov   a,$2B0D
20E2: mov   a,(x)
20E3: clr5  $E5
20E5: push  psw
20E6: mov   a,(x)
20E7: adc   a,$B2+x
20E9: cmp   a,$5894+y
20EC: mov   a,$2B0D
20EF: mov   a,(x)
20F0: clr5  $E5
20F2: push  psw
20F3: mov   a,(x)
20F4: adc   a,$B2+x
20F6: cmp   a,$5894+y
20F9: mov   a,$2B0D
20FC: mov   a,(x)
20FD: clr5  $E5
20FF: push  psw
2100: mov   a,(x)
2101: adc   a,$B2+x
2103: cmp   a,$5894+y
2106: mov   a,$2B0D
2109: mov   a,(x)
210A: clr5  $E5
210C: push  psw
210D: mov   a,(x)
210E: adc   a,$B2+x
2110: cmp   a,$B294+y
2113: mov   a,$2B0D
2116: cmp   a,($D2+x)
2118: mov   a,x
2119: eor   ($2B),($67)
211C: eor   ($2B),($0D)
211F: mov   a,(x)
2120: clr5  $E5
2122: push  psw
2123: mov   a,(x)
2124: adc   a,$E5+x
2126: eor   ($2B),($67)
2129: eor   ($2B),($0D)
212C: mov   a,(x)
212D: clr5  $E5
212F: push  psw
2130: mov   a,(x)
2131: adc   a,$E5+x
2133: eor   ($2B),($67)
2136: eor   ($2B),($0D)
2139: mov   a,(x)
213A: clr5  $E5
213C: push  psw
213D: mov   a,(x)
213E: adc   a,$E5+x
2140: eor   ($2B),($67)
2143: eor   ($2B),($0D)
2146: mov   a,(x)
2147: clr5  $E5
2149: push  psw
214A: mov   a,(x)
214B: adc   a,$B2+x
214D: cmp   a,$6794+y
2150: cmp   a,$6749+y
2153: rol   $49
2155: push  psw
2156: rol   $E6
2158: clr5  $DC
215A: mov   $80+x,a
215C: bbs6  $C7,$212c
215F: mov   a,$5748
2162: clr6  $96
2164: mov   a,$D20C
2167: bvc   $2175
2169: clr6  $3C
216B: asl   $32D2
216E: asl   $2DD2
2171: asl   $28D2
2174: asl   $24D2
2177: asl   $20D2
217A: asl   $1CD2
217D: asl   $19D2
2180: asl   $14D2
2183: asl   $10D2
2186: asl   $0DD2
2189: asl   $06D2
218C: asl   $03D2
218F: asl   $D20C
2192: dbnz  $EA,$21b6
2195: mov   $80+x,a
2197: mov   y,$07
2199: pop   y
219A: or    a,#$E6
219C: mov   a,(x)
219D: rol   a
219E: clr7  $D4
21A0: di
21A1: set7  $D1
21A3: clr6  $00
21A5: not1  $0B23,07
21A8: or1   c,$0AEE,00
21AB: mov   ($02)+y,a
21AD: bpl   $2173
21AF: mov   a,$05
21B1: eor   a,$E6
21B3: mov   $70,#$E5
21B6: or1   c,$0826,01
21B9: eor   a,(x)
21BA: mov   a,(x)
21BB: dec   $44E5
21BE: mov   a,(x)
21BF: mov   $70,#$E5
21C2: or1   c,$0628,02
21C5: and   a,#$0A
21C7: and   a,$5346
21CA: or    a,#$8E
21CC: eor   a,$4673+x
21CF: and   a,#$46
21D1: or    a,($0A+x)
21D3: and   a,($0A)+y
21D5: mov   a,(x)
21D6: ei
21D7: mov   a,$E60A
21DA: bvs   $2231
21DC: ror   $EB
21DE: or    a,#$E5
21E0: clr6  $58
21E2: mov   a,$E644
21E5: mov   $70,#$E5
21E8: or1   c,$0826,01
21EB: eor   a,(x)
21EC: mov   a,(x)
21ED: dec   $44E5
21F0: mov   a,(x)
21F1: mov   $70,#$E5
21F4: or1   c,$0628,02
21F7: and   a,#$0A
21F9: and   a,$5346
21FC: or    a,#$8E
21FE: eor   a,$4673+x
2201: and   a,#$46
2203: or    a,($0A+x)
2205: and   a,($0A)+y
2207: mov   a,(x)
2208: ei
2209: mov   a,$E60A
220C: bvs   $21ae
220E: mov   a,$D402
2211: di
2212: mov   $D2,x
2214: ei
2215: not1  $0E21,07
2218: or    a,($05+x)
221A: bbs1  $05,$2240
221D: tcall 4
221E: jmp   $5F6E
2221: clr6  $A5
2223: mov   a,(x)
2224: dec   $8CAA
2227: mov1  c,$05E5,00
222A: bbs1  $05,$2250
222D: mov   $E3+x,a
222F: clr6  $46
2231: not1  $0B23,07
2234: or1   c,$0AEE,00
2237: mov   ($0A)+y,a
2239: bpl   $21ff
223B: or1   c,$0FE6,05
223E: tcall 9
223F: bbc3  $8E,$2288
2242: tcall 7
2243: mov   $26,#$08
2246: bbs2  $57,$2291
2249: jmp   ($6ED2+x)
224C: not1  $0B21,07
224F: or    a,($EE+x)
2251: or    a,#$D8
2253: nop
2254: clr7  $D4
2256: di
2257: set7  $D1
2259: clr6  $28
225B: not1  $0B22,07
225E: or    a,$07EE
2261: mov   a,$05
2263: or    a,$28
2265: eor   a,(x)
2266: set3  $73
2268: cmp   a,$25
226A: mov   a,(x)
226B: mov   (x)+,a
226C: clr6  $3C
226E: mov   y,$05
2270: pop   y
2271: or    a,($E5+x)
2273: or    a,$EB
2275: or    a,(x)
2276: and   a,#$46
2278: bbc2  $A0,$220c
227B: bvs   $22c3
227D: pcall $46
227F: and   a,#$04
2281: mov   a,(x)
2282: bbc3  $91,$2220
2285: clr2  $82
2287: ror   $C3
2289: bbs6  $C3,$2260
228C: setc
228D: mov   a,$06
228F: not1  $1225,06
2292: tcall 14
2293: mov   $EB,a
2295: set0  $EE
2297: bbs0  $CD,$22a1
229A: mov   $E3+x,a
229C: clr6  $96
229E: not1  $0E21,07
22A1: or    a,($E4+x)
22A3: or    a,$0A55
22A6: mov   a,(x)
22A7: mov   (x)+,a
22A8: mov   a,$730A
22AB: or1   c,$0FE6,05
22AE: mov   a,$550A
22B1: or1   c,$0FE6,05
22B4: mov   a,$730A
22B7: or1   c,$0FE6,05
22BA: mov   a,$D20A
22BD: tcall 9
22BE: mov   a,$E60A
22C1: mov   (x)+,a
22C2: tcall 9
22C3: bbc3  $46,$2275
22C6: tcall 9
22C7: bbc3  $46,$2279
22CA: tcall 9
22CB: bbc3  $46,$227d
22CE: tcall 9
22CF: bbc3  $D2,$2272
22D2: bvc   $2342
22D4: bvc   $2344
22D6: dec   $8CAA
22D9: mov1  c,$06D2,02
22DC: not1  $0B22,07
22DF: or    ($07),($EE)
22E2: mov   $C0+x,a
22E4: eor   a,$2846+x
22E7: or1   c,$0625,07
22EA: tcall 9
22EB: mov   a,$2608
22EE: mov   a,(x)
22EF: tcall 7
22F0: mov   $E5,#$AC
22F3: asl   $B1E6
22F6: adc   a,#$D2
22F8: dbnz  $EA,$231c
22FB: mov   y,$07
22FD: pop   y
22FE: or    a,#$A5
2300: clr7  $D4
2302: setc
2303: clr6  $73
2305: not1  $0225,07
2308: bne   $22cd
230A: bbs6  $C3,$22d1
230D: mov   y,$02
230F: pop   y
2310: asl   $E4
2312: or    a,(x)
2313: or    a,$C3B4
2316: bbs6  $D2,$235f
2319: mov   y,$01
231B: pop   y
231C: or    a,(x)
231D: mov   $BC05,a
2320: das   a
2321: di
2322: clr6  $DC
2324: mov   y,$07
2326: pop   y
2327: or1   c,$140C,05
232A: bbs6  $C3,$22f0
232D: clr6  $96
232F: not1  $0B21,07
2332: or    a,($EE+x)
2334: or    a,($D4+x)
2336: ei
2337: mov   a,$05
2339: eor   a,$2846+x
233C: or1   c,$0625,07
233F: tcall 9
2340: mov   a,$2608
2343: mov   a,(x)
2344: tcall 7
2345: mov   $E5,#$AC
2348: asl   $B1E6
234B: adc   a,#$D2
234D: dbnz  $EB,$2357
2350: pop   y
2351: or    a,#$87
2353: clr7  $6B
2355: nop
2356: stop
2357: stop
2358: stop
2359: stop
235A: stop
235B: stop
235C: stop
235D: stop
235E: stop
235F: stop
2360: stop
2361: stop
2362: stop
2363: stop
2364: stop
2365: stop
2366: stop
2367: stop
2368: stop
2369: stop
236A: stop
236B: stop
236C: stop
236D: stop
236E: stop
236F: stop
2370: stop
2371: stop
2372: stop
2373: stop
2374: stop
2375: stop
2376: stop
2377: stop
2378: stop
2379: stop
237A: stop
237B: stop
237C: stop
237D: stop
237E: stop
237F: stop
2380: stop
2381: stop
2382: stop
2383: stop
2384: stop
2385: stop
2386: stop
2387: stop
2388: stop
2389: stop
238A: stop
238B: stop
238C: stop
238D: stop
238E: stop
238F: stop
2390: stop
2391: stop
2392: stop
2393: stop
2394: stop
2395: stop
2396: stop
2397: stop
2398: stop
2399: stop
239A: stop
239B: stop
239C: stop
239D: stop
239E: stop
239F: stop
23A0: stop
23A1: stop
23A2: stop
23A3: stop
23A4: stop
23A5: stop
23A6: stop
23A7: stop
23A8: stop
23A9: stop
23AA: stop
23AB: stop
23AC: stop
23AD: stop
23AE: stop
23AF: stop
23B0: stop
23B1: stop
23B2: stop
23B3: stop
23B4: stop
23B5: stop
23B6: stop
23B7: stop
23B8: stop
23B9: stop
23BA: stop
23BB: stop
23BC: stop
23BD: stop
23BE: stop
23BF: stop
23C0: stop
23C1: stop
23C2: stop
23C3: stop
23C4: stop
23C5: stop
23C6: stop
23C7: stop
23C8: stop
23C9: stop
23CA: stop
23CB: stop
23CC: stop
23CD: stop
23CE: stop
23CF: stop
23D0: stop
23D1: stop
23D2: stop
23D3: stop
23D4: stop
23D5: stop
23D6: stop
23D7: stop
23D8: stop
23D9: stop
23DA: stop
23DB: stop
23DC: stop
23DD: stop
23DE: stop
23DF: stop
23E0: stop
23E1: stop
23E2: stop
23E3: stop
23E4: stop
23E5: stop
23E6: stop
23E7: stop
23E8: stop
23E9: stop
23EA: stop
23EB: stop
23EC: stop
23ED: stop
23EE: stop
23EF: stop
23F0: stop
23F1: stop
23F2: stop
23F3: stop
23F4: stop
23F5: stop
23F6: stop
23F7: stop
23F8: stop
23F9: stop
23FA: stop
23FB: stop
23FC: stop
23FD: stop
23FE: stop
23FF: stop
2400: stop
2401: stop
2402: stop
2403: stop
2404: stop
2405: stop
2406: stop
2407: stop
2408: stop
2409: stop
240A: stop
240B: stop
240C: stop
240D: stop
240E: stop
240F: stop
2410: stop
2411: stop
2412: stop
2413: stop
2414: stop
2415: stop
2416: stop
2417: stop
2418: stop
2419: stop
241A: stop
241B: stop
241C: stop
241D: stop
241E: stop
241F: stop
2420: stop
2421: stop
2422: stop
2423: stop
2424: stop
2425: stop
2426: stop
2427: stop
2428: stop
2429: stop
242A: stop
242B: stop
242C: stop
242D: stop
242E: stop
242F: stop
2430: stop
2431: stop
2432: stop
2433: stop
2434: stop
2435: stop
2436: stop
2437: stop
2438: stop
2439: stop
243A: stop
243B: stop
243C: stop
243D: stop
243E: stop
243F: stop
2440: stop
2441: stop
2442: stop
2443: stop
2444: stop
2445: stop
2446: stop
2447: stop
2448: stop
2449: stop
244A: stop
244B: stop
244C: stop
244D: stop
244E: stop
244F: stop
2450: stop
2451: stop
2452: stop
2453: stop
2454: stop
2455: stop
2456: stop
2457: stop
2458: stop
2459: stop
245A: stop
245B: stop
245C: stop
245D: stop
245E: stop
245F: stop
2460: stop
2461: stop
2462: stop
2463: stop
2464: stop
2465: stop
2466: stop
2467: stop
2468: stop
2469: stop
246A: stop
246B: stop
246C: stop
246D: stop
246E: stop
246F: stop
2470: stop
2471: stop
2472: stop
2473: stop
2474: stop
2475: stop
2476: stop
2477: stop
2478: stop
2479: stop
247A: stop
247B: stop
247C: stop
247D: stop
247E: stop
247F: stop
2480: stop
2481: stop
2482: stop
2483: stop
2484: stop
2485: stop
2486: stop
2487: stop
2488: stop
2489: stop
248A: stop
248B: stop
248C: stop
248D: stop
248E: stop
248F: stop
2490: stop
2491: stop
2492: stop
2493: stop
2494: stop
2495: stop
2496: stop
2497: stop
2498: stop
2499: stop
249A: stop
249B: stop
249C: stop
249D: stop
249E: stop
249F: stop
24A0: stop
24A1: stop
24A2: stop
24A3: stop
24A4: stop
24A5: stop
24A6: stop
24A7: stop
24A8: stop
24A9: stop
24AA: stop
24AB: stop
24AC: stop
24AD: stop
24AE: stop
24AF: stop
24B0: stop
24B1: stop
24B2: stop
24B3: stop
24B4: stop
24B5: stop
24B6: stop
24B7: stop
24B8: stop
24B9: stop
24BA: stop
24BB: stop
24BC: stop
24BD: stop
24BE: stop
24BF: stop
24C0: stop
24C1: stop
24C2: stop
24C3: stop
24C4: stop
24C5: stop
24C6: stop
24C7: stop
24C8: stop
24C9: stop
24CA: stop
24CB: stop
24CC: stop
24CD: stop
24CE: stop
24CF: stop
24D0: stop
24D1: stop
24D2: stop
24D3: stop
24D4: stop
24D5: stop
24D6: stop
24D7: stop
24D8: stop
24D9: stop
24DA: stop
24DB: stop
24DC: stop
24DD: stop
24DE: stop
24DF: stop
24E0: stop
24E1: stop
24E2: stop
24E3: stop
24E4: stop
24E5: stop
24E6: stop
24E7: stop
24E8: stop
24E9: stop
24EA: stop
24EB: stop
24EC: stop
24ED: stop
24EE: stop
24EF: stop
24F0: stop
24F1: stop
24F2: stop
24F3: stop
24F4: stop
24F5: stop
24F6: stop
24F7: stop
24F8: stop
24F9: stop
24FA: stop
24FB: stop
24FC: stop
24FD: stop
24FE: stop
24FF: stop
2500: stop
2501: stop
2502: stop
2503: stop
2504: stop
2505: stop
2506: stop
2507: stop
2508: stop
2509: stop
250A: stop
250B: stop
250C: stop
250D: stop
250E: stop
250F: stop
2510: stop
2511: stop
2512: stop
2513: stop
2514: stop
2515: stop
2516: stop
2517: stop
2518: stop
2519: stop
251A: stop
251B: stop
251C: stop
251D: stop
251E: stop
251F: stop
2520: stop
2521: stop
2522: stop
2523: stop
2524: stop
2525: stop
2526: stop
2527: stop
2528: stop
2529: stop
252A: stop
252B: stop
252C: stop
252D: stop
252E: stop
252F: stop
2530: stop
2531: stop
2532: stop
2533: stop
2534: stop
2535: stop
2536: stop
2537: stop
2538: stop
2539: stop
253A: stop
253B: stop
253C: stop
253D: stop
253E: stop
253F: stop
2540: stop
2541: stop
2542: stop
2543: stop
2544: stop
2545: stop
2546: stop
2547: stop
2548: stop
2549: stop
254A: stop
254B: stop
254C: stop
254D: stop
254E: stop
254F: stop
2550: stop
2551: stop
2552: stop
2553: stop
2554: stop
2555: stop
2556: stop
2557: stop
2558: stop
2559: stop
255A: stop
255B: stop
255C: stop
255D: stop
255E: stop
255F: stop
2560: stop
2561: stop
2562: stop
2563: stop
2564: stop
2565: stop
2566: stop
2567: stop
2568: stop
2569: stop
256A: stop
256B: stop
256C: stop
256D: stop
256E: stop
256F: stop
2570: stop
2571: stop
2572: stop
2573: stop
2574: stop
2575: stop
2576: stop
2577: stop
2578: stop
2579: stop
257A: stop
257B: stop
257C: stop
257D: stop
257E: stop
257F: stop
2580: stop
2581: stop
2582: stop
2583: stop
2584: stop
2585: stop
2586: stop
2587: stop
2588: stop
2589: stop
258A: stop
258B: stop
258C: stop
258D: stop
258E: stop
258F: stop
2590: stop
2591: stop
2592: stop
2593: stop
2594: stop
2595: stop
2596: stop
2597: stop
2598: stop
2599: stop
259A: stop
259B: stop
259C: stop
259D: stop
259E: stop
259F: stop
25A0: stop
25A1: stop
25A2: stop
25A3: stop
25A4: stop
25A5: stop
25A6: stop
25A7: stop
25A8: stop
25A9: stop
25AA: stop
25AB: stop
25AC: stop
25AD: stop
25AE: stop
25AF: stop
25B0: stop
25B1: stop
25B2: stop
25B3: stop
25B4: stop
25B5: stop
25B6: stop
25B7: stop
25B8: stop
25B9: stop
25BA: stop
25BB: stop
25BC: stop
25BD: stop
25BE: stop
25BF: stop
25C0: stop
25C1: stop
25C2: stop
25C3: stop
25C4: stop
25C5: stop
25C6: stop
25C7: stop
25C8: stop
25C9: stop
25CA: stop
25CB: stop
25CC: stop
25CD: stop
25CE: stop
25CF: stop
25D0: stop
25D1: stop
25D2: stop
25D3: stop
25D4: stop
25D5: stop
25D6: stop
25D7: stop
25D8: stop
25D9: stop
25DA: stop
25DB: stop
25DC: stop
25DD: stop
25DE: stop
25DF: stop
25E0: stop
25E1: stop
25E2: stop
25E3: stop
25E4: stop
25E5: stop
25E6: stop
25E7: stop
25E8: stop
25E9: stop
25EA: stop
25EB: stop
25EC: stop
25ED: stop
25EE: stop
25EF: stop
25F0: stop
25F1: stop
25F2: stop
25F3: stop
25F4: stop
25F5: stop
25F6: stop
25F7: stop
25F8: stop
25F9: stop
25FA: stop
25FB: stop
25FC: stop
25FD: stop
25FE: stop
25FF: stop
2600: stop
2601: stop
2602: stop
2603: stop
2604: stop
2605: stop
2606: stop
2607: stop
2608: stop
2609: stop
260A: stop
260B: stop
260C: stop
260D: stop
260E: stop
260F: stop
2610: stop
2611: stop
2612: stop
2613: stop
2614: stop
2615: stop
2616: stop
2617: stop
2618: stop
2619: stop
261A: stop
261B: stop
261C: stop
261D: stop
261E: stop
261F: stop
2620: stop
2621: stop
2622: stop
2623: stop
2624: stop
2625: stop
2626: stop
2627: stop
2628: stop
2629: stop
262A: stop
262B: stop
262C: stop
262D: stop
262E: stop
262F: stop
2630: stop
2631: stop
2632: stop
2633: stop
2634: stop
2635: stop
2636: stop
2637: stop
2638: stop
2639: stop
263A: stop
263B: stop
263C: stop
263D: stop
263E: stop
263F: stop
2640: stop
2641: stop
2642: stop
2643: stop
2644: stop
2645: stop
2646: stop
2647: stop
2648: stop
2649: stop
264A: stop
264B: stop
264C: stop
264D: stop
264E: stop
264F: stop
2650: stop
2651: stop
2652: stop
2653: stop
2654: stop
2655: stop
2656: stop
2657: stop
2658: stop
2659: stop
265A: stop
265B: stop
265C: stop
265D: stop
265E: stop
265F: stop
2660: stop
2661: stop
2662: stop
2663: stop
2664: stop
2665: stop
2666: stop
2667: stop
2668: stop
2669: stop
266A: stop
266B: stop
266C: stop
266D: stop
266E: stop
266F: stop
2670: stop
2671: stop
2672: stop
2673: stop
2674: stop
2675: stop
2676: stop
2677: stop
2678: stop
2679: stop
267A: stop
267B: stop
267C: stop
267D: stop
267E: stop
267F: stop
2680: stop
2681: stop
2682: stop
2683: stop
2684: stop
2685: stop
2686: stop
2687: stop
2688: stop
2689: stop
268A: stop
268B: stop
268C: stop
268D: stop
268E: stop
268F: stop
2690: stop
2691: stop
2692: stop
2693: stop
2694: stop
2695: stop
2696: stop
2697: stop
2698: stop
2699: stop
269A: stop
269B: stop
269C: stop
269D: stop
269E: stop
269F: stop
26A0: stop
26A1: stop
26A2: stop
26A3: stop
26A4: stop
26A5: stop
26A6: stop
26A7: stop
26A8: stop
26A9: stop
26AA: stop
26AB: stop
26AC: stop
26AD: stop
26AE: stop
26AF: stop
26B0: stop
26B1: stop
26B2: stop
26B3: stop
26B4: stop
26B5: stop
26B6: stop
26B7: stop
26B8: stop
26B9: stop
26BA: stop
26BB: stop
26BC: stop
26BD: stop
26BE: stop
26BF: stop
26C0: stop
26C1: stop
26C2: stop
26C3: stop
26C4: stop
26C5: stop
26C6: stop
26C7: stop
26C8: stop
26C9: stop
26CA: stop
26CB: stop
26CC: stop
26CD: stop
26CE: stop
26CF: stop
26D0: stop
26D1: stop
26D2: stop
26D3: stop
26D4: stop
26D5: stop
26D6: stop
26D7: stop
26D8: stop
26D9: stop
26DA: stop
26DB: stop
26DC: stop
26DD: stop
26DE: stop
26DF: stop
26E0: stop
26E1: stop
26E2: stop
26E3: stop
26E4: stop
26E5: stop
26E6: stop
26E7: stop
26E8: stop
26E9: stop
26EA: stop
26EB: stop
26EC: stop
26ED: stop
26EE: stop
26EF: stop
26F0: stop
26F1: stop
26F2: stop
26F3: stop
26F4: stop
26F5: stop
26F6: stop
26F7: stop
26F8: stop
26F9: stop
26FA: stop
26FB: stop
26FC: stop
26FD: stop
26FE: stop
26FF: stop
2700: stop
2701: stop
2702: stop
2703: stop
2704: stop
2705: stop
2706: stop
2707: stop
2708: stop
2709: stop
270A: stop
270B: stop
270C: stop
270D: stop
270E: stop
270F: stop
2710: stop
2711: stop
2712: stop
2713: stop
2714: stop
2715: stop
2716: stop
2717: stop
2718: stop
2719: stop
271A: stop
271B: stop
271C: stop
271D: stop
271E: stop
271F: stop
2720: stop
2721: stop
2722: stop
2723: stop
2724: stop
2725: stop
2726: stop
2727: stop
2728: stop
2729: stop
272A: stop
272B: stop
272C: stop
272D: stop
272E: stop
272F: stop
2730: stop
2731: stop
2732: stop
2733: stop
2734: stop
2735: stop
2736: stop
2737: stop
2738: stop
2739: stop
273A: stop
273B: stop
273C: stop
273D: stop
273E: stop
273F: stop
2740: stop
2741: stop
2742: stop
2743: stop
2744: stop
2745: stop
2746: stop
2747: stop
2748: stop
2749: stop
274A: stop
274B: stop
274C: stop
274D: stop
274E: stop
274F: stop
2750: stop
2751: stop
2752: stop
2753: stop
2754: stop
2755: stop
2756: stop
2757: stop
2758: stop
2759: stop
275A: stop
275B: stop
275C: stop
275D: stop
275E: stop
275F: stop
2760: stop
2761: stop
2762: stop
2763: stop
2764: stop
2765: stop
2766: stop
2767: stop
2768: stop
2769: stop
276A: stop
276B: stop
276C: stop
276D: stop
276E: stop
276F: stop
2770: stop
2771: stop
2772: stop
2773: stop
2774: stop
2775: stop
2776: stop
2777: stop
2778: stop
2779: stop
277A: stop
277B: stop
277C: stop
277D: stop
277E: stop
277F: stop
2780: stop
2781: stop
2782: stop
2783: stop
2784: stop
2785: stop
2786: stop
2787: stop
2788: stop
2789: stop
278A: stop
278B: stop
278C: stop
278D: stop
278E: stop
278F: stop
2790: stop
2791: stop
2792: stop
2793: stop
2794: stop
2795: stop
2796: stop
2797: stop
2798: stop
2799: stop
279A: stop
279B: stop
279C: stop
279D: stop
279E: stop
279F: stop
27A0: stop
27A1: stop
27A2: stop
27A3: stop
27A4: stop
27A5: stop
27A6: stop
27A7: stop
27A8: stop
27A9: stop
27AA: stop
27AB: stop
27AC: stop
27AD: stop
27AE: stop
27AF: stop
27B0: stop
27B1: stop
27B2: stop
27B3: stop
27B4: stop
27B5: stop
27B6: stop
27B7: stop
27B8: stop
27B9: stop
27BA: stop
27BB: stop
27BC: stop
27BD: stop
27BE: stop
27BF: stop
27C0: stop
27C1: stop
27C2: stop
27C3: stop
27C4: stop
27C5: stop
27C6: stop
27C7: stop
27C8: stop
27C9: stop
27CA: stop
27CB: stop
27CC: stop
27CD: stop
27CE: stop
27CF: stop
27D0: stop
27D1: stop
27D2: stop
27D3: stop
27D4: stop
27D5: stop
27D6: stop
27D7: stop
27D8: stop
27D9: stop
27DA: stop
27DB: stop
27DC: stop
27DD: stop
27DE: stop
27DF: stop
27E0: stop
27E1: stop
27E2: stop
27E3: stop
27E4: stop
27E5: stop
27E6: stop
27E7: stop
27E8: stop
27E9: stop
27EA: stop
27EB: stop
27EC: stop
27ED: stop
27EE: stop
27EF: stop
27F0: stop
27F1: stop
27F2: stop
27F3: stop
27F4: stop
27F5: stop
27F6: stop
27F7: stop
27F8: stop
27F9: stop
27FA: stop
27FB: stop
27FC: stop
27FD: stop
27FE: stop
27FF: stop
2800: stop
2801: stop
2802: stop
2803: stop
2804: stop
2805: stop
2806: stop
2807: stop
2808: stop
2809: stop
280A: stop
280B: stop
280C: stop
280D: stop
280E: stop
280F: stop
2810: stop
2811: stop
2812: stop
2813: stop
2814: stop
2815: stop
2816: stop
2817: stop
2818: stop
2819: stop
281A: stop
281B: stop
281C: stop
281D: stop
281E: stop
281F: stop
2820: stop
2821: stop
2822: stop
2823: stop
2824: stop
2825: stop
2826: stop
2827: stop
2828: stop
2829: stop
282A: stop
282B: stop
282C: stop
282D: stop
282E: stop
282F: stop
2830: stop
2831: stop
2832: stop
2833: stop
2834: stop
2835: stop
2836: stop
2837: stop
2838: stop
2839: stop
283A: stop
283B: stop
283C: stop
283D: stop
283E: stop
283F: stop
2840: stop
2841: stop
2842: stop
2843: stop
2844: stop
2845: stop
2846: stop
2847: stop
2848: stop
2849: stop
284A: stop
284B: stop
284C: stop
284D: stop
284E: stop
284F: stop
2850: stop
2851: stop
2852: stop
2853: stop
2854: stop
2855: stop
2856: stop
2857: stop
2858: stop
2859: stop
285A: stop
285B: stop
285C: stop
285D: stop
285E: stop
285F: stop
2860: stop
2861: stop
2862: stop
2863: stop
2864: stop
2865: stop
2866: stop
2867: stop
2868: stop
2869: stop
286A: stop
286B: stop
286C: stop
286D: stop
286E: stop
286F: stop
2870: stop
2871: stop
2872: stop
2873: stop
2874: stop
2875: stop
2876: stop
2877: stop
2878: stop
2879: stop
287A: stop
287B: stop
287C: stop
287D: stop
287E: stop
287F: stop
2880: stop
2881: stop
2882: stop
2883: stop
2884: stop
2885: stop
2886: stop
2887: stop
2888: stop
2889: stop
288A: stop
288B: stop
288C: stop
288D: stop
288E: stop
288F: stop
2890: stop
2891: stop
2892: stop
2893: stop
2894: stop
2895: stop
2896: stop
2897: stop
2898: stop
2899: stop
289A: stop
289B: stop
289C: stop
289D: stop
289E: stop
289F: stop
28A0: stop
28A1: stop
28A2: stop
28A3: stop
28A4: stop
28A5: stop
28A6: stop
28A7: stop
28A8: stop
28A9: stop
28AA: stop
28AB: stop
28AC: stop
28AD: stop
28AE: stop
28AF: stop
28B0: stop
28B1: stop
28B2: stop
28B3: stop
28B4: stop
28B5: stop
28B6: stop
28B7: stop
28B8: stop
28B9: stop
28BA: stop
28BB: stop
28BC: stop
28BD: stop
28BE: stop
28BF: stop
28C0: stop
28C1: stop
28C2: stop
28C3: stop
28C4: stop
28C5: stop
28C6: stop
28C7: stop
28C8: stop
28C9: stop
28CA: stop
28CB: stop
28CC: stop
28CD: stop
28CE: stop
28CF: stop
28D0: stop
28D1: stop
28D2: stop
28D3: stop
28D4: stop
28D5: stop
28D6: stop
28D7: stop
28D8: stop
28D9: stop
28DA: stop
28DB: stop
28DC: stop
28DD: stop
28DE: stop
28DF: stop
28E0: stop
28E1: stop
28E2: stop
28E3: stop
28E4: stop
28E5: stop
28E6: stop
28E7: stop
28E8: stop
28E9: stop
28EA: stop
28EB: stop
28EC: stop
28ED: stop
28EE: stop
28EF: stop
28F0: stop
28F1: stop
28F2: stop
28F3: stop
28F4: stop
28F5: stop
28F6: stop
28F7: stop
28F8: stop
28F9: stop
28FA: stop
28FB: stop
28FC: stop
28FD: stop
28FE: stop
28FF: stop
2900: stop
2901: stop
2902: stop
2903: stop
2904: stop
2905: stop
2906: stop
2907: stop
2908: stop
2909: stop
290A: stop
290B: stop
290C: stop
290D: stop
290E: stop
290F: stop
2910: stop
2911: stop
2912: stop
2913: stop
2914: stop
2915: stop
2916: stop
2917: stop
2918: stop
2919: stop
291A: stop
291B: stop
291C: stop
291D: stop
291E: stop
291F: stop
2920: stop
2921: stop
2922: stop
2923: stop
2924: stop
2925: stop
2926: stop
2927: stop
2928: stop
2929: stop
292A: stop
292B: stop
292C: stop
292D: stop
292E: stop
292F: stop
2930: stop
2931: stop
2932: stop
2933: stop
2934: stop
2935: stop
2936: stop
2937: stop
2938: stop
2939: stop
293A: stop
293B: stop
293C: stop
293D: stop
293E: stop
293F: stop
2940: stop
2941: stop
2942: stop
2943: stop
2944: stop
2945: stop
2946: stop
2947: stop
2948: stop
2949: stop
294A: stop
294B: stop
294C: stop
294D: stop
294E: stop
294F: stop
2950: stop
2951: stop
2952: stop
2953: stop
2954: stop
2955: stop
2956: stop
2957: stop
2958: stop
2959: stop
295A: stop
295B: stop
295C: stop
295D: stop
295E: stop
295F: stop
2960: stop
2961: stop
2962: stop
2963: stop
2964: stop
2965: stop
2966: stop
2967: stop
2968: stop
2969: stop
296A: stop
296B: stop
296C: stop
296D: stop
296E: stop
296F: stop
2970: stop
2971: stop
2972: stop
2973: stop
2974: stop
2975: stop
2976: stop
2977: stop
2978: stop
2979: stop
297A: stop
297B: stop
297C: stop
297D: stop
297E: stop
297F: stop
2980: stop
2981: stop
2982: stop
2983: stop
2984: stop
2985: stop
2986: stop
2987: stop
2988: stop
2989: stop
298A: stop
298B: stop
298C: stop
298D: stop
298E: stop
298F: stop
2990: stop
2991: stop
2992: stop
2993: stop
2994: stop
2995: stop
2996: stop
2997: stop
2998: stop
2999: stop
299A: stop
299B: stop
299C: stop
299D: stop
299E: stop
299F: stop
29A0: stop
29A1: stop
29A2: stop
29A3: stop
29A4: stop
29A5: stop
29A6: stop
29A7: stop
29A8: stop
29A9: stop
29AA: stop
29AB: stop
29AC: stop
29AD: stop
29AE: stop
29AF: stop
29B0: stop
29B1: stop
29B2: stop
29B3: stop
29B4: stop
29B5: stop
29B6: stop
29B7: stop
29B8: stop
29B9: stop
29BA: stop
29BB: stop
29BC: stop
29BD: stop
29BE: stop
29BF: stop
29C0: stop
29C1: stop
29C2: stop
29C3: stop
29C4: stop
29C5: stop
29C6: stop
29C7: stop
29C8: stop
29C9: stop
29CA: stop
29CB: stop
29CC: stop
29CD: stop
29CE: stop
29CF: stop
29D0: stop
29D1: stop
29D2: stop
29D3: stop
29D4: stop
29D5: stop
29D6: stop
29D7: stop
29D8: stop
29D9: stop
29DA: stop
29DB: stop
29DC: stop
29DD: stop
29DE: stop
29DF: stop
29E0: stop
29E1: stop
29E2: stop
29E3: stop
29E4: stop
29E5: stop
29E6: stop
29E7: stop
29E8: stop
29E9: stop
29EA: stop
29EB: stop
29EC: stop
29ED: stop
29EE: stop
29EF: stop
29F0: stop
29F1: stop
29F2: stop
29F3: stop
29F4: stop
29F5: stop
29F6: stop
29F7: stop
29F8: stop
29F9: stop
29FA: stop
29FB: stop
29FC: stop
29FD: stop
29FE: stop
29FF: stop
2A00: stop
2A01: stop
2A02: stop
2A03: stop
2A04: stop
2A05: stop
2A06: stop
2A07: stop
2A08: stop
2A09: stop
2A0A: stop
2A0B: stop
2A0C: stop
2A0D: stop
2A0E: stop
2A0F: stop
2A10: stop
2A11: stop
2A12: stop
2A13: stop
2A14: stop
2A15: stop
2A16: stop
2A17: stop
2A18: stop
2A19: stop
2A1A: stop
2A1B: stop
2A1C: stop
2A1D: stop
2A1E: stop
2A1F: stop
2A20: stop
2A21: stop
2A22: stop
2A23: stop
2A24: stop
2A25: stop
2A26: stop
2A27: stop
2A28: stop
2A29: stop
2A2A: stop
2A2B: stop
2A2C: stop
2A2D: stop
2A2E: stop
2A2F: stop
2A30: stop
2A31: stop
2A32: stop
2A33: stop
2A34: stop
2A35: stop
2A36: stop
2A37: stop
2A38: stop
2A39: stop
2A3A: stop
2A3B: stop
2A3C: stop
2A3D: stop
2A3E: stop
2A3F: stop
2A40: stop
2A41: stop
2A42: stop
2A43: stop
2A44: stop
2A45: stop
2A46: stop
2A47: stop
2A48: stop
2A49: stop
2A4A: stop
2A4B: stop
2A4C: stop
2A4D: stop
2A4E: stop
2A4F: stop
2A50: stop
2A51: stop
2A52: stop
2A53: stop
2A54: stop
2A55: stop
2A56: stop
2A57: stop
2A58: stop
2A59: stop
2A5A: stop
2A5B: stop
2A5C: stop
2A5D: stop
2A5E: stop
2A5F: stop
2A60: stop
2A61: stop
2A62: stop
2A63: stop
2A64: stop
2A65: stop
2A66: stop
2A67: stop
2A68: stop
2A69: stop
2A6A: stop
2A6B: stop
2A6C: stop
2A6D: stop
2A6E: stop
2A6F: stop
2A70: stop
2A71: stop
2A72: stop
2A73: stop
2A74: stop
2A75: stop
2A76: stop
2A77: stop
2A78: stop
2A79: stop
2A7A: stop
2A7B: stop
2A7C: stop
2A7D: stop
2A7E: stop
2A7F: stop
2A80: stop
2A81: stop
2A82: stop
2A83: stop
2A84: stop
2A85: stop
2A86: stop
2A87: stop
2A88: stop
2A89: stop
2A8A: stop
2A8B: stop
2A8C: stop
2A8D: stop
2A8E: stop
2A8F: stop
2A90: stop
2A91: stop
2A92: stop
2A93: stop
2A94: stop
2A95: stop
2A96: stop
2A97: stop
2A98: stop
2A99: stop
2A9A: stop
2A9B: stop
2A9C: stop
2A9D: stop
2A9E: stop
2A9F: stop
2AA0: stop
2AA1: stop
2AA2: stop
2AA3: stop
2AA4: stop
2AA5: stop
2AA6: stop
2AA7: stop
2AA8: stop
2AA9: stop
2AAA: stop
2AAB: stop
2AAC: stop
2AAD: stop
2AAE: stop
2AAF: stop
2AB0: stop
2AB1: stop
2AB2: stop
2AB3: stop
2AB4: stop
2AB5: stop
2AB6: stop
2AB7: stop
2AB8: stop
2AB9: stop
2ABA: stop
2ABB: stop
2ABC: stop
2ABD: stop
2ABE: stop
2ABF: stop
2AC0: stop
2AC1: stop
2AC2: stop
2AC3: stop
2AC4: stop
2AC5: stop
2AC6: stop
2AC7: stop
2AC8: stop
2AC9: stop
2ACA: stop
2ACB: stop
2ACC: stop
2ACD: stop
2ACE: stop
2ACF: stop
2AD0: stop
2AD1: stop
2AD2: stop
2AD3: stop
2AD4: stop
2AD5: stop
2AD6: stop
2AD7: stop
2AD8: stop
2AD9: stop
2ADA: stop
2ADB: stop
2ADC: stop
2ADD: stop
2ADE: stop
2ADF: stop
2AE0: stop
2AE1: stop
2AE2: stop
2AE3: stop
2AE4: stop
2AE5: stop
2AE6: stop
2AE7: stop
2AE8: stop
2AE9: stop
2AEA: stop
2AEB: stop
2AEC: stop
2AED: stop
2AEE: stop
2AEF: stop
2AF0: stop
2AF1: stop
2AF2: stop
2AF3: stop
2AF4: stop
2AF5: stop
2AF6: stop
2AF7: stop
2AF8: stop
2AF9: stop
2AFA: stop
2AFB: stop
2AFC: stop
2AFD: stop
2AFE: stop
2AFF: stop
2B00: stop
2B01: stop
2B02: stop
2B03: stop
2B04: stop
2B05: stop
2B06: stop
2B07: stop
2B08: stop
2B09: stop
2B0A: stop
2B0B: stop
2B0C: stop
2B0D: stop
2B0E: stop
2B0F: stop
2B10: stop
2B11: stop
2B12: stop
2B13: stop
2B14: stop
2B15: stop
2B16: stop
2B17: stop
2B18: stop
2B19: stop
2B1A: stop
2B1B: stop
2B1C: stop
2B1D: stop
2B1E: stop
2B1F: stop
2B20: stop
2B21: stop
2B22: stop
2B23: stop
2B24: stop
2B25: stop
2B26: stop
2B27: stop
2B28: stop
2B29: stop
2B2A: stop
2B2B: stop
2B2C: stop
2B2D: stop
2B2E: stop
2B2F: stop
2B30: stop
2B31: stop
2B32: stop
2B33: stop
2B34: stop
2B35: stop
2B36: stop
2B37: stop
2B38: stop
2B39: stop
2B3A: stop
2B3B: stop
2B3C: stop
2B3D: stop
2B3E: stop
2B3F: stop
2B40: stop
2B41: stop
2B42: stop
2B43: stop
2B44: stop
2B45: stop
2B46: stop
2B47: stop
2B48: stop
2B49: stop
2B4A: stop
2B4B: stop
2B4C: stop
2B4D: stop
2B4E: stop
2B4F: stop
2B50: stop
2B51: stop
2B52: stop
2B53: stop
2B54: stop
2B55: stop
2B56: stop
2B57: stop
2B58: stop
2B59: stop
2B5A: stop
2B5B: stop
2B5C: stop
2B5D: stop
2B5E: stop
2B5F: stop
2B60: stop
2B61: stop
2B62: stop
2B63: stop
2B64: stop
2B65: stop
2B66: stop
2B67: stop
2B68: stop
2B69: stop
2B6A: stop
2B6B: stop
2B6C: stop
2B6D: stop
2B6E: stop
2B6F: stop
2B70: stop
2B71: stop
2B72: stop
2B73: stop
2B74: stop
2B75: stop
2B76: stop
2B77: stop
2B78: stop
2B79: stop
2B7A: stop
2B7B: stop
2B7C: stop
2B7D: stop
2B7E: stop
2B7F: stop
2B80: stop
2B81: stop
2B82: stop
2B83: stop
2B84: stop
2B85: stop
2B86: stop
2B87: stop
2B88: stop
2B89: stop
2B8A: stop
2B8B: stop
2B8C: stop
2B8D: stop
2B8E: stop
2B8F: stop
2B90: stop
2B91: stop
2B92: stop
2B93: stop
2B94: stop
2B95: stop
2B96: stop
2B97: stop
2B98: stop
2B99: stop
2B9A: stop
2B9B: stop
2B9C: stop
2B9D: stop
2B9E: stop
2B9F: stop
2BA0: stop
2BA1: stop
2BA2: stop
2BA3: stop
2BA4: stop
2BA5: stop
2BA6: stop
2BA7: stop
2BA8: stop
2BA9: stop
2BAA: stop
2BAB: stop
2BAC: stop
2BAD: stop
2BAE: stop
2BAF: stop
2BB0: stop
2BB1: stop
2BB2: stop
2BB3: stop
2BB4: stop
2BB5: stop
2BB6: stop
2BB7: stop
2BB8: stop
2BB9: stop
2BBA: stop
2BBB: stop
2BBC: stop
2BBD: stop
2BBE: stop
2BBF: stop
2BC0: stop
2BC1: stop
2BC2: stop
2BC3: stop
2BC4: stop
2BC5: stop
2BC6: stop
2BC7: stop
2BC8: stop
2BC9: stop
2BCA: stop
2BCB: stop
2BCC: stop
2BCD: stop
2BCE: stop
2BCF: stop
2BD0: stop
2BD1: stop
2BD2: stop
2BD3: stop
2BD4: stop
2BD5: stop
2BD6: stop
2BD7: stop
2BD8: stop
2BD9: stop
2BDA: stop
2BDB: stop
2BDC: stop
2BDD: stop
2BDE: stop
2BDF: stop
2BE0: stop
2BE1: stop
2BE2: stop
2BE3: stop
2BE4: stop
2BE5: stop
2BE6: stop
2BE7: stop
2BE8: stop
2BE9: stop
2BEA: stop
2BEB: stop
2BEC: stop
2BED: stop
2BEE: stop
2BEF: stop
2BF0: stop
2BF1: stop
2BF2: stop
2BF3: stop
2BF4: stop
2BF5: stop
2BF6: stop
2BF7: stop
2BF8: stop
2BF9: stop
2BFA: stop
2BFB: stop
2BFC: stop
2BFD: stop
2BFE: stop
2BFF: stop
2C00: nop
2C01: bmi   $2c03
2C03: nop
2C04: bpl   $2c36
2C06: asl   $30+x
2C08: or1   c,!($0030,00)
2C0B: nop
2C0C: rol   a
2C0D: bmi   $2c55
2C0F: bmi   $2c63
2C11: bmi   $2c67
2C13: bmi   $2c70
2C15: bmi   $2c74
2C17: bmi   $2c8e
2C19: bmi   $2ba6
2C1B: bmi   $2bc2
2C1D: bmi   $2bc6
2C1F: bmi   $2bdc
2C21: bmi   $2bed
2C23: bmi   $2bfe
2C25: bmi   $2c27
2C27: nop
2C28: mov   a,$EE30
2C2B: bmi   $2c27
2C2D: bmi   $2c31
2C2F: tcall 3
2C30: or    a,#$31
2C32: nop
2C33: nop
2C34: asl   $31+x
2C36: push  a
2C37: tcall 3
2C38: inc   x
2C39: tcall 3
2C3A: nop
2C3B: nop
2C3C: bvc   $2c6f
2C3E: clrc
2C3F: tcall 3
2C40: adc   a,($31+x)
2C42: adc   (x),(y)
2C43: tcall 3
2C44: di
2C45: tcall 3
2C46: mov   $D531,y
2C49: tcall 3
2C4A: clrv
2C4B: tcall 3
2C4C: notc
2C4D: tcall 3
2C4E: inc   y
2C4F: tcall 3
2C50: push  psw
2C51: clr1  $1C
2C53: clr1  $2D
2C55: clr1  $39
2C57: clr1  $40
2C59: clr1  $56
2C5B: clr1  $6A
2C5D: clr1  $7C
2C5F: clr1  $8F
2C61: clr1  $97
2C63: clr1  $A6
2C65: clr1  $BB
2C67: clr1  $D2
2C69: clr1  $E1
2C6B: clr1  $F1
2C6D: clr1  $00
2C6F: nop
2C70: dbnz  y,$2ca4
2C72: or1   c,$1933,00
2C75: bbc1  $1B,$2cab
2C78: and   a,#$33
2C7A: and   a,($33)+y
2C7C: eor   a,($33+x)
2C7E: bbc2  $33,$2ce2
2C81: bbc1  $6C,$2cb7
2C84: cmp   a,$33+x
2C86: reti
2C87: bbc1  $8A,$2cbd
2C8A: subw  ya,$33
2C8C: sbc   a,#$33
2C8E: mov   $33,a
2C90: dec   y
2C91: bbc1  $00,$2c94
2C94: mov   a,#$33
2C96: nop
2C97: nop
2C98: mov   ($FC),($33)
2C9B: bbc1  $0E,$2cd2
2C9E: decw  $34
2CA0: and   a,($34+x)
2CA2: and   a,$4534+x
2CA5: and   a,$00+x
2CA7: nop
2CA8: tcall 5
2CA9: and   a,$5F+x
2CAB: and   a,$70+x
2CAD: and   a,$7E+x
2CAF: and   a,$8F+x
2CB1: and   a,$A5+x
2CB3: and   a,$BF+x
2CB5: and   a,$C1+x
2CB7: and   a,$D7+x
2CB9: and   a,$D9+x
2CBB: and   a,$EC+x
2CBD: and   a,$FA+x
2CBF: and   a,$09+x
2CC1: and   a,$3515+x
2CC4: cmp   x,$1F35
2CC7: and   a,$353E+x
2CCA: pcall $35
2CCC: jmp   $6C35
2CCF: and   a,$357C+x
2CD2: adc   a,$35+x
2CD4: pop   a
2CD5: and   a,$35BB+x
2CD8: mov   $E435,y
2CDB: and   a,$35F6+x
2CDE: bbs0  $36,$2cf7
2CE1: and   a,$3623+y
2CE4: clr1  $36
2CE6: nop
2CE7: nop
2CE8: rol   a
2CE9: and   a,$3644+y
2CEC: lsr   $5B36
2CEF: and   a,$366A+y
2CF2: cmp   a,$8136+y
2CF5: and   a,$3691+y
2CF8: tcall 10
2CF9: and   a,$36B0+y
2CFC: mov   a,(x)+
2CFD: and   a,$36D0+y
2D00: cbne  $36+x,$2cee
2D03: and   a,$36FB+y
2D06: brk
2D07: and   a,($24)+y
2D09: and   a,($2F)+y
2D0B: and   a,($3C)+y
2D0D: and   a,($4C)+y
2D0F: and   a,($5D)+y
2D11: and   a,($5F)+y
2D13: and   a,($6E)+y
2D15: and   a,($00)+y
2D17: nop
2D18: eor1  c,$1A37,04
2D1B: and   a,($AA)+y
2D1D: and   a,($00)+y
2D1F: nop
2D20: mov   sp,x
2D21: and   a,($C2)+y
2D23: and   a,($DD)+y
2D25: and   a,($EB)+y
2D27: and   a,($F8)+y
2D29: and   a,($06)+y
2D2B: and   $38,#$14
2D2E: jmp   ($2A38+x)
2D31: and   $38,#$3F
2D34: eor   a,$38+x
2D36: bvs   $2d70
2D38: adc   a,$38
2D3A: nop
2D3B: nop
2D3C: adc   a,$38+x
2D3E: sbc   a,$B738
2D41: and   $38,#$C8
2D44: movw  $38,ya
2D46: mov   a,$38
2D48: sleep
2D49: and   $39,#$06
2D4C: clrp
2D4D: and   (x),(y)
2D4E: and   a,($39)+y
2D50: tclr1 $0039
2D53: nop
2D54: eor   a,($39)+y
2D56: clrc
2D57: and   (x),(y)
2D58: dbnz  $39,$2ce3
2D5B: and   (x),(y)
2D5C: set5  $39
2D5E: inc   a
2D5F: and   (x),(y)
2D60: bbc6  $39,$2d3e
2D63: and   (x),(y)
2D64: mov   a,(x)
2D65: and   (x),(y)
2D66: pop   y
2D67: and   (x),(y)
2D68: mov   x,$39+y
2D6A: asl   $3A
2D6C: nop
2D6D: nop
2D6E: nop
2D6F: nop
2D70: nop
2D71: nop
2D72: nop
2D73: nop
2D74: nop
2D75: nop
2D76: nop
2D77: nop
2D78: nop
2D79: nop
2D7A: nop
2D7B: nop
2D7C: nop
2D7D: nop
2D7E: nop
2D7F: nop
2D80: or    a,$1E3A+y
2D83: incw  $00
2D85: nop
2D86: nop
2D87: nop
2D88: nop
2D89: nop
2D8A: nop
2D8B: nop
2D8C: nop
2D8D: nop
2D8E: nop
2D8F: nop
2D90: nop
2D91: nop
2D92: nop
2D93: nop
2D94: nop
2D95: nop
2D96: nop
2D97: nop
2D98: nop
2D99: nop
2D9A: nop
2D9B: nop
2D9C: nop
2D9D: nop
2D9E: nop
2D9F: nop
2DA0: and   ($35),($3A)
2DA3: incw  $40
2DA5: incw  $4C
2DA7: incw  $57
2DA9: incw  $70
2DAB: incw  $89
2DAD: incw  $A2
2DAF: incw  $00
2DB1: nop
2DB2: nop
2DB3: nop
2DB4: nop
2DB5: nop
2DB6: nop
2DB7: nop
2DB8: nop
2DB9: nop
2DBA: nop
2DBB: nop
2DBC: inc   $3A+x
2DBE: tcall 12
2DBF: incw  $C5
2DC1: incw  $D5
2DC3: incw  $E7
2DC5: incw  $F6
2DC7: incw  $08
2DC9: rol   $0E+x
2DCB: rol   $16+x
2DCD: rol   $18+x
2DCF: rol   $00+x
2DD1: nop
2DD2: nop
2DD3: nop
2DD4: nop
2DD5: nop
2DD6: nop
2DD7: nop
2DD8: nop
2DD9: nop
2DDA: nop
2DDB: nop
2DDC: nop
2DDD: nop
2DDE: nop
2DDF: nop
2DE0: nop
2DE1: nop
2DE2: nop
2DE3: nop
2DE4: nop
2DE5: nop
2DE6: nop
2DE7: nop
2DE8: nop
2DE9: nop
2DEA: nop
2DEB: nop
2DEC: nop
2DED: nop
2DEE: nop
2DEF: nop
2DF0: nop
2DF1: nop
2DF2: nop
2DF3: nop
2DF4: nop
2DF5: nop
2DF6: nop
2DF7: nop
2DF8: nop
2DF9: nop
2DFA: nop
2DFB: nop
2DFC: nop
2DFD: nop
2DFE: nop
2DFF: nop
2E00: and   a,$363B
2E03: rol   $44+x
2E05: rol   $5F+x
2E07: rol   $7C+x
2E09: rol   $87+x
2E0B: rol   $94+x
2E0D: rol   $96+x
2E0F: rol   $A7+x
2E11: rol   $B9+x
2E13: rol   $CC+x
2E15: rol   $E1+x
2E17: rol   $FA+x
2E19: rol   $0D+x
2E1B: rol   a
2E1C: cmp   x,$2C3C
2E1F: rol   a
2E20: inc   x
2E21: rol   a
2E22: eor   a,($3C+x)
2E24: lsr   $3C+x
2E26: set4  $3C
2E28: sbc   a,($3C+x)
2E2A: nop
2E2B: nop
2E2C: mov1  c,$123C,05
2E2F: rol   a
2E30: mov   sp,x
2E31: rol   a
2E32: mov   $D53C,x
2E35: rol   a
2E36: mov   y,$003C
2E39: inc   x
2E3A: asl   a
2E3B: inc   x
2E3C: rol   $3D+x
2E3E: eor   a,$733D+y
2E41: inc   x
2E42: bbs4  $3D,$2ddb
2E45: inc   x
2E46: tcall 11
2E47: inc   x
2E48: cmp   x,#$3D
2E4A: mov   a,y
2E4B: inc   x
2E4C: mov   a,$3D+x
2E4E: bbs0  $3E,$2e61
2E51: cmp   x,$20
2E53: cmp   x,$2E
2E55: cmp   x,$30
2E57: cmp   x,$42
2E59: cmp   x,$56
2E5B: cmp   x,$6B
2E5D: cmp   x,$89
2E5F: cmp   x,$AB
2E61: cmp   x,$00
2E63: nop
2E64: bbs6  $3E,$2e32
2E67: cmp   x,$D4
2E69: cmp   x,$E6
2E6B: cmp   x,$F4
2E6D: cmp   x,$00
2E6F: call  $3F0F
2E72: jmp   ($2E3F+x)
2E75: call  $3F46
2E78: cmp   a,$3F
2E7A: ror   a
2E7B: call  $3F90
2E7E: bbs5  $3F,$2e38
2E81: call  $3FE2
2E84: or    ($32),($40)
2E87: setp
2E88: cmp   y,$6040
2E8B: setp
2E8C: addw  ya,$40
2E8E: nop
2E8F: nop
2E90: dec   $8E40
2E93: setp
2E94: div   ya,x
2E95: setp
2E96: ei
2E97: setp
2E98: inc   $40+x
2E9A: mov   $D440,x
2E9D: setp
2E9E: set7  $40
2EA0: sleep
2EA1: setp
2EA2: beq   $2ee4
2EA4: bbs0  $41,$2eb7
2EA7: tcall 4
2EA8: dec   x
2EA9: tcall 4
2EAA: rol   $41
2EAC: inc   x
2EAD: tcall 4
2EAE: eor   a,$41
2EB0: tclr1 $5041
2EB3: tcall 4
2EB4: bbs3  $41,$2f1c
2EB7: tcall 4
2EB8: mov   y,#$41
2EBA: mov   $A9,#$41
2EBD: tcall 4
2EBE: inc   $C341
2EC1: tcall 4
2EC2: dec   y
2EC3: tcall 4
2EC4: mov   a,($41)+y
2EC6: bbc0  $42,$2eff
2EC9: set2  $45
2ECB: set2  $5A
2ECD: set2  $69
2ECF: set2  $7C
2ED1: set2  $8A
2ED3: set2  $95
2ED5: set2  $A3
2ED7: set2  $AE
2ED9: set2  $BC
2EDB: set2  $C7
2EDD: set2  $D6
2EDF: set2  $E5
2EE1: set2  $E8
2EE3: set2  $00
2EE5: bbs2  $10,$2f2b
2EE8: dec   x
2EE9: bbs2  $39,$2f2f
2EEC: eor   $67,#$43
2EEF: bbs2  $76,$2f35
2EF2: dec   $A343
2EF5: bbs2  $B5,$2f3b
2EF8: mov   ($43+x),a
2EFA: mov   $E043,x
2EFD: bbs2  $00,$2f00
2F00: tcall 15
2F01: bbs2  $02,$2f48
2F04: or    a,$3644+y
2F07: eor   a,$58
2F09: eor   a,$59
2F0B: eor   a,$71
2F0D: eor   a,$89
2F0F: eor   a,$9A
2F11: eor   a,$AB
2F13: eor   a,$C3
2F15: eor   a,$DB
2F17: eor   a,$F2
2F19: eor   a,$00
2F1B: eor   a,$4512
2F1E: clr1  $45
2F20: tcall 5
2F21: eor   a,$4560
2F24: tcall 7
2F25: eor   a,$4582
2F28: tcall 9
2F29: eor   a,$45A2
2F2C: tcall 11
2F2D: eor   a,$45B9
2F30: mov   (x),a
2F31: eor   a,$45D7
2F34: mov   y,$45
2F36: inc   y
2F37: eor   a,$4610
2F3A: bbc0  $46,$2f64
2F3D: eor   a,(x)
2F3E: or1   c,!($0046,02)
2F41: eor   a,(x)
2F42: clr2  $46
2F44: clrc
2F45: eor   a,(x)
2F46: and1  c,!($1946,03)
2F49: eor   a,(x)
2F4A: adc   a,$9246
2F4D: eor   a,(x)
2F4E: adc   a,$A446+x
2F51: eor   a,(x)
2F52: sbc   a,($46+x)
2F54: inc   $46+x
2F56: mov   $CF46,a
2F59: eor   a,(x)
2F5A: mov   y,$46
2F5C: or    ($21),($47)
2F5F: eor   a,($36+x)
2F61: eor   a,($4D+x)
2F63: eor   a,($5F+x)
2F65: eor   a,($6D+x)
2F67: eor   a,($7E+x)
2F69: eor   a,($99+x)
2F6B: eor   a,($B4+x)
2F6D: eor   a,($D6+x)
2F6F: eor   a,($00+x)
2F71: nop
2F72: nop
2F73: nop
2F74: nop
2F75: nop
2F76: nop
2F77: nop
2F78: nop
2F79: nop
2F7A: nop
2F7B: nop
2F7C: nop
2F7D: nop
2F7E: nop
2F7F: nop
2F80: nop
2F81: nop
2F82: nop
2F83: nop
2F84: nop
2F85: nop
2F86: nop
2F87: nop
2F88: nop
2F89: nop
2F8A: nop
2F8B: nop
2F8C: nop
2F8D: nop
2F8E: nop
2F8F: nop
2F90: nop
2F91: nop
2F92: nop
2F93: nop
2F94: nop
2F95: nop
2F96: nop
2F97: nop
2F98: nop
2F99: nop
2F9A: nop
2F9B: nop
2F9C: nop
2F9D: nop
2F9E: nop
2F9F: nop
2FA0: nop
2FA1: nop
2FA2: nop
2FA3: nop
2FA4: nop
2FA5: nop
2FA6: nop
2FA7: nop
2FA8: nop
2FA9: nop
2FAA: nop
2FAB: nop
2FAC: nop
2FAD: nop
2FAE: nop
2FAF: nop
2FB0: nop
2FB1: nop
2FB2: nop
2FB3: nop
2FB4: nop
2FB5: nop
2FB6: nop
2FB7: nop
2FB8: nop
2FB9: nop
2FBA: nop
2FBB: nop
2FBC: nop
2FBD: nop
2FBE: nop
2FBF: nop
2FC0: nop
2FC1: nop
2FC2: nop
2FC3: nop
2FC4: nop
2FC5: nop
2FC6: nop
2FC7: nop
2FC8: nop
2FC9: nop
2FCA: nop
2FCB: nop
2FCC: nop
2FCD: nop
2FCE: nop
2FCF: nop
2FD0: nop
2FD1: nop
2FD2: nop
2FD3: nop
2FD4: nop
2FD5: nop
2FD6: nop
2FD7: nop
2FD8: nop
2FD9: nop
2FDA: nop
2FDB: nop
2FDC: nop
2FDD: nop
2FDE: nop
2FDF: nop
2FE0: nop
2FE1: nop
2FE2: nop
2FE3: nop
2FE4: nop
2FE5: nop
2FE6: nop
2FE7: nop
2FE8: nop
2FE9: nop
2FEA: nop
2FEB: nop
2FEC: nop
2FED: nop
2FEE: nop
2FEF: nop
2FF0: nop
2FF1: nop
2FF2: nop
2FF3: nop
2FF4: nop
2FF5: nop
2FF6: nop
2FF7: nop
2FF8: nop
2FF9: nop
2FFA: nop
2FFB: nop
2FFC: nop
2FFD: nop
2FFE: nop
2FFF: nop
3000: clr6  $F0
3002: not1  $0406,07
3005: or    a,#$D7
3007: nop
3008: or    $E9,#$C1
300B: and   a,$15EE
300E: bvc   $3002
3010: not1  $040A,07
3013: or    a,$D7
3015: nop
3016: or    a,$FF
3018: or1   c,$1256,07
301B: mov   a,$04
301D: mov   ($00)+y,a
301F: or    a,$FF
3021: mov   x,$E030
3024: mov   $3814+y,a
3027: bbc3  $1A,$301c
302A: clr6  $80
302C: mov   $00+y,x
302E: or    a,#$C9
3030: mov   a,$06
3032: eor   a,($E4)+y
3034: tcall 0
3035: mov   $4C0C+y,a
3038: pop   y
3039: or    a,$F20A+y
303C: mov   a,$02
303E: mov   $7124+y,a
3041: eor   a,$1AEE+x
3044: di
3045: clr7  $EA
3047: or    a,#$E4
3049: set0  $D6
304B: or    $0A,#$71
304E: pop   y
304F: decw  $C0
3051: clr7  $E7
3053: set0  $E4
3055: or    ($10),($D6)
3058: clrc
3059: or    a,#$F2
305B: mov   x,$D204
305E: rol   a
305F: not1  $0403,07
3062: bra   $303b
3064: nop
3065: or    a,#$FF
3067: beq   $306d
3069: mov   a,#$02
306B: mov   $1D2C+y,a
306E: or    a,(x)
306F: di
3070: tcall 15
3071: pop   y
3072: or    a,$F2B9+y
3075: not1  $0405,07
3078: decw  $D7
307A: asl   $890C
307D: mov   y,$06
307F: mov   $2C0C+y,a
3082: tcall 7
3083: mov   $0A00+y,a
3086: pop   y
3087: brk
3088: sbc   a,$B9+x
308A: clr7  $EA
308C: bbs0  $E4,$30a9
308F: mov   ($0C)+y,a
3091: asl   $EB89
3094: or    a,(x)
3095: mov   $2C0C+y,a
3098: set3  $E9
309A: bbs0  $EA,$30a2
309D: mov   $0100+y,a
30A0: pop   y
30A1: brk
30A2: sbc   a,$B9+x
30A4: clr7  $E9
30A6: or    a,#$EA
30A8: or    a,$06E4
30AB: clr6  $8C
30AD: mov   $8000+x,a
30B0: mov   $00+y,x
30B2: or    a,($FF+x)
30B4: pop   y
30B5: bbc0  $D6,$30e8
30B8: or    a,$F2A7
30BB: clr6  $B4
30BD: mov   a,$02
30BF: mov   ($00)+y,a
30C1: or    a,$E4
30C3: mov   y,$08
30C5: pop   y
30C6: or    a,$C18C+x
30C9: clr7  $D2
30CB: sbc   a,$EA+x
30CD: or    a,($E4+x)
30CF: bbs0  $D7,$30d2
30D2: or    a,$FF
30D4: pop   y
30D5: or    a,$C18C+x
30D8: clr7  $D2
30DA: sbc   a,$EA+x
30DC: tcall 0
30DD: mov   a,$07
30DF: mov   x,$EE15
30E2: or    a,$F29C+x
30E5: not1  $0403,07
30E8: or    a,$D6
30EA: asl   $7430
30ED: clr7  $EA
30EF: or    a,$E4
30F1: or    a,$E9
30F3: or    a,#$E0
30F5: mov   $4B0C+y,a
30F8: cmp   a,$F2+x
30FA: not1  $0408,07
30FD: or    a,$93
30FF: rol   $95+x
3101: clr7  $E4
3103: or    a,($2A+x)
3105: adc   a,$F268+x
3108: mov   $8000+x,a
310B: not1  $0403,07
310E: or    a,#$D5
3110: nop
3111: setc
3112: mov   $7428+y,a
3115: mov   ($00)+y,a
3117: or    a,$FF
3119: eor   a,$D5F2+y
311C: nop
311D: setc
311E: not1  $0402,07
3121: or    a,$04E9
3124: mov   $0C0C+y,a
3127: push  psw
3128: mov   $0C10+y,a
312B: cmp   a,(x)
312C: clr7  $D5
312E: nop
312F: setc
3130: not1  $0403,07
3133: or    a,$0CD6
3136: asl   $D60D
3139: bpl   $3147
313B: cmp   a,(x)
313C: clr7  $EA
313E: bbs0  $E4,$3148
3141: mov   $8000+x,a
3144: mov   ($00)+y,a
3146: or    $94,#$DD
3149: mov   $7E18+y,a
314C: pop   y
314D: or    a,$71+x
314F: clr7  $D2
3151: bcc   $313d
3153: nop
3154: mov   a,$02
3156: mov   $00+y,x
3158: nop
3159: tcall 15
315A: lsr   $B9
315C: pop   y
315D: tcall 1
315E: sbc   a,$D2F2+y
3161: bcc   $314d
3163: bbs0  $E4,$316c
3166: clrv
3167: beq   $316d
3169: mov   $C83C+y,a
316C: adc   a,$F1
316E: beq   $3174
3170: mov   $C83C+y,a
3173: tcall 8
3174: tcall 15
3175: beq   $3179
3177: mov   $C83C+y,a
317A: setc
317B: tcall 15
317C: bbc6  $78,$317f
317F: beq   $3187
3181: mov   $C83C+y,a
3184: cmp   y,$F1
3186: clr7  $D2
3188: bcc   $3174
318A: nop
318B: mov   a,$02
318D: mov   $00+y,x
318F: nop
3190: tcall 15
3191: lsr   $B4
3193: sbc   a,$EEBC+y
3196: tcall 1
3197: sbc   a,$D2F2+y
319A: bcc   $3186
319C: bbs0  $E4,$31a5
319F: clrv
31A0: beq   $31ae
31A2: mov   $C83C+y,a
31A5: adc   a,$F1
31A7: beq   $31b3
31A9: mov   $C83C+y,a
31AC: tcall 8
31AD: tcall 15
31AE: beq   $31b7
31B0: mov   $C83C+y,a
31B3: setc
31B4: tcall 15
31B5: bbc6  $78,$31b8
31B8: beq   $31c0
31BA: mov   $C83C+y,a
31BD: cmp   y,$F1
31BF: clr7  $E4
31C1: or    ($DD),($DE)
31C4: or    a,$DD0E+y
31C7: or    a,($EE)+y
31C9: or    a,($28)+y
31CB: clr7  $E4
31CD: or    a,($E9+x)
31CF: bmi   $31df
31D1: pop   y
31D2: or    a,($27)+y
31D4: clr7  $E4
31D6: tcall 0
31D7: rol   $D3
31D9: cmp   x,#$FF
31DB: and1  c,$00F0,00
31DE: set6  $F1
31E0: mov   a,$01
31E2: bne   $31c4
31E4: and   ($C8),($D3)
31E7: stop
31E8: rol   $F0+x
31EA: nop
31EB: set6  $F1
31ED: not1  $0405,07
31F0: or    a,$00D5
31F3: setc
31F4: set7  $D6
31F6: bmi   $3210
31F8: mov   y,$06
31FA: ret
31FB: clr7  $EA
31FD: or    a,$05E4
3200: mov   $8000+x,a
3203: set7  $E9
3205: or    a,$D6+x
3207: bmi   $3221
3209: mov   y,$06
320B: or    a,(x)
320C: clr7  $EA
320E: or    a,$07E4
3211: mov   $8000+x,a
3214: set7  $D6
3216: bmi   $31ff
3218: mov   y,$06
321A: ret
321B: clr7  $EA
321D: or    a,$07E4
3220: mov   $8000+x,a
3223: set7  $E9
3225: or    a,$D6+x
3227: bmi   $3210
3229: mov   y,$06
322B: or    a,(x)
322C: clr7  $DE
322E: mov   a,y
322F: clr0  $0A
3231: mov   a,y
3232: decw  $EE
3234: or    a,$04+x
3236: mov   a,y
3237: cmp   x,$E4F2
323A: set0  $0A
323C: pop   y
323D: or    a,$04+x
323F: clr7  $EA
3241: or    a,$DEE2
3244: beq   $3247
3246: mov   a,y
3247: bpl   $3254
3249: mov   a,y
324A: decw  $09
324C: tcall 15
324D: mov   a,y
324E: bpl   $323b
3250: or    a,#$EE
3252: brk
3253: nop
3254: sbc   (x),(y)
3255: clr7  $E4
3257: bbs0  $D9,$325a
325A: nop
325B: tcall 15
325C: set7  $F0
325E: tcall 0
325F: asl   $63
3261: tcall 15
3262: mov   a,(x)
3263: mov   y,$08
3265: pop   y
3266: brk
3267: rol   a
3268: sbc   (x),(y)
3269: clr7  $EA
326B: bbs0  $E4,$3274
326E: mov   $8000+x,a
3271: set7  $D9
3273: nop
3274: asl   $E9E9
3277: bvc   $3267
3279: clr0  $A5
327B: clr7  $EA
327D: bbs0  $E4,$3286
3280: mov   $8000+x,a
3283: set7  $E0
3285: mov   $00+y,x
3287: asl   $E9FF
328A: eor   a,#$EE
328C: clr0  $A7
328E: clr7  $D2
3290: dec   $07EA
3293: mov   a,$03
3295: asl   a
3296: clr7  $E4
3298: or    a,($E0+x)
329A: mov   ($00)+y,a
329C: nop
329D: mov   $D2A4,x
32A0: bvc   $3278
32A2: or    a,#$0B
32A4: or1   c,$12F2,06
32A7: ei
32A8: mov   a,$06
32AA: mov   ($00)+y,a
32AC: nop
32AD: mov   y,$DB+x
32AF: or    a,$D2
32B1: mov   y,$08
32B3: beq   $32b8
32B5: mov   $080C+y,a
32B8: eor   a,$F2F1+x
32BB: clr6  $30
32BD: not1  $0403,07
32C0: or    a,(x)
32C1: mov   ($00)+y,a
32C3: nop
32C4: mov   y,$DB+x
32C6: or    a,$28
32C8: mov   y,$08
32CA: beq   $32cf
32CC: mov   $1C18+y,a
32CF: eor   a,$F2F1+x
32D2: not1  $0407,07
32D5: or1   c,$00D9,00
32D8: tcall 0
32D9: mov   x,$DB
32DB: or    $EE,#$3C
32DE: or    a,$78+x
32E0: clr7  $EA
32E2: or1   c,$0AE4,00
32E5: clrv
32E6: mov   $00+y,x
32E8: set0  $F8
32EA: mov   $18+x,y
32EC: bbs6  $EE,$3303
32EF: cmp   $D2,#$F2
32F2: sbc   a,$E4+x
32F4: tcall 0
32F5: mov   y,$08
32F7: pop   y
32F8: or    a,($D6)+y
32FA: or    $07,#$3C
32FD: clr7  $EA
32FF: or    a,$E4
3301: or    a,$0AEB
3304: rol   $D6
3306: or    $28,#$47
3309: clr7  $EA
330B: bbs0  $E4,$330f
330E: mov   y,$0A
3310: mov   ($00)+y,a
3312: nop
3313: stop
3314: mov   $6E18+y,a
3317: eor   a,$E7F2+x
331A: bbs0  $D2,$329d
331D: mov   a,$02
331F: set7  $D9
3321: nop
3322: asl   $EE7F
3325: tcall 1
3326: push  a
3327: clr7  $D2
3329: stop
332A: not1  $0403,07
332D: set0  $F0
332F: nop
3330: bbc4  $CC,$32e4
3333: tcall 13
3334: bbs6  $F1,$3329
3337: clr6  $FF
3339: not1  $0403,07
333C: bbs0  $E0,$332f
333F: nop
3340: tcall 13
3341: eor   a,#$CC
3343: cmp   a,$F1C3+x
3346: clr7  $EA
3348: or    a,($E4+x)
334A: or    a,$D6
334C: or    $08,#$04
334F: pop   y
3350: clr0  $B6
3352: clr7  $EA
3354: or    a,($E4+x)
3356: or    a,$E9
3358: or    a,$D6
335A: or    $26,#$04
335D: pop   y
335E: clr0  $B6
3360: clr7  $EA
3362: bbs0  $DE,$3342
3365: cmp   x,$0D0B
3368: pop   y
3369: tcall 1
336A: nop
336B: clr7  $E4
336D: set0  $D1
336F: asl   $11EE
3372: cmpw  ya,$F2
3374: not1  $0407,07
3377: decw  $D6
3379: or    a,#$02
337B: eor   $B2,#$CF
337E: clr7  $EA
3380: or1   c,$0EE4,01
3383: mov   $0408+y,a
3386: eor   $B2,#$CF
3389: clr7  $D2
338B: bpl   $3362
338D: nop
338E: setc
338F: mov   a,$03
3391: mov   $FF+x,y
3393: tcall 8
3394: nop
3395: beq   $3397
3397: sbc   a,$F1+x
3399: clr7  $D2
339B: bpl   $3372
339D: nop
339E: setc
339F: cbne  $DD+x,$33c0
33A2: lsr   $F0
33A4: nop
33A5: sbc   a,$F1+x
33A7: clr7  $D2
33A9: dec   $00D5
33AC: setc
33AD: not1  $0403,07
33B0: and1  c,$00D7,00
33B3: nop
33B4: stop
33B5: mov   a,($04+x)
33B7: mov   $1002+y,a
33BA: bbc6  $C8,$33bd
33BD: beq   $33ce
33BF: pop   y
33C0: decw  $0A
33C2: tcall 15
33C3: clr7  $D2
33C5: cmp   $00,#$D5
33C8: setc
33C9: not1  $040A,07
33CC: tset1 $00D7
33CF: nop
33D0: tcall 15
33D1: clrv
33D2: bbc6  $C8,$33d5
33D5: beq   $33e6
33D7: pop   y
33D8: decw  $0A
33DA: tcall 15
33DB: clr7  $EA
33DD: nop
33DE: cbne  $DD+x,$33fd
33E1: clr5  $DD
33E3: cmp   x,$18EE
33E6: sbc   ($D2),($F2)
33E9: and   a,#$E4
33EB: or    a,(x)
33EC: mov   ($00)+y,a
33EE: asl   $D9FF
33F1: nop
33F2: or1   c,$04FF,00
33F5: di
33F6: pop   y
33F7: asl   a
33F8: di
33F9: clr7  $E9
33FB: or    a,$D2
33FD: sbc   a,$EA+x
33FF: or    a,$07E4
3402: mov   $8000+x,a
3405: mov   ($00)+y,a
3407: or    a,$BB+x
3409: push  psw
340A: pop   y
340B: or    a,($92)+y
340D: clr7  $D5
340F: nop
3410: setc
3411: not1  $0402,07
3414: or    a,#$D6
3416: bmi   $341c
3418: bbs2  $F2,$33f0
341B: nop
341C: setc
341D: not1  $0402,07
3420: or    a,#$E0
3422: mov   $0430+y,a
3425: bbs2  $F2,$33fd
3428: nop
3429: setc
342A: not1  $040A,07
342D: or    a,($D7+x)
342F: nop
3430: or    a,$FF
3432: push  psw
3433: cmp   a,($F2+x)
3435: clr6  $64
3437: not1  $040A,07
343A: or    a,($E7+x)
343C: bbs0  $D7,$343f
343F: or    a,$FF
3441: clrv
3442: push  psw
3443: cmp   a,($F2+x)
3445: mov   $8000+x,a
3448: not1  $0405,07
344B: or    a,($D6+x)
344D: asl   $1A7C
3450: clr7  $D5
3452: nop
3453: setc
3454: not1  $0403,07
3457: or    a,$EE
3459: bbc0  $D6,$348c
345C: bvc   $34ab
345E: clr7  $D5
3460: nop
3461: setc
3462: not1  $0403,07
3465: or    a,$E0
3467: mov   x,$EE04
346A: bbc0  $D6,$349d
346D: bvc   $34bc
346F: clr7  $D5
3471: nop
3472: setc
3473: not1  $0403,07
3476: or    a,(x)
3477: pop   y
3478: clr0  $D6
347A: rol   a
347B: dec   y
347C: jmp   ($D5F2+x)
347F: nop
3480: setc
3481: not1  $0403,07
3484: or    a,(x)
3485: clrv
3486: mov   x,$EE10
3489: clr0  $D6
348B: rol   a
348C: dec   y
348D: jmp   ($E4F2+x)
3490: or    a,$01F0
3493: asl   $0CD1
3496: tcall 13
3497: tcall 15
3498: bne   $3471
349A: nop
349B: nop
349C: mov   $EA,a
349E: or    a,$07E4
34A1: pop   y
34A2: or    a,$8C+x
34A4: clr7  $E4
34A6: or    a,$F0E0
34A9: tcall 0
34AA: eor   a,($D1)+y
34AC: eor   a,#$D1
34AE: tcall 15
34AF: bne   $3492
34B1: mov   ($00)+y,a
34B3: nop
34B4: mov   $EA,a
34B6: or    a,$07E4
34B9: mov   x,$EE04
34BC: or    a,$8C+x
34BE: clr7  $E9
34C0: or    a,$D2
34C2: setc
34C3: not1  $0405,07
34C6: or    a,($D7+x)
34C8: nop
34C9: or    a,#$C9
34CB: mov   $040C+y,a
34CE: beq   $34d7
34D0: asl   $D6F1
34D3: asl   $0A04
34D6: clr7  $E9
34D8: or    a,$D2
34DA: cmp   $04,#$EA
34DD: mov   a,$16
34DF: bbc6  $C8,$34e2
34E2: beq   $34f4
34E4: mov   a,#$04
34E6: mov   $140C+y,a
34E9: or1   c,$12F1,07
34EC: clr6  $B4
34EE: not1  $0405,07
34F1: or    a,(x)
34F2: mov   ($00)+y,a
34F4: or    a,#$93
34F6: pop   y
34F7: bbc0  $A6,$34ec
34FA: clr6  $B4
34FC: not1  $0405,07
34FF: or    a,(x)
3500: clrv
3501: mov   ($00)+y,a
3503: or    a,#$93
3505: pop   y
3506: bbc0  $A6,$34fb
3509: mov   a,$04
350B: mov   x,#$D6
350D: or    a,#$14
350F: mov   y,$08
3511: pop   y
3512: decw  $09
3514: clr7  $DE
3516: mov   a,y
3517: asl   a
3518: mov   y,$08
351A: pop   y
351B: decw  $08
351D: clr7  $D1
351F: clr6  $32
3521: cbne  $F0+x,$3528
3524: mov   a,y
3525: tcall 1
3526: or1   c,$11CF,07
3529: daa   a
352A: clr6  $50
352C: not1  $0406,07
352F: or    a,($D7+x)
3531: nop
3532: or    a,$93
3534: mov   x,$D614
3537: or    $07,#$25
353A: pop   y
353B: or    a,$B9+x
353D: clr7  $E4
353F: or    a,$0AEB
3542: mov   $C80C+y,a
3545: bbc3  $EF,$3532
3548: or    a,#$E5
354A: mov   $D008+y,a
354D: adc   a,$F2
354F: mov   a,$04
3551: mov   y,$0A
3553: mov   $CC0C+y,a
3556: or    (x),(y)
3557: mov   a,$08EA
355A: mov   $D008+y,a
355D: adc   a,$F2
355F: clr6  $78
3561: mov   a,$02
3563: pop   y
3564: or    a,$0D+x
3566: mov   a,$24D6
3569: setc
356A: or    a,#$F2
356C: clr6  $78
356E: clrv
356F: mov   a,$03
3571: pop   y
3572: or    a,$D6+x
3574: and   a,$E4
3576: push  psw
3577: mov   $E424+y,a
357A: or    a,#$F2
357C: clr6  $A0
357E: mov   $8000+x,a
3581: mov   a,$14
3583: mov   $3008+y,a
3586: asl   $D2CE
3589: cmp   a,$EA
358B: or    a,(x)
358C: mov   a,$07
358E: mov   x,$EE31
3591: clr0  $3C
3593: clr7  $D2
3595: ei
3596: mov   $8000+x,a
3599: not1  $0403,07
359C: or    a,$06D6
359F: cmp   x,#$0B
35A1: mul   ya
35A2: clr6  $64
35A4: not1  $0406,07
35A7: or    a,($E9+x)
35A9: or    a,$EE
35AB: clr0  $69
35AD: clr7  $D2
35AF: dec   $09E4
35B2: mov   $2014+y,a
35B5: or1   c,!($10D6,01)
35B8: mov   y,$BD
35BA: clr7  $D2
35BC: dec   $DDDE
35BF: or    a,$2A+x
35C1: mov   a,y
35C2: bpl   $35ed
35C4: mov   a,y
35C5: decw  $EE
35C7: or    $DD,#$27
35CA: cmp   x,$D2F2
35CD: dec   $09E4
35D0: mov   ($00)+y,a
35D2: or    a,$FF+x
35D4: mov   $00+y,x
35D6: or    a,$D3
35D8: mov   $3304+y,a
35DB: asl   $D6
35DD: bpl   $361f
35DF: or1   c,$17EE,00
35E2: inc   a
35E3: clr7  $D2
35E5: dec   $DDDE
35E8: bpl   $35f7
35EA: mov   a,y
35EB: or    a,$0C+x
35ED: mov   a,y
35EE: decw  $0A
35F0: pop   y
35F1: or    a,($BC)+y
35F3: mov   a,y
35F4: cmp   x,$D2F2
35F7: dec   $03E4
35FA: mov   $650C+y,a
35FD: or1   c,!($10D6,01)
3600: mov   y,$F2BD
3603: clr6  $8C
3605: mov   a,$03
3607: cbne  $DD+x,$361e
360A: asl   $DE
360C: mov   a,y
360D: decw  $0D
360F: cbne  $DD+x,$362f
3612: asl   $DD
3614: cmp   x,$D2F2
3617: dec   $09E4
361A: mov   $1C0C+y,a
361D: or1   c,!($10D6,01)
3620: movw  $BC,ya
3622: clr7  $D2
3624: dec   $DDDE
3627: tcall 1
3628: asl   $19DD
362B: asl   $18EE
362E: mov   sp,x
362F: mov   a,y
3630: cmp   x,$D5F2
3633: nop
3634: setc
3635: not1  $040A,07
3638: asl   a
3639: sbc   a,$77
363B: clr7  $E4
363D: or1   c,$06EA,00
3640: cmp   a,(x)
3641: mul   ya
3642: adc   a,$F2
3644: mov   a,$0A
3646: not1  $0603,03
3649: mul   ya
364A: adc   a,$F2
364C: not1  $0403,07
364F: or    a,($EB+x)
3651: push  psw
3652: eor   ($67),($58)
3655: cmp   a,$9485+y
3658: bbs5  $F2,$364d
365B: not1  $0404,07
365E: or    a,(x)
365F: mov   y,$0B
3661: eor   ($67),($58)
3664: cmp   a,$9485+y
3667: bbs5  $F2,$365c
366A: clr6  $78
366C: not1  $1E00,06
366F: mov   a,y
3670: or    (x),(y)
3671: asl   $DD
3673: cmp   x,$F20C
3676: clr6  $8C
3678: not1  $0401,07
367B: bbs0  $A2,$3662
367E: or    a,($B1+x)
3680: clr7  $D2
3682: setc
3683: not1  $0401,07
3686: set0  $D7
3688: nop
3689: or1   c,$047F,04
368C: mov   $1E08+y,a
368F: mov   a,(x)+
3690: clr7  $D2
3692: setc
3693: not1  $0403,07
3696: bbs0  $D7,$3699
3699: or1   c,$197F,01
369C: mov   $1E08+y,a
369F: mov   a,(x)+
36A0: clr7  $EA
36A2: or1   c,$01E4,00
36A5: mov   y,$0A
36A7: mov   $0C18+y,a
36AA: asl   $D6
36AC: asl   $B028
36AF: clr7  $D2
36B1: cmp   $02,#$E4
36B4: mov   y,$0A
36B6: mov   $3C0A+y,a
36B9: asl   $D6
36BB: or1   c,$013C,05
36BE: clr7  $D2
36C0: setc
36C1: not1  $0403,07
36C4: bbs0  $D7,$36c7
36C7: tset1 $D678
36CA: cmp   (x),(y)
36CB: tcall 0
36CC: mov   y,$08
36CE: push  x
36CF: clr7  $D3
36D1: clrc
36D2: bvc   $36be
36D4: nop
36D5: mov   a,$16
36D7: mov   $0128+y,a
36DA: mov   y,$08
36DC: clrp
36DD: clr7  $EA
36DF: bbs0  $E4,$36e9
36E2: mov   ($18)+y,a
36E4: asl   $D654
36E7: reti
36E8: mov   y,a
36E9: jmp   ($EAF2+x)
36EC: bbs0  $E4,$36f6
36EF: mov   y,$03
36F1: mov   ($18)+y,a
36F3: asl   $D654
36F6: reti
36F7: mov   y,a
36F8: mul   ya
36F9: jmp   ($D2F2+x)
36FC: sbc   a,$EA+x
36FE: bbs0  $E4,$3707
3701: set7  $D6
3703: or    $EB,#$0C
3706: or    a,#$9E
3708: mov   a,$07
370A: mov   $0A18+y,a
370D: or    a,($F2)+y
370F: clr6  $46
3711: not1  $0400,07
3714: or    a,($E2+x)
3716: cbne  $DD+x,$3737
3719: mov   $0C18+y,a
371C: mov   y,$05
371E: div   ya,x
371F: mov   $0A18+y,a
3722: or    a,($F2)+y
3724: not1  $0406,07
3727: bpl   $36ff
3729: asl   $EB06
372C: brk
372D: eor   a,$F2+x
372F: clr6  $2E
3731: not1  $0404,07
3734: or    a,(x)
3735: mov   $381C+y,a
3738: mov   y,$0F
373A: eor   a,$F2+x
373C: not1  $0400,07
373F: bbs0  $D6,$377e
3742: set0  $D7
3744: nop
3745: set0  $7F
3747: ror   a
3748: pop   y
3749: or    $F2,#$BE
374C: not1  $040A,07
374F: or    a,$E0
3751: mov   $033C+y,a
3754: mov   ($00)+y,a
3756: set0  $7F
3758: ror   a
3759: pop   y
375A: or    $F2,#$BE
375D: mov   x,$D208
3760: sbc   a,$EA
3762: or    ($03),($E4)
3765: mov   $2410+y,a
3768: mov   ($00)+y,a
376A: or    a,$54
376C: eor   a,(x)
376D: clr7  $EA
376F: or1   c,$06E4,00
3772: mov   $643C+y,a
3775: incw  $D1
3777: mov   $F515+y,a
377A: mov   ($00)+y,a
377C: tcall 0
377D: reti
377E: and   (x),(y)
377F: tcall 13
3780: mov   $F515+y,a
3783: mov   ($00)+y,a
3785: or    a,$7F
3787: eor   a,#$D1
3789: clr7  $EA
378B: or    a,$E4
378D: or    a,$00D7
3790: or    a,$DD
3792: mov   $4024+y,a
3795: bvc   $3785
3797: or    a,($BE)+y
3799: clr7  $EA
379B: or    a,$E4
379D: or    a,$00D7
37A0: or    a,$DD
37A2: mov   $4024+y,a
37A5: bvc   $3795
37A7: or    a,($BE)+y
37A9: clr7  $EA
37AB: or1   c,$02E4,00
37AE: mov   ($00)+y,a
37B0: or    a,$FF
37B2: bbc6  $0C,$377d
37B5: beq   $37bc
37B7: mov   $7428+y,a
37BA: eor   (x),(y)
37BB: tcall 15
37BC: clr7  $E9
37BE: bbs0  $DB,$37cd
37C1: dec   $EA+x
37C3: or1   c,$07E4,00
37C6: mov   x,#$D7
37C8: nop
37C9: or    a,#$93
37CB: mov   $0C+x,y
37CD: cmp   a,$EE
37CF: bpl   $37a7
37D1: eor   a,#$2C
37D3: or    a,$EAC0
37D6: or    a,$07E4
37D9: pop   y
37DA: bbc0  $2E,$37cf
37DD: clr6  $3C
37DF: mov   y,$0A
37E1: pop   y
37E2: or    a,$DE+x
37E4: mov   a,y
37E5: or    a,$F0+x
37E7: or    a,$F154
37EA: clr7  $D2
37EC: sbc   a,$E4+x
37EE: tcall 0
37EF: mov   y,$0A
37F1: pop   y
37F2: or    a,$F0+x
37F4: or    a,$F172
37F7: clr7  $D2
37F9: stop
37FA: not1  $0407,07
37FD: bbs0  $D7,$3800
3800: bbc0  $FF,$37f1
3803: clr0  $4D
3805: clr7  $D2
3807: stop
3808: not1  $040A,07
380B: tcall 0
380C: mov   ($00)+y,a
380E: bbc0  $FF,$37ff
3811: clr0  $89
3813: clr7  $EA
3815: bbs0  $E4,$381e
3818: mov   $1A30+y,a
381B: mov   y,$0C
381D: or    a,($F2)+y
381F: not1  $040A,07
3822: or    a,(x)
3823: mov   $1A30+y,a
3826: mov   y,$0A
3828: or    a,($F2)+y
382A: clr6  $A0
382C: not1  $0400,07
382F: set0  $D7
3831: nop
3832: bbs0  $7F,$3820
3835: asl   $10D6
3838: or    a,$D62A
383B: bpl   $3842
383D: cmp   a,$F2
383F: clr6  $B4
3841: not1  $0407,07
3844: bbs0  $D7,$3847
3847: bbs0  $7F,$3835
384A: asl   $10D6
384D: or    a,$D639
3850: bpl   $3857
3852: cmp   a,$F2
3854: clr6  $C8
3856: not1  $0407,07
3859: bbs0  $D7,$385c
385C: nop
385D: bbs3  $F0,$3866
3860: mov   $0203+y,a
3863: and   a,($F1)+y
3865: bbc6  $4C,$3868
3868: beq   $386f
386A: mov   $0203+y,a
386D: and   a,($F1)+y
386F: clr7  $D2
3871: cmp   x,#$EA
3873: or    a,(x)
3874: mov   a,$02
3876: beq   $387e
3878: asl   $F1CF
387B: bbc6  $4C,$387e
387E: beq   $3885
3880: asl   $F1CF
3883: clr7  $EA
3885: or1   c,$08E4,00
3888: mov   $74FF+y,a
388B: mov   ($00)+y,a
388D: nop
388E: stop
388F: addw  ya,$EE
3891: or    a,$F2B4+y
3894: clr6  $80
3896: not1  $0408,07
3899: bbs0  $D7,$389c
389C: or    a,$FF
389E: pop   y
389F: or    $14,#$D6
38A2: or    a,$53+x
38A4: clr7  $D2
38A6: setc
38A7: mov   a,$02
38A9: clrv
38AA: mov   ($00)+y,a
38AC: or    a,$FF
38AE: mov   a,($CC+x)
38B0: pop   y
38B1: or    $14,#$D6
38B4: eor   a,$80
38B6: clr7  $D2
38B8: setc
38B9: not1  $0408,07
38BC: bbs0  $D7,$38bf
38BF: or    a,$FF
38C1: pop   y
38C2: or    a,$D6+x
38C4: and   a,#$04
38C6: lsr   $F2
38C8: clr6  $80
38CA: mov   a,$02
38CC: clrv
38CD: mov   ($00)+y,a
38CF: or    a,$FF
38D1: mov   a,($CC+x)
38D3: pop   y
38D4: or    a,$D6+x
38D6: and   a,#$04
38D8: lsr   $F2
38DA: clr6  $80
38DC: not1  $0405,07
38DF: or    a,($65+x)
38E1: adc   a,(x)
38E2: bbs5  $F2,$38b7
38E5: setp
38E6: not1  $0405,07
38E9: or    a,($DE+x)
38EB: mov   a,y
38EC: cmp   x,$F20D
38EF: mov   a,$02
38F1: mov   $0C+y,x
38F3: and   a,$5B+x
38F5: mov   ($04)+y,a
38F7: rol   $EB93
38FA: or1   c,$10D6,01
38FD: asl   $D69D
3900: asl   a
3901: beq   $38f1
3903: bbc0  $BA,$38f8
3906: not1  $040A,07
3909: tcall 0
390A: clrv
390B: mov   $0C+y,x
390D: and   a,$5B+x
390F: mov   ($04)+y,a
3911: rol   $EB93
3914: or1   c,$10D6,01
3917: asl   $D69D
391A: asl   a
391B: beq   $390b
391D: bbc0  $BA,$3912
3920: not1  $0403,07
3923: or    a,($D6+x)
3925: or    a,$04+x
3927: mov   ($00)+y,a
3929: or    a,$71
392B: mov   y,$0C
392D: and   a,(x)
392E: mov   $FA60+y,a
3931: mov   ($00)+y,a
3933: or    a,($71+x)
3935: sbc   (x),(y)
3936: clr7  $EA
3938: or    a,$08E4
393B: mov   $0414+y,a
393E: mov   ($00)+y,a
3940: or    ($EB),($71)
3943: asl   $D626
3946: clrc
3947: mov   ($00),($D7)
394A: or    a,($71+x)
394C: sbc   (x),(y)
394D: clr7  $EA
394F: bbs0  $E4,$3962
3952: mov   $0428+y,a
3955: or    a,#$F2
3957: mov   a,$06
3959: mov   x,#$F0
395B: set0  $0C
395D: cmp   a,($F1+x)
395F: clr7  $D2
3961: cmp   $07,#$E4
3964: mov   x,#$F0
3966: set0  $0D
3968: mov   $150C+y,a
396B: or1   c,$12F1,07
396E: beq   $3973
3970: clr6  $50
3972: sleep
3973: cbne  $DD+x,$398f
3976: or1   c,$12DF,06
3979: ei
397A: not1  $0405,07
397D: or    a,($D6+x)
397F: tcall 1
3980: or1   c,!($14EE,00)
3983: or    ($F1),($C1)
3986: sbc   a,$E4F2+y
3989: or    a,($E0+x)
398B: beq   $3990
398D: clr6  $50
398F: sleep
3990: mov   $4104+y,a
3993: or1   c,$00D2,05
3996: not1  $1605,06
3999: tcall 1
399A: or1   c,!($14EE,00)
399D: bcc   $3960
399F: tcall 15
39A0: sbc   a,$D2F2+y
39A3: setc
39A4: mov   $8000+x,a
39A7: not1  $0403,07
39AA: or    a,($E9+x)
39AC: bbs0  $D0,$3986
39AF: nop
39B0: asl   $D6C5
39B3: mov   a,#$F4
39B5: mov   y,$06
39B7: pop   y
39B8: tcall 1
39B9: sbc   a,(x)
39BA: sbc   a,$F2+x
39BC: clr6  $80
39BE: mov   $8000+x,a
39C1: not1  $0403,07
39C4: or    a,($D7+x)
39C6: nop
39C7: asl   $D6C5
39CA: mov   a,#$F4
39CC: mov   y,$06
39CE: pop   y
39CF: tcall 1
39D0: sbc   a,(x)
39D1: sbc   a,$F2+x
39D3: mov   a,$05
39D5: mov   y,$0C
39D7: pop   y
39D8: or    $F2,#$06
39DB: mov   a,$0A
39DD: mov   y,$0A
39DF: pop   y
39E0: or    $18,#$D6
39E3: bmi   $3990
39E5: clr7  $E4
39E7: or    a,$0CEB
39EA: pop   y
39EB: or    $F2,#$06
39EE: mov   a,$0A
39F0: mov   y,$0A
39F2: pop   y
39F3: or    $18,#$D6
39F6: bmi   $39a3
39F8: clr7  $EA
39FA: bbs0  $DE,$39da
39FD: or    a,$3A+x
39FF: mov   a,y
3A00: decw  $0E
3A02: mov   a,y
3A03: bpl   $3a2d
3A05: mov   a,y
3A06: or    a,$14EE+y
3A09: clrp
3A0A: clr7  $D2
3A0C: cmp   x,#$E4
3A0E: set0  $37
3A10: bbc4  $E5,$3a01
3A13: or    a,$11+x
3A15: clr7  $E4
3A17: or    a,$0CEB
3A1A: pop   y
3A1B: or    $F2,#$06
3A1E: mov   a,$0A
3A20: mov   y,$0A
3A22: pop   y
3A23: or    $18,#$D6
3A26: bmi   $39d3
3A28: clr7  $D2
3A2A: cmp   x,#$EA
3A2C: or    a,#$E4
3A2E: decw  $EE
3A30: or    a,$94+x
3A32: mov   a,(x)
3A33: bcs   $3a27
3A35: clr6  $C8
3A37: not1  $0407,07
3A3A: or    (x),(y)
3A3B: mov   $0203+y,a
3A3E: tcall 11
3A3F: clr7  $D2
3A41: cmp   x,#$EA
3A43: or    a,#$E4
3A45: decw  $EE
3A47: or    a,$94+x
3A49: mov   a,(x)
3A4A: bcs   $3a3e
3A4C: clr6  $C8
3A4E: not1  $0407,07
3A51: or    (x),(y)
3A52: mov   $0203+y,a
3A55: tcall 11
3A56: clr7  $D2
3A58: cmp   x,#$EA
3A5A: or    a,($E4+x)
3A5C: set0  $EE
3A5E: or    a,($F0)+y
3A60: tcall 0
3A61: mov   $1004+y,a
3A64: asl   $65E5
3A67: mov   a,(x)
3A68: tcall 15
3A69: pop   y
3A6A: or    a,$D6+x
3A6C: asl   $1404
3A6F: clr7  $D2
3A71: cmp   x,#$EA
3A73: or    a,($E4+x)
3A75: bbs0  $EE,$3a8f
3A78: beq   $3a7b
3A7A: mov   $1004+y,a
3A7D: asl   $38E5
3A80: mov   a,(x)
3A81: tcall 15
3A82: pop   y
3A83: or    a,$D6+x
3A85: or    $23,#$03
3A88: clr7  $D2
3A8A: cmp   x,#$EA
3A8C: or    a,($E4+x)
3A8E: set0  $EE
3A90: or    a,($F0)+y
3A92: tcall 0
3A93: mov   $1004+y,a
3A96: asl   $65E5
3A99: mov   a,(x)
3A9A: tcall 15
3A9B: pop   y
3A9C: or    a,$D6+x
3A9E: asl   $1404
3AA1: clr7  $D2
3AA3: cmp   x,#$EA
3AA5: or    a,($E4+x)
3AA7: bbs0  $EE,$3ac1
3AAA: beq   $3aad
3AAC: mov   $1004+y,a
3AAF: asl   $38E5
3AB2: mov   a,(x)
3AB3: tcall 15
3AB4: pop   y
3AB5: or    a,$D6+x
3AB7: or    $23,#$03
3ABA: clr7  $D2
3ABC: setc
3ABD: mov   a,$02
3ABF: adc   a,(x)
3AC0: clr7  $E4
3AC2: or    a,$F23B
3AC5: not1  $040A,07
3AC8: or    a,#$D6
3ACA: and   a,#$6F
3ACC: mov   ($00)+y,a
3ACE: or    a,$C9
3AD0: tcall 5
3AD1: pop   y
3AD2: or    a,$B9+x
3AD4: clr7  $EA
3AD6: bbs0  $E4,$3add
3AD9: mov   x,$D604
3ADC: and   a,#$6F
3ADE: mov   ($00)+y,a
3AE0: or    a,$C9
3AE2: tcall 5
3AE3: pop   y
3AE4: or    a,$B9+x
3AE6: clr7  $E4
3AE8: set0  $DB
3AEA: bmi   $3b6b
3AEC: mov   $9890+y,a
3AEF: mov   y,$08
3AF1: cbne  $EE,$3b06
3AF4: sbc   (x),(y)
3AF5: clr7  $EA
3AF7: or    a,(x)
3AF8: mov   a,$03
3AFA: clrv
3AFB: mov   $30+x,y
3AFD: adc   a,$D6
3AFF: bcc   $3a99
3B01: mov   y,$08
3B03: cbne  $EE,$3b18
3B06: sbc   (x),(y)
3B07: clr7  $E4
3B09: or    a,$CF76
3B0C: adc   a,$F2+x
3B0E: not1  $0407,07
3B11: asl   $CF76
3B14: adc   a,$F2+x
3B16: mov   x,$E400
3B19: or    a,$D9
3B1B: tcall 0
3B1C: asl   $EEDD
3B1F: or    a,$10D6+y
3B22: rol   a
3B23: or    a,#$F2
3B25: not1  $040A,07
3B28: bbs0  $D7,$3b2b
3B2B: nop
3B2C: stop
3B2D: mov   $0390+y,a
3B30: push  x
3B31: inc   a
3B32: pop   y
3B33: bbc0  $BB,$3b28
3B36: not1  $040A,07
3B39: bbs0  $D7,$3b3c
3B3C: nop
3B3D: stop
3B3E: clrp
3B3F: inc   a
3B40: pop   y
3B41: or    a,$F2BB+x
3B44: mov   a,$03
3B46: mov   y,$0B
3B48: mov   $1060+y,a
3B4B: pop   a
3B4C: mov   a,$30D6
3B4F: mov   x,$44+y
3B51: mov   a,(x)
3B52: mov   $1460+y,a
3B55: pop   a
3B56: mov   $FD40+y,a
3B59: mov   a,$EE41
3B5C: or    a,$BB+x
3B5E: clr7  $EA
3B60: or1   c,$02E4,00
3B63: mov   y,$0B
3B65: mov   $1060+y,a
3B68: pop   a
3B69: mov   a,$30D6
3B6C: mov   x,$44+y
3B6E: mov   a,(x)
3B6F: mov   $1460+y,a
3B72: pop   a
3B73: mov   a,$40D6
3B76: mov   y,a
3B77: tcall 4
3B78: pop   y
3B79: or    a,$BB+x
3B7B: clr7  $D2
3B7D: stop
3B7E: not1  $0403,07
3B81: set0  $CB
3B83: bbc4  $CC,$3b37
3B86: clr7  $D2
3B88: stop
3B89: not1  $0403,07
3B8C: bbs0  $E0,$3b5a
3B8F: tcall 13
3B90: eor   a,#$CC
3B92: cmp   a,$E4F2+x
3B95: set0  $E4
3B97: set0  $CE
3B99: beq   $3ba8
3B9B: mov   a,#$05
3B9D: asl   $F1
3B9F: mov   $6430+y,a
3BA2: inc   a
3BA3: pop   y
3BA4: or    a,$F2B9+y
3BA7: mov   a,$01
3BA9: mov   $08+x,y
3BAB: ror   a
3BAC: mov   ($00)+y,a
3BAE: or    a,#$FF
3BB0: mov   $0418+y,a
3BB3: nop
3BB4: sbc   a,$14EE+x
3BB7: sbc   a,$E4F2+y
3BBA: bbs0  $E0,$3b98
3BBD: bmi   $3bfb
3BBF: mov   ($00)+y,a
3BC1: or    a,#$FF
3BC3: mov   $0418+y,a
3BC6: nop
3BC7: sbc   a,$14EE+x
3BCA: sbc   a,$D2F2+y
3BCD: cmp   x,#$EA
3BCF: or    a,$2CE4
3BD2: mov   ($00)+y,a
3BD4: or    a,$FF
3BD6: beq   $3bdc
3BD8: mov   $0418+y,a
3BDB: or    a,$EEF1
3BDE: or    a,$F2B9+x
3BE1: not1  $0405,07
3BE4: or    a,($CB+x)
3BE6: set7  $D7
3BE8: nop
3BE9: asl   $DB9D
3BEC: or    $F0,#$80
3BEF: tcall 0
3BF0: mov   $3400+y,a
3BF3: and   a,$13EE+x
3BF6: sbc   a,$F1EF+y
3BF9: clr7  $EA
3BFB: or    a,$08E4
3BFE: beq   $3c02
3C00: mov   $0A24+y,a
3C03: mov   ($00)+y,a
3C05: bbs0  $7F,$3c12
3C08: bne   $3bf3
3C0A: asl   a
3C0B: tcall 15
3C0C: clr7  $EA
3C0E: or    a,$09E4
3C11: beq   $3c15
3C13: mov   $0A24+y,a
3C16: mov   ($00)+y,a
3C18: bbs0  $7F,$3c24
3C1B: tcall 13
3C1C: tcall 15
3C1D: clr7  $D2
3C1F: and   a,#$EA
3C21: nop
3C22: cbne  $DD+x,$3c38
3C25: mov   y,$0C
3C27: tcall 0
3C28: pop   y
3C29: or    a,$F2BC+x
3C2C: mov   $8000+x,a
3C2F: not1  $0409,07
3C32: or    a,$D6
3C34: ror   a
3C35: beq   $3c22
3C37: asl   $EE97
3C3A: or    a,$F2BC+x
3C3D: clr6  $3C
3C3F: cbne  $DD+x,$3c5b
3C42: asl   $DD
3C44: bpl   $3c51
3C46: clr7  $D2
3C48: stop
3C49: not1  $0400,07
3C4C: bbs0  $E0,$3c26
3C4F: nop
3C50: nop
3C51: stop
3C52: mov   $1C14+y,a
3C55: asl   $D6
3C57: or    a,$1C+x
3C59: asl   $F2
3C5B: beq   $3c5e
3C5D: beq   $3c62
3C5F: not1  $0408,07
3C62: or    a,#$D7
3C64: nop
3C65: nop
3C66: tcall 15
3C67: asl   $EA+x
3C69: or    a,$07E4
3C6C: mov   $EE,x
3C6E: or    a,$F133+y
3C71: cmp   x,#$D2
3C73: dec   $04EA
3C76: mov   a,$04
3C78: mov   $EC60+y,a
3C7B: and   a,($EE)+y
3C7D: bbc0  $B8,$3c4d
3C80: tcall 15
3C81: clr7  $F0
3C83: tcall 0
3C84: beq   $3c89
3C86: cbne  $DD+x,$3ca6
3C89: tset1 $DFD1
3C8C: clr6  $A8
3C8E: not1  $0406,07
3C91: or    a,($EE+x)
3C93: or    a,$F133+y
3C96: cmp   x,#$D2
3C98: clrc
3C99: not1  $0404,07
3C9C: or    a,($D6+x)
3C9E: clrc
3C9F: mov   y,$EE73
3CA2: bbc0  $B8,$3c72
3CA5: tcall 15
3CA6: clr7  $DD
3CA8: bpl   $3c9c
3CAA: clr6  $A0
3CAC: not1  $0407,07
3CAF: bbs0  $1C,$3ca4
3CB2: clr6  $44
3CB4: mov   a,$09
3CB6: clrv
3CB7: mov   ($00)+y,a
3CB9: nop
3CBA: mov   $F20E,x
3CBD: mov   a,$04
3CBF: mov   ($00)+y,a
3CC1: nop
3CC2: lsr   a
3CC3: mov   y,$09
3CC5: pop   y
3CC6: clr0  $6A
3CC8: clr7  $E4
3CCA: or    a,$D7
3CCC: nop
3CCD: nop
3CCE: lsr   a
3CCF: mov   y,$09
3CD1: pop   y
3CD2: clr0  $6A
3CD4: clr7  $E4
3CD6: or    a,$E9
3CD8: or    a,$E0
3CDA: mov   y,$07
3CDC: mov   $0328+y,a
3CDF: cmp   y,$D2
3CE1: cmp   $05,#$EA
3CE4: mov   a,$07
3CE6: mov   x,$EE3A
3CE9: or    a,$69+x
3CEB: clr7  $E4
3CED: or    a,$EB
3CEF: or    a,($D6+x)
3CF1: and   a,#$03
3CF3: cmp   y,$D2
3CF5: cmp   $05,#$EA
3CF8: mov   a,$07
3CFA: mov   x,$EE34
3CFD: or    a,$69+x
3CFF: clr7  $EA
3D01: bbs0  $E4,$3d15
3D04: mov   ($00)+y,a
3D06: asl   $D6DD
3D09: or    $0A,#$0D
3D0C: mov   x,#$D2
3D0E: bmi   $3ce6
3D10: or    $0A,#$0D
3D13: mov   x,#$D2
3D15: asl   $18D6
3D18: push  psw
3D19: or1   c,$12CD,07
3D1C: not1  $0403,07
3D1F: tset1 $0CE9
3D22: clrv
3D23: mov   ($00)+y,a
3D25: asl   $D6DD
3D28: or    $0A,#$0D
3D2B: mov   x,#$D2
3D2D: bmi   $3d05
3D2F: or    $0A,#$0D
3D32: mov   x,#$D2
3D34: asl   $18D6
3D37: push  psw
3D38: or1   c,$12CD,07
3D3B: clr6  $3C
3D3D: not1  $0400,07
3D40: clrp
3D41: mov   $1C3C+y,a
3D44: tcall 7
3D45: mov1  $1CD6,01,c
3D48: asl   a
3D49: tcall 7
3D4A: mov   x,#$D6
3D4C: rol   a
3D4D: asl   a
3D4E: tcall 7
3D4F: mul   ya
3D50: mov   $1C3C+y,a
3D53: tcall 7
3D54: mul   ya
3D55: clr7  $D2
3D57: rol   a
3D58: not1  $0400,07
3D5B: clrp
3D5C: tcall 13
3D5D: clrv
3D5E: mov   $1C3C+y,a
3D61: tcall 7
3D62: mov1  $1CD6,01,c
3D65: asl   a
3D66: tcall 7
3D67: mov   x,#$D6
3D69: rol   a
3D6A: asl   a
3D6B: tcall 7
3D6C: mul   ya
3D6D: mov   $1C3C+y,a
3D70: tcall 7
3D71: mul   ya
3D72: clr7  $EA
3D74: bbs0  $E4,$3d7d
3D77: mov   ($00)+y,a
3D79: nop
3D7A: bbc6  $D6,$3dad
3D7D: clrc
3D7E: addw  ya,$EE
3D80: or    a,$BC+x
3D82: clr7  $EA
3D84: bbs0  $E4,$3d8d
3D87: mov   ($00)+y,a
3D89: nop
3D8A: bbc6  $E9,$3d91
3D8D: clrv
3D8E: mov   $6030+y,a
3D91: addw  ya,$EE
3D93: or    a,$BC+x
3D95: clr7  $E4
3D97: or    a,($F0+x)
3D99: set0  $B3
3D9B: mov1  $0AF1,07,c
3D9E: nop
3D9F: mov   a,$02
3DA1: cbne  $F0+x,$3da6
3DA4: mov   a,y
3DA5: or    a,$0A+x
3DA7: mov   a,y
3DA8: brk
3DA9: or1   c,$1DF1,06
3DAC: bpl   $3d9c
3DAE: or    a,$08+x
3DB0: clr7  $EA
3DB2: or    a,$06E4
3DB5: beq   $3db9
3DB7: bbc5  $CA,$3dab
3DBA: tcall 14
3DBB: not1  $0404,07
3DBE: set0  $F0
3DC0: set0  $46
3DC2: or1   c,$0EF1,07
3DC5: or    a,$08+x
3DC7: clr7  $EA
3DC9: or    a,(x)
3DCA: mov   a,$06
3DCC: mov   $0C60+y,a
3DCF: set1  $C0
3DD1: bbc6  $8C,$3dd4
3DD4: beq   $3dd6
3DD6: mov   $1402+y,a
3DD9: rol   $CE
3DDB: tcall 15
3DDC: clr7  $E4
3DDE: nop
3DDF: mov   $0C60+y,a
3DE2: set1  $C0
3DE4: not1  $0403,07
3DE7: or    a,$8CD3
3DEA: nop
3DEB: beq   $3ded
3DED: mov   $1402+y,a
3DF0: clr5  $CE
3DF2: tcall 15
3DF3: clr7  $E4
3DF5: or    a,($D6+x)
3DF7: or    $09,#$2C
3DFA: mov   a,$12
3DFC: pop   y
3DFD: or    a,$D6+x
3DFF: setp
3E00: bvc   $3e3e
3E02: clr7  $D6
3E04: or    $09,#$1E
3E07: cbne  $DD+x,$3e27
3E0A: pop   y
3E0B: or    a,$3C+x
3E0D: mov   a,y
3E0E: cmp   x,$D2F2
3E11: sbc   a,$E4+x
3E13: tcall 0
3E14: mov   x,$F004
3E17: tcall 0
3E18: mov   $6218+y,a
3E1B: mov   a,#$05
3E1D: or    ($F2),($F1)
3E20: clr6  $B4
3E22: mov   a,$02
3E24: beq   $3e27
3E26: mov   $5818+y,a
3E29: mov   a,#$05
3E2B: or    ($F2),($F1)
3E2E: mov   x,$EA00
3E31: or    ($04),($E4)
3E34: beq   $3e38
3E36: tset1 $3BD1
3E39: pop   x
3E3A: tcall 15
3E3B: rol   $D00E
3E3E: rol   $D0+x
3E40: rol   $D2F2
3E43: cmp   x,#$EA
3E45: or    a,($E4+x)
3E47: set0  $E9
3E49: bvc   $3e21
3E4B: bmi   $3e57
3E4D: mov   y,$09
3E4F: or    a,($C1+x)
3E51: sleep
3E52: pop   y
3E53: or    a,$A9+x
3E55: clr7  $D2
3E57: cmp   x,#$EA
3E59: or    a,($E4+x)
3E5B: set0  $E0
3E5D: mov   x,$D654
3E60: bmi   $3e6c
3E62: mov   y,$09
3E64: or    a,($C1+x)
3E66: sleep
3E67: pop   y
3E68: or    a,$A9+x
3E6A: clr7  $E4
3E6C: bbs0  $D6,$3e87
3E6F: or    a,$35
3E71: di
3E72: mov   a,$05
3E74: pop   y
3E75: or    $C0,#$37
3E78: clr6  $78
3E7A: not1  $0409,07
3E7D: or    a,$F0
3E7F: tcall 0
3E80: rol   $D00E
3E83: rol   $D0+x
3E85: rol   $F1CE
3E88: clr7  $E4
3E8A: bbs0  $D6,$3ea5
3E8D: or    a,$E9
3E8F: or    a,$35
3E91: di
3E92: mov   a,$05
3E94: pop   y
3E95: or    $C0,#$37
3E98: clr6  $78
3E9A: not1  $0409,07
3E9D: or    a,$E9
3E9F: nop
3EA0: beq   $3ea3
3EA2: rol   $D00E
3EA5: rol   $D0+x
3EA7: rol   $F1CE
3EAA: clr7  $EA
3EAC: bbs0  $E4,$3eb6
3EAF: mov   $0C0C+y,a
3EB2: or1   c,$0CD6,00
3EB5: eor   a,$0A+x
3EB7: pop   x
3EB8: mov   $6030+y,a
3EBB: and   a,$60D6+x
3EBE: call  $10EE
3EC1: clr1  $F2
3EC3: clr6  $B4
3EC5: not1  $0407,07
3EC8: or    a,$F239
3ECB: clr6  $DC
3ECD: not1  $0407,07
3ED0: bbs0  $CF,$3e66
3ED3: clr7  $EA
3ED5: or    a,$05E4
3ED8: mov   x,$D732
3EDB: nop
3EDC: asl   $D649
3EDF: clrc
3EE0: set0  $04
3EE2: pop   y
3EE3: or    a,$BC+x
3EE5: clr7  $EA
3EE7: or    a,$05E4
3EEA: mov   x,$D636
3EED: clrc
3EEE: set0  $04
3EF0: pop   y
3EF1: or    a,$BC+x
3EF3: clr7  $EA
3EF5: nop
3EF6: mov   a,$20
3EF8: mov   $1CC0+y,a
3EFB: push  y
3EFC: pop   y
3EFD: or    a,$BC+x
3EFF: clr7  $EA
3F01: nop
3F02: mov   a,$20
3F04: clrv
3F05: mov   x,$D604
3F08: di
3F09: asl   a
3F0A: push  y
3F0B: pop   y
3F0C: or    a,$BC+x
3F0E: clr7  $D2
3F10: stop
3F11: mov   a,$06
3F13: tcall 13
3F14: mov   y,$08
3F16: beq   $3f20
3F18: mov   $180C+y,a
3F1B: or1   c,!($11CF,07)
3F1E: clr7  $D2
3F20: stop
3F21: mov   a,$07
3F23: mov   y,$08
3F25: beq   $3f2f
3F27: mov   $280C+y,a
3F2A: or1   c,!($11CF,07)
3F2D: clr7  $EA
3F2F: or1   c,$03E4,00
3F32: beq   $3f36
3F34: eor   $B2,#$CF
3F37: mul   ya
3F38: tcall 15
3F39: mov   $58,y
3F3B: mul   ya
3F3C: clr5  $C8
3F3E: clr6  $DC
3F40: mov   a,$02
3F42: tcall 13
3F43: cmp   a,($68+x)
3F45: clr7  $EA
3F47: or    ($03),($E4)
3F4A: beq   $3f4e
3F4C: clrv
3F4D: mov   $0408+y,a
3F50: eor   $B2,#$CF
3F53: mul   ya
3F54: tcall 15
3F55: mov   $58,y
3F57: mul   ya
3F58: clr5  $C8
3F5A: clr6  $DC
3F5C: not1  $0403,07
3F5F: bbs0  $D1,$3f7e
3F62: asl   $F2+x
3F64: mov   a,$03
3F66: beq   $3f6b
3F68: mov   ($00)+y,a
3F6A: or    a,$E7
3F6C: not1  $1602,06
3F6F: or    a,#$04
3F71: push  psw
3F72: not1  $1009,06
3F75: mov   $1D08+y,a
3F78: tcall 11
3F79: mov   $F2F1,y
3F7C: not1  $040A,07
3F7F: or    a,$00D7
3F82: nop
3F83: mov   a,($D1+x)
3F85: beq   $3f8a
3F87: adc   a,$D6D0
3F8A: asl   $481C
3F8D: mov   $F2F1,y
3F90: not1  $0403,07
3F93: or    a,(x)
3F94: mov   ($24)+y,a
3F96: asl   $EBE7
3F99: or    a,$D6
3F9B: beq   $3fc1
3F9D: asl   $B9
3F9F: pop   y
3FA0: bpl   $3f58
3FA2: clr7  $EA
3FA4: bbs0  $E4,$3fad
3FA7: clrv
3FA8: mov   ($24)+y,a
3FAA: rol   a
3FAB: mov   a,($EB+x)
3FAD: or    a,$D6
3FAF: beq   $3fd5
3FB1: asl   $B9
3FB3: pop   y
3FB4: bpl   $3f6c
3FB6: clr7  $EA
3FB8: or1   c,$04E4,00
3FBB: mov   $1418+y,a
3FBE: asl   $D2CF
3FC1: cmp   x,#$EA
3FC3: or    a,#$E4
3FC5: or    a,($EB+x)
3FC7: or    a,($F0+x)
3FC9: tcall 0
3FCA: beq   $3fce
3FCC: pop   x
3FCD: mov   $0C04+y,a
3FD0: asl   $D6F1
3FD3: or    a,$0C
3FD5: asl   $F1CE
3FD8: mov1  $04D6,00,c
3FDB: asl   $D60C
3FDE: or    a,$0C
3FE0: asl   $DEF2
3FE3: mov   a,y
3FE4: asl   $0C+x
3FE6: mul   ya
3FE7: daa   a
3FE8: clr6  $C8
3FEA: mov   a,$0A
3FEC: mov   y,$08
3FEE: tcall 13
3FEF: beq   $3ff2
3FF1: beq   $3ff5
3FF3: pop   x
3FF4: mov   $0C04+y,a
3FF7: or1   c,!($16F1,06)
3FFA: or    a,$0C
3FFC: or1   c,!($11CE,07)
3FFF: mov1  $04D6,00,c
4002: asl   $D62A
4005: or    a,$0C
4007: or1   c,!($0AF2,07)
400A: bbs0  $E4,$4012
400D: bne   $3fe5
400F: bmi   $402d
4011: mov   y,$07
4013: bvc   $3fe2
4015: sleep
4016: clr6  $C8
4018: not1  $0405,07
401B: bbs0  $D6,$404e
401E: clr7  $4F
4020: mov   sp,x
4021: mul   ya
4022: clr6  $50
4024: not1  $0403,07
4027: or    a,(x)
4028: pop   y
4029: or    a,$F0+x
402B: set0  $D6
402D: clrc
402E: or    $F1,#$AC
4031: clr7  $EA
4033: bbs0  $E4,$403b
4036: bne   $400e
4038: bmi   $4056
403A: mov   x,$E004
403D: mov   y,$07
403F: bvc   $400e
4041: sleep
4042: clr6  $C8
4044: not1  $0405,07
4047: bbs0  $D6,$407a
404A: clr7  $6D
404C: mov   sp,x
404D: mul   ya
404E: clr6  $50
4050: not1  $0403,07
4053: or    a,(x)
4054: pop   y
4055: or    a,$F0+x
4057: set0  $D6
4059: clrc
405A: or    $F1,#$AC
405D: clr7  $E9
405F: or    a,$E4
4061: bbs0  $EB,$406c
4064: bne   $403c
4066: bmi   $4080
4068: or    a,($C1+x)
406A: not1  $0406,07
406D: or    a,($EE+x)
406F: or    a,$01F0+y
4072: mov   $080C+y,a
4075: bbc1  $E8,$4083
4078: tcall 15
4079: clr7  $D2
407B: dec   $03EA
407E: mov   a,$04
4080: set7  $D7
4082: nop
4083: asl   $EEB1
4086: bbc0  $D6,$40a1
4089: rol   $01+x
408B: clr7  $E9
408D: or    a,$EA
408F: tcall 0
4090: mov   a,$04
4092: mov   ($00)+y,a
4094: or    a,#$DD
4096: mov   $2418+y,a
4099: bbc4  $EE,$40b0
409C: inc   $E9F2
409F: or    a,$06EA
40A2: mov   a,$05
40A4: mov   ($00)+y,a
40A6: or    $01,#$C9
40A9: pop   x
40AA: pop   y
40AB: or    a,$D6+x
40AD: asl   $0718
40B0: mov   a,(x)
40B1: not1  $0205,05
40B4: pop   y
40B5: bbc0  $D6,$40c4
40B8: or    $F2,#$9A
40BB: not1  $040A,07
40BE: set0  $D6
40C0: cmp   a,#$06
40C2: mov   y,$0C
40C4: sbc   a,($EE+x)
40C6: or    a,$F2BD+y
40C9: clr6  $28
40CB: mov   a,$03
40CD: mov   y,$0C
40CF: sbc   a,($EE+x)
40D1: or    a,$F2BD+y
40D4: clr6  $A4
40D6: not1  $0407,07
40D9: bbs0  $E0,$40c7
40DC: or    ($EE),($0C)
40DF: or    a,$F240+x
40E2: clr6  $A4
40E4: not1  $0407,07
40E7: bbs0  $EB,$40f3
40EA: asl   $15EE
40ED: setp
40EE: clr7  $D0
40F0: not1  $0402,07
40F3: or1   c,$0CEB,00
40F6: pop   y
40F7: clr0  $D7
40F9: tcall 0
40FA: set0  $E7
40FC: mov   x,$D649
40FF: clrc
4100: sleep
4101: ret
4102: clr7  $E4
4104: tset1 $0AEB
4107: beq   $410e
4109: mov   $640C+y,a
410C: and   a,$F1C2+y
410F: clr7  $E4
4111: or    a,#$EB
4113: or1   c,$05F0,00
4116: mov   $390C+y,a
4119: or    ($F1),($C2)
411C: clr7  $E4
411E: bbs0  $E0,$410c
4121: or1   c,$18D6,00
4124: rol   a
4125: eor   a,($D6+x)
4127: or    $56,#$50
412A: clr7  $EA
412C: or    a,$02E4
412F: mov   x,$E004
4132: mov   y,$0A
4134: mov   $3C18+y,a
4137: eor   a,($D6+x)
4139: or    $56,#$50
413C: clr7  $D2
413E: cmp   $02,#$E4
4141: cmp   a,$F291
4144: clr6  $78
4146: not1  $0406,07
4149: bbs0  $E0,$4166
414C: or    (x),(y)
414D: clr7  $E9
414F: clrp
4150: not1  $0403,07
4153: asl   $D7
4155: nop
4156: or    a,#$C9
4158: bbc6  $64,$415b
415B: beq   $4169
415D: mov   $0214+y,a
4160: decw  $F1
4162: clr7  $E9
4164: or    a,(x)
4165: not1  $0406,07
4168: or    a,$00D7
416B: or    $01,#$C9
416E: pop   x
416F: pop   y
4170: or    a,$D6+x
4172: asl   $0718
4175: mov   a,$D6E5
4178: asl   $09C8
417B: mov   $D6,y
417D: asl   $45BC
4180: mov   x,#$EA
4182: or    a,$04E4
4185: set5  $EE
4187: bbc0  $D6,$4196
418A: or    $F2,#$9A
418D: mov   x,$E400
4190: bbs0  $E9,$419b
4193: mov   ($00)+y,a
4195: asl   $D6F1
4198: clrc
4199: bmi   $419d
419B: pop   y
419C: or    a,$BA+x
419E: sleep
419F: mov   a,$06
41A1: mov   $CF60+y,a
41A4: set0  $EE
41A6: or    a,$B9+x
41A8: clr7  $D0
41AA: mov   x,$D201
41AD: set4  $EA
41AF: or    a,$05E4
41B2: mov   a,#$04
41B4: mov   ($00)+y,a
41B6: or    a,#$C9
41B8: cmp   a,$29+x
41BA: cmp   a,$92+x
41BC: cmp   a,$92+x
41BE: mov   a,$12EE
41C1: clrp
41C2: clr7  $E4
41C4: tcall 0
41C5: mov   ($00)+y,a
41C7: set0  $BF
41C9: set7  $94
41CB: clr6  $FF
41CD: mov   y,$0A
41CF: mov   $30,#$D3
41D2: rol   a
41D3: sbc   (x),(y)
41D4: bbc6  $30,$4167
41D7: sbc   (x),(y)
41D8: pop   y
41D9: tset1 $F2B4
41DC: mov   a,$01
41DE: mov   ($00)+y,a
41E0: set0  $BF
41E2: set7  $E0
41E4: bne   $4178
41E6: clr6  $FF
41E8: mov   y,$0A
41EA: setc
41EB: bbc6  $30,$422a
41EE: sbc   (x),(y)
41EF: bbc6  $30,$4182
41F2: sbc   (x),(y)
41F3: pop   y
41F4: tset1 $F2B4
41F7: clr6  $A0
41F9: not1  $0405,07
41FC: or    a,($D7+x)
41FE: nop
41FF: asl   $F0A7
4202: tcall 0
4203: mov   $0840+y,a
4206: eor   a,(x)
4207: mov   $00+y,x
4209: or    a,#$9D
420B: pop   y
420C: or    a,$8E+x
420E: di
420F: movw  $EF,ya
4211: tcall 15
4212: clr7  $D2
4214: ei
4215: not1  $0405,07
4218: or    a,($D7+x)
421A: nop
421B: asl   $CDA7
421E: beq   $4221
4220: mov   $0940+y,a
4223: mov   x,$4604
4226: clrv
4227: mov   x,$D900
422A: nop
422B: or    a,#$9D
422D: pop   y
422E: or    a,$AC+x
4230: di
4231: movw  $E1,ya
4233: sleep
4234: tcall 15
4235: clr7  $E4
4237: set0  $D1
4239: beq   $423f
423B: or1   c,!($102A,06)
423E: tcall 15
423F: clr6  $B4
4241: pop   y
4242: or    $F2,#$80
4245: cbne  $EB+x,$4253
4248: beq   $424e
424A: mov   a,y
424B: or    a,$DD0C+y
424E: or    $D0,#$0C
4251: tcall 15
4252: clr6  $B4
4254: mov   a,y
4255: or    a,$EE+x
4257: or    $F2,#$80
425A: mov   a,$06
425C: mov   ($00)+y,a
425E: or    (x),(y)
425F: stop
4260: mov   $C0F0+y,a
4263: nop
4264: sbc   a,$11EE+x
4267: sbc   a,$E4F2+y
426A: or    a,(x)
426B: clrv
426C: mov   $44+x,y
426E: or    a,$D7+x
4270: nop
4271: or    (x),(y)
4272: stop
4273: mov   $B8F0+y,a
4276: sbc   a,$EEB5
4279: tcall 1
427A: sbc   a,$E4F2+y
427D: or    a,($EB+x)
427F: or1   c,$15EE,00
4282: beq   $428b
4284: mov   $B70A+y,a
4287: or    ($F2),($F1)
428A: mov   a,$01
428C: mov   y,$1A
428E: beq   $4297
4290: eor   a,#$D0
4292: mul   ya
4293: tcall 15
4294: clr7  $E4
4296: or    a,($EB+x)
4298: or1   c,$15EE,00
429B: beq   $42a8
429D: mov   $B70A+y,a
42A0: or    ($F2),($F1)
42A3: mov   a,$01
42A5: mov   y,$1A
42A7: beq   $42b4
42A9: eor   a,#$D0
42AB: mul   ya
42AC: tcall 15
42AD: clr7  $E4
42AF: or    a,($EB+x)
42B1: or1   c,$15EE,00
42B4: beq   $42ce
42B6: mov   $B70A+y,a
42B9: or    ($F2),($F1)
42BC: mov   a,$01
42BE: mov   y,$1A
42C0: beq   $42da
42C2: eor   a,#$D0
42C4: mul   ya
42C5: tcall 15
42C6: clr7  $E4
42C8: set0  $DB
42CA: asl   $D7C8
42CD: nop
42CE: nop
42CF: stop
42D0: lsr   $B8
42D2: pop   y
42D3: or    a,$F2B9+y
42D6: mov   a,$01
42D8: mov   $0C+x,y
42DA: cmp   x,#$D7
42DC: nop
42DD: and   a,#$FF
42DF: nop
42E0: sbc   $16,#$EE
42E3: sbc   (x),(y)
42E4: clr7  $CE
42E6: mov   x,$D202
42E9: ei
42EA: not1  $0405,07
42ED: or    a,($D7+x)
42EF: nop
42F0: or    a,$89
42F2: pop   y
42F3: tcall 1
42F4: beq   $42f7
42F6: bcc   $4288
42F8: mov   $0390+y,a
42FB: eor1  c,$11BE,07
42FE: inc   a
42FF: clr7  $EA
4301: set0  $E4
4303: or    a,($D9+x)
4305: nop
4306: or    $D6,#$89
4309: di
430A: set0  $4E
430C: pop   y
430D: or    a,$B9+x
430F: clr7  $EA
4311: tcall 0
4312: mov   a,$07
4314: mov   $00+y,x
4316: or    $4E,#$89
4319: pop   y
431A: or    a,$B9+x
431C: clr7  $EA
431E: or1   c,$11E4,00
4321: mov   ($00)+y,a
4323: asl   $EEE7
4326: or    a,$D6+x
4328: bmi   $4324
432A: or    a,($F0+x)
432C: tcall 0
432D: mov   $FA30+y,a
4330: or    ($C2),($C1)
4333: tcall 15
4334: mov   $FA30+y,a
4337: or    a,$EAF2
433A: or    ($0A),($E4)
433D: mov   ($00)+y,a
433F: asl   $E9E7
4342: bbs0  $E0,$4333
4345: or    a,$D6+x
4347: bmi   $4343
4349: or    a,($F0+x)
434B: tcall 0
434C: mov   $FA30+y,a
434F: or    ($C2),($C1)
4352: tcall 15
4353: mov   $FA30+y,a
4356: or    a,$D2F2
4359: cmp   x,#$E4
435B: nop
435C: mov   $30+x,y
435E: bvc   $4336
4360: or1   c,$1510,01
4363: pop   y
4364: or    a,$F2BB+x
4367: clr6  $C8
4369: mov   a,$00
436B: mov   $30+x,y
436D: bcs   $4345
436F: asl   $8F0C
4372: pop   y
4373: or    a,$F2BB+x
4376: not1  $0403,07
4379: or    a,$00D7
437C: nop
437D: tcall 15
437E: mov   x,$0D94
4381: mov   $22C0+y,a
4384: das   a
4385: mov   $B8A4+y,a
4388: pop   y
4389: or    a,$BC+x
438B: clr7  $EA
438D: bbs0  $E4,$4395
4390: mov   x,$E094
4393: mov   ($00)+y,a
4395: nop
4396: tcall 15
4397: push  psw
4398: mov   $22C0+y,a
439B: das   a
439C: mov   $B8A4+y,a
439F: pop   y
43A0: or    a,$BC+x
43A2: clr7  $D2
43A4: dec   $00E4
43A7: mov   $30+x,y
43A9: bvc   $439b
43AB: or1   c,$0AD6,00
43AE: bpl   $43e6
43B0: tcall 15
43B1: pop   y
43B2: or    a,$F2BB+x
43B5: clr6  $8C
43B7: mov   a,$00
43B9: mov   $30+x,y
43BB: bcs   $43ad
43BD: or1   c,$0CD6,00
43C0: asl   $F190
43C3: pop   y
43C4: or    a,$F2BB+x
43C7: mov   x,$D204
43CA: ei
43CB: not1  $0400,07
43CE: bbs0  $D7,$43d1
43D1: or    a,#$BF
43D3: mov   $1C30+y,a
43D6: asl   $06EB
43D9: mov   $C440+y,a
43DC: pop   y
43DD: or    a,$F26B+x
43E0: clr6  $A0
43E2: not1  $0405,07
43E5: or    a,(x)
43E6: mov   y,$08
43E8: mov   ($00)+y,a
43EA: asl   $D6B8
43ED: and   a,#$38
43EF: bvs   $43e3
43F1: clr6  $8C
43F3: not1  $0406,07
43F6: or    a,($D6+x)
43F8: or    a,#$05
43FA: eor   a,($D6)+y
43FC: asl   $EE05
43FF: or    a,$4F+x
4401: clr7  $D2
4403: dec   $06EA
4406: mov   a,$07
4408: clrv
4409: mov   x,$D60C
440C: or    a,#$05
440E: eor   a,($D6)+y
4410: asl   $EE05
4413: or    a,$4F+x
4415: clr7  $D2
4417: dec   $00EA
441A: mov   a,$15
441C: mov   ($00)+y,a
441E: nop
441F: mov   a,(x)+
4420: mov   $4810+y,a
4423: pop   y
4424: or    a,$05+x
4426: mov   ($00)+y,a
4428: or    a,$89
442A: clr6  $F0
442C: not1  $0405,07
442F: tcall 2
4430: cmp   a,$EE75+x
4433: or    a,$6C+x
4435: clr7  $D2
4437: dec   $00EA
443A: mov   a,$15
443C: mov   x,$D704
443F: nop
4440: nop
4441: mov   a,(x)+
4442: mov   $4810+y,a
4445: pop   y
4446: or    a,$05+x
4448: mov   ($00)+y,a
444A: or    a,$89
444C: clr6  $F0
444E: not1  $0405,07
4451: clr0  $75
4453: cmp   a,$14EE+x
4456: ror   $D1F2
4459: clr6  $8C
445B: not1  $0405,07
445E: or    a,($D7+x)
4460: nop
4461: or    a,$89
4463: beq   $4468
4465: beq   $4469
4467: cmp   a,$95F1
446A: sbc   a,$EE
446C: or    a,$F1AF+x
446F: sbc   (x),(y)
4470: clr7  $EA
4472: or    a,$DEE2
4475: beq   $4478
4477: mov   a,y
4478: clr0  $0C
447A: mov   a,y
447B: decw  $09
447D: mov   a,y
447E: brk
447F: or1   c,$1DF1,06
4482: bpl   $446f
4484: or    a,#$EE
4486: bpl   $4488
4488: clr7  $EA
448A: or    a,$E4
448C: set0  $E2
448E: beq   $4491
4490: asl   $0A09
4493: tcall 15
4494: mov   y,$08
4496: pop   y
4497: bpl   $4499
4499: clr7  $EA
449B: or    a,$E4
449D: set0  $E2
449F: beq   $44a3
44A1: asl   $0A09
44A4: tcall 15
44A5: mov   y,$08
44A7: pop   y
44A8: bpl   $44aa
44AA: clr7  $EA
44AC: or    a,$DEE2
44AF: beq   $44b3
44B1: mov   a,y
44B2: clr0  $0C
44B4: mov   a,y
44B5: decw  $09
44B7: mov   a,y
44B8: brk
44B9: or1   c,$1DF1,06
44BC: bpl   $44a9
44BE: or    a,#$EE
44C0: bpl   $44c2
44C2: clr7  $D2
44C4: ei
44C5: not1  $040A,07
44C8: rol   $D7
44CA: nop
44CB: or    a,$FF
44CD: beq   $44d4
44CF: mov   $2E14+y,a
44D2: asl   $CF
44D4: mov   $3214+y,a
44D7: eor   a,($CD)+y
44D9: tcall 15
44DA: clr7  $D2
44DC: ei
44DD: mov   a,$15
44DF: mov   ($00)+y,a
44E1: or    a,$FF
44E3: pop   x
44E4: beq   $44eb
44E6: mov   $3614+y,a
44E9: asl   $CF
44EB: mov   $3814+y,a
44EE: eor   a,($CD)+y
44F0: tcall 15
44F1: clr7  $DE
44F3: beq   $44f9
44F5: mov   a,y
44F6: bbc0  $EE,$450b
44F9: asl   $16DD
44FC: or    ($B7),($F1)
44FF: clr7  $D2
4501: ei
4502: mov   a,$03
4504: pop   y
4505: clr0  $D7
4507: nop
4508: or    a,$F4
450A: clrv
450B: beq   $4511
450D: and   (x),(y)
450E: or    ($B7),($F1)
4511: clr7  $D2
4513: stop
4514: not1  $0408,07
4517: or    a,($EB+x)
4519: or    a,($F0+x)
451B: tcall 0
451C: beq   $451f
451E: beq   $4522
4520: pop   x
4521: mov   $0C04+y,a
4524: asl   $D6F1
4527: or    a,$0C
4529: asl   $F1CE
452C: mov   $0C04+y,a
452F: asl   $F2F1
4532: clr6  $FF
4534: mov   a,$0A
4536: mov   y,$08
4538: tcall 13
4539: beq   $453c
453B: beq   $453e
453D: beq   $4541
453F: pop   x
4540: mov   $0C04+y,a
4543: or1   c,!($16F1,06)
4546: or    a,$0C
4548: or1   c,!($11CE,07)
454B: mov   $0C04+y,a
454E: or1   c,!($12F1,07)
4551: clr6  $A0
4553: mov   a,$06
4555: mov   $00+y,x
4557: or    a,$9D
4559: mov   $08EB,y
455C: pop   y
455D: clr0  $02
455F: clr7  $D2
4561: ei
4562: mov   a,$06
4564: clrv
4565: mov   $00+y,x
4567: or    a,$9D
4569: mov   $16EE,y
456C: beq   $4578
456E: push  psw
456F: tcall 15
4570: clr7  $EA
4572: or    a,#$E4
4574: bbs0  $F0,$4579
4577: beq   $4587
4579: mov   a,#$02
457B: tset1 $C9F1
457E: mov   a,($00+x)
4580: tcall 15
4581: clr7  $E4
4583: or    a,$F0
4585: set0  $F0
4587: tset1 $02E8
458A: tset1 $C9F1
458D: mov   a,($00+x)
458F: tcall 15
4590: clr7  $EA
4592: or    a,#$E4
4594: bbs0  $F0,$459a
4597: beq   $45a7
4599: mov   a,#$02
459B: tset1 $CEF1
459E: mov   a,($00+x)
45A0: tcall 15
45A1: clr7  $E4
45A3: or    a,$F0
45A5: bbs0  $F0,$45b6
45A8: mov   a,#$02
45AA: tset1 $CEF1
45AD: mov   a,($00+x)
45AF: tcall 15
45B0: clr7  $D2
45B2: sbc   a,#$E4
45B4: set0  $EE
45B6: or    $F2,#$80
45B9: clr6  $A8
45BB: mov   y,$0B
45BD: pop   y
45BE: or    $DD,#$DE
45C1: or    a,$80+x
45C3: mov   a,y
45C4: cmp   x,$D2F2
45C7: setc
45C8: mov   a,$05
45CA: beq   $45cf
45CC: mov   y,$08
45CE: pop   y
45CF: or    a,$60D6+y
45D2: dec   y
45D3: or    a,(x)
45D4: sleep
45D5: tcall 15
45D6: clr7  $D2
45D8: setc
45D9: not1  $0409,07
45DC: or    a,($D1+x)
45DE: beq   $45e3
45E0: mov   y,$08
45E2: pop   y
45E3: or    a,$60D6+y
45E6: dec   y
45E7: or    a,(x)
45E8: sleep
45E9: tcall 15
45EA: clr7  $D2
45EC: setc
45ED: mov   a,$05
45EF: beq   $45f3
45F1: mov   y,$08
45F3: pop   y
45F4: or    a,$60D6+y
45F7: dec   y
45F8: or    a,($EF+x)
45FA: tcall 15
45FB: clr7  $D2
45FD: setc
45FE: not1  $0409,07
4601: or    a,($D1+x)
4603: beq   $4607
4605: mov   y,$08
4607: pop   y
4608: or    a,$60D6+y
460B: dec   y
460C: or    a,($EF+x)
460E: tcall 15
460F: clr7  $E9
4611: or    a,$D0
4613: clr6  $82
4615: not1  $0405,07
4618: or    a,(x)
4619: mov   ($00)+y,a
461B: or    a,(x)
461C: adc   ($39),($2A)
461F: eor   a,#$57
4621: cmp   a,(x)
4622: cmp   a,$12EE+x
4625: sbc   a,($F2+x)
4627: bne   $4612
4629: tcall 0
462A: clr6  $82
462C: not1  $0405,07
462F: or    a,$06E8
4632: mov   ($00)+y,a
4634: asl   $A0C9
4637: pop   x
4638: tcall 10
4639: bbc4  $75,$4693
463C: pop   y
463D: clr0  $6B
463F: clr7  $EA
4641: bbs0  $E4,$464c
4644: mov   ($00)+y,a
4646: nop
4647: stop
4648: mov   $F018+y,a
464B: or    a,#$75
464D: mov   $0C0C+y,a
4650: ei
4651: clr7  $EA
4653: or    a,$07E4
4656: mov   $F018+y,a
4659: or    a,#$E6
465B: mov   $310C+y,a
465E: ei
465F: clr7  $E4
4661: or    a,$0EF0
4664: mov   $C818+y,a
4667: cmp   y,#$F1
4669: clr7  $D2
466B: ei
466C: not1  $0403,07
466F: or    a,$F0CF
4672: or    a,$18D6+x
4675: cmp   x,#$09
4677: tcall 15
4678: clr7  $D2
467A: cmp   $04,#$E4
467D: mov   y,$02
467F: nop
4680: movw  ya,$EE
4682: bbc0  $B8,$4677
4685: clr6  $78
4687: mov   a,$04
4689: mov   y,$02
468B: clrv
468C: nop
468D: movw  ya,$EE
468F: bbc0  $B8,$4684
4692: mov   x,$CD04
4695: clr6  $A0
4697: not1  $0405,07
469A: or    a,(x)
469B: bbc6  $78,$469e
469E: beq   $46a9
46A0: eor   a,#$93
46A2: tcall 15
46A3: clr7  $E9
46A5: or    a,$CF
46A7: clr6  $8C
46A9: not1  $0403,07
46AC: or    a,($EB+x)
46AE: asl   $80D3
46B1: nop
46B2: beq   $46b7
46B4: eor   a,#$57
46B6: cmp   a,$CF93+x
46B9: tcall 15
46BA: clr7  $E4
46BC: set0  $DB
46BE: or    $A6,#$64
46C1: pop   y
46C2: or    a,$F2B9+y
46C5: mov   a,$03
46C7: mov   $18+x,y
46C9: adc   a,$EE3D+y
46CC: or    a,$F2B9+y
46CF: not1  $0403,07
46D2: or1   c,$0AEB,00
46D5: set7  $D7
46D7: asl   $F603
46DA: mov   $F030+y,a
46DD: eor   a,$E4
46DF: or    a,$48D6
46E2: bbs1  $32,$46bb
46E5: rol   $EEDC
46E8: or    a,$B8+x
46EA: clr7  $EA
46EC: bbs0  $E4,$46f9
46EF: mov   y,$0A
46F1: set7  $E0
46F3: tcall 13
46F4: mov   ($10)+y,a
46F6: tcall 0
46F7: stop
46F8: mov   $F030+y,a
46FB: eor   a,$E4
46FD: or    a,$48D6
4700: and   a,$32
4702: mov   $DC2C+y,a
4705: pop   y
4706: or    a,$B8+x
4708: clr7  $D2
470A: cmp   $07,#$E4
470D: mov   y,$06
470F: cmp   y,$D7
4711: nop
4712: tcall 0
4713: stop
4714: mov   $00+y,x
4716: set0  $DD
4718: mov   $08+x,y
471A: clr1  $EB
471C: or    a,#$EE
471E: or    a,$7C+x
4720: clr7  $D2
4722: cmp   $DD,#$DE
4725: jmp   ($06EB+x)
4728: set2  $DB
472A: or    $D9,#$C8
472D: nop
472E: or    a,(x)
472F: mov   $EB+y,x
4731: or    a,#$EE
4733: or    a,$40+x
4735: clr7  $D2
4737: sbc   a,#$EA
4739: or    a,$06E4
473C: mov   a,($03+x)
473E: mov   ($00)+y,a
4740: asl   $6689
4743: cmp   a,$A293+x
4746: mov   $2408+y,a
4749: pop   y
474A: clr0  $A7
474C: clr7  $D2
474E: sbc   a,#$EA
4750: or    a,$07E4
4753: mov   ($00)+y,a
4755: asl   $6689
4758: cmp   a,$9384+x
475B: pop   y
475C: clr0  $98
475E: clr7  $D2
4760: dec   $00EA
4763: mov   a,$06
4765: mov   ($00)+y,a
4767: or    a,$89
4769: pop   y
476A: or    a,$F232+y
476D: clr6  $8C
476F: not1  $0401,07
4772: or    a,(x)
4773: clrv
4774: mov   ($00)+y,a
4776: or    a,$89
4778: mov   x,$EE98
477B: or    a,$F250+y
477E: clr6  $B4
4780: not1  $0403,07
4783: or    a,$CCE9
4786: mul   ya
4787: mov   ($00)+y,a
4789: nop
478A: mov   y,$EB+x
478C: or    a,#$45
478E: mov   $0528+y,a
4791: eor   a,$EE
4793: clr0  $D6
4795: and   a,#$FD
4797: sbc   a,$D2F2+y
479A: sbc   a,$EA+x
479C: bbs0  $E4,$47a4
479F: mov   x,$E0CC
47A2: mov   ($00)+y,a
47A4: nop
47A5: tcall 15
47A6: mov   y,$08
47A8: eor   a,$28D6
47AB: or    a,$EE44
47AE: clr0  $D6
47B0: and   a,#$FD
47B2: sbc   a,$D2F2+y
47B5: cmp   $05,#$EA
47B8: mov   a,$05
47BA: beq   $47f8
47BC: mov   $3010+y,a
47BF: asl   $0CD6
47C2: cmp   x,#$94
47C4: pop   x
47C5: tcall 15
47C6: bbc6  $FF,$47c9
47C9: beq   $47d8
47CB: mov   $3010+y,a
47CE: asl   $0CD6
47D1: cmp   x,#$94
47D3: pop   x
47D4: tcall 15
47D5: clr7  $D2
47D7: cmp   $06,#$EA
47DA: mul   ya
47DB: beq   $4819
47DD: mov   a,$04
47DF: mov   $3010+y,a
47E2: adc   a,$E5
47E4: mov   $C80C+y,a
47E7: eor   $F1,#$CE
47EA: bbc6  $FF,$47ed
47ED: beq   $47fc
47EF: mov   a,$04
47F1: mov   $3010+y,a
47F4: adc   a,$E5
47F6: mov   $C80C+y,a
47F9: eor   $F1,#$CE
47FC: clr7  $FF
47FE: stop
47FF: stop
4800: set0  $00
4802: nop
4803: nop
4804: nop
4805: nop
4806: nop
4807: nop
4808: nop
4809: eor1  c,$0434,02
480C: eor   a,$54
480E: bbc1  $54,$4855
4811: bbs2  $96,$4890
4814: mov   $CCCC,y
4817: mov   $CCCC,y
481A: mov   $DC8B,y
481D: mov   $CC,y
481F: dec   y
4820: mov   $CCCC,y
4823: mov   x,#$02
4825: nop
4826: nop
4827: nop
4828: nop
4829: nop
482A: nop
482B: nop
482C: nop
482D: adc   a,$CC6C+y
4830: mov   $CCCC,y
4833: mov   $CCCC,y
4836: eor1  c,$0BDC,06
4839: mov   x,#$CC
483B: mov   $CCCC,y
483E: dec   y
483F: dec   $CC
4841: mov   $CCCC,y
4844: mov   x,#$CC
4846: mov   $02CC,y
4849: nop
484A: nop
484B: nop
484C: nop
484D: nop
484E: nop
484F: nop
4850: nop
4851: eor1  c,$0CEB,06
4854: inc   a
4855: mov   x,#$CC
4857: mov   $DCCC,y
485A: eor1  c,$0DCB,06
485D: mov   $BCCD,y
4860: mov   x,#$CC
4862: mov   $CC8B,y
4865: mov   $CCCD,y
4868: mov   $CCCC,y
486B: mov   x,#$02
486D: nop
486E: nop
486F: nop
4870: nop
4871: nop
4872: nop
4873: nop
4874: nop
4875: addw  ya,$53
4877: clr1  $22
4879: eor   a,$44
487B: set2  $01
487D: bpl   $48f9
487F: tcall 0
4880: jmp   ($DDEC+x)
4883: mov   a,y
4884: mov   a,y
4885: mov   y,$7ABC
4888: mov   $DDEE,y
488B: notc
488C: mov   a,y
488D: beq   $488f
488F: tcall 1
4890: addw  ya,$3F
4892: tcall 0
4893: bbs1  $23,$48c8
4896: tcall 1
4897: set1  $24
4899: addw  ya,$44
489B: clr1  $22
489D: eor   a,$44
489F: set2  $01
48A1: bpl   $491e
48A3: set0  $0E
48A5: pop   y
48A6: mov   $DDDF,y
48A9: dec   y
48AA: inc   a
48AB: set0  $00
48AD: nop
48AE: nop
48AF: nop
48B0: nop
48B1: nop
48B2: nop
48B3: nop
48B4: movw  ya,$E0
48B6: tcall 2
48B7: mov   y,a
48B8: daa   a
48B9: and   a,$2F
48BB: bne   $48e0
48BD: movw  ya,$E2
48BF: mov   y,$20F1
48C2: dbnz  y,$48c6
48C4: set2  $0D
48C6: movw  ya,$E0
48C8: tcall 2
48C9: mov   y,a
48CA: daa   a
48CB: and   a,$2F
48CD: bne   $48f2
48CF: inc   $E2+x
48D1: mov   y,$20F1
48D4: dbnz  y,$48d8
48D6: set2  $0D
48D8: set0  $00
48DA: nop
48DB: nop
48DC: nop
48DD: nop
48DE: nop
48DF: nop
48E0: nop
48E1: adc   a,($6C)+y
48E3: mov   $CCCC,y
48E6: mov   $CCCC,y
48E9: mov   $0002,y
48EC: nop
48ED: nop
48EE: nop
48EF: nop
48F0: nop
48F1: nop
48F2: nop
48F3: dec   $EB
48F5: mov   $CDBC,y
48F8: mov   $CCCC,y
48FB: dec   y
48FC: set0  $00
48FE: nop
48FF: nop
4900: nop
4901: nop
4902: nop
4903: nop
4904: nop
4905: mov1  c,$012E,01
4908: tcall 13
4909: bra   $4919
490B: bbc7  $42,$48ba
490E: mov1  c,$0240,00
4911: cmp   x,$65DF
4914: stop
4915: beq   $4914
4917: subw  ya,$47
4919: div   ya,x
491A: bpl   $496f
491C: mov   y,a
491D: and   a,$EE+x
491F: bbc7  $AA,$4912
4922: cbne  $E4,$4911
4925: set1  $EF
4927: set0  $3D
4929: adc   a,$BABE+y
492C: movw  $B0,ya
492E: clrp
492F: daa   a
4930: bbs3  $CE,$48dd
4933: clr1  $ED
4935: or    a,$2F
4937: mov   sp,x
4938: bbc2  $DE,$491d
493B: sbc   a,(x)
493C: bbc1  $ED,$490d
493F: bra   $4921
4941: cbne  $12+x,$4944
4944: mov1  c,$171C,06
4947: decw  $B2
4949: bbs3  $DE,$493b
494C: ret
494D: sbc   a,(x)
494E: tcall 13
494F: call  $10DF
4952: cbne  $45+x,$4968
4955: clr2  $AA
4957: nop
4958: bbs1  $B0,$4977
495B: bbc1  $C4,$49aa
495E: nop
495F: sbc   a,(x)
4960: bbc7  $DB,$4971
4963: beq   $4967
4965: mov   y,$E2
4967: pcall $AA
4969: tcall 9
496A: tcall 2
496B: cbne  $14,$493a
496E: jmp   ($D631+x)
4971: mov1  c,$123D,05
4974: rol   a
4975: clr7  $11
4977: set7  $3D
4979: or    a,$B6+x
497B: tset1 $3104
497E: brk
497F: nop
4980: tcall 15
4981: mov   y,$A602
4984: beq   $49ba
4986: decw  $D0
4988: inc   $10
498A: mov   a,y
498B: mov   x,#$B6
498D: tcall 1
498E: stop
498F: nop
4990: tcall 1
4991: tcall 0
4992: sleep
4993: clr2  $F0
4995: mov1  c,$10F2,02
4998: mov   ($FA),($15)
499B: mov   a,$D250+x
499E: movw  ya,$1E
49A0: set0  $0F
49A2: sleep
49A3: clr0  $1C
49A5: mov   $10+x,a
49A7: sbc   a,(x)
49A8: tcall 2
49A9: beq   $49aa
49AB: bbs2  $FF,$498e
49AE: eor   a,$AA51
49B1: and   a,$DC
49B3: or    a,$1F+x
49B5: tcall 2
49B6: tcall 13
49B7: lsr   a
49B8: mov   $2CAA+y,a
49BB: bpl   $49cd
49BD: bbs7  $DD,$4a12
49C0: cmp   x,$EF
49C2: mov1  c,$1CE3,05
49C5: jmp   $FFE2
49C8: tcall 1
49C9: notc
49CA: bbs1  $B6,$49cf
49CD: bvc   $49b2
49CF: call  $0FDE
49D2: daa   a
49D3: clr0  $AA
49D5: bcs   $4a13
49D7: bbc0  $01,$49dc
49DA: sbc   (x),(y)
49DB: cmp   a,$B6CA+x
49DE: tcall 13
49DF: dec   x
49E0: tcall 0
49E1: sleep
49E2: brk
49E3: beq   $49d5
49E5: tcall 2
49E6: sbc   a,(x)
49E7: sleep
49E8: clrp
49E9: mov   x,#$E1
49EB: clrp
49EC: cmp   a,$F2
49EE: and   a,$A6+x
49F0: asl   $15
49F2: asl   $B2+x
49F4: bbs3  $CE,$4a3b
49F7: mov   x,$BA+y
49F9: bbc1  $E0,$4a2a
49FC: set0  $ED
49FE: bbs0  $30,$49d0
4A01: mov1  c,$1E13,00
4A04: clr0  $D0
4A06: tcall 5
4A07: tcall 11
4A08: bra   $4a49
4A0A: movw  ya,$D0
4A0C: set0  $3D
4A0E: bbs6  $41,$4a10
4A11: nop
4A12: mov   y,a
4A13: movw  ya,$23
4A15: mov   y,a
4A16: bbc1  $EE,$4a1a
4A19: push  psw
4A1A: mov   a,$0E+x
4A1C: sbc   a,(x)
4A1D: pop   y
4A1E: bbs1  $ED,$49fe
4A21: or    a,$EF2C
4A24: clr7  $A6
4A26: bbc2  $DC,$4a1b
4A29: bbs2  $0F,$4a31
4A2C: clrc
4A2D: or    a,$AA
4A2F: beq   $4a2f
4A31: set2  $B0
4A33: bmi   $4a14
4A35: tcall 1
4A36: mov   a,$B6
4A38: inc   y
4A39: or    a,$1E+x
4A3B: mov   a,$50
4A3D: tcall 1
4A3E: or    a,$31+x
4A40: movw  ya,$FF
4A42: tcall 4
4A43: beq   $4a13
4A45: tcall 5
4A46: clrv
4A47: bbs0  $1F,$4a04
4A4A: call  $12D0
4A4D: mov   a,y
4A4E: clrp
4A4F: tcall 3
4A50: mov   x,#$14
4A52: sbc   a,(x)
4A53: tcall 5
4A54: mov   y,$03+x
4A56: and   a,$FF
4A58: clr2  $F0
4A5A: tset1 $F696
4A5D: ret
4A5E: cmp   y,#$47
4A60: tcall 2
4A61: asl   a
4A62: div   ya,x
4A63: jmp   $A0AA
4A66: bbc1  $EC,$4a79
4A69: bbc1  $DF,$4a78
4A6C: clr6  $BA
4A6E: cbne  $D2,$4a81
4A71: bpl   $4a43
4A73: bpl   $4a86
4A75: dec   y
4A76: sbc   a,$1EF4+y
4A79: set0  $0F
4A7B: bbs0  $31,$4a6c
4A7E: beq   $4a2a
4A80: tcall 3
4A81: bne   $4a9f
4A83: or    a,$0B
4A85: mov   a,$D14D+x
4A88: sbc   a,(x)
4A89: and   a,$33+x
4A8B: set2  $05
4A8D: jmp   $EECD
4A90: mov   $BA,y
4A92: tcall 1
4A93: beq   $4aa4
4A95: jmp   ($0C04+x)
4A98: bbc7  $1E,$4a45
4A9B: push  psw
4A9C: set0  $02
4A9E: mov   y,$F3+x
4AA0: bmi   $4ac4
4AA2: inc   $A6+x
4AA4: daa   a
4AA5: bbs0  $2D,$4a87
4AA8: bbs0  $41,$4ace
4AAB: tset1 $0D96
4AAE: tcall 14
4AAF: pop   x
4AB0: clrc
4AB1: or    a,$EF+x
4AB3: and   a,$A640
4AB6: tset1 $54E1
4AB9: mov1  $10E2,01,c
4ABC: and   a,$A63F
4ABF: clrv
4AC0: bmi   $4a92
4AC2: tcall 0
4AC3: tcall 4
4AC4: or    a,$30+x
4AC6: set7  $BA
4AC8: call  $43CE
4ACB: push  psw
4ACC: tcall 13
4ACD: jmp   ($FF13+x)
4AD0: mov1  c,$02F2,03
4AD3: mov   $DE+x,y
4AD5: set7  $20
4AD7: mov   a,$5B
4AD9: sbc   a,(x)
4ADA: mov   sp,x
4ADB: beq   $4b10
4ADD: jmp   ($2F14+x)
4AE0: tset1 $AADF
4AE3: nop
4AE4: pop   y
4AE5: bbc1  $FF,$4ae5
4AE8: or    a,$CD20
4AEB: adc   a,$F0E2+y
4AEE: tcall 3
4AEF: notc
4AF0: mov   a,($6C)+y
4AF2: mov   a,$04+x
4AF4: sbc   a,$02FC+y
4AF7: mov   y,a
4AF8: clr7  $20
4AFA: stop
4AFB: brk
4AFC: clrv
4AFD: sbc   a,(x)
4AFE: bpl   $4abc
4B00: sleep
4B01: tcall 1
4B02: cbne  $00+x,$4b14
4B05: tcall 12
4B06: mov1  c,$053C,07
4B09: call  $30EF
4B0C: bne   $4b50
4B0E: clrv
4B0F: subw  ya,$BE
4B11: cmp   y,$43F5
4B14: movw  ya,$34
4B16: push  psw
4B17: stop
4B18: sbc   a,(x)
4B19: clrv
4B1A: push  psw
4B1B: bne   $4b1d
4B1D: mov   x,#$33
4B1F: bbs2  $CD,$4adc
4B22: clrp
4B23: brk
4B24: tcall 15
4B25: beq   $4b37
4B27: tcall 15
4B28: tcall 15
4B29: setp
4B2A: sbc   a,(x)
4B2B: setp
4B2C: tcall 13
4B2D: cmp   y,$11AD
4B30: mov1  $10E2,01,c
4B33: mov1  c,$1F15,07
4B36: tset1 $21F2
4B39: mov   a,y
4B3A: tcall 15
4B3B: clr0  $AA
4B3D: cbne  $11,$4b21
4B40: jmp   ($F31D+x)
4B43: tcall 5
4B44: inc   $40AB
4B47: clr0  $0E
4B49: bne   $4baf
4B4B: clrv
4B4C: nop
4B4D: notc
4B4E: set0  $00
4B50: nop
4B51: nop
4B52: nop
4B53: nop
4B54: nop
4B55: nop
4B56: nop
4B57: subw  ya,$10
4B59: bpl   $4b6c
4B5B: bpl   $4b5c
4B5D: jmp   ($43F0+x)
4B60: eor1  c,$020D,07
4B63: bbc0  $41,$4b43
4B66: tcall 0
4B67: dbnz  y,$4b8e
4B69: eor1  c,$0E52,00
4B6C: bne   $4b8f
4B6E: beq   $4b8e
4B70: bne   $4ba6
4B72: eor1  c,$0232,01
4B75: jmp   ($04ED+x)
4B78: tcall 3
4B79: and   a,$7A30
4B7C: set6  $54
4B7E: inc   y
4B7F: clr7  $10
4B81: and   a,$CF5F+x
4B84: addw  ya,$2F
4B86: pop   x
4B87: and   a,$1D32+y
4B8A: inc   $F0
4B8C: bbs0  $8A,$4bb0
4B8F: mov   y,$43E1
4B92: tset1 $EFEE
4B95: or    a,$8A+x
4B97: tcall 4
4B98: pop   y
4B99: clrv
4B9A: nop
4B9B: stop
4B9C: sleep
4B9D: stop
4B9E: set0  $8A
4BA0: push  psw
4BA1: bne   $4bc3
4BA3: mov   a,y
4BA4: pop   y
4BA5: pop   y
4BA6: nop
4BA7: beq   $4b33
4BA9: tcall 1
4BAA: jmp   ($CDCB+x)
4BAD: tcall 0
4BAE: tcall 2
4BAF: bpl   $4b9e
4BB1: addw  ya,$BF
4BB3: bbs1  $1F,$4b92
4BB6: bbs7  $31,$4b98
4BB9: eor   a,$FD9A+y
4BBC: tcall 13
4BBD: bbs2  $FE,$4bc1
4BC0: brk
4BC1: clr7  $21
4BC3: subw  ya,$FE
4BC5: tcall 14
4BC6: tcall 3
4BC7: mov   $42F3,y
4BCA: tset1 $7AEE
4BCD: mov   a,$4F
4BCF: cmp   y,#$34
4BD1: mov   y,$C1+x
4BD3: bbc1  $21,$4b60
4BD6: bpl   $4bc6
4BD8: bbs1  $20,$4bcb
4BDB: and   a,$2F
4BDD: daa   a
4BDE: eor1  c,$1123,00
4BE1: set1  $FE
4BE3: or    a,$42+x
4BE5: tcall 0
4BE6: tcall 2
4BE7: addw  ya,$D0
4BE9: eor   a,($3C)+y
4BEB: clr5  $73
4BED: inc   y
4BEE: clrv
4BEF: sleep
4BF0: eor1  c,$0012,00
4BF3: and   a,$2E
4BF5: cbne  $23+x,$4c16
4BF8: sleep
4BF9: eor1  c,$0001,00
4BFC: nop
4BFD: beq   $4c0f
4BFF: notc
4C00: or    a,$8650+x
4C03: bbs2  $44,$4c34
4C06: pop   x
4C07: and   a,$1031+x
4C0A: mov   $8A+x,y
4C0C: bbc0  $11,$4c42
4C0F: mov   y,$30E2
4C12: daa   a
4C13: clr0  $8A
4C15: jmp   ($01DD+x)
4C18: tcall 1
4C19: tset1 $E1DD
4C1C: eor   a,$7A
4C1E: asl   $9B+x
4C20: tcall 14
4C21: bra   $4c01
4C23: and   a,$C14E+y
4C26: eor1  c,$0F34,01
4C29: sleep
4C2A: beq   $4c3f
4C2C: jmp   ($22E1+x)
4C2F: eor1  c,$1300,00
4C32: jmp   ($F0DD+x)
4C35: bbc0  $42,$4c35
4C38: eor1  c,$0FE1,00
4C3B: tcall 14
4C3C: cmp   x,$14AD
4C3F: cmp   x,$8ACE
4C42: clr0  $EB
4C44: tcall 13
4C45: tcall 2
4C46: brk
4C47: inc   y
4C48: mul   ya
4C49: clr1  $8A
4C4B: jmp   ($CEDB+x)
4C4E: nop
4C4F: dbnz  y,$4c41
4C51: tcall 1
4C52: cmp   x,$BB8A
4C55: tcall 14
4C56: clrp
4C57: mov   y,$0EE1
4C5A: clrv
4C5B: tset1 $DD8A
4C5E: mov   y,$21C0
4C61: beq   $4c74
4C63: tcall 0
4C64: tset1 $DE8A
4C67: bbc7  $FE,$4c6e
4C6A: call  $1FF0
4C6D: beq   $4c09
4C6F: tcall 0
4C70: bpl   $4c74
4C72: jmp   ($1FF0+x)
4C75: beq   $4cba
4C77: dec   $FC
4C79: clr7  $23
4C7B: tcall 3
4C7C: cbne  $F1+x,$4c7e
4C7F: or    a,$0002+x
4C82: nop
4C83: nop
4C84: nop
4C85: nop
4C86: nop
4C87: nop
4C88: nop
4C89: sbc   a,$10BC+y
4C8C: clr5  $60
4C8E: daa   a
4C8F: set1  $1F
4C91: cmp   x,$C0C6
4C94: tcall 2
4C95: brk
4C96: bbc1  $EC,$4c8c
4C99: jmp   ($B60E+x)
4C9C: mov   a,$FE+x
4C9E: cmp   a,$31AA+x
4CA1: das   a
4CA2: set2  $D1
4CA4: set6  $44
4CA6: dec   y
4CA7: clrp
4CA8: tcall 12
4CA9: bbc2  $ED,$4caa
4CAC: or    a,($C2)+y
4CAE: clrc
4CAF: cbne  $EE+x,$4c92
4CB2: tcall 3
4CB3: sleep
4CB4: mov   y,a
4CB5: mov   a,$C2+x
4CB7: inc   x
4CB8: di
4CB9: jmp   ($41F2+x)
4CBC: pop   x
4CBD: tset1 $B204
4CC0: lsr   $BF
4CC2: tcall 0
4CC3: tcall 4
4CC4: bbs7  $3B,$4c78
4CC7: bmi   $4c8b
4CC9: nop
4CCA: stop
4CCB: bbc0  $2E,$4c9f
4CCE: call  $30E3
4CD1: clr5  $EE
4CD3: tcall 15
4CD4: asl   $C7+x
4CD6: reti
4CD7: mov   a,y
4CD8: or    a,$1C
4CDA: mov   (x),a
4CDB: bbs1  $EB,$4cd3
4CDE: inc   x
4CDF: tcall 14
4CE0: bra   $4cb3
4CE2: bra   $4caa
4CE4: tcall 0
4CE5: brk
4CE6: tcall 15
4CE7: clrp
4CE8: tcall 14
4CE9: push  a
4CEA: di
4CEB: clr1  $C2
4CED: set0  $41
4CEF: dec   y
4CF0: bbc7  $42,$4d02
4CF3: mov   a,y
4CF4: or    a,$C2+x
4CF6: jmp   ($FC34+x)
4CF9: tcall 14
4CFA: bpl   $4d0b
4CFC: pop   y
4CFD: tcall 15
4CFE: mov   (x),a
4CFF: clrp
4D00: dbnz  y,$4ce3
4D02: brk
4D03: bbc1  $EE,$4d06
4D06: and   a,$C2
4D08: bvc   $4ce7
4D0A: sleep
4D0B: set0  $44
4D0D: tcall 3
4D0E: mov   $E1+x,y
4D10: mov1  $1FDF,00,c
4D13: bbs7  $4F,$4d13
4D16: bbs6  $5D,$4d0c
4D19: sbc   a,$A25C+y
4D1C: mov   x,a
4D1D: mov   a,($4C+x)
4D1F: inc   $63D3
4D22: clr5  $41
4D24: beq   $4d27
4D26: call  $0C9C
4D29: mov   $32+x,a
4D2B: movw  ya,$4B
4D2D: mov   $041D+x,a
4D30: asl   a
4D31: bbc0  $DE,$4d15
4D34: sbc   a,$D053+y
4D37: pop   y
4D38: and   a,$10+x
4D3A: inc   y
4D3B: bne   $4d3d
4D3D: mov   (x),a
4D3E: set1  $F0
4D40: bra   $4d21
4D42: bbs2  $DC,$4d46
4D45: nop
4D46: mov   (x),a
4D47: bbs1  $1E,$4d29
4D4A: bra   $4d1e
4D4C: setp
4D4D: tcall 13
4D4E: bmi   $4d06
4D50: mov   $B200,y
4D53: tcall 7
4D54: daa   a
4D55: set1  $0F
4D57: cmp   x,$C0C7
4D5A: tcall 2
4D5B: brk
4D5C: bbc1  $EC,$4d52
4D5F: jmp   ($020E+x)
4D62: nop
4D63: nop
4D64: nop
4D65: nop
4D66: nop
4D67: nop
4D68: nop
4D69: nop
4D6A: set6  $53
4D6C: bbs3  $AF,$4d89
4D6F: and   a,$B23E+y
4D72: bbs1  $C6,$4dcf
4D75: sbc   a,$EC+x
4D77: and   a,$0DEE+x
4D7A: bbc1  $90,$4d43
4D7D: ei
4D7E: bbs7  $10,$4d1e
4D81: lsr   $45C2
4D84: clrv
4D85: set6  $6F
4D87: mov   (x),a
4D88: cbne  $53,$4d78
4D8B: inc   $11+x
4D8D: div   ya,x
4D8E: movw  $FC,ya
4D90: set1  $2E
4D92: bbc6  $F4,$4d57
4D95: rol   a
4D96: bbc1  $C2,$4db4
4D99: bbc7  $27,$4de7
4D9C: clrv
4D9D: inc   a
4D9E: set1  $EE
4DA0: mov   (x),a
4DA1: tcall 14
4DA2: ror   $AA
4DA4: inc   x
4DA5: tcall 2
4DA6: rol   $B4
4DA8: mov   y,$C2
4DAA: pop   a
4DAB: clr1  $05
4DAD: rol   $36
4DAF: bbc7  $5F,$4d8e
4DB2: set6  $BF
4DB4: rol   a
4DB5: tcall 11
4DB6: mov   $E3,y
4DB8: bbc3  $37,$4dc6
4DBB: set6  $2D
4DBD: mov   $BE62+y,a
4DC0: bbs2  $66,$4d9f
4DC3: dec   x
4DC4: clr6  $D0
4DC6: clrp
4DC7: stop
4DC8: tcall 15
4DC9: asl   $12F3
4DCC: bbc1  $C2,$4e1a
4DCF: daa   a
4DD0: adc   (x),(y)
4DD1: set6  $40
4DD3: and   a,$BF+x
4DD5: clrc
4DD6: mov   (x),a
4DD7: or    a,$CD+x
4DD9: dbnz  y,$4e01
4DDB: mov   $5F,y
4DDD: clr5  $45
4DDF: set6  $42
4DE1: bbs3  $AF,$4dfe
4DE4: and   a,$B32D+y
4DE7: and   a,$C7+x
4DE9: eor   (x),(y)
4DEA: sbc   a,$EB+x
4DEC: and   a,$0EEE+x
4DEF: bbc1  $90,$4df4
4DF2: nop
4DF3: nop
4DF4: nop
4DF5: nop
4DF6: nop
4DF7: nop
4DF8: nop
4DF9: nop
4DFA: and1  c,!($0ECC,05)
4DFD: eor   a,$CE6B+x
4E00: mov   y,a
4E01: bbc2  $4B,$4e6e
4E04: jmp   ($FF0C+x)
4E07: stop
4E08: cmp   a,$5E
4E0A: mov   $CC,y
4E0C: addw  ya,$32
4E0E: bmi   $4e1e
4E10: mov   $5E43,y
4E13: stop
4E14: inc   y
4E15: addw  ya,$11
4E17: bpl   $4e6b
4E19: asl   $E3CE
4E1C: bbs3  $0A,$4e99
4E1F: brk
4E20: stop
4E21: tcall 5
4E22: dbnz  y,$4e52
4E24: mov   a,y
4E25: tcall 3
4E26: clr0  $76
4E28: cmp   a,$BB1C
4E2B: clr6  $33
4E2D: and   a,$E031
4E30: addw  ya,$01
4E32: bbc7  $1F,$4e02
4E35: clr1  $31
4E37: bpl   $4e24
4E39: cmp   a,$20BD+y
4E3C: sleep
4E3D: and   a,$20
4E3F: mov   $BD+x,y
4E41: and   a,$FE8A
4E44: mov   a,y
4E45: bbs1  $7F,$4e36
4E48: mov   ($52),($F2)
4E4B: adc   a,(x)
4E4C: eor   a,$3D
4E4E: mov   x,#$01
4E50: set1  $2F
4E52: dbnz  y,$4e53
4E54: eor1  c,$1D21,00
4E57: stop
4E58: stop
4E59: bbs1  $4E,$4e5b
4E5C: nop
4E5D: adc   a,(x)
4E5E: nop
4E5F: tcall 0
4E60: nop
4E61: dbnz  y,$4e64
4E63: setp
4E64: notc
4E65: dbnz  y,$4ee1
4E67: tcall 1
4E68: cmp   x,$E0
4E6A: bbs1  $0E,$4e1b
4E6D: tcall 3
4E6E: mov   y,a
4E6F: addw  ya,$23
4E71: tcall 5
4E72: notc
4E73: inc   a
4E74: tcall 1
4E75: and   a,$0F
4E77: bne   $4ef3
4E79: bpl   $4e80
4E7B: brk
4E7C: tcall 12
4E7D: stop
4E7E: clr7  $21
4E80: bbs0  $8A,$4eb2
4E83: mov   y,$2101
4E86: tcall 0
4E87: set0  $DE
4E89: bbs7  $9A,$4e7d
4E8C: or    a,$EF
4E8E: pop   x
4E8F: bbc1  $5E,$4e70
4E92: stop
4E93: eor1  c,$01F3,03
4E96: clrv
4E97: clr7  $DE
4E99: bbc6  $11,$4e8d
4E9C: eor1  c,$0101,07
4E9F: tcall 2
4EA0: asl   $E0
4EA2: push  x
4EA3: bbc0  $61,$4e30
4EA6: mov   a,y
4EA7: clr6  $10
4EA9: clr7  $00
4EAB: and   a,$C1CD
4EAE: subw  ya,$32
4EB0: asl   $05EF
4EB3: bmi   $4e91
4EB5: beq   $4edb
4EB7: subw  ya,$EF
4EB9: stop
4EBA: bpl   $4edb
4EBC: beq   $4ee1
4EBE: pop   y
4EBF: set6  $8A
4EC1: set1  $0E
4EC3: bbs2  $2A,$4ec5
4EC6: jmp   ($1951+x)
4EC9: subw  ya,$F2
4ECB: set2  $DF
4ECD: clrv
4ECE: tcall 1
4ECF: tset1 $1000
4ED2: subw  ya,$30
4ED4: mov   y,$2F21
4ED7: pop   y
4ED8: mov   a,$32
4EDA: asl   $ED96
4EDD: daa   a
4EDE: bbs1  $20,$4edf
4EE1: bbs7  $43,$4ef3
4EE4: eor1  c,$13E0,00
4EE7: set1  $12
4EE9: push  psw
4EEA: inc   $24+x
4EEC: clrc
4EED: eor1  c,$10EE,00
4EF0: clrv
4EF1: and   a,$CD
4EF3: sbc   a,(x)
4EF4: set3  $FA
4EF6: eor1  c,$17BD,00
4EF9: clr2  $F9
4EFB: cbne  $32+x,$4eee
4EFE: clr7  $9A
4F00: tcall 0
4F01: clrp
4F02: cbne  $04+x,$4f24
4F05: mov   a,y
4F06: bbs2  $30,$4e93
4F09: inc   $EE+x
4F0B: bbc1  $3F,$4edd
4F0E: or    a,$31
4F10: mov   $8A+x,y
4F12: brk
4F13: mov   $32,a
4F15: sleep
4F16: clrp
4F17: mov   y,$E1
4F19: and   a,$96
4F1B: bbs1  $23,$4f3d
4F1E: tcall 12
4F1F: bbc1  $10,$4f20
4F22: clrv
4F23: eor1  c,$1E32,00
4F26: cmp   y,#$15
4F28: or    a,$5F+x
4F2A: sbc   ($8A),($B4)
4F2D: bbs3  $D2,$4f4d
4F30: bbc5  $32,$4f53
4F33: inc   $E1
4F35: subw  ya,$12
4F37: set2  $BC
4F39: tcall 12
4F3A: bbc2  $1E,$4f4c
4F3D: tset1 $0186
4F40: clr1  $0F
4F42: jmp   ($C6CC+x)
4F45: cmp   a,$EF
4F47: eor1  c,$0A61,05
4F4A: bbc1  $4D,$4f4d
4F4D: clrv
4F4E: set0  $1D
4F50: eor1  c,$14C0,01
4F53: mul   ya
4F54: bbc5  $23,$4f5a
4F57: das   a
4F58: tcall 12
4F59: eor1  c,$0F00,01
4F5C: set1  $31
4F5E: inc   y
4F5F: tcall 14
4F60: bbc1  $0C,$4ef9
4F63: mov   a,y
4F64: clr7  $F0
4F66: set0  $20
4F68: sleep
4F69: dbnz  y,$4f59
4F6B: adc   a,$4F22+y
4F6E: dbnz  y,$4f6d
4F70: sleep
4F71: nop
4F72: nop
4F73: clr0  $8A
4F75: dec   y
4F76: mov   a,$11+x
4F78: tcall 1
4F79: notc
4F7A: mov   sp,x
4F7B: eor   a,$8A4E+y
4F7E: daa   a
4F7F: jmp   ($050E+x)
4F82: asl   a
4F83: pop   y
4F84: bbs1  $53,$4f1d
4F87: tset1 $EFDD
4F8A: beq   $4f8d
4F8C: bbs1  $20,$4f7c
4F8F: eor1  c,$0301,00
4F92: set3  $FD
4F94: pop   x
4F95: stop
4F96: bbc2  $3E,$4f2f
4F99: dbnz  y,$4f7e
4F9B: bbs2  $FF,$4f8e
4F9E: cbne  $02+x,$4fc0
4FA1: adc   a,$4E03+y
4FA4: mov   a,y
4FA5: tcall 15
4FA6: brk
4FA7: bbs0  $1E,$4f69
4FAA: eor1  c,$0041,06
4FAD: beq   $4f7c
4FAF: eor   a,$4B+x
4FB1: mov   (x)+,a
4FB2: and   a,$338A
4FB5: mov   ($E1),($BD)
4FB8: cmp   a,($2F+x)
4FBA: stop
4FBB: mov   y,$9A+x
4FBD: clrv
4FBE: eor   a,$DD
4FC0: mov   a,$20
4FC2: stop
4FC3: pop   y
4FC4: bbs0  $9A,$4ff8
4FC7: pop   x
4FC8: tcall 0
4FC9: bbs1  $FD,$4fbb
4FCC: nop
4FCD: clr0  $9A
4FCF: brk
4FD0: clr0  $DF
4FD2: or    a,$D00E
4FD5: nop
4FD6: set0  $9A
4FD8: clrp
4FD9: set0  $0E
4FDB: mov   a,y
4FDC: set1  $30
4FDE: beq   $4ffe
4FE0: eor1  c,$0020,07
4FE3: bbc6  $3E,$4fc3
4FE6: set0  $62
4FE8: mov   y,$9A
4FEA: beq   $500b
4FEC: tcall 1
4FED: pop   y
4FEE: set0  $11
4FF0: clr0  $0C
4FF2: subw  ya,$D0
4FF4: tcall 0
4FF5: tcall 1
4FF6: bpl   $500a
4FF8: rol   $D1
4FFA: bra   $4f86
4FFC: clr7  $3D
4FFE: bbc7  $51,$4fcc
5001: bpl   $4ff3
5003: stop
5004: eor1  c,$0103,02
5007: notc
5008: pop   x
5009: bbs7  $22,$4ff9
500C: bbc1  $8A,$501e
500F: bbs1  $3B,$4fbd
5012: tcall 2
5013: bbs1  $01,$505c
5016: subw  ya,$1C
5018: bcs   $504a
501A: clr7  $2F
501C: daa   a
501D: set2  $FE
501F: subw  ya,$E2
5021: cmp   x,$11FF
5024: tcall 1
5025: bpl   $5013
5027: tcall 15
5028: subw  ya,$3F
502A: di
502B: bbs2  $2E,$501e
502E: cmp   x,$3FD0
5031: subw  ya,$FF
5033: set1  $13
5035: brk
5036: di
5037: dec   x
5038: tcall 13
5039: set3  $9A
503B: beq   $505c
503D: mov   y,a
503E: bbs7  $30,$501f
5041: beq   $5065
5043: subw  ya,$41
5045: mov   $F2,y
5047: dec   x
5048: clrv
5049: cmp   a,$0F
504B: daa   a
504C: eor1  c,$096F,06
504F: bbs2  $DE,$5087
5052: set2  $4C
5054: inc   $009A
5057: clrv
5058: bbc2  $FD,$507d
505B: mov   y,$3FE3
505E: subw  ya,$E0
5060: brk
5061: bbs0  $21,$5040
5064: tcall 15
5065: brk
5066: tcall 14
5067: subw  ya,$44
5069: push  a
506A: pop   y
506B: clr0  $FF
506D: tcall 15
506E: dbnz  y,$5082
5070: subw  ya,$23
5072: bpl   $5052
5074: dbnz  y,$5056
5076: cmp   a,$FE
5078: tcall 0
5079: subw  ya,$0C
507B: tcall 14
507C: tcall 3
507D: clrv
507E: dbnz  y,$5082
5080: tcall 4
5081: notc
5082: subw  ya,$D1
5084: dbnz  y,$5087
5086: eor   a,$CF0F
5089: tcall 1
508A: tset1 $008A
508D: tcall 14
508E: clr1  $11
5090: tcall 5
5091: dec   y
5092: daa   a
5093: xcn   a
5094: adc   a,$31E3+y
5097: bbs1  $2F,$5067
509A: stop
509B: nop
509C: push  psw
509D: subw  ya,$03
509F: bmi   $508d
50A1: stop
50A2: beq   $50b6
50A4: bbs1  $2D,$5031
50A7: pop   x
50A8: tcall 0
50A9: clr0  $CC
50AB: bbc7  $60,$5090
50AE: tcall 5
50AF: subw  ya,$FE
50B1: stop
50B2: pop   y
50B3: and   a,$E12F+x
50B6: tset1 $9AEF
50B9: tcall 0
50BA: bbc0  $EE,$50af
50BD: bmi   $50ad
50BF: sleep
50C0: sleep
50C1: eor1  c,$1356,02
50C4: nop
50C5: pop   x
50C6: stop
50C7: clrp
50C8: asl   $8AD4
50CB: clr2  $D1
50CD: eor   a,$BC
50CF: stop
50D0: mov   a,y
50D1: eor   a,(x)
50D2: bvc   $505e
50D4: beq   $50e1
50D6: tcall 12
50D7: daa   a
50D8: eor   a,$D60A+y
50DB: bra   $5077
50DD: dbnz  y,$50cc
50DF: clr7  $23
50E1: tcall 2
50E2: sleep
50E3: bpl   $50e4
50E5: eor1  c,$1EF2,07
50E8: set7  $50
50EA: set0  $50
50EC: mov   $9A02,x
50EF: beq   $5102
50F1: tcall 1
50F2: tcall 1
50F3: dbnz  y,$50e3
50F5: beq   $512b
50F7: subw  ya,$0D
50F9: tcall 15
50FA: bra   $50dc
50FC: mov   a,y
50FD: set7  $43
50FF: call  $9E8A
5102: and   a,$0EEB+x
5105: brk
5106: set0  $22
5108: or    a,$8A
510A: tclr1 $F1AB
510D: tcall 3
510E: cmp   x,$3204
5111: cmp   x,$DD9A
5114: tcall 13
5115: bbc1  $3E,$50f9
5118: cmp   x,$ECFF
511B: subw  ya,$F3
511D: and   a,$DD1F+x
5120: bbs1  $2D,$50f3
5123: brk
5124: subw  ya,$10
5126: clrp
5127: bbc0  $2E,$50f7
512A: tcall 0
512B: bbc0  $1D,$50c8
512E: tcall 14
512F: set2  $0F
5131: mov   y,$D0+x
5133: and   a,$10+x
5135: nop
5136: subw  ya,$0D
5138: tcall 14
5139: mov   y,$53F2
513C: cmp   x,$CE
513E: or    a,$9A+x
5140: push  a
5141: notc
5142: bpl   $5146
5144: nop
5145: and   a,$1C+x
5147: das   a
5148: subw  ya,$01
514A: bbs1  $1F,$512c
514D: and   a,$2F
514F: mov   a,y
5150: daa   a
5151: subw  ya,$23
5153: bmi   $5156
5155: tset1 $FDCF
5158: bbc7  $35,$50f5
515B: bra   $512a
515D: bbc0  $30,$511d
5160: clr7  $2F
5162: clrp
5163: subw  ya,$15
5165: rol   $F2BD
5168: bbs1  $20,$5148
516B: or    a,$9A+x
516D: tclr1 $EFED
5170: bbc7  $32,$5193
5173: dbnz  y,$5143
5175: subw  ya,$EF
5177: tcall 0
5178: eor   a,$20
517A: mov   x,#$04
517C: call  $9ADB
517F: clr7  $12
5181: tcall 0
5182: bbs1  $2D,$5142
5185: clrv
5186: eor   a,$9A
5188: clrp
5189: mov   a,y
518A: or    a,$20
518C: clrv
518D: inc   y
518E: tcall 14
518F: bbs2  $9A,$51a4
5192: tset1 $D0DB
5195: set0  $24
5197: tcall 3
5198: dec   y
5199: subw  ya,$03
519B: clrp
519C: mov   a,y
519D: clrv
519E: bmi   $51b2
51A0: bbs1  $1E,$513d
51A3: inc   a
51A4: tcall 14
51A5: bbc1  $32,$5194
51A8: bbc6  $40,$519b
51AB: subw  ya,$FF
51AD: mov   a,(x)+
51AE: bbc1  $42,$51cf
51B1: inc   a
51B2: mul   ya
51B3: tcall 2
51B4: subw  ya,$33
51B6: tcall 2
51B7: mov   y,a
51B8: clr7  $2F
51BA: notc
51BB: clrv
51BC: bbc0  $9A,$51cf
51BF: bbc1  $2C,$518f
51C2: sleep
51C3: and   a,$32
51C5: asl   $E09A
51C8: set1  $10
51CA: push  psw
51CB: mov   x,#$25
51CD: clr1  $2F
51CF: subw  ya,$DA
51D1: pop   x
51D2: clr0  $23
51D4: tcall 4
51D5: notc
51D6: clr7  $3F
51D8: subw  ya,$CE
51DA: stop
51DB: clr0  $31
51DD: bbs0  $2E,$519d
51E0: brk
51E1: subw  ya,$02
51E3: bbs2  $0E,$51d4
51E6: tcall 0
51E7: clr1  $0E
51E9: mov   x,#$9A
51EB: tcall 0
51EC: eor   a,$CC20
51EF: mov   sp,x
51F0: tcall 1
51F1: set1  $43
51F3: eor1  c,$03EA,07
51F6: cbne  $BB,$51d9
51F9: or    a,$F252+x
51FC: subw  ya,$4F
51FE: inc   a
51FF: set0  $F0
5201: bbs1  $10,$5212
5204: tcall 12
5205: subw  ya,$34
5207: dec   x
5208: mul   ya
5209: clrv
520A: and   a,$4F+x
520C: asl   $BD
520E: subw  ya,$02
5210: nop
5211: eor   a,$F01D
5214: brk
5215: sleep
5216: beq   $51b2
5218: tcall 1
5219: tcall 2
521A: clr7  $21
521C: mov   x,#$00
521E: tset1 $9A23
5221: tcall 1
5222: jmp   ($25CE+x)
5225: cmp   x,$BE
5227: brk
5228: or    a,$9A+x
522A: tcall 3
522B: dbnz  y,$51f9
522D: beq   $523f
522F: and   a,(x)
5230: push  x
5231: tcall 13
5232: eor1  c,$1EFB,06
5235: clr7  $04
5237: bbs1  $EE,$52ac
523A: movw  $9A,ya
523C: set7  $0E
523E: clr7  $31
5240: tcall 1
5241: dec   y
5242: or    a,$9A4E
5245: pop   x
5246: bpl   $5239
5248: clr1  $1E
524A: mov   a,y
524B: sleep
524C: brk
524D: subw  ya,$25
524F: tcall 5
5250: cbne  $FE+x,$5233
5253: nop
5254: clrp
5255: tcall 2
5256: eor1  c,$05DF,01
5259: or1   c,$0EE0,01
525C: bne   $5274
525E: bbc2  $86,$52be
5261: tcall 11
5262: cmp   a,$FFFC+y
5265: movw  ya,$E3
5267: eor   a,$9A
5269: dbnz  y,$5259
526B: daa   a
526C: or    a,$DD63+x
526F: dbnz  y,$5270
5271: eor1  c,$04F1,01
5274: bmi   $5244
5276: cmp   a,$DE
5278: tcall 14
5279: tset1 $0C8A
527C: mov   a,$76+x
527E: mov   y,$C1+x
5280: setp
5281: mov   a,y
5282: eor   a,$9A
5284: pop   y
5285: tcall 15
5286: tcall 3
5287: cmp   x,$EDDD
528A: or    a,$9A64+x
528D: inc   y
528E: bne   $527f
5290: beq   $52c4
5292: bpl   $5273
5294: bbs1  $8A,$52a2
5297: set0  $FF
5299: sleep
529A: tcall 12
529B: cmp   a,(x)
529C: pcall $DD
529E: eor1  c,$10D1,00
52A1: clr1  $0A
52A3: di
52A4: and   a,$CA3F+y
52A7: subw  ya,$CD
52A9: or    a,$64
52AB: cmp   x,$0FCD
52AE: tcall 15
52AF: clr0  $8A
52B1: cmp   x,$DE
52B3: and   a,$03EE+x
52B6: push  a
52B7: notc
52B8: cbne  $9A+x,$52cf
52BB: clr1  $0D
52BD: daa   a
52BE: clr0  $12
52C0: pop   y
52C1: pop   y
52C2: subw  ya,$23
52C4: bmi   $52b4
52C6: mov   $55F3,y
52C9: cmp   x,$BD
52CB: eor1  c,$1FFF,00
52CE: bbc1  $10,$52bf
52D1: bbc1  $0C,$52c9
52D4: subw  ya,$11
52D6: pop   y
52D7: pop   y
52D8: bbc0  $43,$52f8
52DB: mov   a,(x)+
52DC: set1  $9A
52DE: clrp
52DF: push  psw
52E0: pop   y
52E1: or    a,$50
52E3: mov   y,$01CE
52E6: subw  ya,$35
52E8: bmi   $52c6
52EA: clrv
52EB: tcall 0
52EC: tcall 0
52ED: cbne  $01,$528a
52F0: tcall 0
52F1: stop
52F2: tcall 0
52F3: tcall 3
52F4: asl   $F3DF
52F7: eor   a,$9A
52F9: cmp   x,$03DD
52FC: tcall 2
52FD: mov   y,a
52FE: dbnz  y,$5302
5300: bbs2  $9A,$52df
5303: pop   y
5304: tcall 15
5305: bbc0  $43,$52f4
5308: bcs   $533a
530A: eor1  c,$03D0,01
530D: tcall 1
530E: dec   x
530F: sleep
5310: or    a,$44
5312: decw  $9A
5314: pop   x
5315: nop
5316: eor   a,$CD3F
5319: tcall 0
531A: tcall 4
531B: pop   y
531C: subw  ya,$EF
531E: set7  $72
5320: mov   $E0+x,y
5322: beq   $5336
5324: clr1  $9A
5326: asl   $21D0
5329: notc
532A: clr0  $22
532C: stop
532D: sleep
532E: subw  ya,$11
5330: bbs1  $1D,$5301
5333: nop
5334: or    a,$DE5F+x
5337: subw  ya,$F1
5339: set1  $EE
533B: mov   y,a
533C: bbs0  $34,$531a
533F: stop
5340: subw  ya,$01
5342: nop
5343: bbs1  $FF,$5334
5346: tcall 2
5347: notc
5348: mov   a,$9A+x
534A: pcall $0F
534C: bne   $5350
534E: set1  $2E
5350: das   a
5351: bpl   $52ed
5353: set0  $43
5355: pop   y
5356: beq   $537a
5358: pop   y
5359: sleep
535A: clr7  $96
535C: and   a,$2D
535E: mov   sp,x
535F: mov   a,y
5360: pop   y
5361: set0  $43
5363: tcall 2
5364: subw  ya,$02
5366: mov   y,$F4
5368: clr2  $ED
536A: dbnz  y,$537e
536C: bbs1  $9A,$537e
536F: cbne  $00+x,$5364
5372: set2  $FF
5374: tcall 15
5375: set0  $9A
5377: push  psw
5378: cbne  $03+x,$53af
537B: mov   y,$DF+x
537D: tcall 1
537E: nop
537F: adc   a,$12F1+y
5382: bbc1  $32,$5392
5385: cmp   y,#$57
5387: tcall 5
5388: subw  ya,$E0
538A: clr7  $42
538C: dec   x
538D: bne   $53ae
538F: beq   $53b4
5391: subw  ya,$00
5393: bpl   $53a5
5395: dbnz  y,$5375
5397: set0  $53
5399: notc
539A: subw  ya,$DF
539C: tcall 15
539D: clrp
539E: stop
539F: tcall 1
53A0: clr0  $FE
53A2: mov   y,$E49A
53A5: eor   a,$EC+x
53A7: dbnz  y,$53ab
53A9: bbc1  $1C,$537d
53AC: subw  ya,$3F
53AE: sleep
53AF: clr0  $20
53B1: clr0  $F0
53B3: dec   x
53B4: mov   $149A,y
53B7: bbs2  $FD,$5397
53BA: clr7  $21
53BC: stop
53BD: nop
53BE: subw  ya,$21
53C0: cmp   x,$F2CD
53C3: clr3  $0B
53C5: set6  $00
53C7: subw  ya,$43
53C9: asl   a
53CA: bbs6  $3F,$53ac
53CD: set0  $11
53CF: set1  $9A
53D1: nop
53D2: tset1 $03AD
53D5: set3  $0F
53D7: mov   x,#$D1
53D9: subw  ya,$42
53DB: inc   y
53DC: set0  $23
53DE: asl   $03CD
53E1: eor   a,$FB9A
53E4: daa   a
53E5: clr0  $34
53E7: asl   $D2
53E9: bvc   $53b9
53EB: subw  ya,$01
53ED: bbc0  $11,$5401
53F0: push  psw
53F1: mov   $E4+x,y
53F3: eor   a,$9A
53F5: brk
53F6: mov   y,$E1
53F8: clr1  $DE
53FA: tcall 0
53FB: bbc1  $0C,$5398
53FE: mov   a,(x)+
53FF: bbc7  $62,$53fe
5402: di
5403: set0  $52
5405: push  psw
5406: subw  ya,$B3
5408: tcall 5
5409: dec   y
540A: beq   $543f
540C: call  $0E02
540F: subw  ya,$CC
5411: clr6  $72
5413: tcall 1
5414: mov   $C2+x,y
5416: tcall 3
5417: mov   y,a
5418: subw  ya,$03
541A: bbc0  $0C,$53ea
541D: bbc0  $43,$540d
5420: daa   a
5421: subw  ya,$11
5423: eor   a,$FC
5425: clr6  $52
5427: mov   y,$25C0
542A: subw  ya,$30
542C: nop
542D: cmp   x,$D1EB
5430: eor   a,$FA20
5433: subw  ya,$C0
5435: bbc1  $EE,$5439
5438: tcall 2
5439: cmp   x,$03BF
543C: subw  ya,$41
543E: notc
543F: clrv
5440: tcall 0
5441: bbs2  $0C,$5425
5444: bbs2  $9A,$5443
5447: mov   x,#$45
5449: pcall $F1
544B: jmp   ($DFDC+x)
544E: subw  ya,$54
5450: tcall 3
5451: dec   y
5452: bcs   $5495
5454: tset1 $23E1
5457: eor1  c,$0BFB,06
545A: or    a,$BA53+y
545D: tcall 11
545E: bbs1  $66,$540b
5461: brk
5462: clrv
5463: set1  $0E
5465: pop   y
5466: or    a,$2F+x
5468: nop
5469: subw  ya,$00
546B: inc   y
546C: di
546D: or    a,$0A32+x
5470: ei
5471: and   a,$9A+x
5473: dbnz  y,$5464
5475: bbc1  $FE,$5477
5478: clr7  $30
547A: mov   y,a
547B: subw  ya,$D0
547D: set1  $23
547F: mov   y,a
5480: tcall 0
5481: clr1  $FE
5483: mov1  $14AA,00,c
5486: bmi   $5468
5488: tcall 0
5489: tset1 $22DF
548C: tcall 2
548D: subw  ya,$EC
548F: pop   a
5490: set2  $2F
5492: di
5493: clr0  $1E
5495: beq   $5421
5497: tcall 0
5498: set1  $DB
549A: tcall 11
549B: bbc2  $40,$548e
549E: or    a,$AA
54A0: bpl   $54b1
54A2: pop   y
54A3: or    a,$30
54A5: stop
54A6: nop
54A7: brk
54A8: subw  ya,$EF
54AA: clr7  $43
54AC: decw  $A0
54AE: or    a,$2F+x
54B0: dec   y
54B1: adc   a,(x)
54B2: clr5  $45
54B4: cmp   a,$5654
54B7: push  x
54B8: inc   $AA05
54BB: nop
54BC: beq   $54df
54BE: nop
54BF: beq   $54be
54C1: bbs0  $41,$545e
54C4: mov   x,#$11
54C6: dbnz  y,$54b7
54C8: jmp   ($0B36+x)
54CB: cmp   y,#$9A
54CD: set2  $31
54CF: mov   $31F2,y
54D2: nop
54D3: stop
54D4: beq   $5460
54D6: dbnz  y,$54bb
54D8: setp
54D9: push  psw
54DA: and   a,$35
54DC: cbne  $DB,$5489
54DF: stop
54E0: bbc7  $41,$54d1
54E3: tcall 0
54E4: nop
54E5: stop
54E6: tcall 15
54E7: subw  ya,$23
54E9: rol   a
54EA: xcn   a
54EB: or    a,$31
54ED: not1  $13D2,01
54F0: eor1  c,$0B4E,07
54F3: tcall 12
54F4: dbnz  y,$5518
54F6: tcall 3
54F7: das   a
54F8: or    a,$329A+y
54FB: bra   $54cb
54FD: cbne  $24+x,$5554
5500: dec   y
5501: set0  $9A
5503: stop
5504: tset1 $24FF
5507: cbne  $BC,$551c
550A: bbc1  $9A,$54d8
550D: tcall 13
550E: bbc2  $11,$54fd
5511: clrv
5512: brk
5513: or    a,$9A+x
5515: cmp   x,$34DD
5518: bbc1  $1E,$54f7
551B: clrv
551C: or    a,$429A+x
551F: mov   y,a
5520: clrv
5521: tcall 2
5522: dbnz  y,$5503
5524: clr1  $3F
5526: subw  ya,$BD
5528: bbs0  $30,$5525
552B: tcall 12
552C: eor   a,(x)
552D: cmp   x,$DD
552F: subw  ya,$D0
5531: tcall 15
5532: bbc1  $1E,$54e3
5535: and   a,$2E52
5538: subw  ya,$CB
553A: tcall 13
553B: bbs2  $42,$552c
553E: pop   y
553F: bbs1  $1D,$54dc
5542: cbne  $13+x,$5565
5545: mov   y,$03
5547: tcall 2
5548: dec   y
5549: mul   ya
554A: subw  ya,$65
554C: setp
554D: inc   $FF+x
554F: clr7  $34
5551: push  psw
5552: inc   a
5553: subw  ya,$46
5555: bbc1  $00,$5533
5558: tcall 12
5559: and   a,$0D31+x
555C: subw  ya,$DE
555E: and   a,$DE1D
5561: tcall 0
5562: tcall 3
5563: pop   y
5564: tcall 14
5565: subw  ya,$20
5567: mov   y,a
5568: di
5569: and   a,(x)
556A: bvc   $5537
556C: daa   a
556D: clr7  $AA
556F: tcall 3
5570: brk
5571: cbne  $04+x,$55b4
5574: brk
5575: dbnz  y,$5557
5577: subw  ya,$54
5579: tcall 3
557A: dbnz  y,$553a
557C: eor   a,$3D
557E: pop   x
557F: tcall 15
5580: subw  ya,$22
5582: tset1 $02D0
5585: push  psw
5586: cbne  $35+x,$55db
5589: subw  ya,$AB
558B: cbne  $03+x,$55e1
558E: dbnz  y,$555a
5590: and   a,(x)
5591: bbs3  $96,$560a
5594: pcall $A9
5596: bbs6  $64,$55d9
5599: mov1  $0AD2,04,c
559C: dec   x
559D: mov   $CF,y
559F: eor   a,$CB0F+x
55A2: tcall 1
55A3: push  psw
55A4: subw  ya,$E0
55A6: or    a,$CB51
55A9: cbne  $E4+x,$560e
55AC: stop
55AD: mov1  c,$13EE,07
55B0: tcall 4
55B1: brk
55B2: sleep
55B3: clrv
55B4: bbs1  $20,$5551
55B7: cbne  $BE+x,$560e
55BA: jmp   ($CEFE+x)
55BD: bbc1  $10,$555a
55C0: pop   y
55C1: clrv
55C2: beq   $55e3
55C4: or    a,$41
55C6: mov   x,#$CD
55C8: subw  ya,$03
55CA: bbs2  $0F,$55a8
55CD: or    a,$EE54
55D0: dbnz  y,$5568
55D2: mov1  $05D4,03,c
55D5: pcall $BB
55D7: di
55D8: tcall 1
55D9: jmp   ($CE9A+x)
55DC: bbs0  $31,$55cb
55DF: beq   $55c1
55E1: tcall 2
55E2: set0  $9A
55E4: bmi   $55e2
55E6: mov   x,#$F3
55E8: set3  $0E
55EA: pop   y
55EB: bbs7  $9A,$5641
55EE: push  psw
55EF: tcall 13
55F0: sleep
55F1: and   a,$CD31+x
55F4: tcall 13
55F5: subw  ya,$30
55F7: tcall 2
55F8: stop
55F9: pop   y
55FA: tcall 15
55FB: bbs2  $CB,$55ef
55FE: subw  ya,$F0
5600: tcall 2
5601: clr7  $30
5603: pop   y
5604: dec   y
5605: clr7  $54
5607: subw  ya,$EE
5609: brk
560A: nop
560B: bbc1  $FE,$55ef
560E: jmp   ($9A04+x)
5611: tcall 4
5612: not1  $00F3,00
5615: clr0  $FF
5617: tset1 $9AD1
561A: clr2  $DA
561C: set7  $00
561E: clr0  $10
5620: tcall 0
5621: tset1 $CD9A
5624: clr7  $42
5626: tset1 $1001
5629: tcall 0
562A: tset1 $F29A
562D: bpl   $5630
562F: set2  $CC
5631: bbc0  $0E,$5655
5634: subw  ya,$EF
5636: bra   $5617
5638: bbs2  $DB,$560c
563B: clrp
563C: clr0  $8A
563E: jmp   ($FC10+x)
5641: mov   $D1+x,y
5643: cmp   a,(x)
5644: mov   y,a
5645: or    a,$3D8A+x
5648: daa   a
5649: nop
564A: set7  $74
564C: pop   x
564D: eor   a,$9AD9+x
5650: bbs0  $FF,$5664
5653: bne   $5695
5655: mul   ya
5656: tcall 2
5657: mov   y,$9A+x
5659: clr6  $20
565B: bbs0  $1F,$564e
565E: brk
565F: sleep
5660: sleep
5661: subw  ya,$33
5663: stop
5664: bbs1  $1F,$5645
5667: nop
5668: tcall 0
5669: eor   a,$8A
566B: mov   $04,y
566D: tset1 $0001
5670: brk
5671: daa   a
5672: eor   a,$9A+x
5674: pop   y
5675: bpl   $5674
5677: bcs   $56da
5679: tcall 15
567A: bra   $566b
567C: subw  ya,$10
567E: brk
567F: pop   x
5680: and   a,$0F
5682: and   a,$1E
5684: notc
5685: subw  ya,$E0
5687: or    a,$42+x
5689: mov   y,a
568A: tcall 14
568B: set1  $FF
568D: tcall 0
568E: subw  ya,$0E
5690: clrv
5691: clr1  $0F
5693: sleep
5694: mov   y,a
5695: tcall 13
5696: bbc1  $8A,$5689
5699: bpl   $5679
569B: mov   a,$1C
569D: inc   $35
569F: set1  $9A
56A1: set1  $20
56A3: inc   a
56A4: clrv
56A5: and   a,$42+x
56A7: pop   y
56A8: mul   ya
56A9: adc   a,$2E15+y
56AC: tcall 14
56AD: tset1 $B0CB
56B0: set2  $FC
56B2: subw  ya,$EE
56B4: tcall 14
56B5: set2  $00
56B7: brk
56B8: tset1 $1D02
56BB: subw  ya,$C0
56BD: tcall 1
56BE: clr0  $22
56C0: bpl   $56ac
56C2: tcall 13
56C3: and   a,(x)
56C4: adc   a,$5254+y
56C7: mov   $F7,y
56C9: push  x
56CA: bne   $56da
56CC: mov   y,$9A
56CE: mov   a,$AE40+x
56D1: cbne  $01+x,$56f8
56D4: cmp   x,$9AEF
56D7: bpl   $56bc
56D9: rol   $01DF
56DC: bbs1  $20,$56f0
56DF: subw  ya,$EC
56E1: das   a
56E2: cmp   a,(x)
56E3: clrp
56E4: beq   $56a4
56E6: cmp   a,$9A0B
56E9: clr6  $21
56EB: notc
56EC: mov   a,$6F
56EE: mov   y,$DE
56F0: tcall 0
56F1: subw  ya,$22
56F3: call  $1FDF
56F6: bbs0  $1D,$56a9
56F9: nop
56FA: subw  ya,$34
56FC: jmp   ($1A02+x)
56FF: ei
5700: eor   a,($1D)+y
5702: brk
5703: subw  ya,$E0
5705: and   a,$DE0D+x
5708: bbs1  $1A,$56ef
570B: tcall 5
570C: subw  ya,$CC
570E: cbne  $10+x,$5743
5711: cmp   x,$1EE1
5714: bbs0  $9A,$5733
5717: daa   a
5718: tcall 1
5719: bbs1  $1E,$571e
571C: dec   x
571D: mov   sp,x
571E: adc   a,$41E4+y
5721: stop
5722: stop
5723: bbc0  $43,$5710
5726: bbc6  $9A,$5724
5729: bbs7  $30,$5738
572C: bcs   $573f
572E: tcall 0
572F: clrp
5730: eor1  c,$1CDE,00
5733: and   a,($FB)+y
5735: inc   $6405
5738: inc   y
5739: adc   a,$4212+y
573C: dec   y
573D: bbc7  $30,$571d
5740: beq   $5755
5742: subw  ya,$2F
5744: movw  $26,ya
5746: asl   a
5747: tcall 15
5748: tcall 0
5749: dec   x
574A: mul   ya
574B: eor1  c,$1030,00
574E: set1  $FE
5750: clrv
5751: or    a,$AB1C+x
5754: eor1  c,$1425,02
5757: mov   $E5+x,y
5759: bvc   $5718
575B: eor   a,$FC+x
575D: subw  ya,$E1
575F: clr1  $00
5761: clrp
5762: mov   a,y
5763: bbs0  $3F,$5765
5766: eor1  c,$1FEF,00
5769: cbne  $FF+x,$577d
576C: bbs0  $1C,$5732
576F: subw  ya,$20
5771: jmp   ($23CE+x)
5774: tcall 1
5775: inc   y
5776: bbs0  $31,$5713
5779: sleep
577A: tcall 0
577B: tset1 $43E1
577E: tcall 15
577F: jmp   ($8ADD+x)
5782: or    a,(x)
5783: eor   a,$CCEB+x
5786: clr0  $0E
5788: mul   ya
5789: nop
578A: subw  ya,$12
578C: dec   x
578D: set7  $11
578F: nop
5790: mov   x,#$34
5792: clrp
5793: subw  ya,$CD
5795: bbc7  $41,$57a8
5798: pop   y
5799: brk
579A: set0  $22
579C: subw  ya,$00
579E: cmp   x,$CF
57A0: tcall 15
57A1: clr2  $1D
57A3: pop   x
57A4: set0  $8A
57A6: inc   x
57A7: mov   $01+x,y
57A9: and   a,(x)
57AA: or1   c,$00C3,02
57AD: mov   x,a
57AE: subw  ya,$BE
57B0: and   a,(x)
57B1: cbne  $DB,$57b7
57B4: and   a,$1F+x
57B6: notc
57B7: subw  ya,$F0
57B9: bbs0  $20,$57be
57BC: cbne  $DD,$57b0
57BF: eor   a,$FC9A+y
57C2: dec   y
57C3: set0  $30
57C5: pop   x
57C6: tcall 15
57C7: tcall 3
57C8: push  psw
57C9: subw  ya,$F1
57CB: clr0  $1F
57CD: mov   x,#$44
57CF: bra   $577e
57D1: mov   a,$9A+x
57D3: set2  $4F
57D5: mov   sp,x
57D6: tcall 15
57D7: tcall 2
57D8: tcall 2
57D9: tcall 0
57DA: cbne  $AA,$57cc
57DD: tcall 15
57DE: tcall 4
57DF: tset1 $E1FF
57E2: clrp
57E3: dbnz  y,$577f
57E5: tcall 14
57E6: clr2  $DE
57E8: nop
57E9: clr0  $2E
57EB: mul   ya
57EC: or    a,($AA+x)
57EE: jmp   ($03EC+x)
57F1: set1  $10
57F3: mov   a,y
57F4: set0  $11
57F6: mov1  c,$01F1,00
57F9: nop
57FA: dbnz  y,$57dd
57FC: bbs2  $EF,$57fd
57FF: subw  ya,$E1
5801: set2  $CC
5803: bbc6  $51,$5802
5806: beq   $581c
5808: mov1  c,$0E1F,07
580B: set1  $2F
580D: pop   x
580E: bbs0  $30,$5830
5811: subw  ya,$DC
5813: bbs7  $51,$5814
5816: set1  $0E
5818: sleep
5819: tcall 13
581A: mov1  c,$1E42,07
581D: stop
581E: tcall 15
581F: bpl   $581f
5821: tcall 15
5822: tcall 2
5823: mov1  c,$1FF0,07
5826: tcall 1
5827: jmp   ($03FF+x)
582A: bra   $5808
582C: subw  ya,$15
582E: eor   a,$CB0E+x
5831: bbs0  $52,$5812
5834: bbc1  $9A,$5823
5837: beq   $583a
5839: eor   a,$E0DC+x
583C: stop
583D: tcall 2
583E: subw  ya,$DD
5840: mov   $50+x,a
5842: pop   y
5843: sleep
5844: and   a,$D0EE+x
5847: mov1  c,$1F21,00
584A: cbne  $F2+x,$588f
584D: dec   x
584E: daa   a
584F: set0  $96
5851: and   a,$043E+x
5854: rol   $D0AD
5857: and   a,$9A50+x
585A: tcall 14
585B: nop
585C: stop
585D: notc
585E: bbs0  $42,$582f
5861: sleep
5862: mov1  c,$0E22,00
5865: beq   $587a
5867: tset1 $11ED
586A: bbc1  $9A,$5878
586D: inc   a
586E: bbs2  $33,$585d
5871: or    a,$E3E9+x
5874: subw  ya,$41
5876: tcall 3
5877: pop   y
5878: tcall 13
5879: bra   $5878
587B: sleep
587C: mov   a,$409A+x
587F: mov   y,$F1
5881: and   a,$FE
5883: bne   $58c9
5885: rol   $A6
5887: notc
5888: daa   a
5889: bbs1  $3F,$5869
588C: tcall 15
588D: set1  $20
588F: subw  ya,$02
5891: mov   y,$E3+x
5893: and   a,$10+x
5895: mov   y,$1012
5898: subw  ya,$CD
589A: sleep
589B: set1  $42
589D: dec   y
589E: clr6  $40
58A0: cmp   x,$E09A
58A3: or    a,($1C)+y
58A5: dec   a
58A6: bbc1  $55,$5883
58A9: tcall 10
58AA: adc   a,$5503+y
58AD: tcall 3
58AE: stop
58AF: notc
58B0: inc   $F3
58B2: cmp   a,$9A
58B4: mul   ya
58B5: or    a,$1D
58B7: mov   y,$E0+x
58B9: or    a,$31
58BB: asl   $AA
58BD: tcall 15
58BE: tcall 1
58BF: stop
58C0: nop
58C1: tcall 1
58C2: bra   $58a2
58C4: bbc7  $AA,$5907
58C7: inc   y
58C8: tcall 14
58C9: bbc1  $01,$58ca
58CC: beq   $58ce
58CE: subw  ya,$FF
58D0: and   a,$CD1F+x
58D3: bbc1  $2E,$58a3
58D6: daa   a
58D7: eor1  c,$1154,03
58DA: pop   x
58DB: bne   $590f
58DD: inc   y
58DE: bbs1  $F4,$588b
58E1: bpl   $58cf
58E3: bbc0  $30,$58c4
58E6: tcall 14
58E7: set2  $10
58E9: subw  ya,$ED
58EB: mov   a,y
58EC: clr0  $10
58EE: clr0  $2F
58F0: daa   a
58F1: or    a,$9A+x
58F3: tset1 $E0EC
58F6: set0  $30
58F8: tcall 15
58F9: cmp   x,$A6F0
58FC: nop
58FD: clr0  $22
58FF: clr1  $0E
5901: tcall 14
5902: clr1  $0C
5904: mov1  c,$04F2,01
5907: bpl   $5907
5909: daa   a
590A: set0  $20
590C: nop
590D: eor1  c,$1C1F,06
5910: eor   a,$AC2C+y
5913: mov   a,(x)+
5914: nop
5915: set2  $9A
5917: clr0  $2D
5919: daa   a
591A: tcall 15
591B: set2  $0F
591D: beq   $58fc
591F: subw  ya,$25
5921: setp
5922: dec   $D4+x
5924: cmp   a,$60
5926: mov   x,#$AC
5928: subw  ya,$13
592A: bbc2  $FE,$590e
592D: jmp   ($2001+x)
5930: mov   y,a
5931: subw  ya,$DE
5933: nop
5934: tcall 1
5935: or    a,$DC2D+x
5938: tcall 0
5939: bbs2  $AA,$594b
593C: brk
593D: beq   $5942
593F: bpl   $592d
5941: clr7  $23
5943: mov1  c,$1D21,07
5946: cbne  $03+x,$597a
5949: dbnz  y,$593c
594B: bpl   $58e7
594D: clrv
594E: clr0  $1F
5950: mov   $F0F0,y
5953: eor   a,$9A4D+x
5956: cmp   y,#$E3
5958: tcall 4
5959: bpl   $5949
595B: clrv
595C: bbc1  $4E,$5909
595F: pop   x
5960: set0  $22
5962: set1  $ED
5964: pop   x
5965: set1  $31
5967: subw  ya,$FE
5969: mov   a,y
596A: clr1  $FE
596C: set1  $20
596E: mov   $D0,y
5970: mov1  c,$1400,00
5973: clrp
5974: dec   y
5975: set0  $20
5977: nop
5978: tset1 $00AA
597B: clr0  $1F
597D: cbne  $02+x,$5993
5980: tcall 1
5981: push  psw
5982: mov1  c,$05CE,00
5985: call  $FF0E
5988: clr0  $FF
598A: set0  $AA
598C: bpl   $598b
598E: clrv
598F: brk
5990: bbs1  $30,$5970
5993: clr7  $9A
5995: call  $0D03
5998: daa   a
5999: bbc1  $5E,$5938
599C: bbs0  $AA,$59c1
599F: tcall 2
59A0: notc
59A1: cbne  $33+x,$59c4
59A4: stop
59A5: clrv
59A6: subw  ya,$10
59A8: cbne  $03,$59ec
59AB: dec   y
59AC: inc   $3711
59AF: mov1  c,$0C20,07
59B2: set0  $2F
59B4: tcall 15
59B5: jmp   ($12E0+x)
59B8: mov1  c,$1D1F,07
59BB: tcall 0
59BC: bbs1  $10,$59bc
59BF: mul   ya
59C0: and   a,(x)
59C1: subw  ya,$2D
59C3: notc
59C4: sleep
59C5: tcall 3
59C6: cbne  $26+x,$5a08
59C9: or1   c,$0EAA,06
59CC: set0  $22
59CE: bmi   $59ae
59D0: tcall 0
59D1: nop
59D2: tcall 0
59D3: subw  ya,$1F
59D5: mul   ya
59D6: bbs1  $3F,$59a8
59D9: beq   $5a0f
59DB: bvc   $5987
59DD: cbne  $C0+x,$5a24
59E0: cmp   x,$F0E0
59E3: bpl   $59d3
59E5: subw  ya,$57
59E7: tcall 3
59E8: mov   $139B,y
59EB: and   a,$DB20+y
59EE: eor1  c,$0C37,00
59F1: clr6  $41
59F3: cmp   y,#$17
59F5: jmp   $AADA
59F8: nop
59F9: bbs0  $20,$59e8
59FC: bne   $5a52
59FE: stop
59FF: tset1 $F0AA
5A02: jmp   ($14E0+x)
5A05: clrp
5A06: inc   y
5A07: daa   a
5A08: tcall 0
5A09: subw  ya,$43
5A0B: tclr1 $05DE
5A0E: push  psw
5A0F: tcall 14
5A10: clrp
5A11: pop   y
5A12: subw  ya,$12
5A14: clr1  $EE
5A16: clrv
5A17: bbs1  $40,$59d5
5A1A: tcall 10
5A1B: mov1  c,$0E52,00
5A1E: nop
5A1F: stop
5A20: nop
5A21: stop
5A22: bbs1  $30,$59cf
5A25: pop   x
5A26: daa   a
5A27: tcall 1
5A28: clr0  $00
5A2A: brk
5A2B: tcall 0
5A2C: jmp   ($D09A+x)
5A2F: tcall 1
5A30: sleep
5A31: set0  $41
5A33: push  psw
5A34: stop
5A35: or    a,$AA+x
5A37: bpl   $5a35
5A39: tcall 14
5A3A: bbs2  $FF,$5a2d
5A3D: brk
5A3E: sleep
5A3F: mov1  c,$0311,00
5A42: bmi   $5a20
5A44: clrv
5A45: clr0  $00
5A47: jmp   ($009A+x)
5A4A: bbs0  $3F,$5a0b
5A4D: tcall 3
5A4E: notc
5A4F: set0  $45
5A51: subw  ya,$FE
5A53: cbne  $33+x,$5a74
5A56: pop   x
5A57: clrv
5A58: cmp   a,$9A0D
5A5B: tcall 14
5A5C: dec   x
5A5D: mov   (x)+,a
5A5E: bbs1  $23,$5ab2
5A61: mov1  c,$1AA1,04
5A64: tcall 4
5A65: jmp   ($0200+x)
5A68: nop
5A69: tcall 4
5A6A: mov   $9A12,y
5A6D: mov   y,a
5A6E: clr7  $63
5A70: rol   $23DF
5A73: push  psw
5A74: cbne  $9A+x,$5a98
5A77: bbc0  $2F,$5a4a
5A7A: cbne  $AB,$5ac1
5A7D: bbs2  $9A,$5a9f
5A80: movw  $D0,ya
5A82: and   a,$FF
5A84: sleep
5A85: bbs1  $1F,$5a22
5A88: set1  $EC
5A8A: tcall 0
5A8B: mov   y,a
5A8C: set0  $46
5A8E: cmp   x,$9ABE
5A91: clr1  $2C
5A93: mov   a,(x)+
5A94: bbs2  $F0,$5ab7
5A97: beq   $5ac7
5A99: mov1  c,$13CE,00
5A9C: tcall 3
5A9D: tset1 $E0FF
5AA0: clr0  $0E
5AA2: subw  ya,$D1
5AA4: and   a,$1E
5AA6: bbc0  $0D,$5a89
5AA9: pop   y
5AAA: mov   a,$9A+x
5AAC: eor   a,$5C
5AAE: mov   a,(x)+
5AAF: clr0  $2E
5AB1: xcn   a
5AB2: bbs3  $EF,$5a5f
5AB5: bpl   $5aa8
5AB7: brk
5AB8: notc
5AB9: bbc0  $32,$5aaa
5ABC: sleep
5ABD: eor1  c,$0243,00
5AC0: notc
5AC1: pop   x
5AC2: and   a,$F45F+y
5AC5: cmp   x,$9A
5AC7: pop   y
5AC8: cbne  $12+x,$5b11
5ACB: call  $10BE
5ACE: cmp   x,$E0AA
5AD1: set1  $FF
5AD3: bpl   $5ae4
5AD5: jmp   ($04EE+x)
5AD8: subw  ya,$51
5ADA: not1  $12D1,00
5ADD: brk
5ADE: stop
5ADF: brk
5AE0: clr7  $9A
5AE2: tcall 3
5AE3: tcall 0
5AE4: bpl   $5af2
5AE6: mul   ya
5AE7: bbc0  $44,$5b38
5AEA: subw  ya,$DF
5AEC: beq   $5aec
5AEE: tcall 15
5AEF: tcall 4
5AF0: pop   y
5AF1: tcall 3
5AF2: sleep
5AF3: subw  ya,$0F
5AF5: mov   y,$6214
5AF8: mov   $31C1,y
5AFB: cmp   x,$DF9A
5AFE: tcall 1
5AFF: beq   $5b23
5B01: nop
5B02: set1  $0C
5B04: div   ya,x
5B05: subw  ya,$43
5B07: and   a,$21+x
5B09: dbnz  y,$5aea
5B0B: dbnz  y,$5b20
5B0D: clrp
5B0E: subw  ya,$FF
5B10: set0  $ED
5B12: jmp   ($F4F0+x)
5B15: tcall 3
5B16: dec   y
5B17: adc   a,$14EF+y
5B1A: set2  $EC
5B1C: tcall 15
5B1D: jmp   ($2202+x)
5B20: subw  ya,$22
5B22: dec   x
5B23: pop   a
5B24: bbs1  $23,$5b59
5B27: jmp   ($9ADB+x)
5B2A: daa   a
5B2B: and   a,$0F1F+x
5B2E: brk
5B2F: push  psw
5B30: beq   $5b43
5B32: adc   a,$44F1+y
5B35: bpl   $5b27
5B37: bbc0  $41,$5b27
5B3A: set7  $9A
5B3C: tset1 $1FF2
5B3F: bbs1  $0D,$5b10
5B42: set1  $22
5B44: subw  ya,$23
5B46: bmi   $5b04
5B48: mov   (x)+,a
5B49: cmp   a,$1F
5B4B: nop
5B4C: clrv
5B4D: eor1  c,$00DD,06
5B50: bbc2  $10,$5b70
5B53: ei
5B54: bmi   $5b67
5B56: eor1  c,$1DED,05
5B59: eor   a,$A249+y
5B5C: tcall 4
5B5D: eor   a,$AA19
5B60: stop
5B61: tcall 0
5B62: bpl   $5b77
5B64: clrp
5B65: mov   y,$D0+x
5B67: and   a,$8A
5B69: brk
5B6A: cmp   x,$EECC
5B6D: di
5B6E: cmp   a,($1F+x)
5B70: mov   $9A+x,y
5B72: clrv
5B73: bmi   $5b75
5B75: pop   y
5B76: beq   $5b8c
5B78: cmp   x,$9ACF
5B7B: tcall 3
5B7C: clr0  $0F
5B7E: sleep
5B7F: clr0  $0E
5B81: and   a,$65
5B83: mov1  c,$1FEC,05
5B86: set2  $10
5B88: bpl   $5b78
5B8A: nop
5B8B: stop
5B8C: subw  ya,$44
5B8E: call  $E1CD
5B91: bmi   $5ba3
5B93: dec   y
5B94: set0  $8A
5B96: clr2  $3B
5B98: div   ya,x
5B99: eor   a,$1D21
5B9C: pop   y
5B9D: eor   a,(x)
5B9E: mov1  c,$03FF,00
5BA1: tcall 3
5BA2: asl   $13CF
5BA5: tcall 1
5BA6: jmp   ($ED9A+x)
5BA9: daa   a
5BAA: nop
5BAB: or    a,$CA30+x
5BAE: set0  $11
5BB0: adc   a,$2D45+y
5BB3: mul   ya
5BB4: and   a,$32+x
5BB6: dbnz  y,$5ba9
5BB8: tcall 2
5BB9: mov1  c,$1F01,07
5BBC: set1  $0D
5BBE: tcall 0
5BBF: bbc1  $0E,$5b8f
5BC2: subw  ya,$22
5BC4: and   a,($1E)+y
5BC6: notc
5BC7: pop   x
5BC8: bpl   $5bec
5BCA: clr2  $96
5BCC: inc   x
5BCD: mov   a,(x)+
5BCE: set1  $44
5BD0: cbne  $BF,$5c17
5BD3: tcall 3
5BD4: subw  ya,$FF
5BD6: tcall 1
5BD7: bra   $5bab
5BD9: jmp   ($0E24+x)
5BDC: tcall 13
5BDD: subw  ya,$54
5BDF: rol   a
5BE0: cmp   y,#$E0
5BE2: eor   a,$DF4E
5BE5: mov   $01AA,y
5BE8: set0  $21
5BEA: inc   y
5BEB: tcall 15
5BEC: bpl   $5bef
5BEE: mov   y,a
5BEF: subw  ya,$E4
5BF1: clr2  $DE
5BF3: clrv
5BF4: tcall 1
5BF5: clrp
5BF6: di
5BF7: tcall 2
5BF8: mov1  c,$1F11,00
5BFB: beq   $5c0f
5BFD: bpl   $5bfc
5BFF: sleep
5C00: and   a,$9A
5C02: cbne  $FF,$5be1
5C05: tcall 14
5C06: bpl   $5c5d
5C08: mov   y,$B0+x
5C0A: adc   a,$1211+y
5C0D: clrp
5C0E: pop   x
5C0F: and   a,$0F42+x
5C12: clrv
5C13: subw  ya,$21
5C15: mov   a,y
5C16: bbc0  $33,$5c2a
5C19: mov   y,$4302
5C1C: subw  ya,$EE
5C1E: mov   $3124,y
5C21: beq   $5c0e
5C23: clrv
5C24: tcall 15
5C25: subw  ya,$46
5C27: eor   ($F0),($B0)
5C2A: clr7  $2C
5C2C: tcall 13
5C2D: bbs2  $9A,$5c1e
5C30: tset1 $3200
5C33: dec   y
5C34: mov   a,$62
5C36: set1  $9A
5C38: notc
5C39: bne   $5c6e
5C3B: cmp   x,$CD
5C3D: bbc7  $30,$5c42
5C40: subw  ya,$0D
5C42: mov   $47F0,y
5C45: tclr1 $FFBD
5C48: nop
5C49: adc   a,$E00F+y
5C4C: and   a,$42+x
5C4E: bpl   $5c3f
5C50: and   a,$3C
5C52: subw  ya,$D2
5C54: cmp   a,($21+x)
5C56: asl   $CD+x
5C58: or    a,$EC40+y
5C5B: subw  ya,$F0
5C5D: tcall 0
5C5E: bbs1  $3D,$5c0d
5C61: tcall 11
5C62: eor   a,$9A61+x
5C65: dec   y
5C66: mov   a,y
5C67: beq   $5c69
5C69: clr0  $10
5C6B: brk
5C6C: stop
5C6D: mov1  c,$130F,00
5C70: mov   y,a
5C71: tcall 13
5C72: set2  $21
5C74: nop
5C75: mov   a,y
5C76: mov1  c,$0202,01
5C79: stop
5C7A: stop
5C7B: beq   $5ca0
5C7D: jmp   ($AAEC+x)
5C80: bne   $5ca6
5C82: set1  $0D
5C84: sleep
5C85: sleep
5C86: tcall 0
5C87: tcall 2
5C88: sbc   a,(x)
5C89: tcall 2
5C8A: tcall 1
5C8B: bpl   $5c8d
5C8D: clr0  $2F
5C8F: mov   $9AE3,y
5C92: clr2  $1D
5C94: mov   $43D2,y
5C97: call  $BEEE
5C9A: mov1  c,$1023,01
5C9D: mov   a,y
5C9E: pop   x
5C9F: clr1  $33
5CA1: jmp   ($9AED+x)
5CA4: mov   sp,x
5CA5: tcall 15
5CA6: eor   a,$2F+x
5CA8: cbne  $00+x,$5cca
5CAB: set0  $AA
5CAD: jmp   ($24DD+x)
5CB0: clr2  $EF
5CB2: stop
5CB3: sleep
5CB4: bbc0  $AA,$5cd7
5CB7: tset1 $15DE
5CBA: bmi   $5cb7
5CBC: cbne  $03+x,$5c69
5CBF: bbc1  $3F,$5ca0
5CC2: notc
5CC3: beq   $5ce8
5CC5: tcall 1
5CC6: mov   y,a
5CC7: mov1  c,$11F1,00
5CCA: beq   $5ccc
5CCC: pop   y
5CCD: or    a,$41
5CCF: jmp   ($FFAA+x)
5CD2: dbnz  y,$5cd5
5CD4: clr1  $FF
5CD6: cbne  $12+x,$5d1b
5CD9: mov1  c,$1CED,06
5CDC: tcall 0
5CDD: eor   a,$20
5CDF: dbnz  y,$5cbe
5CE1: bne   $5c7d
5CE3: eor   a,$63+x
5CE5: mov   $C1,y
5CE7: set2  $0D
5CE9: beq   $5ce8
5CEB: subw  ya,$13
5CED: cmp   a,(x)
5CEE: beq   $5cff
5CF0: notc
5CF1: tcall 12
5CF2: eor   a,$4C
5CF4: mov1  c,$12EF,07
5CF7: clr1  $0C
5CF9: cbne  $E1+x,$5d3f
5CFC: tcall 2
5CFD: mov1  c,$1C0F,06
5D00: daa   a
5D01: or    a,$33
5D03: asl   $E0
5D05: bbc0  $9A,$5d15
5D08: di
5D09: cbne  $E4,$5d5f
5D0C: bra   $5d2e
5D0E: mov   y,a
5D0F: subw  ya,$CD
5D11: or    a,$CE40+y
5D14: bpl   $5d2a
5D16: dec   x
5D17: inc   a
5D18: mov1  c,$14FF,00
5D1B: tcall 3
5D1C: jmp   ($DEDD+x)
5D1F: set0  $33
5D21: sbc   a,(x)
5D22: bbs2  $ED,$5d28
5D25: tcall 4
5D26: pop   y
5D27: beq   $5d29
5D29: bbs1  $9A,$5d2c
5D2C: eor   a,$ED
5D2E: mov   $13,y
5D30: tcall 5
5D31: sleep
5D32: tcall 0
5D33: mov1  c,$1000,00
5D36: pop   y
5D37: stop
5D38: set0  $43
5D3A: brk
5D3B: notc
5D3C: mov1  c,$01EE,07
5D3F: bbc1  $2E,$5d20
5D42: or    a,$1E+x
5D44: cbne  $9A+x,$5d89
5D47: tcall 2
5D48: tcall 1
5D49: clrv
5D4A: cmp   a,$1D
5D4C: mov   $9AD2,y
5D4F: clr1  $10
5D51: tcall 1
5D52: dbnz  y,$5d44
5D54: stop
5D55: tcall 14
5D56: pop   y
5D57: subw  ya,$56
5D59: bvc   $5d18
5D5B: mov1  $16D0,01,c
5D5E: tcall 2
5D5F: inc   $AA+x
5D61: bbc0  $3D,$5d33
5D64: clr0  $11
5D66: jmp   ($24FF+x)
5D69: subw  ya,$2E
5D6B: mov   y,$CE
5D6D: bbs1  $32,$5d91
5D70: mov   y,a
5D71: mov   (x)+,a
5D72: subw  ya,$31
5D74: brk
5D75: dbnz  y,$5d6d
5D77: tcall 7
5D78: mov   $ED+x,y
5D7A: mov   a,(x)+
5D7B: mov1  c,$0011,01
5D7E: dbnz  y,$5d84
5D80: cbne  $CE,$5d94
5D83: set1  $9A
5D85: nop
5D86: mov   a,y
5D87: and   a,$ED62
5D8A: dec   a
5D8B: set0  $45
5D8D: subw  ya,$12
5D8F: asl   $AD+x
5D91: or    a,$1D00+x
5D94: tcall 14
5D95: cmp   a,$9A
5D97: cbne  $0D+x,$5d57
5D9A: clr0  $00
5D9C: nop
5D9D: bbc0  $7D,$5d4a
5DA0: mov   sp,x
5DA1: bbc0  $20,$5dd3
5DA4: dbnz  y,$5d99
5DA6: clr1  $1E
5DA8: subw  ya,$9C
5DAA: tcall 13
5DAB: eor   a,$43
5DAD: dbnz  y,$5d58
5DAF: or    a,$40+x
5DB1: subw  ya,$00
5DB3: mul   ya
5DB4: bbs2  $0F,$5db6
5DB7: mov   a,y
5DB8: brk
5DB9: sleep
5DBA: mov1  c,$0301,01
5DBD: jmp   ($12CC+x)
5DC0: tcall 2
5DC1: tcall 1
5DC2: inc   y
5DC3: mov1  c,$1401,01
5DC6: jmp   ($F0DC+x)
5DC9: bbc0  $21,$5deb
5DCC: subw  ya,$AA
5DCE: mov   $0F52,a
5DD1: pop   y
5DD2: bbs0  $00,$5df5
5DD5: subw  ya,$EC
5DD7: sleep
5DD8: cbne  $03+x,$5e2f
5DDB: push  x
5DDC: mov1  c,$0AC5,05
5DDF: tcall 2
5DE0: tcall 2
5DE1: dbnz  y,$5db3
5DE3: bbc1  $40,$5dc2
5DE6: tcall 13
5DE7: mov1  c,$0211,01
5DEA: bpl   $5dd8
5DEC: beq   $5e10
5DEE: tcall 0
5DEF: tset1 $F1AA
5DF2: nop
5DF3: tcall 1
5DF4: stop
5DF5: stop
5DF6: pop   y
5DF7: tcall 0
5DF8: and   a,$AA
5DFA: bpl   $5de8
5DFC: clrv
5DFD: bbc1  $01,$5e1d
5E00: bne   $5e16
5E02: mov1  c,$1D22,07
5E05: daa   a
5E06: tcall 0
5E07: clr0  $30
5E09: cbne  $F0+x,$5da6
5E0C: tcall 1
5E0D: bbc1  $0E,$5df0
5E10: sleep
5E11: and   a,$0F
5E13: notc
5E14: mov1  c,$00EF,07
5E17: and   a,$4F
5E19: cbne  $EF+x,$5e2e
5E1C: tcall 3
5E1D: mov1  c,$0D1F,06
5E20: bbs1  $31,$5e32
5E23: cbne  $10+x,$5e28
5E26: subw  ya,$32
5E28: mov   y,$F0
5E2A: nop
5E2B: bbs0  $40,$5e1d
5E2E: dec   y
5E2F: mov1  c,$0102,01
5E32: dbnz  y,$5e22
5E34: dbnz  y,$5e4b
5E36: setp
5E37: mov   y,a
5E38: subw  ya,$CC
5E3A: or    a,$3052
5E3D: mov1  c,$03E6,03
5E40: cbne  $9A,$5e1f
5E43: tcall 13
5E44: clr0  $32
5E46: push  psw
5E47: tcall 13
5E48: jmp   ($9AD1+x)
5E4B: bbs3  $0E,$5e2a
5E4E: bbc5  $73,$5e4d
5E51: cbne  $BC+x,$5dfe
5E54: bbs0  $53,$5e45
5E57: cbne  $01+x,$5e7d
5E5A: tcall 1
5E5B: mov   y,$E29A
5E5E: eor   a,$12+x
5E60: inc   y
5E61: daa   a
5E62: set0  $22
5E64: tset1 $F1AA
5E67: jmp   ($24D0+x)
5E6A: bpl   $5e58
5E6C: sleep
5E6D: and   a,$AA+x
5E6F: cmp   x,$FEEE
5E72: bbs7  $42,$5e94
5E75: notc
5E76: tcall 14
5E77: subw  ya,$53
5E79: tcall 5
5E7A: mov   $D2+x,y
5E7C: tcall 2
5E7D: bbc1  $1E,$5e5e
5E80: subw  ya,$E1
5E82: tcall 3
5E83: stop
5E84: bbs0  $00,$5e53
5E87: eor   a,$AA42
5E8A: dbnz  y,$5e59
5E8C: bbs1  $30,$5e7e
5E8F: pop   y
5E90: clrv
5E91: and   a,$9A+x
5E93: bmi   $5e6e
5E95: bne   $5ecb
5E97: bbs2  $FA,$5e6a
5E9A: bpl   $5e36
5E9C: and   a,$2F+x
5E9E: sleep
5E9F: daa   a
5EA0: tcall 3
5EA1: dbnz  y,$5ea5
5EA3: setp
5EA4: mov1  c,$14EE,07
5EA7: tcall 2
5EA8: cmp   x,$E4DC
5EAB: tcall 3
5EAC: tset1 $CC9A
5EAF: clr6  $34
5EB1: setp
5EB2: notc
5EB3: bcs   $5ee7
5EB5: and   a,$9A+x
5EB7: push  psw
5EB8: mul   ya
5EB9: brk
5EBA: and   a,$0010
5EBD: pop   y
5EBE: set0  $AA
5EC0: stop
5EC1: clr7  $21
5EC3: mov   y,a
5EC4: tcall 0
5EC5: set1  $10
5EC7: mov   $9A+x,y
5EC9: tcall 13
5ECA: cmp   a,$BB0E+y
5ECD: tcall 15
5ECE: bbs1  $12,$5ede
5ED1: subw  ya,$DF
5ED3: bbc0  $22,$5f05
5ED6: cbne  $FE+x,$5eec
5ED9: setp
5EDA: subw  ya,$01
5EDC: dbnz  y,$5edf
5EDE: inc   y
5EDF: set7  $63
5EE1: mov   a,y
5EE2: set7  $AA
5EE4: tcall 2
5EE5: clrp
5EE6: mov   y,$22C1
5EE9: call  $F1ED
5EEC: subw  ya,$40
5EEE: nop
5EEF: jmp   ($13EE+x)
5EF2: bmi   $5f04
5EF4: dbnz  y,$5e90
5EF6: dbnz  y,$5eda
5EF8: set2  $01
5EFA: bpl   $5efa
5EFC: mov   y,a
5EFD: tcall 12
5EFE: mov1  c,$1E32,00
5F01: beq   $5f05
5F03: tcall 2
5F04: mov   y,$03FE
5F07: subw  ya,$41
5F09: movw  $F2,ya
5F0B: bvc   $5ecc
5F0D: tcall 2
5F0E: stop
5F0F: bbs0  $8A,$5f81
5F12: bbc6  $1E,$5edf
5F15: tcall 14
5F16: eor   a,$3432+x
5F19: subw  ya,$FD
5F1B: mov   a,y
5F1C: sleep
5F1D: eor   a,$DD21
5F20: set1  $32
5F22: subw  ya,$DD
5F24: mov   sp,x
5F25: clr7  $42
5F27: notc
5F28: mov   $40+x,a
5F2A: inc   $9A+x
5F2C: set1  $1F
5F2E: bbs0  $4F,$5f20
5F31: tcall 1
5F32: notc
5F33: tcall 14
5F34: subw  ya,$21
5F36: set1  $22
5F38: push  psw
5F39: mov   x,#$D1
5F3B: clr1  $42
5F3D: subw  ya,$EE
5F3F: mov   a,$20+x
5F41: pop   y
5F42: notc
5F43: tcall 13
5F44: set1  $FD
5F46: subw  ya,$03
5F48: bvc   $5ef6
5F4A: set7  $2F
5F4C: or    a,$CD40+x
5F4F: subw  ya,$21
5F51: inc   y
5F52: tcall 15
5F53: tcall 1
5F54: set1  $22
5F56: jmp   ($9ACB+x)
5F59: bne   $5f7e
5F5B: and   a,$1D
5F5D: clr7  $4F
5F5F: das   a
5F60: bpl   $5f08
5F62: notc
5F63: mov   a,y
5F64: mov   a,y
5F65: tcall 14
5F66: and   a,$1D+x
5F68: mov   x,#$F0
5F6A: mov1  c,$0F02,02
5F6D: pop   y
5F6E: tcall 0
5F6F: brk
5F70: beq   $5f82
5F72: tcall 0
5F73: subw  ya,$42
5F75: jmp   ($CFDD+x)
5F78: tcall 1
5F79: and   a,$20+x
5F7B: tcall 14
5F7C: subw  ya,$4E
5F7E: pop   a
5F7F: tcall 3
5F80: notc
5F81: beq   $5f72
5F83: and   a,$60+x
5F85: subw  ya,$BA
5F87: ei
5F88: set1  $25
5F8A: set3  $C9
5F8C: tcall 14
5F8D: cbne  $9A,$5f71
5F90: clrp
5F91: set0  $42
5F93: beq   $5f91
5F95: cbne  $F2+x,$5f32
5F98: bbc1  $31,$5f8b
5F9B: call  $23AD
5F9E: pop   y
5F9F: stop
5FA0: mov1  c,$13FF,00
5FA3: tcall 2
5FA4: inc   y
5FA5: pop   y
5FA6: tcall 0
5FA7: set1  $42
5FA9: subw  ya,$D9
5FAB: tcall 10
5FAC: cbne  $F2,$5fcf
5FAF: clr7  $40
5FB1: tcall 0
5FB2: subw  ya,$0D
5FB4: cbne  $0F+x,$5fda
5FB7: bbs1  $20,$5fd9
5FBA: inc   $9A
5FBC: bbs1  $2D,$5f9f
5FBF: mov   a,y
5FC0: and   a,$ED50+x
5FC3: inc   $AA
5FC5: tcall 0
5FC6: bbc0  $33,$5fd5
5FC9: mul   ya
5FCA: bpl   $5fbe
5FCC: bra   $5f68
5FCE: clr7  $31
5FD0: clr6  $2E
5FD2: daa   a
5FD3: sleep
5FD4: bbs0  $24,$5f71
5FD7: tcall 4
5FD8: dbnz  y,$5f95
5FDA: or    a,$EE1F
5FDD: mov   y,a
5FDE: or    a,$20AA+y
5FE1: stop
5FE2: pop   y
5FE3: clrv
5FE4: bbs1  $42,$5ff5
5FE7: mov   x,#$9A
5FE9: nop
5FEA: and   a,$30
5FEC: tcall 13
5FED: tcall 3
5FEE: clrv
5FEF: tcall 3
5FF0: notc
5FF1: subw  ya,$EF
5FF3: tcall 15
5FF4: and   a,$52+x
5FF6: sleep
5FF7: inc   $02+x
5FF9: call  $FFAA
5FFC: nop
5FFD: tcall 0
5FFE: bpl   $6000
6000: push  psw
6001: cbne  $35+x,$5f9e
6004: tcall 4
6005: tclr1 $C199
6008: and   a,$DF5F
600B: bbc1  $9A,$5ffc
600E: and   a,$FD
6010: cbne  $00+x,$6038
6013: bbc2  $0B,$5fb0
6016: mov   $20F3,y
6019: pop   y
601A: nop
601B: tcall 1
601C: bpl   $600f
601E: mov1  c,$0E0F,06
6021: and   a,$31
6023: tcall 0
6024: mov   y,$14DF
6027: subw  ya,$31
6029: daa   a
602A: set1  $0D
602C: or    a,$4D
602E: das   a
602F: beq   $5fdb
6031: clr0  $32
6033: stop
6034: daa   a
6035: beq   $6058
6037: dbnz  y,$603a
6039: mov1  c,$1F10,07
603C: bpl   $605d
603E: cbne  $13+x,$6072
6041: bpl   $5fed
6043: mov   y,a
6044: mul   ya
6045: clr0  $30
6047: brk
6048: tcall 1
6049: stop
604A: set0  $9A
604C: bmi   $600a
604E: nop
604F: or    a,$0B64
6052: das   a
6053: tcall 0
6054: subw  ya,$02
6056: mov   y,$3F13
6059: sleep
605A: tcall 14
605B: tcall 0
605C: mov   $AA+x,y
605E: clr0  $31
6060: nop
6061: push  psw
6062: cbne  $13+x,$6076
6065: brk
6066: subw  ya,$03
6068: asl   $4F14
606B: mov   $21E1,y
606E: cmp   a,$0D9A
6071: mov   sp,x
6072: jmp   ($0D10+x)
6075: mov   a,$CD30+x
6078: subw  ya,$0F
607A: tcall 0
607B: stop
607C: clr7  $43
607E: clrp
607F: notc
6080: inc   $049A
6083: tcall 5
6084: stop
6085: clr0  $0E
6087: mov   a,$32
6089: mov   y,$9A
608B: di
608C: and   a,$34
608E: push  a
608F: pop   x
6090: beq   $6083
6092: mov   y,a
6093: subw  ya,$04
6095: jmp   $FFCE
6098: clrv
6099: tcall 2
609A: cmp   x,$9A15
609D: bpl   $60ab
609F: mov   $32F3,y
60A2: jmp   ($1B03+x)
60A5: subw  ya,$F2
60A7: set3  $DE
60A9: mov   sp,x
60AA: and   a,$33+x
60AC: clrp
60AD: mov   x,#$9A
60AF: tset1 $0EF0
60B2: mov   a,$DC41+x
60B5: dbnz  y,$6087
60B7: subw  ya,$24
60B9: cbne  $F2,$60dd
60BC: dbnz  y,$608b
60BE: nop
60BF: set1  $9A
60C1: bra   $60c6
60C3: rol   $43C3
60C6: asl   a
60C7: mov   $9A06,y
60CA: tcall 3
60CB: tcall 2
60CC: dbnz  y,$60bd
60CE: daa   a
60CF: beq   $60f3
60D1: tcall 4
60D2: subw  ya,$DD
60D4: pop   y
60D5: pop   x
60D6: eor   a,($2E)+y
60D8: daa   a
60D9: tcall 1
60DA: cbne  $9A,$60cb
60DD: clrv
60DE: tcall 1
60DF: set0  $13
60E1: push  psw
60E2: bne   $6139
60E4: subw  ya,$FF
60E6: mov   $4202,y
60E9: clr0  $0E
60EB: dbnz  y,$60bb
60ED: mov1  c,$1200,00
60F0: bpl   $6100
60F2: dbnz  y,$60d4
60F4: bbs1  $3F,$6091
60F7: mov   x,#$E2
60F9: tcall 1
60FA: brk
60FB: pop   y
60FC: tcall 15
60FD: nop
60FE: eor   a,$9A
6100: tset1 $55BF
6103: push  a
6104: mov   y,$22E2
6107: set1  $9A
6109: clrp
610A: notc
610B: das   a
610C: tcall 14
610D: eor   a,$1F
610F: nop
6110: movw  $AA,ya
6112: sleep
6113: and   a,$EE20
6116: stop
6117: tcall 1
6118: bpl   $6118
611A: subw  ya,$1F
611C: beq   $6163
611E: rol   $36DD
6121: clrp
6122: notc
6123: subw  ya,$D0
6125: clr0  $23
6127: bmi   $6117
6129: mov   $F0,y
612B: eor   a,$AA
612D: jmp   ($0D00+x)
6130: di
6131: bbc1  $30,$6122
6134: clrv
6135: subw  ya,$02
6137: tcall 5
6138: mov   $EFF2,y
613B: and   a,$BE2E+y
613E: subw  ya,$33
6140: tcall 4
6141: pop   y
6142: sleep
6143: beq   $618a
6145: clrp
6146: notc
6147: mov1  c,$10EF,07
614A: bbc0  $0F,$614f
614D: inc   y
614E: bne   $6174
6150: subw  ya,$43
6152: movw  $DB,ya
6154: or    a,$EB43
6157: tcall 14
6158: stop
6159: subw  ya,$14
615B: jmp   $24BE
615E: tcall 2
615F: cmp   x,$E0DF
6162: subw  ya,$26
6164: jmp   $DDDE
6167: dbnz  y,$619e
6169: tset1 $AA12
616C: dbnz  y,$612e
616E: clr1  $31
6170: dbnz  y,$6150
6172: clr7  $41
6174: subw  ya,$CC
6176: tcall 0
6177: dbnz  y,$616d
6179: tcall 6
617A: inc   $3143
617D: mov1  c,$1E00,07
6180: brk
6181: bbc0  $30,$6172
6184: tset1 $9A00
6187: bbc0  $2D,$617d
618A: or    (x),(y)
618B: mov   a,(x)+
618C: eor   a,($13)+y
618E: asl   $CA9A
6191: mov   $54+x,a
6193: inc   y
6194: tcall 14
6195: brk
6196: tcall 15
6197: tcall 5
6198: subw  ya,$CD
619A: and   a,$1010+x
619D: notc
619E: clrv
619F: and   a,$50+x
61A1: subw  ya,$CC
61A3: tcall 15
61A4: stop
61A5: clr0  $1D
61A7: clr7  $0D
61A9: bne   $6145
61AB: clr1  $32
61AD: brk
61AE: inc   $D2+x
61B0: bbc2  $FE,$6194
61B3: eor1  c,$013E,05
61B6: bbc2  $CF,$620f
61B9: call  $DA11
61BC: subw  ya,$F0
61BE: and   a,$CB31
61C1: clr7  $10
61C3: nop
61C4: tset1 $E29A
61C7: tset1 $1200
61CA: clr0  $1E
61CC: mov   y,$D2
61CE: eor1  c,$0F34,01
61D1: beq   $6201
61D3: mov   (x)+,a
61D4: setp
61D5: mov   a,$9A52
61D8: tcall 1
61D9: beq   $61e8
61DB: clr7  $12
61DD: setp
61DE: mov   a,y
61DF: clr6  $9A
61E1: bmi   $61e3
61E3: pop   y
61E4: clrv
61E5: bpl   $6208
61E7: beq   $61eb
61E9: subw  ya,$3F
61EB: mov   $01F0,y
61EE: tcall 2
61EF: nop
61F0: nop
61F1: daa   a
61F2: subw  ya,$10
61F4: bbs7  $41,$6208
61F7: stop
61F8: stop
61F9: tcall 0
61FA: set1  $9A
61FC: clrp
61FD: dec   y
61FE: tcall 14
61FF: bbc2  $FE,$61ef
6202: dbnz  y,$61f7
6204: subw  ya,$52
6206: mov   y,$4002
6209: pop   x
620A: sleep
620B: beq   $6220
620D: subw  ya,$10
620F: nop
6210: pop   y
6211: tset1 $51F4
6214: tcall 0
6215: tset1 $EE9A
6218: bbs1  $11,$624a
621B: mov   a,y
621C: set7  $34
621E: dec   x
621F: mov1  c,$1FEF,07
6222: tcall 0
6223: tcall 3
6224: stop
6225: tcall 15
6226: bpl   $6227
6228: subw  ya,$0F
622A: mul   ya
622B: set1  $31
622D: clrv
622E: beq   $622c
6230: mov   a,$529A
6233: nop
6234: nop
6235: pop   x
6236: and   a,$2F+x
6238: nop
6239: notc
623A: mov1  c,$03F0,01
623D: brk
623E: sleep
623F: dbnz  y,$6233
6241: bbc1  $FC,$61de
6244: clr7  $41
6246: clrv
6247: mov   y,$15ED
624A: set1  $FF
624C: subw  ya,$0F
624E: notc
624F: bbs7  $53,$6252
6252: nop
6253: pop   y
6254: or    a,$9A+x
6256: clrp
6257: stop
6258: dbnz  y,$623a
625A: and   a,$DD4D
625D: mov   $01AA,y
6260: set2  $0E
6262: bne   $6285
6264: nop
6265: tset1 $9ADF
6268: bbc0  $41,$628a
626B: stop
626C: mov   y,a
626D: clr6  $64
626F: stop
6270: subw  ya,$11
6272: cbne  $23+x,$62b4
6275: clrv
6276: brk
6277: notc
6278: and   a,(x)
6279: subw  ya,$2F
627B: notc
627C: dec   y
627D: mov   a,$45
627F: asl   $DF+x
6281: bbs2  $9A,$6282
6284: dbnz  y,$6262
6286: or    a,$21
6288: tcall 1
6289: stop
628A: mov   y,a
628B: adc   a,$15BB+y
628E: bbs2  $44,$62d4
6291: and   a,$43+x
6293: bpl   $622f
6295: bpl   $6265
6297: and   a,$3F
6299: pop   y
629A: mov   a,y
629B: tcall 14
629C: bbc2  $9A,$62ce
629F: bcs   $62d3
62A1: dbnz  y,$6293
62A3: mov   $2003,y
62A6: subw  ya,$22
62A8: stop
62A9: push  psw
62AA: tcall 12
62AB: eor   a,$FE
62AD: bbs0  $20,$624a
62B0: nop
62B1: stop
62B2: tcall 1
62B3: jmp   ($05EC+x)
62B6: tcall 2
62B7: mov   y,a
62B8: eor1  c,$01CC,05
62BB: cmp   a,(x)
62BC: call  $54FC
62BF: mov   $DF+x,y
62C1: eor1  c,$02E9,07
62C4: bbs1  $54,$62d4
62C7: notc
62C8: mov   a,(x)+
62C9: eor   a,$1D8A
62CC: or    a,$0C64+x
62CF: mov   $27,y
62D1: bmi   $626e
62D3: eor1  c,$1202,02
62D6: stop
62D7: mov   $25DD,y
62DA: clr1  $F3
62DC: subw  ya,$10
62DE: inc   y
62DF: beq   $62ef
62E1: stop
62E2: bbc7  $41,$62d5
62E5: subw  ya,$FE
62E7: beq   $62eb
62E9: brk
62EA: bbs0  $53,$62fb
62ED: cmp   y,#$9A
62EF: and   a,$4F
62F1: cbne  $F1+x,$6304
62F4: tcall 0
62F5: tset1 $9ADF
62F8: set0  $11
62FA: tcall 2
62FB: bra   $62db
62FD: clrv
62FE: brk
62FF: sleep
6300: subw  ya,$02
6302: tcall 4
6303: tcall 14
6304: brk
6305: beq   $62e7
6307: cbne  $04,$62b4
630A: set1  $1F
630C: mov   y,$1004
630F: stop
6310: nop
6311: beq   $62ad
6313: bbs1  $FD,$6315
6316: beq   $6328
6318: and   a,$2F+x
631A: mov   $8A,y
631C: nop
631D: cbne  $EB,$6306
6320: cmp   a,$CD+x
6322: tcall 3
6323: inc   y
6324: mov1  c,$0FF1,00
6327: set0  $32
6329: brk
632A: cbne  $02+x,$636c
632D: eor1  c,$0BC1,00
6330: cbne  $46+x,$6340
6333: pop   x
6334: sleep
6335: bbc7  $9A,$636d
6338: cbne  $CC,$631d
633B: brk
633C: sleep
633D: tcall 0
633E: set2  $9A
6340: sleep
6341: clr0  $FE
6343: clrv
6344: brk
6345: or    a,$55
6347: rol   a
6348: subw  ya,$AA
634A: mov   a,($5F)+y
634C: clrv
634D: dec   x
634E: di
634F: clr1  $1E
6351: subw  ya,$FF
6353: dbnz  y,$6356
6355: bbc2  $20,$6313
6358: tcall 15
6359: cbne  $8A,$631a
635C: bbs1  $36,$634a
635F: or    a,$EE0C+x
6362: mov   y,a
6363: subw  ya,$13
6365: cmp   a,$2E
6367: mov1  c,$1E14,02
636A: set7  $1D
636C: subw  ya,$DF
636E: set1  $0F
6370: nop
6371: mov   y,$3305
6374: jmp   ($EA9A+x)
6377: bbs7  $0E,$634b
637A: clrp
637B: clr0  $1E
637D: clr7  $9A
637F: jmp   ($FFEF+x)
6382: or    a,$2C54
6385: das   a
6386: bbc7  $9A,$63b9
6389: tcall 14
638A: cmp   x,$BF
638C: set1  $0E
638E: bbc7  $FC,$632b
6391: bbs7  $62,$6384
6394: notc
6395: tcall 13
6396: cbne  $DF,$63ab
6399: subw  ya,$13
639B: tset1 $21F0
639E: notc
639F: beq   $63b5
63A1: bbc2  $9A,$63b2
63A4: pop   x
63A5: tcall 1
63A6: clrp
63A7: tcall 15
63A8: bpl   $6388
63AA: clr7  $9A
63AC: cmp   x,$1DF2
63AF: bbs7  $43,$63af
63B2: push  psw
63B3: beq   $634f
63B5: nop
63B6: daa   a
63B7: tcall 2
63B8: set0  $2F
63BA: di
63BB: set2  $EC
63BD: subw  ya,$E0
63BF: and   a,$0D42
63C2: bne   $63d5
63C4: nop
63C5: tcall 15
63C6: subw  ya,$20
63C8: notc
63C9: clr7  $0E
63CB: clr7  $1F
63CD: tcall 15
63CE: clr1  $8A
63D0: mov   y,a
63D1: sleep
63D2: mov   sp,x
63D3: bra   $63b3
63D5: or    a,$11
63D7: bvc   $6373
63D9: mov   a,y
63DA: and   a,$FC+x
63DC: bne   $6413
63DE: setp
63DF: pop   y
63E0: set7  $8A
63E2: jmp   $EFFE
63E5: and   a,$91FB+x
63E8: rol   a
63E9: clr6  $8A
63EB: bbs2  $FF,$6412
63EE: asl   $EEFF
63F1: stop
63F2: dbnz  y,$638e
63F4: nop
63F5: tcall 1
63F6: tcall 2
63F7: pop   x
63F8: and   a,$FB+x
63FA: tcall 13
63FB: eor   a,$2F9A+x
63FE: cbne  $02+x,$6431
6401: stop
6402: sleep
6403: bbc0  $3C,$6390
6406: div   ya,x
6407: brk
6408: sleep
6409: cmp   a,$14FC+y
640C: asl   $96E0
640F: tcall 2
6410: stop
6411: brk
6412: pop   y
6413: clrv
6414: clr1  $FD
6416: or    a,$FB9A
6419: set6  $46
641B: cmp   x,$F3EE
641E: tcall 4
641F: notc
6420: subw  ya,$FF
6422: bbs1  $1E,$63f3
6425: nop
6426: tcall 14
6427: and   a,$8A0E
642A: beq   $6459
642C: tcall 12
642D: stop
642E: dbnz  y,$6462
6430: mov   sp,x
6431: or    a,$9A
6433: bra   $6405
6435: and   a,$0A
6437: set7  $44
6439: cbne  $DE,$63d6
643C: bbs0  $41,$643c
643F: bne   $6454
6441: cmp   x,$CE
6443: clrv
6444: subw  ya,$0F
6446: and   a,$D02E+x
6449: nop
644A: stop
644B: nop
644C: clrv
644D: eor1  c,$0A43,06
6450: or    a,$C13B
6453: cmp   a,$B4EA
6456: subw  ya,$34
6458: push  a
6459: cbne  $04+x,$648e
645C: mov   y,a
645D: sleep
645E: set1  $9A
6460: nop
6461: mov   y,$11EF
6464: or    a,$EE3E+x
6467: nop
6468: eor1  c,$0FEE,00
646B: stop
646C: cmp   a,$AA
646E: or    a,$0A+x
6470: sbc   a,($9A)+y
6472: tcall 3
6473: dbnz  y,$6476
6475: set1  $1F
6477: daa   a
6478: tcall 1
6479: set2  $9A
647B: push  psw
647C: tcall 12
647D: clrp
647E: clrp
647F: mov   y,$20C0
6482: bbc1  $8A,$64b5
6485: pop   x
6486: stop
6487: pop   x
6488: nop
6489: clr7  $53
648B: mov1  c,$1196,07
648E: asl   $43BE
6491: dbnz  y,$6496
6493: eor   a,$43+x
6495: subw  ya,$FE
6497: bbs0  $32,$6497
649A: clrv
649B: tcall 3
649C: set7  $EB
649E: subw  ya,$DF
64A0: and   a,$11
64A2: clrp
64A3: stop
64A4: beq   $6494
64A6: tcall 15
64A7: subw  ya,$01
64A9: bbc1  $DC,$64bc
64AC: mov   y,a
64AD: mov   a,$51
64AF: pop   x
64B0: eor1  c,$0D75,01
64B3: tcall 14
64B4: sleep
64B5: or    a,$61+x
64B7: dec   y
64B8: mov   a,$2E9A
64BB: nop
64BC: inc   y
64BD: bcs   $64f2
64BF: bmi   $64c2
64C1: beq   $645d
64C3: tset1 $01DE
64C6: set0  $32
64C8: notc
64C9: tcall 15
64CA: mov   y,$F49A
64CD: clrc
64CE: cbne  $34+x,$64de
64D1: beq   $64e3
64D3: set0  $9A
64D5: bmi   $64b5
64D7: set1  $10
64D9: clrv
64DA: mov   y,$35DF
64DD: subw  ya,$20
64DF: stop
64E0: tcall 1
64E1: tset1 $F0DD
64E4: and   a,$30
64E6: subw  ya,$EF
64E8: sleep
64E9: mov   y,a
64EA: mov   a,$31+x
64EC: stop
64ED: bbc1  $FC,$647a
64F0: nop
64F1: tcall 3
64F2: bbc0  $3E,$64c4
64F5: eor   a,$0E+x
64F7: asl   $DE9A
64FA: di
64FB: eor   a,$E02E
64FE: tcall 2
64FF: stop
6500: mov   y,$E09A
6503: and   a,$E030
6506: cbne  $FF+x,$64eb
6509: set2  $8A
650B: brk
650C: and   a,$C3F9+x
650F: bbs1  $21,$6530
6512: tcall 14
6513: subw  ya,$21
6515: nop
6516: stop
6517: dec   y
6518: clrv
6519: eor   a,$CE20
651C: subw  ya,$13
651E: jmp   ($C0DC+x)
6521: eor   a,$003F
6524: mov   a,y
6525: eor1  c,$05DB,00
6528: eor   a,$1331
652B: mov   x,$72D2
652E: subw  ya,$00
6530: brk
6531: tcall 0
6532: tcall 1
6533: bpl   $6532
6535: cbne  $E0+x,$64d2
6538: eor   a,$3F
653A: dec   y
653B: or    a,$BB2F+x
653E: daa   a
653F: eor   a,$209A+y
6542: nop
6543: mov   $F0+x,y
6545: tcall 15
6546: or    a,$31+x
6548: nop
6549: adc   a,$DF30+y
654C: bbs1  $31,$654f
654F: tcall 0
6550: bpl   $6564
6552: subw  ya,$FD
6554: mov   x,#$01
6556: bbc1  $22,$6515
6559: or    a,$4E+x
655B: subw  ya,$CB
655D: di
655E: and   a,$F040+y
6561: dec   y
6562: clrv
6563: nop
6564: subw  ya,$13
6566: clr2  $FF
6568: mov   a,y
6569: set0  $41
656B: sleep
656C: tcall 1
656D: subw  ya,$10
656F: beq   $6583
6571: mov   y,a
6572: mov   a,y
6573: clr7  $32
6575: bmi   $6511
6577: mov   $05+x,y
6579: tcall 3
657A: movw  ya,$CF
657C: eor   a,($21+x)
657E: brk
657F: subw  ya,$EC
6581: daa   a
6582: tcall 1
6583: bbs0  $43,$6594
6586: mov   a,y
6587: mov   a,$9A+x
6589: tcall 3
658A: mov   y,a
658B: bbc0  $2F,$657c
658E: bbc0  $1E,$655d
6591: subw  ya,$F3
6593: tcall 3
6594: bbc0  $CC,$659a
6597: setp
6598: mov   $AF+x,y
659A: subw  ya,$46
659C: setp
659D: brk
659E: cbne  $DF+x,$65c0
65A1: bbs0  $54,$653e
65A4: push  psw
65A5: pop   x
65A6: bbs0  $30,$6598
65A9: bbc0  $3E,$656c
65AC: subw  ya,$12
65AE: cbne  $CB,$65a6
65B1: bmi   $65c3
65B3: pop   y
65B4: bbc7  $9A,$65d9
65B7: movw  $CE,ya
65B9: eor   a,(x)
65BA: set1  $0F
65BC: mov   a,y
65BD: sleep
65BE: subw  ya,$01
65C0: set0  $45
65C2: asl   $CE+x
65C4: or    a,$2F+x
65C6: dbnz  y,$6562
65C8: and   a,$EE1D
65CB: clr0  $20
65CD: inc   $F5+x
65CF: setp
65D0: subw  ya,$F0
65D2: sleep
65D3: tcall 0
65D4: bmi   $65c3
65D6: pop   a
65D7: and   a,$9A40+y
65DA: brk
65DB: cbne  $DF+x,$65ff
65DE: nop
65DF: and   a,$AE2D+x
65E2: subw  ya,$32
65E4: bra   $65c6
65E6: bbc1  $1D,$65d8
65E9: clr7  $4F
65EB: subw  ya,$CB
65ED: mov   a,$FF30+x
65F0: brk
65F1: clr7  $20
65F3: mov   y,$DD9A
65F6: eor   a,$2F11
65F9: mov   $00+x,y
65FB: tcall 1
65FC: tcall 15
65FD: subw  ya,$33
65FF: cbne  $DD,$6605
6602: bpl   $65f4
6604: bbc1  $EF,$65a1
6607: stop
6608: tcall 15
6609: clr1  $AC
660B: set0  $41
660D: stop
660E: clrv
660F: subw  ya,$10
6611: tcall 1
6612: pop   y
6613: pop   x
6614: and   a,$31
6616: jmp   ($8ACD+x)
6619: clr7  $3F
661B: nop
661C: eor   a,$AD11+x
661F: bpl   $6641
6621: subw  ya,$F2
6623: tcall 3
6624: sleep
6625: jmp   ($40D1+x)
6628: mov   $03+x,y
662A: eor1  c,$1D53,06
662D: tset1 $2F03
6630: inc   a
6631: mov   a,y
6632: eor   a,(x)
6633: subw  ya,$01
6635: clrp
6636: mov   y,$10F2
6639: tcall 14
663A: set1  $1F
663C: eor1  c,$110E,06
663F: beq   $6693
6641: bvc   $65e3
6643: dec   x
6644: clr6  $9A
6646: tcall 4
6647: mov   sp,x
6648: set0  $3F
664A: nop
664B: sleep
664C: clr0  $1F
664E: eor1  c,$0E9D,00
6651: and   a,$41F2
6654: dec   $F4+x
6656: tclr1 $0086
6659: and   a,$23+x
665B: eor   a,$CE3C
665E: or    a,$8A61+y
6661: nop
6662: rol   $60B5
6665: mov1  $02E4,00,c
6668: tcall 1
6669: eor1  c,$04EB,00
666C: tclr1 $F2AC
666F: clr0  $01
6671: bmi   $65fd
6673: mov   $F4+x,y
6675: set1  $EF
6677: bpl   $6688
6679: eor   a,$EB
667B: adc   a,$33DF+y
667E: clrp
667F: tcall 14
6680: dec   x
6681: das   a
6682: tcall 1
6683: dbnz  y,$660f
6685: bne   $66b4
6687: eor   a,$CB+x
6689: mov   a,$40
668B: inc   $1F+x
668D: eor1  c,$0212,00
6690: jmp   ($02DF+x)
6693: setp
6694: tset1 $8AE0
6697: clrv
6698: eor   a,$C41B+x
669B: bbs3  $9B,$66e2
669E: and   ($B7),($8A)
66A1: mov   x,a
66A2: jmp   ($E1B0+x)
66A5: bbs2  $EA,$668b
66A8: adc   a,(x)
66A9: eor   a,$1E
66AB: mul   ya
66AC: dbnz  y,$66c1
66AE: clr1  $11
66B0: bbc0  $8A,$66e6
66B3: asl   $0EDF
66B6: eor   a,(x)
66B7: dec   x
66B8: bbc7  $7F,$6655
66BB: pop   x
66BC: bbc0  $0E,$66b1
66BF: clrp
66C0: beq   $66bf
66C2: bpl   $664e
66C4: bbc2  $DA,$668b
66C7: clr2  $DC
66C9: stop
66CA: tcall 15
66CB: clr0  $8A
66CD: mov   y,a
66CE: set1  $E0
66D0: eor   a,$CF0C
66D3: sleep
66D4: or    a,$2F9A+y
66D7: bbs0  $2E,$66a8
66DA: tcall 2
66DB: jmp   ($20F1+x)
66DE: eor1  c,$1C3F,05
66E1: mov   $CB70,a
66E4: tcall 13
66E5: cmp   a,$FE
66E7: eor1  c,$10CC,07
66EA: tcall 5
66EB: mov   a,(x)+
66EC: and   a,$260C+x
66EF: incw  $9A
66F1: bne   $6702
66F3: set0  $21
66F5: bbs0  $2D,$66a8
66F8: bpl   $6694
66FA: tcall 0
66FB: bpl   $66fe
66FD: bpl   $66ec
66FF: set0  $20
6701: cbne  $9A+x,$6705
6704: clr0  $1F
6706: pop   y
6707: set7  $1F
6709: clrv
670A: bbc1  $9A,$670c
670D: bbc7  $3D,$66df
6710: bra   $6703
6712: tcall 2
6713: bbs1  $9A,$6742
6716: bcs   $6746
6718: bbc7  $30,$66fb
671B: bmi   $66fa
671D: subw  ya,$F3
671F: call  $F1EE
6722: clr0  $20
6724: dec   y
6725: tcall 0
6726: subw  ya,$2F
6728: tcall 11
6729: eor   a,$0D+x
672B: tcall 15
672C: clrp
672D: mov   a,(x)+
672E: bmi   $66ca
6730: sleep
6731: tcall 3
6732: and   a,$1D
6734: bcs   $6754
6736: set7  $52
6738: subw  ya,$DF
673A: tcall 2
673B: inc   y
673C: set7  $30
673E: sleep
673F: beq   $6752
6741: subw  ya,$31
6743: dec   y
6744: set7  $2D
6746: sleep
6747: cmp   a,$0F
6749: bne   $66d5
674B: jmp   $33CB
674E: mov   a,(x)+
674F: and   a,$4B44
6752: cmp   y,#$9A
6754: brk
6755: clr6  $53
6757: pop   y
6758: set1  $DC
675A: bbs7  $4E,$66f7
675D: clrv
675E: brk
675F: bbs0  $21,$673d
6762: clr7  $1F
6764: tcall 12
6765: subw  ya,$55
6767: asl   a
6768: sleep
6769: tcall 2
676A: sleep
676B: tcall 0
676C: push  psw
676D: set1  $9A
676F: clr0  $20
6771: mov   a,y
6772: brk
6773: sleep
6774: cmp   a,$03ED
6777: subw  ya,$0B
6779: clr6  $31
677B: clrv
677C: dbnz  y,$6781
677E: setp
677F: mov   x,#$9A
6781: tcall 14
6782: brk
6783: brk
6784: eor   a,(x)
6785: cmp   x,$00CF
6788: clrp
6789: eor1  c,$04DD,07
678C: set1  $02
678E: tcall 6
678F: mov   $EF,y
6791: xcn   a
6792: adc   a,$41E3+y
6795: clr0  $20
6797: mov   x,#$FF
6799: beq   $67a9
679B: subw  ya,$F4
679D: clrp
679E: mov   a,y
679F: stop
67A0: beq   $67b4
67A2: bbs1  $2E,$672f
67A5: das   a
67A6: tcall 14
67A7: bbs1  $CC,$679d
67AA: bvc   $678f
67AC: clr2  $9A
67AE: pop   y
67AF: beq   $678f
67B1: eor   a,$F11F
67B4: dbnz  y,$67a5
67B6: eor1  c,$0512,01
67B9: not1  $1EF4,03
67BC: cmp   y,#$EE
67BE: mov   a,(x)+
67BF: eor1  c,$1355,02
67C2: jmp   ($FFCE+x)
67C5: tcall 2
67C6: inc   y
67C7: mov   $8A+x,a
67C9: clr2  $E1
67CB: set2  $BD
67CD: brk
67CE: mov   x,#$47
67D0: bvc   $675c
67D2: clrv
67D3: asl   $B0+x
67D5: sleep
67D6: eor   a,$D51A+y
67D9: bra   $6775
67DB: dbnz  y,$67da
67DD: tcall 14
67DE: and   a,$20+x
67E0: sleep
67E1: bpl   $67e2
67E3: eor1  c,$1D02,07
67E6: set7  $60
67E8: bbc7  $50,$67a4
67EB: bbs0  $9A,$67de
67EE: tcall 0
67EF: set1  $00
67F1: tset1 $0EEE
67F4: and   a,$1E9A
67F7: tcall 15
67F8: brk
67F9: beq   $67d8
67FB: set7  $43
67FD: bmi   $6795
67FF: tcall 2
6800: and   a,$0F41
6803: brk
6804: pop   y
6805: tcall 15
6806: bbc0  $96,$685c
6809: mov   y,a
680A: mov   a,y
680B: pop   y
680C: dbnz  y,$67ff
680E: bbc1  $43,$67ab
6811: mov   a,y
6812: tcall 13
6813: bbc1  $2F,$67f7
6816: brk
6817: stop
6818: mov   y,$F39A
681B: and   a,$10+x
681D: mov   a,y
681E: bbs1  $1E,$67f1
6821: beq   $67be
6823: bpl   $6845
6825: bbc0  $2D,$67f6
6828: tcall 0
6829: bbc0  $0E,$682e
682C: nop
682D: nop
682E: nop
682F: nop
6830: nop
6831: nop
6832: nop
6833: nop
6834: adc   a,(x)
6835: inc   x
6836: bbc0  $BA,$6808
6839: tcall 2
683A: brk
683B: cbne  $F0+x,$67d8
683E: brk
683F: bmi   $682f
6841: beq   $6895
6843: mov   a,y
6844: tcall 0
6845: beq   $67cd
6847: bbs1  $FE,$6847
684A: das   a
684B: clr1  $D0
684D: or1   c,!($0AD4,04)
6850: mov   y,$24+x
6852: mov   y,a
6853: tcall 15
6854: bbc1  $C0,$6895
6857: set7  $8A
6859: bpl   $687d
685B: mov   y,$61E2
685E: mov   a,(x)+
685F: setp
6860: clr5  $96
6862: cmp   x,$4EE2
6865: pop   x
6866: clr0  $11
6868: nop
6869: nop
686A: adc   a,(x)
686B: stop
686C: clr7  $5F
686E: inc   $05
6870: jmp   ($D1EC+x)
6873: adc   a,(x)
6874: call  $34E0
6877: cmp   x,$62F5
687A: or    a,$9A0D+x
687D: tcall 3
687E: clr6  $4C
6880: clr6  $10
6882: tcall 1
6883: clrv
6884: brk
6885: adc   a,(x)
6886: mov   a,(x)+
6887: tcall 1
6888: mov   y,a
6889: brk
688A: bbc6  $4F,$6893
688D: rol   $86+x
688F: mov   $4D21,a
6892: das   a
6893: bpl   $6883
6895: tcall 0
6896: dec   y
6897: adc   a,(x)
6898: mov   $F1+x,y
689A: and   a,$24EC+y
689D: and   a,$42
689F: or    a,$6B86+y
68A2: mov   a,$EC54+x
68A5: sleep
68A6: stop
68A7: tcall 15
68A8: mov   $FC86,y
68AB: set7  $2E
68AD: pop   x
68AE: brk
68AF: bbc1  $24,$68de
68B2: adc   a,$1FF3+y
68B5: bpl   $68b6
68B7: nop
68B8: daa   a
68B9: call  $8ADF
68BC: brk
68BD: tcall 14
68BE: clr0  $10
68C0: mov   a,y
68C1: bbs2  $F0,$68c4
68C4: eor1  c,$00FF,01
68C7: or    a,$F9+x
68C9: mov   ($4C)+y,a
68CB: bbc6  $2C,$6864
68CE: daa   a
68CF: brk
68D0: beq   $68d0
68D2: set0  $30
68D4: set7  $41
68D6: adc   a,$0D12+y
68D9: or    a,$2E
68DB: clrv
68DC: notc
68DD: tcall 2
68DE: dec   y
68DF: eor1  c,$0130,00
68E2: stop
68E3: bbs1  $EA,$6938
68E6: mov   $0D+x,a
68E8: adc   a,$3023+y
68EB: mov   a,$30+x
68ED: stop
68EE: brk
68EF: sleep
68F0: dbnz  y,$687c
68F2: tcall 1
68F3: mul   ya
68F4: set3  $BD
68F6: and   a,$4D
68F8: adc   a,$4E+x
68FA: adc   a,$1E23+y
68FD: bbc7  $31,$68fd
6900: pop   y
6901: beq   $6900
6903: eor1  c,$1FE4,06
6906: call  $0C02
6909: set1  $01
690B: stop
690C: subw  ya,$02
690E: jmp   ($20E0+x)
6911: tcall 0
6912: brk
6913: bne   $6955
6915: eor1  c,$1BA7,06
6918: set1  $1E
691A: mov   a,$4F+x
691C: inc   $8A73
691F: bpl   $690d
6921: mov   a,$3F+x
6923: mov   a,y
6924: bbs0  $2C,$68fc
6927: subw  ya,$0B
6929: set1  $E0
692B: bpl   $691d
692D: bpl   $6920
692F: bpl   $68cb
6931: stop
6932: setp
6933: daa   a
6934: bra   $693a
6936: push  psw
6937: clrv
6938: clrp
6939: adc   a,$EDEE+y
693C: clrv
693D: asl   $31C3
6940: clr1  $01
6942: subw  ya,$4F
6944: tcall 13
6945: cbne  $10,$692a
6948: tset1 $DE11
694B: adc   a,$CCDF+y
694E: pop   y
694F: di
6950: cmp   x,$13
6952: bbs0  $44,$68ef
6955: stop
6956: tcall 3
6957: tset1 $6FC1
695A: tcall 15
695B: notc
695C: set1  $96
695E: mov   y,$EDDF
6961: dbnz  y,$6924
6963: bbs2  $10,$6979
6966: subw  ya,$2F
6968: tcall 13
6969: clrp
696A: nop
696B: daa   a
696C: tcall 5
696D: mov   sp,x
696E: setp
696F: subw  ya,$E1
6971: asl   a
6972: mov   a,$00FD+x
6975: tcall 1
6976: bpl   $6958
6978: eor1  c,$1E23,00
697B: mov   $23EC+x,a
697E: nop
697F: rol   $9AB4
6982: rol   a
6983: bbc7  $1E,$6978
6986: brk
6987: set1  $EF
6989: tcall 1
698A: subw  ya,$0F
698C: bra   $6991
698E: mov   y,a
698F: tcall 15
6990: bmi   $6970
6992: tcall 1
6993: eor1  c,$100B,00
6996: bbc6  $1C,$696d
6999: push  a
699A: and   a,$8ACD
699D: set2  $D1
699F: push  x
69A0: set7  $2F
69A2: tcall 13
69A3: bmi   $6993
69A5: subw  ya,$F1
69A7: nop
69A8: bpl   $698c
69AA: rol   $1D04
69AD: clr0  $8A
69AF: mul   ya
69B0: clr1  $02
69B2: dec   x
69B3: bbc5  $21,$69c1
69B6: set7  $8A
69B8: tset1 $CF01
69BB: pcall $A1
69BD: tclr1 $EB14
69C0: eor1  c,$0E45,06
69C3: jmp   $7BB3
69C6: sbc   a,$4D
69C8: tcall 1
69C9: subw  ya,$D0
69CB: clr0  $0C
69CD: set1  $0F
69CF: tcall 15
69D0: tcall 2
69D1: nop
69D2: eor1  c,$13BF,02
69D5: tset1 $0101
69D8: brk
69D9: mov   a,(x)+
69DA: set1  $8A
69DC: inc   y
69DD: tcall 15
69DE: dbnz  y,$69f1
69E0: pop   y
69E1: set0  $0E
69E3: and   a,$9A
69E5: tset1 $0B03
69E8: set2  $C2
69EA: cbne  $C2,$6a3c
69ED: eor1  c,$0EB3,07
69F0: bmi   $69c4
69F2: cmp   y,$62B1
69F5: tcall 0
69F6: eor1  c,$07CC,02
69F9: and   ($03),($02)
69FC: tset1 $51BD
69FF: eor1  c,$0FEF,07
6A02: call  $529F
6A05: mov   x,#$34
6A07: das   a
6A08: mov1  c,$0120,07
6A0B: cmp   x,$D1
6A0D: bmi   $69f0
6A0F: asl   a
6A10: set1  $96
6A12: dec   y
6A13: stop
6A14: mov   $E1ED,y
6A17: tset1 $44F2
6A1A: eor1  c,$15CC,01
6A1D: tclr1 $E5DE
6A20: push  y
6A21: mov   (x)+,a
6A22: asl   a
6A23: subw  ya,$13
6A25: mov   y,$ED13
6A28: clr0  $C1
6A2A: lsr   $8A03
6A2D: pop   y
6A2E: clrp
6A2F: bbc6  $4D,$6a15
6A32: dec   y
6A33: cmp   a,($9A)+y
6A35: subw  ya,$01
6A37: tcall 2
6A38: push  psw
6A39: clr7  $3E
6A3B: jmp   ($2EF4+x)
6A3E: eor1  c,$11B0,02
6A41: bbc0  $CD,$6a86
6A44: sleep
6A45: cbne  $ED,$69d2
6A48: bbc7  $2D,$6a1b
6A4B: dec   x
6A4C: bbs7  $EE,$6a5f
6A4F: tcall 1
6A50: eor1  c,$010F,00
6A53: jmp   ($2CF2+x)
6A56: tcall 1
6A57: bbs7  $20,$69f4
6A5A: cbne  $42+x,$6a4c
6A5D: bra   $6a41
6A5F: jmp   ($2F03+x)
6A62: eor1  c,$00A0,02
6A65: or    a,$0D
6A67: set0  $FE
6A69: tcall 2
6A6A: inc   y
6A6B: subw  ya,$02
6A6D: cbne  $33+x,$6a2d
6A70: clr1  $CF
6A72: setp
6A73: tcall 12
6A74: eor1  c,$037A,07
6A77: nop
6A78: bbc0  $09,$6a7d
6A7B: bbs1  $D0,$6a08
6A7E: asl   $03+x
6A80: tcall 1
6A81: clr0  $FB
6A83: clr1  $E3
6A85: reti
6A86: adc   a,(x)
6A87: pop   y
6A88: eor   a,(x)
6A89: cmp   a,$0430
6A8C: cmp   x,$CE
6A8E: mov   y,a
6A8F: subw  ya,$EF
6A91: bpl   $6a94
6A93: push  psw
6A94: mov   $1D+x,a
6A96: clr7  $FF
6A98: subw  ya,$30
6A9A: daa   a
6A9B: tcall 1
6A9C: bbs0  $0A,$6ab2
6A9F: nop
6AA0: stop
6AA1: subw  ya,$03
6AA3: push  psw
6AA4: mov   a,$3F
6AA6: stop
6AA7: tcall 14
6AA8: tcall 4
6AA9: stop
6AAA: subw  ya,$F2
6AAC: bra   $6a8f
6AAE: call  $EDF2
6AB1: and   a,$DD
6AB3: eor1  c,$0C26,07
6AB6: tcall 0
6AB7: mov   a,(x)+
6AB8: dbnz  $DF,$6abc
6ABB: brk
6ABC: eor1  c,$0C11,07
6ABF: or    a,$30FD+x
6AC2: mul   ya
6AC3: bmi   $6ad6
6AC5: cmp   a,$9C31+y
6AC8: rol   $06
6ACA: set1  $23
6ACC: bbs2  $44,$6b49
6ACF: or    a,$0110
6AD2: clr0  $EC
6AD4: set2  $EF
6AD6: asl   $8A
6AD8: bbs7  $00,$6ae6
6ADB: bbs7  $3E,$6a9e
6ADE: stop
6ADF: tcall 3
6AE0: eor1  c,$0FC0,02
6AE3: tcall 10
6AE4: bvc   $6aa7
6AE6: push  a
6AE7: mov   a,$8A0C+x
6AEA: tcall 1
6AEB: clrv
6AEC: bvc   $6aed
6AEE: set0  $20
6AF0: set0  $1E
6AF2: eor1  c,$11D5,00
6AF5: cbne  $F1,$6b08
6AF8: tset1 $DCF6
6AFB: adc   a,$EFDD+y
6AFE: brk
6AFF: mov   $01EF,y
6B02: mov   y,$9612
6B05: beq   $6b28
6B07: beq   $6b4d
6B09: dbnz  y,$6b3d
6B0B: clrv
6B0C: setp
6B0D: adc   a,$3ED2+y
6B10: bbs6  $61,$6ad5
6B13: bmi   $6b29
6B15: bra   $6a9d
6B17: or    a,(x)
6B18: pcall $16
6B1A: tset1 $BB2E
6B1D: bne   $6ae8
6B1F: eor1  c,$0010,00
6B22: clrp
6B23: bcs   $6b40
6B25: bbc1  $CE,$6b49
6B28: addw  ya,$DC
6B2A: call  $7FA0
6B2D: bcs   $6b1e
6B2F: set1  $2E
6B31: eor1  c,$01F2,06
6B34: cmp   x,$55
6B36: mov1  c,$0255,07
6B39: pcall $86
6B3B: beq   $6b7d
6B3D: mov   $FF4F+x,a
6B40: not1  $0D9E,00
6B43: eor1  c,$12AE,03
6B46: mov   a,(x)+
6B47: tcall 1
6B48: push  psw
6B49: sleep
6B4A: bbc0  $1D,$6ae3
6B4D: nop
6B4E: tcall 15
6B4F: call  $1002
6B52: nop
6B53: mov   a,y
6B54: eor   a,$96
6B56: sleep
6B57: brk
6B58: set0  $21
6B5A: and   a,$032F+x
6B5D: and   a,$6E96
6B60: clr7  $00
6B62: clr0  $FC
6B64: beq   $6b32
6B66: pop   y
6B67: adc   a,$EEDD+y
6B6A: cbne  $00+x,$6b5b
6B6D: tcall 1
6B6E: cbne  $44+x,$6af7
6B71: tcall 14
6B72: bra   $6b8a
6B74: pcall $D2
6B76: stop
6B77: mov   y,$06+x
6B79: subw  ya,$ED
6B7B: tcall 0
6B7C: tcall 0
6B7D: bra   $6b62
6B7F: inc   x
6B80: mov   $9A10,a
6B83: call  $34CF
6B86: sleep
6B87: jmp   ($1DF2+x)
6B8A: set0  $8A
6B8C: mov   y,$0E13
6B8F: clrv
6B90: set1  $DF
6B92: mov   y,$27+x
6B94: subw  ya,$1C
6B96: bbs7  $0C,$6bac
6B99: tset1 $D30E
6B9C: call  $FF9A
6B9F: brk
6BA0: bbc0  $D0,$6bf2
6BA3: clr7  $0F
6BA5: bbc7  $8A,$6c05
6BA8: mov   a,$64F9
6BAB: bbs6  $2D,$6b50
6BAE: dbnz  $8A,$6b53
6BB1: mov   x,a
6BB2: set6  $1E
6BB4: tcall 1
6BB5: pop   y
6BB6: bpl   $6ba8
6BB8: adc   a,$0233+y
6BBB: tclr1 $40D2
6BBE: pop   x
6BBF: mov   y,a
6BC0: set7  $9A
6BC2: mov   y,$EE23
6BC5: bbc0  $0F,$6bc9
6BC8: clr0  $EF
6BCA: eor1  c,$0144,07
6BCD: inc   x
6BCE: set7  $40
6BD0: di
6BD1: cbne  $00,$6b6e
6BD4: bpl   $6bb5
6BD6: clr1  $EE
6BD8: tcall 0
6BD9: tcall 14
6BDA: push  x
6BDB: bbs6  $9A,$6c0a
6BDE: or    a,$0D
6BE0: tcall 14
6BE1: nop
6BE2: cbne  $B4,$6bf3
6BE5: subw  ya,$21
6BE7: daa   a
6BE8: set2  $A0
6BEA: tcall 5
6BEB: stop
6BEC: bbs7  $30,$6b79
6BEF: notc
6BF0: set1  $43
6BF2: mov   a,(x)+
6BF3: clrp
6BF4: nop
6BF5: clr7  $E0
6BF7: eor1  c,$021E,07
6BFA: push  psw
6BFB: bbs1  $DB,$6c4f
6BFE: clr5  $20
6C00: adc   a,$0042+y
6C03: and   a,$210F+x
6C06: daa   a
6C07: or1   c,$16B1,04
6C0A: asl   $C0+x
6C0C: mov   y,$B553
6C0F: tcall 5
6C10: eor   a,$9A32
6C13: eor   a,$9F
6C15: bvc   $6c19
6C17: push  psw
6C18: tcall 15
6C19: bpl   $6c1c
6C1B: subw  ya,$FD
6C1D: clrp
6C1E: clr7  $EF
6C20: cmp   x,$F1
6C22: cmp   x,$96E4
6C25: bvs   $6c2a
6C27: and   a,$21+x
6C29: nop
6C2A: stop
6C2B: dbnz  y,$6bfa
6C2D: subw  ya,$2F
6C2F: tcall 13
6C30: cmp   x,$D032
6C33: bmi   $6c05
6C35: ror   $F6AA
6C38: mov   y,$0F13
6C3B: bpl   $6c1d
6C3D: bmi   $6c00
6C3F: subw  ya,$7B
6C41: sbc   a,$4D+x
6C43: bbc6  $1C,$6c3a
6C46: asl   $9623
6C49: set1  $44
6C4B: tcall 2
6C4C: set1  $10
6C4E: tcall 2
6C4F: inc   $1F+x
6C51: subw  ya,$C3
6C53: asl   $0E12
6C56: bbs1  $0D,$6c4c
6C59: jmp   ($119A+x)
6C5C: bpl   $6c6c
6C5E: bbc0  $2D,$6c9f
6C61: sbc   a,$9A1D
6C64: set1  $EC
6C66: or    a,$11ED+x
6C69: brk
6C6A: tcall 15
6C6B: brk
6C6C: eor1  c,$0D04,01
6C6F: set7  $EE
6C71: tcall 2
6C72: tcall 12
6C73: rol   $E2
6C75: addw  ya,$2E
6C77: bne   $6c43
6C79: bbc3  $F5,$6cc9
6C7C: set6  $51
6C7E: eor1  c,$0023,07
6C81: jmp   $70B2
6C84: tcall 15
6C85: dec   y
6C86: or    a,$0D9A+x
6C89: set0  $FF
6C8B: bpl   $6c7e
6C8D: stop
6C8E: tcall 1
6C8F: sleep
6C90: subw  ya,$22
6C92: bne   $6cd2
6C94: tcall 15
6C95: beq   $6ca8
6C97: mov   x,#$41
6C99: mov1  c,$1EE1,00
6C9C: mov   a,$FE
6C9E: tcall 1
6C9F: nop
6CA0: nop
6CA1: nop
6CA2: subw  ya,$12
6CA4: push  a
6CA5: mov   a,(x)
6CA6: asl   $1D14
6CA9: set0  $DE
6CAB: subw  ya,$40
6CAD: daa   a
6CAE: tcall 3
6CAF: cbne  $23+x,$6c91
6CB2: bpl   $6c95
6CB4: adc   a,$2244+y
6CB7: and   a,$44+x
6CB9: bmi   $6cad
6CBB: tclr1 $9AED
6CBE: mov   $E01D+x,a
6CC1: bpl   $6cc3
6CC3: nop
6CC4: set1  $EE
6CC6: subw  ya,$13
6CC8: clrp
6CC9: cbne  $35+x,$6cf6
6CCC: tcall 0
6CCD: set0  $1E
6CCF: subw  ya,$E1
6CD1: cmp   x,$3DE3
6CD4: mov   $0E,a
6CD6: bpl   $6cb9
6CD8: eor1  c,$116F,04
6CDB: tcall 3
6CDC: bbs0  $FA,$6ca2
6CDF: cmp   y,$9AD0
6CE2: stop
6CE3: set0  $0C
6CE5: bbc7  $1D,$6d09
6CE8: set7  $2F
6CEA: mov1  c,$0FF1,01
6CED: tcall 15
6CEE: beq   $6d30
6CF0: daa   a
6CF1: clr0  $00
6CF3: subw  ya,$0C
6CF5: set7  $3E
6CF7: tcall 15
6CF8: beq   $6ceb
6CFA: jmp   ($9AE0+x)
6CFD: bbc1  $BF,$6d3f
6D00: clr7  $1E
6D02: tcall 15
6D03: tset1 $8A00
6D06: clr0  $AE
6D08: cbne  $22,$6cd9
6D0B: bbs1  $0F,$6d3e
6D0E: subw  ya,$F2
6D10: jmp   ($1F01+x)
6D13: or    a,$1D
6D15: bbs6  $3F,$6cb2
6D18: bbs0  $CC,$6d2d
6D1B: bpl   $6d3c
6D1D: daa   a
6D1E: tcall 2
6D1F: brk
6D20: eor1  c,$0FF3,00
6D23: tset1 $3F03
6D26: mul   ya
6D27: brk
6D28: tcall 0
6D29: subw  ya,$F0
6D2B: tcall 0
6D2C: pop   y
6D2D: bbs0  $0D,$6d32
6D30: sleep
6D31: setp
6D32: subw  ya,$E4
6D34: dec   x
6D35: bbc7  $2D,$6d2e
6D38: clrv
6D39: or1   c,!($1A05,04)
6D3C: tclr1 $F1CF
6D3F: clrp
6D40: clrv
6D41: bpl   $6d42
6D43: tcall 0
6D44: eor1  c,$0100,00
6D47: dbnz  y,$6d5c
6D49: push  psw
6D4A: push  x
6D4B: sbc   a,$96FA+x
6D4E: clr7  $1C
6D50: mov   a,(x)+
6D51: movw  ya,$20
6D53: inc   a
6D54: stop
6D55: tcall 15
6D56: subw  ya,$00
6D58: tcall 2
6D59: clrv
6D5A: bpl   $6d7e
6D5C: daa   a
6D5D: tcall 4
6D5E: cbne  $9A+x,$6d85
6D61: stop
6D62: inc   y
6D63: or    a,$2C
6D65: clr7  $0E
6D67: set0  $8A
6D69: asl   $14
6D6B: dec   x
6D6C: mov   $164A,a
6D6F: mov   $9A36,x
6D72: notc
6D73: set1  $DE
6D75: tcall 1
6D76: stop
6D77: tcall 1
6D78: notc
6D79: bbs1  $9A,$6d9a
6D7C: set0  $0E
6D7E: set1  $E0
6D80: tcall 3
6D81: sleep
6D82: cmp   y,$A49A
6D85: ror   $C6
6D87: asl   $03
6D89: dbnz  y,$6dae
6D8B: das   a
6D8C: eor1  c,$1062,00
6D8F: mov   x,#$23
6D91: pcall $DE
6D93: clr0  $F0
6D95: subw  ya,$FE
6D97: clr0  $0D
6D99: tcall 14
6D9A: clrp
6D9B: tcall 14
6D9C: asl   $9A33
6D9F: daa   a
6DA0: set1  $F0
6DA2: bpl   $6d98
6DA4: beq   $6da5
6DA6: bbs1  $9A,$6db5
6DA9: set0  $1E
6DAB: set0  $FC
6DAD: tcall 3
6DAE: set6  $3E
6DB0: subw  ya,$C3
6DB2: inc   x
6DB3: bbc6  $1F,$6dc7
6DB6: bne   $6dd8
6DB8: clrv
6DB9: eor1  c,$0F12,07
6DBC: stop
6DBD: clr6  $4D
6DBF: sleep
6DC0: clr7  $0D
6DC2: adc   a,$30E1+y
6DC5: mov   a,$5641+y
6DC8: tcall 3
6DC9: and   a,$9A31+x
6DCC: bbc1  $BE,$6def
6DCF: mov   a,$39
6DD1: bbc7  $0F,$6dd6
6DD4: subw  ya,$FD
6DD6: bbc0  $ED,$6dfc
6DD9: beq   $6dda
6DDB: tcall 0
6DDC: tset1 $0496
6DDF: tcall 3
6DE0: inc   y
6DE1: clrv
6DE2: jmp   ($DFDC+x)
6DE5: tset1 $F39A
6DE8: push  psw
6DE9: bbc0  $E1,$6e4a
6DEC: tcall 11
6DED: clrp
6DEE: clr0  $9A
6DF0: stop
6DF1: bmi   $6dc1
6DF3: clr1  $1E
6DF5: beq   $6de6
6DF7: tcall 4
6DF8: eor1  c,$01B0,07
6DFB: asl   $26+x
6DFD: mov   y,$22+x
6DFF: cbne  $3F+x,$6d8c
6E02: mov   a,(x)
6E03: tset1 $26DB
6E06: incw  $D3
6E08: notc
6E09: bbc2  $96,$6df9
6E0C: nop
6E0D: sleep
6E0E: tcall 2
6E0F: or    a,$F54F
6E12: tcall 2
6E13: adc   a,$0163+y
6E16: tcall 4
6E17: mov   x,#$20
6E19: clrv
6E1A: mov   y,$D0
6E1C: adc   a,$CEEC+y
6E1F: pop   y
6E20: tcall 14
6E21: bra   $6e25
6E23: brk
6E24: and   a,$96+x
6E26: beq   $6e6c
6E28: nop
6E29: tcall 2
6E2A: tcall 15
6E2B: jmp   ($FFDE+x)
6E2E: subw  ya,$0F
6E30: tcall 15
6E31: bra   $6e15
6E33: dec   x
6E34: clr1  $C0
6E36: set1  $8A
6E38: tset1 $2001
6E3B: cbne  $13+x,$6e8d
6E3E: xcn   a
6E3F: tcall 4
6E40: eor1  c,$1FDE,01
6E43: bbc7  $CB,$6e9c
6E46: mov   $F112,y
6E49: subw  ya,$1E
6E4B: mov   $5B+x,a
6E4D: clr7  $D0
6E4F: tcall 3
6E50: cbne  $3F+x,$6ddd
6E53: sbc   a,($FB)+y
6E55: and   a,$DC+x
6E57: bbc0  $11,$6e88
6E5A: clr5  $8A
6E5C: bvs   $6e5d
6E5E: or    a,$0D
6E60: tcall 13
6E61: bmi   $6e95
6E63: inc   $8A
6E65: bmi   $6e27
6E67: bvs   $6e26
6E69: bbc1  $EB,$6e62
6E6C: tcall 2
6E6D: subw  ya,$0C
6E6F: clr7  $42
6E71: mov   a,y
6E72: bbc7  $1F,$6e65
6E75: bpl   $6e0d
6E77: dec   y
6E78: mov   $0BE2,y
6E7B: clr5  $FD
6E7D: and   a,$9AF0+x
6E80: push  y
6E81: clr7  $0F
6E83: tcall 2
6E84: dbnz  y,$6e77
6E86: setp
6E87: mul   ya
6E88: eor1  c,$0F4F,06
6E8B: set2  $EB
6E8D: mov   a,$1FEE+y
6E90: bbs1  $9A,$6ea0
6E93: tcall 15
6E94: bbc1  $0C,$6e4d
6E97: brk
6E98: clrp
6E99: mul   ya
6E9A: subw  ya,$30
6E9C: tcall 13
6E9D: rol   a
6E9E: clrp
6E9F: clr6  $1F
6EA1: clr0  $EF
6EA3: subw  ya,$22
6EA5: set6  $5C
6EA7: clr0  $EF
6EA9: tcall 15
6EAA: tcall 3
6EAB: pop   y
6EAC: subw  ya,$F0
6EAE: clr7  $3C
6EB0: set7  $0E
6EB2: clr0  $EE
6EB4: and   a,$9A
6EB6: mov   y,$22+x
6EB8: set0  $0E
6EBA: beq   $6ebd
6EBC: bra   $6e90
6EBE: sbc   a,(x)
6EBF: tset1 $0CCF
6EC2: tcall 14
6EC3: notc
6EC4: beq   $6ec5
6EC6: clr1  $A6
6EC8: set7  $42
6ECA: clr0  $21
6ECC: bbc1  $1F,$6ec0
6ECF: bpl   $6e67
6ED1: inc   a
6ED2: mov   $BCBB,y
6ED5: dec   y
6ED6: mov   sp,x
6ED7: tcall 0
6ED8: set1  $9A
6EDA: set7  $F1
6EDC: cbne  $13,$6edb
6EDF: set1  $EF
6EE1: push  x
6EE2: subw  ya,$B6
6EE4: mov   y,a
6EE5: bmi   $6ec5
6EE7: clr1  $A1
6EE9: ror   a
6EEA: mov   a,$0B9A
6EED: or    a,$010E+x
6EF0: tcall 0
6EF1: nop
6EF2: stop
6EF3: set1  $9A
6EF5: mov   y,$FF02
6EF8: tcall 2
6EF9: mov   a,y
6EFA: tcall 3
6EFB: beq   $6f2c
6EFD: subw  ya,$D2
6EFF: clrp
6F00: clr0  $DD
6F02: and   a,(x)
6F03: pop   y
6F04: tset1 $9A11
6F07: stop
6F08: bpl   $6f08
6F0A: cbne  $E5,$6f0a
6F0D: tcall 0
6F0E: tcall 0
6F0F: subw  ya,$4F
6F11: clr5  $4C
6F13: setp
6F14: sbc   a,$C23C+y
6F17: cmp   x,$339A
6F1A: inc   $EF32
6F1D: bpl   $6f10
6F1F: cmp   x,$8AF2
6F22: jmp   $1ED2
6F25: set2  $E2
6F27: bra   $6ef6
6F29: tcall 1
6F2A: eor1  c,$1B33,05
6F2D: tcall 15
6F2E: set7  $3A
6F30: mov   a,$050B
6F33: mov1  c,$1010,07
6F36: nop
6F37: tcall 1
6F38: stop
6F39: set1  $FC
6F3B: tcall 2
6F3C: subw  ya,$D2
6F3E: dec   x
6F3F: bbs6  $1E,$6f33
6F42: clrp
6F43: stop
6F44: beq   $6edc
6F46: and   a,$5555
6F49: eor   a,$5766+y
6F4C: mov   x,a
6F4D: tcall 13
6F4E: subw  ya,$0E
6F50: nop
6F51: daa   a
6F52: clrp
6F53: daa   a
6F54: tcall 4
6F55: mul   ya
6F56: bmi   $6ef2
6F58: mov   a,$1D+x
6F5A: mov   $3E+x,a
6F5C: mov   $0E1F+x,a
6F5F: clrv
6F60: eor1  c,$0A64,06
6F63: tcall 13
6F64: rol   $0FF5
6F67: rol   $AAD3
6F6A: clrp
6F6B: beq   $6f7d
6F6D: nop
6F6E: nop
6F6F: clr0  $FC
6F71: clr0  $9A
6F73: stop
6F74: brk
6F75: tcall 14
6F76: tcall 15
6F77: inc   y
6F78: and   a,$24EA
6F7B: subw  ya,$F0
6F7D: tcall 3
6F7E: di
6F7F: tcall 2
6F80: stop
6F81: clr2  $CD
6F83: clrp
6F84: subw  ya,$E1
6F86: mov   x,a
6F87: set5  $1E
6F89: bpl   $6f8b
6F8B: cbne  $E1,$6f18
6F8E: bbs3  $FE,$6f66
6F91: clr0  $4C
6F93: bbc6  $4E,$6f47
6F96: subw  ya,$1E
6F98: nop
6F99: clr7  $C0
6F9B: inc   x
6F9C: clr6  $4F
6F9E: tcall 11
6F9F: subw  ya,$30
6FA1: mov   a,$2A+x
6FA3: or    a,$1D
6FA5: or    a,$0B+x
6FA7: clr0  $9A
6FA9: bne   $6fdb
6FAB: bcs   $6fcc
6FAD: clr7  $1E
6FAF: clr7  $2D
6FB1: subw  ya,$F5
6FB3: tset1 $0120
6FB6: bpl   $6fa8
6FB8: tcall 1
6FB9: dbnz  y,$6f45
6FBB: set0  $CE
6FBD: clrp
6FBE: beq   $6f9c
6FC0: bbs0  $1D,$6fc3
6FC3: eor1  c,$1F06,06
6FC6: clrc
6FC7: tcall 13
6FC8: jmp   $5CB4
6FCB: pcall $9A
6FCD: clr5  $2E
6FCF: clr7  $0C
6FD1: mov   $2E+x,a
6FD3: bbs7  $2E,$6f70
6FD6: bbc7  $0D,$6ffd
6FD9: dbnz  y,$6ffc
6FDB: brk
6FDC: tcall 0
6FDD: cmp   x,$E29A
6FE0: asl   $FD04
6FE3: brk
6FE4: beq   $7006
6FE6: stop
6FE7: subw  ya,$F3
6FE9: bra   $6fdd
6FEB: jmp   ($F2F1+x)
6FEE: pcall $DF
6FF0: eor1  c,$01E0,01
6FF3: tset1 $03EC
6FF6: cbne  $54+x,$6ff8
6FF9: subw  ya,$F0
6FFB: tcall 2
6FFC: bpl   $6fcf
6FFE: dbnz  $E1,$7040
7001: bne   $6f9d
7003: cmp   x,$2BE3
7006: set0  $FD
7008: tcall 15
7009: cbne  $E2,$6fa6
700C: cbne  $F5,$7029
700F: and   a,($E9+x)
7011: or    a,$112D+y
7014: mov1  c,$01DE,02
7017: bne   $7048
7019: clrv
701A: jmp   ($0E03+x)
701D: subw  ya,$F2
701F: set0  $3D
7021: bbc7  $2E,$7016
7024: bra   $6ff7
7026: subw  ya,$0E
7028: clr7  $0D
702A: clr0  $FB
702C: tcall 1
702D: tcall 15
702E: stop
702F: subw  ya,$11
7031: nop
7032: tcall 2
7033: beq   $7044
7035: bbc7  $5D,$7009
7038: subw  ya,$0F
703A: tcall 0
703B: stop
703C: tcall 0
703D: mov   y,a
703E: bbc7  $2F,$7052
7041: eor1  c,$02B0,02
7044: brk
7045: bbc1  $0D,$704d
7048: rol   $8A10
704B: mov   (x)+,a
704C: tcall 4
704D: dec   y
704E: clr0  $EC
7050: tcall 15
7051: brk
7052: stop
7053: subw  ya,$01
7055: tcall 1
7056: bpl   $703a
7058: rol   $6FD4
705B: daa   a
705C: subw  ya,$FF
705E: clr0  $0C
7060: bbs0  $0A,$7067
7063: bra   $7057
7065: subw  ya,$EE
7067: and   a,$FD+x
7069: set1  $FF
706B: tcall 2
706C: clr7  $1E
706E: subw  ya,$B0
7070: tcall 2
7071: nop
7072: dbnz  y,$7065
7074: brk
7075: tcall 15
7076: brk
7077: subw  ya,$E0
7079: clr1  $1F
707B: clrv
707C: bra   $705f
707E: clr2  $BF
7080: subw  ya,$1F
7082: set7  $1F
7084: tcall 0
7085: mov   y,$3E04
7088: tcall 15
7089: eor1  c,$1200,00
708C: cmp   x,$EC44
708F: bbs1  $21,$709f
7092: subw  ya,$DF
7094: set1  $0C
7096: tcall 0
7097: tset1 $F10F
709A: cbne  $8A,$703f
709D: clr1  $6F
709F: mul   ya
70A0: tcall 2
70A1: set7  $2F
70A3: bbc1  $8A,$7070
70A6: clr7  $31
70A8: clrv
70A9: mov   $33+x,y
70AB: tcall 1
70AC: tcall 14
70AD: eor1  c,$132E,00
70B0: bpl   $70c5
70B2: mov   y,$E353
70B5: asl   a
70B6: eor1  c,$1EC1,00
70B9: tcall 15
70BA: brk
70BB: stop
70BC: pop   x
70BD: eor   a,$AD
70BF: subw  ya,$10
70C1: tcall 15
70C2: setp
70C3: tcall 12
70C4: tclr1 $60B2
70C7: bne   $7063
70C9: tset1 $2EF2
70CC: bbc7  $FA,$70e4
70CF: brk
70D0: set0  $8A
70D2: das   a
70D3: eor   a,$5EEF+x
70D6: mov   ($0B)+y,a
70D8: and   a,(x)
70D9: mov   y,$9A
70DB: tcall 0
70DC: bne   $712d
70DE: bne   $70ef
70E0: beq   $70f2
70E2: stop
70E3: subw  ya,$0F
70E5: tcall 0
70E6: pcall $D0
70E8: pcall $D0
70EA: clr1  $E1
70EC: adc   a,$E14D+y
70EF: tset1 $CBCC
70F2: inc   a
70F3: cbne  $EF+x,$7080
70F6: brk
70F7: tcall 0
70F8: eor   a,$CD
70FA: and   a,$FF+x
70FC: set1  $EF
70FE: addw  ya,$0D
7100: push  psw
7101: mov   $DC2D,a
7104: mov   sp,x
7105: eor   a,$8AAB+x
7108: brk
7109: call  $3EE5
710C: daa   a
710D: jmp   ($1A36+x)
7110: eor1  c,$0DA3,01
7113: and   a,$F6E9
7116: dec   y
7117: cmp   a,$8AAE+x
711A: pcall $E2
711C: set3  $BD
711E: eor   a,$7FBF+y
7121: bcs   $70ad
7123: push  a
7124: clr7  $0E
7126: tcall 1
7127: mov   x,#$3F
7129: set6  $1D
712B: eor1  c,$01D1,01
712E: tcall 1
712F: set7  $3C
7131: bbs7  $FF,$71a7
7134: subw  ya,$CD
7136: tcall 3
7137: tcall 15
7138: cmp   x,$00C3
713B: tcall 1
713C: beq   $70d8
713E: tcall 0
713F: beq   $7173
7141: di
7142: cmp   x,$03
7144: cmp   x,$8AF2
7147: mov   y,$43
7149: pop   a
714A: bbs1  $0A,$712f
714D: cmp   x,$9A11
7150: notc
7151: clr1  $F0
7153: nop
7154: jmp   ($12F0+x)
7157: tcall 0
7158: subw  ya,$EC
715A: clr0  $12
715C: pop   y
715D: tcall 14
715E: tcall 2
715F: clrv
7160: tcall 3
7161: subw  ya,$DF
7163: bpl   $7189
7165: mov   a,y
7166: bbc0  $1F,$7178
7169: bpl   $70f5
716B: brk
716C: stop
716D: set1  $DC
716F: mov   a,$0D+x
7171: tcall 14
7172: asl   a
7173: subw  ya,$F2
7175: stop
7176: clr1  $DE
7178: set1  $D0
717A: pcall $B4
717C: mov1  c,$123C,07
717F: nop
7180: tcall 0
7181: pop   y
7182: set1  $FF
7184: tcall 0
7185: eor1  c,$113C,07
7188: clr1  $F0
718A: tset1 $F242
718D: dbnz  y,$7119
718F: tcall 15
7190: jmp   ($EE00+x)
7193: tcall 1
7194: rol   $C6
7196: mov   y,$308A
7199: daa   a
719A: bbs2  $C0,$71c9
719D: or    a,$0E+x
719F: bbc7  $9A,$71b0
71A2: tcall 0
71A3: tcall 15
71A4: clrp
71A5: mov   $E052,y
71A8: clrp
71A9: subw  ya,$FF
71AB: bpl   $71be
71AD: tcall 0
71AE: dbnz  y,$71e2
71B0: tcall 14
71B1: brk
71B2: eor1  c,$1EC3,02
71B5: bbc5  $2B,$718d
71B8: notc
71B9: bmi   $7188
71BB: subw  ya,$12
71BD: tcall 13
71BE: rol   $DB25
71C1: or    a,$1F+x
71C3: beq   $715b
71C5: clr0  $12
71C7: push  psw
71C8: clr0  $CB
71CA: mov   a,y
71CB: daa   a
71CC: cmp   x,$D296
71CF: mov   y,a
71D0: bbs1  $12,$7205
71D3: bbc0  $54,$71f8
71D6: eor1  c,$04FD,01
71D9: mov   y,$32+x
71DB: mov   x,#$22
71DD: pop   y
71DE: ror   $D2AA
71E1: bra   $71d4
71E3: brk
71E4: nop
71E5: tcall 15
71E6: bmi   $71a8
71E8: adc   a,$0232+y
71EB: bra   $71ce
71ED: or1   c,$1DC0,07
71F0: set0  $9A
71F2: mul   ya
71F3: set1  $FF
71F5: set1  $ED
71F7: bbc1  $EE,$724b
71FA: adc   a,$22DD+y
71FD: pop   y
71FE: bra   $71ad
7200: mov   y,$B1+x
7202: asl   $9A
7204: bbs7  $20,$7207
7207: beq   $7218
7209: beq   $724e
720B: mov   $158A,y
720E: nop
720F: cbne  $E1,$721e
7212: clr0  $F1
7214: clr1  $8A
7216: movw  $16,ya
7218: mov   x,a
7219: bbs6  $1B,$7271
721C: daa   a
721D: bvc   $71b5
721F: notc
7220: bbs1  $FD,$7221
7223: daa   a
7224: mov   y,$EEDE
7227: eor1  c,$03DF,01
722A: dbnz  y,$726c
722C: mov   (x)+,a
722D: tcall 1
722E: bbs2  $EC,$71bb
7231: tcall 11
7232: clr2  $EF
7234: clrp
7235: mov   sp,x
7236: tcall 2
7237: bbc0  $10,$71c4
723A: mov   x,#$43
723C: clr7  $0E
723E: bbs7  $3E,$7247
7241: asl   a
7242: adc   a,$11FE+y
7245: stop
7246: mov   y,a
7247: mul   ya
7248: tset1 $FECE
724B: eor1  c,$13D0,07
724E: lsr   $23
7250: inc   $63
7252: clr6  $3C
7254: eor1  c,$0DB5,06
7257: cmp   a,$DCDD+x
725A: or    a,$5F
725C: bbs6  $9A,$727c
725F: clr7  $31
7261: bne   $7282
7263: set0  $2E
7265: tcall 1
7266: eor1  c,$16BB,02
7269: or1   c,$1FF2,00
726C: bra   $722e
726E: pcall $9A
7270: bne   $7294
7272: tset1 $020F
7275: sleep
7276: bmi   $7268
7278: adc   a,$F01F+y
727B: set1  $F0
727D: asl   a
727E: mov   a,(x)+
727F: jmp   ($8A02+x)
7282: mov1  $0024,02,c
7285: sleep
7286: beq   $72ac
7288: asl   a
7289: and   a,$8A+x
728B: inc   $56
728D: not1  $0540,05
7290: push  x
7291: bbc5  $2D,$722a
7294: pop   x
7295: dbnz  y,$728a
7297: nop
7298: tcall 4
7299: daa   a
729A: eor   a,$01
729C: subw  ya,$3C
729E: bbc6  $4E,$7293
72A1: mov   y,$04
72A3: call  $9AD1
72A6: cmp   x,$4DE3
72A9: set0  $ED
72AB: and   a,$FD+x
72AD: set1  $8A
72AF: cmp   y,#$63
72B1: pop   x
72B2: tcall 2
72B3: nop
72B4: dbnz  y,$72b9
72B6: asl   $9A+x
72B8: bbs7  $FF,$72dd
72BB: sleep
72BC: bra   $727e
72BE: tcall 5
72BF: daa   a
72C0: subw  ya,$20
72C2: tcall 11
72C3: dbnz  $E2,$72d2
72C6: bbc6  $4E,$72ca
72C9: eor1  c,$04EB,00
72CC: jmp   $FEE1
72CF: or    a,$3F+x
72D1: mov   a,$96
72D3: cbne  $F3,$7304
72D6: clrv
72D7: inc   y
72D8: sleep
72D9: sleep
72DA: dbnz  y,$7266
72DC: tcall 12
72DD: clr0  $1F
72DF: jmp   ($EFE1+x)
72E2: bbs2  $EE,$726f
72E5: sleep
72E6: clr0  $0D
72E8: mov   a,$39+x
72EA: bcs   $7322
72EC: brk
72ED: eor1  c,$12DC,00
72F0: clr1  $E0
72F2: cbne  $F2,$7316
72F5: tcall 1
72F6: addw  ya,$BF
72F8: bbc7  $4F,$729f
72FB: and1  c,!($11C3,01)
72FE: mov   (x)+,a
72FF: eor1  c,$02FE,01
7302: bpl   $7303
7304: clrp
7305: mov   (x)+,a
7306: set3  $E1
7308: eor1  c,$06EB,00
730B: and   ($E0),($22)
730E: dec   y
730F: or    a,$8A1E+y
7312: dbnz  y,$7323
7314: and   a,$31DD+x
7317: stop
7318: bbc1  $D1,$72a5
731B: lsr   $B5+x
731D: ror   $F2
731F: stop
7320: bpl   $7312
7322: clrp
7323: eor1  c,$10DD,00
7326: eor   a,$04CA
7329: tset1 $D013
732C: adc   a,(x)
732D: set3  $DF
732F: eor   a,$DD+x
7331: tcall 2
7332: sbc   (x),(y)
7333: pop   x
7334: cmp   y,#$8A
7336: cmp   (x),(y)
7337: tcall 12
7338: or    a,$2D+x
733A: mov   a,$261B
733D: mov   a,(x)+
733E: subw  ya,$5F
7340: di
7341: bmi   $7333
7343: nop
7344: jmp   ($FD02+x)
7347: eor1  c,$1C14,06
734A: cmp   a,$43BC
734D: mov   (x)+,a
734E: setp
734F: bbc6  $96,$7394
7352: sleep
7353: set1  $EF
7355: tcall 3
7356: mov   $CFFD,y
7359: eor1  c,$027A,05
735C: push  a
735D: and   a,$50FA+y
7360: sbc   a,$8A3E+y
7363: tcall 0
7364: push  psw
7365: and   a,(x)
7366: cmp   y,#$50
7368: brk
7369: clr7  $FD
736B: adc   a,$DBDE+y
736E: mov   a,$1D
7370: tcall 15
7371: tcall 2
7372: clr0  $11
7374: adc   a,$1E43+y
7377: mov   a,$2F+x
7379: brk
737A: notc
737B: pop   y
737C: mov   a,y
737D: eor1  c,$0C51,06
7380: mov   a,$2E21+x
7383: bne   $73c8
7385: daa   a
7386: subw  ya,$21
7388: clrv
7389: call  $4ED1
738C: tcall 13
738D: bra   $7371
738F: adc   a,$DFFC+y
7392: sleep
7393: brk
7394: set0  $3F
7396: bbs7  $31,$7333
7399: bmi   $7369
739B: set2  $EE
739D: tcall 1
739E: pop   y
739F: clr0  $EE
73A1: subw  ya,$33
73A3: mov   sp,x
73A4: tcall 4
73A5: stop
73A6: set1  $D0
73A8: tclr1 $8AE2
73AB: bvc   $735f
73AD: push  a
73AE: bbs0  $0E,$73c2
73B1: stop
73B2: tcall 14
73B3: subw  ya,$2F
73B5: sleep
73B6: clr0  $2E
73B8: clr6  $2E
73BA: mov   a,$EE+x
73BC: subw  ya,$20
73BE: sleep
73BF: set1  $FE
73C1: tcall 1
73C2: pop   x
73C3: tcall 5
73C4: mul   ya
73C5: eor1  c,$0230,07
73C8: push  a
73C9: tcall 15
73CA: eor   a,$9F
73CC: ret
73CD: tcall 0
73CE: eor1  c,$1100,00
73D1: clrp
73D2: mov   a,y
73D3: and   a,(x)
73D4: mov   y,$10F2
73D7: eor1  c,$1F0E,07
73DA: bbs1  $1D,$73a0
73DD: mov   x,a
73DE: sbc   a,$4D+x
73E0: adc   a,$2E23+y
73E3: mov   a,$4F
73E5: cbne  $FD+x,$73c8
73E8: mov   y,$9A
73EA: or    a,$1C
73EC: mov   a,$1D
73EE: or    a,$FE
73F0: set1  $EE
73F2: subw  ya,$24
73F4: mov   y,a
73F5: bbs0  $FF,$7427
73F8: tcall 15
73F9: jmp   ($8AF0+x)
73FC: bpl   $740c
73FE: clr7  $4E
7400: clr6  $3D
7402: mov   $5D,a
7404: eor1  c,$1DE3,06
7407: tcall 3
7408: jmp   ($1DEF+x)
740B: mov   a,$8A0A
740E: mov   a,($CC)+y
7410: jmp   $4DD2
7413: bbs0  $0F,$7409
7416: eor1  c,$002E,01
7419: mov   $2E+x,a
741B: tcall 14
741C: inc   x
741D: mov   a,$8ACD
7420: tcall 6
7421: mov   x,#$23
7423: tcall 15
7424: asl   $50+x
7426: sbc   a,$861B+y
7429: and   a,(x)
742A: bra   $7460
742C: tcall 15
742D: dbnz  $AC,$73d9
7430: set7  $9A
7432: mov   x,#$23
7434: push  psw
7435: clr7  $1F
7437: clrp
7438: clrv
7439: tcall 3
743A: subw  ya,$EF
743C: set1  $F0
743E: jmp   ($40D1+x)
7441: daa   a
7442: clrp
7443: eor1  c,$1DE2,00
7446: clr6  $40
7448: dbnz  y,$744a
744A: tcall 2
744B: tcall 14
744C: adc   a,$0232+y
744F: bra   $7455
7451: inc   x
7452: sleep
7453: mov   x,#$00
7455: subw  ya,$CF
7457: tcall 3
7458: dbnz  y,$745a
745A: clr0  $0F
745C: clr7  $00
745E: eor1  c,$0310,07
7461: tclr1 $D0E1
7464: bbs2  $DD,$7477
7467: eor1  c,$1FF2,07
746A: bpl   $745e
746C: rol   $EC23
746F: tcall 5
7470: eor1  c,$1CD3,07
7473: bbs7  $31,$7482
7476: tcall 13
7477: mov   y,a
7478: and   a,$8A
747A: mov   y,$02+x
747C: stop
747D: set0  $1D
747F: bbs0  $2C,$74b6
7482: eor1  c,$04EB,01
7485: jmp   ($A030+x)
7488: tcall 3
7489: nop
748A: stop
748B: eor1  c,$1F01,07
748E: clr0  $00
7490: stop
7491: clr1  $DB
7493: clrc
7494: subw  ya,$03
7496: mov   y,$04
7498: jmp   ($DF1F+x)
749B: jmp   ($8A11+x)
749E: cbne  $AE,$74d4
74A1: cmp   x,$B1
74A3: tcall 0
74A4: setp
74A5: nop
74A6: eor1  c,$00E2,01
74A9: clrv
74AA: bbc1  $EA,$74c1
74AD: cbne  $00,$743a
74B0: di
74B1: tcall 5
74B2: mov   a,(x)+
74B3: tcall 5
74B4: daa   a
74B5: pcall $C3
74B7: bpl   $7443
74B9: bra   $747c
74BB: dec   x
74BC: and   a,$EA+x
74BE: tcall 2
74BF: mov   a,(x)+
74C0: bbc1  $8A,$74be
74C3: cbne  $D7,$74f1
74C6: bbs7  $D0,$7538
74C9: tcall 15
74CA: eor1  c,$0101,00
74CD: tset1 $DF32
74D0: beq   $74f6
74D2: asl   $8A
74D4: mov   a,$6AB0+x
74D7: or    a,($0A+x)
74D9: or    a,$DD+x
74DB: bbc2  $8A,$74cd
74DE: push  psw
74DF: mov   $51,a
74E1: mov   $21,y
74E3: tcall 13
74E4: bbc7  $86,$7501
74E7: cmp   y,#$BF
74E9: eor   a,$24EA
74EC: or    a,$66+x
74EE: eor1  c,$1F00,00
74F1: mov   $30+x,a
74F3: cbne  $20+x,$74e9
74F6: push  a
74F7: eor1  c,$1FD2,00
74FA: nop
74FB: nop
74FC: bbc1  $CC,$7501
74FF: bbc0  $8A,$753d
7502: clr6  $FD
7504: and   a,$1F+x
7506: pop   x
7507: sleep
7508: and   a,$86+x
750A: asl   a
750B: mov   x,#$BE
750D: clr0  $FD
750F: bbs1  $F0,$7547
7512: eor1  c,$1D10,00
7515: sbc   a,$60+x
7517: pop   y
7518: brk
7519: bbs0  $0F,$74b6
751C: tcall 0
751D: jmp   ($41C0+x)
7520: tcall 0
7521: cbne  $22+x,$7523
7524: adc   a,(x)
7525: and   a,$FC31
7528: tcall 15
7529: eor   a,$ECDB
752C: bcs   $74b8
752E: rol   $C2+x
7530: dec   x
7531: set2  $BF
7533: setp
7534: bne   $7528
7536: adc   a,$1043+y
7539: set0  $23
753B: push  a
753C: bbs0  $1E,$751f
753F: adc   a,$100F+y
7542: mov   x,#$EF
7544: clr1  $FE
7546: beq   $754a
7548: adc   a,$232E+y
754B: cbne  $EF+x,$7593
754E: asl   $EFD1
7551: adc   a,(x)
7552: ror   $3C91
7555: tcall 10
7556: cmp   x,$05
7558: or1   c,$06F4,04
755B: bbs2  $35,$75ac
755E: mov   a,$0570+x
7561: rol   $B2+x
7563: adc   a,(x)
7564: inc   x
7565: bbc0  $BA,$7537
7568: tcall 2
7569: brk
756A: cbne  $F0+x,$7508
756D: brk
756E: tcall 2
756F: pop   y
7570: tcall 15
7571: set2  $CE
7573: set0  $E0
7575: set0  $00
7577: nop
7578: nop
7579: nop
757A: nop
757B: nop
757C: nop
757D: nop
757E: or    a,$1030+y
7581: bpl   $7583
7583: mov   a,$FF+x
7585: rol   $F0+x
7587: and   a,(x)
7588: brk
7589: dbnz  y,$758a
758B: set0  $43
758D: dbnz  y,$75ae
758F: stop
7590: decw  $20
7592: brk
7593: or    a,$00DF
7596: nop
7597: or    a,$21
7599: or1   c,!($01FF,00)
759C: bbc2  $0D,$75a5
759F: bcs   $75c1
75A1: tcall 1
75A2: and1  c,$0000,00
75A5: nop
75A6: nop
75A7: tset1 $2000
75AA: jmp   $FE16
75AD: dec   y
75AE: dec   y
75AF: movw  ya,$B1
75B1: nop
75B2: bvc   $75f8
75B4: incw  $0F
75B6: clrp
75B7: clr7  $01
75B9: push  x
75BA: eor   a,($3D)+y
75BC: tcall 14
75BD: or1   c,!($1315,00)
75C0: bmi   $75f5
75C2: cbne  $0F,$75c2
75C5: asl   $5A
75C7: beq   $75ba
75C9: bbc1  $EC,$75db
75CC: nop
75CD: beq   $75cf
75CF: incw  $F2
75D1: nop
75D2: jmp   ($1411+x)
75D5: clr0  $23
75D7: eor   a,$5A+x
75D9: and   a,$100F
75DC: tcall 1
75DD: tcall 1
75DE: bpl   $75f1
75E0: bpl   $764c
75E2: beq   $75e4
75E4: stop
75E5: dbnz  y,$75e6
75E7: bbs1  $FC,$75ca
75EA: and1  c,$0FBE,01
75ED: nop
75EE: bpl   $75f1
75F0: clr0  $22
75F2: and   a,$6A+x
75F4: tcall 1
75F5: set0  $21
75F7: and   a,$10
75F9: tcall 0
75FA: tcall 1
75FB: tcall 0
75FC: and1  c,!($0010,00)
75FF: stop
7600: stop
7601: pop   y
7602: mov   a,y
7603: mov   x,#$BC
7605: and1  c,!($0B02,02)
7608: tcall 13
7609: bpl   $760c
760B: nop
760C: clr0  $01
760E: and1  c,!($1312,00)
7611: set1  $13
7613: bbs1  $33,$764c
7616: brk
7617: and1  c,!($101F,00)
761A: brk
761B: tset1 $DCED
761E: mov   $BA+x,y
7620: addw  ya,$EE
7622: dbnz  y,$7610
7624: tcall 14
7625: tcall 1
7626: set1  $41
7628: bpl   $7694
762A: tcall 15
762B: tcall 0
762C: clr0  $23
762E: and   a,$33+x
7630: bbs1  $33,$769d
7633: tcall 4
7634: eor   a,$0C+x
7636: pop   y
7637: pop   y
7638: mov   y,$BBCC
763B: addw  ya,$D1
763D: bpl   $763d
763F: dec   y
7640: mov   $D0CC,y
7643: and   a,$169A+y
7646: nop
7647: stop
7648: stop
7649: tcall 0
764A: nop
764B: tcall 1
764C: nop
764D: addw  ya,$31
764F: tcall 2
7650: nop
7651: clrp
7652: bbc0  $EC,$7643
7655: pop   y
7656: eor1  c,$03FF,02
7659: push  a
765A: pop   y
765B: notc
765C: stop
765D: dbnz  y,$764e
765F: mov1  c,$1F00,07
7662: bpl   $76a6
7664: and1  c,!($01EE,00)
7667: nop
7668: addw  ya,$02
766A: and   a,$21+x
766C: tcall 1
766D: nop
766E: tcall 0
766F: brk
7670: set1  $9A
7672: tset1 $6A23
7675: sleep
7676: beq   $7678
7678: beq   $767a
767A: mov1  c,$000F,00
767D: brk
767E: beq   $768f
7680: set0  $02
7682: tcall 5
7683: sbc   a,(x)
7684: tcall 4
7685: bpl   $7687
7687: brk
7688: stop
7689: stop
768A: stop
768B: stop
768C: subw  ya,$00
768E: set0  $55
7690: das   a
7691: clrv
7692: tcall 15
7693: nop
7694: nop
7695: addw  ya,$FE
7697: jmp   ($EEEE+x)
769A: mov   a,y
769B: mov   x,#$DC
769D: mov   sp,x
769E: movw  ya,$00
76A0: bpl   $76a6
76A2: sleep
76A3: beq   $7695
76A5: bpl   $76a7
76A7: adc   a,$DFED+y
76AA: mov   a,$2155+y
76AD: clr0  $10
76AF: stop
76B0: and1  c,!($12E3,07)
76B3: brk
76B4: pop   y
76B5: notc
76B6: mov   $A9CA,y
76B9: mov1  c,$100F,07
76BC: brk
76BD: tcall 15
76BE: clrp
76BF: tcall 0
76C0: ror   $EF
76C2: subw  ya,$E0
76C4: set0  $00
76C6: clr3  $ED
76C8: bpl   $76cb
76CA: tcall 1
76CB: addw  ya,$37
76CD: pop   y
76CE: stop
76CF: tcall 1
76D0: brk
76D1: nop
76D2: stop
76D3: dbnz  y,$765f
76D5: stop
76D6: sleep
76D7: dbnz  y,$76b8
76D9: pop   y
76DA: cbne  $FF+x,$7723
76DD: mov1  c,$010F,02
76E0: mov   a,y
76E1: tcall 1
76E2: cmp   x,$F0
76E4: tcall 0
76E5: nop
76E6: eor1  c,$1004,00
76E9: bbs1  $42,$76da
76EC: nop
76ED: nop
76EE: nop
76EF: addw  ya,$FF
76F1: brk
76F2: pop   y
76F3: pop   y
76F4: mov   a,y
76F5: mov   a,y
76F6: mov   $CB,y
76F8: movw  ya,$00
76FA: beq   $76fd
76FC: nop
76FD: or    a,$FF
76FF: clrv
7700: nop
7701: adc   a,(x)
7702: bpl   $7713
7704: dbnz  y,$76e3
7706: pop   y
7707: tcall 15
7708: eor   a,(x)
7709: bmi   $7775
770B: sleep
770C: beq   $771e
770E: stop
770F: notc
7710: mov   a,y
7711: mov   $BA,y
7713: subw  ya,$FF
7715: stop
7716: stop
7717: stop
7718: stop
7719: clr0  $55
771B: bcs   $76b7
771D: ror   a
771E: pop   x
771F: beq   $7732
7721: tcall 1
7722: bpl   $7724
7724: tcall 1
7725: eor1  c,$0321,03
7728: mov   a,y
7729: nop
772A: nop
772B: beq   $772d
772D: nop
772E: addw  ya,$ED
7730: pop   y
7731: mov   a,y
7732: mov   a,y
7733: dec   y
7734: inc   $CD+x
7736: bbs5  $9A,$777b
7739: tcall 3
773A: inc   a
773B: bbc3  $FB,$773d
773E: tcall 1
773F: bpl   $76cb
7741: tcall 1
7742: clrp
7743: tcall 1
7744: and   a,$43
7746: dec   y
7747: nop
7748: nop
7749: addw  ya,$10
774B: stop
774C: stop
774D: stop
774E: notc
774F: cbne  $DD+x,$771e
7752: mov1  c,$000F,00
7755: push  a
7756: tcall 0
7757: bbc0  $FE,$774d
775A: nop
775B: subw  ya,$DF
775D: tcall 15
775E: tcall 1
775F: nop
7760: tcall 0
7761: tcall 0
7762: clr0  $31
7764: eor1  c,$10CD,07
7767: nop
7768: nop
7769: nop
776A: nop
776B: stop
776C: stop
776D: subw  ya,$FF
776F: nop
7770: stop
7771: clrp
7772: cbne  $F0+x,$7757
7775: and   a,$4A9A+x
7778: clr5  $51
777A: pop   x
777B: tcall 0
777C: nop
777D: bpl   $7780
777F: eor1  c,$062F,01
7782: eor   a,$CC
7784: stop
7785: bpl   $7787
7787: bpl   $7713
7789: stop
778A: brk
778B: stop
778C: stop
778D: mov   a,$CDEE+x
7790: pop   y
7791: subw  ya,$F0
7793: tcall 14
7794: and   a,$AC5E+x
7797: set2  $2C
7799: beq   $7735
779B: tcall 0
779C: nop
779D: tcall 0
779E: tcall 0
779F: clr0  $40
77A1: dbnz  y,$7793
77A3: eor1  c,$1101,07
77A6: nop
77A7: beq   $77a9
77A9: sleep
77AA: or    a,(x)
77AB: mov   a,y
77AC: mov1  c,$0FF0,00
77AF: beq   $77c0
77B1: brk
77B2: set1  $31
77B4: pop   x
77B5: subw  ya,$04
77B7: jmp   ($10D0+x)
77BA: nop
77BB: bpl   $77dc
77BD: set1  $8A
77BF: cmp   a,$F0AC+x
77C2: nop
77C3: tcall 0
77C4: nop
77C5: beq   $77c7
77C7: addw  ya,$E0
77C9: bvc   $7776
77CB: dec   y
77CC: mov   a,y
77CD: dec   y
77CE: mov   a,y
77CF: pop   x
77D0: mov1  c,$02F3,02
77D3: mov   y,$F0+x
77D5: clr0  $FF
77D7: nop
77D8: nop
77D9: subw  ya,$20
77DB: nop
77DC: or    a,$41
77DE: mov   y,a
77DF: beq   $77e2
77E1: nop
77E2: addw  ya,$F0
77E4: nop
77E5: brk
77E6: tcall 2
77E7: and   (x),(y)
77E8: mov   a,y
77E9: mov   a,y
77EA: cbne  $AA+x,$77fc
77ED: beq   $77ef
77EF: tcall 15
77F0: bbs2  $FD,$77d3
77F3: nop
77F4: subw  ya,$3E
77F6: nop
77F7: nop
77F8: tcall 0
77F9: nop
77FA: clr0  $62
77FC: pop   x
77FD: addw  ya,$E1
77FF: jmp   ($1011+x)
7802: nop
7803: nop
7804: bbs0  $DD,$77b1
7807: brk
7808: nop
7809: brk
780A: beq   $780c
780C: stop
780D: brk
780E: eor   a,$AA
7810: cbne  $CE,$7814
7813: bpl   $7805
7815: tcall 0
7816: nop
7817: nop
7818: subw  ya,$03
781A: bbc2  $EC,$781d
781D: nop
781E: tcall 0
781F: nop
7820: nop
7821: addw  ya,$F3
7823: cbne  $CE,$7814
7826: pop   y
7827: mov   a,y
7828: mov   $AADC,y
782B: brk
782C: beq   $7843
782E: call  $00EC
7831: tcall 0
7832: beq   $77ce
7834: tcall 1
7835: nop
7836: nop
7837: bbs0  $62,$7828
783A: clrv
783B: nop
783C: and1  c,!($0036,01)
783F: clrp
7840: tcall 2
7841: asl   $DD
7843: mov   $AACC,y
7846: brk
7847: brk
7848: brk
7849: brk
784A: nop
784B: clr7  $71
784D: mov   a,y
784E: subw  ya,$DE
7850: tcall 0
7851: bra   $7853
7853: bpl   $7855
7855: clr0  $54
7857: eor1  c,$0FBA,07
785A: tcall 1
785B: tcall 0
785C: bpl   $785e
785E: bpl   $786f
7860: addw  ya,$EE
7862: stop
7863: notc
7864: mov   a,y
7865: mov   a,y
7866: mov   $BF,y
7868: pop   a
7869: mov1  c,$05F0,03
786C: mov   y,$00EF
786F: bpl   $7880
7871: tcall 0
7872: subw  ya,$1F
7874: bbs0  $54,$7873
7877: beq   $7879
7879: nop
787A: tcall 1
787B: and1  c,!($010E,00)
787E: dbnz  y,$785e
7880: mov   a,y
7881: mov   $AB,y
7883: sbc   ($00),($BA)
7886: beq   $7888
7888: beq   $789e
788A: brk
788B: dbnz  y,$788d
788D: subw  ya,$1F
788F: clrp
7890: tcall 0
7891: nop
7892: tcall 0
7893: cmp   a,$FC+x
7895: clrv
7896: addw  ya,$42
7898: nop
7899: clr0  $11
789B: nop
789C: brk
789D: stop
789E: dbnz  y,$7846
78A0: stop
78A1: pop   y
78A2: pop   y
78A3: pop   y
78A4: pop   y
78A5: pop   y
78A6: pop   y
78A7: mov   a,$7DAA
78AA: das   a
78AB: beq   $78ad
78AD: bpl   $78af
78AF: nop
78B0: tcall 0
78B1: mov1  c,$1E24,07
78B4: beq   $78b6
78B6: bpl   $78b8
78B8: nop
78B9: nop
78BA: addw  ya,$13
78BC: mov   y,a
78BD: dbnz  y,$78ac
78BF: notc
78C0: mov   y,$CADC
78C3: movw  ya,$00
78C5: beq   $78c8
78C7: tcall 3
78C8: sleep
78C9: beq   $78cb
78CB: nop
78CC: subw  ya,$00
78CE: bpl   $78d1
78D0: eor   a,(x)
78D1: rol   $F0E0
78D4: tcall 0
78D5: addw  ya,$42
78D7: nop
78D8: tcall 1
78D9: stop
78DA: nop
78DB: pop   y
78DC: sleep
78DD: notc
78DE: movw  ya,$00
78E0: beq   $78e2
78E2: beq   $78e4
78E4: brk
78E5: and   a,$FE
78E7: mov1  c,$10EF,07
78EA: bpl   $78ec
78EC: nop
78ED: bpl   $7912
78EF: brk
78F0: adc   a,(x)
78F1: clr2  $FF
78F3: dbnz  y,$78d2
78F5: mov   a,y
78F6: mov   $CBCC,y
78F9: addw  ya,$FF
78FB: mov   y,a
78FC: pop   y
78FD: mov   a,y
78FE: dec   y
78FF: mov   $DBBC,y
7902: movw  ya,$0F
7904: or    a,$2D+x
7906: clrv
7907: nop
7908: beq   $790b
790A: nop
790B: mov1  c,$1400,00
790E: cbne  $E0,$7912
7911: beq   $7924
7913: beq   $797f
7915: cmp   a,$FFA3+y
7918: notc
7919: mov   a,y
791A: mov   $BA,y
791C: adc   (x),(y)
791D: movw  ya,$00
791F: beq   $7921
7921: beq   $7915
7923: setp
7924: sleep
7925: beq   $78c1
7927: beq   $791a
7929: bpl   $793b
792B: and   a,(x)
792C: push  y
792D: mul   ya
792E: nop
792F: and1  c,!($1354,03)
7932: set1  $31
7934: bpl   $7944
7936: pop   y
7937: notc
7938: addw  ya,$EE
793A: mov   a,y
793B: mov   a,y
793C: mov   $CDCB,y
793F: inc   a
7940: mov   x,#$AA
7942: cmp   a,$E0CB+y
7945: nop
7946: nop
7947: tcall 0
7948: nop
7949: bbs0  $9A,$79ac
794C: mov   a,(x)+
794D: nop
794E: tcall 0
794F: bpl   $7951
7951: bpl   $7953
7953: addw  ya,$2F
7955: stop
7956: pop   y
7957: dbnz  y,$7936
7959: notc
795A: mov   $BADB,y
795D: nop
795E: stop
795F: nop
7960: and   a,$1D
7962: sleep
7963: nop
7964: nop
7965: mov1  c,$0011,00
7968: bbc7  $40,$794a
796B: bpl   $796d
796D: bpl   $79d9
796F: notc
7970: cmp   a,$0010+x
7973: dbnz  y,$7962
7975: dec   y
7976: inc   $AA+x
7978: brk
7979: brk
797A: brk
797B: brk
797C: brk
797D: brk
797E: mov   a,$AA7E+y
7981: mov   sp,x
7982: beq   $7994
7984: nop
7985: nop
7986: set0  $41
7988: sleep
7989: addw  ya,$B0
798B: tcall 5
798C: set1  $21
798E: tcall 1
798F: tcall 1
7990: nop
7991: beq   $7a0d
7993: stop
7994: pop   y
7995: notc
7996: notc
7997: dec   y
7998: dec   y
7999: inc   $CC+x
799B: movw  ya,$00
799D: beq   $79e2
799F: cbne  $F0+x,$79a2
79A2: nop
79A3: nop
79A4: mov1  c,$1212,01
79A7: pop   y
79A8: tcall 15
79A9: bpl   $799c
79AB: bpl   $799d
79AD: eor1  c,$0E42,00
79B0: nop
79B1: brk
79B2: stop
79B3: stop
79B4: stop
79B5: pop   y
79B6: movw  ya,$00
79B8: beq   $79ba
79BA: beq   $79cb
79BC: and   a,$1C
79BE: beq   $795a
79C0: mov   y,a
79C1: tcall 1
79C2: bpl   $79d5
79C4: cmp   a,($DC+x)
79C6: beq   $79d9
79C8: and1  c,!($0600,03)
79CB: tcall 4
79CC: set1  $11
79CE: brk
79CF: pop   y
79D0: mov   a,y
79D1: addw  ya,$EE
79D3: notc
79D4: mov   a,y
79D5: dec   y
79D6: mov   $DBAB,y
79D9: mov   $AA,y
79DB: or    a,(x)
79DC: dbnz  $AE,$79df
79DF: beq   $79f2
79E1: beq   $7a17
79E3: subw  ya,$0B
79E5: clrv
79E6: tcall 1
79E7: nop
79E8: tcall 1
79E9: nop
79EA: tcall 0
79EB: nop
79EC: addw  ya,$01
79EE: stop
79EF: dbnz  y,$79df
79F1: notc
79F2: notc
79F3: dec   y
79F4: mov   $0FBA,y
79F7: nop
79F8: brk
79F9: tcall 0
79FA: clr1  $EE
79FC: beq   $79fe
79FE: mov1  c,$0000,00
7A01: and   a,$0E+x
7A03: beq   $7a05
7A05: bpl   $7a07
7A07: eor1  c,$1F51,07
7A0A: tcall 1
7A0B: nop
7A0C: brk
7A0D: beq   $7a1e
7A0F: sleep
7A10: movw  ya,$00
7A12: beq   $7a14
7A14: beq   $7a16
7A16: beq   $7a18
7A18: or    a,$AA+x
7A1A: or    (x),(y)
7A1B: bne   $7a1d
7A1D: nop
7A1E: nop
7A1F: or    a,$2F+x
7A21: clrv
7A22: addw  ya,$F4
7A24: mov   a,$33
7A26: set1  $11
7A28: tcall 0
7A29: bpl   $7a3a
7A2B: addw  ya,$FF
7A2D: dbnz  y,$7a1d
7A2F: mov   a,y
7A30: mov   a,y
7A31: dec   y
7A32: mov   $AB,y
7A34: mov1  c,$100F,07
7A37: or    a,(x)
7A38: push  y
7A39: mov   (x)+,a
7A3A: brk
7A3B: nop
7A3C: bpl   $79d8
7A3E: or    a,$CF7D+y
7A41: tcall 1
7A42: nop
7A43: tcall 1
7A44: tcall 0
7A45: bpl   $7ab1
7A47: tcall 12
7A48: tcall 4
7A49: brk
7A4A: dbnz  y,$7a29
7A4C: dec   y
7A4D: inc   $AA
7A4F: movw  ya,$00
7A51: beq   $7a53
7A53: beq   $7a64
7A55: tcall 0
7A56: tcall 4
7A57: daa   a
7A58: subw  ya,$EE
7A5A: nop
7A5B: nop
7A5C: and   a,$72
7A5E: mov   (x)+,a
7A5F: tcall 0
7A60: tcall 0
7A61: and1  c,!($1636,01)
7A64: bbs2  $22,$7a77
7A67: bpl   $7a67
7A69: mov   y,$EF7A
7A6C: notc
7A6D: mov   a,y
7A6E: dec   y
7A6F: dec   y
7A70: mov1  $0CAC,06,c
7A73: movw  ya,$00
7A75: or    a,$0D+x
7A77: beq   $7a69
7A79: tcall 0
7A7A: tcall 0
7A7B: bpl   $7a17
7A7D: tset1 $101F
7A80: tcall 0
7A81: clrp
7A82: nop
7A83: bpl   $7a95
7A85: addw  ya,$FE
7A87: nop
7A88: stop
7A89: sleep
7A8A: notc
7A8B: cbne  $DC+x,$7a5b
7A8E: mov1  c,$10F0,07
7A91: stop
7A92: nop
7A93: mov   a,$BF6D+y
7A96: beq   $7a42
7A98: beq   $7aab
7A9A: set2  $FE
7A9C: beq   $7aaf
7A9E: nop
7A9F: tcall 0
7AA0: and1  c,!($0425,07)
7AA3: set1  $10
7AA5: brk
7AA6: pop   y
7AA7: mov   a,y
7AA8: mov   $7A,y
7AAA: pop   y
7AAB: dec   y
7AAC: mov   x,#$CC
7AAE: movw  ya,$AE
7AB0: cmp   y,#$A4
7AB2: movw  ya,$42
7AB4: pop   y
7AB5: clrv
7AB6: bpl   $7ab8
7AB8: tcall 1
7AB9: jmp   ($8A0F+x)
7ABC: set3  $3F
7ABE: clr0  $11
7AC0: tcall 1
7AC1: nop
7AC2: bpl   $7ac4
7AC4: addw  ya,$FF
7AC6: stop
7AC7: pop   y
7AC8: cbne  $DD+x,$7aa8
7ACB: mov   $CA,y
7ACD: movw  ya,$00
7ACF: stop
7AD0: nop
7AD1: and   a,$0D
7AD3: beq   $7ac5
7AD5: nop
7AD6: mov1  c,$0E15,01
7AD9: clrv
7ADA: tcall 0
7ADB: nop
7ADC: tcall 1
7ADD: brk
7ADE: bpl   $7b5a
7AE0: pcall $4E
7AE2: tcall 0
7AE3: brk
7AE4: sleep
7AE5: pop   y
7AE6: sleep
7AE7: mov   a,y
7AE8: mov1  c,$100F,07
7AEB: brk
7AEC: beq   $7afd
7AEE: stop
7AEF: or    a,$AA51
7AF2: mov   sp,x
7AF3: stop
7AF4: tcall 0
7AF5: clr0  $4F
7AF7: sleep
7AF8: bpl   $7afa
7AFA: adc   a,(x)
7AFB: tcall 0
7AFC: dbnz  y,$7aec
7AFE: mov   a,y
7AFF: dec   y
7B00: mov   $BBCB,y
7B03: addw  ya,$FE
7B05: notc
7B06: notc
7B07: mov   a,y
7B08: dec   y
7B09: mov   $BDAA,y
7B0C: mov1  c,$10F0,07
7B0F: eor   a,($EA)+y
7B11: clrv
7B12: beq   $7b27
7B14: tcall 2
7B15: subw  ya,$CE
7B17: bpl   $7b29
7B19: tcall 1
7B1A: tcall 1
7B1B: bpl   $7b1d
7B1D: bpl   $7b99
7B1F: brk
7B20: clrp
7B21: dbnz  y,$7b22
7B23: pop   y
7B24: notc
7B25: mov   a,y
7B26: dec   y
7B27: mov1  c,$1F0F,07
7B2A: nop
7B2B: beq   $7b0d
7B2D: or    a,$CE6B+y
7B30: mov1  c,$01F1,00
7B33: tcall 4
7B34: dbnz  y,$7b37
7B36: nop
7B37: tcall 1
7B38: nop
7B39: and1  c,!($0724,02)
7B3C: clr1  $11
7B3E: nop
7B3F: stop
7B40: cbne  $DC+x,$7bbd
7B43: notc
7B44: notc
7B45: dec   y
7B46: mov   $BACC,y
7B49: inc   a
7B4A: movw  ya,$BA
7B4C: tcall 0
7B4D: clr1  $DF
7B4F: stop
7B50: tcall 0
7B51: tcall 2
7B52: stop
7B53: tcall 0
7B54: eor1  c,$142F,06
7B57: clr0  $21
7B59: tcall 1
7B5A: bpl   $7b5c
7B5C: bpl   $7bd8
7B5E: brk
7B5F: stop
7B60: dbnz  y,$7b50
7B62: mov   a,y
7B63: notc
7B64: mov   $CC,y
7B66: movw  ya,$00
7B68: stop
7B69: nop
7B6A: brk
7B6B: and   a,$0E
7B6D: sleep
7B6E: nop
7B6F: subw  ya,$57
7B71: rol   $10E0
7B74: tcall 1
7B75: bpl   $7b88
7B77: bpl   $7be3
7B79: tcall 3
7B7A: tcall 4
7B7B: tcall 1
7B7C: brk
7B7D: dbnz  y,$7b6c
7B7F: mov   $A6BB,y
7B82: pop   y
7B83: pop   y
7B84: pop   y
7B85: pop   y
7B86: pop   y
7B87: pop   y
7B88: pop   y
7B89: mov   a,$AA
7B8B: mov   a,x
7B8C: mov   a,y
7B8D: beq   $7b92
7B8F: call  $01FF
7B92: tcall 0
7B93: addw  ya,$42
7B95: mov   a,$1232+x
7B98: tcall 2
7B99: nop
7B9A: nop
7B9B: nop
7B9C: addw  ya,$EF
7B9E: sleep
7B9F: cbne  $DE+x,$7b6f
7BA2: mov   $BABC,y
7BA5: mov1  c,$0FF0,00
7BA8: tcall 14
7BA9: cmp   a,(x)
7BAA: not1  $12EF,00
7BAD: tcall 3
7BAE: adc   a,$1043+y
7BB1: nop
7BB2: nop
7BB3: nop
7BB4: stop
7BB5: stop
7BB6: pop   y
7BB7: and1  c,!($1044,07)
7BBA: brk
7BBB: pop   y
7BBC: dec   y
7BBD: mov   x,#$BA
7BBF: sbc   ($0F),($AA)
7BC2: beq   $7bd3
7BC4: beq   $7bc5
7BC6: brk
7BC7: and   a,$5E
7BC9: sbc   a,(x)
7BCA: clr1  $12
7BCC: eor   a,$1131+x
7BCF: bpl   $7bd0
7BD1: nop
7BD2: and1  c,!($1162,02)
7BD5: bbs2  $21,$7be8
7BD8: nop
7BD9: dbnz  y,$7bb8
7BDB: addw  ya,$EE
7BDD: pop   y
7BDE: mov   a,y
7BDF: mov   $BBCD,y
7BE2: movw  ya,$BD
7BE4: mov1  c,$01F0,00
7BE7: cmp   a,$BC
7BE9: tcall 15
7BEA: or    a,$FE+x
7BEC: nop
7BED: addw  ya,$44
7BEF: tcall 6
7BF0: eor   a,$32
7BF2: clr1  $21
7BF4: tcall 2
7BF5: jmp   ($017A+x)
7BF8: brk
7BF9: sleep
7BFA: dbnz  y,$7bea
7BFC: dec   y
7BFD: mov   a,y
7BFE: dec   y
7BFF: movw  ya,$00
7C01: stop
7C02: nop
7C03: brk
7C04: nop
7C05: or    a,$1D+x
7C07: dbnz  y,$7ba3
7C09: cmp   a,(x)
7C0A: rol   a
7C0B: tcall 13
7C0C: set0  $10
7C0E: tcall 1
7C0F: tcall 1
7C10: bpl   $7c7c
7C12: and   a,(x)
7C13: tcall 5
7C14: tcall 1
7C15: set0  $0E
7C17: pop   y
7C18: mov   a,y
7C19: mov   $ED7A,y
7C1C: dec   y
7C1D: dec   y
7C1E: mov   $ABBB,y
7C21: inc   $CB+x
7C23: mov1  c,$1003,03
7C26: das   a
7C27: bbc7  $2F,$7c29
7C2A: bpl   $7c2d
7C2C: addw  ya,$54
7C2E: or    a,(x)
7C2F: bbc1  $22,$7c53
7C32: tcall 1
7C33: nop
7C34: bpl   $7cb0
7C36: stop
7C37: dbnz  y,$7c28
7C39: notc
7C3A: mov   a,y
7C3B: dec   y
7C3C: mov   $AACB,y
7C3F: beq   $7c31
7C41: clrv
7C42: tcall 15
7C43: eor   a,$D21B
7C46: clrp
7C47: subw  ya,$CF
7C49: tcall 1
7C4A: bpl   $7c6d
7C4C: bpl   $7c5f
7C4E: bpl   $7c51
7C50: and1  c,!($0261,07)
7C53: bpl   $7c53
7C55: pop   y
7C56: dec   y
7C57: mov   $A6AA,y
7C5A: pop   y
7C5B: pop   y
7C5C: pop   y
7C5D: pop   y
7C5E: pop   y
7C5F: pop   y
7C60: pop   y
7C61: bbc7  $AA,$7cc5
7C64: das   a
7C65: tcall 3
7C66: sleep
7C67: tcall 15
7C68: bpl   $7c6b
7C6A: bpl   $7ce6
7C6C: eor   a,$32
7C6E: set1  $11
7C70: tcall 1
7C71: nop
7C72: nop
7C73: stop
7C74: addw  ya,$FE
7C76: pop   y
7C77: notc
7C78: mov   a,y
7C79: mov   $CBCC,y
7C7C: movw  ya,$BA
7C7E: brk
7C7F: brk
7C80: bpl   $7ca5
7C82: dbnz  y,$7c85
7C84: brk
7C85: beq   $7c11
7C87: cmp   a,$32F1+x
7C8A: tcall 2
7C8B: tcall 2
7C8C: clrp
7C8D: tcall 1
7C8E: bpl   $7d0a
7C90: tcall 0
7C91: nop
7C92: stop
7C93: stop
7C94: pop   y
7C95: pop   y
7C96: mov   a,y
7C97: mov   $0FAA,y
7C9A: beq   $7cab
7C9C: stop
7C9D: beq   $7c9f
7C9F: mov   a,$9A6E+x
7CA2: clr5  $0A
7CA4: beq   $7cb7
7CA6: tcall 1
7CA7: tcall 1
7CA8: tcall 1
7CA9: tcall 1
7CAA: and1  c,!($0532,02)
7CAD: clr1  $11
7CAF: tcall 0
7CB0: tset1 $DCEE
7CB3: eor1  c,$1EFF,07
7CB6: sleep
7CB7: mov   y,a
7CB8: pop   y
7CB9: notc
7CBA: mov   a,y
7CBB: pop   y
7CBC: mov1  c,$11F0,07
7CBF: cmp   a,$0D
7CC1: tset1 $01E0
7CC4: bpl   $7c4c
7CC6: clrv
7CC7: brk
7CC8: stop
7CC9: dbnz  y,$7cb9
7CCB: notc
7CCC: mov   $7ACC,y
7CCF: nop
7CD0: stop
7CD1: sleep
7CD2: pop   y
7CD3: cbne  $DD+x,$7ca2
7CD6: mov   $F0AA,y
7CD9: brk
7CDA: clrv
7CDB: brk
7CDC: beq   $7cf4
7CDE: bvc   $7cbd
7CE0: subw  ya,$DE
7CE2: tcall 1
7CE3: tcall 1
7CE4: tcall 1
7CE5: tcall 1
7CE6: tcall 1
7CE7: bpl   $7cf9
7CE9: and1  c,!($0F72,03)
7CEC: clrp
7CED: nop
7CEE: dbnz  y,$7cdd
7CF0: dec   y
7CF1: mov   $8A,y
7CF3: dbnz  y,$7ce3
7CF5: dbnz  y,$7ce4
7CF7: notc
7CF8: mov   a,y
7CF9: daa   a
7CFA: mov   a,y
7CFB: movw  ya,$00
7CFD: eor   a,$EE
7CFF: clrv
7D00: nop
7D01: nop
7D02: bpl   $7d04
7D04: adc   a,(x)
7D05: set1  $1E
7D07: pop   y
7D08: pop   y
7D09: mov   a,y
7D0A: mov   a,y
7D0B: mov   $BB,y
7D0D: addw  ya,$0F
7D0F: mov   y,a
7D10: pop   y
7D11: notc
7D12: dec   y
7D13: mov   x,#$CB
7D15: inc   a
7D16: movw  ya,$0F
7D18: nop
7D19: brk
7D1A: beq   $7d40
7D1C: cmp   x,$DE
7D1E: tcall 0
7D1F: addw  ya,$11
7D21: clr2  $54
7D23: eor   a,$33+x
7D25: clr1  $22
7D27: tcall 2
7D28: and1  c,!($1F32,00)
7D2B: beq   $7d2b
7D2D: notc
7D2E: mov   $AABB,y
7D31: sbc   a,(x)
7D32: pop   y
7D33: pop   y
7D34: pop   y
7D35: pop   y
7D36: notc
7D37: mov   a,y
7D38: sleep
7D39: mov   a,$BA
7D3B: bbs2  $DC,$7d4d
7D3E: bpl   $7d40
7D40: tcall 1
7D41: nop
7D42: nop
7D43: addw  ya,$17
7D45: tcall 5
7D46: tcall 2
7D47: clr0  $10
7D49: beq   $7d5a
7D4B: stop
7D4C: addw  ya,$FE
7D4E: notc
7D4F: mov   a,y
7D50: mov   a,y
7D51: mov   $BBBC,y
7D54: movw  ya,$BA
7D56: nop
7D57: stop
7D58: nop
7D59: eor   a,$1C
7D5B: sleep
7D5C: nop
7D5D: bpl   $7ce5
7D5F: clr1  $1F
7D61: beq   $7d72
7D63: pop   y
7D64: pop   y
7D65: mov   a,y
7D66: mov   a,y
7D67: addw  ya,$E0
7D69: nop
7D6A: beq   $7d6a
7D6C: cbne  $ED+x,$7d4c
7D6F: mov   $00BA,y
7D72: beq   $7d83
7D74: beq   $7d86
7D76: stop
7D77: bbc0  $5E,$7d24
7D7A: mov   sp,x
7D7B: beq   $7d7d
7D7D: tcall 1
7D7E: bpl   $7d81
7D80: bpl   $7d82
7D82: addw  ya,$53
7D84: pcall $11
7D86: nop
7D87: nop
7D88: stop
7D89: stop
7D8A: pop   y
7D8B: addw  ya,$ED
7D8D: mov   a,y
7D8E: dec   y
7D8F: mov   $BBCB,y
7D92: mov1  c,$0AB9,05
7D95: brk
7D96: or    a,$65
7D98: mov   $EE+x,y
7D9A: bpl   $7dad
7D9C: nop
7D9D: eor1  c,$1144,00
7DA0: tcall 2
7DA1: tcall 2
7DA2: bpl   $7db5
7DA4: nop
7DA5: nop
7DA6: addw  ya,$00
7DA8: sleep
7DA9: dbnz  y,$7d89
7DAB: notc
7DAC: dec   y
7DAD: mov   $AACC,y
7DB0: beq   $7db1
7DB2: beq   $7da4
7DB4: tcall 1
7DB5: bbc1  $40,$7d56
7DB8: eor1  c,$1110,01
7DBB: bbs1  $22,$7de0
7DBE: tcall 2
7DBF: tcall 2
7DC0: bpl   $7e2c
7DC2: bbs3  $3F,$7dd5
7DC5: beq   $7dc5
7DC7: dec   y
7DC8: mov   $9ACA,y
7DCB: stop
7DCC: brk
7DCD: dbnz  y,$7dce
7DCF: stop
7DD0: pop   y
7DD1: stop
7DD2: mov   a,$20AA+x
7DD5: and   a,$F0E9+y
7DD8: tcall 0
7DD9: bpl   $7ddc
7DDB: bpl   $7e57
7DDD: or    a,(x)
7DDE: clr2  $22
7DE0: clr0  $11
7DE2: tcall 0
7DE3: brk
7DE4: brk
7DE5: addw  ya,$FE
7DE7: dbnz  y,$7dd6
7DE9: mov   a,y
7DEA: mov   x,#$CC
7DEC: mov   $AAAA,y
7DEF: beq   $7de1
7DF1: set7  $31
7DF3: mov   $DF6B+x,a
7DF6: beq   $7e6e
7DF8: and   a,$20
7DFA: nop
7DFB: dbnz  y,$7deb
7DFD: dec   y
7DFE: movw  ya,$AA
7E00: addw  ya,$10
7E02: nop
7E03: stop
7E04: brk
7E05: pop   y
7E06: pop   y
7E07: mov   a,y
7E08: mov   a,y
7E09: mov1  c,$100F,07
7E0C: brk
7E0D: stop
7E0E: beq   $7e10
7E10: tcall 3
7E11: bne   $7dcd
7E13: set2  $DE
7E15: beq   $7e28
7E17: nop
7E18: nop
7E19: tcall 0
7E1A: nop
7E1B: eor1  c,$1115,07
7E1E: tcall 0
7E1F: bpl   $7e21
7E21: brk
7E22: nop
7E23: stop
7E24: addw  ya,$FE
7E26: mov   a,y
7E27: mov   a,y
7E28: dec   y
7E29: mov   $CA,y
7E2B: inc   a
7E2C: inc   $BA+x
7E2E: beq   $7e51
7E30: dbnz  y,$7e55
7E32: cmp   x,$00E0
7E35: nop
7E36: adc   a,(x)
7E37: bbc0  $20,$7e49
7E3A: pop   y
7E3B: pop   y
7E3C: notc
7E3D: mov   a,y
7E3E: dec   y
7E3F: addw  ya,$0F
7E41: beq   $7e42
7E43: dbnz  y,$7e22
7E45: mov   a,y
7E46: mov   a,y
7E47: mov   $0FBA,y
7E4A: nop
7E4B: brk
7E4C: nop
7E4D: tcall 0
7E4E: brk
7E4F: clr7  $40
7E51: mov1  c,$00CC,00
7E54: bpl   $7e57
7E56: bpl   $7e59
7E58: tcall 0
7E59: nop
7E5A: addw  ya,$07
7E5C: cmp   x,$10
7E5E: nop
7E5F: brk
7E60: stop
7E61: dbnz  y,$7e41
7E63: subw  ya,$F0
7E65: stop
7E66: stop
7E67: stop
7E68: stop
7E69: sleep
7E6A: dbnz  y,$7eb1
7E6C: movw  ya,$0E
7E6E: tcall 15
7E6F: and   a,$FD
7E71: beq   $7e83
7E73: nop
7E74: nop
7E75: eor1  c,$0174,00
7E78: tcall 2
7E79: tcall 0
7E7A: tcall 1
7E7B: nop
7E7C: bpl   $7e8d
7E7E: addw  ya,$0E
7E80: stop
7E81: pop   y
7E82: cbne  $CD+x,$7e52
7E85: mov   $BB,y
7E87: movw  ya,$0F
7E89: nop
7E8A: set0  $0F
7E8C: stop
7E8D: set0  $5F
7E8F: daa   a
7E90: adc   a,(x)
7E91: or    a,$50+x
7E93: nop
7E94: brk
7E95: stop
7E96: dbnz  y,$7e86
7E98: notc
7E99: and1  c,!($0022,01)
7E9C: brk
7E9D: dbnz  y,$7e8b
7E9F: mov   a,y
7EA0: movw  ya,$BA
7EA2: subw  ya,$FF
7EA4: stop
7EA5: stop
7EA6: stop
7EA7: pop   y
7EA8: and   a,$3B+x
7EAA: ei
7EAB: movw  ya,$F1
7EAD: set2  $EE
7EAF: nop
7EB0: nop
7EB1: nop
7EB2: tcall 0
7EB3: bpl   $7e3b
7EB5: mov   $DE+x,y
7EB7: mov   a,y
7EB8: mov   a,y
7EB9: mov   $CBCC,y
7EBC: inc   $8A+x
7EBE: stop
7EBF: stop
7EC0: sleep
7EC1: pop   y
7EC2: sleep
7EC3: notc
7EC4: notc
7EC5: asl   $BA
7EC7: set0  $0F
7EC9: stop
7ECA: nop
7ECB: or    a,$E00E+x
7ECE: nop
7ECF: adc   a,(x)
7ED0: or    a,$1F+x
7ED2: stop
7ED3: stop
7ED4: dbnz  y,$7ec4
7ED6: dec   y
7ED7: mov   x,#$7A
7ED9: brk
7EDA: beq   $7edb
7EDC: dbnz  y,$7ecc
7EDE: notc
7EDF: mov   $9ADD,y
7EE2: stop
7EE3: stop
7EE4: sleep
7EE5: or    a,$BF5A
7EE8: clrv
7EE9: mov   a,$41BA+y
7EEC: daa   a
7EED: nop
7EEE: nop
7EEF: nop
7EF0: bpl   $7ef2
7EF2: bpl   $7f6e
7EF4: dbnz  y,$7f47
7EF6: bpl   $7f09
7EF8: brk
7EF9: clrv
7EFA: dbnz  y,$7eeb
7EFC: subw  ya,$F0
7EFE: stop
7EFF: beq   $7ef0
7F01: stop
7F02: stop
7F03: mov   a,$BA4E+x
7F06: clrv
7F07: nop
7F08: beq   $7f2e
7F0A: asl   a
7F0B: beq   $7f0e
7F0D: nop
7F0E: addw  ya,$14
7F10: and   a,($32+x)
7F12: set1  $22
7F14: tcall 1
7F15: bpl   $7f17
7F17: addw  ya,$0E
7F19: stop
7F1A: dbnz  y,$7efa
7F1C: mov   a,y
7F1D: mov   a,y
7F1E: inc   a
7F1F: mov   $00BA,y
7F22: tcall 15
7F23: bra   $7f05
7F25: brk
7F26: nop
7F27: bbs0  $4F,$7ed0
7F2A: set2  $11
7F2C: bpl   $7f1e
7F2E: nop
7F2F: nop
7F30: stop
7F31: nop
7F32: addw  ya,$CF
7F34: tcall 3
7F35: nop
7F36: nop
7F37: sleep
7F38: dbnz  y,$7f28
7F3A: mov   a,y
7F3B: subw  ya,$FF
7F3D: beq   $7f3e
7F3F: clrv
7F40: mov   a,$6E
7F42: cmp   y,#$FF
7F44: movw  ya,$0F
7F46: bpl   $7f8a
7F48: sleep
7F49: stop
7F4A: tcall 0
7F4B: nop
7F4C: tcall 0
7F4D: addw  ya,$61
7F4F: set7  $22
7F51: clr0  $11
7F53: beq   $7f65
7F55: sleep
7F56: addw  ya,$FF
7F58: pop   y
7F59: mov   a,y
7F5A: mov   a,y
7F5B: dec   y
7F5C: mov   x,#$CA
7F5E: mov   a,($BA+x)
7F60: clrp
7F61: sleep
7F62: nop
7F63: brk
7F64: nop
7F65: or    a,$2D+x
7F67: stop
7F68: adc   a,(x)
7F69: and   a,$30
7F6B: nop
7F6C: stop
7F6D: dbnz  y,$7f4d
7F6F: notc
7F70: mov   a,y
7F71: addw  ya,$00
7F73: jmp   ($FFFF+x)
7F76: dbnz  y,$7f55
7F78: notc
7F79: mov   $FF9A,y
7F7C: beq   $7f61
7F7E: clrc
7F7F: inc   $FE+x
7F81: jmp   ($BAF0+x)
7F84: clr7  $41
7F86: pop   y
7F87: nop
7F88: nop
7F89: tcall 0
7F8A: nop
7F8B: nop
7F8C: addw  ya,$37
7F8E: bvc   $7fa1
7F90: nop
7F91: tcall 0
7F92: brk
7F93: sleep
7F94: dbnz  y,$7f40
7F96: nop
7F97: stop
7F98: nop
7F99: brk
7F9A: beq   $7f9c
7F9C: tcall 4
7F9D: pop   x
7F9E: mov1  c,$00F0,00
7FA1: stop
7FA2: nop
7FA3: cmp   a,(x)
7FA4: asl   $F0D0
7FA7: addw  ya,$76
7FA9: and   a,$33+x
7FAB: bbs1  $22,$7fc0
7FAE: bpl   $7fb0
7FB0: addw  ya,$00
7FB2: stop
7FB3: sleep
7FB4: pop   y
7FB5: mov   a,y
7FB6: dec   y
7FB7: mov   y,$AADC
7FBA: tcall 15
7FBB: set1  $EE
7FBD: stop
7FBE: beq   $7fb1
7FC0: beq   $7fd7
7FC2: movw  ya,$4F
7FC4: daa   a
7FC5: nop
7FC6: nop
7FC7: bpl   $7fc9
7FC9: bpl   $7fcb
7FCB: addw  ya,$1E
7FCD: and   a,$11
7FCF: beq   $7fd0
7FD1: sleep
7FD2: dbnz  y,$7fb1
7FD4: mov1  c,$000F,00
7FD7: stop
7FD8: nop
7FD9: tcall 4
7FDA: pop   y
7FDB: clrv
7FDC: beq   $7f88
7FDE: nop
7FDF: stop
7FE0: bbs0  $66,$7f9e
7FE3: brk
7FE4: bpl   $7fe7
7FE6: addw  ya,$42
7FE8: clr1  $23
7FEA: tcall 2
7FEB: tcall 1
7FEC: bpl   $7fee
7FEE: brk
7FEF: subw  ya,$0F
7FF1: brk
7FF2: brk
7FF3: brk
7FF4: stop
7FF5: brk
7FF6: beq   $803e
7FF8: movw  ya,$FF
7FFA: stop
7FFB: tcall 0
7FFC: brk
7FFD: nop
7FFE: brk
7FFF: and   a,$1D
8001: adc   a,$2165+y
8004: nop
8005: nop
8006: stop
8007: stop
8008: stop
8009: dbnz  y,$8085
800B: clr0  $2E
800D: brk
800E: stop
800F: dbnz  y,$7fff
8011: dec   y
8012: daa   a
8013: subw  ya,$FF
8015: beq   $806b
8017: mov   y,$DF
8019: beq   $8019
801B: tcall 0
801C: movw  ya,$F1
801E: set0  $4F
8020: daa   a
8021: tcall 0
8022: nop
8023: nop
8024: nop
8025: adc   a,(x)
8026: bne   $8036
8028: mov   a,y
8029: mov   a,y
802A: mov   $BBCC,y
802D: mov1  c,$0F9A,00
8030: beq   $8041
8032: sleep
8033: nop
8034: eor   a,(x)
8035: mov   $EF,y
8037: movw  ya,$00
8039: beq   $803b
803B: nop
803C: nop
803D: bbc1  $EE,$804f
8040: adc   a,(x)
8041: tcall 4
8042: bra   $8043
8044: dbnz  y,$8034
8046: notc
8047: mov   a,y
8048: mov   $007A,y
804B: beq   $803b
804D: dbnz  y,$803c
804F: cbne  $CD+x,$8040
8052: subw  ya,$46
8054: not1  $00EF,07
8057: brk
8058: beq   $8059
805A: dec   x
805B: movw  ya,$15
805D: cmp   x,$01D0
8060: nop
8061: nop
8062: nop
8063: tcall 0
8064: addw  ya,$6E
8066: sbc   a,$0000
8069: nop
806A: dbnz  y,$804b
806C: pop   y
806D: subw  ya,$FF
806F: nop
8070: stop
8071: and   a,$DEFB+y
8074: nop
8075: stop
8076: movw  ya,$00
8078: brk
8079: tcall 0
807A: clr7  $40
807C: pop   y
807D: tcall 15
807E: nop
807F: eor1  c,$1F26,00
8082: tcall 0
8083: clr0  $10
8085: nop
8086: bpl   $8097
8088: subw  ya,$0F
808A: nop
808B: brk
808C: stop
808D: beq   $809e
808F: and   a,$BAFB+y
8092: beq   $8094
8094: beq   $8096
8096: nop
8097: brk
8098: nop
8099: bbs2  $AA,$8068
809C: clrv
809D: nop
809E: tcall 0
809F: bpl   $80a1
80A1: bpl   $80a3
80A3: and1  c,!($0161,00)
80A6: brk
80A7: dbnz  y,$8084
80A9: dec   y
80AA: movw  ya,$DA
80AC: subw  ya,$F0
80AE: and   a,($0A+x)
80B0: pop   y
80B1: beq   $80b2
80B3: nop
80B4: stop
80B5: movw  ya,$00
80B7: brk
80B8: and   a,$1E
80BA: bne   $80bd
80BC: nop
80BD: nop
80BE: addw  ya,$26
80C0: set2  $11
80C2: tcall 2
80C3: nop
80C4: nop
80C5: stop
80C6: stop
80C7: subw  ya,$F0
80C9: beq   $80bb
80CB: tset1 $0B36
80CE: bne   $80bf
80D0: mov1  c,$0F00,00
80D3: brk
80D4: nop
80D5: nop
80D6: mov   a,$CD6F+y
80D9: addw  ya,$0D
80DB: and   a,$14
80DD: bbc1  $32,$80f2
80E0: tcall 2
80E1: nop
80E2: sbc   a,(x)
80E3: stop
80E4: stop
80E5: stop
80E6: pop   y
80E7: sleep
80E8: dbnz  y,$80d9
80EA: or    a,$9A
80EC: or1   c,$10EE,07
80EF: brk
80F0: beq   $8101
80F2: stop
80F3: brk
80F4: mov1  c,$0601,03
80F7: mov   $E0+x,y
80F9: nop
80FA: tcall 0
80FB: bpl   $80fd
80FD: eor1  c,$0F41,00
8100: bpl   $8102
8102: nop
8103: stop
8104: beq   $8105
8106: subw  ya,$F0
8108: brk
8109: and   a,$2B+x
810B: di
810C: beq   $810d
810E: nop
810F: mov1  c,$100F,07
8112: nop
8113: brk
8114: and   a,$B05B+y
8117: tcall 15
8118: addw  ya,$F2
811A: and   a,$2233
811D: tcall 1
811E: tcall 1
811F: nop
8120: nop
8121: mov1  c,$0F00,00
8124: nop
8125: brk
8126: nop
8127: or    a,$FE+x
8129: stop
812A: sbc   a,(x)
812B: stop
812C: stop
812D: dbnz  y,$811d
812F: dbnz  y,$811f
8131: stop
8132: mov   a,$6FAA+x
8135: das   a
8136: brk
8137: bpl   $8139
8139: tcall 1
813A: nop
813B: nop
813C: and1  c,!($0C17,02)
813F: brk
8140: pop   y
8141: mov   y,$A0CE
8144: daa   a
8145: subw  ya,$25
8147: rol   $C0
8149: tcall 14
814A: stop
814B: nop
814C: stop
814D: nop
814E: mov1  c,$0FF0,00
8151: set0  $65
8153: inc   a
8154: beq   $8166
8156: nop
8157: addw  ya,$22
8159: bbs2  $12,$816d
815C: bpl   $815e
815E: stop
815F: stop
8160: mov1  c,$1F00,07
8163: bpl   $8178
8165: tset1 $0FFF
8168: nop
8169: mov1  c,$000F,00
816C: brk
816D: nop
816E: brk
816F: beq   $81b8
8171: and   (x),(y)
8172: adc   a,$1143+y
8175: brk
8176: stop
8177: stop
8178: stop
8179: pop   y
817A: pop   y
817B: subw  ya,$00
817D: nop
817E: brk
817F: beq   $8181
8181: tcall 15
8182: or    a,$8A3A+x
8185: pop   a
8186: tcall 14
8187: stop
8188: stop
8189: stop
818A: stop
818B: dbnz  y,$818b
818D: mov1  c,$160F,00
8190: push  y
8191: mov   a,(x)+
8192: brk
8193: tcall 0
8194: tcall 0
8195: nop
8196: addw  ya,$06
8198: bra   $81ab
819A: nop
819B: beq   $819c
819D: sleep
819E: pop   y
819F: subw  ya,$1F
81A1: and   a,($FD+x)
81A3: mul   ya
81A4: beq   $81a6
81A6: beq   $81b7
81A8: movw  ya,$00
81AA: brk
81AB: nop
81AC: brk
81AD: tcall 1
81AE: clr1  $DF
81B0: beq   $822c
81B2: or    a,$3212
81B5: set1  $22
81B7: bpl   $81b9
81B9: brk
81BA: subw  ya,$00
81BC: beq   $81af
81BE: nop
81BF: or    a,$FF29+y
81C2: beq   $814e
81C4: clrv
81C5: nop
81C6: sleep
81C7: beq   $81b7
81C9: sleep
81CA: beq   $8191
81CC: mov1  c,$1947,07
81CF: beq   $81d2
81D1: beq   $81e4
81D3: nop
81D4: nop
81D5: subw  ya,$00
81D7: bpl   $81d9
81D9: brk
81DA: nop
81DB: brk
81DC: jmp   ($8A45+x)
81DF: movw  $AE,ya
81E1: stop
81E2: nop
81E3: brk
81E4: stop
81E5: stop
81E6: dbnz  y,$8192
81E8: beq   $81ea
81EA: beq   $8213
81EC: rol   a
81ED: bcs   $81ef
81EF: nop
81F0: addw  ya,$44
81F2: tcall 3
81F3: tcall 1
81F4: tcall 2
81F5: nop
81F6: nop
81F7: brk
81F8: stop
81F9: subw  ya,$F0
81FB: tcall 1
81FC: or    a,$FF0A+y
81FF: beq   $8201
8201: beq   $81ad
8203: nop
8204: brk
8205: beq   $8207
8207: beq   $81f9
8209: bbs1  $60,$81b2
820C: clr2  $00
820E: bpl   $821f
8210: brk
8211: stop
8212: nop
8213: stop
8214: subw  ya,$00
8216: tcall 15
8217: nop
8218: beq   $8239
821A: eor   a,$D0FC
821D: addw  ya,$DF
821F: brk
8220: beq   $8220
8222: pop   y
8223: mov   a,y
8224: dec   y
8225: mov   y,$0FAA
8228: bbs0  $54,$8206
822B: tset1 $1001
822E: nop
822F: addw  ya,$41
8231: tcall 2
8232: tcall 1
8233: brk
8234: brk
8235: tset1 $40F1
8238: subw  ya,$26
823A: mov   y,$FE+x
823C: tcall 0
823D: beq   $823f
823F: stop
8240: nop
8241: mov1  c,$000F,00
8244: stop
8245: nop
8246: nop
8247: eor   a,$E00B+x
824A: addw  ya,$9E
824C: set2  $43
824E: tcall 2
824F: tcall 1
8250: tcall 2
8251: brk
8252: nop
8253: subw  ya,$00
8255: beq   $8277
8257: and   a,$FC+x
8259: clrv
825A: beq   $825c
825C: addw  ya,$FF
825E: clrv
825F: pop   y
8260: pop   y
8261: dec   y
8262: mov   x,#$C0
8264: tcall 9
8265: mov1  c,$0C35,02
8268: mul   ya
8269: beq   $827b
826B: tcall 0
826C: jmp   ($9A00+x)
826F: bpl   $8281
8271: brk
8272: nop
8273: nop
8274: bpl   $82ac
8276: mov   y,$7A
8278: mov1  $0010,00,c
827B: stop
827C: stop
827D: pop   y
827E: pop   y
827F: mov   a,y
8280: mov1  c,$0F0F,00
8283: brk
8284: or    a,$BD42+x
8287: stop
8288: tcall 1
8289: addw  ya,$F1
828B: or    a,$21
828D: tcall 1
828E: nop
828F: tcall 0
8290: tcall 14
8291: clr6  $9A
8293: bpl   $82d9
8295: mov   y,$F0+x
8297: stop
8298: bpl   $82a9
829A: nop
829B: mov1  c,$1000,07
829E: nop
829F: stop
82A0: nop
82A1: beq   $82a5
82A3: eor   a,$AA+x
82A5: mov   y,$E0
82A7: tcall 0
82A8: nop
82A9: nop
82AA: tcall 0
82AB: bpl   $829d
82AD: subw  ya,$00
82AF: tcall 0
82B0: brk
82B1: tcall 1
82B2: and   a,$EFEC+x
82B5: bpl   $8331
82B7: clrv
82B8: brk
82B9: stop
82BA: pop   y
82BB: dbnz  y,$829a
82BD: dec   y
82BE: mov   x,#$AA
82C0: nop
82C1: tcall 15
82C2: eor   a,$1C
82C4: sleep
82C5: beq   $82c8
82C7: bpl   $8263
82C9: beq   $82dc
82CB: nop
82CC: nop
82CD: beq   $82d0
82CF: clrp
82D0: bbc1  $9A,$82cf
82D3: beq   $82c5
82D5: nop
82D6: nop
82D7: nop
82D8: stop
82D9: nop
82DA: mov1  c,$0F0F,00
82DD: brk
82DE: brk
82DF: jmp   ($2F35+x)
82E2: mov   a,(x)+
82E3: addw  ya,$BE
82E5: tcall 4
82E6: bbs1  $22,$82fa
82E9: bpl   $82eb
82EB: nop
82EC: subw  ya,$00
82EE: tcall 2
82EF: and   a,$ED
82F1: stop
82F2: nop
82F3: nop
82F4: nop
82F5: addw  ya,$EF
82F7: stop
82F8: pop   y
82F9: mov   a,y
82FA: notc
82FB: mov   $EE,y
82FD: clr4  $AA
82FF: or    a,$60
8301: mov   $0000,y
8304: nop
8305: bpl   $8307
8307: subw  ya,$11
8309: brk
830A: tcall 15
830B: tcall 0
830C: bpl   $8342
830E: inc   y
830F: stop
8310: and1  c,!($1DE3,01)
8313: brk
8314: stop
8315: mov   y,$CBCC
8318: mov1  c,$0FAA,00
831B: beq   $831d
831D: set0  $43
831F: mov   y,$00F0
8322: eor1  c,$13E1,00
8325: nop
8326: tcall 1
8327: brk
8328: tcall 0
8329: nop
832A: and   a,$8A+x
832C: cmp   a,(x)
832D: movw  ya,$EE
832F: bpl   $8331
8331: nop
8332: nop
8333: stop
8334: mov1  c,$1000,07
8337: nop
8338: stop
8339: beq   $833b
833B: bpl   $8371
833D: mov1  c,$001D,06
8340: nop
8341: nop
8342: nop
8343: bpl   $8345
8345: bpl   $82e1
8347: stop
8348: tcall 0
8349: tcall 2
834A: bbs2  $DC,$834d
834D: nop
834E: nop
834F: addw  ya,$0F
8351: beq   $8352
8353: dbnz  y,$8333
8355: notc
8356: mov   $AADB,y
8359: brk
835A: clr7  $25
835C: push  a
835D: cbne  $00+x,$8360
8360: tcall 0
8361: eor1  c,$122F,07
8364: nop
8365: tcall 0
8366: nop
8367: and   a,$BA65+x
836A: addw  ya,$CF
836C: bpl   $836f
836E: nop
836F: beq   $8370
8371: pop   y
8372: pop   y
8373: mov1  c,$000F,00
8376: stop
8377: nop
8378: beq   $839d
837A: setp
837B: pop   x
837C: eor1  c,$0FD0,00
837F: clr0  $10
8381: tcall 0
8382: bpl   $8385
8384: beq   $8320
8386: set1  $42
8388: cbne  $FF+x,$838c
838B: nop
838C: nop
838D: nop
838E: eor1  c,$10FF,07
8391: stop
8392: sleep
8393: dbnz  y,$8383
8395: clrv
8396: mul   ya
8397: mov1  c,$1212,02
839A: mov   a,y
839B: clrv
839C: nop
839D: tcall 0
839E: nop
839F: nop
83A0: eor1  c,$1F02,00
83A3: jmp   ($6437+x)
83A6: movw  ya,$FF
83A8: nop
83A9: and1  c,!($0032,00)
83AC: brk
83AD: pop   y
83AE: mov   a,y
83AF: mov   $AABA,y
83B2: mov1  c,$100F,07
83B5: brk
83B6: bbs0  $26,$83a4
83B9: stop
83BA: nop
83BB: subw  ya,$11
83BD: tcall 15
83BE: tcall 0
83BF: nop
83C0: tcall 0
83C1: beq   $83e6
83C3: tcall 5
83C4: eor1  c,$00AA,07
83C7: tcall 0
83C8: bpl   $83ca
83CA: nop
83CB: beq   $83bd
83CD: mov1  c,$1F00,07
83D0: nop
83D1: brk
83D2: brk
83D3: brk
83D4: tcall 0
83D5: bbc1  $AA,$8414
83D8: bne   $83ca
83DA: nop
83DB: nop
83DC: bpl   $83de
83DE: nop
83DF: subw  ya,$10
83E1: or    a,$33+x
83E3: mov   x,#$F0
83E5: bpl   $83e7
83E7: nop
83E8: addw  ya,$20
83EA: sleep
83EB: tset1 $EDEE
83EE: mov   a,y
83EF: dec   y
83F0: mov   $AA,y
83F2: nop
83F3: clrv
83F4: and   a,$4E+x
83F6: pop   x
83F7: brk
83F8: tcall 0
83F9: nop
83FA: subw  ya,$01
83FC: tcall 0
83FD: nop
83FE: tcall 15
83FF: bbc0  $60,$83ee
8402: nop
8403: and1  c,!($01F1,02)
8406: tcall 1
8407: jmp   ($FDEE+x)
840A: dec   y
840B: inc   $AA+x
840D: brk
840E: brk
840F: brk
8410: brk
8411: cmp   x,$4223
8414: mov   sp,x
8415: adc   a,(x)
8416: bbc2  $1E,$8407
8419: notc
841A: mov   a,y
841B: dec   y
841C: mov   $F5+x,y
841E: subw  ya,$43
8420: pop   x
8421: beq   $8423
8423: tcall 0
8424: nop
8425: nop
8426: nop
8427: addw  ya,$ED
8429: clrv
842A: pop   y
842B: mov   a,y
842C: mov   $CCDC,y
842F: mul   ya
8430: mov1  c,$02F4,02
8433: mov   y,$F0+x
8435: beq   $8438
8437: nop
8438: tcall 0
8439: subw  ya,$0F
843B: tcall 0
843C: or    a,$50
843E: inc   y
843F: nop
8440: nop
8441: tcall 0
8442: and1  c,!($132E,06)
8445: tset1 $DCEE
8448: mov   $BB,y
844A: sbc   ($F0),($AA)
844D: brk
844E: beq   $8451
8450: eor   a,$0D
8452: mul   ya
8453: tcall 0
8454: subw  ya,$1F
8456: tcall 15
8457: tcall 1
8458: nop
8459: nop
845A: clr0  $63
845C: pop   x
845D: addw  ya,$A0
845F: clrp
8460: tcall 2
8461: tcall 0
8462: bpl   $8463
8464: brk
8465: dbnz  y,$8411
8467: nop
8468: stop
8469: nop
846A: brk
846B: beq   $847c
846D: beq   $84b4
846F: mov1  c,$0F1E,06
8472: beq   $8474
8474: bpl   $8476
8476: jmp   ($9A00+x)
8479: bbs1  $53,$8467
847C: nop
847D: nop
847E: tcall 0
847F: nop
8480: tcall 0
8481: addw  ya,$FE
8483: clrv
8484: stop
8485: notc
8486: pop   y
8487: dec   y
8488: mov   $AACC,y
848B: brk
848C: brk
848D: or    a,(x)
848E: pcall $DD
8490: brk
8491: tcall 15
8492: bpl   $842e
8494: beq   $84a6
8496: tcall 0
8497: bbs0  $62,$8478
849A: beq   $849c
849C: and1  c,!($0321,02)
849F: bpl   $84b0
84A1: dbnz  y,$8490
84A3: mov   $BB+x,y
84A5: mov1  c,$0F0F,00
84A8: brk
84A9: brk
84AA: nop
84AB: clr7  $72
84AD: mov   x,#$9A
84AF: di
84B0: nop
84B1: nop
84B2: bpl   $84c4
84B4: nop
84B5: clr0  $64
84B7: eor1  c,$1099,07
84BA: tcall 0
84BB: tcall 0
84BC: tcall 0
84BD: bpl   $84bf
84BF: stop
84C0: eor1  c,$1F00,07
84C3: stop
84C4: pop   y
84C5: stop
84C6: notc
84C7: daa   a
84C8: bne   $8474
84CA: beq   $8541
84CC: dec   y
84CD: sleep
84CE: nop
84CF: nop
84D0: bpl   $84d2
84D2: subw  ya,$10
84D4: bbc7  $55,$84c3
84D7: tcall 14
84D8: bpl   $84da
84DA: nop
84DB: and1  c,!($0E64,00)
84DE: tset1 $DDED
84E1: mov   $AB,y
84E3: adc   (x),(y)
84E4: movw  ya,$00
84E6: beq   $84e8
84E8: beq   $84fe
84EA: brk
84EB: dbnz  y,$84ed
84ED: subw  ya,$1F
84EF: clrp
84F0: tcall 0
84F1: nop
84F2: tcall 0
84F3: cmp   a,$FD+x
84F5: sleep
84F6: and1  c,!($0127,02)
84F9: bbc1  $21,$851b
84FC: beq   $84eb
84FE: cbne  $A6+x,$8500
8501: pop   y
8502: pop   y
8503: pop   y
8504: pop   y
8505: pop   y
8506: pop   y
8507: mov   a,$7DAA
850A: das   a
850B: beq   $850d
850D: bpl   $850f
850F: nop
8510: tcall 0
8511: mov1  c,$1E24,07
8514: beq   $8516
8516: bpl   $8518
8518: nop
8519: nop
851A: addw  ya,$13
851C: mov   y,a
851D: dbnz  y,$850c
851F: notc
8520: mov   y,$CADC
8523: movw  ya,$00
8525: beq   $8528
8527: tcall 3
8528: sleep
8529: beq   $852b
852B: nop
852C: dec   $00+x
852E: bpl   $8531
8530: eor   a,(x)
8531: rol   $F0E0
8534: tcall 0
8535: set0  $00
8537: nop
8538: nop
8539: nop
853A: nop
853B: nop
853C: nop
853D: nop
853E: or    a,(x)
853F: setp
8540: mov   $20DF+y,a
8543: lsr   $CE16
8546: set0  $02
8548: set0  $2E
854A: set1  $F0
854C: nop
854D: nop
854E: mov   y,$02F0
8551: tcall 0
8552: tcall 0
8553: stop
8554: brk
8555: push  psw
8556: bne   $8535
8558: nop
8559: or    a,$0FF1+y
855C: clrp
855D: clr7  $00
855F: pcall $E0
8561: tcall 0
8562: or    a,(x)
8563: bbc7  $0B,$8567
8566: tcall 15
8567: tcall 5
8568: push  x
8569: di
856A: bbs1  $16,$856c
856D: bbc0  $00,$85b2
8570: dbnz  y,$8572
8572: inc   x
8573: bbc7  $06,$855b
8576: dbnz  y,$85c7
8578: clr1  $B0
857A: bvc   $857d
857C: bbc5  $5A,$857f
857F: nop
8580: nop
8581: beq   $8560
8583: bbs1  $24,$8595
8586: cmpw  ya,$45
8588: dec   x
8589: inc   a
858A: bbc7  $41,$859d
858D: pop   y
858E: stop
858F: cmpw  ya,$33
8591: tcall 1
8592: dbnz  y,$85b6
8594: asl   $BF
8596: bra   $85aa
8598: cmpw  ya,$0F
859A: bpl   $8599
859C: cmp   y,#$41
859E: set0  $1E
85A0: bbc7  $5A,$85df
85A3: tcall 11
85A4: mov   y,a
85A5: brk
85A6: mov   a,$4E
85A8: mov   a,y
85A9: pop   y
85AA: and1  c,!($14F1,01)
85AD: mov   y,a
85AE: mov   a,$40+x
85B0: mov   sp,x
85B1: or    a,$3D
85B3: addw  ya,$D0
85B5: bbs1  $2E,$8597
85B8: clr0  $1F
85BA: mul   ya
85BB: and   a,$6A+x
85BD: rol   $C0
85BF: bmi   $85cf
85C1: pop   y
85C2: clrv
85C3: bbc2  $FC,$8630
85C6: di
85C7: set2  $DE
85C9: and   a,$00+x
85CB: jmp   ($26AD+x)
85CE: addw  ya,$2E
85D0: das   a
85D1: and   a,$4E
85D3: cmp   y,#$24
85D5: bra   $85c8
85D7: addw  ya,$20
85D9: stop
85DA: nop
85DB: tcall 2
85DC: mov   $25,y
85DE: bra   $85f1
85E0: addw  ya,$CA
85E2: mov   a,$BA62+x
85E5: mov   a,$AE5F+y
85E8: clr1  $76
85EA: brk
85EB: stop
85EC: tcall 15
85ED: bbs2  $DB,$85d2
85F0: eor   a,$863F
85F3: mov   a,y
85F4: or    a,$CE3E+x
85F7: tcall 0
85F8: set1  $0E
85FA: clrv
85FB: eor1  c,$130E,07
85FE: call  $22CF
8601: set0  $1D
8603: tcall 12
8604: adc   a,(x)
8605: and   a,$1D
8607: set7  $2E
8609: mov   x,#$FF
860B: stop
860C: brk
860D: cmp   a,$2FF2+y
8610: or    a,$4F
8612: inc   $FE34
8615: and   a,$FE8A
8618: tcall 0
8619: tcall 2
861A: mov   y,$30F4
861D: pop   y
861E: tcall 15
861F: cmp   a,$FC12+y
8622: mov   a,$9D4D+x
8625: clr0  $0F
8627: nop
8628: eor1  c,$04E0,02
862B: asl   $C1
862D: clr2  $FD
862F: sleep
8630: clr0  $7A
8632: bmi   $8644
8634: inc   a
8635: or    a,$F51B+x
8638: and   (x),(y)
8639: bbs5  $8A,$868e
863C: notc
863D: stop
863E: set0  $31
8640: mov   y,a
8641: clrv
8642: clr0  $8A
8644: clrp
8645: pop   x
8646: and   a,$0D+x
8648: tcall 15
8649: cbne  $ED,$864f
864C: eor1  c,$0C50,06
864F: or    a,$D14E
8652: cbne  $D1,$8697
8655: addw  ya,$CC
8657: stop
8658: set0  $32
865A: mov   y,$EA04
865D: mov   a,(x)
865E: adc   a,(x)
865F: bbc1  $EC,$8656
8662: setp
8663: tcall 13
8664: set2  $EE
8666: or    a,$8A+x
8668: notc
8669: bbc0  $FE,$867f
866C: asl   $31D1
866F: stop
8670: eor1  c,$0F21,00
8673: brk
8674: brk
8675: bpl   $8684
8677: clr7  $32
8679: eor1  c,$14FC,06
867C: tcall 6
867D: mov   $16,y
867F: rol   a
8680: mul   ya
8681: set1  $8A
8683: nop
8684: push  psw
8685: clr6  $40
8687: sleep
8688: stop
8689: and   a,$2D
868B: eor1  c,$15BF,02
868E: not1  $02D2,02
8691: dec   y
8692: or    a,$52
8694: eor1  c,$12CB,07
8697: eor   a,$F9
8699: tcall 10
869A: cmp   a,(x)
869B: mov   y,$C1+x
869D: eor1  c,$0E33,00
86A0: mul   ya
86A1: eor   a,$EB
86A3: mov   a,$30+x
86A5: stop
86A6: addw  ya,$E1
86A8: cmp   a,$DFEB
86AB: set1  $FD
86AD: mul   ya
86AE: clr1  $7A
86B0: beq   $86c1
86B2: set0  $22
86B4: mov   $06+x,y
86B6: push  a
86B7: das   a
86B8: eor1  c,$0E14,01
86BB: bne   $86df
86BD: bra   $868c
86BF: and   a,$2D
86C1: eor1  c,$12C0,01
86C4: pop   y
86C5: clr7  $22
86C7: push  psw
86C8: bne   $86ec
86CA: eor1  c,$0F1E,06
86CD: set1  $32
86CF: notc
86D0: bbc0  $3F,$86a0
86D3: eor1  c,$1E23,00
86D6: mov   x,#$25
86D8: rol   $36BE
86DB: rol   $B08A
86DE: tcall 1
86DF: and   a,$0C+x
86E1: tcall 13
86E2: clr2  $DC
86E4: and   a,$9A
86E6: tset1 $02F0
86E9: clrp
86EA: mov   x,#$15
86EC: cbne  $CE,$8689
86EF: bbc0  $3F,$86bf
86F2: and   a,$D21C+x
86F5: clrp
86F6: nop
86F7: eor1  c,$14EE,01
86FA: asl   $D2
86FC: tcall 3
86FD: nop
86FE: asl   $9AC1
8701: tcall 4
8702: dec   y
8703: bbs0  $20,$86f4
8706: bbs0  $30,$86e6
8709: subw  ya,$14
870B: call  $02DD
870E: bmi   $86fd
8710: bbc0  $2E,$869d
8713: mov   (x)+,a
8714: bbs2  $FE,$8706
8717: set0  $21
8719: mov   $F5+x,y
871B: eor1  c,$0C61,06
871E: bbc7  $32,$872e
8721: clr6  $51
8723: mov   $029A,y
8726: clrp
8727: pop   y
8728: beq   $875c
872A: mov   y,$F2
872C: tcall 2
872D: eor1  c,$00FE,07
8730: and   a,$D41C+x
8733: tcall 5
8734: mov   $D4+x,y
8736: subw  ya,$31
8738: mov   a,y
8739: bbc7  $21,$873a
873C: tcall 14
873D: tcall 2
873E: mov   y,a
873F: eor1  c,$02D2,03
8742: mov   y,$1F03
8745: sleep
8746: bbc0  $21,$86d3
8749: tset1 $41E2
874C: mov   y,$21E1
874F: brk
8750: stop
8751: eor1  c,$1E00,00
8754: cbne  $24+x,$8763
8757: clr6  $64
8759: movw  $8A,ya
875B: or    a,$ED52
875E: tcall 1
875F: brk
8760: tset1 $23DF
8763: eor1  c,$001E,07
8766: clr0  $0D
8768: mul   ya
8769: and   a,$3E
876B: pop   a
876C: eor1  c,$1C46,00
876F: di
8770: set1  $43
8772: push  psw
8773: clrv
8774: tcall 1
8775: subw  ya,$0E
8777: clrv
8778: clr1  $0D
877A: tcall 13
877B: tcall 3
877C: mov   a,y
877D: clr7  $8A
877F: bvc   $875f
8781: bbc0  $31,$8761
8784: bbs0  $65,$8792
8787: eor1  c,$03B0,02
878A: mov   $D0+x,y
878C: and   a,$2F
878E: pop   x
878F: tcall 0
8790: eor1  c,$03FE,07
8793: setp
8794: daa   a
8795: tcall 1
8796: tcall 1
8797: dbnz  y,$878c
8799: eor1  c,$1143,00
879C: mov   y,a
879D: cbne  $12+x,$878e
87A0: push  x
87A1: mov   $5F8A,a
87A4: inc   y
87A5: tcall 9
87A6: pcall $E0
87A8: tcall 1
87A9: bmi   $87a8
87AB: eor1  c,$0FF5,02
87AE: bbs7  $62,$877f
87B1: bpl   $879c
87B3: mov   $4F8A+x,a
87B6: cbne  $24+x,$87c4
87B9: daa   a
87BA: set0  $1E
87BC: clr7  $8A
87BE: bbc1  $FC,$8792
87C1: eor   a,$0F
87C3: eor   a,$CE0C
87C6: eor1  c,$1E00,06
87C9: set0  $21
87CB: set0  $1F
87CD: mov   $F2,y
87CF: eor1  c,$0010,00
87D2: clrp
87D3: beq   $87e5
87D5: tcall 0
87D6: and   a,$30
87D8: addw  ya,$14
87DA: mov   ($D0),($9A)
87DD: bpl   $87f1
87DF: tcall 1
87E0: push  psw
87E1: eor1  c,$1FEE,07
87E4: tcall 14
87E5: eor   a,$FD
87E7: set0  $1E
87E9: set7  $8A
87EB: bbs2  $1F,$8801
87EE: cmp   x,$E0BB
87F1: clr7  $31
87F3: subw  ya,$11
87F5: dbnz  y,$87e8
87F7: jmp   ($24CD+x)
87FA: call  $8AFF
87FD: jmp   ($2400+x)
8800: tcall 3
8801: set1  $FD
8803: sleep
8804: stop
8805: eor1  c,$16CC,01
8808: cmp   x,$1EFF
880B: mov   x,#$21
880D: tcall 15
880E: eor1  c,$0140,00
8811: tset1 $42E1
8814: bbc7  $62,$87f2
8817: eor1  c,$0BE1,00
881A: das   a
881B: and   a,$D24D+y
881E: call  $9AAA
8821: set0  $1F
8823: tcall 0
8824: bpl   $8826
8826: brk
8827: tcall 15
8828: and   a,$9A+x
882A: jmp   ($01EF+x)
882D: cmp   x,$03DD
8830: setp
8831: mov   a,y
8832: eor1  c,$1B24,07
8835: bne   $884a
8837: set2  $ED
8839: bbs7  $4F,$87d6
883C: daa   a
883D: and   a,$30+x
883F: pop   y
8840: tcall 15
8841: jmp   ($F0DE+x)
8844: eor1  c,$1E55,00
8847: stop
8848: dec   y
8849: tcall 14
884A: clr1  $10
884C: brk
884D: subw  ya,$00
884F: bpl   $885f
8851: bbs0  $51,$8852
8854: beq   $8865
8856: eor1  c,$10CF,07
8859: set0  $31
885B: cbne  $0F+x,$883a
885E: mov   a,$728A
8861: cbne  $F0+x,$8874
8864: clrv
8865: and   a,(x)
8866: bbc2  $FE,$87f3
8869: tcall 15
886A: not1  $11CF,00
886D: tcall 1
886E: tcall 1
886F: nop
8870: mov   y,$D08A
8873: tcall 0
8874: tcall 2
8875: tcall 1
8876: jmp   ($FFF0+x)
8879: and   a,$628A
887C: sleep
887D: jmp   ($DFED+x)
8880: tset1 $31F3
8883: eor1  c,$1FFF,07
8886: mov   a,y
8887: set7  $42
8889: stop
888A: bbc0  $0D,$8817
888D: bcs   $88d6
888F: tcall 5
8890: clrv
8891: nop
8892: dbnz  y,$8870
8894: tcall 13
8895: eor1  c,$0131,00
8898: brk
8899: stop
889A: notc
889B: tcall 13
889C: bbs2  $10,$8839
889F: nop
88A0: brk
88A1: brk
88A2: tcall 0
88A3: bbs2  $1E,$8896
88A6: nop
88A7: eor1  c,$01CC,07
88AA: beq   $88cd
88AC: tcall 0
88AD: cbne  $BD,$88a1
88B0: eor1  c,$1032,00
88B3: nop
88B4: stop
88B5: bpl   $8897
88B7: eor   a,($5F+x)
88B9: eor1  c,$00DF,00
88BC: not1  $02C1,01
88BF: bra   $88b2
88C1: dbnz  y,$884d
88C3: mov   y,a
88C4: di
88C5: and   a,$2F+x
88C7: set0  $FD
88C9: tcall 15
88CA: tcall 0
88CB: eor1  c,$1F56,01
88CE: stop
88CF: notc
88D0: set0  $DA
88D2: set6  $53
88D4: addw  ya,$F1
88D6: or1   c,$1EAF,07
88D9: mov   a,$52+x
88DB: clrv
88DC: jmp   ($FE8A+x)
88DF: clr7  $55
88E1: tcall 3
88E2: nop
88E3: mov   y,a
88E4: das   a
88E5: clr0  $8A
88E7: notc
88E8: bbc7  $41,$88d7
88EB: pop   y
88EC: beq   $88fd
88EE: and   a,$3E8A+x
88F1: sleep
88F2: stop
88F3: set0  $24
88F5: bbs2  $FF,$88e8
88F8: eor1  c,$0FEC,06
88FB: tcall 2
88FC: sleep
88FD: and   a,$1E
88FF: cbne  $D0+x,$888c
8902: bpl   $8906
8904: bbs2  $0B,$88c6
8907: or    a,$53+x
8909: beq   $8895
890B: bbc1  $0B,$88ef
890E: asl   $23CF
8911: bpl   $8923
8913: eor1  c,$13CA,07
8916: cbne  $D1,$895d
8919: bra   $88e7
891B: clr7  $8A
891D: cmp   a,$023F
8920: push  psw
8921: clrv
8922: mov   y,$C1
8924: set2  $8A
8926: beq   $8959
8928: mov   y,$CE
892A: bbc1  $2F,$890f
892D: set2  $8A
892F: mov   y,$C0
8931: eor   a,$2221+x
8934: brk
8935: cbne  $0F+x,$88c2
8938: mov   a,y
8939: bbc0  $1F,$894d
893C: dbnz  y,$891a
893E: tcall 14
893F: bbc1  $8A,$8952
8942: bpl   $8934
8944: nop
8945: tcall 15
8946: cmp   a,(x)
8947: mov   y,a
8948: clr0  $8A
894A: notc
894B: beq   $8939
894D: set6  $61
894F: tcall 14
8950: cbne  $CC,$88dd
8953: bbc0  $FE,$8979
8956: bpl   $8967
8958: push  psw
8959: tcall 14
895A: cmp   a,$717A
895D: mov   y,$D1+x
895F: asl   $F0AB
8962: bbs0  $43,$88ef
8965: jmp   ($D0CB+x)
8968: bbs1  $21,$896b
896B: pop   y
896C: or    a,$8A+x
896E: cmp   x,$5304
8971: stop
8972: notc
8973: clrv
8974: tset1 $8AD0
8977: clr1  $EE
8979: or    a,$1C+x
897B: inc   $54F4
897E: tset1 $E08A
8981: nop
8982: stop
8983: and   a,(x)
8984: tcall 5
8985: stop
8986: nop
8987: notc
8988: eor1  c,$1A01,06
898B: mov   a,(x)
898C: bvs   $895c
898E: nop
898F: mov   y,$8AD2
8992: tcall 4
8993: set0  $1F
8995: dbnz  y,$8988
8997: bbc1  $54,$89a7
899A: eor1  c,$00DF,00
899D: notc
899E: stop
899F: nop
89A0: clr0  $41
89A2: mov   $8A+x,y
89A4: mul   ya
89A5: clr0  $11
89A7: tcall 0
89A8: tcall 1
89A9: dbnz  y,$898c
89AB: bbc1  $8A,$89d0
89AE: clr1  $0D
89B0: pop   x
89B1: bpl   $89a2
89B3: brk
89B4: brk
89B5: eor1  c,$0D23,01
89B8: inc   $F1+x
89BA: and   a,$20
89BC: beq   $89cd
89BE: eor1  c,$14E0,01
89C1: tcall 2
89C2: clr0  $1F
89C4: notc
89C5: pop   y
89C6: stop
89C7: eor1  c,$01F1,01
89CA: tcall 0
89CB: jmp   ($DDEE+x)
89CE: bbc7  $43,$895b
89D1: nop
89D2: stop
89D3: bne   $89e9
89D5: bbs2  $11,$89e6
89D8: sleep
89D9: eor1  c,$0A11,07
89DC: clr6  $41
89DE: nop
89DF: tset1 $0EDF
89E2: eor1  c,$12E1,01
89E5: tcall 2
89E6: dbnz  y,$89e6
89E8: bbc0  $43,$8a1c
89EB: addw  ya,$0D
89ED: mov   $EF,y
89EF: movw  $C0,ya
89F1: eor   a,$2E32
89F4: eor1  c,$00EC,07
89F7: push  psw
89F8: or    a,$41
89FA: pop   y
89FB: tcall 0
89FC: brk
89FD: eor1  c,$0126,03
8A00: mov   a,y
8A01: tcall 0
8A02: push  psw
8A03: pop   y
8A04: beq   $8a25
8A06: eor1  c,$1F03,01
8A09: mov   x,#$E0
8A0B: nop
8A0C: tcall 0
8A0D: bbc0  $2F,$899a
8A10: cbne  $F2+x,$8a68
8A13: tcall 2
8A14: brk
8A15: sleep
8A16: tset1 $8ACE
8A19: tcall 0
8A1A: jmp   ($4003+x)
8A1D: dec   y
8A1E: cbne  $F1+x,$8a32
8A21: eor1  c,$1F13,00
8A24: stop
8A25: sleep
8A26: and   a,(x)
8A27: set3  $00
8A29: pop   y
8A2A: eor1  c,$0EF0,07
8A2D: stop
8A2E: dbnz  y,$8a44
8A30: tcall 4
8A31: dec   y
8A32: daa   a
8A33: eor1  c,$01E1,01
8A36: beq   $8a4b
8A38: cmp   x,$24D0
8A3B: bbc2  $8A,$8a4e
8A3E: pop   y
8A3F: mov   y,a
8A40: daa   a
8A41: tcall 1
8A42: mov   y,a
8A43: bbs7  $53,$89d0
8A46: push  psw
8A47: mov   sp,x
8A48: stop
8A49: tcall 0
8A4A: tcall 1
8A4B: clr1  $FD
8A4D: bne   $89d9
8A4F: and   a,$1231+y
8A52: tset1 $1DDF
8A55: mul   ya
8A56: tcall 4
8A57: eor1  c,$14DE,01
8A5A: cmp   x,$CDDE
8A5D: bbs0  $32,$8a71
8A60: eor1  c,$0D0E,06
8A63: and   a,(x)
8A64: bbc3  $FE,$8a69
8A67: cmp   x,$8ADD
8A6A: pop   y
8A6B: tcall 0
8A6C: jmp   ($3003+x)
8A6F: inc   a
8A70: tcall 15
8A71: dbnz  y,$8a0d
8A73: tcall 0
8A74: tcall 1
8A75: nop
8A76: stop
8A77: clr7  $43
8A79: brk
8A7A: beq   $8a06
8A7C: jmp   ($01CD+x)
8A7F: push  psw
8A80: bne   $8ac7
8A82: pcall $AA
8A84: eor1  c,$00E1,00
8A87: clr7  $21
8A89: tcall 0
8A8A: dbnz  y,$8a6d
8A8C: eor   a,$208A+y
8A8F: tcall 0
8A90: cmp   x,$F0BD
8A93: bpl   $8a82
8A95: or    a,$8A+x
8A97: setp
8A98: mov   y,$F0DE
8A9B: tcall 1
8A9C: bbc0  $3F,$8a6b
8A9F: eor1  c,$0504,03
8AA2: jmp   ($1F01+x)
8AA5: mov   a,y
8AA6: sleep
8AA7: beq   $8a33
8AA9: nop
8AAA: bbs0  $31,$8a9a
8AAD: pop   x
8AAE: nop
8AAF: nop
8AB0: tcall 0
8AB1: eor1  c,$0B43,07
8AB4: bbs7  $43,$8aca
8AB7: clr1  $ED
8AB9: daa   a
8ABA: eor1  c,$0E0F,07
8ABD: tcall 0
8ABE: brk
8ABF: and   a,$2D
8AC1: inc   a
8AC2: clrv
8AC3: eor1  c,$1121,07
8AC6: bbs2  $EC,$8aab
8AC9: bbs2  $22,$8aee
8ACC: eor1  c,$1F0D,06
8ACF: stop
8AD0: brk
8AD1: daa   a
8AD2: bbs1  $20,$8ac4
8AD5: addw  ya,$0C
8AD7: inc   $E2
8AD9: eor   a,$31+x
8ADB: dec   y
8ADC: beq   $8af5
8ADE: eor1  c,$0055,01
8AE1: beq   $8ad0
8AE3: pop   y
8AE4: sleep
8AE5: jmp   ($8AE1+x)
8AE8: bbs2  $1E,$8ab9
8AEB: brk
8AEC: cbne  $24+x,$8b1e
8AEF: beq   $8a7b
8AF1: nop
8AF2: set0  $35
8AF4: set2  $FC
8AF6: daa   a
8AF7: jmp   ($8AED+x)
8AFA: beq   $8b1b
8AFC: bbc0  $30,$8adb
8AFF: clrv
8B00: dbnz  y,$8b14
8B02: eor1  c,$0E21,00
8B05: beq   $8b18
8B07: and   a,$53+x
8B09: tset1 $8ADE
8B0C: beq   $8aeb
8B0E: tcall 15
8B0F: bpl   $8b12
8B11: set1  $0D
8B13: mov   x,#$8A
8B15: clrv
8B16: set1  $01
8B18: tcall 2
8B19: notc
8B1A: clr7  $56
8B1C: bmi   $8b98
8B1E: nop
8B1F: inc   y
8B20: inc   a
8B21: stop
8B22: inc   $E4+x
8B24: cmp   a,$FD
8B26: eor1  c,$0B01,00
8B29: mov   a,(x)+
8B2A: bbc1  $1F,$8b2f
8B2D: cmp   x,$8ADF
8B30: eor   a,$1F53
8B33: dbnz  y,$8b23
8B35: stop
8B36: tset1 $7AEF
8B39: eor   a,$FE31
8B3C: mov   $BC,y
8B3E: mov   a,$74+x
8B40: tset1 $F08A
8B43: nop
8B44: bbs0  $55,$8b67
8B47: notc
8B48: clrv
8B49: tset1 $AC7A
8B4C: set0  $F0
8B4E: eor   a,$CA1E
8B51: pop   a
8B52: tcall 1
8B53: eor1  c,$0022,01
8B56: pop   y
8B57: clr7  $21
8B59: or    a,$52+x
8B5B: mov   y,a
8B5C: eor1  c,$1DF0,07
8B5F: daa   a
8B60: nop
8B61: beq   $8b86
8B63: jmp   ($8AEE+x)
8B66: pop   y
8B67: clrv
8B68: clr0  $22
8B6A: tset1 $12E0
8B6D: eor   a,$7A
8B6F: bbc3  $FA,$8b41
8B72: mov   y,a
8B73: inc   $F0+x
8B75: stop
8B76: and   a,$4F7A+x
8B79: mov   x,#$DB
8B7B: tcall 12
8B7C: bbc1  $21,$8b9f
8B7F: mov   $028A,y
8B82: and   a,$43+x
8B84: brk
8B85: sleep
8B86: stop
8B87: pop   x
8B88: tcall 0
8B89: eor1  c,$120E,07
8B8C: clr1  $0D
8B8E: mov   x,#$E0
8B90: bbc1  $0F,$8b1d
8B93: set0  $0D
8B95: clr7  $43
8B97: bbc1  $1F,$8b99
8B9A: pop   y
8B9B: eor1  c,$11DE,07
8B9E: nop
8B9F: tcall 15
8BA0: tcall 2
8BA1: nop
8BA2: inc   y
8BA3: mul   ya
8BA4: eor1  c,$1F23,00
8BA7: clr7  $2F
8BA9: pop   x
8BAA: and   a,($62)+y
8BAC: stop
8BAD: addw  ya,$F0
8BAF: mov   y,$DECB
8BB2: tcall 0
8BB3: brk
8BB4: and   a,$8A2D+y
8BB7: mov   a,y
8BB8: stop
8BB9: beq   $8bdc
8BBB: tcall 1
8BBC: nop
8BBD: dbnz  y,$8bc3
8BBF: eor1  c,$1E65,00
8BC2: stop
8BC3: sleep
8BC4: tset1 $00DF
8BC7: nop
8BC8: eor1  c,$1003,01
8BCB: mov   $01EF,y
8BCE: clrp
8BCF: tcall 1
8BD0: jmp   ($FF8A+x)
8BD3: set0  $44
8BD5: clr1  $FE
8BD7: stop
8BD8: pop   y
8BD9: sleep
8BDA: addw  ya,$1F
8BDC: mul   ya
8BDD: eor   a,(x)
8BDE: bmi   $8bcb
8BE0: subw  ya,$E1
8BE2: clr1  $8A
8BE4: set1  $0E
8BE6: beq   $8bea
8BE8: eor   a,$22
8BEA: tset1 $8AE0
8BED: mov   y,a
8BEE: clrv
8BEF: dbnz  y,$8bf3
8BF1: bpl   $8bf5
8BF3: cmp   x,$8ACD
8BF6: beq   $8c0a
8BF8: tcall 1
8BF9: tcall 1
8BFA: dbnz  y,$8bdd
8BFC: and   a,$7A43+x
8BFF: dbnz  y,$8bee
8C01: mov   x,#$ED
8C03: mov   a,y
8C04: tcall 15
8C05: bbc1  $21,$8c82
8C08: tset1 $BDCA
8C0B: bbs0  $64,$8c1c
8C0E: stop
8C0F: set0  $7A
8C11: eor   a,(x)
8C12: cmp   a,$EC31
8C15: mov   x,#$EE
8C17: notc
8C18: daa   a
8C19: addw  ya,$34
8C1B: bmi   $8c0c
8C1D: inc   y
8C1E: inc   $04
8C20: bbs3  $11,$8c9d
8C23: mov   y,$45E2
8C26: cmp   a,(x)
8C27: tcall 5
8C28: dbnz  y,$8c06
8C2A: cmp   y,#$7A
8C2C: nop
8C2D: mov   x,#$13
8C2F: bbc1  $1E,$8c1e
8C32: mov   $8ADE,y
8C35: bbs1  $21,$8c37
8C38: clrv
8C39: or    a,$32+x
8C3B: set1  $1E
8C3D: addw  ya,$BC
8C3F: tset1 $E0CB
8C42: tcall 1
8C43: clr1  $11
8C45: mov   y,$7A
8C47: inc   $1101
8C4A: eor   a,$BE3D
8C4D: bbc0  $66,$8cca
8C50: cmp   a,$CB3E
8C53: cbne  $EE+x,$8c33
8C56: tcall 15
8C57: and   a,$7A
8C59: setp
8C5A: dec   y
8C5B: mov   $CF,y
8C5D: and   a,$FF52
8C60: dbnz  y,$8bec
8C62: tcall 0
8C63: bbs1  $44,$8c84
8C66: sleep
8C67: pop   y
8C68: sleep
8C69: nop
8C6A: addw  ya,$EF
8C6C: and   a,$40
8C6E: notc
8C6F: mov   $CD,y
8C71: or    a,$64
8C73: eor1  c,$1F1F,07
8C76: nop
8C77: bbs1  $43,$8c99
8C7A: stop
8C7B: stop
8C7C: addw  ya,$DD
8C7E: mov   x,#$E1
8C80: and   a,$21+x
8C82: notc
8C83: mov   x,#$CD
8C85: eor1  c,$13F1,01
8C88: bpl   $8c89
8C8A: stop
8C8B: bbc0  $53,$8cae
8C8E: addw  ya,$FD
8C90: mov   $DEDE,y
8C93: beq   $8ca9
8C95: tcall 3
8C96: dbnz  y,$8d12
8C98: mov   $CC,y
8C9A: clr7  $55
8C9C: tcall 4
8C9D: notc
8C9E: clrv
8C9F: or    a,$8A
8CA1: and   a,$33+x
8CA3: dbnz  y,$8c84
8CA5: stop
8CA6: pop   y
8CA7: beq   $8cba
8CA9: eor1  c,$1011,00
8CAC: mov   y,a
8CAD: mov   x,#$02
8CAF: tcall 2
8CB0: clr0  $0F
8CB2: eor1  c,$01F0,00
8CB5: and   a,$31+x
8CB7: brk
8CB8: stop
8CB9: pop   y
8CBA: sleep
8CBB: eor1  c,$01F0,00
8CBE: tcall 1
8CBF: bpl   $8cbe
8CC1: cbne  $F1+x,$8ce5
8CC4: eor1  c,$1E22,00
8CC7: sleep
8CC8: tcall 0
8CC9: and   a,$32+x
8CCB: bpl   $8ccb
8CCD: addw  ya,$CD
8CCF: mov   y,$01CF
8CD2: bbc1  $30,$8cb0
8CD5: mov   $EF8A,y
8CD8: clr0  $32
8CDA: jmp   ($F1FE+x)
8CDD: and   a,$32+x
8CDF: addw  ya,$30
8CE1: dec   y
8CE2: mov   y,$FFCD
8CE5: stop
8CE6: and   a,$7A4F
8CE9: dec   y
8CEA: inc   $C0+x
8CEC: and   a,$54
8CEE: bra   $8ccd
8CF0: tcall 14
8CF1: eor1  c,$1323,01
8CF4: tcall 2
8CF5: stop
8CF6: dbnz  y,$8cd6
8CF8: beq   $8cfa
8CFA: addw  ya,$F3
8CFC: set2  $EC
8CFE: inc   $DE+x
8D00: bbs0  $64,$8d33
8D03: eor1  c,$1FFE,07
8D06: bbs1  $53,$8d29
8D09: tset1 $EDFF
8D0C: addw  ya,$BE
8D0E: clr0  $22
8D10: tcall 2
8D11: tset1 $BDCB
8D14: set0  $8A
8D16: set1  $21
8D18: tset1 $02FF
8D1B: eor   a,$FF31
8D1E: addw  ya,$CC
8D20: pop   y
8D21: mov   $E1+x,y
8D23: tcall 3
8D24: bbc0  $2E,$8ce1
8D27: eor1  c,$01DE,00
8D2A: bbs1  $30,$8d2c
8D2D: brk
8D2E: tcall 15
8D2F: eor   a,$637A
8D32: tset1 $CEDB
8D35: mov   y,$22D1
8D38: tcall 2
8D39: addw  ya,$10
8D3B: mov   $AC+x,y
8D3D: set7  $34
8D3F: bbs2  $1F,$8d1f
8D42: eor1  c,$05F1,02
8D45: tcall 4
8D46: brk
8D47: stop
8D48: pop   y
8D49: sleep
8D4A: beq   $8dc6
8D4C: tcall 15
8D4D: and   a,$CA2F
8D50: cmp   y,#$F0
8D52: clr1  $44
8D54: eor1  c,$0E10,00
8D57: clrv
8D58: and   a,$0E52+x
8D5B: stop
8D5C: tset1 $ED8A
8D5F: beq   $8d71
8D61: tcall 1
8D62: tcall 1
8D63: mov   y,a
8D64: pop   x
8D65: tcall 15
8D66: eor1  c,$1212,00
8D69: tcall 1
8D6A: dbnz  y,$8d5c
8D6C: and   a,$43
8D6E: bpl   $8dea
8D70: pop   y
8D71: mov   $DEDE,y
8D74: set0  $12
8D76: tcall 2
8D77: dec   y
8D78: eor1  c,$00ED,07
8D7B: clr0  $22
8D7D: bpl   $8d6f
8D7F: stop
8D80: or    a,$8A+x
8D82: eor   a,$2F
8D84: sleep
8D85: stop
8D86: pop   y
8D87: clrv
8D88: nop
8D89: set0  $7A
8D8B: tcall 4
8D8C: mov   $BC+x,y
8D8E: cbne  $13+x,$8de4
8D91: tcall 2
8D92: cmp   x,$EF8A
8D95: or    a,$53+x
8D97: tcall 1
8D98: dbnz  y,$8d99
8D9A: pop   y
8D9B: beq   $8e17
8D9D: clrv
8D9E: clr0  $22
8DA0: mov   y,a
8DA1: movw  ya,$CF
8DA3: set0  $45
8DA5: eor1  c,$0F20,00
8DA8: brk
8DA9: clr7  $54
8DAB: tcall 2
8DAC: brk
8DAD: pop   y
8DAE: addw  ya,$CE
8DB0: cbne  $F0+x,$8da5
8DB3: bbs2  $FD,$8d81
8DB6: mov   sp,x
8DB7: eor1  c,$1201,00
8DBA: set1  $0F
8DBC: sleep
8DBD: bbs0  $54,$8de0
8DC0: addw  ya,$EE
8DC2: push  psw
8DC3: mov   x,#$ED
8DC5: clrv
8DC6: tcall 0
8DC7: bbc1  $0E,$8e44
8DCA: inc   $CE+x
8DCC: tcall 15
8DCD: bbs1  $44,$8dee
8DD0: mov   a,y
8DD1: or    a,$8A
8DD3: eor   a,$FF30
8DD6: brk
8DD7: pop   y
8DD8: sleep
8DD9: tcall 15
8DDA: nop
8DDB: addw  ya,$03
8DDD: bra   $8da9
8DDF: mov   sp,x
8DE0: tcall 0
8DE1: set1  $44
8DE3: bra   $8d6f
8DE5: dbnz  y,$8dd9
8DE7: bbs2  $32,$8e09
8DEA: stop
8DEB: mov   y,a
8DEC: pop   y
8DED: addw  ya,$00
8DEF: clrp
8DF0: tcall 1
8DF1: tcall 2
8DF2: mov   $AD+y,x
8DF4: clr7  $21
8DF6: eor1  c,$0012,01
8DF9: dbnz  y,$8deb
8DFB: eor   a,$0E42
8DFE: stop
8DFF: addw  ya,$DD
8E01: dec   y
8E02: sleep
8E03: tcall 1
8E04: tcall 1
8E05: clrp
8E06: dec   y
8E07: mov   $FF8A,y
8E0A: set0  $22
8E0C: bpl   $8e0d
8E0E: beq   $8e34
8E10: bbc2  $6A,$8e30
8E13: adc   (x),(y)
8E14: mov   $9A,y
8E16: das   a
8E17: set1  $24
8E19: pcall $7A
8E1B: mov   $BC+x,y
8E1D: sleep
8E1E: clr0  $45
8E20: clrp
8E21: stop
8E22: sleep
8E23: eor1  c,$0413,02
8E26: clrp
8E27: pop   y
8E28: stop
8E29: pop   y
8E2A: sleep
8E2B: set0  $7A
8E2D: clrp
8E2E: tcall 0
8E2F: inc   y
8E30: inc   $DF+x
8E32: tcall 1
8E33: eor   a,$8A20
8E36: brk
8E37: clrv
8E38: and   a,$33
8E3A: tcall 2
8E3B: pop   y
8E3C: stop
8E3D: sleep
8E3E: addw  ya,$EE
8E40: clrv
8E41: bbc0  $21,$8e30
8E44: inc   a
8E45: cbne  $03+x,$8dd2
8E48: clr0  $21
8E4A: stop
8E4B: brk
8E4C: set0  $54
8E4E: clrp
8E4F: brk
8E50: addw  ya,$CC
8E52: mov   a,y
8E53: mov   a,y
8E54: tcall 14
8E55: set1  $21
8E57: notc
8E58: inc   $8A+x
8E5A: clrv
8E5B: tcall 0
8E5C: tcall 1
8E5D: tcall 1
8E5E: jmp   ($12FF+x)
8E61: eor   a,$7A
8E63: bvc   $8e53
8E65: sleep
8E66: mov   $CE+x,y
8E68: stop
8E69: clr0  $33
8E6B: addw  ya,$0C
8E6D: mov1  c,$01BF,01
8E70: bbs1  $43,$8e91
8E73: notc
8E74: eor1  c,$1402,01
8E77: tcall 3
8E78: nop
8E79: pop   y
8E7A: dbnz  y,$8e6b
8E7C: brk
8E7D: addw  ya,$01
8E7F: bbc1  $0D,$8e3d
8E82: mov   sp,x
8E83: clr7  $23
8E85: bbc1  $7A,$8ea8
8E88: mov   a,y
8E89: or    a,$56+x
8E8B: cmp   a,$DD0E
8E8E: mov   a,y
8E8F: addw  ya,$CD
8E91: beq   $8ea4
8E93: tcall 2
8E94: cmp   x,$CDCA
8E97: clr7  $8A
8E99: tcall 2
8E9A: tcall 1
8E9B: bpl   $8e9c
8E9D: tcall 15
8E9E: and   a,$42+x
8EA0: tset1 $EF7A
8EA3: notc
8EA4: mov   $D0,y
8EA6: set1  $11
8EA8: bpl   $8e84
8EAA: eor1  c,$11DE,07
8EAD: tcall 1
8EAE: clr0  $10
8EB0: stop
8EB1: tcall 0
8EB2: bbc1  $8A,$8ef7
8EB5: brk
8EB6: stop
8EB7: dbnz  y,$8ea7
8EB9: stop
8EBA: tcall 1
8EBB: tcall 1
8EBC: addw  ya,$1F
8EBE: dec   y
8EBF: inc   $23E0
8EC2: clr1  $21
8EC4: dbnz  y,$8e50
8EC6: nop
8EC7: or    a,$43+x
8EC9: nop
8ECA: stop
8ECB: sleep
8ECC: sleep
8ECD: sleep
8ECE: addw  ya,$E3
8ED0: bbs1  $21,$8e9e
8ED3: inc   $13DF
8ED6: bbs2  $8A,$8ee9
8ED9: nop
8EDA: beq   $8ef0
8EDC: bbs2  $00,$8ede
8EDF: stop
8EE0: addw  ya,$DC
8EE2: pop   x
8EE3: tcall 0
8EE4: bbs1  $2F,$8ed4
8EE7: inc   $CF+x
8EE9: addw  ya,$33
8EEB: set1  $22
8EED: tset1 $36F0
8EF0: cmp   a,(x)
8EF1: bmi   $8f6d
8EF3: stop
8EF4: mov   y,$EECC
8EF7: beq   $8f1c
8EF9: tcall 3
8EFA: dec   y
8EFB: addw  ya,$CB
8EFD: das   a
8EFE: bbc0  $33,$8f32
8F01: dbnz  y,$8f04
8F03: or    a,$8A+x
8F05: eor   a,$20
8F07: stop
8F08: stop
8F09: pop   y
8F0A: sleep
8F0B: tcall 15
8F0C: tcall 1
8F0D: addw  ya,$13
8F0F: asl   $CEAB
8F12: clr0  $43
8F14: tcall 3
8F15: brk
8F16: addw  ya,$EF
8F18: and   a,$67
8F1A: clr2  $0F
8F1C: mov   x,#$ED
8F1E: mov   $E17A,y
8F21: set1  $31
8F23: mov   y,a
8F24: mov   $CD,y
8F26: clr7  $43
8F28: eor1  c,$0011,00
8F2B: stop
8F2C: bbs0  $43,$8f50
8F2F: nop
8F30: stop
8F31: addw  ya,$BC
8F33: pop   x
8F34: sleep
8F35: clr0  $33
8F37: dec   x
8F38: mov   $AD,y
8F3A: eor1  c,$1201,00
8F3D: tcall 1
8F3E: tcall 0
8F3F: stop
8F40: set0  $24
8F42: clr1  $7A
8F44: brk
8F45: cbne  $DD+x,$8f24
8F48: di
8F49: bbc0  $22,$8f5a
8F4C: addw  ya,$DC
8F4E: inc   a
8F4F: clrv
8F50: and   a,$0F32+x
8F53: stop
8F54: set0  $8A
8F56: bbc1  $42,$8f68
8F59: brk
8F5A: pop   y
8F5B: pop   y
8F5C: clrv
8F5D: tcall 1
8F5E: addw  ya,$34
8F60: push  psw
8F61: mov   $BC+x,y
8F63: tcall 15
8F64: bbc1  $32,$8f76
8F67: eor1  c,$0100,00
8F6A: bbc0  $43,$8f8c
8F6D: stop
8F6E: stop
8F6F: notc
8F70: addw  ya,$CF
8F72: clr0  $23
8F74: clrp
8F75: mov   $AB+x,y
8F77: clrv
8F78: bbc1  $8A,$8f9c
8F7B: nop
8F7C: nop
8F7D: tcall 15
8F7E: bbs1  $33,$8f91
8F81: brk
8F82: addw  ya,$CC
8F84: mov   $12CE,y
8F87: bbc1  $2F,$8f56
8F8A: mov   x,#$7A
8F8C: daa   a
8F8D: bbc0  $43,$8faf
8F90: brk
8F91: beq   $8fda
8F93: cmp   a,$307A+x
8F96: pop   y
8F97: sleep
8F98: mov   $BE+x,y
8F9A: tcall 15
8F9B: and   a,$2F+x
8F9D: addw  ya,$DC
8F9F: mov   $14DF,y
8FA2: tcall 3
8FA3: tcall 1
8FA4: bpl   $8f94
8FA6: eor1  c,$0413,02
8FA9: clrp
8FAA: stop
8FAB: dbnz  y,$8f9c
8FAD: pop   y
8FAE: tcall 15
8FAF: addw  ya,$22
8FB1: clr1  $0C
8FB3: mov1  c,$13CF,00
8FB6: eor   a,$00
8FB8: eor1  c,$0F00,00
8FBB: bbs0  $43,$8fdf
8FBE: nop
8FBF: dbnz  y,$8faf
8FC1: addw  ya,$BC
8FC3: tcall 0
8FC4: clr0  $33
8FC6: asl   $EEAB
8FC9: tcall 14
8FCA: eor1  c,$0023,01
8FCD: stop
8FCE: beq   $8fe2
8FD0: and   a,$31+x
8FD2: brk
8FD3: addw  ya,$DD
8FD5: mov   a,y
8FD6: mov   $D0,y
8FD8: bbs1  $43,$8fe8
8FDB: movw  ya,$8A
8FDD: daa   a
8FDE: tcall 0
8FDF: set1  $10
8FE1: tcall 0
8FE2: stop
8FE3: set0  $34
8FE5: addw  ya,$62
8FE7: jmp   ($DDED+x)
8FEA: mov   $B0,y
8FEC: and   a,$21+x
8FEE: addw  ya,$00
8FF0: mov1  $12BD,07,c
8FF3: eor   a,$31
8FF5: stop
8FF6: brk
8FF7: eor1  c,$04F1,01
8FFA: bbs2  $0F,$8fed
8FFD: mov   y,a
8FFE: cbne  $FE+x,$907b
9001: or    a,$52+x
9003: tset1 $BADD
9006: set6  $54
9008: clr1  $8A
900A: brk
900B: nop
900C: beq   $9042
900E: set2  $1F
9010: brk
9011: mov   y,a
9012: addw  ya,$CC
9014: cbne  $02+x,$904a
9017: jmp   ($ABEC+x)
901A: tcall 14
901B: eor1  c,$0212,01
901E: brk
901F: beq   $9021
9021: clr0  $45
9023: bra   $909f
9025: daa   a
9026: inc   y
9027: inc   $F1DC
902A: bbc1  $30,$9029
902D: addw  ya,$AA
902F: clrv
9030: and   a,$42
9032: brk
9033: tcall 15
9034: stop
9035: or    a,($8A)+y
9037: bbs2  $21,$9049
903A: pop   y
903B: pop   y
903C: daa   a
903D: tcall 0
903E: tcall 0
903F: addw  ya,$52
9041: mov   y,$AA
9043: daa   a
9044: and   a,$1F53
9047: stop
9048: eor1  c,$12FF,00
904B: eor   a,$30
904D: brk
904E: dbnz  y,$904e
9050: mov   a,y
9051: addw  ya,$F1
9053: set1  $33
9055: tset1 $AFB9
9058: and   a,$42
905A: eor1  c,$1000,00
905D: pop   y
905E: bbc0  $44,$9092
9061: stop
9062: brk
9063: addw  ya,$CB
9065: mov1  $13D1,01,c
9068: set1  $0E
906A: mov1  c,$0ABE,04
906D: set0  $31
906F: tcall 0
9070: jmp   ($02FF+x)
9073: bbs2  $31,$90f0
9076: jmp   ($BCFC+x)
9079: mov   a,y
907A: mul   ya
907B: clr0  $33
907D: cbne  $7A,$903a
9080: mov   x,#$F1
9082: eor   a,$FE31
9085: sleep
9086: bbs0  $8A,$90bd
9089: clr1  $00
908B: beq   $907a
908D: daa   a
908E: stop
908F: set0  $7A
9091: bbs1  $0F,$904f
9094: mov   sp,x
9095: tcall 15
9096: bbc1  $44,$90d8
9099: addw  ya,$CB
909B: mov   a,$66+x
909D: cmp   a,$FE20
90A0: mov   $BC+x,y
90A2: eor1  c,$01EF,00
90A5: clr0  $21
90A7: dec   y
90A8: cbne  $02+x,$90bb
90AB: eor1  c,$1F22,00
90AE: stop
90AF: beq   $90d5
90B1: bbs2  $10,$90c3
90B4: eor1  c,$1EFE,06
90B7: stop
90B8: beq   $90cc
90BA: tcall 2
90BB: notc
90BC: pop   x
90BD: eor1  c,$13F0,00
90C0: set1  $10
90C2: sleep
90C3: tcall 14
90C4: and   a,$33
90C6: addw  ya,$30
90C8: stop
90C9: mov   y,$BCDC
90CC: tcall 15
90CD: bbc1  $21,$914a
90D0: inc   y
90D1: inc   $C0
90D3: and   a,$44
90D5: jmp   ($EFEF+x)
90D8: eor1  c,$0413,02
90DB: clrp
90DC: beq   $90dc
90DE: pop   y
90DF: sleep
90E0: stop
90E1: eor1  c,$1202,01
90E4: mov   y,a
90E5: pop   x
90E6: sleep
90E7: clr0  $32
90E9: jmp   ($0F8A+x)
90EC: clrv
90ED: bbc0  $34,$9111
90F0: nop
90F1: dbnz  y,$90d1
90F3: addw  ya,$DE
90F5: stop
90F6: set0  $33
90F8: push  psw
90F9: mov1  c,$14BE,00
90FC: eor1  c,$1032,00
90FF: brk
9100: sleep
9101: clr0  $34
9103: tcall 3
9104: nop
9105: addw  ya,$FD
9107: mov   $EFCC,y
910A: set0  $42
910C: tset1 $7ADB
910F: movw  ya,$F3
9111: eor   a,$DE40+y
9114: stop
9115: or    a,$67+x
9117: addw  ya,$53
9119: nop
911A: dbnz  y,$90f8
911C: mov   $CE,y
911E: bbs1  $42,$919b
9121: cmp   x,$ACBA
9124: set0  $46
9126: tcall 5
9127: mov   y,a
9128: sleep
9129: eor1  c,$0401,01
912C: bbc1  $10,$911d
912F: stop
9130: pop   y
9131: sleep
9132: addw  ya,$F3
9134: eor   a,$1E
9136: mov   $CC,y
9138: di
9139: eor   a,(x)
913A: clr2  $8A
913C: brk
913D: stop
913E: tcall 15
913F: bbc1  $34,$9171
9142: sleep
9143: dbnz  y,$91bf
9145: mov   $CD+x,y
9147: clr0  $32
9149: bmi   $9115
914B: inc   $D1
914D: eor1  c,$0223,01
9150: brk
9151: sleep
9152: tcall 0
9153: bbs1  $42,$9166
9156: addw  ya,$FE
9158: mov   a,y
9159: mov   a,y
915A: mov   $33F2,y
915D: clrp
915E: mov   y,$DE8A
9161: sleep
9162: bbc0  $31,$9165
9165: brk
9166: clrv
9167: bbs1  $8A,$91ae
916A: bra   $916b
916C: stop
916D: sleep
916E: cbne  $F1+x,$9183
9171: addw  ya,$30
9173: inc   y
9174: subw  ya,$CE
9176: and   a,$1053+y
9179: stop
917A: eor1  c,$02FF,00
917D: eor   a,$30+x
917F: tset1 $FDFF
9182: daa   a
9183: eor1  c,$0100,00
9186: set1  $0D
9188: cbne  $DE+x,$918f
918B: bbc1  $8A,$919d
918E: stop
918F: beq   $91a3
9191: eor   a,$31
9193: stop
9194: sleep
9195: addw  ya,$ED
9197: inc   a
9198: clrv
9199: bbs1  $31,$9199
919C: inc   $CE
919E: eor1  c,$1301,01
91A1: call  $FFFE
91A4: clr0  $34
91A6: clr1  $7A
91A8: tset1 $EDDD
91AB: mov   $CF,y
91AD: eor   a,$11
91AF: push  psw
91B0: addw  ya,$CB
91B2: mov   x,#$F1
91B4: eor   a,(x)
91B5: clr2  $FD
91B7: mov   a,y
91B8: clr7  $8A
91BA: eor   a,$1031
91BD: dbnz  y,$91ae
91BF: notc
91C0: clrv
91C1: tcall 1
91C2: addw  ya,$32
91C4: cbne  $BA,$9173
91C7: bbc7  $55,$920d
91CA: asl   $EF8A
91CD: tcall 15
91CE: eor   a,$1F22+x
91D1: sleep
91D2: stop
91D3: notc
91D4: addw  ya,$D0
91D6: clr0  $31
91D8: bpl   $91b3
91DA: dec   $F2+x
91DC: eor   a,$218A+x
91DF: bpl   $91ce
91E1: tcall 15
91E2: and   a,$43+x
91E4: jmp   ($7AF0+x)
91E7: dec   y
91E8: mov   $BE,y
91EA: clr0  $34
91EC: bra   $91a8
91EE: inc   $F08A
91F1: bbs1  $21,$9204
91F4: sleep
91F5: beq   $921b
91F7: bbs2  $7A,$9229
91FA: sleep
91FB: notc
91FC: inc   a
91FD: pop   x
91FE: set0  $12
9200: clr1  $7A
9202: mov   y,$9A
9204: bne   $922a
9206: cmp   a,$EF0C+y
9209: sleep
920A: eor1  c,$0423,02
920D: clrp
920E: dbnz  y,$91ff
9210: tset1 $00DF
9213: eor1  c,$0101,01
9216: push  psw
9217: mov   $22F0,y
921A: set1  $11
921C: eor1  c,$00FE,07
921F: and   a,$42
9221: bpl   $9223
9223: dbnz  y,$9213
9225: addw  ya,$CD
9227: tcall 0
9228: clr0  $31
922A: asl   $DEAA
922D: bbs1  $8A,$9252
9230: tcall 2
9231: dbnz  y,$9212
9233: and   a,$43
9235: tcall 3
9236: stop
9237: addw  ya,$EF
9239: dec   y
923A: inc   $23E0
923D: clr1  $FD
923F: movw  ya,$8A
9241: daa   a
9242: set0  $23
9244: tcall 2
9245: stop
9246: stop
9247: clr7  $55
9249: addw  ya,$30
924B: beq   $924a
924D: mov   x,#$CD
924F: sleep
9250: or    a,$20+x
9252: addw  ya,$1E
9254: mov1  c,$02CF,00
9257: and   a,$DD61+y
925A: notc
925B: eor1  c,$0502,02
925E: tcall 3
925F: beq   $9270
9261: pop   y
9262: pop   y
9263: beq   $92df
9265: tcall 15
9266: and   a,$1D+x
9268: mov1  c,$11DE,07
926B: eor   a,$8A52
926E: brk
926F: pop   y
9270: bbs0  $44,$9295
9273: brk
9274: beq   $9264
9276: addw  ya,$BC
9278: tcall 14
9279: tcall 1
927A: bbs1  $2E,$9237
927D: mov   sp,x
927E: set0  $8A
9280: clr0  $22
9282: jmp   ($F0EF+x)
9285: and   a,$0F52+x
9288: addw  ya,$FE
928A: dec   y
928B: mov   a,y
928C: pop   x
928D: tcall 1
928E: or    a,$3F+x
9290: mov1  $1E8A,06,c
9293: beq   $92b8
9295: tcall 3
9296: nop
9297: dbnz  y,$928a
9299: and   a,$7A+x
929B: cmp   a,$FD2F+x
929E: mov   $EFDD,y
92A1: tcall 0
92A2: tcall 2
92A3: addw  ya,$22
92A5: mov   y,$9B
92A7: tcall 13
92A8: and   a,$55
92AA: call  $8ADC
92AD: beq   $92e3
92AF: bbs2  $10,$92b1
92B2: sleep
92B3: dbnz  y,$92a3
92B5: addw  ya,$01
92B7: and   a,$3F+x
92B9: mov   $AC+x,y
92BB: daa   a
92BC: bbs1  $46,$9249
92BF: clrp
92C0: stop
92C1: stop
92C2: or    a,$53+x
92C4: jmp   ($FFF0+x)
92C7: addw  ya,$CC
92C9: mov   a,(x)+
92CA: tcall 0
92CB: set1  $21
92CD: asl   $9A
92CF: sleep
92D0: eor1  c,$0212,01
92D3: tcall 2
92D4: dbnz  y,$92d5
92D6: or    a,$53+x
92D8: bpl   $9354
92DA: stop
92DB: pop   y
92DC: mov   a,y
92DD: mov   x,#$F1
92DF: clr0  $31
92E1: mov   y,$CA7A
92E4: cbne  $03+x,$933b
92E7: set2  $FF
92E9: notc
92EA: or    a,$548A+y
92ED: jmp   ($F0F0+x)
92F0: mov   y,a
92F1: daa   a
92F2: bpl   $92f5
92F4: addw  ya,$41
92F6: inc   y
92F7: inc   $CE
92F9: bbs1  $43,$932e
92FC: push  a
92FD: eor1  c,$13EF,00
9300: bbs2  $22,$9302
9303: dbnz  y,$92e5
9305: dbnz  y,$9381
9307: tcall 13
9308: tcall 2
9309: clr0  $1E
930B: sbc   (x),(y)
930C: mov   sp,x
930D: set0  $55
930F: eor1  c,$1F21,00
9312: dbnz  y,$9316
9314: eor   a,$21
9316: nop
9317: sleep
9318: addw  ya,$DD
931A: mov   x,#$FF
931C: set0  $42
931E: tset1 $BDCA
9321: eor1  c,$02F1,01
9324: tcall 2
9325: jmp   ($01FF+x)
9328: eor   a,$6A30
932B: mov   sp,x
932C: push  psw
932D: sbc   (x),(y)
932E: inc   $BD
9330: bbs0  $56,$9350
9333: addw  ya,$CA
9335: mov   sp,x
9336: tcall 15
9337: and   a,$54
9339: brk
933A: notc
933B: bbc7  $8A,$9382
933E: tcall 3
933F: brk
9340: stop
9341: dbnz  y,$9332
9343: beq   $9345
9345: addw  ya,$04
9347: bra   $9314
9349: inc   $23F1
934C: eor   a,$2F
934E: eor1  c,$11FF,07
9351: and   a,$32+x
9353: nop
9354: stop
9355: dbnz  y,$9345
9357: addw  ya,$F0
9359: nop
935A: bbc0  $20,$9327
935D: inc   a
935E: tcall 14
935F: clr1  $8A
9361: clr0  $11
9363: stop
9364: clrv
9365: and   a,$0F32+y
9368: stop
9369: addw  ya,$DE
936B: mov   $DF+x,y
936D: clr0  $11
936F: tcall 1
9370: dec   y
9371: inc   a
9372: eor1  c,$02FF,00
9375: tcall 2
9376: clrp
9377: tset1 $33F0
937A: bbc2  $6A,$9398
937D: movw  ya,$CB
937F: inc   $BC
9381: bbc0  $13,$93d6
9384: addw  ya,$DA
9386: inc   $22EF
9389: eor   a,$30
938B: dbnz  y,$938c
938D: eor1  c,$0413,02
9390: bra   $9381
9392: stop
9393: dbnz  y,$9374
9395: tcall 1
9396: addw  ya,$01
9398: tcall 1
9399: mov   y,a
939A: inc   $DE
939C: clr0  $44
939E: tcall 2
939F: eor1  c,$000F,07
93A2: bbs1  $43,$93c5
93A5: dbnz  y,$93a6
93A7: sleep
93A8: addw  ya,$EE
93AA: bne   $93cf
93AC: clrp
93AD: notc
93AE: mov   $CE,y
93B0: bbs0  $8A,$93d4
93B3: tcall 1
93B4: jmp   ($12FF+x)
93B7: eor   a,$20
93B9: brk
93BA: addw  ya,$CC
93BC: notc
93BD: mov   a,y
93BE: tcall 14
93BF: tcall 1
93C0: set1  $0C
93C2: movw  ya,$8A
93C4: clrv
93C5: tcall 0
93C6: tcall 1
93C7: tcall 1
93C8: jmp   ($13FF+x)
93CB: bbs2  $7A,$940e
93CE: dbnz  y,$93ce
93D0: mov   $DE+x,y
93D2: stop
93D3: set0  $33
93D5: addw  ya,$0D
93D7: mov1  c,$12BE,00
93DA: bbc1  $33,$93fb
93DD: pop   y
93DE: eor1  c,$0401,02
93E1: bmi   $93e3
93E3: dbnz  y,$93d4
93E5: sleep
93E6: beq   $9462
93E8: tcall 15
93E9: and   a,$1D
93EB: inc   $CC
93ED: clr7  $22
93EF: bbs2  $7A,$9412
93F2: notc
93F3: bbs0  $67,$945a
93F6: push  psw
93F7: cbne  $ED+x,$9474
93FA: mov   x,#$E0
93FC: tcall 1
93FD: set1  $0E
93FF: mov   $BD,y
9401: set0  $8A
9403: tcall 1
9404: clr0  $10
9406: dbnz  y,$93f9
9408: eor   a,$41
940A: brk
940B: addw  ya,$EE
940D: notc
940E: mov   $D0,y
9410: set1  $11
9412: bpl   $93ee
9414: eor1  c,$11DE,07
9417: tcall 1
9418: clr0  $10
941A: stop
941B: tcall 0
941C: bbc1  $8A,$9461
941F: brk
9420: stop
9421: dbnz  y,$9411
9423: stop
9424: tcall 1
9425: clrp
9426: addw  ya,$0F
9428: mov   y,$AC+x
942A: clrv
942B: bbs1  $33,$943e
942E: beq   $93ba
9430: brk
9431: and   a,$42
9433: jmp   ($FFFF+x)
9436: pop   y
9437: sleep
9438: addw  ya,$03
943A: set1  $20
943C: mov   $BB+x,y
943E: daa   a
943F: bbc0  $34,$93cc
9442: bpl   $9444
9444: stop
9445: and   a,$43
9447: jmp   ($0FEF+x)
944A: addw  ya,$DC
944C: mov   x,#$02
944E: set1  $20
9450: mov   y,$DFBB
9453: addw  ya,$23
9455: clr1  $12
9457: brk
9458: beq   $9480
945A: cmp   a,(x)
945B: setp
945C: addw  ya,$FE
945E: notc
945F: mov   $F1DE,y
9462: bbs1  $21,$9451
9465: addw  ya,$CB
9467: mov   sp,x
9468: bbc0  $43,$948c
946B: tset1 $24F1
946E: eor1  c,$0044,01
9471: sleep
9472: brk
9473: pop   y
9474: pop   y
9475: tcall 0
9476: tcall 1
9477: addw  ya,$12
9479: push  psw
947A: mov1  c,$12CF,00
947D: bbc1  $32,$948f
9480: addw  ya,$EE
9482: and   a,$5267
9485: stop
9486: mov   a,y
9487: cbne  $CC+x,$9504
948A: clr6  $22
948C: set1  $FD
948E: inc   a
948F: mov   x,#$F2
9491: bbs2  $8A,$94a4
9494: bpl   $9495
9496: bbs0  $43,$94ba
9499: nop
949A: dbnz  y,$9516
949C: pop   x
949D: mov   $21E0,y
94A0: bbs1  $2E,$946d
94A3: mov   x,sp
94A4: eor1  c,$0201,01
94A7: bpl   $94aa
94A9: brk
94AA: tcall 15
94AB: and   a,$7A31+x
94AE: brk
94AF: pop   y
94B0: mov   y,$E0CB
94B3: clr0  $22
94B5: cmp   x,$CC7A
94B8: inc   a
94B9: tcall 15
94BA: bbs1  $42,$94bd
94BD: tset1 $8AF2
94C0: bbc1  $42,$94e2
94C3: dbnz  y,$94c4
94C5: notc
94C6: clrv
94C7: tcall 1
94C8: addw  ya,$44
94CA: push  psw
94CB: mov   $BD,y
94CD: tcall 15
94CE: bbs1  $32,$94e1
94D1: eor1  c,$010F,00
94D4: bbs1  $33,$94e7
94D7: stop
94D8: sleep
94D9: pop   y
94DA: ror   $CE+x
94DC: bbs0  $33,$94fe
94DF: mov   y,$E0AA
94E2: bbc1  $02,$94e5
94E5: nop
94E6: nop
94E7: nop
94E8: nop
94E9: nop
94EA: nop
94EB: nop
94EC: subw  ya,$00
94EE: nop
94EF: brk
94F0: bne   $9513
94F2: jmp   ($DB14+x)
94F5: subw  ya,$FF
94F7: clr1  $21
94F9: mov   y,a
94FA: stop
94FB: or    a,$E13D+x
94FE: subw  ya,$1D
9500: set7  $4F
9502: mov   $46E0,y
9505: set3  $FE
9507: subw  ya,$DB
9509: tcall 1
950A: daa   a
950B: bbs2  $DD,$94ef
950E: bra   $94fd
9510: subw  ya,$F4
9512: bbc2  $1F,$9512
9515: tcall 1
9516: das   a
9517: set1  $0D
9519: subw  ya,$E1
951B: set1  $0D
951D: cmp   y,#$32
951F: clr0  $3F
9521: mov   a,$AA
9523: tcall 2
9524: clrp
9525: pop   x
9526: brk
9527: nop
9528: nop
9529: cmp   x,$9AFF
952C: or    a,$FF40+x
952F: bbc1  $ED,$9545
9532: mov   y,a
9533: pop   y
9534: subw  ya,$F2
9536: bmi   $9549
9538: mov   $03+x,y
953A: tcall 3
953B: tcall 0
953C: cmp   x,$E19A
953F: tcall 3
9540: jmp   ($F1EE+x)
9543: eor   a,$AD1B
9546: eor1  c,$1D61,07
9549: tcall 1
954A: subw  ya,$46
954C: and   a,$FD4F+x
954F: subw  ya,$F2
9551: bbc2  $CA,$9515
9554: dbnz  y,$9558
9556: bpl   $9546
9558: subw  ya,$F3
955A: bbc2  $F0,$955b
955D: or    a,$DF40
9560: mov   y,a
9561: subw  ya,$CF
9563: tcall 1
9564: brk
9565: clrv
9566: tcall 1
9567: bbs1  $2F,$9539
956A: subw  ya,$56
956C: bpl   $957a
956E: mov   x,#$CD
9570: nop
9571: nop
9572: or    a,$9A+x
9574: clrp
9575: and   a,$0C+x
9577: clr7  $31
9579: clrp
957A: mov   a,y
957B: tset1 $DE9A
957E: tcall 1
957F: stop
9580: tcall 1
9581: bbs0  $41,$9581
9584: tcall 0
9585: subw  ya,$12
9587: tcall 2
9588: tset1 $DFEC
958B: beq   $95af
958D: tset1 $249A
9590: clrp
9591: sleep
9592: tcall 0
9593: tcall 1
9594: bpl   $9593
9596: daa   a
9597: eor1  c,$13ED,07
959A: cmp   x,$66E2
959D: clrp
959E: stop
959F: nop
95A0: eor1  c,$03F1,02
95A3: mov   $DD+x,y
95A5: pop   x
95A6: set1  $ED
95A8: or    a,$8A
95AA: eor   a,$40
95AC: tcall 14
95AD: push  psw
95AE: or    a,$2F
95B0: nop
95B1: mov   $E09A,x
95B4: jmp   ($13EF+x)
95B7: bbs2  $10,$95d9
95BA: beq   $9546
95BC: setp
95BD: nop
95BE: mov   y,a
95BF: inc   $03
95C1: cmp   x,$35EF
95C4: eor1  c,$1442,02
95C7: inc   y
95C8: tcall 14
95C9: jmp   ($E913+x)
95CC: das   a
95CD: eor1  c,$1C00,07
95D0: clr6  $11
95D2: eor   a,$F063
95D5: nop
95D6: eor1  c,$10E1,01
95D9: mov   $BF+x,y
95DB: push  a
95DC: mov   x,#$FF
95DE: mov   a,$748A+y
95E1: clrp
95E2: tcall 2
95E3: sleep
95E4: set0  $11
95E6: mov1  $0AE2,04,c
95E9: mov   a,y
95EA: daa   a
95EB: mov   y,a
95EC: mov   a,$2463+x
95EF: cmp   x,$8AEF
95F2: or    a,$CD1E+x
95F5: stop
95F6: pop   x
95F7: pop   y
95F8: mul   ya
95F9: tcall 2
95FA: eor1  c,$0436,03
95FD: cbne  $E1,$9643
9600: push  psw
9601: mul   ya
9602: notc
9603: eor1  c,$0CEF,07
9606: sleep
9607: set0  $65
9609: bbc2  $0D,$960f
960C: eor1  c,$0F42,07
960F: dbnz  y,$95f0
9611: dbnz  y,$95df
9613: bne   $9616
9615: eor1  c,$0347,03
9618: mov   x,#$25
961A: tcall 2
961B: jmp   ($EECE+x)
961E: subw  ya,$FF
9620: pop   y
9621: clrv
9622: tcall 15
9623: and   a,$F110+x
9626: tcall 0
9627: eor1  c,$1E43,07
962A: mov   x,#$EE
962C: notc
962D: dec   y
962E: notc
962F: mov   $619A+y,a
9632: nop
9633: nop
9634: tcall 1
9635: tcall 2
9636: brk
9637: stop
9638: stop
9639: eor1  c,$0EEE,07
963C: inc   a
963D: or    a,$65
963F: tcall 2
9640: set1  $23
9642: eor1  c,$1F31,00
9645: daa   a
9646: asl   $FBDE
9649: cmp   y,#$14
964B: eor1  c,$0165,01
964E: tcall 2
964F: set1  $32
9651: dbnz  y,$9651
9653: mov   x,#$8A
9655: stop
9656: movw  $BD,ya
9658: bbs1  $64,$965c
965B: clr1  $23
965D: eor1  c,$0F21,00
9660: notc
9661: bne   $9661
9663: mov   $BE,y
9665: bbs1  $8A,$969c
9668: tcall 4
9669: bbc0  $32,$967d
966C: jmp   ($F0DC+x)
966F: eor1  c,$1A0E,05
9672: bne   $9677
9674: eor   a,$13
9676: clr1  $11
9678: eor1  c,$0E22,00
967B: pop   y
967C: stop
967D: push  psw
967E: inc   a
967F: mov   a,y
9680: bbs0  $8A,$96c6
9683: clr0  $22
9685: set0  $42
9687: push  psw
9688: cbne  $10+x,$9615
968B: mov   y,$BEDC
968E: bbs0  $32,$96c3
9691: tcall 1
9692: bbs1  $8A,$96c7
9695: push  psw
9696: sleep
9697: brk
9698: mov   y,a
9699: mov   $CF,y
969B: tcall 2
969C: eor1  c,$0223,01
969F: clrp
96A0: and   a,$41
96A2: stop
96A3: brk
96A4: stop
96A5: eor1  c,$1CFD,05
96A8: pop   y
96A9: tcall 15
96AA: clr1  $21
96AC: tcall 1
96AD: and   a,$8A+x
96AF: tcall 3
96B0: beq   $96b0
96B2: tcall 15
96B3: mov   y,$CD+x
96B5: cbne  $01+x,$9642
96B8: clr1  $20
96BA: set0  $44
96BC: set1  $0E
96BE: beq   $96cf
96C0: eor1  c,$0CED,06
96C3: mov   a,y
96C4: tcall 15
96C5: clr1  $0F
96C7: and   a,$23
96C9: eor1  c,$0042,00
96CC: beq   $96dd
96CE: notc
96CF: dec   y
96D0: mov   x,#$F2
96D2: eor1  c,$0031,00
96D5: bbs1  $33,$970a
96D8: jmp   ($0E01+x)
96DB: eor1  c,$1BED,06
96DE: mov   sp,x
96DF: clr0  $11
96E1: nop
96E2: bbs1  $44,$966f
96E5: tcall 3
96E6: nop
96E7: tcall 0
96E8: stop
96E9: sleep
96EA: movw  ya,$CF
96EC: nop
96ED: eor1  c,$0121,00
96F0: bbs1  $43,$9715
96F3: tcall 1
96F4: jmp   ($8AE0+x)
96F7: asl   $CEAC
96FA: tcall 0
96FB: bpl   $96fe
96FD: and   a,$44
96FF: eor1  c,$1112,00
9702: beq   $9714
9704: mov   y,$CECB
9707: tcall 0
9708: addw  ya,$11
970A: beq   $9753
970C: cmp   a,$66+x
970E: bmi   $9712
9710: clrp
9711: eor1  c,$1BED,05
9714: mul   ya
9715: tcall 0
9716: brk
9717: tcall 15
9718: clr1  $34
971A: eor1  c,$1042,00
971D: tcall 1
971E: jmp   ($BBEC+x)
9721: cbne  $01+x,$96ae
9724: stop
9725: tcall 1
9726: clr0  $44
9728: clr1  $01
972A: clr0  $10
972C: eor1  c,$0BDC,06
972F: pop   x
9730: nop
9731: stop
9732: tcall 1
9733: bbs0  $33,$96c0
9736: clr1  $21
9738: set1  $1F
973A: inc   y
973B: inc   a
973C: mul   ya
973D: stop
973E: eor1  c,$0F01,00
9741: clr0  $34
9743: set2  $11
9745: set1  $20
9747: eor1  c,$0BEC,06
974A: pop   y
974B: clrv
974C: brk
974D: nop
974E: clr0  $43
9750: eor1  c,$0122,01
9753: bbs1  $2F,$9742
9756: mov   $EFDE,y
9759: eor1  c,$000F,07
975C: bbc0  $33,$9781
975F: clr0  $23
9761: jmp   ($EE8A+x)
9764: inc   a
9765: mov   x,#$F0
9767: stop
9768: stop
9769: clr0  $33
976B: eor1  c,$1321,00
976E: clr1  $11
9770: notc
9771: mov   $F0CD,y
9774: addw  ya,$ED
9776: sleep
9777: and   a,$5355+x
977A: and   a,$4077
977D: eor1  c,$0CFD,06
9780: cbne  $FF+x,$9792
9783: clrv
9784: bbs1  $22,$9711
9787: bbc0  $31,$979d
978A: tcall 3
978B: mov   y,$DCFF
978E: das   a
978F: eor1  c,$12EF,00
9792: tcall 1
9793: bpl   $97a9
9795: clr1  $46
9797: inc   x
9798: eor1  c,$0DDF,00
979B: mov   $BC,y
979D: clrv
979E: and   a,$53
97A0: stop
97A1: eor1  c,$132F,07
97A4: cmp   a,$DF3F
97A7: pop   y
97A8: sbc   (x),(y)
97A9: di
97AA: eor1  c,$0210,00
97AD: tcall 1
97AE: clrp
97AF: beq   $97d6
97B1: set2  $12
97B3: subw  ya,$00
97B5: tset1 $FFCD
97B8: stop
97B9: nop
97BA: tcall 1
97BB: set0  $8A
97BD: bbc3  $00,$97d4
97C0: bmi   $97b2
97C2: dec   y
97C3: movw  ya,$D0
97C5: eor1  c,$1F0F,06
97C8: and   a,$0F+x
97CA: bbs1  $22,$97fe
97CD: clr0  $8A
97CF: cmp   x,$DAFE
97D2: pop   x
97D3: dbnz  y,$97d7
97D5: clrp
97D6: tcall 15
97D7: eor1  c,$0303,02
97DA: bbc1  $10,$9801
97DD: asl   a
97DE: inc   $8AEC
97E1: mul   ya
97E2: jmp   ($10E0+x)
97E5: bbc0  $35,$982b
97E8: bbc0  $8A,$982e
97EB: mov   $CD+x,y
97ED: movw  ya,$DF
97EF: tcall 1
97F0: tset1 $8AF1
97F3: clr1  $24
97F5: set2  $24
97F7: call  $ECEF
97FA: inc   $8A+x
97FC: pop   x
97FD: nop
97FE: nop
97FF: beq   $9813
9801: bbs2  $03,$9868
9804: eor1  c,$1D23,00
9807: mov   $BB+x,y
9809: inc   a
980A: sleep
980B: clr0  $10
980D: eor1  c,$0133,01
9810: and   a,$44+x
9812: setp
9813: pop   y
9814: mov   y,$BC
9816: eor1  c,$01DC,07
9819: jmp   ($2102+x)
981C: clr0  $44
981E: bbs2  $8A,$9852
9821: nop
9822: dec   y
9823: inc   $AC+x
9825: clr7  $10
9827: tcall 1
9828: eor1  c,$1211,00
982B: eor   a,$43
982D: set1  $0E
982F: mov   a,y
9830: mov1  $1E8A,05,c
9833: brk
9834: tcall 15
9835: tcall 2
9836: nop
9837: set1  $44
9839: bbc1  $8A,$986d
983C: brk
983D: mov   y,a
983E: mov1  c,$0FDE,07
9841: tcall 1
9842: beq   $97ce
9844: tcall 1
9845: clr0  $34
9847: eor   a,$21
9849: tcall 1
984A: mov   y,$8ABC
984D: mov   sp,x
984E: daa   a
984F: tcall 0
9850: tcall 2
9851: tcall 0
9852: tcall 2
9853: and   a,$54+x
9855: eor1  c,$1022,00
9858: dec   y
9859: mov   $CD,y
985B: sleep
985C: clr0  $00
985E: eor1  c,$1101,00
9861: and   a,$3332+x
9864: jmp   ($CCDC+x)
9867: eor1  c,$0FCC,07
986A: tcall 15
986B: bpl   $986d
986D: bbc0  $33,$98a4
9870: eor1  c,$0032,01
9873: mov   y,$BCDB
9876: pop   y
9877: tcall 0
9878: tcall 2
9879: eor1  c,$02FF,01
987C: bbc1  $33,$98c3
987F: bpl   $987f
9881: inc   $8A+x
9883: mov   sp,x
9884: pop   y
9885: set0  $00
9887: nop
9888: set0  $32
988A: and   a,$8A+x
988C: bbs2  $21,$989c
988F: inc   $CC+x
9891: mul   ya
9892: bpl   $98a3
9894: eor1  c,$0101,01
9897: bbc0  $45,$98cc
989A: set1  $0C
989C: mov   $8A+x,y
989E: inc   $EE+x
98A0: tcall 0
98A1: brk
98A2: tcall 1
98A3: bpl   $98b8
98A5: bbc2  $8A,$98dc
98A8: tcall 4
98A9: tset1 $BBDB
98AC: daa   a
98AD: tcall 15
98AE: nop
98AF: eor1  c,$0011,00
98B2: bbs1  $33,$98fa
98B5: clr1  $0F
98B7: mov   $8A,y
98B9: dec   a
98BA: daa   a
98BB: beq   $98be
98BD: bpl   $98b0
98BF: set1  $24
98C1: eor1  c,$1254,01
98C4: cmp   x,$ABCB
98C7: mov   a,y
98C8: set7  $20
98CA: eor1  c,$10F0,00
98CD: set0  $44
98CF: eor   a,$32
98D1: jmp   ($8ACA+x)
98D4: mov   sp,x
98D5: mov   a,y
98D6: clrv
98D7: nop
98D8: tcall 0
98D9: bpl   $98ed
98DB: bbc1  $8A,$9923
98DE: eor   a,$1E
98E0: mov   $CDCB,y
98E3: beq   $98e5
98E5: eor1  c,$0011,00
98E8: set0  $44
98EA: eor   a,$53
98EC: jmp   ($8ADC+x)
98EF: movw  ya,$CE
98F1: clrv
98F2: tcall 1
98F3: beq   $98f6
98F5: clr0  $13
98F7: eor1  c,$1355,02
98FA: jmp   ($BBDC+x)
98FD: mov   x,#$FF
98FF: nop
9900: eor1  c,$1100,00
9903: nop
9904: bbc0  $46,$994a
9907: clrp
9908: dec   y
9909: eor1  c,$0DBB,06
990C: clrv
990D: nop
990E: nop
990F: nop
9910: nop
9911: bbs1  $8A,$9958
9914: eor   a,$DC30
9917: mov   $F0BC,y
991A: stop
991B: eor1  c,$0001,00
991E: beq   $9933
9920: eor   a,$3154
9923: mov   y,$BC8A
9926: mov   sp,x
9927: sleep
9928: beq   $993a
992A: brk
992B: nop
992C: clr0  $8A
992E: eor   a,$2165
9931: mov   y,a
9932: mov   $BD,y
9934: pop   y
9935: tcall 15
9936: eor1  c,$1F11,07
9939: beq   $994e
993B: eor   a,$55
993D: tcall 4
993E: mov   y,a
993F: eor1  c,$0DBB,06
9942: pop   y
9943: beq   $9945
9945: nop
9946: stop
9947: tcall 0
9948: eor1  c,$1346,02
994B: set2  $0C
994D: mov   $CECC,y
9950: tcall 0
9951: eor1  c,$1F00,07
9954: beq   $9958
9956: and   a,$56+x
9958: set2  $FD
995A: eor1  c,$0CDC,06
995D: mov   a,y
995E: tcall 15
995F: nop
9960: brk
9961: stop
9962: set0  $8A
9964: and   a,$66+x
9966: set2  $FE
9968: dec   y
9969: mov   $DF,y
996B: brk
996C: eor1  c,$0F01,00
996F: stop
9970: tcall 15
9971: and   a,$4365+x
9974: tset1 $ED8A
9977: inc   $DF+x
9979: beq   $997b
997B: nop
997C: stop
997D: tcall 15
997E: eor1  c,$1535,02
9981: eor   a,$1F
9983: mov   a,y
9984: inc   a
9985: cbne  $F0+x,$9912
9988: nop
9989: nop
998A: dbnz  y,$997d
998C: and   a,$4455+x
998F: bpl   $991b
9991: dec   y
9992: mov   $FFCE,y
9995: tcall 0
9996: nop
9997: dbnz  y,$9989
9999: eor1  c,$0544,02
999C: cmp   a,$2E
999E: notc
999F: mov   $CE,y
99A1: beq   $992d
99A3: nop
99A4: nop
99A5: mov   y,a
99A6: tcall 15
99A7: bbs1  $56,$99fe
99AA: clrp
99AB: eor1  c,$0CEC,06
99AE: cbne  $EF+x,$99a2
99B1: brk
99B2: sleep
99B3: beq   $993f
99B5: bbs1  $56,$9a0c
99B8: clrp
99B9: notc
99BA: mov   $EFCD,y
99BD: eor1  c,$1F11,07
99C0: dbnz  y,$99b2
99C2: bbs1  $45,$9a19
99C5: tcall 3
99C6: eor1  c,$1CEC,06
99C9: mov   x,#$EF
99CB: nop
99CC: brk
99CD: dbnz  y,$99bf
99CF: eor1  c,$0612,02
99D2: eor   a,$21+x
99D4: dbnz  y,$99a2
99D6: mov   x,#$E0
99D8: eor1  c,$0000,00
99DB: pop   y
99DC: beq   $99ef
99DE: eor   a,$3164
99E1: eor1  c,$0BFF,07
99E4: das   a
99E5: stop
99E6: nop
99E7: brk
99E8: dbnz  y,$99e9
99EA: eor1  c,$0502,02
99ED: eor   a,$33
99EF: cmp   x,$DDCC
99F2: daa   a
99F3: eor1  c,$00F0,00
99F6: dbnz  y,$99e7
99F8: clr7  $45
99FA: bbs2  $33,$9987
99FD: cmp   x,$CDDC
9A00: sleep
9A01: nop
9A02: stop
9A03: dbnz  y,$9a03
9A05: eor1  c,$04F2,02
9A08: eor   a,$42
9A0A: jmp   ($CDEC+x)
9A0D: pop   y
9A0E: eor1  c,$0F00,00
9A11: dbnz  y,$9a01
9A13: clr7  $44
9A15: and   a,$44+x
9A17: eor1  c,$0D1F,07
9A1A: mov   x,#$EE
9A1C: nop
9A1D: nop
9A1E: mov   y,a
9A1F: daa   a
9A20: eor1  c,$0401,01
9A23: eor   a,$43+x
9A25: clrp
9A26: notc
9A27: mov   x,#$EF
9A29: eor1  c,$00F0,00
9A2C: pop   y
9A2D: daa   a
9A2E: tcall 15
9A2F: and   a,$54
9A31: eor   a,$7A
9A33: tclr1 $A9DC
9A36: pop   a
9A37: nop
9A38: tset1 $CCDC
9A3B: eor1  c,$03F1,01
9A3E: eor   a,$2143
9A41: dbnz  y,$9a20
9A43: cbne  $8A+x,$9a47
9A46: stop
9A47: stop
9A48: pop   y
9A49: clrv
9A4A: bbs1  $45,$9aa0
9A4D: addw  ya,$52
9A4F: inc   y
9A50: sbc   ($FF),($BD)
9A53: jmp   ($BCEB+x)
9A56: eor1  c,$14FF,00
9A59: eor   a,$54
9A5B: tcall 2
9A5C: tset1 $DEDD
9A5F: eor1  c,$1F00,07
9A62: stop
9A63: cbne  $E0+x,$9a69
9A66: eor   a,$45
9A68: addw  ya,$63
9A6A: inc   y
9A6B: sbc   ($E0),($BC)
9A6E: brk
9A6F: notc
9A70: mov   $8A,y
9A72: sleep
9A73: set0  $45
9A75: eor   a,$43
9A77: tset1 $DEDD
9A7A: eor1  c,$00E0,00
9A7D: stop
9A7E: notc
9A7F: daa   a
9A80: bbc0  $34,$9ac8
9A83: addw  ya,$75
9A85: tset1 $ACA9
9A88: daa   a
9A89: stop
9A8A: pop   y
9A8B: movw  $8A,ya
9A8D: daa   a
9A8E: tcall 1
9A8F: and   a,$54+x
9A91: clr1  $10
9A93: dec   y
9A94: cbne  $8A+x,$9a96
9A97: nop
9A98: stop
9A99: notc
9A9A: sleep
9A9B: tcall 15
9A9C: and   a,$45+x
9A9E: eor1  c,$1F52,00
9AA1: notc
9AA2: cbne  $EF+x,$9aa5
9AA5: stop
9AA6: pop   y
9AA7: eor1  c,$11EE,07
9AAA: bbs1  $55,$9af0
9AAD: jmp   ($DDEE+x)
9AB0: eor1  c,$10E0,07
9AB3: stop
9AB4: pop   y
9AB5: pop   y
9AB6: beq   $9adc
9AB8: eor   a,$8A+x
9ABA: bbs2  $10,$9abb
9ABD: mov   x,#$F0
9ABF: stop
9AC0: nop
9AC1: notc
9AC2: eor1  c,$11EE,07
9AC5: set1  $45
9AC7: bbc2  $20,$9ac8
9ACA: mov   a,y
9ACB: eor1  c,$00EF,00
9ACE: brk
9ACF: pop   y
9AD0: cbne  $F0+x,$9ae6
9AD3: eor   a,$8A+x
9AD5: bbs2  $20,$9ad6
9AD8: notc
9AD9: sleep
9ADA: brk
9ADB: brk
9ADC: pop   y
9ADD: eor1  c,$0FED,07
9AE0: bbc0  $45,$9b27
9AE3: tcall 1
9AE4: dbnz  y,$9ac4
9AE6: eor1  c,$00EF,00
9AE9: stop
9AEA: pop   y
9AEB: notc
9AEC: clrv
9AED: clr0  $44
9AEF: eor1  c,$1144,01
9AF2: dbnz  y,$9ad2
9AF4: stop
9AF5: nop
9AF6: stop
9AF7: dbnz  y,$9a83
9AF9: mov   a,y
9AFA: clrv
9AFB: clr0  $35
9AFD: eor   a,$21
9AFF: brk
9B00: mov   a,y
9B01: eor1  c,$10F0,07
9B04: brk
9B05: dbnz  y,$9ae4
9B07: stop
9B08: set0  $34
9B0A: eor1  c,$0154,01
9B0D: brk
9B0E: pop   y
9B0F: stop
9B10: beq   $9b21
9B12: dbnz  y,$9a9e
9B14: notc
9B15: cbne  $12+x,$9b4c
9B18: eor   a,$32
9B1A: tset1 $8AEE
9B1D: stop
9B1E: brk
9B1F: brk
9B20: dbnz  y,$9b0f
9B22: cbne  $02+x,$9b59
9B25: eor1  c,$1154,01
9B28: brk
9B29: pop   y
9B2A: stop
9B2B: beq   $9b3d
9B2D: notc
9B2E: eor1  c,$0EEE,07
9B31: tcall 15
9B32: and   a,$44+x
9B34: tcall 4
9B35: brk
9B36: dbnz  y,$9ac2
9B38: sleep
9B39: nop
9B3A: nop
9B3B: dbnz  y,$9b1a
9B3D: daa   a
9B3E: nop
9B3F: and   a,$8A
9B41: eor   a,$32
9B43: nop
9B44: dbnz  y,$9b45
9B46: stop
9B47: nop
9B48: tset1 $DD8A
9B4B: notc
9B4C: tcall 15
9B4D: bbs1  $54,$9b82
9B50: bpl   $9b40
9B52: eor1  c,$10FF,07
9B55: brk
9B56: stop
9B57: notc
9B58: mov   a,y
9B59: tcall 14
9B5A: and   a,$8A
9B5C: eor   a,$32
9B5E: bpl   $9b5f
9B60: sleep
9B61: stop
9B62: nop
9B63: dbnz  y,$9aef
9B65: pop   y
9B66: mov   a,y
9B67: beq   $9b8c
9B69: eor   a,$43
9B6B: nop
9B6C: stop
9B6D: addw  ya,$DF
9B6F: sleep
9B70: nop
9B71: notc
9B72: mov   $C1AB,y
9B75: eor   a,(x)
9B76: eor1  c,$0244,02
9B79: bpl   $9b8a
9B7B: stop
9B7C: beq   $9b7e
9B7E: stop
9B7F: eor1  c,$1DEE,06
9B82: clrv
9B83: bbs1  $44,$9bb8
9B86: tcall 2
9B87: stop
9B88: addw  ya,$DE
9B8A: clrv
9B8B: nop
9B8C: dbnz  y,$9b58
9B8E: dec   $DF+x
9B90: and   a,$438A+x
9B93: bbc1  $21,$9b95
9B96: sleep
9B97: nop
9B98: nop
9B99: stop
9B9A: eor1  c,$0DEE,06
9B9D: clrv
9B9E: clr0  $34
9BA0: bbs2  $11,$9ba2
9BA3: addw  ya,$E0
9BA5: sleep
9BA6: nop
9BA7: dbnz  y,$9b85
9BA9: sbc   ($24),($BF)
9BAC: addw  ya,$67
9BAE: cmp   a,$0F51+x
9BB1: notc
9BB2: beq   $9bb4
9BB4: brk
9BB5: eor1  c,$0DFD,06
9BB8: sleep
9BB9: clr0  $23
9BBB: bbs2  $21,$9bbe
9BBE: addw  ya,$FD
9BC0: clrv
9BC1: nop
9BC2: brk
9BC3: mov   $AA+x,y
9BC5: mov   sp,x
9BC6: bbs0  $7A,$9c20
9BC9: cmp   a,$2F43+x
9BCC: pop   y
9BCD: sleep
9BCE: tcall 0
9BCF: nop
9BD0: addw  ya,$EA
9BD2: subw  ya,$DD
9BD4: set7  $57
9BD6: cmp   a,(x)
9BD7: bbs2  $10,$9c54
9BDA: dbnz  y,$9bcb
9BDC: tcall 0
9BDD: bpl   $9bb9
9BDF: inc   $AB+x
9BE1: bbc7  $7A,$9c29
9BE4: cmp   a,(x)
9BE5: bbc2  $10,$9be6
9BE8: stop
9BE9: tcall 0
9BEA: jmp   ($CC7A+x)
9BED: sbc   (x),(y)
9BEE: inc   $45F1
9BF1: eor   a,$1054+y
9BF4: addw  ya,$FF
9BF6: dbnz  y,$9c09
9BF8: brk
9BF9: mov   y,$AB
9BFB: inc   $7AE0
9BFE: and   a,$5366+x
9C01: tcall 2
9C02: mov   y,a
9C03: beq   $9c15
9C05: jmp   ($EC7A+x)
9C08: movw  ya,$AC
9C0A: bne   $9c40
9C0C: eor   a,$3163+y
9C0F: addw  ya,$FE
9C11: beq   $9c14
9C13: bpl   $9bf2
9C15: mov1  $009B,07,c
9C18: addw  ya,$25
9C1A: eor   a,$3145+x
9C1D: stop
9C1E: nop
9C1F: tcall 1
9C20: bpl   $9c9c
9C22: mov   y,$BABB
9C25: di
9C26: bbc1  $56,$9c8e
9C29: bmi   $9ca5
9C2B: beq   $9c2d
9C2D: set0  $10
9C2F: notc
9C30: mov   $9A,y
9C32: daa   a
9C33: addw  ya,$23
9C35: eor   a,$4164+y
9C38: stop
9C39: nop
9C3A: tcall 1
9C3B: bpl   $9cb7
9C3D: mov   y,a
9C3E: mov1  $1EAA,06,c
9C41: bbc0  $56,$9ca8
9C44: tcall 3
9C45: addw  ya,$00
9C47: nop
9C48: set0  $00
9C4A: tset1 $ABBA
9C4D: pop   x
9C4E: addw  ya,$02
9C50: eor   a,($63)+y
9C52: clr1  $0F
9C54: tcall 0
9C55: nop
9C56: clr0  $7A
9C58: mov   y,a
9C59: mov   $BA,y
9C5B: mov   x,#$02
9C5D: eor   a,$3165
9C60: addw  ya,$00
9C62: nop
9C63: tcall 1
9C64: bpl   $9c64
9C66: mov   $AB+x,y
9C68: mov   sp,x
9C69: addw  ya,$F3
9C6B: eor   a,$2154
9C6E: tcall 2
9C6F: beq   $9c82
9C71: tcall 0
9C72: addw  ya,$0E
9C74: dec   y
9C75: movw  ya,$BD
9C77: tcall 0
9C78: and   a,$3254+x
9C7B: addw  ya,$10
9C7D: nop
9C7E: clr0  $11
9C80: tset1 $CADD
9C83: inc   a
9C84: addw  ya,$E1
9C86: eor   a,$3244
9C89: tcall 1
9C8A: tcall 0
9C8B: clr0  $11
9C8D: addw  ya,$FF
9C8F: mov   y,$BCBB
9C92: clrv
9C93: and   a,$3344+x
9C96: addw  ya,$10
9C98: tcall 15
9C99: tcall 2
9C9A: tcall 1
9C9B: brk
9C9C: notc
9C9D: movw  ya,$AC
9C9F: addw  ya,$F1
9CA1: bbs1  $44,$9cd6
9CA4: bpl   $9ca7
9CA6: clr0  $11
9CA8: addw  ya,$00
9CAA: mov   y,$ABCB
9CAD: clrv
9CAE: bbs1  $44,$9ce3
9CB1: addw  ya,$10
9CB3: tcall 1
9CB4: tcall 1
9CB5: tcall 1
9CB6: bpl   $9cb5
9CB8: movw  ya,$BC
9CBA: addw  ya,$EF
9CBC: bbc0  $44,$9ce1
9CBF: tcall 2
9CC0: nop
9CC1: set1  $11
9CC3: addw  ya,$20
9CC5: mov   y,a
9CC6: mov1  $1FBC,06,c
9CC9: bbc0  $34,$9cfe
9CCC: addw  ya,$11
9CCE: tcall 1
9CCF: clr0  $21
9CD1: tcall 1
9CD2: mov   y,a
9CD3: mov   $BC,y
9CD5: addw  ya,$DF
9CD7: clr0  $33
9CD9: clr1  $21
9CDB: bpl   $9cfe
9CDD: tcall 2
9CDE: addw  ya,$21
9CE0: push  psw
9CE1: mov   $CC,y
9CE3: mov   x,#$02
9CE5: eor   a,$22
9CE7: addw  ya,$21
9CE9: tcall 0
9CEA: tcall 2
9CEB: clr0  $31
9CED: push  psw
9CEE: mov   $7ACA,y
9CF1: mov   a,(x)+
9CF2: set0  $23
9CF4: clr1  $21
9CF6: tcall 1
9CF7: tcall 1
9CF8: bbs1  $7A,$9d1c
9CFB: dbnz  y,$9cd8
9CFD: inc   $CE+x
9CFF: tcall 0
9D00: bbs1  $33,$9d7d
9D03: tcall 2
9D04: tcall 0
9D05: clr0  $13
9D07: tcall 2
9D08: tset1 $BBDC
9D0B: addw  ya,$CD
9D0D: clr7  $32
9D0F: bbs1  $21,$9d23
9D12: clr0  $22
9D14: addw  ya,$21
9D16: brk
9D17: mov   y,$CDBB
9D1A: tcall 15
9D1B: clr1  $23
9D1D: addw  ya,$31
9D1F: nop
9D20: clr0  $32
9D22: set1  $0E
9D24: notc
9D25: inc   $7A+x
9D27: mov   x,#$F0
9D29: set1  $33
9D2B: tcall 2
9D2C: tcall 0
9D2D: clr0  $12
9D2F: addw  ya,$32
9D31: brk
9D32: notc
9D33: inc   a
9D34: mov   x,#$E0
9D36: clr0  $23
9D38: addw  ya,$31
9D3A: tcall 0
9D3B: tcall 1
9D3C: bbs1  $21,$9d40
9D3F: mov   y,$7ABC
9D42: mov   x,#$E0
9D44: clr0  $23
9D46: tcall 2
9D47: nop
9D48: clr0  $22
9D4A: addw  ya,$12
9D4C: bpl   $9d4b
9D4E: inc   a
9D4F: mov   x,#$EF
9D51: set0  $32
9D53: addw  ya,$21
9D55: bpl   $9d58
9D57: bbc1  $21,$9d6a
9D5A: mov   y,a
9D5B: mov   $CD7A,y
9D5E: sleep
9D5F: set0  $32
9D61: tcall 1
9D62: tcall 1
9D63: bpl   $9d87
9D65: addw  ya,$22
9D67: tcall 2
9D68: mov   y,a
9D69: mov   x,#$CD
9D6B: daa   a
9D6C: tcall 0
9D6D: bbs1  $7A,$9d91
9D70: tcall 0
9D71: tcall 1
9D72: set0  $33
9D74: bpl   $9d75
9D76: dec   y
9D77: addw  ya,$CD
9D79: cbne  $01+x,$9dae
9D7C: bpl   $9d8f
9D7E: tcall 0
9D7F: clr0  $7A
9D81: bbc1  $10,$9d83
9D84: mov   y,$DECC
9D87: tcall 0
9D88: set1  $6A
9D8A: tcall 3
9D8B: bpl   $9d9e
9D8D: and   a,$55+x
9D8F: tcall 4
9D90: tset1 $7AB9
9D93: mov   $02CE,y
9D96: set1  $01
9D98: tcall 1
9D99: beq   $9dbe
9D9B: addw  ya,$21
9D9D: tcall 3
9D9E: brk
9D9F: notc
9DA0: dec   y
9DA1: das   a
9DA2: set0  $21
9DA4: and1  c,!($1F22,00)
9DA7: tcall 1
9DA8: and   a,$54+x
9DAA: bbs2  $1E,$9d88
9DAD: addw  ya,$CC
9DAF: pop   x
9DB0: tcall 0
9DB1: clr0  $21
9DB3: beq   $9db6
9DB5: clr0  $7A
9DB7: set1  $31
9DB9: bpl   $9db8
9DBB: mov   $F0DE,y
9DBE: clr0  $6A
9DC0: clr1  $0F
9DC2: tcall 0
9DC3: bbc1  $54,$9e0a
9DC6: tcall 4
9DC7: movw  $7A,ya
9DC9: mov   $F0DE,y
9DCC: clr0  $11
9DCE: nop
9DCF: tcall 15
9DD0: clr0  $7A
9DD2: set1  $23
9DD4: clrp
9DD5: dbnz  y,$9db2
9DD7: cbne  $E0+x,$9dec
9DDA: and1  c,!($1012,07)
9DDD: set0  $23
9DDF: eor   a,$45
9DE1: clr2  $EB
9DE3: addw  ya,$DC
9DE5: mov   x,#$F1
9DE7: bpl   $9dfa
9DE9: brk
9DEA: tcall 0
9DEB: tcall 2
9DEC: addw  ya,$12
9DEE: clr1  $31
9DF0: push  psw
9DF1: dec   y
9DF2: mov   a,y
9DF3: clrv
9DF4: tcall 0
9DF5: and1  c,!($0022,00)
9DF8: tcall 0
9DF9: tcall 2
9DFA: and   a,$66
9DFC: bbc2  $FC,$9e79
9DFF: dec   y
9E00: mov   x,#$E0
9E02: tcall 1
9E03: nop
9E04: tcall 0
9E05: bpl   $9e07
9E07: addw  ya,$13
9E09: clr1  $22
9E0B: brk
9E0C: dec   y
9E0D: mov   x,#$E0
9E0F: bpl   $9e7b
9E11: tcall 0
9E12: bpl   $9e25
9E14: tcall 0
9E15: or    a,$66+x
9E17: bbc2  $1E,$9e94
9E1A: dec   y
9E1B: pop   x
9E1C: clrv
9E1D: nop
9E1E: tcall 0
9E1F: bpl   $9e21
9E21: nop
9E22: and1  c,!($0644,02)
9E25: eor   a,$1E+x
9E27: movw  ya,$9A
9E29: daa   a
9E2A: bpl   $9e96
9E2C: nop
9E2D: tcall 1
9E2E: bpl   $9e31
9E30: bbc0  $57,$9e98
9E33: cmp   x,$B96A
9E36: inc   $DF
9E38: nop
9E39: nop
9E3A: clr0  $10
9E3C: beq   $9ea8
9E3E: bbc0  $56,$9eb6
9E41: cbne  $C9,$9ddf
9E44: clrv
9E45: stop
9E46: addw  ya,$00
9E48: tcall 0
9E49: bpl   $9e4b
9E4B: tcall 15
9E4C: bbc1  $33,$9e7e
9E4F: and1  c,!($1CB9,05)
9E52: pop   y
9E53: stop
9E54: beq   $9e67
9E56: bpl   $9e67
9E58: and1  c,!($0502,02)
9E5B: cmp   a,(x)
9E5C: tcall 3
9E5D: movw  $BC,ya
9E5F: mov   x,#$FF
9E61: and1  c,!($02F0,00)
9E64: nop
9E65: beq   $9e68
9E67: eor   a,(x)
9E68: cmp   a,$6A30+x
9E6B: dec   y
9E6C: inc   a
9E6D: mov   x,#$FF
9E6F: stop
9E70: set1  $0F
9E72: nop
9E73: and1  c,!($16F1,01)
9E76: cmp   a,$DC30+y
9E79: mov   x,#$DE
9E7B: sleep
9E7C: addw  ya,$F0
9E7E: tcall 1
9E7F: nop
9E80: stop
9E81: beq   $9ea7
9E83: bbs2  $10,$9ef0
9E86: mov   a,y
9E87: pop   x
9E88: cbne  $DD+x,$9e6b
9E8B: set1  $10
9E8D: mov   y,a
9E8E: and1  c,!($06D0,02)
9E91: cmp   a,(x)
9E92: tcall 5
9E93: dec   y
9E94: mov   x,#$EE
9E96: cbne  $6A+x,$9e79
9E99: set0  $11
9E9B: notc
9E9C: bne   $9ed4
9E9E: cmp   a,(x)
9E9F: tcall 4
9EA0: cmpw  ya,$BA
9EA2: inc   $AA
9EA4: inc   a
9EA5: di
9EA6: clr0  $3F
9EA8: sbc   (x),(y)
9EA9: and1  c,!($04F1,01)
9EAC: cmp   a,(x)
9EAD: tcall 5
9EAE: notc
9EAF: notc
9EB0: cbne  $EE+x,$9f1d
9EB3: sleep
9EB4: clr0  $0E
9EB6: pop   y
9EB7: clrv
9EB8: and   a,$3166
9EBB: cmpw  ya,$0E
9EBD: mov1  $1ACA,04,c
9EC0: mul   ya
9EC1: bbc1  $1E,$9e8e
9EC4: and1  c,!($06DF,01)
9EC7: cmp   a,(x)
9EC8: clr1  $F0
9ECA: dbnz  y,$9eb9
9ECC: mov   $E06A,y
9ECF: clr0  $1F
9ED1: mov   y,$25DF
9ED4: cmp   a,(x)
9ED5: clr1  $6A
9ED7: bpl   $9ed8
9ED9: dec   y
9EDA: mov   sp,x
9EDB: beq   $9ede
9EDD: bpl   $9ebc
9EDF: and1  c,!($15DF,00)
9EE2: cmp   a,$1F43
9EE5: brk
9EE6: mov   $CC+x,y
9EE8: and1  c,!($11F0,00)
9EEB: bpl   $9ec9
9EED: clrv
9EEE: bbc0  $55,$9f33
9EF1: and1  c,!($1F11,00)
9EF4: mov   $BE+x,y
9EF6: beq   $9ef9
9EF8: brk
9EF9: mov   a,y
9EFA: and1  c,!($13EF,00)
9EFD: eor   a,$2242+y
9F00: brk
9F01: mov   $6ACE,y
9F04: stop
9F05: set0  $1E
9F07: mov   a,y
9F08: sleep
9F09: or    a,$54+x
9F0B: eor   a,$6A
9F0D: tcall 2
9F0E: brk
9F0F: dec   y
9F10: pop   x
9F11: beq   $9f24
9F13: bpl   $9f01
9F15: and1  c,!($13CF,00)
9F18: eor   a,$4234
9F1B: brk
9F1C: notc
9F1D: mov   sp,x
9F1E: and1  c,!($11F1,00)
9F21: bpl   $9efe
9F23: mul   ya
9F24: bbc0  $44,$9f6b
9F27: and1  c,!($0042,01)
9F2A: mov   y,$CD
9F2C: beq   $9f31
9F2E: bra   $9efc
9F30: and1  c,!($13CF,00)
9F33: and   a,$2542+x
9F36: call  $EBDE
9F39: and1  c,!($04C0,01)
9F3C: clrp
9F3D: mov   $CE,y
9F3F: set0  $54
9F41: bbc0  $6A,$9f87
9F44: tcall 1
9F45: tset1 $E0BB
9F48: and   a,$30
9F4A: mov1  $0C6A,05,c
9F4D: bbs7  $43,$9f86
9F50: bbc2  $10,$9f61
9F53: mov   $6A,y
9F55: tcall 13
9F56: eor   a,$0D
9F58: inc   $CF+x
9F5A: beq   $9f81
9F5C: eor   a,$6A
9F5E: eor   a,$FD31
9F61: inc   $E3+x
9F63: clr1  $00
9F65: inc   a
9F66: and1  c,!($01DE,07)
9F69: nop
9F6A: and   a,$3265
9F6D: tset1 $6AAD
9F70: tcall 14
9F71: set1  $0F
9F73: dec   y
9F74: dec   y
9F75: clrv
9F76: set1  $33
9F78: and1  c,!($1345,02)
9F7B: push  psw
9F7C: inc   $E0+x
9F7E: clr1  $1E
9F80: mov   y,$6A
9F82: mov   sp,x
9F83: nop
9F84: set0  $33
9F86: eor   a,$0C53
9F89: mov1  c,$026A,07
9F8C: tcall 3
9F8D: nop
9F8E: mov   $D0+x,y
9F90: stop
9F91: tcall 2
9F92: bbc0  $6A,$9fda
9F95: bbc2  $EC,$9f54
9F98: clrv
9F99: and   a,$2F
9F9B: mov   a,y
9F9C: and1  c,!($00CD,00)
9F9F: nop
9FA0: bbs0  $45,$9ff7
9FA3: mov   y,$BC+x
9FA5: and1  c,!($14D0,01)
9FA8: bpl   $9f97
9FAA: mov   a,y
9FAB: daa   a
9FAC: tcall 0
9FAD: clr0  $7A
9FAF: and   a,$31
9FB1: dbnz  y,$9f91
9FB3: beq   $9fc7
9FB5: tcall 1
9FB6: stop
9FB7: and1  c,!($0EDD,06)
9FBA: nop
9FBB: bbs0  $56,$a001
9FBE: asl   $6ACD
9FC1: stop
9FC2: bbc0  $30,$9fc3
9FC5: notc
9FC6: cbne  $FF+x,$9fcc
9FC9: and1  c,!($0356,03)
9FCC: push  psw
9FCD: dec   y
9FCE: daa   a
9FCF: bbs1  $21,$9fe0
9FD2: and1  c,!($0DCD,07)
9FD5: daa   a
9FD6: bbc0  $57,$a03c
9FD9: tset1 $5ABC
9FDC: tcall 13
9FDD: bbs1  $53,$9fdc
9FE0: inc   a
9FE1: movw  ya,$AD
9FE3: or    a,$556A+y
9FE6: eor   a,$CD2D+x
9FE9: pop   y
9FEA: or    a,$3F+x
9FEC: stop
9FED: and1  c,!($1CFD,06)
9FF0: pop   x
9FF1: clr0  $47
9FF3: bbs3  $20,$9fd2
9FF6: and1  c,!($02CF,01)
9FF9: bpl   $a01a
9FFB: dbnz  y,$9fd8
9FFD: pop   x
9FFE: clr7  $6A
A000: eor   a,(x)
A001: eor   a,$20+x
A003: mov   y,$11DF
A006: tcall 2
A007: brk
A008: and1  c,!($0CFD,06)
A00B: mov   a,y
A00C: tcall 14
A00D: eor   a,$2F55+y
A010: mov   a,y
A011: and1  c,!($12E0,00)
A014: tcall 0
A015: bpl   $a015
A017: dec   y
A018: inc   a
A019: clr7  $6A
A01B: and   a,$2154+y
A01E: notc
A01F: tcall 15
A020: beq   $a033
A022: bpl   $a08e
A024: brk
A025: mov   $AD+x,y
A027: clr7  $46
A029: cmp   a,$20
A02B: notc
A02C: and1  c,!($0FFF,00)
A02F: clr0  $11
A031: bpl   $9fff
A033: inc   a
A034: bne   $a0a0
A036: and   a,$1F75+y
A039: stop
A03A: pop   y
A03B: tcall 0
A03C: tcall 1
A03D: tcall 2
A03E: and1  c,!($0C0E,07)
A041: inc   $E0
A043: and   a,$2064
A046: tset1 $EF6A
A049: nop
A04A: tcall 0
A04B: tcall 2
A04C: jmp   ($BBDB+x)
A04F: bne   $a0bb
A051: and   a,$43+x
A053: bbc1  $0F,$a044
A056: beq   $a05a
A058: set1  $6A
A05A: jmp   ($A9DC+x)
A05D: tcall 13
A05E: eor   a,$44
A060: tcall 2
A061: bpl   $a0cd
A063: stop
A064: stop
A065: clr0  $22
A067: bpl   $a054
A069: mov1  c,$0AEF,03
A06C: bbs1  $44,$a0b0
A06F: tcall 1
A070: brk
A071: beq   $a074
A073: clr0  $6A
A075: clr2  $B9
A077: inc   $DF
A079: and   a,$2254
A07C: bpl   $a0e8
A07E: brk
A07F: stop
A080: tcall 0
A081: bbs1  $30,$a05f
A084: inc   $CE+x
A086: and1  c,!($0314,02)
A089: set1  $30
A08B: stop
A08C: beq   $a08e
A08E: and   a,$6A
A090: bmi   $a06d
A092: mov1  c,$03DF,01
A095: clr1  $23
A097: tcall 2
A098: and1  c,!($1D01,07)
A09B: tcall 15
A09C: bbs1  $41,$a07a
A09F: inc   a
A0A0: pop   x
A0A1: and1  c,!($0402,01)
A0A4: bbc1  $11,$a0c6
A0A7: pop   y
A0A8: nop
A0A9: bbc1  $6A,$a0dd
A0AC: inc   y
A0AD: mov1  c,$01CE,00
A0B0: bbc1  $31,$a0d5
A0B3: and1  c,!($1F1F,07)
A0B6: beq   $a0db
A0B8: clr1  $FB
A0BA: inc   $BC+x
A0BC: cmpw  ya,$F3
A0BE: cmp   a,$6546+y
A0C1: dec   x
A0C2: mov   x,#$02
A0C4: eor   a,(x)
A0C5: and1  c,!($1C31,07)
A0C8: inc   a
A0C9: mov   x,#$F1
A0CB: bbs1  $33,$a111
A0CE: and1  c,!($0E1E,07)
A0D1: tcall 15
A0D2: and   a,$32
A0D4: mov   y,a
A0D5: inc   $CD+x
A0D7: and1  c,!($02F1,01)
A0DA: and   a,$34
A0DC: jmp   ($F1DE+x)
A0DF: and   a,$6A
A0E1: clr1  $FD
A0E3: inc   $CE+x
A0E5: beq   $a0f9
A0E7: set1  $43
A0E9: and1  c,!($0E10,07)
A0EC: tcall 15
A0ED: bbs1  $32,$a0fc
A0F0: inc   a
A0F1: pop   x
A0F2: cmpw  ya,$E1
A0F4: clr7  $46
A0F6: cmp   a,$CD20+y
A0F9: tcall 14
A0FA: eor   a,(x)
A0FB: and1  c,!($1D31,07)
A0FE: dec   y
A0FF: mov   a,y
A100: stop
A101: beq   $a126
A103: bbc1  $6A,$a135
A106: pop   y
A107: tcall 0
A108: bbs1  $32,$a109
A10B: mov   a,y
A10C: mov   a,y
A10D: cmpw  ya,$AD
A10F: tcall 13
A110: eor   a,$3F74+y
A113: pop   y
A114: clrv
A115: eor   a,(x)
A116: cmpw  ya,$74
A118: inc   y
A119: mov1  c,$1B9A,05
A11C: clrv
A11D: and   a,$6A66+y
A120: clrp
A121: pop   y
A122: tcall 15
A123: and   a,$32+x
A125: brk
A126: mov   $6AED,y
A129: mov   a,y
A12A: beq   $a12e
A12C: eor   a,$20
A12E: sleep
A12F: beq   $a166
A131: and1  c,!($0E32,00)
A134: pop   y
A135: mov   $FFBD,y
A138: bbc0  $33,$a1a5
A13B: tcall 3
A13C: dbnz  y,$a12f
A13E: and   a,$FF31+x
A141: pop   y
A142: mov   a,y
A143: and1  c,!($1FCD,06)
A146: bbc0  $33,$a179
A149: stop
A14A: tcall 0
A14B: and   a,$6A+x
A14D: tcall 3
A14E: nop
A14F: mov   y,a
A150: dec   y
A151: mov   a,y
A152: daa   a
A153: clr0  $34
A155: and1  c,!($1F20,07)
A158: clr0  $33
A15A: tcall 3
A15B: jmp   ($DCFE+x)
A15E: and1  c,!($0FCC,07)
A161: set0  $33
A163: tcall 2
A164: brk
A165: bbc0  $22,$a1d2
A168: set1  $10
A16A: tset1 $CDDC
A16D: mul   ya
A16E: clr0  $33
A170: cmpw  ya,$40
A172: beq   $a198
A174: eor   a,$0242+x
A177: cmp   x,$6ADA
A17A: inc   a
A17B: cbne  $01+x,$a1b1
A17E: clrp
A17F: nop
A180: clr0  $32
A182: and1  c,!($1011,00)
A185: nop
A186: notc
A187: dec   y
A188: inc   a
A189: bbs0  $32,$a1e6
A18C: tcall 5
A18D: brk
A18E: or    a,$43
A190: bbs2  $11,$a191
A193: mov   y,$CC6A
A196: mov   a,y
A197: tcall 15
A198: clr1  $21
A19A: brk
A19B: nop
A19C: set1  $6A
A19E: set1  $21
A1A0: jmp   ($CAFF+x)
A1A3: mov   sp,x
A1A4: tcall 15
A1A5: bbc1  $5A,$a1e8
A1A8: jmp   ($3403+x)
A1AB: clr1  $13
A1AD: set1  $1A
A1AF: and1  c,!($0CCB,05)
A1B2: clr7  $33
A1B4: clrp
A1B5: clr7  $2F
A1B7: tcall 0
A1B8: and1  c,!($1121,00)
A1BB: set1  $0E
A1BD: movw  ya,$BD
A1BF: tcall 0
A1C0: set1  $5A
A1C2: bra   $a1d5
A1C4: tcall 1
A1C5: bbs2  $21,$a1eb
A1C8: eor   a,$2B
A1CA: and1  c,!($0DB9,05)
A1CD: set0  $22
A1CF: bpl   $a1d1
A1D1: clr0  $21
A1D3: addw  ya,$00
A1D5: tcall 1
A1D6: tcall 1
A1D7: jmp   ($DEEC+x)
A1DA: tcall 0
A1DB: tcall 1
A1DC: and1  c,!($1110,07)
A1DF: tcall 2
A1E0: tcall 1
A1E1: jmp   ($43F2+x)
A1E4: tset1 $CA6A
A1E7: mov   sp,x
A1E8: tcall 15
A1E9: set1  $11
A1EB: jmp   ($2200+x)
A1EE: and1  c,!($020F,00)
A1F1: eor   a,$2E
A1F3: inc   $AD+x
A1F5: tcall 15
A1F6: tcall 2
A1F7: and1  c,!($0000,00)
A1FA: tcall 0
A1FB: tcall 2
A1FC: stop
A1FD: and   a,$55
A1FF: cmp   x,$B96A
A202: cmp   y,#$00
A204: bpl   $a216
A206: bpl   $a22a
A208: bra   $a274
A20A: stop
A20B: or    a,$1F55+x
A20E: mov1  $0FAE,07,c
A211: set0  $6A
A213: bra   $a205
A215: bbc1  $1E,$a208
A218: and   a,$65
A21A: bra   $a286
A21C: movw  ya,$BC
A21E: clrv
A21F: tcall 1
A220: beq   $a213
A222: set1  $00
A224: and1  c,!($05F0,01)
A227: cmp   a,(x)
A228: cmp   x,$ACCA
A22B: beq   $a21d
A22D: addw  ya,$0F
A22F: tcall 0
A230: tcall 1
A231: brk
A232: tcall 15
A233: clr0  $33
A235: jmp   ($CB6A+x)
A238: dec   a
A239: clrv
A23A: brk
A23B: stop
A23C: bbs0  $31,$a24e
A23F: and1  c,!($05EF,01)
A242: cmp   a,$C92F+y
A245: inc   $FFF0
A248: and1  c,!($12F0,00)
A24B: set1  $EE
A24D: tcall 14
A24E: and   a,$4F56+x
A251: and1  c,!($0DCA,05)
A254: sleep
A255: stop
A256: nop
A257: bbc0  $31,$a247
A25A: and1  c,!($04F1,01)
A25D: cmp   a,$CC40
A260: mov   a,y
A261: pop   y
A262: pop   y
A263: and1  c,!($13E0,00)
A266: tcall 2
A267: dbnz  y,$a249
A269: and   a,$77+x
A26B: cmp   x,$6A
A26D: dec   y
A26E: mov   $EEEF,y
A271: beq   $a285
A273: set1  $FD
A275: addw  ya,$E0
A277: bbc0  $44,$a299
A27A: pop   y
A27B: daa   a
A27C: nop
A27D: dbnz  y,$a2f9
A27F: beq   $a292
A281: bpl   $a292
A283: clrv
A284: bbc0  $43,$a297
A287: and1  c,!($0DEB,06)
A28A: brk
A28B: notc
A28C: daa   a
A28D: bbs1  $22,$a28d
A290: and1  c,!($15C0,00)
A293: cmp   a,($42+x)
A295: mov   y,$DDDE
A298: cbne  $6A+x,$a29b
A29B: set0  $20
A29D: pop   y
A29E: sleep
A29F: and   a,$4166+x
A2A2: and1  c,!($1CEE,06)
A2A5: cbne  $FE+x,$a296
A2A8: and   a,$3F
A2AA: mov   y,a
A2AB: and1  c,!($06DF,01)
A2AE: cmp   a,(x)
A2AF: tcall 3
A2B0: notc
A2B1: pop   y
A2B2: stop
A2B3: notc
A2B4: addw  ya,$F0
A2B6: tcall 1
A2B7: tcall 1
A2B8: mov   y,a
A2B9: bne   $a2de
A2BB: bbs2  $10,$a328
A2BE: tset1 $FFDE
A2C1: mov   $D0+x,y
A2C3: and   a,$31+x
A2C5: mov   y,$6A
A2C7: das   a
A2C8: and   a,$4266
A2CB: mov   y,a
A2CC: daa   a
A2CD: dbnz  y,$a2ad
A2CF: and1  c,!($13DF,00)
A2D2: clr1  $EB
A2D4: pop   x
A2D5: and   a,$55
A2D7: tcall 6
A2D8: and1  c,!($1FEE,07)
A2DB: notc
A2DC: notc
A2DD: bne   $a302
A2DF: clrp
A2E0: dec   y
A2E1: and1  c,!($14DF,00)
A2E4: cmp   a,$FF32
A2E7: pop   y
A2E8: dbnz  y,$a2d8
A2EA: and1  c,!($13EF,00)
A2ED: bra   $a2bb
A2EF: sleep
A2F0: bbc0  $56,$a334
A2F3: and1  c,!($0FF0,00)
A2F6: pop   y
A2F7: mov   $23D0,y
A2FA: bra   $a2d9
A2FC: and1  c,!($04CE,00)
A2FF: cmp   a,(x)
A300: tcall 3
A301: nop
A302: nop
A303: mov   y,a
A304: mov   $D06A,y
A307: and   a,$1F
A309: dec   y
A30A: das   a
A30B: or    a,$3255+x
A30E: and1  c,!($1F11,00)
A311: notc
A312: inc   a
A313: clrv
A314: bbc0  $10,$a2f3
A317: and1  c,!($14CE,00)
A31A: eor   a,$1042+x
A31D: bpl   $a30b
A31F: mov   $6A,y
A321: clrv
A322: set1  $20
A324: mov   $DF+x,y
A326: bbc0  $44,$a35b
A329: and1  c,!($0F12,01)
A32C: mov   y,$E0CD
A32F: tcall 1
A330: jmp   ($6ADC+x)
A333: cbne  $13+x,$a38b
A336: clr1  $32
A338: brk
A339: dec   y
A33A: cbne  $6A+x,$a33c
A33D: clr0  $0F
A33F: dec   y
A340: bne   $a355
A342: bbs2  $34,$a3af
A345: set2  $FF
A347: mov   y,$00CE
A34A: tcall 1
A34B: clrp
A34C: mov   y,$BE6A
A34F: clr0  $45
A351: and   a,$32+x
A353: bpl   $a332
A355: mov   a,y
A356: and1  c,!($02F0,01)
A359: bra   $a326
A35B: pop   x
A35C: bbc0  $34,$a3a3
A35F: and1  c,!($0133,01)
A362: mov   y,$F0CC
A365: bbc0  $3F,$a333
A368: and1  c,!($12CF,00)
A36B: and   a,$42+x
A36D: and   a,$31
A36F: notc
A370: dec   y
A371: and1  c,!($13D0,01)
A374: clrp
A375: movw  $CE,ya
A377: tcall 0
A378: bbs2  $23,$a3e5
A37B: bbs2  $21,$a38c
A37E: mov   $E0,y
A380: bbc1  $2F,$a35e
A383: and1  c,!($12BC,07)
A386: set1  $46
A388: bbs2  $21,$a389
A38B: mov   $E16A,y
A38E: bbc1  $0D,$a36d
A391: mov   x,#$F0
A393: and   a,$44
A395: and1  c,!($1145,01)
A398: mov   y,a
A399: mov   $31E2,y
A39C: nop
A39D: mov   $6A+x,y
A39F: mov   a,y
A3A0: beq   $a3b3
A3A2: and   a,$55
A3A4: clr1  $0E
A3A6: mov   sp,x
A3A7: and1  c,!($03E0,01)
A3AA: brk
A3AB: dec   y
A3AC: mov   x,#$E0
A3AE: set1  $23
A3B0: and1  c,!($1345,02)
A3B3: push  psw
A3B4: inc   $E1+x
A3B6: bbs1  $0F,$a395
A3B9: and1  c,!($10BD,07)
A3BC: clr0  $22
A3BE: eor   a,(x)
A3BF: bbc2  $0C,$a36c
A3C2: and1  c,!($10F2,01)
A3C5: jmp   ($EEDC+x)
A3C8: clrv
A3C9: tcall 2
A3CA: or    a,$6A
A3CC: eor   a,$FC43
A3CF: inc   a
A3D0: beq   $a3f5
A3D2: bra   $a3b1
A3D4: and1  c,!($10DD,07)
A3D7: brk
A3D8: or    a,$45
A3DA: bbc2  $FC,$a3a9
A3DD: and1  c,!($14DF,01)
A3E0: clrp
A3E1: mov   y,$EEDD
A3E4: nop
A3E5: set1  $7A
A3E7: and   a,$31
A3E9: dbnz  y,$a3c9
A3EB: nop
A3EC: tcall 1
A3ED: bpl   $a3fe
A3EF: and1  c,!($0DED,06)
A3F2: nop
A3F3: bbs0  $65,$a439
A3F6: asl   $6ACE
A3F9: sleep
A3FA: or    a,$20+x
A3FC: brk
A3FD: mov   $EFEF,y
A400: bbs0  $6A,$a459
A403: bbs3  $0D,$a3e2
A406: daa   a
A407: clr1  $21
A409: tset1 $DD6A
A40C: mov   a,y
A40D: daa   a
A40E: bbc0  $57,$a473
A411: cmp   x,$5ACB
A414: tcall 13
A415: clr1  $53
A417: asl   $BABB
A41A: cmp   y,#$16
A41C: and1  c,!($1456,02)
A41F: cmp   x,$EFCD
A422: bbc0  $20,$a434
A425: and1  c,!($1DED,06)
A428: mov   x,#$13
A42A: and   a,$2F74+y
A42D: dec   y
A42E: and1  c,!($12DF,00)
A431: tcall 1
A432: jmp   ($DBEE+x)
A435: cbne  $E1+x,$a4a2
A438: eor   a,($53)+y
A43A: tcall 2
A43B: dec   y
A43C: bne   $a43f
A43E: set1  $0F
A440: and1  c,!($0CED,06)
A443: mov   a,y
A444: set7  $56
A446: eor   a,$CD20
A449: and1  c,!($01F0,00)
A44C: clr0  $10
A44E: pop   y
A44F: mov   a,y
A450: inc   $F2+x
A452: and1  c,!($1545,02)
A455: clrp
A456: pop   y
A457: tcall 14
A458: nop
A459: tcall 0
A45A: bpl   $a4c6
A45C: jmp   ($BDDA+x)
A45F: tcall 15
A460: eor   a,(x)
A461: cmp   a,$30
A463: cbne  $6A+x,$a465
A466: beq   $a479
A468: tcall 1
A469: bra   $a446
A46B: inc   a
A46C: clrv
A46D: and1  c,!($0536,03)
A470: bpl   $a471
A472: cbne  $02+x,$a486
A475: tcall 1
A476: and1  c,!($1C0F,06)
A479: inc   $D0+x
A47B: and   a,$2154+x
A47E: tset1 $DF6A
A481: nop
A482: set0  $21
A484: nop
A485: mov   $AB+x,y
A487: bne   $a4f4
A489: and   a,$53+x
A48B: clr1  $00
A48D: pop   y
A48E: clrv
A48F: set0  $32
A491: set0  $00
A493: nop
A494: nop
A495: nop
A496: nop
A497: nop
A498: nop
A499: nop
A49A: clr5  $75
A49C: rol   $EF
A49E: set0  $43
A4A0: tcall 3
A4A1: eor   a,(x)
A4A2: bbc7  $CA,$a4c0
A4A5: decw  $AF
A4A7: stop
A4A8: asl   $20
A4AA: clr2  $C1
A4AC: mov   (x),a
A4AD: bbc6  $F2,$a48d
A4B0: clrv
A4B1: or    a,$D652
A4B4: jmp   $42C2
A4B7: inc   x
A4B8: mov   a,y
A4B9: or    a,$66+x
A4BB: bbc2  $10,$a4d1
A4BE: sbc   a,$FE40+y
A4C1: not1  $0232,02
A4C4: rol   $DB
A4C6: eor   a,$0FCA
A4C9: inc   y
A4CA: or    a,$03
A4CC: tcall 12
A4CD: bbc6  $02,$a4ad
A4D0: set6  $22
A4D2: or1   c,$034C,07
A4D5: and   a,$35+x
A4D7: set3  $01
A4D9: mov   (x),a
A4DA: clrv
A4DB: bbs6  $52,$a4fb
A4DE: dbnz  y,$a4e0
A4E0: cmp   x,$CAEC
A4E3: tcall 2
A4E4: tcall 3
A4E5: dec   x
A4E6: mov   y,$0E+x
A4E8: not1  $0001,07
A4EB: mov1  $0E9A,01,c
A4EE: bbc5  $27,$a52b
A4F1: rol   $EB
A4F3: sbc   (x),(y)
A4F4: mov   (x),a
A4F5: cbne  $12+x,$a508
A4F8: set7  $01
A4FA: dbnz  y,$a518
A4FC: mov   $F4C6,y
A4FF: and   a,$71
A501: cbne  $D5+x,$a4f3
A504: dbnz  y,$a522
A506: mov   $24F2+y,a
A509: beq   $a4db
A50B: dbnz  y,$a50e
A50D: bpl   $a501
A50F: mov   (x),a
A510: push  x
A511: sleep
A512: sleep
A513: set6  $15
A515: tcall 3
A516: dbnz  y,$a515
A518: set6  $9C
A51A: mov   a,$FF31
A51D: set1  $32
A51F: jmp   ($B601+x)
A522: and   a,$30
A524: not1  $12FF,01
A527: bbs1  $11,$a4c5
A52A: mov   (x),a
A52B: tcall 12
A52C: tcall 3
A52D: bpl   $a560
A52F: sleep
A530: pop   y
A531: bbc7  $DF,$a4fa
A534: bbc6  $52,$a561
A537: jmp   ($01DE+x)
A53A: asl   a
A53B: and   a,$CA+x
A53D: bbc5  $F1,$a53c
A540: bra   $a5a1
A542: eor   a,$252F+y
A545: mov   (x),a
A546: mov   (x)+,a
A547: tcall 3
A548: rol   $EC+x
A54A: tcall 2
A54B: tcall 6
A54C: or1   c,$06E1,06
A54F: eor   a,$E0
A551: tcall 12
A552: clr7  $F0
A554: tcall 0
A555: tcall 0
A556: jmp   ($0FB6+x)
A559: brk
A55A: clr6  $1E
A55C: mov   y,$D060
A55F: mov   a,$C6+x
A561: tcall 0
A562: nop
A563: jmp   ($EFFF+x)
A566: sleep
A567: tcall 4
A568: lsr   $B6
A56A: clr7  $12
A56C: tcall 4
A56D: decw  $BC
A56F: clr7  $14
A571: eor   a,$C6
A573: cmp   x,$00FE
A576: beq   $a57c
A578: clr0  $CF
A57A: cmp   x,$B6
A57C: asl   $0015
A57F: clrv
A580: or    a,$32
A582: clrp
A583: pop   y
A584: clr5  $22
A586: dec   x
A587: stop
A588: cmp   a,$2F
A58A: cbne  $FF+x,$a5bf
A58D: mov   (x),a
A58E: mov   y,a
A58F: tcall 14
A590: and   a,$CFFF
A593: clr7  $01
A595: tcall 1
A596: set6  $21
A598: dec   x
A599: daa   a
A59A: beq   $a55a
A59C: beq   $a59e
A59E: brk
A59F: mov   (x),a
A5A0: bpl   $a5c0
A5A2: dbnz  y,$a5d6
A5A4: tcall 3
A5A5: dec   x
A5A6: mov   y,$22
A5A8: sbc   a,$B142+y
A5AB: mov   a,(x)
A5AC: cbne  $11+x,$a5fc
A5AF: mov   $F0+x,y
A5B1: clr5  $02
A5B3: brk
A5B4: di
A5B5: dbnz  y,$a60e
A5B7: cmp   y,#$C4
A5B9: rol   $B2+x
A5BB: pop   y
A5BC: inc   a
A5BD: tcall 11
A5BE: tcall 2
A5BF: tset1 $0EDD
A5C2: stop
A5C3: sbc   a,$A111+y
A5C6: bbc1  $3C,$a5e7
A5C9: bpl   $a5fa
A5CB: bbs0  $C6,$a5cd
A5CE: tcall 15
A5CF: setp
A5D0: cmp   x,$0F00
A5D3: stop
A5D4: tcall 15
A5D5: sbc   a,$EF25+y
A5D8: pop   y
A5D9: tcall 15
A5DA: or    a,$F0+x
A5DC: mul   ya
A5DD: tcall 1
A5DE: clr5  $27
A5E0: cmp   a,$B0DB
A5E3: cmp   a,$63
A5E5: bra   $a5c3
A5E7: sbc   a,$201D+y
A5EA: bpl   $a60b
A5EC: or1   c,$0312,02
A5EF: daa   a
A5F0: sbc   a,$14DF+y
A5F3: sleep
A5F4: pop   x
A5F5: bbc7  $23,$a5f7
A5F8: tcall 6
A5F9: set6  $40
A5FB: pop   y
A5FC: tcall 15
A5FD: tcall 1
A5FE: jmp   ($01EF+x)
A601: bbc1  $B6,$a5d4
A604: mov   a,$ED+x
A606: clrp
A607: rol   a
A608: mov   a,y
A609: or    a,$44
A60B: sbc   a,$D01F+y
A60E: clr7  $F0
A610: cbne  $D0+x,$a639
A613: nop
A614: sbc   a,$2ADF+y
A617: stop
A618: cmp   a,($10+x)
A61A: di
A61B: stop
A61C: bpl   $a5d0
A61E: brk
A61F: mov   a,y
A620: tcall 13
A621: set1  $11
A623: bbc2  $2B,$a5e1
A626: set5  $DF
A628: stop
A629: clr6  $01
A62B: mov   $00+x,y
A62D: or    a,$1B
A62F: clr5  $CC
A631: tcall 3
A632: dbnz  y,$a612
A634: cbne  $E0+x,$a64b
A637: tcall 4
A638: sbc   a,$11EF+y
A63B: tcall 0
A63C: dec   x
A63D: bpl   $a60e
A63F: bbs7  $21,$a5f4
A642: and   a,$FF
A644: set0  $31
A646: bbs1  $21,$a659
A649: jmp   ($1FA6+x)
A64C: tcall 15
A64D: or    a,$15
A64F: or    (x),(y)
A650: mov   x,#$33
A652: tcall 0
A653: sbc   a,$FE00+y
A656: clr0  $21
A658: bbc7  $01,$a618
A65B: clr5  $B6
A65D: set1  $20
A65F: bmi   $a67f
A661: clrv
A662: set0  $EF
A664: tcall 12
A665: movw  ya,$12
A667: brk
A668: das   a
A669: mov   $0E31+x,a
A66C: jmp   ($A62E+x)
A66F: dbnz  y,$a664
A671: notc
A672: mov   a,y
A673: tcall 14
A674: dec   x
A675: eor   a,$0E
A677: clr5  $CB
A679: mov   $5404,y
A67C: stop
A67D: sleep
A67E: bbc0  $44,$a63b
A681: stop
A682: tcall 15
A683: or    a,$2F+x
A685: mov   sp,x
A686: clr7  $25
A688: nop
A689: sbc   a,$E1EE+y
A68C: clr0  $FE
A68E: di
A68F: clrp
A690: cmp   x,$BA44
A693: mov   a,y
A694: mov   a,$E1FE+x
A697: jmp   $13F0
A69A: di
A69B: mov1  c,$02BF,02
A69E: cmp   x,$CF
A6A0: setp
A6A1: inc   x
A6A2: tcall 15
A6A3: set0  $A6
A6A5: tcall 2
A6A6: tset1 $26CD
A6A9: mov   y,$55D0
A6AC: setp
A6AD: sbc   a,$DEDE+y
A6B0: bbc7  $30,$a690
A6B3: bbs2  $40,$a6a6
A6B6: sbc   a,$DFED+y
A6B9: bbc1  $2E,$a6cc
A6BC: tset1 $10D1
A6BF: sbc   a,(x)
A6C0: movw  $65,ya
A6C2: dbnz  $9D,$a688
A6C5: bbc1  $20,$a6d7
A6C8: mov1  c,$1021,06
A6CB: tcall 15
A6CC: tcall 13
A6CD: or    a,(x)
A6CE: tcall 0
A6CF: push  a
A6D0: mov   ($F0),($BA)
A6D3: bbs1  $00,$a6c7
A6D6: brk
A6D7: brk
A6D8: dbnz  y,$a6cf
A6DA: mov1  c,$0E20,07
A6DD: tcall 4
A6DE: cbne  $CF,$a6d1
A6E1: nop
A6E2: and   a,$BA+x
A6E4: push  psw
A6E5: beq   $a729
A6E7: pop   y
A6E8: mul   ya
A6E9: or    a,$31
A6EB: stop
A6EC: adc   a,$AB2E+y
A6EF: beq   $a6f2
A6F1: and   a,($5D)+y
A6F3: notc
A6F4: set2  $AA
A6F6: di
A6F7: bbs7  $00,$a729
A6FA: bbs1  $1E,$a6ba
A6FD: tcall 15
A6FE: mov1  c,$0E40,01
A701: clr1  $D0
A703: tcall 12
A704: tcall 15
A705: bpl   $a709
A707: mov1  c,$010F,07
A70A: bbs1  $1E,$a707
A70D: clr7  $32
A70F: tcall 14
A710: sbc   a,$2F22+y
A713: pop   y
A714: nop
A715: dbnz  y,$a6e9
A717: bbc1  $20,$a6d0
A71A: mov   a,y
A71B: mov   a,$50+x
A71D: mov   y,$10EF
A720: stop
A721: bbs1  $AA,$a6d1
A724: mov   $2F,a
A726: tcall 4
A727: tset1 $02EF
A72A: beq   $a6d2
A72C: inc   a
A72D: tcall 1
A72E: clr1  $24
A730: movw  ya,$02
A732: clr2  $F0
A734: sbc   a,$02DD+y
A737: set2  $10
A739: brk
A73A: cbne  $F3+x,$a76d
A73D: mov1  c,$0D0F,02
A740: bbs5  $15,$a751
A743: dec   x
A744: set7  $33
A746: sbc   a,(x)
A747: tcall 3
A748: mov   a,y
A749: jmp   ($C2F9+x)
A74C: clr0  $03
A74E: mov   x,a
A74F: movw  ya,$0F
A751: bbs1  $1F,$a740
A754: clr7  $23
A756: call  $AACD
A759: mov   a,$0E22+x
A75C: daa   a
A75D: tcall 0
A75E: cmp   a,$DC+x
A760: clr4  $AA
A762: tcall 2
A763: clrp
A764: nop
A765: tcall 15
A766: bbs0  $ED,$a788
A769: or1   c,!($04BA,07)
A76C: set1  $FF
A76E: asl   a
A76F: clrv
A770: and   a,$20
A772: cbne  $BA+x,$a757
A775: cmp   x,$110F
A778: or    a,$1E
A77A: notc
A77B: tcall 1
A77C: movw  ya,$F2
A77E: nop
A77F: dbnz  y,$a772
A781: and   a,$1B+x
A783: pop   y
A784: tcall 1
A785: subw  ya,$E5
A787: bbc7  $43,$a7b8
A78A: inc   $B4
A78C: cbne  $A6+x,$a741
A78F: clr0  $22
A791: eor   a,$FE52
A794: tcall 15
A795: bpl   $a784
A797: mov1  c,$032E,02
A79A: beq   $a75c
A79C: stop
A79D: tcall 1
A79E: call  $B6CC
A7A1: di
A7A2: clr0  $43
A7A4: tcall 1
A7A5: brk
A7A6: notc
A7A7: set0  $21
A7A9: mov1  c,$15C0,00
A7AC: mov   x,#$10
A7AE: tcall 4
A7AF: tcall 1
A7B0: mov   $BAC2,y
A7B3: set2  $0E
A7B5: pop   x
A7B6: bbc1  $2E,$a797
A7B9: bbc0  $11,$a776
A7BC: tcall 15
A7BD: stop
A7BE: bpl   $a79d
A7C0: mov   a,$43
A7C2: asl   $F0
A7C4: sbc   a,$3123+y
A7C7: mov   y,$21DF
A7CA: sleep
A7CB: mov   a,$0D+x
A7CD: sbc   a,$54DF+y
A7D0: cbne  $DE,$a7e5
A7D3: tcall 15
A7D4: brk
A7D5: pop   y
A7D6: movw  ya,$31
A7D8: dec   x
A7D9: daa   a
A7DA: and   a,$F1
A7DC: push  psw
A7DD: stop
A7DE: and   a,$1FB6+x
A7E1: pop   x
A7E2: push  a
A7E3: tcall 15
A7E4: bbs1  $D0,$a81b
A7E7: inc   x
A7E8: sbc   a,$20F0+y
A7EB: inc   a
A7EC: set7  $32
A7EE: bmi   $a7ce
A7F0: mov   a,$B6+x
A7F2: cbne  $ED,$a805
A7F5: nop
A7F6: tcall 0
A7F7: cbne  $14+x,$a879
A7FA: movw  ya,$F1
A7FC: clr0  $C2
A7FE: clrp
A7FF: asl   $E400
A802: set2  $B6
A804: lsr   $E0DE
A807: tcall 15
A808: bbs1  $21,$a82c
A80B: dec   x
A80C: movw  ya,$E0
A80E: bbc0  $03,$a83f
A811: mov   y,$2102
A814: dbnz  y,$a7cc
A816: daa   a
A817: stop
A818: beq   $a85d
A81A: tcall 3
A81B: beq   $a7fa
A81D: clr0  $A6
A81F: mov   x,a
A820: tcall 11
A821: and   a,$C20E+x
A824: eor   a,$2D+x
A826: mov   $EFA6,y
A829: push  psw
A82A: and   a,($10+x)
A82C: di
A82D: rol   a
A82E: mov   a,y
A82F: tcall 0
A830: movw  ya,$F0
A832: or    a,($FC)+y
A834: mov   sp,x
A835: tcall 3
A836: tcall 3
A837: brk
A838: brk
A839: movw  ya,$B1
A83B: and   a,(x)
A83C: cmp   x,$DB
A83E: tcall 13
A83F: and   a,$3E
A841: brk
A842: sbc   a,$CE0E+y
A845: clr0  $44
A847: mov   y,$41B0
A84A: tset1 $F0C6
A84D: nop
A84E: tcall 0
A84F: nop
A850: stop
A851: tcall 3
A852: inc   y
A853: clr6  $B2
A855: mov   a,$31
A857: nop
A858: bpl   $a86c
A85A: bbs1  $33,$a88f
A85D: movw  ya,$22
A85F: clrv
A860: clrv
A861: dec   x
A862: bbc1  $00,$a827
A865: brk
A866: movw  ya,$20
A868: brk
A869: tcall 13
A86A: tcall 2
A86B: clrp
A86C: tset1 $00D1
A86F: movw  ya,$00
A871: set1  $3D
A873: pop   a
A874: or    a,$32
A876: tset1 $A6ED
A879: cmp   y,#$F2
A87B: bpl   $a89b
A87D: pop   y
A87E: bbc0  $DE,$a877
A881: movw  ya,$2C
A883: mov   a,y
A884: clr1  $22
A886: brk
A887: mov   y,$14F0
A88A: movw  ya,$32
A88C: mov   y,$E0
A88E: tcall 3
A88F: nop
A890: clrv
A891: tcall 0
A892: setp
A893: movw  ya,$FD
A895: clrv
A896: tcall 2
A897: clrv
A898: or    a,$20
A89A: dec   y
A89B: jmp   ($CCA6+x)
A89E: clr5  $12
A8A0: bbs2  $41,$a883
A8A3: clr0  $FC
A8A5: movw  ya,$F1
A8A7: set1  $20
A8A9: mov   y,$45B2
A8AC: decw  $2F
A8AE: movw  ya,$2E
A8B0: mov   $23,a
A8B2: mov   $3F11,y
A8B5: brk
A8B6: nop
A8B7: sbc   a,$E2EE+y
A8BA: bbs2  $20,$a8ab
A8BD: bne   $a8ee
A8BF: clr0  $BA
A8C1: beq   $a897
A8C3: rol   $0E+x
A8C5: tcall 2
A8C6: clr5  $14
A8C8: cmp   x,$BDAA
A8CB: tcall 2
A8CC: cbne  $02,$a8e0
A8CF: tcall 11
A8D0: clrp
A8D1: mov   y,$CA+x
A8D3: tcall 1
A8D4: brk
A8D5: set7  $00
A8D7: brk
A8D8: setp
A8D9: notc
A8DA: mov   a,$BA
A8DC: jmp   ($4E10+x)
A8DF: cbne  $E2+x,$a904
A8E2: jmp   ($B6E0+x)
A8E5: tcall 0
A8E6: stop
A8E7: tcall 1
A8E8: rol   $34C2
A8EB: mov   a,y
A8EC: set1  $AA
A8EE: asl   $BD+x
A8F0: set3  $2F
A8F2: mov   a,$20ED
A8F5: asl   $C2AA
A8F8: bbs1  $53,$a8cd
A8FB: mov   y,$B9
A8FD: bbs3  $E5,$a8b6
A900: or    a,$40+x
A902: nop
A903: stop
A904: clrv
A905: bpl   $a906
A907: clr7  $BA
A909: cmp   x,$EC
A90B: bbc0  $F0,$a91d
A90E: or    a,$B0EE+x
A911: sbc   a,(x)
A912: tcall 1
A913: eor   a,$ED21
A916: beq   $a92c
A918: dec   x
A919: mov   $53AA,y
A91C: clr0  $CA
A91E: mov   a,(x)+
A91F: cmp   a,$DE5C
A922: clr1  $BA
A924: stop
A925: bbs7  $00,$a915
A928: tcall 3
A929: or    a,$1C
A92B: mov   y,a
A92C: sbc   a,$C2BB+y
A92F: eor   a,$52+x
A931: bra   $a8ef
A933: mov   a,$51
A935: mov1  c,$10DC,02
A938: bbs7  $FF,$a96c
A93B: dbnz  y,$a8ef
A93D: bmi   $a8f9
A93F: tcall 3
A940: mul   ya
A941: mov   a,$2E
A943: tset1 $0200
A946: tcall 2
A947: movw  ya,$DD
A949: nop
A94A: pcall $F0
A94C: tcall 0
A94D: tcall 0
A94E: dec   x
A94F: pop   y
A950: movw  ya,$14
A952: clr0  $2B
A954: tcall 12
A955: or    a,$3FCF
A958: cmp   x,$E0B6
A95B: set0  $33
A95D: clr0  $0C
A95F: inc   a
A960: and   a,$B640+x
A963: cbne  $F1+x,$a944
A966: set0  $4F
A968: pop   y
A969: bbs0  $43,$a922
A96C: jmp   ($CEDD+x)
A96F: eor   a,$2E+x
A971: clr6  $FD
A973: stop
A974: mov1  c,$0160,00
A977: inc   $042F
A97A: jmp   ($E011+x)
A97D: sbc   a,$0F00+y
A980: tcall 0
A981: beq   $a996
A983: rol   a
A984: mov   x,#$02
A986: mov1  c,$10C1,00
A989: jmp   ($1D0F+x)
A98C: daa   a
A98D: clr0  $00
A98F: movw  ya,$01
A991: or    a,$0D+x
A993: mov   sp,x
A994: set1  $31
A996: tset1 $B620
A999: bpl   $a97a
A99B: push  psw
A99C: stop
A99D: set0  $22
A99F: cbne  $03,$a958
A9A2: pop   y
A9A3: daa   a
A9A4: tcall 3
A9A5: tset1 $22EF
A9A8: tcall 1
A9A9: bbc0  $A6,$a9b8
A9AC: mov   x,#$11
A9AE: mov   y,a
A9AF: mov   x,#$22
A9B1: tset1 $AAE4
A9B4: nop
A9B5: inc   y
A9B6: tcall 12
A9B7: nop
A9B8: tcall 3
A9B9: jmp   $D3CF
A9BC: sbc   a,(x)
A9BD: jmp   ($FD32+x)
A9C0: mov   $63,a
A9C2: cmp   x,$31CF
A9C5: sbc   a,$BDFE+y
A9C8: eor   a,$C05E
A9CB: beq   $a9ce
A9CD: clrp
A9CE: mov1  c,$04F0,01
A9D1: pop   x
A9D2: clr6  $2E
A9D4: bbs2  $E0,$a9e4
A9D7: movw  ya,$F2
A9D9: dbnz  y,$a9da
A9DB: bmi   $aa02
A9DD: brk
A9DE: inc   $3F+x
A9E0: subw  ya,$66
A9E2: and   a,$BE+x
A9E4: bvc   $aa01
A9E6: tcall 14
A9E7: stop
A9E8: set6  $BA
A9EA: or    a,$1F+x
A9EC: mov   $4D13,y
A9EF: pop   y
A9F0: and   a,$F0
A9F2: set5  $F1
A9F4: eor   a,$1B+x
A9F6: mul   ya
A9F7: set0  $33
A9F9: eor   a,$B652+y
A9FC: cmp   y,#$12
A9FE: bbs2  $43,$a9ce
AA01: sleep
AA02: mov   y,$F1+x
AA04: sbc   a,$F422+y
AA07: bmi   $a9f5
AA09: tcall 2
AA0A: stop
AA0B: mov   a,$1E
AA0D: clr5  $CA
AA0F: bbc0  $3E,$a9d2
AA12: and   a,$21
AA14: and   a,$41
AA16: sbc   a,$2FF0+y
AA19: cbne  $02+x,$aa4f
AA1C: notc
AA1D: mov   a,y
AA1E: stop
AA1F: sbc   a,$4336+y
AA22: tset1 $EEE0
AA25: das   a
AA26: bbs2  $30,$a9d3
AA29: mov   a,$A3
AA2B: setp
AA2C: asl   $DF
AA2E: or    a,$26
AA30: rol   a
AA31: sbc   a,$020D+y
AA34: bmi   $aa03
AA36: bbc7  $0F,$aa4b
AA39: pcall $B6
AA3B: mov   a,y
AA3C: clrv
AA3D: beq   $aa53
AA3F: set2  $DA
AA41: pop   a
AA42: eor   a,$0DBA+x
AA45: daa   a
AA46: clr5  $61
AA48: tset1 $02F1
AA4B: push  a
AA4C: sbc   a,$EFFF+y
AA4F: mov   a,y
AA50: tcall 14
AA51: and   a,$CD2D+y
AA54: eor   a,$B6
AA56: cmp   x,$F0BF
AA59: tcall 3
AA5A: brk
AA5B: or    a,$21
AA5D: sleep
AA5E: sbc   a,$1C02+y
AA61: daa   a
AA62: bbc1  $FD,$aa26
AA65: and   a,$1E+x
AA67: movw  ya,$F1
AA69: set1  $0E
AA6B: clrv
AA6C: or    a,$2E+x
AA6E: dec   y
AA6F: tcall 1
AA70: movw  ya,$3F
AA72: set7  $13
AA74: mov   x,#$11
AA76: bmi   $aa7a
AA78: cbne  $BA+x,$aa4b
AA7B: clr1  $10
AA7D: bpl   $aa6c
AA7F: set6  $33
AA81: call  $ECBA
AA84: mov   $50,a
AA86: push  psw
AA87: jmp   ($20E1+x)
AA8A: bpl   $aa46
AA8C: brk
AA8D: bcs   $aab2
AA8F: call  $C00F
AA92: bpl   $aab2
AA94: clr5  $D2
AA96: eor   a,$FE31
AA99: mov   a,y
AA9A: mov   a,y
AA9B: mov   a,y
AA9C: sleep
AA9D: sbc   a,$EF0F+y
AAA0: set1  $1D
AAA2: tcall 13
AAA3: or    a,$53+x
AAA5: decw  $B6
AAA7: mov   a,(x)+
AAA8: bbs1  $D0,$aabe
AAAB: or1   c,$15CF,02
AAAE: asl   $B6+x
AAB0: tcall 10
AAB1: and   a,$4D44
AAB4: pop   x
AAB5: bbs0  $CD,$aab9
AAB8: sbc   a,$F02E+y
AABB: bbs1  $22,$aacb
AABE: mov   $2214,y
AAC1: sbc   a,$1001+y
AAC4: notc
AAC5: tcall 14
AAC6: tclr1 $02EF
AAC9: daa   a
AACA: movw  ya,$22
AACC: asl   $33EE
AACF: call  $E0DE
AAD2: bbs1  $BA,$ab14
AAD5: mov   y,$F0F1
AAD8: mov   a,$DA42
AADB: tcall 15
AADC: sbc   a,(x)
AADD: cmp   a,(x)
AADE: clrp
AADF: cbne  $01+x,$ab02
AAE2: tcall 12
AAE3: tcall 2
AAE4: mov   y,$BA
AAE6: bbs7  $41,$ab06
AAE9: stop
AAEA: tcall 13
AAEB: and   a,$1E
AAED: cbne  $B2+x,$aaf0
AAF0: bbs1  $21,$aaf0
AAF3: mov   a,y
AAF4: mov   $32D1,y
AAF7: mov1  c,$1C2E,02
AAFA: tcall 13
AAFB: bbs1  $0F,$aac3
AAFE: lsr   a
AAFF: or    ($2F),($BA)
AB02: set5  $36
AB04: decw  $FF
AB06: tcall 5
AB07: daa   a
AB08: tcall 14
AB09: sbc   a,(x)
AB0A: clrv
AB0B: set1  $01
AB0D: tcall 0
AB0E: not1  $0F02,01
AB11: pop   x
AB12: mov1  $0101,00,c
AB15: beq   $ab15
AB17: tcall 1
AB18: setp
AB19: cbne  $E3+x,$aad2
AB1C: clr0  $FE
AB1E: beq   $ab41
AB20: set1  $23
AB22: dbnz  y,$ab10
AB24: sbc   a,$36DE+y
AB27: tcall 5
AB28: inc   a
AB29: clr6  $1F
AB2B: tcall 1
AB2C: clrp
AB2D: sbc   a,(x)
AB2E: mov   x,#$DE
AB30: tcall 1
AB31: bne   $ab58
AB33: tclr1 $3F23
AB36: sbc   a,$02E0+y
AB39: mov   y,$3D22
AB3C: tcall 12
AB3D: clr0  $DD
AB3F: sbc   a,$1000+y
AB42: and   a,$52+x
AB44: mov   $BE,y
AB46: stop
AB47: and   a,$AA+x
AB49: bne   $ab29
AB4B: mov   a,y
AB4C: bbc1  $24,$ab6e
AB4F: dec   y
AB50: tcall 14
AB51: movw  ya,$13
AB53: dec   x
AB54: dec   y
AB55: eor   a,$EF00+x
AB58: sleep
AB59: clr0  $B6
AB5B: tcall 1
AB5C: stop
AB5D: clr7  $10
AB5F: tcall 3
AB60: asl   $A0
AB62: bbs1  $B6,$aba9
AB65: cmp   y,$D0BC
AB68: pop   y
AB69: bbc7  $64,$ab8a
AB6C: mov1  c,$1E22,07
AB6F: set7  $56
AB71: notc
AB72: pop   a
AB73: clr0  $11
AB75: sbc   a,$4401+y
AB78: cmp   x,$C0
AB7A: clr0  $FE
AB7C: sleep
AB7D: tcall 1
AB7E: sbc   a,$1010+y
AB81: notc
AB82: tcall 14
AB83: and   a,$FE+x
AB85: tcall 15
AB86: cmp   x,$AA
AB88: set0  $51
AB8A: div   ya,x
AB8B: mov   a,$0E43
AB8E: bne   $abaf
AB90: sbc   a,$DDFE+y
AB93: sleep
AB94: and   a,$54
AB96: not1  $04BE,02
AB99: sbc   a,$F03F+y
AB9C: bpl   $ab6d
AB9E: bbc0  $1C,$ab90
ABA1: bbc1  $AA,$ab93
ABA4: bne   $ab36
ABA6: cmp   a,$4C+x
ABA8: beq   $ab89
ABAA: brk
ABAB: movw  ya,$0F
ABAD: bbc0  $F1,$abb1
ABB0: bra   $ab8f
ABB2: bne   $ac05
ABB4: movw  ya,$1F
ABB6: mov   a,$FF+x
ABB8: daa   a
ABB9: clrp
ABBA: brk
ABBB: clrp
ABBC: pcall $B6
ABBE: mov   $32C0,y
ABC1: bpl   $ab94
ABC3: tcall 4
ABC4: cmp   x,$B602
ABC7: stop
ABC8: dbnz  y,$abc9
ABCA: and   a,$50
ABCC: mov1  $12C3,01,c
ABCF: mov1  c,$1E0E,00
ABD2: stop
ABD3: nop
ABD4: jmp   $01CE
ABD7: cmp   a,(x)
ABD8: movw  ya,$FE
ABDA: di
ABDB: bbc0  $FD,$abf0
ABDE: ror   $05CD
ABE1: movw  ya,$01
ABE3: clrv
ABE4: brk
ABE5: nop
ABE6: tcall 4
ABE7: pop   y
ABE8: set6  $F0
ABEA: movw  ya,$02
ABEC: tcall 7
ABED: not1  $11C3,00
ABF0: beq   $ac12
ABF2: cmp   x,$EEAA
ABF5: bbc0  $6F,$abe3
ABF8: bbs7  $E3,$ac7a
ABFB: mov   x,$BA+y
ABFD: bbs0  $D0,$abd5
AC00: push  y
AC01: mov   y,$12
AC03: set0  $FF
AC05: movw  ya,$01
AC07: nop
AC08: jmp   ($F30F+x)
AC0B: pop   x
AC0C: tcall 4
AC0D: inc   x
AC0E: sbc   a,$0FF3+y
AC11: nop
AC12: setp
AC13: mov   $34D2,y
AC16: tcall 3
AC17: sbc   a,(x)
AC18: not1  $1FC1,07
AC1B: notc
AC1C: stop
AC1D: and   a,(x)
AC1E: bbc2  $DB,$abcb
AC21: tcall 15
AC22: set2  $51
AC24: mov   y,$20B3
AC27: notc
AC28: mov   a,$BA
AC2A: pcall $00
AC2C: beq   $abdf
AC2E: pcall $0C
AC30: eor   a,(x)
AC31: dbnz  y,$abe9
AC33: cbne  $00+x,$ac31
AC36: daa   a
AC37: bbc1  $22,$ac5c
AC3A: cmp   x,$D1CA
AC3D: clr0  $20
AC3F: cmp   x,$04DF
AC42: cmp   x,$AAFE
AC45: cmp   a,$0E14
AC48: mov   $20,y
AC4A: rol   $4604
AC4D: sbc   a,(x)
AC4E: tcall 3
AC4F: tcall 0
AC50: rol   a
AC51: cbne  $24+x,$ac33
AC54: mov   a,$B64C+x
AC57: stop
AC58: set0  $2F
AC5A: mov   $F4,y
AC5C: eor   a,$BC4E
AC5F: movw  ya,$44
AC61: cbne  $E2+x,$ac86
AC64: mov   y,a
AC65: beq   $aca5
AC67: tcall 0
AC68: mov   (x),a
AC69: bbc0  $10,$ac6b
AC6C: mov   y,a
AC6D: tcall 14
AC6E: and   a,$F0+x
AC70: beq   $ac3c
AC72: mov   y,a
AC73: tcall 3
AC74: call  $01DF
AC77: tcall 2
AC78: sleep
AC79: nop
AC7A: sbc   a,$12FD+y
AC7D: set1  $0F
AC7F: dbnz  y,$ac84
AC81: mov   y,a
AC82: mov   a,(x)+
AC83: movw  ya,$4E
AC85: tcall 3
AC86: mov   a,y
AC87: clr6  $31
AC89: push  psw
AC8A: tcall 0
AC8B: tcall 3
AC8C: mov1  c,$00EC,06
AC8F: tcall 12
AC90: cmp   a,$CE6C
AC93: ei
AC94: or    a,$3FBA+y
AC97: notc
AC98: set1  $00
AC9A: bbc6  $1E,$ac7a
AC9D: set2  $B6
AC9F: or    a,$42+x
ACA1: tset1 $CC10
ACA4: bbc6  $30,$aca7
ACA7: movw  ya,$5F
ACA9: notc
ACAA: clrv
ACAB: tcall 1
ACAC: bpl   $acb2
ACAE: dbnz  y,$ac9f
ACB0: sbc   a,$DA51+y
ACB3: sbc   a,$0F43+x
ACB6: inc   x
ACB7: sbc   (x),(y)
ACB8: mov   a,$E0BA
ACBB: bne   $acca
ACBD: tcall 1
ACBE: bmi   $ac80
ACC0: bbc0  $20,$ac7d
ACC3: notc
ACC4: mov   y,a
ACC5: bbs0  $45,$acb5
ACC8: di
ACC9: tcall 2
ACCA: push  psw
ACCB: movw  ya,$11
ACCD: cbne  $D3,$ad04
ACD0: mov   $0F+x,y
ACD2: tcall 2
ACD3: brk
ACD4: clr5  $EB
ACD6: pop   x
ACD7: clr0  $21
ACD9: nop
ACDA: mov   y,$43CF
ACDD: clr5  $33
ACDF: eor   a,$F20E
ACE2: tcall 4
ACE3: mov   y,a
ACE4: stop
ACE5: mov   $BA,y
ACE7: or    a,$ED+x
ACE9: tcall 13
ACEA: bbc1  $1F,$acca
ACED: tcall 0
ACEE: bra   $aca6
ACF0: tcall 0
ACF1: and   a,$41
ACF3: mov   $FECE,y
ACF6: set1  $20
ACF8: movw  ya,$F2
ACFA: set1  $DD
ACFC: tcall 11
ACFD: bbc1  $3F,$ad10
AD00: pop   y
AD01: movw  ya,$FE
AD03: set0  $21
AD05: tcall 13
AD06: or    a,$0C+x
AD08: dbnz  y,$ad2a
AD0A: sbc   a,$12E1+y
AD0D: push  psw
AD0E: nop
AD0F: bpl   $ace2
AD11: mov   y,a
AD12: tcall 0
AD13: mov1  c,$145C,06
AD16: pop   y
AD17: mov   a,(x)+
AD18: bbs2  $4C,$ad1d
AD1B: stop
AD1C: sbc   a,$03EF+y
AD1F: dec   x
AD20: movw  ya,$13
AD22: bbs2  $22,$ad34
AD25: movw  ya,$D0
AD27: bbc1  $20,$ad17
AD2A: bra   $ad38
AD2C: bbc7  $23,$acd5
AD2F: bbc1  $75,$ad7e
AD32: inc   $BF
AD34: tcall 3
AD35: mov   y,a
AD36: or    a,(x)
AD37: movw  ya,$00
AD39: tcall 12
AD3A: bpl   $ad37
AD3C: bbc1  $40,$ad1d
AD3F: set7  $BA
AD41: tcall 15
AD42: clr7  $3E
AD44: beq   $ad58
AD46: mov   a,(x)+
AD47: or    a,$31
AD49: sbc   a,$CE1A+y
AD4C: set1  $01
AD4E: stop
AD4F: sleep
AD50: tcall 3
AD51: tcall 0
AD52: sbc   a,$EC14+y
AD55: pop   y
AD56: tset1 $34F0
AD59: tcall 3
AD5A: notc
AD5B: mov1  c,$0033,01
AD5E: tcall 10
AD5F: tcall 2
AD60: rol   $64+x
AD62: pop   x
AD63: bbc4  $AA,$ad8f
AD66: bbs1  $55,$ad97
AD69: mov   $C1,y
AD6B: bbs6  $73,$ad28
AD6E: cmp   x,$21EF
AD71: inc   x
AD72: tcall 12
AD73: bbs0  $00,$ad93
AD76: movw  ya,$D0
AD78: and   a,$0F
AD7A: tcall 14
AD7B: jmp   ($310D+x)
AD7E: stop
AD7F: sbc   a,$14CE+y
AD82: set2  $DC
AD84: dbnz  y,$ad87
AD86: eor   a,(x)
AD87: mov   y,$BA
AD89: bbc0  $5E,$ad8a
AD8C: nop
AD8D: brk
AD8E: mov   a,$24+x
AD90: cmp   y,#$BA
AD92: call  $F30C
AD95: bbc1  $FE,$ad69
AD98: brk
AD99: tcall 1
AD9A: movw  ya,$4F
AD9C: di
AD9D: brk
AD9E: set1  $0F
ADA0: mov   $2E,a
ADA2: dec   y
ADA3: mov1  c,$0174,02
ADA6: bbs0  $ED,$ad54
ADA9: bmi   $adf2
ADAB: clr1  $BA
ADAD: inc   a
ADAE: tcall 0
ADAF: tcall 4
ADB0: push  psw
ADB1: nop
ADB2: tcall 1
ADB3: tcall 0
ADB4: mov   $B6+x,y
ADB6: pop   x
ADB7: and   a,$00+x
ADB9: bbs0  $44,$adb8
ADBC: mov   x,#$0D
ADBE: movw  ya,$44
ADC0: sleep
ADC1: bne   $ade0
ADC3: set1  $00
ADC5: set5  $36
ADC7: movw  ya,$1C
ADC9: asl   $F5F0
ADCC: push  psw
ADCD: nop
ADCE: tcall 2
ADCF: clr7  $AA
ADD1: mov   y,a
ADD2: mov   a,y
ADD3: clr0  $22
ADD5: dbnz  y,$adb5
ADD7: bbc2  $5D,$ad80
ADDA: clrp
ADDB: sleep
ADDC: dbnz  y,$adbb
ADDE: mov   $3F+x,a
ADE0: dec   y
ADE1: bbc0  $AA,$ae04
ADE4: mov   $EF+x,y
ADE6: and   a,(x)
ADE7: tcall 4
ADE8: mov   x,$2E21
ADEB: movw  ya,$D5
ADED: brk
ADEE: mov   $52,y
ADF0: clr1  $13
ADF2: dec   $F1+x
ADF4: sbc   a,$FF30+y
ADF7: tcall 15
ADF8: tcall 15
ADF9: bbc2  $1F,$adb7
ADFC: das   a
ADFD: set6  $F2
ADFF: tcall 3
AE00: sleep
AE01: beq   $ae04
AE03: bbc1  $20,$adf6
AE06: clr5  $FF
AE08: tcall 0
AE09: tcall 2
AE0A: brk
AE0B: notc
AE0C: dec   y
AE0D: set6  $43
AE0F: mov   (x),a
AE10: mov   a,y
AE11: tcall 1
AE12: bbs1  $1F,$ade2
AE15: clr1  $1F
AE17: beq   $add3
AE19: tcall 0
AE1A: or1   c,!($06D3,01)
AE1D: cbne  $E1+x,$ae5f
AE20: tset1 $00BA
AE23: tcall 15
AE24: jmp   ($430F+x)
AE27: daa   a
AE28: set6  $0E
AE2A: movw  ya,$21
AE2C: tcall 0
AE2D: brk
AE2E: tcall 1
AE2F: nop
AE30: bcs   $aeaf
AE32: not1  $05B6,06
AE35: eor   a,$EE
AE37: dbnz  y,$ae25
AE39: or    a,$54+x
AE3B: dbnz  y,$adf3
AE3D: dec   y
AE3E: clrv
AE3F: bbc0  $32,$ae4f
AE42: clrv
AE43: set1  $EE
AE45: movw  ya,$FE
AE47: bbc1  $41,$ae27
AE4A: tcall 13
AE4B: tcall 0
AE4C: tcall 14
AE4D: call  $10BA
AE50: bbs1  $FD,$ae02
AE53: or    a,$20+x
AE55: stop
AE56: tcall 0
AE57: sbc   a,$1031+y
AE5A: clr0  $DF
AE5C: bpl   $ae69
AE5E: bbc7  $12,$ae1b
AE61: beq   $ae50
AE63: set0  $41
AE65: asl   $13C1
AE68: setp
AE69: sbc   a,$B14F+y
AE6C: nop
AE6D: notc
AE6E: nop
AE6F: cmp   x,$24E0
AE72: mov1  $00E1,00,c
AE75: mov   y,a
AE76: tcall 1
AE77: tcall 0
AE78: or    a,$1D
AE7A: notc
AE7B: sbc   a,$EDDE+y
AE7E: bne   $aea4
AE80: nop
AE81: tcall 15
AE82: pcall $01
AE84: movw  ya,$A1
AE86: and   a,$ED4D
AE89: clr7  $4C
AE8B: bne   $aeb2
AE8D: sbc   a,$CE21+y
AE90: bbc0  $3D,$ae83
AE93: bmi   $ae47
AE95: and   a,$0AB6+x
AE98: mov   y,a
AE99: daa   a
AE9A: or    a,$FE41+y
AE9D: pop   y
AE9E: stop
AE9F: sbc   a,$02FF+y
AEA2: and   a,$3C+x
AEA4: mov   x,#$14
AEA6: bbc0  $2F,$ae63
AEA9: pop   y
AEAA: bbs1  $31,$ae9a
AEAD: daa   a
AEAE: bbs1  $4F,$ae72
AEB1: sbc   a,$0F02+y
AEB4: jmp   ($E2FD+x)
AEB7: and   a,$ED+x
AEB9: tcall 15
AEBA: sbc   a,$CF2B+y
AEBD: and   a,$FB42+y
AEC0: di
AEC1: eor   a,$BA0D
AEC4: mov   $EF22+x,a
AEC7: jmp   ($031B+x)
AECA: clr0  $F1
AECC: movw  ya,$1B
AECE: beq   $aef3
AED0: stop
AED1: bbs7  $20,$ae90
AED4: clr2  $A6
AED6: bvs   $ae76
AED8: daa   a
AED9: nop
AEDA: bbc7  $55,$af09
AEDD: inc   a
AEDE: movw  ya,$15
AEE0: push  a
AEE1: mov1  $0C43,02,c
AEE4: sbc   a,$15+x
AEE6: inc   a
AEE7: clr5  $DE
AEE9: set1  $13
AEEB: bbc1  $FE,$af00
AEEE: dec   x
AEEF: mul   ya
AEF0: movw  ya,$1F
AEF2: di
AEF3: tcall 15
AEF4: tcall 0
AEF5: bmi   $aee5
AEF7: clr7  $22
AEF9: mov1  c,$0EED,06
AEFC: jmp   ($5042+x)
AEFF: mov   (x)+,a
AF00: tcall 14
AF01: asl   $42BA
AF04: tset1 $00CF
AF07: bbs2  $30,$aed7
AF0A: clrv
AF0B: mov1  c,$0302,02
AF0E: and   (x),(y)
AF0F: mov   $F3,a
AF11: tcall 0
AF12: incw  $CD
AF14: movw  ya,$24
AF16: bra   $aee7
AF18: bbs0  $1F,$af0a
AF1B: tcall 0
AF1C: clrp
AF1D: movw  ya,$00
AF1F: bpl   $aed2
AF21: bpl   $af51
AF23: set2  $EE
AF25: tcall 11
AF26: movw  ya,$02
AF28: nop
AF29: bvc   $af1a
AF2B: tcall 14
AF2C: nop
AF2D: dec   x
AF2E: tcall 13
AF2F: movw  ya,$14
AF31: jmp   ($0D3F+x)
AF34: mov   $0F,a
AF36: sleep
AF37: bbs1  $B6,$af8d
AF3A: bra   $af3c
AF3C: pop   x
AF3D: set0  $2D
AF3F: tcall 15
AF40: tcall 1
AF41: sbc   a,(x)
AF42: brk
AF43: or    a,(x)
AF44: bra   $aee0
AF46: clrp
AF47: and   a,$22
AF49: mov1  $0FB6,07,c
AF4C: or    a,$32+x
AF4E: dbnz  y,$af8f
AF50: mov   y,$FEE4
AF53: sbc   a,$64E2+y
AF56: asl   $EF+x
AF58: sleep
AF59: mov   $4F+x,a
AF5B: dbnz  y,$af03
AF5D: eor   a,$EE+x
AF5F: mov   a,$31
AF61: inc   a
AF62: bbc1  $3E,$af55
AF65: movw  ya,$00
AF67: tcall 14
AF68: nop
AF69: bpl   $afaa
AF6B: inc   y
AF6C: bbs7  $11,$af19
AF6F: jmp   $F1EE
AF72: notc
AF73: nop
AF74: call  $3703
AF77: mov1  c,$1CCB,06
AF7A: tcall 0
AF7B: bbs1  $FF,$af7f
AF7E: and   a,$AA19+x
AF81: mov   y,$D41F
AF84: bbs2  $2F,$af84
AF87: mul   ya
AF88: bbs1  $BA,$af9b
AF8B: bra   $af5d
AF8D: set0  $FD
AF8F: set1  $20
AF91: mov   y,$C2B6
AF94: bbs1  $EF,$afc3
AF97: mov   x,#$05
AF99: eor   a,$4F
AF9B: sbc   a,$CFDB+y
AF9E: beq   $afa2
AFA0: tcall 2
AFA1: tset1 $0E34
AFA4: mov1  c,$0FA7,01
AFA7: bpl   $afcb
AFA9: asl   $F1
AFAB: set1  $C2
AFAD: movw  ya,$0C
AFAF: set0  $22
AFB1: tcall 14
AFB2: dec   x
AFB3: stop
AFB4: set1  $2F
AFB6: sbc   a,$B1FC+y
AFB9: clr0  $01
AFBB: set3  $FD
AFBD: mul   ya
AFBE: beq   $af7a
AFC0: brk
AFC1: clr0  $10
AFC3: tset1 $F2DF
AFC6: tcall 3
AFC7: brk
AFC8: sbc   a,(x)
AFC9: notc
AFCA: brk
AFCB: and   a,($53)+y
AFCD: inc   $FE+x
AFCF: inc   y
AFD0: mov   x,#$A6
AFD2: tcall 1
AFD3: jmp   ($4306+x)
AFD6: mov   y,$F30E
AFD9: push  psw
AFDA: clr5  $DB
AFDC: inc   $B1+x
AFDE: bbs2  $20,$aff2
AFE1: mov   y,a
AFE2: tcall 13
AFE3: mov   (x),a
AFE4: tcall 1
AFE5: beq   $aff7
AFE7: tset1 $FE12
AFEA: tcall 12
AFEB: bbc1  $B6,$b02b
AFEE: dbnz  y,$afef
AFF0: mov   a,$2F+x
AFF2: mov   a,y
AFF3: jmp   ($B6F3+x)
AFF6: clr1  $1F
AFF8: pop   y
AFF9: mov   a,$30+x
AFFB: mov   y,a
AFFC: mov   a,y
AFFD: tcall 15
AFFE: mov1  c,$010D,01
B001: bbc7  $0B,$afcf
B004: cmp   a,(x)
B005: set0  $E0
B007: mov1  c,$0EFE,07
B00A: bbs5  $75,$b04c
B00D: mov   $D1,y
B00F: cmp   y,$00BA
B012: tcall 0
B013: tcall 15
B014: dec   x
B015: dbnz  y,$b03b
B017: tcall 13
B018: clr0  $BA
B01A: incw  $E0
B01C: tcall 0
B01D: stop
B01E: bbc7  $24,$afff
B021: push  a
B022: sbc   a,$E30E+y
B025: bpl   $aff3
B027: stop
B028: tcall 2
B029: eor   a,$BAEC
B02C: mov   a,$0F3D+x
B02F: tcall 4
B030: cbne  $E4+x,$b041
B033: nop
B034: set5  $E1
B036: tcall 5
B037: dec   y
B038: mov   sp,x
B039: pop   x
B03A: clr1  $11
B03C: pop   y
B03D: sbc   a,$6D03+y
B040: inc   $F4
B042: tcall 0
B043: tcall 1
B044: push  psw
B045: tcall 15
B046: mov   (x),a
B047: bbs2  $ED,$b00b
B04A: bpl   $b05c
B04C: tcall 1
B04D: bpl   $b04e
B04F: movw  ya,$20
B051: tcall 14
B052: tcall 2
B053: cmp   x,$D2EE
B056: eor   a,$1C
B058: mov1  c,$1C0E,07
B05B: mov   $CC47+x,a
B05E: cmp   x,$E33B
B061: sbc   a,(x)
B062: inc   a
B063: bbs1  $5F,$b017
B066: clr0  $42
B068: bbs0  $22,$b01d
B06B: inc   x
B06C: cbne  $CB+x,$b00f
B06F: eor   a,$0F42+x
B072: dbnz  y,$b01a
B074: beq   $b089
B076: set0  $52
B078: tset1 $03AA
B07B: eor   a,$BA+x
B07D: tcall 14
B07E: mov   x,#$52
B080: inc   x
B081: tcall 14
B082: tcall 0
B083: jmp   ($AAD1+x)
B086: clr0  $EC
B088: bbc2  $5D,$b03d
B08B: clrv
B08C: bcs   $b0fc
B08E: mov   (x),a
B08F: push  psw
B090: bbc7  $44,$b092
B093: jmp   ($03FD+x)
B096: nop
B097: sbc   a,$3FC1+y
B09A: mov   $24+x,y
B09C: inc   x
B09D: xcn   a
B09E: or    a,$31+x
B0A0: sbc   a,$C3FB+y
B0A3: eor   a,$DE1D+x
B0A6: tcall 0
B0A7: brk
B0A8: sleep
B0A9: sbc   a,(x)
B0AA: set1  $31
B0AC: set0  $33
B0AE: pop   x
B0AF: or    a,$50+x
B0B1: mov   y,$BA
B0B3: tcall 14
B0B4: and   a,($2B+x)
B0B6: mov   y,$E32E
B0B9: and   a,(x)
B0BA: mov   y,a
B0BB: sbc   a,(x)
B0BC: mov   y,$1E10
B0BF: tcall 15
B0C0: sleep
B0C1: tcall 2
B0C2: or    (x),(y)
B0C3: mov   a,$32B6
B0C6: mov   sp,x
B0C7: or    a,$3D+x
B0C9: stop
B0CA: dbnz  y,$b08e
B0CC: eor   a,$AA
B0CE: asl   $3B
B0D0: tcall 11
B0D1: and   a,$FD
B0D3: daa   a
B0D4: eor   a,($60+x)
B0D6: mov1  c,$0EC9,05
B0D9: and   a,$FD5E+x
B0DC: nop
B0DD: tcall 2
B0DE: cmp   x,$FFA6
B0E1: mov   $FF,y
B0E3: or    a,($3E)+y
B0E5: movw  ya,$75
B0E7: bbs1  $BA,$b0db
B0EA: sleep
B0EB: bra   $b0fc
B0ED: bbs0  $20,$b0b1
B0F0: bbs0  $B6,$b131
B0F3: dec   y
B0F4: clr0  $ED
B0F6: clr6  $55
B0F8: clrp
B0F9: jmp   ($EDB6+x)
B0FC: bne   $b0dd
B0FE: bbs1  $4F,$b0de
B101: tcall 15
B102: brk
B103: movw  ya,$02
B105: tcall 1
B106: pop   x
B107: bbs1  $4A,$b0e9
B10A: or    a,$31
B10C: movw  ya,$0A
B10E: mul   ya
B10F: and   a,(x)
B110: bbs0  $00,$b0fe
B113: beq   $b117
B115: mov1  c,$1D04,01
B118: cbne  $44+x,$b166
B11B: pop   a
B11C: or    a,$BAC0
B11F: bra   $b140
B121: bbc0  $0F,$b112
B124: bpl   $b137
B126: beq   $b0ce
B128: clrp
B129: pop   y
B12A: beq   $b160
B12C: setp
B12D: inc   $D1
B12F: clr1  $AA
B131: cbne  $B3,$b166
B134: inc   y
B135: stop
B136: jmp   ($230F+x)
B139: sbc   a,$13F0+y
B13C: tcall 5
B13D: inc   y
B13E: bbs0  $2E,$b0ed
B141: mov   a,$BA
B143: pop   y
B144: bpl   $b191
B146: clrv
B147: tcall 14
B148: clr0  $20
B14A: brk
B14B: mov1  c,$1DF0,06
B14E: bbs7  $43,$b180
B151: mov   x,#$E2
B153: push  x
B154: sbc   a,$3302+y
B157: tset1 $F0DE
B15A: sleep
B15B: eor   a,$3F+x
B15D: movw  ya,$04
B15F: jmp   ($E2DC+x)
B162: and   a,$0F+x
B164: nop
B165: rol   $D2AA
B168: or    a,$B0+x
B16A: push  a
B16B: beq   $b191
B16D: tcall 6
B16E: mov1  c,$11BA,06
B171: tcall 1
B172: clrp
B173: brk
B174: set7  $00
B176: beq   $b1c7
B178: sbc   a,$EE00+y
B17B: mov   $52F1,y
B17E: bbc0  $21,$b14d
B181: mov1  c,$146F,01
B184: pop   y
B185: bne   $b1b9
B187: bbc1  $DB,$b14a
B18A: movw  ya,$4E
B18C: mov   y,a
B18D: or    a,$01+x
B18F: bpl   $b1bc
B191: beq   $b184
B193: movw  ya,$F3
B195: call  $010E
B198: clr6  $10
B19A: mov   y,$BA33
B19D: brk
B19E: bbc6  $12,$b17c
B1A1: clr2  $3D
B1A3: mov   a,(x)+
B1A4: clrv
B1A5: movw  ya,$33
B1A7: bvc   $b196
B1A9: clr7  $EE
B1AB: bbs6  $33,$b1b9
B1AE: movw  ya,$20
B1B0: clrp
B1B1: mov   (x),a
B1B2: push  psw
B1B3: tset1 $D41E
B1B6: set1  $B6
B1B8: tcall 3
B1B9: nop
B1BA: brk
B1BB: nop
B1BC: bbs1  $EC,$b16f
B1BF: setp
B1C0: sbc   a,$4322+y
B1C3: mov   a,y
B1C4: cbne  $0F+x,$b1d9
B1C7: cbne  $BB,$b180
B1CA: mov   a,($65)+y
B1CC: cmp   x,$D0DB
B1CF: and   a,$F1EE+x
B1D2: sbc   a,(x)
B1D3: lsr   $16+x
B1D5: clr1  $BC
B1D7: mov1  $16EF,02,c
B1DA: set1  $B6
B1DC: tcall 0
B1DD: bpl   $b1bb
B1DF: set7  $52
B1E1: inc   y
B1E2: daa   a
B1E3: bbc2  $A6,$b203
B1E6: bbc6  $DB,$b197
B1E9: bbs3  $31,$b211
B1EC: cmp   a,(x)
B1ED: movw  ya,$EE
B1EF: pop   y
B1F0: bbc1  $20,$b1a6
B1F3: push  psw
B1F4: clrp
B1F5: setp
B1F6: movw  ya,$D0
B1F8: notc
B1F9: set1  $31
B1FB: mov   a,y
B1FC: tcall 15
B1FD: eor   a,$FE
B1FF: movw  ya,$EB
B201: set7  $34
B203: mul   ya
B204: clr2  $2B
B206: pop   x
B207: set0  $AA
B209: and   a,$2D+x
B20B: daa   a
B20C: clr0  $FF
B20E: tcall 0
B20F: clr0  $ED
B211: movw  ya,$1F
B213: brk
B214: or    a,$FE+x
B216: bne   $b26a
B218: or1   c,!($1A01,05)
B21B: daa   a
B21C: bbs6  $52,$b24e
B21F: cmp   x,$05BE
B222: bra   $b1da
B224: mov   y,$11
B226: bbs1  $23,$b237
B229: mov   a,y
B22A: sleep
B22B: nop
B22C: sbc   a,(x)
B22D: bbc0  $21,$b230
B230: tcall 0
B231: clr1  $2F
B233: sbc   ($BA),($A2)
B236: tset1 $3C30
B239: clr5  $13
B23B: stop
B23C: clrv
B23D: tcall 0
B23E: movw  ya,$20
B240: bpl   $b223
B242: bra   $b241
B244: clr0  $C0
B246: mov   a,$AA
B248: ret
B249: tcall 3
B24A: pop   y
B24B: set5  $1C
B24D: nop
B24E: clr3  $C0
B250: sbc   a,$21F2+y
B253: bpl   $b251
B255: inc   a
B256: or    a,$DC53
B259: sbc   a,(x)
B25A: clr5  $64
B25C: bmi   $b2ad
B25E: sbc   (x),(y)
B25F: sbc   a,$20+x
B261: tcall 0
B262: mov1  c,$006A,07
B265: set0  $AF
B267: bbs1  $31,$b259
B26A: clr6  $BA
B26C: bmi   $b26b
B26E: sleep
B26F: set1  $21
B271: tcall 15
B272: mov1  $1632,05,c
B275: eor   a,$22
B277: brk
B278: beq   $b27c
B27A: set1  $1F
B27C: sleep
B27D: sbc   a,(x)
B27E: nop
B27F: mov   a,y
B280: tcall 14
B281: nop
B282: nop
B283: tcall 4
B284: nop
B285: set0  $A6
B287: nop
B288: cmp   x,$C9
B28A: mov   $E031+y,a
B28D: eor   a,$BA41
B290: pop   x
B291: set1  $4C
B293: bbc0  $0F,$b265
B296: jmp   ($BA22+x)
B299: clr1  $CE
B29B: bne   $b2ac
B29D: tcall 2
B29E: tcall 1
B29F: tcall 15
B2A0: brk
B2A1: sbc   a,$1F22+y
B2A4: mov   x,#$E3
B2A6: tcall 3
B2A7: tset1 $0110
B2AA: movw  ya,$FE
B2AC: nop
B2AD: call  $10F4
B2B0: inc   a
B2B1: set1  $30
B2B3: sbc   a,(x)
B2B4: bra   $b2db
B2B6: bra   $b264
B2B8: mov   y,$26
B2BA: cmp   a,$CA+x
B2BC: mov1  c,$1210,01
B2BF: tcall 15
B2C0: mov   a,$3C+x
B2C2: notc
B2C3: set0  $4E
B2C5: sbc   a,(x)
B2C6: mov   x,$33B3
B2C9: asl   a
B2CA: dec   $F5+x
B2CC: set2  $23
B2CE: movw  ya,$1F
B2D0: mov   y,$34
B2D2: pcall $A1
B2D4: tcall 15
B2D5: brk
B2D6: clrp
B2D7: movw  ya,$E4
B2D9: set1  $CA
B2DB: nop
B2DC: setp
B2DD: nop
B2DE: set0  $C0
B2E0: clr5  $F1
B2E2: tcall 3
B2E3: tcall 15
B2E4: dbnz  y,$b2c6
B2E6: eor   a,$1E+x
B2E8: movw  ya,$BA
B2EA: bbc6  $41,$b2fa
B2ED: stop
B2EE: jmp   ($10E5+x)
B2F1: mov   y,$DCB6
B2F4: tcall 12
B2F5: bbc1  $2F,$b2f7
B2F8: set0  $23
B2FA: tcall 2
B2FB: mov1  c,$12CD,07
B2FE: and   a,$2F+x
B300: dbnz  y,$b311
B302: brk
B303: dbnz  y,$b2bb
B305: and   a,$BE30
B308: set0  $0E
B30A: beq   $b34b
B30C: clrv
B30D: movw  ya,$F2
B30F: tcall 13
B310: tclr1 $22FE
B313: daa   a
B314: set6  $21
B316: movw  ya,$2F
B318: setp
B319: mul   ya
B31A: clr6  $0E
B31C: bmi   $b34c
B31E: clrv
B31F: sbc   a,(x)
B320: mov   $65+x,a
B322: dbnz  y,$b317
B324: set2  $0E
B326: nop
B327: push  psw
B328: movw  ya,$03
B32A: nop
B32B: stop
B32C: cmp   x,$24FF
B32F: tcall 3
B330: notc
B331: movw  ya,$CF
B333: tcall 0
B334: clr1  $FF
B336: tcall 15
B337: stop
B338: tcall 4
B339: push  psw
B33A: sbc   a,$21D1+y
B33D: inc   y
B33E: mov   a,y
B33F: tcall 15
B340: bpl   $b342
B342: bbs1  $BA,$b362
B345: stop
B346: beq   $b32b
B348: bbc1  $1B,$b308
B34B: eor   a,$BA
B34D: bmi   $b31f
B34F: bne   $b344
B351: setp
B352: notc
B353: beq   $b357
B355: mov1  c,$1012,00
B358: sleep
B359: mul   ya
B35A: or    a,$EB6E+y
B35D: tcall 2
B35E: mov1  c,$15BE,06
B361: cmp   a,(x)
B362: inc   y
B363: mov   x,#$3F
B365: or    a,$B2AC+x
B368: daa   a
B369: eor   a,$AE0C+x
B36C: clr0  $1F
B36E: mov   y,$B6CD
B371: bbs2  $FE,$b347
B374: rol   $41EF
B377: mov   a,y
B378: clr6  $BA
B37A: bpl   $b37a
B37C: tset1 $2011
B37F: cbne  $11+x,$b3b6
B382: movw  ya,$ED
B384: daa   a
B385: cmp   x,$12
B387: clr1  $AE
B389: tcall 0
B38A: call  $22B6
B38D: tcall 1
B38E: cbne  $FE+x,$b391
B391: bbc1  $F0,$b3a4
B394: sbc   a,$F00D+y
B397: tcall 15
B398: set1  $1C
B39A: clr7  $53
B39C: mov1  $04BA,00,c
B39F: tcall 3
B3A0: tclr1 $E4BC
B3A3: clr1  $DF
B3A5: tcall 1
B3A6: sbc   a,(x)
B3A7: ret
B3A8: dbnz  y,$b399
B3AA: mul   ya
B3AB: and   a,$54
B3AD: mov   y,$B604
B3B0: pcall $CC
B3B2: bne   $b3b7
B3B4: eor   a,$2E
B3B6: mov   a,y
B3B7: tcall 0
B3B8: sbc   a,$2202+y
B3BB: push  psw
B3BC: nop
B3BD: beq   $b3af
B3BF: brk
B3C0: eor   a,$AA
B3C2: inc   $C5
B3C4: clr1  $0D
B3C6: bbc5  $34,$b3e5
B3C9: das   a
B3CA: mov1  c,$0E24,02
B3CD: dec   y
B3CE: bbs0  $51,$b3ac
B3D1: mov   a,$AAF1
B3D4: clrv
B3D5: bra   $b3c7
B3D7: beq   $b3fb
B3D9: cbne  $DD,$b3de
B3DC: sbc   a,$FE33+y
B3DF: tcall 13
B3E0: dec   x
B3E1: nop
B3E2: bbc0  $35,$b401
B3E5: clr5  $1E
B3E7: clr0  $FC
B3E9: ei
B3EA: and   a,$32+x
B3EC: clr1  $12
B3EE: mov1  c,$00DF,00
B3F1: tcall 1
B3F2: bbc0  $CC,$b406
B3F5: clr1  $FE
B3F7: sbc   a,$320F+y
B3FA: mov   a,y
B3FB: set6  $20
B3FD: brk
B3FE: clrp
B3FF: mov   y,$CFB6
B402: bbc0  $32,$b422
B405: cbne  $23+x,$b406
B408: sleep
B409: mov1  c,$0033,01
B40C: asl   $F3BE
B40F: nop
B410: set3  $22
B412: mov1  c,$1CDC,05
B415: and   a,$35+x
B417: asl   a
B418: inc   $34+x
B41A: setp
B41B: mov1  c,$0EE1,07
B41E: tcall 14
B41F: or    a,$CC5B+y
B422: bbc0  $21,$b3db
B425: dec   x
B426: tcall 13
B427: clr0  $11
B429: bra   $b419
B42B: sleep
B42C: mov   x,#$BA
B42E: bbs1  $3E,$b41f
B431: bpl   $b405
B433: tcall 0
B434: tset1 $BA32
B437: rol   $AF+x
B439: or    a,$10F1+y
B43C: push  psw
B43D: tcall 0
B43E: clrv
B43F: mov1  c,$17E1,01
B442: decw  $EE
B444: cmp   y,$E4B1
B447: bpl   $b3f3
B449: bpl   $b46a
B44B: cmp   x,$B0F0
B44E: clr2  $4D
B450: bpl   $b40c
B452: stop
B453: bne   $b476
B455: bmi   $b475
B457: cbne  $11+x,$b48e
B45A: mov1  c,$1DEC,04
B45D: clrp
B45E: eor   a,(x)
B45F: tset1 $1FED
B462: or    a,$ECAA+x
B465: notc
B466: bbc0  $34,$b488
B469: das   a
B46A: tcall 2
B46B: or1   c,!($13AA,01)
B46E: sleep
B46F: tcall 11
B470: bra   $b481
B472: cmp   a,$0C+x
B474: set5  $AA
B476: set0  $ED
B478: tcall 13
B479: eor   a,(x)
B47A: rol   $4FFD
B47D: mov   $FEBA,a
B480: beq   $b4b3
B482: nop
B483: sleep
B484: tcall 1
B485: setp
B486: mov   sp,x
B487: set5  $B9
B489: di
B48A: bbc1  $DD,$b4af
B48D: bra   $b4b5
B48F: rol   $E2BA
B492: set1  $11
B494: dec   x
B495: mov   a,y
B496: or    a,$31+x
B498: mov   a,y
B499: sbc   a,$EFDD+y
B49C: clr0  $32
B49E: beq   $b4ae
B4A0: notc
B4A1: set1  $A6
B4A3: pop   x
B4A4: mov   a,$2F62+y
B4A7: pop   y
B4A8: stop
B4A9: dbnz  y,$b477
B4AB: movw  ya,$04
B4AD: bmi   $b48b
B4AF: mul   ya
B4B0: eor   a,$EF4E
B4B3: daa   a
B4B4: movw  ya,$E3
B4B6: setp
B4B7: tset1 $11F0
B4BA: clrv
B4BB: stop
B4BC: sleep
B4BD: sbc   a,$4145+y
B4C0: bbs7  $22,$b4d1
B4C3: brk
B4C4: mov   y,$BAD0
B4C7: tcall 0
B4C8: set7  $2F
B4CA: mov   y,a
B4CB: tcall 2
B4CC: brk
B4CD: daa   a
B4CE: or    a,$BA+x
B4D0: tcall 15
B4D1: clrp
B4D2: rol   $E2
B4D4: tcall 0
B4D5: bne   $b516
B4D7: clr0  $B6
B4D9: bbc1  $0E,$b4b9
B4DC: beq   $b4f0
B4DE: set2  $ED
B4E0: tcall 13
B4E1: movw  ya,$10
B4E3: mov   y,a
B4E4: push  a
B4E5: clr7  $25
B4E7: mov   x,#$F0
B4E9: bmi   $b485
B4EB: tcall 6
B4EC: bne   $b4ba
B4EE: mov   $5305,y
B4F1: asl   $C0+x
B4F3: sbc   a,(x)
B4F4: mov   a,$0F41+x
B4F7: bpl   $b4f8
B4F9: mov   a,y
B4FA: clr7  $55
B4FC: movw  ya,$FF
B4FE: sleep
B4FF: clr1  $2C
B501: di
B502: bbc0  $32,$b503
B505: mov1  c,$09CE,06
B508: eor   a,$F063
B50B: clr7  $ED
B50D: di
B50E: mov1  c,$1E40,07
B511: daa   a
B512: and   a,$70
B514: brk
B515: stop
B516: mov   sp,x
B517: mov1  c,$06C3,02
B51A: asl   a
B51B: cmp   x,$EF
B51D: tcall 14
B51E: clrp
B51F: bvc   $b4d7
B521: sleep
B522: nop
B523: tcall 2
B524: bbc1  $ED,$b4f5
B527: tcall 0
B528: bpl   $b4d4
B52A: bpl   $b546
B52C: mov   a,$BE23+y
B52F: asl   $0E+x
B531: eor   a,($BA)+y
B533: stop
B534: bbc5  $33,$b532
B537: tset1 $35E4
B53A: mov   y,$B6
B53C: mov   $CE+x,y
B53E: tcall 0
B53F: and   a,$21
B541: das   a
B542: eor   a,$3B
B544: mov1  c,$0235,01
B547: bbs6  $1E,$b568
B54A: brk
B54B: sbc   a,$30
B54D: movw  ya,$21
B54F: jmp   ($F0C0+x)
B552: nop
B553: tcall 2
B554: nop
B555: clrv
B556: mov1  c,$0E14,00
B559: daa   a
B55A: set1  $1F
B55C: tset1 $A14B
B55F: movw  ya,$13
B561: tcall 1
B562: call  $E3DC
B565: set0  $00
B567: nop
B568: sbc   a,$EEF0+y
B56B: tcall 0
B56C: tcall 4
B56D: tcall 15
B56E: bbc0  $FE,$b570
B571: sbc   a,(x)
B572: decw  $C1
B574: clr0  $C0
B576: eor   a,(x)
B577: jmp   $43ED
B57A: movw  ya,$E0
B57C: clr7  $FF
B57E: cbne  $E3,$b5a5
B581: mov   a,y
B582: tset1 $11BA
B585: bbc0  $EE,$b598
B588: push  a
B589: bne   $b58f
B58B: clr0  $BA
B58D: tcall 1
B58E: mov   ($44),($DF)
B591: tcall 0
B592: sleep
B593: sleep
B594: tcall 0
B595: movw  ya,$40
B597: dbnz  y,$b58c
B599: bpl   $b56b
B59B: bbs0  $1C,$b58c
B59E: movw  ya,$30
B5A0: mov   a,$23+x
B5A2: mov   $E1+x,y
B5A4: tcall 4
B5A5: bpl   $b586
B5A7: movw  ya,$A1
B5A9: bbs3  $3B,$b58b
B5AC: bbc0  $2E,$b581
B5AF: bbc0  $BA,$b5a0
B5B2: mul   ya
B5B3: bbc0  $31,$b5b4
B5B6: tcall 13
B5B7: tcall 2
B5B8: asl   a
B5B9: movw  ya,$22
B5BB: stop
B5BC: mov   $2E,a
B5BE: mov   y,a
B5BF: clrp
B5C0: clr7  $12
B5C2: mov1  c,$0F0E,02
B5C5: asl   $AF
B5C7: tcall 15
B5C8: bbs1  $53,$b5e5
B5CB: mov1  c,$14CE,01
B5CE: clrp
B5CF: mov   a,y
B5D0: or    a,$B1EE
B5D3: jmp   $20AA
B5D6: bbc1  $DF,$b5c7
B5D9: mov   y,a
B5DA: and   a,$31
B5DC: not1  $11BA,07
B5DF: bbs1  $FE,$b5c0
B5E2: or    a,$CB42+x
B5E5: daa   a
B5E6: sbc   a,(x)
B5E7: tcall 10
B5E8: eor   a,$F00C+x
B5EB: inc   x
B5EC: pop   x
B5ED: and   a,$B6DF
B5F0: bbs0  $50,$b5f0
B5F3: stop
B5F4: clrv
B5F5: nop
B5F6: nop
B5F7: bbs1  $B6,$b62c
B5FA: tset1 $03DC
B5FD: set2  $EF
B5FF: stop
B600: pop   y
B601: movw  ya,$21
B603: bpl   $b5f6
B605: cbne  $F3+x,$b657
B608: dbnz  y,$b60a
B60A: mov1  c,$06E1,00
B60D: dec   x
B60E: stop
B60F: tcall 3
B610: cmp   x,$03CD
B613: sbc   a,$21F1+y
B616: asl   $D1
B618: eor   a,$E2EE+x
B61B: cbne  $B6,$b61e
B61E: pcall $AA
B620: mov   a,$0054
B623: bpl   $b631
B625: sbc   a,(x)
B626: tcall 12
B627: bpl   $b5f7
B629: stop
B62A: bbc0  $32,$b65a
B62D: mul   ya
B62E: mov1  c,$1202,06
B631: bvc   $b62d
B633: pop   x
B634: and   a,$45
B636: dec   x
B637: movw  ya,$DC
B639: clr0  $5F
B63B: tcall 13
B63C: set0  $DE
B63E: tcall 3
B63F: dec   x
B640: mov1  c,$03D2,01
B643: nop
B644: dbnz  y,$b635
B646: bbc1  $30,$b607
B649: clr5  $0E
B64B: cbne  $EE+x,$b63d
B64E: bbc0  $31,$b63e
B651: or    a,$AA+x
B653: cbne  $B0+x,$b658
B656: clrc
B657: cbne  $E1+x,$b64d
B65A: cmp   a,$0CCA+y
B65D: sleep
B65E: bbc1  $F1,$b641
B661: dbnz  y,$b674
B663: bmi   $b61b
B665: tcall 2
B666: mov   a,$1E+x
B668: mov   $0110,y
B66B: and   a,$0E
B66D: movw  ya,$20
B66F: asl   $13+x
B671: beq   $b657
B673: tclr1 $10EB
B676: movw  ya,$02
B678: clr0  $0F
B67A: pop   x
B67B: bbc0  $5E,$b66d
B67E: clrv
B67F: movw  ya,$D2
B681: tcall 4
B682: dec   x
B683: tcall 0
B684: clrv
B685: tcall 0
B686: tcall 1
B687: bpl   $b643
B689: cbne  $E3+x,$b6cd
B68C: dec   x
B68D: brk
B68E: sleep
B68F: tcall 0
B690: tcall 3
B691: sbc   a,$FF54+y
B694: clr7  $30
B696: brk
B697: tset1 $F4CD
B69A: movw  ya,$FE
B69C: mov   a,(x)+
B69D: bbs1  $3E,$b6bf
B6A0: daa   a
B6A1: mov   a,$1C+x
B6A3: sbc   a,$24ED+y
B6A6: jmp   ($23C1+x)
B6A9: bra   $b697
B6AB: das   a
B6AC: sbc   a,$4312+y
B6AF: jmp   ($32D2+x)
B6B2: jmp   ($FC10+x)
B6B5: mov1  c,$15F7,03
B6B8: mov   a,y
B6B9: mov   sp,x
B6BA: mov   y,a
B6BB: eor   a,$F502+x
B6BE: movw  ya,$0E
B6C0: notc
B6C1: tcall 5
B6C2: tset1 $F1C3
B6C5: tcall 3
B6C6: rol   $C1BA
B6C9: set0  $20
B6CB: dbnz  y,$b6be
B6CD: brk
B6CE: tcall 2
B6CF: cmp   y,$0EB6
B6D2: pop   x
B6D3: mov   a,y
B6D4: bbc0  $3F,$b6a4
B6D7: clr7  $00
B6D9: mov1  c,$0CF3,01
B6DC: tcall 2
B6DD: pop   y
B6DE: set5  $34
B6E0: cbne  $FE,$b69d
B6E3: nop
B6E4: bpl   $b6f5
B6E6: daa   a
B6E7: or    a,$EA41+x
B6EA: nop
B6EB: sbc   a,(x)
B6EC: cbne  $C3+x,$b72c
B6EF: mov   a,y
B6F0: or    a,$35+x
B6F2: push  a
B6F3: mov   $22AA,y
B6F6: bbs0  $1B,$b708
B6F9: tcall 0
B6FA: mov   a,$EC41
B6FD: mov1  c,$1EEF,00
B700: tcall 15
B701: clr0  $D0
B703: tcall 5
B704: push  a
B705: tcall 14
B706: movw  ya,$FF
B708: tcall 15
B709: set1  $0D
B70B: cbne  $32+x,$b71e
B70E: beq   $b6b6
B710: stop
B711: clrv
B712: set1  $30
B714: bbs1  $21,$b6e7
B717: bbs1  $BA,$b707
B71A: clr0  $5E
B71C: daa   a
B71D: bbc0  $10,$b71c
B720: clr6  $B6
B722: bbc7  $20,$b743
B725: beq   $b73b
B727: clrp
B728: jmp   ($B6EC+x)
B72B: bcs   $b72d
B72D: nop
B72E: clrp
B72F: beq   $b732
B731: tcall 1
B732: brk
B733: sbc   a,(x)
B734: bbc6  $30,$b756
B737: mov   y,$A1
B739: set1  $0E
B73B: clr1  $BA
B73D: push  psw
B73E: or    a,$01
B740: stop
B741: stop
B742: bbc0  $EE,$b706
B745: movw  ya,$34
B747: inc   x
B748: tset1 $E100
B74B: set0  $0E
B74D: nop
B74E: mov1  c,$1400,00
B751: tcall 2
B752: sleep
B753: bne   $b751
B755: beq   $b7bc
B757: sbc   a,(x)
B758: eor   a,$1F
B75A: movw  $16,ya
B75C: bbc2  $EE,$b74f
B75F: and   a,$BA+x
B761: tcall 12
B762: tcall 1
B763: asl   $31
B765: brk
B766: clr6  $34
B768: push  psw
B769: movw  ya,$CF
B76B: clrp
B76C: cmp   x,$CE23
B76F: bbs7  $40,$b7a0
B772: movw  ya,$0F
B774: di
B775: or    a,$3F
B777: mov   a,y
B778: tcall 15
B779: bbc1  $1E,$b736
B77C: cmp   x,$01EF
B77F: jmp   ($FE31+x)
B782: di
B783: bbc0  $BA,$b7a6
B786: cmp   x,$DC
B788: mov   a,$22
B78A: brk
B78B: tset1 $A6F0
B78E: mov   sp,x
B78F: set1  $2E
B791: set5  $33
B793: clr1  $53
B795: nop
B796: movw  ya,$02
B798: mov   x,#$22
B79A: lsr   a
B79B: tcall 14
B79C: and   a,$FF
B79E: pop   y
B79F: movw  ya,$E0
B7A1: tcall 1
B7A2: tcall 4
B7A3: pop   y
B7A4: bbs7  $FF,$b7c8
B7A7: rol   a
B7A8: sbc   a,(x)
B7A9: mov   x,sp
B7AA: mov   a,$FC1D+y
B7AD: pop   x
B7AE: or    a,$FD30
B7B1: sbc   a,$22F1+y
B7B4: brk
B7B5: set0  $4E
B7B7: mov   $E0E1,y
B7BA: sbc   a,(x)
B7BB: eor   a,$3C
B7BD: tcall 14
B7BE: clr0  $E2
B7C0: eor   a,$0B
B7C2: inc   $BA
B7C4: setp
B7C5: beq   $b7a7
B7C7: nop
B7C8: clr0  $21
B7CA: mov   $01+x,y
B7CC: adc   a,$3E25+y
B7CF: bbs6  $10,$b7c0
B7D2: or    a,(x)
B7D3: bbc3  $F9,$b77c
B7D6: stop
B7D7: tcall 15
B7D8: clrp
B7D9: brk
B7DA: beq   $b7cf
B7DC: cmp   y,$BA02
B7DF: dbnz  y,$b7a5
B7E1: set2  $1C
B7E3: tset1 $02EF
B7E6: clrp
B7E7: mov1  c,$1E21,00
B7EA: cbne  $02+x,$b80d
B7ED: pop   x
B7EE: tcall 0
B7EF: clrp
B7F0: sbc   a,$3123+y
B7F3: notc
B7F4: tcall 14
B7F5: bbc1  $ED,$b7d9
B7F8: set2  $B6
B7FA: jmp   ($E0DC+x)
B7FD: bbc0  $33,$b7ec
B800: beq   $b825
B802: sbc   a,(x)
B803: clr1  $B9
B805: tcall 0
B806: inc   x
B807: mov   $3F56+x,a
B80A: mov   $AA+y,x
B80C: or    a,$12+x
B80E: stop
B80F: bpl   $b823
B811: cbne  $F0+x,$b852
B814: sbc   a,(x)
B815: mov   y,$F5
B817: cmp   a,$BD
B819: tcall 0
B81A: bra   $b83b
B81C: movw  ya,$A6
B81E: sbc   a,$2F74+y
B821: tcall 6
B822: mov1  $0F90,07,c
B825: cmp   a,$3BA6+x
B828: tcall 10
B829: and   a,$DB+x
B82B: tcall 12
B82C: clr2  $31
B82E: brk
B82F: sbc   a,(x)
B830: tcall 12
B831: set2  $20
B833: nop
B834: tcall 14
B835: push  a
B836: dec   y
B837: or    a,$BA+x
B839: tcall 14
B83A: nop
B83B: stop
B83C: nop
B83D: jmp   ($261F+x)
B840: inc   a
B841: mov   (x),a
B842: pop   x
B843: bbs1  $30,$b855
B846: mov   a,y
B847: bne   $b86c
B849: bmi   $b7f5
B84B: tset1 $25B2
B84E: cmp   x,$13EE
B851: bpl   $b840
B853: mov1  c,$1D11,00
B856: tcall 14
B857: eor   a,$CC0E
B85A: clr7  $42
B85C: mov1  c,$1F1E,05
B85F: and   a,$A930+x
B862: clrp
B863: ret
B864: or    a,$1FB6+x
B867: stop
B868: clrp
B869: pop   y
B86A: clr7  $54
B86C: push  psw
B86D: tcall 11
B86E: sbc   a,(x)
B86F: bra   $b83b
B871: and   a,$CE6E+x
B874: tcall 15
B875: mov   a,(x)+
B876: jmp   ($1FBA+x)
B879: clr1  $0E
B87B: mov   a,(x)+
B87C: bbc0  $F0,$b880
B87F: bra   $b82b
B881: stop
B882: clr0  $CF
B884: tcall 14
B885: clrp
B886: bbs2  $CD,$b83d
B889: clr5  $02
B88B: cbne  $DD,$b8b2
B88E: bra   $b860
B890: nop
B891: and   a,$BA
B893: asl   $24E0
B896: bmi   $b885
B898: tcall 14
B899: tcall 13
B89A: or    a,$6BBA+x
B89D: mov1  $1314,07,c
B8A0: clr0  $0B
B8A2: beq   $b8c5
B8A4: mov1  c,$0CE5,07
B8A7: dec   y
B8A8: clr3  $C2
B8AA: or    a,$AC1E
B8AD: sbc   a,(x)
B8AE: bcs   $b905
B8B0: rol   $33F0
B8B3: bbc7  $2D,$b891
B8B6: mov1  c,$1550,06
B8B9: clr1  $EC
B8BB: pop   a
B8BC: or    a,$3E+x
B8BE: tcall 1
B8BF: mov1  c,$1E50,05
B8C2: mov   a,(x)
B8C3: tset1 $52BD
B8C6: push  x
B8C7: clr0  $BA
B8C9: pop   y
B8CA: mov   $51,a
B8CC: mov   y,$10+x
B8CE: tcall 15
B8CF: or    a,$0E
B8D1: sbc   a,$10FE+y
B8D4: mov   y,a
B8D5: clr6  $21
B8D7: notc
B8D8: nop
B8D9: and   a,$BA
B8DB: jmp   ($E1CD+x)
B8DE: bbc1  $20,$b8e0
B8E1: stop
B8E2: jmp   ($01BA+x)
B8E5: beq   $b906
B8E7: nop
B8E8: and   a,$FD
B8EA: das   a
B8EB: and   a,$BA
B8ED: set2  $FD
B8EF: cbne  $01+x,$b912
B8F2: tcall 1
B8F3: cbne  $B0,$b8b0
B8F6: bbc0  $0F,$b938
B8F9: stop
B8FA: clr7  $EE
B8FC: set1  $4E
B8FE: movw  ya,$CE
B900: tcall 14
B901: and   a,$3F+x
B903: mov   $E2+x,y
B905: tcall 1
B906: clr7  $A6
B908: cmp   a,($5E+x)
B90A: mov   x,#$D2
B90C: cmp   a,(x)
B90D: inc   x
B90E: mov   x,#$DF
B910: sbc   a,(x)
B911: clr7  $20
B913: nop
B914: eor   a,$F0
B916: tcall 0
B917: cmp   x,$A600
B91A: mov   a,y
B91B: clrv
B91C: bbc1  $53,$b8ca
B91F: bbs6  $2B,$b901
B922: sbc   a,$3F55+y
B925: bne   $b925
B927: pop   y
B928: brk
B929: tcall 0
B92A: tcall 1
B92B: movw  ya,$F1
B92D: set0  $0C
B92F: sleep
B930: set1  $4F
B932: sleep
B933: tcall 0
B934: mov1  c,$04DE,07
B937: clr2  $DA
B939: clrv
B93A: or    a,$DA5F+y
B93D: movw  ya,$EF
B93F: clr0  $31
B941: tcall 2
B942: mov   x,#$C0
B944: setp
B945: clrp
B946: mov1  c,$1F10,06
B949: mov   a,$20
B94B: movw  ya,$53
B94D: tcall 4
B94E: stop
B94F: mov1  c,$1D00,07
B952: bbc5  $21,$b963
B955: set3  $2E
B957: mov   $B6,a
B959: bpl   $b947
B95B: jmp   ($D3EC+x)
B95E: set1  $12
B960: tclr1 $EFCA
B963: and   a,$0F+x
B965: di
B966: tcall 15
B967: tcall 0
B968: tcall 2
B969: cmp   x,$C2BA
B96C: clrv
B96D: mul   ya
B96E: bbs2  $3D,$b980
B971: clrp
B972: bcs   $b91e
B974: or    a,$3E20
B977: daa   a
B978: mov   a,$310B+x
B97B: ror   $BA
B97D: mul   ya
B97E: or    a,$10
B980: brk
B981: jmp   ($F101+x)
B984: di
B985: movw  ya,$31
B987: asl   a
B988: set0  $F1
B98A: set0  $2D
B98C: stop
B98D: nop
B98E: movw  ya,$E2
B990: clrp
B991: asl   $0E42
B994: bbc6  $0F,$b997
B997: mov1  c,$1110,00
B99A: dbnz  y,$b99c
B99C: jmp   $E5EB
B99F: clr1  $AA
B9A1: mul   ya
B9A2: bbc7  $31,$b9a1
B9A5: dec   y
B9A6: mov   $EB57+x,a
B9A9: sbc   a,$10FE+y
B9AC: push  psw
B9AD: mov   a,$54+x
B9AF: mov   y,a
B9B0: mov   a,y
B9B1: tcall 0
B9B2: movw  ya,$1E
B9B4: bne   $b9ca
B9B6: clrp
B9B7: dbnz  y,$b9c7
B9B9: sleep
B9BA: bbs0  $AA,$b9fe
B9BD: cmp   x,$13D0
B9C0: bpl   $b980
B9C2: clr0  $2E
B9C4: mov1  c,$0010,01
B9C7: mov   x,#$E3
B9C9: set1  $33
B9CB: rol   $AABA
B9CE: mov   a,$EF33+y
B9D1: asl   $01
B9D3: tcall 1
B9D4: set7  $31
B9D6: mov1  c,$100D,07
B9D9: tcall 2
B9DA: push  psw
B9DB: mov   x,#$24
B9DD: clrc
B9DE: ei
B9DF: movw  ya,$02
B9E1: dbnz  y,$ba23
B9E3: dec   x
B9E4: tcall 12
B9E5: bbs1  $FF,$b9e7
B9E8: movw  ya,$0F
B9EA: tcall 2
B9EB: set2  $CE
B9ED: tcall 14
B9EE: jmp   ($2000+x)
B9F1: movw  ya,$00
B9F3: bbs0  $DD,$b9d8
B9F6: bvc   $b9e3
B9F8: bbc0  $42,$b9b1
B9FB: clr1  $0D
B9FD: mov   $00,y
B9FF: mov   x,#$E5
BA01: bbs3  $1F,$b9be
BA04: bmi   $ba14
BA06: clrv
BA07: tcall 14
BA08: or    a,$5E+x
BA0A: mov   y,$01
BA0C: movw  ya,$C3
BA0E: and   a,$FF1B
BA11: tcall 0
BA12: mov   a,$0F
BA14: notc
BA15: mov1  c,$1036,03
BA18: mov   y,$E3
BA1A: tcall 15
BA1B: brk
BA1C: notc
BA1D: and   a,$1FBA+y
BA20: di
BA21: bbs0  $0E,$ba44
BA24: push  y
BA25: ei
BA26: mov   a,$FFBA+x
BA29: jmp   ($04FE+x)
BA2C: clr1  $FD
BA2E: di
BA2F: tcall 2
BA30: sbc   a,$010E+y
BA33: call  $E4CB
BA36: bbs2  $FE,$ba29
BA39: sbc   a,(x)
BA3A: cmp   x,$1E11
BA3D: bbc5  $43,$ba5c
BA40: push  psw
BA41: pop   a
BA42: movw  ya,$03
BA44: stop
BA45: bpl   $ba64
BA47: tcall 15
BA48: set1  $CD
BA4A: tcall 14
BA4B: movw  ya,$33
BA4D: clr1  $CE
BA4F: bbs6  $2C,$ba61
BA52: tcall 6
BA53: daa   a
BA54: mov1  c,$12B4,00
BA57: stop
BA58: call  $F111
BA5B: cbne  $12+x,$ba14
BA5E: clr0  $0C
BA60: inc   $25+x
BA62: set3  $F1
BA64: tcall 1
BA65: mov   a,y
BA66: movw  ya,$11
BA68: cbne  $10,$ba5b
BA6B: clr7  $22
BA6D: mov   y,$FF+x
BA6F: mov1  c,$0622,01
BA72: jmp   ($F3AD+x)
BA75: mov   x,a
BA76: mov   y,$BA02
BA79: clr0  $11
BA7B: brk
BA7C: pop   y
BA7D: stop
BA7E: set0  $24
BA80: mov   y,a
BA81: sbc   a,(x)
BA82: mov   $23F0,x
BA85: tcall 2
BA86: bra   $ba53
BA88: sbc   a,$53+x
BA8A: sbc   a,(x)
BA8B: cbne  $EA,$ba2e
BA8E: and   a,$3110+y
BA91: asl   $BF+x
BA93: mov1  c,$0102,06
BA96: tcall 2
BA97: clrp
BA98: nop
BA99: mov   x,#$E4
BA9B: eor   a,$0CAA+x
BA9E: inc   $E7+x
BAA0: cmp   a,$10C9
BAA3: bpl   $baa6
BAA5: sbc   a,(x)
BAA6: and   a,$CB74+x
BAA9: mov   a,(x)+
BAAA: brk
BAAB: mov   a,y
BAAC: pcall $CD
BAAE: movw  ya,$24
BAB0: sleep
BAB1: pop   y
BAB2: cmp   x,$1122
BAB5: bne   $bab7
BAB7: movw  ya,$FE
BAB9: clr0  $41
BABB: dec   y
BABC: daa   a
BABD: and   a,$DF00+y
BAC0: movw  ya,$FF
BAC2: bpl   $baf6
BAC4: cmp   x,$01DF
BAC7: beq   $bada
BAC9: sbc   a,$0F21+y
BACC: beq   $bac1
BACE: cmp   a,$0A
BAD0: das   a
BAD1: set0  $BA
BAD3: clr7  $EE
BAD5: tcall 0
BAD6: clrp
BAD7: stop
BAD8: clrv
BAD9: tcall 15
BADA: set2  $BA
BADC: rol   a
BADD: pop   x
BADE: set0  $12
BAE0: stop
BAE1: tset1 $0022
BAE4: sbc   a,$12DF+y
BAE7: cmp   x,$E1CC
BAEA: bbs2  $22,$bafc
BAED: sbc   a,$0EFF+y
BAF0: clrv
BAF1: tcall 0
BAF2: clr1  $3E
BAF4: mul   ya
BAF5: set0  $A6
BAF7: mov   $22,y
BAF9: eor   a,$DC32+x
BAFC: tcall 1
BAFD: tcall 1
BAFE: mov   y,a
BAFF: movw  ya,$00
BB01: tcall 0
BB02: clr0  $10
BB04: mov   x,#$E2
BB06: bbs2  $1E,$bab3
BB09: inc   $F4
BB0B: and1  c,!($15F1,01)
BB0E: tcall 11
BB0F: jmp   ($AA0E+x)
BB12: nop
BB13: mul   ya
BB14: or    a,$52
BB16: jmp   ($0FBD+x)
BB19: and   a,(x)
BB1A: sbc   a,(x)
BB1B: asl   a
BB1C: pop   x
BB1D: cmp   a,$CE1F+x
BB20: mov   x,#$00
BB22: cmp   x,$14AA
BB25: nop
BB26: di
BB27: or    a,$FA
BB29: dbnz  y,$bb7d
BB2B: mov   a,$0FAA
BB2E: mov   y,a
BB2F: bra   $bb13
BB31: bbs1  $FE,$baf2
BB34: or    a,$AA
BB36: lsr   $23+x
BB38: beq   $baee
BB3A: rol   $0E+x
BB3C: bbc2  $FC,$bae9
BB3F: clr5  $22
BB41: jmp   ($EE3F+x)
BB44: tcall 0
BB45: jmp   ($BAC1+x)
BB48: clr0  $1E
BB4A: brk
BB4B: beq   $bb61
BB4D: asl   $DE+x
BB4F: bbc1  $AA,$bbd1
BB52: inc   a
BB53: or    a,(x)
BB54: clrv
BB55: ei
BB56: jmp   ($5411+x)
BB59: movw  ya,$1F
BB5B: cbne  $F2+x,$bb7f
BB5E: mov   y,a
BB5F: clr6  $33
BB61: tset1 $DFBA
BB64: set1  $3E
BB66: stop
BB67: di
BB68: and   a,$3D
BB6A: dbnz  y,$bb16
BB6C: tcall 12
BB6D: or    a,$A93F+y
BB70: cmp   a,$9F6C
BB73: or    a,$D0AA
BB76: mov   a,$4D+x
BB78: mov   $12+x,y
BB7A: bvc   $bb5b
BB7C: or    a,$B6
BB7E: set1  $0F
BB80: sleep
BB81: brk
BB82: stop
BB83: clrv
BB84: and   a,$AA5F
BB87: tcall 15
BB88: clr1  $EF
BB8A: tcall 14
BB8B: tcall 15
BB8C: tcall 15
BB8D: clr2  $10
BB8F: mov1  c,$11CB,07
BB92: bbc1  $00,$bb5f
BB95: and   a,$DE21+x
BB98: movw  ya,$EE
BB9A: set1  $40
BB9C: daa   a
BB9D: mov   a,$FF
BB9F: beq   $bbbe
BBA1: movw  ya,$0F
BBA3: and   a,$F0+x
BBA5: tcall 13
BBA6: jmp   ($F00F+x)
BBA9: mov   $46B6,a
BBAC: lsr   $0FDD
BBAF: set7  $35
BBB1: asl   $BA00
BBB4: cmp   x,$D1
BBB6: tcall 14
BBB7: tcall 3
BBB8: push  a
BBB9: cbne  $13+x,$bbfc
BBBC: mov1  c,$04EA,07
BBBF: bpl   $bb8e
BBC1: tcall 15
BBC2: tcall 3
BBC3: mov   y,a
BBC4: clr3  $AA
BBC6: push  x
BBC7: mov   $FF,a
BBC9: cmp   y,#$33
BBCB: and1  c,$1114,00
BBCE: set5  $0F
BBD0: bbs1  $42,$bc09
BBD3: cmp   a,$2421
BBD6: asl   $B6+x
BBD8: clrv
BBD9: tcall 4
BBDA: mov   y,$12D1
BBDD: clrp
BBDE: pop   y
BBDF: or    a,$AA+x
BBE1: inc   $BF+x
BBE3: tcall 2
BBE4: clr1  $31
BBE6: push  psw
BBE7: tcall 13
BBE8: tcall 1
BBE9: mov1  c,$1B1E,07
BBEC: mov   $44,a
BBEE: cmp   x,$CD
BBF0: mov   a,($3E+x)
BBF2: movw  ya,$2F
BBF4: stop
BBF5: mov   a,$1D+x
BBF7: mov   a,y
BBF8: clr1  $2F
BBFA: bbc7  $B6,$bc31
BBFD: tset1 $22F0
BC00: asl   $12DF
BC03: tcall 1
BC04: mov1  c,$02CA,02
BC07: clr1  $E2
BC09: mov   y,a
BC0A: clrp
BC0B: di
BC0C: nop
BC0D: sbc   a,$F1FD+y
BC10: tcall 15
BC11: and   a,$EE5F
BC14: set1  $DF
BC16: movw  ya,$03
BC18: mov   y,$4C30
BC1B: mov   $14,a
BC1D: sleep
BC1E: bra   $bbda
BC20: asl   $11F3
BC23: tcall 13
BC24: tcall 0
BC25: asl   $0032
BC28: mov1  c,$1EC6,00
BC2B: mov   y,$40F2
BC2E: or1   c,$1202,00
BC31: sbc   a,$F00F+y
BC34: bbs1  $10,$bc23
BC37: tcall 13
BC38: set1  $ED
BC3A: movw  ya,$5E
BC3C: tset1 $EF14
BC3F: bbc6  $5E,$bc2d
BC42: set0  $AA
BC44: tcall 2
BC45: bbs0  $11,$bc15
BC48: bbc1  $6B,$bbfa
BC4B: bbs0  $AA,$bcb0
BC4E: mov   y,$EFC1
BC51: clr2  $01
BC53: sleep
BC54: nop
BC55: movw  ya,$42
BC57: dbnz  y,$bc25
BC59: clr7  $33
BC5B: bpl   $bc4d
BC5D: stop
BC5E: mov1  c,$0FF0,03
BC61: not1  $14E5,01
BC64: sleep
BC65: or    (x),(y)
BC66: sleep
BC67: sbc   a,$3103+y
BC6A: cbne  $02+x,$bc8d
BC6D: bpl   $bc6d
BC6F: mul   ya
BC70: sbc   a,$00FE+y
BC73: tcall 4
BC74: clrv
BC75: or    a,$1F+x
BC77: bpl   $bc88
BC79: mov1  c,$01F2,00
BC7C: clrp
BC7D: or1   c,$05F2,02
BC80: brk
BC81: daa   a
BC82: mov1  c,$12FE,00
BC85: bmi   $bc66
BC87: mov   y,a
BC88: clr0  $44
BC8A: cmp   x,$AA
BC8C: notc
BC8D: bne   $bc2f
BC8F: eor   a,$5E+x
BC91: dbnz  y,$bcc2
BC93: mov   $E4BA,y
BC96: tcall 2
BC97: brk
BC98: stop
BC99: tset1 $2103
BC9C: mov   a,(x)+
BC9D: mov1  c,$1003,01
BCA0: tset1 $4FF3
BCA3: mov   y,a
BCA4: clrv
BCA5: tcall 14
BCA6: mov1  c,$135D,07
BCA9: bbc0  $AD,$bca1
BCAC: tcall 6
BCAD: mov   ($BA),($FE)
BCB0: tcall 15
BCB1: bbs1  $0D,$bcb2
BCB4: bpl   $bcb9
BCB6: bbc0  $EC,$bc73
BCB9: tset1 $1402
BCBC: notc
BCBD: tcall 11
BCBE: clr2  $2E
BCC0: dbnz  y,$bc7c
BCC2: di
BCC3: tcall 2
BCC4: call  $D001
BCC7: tcall 1
BCC8: cbne  $ED,$bc75
BCCB: bbs0  $7F,$bcc4
BCCE: clr0  $BA
BCD0: pop   x
BCD1: bbc1  $52,$bc8e
BCD4: brk
BCD5: tcall 11
BCD6: bbs2  $2A,$bcd8
BCD9: clrp
BCDA: beq   $bcde
BCDC: movw  ya,$11
BCDE: inc   x
BCDF: mov   a,(x)+
BCE0: mov   a,$0F+x
BCE2: clr1  $2C
BCE4: mov   sp,x
BCE5: movw  ya,$25
BCE7: tcall 3
BCE8: mov   x,#$FF
BCEA: and   a,$FF+x
BCEC: clrv
BCED: push  a
BCEE: movw  ya,$0F
BCF0: tcall 3
BCF1: cmp   x,$15D0
BCF4: clrp
BCF5: dec   y
BCF6: daa   a
BCF7: sbc   a,$33C1+y
BCFA: tcall 3
BCFB: dbnz  y,$bcda
BCFD: tcall 15
BCFE: set1  $F0
BD00: sbc   a,$0000+y
BD03: bbs1  $40,$bce1
BD06: tcall 11
BD07: beq   $bd3d
BD09: movw  ya,$2A
BD0B: clrv
BD0C: tcall 15
BD0D: tcall 0
BD0E: clr1  $0E
BD10: pop   x
BD11: set1  $BA
BD13: clrp
BD14: pop   y
BD15: tcall 15
BD16: set1  $02
BD18: stop
BD19: mov   $BA22,y
BD1C: bmi   $bd10
BD1E: pop   y
BD1F: clr0  $6D
BD21: mov   sp,x
BD22: bbc7  $01,$bccf
BD25: tcall 5
BD26: asl   $DF+x
BD28: clr0  $01
BD2A: set0  $0D
BD2C: tcall 2
BD2D: mov1  c,$103E,05
BD30: bbs0  $0F,$bd62
BD33: tcall 14
BD34: and   a,$AAFE
BD37: das   a
BD38: clr2  $3E
BD3A: mov   a,y
BD3B: daa   a
BD3C: bbc1  $42,$bd3d
BD3F: sbc   a,(x)
BD40: tcall 2
BD41: tset1 $E1CD
BD44: bpl   $bd24
BD46: or    a,$50+x
BD48: mov1  c,$05CD,07
BD4B: tcall 7
BD4C: mov   y,$13+x
BD4E: bpl   $bd1c
BD50: clrv
BD51: movw  ya,$11
BD53: beq   $bd69
BD55: cmp   x,$FF
BD57: mul   ya
BD58: mov   $5F+x,a
BD5A: movw  ya,$1E
BD5C: bpl   $bd3d
BD5E: tcall 0
BD5F: jmp   ($1131+x)
BD62: notc
BD63: movw  ya,$EF
BD65: and   a,$FF+x
BD67: mov   x,#$15
BD69: eor   a,$BD+x
BD6B: dbnz  y,$bd27
BD6D: push  psw
BD6E: bbc1  $20,$bd31
BD71: tcall 0
BD72: call  $AF1D
BD75: mov   (x),a
BD76: bbc6  $43,$bd99
BD79: brk
BD7A: pop   y
BD7B: tcall 15
BD7C: brk
BD7D: sleep
BD7E: mov1  c,$0E51,01
BD81: bpl   $bd63
BD83: tcall 15
BD84: brk
BD85: stop
BD86: daa   a
BD87: mov1  c,$0E06,02
BD8A: dbnz  y,$bdbc
BD8C: tcall 13
BD8D: or    a,$AD0F
BD90: sbc   a,(x)
BD91: mov   a,y
BD92: clr0  $36
BD94: not1  $05C0,03
BD97: tcall 4
BD98: dbnz  y,$bd44
BD9A: clrv
BD9B: bbs0  $1F,$bd9c
BD9E: tcall 3
BD9F: set0  $02
BDA1: inc   a
BDA2: mov1  c,$02F0,02
BDA5: clr0  $EF
BDA7: mov   (x)+,a
BDA8: tcall 3
BDA9: or1   c,$0A15,05
BDAC: and   a,$E0+x
BDAE: inc   y
BDAF: pop   y
BDB0: bbs2  $ED,$bd63
BDB3: or    a,$AA+x
BDB5: clr1  $01
BDB7: tset1 $FFF0
BDBA: bra   $bdab
BDBC: or    a,$43A6+x
BDBF: not1  $15BE,01
BDC2: bbc2  $00,$bdb6
BDC5: and   ($DE),($B6)
BDC8: bbc0  $10,$bdb8
BDCB: clr7  $56
BDCD: tset1 $BACD
BDD0: clrp
BDD1: clr1  $DF
BDD3: tcall 13
BDD4: tset1 $1022
BDD7: stop
BDD8: movw  ya,$12
BDDA: bpl   $bd9a
BDDC: bbs0  $1E,$bddd
BDDF: bbs2  $0F,$bd8c
BDE2: mul   ya
BDE3: cbne  $75+x,$be25
BDE6: mov   sp,x
BDE7: pop   x
BDE8: bbc0  $60,$bda1
BDEB: jmp   ($1F04+x)
BDEE: sleep
BDEF: clrp
BDF0: nop
BDF1: notc
BDF2: tcall 14
BDF3: sbc   a,$5E46+y
BDF6: sbc   (x),(y)
BDF7: set7  $24
BDF9: tcall 3
BDFA: inc   y
BDFB: tcall 0
BDFC: sbc   a,$C1ED+y
BDFF: tcall 2
BE00: mov   y,a
BE01: tcall 1
BE02: tcall 2
BE03: clr0  $0F
BE05: mov1  c,$0012,01
BE08: mov   y,$10F0
BE0B: mov   a,($31)+y
BE0D: subw  ya,$AA
BE0F: set2  $7D
BE11: mov   $AD+x,a
BE13: beq   $be84
BE15: or    a,$BAFF+y
BE18: pop   y
BE19: tcall 0
BE1A: jmp   ($2F10+x)
BE1D: bne   $be35
BE1F: asl   a
BE20: movw  ya,$CC
BE22: bbc7  $54,$be44
BE25: pop   x
BE26: clr6  $3D
BE28: tcall 0
BE29: mov1  c,$03F4,05
BE2C: bbc3  $19,$be0d
BE2F: clrv
BE30: or    a,$22
BE32: movw  ya,$10
BE34: dbnz  y,$bdf7
BE36: clr0  $0E
BE38: clr2  $FE
BE3A: daa   a
BE3B: mov1  c,$1F02,07
BE3E: mov   $2E64,a
BE41: dec   y
BE42: mov   a,(x)+
BE43: jmp   ($10BA+x)
BE46: set0  $32
BE48: dec   x
BE49: mov   $02,y
BE4B: set2  $00
BE4D: mov1  c,$0ED1,07
BE50: tcall 1
BE51: tcall 3
BE52: dbnz  y,$be30
BE54: bbs1  $24,$be0d
BE57: bbc1  $1D,$be4a
BE5A: tcall 0
BE5B: bbs0  $2F,$be3a
BE5E: clr0  $B6
BE60: bra   $be43
BE62: tcall 0
BE63: bpl   $be82
BE65: di
BE66: clr0  $0F
BE68: sbc   a,(x)
BE69: notc
BE6A: bbc7  $55,$be9a
BE6D: subw  ya,$D6
BE6F: push  x
BE70: mov   $B6,y
BE72: tcall 0
BE73: clr0  $FD
BE75: sleep
BE76: eor   a,$21
BE78: mov   y,$B6DF
BE7B: eor   a,$D03F
BE7E: stop
BE7F: clrv
BE80: bra   $be80
BE82: set0  $AA
BE84: clrp
BE85: mov   x,#$F2
BE87: tcall 0
BE88: nop
BE89: bra   $beaa
BE8B: set0  $B6
BE8D: nop
BE8E: dbnz  y,$be7f
BE90: nop
BE91: clr0  $42
BE93: inc   y
BE94: tcall 13
BE95: sbc   a,$1023+y
BE98: mov   y,a
BE99: clrv
BE9A: and   a,$FE+x
BE9C: clrv
BE9D: asl   $75AA
BEA0: tcall 2
BEA1: mov   x,sp
BEA2: mov   a,y
BEA3: cmp   a,($1F+x)
BEA5: xcn   a
BEA6: beq   $be62
BEA8: nop
BEA9: set2  $0B
BEAB: set6  $03
BEAD: beq   $bed0
BEAF: asl   a
BEB0: movw  ya,$CC
BEB2: eor   a,$D030+x
BEB5: sleep
BEB6: beq   $beba
BEB8: bpl   $be74
BEBA: stop
BEBB: clr0  $F2
BEBD: bpl   $bea8
BEBF: set7  $55
BEC1: cmp   x,$B6
BEC3: asl   $BF+x
BEC5: set0  $0E
BEC7: cbne  $02+x,$bf0d
BECA: tcall 2
BECB: movw  ya,$E2
BECD: stop
BECE: daa   a
BECF: bbs3  $3E,$be9e
BED2: tcall 0
BED3: bmi   $be7f
BED5: mov   a,$04
BED7: dec   y
BED8: cbne  $00,$becd
BEDB: stop
BEDC: bbc7  $B6,$bf13
BEDF: tclr1 $E0CB
BEE2: clr7  $32
BEE4: asl   $B6E0
BEE7: tcall 1
BEE8: bbc7  $32,$bee7
BEEB: daa   a
BEEC: clr0  $10
BEEE: dbnz  y,$beaa
BEF0: tcall 0
BEF1: bbc0  $00,$bee2
BEF4: tset1 $2402
BEF7: notc
BEF8: movw  ya,$0E
BEFA: clrp
BEFB: clr0  $0F
BEFD: mov   y,a
BEFE: tcall 13
BEFF: and   a,$AA1E+y
BF02: mov   $FD+y,x
BF04: bbs0  $57,$bec2
BF07: clr5  $71
BF09: cbne  $AA,$bef9
BF0C: mul   ya
BF0D: bpl   $bf51
BF0F: eor   a,$DC+x
BF11: das   a
BF12: tcall 0
BF13: mov1  c,$0D55,07
BF16: bbc5  $20,$bf15
BF19: clr1  $1F
BF1B: beq   $bed7
BF1D: clr0  $0F
BF1F: sleep
BF20: push  psw
BF21: clr0  $32
BF23: push  a
BF24: mov   $B2B6,y
BF27: tcall 1
BF28: brk
BF29: dec   x
BF2A: daa   a
BF2B: and   a,$EC42
BF2E: mov1  c,$0213,02
BF31: brk
BF32: tcall 15
BF33: bpl   $bf54
BF35: sleep
BF36: stop
BF37: mov1  c,$14FF,01
BF3A: tcall 1
BF3B: brk
BF3C: push  psw
BF3D: stop
BF3E: bbs2  $0C,$beeb
BF41: pop   a
BF42: and   a,(x)
BF43: set2  $CD
BF45: mov   $1E+x,a
BF47: mov   a,y
BF48: clr3  $AA
BF4A: bmi   $bf1c
BF4C: mov   sp,x
BF4D: set1  $41
BF4F: stop
BF50: inc   $BA64
BF53: tcall 2
BF54: stop
BF55: mov   $4223,y
BF58: dbnz  y,$bf38
BF5A: tcall 2
BF5B: mov1  c,$1F12,07
BF5E: brk
BF5F: tcall 3
BF60: dec   x
BF61: pop   x
BF62: bbs0  $21,$bf1f
BF65: bpl   $bf48
BF67: tcall 0
BF68: sleep
BF69: clrc
BF6A: mov   y,$12C1
BF6D: sbc   a,$3134+y
BF70: clrv
BF71: brk
BF72: tcall 1
BF73: bpl   $bf65
BF75: tcall 0
BF76: sbc   a,(x)
BF77: mov   y,a
BF78: clrv
BF79: bmi   $bf7d
BF7B: movw  $9E,ya
BF7D: cmp   a,$AA40
BF80: clrv
BF81: bpl   $bf91
BF83: clr0  $43
BF85: mov   x,#$D0
BF87: clr1  $AA
BF89: tcall 2
BF8A: cbne  $1F+x,$bf8d
BF8D: bbc0  $BE,$bf83
BF90: cmp   a,(x)
BF91: mov1  c,$0C1C,05
BF94: clr7  $42
BF96: mov   y,a
BF97: stop
BF98: set0  $23
BF9A: sbc   a,$1F33+y
BF9D: pop   y
BF9E: brk
BF9F: tcall 0
BFA0: and   a,$FD+x
BFA2: pop   x
BFA3: clr5  $DD
BFA5: sleep
BFA6: stop
BFA7: sleep
BFA8: jmp   ($22F1+x)
BFAB: mov   $B6,y
BFAD: bbs2  $2C,$bf9f
BFB0: tcall 1
BFB1: nop
BFB2: clr0  $10
BFB4: tcall 1
BFB5: movw  ya,$0D
BFB7: clrv
BFB8: tcall 15
BFB9: tcall 5
BFBA: push  a
BFBB: set7  $01
BFBD: mov   a,y
BFBE: movw  ya,$F2
BFC0: and   a,$0D+x
BFC2: dbnz  y,$bfa4
BFC4: or    a,$0F+x
BFC6: call  $FDBA
BFC9: mov   a,$CC21+x
BFCC: beq   $bff0
BFCE: tcall 2
BFCF: brk
BFD0: sbc   a,(x)
BFD1: clr1  $1D
BFD3: movw  ya,$BE
BFD5: and   a,$52
BFD7: bbc0  $20,$bf84
BFDA: pop   a
BFDB: or    a,$FC51+x
BFDE: nop
BFDF: clrp
BFE0: clr7  $EE
BFE2: mov1  c,$029E,03
BFE5: clr1  $12
BFE7: das   a
BFE8: bra   $bff5
BFEA: tcall 15
BFEB: movw  ya,$42
BFED: sleep
BFEE: sleep
BFEF: stop
BFF0: clr1  $30
BFF2: daa   a
BFF3: tcall 15
BFF4: mov1  c,$0E20,07
BFF7: bpl   $bffb
BFF9: tcall 0
BFFA: tcall 15
BFFB: lsr   $BAD9
BFFE: and   a,$01
C000: sleep
C001: brk
C002: tcall 1
C003: tcall 3
C004: mov   a,y
C005: tcall 12
C006: movw  ya,$44
C008: jmp   ($0FDE+x)
C00B: bbs1  $1F,$bfdd
C00E: cbne  $AA,$c050
C011: eor   a,$F2C1
C014: or    ($43),($EF)
C017: bmi   $bfbf
C019: cmp   x,$14BB
C01C: clr2  $E4
C01E: dec   x
C01F: inc   $45+x
C021: movw  ya,$00
C023: stop
C024: sleep
C025: clr7  $14
C027: dec   x
C028: stop
C029: tcall 15
C02A: sbc   a,(x)
C02B: bbc7  $5E,$c01c
C02E: mov   sp,x
C02F: mov   a,$63+x
C031: cmp   x,$AA01
C034: tset1 $E0E1
C037: bbs1  $6B,$bfe7
C03A: or    a,$AA20+x
C03D: di
C03E: or    a,$CD0C+y
C041: tcall 7
C042: tcall 15
C043: mov   x,#$F0
C045: sbc   a,(x)
C046: eor   a,$0731
C049: tcall 4
C04A: dec   y
C04B: dbnz  y,$c04a
C04D: and   a,(x)
C04E: sbc   a,(x)
C04F: clr1  $EF
C051: jmp   ($ED0F+x)
C054: sleep
C055: tcall 1
C056: and   a,$AA
C058: beq   $c048
C05A: dbnz  y,$c07f
C05C: beq   $c061
C05E: pcall $EA
C060: subw  ya,$BE
C062: set0  $36
C064: eor   a,$CB
C066: di
C067: set2  $1D
C069: sbc   a,$000F+y
C06C: stop
C06D: tcall 15
C06E: tcall 2
C06F: jmp   ($D2CC+x)
C072: mov1  c,$0B21,00
C075: pop   y
C076: mov   a,$FD
C078: tcall 3
C079: jmp   $BAD5
C07C: brk
C07D: dbnz  y,$c06f
C07F: clr0  $1C
C081: tcall 1
C082: tcall 4
C083: clrv
C084: mov1  c,$1FDE,07
C087: brk
C088: mov   a,$56
C08A: asl   a
C08B: mov   $DF,y
C08D: mov1  c,$1225,01
C090: cbne  $5E+x,$c09e
C093: or    a,$DEEF+y
C096: sbc   a,$02EE+y
C099: bbs2  $EC,$c04c
C09C: tcall 3
C09D: bpl   $c0d0
C09F: sbc   a,(x)
C0A0: inc   a
C0A1: bbc5  $0B,$c082
C0A4: eor   a,$53
C0A6: and   a,$BA+x
C0A8: movw  ya,$03
C0AA: rol   $F0+x
C0AC: bbs0  $13,$c0ca
C0AF: daa   a
C0B0: set0  $AA
C0B2: tcall 3
C0B3: asl   a
C0B4: or    a,$FFE0
C0B7: bpl   $c0b9
C0B9: mov   x,#$B6
C0BB: clrv
C0BC: or    a,$40+x
C0BE: nop
C0BF: clr0  $00
C0C1: mov   y,a
C0C2: beq   $c07a
C0C4: stop
C0C5: tcall 13
C0C6: setp
C0C7: bpl   $c10d
C0C9: notc
C0CA: mul   ya
C0CB: brk
C0CC: movw  ya,$10
C0CE: clrp
C0CF: mov   y,a
C0D0: clr0  $31
C0D2: mov   sp,x
C0D3: tcall 13
C0D4: bbs2  $BA,$c128
C0D7: dec   a
C0D8: bbs7  $3E,$c0fb
C0DB: bpl   $c0cc
C0DD: brk
C0DE: movw  ya,$21
C0E0: bmi   $c0af
C0E2: set7  $22
C0E4: jmp   ($F0F0+x)
C0E7: mov1  c,$13EC,02
C0EA: bmi   $c0ea
C0EC: bne   $c0bd
C0EE: tcall 5
C0EF: jmp   ($F1B6+x)
C0F2: stop
C0F3: and   a,$4F+x
C0F5: pop   x
C0F6: daa   a
C0F7: clr0  $42
C0F9: mov1  c,$10EF,07
C0FC: bpl   $c10c
C0FE: set7  $33
C100: bra   $c0d3
C102: sbc   a,$0D11+y
C105: mov   a,y
C106: tcall 1
C107: tcall 0
C108: brk
C109: mov   a,y
C10A: and   a,$0DBA+x
C10D: di
C10E: tcall 14
C10F: set2  $2D
C111: daa   a
C112: clr0  $F1
C114: mov1  c,$0D22,00
C117: mov1  c,$0244,03
C11A: clrv
C11B: dec   $22+x
C11D: movw  ya,$30
C11F: tcall 15
C120: brk
C121: sleep
C122: set0  $23
C124: inc   y
C125: sleep
C126: sbc   a,$FFEF+y
C129: clr0  $33
C12B: mov   x,#$13
C12D: pcall $FF
C12F: sbc   a,$EFF0+y
C132: tset1 $23EF
C135: clrp
C136: set7  $34
C138: mov1  c,$009B,00
C13B: clrp
C13C: set1  $41
C13E: dec   y
C13F: set6  $21
C141: movw  ya,$20
C143: pop   y
C144: mov   a,$0D2F
C147: cmp   x,$23D2
C14A: subw  ya,$50
C14C: dec   $20+x
C14E: rol   $CE0F
C151: mov   a,$AA64
C154: brk
C155: clrv
C156: tcall 3
C157: rol   $02
C159: bpl   $c109
C15B: mov   a,$10BA
C15E: bmi   $c15d
C160: mov   $23,a
C162: push  psw
C163: tset1 $AAEF
C166: or    a,($32)+y
C168: asl   $E4CA
C16B: cmp   a,$AC1F+y
C16E: movw  ya,$FE
C170: nop
C171: set2  $1E
C173: tcall 13
C174: tcall 15
C175: tcall 1
C176: lsr   a
C177: movw  ya,$BE
C179: mov   a,$2E12+y
C17C: mov   $F4+x,y
C17E: bbs1  $D1,$c13b
C181: cmp   x,$FE
C183: bbc0  $0F,$c174
C186: beq   $c1ab
C188: clr0  $B6
C18A: set2  $00
C18C: pop   y
C18D: daa   a
C18E: tcall 3
C18F: tset1 $21F3
C192: mov1  c,$1EEC,07
C195: and   a,$2112
C198: decw  $CD
C19A: tcall 14
C19B: sbc   a,$11DF+y
C19E: tcall 1
C19F: brk
C1A0: tcall 15
C1A1: and   a,$3E+x
C1A3: cbne  $BA+x,$c1c7
C1A6: tcall 14
C1A7: brk
C1A8: brk
C1A9: brk
C1AA: bbs7  $34,$c1ba
C1AD: sbc   a,(x)
C1AE: tclr1 $C2BA
C1B1: clr1  $FC
C1B3: set7  $65
C1B5: bmi   $c161
C1B7: daa   a
C1B8: bbc7  $44,$c1db
C1BB: mov1  c,$0401,01
C1BE: cmp   x,$DEAA
C1C1: tcall 4
C1C2: tcall 15
C1C3: or    a,$ADEC
C1C6: tcall 4
C1C7: cmp   x,$BA
C1C9: clr0  $FF
C1CB: clr6  $10
C1CD: jmp   ($0B30+x)
C1D0: tcall 10
C1D1: movw  ya,$14
C1D3: tcall 2
C1D4: clrp
C1D5: dbnz  y,$c1d6
C1D7: tcall 0
C1D8: bpl   $c1e8
C1DA: movw  ya,$01
C1DC: bbs1  $FF,$c1be
C1DF: nop
C1E0: nop
C1E1: clr1  $10
C1E3: mov1  c,$0AB2,06
C1E6: clr0  $60
C1E8: bne   $c1dc
C1EA: clrv
C1EB: tcall 2
C1EC: mov1  c,$010F,00
C1EF: tset1 $D5EE
C1F2: tcall 2
C1F3: inc   y
C1F4: mov   x,a
C1F5: sbc   a,$F4DE+y
C1F8: bbs2  $20,$c1f8
C1FB: cbne  $02+x,$c1eb
C1FE: movw  ya,$F2
C200: bmi   $c233
C202: pop   y
C203: bcs   $c227
C205: bra   $c206
C207: mov1  c,$0B14,02
C20A: dbnz  y,$c24f
C20C: xcn   a
C20D: mov   a,$3E72
C210: sbc   a,$CDFD+y
C213: stop
C214: clr0  $10
C216: dbnz  y,$c219
C218: and   a,$AA+x
C21A: inc   $B2+x
C21C: setp
C21D: push  psw
C21E: set2  $1C
C220: set6  $35
C222: mov1  c,$00CD,06
C225: tcall 3
C226: tcall 2
C227: mov   x,#$E2
C229: lsr   $01+x
C22B: mov1  c,$1024,05
C22E: bra   $c23d
C230: tcall 1
C231: beq   $c206
C233: cmp   x,$11AA
C236: bvs   $c1d5
C238: mov   $24,a
C23A: set0  $5C
C23C: mov   $BA,y
C23E: bbc7  $E1,$c271
C241: dec   x
C242: tcall 15
C243: bbc0  $2E,$c226
C246: movw  ya,$FF
C248: pop   y
C249: clr1  $31
C24B: beq   $c23c
C24D: beq   $c270
C24F: movw  ya,$0E
C251: stop
C252: tcall 1
C253: set0  $1C
C255: sleep
C256: clr1  $F1
C258: subw  ya,$B2
C25A: push  psw
C25B: setp
C25C: cmp   y,#$C1
C25E: tset1 $5E53
C261: movw  ya,$F2
C263: brk
C264: cbne  $41+x,$c286
C267: beq   $c269
C269: beq   $c215
C26B: bbs0  $21,$c24a
C26E: set1  $51
C270: beq   $c21d
C272: clr0  $BA
C274: bmi   $c269
C276: nop
C277: pop   x
C278: tcall 2
C279: pcall $FF
C27B: clrv
C27C: sbc   a,$FFEE+y
C27F: set0  $21
C281: dbnz  y,$c255
C283: bbs2  $1D,$c23c
C286: mov   a,y
C287: tcall 14
C288: bbc1  $20,$c288
C28B: cmp   y,#$04
C28D: setp
C28E: movw  ya,$1F
C290: cbne  $F1,$c2b6
C293: mov   x,#$0F
C295: cbne  $35,$c252
C298: nop
C299: pop   x
C29A: brk
C29B: clr1  $30
C29D: das   a
C29E: mov   $3E+x,a
C2A0: movw  ya,$1F
C2A2: setp
C2A3: bne   $c295
C2A5: set1  $0E
C2A7: cbne  $00+x,$c264
C2AA: and   a,$F0+x
C2AC: tcall 14
C2AD: cbne  $EC,$c2d2
C2B0: nop
C2B1: tcall 0
C2B2: movw  ya,$13
C2B4: mov   a,y
C2B5: tcall 13
C2B6: cmp   x,$FF
C2B8: and   a,$01+x
C2BA: notc
C2BB: movw  ya,$FF
C2BD: clr0  $10
C2BF: mov   y,a
C2C0: mov   a,$01+x
C2C2: tcall 14
C2C3: dbnz  $B6,$c2f2
C2C6: mov   a,(x)+
C2C7: set0  $22
C2C9: asl   $F3BB
C2CC: bbc0  $B6,$c312
C2CF: asl   a
C2D0: beq   $c2e3
C2D2: clrv
C2D3: beq   $c2b0
C2D5: clr7  $AA
C2D7: addw  ya,$C0
C2D9: pop   x
C2DA: bbs7  $53,$c2fd
C2DD: subw  ya,$02
C2DF: sbc   a,(x)
C2E0: bbs2  $1E,$c29f
C2E3: tcall 15
C2E4: bbc0  $46,$c337
C2E7: mov   y,$D0B6
C2EA: and   a,$3E+x
C2EC: dec   y
C2ED: beq   $c2f2
C2EF: and   a,$2F+x
C2F1: mov1  c,$15FF,07
C2F4: clr1  $CC
C2F6: tcall 1
C2F7: tcall 4
C2F8: brk
C2F9: beq   $c2b1
C2FB: brk
C2FC: daa   a
C2FD: or    a,$2E
C2FF: pop   y
C300: brk
C301: sleep
C302: tcall 15
C303: sbc   a,(x)
C304: eor   a,$43
C306: jmp   ($EDE0+x)
C309: mov   y,$E7DB
C30C: sbc   a,(x)
C30D: bbs3  $B9,$c30f
C310: and   a,$42
C312: pop   y
C313: bbc0  $31,$c2d0
C316: stop
C317: brk
C318: clr7  $34
C31A: push  psw
C31B: tset1 $F10E
C31E: sbc   a,$32F1+y
C321: mov   x,#$E2
C323: tcall 3
C324: eor   a,$0F
C326: pop   x
C327: mov1  c,$031F,02
C32A: call  $E5CB
C32D: set0  $F0
C32F: cmp   x,$AA
C331: nop
C332: tcall 0
C333: sleep
C334: brk
C335: asl   $33+x
C337: beq   $c2ff
C339: mov1  c,$1B4C,06
C33C: clr0  $14
C33E: asl   a
C33F: dec   y
C340: and   a,$1E+x
C342: mov1  c,$03B1,00
C345: tcall 15
C346: bbs1  $3B,$c303
C349: or    a,$B623+x
C34C: tcall 1
C34D: tset1 $02F1
C350: eor   a,$3E
C352: mov   $A6D0,y
C355: cmp   a,$F340
C358: brk
C359: das   a
C35A: set1  $1E
C35C: clrv
C35D: movw  ya,$22
C35F: asl   $DE+x
C361: clr0  $F4
C363: cmp   x,$ED
C365: bbs1  $B6,$c38b
C368: tcall 1
C369: mov   y,a
C36A: mov   $1002,y
C36D: tcall 14
C36E: brk
C36F: sbc   a,$42F0+y
C372: nop
C373: beq   $c375
C375: stop
C376: beq   $c388
C378: movw  ya,$10
C37A: tset1 $11F3
C37D: dbnz  y,$c39d
C37F: tcall 14
C380: bbc0  $AA,$c394
C383: bpl   $c38f
C385: mov   x,#$56
C387: clrp
C388: tcall 10
C389: clr0  $BA
C38B: bpl   $c38c
C38D: sleep
C38E: nop
C38F: set0  $52
C391: rol   $B0
C393: mov1  c,$10F4,06
C396: clr1  $4B
C398: daa   a
C399: clr0  $D3
C39B: and   a,(x)
C39C: sbc   a,$EC40+y
C39F: beq   $c391
C3A1: clr0  $10
C3A3: stop
C3A4: set0  $AA
C3A6: tcall 1
C3A7: mov   $E0+x,y
C3A9: bbs2  $3F,$c3ac
C3AC: cbne  $D3+x,$c369
C3AF: tcall 2
C3B0: brk
C3B1: beq   $c3c5
C3B3: bpl   $c393
C3B5: daa   a
C3B6: set2  $AA
C3B8: bmi   $c39b
C3BA: beq   $c3ba
C3BC: tset1 $1F15
C3BF: mov   sp,x
C3C0: mov1  c,$1F03,01
C3C3: mov   y,a
C3C4: beq   $c3c9
C3C6: clr1  $20
C3C8: mov   $B0AA,y
C3CB: bpl   $c3ee
C3CD: bbs2  $F0,$c3af
C3D0: notc
C3D1: set2  $B6
C3D3: stop
C3D4: set7  $42
C3D6: bpl   $c3e7
C3D8: cbne  $ED+x,$c3de
C3DB: mov1  c,$0F2F,06
C3DE: dbnz  y,$c402
C3E0: sleep
C3E1: clr6  $2B
C3E3: cmp   a,$30BA
C3E6: das   a
C3E7: clrv
C3E8: tcall 1
C3E9: set3  $EC
C3EB: bbc5  $11,$c3a8
C3EE: cmp   x,$D03E
C3F1: or    a,$00+x
C3F3: cmp   x,$F1FC
C3F6: mov1  c,$0F45,02
C3F9: mov   $10D2,y
C3FC: tcall 5
C3FD: clr6  $FF
C3FF: movw  ya,$DD
C401: bbc1  $4D,$c3c4
C404: clr7  $12
C406: cbne  $FE,$c3b3
C409: bbc0  $0F,$c3cc
C40C: set1  $1E
C40E: stop
C40F: clr1  $2E
C411: mov1  c,$1001,07
C414: stop
C415: brk
C416: stop
C417: beq   $c45d
C419: cmp   x,$A6
C41B: bbs1  $FD,$c3db
C41E: eor   a,$BC3E+x
C421: or    a,$AA62+x
C424: das   a
C425: bbc7  $33,$c439
C428: beq   $c407
C42A: clrv
C42B: tcall 4
C42C: sbc   a,(x)
C42D: inc   y
C42E: tcall 12
C42F: and   a,$10
C431: tcall 3
C432: tcall 2
C433: bbc0  $AA,$c3ec
C436: clr7  $4E
C438: pop   y
C439: beq   $c43c
C43B: bbc0  $32,$c42a
C43E: mov1  c,$1143,01
C441: mov   y,a
C442: pop   y
C443: bra   $c43b
C445: set1  $EB
C447: movw  ya,$FE
C449: mov   a,$DC31+x
C44C: clrp
C44D: brk
C44E: tcall 15
C44F: bbs1  $B6,$c483
C452: inc   a
C453: bbc7  $42,$c486
C456: mov   $20D1,y
C459: sbc   a,(x)
C45A: jmp   ($D50E+x)
C45D: cmp   a,(x)
C45E: dec   x
C45F: nop
C460: dec   x
C461: inc   a
C462: mov1  c,$1313,00
C465: push  a
C466: pop   y
C467: set1  $EF
C469: bbc5  $20,$c426
C46C: bpl   $c4ae
C46E: das   a
C46F: bbc7  $10,$c481
C472: tcall 0
C473: tcall 0
C474: subw  ya,$1F
C476: mov   y,$03AD
C479: eor   a,$2DDD+y
C47C: cbne  $AA+x,$c46f
C47F: bbc1  $3E,$c441
C482: tcall 15
C483: tcall 1
C484: jmp   ($BAFF+x)
C487: nop
C488: nop
C489: bbs0  $4D,$c465
C48C: mov   a,$35+x
C48E: cbne  $B6,$c4bf
C491: clrv
C492: nop
C493: dbnz  y,$c465
C495: tcall 1
C496: nop
C497: bbc2  $B6,$c4b8
C49A: tcall 13
C49B: stop
C49C: mov   sp,x
C49D: bbc1  $3F,$c4b4
C4A0: bpl   $c458
C4A2: pop   y
C4A3: tcall 0
C4A4: tcall 1
C4A5: mov   a,y
C4A6: stop
C4A7: tcall 1
C4A8: tcall 1
C4A9: tcall 1
C4AA: mov1  c,$0F0F,07
C4AD: brk
C4AE: tcall 7
C4AF: mov   sp,x
C4B0: mov   a,$64
C4B2: mov   y,$B6
C4B4: mov   $F0ED,y
C4B7: clr0  $E0
C4B9: eor   a,$3E
C4BB: beq   $c463
C4BD: mov   $9F,y
C4BF: and   a,$1C+x
C4C1: eor   a,$3E
C4C3: set5  $0F
C4C5: sbc   a,(x)
C4C6: mov1  c,$0F56,03
C4C9: inc   a
C4CA: di
C4CB: cmp   a,(x)
C4CC: tcall 4
C4CD: stop
C4CE: mov1  c,$1F21,06
C4D1: tcall 15
C4D2: brk
C4D3: clr0  $34
C4D5: rol   $B6AD
C4D8: mov   $43E1,y
C4DB: set1  $11
C4DD: tset1 $B1DB
C4E0: mov1  c,$1E20,05
C4E3: clr2  $1F
C4E5: mov   a,y
C4E6: stop
C4E7: tcall 2
C4E8: or    a,$FFBA
C4EB: beq   $c52d
C4ED: dbnz  y,$c4cd
C4EF: bbc0  $41,$c4f0
C4F2: sbc   a,(x)
C4F3: mov   a,y
C4F4: mov   x,#$01
C4F6: set1  $24
C4F8: jmp   ($00EE+x)
C4FB: sbc   a,(x)
C4FC: mov   y,$F0CD
C4FF: tcall 2
C500: or    a,$FA66+y
C503: inc   $40AA
C506: clrp
C507: clrp
C508: mul   ya
C509: stop
C50A: tcall 1
C50B: tcall 1
C50C: beq   $c4b8
C50E: cmp   x,$3301
C511: tset1 $E4DA
C514: eor   a,$C0
C516: sbc   a,$2F22+y
C519: stop
C51A: bpl   $c509
C51C: tcall 12
C51D: and   a,$3F+x
C51F: sbc   a,$05CD+y
C522: bvc   $c510
C524: sleep
C525: brk
C526: beq   $c54b
C528: mov1  c,$16BD,04
C52B: call  $1E30
C52E: bne   $c542
C530: stop
C531: sbc   a,(x)
C532: inc   $01+x
C534: bbs2  $23,$c4e1
C537: clr0  $52
C539: stop
C53A: sbc   a,$13CD+y
C53D: set2  $10
C53F: brk
C540: mov   x,#$F4
C542: setp
C543: mov1  c,$1D0E,02
C546: bbs5  $15,$c557
C549: push  a
C54A: clr6  $24
C54C: sbc   a,$EE21+y
C54F: bpl   $c54d
C551: tcall 14
C552: tcall 0
C553: set0  $3F
C555: movw  ya,$F0
C557: set1  $10
C559: mov   y,$F2
C55B: bbc1  $3E,$c53b
C55E: movw  ya,$F2
C560: clr0  $0F
C562: clrv
C563: nop
C564: clr1  $FE
C566: tcall 13
C567: mov1  c,$0020,01
C56A: nop
C56B: tcall 15
C56C: bbc0  $DD,$c58e
C56F: or1   c,!($04BA,07)
C572: bbs1  $FE,$c582
C575: clrv
C576: and   a,$20
C578: cbne  $BA+x,$c56d
C57B: push  psw
C57C: jmp   ($1411+x)
C57F: push  psw
C580: dbnz  y,$c5a1
C582: movw  ya,$F3
C584: jmp   ($F2FE+x)
C587: bbc1  $0C,$c578
C58A: tcall 2
C58B: subw  ya,$A2
C58D: and   a,$43
C58F: cbne  $AB,$c545
C592: daa   a
C593: sbc   a,$12B2+x
C596: set1  $45
C598: clr2  $FE
C59A: tcall 15
C59B: bpl   $c58a
C59D: mov1  c,$032E,02
C5A0: beq   $c562
C5A2: stop
C5A3: tcall 1
C5A4: call  $B6CC
C5A7: di
C5A8: clr0  $43
C5AA: tcall 1
C5AB: brk
C5AC: notc
C5AD: set0  $21
C5AF: mov1  c,$15C0,00
C5B2: mov   x,#$10
C5B4: tcall 4
C5B5: tcall 1
C5B6: mov   $BBC2,y
C5B9: set2  $0E
C5BB: pop   x
C5BC: bbc1  $2E,$c59d
C5BF: bbc0  $11,$c5c4
C5C2: nop
C5C3: nop
C5C4: nop
C5C5: nop
C5C6: nop
C5C7: nop
C5C8: nop
C5C9: nop
C5CA: incw  $20
C5CC: or    a,$10
C5CE: bbs0  $30,$c5f3
C5D1: and   a,$12+x
C5D3: incw  $33
C5D5: set2  $45
C5D7: eor   a,$6545+x
C5DA: eor   a,($56+x)
C5DC: cmpw  ya,$22
C5DE: clr1  $12
C5E0: and   a,$32+x
C5E2: eor   a,$33+x
C5E4: eor   a,$7A
C5E6: tcall 1
C5E7: bpl   $c5ea
C5E9: jmp   ($FEF0+x)
C5EC: dec   y
C5ED: inc   $8A
C5EF: notc
C5F0: inc   a
C5F1: bbc7  $1C,$c5d1
C5F4: notc
C5F5: mov   a,y
C5F6: dec   y
C5F7: addw  ya,$BC
C5F9: movw  ya,$AB
C5FB: mov   $DDCD,y
C5FE: sleep
C5FF: tcall 1
C600: and1  c,!($1EBB,06)
C603: nop
C604: nop
C605: bbc1  $33,$c63c
C608: eor   a,$446A+x
C60B: cmp   a,$6655
C60E: cmp   a,(x)
C60F: eor   a,$4564+y
C612: and1  c,!($1555,02)
C615: bbc2  $33,$c64b
C618: bbc1  $43,$c63d
C61B: eor   a,$DEDD+y
C61E: tcall 15
C61F: set1  $33
C621: and   a,$44+x
C623: clr1  $5A
C625: and   a,$32+x
C627: set1  $11
C629: set1  $32
C62B: set0  $32
C62D: cmpw  ya,$33
C62F: tcall 1
C630: bbc1  $32,$c645
C633: set2  $21
C635: bbs1  $66,$c65a
C638: clr1  $02
C63A: tcall 3
C63B: nop
C63C: bbc1  $FF,$c663
C63F: addw  ya,$00
C641: tcall 0
C642: clr0  $10
C644: tcall 0
C645: clr0  $43
C647: bbs2  $7A,$c67c
C64A: bbs2  $32,$c692
C64D: eor   a,$54+x
C64F: eor   a,(x)
C650: cmp   a,$328A
C653: bbc1  $22,$c698
C656: tcall 1
C657: jmp   ($00FE+x)
C65A: addw  ya,$01
C65C: bpl   $c66d
C65E: notc
C65F: mov   a,y
C660: dec   y
C661: inc   $CD
C663: addw  ya,$CB
C665: inc   a
C666: movw  ya,$BD
C668: mov   a,y
C669: cbne  $DD+x,$c649
C66C: cmp   a,(x)
C66D: eor   a,$43+x
C66F: set1  $10
C671: nop
C672: nop
C673: dbnz  y,$c663
C675: cmpw  ya,$ED
C677: inc   a
C678: mov   $DEDB,y
C67B: inc   y
C67C: mov   x,#$CC
C67E: cmpw  ya,$FF
C680: mov   y,$B0
C682: mov   y,a
C683: mov   $EFEE,y
C686: notc
C687: and1  c,$0EAA,06
C68A: mov   y,$CC
C68C: pop   x
C68D: jmp   ($EFBB+x)
C690: and1  c,$1EF0,00
C693: tcall 14
C694: clrp
C695: mov   x,#$56
C697: bne   $c6db
C699: cmpw  ya,$1F
C69B: set0  $12
C69D: tcall 3
C69E: bbc6  $63,$c6ae
C6A1: or    a,$5A+x
C6A3: and   a,$41
C6A5: tcall 15
C6A6: and   a,$2240
C6A9: clr7  $44
C6AB: and1  c,!($0221,01)
C6AE: stop
C6AF: set1  $33
C6B1: eor   a,$4564
C6B4: addw  ya,$32
C6B6: bbc1  $33,$c6ed
C6B9: eor   a,$55
C6BB: bbs2  $45,$c738
C6BE: cmp   a,$7656
C6C1: clr1  $00
C6C3: brk
C6C4: beq   $c6c7
C6C6: addw  ya,$F0
C6C8: bpl   $c6c9
C6CA: notc
C6CB: mov   $DBDE,y
C6CE: inc   a
C6CF: addw  ya,$CA
C6D1: inc   $CD
C6D3: mov   a,y
C6D4: mov   x,#$DC
C6D6: mov   a,y
C6D7: mov   a,y
C6D8: eor   a,$5676+y
C6DB: eor   a,$43+x
C6DD: bpl   $c6e0
C6DF: tset1 $5AEE
C6E2: mov   $CCED,y
C6E5: notc
C6E6: dec   y
C6E7: daa   a
C6E8: dec   y
C6E9: bne   $c745
C6EB: cbne  $EE+x,$c6bb
C6EE: tcall 14
C6EF: mov   y,$DF
C6F1: pop   y
C6F2: bne   $c73a
C6F4: mov1  $199A,04,c
C6F7: mov   x,#$BA
C6F9: bbc6  $61,$c6de
C6FC: and1  c,$1D10,06
C6FF: mul   ya
C700: bbs1  $0E,$c705
C703: nop
C704: clrp
C705: and1  c,$04FF,00
C708: bbc2  $10,$c70d
C70B: and   a,$53
C70D: push  psw
C70E: cmpw  ya,$03
C710: eor   a,$01
C712: bpl   $c714
C714: or    a,$33+x
C716: tcall 4
C717: and1  c,!($0F00,00)
C71A: tcall 1
C71B: clr1  $13
C71D: bbc2  $45,$c775
C720: addw  ya,$12
C722: bbc1  $23,$c769
C725: eor   a,$33
C727: and   a,$66+x
C729: eor1  c,$1234,01
C72C: clr0  $21
C72E: nop
C72F: nop
C730: nop
C731: nop
C732: addw  ya,$01
C734: brk
C735: pop   y
C736: pop   y
C737: pop   y
C738: dec   y
C739: mov   $7ABB,y
C73C: inc   $CD+x
C73E: mov   $DDDE,y
C741: mov   x,#$DE
C743: cbne  $6A+x,$c6f1
C746: mov   $DECC,y
C749: notc
C74A: cbne  $FF+x,$c74b
C74D: and1  c,$019A,00
C750: sbc   ($FD),($ED)
C753: mul   ya
C754: asl   $36EF
C757: bcs   $c79c
C759: push  a
C75A: di
C75B: asl   $259B
C75E: clr0  $4A
C760: inc   y
C761: brk
C762: nop
C763: stop
C764: set0  $10
C766: nop
C767: brk
C768: and1  c,$01F0,01
C76B: bne   $c7b1
C76D: bra   $c76e
C76F: tcall 0
C770: tcall 4
C771: and1  c,$10E2,01
C774: tcall 15
C775: cmp   a,$1F00
C778: set0  $37
C77A: cmpw  ya,$31
C77C: clrp
C77D: sleep
C77E: clr0  $44
C780: clr1  $01
C782: clrp
C783: and1  c,!($11F1,00)
C786: nop
C787: and   a,$33+x
C789: eor   a,$3344
C78C: addw  ya,$23
C78E: eor   a,$42
C790: bbc1  $43,$c7d7
C793: cmp   a,(x)
C794: eor   a,$767A+y
C797: eor   a,$1243+y
C79A: tcall 1
C79B: tcall 0
C79C: tcall 2
C79D: nop
C79E: addw  ya,$F0
C7A0: brk
C7A1: brk
C7A2: pop   y
C7A3: dbnz  y,$c770
C7A5: mov   $7ABB,y
C7A8: mov   a,y
C7A9: mov   $CDDD,y
C7AC: notc
C7AD: mov   a,y
C7AE: mov   a,y
C7AF: pop   y
C7B0: and1  c,!($1CCC,05)
C7B3: cbne  $DD+x,$c794
C7B6: sleep
C7B7: stop
C7B8: stop
C7B9: eor   a,(x)
C7BA: bbs2  $56,$c821
C7BD: eor   a,$10
C7BF: tcall 2
C7C0: nop
C7C1: and   a,($3A+x)
C7C3: or1   c,!($0FCF,00)
C7C6: bbc7  $1E,$c7fb
C7C9: mov   a,$41+x
C7CB: and1  c,$14FE,07
C7CE: bra   $c7d2
C7D0: bbs1  $20,$c7f3
C7D3: beq   $c81f
C7D5: clr0  $75
C7D7: tcall 0
C7D8: set1  $22
C7DA: eor   a,$22F1
C7DD: cmpw  ya,$11
C7DF: and   a,$31
C7E1: stop
C7E2: set0  $23
C7E4: bbs2  $20,$c841
C7E7: bpl   $c7fa
C7E9: tcall 1
C7EA: and   a,$42
C7EC: tcall 1
C7ED: clr1  $0F
C7EF: and1  c,!($100F,07)
C7F2: and   a,$33
C7F4: set1  $12
C7F6: and   a,$55+x
C7F8: addw  ya,$33
C7FA: set1  $32
C7FC: and   a,$34
C7FE: and   a,$7746+x
C801: addw  ya,$65
C803: bbc1  $33,$c828
C806: clr1  $0F
C808: nop
C809: bpl   $c885
C80B: stop
C80C: bpl   $c81d
C80E: notc
C80F: mov   a,y
C810: mov   $BD,y
C812: mov   $BD7A,y
C815: mov   x,#$CC
C817: pop   x
C818: dec   y
C819: mov   a,y
C81A: mov   a,y
C81B: pop   y
C81C: cmp   a,(x)
C81D: bbc2  $33,$c853
C820: clr1  $22
C822: set1  $22
C824: tcall 1
C825: and1  c,$0E0E,06
C828: mov   $CE+x,y
C82A: tcall 0
C82B: set0  $0E
C82D: or    a,$4A+x
C82F: brk
C830: nop
C831: clrp
C832: bbc0  $30,$c859
C835: tcall 2
C836: bpl   $c882
C838: brk
C839: clr7  $44
C83B: tcall 2
C83C: bpl   $c83d
C83E: tcall 1
C83F: and   a,$5A
C841: bpl   $c843
C843: tcall 1
C844: clr0  $00
C846: stop
C847: clr7  $43
C849: cmpw  ya,$21
C84B: brk
C84C: tcall 0
C84D: clr0  $23
C84F: bbs2  $11,$c852
C852: cmpw  ya,$33
C854: tcall 2
C855: clr0  $44
C857: eor   a,$FD41+x
C85A: tcall 15
C85B: and1  c,!($0212,01)
C85E: set1  $11
C860: bbs1  $44,$c897
C863: eor   a,$237A+x
C866: clr1  $22
C868: bbs1  $43,$c8c1
C86B: cmp   a,$7A65
C86E: cmp   a,$34
C870: bbs2  $32,$c893
C873: brk
C874: nop
C875: bpl   $c8f1
C877: bpl   $c888
C879: stop
C87A: notc
C87B: mov   $CBCC,y
C87E: inc   a
C87F: addw  ya,$CC
C881: mov   $CDCC,y
C884: mov   $DCCE,y
C887: pop   x
C888: eor   a,$2365+y
C88B: eor   a,$32
C88D: bpl   $c88f
C88F: bbs1  $33,$c8ec
C892: cbne  $CC+x,$c884
C895: pop   y
C896: beq   $c898
C898: bpl   $c88a
C89A: and1  c,$0010,07
C89D: bbc0  $53,$c8d3
C8A0: set2  $0F
C8A2: clr0  $46
C8A4: tcall 0
C8A5: clr0  $43
C8A7: tset1 $00CE
C8AA: brk
C8AB: dec   y
C8AC: and1  c,$0437,02
C8AF: push  a
C8B0: nop
C8B1: beq   $c8c8
C8B3: cmp   a,$5A41+y
C8B6: beq   $c8c9
C8B8: bbc1  $21,$c8cd
C8BB: and   a,$32+x
C8BD: nop
C8BE: cmpw  ya,$10
C8C0: bbs1  $56,$c917
C8C3: bmi   $c8b5
C8C5: tcall 1
C8C6: or    a,$6A+x
C8C8: clrp
C8C9: tcall 0
C8CA: set1  $22
C8CC: set1  $34
C8CE: eor   a,$7A55
C8D1: set1  $12
C8D3: bbs1  $23,$c91b
C8D6: eor   a,$5555+x
C8D9: addw  ya,$65
C8DB: bbc1  $44,$c910
C8DE: nop
C8DF: beq   $c8f3
C8E1: bpl   $c95d
C8E3: bpl   $c8f4
C8E5: dbnz  y,$c8d4
C8E7: dec   y
C8E8: mov   $BCCC,y
C8EB: addw  ya,$CD
C8ED: mov   $CDCC,y
C8F0: dec   y
C8F1: mov   $DDDD,y
C8F4: eor   a,$5446+y
C8F7: clrp
C8F8: tcall 0
C8F9: brk
C8FA: tcall 15
C8FB: set1  $11
C8FD: cmpw  ya,$CB
C8FF: mov   a,y
C900: mov   a,y
C901: sleep
C902: dbnz  y,$c8f4
C904: dbnz  y,$c8e6
C906: and1  c,$10EC,06
C909: set1  $31
C90B: dbnz  y,$c8cc
C90D: tcall 1
C90E: bmi   $c95a
C910: cbne  $F1+x,$c915
C913: jmp   ($EDEC+x)
C916: tcall 0
C917: bbs1  $4A,$c94d
C91A: mov   ($F0),($BD)
C91D: tcall 3
C91E: brk
C91F: bpl   $c902
C921: and1  c,$1F32,07
C924: tcall 15
C925: eor   a,(x)
C926: cmp   a,($32)+y
C928: dbnz  y,$c929
C92A: cmpw  ya,$36
C92C: eor   a,$2133+x
C92F: bbc1  $21,$c944
C932: clr1  $6A
C934: set1  $11
C936: clr0  $23
C938: and   a,$54+x
C93A: eor   a,$7A43+x
C93D: set1  $22
C93F: bbs1  $44,$c987
C942: eor   a,$6555+x
C945: addw  ya,$56
C947: eor   a,$33+x
C949: set1  $11
C94B: tcall 0
C94C: clr0  $21
C94E: addw  ya,$00
C950: jmp   ($EDFE+x)
C953: mov   y,$DCCC
C956: mov   $CC7A,y
C959: dec   y
C95A: mov   $CCDD,y
C95D: mov   x,#$DD
C95F: cbne  $56+x,$c9a4
C962: beq   $c964
C964: tcall 0
C965: set1  $23
C967: clr1  $22
C969: cmpw  ya,$BD
C96B: mov   a,y
C96C: pop   y
C96D: sleep
C96E: jmp   ($DEFE+x)
C971: brk
C972: and1  c,$1023,01
C975: stop
C976: set1  $12
C978: jmp   ($FF12+x)
C97B: and1  c,$1124,01
C97E: jmp   ($BEFD+x)
C981: bbs2  $23,$c980
C984: and1  c,$1DE0,07
C987: dbnz  y,$c997
C989: stop
C98A: set1  $10
C98C: mov   y,$4A
C98E: cmp   y,#$02
C990: eor   a,($51)+y
C992: dbnz  y,$c965
C994: clr0  $53
C996: cmpw  ya,$24
C998: clr1  $33
C99A: bpl   $c9ad
C99C: clr0  $22
C99E: clr0  $6A
C9A0: bpl   $c9a2
C9A2: set1  $22
C9A4: and   a,$3434+x
C9A7: set1  $7A
C9A9: clr0  $23
C9AB: bbs1  $33,$c9e3
C9AE: eor   a,$56+x
C9B0: cmp   a,$657A
C9B3: bbc1  $33,$c9d8
C9B6: tcall 2
C9B7: tcall 0
C9B8: tcall 2
C9B9: tcall 1
C9BA: addw  ya,$D3
C9BC: bpl   $c9ac
C9BE: pop   y
C9BF: dec   y
C9C0: mov   $CCDC,y
C9C3: ror   $CC+x
C9C5: mov   a,y
C9C6: mov   $CD,y
C9C8: mov   a,y
C9C9: mov   $DEDD,y
C9CC: nop
C9CD: nop
C9CE: nop
C9CF: nop
C9D0: nop
C9D1: nop
C9D2: nop
C9D3: nop
C9D4: nop
C9D5: nop
C9D6: nop
C9D7: nop
C9D8: nop
C9D9: nop
C9DA: nop
C9DB: nop
C9DC: nop
C9DD: nop
C9DE: nop
C9DF: nop
C9E0: nop
C9E1: nop
C9E2: nop
C9E3: nop
C9E4: nop
C9E5: nop
C9E6: nop
C9E7: nop
C9E8: nop
C9E9: nop
C9EA: nop
C9EB: nop
C9EC: nop
C9ED: nop
C9EE: nop
C9EF: nop
C9F0: nop
C9F1: nop
C9F2: nop
C9F3: nop
C9F4: nop
C9F5: nop
C9F6: nop
C9F7: nop
C9F8: nop
C9F9: nop
C9FA: nop
C9FB: nop
C9FC: nop
C9FD: nop
C9FE: nop
C9FF: nop
CA00: nop
CA01: nop
CA02: nop
CA03: nop
CA04: nop
CA05: nop
CA06: nop
CA07: nop
CA08: nop
CA09: nop
CA0A: nop
CA0B: nop
CA0C: nop
CA0D: nop
CA0E: nop
CA0F: nop
CA10: nop
CA11: nop
CA12: nop
CA13: nop
CA14: nop
CA15: nop
CA16: nop
CA17: nop
CA18: nop
CA19: nop
CA1A: nop
CA1B: nop
CA1C: nop
CA1D: nop
CA1E: nop
CA1F: nop
CA20: nop
CA21: nop
CA22: nop
CA23: nop
CA24: nop
CA25: nop
CA26: nop
CA27: nop
CA28: nop
CA29: nop
CA2A: nop
CA2B: nop
CA2C: nop
CA2D: nop
CA2E: nop
CA2F: nop
CA30: nop
CA31: nop
CA32: nop
CA33: nop
CA34: nop
CA35: nop
CA36: nop
CA37: nop
CA38: nop
CA39: nop
CA3A: nop
CA3B: nop
CA3C: nop
CA3D: nop
CA3E: nop
CA3F: nop
CA40: nop
CA41: nop
CA42: nop
CA43: nop
CA44: nop
CA45: nop
CA46: nop
CA47: nop
CA48: nop
CA49: nop
CA4A: nop
CA4B: nop
CA4C: nop
CA4D: nop
CA4E: nop
CA4F: nop
CA50: nop
CA51: nop
CA52: nop
CA53: nop
CA54: nop
CA55: nop
CA56: nop
CA57: nop
CA58: nop
CA59: nop
CA5A: nop
CA5B: nop
CA5C: nop
CA5D: nop
CA5E: nop
CA5F: nop
CA60: nop
CA61: nop
CA62: nop
CA63: nop
CA64: nop
CA65: nop
CA66: nop
CA67: nop
CA68: nop
CA69: nop
CA6A: nop
CA6B: nop
CA6C: nop
CA6D: nop
CA6E: nop
CA6F: nop
CA70: nop
CA71: nop
CA72: nop
CA73: nop
CA74: nop
CA75: nop
CA76: nop
CA77: nop
CA78: nop
CA79: nop
CA7A: nop
CA7B: nop
CA7C: nop
CA7D: nop
CA7E: nop
CA7F: nop
CA80: nop
CA81: nop
CA82: nop
CA83: nop
CA84: nop
CA85: nop
CA86: nop
CA87: nop
CA88: nop
CA89: nop
CA8A: nop
CA8B: nop
CA8C: nop
CA8D: nop
CA8E: nop
CA8F: nop
CA90: nop
CA91: nop
CA92: nop
CA93: nop
CA94: nop
CA95: nop
CA96: nop
CA97: nop
CA98: nop
CA99: nop
CA9A: nop
CA9B: nop
CA9C: nop
CA9D: nop
CA9E: nop
CA9F: nop
CAA0: nop
CAA1: nop
CAA2: nop
CAA3: nop
CAA4: nop
CAA5: nop
CAA6: nop
CAA7: nop
CAA8: nop
CAA9: nop
CAAA: nop
CAAB: nop
CAAC: nop
CAAD: nop
CAAE: nop
CAAF: nop
CAB0: nop
CAB1: nop
CAB2: nop
CAB3: nop
CAB4: nop
CAB5: nop
CAB6: nop
CAB7: nop
CAB8: nop
CAB9: nop
CABA: nop
CABB: nop
CABC: nop
CABD: nop
CABE: nop
CABF: nop
CAC0: nop
CAC1: nop
CAC2: nop
CAC3: nop
CAC4: nop
CAC5: nop
CAC6: nop
CAC7: nop
CAC8: nop
CAC9: nop
CACA: nop
CACB: nop
CACC: nop
CACD: nop
CACE: nop
CACF: nop
CAD0: nop
CAD1: nop
CAD2: nop
CAD3: nop
CAD4: nop
CAD5: nop
CAD6: nop
CAD7: nop
CAD8: nop
CAD9: nop
CADA: nop
CADB: nop
CADC: nop
CADD: nop
CADE: nop
CADF: nop
CAE0: nop
CAE1: nop
CAE2: nop
CAE3: nop
CAE4: nop
CAE5: nop
CAE6: nop
CAE7: nop
CAE8: nop
CAE9: nop
CAEA: nop
CAEB: nop
CAEC: nop
CAED: nop
CAEE: nop
CAEF: nop
CAF0: nop
CAF1: nop
CAF2: nop
CAF3: nop
CAF4: nop
CAF5: nop
CAF6: nop
CAF7: nop
CAF8: nop
CAF9: nop
CAFA: nop
CAFB: nop
CAFC: nop
CAFD: nop
CAFE: nop
CAFF: nop
CB00: nop
CB01: nop
CB02: nop
CB03: nop
CB04: nop
CB05: nop
CB06: nop
CB07: nop
CB08: nop
CB09: nop
CB0A: nop
CB0B: nop
CB0C: nop
CB0D: nop
CB0E: nop
CB0F: nop
CB10: nop
CB11: nop
CB12: nop
CB13: nop
CB14: nop
CB15: nop
CB16: nop
CB17: nop
CB18: nop
CB19: nop
CB1A: nop
CB1B: nop
CB1C: nop
CB1D: nop
CB1E: nop
CB1F: nop
CB20: nop
CB21: nop
CB22: nop
CB23: nop
CB24: nop
CB25: nop
CB26: nop
CB27: nop
CB28: nop
CB29: nop
CB2A: nop
CB2B: nop
CB2C: nop
CB2D: nop
CB2E: nop
CB2F: nop
CB30: nop
CB31: nop
CB32: nop
CB33: nop
CB34: nop
CB35: nop
CB36: nop
CB37: nop
CB38: nop
CB39: nop
CB3A: nop
CB3B: nop
CB3C: nop
CB3D: nop
CB3E: nop
CB3F: nop
CB40: nop
CB41: nop
CB42: nop
CB43: nop
CB44: nop
CB45: nop
CB46: nop
CB47: nop
CB48: nop
CB49: nop
CB4A: nop
CB4B: nop
CB4C: nop
CB4D: nop
CB4E: nop
CB4F: nop
CB50: nop
CB51: nop
CB52: nop
CB53: nop
CB54: nop
CB55: nop
CB56: nop
CB57: nop
CB58: nop
CB59: nop
CB5A: nop
CB5B: nop
CB5C: nop
CB5D: nop
CB5E: nop
CB5F: nop
CB60: nop
CB61: nop
CB62: nop
CB63: nop
CB64: nop
CB65: nop
CB66: nop
CB67: nop
CB68: nop
CB69: nop
CB6A: nop
CB6B: nop
CB6C: nop
CB6D: nop
CB6E: nop
CB6F: nop
CB70: nop
CB71: nop
CB72: nop
CB73: nop
CB74: nop
CB75: nop
CB76: nop
CB77: nop
CB78: nop
CB79: nop
CB7A: nop
CB7B: nop
CB7C: nop
CB7D: nop
CB7E: nop
CB7F: nop
CB80: nop
CB81: nop
CB82: nop
CB83: nop
CB84: nop
CB85: nop
CB86: nop
CB87: nop
CB88: nop
CB89: nop
CB8A: nop
CB8B: nop
CB8C: nop
CB8D: nop
CB8E: nop
CB8F: nop
CB90: nop
CB91: nop
CB92: nop
CB93: nop
CB94: nop
CB95: nop
CB96: nop
CB97: nop
CB98: nop
CB99: nop
CB9A: nop
CB9B: nop
CB9C: nop
CB9D: nop
CB9E: nop
CB9F: nop
CBA0: nop
CBA1: nop
CBA2: nop
CBA3: nop
CBA4: nop
CBA5: nop
CBA6: nop
CBA7: nop
CBA8: nop
CBA9: nop
CBAA: nop
CBAB: nop
CBAC: nop
CBAD: nop
CBAE: nop
CBAF: nop
CBB0: nop
CBB1: nop
CBB2: nop
CBB3: nop
CBB4: nop
CBB5: nop
CBB6: nop
CBB7: nop
CBB8: nop
CBB9: nop
CBBA: nop
CBBB: nop
CBBC: nop
CBBD: nop
CBBE: nop
CBBF: nop
CBC0: nop
CBC1: nop
CBC2: nop
CBC3: nop
CBC4: nop
CBC5: nop
CBC6: nop
CBC7: nop
CBC8: nop
CBC9: nop
CBCA: nop
CBCB: nop
CBCC: nop
CBCD: nop
CBCE: nop
CBCF: nop
CBD0: nop
CBD1: nop
CBD2: nop
CBD3: nop
CBD4: nop
CBD5: nop
CBD6: nop
CBD7: nop
CBD8: nop
CBD9: nop
CBDA: nop
CBDB: nop
CBDC: nop
CBDD: nop
CBDE: nop
CBDF: nop
CBE0: nop
CBE1: nop
CBE2: nop
CBE3: nop
CBE4: nop
CBE5: nop
CBE6: nop
CBE7: nop
CBE8: nop
CBE9: nop
CBEA: nop
CBEB: nop
CBEC: nop
CBED: nop
CBEE: nop
CBEF: nop
CBF0: nop
CBF1: nop
CBF2: nop
CBF3: nop
CBF4: nop
CBF5: nop
CBF6: nop
CBF7: nop
CBF8: nop
CBF9: nop
CBFA: nop
CBFB: nop
CBFC: nop
CBFD: nop
CBFE: nop
CBFF: nop
CC00: nop
CC01: nop
CC02: nop
CC03: nop
CC04: nop
CC05: nop
CC06: nop
CC07: nop
CC08: nop
CC09: nop
CC0A: nop
CC0B: nop
CC0C: nop
CC0D: nop
CC0E: nop
CC0F: nop
CC10: nop
CC11: nop
CC12: nop
CC13: nop
CC14: nop
CC15: nop
CC16: nop
CC17: nop
CC18: nop
CC19: nop
CC1A: nop
CC1B: nop
CC1C: nop
CC1D: nop
CC1E: nop
CC1F: nop
CC20: nop
CC21: nop
CC22: nop
CC23: nop
CC24: nop
CC25: nop
CC26: nop
CC27: nop
CC28: nop
CC29: nop
CC2A: nop
CC2B: nop
CC2C: nop
CC2D: nop
CC2E: nop
CC2F: nop
CC30: nop
CC31: nop
CC32: nop
CC33: nop
CC34: nop
CC35: nop
CC36: nop
CC37: nop
CC38: nop
CC39: nop
CC3A: nop
CC3B: nop
CC3C: nop
CC3D: nop
CC3E: nop
CC3F: nop
CC40: nop
CC41: nop
CC42: nop
CC43: nop
CC44: nop
CC45: nop
CC46: nop
CC47: nop
CC48: nop
CC49: nop
CC4A: nop
CC4B: nop
CC4C: nop
CC4D: nop
CC4E: nop
CC4F: nop
CC50: nop
CC51: nop
CC52: nop
CC53: nop
CC54: nop
CC55: nop
CC56: nop
CC57: nop
CC58: nop
CC59: nop
CC5A: nop
CC5B: nop
CC5C: nop
CC5D: nop
CC5E: nop
CC5F: nop
CC60: nop
CC61: nop
CC62: nop
CC63: nop
CC64: nop
CC65: nop
CC66: nop
CC67: nop
CC68: nop
CC69: nop
CC6A: nop
CC6B: nop
CC6C: nop
CC6D: nop
CC6E: nop
CC6F: nop
CC70: nop
CC71: nop
CC72: nop
CC73: nop
CC74: nop
CC75: nop
CC76: nop
CC77: nop
CC78: nop
CC79: nop
CC7A: nop
CC7B: nop
CC7C: nop
CC7D: nop
CC7E: nop
CC7F: nop
CC80: nop
CC81: nop
CC82: nop
CC83: nop
CC84: nop
CC85: nop
CC86: nop
CC87: nop
CC88: nop
CC89: nop
CC8A: nop
CC8B: nop
CC8C: nop
CC8D: nop
CC8E: nop
CC8F: nop
CC90: nop
CC91: nop
CC92: nop
CC93: nop
CC94: nop
CC95: nop
CC96: nop
CC97: nop
CC98: nop
CC99: nop
CC9A: nop
CC9B: nop
CC9C: nop
CC9D: nop
CC9E: nop
CC9F: nop
CCA0: nop
CCA1: nop
CCA2: nop
CCA3: nop
CCA4: nop
CCA5: nop
CCA6: nop
CCA7: nop
CCA8: nop
CCA9: nop
CCAA: nop
CCAB: nop
CCAC: nop
CCAD: nop
CCAE: nop
CCAF: nop
CCB0: nop
CCB1: nop
CCB2: nop
CCB3: nop
CCB4: nop
CCB5: nop
CCB6: nop
CCB7: nop
CCB8: nop
CCB9: nop
CCBA: nop
CCBB: nop
CCBC: nop
CCBD: nop
CCBE: nop
CCBF: nop
CCC0: nop
CCC1: nop
CCC2: nop
CCC3: nop
CCC4: nop
CCC5: nop
CCC6: nop
CCC7: nop
CCC8: nop
CCC9: nop
CCCA: nop
CCCB: nop
CCCC: nop
CCCD: nop
CCCE: nop
CCCF: nop
CCD0: nop
CCD1: nop
CCD2: nop
CCD3: nop
CCD4: nop
CCD5: nop
CCD6: nop
CCD7: nop
CCD8: nop
CCD9: nop
CCDA: nop
CCDB: nop
CCDC: nop
CCDD: nop
CCDE: nop
CCDF: nop
CCE0: nop
CCE1: nop
CCE2: nop
CCE3: nop
CCE4: nop
CCE5: nop
CCE6: nop
CCE7: nop
CCE8: nop
CCE9: nop
CCEA: nop
CCEB: nop
CCEC: nop
CCED: nop
CCEE: nop
CCEF: nop
CCF0: nop
CCF1: nop
CCF2: nop
CCF3: nop
CCF4: nop
CCF5: nop
CCF6: nop
CCF7: nop
CCF8: nop
CCF9: nop
CCFA: nop
CCFB: nop
CCFC: nop
CCFD: nop
CCFE: nop
CCFF: nop
CD00: nop
CD01: nop
CD02: nop
CD03: nop
CD04: nop
CD05: nop
CD06: nop
CD07: nop
CD08: nop
CD09: nop
CD0A: nop
CD0B: nop
CD0C: nop
CD0D: nop
CD0E: nop
CD0F: nop
CD10: nop
CD11: nop
CD12: nop
CD13: nop
CD14: nop
CD15: nop
CD16: nop
CD17: nop
CD18: nop
CD19: nop
CD1A: nop
CD1B: nop
CD1C: nop
CD1D: nop
CD1E: nop
CD1F: nop
CD20: nop
CD21: nop
CD22: nop
CD23: nop
CD24: nop
CD25: nop
CD26: nop
CD27: nop
CD28: nop
CD29: nop
CD2A: nop
CD2B: nop
CD2C: nop
CD2D: nop
CD2E: nop
CD2F: nop
CD30: nop
CD31: nop
CD32: nop
CD33: nop
CD34: nop
CD35: nop
CD36: nop
CD37: nop
CD38: nop
CD39: nop
CD3A: nop
CD3B: nop
CD3C: nop
CD3D: nop
CD3E: nop
CD3F: nop
CD40: nop
CD41: nop
CD42: nop
CD43: nop
CD44: nop
CD45: nop
CD46: nop
CD47: nop
CD48: nop
CD49: nop
CD4A: nop
CD4B: nop
CD4C: nop
CD4D: nop
CD4E: nop
CD4F: nop
CD50: nop
CD51: nop
CD52: nop
CD53: nop
CD54: nop
CD55: nop
CD56: nop
CD57: nop
CD58: nop
CD59: nop
CD5A: nop
CD5B: nop
CD5C: nop
CD5D: nop
CD5E: nop
CD5F: nop
CD60: nop
CD61: nop
CD62: nop
CD63: nop
CD64: nop
CD65: nop
CD66: nop
CD67: nop
CD68: nop
CD69: nop
CD6A: nop
CD6B: nop
CD6C: nop
CD6D: nop
CD6E: nop
CD6F: nop
CD70: nop
CD71: nop
CD72: nop
CD73: nop
CD74: nop
CD75: nop
CD76: nop
CD77: nop
CD78: nop
CD79: nop
CD7A: nop
CD7B: nop
CD7C: nop
CD7D: nop
CD7E: nop
CD7F: nop
CD80: nop
CD81: nop
CD82: nop
CD83: nop
CD84: nop
CD85: nop
CD86: nop
CD87: nop
CD88: nop
CD89: nop
CD8A: nop
CD8B: nop
CD8C: nop
CD8D: nop
CD8E: nop
CD8F: nop
CD90: nop
CD91: nop
CD92: nop
CD93: nop
CD94: nop
CD95: nop
CD96: nop
CD97: nop
CD98: nop
CD99: nop
CD9A: nop
CD9B: nop
CD9C: nop
CD9D: nop
CD9E: nop
CD9F: nop
CDA0: nop
CDA1: nop
CDA2: nop
CDA3: nop
CDA4: nop
CDA5: nop
CDA6: nop
CDA7: nop
CDA8: nop
CDA9: nop
CDAA: nop
CDAB: nop
CDAC: nop
CDAD: nop
CDAE: nop
CDAF: nop
CDB0: nop
CDB1: nop
CDB2: nop
CDB3: nop
CDB4: nop
CDB5: nop
CDB6: nop
CDB7: nop
CDB8: nop
CDB9: nop
CDBA: nop
CDBB: nop
CDBC: nop
CDBD: nop
CDBE: nop
CDBF: nop
CDC0: nop
CDC1: nop
CDC2: nop
CDC3: nop
CDC4: nop
CDC5: nop
CDC6: nop
CDC7: nop
CDC8: nop
CDC9: nop
CDCA: nop
CDCB: nop
CDCC: nop
CDCD: nop
CDCE: nop
CDCF: nop
CDD0: nop
CDD1: nop
CDD2: nop
CDD3: nop
CDD4: nop
CDD5: nop
CDD6: nop
CDD7: nop
CDD8: nop
CDD9: nop
CDDA: nop
CDDB: nop
CDDC: nop
CDDD: nop
CDDE: nop
CDDF: nop
CDE0: nop
CDE1: nop
CDE2: nop
CDE3: nop
CDE4: nop
CDE5: nop
CDE6: nop
CDE7: nop
CDE8: nop
CDE9: nop
CDEA: nop
CDEB: nop
CDEC: nop
CDED: nop
CDEE: nop
CDEF: nop
CDF0: nop
CDF1: nop
CDF2: nop
CDF3: nop
CDF4: nop
CDF5: nop
CDF6: nop
CDF7: nop
CDF8: nop
CDF9: nop
CDFA: nop
CDFB: nop
CDFC: nop
CDFD: nop
CDFE: nop
CDFF: nop
CE00: nop
CE01: nop
CE02: nop
CE03: nop
CE04: nop
CE05: nop
CE06: nop
CE07: nop
CE08: nop
CE09: nop
CE0A: nop
CE0B: nop
CE0C: nop
CE0D: nop
CE0E: nop
CE0F: nop
CE10: nop
CE11: nop
CE12: nop
CE13: nop
CE14: nop
CE15: nop
CE16: nop
CE17: nop
CE18: nop
CE19: nop
CE1A: nop
CE1B: nop
CE1C: nop
CE1D: nop
CE1E: nop
CE1F: nop
CE20: nop
CE21: nop
CE22: nop
CE23: nop
CE24: nop
CE25: nop
CE26: nop
CE27: nop
CE28: nop
CE29: nop
CE2A: nop
CE2B: nop
CE2C: nop
CE2D: nop
CE2E: nop
CE2F: nop
CE30: nop
CE31: nop
CE32: nop
CE33: nop
CE34: nop
CE35: nop
CE36: nop
CE37: nop
CE38: nop
CE39: nop
CE3A: nop
CE3B: nop
CE3C: nop
CE3D: nop
CE3E: nop
CE3F: nop
CE40: nop
CE41: nop
CE42: nop
CE43: nop
CE44: nop
CE45: nop
CE46: nop
CE47: nop
CE48: nop
CE49: nop
CE4A: nop
CE4B: nop
CE4C: nop
CE4D: nop
CE4E: nop
CE4F: nop
CE50: nop
CE51: nop
CE52: nop
CE53: nop
CE54: nop
CE55: nop
CE56: nop
CE57: nop
CE58: nop
CE59: nop
CE5A: nop
CE5B: nop
CE5C: nop
CE5D: nop
CE5E: nop
CE5F: nop
CE60: nop
CE61: nop
CE62: nop
CE63: nop
CE64: nop
CE65: nop
CE66: nop
CE67: nop
CE68: nop
CE69: nop
CE6A: nop
CE6B: nop
CE6C: nop
CE6D: nop
CE6E: nop
CE6F: nop
CE70: nop
CE71: nop
CE72: nop
CE73: nop
CE74: nop
CE75: nop
CE76: nop
CE77: nop
CE78: nop
CE79: nop
CE7A: nop
CE7B: nop
CE7C: nop
CE7D: nop
CE7E: nop
CE7F: nop
CE80: nop
CE81: nop
CE82: nop
CE83: nop
CE84: nop
CE85: nop
CE86: nop
CE87: nop
CE88: nop
CE89: nop
CE8A: nop
CE8B: nop
CE8C: nop
CE8D: nop
CE8E: nop
CE8F: nop
CE90: nop
CE91: nop
CE92: nop
CE93: nop
CE94: nop
CE95: nop
CE96: nop
CE97: nop
CE98: nop
CE99: nop
CE9A: nop
CE9B: nop
CE9C: nop
CE9D: nop
CE9E: nop
CE9F: nop
CEA0: nop
CEA1: nop
CEA2: nop
CEA3: nop
CEA4: nop
CEA5: nop
CEA6: nop
CEA7: nop
CEA8: nop
CEA9: nop
CEAA: nop
CEAB: nop
CEAC: nop
CEAD: nop
CEAE: nop
CEAF: nop
CEB0: nop
CEB1: nop
CEB2: nop
CEB3: nop
CEB4: nop
CEB5: nop
CEB6: nop
CEB7: nop
CEB8: nop
CEB9: nop
CEBA: nop
CEBB: nop
CEBC: nop
CEBD: nop
CEBE: nop
CEBF: nop
CEC0: nop
CEC1: nop
CEC2: nop
CEC3: nop
CEC4: nop
CEC5: nop
CEC6: nop
CEC7: nop
CEC8: nop
CEC9: nop
CECA: nop
CECB: nop
CECC: nop
CECD: nop
CECE: nop
CECF: nop
CED0: nop
CED1: nop
CED2: nop
CED3: nop
CED4: nop
CED5: nop
CED6: nop
CED7: nop
CED8: nop
CED9: nop
CEDA: nop
CEDB: nop
CEDC: nop
CEDD: nop
CEDE: nop
CEDF: nop
CEE0: nop
CEE1: nop
CEE2: nop
CEE3: nop
CEE4: nop
CEE5: nop
CEE6: nop
CEE7: nop
CEE8: nop
CEE9: nop
CEEA: nop
CEEB: nop
CEEC: nop
CEED: nop
CEEE: nop
CEEF: nop
CEF0: nop
CEF1: nop
CEF2: nop
CEF3: nop
CEF4: nop
CEF5: nop
CEF6: nop
CEF7: nop
CEF8: nop
CEF9: nop
CEFA: nop
CEFB: nop
CEFC: nop
CEFD: nop
CEFE: nop
CEFF: nop
CF00: nop
CF01: nop
CF02: nop
CF03: nop
CF04: nop
CF05: nop
CF06: nop
CF07: nop
CF08: nop
CF09: nop
CF0A: nop
CF0B: nop
CF0C: nop
CF0D: nop
CF0E: nop
CF0F: nop
CF10: nop
CF11: nop
CF12: nop
CF13: nop
CF14: nop
CF15: nop
CF16: nop
CF17: nop
CF18: nop
CF19: nop
CF1A: nop
CF1B: nop
CF1C: nop
CF1D: nop
CF1E: nop
CF1F: nop
CF20: nop
CF21: nop
CF22: nop
CF23: nop
CF24: nop
CF25: nop
CF26: nop
CF27: nop
CF28: nop
CF29: nop
CF2A: nop
CF2B: nop
CF2C: nop
CF2D: nop
CF2E: nop
CF2F: nop
CF30: nop
CF31: nop
CF32: nop
CF33: nop
CF34: nop
CF35: nop
CF36: nop
CF37: nop
CF38: nop
CF39: nop
CF3A: nop
CF3B: nop
CF3C: nop
CF3D: nop
CF3E: nop
CF3F: nop
CF40: nop
CF41: nop
CF42: nop
CF43: nop
CF44: nop
CF45: nop
CF46: nop
CF47: nop
CF48: nop
CF49: nop
CF4A: nop
CF4B: nop
CF4C: nop
CF4D: nop
CF4E: nop
CF4F: nop
CF50: nop
CF51: nop
CF52: nop
CF53: nop
CF54: nop
CF55: nop
CF56: nop
CF57: nop
CF58: nop
CF59: nop
CF5A: nop
CF5B: nop
CF5C: nop
CF5D: nop
CF5E: nop
CF5F: nop
CF60: nop
CF61: nop
CF62: nop
CF63: nop
CF64: nop
CF65: nop
CF66: nop
CF67: nop
CF68: nop
CF69: nop
CF6A: nop
CF6B: nop
CF6C: nop
CF6D: nop
CF6E: nop
CF6F: nop
CF70: nop
CF71: nop
CF72: nop
CF73: nop
CF74: nop
CF75: nop
CF76: nop
CF77: nop
CF78: nop
CF79: nop
CF7A: nop
CF7B: nop
CF7C: nop
CF7D: nop
CF7E: nop
CF7F: nop
CF80: nop
CF81: nop
CF82: nop
CF83: nop
CF84: nop
CF85: nop
CF86: nop
CF87: nop
CF88: nop
CF89: nop
CF8A: nop
CF8B: nop
CF8C: nop
CF8D: nop
CF8E: nop
CF8F: nop
CF90: nop
CF91: nop
CF92: nop
CF93: nop
CF94: nop
CF95: nop
CF96: nop
CF97: nop
CF98: nop
CF99: nop
CF9A: nop
CF9B: nop
CF9C: nop
CF9D: nop
CF9E: nop
CF9F: nop
CFA0: nop
CFA1: nop
CFA2: nop
CFA3: nop
CFA4: nop
CFA5: nop
CFA6: nop
CFA7: nop
CFA8: nop
CFA9: nop
CFAA: nop
CFAB: nop
CFAC: nop
CFAD: nop
CFAE: nop
CFAF: nop
CFB0: nop
CFB1: nop
CFB2: nop
CFB3: nop
CFB4: nop
CFB5: nop
CFB6: nop
CFB7: nop
CFB8: nop
CFB9: nop
CFBA: nop
CFBB: nop
CFBC: nop
CFBD: nop
CFBE: nop
CFBF: nop
CFC0: nop
CFC1: nop
CFC2: nop
CFC3: nop
CFC4: nop
CFC5: nop
CFC6: nop
CFC7: nop
CFC8: nop
CFC9: nop
CFCA: nop
CFCB: nop
CFCC: nop
CFCD: nop
CFCE: nop
CFCF: nop
CFD0: nop
CFD1: nop
CFD2: nop
CFD3: nop
CFD4: nop
CFD5: nop
CFD6: nop
CFD7: nop
CFD8: nop
CFD9: nop
CFDA: nop
CFDB: nop
CFDC: nop
CFDD: nop
CFDE: nop
CFDF: nop
CFE0: nop
CFE1: nop
CFE2: nop
CFE3: nop
CFE4: nop
CFE5: nop
CFE6: nop
CFE7: nop
CFE8: nop
CFE9: nop
CFEA: nop
CFEB: nop
CFEC: nop
CFED: nop
CFEE: nop
CFEF: nop
CFF0: nop
CFF1: nop
CFF2: nop
CFF3: nop
CFF4: nop
CFF5: nop
CFF6: nop
CFF7: nop
CFF8: nop
CFF9: nop
CFFA: nop
CFFB: nop
CFFC: nop
CFFD: nop
CFFE: nop
CFFF: nop
D000: nop
D001: nop
D002: nop
D003: nop
D004: nop
D005: nop
D006: nop
D007: nop
D008: nop
D009: nop
D00A: nop
D00B: nop
D00C: nop
D00D: nop
D00E: nop
D00F: nop
D010: nop
D011: nop
D012: nop
D013: nop
D014: nop
D015: nop
D016: nop
D017: nop
D018: nop
D019: nop
D01A: nop
D01B: nop
D01C: nop
D01D: nop
D01E: nop
D01F: nop
D020: nop
D021: nop
D022: nop
D023: nop
D024: nop
D025: nop
D026: nop
D027: nop
D028: nop
D029: nop
D02A: nop
D02B: nop
D02C: nop
D02D: nop
D02E: nop
D02F: nop
D030: nop
D031: nop
D032: nop
D033: nop
D034: nop
D035: nop
D036: nop
D037: nop
D038: nop
D039: nop
D03A: nop
D03B: nop
D03C: nop
D03D: nop
D03E: nop
D03F: nop
D040: nop
D041: nop
D042: nop
D043: nop
D044: nop
D045: nop
D046: nop
D047: nop
D048: nop
D049: nop
D04A: nop
D04B: nop
D04C: nop
D04D: nop
D04E: nop
D04F: nop
D050: nop
D051: nop
D052: nop
D053: nop
D054: nop
D055: nop
D056: nop
D057: nop
D058: nop
D059: nop
D05A: nop
D05B: nop
D05C: nop
D05D: nop
D05E: nop
D05F: nop
D060: nop
D061: nop
D062: nop
D063: nop
D064: nop
D065: nop
D066: nop
D067: nop
D068: nop
D069: nop
D06A: nop
D06B: nop
D06C: nop
D06D: nop
D06E: nop
D06F: nop
D070: nop
D071: nop
D072: nop
D073: nop
D074: nop
D075: nop
D076: nop
D077: nop
D078: nop
D079: nop
D07A: nop
D07B: nop
D07C: nop
D07D: nop
D07E: nop
D07F: nop
D080: nop
D081: nop
D082: nop
D083: nop
D084: nop
D085: nop
D086: nop
D087: nop
D088: nop
D089: nop
D08A: nop
D08B: nop
D08C: nop
D08D: nop
D08E: nop
D08F: nop
D090: nop
D091: nop
D092: nop
D093: nop
D094: nop
D095: nop
D096: nop
D097: nop
D098: nop
D099: nop
D09A: nop
D09B: nop
D09C: nop
D09D: nop
D09E: nop
D09F: nop
D0A0: nop
D0A1: nop
D0A2: nop
D0A3: nop
D0A4: nop
D0A5: nop
D0A6: nop
D0A7: nop
D0A8: nop
D0A9: nop
D0AA: nop
D0AB: nop
D0AC: nop
D0AD: nop
D0AE: nop
D0AF: nop
D0B0: nop
D0B1: nop
D0B2: nop
D0B3: nop
D0B4: nop
D0B5: nop
D0B6: nop
D0B7: nop
D0B8: nop
D0B9: nop
D0BA: nop
D0BB: nop
D0BC: nop
D0BD: nop
D0BE: nop
D0BF: nop
D0C0: nop
D0C1: nop
D0C2: nop
D0C3: nop
D0C4: nop
D0C5: nop
D0C6: nop
D0C7: nop
D0C8: nop
D0C9: nop
D0CA: nop
D0CB: nop
D0CC: nop
D0CD: nop
D0CE: nop
D0CF: nop
D0D0: nop
D0D1: nop
D0D2: nop
D0D3: nop
D0D4: nop
D0D5: nop
D0D6: nop
D0D7: nop
D0D8: nop
D0D9: nop
D0DA: nop
D0DB: nop
D0DC: nop
D0DD: nop
D0DE: nop
D0DF: nop
D0E0: nop
D0E1: nop
D0E2: nop
D0E3: nop
D0E4: nop
D0E5: nop
D0E6: nop
D0E7: nop
D0E8: nop
D0E9: nop
D0EA: nop
D0EB: nop
D0EC: nop
D0ED: nop
D0EE: nop
D0EF: nop
D0F0: nop
D0F1: nop
D0F2: nop
D0F3: nop
D0F4: nop
D0F5: nop
D0F6: nop
D0F7: nop
D0F8: nop
D0F9: nop
D0FA: nop
D0FB: nop
D0FC: nop
D0FD: nop
D0FE: nop
D0FF: nop
D100: nop
D101: nop
D102: nop
D103: nop
D104: nop
D105: nop
D106: nop
D107: nop
D108: nop
D109: nop
D10A: nop
D10B: nop
D10C: nop
D10D: nop
D10E: nop
D10F: nop
D110: nop
D111: nop
D112: nop
D113: nop
D114: nop
D115: nop
D116: nop
D117: nop
D118: nop
D119: nop
D11A: nop
D11B: nop
D11C: nop
D11D: nop
D11E: nop
D11F: nop
D120: nop
D121: nop
D122: nop
D123: nop
D124: nop
D125: nop
D126: nop
D127: nop
D128: nop
D129: nop
D12A: nop
D12B: nop
D12C: nop
D12D: nop
D12E: nop
D12F: nop
D130: nop
D131: nop
D132: nop
D133: nop
D134: nop
D135: nop
D136: nop
D137: nop
D138: nop
D139: nop
D13A: nop
D13B: nop
D13C: nop
D13D: nop
D13E: nop
D13F: nop
D140: nop
D141: nop
D142: nop
D143: nop
D144: nop
D145: nop
D146: nop
D147: nop
D148: nop
D149: nop
D14A: nop
D14B: nop
D14C: nop
D14D: nop
D14E: nop
D14F: nop
D150: nop
D151: nop
D152: nop
D153: nop
D154: nop
D155: nop
D156: nop
D157: nop
D158: nop
D159: nop
D15A: nop
D15B: nop
D15C: nop
D15D: nop
D15E: nop
D15F: nop
D160: nop
D161: nop
D162: nop
D163: nop
D164: nop
D165: nop
D166: nop
D167: nop
D168: nop
D169: nop
D16A: nop
D16B: nop
D16C: nop
D16D: nop
D16E: nop
D16F: nop
D170: nop
D171: nop
D172: nop
D173: nop
D174: nop
D175: nop
D176: nop
D177: nop
D178: nop
D179: nop
D17A: nop
D17B: nop
D17C: nop
D17D: nop
D17E: nop
D17F: nop
D180: nop
D181: nop
D182: nop
D183: nop
D184: nop
D185: nop
D186: nop
D187: nop
D188: nop
D189: nop
D18A: nop
D18B: nop
D18C: nop
D18D: nop
D18E: nop
D18F: nop
D190: nop
D191: nop
D192: nop
D193: nop
D194: nop
D195: nop
D196: nop
D197: nop
D198: nop
D199: nop
D19A: nop
D19B: nop
D19C: nop
D19D: nop
D19E: nop
D19F: nop
D1A0: nop
D1A1: nop
D1A2: nop
D1A3: nop
D1A4: nop
D1A5: nop
D1A6: nop
D1A7: nop
D1A8: nop
D1A9: nop
D1AA: nop
D1AB: nop
D1AC: nop
D1AD: nop
D1AE: nop
D1AF: nop
D1B0: nop
D1B1: nop
D1B2: nop
D1B3: nop
D1B4: nop
D1B5: nop
D1B6: nop
D1B7: nop
D1B8: nop
D1B9: nop
D1BA: nop
D1BB: nop
D1BC: nop
D1BD: nop
D1BE: nop
D1BF: nop
D1C0: nop
D1C1: nop
D1C2: nop
D1C3: nop
D1C4: nop
D1C5: nop
D1C6: nop
D1C7: nop
D1C8: nop
D1C9: nop
D1CA: nop
D1CB: nop
D1CC: nop
D1CD: nop
D1CE: nop
D1CF: nop
D1D0: nop
D1D1: nop
D1D2: nop
D1D3: nop
D1D4: nop
D1D5: nop
D1D6: nop
D1D7: nop
D1D8: nop
D1D9: nop
D1DA: nop
D1DB: nop
D1DC: nop
D1DD: nop
D1DE: nop
D1DF: nop
D1E0: nop
D1E1: nop
D1E2: nop
D1E3: nop
D1E4: nop
D1E5: nop
D1E6: nop
D1E7: nop
D1E8: nop
D1E9: nop
D1EA: nop
D1EB: nop
D1EC: nop
D1ED: nop
D1EE: nop
D1EF: nop
D1F0: nop
D1F1: nop
D1F2: nop
D1F3: nop
D1F4: nop
D1F5: nop
D1F6: nop
D1F7: nop
D1F8: nop
D1F9: nop
D1FA: nop
D1FB: nop
D1FC: nop
D1FD: nop
D1FE: nop
D1FF: nop
D200: nop
D201: nop
D202: nop
D203: nop
D204: nop
D205: nop
D206: nop
D207: nop
D208: nop
D209: nop
D20A: nop
D20B: nop
D20C: nop
D20D: nop
D20E: nop
D20F: nop
D210: nop
D211: nop
D212: nop
D213: nop
D214: nop
D215: nop
D216: nop
D217: nop
D218: nop
D219: nop
D21A: nop
D21B: nop
D21C: nop
D21D: nop
D21E: nop
D21F: nop
D220: nop
D221: nop
D222: nop
D223: nop
D224: nop
D225: nop
D226: nop
D227: nop
D228: nop
D229: nop
D22A: nop
D22B: nop
D22C: nop
D22D: nop
D22E: nop
D22F: nop
D230: nop
D231: nop
D232: nop
D233: nop
D234: nop
D235: nop
D236: nop
D237: nop
D238: nop
D239: nop
D23A: nop
D23B: nop
D23C: nop
D23D: nop
D23E: nop
D23F: nop
D240: nop
D241: nop
D242: nop
D243: nop
D244: nop
D245: nop
D246: nop
D247: nop
D248: nop
D249: nop
D24A: nop
D24B: nop
D24C: nop
D24D: nop
D24E: nop
D24F: nop
D250: nop
D251: nop
D252: nop
D253: nop
D254: nop
D255: nop
D256: nop
D257: nop
D258: nop
D259: nop
D25A: nop
D25B: nop
D25C: nop
D25D: nop
D25E: nop
D25F: nop
D260: nop
D261: nop
D262: nop
D263: nop
D264: nop
D265: nop
D266: nop
D267: nop
D268: nop
D269: nop
D26A: nop
D26B: nop
D26C: nop
D26D: nop
D26E: nop
D26F: nop
D270: nop
D271: nop
D272: nop
D273: nop
D274: nop
D275: nop
D276: nop
D277: nop
D278: nop
D279: nop
D27A: nop
D27B: nop
D27C: nop
D27D: nop
D27E: nop
D27F: nop
D280: nop
D281: nop
D282: nop
D283: nop
D284: nop
D285: nop
D286: nop
D287: nop
D288: nop
D289: nop
D28A: nop
D28B: nop
D28C: nop
D28D: nop
D28E: nop
D28F: nop
D290: nop
D291: nop
D292: nop
D293: nop
D294: nop
D295: nop
D296: nop
D297: nop
D298: nop
D299: nop
D29A: nop
D29B: nop
D29C: nop
D29D: nop
D29E: nop
D29F: nop
D2A0: nop
D2A1: nop
D2A2: nop
D2A3: nop
D2A4: nop
D2A5: nop
D2A6: nop
D2A7: nop
D2A8: nop
D2A9: nop
D2AA: nop
D2AB: nop
D2AC: nop
D2AD: nop
D2AE: nop
D2AF: nop
D2B0: nop
D2B1: nop
D2B2: nop
D2B3: nop
D2B4: nop
D2B5: nop
D2B6: nop
D2B7: nop
D2B8: nop
D2B9: nop
D2BA: nop
D2BB: nop
D2BC: nop
D2BD: nop
D2BE: nop
D2BF: nop
D2C0: nop
D2C1: nop
D2C2: nop
D2C3: nop
D2C4: nop
D2C5: nop
D2C6: nop
D2C7: nop
D2C8: nop
D2C9: nop
D2CA: nop
D2CB: nop
D2CC: nop
D2CD: nop
D2CE: nop
D2CF: nop
D2D0: nop
D2D1: nop
D2D2: nop
D2D3: nop
D2D4: nop
D2D5: nop
D2D6: nop
D2D7: nop
D2D8: nop
D2D9: nop
D2DA: nop
D2DB: nop
D2DC: nop
D2DD: nop
D2DE: nop
D2DF: nop
D2E0: nop
D2E1: nop
D2E2: nop
D2E3: nop
D2E4: nop
D2E5: nop
D2E6: nop
D2E7: nop
D2E8: nop
D2E9: nop
D2EA: nop
D2EB: nop
D2EC: nop
D2ED: nop
D2EE: nop
D2EF: nop
D2F0: nop
D2F1: nop
D2F2: nop
D2F3: nop
D2F4: nop
D2F5: nop
D2F6: nop
D2F7: nop
D2F8: nop
D2F9: nop
D2FA: nop
D2FB: nop
D2FC: nop
D2FD: nop
D2FE: nop
D2FF: nop
D300: nop
D301: nop
D302: nop
D303: nop
D304: nop
D305: nop
D306: nop
D307: nop
D308: nop
D309: nop
D30A: nop
D30B: nop
D30C: nop
D30D: nop
D30E: nop
D30F: nop
D310: nop
D311: nop
D312: nop
D313: nop
D314: nop
D315: nop
D316: nop
D317: nop
D318: nop
D319: nop
D31A: nop
D31B: nop
D31C: nop
D31D: nop
D31E: nop
D31F: nop
D320: nop
D321: nop
D322: nop
D323: nop
D324: nop
D325: nop
D326: nop
D327: nop
D328: nop
D329: nop
D32A: nop
D32B: nop
D32C: nop
D32D: nop
D32E: nop
D32F: nop
D330: nop
D331: nop
D332: nop
D333: nop
D334: nop
D335: nop
D336: nop
D337: nop
D338: nop
D339: nop
D33A: nop
D33B: nop
D33C: nop
D33D: nop
D33E: nop
D33F: nop
D340: nop
D341: nop
D342: nop
D343: nop
D344: nop
D345: nop
D346: nop
D347: nop
D348: nop
D349: nop
D34A: nop
D34B: nop
D34C: nop
D34D: nop
D34E: nop
D34F: nop
D350: nop
D351: nop
D352: nop
D353: nop
D354: nop
D355: nop
D356: nop
D357: nop
D358: nop
D359: nop
D35A: nop
D35B: nop
D35C: nop
D35D: nop
D35E: nop
D35F: nop
D360: nop
D361: nop
D362: nop
D363: nop
D364: nop
D365: nop
D366: nop
D367: nop
D368: nop
D369: nop
D36A: nop
D36B: nop
D36C: nop
D36D: nop
D36E: nop
D36F: nop
D370: nop
D371: nop
D372: nop
D373: nop
D374: nop
D375: nop
D376: nop
D377: nop
D378: nop
D379: nop
D37A: nop
D37B: nop
D37C: nop
D37D: nop
D37E: nop
D37F: nop
D380: nop
D381: nop
D382: nop
D383: nop
D384: nop
D385: nop
D386: nop
D387: nop
D388: nop
D389: nop
D38A: nop
D38B: nop
D38C: nop
D38D: nop
D38E: nop
D38F: nop
D390: nop
D391: nop
D392: nop
D393: nop
D394: nop
D395: nop
D396: nop
D397: nop
D398: nop
D399: nop
D39A: nop
D39B: nop
D39C: nop
D39D: nop
D39E: nop
D39F: nop
D3A0: nop
D3A1: nop
D3A2: nop
D3A3: nop
D3A4: nop
D3A5: nop
D3A6: nop
D3A7: nop
D3A8: nop
D3A9: nop
D3AA: nop
D3AB: nop
D3AC: nop
D3AD: nop
D3AE: nop
D3AF: nop
D3B0: nop
D3B1: nop
D3B2: nop
D3B3: nop
D3B4: nop
D3B5: nop
D3B6: nop
D3B7: nop
D3B8: nop
D3B9: nop
D3BA: nop
D3BB: nop
D3BC: nop
D3BD: nop
D3BE: nop
D3BF: nop
D3C0: nop
D3C1: nop
D3C2: nop
D3C3: nop
D3C4: nop
D3C5: nop
D3C6: nop
D3C7: nop
D3C8: nop
D3C9: nop
D3CA: nop
D3CB: nop
D3CC: nop
D3CD: nop
D3CE: nop
D3CF: nop
D3D0: nop
D3D1: nop
D3D2: nop
D3D3: nop
D3D4: nop
D3D5: nop
D3D6: nop
D3D7: nop
D3D8: nop
D3D9: nop
D3DA: nop
D3DB: nop
D3DC: nop
D3DD: nop
D3DE: nop
D3DF: nop
D3E0: nop
D3E1: nop
D3E2: nop
D3E3: nop
D3E4: nop
D3E5: nop
D3E6: nop
D3E7: nop
D3E8: nop
D3E9: nop
D3EA: nop
D3EB: nop
D3EC: nop
D3ED: nop
D3EE: nop
D3EF: nop
D3F0: nop
D3F1: nop
D3F2: nop
D3F3: nop
D3F4: nop
D3F5: nop
D3F6: nop
D3F7: nop
D3F8: nop
D3F9: nop
D3FA: nop
D3FB: nop
D3FC: nop
D3FD: nop
D3FE: nop
D3FF: nop
D400: nop
D401: nop
D402: nop
D403: nop
D404: nop
D405: nop
D406: nop
D407: nop
D408: nop
D409: nop
D40A: nop
D40B: nop
D40C: nop
D40D: nop
D40E: nop
D40F: nop
D410: nop
D411: nop
D412: nop
D413: nop
D414: nop
D415: nop
D416: nop
D417: nop
D418: nop
D419: nop
D41A: nop
D41B: nop
D41C: nop
D41D: nop
D41E: nop
D41F: nop
D420: nop
D421: nop
D422: nop
D423: nop
D424: nop
D425: nop
D426: nop
D427: nop
D428: nop
D429: nop
D42A: nop
D42B: nop
D42C: nop
D42D: nop
D42E: nop
D42F: nop
D430: nop
D431: nop
D432: nop
D433: nop
D434: nop
D435: nop
D436: nop
D437: nop
D438: nop
D439: nop
D43A: nop
D43B: nop
D43C: nop
D43D: nop
D43E: nop
D43F: nop
D440: nop
D441: nop
D442: nop
D443: nop
D444: nop
D445: nop
D446: nop
D447: nop
D448: nop
D449: nop
D44A: nop
D44B: nop
D44C: nop
D44D: nop
D44E: nop
D44F: nop
D450: nop
D451: nop
D452: nop
D453: nop
D454: nop
D455: nop
D456: nop
D457: nop
D458: nop
D459: nop
D45A: nop
D45B: nop
D45C: nop
D45D: nop
D45E: nop
D45F: nop
D460: nop
D461: nop
D462: nop
D463: nop
D464: nop
D465: nop
D466: nop
D467: nop
D468: nop
D469: nop
D46A: nop
D46B: nop
D46C: nop
D46D: nop
D46E: nop
D46F: nop
D470: nop
D471: nop
D472: nop
D473: nop
D474: nop
D475: nop
D476: nop
D477: nop
D478: nop
D479: nop
D47A: nop
D47B: nop
D47C: nop
D47D: nop
D47E: nop
D47F: nop
D480: nop
D481: nop
D482: nop
D483: nop
D484: nop
D485: nop
D486: nop
D487: nop
D488: nop
D489: nop
D48A: nop
D48B: nop
D48C: nop
D48D: nop
D48E: nop
D48F: nop
D490: nop
D491: nop
D492: nop
D493: nop
D494: nop
D495: nop
D496: nop
D497: nop
D498: nop
D499: nop
D49A: nop
D49B: nop
D49C: nop
D49D: nop
D49E: nop
D49F: nop
D4A0: nop
D4A1: nop
D4A2: nop
D4A3: nop
D4A4: nop
D4A5: nop
D4A6: nop
D4A7: nop
D4A8: nop
D4A9: nop
D4AA: nop
D4AB: nop
D4AC: nop
D4AD: nop
D4AE: nop
D4AF: nop
D4B0: nop
D4B1: nop
D4B2: nop
D4B3: nop
D4B4: nop
D4B5: nop
D4B6: nop
D4B7: nop
D4B8: nop
D4B9: nop
D4BA: nop
D4BB: nop
D4BC: nop
D4BD: nop
D4BE: nop
D4BF: nop
D4C0: nop
D4C1: nop
D4C2: nop
D4C3: nop
D4C4: nop
D4C5: nop
D4C6: nop
D4C7: nop
D4C8: nop
D4C9: nop
D4CA: nop
D4CB: nop
D4CC: nop
D4CD: nop
D4CE: nop
D4CF: nop
D4D0: nop
D4D1: nop
D4D2: nop
D4D3: nop
D4D4: nop
D4D5: nop
D4D6: nop
D4D7: nop
D4D8: nop
D4D9: nop
D4DA: nop
D4DB: nop
D4DC: nop
D4DD: nop
D4DE: nop
D4DF: nop
D4E0: nop
D4E1: nop
D4E2: nop
D4E3: nop
D4E4: nop
D4E5: nop
D4E6: nop
D4E7: nop
D4E8: nop
D4E9: nop
D4EA: nop
D4EB: nop
D4EC: nop
D4ED: nop
D4EE: nop
D4EF: nop
D4F0: nop
D4F1: nop
D4F2: nop
D4F3: nop
D4F4: nop
D4F5: nop
D4F6: nop
D4F7: nop
D4F8: nop
D4F9: nop
D4FA: nop
D4FB: nop
D4FC: nop
D4FD: nop
D4FE: nop
D4FF: nop
D500: nop
D501: nop
D502: nop
D503: nop
D504: nop
D505: nop
D506: nop
D507: nop
D508: nop
D509: nop
D50A: nop
D50B: nop
D50C: nop
D50D: nop
D50E: nop
D50F: nop
D510: nop
D511: nop
D512: nop
D513: nop
D514: nop
D515: nop
D516: nop
D517: nop
D518: nop
D519: nop
D51A: nop
D51B: nop
D51C: nop
D51D: nop
D51E: nop
D51F: nop
D520: nop
D521: nop
D522: nop
D523: nop
D524: nop
D525: nop
D526: nop
D527: nop
D528: nop
D529: nop
D52A: nop
D52B: nop
D52C: nop
D52D: nop
D52E: nop
D52F: nop
D530: nop
D531: nop
D532: nop
D533: nop
D534: nop
D535: nop
D536: nop
D537: nop
D538: nop
D539: nop
D53A: nop
D53B: nop
D53C: nop
D53D: nop
D53E: nop
D53F: nop
D540: nop
D541: nop
D542: nop
D543: nop
D544: nop
D545: nop
D546: nop
D547: nop
D548: nop
D549: nop
D54A: nop
D54B: nop
D54C: nop
D54D: nop
D54E: nop
D54F: nop
D550: nop
D551: nop
D552: nop
D553: nop
D554: nop
D555: nop
D556: nop
D557: nop
D558: nop
D559: nop
D55A: nop
D55B: nop
D55C: nop
D55D: nop
D55E: nop
D55F: nop
D560: nop
D561: nop
D562: nop
D563: nop
D564: nop
D565: nop
D566: nop
D567: nop
D568: nop
D569: nop
D56A: nop
D56B: nop
D56C: nop
D56D: nop
D56E: nop
D56F: nop
D570: nop
D571: nop
D572: nop
D573: nop
D574: nop
D575: nop
D576: nop
D577: nop
D578: nop
D579: nop
D57A: nop
D57B: nop
D57C: nop
D57D: nop
D57E: nop
D57F: nop
D580: nop
D581: nop
D582: nop
D583: nop
D584: nop
D585: nop
D586: nop
D587: nop
D588: nop
D589: nop
D58A: nop
D58B: nop
D58C: nop
D58D: nop
D58E: nop
D58F: nop
D590: nop
D591: nop
D592: nop
D593: nop
D594: nop
D595: nop
D596: nop
D597: nop
D598: nop
D599: nop
D59A: nop
D59B: nop
D59C: nop
D59D: nop
D59E: nop
D59F: nop
D5A0: nop
D5A1: nop
D5A2: nop
D5A3: nop
D5A4: nop
D5A5: nop
D5A6: nop
D5A7: nop
D5A8: nop
D5A9: nop
D5AA: nop
D5AB: nop
D5AC: nop
D5AD: nop
D5AE: nop
D5AF: nop
D5B0: nop
D5B1: nop
D5B2: nop
D5B3: nop
D5B4: nop
D5B5: nop
D5B6: nop
D5B7: nop
D5B8: nop
D5B9: nop
D5BA: nop
D5BB: nop
D5BC: nop
D5BD: nop
D5BE: nop
D5BF: nop
D5C0: nop
D5C1: nop
D5C2: nop
D5C3: nop
D5C4: nop
D5C5: nop
D5C6: nop
D5C7: nop
D5C8: nop
D5C9: nop
D5CA: nop
D5CB: nop
D5CC: nop
D5CD: nop
D5CE: nop
D5CF: nop
D5D0: nop
D5D1: nop
D5D2: nop
D5D3: nop
D5D4: nop
D5D5: nop
D5D6: nop
D5D7: nop
D5D8: nop
D5D9: nop
D5DA: nop
D5DB: nop
D5DC: nop
D5DD: nop
D5DE: nop
D5DF: nop
D5E0: nop
D5E1: nop
D5E2: nop
D5E3: nop
D5E4: nop
D5E5: nop
D5E6: nop
D5E7: nop
D5E8: nop
D5E9: nop
D5EA: nop
D5EB: nop
D5EC: nop
D5ED: nop
D5EE: nop
D5EF: nop
D5F0: nop
D5F1: nop
D5F2: nop
D5F3: nop
D5F4: nop
D5F5: nop
D5F6: nop
D5F7: nop
D5F8: nop
D5F9: nop
D5FA: nop
D5FB: nop
D5FC: nop
D5FD: nop
D5FE: nop
D5FF: nop
D600: nop
D601: nop
D602: nop
D603: nop
D604: nop
D605: nop
D606: nop
D607: nop
D608: nop
D609: nop
D60A: nop
D60B: nop
D60C: nop
D60D: nop
D60E: nop
D60F: nop
D610: nop
D611: nop
D612: nop
D613: nop
D614: nop
D615: nop
D616: nop
D617: nop
D618: nop
D619: nop
D61A: nop
D61B: nop
D61C: nop
D61D: nop
D61E: nop
D61F: nop
D620: nop
D621: nop
D622: nop
D623: nop
D624: nop
D625: nop
D626: nop
D627: nop
D628: nop
D629: nop
D62A: nop
D62B: nop
D62C: nop
D62D: nop
D62E: nop
D62F: nop
D630: nop
D631: nop
D632: nop
D633: nop
D634: nop
D635: nop
D636: nop
D637: nop
D638: nop
D639: nop
D63A: nop
D63B: nop
D63C: nop
D63D: nop
D63E: nop
D63F: nop
D640: nop
D641: nop
D642: nop
D643: nop
D644: nop
D645: nop
D646: nop
D647: nop
D648: nop
D649: nop
D64A: nop
D64B: nop
D64C: nop
D64D: nop
D64E: nop
D64F: nop
D650: nop
D651: nop
D652: nop
D653: nop
D654: nop
D655: nop
D656: nop
D657: nop
D658: nop
D659: nop
D65A: nop
D65B: nop
D65C: nop
D65D: nop
D65E: nop
D65F: nop
D660: nop
D661: nop
D662: nop
D663: nop
D664: nop
D665: nop
D666: nop
D667: nop
D668: nop
D669: nop
D66A: nop
D66B: nop
D66C: nop
D66D: nop
D66E: nop
D66F: nop
D670: nop
D671: nop
D672: nop
D673: nop
D674: nop
D675: nop
D676: nop
D677: nop
D678: nop
D679: nop
D67A: nop
D67B: nop
D67C: nop
D67D: nop
D67E: nop
D67F: nop
D680: nop
D681: nop
D682: nop
D683: nop
D684: nop
D685: nop
D686: nop
D687: nop
D688: nop
D689: nop
D68A: nop
D68B: nop
D68C: nop
D68D: nop
D68E: nop
D68F: nop
D690: nop
D691: nop
D692: nop
D693: nop
D694: nop
D695: nop
D696: nop
D697: nop
D698: nop
D699: nop
D69A: nop
D69B: nop
D69C: nop
D69D: nop
D69E: nop
D69F: nop
D6A0: nop
D6A1: nop
D6A2: nop
D6A3: nop
D6A4: nop
D6A5: nop
D6A6: nop
D6A7: nop
D6A8: nop
D6A9: nop
D6AA: nop
D6AB: nop
D6AC: nop
D6AD: nop
D6AE: nop
D6AF: nop
D6B0: nop
D6B1: nop
D6B2: nop
D6B3: nop
D6B4: nop
D6B5: nop
D6B6: nop
D6B7: nop
D6B8: nop
D6B9: nop
D6BA: nop
D6BB: nop
D6BC: nop
D6BD: nop
D6BE: nop
D6BF: nop
D6C0: nop
D6C1: nop
D6C2: nop
D6C3: nop
D6C4: nop
D6C5: nop
D6C6: nop
D6C7: nop
D6C8: nop
D6C9: nop
D6CA: nop
D6CB: nop
D6CC: nop
D6CD: nop
D6CE: nop
D6CF: nop
D6D0: nop
D6D1: nop
D6D2: nop
D6D3: nop
D6D4: nop
D6D5: nop
D6D6: nop
D6D7: nop
D6D8: nop
D6D9: nop
D6DA: nop
D6DB: nop
D6DC: nop
D6DD: nop
D6DE: nop
D6DF: nop
D6E0: nop
D6E1: nop
D6E2: nop
D6E3: nop
D6E4: nop
D6E5: nop
D6E6: nop
D6E7: nop
D6E8: nop
D6E9: nop
D6EA: nop
D6EB: nop
D6EC: nop
D6ED: nop
D6EE: nop
D6EF: nop
D6F0: nop
D6F1: nop
D6F2: nop
D6F3: nop
D6F4: nop
D6F5: nop
D6F6: nop
D6F7: nop
D6F8: nop
D6F9: nop
D6FA: nop
D6FB: nop
D6FC: nop
D6FD: nop
D6FE: nop
D6FF: nop
D700: nop
D701: nop
D702: nop
D703: nop
D704: nop
D705: nop
D706: nop
D707: nop
D708: nop
D709: nop
D70A: nop
D70B: nop
D70C: nop
D70D: nop
D70E: nop
D70F: nop
D710: nop
D711: nop
D712: nop
D713: nop
D714: nop
D715: nop
D716: nop
D717: nop
D718: nop
D719: nop
D71A: nop
D71B: nop
D71C: nop
D71D: nop
D71E: nop
D71F: nop
D720: nop
D721: nop
D722: nop
D723: nop
D724: nop
D725: nop
D726: nop
D727: nop
D728: nop
D729: nop
D72A: nop
D72B: nop
D72C: nop
D72D: nop
D72E: nop
D72F: nop
D730: nop
D731: nop
D732: nop
D733: nop
D734: nop
D735: nop
D736: nop
D737: nop
D738: nop
D739: nop
D73A: nop
D73B: nop
D73C: nop
D73D: nop
D73E: nop
D73F: nop
D740: nop
D741: nop
D742: nop
D743: nop
D744: nop
D745: nop
D746: nop
D747: nop
D748: nop
D749: nop
D74A: nop
D74B: nop
D74C: nop
D74D: nop
D74E: nop
D74F: nop
D750: nop
D751: nop
D752: nop
D753: nop
D754: nop
D755: nop
D756: nop
D757: nop
D758: nop
D759: nop
D75A: nop
D75B: nop
D75C: nop
D75D: nop
D75E: nop
D75F: nop
D760: nop
D761: nop
D762: nop
D763: nop
D764: nop
D765: nop
D766: nop
D767: nop
D768: nop
D769: nop
D76A: nop
D76B: nop
D76C: nop
D76D: nop
D76E: nop
D76F: nop
D770: nop
D771: nop
D772: nop
D773: nop
D774: nop
D775: nop
D776: nop
D777: nop
D778: nop
D779: nop
D77A: nop
D77B: nop
D77C: nop
D77D: nop
D77E: nop
D77F: nop
D780: nop
D781: nop
D782: nop
D783: nop
D784: nop
D785: nop
D786: nop
D787: nop
D788: nop
D789: nop
D78A: nop
D78B: nop
D78C: nop
D78D: nop
D78E: nop
D78F: nop
D790: nop
D791: nop
D792: nop
D793: nop
D794: nop
D795: nop
D796: nop
D797: nop
D798: nop
D799: nop
D79A: nop
D79B: nop
D79C: nop
D79D: nop
D79E: nop
D79F: nop
D7A0: nop
D7A1: nop
D7A2: nop
D7A3: nop
D7A4: nop
D7A5: nop
D7A6: nop
D7A7: nop
D7A8: nop
D7A9: nop
D7AA: nop
D7AB: nop
D7AC: nop
D7AD: nop
D7AE: nop
D7AF: nop
D7B0: nop
D7B1: nop
D7B2: nop
D7B3: nop
D7B4: nop
D7B5: nop
D7B6: nop
D7B7: nop
D7B8: nop
D7B9: nop
D7BA: nop
D7BB: nop
D7BC: nop
D7BD: nop
D7BE: nop
D7BF: nop
D7C0: nop
D7C1: nop
D7C2: nop
D7C3: nop
D7C4: nop
D7C5: nop
D7C6: nop
D7C7: nop
D7C8: nop
D7C9: nop
D7CA: nop
D7CB: nop
D7CC: nop
D7CD: nop
D7CE: nop
D7CF: nop
D7D0: nop
D7D1: nop
D7D2: nop
D7D3: nop
D7D4: nop
D7D5: nop
D7D6: nop
D7D7: nop
D7D8: nop
D7D9: nop
D7DA: nop
D7DB: nop
D7DC: nop
D7DD: nop
D7DE: nop
D7DF: nop
D7E0: nop
D7E1: nop
D7E2: nop
D7E3: nop
D7E4: nop
D7E5: nop
D7E6: nop
D7E7: nop
D7E8: nop
D7E9: nop
D7EA: nop
D7EB: nop
D7EC: nop
D7ED: nop
D7EE: nop
D7EF: nop
D7F0: nop
D7F1: nop
D7F2: nop
D7F3: nop
D7F4: nop
D7F5: nop
D7F6: nop
D7F7: nop
D7F8: nop
D7F9: nop
D7FA: nop
D7FB: nop
D7FC: nop
D7FD: nop
D7FE: nop
D7FF: nop
D800: nop
D801: nop
D802: nop
D803: nop
D804: nop
D805: nop
D806: nop
D807: nop
D808: nop
D809: nop
D80A: nop
D80B: nop
D80C: nop
D80D: nop
D80E: nop
D80F: nop
D810: nop
D811: nop
D812: nop
D813: nop
D814: nop
D815: nop
D816: nop
D817: nop
D818: nop
D819: nop
D81A: nop
D81B: nop
D81C: nop
D81D: nop
D81E: nop
D81F: nop
D820: nop
D821: nop
D822: nop
D823: nop
D824: nop
D825: nop
D826: nop
D827: nop
D828: nop
D829: nop
D82A: nop
D82B: nop
D82C: nop
D82D: nop
D82E: nop
D82F: nop
D830: nop
D831: nop
D832: nop
D833: nop
D834: nop
D835: nop
D836: nop
D837: nop
D838: nop
D839: nop
D83A: nop
D83B: nop
D83C: nop
D83D: nop
D83E: nop
D83F: nop
D840: nop
D841: nop
D842: nop
D843: nop
D844: nop
D845: nop
D846: nop
D847: nop
D848: nop
D849: nop
D84A: nop
D84B: nop
D84C: nop
D84D: nop
D84E: nop
D84F: nop
D850: nop
D851: nop
D852: nop
D853: nop
D854: nop
D855: nop
D856: nop
D857: nop
D858: nop
D859: nop
D85A: nop
D85B: nop
D85C: nop
D85D: nop
D85E: nop
D85F: nop
D860: nop
D861: nop
D862: nop
D863: nop
D864: nop
D865: nop
D866: nop
D867: nop
D868: nop
D869: nop
D86A: nop
D86B: nop
D86C: nop
D86D: nop
D86E: nop
D86F: nop
D870: nop
D871: nop
D872: nop
D873: nop
D874: nop
D875: nop
D876: nop
D877: nop
D878: nop
D879: nop
D87A: nop
D87B: nop
D87C: nop
D87D: nop
D87E: nop
D87F: nop
D880: nop
D881: nop
D882: nop
D883: nop
D884: nop
D885: nop
D886: nop
D887: nop
D888: nop
D889: nop
D88A: nop
D88B: nop
D88C: nop
D88D: nop
D88E: nop
D88F: nop
D890: nop
D891: nop
D892: nop
D893: nop
D894: nop
D895: nop
D896: nop
D897: nop
D898: nop
D899: nop
D89A: nop
D89B: nop
D89C: nop
D89D: nop
D89E: nop
D89F: nop
D8A0: nop
D8A1: nop
D8A2: nop
D8A3: nop
D8A4: nop
D8A5: nop
D8A6: nop
D8A7: nop
D8A8: nop
D8A9: nop
D8AA: nop
D8AB: nop
D8AC: nop
D8AD: nop
D8AE: nop
D8AF: nop
D8B0: nop
D8B1: nop
D8B2: nop
D8B3: nop
D8B4: nop
D8B5: nop
D8B6: nop
D8B7: nop
D8B8: nop
D8B9: nop
D8BA: nop
D8BB: nop
D8BC: nop
D8BD: nop
D8BE: nop
D8BF: nop
D8C0: nop
D8C1: nop
D8C2: nop
D8C3: nop
D8C4: nop
D8C5: nop
D8C6: nop
D8C7: nop
D8C8: nop
D8C9: nop
D8CA: nop
D8CB: nop
D8CC: nop
D8CD: nop
D8CE: nop
D8CF: nop
D8D0: nop
D8D1: nop
D8D2: nop
D8D3: nop
D8D4: nop
D8D5: nop
D8D6: nop
D8D7: nop
D8D8: nop
D8D9: nop
D8DA: nop
D8DB: nop
D8DC: nop
D8DD: nop
D8DE: nop
D8DF: nop
D8E0: nop
D8E1: nop
D8E2: nop
D8E3: nop
D8E4: nop
D8E5: nop
D8E6: nop
D8E7: nop
D8E8: nop
D8E9: nop
D8EA: nop
D8EB: nop
D8EC: nop
D8ED: nop
D8EE: nop
D8EF: nop
D8F0: nop
D8F1: nop
D8F2: nop
D8F3: nop
D8F4: nop
D8F5: nop
D8F6: nop
D8F7: nop
D8F8: nop
D8F9: nop
D8FA: nop
D8FB: nop
D8FC: nop
D8FD: nop
D8FE: nop
D8FF: nop
D900: nop
D901: nop
D902: nop
D903: nop
D904: nop
D905: nop
D906: nop
D907: nop
D908: nop
D909: nop
D90A: nop
D90B: nop
D90C: nop
D90D: nop
D90E: nop
D90F: nop
D910: nop
D911: nop
D912: nop
D913: nop
D914: nop
D915: nop
D916: nop
D917: nop
D918: nop
D919: nop
D91A: nop
D91B: nop
D91C: nop
D91D: nop
D91E: nop
D91F: nop
D920: nop
D921: nop
D922: nop
D923: nop
D924: nop
D925: nop
D926: nop
D927: nop
D928: nop
D929: nop
D92A: nop
D92B: nop
D92C: nop
D92D: nop
D92E: nop
D92F: nop
D930: nop
D931: nop
D932: nop
D933: nop
D934: nop
D935: nop
D936: nop
D937: nop
D938: nop
D939: nop
D93A: nop
D93B: nop
D93C: nop
D93D: nop
D93E: nop
D93F: nop
D940: nop
D941: nop
D942: nop
D943: nop
D944: nop
D945: nop
D946: nop
D947: nop
D948: nop
D949: nop
D94A: nop
D94B: nop
D94C: nop
D94D: nop
D94E: nop
D94F: nop
D950: nop
D951: nop
D952: nop
D953: nop
D954: nop
D955: nop
D956: nop
D957: nop
D958: nop
D959: nop
D95A: nop
D95B: nop
D95C: nop
D95D: nop
D95E: nop
D95F: nop
D960: nop
D961: nop
D962: nop
D963: nop
D964: nop
D965: nop
D966: nop
D967: nop
D968: nop
D969: nop
D96A: nop
D96B: nop
D96C: nop
D96D: nop
D96E: nop
D96F: nop
D970: nop
D971: nop
D972: nop
D973: nop
D974: nop
D975: nop
D976: nop
D977: nop
D978: nop
D979: nop
D97A: nop
D97B: nop
D97C: nop
D97D: nop
D97E: nop
D97F: nop
D980: nop
D981: nop
D982: nop
D983: nop
D984: nop
D985: nop
D986: nop
D987: nop
D988: nop
D989: nop
D98A: nop
D98B: nop
D98C: nop
D98D: nop
D98E: nop
D98F: nop
D990: nop
D991: nop
D992: nop
D993: nop
D994: nop
D995: nop
D996: nop
D997: nop
D998: nop
D999: nop
D99A: nop
D99B: nop
D99C: nop
D99D: nop
D99E: nop
D99F: nop
D9A0: nop
D9A1: nop
D9A2: nop
D9A3: nop
D9A4: nop
D9A5: nop
D9A6: nop
D9A7: nop
D9A8: nop
D9A9: nop
D9AA: nop
D9AB: nop
D9AC: nop
D9AD: nop
D9AE: nop
D9AF: nop
D9B0: nop
D9B1: nop
D9B2: nop
D9B3: nop
D9B4: nop
D9B5: nop
D9B6: nop
D9B7: nop
D9B8: nop
D9B9: nop
D9BA: nop
D9BB: nop
D9BC: nop
D9BD: nop
D9BE: nop
D9BF: nop
D9C0: nop
D9C1: nop
D9C2: nop
D9C3: nop
D9C4: nop
D9C5: nop
D9C6: nop
D9C7: nop
D9C8: nop
D9C9: nop
D9CA: nop
D9CB: nop
D9CC: nop
D9CD: nop
D9CE: nop
D9CF: nop
D9D0: nop
D9D1: nop
D9D2: nop
D9D3: nop
D9D4: nop
D9D5: nop
D9D6: nop
D9D7: nop
D9D8: nop
D9D9: nop
D9DA: nop
D9DB: nop
D9DC: nop
D9DD: nop
D9DE: nop
D9DF: nop
D9E0: nop
D9E1: nop
D9E2: nop
D9E3: nop
D9E4: nop
D9E5: nop
D9E6: nop
D9E7: nop
D9E8: nop
D9E9: nop
D9EA: nop
D9EB: nop
D9EC: nop
D9ED: nop
D9EE: nop
D9EF: nop
D9F0: nop
D9F1: nop
D9F2: nop
D9F3: nop
D9F4: nop
D9F5: nop
D9F6: nop
D9F7: nop
D9F8: nop
D9F9: nop
D9FA: nop
D9FB: nop
D9FC: nop
D9FD: nop
D9FE: nop
D9FF: nop
DA00: nop
DA01: nop
DA02: nop
DA03: nop
DA04: nop
DA05: nop
DA06: nop
DA07: nop
DA08: nop
DA09: nop
DA0A: nop
DA0B: nop
DA0C: nop
DA0D: nop
DA0E: nop
DA0F: nop
DA10: nop
DA11: nop
DA12: nop
DA13: nop
DA14: nop
DA15: nop
DA16: nop
DA17: nop
DA18: nop
DA19: nop
DA1A: nop
DA1B: nop
DA1C: nop
DA1D: nop
DA1E: nop
DA1F: nop
DA20: nop
DA21: nop
DA22: nop
DA23: nop
DA24: nop
DA25: nop
DA26: nop
DA27: nop
DA28: nop
DA29: nop
DA2A: nop
DA2B: nop
DA2C: nop
DA2D: nop
DA2E: nop
DA2F: nop
DA30: nop
DA31: nop
DA32: nop
DA33: nop
DA34: nop
DA35: nop
DA36: nop
DA37: nop
DA38: nop
DA39: nop
DA3A: nop
DA3B: nop
DA3C: nop
DA3D: nop
DA3E: nop
DA3F: nop
DA40: nop
DA41: nop
DA42: nop
DA43: nop
DA44: nop
DA45: nop
DA46: nop
DA47: nop
DA48: nop
DA49: nop
DA4A: nop
DA4B: nop
DA4C: nop
DA4D: nop
DA4E: nop
DA4F: nop
DA50: nop
DA51: nop
DA52: nop
DA53: nop
DA54: nop
DA55: nop
DA56: nop
DA57: nop
DA58: nop
DA59: nop
DA5A: nop
DA5B: nop
DA5C: nop
DA5D: nop
DA5E: nop
DA5F: nop
DA60: nop
DA61: nop
DA62: nop
DA63: nop
DA64: nop
DA65: nop
DA66: nop
DA67: nop
DA68: nop
DA69: nop
DA6A: nop
DA6B: nop
DA6C: nop
DA6D: nop
DA6E: nop
DA6F: nop
DA70: nop
DA71: nop
DA72: nop
DA73: nop
DA74: nop
DA75: nop
DA76: nop
DA77: nop
DA78: nop
DA79: nop
DA7A: nop
DA7B: nop
DA7C: nop
DA7D: nop
DA7E: nop
DA7F: nop
DA80: nop
DA81: nop
DA82: nop
DA83: nop
DA84: nop
DA85: nop
DA86: nop
DA87: nop
DA88: nop
DA89: nop
DA8A: nop
DA8B: nop
DA8C: nop
DA8D: nop
DA8E: nop
DA8F: nop
DA90: nop
DA91: nop
DA92: nop
DA93: nop
DA94: nop
DA95: nop
DA96: nop
DA97: nop
DA98: nop
DA99: nop
DA9A: nop
DA9B: nop
DA9C: nop
DA9D: nop
DA9E: nop
DA9F: nop
DAA0: nop
DAA1: nop
DAA2: nop
DAA3: nop
DAA4: nop
DAA5: nop
DAA6: nop
DAA7: nop
DAA8: nop
DAA9: nop
DAAA: nop
DAAB: nop
DAAC: nop
DAAD: nop
DAAE: nop
DAAF: nop
DAB0: nop
DAB1: nop
DAB2: nop
DAB3: nop
DAB4: nop
DAB5: nop
DAB6: nop
DAB7: nop
DAB8: nop
DAB9: nop
DABA: nop
DABB: nop
DABC: nop
DABD: nop
DABE: nop
DABF: nop
DAC0: nop
DAC1: nop
DAC2: nop
DAC3: nop
DAC4: nop
DAC5: nop
DAC6: nop
DAC7: nop
DAC8: nop
DAC9: nop
DACA: nop
DACB: nop
DACC: nop
DACD: nop
DACE: nop
DACF: nop
DAD0: nop
DAD1: nop
DAD2: nop
DAD3: nop
DAD4: nop
DAD5: nop
DAD6: nop
DAD7: nop
DAD8: nop
DAD9: nop
DADA: nop
DADB: nop
DADC: nop
DADD: nop
DADE: nop
DADF: nop
DAE0: nop
DAE1: nop
DAE2: nop
DAE3: nop
DAE4: nop
DAE5: nop
DAE6: nop
DAE7: nop
DAE8: nop
DAE9: nop
DAEA: nop
DAEB: nop
DAEC: nop
DAED: nop
DAEE: nop
DAEF: nop
DAF0: nop
DAF1: nop
DAF2: nop
DAF3: nop
DAF4: nop
DAF5: nop
DAF6: nop
DAF7: nop
DAF8: nop
DAF9: nop
DAFA: nop
DAFB: nop
DAFC: nop
DAFD: nop
DAFE: nop
DAFF: nop
DB00: nop
DB01: nop
DB02: nop
DB03: nop
DB04: nop
DB05: nop
DB06: nop
DB07: nop
DB08: nop
DB09: nop
DB0A: nop
DB0B: nop
DB0C: nop
DB0D: nop
DB0E: nop
DB0F: nop
DB10: nop
DB11: nop
DB12: nop
DB13: nop
DB14: nop
DB15: nop
DB16: nop
DB17: nop
DB18: nop
DB19: nop
DB1A: nop
DB1B: nop
DB1C: nop
DB1D: nop
DB1E: nop
DB1F: nop
DB20: nop
DB21: nop
DB22: nop
DB23: nop
DB24: nop
DB25: nop
DB26: nop
DB27: nop
DB28: nop
DB29: nop
DB2A: nop
DB2B: nop
DB2C: nop
DB2D: nop
DB2E: nop
DB2F: nop
DB30: nop
DB31: nop
DB32: nop
DB33: nop
DB34: nop
DB35: nop
DB36: nop
DB37: nop
DB38: nop
DB39: nop
DB3A: nop
DB3B: nop
DB3C: nop
DB3D: nop
DB3E: nop
DB3F: nop
DB40: nop
DB41: nop
DB42: nop
DB43: nop
DB44: nop
DB45: nop
DB46: nop
DB47: nop
DB48: nop
DB49: nop
DB4A: nop
DB4B: nop
DB4C: nop
DB4D: nop
DB4E: nop
DB4F: nop
DB50: nop
DB51: nop
DB52: nop
DB53: nop
DB54: nop
DB55: nop
DB56: nop
DB57: nop
DB58: nop
DB59: nop
DB5A: nop
DB5B: nop
DB5C: nop
DB5D: nop
DB5E: nop
DB5F: nop
DB60: nop
DB61: nop
DB62: nop
DB63: nop
DB64: nop
DB65: nop
DB66: nop
DB67: nop
DB68: nop
DB69: nop
DB6A: nop
DB6B: nop
DB6C: nop
DB6D: nop
DB6E: nop
DB6F: nop
DB70: nop
DB71: nop
DB72: nop
DB73: nop
DB74: nop
DB75: nop
DB76: nop
DB77: nop
DB78: nop
DB79: nop
DB7A: nop
DB7B: nop
DB7C: nop
DB7D: nop
DB7E: nop
DB7F: nop
DB80: nop
DB81: nop
DB82: nop
DB83: nop
DB84: nop
DB85: nop
DB86: nop
DB87: nop
DB88: nop
DB89: nop
DB8A: nop
DB8B: nop
DB8C: nop
DB8D: nop
DB8E: nop
DB8F: nop
DB90: nop
DB91: nop
DB92: nop
DB93: nop
DB94: nop
DB95: nop
DB96: nop
DB97: nop
DB98: nop
DB99: nop
DB9A: nop
DB9B: nop
DB9C: nop
DB9D: nop
DB9E: nop
DB9F: nop
DBA0: nop
DBA1: nop
DBA2: nop
DBA3: nop
DBA4: nop
DBA5: nop
DBA6: nop
DBA7: nop
DBA8: nop
DBA9: nop
DBAA: nop
DBAB: nop
DBAC: nop
DBAD: nop
DBAE: nop
DBAF: nop
DBB0: nop
DBB1: nop
DBB2: nop
DBB3: nop
DBB4: nop
DBB5: nop
DBB6: nop
DBB7: nop
DBB8: nop
DBB9: nop
DBBA: nop
DBBB: nop
DBBC: nop
DBBD: nop
DBBE: nop
DBBF: nop
DBC0: nop
DBC1: nop
DBC2: nop
DBC3: nop
DBC4: nop
DBC5: nop
DBC6: nop
DBC7: nop
DBC8: nop
DBC9: nop
DBCA: nop
DBCB: nop
DBCC: nop
DBCD: nop
DBCE: nop
DBCF: nop
DBD0: nop
DBD1: nop
DBD2: nop
DBD3: nop
DBD4: nop
DBD5: nop
DBD6: nop
DBD7: nop
DBD8: nop
DBD9: nop
DBDA: nop
DBDB: nop
DBDC: nop
DBDD: nop
DBDE: nop
DBDF: nop
DBE0: nop
DBE1: nop
DBE2: nop
DBE3: nop
DBE4: nop
DBE5: nop
DBE6: nop
DBE7: nop
DBE8: nop
DBE9: nop
DBEA: nop
DBEB: nop
DBEC: nop
DBED: nop
DBEE: nop
DBEF: nop
DBF0: nop
DBF1: nop
DBF2: nop
DBF3: nop
DBF4: nop
DBF5: nop
DBF6: nop
DBF7: nop
DBF8: nop
DBF9: nop
DBFA: nop
DBFB: nop
DBFC: nop
DBFD: nop
DBFE: nop
DBFF: nop
DC00: nop
DC01: nop
DC02: nop
DC03: nop
DC04: nop
DC05: nop
DC06: nop
DC07: nop
DC08: nop
DC09: nop
DC0A: nop
DC0B: nop
DC0C: nop
DC0D: nop
DC0E: nop
DC0F: nop
DC10: nop
DC11: nop
DC12: nop
DC13: nop
DC14: nop
DC15: nop
DC16: nop
DC17: nop
DC18: nop
DC19: nop
DC1A: nop
DC1B: nop
DC1C: nop
DC1D: nop
DC1E: nop
DC1F: nop
DC20: nop
DC21: nop
DC22: nop
DC23: nop
DC24: nop
DC25: nop
DC26: nop
DC27: nop
DC28: nop
DC29: nop
DC2A: nop
DC2B: nop
DC2C: nop
DC2D: nop
DC2E: nop
DC2F: nop
DC30: nop
DC31: nop
DC32: nop
DC33: nop
DC34: nop
DC35: nop
DC36: nop
DC37: nop
DC38: nop
DC39: nop
DC3A: nop
DC3B: nop
DC3C: nop
DC3D: nop
DC3E: nop
DC3F: nop
DC40: nop
DC41: nop
DC42: nop
DC43: nop
DC44: nop
DC45: nop
DC46: nop
DC47: nop
DC48: nop
DC49: nop
DC4A: nop
DC4B: nop
DC4C: nop
DC4D: nop
DC4E: nop
DC4F: nop
DC50: nop
DC51: nop
DC52: nop
DC53: nop
DC54: nop
DC55: nop
DC56: nop
DC57: nop
DC58: nop
DC59: nop
DC5A: nop
DC5B: nop
DC5C: nop
DC5D: nop
DC5E: nop
DC5F: nop
DC60: nop
DC61: nop
DC62: nop
DC63: nop
DC64: nop
DC65: nop
DC66: nop
DC67: nop
DC68: nop
DC69: nop
DC6A: nop
DC6B: nop
DC6C: nop
DC6D: nop
DC6E: nop
DC6F: nop
DC70: nop
DC71: nop
DC72: nop
DC73: nop
DC74: nop
DC75: nop
DC76: nop
DC77: nop
DC78: nop
DC79: nop
DC7A: nop
DC7B: nop
DC7C: nop
DC7D: nop
DC7E: nop
DC7F: nop
DC80: nop
DC81: nop
DC82: nop
DC83: nop
DC84: nop
DC85: nop
DC86: nop
DC87: nop
DC88: nop
DC89: nop
DC8A: nop
DC8B: nop
DC8C: nop
DC8D: nop
DC8E: nop
DC8F: nop
DC90: nop
DC91: nop
DC92: nop
DC93: nop
DC94: nop
DC95: nop
DC96: nop
DC97: nop
DC98: nop
DC99: nop
DC9A: nop
DC9B: nop
DC9C: nop
DC9D: nop
DC9E: nop
DC9F: nop
DCA0: nop
DCA1: nop
DCA2: nop
DCA3: nop
DCA4: nop
DCA5: nop
DCA6: nop
DCA7: nop
DCA8: nop
DCA9: nop
DCAA: nop
DCAB: nop
DCAC: nop
DCAD: nop
DCAE: nop
DCAF: nop
DCB0: nop
DCB1: nop
DCB2: nop
DCB3: nop
DCB4: nop
DCB5: nop
DCB6: nop
DCB7: nop
DCB8: nop
DCB9: nop
DCBA: nop
DCBB: nop
DCBC: nop
DCBD: nop
DCBE: nop
DCBF: nop
DCC0: nop
DCC1: nop
DCC2: nop
DCC3: nop
DCC4: nop
DCC5: nop
DCC6: nop
DCC7: nop
DCC8: nop
DCC9: nop
DCCA: nop
DCCB: nop
DCCC: nop
DCCD: nop
DCCE: nop
DCCF: nop
DCD0: nop
DCD1: nop
DCD2: nop
DCD3: nop
DCD4: nop
DCD5: nop
DCD6: nop
DCD7: nop
DCD8: nop
DCD9: nop
DCDA: nop
DCDB: nop
DCDC: nop
DCDD: nop
DCDE: nop
DCDF: nop
DCE0: nop
DCE1: nop
DCE2: nop
DCE3: nop
DCE4: nop
DCE5: nop
DCE6: nop
DCE7: nop
DCE8: nop
DCE9: nop
DCEA: nop
DCEB: nop
DCEC: nop
DCED: nop
DCEE: nop
DCEF: nop
DCF0: nop
DCF1: nop
DCF2: nop
DCF3: nop
DCF4: nop
DCF5: nop
DCF6: nop
DCF7: nop
DCF8: nop
DCF9: nop
DCFA: nop
DCFB: nop
DCFC: nop
DCFD: nop
DCFE: nop
DCFF: nop
DD00: nop
DD01: nop
DD02: nop
DD03: nop
DD04: nop
DD05: nop
DD06: nop
DD07: nop
DD08: nop
DD09: nop
DD0A: nop
DD0B: nop
DD0C: nop
DD0D: nop
DD0E: nop
DD0F: nop
DD10: nop
DD11: nop
DD12: nop
DD13: nop
DD14: nop
DD15: nop
DD16: nop
DD17: nop
DD18: nop
DD19: nop
DD1A: nop
DD1B: nop
DD1C: nop
DD1D: nop
DD1E: nop
DD1F: nop
DD20: nop
DD21: nop
DD22: nop
DD23: nop
DD24: nop
DD25: nop
DD26: nop
DD27: nop
DD28: nop
DD29: nop
DD2A: nop
DD2B: nop
DD2C: nop
DD2D: nop
DD2E: nop
DD2F: nop
DD30: nop
DD31: nop
DD32: nop
DD33: nop
DD34: nop
DD35: nop
DD36: nop
DD37: nop
DD38: nop
DD39: nop
DD3A: nop
DD3B: nop
DD3C: nop
DD3D: nop
DD3E: nop
DD3F: nop
DD40: nop
DD41: nop
DD42: nop
DD43: nop
DD44: nop
DD45: nop
DD46: nop
DD47: nop
DD48: nop
DD49: nop
DD4A: nop
DD4B: nop
DD4C: nop
DD4D: nop
DD4E: nop
DD4F: nop
DD50: nop
DD51: nop
DD52: nop
DD53: nop
DD54: nop
DD55: nop
DD56: nop
DD57: nop
DD58: nop
DD59: nop
DD5A: nop
DD5B: nop
DD5C: nop
DD5D: nop
DD5E: nop
DD5F: nop
DD60: nop
DD61: nop
DD62: nop
DD63: nop
DD64: nop
DD65: nop
DD66: nop
DD67: nop
DD68: nop
DD69: nop
DD6A: nop
DD6B: nop
DD6C: nop
DD6D: nop
DD6E: nop
DD6F: nop
DD70: nop
DD71: nop
DD72: nop
DD73: nop
DD74: nop
DD75: nop
DD76: nop
DD77: nop
DD78: nop
DD79: nop
DD7A: nop
DD7B: nop
DD7C: nop
DD7D: nop
DD7E: nop
DD7F: nop
DD80: nop
DD81: nop
DD82: nop
DD83: nop
DD84: nop
DD85: nop
DD86: nop
DD87: nop
DD88: nop
DD89: nop
DD8A: nop
DD8B: nop
DD8C: nop
DD8D: nop
DD8E: nop
DD8F: nop
DD90: nop
DD91: nop
DD92: nop
DD93: nop
DD94: nop
DD95: nop
DD96: nop
DD97: nop
DD98: nop
DD99: nop
DD9A: nop
DD9B: nop
DD9C: nop
DD9D: nop
DD9E: nop
DD9F: nop
DDA0: nop
DDA1: nop
DDA2: nop
DDA3: nop
DDA4: nop
DDA5: nop
DDA6: nop
DDA7: nop
DDA8: nop
DDA9: nop
DDAA: nop
DDAB: nop
DDAC: nop
DDAD: nop
DDAE: nop
DDAF: nop
DDB0: nop
DDB1: nop
DDB2: nop
DDB3: nop
DDB4: nop
DDB5: nop
DDB6: nop
DDB7: nop
DDB8: nop
DDB9: nop
DDBA: nop
DDBB: nop
DDBC: nop
DDBD: nop
DDBE: nop
DDBF: nop
DDC0: nop
DDC1: nop
DDC2: nop
DDC3: nop
DDC4: nop
DDC5: nop
DDC6: nop
DDC7: nop
DDC8: nop
DDC9: nop
DDCA: nop
DDCB: nop
DDCC: nop
DDCD: nop
DDCE: nop
DDCF: nop
DDD0: nop
DDD1: nop
DDD2: nop
DDD3: nop
DDD4: nop
DDD5: nop
DDD6: nop
DDD7: nop
DDD8: nop
DDD9: nop
DDDA: nop
DDDB: nop
DDDC: nop
DDDD: nop
DDDE: nop
DDDF: nop
DDE0: nop
DDE1: nop
DDE2: nop
DDE3: nop
DDE4: nop
DDE5: nop
DDE6: nop
DDE7: nop
DDE8: nop
DDE9: nop
DDEA: nop
DDEB: nop
DDEC: nop
DDED: nop
DDEE: nop
DDEF: nop
DDF0: nop
DDF1: nop
DDF2: nop
DDF3: nop
DDF4: nop
DDF5: nop
DDF6: nop
DDF7: nop
DDF8: nop
DDF9: nop
DDFA: nop
DDFB: nop
DDFC: nop
DDFD: nop
DDFE: nop
DDFF: nop
DE00: nop
DE01: nop
DE02: nop
DE03: nop
DE04: nop
DE05: nop
DE06: nop
DE07: nop
DE08: nop
DE09: nop
DE0A: nop
DE0B: nop
DE0C: nop
DE0D: nop
DE0E: nop
DE0F: nop
DE10: nop
DE11: nop
DE12: nop
DE13: nop
DE14: nop
DE15: nop
DE16: nop
DE17: nop
DE18: nop
DE19: nop
DE1A: nop
DE1B: nop
DE1C: nop
DE1D: nop
DE1E: nop
DE1F: nop
DE20: nop
DE21: nop
DE22: nop
DE23: nop
DE24: nop
DE25: nop
DE26: nop
DE27: nop
DE28: nop
DE29: nop
DE2A: nop
DE2B: nop
DE2C: nop
DE2D: nop
DE2E: nop
DE2F: nop
DE30: nop
DE31: nop
DE32: nop
DE33: nop
DE34: nop
DE35: nop
DE36: nop
DE37: nop
DE38: nop
DE39: nop
DE3A: nop
DE3B: nop
DE3C: nop
DE3D: nop
DE3E: nop
DE3F: nop
DE40: nop
DE41: nop
DE42: nop
DE43: nop
DE44: nop
DE45: nop
DE46: nop
DE47: nop
DE48: nop
DE49: nop
DE4A: nop
DE4B: nop
DE4C: nop
DE4D: nop
DE4E: nop
DE4F: nop
DE50: nop
DE51: nop
DE52: nop
DE53: nop
DE54: nop
DE55: nop
DE56: nop
DE57: nop
DE58: nop
DE59: nop
DE5A: nop
DE5B: nop
DE5C: nop
DE5D: nop
DE5E: nop
DE5F: nop
DE60: nop
DE61: nop
DE62: nop
DE63: nop
DE64: nop
DE65: nop
DE66: nop
DE67: nop
DE68: nop
DE69: nop
DE6A: nop
DE6B: nop
DE6C: nop
DE6D: nop
DE6E: nop
DE6F: nop
DE70: nop
DE71: nop
DE72: nop
DE73: nop
DE74: nop
DE75: nop
DE76: nop
DE77: nop
DE78: nop
DE79: nop
DE7A: nop
DE7B: nop
DE7C: nop
DE7D: nop
DE7E: nop
DE7F: nop
DE80: nop
DE81: nop
DE82: nop
DE83: nop
DE84: nop
DE85: nop
DE86: nop
DE87: nop
DE88: nop
DE89: nop
DE8A: nop
DE8B: nop
DE8C: nop
DE8D: nop
DE8E: nop
DE8F: nop
DE90: nop
DE91: nop
DE92: nop
DE93: nop
DE94: nop
DE95: nop
DE96: nop
DE97: nop
DE98: nop
DE99: nop
DE9A: nop
DE9B: nop
DE9C: nop
DE9D: nop
DE9E: nop
DE9F: nop
DEA0: nop
DEA1: nop
DEA2: nop
DEA3: nop
DEA4: nop
DEA5: nop
DEA6: nop
DEA7: nop
DEA8: nop
DEA9: nop
DEAA: nop
DEAB: nop
DEAC: nop
DEAD: nop
DEAE: nop
DEAF: nop
DEB0: nop
DEB1: nop
DEB2: nop
DEB3: nop
DEB4: nop
DEB5: nop
DEB6: nop
DEB7: nop
DEB8: nop
DEB9: nop
DEBA: nop
DEBB: nop
DEBC: nop
DEBD: nop
DEBE: nop
DEBF: nop
DEC0: nop
DEC1: nop
DEC2: nop
DEC3: nop
DEC4: nop
DEC5: nop
DEC6: nop
DEC7: nop
DEC8: nop
DEC9: nop
DECA: nop
DECB: nop
DECC: nop
DECD: nop
DECE: nop
DECF: nop
DED0: nop
DED1: nop
DED2: nop
DED3: nop
DED4: nop
DED5: nop
DED6: nop
DED7: nop
DED8: nop
DED9: nop
DEDA: nop
DEDB: nop
DEDC: nop
DEDD: nop
DEDE: nop
DEDF: nop
DEE0: nop
DEE1: nop
DEE2: nop
DEE3: nop
DEE4: nop
DEE5: nop
DEE6: nop
DEE7: nop
DEE8: nop
DEE9: nop
DEEA: nop
DEEB: nop
DEEC: nop
DEED: nop
DEEE: nop
DEEF: nop
DEF0: nop
DEF1: nop
DEF2: nop
DEF3: nop
DEF4: nop
DEF5: nop
DEF6: nop
DEF7: nop
DEF8: nop
DEF9: nop
DEFA: nop
DEFB: nop
DEFC: nop
DEFD: nop
DEFE: nop
DEFF: nop
DF00: nop
DF01: nop
DF02: nop
DF03: nop
DF04: nop
DF05: nop
DF06: nop
DF07: nop
DF08: nop
DF09: nop
DF0A: nop
DF0B: nop
DF0C: nop
DF0D: nop
DF0E: nop
DF0F: nop
DF10: nop
DF11: nop
DF12: nop
DF13: nop
DF14: nop
DF15: nop
DF16: nop
DF17: nop
DF18: nop
DF19: nop
DF1A: nop
DF1B: nop
DF1C: nop
DF1D: nop
DF1E: nop
DF1F: nop
DF20: nop
DF21: nop
DF22: nop
DF23: nop
DF24: nop
DF25: nop
DF26: nop
DF27: nop
DF28: nop
DF29: nop
DF2A: nop
DF2B: nop
DF2C: nop
DF2D: nop
DF2E: nop
DF2F: nop
DF30: nop
DF31: nop
DF32: nop
DF33: nop
DF34: nop
DF35: nop
DF36: nop
DF37: nop
DF38: nop
DF39: nop
DF3A: nop
DF3B: nop
DF3C: nop
DF3D: nop
DF3E: nop
DF3F: nop
DF40: nop
DF41: nop
DF42: nop
DF43: nop
DF44: nop
DF45: nop
DF46: nop
DF47: nop
DF48: nop
DF49: nop
DF4A: nop
DF4B: nop
DF4C: nop
DF4D: nop
DF4E: nop
DF4F: nop
DF50: nop
DF51: nop
DF52: nop
DF53: nop
DF54: nop
DF55: nop
DF56: nop
DF57: nop
DF58: nop
DF59: nop
DF5A: nop
DF5B: nop
DF5C: nop
DF5D: nop
DF5E: nop
DF5F: nop
DF60: nop
DF61: nop
DF62: nop
DF63: nop
DF64: nop
DF65: nop
DF66: nop
DF67: nop
DF68: nop
DF69: nop
DF6A: nop
DF6B: nop
DF6C: nop
DF6D: nop
DF6E: nop
DF6F: nop
DF70: nop
DF71: nop
DF72: nop
DF73: nop
DF74: nop
DF75: nop
DF76: nop
DF77: nop
DF78: nop
DF79: nop
DF7A: nop
DF7B: nop
DF7C: nop
DF7D: nop
DF7E: nop
DF7F: nop
DF80: nop
DF81: nop
DF82: nop
DF83: nop
DF84: nop
DF85: nop
DF86: nop
DF87: nop
DF88: nop
DF89: nop
DF8A: nop
DF8B: nop
DF8C: nop
DF8D: nop
DF8E: nop
DF8F: nop
DF90: nop
DF91: nop
DF92: nop
DF93: nop
DF94: nop
DF95: nop
DF96: nop
DF97: nop
DF98: nop
DF99: nop
DF9A: nop
DF9B: nop
DF9C: nop
DF9D: nop
DF9E: nop
DF9F: nop
DFA0: nop
DFA1: nop
DFA2: nop
DFA3: nop
DFA4: nop
DFA5: nop
DFA6: nop
DFA7: nop
DFA8: nop
DFA9: nop
DFAA: nop
DFAB: nop
DFAC: nop
DFAD: nop
DFAE: nop
DFAF: nop
DFB0: nop
DFB1: nop
DFB2: nop
DFB3: nop
DFB4: nop
DFB5: nop
DFB6: nop
DFB7: nop
DFB8: nop
DFB9: nop
DFBA: nop
DFBB: nop
DFBC: nop
DFBD: nop
DFBE: nop
DFBF: nop
DFC0: nop
DFC1: nop
DFC2: nop
DFC3: nop
DFC4: nop
DFC5: nop
DFC6: nop
DFC7: nop
DFC8: nop
DFC9: nop
DFCA: nop
DFCB: nop
DFCC: nop
DFCD: nop
DFCE: nop
DFCF: nop
DFD0: nop
DFD1: nop
DFD2: nop
DFD3: nop
DFD4: nop
DFD5: nop
DFD6: nop
DFD7: nop
DFD8: nop
DFD9: nop
DFDA: nop
DFDB: nop
DFDC: nop
DFDD: nop
DFDE: nop
DFDF: nop
DFE0: nop
DFE1: nop
DFE2: nop
DFE3: nop
DFE4: nop
DFE5: nop
DFE6: nop
DFE7: nop
DFE8: nop
DFE9: nop
DFEA: nop
DFEB: nop
DFEC: nop
DFED: nop
DFEE: nop
DFEF: nop
DFF0: nop
DFF1: nop
DFF2: nop
DFF3: nop
DFF4: nop
DFF5: nop
DFF6: nop
DFF7: nop
DFF8: nop
DFF9: nop
DFFA: nop
DFFB: nop
DFFC: nop
DFFD: nop
DFFE: nop
DFFF: nop
E000: nop
E001: nop
E002: nop
E003: nop
E004: nop
E005: nop
E006: nop
E007: nop
E008: nop
E009: nop
E00A: nop
E00B: nop
E00C: nop
E00D: nop
E00E: nop
E00F: nop
E010: nop
E011: nop
E012: nop
E013: nop
E014: nop
E015: nop
E016: nop
E017: nop
E018: nop
E019: nop
E01A: nop
E01B: nop
E01C: nop
E01D: nop
E01E: nop
E01F: nop
E020: nop
E021: nop
E022: nop
E023: nop
E024: nop
E025: nop
E026: nop
E027: nop
E028: nop
E029: nop
E02A: nop
E02B: nop
E02C: nop
E02D: nop
E02E: nop
E02F: nop
E030: nop
E031: nop
E032: nop
E033: nop
E034: nop
E035: nop
E036: nop
E037: nop
E038: nop
E039: nop
E03A: nop
E03B: nop
E03C: nop
E03D: nop
E03E: nop
E03F: nop
E040: nop
E041: nop
E042: nop
E043: nop
E044: nop
E045: nop
E046: nop
E047: nop
E048: nop
E049: nop
E04A: nop
E04B: nop
E04C: nop
E04D: nop
E04E: nop
E04F: nop
E050: nop
E051: nop
E052: nop
E053: nop
E054: nop
E055: nop
E056: nop
E057: nop
E058: nop
E059: nop
E05A: nop
E05B: nop
E05C: nop
E05D: nop
E05E: nop
E05F: nop
E060: nop
E061: nop
E062: nop
E063: nop
E064: nop
E065: nop
E066: nop
E067: nop
E068: nop
E069: nop
E06A: nop
E06B: nop
E06C: nop
E06D: nop
E06E: nop
E06F: nop
E070: nop
E071: nop
E072: nop
E073: nop
E074: nop
E075: nop
E076: nop
E077: nop
E078: nop
E079: nop
E07A: nop
E07B: nop
E07C: nop
E07D: nop
E07E: nop
E07F: nop
E080: nop
E081: nop
E082: nop
E083: nop
E084: nop
E085: nop
E086: nop
E087: nop
E088: nop
E089: nop
E08A: nop
E08B: nop
E08C: nop
E08D: nop
E08E: nop
E08F: nop
E090: nop
E091: nop
E092: nop
E093: nop
E094: nop
E095: nop
E096: nop
E097: nop
E098: nop
E099: nop
E09A: nop
E09B: nop
E09C: nop
E09D: nop
E09E: nop
E09F: nop
E0A0: nop
E0A1: nop
E0A2: nop
E0A3: nop
E0A4: nop
E0A5: nop
E0A6: nop
E0A7: nop
E0A8: nop
E0A9: nop
E0AA: nop
E0AB: nop
E0AC: nop
E0AD: nop
E0AE: nop
E0AF: nop
E0B0: nop
E0B1: nop
E0B2: nop
E0B3: nop
E0B4: nop
E0B5: nop
E0B6: nop
E0B7: nop
E0B8: nop
E0B9: nop
E0BA: nop
E0BB: nop
E0BC: nop
E0BD: nop
E0BE: nop
E0BF: nop
E0C0: nop
E0C1: nop
E0C2: nop
E0C3: nop
E0C4: nop
E0C5: nop
E0C6: nop
E0C7: nop
E0C8: nop
E0C9: nop
E0CA: nop
E0CB: nop
E0CC: nop
E0CD: nop
E0CE: nop
E0CF: nop
E0D0: nop
E0D1: nop
E0D2: nop
E0D3: nop
E0D4: nop
E0D5: nop
E0D6: nop
E0D7: nop
E0D8: nop
E0D9: nop
E0DA: nop
E0DB: nop
E0DC: nop
E0DD: nop
E0DE: nop
E0DF: nop
E0E0: nop
E0E1: nop
E0E2: nop
E0E3: nop
E0E4: nop
E0E5: nop
E0E6: nop
E0E7: nop
E0E8: nop
E0E9: nop
E0EA: nop
E0EB: nop
E0EC: nop
E0ED: nop
E0EE: nop
E0EF: nop
E0F0: nop
E0F1: nop
E0F2: nop
E0F3: nop
E0F4: nop
E0F5: nop
E0F6: nop
E0F7: nop
E0F8: nop
E0F9: nop
E0FA: nop
E0FB: nop
E0FC: nop
E0FD: nop
E0FE: nop
E0FF: nop
E100: nop
E101: nop
E102: nop
E103: nop
E104: nop
E105: nop
E106: nop
E107: nop
E108: nop
E109: nop
E10A: nop
E10B: nop
E10C: nop
E10D: nop
E10E: nop
E10F: nop
E110: nop
E111: nop
E112: nop
E113: nop
E114: nop
E115: nop
E116: nop
E117: nop
E118: nop
E119: nop
E11A: nop
E11B: nop
E11C: nop
E11D: nop
E11E: nop
E11F: nop
E120: nop
E121: nop
E122: nop
E123: nop
E124: nop
E125: nop
E126: nop
E127: nop
E128: nop
E129: nop
E12A: nop
E12B: nop
E12C: nop
E12D: nop
E12E: nop
E12F: nop
E130: nop
E131: nop
E132: nop
E133: nop
E134: nop
E135: nop
E136: nop
E137: nop
E138: nop
E139: nop
E13A: nop
E13B: nop
E13C: nop
E13D: nop
E13E: nop
E13F: nop
E140: nop
E141: nop
E142: nop
E143: nop
E144: nop
E145: nop
E146: nop
E147: nop
E148: nop
E149: nop
E14A: nop
E14B: nop
E14C: nop
E14D: nop
E14E: nop
E14F: nop
E150: nop
E151: nop
E152: nop
E153: nop
E154: nop
E155: nop
E156: nop
E157: nop
E158: nop
E159: nop
E15A: nop
E15B: nop
E15C: nop
E15D: nop
E15E: nop
E15F: nop
E160: nop
E161: nop
E162: nop
E163: nop
E164: nop
E165: nop
E166: nop
E167: nop
E168: nop
E169: nop
E16A: nop
E16B: nop
E16C: nop
E16D: nop
E16E: nop
E16F: nop
E170: nop
E171: nop
E172: nop
E173: nop
E174: nop
E175: nop
E176: nop
E177: nop
E178: nop
E179: nop
E17A: nop
E17B: nop
E17C: nop
E17D: nop
E17E: nop
E17F: nop
E180: nop
E181: nop
E182: nop
E183: nop
E184: nop
E185: nop
E186: nop
E187: nop
E188: nop
E189: nop
E18A: nop
E18B: nop
E18C: nop
E18D: nop
E18E: nop
E18F: nop
E190: nop
E191: nop
E192: nop
E193: nop
E194: nop
E195: nop
E196: nop
E197: nop
E198: nop
E199: nop
E19A: nop
E19B: nop
E19C: nop
E19D: nop
E19E: nop
E19F: nop
E1A0: nop
E1A1: nop
E1A2: nop
E1A3: nop
E1A4: nop
E1A5: nop
E1A6: nop
E1A7: nop
E1A8: nop
E1A9: nop
E1AA: nop
E1AB: nop
E1AC: nop
E1AD: nop
E1AE: nop
E1AF: nop
E1B0: nop
E1B1: nop
E1B2: nop
E1B3: nop
E1B4: nop
E1B5: nop
E1B6: nop
E1B7: nop
E1B8: nop
E1B9: nop
E1BA: nop
E1BB: nop
E1BC: nop
E1BD: nop
E1BE: nop
E1BF: nop
E1C0: nop
E1C1: nop
E1C2: nop
E1C3: nop
E1C4: nop
E1C5: nop
E1C6: nop
E1C7: nop
E1C8: nop
E1C9: nop
E1CA: nop
E1CB: nop
E1CC: nop
E1CD: nop
E1CE: nop
E1CF: nop
E1D0: nop
E1D1: nop
E1D2: nop
E1D3: nop
E1D4: nop
E1D5: nop
E1D6: nop
E1D7: nop
E1D8: nop
E1D9: nop
E1DA: nop
E1DB: nop
E1DC: nop
E1DD: nop
E1DE: nop
E1DF: nop
E1E0: nop
E1E1: nop
E1E2: nop
E1E3: nop
E1E4: nop
E1E5: nop
E1E6: nop
E1E7: nop
E1E8: nop
E1E9: nop
E1EA: nop
E1EB: nop
E1EC: nop
E1ED: nop
E1EE: nop
E1EF: nop
E1F0: nop
E1F1: nop
E1F2: nop
E1F3: nop
E1F4: nop
E1F5: nop
E1F6: nop
E1F7: nop
E1F8: nop
E1F9: nop
E1FA: nop
E1FB: nop
E1FC: nop
E1FD: nop
E1FE: nop
E1FF: nop
E200: nop
E201: nop
E202: nop
E203: nop
E204: nop
E205: nop
E206: nop
E207: nop
E208: nop
E209: nop
E20A: nop
E20B: nop
E20C: nop
E20D: nop
E20E: nop
E20F: nop
E210: nop
E211: nop
E212: nop
E213: nop
E214: nop
E215: nop
E216: nop
E217: nop
E218: nop
E219: nop
E21A: nop
E21B: nop
E21C: nop
E21D: nop
E21E: nop
E21F: nop
E220: nop
E221: nop
E222: nop
E223: nop
E224: nop
E225: nop
E226: nop
E227: nop
E228: nop
E229: nop
E22A: nop
E22B: nop
E22C: nop
E22D: nop
E22E: nop
E22F: nop
E230: nop
E231: nop
E232: nop
E233: nop
E234: nop
E235: nop
E236: nop
E237: nop
E238: nop
E239: nop
E23A: nop
E23B: nop
E23C: nop
E23D: nop
E23E: nop
E23F: nop
E240: nop
E241: nop
E242: nop
E243: nop
E244: nop
E245: nop
E246: nop
E247: nop
E248: nop
E249: nop
E24A: nop
E24B: nop
E24C: nop
E24D: nop
E24E: nop
E24F: nop
E250: nop
E251: nop
E252: nop
E253: nop
E254: nop
E255: nop
E256: nop
E257: nop
E258: nop
E259: nop
E25A: nop
E25B: nop
E25C: nop
E25D: nop
E25E: nop
E25F: nop
E260: nop
E261: nop
E262: nop
E263: nop
E264: nop
E265: nop
E266: nop
E267: nop
E268: nop
E269: nop
E26A: nop
E26B: nop
E26C: nop
E26D: nop
E26E: nop
E26F: nop
E270: nop
E271: nop
E272: nop
E273: nop
E274: nop
E275: nop
E276: nop
E277: nop
E278: nop
E279: nop
E27A: nop
E27B: nop
E27C: nop
E27D: nop
E27E: nop
E27F: nop
E280: nop
E281: nop
E282: nop
E283: nop
E284: nop
E285: nop
E286: nop
E287: nop
E288: nop
E289: nop
E28A: nop
E28B: nop
E28C: nop
E28D: nop
E28E: nop
E28F: nop
E290: nop
E291: nop
E292: nop
E293: nop
E294: nop
E295: nop
E296: nop
E297: nop
E298: nop
E299: nop
E29A: nop
E29B: nop
E29C: nop
E29D: nop
E29E: nop
E29F: nop
E2A0: nop
E2A1: nop
E2A2: nop
E2A3: nop
E2A4: nop
E2A5: nop
E2A6: nop
E2A7: nop
E2A8: nop
E2A9: nop
E2AA: nop
E2AB: nop
E2AC: nop
E2AD: nop
E2AE: nop
E2AF: nop
E2B0: nop
E2B1: nop
E2B2: nop
E2B3: nop
E2B4: nop
E2B5: nop
E2B6: nop
E2B7: nop
E2B8: nop
E2B9: nop
E2BA: nop
E2BB: nop
E2BC: nop
E2BD: nop
E2BE: nop
E2BF: nop
E2C0: nop
E2C1: nop
E2C2: nop
E2C3: nop
E2C4: nop
E2C5: nop
E2C6: nop
E2C7: nop
E2C8: nop
E2C9: nop
E2CA: nop
E2CB: nop
E2CC: nop
E2CD: nop
E2CE: nop
E2CF: nop
E2D0: nop
E2D1: nop
E2D2: nop
E2D3: nop
E2D4: nop
E2D5: nop
E2D6: nop
E2D7: nop
E2D8: nop
E2D9: nop
E2DA: nop
E2DB: nop
E2DC: nop
E2DD: nop
E2DE: nop
E2DF: nop
E2E0: nop
E2E1: nop
E2E2: nop
E2E3: nop
E2E4: nop
E2E5: nop
E2E6: nop
E2E7: nop
E2E8: nop
E2E9: nop
E2EA: nop
E2EB: nop
E2EC: nop
E2ED: nop
E2EE: nop
E2EF: nop
E2F0: nop
E2F1: nop
E2F2: nop
E2F3: nop
E2F4: nop
E2F5: nop
E2F6: nop
E2F7: nop
E2F8: nop
E2F9: nop
E2FA: nop
E2FB: nop
E2FC: nop
E2FD: nop
E2FE: nop
E2FF: nop
E300: nop
E301: nop
E302: nop
E303: nop
E304: nop
E305: nop
E306: nop
E307: nop
E308: nop
E309: nop
E30A: nop
E30B: nop
E30C: nop
E30D: nop
E30E: nop
E30F: nop
E310: nop
E311: nop
E312: nop
E313: nop
E314: nop
E315: nop
E316: nop
E317: nop
E318: nop
E319: nop
E31A: nop
E31B: nop
E31C: nop
E31D: nop
E31E: nop
E31F: nop
E320: nop
E321: nop
E322: nop
E323: nop
E324: nop
E325: nop
E326: nop
E327: nop
E328: nop
E329: nop
E32A: nop
E32B: nop
E32C: nop
E32D: nop
E32E: nop
E32F: nop
E330: nop
E331: nop
E332: nop
E333: nop
E334: nop
E335: nop
E336: nop
E337: nop
E338: nop
E339: nop
E33A: nop
E33B: nop
E33C: nop
E33D: nop
E33E: nop
E33F: nop
E340: nop
E341: nop
E342: nop
E343: nop
E344: nop
E345: nop
E346: nop
E347: nop
E348: nop
E349: nop
E34A: nop
E34B: nop
E34C: nop
E34D: nop
E34E: nop
E34F: nop
E350: nop
E351: nop
E352: nop
E353: nop
E354: nop
E355: nop
E356: nop
E357: nop
E358: nop
E359: nop
E35A: nop
E35B: nop
E35C: nop
E35D: nop
E35E: nop
E35F: nop
E360: nop
E361: nop
E362: nop
E363: nop
E364: nop
E365: nop
E366: nop
E367: nop
E368: nop
E369: nop
E36A: nop
E36B: nop
E36C: nop
E36D: nop
E36E: nop
E36F: nop
E370: nop
E371: nop
E372: nop
E373: nop
E374: nop
E375: nop
E376: nop
E377: nop
E378: nop
E379: nop
E37A: nop
E37B: nop
E37C: nop
E37D: nop
E37E: nop
E37F: nop
E380: nop
E381: nop
E382: nop
E383: nop
E384: nop
E385: nop
E386: nop
E387: nop
E388: nop
E389: nop
E38A: nop
E38B: nop
E38C: nop
E38D: nop
E38E: nop
E38F: nop
E390: nop
E391: nop
E392: nop
E393: nop
E394: nop
E395: nop
E396: nop
E397: nop
E398: nop
E399: nop
E39A: nop
E39B: nop
E39C: nop
E39D: nop
E39E: nop
E39F: nop
E3A0: nop
E3A1: nop
E3A2: nop
E3A3: nop
E3A4: nop
E3A5: nop
E3A6: nop
E3A7: nop
E3A8: nop
E3A9: nop
E3AA: nop
E3AB: nop
E3AC: nop
E3AD: nop
E3AE: nop
E3AF: nop
E3B0: nop
E3B1: nop
E3B2: nop
E3B3: nop
E3B4: nop
E3B5: nop
E3B6: nop
E3B7: nop
E3B8: nop
E3B9: nop
E3BA: nop
E3BB: nop
E3BC: nop
E3BD: nop
E3BE: nop
E3BF: nop
E3C0: nop
E3C1: nop
E3C2: nop
E3C3: nop
E3C4: nop
E3C5: nop
E3C6: nop
E3C7: nop
E3C8: nop
E3C9: nop
E3CA: nop
E3CB: nop
E3CC: nop
E3CD: nop
E3CE: nop
E3CF: nop
E3D0: nop
E3D1: nop
E3D2: nop
E3D3: nop
E3D4: nop
E3D5: nop
E3D6: nop
E3D7: nop
E3D8: nop
E3D9: nop
E3DA: nop
E3DB: nop
E3DC: nop
E3DD: nop
E3DE: nop
E3DF: nop
E3E0: nop
E3E1: nop
E3E2: nop
E3E3: nop
E3E4: nop
E3E5: nop
E3E6: nop
E3E7: nop
E3E8: nop
E3E9: nop
E3EA: nop
E3EB: nop
E3EC: nop
E3ED: nop
E3EE: nop
E3EF: nop
E3F0: nop
E3F1: nop
E3F2: nop
E3F3: nop
E3F4: nop
E3F5: nop
E3F6: nop
E3F7: nop
E3F8: nop
E3F9: nop
E3FA: nop
E3FB: nop
E3FC: nop
E3FD: nop
E3FE: nop
E3FF: nop
E400: nop
E401: nop
E402: nop
E403: nop
E404: nop
E405: nop
E406: nop
E407: nop
E408: nop
E409: nop
E40A: nop
E40B: nop
E40C: nop
E40D: nop
E40E: nop
E40F: nop
E410: nop
E411: nop
E412: nop
E413: nop
E414: nop
E415: nop
E416: nop
E417: nop
E418: nop
E419: nop
E41A: nop
E41B: nop
E41C: nop
E41D: nop
E41E: nop
E41F: nop
E420: nop
E421: nop
E422: nop
E423: nop
E424: nop
E425: nop
E426: nop
E427: nop
E428: nop
E429: nop
E42A: nop
E42B: nop
E42C: nop
E42D: nop
E42E: nop
E42F: nop
E430: nop
E431: nop
E432: nop
E433: nop
E434: nop
E435: nop
E436: nop
E437: nop
E438: nop
E439: nop
E43A: nop
E43B: nop
E43C: nop
E43D: nop
E43E: nop
E43F: nop
E440: nop
E441: nop
E442: nop
E443: nop
E444: nop
E445: nop
E446: nop
E447: nop
E448: nop
E449: nop
E44A: nop
E44B: nop
E44C: nop
E44D: nop
E44E: nop
E44F: nop
E450: nop
E451: nop
E452: nop
E453: nop
E454: nop
E455: nop
E456: nop
E457: nop
E458: nop
E459: nop
E45A: nop
E45B: nop
E45C: nop
E45D: nop
E45E: nop
E45F: nop
E460: nop
E461: nop
E462: nop
E463: nop
E464: nop
E465: nop
E466: nop
E467: nop
E468: nop
E469: nop
E46A: nop
E46B: nop
E46C: nop
E46D: nop
E46E: nop
E46F: nop
E470: nop
E471: nop
E472: nop
E473: nop
E474: nop
E475: nop
E476: nop
E477: nop
E478: nop
E479: nop
E47A: nop
E47B: nop
E47C: nop
E47D: nop
E47E: nop
E47F: nop
E480: nop
E481: nop
E482: nop
E483: nop
E484: nop
E485: nop
E486: nop
E487: nop
E488: nop
E489: nop
E48A: nop
E48B: nop
E48C: nop
E48D: nop
E48E: nop
E48F: nop
E490: nop
E491: nop
E492: nop
E493: nop
E494: nop
E495: nop
E496: nop
E497: nop
E498: nop
E499: nop
E49A: nop
E49B: nop
E49C: nop
E49D: nop
E49E: nop
E49F: nop
E4A0: nop
E4A1: nop
E4A2: nop
E4A3: nop
E4A4: nop
E4A5: nop
E4A6: nop
E4A7: nop
E4A8: nop
E4A9: nop
E4AA: nop
E4AB: nop
E4AC: nop
E4AD: nop
E4AE: nop
E4AF: nop
E4B0: nop
E4B1: nop
E4B2: nop
E4B3: nop
E4B4: nop
E4B5: nop
E4B6: nop
E4B7: nop
E4B8: nop
E4B9: nop
E4BA: nop
E4BB: nop
E4BC: nop
E4BD: nop
E4BE: nop
E4BF: nop
E4C0: nop
E4C1: nop
E4C2: nop
E4C3: nop
E4C4: nop
E4C5: nop
E4C6: nop
E4C7: nop
E4C8: nop
E4C9: nop
E4CA: nop
E4CB: nop
E4CC: nop
E4CD: nop
E4CE: nop
E4CF: nop
E4D0: nop
E4D1: nop
E4D2: nop
E4D3: nop
E4D4: nop
E4D5: nop
E4D6: nop
E4D7: nop
E4D8: nop
E4D9: nop
E4DA: nop
E4DB: nop
E4DC: nop
E4DD: nop
E4DE: nop
E4DF: nop
E4E0: nop
E4E1: nop
E4E2: nop
E4E3: nop
E4E4: nop
E4E5: nop
E4E6: nop
E4E7: nop
E4E8: nop
E4E9: nop
E4EA: nop
E4EB: nop
E4EC: nop
E4ED: nop
E4EE: nop
E4EF: nop
E4F0: nop
E4F1: nop
E4F2: nop
E4F3: nop
E4F4: nop
E4F5: nop
E4F6: nop
E4F7: nop
E4F8: nop
E4F9: nop
E4FA: nop
E4FB: nop
E4FC: nop
E4FD: nop
E4FE: nop
E4FF: nop
E500: nop
E501: nop
E502: nop
E503: nop
E504: nop
E505: nop
E506: nop
E507: nop
E508: nop
E509: nop
E50A: nop
E50B: nop
E50C: nop
E50D: nop
E50E: nop
E50F: nop
E510: nop
E511: nop
E512: nop
E513: nop
E514: nop
E515: nop
E516: nop
E517: nop
E518: nop
E519: nop
E51A: nop
E51B: nop
E51C: nop
E51D: nop
E51E: nop
E51F: nop
E520: nop
E521: nop
E522: nop
E523: nop
E524: nop
E525: nop
E526: nop
E527: nop
E528: nop
E529: nop
E52A: nop
E52B: nop
E52C: nop
E52D: nop
E52E: nop
E52F: nop
E530: nop
E531: nop
E532: nop
E533: nop
E534: nop
E535: nop
E536: nop
E537: nop
E538: nop
E539: nop
E53A: nop
E53B: nop
E53C: nop
E53D: nop
E53E: nop
E53F: nop
E540: nop
E541: nop
E542: nop
E543: nop
E544: nop
E545: nop
E546: nop
E547: nop
E548: nop
E549: nop
E54A: nop
E54B: nop
E54C: nop
E54D: nop
E54E: nop
E54F: nop
E550: nop
E551: nop
E552: nop
E553: nop
E554: nop
E555: nop
E556: nop
E557: nop
E558: nop
E559: nop
E55A: nop
E55B: nop
E55C: nop
E55D: nop
E55E: nop
E55F: nop
E560: nop
E561: nop
E562: nop
E563: nop
E564: nop
E565: nop
E566: nop
E567: nop
E568: nop
E569: nop
E56A: nop
E56B: nop
E56C: nop
E56D: nop
E56E: nop
E56F: nop
E570: nop
E571: nop
E572: nop
E573: nop
E574: nop
E575: nop
E576: nop
E577: nop
E578: nop
E579: nop
E57A: nop
E57B: nop
E57C: nop
E57D: nop
E57E: nop
E57F: nop
E580: nop
E581: nop
E582: nop
E583: nop
E584: nop
E585: nop
E586: nop
E587: nop
E588: nop
E589: nop
E58A: nop
E58B: nop
E58C: nop
E58D: nop
E58E: nop
E58F: nop
E590: nop
E591: nop
E592: nop
E593: nop
E594: nop
E595: nop
E596: nop
E597: nop
E598: nop
E599: nop
E59A: nop
E59B: nop
E59C: nop
E59D: nop
E59E: nop
E59F: nop
E5A0: nop
E5A1: nop
E5A2: nop
E5A3: nop
E5A4: nop
E5A5: nop
E5A6: nop
E5A7: nop
E5A8: nop
E5A9: nop
E5AA: nop
E5AB: nop
E5AC: nop
E5AD: nop
E5AE: nop
E5AF: nop
E5B0: nop
E5B1: nop
E5B2: nop
E5B3: nop
E5B4: nop
E5B5: nop
E5B6: nop
E5B7: nop
E5B8: nop
E5B9: nop
E5BA: nop
E5BB: nop
E5BC: nop
E5BD: nop
E5BE: nop
E5BF: nop
E5C0: nop
E5C1: nop
E5C2: nop
E5C3: nop
E5C4: nop
E5C5: nop
E5C6: nop
E5C7: nop
E5C8: nop
E5C9: nop
E5CA: nop
E5CB: nop
E5CC: nop
E5CD: nop
E5CE: nop
E5CF: nop
E5D0: nop
E5D1: nop
E5D2: nop
E5D3: nop
E5D4: nop
E5D5: nop
E5D6: nop
E5D7: nop
E5D8: nop
E5D9: nop
E5DA: nop
E5DB: nop
E5DC: nop
E5DD: nop
E5DE: nop
E5DF: nop
E5E0: nop
E5E1: nop
E5E2: nop
E5E3: nop
E5E4: nop
E5E5: nop
E5E6: nop
E5E7: nop
E5E8: nop
E5E9: nop
E5EA: nop
E5EB: nop
E5EC: nop
E5ED: nop
E5EE: nop
E5EF: nop
E5F0: nop
E5F1: nop
E5F2: nop
E5F3: nop
E5F4: nop
E5F5: nop
E5F6: nop
E5F7: nop
E5F8: nop
E5F9: nop
E5FA: nop
E5FB: nop
E5FC: nop
E5FD: nop
E5FE: nop
E5FF: nop
E600: nop
E601: nop
E602: nop
E603: nop
E604: nop
E605: nop
E606: nop
E607: nop
E608: nop
E609: nop
E60A: nop
E60B: nop
E60C: nop
E60D: nop
E60E: nop
E60F: nop
E610: nop
E611: nop
E612: nop
E613: nop
E614: nop
E615: nop
E616: nop
E617: nop
E618: nop
E619: nop
E61A: nop
E61B: nop
E61C: nop
E61D: nop
E61E: nop
E61F: nop
E620: nop
E621: nop
E622: nop
E623: nop
E624: nop
E625: nop
E626: nop
E627: nop
E628: nop
E629: nop
E62A: nop
E62B: nop
E62C: nop
E62D: nop
E62E: nop
E62F: nop
E630: nop
E631: nop
E632: nop
E633: nop
E634: nop
E635: nop
E636: nop
E637: nop
E638: nop
E639: nop
E63A: nop
E63B: nop
E63C: nop
E63D: nop
E63E: nop
E63F: nop
E640: nop
E641: nop
E642: nop
E643: nop
E644: nop
E645: nop
E646: nop
E647: nop
E648: nop
E649: nop
E64A: nop
E64B: nop
E64C: nop
E64D: nop
E64E: nop
E64F: nop
E650: nop
E651: nop
E652: nop
E653: nop
E654: nop
E655: nop
E656: nop
E657: nop
E658: nop
E659: nop
E65A: nop
E65B: nop
E65C: nop
E65D: nop
E65E: nop
E65F: nop
E660: nop
E661: nop
E662: nop
E663: nop
E664: nop
E665: nop
E666: nop
E667: nop
E668: nop
E669: nop
E66A: nop
E66B: nop
E66C: nop
E66D: nop
E66E: nop
E66F: nop
E670: nop
E671: nop
E672: nop
E673: nop
E674: nop
E675: nop
E676: nop
E677: nop
E678: nop
E679: nop
E67A: nop
E67B: nop
E67C: nop
E67D: nop
E67E: nop
E67F: nop
E680: nop
E681: nop
E682: nop
E683: nop
E684: nop
E685: nop
E686: nop
E687: nop
E688: nop
E689: nop
E68A: nop
E68B: nop
E68C: nop
E68D: nop
E68E: nop
E68F: nop
E690: nop
E691: nop
E692: nop
E693: nop
E694: nop
E695: nop
E696: nop
E697: nop
E698: nop
E699: nop
E69A: nop
E69B: nop
E69C: nop
E69D: nop
E69E: nop
E69F: nop
E6A0: nop
E6A1: nop
E6A2: nop
E6A3: nop
E6A4: nop
E6A5: nop
E6A6: nop
E6A7: nop
E6A8: nop
E6A9: nop
E6AA: nop
E6AB: nop
E6AC: nop
E6AD: nop
E6AE: nop
E6AF: nop
E6B0: nop
E6B1: nop
E6B2: nop
E6B3: nop
E6B4: nop
E6B5: nop
E6B6: nop
E6B7: nop
E6B8: nop
E6B9: nop
E6BA: nop
E6BB: nop
E6BC: nop
E6BD: nop
E6BE: nop
E6BF: nop
E6C0: nop
E6C1: nop
E6C2: nop
E6C3: nop
E6C4: nop
E6C5: nop
E6C6: nop
E6C7: nop
E6C8: nop
E6C9: nop
E6CA: nop
E6CB: nop
E6CC: nop
E6CD: nop
E6CE: nop
E6CF: nop
E6D0: nop
E6D1: nop
E6D2: nop
E6D3: nop
E6D4: nop
E6D5: nop
E6D6: nop
E6D7: nop
E6D8: nop
E6D9: nop
E6DA: nop
E6DB: nop
E6DC: nop
E6DD: nop
E6DE: nop
E6DF: nop
E6E0: nop
E6E1: nop
E6E2: nop
E6E3: nop
E6E4: nop
E6E5: nop
E6E6: nop
E6E7: nop
E6E8: nop
E6E9: nop
E6EA: nop
E6EB: nop
E6EC: nop
E6ED: nop
E6EE: nop
E6EF: nop
E6F0: nop
E6F1: nop
E6F2: nop
E6F3: nop
E6F4: nop
E6F5: nop
E6F6: nop
E6F7: nop
E6F8: nop
E6F9: nop
E6FA: nop
E6FB: nop
E6FC: nop
E6FD: nop
E6FE: nop
E6FF: nop
E700: nop
E701: nop
E702: nop
E703: nop
E704: nop
E705: nop
E706: nop
E707: nop
E708: nop
E709: nop
E70A: nop
E70B: nop
E70C: nop
E70D: nop
E70E: nop
E70F: nop
E710: nop
E711: nop
E712: nop
E713: nop
E714: nop
E715: nop
E716: nop
E717: nop
E718: nop
E719: nop
E71A: nop
E71B: nop
E71C: nop
E71D: nop
E71E: nop
E71F: nop
E720: nop
E721: nop
E722: nop
E723: nop
E724: nop
E725: nop
E726: nop
E727: nop
E728: nop
E729: nop
E72A: nop
E72B: nop
E72C: nop
E72D: nop
E72E: nop
E72F: nop
E730: nop
E731: nop
E732: nop
E733: nop
E734: nop
E735: nop
E736: nop
E737: nop
E738: nop
E739: nop
E73A: nop
E73B: nop
E73C: nop
E73D: nop
E73E: nop
E73F: nop
E740: nop
E741: nop
E742: nop
E743: nop
E744: nop
E745: nop
E746: nop
E747: nop
E748: nop
E749: nop
E74A: nop
E74B: nop
E74C: nop
E74D: nop
E74E: nop
E74F: nop
E750: nop
E751: nop
E752: nop
E753: nop
E754: nop
E755: nop
E756: nop
E757: nop
E758: nop
E759: nop
E75A: nop
E75B: nop
E75C: nop
E75D: nop
E75E: nop
E75F: nop
E760: nop
E761: nop
E762: nop
E763: nop
E764: nop
E765: nop
E766: nop
E767: nop
E768: nop
E769: nop
E76A: nop
E76B: nop
E76C: nop
E76D: nop
E76E: nop
E76F: nop
E770: nop
E771: nop
E772: nop
E773: nop
E774: nop
E775: nop
E776: nop
E777: nop
E778: nop
E779: nop
E77A: nop
E77B: nop
E77C: nop
E77D: nop
E77E: nop
E77F: nop
E780: nop
E781: nop
E782: nop
E783: nop
E784: nop
E785: nop
E786: nop
E787: nop
E788: nop
E789: nop
E78A: nop
E78B: nop
E78C: nop
E78D: nop
E78E: nop
E78F: nop
E790: nop
E791: nop
E792: nop
E793: nop
E794: nop
E795: nop
E796: nop
E797: nop
E798: nop
E799: nop
E79A: nop
E79B: nop
E79C: nop
E79D: nop
E79E: nop
E79F: nop
E7A0: nop
E7A1: nop
E7A2: nop
E7A3: nop
E7A4: nop
E7A5: nop
E7A6: nop
E7A7: nop
E7A8: nop
E7A9: nop
E7AA: nop
E7AB: nop
E7AC: nop
E7AD: nop
E7AE: nop
E7AF: nop
E7B0: nop
E7B1: nop
E7B2: nop
E7B3: nop
E7B4: nop
E7B5: nop
E7B6: nop
E7B7: nop
E7B8: nop
E7B9: nop
E7BA: nop
E7BB: nop
E7BC: nop
E7BD: nop
E7BE: nop
E7BF: nop
E7C0: nop
E7C1: nop
E7C2: nop
E7C3: nop
E7C4: nop
E7C5: nop
E7C6: nop
E7C7: nop
E7C8: nop
E7C9: nop
E7CA: nop
E7CB: nop
E7CC: nop
E7CD: nop
E7CE: nop
E7CF: nop
E7D0: nop
E7D1: nop
E7D2: nop
E7D3: nop
E7D4: nop
E7D5: nop
E7D6: nop
E7D7: nop
E7D8: nop
E7D9: nop
E7DA: nop
E7DB: nop
E7DC: nop
E7DD: nop
E7DE: nop
E7DF: nop
E7E0: nop
E7E1: nop
E7E2: nop
E7E3: nop
E7E4: nop
E7E5: nop
E7E6: nop
E7E7: nop
E7E8: nop
E7E9: nop
E7EA: nop
E7EB: nop
E7EC: nop
E7ED: nop
E7EE: nop
E7EF: nop
E7F0: nop
E7F1: nop
E7F2: nop
E7F3: nop
E7F4: nop
E7F5: nop
E7F6: nop
E7F7: nop
E7F8: nop
E7F9: nop
E7FA: nop
E7FB: nop
E7FC: nop
E7FD: nop
E7FE: nop
E7FF: nop
E800: nop
E801: nop
E802: nop
E803: nop
E804: nop
E805: nop
E806: nop
E807: nop
E808: nop
E809: nop
E80A: nop
E80B: nop
E80C: nop
E80D: nop
E80E: nop
E80F: nop
E810: nop
E811: nop
E812: nop
E813: nop
E814: nop
E815: nop
E816: nop
E817: nop
E818: nop
E819: nop
E81A: nop
E81B: nop
E81C: nop
E81D: nop
E81E: nop
E81F: nop
E820: nop
E821: nop
E822: nop
E823: nop
E824: nop
E825: nop
E826: nop
E827: nop
E828: nop
E829: nop
E82A: nop
E82B: nop
E82C: nop
E82D: nop
E82E: nop
E82F: nop
E830: nop
E831: nop
E832: nop
E833: nop
E834: nop
E835: nop
E836: nop
E837: nop
E838: nop
E839: nop
E83A: nop
E83B: nop
E83C: nop
E83D: nop
E83E: nop
E83F: nop
E840: nop
E841: nop
E842: nop
E843: nop
E844: nop
E845: nop
E846: nop
E847: nop
E848: nop
E849: nop
E84A: nop
E84B: nop
E84C: nop
E84D: nop
E84E: nop
E84F: nop
E850: nop
E851: nop
E852: nop
E853: nop
E854: nop
E855: nop
E856: nop
E857: nop
E858: nop
E859: nop
E85A: nop
E85B: nop
E85C: nop
E85D: nop
E85E: nop
E85F: nop
E860: nop
E861: nop
E862: nop
E863: nop
E864: nop
E865: nop
E866: nop
E867: nop
E868: nop
E869: nop
E86A: nop
E86B: nop
E86C: nop
E86D: nop
E86E: nop
E86F: nop
E870: nop
E871: nop
E872: nop
E873: nop
E874: nop
E875: nop
E876: nop
E877: nop
E878: nop
E879: nop
E87A: nop
E87B: nop
E87C: nop
E87D: nop
E87E: nop
E87F: nop
E880: nop
E881: nop
E882: nop
E883: nop
E884: nop
E885: nop
E886: nop
E887: nop
E888: nop
E889: nop
E88A: nop
E88B: nop
E88C: nop
E88D: nop
E88E: nop
E88F: nop
E890: nop
E891: nop
E892: nop
E893: nop
E894: nop
E895: nop
E896: nop
E897: nop
E898: nop
E899: nop
E89A: nop
E89B: nop
E89C: nop
E89D: nop
E89E: nop
E89F: nop
E8A0: nop
E8A1: nop
E8A2: nop
E8A3: nop
E8A4: nop
E8A5: nop
E8A6: nop
E8A7: nop
E8A8: nop
E8A9: nop
E8AA: nop
E8AB: nop
E8AC: nop
E8AD: nop
E8AE: nop
E8AF: nop
E8B0: nop
E8B1: nop
E8B2: nop
E8B3: nop
E8B4: nop
E8B5: nop
E8B6: nop
E8B7: nop
E8B8: nop
E8B9: nop
E8BA: nop
E8BB: nop
E8BC: nop
E8BD: nop
E8BE: nop
E8BF: nop
E8C0: nop
E8C1: nop
E8C2: nop
E8C3: nop
E8C4: nop
E8C5: nop
E8C6: nop
E8C7: nop
E8C8: nop
E8C9: nop
E8CA: nop
E8CB: nop
E8CC: nop
E8CD: nop
E8CE: nop
E8CF: nop
E8D0: nop
E8D1: nop
E8D2: nop
E8D3: nop
E8D4: nop
E8D5: nop
E8D6: nop
E8D7: nop
E8D8: nop
E8D9: nop
E8DA: nop
E8DB: nop
E8DC: nop
E8DD: nop
E8DE: nop
E8DF: nop
E8E0: nop
E8E1: nop
E8E2: nop
E8E3: nop
E8E4: nop
E8E5: nop
E8E6: nop
E8E7: nop
E8E8: nop
E8E9: nop
E8EA: nop
E8EB: nop
E8EC: nop
E8ED: nop
E8EE: nop
E8EF: nop
E8F0: nop
E8F1: nop
E8F2: nop
E8F3: nop
E8F4: nop
E8F5: nop
E8F6: nop
E8F7: nop
E8F8: nop
E8F9: nop
E8FA: nop
E8FB: nop
E8FC: nop
E8FD: nop
E8FE: nop
E8FF: nop
E900: nop
E901: nop
E902: nop
E903: nop
E904: nop
E905: nop
E906: nop
E907: nop
E908: nop
E909: nop
E90A: nop
E90B: nop
E90C: nop
E90D: nop
E90E: nop
E90F: nop
E910: nop
E911: nop
E912: nop
E913: nop
E914: nop
E915: nop
E916: nop
E917: nop
E918: nop
E919: nop
E91A: nop
E91B: nop
E91C: nop
E91D: nop
E91E: nop
E91F: nop
E920: nop
E921: nop
E922: nop
E923: nop
E924: nop
E925: nop
E926: nop
E927: nop
E928: nop
E929: nop
E92A: nop
E92B: nop
E92C: nop
E92D: nop
E92E: nop
E92F: nop
E930: nop
E931: nop
E932: nop
E933: nop
E934: nop
E935: nop
E936: nop
E937: nop
E938: nop
E939: nop
E93A: nop
E93B: nop
E93C: nop
E93D: nop
E93E: nop
E93F: nop
E940: nop
E941: nop
E942: nop
E943: nop
E944: nop
E945: nop
E946: nop
E947: nop
E948: nop
E949: nop
E94A: nop
E94B: nop
E94C: nop
E94D: nop
E94E: nop
E94F: nop
E950: nop
E951: nop
E952: nop
E953: nop
E954: nop
E955: nop
E956: nop
E957: nop
E958: nop
E959: nop
E95A: nop
E95B: nop
E95C: nop
E95D: nop
E95E: nop
E95F: nop
E960: nop
E961: nop
E962: nop
E963: nop
E964: nop
E965: nop
E966: nop
E967: nop
E968: nop
E969: nop
E96A: nop
E96B: nop
E96C: nop
E96D: nop
E96E: nop
E96F: nop
E970: nop
E971: nop
E972: nop
E973: nop
E974: nop
E975: nop
E976: nop
E977: nop
E978: nop
E979: nop
E97A: nop
E97B: nop
E97C: nop
E97D: nop
E97E: nop
E97F: nop
E980: nop
E981: nop
E982: nop
E983: nop
E984: nop
E985: nop
E986: nop
E987: nop
E988: nop
E989: nop
E98A: nop
E98B: nop
E98C: nop
E98D: nop
E98E: nop
E98F: nop
E990: nop
E991: nop
E992: nop
E993: nop
E994: nop
E995: nop
E996: nop
E997: nop
E998: nop
E999: nop
E99A: nop
E99B: nop
E99C: nop
E99D: nop
E99E: nop
E99F: nop
E9A0: nop
E9A1: nop
E9A2: nop
E9A3: nop
E9A4: nop
E9A5: nop
E9A6: nop
E9A7: nop
E9A8: nop
E9A9: nop
E9AA: nop
E9AB: nop
E9AC: nop
E9AD: nop
E9AE: nop
E9AF: nop
E9B0: nop
E9B1: nop
E9B2: nop
E9B3: nop
E9B4: nop
E9B5: nop
E9B6: nop
E9B7: nop
E9B8: nop
E9B9: nop
E9BA: nop
E9BB: nop
E9BC: nop
E9BD: nop
E9BE: nop
E9BF: nop
E9C0: nop
E9C1: nop
E9C2: nop
E9C3: nop
E9C4: nop
E9C5: nop
E9C6: nop
E9C7: nop
E9C8: nop
E9C9: nop
E9CA: nop
E9CB: nop
E9CC: nop
E9CD: nop
E9CE: nop
E9CF: nop
E9D0: nop
E9D1: nop
E9D2: nop
E9D3: nop
E9D4: nop
E9D5: nop
E9D6: nop
E9D7: nop
E9D8: nop
E9D9: nop
E9DA: nop
E9DB: nop
E9DC: nop
E9DD: nop
E9DE: nop
E9DF: nop
E9E0: nop
E9E1: nop
E9E2: nop
E9E3: nop
E9E4: nop
E9E5: nop
E9E6: nop
E9E7: nop
E9E8: nop
E9E9: nop
E9EA: nop
E9EB: nop
E9EC: nop
E9ED: nop
E9EE: nop
E9EF: nop
E9F0: nop
E9F1: nop
E9F2: nop
E9F3: nop
E9F4: nop
E9F5: nop
E9F6: nop
E9F7: nop
E9F8: nop
E9F9: nop
E9FA: nop
E9FB: nop
E9FC: nop
E9FD: nop
E9FE: nop
E9FF: nop
EA00: nop
EA01: nop
EA02: nop
EA03: nop
EA04: nop
EA05: nop
EA06: nop
EA07: nop
EA08: nop
EA09: nop
EA0A: nop
EA0B: nop
EA0C: nop
EA0D: nop
EA0E: nop
EA0F: nop
EA10: nop
EA11: nop
EA12: nop
EA13: nop
EA14: nop
EA15: nop
EA16: nop
EA17: nop
EA18: nop
EA19: nop
EA1A: nop
EA1B: nop
EA1C: nop
EA1D: nop
EA1E: nop
EA1F: nop
EA20: nop
EA21: nop
EA22: nop
EA23: nop
EA24: nop
EA25: nop
EA26: nop
EA27: nop
EA28: nop
EA29: nop
EA2A: nop
EA2B: nop
EA2C: nop
EA2D: nop
EA2E: nop
EA2F: nop
EA30: nop
EA31: nop
EA32: nop
EA33: nop
EA34: nop
EA35: nop
EA36: nop
EA37: nop
EA38: nop
EA39: nop
EA3A: nop
EA3B: nop
EA3C: nop
EA3D: nop
EA3E: nop
EA3F: nop
EA40: nop
EA41: nop
EA42: nop
EA43: nop
EA44: nop
EA45: nop
EA46: nop
EA47: nop
EA48: nop
EA49: nop
EA4A: nop
EA4B: nop
EA4C: nop
EA4D: nop
EA4E: nop
EA4F: nop
EA50: nop
EA51: nop
EA52: nop
EA53: nop
EA54: nop
EA55: nop
EA56: nop
EA57: nop
EA58: nop
EA59: nop
EA5A: nop
EA5B: nop
EA5C: nop
EA5D: nop
EA5E: nop
EA5F: nop
EA60: nop
EA61: nop
EA62: nop
EA63: nop
EA64: nop
EA65: nop
EA66: nop
EA67: nop
EA68: nop
EA69: nop
EA6A: nop
EA6B: nop
EA6C: nop
EA6D: nop
EA6E: nop
EA6F: nop
EA70: nop
EA71: nop
EA72: nop
EA73: nop
EA74: nop
EA75: nop
EA76: nop
EA77: nop
EA78: nop
EA79: nop
EA7A: nop
EA7B: nop
EA7C: nop
EA7D: nop
EA7E: nop
EA7F: nop
EA80: nop
EA81: nop
EA82: nop
EA83: nop
EA84: nop
EA85: nop
EA86: nop
EA87: nop
EA88: nop
EA89: nop
EA8A: nop
EA8B: nop
EA8C: nop
EA8D: nop
EA8E: nop
EA8F: nop
EA90: nop
EA91: nop
EA92: nop
EA93: nop
EA94: nop
EA95: nop
EA96: nop
EA97: nop
EA98: nop
EA99: nop
EA9A: nop
EA9B: nop
EA9C: nop
EA9D: nop
EA9E: nop
EA9F: nop
EAA0: nop
EAA1: nop
EAA2: nop
EAA3: nop
EAA4: nop
EAA5: nop
EAA6: nop
EAA7: nop
EAA8: nop
EAA9: nop
EAAA: nop
EAAB: nop
EAAC: nop
EAAD: nop
EAAE: nop
EAAF: nop
EAB0: nop
EAB1: nop
EAB2: nop
EAB3: nop
EAB4: nop
EAB5: nop
EAB6: nop
EAB7: nop
EAB8: nop
EAB9: nop
EABA: nop
EABB: nop
EABC: nop
EABD: nop
EABE: nop
EABF: nop
EAC0: nop
EAC1: nop
EAC2: nop
EAC3: nop
EAC4: nop
EAC5: nop
EAC6: nop
EAC7: nop
EAC8: nop
EAC9: nop
EACA: nop
EACB: nop
EACC: nop
EACD: nop
EACE: nop
EACF: nop
EAD0: nop
EAD1: nop
EAD2: nop
EAD3: nop
EAD4: nop
EAD5: nop
EAD6: nop
EAD7: nop
EAD8: nop
EAD9: nop
EADA: nop
EADB: nop
EADC: nop
EADD: nop
EADE: nop
EADF: nop
EAE0: nop
EAE1: nop
EAE2: nop
EAE3: nop
EAE4: nop
EAE5: nop
EAE6: nop
EAE7: nop
EAE8: nop
EAE9: nop
EAEA: nop
EAEB: nop
EAEC: nop
EAED: nop
EAEE: nop
EAEF: nop
EAF0: nop
EAF1: nop
EAF2: nop
EAF3: nop
EAF4: nop
EAF5: nop
EAF6: nop
EAF7: nop
EAF8: nop
EAF9: nop
EAFA: nop
EAFB: nop
EAFC: nop
EAFD: nop
EAFE: nop
EAFF: nop
EB00: nop
EB01: nop
EB02: nop
EB03: nop
EB04: nop
EB05: nop
EB06: nop
EB07: nop
EB08: nop
EB09: nop
EB0A: nop
EB0B: nop
EB0C: nop
EB0D: nop
EB0E: nop
EB0F: nop
EB10: nop
EB11: nop
EB12: nop
EB13: nop
EB14: nop
EB15: nop
EB16: nop
EB17: nop
EB18: nop
EB19: nop
EB1A: nop
EB1B: nop
EB1C: nop
EB1D: nop
EB1E: nop
EB1F: nop
EB20: nop
EB21: nop
EB22: nop
EB23: nop
EB24: nop
EB25: nop
EB26: nop
EB27: nop
EB28: nop
EB29: nop
EB2A: nop
EB2B: nop
EB2C: nop
EB2D: nop
EB2E: nop
EB2F: nop
EB30: nop
EB31: nop
EB32: nop
EB33: nop
EB34: nop
EB35: nop
EB36: nop
EB37: nop
EB38: nop
EB39: nop
EB3A: nop
EB3B: nop
EB3C: nop
EB3D: nop
EB3E: nop
EB3F: nop
EB40: nop
EB41: nop
EB42: nop
EB43: nop
EB44: nop
EB45: nop
EB46: nop
EB47: nop
EB48: nop
EB49: nop
EB4A: nop
EB4B: nop
EB4C: nop
EB4D: nop
EB4E: nop
EB4F: nop
EB50: nop
EB51: nop
EB52: nop
EB53: nop
EB54: nop
EB55: nop
EB56: nop
EB57: nop
EB58: nop
EB59: nop
EB5A: nop
EB5B: nop
EB5C: nop
EB5D: nop
EB5E: nop
EB5F: nop
EB60: nop
EB61: nop
EB62: nop
EB63: nop
EB64: nop
EB65: nop
EB66: nop
EB67: nop
EB68: nop
EB69: nop
EB6A: nop
EB6B: nop
EB6C: nop
EB6D: nop
EB6E: nop
EB6F: nop
EB70: nop
EB71: nop
EB72: nop
EB73: nop
EB74: nop
EB75: nop
EB76: nop
EB77: nop
EB78: nop
EB79: nop
EB7A: nop
EB7B: nop
EB7C: nop
EB7D: nop
EB7E: nop
EB7F: nop
EB80: nop
EB81: nop
EB82: nop
EB83: nop
EB84: nop
EB85: nop
EB86: nop
EB87: nop
EB88: nop
EB89: nop
EB8A: nop
EB8B: nop
EB8C: nop
EB8D: nop
EB8E: nop
EB8F: nop
EB90: nop
EB91: nop
EB92: nop
EB93: nop
EB94: nop
EB95: nop
EB96: nop
EB97: nop
EB98: nop
EB99: nop
EB9A: nop
EB9B: nop
EB9C: nop
EB9D: nop
EB9E: nop
EB9F: nop
EBA0: nop
EBA1: nop
EBA2: nop
EBA3: nop
EBA4: nop
EBA5: nop
EBA6: nop
EBA7: nop
EBA8: nop
EBA9: nop
EBAA: nop
EBAB: nop
EBAC: nop
EBAD: nop
EBAE: nop
EBAF: nop
EBB0: nop
EBB1: nop
EBB2: nop
EBB3: nop
EBB4: nop
EBB5: nop
EBB6: nop
EBB7: nop
EBB8: nop
EBB9: nop
EBBA: nop
EBBB: nop
EBBC: nop
EBBD: nop
EBBE: nop
EBBF: nop
EBC0: nop
EBC1: nop
EBC2: nop
EBC3: nop
EBC4: nop
EBC5: nop
EBC6: nop
EBC7: nop
EBC8: nop
EBC9: nop
EBCA: nop
EBCB: nop
EBCC: nop
EBCD: nop
EBCE: nop
EBCF: nop
EBD0: nop
EBD1: nop
EBD2: nop
EBD3: nop
EBD4: nop
EBD5: nop
EBD6: nop
EBD7: nop
EBD8: nop
EBD9: nop
EBDA: nop
EBDB: nop
EBDC: nop
EBDD: nop
EBDE: nop
EBDF: nop
EBE0: nop
EBE1: nop
EBE2: nop
EBE3: nop
EBE4: nop
EBE5: nop
EBE6: nop
EBE7: nop
EBE8: nop
EBE9: nop
EBEA: nop
EBEB: nop
EBEC: nop
EBED: nop
EBEE: nop
EBEF: nop
EBF0: nop
EBF1: nop
EBF2: nop
EBF3: nop
EBF4: nop
EBF5: nop
EBF6: nop
EBF7: nop
EBF8: nop
EBF9: nop
EBFA: nop
EBFB: nop
EBFC: nop
EBFD: nop
EBFE: nop
EBFF: nop
EC00: nop
EC01: nop
EC02: nop
EC03: nop
EC04: nop
EC05: nop
EC06: nop
EC07: nop
EC08: nop
EC09: nop
EC0A: nop
EC0B: nop
EC0C: nop
EC0D: nop
EC0E: nop
EC0F: nop
EC10: nop
EC11: nop
EC12: nop
EC13: nop
EC14: nop
EC15: nop
EC16: nop
EC17: nop
EC18: nop
EC19: nop
EC1A: nop
EC1B: nop
EC1C: nop
EC1D: nop
EC1E: nop
EC1F: nop
EC20: nop
EC21: nop
EC22: nop
EC23: nop
EC24: nop
EC25: nop
EC26: nop
EC27: nop
EC28: nop
EC29: nop
EC2A: nop
EC2B: nop
EC2C: nop
EC2D: nop
EC2E: nop
EC2F: nop
EC30: nop
EC31: nop
EC32: nop
EC33: nop
EC34: nop
EC35: nop
EC36: nop
EC37: nop
EC38: nop
EC39: nop
EC3A: nop
EC3B: nop
EC3C: nop
EC3D: nop
EC3E: nop
EC3F: nop
EC40: nop
EC41: nop
EC42: nop
EC43: nop
EC44: nop
EC45: nop
EC46: nop
EC47: nop
EC48: nop
EC49: nop
EC4A: nop
EC4B: nop
EC4C: nop
EC4D: nop
EC4E: nop
EC4F: nop
EC50: nop
EC51: nop
EC52: nop
EC53: nop
EC54: nop
EC55: nop
EC56: nop
EC57: nop
EC58: nop
EC59: nop
EC5A: nop
EC5B: nop
EC5C: nop
EC5D: nop
EC5E: nop
EC5F: nop
EC60: nop
EC61: nop
EC62: nop
EC63: nop
EC64: nop
EC65: nop
EC66: nop
EC67: nop
EC68: nop
EC69: nop
EC6A: nop
EC6B: nop
EC6C: nop
EC6D: nop
EC6E: nop
EC6F: nop
EC70: nop
EC71: nop
EC72: nop
EC73: nop
EC74: nop
EC75: nop
EC76: nop
EC77: nop
EC78: nop
EC79: nop
EC7A: nop
EC7B: nop
EC7C: nop
EC7D: nop
EC7E: nop
EC7F: nop
EC80: nop
EC81: nop
EC82: nop
EC83: nop
EC84: nop
EC85: nop
EC86: nop
EC87: nop
EC88: nop
EC89: nop
EC8A: nop
EC8B: nop
EC8C: nop
EC8D: nop
EC8E: nop
EC8F: nop
EC90: nop
EC91: nop
EC92: nop
EC93: nop
EC94: nop
EC95: nop
EC96: nop
EC97: nop
EC98: nop
EC99: nop
EC9A: nop
EC9B: nop
EC9C: nop
EC9D: nop
EC9E: nop
EC9F: nop
ECA0: nop
ECA1: nop
ECA2: nop
ECA3: nop
ECA4: nop
ECA5: nop
ECA6: nop
ECA7: nop
ECA8: nop
ECA9: nop
ECAA: nop
ECAB: nop
ECAC: nop
ECAD: nop
ECAE: nop
ECAF: nop
ECB0: nop
ECB1: nop
ECB2: nop
ECB3: nop
ECB4: nop
ECB5: nop
ECB6: nop
ECB7: nop
ECB8: nop
ECB9: nop
ECBA: nop
ECBB: nop
ECBC: nop
ECBD: nop
ECBE: nop
ECBF: nop
ECC0: nop
ECC1: nop
ECC2: nop
ECC3: nop
ECC4: nop
ECC5: nop
ECC6: nop
ECC7: nop
ECC8: nop
ECC9: nop
ECCA: nop
ECCB: nop
ECCC: nop
ECCD: nop
ECCE: nop
ECCF: nop
ECD0: nop
ECD1: nop
ECD2: nop
ECD3: nop
ECD4: nop
ECD5: nop
ECD6: nop
ECD7: nop
ECD8: nop
ECD9: nop
ECDA: nop
ECDB: nop
ECDC: nop
ECDD: nop
ECDE: nop
ECDF: nop
ECE0: nop
ECE1: nop
ECE2: nop
ECE3: nop
ECE4: nop
ECE5: nop
ECE6: nop
ECE7: nop
ECE8: nop
ECE9: nop
ECEA: nop
ECEB: nop
ECEC: nop
ECED: nop
ECEE: nop
ECEF: nop
ECF0: nop
ECF1: nop
ECF2: nop
ECF3: nop
ECF4: nop
ECF5: nop
ECF6: nop
ECF7: nop
ECF8: nop
ECF9: nop
ECFA: nop
ECFB: nop
ECFC: nop
ECFD: nop
ECFE: nop
ECFF: nop
ED00: nop
ED01: nop
ED02: nop
ED03: nop
ED04: nop
ED05: nop
ED06: nop
ED07: nop
ED08: nop
ED09: nop
ED0A: nop
ED0B: nop
ED0C: nop
ED0D: nop
ED0E: nop
ED0F: nop
ED10: nop
ED11: nop
ED12: nop
ED13: nop
ED14: nop
ED15: nop
ED16: nop
ED17: nop
ED18: nop
ED19: nop
ED1A: nop
ED1B: nop
ED1C: nop
ED1D: nop
ED1E: nop
ED1F: nop
ED20: nop
ED21: nop
ED22: nop
ED23: nop
ED24: nop
ED25: nop
ED26: nop
ED27: nop
ED28: nop
ED29: nop
ED2A: nop
ED2B: nop
ED2C: nop
ED2D: nop
ED2E: nop
ED2F: nop
ED30: nop
ED31: nop
ED32: nop
ED33: nop
ED34: nop
ED35: nop
ED36: nop
ED37: nop
ED38: nop
ED39: nop
ED3A: nop
ED3B: nop
ED3C: nop
ED3D: nop
ED3E: nop
ED3F: nop
ED40: nop
ED41: nop
ED42: nop
ED43: nop
ED44: nop
ED45: nop
ED46: nop
ED47: nop
ED48: nop
ED49: nop
ED4A: nop
ED4B: nop
ED4C: nop
ED4D: nop
ED4E: nop
ED4F: nop
ED50: nop
ED51: nop
ED52: nop
ED53: nop
ED54: nop
ED55: nop
ED56: nop
ED57: nop
ED58: nop
ED59: nop
ED5A: nop
ED5B: nop
ED5C: nop
ED5D: nop
ED5E: nop
ED5F: nop
ED60: nop
ED61: nop
ED62: nop
ED63: nop
ED64: nop
ED65: nop
ED66: nop
ED67: nop
ED68: nop
ED69: nop
ED6A: nop
ED6B: nop
ED6C: nop
ED6D: nop
ED6E: nop
ED6F: nop
ED70: nop
ED71: nop
ED72: nop
ED73: nop
ED74: nop
ED75: nop
ED76: nop
ED77: nop
ED78: nop
ED79: nop
ED7A: nop
ED7B: nop
ED7C: nop
ED7D: nop
ED7E: nop
ED7F: nop
ED80: nop
ED81: nop
ED82: nop
ED83: nop
ED84: nop
ED85: nop
ED86: nop
ED87: nop
ED88: nop
ED89: nop
ED8A: nop
ED8B: nop
ED8C: nop
ED8D: nop
ED8E: nop
ED8F: nop
ED90: nop
ED91: nop
ED92: nop
ED93: nop
ED94: nop
ED95: nop
ED96: nop
ED97: nop
ED98: nop
ED99: nop
ED9A: nop
ED9B: nop
ED9C: nop
ED9D: nop
ED9E: nop
ED9F: nop
EDA0: nop
EDA1: nop
EDA2: nop
EDA3: nop
EDA4: nop
EDA5: nop
EDA6: nop
EDA7: nop
EDA8: nop
EDA9: nop
EDAA: nop
EDAB: nop
EDAC: nop
EDAD: nop
EDAE: nop
EDAF: nop
EDB0: nop
EDB1: nop
EDB2: nop
EDB3: nop
EDB4: nop
EDB5: nop
EDB6: nop
EDB7: nop
EDB8: nop
EDB9: nop
EDBA: nop
EDBB: nop
EDBC: nop
EDBD: nop
EDBE: nop
EDBF: nop
EDC0: nop
EDC1: nop
EDC2: nop
EDC3: nop
EDC4: nop
EDC5: nop
EDC6: nop
EDC7: nop
EDC8: nop
EDC9: nop
EDCA: nop
EDCB: nop
EDCC: nop
EDCD: nop
EDCE: nop
EDCF: nop
EDD0: nop
EDD1: nop
EDD2: nop
EDD3: nop
EDD4: nop
EDD5: nop
EDD6: nop
EDD7: nop
EDD8: nop
EDD9: nop
EDDA: nop
EDDB: nop
EDDC: nop
EDDD: nop
EDDE: nop
EDDF: nop
EDE0: nop
EDE1: nop
EDE2: nop
EDE3: nop
EDE4: nop
EDE5: nop
EDE6: nop
EDE7: nop
EDE8: nop
EDE9: nop
EDEA: nop
EDEB: nop
EDEC: nop
EDED: nop
EDEE: nop
EDEF: nop
EDF0: nop
EDF1: nop
EDF2: nop
EDF3: nop
EDF4: nop
EDF5: nop
EDF6: nop
EDF7: nop
EDF8: nop
EDF9: nop
EDFA: nop
EDFB: nop
EDFC: nop
EDFD: nop
EDFE: nop
EDFF: nop
EE00: nop
EE01: nop
EE02: nop
EE03: nop
EE04: nop
EE05: nop
EE06: nop
EE07: nop
EE08: nop
EE09: nop
EE0A: nop
EE0B: nop
EE0C: nop
EE0D: nop
EE0E: nop
EE0F: nop
EE10: nop
EE11: nop
EE12: nop
EE13: nop
EE14: nop
EE15: nop
EE16: nop
EE17: nop
EE18: nop
EE19: nop
EE1A: nop
EE1B: nop
EE1C: nop
EE1D: nop
EE1E: nop
EE1F: nop
EE20: nop
EE21: nop
EE22: nop
EE23: nop
EE24: nop
EE25: nop
EE26: nop
EE27: nop
EE28: nop
EE29: nop
EE2A: nop
EE2B: nop
EE2C: nop
EE2D: nop
EE2E: nop
EE2F: nop
EE30: nop
EE31: nop
EE32: nop
EE33: nop
EE34: nop
EE35: nop
EE36: nop
EE37: nop
EE38: nop
EE39: nop
EE3A: nop
EE3B: nop
EE3C: nop
EE3D: nop
EE3E: nop
EE3F: nop
EE40: nop
EE41: nop
EE42: nop
EE43: nop
EE44: nop
EE45: nop
EE46: nop
EE47: nop
EE48: nop
EE49: nop
EE4A: nop
EE4B: nop
EE4C: nop
EE4D: nop
EE4E: nop
EE4F: nop
EE50: nop
EE51: nop
EE52: nop
EE53: nop
EE54: nop
EE55: nop
EE56: nop
EE57: nop
EE58: nop
EE59: nop
EE5A: nop
EE5B: nop
EE5C: nop
EE5D: nop
EE5E: nop
EE5F: nop
EE60: nop
EE61: nop
EE62: nop
EE63: nop
EE64: nop
EE65: nop
EE66: nop
EE67: nop
EE68: nop
EE69: nop
EE6A: nop
EE6B: nop
EE6C: nop
EE6D: nop
EE6E: nop
EE6F: nop
EE70: nop
EE71: nop
EE72: nop
EE73: nop
EE74: nop
EE75: nop
EE76: nop
EE77: nop
EE78: nop
EE79: nop
EE7A: nop
EE7B: nop
EE7C: nop
EE7D: nop
EE7E: nop
EE7F: nop
EE80: nop
EE81: nop
EE82: nop
EE83: nop
EE84: nop
EE85: nop
EE86: nop
EE87: nop
EE88: nop
EE89: nop
EE8A: nop
EE8B: nop
EE8C: nop
EE8D: nop
EE8E: nop
EE8F: nop
EE90: nop
EE91: nop
EE92: nop
EE93: nop
EE94: nop
EE95: nop
EE96: nop
EE97: nop
EE98: nop
EE99: nop
EE9A: nop
EE9B: nop
EE9C: nop
EE9D: nop
EE9E: nop
EE9F: nop
EEA0: nop
EEA1: nop
EEA2: nop
EEA3: nop
EEA4: nop
EEA5: nop
EEA6: nop
EEA7: nop
EEA8: nop
EEA9: nop
EEAA: nop
EEAB: nop
EEAC: nop
EEAD: nop
EEAE: nop
EEAF: nop
EEB0: nop
EEB1: nop
EEB2: nop
EEB3: nop
EEB4: nop
EEB5: nop
EEB6: nop
EEB7: nop
EEB8: nop
EEB9: nop
EEBA: nop
EEBB: nop
EEBC: nop
EEBD: nop
EEBE: nop
EEBF: nop
EEC0: nop
EEC1: nop
EEC2: nop
EEC3: nop
EEC4: nop
EEC5: nop
EEC6: nop
EEC7: nop
EEC8: nop
EEC9: nop
EECA: nop
EECB: nop
EECC: nop
EECD: nop
EECE: nop
EECF: nop
EED0: nop
EED1: nop
EED2: nop
EED3: nop
EED4: nop
EED5: nop
EED6: nop
EED7: nop
EED8: nop
EED9: nop
EEDA: nop
EEDB: nop
EEDC: nop
EEDD: nop
EEDE: nop
EEDF: nop
EEE0: nop
EEE1: nop
EEE2: nop
EEE3: nop
EEE4: nop
EEE5: nop
EEE6: nop
EEE7: nop
EEE8: nop
EEE9: nop
EEEA: nop
EEEB: nop
EEEC: nop
EEED: nop
EEEE: nop
EEEF: nop
EEF0: nop
EEF1: nop
EEF2: nop
EEF3: nop
EEF4: nop
EEF5: nop
EEF6: nop
EEF7: nop
EEF8: nop
EEF9: nop
EEFA: nop
EEFB: nop
EEFC: nop
EEFD: nop
EEFE: nop
EEFF: nop
EF00: nop
EF01: nop
EF02: nop
EF03: nop
EF04: nop
EF05: nop
EF06: nop
EF07: nop
EF08: nop
EF09: nop
EF0A: nop
EF0B: nop
EF0C: nop
EF0D: nop
EF0E: nop
EF0F: nop
EF10: nop
EF11: nop
EF12: nop
EF13: nop
EF14: nop
EF15: nop
EF16: nop
EF17: nop
EF18: nop
EF19: nop
EF1A: nop
EF1B: nop
EF1C: nop
EF1D: nop
EF1E: nop
EF1F: nop
EF20: nop
EF21: nop
EF22: nop
EF23: nop
EF24: nop
EF25: nop
EF26: nop
EF27: nop
EF28: nop
EF29: nop
EF2A: nop
EF2B: nop
EF2C: nop
EF2D: nop
EF2E: nop
EF2F: nop
EF30: nop
EF31: nop
EF32: nop
EF33: nop
EF34: nop
EF35: nop
EF36: nop
EF37: nop
EF38: nop
EF39: nop
EF3A: nop
EF3B: nop
EF3C: nop
EF3D: nop
EF3E: nop
EF3F: nop
EF40: nop
EF41: nop
EF42: nop
EF43: nop
EF44: nop
EF45: nop
EF46: nop
EF47: nop
EF48: nop
EF49: nop
EF4A: nop
EF4B: nop
EF4C: nop
EF4D: nop
EF4E: nop
EF4F: nop
EF50: nop
EF51: nop
EF52: nop
EF53: nop
EF54: nop
EF55: nop
EF56: nop
EF57: nop
EF58: nop
EF59: nop
EF5A: nop
EF5B: nop
EF5C: nop
EF5D: nop
EF5E: nop
EF5F: nop
EF60: nop
EF61: nop
EF62: nop
EF63: nop
EF64: nop
EF65: nop
EF66: nop
EF67: nop
EF68: nop
EF69: nop
EF6A: nop
EF6B: nop
EF6C: nop
EF6D: nop
EF6E: nop
EF6F: nop
EF70: nop
EF71: nop
EF72: nop
EF73: nop
EF74: nop
EF75: nop
EF76: nop
EF77: nop
EF78: nop
EF79: nop
EF7A: nop
EF7B: nop
EF7C: nop
EF7D: nop
EF7E: nop
EF7F: nop
EF80: nop
EF81: nop
EF82: nop
EF83: nop
EF84: nop
EF85: nop
EF86: nop
EF87: nop
EF88: nop
EF89: nop
EF8A: nop
EF8B: nop
EF8C: nop
EF8D: nop
EF8E: nop
EF8F: nop
EF90: nop
EF91: nop
EF92: nop
EF93: nop
EF94: nop
EF95: nop
EF96: nop
EF97: nop
EF98: nop
EF99: nop
EF9A: nop
EF9B: nop
EF9C: nop
EF9D: nop
EF9E: nop
EF9F: nop
EFA0: nop
EFA1: nop
EFA2: nop
EFA3: nop
EFA4: nop
EFA5: nop
EFA6: nop
EFA7: nop
EFA8: nop
EFA9: nop
EFAA: nop
EFAB: nop
EFAC: nop
EFAD: nop
EFAE: nop
EFAF: nop
EFB0: nop
EFB1: nop
EFB2: nop
EFB3: nop
EFB4: nop
EFB5: nop
EFB6: nop
EFB7: nop
EFB8: nop
EFB9: nop
EFBA: nop
EFBB: nop
EFBC: nop
EFBD: nop
EFBE: nop
EFBF: nop
EFC0: nop
EFC1: nop
EFC2: nop
EFC3: nop
EFC4: nop
EFC5: nop
EFC6: nop
EFC7: nop
EFC8: nop
EFC9: nop
EFCA: nop
EFCB: nop
EFCC: nop
EFCD: nop
EFCE: nop
EFCF: nop
EFD0: nop
EFD1: nop
EFD2: nop
EFD3: nop
EFD4: nop
EFD5: nop
EFD6: nop
EFD7: nop
EFD8: nop
EFD9: nop
EFDA: nop
EFDB: nop
EFDC: nop
EFDD: nop
EFDE: nop
EFDF: nop
EFE0: nop
EFE1: nop
EFE2: nop
EFE3: nop
EFE4: nop
EFE5: nop
EFE6: nop
EFE7: nop
EFE8: nop
EFE9: nop
EFEA: nop
EFEB: nop
EFEC: nop
EFED: nop
EFEE: nop
EFEF: nop
EFF0: nop
EFF1: nop
EFF2: nop
EFF3: nop
EFF4: nop
EFF5: nop
EFF6: nop
EFF7: nop
EFF8: nop
EFF9: nop
EFFA: nop
EFFB: nop
EFFC: nop
EFFD: nop
EFFE: nop
EFFF: nop
F000: nop
F001: nop
F002: nop
F003: nop
F004: nop
F005: nop
F006: nop
F007: nop
F008: nop
F009: nop
F00A: nop
F00B: nop
F00C: nop
F00D: nop
F00E: nop
F00F: nop
F010: nop
F011: nop
F012: nop
F013: nop
F014: nop
F015: nop
F016: nop
F017: nop
F018: nop
F019: nop
F01A: nop
F01B: nop
F01C: nop
F01D: nop
F01E: nop
F01F: nop
F020: nop
F021: nop
F022: nop
F023: nop
F024: nop
F025: nop
F026: nop
F027: nop
F028: nop
F029: nop
F02A: nop
F02B: nop
F02C: nop
F02D: nop
F02E: nop
F02F: nop
F030: nop
F031: nop
F032: nop
F033: nop
F034: nop
F035: nop
F036: nop
F037: nop
F038: nop
F039: nop
F03A: nop
F03B: nop
F03C: nop
F03D: nop
F03E: nop
F03F: nop
F040: nop
F041: nop
F042: nop
F043: nop
F044: nop
F045: nop
F046: nop
F047: nop
F048: nop
F049: nop
F04A: nop
F04B: nop
F04C: nop
F04D: nop
F04E: nop
F04F: nop
F050: nop
F051: nop
F052: nop
F053: nop
F054: nop
F055: nop
F056: nop
F057: nop
F058: nop
F059: nop
F05A: nop
F05B: nop
F05C: nop
F05D: nop
F05E: nop
F05F: nop
F060: nop
F061: nop
F062: nop
F063: nop
F064: nop
F065: nop
F066: nop
F067: nop
F068: nop
F069: nop
F06A: nop
F06B: nop
F06C: nop
F06D: nop
F06E: nop
F06F: nop
F070: nop
F071: nop
F072: nop
F073: nop
F074: nop
F075: nop
F076: nop
F077: nop
F078: nop
F079: nop
F07A: nop
F07B: nop
F07C: nop
F07D: nop
F07E: nop
F07F: nop
F080: nop
F081: nop
F082: nop
F083: nop
F084: nop
F085: nop
F086: nop
F087: nop
F088: nop
F089: nop
F08A: nop
F08B: nop
F08C: nop
F08D: nop
F08E: nop
F08F: nop
F090: nop
F091: nop
F092: nop
F093: nop
F094: nop
F095: nop
F096: nop
F097: nop
F098: nop
F099: nop
F09A: nop
F09B: nop
F09C: nop
F09D: nop
F09E: nop
F09F: nop
F0A0: nop
F0A1: nop
F0A2: nop
F0A3: nop
F0A4: nop
F0A5: nop
F0A6: nop
F0A7: nop
F0A8: nop
F0A9: nop
F0AA: nop
F0AB: nop
F0AC: nop
F0AD: nop
F0AE: nop
F0AF: nop
F0B0: nop
F0B1: nop
F0B2: nop
F0B3: nop
F0B4: nop
F0B5: nop
F0B6: nop
F0B7: nop
F0B8: nop
F0B9: nop
F0BA: nop
F0BB: nop
F0BC: nop
F0BD: nop
F0BE: nop
F0BF: nop
F0C0: nop
F0C1: nop
F0C2: nop
F0C3: nop
F0C4: nop
F0C5: nop
F0C6: nop
F0C7: nop
F0C8: nop
F0C9: nop
F0CA: nop
F0CB: nop
F0CC: nop
F0CD: nop
F0CE: nop
F0CF: nop
F0D0: nop
F0D1: nop
F0D2: nop
F0D3: nop
F0D4: nop
F0D5: nop
F0D6: nop
F0D7: nop
F0D8: nop
F0D9: nop
F0DA: nop
F0DB: nop
F0DC: nop
F0DD: nop
F0DE: nop
F0DF: nop
F0E0: nop
F0E1: nop
F0E2: nop
F0E3: nop
F0E4: nop
F0E5: nop
F0E6: nop
F0E7: nop
F0E8: nop
F0E9: nop
F0EA: nop
F0EB: nop
F0EC: nop
F0ED: nop
F0EE: nop
F0EF: nop
F0F0: nop
F0F1: nop
F0F2: nop
F0F3: nop
F0F4: nop
F0F5: nop
F0F6: nop
F0F7: nop
F0F8: nop
F0F9: nop
F0FA: nop
F0FB: nop
F0FC: nop
F0FD: nop
F0FE: nop
F0FF: nop
F100: nop
F101: nop
F102: nop
F103: nop
F104: nop
F105: nop
F106: nop
F107: nop
F108: nop
F109: nop
F10A: nop
F10B: nop
F10C: nop
F10D: nop
F10E: nop
F10F: nop
F110: nop
F111: nop
F112: nop
F113: nop
F114: nop
F115: nop
F116: nop
F117: nop
F118: nop
F119: nop
F11A: nop
F11B: nop
F11C: nop
F11D: nop
F11E: nop
F11F: nop
F120: nop
F121: nop
F122: nop
F123: nop
F124: nop
F125: nop
F126: nop
F127: nop
F128: nop
F129: nop
F12A: nop
F12B: nop
F12C: nop
F12D: nop
F12E: nop
F12F: nop
F130: nop
F131: nop
F132: nop
F133: nop
F134: nop
F135: nop
F136: nop
F137: nop
F138: nop
F139: nop
F13A: nop
F13B: nop
F13C: nop
F13D: nop
F13E: nop
F13F: nop
F140: nop
F141: nop
F142: nop
F143: nop
F144: nop
F145: nop
F146: nop
F147: nop
F148: nop
F149: nop
F14A: nop
F14B: nop
F14C: nop
F14D: nop
F14E: nop
F14F: nop
F150: nop
F151: nop
F152: nop
F153: nop
F154: nop
F155: nop
F156: nop
F157: nop
F158: nop
F159: nop
F15A: nop
F15B: nop
F15C: nop
F15D: nop
F15E: nop
F15F: nop
F160: nop
F161: nop
F162: nop
F163: nop
F164: nop
F165: nop
F166: nop
F167: nop
F168: nop
F169: nop
F16A: nop
F16B: nop
F16C: nop
F16D: nop
F16E: nop
F16F: nop
F170: nop
F171: nop
F172: nop
F173: nop
F174: nop
F175: nop
F176: nop
F177: nop
F178: nop
F179: nop
F17A: nop
F17B: nop
F17C: nop
F17D: nop
F17E: nop
F17F: nop
F180: nop
F181: nop
F182: nop
F183: nop
F184: nop
F185: nop
F186: nop
F187: nop
F188: nop
F189: nop
F18A: nop
F18B: nop
F18C: nop
F18D: nop
F18E: nop
F18F: nop
F190: nop
F191: nop
F192: nop
F193: nop
F194: nop
F195: nop
F196: nop
F197: nop
F198: nop
F199: nop
F19A: nop
F19B: nop
F19C: nop
F19D: nop
F19E: nop
F19F: nop
F1A0: nop
F1A1: nop
F1A2: nop
F1A3: nop
F1A4: nop
F1A5: nop
F1A6: nop
F1A7: nop
F1A8: nop
F1A9: nop
F1AA: nop
F1AB: nop
F1AC: nop
F1AD: nop
F1AE: nop
F1AF: nop
F1B0: nop
F1B1: nop
F1B2: nop
F1B3: nop
F1B4: nop
F1B5: nop
F1B6: nop
F1B7: nop
F1B8: nop
F1B9: nop
F1BA: nop
F1BB: nop
F1BC: nop
F1BD: nop
F1BE: nop
F1BF: nop
F1C0: nop
F1C1: nop
F1C2: nop
F1C3: nop
F1C4: nop
F1C5: nop
F1C6: nop
F1C7: nop
F1C8: nop
F1C9: nop
F1CA: nop
F1CB: nop
F1CC: nop
F1CD: nop
F1CE: nop
F1CF: nop
F1D0: nop
F1D1: nop
F1D2: nop
F1D3: nop
F1D4: nop
F1D5: nop
F1D6: nop
F1D7: nop
F1D8: nop
F1D9: nop
F1DA: nop
F1DB: nop
F1DC: nop
F1DD: nop
F1DE: nop
F1DF: nop
F1E0: nop
F1E1: nop
F1E2: nop
F1E3: nop
F1E4: nop
F1E5: nop
F1E6: nop
F1E7: nop
F1E8: nop
F1E9: nop
F1EA: nop
F1EB: nop
F1EC: nop
F1ED: nop
F1EE: nop
F1EF: nop
F1F0: nop
F1F1: nop
F1F2: nop
F1F3: nop
F1F4: nop
F1F5: nop
F1F6: nop
F1F7: nop
F1F8: nop
F1F9: nop
F1FA: nop
F1FB: nop
F1FC: nop
F1FD: nop
F1FE: nop
F1FF: nop
F200: nop
F201: nop
F202: nop
F203: nop
F204: nop
F205: nop
F206: nop
F207: nop
F208: nop
F209: nop
F20A: nop
F20B: nop
F20C: nop
F20D: nop
F20E: nop
F20F: nop
F210: nop
F211: nop
F212: nop
F213: nop
F214: nop
F215: nop
F216: nop
F217: nop
F218: nop
F219: nop
F21A: nop
F21B: nop
F21C: nop
F21D: nop
F21E: nop
F21F: nop
F220: nop
F221: nop
F222: nop
F223: nop
F224: nop
F225: nop
F226: nop
F227: nop
F228: nop
F229: nop
F22A: nop
F22B: nop
F22C: nop
F22D: nop
F22E: nop
F22F: nop
F230: nop
F231: nop
F232: nop
F233: nop
F234: nop
F235: nop
F236: nop
F237: nop
F238: nop
F239: nop
F23A: nop
F23B: nop
F23C: nop
F23D: nop
F23E: nop
F23F: nop
F240: nop
F241: nop
F242: nop
F243: nop
F244: nop
F245: nop
F246: nop
F247: nop
F248: nop
F249: nop
F24A: nop
F24B: nop
F24C: nop
F24D: nop
F24E: nop
F24F: nop
F250: nop
F251: nop
F252: nop
F253: nop
F254: nop
F255: nop
F256: nop
F257: nop
F258: nop
F259: nop
F25A: nop
F25B: nop
F25C: nop
F25D: nop
F25E: nop
F25F: nop
F260: nop
F261: nop
F262: nop
F263: nop
F264: nop
F265: nop
F266: nop
F267: nop
F268: nop
F269: nop
F26A: nop
F26B: nop
F26C: nop
F26D: nop
F26E: nop
F26F: nop
F270: nop
F271: nop
F272: nop
F273: nop
F274: nop
F275: nop
F276: nop
F277: nop
F278: nop
F279: nop
F27A: nop
F27B: nop
F27C: nop
F27D: nop
F27E: nop
F27F: nop
F280: nop
F281: nop
F282: nop
F283: nop
F284: nop
F285: nop
F286: nop
F287: nop
F288: nop
F289: nop
F28A: nop
F28B: nop
F28C: nop
F28D: nop
F28E: nop
F28F: nop
F290: nop
F291: nop
F292: nop
F293: nop
F294: nop
F295: nop
F296: nop
F297: nop
F298: nop
F299: nop
F29A: nop
F29B: nop
F29C: nop
F29D: nop
F29E: nop
F29F: nop
F2A0: nop
F2A1: nop
F2A2: nop
F2A3: nop
F2A4: nop
F2A5: nop
F2A6: nop
F2A7: nop
F2A8: nop
F2A9: nop
F2AA: nop
F2AB: nop
F2AC: nop
F2AD: nop
F2AE: nop
F2AF: nop
F2B0: nop
F2B1: nop
F2B2: nop
F2B3: nop
F2B4: nop
F2B5: nop
F2B6: nop
F2B7: nop
F2B8: nop
F2B9: nop
F2BA: nop
F2BB: nop
F2BC: nop
F2BD: nop
F2BE: nop
F2BF: nop
F2C0: nop
F2C1: nop
F2C2: nop
F2C3: nop
F2C4: nop
F2C5: nop
F2C6: nop
F2C7: nop
F2C8: nop
F2C9: nop
F2CA: nop
F2CB: nop
F2CC: nop
F2CD: nop
F2CE: nop
F2CF: nop
F2D0: nop
F2D1: nop
F2D2: nop
F2D3: nop
F2D4: nop
F2D5: nop
F2D6: nop
F2D7: nop
F2D8: nop
F2D9: nop
F2DA: nop
F2DB: nop
F2DC: nop
F2DD: nop
F2DE: nop
F2DF: nop
F2E0: nop
F2E1: nop
F2E2: nop
F2E3: nop
F2E4: nop
F2E5: nop
F2E6: nop
F2E7: nop
F2E8: nop
F2E9: nop
F2EA: nop
F2EB: nop
F2EC: nop
F2ED: nop
F2EE: nop
F2EF: nop
F2F0: nop
F2F1: nop
F2F2: nop
F2F3: nop
F2F4: nop
F2F5: nop
F2F6: nop
F2F7: nop
F2F8: nop
F2F9: nop
F2FA: nop
F2FB: nop
F2FC: nop
F2FD: nop
F2FE: nop
F2FF: nop
F300: nop
F301: nop
F302: nop
F303: nop
F304: nop
F305: nop
F306: nop
F307: nop
F308: nop
F309: nop
F30A: nop
F30B: nop
F30C: nop
F30D: nop
F30E: nop
F30F: nop
F310: nop
F311: nop
F312: nop
F313: nop
F314: nop
F315: nop
F316: nop
F317: nop
F318: nop
F319: nop
F31A: nop
F31B: nop
F31C: nop
F31D: nop
F31E: nop
F31F: nop
F320: nop
F321: nop
F322: nop
F323: nop
F324: nop
F325: nop
F326: nop
F327: nop
F328: nop
F329: nop
F32A: nop
F32B: nop
F32C: nop
F32D: nop
F32E: nop
F32F: nop
F330: nop
F331: nop
F332: nop
F333: nop
F334: nop
F335: nop
F336: nop
F337: nop
F338: nop
F339: nop
F33A: nop
F33B: nop
F33C: nop
F33D: nop
F33E: nop
F33F: nop
F340: nop
F341: nop
F342: nop
F343: nop
F344: nop
F345: nop
F346: nop
F347: nop
F348: nop
F349: nop
F34A: nop
F34B: nop
F34C: nop
F34D: nop
F34E: nop
F34F: nop
F350: nop
F351: nop
F352: nop
F353: nop
F354: nop
F355: nop
F356: nop
F357: nop
F358: nop
F359: nop
F35A: nop
F35B: nop
F35C: nop
F35D: nop
F35E: nop
F35F: nop
F360: nop
F361: nop
F362: nop
F363: nop
F364: nop
F365: nop
F366: nop
F367: nop
F368: nop
F369: nop
F36A: nop
F36B: nop
F36C: nop
F36D: nop
F36E: nop
F36F: nop
F370: nop
F371: nop
F372: nop
F373: nop
F374: nop
F375: nop
F376: nop
F377: nop
F378: nop
F379: nop
F37A: nop
F37B: nop
F37C: nop
F37D: nop
F37E: nop
F37F: nop
F380: nop
F381: nop
F382: nop
F383: nop
F384: nop
F385: nop
F386: nop
F387: nop
F388: nop
F389: nop
F38A: nop
F38B: nop
F38C: nop
F38D: nop
F38E: nop
F38F: nop
F390: nop
F391: nop
F392: nop
F393: nop
F394: nop
F395: nop
F396: nop
F397: nop
F398: nop
F399: nop
F39A: nop
F39B: nop
F39C: nop
F39D: nop
F39E: nop
F39F: nop
F3A0: nop
F3A1: nop
F3A2: nop
F3A3: nop
F3A4: nop
F3A5: nop
F3A6: nop
F3A7: nop
F3A8: nop
F3A9: nop
F3AA: nop
F3AB: nop
F3AC: nop
F3AD: nop
F3AE: nop
F3AF: nop
F3B0: nop
F3B1: nop
F3B2: nop
F3B3: nop
F3B4: nop
F3B5: nop
F3B6: nop
F3B7: nop
F3B8: nop
F3B9: nop
F3BA: nop
F3BB: nop
F3BC: nop
F3BD: nop
F3BE: nop
F3BF: nop
F3C0: nop
F3C1: nop
F3C2: nop
F3C3: nop
F3C4: nop
F3C5: nop
F3C6: nop
F3C7: nop
F3C8: nop
F3C9: nop
F3CA: nop
F3CB: nop
F3CC: nop
F3CD: nop
F3CE: nop
F3CF: nop
F3D0: nop
F3D1: nop
F3D2: nop
F3D3: nop
F3D4: nop
F3D5: nop
F3D6: nop
F3D7: nop
F3D8: nop
F3D9: nop
F3DA: nop
F3DB: nop
F3DC: nop
F3DD: nop
F3DE: nop
F3DF: nop
F3E0: nop
F3E1: nop
F3E2: nop
F3E3: nop
F3E4: nop
F3E5: nop
F3E6: nop
F3E7: nop
F3E8: nop
F3E9: nop
F3EA: nop
F3EB: nop
F3EC: nop
F3ED: nop
F3EE: nop
F3EF: nop
F3F0: nop
F3F1: nop
F3F2: nop
F3F3: nop
F3F4: nop
F3F5: nop
F3F6: nop
F3F7: nop
F3F8: nop
F3F9: nop
F3FA: nop
F3FB: nop
F3FC: nop
F3FD: nop
F3FE: nop
F3FF: nop
F400: nop
F401: nop
F402: nop
F403: nop
F404: nop
F405: nop
F406: nop
F407: nop
F408: nop
F409: nop
F40A: nop
F40B: nop
F40C: nop
F40D: nop
F40E: nop
F40F: nop
F410: nop
F411: nop
F412: nop
F413: nop
F414: nop
F415: nop
F416: nop
F417: nop
F418: nop
F419: nop
F41A: nop
F41B: nop
F41C: nop
F41D: nop
F41E: nop
F41F: nop
F420: nop
F421: nop
F422: nop
F423: nop
F424: nop
F425: nop
F426: nop
F427: nop
F428: nop
F429: nop
F42A: nop
F42B: nop
F42C: nop
F42D: nop
F42E: nop
F42F: nop
F430: nop
F431: nop
F432: nop
F433: nop
F434: nop
F435: nop
F436: nop
F437: nop
F438: nop
F439: nop
F43A: nop
F43B: nop
F43C: nop
F43D: nop
F43E: nop
F43F: nop
F440: nop
F441: nop
F442: nop
F443: nop
F444: nop
F445: nop
F446: nop
F447: nop
F448: nop
F449: nop
F44A: nop
F44B: nop
F44C: nop
F44D: nop
F44E: nop
F44F: nop
F450: nop
F451: nop
F452: nop
F453: nop
F454: nop
F455: nop
F456: nop
F457: nop
F458: nop
F459: nop
F45A: nop
F45B: nop
F45C: nop
F45D: nop
F45E: nop
F45F: nop
F460: nop
F461: nop
F462: nop
F463: nop
F464: nop
F465: nop
F466: nop
F467: nop
F468: nop
F469: nop
F46A: nop
F46B: nop
F46C: nop
F46D: nop
F46E: nop
F46F: nop
F470: nop
F471: nop
F472: nop
F473: nop
F474: nop
F475: nop
F476: nop
F477: nop
F478: nop
F479: nop
F47A: nop
F47B: nop
F47C: nop
F47D: nop
F47E: nop
F47F: nop
F480: nop
F481: nop
F482: nop
F483: nop
F484: nop
F485: nop
F486: nop
F487: nop
F488: nop
F489: nop
F48A: nop
F48B: nop
F48C: nop
F48D: nop
F48E: nop
F48F: nop
F490: nop
F491: nop
F492: nop
F493: nop
F494: nop
F495: nop
F496: nop
F497: nop
F498: nop
F499: nop
F49A: nop
F49B: nop
F49C: nop
F49D: nop
F49E: nop
F49F: nop
F4A0: nop
F4A1: nop
F4A2: nop
F4A3: nop
F4A4: nop
F4A5: nop
F4A6: nop
F4A7: nop
F4A8: nop
F4A9: nop
F4AA: nop
F4AB: nop
F4AC: nop
F4AD: nop
F4AE: nop
F4AF: nop
F4B0: nop
F4B1: nop
F4B2: nop
F4B3: nop
F4B4: nop
F4B5: nop
F4B6: nop
F4B7: nop
F4B8: nop
F4B9: nop
F4BA: nop
F4BB: nop
F4BC: nop
F4BD: nop
F4BE: nop
F4BF: nop
F4C0: nop
F4C1: nop
F4C2: nop
F4C3: nop
F4C4: nop
F4C5: nop
F4C6: nop
F4C7: nop
F4C8: nop
F4C9: nop
F4CA: nop
F4CB: nop
F4CC: nop
F4CD: nop
F4CE: nop
F4CF: nop
F4D0: nop
F4D1: nop
F4D2: nop
F4D3: nop
F4D4: nop
F4D5: nop
F4D6: nop
F4D7: nop
F4D8: nop
F4D9: nop
F4DA: nop
F4DB: nop
F4DC: nop
F4DD: nop
F4DE: nop
F4DF: nop
F4E0: nop
F4E1: nop
F4E2: nop
F4E3: nop
F4E4: nop
F4E5: nop
F4E6: nop
F4E7: nop
F4E8: nop
F4E9: nop
F4EA: nop
F4EB: nop
F4EC: nop
F4ED: nop
F4EE: nop
F4EF: nop
F4F0: nop
F4F1: nop
F4F2: nop
F4F3: nop
F4F4: nop
F4F5: nop
F4F6: nop
F4F7: nop
F4F8: nop
F4F9: nop
F4FA: nop
F4FB: nop
F4FC: nop
F4FD: nop
F4FE: nop
F4FF: nop
F500: nop
F501: nop
F502: nop
F503: nop
F504: nop
F505: nop
F506: nop
F507: nop
F508: nop
F509: nop
F50A: nop
F50B: nop
F50C: nop
F50D: nop
F50E: nop
F50F: nop
F510: nop
F511: nop
F512: nop
F513: nop
F514: nop
F515: nop
F516: nop
F517: nop
F518: nop
F519: nop
F51A: nop
F51B: nop
F51C: nop
F51D: nop
F51E: nop
F51F: nop
F520: nop
F521: nop
F522: nop
F523: nop
F524: nop
F525: nop
F526: nop
F527: nop
F528: nop
F529: nop
F52A: nop
F52B: nop
F52C: nop
F52D: nop
F52E: nop
F52F: nop
F530: nop
F531: nop
F532: nop
F533: nop
F534: nop
F535: nop
F536: nop
F537: nop
F538: nop
F539: nop
F53A: nop
F53B: nop
F53C: nop
F53D: nop
F53E: nop
F53F: nop
F540: nop
F541: nop
F542: nop
F543: nop
F544: nop
F545: nop
F546: nop
F547: nop
F548: nop
F549: nop
F54A: nop
F54B: nop
F54C: nop
F54D: nop
F54E: nop
F54F: nop
F550: nop
F551: nop
F552: nop
F553: nop
F554: nop
F555: nop
F556: nop
F557: nop
F558: nop
F559: nop
F55A: nop
F55B: nop
F55C: nop
F55D: nop
F55E: nop
F55F: nop
F560: nop
F561: nop
F562: nop
F563: nop
F564: nop
F565: nop
F566: nop
F567: nop
F568: nop
F569: nop
F56A: nop
F56B: nop
F56C: nop
F56D: nop
F56E: nop
F56F: nop
F570: nop
F571: nop
F572: nop
F573: nop
F574: nop
F575: nop
F576: nop
F577: nop
F578: nop
F579: nop
F57A: nop
F57B: nop
F57C: nop
F57D: nop
F57E: nop
F57F: nop
F580: nop
F581: nop
F582: nop
F583: nop
F584: nop
F585: nop
F586: nop
F587: nop
F588: nop
F589: nop
F58A: nop
F58B: nop
F58C: nop
F58D: nop
F58E: nop
F58F: nop
F590: nop
F591: nop
F592: nop
F593: nop
F594: nop
F595: nop
F596: nop
F597: nop
F598: nop
F599: nop
F59A: nop
F59B: nop
F59C: nop
F59D: nop
F59E: nop
F59F: nop
F5A0: nop
F5A1: nop
F5A2: nop
F5A3: nop
F5A4: nop
F5A5: nop
F5A6: nop
F5A7: nop
F5A8: nop
F5A9: nop
F5AA: nop
F5AB: nop
F5AC: nop
F5AD: nop
F5AE: nop
F5AF: nop
F5B0: nop
F5B1: nop
F5B2: nop
F5B3: nop
F5B4: nop
F5B5: nop
F5B6: nop
F5B7: nop
F5B8: nop
F5B9: nop
F5BA: nop
F5BB: nop
F5BC: nop
F5BD: nop
F5BE: nop
F5BF: nop
F5C0: nop
F5C1: nop
F5C2: nop
F5C3: nop
F5C4: nop
F5C5: nop
F5C6: nop
F5C7: nop
F5C8: nop
F5C9: nop
F5CA: nop
F5CB: nop
F5CC: nop
F5CD: nop
F5CE: nop
F5CF: nop
F5D0: nop
F5D1: nop
F5D2: nop
F5D3: nop
F5D4: nop
F5D5: nop
F5D6: nop
F5D7: nop
F5D8: nop
F5D9: nop
F5DA: nop
F5DB: nop
F5DC: nop
F5DD: nop
F5DE: nop
F5DF: nop
F5E0: nop
F5E1: nop
F5E2: nop
F5E3: nop
F5E4: nop
F5E5: nop
F5E6: nop
F5E7: nop
F5E8: nop
F5E9: nop
F5EA: nop
F5EB: nop
F5EC: nop
F5ED: nop
F5EE: nop
F5EF: nop
F5F0: nop
F5F1: nop
F5F2: nop
F5F3: nop
F5F4: nop
F5F5: nop
F5F6: nop
F5F7: nop
F5F8: nop
F5F9: nop
F5FA: nop
F5FB: nop
F5FC: nop
F5FD: nop
F5FE: nop
F5FF: nop
F600: nop
F601: nop
F602: nop
F603: nop
F604: nop
F605: nop
F606: nop
F607: nop
F608: nop
F609: nop
F60A: nop
F60B: nop
F60C: nop
F60D: nop
F60E: nop
F60F: nop
F610: nop
F611: nop
F612: nop
F613: nop
F614: nop
F615: nop
F616: nop
F617: nop
F618: nop
F619: nop
F61A: nop
F61B: nop
F61C: nop
F61D: nop
F61E: nop
F61F: nop
F620: nop
F621: nop
F622: nop
F623: nop
F624: nop
F625: nop
F626: nop
F627: nop
F628: nop
F629: nop
F62A: nop
F62B: nop
F62C: nop
F62D: nop
F62E: nop
F62F: nop
F630: nop
F631: nop
F632: nop
F633: nop
F634: nop
F635: nop
F636: nop
F637: nop
F638: nop
F639: nop
F63A: nop
F63B: nop
F63C: nop
F63D: nop
F63E: nop
F63F: nop
F640: nop
F641: nop
F642: nop
F643: nop
F644: nop
F645: nop
F646: nop
F647: nop
F648: nop
F649: nop
F64A: nop
F64B: nop
F64C: nop
F64D: nop
F64E: nop
F64F: nop
F650: nop
F651: nop
F652: nop
F653: nop
F654: nop
F655: nop
F656: nop
F657: nop
F658: nop
F659: nop
F65A: nop
F65B: nop
F65C: nop
F65D: nop
F65E: nop
F65F: nop
F660: nop
F661: nop
F662: nop
F663: nop
F664: nop
F665: nop
F666: nop
F667: nop
F668: nop
F669: nop
F66A: nop
F66B: nop
F66C: nop
F66D: nop
F66E: nop
F66F: nop
F670: nop
F671: nop
F672: nop
F673: nop
F674: nop
F675: nop
F676: nop
F677: nop
F678: nop
F679: nop
F67A: nop
F67B: nop
F67C: nop
F67D: nop
F67E: nop
F67F: nop
F680: nop
F681: nop
F682: nop
F683: nop
F684: nop
F685: nop
F686: nop
F687: nop
F688: nop
F689: nop
F68A: nop
F68B: nop
F68C: nop
F68D: nop
F68E: nop
F68F: nop
F690: nop
F691: nop
F692: nop
F693: nop
F694: nop
F695: nop
F696: nop
F697: nop
F698: nop
F699: nop
F69A: nop
F69B: nop
F69C: nop
F69D: nop
F69E: nop
F69F: nop
F6A0: nop
F6A1: nop
F6A2: nop
F6A3: nop
F6A4: nop
F6A5: nop
F6A6: nop
F6A7: nop
F6A8: nop
F6A9: nop
F6AA: nop
F6AB: nop
F6AC: nop
F6AD: nop
F6AE: nop
F6AF: nop
F6B0: nop
F6B1: nop
F6B2: nop
F6B3: nop
F6B4: nop
F6B5: nop
F6B6: nop
F6B7: nop
F6B8: nop
F6B9: nop
F6BA: nop
F6BB: nop
F6BC: nop
F6BD: nop
F6BE: nop
F6BF: nop
F6C0: nop
F6C1: nop
F6C2: nop
F6C3: nop
F6C4: nop
F6C5: nop
F6C6: nop
F6C7: nop
F6C8: nop
F6C9: nop
F6CA: nop
F6CB: nop
F6CC: nop
F6CD: nop
F6CE: nop
F6CF: nop
F6D0: nop
F6D1: nop
F6D2: nop
F6D3: nop
F6D4: nop
F6D5: nop
F6D6: nop
F6D7: nop
F6D8: nop
F6D9: nop
F6DA: nop
F6DB: nop
F6DC: nop
F6DD: nop
F6DE: nop
F6DF: nop
F6E0: nop
F6E1: nop
F6E2: nop
F6E3: nop
F6E4: nop
F6E5: nop
F6E6: nop
F6E7: nop
F6E8: nop
F6E9: nop
F6EA: nop
F6EB: nop
F6EC: nop
F6ED: nop
F6EE: nop
F6EF: nop
F6F0: nop
F6F1: nop
F6F2: nop
F6F3: nop
F6F4: nop
F6F5: nop
F6F6: nop
F6F7: nop
F6F8: nop
F6F9: nop
F6FA: nop
F6FB: nop
F6FC: nop
F6FD: nop
F6FE: nop
F6FF: nop
F700: nop
F701: nop
F702: nop
F703: nop
F704: nop
F705: nop
F706: nop
F707: nop
F708: nop
F709: nop
F70A: nop
F70B: nop
F70C: nop
F70D: nop
F70E: nop
F70F: nop
F710: nop
F711: nop
F712: nop
F713: nop
F714: nop
F715: nop
F716: nop
F717: nop
F718: nop
F719: nop
F71A: nop
F71B: nop
F71C: nop
F71D: nop
F71E: nop
F71F: nop
F720: nop
F721: nop
F722: nop
F723: nop
F724: nop
F725: nop
F726: nop
F727: nop
F728: nop
F729: nop
F72A: nop
F72B: nop
F72C: nop
F72D: nop
F72E: nop
F72F: nop
F730: nop
F731: nop
F732: nop
F733: nop
F734: nop
F735: nop
F736: nop
F737: nop
F738: nop
F739: nop
F73A: nop
F73B: nop
F73C: nop
F73D: nop
F73E: nop
F73F: nop
F740: nop
F741: nop
F742: nop
F743: nop
F744: nop
F745: nop
F746: nop
F747: nop
F748: nop
F749: nop
F74A: nop
F74B: nop
F74C: nop
F74D: nop
F74E: nop
F74F: nop
F750: nop
F751: nop
F752: nop
F753: nop
F754: nop
F755: nop
F756: nop
F757: nop
F758: nop
F759: nop
F75A: nop
F75B: nop
F75C: nop
F75D: nop
F75E: nop
F75F: nop
F760: nop
F761: nop
F762: nop
F763: nop
F764: nop
F765: nop
F766: nop
F767: nop
F768: nop
F769: nop
F76A: nop
F76B: nop
F76C: nop
F76D: nop
F76E: nop
F76F: nop
F770: nop
F771: nop
F772: nop
F773: nop
F774: nop
F775: nop
F776: nop
F777: nop
F778: nop
F779: nop
F77A: nop
F77B: nop
F77C: nop
F77D: nop
F77E: nop
F77F: nop
F780: nop
F781: nop
F782: nop
F783: nop
F784: nop
F785: nop
F786: nop
F787: nop
F788: nop
F789: nop
F78A: nop
F78B: nop
F78C: nop
F78D: nop
F78E: nop
F78F: nop
F790: nop
F791: nop
F792: nop
F793: nop
F794: nop
F795: nop
F796: nop
F797: nop
F798: nop
F799: nop
F79A: nop
F79B: nop
F79C: nop
F79D: nop
F79E: nop
F79F: nop
F7A0: nop
F7A1: nop
F7A2: nop
F7A3: nop
F7A4: nop
F7A5: nop
F7A6: nop
F7A7: nop
F7A8: nop
F7A9: nop
F7AA: nop
F7AB: nop
F7AC: nop
F7AD: nop
F7AE: nop
F7AF: nop
F7B0: nop
F7B1: nop
F7B2: nop
F7B3: nop
F7B4: nop
F7B5: nop
F7B6: nop
F7B7: nop
F7B8: nop
F7B9: nop
F7BA: nop
F7BB: nop
F7BC: nop
F7BD: nop
F7BE: nop
F7BF: nop
F7C0: nop
F7C1: nop
F7C2: nop
F7C3: nop
F7C4: nop
F7C5: nop
F7C6: nop
F7C7: nop
F7C8: nop
F7C9: nop
F7CA: nop
F7CB: nop
F7CC: nop
F7CD: nop
F7CE: nop
F7CF: nop
F7D0: nop
F7D1: nop
F7D2: nop
F7D3: nop
F7D4: nop
F7D5: nop
F7D6: nop
F7D7: nop
F7D8: nop
F7D9: nop
F7DA: nop
F7DB: nop
F7DC: nop
F7DD: nop
F7DE: nop
F7DF: nop
F7E0: nop
F7E1: nop
F7E2: nop
F7E3: nop
F7E4: nop
F7E5: nop
F7E6: nop
F7E7: nop
F7E8: nop
F7E9: nop
F7EA: nop
F7EB: nop
F7EC: nop
F7ED: nop
F7EE: nop
F7EF: nop
F7F0: nop
F7F1: nop
F7F2: nop
F7F3: nop
F7F4: nop
F7F5: nop
F7F6: nop
F7F7: nop
F7F8: nop
F7F9: nop
F7FA: nop
F7FB: nop
F7FC: nop
F7FD: nop
F7FE: nop
F7FF: nop
F800: nop
F801: nop
F802: nop
F803: nop
F804: nop
F805: nop
F806: nop
F807: nop
F808: nop
F809: nop
F80A: nop
F80B: nop
F80C: nop
F80D: nop
F80E: nop
F80F: nop
F810: nop
F811: nop
F812: nop
F813: nop
F814: nop
F815: nop
F816: nop
F817: nop
F818: nop
F819: nop
F81A: nop
F81B: nop
F81C: nop
F81D: nop
F81E: nop
F81F: nop
F820: nop
F821: nop
F822: nop
F823: nop
F824: nop
F825: nop
F826: nop
F827: nop
F828: nop
F829: nop
F82A: nop
F82B: nop
F82C: nop
F82D: nop
F82E: nop
F82F: nop
F830: nop
F831: nop
F832: nop
F833: nop
F834: nop
F835: nop
F836: nop
F837: nop
F838: nop
F839: nop
F83A: nop
F83B: nop
F83C: nop
F83D: nop
F83E: nop
F83F: nop
F840: nop
F841: nop
F842: nop
F843: nop
F844: nop
F845: nop
F846: nop
F847: nop
F848: nop
F849: nop
F84A: nop
F84B: nop
F84C: nop
F84D: nop
F84E: nop
F84F: nop
F850: nop
F851: nop
F852: nop
F853: nop
F854: nop
F855: nop
F856: nop
F857: nop
F858: nop
F859: nop
F85A: nop
F85B: nop
F85C: nop
F85D: nop
F85E: nop
F85F: nop
F860: nop
F861: nop
F862: nop
F863: nop
F864: nop
F865: nop
F866: nop
F867: nop
F868: nop
F869: nop
F86A: nop
F86B: nop
F86C: nop
F86D: nop
F86E: nop
F86F: nop
F870: nop
F871: nop
F872: nop
F873: nop
F874: nop
F875: nop
F876: nop
F877: nop
F878: nop
F879: nop
F87A: nop
F87B: nop
F87C: nop
F87D: nop
F87E: nop
F87F: nop
F880: nop
F881: nop
F882: nop
F883: nop
F884: nop
F885: nop
F886: nop
F887: nop
F888: nop
F889: nop
F88A: nop
F88B: nop
F88C: nop
F88D: nop
F88E: nop
F88F: nop
F890: nop
F891: nop
F892: nop
F893: nop
F894: nop
F895: nop
F896: nop
F897: nop
F898: nop
F899: nop
F89A: nop
F89B: nop
F89C: nop
F89D: nop
F89E: nop
F89F: nop
F8A0: nop
F8A1: nop
F8A2: nop
F8A3: nop
F8A4: nop
F8A5: nop
F8A6: nop
F8A7: nop
F8A8: nop
F8A9: nop
F8AA: nop
F8AB: nop
F8AC: nop
F8AD: nop
F8AE: nop
F8AF: nop
F8B0: nop
F8B1: nop
F8B2: nop
F8B3: nop
F8B4: nop
F8B5: nop
F8B6: nop
F8B7: nop
F8B8: nop
F8B9: nop
F8BA: nop
F8BB: nop
F8BC: nop
F8BD: nop
F8BE: nop
F8BF: nop
F8C0: nop
F8C1: nop
F8C2: nop
F8C3: nop
F8C4: nop
F8C5: nop
F8C6: nop
F8C7: nop
F8C8: nop
F8C9: nop
F8CA: nop
F8CB: nop
F8CC: nop
F8CD: nop
F8CE: nop
F8CF: nop
F8D0: nop
F8D1: nop
F8D2: nop
F8D3: nop
F8D4: nop
F8D5: nop
F8D6: nop
F8D7: nop
F8D8: nop
F8D9: nop
F8DA: nop
F8DB: nop
F8DC: nop
F8DD: nop
F8DE: nop
F8DF: nop
F8E0: nop
F8E1: nop
F8E2: nop
F8E3: nop
F8E4: nop
F8E5: nop
F8E6: nop
F8E7: nop
F8E8: nop
F8E9: nop
F8EA: nop
F8EB: nop
F8EC: nop
F8ED: nop
F8EE: nop
F8EF: nop
F8F0: nop
F8F1: nop
F8F2: nop
F8F3: nop
F8F4: nop
F8F5: nop
F8F6: nop
F8F7: nop
F8F8: nop
F8F9: nop
F8FA: nop
F8FB: nop
F8FC: nop
F8FD: nop
F8FE: nop
F8FF: nop
F900: nop
F901: nop
F902: nop
F903: nop
F904: nop
F905: nop
F906: nop
F907: nop
F908: nop
F909: nop
F90A: nop
F90B: nop
F90C: nop
F90D: nop
F90E: nop
F90F: nop
F910: nop
F911: nop
F912: nop
F913: nop
F914: nop
F915: nop
F916: nop
F917: nop
F918: nop
F919: nop
F91A: nop
F91B: nop
F91C: nop
F91D: nop
F91E: nop
F91F: nop
F920: nop
F921: nop
F922: nop
F923: nop
F924: nop
F925: nop
F926: nop
F927: nop
F928: nop
F929: nop
F92A: nop
F92B: nop
F92C: nop
F92D: nop
F92E: nop
F92F: nop
F930: nop
F931: nop
F932: nop
F933: nop
F934: nop
F935: nop
F936: nop
F937: nop
F938: nop
F939: nop
F93A: nop
F93B: nop
F93C: nop
F93D: nop
F93E: nop
F93F: nop
F940: nop
F941: nop
F942: nop
F943: nop
F944: nop
F945: nop
F946: nop
F947: nop
F948: nop
F949: nop
F94A: nop
F94B: nop
F94C: nop
F94D: nop
F94E: nop
F94F: nop
F950: nop
F951: nop
F952: nop
F953: nop
F954: nop
F955: nop
F956: nop
F957: nop
F958: nop
F959: nop
F95A: nop
F95B: nop
F95C: nop
F95D: nop
F95E: nop
F95F: nop
F960: nop
F961: nop
F962: nop
F963: nop
F964: nop
F965: nop
F966: nop
F967: nop
F968: nop
F969: nop
F96A: nop
F96B: nop
F96C: nop
F96D: nop
F96E: nop
F96F: nop
F970: nop
F971: nop
F972: nop
F973: nop
F974: nop
F975: nop
F976: nop
F977: nop
F978: nop
F979: nop
F97A: nop
F97B: nop
F97C: nop
F97D: nop
F97E: nop
F97F: nop
F980: nop
F981: nop
F982: nop
F983: nop
F984: nop
F985: nop
F986: nop
F987: nop
F988: nop
F989: nop
F98A: nop
F98B: nop
F98C: nop
F98D: nop
F98E: nop
F98F: nop
F990: nop
F991: nop
F992: nop
F993: nop
F994: nop
F995: nop
F996: nop
F997: nop
F998: nop
F999: nop
F99A: nop
F99B: nop
F99C: nop
F99D: nop
F99E: nop
F99F: nop
F9A0: nop
F9A1: nop
F9A2: nop
F9A3: nop
F9A4: nop
F9A5: nop
F9A6: nop
F9A7: nop
F9A8: nop
F9A9: nop
F9AA: nop
F9AB: nop
F9AC: nop
F9AD: nop
F9AE: nop
F9AF: nop
F9B0: nop
F9B1: nop
F9B2: nop
F9B3: nop
F9B4: nop
F9B5: nop
F9B6: nop
F9B7: nop
F9B8: nop
F9B9: nop
F9BA: nop
F9BB: nop
F9BC: nop
F9BD: nop
F9BE: nop
F9BF: nop
F9C0: nop
F9C1: nop
F9C2: nop
F9C3: nop
F9C4: nop
F9C5: nop
F9C6: nop
F9C7: nop
F9C8: nop
F9C9: nop
F9CA: nop
F9CB: nop
F9CC: nop
F9CD: nop
F9CE: nop
F9CF: nop
F9D0: nop
F9D1: nop
F9D2: nop
F9D3: nop
F9D4: nop
F9D5: nop
F9D6: nop
F9D7: nop
F9D8: nop
F9D9: nop
F9DA: nop
F9DB: nop
F9DC: nop
F9DD: nop
F9DE: nop
F9DF: nop
F9E0: nop
F9E1: nop
F9E2: nop
F9E3: nop
F9E4: nop
F9E5: nop
F9E6: nop
F9E7: nop
F9E8: nop
F9E9: nop
F9EA: nop
F9EB: nop
F9EC: nop
F9ED: nop
F9EE: nop
F9EF: nop
F9F0: nop
F9F1: nop
F9F2: nop
F9F3: nop
F9F4: nop
F9F5: nop
F9F6: nop
F9F7: nop
F9F8: nop
F9F9: nop
F9FA: nop
F9FB: nop
F9FC: nop
F9FD: nop
F9FE: nop
F9FF: nop
FA00: stop
FA01: stop
FA02: stop
FA03: stop
FA04: stop
FA05: stop
FA06: stop
FA07: stop
FA08: stop
FA09: stop
FA0A: stop
FA0B: stop
FA0C: stop
FA0D: stop
FA0E: stop
FA0F: stop
FA10: stop
FA11: stop
FA12: stop
FA13: stop
FA14: stop
FA15: stop
FA16: stop
FA17: stop
FA18: stop
FA19: stop
FA1A: stop
FA1B: stop
FA1C: stop
FA1D: stop
FA1E: stop
FA1F: stop
FA20: stop
FA21: stop
FA22: stop
FA23: stop
FA24: stop
FA25: stop
FA26: stop
FA27: stop
FA28: stop
FA29: stop
FA2A: stop
FA2B: stop
FA2C: stop
FA2D: stop
FA2E: stop
FA2F: stop
FA30: stop
FA31: stop
FA32: stop
FA33: stop
FA34: stop
FA35: stop
FA36: stop
FA37: stop
FA38: stop
FA39: stop
FA3A: stop
FA3B: stop
FA3C: stop
FA3D: stop
FA3E: stop
FA3F: stop
FA40: stop
FA41: stop
FA42: stop
FA43: stop
FA44: stop
FA45: stop
FA46: stop
FA47: stop
FA48: stop
FA49: stop
FA4A: stop
FA4B: stop
FA4C: stop
FA4D: stop
FA4E: stop
FA4F: stop
FA50: stop
FA51: stop
FA52: stop
FA53: stop
FA54: stop
FA55: stop
FA56: stop
FA57: stop
FA58: stop
FA59: stop
FA5A: stop
FA5B: stop
FA5C: stop
FA5D: stop
FA5E: stop
FA5F: stop
FA60: stop
FA61: stop
FA62: stop
FA63: stop
FA64: stop
FA65: stop
FA66: stop
FA67: stop
FA68: stop
FA69: stop
FA6A: stop
FA6B: stop
FA6C: stop
FA6D: stop
FA6E: stop
FA6F: stop
FA70: stop
FA71: stop
FA72: stop
FA73: stop
FA74: stop
FA75: stop
FA76: stop
FA77: stop
FA78: stop
FA79: stop
FA7A: stop
FA7B: stop
FA7C: stop
FA7D: stop
FA7E: stop
FA7F: stop
FA80: stop
FA81: stop
FA82: stop
FA83: stop
FA84: stop
FA85: stop
FA86: stop
FA87: stop
FA88: stop
FA89: stop
FA8A: stop
FA8B: stop
FA8C: stop
FA8D: stop
FA8E: stop
FA8F: stop
FA90: stop
FA91: stop
FA92: stop
FA93: stop
FA94: stop
FA95: stop
FA96: stop
FA97: stop
FA98: stop
FA99: stop
FA9A: stop
FA9B: stop
FA9C: stop
FA9D: stop
FA9E: stop
FA9F: stop
FAA0: stop
FAA1: stop
FAA2: stop
FAA3: stop
FAA4: stop
FAA5: stop
FAA6: stop
FAA7: stop
FAA8: stop
FAA9: stop
FAAA: stop
FAAB: stop
FAAC: stop
FAAD: stop
FAAE: stop
FAAF: stop
FAB0: stop
FAB1: stop
FAB2: stop
FAB3: stop
FAB4: stop
FAB5: stop
FAB6: stop
FAB7: stop
FAB8: stop
FAB9: stop
FABA: stop
FABB: stop
FABC: stop
FABD: stop
FABE: stop
FABF: stop
FAC0: stop
FAC1: stop
FAC2: stop
FAC3: stop
FAC4: stop
FAC5: stop
FAC6: stop
FAC7: stop
FAC8: stop
FAC9: stop
FACA: stop
FACB: stop
FACC: stop
FACD: stop
FACE: stop
FACF: stop
FAD0: stop
FAD1: stop
FAD2: stop
FAD3: stop
FAD4: stop
FAD5: stop
FAD6: stop
FAD7: stop
FAD8: stop
FAD9: stop
FADA: stop
FADB: stop
FADC: stop
FADD: stop
FADE: stop
FADF: stop
FAE0: stop
FAE1: stop
FAE2: stop
FAE3: stop
FAE4: stop
FAE5: stop
FAE6: stop
FAE7: stop
FAE8: stop
FAE9: stop
FAEA: stop
FAEB: stop
FAEC: stop
FAED: stop
FAEE: stop
FAEF: stop
FAF0: stop
FAF1: stop
FAF2: stop
FAF3: stop
FAF4: stop
FAF5: stop
FAF6: stop
FAF7: stop
FAF8: stop
FAF9: stop
FAFA: stop
FAFB: stop
FAFC: stop
FAFD: stop
FAFE: stop
FAFF: stop
FB00: stop
FB01: stop
FB02: stop
FB03: stop
FB04: stop
FB05: stop
FB06: stop
FB07: stop
FB08: stop
FB09: stop
FB0A: stop
FB0B: stop
FB0C: stop
FB0D: stop
FB0E: stop
FB0F: stop
FB10: stop
FB11: stop
FB12: stop
FB13: stop
FB14: stop
FB15: stop
FB16: stop
FB17: stop
FB18: stop
FB19: stop
FB1A: stop
FB1B: stop
FB1C: stop
FB1D: stop
FB1E: stop
FB1F: stop
FB20: stop
FB21: stop
FB22: stop
FB23: stop
FB24: stop
FB25: stop
FB26: stop
FB27: stop
FB28: stop
FB29: stop
FB2A: stop
FB2B: stop
FB2C: stop
FB2D: stop
FB2E: stop
FB2F: stop
FB30: stop
FB31: stop
FB32: stop
FB33: stop
FB34: stop
FB35: stop
FB36: stop
FB37: stop
FB38: stop
FB39: stop
FB3A: stop
FB3B: stop
FB3C: stop
FB3D: stop
FB3E: stop
FB3F: stop
FB40: stop
FB41: stop
FB42: stop
FB43: stop
FB44: stop
FB45: stop
FB46: stop
FB47: stop
FB48: stop
FB49: stop
FB4A: stop
FB4B: stop
FB4C: stop
FB4D: stop
FB4E: stop
FB4F: stop
FB50: stop
FB51: stop
FB52: stop
FB53: stop
FB54: stop
FB55: stop
FB56: stop
FB57: stop
FB58: stop
FB59: stop
FB5A: stop
FB5B: stop
FB5C: stop
FB5D: stop
FB5E: stop
FB5F: stop
FB60: stop
FB61: stop
FB62: stop
FB63: stop
FB64: stop
FB65: stop
FB66: stop
FB67: stop
FB68: stop
FB69: stop
FB6A: stop
FB6B: stop
FB6C: stop
FB6D: stop
FB6E: stop
FB6F: stop
FB70: stop
FB71: stop
FB72: stop
FB73: stop
FB74: stop
FB75: stop
FB76: stop
FB77: stop
FB78: stop
FB79: stop
FB7A: stop
FB7B: stop
FB7C: stop
FB7D: stop
FB7E: stop
FB7F: stop
FB80: stop
FB81: stop
FB82: stop
FB83: stop
FB84: stop
FB85: stop
FB86: stop
FB87: stop
FB88: stop
FB89: stop
FB8A: stop
FB8B: stop
FB8C: stop
FB8D: stop
FB8E: stop
FB8F: stop
FB90: stop
FB91: stop
FB92: stop
FB93: stop
FB94: stop
FB95: stop
FB96: stop
FB97: stop
FB98: stop
FB99: stop
FB9A: stop
FB9B: stop
FB9C: stop
FB9D: stop
FB9E: stop
FB9F: stop
FBA0: stop
FBA1: stop
FBA2: stop
FBA3: stop
FBA4: stop
FBA5: stop
FBA6: stop
FBA7: stop
FBA8: stop
FBA9: stop
FBAA: stop
FBAB: stop
FBAC: stop
FBAD: stop
FBAE: stop
FBAF: stop
FBB0: stop
FBB1: stop
FBB2: stop
FBB3: stop
FBB4: stop
FBB5: stop
FBB6: stop
FBB7: stop
FBB8: stop
FBB9: stop
FBBA: stop
FBBB: stop
FBBC: stop
FBBD: stop
FBBE: stop
FBBF: stop
FBC0: stop
FBC1: stop
FBC2: stop
FBC3: stop
FBC4: stop
FBC5: stop
FBC6: stop
FBC7: stop
FBC8: stop
FBC9: stop
FBCA: stop
FBCB: stop
FBCC: stop
FBCD: stop
FBCE: stop
FBCF: stop
FBD0: stop
FBD1: stop
FBD2: stop
FBD3: stop
FBD4: stop
FBD5: stop
FBD6: stop
FBD7: stop
FBD8: stop
FBD9: stop
FBDA: stop
FBDB: stop
FBDC: stop
FBDD: stop
FBDE: stop
FBDF: stop
FBE0: stop
FBE1: stop
FBE2: stop
FBE3: stop
FBE4: stop
FBE5: stop
FBE6: stop
FBE7: stop
FBE8: stop
FBE9: stop
FBEA: stop
FBEB: stop
FBEC: stop
FBED: stop
FBEE: stop
FBEF: stop
FBF0: stop
FBF1: stop
FBF2: stop
FBF3: stop
FBF4: stop
FBF5: stop
FBF6: stop
FBF7: stop
FBF8: stop
FBF9: stop
FBFA: stop
FBFB: stop
FBFC: stop
FBFD: stop
FBFE: stop
FBFF: stop
FC00: nop
FC01: cmp   x,#$00
FC03: dbnz  $00,$fc74
FC06: nop
FC07: tcall 9
FC08: nop
FC09: adc   a,$0000+y
FC0C: nop
FC0D: and   a,#$00
FC0F: bbc3  $FF,$fc11
FC12: stop
FC13: stop
FC14: stop
FC15: stop
FC16: stop
FC17: stop
FC18: stop
FC19: stop
FC1A: stop
FC1B: stop
FC1C: stop
FC1D: stop
FC1E: stop
FC1F: stop
FC20: stop
FC21: stop
FC22: stop
FC23: stop
FC24: stop
FC25: stop
FC26: stop
FC27: stop
FC28: stop
FC29: stop
FC2A: stop
FC2B: stop
FC2C: stop
FC2D: stop
FC2E: stop
FC2F: stop
FC30: stop
FC31: stop
FC32: stop
FC33: stop
FC34: stop
FC35: stop
FC36: stop
FC37: stop
FC38: stop
FC39: stop
FC3A: stop
FC3B: stop
FC3C: stop
FC3D: stop
FC3E: stop
FC3F: stop
FC40: nop
FC41: setc
FC42: nop
FC43: clrc
FC44: nop
FC45: ei
FC46: nop
FC47: setc
FC48: nop
FC49: setc
FC4A: nop
FC4B: di
FC4C: nop
FC4D: di
FC4E: nop
FC4F: setc
FC50: stop
FC51: stop
FC52: stop
FC53: stop
FC54: stop
FC55: stop
FC56: stop
FC57: stop
FC58: stop
FC59: stop
FC5A: stop
FC5B: stop
FC5C: stop
FC5D: stop
FC5E: stop
FC5F: stop
FC60: stop
FC61: stop
FC62: stop
FC63: stop
FC64: stop
FC65: stop
FC66: stop
FC67: stop
FC68: stop
FC69: stop
FC6A: stop
FC6B: stop
FC6C: stop
FC6D: stop
FC6E: stop
FC6F: stop
FC70: stop
FC71: stop
FC72: stop
FC73: stop
FC74: stop
FC75: stop
FC76: stop
FC77: stop
FC78: stop
FC79: stop
FC7A: stop
FC7B: stop
FC7C: stop
FC7D: stop
FC7E: stop
FC7F: stop
FC80: nop
FC81: nop
FC82: nop
FC83: nop
FC84: nop
FC85: nop
FC86: nop
FC87: nop
FC88: nop
FC89: nop
FC8A: nop
FC8B: nop
FC8C: nop
FC8D: nop
FC8E: nop
FC8F: nop
FC90: stop
FC91: stop
FC92: stop
FC93: stop
FC94: stop
FC95: stop
FC96: stop
FC97: stop
FC98: stop
FC99: stop
FC9A: stop
FC9B: stop
FC9C: stop
FC9D: stop
FC9E: stop
FC9F: stop
FCA0: stop
FCA1: stop
FCA2: stop
FCA3: stop
FCA4: stop
FCA5: stop
FCA6: stop
FCA7: stop
FCA8: stop
FCA9: stop
FCAA: tcall 1
FCAB: stop
FCAC: stop
FCAD: stop
FCAE: stop
FCAF: stop
FCB0: stop
FCB1: stop
FCB2: stop
FCB3: stop
FCB4: stop
FCB5: stop
FCB6: stop
FCB7: stop
FCB8: stop
FCB9: stop
FCBA: stop
FCBB: stop
FCBC: stop
FCBD: stop
FCBE: stop
FCBF: stop
FCC0: stop
FCC1: stop
FCC2: stop
FCC3: stop
FCC4: stop
FCC5: stop
FCC6: stop
FCC7: stop
FCC8: stop
FCC9: stop
FCCA: stop
FCCB: stop
FCCC: stop
FCCD: stop
FCCE: stop
FCCF: stop
FCD0: stop
FCD1: stop
FCD2: stop
FCD3: stop
FCD4: stop
FCD5: stop
FCD6: stop
FCD7: stop
FCD8: stop
FCD9: stop
FCDA: stop
FCDB: stop
FCDC: stop
FCDD: stop
FCDE: stop
FCDF: stop
FCE0: stop
FCE1: stop
FCE2: stop
FCE3: stop
FCE4: stop
FCE5: stop
FCE6: stop
FCE7: stop
FCE8: stop
FCE9: stop
FCEA: tcall 0
FCEB: stop
FCEC: stop
FCED: stop
FCEE: stop
FCEF: stop
FCF0: stop
FCF1: stop
FCF2: stop
FCF3: stop
FCF4: stop
FCF5: stop
FCF6: stop
FCF7: stop
FCF8: stop
FCF9: stop
FCFA: stop
FCFB: stop
FCFC: stop
FCFD: stop
FCFE: stop
FCFF: stop
FD00: stop
FD01: nop
FD02: stop
FD03: nop
FD04: stop
FD05: nop
FD06: stop
FD07: nop
FD08: stop
FD09: nop
FD0A: stop
FD0B: nop
FD0C: stop
FD0D: nop
FD0E: stop
FD0F: stop
FD10: stop
FD11: stop
FD12: stop
FD13: stop
FD14: stop
FD15: stop
FD16: stop
FD17: stop
FD18: stop
FD19: stop
FD1A: stop
FD1B: stop
FD1C: stop
FD1D: stop
FD1E: stop
FD1F: stop
FD20: nop
FD21: nop
FD22: mov   sp,x
FD23: ei
FD24: mov   sp,x
FD25: ei
FD26: sbc   a,#$60
FD28: sbc   ($FD),($E0)
FD2B: clrv
FD2C: mov   a,(x)+
FD2D: bvs   $fdae
FD2F: stop
FD30: stop
FD31: stop
FD32: stop
FD33: stop
FD34: stop
FD35: stop
FD36: stop
FD37: stop
FD38: stop
FD39: stop
FD3A: stop
FD3B: stop
FD3C: stop
FD3D: stop
FD3E: stop
FD3F: stop
FD40: nop
FD41: tset1 $0F00
FD44: nop
FD45: and   a,$0900+y
FD48: nop
FD49: set2  $00
FD4B: and   a,$3200+y
FD4E: nop
FD4F: stop
FD50: stop
FD51: stop
FD52: stop
FD53: stop
FD54: stop
FD55: stop
FD56: stop
FD57: stop
FD58: stop
FD59: stop
FD5A: stop
FD5B: stop
FD5C: stop
FD5D: stop
FD5E: stop
FD5F: stop
FD60: stop
FD61: nop
FD62: stop
FD63: nop
FD64: stop
FD65: nop
FD66: stop
FD67: nop
FD68: stop
FD69: nop
FD6A: stop
FD6B: nop
FD6C: stop
FD6D: nop
FD6E: stop
FD6F: nop
FD70: stop
FD71: stop
FD72: stop
FD73: stop
FD74: stop
FD75: stop
FD76: stop
FD77: stop
FD78: stop
FD79: stop
FD7A: stop
FD7B: stop
FD7C: stop
FD7D: stop
FD7E: stop
FD7F: stop
FD80: nop
FD81: nop
FD82: nop
FD83: nop
FD84: nop
FD85: nop
FD86: nop
FD87: nop
FD88: nop
FD89: nop
FD8A: nop
FD8B: nop
FD8C: nop
FD8D: nop
FD8E: nop
FD8F: nop
FD90: stop
FD91: stop
FD92: stop
FD93: stop
FD94: stop
FD95: stop
FD96: stop
FD97: stop
FD98: stop
FD99: stop
FD9A: stop
FD9B: stop
FD9C: stop
FD9D: stop
FD9E: stop
FD9F: stop
FDA0: stop
FDA1: stop
FDA2: stop
FDA3: stop
FDA4: stop
FDA5: stop
FDA6: stop
FDA7: stop
FDA8: stop
FDA9: stop
FDAA: stop
FDAB: stop
FDAC: stop
FDAD: stop
FDAE: stop
FDAF: stop
FDB0: stop
FDB1: stop
FDB2: stop
FDB3: stop
FDB4: stop
FDB5: stop
FDB6: stop
FDB7: stop
FDB8: stop
FDB9: stop
FDBA: stop
FDBB: stop
FDBC: stop
FDBD: stop
FDBE: stop
FDBF: stop
FDC0: stop
FDC1: stop
FDC2: stop
FDC3: stop
FDC4: stop
FDC5: stop
FDC6: stop
FDC7: stop
FDC8: stop
FDC9: stop
FDCA: setc
FDCB: stop
FDCC: stop
FDCD: stop
FDCE: stop
FDCF: stop
FDD0: stop
FDD1: stop
FDD2: stop
FDD3: stop
FDD4: stop
FDD5: stop
FDD6: stop
FDD7: stop
FDD8: stop
FDD9: stop
FDDA: stop
FDDB: stop
FDDC: stop
FDDD: stop
FDDE: stop
FDDF: stop
FDE0: nop
FDE1: nop
FDE2: nop
FDE3: nop
FDE4: nop
FDE5: nop
FDE6: nop
FDE7: nop
FDE8: nop
FDE9: nop
FDEA: nop
FDEB: nop
FDEC: nop
FDED: nop
FDEE: nop
FDEF: nop
FDF0: stop
FDF1: stop
FDF2: stop
FDF3: stop
FDF4: stop
FDF5: stop
FDF6: stop
FDF7: stop
FDF8: stop
FDF9: stop
FDFA: stop
FDFB: stop
FDFC: stop
FDFD: stop
FDFE: stop
FDFF: stop
FE00: stop
FE01: stop
FE02: stop
FE03: stop
FE04: stop
FE05: stop
FE06: stop
FE07: stop
FE08: stop
FE09: stop
FE0A: or    a,($FF+x)
FE0C: stop
FE0D: stop
FE0E: stop
FE0F: stop
FE10: stop
FE11: stop
FE12: stop
FE13: stop
FE14: stop
FE15: stop
FE16: stop
FE17: stop
FE18: stop
FE19: stop
FE1A: stop
FE1B: stop
FE1C: stop
FE1D: stop
FE1E: stop
FE1F: stop
FE20: stop
FE21: stop
FE22: stop
FE23: stop
FE24: stop
FE25: stop
FE26: stop
FE27: stop
FE28: stop
FE29: stop
FE2A: stop
FE2B: stop
FE2C: stop
FE2D: stop
FE2E: stop
FE2F: stop
FE30: stop
FE31: stop
FE32: stop
FE33: stop
FE34: stop
FE35: stop
FE36: stop
FE37: stop
FE38: stop
FE39: stop
FE3A: stop
FE3B: stop
FE3C: stop
FE3D: stop
FE3E: stop
FE3F: stop
FE40: nop
FE41: nop
FE42: nop
FE43: nop
FE44: nop
FE45: nop
FE46: nop
FE47: nop
FE48: nop
FE49: nop
FE4A: nop
FE4B: nop
FE4C: nop
FE4D: nop
FE4E: stop
FE4F: stop
FE50: stop
FE51: stop
FE52: stop
FE53: stop
FE54: stop
FE55: stop
FE56: stop
FE57: stop
FE58: stop
FE59: stop
FE5A: stop
FE5B: stop
FE5C: stop
FE5D: stop
FE5E: stop
FE5F: stop
FE60: bmi   $fe63
FE62: cmp   x,$01
FE64: cbne  $08+x,$fe48
FE67: nop
FE68: cbne  $0F+x,$fe4c
FE6B: asl   $1B
FE6D: or    a,($FF+x)
FE6F: stop
FE70: stop
FE71: stop
FE72: stop
FE73: stop
FE74: stop
FE75: stop
FE76: stop
FE77: stop
FE78: stop
FE79: stop
FE7A: stop
FE7B: stop
FE7C: stop
FE7D: stop
FE7E: stop
FE7F: stop
FE80: dbnz  y,$fe6a
FE82: tcall 15
FE83: mov   a,#$F1
FE85: mov   a,#$FF
FE87: mov   x,$ECFF
FE8A: mov   ($F5),($EA)
FE8D: mov   a,($FF+x)
FE8F: pop   y
FE90: stop
FE91: stop
FE92: stop
FE93: stop
FE94: stop
FE95: stop
FE96: stop
FE97: stop
FE98: stop
FE99: stop
FE9A: stop
FE9B: stop
FE9C: stop
FE9D: stop
FE9E: stop
FE9F: stop
FEA0: stop
FEA1: stop
FEA2: stop
FEA3: stop
FEA4: stop
FEA5: stop
FEA6: stop
FEA7: stop
FEA8: stop
FEA9: stop
FEAA: stop
FEAB: stop
FEAC: stop
FEAD: stop
FEAE: stop
FEAF: stop
FEB0: stop
FEB1: stop
FEB2: stop
FEB3: stop
FEB4: stop
FEB5: stop
FEB6: stop
FEB7: stop
FEB8: stop
FEB9: stop
FEBA: stop
FEBB: stop
FEBC: stop
FEBD: stop
FEBE: stop
FEBF: stop
FEC0: stop
FEC1: stop
FEC2: stop
FEC3: stop
FEC4: stop
FEC5: stop
FEC6: stop
FEC7: stop
FEC8: stop
FEC9: stop
FECA: stop
FECB: stop
FECC: stop
FECD: stop
FECE: stop
FECF: stop
FED0: stop
FED1: stop
FED2: stop
FED3: stop
FED4: stop
FED5: stop
FED6: stop
FED7: stop
FED8: stop
FED9: stop
FEDA: stop
FEDB: stop
FEDC: stop
FEDD: stop
FEDE: stop
FEDF: stop
FEE0: stop
FEE1: stop
FEE2: stop
FEE3: stop
FEE4: stop
FEE5: stop
FEE6: stop
FEE7: stop
FEE8: stop
FEE9: stop
FEEA: stop
FEEB: stop
FEEC: stop
FEED: stop
FEEE: stop
FEEF: stop
FEF0: stop
FEF1: stop
FEF2: stop
FEF3: stop
FEF4: stop
FEF5: stop
FEF6: stop
FEF7: stop
FEF8: stop
FEF9: stop
FEFA: stop
FEFB: stop
FEFC: stop
FEFD: stop
FEFE: stop
FEFF: stop
FF00: stop
FF01: stop
FF02: stop
FF03: stop
FF04: stop
FF05: stop
FF06: stop
FF07: stop
FF08: stop
FF09: stop
FF0A: stop
FF0B: stop
FF0C: stop
FF0D: stop
FF0E: stop
FF0F: stop
FF10: stop
FF11: stop
FF12: stop
FF13: stop
FF14: stop
FF15: stop
FF16: stop
FF17: stop
FF18: stop
FF19: stop
FF1A: stop
FF1B: stop
FF1C: stop
FF1D: stop
FF1E: stop
FF1F: stop
FF20: stop
FF21: stop
FF22: stop
FF23: stop
FF24: stop
FF25: stop
FF26: stop
FF27: stop
FF28: stop
FF29: stop
FF2A: stop
FF2B: stop
FF2C: stop
FF2D: stop
FF2E: stop
FF2F: stop
FF30: stop
FF31: stop
FF32: stop
FF33: stop
FF34: stop
FF35: stop
FF36: stop
FF37: stop
FF38: stop
FF39: stop
FF3A: stop
FF3B: stop
FF3C: stop
FF3D: stop
FF3E: stop
FF3F: stop
FF40: stop
FF41: stop
FF42: stop
FF43: stop
FF44: stop
FF45: stop
FF46: stop
FF47: stop
FF48: stop
FF49: stop
FF4A: stop
FF4B: stop
FF4C: stop
FF4D: stop
FF4E: stop
FF4F: stop
FF50: stop
FF51: stop
FF52: stop
FF53: stop
FF54: stop
FF55: stop
FF56: stop
FF57: stop
FF58: stop
FF59: stop
FF5A: stop
FF5B: stop
FF5C: stop
FF5D: stop
FF5E: stop
FF5F: stop
FF60: stop
FF61: stop
FF62: stop
FF63: stop
FF64: stop
FF65: stop
FF66: stop
FF67: stop
FF68: stop
FF69: stop
FF6A: stop
FF6B: stop
FF6C: stop
FF6D: stop
FF6E: stop
FF6F: stop
FF70: stop
FF71: stop
FF72: stop
FF73: stop
FF74: stop
FF75: stop
FF76: stop
FF77: stop
FF78: stop
FF79: stop
FF7A: stop
FF7B: stop
FF7C: stop
FF7D: stop
FF7E: stop
FF7F: stop
FF80: stop
FF81: stop
FF82: stop
FF83: stop
FF84: stop
FF85: stop
FF86: stop
FF87: stop
FF88: stop
FF89: stop
FF8A: stop
FF8B: stop
FF8C: stop
FF8D: stop
FF8E: stop
FF8F: stop
FF90: stop
FF91: stop
FF92: stop
FF93: stop
FF94: stop
FF95: stop
FF96: stop
FF97: stop
FF98: stop
FF99: stop
FF9A: stop
FF9B: stop
FF9C: stop
FF9D: stop
FF9E: stop
FF9F: stop
FFA0: stop
FFA1: stop
FFA2: stop
FFA3: stop
FFA4: stop
FFA5: stop
FFA6: stop
FFA7: stop
FFA8: stop
FFA9: stop
FFAA: stop
FFAB: stop
FFAC: stop
FFAD: stop
FFAE: stop
FFAF: stop
FFB0: stop
FFB1: stop
FFB2: stop
FFB3: stop
FFB4: stop
FFB5: stop
FFB6: stop
FFB7: stop
FFB8: stop
FFB9: stop
FFBA: stop
FFBB: stop
FFBC: stop
FFBD: stop
FFBE: stop
FFBF: stop
FFC0: stop
FFC1: stop
FFC2: stop
FFC3: stop
FFC4: stop
FFC5: stop
FFC6: stop
FFC7: stop
FFC8: stop
FFC9: stop
FFCA: stop
FFCB: stop
FFCC: stop
FFCD: stop
FFCE: stop
FFCF: stop
FFD0: stop
FFD1: stop
FFD2: stop
FFD3: stop
FFD4: stop
FFD5: stop
FFD6: stop
FFD7: stop
FFD8: stop
FFD9: stop
FFDA: stop
FFDB: stop
FFDC: stop
FFDD: stop
FFDE: stop
FFDF: stop
FFE0: stop
FFE1: stop
FFE2: stop
FFE3: stop
FFE4: stop
FFE5: stop
FFE6: stop
FFE7: stop
FFE8: stop
FFE9: stop
FFEA: stop
FFEB: stop
FFEC: stop
FFED: stop
FFEE: stop
FFEF: stop
FFF0: stop
FFF1: stop
FFF2: stop
FFF3: stop
FFF4: stop
FFF5: stop
FFF6: stop
FFF7: stop
FFF8: stop
FFF9: stop
FFFA: stop
FFFB: stop
FFFC: stop
FFFD: stop
FFFE: stop
FFFF: stop
