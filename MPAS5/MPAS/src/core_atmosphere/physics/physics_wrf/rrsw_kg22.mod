V33 :0x4 rrsw_kg22
20 module_ra_rrtmg_sw.F S624 0
05/29/2019  15:27:28
use parrrsw private
use parkind private
enduse
D 56 21 8 4 96 95 0 0 0 0 0
 0 90 3 3 90 90
 0 91 90 3 91 91
 0 92 93 3 92 92
 0 20 94 3 20 20
D 59 21 8 3 101 100 0 0 0 0 0
 0 91 3 3 91 91
 92 97 91 92 97 98
 0 20 99 3 20 20
D 62 21 8 2 103 102 0 0 0 0 0
 0 51 3 3 51 51
 0 20 51 3 20 20
D 65 21 8 2 13 104 0 0 0 0 0
 0 41 3 3 41 41
 0 20 41 3 20 20
D 68 21 8 2 106 105 0 0 0 0 0
 0 20 3 3 20 20
 0 90 20 3 90 90
D 71 21 8 4 96 107 0 0 0 0 0
 0 90 3 3 90 90
 0 91 90 3 91 91
 0 92 93 3 92 92
 0 28 94 3 28 28
D 74 21 8 2 108 107 0 0 0 0 0
 0 94 3 3 94 94
 0 28 94 3 28 28
D 77 21 8 3 101 109 0 0 0 0 0
 0 91 3 3 91 91
 92 97 91 92 97 98
 0 28 99 3 28 28
D 80 21 8 2 110 109 0 0 0 0 0
 0 99 3 3 99 99
 0 28 99 3 28 28
D 83 21 8 2 103 111 0 0 0 0 0
 0 51 3 3 51 51
 0 28 51 3 28 28
D 86 21 8 2 13 24 0 0 0 0 0
 0 41 3 3 41 41
 0 28 41 3 28 28
D 89 21 8 2 41 63 0 0 0 0 0
 0 28 3 3 28 28
 0 90 28 3 90 90
