%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:42:49 EST 2020

% Result     : Theorem 1.54s
% Output     : CNFRefutation 1.54s
% Verified   : 
% Statistics : Number of formulae       :   21 (  23 expanded)
%              Number of leaves         :   13 (  15 expanded)
%              Depth                    :    3
%              Number of atoms          :   15 (  19 expanded)
%              Number of equality atoms :    7 (   8 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r1_tarski > k4_xboole_0 > k2_xboole_0 > #nlpp > k1_xboole_0 > #skF_2 > #skF_3 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(k4_xboole_0,type,(
    k4_xboole_0: ( $i * $i ) > $i )).

tff(k1_xboole_0,type,(
    k1_xboole_0: $i )).

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

tff(k2_xboole_0,type,(
    k2_xboole_0: ( $i * $i ) > $i )).

tff(f_36,negated_conjecture,(
    ~ ! [A,B,C] :
        ( r1_tarski(A,k2_xboole_0(B,C))
       => r1_tarski(k4_xboole_0(A,B),C) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t43_xboole_1)).

tff(f_29,axiom,(
    ! [A,B] :
      ( k4_xboole_0(A,B) = k1_xboole_0
    <=> r1_tarski(A,B) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t37_xboole_1)).

tff(f_31,axiom,(
    ! [A,B,C] : k4_xboole_0(k4_xboole_0(A,B),C) = k4_xboole_0(A,k2_xboole_0(B,C)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).

tff(c_10,plain,(
    r1_tarski('#skF_1',k2_xboole_0('#skF_2','#skF_3')) ),
    inference(cnfTransformation,[status(thm)],[f_36])).

tff(c_11,plain,(
    ! [A_6,B_7] :
      ( k4_xboole_0(A_6,B_7) = k1_xboole_0
      | ~ r1_tarski(A_6,B_7) ) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_15,plain,(
    k4_xboole_0('#skF_1',k2_xboole_0('#skF_2','#skF_3')) = k1_xboole_0 ),
    inference(resolution,[status(thm)],[c_10,c_11])).

tff(c_6,plain,(
    ! [A_3,B_4,C_5] : k4_xboole_0(k4_xboole_0(A_3,B_4),C_5) = k4_xboole_0(A_3,k2_xboole_0(B_4,C_5)) ),
    inference(cnfTransformation,[status(thm)],[f_31])).

tff(c_20,plain,(
    ! [A_8,B_9] :
      ( r1_tarski(A_8,B_9)
      | k4_xboole_0(A_8,B_9) != k1_xboole_0 ) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_8,plain,(
    ~ r1_tarski(k4_xboole_0('#skF_1','#skF_2'),'#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_36])).

tff(c_28,plain,(
    k4_xboole_0(k4_xboole_0('#skF_1','#skF_2'),'#skF_3') != k1_xboole_0 ),
    inference(resolution,[status(thm)],[c_20,c_8])).

tff(c_50,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_15,c_6,c_28])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.12/0.33  % Computer   : n001.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % DateTime   : Tue Dec  1 14:11:45 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.54/1.15  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.54/1.16  
% 1.54/1.16  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.54/1.16  %$ r1_tarski > k4_xboole_0 > k2_xboole_0 > #nlpp > k1_xboole_0 > #skF_2 > #skF_3 > #skF_1
% 1.54/1.16  
% 1.54/1.16  %Foreground sorts:
% 1.54/1.16  
% 1.54/1.16  
% 1.54/1.16  %Background operators:
% 1.54/1.16  
% 1.54/1.16  
% 1.54/1.16  %Foreground operators:
% 1.54/1.16  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 1.54/1.16  tff(k4_xboole_0, type, k4_xboole_0: ($i * $i) > $i).
% 1.54/1.16  tff(k1_xboole_0, type, k1_xboole_0: $i).
% 1.54/1.16  tff(r1_tarski, type, r1_tarski: ($i * $i) > $o).
% 1.54/1.16  tff('#skF_2', type, '#skF_2': $i).
% 1.54/1.16  tff('#skF_3', type, '#skF_3': $i).
% 1.54/1.16  tff('#skF_1', type, '#skF_1': $i).
% 1.54/1.16  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 1.54/1.16  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 1.54/1.16  tff(k2_xboole_0, type, k2_xboole_0: ($i * $i) > $i).
% 1.54/1.16  
% 1.54/1.16  tff(f_36, negated_conjecture, ~(![A, B, C]: (r1_tarski(A, k2_xboole_0(B, C)) => r1_tarski(k4_xboole_0(A, B), C))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t43_xboole_1)).
% 1.54/1.16  tff(f_29, axiom, (![A, B]: ((k4_xboole_0(A, B) = k1_xboole_0) <=> r1_tarski(A, B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t37_xboole_1)).
% 1.54/1.16  tff(f_31, axiom, (![A, B, C]: (k4_xboole_0(k4_xboole_0(A, B), C) = k4_xboole_0(A, k2_xboole_0(B, C)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_xboole_1)).
% 1.54/1.16  tff(c_10, plain, (r1_tarski('#skF_1', k2_xboole_0('#skF_2', '#skF_3'))), inference(cnfTransformation, [status(thm)], [f_36])).
% 1.54/1.16  tff(c_11, plain, (![A_6, B_7]: (k4_xboole_0(A_6, B_7)=k1_xboole_0 | ~r1_tarski(A_6, B_7))), inference(cnfTransformation, [status(thm)], [f_29])).
% 1.54/1.16  tff(c_15, plain, (k4_xboole_0('#skF_1', k2_xboole_0('#skF_2', '#skF_3'))=k1_xboole_0), inference(resolution, [status(thm)], [c_10, c_11])).
% 1.54/1.16  tff(c_6, plain, (![A_3, B_4, C_5]: (k4_xboole_0(k4_xboole_0(A_3, B_4), C_5)=k4_xboole_0(A_3, k2_xboole_0(B_4, C_5)))), inference(cnfTransformation, [status(thm)], [f_31])).
% 1.54/1.16  tff(c_20, plain, (![A_8, B_9]: (r1_tarski(A_8, B_9) | k4_xboole_0(A_8, B_9)!=k1_xboole_0)), inference(cnfTransformation, [status(thm)], [f_29])).
% 1.54/1.16  tff(c_8, plain, (~r1_tarski(k4_xboole_0('#skF_1', '#skF_2'), '#skF_3')), inference(cnfTransformation, [status(thm)], [f_36])).
% 1.54/1.16  tff(c_28, plain, (k4_xboole_0(k4_xboole_0('#skF_1', '#skF_2'), '#skF_3')!=k1_xboole_0), inference(resolution, [status(thm)], [c_20, c_8])).
% 1.54/1.16  tff(c_50, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_15, c_6, c_28])).
% 1.54/1.16  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.54/1.16  
% 1.54/1.16  Inference rules
% 1.54/1.16  ----------------------
% 1.54/1.16  #Ref     : 0
% 1.54/1.16  #Sup     : 10
% 1.54/1.16  #Fact    : 0
% 1.54/1.16  #Define  : 0
% 1.54/1.16  #Split   : 0
% 1.54/1.16  #Chain   : 0
% 1.54/1.16  #Close   : 0
% 1.54/1.16  
% 1.54/1.16  Ordering : KBO
% 1.54/1.16  
% 1.54/1.16  Simplification rules
% 1.54/1.16  ----------------------
% 1.54/1.16  #Subsume      : 0
% 1.54/1.16  #Demod        : 6
% 1.54/1.16  #Tautology    : 5
% 1.54/1.16  #SimpNegUnit  : 0
% 1.54/1.16  #BackRed      : 0
% 1.54/1.16  
% 1.54/1.16  #Partial instantiations: 0
% 1.54/1.16  #Strategies tried      : 1
% 1.54/1.16  
% 1.54/1.16  Timing (in seconds)
% 1.54/1.17  ----------------------
% 1.54/1.17  Preprocessing        : 0.27
% 1.54/1.17  Parsing              : 0.15
% 1.54/1.17  CNF conversion       : 0.02
% 1.54/1.17  Main loop            : 0.09
% 1.54/1.17  Inferencing          : 0.04
% 1.54/1.17  Reduction            : 0.03
% 1.54/1.17  Demodulation         : 0.02
% 1.54/1.17  BG Simplification    : 0.01
% 1.54/1.17  Subsumption          : 0.01
% 1.54/1.17  Abstraction          : 0.01
% 1.54/1.17  MUC search           : 0.00
% 1.54/1.17  Cooper               : 0.00
% 1.54/1.17  Total                : 0.38
% 1.54/1.17  Index Insertion      : 0.00
% 1.54/1.17  Index Deletion       : 0.00
% 1.54/1.17  Index Matching       : 0.00
% 1.54/1.17  BG Taut test         : 0.00
%------------------------------------------------------------------------------
