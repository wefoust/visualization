V34 :0x4 rrsw_kg17
20 module_ra_rrtmg_sw.F S624 0
06/20/2019  14:17:53
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
D 64 23 9 2 104 103 0 0 0 0 0
 0 51 3 3 51 51
 0 20 51 3 20 20
D 67 23 9 2 91 105 0 0 0 0 0
 0 13 3 3 13 13
 0 20 13 3 20 20
D 70 23 9 2 106 79 0 0 0 0 0
 0 20 3 3 20 20
 0 91 20 3 91 91
D 73 23 9 4 96 107 0 0 0 0 0
 0 90 3 3 90 90
 0 91 90 3 91 91
 0 92 93 3 92 92
 0 46 94 3 46 46
D 76 23 9 2 108 107 0 0 0 0 0
 0 94 3 3 94 94
 0 46 94 3 46 46
D 79 23 9 4 102 109 0 0 0 0 0
 0 91 3 3 91 91
 0 91 91 3 91 91
 92 97 98 92 97 99
 0 46 100 3 46 46
D 82 23 9 2 110 109 0 0 0 0 0
 0 100 3 3 100 100
 0 46 100 3 46 46
D 85 23 9 2 104 111 0 0 0 0 0
 0 51 3 3 51 51
 0 46 51 3 46 46
D 88 23 9 2 91 112 0 0 0 0 0
 0 13 3 3 13 13
 0 46 13 3 46 46
D 91 23 9 2 92 113 0 0 0 0 0
 0 46 3 3 46 46
 0 91 46 3 91 91
S 624 24 0 0 0 9 1 0 5015 5 0 A 0 0 0 0 B 0 337 0 0 0 0 0 0 0 0 0 0 400 0 0 0 0 0 0 0 0 337 0 0 0 0 0 0 rrsw_kg17
S 626 23 0 0 0 6 634 624 5033 0 0 A 0 0 0 0 B 0 339 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 im
S 628 23 0 0 0 9 636 624 5044 0 0 A 0 0 0 0 B 0 339 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rb
S 631 23 0 0 0 6 683 624 5063 4 0 A 0 0 0 0 B 0 340 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ng17
S 632 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 634 16 2 parkind kind_im
R 636 16 4 parkind kind_rb
S 638 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 648 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 650 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 659 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 80 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 683 16 20 parrrsw ng17
S 711 16 1 0 0 6 0 624 5338 800004 400000 A 0 0 0 0 B 0 363 0 0 0 0 0 0 16 20 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 no17
S 712 7 4 0 4 58 720 624 5343 800004 100 A 0 0 0 0 B 0 365 0 0 0 0 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 kao
S 713 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 714 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 715 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 716 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 717 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 585 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 718 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 9360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 719 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 640 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 720 7 4 0 4 61 727 624 5347 800004 100 A 0 0 0 0 B 0 366 0 0 0 37440 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 kbo
S 721 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 722 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 723 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 724 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1175 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 725 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 18800 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 726 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1506 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 727 7 4 0 4 64 730 624 5351 800004 100 A 0 0 0 0 B 0 367 0 0 0 112640 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 selfrefo
S 728 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 160 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 729 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 730 7 4 0 4 67 732 624 5360 800004 100 A 0 0 0 0 B 0 367 0 0 0 113280 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 forrefo
S 731 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 732 7 4 0 4 70 734 624 5368 800004 100 A 0 0 0 0 B 0 368 0 0 0 113536 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 sfluxrefo
S 733 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 734 6 4 0 0 6 735 624 5378 4 0 A 0 0 0 0 B 0 370 0 0 0 113856 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 layreffr
S 735 6 4 0 0 9 736 624 5387 4 0 A 0 0 0 0 B 0 371 0 0 0 113860 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rayl
S 736 6 4 0 0 9 739 624 5392 4 0 A 0 0 0 0 B 0 371 0 0 0 113864 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 strrat
S 737 7 4 0 0 73 743 624 5399 810004 0 A 0 0 0 0 B 0 393 0 0 0 113872 0 0 4 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ka
L 737 739 -1
S 738 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7020 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 739 7 4 0 4 76 737 624 5402 800004 100 A 0 0 0 0 B 0 393 0 0 0 113872 0 0 3 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 absa
L 739 737 -1
S 740 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 586 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 741 7 4 0 0 79 745 624 5407 810004 0 A 0 0 0 0 B 0 394 0 0 0 141952 0 0 2 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 kb
L 741 743 -1
S 742 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 14100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 743 7 4 0 4 82 741 624 5410 800004 100 A 0 0 0 0 B 0 394 0 0 0 141952 0 0 1 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 absb
L 743 741 -1
S 744 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1176 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 745 7 4 0 4 85 747 624 5415 800004 100 A 0 0 0 0 B 0 395 0 0 0 198352 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 selfref
S 746 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 120 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 747 7 4 0 4 88 749 624 5423 800004 100 A 0 0 0 0 B 0 395 0 0 0 198832 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 forref
S 748 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 749 7 4 0 4 91 1 624 5430 800004 100 A 0 0 0 0 B 0 396 0 0 0 199024 0 0 0 0 0 0 751 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 sfluxref
S 750 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 60 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 751 11 0 0 4 9 1 624 5439 40800000 805000 A 0 0 0 0 B 0 400 0 0 0 199264 0 0 712 749 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _rrsw_kg17$0
A 13 2 0 0 0 6 632 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 20 2 0 0 0 6 638 0 0 0 20 0 0 0 0 0 0 0 0 0 0 0
A 46 2 0 0 0 6 648 0 0 0 46 0 0 0 0 0 0 0 0 0 0 0
A 51 2 0 0 0 6 650 0 0 0 51 0 0 0 0 0 0 0 0 0 0 0
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
A 104 2 0 0 0 6 729 0 0 0 104 0 0 0 0 0 0 0 0 0 0 0
A 105 2 0 0 0 6 731 0 0 0 105 0 0 0 0 0 0 0 0 0 0 0
A 106 2 0 0 0 6 733 0 0 0 106 0 0 0 0 0 0 0 0 0 0 0
A 107 2 0 0 0 6 738 0 0 0 107 0 0 0 0 0 0 0 0 0 0 0
A 108 2 0 0 0 6 740 0 0 0 108 0 0 0 0 0 0 0 0 0 0 0
A 109 2 0 0 0 6 742 0 0 0 109 0 0 0 0 0 0 0 0 0 0 0
A 110 2 0 0 0 6 744 0 0 0 110 0 0 0 0 0 0 0 0 0 0 0
A 111 2 0 0 0 6 746 0 0 0 111 0 0 0 0 0 0 0 0 0 0 0
A 112 2 0 0 0 6 748 0 0 0 112 0 0 0 0 0 0 0 0 0 0 0
A 113 2 0 0 0 6 750 0 0 0 113 0 0 0 0 0 0 0 0 0 0 0
E 0 398 741 1 0 3 3 92 3 -1
E 0 0 743 0 0 3 3 -1
E 0 398 737 1 0 3 3 3 3 -1
E 0 0 739 0 0 3 3 -1
Z
Z
