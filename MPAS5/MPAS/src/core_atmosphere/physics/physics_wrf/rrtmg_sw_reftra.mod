V33 :0x4 rrtmg_sw_reftra
20 module_ra_rrtmg_sw.F S624 0
05/29/2019  15:27:28
use rrsw_vsn private
use rrsw_tbl private
use parkind private
enduse
D 63 21 16 1 28 31 1 1 0 0 1
 3 29 3 3 29 30
D 66 21 8 1 32 35 1 1 0 0 1
 3 33 3 3 33 34
D 69 21 8 1 36 39 1 1 0 0 1
 3 37 3 3 37 38
D 72 21 8 1 40 43 1 1 0 0 1
 3 41 3 3 41 42
D 75 21 8 1 44 47 1 1 0 0 1
 3 45 3 3 45 46
D 78 21 8 1 48 51 1 1 0 0 1
 3 49 3 3 49 50
D 81 21 8 1 52 55 1 1 0 0 1
 3 53 3 3 53 54
D 84 21 8 1 56 59 1 1 0 0 1
 3 57 3 3 57 58
S 624 24 0 0 0 8 1 0 5015 10005 0 A 0 0 0 0 B 0 2415 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2415 0 0 0 0 0 0 rrtmg_sw_reftra
S 626 23 0 0 0 6 640 624 5039 0 0 A 0 0 0 0 B 0 2429 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 im
S 628 23 0 0 0 8 642 624 5050 0 0 A 0 0 0 0 B 0 2429 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 rb
S 631 23 0 0 0 8 651 624 5070 4 0 A 0 0 0 0 B 0 2430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 tblint
S 632 23 0 0 0 8 656 624 5077 4 0 A 0 0 0 0 B 0 2430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 bpade
S 633 23 0 0 0 8 652 624 5083 4 0 A 0 0 0 0 B 0 2430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 od_lo
S 634 23 0 0 0 8 654 624 5089 4 0 A 0 0 0 0 B 0 2430 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 exp_tbl
S 636 23 0 0 0 8 664 624 5106 4 0 A 0 0 0 0 B 0 2431 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 hvrrft
S 637 23 0 0 0 8 677 624 5113 4 0 A 0 0 0 0 B 0 2431 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 hnamrft
R 640 16 2 parkind kind_im
R 642 16 4 parkind kind_rb
R 651 16 4 rrsw_tbl tblint
R 652 16 5 rrsw_tbl od_lo
R 654 7 7 rrsw_tbl exp_tbl
R 656 6 9 rrsw_tbl bpade
R 664 6 5 rrsw_vsn hvrrft
R 677 6 18 rrsw_vsn hnamrft
S 689 23 5 0 0 0 700 624 5372 0 0 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 reftra_sw
S 690 1 3 1 0 6 1 689 5382 4 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 nlayers
S 691 7 3 1 0 63 1 689 5390 20000004 10003000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 lrtchk
S 692 7 3 1 0 66 1 689 5397 20000004 10003000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 pgg
S 693 1 3 1 0 8 1 689 5401 4 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 prmuz
S 694 7 3 1 0 69 1 689 5407 20000004 10003000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ptau
S 695 7 3 1 0 72 1 689 5412 20000004 10003000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 pw
S 696 7 3 3 0 75 1 689 5415 20000004 10003000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 pref
S 697 7 3 3 0 78 1 689 5420 20000004 10003000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 prefd
S 698 7 3 3 0 81 1 689 5426 20000004 10003000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ptra
S 699 7 3 3 0 84 1 689 5431 20000004 10003000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ptrad
S 700 14 5 0 0 0 1 689 5372 20000000 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 2 10 0 0 0 0 0 0 0 0 0 0 0 0 2438 0 624 0 0 0 0 reftra_sw
F 700 10 690 691 692 693 694 695 696 697 698 699
S 701 6 1 0 0 6 1 689 5437 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_1
S 702 6 1 0 0 6 1 689 5443 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_2
S 703 6 1 0 0 6 1 689 5449 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_3
S 704 6 1 0 0 6 1 689 5455 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_468
S 705 6 1 0 0 6 1 689 5463 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_5
S 706 6 1 0 0 6 1 689 5469 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_6
S 707 6 1 0 0 6 1 689 5475 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_7
S 708 6 1 0 0 6 1 689 5481 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_475
S 709 6 1 0 0 6 1 689 5489 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_9
S 710 6 1 0 0 6 1 689 5495 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_10
S 711 6 1 0 0 6 1 689 5502 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_11
S 712 6 1 0 0 6 1 689 5509 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_482
S 713 6 1 0 0 6 1 689 5517 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_13
S 714 6 1 0 0 6 1 689 5524 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_14
S 715 6 1 0 0 6 1 689 5531 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_15
S 716 6 1 0 0 6 1 689 5538 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_489
S 717 6 1 0 0 6 1 689 5546 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_17
S 718 6 1 0 0 6 1 689 5553 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_18
S 719 6 1 0 0 6 1 689 5560 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_19
S 720 6 1 0 0 6 1 689 5567 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_496
S 721 6 1 0 0 6 1 689 5575 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_21
S 722 6 1 0 0 6 1 689 5582 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_22
S 723 6 1 0 0 6 1 689 5589 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_23
S 724 6 1 0 0 6 1 689 5596 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_503
S 725 6 1 0 0 6 1 689 5604 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_25
S 726 6 1 0 0 6 1 689 5611 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_26
S 727 6 1 0 0 6 1 689 5618 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_27
S 728 6 1 0 0 6 1 689 5625 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_510
S 729 6 1 0 0 6 1 689 5633 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_29
S 730 6 1 0 0 6 1 689 5640 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_30
S 731 6 1 0 0 6 1 689 5647 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_b_31
S 732 6 1 0 0 6 1 689 5654 40800006 3000 A 0 0 0 0 B 0 2717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 z_e_517
A 28 1 0 0 0 6 703 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 29 1 0 0 0 6 701 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 30 1 0 0 0 6 704 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 31 1 0 0 0 6 702 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 32 1 0 0 0 6 707 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 33 1 0 0 0 6 705 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 34 1 0 0 0 6 708 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 35 1 0 0 0 6 706 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 36 1 0 0 0 6 711 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 37 1 0 0 0 6 709 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 38 1 0 0 0 6 712 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 39 1 0 0 0 6 710 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 40 1 0 0 0 6 715 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 41 1 0 0 0 6 713 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 42 1 0 0 0 6 716 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 43 1 0 0 0 6 714 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 44 1 0 0 0 6 719 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 45 1 0 0 0 6 717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 46 1 0 0 0 6 720 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 47 1 0 0 0 6 718 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 48 1 0 0 3 6 723 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 49 1 0 0 2 6 721 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 50 1 0 0 11 6 724 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 51 1 0 0 10 6 722 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 52 1 0 0 0 6 727 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 53 1 0 0 0 6 725 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 54 1 0 0 0 6 728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 55 1 0 0 0 6 726 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 56 1 0 0 0 6 731 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 57 1 0 0 0 6 729 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 58 1 0 0 0 6 732 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 59 1 0 0 0 6 730 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
Z
