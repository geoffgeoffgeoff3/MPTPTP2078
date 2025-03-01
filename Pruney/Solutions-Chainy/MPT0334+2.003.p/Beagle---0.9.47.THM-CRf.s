%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:54:51 EST 2020

% Result     : Theorem 3.59s
% Output     : CNFRefutation 3.94s
% Verified   : 
% Statistics : Number of formulae       :   34 (  37 expanded)
%              Number of leaves         :   22 (  24 expanded)
%              Depth                    :    6
%              Number of atoms          :   25 (  29 expanded)
%              Number of equality atoms :   17 (  21 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > k2_enumset1 > k1_enumset1 > k5_xboole_0 > k4_xboole_0 > k3_xboole_0 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_5 > #skF_3 > #skF_4 > #skF_2 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff(k1_tarski,type,(
    k1_tarski: $i > $i )).

tff(k4_xboole_0,type,(
    k4_xboole_0: ( $i * $i ) > $i )).

tff(k5_xboole_0,type,(
    k5_xboole_0: ( $i * $i ) > $i )).

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

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i ) > $i )).

tff(k3_xboole_0,type,(
    k3_xboole_0: ( $i * $i ) > $i )).

tff(k2_xboole_0,type,(
    k2_xboole_0: ( $i * $i ) > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i ) > $i )).

