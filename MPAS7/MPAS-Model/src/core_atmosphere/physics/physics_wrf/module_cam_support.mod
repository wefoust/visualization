V34 :0x4 module_cam_support
20 module_cam_support.F S624 0
06/14/2019  09:55:27
use shr_kind_mod public 0 direct
use mpas_atmphys_utilities private
enduse
D 60 23 10 1 43 42 0 1 0 0 1
 34 38 40 34 38 36
D 63 23 6 1 0 31 0 0 0 0 0
 0 31 0 3 31 0
D 66 20 44
D 68 23 10 2 49 0 0 0 1 1 0
 0 50 3 3 51 51
 0 0 51 3 0 52
S 624 24 0 0 0 6 1 0 5015 10005 0 A 0 0 0 0 B 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 module_cam_support
S 626 23 0 0 0 9 638 624 5057 4 0 A 0 0 0 0 B 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 physics_error_fatal
R 638 14 10 mpas_atmphys_utilities physics_error_fatal
S 639 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 652 16 1 0 0 6 1 624 5261 14 400000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 8 14 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 r8
S 653 16 0 0 0 18 1 624 5264 4 400000 A 0 0 0 0 B 0 27 0 0 0 0 0 0 -1 27 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 masterproc
S 654 3 0 0 0 18 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 655 16 0 0 0 6 1 624 5275 4 400000 A 0 0 0 0 B 0 30 0 0 0 0 0 0 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 pcols
S 656 6 4 0 0 6 657 624 5281 4 0 A 0 0 0 0 B 0 31 0 0 0 0 0 0 0 0 0 0 675 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 pver
S 657 6 4 0 0 6 658 624 5286 4 0 A 0 0 0 0 B 0 32 0 0 0 4 0 0 0 0 0 0 675 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 pverp
S 658 6 4 0 0 6 1 624 5292 40800006 0 A 0 0 0 0 B 0 37 0 0 0 8 0 0 0 0 0 0 675 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 z_b_0
S 659 7 6 0 0 60 1 624 5298 10a00024 51 A 0 0 0 0 B 0 37 0 0 0 0 662 0 0 0 664 0 0 0 0 0 0 0 0 661 0 0 663 624 0 0 0 0 qmin
S 660 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 661 8 4 0 0 63 656 624 5303 40822064 1020 A 0 0 0 0 B 0 37 0 0 0 0 0 0 0 0 0 0 675 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 qmin$sd
S 662 6 4 0 0 7 663 624 5311 40802061 1020 A 0 0 0 0 B 0 37 0 0 0 72 0 0 0 0 0 0 675 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 qmin$p
S 663 6 4 0 0 7 661 624 5318 40802060 1020 A 0 0 0 0 B 0 37 0 0 0 80 0 0 0 0 0 0 675 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 qmin$o
S 664 22 1 0 0 9 1 624 5325 40000000 1000 A 0 0 0 0 B 0 37 0 0 0 0 0 659 0 0 0 0 661 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 qmin$arrdsc
S 665 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 666 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 667 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 668 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 669 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 250 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 670 6 4 0 0 66 1 624 5337 4 0 A 0 0 0 0 B 0 52 0 0 0 0 0 0 0 0 0 0 676 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 iulog
S 671 16 0 0 0 6 1 624 5343 4 400000 A 0 0 0 0 B 0 56 0 0 0 0 0 0 100 45 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 phys_decomp
S 672 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 100 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 673 16 0 0 0 6 1 624 5355 4 400000 A 0 0 0 0 B 0 59 0 0 0 0 0 0 16 47 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 fieldname_len
S 674 3 0 0 0 6 0 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 675 11 0 0 0 9 632 624 5369 40800000 805000 A 0 0 0 0 B 0 62 0 0 0 100 0 0 662 658 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _module_cam_support$0
S 676 11 0 0 0 9 675 624 5391 40800000 805000 A 0 0 0 0 B 0 62 0 0 0 250 0 0 670 670 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 _module_cam_support$1
S 677 23 5 0 0 0 679 624 5413 0 0 A 0 0 0 0 B 0 113 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 endrun
S 678 1 3 1 0 30 1 677 5420 80000004 43000 A 0 0 0 0 B 0 113 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 msg
S 679 14 5 0 0 0 1 677 5413 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 6 1 0 0 0 0 0 0 0 0 0 0 0 0 95 0 624 0 0 0 0 endrun
F 679 1 678
S 680 23 5 0 0 0 682 624 5424 0 0 A 0 0 0 0 B 0 127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t_stopf
S 681 1 3 1 0 30 1 680 5432 4 43000 A 0 0 0 0 B 0 127 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 event
S 682 14 5 0 0 0 1 680 5424 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 8 1 0 0 0 0 0 0 0 0 0 0 0 0 118 0 624 0 0 0 0 t_stopf
F 682 1 681
S 683 23 5 0 0 0 685 624 5438 0 0 A 0 0 0 0 B 0 142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 t_startf
S 684 1 3 1 0 30 1 683 5432 4 43000 A 0 0 0 0 B 0 142 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 event
S 685 14 5 0 0 0 1 683 5438 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10 1 0 0 0 0 0 0 0 0 0 0 0 0 132 0 624 0 0 0 0 t_startf
F 685 1 684
S 686 23 5 0 0 0 691 624 5447 0 0 A 0 0 0 0 B 0 159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 outfld
S 687 1 3 1 0 30 1 686 5454 4 43000 A 0 0 0 0 B 0 159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fname
S 688 7 3 1 0 68 1 686 5460 800304 3000 A 0 0 0 0 B 0 159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 field
S 689 6 3 1 0 6 1 686 1271 800004 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 idim
S 690 1 3 1 0 6 1 686 5466 4 3000 A 0 0 0 0 B 0 159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 c
S 691 14 5 0 0 0 1 686 5447 300 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 12 4 0 0 0 0 0 0 0 0 0 0 0 0 147 0 624 0 0 0 0 outfld
F 691 4 687 688 689 690
S 692 6 1 0 0 6 1 686 5468 40800006 3000 A 0 0 0 0 B 0 159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_49
S 693 6 1 0 0 6 1 686 5475 40800006 3000 A 0 0 0 0 B 0 159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_0_1
S 694 6 1 0 0 6 1 686 5483 40800006 3000 A 0 0 0 0 B 0 159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_52
S 695 23 5 0 0 0 705 624 5490 0 0 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 addfld
S 696 1 3 1 0 30 1 695 5454 4 43000 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 fname
S 697 1 3 1 0 30 1 695 5497 4 43000 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 units
S 698 1 3 1 0 6 1 695 5503 4 3000 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 numlev
S 699 1 3 1 0 22 1 695 5510 4 3000 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 avgflag
S 700 1 3 1 0 30 1 695 5518 4 43000 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 long_name
S 701 1 3 1 0 6 1 695 5528 4 3000 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 decomp_type
S 702 1 3 1 0 18 1 695 5540 80000004 3000 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 flag_xyfill
S 703 1 3 1 0 18 1 695 5552 80000004 3000 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 flag_isccplev
S 704 1 3 1 0 30 1 695 5566 80000004 43000 A 0 0 0 0 B 0 184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 sampling_seq
S 705 14 5 0 0 0 1 695 5490 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 17 9 0 0 0 0 0 0 0 0 0 0 0 0 164 0 624 0 0 0 0 addfld
F 705 9 696 697 698 699 700 701 702 703 704
A 14 2 0 0 0 6 639 0 0 0 14 0 0 0 0 0 0 0 0 0 0 0
A 27 2 0 0 0 18 654 0 0 0 27 0 0 0 0 0 0 0 0 0 0 0
A 31 2 0 0 0 6 660 0 0 0 31 0 0 0 0 0 0 0 0 0 0 0
A 32 2 0 0 0 6 665 0 0 0 32 0 0 0 0 0 0 0 0 0 0 0
A 33 1 0 1 0 63 661 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 34 10 0 0 0 6 33 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 32
A 35 2 0 0 0 6 666 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0
A 36 10 0 0 34 6 33 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 35
A 37 4 0 0 0 6 36 0 3 0 0 0 0 2 0 0 0 0 0 0 0 0
A 38 4 0 0 0 6 34 0 37 0 0 0 0 1 0 0 0 0 0 0 0 0
A 39 2 0 0 0 6 667 0 0 0 39 0 0 0 0 0 0 0 0 0 0 0
A 40 10 0 0 36 6 33 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 39
A 41 2 0 0 0 6 668 0 0 0 41 0 0 0 0 0 0 0 0 0 0 0
A 42 10 0 0 40 6 33 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 41
A 43 10 0 0 42 6 33 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 14
A 44 2 0 0 0 6 669 0 0 0 44 0 0 0 0 0 0 0 0 0 0 0
A 45 2 0 0 0 6 672 0 0 0 45 0 0 0 0 0 0 0 0 0 0 0
A 47 2 0 0 0 6 674 0 0 0 47 0 0 0 0 0 0 0 0 0 0 0
A 49 1 0 0 0 6 694 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 50 1 0 0 0 6 689 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 51 1 0 0 0 6 692 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 52 1 0 0 0 6 693 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z