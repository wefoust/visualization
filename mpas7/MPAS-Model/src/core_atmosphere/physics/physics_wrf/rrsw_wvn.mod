V34 :0x4 rrsw_wvn
20 module_ra_rrtmg_sw.F S624 0
07/09/2019  11:27:26
use parrrsw private
use parkind private
enduse
D 58 23 6 1 20 22 0 0 0 0 0
 20 34 3 20 34 22
D 61 23 6 1 20 22 0 0 0 0 0
 20 34 3 20 34 22
D 64 23 6 1 20 22 0 0 0 0 0
 20 34 3 20 34 22
D 67 23 9 1 20 22 0 0 0 0 0
 20 34 3 20 34 22
D 70 23 9 1 20 22 0 0 0 0 0
 20 34 3 20 34 22
D 73 23 9 1 20 22 0 0 0 0 0
 20 34 3 20 34 22
D 76 23 6 1 3 22 0 0 0 0 0
 0 22 3 3 22 22
D 79 23 6 1 3 22 0 0 0 0 0
 0 22 3 3 22 22
D 82 23 6 1 3 32 0 0 0 0 0
 0 32 3 3 32 32
D 85 23 6 1 3 32 0 0 0 0 0
 0 32 3 3 32 32
D 88 23 6 1 3 89 0 0 0 0 0
 0 89 3 3 89 89
D 91 23 9 1 3 20 0 0 0 0 0
 0 20 3 3 20 20
D 94 23 9 1 3 89 0 0 0 0 0
 0 89 3 3 89 89
S 624 24 0 0 0 9 1 0 5015 5 0 A 0 0 0 0 B 0 1298 0 0 0 0 0 0 0 0 0 0 1353 0 0 0 0 0 0 0 0 1298 0 0 0 0 0 0 rrsw_wvn
S 626 23 0 0 0 6 638 624 5032 0 0 A 0 0 0 0 B 0 1300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 im
S 628 23 0 0 0 9 640 624 5043 0 0 A 0 0 0 0 B 0 1300 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rb
S 631 23 0 0 0 6 672 624 5062 4 0 A 0 0 0 0 B 0 1301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nbndsw
S 632 23 0 0 0 6 671 624 5069 4 0 A 0 0 0 0 B 0 1301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mg
S 633 23 0 0 0 6 677 624 5072 4 0 A 0 0 0 0 B 0 1301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngptsw
S 634 23 0 0 0 6 679 624 5079 4 0 A 0 0 0 0 B 0 1301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 jpb1
S 635 23 0 0 0 6 680 624 5084 4 0 A 0 0 0 0 B 0 1301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 jpb2
R 638 16 2 parkind kind_im
R 640 16 4 parkind kind_rb
S 642 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 643 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 648 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 112 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 649 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 671 16 4 parrrsw mg
R 672 16 5 parrrsw nbndsw
R 677 16 10 parrrsw ngptsw
R 679 16 12 parrrsw jpb1
R 680 16 13 parrrsw jpb2
S 715 7 4 0 4 58 716 624 5337 800004 100 A 0 0 0 0 B 0 1336 0 0 0 0 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ng
S 716 7 4 0 4 61 717 624 5340 800004 100 A 0 0 0 0 B 0 1337 0 0 0 64 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nspa
S 717 7 4 0 4 64 718 624 5345 800004 100 A 0 0 0 0 B 0 1338 0 0 0 128 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nspb
S 718 7 4 0 4 67 719 624 5350 800004 100 A 0 0 0 0 B 0 1340 0 0 0 192 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 wavenum1
S 719 7 4 0 4 70 720 624 5359 800004 100 A 0 0 0 0 B 0 1341 0 0 0 256 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 wavenum2
S 720 7 4 0 4 73 721 624 5368 800004 100 A 0 0 0 0 B 0 1342 0 0 0 320 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 delwave
S 721 7 4 0 4 76 722 624 5376 800004 100 A 0 0 0 0 B 0 1344 0 0 0 384 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngc
S 722 7 4 0 4 79 723 624 5380 800004 100 A 0 0 0 0 B 0 1345 0 0 0 448 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngs
S 723 7 4 0 4 82 724 624 5384 800004 100 A 0 0 0 0 B 0 1346 0 0 0 512 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngn
S 724 7 4 0 4 85 725 624 5388 800004 100 A 0 0 0 0 B 0 1347 0 0 0 960 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngb
S 725 7 4 0 4 88 727 624 5392 800004 100 A 0 0 0 0 B 0 1348 0 0 0 1408 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ngm
S 726 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 224 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 727 7 4 0 4 91 728 624 5396 800004 100 A 0 0 0 0 B 0 1350 0 0 0 2304 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 wt
S 728 7 4 0 4 94 1 624 5399 800004 100 A 0 0 0 0 B 0 1351 0 0 0 2368 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rwgt
S 729 11 0 0 4 9 1 624 5404 40800000 805000 A 0 0 0 0 B 0 1353 0 0 0 3264 0 0 715 728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _rrsw_wvn$0
A 20 2 0 0 0 6 642 0 0 0 20 0 0 0 0 0 0 0 0 0 0 0
A 22 2 0 0 0 6 643 0 0 0 22 0 0 0 0 0 0 0 0 0 0 0
A 32 2 0 0 0 6 648 0 0 0 32 0 0 0 0 0 0 0 0 0 0 0
A 34 2 0 0 0 6 649 0 0 0 34 0 0 0 0 0 0 0 0 0 0 0
A 89 2 0 0 0 6 726 0 0 0 89 0 0 0 0 0 0 0 0 0 0 0
Z
Z
