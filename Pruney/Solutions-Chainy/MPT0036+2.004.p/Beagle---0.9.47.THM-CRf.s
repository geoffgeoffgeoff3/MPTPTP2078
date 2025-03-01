%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:42:40 EST 2020

% Result     : Theorem 1.64s
% Output     : CNFRefutation 1.88s
% Verified   : 
% Statistics : Number of formulae       :   23 (  23 expanded)
%              Number of leaves         :   14 (  14 expanded)
%              Depth                    :    5
%              Number of atoms          :   16 (  16 expanded)
%              Number of equality atoms :    4 (   4 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r1_tarski > k3_xboole_0 > k2_xboole_0 > #nlpp > #skF_2 > #skF_3 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r1_tarski,type,(
    r1_tarski: ( $i * $i ) > $o )).

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

tff(k3_xboole_0,type,(
    k3_xboole_0: ( $i * $i ) > $i )).

tff(k2_xboole_0,type,(
    k2_xboole_0: ( $i * $i ) > $i )).

tff(f_35,axiom,(
    ! [A,B] : k3_xboole_0(A,k2_xboole_0(A,B)) = A ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t21_xboole_1)).

tff(f_27,axiom,(
    ! [A,B] : k3_xboole_0(A,B) = k3_xboole_0(B,A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

tff(f_29,axiom,(
    ! [A,B] : r1_tarski(k3_xboole_0(A,B),A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).

tff(f_33,axiom,(
    ! [A,B,C] :
      ( r1_tarski(A,k3_xboole_0(B,C))
     => r1_tarski(A,B) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t18_xboole_1)).

tff(f_38,negated_conjecture,(
    ~ ! [A,B,C] : r1_tarski(k3_xboole_0(A,B),k2_xboole_0(A,C)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t29_xboole_1)).

tff(c_8,plain,(
    ! [A_8,B_9] : k3_xboole_0(A_8,k2_xboole_0(A_8,B_9)) = A_8 ),
    inference(cnfTransformation,[status(thm)],[f_35])).

tff(c_2,plain,(
    ! [B_2,A_1] : k3_xboole_0(B_2,A_1) = k3_xboole_0(A_1,B_2) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_4,plain,(
    ! [A_3,B_4] : r1_tarski(k3_xboole_0(A_3,B_4),A_3) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_78,plain,(
    ! [A_21,B_22,C_23] :
      ( r1_tarski(A_21,B_22)
      | ~ r1_tarski(A_21,k3_xboole_0(B_22,C_23)) ) ),
    inference(cnfTransformation,[status(thm)],[f_33])).

tff(c_104,plain,(
    ! [B_24,C_25,B_26] : r1_tarski(k3_xboole_0(k3_xboole_0(B_24,C_25),B_26),B_24) ),
    inference(resolution,[status(thm)],[c_4,c_78])).

tff(c_159,plain,(
    ! [B_30,A_31,B_32] : r1_tarski(k3_xboole_0(k3_xboole_0(B_30,A_31),B_32),A_31) ),
    inference(superposition,[status(thm),theory(equality)],[c_2,c_104])).

tff(c_166,plain,(
    ! [A_8,B_32,B_9] : r1_tarski(k3_xboole_0(A_8,B_32),k2_xboole_0(A_8,B_9)) ),
    inference(superposition,[status(thm),theory(equality)],[c_8,c_159])).

tff(c_10,plain,(
    ~ r1_tarski(k3_xboole_0('#skF_1','#skF_2'),k2_xboole_0('#skF_1','#skF_3')) ),
    inference(cnfTransformation,[status(thm)],[f_38])).

tff(c_272,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_166,c_10])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.14/0.34  % Computer   : n013.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 13:48:39 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.64/1.16  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.64/1.16  
% 1.64/1.16  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.88/1.16  %$ r1_tarski > k3_xboole_0 > k2_xboole_0 > #nlpp > #skF_2 > #skF_3 > #skF_1
% 1.88/1.16  
% 1.88/1.16  %Foreground sorts:
% 1.88/1.16  
% 1.88/1.16  
% 1.88/1.16  %Background operators:
% 1.88/1.16  
% 1.88/1.16  
% 1.88/1.16  %Foreground operators:
% 1.88/1.16  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 1.88/1.16  tff(r1_tarski, type, r1_tarski: ($i * $i) > $o).
% 1.88/1.16  tff('#skF_2', type, '#skF_2': $i).
% 1.88/1.16  tff('#skF_3', type, '#skF_3': $i).
% 1.88/1.16  tff('#skF_1', type, '#skF_1': $i).
% 1.88/1.16  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 1.88/1.16  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 1.88/1.16  tff(k3_xboole_0, type, k3_xboole_0: ($i * $i) > $i).
% 1.88/1.16  tff(k2_xboole_0, type, k2_xboole_0: ($i * $i) > $i).
% 1.88/1.16  
% 1.88/1.17  tff(f_35, axiom, (![A, B]: (k3_xboole_0(A, k2_xboole_0(A, B)) = A)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t21_xboole_1)).
% 1.88/1.17  tff(f_27, axiom, (![A, B]: (k3_xboole_0(A, B) = k3_xboole_0(B, A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 1.88/1.17  tff(f_29, axiom, (![A, B]: r1_tarski(k3_xboole_0(A, B), A)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t17_xboole_1)).
% 1.88/1.17  tff(f_33, axiom, (![A, B, C]: (r1_tarski(A, k3_xboole_0(B, C)) => r1_tarski(A, B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t18_xboole_1)).
% 1.88/1.17  tff(f_38, negated_conjecture, ~(![A, B, C]: r1_tarski(k3_xboole_0(A, B), k2_xboole_0(A, C))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_xboole_1)).
% 1.88/1.17  tff(c_8, plain, (![A_8, B_9]: (k3_xboole_0(A_8, k2_xboole_0(A_8, B_9))=A_8)), inference(cnfTransformation, [status(thm)], [f_35])).
% 1.88/1.17  tff(c_2, plain, (![B_2, A_1]: (k3_xboole_0(B_2, A_1)=k3_xboole_0(A_1, B_2))), inference(cnfTransformation, [status(thm)], [f_27])).
% 1.88/1.17  tff(c_4, plain, (![A_3, B_4]: (r1_tarski(k3_xboole_0(A_3, B_4), A_3))), inference(cnfTransformation, [status(thm)], [f_29])).
% 1.88/1.17  tff(c_78, plain, (![A_21, B_22, C_23]: (r1_tarski(A_21, B_22) | ~r1_tarski(A_21, k3_xboole_0(B_22, C_23)))), inference(cnfTransformation, [status(thm)], [f_33])).
% 1.88/1.17  tff(c_104, plain, (![B_24, C_25, B_26]: (r1_tarski(k3_xboole_0(k3_xboole_0(B_24, C_25), B_26), B_24))), inference(resolution, [status(thm)], [c_4, c_78])).
% 1.88/1.17  tff(c_159, plain, (![B_30, A_31, B_32]: (r1_tarski(k3_xboole_0(k3_xboole_0(B_30, A_31), B_32), A_31))), inference(superposition, [status(thm), theory('equality')], [c_2, c_104])).
% 1.88/1.17  tff(c_166, plain, (![A_8, B_32, B_9]: (r1_tarski(k3_xboole_0(A_8, B_32), k2_xboole_0(A_8, B_9)))), inference(superposition, [status(thm), theory('equality')], [c_8, c_159])).
% 1.88/1.17  tff(c_10, plain, (~r1_tarski(k3_xboole_0('#skF_1', '#skF_2'), k2_xboole_0('#skF_1', '#skF_3'))), inference(cnfTransformation, [status(thm)], [f_38])).
% 1.88/1.17  tff(c_272, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_166, c_10])).
% 1.88/1.17  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.88/1.17  
% 1.88/1.17  Inference rules
% 1.88/1.17  ----------------------
% 1.88/1.17  #Ref     : 0
% 1.88/1.17  #Sup     : 58
% 1.88/1.17  #Fact    : 0
% 1.88/1.17  #Define  : 0
% 1.88/1.17  #Split   : 0
% 1.88/1.17  #Chain   : 0
% 1.88/1.17  #Close   : 0
% 1.88/1.17  
% 1.88/1.17  Ordering : KBO
% 1.88/1.17  
% 1.88/1.17  Simplification rules
% 1.88/1.17  ----------------------
% 1.88/1.17  #Subsume      : 2
% 1.88/1.17  #Demod        : 26
% 1.88/1.17  #Tautology    : 36
% 1.88/1.17  #SimpNegUnit  : 0
% 1.88/1.17  #BackRed      : 1
% 1.88/1.17  
% 1.88/1.17  #Partial instantiations: 0
% 1.88/1.17  #Strategies tried      : 1
% 1.88/1.17  
% 1.88/1.17  Timing (in seconds)
% 1.88/1.17  ----------------------
% 1.88/1.17  Preprocessing        : 0.24
% 1.88/1.17  Parsing              : 0.14
% 1.88/1.17  CNF conversion       : 0.01
% 1.88/1.17  Main loop            : 0.17
% 1.88/1.17  Inferencing          : 0.06
% 1.88/1.17  Reduction            : 0.07
% 1.88/1.17  Demodulation         : 0.06
% 1.88/1.17  BG Simplification    : 0.01
% 1.88/1.17  Subsumption          : 0.03
% 1.88/1.17  Abstraction          : 0.01
% 1.88/1.17  MUC search           : 0.00
% 1.88/1.17  Cooper               : 0.00
% 1.88/1.17  Total                : 0.44
% 1.88/1.17  Index Insertion      : 0.00
% 1.88/1.17  Index Deletion       : 0.00
% 1.88/1.17  Index Matching       : 0.00
% 1.88/1.17  BG Taut test         : 0.00
%------------------------------------------------------------------------------
