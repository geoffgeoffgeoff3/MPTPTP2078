%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:48:26 EST 2020

% Result     : Theorem 1.84s
% Output     : CNFRefutation 1.84s
% Verified   : 
% Statistics : Number of formulae       :   28 (  30 expanded)
%              Number of leaves         :   19 (  21 expanded)
%              Depth                    :    5
%              Number of atoms          :   21 (  26 expanded)
%              Number of equality atoms :    9 (  13 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > k2_enumset1 > k1_enumset1 > k4_xboole_0 > k3_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_1 > #skF_3 > #skF_5 > #skF_6 > #skF_2 > #skF_4

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

tff(k4_xboole_0,type,(
    k4_xboole_0: ( $i * $i ) > $i )).

tff('#skF_3',type,(
    '#skF_3': ( $i * $i ) > $i )).

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
    '#skF_2': ( $i * $i * $i ) > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(k3_xboole_0,type,(
    k3_xboole_0: ( $i * $i ) > $i )).

tff('#skF_4',type,(
    '#skF_4': ( $i * $i ) > $i )).

tff(f_54,negated_conjecture,(
    ~ ! [A,B] :
        ( k3_xboole_0(k1_tarski(A),k1_tarski(B)) = k1_tarski(A)
       => A = B ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t18_zfmisc_1)).

tff(f_43,axiom,(
    ! [A,B] :
      ( B = k1_tarski(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> C = A ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_tarski)).

tff(f_34,axiom,(
    ! [A,B,C] :
      ( C = k3_xboole_0(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,A)
            & r2_hidden(D,B) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_xboole_0)).

tff(c_40,plain,(
    '#skF_5' != '#skF_6' ),
    inference(cnfTransformation,[status(thm)],[f_54])).

tff(c_24,plain,(
    ! [C_13] : r2_hidden(C_13,k1_tarski(C_13)) ),
    inference(cnfTransformation,[status(thm)],[f_43])).

tff(c_42,plain,(
    k3_xboole_0(k1_tarski('#skF_5'),k1_tarski('#skF_6')) = k1_tarski('#skF_5') ),
    inference(cnfTransformation,[status(thm)],[f_54])).

tff(c_87,plain,(
    ! [D_28,B_29,A_30] :
      ( r2_hidden(D_28,B_29)
      | ~ r2_hidden(D_28,k3_xboole_0(A_30,B_29)) ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_95,plain,(
    ! [D_34] :
      ( r2_hidden(D_34,k1_tarski('#skF_6'))
      | ~ r2_hidden(D_34,k1_tarski('#skF_5')) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_42,c_87])).

tff(c_100,plain,(
    r2_hidden('#skF_5',k1_tarski('#skF_6')) ),
    inference(resolution,[status(thm)],[c_24,c_95])).

tff(c_22,plain,(
    ! [C_13,A_9] :
      ( C_13 = A_9
      | ~ r2_hidden(C_13,k1_tarski(A_9)) ) ),
    inference(cnfTransformation,[status(thm)],[f_43])).

tff(c_103,plain,(
    '#skF_5' = '#skF_6' ),
    inference(resolution,[status(thm)],[c_100,c_22])).

tff(c_107,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_40,c_103])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.14/0.34  % Computer   : n019.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 13:43:07 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.84/1.20  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.84/1.20  
% 1.84/1.20  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.84/1.20  %$ r2_hidden > k2_enumset1 > k1_enumset1 > k4_xboole_0 > k3_xboole_0 > k2_tarski > #nlpp > k1_tarski > #skF_1 > #skF_3 > #skF_5 > #skF_6 > #skF_2 > #skF_4
% 1.84/1.20  
% 1.84/1.20  %Foreground sorts:
% 1.84/1.20  
% 1.84/1.20  
% 1.84/1.20  %Background operators:
% 1.84/1.20  
% 1.84/1.20  
% 1.84/1.20  %Foreground operators:
% 1.84/1.20  tff('#skF_1', type, '#skF_1': ($i * $i * $i) > $i).
% 1.84/1.20  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 1.84/1.20  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 1.84/1.20  tff(k1_tarski, type, k1_tarski: $i > $i).
% 1.84/1.20  tff(k4_xboole_0, type, k4_xboole_0: ($i * $i) > $i).
% 1.84/1.20  tff('#skF_3', type, '#skF_3': ($i * $i) > $i).
% 1.84/1.20  tff(k2_enumset1, type, k2_enumset1: ($i * $i * $i * $i) > $i).
% 1.84/1.20  tff(k2_tarski, type, k2_tarski: ($i * $i) > $i).
% 1.84/1.20  tff('#skF_5', type, '#skF_5': $i).
% 1.84/1.20  tff('#skF_6', type, '#skF_6': $i).
% 1.84/1.20  tff(k1_enumset1, type, k1_enumset1: ($i * $i * $i) > $i).
% 1.84/1.20  tff('#skF_2', type, '#skF_2': ($i * $i * $i) > $i).
% 1.84/1.20  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 1.84/1.20  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 1.84/1.20  tff(k3_xboole_0, type, k3_xboole_0: ($i * $i) > $i).
% 1.84/1.20  tff('#skF_4', type, '#skF_4': ($i * $i) > $i).
% 1.84/1.20  
% 1.84/1.21  tff(f_54, negated_conjecture, ~(![A, B]: ((k3_xboole_0(k1_tarski(A), k1_tarski(B)) = k1_tarski(A)) => (A = B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t18_zfmisc_1)).
% 1.84/1.21  tff(f_43, axiom, (![A, B]: ((B = k1_tarski(A)) <=> (![C]: (r2_hidden(C, B) <=> (C = A))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_tarski)).
% 1.84/1.21  tff(f_34, axiom, (![A, B, C]: ((C = k3_xboole_0(A, B)) <=> (![D]: (r2_hidden(D, C) <=> (r2_hidden(D, A) & r2_hidden(D, B)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_xboole_0)).
% 1.84/1.21  tff(c_40, plain, ('#skF_5'!='#skF_6'), inference(cnfTransformation, [status(thm)], [f_54])).
% 1.84/1.21  tff(c_24, plain, (![C_13]: (r2_hidden(C_13, k1_tarski(C_13)))), inference(cnfTransformation, [status(thm)], [f_43])).
% 1.84/1.21  tff(c_42, plain, (k3_xboole_0(k1_tarski('#skF_5'), k1_tarski('#skF_6'))=k1_tarski('#skF_5')), inference(cnfTransformation, [status(thm)], [f_54])).
% 1.84/1.21  tff(c_87, plain, (![D_28, B_29, A_30]: (r2_hidden(D_28, B_29) | ~r2_hidden(D_28, k3_xboole_0(A_30, B_29)))), inference(cnfTransformation, [status(thm)], [f_34])).
% 1.84/1.21  tff(c_95, plain, (![D_34]: (r2_hidden(D_34, k1_tarski('#skF_6')) | ~r2_hidden(D_34, k1_tarski('#skF_5')))), inference(superposition, [status(thm), theory('equality')], [c_42, c_87])).
% 1.84/1.21  tff(c_100, plain, (r2_hidden('#skF_5', k1_tarski('#skF_6'))), inference(resolution, [status(thm)], [c_24, c_95])).
% 1.84/1.21  tff(c_22, plain, (![C_13, A_9]: (C_13=A_9 | ~r2_hidden(C_13, k1_tarski(A_9)))), inference(cnfTransformation, [status(thm)], [f_43])).
% 1.84/1.21  tff(c_103, plain, ('#skF_5'='#skF_6'), inference(resolution, [status(thm)], [c_100, c_22])).
% 1.84/1.21  tff(c_107, plain, $false, inference(negUnitSimplification, [status(thm)], [c_40, c_103])).
% 1.84/1.21  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.84/1.21  
% 1.84/1.21  Inference rules
% 1.84/1.21  ----------------------
% 1.84/1.21  #Ref     : 0
% 1.84/1.21  #Sup     : 15
% 1.84/1.21  #Fact    : 0
% 1.84/1.21  #Define  : 0
% 1.84/1.21  #Split   : 0
% 1.84/1.21  #Chain   : 0
% 1.84/1.21  #Close   : 0
% 1.84/1.21  
% 1.84/1.21  Ordering : KBO
% 1.84/1.21  
% 1.84/1.21  Simplification rules
% 1.84/1.21  ----------------------
% 1.84/1.21  #Subsume      : 0
% 1.84/1.21  #Demod        : 0
% 1.84/1.21  #Tautology    : 10
% 1.84/1.21  #SimpNegUnit  : 1
% 1.84/1.21  #BackRed      : 0
% 1.84/1.21  
% 1.84/1.21  #Partial instantiations: 0
% 1.84/1.21  #Strategies tried      : 1
% 1.84/1.21  
% 1.84/1.21  Timing (in seconds)
% 1.84/1.21  ----------------------
% 1.84/1.21  Preprocessing        : 0.31
% 1.84/1.21  Parsing              : 0.16
% 1.84/1.21  CNF conversion       : 0.02
% 1.84/1.21  Main loop            : 0.10
% 1.84/1.21  Inferencing          : 0.03
% 1.84/1.21  Reduction            : 0.03
% 1.84/1.21  Demodulation         : 0.02
% 1.84/1.21  BG Simplification    : 0.01
% 1.84/1.21  Subsumption          : 0.02
% 1.84/1.21  Abstraction          : 0.01
% 1.84/1.21  MUC search           : 0.00
% 1.84/1.21  Cooper               : 0.00
% 1.84/1.22  Total                : 0.43
% 1.84/1.22  Index Insertion      : 0.00
% 1.84/1.22  Index Deletion       : 0.00
% 1.84/1.22  Index Matching       : 0.00
% 1.84/1.22  BG Taut test         : 0.00
%------------------------------------------------------------------------------
