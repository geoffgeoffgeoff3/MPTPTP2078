%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:47:08 EST 2020

% Result     : Theorem 1.64s
% Output     : CNFRefutation 1.88s
% Verified   : 
% Statistics : Number of formulae       :   17 (  19 expanded)
%              Number of leaves         :   11 (  12 expanded)
%              Depth                    :    3
%              Number of atoms          :    9 (  11 expanded)
%              Number of equality atoms :    8 (  10 expanded)
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

tff(f_29,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,D,C,A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_enumset1)).

tff(f_27,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(B,A,C,D) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t108_enumset1)).

tff(f_32,negated_conjecture,(
    ~ ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_enumset1(D,B,C,A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t123_enumset1)).

tff(c_4,plain,(
    ! [B_6,D_8,C_7,A_5] : k2_enumset1(B_6,D_8,C_7,A_5) = k2_enumset1(A_5,B_6,C_7,D_8) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_37,plain,(
    ! [B_13,A_14,C_15,D_16] : k2_enumset1(B_13,A_14,C_15,D_16) = k2_enumset1(A_14,B_13,C_15,D_16) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_76,plain,(
    ! [B_6,D_8,C_7,A_5] : k2_enumset1(B_6,D_8,C_7,A_5) = k2_enumset1(B_6,A_5,C_7,D_8) ),
    inference(superposition,[status(thm),theory(equality)],[c_4,c_37])).

tff(c_6,plain,(
    k2_enumset1('#skF_1','#skF_2','#skF_3','#skF_4') != k2_enumset1('#skF_4','#skF_2','#skF_3','#skF_1') ),
    inference(cnfTransformation,[status(thm)],[f_32])).

tff(c_7,plain,(
    k2_enumset1('#skF_4','#skF_2','#skF_3','#skF_1') != k2_enumset1('#skF_4','#skF_1','#skF_3','#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_4,c_6])).

tff(c_177,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_76,c_7])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 20:36:53 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.64/1.15  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.64/1.15  
% 1.64/1.15  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.64/1.15  %$ k2_enumset1 > #nlpp > #skF_2 > #skF_3 > #skF_1 > #skF_4
% 1.64/1.15  
% 1.64/1.15  %Foreground sorts:
% 1.64/1.15  
% 1.64/1.15  
% 1.64/1.15  %Background operators:
% 1.64/1.15  
% 1.64/1.15  
% 1.64/1.15  %Foreground operators:
% 1.64/1.15  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 1.64/1.15  tff(k2_enumset1, type, k2_enumset1: ($i * $i * $i * $i) > $i).
% 1.64/1.15  tff('#skF_2', type, '#skF_2': $i).
% 1.64/1.15  tff('#skF_3', type, '#skF_3': $i).
% 1.64/1.15  tff('#skF_1', type, '#skF_1': $i).
% 1.64/1.15  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 1.64/1.15  tff('#skF_4', type, '#skF_4': $i).
% 1.64/1.15  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 1.64/1.15  
% 1.88/1.16  tff(f_29, axiom, (![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_enumset1(B, D, C, A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_enumset1)).
% 1.88/1.16  tff(f_27, axiom, (![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_enumset1(B, A, C, D))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t108_enumset1)).
% 1.88/1.16  tff(f_32, negated_conjecture, ~(![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_enumset1(D, B, C, A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t123_enumset1)).
% 1.88/1.16  tff(c_4, plain, (![B_6, D_8, C_7, A_5]: (k2_enumset1(B_6, D_8, C_7, A_5)=k2_enumset1(A_5, B_6, C_7, D_8))), inference(cnfTransformation, [status(thm)], [f_29])).
% 1.88/1.16  tff(c_37, plain, (![B_13, A_14, C_15, D_16]: (k2_enumset1(B_13, A_14, C_15, D_16)=k2_enumset1(A_14, B_13, C_15, D_16))), inference(cnfTransformation, [status(thm)], [f_27])).
% 1.88/1.16  tff(c_76, plain, (![B_6, D_8, C_7, A_5]: (k2_enumset1(B_6, D_8, C_7, A_5)=k2_enumset1(B_6, A_5, C_7, D_8))), inference(superposition, [status(thm), theory('equality')], [c_4, c_37])).
% 1.88/1.16  tff(c_6, plain, (k2_enumset1('#skF_1', '#skF_2', '#skF_3', '#skF_4')!=k2_enumset1('#skF_4', '#skF_2', '#skF_3', '#skF_1')), inference(cnfTransformation, [status(thm)], [f_32])).
% 1.88/1.16  tff(c_7, plain, (k2_enumset1('#skF_4', '#skF_2', '#skF_3', '#skF_1')!=k2_enumset1('#skF_4', '#skF_1', '#skF_3', '#skF_2')), inference(demodulation, [status(thm), theory('equality')], [c_4, c_6])).
% 1.88/1.16  tff(c_177, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_76, c_7])).
% 1.88/1.16  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.88/1.16  
% 1.88/1.16  Inference rules
% 1.88/1.16  ----------------------
% 1.88/1.16  #Ref     : 0
% 1.88/1.16  #Sup     : 48
% 1.88/1.16  #Fact    : 0
% 1.88/1.16  #Define  : 0
% 1.88/1.16  #Split   : 0
% 1.88/1.16  #Chain   : 0
% 1.88/1.16  #Close   : 0
% 1.88/1.16  
% 1.88/1.16  Ordering : KBO
% 1.88/1.16  
% 1.88/1.16  Simplification rules
% 1.88/1.16  ----------------------
% 1.88/1.16  #Subsume      : 18
% 1.88/1.16  #Demod        : 2
% 1.88/1.16  #Tautology    : 20
% 1.88/1.16  #SimpNegUnit  : 0
% 1.88/1.16  #BackRed      : 1
% 1.88/1.16  
% 1.88/1.16  #Partial instantiations: 0
% 1.88/1.16  #Strategies tried      : 1
% 1.88/1.16  
% 1.88/1.16  Timing (in seconds)
% 1.88/1.16  ----------------------
% 1.88/1.16  Preprocessing        : 0.25
% 1.88/1.16  Parsing              : 0.13
% 1.88/1.16  CNF conversion       : 0.01
% 1.88/1.16  Main loop            : 0.16
% 1.88/1.16  Inferencing          : 0.06
% 1.88/1.16  Reduction            : 0.06
% 1.88/1.16  Demodulation         : 0.06
% 1.88/1.16  BG Simplification    : 0.01
% 1.88/1.16  Subsumption          : 0.02
% 1.88/1.16  Abstraction          : 0.01
% 1.88/1.16  MUC search           : 0.00
% 1.88/1.16  Cooper               : 0.00
% 1.88/1.16  Total                : 0.43
% 1.88/1.16  Index Insertion      : 0.00
% 1.88/1.16  Index Deletion       : 0.00
% 1.88/1.16  Index Matching       : 0.00
% 1.88/1.17  BG Taut test         : 0.00
%------------------------------------------------------------------------------