S 624 24 0 0 0 8 1 0 5015 5 0 A 0 0 0 0 B 0 666 0 0 0 0 0 0 0 0 0 0 729 0 0 0 0 0 0 0 0 666 0 0 0 0 0 0 rrsw_kg22
S 626 23 0 0 0 6 634 624 5033 0 0 A 0 0 0 0 B 0 668 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 im
S 628 23 0 0 0 8 636 624 5044 0 0 A 0 0 0 0 B 0 668 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rb
S 631 23 0 0 0 6 688 624 5063 4 0 A 0 0 0 0 B 0 669 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ng22
S 632 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 634 16 2 parkind kind_im
R 636 16 4 parkind kind_rb
S 638 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 640 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 642 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 647 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 650 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 651 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 688 16 25 parrrsw ng22
S 711 16 1 0 0 6 0 624 5338 800004 400000 A 0 0 0 0 B 0 692 0 0 0 0 0 0 16 20 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 no22
S 712 7 4 0 4 56 720 624 5343 800004 100 A 0 0 0 0 B 0 694 0 0 0 0 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 kao
S 713 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 714 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 715 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 716 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 45 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 717 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 585 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 718 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 9360 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 719 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 640 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 720 7 4 0 4 59 726 624 5347 800004 100 A 0 0 0 0 B 0 695 0 0 0 37440 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 kbo
S 721 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 59 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 722 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 47 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 723 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 235 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 724 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3760 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 725 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 301 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 726 7 4 0 4 62 729 624 5351 800004 100 A 0 0 0 0 B 0 696 0 0 0 52480 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 selfrefo
S 727 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 160 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 728 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 729 7 4 0 4 65 731 624 5360 800004 100 A 0 0 0 0 B 0 696 0 0 0 53120 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 forrefo
S 730 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 731 7 4 0 4 68 734 624 5368 800004 100 A 0 0 0 0 B 0 697 0 0 0 53312 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 sfluxrefo
S 732 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 144 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 733 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 734 6 4 0 0 6 735 624 5378 4 0 A 0 0 0 0 B 0 699 0 0 0 53888 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 layreffr
S 735 6 4 0 0 8 736 624 5387 4 0 A 0 0 0 0 B 0 700 0 0 0 53892 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rayl
S 736 6 4 0 0 8 739 624 5392 4 0 A 0 0 0 0 B 0 700 0 0 0 53896 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 strrat
S 737 7 4 0 0 71 743 624 5399 810004 0 A 0 0 0 0 B 0 722 0 0 0 53904 0 0 4 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 ka
L 737 739 -1
S 738 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1170 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 739 7 4 0 4 74 737 624 5402 800004 100 A 0 0 0 0 B 0 722 0 0 0 53904 0 0 3 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 absa
L 739 737 -1
S 740 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 586 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 741 7 4 0 0 77 745 624 5407 810004 0 A 0 0 0 0 B 0 723 0 0 0 58592 0 0 2 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 kb
L 741 743 -1
S 742 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 470 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 743 7 4 0 4 80 741 624 5410 800004 100 A 0 0 0 0 B 0 723 0 0 0 58592 0 0 1 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 absb
L 743 741 -1
S 744 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 236 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 745 7 4 0 4 83 747 624 5415 800004 100 A 0 0 0 0 B 0 724 0 0 0 60480 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 selfref
S 746 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 747 7 4 0 4 86 748 624 5423 800004 100 A 0 0 0 0 B 0 724 0 0 0 60560 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 forref
S 748 7 4 0 4 89 1 624 5430 800004 100 A 0 0 0 0 B 0 725 0 0 0 60592 0 0 0 0 0 0 749 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 sfluxref
S 749 11 0 0 4 8 1 624 5439 40800000 805000 A 0 0 0 0 B 0 729 0 0 0 60664 0 0 712 748 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _rrsw_kg22$0
A 13 2 0 0 0 6 632 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 20 2 0 0 0 6 638 0 0 0 20 0 0 0 0 0 0 0 0 0 0 0
A 24 2 0 0 0 6 640 0 0 0 24 0 0 0 0 0 0 0 0 0 0 0
A 28 2 0 0 0 6 642 0 0 0 28 0 0 0 0 0 0 0 0 0 0 0
A 41 2 0 0 0 6 647 0 0 0 41 0 0 0 0 0 0 0 0 0 0 0
A 51 2 0 0 0 6 650 0 0 0 51 0 0 0 0 0 0 0 0 0 0 0
A 63 2 0 0 0 6 651 0 0 0 63 0 0 0 0 0 0 0 0 0 0 0
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
A 102 2 0 0 0 6 727 0 0 0 102 0 0 0 0 0 0 0 0 0 0 0
A 103 2 0 0 0 6 728 0 0 0 103 0 0 0 0 0 0 0 0 0 0 0
A 104 2 0 0 0 6 730 0 0 0 104 0 0 0 0 0 0 0 0 0 0 0
A 105 2 0 0 0 6 732 0 0 0 105 0 0 0 0 0 0 0 0 0 0 0
A 106 2 0 0 0 6 733 0 0 0 106 0 0 0 0 0 0 0 0 0 0 0
A 107 2 0 0 0 6 738 0 0 0 107 0 0 0 0 0 0 0 0 0 0 0
A 108 2 0 0 0 6 740 0 0 0 108 0 0 0 0 0 0 0 0 0 0 0
A 109 2 0 0 0 6 742 0 0 0 109 0 0 0 0 0 0 0 0 0 0 0
A 110 2 0 0 0 6 744 0 0 0 110 0 0 0 0 0 0 0 0 0 0 0
A 111 2 0 0 0 6 746 0 0 0 111 0 0 0 0 0 0 0 0 0 0 0
E 0 727 741 1 0 3 92 3 -1
E 0 0 743 0 0 3 3 -1
E 0 727 737 1 0 3 3 3 3 -1
E 0 0 739 0 0 3 3 -1
Z
Z
