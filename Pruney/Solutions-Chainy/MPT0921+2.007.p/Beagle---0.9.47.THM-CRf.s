%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:10:18 EST 2020

% Result     : Theorem 2.78s
% Output     : CNFRefutation 2.87s
% Verified   : 
% Statistics : Number of formulae       :   57 ( 175 expanded)
%              Number of leaves         :   26 (  84 expanded)
%              Depth                    :   18
%              Number of atoms          :  186 (1024 expanded)
%              Number of equality atoms :  130 ( 634 expanded)
%              Maximal formula depth    :   21 (   7 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ m1_subset_1 > k9_mcart_1 > k8_mcart_1 > k11_mcart_1 > k10_mcart_1 > k4_zfmisc_1 > k4_mcart_1 > k3_zfmisc_1 > k2_zfmisc_1 > #nlpp > k1_xboole_0 > #skF_2 > #skF_4 > #skF_7 > #skF_10 > #skF_5 > #skF_6 > #skF_9 > #skF_3 > #skF_1 > #skF_8

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i * $i * $i * $i ) > $i )).

tff(k10_mcart_1,type,(
    k10_mcart_1: ( $i * $i * $i * $i * $i ) > $i )).

tff(k1_xboole_0,type,(
    k1_xboole_0: $i )).

tff('#skF_4',type,(
    '#skF_4': ( $i * $i * $i * $i * $i ) > $i )).

tff(k4_zfmisc_1,type,(
    k4_zfmisc_1: ( $i * $i * $i * $i ) > $i )).

tff('#skF_7',type,(
    '#skF_7': $i )).

tff('#skF_10',type,(
    '#skF_10': $i )).

tff('#skF_5',type,(
    '#skF_5': $i )).

tff(k11_mcart_1,type,(
    k11_mcart_1: ( $i * $i * $i * $i * $i ) > $i )).

tff('#skF_6',type,(
    '#skF_6': $i )).

tff('#skF_9',type,(
    '#skF_9': $i )).

tff(k3_zfmisc_1,type,(
    k3_zfmisc_1: ( $i * $i * $i ) > $i )).

tff('#skF_3',type,(
    '#skF_3': ( $i * $i * $i * $i * $i ) > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i * $i * $i * $i ) > $i )).

tff('#skF_8',type,(
    '#skF_8': $i )).

