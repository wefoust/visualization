V33 :0x4 rrlw_wvn
20 module_ra_rrtmg_lw.F S624 0
05/29/2019  15:27:23
use parrrtm private
use parkind private
enduse
D 56 21 6 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 59 21 6 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 62 21 6 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 65 21 8 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 68 21 8 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 71 21 8 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 74 21 8 2 82 81 0 0 0 0 0
 0 80 3 3 80 80
 0 20 80 3 20 20
D 77 21 8 1 3 80 0 0 0 0 0
 0 80 3 3 80 80
D 80 21 6 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 83 21 6 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 86 21 6 1 3 29 0 0 0 0 0
 0 29 3 3 29 29
D 89 21 6 1 3 29 0 0 0 0 0
 0 29 3 3 29 29
D 92 21 6 1 3 83 0 0 0 0 0
 0 83 3 3 83 83
D 95 21 8 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 98 21 8 1 3 83 0 0 0 0 0
 0 83 3 3 83 83
D 101 21 6 1 3 24 0 0 0 0 0
 0 24 3 3 24 24
S 624 24 0 0 0 8 1 0 5015 5 0 A 0 0 0 0 B 0 1560 0 0 0 0 0 0 0 0 0 0 1634 0 0 0 0 0 0 0 0 1560 0 0 0 0 0 0 rrlw_wvn
S 626 23 0 0 0 6 637 624 5032 0 0 A 0 0 0 0 B 0 1562 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 im
S 628 23 0 0 0 8 639 624 5043 0 0 A 0 0 0 0 B 0 1562 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rb
S 631 23 0 0 0 6 667 624 5062 4 0 A 0 0 0 0 B 0 1563 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nbndlw
S 632 23 0 0 0 6 666 624 5069 4 0 A 0 0 0 0 B 0 1563 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mg
S 633 23 0 0 0 6 672 624 5072 4 0 A 0 0 0 0 B 0 1563 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngptlw
S 634 23 0 0 0 6 670 624 5079 4 0 A 0 0 0 0 B 0 1563 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 maxinpx
R 637 16 2 parkind kind_im
R 639 16 4 parkind kind_rb
S 641 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 642 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 644 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 140 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 666 16 3 parrrtm mg
R 667 16 4 parrrtm nbndlw
R 670 16 7 parrrtm maxinpx
R 672 16 9 parrrtm ngptlw
S 704 7 4 0 4 56 705 624 5280 800004 100 A 0 0 0 0 B 0 1611 0 0 0 0 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ng
S 705 7 4 0 4 59 706 624 5283 800004 100 A 0 0 0 0 B 0 1612 0 0 0 64 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nspa
S 706 7 4 0 4 62 707 624 5288 800004 100 A 0 0 0 0 B 0 1613 0 0 0 128 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nspb
S 707 7 4 0 4 65 708 624 5293 800004 100 A 0 0 0 0 B 0 1615 0 0 0 192 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 wavenum1
S 708 7 4 0 4 68 709 624 5302 800004 100 A 0 0 0 0 B 0 1616 0 0 0 256 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 wavenum2
S 709 7 4 0 4 71 710 624 5311 800004 100 A 0 0 0 0 B 0 1617 0 0 0 320 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 delwave
S 710 7 4 0 4 74 714 624 5319 800004 100 A 0 0 0 0 B 0 1619 0 0 0 384 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 totplnk
S 711 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 181 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 712 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2896 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 713 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 182 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 714 7 4 0 4 77 715 624 5327 800004 100 A 0 0 0 0 B 0 1620 0 0 0 11968 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 totplk16
S 715 7 4 0 4 80 716 624 5336 800004 100 A 0 0 0 0 B 0 1622 0 0 0 12704 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngc
S 716 7 4 0 4 83 717 624 5340 800004 100 A 0 0 0 0 B 0 1623 0 0 0 12768 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngs
S 717 7 4 0 4 86 718 624 5344 800004 100 A 0 0 0 0 B 0 1624 0 0 0 12832 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngn
S 718 7 4 0 4 89 719 624 5348 800004 100 A 0 0 0 0 B 0 1625 0 0 0 13392 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngb
S 719 7 4 0 4 92 721 624 5352 800004 100 A 0 0 0 0 B 0 1626 0 0 0 13952 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngm
S 720 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 256 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 721 7 4 0 4 95 722 624 5356 800004 100 A 0 0 0 0 B 0 1628 0 0 0 14976 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 wt
S 722 7 4 0 4 98 723 624 5359 800004 100 A 0 0 0 0 B 0 1629 0 0 0 15040 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rwgt
S 723 6 4 0 0 6 724 624 5364 4 0 A 0 0 0 0 B 0 1631 0 0 0 16064 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nxmol
S 724 7 4 0 4 101 1 624 5370 800004 100 A 0 0 0 0 B 0 1632 0 0 0 16080 0 0 0 0 0 0 725 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ixindx
S 725 11 0 0 4 8 1 624 5377 40800000 805000 A 0 0 0 0 B 0 1634 0 0 0 16232 0 0 704 724 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _rrlw_wvn$0
A 20 2 0 0 0 6 641 0 0 0 20 0 0 0 0 0 0 0 0 0 0 0
A 24 2 0 0 0 6 642 0 0 0 24 0 0 0 0 0 0 0 0 0 0 0
A 29 2 0 0 0 6 644 0 0 0 29 0 0 0 0 0 0 0 0 0 0 0
A 80 2 0 0 0 6 711 0 0 0 80 0 0 0 0 0 0 0 0 0 0 0
A 81 2 0 0 0 6 712 0 0 0 81 0 0 0 0 0 0 0 0 0 0 0
A 82 2 0 0 0 6 713 0 0 0 82 0 0 0 0 0 0 0 0 0 0 0
A 83 2 0 0 0 6 720 0 0 0 83 0 0 0 0 0 0 0 0 0 0 0
Z
Z
