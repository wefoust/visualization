V34 :0x4 mcica_random_numbers
20 module_ra_rrtmg_lw.F S624 0
06/14/2019  09:55:51
use parkind private
use mersennetwister private
enduse
D 58 26 657 2500 656 3
D 73 26 713 2500 712 3
D 79 23 6 1 0 3 0 0 0 0 0
 0 3 0 3 3 0
D 82 23 6 1 37 40 1 1 0 0 1
 3 38 3 3 38 39
D 85 23 9 1 41 44 1 1 0 0 1
 3 42 3 3 42 43
D 88 23 9 2 45 51 1 1 0 0 1
 3 46 3 3 46 47
 3 48 49 3 48 50
S 624 24 0 0 0 6 1 0 5015 10015 0 A 0 0 0 0 B 0 1944 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1944 0 0 0 0 0 0 mcica_random_numbers
S 626 23 0 0 0 9 656 624 5052 14 0 A 0 0 0 0 B 0 1952 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 randomnumbersequence
S 627 23 0 0 0 6 660 624 5073 14 0 A 0 0 0 0 B 0 1952 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 new_randomnumbersequence
S 628 23 0 0 0 9 707 624 5098 14 0 A 0 0 0 0 B 0 1952 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 getrandomreal
S 630 23 0 0 0 6 636 624 5120 10 0 A 0 0 0 0 B 0 1957 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 im
S 632 23 0 0 0 9 638 624 5131 10 0 A 0 0 0 0 B 0 1957 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rb
R 636 16 2 parkind kind_im
R 638 16 4 parkind kind_rb
R 656 25 10 mersennetwister randomnumbersequence
R 657 5 11 mersennetwister currentelement randomnumbersequence
R 658 5 12 mersennetwister state randomnumbersequence
R 660 19 14 mersennetwister new_randomnumbersequence
R 707 14 61 mersennetwister getrandomreal
S 712 25 0 0 0 73 1 624 5447 10000004 800010 A 0 0 0 0 B 0 1962 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 714 0 0 0 624 0 0 0 0 randomnumberstream
S 713 5 0 0 0 58 1 624 5466 800004 0 A 0 0 0 0 B 0 1963 0 0 0 0 0 0 73 0 0 0 0 0 0 0 0 0 0 0 1 713 0 624 0 0 0 0 thenumbers
S 714 8 5 0 0 79 1 624 5477 40822004 1220 A 0 0 0 0 B 0 1964 0 0 0 0 0 73 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mcica_random_numbers$$$randomnumberstream$td
S 715 19 0 0 0 9 1 624 5522 4000 0 A 0 0 0 0 B 0 1966 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16 3 0 0 0 0 0 624 0 0 0 0 getrandomnumbers
O 715 3 718 717 716
S 716 27 0 0 0 9 734 624 5539 10 400000 A 0 0 0 0 B 0 1967 0 0 0 0 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 getrandomnumber_scalar
Q 716 715 0
S 717 27 0 0 0 9 738 624 5562 10 400000 A 0 0 0 0 B 0 1967 0 0 0 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 getrandomnumber_1d
Q 717 715 0
S 718 27 0 0 0 9 746 624 5581 10 400000 A 0 0 0 0 B 0 1967 0 0 0 0 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 getrandomnumber_2d
Q 718 715 0
S 719 19 0 0 0 6 1 624 5600 4000 0 A 0 0 0 0 B 0 1970 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 2 0 0 0 0 0 624 0 0 0 0 initializerandomnumberstream
O 719 2 721 720
S 720 27 0 0 0 6 722 624 5629 10 400000 A 0 0 0 0 B 0 1971 0 0 0 0 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 initializerandomnumberstream_s
Q 720 719 0
S 721 27 0 0 0 6 726 624 5660 10 400000 A 0 0 0 0 B 0 1971 0 0 0 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 initializerandomnumberstream_v
Q 721 719 0
S 722 23 5 0 0 6 725 624 5629 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 initializerandomnumberstream_s
S 723 1 3 1 0 6 1 722 5411 14 3000 A 0 0 0 0 B 0 1989 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 seed
S 724 1 3 0 0 73 1 722 5691 14 1003000 A 0 0 0 0 B 0 1989 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 new
S 725 14 5 0 0 73 1 722 5629 14 1400000 A 0 0 0 0 B 0 0 0 0 0 0 0 24 1 0 0 724 0 0 0 0 0 0 0 0 0 1983 0 624 0 0 0 0 initializerandomnumberstream_s
F 725 1 723
S 726 23 5 0 0 6 729 624 5660 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 initializerandomnumberstream_v
S 727 7 3 1 0 82 1 726 5411 20000014 10003000 A 0 0 0 0 B 0 1997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 seed
S 728 1 3 0 0 73 1 726 5695 14 1003000 A 0 0 0 0 B 0 1997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 new
S 729 14 5 0 0 73 1 726 5660 20000014 1400000 A 0 0 0 0 B 0 0 0 0 0 0 0 26 1 0 0 728 0 0 0 0 0 0 0 0 0 1991 0 624 0 0 0 0 initializerandomnumberstream_v
F 729 1 727
S 730 6 1 0 0 6 1 726 5422 40800016 3000 A 0 0 0 0 B 0 1997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1
S 731 6 1 0 0 6 1 726 5428 40800016 3000 A 0 0 0 0 B 0 1997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2
S 732 6 1 0 0 6 1 726 5434 40800016 3000 A 0 0 0 0 B 0 1997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3
S 733 6 1 0 0 6 1 726 5440 40800016 3000 A 0 0 0 0 B 0 1997 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_89
S 734 23 5 0 0 0 737 624 5539 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 getrandomnumber_scalar
S 735 1 3 3 0 73 1 734 5699 14 3000 A 0 0 0 0 B 0 2006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 stream
S 736 1 3 2 0 9 1 734 5706 14 3000 A 0 0 0 0 B 0 2006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 number
S 737 14 5 0 0 0 1 734 5539 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 28 2 0 0 0 0 0 0 0 0 0 0 0 0 2001 0 624 0 0 0 0 getrandomnumber_scalar
F 737 2 735 736
S 738 23 5 0 0 0 741 624 5562 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 getrandomnumber_1d
S 739 1 3 3 0 73 1 738 5699 14 3000 A 0 0 0 0 B 0 2018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 stream
S 740 7 3 2 0 85 1 738 5713 20000014 10003000 A 0 0 0 0 B 0 2018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 numbers
S 741 14 5 0 0 0 1 738 5562 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 31 2 0 0 0 0 0 0 0 0 0 0 0 0 2008 0 624 0 0 0 0 getrandomnumber_1d
F 741 2 739 740
S 742 6 1 0 0 6 1 738 5422 40800016 3000 A 0 0 0 0 B 0 2018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1
S 743 6 1 0 0 6 1 738 5428 40800016 3000 A 0 0 0 0 B 0 2018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2
S 744 6 1 0 0 6 1 738 5434 40800016 3000 A 0 0 0 0 B 0 2018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3
S 745 6 1 0 0 6 1 738 5440 40800016 3000 A 0 0 0 0 B 0 2018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_89
S 746 23 5 0 0 0 749 624 5581 10 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 getrandomnumber_2d
S 747 1 3 3 0 73 1 746 5699 14 3000 A 0 0 0 0 B 0 2030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 stream
S 748 7 3 2 0 88 1 746 5713 20000014 10003000 A 0 0 0 0 B 0 2030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 numbers
S 749 14 5 0 0 0 1 746 5581 20000010 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 34 2 0 0 0 0 0 0 0 0 0 0 0 0 2020 0 624 0 0 0 0 getrandomnumber_2d
F 749 2 747 748
S 750 6 1 0 0 6 1 746 5422 40800016 3000 A 0 0 0 0 B 0 2030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1
S 751 6 1 0 0 6 1 746 5428 40800016 3000 A 0 0 0 0 B 0 2030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2
S 752 6 1 0 0 6 1 746 5721 40800016 3000 A 0 0 0 0 B 0 2030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_4
S 753 6 1 0 0 6 1 746 5727 40800016 3000 A 0 0 0 0 B 0 2030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5
S 754 6 1 0 0 6 1 746 5733 40800016 3000 A 0 0 0 0 B 0 2030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6
S 755 6 1 0 0 6 1 746 5739 40800016 3000 A 0 0 0 0 B 0 2030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_92
S 756 6 1 0 0 6 1 746 5746 40800016 3000 A 0 0 0 0 B 0 2030 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_95
A 37 1 0 0 0 6 732 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 38 1 0 0 0 6 730 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 39 1 0 0 0 6 733 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 40 1 0 0 0 6 731 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 41 1 0 0 0 6 744 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 42 1 0 0 0 6 742 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 43 1 0 0 0 6 745 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 44 1 0 0 0 6 743 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 45 1 0 0 26 6 754 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 46 1 0 0 0 6 750 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 47 1 0 0 24 6 755 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 48 1 0 0 20 6 752 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 49 1 0 0 18 6 751 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 50 1 0 0 28 6 756 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 51 1 0 0 22 6 753 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z