tff(k8_mcart_1,type,(
    k8_mcart_1: ( $i * $i * $i * $i * $i ) > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(k2_zfmisc_1,type,(
    k2_zfmisc_1: ( $i * $i ) > $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(k9_mcart_1,type,(
    k9_mcart_1: ( $i * $i * $i * $i * $i ) > $i )).

tff(k4_mcart_1,type,(
    k4_mcart_1: ( $i * $i * $i * $i ) > $i )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_116,negated_conjecture,(
    ~ ! [A,B,C,D,E,F] :
        ( m1_subset_1(F,k4_zfmisc_1(A,B,C,D))
       => ( ! [G] :
              ( m1_subset_1(G,A)
             => ! [H] :
                  ( m1_subset_1(H,B)
                 => ! [I] :
                      ( m1_subset_1(I,C)
                     => ! [J] :
                          ( m1_subset_1(J,D)
                         => ( F = k4_mcart_1(G,H,I,J)
                           => E = I ) ) ) ) )
         => ( A = k1_xboole_0
            | B = k1_xboole_0
            | C = k1_xboole_0
            | D = k1_xboole_0
            | E = k10_mcart_1(A,B,C,D,F) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t81_mcart_1)).

tff(f_60,axiom,(
    ! [A,B,C,D] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & C != k1_xboole_0
        & D != k1_xboole_0
        & ? [E] :
            ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
            & ! [F] :
                ( m1_subset_1(F,A)
               => ! [G] :
                    ( m1_subset_1(G,B)
                   => ! [H] :
                        ( m1_subset_1(H,C)
                       => ! [I] :
                            ( m1_subset_1(I,D)
                           => E != k4_mcart_1(F,G,H,I) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l68_mcart_1)).

tff(f_87,axiom,(
    ! [A,B,C,D,E] :
      ( m1_subset_1(E,k4_zfmisc_1(A,B,C,D))
     => ~ ( A != k1_xboole_0
          & B != k1_xboole_0
          & C != k1_xboole_0
          & D != k1_xboole_0
          & ? [F,G,H,I] :
              ( E = k4_mcart_1(F,G,H,I)
              & ~ ( k8_mcart_1(A,B,C,D,E) = F
                  & k9_mcart_1(A,B,C,D,E) = G
                  & k10_mcart_1(A,B,C,D,E) = H
                  & k11_mcart_1(A,B,C,D,E) = I ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t78_mcart_1)).

tff(c_32,plain,(
    k1_xboole_0 != '#skF_5' ),
    inference(cnfTransformation,[status(thm)],[f_116])).

tff(c_30,plain,(
    k1_xboole_0 != '#skF_6' ),
    inference(cnfTransformation,[status(thm)],[f_116])).

tff(c_28,plain,(
    k1_xboole_0 != '#skF_7' ),
    inference(cnfTransformation,[status(thm)],[f_116])).

tff(c_26,plain,(
    k1_xboole_0 != '#skF_8' ),
    inference(cnfTransformation,[status(thm)],[f_116])).

tff(c_24,plain,(
    k10_mcart_1('#skF_5','#skF_6','#skF_7','#skF_8','#skF_10') != '#skF_9' ),
    inference(cnfTransformation,[status(thm)],[f_116])).

tff(c_36,plain,(
    m1_subset_1('#skF_10',k4_zfmisc_1('#skF_5','#skF_6','#skF_7','#skF_8')) ),
    inference(cnfTransformation,[status(thm)],[f_116])).

tff(c_14,plain,(
    ! [D_11,A_8,E_43,C_10,B_9] :
      ( m1_subset_1('#skF_1'(A_8,B_9,C_10,E_43,D_11),A_8)
      | ~ m1_subset_1(E_43,k4_zfmisc_1(A_8,B_9,C_10,D_11))
      | k1_xboole_0 = D_11
      | k1_xboole_0 = C_10
      | k1_xboole_0 = B_9
      | k1_xboole_0 = A_8 ) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_10,plain,(
    ! [D_11,A_8,E_43,C_10,B_9] :
      ( m1_subset_1('#skF_3'(A_8,B_9,C_10,E_43,D_11),C_10)
      | ~ m1_subset_1(E_43,k4_zfmisc_1(A_8,B_9,C_10,D_11))
      | k1_xboole_0 = D_11
      | k1_xboole_0 = C_10
      | k1_xboole_0 = B_9
      | k1_xboole_0 = A_8 ) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_8,plain,(
    ! [D_11,A_8,E_43,C_10,B_9] :
      ( m1_subset_1('#skF_4'(A_8,B_9,C_10,E_43,D_11),D_11)
      | ~ m1_subset_1(E_43,k4_zfmisc_1(A_8,B_9,C_10,D_11))
      | k1_xboole_0 = D_11
      | k1_xboole_0 = C_10
      | k1_xboole_0 = B_9
      | k1_xboole_0 = A_8 ) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_12,plain,(
    ! [D_11,A_8,E_43,C_10,B_9] :
      ( m1_subset_1('#skF_2'(A_8,B_9,C_10,E_43,D_11),B_9)
      | ~ m1_subset_1(E_43,k4_zfmisc_1(A_8,B_9,C_10,D_11))
      | k1_xboole_0 = D_11
      | k1_xboole_0 = C_10
      | k1_xboole_0 = B_9
      | k1_xboole_0 = A_8 ) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_189,plain,(
    ! [E_199,C_198,D_200,B_197,A_196] :
      ( k4_mcart_1('#skF_1'(A_196,B_197,C_198,E_199,D_200),'#skF_2'(A_196,B_197,C_198,E_199,D_200),'#skF_3'(A_196,B_197,C_198,E_199,D_200),'#skF_4'(A_196,B_197,C_198,E_199,D_200)) = E_199
      | ~ m1_subset_1(E_199,k4_zfmisc_1(A_196,B_197,C_198,D_200))
      | k1_xboole_0 = D_200
      | k1_xboole_0 = C_198
      | k1_xboole_0 = B_197
      | k1_xboole_0 = A_196 ) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_34,plain,(
    ! [I_110,G_98,H_106,J_112] :
      ( I_110 = '#skF_9'
      | k4_mcart_1(G_98,H_106,I_110,J_112) != '#skF_10'
      | ~ m1_subset_1(J_112,'#skF_8')
      | ~ m1_subset_1(I_110,'#skF_7')
      | ~ m1_subset_1(H_106,'#skF_6')
      | ~ m1_subset_1(G_98,'#skF_5') ) ),
    inference(cnfTransformation,[status(thm)],[f_116])).

tff(c_273,plain,(
    ! [B_248,E_249,D_251,C_250,A_247] :
      ( '#skF_3'(A_247,B_248,C_250,E_249,D_251) = '#skF_9'
      | E_249 != '#skF_10'
      | ~ m1_subset_1('#skF_4'(A_247,B_248,C_250,E_249,D_251),'#skF_8')
      | ~ m1_subset_1('#skF_3'(A_247,B_248,C_250,E_249,D_251),'#skF_7')
      | ~ m1_subset_1('#skF_2'(A_247,B_248,C_250,E_249,D_251),'#skF_6')
      | ~ m1_subset_1('#skF_1'(A_247,B_248,C_250,E_249,D_251),'#skF_5')
      | ~ m1_subset_1(E_249,k4_zfmisc_1(A_247,B_248,C_250,D_251))
      | k1_xboole_0 = D_251
      | k1_xboole_0 = C_250
      | k1_xboole_0 = B_248
      | k1_xboole_0 = A_247 ) ),
    inference(superposition,[status(thm),theory(equality)],[c_189,c_34])).

tff(c_277,plain,(
    ! [A_8,C_10,E_43,D_11] :
      ( '#skF_3'(A_8,'#skF_6',C_10,E_43,D_11) = '#skF_9'
      | E_43 != '#skF_10'
      | ~ m1_subset_1('#skF_4'(A_8,'#skF_6',C_10,E_43,D_11),'#skF_8')
      | ~ m1_subset_1('#skF_3'(A_8,'#skF_6',C_10,E_43,D_11),'#skF_7')
      | ~ m1_subset_1('#skF_1'(A_8,'#skF_6',C_10,E_43,D_11),'#skF_5')
      | ~ m1_subset_1(E_43,k4_zfmisc_1(A_8,'#skF_6',C_10,D_11))
      | k1_xboole_0 = D_11
      | k1_xboole_0 = C_10
      | k1_xboole_0 = '#skF_6'
      | k1_xboole_0 = A_8 ) ),
    inference(resolution,[status(thm)],[c_12,c_273])).

tff(c_318,plain,(
    ! [A_282,C_283,E_284,D_285] :
      ( '#skF_3'(A_282,'#skF_6',C_283,E_284,D_285) = '#skF_9'
      | E_284 != '#skF_10'
      | ~ m1_subset_1('#skF_4'(A_282,'#skF_6',C_283,E_284,D_285),'#skF_8')
      | ~ m1_subset_1('#skF_3'(A_282,'#skF_6',C_283,E_284,D_285),'#skF_7')
      | ~ m1_subset_1('#skF_1'(A_282,'#skF_6',C_283,E_284,D_285),'#skF_5')
      | ~ m1_subset_1(E_284,k4_zfmisc_1(A_282,'#skF_6',C_283,D_285))
      | k1_xboole_0 = D_285
      | k1_xboole_0 = C_283
      | k1_xboole_0 = A_282 ) ),
    inference(negUnitSimplification,[status(thm)],[c_30,c_30,c_277])).

tff(c_322,plain,(
    ! [A_8,C_10,E_43] :
      ( '#skF_3'(A_8,'#skF_6',C_10,E_43,'#skF_8') = '#skF_9'
      | E_43 != '#skF_10'
      | ~ m1_subset_1('#skF_3'(A_8,'#skF_6',C_10,E_43,'#skF_8'),'#skF_7')
      | ~ m1_subset_1('#skF_1'(A_8,'#skF_6',C_10,E_43,'#skF_8'),'#skF_5')
      | ~ m1_subset_1(E_43,k4_zfmisc_1(A_8,'#skF_6',C_10,'#skF_8'))
      | k1_xboole_0 = '#skF_8'
      | k1_xboole_0 = C_10
      | k1_xboole_0 = '#skF_6'
      | k1_xboole_0 = A_8 ) ),
    inference(resolution,[status(thm)],[c_8,c_318])).

tff(c_327,plain,(
    ! [A_286,C_287,E_288] :
      ( '#skF_3'(A_286,'#skF_6',C_287,E_288,'#skF_8') = '#skF_9'
      | E_288 != '#skF_10'
      | ~ m1_subset_1('#skF_3'(A_286,'#skF_6',C_287,E_288,'#skF_8'),'#skF_7')
      | ~ m1_subset_1('#skF_1'(A_286,'#skF_6',C_287,E_288,'#skF_8'),'#skF_5')
      | ~ m1_subset_1(E_288,k4_zfmisc_1(A_286,'#skF_6',C_287,'#skF_8'))
      | k1_xboole_0 = C_287
      | k1_xboole_0 = A_286 ) ),
    inference(negUnitSimplification,[status(thm)],[c_30,c_26,c_26,c_322])).

tff(c_331,plain,(
    ! [A_8,E_43] :
      ( '#skF_3'(A_8,'#skF_6','#skF_7',E_43,'#skF_8') = '#skF_9'
      | E_43 != '#skF_10'
      | ~ m1_subset_1('#skF_1'(A_8,'#skF_6','#skF_7',E_43,'#skF_8'),'#skF_5')
      | ~ m1_subset_1(E_43,k4_zfmisc_1(A_8,'#skF_6','#skF_7','#skF_8'))
      | k1_xboole_0 = '#skF_8'
      | k1_xboole_0 = '#skF_7'
      | k1_xboole_0 = '#skF_6'
      | k1_xboole_0 = A_8 ) ),
    inference(resolution,[status(thm)],[c_10,c_327])).

tff(c_336,plain,(
    ! [A_289,E_290] :
      ( '#skF_3'(A_289,'#skF_6','#skF_7',E_290,'#skF_8') = '#skF_9'
      | E_290 != '#skF_10'
      | ~ m1_subset_1('#skF_1'(A_289,'#skF_6','#skF_7',E_290,'#skF_8'),'#skF_5')
      | ~ m1_subset_1(E_290,k4_zfmisc_1(A_289,'#skF_6','#skF_7','#skF_8'))
      | k1_xboole_0 = A_289 ) ),
    inference(negUnitSimplification,[status(thm)],[c_30,c_28,c_26,c_28,c_331])).

tff(c_340,plain,(
    ! [E_43] :
      ( '#skF_3'('#skF_5','#skF_6','#skF_7',E_43,'#skF_8') = '#skF_9'
      | E_43 != '#skF_10'
      | ~ m1_subset_1(E_43,k4_zfmisc_1('#skF_5','#skF_6','#skF_7','#skF_8'))
      | k1_xboole_0 = '#skF_8'
      | k1_xboole_0 = '#skF_7'
      | k1_xboole_0 = '#skF_6'
      | k1_xboole_0 = '#skF_5' ) ),
    inference(resolution,[status(thm)],[c_14,c_336])).

tff(c_345,plain,(
    ! [E_291] :
      ( '#skF_3'('#skF_5','#skF_6','#skF_7',E_291,'#skF_8') = '#skF_9'
      | E_291 != '#skF_10'
      | ~ m1_subset_1(E_291,k4_zfmisc_1('#skF_5','#skF_6','#skF_7','#skF_8')) ) ),
    inference(negUnitSimplification,[status(thm)],[c_32,c_30,c_28,c_26,c_32,c_340])).

tff(c_369,plain,(
    '#skF_3'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8') = '#skF_9' ),
    inference(resolution,[status(thm)],[c_36,c_345])).

tff(c_6,plain,(
    ! [D_11,A_8,E_43,C_10,B_9] :
      ( k4_mcart_1('#skF_1'(A_8,B_9,C_10,E_43,D_11),'#skF_2'(A_8,B_9,C_10,E_43,D_11),'#skF_3'(A_8,B_9,C_10,E_43,D_11),'#skF_4'(A_8,B_9,C_10,E_43,D_11)) = E_43
      | ~ m1_subset_1(E_43,k4_zfmisc_1(A_8,B_9,C_10,D_11))
      | k1_xboole_0 = D_11
      | k1_xboole_0 = C_10
      | k1_xboole_0 = B_9
      | k1_xboole_0 = A_8 ) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_376,plain,
    ( k4_mcart_1('#skF_1'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8'),'#skF_2'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8'),'#skF_9','#skF_4'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8')) = '#skF_10'
    | ~ m1_subset_1('#skF_10',k4_zfmisc_1('#skF_5','#skF_6','#skF_7','#skF_8'))
    | k1_xboole_0 = '#skF_8'
    | k1_xboole_0 = '#skF_7'
    | k1_xboole_0 = '#skF_6'
    | k1_xboole_0 = '#skF_5' ),
    inference(superposition,[status(thm),theory(equality)],[c_369,c_6])).

tff(c_387,plain,
    ( k4_mcart_1('#skF_1'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8'),'#skF_2'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8'),'#skF_9','#skF_4'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8')) = '#skF_10'
    | k1_xboole_0 = '#skF_8'
    | k1_xboole_0 = '#skF_7'
    | k1_xboole_0 = '#skF_6'
    | k1_xboole_0 = '#skF_5' ),
    inference(demodulation,[status(thm),theory(equality)],[c_36,c_376])).

tff(c_388,plain,(
    k4_mcart_1('#skF_1'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8'),'#skF_2'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8'),'#skF_9','#skF_4'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8')) = '#skF_10' ),
    inference(negUnitSimplification,[status(thm)],[c_32,c_30,c_28,c_26,c_387])).

tff(c_18,plain,(
    ! [F_79,D_73,G_80,A_70,I_82,C_72,H_81,B_71] :
      ( k10_mcart_1(A_70,B_71,C_72,D_73,k4_mcart_1(F_79,G_80,H_81,I_82)) = H_81
      | k1_xboole_0 = D_73
      | k1_xboole_0 = C_72
      | k1_xboole_0 = B_71
      | k1_xboole_0 = A_70
      | ~ m1_subset_1(k4_mcart_1(F_79,G_80,H_81,I_82),k4_zfmisc_1(A_70,B_71,C_72,D_73)) ) ),
    inference(cnfTransformation,[status(thm)],[f_87])).

tff(c_448,plain,(
    ! [A_70,B_71,C_72,D_73] :
      ( k10_mcart_1(A_70,B_71,C_72,D_73,k4_mcart_1('#skF_1'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8'),'#skF_2'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8'),'#skF_9','#skF_4'('#skF_5','#skF_6','#skF_7','#skF_10','#skF_8'))) = '#skF_9'
      | k1_xboole_0 = D_73
      | k1_xboole_0 = C_72
      | k1_xboole_0 = B_71
      | k1_xboole_0 = A_70
      | ~ m1_subset_1('#skF_10',k4_zfmisc_1(A_70,B_71,C_72,D_73)) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_388,c_18])).

tff(c_473,plain,(
    ! [A_301,B_302,C_303,D_304] :
      ( k10_mcart_1(A_301,B_302,C_303,D_304,'#skF_10') = '#skF_9'
      | k1_xboole_0 = D_304
      | k1_xboole_0 = C_303
      | k1_xboole_0 = B_302
      | k1_xboole_0 = A_301
      | ~ m1_subset_1('#skF_10',k4_zfmisc_1(A_301,B_302,C_303,D_304)) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_388,c_448])).

tff(c_482,plain,
    ( k10_mcart_1('#skF_5','#skF_6','#skF_7','#skF_8','#skF_10') = '#skF_9'
    | k1_xboole_0 = '#skF_8'
    | k1_xboole_0 = '#skF_7'
    | k1_xboole_0 = '#skF_6'
    | k1_xboole_0 = '#skF_5' ),
    inference(resolution,[status(thm)],[c_36,c_473])).

tff(c_486,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_32,c_30,c_28,c_26,c_24,c_482])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 19:35:04 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.78/1.53  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.87/1.53  
% 2.87/1.53  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.87/1.53  %$ m1_subset_1 > k9_mcart_1 > k8_mcart_1 > k11_mcart_1 > k10_mcart_1 > k4_zfmisc_1 > k4_mcart_1 > k3_zfmisc_1 > k2_zfmisc_1 > #nlpp > k1_xboole_0 > #skF_2 > #skF_4 > #skF_7 > #skF_10 > #skF_5 > #skF_6 > #skF_9 > #skF_3 > #skF_1 > #skF_8
% 2.87/1.53  
% 2.87/1.53  %Foreground sorts:
% 2.87/1.53  
% 2.87/1.53  
% 2.87/1.53  %Background operators:
% 2.87/1.53  
% 2.87/1.53  
% 2.87/1.53  %Foreground operators:
% 2.87/1.53  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.87/1.53  tff('#skF_2', type, '#skF_2': ($i * $i * $i * $i * $i) > $i).
% 2.87/1.53  tff(k10_mcart_1, type, k10_mcart_1: ($i * $i * $i * $i * $i) > $i).
% 2.87/1.53  tff(k1_xboole_0, type, k1_xboole_0: $i).
% 2.87/1.53  tff('#skF_4', type, '#skF_4': ($i * $i * $i * $i * $i) > $i).
% 2.87/1.53  tff(k4_zfmisc_1, type, k4_zfmisc_1: ($i * $i * $i * $i) > $i).
% 2.87/1.53  tff('#skF_7', type, '#skF_7': $i).
% 2.87/1.53  tff('#skF_10', type, '#skF_10': $i).
% 2.87/1.53  tff('#skF_5', type, '#skF_5': $i).
% 2.87/1.53  tff(k11_mcart_1, type, k11_mcart_1: ($i * $i * $i * $i * $i) > $i).
% 2.87/1.53  tff('#skF_6', type, '#skF_6': $i).
% 2.87/1.53  tff('#skF_9', type, '#skF_9': $i).
% 2.87/1.53  tff(k3_zfmisc_1, type, k3_zfmisc_1: ($i * $i * $i) > $i).
% 2.87/1.53  tff('#skF_3', type, '#skF_3': ($i * $i * $i * $i * $i) > $i).
% 2.87/1.53  tff('#skF_1', type, '#skF_1': ($i * $i * $i * $i * $i) > $i).
% 2.87/1.53  tff('#skF_8', type, '#skF_8': $i).
% 2.87/1.53  tff(k8_mcart_1, type, k8_mcart_1: ($i * $i * $i * $i * $i) > $i).
% 2.87/1.53  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.87/1.53  tff(k2_zfmisc_1, type, k2_zfmisc_1: ($i * $i) > $i).
% 2.87/1.53  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.87/1.53  tff(k9_mcart_1, type, k9_mcart_1: ($i * $i * $i * $i * $i) > $i).
% 2.87/1.53  tff(k4_mcart_1, type, k4_mcart_1: ($i * $i * $i * $i) > $i).
% 2.87/1.53  tff(m1_subset_1, type, m1_subset_1: ($i * $i) > $o).
% 2.87/1.53  
% 2.87/1.55  tff(f_116, negated_conjecture, ~(![A, B, C, D, E, F]: (m1_subset_1(F, k4_zfmisc_1(A, B, C, D)) => ((![G]: (m1_subset_1(G, A) => (![H]: (m1_subset_1(H, B) => (![I]: (m1_subset_1(I, C) => (![J]: (m1_subset_1(J, D) => ((F = k4_mcart_1(G, H, I, J)) => (E = I)))))))))) => (((((A = k1_xboole_0) | (B = k1_xboole_0)) | (C = k1_xboole_0)) | (D = k1_xboole_0)) | (E = k10_mcart_1(A, B, C, D, F)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t81_mcart_1)).
% 2.87/1.55  tff(f_60, axiom, (![A, B, C, D]: ~((((~(A = k1_xboole_0) & ~(B = k1_xboole_0)) & ~(C = k1_xboole_0)) & ~(D = k1_xboole_0)) & (?[E]: (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) & (![F]: (m1_subset_1(F, A) => (![G]: (m1_subset_1(G, B) => (![H]: (m1_subset_1(H, C) => (![I]: (m1_subset_1(I, D) => ~(E = k4_mcart_1(F, G, H, I)))))))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l68_mcart_1)).
% 2.87/1.55  tff(f_87, axiom, (![A, B, C, D, E]: (m1_subset_1(E, k4_zfmisc_1(A, B, C, D)) => ~((((~(A = k1_xboole_0) & ~(B = k1_xboole_0)) & ~(C = k1_xboole_0)) & ~(D = k1_xboole_0)) & (?[F, G, H, I]: ((E = k4_mcart_1(F, G, H, I)) & ~((((k8_mcart_1(A, B, C, D, E) = F) & (k9_mcart_1(A, B, C, D, E) = G)) & (k10_mcart_1(A, B, C, D, E) = H)) & (k11_mcart_1(A, B, C, D, E) = I))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t78_mcart_1)).
% 2.87/1.55  tff(c_32, plain, (k1_xboole_0!='#skF_5'), inference(cnfTransformation, [status(thm)], [f_116])).
% 2.87/1.55  tff(c_30, plain, (k1_xboole_0!='#skF_6'), inference(cnfTransformation, [status(thm)], [f_116])).
% 2.87/1.55  tff(c_28, plain, (k1_xboole_0!='#skF_7'), inference(cnfTransformation, [status(thm)], [f_116])).
% 2.87/1.55  tff(c_26, plain, (k1_xboole_0!='#skF_8'), inference(cnfTransformation, [status(thm)], [f_116])).
% 2.87/1.55  tff(c_24, plain, (k10_mcart_1('#skF_5', '#skF_6', '#skF_7', '#skF_8', '#skF_10')!='#skF_9'), inference(cnfTransformation, [status(thm)], [f_116])).
% 2.87/1.55  tff(c_36, plain, (m1_subset_1('#skF_10', k4_zfmisc_1('#skF_5', '#skF_6', '#skF_7', '#skF_8'))), inference(cnfTransformation, [status(thm)], [f_116])).
% 2.87/1.55  tff(c_14, plain, (![D_11, A_8, E_43, C_10, B_9]: (m1_subset_1('#skF_1'(A_8, B_9, C_10, E_43, D_11), A_8) | ~m1_subset_1(E_43, k4_zfmisc_1(A_8, B_9, C_10, D_11)) | k1_xboole_0=D_11 | k1_xboole_0=C_10 | k1_xboole_0=B_9 | k1_xboole_0=A_8)), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.87/1.55  tff(c_10, plain, (![D_11, A_8, E_43, C_10, B_9]: (m1_subset_1('#skF_3'(A_8, B_9, C_10, E_43, D_11), C_10) | ~m1_subset_1(E_43, k4_zfmisc_1(A_8, B_9, C_10, D_11)) | k1_xboole_0=D_11 | k1_xboole_0=C_10 | k1_xboole_0=B_9 | k1_xboole_0=A_8)), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.87/1.55  tff(c_8, plain, (![D_11, A_8, E_43, C_10, B_9]: (m1_subset_1('#skF_4'(A_8, B_9, C_10, E_43, D_11), D_11) | ~m1_subset_1(E_43, k4_zfmisc_1(A_8, B_9, C_10, D_11)) | k1_xboole_0=D_11 | k1_xboole_0=C_10 | k1_xboole_0=B_9 | k1_xboole_0=A_8)), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.87/1.55  tff(c_12, plain, (![D_11, A_8, E_43, C_10, B_9]: (m1_subset_1('#skF_2'(A_8, B_9, C_10, E_43, D_11), B_9) | ~m1_subset_1(E_43, k4_zfmisc_1(A_8, B_9, C_10, D_11)) | k1_xboole_0=D_11 | k1_xboole_0=C_10 | k1_xboole_0=B_9 | k1_xboole_0=A_8)), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.87/1.55  tff(c_189, plain, (![E_199, C_198, D_200, B_197, A_196]: (k4_mcart_1('#skF_1'(A_196, B_197, C_198, E_199, D_200), '#skF_2'(A_196, B_197, C_198, E_199, D_200), '#skF_3'(A_196, B_197, C_198, E_199, D_200), '#skF_4'(A_196, B_197, C_198, E_199, D_200))=E_199 | ~m1_subset_1(E_199, k4_zfmisc_1(A_196, B_197, C_198, D_200)) | k1_xboole_0=D_200 | k1_xboole_0=C_198 | k1_xboole_0=B_197 | k1_xboole_0=A_196)), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.87/1.55  tff(c_34, plain, (![I_110, G_98, H_106, J_112]: (I_110='#skF_9' | k4_mcart_1(G_98, H_106, I_110, J_112)!='#skF_10' | ~m1_subset_1(J_112, '#skF_8') | ~m1_subset_1(I_110, '#skF_7') | ~m1_subset_1(H_106, '#skF_6') | ~m1_subset_1(G_98, '#skF_5'))), inference(cnfTransformation, [status(thm)], [f_116])).
% 2.87/1.55  tff(c_273, plain, (![B_248, E_249, D_251, C_250, A_247]: ('#skF_3'(A_247, B_248, C_250, E_249, D_251)='#skF_9' | E_249!='#skF_10' | ~m1_subset_1('#skF_4'(A_247, B_248, C_250, E_249, D_251), '#skF_8') | ~m1_subset_1('#skF_3'(A_247, B_248, C_250, E_249, D_251), '#skF_7') | ~m1_subset_1('#skF_2'(A_247, B_248, C_250, E_249, D_251), '#skF_6') | ~m1_subset_1('#skF_1'(A_247, B_248, C_250, E_249, D_251), '#skF_5') | ~m1_subset_1(E_249, k4_zfmisc_1(A_247, B_248, C_250, D_251)) | k1_xboole_0=D_251 | k1_xboole_0=C_250 | k1_xboole_0=B_248 | k1_xboole_0=A_247)), inference(superposition, [status(thm), theory('equality')], [c_189, c_34])).
% 2.87/1.55  tff(c_277, plain, (![A_8, C_10, E_43, D_11]: ('#skF_3'(A_8, '#skF_6', C_10, E_43, D_11)='#skF_9' | E_43!='#skF_10' | ~m1_subset_1('#skF_4'(A_8, '#skF_6', C_10, E_43, D_11), '#skF_8') | ~m1_subset_1('#skF_3'(A_8, '#skF_6', C_10, E_43, D_11), '#skF_7') | ~m1_subset_1('#skF_1'(A_8, '#skF_6', C_10, E_43, D_11), '#skF_5') | ~m1_subset_1(E_43, k4_zfmisc_1(A_8, '#skF_6', C_10, D_11)) | k1_xboole_0=D_11 | k1_xboole_0=C_10 | k1_xboole_0='#skF_6' | k1_xboole_0=A_8)), inference(resolution, [status(thm)], [c_12, c_273])).
% 2.87/1.55  tff(c_318, plain, (![A_282, C_283, E_284, D_285]: ('#skF_3'(A_282, '#skF_6', C_283, E_284, D_285)='#skF_9' | E_284!='#skF_10' | ~m1_subset_1('#skF_4'(A_282, '#skF_6', C_283, E_284, D_285), '#skF_8') | ~m1_subset_1('#skF_3'(A_282, '#skF_6', C_283, E_284, D_285), '#skF_7') | ~m1_subset_1('#skF_1'(A_282, '#skF_6', C_283, E_284, D_285), '#skF_5') | ~m1_subset_1(E_284, k4_zfmisc_1(A_282, '#skF_6', C_283, D_285)) | k1_xboole_0=D_285 | k1_xboole_0=C_283 | k1_xboole_0=A_282)), inference(negUnitSimplification, [status(thm)], [c_30, c_30, c_277])).
% 2.87/1.55  tff(c_322, plain, (![A_8, C_10, E_43]: ('#skF_3'(A_8, '#skF_6', C_10, E_43, '#skF_8')='#skF_9' | E_43!='#skF_10' | ~m1_subset_1('#skF_3'(A_8, '#skF_6', C_10, E_43, '#skF_8'), '#skF_7') | ~m1_subset_1('#skF_1'(A_8, '#skF_6', C_10, E_43, '#skF_8'), '#skF_5') | ~m1_subset_1(E_43, k4_zfmisc_1(A_8, '#skF_6', C_10, '#skF_8')) | k1_xboole_0='#skF_8' | k1_xboole_0=C_10 | k1_xboole_0='#skF_6' | k1_xboole_0=A_8)), inference(resolution, [status(thm)], [c_8, c_318])).
% 2.87/1.55  tff(c_327, plain, (![A_286, C_287, E_288]: ('#skF_3'(A_286, '#skF_6', C_287, E_288, '#skF_8')='#skF_9' | E_288!='#skF_10' | ~m1_subset_1('#skF_3'(A_286, '#skF_6', C_287, E_288, '#skF_8'), '#skF_7') | ~m1_subset_1('#skF_1'(A_286, '#skF_6', C_287, E_288, '#skF_8'), '#skF_5') | ~m1_subset_1(E_288, k4_zfmisc_1(A_286, '#skF_6', C_287, '#skF_8')) | k1_xboole_0=C_287 | k1_xboole_0=A_286)), inference(negUnitSimplification, [status(thm)], [c_30, c_26, c_26, c_322])).
% 2.87/1.55  tff(c_331, plain, (![A_8, E_43]: ('#skF_3'(A_8, '#skF_6', '#skF_7', E_43, '#skF_8')='#skF_9' | E_43!='#skF_10' | ~m1_subset_1('#skF_1'(A_8, '#skF_6', '#skF_7', E_43, '#skF_8'), '#skF_5') | ~m1_subset_1(E_43, k4_zfmisc_1(A_8, '#skF_6', '#skF_7', '#skF_8')) | k1_xboole_0='#skF_8' | k1_xboole_0='#skF_7' | k1_xboole_0='#skF_6' | k1_xboole_0=A_8)), inference(resolution, [status(thm)], [c_10, c_327])).
% 2.87/1.55  tff(c_336, plain, (![A_289, E_290]: ('#skF_3'(A_289, '#skF_6', '#skF_7', E_290, '#skF_8')='#skF_9' | E_290!='#skF_10' | ~m1_subset_1('#skF_1'(A_289, '#skF_6', '#skF_7', E_290, '#skF_8'), '#skF_5') | ~m1_subset_1(E_290, k4_zfmisc_1(A_289, '#skF_6', '#skF_7', '#skF_8')) | k1_xboole_0=A_289)), inference(negUnitSimplification, [status(thm)], [c_30, c_28, c_26, c_28, c_331])).
% 2.87/1.55  tff(c_340, plain, (![E_43]: ('#skF_3'('#skF_5', '#skF_6', '#skF_7', E_43, '#skF_8')='#skF_9' | E_43!='#skF_10' | ~m1_subset_1(E_43, k4_zfmisc_1('#skF_5', '#skF_6', '#skF_7', '#skF_8')) | k1_xboole_0='#skF_8' | k1_xboole_0='#skF_7' | k1_xboole_0='#skF_6' | k1_xboole_0='#skF_5')), inference(resolution, [status(thm)], [c_14, c_336])).
% 2.87/1.55  tff(c_345, plain, (![E_291]: ('#skF_3'('#skF_5', '#skF_6', '#skF_7', E_291, '#skF_8')='#skF_9' | E_291!='#skF_10' | ~m1_subset_1(E_291, k4_zfmisc_1('#skF_5', '#skF_6', '#skF_7', '#skF_8')))), inference(negUnitSimplification, [status(thm)], [c_32, c_30, c_28, c_26, c_32, c_340])).
% 2.87/1.55  tff(c_369, plain, ('#skF_3'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8')='#skF_9'), inference(resolution, [status(thm)], [c_36, c_345])).
% 2.87/1.55  tff(c_6, plain, (![D_11, A_8, E_43, C_10, B_9]: (k4_mcart_1('#skF_1'(A_8, B_9, C_10, E_43, D_11), '#skF_2'(A_8, B_9, C_10, E_43, D_11), '#skF_3'(A_8, B_9, C_10, E_43, D_11), '#skF_4'(A_8, B_9, C_10, E_43, D_11))=E_43 | ~m1_subset_1(E_43, k4_zfmisc_1(A_8, B_9, C_10, D_11)) | k1_xboole_0=D_11 | k1_xboole_0=C_10 | k1_xboole_0=B_9 | k1_xboole_0=A_8)), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.87/1.55  tff(c_376, plain, (k4_mcart_1('#skF_1'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'), '#skF_2'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'), '#skF_9', '#skF_4'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'))='#skF_10' | ~m1_subset_1('#skF_10', k4_zfmisc_1('#skF_5', '#skF_6', '#skF_7', '#skF_8')) | k1_xboole_0='#skF_8' | k1_xboole_0='#skF_7' | k1_xboole_0='#skF_6' | k1_xboole_0='#skF_5'), inference(superposition, [status(thm), theory('equality')], [c_369, c_6])).
% 2.87/1.55  tff(c_387, plain, (k4_mcart_1('#skF_1'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'), '#skF_2'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'), '#skF_9', '#skF_4'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'))='#skF_10' | k1_xboole_0='#skF_8' | k1_xboole_0='#skF_7' | k1_xboole_0='#skF_6' | k1_xboole_0='#skF_5'), inference(demodulation, [status(thm), theory('equality')], [c_36, c_376])).
% 2.87/1.55  tff(c_388, plain, (k4_mcart_1('#skF_1'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'), '#skF_2'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'), '#skF_9', '#skF_4'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'))='#skF_10'), inference(negUnitSimplification, [status(thm)], [c_32, c_30, c_28, c_26, c_387])).
% 2.87/1.55  tff(c_18, plain, (![F_79, D_73, G_80, A_70, I_82, C_72, H_81, B_71]: (k10_mcart_1(A_70, B_71, C_72, D_73, k4_mcart_1(F_79, G_80, H_81, I_82))=H_81 | k1_xboole_0=D_73 | k1_xboole_0=C_72 | k1_xboole_0=B_71 | k1_xboole_0=A_70 | ~m1_subset_1(k4_mcart_1(F_79, G_80, H_81, I_82), k4_zfmisc_1(A_70, B_71, C_72, D_73)))), inference(cnfTransformation, [status(thm)], [f_87])).
% 2.87/1.55  tff(c_448, plain, (![A_70, B_71, C_72, D_73]: (k10_mcart_1(A_70, B_71, C_72, D_73, k4_mcart_1('#skF_1'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'), '#skF_2'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8'), '#skF_9', '#skF_4'('#skF_5', '#skF_6', '#skF_7', '#skF_10', '#skF_8')))='#skF_9' | k1_xboole_0=D_73 | k1_xboole_0=C_72 | k1_xboole_0=B_71 | k1_xboole_0=A_70 | ~m1_subset_1('#skF_10', k4_zfmisc_1(A_70, B_71, C_72, D_73)))), inference(superposition, [status(thm), theory('equality')], [c_388, c_18])).
% 2.87/1.55  tff(c_473, plain, (![A_301, B_302, C_303, D_304]: (k10_mcart_1(A_301, B_302, C_303, D_304, '#skF_10')='#skF_9' | k1_xboole_0=D_304 | k1_xboole_0=C_303 | k1_xboole_0=B_302 | k1_xboole_0=A_301 | ~m1_subset_1('#skF_10', k4_zfmisc_1(A_301, B_302, C_303, D_304)))), inference(demodulation, [status(thm), theory('equality')], [c_388, c_448])).
% 2.87/1.55  tff(c_482, plain, (k10_mcart_1('#skF_5', '#skF_6', '#skF_7', '#skF_8', '#skF_10')='#skF_9' | k1_xboole_0='#skF_8' | k1_xboole_0='#skF_7' | k1_xboole_0='#skF_6' | k1_xboole_0='#skF_5'), inference(resolution, [status(thm)], [c_36, c_473])).
% 2.87/1.55  tff(c_486, plain, $false, inference(negUnitSimplification, [status(thm)], [c_32, c_30, c_28, c_26, c_24, c_482])).
% 2.87/1.55  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.87/1.55  
% 2.87/1.55  Inference rules
% 2.87/1.55  ----------------------
% 2.87/1.55  #Ref     : 0
% 2.87/1.55  #Sup     : 101
% 2.87/1.55  #Fact    : 0
% 2.87/1.55  #Define  : 0
% 2.87/1.55  #Split   : 0
% 2.87/1.55  #Chain   : 0
% 2.87/1.55  #Close   : 0
% 2.87/1.55  
% 2.87/1.55  Ordering : KBO
% 2.87/1.55  
% 2.87/1.55  Simplification rules
% 2.87/1.55  ----------------------
% 2.87/1.55  #Subsume      : 12
% 2.87/1.55  #Demod        : 91
% 2.87/1.55  #Tautology    : 32
% 2.87/1.55  #SimpNegUnit  : 9
% 2.87/1.55  #BackRed      : 0
% 2.87/1.55  
% 2.87/1.55  #Partial instantiations: 0
% 2.87/1.55  #Strategies tried      : 1
% 2.87/1.55  
% 2.87/1.55  Timing (in seconds)
% 2.87/1.55  ----------------------
% 2.87/1.55  Preprocessing        : 0.31
% 2.87/1.55  Parsing              : 0.15
% 2.87/1.55  CNF conversion       : 0.03
% 2.87/1.55  Main loop            : 0.32
% 2.87/1.55  Inferencing          : 0.13
% 2.87/1.55  Reduction            : 0.09
% 2.87/1.55  Demodulation         : 0.07
% 2.87/1.55  BG Simplification    : 0.02
% 2.87/1.55  Subsumption          : 0.06
% 2.87/1.55  Abstraction          : 0.02
% 2.87/1.55  MUC search           : 0.00
% 2.87/1.55  Cooper               : 0.00
% 2.87/1.55  Total                : 0.67
% 2.87/1.55  Index Insertion      : 0.00
% 2.87/1.55  Index Deletion       : 0.00
% 2.87/1.55  Index Matching       : 0.00
% 2.87/1.55  BG Taut test         : 0.00
%------------------------------------------------------------------------------
