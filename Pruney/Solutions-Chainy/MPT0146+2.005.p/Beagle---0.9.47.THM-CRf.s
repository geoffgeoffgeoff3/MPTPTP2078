%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:45:55 EST 2020

% Result     : Theorem 3.00s
% Output     : CNFRefutation 3.00s
% Verified   : 
% Statistics : Number of formulae       :   51 (  54 expanded)
%              Number of leaves         :   31 (  33 expanded)
%              Depth                    :    9
%              Number of atoms          :   29 (  32 expanded)
%              Number of equality atoms :   28 (  31 expanded)
%              Maximal formula depth    :   10 (   5 average)
%              Maximal term depth       :    4 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ k6_enumset1 > k5_enumset1 > k4_enumset1 > k3_enumset1 > k2_enumset1 > k1_enumset1 > k5_xboole_0 > k4_xboole_0 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_7 > #skF_5 > #skF_6 > #skF_2 > #skF_3 > #skF_1 > #skF_8 > #skF_4

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(k1_tarski,type,(
    k1_tarski: $i > $i )).

tff(k4_xboole_0,type,(
    k4_xboole_0: ( $i * $i ) > $i )).

tff(k3_enumset1,type,(
    k3_enumset1: ( $i * $i * $i * $i * $i ) > $i )).

tff('#skF_7',type,(
    '#skF_7': $i )).

tff(k5_xboole_0,type,(
    k5_xboole_0: ( $i * $i ) > $i )).

tff(k2_enumset1,type,(
    k2_enumset1: ( $i * $i * $i * $i ) > $i )).

tff(k2_tarski,type,(
    k2_tarski: ( $i * $i ) > $i )).

tff('#skF_5',type,(
    '#skF_5': $i )).

tff('#skF_6',type,(
    '#skF_6': $i )).

tff(k1_enumset1,type,(
    k1_enumset1: ( $i * $i * $i ) > $i )).

