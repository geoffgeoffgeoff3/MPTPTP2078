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
% DateTime   : Thu Dec  3 09:58:49 EST 2020

% Result     : Theorem 1.93s
% Output     : CNFRefutation 1.93s
% Verified   : 
% Statistics : Number of formulae       :   34 (  36 expanded)
%              Number of leaves         :   19 (  21 expanded)
%              Depth                    :    6
%              Number of atoms          :   39 (  45 expanded)
%              Number of equality atoms :   10 (  12 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > r1_tarski > v1_relat_1 > k4_tarski > k2_zfmisc_1 > #nlpp > k1_xboole_0 > #skF_3 > #skF_4 > #skF_2 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff(k4_tarski,type,(
    k4_tarski: ( $i * $i ) > $i )).

tff(k1_xboole_0,type,(
    k1_xboole_0: $i )).

tff('#skF_3',type,(
    '#skF_3': ( $i * $i ) > $i )).

tff(r1_tarski,type,(
    r1_tarski: ( $i * $i ) > $o )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(v1_relat_1,type,(
    v1_relat_1: $i > $o )).

tff(k2_zfmisc_1,type,(
    k2_zfmisc_1: ( $i * $i ) > $i )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i ) > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i ) > $i )).

tff(f_66,negated_conjecture,(
    ~ ! [A] :
        ( v1_relat_1(A)
       => ( ! [B,C] : ~ r2_hidden(k4_tarski(B,C),A)
         => A = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_relat_1)).

tff(f_57,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( r1_tarski(A,B)
        <=> ! [C,D] :
              ( r2_hidden(k4_tarski(C,D),A)
             => r2_hidden(k4_tarski(C,D),B) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_relat_1)).

tff(f_32,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,B) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

tff(f_44,axiom,(
    ! [A,B] :
      ( k2_zfmisc_1(A,B) = k1_xboole_0
    <=> ( A = k1_xboole_0
        | B = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

tff(f_47,axiom,(
    ! [A,B] : ~ r2_hidden(A,k2_zfmisc_1(A,B)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t152_zfmisc_1)).

tff(f_38,axiom,(
    ! [A,B] :
      ( A = B
    <=> ( r1_tarski(A,B)
        & r1_tarski(B,A) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

tff(c_28,plain,(
    k1_xboole_0 != '#skF_4' ),
    inference(cnfTransformation,[status(thm)],[f_66])).

tff(c_32,plain,(
    v1_relat_1('#skF_4') ),
    inference(cnfTransformation,[status(thm)],[f_66])).

tff(c_159,plain,(
    ! [A_64,B_65] :
      ( r2_hidden(k4_tarski('#skF_2'(A_64,B_65),'#skF_3'(A_64,B_65)),A_64)
      | r1_tarski(A_64,B_65)
      | ~ v1_relat_1(A_64) ) ),
    inference(cnfTransformation,[status(thm)],[f_57])).

tff(c_30,plain,(
    ! [B_31,C_32] : ~ r2_hidden(k4_tarski(B_31,C_32),'#skF_4') ),
    inference(cnfTransformation,[status(thm)],[f_66])).

tff(c_173,plain,(
    ! [B_65] :
      ( r1_tarski('#skF_4',B_65)
      | ~ v1_relat_1('#skF_4') ) ),
    inference(resolution,[status(thm)],[c_159,c_30])).

tff(c_182,plain,(
    ! [B_66] : r1_tarski('#skF_4',B_66) ),
    inference(demodulation,[status(thm),theory(equality)],[c_32,c_173])).

tff(c_66,plain,(
    ! [A_41,B_42] :
      ( r2_hidden('#skF_1'(A_41,B_42),A_41)
      | r1_tarski(A_41,B_42) ) ),
    inference(cnfTransformation,[status(thm)],[f_32])).

tff(c_16,plain,(
    ! [A_8] : k2_zfmisc_1(A_8,k1_xboole_0) = k1_xboole_0 ),
    inference(cnfTransformation,[status(thm)],[f_44])).

tff(c_58,plain,(
    ! [A_38,B_39] : ~ r2_hidden(A_38,k2_zfmisc_1(A_38,B_39)) ),
    inference(cnfTransformation,[status(thm)],[f_47])).

tff(c_64,plain,(
    ! [A_8] : ~ r2_hidden(A_8,k1_xboole_0) ),
    inference(superposition,[status(thm),theory(equality)],[c_16,c_58])).

tff(c_71,plain,(
    ! [B_42] : r1_tarski(k1_xboole_0,B_42) ),
    inference(resolution,[status(thm)],[c_66,c_64])).

tff(c_84,plain,(
    ! [B_46,A_47] :
      ( B_46 = A_47
      | ~ r1_tarski(B_46,A_47)
      | ~ r1_tarski(A_47,B_46) ) ),
    inference(cnfTransformation,[status(thm)],[f_38])).

tff(c_89,plain,(
    ! [B_42] :
      ( k1_xboole_0 = B_42
      | ~ r1_tarski(B_42,k1_xboole_0) ) ),
    inference(resolution,[status(thm)],[c_71,c_84])).

tff(c_193,plain,(
    k1_xboole_0 = '#skF_4' ),
    inference(resolution,[status(thm)],[c_182,c_89])).

tff(c_203,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_28,c_193])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.14/0.34  % Computer   : n019.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 18:14:52 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.93/1.26  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.93/1.26  
% 1.93/1.26  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.93/1.26  %$ r2_hidden > r1_tarski > v1_relat_1 > k4_tarski > k2_zfmisc_1 > #nlpp > k1_xboole_0 > #skF_3 > #skF_4 > #skF_2 > #skF_1
% 1.93/1.26  
% 1.93/1.26  %Foreground sorts:
% 1.93/1.26  
% 1.93/1.26  
% 1.93/1.26  %Background operators:
% 1.93/1.26  
% 1.93/1.26  
% 1.93/1.26  %Foreground operators:
% 1.93/1.26  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 1.93/1.26  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 1.93/1.26  tff(k4_tarski, type, k4_tarski: ($i * $i) > $i).
% 1.93/1.26  tff(k1_xboole_0, type, k1_xboole_0: $i).
% 1.93/1.26  tff('#skF_3', type, '#skF_3': ($i * $i) > $i).
% 1.93/1.26  tff(r1_tarski, type, r1_tarski: ($i * $i) > $o).
% 1.93/1.26  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 1.93/1.26  tff(v1_relat_1, type, v1_relat_1: $i > $o).
% 1.93/1.26  tff(k2_zfmisc_1, type, k2_zfmisc_1: ($i * $i) > $i).
% 1.93/1.26  tff('#skF_4', type, '#skF_4': $i).
% 1.93/1.26  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 1.93/1.26  tff('#skF_2', type, '#skF_2': ($i * $i) > $i).
% 1.93/1.26  tff('#skF_1', type, '#skF_1': ($i * $i) > $i).
% 1.93/1.26  
% 1.93/1.27  tff(f_66, negated_conjecture, ~(![A]: (v1_relat_1(A) => ((![B, C]: ~r2_hidden(k4_tarski(B, C), A)) => (A = k1_xboole_0)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t56_relat_1)).
% 1.93/1.27  tff(f_57, axiom, (![A]: (v1_relat_1(A) => (![B]: (r1_tarski(A, B) <=> (![C, D]: (r2_hidden(k4_tarski(C, D), A) => r2_hidden(k4_tarski(C, D), B))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_relat_1)).
% 1.93/1.27  tff(f_32, axiom, (![A, B]: (r1_tarski(A, B) <=> (![C]: (r2_hidden(C, A) => r2_hidden(C, B))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 1.93/1.27  tff(f_44, axiom, (![A, B]: ((k2_zfmisc_1(A, B) = k1_xboole_0) <=> ((A = k1_xboole_0) | (B = k1_xboole_0)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 1.93/1.27  tff(f_47, axiom, (![A, B]: ~r2_hidden(A, k2_zfmisc_1(A, B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t152_zfmisc_1)).
% 1.93/1.27  tff(f_38, axiom, (![A, B]: ((A = B) <=> (r1_tarski(A, B) & r1_tarski(B, A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 1.93/1.27  tff(c_28, plain, (k1_xboole_0!='#skF_4'), inference(cnfTransformation, [status(thm)], [f_66])).
% 1.93/1.27  tff(c_32, plain, (v1_relat_1('#skF_4')), inference(cnfTransformation, [status(thm)], [f_66])).
% 1.93/1.27  tff(c_159, plain, (![A_64, B_65]: (r2_hidden(k4_tarski('#skF_2'(A_64, B_65), '#skF_3'(A_64, B_65)), A_64) | r1_tarski(A_64, B_65) | ~v1_relat_1(A_64))), inference(cnfTransformation, [status(thm)], [f_57])).
% 1.93/1.27  tff(c_30, plain, (![B_31, C_32]: (~r2_hidden(k4_tarski(B_31, C_32), '#skF_4'))), inference(cnfTransformation, [status(thm)], [f_66])).
% 1.93/1.27  tff(c_173, plain, (![B_65]: (r1_tarski('#skF_4', B_65) | ~v1_relat_1('#skF_4'))), inference(resolution, [status(thm)], [c_159, c_30])).
% 1.93/1.27  tff(c_182, plain, (![B_66]: (r1_tarski('#skF_4', B_66))), inference(demodulation, [status(thm), theory('equality')], [c_32, c_173])).
% 1.93/1.27  tff(c_66, plain, (![A_41, B_42]: (r2_hidden('#skF_1'(A_41, B_42), A_41) | r1_tarski(A_41, B_42))), inference(cnfTransformation, [status(thm)], [f_32])).
% 1.93/1.27  tff(c_16, plain, (![A_8]: (k2_zfmisc_1(A_8, k1_xboole_0)=k1_xboole_0)), inference(cnfTransformation, [status(thm)], [f_44])).
% 1.93/1.27  tff(c_58, plain, (![A_38, B_39]: (~r2_hidden(A_38, k2_zfmisc_1(A_38, B_39)))), inference(cnfTransformation, [status(thm)], [f_47])).
% 1.93/1.27  tff(c_64, plain, (![A_8]: (~r2_hidden(A_8, k1_xboole_0))), inference(superposition, [status(thm), theory('equality')], [c_16, c_58])).
% 1.93/1.27  tff(c_71, plain, (![B_42]: (r1_tarski(k1_xboole_0, B_42))), inference(resolution, [status(thm)], [c_66, c_64])).
% 1.93/1.27  tff(c_84, plain, (![B_46, A_47]: (B_46=A_47 | ~r1_tarski(B_46, A_47) | ~r1_tarski(A_47, B_46))), inference(cnfTransformation, [status(thm)], [f_38])).
% 1.93/1.27  tff(c_89, plain, (![B_42]: (k1_xboole_0=B_42 | ~r1_tarski(B_42, k1_xboole_0))), inference(resolution, [status(thm)], [c_71, c_84])).
% 1.93/1.27  tff(c_193, plain, (k1_xboole_0='#skF_4'), inference(resolution, [status(thm)], [c_182, c_89])).
% 1.93/1.27  tff(c_203, plain, $false, inference(negUnitSimplification, [status(thm)], [c_28, c_193])).
% 1.93/1.27  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.93/1.27  
% 1.93/1.27  Inference rules
% 1.93/1.27  ----------------------
% 1.93/1.27  #Ref     : 0
% 1.93/1.27  #Sup     : 33
% 1.93/1.27  #Fact    : 0
% 1.93/1.27  #Define  : 0
% 1.93/1.27  #Split   : 0
% 1.93/1.27  #Chain   : 0
% 1.93/1.27  #Close   : 0
% 1.93/1.27  
% 1.93/1.27  Ordering : KBO
% 1.93/1.27  
% 1.93/1.27  Simplification rules
% 1.93/1.27  ----------------------
% 1.93/1.27  #Subsume      : 3
% 1.93/1.27  #Demod        : 11
% 1.93/1.27  #Tautology    : 21
% 1.93/1.27  #SimpNegUnit  : 1
% 1.93/1.27  #BackRed      : 0
% 1.93/1.27  
% 1.93/1.27  #Partial instantiations: 0
% 1.93/1.27  #Strategies tried      : 1
% 1.93/1.27  
% 1.93/1.27  Timing (in seconds)
% 1.93/1.27  ----------------------
% 1.93/1.28  Preprocessing        : 0.31
% 1.93/1.28  Parsing              : 0.16
% 1.93/1.28  CNF conversion       : 0.02
% 1.93/1.28  Main loop            : 0.14
% 1.93/1.28  Inferencing          : 0.05
% 1.93/1.28  Reduction            : 0.04
% 1.93/1.28  Demodulation         : 0.03
% 1.93/1.28  BG Simplification    : 0.02
% 1.93/1.28  Subsumption          : 0.03
% 1.93/1.28  Abstraction          : 0.01
% 1.93/1.28  MUC search           : 0.00
% 1.93/1.28  Cooper               : 0.00
% 1.93/1.28  Total                : 0.48
% 1.93/1.28  Index Insertion      : 0.00
% 1.93/1.28  Index Deletion       : 0.00
% 1.93/1.28  Index Matching       : 0.00
% 1.93/1.28  BG Taut test         : 0.00
%------------------------------------------------------------------------------
