V34 :0x4 rrlw_tbl
20 module_ra_rrtmg_lw.F S624 0
06/14/2019  09:55:51
use parkind private
enduse
D 58 23 9 1 2 21 0 0 0 0 0
 2 17 3 2 17 21
D 61 23 9 1 2 21 0 0 0 0 0
 2 17 3 2 17 21
D 64 23 9 1 2 21 0 0 0 0 0
 2 17 3 2 17 21
S 624 24 0 0 0 9 1 0 5015 5 0 A 0 0 0 0 B 0 1460 0 0 0 0 0 0 0 0 0 0 1504 0 0 0 0 0 0 0 0 1460 0 0 0 0 0 0 rrlw_tbl
S 626 23 0 0 0 6 632 624 5032 0 0 A 0 0 0 0 B 0 1462 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 im
S 628 23 0 0 0 9 634 624 5043 0 0 A 0 0 0 0 B 0 1462 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rb
R 632 16 2 parkind kind_im
R 634 16 4 parkind kind_rb
S 635 16 1 0 0 6 637 624 5070 800004 400000 A 0 0 0 0 B 0 1493 0 0 0 0 0 0 10000 17 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ntbl
S 636 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 10000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 637 16 0 0 0 9 643 624 5075 800004 400000 A 0 0 0 0 B 0 1495 0 0 0 0 0 0 1176256512 19 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tblint
S 638 3 0 0 0 9 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1176256512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 639 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 10001 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 640 7 4 0 4 58 641 624 5082 800004 100 A 0 0 0 0 B 0 1497 0 0 0 0 0 0 0 0 0 0 646 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tau_tbl
S 641 7 4 0 4 61 642 624 5090 800004 100 A 0 0 0 0 B 0 1498 0 0 0 40016 0 0 0 0 0 0 646 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 exp_tbl
S 642 7 4 0 4 64 645 624 5098 800004 100 A 0 0 0 0 B 0 1499 0 0 0 80032 0 0 0 0 0 0 646 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tfn_tbl
S 643 16 0 0 0 9 0 624 5106 800004 400000 A 0 0 0 0 B 0 1501 0 0 0 0 0 0 1049515524 22 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 pade
S 644 3 0 0 0 9 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1049515524 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 645 6 4 0 0 9 1 624 5111 4 0 A 0 0 0 0 B 0 1502 0 0 0 120036 0 0 0 0 0 0 646 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bpade
S 646 11 0 0 4 9 1 624 5117 40800000 805000 A 0 0 0 0 B 0 1504 0 0 0 120040 0 0 640 645 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _rrlw_tbl$0
A 17 2 0 0 0 6 636 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0
A 19 2 0 0 0 9 638 0 0 0 19 0 0 0 0 0 0 0 0 0 0 0
A 21 2 0 0 0 6 639 0 0 0 21 0 0 0 0 0 0 0 0 0 0 0
A 22 2 0 0 0 9 644 0 0 0 22 0 0 0 0 0 0 0 0 0 0 0
Z
Z
