  �K  �   k820309    `          17.0        �]                                                                                                           
       module_mp_radar.F MODULE_MP_RADAR              M_COMPLEX_WATER_RAY M_COMPLEX_ICE_MAETZLER M_COMPLEX_MAXWELLGARNETT GET_M_MIX_NESTED GET_M_MIX                      @                              
                            @                              
                         @                               '                                          @                               '                                          @                             '                    #DIRECTION    #NALARMS    #C    #ALARMLISTHEAD @                �                                                               �                                                              �                                                         #ESMF_CLOCK 	                     @                         	     '                    #CLOCKINT 
               �$                              
     p                    #ESMF_CLOCKINT                                          y#ESMF_CLOCKINT                                                                     @                              'p             
      #TIMESTEP    #STARTTIME (   #STOPTIME )   #REFTIME *   #CURRTIME +   #PREVTIME ,   #ADVANCECOUNT -   #CLOCKMUTEX .   #NUMALARMS /   #ALARMLIST 0                � $                                   P                      #ESMF_TIMEINTERVAL                      @                              'P                    #BASETIME    #YR    #MM    #STARTTIME_SET    #STARTTIME                 � $                                                         #ESMF_BASETIME                      @                              '                    #S    #SN    #SD                 � $                                                             � $                                                            � $                                                            � $                                                             � $                                                             � $                                                              � $                                   (       (              #ESMF_TIME                      @                              '(                    #BASETIME    #YR    #CALENDAR                 � $                                                         #ESMF_BASETIME                 � $                                                            �$                                   L                     #ESMF_CALENDAR                                          y#ESMF_CALENDAR                                                                     @                               'L                    #TYPE    #SET    #DAYSPERMONTH     #SECONDSPERDAY !   #SECONDSPERYEAR "   #DAYSPERYEAR #                � $                                                         #ESMF_CALKIND_FLAG                      @                              '                    #CALTYPE                 � $                                                             � $                                                                       �                                                                         � $                                                             p          p            p                                                  �                                                          0            � $                              !     8                                    �                                                      0                � $                              "     <                                    �                                                      0                 � $                              #            @              #ESMF_DAYSPERYEAR $                     @                         $     '                    #D %   #DN &   #DD '               � $                              %                                          �                                                      0                � $                              &                                         �                                                      0                � $                              '                                         �                                                     1                 � $                              (     (       P              #ESMF_TIME                 � $                              )     (       x              #ESMF_TIME                 � $                              *     (       �              #ESMF_TIME                 � $                              +     (       �              #ESMF_TIME                 � $                              ,     (       �              #ESMF_TIME                 � $                             -                              � $                              .                               � $                              /     $      	                �$                              0            (             
     #ESMF_ALARM 1             &                                                                                 y#ESMF_ALARM 1                                                                    @                          1     '                    #ALARMINT 2               �$                              2     �                    #ESMF_ALARMINT 3                                         y#ESMF_ALARMINT 3                                                                    @                         3     '�                   #NAME 4   #RINGINTERVAL 5   #RINGTIME 6   #PREVRINGTIME 7   #STOPTIME 8   #ID 9   #ALARMMUTEX :   #RINGING ;   #ENABLED <   #RINGTIMESET =   #RINGINTERVALSET >   #STOPTIMESET ?               � $                             4                                                  �                                      =              C                                                                                                                                                                                                                                                                                                 � $                              5     P                     #ESMF_TIMEINTERVAL                 � $                              6     (       P             #ESMF_TIME                 � $                              7     (       x             #ESMF_TIME                 � $                              8     (       �             #ESMF_TIME                 � $                              9     �                         � $                              :     �                         � $                              ;     �                         � $                              <     �      	                   � $                              =     �      
                   � $                              >     �                         � $                              ?     �                        �                              @     �                    #MPAS_ALARM_TYPE A                                         y#MPAS_ALARM_TYPE A                                                                    @                         A     '�                    #ALARMID B   #ISRECURRING C   #ISSET D   #RINGTIME E   #PREVRINGTIME H   #RINGTIMEINTERVAL I   #NEXT L                �                              B     @                                   �                               C     @                          �                               D     D                          �                               E     (       H              #MPAS_TIME_TYPE F                     @                        F     '(                    #T G                �                               G     (                      #ESMF_TIME                 �                               H     (       p              #MPAS_TIME_TYPE F                �                               I     P       �              #MPAS_TIMEINTERVAL_TYPE J                     @                        J     'P                    #TI K                �                               K     P                      #ESMF_TIMEINTERVAL                �                              L     �       �             #MPAS_ALARM_TYPE A                                         y#MPAS_ALARM_TYPE A                                                  %         @                               M                    	       #Y N             
                                  N     	      %         @                                O                    	       #XX P             
                                  P     	      #         @                                  Q                    #STR R             
                                 R                    1 #         @                                   S                    #X_G T   #A_GEO U   #B_GEO V   #FMELT W   #MELTRATIO_OUTSIDE X   #M_W Y   #M_I Z   #LAMBDA [   #C_BACK \   #MIXINGRULE ]   #MATRIX ^   #INCLUSION _   #HOST `   #HOSTMATRIX a   #HOSTINCLUSION b             
                                  T     
                
                                  U     
                
                                  V     
                
  @                               W     
                
  @                               X     
                
  @                              Y                     
  @                              Z                     
                                  [     
                D                                 \     
                 
  @                              ]                    1           
  @                              ^                    1           
  @                              _                    1           
  @                              `                    1           
  @                              a                    1           
  @                              b                    1 #         @                                   c                     %         @   @                          d                           #LAMBDA e   #T f             
                                  e     
                
                                  f     
      %         @   @                          g                           #LAMBDA h   #T i             
                                  h     
                
                                  i     
      %         @   @                          j                           #VOL1 k   #VOL2 l   #VOL3 m   #M1 n   #M2 o   #M3 p   #INCLUSION q   #ERROR r                                              k     
                                                  l     
                                                  m     
                                                 n                                                      o                                                      p                                                      q                     1           D                                 r            %         @   @                          s                           #M_A t   #M_I u   #M_W v   #VOLAIR w   #VOLICE x   #VOLWATER y   #MIXINGRULE z   #HOST {   #MATRIX |   #INCLUSION }   #HOSTMATRIX ~   #HOSTINCLUSION    #CUMULERROR �             
  @                              t                     
  @                              u                     
  @                              v                     
  @                               w     
                
  @                               x     
                
  @                               y     
                
  @                              z                    1           
                                 {                    1           
  @                              |                    1           
  @                              }                    1           
  @                              ~                    1           
  @                                                  1           D                                 �            %         @   @                          �                 
          #M_A �   #M_I �   #M_W �   #VOLAIR �   #VOLICE �   #VOLWATER �   #MIXINGRULE �   #MATRIX �   #INCLUSION �   #ERROR �             
@ @                              �                     
@ @                              �                     
@ @                              �                     
@ @                               �     
                
@ @                               �     
                
@ @                               �     
                
                                 �                    1           
                                 �                    1           
@ @                              �                    1           D @                               �                                                         �                                       2               50           @                                 �     3              
      p          p 3           p 3                                    @                                 �     2              
      p          p 2           p 2                                    @                                 �     2              
      p          p 2           p 2                                    @                                 �     2              
      p          p 2           p 2                                    @                                 �     2              
      p          p 2           p 2                                                                      �     
                 
                    ����?        0.10           @                                 �     
                  @                                 �     
                  @                                 �     
                  @                                �                       @                                �                       @                                 �     3              
      p          p 3           p 3                                                                      �                   
                                                    T
W
p          n
         
                  UUUUUU�?          n
             
                  UUUUUU�?          n
             
                  UUUUUU�?          h  p          p          p            p                                                         @ @                               �                   	      p          p            p                                     @ @                               �                   	      p          p            p                                     @ @                               �                   	      p          p            p                                     @                                 �                   	      p          p            p                                     @                                 �                   	      p          p            p                                     @                                 �                   	      p          p            p                                                                       �     	                                                    �     	                                                    �     	                  @                                 �     	                                                    �     	                                                    �     	                                                    �     	                  @                                 �     	                  @                                 �     	                  @                                 �     	                                                    �     	                                                    �     	                                                    �     	                  @                                 �     	                  @                                 �     	                  @                                 �     	                  @                                 �     	                  @                                 �     	                  @                                 �     	                                                    �                                                      20           @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                       @                                �                                                         �     
                 
                 �������?        0.9D0                                             �     
                 
                 �������?        0.9D0           @ @                               �               �   *      fn#fn %   �   o   b   uapp(MODULE_MP_RADAR '   9  @   J   MPAS_ATMPHYS_FUNCTIONS '   y  @   J   MPAS_ATMPHYS_UTILITIES '   �  P       #UNLPOLY+ISO_C_BINDING    	  P       #UNLPOLY+MPI 3   Y  �       MPAS_CLOCK_TYPE+MPAS_DERIVED_TYPES =   �  H   a   MPAS_CLOCK_TYPE%DIRECTION+MPAS_DERIVED_TYPES ;   '  H   a   MPAS_CLOCK_TYPE%NALARMS+MPAS_DERIVED_TYPES 5   o  `   a   MPAS_CLOCK_TYPE%C+MPAS_DERIVED_TYPES )   �  ^       ESMF_CLOCK+ESMF_CLOCKMOD 2   -  �   a   ESMF_CLOCK%CLOCKINT+ESMF_CLOCKMOD ,     �       ESMF_CLOCKINT+ESMF_CLOCKMOD 5   �  g   a   ESMF_CLOCKINT%TIMESTEP+ESMF_CLOCKMOD 7   N  �       ESMF_TIMEINTERVAL+ESMF_TIMEINTERVALMOD @   �  c   a   ESMF_TIMEINTERVAL%BASETIME+ESMF_TIMEINTERVALMOD /   A  g       ESMF_BASETIME+ESMF_BASETIMEMOD 1   �  H   a   ESMF_BASETIME%S+ESMF_BASETIMEMOD 2   �  H   a   ESMF_BASETIME%SN+ESMF_BASETIMEMOD 2   8  H   a   ESMF_BASETIME%SD+ESMF_BASETIMEMOD :   �  H   a   ESMF_TIMEINTERVAL%YR+ESMF_TIMEINTERVALMOD :   �  H   a   ESMF_TIMEINTERVAL%MM+ESMF_TIMEINTERVALMOD E   	  H   a   ESMF_TIMEINTERVAL%STARTTIME_SET+ESMF_TIMEINTERVALMOD A   X	  _   a   ESMF_TIMEINTERVAL%STARTTIME+ESMF_TIMEINTERVALMOD *   �	  t       ESMF_TIME+ESMF_SHRTIMEMOD 3   +
  c   a   ESMF_TIME%BASETIME+ESMF_SHRTIMEMOD -   �
  H   a   ESMF_TIME%YR+ESMF_SHRTIMEMOD 3   �
  �   a   ESMF_TIME%CALENDAR+ESMF_SHRTIMEMOD /   �  �       ESMF_CALENDAR+ESMF_CALENDARMOD 4   Y  g   a   ESMF_CALENDAR%TYPE+ESMF_CALENDARMOD 3   �  ]       ESMF_CALKIND_FLAG+ESMF_CALENDARMOD ;     H   a   ESMF_CALKIND_FLAG%CALTYPE+ESMF_CALENDARMOD 3   e  �   a   ESMF_CALENDAR%SET+ESMF_CALENDARMOD <   	  �   a   ESMF_CALENDAR%DAYSPERMONTH+ESMF_CALENDARMOD =     �   a   ESMF_CALENDAR%SECONDSPERDAY+ESMF_CALENDARMOD >   �  �   a   ESMF_CALENDAR%SECONDSPERYEAR+ESMF_CALENDARMOD ;   L  f   a   ESMF_CALENDAR%DAYSPERYEAR+ESMF_CALENDARMOD 2   �  g       ESMF_DAYSPERYEAR+ESMF_CALENDARMOD 4     �   a   ESMF_DAYSPERYEAR%D+ESMF_CALENDARMOD 5   �  �   a   ESMF_DAYSPERYEAR%DN+ESMF_CALENDARMOD 5   c  �   a   ESMF_DAYSPERYEAR%DD+ESMF_CALENDARMOD 6     _   a   ESMF_CLOCKINT%STARTTIME+ESMF_CLOCKMOD 5   g  _   a   ESMF_CLOCKINT%STOPTIME+ESMF_CLOCKMOD 4   �  _   a   ESMF_CLOCKINT%REFTIME+ESMF_CLOCKMOD 5   %  _   a   ESMF_CLOCKINT%CURRTIME+ESMF_CLOCKMOD 5   �  _   a   ESMF_CLOCKINT%PREVTIME+ESMF_CLOCKMOD 9   �  H   a   ESMF_CLOCKINT%ADVANCECOUNT+ESMF_CLOCKMOD 7   +  H   a   ESMF_CLOCKINT%CLOCKMUTEX+ESMF_CLOCKMOD 6   s  H   a   ESMF_CLOCKINT%NUMALARMS+ESMF_CLOCKMOD 6   �    a   ESMF_CLOCKINT%ALARMLIST+ESMF_CLOCKMOD )   �  ^       ESMF_ALARM+ESMF_ALARMMOD 2   -  �   a   ESMF_ALARM%ALARMINT+ESMF_ALARMMOD ,           ESMF_ALARMINT+ESMF_ALARMMOD 1     �  a   ESMF_ALARMINT%NAME+ESMF_ALARMMOD 9   �  g   a   ESMF_ALARMINT%RINGINTERVAL+ESMF_ALARMMOD 5   *  _   a   ESMF_ALARMINT%RINGTIME+ESMF_ALARMMOD 9   �  _   a   ESMF_ALARMINT%PREVRINGTIME+ESMF_ALARMMOD 5   �  _   a   ESMF_ALARMINT%STOPTIME+ESMF_ALARMMOD /   G  H   a   ESMF_ALARMINT%ID+ESMF_ALARMMOD 7   �  H   a   ESMF_ALARMINT%ALARMMUTEX+ESMF_ALARMMOD 4   �  H   a   ESMF_ALARMINT%RINGING+ESMF_ALARMMOD 4     H   a   ESMF_ALARMINT%ENABLED+ESMF_ALARMMOD 8   g  H   a   ESMF_ALARMINT%RINGTIMESET+ESMF_ALARMMOD <   �  H   a   ESMF_ALARMINT%RINGINTERVALSET+ESMF_ALARMMOD 8   �  H   a   ESMF_ALARMINT%STOPTIMESET+ESMF_ALARMMOD A   ?  �   a   MPAS_CLOCK_TYPE%ALARMLISTHEAD+MPAS_DERIVED_TYPES 3     �       MPAS_ALARM_TYPE+MPAS_DERIVED_TYPES ;   �  P   a   MPAS_ALARM_TYPE%ALARMID+MPAS_DERIVED_TYPES ?   "   H   a   MPAS_ALARM_TYPE%ISRECURRING+MPAS_DERIVED_TYPES 9   j   H   a   MPAS_ALARM_TYPE%ISSET+MPAS_DERIVED_TYPES <   �   d   a   MPAS_ALARM_TYPE%RINGTIME+MPAS_DERIVED_TYPES 2   !  W       MPAS_TIME_TYPE+MPAS_DERIVED_TYPES 4   m!  _   a   MPAS_TIME_TYPE%T+MPAS_DERIVED_TYPES @   �!  d   a   MPAS_ALARM_TYPE%PREVRINGTIME+MPAS_DERIVED_TYPES D   0"  l   a   MPAS_ALARM_TYPE%RINGTIMEINTERVAL+MPAS_DERIVED_TYPES :   �"  X       MPAS_TIMEINTERVAL_TYPE+MPAS_DERIVED_TYPES =   �"  g   a   MPAS_TIMEINTERVAL_TYPE%TI+MPAS_DERIVED_TYPES 8   [#  �   a   MPAS_ALARM_TYPE%NEXT+MPAS_DERIVED_TYPES .   5$  W       WGAMMA+MPAS_ATMPHYS_FUNCTIONS 0   �$  @   a   WGAMMA%Y+MPAS_ATMPHYS_FUNCTIONS .   �$  X       GAMMLN+MPAS_ATMPHYS_FUNCTIONS 1   $%  @   a   GAMMLN%XX+MPAS_ATMPHYS_FUNCTIONS 7   d%  Q       PHYSICS_MESSAGE+MPAS_ATMPHYS_UTILITIES ;   �%  L   a   PHYSICS_MESSAGE%STR+MPAS_ATMPHYS_UTILITIES )   &        RAYLEIGH_SOAK_WETGRAUPEL -   '  @   a   RAYLEIGH_SOAK_WETGRAUPEL%X_G /   L'  @   a   RAYLEIGH_SOAK_WETGRAUPEL%A_GEO /   �'  @   a   RAYLEIGH_SOAK_WETGRAUPEL%B_GEO /   �'  @   a   RAYLEIGH_SOAK_WETGRAUPEL%FMELT ;   (  @   a   RAYLEIGH_SOAK_WETGRAUPEL%MELTRATIO_OUTSIDE -   L(  @   a   RAYLEIGH_SOAK_WETGRAUPEL%M_W -   �(  @   a   RAYLEIGH_SOAK_WETGRAUPEL%M_I 0   �(  @   a   RAYLEIGH_SOAK_WETGRAUPEL%LAMBDA 0   )  @   a   RAYLEIGH_SOAK_WETGRAUPEL%C_BACK 4   L)  L   a   RAYLEIGH_SOAK_WETGRAUPEL%MIXINGRULE 0   �)  L   a   RAYLEIGH_SOAK_WETGRAUPEL%MATRIX 3   �)  L   a   RAYLEIGH_SOAK_WETGRAUPEL%INCLUSION .   0*  L   a   RAYLEIGH_SOAK_WETGRAUPEL%HOST 4   |*  L   a   RAYLEIGH_SOAK_WETGRAUPEL%HOSTMATRIX 7   �*  L   a   RAYLEIGH_SOAK_WETGRAUPEL%HOSTINCLUSION    +  H       RADAR_INIT $   \+  c       M_COMPLEX_WATER_RAY +   �+  @   a   M_COMPLEX_WATER_RAY%LAMBDA &   �+  @   a   M_COMPLEX_WATER_RAY%T '   ?,  c       M_COMPLEX_ICE_MAETZLER .   �,  @   a   M_COMPLEX_ICE_MAETZLER%LAMBDA )   �,  @   a   M_COMPLEX_ICE_MAETZLER%T )   "-  �       M_COMPLEX_MAXWELLGARNETT .   �-  @   a   M_COMPLEX_MAXWELLGARNETT%VOL1 .   .  @   a   M_COMPLEX_MAXWELLGARNETT%VOL2 .   B.  @   a   M_COMPLEX_MAXWELLGARNETT%VOL3 ,   �.  @   a   M_COMPLEX_MAXWELLGARNETT%M1 ,   �.  @   a   M_COMPLEX_MAXWELLGARNETT%M2 ,   /  @   a   M_COMPLEX_MAXWELLGARNETT%M3 3   B/  L   a   M_COMPLEX_MAXWELLGARNETT%INCLUSION /   �/  @   a   M_COMPLEX_MAXWELLGARNETT%ERROR !   �/  �       GET_M_MIX_NESTED %   �0  @   a   GET_M_MIX_NESTED%M_A %   1  @   a   GET_M_MIX_NESTED%M_I %   G1  @   a   GET_M_MIX_NESTED%M_W (   �1  @   a   GET_M_MIX_NESTED%VOLAIR (   �1  @   a   GET_M_MIX_NESTED%VOLICE *   2  @   a   GET_M_MIX_NESTED%VOLWATER ,   G2  L   a   GET_M_MIX_NESTED%MIXINGRULE &   �2  L   a   GET_M_MIX_NESTED%HOST (   �2  L   a   GET_M_MIX_NESTED%MATRIX +   +3  L   a   GET_M_MIX_NESTED%INCLUSION ,   w3  L   a   GET_M_MIX_NESTED%HOSTMATRIX /   �3  L   a   GET_M_MIX_NESTED%HOSTINCLUSION ,   4  @   a   GET_M_MIX_NESTED%CUMULERROR    O4  �       GET_M_MIX    5  @   a   GET_M_MIX%M_A    V5  @   a   GET_M_MIX%M_I    �5  @   a   GET_M_MIX%M_W !   �5  @   a   GET_M_MIX%VOLAIR !   6  @   a   GET_M_MIX%VOLICE #   V6  @   a   GET_M_MIX%VOLWATER %   �6  L   a   GET_M_MIX%MIXINGRULE !   �6  L   a   GET_M_MIX%MATRIX $   .7  L   a   GET_M_MIX%INCLUSION     z7  @   a   GET_M_MIX%ERROR    �7  r       NRBINS    ,8  �       XXDX    �8  �       XXDS    T9  �       XDTS    �9  �       XXDG    |:  �       XDTG    ;  t       LAMDA_RADAR    �;  @       K_W    �;  @       PI5    <  @       LAMDA4    D<  @       M_W_0    �<  @       M_I_0    �<  �       SIMPSON    X=  �      BASIS    ?  �       XCRE    �?  �       XCSE    ,@  �       XCGE    �@  �       XCRG    TA  �       XCSG    �A  �       XCGG    |B  @       XAM_R    �B  @       XBM_R    �B  @       XMU_R    <C  @       XOBMR    |C  @       XAM_S    �C  @       XBM_S    �C  @       XMU_S    <D  @       XOAMS    |D  @       XOBMS    �D  @       XOCMS    �D  @       XAM_G    <E  @       XBM_G    |E  @       XMU_G    �E  @       XOAMG    �E  @       XOBMG    <F  @       XOCMG    |F  @       XORG2    �F  @       XOSG2    �F  @       XOGG2    <G  r       SLEN #   �G  @       MIXINGRULESTRING_S    �G  @       MATRIXSTRING_S "   .H  @       INCLUSIONSTRING_S    nH  @       HOSTSTRING_S #   �H  @       HOSTMATRIXSTRING_S &   �H  @       HOSTINCLUSIONSTRING_S #   .I  @       MIXINGRULESTRING_G    nI  @       MATRIXSTRING_G "   �I  @       INCLUSIONSTRING_G    �I  @       HOSTSTRING_G #   .J  @       HOSTMATRIXSTRING_G &   nJ  @       HOSTINCLUSIONSTRING_G    �J  u       MELT_OUTSIDE_S    #K  u       MELT_OUTSIDE_G    �K  @       RADAR_DEBUG 