tff('#skF_2',type,(
    '#skF_2': $i )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff('#skF_1',type,(
    '#skF_1': $i )).

tff(k4_enumset1,type,(
    k4_enumset1: ( $i * $i * $i * $i * $i * $i ) > $i )).

tff(k6_enumset1,type,(
    k6_enumset1: ( $i * $i * $i * $i * $i * $i * $i * $i ) > $i )).

tff('#skF_8',type,(
    '#skF_8': $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(k2_xboole_0,type,(
    k2_xboole_0: ( $i * $i ) > $i )).

tff(k5_enumset1,type,(
    k5_enumset1: ( $i * $i * $i * $i * $i * $i * $i ) > $i )).

tff(f_31,axiom,(
    ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k2_enumset1(A,B,C,D),k2_enumset1(E,F,G,H)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l75_enumset1)).

tff(f_43,axiom,(
    ! [A,B,C,D,E,F,G] : k5_enumset1(A,B,C,D,E,F,G) = k2_xboole_0(k1_tarski(A),k4_enumset1(B,C,D,E,F,G)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_enumset1)).

tff(f_41,axiom,(
    ! [A,B,C,D,E,F] : k4_enumset1(A,B,C,D,E,F) = k2_xboole_0(k1_tarski(A),k3_enumset1(B,C,D,E,F)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t51_enumset1)).

tff(f_39,axiom,(
    ! [A,B,C,D,E] : k3_enumset1(A,B,C,D,E) = k2_xboole_0(k1_tarski(A),k2_enumset1(B,C,D,E)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t47_enumset1)).

tff(f_33,axiom,(
    ! [A,B] : k2_tarski(A,B) = k2_xboole_0(k1_tarski(A),k1_tarski(B)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_enumset1)).

tff(f_27,axiom,(
    ! [A,B,C] : k2_xboole_0(k2_xboole_0(A,B),C) = k2_xboole_0(A,k2_xboole_0(B,C)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_xboole_1)).

tff(f_35,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k2_xboole_0(k1_tarski(A),k2_tarski(B,C)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t42_enumset1)).

tff(f_37,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_tarski(A),k1_enumset1(B,C,D)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_enumset1)).

tff(f_46,negated_conjecture,(
    ~ ! [A,B,C,D,E,F,G,H] : k6_enumset1(A,B,C,D,E,F,G,H) = k2_xboole_0(k1_tarski(A),k5_enumset1(B,C,D,E,F,G,H)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t62_enumset1)).

tff(c_6,plain,(
    ! [B_7,D_9,C_8,H_13,F_11,G_12,E_10,A_6] : k2_xboole_0(k2_enumset1(A_6,B_7,C_8,D_9),k2_enumset1(E_10,F_11,G_12,H_13)) = k6_enumset1(A_6,B_7,C_8,D_9,E_10,F_11,G_12,H_13) ),
    inference(cnfTransformation,[status(thm)],[f_31])).

tff(c_18,plain,(
    ! [D_37,A_34,F_39,B_35,G_40,C_36,E_38] : k2_xboole_0(k1_tarski(A_34),k4_enumset1(B_35,C_36,D_37,E_38,F_39,G_40)) = k5_enumset1(A_34,B_35,C_36,D_37,E_38,F_39,G_40) ),
    inference(cnfTransformation,[status(thm)],[f_43])).

tff(c_16,plain,(
    ! [C_30,E_32,D_31,B_29,F_33,A_28] : k2_xboole_0(k1_tarski(A_28),k3_enumset1(B_29,C_30,D_31,E_32,F_33)) = k4_enumset1(A_28,B_29,C_30,D_31,E_32,F_33) ),
    inference(cnfTransformation,[status(thm)],[f_41])).

tff(c_14,plain,(
    ! [A_23,B_24,D_26,C_25,E_27] : k2_xboole_0(k1_tarski(A_23),k2_enumset1(B_24,C_25,D_26,E_27)) = k3_enumset1(A_23,B_24,C_25,D_26,E_27) ),
    inference(cnfTransformation,[status(thm)],[f_39])).

tff(c_8,plain,(
    ! [A_14,B_15] : k2_xboole_0(k1_tarski(A_14),k1_tarski(B_15)) = k2_tarski(A_14,B_15) ),
    inference(cnfTransformation,[status(thm)],[f_33])).

tff(c_39,plain,(
    ! [A_45,B_46,C_47] : k2_xboole_0(k2_xboole_0(A_45,B_46),C_47) = k2_xboole_0(A_45,k2_xboole_0(B_46,C_47)) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_95,plain,(
    ! [A_60,B_61,C_62] : k2_xboole_0(k1_tarski(A_60),k2_xboole_0(k1_tarski(B_61),C_62)) = k2_xboole_0(k2_tarski(A_60,B_61),C_62) ),
    inference(superposition,[status(thm),theory(equality)],[c_8,c_39])).

tff(c_113,plain,(
    ! [A_60,A_23,B_24,D_26,C_25,E_27] : k2_xboole_0(k2_tarski(A_60,A_23),k2_enumset1(B_24,C_25,D_26,E_27)) = k2_xboole_0(k1_tarski(A_60),k3_enumset1(A_23,B_24,C_25,D_26,E_27)) ),
    inference(superposition,[status(thm),theory(equality)],[c_14,c_95])).

tff(c_480,plain,(
    ! [C_151,A_156,E_152,A_155,B_153,D_154] : k2_xboole_0(k2_tarski(A_155,A_156),k2_enumset1(B_153,C_151,D_154,E_152)) = k4_enumset1(A_155,A_156,B_153,C_151,D_154,E_152) ),
    inference(demodulation,[status(thm),theory(equality)],[c_16,c_113])).

tff(c_59,plain,(
    ! [A_48,B_49,C_50] : k2_xboole_0(k1_tarski(A_48),k2_tarski(B_49,C_50)) = k1_enumset1(A_48,B_49,C_50) ),
    inference(cnfTransformation,[status(thm)],[f_35])).

tff(c_2,plain,(
    ! [A_1,B_2,C_3] : k2_xboole_0(k2_xboole_0(A_1,B_2),C_3) = k2_xboole_0(A_1,k2_xboole_0(B_2,C_3)) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_65,plain,(
    ! [A_48,B_49,C_50,C_3] : k2_xboole_0(k1_tarski(A_48),k2_xboole_0(k2_tarski(B_49,C_50),C_3)) = k2_xboole_0(k1_enumset1(A_48,B_49,C_50),C_3) ),
    inference(superposition,[status(thm),theory(equality)],[c_59,c_2])).

tff(c_489,plain,(
    ! [C_151,A_156,E_152,A_48,A_155,B_153,D_154] : k2_xboole_0(k1_enumset1(A_48,A_155,A_156),k2_enumset1(B_153,C_151,D_154,E_152)) = k2_xboole_0(k1_tarski(A_48),k4_enumset1(A_155,A_156,B_153,C_151,D_154,E_152)) ),
    inference(superposition,[status(thm),theory(equality)],[c_480,c_65])).

tff(c_549,plain,(
    ! [C_170,A_171,E_169,A_175,A_172,D_174,B_173] : k2_xboole_0(k1_enumset1(A_171,A_172,A_175),k2_enumset1(B_173,C_170,D_174,E_169)) = k5_enumset1(A_171,A_172,A_175,B_173,C_170,D_174,E_169) ),
    inference(demodulation,[status(thm),theory(equality)],[c_18,c_489])).

tff(c_71,plain,(
    ! [A_51,B_52,C_53,D_54] : k2_xboole_0(k1_tarski(A_51),k1_enumset1(B_52,C_53,D_54)) = k2_enumset1(A_51,B_52,C_53,D_54) ),
    inference(cnfTransformation,[status(thm)],[f_37])).

tff(c_77,plain,(
    ! [B_52,C_3,C_53,D_54,A_51] : k2_xboole_0(k1_tarski(A_51),k2_xboole_0(k1_enumset1(B_52,C_53,D_54),C_3)) = k2_xboole_0(k2_enumset1(A_51,B_52,C_53,D_54),C_3) ),
    inference(superposition,[status(thm),theory(equality)],[c_71,c_2])).

tff(c_558,plain,(
    ! [C_170,A_171,E_169,A_175,A_172,A_51,D_174,B_173] : k2_xboole_0(k2_enumset1(A_51,A_171,A_172,A_175),k2_enumset1(B_173,C_170,D_174,E_169)) = k2_xboole_0(k1_tarski(A_51),k5_enumset1(A_171,A_172,A_175,B_173,C_170,D_174,E_169)) ),
    inference(superposition,[status(thm),theory(equality)],[c_549,c_77])).

tff(c_566,plain,(
    ! [C_170,A_171,E_169,A_175,A_172,A_51,D_174,B_173] : k2_xboole_0(k1_tarski(A_51),k5_enumset1(A_171,A_172,A_175,B_173,C_170,D_174,E_169)) = k6_enumset1(A_51,A_171,A_172,A_175,B_173,C_170,D_174,E_169) ),
    inference(demodulation,[status(thm),theory(equality)],[c_6,c_558])).

tff(c_20,plain,(
    k2_xboole_0(k1_tarski('#skF_1'),k5_enumset1('#skF_2','#skF_3','#skF_4','#skF_5','#skF_6','#skF_7','#skF_8')) != k6_enumset1('#skF_1','#skF_2','#skF_3','#skF_4','#skF_5','#skF_6','#skF_7','#skF_8') ),
    inference(cnfTransformation,[status(thm)],[f_46])).

tff(c_832,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_566,c_20])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n023.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 14:32:05 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.20/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 3.00/1.53  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.00/1.53  
% 3.00/1.53  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.00/1.54  %$ k6_enumset1 > k5_enumset1 > k4_enumset1 > k3_enumset1 > k2_enumset1 > k1_enumset1 > k5_xboole_0 > k4_xboole_0 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_7 > #skF_5 > #skF_6 > #skF_2 > #skF_3 > #skF_1 > #skF_8 > #skF_4
% 3.00/1.54  
% 3.00/1.54  %Foreground sorts:
% 3.00/1.54  
% 3.00/1.54  
% 3.00/1.54  %Background operators:
% 3.00/1.54  
% 3.00/1.54  
% 3.00/1.54  %Foreground operators:
% 3.00/1.54  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 3.00/1.54  tff(k1_tarski, type, k1_tarski: $i > $i).
% 3.00/1.54  tff(k4_xboole_0, type, k4_xboole_0: ($i * $i) > $i).
% 3.00/1.54  tff(k3_enumset1, type, k3_enumset1: ($i * $i * $i * $i * $i) > $i).
% 3.00/1.54  tff('#skF_7', type, '#skF_7': $i).
% 3.00/1.54  tff(k5_xboole_0, type, k5_xboole_0: ($i * $i) > $i).
% 3.00/1.54  tff(k2_enumset1, type, k2_enumset1: ($i * $i * $i * $i) > $i).
% 3.00/1.54  tff(k2_tarski, type, k2_tarski: ($i * $i) > $i).
% 3.00/1.54  tff('#skF_5', type, '#skF_5': $i).
% 3.00/1.54  tff('#skF_6', type, '#skF_6': $i).
% 3.00/1.54  tff(k1_enumset1, type, k1_enumset1: ($i * $i * $i) > $i).
% 3.00/1.54  tff('#skF_2', type, '#skF_2': $i).
% 3.00/1.54  tff('#skF_3', type, '#skF_3': $i).
% 3.00/1.54  tff('#skF_1', type, '#skF_1': $i).
% 3.00/1.54  tff(k4_enumset1, type, k4_enumset1: ($i * $i * $i * $i * $i * $i) > $i).
% 3.00/1.54  tff(k6_enumset1, type, k6_enumset1: ($i * $i * $i * $i * $i * $i * $i * $i) > $i).
% 3.00/1.54  tff('#skF_8', type, '#skF_8': $i).
% 3.00/1.54  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 3.00/1.54  tff('#skF_4', type, '#skF_4': $i).
% 3.00/1.54  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 3.00/1.54  tff(k2_xboole_0, type, k2_xboole_0: ($i * $i) > $i).
% 3.00/1.54  tff(k5_enumset1, type, k5_enumset1: ($i * $i * $i * $i * $i * $i * $i) > $i).
% 3.00/1.54  
% 3.00/1.55  tff(f_31, axiom, (![A, B, C, D, E, F, G, H]: (k6_enumset1(A, B, C, D, E, F, G, H) = k2_xboole_0(k2_enumset1(A, B, C, D), k2_enumset1(E, F, G, H)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l75_enumset1)).
% 3.00/1.55  tff(f_43, axiom, (![A, B, C, D, E, F, G]: (k5_enumset1(A, B, C, D, E, F, G) = k2_xboole_0(k1_tarski(A), k4_enumset1(B, C, D, E, F, G)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t56_enumset1)).
% 3.00/1.55  tff(f_41, axiom, (![A, B, C, D, E, F]: (k4_enumset1(A, B, C, D, E, F) = k2_xboole_0(k1_tarski(A), k3_enumset1(B, C, D, E, F)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t51_enumset1)).
% 3.00/1.55  tff(f_39, axiom, (![A, B, C, D, E]: (k3_enumset1(A, B, C, D, E) = k2_xboole_0(k1_tarski(A), k2_enumset1(B, C, D, E)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t47_enumset1)).
% 3.00/1.55  tff(f_33, axiom, (![A, B]: (k2_tarski(A, B) = k2_xboole_0(k1_tarski(A), k1_tarski(B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_enumset1)).
% 3.00/1.55  tff(f_27, axiom, (![A, B, C]: (k2_xboole_0(k2_xboole_0(A, B), C) = k2_xboole_0(A, k2_xboole_0(B, C)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_xboole_1)).
% 3.00/1.55  tff(f_35, axiom, (![A, B, C]: (k1_enumset1(A, B, C) = k2_xboole_0(k1_tarski(A), k2_tarski(B, C)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t42_enumset1)).
% 3.00/1.55  tff(f_37, axiom, (![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_xboole_0(k1_tarski(A), k1_enumset1(B, C, D)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t44_enumset1)).
% 3.00/1.55  tff(f_46, negated_conjecture, ~(![A, B, C, D, E, F, G, H]: (k6_enumset1(A, B, C, D, E, F, G, H) = k2_xboole_0(k1_tarski(A), k5_enumset1(B, C, D, E, F, G, H)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t62_enumset1)).
% 3.00/1.55  tff(c_6, plain, (![B_7, D_9, C_8, H_13, F_11, G_12, E_10, A_6]: (k2_xboole_0(k2_enumset1(A_6, B_7, C_8, D_9), k2_enumset1(E_10, F_11, G_12, H_13))=k6_enumset1(A_6, B_7, C_8, D_9, E_10, F_11, G_12, H_13))), inference(cnfTransformation, [status(thm)], [f_31])).
% 3.00/1.55  tff(c_18, plain, (![D_37, A_34, F_39, B_35, G_40, C_36, E_38]: (k2_xboole_0(k1_tarski(A_34), k4_enumset1(B_35, C_36, D_37, E_38, F_39, G_40))=k5_enumset1(A_34, B_35, C_36, D_37, E_38, F_39, G_40))), inference(cnfTransformation, [status(thm)], [f_43])).
% 3.00/1.55  tff(c_16, plain, (![C_30, E_32, D_31, B_29, F_33, A_28]: (k2_xboole_0(k1_tarski(A_28), k3_enumset1(B_29, C_30, D_31, E_32, F_33))=k4_enumset1(A_28, B_29, C_30, D_31, E_32, F_33))), inference(cnfTransformation, [status(thm)], [f_41])).
% 3.00/1.55  tff(c_14, plain, (![A_23, B_24, D_26, C_25, E_27]: (k2_xboole_0(k1_tarski(A_23), k2_enumset1(B_24, C_25, D_26, E_27))=k3_enumset1(A_23, B_24, C_25, D_26, E_27))), inference(cnfTransformation, [status(thm)], [f_39])).
% 3.00/1.55  tff(c_8, plain, (![A_14, B_15]: (k2_xboole_0(k1_tarski(A_14), k1_tarski(B_15))=k2_tarski(A_14, B_15))), inference(cnfTransformation, [status(thm)], [f_33])).
% 3.00/1.55  tff(c_39, plain, (![A_45, B_46, C_47]: (k2_xboole_0(k2_xboole_0(A_45, B_46), C_47)=k2_xboole_0(A_45, k2_xboole_0(B_46, C_47)))), inference(cnfTransformation, [status(thm)], [f_27])).
% 3.00/1.55  tff(c_95, plain, (![A_60, B_61, C_62]: (k2_xboole_0(k1_tarski(A_60), k2_xboole_0(k1_tarski(B_61), C_62))=k2_xboole_0(k2_tarski(A_60, B_61), C_62))), inference(superposition, [status(thm), theory('equality')], [c_8, c_39])).
% 3.00/1.55  tff(c_113, plain, (![A_60, A_23, B_24, D_26, C_25, E_27]: (k2_xboole_0(k2_tarski(A_60, A_23), k2_enumset1(B_24, C_25, D_26, E_27))=k2_xboole_0(k1_tarski(A_60), k3_enumset1(A_23, B_24, C_25, D_26, E_27)))), inference(superposition, [status(thm), theory('equality')], [c_14, c_95])).
% 3.00/1.55  tff(c_480, plain, (![C_151, A_156, E_152, A_155, B_153, D_154]: (k2_xboole_0(k2_tarski(A_155, A_156), k2_enumset1(B_153, C_151, D_154, E_152))=k4_enumset1(A_155, A_156, B_153, C_151, D_154, E_152))), inference(demodulation, [status(thm), theory('equality')], [c_16, c_113])).
% 3.00/1.55  tff(c_59, plain, (![A_48, B_49, C_50]: (k2_xboole_0(k1_tarski(A_48), k2_tarski(B_49, C_50))=k1_enumset1(A_48, B_49, C_50))), inference(cnfTransformation, [status(thm)], [f_35])).
% 3.00/1.55  tff(c_2, plain, (![A_1, B_2, C_3]: (k2_xboole_0(k2_xboole_0(A_1, B_2), C_3)=k2_xboole_0(A_1, k2_xboole_0(B_2, C_3)))), inference(cnfTransformation, [status(thm)], [f_27])).
% 3.00/1.55  tff(c_65, plain, (![A_48, B_49, C_50, C_3]: (k2_xboole_0(k1_tarski(A_48), k2_xboole_0(k2_tarski(B_49, C_50), C_3))=k2_xboole_0(k1_enumset1(A_48, B_49, C_50), C_3))), inference(superposition, [status(thm), theory('equality')], [c_59, c_2])).
% 3.00/1.55  tff(c_489, plain, (![C_151, A_156, E_152, A_48, A_155, B_153, D_154]: (k2_xboole_0(k1_enumset1(A_48, A_155, A_156), k2_enumset1(B_153, C_151, D_154, E_152))=k2_xboole_0(k1_tarski(A_48), k4_enumset1(A_155, A_156, B_153, C_151, D_154, E_152)))), inference(superposition, [status(thm), theory('equality')], [c_480, c_65])).
% 3.00/1.55  tff(c_549, plain, (![C_170, A_171, E_169, A_175, A_172, D_174, B_173]: (k2_xboole_0(k1_enumset1(A_171, A_172, A_175), k2_enumset1(B_173, C_170, D_174, E_169))=k5_enumset1(A_171, A_172, A_175, B_173, C_170, D_174, E_169))), inference(demodulation, [status(thm), theory('equality')], [c_18, c_489])).
% 3.00/1.55  tff(c_71, plain, (![A_51, B_52, C_53, D_54]: (k2_xboole_0(k1_tarski(A_51), k1_enumset1(B_52, C_53, D_54))=k2_enumset1(A_51, B_52, C_53, D_54))), inference(cnfTransformation, [status(thm)], [f_37])).
% 3.00/1.55  tff(c_77, plain, (![B_52, C_3, C_53, D_54, A_51]: (k2_xboole_0(k1_tarski(A_51), k2_xboole_0(k1_enumset1(B_52, C_53, D_54), C_3))=k2_xboole_0(k2_enumset1(A_51, B_52, C_53, D_54), C_3))), inference(superposition, [status(thm), theory('equality')], [c_71, c_2])).
% 3.00/1.55  tff(c_558, plain, (![C_170, A_171, E_169, A_175, A_172, A_51, D_174, B_173]: (k2_xboole_0(k2_enumset1(A_51, A_171, A_172, A_175), k2_enumset1(B_173, C_170, D_174, E_169))=k2_xboole_0(k1_tarski(A_51), k5_enumset1(A_171, A_172, A_175, B_173, C_170, D_174, E_169)))), inference(superposition, [status(thm), theory('equality')], [c_549, c_77])).
% 3.00/1.55  tff(c_566, plain, (![C_170, A_171, E_169, A_175, A_172, A_51, D_174, B_173]: (k2_xboole_0(k1_tarski(A_51), k5_enumset1(A_171, A_172, A_175, B_173, C_170, D_174, E_169))=k6_enumset1(A_51, A_171, A_172, A_175, B_173, C_170, D_174, E_169))), inference(demodulation, [status(thm), theory('equality')], [c_6, c_558])).
% 3.00/1.55  tff(c_20, plain, (k2_xboole_0(k1_tarski('#skF_1'), k5_enumset1('#skF_2', '#skF_3', '#skF_4', '#skF_5', '#skF_6', '#skF_7', '#skF_8'))!=k6_enumset1('#skF_1', '#skF_2', '#skF_3', '#skF_4', '#skF_5', '#skF_6', '#skF_7', '#skF_8')), inference(cnfTransformation, [status(thm)], [f_46])).
% 3.00/1.55  tff(c_832, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_566, c_20])).
% 3.00/1.55  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.00/1.55  
% 3.00/1.55  Inference rules
% 3.00/1.55  ----------------------
% 3.00/1.55  #Ref     : 0
% 3.00/1.55  #Sup     : 213
% 3.00/1.55  #Fact    : 0
% 3.00/1.55  #Define  : 0
% 3.00/1.55  #Split   : 0
% 3.00/1.55  #Chain   : 0
% 3.00/1.55  #Close   : 0
% 3.00/1.55  
% 3.00/1.55  Ordering : KBO
% 3.00/1.55  
% 3.00/1.55  Simplification rules
% 3.00/1.55  ----------------------
% 3.00/1.55  #Subsume      : 0
% 3.00/1.55  #Demod        : 109
% 3.00/1.55  #Tautology    : 110
% 3.00/1.55  #SimpNegUnit  : 0
% 3.00/1.55  #BackRed      : 1
% 3.00/1.55  
% 3.00/1.55  #Partial instantiations: 0
% 3.00/1.55  #Strategies tried      : 1
% 3.00/1.55  
% 3.00/1.55  Timing (in seconds)
% 3.00/1.55  ----------------------
% 3.00/1.55  Preprocessing        : 0.31
% 3.00/1.55  Parsing              : 0.17
% 3.00/1.55  CNF conversion       : 0.02
% 3.00/1.55  Main loop            : 0.42
% 3.00/1.55  Inferencing          : 0.19
% 3.00/1.55  Reduction            : 0.14
% 3.00/1.55  Demodulation         : 0.12
% 3.00/1.55  BG Simplification    : 0.03
% 3.00/1.55  Subsumption          : 0.04
% 3.00/1.55  Abstraction          : 0.03
% 3.00/1.55  MUC search           : 0.00
% 3.00/1.55  Cooper               : 0.00
% 3.00/1.55  Total                : 0.75
% 3.00/1.55  Index Insertion      : 0.00
% 3.00/1.55  Index Deletion       : 0.00
% 3.00/1.55  Index Matching       : 0.00
% 3.00/1.55  BG Taut test         : 0.00
%------------------------------------------------------------------------------
