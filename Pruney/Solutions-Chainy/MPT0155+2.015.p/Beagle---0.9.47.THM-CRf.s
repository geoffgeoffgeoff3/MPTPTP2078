%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:46:10 EST 2020

% Result     : Theorem 1.53s
% Output     : CNFRefutation 1.53s
% Verified   : 
% Statistics : Number of formulae       :   22 (  22 expanded)
%              Number of leaves         :   15 (  15 expanded)
%              Depth                    :    4
%              Number of atoms          :   11 (  11 expanded)
%              Number of equality atoms :   10 (  10 expanded)
%              Maximal formula depth    :    6 (   4 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ k2_enumset1 > k1_enumset1 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_2 > #skF_3 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(k1_tarski,type,(
    k1_tarski: $i > $i )).

tff(k2_enumset1,type,(
    k2_enumset1: ( $i * $i * $i * $i ) > $i )).

tff(k2_tarski,type,(
    k2_tarski: ( $i * $i ) > $i )).

tff(k1_enumset1,type,(
    k1_enumset1: ( $i * $i * $i ) > $i )).

tff('#skF_2',type,(
    '#skF_2': $i )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff('#skF_1',type,(
    '#skF_1': $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(k2_xboole_0,type,(
    k2_xboole_0: ( $i * $i ) > $i )).

tff(f_29,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k2_xboole_0(k2_tarski(A,B),k1_tarski(C)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_enumset1)).

tff(f_33,axiom,(
    ! [A,B] : k1_enumset1(A,A,B) = k2_tarski(A,B) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

tff(f_31,axiom,(
    ! [A,B,C,D] : k2_enumset1(A,B,C,D) = k2_xboole_0(k1_enumset1(A,B,C),k1_tarski(D)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_enumset1)).

tff(f_36,negated_conjecture,(
    ~ ! [A,B,C] : k2_enumset1(A,A,B,C) = k1_enumset1(A,B,C) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

tff(c_4,plain,(
    ! [A_5,B_6,C_7] : k2_xboole_0(k2_tarski(A_5,B_6),k1_tarski(C_7)) = k1_enumset1(A_5,B_6,C_7) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_8,plain,(
    ! [A_12,B_13] : k1_enumset1(A_12,A_12,B_13) = k2_tarski(A_12,B_13) ),
    inference(cnfTransformation,[status(thm)],[f_33])).

tff(c_29,plain,(
    ! [A_19,B_20,C_21,D_22] : k2_xboole_0(k1_enumset1(A_19,B_20,C_21),k1_tarski(D_22)) = k2_enumset1(A_19,B_20,C_21,D_22) ),
    inference(cnfTransformation,[status(thm)],[f_31])).

tff(c_38,plain,(
    ! [A_12,B_13,D_22] : k2_xboole_0(k2_tarski(A_12,B_13),k1_tarski(D_22)) = k2_enumset1(A_12,A_12,B_13,D_22) ),
    inference(superposition,[status(thm),theory(equality)],[c_8,c_29])).

tff(c_41,plain,(
    ! [A_12,B_13,D_22] : k2_enumset1(A_12,A_12,B_13,D_22) = k1_enumset1(A_12,B_13,D_22) ),
    inference(demodulation,[status(thm),theory(equality)],[c_4,c_38])).

tff(c_10,plain,(
    k2_enumset1('#skF_1','#skF_1','#skF_2','#skF_3') != k1_enumset1('#skF_1','#skF_2','#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_36])).

tff(c_44,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_41,c_10])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.12/0.33  % Computer   : n013.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % DateTime   : Tue Dec  1 19:06:54 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.53/1.06  % SZS status Theorem for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.53/1.06  
% 1.53/1.06  % SZS output start CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.53/1.06  %$ k2_enumset1 > k1_enumset1 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_2 > #skF_3 > #skF_1
% 1.53/1.06  
% 1.53/1.06  %Foreground sorts:
% 1.53/1.06  
% 1.53/1.06  
% 1.53/1.06  %Background operators:
% 1.53/1.06  
% 1.53/1.06  
% 1.53/1.06  %Foreground operators:
% 1.53/1.06  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 1.53/1.06  tff(k1_tarski, type, k1_tarski: $i > $i).
% 1.53/1.06  tff(k2_enumset1, type, k2_enumset1: ($i * $i * $i * $i) > $i).
% 1.53/1.06  tff(k2_tarski, type, k2_tarski: ($i * $i) > $i).
% 1.53/1.06  tff(k1_enumset1, type, k1_enumset1: ($i * $i * $i) > $i).
% 1.53/1.06  tff('#skF_2', type, '#skF_2': $i).
% 1.53/1.06  tff('#skF_3', type, '#skF_3': $i).
% 1.53/1.06  tff('#skF_1', type, '#skF_1': $i).
% 1.53/1.06  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 1.53/1.06  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 1.53/1.06  tff(k2_xboole_0, type, k2_xboole_0: ($i * $i) > $i).
% 1.53/1.06  
% 1.53/1.07  tff(f_29, axiom, (![A, B, C]: (k1_enumset1(A, B, C) = k2_xboole_0(k2_tarski(A, B), k1_tarski(C)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t43_enumset1)).
% 1.53/1.07  tff(f_33, axiom, (![A, B]: (k1_enumset1(A, A, B) = k2_tarski(A, B))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 1.53/1.07  tff(f_31, axiom, (![A, B, C, D]: (k2_enumset1(A, B, C, D) = k2_xboole_0(k1_enumset1(A, B, C), k1_tarski(D)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_enumset1)).
% 1.53/1.07  tff(f_36, negated_conjecture, ~(![A, B, C]: (k2_enumset1(A, A, B, C) = k1_enumset1(A, B, C))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 1.53/1.07  tff(c_4, plain, (![A_5, B_6, C_7]: (k2_xboole_0(k2_tarski(A_5, B_6), k1_tarski(C_7))=k1_enumset1(A_5, B_6, C_7))), inference(cnfTransformation, [status(thm)], [f_29])).
% 1.53/1.07  tff(c_8, plain, (![A_12, B_13]: (k1_enumset1(A_12, A_12, B_13)=k2_tarski(A_12, B_13))), inference(cnfTransformation, [status(thm)], [f_33])).
% 1.53/1.07  tff(c_29, plain, (![A_19, B_20, C_21, D_22]: (k2_xboole_0(k1_enumset1(A_19, B_20, C_21), k1_tarski(D_22))=k2_enumset1(A_19, B_20, C_21, D_22))), inference(cnfTransformation, [status(thm)], [f_31])).
% 1.53/1.07  tff(c_38, plain, (![A_12, B_13, D_22]: (k2_xboole_0(k2_tarski(A_12, B_13), k1_tarski(D_22))=k2_enumset1(A_12, A_12, B_13, D_22))), inference(superposition, [status(thm), theory('equality')], [c_8, c_29])).
% 1.53/1.07  tff(c_41, plain, (![A_12, B_13, D_22]: (k2_enumset1(A_12, A_12, B_13, D_22)=k1_enumset1(A_12, B_13, D_22))), inference(demodulation, [status(thm), theory('equality')], [c_4, c_38])).
% 1.53/1.07  tff(c_10, plain, (k2_enumset1('#skF_1', '#skF_1', '#skF_2', '#skF_3')!=k1_enumset1('#skF_1', '#skF_2', '#skF_3')), inference(cnfTransformation, [status(thm)], [f_36])).
% 1.53/1.07  tff(c_44, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_41, c_10])).
% 1.53/1.07  % SZS output end CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.53/1.07  
% 1.53/1.07  Inference rules
% 1.53/1.07  ----------------------
% 1.53/1.07  #Ref     : 0
% 1.53/1.07  #Sup     : 7
% 1.53/1.07  #Fact    : 0
% 1.53/1.07  #Define  : 0
% 1.53/1.07  #Split   : 0
% 1.53/1.07  #Chain   : 0
% 1.53/1.07  #Close   : 0
% 1.53/1.07  
% 1.53/1.07  Ordering : KBO
% 1.53/1.07  
% 1.53/1.07  Simplification rules
% 1.53/1.07  ----------------------
% 1.53/1.07  #Subsume      : 0
% 1.53/1.07  #Demod        : 2
% 1.53/1.07  #Tautology    : 6
% 1.53/1.07  #SimpNegUnit  : 0
% 1.53/1.07  #BackRed      : 1
% 1.53/1.07  
% 1.53/1.07  #Partial instantiations: 0
% 1.53/1.07  #Strategies tried      : 1
% 1.53/1.07  
% 1.53/1.07  Timing (in seconds)
% 1.53/1.07  ----------------------
% 1.53/1.07  Preprocessing        : 0.26
% 1.53/1.07  Parsing              : 0.14
% 1.53/1.07  CNF conversion       : 0.01
% 1.53/1.07  Main loop            : 0.06
% 1.53/1.07  Inferencing          : 0.03
% 1.53/1.07  Reduction            : 0.02
% 1.53/1.07  Demodulation         : 0.02
% 1.53/1.07  BG Simplification    : 0.01
% 1.53/1.07  Subsumption          : 0.01
% 1.53/1.08  Abstraction          : 0.00
% 1.53/1.08  MUC search           : 0.00
% 1.53/1.08  Cooper               : 0.00
% 1.53/1.08  Total                : 0.35
% 1.53/1.08  Index Insertion      : 0.00
% 1.53/1.08  Index Deletion       : 0.00
% 1.53/1.08  Index Matching       : 0.00
% 1.53/1.08  BG Taut test         : 0.00
%------------------------------------------------------------------------------