tff(f_57,negated_conjecture,(
    ~ ! [A,B,C] :
        ( A != B
       => k4_xboole_0(k2_xboole_0(C,k1_tarski(A)),k1_tarski(B)) = k2_xboole_0(k4_xboole_0(C,k1_tarski(B)),k1_tarski(A)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t147_zfmisc_1)).

tff(f_27,axiom,(
    ! [A,B] : k2_xboole_0(A,B) = k2_xboole_0(B,A) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

tff(f_51,axiom,(
    ! [A,B] :
      ( k4_xboole_0(k1_tarski(A),B) = k1_tarski(A)
    <=> ~ r2_hidden(A,B) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l33_zfmisc_1)).

tff(f_31,axiom,(
    ! [A,B,C] : k4_xboole_0(k2_xboole_0(A,B),C) = k2_xboole_0(k4_xboole_0(A,C),k4_xboole_0(B,C)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_xboole_1)).

tff(f_40,axiom,(
    ! [A,B] :
      ( B = k1_tarski(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> C = A ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).

tff(c_34,plain,(
    '#skF_3' != '#skF_4' ),
    inference(cnfTransformation,[status(thm)],[f_57])).

tff(c_2,plain,(
    ! [B_2,A_1] : k2_xboole_0(B_2,A_1) = k2_xboole_0(A_1,B_2) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_30,plain,(
    ! [A_21,B_22] :
      ( k4_xboole_0(k1_tarski(A_21),B_22) = k1_tarski(A_21)
      | r2_hidden(A_21,B_22) ) ),
    inference(cnfTransformation,[status(thm)],[f_51])).

tff(c_155,plain,(
    ! [A_50,C_51,B_52] : k2_xboole_0(k4_xboole_0(A_50,C_51),k4_xboole_0(B_52,C_51)) = k4_xboole_0(k2_xboole_0(A_50,B_52),C_51) ),
    inference(cnfTransformation,[status(thm)],[f_31])).

tff(c_1491,plain,(
    ! [A_86,A_87,B_88] :
      ( k4_xboole_0(k2_xboole_0(A_86,k1_tarski(A_87)),B_88) = k2_xboole_0(k4_xboole_0(A_86,B_88),k1_tarski(A_87))
      | r2_hidden(A_87,B_88) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_30,c_155])).

tff(c_32,plain,(
    k4_xboole_0(k2_xboole_0('#skF_5',k1_tarski('#skF_3')),k1_tarski('#skF_4')) != k2_xboole_0(k4_xboole_0('#skF_5',k1_tarski('#skF_4')),k1_tarski('#skF_3')) ),
    inference(cnfTransformation,[status(thm)],[f_57])).

tff(c_35,plain,(
    k4_xboole_0(k2_xboole_0('#skF_5',k1_tarski('#skF_3')),k1_tarski('#skF_4')) != k2_xboole_0(k1_tarski('#skF_3'),k4_xboole_0('#skF_5',k1_tarski('#skF_4'))) ),
    inference(demodulation,[status(thm),theory(equality)],[c_2,c_32])).

tff(c_1534,plain,
    ( k2_xboole_0(k4_xboole_0('#skF_5',k1_tarski('#skF_4')),k1_tarski('#skF_3')) != k2_xboole_0(k1_tarski('#skF_3'),k4_xboole_0('#skF_5',k1_tarski('#skF_4')))
    | r2_hidden('#skF_3',k1_tarski('#skF_4')) ),
    inference(superposition,[status(thm),theory(equality)],[c_1491,c_35])).

tff(c_1575,plain,(
    r2_hidden('#skF_3',k1_tarski('#skF_4')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_2,c_1534])).

tff(c_10,plain,(
    ! [C_14,A_10] :
      ( C_14 = A_10
      | ~ r2_hidden(C_14,k1_tarski(A_10)) ) ),
    inference(cnfTransformation,[status(thm)],[f_40])).

tff(c_1579,plain,(
    '#skF_3' = '#skF_4' ),
    inference(resolution,[status(thm)],[c_1575,c_10])).

tff(c_1583,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_34,c_1579])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.12/0.33  % Computer   : n008.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % DateTime   : Tue Dec  1 15:43:30 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 3.59/1.64  % SZS status Theorem for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.59/1.64  
% 3.59/1.64  % SZS output start CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.59/1.64  %$ r2_hidden > k2_enumset1 > k1_enumset1 > k5_xboole_0 > k4_xboole_0 > k3_xboole_0 > k2_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_5 > #skF_3 > #skF_4 > #skF_2 > #skF_1
% 3.59/1.64  
% 3.59/1.64  %Foreground sorts:
% 3.59/1.64  
% 3.59/1.64  
% 3.59/1.64  %Background operators:
% 3.59/1.64  
% 3.59/1.64  
% 3.59/1.64  %Foreground operators:
% 3.59/1.64  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 3.59/1.64  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 3.59/1.64  tff(k1_tarski, type, k1_tarski: $i > $i).
% 3.59/1.64  tff(k4_xboole_0, type, k4_xboole_0: ($i * $i) > $i).
% 3.59/1.64  tff(k5_xboole_0, type, k5_xboole_0: ($i * $i) > $i).
% 3.59/1.64  tff(k2_enumset1, type, k2_enumset1: ($i * $i * $i * $i) > $i).
% 3.59/1.64  tff(k2_tarski, type, k2_tarski: ($i * $i) > $i).
% 3.59/1.64  tff('#skF_5', type, '#skF_5': $i).
% 3.59/1.64  tff(k1_enumset1, type, k1_enumset1: ($i * $i * $i) > $i).
% 3.59/1.64  tff('#skF_3', type, '#skF_3': $i).
% 3.59/1.64  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 3.59/1.64  tff('#skF_4', type, '#skF_4': $i).
% 3.59/1.64  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 3.59/1.64  tff('#skF_2', type, '#skF_2': ($i * $i) > $i).
% 3.59/1.64  tff(k3_xboole_0, type, k3_xboole_0: ($i * $i) > $i).
% 3.59/1.64  tff(k2_xboole_0, type, k2_xboole_0: ($i * $i) > $i).
% 3.59/1.64  tff('#skF_1', type, '#skF_1': ($i * $i) > $i).
% 3.59/1.64  
% 3.94/1.65  tff(f_57, negated_conjecture, ~(![A, B, C]: (~(A = B) => (k4_xboole_0(k2_xboole_0(C, k1_tarski(A)), k1_tarski(B)) = k2_xboole_0(k4_xboole_0(C, k1_tarski(B)), k1_tarski(A))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t147_zfmisc_1)).
% 3.94/1.65  tff(f_27, axiom, (![A, B]: (k2_xboole_0(A, B) = k2_xboole_0(B, A))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 3.94/1.65  tff(f_51, axiom, (![A, B]: ((k4_xboole_0(k1_tarski(A), B) = k1_tarski(A)) <=> ~r2_hidden(A, B))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l33_zfmisc_1)).
% 3.94/1.65  tff(f_31, axiom, (![A, B, C]: (k4_xboole_0(k2_xboole_0(A, B), C) = k2_xboole_0(k4_xboole_0(A, C), k4_xboole_0(B, C)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t42_xboole_1)).
% 3.94/1.65  tff(f_40, axiom, (![A, B]: ((B = k1_tarski(A)) <=> (![C]: (r2_hidden(C, B) <=> (C = A))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tarski)).
% 3.94/1.65  tff(c_34, plain, ('#skF_3'!='#skF_4'), inference(cnfTransformation, [status(thm)], [f_57])).
% 3.94/1.65  tff(c_2, plain, (![B_2, A_1]: (k2_xboole_0(B_2, A_1)=k2_xboole_0(A_1, B_2))), inference(cnfTransformation, [status(thm)], [f_27])).
% 3.94/1.65  tff(c_30, plain, (![A_21, B_22]: (k4_xboole_0(k1_tarski(A_21), B_22)=k1_tarski(A_21) | r2_hidden(A_21, B_22))), inference(cnfTransformation, [status(thm)], [f_51])).
% 3.94/1.65  tff(c_155, plain, (![A_50, C_51, B_52]: (k2_xboole_0(k4_xboole_0(A_50, C_51), k4_xboole_0(B_52, C_51))=k4_xboole_0(k2_xboole_0(A_50, B_52), C_51))), inference(cnfTransformation, [status(thm)], [f_31])).
% 3.94/1.65  tff(c_1491, plain, (![A_86, A_87, B_88]: (k4_xboole_0(k2_xboole_0(A_86, k1_tarski(A_87)), B_88)=k2_xboole_0(k4_xboole_0(A_86, B_88), k1_tarski(A_87)) | r2_hidden(A_87, B_88))), inference(superposition, [status(thm), theory('equality')], [c_30, c_155])).
% 3.94/1.65  tff(c_32, plain, (k4_xboole_0(k2_xboole_0('#skF_5', k1_tarski('#skF_3')), k1_tarski('#skF_4'))!=k2_xboole_0(k4_xboole_0('#skF_5', k1_tarski('#skF_4')), k1_tarski('#skF_3'))), inference(cnfTransformation, [status(thm)], [f_57])).
% 3.94/1.65  tff(c_35, plain, (k4_xboole_0(k2_xboole_0('#skF_5', k1_tarski('#skF_3')), k1_tarski('#skF_4'))!=k2_xboole_0(k1_tarski('#skF_3'), k4_xboole_0('#skF_5', k1_tarski('#skF_4')))), inference(demodulation, [status(thm), theory('equality')], [c_2, c_32])).
% 3.94/1.65  tff(c_1534, plain, (k2_xboole_0(k4_xboole_0('#skF_5', k1_tarski('#skF_4')), k1_tarski('#skF_3'))!=k2_xboole_0(k1_tarski('#skF_3'), k4_xboole_0('#skF_5', k1_tarski('#skF_4'))) | r2_hidden('#skF_3', k1_tarski('#skF_4'))), inference(superposition, [status(thm), theory('equality')], [c_1491, c_35])).
% 3.94/1.65  tff(c_1575, plain, (r2_hidden('#skF_3', k1_tarski('#skF_4'))), inference(demodulation, [status(thm), theory('equality')], [c_2, c_1534])).
% 3.94/1.65  tff(c_10, plain, (![C_14, A_10]: (C_14=A_10 | ~r2_hidden(C_14, k1_tarski(A_10)))), inference(cnfTransformation, [status(thm)], [f_40])).
% 3.94/1.65  tff(c_1579, plain, ('#skF_3'='#skF_4'), inference(resolution, [status(thm)], [c_1575, c_10])).
% 3.94/1.65  tff(c_1583, plain, $false, inference(negUnitSimplification, [status(thm)], [c_34, c_1579])).
% 3.94/1.65  % SZS output end CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.94/1.65  
% 3.94/1.65  Inference rules
% 3.94/1.65  ----------------------
% 3.94/1.65  #Ref     : 0
% 3.94/1.65  #Sup     : 428
% 3.94/1.65  #Fact    : 0
% 3.94/1.65  #Define  : 0
% 3.94/1.65  #Split   : 0
% 3.94/1.65  #Chain   : 0
% 3.94/1.65  #Close   : 0
% 3.94/1.65  
% 3.94/1.65  Ordering : KBO
% 3.94/1.65  
% 3.94/1.65  Simplification rules
% 3.94/1.65  ----------------------
% 3.94/1.65  #Subsume      : 39
% 3.94/1.65  #Demod        : 44
% 3.94/1.65  #Tautology    : 134
% 3.94/1.65  #SimpNegUnit  : 1
% 3.94/1.65  #BackRed      : 0
% 3.94/1.65  
% 3.94/1.65  #Partial instantiations: 0
% 3.94/1.65  #Strategies tried      : 1
% 3.94/1.65  
% 3.94/1.65  Timing (in seconds)
% 3.94/1.65  ----------------------
% 3.94/1.65  Preprocessing        : 0.30
% 3.94/1.65  Parsing              : 0.15
% 3.94/1.65  CNF conversion       : 0.02
% 3.94/1.65  Main loop            : 0.61
% 3.94/1.65  Inferencing          : 0.21
% 3.94/1.65  Reduction            : 0.26
% 3.94/1.65  Demodulation         : 0.23
% 3.94/1.65  BG Simplification    : 0.04
% 3.94/1.65  Subsumption          : 0.07
% 3.94/1.66  Abstraction          : 0.04
% 3.94/1.66  MUC search           : 0.00
% 3.94/1.66  Cooper               : 0.00
% 3.94/1.66  Total                : 0.93
% 3.94/1.66  Index Insertion      : 0.00
% 3.94/1.66  Index Deletion       : 0.00
% 3.94/1.66  Index Matching       : 0.00
% 3.94/1.66  BG Taut test         : 0.00
%------------------------------------------------------------------------------
