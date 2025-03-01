%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:46:42 EST 2020

% Result     : Theorem 15.99s
% Output     : CNFRefutation 15.99s
% Verified   : 
% Statistics : Number of formulae       :  101 (3539 expanded)
%              Number of leaves         :   22 (1237 expanded)
%              Depth                    :   26
%              Number of atoms          :  134 (5930 expanded)
%              Number of equality atoms :   81 (3373 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > k3_enumset1 > k2_enumset1 > k1_enumset1 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_1 > #skF_5 > #skF_3 > #skF_2 > #skF_4

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#skF_1',type,(
    '#skF_1': ( $i * $i * $i ) > $i )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff(k1_tarski,type,(
    k1_tarski: $i > $i )).

tff(k3_enumset1,type,(
    k3_enumset1: ( $i * $i * $i * $i * $i ) > $i )).

tff(k2_enumset1,type,(
    k2_enumset1: ( $i * $i * $i * $i ) > $i )).

tff(k2_tarski,type,(
    k2_tarski: ( $i * $i ) > $i )).

tff('#skF_5',type,(
    '#skF_5': $i )).

tff(k1_enumset1,type,(
    k1_enumset1: ( $i * $i * $i ) > $i )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i * $i ) > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(k2_xboole_0,type,(
    k2_xboole_0: ( $i * $i ) > $i )).

