V34 :0x4 rrsw_aer
20 module_ra_rrtmg_sw.F S624 0
06/14/2019  09:55:57
use parrrsw private
use parkind private
enduse
D 58 23 9 2 90 89 0 0 0 0 0
 0 22 3 3 22 22
 0 24 22 3 24 24
D 61 23 9 2 90 89 0 0 0 0 0
 0 22 3 3 22 22
 0 24 22 3 24 24
D 64 23 9 2 90 89 0 0 0 0 0
 0 22 3 3 22 22
 0 24 22 3 24 24
S 624 24 0 0 0 9 1 0 5015 5 0 A 0 0 0 0 B 0 127 0 0 0 0 0 0 0 0 0 0 185 0 0 0 0 0 0 0 0 127 0 0 0 0 0 0 rrsw_aer
S 626 23 0 0 0 6 635 624 5032 0 0 A 0 0 0 0 B 0 129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 im
S 628 23 0 0 0 9 637 624 5043 0 0 A 0 0 0 0 B 0 129 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rb
S 631 23 0 0 0 6 669 624 5062 4 0 A 0 0 0 0 B 0 130 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 nbndsw
S 632 23 0 0 0 6 670 624 5069 4 0 A 0 0 0 0 B 0 130 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 naerec
R 635 16 2 parkind kind_im
R 637 16 4 parkind kind_rb
S 640 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 641 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 669 16 5 parrrsw nbndsw
R 670 16 6 parrrsw naerec
S 712 7 4 0 4 58 715 624 5337 800004 100 A 0 0 0 0 B 0 181 0 0 0 0 0 0 0 0 0 0 717 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rsrtaua
S 713 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 84 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 714 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 715 7 4 0 4 61 716 624 5345 800004 100 A 0 0 0 0 B 0 182 0 0 0 336 0 0 0 0 0 0 717 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rsrpiza
S 716 7 4 0 4 64 1 624 5353 800004 100 A 0 0 0 0 B 0 183 0 0 0 672 0 0 0 0 0 0 717 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rsrasya
S 717 11 0 0 4 9 1 624 5361 40800000 805000 A 0 0 0 0 B 0 185 0 0 0 1008 0 0 712 716 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _rrsw_aer$0
A 22 2 0 0 0 6 640 0 0 0 22 0 0 0 0 0 0 0 0 0 0 0
A 24 2 0 0 0 6 641 0 0 0 24 0 0 0 0 0 0 0 0 0 0 0
A 89 2 0 0 0 6 713 0 0 0 89 0 0 0 0 0 0 0 0 0 0 0
A 90 2 0 0 0 6 714 0 0 0 90 0 0 0 0 0 0 0 0 0 0 0
Z
Z