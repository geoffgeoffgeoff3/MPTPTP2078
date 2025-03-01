%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:46:42 EST 2020

% Result     : Theorem 2.09s
% Output     : CNFRefutation 2.09s
% Verified   : 
% Statistics : Number of formulae       :   33 (  41 expanded)
%              Number of leaves         :   18 (  22 expanded)
%              Depth                    :    8
%              Number of atoms          :   21 (  29 expanded)
%              Number of equality atoms :   20 (  28 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ k3_enumset1 > k2_enumset1 > k1_enumset1 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_2 > #skF_3 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(k1_tarski,type,(
    k1_tarski: $i > $i )).

tff(k3_enumset1,type,(
    k3_enumset1: ( $i * $i * $i * $i * $i ) > $i )).

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

tff(f_35,axiom,(
    ! [A,B] : k1_enumset1(A,A,B) = k2_tarski(A,B) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

tff(f_33,axiom,(
    ! [A] : k2_tarski(A,A) = k1_tarski(A) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

tff(f_31,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k2_xboole_0(k2_tarski(A,B),k1_tarski(C)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_enumset1)).

tff(f_27,axiom,(
    ! [A,B] : k2_xboole_0(A,B) = k2_xboole_0(B,A) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

tff(f_29,axiom,(
    ! [A,B,C] : k1_enumset1(A,B,C) = k2_xboole_0(k1_tarski(A),k2_tarski(B,C)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_enumset1)).

tff(f_42,negated_conjecture,(
    ~ ! [A,B,C] : k1_enumset1(A,B,C) = k1_enumset1(A,C,B) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_enumset1)).

tff(c_10,plain,(
    ! [A_10,B_11] : k1_enumset1(A_10,A_10,B_11) = k2_tarski(A_10,B_11) ),
    inference(cnfTransformation,[status(thm)],[f_35])).

tff(c_8,plain,(
    ! [A_9] : k2_tarski(A_9,A_9) = k1_tarski(A_9) ),
    inference(cnfTransformation,[status(thm)],[f_33])).

tff(c_77,plain,(
    ! [A_27,B_28,C_29] : k2_xboole_0(k2_tarski(A_27,B_28),k1_tarski(C_29)) = k1_enumset1(A_27,B_28,C_29) ),
    inference(cnfTransformation,[status(thm)],[f_31])).

tff(c_98,plain,(
    ! [A_9,C_29] : k2_xboole_0(k1_tarski(A_9),k1_tarski(C_29)) = k1_enumset1(A_9,A_9,C_29) ),
    inference(superposition,[status(thm),theory(equality)],[c_8,c_77])).

tff(c_102,plain,(
    ! [A_30,C_31] : k2_xboole_0(k1_tarski(A_30),k1_tarski(C_31)) = k2_tarski(A_30,C_31) ),
    inference(demodulation,[status(thm),theory(equality)],[c_10,c_98])).

tff(c_2,plain,(
    ! [B_2,A_1] : k2_xboole_0(B_2,A_1) = k2_xboole_0(A_1,B_2) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_123,plain,(
    ! [C_32,A_33] : k2_xboole_0(k1_tarski(C_32),k1_tarski(A_33)) = k2_tarski(A_33,C_32) ),
    inference(superposition,[status(thm),theory(equality)],[c_102,c_2])).

tff(c_101,plain,(
    ! [A_9,C_29] : k2_xboole_0(k1_tarski(A_9),k1_tarski(C_29)) = k2_tarski(A_9,C_29) ),
    inference(demodulation,[status(thm),theory(equality)],[c_10,c_98])).

tff(c_129,plain,(
    ! [C_32,A_33] : k2_tarski(C_32,A_33) = k2_tarski(A_33,C_32) ),
    inference(superposition,[status(thm),theory(equality)],[c_123,c_101])).

tff(c_193,plain,(
    ! [A_36,B_37,C_38] : k2_xboole_0(k1_tarski(A_36),k2_tarski(B_37,C_38)) = k1_enumset1(A_36,B_37,C_38) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_640,plain,(
    ! [A_62,C_63,A_64] : k2_xboole_0(k1_tarski(A_62),k2_tarski(C_63,A_64)) = k1_enumset1(A_62,A_64,C_63) ),
    inference(superposition,[status(thm),theory(equality)],[c_129,c_193])).

tff(c_4,plain,(
    ! [A_3,B_4,C_5] : k2_xboole_0(k1_tarski(A_3),k2_tarski(B_4,C_5)) = k1_enumset1(A_3,B_4,C_5) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_649,plain,(
    ! [A_62,C_63,A_64] : k1_enumset1(A_62,C_63,A_64) = k1_enumset1(A_62,A_64,C_63) ),
    inference(superposition,[status(thm),theory(equality)],[c_640,c_4])).

tff(c_16,plain,(
    k1_enumset1('#skF_1','#skF_2','#skF_3') != k1_enumset1('#skF_1','#skF_3','#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_42])).

tff(c_687,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_649,c_16])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n021.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 15:50:49 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.09/1.31  % SZS status Theorem for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.09/1.31  
% 2.09/1.31  % SZS output start CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.09/1.31  %$ k3_enumset1 > k2_enumset1 > k1_enumset1 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_2 > #skF_3 > #skF_1
% 2.09/1.31  
% 2.09/1.31  %Foreground sorts:
% 2.09/1.31  
% 2.09/1.31  
% 2.09/1.31  %Background operators:
% 2.09/1.31  
% 2.09/1.31  
% 2.09/1.31  %Foreground operators:
% 2.09/1.31  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.09/1.31  tff(k1_tarski, type, k1_tarski: $i > $i).
% 2.09/1.31  tff(k3_enumset1, type, k3_enumset1: ($i * $i * $i * $i * $i) > $i).
% 2.09/1.31  tff(k2_enumset1, type, k2_enumset1: ($i * $i * $i * $i) > $i).
% 2.09/1.31  tff(k2_tarski, type, k2_tarski: ($i * $i) > $i).
% 2.09/1.31  tff(k1_enumset1, type, k1_enumset1: ($i * $i * $i) > $i).
% 2.09/1.31  tff('#skF_2', type, '#skF_2': $i).
% 2.09/1.31  tff('#skF_3', type, '#skF_3': $i).
% 2.09/1.31  tff('#skF_1', type, '#skF_1': $i).
% 2.09/1.31  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.09/1.31  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.09/1.31  tff(k2_xboole_0, type, k2_xboole_0: ($i * $i) > $i).
% 2.09/1.31  
% 2.09/1.32  tff(f_35, axiom, (![A, B]: (k1_enumset1(A, A, B) = k2_tarski(A, B))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 2.09/1.32  tff(f_33, axiom, (![A]: (k2_tarski(A, A) = k1_tarski(A))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 2.09/1.32  tff(f_31, axiom, (![A, B, C]: (k1_enumset1(A, B, C) = k2_xboole_0(k2_tarski(A, B), k1_tarski(C)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t43_enumset1)).
% 2.09/1.32  tff(f_27, axiom, (![A, B]: (k2_xboole_0(A, B) = k2_xboole_0(B, A))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 2.09/1.32  tff(f_29, axiom, (![A, B, C]: (k1_enumset1(A, B, C) = k2_xboole_0(k1_tarski(A), k2_tarski(B, C)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t42_enumset1)).
% 2.09/1.32  tff(f_42, negated_conjecture, ~(![A, B, C]: (k1_enumset1(A, B, C) = k1_enumset1(A, C, B))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t98_enumset1)).
% 2.09/1.32  tff(c_10, plain, (![A_10, B_11]: (k1_enumset1(A_10, A_10, B_11)=k2_tarski(A_10, B_11))), inference(cnfTransformation, [status(thm)], [f_35])).
% 2.09/1.32  tff(c_8, plain, (![A_9]: (k2_tarski(A_9, A_9)=k1_tarski(A_9))), inference(cnfTransformation, [status(thm)], [f_33])).
% 2.09/1.32  tff(c_77, plain, (![A_27, B_28, C_29]: (k2_xboole_0(k2_tarski(A_27, B_28), k1_tarski(C_29))=k1_enumset1(A_27, B_28, C_29))), inference(cnfTransformation, [status(thm)], [f_31])).
% 2.09/1.32  tff(c_98, plain, (![A_9, C_29]: (k2_xboole_0(k1_tarski(A_9), k1_tarski(C_29))=k1_enumset1(A_9, A_9, C_29))), inference(superposition, [status(thm), theory('equality')], [c_8, c_77])).
% 2.09/1.32  tff(c_102, plain, (![A_30, C_31]: (k2_xboole_0(k1_tarski(A_30), k1_tarski(C_31))=k2_tarski(A_30, C_31))), inference(demodulation, [status(thm), theory('equality')], [c_10, c_98])).
% 2.09/1.32  tff(c_2, plain, (![B_2, A_1]: (k2_xboole_0(B_2, A_1)=k2_xboole_0(A_1, B_2))), inference(cnfTransformation, [status(thm)], [f_27])).
% 2.09/1.32  tff(c_123, plain, (![C_32, A_33]: (k2_xboole_0(k1_tarski(C_32), k1_tarski(A_33))=k2_tarski(A_33, C_32))), inference(superposition, [status(thm), theory('equality')], [c_102, c_2])).
% 2.09/1.32  tff(c_101, plain, (![A_9, C_29]: (k2_xboole_0(k1_tarski(A_9), k1_tarski(C_29))=k2_tarski(A_9, C_29))), inference(demodulation, [status(thm), theory('equality')], [c_10, c_98])).
% 2.09/1.32  tff(c_129, plain, (![C_32, A_33]: (k2_tarski(C_32, A_33)=k2_tarski(A_33, C_32))), inference(superposition, [status(thm), theory('equality')], [c_123, c_101])).
% 2.09/1.32  tff(c_193, plain, (![A_36, B_37, C_38]: (k2_xboole_0(k1_tarski(A_36), k2_tarski(B_37, C_38))=k1_enumset1(A_36, B_37, C_38))), inference(cnfTransformation, [status(thm)], [f_29])).
% 2.09/1.32  tff(c_640, plain, (![A_62, C_63, A_64]: (k2_xboole_0(k1_tarski(A_62), k2_tarski(C_63, A_64))=k1_enumset1(A_62, A_64, C_63))), inference(superposition, [status(thm), theory('equality')], [c_129, c_193])).
% 2.09/1.32  tff(c_4, plain, (![A_3, B_4, C_5]: (k2_xboole_0(k1_tarski(A_3), k2_tarski(B_4, C_5))=k1_enumset1(A_3, B_4, C_5))), inference(cnfTransformation, [status(thm)], [f_29])).
% 2.09/1.32  tff(c_649, plain, (![A_62, C_63, A_64]: (k1_enumset1(A_62, C_63, A_64)=k1_enumset1(A_62, A_64, C_63))), inference(superposition, [status(thm), theory('equality')], [c_640, c_4])).
% 2.09/1.32  tff(c_16, plain, (k1_enumset1('#skF_1', '#skF_2', '#skF_3')!=k1_enumset1('#skF_1', '#skF_3', '#skF_2')), inference(cnfTransformation, [status(thm)], [f_42])).
% 2.09/1.32  tff(c_687, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_649, c_16])).
% 2.09/1.32  % SZS output end CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.09/1.32  
% 2.09/1.32  Inference rules
% 2.09/1.32  ----------------------
% 2.09/1.32  #Ref     : 0
% 2.09/1.32  #Sup     : 163
% 2.09/1.32  #Fact    : 0
% 2.09/1.32  #Define  : 0
% 2.09/1.32  #Split   : 0
% 2.09/1.32  #Chain   : 0
% 2.09/1.32  #Close   : 0
% 2.09/1.32  
% 2.09/1.32  Ordering : KBO
% 2.09/1.32  
% 2.09/1.32  Simplification rules
% 2.09/1.32  ----------------------
% 2.09/1.32  #Subsume      : 16
% 2.09/1.32  #Demod        : 100
% 2.09/1.32  #Tautology    : 120
% 2.09/1.32  #SimpNegUnit  : 0
% 2.09/1.32  #BackRed      : 1
% 2.09/1.32  
% 2.09/1.32  #Partial instantiations: 0
% 2.09/1.32  #Strategies tried      : 1
% 2.09/1.32  
% 2.09/1.32  Timing (in seconds)
% 2.09/1.32  ----------------------
% 2.45/1.32  Preprocessing        : 0.28
% 2.45/1.32  Parsing              : 0.14
% 2.45/1.32  CNF conversion       : 0.02
% 2.45/1.32  Main loop            : 0.28
% 2.45/1.32  Inferencing          : 0.11
% 2.45/1.32  Reduction            : 0.11
% 2.45/1.32  Demodulation         : 0.09
% 2.45/1.32  BG Simplification    : 0.01
% 2.45/1.33  Subsumption          : 0.04
% 2.45/1.33  Abstraction          : 0.02
% 2.45/1.33  MUC search           : 0.00
% 2.45/1.33  Cooper               : 0.00
% 2.45/1.33  Total                : 0.59
% 2.45/1.33  Index Insertion      : 0.00
% 2.45/1.33  Index Deletion       : 0.00
% 2.45/1.33  Index Matching       : 0.00
% 2.45/1.33  BG Taut test         : 0.00
%------------------------------------------------------------------------------