tff(f_44,axiom,(
    ! [A,B,C] : k2_enumset1(A,A,B,C) = k1_enumset1(A,B,C) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

tff(f_42,axiom,(
    ! [A,B] : k1_enumset1(A,A,B) = k2_tarski(A,B) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

tff(f_38,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_enumset1(A,B,C),k1_tarski(D)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_enumset1)).

tff(f_40,axiom,(
    ! [A] : k2_tarski(A,A) = k1_tarski(A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

tff(f_36,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_tarski(A),k1_enumset1(B,C,D)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_enumset1)).

tff(f_34,axiom,(
    ! [A,B,C] :
      ( C = k2_xboole_0(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,A)
            | r2_hidden(D,B) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_xboole_0)).

tff(f_49,negated_conjecture,(
    ~ ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(A,C,B) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_enumset1)).

tff(c_28,plain,(
    ! [A_18,B_19,C_20] : k2_enumset1(A_18,A_18,B_19,C_20) = k1_enumset1(A_18,B_19,C_20) ),
    inference(cnfTransformation,[status(thm)],[f_44])).

tff(c_26,plain,(
    ! [A_16,B_17] : k1_enumset1(A_16,A_16,B_17) = k2_tarski(A_16,B_17) ),
    inference(cnfTransformation,[status(thm)],[f_42])).

tff(c_80,plain,(
    ! [A_44,B_45,C_46,D_47] : k2_xboole_0(k1_enumset1(A_44,B_45,C_46),k1_tarski(D_47)) = k2_enumset1(A_44,B_45,C_46,D_47) ),
    inference(cnfTransformation,[status(thm)],[f_38])).

tff(c_98,plain,(
    ! [A_16,B_17,D_47] : k2_xboole_0(k2_tarski(A_16,B_17),k1_tarski(D_47)) = k2_enumset1(A_16,A_16,B_17,D_47) ),
    inference(superposition,[status(thm),theory(equality)],[c_26,c_80])).

tff(c_101,plain,(
    ! [A_16,B_17,D_47] : k2_xboole_0(k2_tarski(A_16,B_17),k1_tarski(D_47)) = k1_enumset1(A_16,B_17,D_47) ),
    inference(demodulation,[status(thm),theory(equality)],[c_28,c_98])).

tff(c_24,plain,(
    ! [A_15] : k2_tarski(A_15,A_15) = k1_tarski(A_15) ),
    inference(cnfTransformation,[status(thm)],[f_40])).

tff(c_102,plain,(
    ! [A_48,B_49,C_50,D_51] : k2_xboole_0(k1_tarski(A_48),k1_enumset1(B_49,C_50,D_51)) = k2_enumset1(A_48,B_49,C_50,D_51) ),
    inference(cnfTransformation,[status(thm)],[f_36])).

tff(c_210,plain,(
    ! [A_75,A_76,B_77] : k2_xboole_0(k1_tarski(A_75),k2_tarski(A_76,B_77)) = k2_enumset1(A_75,A_76,A_76,B_77) ),
    inference(superposition,[status(thm),theory(equality)],[c_26,c_102])).

tff(c_242,plain,(
    ! [B_19,C_20] : k2_xboole_0(k1_tarski(B_19),k2_tarski(B_19,C_20)) = k1_enumset1(B_19,B_19,C_20) ),
    inference(superposition,[status(thm),theory(equality)],[c_28,c_210])).

tff(c_251,plain,(
    ! [B_19,C_20] : k2_xboole_0(k1_tarski(B_19),k2_tarski(B_19,C_20)) = k2_tarski(B_19,C_20) ),
    inference(demodulation,[status(thm),theory(equality)],[c_26,c_242])).

tff(c_624,plain,(
    ! [A_112,B_113,C_114] :
      ( r2_hidden('#skF_1'(A_112,B_113,C_114),B_113)
      | r2_hidden('#skF_1'(A_112,B_113,C_114),A_112)
      | r2_hidden('#skF_2'(A_112,B_113,C_114),C_114)
      | k2_xboole_0(A_112,B_113) = C_114 ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_16,plain,(
    ! [A_1,B_2,C_3] :
      ( ~ r2_hidden('#skF_1'(A_1,B_2,C_3),C_3)
      | r2_hidden('#skF_2'(A_1,B_2,C_3),C_3)
      | k2_xboole_0(A_1,B_2) = C_3 ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_1801,plain,(
    ! [A_185,B_186] :
      ( r2_hidden('#skF_1'(A_185,B_186,A_185),B_186)
      | r2_hidden('#skF_2'(A_185,B_186,A_185),A_185)
      | k2_xboole_0(A_185,B_186) = A_185 ) ),
    inference(resolution,[status(thm)],[c_624,c_16])).

tff(c_787,plain,(
    ! [A_127,B_128,C_129] :
      ( r2_hidden('#skF_1'(A_127,B_128,C_129),B_128)
      | r2_hidden('#skF_1'(A_127,B_128,C_129),A_127)
      | ~ r2_hidden('#skF_2'(A_127,B_128,C_129),A_127)
      | k2_xboole_0(A_127,B_128) = C_129 ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_12,plain,(
    ! [A_1,B_2,C_3] :
      ( ~ r2_hidden('#skF_1'(A_1,B_2,C_3),C_3)
      | ~ r2_hidden('#skF_2'(A_1,B_2,C_3),A_1)
      | k2_xboole_0(A_1,B_2) = C_3 ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_830,plain,(
    ! [A_127,B_128] :
      ( r2_hidden('#skF_1'(A_127,B_128,A_127),B_128)
      | ~ r2_hidden('#skF_2'(A_127,B_128,A_127),A_127)
      | k2_xboole_0(A_127,B_128) = A_127 ) ),
    inference(resolution,[status(thm)],[c_787,c_12])).

tff(c_1878,plain,(
    ! [A_187,B_188] :
      ( r2_hidden('#skF_1'(A_187,B_188,A_187),B_188)
      | k2_xboole_0(A_187,B_188) = A_187 ) ),
    inference(resolution,[status(thm)],[c_1801,c_830])).

tff(c_120,plain,(
    ! [A_48,A_16,B_17] : k2_xboole_0(k1_tarski(A_48),k2_tarski(A_16,B_17)) = k2_enumset1(A_48,A_16,A_16,B_17) ),
    inference(superposition,[status(thm),theory(equality)],[c_26,c_102])).

tff(c_6,plain,(
    ! [D_6,A_1,B_2] :
      ( ~ r2_hidden(D_6,A_1)
      | r2_hidden(D_6,k2_xboole_0(A_1,B_2)) ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_695,plain,(
    ! [C_121,B_122,D_119,A_123,D_120] :
      ( ~ r2_hidden(D_119,k1_enumset1(A_123,B_122,C_121))
      | r2_hidden(D_119,k2_enumset1(A_123,B_122,C_121,D_120)) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_80,c_6])).

tff(c_714,plain,(
    ! [D_119,A_48,A_16,B_17] :
      ( ~ r2_hidden(D_119,k1_enumset1(A_48,A_16,A_16))
      | r2_hidden(D_119,k2_xboole_0(k1_tarski(A_48),k2_tarski(A_16,B_17))) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_120,c_695])).

tff(c_3066,plain,(
    ! [A_261,A_262,A_263,B_264] :
      ( r2_hidden('#skF_1'(A_261,k1_enumset1(A_262,A_263,A_263),A_261),k2_xboole_0(k1_tarski(A_262),k2_tarski(A_263,B_264)))
      | k2_xboole_0(A_261,k1_enumset1(A_262,A_263,A_263)) = A_261 ) ),
    inference(resolution,[status(thm)],[c_1878,c_714])).

tff(c_3094,plain,(
    ! [A_261,B_17,B_264] :
      ( r2_hidden('#skF_1'(A_261,k2_tarski(B_17,B_17),A_261),k2_xboole_0(k1_tarski(B_17),k2_tarski(B_17,B_264)))
      | k2_xboole_0(A_261,k1_enumset1(B_17,B_17,B_17)) = A_261 ) ),
    inference(superposition,[status(thm),theory(equality)],[c_26,c_3066])).

tff(c_3107,plain,(
    ! [A_265,B_266,B_267] :
      ( r2_hidden('#skF_1'(A_265,k1_tarski(B_266),A_265),k2_tarski(B_266,B_267))
      | k2_xboole_0(A_265,k1_tarski(B_266)) = A_265 ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_24,c_26,c_251,c_24,c_3094])).

tff(c_3130,plain,(
    ! [B_266,B_267] :
      ( r2_hidden('#skF_2'(k2_tarski(B_266,B_267),k1_tarski(B_266),k2_tarski(B_266,B_267)),k2_tarski(B_266,B_267))
      | k2_xboole_0(k2_tarski(B_266,B_267),k1_tarski(B_266)) = k2_tarski(B_266,B_267) ) ),
    inference(resolution,[status(thm)],[c_3107,c_16])).

tff(c_3259,plain,(
    ! [B_278,B_279] :
      ( r2_hidden('#skF_2'(k2_tarski(B_278,B_279),k1_tarski(B_278),k2_tarski(B_278,B_279)),k2_tarski(B_278,B_279))
      | k1_enumset1(B_278,B_279,B_278) = k2_tarski(B_278,B_279) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_101,c_3130])).

tff(c_3123,plain,(
    ! [B_266,B_267] :
      ( ~ r2_hidden('#skF_2'(k2_tarski(B_266,B_267),k1_tarski(B_266),k2_tarski(B_266,B_267)),k2_tarski(B_266,B_267))
      | k2_xboole_0(k2_tarski(B_266,B_267),k1_tarski(B_266)) = k2_tarski(B_266,B_267) ) ),
    inference(resolution,[status(thm)],[c_3107,c_12])).

tff(c_3141,plain,(
    ! [B_266,B_267] :
      ( ~ r2_hidden('#skF_2'(k2_tarski(B_266,B_267),k1_tarski(B_266),k2_tarski(B_266,B_267)),k2_tarski(B_266,B_267))
      | k1_enumset1(B_266,B_267,B_266) = k2_tarski(B_266,B_267) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_101,c_3123])).

tff(c_3406,plain,(
    ! [B_284,B_285] : k1_enumset1(B_284,B_285,B_284) = k2_tarski(B_284,B_285) ),
    inference(resolution,[status(thm)],[c_3259,c_3141])).

tff(c_22,plain,(
    ! [A_11,B_12,C_13,D_14] : k2_xboole_0(k1_enumset1(A_11,B_12,C_13),k1_tarski(D_14)) = k2_enumset1(A_11,B_12,C_13,D_14) ),
    inference(cnfTransformation,[status(thm)],[f_38])).

tff(c_3467,plain,(
    ! [B_284,B_285,D_14] : k2_xboole_0(k2_tarski(B_284,B_285),k1_tarski(D_14)) = k2_enumset1(B_284,B_285,B_284,D_14) ),
    inference(superposition,[status(thm),theory(equality)],[c_3406,c_22])).

tff(c_3491,plain,(
    ! [B_284,B_285,D_14] : k2_enumset1(B_284,B_285,B_284,D_14) = k1_enumset1(B_284,B_285,D_14) ),
    inference(demodulation,[status(thm),theory(equality)],[c_101,c_3467])).

tff(c_123,plain,(
    ! [A_52,B_53,D_54] : k2_xboole_0(k2_tarski(A_52,B_53),k1_tarski(D_54)) = k1_enumset1(A_52,B_53,D_54) ),
    inference(demodulation,[status(thm),theory(equality)],[c_28,c_98])).

tff(c_141,plain,(
    ! [A_15,D_54] : k2_xboole_0(k1_tarski(A_15),k1_tarski(D_54)) = k1_enumset1(A_15,A_15,D_54) ),
    inference(superposition,[status(thm),theory(equality)],[c_24,c_123])).

tff(c_144,plain,(
    ! [A_15,D_54] : k2_xboole_0(k1_tarski(A_15),k1_tarski(D_54)) = k2_tarski(A_15,D_54) ),
    inference(demodulation,[status(thm),theory(equality)],[c_26,c_141])).

tff(c_1923,plain,(
    ! [A_189,B_190] :
      ( r2_hidden('#skF_1'(A_189,B_190,B_190),A_189)
      | r2_hidden('#skF_2'(A_189,B_190,B_190),B_190)
      | k2_xboole_0(A_189,B_190) = B_190 ) ),
    inference(resolution,[status(thm)],[c_624,c_16])).

tff(c_477,plain,(
    ! [A_92,B_93,C_94] :
      ( r2_hidden('#skF_1'(A_92,B_93,C_94),B_93)
      | r2_hidden('#skF_1'(A_92,B_93,C_94),A_92)
      | ~ r2_hidden('#skF_2'(A_92,B_93,C_94),B_93)
      | k2_xboole_0(A_92,B_93) = C_94 ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_8,plain,(
    ! [A_1,B_2,C_3] :
      ( ~ r2_hidden('#skF_1'(A_1,B_2,C_3),C_3)
      | ~ r2_hidden('#skF_2'(A_1,B_2,C_3),B_2)
      | k2_xboole_0(A_1,B_2) = C_3 ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_507,plain,(
    ! [A_92,B_93] :
      ( r2_hidden('#skF_1'(A_92,B_93,B_93),A_92)
      | ~ r2_hidden('#skF_2'(A_92,B_93,B_93),B_93)
      | k2_xboole_0(A_92,B_93) = B_93 ) ),
    inference(resolution,[status(thm)],[c_477,c_8])).

tff(c_1992,plain,(
    ! [A_189,B_190] :
      ( r2_hidden('#skF_1'(A_189,B_190,B_190),A_189)
      | k2_xboole_0(A_189,B_190) = B_190 ) ),
    inference(resolution,[status(thm)],[c_1923,c_507])).

tff(c_4,plain,(
    ! [D_6,B_2,A_1] :
      ( ~ r2_hidden(D_6,B_2)
      | r2_hidden(D_6,k2_xboole_0(A_1,B_2)) ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_175,plain,(
    ! [A_67,B_68,C_69] :
      ( ~ r2_hidden('#skF_1'(A_67,B_68,C_69),C_69)
      | r2_hidden('#skF_2'(A_67,B_68,C_69),C_69)
      | k2_xboole_0(A_67,B_68) = C_69 ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_8267,plain,(
    ! [A_444,B_445,A_446,B_447] :
      ( r2_hidden('#skF_2'(A_444,B_445,k2_xboole_0(A_446,B_447)),k2_xboole_0(A_446,B_447))
      | k2_xboole_0(A_446,B_447) = k2_xboole_0(A_444,B_445)
      | ~ r2_hidden('#skF_1'(A_444,B_445,k2_xboole_0(A_446,B_447)),B_447) ) ),
    inference(resolution,[status(thm)],[c_4,c_175])).

tff(c_284,plain,(
    ! [A_80,B_81,C_82] :
      ( ~ r2_hidden('#skF_1'(A_80,B_81,C_82),C_82)
      | ~ r2_hidden('#skF_2'(A_80,B_81,C_82),B_81)
      | k2_xboole_0(A_80,B_81) = C_82 ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_307,plain,(
    ! [A_80,B_81,A_1,B_2] :
      ( ~ r2_hidden('#skF_2'(A_80,B_81,k2_xboole_0(A_1,B_2)),B_81)
      | k2_xboole_0(A_80,B_81) = k2_xboole_0(A_1,B_2)
      | ~ r2_hidden('#skF_1'(A_80,B_81,k2_xboole_0(A_1,B_2)),B_2) ) ),
    inference(resolution,[status(thm)],[c_4,c_284])).

tff(c_18803,plain,(
    ! [A_585,A_586,B_587] :
      ( k2_xboole_0(A_585,k2_xboole_0(A_586,B_587)) = k2_xboole_0(A_586,B_587)
      | ~ r2_hidden('#skF_1'(A_585,k2_xboole_0(A_586,B_587),k2_xboole_0(A_586,B_587)),B_587) ) ),
    inference(resolution,[status(thm)],[c_8267,c_307])).

tff(c_19173,plain,(
    ! [A_588,A_589] : k2_xboole_0(A_588,k2_xboole_0(A_589,A_588)) = k2_xboole_0(A_589,A_588) ),
    inference(resolution,[status(thm)],[c_1992,c_18803])).

tff(c_19323,plain,(
    ! [D_54,A_15] : k2_xboole_0(k1_tarski(D_54),k2_tarski(A_15,D_54)) = k2_xboole_0(k1_tarski(A_15),k1_tarski(D_54)) ),
    inference(superposition,[status(thm),theory(equality)],[c_144,c_19173])).

tff(c_19374,plain,(
    ! [D_54,A_15] : k2_xboole_0(k1_tarski(D_54),k2_tarski(A_15,D_54)) = k2_tarski(A_15,D_54) ),
    inference(demodulation,[status(thm),theory(equality)],[c_144,c_19323])).

tff(c_20,plain,(
    ! [A_7,B_8,C_9,D_10] : k2_xboole_0(k1_tarski(A_7),k1_enumset1(B_8,C_9,D_10)) = k2_enumset1(A_7,B_8,C_9,D_10) ),
    inference(cnfTransformation,[status(thm)],[f_36])).

tff(c_3589,plain,(
    ! [A_289,B_290,B_291] : k2_xboole_0(k1_tarski(A_289),k2_tarski(B_290,B_291)) = k2_enumset1(A_289,B_290,B_291,B_290) ),
    inference(superposition,[status(thm),theory(equality)],[c_3406,c_20])).

tff(c_3855,plain,(
    ! [B_294,B_295] : k2_xboole_0(k1_tarski(B_294),k2_tarski(B_295,B_294)) = k1_enumset1(B_294,B_295,B_295) ),
    inference(superposition,[status(thm),theory(equality)],[c_3589,c_3491])).

tff(c_5000,plain,(
    ! [A_338,B_339,B_340] : k2_xboole_0(k1_tarski(A_338),k2_xboole_0(k1_tarski(B_339),k2_tarski(B_340,B_339))) = k2_enumset1(A_338,B_339,B_340,B_340) ),
    inference(superposition,[status(thm),theory(equality)],[c_3855,c_20])).

tff(c_5592,plain,(
    ! [A_354,C_355] : k2_xboole_0(k1_tarski(A_354),k2_xboole_0(k1_tarski(A_354),k2_tarski(C_355,A_354))) = k1_enumset1(A_354,C_355,C_355) ),
    inference(superposition,[status(thm),theory(equality)],[c_28,c_5000])).

tff(c_5672,plain,(
    ! [A_354,C_355,D_14] : k2_xboole_0(k2_xboole_0(k1_tarski(A_354),k2_xboole_0(k1_tarski(A_354),k2_tarski(C_355,A_354))),k1_tarski(D_14)) = k2_enumset1(A_354,C_355,C_355,D_14) ),
    inference(superposition,[status(thm),theory(equality)],[c_5592,c_22])).

tff(c_21263,plain,(
    ! [A_609,C_610,D_611] : k2_enumset1(A_609,C_610,C_610,D_611) = k1_enumset1(C_610,A_609,D_611) ),
    inference(demodulation,[status(thm),theory(equality)],[c_101,c_19374,c_19374,c_5672])).

tff(c_245,plain,(
    ! [A_75,A_15] : k2_xboole_0(k1_tarski(A_75),k1_tarski(A_15)) = k2_enumset1(A_75,A_15,A_15,A_15) ),
    inference(superposition,[status(thm),theory(equality)],[c_24,c_210])).

tff(c_252,plain,(
    ! [A_75,A_15] : k2_enumset1(A_75,A_15,A_15,A_15) = k2_tarski(A_75,A_15) ),
    inference(demodulation,[status(thm),theory(equality)],[c_144,c_245])).

tff(c_21555,plain,(
    ! [D_614,A_615] : k1_enumset1(D_614,A_615,D_614) = k2_tarski(A_615,D_614) ),
    inference(superposition,[status(thm),theory(equality)],[c_21263,c_252])).

tff(c_21618,plain,(
    ! [A_615,D_614,D_14] : k2_xboole_0(k2_tarski(A_615,D_614),k1_tarski(D_14)) = k2_enumset1(D_614,A_615,D_614,D_14) ),
    inference(superposition,[status(thm),theory(equality)],[c_21555,c_22])).

tff(c_21651,plain,(
    ! [D_614,A_615,D_14] : k1_enumset1(D_614,A_615,D_14) = k1_enumset1(A_615,D_614,D_14) ),
    inference(demodulation,[status(thm),theory(equality)],[c_3491,c_101,c_21618])).

tff(c_22568,plain,(
    ! [D_624,A_625,D_626] : k1_enumset1(D_624,A_625,D_626) = k1_enumset1(A_625,D_624,D_626) ),
    inference(demodulation,[status(thm),theory(equality)],[c_3491,c_101,c_21618])).

tff(c_26959,plain,(
    ! [A_685,D_686,D_687,D_688] : k2_xboole_0(k1_enumset1(A_685,D_686,D_687),k1_tarski(D_688)) = k2_enumset1(D_686,A_685,D_687,D_688) ),
    inference(superposition,[status(thm),theory(equality)],[c_22568,c_22])).

tff(c_27122,plain,(
    ! [B_12,A_11,C_13,D_14] : k2_enumset1(B_12,A_11,C_13,D_14) = k2_enumset1(A_11,B_12,C_13,D_14) ),
    inference(superposition,[status(thm),theory(equality)],[c_22,c_26959])).

tff(c_6454,plain,(
    ! [B_385,B_386,D_387] : k2_xboole_0(k2_xboole_0(k1_tarski(B_385),k2_tarski(B_386,B_385)),k1_tarski(D_387)) = k2_enumset1(B_385,B_386,B_386,D_387) ),
    inference(superposition,[status(thm),theory(equality)],[c_3855,c_22])).

tff(c_3712,plain,(
    ! [A_48,A_16,B_17] : k2_enumset1(A_48,A_16,B_17,A_16) = k2_enumset1(A_48,A_16,A_16,B_17) ),
    inference(superposition,[status(thm),theory(equality)],[c_120,c_3589])).

tff(c_6495,plain,(
    ! [B_385,B_386,D_387] : k2_xboole_0(k2_xboole_0(k1_tarski(B_385),k2_tarski(B_386,B_385)),k1_tarski(D_387)) = k2_enumset1(B_385,B_386,D_387,B_386) ),
    inference(superposition,[status(thm),theory(equality)],[c_6454,c_3712])).

tff(c_19849,plain,(
    ! [B_386,B_385,D_387] : k2_xboole_0(k2_tarski(B_386,B_385),k1_tarski(D_387)) = k2_enumset1(B_385,B_386,D_387,B_386) ),
    inference(demodulation,[status(thm),theory(equality)],[c_19374,c_6495])).

tff(c_19857,plain,(
    ! [B_385,B_386,D_387] : k2_enumset1(B_385,B_386,D_387,B_386) = k1_enumset1(B_386,B_385,D_387) ),
    inference(demodulation,[status(thm),theory(equality)],[c_101,c_19849])).

tff(c_24936,plain,(
    ! [A_655,A_656,D_657,D_658] : k2_xboole_0(k1_tarski(A_655),k1_enumset1(A_656,D_657,D_658)) = k2_enumset1(A_655,D_657,A_656,D_658) ),
    inference(superposition,[status(thm),theory(equality)],[c_22568,c_20])).

tff(c_25759,plain,(
    ! [A_669,C_670,B_671,D_672] : k2_enumset1(A_669,C_670,B_671,D_672) = k2_enumset1(A_669,B_671,C_670,D_672) ),
    inference(superposition,[status(thm),theory(equality)],[c_20,c_24936])).

tff(c_29608,plain,(
    ! [B_717,D_718,B_719] : k2_enumset1(B_717,D_718,B_719,B_719) = k1_enumset1(B_719,B_717,D_718) ),
    inference(superposition,[status(thm),theory(equality)],[c_19857,c_25759])).

tff(c_30322,plain,(
    ! [A_727,B_728,D_729] : k2_enumset1(A_727,B_728,D_729,D_729) = k1_enumset1(D_729,B_728,A_727) ),
    inference(superposition,[status(thm),theory(equality)],[c_27122,c_29608])).

tff(c_25972,plain,(
    ! [B_385,D_387,B_386] : k2_enumset1(B_385,D_387,B_386,B_386) = k1_enumset1(B_386,B_385,D_387) ),
    inference(superposition,[status(thm),theory(equality)],[c_19857,c_25759])).

tff(c_30332,plain,(
    ! [D_729,B_728,A_727] : k1_enumset1(D_729,B_728,A_727) = k1_enumset1(D_729,A_727,B_728) ),
    inference(superposition,[status(thm),theory(equality)],[c_30322,c_25972])).

tff(c_32,plain,(
    k1_enumset1('#skF_3','#skF_5','#skF_4') != k1_enumset1('#skF_3','#skF_4','#skF_5') ),
    inference(cnfTransformation,[status(thm)],[f_49])).

tff(c_22567,plain,(
    k1_enumset1('#skF_3','#skF_5','#skF_4') != k1_enumset1('#skF_4','#skF_3','#skF_5') ),
    inference(demodulation,[status(thm),theory(equality)],[c_21651,c_32])).

tff(c_30628,plain,(
    k1_enumset1('#skF_3','#skF_4','#skF_5') != k1_enumset1('#skF_4','#skF_3','#skF_5') ),
    inference(demodulation,[status(thm),theory(equality)],[c_30332,c_22567])).

tff(c_30631,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_21651,c_30628])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 12:50:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 15.99/6.96  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 15.99/6.97  
% 15.99/6.97  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 15.99/6.97  %$ r2_hidden > k3_enumset1 > k2_enumset1 > k1_enumset1 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_1 > #skF_5 > #skF_3 > #skF_2 > #skF_4
% 15.99/6.97  
% 15.99/6.97  %Foreground sorts:
% 15.99/6.97  
% 15.99/6.97  
% 15.99/6.97  %Background operators:
% 15.99/6.97  
% 15.99/6.97  
% 15.99/6.97  %Foreground operators:
% 15.99/6.97  tff('#skF_1', type, '#skF_1': ($i * $i * $i) > $i).
% 15.99/6.97  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 15.99/6.97  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 15.99/6.97  tff(k1_tarski, type, k1_tarski: $i > $i).
% 15.99/6.97  tff(k3_enumset1, type, k3_enumset1: ($i * $i * $i * $i * $i) > $i).
% 15.99/6.97  tff(k2_enumset1, type, k2_enumset1: ($i * $i * $i * $i) > $i).
% 15.99/6.97  tff(k2_tarski, type, k2_tarski: ($i * $i) > $i).
% 15.99/6.97  tff('#skF_5', type, '#skF_5': $i).
% 15.99/6.97  tff(k1_enumset1, type, k1_enumset1: ($i * $i * $i) > $i).
% 15.99/6.97  tff('#skF_3', type, '#skF_3': $i).
% 15.99/6.97  tff('#skF_2', type, '#skF_2': ($i * $i * $i) > $i).
% 15.99/6.97  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 15.99/6.97  tff('#skF_4', type, '#skF_4': $i).
% 15.99/6.97  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 15.99/6.97  tff(k2_xboole_0, type, k2_xboole_0: ($i * $i) > $i).
% 15.99/6.97  
% 15.99/6.99  tff(f_44, axiom, (![A, B, C]: (k2_enumset1(A, A, B, C) = k1_enumset1(A, B, C))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 15.99/6.99  tff(f_42, axiom, (![A, B]: (k1_enumset1(A, A, B) = k2_tarski(A, B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 15.99/6.99  tff(f_38, axiom, (![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_xboole_0(k1_enumset1(A, B, C), k1_tarski(D)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t46_enumset1)).
% 15.99/6.99  tff(f_40, axiom, (![A]: (k2_tarski(A, A) = k1_tarski(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 15.99/6.99  tff(f_36, axiom, (![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_xboole_0(k1_tarski(A), k1_enumset1(B, C, D)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t44_enumset1)).
% 15.99/6.99  tff(f_34, axiom, (![A, B, C]: ((C = k2_xboole_0(A, B)) <=> (![D]: (r2_hidden(D, C) <=> (r2_hidden(D, A) | r2_hidden(D, B)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_xboole_0)).
% 15.99/6.99  tff(f_49, negated_conjecture, ~(![A, B, C]: (k1_enumset1(A, B, C) = k1_enumset1(A, C, B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t98_enumset1)).
% 15.99/6.99  tff(c_28, plain, (![A_18, B_19, C_20]: (k2_enumset1(A_18, A_18, B_19, C_20)=k1_enumset1(A_18, B_19, C_20))), inference(cnfTransformation, [status(thm)], [f_44])).
% 15.99/6.99  tff(c_26, plain, (![A_16, B_17]: (k1_enumset1(A_16, A_16, B_17)=k2_tarski(A_16, B_17))), inference(cnfTransformation, [status(thm)], [f_42])).
% 15.99/6.99  tff(c_80, plain, (![A_44, B_45, C_46, D_47]: (k2_xboole_0(k1_enumset1(A_44, B_45, C_46), k1_tarski(D_47))=k2_enumset1(A_44, B_45, C_46, D_47))), inference(cnfTransformation, [status(thm)], [f_38])).
% 15.99/6.99  tff(c_98, plain, (![A_16, B_17, D_47]: (k2_xboole_0(k2_tarski(A_16, B_17), k1_tarski(D_47))=k2_enumset1(A_16, A_16, B_17, D_47))), inference(superposition, [status(thm), theory('equality')], [c_26, c_80])).
% 15.99/6.99  tff(c_101, plain, (![A_16, B_17, D_47]: (k2_xboole_0(k2_tarski(A_16, B_17), k1_tarski(D_47))=k1_enumset1(A_16, B_17, D_47))), inference(demodulation, [status(thm), theory('equality')], [c_28, c_98])).
% 15.99/6.99  tff(c_24, plain, (![A_15]: (k2_tarski(A_15, A_15)=k1_tarski(A_15))), inference(cnfTransformation, [status(thm)], [f_40])).
% 15.99/6.99  tff(c_102, plain, (![A_48, B_49, C_50, D_51]: (k2_xboole_0(k1_tarski(A_48), k1_enumset1(B_49, C_50, D_51))=k2_enumset1(A_48, B_49, C_50, D_51))), inference(cnfTransformation, [status(thm)], [f_36])).
% 15.99/6.99  tff(c_210, plain, (![A_75, A_76, B_77]: (k2_xboole_0(k1_tarski(A_75), k2_tarski(A_76, B_77))=k2_enumset1(A_75, A_76, A_76, B_77))), inference(superposition, [status(thm), theory('equality')], [c_26, c_102])).
% 15.99/6.99  tff(c_242, plain, (![B_19, C_20]: (k2_xboole_0(k1_tarski(B_19), k2_tarski(B_19, C_20))=k1_enumset1(B_19, B_19, C_20))), inference(superposition, [status(thm), theory('equality')], [c_28, c_210])).
% 15.99/6.99  tff(c_251, plain, (![B_19, C_20]: (k2_xboole_0(k1_tarski(B_19), k2_tarski(B_19, C_20))=k2_tarski(B_19, C_20))), inference(demodulation, [status(thm), theory('equality')], [c_26, c_242])).
% 15.99/6.99  tff(c_624, plain, (![A_112, B_113, C_114]: (r2_hidden('#skF_1'(A_112, B_113, C_114), B_113) | r2_hidden('#skF_1'(A_112, B_113, C_114), A_112) | r2_hidden('#skF_2'(A_112, B_113, C_114), C_114) | k2_xboole_0(A_112, B_113)=C_114)), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_16, plain, (![A_1, B_2, C_3]: (~r2_hidden('#skF_1'(A_1, B_2, C_3), C_3) | r2_hidden('#skF_2'(A_1, B_2, C_3), C_3) | k2_xboole_0(A_1, B_2)=C_3)), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_1801, plain, (![A_185, B_186]: (r2_hidden('#skF_1'(A_185, B_186, A_185), B_186) | r2_hidden('#skF_2'(A_185, B_186, A_185), A_185) | k2_xboole_0(A_185, B_186)=A_185)), inference(resolution, [status(thm)], [c_624, c_16])).
% 15.99/6.99  tff(c_787, plain, (![A_127, B_128, C_129]: (r2_hidden('#skF_1'(A_127, B_128, C_129), B_128) | r2_hidden('#skF_1'(A_127, B_128, C_129), A_127) | ~r2_hidden('#skF_2'(A_127, B_128, C_129), A_127) | k2_xboole_0(A_127, B_128)=C_129)), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_12, plain, (![A_1, B_2, C_3]: (~r2_hidden('#skF_1'(A_1, B_2, C_3), C_3) | ~r2_hidden('#skF_2'(A_1, B_2, C_3), A_1) | k2_xboole_0(A_1, B_2)=C_3)), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_830, plain, (![A_127, B_128]: (r2_hidden('#skF_1'(A_127, B_128, A_127), B_128) | ~r2_hidden('#skF_2'(A_127, B_128, A_127), A_127) | k2_xboole_0(A_127, B_128)=A_127)), inference(resolution, [status(thm)], [c_787, c_12])).
% 15.99/6.99  tff(c_1878, plain, (![A_187, B_188]: (r2_hidden('#skF_1'(A_187, B_188, A_187), B_188) | k2_xboole_0(A_187, B_188)=A_187)), inference(resolution, [status(thm)], [c_1801, c_830])).
% 15.99/6.99  tff(c_120, plain, (![A_48, A_16, B_17]: (k2_xboole_0(k1_tarski(A_48), k2_tarski(A_16, B_17))=k2_enumset1(A_48, A_16, A_16, B_17))), inference(superposition, [status(thm), theory('equality')], [c_26, c_102])).
% 15.99/6.99  tff(c_6, plain, (![D_6, A_1, B_2]: (~r2_hidden(D_6, A_1) | r2_hidden(D_6, k2_xboole_0(A_1, B_2)))), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_695, plain, (![C_121, B_122, D_119, A_123, D_120]: (~r2_hidden(D_119, k1_enumset1(A_123, B_122, C_121)) | r2_hidden(D_119, k2_enumset1(A_123, B_122, C_121, D_120)))), inference(superposition, [status(thm), theory('equality')], [c_80, c_6])).
% 15.99/6.99  tff(c_714, plain, (![D_119, A_48, A_16, B_17]: (~r2_hidden(D_119, k1_enumset1(A_48, A_16, A_16)) | r2_hidden(D_119, k2_xboole_0(k1_tarski(A_48), k2_tarski(A_16, B_17))))), inference(superposition, [status(thm), theory('equality')], [c_120, c_695])).
% 15.99/6.99  tff(c_3066, plain, (![A_261, A_262, A_263, B_264]: (r2_hidden('#skF_1'(A_261, k1_enumset1(A_262, A_263, A_263), A_261), k2_xboole_0(k1_tarski(A_262), k2_tarski(A_263, B_264))) | k2_xboole_0(A_261, k1_enumset1(A_262, A_263, A_263))=A_261)), inference(resolution, [status(thm)], [c_1878, c_714])).
% 15.99/6.99  tff(c_3094, plain, (![A_261, B_17, B_264]: (r2_hidden('#skF_1'(A_261, k2_tarski(B_17, B_17), A_261), k2_xboole_0(k1_tarski(B_17), k2_tarski(B_17, B_264))) | k2_xboole_0(A_261, k1_enumset1(B_17, B_17, B_17))=A_261)), inference(superposition, [status(thm), theory('equality')], [c_26, c_3066])).
% 15.99/6.99  tff(c_3107, plain, (![A_265, B_266, B_267]: (r2_hidden('#skF_1'(A_265, k1_tarski(B_266), A_265), k2_tarski(B_266, B_267)) | k2_xboole_0(A_265, k1_tarski(B_266))=A_265)), inference(demodulation, [status(thm), theory('equality')], [c_24, c_26, c_251, c_24, c_3094])).
% 15.99/6.99  tff(c_3130, plain, (![B_266, B_267]: (r2_hidden('#skF_2'(k2_tarski(B_266, B_267), k1_tarski(B_266), k2_tarski(B_266, B_267)), k2_tarski(B_266, B_267)) | k2_xboole_0(k2_tarski(B_266, B_267), k1_tarski(B_266))=k2_tarski(B_266, B_267))), inference(resolution, [status(thm)], [c_3107, c_16])).
% 15.99/6.99  tff(c_3259, plain, (![B_278, B_279]: (r2_hidden('#skF_2'(k2_tarski(B_278, B_279), k1_tarski(B_278), k2_tarski(B_278, B_279)), k2_tarski(B_278, B_279)) | k1_enumset1(B_278, B_279, B_278)=k2_tarski(B_278, B_279))), inference(demodulation, [status(thm), theory('equality')], [c_101, c_3130])).
% 15.99/6.99  tff(c_3123, plain, (![B_266, B_267]: (~r2_hidden('#skF_2'(k2_tarski(B_266, B_267), k1_tarski(B_266), k2_tarski(B_266, B_267)), k2_tarski(B_266, B_267)) | k2_xboole_0(k2_tarski(B_266, B_267), k1_tarski(B_266))=k2_tarski(B_266, B_267))), inference(resolution, [status(thm)], [c_3107, c_12])).
% 15.99/6.99  tff(c_3141, plain, (![B_266, B_267]: (~r2_hidden('#skF_2'(k2_tarski(B_266, B_267), k1_tarski(B_266), k2_tarski(B_266, B_267)), k2_tarski(B_266, B_267)) | k1_enumset1(B_266, B_267, B_266)=k2_tarski(B_266, B_267))), inference(demodulation, [status(thm), theory('equality')], [c_101, c_3123])).
% 15.99/6.99  tff(c_3406, plain, (![B_284, B_285]: (k1_enumset1(B_284, B_285, B_284)=k2_tarski(B_284, B_285))), inference(resolution, [status(thm)], [c_3259, c_3141])).
% 15.99/6.99  tff(c_22, plain, (![A_11, B_12, C_13, D_14]: (k2_xboole_0(k1_enumset1(A_11, B_12, C_13), k1_tarski(D_14))=k2_enumset1(A_11, B_12, C_13, D_14))), inference(cnfTransformation, [status(thm)], [f_38])).
% 15.99/6.99  tff(c_3467, plain, (![B_284, B_285, D_14]: (k2_xboole_0(k2_tarski(B_284, B_285), k1_tarski(D_14))=k2_enumset1(B_284, B_285, B_284, D_14))), inference(superposition, [status(thm), theory('equality')], [c_3406, c_22])).
% 15.99/6.99  tff(c_3491, plain, (![B_284, B_285, D_14]: (k2_enumset1(B_284, B_285, B_284, D_14)=k1_enumset1(B_284, B_285, D_14))), inference(demodulation, [status(thm), theory('equality')], [c_101, c_3467])).
% 15.99/6.99  tff(c_123, plain, (![A_52, B_53, D_54]: (k2_xboole_0(k2_tarski(A_52, B_53), k1_tarski(D_54))=k1_enumset1(A_52, B_53, D_54))), inference(demodulation, [status(thm), theory('equality')], [c_28, c_98])).
% 15.99/6.99  tff(c_141, plain, (![A_15, D_54]: (k2_xboole_0(k1_tarski(A_15), k1_tarski(D_54))=k1_enumset1(A_15, A_15, D_54))), inference(superposition, [status(thm), theory('equality')], [c_24, c_123])).
% 15.99/6.99  tff(c_144, plain, (![A_15, D_54]: (k2_xboole_0(k1_tarski(A_15), k1_tarski(D_54))=k2_tarski(A_15, D_54))), inference(demodulation, [status(thm), theory('equality')], [c_26, c_141])).
% 15.99/6.99  tff(c_1923, plain, (![A_189, B_190]: (r2_hidden('#skF_1'(A_189, B_190, B_190), A_189) | r2_hidden('#skF_2'(A_189, B_190, B_190), B_190) | k2_xboole_0(A_189, B_190)=B_190)), inference(resolution, [status(thm)], [c_624, c_16])).
% 15.99/6.99  tff(c_477, plain, (![A_92, B_93, C_94]: (r2_hidden('#skF_1'(A_92, B_93, C_94), B_93) | r2_hidden('#skF_1'(A_92, B_93, C_94), A_92) | ~r2_hidden('#skF_2'(A_92, B_93, C_94), B_93) | k2_xboole_0(A_92, B_93)=C_94)), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_8, plain, (![A_1, B_2, C_3]: (~r2_hidden('#skF_1'(A_1, B_2, C_3), C_3) | ~r2_hidden('#skF_2'(A_1, B_2, C_3), B_2) | k2_xboole_0(A_1, B_2)=C_3)), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_507, plain, (![A_92, B_93]: (r2_hidden('#skF_1'(A_92, B_93, B_93), A_92) | ~r2_hidden('#skF_2'(A_92, B_93, B_93), B_93) | k2_xboole_0(A_92, B_93)=B_93)), inference(resolution, [status(thm)], [c_477, c_8])).
% 15.99/6.99  tff(c_1992, plain, (![A_189, B_190]: (r2_hidden('#skF_1'(A_189, B_190, B_190), A_189) | k2_xboole_0(A_189, B_190)=B_190)), inference(resolution, [status(thm)], [c_1923, c_507])).
% 15.99/6.99  tff(c_4, plain, (![D_6, B_2, A_1]: (~r2_hidden(D_6, B_2) | r2_hidden(D_6, k2_xboole_0(A_1, B_2)))), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_175, plain, (![A_67, B_68, C_69]: (~r2_hidden('#skF_1'(A_67, B_68, C_69), C_69) | r2_hidden('#skF_2'(A_67, B_68, C_69), C_69) | k2_xboole_0(A_67, B_68)=C_69)), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_8267, plain, (![A_444, B_445, A_446, B_447]: (r2_hidden('#skF_2'(A_444, B_445, k2_xboole_0(A_446, B_447)), k2_xboole_0(A_446, B_447)) | k2_xboole_0(A_446, B_447)=k2_xboole_0(A_444, B_445) | ~r2_hidden('#skF_1'(A_444, B_445, k2_xboole_0(A_446, B_447)), B_447))), inference(resolution, [status(thm)], [c_4, c_175])).
% 15.99/6.99  tff(c_284, plain, (![A_80, B_81, C_82]: (~r2_hidden('#skF_1'(A_80, B_81, C_82), C_82) | ~r2_hidden('#skF_2'(A_80, B_81, C_82), B_81) | k2_xboole_0(A_80, B_81)=C_82)), inference(cnfTransformation, [status(thm)], [f_34])).
% 15.99/6.99  tff(c_307, plain, (![A_80, B_81, A_1, B_2]: (~r2_hidden('#skF_2'(A_80, B_81, k2_xboole_0(A_1, B_2)), B_81) | k2_xboole_0(A_80, B_81)=k2_xboole_0(A_1, B_2) | ~r2_hidden('#skF_1'(A_80, B_81, k2_xboole_0(A_1, B_2)), B_2))), inference(resolution, [status(thm)], [c_4, c_284])).
% 15.99/6.99  tff(c_18803, plain, (![A_585, A_586, B_587]: (k2_xboole_0(A_585, k2_xboole_0(A_586, B_587))=k2_xboole_0(A_586, B_587) | ~r2_hidden('#skF_1'(A_585, k2_xboole_0(A_586, B_587), k2_xboole_0(A_586, B_587)), B_587))), inference(resolution, [status(thm)], [c_8267, c_307])).
% 15.99/6.99  tff(c_19173, plain, (![A_588, A_589]: (k2_xboole_0(A_588, k2_xboole_0(A_589, A_588))=k2_xboole_0(A_589, A_588))), inference(resolution, [status(thm)], [c_1992, c_18803])).
% 15.99/6.99  tff(c_19323, plain, (![D_54, A_15]: (k2_xboole_0(k1_tarski(D_54), k2_tarski(A_15, D_54))=k2_xboole_0(k1_tarski(A_15), k1_tarski(D_54)))), inference(superposition, [status(thm), theory('equality')], [c_144, c_19173])).
% 15.99/6.99  tff(c_19374, plain, (![D_54, A_15]: (k2_xboole_0(k1_tarski(D_54), k2_tarski(A_15, D_54))=k2_tarski(A_15, D_54))), inference(demodulation, [status(thm), theory('equality')], [c_144, c_19323])).
% 15.99/6.99  tff(c_20, plain, (![A_7, B_8, C_9, D_10]: (k2_xboole_0(k1_tarski(A_7), k1_enumset1(B_8, C_9, D_10))=k2_enumset1(A_7, B_8, C_9, D_10))), inference(cnfTransformation, [status(thm)], [f_36])).
% 15.99/6.99  tff(c_3589, plain, (![A_289, B_290, B_291]: (k2_xboole_0(k1_tarski(A_289), k2_tarski(B_290, B_291))=k2_enumset1(A_289, B_290, B_291, B_290))), inference(superposition, [status(thm), theory('equality')], [c_3406, c_20])).
% 15.99/6.99  tff(c_3855, plain, (![B_294, B_295]: (k2_xboole_0(k1_tarski(B_294), k2_tarski(B_295, B_294))=k1_enumset1(B_294, B_295, B_295))), inference(superposition, [status(thm), theory('equality')], [c_3589, c_3491])).
% 15.99/6.99  tff(c_5000, plain, (![A_338, B_339, B_340]: (k2_xboole_0(k1_tarski(A_338), k2_xboole_0(k1_tarski(B_339), k2_tarski(B_340, B_339)))=k2_enumset1(A_338, B_339, B_340, B_340))), inference(superposition, [status(thm), theory('equality')], [c_3855, c_20])).
% 15.99/6.99  tff(c_5592, plain, (![A_354, C_355]: (k2_xboole_0(k1_tarski(A_354), k2_xboole_0(k1_tarski(A_354), k2_tarski(C_355, A_354)))=k1_enumset1(A_354, C_355, C_355))), inference(superposition, [status(thm), theory('equality')], [c_28, c_5000])).
% 15.99/6.99  tff(c_5672, plain, (![A_354, C_355, D_14]: (k2_xboole_0(k2_xboole_0(k1_tarski(A_354), k2_xboole_0(k1_tarski(A_354), k2_tarski(C_355, A_354))), k1_tarski(D_14))=k2_enumset1(A_354, C_355, C_355, D_14))), inference(superposition, [status(thm), theory('equality')], [c_5592, c_22])).
% 15.99/6.99  tff(c_21263, plain, (![A_609, C_610, D_611]: (k2_enumset1(A_609, C_610, C_610, D_611)=k1_enumset1(C_610, A_609, D_611))), inference(demodulation, [status(thm), theory('equality')], [c_101, c_19374, c_19374, c_5672])).
% 15.99/6.99  tff(c_245, plain, (![A_75, A_15]: (k2_xboole_0(k1_tarski(A_75), k1_tarski(A_15))=k2_enumset1(A_75, A_15, A_15, A_15))), inference(superposition, [status(thm), theory('equality')], [c_24, c_210])).
% 15.99/6.99  tff(c_252, plain, (![A_75, A_15]: (k2_enumset1(A_75, A_15, A_15, A_15)=k2_tarski(A_75, A_15))), inference(demodulation, [status(thm), theory('equality')], [c_144, c_245])).
% 15.99/6.99  tff(c_21555, plain, (![D_614, A_615]: (k1_enumset1(D_614, A_615, D_614)=k2_tarski(A_615, D_614))), inference(superposition, [status(thm), theory('equality')], [c_21263, c_252])).
% 15.99/6.99  tff(c_21618, plain, (![A_615, D_614, D_14]: (k2_xboole_0(k2_tarski(A_615, D_614), k1_tarski(D_14))=k2_enumset1(D_614, A_615, D_614, D_14))), inference(superposition, [status(thm), theory('equality')], [c_21555, c_22])).
% 15.99/6.99  tff(c_21651, plain, (![D_614, A_615, D_14]: (k1_enumset1(D_614, A_615, D_14)=k1_enumset1(A_615, D_614, D_14))), inference(demodulation, [status(thm), theory('equality')], [c_3491, c_101, c_21618])).
% 15.99/6.99  tff(c_22568, plain, (![D_624, A_625, D_626]: (k1_enumset1(D_624, A_625, D_626)=k1_enumset1(A_625, D_624, D_626))), inference(demodulation, [status(thm), theory('equality')], [c_3491, c_101, c_21618])).
% 15.99/6.99  tff(c_26959, plain, (![A_685, D_686, D_687, D_688]: (k2_xboole_0(k1_enumset1(A_685, D_686, D_687), k1_tarski(D_688))=k2_enumset1(D_686, A_685, D_687, D_688))), inference(superposition, [status(thm), theory('equality')], [c_22568, c_22])).
% 15.99/6.99  tff(c_27122, plain, (![B_12, A_11, C_13, D_14]: (k2_enumset1(B_12, A_11, C_13, D_14)=k2_enumset1(A_11, B_12, C_13, D_14))), inference(superposition, [status(thm), theory('equality')], [c_22, c_26959])).
% 15.99/6.99  tff(c_6454, plain, (![B_385, B_386, D_387]: (k2_xboole_0(k2_xboole_0(k1_tarski(B_385), k2_tarski(B_386, B_385)), k1_tarski(D_387))=k2_enumset1(B_385, B_386, B_386, D_387))), inference(superposition, [status(thm), theory('equality')], [c_3855, c_22])).
% 15.99/6.99  tff(c_3712, plain, (![A_48, A_16, B_17]: (k2_enumset1(A_48, A_16, B_17, A_16)=k2_enumset1(A_48, A_16, A_16, B_17))), inference(superposition, [status(thm), theory('equality')], [c_120, c_3589])).
% 15.99/6.99  tff(c_6495, plain, (![B_385, B_386, D_387]: (k2_xboole_0(k2_xboole_0(k1_tarski(B_385), k2_tarski(B_386, B_385)), k1_tarski(D_387))=k2_enumset1(B_385, B_386, D_387, B_386))), inference(superposition, [status(thm), theory('equality')], [c_6454, c_3712])).
% 15.99/6.99  tff(c_19849, plain, (![B_386, B_385, D_387]: (k2_xboole_0(k2_tarski(B_386, B_385), k1_tarski(D_387))=k2_enumset1(B_385, B_386, D_387, B_386))), inference(demodulation, [status(thm), theory('equality')], [c_19374, c_6495])).
% 15.99/6.99  tff(c_19857, plain, (![B_385, B_386, D_387]: (k2_enumset1(B_385, B_386, D_387, B_386)=k1_enumset1(B_386, B_385, D_387))), inference(demodulation, [status(thm), theory('equality')], [c_101, c_19849])).
% 15.99/6.99  tff(c_24936, plain, (![A_655, A_656, D_657, D_658]: (k2_xboole_0(k1_tarski(A_655), k1_enumset1(A_656, D_657, D_658))=k2_enumset1(A_655, D_657, A_656, D_658))), inference(superposition, [status(thm), theory('equality')], [c_22568, c_20])).
% 15.99/6.99  tff(c_25759, plain, (![A_669, C_670, B_671, D_672]: (k2_enumset1(A_669, C_670, B_671, D_672)=k2_enumset1(A_669, B_671, C_670, D_672))), inference(superposition, [status(thm), theory('equality')], [c_20, c_24936])).
% 15.99/6.99  tff(c_29608, plain, (![B_717, D_718, B_719]: (k2_enumset1(B_717, D_718, B_719, B_719)=k1_enumset1(B_719, B_717, D_718))), inference(superposition, [status(thm), theory('equality')], [c_19857, c_25759])).
% 15.99/6.99  tff(c_30322, plain, (![A_727, B_728, D_729]: (k2_enumset1(A_727, B_728, D_729, D_729)=k1_enumset1(D_729, B_728, A_727))), inference(superposition, [status(thm), theory('equality')], [c_27122, c_29608])).
% 15.99/6.99  tff(c_25972, plain, (![B_385, D_387, B_386]: (k2_enumset1(B_385, D_387, B_386, B_386)=k1_enumset1(B_386, B_385, D_387))), inference(superposition, [status(thm), theory('equality')], [c_19857, c_25759])).
% 15.99/6.99  tff(c_30332, plain, (![D_729, B_728, A_727]: (k1_enumset1(D_729, B_728, A_727)=k1_enumset1(D_729, A_727, B_728))), inference(superposition, [status(thm), theory('equality')], [c_30322, c_25972])).
% 15.99/6.99  tff(c_32, plain, (k1_enumset1('#skF_3', '#skF_5', '#skF_4')!=k1_enumset1('#skF_3', '#skF_4', '#skF_5')), inference(cnfTransformation, [status(thm)], [f_49])).
% 15.99/6.99  tff(c_22567, plain, (k1_enumset1('#skF_3', '#skF_5', '#skF_4')!=k1_enumset1('#skF_4', '#skF_3', '#skF_5')), inference(demodulation, [status(thm), theory('equality')], [c_21651, c_32])).
% 15.99/6.99  tff(c_30628, plain, (k1_enumset1('#skF_3', '#skF_4', '#skF_5')!=k1_enumset1('#skF_4', '#skF_3', '#skF_5')), inference(demodulation, [status(thm), theory('equality')], [c_30332, c_22567])).
% 15.99/6.99  tff(c_30631, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_21651, c_30628])).
% 15.99/6.99  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 15.99/6.99  
% 15.99/6.99  Inference rules
% 15.99/6.99  ----------------------
% 15.99/6.99  #Ref     : 0
% 15.99/6.99  #Sup     : 7326
% 15.99/6.99  #Fact    : 34
% 15.99/6.99  #Define  : 0
% 15.99/6.99  #Split   : 0
% 15.99/6.99  #Chain   : 0
% 15.99/6.99  #Close   : 0
% 15.99/6.99  
% 15.99/6.99  Ordering : KBO
% 15.99/6.99  
% 15.99/6.99  Simplification rules
% 15.99/6.99  ----------------------
% 15.99/6.99  #Subsume      : 1588
% 15.99/6.99  #Demod        : 9205
% 15.99/6.99  #Tautology    : 1957
% 15.99/6.99  #SimpNegUnit  : 0
% 15.99/6.99  #BackRed      : 66
% 15.99/6.99  
% 15.99/6.99  #Partial instantiations: 0
% 15.99/6.99  #Strategies tried      : 1
% 15.99/6.99  
% 15.99/6.99  Timing (in seconds)
% 15.99/6.99  ----------------------
% 15.99/7.00  Preprocessing        : 0.28
% 15.99/7.00  Parsing              : 0.14
% 15.99/7.00  CNF conversion       : 0.02
% 15.99/7.00  Main loop            : 5.94
% 15.99/7.00  Inferencing          : 1.23
% 15.99/7.00  Reduction            : 2.42
% 15.99/7.00  Demodulation         : 2.11
% 15.99/7.00  BG Simplification    : 0.17
% 15.99/7.00  Subsumption          : 1.81
% 15.99/7.00  Abstraction          : 0.26
% 15.99/7.00  MUC search           : 0.00
% 15.99/7.00  Cooper               : 0.00
% 15.99/7.00  Total                : 6.27
% 15.99/7.00  Index Insertion      : 0.00
% 15.99/7.00  Index Deletion       : 0.00
% 15.99/7.00  Index Matching       : 0.00
% 15.99/7.00  BG Taut test         : 0.00
%------------------------------------------------------------------------------
