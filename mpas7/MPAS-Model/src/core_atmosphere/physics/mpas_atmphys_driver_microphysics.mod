V34 :0x4 mpas_atmphys_driver_microphysics
34 mpas_atmphys_driver_microphysics.F S624 0
06/17/2019  15:47:16
use esmf_clockmod private
use esmf_shrtimemod private
use pio_types private
use module_mp_thompson private
use module_mp_radar private
use esmf_stubs private
use esmf_calendarmod private
use iso_fortran_env private
use iso_c_binding private
use esmf_timemod private
use esmf_alarmmod private
use mpas_derived_types private
use mpas_dmpar private
use esmf_timeintervalmod private
use esmf_basetimemod private
use esmf_basemod private
use mpas_timer private
enduse
D 58 26 665 8 664 7
D 67 26 668 8 667 7
D 76 23 6 1 3 13 0 0 0 0 0
 0 13 3 3 13 13
D 79 23 6 1 3 13 0 0 0 0 0
 0 13 3 3 13 13
D 82 23 6 1 3 13 0 0 0 0 0
 0 13 3 3 13 13
D 85 23 6 1 3 13 0 0 0 0 0
 0 13 3 3 13 13
D 88 23 6 1 3 24 0 0 0 0 0
 0 24 3 3 24 24
D 91 23 6 1 3 24 0 0 0 0 0
 0 24 3 3 24 24
D 2710 26 8045 4 8044 3
D 2719 26 8049 16 8048 7
D 2728 22 2710
D 4948 26 16155 4 16154 3
D 4957 26 16170 8 16169 7
D 4966 26 16177 4 16176 3
D 5022 26 16223 4 16222 3
D 5155 23 6 1 3 193 0 0 0 0 0
 0 193 3 3 193 193
D 5158 23 6 1 3 193 0 0 0 0 0
 0 193 3 3 193 193
D 5161 23 6 1 3 193 0 0 0 0 0
 0 193 3 3 193 193
D 5164 23 6 1 3 193 0 0 0 0 0
 0 193 3 3 193 193
D 5191 26 16625 4 16624 3
D 5200 26 16632 12 16631 3
D 5209 26 16638 76 16637 3
D 5215 23 6 1 3 193 0 0 0 0 0
 0 193 3 3 193 193
D 5284 26 16638 76 16637 3
D 5293 26 16733 40 16732 7
D 5302 22 5284
D 5372 26 16638 76 16637 3
D 5378 26 16733 40 16732 7
D 5384 22 5372
D 5386 26 16746 80 16745 7
D 5431 26 16936 4 16935 3
D 5440 26 16945 4 16944 3
D 5578 26 16638 76 16637 3
D 5584 26 16733 40 16732 7
D 5590 22 5578
D 5592 26 16638 76 16637 3
D 5598 26 16733 40 16732 7
D 5604 22 5592
D 5606 26 16746 80 16745 7
D 5626 26 16987 488 16986 7
D 5637 26 17002 8 17001 7
D 5646 22 5626
D 5708 26 16638 76 16637 3
D 5714 26 16733 40 16732 7
D 5720 22 5708
D 5722 26 16638 76 16637 3
D 5728 26 16733 40 16732 7
D 5734 22 5722
D 5736 26 16746 80 16745 7
D 5796 26 17002 8 17001 7
D 5804 26 17152 384 17151 7
D 5816 22 5796
D 5821 26 17170 8 17169 7
D 5830 22 5804
D 6425 26 8045 4 8044 3
D 6431 26 8049 16 8048 7
D 6437 22 6425
D 6451 20 260
D 6510 26 16638 76 16637 3
D 6516 26 16733 40 16732 7
D 6522 22 6510
D 6524 26 16638 76 16637 3
D 6530 26 16733 40 16732 7
D 6536 22 6524
D 6538 26 16746 80 16745 7
D 6644 26 17152 384 17151 7
D 6652 26 17170 8 17169 7
D 6658 22 6644
D 6660 26 17615 8 17613 7
D 6666 26 17621 1224 17614 7
D 6675 22 6666
D 6680 20 2
D 6682 20 19
D 6699 22 6
D 6701 22 9
D 6703 22 6666
D 6744 26 17670 208 17669 7
D 6762 22 7
D 6764 22 7
D 6805 26 17719 104 17717 7
D 6826 26 17734 224 17733 7
D 6847 22 9
D 6849 22 6
D 6851 22 6826
D 6856 26 17760 712 17759 7
D 6877 22 18
D 6879 22 18
D 6881 22 6856
D 6886 26 17783 568 17782 7
D 6892 26 18715 120 17785 7
D 6913 22 6892
D 6915 22 6856
D 6917 22 6826
D 6919 22 6826
D 6921 22 6886
D 6926 26 17816 3528 17814 7
D 6932 26 19425 272 17815 7
D 6980 22 6932
D 6982 22 9
D 6984 22 6682
D 6986 22 6660
D 6988 22 6926
D 6990 22 6926
D 6992 22 6805
D 6994 22 6805
D 6996 22 6805
D 7001 26 17875 2992 17874 7
D 7049 22 6932
D 7051 22 9
D 7053 22 6682
D 7055 22 6660
D 7057 22 7001
D 7059 22 7001
D 7061 22 6805
D 7063 22 6805
D 7065 22 6805
D 7070 26 17933 2448 17932 7
D 7118 22 6932
D 7120 22 9
D 7122 22 6682
D 7124 22 6660
D 7126 22 7070
D 7128 22 7070
D 7130 22 6805
D 7132 22 6805
D 7134 22 6805
D 7139 26 17990 1912 17989 7
D 7187 22 6932
D 7189 22 9
D 7191 22 6682
D 7193 22 6660
D 7195 22 7139
D 7197 22 7139
D 7199 22 6805
D 7201 22 6805
D 7203 22 6805
D 7208 26 18046 1368 18045 7
D 7256 22 6932
D 7258 22 9
D 7260 22 6682
D 7262 22 6660
D 7264 22 7208
D 7266 22 7208
D 7268 22 6805
D 7270 22 6805
D 7272 22 6805
D 7277 26 18101 768 18100 7
D 7313 22 6932
D 7315 22 6682
D 7317 22 6660
D 7319 22 7277
D 7321 22 7277
D 7323 22 6805
D 7325 22 6805
D 7327 22 6805
D 7332 26 18148 2448 18147 7
D 7380 22 6932
D 7382 22 6
D 7384 22 6682
D 7386 22 6660
D 7388 22 7332
D 7390 22 7332
D 7392 22 6805
D 7394 22 6805
D 7396 22 6805
D 7401 26 18205 1912 18204 7
D 7449 22 6932
D 7451 22 6
D 7453 22 6682
D 7455 22 6660
D 7457 22 7401
D 7459 22 7401
D 7461 22 6805
D 7463 22 6805
D 7465 22 6805
D 7470 26 18261 1368 18260 7
D 7518 22 6932
D 7520 22 6
D 7522 22 6682
D 7524 22 6660
D 7526 22 7470
D 7528 22 7470
D 7530 22 6805
D 7532 22 6805
D 7534 22 6805
D 7539 26 18316 768 18315 7
D 7575 22 6932
D 7577 22 6682
D 7579 22 6660
D 7581 22 7539
D 7583 22 7539
D 7585 22 6805
D 7587 22 6805
D 7589 22 6805
D 7594 26 18363 2384 18362 7
D 7642 22 6932
D 7644 22 6682
D 7646 22 6682
D 7648 22 6660
D 7650 22 7594
D 7652 22 7594
D 7654 22 6805
D 7656 22 6805
D 7658 22 6805
D 7663 26 18418 2288 18417 7
D 7699 22 6932
D 7701 22 6682
D 7703 22 6660
D 7705 22 7663
D 7707 22 7663
D 7709 22 6805
D 7711 22 6805
D 7713 22 6805
D 7718 26 18465 768 18464 7
D 7754 22 6932
D 7756 22 6682
D 7758 22 6660
D 7760 22 7718
D 7762 22 7718
D 7764 22 6805
D 7766 22 6805
D 7768 22 6805
D 7773 26 18525 1392 18524 7
D 7917 22 7277
D 7919 22 7208
D 7921 22 7139
D 7923 22 7070
D 7925 22 7001
D 7927 22 6926
D 7929 22 7277
D 7931 22 7208
D 7933 22 7139
D 7935 22 7070
D 7937 22 7001
D 7939 22 6926
D 7941 22 7539
D 7943 22 7470
D 7945 22 7401
D 7947 22 7332
D 7949 22 7539
D 7951 22 7470
D 7953 22 7401
D 7955 22 7332
D 7957 22 7663
D 7959 22 7594
D 7961 22 7663
D 7963 22 7594
D 7965 22 7718
D 7967 22 7718
D 7969 22 6892
D 7971 22 6
D 7973 22 6
D 7975 22 9
D 7977 22 18
D 7979 22 6682
D 7984 26 18687 552 18686 7
D 8002 22 7773
D 8004 22 7984
D 8006 22 7984
D 8008 22 7984
D 8013 26 18709 8 18708 7
D 8022 22 7984
D 8042 22 8013
D 8044 22 7984
D 8046 22 7984
D 8048 22 7984
D 8071 26 18751 16 18750 7
D 8083 22 6892
D 8085 22 6892
D 8090 26 18762 24 18761 7
D 8105 22 8071
D 8107 22 8090
D 8109 22 8090
D 8114 26 18777 8 18776 7
D 8123 22 8090
D 8128 26 18822 624 18821 7
D 8134 26 18959 16 18832 7
D 8146 26 18969 16 18841 7
D 8158 26 18949 16 18850 7
D 8170 26 18979 32 18859 7
D 8179 22 8134
D 8181 22 8134
D 8183 22 8146
D 8185 22 8146
D 8187 22 8158
D 8189 22 8158
D 8191 22 8170
D 8196 26 18867 192 18866 7
D 8217 26 18883 1224 18882 7
D 8235 22 6
D 8237 22 9
D 8242 26 18904 524 18903 3
D 8251 26 18911 656 18910 7
D 8272 22 8158
D 8274 22 8158
D 8276 22 8196
D 8281 26 18939 16 18938 7
D 8293 22 8281
D 8304 22 8158
D 8315 22 8134
D 8326 22 8146
D 8340 22 8281
D 8342 22 6425
D 8344 22 6744
D 8349 26 19019 208 19018 7
D 8400 22 18
D 8402 22 7539
D 8404 22 7470
D 8406 22 7401
D 8408 22 7332
D 8410 22 7277
D 8412 22 7208
D 8414 22 7139
D 8416 22 7070
D 8418 22 7001
D 8420 22 6926
D 8422 22 7663
D 8424 22 7594
D 8426 22 8349
D 8431 26 19083 1176 19082 7
D 8443 22 6666
D 8445 22 8349
D 8450 26 19105 2208 19104 7
D 8462 26 19258 80 19127 7
D 8489 26 19255 40 19156 7
D 8507 22 8450
D 8509 22 8431
D 8511 22 8462
D 8513 22 8450
D 8515 22 8450
D 8517 22 6892
D 8519 22 6892
D 8521 22 6892
D 8523 22 6892
D 8525 22 8489
D 8527 22 8450
D 8529 22 8450
D 8531 22 8450
D 8536 26 19201 88 19200 7
D 8545 26 19274 24 19207 7
D 8578 22 8450
D 8589 26 19262 240 19261 7
D 8600 22 8589
D 8608 22 8589
D 8613 26 19285 24 19283 7
D 8619 26 19299 1168 19284 7
D 8634 22 8619
D 8636 22 8619
D 8638 22 6744
D 8694 22 8619
D 8696 22 8619
D 8698 22 8619
D 8712 26 19371 552 19370 7
D 8763 26 19512 2176 19427 7
D 8814 22 6932
D 8816 22 6932
D 8818 22 8090
D 8820 22 6
D 8822 22 6
D 8827 23 6 1 6393 6399 0 1 0 0 1
 6394 6397 6398 6394 6397 6395
D 8830 23 6 1 0 177 0 0 0 0 0
 0 177 0 3 177 0
D 8833 26 19500 584 19499 7
D 8839 29 6 19488 5 19489 19490 19491 19492 19493 19494
D 8845 22 8839
D 8853 22 8845
D 8855 22 8833
D 8893 26 19637 5408 19565 7
D 8905 22 8712
D 8907 22 8833
D 8909 22 8170
D 8911 22 6886
D 8913 22 8613
D 8915 22 8893
D 8917 22 8763
D 8942 29 6 19627 2 19628 19629 19630
D 8948 22 8942
D 8953 29 6 19631 1 19632 19633
D 8959 22 8953
D 8964 29 6 19634 1 19635 19636
D 8970 22 8964
D 8975 29 6 19576 3 19577 19578 19579 19580
D 8981 22 8975
D 8986 29 6 19581 1 19582 19583
D 8992 22 8986
D 8997 29 6 19584 3 19585 19586 19587 19588
D 9003 22 8997
D 9008 29 6 19589 1 19590 19591
D 9014 22 9008
D 9019 29 6 19593 2 19594 19595 19596
D 9025 22 9019
D 9030 29 6 19597 2 19598 19599 19600
D 9036 22 9030
D 9041 29 6 19601 2 19602 19603 19604
D 9047 22 9041
D 9052 29 6 19611 1 19612 19613
D 9058 22 9052
D 9063 29 6 19607 1 19608 19609
D 9069 22 9063
D 9074 29 6 19615 3 19616 19617 19618 19619
D 9080 22 9074
D 9085 29 6 19620 5 19621 19622 19623 19624 19625 19626
D 9091 22 9085
D 9099 22 8763
D 9101 22 8948
D 9103 22 8959
D 9105 22 8970
D 9107 22 8981
D 9109 22 8992
D 9111 22 9003
D 9113 22 9014
D 9115 22 9025
D 9117 22 9036
D 9119 22 9047
D 9121 22 9058
D 9123 22 9069
D 9125 22 9080
D 9127 22 9091
D 9129 22 8893
D 9134 26 19715 1544 19714 7
D 9143 22 9134
D 9148 26 19725 2064 19724 7
D 9160 29 8462 19711 1 19712 19713
D 9166 22 9160
D 9171 29 8462 19711 1 19712 19713
D 9177 22 9171
D 9182 29 8462 19711 1 19712 19713
D 9188 22 9182
D 9193 29 8462 19711 1 19712 19713
D 9199 22 9193
D 9210 22 9166
D 9212 22 9177
D 9214 22 9188
D 9216 22 9199
D 9218 22 9134
D 9220 22 9148
D 9225 26 19767 800 19766 7
D 9240 22 9148
D 9242 22 9225
D 25965 23 10 1 3 135 0 0 0 0 0
 0 135 3 3 135 135
D 25968 23 10 1 3 135 0 0 0 0 0
 0 135 3 3 135 135
D 27390 23 9 1 3 246 0 0 0 0 0
 0 246 3 3 246 246
D 27393 23 9 1 3 246 0 0 0 0 0
 0 246 3 3 246 246
D 27396 23 9 1 3 21 0 0 0 0 0
 0 21 3 3 21 21
D 27399 23 9 1 3 21 0 0 0 0 0
 0 21 3 3 21 21
D 27402 23 9 1 3 246 0 0 0 0 0
 0 246 3 3 246 246
D 27405 23 9 1 3 246 0 0 0 0 0
 0 246 3 3 246 246
D 27408 23 9 1 3 227 0 0 0 0 0
 0 227 3 3 227 227
D 27411 23 9 1 3 227 0 0 0 0 0
 0 227 3 3 227 227
D 27414 23 9 1 3 227 0 0 0 0 0
 0 227 3 3 227 227
D 27417 23 9 1 3 227 0 0 0 0 0
 0 227 3 3 227 227
D 27420 23 9 1 3 246 0 0 0 0 0
 0 246 3 3 246 246
D 27423 23 9 1 3 246 0 0 0 0 0
 0 246 3 3 246 246
D 27426 23 9 1 3 227 0 0 0 0 0
 0 227 3 3 227 227
D 27429 23 9 1 3 227 0 0 0 0 0
 0 227 3 3 227 227
D 27432 23 9 1 3 347 0 0 0 0 0
 0 347 3 3 347 347
D 27435 23 9 1 3 347 0 0 0 0 0
 0 347 3 3 347 347
D 27438 23 9 1 3 179 0 0 0 0 0
 0 179 3 3 179 179
D 27441 23 9 1 3 179 0 0 0 0 0
 0 179 3 3 179 179
D 27444 23 9 1 3 184 0 0 0 0 0
 0 184 3 3 184 184
D 27447 23 9 1 3 184 0 0 0 0 0
 0 184 3 3 184 184
D 27450 23 9 1 3 179 0 0 0 0 0
 0 179 3 3 179 179
D 27453 23 9 1 3 179 0 0 0 0 0
 0 179 3 3 179 179
D 27456 23 9 1 3 83 0 0 0 0 0
 0 83 3 3 83 83
D 27459 23 9 1 3 83 0 0 0 0 0
 0 83 3 3 83 83
D 27462 23 9 1 3 13 0 0 0 0 0
 0 13 3 3 13 13
D 27465 23 9 1 3 13 0 0 0 0 0
 0 13 3 3 13 13
D 27468 23 9 1 3 347 0 0 0 0 0
 0 347 3 3 347 347
D 27471 23 9 1 3 347 0 0 0 0 0
 0 347 3 3 347 347
D 27474 23 9 1 3 191 0 0 0 0 0
 0 191 3 3 191 191
D 27477 23 9 1 3 191 0 0 0 0 0
 0 191 3 3 191 191
D 27480 23 9 1 3 191 0 0 0 0 0
 0 191 3 3 191 191
D 27483 23 9 1 3 191 0 0 0 0 0
 0 191 3 3 191 191
D 27486 23 9 1 3 184 0 0 0 0 0
 0 184 3 3 184 184
D 27489 23 9 1 3 184 0 0 0 0 0
 0 184 3 3 184 184
