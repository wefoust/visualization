V34 :0x4 rrsw_kg28
20 module_ra_rrtmg_sw.F S624 0
06/14/2019  09:55:57
use parrrsw private
use parkind private
enduse
D 58 23 9 4 96 95 0 0 0 0 0
 0 90 3 3 90 90
 0 91 90 3 91 91
 0 92 93 3 92 92
 0 20 94 3 20 20
D 61 23 9 4 102 101 0 0 0 0 0
 0 91 3 3 91 91
 0 91 91 3 91 91
 92 97 98 92 97 99
 0 20 100 3 20 20
D 64 23 9 2 103 79 0 0 0 0 0
 0 20 3 3 20 20
 0 91 20 3 91 91
D 67 23 9 4 96 104 0 0 0 0 0
 0 90 3 3 90 90
 0 91 90 3 91 91
 0 92 93 3 92 92
 0 24 94 3 24 24
D 70 23 9 2 105 104 0 0 0 0 0
 0 94 3 3 94 94
 0 24 94 3 24 24
D 73 23 9 4 102 106 0 0 0 0 0
 0 91 3 3 91 91
 0 91 91 3 91 91
 92 97 98 92 97 99
 0 24 100 3 24 24
D 76 23 9 2 107 106 0 0 0 0 0
 0 100 3 3 100 100
 0 24 100 3 24 24
D 79 23 9 2 30 108 0 0 0 0 0
 0 24 3 3 24 24
 0 91 24 3 91 91
S 624 24 0 0 0 9 1 0 5015 5 0 A 0 0 0 0 B 0 1046 0 0 0 0 0 0 0 0 0 0 1101 0 0 0 0 0 0 0 0 1046 0 0 0 0 0 0 rrsw_kg28
S 626 23 0 0 0 6 634 624 5033 0 0 A 0 0 0 0 B 0 1048 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 im
S 628 23 0 0 0 9 636 624 5044 0 0 A 0 0 0 0 B 0 1048 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rb
S 631 23 0 0 0 6 694 624 5063 4 0 A 0 0 0 0 B 0 1049 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ng28
R 634 16 2 parkind kind_im
R 636 16 4 parkind kind_rb
S 638 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 640 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 643 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 659 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 80 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 694 16 31 parrrsw ng28
S 711 16 1 0 0 6 0 624 5338 800004 400000 A 0 0 0 0 B 0 1070 0 0 0 0 0 0 16 20 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 no28
S 712 7 4 0 4 58 720 624 5343 800004 100 A 0 0 0 0 B 0 1072 0 0 0 0 0 0 0 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 kao
S 713 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 714 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 715 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 716 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 717 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 585 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 718 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 9360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 719 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 640 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 720 7 4 0 4 61 727 624 5347 800004 100 A 0 0 0 0 B 0 1073 0 0 0 37440 0 0 0 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 kbo
S 721 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 722 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 723 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 724 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1175 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 725 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 18800 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 726 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1506 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 727 7 4 0 4 64 729 624 5351 800004 100 A 0 0 0 0 B 0 1074 0 0 0 112640 0 0 0 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 sfluxrefo
S 728 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 729 6 4 0 0 6 730 624 5361 4 0 A 0 0 0 0 B 0 1076 0 0 0 112960 0 0 0 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 layreffr
S 730 6 4 0 0 9 731 624 5370 4 0 A 0 0 0 0 B 0 1077 0 0 0 112964 0 0 0 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rayl
S 731 6 4 0 0 9 734 624 5375 4 0 A 0 0 0 0 B 0 1077 0 0 0 112968 0 0 0 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 strrat
S 732 7 4 0 0 67 738 624 5382 810004 0 A 0 0 0 0 B 0 1095 0 0 0 112976 0 0 4 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ka
L 732 734 -1
S 733 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3510 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 734 7 4 0 4 70 732 624 5385 800004 100 A 0 0 0 0 B 0 1095 0 0 0 112976 0 0 3 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 absa
L 734 732 -1
S 735 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 586 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 736 7 4 0 0 73 740 624 5390 810004 0 A 0 0 0 0 B 0 1096 0 0 0 127024 0 0 2 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 kb
L 736 738 -1
S 737 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7050 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 738 7 4 0 4 76 736 624 5393 800004 100 A 0 0 0 0 B 0 1096 0 0 0 127024 0 0 1 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 absb
L 738 736 -1
S 739 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 740 7 4 0 4 79 1 624 5398 800004 100 A 0 0 0 0 B 0 1097 0 0 0 155232 0 0 0 0 0 0 742 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 sfluxref
S 741 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 742 11 0 0 4 9 1 624 5407 40800000 805000 A 0 0 0 0 B 0 1101 0 0 0 155352 0 0 712 740 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _rrsw_kg28$0
A 20 2 0 0 0 6 638 0 0 0 20 0 0 0 0 0 0 0 0 0 0 0
A 24 2 0 0 0 6 640 0 0 0 24 0 0 0 0 0 0 0 0 0 0 0
A 30 2 0 0 0 6 643 0 0 0 30 0 0 0 0 0 0 0 0 0 0 0
A 79 2 0 0 0 6 659 0 0 0 79 0 0 0 0 0 0 0 0 0 0 0
A 90 2 0 0 0 6 713 0 0 0 90 0 0 0 0 0 0 0 0 0 0 0
A 91 2 0 0 0 6 714 0 0 0 91 0 0 0 0 0 0 0 0 0 0 0
A 92 2 0 0 0 6 715 0 0 0 92 0 0 0 0 0 0 0 0 0 0 0
A 93 2 0 0 0 6 716 0 0 0 93 0 0 0 0 0 0 0 0 0 0 0
A 94 2 0 0 0 6 717 0 0 0 94 0 0 0 0 0 0 0 0 0 0 0
A 95 2 0 0 0 6 718 0 0 0 95 0 0 0 0 0 0 0 0 0 0 0
A 96 2 0 0 0 6 719 0 0 0 96 0 0 0 0 0 0 0 0 0 0 0
A 97 2 0 0 0 6 721 0 0 0 97 0 0 0 0 0 0 0 0 0 0 0
A 98 2 0 0 0 6 722 0 0 0 98 0 0 0 0 0 0 0 0 0 0 0
A 99 2 0 0 0 6 723 0 0 0 99 0 0 0 0 0 0 0 0 0 0 0
A 100 2 0 0 0 6 724 0 0 0 100 0 0 0 0 0 0 0 0 0 0 0
A 101 2 0 0 0 6 725 0 0 0 101 0 0 0 0 0 0 0 0 0 0 0
A 102 2 0 0 0 6 726 0 0 0 102 0 0 0 0 0 0 0 0 0 0 0
A 103 2 0 0 0 6 728 0 0 0 103 0 0 0 0 0 0 0 0 0 0 0
A 104 2 0 0 0 6 733 0 0 0 104 0 0 0 0 0 0 0 0 0 0 0
A 105 2 0 0 9 6 735 0 0 0 105 0 0 0 0 0 0 0 0 0 0 0
A 106 2 0 0 0 6 737 0 0 0 106 0 0 0 0 0 0 0 0 0 0 0
A 107 2 0 0 0 6 739 0 0 0 107 0 0 0 0 0 0 0 0 0 0 0
A 108 2 0 0 0 6 741 0 0 0 108 0 0 0 0 0 0 0 0 0 0 0
E 0 1099 736 1 0 3 3 92 3 -1
E 0 0 738 0 0 3 3 -1
E 0 1099 732 1 0 3 3 3 3 -1
E 0 0 734 0 0 3 3 -1
Z
Z
