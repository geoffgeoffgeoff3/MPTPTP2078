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
% DateTime   : Thu Dec  3 09:47:07 EST 2020

% Result     : Theorem 3.56s
% Output     : CNFRefutation 3.86s
% Verified   : 
% Statistics : Number of formulae       :   25 (  47 expanded)
%              Number of leaves         :   11 (  22 expanded)
%              Depth                    :    5
%              Number of atoms          :   17 (  39 expanded)
%              Number of equality atoms :   16 (  38 expanded)
%              Maximal formula depth    :    6 (   4 average)
%              Maximal term depth       :    2 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ k2_enumset1 > #nlpp > #skF_2 > #skF_3 > #skF_1 > #skF_4

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(k2_enumset1,type,(
    k2_enumset1: ( $i * $i * $i * $i ) > $i )).

tff('#skF_2',type,(
    '#skF_2': $i )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff('#skF_1',type,(
    '#skF_1': $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(f_27,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,C,A,D) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l123_enumset1)).

tff(f_29,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,C,D,A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t111_enumset1)).

tff(f_32,negated_conjecture,(
    ~ ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(D,B,C,A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t123_enumset1)).

tff(c_37,plain,(
    ! [B_13,C_14,A_15,D_16] : k2_enumset1(B_13,C_14,A_15,D_16) = k2_enumset1(A_15,B_13,C_14,D_16) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_4,plain,(
    ! [B_6,C_7,D_8,A_5] : k2_enumset1(B_6,C_7,D_8,A_5) = k2_enumset1(A_5,B_6,C_7,D_8) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_55,plain,(
    ! [B_13,C_14,D_16,A_15] : k2_enumset1(B_13,C_14,D_16,A_15) = k2_enumset1(B_13,C_14,A_15,D_16) ),
    inference(superposition,[status(thm),theory(equality)],[c_37,c_4])).

tff(c_2,plain,(
    ! [B_2,C_3,A_1,D_4] : k2_enumset1(B_2,C_3,A_1,D_4) = k2_enumset1(A_1,B_2,C_3,D_4) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_8,plain,(
    ! [B_9,C_10,D_11,A_12] : k2_enumset1(B_9,C_10,D_11,A_12) = k2_enumset1(A_12,B_9,C_10,D_11) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_272,plain,(
    ! [C_25,D_26,A_27,B_28] : k2_enumset1(C_25,D_26,A_27,B_28) = k2_enumset1(A_27,B_28,C_25,D_26) ),
    inference(superposition,[status(thm),theory(equality)],[c_4,c_8])).

tff(c_380,plain,(
    ! [A_1,D_4,B_2,C_3] : k2_enumset1(A_1,D_4,B_2,C_3) = k2_enumset1(A_1,B_2,C_3,D_4) ),
    inference(superposition,[status(thm),theory(equality)],[c_2,c_272])).

tff(c_555,plain,(
    ! [C_33,A_34,D_35,B_36] : k2_enumset1(C_33,A_34,D_35,B_36) = k2_enumset1(A_34,B_36,C_33,D_35) ),
    inference(superposition,[status(thm),theory(equality)],[c_37,c_4])).

tff(c_702,plain,(
    ! [B_2,D_4,A_1,C_3] : k2_enumset1(B_2,D_4,A_1,C_3) = k2_enumset1(B_2,C_3,A_1,D_4) ),
    inference(superposition,[status(thm),theory(equality)],[c_2,c_555])).

tff(c_6,plain,(
    k2_enumset1('#skF_1','#skF_2','#skF_3','#skF_4') != k2_enumset1('#skF_4','#skF_2','#skF_3','#skF_1') ),
    inference(cnfTransformation,[status(thm)],[f_32])).

tff(c_7,plain,(
    k2_enumset1('#skF_4','#skF_2','#skF_3','#skF_1') != k2_enumset1('#skF_4','#skF_1','#skF_2','#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_4,c_6])).

tff(c_401,plain,(
    k2_enumset1('#skF_4','#skF_2','#skF_1','#skF_3') != k2_enumset1('#skF_4','#skF_1','#skF_3','#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_55,c_55,c_7])).

tff(c_728,plain,(
    k2_enumset1('#skF_4','#skF_3','#skF_1','#skF_2') != k2_enumset1('#skF_4','#skF_1','#skF_3','#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_702,c_401])).

tff(c_1397,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_55,c_380,c_728])).
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
% 0.13/0.34  % DateTime   : Tue Dec  1 20:42:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 3.56/1.65  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.86/1.65  
% 3.86/1.65  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.86/1.65  %$ k2_enumset1 > #nlpp > #skF_2 > #skF_3 > #skF_1 > #skF_4
% 3.86/1.65  
% 3.86/1.65  %Foreground sorts:
% 3.86/1.65  
% 3.86/1.65  
% 3.86/1.65  %Background operators:
% 3.86/1.65  
% 3.86/1.65  
% 3.86/1.65  %Foreground operators:
% 3.86/1.65  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 3.86/1.65  tff(k2_enumset1, type, k2_enumset1: ($i * $i * $i * $i) > $i).
% 3.86/1.65  tff('#skF_2', type, '#skF_2': $i).
% 3.86/1.65  tff('#skF_3', type, '#skF_3': $i).
% 3.86/1.65  tff('#skF_1', type, '#skF_1': $i).
% 3.86/1.65  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 3.86/1.65  tff('#skF_4', type, '#skF_4': $i).
% 3.86/1.65  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 3.86/1.65  
% 3.86/1.66  tff(f_27, axiom, (![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_enumset1(B, C, A, D))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l123_enumset1)).
% 3.86/1.66  tff(f_29, axiom, (![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_enumset1(B, C, D, A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t111_enumset1)).
% 3.86/1.66  tff(f_32, negated_conjecture, ~(![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_enumset1(D, B, C, A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t123_enumset1)).
% 3.86/1.66  tff(c_37, plain, (![B_13, C_14, A_15, D_16]: (k2_enumset1(B_13, C_14, A_15, D_16)=k2_enumset1(A_15, B_13, C_14, D_16))), inference(cnfTransformation, [status(thm)], [f_27])).
% 3.86/1.66  tff(c_4, plain, (![B_6, C_7, D_8, A_5]: (k2_enumset1(B_6, C_7, D_8, A_5)=k2_enumset1(A_5, B_6, C_7, D_8))), inference(cnfTransformation, [status(thm)], [f_29])).
% 3.86/1.66  tff(c_55, plain, (![B_13, C_14, D_16, A_15]: (k2_enumset1(B_13, C_14, D_16, A_15)=k2_enumset1(B_13, C_14, A_15, D_16))), inference(superposition, [status(thm), theory('equality')], [c_37, c_4])).
% 3.86/1.66  tff(c_2, plain, (![B_2, C_3, A_1, D_4]: (k2_enumset1(B_2, C_3, A_1, D_4)=k2_enumset1(A_1, B_2, C_3, D_4))), inference(cnfTransformation, [status(thm)], [f_27])).
% 3.86/1.66  tff(c_8, plain, (![B_9, C_10, D_11, A_12]: (k2_enumset1(B_9, C_10, D_11, A_12)=k2_enumset1(A_12, B_9, C_10, D_11))), inference(cnfTransformation, [status(thm)], [f_29])).
% 3.86/1.66  tff(c_272, plain, (![C_25, D_26, A_27, B_28]: (k2_enumset1(C_25, D_26, A_27, B_28)=k2_enumset1(A_27, B_28, C_25, D_26))), inference(superposition, [status(thm), theory('equality')], [c_4, c_8])).
% 3.86/1.66  tff(c_380, plain, (![A_1, D_4, B_2, C_3]: (k2_enumset1(A_1, D_4, B_2, C_3)=k2_enumset1(A_1, B_2, C_3, D_4))), inference(superposition, [status(thm), theory('equality')], [c_2, c_272])).
% 3.86/1.66  tff(c_555, plain, (![C_33, A_34, D_35, B_36]: (k2_enumset1(C_33, A_34, D_35, B_36)=k2_enumset1(A_34, B_36, C_33, D_35))), inference(superposition, [status(thm), theory('equality')], [c_37, c_4])).
% 3.86/1.66  tff(c_702, plain, (![B_2, D_4, A_1, C_3]: (k2_enumset1(B_2, D_4, A_1, C_3)=k2_enumset1(B_2, C_3, A_1, D_4))), inference(superposition, [status(thm), theory('equality')], [c_2, c_555])).
% 3.86/1.66  tff(c_6, plain, (k2_enumset1('#skF_1', '#skF_2', '#skF_3', '#skF_4')!=k2_enumset1('#skF_4', '#skF_2', '#skF_3', '#skF_1')), inference(cnfTransformation, [status(thm)], [f_32])).
% 3.86/1.66  tff(c_7, plain, (k2_enumset1('#skF_4', '#skF_2', '#skF_3', '#skF_1')!=k2_enumset1('#skF_4', '#skF_1', '#skF_2', '#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_4, c_6])).
% 3.86/1.66  tff(c_401, plain, (k2_enumset1('#skF_4', '#skF_2', '#skF_1', '#skF_3')!=k2_enumset1('#skF_4', '#skF_1', '#skF_3', '#skF_2')), inference(demodulation, [status(thm), theory('equality')], [c_55, c_55, c_7])).
% 3.86/1.66  tff(c_728, plain, (k2_enumset1('#skF_4', '#skF_3', '#skF_1', '#skF_2')!=k2_enumset1('#skF_4', '#skF_1', '#skF_3', '#skF_2')), inference(demodulation, [status(thm), theory('equality')], [c_702, c_401])).
% 3.86/1.66  tff(c_1397, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_55, c_380, c_728])).
% 3.86/1.66  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.86/1.66  
% 3.86/1.66  Inference rules
% 3.86/1.66  ----------------------
% 3.86/1.66  #Ref     : 0
% 3.86/1.66  #Sup     : 440
% 3.86/1.66  #Fact    : 0
% 3.86/1.66  #Define  : 0
% 3.86/1.66  #Split   : 0
% 3.86/1.66  #Chain   : 0
% 3.86/1.66  #Close   : 0
% 3.86/1.66  
% 3.86/1.66  Ordering : KBO
% 3.86/1.66  
% 3.86/1.66  Simplification rules
% 3.86/1.66  ----------------------
% 3.86/1.66  #Subsume      : 185
% 3.86/1.67  #Demod        : 6
% 3.86/1.67  #Tautology    : 56
% 3.86/1.67  #SimpNegUnit  : 0
% 3.86/1.67  #BackRed      : 2
% 3.86/1.67  
% 3.86/1.67  #Partial instantiations: 0
% 3.86/1.67  #Strategies tried      : 1
% 3.86/1.67  
% 3.86/1.67  Timing (in seconds)
% 3.86/1.67  ----------------------
% 3.86/1.67  Preprocessing        : 0.28
% 3.86/1.67  Parsing              : 0.15
% 3.86/1.67  CNF conversion       : 0.02
% 3.86/1.67  Main loop            : 0.58
% 3.86/1.67  Inferencing          : 0.17
% 3.86/1.67  Reduction            : 0.28
% 3.86/1.67  Demodulation         : 0.26
% 3.86/1.67  BG Simplification    : 0.03
% 3.86/1.67  Subsumption          : 0.09
% 3.86/1.67  Abstraction          : 0.03
% 3.90/1.67  MUC search           : 0.00
% 3.90/1.67  Cooper               : 0.00
% 3.90/1.67  Total                : 0.89
% 3.90/1.67  Index Insertion      : 0.00
% 3.90/1.67  Index Deletion       : 0.00
% 3.90/1.67  Index Matching       : 0.00
% 3.90/1.67  BG Taut test         : 0.00
%------------------------------------------------------------------------------