D 29286 20 260
D 29288 20 2
S 624 24 0 0 0 6 1 0 5015 10015 0 A 0 0 0 0 B 0 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9 0 0 0 0 0 0 mpas_atmphys_driver_microphysics
S 628 23 0 0 0 6 22296 624 5094 14 0 A 0 0 0 0 B 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mpas_timer_start
S 629 23 0 0 0 6 22299 624 5111 14 0 A 0 0 0 0 B 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 mpas_timer_stop
S 637 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 638 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 639 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 640 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 64 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 650 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 664 25 6 iso_c_binding c_ptr
R 665 5 7 iso_c_binding val c_ptr
R 667 25 9 iso_c_binding c_funptr
R 668 5 10 iso_c_binding val c_funptr
R 702 6 44 iso_c_binding c_null_ptr$ac
R 704 6 46 iso_c_binding c_null_funptr$ac
R 715 14 57 iso_c_binding compare_eq_cptrs
R 720 14 62 iso_c_binding compare_ne_cptrs
R 725 14 67 iso_c_binding compare_eq_cfunptrs
R 730 14 72 iso_c_binding compare_ne_cfunptrs
S 733 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 734 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 737 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 6 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 760 7 22 iso_fortran_env integer_kinds$ac
R 762 7 24 iso_fortran_env logical_kinds$ac
R 764 7 26 iso_fortran_env real_kinds$ac
S 767 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 768 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 772 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 36 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 777 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 780 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 781 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 782 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 783 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 784 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 786 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 787 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 792 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 796 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 797 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 28 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 798 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 800 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 803 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 808 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 809 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 833 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 55 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
R 8044 25 5 pio_types iosystem_desc_t
R 8045 5 6 pio_types iosysid iosystem_desc_t
R 8048 25 9 pio_types file_desc_t
R 8049 5 10 pio_types fh file_desc_t
R 8050 5 11 pio_types iosystem file_desc_t
R 8052 5 13 pio_types iosystem$p file_desc_t
R 16154 25 12 esmf_basemod esmf_status
R 16155 5 13 esmf_basemod status esmf_status
R 16158 6 16 esmf_basemod esmf_state_uninit$ac
R 16160 6 18 esmf_basemod esmf_state_ready$ac
R 16162 6 20 esmf_basemod esmf_state_unallocated$ac
R 16164 6 22 esmf_basemod esmf_state_allocated$ac
R 16166 6 24 esmf_basemod esmf_state_busy$ac
R 16168 6 26 esmf_basemod esmf_state_invalid$ac
R 16169 25 27 esmf_basemod esmf_pointer
R 16170 5 28 esmf_basemod ptr esmf_pointer
R 16173 6 31 esmf_basemod esmf_null_pointer$ac
R 16175 6 33 esmf_basemod esmf_bad_pointer$ac
R 16176 25 34 esmf_basemod esmf_datatype
R 16177 5 35 esmf_basemod dtype esmf_datatype
R 16180 6 38 esmf_basemod esmf_data_integer$ac
R 16182 6 40 esmf_basemod esmf_data_real$ac
R 16184 6 42 esmf_basemod esmf_data_logical$ac
R 16186 6 44 esmf_basemod esmf_data_character$ac
R 16222 25 80 esmf_basemod esmf_logical
R 16223 5 81 esmf_basemod value esmf_logical
R 16226 6 84 esmf_basemod esmf_tf_unknown$ac
R 16228 6 86 esmf_basemod esmf_tf_true$ac
R 16230 6 88 esmf_basemod esmf_tf_false$ac
R 16258 26 116 esmf_basemod =
R 16278 14 136 esmf_basemod esmf_sfeq
R 16283 14 141 esmf_basemod esmf_sfne
R 16288 14 146 esmf_basemod esmf_dteq
R 16293 14 151 esmf_basemod esmf_dtne
R 16302 14 160 esmf_basemod esmf_pteq
R 16307 14 165 esmf_basemod esmf_ptne
R 16316 14 174 esmf_basemod esmf_tfeq
R 16321 14 179 esmf_basemod esmf_tfne
R 16326 14 184 esmf_basemod esmf_aieq
R 16331 14 189 esmf_basemod esmf_aine
R 16517 26 8 esmf_basetimemod +
R 16519 26 10 esmf_basetimemod -
R 16521 26 12 esmf_basetimemod /
R 16526 26 17 esmf_basetimemod <
R 16528 26 19 esmf_basetimemod >
R 16530 26 21 esmf_basetimemod <=
R 16532 26 23 esmf_basetimemod >=
R 16562 14 53 esmf_basetimemod esmf_basetimeeq
R 16567 14 58 esmf_basetimemod esmf_basetimene
R 16613 7 2 esmf_calendarmod mday$ac
R 16615 7 4 esmf_calendarmod mdayleap$ac
R 16624 25 13 esmf_calendarmod esmf_calkind_flag
R 16625 5 14 esmf_calendarmod caltype esmf_calkind_flag
R 16628 6 17 esmf_calendarmod esmf_calkind_gregorian$ac
R 16630 6 19 esmf_calendarmod esmf_calkind_noleap$ac
R 16631 25 20 esmf_calendarmod esmf_daysperyear
R 16632 5 21 esmf_calendarmod d esmf_daysperyear
R 16633 5 22 esmf_calendarmod dn esmf_daysperyear
R 16634 5 23 esmf_calendarmod dd esmf_daysperyear
R 16637 25 26 esmf_calendarmod esmf_calendar
R 16638 5 27 esmf_calendarmod type esmf_calendar
R 16639 5 28 esmf_calendarmod set esmf_calendar
R 16640 5 29 esmf_calendarmod dayspermonth esmf_calendar
R 16641 5 30 esmf_calendarmod secondsperday esmf_calendar
R 16642 5 31 esmf_calendarmod secondsperyear esmf_calendar
R 16643 5 32 esmf_calendarmod daysperyear esmf_calendar
R 16732 25 1 esmf_shrtimemod esmf_time
R 16733 5 2 esmf_shrtimemod basetime esmf_time
R 16734 5 3 esmf_shrtimemod yr esmf_time
R 16735 5 4 esmf_shrtimemod calendar esmf_time
R 16737 5 6 esmf_shrtimemod calendar$p esmf_time
R 16745 25 3 esmf_timeintervalmod esmf_timeinterval
R 16746 5 4 esmf_timeintervalmod basetime esmf_timeinterval
R 16747 5 5 esmf_timeintervalmod yr esmf_timeinterval
R 16748 5 6 esmf_timeintervalmod mm esmf_timeinterval
R 16749 5 7 esmf_timeintervalmod starttime_set esmf_timeinterval
R 16750 5 8 esmf_timeintervalmod starttime esmf_timeinterval
R 16762 26 20 esmf_timeintervalmod *
R 16866 14 124 esmf_timeintervalmod esmf_timeintervaleq
R 16871 14 129 esmf_timeintervalmod esmf_timeintervalne
R 16935 25 13 esmf_stubs esmf_end_flag
R 16936 5 14 esmf_stubs dummy esmf_end_flag
R 16939 6 17 esmf_stubs esmf_end_abort$ac
R 16941 6 19 esmf_stubs esmf_end_normal$ac
R 16943 6 21 esmf_stubs esmf_end_keepmpi$ac
R 16944 25 22 esmf_stubs esmf_msgtype
R 16945 5 23 esmf_stubs mtype esmf_msgtype
R 16948 6 26 esmf_stubs esmf_log_info$ac
R 16950 6 28 esmf_stubs esmf_log_warning$ac
R 16952 6 30 esmf_stubs esmf_log_error$ac
S 16985 3 0 0 0 22 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 74254 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 1 20
R 16986 25 1 esmf_alarmmod esmf_alarmint
R 16987 5 2 esmf_alarmmod name esmf_alarmint
R 16988 5 3 esmf_alarmmod ringinterval esmf_alarmint
R 16989 5 4 esmf_alarmmod ringtime esmf_alarmint
R 16990 5 5 esmf_alarmmod prevringtime esmf_alarmint
R 16991 5 6 esmf_alarmmod stoptime esmf_alarmint
R 16992 5 7 esmf_alarmmod id esmf_alarmint
R 16993 5 8 esmf_alarmmod alarmmutex esmf_alarmint
R 16994 5 9 esmf_alarmmod ringing esmf_alarmint
R 16995 5 10 esmf_alarmmod enabled esmf_alarmint
R 16996 5 11 esmf_alarmmod ringtimeset esmf_alarmint
R 16997 5 12 esmf_alarmmod ringintervalset esmf_alarmint
R 16998 5 13 esmf_alarmmod stoptimeset esmf_alarmint
R 17001 25 16 esmf_alarmmod esmf_alarm
R 17002 5 17 esmf_alarmmod alarmint esmf_alarm
R 17004 5 19 esmf_alarmmod alarmint$p esmf_alarm
R 17115 14 130 esmf_alarmmod esmf_alarmeq
R 17151 25 2 esmf_clockmod esmf_clockint
R 17152 5 3 esmf_clockmod timestep esmf_clockint
R 17153 5 4 esmf_clockmod starttime esmf_clockint
R 17154 5 5 esmf_clockmod stoptime esmf_clockint
R 17155 5 6 esmf_clockmod reftime esmf_clockint
R 17156 5 7 esmf_clockmod currtime esmf_clockint
R 17157 5 8 esmf_clockmod prevtime esmf_clockint
R 17158 5 9 esmf_clockmod advancecount esmf_clockint
R 17159 5 10 esmf_clockmod clockmutex esmf_clockint
R 17160 5 11 esmf_clockmod numalarms esmf_clockint
R 17162 5 13 esmf_clockmod alarmlist esmf_clockint
R 17163 5 14 esmf_clockmod alarmlist$sd esmf_clockint
R 17164 5 15 esmf_clockmod alarmlist$p esmf_clockint
R 17165 5 16 esmf_clockmod alarmlist$o esmf_clockint
R 17169 25 20 esmf_clockmod esmf_clock
R 17170 5 21 esmf_clockmod clockint esmf_clock
R 17172 5 23 esmf_clockmod clockint$p esmf_clock
R 17498 14 109 esmf_timemod esmf_timeeq
R 17503 14 114 esmf_timemod esmf_timene
S 17564 3 0 0 0 29288 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 76719 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 0
S 17566 3 0 0 0 6 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6
S 17605 3 0 0 0 18 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18
S 17607 3 0 0 0 29286 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 76720 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 20 19 66 6f 72 63 69 6e 67 43 79 63 6c 65 41 6c 61 72 6d 49 44
R 17613 25 6 mpas_derived_types att_lists_type
R 17614 25 7 mpas_derived_types att_list_type
R 17615 5 8 mpas_derived_types attlist att_lists_type
R 17617 5 10 mpas_derived_types attlist$p att_lists_type
R 17621 5 14 mpas_derived_types attname att_list_type
R 17622 5 15 mpas_derived_types atttype att_list_type
R 17623 5 16 mpas_derived_types attvalueint att_list_type
R 17625 5 18 mpas_derived_types attvalueinta att_list_type
R 17626 5 19 mpas_derived_types attvalueinta$sd att_list_type
R 17627 5 20 mpas_derived_types attvalueinta$p att_list_type
R 17628 5 21 mpas_derived_types attvalueinta$o att_list_type
R 17630 5 23 mpas_derived_types attvaluereal att_list_type
R 17632 5 25 mpas_derived_types attvaluereala att_list_type
R 17633 5 26 mpas_derived_types attvaluereala$sd att_list_type
R 17634 5 27 mpas_derived_types attvaluereala$p att_list_type
R 17635 5 28 mpas_derived_types attvaluereala$o att_list_type
R 17637 5 30 mpas_derived_types attvaluetext att_list_type
R 17638 5 31 mpas_derived_types next att_list_type
R 17640 5 33 mpas_derived_types next$p att_list_type
R 17669 25 62 mpas_derived_types dm_info
R 17670 5 63 mpas_derived_types nprocs dm_info
R 17671 5 64 mpas_derived_types my_proc_id dm_info
R 17672 5 65 mpas_derived_types comm dm_info
R 17673 5 66 mpas_derived_types info dm_info
R 17674 5 67 mpas_derived_types initialized_mpi dm_info
R 17675 5 68 mpas_derived_types total_blocks dm_info
R 17676 5 69 mpas_derived_types explicitdecomp dm_info
R 17678 5 71 mpas_derived_types block_proc_list dm_info
R 17679 5 72 mpas_derived_types block_proc_list$sd dm_info
R 17680 5 73 mpas_derived_types block_proc_list$p dm_info
R 17681 5 74 mpas_derived_types block_proc_list$o dm_info
R 17684 5 77 mpas_derived_types block_local_id_list dm_info
R 17685 5 78 mpas_derived_types block_local_id_list$sd dm_info
R 17686 5 79 mpas_derived_types block_local_id_list$p dm_info
R 17687 5 80 mpas_derived_types block_local_id_list$o dm_info
R 17717 25 110 mpas_derived_types mpas_multihalo_exchange_list
R 17719 5 112 mpas_derived_types halos mpas_multihalo_exchange_list
R 17720 5 113 mpas_derived_types halos$sd mpas_multihalo_exchange_list
R 17721 5 114 mpas_derived_types halos$p mpas_multihalo_exchange_list
R 17722 5 115 mpas_derived_types halos$o mpas_multihalo_exchange_list
R 17724 5 117 mpas_derived_types prev mpas_multihalo_exchange_list
R 17726 5 119 mpas_derived_types prev$p mpas_multihalo_exchange_list
R 17728 5 121 mpas_derived_types next mpas_multihalo_exchange_list
R 17730 5 123 mpas_derived_types next$p mpas_multihalo_exchange_list
R 17733 25 126 mpas_derived_types mpas_communication_list
R 17734 5 127 mpas_derived_types procid mpas_communication_list
R 17735 5 128 mpas_derived_types nlist mpas_communication_list
R 17736 5 129 mpas_derived_types bufferoffset mpas_communication_list
R 17738 5 131 mpas_derived_types rbuffer mpas_communication_list
R 17739 5 132 mpas_derived_types rbuffer$sd mpas_communication_list
R 17740 5 133 mpas_derived_types rbuffer$p mpas_communication_list
R 17741 5 134 mpas_derived_types rbuffer$o mpas_communication_list
R 17744 5 137 mpas_derived_types ibuffer mpas_communication_list
R 17745 5 138 mpas_derived_types ibuffer$sd mpas_communication_list
R 17746 5 139 mpas_derived_types ibuffer$p mpas_communication_list
R 17747 5 140 mpas_derived_types ibuffer$o mpas_communication_list
R 17749 5 142 mpas_derived_types reqid mpas_communication_list
R 17750 5 143 mpas_derived_types next mpas_communication_list
R 17752 5 145 mpas_derived_types next$p mpas_communication_list
R 17754 5 147 mpas_derived_types commlistsize mpas_communication_list
R 17755 5 148 mpas_derived_types received mpas_communication_list
R 17756 5 149 mpas_derived_types unpacked mpas_communication_list
R 17759 25 152 mpas_derived_types mpas_exchange_field_list
R 17760 5 153 mpas_derived_types nlen mpas_exchange_field_list
R 17761 5 154 mpas_derived_types fieldname mpas_exchange_field_list
R 17762 5 155 mpas_derived_types fieldtype mpas_exchange_field_list
R 17763 5 156 mpas_derived_types ndims mpas_exchange_field_list
R 17765 5 158 mpas_derived_types halolayers mpas_exchange_field_list
R 17766 5 159 mpas_derived_types halolayers$sd mpas_exchange_field_list
R 17767 5 160 mpas_derived_types halolayers$p mpas_exchange_field_list
R 17768 5 161 mpas_derived_types halolayers$o mpas_exchange_field_list
R 17771 5 164 mpas_derived_types timelevels mpas_exchange_field_list
R 17772 5 165 mpas_derived_types timelevels$sd mpas_exchange_field_list
R 17773 5 166 mpas_derived_types timelevels$p mpas_exchange_field_list
R 17774 5 167 mpas_derived_types timelevels$o mpas_exchange_field_list
R 17776 5 169 mpas_derived_types next mpas_exchange_field_list
R 17778 5 171 mpas_derived_types next$p mpas_exchange_field_list
R 17782 25 175 mpas_derived_types mpas_exchange_group
R 17783 5 176 mpas_derived_types nlen mpas_exchange_group
R 17784 5 177 mpas_derived_types groupname mpas_exchange_group
R 17785 25 178 mpas_derived_types mpas_pool_type
R 17786 5 179 mpas_derived_types fieldpool mpas_exchange_group
R 17788 5 181 mpas_derived_types fieldpool$p mpas_exchange_group
R 17790 5 183 mpas_derived_types fieldlist mpas_exchange_group
R 17792 5 185 mpas_derived_types fieldlist$p mpas_exchange_group
R 17794 5 187 mpas_derived_types sendlist mpas_exchange_group
R 17796 5 189 mpas_derived_types sendlist$p mpas_exchange_group
R 17798 5 191 mpas_derived_types recvlist mpas_exchange_group
R 17800 5 193 mpas_derived_types recvlist$p mpas_exchange_group
R 17802 5 195 mpas_derived_types next mpas_exchange_group
R 17804 5 197 mpas_derived_types next$p mpas_exchange_group
R 17806 5 199 mpas_derived_types allreceived mpas_exchange_group
R 17814 25 207 mpas_derived_types field5dreal
R 17815 25 208 mpas_derived_types block_type
R 17816 5 209 mpas_derived_types block field5dreal
R 17818 5 211 mpas_derived_types block$p field5dreal
R 17825 5 218 mpas_derived_types array field5dreal
R 17826 5 219 mpas_derived_types array$sd field5dreal
R 17827 5 220 mpas_derived_types array$p field5dreal
R 17828 5 221 mpas_derived_types array$o field5dreal
R 17830 5 223 mpas_derived_types fieldname field5dreal
R 17832 5 225 mpas_derived_types constituentnames field5dreal
R 17833 5 226 mpas_derived_types constituentnames$sd field5dreal
R 17834 5 227 mpas_derived_types constituentnames$p field5dreal
R 17835 5 228 mpas_derived_types constituentnames$o field5dreal
R 17837 5 230 mpas_derived_types dimnames field5dreal
R 17838 5 231 mpas_derived_types dimsizes field5dreal
R 17839 5 232 mpas_derived_types defaultvalue field5dreal
R 17840 5 233 mpas_derived_types missingvalue field5dreal
R 17841 5 234 mpas_derived_types isdecomposed field5dreal
R 17842 5 235 mpas_derived_types hastimedimension field5dreal
R 17843 5 236 mpas_derived_types isactive field5dreal
R 17844 5 237 mpas_derived_types isvararray field5dreal
R 17845 5 238 mpas_derived_types ispersistent field5dreal
R 17847 5 240 mpas_derived_types attlists field5dreal
R 17848 5 241 mpas_derived_types attlists$sd field5dreal
R 17849 5 242 mpas_derived_types attlists$p field5dreal
R 17850 5 243 mpas_derived_types attlists$o field5dreal
R 17852 5 245 mpas_derived_types prev field5dreal
R 17854 5 247 mpas_derived_types prev$p field5dreal
R 17856 5 249 mpas_derived_types next field5dreal
R 17858 5 251 mpas_derived_types next$p field5dreal
R 17860 5 253 mpas_derived_types sendlist field5dreal
R 17862 5 255 mpas_derived_types sendlist$p field5dreal
R 17864 5 257 mpas_derived_types recvlist field5dreal
R 17866 5 259 mpas_derived_types recvlist$p field5dreal
R 17868 5 261 mpas_derived_types copylist field5dreal
R 17870 5 263 mpas_derived_types copylist$p field5dreal
R 17874 25 267 mpas_derived_types field4dreal
R 17875 5 268 mpas_derived_types block field4dreal
R 17877 5 270 mpas_derived_types block$p field4dreal
R 17883 5 276 mpas_derived_types array field4dreal
R 17884 5 277 mpas_derived_types array$sd field4dreal
R 17885 5 278 mpas_derived_types array$p field4dreal
R 17886 5 279 mpas_derived_types array$o field4dreal
R 17888 5 281 mpas_derived_types fieldname field4dreal
R 17890 5 283 mpas_derived_types constituentnames field4dreal
R 17891 5 284 mpas_derived_types constituentnames$sd field4dreal
R 17892 5 285 mpas_derived_types constituentnames$p field4dreal
R 17893 5 286 mpas_derived_types constituentnames$o field4dreal
R 17895 5 288 mpas_derived_types dimnames field4dreal
R 17896 5 289 mpas_derived_types dimsizes field4dreal
R 17897 5 290 mpas_derived_types defaultvalue field4dreal
R 17898 5 291 mpas_derived_types missingvalue field4dreal
R 17899 5 292 mpas_derived_types isdecomposed field4dreal
R 17900 5 293 mpas_derived_types hastimedimension field4dreal
R 17901 5 294 mpas_derived_types isactive field4dreal
R 17902 5 295 mpas_derived_types isvararray field4dreal
R 17903 5 296 mpas_derived_types ispersistent field4dreal
R 17905 5 298 mpas_derived_types attlists field4dreal
R 17906 5 299 mpas_derived_types attlists$sd field4dreal
R 17907 5 300 mpas_derived_types attlists$p field4dreal
R 17908 5 301 mpas_derived_types attlists$o field4dreal
R 17910 5 303 mpas_derived_types prev field4dreal
R 17912 5 305 mpas_derived_types prev$p field4dreal
R 17914 5 307 mpas_derived_types next field4dreal
R 17916 5 309 mpas_derived_types next$p field4dreal
R 17918 5 311 mpas_derived_types sendlist field4dreal
R 17920 5 313 mpas_derived_types sendlist$p field4dreal
R 17922 5 315 mpas_derived_types recvlist field4dreal
R 17924 5 317 mpas_derived_types recvlist$p field4dreal
R 17926 5 319 mpas_derived_types copylist field4dreal
R 17928 5 321 mpas_derived_types copylist$p field4dreal
R 17932 25 325 mpas_derived_types field3dreal
R 17933 5 326 mpas_derived_types block field3dreal
R 17935 5 328 mpas_derived_types block$p field3dreal
R 17940 5 333 mpas_derived_types array field3dreal
R 17941 5 334 mpas_derived_types array$sd field3dreal
R 17942 5 335 mpas_derived_types array$p field3dreal
R 17943 5 336 mpas_derived_types array$o field3dreal
R 17945 5 338 mpas_derived_types fieldname field3dreal
R 17947 5 340 mpas_derived_types constituentnames field3dreal
R 17948 5 341 mpas_derived_types constituentnames$sd field3dreal
R 17949 5 342 mpas_derived_types constituentnames$p field3dreal
R 17950 5 343 mpas_derived_types constituentnames$o field3dreal
R 17952 5 345 mpas_derived_types dimnames field3dreal
R 17953 5 346 mpas_derived_types dimsizes field3dreal
R 17954 5 347 mpas_derived_types defaultvalue field3dreal
R 17955 5 348 mpas_derived_types missingvalue field3dreal
R 17956 5 349 mpas_derived_types isdecomposed field3dreal
R 17957 5 350 mpas_derived_types hastimedimension field3dreal
R 17958 5 351 mpas_derived_types isactive field3dreal
R 17959 5 352 mpas_derived_types isvararray field3dreal
R 17960 5 353 mpas_derived_types ispersistent field3dreal
R 17962 5 355 mpas_derived_types attlists field3dreal
R 17963 5 356 mpas_derived_types attlists$sd field3dreal
R 17964 5 357 mpas_derived_types attlists$p field3dreal
R 17965 5 358 mpas_derived_types attlists$o field3dreal
R 17967 5 360 mpas_derived_types prev field3dreal
R 17969 5 362 mpas_derived_types prev$p field3dreal
R 17971 5 364 mpas_derived_types next field3dreal
R 17973 5 366 mpas_derived_types next$p field3dreal
R 17975 5 368 mpas_derived_types sendlist field3dreal
R 17977 5 370 mpas_derived_types sendlist$p field3dreal
R 17979 5 372 mpas_derived_types recvlist field3dreal
R 17981 5 374 mpas_derived_types recvlist$p field3dreal
R 17983 5 376 mpas_derived_types copylist field3dreal
R 17985 5 378 mpas_derived_types copylist$p field3dreal
R 17989 25 382 mpas_derived_types field2dreal
R 17990 5 383 mpas_derived_types block field2dreal
R 17992 5 385 mpas_derived_types block$p field2dreal
R 17996 5 389 mpas_derived_types array field2dreal
R 17997 5 390 mpas_derived_types array$sd field2dreal
R 17998 5 391 mpas_derived_types array$p field2dreal
R 17999 5 392 mpas_derived_types array$o field2dreal
R 18001 5 394 mpas_derived_types fieldname field2dreal
R 18003 5 396 mpas_derived_types constituentnames field2dreal
R 18004 5 397 mpas_derived_types constituentnames$sd field2dreal
R 18005 5 398 mpas_derived_types constituentnames$p field2dreal
R 18006 5 399 mpas_derived_types constituentnames$o field2dreal
R 18008 5 401 mpas_derived_types dimnames field2dreal
R 18009 5 402 mpas_derived_types dimsizes field2dreal
R 18010 5 403 mpas_derived_types defaultvalue field2dreal
R 18011 5 404 mpas_derived_types missingvalue field2dreal
R 18012 5 405 mpas_derived_types isdecomposed field2dreal
R 18013 5 406 mpas_derived_types hastimedimension field2dreal
R 18014 5 407 mpas_derived_types isactive field2dreal
R 18015 5 408 mpas_derived_types isvararray field2dreal
R 18016 5 409 mpas_derived_types ispersistent field2dreal
R 18018 5 411 mpas_derived_types attlists field2dreal
R 18019 5 412 mpas_derived_types attlists$sd field2dreal
R 18020 5 413 mpas_derived_types attlists$p field2dreal
R 18021 5 414 mpas_derived_types attlists$o field2dreal
R 18023 5 416 mpas_derived_types prev field2dreal
R 18025 5 418 mpas_derived_types prev$p field2dreal
R 18027 5 420 mpas_derived_types next field2dreal
R 18029 5 422 mpas_derived_types next$p field2dreal
R 18031 5 424 mpas_derived_types sendlist field2dreal
R 18033 5 426 mpas_derived_types sendlist$p field2dreal
R 18035 5 428 mpas_derived_types recvlist field2dreal
R 18037 5 430 mpas_derived_types recvlist$p field2dreal
R 18039 5 432 mpas_derived_types copylist field2dreal
R 18041 5 434 mpas_derived_types copylist$p field2dreal
R 18045 25 438 mpas_derived_types field1dreal
R 18046 5 439 mpas_derived_types block field1dreal
R 18048 5 441 mpas_derived_types block$p field1dreal
R 18051 5 444 mpas_derived_types array field1dreal
R 18052 5 445 mpas_derived_types array$sd field1dreal
R 18053 5 446 mpas_derived_types array$p field1dreal
R 18054 5 447 mpas_derived_types array$o field1dreal
R 18056 5 449 mpas_derived_types fieldname field1dreal
R 18058 5 451 mpas_derived_types constituentnames field1dreal
R 18059 5 452 mpas_derived_types constituentnames$sd field1dreal
R 18060 5 453 mpas_derived_types constituentnames$p field1dreal
R 18061 5 454 mpas_derived_types constituentnames$o field1dreal
R 18063 5 456 mpas_derived_types dimnames field1dreal
R 18064 5 457 mpas_derived_types dimsizes field1dreal
R 18065 5 458 mpas_derived_types defaultvalue field1dreal
R 18066 5 459 mpas_derived_types missingvalue field1dreal
R 18067 5 460 mpas_derived_types isdecomposed field1dreal
R 18068 5 461 mpas_derived_types hastimedimension field1dreal
R 18069 5 462 mpas_derived_types isactive field1dreal
R 18070 5 463 mpas_derived_types isvararray field1dreal
R 18071 5 464 mpas_derived_types ispersistent field1dreal
R 18073 5 466 mpas_derived_types attlists field1dreal
R 18074 5 467 mpas_derived_types attlists$sd field1dreal
R 18075 5 468 mpas_derived_types attlists$p field1dreal
R 18076 5 469 mpas_derived_types attlists$o field1dreal
R 18078 5 471 mpas_derived_types prev field1dreal
R 18080 5 473 mpas_derived_types prev$p field1dreal
R 18082 5 475 mpas_derived_types next field1dreal
R 18084 5 477 mpas_derived_types next$p field1dreal
R 18086 5 479 mpas_derived_types sendlist field1dreal
R 18088 5 481 mpas_derived_types sendlist$p field1dreal
R 18090 5 483 mpas_derived_types recvlist field1dreal
R 18092 5 485 mpas_derived_types recvlist$p field1dreal
R 18094 5 487 mpas_derived_types copylist field1dreal
R 18096 5 489 mpas_derived_types copylist$p field1dreal
R 18100 25 493 mpas_derived_types field0dreal
R 18101 5 494 mpas_derived_types block field0dreal
R 18103 5 496 mpas_derived_types block$p field0dreal
R 18105 5 498 mpas_derived_types scalar field0dreal
R 18106 5 499 mpas_derived_types fieldname field0dreal
R 18108 5 501 mpas_derived_types constituentnames field0dreal
R 18109 5 502 mpas_derived_types constituentnames$sd field0dreal
R 18110 5 503 mpas_derived_types constituentnames$p field0dreal
R 18111 5 504 mpas_derived_types constituentnames$o field0dreal
R 18113 5 506 mpas_derived_types defaultvalue field0dreal
R 18114 5 507 mpas_derived_types missingvalue field0dreal
R 18115 5 508 mpas_derived_types isdecomposed field0dreal
R 18116 5 509 mpas_derived_types hastimedimension field0dreal
R 18117 5 510 mpas_derived_types isactive field0dreal
R 18118 5 511 mpas_derived_types isvararray field0dreal
R 18120 5 513 mpas_derived_types attlists field0dreal
R 18121 5 514 mpas_derived_types attlists$sd field0dreal
R 18122 5 515 mpas_derived_types attlists$p field0dreal
R 18123 5 516 mpas_derived_types attlists$o field0dreal
R 18125 5 518 mpas_derived_types prev field0dreal
R 18127 5 520 mpas_derived_types prev$p field0dreal
R 18129 5 522 mpas_derived_types next field0dreal
R 18131 5 524 mpas_derived_types next$p field0dreal
R 18133 5 526 mpas_derived_types sendlist field0dreal
R 18135 5 528 mpas_derived_types sendlist$p field0dreal
R 18137 5 530 mpas_derived_types recvlist field0dreal
R 18139 5 532 mpas_derived_types recvlist$p field0dreal
R 18141 5 534 mpas_derived_types copylist field0dreal
R 18143 5 536 mpas_derived_types copylist$p field0dreal
R 18147 25 540 mpas_derived_types field3dinteger
R 18148 5 541 mpas_derived_types block field3dinteger
R 18150 5 543 mpas_derived_types block$p field3dinteger
R 18155 5 548 mpas_derived_types array field3dinteger
R 18156 5 549 mpas_derived_types array$sd field3dinteger
R 18157 5 550 mpas_derived_types array$p field3dinteger
R 18158 5 551 mpas_derived_types array$o field3dinteger
R 18160 5 553 mpas_derived_types fieldname field3dinteger
R 18162 5 555 mpas_derived_types constituentnames field3dinteger
R 18163 5 556 mpas_derived_types constituentnames$sd field3dinteger
R 18164 5 557 mpas_derived_types constituentnames$p field3dinteger
R 18165 5 558 mpas_derived_types constituentnames$o field3dinteger
R 18167 5 560 mpas_derived_types dimnames field3dinteger
R 18168 5 561 mpas_derived_types defaultvalue field3dinteger
R 18169 5 562 mpas_derived_types missingvalue field3dinteger
R 18170 5 563 mpas_derived_types dimsizes field3dinteger
R 18171 5 564 mpas_derived_types isdecomposed field3dinteger
R 18172 5 565 mpas_derived_types hastimedimension field3dinteger
R 18173 5 566 mpas_derived_types isactive field3dinteger
R 18174 5 567 mpas_derived_types isvararray field3dinteger
R 18175 5 568 mpas_derived_types ispersistent field3dinteger
R 18177 5 570 mpas_derived_types attlists field3dinteger
R 18178 5 571 mpas_derived_types attlists$sd field3dinteger
R 18179 5 572 mpas_derived_types attlists$p field3dinteger
R 18180 5 573 mpas_derived_types attlists$o field3dinteger
R 18182 5 575 mpas_derived_types prev field3dinteger
R 18184 5 577 mpas_derived_types prev$p field3dinteger
R 18186 5 579 mpas_derived_types next field3dinteger
R 18188 5 581 mpas_derived_types next$p field3dinteger
R 18190 5 583 mpas_derived_types sendlist field3dinteger
R 18192 5 585 mpas_derived_types sendlist$p field3dinteger
R 18194 5 587 mpas_derived_types recvlist field3dinteger
R 18196 5 589 mpas_derived_types recvlist$p field3dinteger
R 18198 5 591 mpas_derived_types copylist field3dinteger
R 18200 5 593 mpas_derived_types copylist$p field3dinteger
R 18204 25 597 mpas_derived_types field2dinteger
R 18205 5 598 mpas_derived_types block field2dinteger
R 18207 5 600 mpas_derived_types block$p field2dinteger
R 18211 5 604 mpas_derived_types array field2dinteger
R 18212 5 605 mpas_derived_types array$sd field2dinteger
R 18213 5 606 mpas_derived_types array$p field2dinteger
R 18214 5 607 mpas_derived_types array$o field2dinteger
R 18216 5 609 mpas_derived_types fieldname field2dinteger
R 18218 5 611 mpas_derived_types constituentnames field2dinteger
R 18219 5 612 mpas_derived_types constituentnames$sd field2dinteger
R 18220 5 613 mpas_derived_types constituentnames$p field2dinteger
R 18221 5 614 mpas_derived_types constituentnames$o field2dinteger
R 18223 5 616 mpas_derived_types dimnames field2dinteger
R 18224 5 617 mpas_derived_types defaultvalue field2dinteger
R 18225 5 618 mpas_derived_types missingvalue field2dinteger
R 18226 5 619 mpas_derived_types dimsizes field2dinteger
R 18227 5 620 mpas_derived_types isdecomposed field2dinteger
R 18228 5 621 mpas_derived_types hastimedimension field2dinteger
R 18229 5 622 mpas_derived_types isactive field2dinteger
R 18230 5 623 mpas_derived_types isvararray field2dinteger
R 18231 5 624 mpas_derived_types ispersistent field2dinteger
R 18233 5 626 mpas_derived_types attlists field2dinteger
R 18234 5 627 mpas_derived_types attlists$sd field2dinteger
R 18235 5 628 mpas_derived_types attlists$p field2dinteger
R 18236 5 629 mpas_derived_types attlists$o field2dinteger
R 18238 5 631 mpas_derived_types prev field2dinteger
R 18240 5 633 mpas_derived_types prev$p field2dinteger
R 18242 5 635 mpas_derived_types next field2dinteger
R 18244 5 637 mpas_derived_types next$p field2dinteger
R 18246 5 639 mpas_derived_types sendlist field2dinteger
R 18248 5 641 mpas_derived_types sendlist$p field2dinteger
R 18250 5 643 mpas_derived_types recvlist field2dinteger
R 18252 5 645 mpas_derived_types recvlist$p field2dinteger
R 18254 5 647 mpas_derived_types copylist field2dinteger
R 18256 5 649 mpas_derived_types copylist$p field2dinteger
R 18260 25 653 mpas_derived_types field1dinteger
R 18261 5 654 mpas_derived_types block field1dinteger
R 18263 5 656 mpas_derived_types block$p field1dinteger
R 18266 5 659 mpas_derived_types array field1dinteger
R 18267 5 660 mpas_derived_types array$sd field1dinteger
R 18268 5 661 mpas_derived_types array$p field1dinteger
R 18269 5 662 mpas_derived_types array$o field1dinteger
R 18271 5 664 mpas_derived_types fieldname field1dinteger
R 18273 5 666 mpas_derived_types constituentnames field1dinteger
R 18274 5 667 mpas_derived_types constituentnames$sd field1dinteger
R 18275 5 668 mpas_derived_types constituentnames$p field1dinteger
R 18276 5 669 mpas_derived_types constituentnames$o field1dinteger
R 18278 5 671 mpas_derived_types dimnames field1dinteger
R 18279 5 672 mpas_derived_types defaultvalue field1dinteger
R 18280 5 673 mpas_derived_types missingvalue field1dinteger
R 18281 5 674 mpas_derived_types dimsizes field1dinteger
R 18282 5 675 mpas_derived_types isdecomposed field1dinteger
R 18283 5 676 mpas_derived_types hastimedimension field1dinteger
R 18284 5 677 mpas_derived_types isactive field1dinteger
R 18285 5 678 mpas_derived_types isvararray field1dinteger
R 18286 5 679 mpas_derived_types ispersistent field1dinteger
R 18288 5 681 mpas_derived_types attlists field1dinteger
R 18289 5 682 mpas_derived_types attlists$sd field1dinteger
R 18290 5 683 mpas_derived_types attlists$p field1dinteger
R 18291 5 684 mpas_derived_types attlists$o field1dinteger
R 18293 5 686 mpas_derived_types prev field1dinteger
R 18295 5 688 mpas_derived_types prev$p field1dinteger
R 18297 5 690 mpas_derived_types next field1dinteger
R 18299 5 692 mpas_derived_types next$p field1dinteger
R 18301 5 694 mpas_derived_types sendlist field1dinteger
R 18303 5 696 mpas_derived_types sendlist$p field1dinteger
R 18305 5 698 mpas_derived_types recvlist field1dinteger
R 18307 5 700 mpas_derived_types recvlist$p field1dinteger
R 18309 5 702 mpas_derived_types copylist field1dinteger
R 18311 5 704 mpas_derived_types copylist$p field1dinteger
R 18315 25 708 mpas_derived_types field0dinteger
R 18316 5 709 mpas_derived_types block field0dinteger
R 18318 5 711 mpas_derived_types block$p field0dinteger
R 18320 5 713 mpas_derived_types scalar field0dinteger
R 18321 5 714 mpas_derived_types fieldname field0dinteger
R 18323 5 716 mpas_derived_types constituentnames field0dinteger
R 18324 5 717 mpas_derived_types constituentnames$sd field0dinteger
R 18325 5 718 mpas_derived_types constituentnames$p field0dinteger
R 18326 5 719 mpas_derived_types constituentnames$o field0dinteger
R 18328 5 721 mpas_derived_types defaultvalue field0dinteger
R 18329 5 722 mpas_derived_types missingvalue field0dinteger
R 18330 5 723 mpas_derived_types isdecomposed field0dinteger
R 18331 5 724 mpas_derived_types hastimedimension field0dinteger
R 18332 5 725 mpas_derived_types isactive field0dinteger
R 18333 5 726 mpas_derived_types isvararray field0dinteger
R 18335 5 728 mpas_derived_types attlists field0dinteger
R 18336 5 729 mpas_derived_types attlists$sd field0dinteger
R 18337 5 730 mpas_derived_types attlists$p field0dinteger
R 18338 5 731 mpas_derived_types attlists$o field0dinteger
R 18340 5 733 mpas_derived_types prev field0dinteger
R 18342 5 735 mpas_derived_types prev$p field0dinteger
R 18344 5 737 mpas_derived_types next field0dinteger
R 18346 5 739 mpas_derived_types next$p field0dinteger
R 18348 5 741 mpas_derived_types sendlist field0dinteger
R 18350 5 743 mpas_derived_types sendlist$p field0dinteger
R 18352 5 745 mpas_derived_types recvlist field0dinteger
R 18354 5 747 mpas_derived_types recvlist$p field0dinteger
R 18356 5 749 mpas_derived_types copylist field0dinteger
R 18358 5 751 mpas_derived_types copylist$p field0dinteger
R 18362 25 755 mpas_derived_types field1dchar
R 18363 5 756 mpas_derived_types block field1dchar
R 18365 5 758 mpas_derived_types block$p field1dchar
R 18368 5 761 mpas_derived_types array field1dchar
R 18369 5 762 mpas_derived_types array$sd field1dchar
R 18370 5 763 mpas_derived_types array$p field1dchar
R 18371 5 764 mpas_derived_types array$o field1dchar
R 18373 5 766 mpas_derived_types fieldname field1dchar
R 18375 5 768 mpas_derived_types constituentnames field1dchar
R 18376 5 769 mpas_derived_types constituentnames$sd field1dchar
R 18377 5 770 mpas_derived_types constituentnames$p field1dchar
R 18378 5 771 mpas_derived_types constituentnames$o field1dchar
R 18380 5 773 mpas_derived_types dimnames field1dchar
R 18381 5 774 mpas_derived_types dimsizes field1dchar
R 18382 5 775 mpas_derived_types defaultvalue field1dchar
R 18383 5 776 mpas_derived_types missingvalue field1dchar
R 18384 5 777 mpas_derived_types isdecomposed field1dchar
R 18385 5 778 mpas_derived_types hastimedimension field1dchar
R 18386 5 779 mpas_derived_types isactive field1dchar
R 18387 5 780 mpas_derived_types isvararray field1dchar
R 18388 5 781 mpas_derived_types ispersistent field1dchar
R 18390 5 783 mpas_derived_types attlists field1dchar
R 18391 5 784 mpas_derived_types attlists$sd field1dchar
R 18392 5 785 mpas_derived_types attlists$p field1dchar
R 18393 5 786 mpas_derived_types attlists$o field1dchar
R 18395 5 788 mpas_derived_types prev field1dchar
R 18397 5 790 mpas_derived_types prev$p field1dchar
R 18399 5 792 mpas_derived_types next field1dchar
R 18401 5 794 mpas_derived_types next$p field1dchar
R 18403 5 796 mpas_derived_types sendlist field1dchar
R 18405 5 798 mpas_derived_types sendlist$p field1dchar
R 18407 5 800 mpas_derived_types recvlist field1dchar
R 18409 5 802 mpas_derived_types recvlist$p field1dchar
R 18411 5 804 mpas_derived_types copylist field1dchar
R 18413 5 806 mpas_derived_types copylist$p field1dchar
R 18417 25 810 mpas_derived_types field0dchar
R 18418 5 811 mpas_derived_types block field0dchar
R 18420 5 813 mpas_derived_types block$p field0dchar
R 18422 5 815 mpas_derived_types scalar field0dchar
R 18423 5 816 mpas_derived_types fieldname field0dchar
R 18425 5 818 mpas_derived_types constituentnames field0dchar
R 18426 5 819 mpas_derived_types constituentnames$sd field0dchar
R 18427 5 820 mpas_derived_types constituentnames$p field0dchar
R 18428 5 821 mpas_derived_types constituentnames$o field0dchar
R 18430 5 823 mpas_derived_types defaultvalue field0dchar
R 18431 5 824 mpas_derived_types missingvalue field0dchar
R 18432 5 825 mpas_derived_types isdecomposed field0dchar
R 18433 5 826 mpas_derived_types hastimedimension field0dchar
R 18434 5 827 mpas_derived_types isactive field0dchar
R 18435 5 828 mpas_derived_types isvararray field0dchar
R 18437 5 830 mpas_derived_types attlists field0dchar
R 18438 5 831 mpas_derived_types attlists$sd field0dchar
R 18439 5 832 mpas_derived_types attlists$p field0dchar
R 18440 5 833 mpas_derived_types attlists$o field0dchar
R 18442 5 835 mpas_derived_types prev field0dchar
R 18444 5 837 mpas_derived_types prev$p field0dchar
R 18446 5 839 mpas_derived_types next field0dchar
R 18448 5 841 mpas_derived_types next$p field0dchar
R 18450 5 843 mpas_derived_types sendlist field0dchar
R 18452 5 845 mpas_derived_types sendlist$p field0dchar
R 18454 5 847 mpas_derived_types recvlist field0dchar
R 18456 5 849 mpas_derived_types recvlist$p field0dchar
R 18458 5 851 mpas_derived_types copylist field0dchar
R 18460 5 853 mpas_derived_types copylist$p field0dchar
R 18464 25 857 mpas_derived_types field0dlogical
R 18465 5 858 mpas_derived_types block field0dlogical
R 18467 5 860 mpas_derived_types block$p field0dlogical
R 18469 5 862 mpas_derived_types scalar field0dlogical
R 18470 5 863 mpas_derived_types fieldname field0dlogical
R 18472 5 865 mpas_derived_types constituentnames field0dlogical
R 18473 5 866 mpas_derived_types constituentnames$sd field0dlogical
R 18474 5 867 mpas_derived_types constituentnames$p field0dlogical
R 18475 5 868 mpas_derived_types constituentnames$o field0dlogical
R 18477 5 870 mpas_derived_types defaultvalue field0dlogical
R 18478 5 871 mpas_derived_types missingvalue field0dlogical
R 18479 5 872 mpas_derived_types isdecomposed field0dlogical
R 18480 5 873 mpas_derived_types hastimedimension field0dlogical
R 18481 5 874 mpas_derived_types isactive field0dlogical
R 18482 5 875 mpas_derived_types isvararray field0dlogical
R 18484 5 877 mpas_derived_types attlists field0dlogical
R 18485 5 878 mpas_derived_types attlists$sd field0dlogical
R 18486 5 879 mpas_derived_types attlists$p field0dlogical
R 18487 5 880 mpas_derived_types attlists$o field0dlogical
R 18489 5 882 mpas_derived_types prev field0dlogical
R 18491 5 884 mpas_derived_types prev$p field0dlogical
R 18493 5 886 mpas_derived_types next field0dlogical
R 18495 5 888 mpas_derived_types next$p field0dlogical
R 18497 5 890 mpas_derived_types sendlist field0dlogical
R 18499 5 892 mpas_derived_types sendlist$p field0dlogical
R 18501 5 894 mpas_derived_types recvlist field0dlogical
R 18503 5 896 mpas_derived_types recvlist$p field0dlogical
R 18505 5 898 mpas_derived_types copylist field0dlogical
R 18507 5 900 mpas_derived_types copylist$p field0dlogical
R 18524 25 917 mpas_derived_types mpas_pool_data_type
R 18525 5 918 mpas_derived_types contentstype mpas_pool_data_type
R 18526 5 919 mpas_derived_types contentsdims mpas_pool_data_type
R 18527 5 920 mpas_derived_types contentstimelevs mpas_pool_data_type
R 18528 5 921 mpas_derived_types r0 mpas_pool_data_type
R 18530 5 923 mpas_derived_types r0$p mpas_pool_data_type
R 18532 5 925 mpas_derived_types r1 mpas_pool_data_type
R 18534 5 927 mpas_derived_types r1$p mpas_pool_data_type
R 18536 5 929 mpas_derived_types r2 mpas_pool_data_type
R 18538 5 931 mpas_derived_types r2$p mpas_pool_data_type
R 18540 5 933 mpas_derived_types r3 mpas_pool_data_type
R 18542 5 935 mpas_derived_types r3$p mpas_pool_data_type
R 18544 5 937 mpas_derived_types r4 mpas_pool_data_type
R 18546 5 939 mpas_derived_types r4$p mpas_pool_data_type
R 18548 5 941 mpas_derived_types r5 mpas_pool_data_type
R 18550 5 943 mpas_derived_types r5$p mpas_pool_data_type
R 18553 5 946 mpas_derived_types r0a mpas_pool_data_type
R 18554 5 947 mpas_derived_types r0a$sd mpas_pool_data_type
R 18555 5 948 mpas_derived_types r0a$p mpas_pool_data_type
R 18556 5 949 mpas_derived_types r0a$o mpas_pool_data_type
R 18559 5 952 mpas_derived_types r1a mpas_pool_data_type
R 18560 5 953 mpas_derived_types r1a$sd mpas_pool_data_type
R 18561 5 954 mpas_derived_types r1a$p mpas_pool_data_type
R 18562 5 955 mpas_derived_types r1a$o mpas_pool_data_type
R 18565 5 958 mpas_derived_types r2a mpas_pool_data_type
R 18566 5 959 mpas_derived_types r2a$sd mpas_pool_data_type
R 18567 5 960 mpas_derived_types r2a$p mpas_pool_data_type
R 18568 5 961 mpas_derived_types r2a$o mpas_pool_data_type
R 18571 5 964 mpas_derived_types r3a mpas_pool_data_type
R 18572 5 965 mpas_derived_types r3a$sd mpas_pool_data_type
R 18573 5 966 mpas_derived_types r3a$p mpas_pool_data_type
R 18574 5 967 mpas_derived_types r3a$o mpas_pool_data_type
R 18577 5 970 mpas_derived_types r4a mpas_pool_data_type
R 18578 5 971 mpas_derived_types r4a$sd mpas_pool_data_type
R 18579 5 972 mpas_derived_types r4a$p mpas_pool_data_type
R 18580 5 973 mpas_derived_types r4a$o mpas_pool_data_type
R 18583 5 976 mpas_derived_types r5a mpas_pool_data_type
R 18584 5 977 mpas_derived_types r5a$sd mpas_pool_data_type
R 18585 5 978 mpas_derived_types r5a$p mpas_pool_data_type
R 18586 5 979 mpas_derived_types r5a$o mpas_pool_data_type
R 18588 5 981 mpas_derived_types i0 mpas_pool_data_type
R 18590 5 983 mpas_derived_types i0$p mpas_pool_data_type
R 18592 5 985 mpas_derived_types i1 mpas_pool_data_type
R 18594 5 987 mpas_derived_types i1$p mpas_pool_data_type
R 18596 5 989 mpas_derived_types i2 mpas_pool_data_type
R 18598 5 991 mpas_derived_types i2$p mpas_pool_data_type
R 18600 5 993 mpas_derived_types i3 mpas_pool_data_type
R 18602 5 995 mpas_derived_types i3$p mpas_pool_data_type
R 18605 5 998 mpas_derived_types i0a mpas_pool_data_type
R 18606 5 999 mpas_derived_types i0a$sd mpas_pool_data_type
R 18607 5 1000 mpas_derived_types i0a$p mpas_pool_data_type
R 18608 5 1001 mpas_derived_types i0a$o mpas_pool_data_type
R 18611 5 1004 mpas_derived_types i1a mpas_pool_data_type
R 18612 5 1005 mpas_derived_types i1a$sd mpas_pool_data_type
R 18613 5 1006 mpas_derived_types i1a$p mpas_pool_data_type
R 18614 5 1007 mpas_derived_types i1a$o mpas_pool_data_type
R 18617 5 1010 mpas_derived_types i2a mpas_pool_data_type
R 18618 5 1011 mpas_derived_types i2a$sd mpas_pool_data_type
R 18619 5 1012 mpas_derived_types i2a$p mpas_pool_data_type
R 18620 5 1013 mpas_derived_types i2a$o mpas_pool_data_type
R 18623 5 1016 mpas_derived_types i3a mpas_pool_data_type
R 18624 5 1017 mpas_derived_types i3a$sd mpas_pool_data_type
R 18625 5 1018 mpas_derived_types i3a$p mpas_pool_data_type
R 18626 5 1019 mpas_derived_types i3a$o mpas_pool_data_type
R 18628 5 1021 mpas_derived_types c0 mpas_pool_data_type
R 18630 5 1023 mpas_derived_types c0$p mpas_pool_data_type
R 18632 5 1025 mpas_derived_types c1 mpas_pool_data_type
R 18634 5 1027 mpas_derived_types c1$p mpas_pool_data_type
R 18637 5 1030 mpas_derived_types c0a mpas_pool_data_type
R 18638 5 1031 mpas_derived_types c0a$sd mpas_pool_data_type
R 18639 5 1032 mpas_derived_types c0a$p mpas_pool_data_type
R 18640 5 1033 mpas_derived_types c0a$o mpas_pool_data_type
R 18643 5 1036 mpas_derived_types c1a mpas_pool_data_type
R 18644 5 1037 mpas_derived_types c1a$sd mpas_pool_data_type
R 18645 5 1038 mpas_derived_types c1a$p mpas_pool_data_type
R 18646 5 1039 mpas_derived_types c1a$o mpas_pool_data_type
R 18648 5 1041 mpas_derived_types l0 mpas_pool_data_type
R 18650 5 1043 mpas_derived_types l0$p mpas_pool_data_type
R 18653 5 1046 mpas_derived_types l0a mpas_pool_data_type
R 18654 5 1047 mpas_derived_types l0a$sd mpas_pool_data_type
R 18655 5 1048 mpas_derived_types l0a$p mpas_pool_data_type
R 18656 5 1049 mpas_derived_types l0a$o mpas_pool_data_type
R 18658 5 1051 mpas_derived_types p mpas_pool_data_type
R 18660 5 1053 mpas_derived_types p$p mpas_pool_data_type
R 18662 5 1055 mpas_derived_types simple_int mpas_pool_data_type
R 18664 5 1057 mpas_derived_types simple_int$p mpas_pool_data_type
R 18667 5 1060 mpas_derived_types simple_int_arr mpas_pool_data_type
R 18668 5 1061 mpas_derived_types simple_int_arr$sd mpas_pool_data_type
R 18669 5 1062 mpas_derived_types simple_int_arr$p mpas_pool_data_type
R 18670 5 1063 mpas_derived_types simple_int_arr$o mpas_pool_data_type
R 18672 5 1065 mpas_derived_types simple_real mpas_pool_data_type
R 18674 5 1067 mpas_derived_types simple_real$p mpas_pool_data_type
R 18676 5 1069 mpas_derived_types simple_logical mpas_pool_data_type
R 18678 5 1071 mpas_derived_types simple_logical$p mpas_pool_data_type
R 18680 5 1073 mpas_derived_types simple_char mpas_pool_data_type
R 18682 5 1075 mpas_derived_types simple_char$p mpas_pool_data_type
R 18686 25 1079 mpas_derived_types mpas_pool_member_type
R 18687 5 1080 mpas_derived_types key mpas_pool_member_type
R 18688 5 1081 mpas_derived_types keylen mpas_pool_member_type
R 18689 5 1082 mpas_derived_types contentstype mpas_pool_member_type
R 18690 5 1083 mpas_derived_types data mpas_pool_member_type
R 18692 5 1085 mpas_derived_types data$p mpas_pool_member_type
R 18694 5 1087 mpas_derived_types next mpas_pool_member_type
R 18696 5 1089 mpas_derived_types next$p mpas_pool_member_type
R 18698 5 1091 mpas_derived_types iteration_next mpas_pool_member_type
R 18700 5 1093 mpas_derived_types iteration_next$p mpas_pool_member_type
R 18702 5 1095 mpas_derived_types iteration_prev mpas_pool_member_type
R 18704 5 1097 mpas_derived_types iteration_prev$p mpas_pool_member_type
R 18708 25 1101 mpas_derived_types mpas_pool_head_type
R 18709 5 1102 mpas_derived_types head mpas_pool_head_type
R 18711 5 1104 mpas_derived_types head$p mpas_pool_head_type
R 18715 5 1108 mpas_derived_types size mpas_pool_type
R 18717 5 1110 mpas_derived_types table mpas_pool_type
R 18718 5 1111 mpas_derived_types table$sd mpas_pool_type
R 18719 5 1112 mpas_derived_types table$p mpas_pool_type
R 18720 5 1113 mpas_derived_types table$o mpas_pool_type
R 18722 5 1115 mpas_derived_types iterator mpas_pool_type
R 18724 5 1117 mpas_derived_types iterator$p mpas_pool_type
R 18726 5 1119 mpas_derived_types iteration_head mpas_pool_type
R 18728 5 1121 mpas_derived_types iteration_head$p mpas_pool_type
R 18730 5 1123 mpas_derived_types iteration_tail mpas_pool_type
R 18732 5 1125 mpas_derived_types iteration_tail$p mpas_pool_type
R 18750 25 1143 mpas_derived_types mpas_particle_type
R 18751 5 1144 mpas_derived_types halodatapool mpas_particle_type
R 18753 5 1146 mpas_derived_types halodatapool$p mpas_particle_type
R 18755 5 1148 mpas_derived_types nonhalodatapool mpas_particle_type
R 18757 5 1150 mpas_derived_types nonhalodatapool$p mpas_particle_type
R 18761 25 1154 mpas_derived_types mpas_particle_list_type
R 18762 5 1155 mpas_derived_types particle mpas_particle_list_type
R 18764 5 1157 mpas_derived_types particle$p mpas_particle_list_type
R 18766 5 1159 mpas_derived_types next mpas_particle_list_type
R 18768 5 1161 mpas_derived_types next$p mpas_particle_list_type
R 18770 5 1163 mpas_derived_types prev mpas_particle_list_type
R 18772 5 1165 mpas_derived_types prev$p mpas_particle_list_type
R 18776 25 1169 mpas_derived_types mpas_list_of_particle_list_type
R 18777 5 1170 mpas_derived_types list mpas_list_of_particle_list_type
R 18779 5 1172 mpas_derived_types list$p mpas_list_of_particle_list_type
R 18821 25 1214 mpas_derived_types mpas_io_handle_type
R 18822 5 1215 mpas_derived_types initialized mpas_io_handle_type
R 18823 5 1216 mpas_derived_types preexisting_file mpas_io_handle_type
R 18824 5 1217 mpas_derived_types data_mode mpas_io_handle_type
R 18825 5 1218 mpas_derived_types pio_file mpas_io_handle_type
R 18826 5 1219 mpas_derived_types filename mpas_io_handle_type
R 18827 5 1220 mpas_derived_types iomode mpas_io_handle_type
R 18828 5 1221 mpas_derived_types ioformat mpas_io_handle_type
R 18829 5 1222 mpas_derived_types pio_unlimited_dimid mpas_io_handle_type
R 18830 5 1223 mpas_derived_types preexisting_records mpas_io_handle_type
R 18831 5 1224 mpas_derived_types frame_number mpas_io_handle_type
R 18832 25 1225 mpas_derived_types dimlist_type
R 18833 5 1226 mpas_derived_types dimlist_head mpas_io_handle_type
R 18835 5 1228 mpas_derived_types dimlist_head$p mpas_io_handle_type
R 18837 5 1230 mpas_derived_types dimlist_tail mpas_io_handle_type
R 18839 5 1232 mpas_derived_types dimlist_tail$p mpas_io_handle_type
R 18841 25 1234 mpas_derived_types fieldlist_type
R 18842 5 1235 mpas_derived_types fieldlist_head mpas_io_handle_type
R 18844 5 1237 mpas_derived_types fieldlist_head$p mpas_io_handle_type
R 18846 5 1239 mpas_derived_types fieldlist_tail mpas_io_handle_type
R 18848 5 1241 mpas_derived_types fieldlist_tail$p mpas_io_handle_type
R 18850 25 1243 mpas_derived_types attlist_type
R 18851 5 1244 mpas_derived_types attlist_head mpas_io_handle_type
R 18853 5 1246 mpas_derived_types attlist_head$p mpas_io_handle_type
R 18855 5 1248 mpas_derived_types attlist_tail mpas_io_handle_type
R 18857 5 1250 mpas_derived_types attlist_tail$p mpas_io_handle_type
R 18859 25 1252 mpas_derived_types mpas_io_context_type
R 18860 5 1253 mpas_derived_types iocontext mpas_io_handle_type
R 18862 5 1255 mpas_derived_types iocontext$p mpas_io_handle_type
R 18866 25 1259 mpas_derived_types decomphandle_type
R 18867 5 1260 mpas_derived_types field_type decomphandle_type
R 18869 5 1262 mpas_derived_types dims decomphandle_type
R 18870 5 1263 mpas_derived_types dims$sd decomphandle_type
R 18871 5 1264 mpas_derived_types dims$p decomphandle_type
R 18872 5 1265 mpas_derived_types dims$o decomphandle_type
R 18875 5 1268 mpas_derived_types indices decomphandle_type
R 18876 5 1269 mpas_derived_types indices$sd decomphandle_type
R 18877 5 1270 mpas_derived_types indices$p decomphandle_type
R 18878 5 1271 mpas_derived_types indices$o decomphandle_type
R 18880 5 1273 mpas_derived_types pio_iodesc decomphandle_type
R 18882 25 1275 mpas_derived_types atthandle_type
R 18883 5 1276 mpas_derived_types attname atthandle_type
R 18884 5 1277 mpas_derived_types atttype atthandle_type
R 18885 5 1278 mpas_derived_types attvalueint atthandle_type
R 18886 5 1279 mpas_derived_types precision atthandle_type
R 18888 5 1281 mpas_derived_types attvalueinta atthandle_type
R 18889 5 1282 mpas_derived_types attvalueinta$sd atthandle_type
R 18890 5 1283 mpas_derived_types attvalueinta$p atthandle_type
R 18891 5 1284 mpas_derived_types attvalueinta$o atthandle_type
R 18893 5 1286 mpas_derived_types attvaluereal atthandle_type
R 18895 5 1288 mpas_derived_types attvaluereala atthandle_type
R 18896 5 1289 mpas_derived_types attvaluereala$sd atthandle_type
R 18897 5 1290 mpas_derived_types attvaluereala$p atthandle_type
R 18898 5 1291 mpas_derived_types attvaluereala$o atthandle_type
R 18900 5 1293 mpas_derived_types attvaluetext atthandle_type
R 18903 25 1296 mpas_derived_types dimhandle_type
R 18904 5 1297 mpas_derived_types dimname dimhandle_type
R 18905 5 1298 mpas_derived_types is_unlimited_dim dimhandle_type
R 18906 5 1299 mpas_derived_types dimsize dimhandle_type
R 18907 5 1300 mpas_derived_types dimid dimhandle_type
R 18910 25 1303 mpas_derived_types fieldhandle_type
R 18911 5 1304 mpas_derived_types fieldname fieldhandle_type
R 18912 5 1305 mpas_derived_types fieldid fieldhandle_type
R 18913 5 1306 mpas_derived_types field_desc fieldhandle_type
R 18914 5 1307 mpas_derived_types field_type fieldhandle_type
R 18915 5 1308 mpas_derived_types has_unlimited_dim fieldhandle_type
R 18916 5 1309 mpas_derived_types ndims fieldhandle_type
R 18917 5 1310 mpas_derived_types precision fieldhandle_type
R 18919 5 1312 mpas_derived_types dims fieldhandle_type
R 18920 5 1313 mpas_derived_types dims$sd fieldhandle_type
R 18921 5 1314 mpas_derived_types dims$p fieldhandle_type
R 18922 5 1315 mpas_derived_types dims$o fieldhandle_type
R 18924 5 1317 mpas_derived_types attlist_head fieldhandle_type
R 18926 5 1319 mpas_derived_types attlist_head$p fieldhandle_type
R 18928 5 1321 mpas_derived_types attlist_tail fieldhandle_type
R 18930 5 1323 mpas_derived_types attlist_tail$p fieldhandle_type
R 18932 5 1325 mpas_derived_types decomp fieldhandle_type
R 18934 5 1327 mpas_derived_types decomp$p fieldhandle_type
R 18938 25 1331 mpas_derived_types decomplist_type
R 18939 5 1332 mpas_derived_types decomphandle decomplist_type
R 18941 5 1334 mpas_derived_types decomphandle$p decomplist_type
R 18943 5 1336 mpas_derived_types next decomplist_type
R 18945 5 1338 mpas_derived_types next$p decomplist_type
R 18949 5 1342 mpas_derived_types atthandle attlist_type
R 18951 5 1344 mpas_derived_types atthandle$p attlist_type
R 18953 5 1346 mpas_derived_types next attlist_type
R 18955 5 1348 mpas_derived_types next$p attlist_type
R 18959 5 1352 mpas_derived_types dimhandle dimlist_type
R 18961 5 1354 mpas_derived_types dimhandle$p dimlist_type
R 18963 5 1356 mpas_derived_types next dimlist_type
R 18965 5 1358 mpas_derived_types next$p dimlist_type
R 18969 5 1362 mpas_derived_types fieldhandle fieldlist_type
R 18971 5 1364 mpas_derived_types fieldhandle$p fieldlist_type
R 18973 5 1366 mpas_derived_types next fieldlist_type
R 18975 5 1368 mpas_derived_types next$p fieldlist_type
R 18979 5 1372 mpas_derived_types decomp_list mpas_io_context_type
R 18981 5 1374 mpas_derived_types decomp_list$p mpas_io_context_type
R 18983 5 1376 mpas_derived_types pio_iosystem mpas_io_context_type
R 18985 5 1378 mpas_derived_types pio_iosystem$p mpas_io_context_type
R 18987 5 1380 mpas_derived_types master_pio_iotype mpas_io_context_type
R 18988 5 1381 mpas_derived_types dminfo mpas_io_context_type
R 18990 5 1383 mpas_derived_types dminfo$p mpas_io_context_type
R 19018 25 1411 mpas_derived_types field_list_type
R 19019 5 1412 mpas_derived_types field_type field_list_type
R 19020 5 1413 mpas_derived_types isdecomposed field_list_type
R 19021 5 1414 mpas_derived_types totaldimsize field_list_type
R 19023 5 1416 mpas_derived_types isavailable field_list_type
R 19024 5 1417 mpas_derived_types isavailable$sd field_list_type
R 19025 5 1418 mpas_derived_types isavailable$p field_list_type
R 19026 5 1419 mpas_derived_types isavailable$o field_list_type
R 19028 5 1421 mpas_derived_types int0dfield field_list_type
R 19030 5 1423 mpas_derived_types int0dfield$p field_list_type
R 19032 5 1425 mpas_derived_types int1dfield field_list_type
R 19034 5 1427 mpas_derived_types int1dfield$p field_list_type
R 19036 5 1429 mpas_derived_types int2dfield field_list_type
R 19038 5 1431 mpas_derived_types int2dfield$p field_list_type
R 19040 5 1433 mpas_derived_types int3dfield field_list_type
R 19042 5 1435 mpas_derived_types int3dfield$p field_list_type
R 19044 5 1437 mpas_derived_types real0dfield field_list_type
R 19046 5 1439 mpas_derived_types real0dfield$p field_list_type
R 19048 5 1441 mpas_derived_types real1dfield field_list_type
R 19050 5 1443 mpas_derived_types real1dfield$p field_list_type
R 19052 5 1445 mpas_derived_types real2dfield field_list_type
R 19054 5 1447 mpas_derived_types real2dfield$p field_list_type
R 19056 5 1449 mpas_derived_types real3dfield field_list_type
R 19058 5 1451 mpas_derived_types real3dfield$p field_list_type
R 19060 5 1453 mpas_derived_types real4dfield field_list_type
R 19062 5 1455 mpas_derived_types real4dfield$p field_list_type
R 19064 5 1457 mpas_derived_types real5dfield field_list_type
R 19066 5 1459 mpas_derived_types real5dfield$p field_list_type
R 19068 5 1461 mpas_derived_types char0dfield field_list_type
R 19070 5 1463 mpas_derived_types char0dfield$p field_list_type
R 19072 5 1465 mpas_derived_types char1dfield field_list_type
R 19074 5 1467 mpas_derived_types char1dfield$p field_list_type
R 19076 5 1469 mpas_derived_types next field_list_type
R 19078 5 1471 mpas_derived_types next$p field_list_type
R 19082 25 1475 mpas_derived_types mpas_stream_type
R 19083 5 1476 mpas_derived_types isinitialized mpas_stream_type
R 19084 5 1477 mpas_derived_types ioformat mpas_stream_type
R 19085 5 1478 mpas_derived_types iodirection mpas_stream_type
R 19086 5 1479 mpas_derived_types defaultprecision mpas_stream_type
R 19087 5 1480 mpas_derived_types clobberrecords mpas_stream_type
R 19088 5 1481 mpas_derived_types blockwrite mpas_stream_type
R 19089 5 1482 mpas_derived_types filename mpas_stream_type
R 19090 5 1483 mpas_derived_types filehandle mpas_stream_type
R 19091 5 1484 mpas_derived_types attlist mpas_stream_type
R 19093 5 1486 mpas_derived_types attlist$p mpas_stream_type
R 19095 5 1488 mpas_derived_types fieldlist mpas_stream_type
R 19097 5 1490 mpas_derived_types fieldlist$p mpas_stream_type
R 19104 25 1497 mpas_derived_types mpas_stream_list_type
R 19105 5 1498 mpas_derived_types nitems mpas_stream_list_type
R 19106 5 1499 mpas_derived_types head mpas_stream_list_type
R 19108 5 1501 mpas_derived_types head$p mpas_stream_list_type
R 19110 5 1503 mpas_derived_types direction mpas_stream_list_type
R 19111 5 1504 mpas_derived_types valid mpas_stream_list_type
R 19112 5 1505 mpas_derived_types immutable mpas_stream_list_type
R 19113 5 1506 mpas_derived_types active_stream mpas_stream_list_type
R 19114 5 1507 mpas_derived_types blockwrite mpas_stream_list_type
R 19115 5 1508 mpas_derived_types filename mpas_stream_list_type
R 19116 5 1509 mpas_derived_types filename_template mpas_stream_list_type
R 19117 5 1510 mpas_derived_types filename_interval mpas_stream_list_type
R 19118 5 1511 mpas_derived_types stream mpas_stream_list_type
R 19120 5 1513 mpas_derived_types stream$p mpas_stream_list_type
R 19122 5 1515 mpas_derived_types timelevel mpas_stream_list_type
R 19123 5 1516 mpas_derived_types nrecords mpas_stream_list_type
R 19124 5 1517 mpas_derived_types precision mpas_stream_list_type
R 19125 5 1518 mpas_derived_types clobber_mode mpas_stream_list_type
R 19126 5 1519 mpas_derived_types io_type mpas_stream_list_type
R 19127 25 1520 mpas_derived_types mpas_timeinterval_type
R 19128 5 1521 mpas_derived_types recordinterval mpas_stream_list_type
R 19130 5 1523 mpas_derived_types recordinterval$p mpas_stream_list_type
R 19132 5 1525 mpas_derived_types alarmlist_in mpas_stream_list_type
R 19134 5 1527 mpas_derived_types alarmlist_in$p mpas_stream_list_type
R 19136 5 1529 mpas_derived_types alarmlist_out mpas_stream_list_type
R 19138 5 1531 mpas_derived_types alarmlist_out$p mpas_stream_list_type
R 19140 5 1533 mpas_derived_types att_pool mpas_stream_list_type
R 19142 5 1535 mpas_derived_types att_pool$p mpas_stream_list_type
R 19144 5 1537 mpas_derived_types field_pool mpas_stream_list_type
R 19146 5 1539 mpas_derived_types field_pool$p mpas_stream_list_type
R 19148 5 1541 mpas_derived_types field_pkg_pool mpas_stream_list_type
R 19150 5 1543 mpas_derived_types field_pkg_pool$p mpas_stream_list_type
R 19152 5 1545 mpas_derived_types pkg_pool mpas_stream_list_type
R 19154 5 1547 mpas_derived_types pkg_pool$p mpas_stream_list_type
R 19156 25 1549 mpas_derived_types mpas_time_type
R 19157 5 1550 mpas_derived_types referencetime mpas_stream_list_type
R 19159 5 1552 mpas_derived_types referencetime$p mpas_stream_list_type
R 19161 5 1554 mpas_derived_types streamlist mpas_stream_list_type
R 19163 5 1556 mpas_derived_types streamlist$p mpas_stream_list_type
R 19165 5 1558 mpas_derived_types name mpas_stream_list_type
R 19166 5 1559 mpas_derived_types xref mpas_stream_list_type
R 19168 5 1561 mpas_derived_types xref$p mpas_stream_list_type
R 19170 5 1563 mpas_derived_types next mpas_stream_list_type
R 19172 5 1565 mpas_derived_types next$p mpas_stream_list_type
R 19200 25 1593 mpas_derived_types mpas_streammanager_type
R 19201 5 1594 mpas_derived_types numstreams mpas_streammanager_type
R 19202 5 1595 mpas_derived_types errorlevel mpas_streammanager_type
R 19203 5 1596 mpas_derived_types iocontext mpas_streammanager_type
R 19205 5 1598 mpas_derived_types iocontext$p mpas_streammanager_type
R 19207 25 1600 mpas_derived_types mpas_clock_type
R 19208 5 1601 mpas_derived_types streamclock mpas_streammanager_type
R 19210 5 1603 mpas_derived_types streamclock$p mpas_streammanager_type
R 19212 5 1605 mpas_derived_types allfields mpas_streammanager_type
R 19214 5 1607 mpas_derived_types allfields$p mpas_streammanager_type
R 19216 5 1609 mpas_derived_types allpackages mpas_streammanager_type
R 19218 5 1611 mpas_derived_types allpackages$p mpas_streammanager_type
R 19220 5 1613 mpas_derived_types allstructs mpas_streammanager_type
R 19222 5 1615 mpas_derived_types allstructs$p mpas_streammanager_type
R 19224 5 1617 mpas_derived_types defaultatts mpas_streammanager_type
R 19226 5 1619 mpas_derived_types defaultatts$p mpas_streammanager_type
R 19228 5 1621 mpas_derived_types currentstream mpas_streammanager_type
R 19230 5 1623 mpas_derived_types currentstream$p mpas_streammanager_type
R 19232 5 1625 mpas_derived_types streams mpas_streammanager_type
R 19234 5 1627 mpas_derived_types streams$p mpas_streammanager_type
R 19236 5 1629 mpas_derived_types alarms_in mpas_streammanager_type
R 19238 5 1631 mpas_derived_types alarms_in$p mpas_streammanager_type
R 19240 5 1633 mpas_derived_types alarms_out mpas_streammanager_type
R 19242 5 1635 mpas_derived_types alarms_out$p mpas_streammanager_type
R 19255 5 1648 mpas_derived_types t mpas_time_type
R 19258 5 1651 mpas_derived_types ti mpas_timeinterval_type
R 19261 25 1654 mpas_derived_types mpas_alarm_type
R 19262 5 1655 mpas_derived_types alarmid mpas_alarm_type
R 19263 5 1656 mpas_derived_types isrecurring mpas_alarm_type
R 19264 5 1657 mpas_derived_types isset mpas_alarm_type
R 19265 5 1658 mpas_derived_types ringtime mpas_alarm_type
R 19266 5 1659 mpas_derived_types prevringtime mpas_alarm_type
R 19267 5 1660 mpas_derived_types ringtimeinterval mpas_alarm_type
R 19268 5 1661 mpas_derived_types next mpas_alarm_type
R 19270 5 1663 mpas_derived_types next$p mpas_alarm_type
R 19274 5 1667 mpas_derived_types direction mpas_clock_type
R 19275 5 1668 mpas_derived_types nalarms mpas_clock_type
R 19276 5 1669 mpas_derived_types c mpas_clock_type
R 19277 5 1670 mpas_derived_types alarmlisthead mpas_clock_type
R 19279 5 1672 mpas_derived_types alarmlisthead$p mpas_clock_type
R 19283 25 1676 mpas_derived_types mpas_timer_root
R 19284 25 1677 mpas_derived_types mpas_timer_node
R 19285 5 1678 mpas_derived_types root_timer mpas_timer_root
R 19287 5 1680 mpas_derived_types root_timer$p mpas_timer_root
R 19289 5 1682 mpas_derived_types current_timer mpas_timer_root
R 19291 5 1684 mpas_derived_types current_timer$p mpas_timer_root
R 19293 5 1686 mpas_derived_types dminfo mpas_timer_root
R 19295 5 1688 mpas_derived_types dminfo$p mpas_timer_root
R 19299 5 1692 mpas_derived_types timer_name mpas_timer_node
R 19300 5 1693 mpas_derived_types printed mpas_timer_node
R 19301 5 1694 mpas_derived_types nlen mpas_timer_node
R 19303 5 1696 mpas_derived_types running mpas_timer_node
R 19304 5 1697 mpas_derived_types running$sd mpas_timer_node
R 19305 5 1698 mpas_derived_types running$p mpas_timer_node
R 19306 5 1699 mpas_derived_types running$o mpas_timer_node
R 19308 5 1701 mpas_derived_types calls mpas_timer_node
R 19310 5 1703 mpas_derived_types start_time mpas_timer_node
R 19311 5 1704 mpas_derived_types start_time$sd mpas_timer_node
R 19312 5 1705 mpas_derived_types start_time$p mpas_timer_node
R 19313 5 1706 mpas_derived_types start_time$o mpas_timer_node
R 19315 5 1708 mpas_derived_types end_time mpas_timer_node
R 19317 5 1710 mpas_derived_types end_time$sd mpas_timer_node
R 19318 5 1711 mpas_derived_types end_time$p mpas_timer_node
R 19319 5 1712 mpas_derived_types end_time$o mpas_timer_node
R 19321 5 1714 mpas_derived_types total_time mpas_timer_node
R 19323 5 1716 mpas_derived_types total_time$sd mpas_timer_node
R 19324 5 1717 mpas_derived_types total_time$p mpas_timer_node
R 19325 5 1718 mpas_derived_types total_time$o mpas_timer_node
R 19328 5 1721 mpas_derived_types max_time mpas_timer_node
R 19329 5 1722 mpas_derived_types max_time$sd mpas_timer_node
R 19330 5 1723 mpas_derived_types max_time$p mpas_timer_node
R 19331 5 1724 mpas_derived_types max_time$o mpas_timer_node
R 19333 5 1726 mpas_derived_types min_time mpas_timer_node
R 19335 5 1728 mpas_derived_types min_time$sd mpas_timer_node
R 19336 5 1729 mpas_derived_types min_time$p mpas_timer_node
R 19337 5 1730 mpas_derived_types min_time$o mpas_timer_node
R 19339 5 1732 mpas_derived_types avg_time mpas_timer_node
R 19341 5 1734 mpas_derived_types avg_time$sd mpas_timer_node
R 19342 5 1735 mpas_derived_types avg_time$p mpas_timer_node
R 19343 5 1736 mpas_derived_types avg_time$o mpas_timer_node
R 19345 5 1738 mpas_derived_types next mpas_timer_node
R 19347 5 1740 mpas_derived_types next$p mpas_timer_node
R 19349 5 1742 mpas_derived_types child mpas_timer_node
R 19351 5 1744 mpas_derived_types child$p mpas_timer_node
R 19353 5 1746 mpas_derived_types parent mpas_timer_node
R 19355 5 1748 mpas_derived_types parent$p mpas_timer_node
R 19370 25 1763 mpas_derived_types mpas_log_type
R 19371 5 1764 mpas_derived_types outputlog mpas_log_type
R 19373 5 1766 mpas_derived_types outputlog$p mpas_log_type
R 19375 5 1768 mpas_derived_types errorlog mpas_log_type
R 19377 5 1770 mpas_derived_types errorlog$p mpas_log_type
R 19379 5 1772 mpas_derived_types taskid mpas_log_type
R 19380 5 1773 mpas_derived_types ntasks mpas_log_type
R 19381 5 1774 mpas_derived_types corename mpas_log_type
R 19382 5 1775 mpas_derived_types outputmessagecount mpas_log_type
R 19383 5 1776 mpas_derived_types warningmessagecount mpas_log_type
R 19384 5 1777 mpas_derived_types errormessagecount mpas_log_type
R 19385 5 1778 mpas_derived_types criticalerrormessagecount mpas_log_type
R 19425 5 1818 mpas_derived_types blockid block_type
R 19426 5 1819 mpas_derived_types localblockid block_type
R 19427 25 1820 mpas_derived_types domain_type
R 19428 5 1821 mpas_derived_types domain block_type
R 19430 5 1823 mpas_derived_types domain$p block_type
R 19432 5 1825 mpas_derived_types parinfo block_type
R 19434 5 1827 mpas_derived_types parinfo$p block_type
R 19436 5 1829 mpas_derived_types prev block_type
R 19438 5 1831 mpas_derived_types prev$p block_type
R 19440 5 1833 mpas_derived_types next block_type
R 19442 5 1835 mpas_derived_types next$p block_type
R 19444 5 1837 mpas_derived_types structs block_type
R 19446 5 1839 mpas_derived_types structs$p block_type
R 19448 5 1841 mpas_derived_types dimensions block_type
R 19450 5 1843 mpas_derived_types dimensions$p block_type
R 19452 5 1845 mpas_derived_types configs block_type
R 19454 5 1847 mpas_derived_types configs$p block_type
R 19456 5 1849 mpas_derived_types packages block_type
R 19458 5 1851 mpas_derived_types packages$p block_type
R 19460 5 1853 mpas_derived_types allfields block_type
R 19462 5 1855 mpas_derived_types allfields$p block_type
R 19464 5 1857 mpas_derived_types allstructs block_type
R 19466 5 1859 mpas_derived_types allstructs$p block_type
R 19468 5 1861 mpas_derived_types particlelist block_type
R 19470 5 1863 mpas_derived_types particlelist$p block_type
R 19473 5 1866 mpas_derived_types blockneighs block_type
R 19474 5 1867 mpas_derived_types blockneighs$sd block_type
R 19475 5 1868 mpas_derived_types blockneighs$p block_type
R 19476 5 1869 mpas_derived_types blockneighs$o block_type
R 19479 5 1872 mpas_derived_types procneighs block_type
R 19480 5 1873 mpas_derived_types procneighs$sd block_type
R 19481 5 1874 mpas_derived_types procneighs$p block_type
R 19482 5 1875 mpas_derived_types procneighs$o block_type
R 19488 14 1881 mpas_derived_types mpas_decomp_function
S 19489 1 3 1 0 6932 1 19488 79337 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 block
S 19490 1 3 3 0 8536 1 19488 94101 2014 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 manager
S 19491 1 3 1 0 6 1 19488 94109 2014 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 globaldimsize
S 19492 1 3 1 0 6 1 19488 94123 2014 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 numblocks
S 19493 7 3 0 0 8827 1 19488 94133 10800014 3014 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ownedindices
S 19494 1 3 0 0 6 1 19488 11804 2014 1003000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
S 19495 8 1 0 0 8830 1 19488 94146 40822004 3020 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ownedindices$sd
R 19499 25 1892 mpas_derived_types mpas_decomp_list
R 19500 5 1893 mpas_derived_types namelen mpas_decomp_list
R 19501 5 1894 mpas_derived_types decompname mpas_decomp_list
R 19502 5 1895 mpas_derived_types decompfunc mpas_decomp_list
R 19503 5 1896 mpas_derived_types decompfunc$sd mpas_decomp_list
R 19504 5 1897 mpas_derived_types decompfunc$p mpas_decomp_list
R 19506 5 1899 mpas_derived_types next mpas_decomp_list
R 19508 5 1901 mpas_derived_types next$p mpas_decomp_list
R 19512 5 1905 mpas_derived_types blocklist domain_type
R 19514 5 1907 mpas_derived_types blocklist$p domain_type
R 19516 5 1909 mpas_derived_types configs domain_type
R 19518 5 1911 mpas_derived_types configs$p domain_type
R 19520 5 1913 mpas_derived_types packages domain_type
R 19522 5 1915 mpas_derived_types packages$p domain_type
R 19524 5 1917 mpas_derived_types clock domain_type
R 19526 5 1919 mpas_derived_types clock$p domain_type
R 19528 5 1921 mpas_derived_types loginfo domain_type
R 19530 5 1923 mpas_derived_types loginfo$p domain_type
R 19532 5 1925 mpas_derived_types streammanager domain_type
R 19534 5 1927 mpas_derived_types streammanager$p domain_type
R 19536 5 1929 mpas_derived_types decompositions domain_type
R 19538 5 1931 mpas_derived_types decompositions$p domain_type
R 19540 5 1933 mpas_derived_types iocontext domain_type
R 19542 5 1935 mpas_derived_types iocontext$p domain_type
R 19544 5 1937 mpas_derived_types dminfo domain_type
R 19546 5 1939 mpas_derived_types dminfo$p domain_type
R 19548 5 1941 mpas_derived_types exchangegroups domain_type
R 19550 5 1943 mpas_derived_types exchangegroups$p domain_type
R 19552 5 1945 mpas_derived_types on_a_sphere domain_type
R 19553 5 1946 mpas_derived_types is_periodic domain_type
R 19554 5 1947 mpas_derived_types sphere_radius domain_type
R 19555 5 1948 mpas_derived_types x_period domain_type
R 19556 5 1949 mpas_derived_types y_period domain_type
R 19557 5 1950 mpas_derived_types namelist_filename domain_type
R 19558 5 1951 mpas_derived_types streams_filename domain_type
R 19559 5 1952 mpas_derived_types mesh_spec domain_type
R 19560 5 1953 mpas_derived_types parent_id domain_type
R 19561 5 1954 mpas_derived_types timer_root domain_type
R 19563 5 1956 mpas_derived_types timer_root$p domain_type
R 19565 25 1958 mpas_derived_types core_type
R 19566 5 1959 mpas_derived_types core domain_type
R 19568 5 1961 mpas_derived_types core$p domain_type
R 19570 5 1963 mpas_derived_types next domain_type
R 19572 5 1965 mpas_derived_types next$p domain_type
R 19576 14 1969 mpas_derived_types mpas_setup_namelist_function
S 19577 1 3 3 0 6892 1 19576 93678 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 19578 1 3 1 0 30 1 19576 95021 2014 43000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 namelistfilename
S 19579 1 3 1 0 6744 1 19576 87466 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dminfo
S 19580 1 3 0 0 6 1 19576 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19581 14 1974 mpas_derived_types mpas_define_packages_function
S 19582 1 3 3 0 6892 1 19581 93717 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 packages
S 19583 1 3 0 0 6 1 19581 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19584 14 1977 mpas_derived_types mpas_setup_packages_function
S 19585 1 3 3 0 6892 1 19584 93678 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 19586 1 3 3 0 6892 1 19584 93717 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 packages
S 19587 1 3 3 0 8170 1 19584 86173 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 iocontext
S 19588 1 3 0 0 6 1 19584 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19589 14 1982 mpas_derived_types mpas_setup_decompositions_function
S 19590 1 3 0 0 8833 1 19589 95132 2014 3014 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 decomplist
S 19591 1 3 0 0 6 1 19589 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19593 14 1986 mpas_derived_types mpas_get_mesh_stream_function
S 19594 1 3 3 0 6892 1 19593 93678 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 19595 1 3 2 0 6682 1 19593 89210 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 stream
S 19596 1 3 0 0 6 1 19593 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19597 14 1990 mpas_derived_types mpas_setup_clock_function
S 19598 1 3 3 0 8545 1 19597 75617 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 clock
S 19599 1 3 3 0 6892 1 19597 93678 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 19600 1 3 0 0 6 1 19597 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19601 14 1994 mpas_derived_types mpas_setup_log_function
S 19602 1 3 3 0 8712 1 19601 94467 2014 3014 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 loginfo
S 19603 1 3 1 0 8763 1 19601 93492 2014 3014 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 domain
S 19604 1 3 0 0 6 1 19601 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19607 14 2000 mpas_derived_types mpas_setup_immutable_streams_function
S 19608 1 3 0 0 8536 1 19607 94101 2014 3014 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 manager
S 19609 1 3 0 0 6 1 19607 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19611 14 2004 mpas_derived_types mpas_setup_block_function
S 19612 1 3 0 0 6932 1 19611 79337 2014 3014 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 block
S 19613 1 3 0 0 6 1 19611 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19615 14 2008 mpas_derived_types mpas_setup_derived_dimensions_function
S 19616 1 3 3 0 6892 1 19615 95390 2014 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 readdimensions
S 19617 1 3 3 0 6892 1 19615 95405 2014 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dimensionpool
S 19618 1 3 3 0 6892 1 19615 95419 2014 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configpool
S 19619 1 3 0 0 6 1 19615 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19620 14 2013 mpas_derived_types mpas_setup_decomposed_dimensions_function
S 19621 1 3 3 0 6932 1 19620 79337 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 block
S 19622 1 3 3 0 8536 1 19620 94506 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 streammanager
S 19623 1 3 3 0 6892 1 19620 95390 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 readdimensions
S 19624 1 3 3 0 6892 1 19620 95405 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dimensionpool
S 19625 1 3 1 0 6 1 19620 95472 2014 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 totalblocks
S 19626 1 3 0 0 6 1 19620 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19627 14 2020 mpas_derived_types mpas_core_init_function
S 19628 1 3 3 0 8763 1 19627 93492 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 domain
S 19629 1 3 2 0 30 1 19627 95508 2014 43000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 timestamp
S 19630 1 3 0 0 6 1 19627 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19631 14 2024 mpas_derived_types mpas_core_run_function
S 19632 1 3 3 0 8763 1 19631 93492 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 domain
S 19633 1 3 0 0 6 1 19631 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19634 14 2027 mpas_derived_types mpas_core_finalize_function
S 19635 1 3 3 0 8763 1 19634 93492 2014 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 domain
S 19636 1 3 0 0 6 1 19634 11804 2014 1003000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ierr
R 19637 5 2030 mpas_derived_types domainlist core_type
R 19639 5 2032 mpas_derived_types domainlist$p core_type
R 19641 5 2034 mpas_derived_types modelname core_type
R 19642 5 2035 mpas_derived_types corename core_type
R 19643 5 2036 mpas_derived_types modelversion core_type
R 19644 5 2037 mpas_derived_types executablename core_type
R 19645 5 2038 mpas_derived_types git_version core_type
R 19646 5 2039 mpas_derived_types history core_type
R 19647 5 2040 mpas_derived_types conventions core_type
R 19648 5 2041 mpas_derived_types source core_type
R 19649 5 2042 mpas_derived_types core_init core_type
R 19650 5 2043 mpas_derived_types core_init$sd core_type
R 19651 5 2044 mpas_derived_types core_init$p core_type
R 19653 5 2046 mpas_derived_types core_run core_type
R 19654 5 2047 mpas_derived_types core_run$sd core_type
R 19655 5 2048 mpas_derived_types core_run$p core_type
R 19657 5 2050 mpas_derived_types core_finalize core_type
R 19658 5 2051 mpas_derived_types core_finalize$sd core_type
R 19659 5 2052 mpas_derived_types core_finalize$p core_type
R 19661 5 2054 mpas_derived_types setup_namelist core_type
R 19662 5 2055 mpas_derived_types setup_namelist$sd core_type
R 19663 5 2056 mpas_derived_types setup_namelist$p core_type
R 19665 5 2058 mpas_derived_types define_packages core_type
R 19666 5 2059 mpas_derived_types define_packages$sd core_type
R 19667 5 2060 mpas_derived_types define_packages$p core_type
R 19669 5 2062 mpas_derived_types setup_packages core_type
R 19670 5 2063 mpas_derived_types setup_packages$sd core_type
R 19671 5 2064 mpas_derived_types setup_packages$p core_type
R 19673 5 2066 mpas_derived_types setup_decompositions core_type
R 19674 5 2067 mpas_derived_types setup_decompositions$sd core_type
R 19675 5 2068 mpas_derived_types setup_decompositions$p core_type
R 19677 5 2070 mpas_derived_types get_mesh_stream core_type
R 19678 5 2071 mpas_derived_types get_mesh_stream$sd core_type
R 19679 5 2072 mpas_derived_types get_mesh_stream$p core_type
R 19681 5 2074 mpas_derived_types setup_clock core_type
R 19682 5 2075 mpas_derived_types setup_clock$sd core_type
R 19683 5 2076 mpas_derived_types setup_clock$p core_type
R 19685 5 2078 mpas_derived_types setup_log core_type
R 19686 5 2079 mpas_derived_types setup_log$sd core_type
R 19687 5 2080 mpas_derived_types setup_log$p core_type
R 19689 5 2082 mpas_derived_types setup_block core_type
R 19690 5 2083 mpas_derived_types setup_block$sd core_type
R 19691 5 2084 mpas_derived_types setup_block$p core_type
R 19693 5 2086 mpas_derived_types setup_immutable_streams core_type
R 19694 5 2087 mpas_derived_types setup_immutable_streams$sd core_type
R 19695 5 2088 mpas_derived_types setup_immutable_streams$p core_type
R 19697 5 2090 mpas_derived_types setup_derived_dimensions core_type
R 19698 5 2091 mpas_derived_types setup_derived_dimensions$sd core_type
R 19699 5 2092 mpas_derived_types setup_derived_dimensions$p core_type
R 19701 5 2094 mpas_derived_types setup_decomposed_dimensions core_type
R 19702 5 2095 mpas_derived_types setup_decomposed_dimensions$sd core_type
R 19703 5 2096 mpas_derived_types setup_decomposed_dimensions$p core_type
R 19705 5 2098 mpas_derived_types next core_type
R 19707 5 2100 mpas_derived_types next$p core_type
R 19711 14 2104 mpas_derived_types variable_interval
S 19712 1 3 1 0 8489 1 19711 96773 2014 3000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 currenttime
S 19713 1 3 0 0 8462 1 19711 96785 2014 1003000 A 0 0 0 0 B 0 24 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 variableinterval
R 19714 25 2107 mpas_derived_types mpas_forcing_field_type
R 19715 5 2108 mpas_derived_types forcingname mpas_forcing_field_type
R 19716 5 2109 mpas_derived_types poolname mpas_forcing_field_type
R 19717 5 2110 mpas_derived_types fieldname mpas_forcing_field_type
R 19718 5 2111 mpas_derived_types next mpas_forcing_field_type
R 19720 5 2113 mpas_derived_types next$p mpas_forcing_field_type
R 19724 25 2117 mpas_derived_types mpas_forcing_stream_type
R 19725 5 2118 mpas_derived_types forcingstreamid mpas_forcing_stream_type
R 19726 5 2119 mpas_derived_types forcingalarmid mpas_forcing_stream_type
R 19727 5 2120 mpas_derived_types interpolationtype mpas_forcing_stream_type
R 19728 5 2121 mpas_derived_types ntimestencil mpas_forcing_stream_type
R 19729 5 2122 mpas_derived_types ntimestencillower mpas_forcing_stream_type
R 19730 5 2123 mpas_derived_types ntimestencilupper mpas_forcing_stream_type
R 19732 5 2125 mpas_derived_types forcingtimes mpas_forcing_stream_type
R 19733 5 2126 mpas_derived_types forcingtimes$sd mpas_forcing_stream_type
R 19734 5 2127 mpas_derived_types forcingtimes$p mpas_forcing_stream_type
R 19735 5 2128 mpas_derived_types forcingtimes$o mpas_forcing_stream_type
R 19737 5 2130 mpas_derived_types forcingintervalconstant mpas_forcing_stream_type
R 19738 5 2131 mpas_derived_types forcingreferencetime mpas_forcing_stream_type
R 19739 5 2132 mpas_derived_types forcinginitializationtype mpas_forcing_stream_type
R 19740 5 2133 mpas_derived_types variable_interval_forward_ptr mpas_forcing_stream_type
R 19741 5 2134 mpas_derived_types variable_interval_forward_ptr$sd mpas_forcing_stream_type
R 19742 5 2135 mpas_derived_types variable_interval_forward_ptr$p mpas_forcing_stream_type
R 19744 5 2137 mpas_derived_types variable_interval_backward_ptr mpas_forcing_stream_type
R 19745 5 2138 mpas_derived_types variable_interval_backward_ptr$sd mpas_forcing_stream_type
R 19746 5 2139 mpas_derived_types variable_interval_backward_ptr$p mpas_forcing_stream_type
R 19748 5 2141 mpas_derived_types variable_interval_forward_test_ptr mpas_forcing_stream_type
R 19749 5 2142 mpas_derived_types variable_interval_forward_test_ptr$sd mpas_forcing_stream_type
R 19750 5 2143 mpas_derived_types variable_interval_forward_test_ptr$p mpas_forcing_stream_type
R 19752 5 2145 mpas_derived_types variable_interval_backward_test_ptr mpas_forcing_stream_type
R 19753 5 2146 mpas_derived_types variable_interval_backward_test_ptr$sd mpas_forcing_stream_type
R 19754 5 2147 mpas_derived_types variable_interval_backward_test_ptr$p mpas_forcing_stream_type
R 19756 5 2149 mpas_derived_types field mpas_forcing_stream_type
R 19758 5 2151 mpas_derived_types field$p mpas_forcing_stream_type
R 19760 5 2153 mpas_derived_types next mpas_forcing_stream_type
R 19762 5 2155 mpas_derived_types next$p mpas_forcing_stream_type
R 19766 25 2159 mpas_derived_types mpas_forcing_group_type
R 19767 5 2160 mpas_derived_types forcinggroupname mpas_forcing_group_type
R 19768 5 2161 mpas_derived_types domain_ptr mpas_forcing_group_type
R 19770 5 2163 mpas_derived_types domain_ptr$p mpas_forcing_group_type
R 19772 5 2165 mpas_derived_types forcingclock mpas_forcing_group_type
R 19773 5 2166 mpas_derived_types forcingcycleuse mpas_forcing_group_type
R 19774 5 2167 mpas_derived_types forcingcyclestart mpas_forcing_group_type
R 19775 5 2168 mpas_derived_types forcingcycleend mpas_forcing_group_type
R 19776 5 2169 mpas_derived_types forcingcycleduration mpas_forcing_group_type
R 19777 5 2170 mpas_derived_types forcingcyclestartinclusive mpas_forcing_group_type
R 19778 5 2171 mpas_derived_types forcingcyclealarmid mpas_forcing_group_type
R 19779 5 2172 mpas_derived_types stream mpas_forcing_group_type
R 19781 5 2174 mpas_derived_types stream$p mpas_forcing_group_type
R 19783 5 2176 mpas_derived_types next mpas_forcing_group_type
R 19785 5 2178 mpas_derived_types next$p mpas_forcing_group_type
R 21480 26 164 mpas_dmpar ==
R 21481 26 165 mpas_dmpar !=
R 22287 26 63 mpas_timer ==
R 22288 26 64 mpas_timer !=
R 22296 14 72 mpas_timer mpas_timer_start
R 22299 14 75 mpas_timer mpas_timer_stop
S 22338 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1203982336 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 22339 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1133024051 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 22345 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1053609165 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 22347 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1148846080 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 22348 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1120403456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 22567 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1077936128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 22568 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1343554297 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 22569 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 981668463 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25282 3 0 0 0 10 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1070945621 1431655765 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10
S 25283 3 0 0 0 10 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 1073042773 1431655765 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10
R 25357 7 73 module_mp_radar basis$ac
S 25475 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1140457472 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25479 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1223959552 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25480 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1301220632 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25481 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1279179808 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25487 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1176256512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25488 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1245125376 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25489 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1086324736 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25496 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1109393408 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25507 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 897988541 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25508 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1084227584 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25523 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1082130432 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25528 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 944879383 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25529 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 961656599 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25531 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 906377149 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25532 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 910775196 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25533 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 914765757 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25534 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 916964780 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25535 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 919163804 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25536 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 921362827 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25537 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 923154365 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25538 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 924253877 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25539 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 925353388 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25540 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 933741996 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25541 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 939239554 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25542 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 942130604 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25543 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 947628162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25544 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 949144823 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25545 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 950519212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25546 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 951893602 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25547 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 953267991 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25548 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 966609234 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25549 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 970045207 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25550 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 973279855 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25551 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 974997842 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25552 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 976715828 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25553 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 978433815 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25554 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 980151802 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25555 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 990057071 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25556 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 994352038 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25557 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 998445679 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25558 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1000593162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25559 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1002740646 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25560 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1004888130 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25561 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1006834287 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25562 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1007908028 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25563 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1008981770 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25564 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 786163455 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25565 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 794552063 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25566 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 799337791 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25567 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 802940671 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25568 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 805924959 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25569 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 807726399 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25570 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 809527839 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25571 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 811329279 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25572 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 813130719 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25573 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 814313567 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25574 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 822702175 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25575 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 827205775 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25576 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 831090783 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25577 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 833342583 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25578 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 835594383 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25579 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 837846183 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25580 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 839479391 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25581 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 840605291 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25582 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 841731191 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25583 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 850119799 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25584 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 855693657 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25585 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 858508407 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25586 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 861323157 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25587 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 864082265 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25588 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 865489640 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25589 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 866897015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25590 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 868304390 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25591 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 869711765 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25592 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 878100373 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25593 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 882970544 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25594 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 886488981 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25595 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 889599933 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25596 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 891359152 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25597 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 893118370 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25598 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 894877589 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25599 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 896636807 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25600 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1232348160 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25601 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1240736768 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25602 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1249125376 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25603 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1251513984 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25604 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1253513984 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25605 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1255513984 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25606 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1257513984 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25607 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1258902592 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25608 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1259902592 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25609 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1268291200 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25610 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1273291200 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25611 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1276679808 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25612 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1281679808 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25613 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1283818416 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25614 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1285068416 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25615 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1286318416 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25616 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1287568416 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25617 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1295957024 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25618 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1304345632 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25619 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1307470632 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25620 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1309609240 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25621 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1311171740 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25622 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1312734240 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25623 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1314296740 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25624 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1315859240 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25625 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1324247848 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25626 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1328730206 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25627 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1332636456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25628 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1335165689 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25629 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1337118814 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25630 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1339071939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25631 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1341025064 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25632 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1342577734 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25633 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1184645120 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25634 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1189765120 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25635 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1193033728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25636 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1195593728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25637 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1198153728 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25638 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1200142336 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25639 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1201422336 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25640 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1202702336 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25641 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1212370944 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25642 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1217559552 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25643 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1220759552 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25644 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1225948160 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25645 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1227548160 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25646 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1229148160 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25647 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1230748160 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25648 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1088421888 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25649 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1090519040 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25650 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1091567616 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25651 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1092616192 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25652 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1101004800 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25653 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1106247680 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25654 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1112014848 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25655 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1114636288 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25656 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1116471296 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25657 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1117782016 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25658 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1119092736 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25659 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1128792064 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25660 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1133903872 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25661 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1137180672 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25662 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1142292480 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25663 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1143930880 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25664 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1145569280 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25665 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1147207680 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25666 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1157234688 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25667 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1161527296 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25668 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1165623296 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25669 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1167867904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25670 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1169915904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25671 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1171963904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25672 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1174011904 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25673 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1175232512 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25674 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1107086541 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25675 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1134428160 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25676 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1162182656 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25677 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1023504128 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25678 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1036831949 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25679 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1050790593 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25680 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1078607217 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25681 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1131619942 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25682 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1132275302 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25683 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1132696371 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25684 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1133351731 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25685 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1133679411 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25686 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1134007091 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25687 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1017370378 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25688 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1025758986 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25689 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1034147594 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25690 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1042536202 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25691 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1045220557 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25692 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1058642330 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25693 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1061997773 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25694 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1084364610 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25695 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1115663523 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25696 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1069411784 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25697 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1022454009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25698 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1181389811 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25699 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1050674830 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25700 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 961931477 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25701 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 995206736 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25702 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1132286523 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25703 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1056166717 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25704 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1132316588 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25705 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1042937312 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25706 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1005893152 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25707 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1189881498 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25708 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 1031225943 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25709 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 950381773 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25710 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 974894762 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25711 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1150653414 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25712 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1138501878 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25713 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1063256064 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25714 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1054867456 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25715 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1049624576 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25716 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1046478848 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25717 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1043857408 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25718 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1041235968 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25719 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1039400960 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
S 25720 3 0 0 0 9 1 1 0 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 -1 -1038090240 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9
R 25907 7 186 module_mp_thompson r_c$ac
R 25909 7 188 module_mp_thompson r_i$ac
R 25911 7 190 module_mp_thompson r_r$ac
R 25913 7 192 module_mp_thompson r_g$ac
R 25915 7 194 module_mp_thompson r_s$ac
R 25917 7 196 module_mp_thompson n0r_exp$ac
R 25919 7 198 module_mp_thompson n0g_exp$ac
R 25921 7 200 module_mp_thompson nt_i$ac
R 25923 7 202 module_mp_thompson ta_na$ac
R 25925 7 204 module_mp_thompson ta_ww$ac
R 25927 7 206 module_mp_thompson ta_tk$ac
R 25929 7 208 module_mp_thompson ta_ra$ac
R 25931 7 210 module_mp_thompson ta_ka$ac
R 25933 7 212 module_mp_thompson nt_in$ac
R 25935 7 214 module_mp_thompson sa$ac
R 25937 7 216 module_mp_thompson sb$ac
R 25939 7 218 module_mp_thompson tc$ac
S 26981 27 0 0 0 9 26988 624 140593 0 0 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 allocate_microphysics
S 26982 27 0 0 0 9 26991 624 140615 0 0 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 deallocate_microphysics
S 26983 27 0 0 0 9 27001 624 140639 0 0 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 driver_microphysics
S 26984 27 0 0 0 6 26994 624 140659 0 0 A 0 0 0 0 B 0 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 microphysics_init
S 26985 16 0 0 0 6 1 624 140046 14 400000 A 0 0 0 0 B 0 89 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 624 0 0 0 0 hail_opt
S 26986 26 0 0 0 0 1 624 5938 4 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2570 11 0 0 0 0 0 624 0 0 0 0 ==
O 26986 11 16326 16316 16302 16288 16278 16562 16866 17115 17498 725 715
S 26987 26 0 0 0 0 1 624 5958 4 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2580 10 0 0 0 0 0 624 0 0 0 0 !=
O 26987 10 16331 16321 16307 16293 16283 16567 16871 17503 730 720
S 26988 23 5 0 0 0 26990 624 140593 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 allocate_microphysics
S 26989 1 3 1 0 6892 1 26988 93678 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 26990 14 5 0 0 0 1 26988 140593 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10826 1 0 0 0 0 0 0 0 0 0 0 0 0 96 0 624 0 0 0 0 allocate_microphysics
F 26990 1 26989
S 26991 23 5 0 0 0 26993 624 140615 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 deallocate_microphysics
S 26992 1 3 1 0 6892 1 26991 93678 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 26993 14 5 0 0 0 1 26991 140615 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10828 1 0 0 0 0 0 0 0 0 0 0 0 0 170 0 624 0 0 0 0 deallocate_microphysics
F 26993 1 26992
S 26994 23 5 0 0 0 27000 624 140659 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 microphysics_init
S 26995 1 3 1 0 6744 1 26994 87466 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 dminfo
S 26996 1 3 1 0 6892 1 26994 93678 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 26997 1 3 1 0 6892 1 26994 112862 14 3000 A 0 0 0 0 B 0 276 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mesh
S 26998 1 3 1 0 6892 1 26994 112867 14 3000 A 0 0 0 0 B 0 276 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 sfc_input
S 26999 1 3 3 0 6892 1 26994 112877 14 3000 A 0 0 0 0 B 0 276 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 diag_physics
S 27000 14 5 0 0 0 1 26994 140659 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10830 5 0 0 0 0 0 0 0 0 0 0 0 0 244 0 624 0 0 0 0 microphysics_init
F 27000 5 26995 26996 26997 26998 26999
S 27001 23 5 0 0 0 27012 624 140639 0 0 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 driver_microphysics
S 27002 1 3 1 0 6892 1 27001 93678 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 27003 1 3 1 0 6892 1 27001 112862 14 3000 A 0 0 0 0 B 0 426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 mesh
S 27004 1 3 3 0 6892 1 27001 113000 14 3000 A 0 0 0 0 B 0 426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 state
S 27005 1 3 1 0 6 1 27001 113006 14 3000 A 0 0 0 0 B 0 426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 time_lev
S 27006 1 3 3 0 6892 1 27001 113015 14 3000 A 0 0 0 0 B 0 426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 diag
S 27007 1 3 3 0 6892 1 27001 112877 14 3000 A 0 0 0 0 B 0 426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 diag_physics
S 27008 1 3 3 0 6892 1 27001 113028 14 3000 A 0 0 0 0 B 0 426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 tend
S 27009 1 3 1 0 6 1 27001 113033 14 3000 A 0 0 0 0 B 0 426 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 itimestep
S 27010 1 3 1 0 6 1 27001 113020 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 its
S 27011 1 3 1 0 6 1 27001 113024 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ite
S 27012 14 5 0 0 0 1 27001 140639 0 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10836 10 0 0 0 0 0 0 0 0 0 0 0 0 279 0 624 0 0 0 0 driver_microphysics
F 27012 10 27002 27003 27004 27005 27006 27007 27008 27009 27010 27011
S 27013 23 5 0 0 0 27018 624 140677 10 0 A 0 0 0 0 B 0 492 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 precip_from_mpas
S 27014 1 3 1 0 6892 1 27013 93678 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 27015 1 3 3 0 6892 1 27013 112877 14 3000 A 0 0 0 0 B 0 492 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 diag_physics
S 27016 1 3 1 0 6 1 27013 113020 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 its
S 27017 1 3 1 0 6 1 27013 113024 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ite
S 27018 14 5 0 0 0 1 27013 140677 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10847 4 0 0 0 0 0 0 0 0 0 0 0 0 429 0 624 0 0 0 0 precip_from_mpas
F 27018 4 27014 27015 27016 27017
S 27019 23 5 0 0 0 27024 624 140694 10 0 A 0 0 0 0 B 0 583 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 precip_to_mpas
S 27020 1 3 1 0 6892 1 27019 93678 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 27021 1 3 3 0 6892 1 27019 112877 14 3000 A 0 0 0 0 B 0 583 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 diag_physics
S 27022 1 3 1 0 6 1 27019 113020 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 its
S 27023 1 3 1 0 6 1 27019 113024 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ite
S 27024 14 5 0 0 0 1 27019 140694 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10852 4 0 0 0 0 0 0 0 0 0 0 0 0 495 0 624 0 0 0 0 precip_to_mpas
F 27024 4 27020 27021 27022 27023
S 27025 23 5 0 0 0 27030 624 140709 10 0 A 0 0 0 0 B 0 723 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 compute_radar_reflectivity
S 27026 1 3 1 0 6892 1 27025 93678 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 configs
S 27027 1 3 3 0 6892 1 27025 112877 14 3000 A 0 0 0 0 B 0 723 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 diag_physics
S 27028 1 3 1 0 6 1 27025 113020 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 its
S 27029 1 3 1 0 6 1 27025 113024 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ite
S 27030 14 5 0 0 0 1 27025 140709 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10857 4 0 0 0 0 0 0 0 0 0 0 0 0 586 0 624 0 0 0 0 compute_radar_reflectivity
F 27030 4 27026 27027 27028 27029
S 27031 23 5 0 0 0 27035 624 140736 10 0 A 0 0 0 0 B 0 778 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 compute_relhum
S 27032 1 3 3 0 6892 1 27031 113015 14 3000 A 0 0 0 0 B 0 778 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 diag
S 27033 1 3 1 0 6 1 27031 113020 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 its
S 27034 1 3 1 0 6 1 27031 113024 14 3000 A 0 0 0 0 B 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ite
S 27035 14 5 0 0 0 1 27031 140736 10 400000 A 0 0 0 0 B 0 0 0 0 0 0 0 10862 3 0 0 0 0 0 0 0 0 0 0 0 0 726 0 624 0 0 0 0 compute_relhum
F 27035 3 27032 27033 27034
A 13 2 0 0 0 6 637 0 0 0 13 0 0 0 0 0 0 0 0 0 0 0
A 15 2 0 0 0 6 638 0 0 0 15 0 0 0 0 0 0 0 0 0 0 0
A 19 2 0 0 0 6 639 0 0 0 19 0 0 0 0 0 0 0 0 0 0 0
A 21 2 0 0 0 6 640 0 0 0 21 0 0 0 0 0 0 0 0 0 0 0
A 24 2 0 0 0 6 650 0 0 0 24 0 0 0 0 0 0 0 0 0 0 0
A 75 1 0 0 0 58 702 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 78 1 0 0 0 67 704 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 83 2 0 0 0 6 733 0 0 0 83 0 0 0 0 0 0 0 0 0 0 0
A 85 2 0 0 0 6 734 0 0 0 85 0 0 0 0 0 0 0 0 0 0 0
A 91 2 0 0 0 6 737 0 0 0 91 0 0 0 0 0 0 0 0 0 0 0
A 123 1 0 1 0 76 760 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 129 1 0 1 0 82 762 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 133 1 0 3 0 88 764 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 135 2 0 0 62 6 768 0 0 0 135 0 0 0 0 0 0 0 0 0 0 0
A 157 2 0 0 0 18 777 0 0 0 157 0 0 0 0 0 0 0 0 0 0 0
A 167 2 0 0 60 6 767 0 0 0 167 0 0 0 0 0 0 0 0 0 0 0
A 174 2 0 0 0 6 780 0 0 0 174 0 0 0 0 0 0 0 0 0 0 0
A 177 2 0 0 0 6 781 0 0 0 177 0 0 0 0 0 0 0 0 0 0 0
A 179 2 0 0 0 6 782 0 0 0 179 0 0 0 0 0 0 0 0 0 0 0
A 184 2 0 0 0 6 783 0 0 0 184 0 0 0 0 0 0 0 0 0 0 0
A 187 2 0 0 0 6 784 0 0 0 187 0 0 0 0 0 0 0 0 0 0 0
A 191 2 0 0 0 6 786 0 0 0 191 0 0 0 0 0 0 0 0 0 0 0
A 193 2 0 0 0 6 787 0 0 0 193 0 0 0 0 0 0 0 0 0 0 0
A 213 2 0 0 0 6 792 0 0 0 213 0 0 0 0 0 0 0 0 0 0 0
A 225 2 0 0 0 6 796 0 0 0 225 0 0 0 0 0 0 0 0 0 0 0
A 227 2 0 0 0 6 797 0 0 0 227 0 0 0 0 0 0 0 0 0 0 0
A 229 2 0 0 0 6 798 0 0 0 229 0 0 0 0 0 0 0 0 0 0 0
A 234 2 0 0 233 6 800 0 0 0 234 0 0 0 0 0 0 0 0 0 0 0
A 242 2 0 0 192 6 772 0 0 0 242 0 0 0 0 0 0 0 0 0 0 0
A 246 2 0 0 238 6 803 0 0 0 246 0 0 0 0 0 0 0 0 0 0 0
A 256 2 0 0 245 6 808 0 0 0 256 0 0 0 0 0 0 0 0 0 0 0
A 260 2 0 0 247 6 809 0 0 0 260 0 0 0 0 0 0 0 0 0 0 0
A 347 2 0 0 289 6 833 0 0 0 347 0 0 0 0 0 0 0 0 0 0 0
A 5364 1 0 0 5135 4948 16158 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5367 1 0 0 5137 4948 16160 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5370 1 0 0 5140 4948 16162 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5373 1 0 0 5143 4948 16164 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5376 1 0 0 5146 4948 16166 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5379 1 0 0 5307 4948 16168 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5382 1 0 0 5142 4957 16173 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5385 1 0 0 5148 4957 16175 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5388 1 0 0 5305 4966 16180 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5391 1 0 0 5053 4966 16182 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5394 1 0 0 5052 4966 16184 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5397 1 0 0 4777 4966 16186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5400 1 0 0 5382 5022 16226 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5403 1 0 0 5385 5022 16228 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5406 1 0 0 4538 5022 16230 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5458 1 0 7 4263 5155 16613 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5472 1 0 7 4905 5161 16615 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5475 1 0 0 5394 5191 16628 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5478 1 0 0 5397 5191 16630 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5501 1 0 0 5203 5431 16939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5504 1 0 0 5202 5431 16941 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5507 1 0 0 4260 5431 16943 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5510 1 0 0 4825 5440 16948 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5513 1 0 0 4828 5440 16950 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5516 1 0 0 4830 5440 16952 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 5519 2 0 0 4783 22 16985 0 0 0 5519 0 0 0 0 0 0 0 0 0 0 0
A 5558 2 0 0 5041 6 17566 0 0 0 5558 0 0 0 0 0 0 0 0 0 0 0
A 6392 1 0 5 4993 8830 19495 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 6393 10 0 0 5481 6 6392 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 15
A 6394 10 0 0 6393 6 6392 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 167
A 6395 10 0 0 6394 6 6392 7 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 174
A 6396 4 0 0 6224 6 6395 0 3 0 0 0 0 2 0 0 0 0 0 0 0 0
A 6397 4 0 0 6127 6 6394 0 6396 0 0 0 0 1 0 0 0 0 0 0 0 0
A 6398 10 0 0 6395 6 6392 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 187
A 6399 10 0 0 6398 6 6392 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0
X 1 179
A 6408 2 0 0 6392 6680 17564 0 0 0 6408 0 0 0 0 0 0 0 0 0 0 0
A 6409 2 0 0 5125 18 17605 0 0 0 6409 0 0 0 0 0 0 0 0 0 0 0
A 6410 2 0 0 6352 9 614 0 0 0 6410 0 0 0 0 0 0 0 0 0 0 0
A 6411 2 0 0 6263 9 613 0 0 0 6411 0 0 0 0 0 0 0 0 0 0 0
A 6412 2 0 0 4729 6451 17607 0 0 0 6412 0 0 0 0 0 0 0 0 0 0 0
A 7297 2 0 0 6359 9 22338 0 0 0 7297 0 0 0 0 0 0 0 0 0 0 0
A 7299 2 0 0 5338 9 22339 0 0 0 7299 0 0 0 0 0 0 0 0 0 0 0
A 7312 2 0 0 5779 9 22345 0 0 0 7312 0 0 0 0 0 0 0 0 0 0 0
A 7316 2 0 0 5343 9 22347 0 0 0 7316 0 0 0 0 0 0 0 0 0 0 0
A 7318 2 0 0 6632 9 22348 0 0 0 7318 0 0 0 0 0 0 0 0 0 0 0
A 7400 2 0 0 5019 9 22567 0 0 0 7400 0 0 0 0 0 0 0 0 0 0 0
A 7402 2 0 0 7121 9 22568 0 0 0 7402 0 0 0 0 0 0 0 0 0 0 0
A 7404 2 0 0 7131 9 22569 0 0 0 7404 0 0 0 0 0 0 0 0 0 0 0
A 12405 2 0 0 12246 10 25282 0 0 0 12405 0 0 0 0 0 0 0 0 0 0 0
A 12406 2 0 0 11726 10 25283 0 0 0 12406 0 0 0 0 0 0 0 0 0 0 0
A 12429 1 0 17 9839 25965 25357 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 12439 2 0 0 11513 9 25475 0 0 0 12439 0 0 0 0 0 0 0 0 0 0 0
A 12447 2 0 0 12020 9 25479 0 0 0 12447 0 0 0 0 0 0 0 0 0 0 0
A 12449 2 0 0 9506 9 25480 0 0 0 12449 0 0 0 0 0 0 0 0 0 0 0
A 12451 2 0 0 12052 9 25481 0 0 0 12451 0 0 0 0 0 0 0 0 0 0 0
A 12466 2 0 0 11939 9 25487 0 0 0 12466 0 0 0 0 0 0 0 0 0 0 0
A 12468 2 0 0 11526 9 25488 0 0 0 12468 0 0 0 0 0 0 0 0 0 0 0
A 12475 2 0 0 12306 9 615 0 0 0 12475 0 0 0 0 0 0 0 0 0 0 0
A 12488 2 0 0 11427 9 25496 0 0 0 12488 0 0 0 0 0 0 0 0 0 0 0
A 12516 2 0 0 11787 9 25507 0 0 0 12516 0 0 0 0 0 0 0 0 0 0 0
A 12519 2 0 0 12026 9 25508 0 0 0 12519 0 0 0 0 0 0 0 0 0 0 0
A 12560 2 0 0 10974 9 25528 0 0 0 12560 0 0 0 0 0 0 0 0 0 0 0
A 12562 2 0 0 11285 9 25529 0 0 0 12562 0 0 0 0 0 0 0 0 0 0 0
A 12586 2 0 0 12072 9 25531 0 0 0 12586 0 0 0 0 0 0 0 0 0 0 0
A 12587 2 0 0 11057 9 25532 0 0 0 12587 0 0 0 0 0 0 0 0 0 0 0
A 12588 2 0 0 10979 9 25533 0 0 0 12588 0 0 0 0 0 0 0 0 0 0 0
A 12589 2 0 0 11986 9 25534 0 0 0 12589 0 0 0 0 0 0 0 0 0 0 0
A 12590 2 0 0 11930 9 25535 0 0 0 12590 0 0 0 0 0 0 0 0 0 0 0
A 12591 2 0 0 12018 9 25536 0 0 0 12591 0 0 0 0 0 0 0 0 0 0 0
A 12592 2 0 0 11077 9 25537 0 0 0 12592 0 0 0 0 0 0 0 0 0 0 0
A 12593 2 0 0 12373 9 25538 0 0 0 12593 0 0 0 0 0 0 0 0 0 0 0
A 12594 2 0 0 12374 9 25539 0 0 0 12594 0 0 0 0 0 0 0 0 0 0 0
A 12595 2 0 0 12383 9 25540 0 0 0 12595 0 0 0 0 0 0 0 0 0 0 0
A 12596 2 0 0 12384 9 25541 0 0 0 12596 0 0 0 0 0 0 0 0 0 0 0
A 12597 2 0 0 12378 9 25542 0 0 0 12597 0 0 0 0 0 0 0 0 0 0 0
A 12598 2 0 0 12379 9 25543 0 0 0 12598 0 0 0 0 0 0 0 0 0 0 0
A 12599 2 0 0 12085 9 25544 0 0 0 12599 0 0 0 0 0 0 0 0 0 0 0
A 12600 2 0 0 11332 9 25545 0 0 0 12600 0 0 0 0 0 0 0 0 0 0 0
A 12601 2 0 0 11974 9 25546 0 0 0 12601 0 0 0 0 0 0 0 0 0 0 0
A 12602 2 0 0 11999 9 25547 0 0 0 12602 0 0 0 0 0 0 0 0 0 0 0
A 12603 2 0 0 11479 9 25548 0 0 0 12603 0 0 0 0 0 0 0 0 0 0 0
A 12604 2 0 0 11011 9 25549 0 0 0 12604 0 0 0 0 0 0 0 0 0 0 0
A 12605 2 0 0 12060 9 25550 0 0 0 12605 0 0 0 0 0 0 0 0 0 0 0
A 12606 2 0 0 12375 9 25551 0 0 0 12606 0 0 0 0 0 0 0 0 0 0 0
A 12607 2 0 0 12376 9 25552 0 0 0 12607 0 0 0 0 0 0 0 0 0 0 0
A 12608 2 0 0 12430 9 25553 0 0 0 12608 0 0 0 0 0 0 0 0 0 0 0
A 12609 2 0 0 12380 9 25554 0 0 0 12609 0 0 0 0 0 0 0 0 0 0 0
A 12610 2 0 0 12431 9 25555 0 0 0 12610 0 0 0 0 0 0 0 0 0 0 0
A 12611 2 0 0 12432 9 25556 0 0 0 12611 0 0 0 0 0 0 0 0 0 0 0
A 12612 2 0 0 12385 9 25557 0 0 0 12612 0 0 0 0 0 0 0 0 0 0 0
A 12613 2 0 0 12386 9 25558 0 0 0 12613 0 0 0 0 0 0 0 0 0 0 0
A 12614 2 0 0 12387 9 25559 0 0 0 12614 0 0 0 0 0 0 0 0 0 0 0
A 12615 2 0 0 12388 9 25560 0 0 0 12615 0 0 0 0 0 0 0 0 0 0 0
A 12616 2 0 0 12389 9 25561 0 0 0 12616 0 0 0 0 0 0 0 0 0 0 0
A 12617 2 0 0 12372 9 25562 0 0 0 12617 0 0 0 0 0 0 0 0 0 0 0
A 12618 2 0 0 12391 9 25563 0 0 0 12618 0 0 0 0 0 0 0 0 0 0 0
A 12657 2 0 0 12390 9 25564 0 0 0 12657 0 0 0 0 0 0 0 0 0 0 0
A 12658 2 0 0 12291 9 25565 0 0 0 12658 0 0 0 0 0 0 0 0 0 0 0
A 12659 2 0 0 12203 9 25566 0 0 0 12659 0 0 0 0 0 0 0 0 0 0 0
A 12660 2 0 0 9095 9 25567 0 0 0 12660 0 0 0 0 0 0 0 0 0 0 0
A 12661 2 0 0 10607 9 25568 0 0 0 12661 0 0 0 0 0 0 0 0 0 0 0
A 12662 2 0 0 10494 9 25569 0 0 0 12662 0 0 0 0 0 0 0 0 0 0 0
A 12663 2 0 0 12111 9 25570 0 0 0 12663 0 0 0 0 0 0 0 0 0 0 0
A 12664 2 0 0 12216 9 25571 0 0 0 12664 0 0 0 0 0 0 0 0 0 0 0
A 12665 2 0 0 9147 9 25572 0 0 0 12665 0 0 0 0 0 0 0 0 0 0 0
A 12666 2 0 0 12423 9 25573 0 0 0 12666 0 0 0 0 0 0 0 0 0 0 0
A 12667 2 0 0 11505 9 25574 0 0 0 12667 0 0 0 0 0 0 0 0 0 0 0
A 12668 2 0 0 11576 9 25575 0 0 0 12668 0 0 0 0 0 0 0 0 0 0 0
A 12669 2 0 0 11605 9 25576 0 0 0 12669 0 0 0 0 0 0 0 0 0 0 0
A 12670 2 0 0 12038 9 25577 0 0 0 12670 0 0 0 0 0 0 0 0 0 0 0
A 12671 2 0 0 12117 9 25578 0 0 0 12671 0 0 0 0 0 0 0 0 0 0 0
A 12672 2 0 0 11617 9 25579 0 0 0 12672 0 0 0 0 0 0 0 0 0 0 0
A 12673 2 0 0 9052 9 25580 0 0 0 12673 0 0 0 0 0 0 0 0 0 0 0
A 12674 2 0 0 12333 9 25581 0 0 0 12674 0 0 0 0 0 0 0 0 0 0 0
A 12675 2 0 0 12043 9 25582 0 0 0 12675 0 0 0 0 0 0 0 0 0 0 0
A 12676 2 0 0 12124 9 25583 0 0 0 12676 0 0 0 0 0 0 0 0 0 0 0
A 12677 2 0 0 10033 9 25584 0 0 0 12677 0 0 0 0 0 0 0 0 0 0 0
A 12678 2 0 0 11532 9 25585 0 0 0 12678 0 0 0 0 0 0 0 0 0 0 0
A 12679 2 0 0 11121 9 25586 0 0 0 12679 0 0 0 0 0 0 0 0 0 0 0
A 12680 2 0 0 11518 9 25587 0 0 0 12680 0 0 0 0 0 0 0 0 0 0 0
A 12681 2 0 0 9516 9 25588 0 0 0 12681 0 0 0 0 0 0 0 0 0 0 0
A 12682 2 0 0 11618 9 25589 0 0 0 12682 0 0 0 0 0 0 0 0 0 0 0
A 12683 2 0 0 12051 9 25590 0 0 0 12683 0 0 0 0 0 0 0 0 0 0 0
A 12684 2 0 0 11623 9 25591 0 0 0 12684 0 0 0 0 0 0 0 0 0 0 0
A 12685 2 0 0 11940 9 25592 0 0 0 12685 0 0 0 0 0 0 0 0 0 0 0
A 12686 2 0 0 8466 9 25593 0 0 0 12686 0 0 0 0 0 0 0 0 0 0 0
A 12687 2 0 0 12346 9 25594 0 0 0 12687 0 0 0 0 0 0 0 0 0 0 0
A 12688 2 0 0 12056 9 25595 0 0 0 12688 0 0 0 0 0 0 0 0 0 0 0
A 12689 2 0 0 12137 9 25596 0 0 0 12689 0 0 0 0 0 0 0 0 0 0 0
A 12690 2 0 0 10046 9 25597 0 0 0 12690 0 0 0 0 0 0 0 0 0 0 0
A 12691 2 0 0 11631 9 25598 0 0 0 12691 0 0 0 0 0 0 0 0 0 0 0
A 12692 2 0 0 12000 9 25599 0 0 0 12692 0 0 0 0 0 0 0 0 0 0 0
A 12854 2 0 0 11298 9 25600 0 0 0 12854 0 0 0 0 0 0 0 0 0 0 0
A 12855 2 0 0 11056 9 25601 0 0 0 12855 0 0 0 0 0 0 0 0 0 0 0
A 12856 2 0 0 6301 9 25602 0 0 0 12856 0 0 0 0 0 0 0 0 0 0 0
A 12857 2 0 0 12359 9 25603 0 0 0 12857 0 0 0 0 0 0 0 0 0 0 0
A 12858 2 0 0 11748 9 25604 0 0 0 12858 0 0 0 0 0 0 0 0 0 0 0
A 12859 2 0 0 11643 9 25605 0 0 0 12859 0 0 0 0 0 0 0 0 0 0 0
A 12860 2 0 0 9534 9 25606 0 0 0 12860 0 0 0 0 0 0 0 0 0 0 0
A 12861 2 0 0 11147 9 25607 0 0 0 12861 0 0 0 0 0 0 0 0 0 0 0
A 12862 2 0 0 12069 9 25608 0 0 0 12862 0 0 0 0 0 0 0 0 0 0 0
A 12863 2 0 0 12299 9 25609 0 0 0 12863 0 0 0 0 0 0 0 0 0 0 0
A 12864 2 0 0 12400 9 25610 0 0 0 12864 0 0 0 0 0 0 0 0 0 0 0
A 12865 2 0 0 8001 9 25611 0 0 0 12865 0 0 0 0 0 0 0 0 0 0 0
A 12866 2 0 0 12424 9 25612 0 0 0 12866 0 0 0 0 0 0 0 0 0 0 0
A 12867 2 0 0 11761 9 25613 0 0 0 12867 0 0 0 0 0 0 0 0 0 0 0
A 12868 2 0 0 11766 9 25614 0 0 0 12868 0 0 0 0 0 0 0 0 0 0 0
A 12869 2 0 0 10064 9 25615 0 0 0 12869 0 0 0 0 0 0 0 0 0 0 0
A 12870 2 0 0 12077 9 25616 0 0 0 12870 0 0 0 0 0 0 0 0 0 0 0
A 12871 2 0 0 11557 9 25617 0 0 0 12871 0 0 0 0 0 0 0 0 0 0 0
A 12872 2 0 0 11656 9 25618 0 0 0 12872 0 0 0 0 0 0 0 0 0 0 0
A 12873 2 0 0 11074 9 25619 0 0 0 12873 0 0 0 0 0 0 0 0 0 0 0
A 12874 2 0 0 11891 9 25620 0 0 0 12874 0 0 0 0 0 0 0 0 0 0 0
A 12875 2 0 0 12082 9 25621 0 0 0 12875 0 0 0 0 0 0 0 0 0 0 0
A 12876 2 0 0 12163 9 25622 0 0 0 12876 0 0 0 0 0 0 0 0 0 0 0
A 12877 2 0 0 10152 9 25623 0 0 0 12877 0 0 0 0 0 0 0 0 0 0 0
A 12878 2 0 0 12083 9 25624 0 0 0 12878 0 0 0 0 0 0 0 0 0 0 0
A 12879 2 0 0 11904 9 25625 0 0 0 12879 0 0 0 0 0 0 0 0 0 0 0
A 12880 2 0 0 11675 9 25626 0 0 0 12880 0 0 0 0 0 0 0 0 0 0 0
A 12881 2 0 0 11992 9 25627 0 0 0 12881 0 0 0 0 0 0 0 0 0 0 0
A 12882 2 0 0 10077 9 25628 0 0 0 12882 0 0 0 0 0 0 0 0 0 0 0
A 12883 2 0 0 12090 9 25629 0 0 0 12883 0 0 0 0 0 0 0 0 0 0 0
A 12884 2 0 0 11570 9 25630 0 0 0 12884 0 0 0 0 0 0 0 0 0 0 0
A 12885 2 0 0 11669 9 25631 0 0 0 12885 0 0 0 0 0 0 0 0 0 0 0
A 12886 2 0 0 11441 9 25632 0 0 0 12886 0 0 0 0 0 0 0 0 0 0 0
A 12925 2 0 0 10082 9 25633 0 0 0 12925 0 0 0 0 0 0 0 0 0 0 0
A 12926 2 0 0 12095 9 25634 0 0 0 12926 0 0 0 0 0 0 0 0 0 0 0
A 12927 2 0 0 12176 9 25635 0 0 0 12927 0 0 0 0 0 0 0 0 0 0 0
A 12928 2 0 0 10165 9 25636 0 0 0 12928 0 0 0 0 0 0 0 0 0 0 0
A 12929 2 0 0 11092 9 25637 0 0 0 12929 0 0 0 0 0 0 0 0 0 0 0
A 12930 2 0 0 11171 9 25638 0 0 0 12930 0 0 0 0 0 0 0 0 0 0 0
A 12931 2 0 0 11181 9 25639 0 0 0 12931 0 0 0 0 0 0 0 0 0 0 0
A 12932 2 0 0 12130 9 25640 0 0 0 12932 0 0 0 0 0 0 0 0 0 0 0
A 12933 2 0 0 10090 9 25641 0 0 0 12933 0 0 0 0 0 0 0 0 0 0 0
A 12934 2 0 0 12103 9 25642 0 0 0 12934 0 0 0 0 0 0 0 0 0 0 0
A 12935 2 0 0 12415 9 25643 0 0 0 12935 0 0 0 0 0 0 0 0 0 0 0
A 12936 2 0 0 11682 9 25644 0 0 0 12936 0 0 0 0 0 0 0 0 0 0 0
A 12937 2 0 0 11966 9 25645 0 0 0 12937 0 0 0 0 0 0 0 0 0 0 0
A 12938 2 0 0 10720 9 25646 0 0 0 12938 0 0 0 0 0 0 0 0 0 0 0
A 12939 2 0 0 12108 9 25647 0 0 0 12939 0 0 0 0 0 0 0 0 0 0 0
A 12969 2 0 0 10969 9 25523 0 0 0 12969 0 0 0 0 0 0 0 0 0 0 0
A 12970 2 0 0 11784 9 25489 0 0 0 12970 0 0 0 0 0 0 0 0 0 0 0
A 12971 2 0 0 12189 9 25648 0 0 0 12971 0 0 0 0 0 0 0 0 0 0 0
A 12972 2 0 0 12401 9 25649 0 0 0 12972 0 0 0 0 0 0 0 0 0 0 0
A 12973 2 0 0 11105 9 25650 0 0 0 12973 0 0 0 0 0 0 0 0 0 0 0
A 12974 2 0 0 10585 9 25651 0 0 0 12974 0 0 0 0 0 0 0 0 0 0 0
A 12975 2 0 0 12013 9 25652 0 0 0 12975 0 0 0 0 0 0 0 0 0 0 0
A 12976 2 0 0 8835 9 25653 0 0 0 12976 0 0 0 0 0 0 0 0 0 0 0
A 12977 2 0 0 11667 9 25654 0 0 0 12977 0 0 0 0 0 0 0 0 0 0 0
A 12978 2 0 0 12116 9 25655 0 0 0 12978 0 0 0 0 0 0 0 0 0 0 0
A 12979 2 0 0 12239 9 25656 0 0 0 12979 0 0 0 0 0 0 0 0 0 0 0
A 12980 2 0 0 12047 9 25657 0 0 0 12980 0 0 0 0 0 0 0 0 0 0 0
A 12981 2 0 0 11113 9 25658 0 0 0 12981 0 0 0 0 0 0 0 0 0 0 0
A 12982 2 0 0 10446 9 25659 0 0 0 12982 0 0 0 0 0 0 0 0 0 0 0
A 12983 2 0 0 12121 9 25660 0 0 0 12983 0 0 0 0 0 0 0 0 0 0 0
A 12984 2 0 0 12202 9 25661 0 0 0 12984 0 0 0 0 0 0 0 0 0 0 0
A 12985 2 0 0 10191 9 25662 0 0 0 12985 0 0 0 0 0 0 0 0 0 0 0
A 12986 2 0 0 12164 9 25663 0 0 0 12986 0 0 0 0 0 0 0 0 0 0 0
A 12987 2 0 0 11597 9 25664 0 0 0 12987 0 0 0 0 0 0 0 0 0 0 0
A 12988 2 0 0 6813 9 25665 0 0 0 12988 0 0 0 0 0 0 0 0 0 0 0
A 12989 2 0 0 11225 9 25666 0 0 0 12989 0 0 0 0 0 0 0 0 0 0 0
A 12990 2 0 0 10704 9 25667 0 0 0 12990 0 0 0 0 0 0 0 0 0 0 0
A 12991 2 0 0 12129 9 25668 0 0 0 12991 0 0 0 0 0 0 0 0 0 0 0
A 12992 2 0 0 12433 9 25669 0 0 0 12992 0 0 0 0 0 0 0 0 0 0 0
A 12993 2 0 0 12434 9 25670 0 0 0 12993 0 0 0 0 0 0 0 0 0 0 0
A 12994 2 0 0 12435 9 25671 0 0 0 12994 0 0 0 0 0 0 0 0 0 0 0
A 12995 2 0 0 12436 9 25672 0 0 0 12995 0 0 0 0 0 0 0 0 0 0 0
A 12996 2 0 0 12437 9 25673 0 0 0 12996 0 0 0 0 0 0 0 0 0 0 0
A 13053 2 0 0 12438 9 25674 0 0 0 13053 0 0 0 0 0 0 0 0 0 0 0
A 13054 2 0 0 12440 9 25675 0 0 0 13054 0 0 0 0 0 0 0 0 0 0 0
A 13055 2 0 0 12442 9 25676 0 0 0 13055 0 0 0 0 0 0 0 0 0 0 0
A 13064 2 0 0 10611 9 25677 0 0 0 13064 0 0 0 0 0 0 0 0 0 0 0
A 13065 2 0 0 12444 9 25678 0 0 0 13065 0 0 0 0 0 0 0 0 0 0 0
A 13066 2 0 0 12446 9 25679 0 0 0 13066 0 0 0 0 0 0 0 0 0 0 0
A 13067 2 0 0 12448 9 25680 0 0 0 13067 0 0 0 0 0 0 0 0 0 0 0
A 13078 2 0 0 12450 9 25681 0 0 0 13078 0 0 0 0 0 0 0 0 0 0 0
A 13079 2 0 0 12452 9 25682 0 0 0 13079 0 0 0 0 0 0 0 0 0 0 0
A 13080 2 0 0 12453 9 25683 0 0 0 13080 0 0 0 0 0 0 0 0 0 0 0
A 13081 2 0 0 12454 9 25684 0 0 0 13081 0 0 0 0 0 0 0 0 0 0 0
A 13082 2 0 0 11293 9 25685 0 0 0 13082 0 0 0 0 0 0 0 0 0 0 0
A 13083 2 0 0 12455 9 25686 0 0 0 13083 0 0 0 0 0 0 0 0 0 0 0
A 13092 2 0 0 12457 9 25687 0 0 0 13092 0 0 0 0 0 0 0 0 0 0 0
A 13093 2 0 0 12459 9 25688 0 0 0 13093 0 0 0 0 0 0 0 0 0 0 0
A 13094 2 0 0 12461 9 25689 0 0 0 13094 0 0 0 0 0 0 0 0 0 0 0
A 13095 2 0 0 12463 9 25690 0 0 0 13095 0 0 0 0 0 0 0 0 0 0 0
A 13102 2 0 0 12465 9 25691 0 0 0 13102 0 0 0 0 0 0 0 0 0 0 0
A 13103 2 0 0 12467 9 25692 0 0 0 13103 0 0 0 0 0 0 0 0 0 0 0
A 13104 2 0 0 12469 9 25693 0 0 0 13104 0 0 0 0 0 0 0 0 0 0 0
A 13166 2 0 0 12471 9 25694 0 0 0 13166 0 0 0 0 0 0 0 0 0 0 0
A 13167 2 0 0 12472 9 25695 0 0 0 13167 0 0 0 0 0 0 0 0 0 0 0
A 13168 2 0 0 12474 9 25696 0 0 0 13168 0 0 0 0 0 0 0 0 0 0 0
A 13169 2 0 0 12476 9 25697 0 0 0 13169 0 0 0 0 0 0 0 0 0 0 0
A 13170 2 0 0 12478 9 25698 0 0 0 13170 0 0 0 0 0 0 0 0 0 0 0
A 13171 2 0 0 12479 9 25699 0 0 0 13171 0 0 0 0 0 0 0 0 0 0 0
A 13172 2 0 0 12481 9 25700 0 0 0 13172 0 0 0 0 0 0 0 0 0 0 0
A 13173 2 0 0 12482 9 25701 0 0 0 13173 0 0 0 0 0 0 0 0 0 0 0
A 13174 2 0 0 12484 9 25702 0 0 0 13174 0 0 0 0 0 0 0 0 0 0 0
A 13186 2 0 0 12485 9 25703 0 0 0 13186 0 0 0 0 0 0 0 0 0 0 0
A 13187 2 0 0 12487 9 25704 0 0 0 13187 0 0 0 0 0 0 0 0 0 0 0
A 13188 2 0 0 12489 9 25705 0 0 0 13188 0 0 0 0 0 0 0 0 0 0 0
A 13189 2 0 0 12491 9 25706 0 0 0 13189 0 0 0 0 0 0 0 0 0 0 0
A 13190 2 0 0 12492 9 25707 0 0 0 13190 0 0 0 0 0 0 0 0 0 0 0
A 13191 2 0 0 12494 9 25708 0 0 0 13191 0 0 0 0 0 0 0 0 0 0 0
A 13192 2 0 0 12496 9 25709 0 0 0 13192 0 0 0 0 0 0 0 0 0 0 0
A 13193 2 0 0 12498 9 25710 0 0 0 13193 0 0 0 0 0 0 0 0 0 0 0
A 13194 2 0 0 12499 9 25711 0 0 0 13194 0 0 0 0 0 0 0 0 0 0 0
A 13206 2 0 0 12501 9 25712 0 0 0 13206 0 0 0 0 0 0 0 0 0 0 0
A 13207 2 0 0 12502 9 25713 0 0 0 13207 0 0 0 0 0 0 0 0 0 0 0
A 13208 2 0 0 12504 9 25714 0 0 0 13208 0 0 0 0 0 0 0 0 0 0 0
A 13209 2 0 0 12506 9 25715 0 0 0 13209 0 0 0 0 0 0 0 0 0 0 0
A 13210 2 0 0 12508 9 25716 0 0 0 13210 0 0 0 0 0 0 0 0 0 0 0
A 13211 2 0 0 12510 9 25717 0 0 0 13211 0 0 0 0 0 0 0 0 0 0 0
A 13212 2 0 0 12512 9 25718 0 0 0 13212 0 0 0 0 0 0 0 0 0 0 0
A 13213 2 0 0 12513 9 25719 0 0 0 13213 0 0 0 0 0 0 0 0 0 0 0
A 13214 2 0 0 12515 9 25720 0 0 0 13214 0 0 0 0 0 0 0 0 0 0 0
A 14013 1 0 19 12611 27390 25907 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14079 1 0 21 13526 27396 25909 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14118 1 0 19 13756 27402 25911 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14148 1 0 23 12251 27408 25913 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14178 1 0 23 13838 27414 25915 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14217 1 0 19 13370 27420 25917 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14247 1 0 23 12871 27426 25919 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14304 1 0 25 12885 27432 25921 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14313 1 0 27 13465 27438 25923 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14324 1 0 29 12533 27444 25925 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14333 1 0 27 13456 27450 25927 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14340 1 0 31 13263 27456 25929 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14346 1 0 1 13972 27462 25931 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14403 1 0 25 13970 27468 25933 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14415 1 0 33 13836 27474 25935 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14427 1 0 33 13378 27480 25937 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
A 14438 1 0 29 13709 27486 25939 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
Z
J 131 1 1
V 75 58 7 0
S 0 58 0 0 0
A 0 6 0 0 1 2 0
J 132 1 1
V 78 67 7 0
S 0 67 0 0 0
A 0 6 0 0 1 2 0
J 69 1 1
V 123 76 7 0
R 0 79 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 24 1
A 0 6 0 0 1 13 1
A 0 6 0 0 1 15 0
J 71 1 1
V 129 82 7 0
R 0 85 0 0
A 0 6 0 0 1 3 1
A 0 6 0 0 1 24 1
A 0 6 0 0 1 13 1
A 0 6 0 0 1 15 0
J 73 1 1
V 133 88 7 0
R 0 91 0 0
A 0 6 0 0 1 13 1
A 0 6 0 0 1 15 0
J 64 1 1
V 5364 4948 7 0
S 0 4948 0 0 0
A 0 6 0 0 1 3 0
J 64 1 1
V 5367 4948 7 0
S 0 4948 0 0 0
A 0 6 0 0 1 24 0
J 64 1 1
V 5370 4948 7 0
S 0 4948 0 0 0
A 0 6 0 0 1 135 0
J 64 1 1
V 5373 4948 7 0
S 0 4948 0 0 0
A 0 6 0 0 1 13 0
J 64 1 1
V 5376 4948 7 0
S 0 4948 0 0 0
A 0 6 0 0 1 83 0
J 64 1 1
V 5379 4948 7 0
S 0 4948 0 0 0
A 0 6 0 0 1 91 0
J 78 1 1
V 5382 4957 7 0
S 0 4957 0 0 0
A 0 6 0 0 1 2 0
J 78 1 1
V 5385 4957 7 0
S 0 4957 0 0 0
A 0 6 0 0 1 85 0
J 93 1 1
V 5388 4966 7 0
S 0 4966 0 0 0
A 0 6 0 0 1 3 0
J 93 1 1
V 5391 4966 7 0
S 0 4966 0 0 0
A 0 6 0 0 1 24 0
J 93 1 1
V 5394 4966 7 0
S 0 4966 0 0 0
A 0 6 0 0 1 135 0
J 93 1 1
V 5397 4966 7 0
S 0 4966 0 0 0
A 0 6 0 0 1 13 0
J 176 1 1
V 5400 5022 7 0
S 0 5022 0 0 0
A 0 6 0 0 1 3 0
J 176 1 1
V 5403 5022 7 0
S 0 5022 0 0 0
A 0 6 0 0 1 24 0
J 176 1 1
V 5406 5022 7 0
S 0 5022 0 0 0
A 0 6 0 0 1 135 0
J 52 1 1
V 5458 5155 7 0
R 0 5158 0 0
A 0 6 0 0 1 234 1
A 0 6 0 0 1 227 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 225 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 225 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 225 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 225 1
A 0 6 0 0 1 234 0
J 54 1 1
V 5472 5161 7 0
R 0 5164 0 0
A 0 6 0 0 1 234 1
A 0 6 0 0 1 229 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 225 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 225 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 225 1
A 0 6 0 0 1 234 1
A 0 6 0 0 1 225 1
A 0 6 0 0 1 234 0
J 75 1 1
V 5475 5191 7 0
S 0 5191 0 0 0
A 0 6 0 0 1 3 0
J 75 1 1
V 5478 5191 7 0
S 0 5191 0 0 0
A 0 6 0 0 1 24 0
J 31 1 1
V 5501 5431 7 0
S 0 5431 0 0 0
A 0 6 0 0 1 3 0
J 31 1 1
V 5504 5431 7 0
S 0 5431 0 0 0
A 0 6 0 0 1 24 0
J 31 1 1
V 5507 5431 7 0
S 0 5431 0 0 0
A 0 6 0 0 1 135 0
J 39 1 1
V 5510 5440 7 0
S 0 5440 0 0 0
A 0 6 0 0 1 3 0
J 39 1 1
V 5513 5440 7 0
S 0 5440 0 0 0
A 0 6 0 0 1 24 0
J 39 1 1
V 5516 5440 7 0
S 0 5440 0 0 0
A 0 6 0 0 1 135 0
J 54 1 1
V 12429 25965 7 0
R 0 25968 0 0
A 0 10 0 0 1 12405 1
A 0 10 0 0 1 12406 1
A 0 10 0 0 1 12405 0
J 254 1 1
V 14013 27390 7 0
R 0 27393 0 0
A 0 9 0 0 1 12516 1
A 0 9 0 0 1 12586 1
A 0 9 0 0 1 12587 1
A 0 9 0 0 1 12588 1
A 0 9 0 0 1 12589 1
A 0 9 0 0 1 12590 1
A 0 9 0 0 1 12591 1
A 0 9 0 0 1 12592 1
A 0 9 0 0 1 12593 1
A 0 9 0 0 1 12594 1
A 0 9 0 0 1 12595 1
A 0 9 0 0 1 12596 1
A 0 9 0 0 1 12597 1
A 0 9 0 0 1 12560 1
A 0 9 0 0 1 12598 1
A 0 9 0 0 1 12599 1
A 0 9 0 0 1 12600 1
A 0 9 0 0 1 12601 1
A 0 9 0 0 1 12602 1
A 0 9 0 0 1 12562 1
A 0 9 0 0 1 12603 1
A 0 9 0 0 1 12604 1
A 0 9 0 0 1 12605 1
A 0 9 0 0 1 12606 1
A 0 9 0 0 1 12607 1
A 0 9 0 0 1 12608 1
A 0 9 0 0 1 12609 1
A 0 9 0 0 1 7404 1
A 0 9 0 0 1 12610 1
A 0 9 0 0 1 12611 1
A 0 9 0 0 1 12612 1
A 0 9 0 0 1 12613 1
A 0 9 0 0 1 12614 1
A 0 9 0 0 1 12615 1
A 0 9 0 0 1 12616 1
A 0 9 0 0 1 12617 1
A 0 9 0 0 1 12618 0
J 262 1 1
V 14079 27396 7 0
R 0 27399 0 0
A 0 9 0 0 1 12657 1
A 0 9 0 0 1 12658 1
A 0 9 0 0 1 12659 1
A 0 9 0 0 1 12660 1
A 0 9 0 0 1 12661 1
A 0 9 0 0 1 12662 1
A 0 9 0 0 1 12663 1
A 0 9 0 0 1 12664 1
A 0 9 0 0 1 12665 1
A 0 9 0 0 1 12666 1
A 0 9 0 0 1 12667 1
A 0 9 0 0 1 12668 1
A 0 9 0 0 1 12669 1
A 0 9 0 0 1 12670 1
A 0 9 0 0 1 12671 1
A 0 9 0 0 1 12672 1
A 0 9 0 0 1 12673 1
A 0 9 0 0 1 12674 1
A 0 9 0 0 1 12675 1
A 0 9 0 0 1 12676 1
A 0 9 0 0 1 12677 1
A 0 9 0 0 1 12678 1
A 0 9 0 0 1 12679 1
A 0 9 0 0 1 12680 1
A 0 9 0 0 1 12681 1
A 0 9 0 0 1 12682 1
A 0 9 0 0 1 12683 1
A 0 9 0 0 1 12684 1
A 0 9 0 0 1 12685 1
A 0 9 0 0 1 12686 1
A 0 9 0 0 1 12687 1
A 0 9 0 0 1 12688 1
A 0 9 0 0 1 12689 1
A 0 9 0 0 1 12690 1
A 0 9 0 0 1 12691 1
A 0 9 0 0 1 12692 1
A 0 9 0 0 1 12516 1
A 0 9 0 0 1 12586 1
A 0 9 0 0 1 12587 1
A 0 9 0 0 1 12588 1
A 0 9 0 0 1 12589 1
A 0 9 0 0 1 12590 1
A 0 9 0 0 1 12591 1
A 0 9 0 0 1 12592 1
A 0 9 0 0 1 12593 1
A 0 9 0 0 1 12594 1
A 0 9 0 0 1 12595 1
A 0 9 0 0 1 12596 1
A 0 9 0 0 1 12597 1
A 0 9 0 0 1 12560 1
A 0 9 0 0 1 12598 1
A 0 9 0 0 1 12599 1
A 0 9 0 0 1 12600 1
A 0 9 0 0 1 12601 1
A 0 9 0 0 1 12602 1
A 0 9 0 0 1 12562 1
A 0 9 0 0 1 12603 1
A 0 9 0 0 1 12604 1
A 0 9 0 0 1 12605 1
A 0 9 0 0 1 12606 1
A 0 9 0 0 1 12607 1
A 0 9 0 0 1 12608 1
A 0 9 0 0 1 12609 1
A 0 9 0 0 1 7404 0
J 274 1 1
V 14118 27402 7 0
R 0 27405 0 0
A 0 9 0 0 1 12516 1
A 0 9 0 0 1 12586 1
A 0 9 0 0 1 12587 1
A 0 9 0 0 1 12588 1
A 0 9 0 0 1 12589 1
A 0 9 0 0 1 12590 1
A 0 9 0 0 1 12591 1
A 0 9 0 0 1 12592 1
A 0 9 0 0 1 12593 1
A 0 9 0 0 1 12594 1
A 0 9 0 0 1 12595 1
A 0 9 0 0 1 12596 1
A 0 9 0 0 1 12597 1
A 0 9 0 0 1 12560 1
A 0 9 0 0 1 12598 1
A 0 9 0 0 1 12599 1
A 0 9 0 0 1 12600 1
A 0 9 0 0 1 12601 1
A 0 9 0 0 1 12602 1
A 0 9 0 0 1 12562 1
A 0 9 0 0 1 12603 1
A 0 9 0 0 1 12604 1
A 0 9 0 0 1 12605 1
A 0 9 0 0 1 12606 1
A 0 9 0 0 1 12607 1
A 0 9 0 0 1 12608 1
A 0 9 0 0 1 12609 1
A 0 9 0 0 1 7404 1
A 0 9 0 0 1 12610 1
A 0 9 0 0 1 12611 1
A 0 9 0 0 1 12612 1
A 0 9 0 0 1 12613 1
A 0 9 0 0 1 12614 1
A 0 9 0 0 1 12615 1
A 0 9 0 0 1 12616 1
A 0 9 0 0 1 12617 1
A 0 9 0 0 1 12618 0
J 282 1 1
V 14148 27408 7 0
R 0 27411 0 0
A 0 9 0 0 1 12594 1
A 0 9 0 0 1 12595 1
A 0 9 0 0 1 12596 1
A 0 9 0 0 1 12597 1
A 0 9 0 0 1 12560 1
A 0 9 0 0 1 12598 1
A 0 9 0 0 1 12599 1
A 0 9 0 0 1 12600 1
A 0 9 0 0 1 12601 1
A 0 9 0 0 1 12602 1
A 0 9 0 0 1 12562 1
A 0 9 0 0 1 12603 1
A 0 9 0 0 1 12604 1
A 0 9 0 0 1 12605 1
A 0 9 0 0 1 12606 1
A 0 9 0 0 1 12607 1
A 0 9 0 0 1 12608 1
A 0 9 0 0 1 12609 1
A 0 9 0 0 1 7404 1
A 0 9 0 0 1 12610 1
A 0 9 0 0 1 12611 1
A 0 9 0 0 1 12612 1
A 0 9 0 0 1 12613 1
A 0 9 0 0 1 12614 1
A 0 9 0 0 1 12615 1
A 0 9 0 0 1 12616 1
A 0 9 0 0 1 12617 1
A 0 9 0 0 1 12618 0
J 289 1 1
V 14178 27414 7 0
R 0 27417 0 0
A 0 9 0 0 1 12594 1
A 0 9 0 0 1 12595 1
A 0 9 0 0 1 12596 1
A 0 9 0 0 1 12597 1
A 0 9 0 0 1 12560 1
A 0 9 0 0 1 12598 1
A 0 9 0 0 1 12599 1
A 0 9 0 0 1 12600 1
A 0 9 0 0 1 12601 1
A 0 9 0 0 1 12602 1
A 0 9 0 0 1 12562 1
A 0 9 0 0 1 12603 1
A 0 9 0 0 1 12604 1
A 0 9 0 0 1 12605 1
A 0 9 0 0 1 12606 1
A 0 9 0 0 1 12607 1
A 0 9 0 0 1 12608 1
A 0 9 0 0 1 12609 1
A 0 9 0 0 1 7404 1
A 0 9 0 0 1 12610 1
A 0 9 0 0 1 12611 1
A 0 9 0 0 1 12612 1
A 0 9 0 0 1 12613 1
A 0 9 0 0 1 12614 1
A 0 9 0 0 1 12615 1
A 0 9 0 0 1 12616 1
A 0 9 0 0 1 12617 1
A 0 9 0 0 1 12618 0
J 296 1 1
V 14217 27420 7 0
R 0 27423 0 0
A 0 9 0 0 1 12854 1
A 0 9 0 0 1 12855 1
A 0 9 0 0 1 12468 1
A 0 9 0 0 1 12856 1
A 0 9 0 0 1 12857 1
A 0 9 0 0 1 12858 1
A 0 9 0 0 1 12859 1
A 0 9 0 0 1 12860 1
A 0 9 0 0 1 12861 1
A 0 9 0 0 1 12862 1
A 0 9 0 0 1 12863 1
A 0 9 0 0 1 12864 1
A 0 9 0 0 1 12865 1
A 0 9 0 0 1 12451 1
A 0 9 0 0 1 12866 1
A 0 9 0 0 1 12867 1
A 0 9 0 0 1 12868 1
A 0 9 0 0 1 12869 1
A 0 9 0 0 1 12870 1
A 0 9 0 0 1 12871 1
A 0 9 0 0 1 12449 1
A 0 9 0 0 1 12872 1
A 0 9 0 0 1 12873 1
A 0 9 0 0 1 12874 1
A 0 9 0 0 1 12875 1
A 0 9 0 0 1 12876 1
A 0 9 0 0 1 12877 1
A 0 9 0 0 1 12878 1
A 0 9 0 0 1 12879 1
A 0 9 0 0 1 12880 1
A 0 9 0 0 1 12881 1
A 0 9 0 0 1 12882 1
A 0 9 0 0 1 12883 1
A 0 9 0 0 1 12884 1
A 0 9 0 0 1 12885 1
A 0 9 0 0 1 12886 1
A 0 9 0 0 1 7402 0
J 304 1 1
V 14247 27426 7 0
R 0 27429 0 0
A 0 9 0 0 1 12466 1
A 0 9 0 0 1 12925 1
A 0 9 0 0 1 12926 1
A 0 9 0 0 1 12927 1
A 0 9 0 0 1 12928 1
A 0 9 0 0 1 12929 1
A 0 9 0 0 1 12930 1
A 0 9 0 0 1 12931 1
A 0 9 0 0 1 12932 1
A 0 9 0 0 1 7297 1
A 0 9 0 0 1 12933 1
A 0 9 0 0 1 12934 1
A 0 9 0 0 1 12935 1
A 0 9 0 0 1 12447 1
A 0 9 0 0 1 12936 1
A 0 9 0 0 1 12937 1
A 0 9 0 0 1 12938 1
A 0 9 0 0 1 12939 1
A 0 9 0 0 1 12854 1
A 0 9 0 0 1 12855 1
A 0 9 0 0 1 12468 1
A 0 9 0 0 1 12856 1
A 0 9 0 0 1 12857 1
A 0 9 0 0 1 12858 1
A 0 9 0 0 1 12859 1
A 0 9 0 0 1 12860 1
A 0 9 0 0 1 12861 1
A 0 9 0 0 1 12862 0
J 311 1 1
V 14304 27432 7 0
R 0 27435 0 0
A 0 9 0 0 1 6410 1
A 0 9 0 0 1 12475 1
A 0 9 0 0 1 7400 1
A 0 9 0 0 1 12969 1
A 0 9 0 0 1 12519 1
A 0 9 0 0 1 12970 1
A 0 9 0 0 1 12971 1
A 0 9 0 0 1 12972 1
A 0 9 0 0 1 12973 1
A 0 9 0 0 1 12974 1
A 0 9 0 0 1 12975 1
A 0 9 0 0 1 12976 1
A 0 9 0 0 1 12488 1
A 0 9 0 0 1 12977 1
A 0 9 0 0 1 12978 1
A 0 9 0 0 1 12979 1
A 0 9 0 0 1 12980 1
A 0 9 0 0 1 12981 1
A 0 9 0 0 1 7318 1
A 0 9 0 0 1 12982 1
A 0 9 0 0 1 12983 1
A 0 9 0 0 1 12984 1
A 0 9 0 0 1 12439 1
A 0 9 0 0 1 12985 1
A 0 9 0 0 1 12986 1
A 0 9 0 0 1 12987 1
A 0 9 0 0 1 12988 1
A 0 9 0 0 1 7316 1
A 0 9 0 0 1 12989 1
A 0 9 0 0 1 12990 1
A 0 9 0 0 1 12991 1
A 0 9 0 0 1 12992 1
A 0 9 0 0 1 12993 1
A 0 9 0 0 1 12994 1
A 0 9 0 0 1 12995 1
A 0 9 0 0 1 12996 1
A 0 9 0 0 1 12466 1
A 0 9 0 0 1 12925 1
A 0 9 0 0 1 12926 1
A 0 9 0 0 1 12927 1
A 0 9 0 0 1 12928 1
A 0 9 0 0 1 12929 1
A 0 9 0 0 1 12930 1
A 0 9 0 0 1 12931 1
A 0 9 0 0 1 12932 1
A 0 9 0 0 1 7297 1
A 0 9 0 0 1 12933 1
A 0 9 0 0 1 12934 1
A 0 9 0 0 1 12935 1
A 0 9 0 0 1 12447 1
A 0 9 0 0 1 12936 1
A 0 9 0 0 1 12937 1
A 0 9 0 0 1 12938 1
A 0 9 0 0 1 12939 1
A 0 9 0 0 1 12854 0
J 322 1 1
V 14313 27438 7 0
R 0 27441 0 0
A 0 9 0 0 1 12974 1
A 0 9 0 0 1 13053 1
A 0 9 0 0 1 7318 1
A 0 9 0 0 1 13054 1
A 0 9 0 0 1 7316 1
A 0 9 0 0 1 13055 1
A 0 9 0 0 1 12466 0
J 324 1 1
V 14324 27444 7 0
R 0 27447 0 0
A 0 9 0 0 1 12618 1
A 0 9 0 0 1 13064 1
A 0 9 0 0 1 13065 1
A 0 9 0 0 1 13066 1
A 0 9 0 0 1 6410 1
A 0 9 0 0 1 13067 1
A 0 9 0 0 1 12974 1
A 0 9 0 0 1 13053 1
A 0 9 0 0 1 7318 0
J 326 1 1
V 14333 27450 7 0
R 0 27453 0 0
A 0 9 0 0 1 13078 1
A 0 9 0 0 1 13079 1
A 0 9 0 0 1 13080 1
A 0 9 0 0 1 7299 1
A 0 9 0 0 1 13081 1
A 0 9 0 0 1 13082 1
A 0 9 0 0 1 13083 0
J 328 1 1
V 14340 27456 7 0
R 0 27459 0 0
A 0 9 0 0 1 12618 1
A 0 9 0 0 1 13092 1
A 0 9 0 0 1 13093 1
A 0 9 0 0 1 13094 1
A 0 9 0 0 1 13095 0
J 330 1 1
V 14346 27462 7 0
R 0 27465 0 0
A 0 9 0 0 1 13102 1
A 0 9 0 0 1 7312 1
A 0 9 0 0 1 13103 1
A 0 9 0 0 1 13104 0
J 334 1 1
V 14403 27468 7 0
R 0 27471 0 0
A 0 9 0 0 1 6410 1
A 0 9 0 0 1 12475 1
A 0 9 0 0 1 7400 1
A 0 9 0 0 1 12969 1
A 0 9 0 0 1 12519 1
A 0 9 0 0 1 12970 1
A 0 9 0 0 1 12971 1
A 0 9 0 0 1 12972 1
A 0 9 0 0 1 12973 1
A 0 9 0 0 1 12974 1
A 0 9 0 0 1 12975 1
A 0 9 0 0 1 12976 1
A 0 9 0 0 1 12488 1
A 0 9 0 0 1 12977 1
A 0 9 0 0 1 12978 1
A 0 9 0 0 1 12979 1
A 0 9 0 0 1 12980 1
A 0 9 0 0 1 12981 1
A 0 9 0 0 1 7318 1
A 0 9 0 0 1 12982 1
A 0 9 0 0 1 12983 1
A 0 9 0 0 1 12984 1
A 0 9 0 0 1 12439 1
A 0 9 0 0 1 12985 1
A 0 9 0 0 1 12986 1
A 0 9 0 0 1 12987 1
A 0 9 0 0 1 12988 1
A 0 9 0 0 1 7316 1
A 0 9 0 0 1 12989 1
A 0 9 0 0 1 12990 1
A 0 9 0 0 1 12991 1
A 0 9 0 0 1 12992 1
A 0 9 0 0 1 12993 1
A 0 9 0 0 1 12994 1
A 0 9 0 0 1 12995 1
A 0 9 0 0 1 12996 1
A 0 9 0 0 1 12466 1
A 0 9 0 0 1 12925 1
A 0 9 0 0 1 12926 1
A 0 9 0 0 1 12927 1
A 0 9 0 0 1 12928 1
A 0 9 0 0 1 12929 1
A 0 9 0 0 1 12930 1
A 0 9 0 0 1 12931 1
A 0 9 0 0 1 12932 1
A 0 9 0 0 1 7297 1
A 0 9 0 0 1 12933 1
A 0 9 0 0 1 12934 1
A 0 9 0 0 1 12935 1
A 0 9 0 0 1 12447 1
A 0 9 0 0 1 12936 1
A 0 9 0 0 1 12937 1
A 0 9 0 0 1 12938 1
A 0 9 0 0 1 12939 1
A 0 9 0 0 1 12854 0
J 344 1 1
V 14415 27474 7 0
R 0 27477 0 0
A 0 9 0 0 1 13166 1
A 0 9 0 0 1 13167 1
A 0 9 0 0 1 13168 1
A 0 9 0 0 1 13169 1
A 0 9 0 0 1 13170 1
A 0 9 0 0 1 13171 1
A 0 9 0 0 1 13172 1
A 0 9 0 0 1 13173 1
A 0 9 0 0 1 6411 1
A 0 9 0 0 1 13174 0
J 347 1 1
V 14427 27480 7 0
R 0 27483 0 0
A 0 9 0 0 1 13186 1
A 0 9 0 0 1 13187 1
A 0 9 0 0 1 13188 1
A 0 9 0 0 1 13189 1
A 0 9 0 0 1 13190 1
A 0 9 0 0 1 13191 1
A 0 9 0 0 1 13192 1
A 0 9 0 0 1 13193 1
A 0 9 0 0 1 6411 1
A 0 9 0 0 1 13194 0
J 352 1 1
V 14438 27486 7 0
R 0 27489 0 0
A 0 9 0 0 1 13206 1
A 0 9 0 0 1 13207 1
A 0 9 0 0 1 13208 1
A 0 9 0 0 1 13209 1
A 0 9 0 0 1 13210 1
A 0 9 0 0 1 13211 1
A 0 9 0 0 1 13212 1
A 0 9 0 0 1 13213 1
A 0 9 0 0 1 13214 0
T 8044 2710 0 3 0 0
A 8045 6 0 0 1 85 0
T 8048 2719 0 3 0 0
A 8052 7 2728 0 1 2 0
T 16631 5200 0 3 0 0
A 16632 6 0 0 1 2 1
A 16633 6 0 0 1 2 1
A 16634 6 0 0 1 3 0
T 16637 5209 0 3 0 0
A 16639 18 0 0 1 157 1
R 16640 5215 0 1
A 0 6 0 193 1 2 0
A 16641 6 0 0 1 2 1
A 16642 6 0 0 1 2 1
T 16643 5200 0 3 0 0
A 16632 6 0 0 1 2 1
A 16633 6 0 0 1 2 1
A 16634 6 0 0 1 3 0
T 16732 5293 0 3 0 0
A 16737 7 5302 0 1 2 0
T 16745 5386 0 3 0 0
T 16750 5378 0 3 0 0
A 16737 7 5384 0 1 2 0
T 16986 5626 0 3 0 0
A 16987 22 0 0 1 5519 1
T 16988 5606 0 3 0 1
T 16750 5598 0 3 0 0
A 16737 7 5604 0 1 2 0
T 16989 5584 0 3 0 1
A 16737 7 5590 0 1 2 0
T 16990 5584 0 3 0 1
A 16737 7 5590 0 1 2 0
T 16991 5584 0 3 0 0
A 16737 7 5590 0 1 2 0
T 17001 5637 0 3 0 0
A 17004 7 5646 0 1 2 0
T 17151 5804 0 3 0 0
T 17152 5736 0 3 0 1
T 16750 5728 0 3 0 0
A 16737 7 5734 0 1 2 0
T 17153 5714 0 3 0 1
A 16737 7 5720 0 1 2 0
T 17154 5714 0 3 0 1
A 16737 7 5720 0 1 2 0
T 17155 5714 0 3 0 1
A 16737 7 5720 0 1 2 0
T 17156 5714 0 3 0 1
A 16737 7 5720 0 1 2 0
T 17157 5714 0 3 0 1
A 16737 7 5720 0 1 2 0
A 17164 7 5816 0 1 2 1
A 17165 7 0 0 1 10 1
A 17163 6 0 177 1 2 0
T 17169 5821 0 3 0 0
A 17172 7 5830 0 1 2 0
T 17613 6660 0 3 0 0
A 17617 7 6675 0 1 2 0
T 17614 6666 0 3 0 0
A 17621 6680 0 0 1 6408 1
A 17622 6 0 0 1 85 1
A 17627 7 6699 0 1 2 1
A 17628 7 0 0 1 10 1
A 17626 6 0 177 1 2 1
A 17634 7 6701 0 1 2 1
A 17635 7 0 0 1 10 1
A 17633 6 0 177 1 2 1
A 17640 7 6703 0 1 2 0
T 17669 6744 0 0 0 0
A 17680 7 6762 0 1 2 1
A 17679 6 0 177 1 2 1
A 17686 7 6764 0 1 2 1
A 17685 6 0 177 1 2 0
T 17733 6826 0 3 0 0
A 17740 7 6847 0 1 2 1
A 17741 7 0 0 1 10 1
A 17739 6 0 177 1 2 1
A 17746 7 6849 0 1 2 1
A 17747 7 0 0 1 10 1
A 17745 6 0 177 1 2 1
A 17752 7 6851 0 1 2 0
T 17759 6856 0 3 0 0
A 17767 7 6877 0 1 2 1
A 17768 7 0 0 1 10 1
A 17766 6 0 177 1 2 1
A 17773 7 6879 0 1 2 1
A 17774 7 0 0 1 10 1
A 17772 6 0 177 1 2 1
A 17778 7 6881 0 1 2 0
T 17782 6886 0 3 0 0
A 17788 7 6913 0 1 2 1
A 17792 7 6915 0 1 2 1
A 17796 7 6917 0 1 2 1
A 17800 7 6919 0 1 2 1
A 17804 7 6921 0 1 2 0
T 17785 6892 0 3 0 0
A 18719 7 8042 0 1 2 1
A 18720 7 0 0 1 10 1
A 18718 6 0 177 1 2 1
A 18724 7 8044 0 1 2 1
A 18728 7 8046 0 1 2 1
A 18732 7 8048 0 1 2 0
T 17814 6926 0 3 0 0
A 17818 7 6980 0 1 2 1
A 17827 7 6982 0 1 2 1
A 17828 7 0 0 1 10 1
A 17826 6 0 256 1 2 1
A 17834 7 6984 0 1 2 1
A 17835 7 0 0 1 10 1
A 17833 6 0 177 1 2 1
A 17849 7 6986 0 1 2 1
A 17850 7 0 0 1 10 1
A 17848 6 0 177 1 2 1
A 17854 7 6988 0 1 2 1
A 17858 7 6990 0 1 2 1
A 17862 7 6992 0 1 2 1
A 17866 7 6994 0 1 2 1
A 17870 7 6996 0 1 2 0
T 17815 6932 0 3 0 0
A 19438 7 8814 0 1 2 1
A 19442 7 8816 0 1 2 1
A 19470 7 8818 0 1 2 1
A 19475 7 8820 0 1 2 1
A 19476 7 0 0 1 10 1
A 19474 6 0 177 1 2 1
A 19481 7 8822 0 1 2 1
A 19482 7 0 0 1 10 1
A 19480 6 0 177 1 2 0
T 17874 7001 0 3 0 0
A 17877 7 7049 0 1 2 1
A 17885 7 7051 0 1 2 1
A 17886 7 0 0 1 10 1
A 17884 6 0 242 1 2 1
A 17892 7 7053 0 1 2 1
A 17893 7 0 0 1 10 1
A 17891 6 0 177 1 2 1
A 17907 7 7055 0 1 2 1
A 17908 7 0 0 1 10 1
A 17906 6 0 177 1 2 1
A 17912 7 7057 0 1 2 1
A 17916 7 7059 0 1 2 1
A 17920 7 7061 0 1 2 1
A 17924 7 7063 0 1 2 1
A 17928 7 7065 0 1 2 0
T 17932 7070 0 3 0 0
A 17935 7 7118 0 1 2 1
A 17942 7 7120 0 1 2 1
A 17943 7 0 0 1 10 1
A 17941 6 0 225 1 2 1
A 17949 7 7122 0 1 2 1
A 17950 7 0 0 1 10 1
A 17948 6 0 177 1 2 1
A 17964 7 7124 0 1 2 1
A 17965 7 0 0 1 10 1
A 17963 6 0 177 1 2 1
A 17969 7 7126 0 1 2 1
A 17973 7 7128 0 1 2 1
A 17977 7 7130 0 1 2 1
A 17981 7 7132 0 1 2 1
A 17985 7 7134 0 1 2 0
T 17989 7139 0 3 0 0
A 17992 7 7187 0 1 2 1
A 17998 7 7189 0 1 2 1
A 17999 7 0 0 1 10 1
A 17997 6 0 213 1 2 1
A 18005 7 7191 0 1 2 1
A 18006 7 0 0 1 10 1
A 18004 6 0 177 1 2 1
A 18020 7 7193 0 1 2 1
A 18021 7 0 0 1 10 1
A 18019 6 0 177 1 2 1
A 18025 7 7195 0 1 2 1
A 18029 7 7197 0 1 2 1
A 18033 7 7199 0 1 2 1
A 18037 7 7201 0 1 2 1
A 18041 7 7203 0 1 2 0
T 18045 7208 0 3 0 0
A 18048 7 7256 0 1 2 1
A 18053 7 7258 0 1 2 1
A 18054 7 0 0 1 10 1
A 18052 6 0 177 1 2 1
A 18060 7 7260 0 1 2 1
A 18061 7 0 0 1 10 1
A 18059 6 0 177 1 2 1
A 18075 7 7262 0 1 2 1
A 18076 7 0 0 1 10 1
A 18074 6 0 177 1 2 1
A 18080 7 7264 0 1 2 1
A 18084 7 7266 0 1 2 1
A 18088 7 7268 0 1 2 1
A 18092 7 7270 0 1 2 1
A 18096 7 7272 0 1 2 0
T 18100 7277 0 3 0 0
A 18103 7 7313 0 1 2 1
A 18110 7 7315 0 1 2 1
A 18111 7 0 0 1 10 1
A 18109 6 0 177 1 2 1
A 18122 7 7317 0 1 2 1
A 18123 7 0 0 1 10 1
A 18121 6 0 177 1 2 1
A 18127 7 7319 0 1 2 1
A 18131 7 7321 0 1 2 1
A 18135 7 7323 0 1 2 1
A 18139 7 7325 0 1 2 1
A 18143 7 7327 0 1 2 0
T 18147 7332 0 3 0 0
A 18150 7 7380 0 1 2 1
A 18157 7 7382 0 1 2 1
A 18158 7 0 0 1 10 1
A 18156 6 0 225 1 2 1
A 18164 7 7384 0 1 2 1
A 18165 7 0 0 1 10 1
A 18163 6 0 177 1 2 1
A 18179 7 7386 0 1 2 1
A 18180 7 0 0 1 10 1
A 18178 6 0 177 1 2 1
A 18184 7 7388 0 1 2 1
A 18188 7 7390 0 1 2 1
A 18192 7 7392 0 1 2 1
A 18196 7 7394 0 1 2 1
A 18200 7 7396 0 1 2 0
T 18204 7401 0 3 0 0
A 18207 7 7449 0 1 2 1
A 18213 7 7451 0 1 2 1
A 18214 7 0 0 1 10 1
A 18212 6 0 213 1 2 1
A 18220 7 7453 0 1 2 1
A 18221 7 0 0 1 10 1
A 18219 6 0 177 1 2 1
A 18235 7 7455 0 1 2 1
A 18236 7 0 0 1 10 1
A 18234 6 0 177 1 2 1
A 18240 7 7457 0 1 2 1
A 18244 7 7459 0 1 2 1
A 18248 7 7461 0 1 2 1
A 18252 7 7463 0 1 2 1
A 18256 7 7465 0 1 2 0
T 18260 7470 0 3 0 0
A 18263 7 7518 0 1 2 1
A 18268 7 7520 0 1 2 1
A 18269 7 0 0 1 10 1
A 18267 6 0 177 1 2 1
A 18275 7 7522 0 1 2 1
A 18276 7 0 0 1 10 1
A 18274 6 0 177 1 2 1
A 18290 7 7524 0 1 2 1
A 18291 7 0 0 1 10 1
A 18289 6 0 177 1 2 1
A 18295 7 7526 0 1 2 1
A 18299 7 7528 0 1 2 1
A 18303 7 7530 0 1 2 1
A 18307 7 7532 0 1 2 1
A 18311 7 7534 0 1 2 0
T 18315 7539 0 3 0 0
A 18318 7 7575 0 1 2 1
A 18325 7 7577 0 1 2 1
A 18326 7 0 0 1 10 1
A 18324 6 0 177 1 2 1
A 18337 7 7579 0 1 2 1
A 18338 7 0 0 1 10 1
A 18336 6 0 177 1 2 1
A 18342 7 7581 0 1 2 1
A 18346 7 7583 0 1 2 1
A 18350 7 7585 0 1 2 1
A 18354 7 7587 0 1 2 1
A 18358 7 7589 0 1 2 0
T 18362 7594 0 3 0 0
A 18365 7 7642 0 1 2 1
A 18370 7 7644 0 1 2 1
A 18371 7 0 0 1 10 1
A 18369 6 0 177 1 2 1
A 18377 7 7646 0 1 2 1
A 18378 7 0 0 1 10 1
A 18376 6 0 177 1 2 1
A 18392 7 7648 0 1 2 1
A 18393 7 0 0 1 10 1
A 18391 6 0 177 1 2 1
A 18397 7 7650 0 1 2 1
A 18401 7 7652 0 1 2 1
A 18405 7 7654 0 1 2 1
A 18409 7 7656 0 1 2 1
A 18413 7 7658 0 1 2 0
T 18417 7663 0 3 0 0
A 18420 7 7699 0 1 2 1
A 18427 7 7701 0 1 2 1
A 18428 7 0 0 1 10 1
A 18426 6 0 177 1 2 1
A 18439 7 7703 0 1 2 1
A 18440 7 0 0 1 10 1
A 18438 6 0 177 1 2 1
A 18444 7 7705 0 1 2 1
A 18448 7 7707 0 1 2 1
A 18452 7 7709 0 1 2 1
A 18456 7 7711 0 1 2 1
A 18460 7 7713 0 1 2 0
T 18464 7718 0 3 0 0
A 18467 7 7754 0 1 2 1
A 18474 7 7756 0 1 2 1
A 18475 7 0 0 1 10 1
A 18473 6 0 177 1 2 1
A 18486 7 7758 0 1 2 1
A 18487 7 0 0 1 10 1
A 18485 6 0 177 1 2 1
A 18491 7 7760 0 1 2 1
A 18495 7 7762 0 1 2 1
A 18499 7 7764 0 1 2 1
A 18503 7 7766 0 1 2 1
A 18507 7 7768 0 1 2 0
T 18524 7773 0 3 0 0
A 18530 7 7917 0 1 2 1
A 18534 7 7919 0 1 2 1
A 18538 7 7921 0 1 2 1
A 18542 7 7923 0 1 2 1
A 18546 7 7925 0 1 2 1
A 18550 7 7927 0 1 2 1
A 18555 7 7929 0 1 2 1
A 18556 7 0 0 1 10 1
A 18554 6 0 177 1 2 1
A 18561 7 7931 0 1 2 1
A 18562 7 0 0 1 10 1
A 18560 6 0 177 1 2 1
A 18567 7 7933 0 1 2 1
A 18568 7 0 0 1 10 1
A 18566 6 0 177 1 2 1
A 18573 7 7935 0 1 2 1
A 18574 7 0 0 1 10 1
A 18572 6 0 177 1 2 1
A 18579 7 7937 0 1 2 1
A 18580 7 0 0 1 10 1
A 18578 6 0 177 1 2 1
A 18585 7 7939 0 1 2 1
A 18586 7 0 0 1 10 1
A 18584 6 0 177 1 2 1
A 18590 7 7941 0 1 2 1
A 18594 7 7943 0 1 2 1
A 18598 7 7945 0 1 2 1
A 18602 7 7947 0 1 2 1
A 18607 7 7949 0 1 2 1
A 18608 7 0 0 1 10 1
A 18606 6 0 177 1 2 1
A 18613 7 7951 0 1 2 1
A 18614 7 0 0 1 10 1
A 18612 6 0 177 1 2 1
A 18619 7 7953 0 1 2 1
A 18620 7 0 0 1 10 1
A 18618 6 0 177 1 2 1
A 18625 7 7955 0 1 2 1
A 18626 7 0 0 1 10 1
A 18624 6 0 177 1 2 1
A 18630 7 7957 0 1 2 1
A 18634 7 7959 0 1 2 1
A 18639 7 7961 0 1 2 1
A 18640 7 0 0 1 10 1
A 18638 6 0 177 1 2 1
A 18645 7 7963 0 1 2 1
A 18646 7 0 0 1 10 1
A 18644 6 0 177 1 2 1
A 18650 7 7965 0 1 2 1
A 18655 7 7967 0 1 2 1
A 18656 7 0 0 1 10 1
A 18654 6 0 177 1 2 1
A 18660 7 7969 0 1 2 1
A 18664 7 7971 0 1 2 1
A 18669 7 7973 0 1 2 1
A 18670 7 0 0 1 10 1
A 18668 6 0 177 1 2 1
A 18674 7 7975 0 1 2 1
A 18678 7 7977 0 1 2 1
A 18682 7 7979 0 1 2 0
T 18686 7984 0 3 0 0
A 18692 7 8002 0 1 2 1
A 18696 7 8004 0 1 2 1
A 18700 7 8006 0 1 2 1
A 18704 7 8008 0 1 2 0
T 18708 8013 0 3 0 0
A 18711 7 8022 0 1 2 0
T 18750 8071 0 3 0 0
A 18753 7 8083 0 1 2 1
A 18757 7 8085 0 1 2 0
T 18761 8090 0 3 0 0
A 18764 7 8105 0 1 2 1
A 18768 7 8107 0 1 2 1
A 18772 7 8109 0 1 2 0
T 18776 8114 0 3 0 0
A 18779 7 8123 0 1 2 0
T 18821 8128 0 3 0 0
A 18822 18 0 0 1 157 1
A 18823 18 0 0 1 157 1
A 18824 18 0 0 1 157 1
T 18825 6431 0 3 0 1
A 8052 7 6437 0 1 2 0
A 18830 6 0 0 1 2 1
A 18831 6 0 0 1 3 1
A 18835 7 8179 0 1 2 1
A 18839 7 8181 0 1 2 1
A 18844 7 8183 0 1 2 1
A 18848 7 8185 0 1 2 1
A 18853 7 8187 0 1 2 1
A 18857 7 8189 0 1 2 1
A 18862 7 8191 0 1 2 0
T 18832 8134 0 3 0 0
A 18965 7 8315 0 1 2 0
T 18841 8146 0 3 0 0
A 18975 7 8326 0 1 2 0
T 18850 8158 0 3 0 0
A 18955 7 8304 0 1 2 0
T 18859 8170 0 3 0 0
A 18981 7 8340 0 1 2 1
A 18985 7 8342 0 1 2 1
A 18987 6 0 0 1 5558 1
A 18990 7 8344 0 1 2 0
T 18882 8217 0 3 0 0
A 18890 7 8235 0 1 2 1
A 18891 7 0 0 1 10 1
A 18889 6 0 177 1 2 1
A 18897 7 8237 0 1 2 1
A 18898 7 0 0 1 10 1
A 18896 6 0 177 1 2 0
T 18903 8242 0 3 0 0
A 18905 18 0 0 1 157 0
T 18910 8251 0 3 0 0
A 18915 18 0 0 1 157 1
A 18926 7 8272 0 1 2 1
A 18930 7 8274 0 1 2 1
A 18934 7 8276 0 1 2 0
T 18938 8281 0 3 0 0
A 18945 7 8293 0 1 2 0
T 19018 8349 0 3 0 0
A 19019 6 0 0 1 5558 1
A 19025 7 8400 0 1 2 1
A 19026 7 0 0 1 10 1
A 19024 6 0 177 1 2 1
A 19030 7 8402 0 1 2 1
A 19034 7 8404 0 1 2 1
A 19038 7 8406 0 1 2 1
A 19042 7 8408 0 1 2 1
A 19046 7 8410 0 1 2 1
A 19050 7 8412 0 1 2 1
A 19054 7 8414 0 1 2 1
A 19058 7 8416 0 1 2 1
A 19062 7 8418 0 1 2 1
A 19066 7 8420 0 1 2 1
A 19070 7 8422 0 1 2 1
A 19074 7 8424 0 1 2 1
A 19078 7 8426 0 1 2 0
T 19082 8431 0 3 0 0
A 19083 18 0 0 1 157 1
A 19086 6 0 0 1 193 1
A 19087 18 0 0 1 157 1
A 19088 18 0 0 1 157 1
T 19090 8128 0 3 0 1
A 18822 18 0 0 1 157 1
A 18823 18 0 0 1 157 1
A 18824 18 0 0 1 157 1
T 18825 6431 0 3 0 1
A 8052 7 6437 0 1 2 0
A 18830 6 0 0 1 2 1
A 18831 6 0 0 1 3 1
A 18835 7 8179 0 1 2 1
A 18839 7 8181 0 1 2 1
A 18844 7 8183 0 1 2 1
A 18848 7 8185 0 1 2 1
A 18853 7 8187 0 1 2 1
A 18857 7 8189 0 1 2 1
A 18862 7 8191 0 1 2 0
A 19093 7 8443 0 1 2 1
A 19097 7 8445 0 1 2 0
T 19104 8450 0 3 0 0
A 19105 6 0 0 1 2 1
A 19108 7 8507 0 1 2 1
A 19111 18 0 0 1 157 1
A 19112 18 0 0 1 157 1
A 19113 18 0 0 1 6409 1
A 19114 18 0 0 1 157 1
A 19120 7 8509 0 1 2 1
A 19122 6 0 0 1 2 1
A 19124 6 0 0 1 193 1
A 19130 7 8511 0 1 2 1
A 19134 7 8513 0 1 2 1
A 19138 7 8515 0 1 2 1
A 19142 7 8517 0 1 2 1
A 19146 7 8519 0 1 2 1
A 19150 7 8521 0 1 2 1
A 19154 7 8523 0 1 2 1
A 19159 7 8525 0 1 2 1
A 19163 7 8527 0 1 2 1
A 19168 7 8529 0 1 2 1
A 19172 7 8531 0 1 2 0
T 19127 8462 0 3 0 0
T 19258 6538 0 3 0 0
T 16750 6530 0 3 0 0
A 16737 7 6536 0 1 2 0
T 19156 8489 0 3 0 0
T 19255 6516 0 3 0 0
A 16737 7 6522 0 1 2 0
T 19200 8536 0 3 0 0
A 19201 6 0 0 1 2 1
A 19230 7 8578 0 1 2 0
T 19207 8545 0 3 0 0
T 19276 6652 0 3 0 1
A 17172 7 6658 0 1 2 0
A 19279 7 8608 0 1 2 0
T 19261 8589 0 3 0 0
T 19265 8489 0 3 0 1
T 19255 6516 0 3 0 0
A 16737 7 6522 0 1 2 0
T 19266 8489 0 3 0 1
T 19255 6516 0 3 0 0
A 16737 7 6522 0 1 2 0
T 19267 8462 0 3 0 1
T 19258 6538 0 3 0 0
T 16750 6530 0 3 0 0
A 16737 7 6536 0 1 2 0
A 19270 7 8600 0 1 2 0
T 19283 8613 0 3 0 0
A 19287 7 8634 0 1 2 1
A 19291 7 8636 0 1 2 1
A 19295 7 8638 0 1 2 0
T 19284 8619 0 3 0 0
A 19347 7 8694 0 1 2 1
A 19351 7 8696 0 1 2 1
A 19355 7 8698 0 1 2 0
T 19427 8763 0 3 0 0
A 19530 7 8905 0 1 2 1
A 19538 7 8907 0 1 2 1
A 19542 7 8909 0 1 2 1
A 19550 7 8911 0 1 2 1
A 19552 18 0 0 1 6409 1
A 19553 18 0 0 1 157 1
A 19554 9 0 0 1 6410 1
A 19555 9 0 0 1 6411 1
A 19556 9 0 0 1 6411 1
A 19557 6680 0 0 1 6408 1
A 19558 6680 0 0 1 6408 1
A 19559 6680 0 0 1 6408 1
A 19560 6680 0 0 1 6408 1
A 19563 7 8913 0 1 2 1
A 19568 7 8915 0 1 2 1
A 19572 7 8917 0 1 2 0
T 19499 8833 0 3 0 0
A 19504 7 8853 0 1 2 1
A 19503 6 0 193 1 2 1
A 19508 7 8855 0 1 2 0
T 19565 8893 0 3 0 0
A 19639 7 9099 0 1 2 1
A 19651 7 9101 0 1 2 1
A 19650 6 0 193 1 2 1
A 19655 7 9103 0 1 2 1
A 19654 6 0 193 1 2 1
A 19659 7 9105 0 1 2 1
A 19658 6 0 193 1 2 1
A 19663 7 9107 0 1 2 1
A 19662 6 0 193 1 2 1
A 19667 7 9109 0 1 2 1
A 19666 6 0 193 1 2 1
A 19671 7 9111 0 1 2 1
A 19670 6 0 193 1 2 1
A 19675 7 9113 0 1 2 1
A 19674 6 0 193 1 2 1
A 19679 7 9115 0 1 2 1
A 19678 6 0 193 1 2 1
A 19683 7 9117 0 1 2 1
A 19682 6 0 193 1 2 1
A 19687 7 9119 0 1 2 1
A 19686 6 0 193 1 2 1
A 19691 7 9121 0 1 2 1
A 19690 6 0 193 1 2 1
A 19695 7 9123 0 1 2 1
A 19694 6 0 193 1 2 1
A 19699 7 9125 0 1 2 1
A 19698 6 0 193 1 2 1
A 19703 7 9127 0 1 2 1
A 19702 6 0 193 1 2 1
A 19707 7 9129 0 1 2 0
T 19714 9134 0 3 0 0
A 19720 7 9143 0 1 2 0
T 19724 9148 0 3 0 0
T 19737 8462 0 3 0 1
T 19258 6538 0 3 0 0
T 16750 6530 0 3 0 0
A 16737 7 6536 0 1 2 0
T 19738 8489 0 3 0 1
T 19255 6516 0 3 0 0
A 16737 7 6522 0 1 2 0
A 19742 7 9210 0 1 2 1
A 19741 6 0 193 1 2 1
A 19746 7 9212 0 1 2 1
A 19745 6 0 193 1 2 1
A 19750 7 9214 0 1 2 1
A 19749 6 0 193 1 2 1
A 19754 7 9216 0 1 2 1
A 19753 6 0 193 1 2 1
A 19758 7 9218 0 1 2 1
A 19762 7 9220 0 1 2 0
T 19766 9225 0 3 0 0
T 19772 8545 0 3 0 1
T 19276 6652 0 3 0 1
A 17172 7 6658 0 1 2 0
A 19279 7 8608 0 1 2 0
T 19774 8489 0 3 0 1
T 19255 6516 0 3 0 0
A 16737 7 6522 0 1 2 0
T 19775 8489 0 3 0 1
T 19255 6516 0 3 0 0
A 16737 7 6522 0 1 2 0
T 19776 8462 0 3 0 1
T 19258 6538 0 3 0 0
T 16750 6530 0 3 0 0
A 16737 7 6536 0 1 2 0
A 19778 6451 0 0 1 6412 1
A 19781 7 9240 0 1 2 1
A 19785 7 9242 0 1 2 0
Z
