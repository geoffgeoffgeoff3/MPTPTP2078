%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:08:59 EST 2020

% Result     : Theorem 2.09s
% Output     : CNFRefutation 2.09s
% Verified   : 
% Statistics : Number of formulae       :   49 (  79 expanded)
%              Number of leaves         :   23 (  37 expanded)
%              Depth                    :    8
%              Number of atoms          :   56 ( 126 expanded)
%              Number of equality atoms :   19 (  48 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > k1_enumset1 > k4_xboole_0 > k2_zfmisc_1 > k2_tarski > #nlpp > k2_mcart_1 > k1_tarski > k1_mcart_1 > #skF_5 > #skF_6 > #skF_3 > #skF_4 > #skF_2 > #skF_1

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

tff(k2_tarski,type,(
    k2_tarski: ( $i * $i ) > $i )).

tff('#skF_5',type,(
    '#skF_5': $i )).

tff('#skF_6',type,(
    '#skF_6': $i )).

tff(k1_enumset1,type,(
    k1_enumset1: ( $i * $i * $i ) > $i )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(k2_mcart_1,type,(
    k2_mcart_1: $i > $i )).

tff(k2_zfmisc_1,type,(
    k2_zfmisc_1: ( $i * $i ) > $i )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i ) > $i )).

tff(k1_mcart_1,type,(
    k1_mcart_1: $i > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i ) > $i )).

tff(f_69,negated_conjecture,(
    ~ ! [A,B,C,D] :
        ( r2_hidden(A,k2_zfmisc_1(k2_tarski(B,C),D))
       => ( ( k1_mcart_1(A) = B
            | k1_mcart_1(A) = C )
          & r2_hidden(k2_mcart_1(A),D) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t15_mcart_1)).

tff(f_60,axiom,(
    ! [A,B,C] :
      ( r2_hidden(A,k2_zfmisc_1(B,C))
     => ( r2_hidden(k1_mcart_1(A),B)
        & r2_hidden(k2_mcart_1(A),C) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t10_mcart_1)).

tff(f_46,axiom,(
    ! [A,B,C] :
      ~ ( ~ r2_hidden(A,C)
        & ~ r2_hidden(B,C)
        & C != k4_xboole_0(C,k2_tarski(A,B)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t144_zfmisc_1)).

tff(f_34,axiom,(
    ! [A] : k2_tarski(A,A) = k1_tarski(A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

tff(f_54,axiom,(
    ! [A,B,C] :
      ( k4_xboole_0(k2_tarski(A,B),C) = k2_tarski(A,B)
    <=> ( ~ r2_hidden(A,C)
        & ~ r2_hidden(B,C) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_zfmisc_1)).

tff(f_32,axiom,(
    ! [A,B] :
      ( B = k1_tarski(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> C = A ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_tarski)).

tff(c_34,plain,
    ( k1_mcart_1('#skF_3') != '#skF_4'
    | ~ r2_hidden(k2_mcart_1('#skF_3'),'#skF_6') ),
    inference(cnfTransformation,[status(thm)],[f_69])).

tff(c_51,plain,(
    ~ r2_hidden(k2_mcart_1('#skF_3'),'#skF_6') ),
    inference(splitLeft,[status(thm)],[c_34])).

tff(c_30,plain,(
    r2_hidden('#skF_3',k2_zfmisc_1(k2_tarski('#skF_4','#skF_5'),'#skF_6')) ),
    inference(cnfTransformation,[status(thm)],[f_69])).

tff(c_61,plain,(
    ! [A_24,C_25,B_26] :
      ( r2_hidden(k2_mcart_1(A_24),C_25)
      | ~ r2_hidden(A_24,k2_zfmisc_1(B_26,C_25)) ) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_63,plain,(
    r2_hidden(k2_mcart_1('#skF_3'),'#skF_6') ),
    inference(resolution,[status(thm)],[c_30,c_61])).

tff(c_67,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_51,c_63])).

tff(c_69,plain,(
    r2_hidden(k2_mcart_1('#skF_3'),'#skF_6') ),
    inference(splitRight,[status(thm)],[c_34])).

tff(c_32,plain,
    ( k1_mcart_1('#skF_3') != '#skF_5'
    | ~ r2_hidden(k2_mcart_1('#skF_3'),'#skF_6') ),
    inference(cnfTransformation,[status(thm)],[f_69])).

tff(c_80,plain,(
    k1_mcart_1('#skF_3') != '#skF_5' ),
    inference(demodulation,[status(thm),theory(equality)],[c_69,c_32])).

tff(c_68,plain,(
    k1_mcart_1('#skF_3') != '#skF_4' ),
    inference(splitRight,[status(thm)],[c_34])).

tff(c_86,plain,(
    ! [A_32,B_33,C_34] :
      ( r2_hidden(k1_mcart_1(A_32),B_33)
      | ~ r2_hidden(A_32,k2_zfmisc_1(B_33,C_34)) ) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_89,plain,(
    r2_hidden(k1_mcart_1('#skF_3'),k2_tarski('#skF_4','#skF_5')) ),
    inference(resolution,[status(thm)],[c_30,c_86])).

tff(c_103,plain,(
    ! [C_47,A_48,B_49] :
      ( k4_xboole_0(C_47,k2_tarski(A_48,B_49)) = C_47
      | r2_hidden(B_49,C_47)
      | r2_hidden(A_48,C_47) ) ),
    inference(cnfTransformation,[status(thm)],[f_46])).

tff(c_14,plain,(
    ! [A_6] : k2_tarski(A_6,A_6) = k1_tarski(A_6) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_91,plain,(
    ! [B_37,C_38,A_39] :
      ( ~ r2_hidden(B_37,C_38)
      | k4_xboole_0(k2_tarski(A_39,B_37),C_38) != k2_tarski(A_39,B_37) ) ),
    inference(cnfTransformation,[status(thm)],[f_54])).

tff(c_94,plain,(
    ! [A_6,C_38] :
      ( ~ r2_hidden(A_6,C_38)
      | k4_xboole_0(k1_tarski(A_6),C_38) != k2_tarski(A_6,A_6) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_14,c_91])).

tff(c_95,plain,(
    ! [A_6,C_38] :
      ( ~ r2_hidden(A_6,C_38)
      | k4_xboole_0(k1_tarski(A_6),C_38) != k1_tarski(A_6) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_14,c_94])).

tff(c_229,plain,(
    ! [A_68,A_69,B_70] :
      ( ~ r2_hidden(A_68,k2_tarski(A_69,B_70))
      | r2_hidden(B_70,k1_tarski(A_68))
      | r2_hidden(A_69,k1_tarski(A_68)) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_103,c_95])).

tff(c_250,plain,
    ( r2_hidden('#skF_5',k1_tarski(k1_mcart_1('#skF_3')))
    | r2_hidden('#skF_4',k1_tarski(k1_mcart_1('#skF_3'))) ),
    inference(resolution,[status(thm)],[c_89,c_229])).

tff(c_251,plain,(
    r2_hidden('#skF_4',k1_tarski(k1_mcart_1('#skF_3'))) ),
    inference(splitLeft,[status(thm)],[c_250])).

tff(c_2,plain,(
    ! [C_5,A_1] :
      ( C_5 = A_1
      | ~ r2_hidden(C_5,k1_tarski(A_1)) ) ),
    inference(cnfTransformation,[status(thm)],[f_32])).

tff(c_260,plain,(
    k1_mcart_1('#skF_3') = '#skF_4' ),
    inference(resolution,[status(thm)],[c_251,c_2])).

tff(c_267,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_68,c_260])).

tff(c_268,plain,(
    r2_hidden('#skF_5',k1_tarski(k1_mcart_1('#skF_3'))) ),
    inference(splitRight,[status(thm)],[c_250])).

tff(c_319,plain,(
    k1_mcart_1('#skF_3') = '#skF_5' ),
    inference(resolution,[status(thm)],[c_268,c_2])).

tff(c_326,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_80,c_319])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 16:50:38 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.09/1.37  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.09/1.37  
% 2.09/1.37  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.09/1.37  %$ r2_hidden > k1_enumset1 > k4_xboole_0 > k2_zfmisc_1 > k2_tarski > #nlpp > k2_mcart_1 > k1_tarski > k1_mcart_1 > #skF_5 > #skF_6 > #skF_3 > #skF_4 > #skF_2 > #skF_1
% 2.09/1.37  
% 2.09/1.37  %Foreground sorts:
% 2.09/1.37  
% 2.09/1.37  
% 2.09/1.37  %Background operators:
% 2.09/1.37  
% 2.09/1.37  
% 2.09/1.37  %Foreground operators:
% 2.09/1.37  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.09/1.37  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 2.09/1.37  tff(k1_tarski, type, k1_tarski: $i > $i).
% 2.09/1.37  tff(k4_xboole_0, type, k4_xboole_0: ($i * $i) > $i).
% 2.09/1.37  tff(k2_tarski, type, k2_tarski: ($i * $i) > $i).
% 2.09/1.37  tff('#skF_5', type, '#skF_5': $i).
% 2.09/1.37  tff('#skF_6', type, '#skF_6': $i).
% 2.09/1.37  tff(k1_enumset1, type, k1_enumset1: ($i * $i * $i) > $i).
% 2.09/1.37  tff('#skF_3', type, '#skF_3': $i).
% 2.09/1.37  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.09/1.37  tff(k2_mcart_1, type, k2_mcart_1: $i > $i).
% 2.09/1.37  tff(k2_zfmisc_1, type, k2_zfmisc_1: ($i * $i) > $i).
% 2.09/1.37  tff('#skF_4', type, '#skF_4': $i).
% 2.09/1.37  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.09/1.37  tff('#skF_2', type, '#skF_2': ($i * $i) > $i).
% 2.09/1.37  tff(k1_mcart_1, type, k1_mcart_1: $i > $i).
% 2.09/1.37  tff('#skF_1', type, '#skF_1': ($i * $i) > $i).
% 2.09/1.37  
% 2.09/1.39  tff(f_69, negated_conjecture, ~(![A, B, C, D]: (r2_hidden(A, k2_zfmisc_1(k2_tarski(B, C), D)) => (((k1_mcart_1(A) = B) | (k1_mcart_1(A) = C)) & r2_hidden(k2_mcart_1(A), D)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t15_mcart_1)).
% 2.09/1.39  tff(f_60, axiom, (![A, B, C]: (r2_hidden(A, k2_zfmisc_1(B, C)) => (r2_hidden(k1_mcart_1(A), B) & r2_hidden(k2_mcart_1(A), C)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t10_mcart_1)).
% 2.09/1.39  tff(f_46, axiom, (![A, B, C]: ~((~r2_hidden(A, C) & ~r2_hidden(B, C)) & ~(C = k4_xboole_0(C, k2_tarski(A, B))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t144_zfmisc_1)).
% 2.09/1.39  tff(f_34, axiom, (![A]: (k2_tarski(A, A) = k1_tarski(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 2.09/1.39  tff(f_54, axiom, (![A, B, C]: ((k4_xboole_0(k2_tarski(A, B), C) = k2_tarski(A, B)) <=> (~r2_hidden(A, C) & ~r2_hidden(B, C)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_zfmisc_1)).
% 2.09/1.39  tff(f_32, axiom, (![A, B]: ((B = k1_tarski(A)) <=> (![C]: (r2_hidden(C, B) <=> (C = A))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_tarski)).
% 2.09/1.39  tff(c_34, plain, (k1_mcart_1('#skF_3')!='#skF_4' | ~r2_hidden(k2_mcart_1('#skF_3'), '#skF_6')), inference(cnfTransformation, [status(thm)], [f_69])).
% 2.09/1.39  tff(c_51, plain, (~r2_hidden(k2_mcart_1('#skF_3'), '#skF_6')), inference(splitLeft, [status(thm)], [c_34])).
% 2.09/1.39  tff(c_30, plain, (r2_hidden('#skF_3', k2_zfmisc_1(k2_tarski('#skF_4', '#skF_5'), '#skF_6'))), inference(cnfTransformation, [status(thm)], [f_69])).
% 2.09/1.39  tff(c_61, plain, (![A_24, C_25, B_26]: (r2_hidden(k2_mcart_1(A_24), C_25) | ~r2_hidden(A_24, k2_zfmisc_1(B_26, C_25)))), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.09/1.39  tff(c_63, plain, (r2_hidden(k2_mcart_1('#skF_3'), '#skF_6')), inference(resolution, [status(thm)], [c_30, c_61])).
% 2.09/1.39  tff(c_67, plain, $false, inference(negUnitSimplification, [status(thm)], [c_51, c_63])).
% 2.09/1.39  tff(c_69, plain, (r2_hidden(k2_mcart_1('#skF_3'), '#skF_6')), inference(splitRight, [status(thm)], [c_34])).
% 2.09/1.39  tff(c_32, plain, (k1_mcart_1('#skF_3')!='#skF_5' | ~r2_hidden(k2_mcart_1('#skF_3'), '#skF_6')), inference(cnfTransformation, [status(thm)], [f_69])).
% 2.09/1.39  tff(c_80, plain, (k1_mcart_1('#skF_3')!='#skF_5'), inference(demodulation, [status(thm), theory('equality')], [c_69, c_32])).
% 2.09/1.39  tff(c_68, plain, (k1_mcart_1('#skF_3')!='#skF_4'), inference(splitRight, [status(thm)], [c_34])).
% 2.09/1.39  tff(c_86, plain, (![A_32, B_33, C_34]: (r2_hidden(k1_mcart_1(A_32), B_33) | ~r2_hidden(A_32, k2_zfmisc_1(B_33, C_34)))), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.09/1.39  tff(c_89, plain, (r2_hidden(k1_mcart_1('#skF_3'), k2_tarski('#skF_4', '#skF_5'))), inference(resolution, [status(thm)], [c_30, c_86])).
% 2.09/1.39  tff(c_103, plain, (![C_47, A_48, B_49]: (k4_xboole_0(C_47, k2_tarski(A_48, B_49))=C_47 | r2_hidden(B_49, C_47) | r2_hidden(A_48, C_47))), inference(cnfTransformation, [status(thm)], [f_46])).
% 2.09/1.39  tff(c_14, plain, (![A_6]: (k2_tarski(A_6, A_6)=k1_tarski(A_6))), inference(cnfTransformation, [status(thm)], [f_34])).
% 2.09/1.39  tff(c_91, plain, (![B_37, C_38, A_39]: (~r2_hidden(B_37, C_38) | k4_xboole_0(k2_tarski(A_39, B_37), C_38)!=k2_tarski(A_39, B_37))), inference(cnfTransformation, [status(thm)], [f_54])).
% 2.09/1.39  tff(c_94, plain, (![A_6, C_38]: (~r2_hidden(A_6, C_38) | k4_xboole_0(k1_tarski(A_6), C_38)!=k2_tarski(A_6, A_6))), inference(superposition, [status(thm), theory('equality')], [c_14, c_91])).
% 2.09/1.39  tff(c_95, plain, (![A_6, C_38]: (~r2_hidden(A_6, C_38) | k4_xboole_0(k1_tarski(A_6), C_38)!=k1_tarski(A_6))), inference(demodulation, [status(thm), theory('equality')], [c_14, c_94])).
% 2.09/1.39  tff(c_229, plain, (![A_68, A_69, B_70]: (~r2_hidden(A_68, k2_tarski(A_69, B_70)) | r2_hidden(B_70, k1_tarski(A_68)) | r2_hidden(A_69, k1_tarski(A_68)))), inference(superposition, [status(thm), theory('equality')], [c_103, c_95])).
% 2.09/1.39  tff(c_250, plain, (r2_hidden('#skF_5', k1_tarski(k1_mcart_1('#skF_3'))) | r2_hidden('#skF_4', k1_tarski(k1_mcart_1('#skF_3')))), inference(resolution, [status(thm)], [c_89, c_229])).
% 2.09/1.39  tff(c_251, plain, (r2_hidden('#skF_4', k1_tarski(k1_mcart_1('#skF_3')))), inference(splitLeft, [status(thm)], [c_250])).
% 2.09/1.39  tff(c_2, plain, (![C_5, A_1]: (C_5=A_1 | ~r2_hidden(C_5, k1_tarski(A_1)))), inference(cnfTransformation, [status(thm)], [f_32])).
% 2.09/1.39  tff(c_260, plain, (k1_mcart_1('#skF_3')='#skF_4'), inference(resolution, [status(thm)], [c_251, c_2])).
% 2.09/1.39  tff(c_267, plain, $false, inference(negUnitSimplification, [status(thm)], [c_68, c_260])).
% 2.09/1.39  tff(c_268, plain, (r2_hidden('#skF_5', k1_tarski(k1_mcart_1('#skF_3')))), inference(splitRight, [status(thm)], [c_250])).
% 2.09/1.39  tff(c_319, plain, (k1_mcart_1('#skF_3')='#skF_5'), inference(resolution, [status(thm)], [c_268, c_2])).
% 2.09/1.39  tff(c_326, plain, $false, inference(negUnitSimplification, [status(thm)], [c_80, c_319])).
% 2.09/1.39  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.09/1.39  
% 2.09/1.39  Inference rules
% 2.09/1.39  ----------------------
% 2.09/1.39  #Ref     : 0
% 2.09/1.39  #Sup     : 63
% 2.09/1.39  #Fact    : 0
% 2.09/1.39  #Define  : 0
% 2.09/1.39  #Split   : 2
% 2.09/1.39  #Chain   : 0
% 2.09/1.39  #Close   : 0
% 2.09/1.39  
% 2.09/1.39  Ordering : KBO
% 2.09/1.39  
% 2.09/1.39  Simplification rules
% 2.09/1.39  ----------------------
% 2.09/1.39  #Subsume      : 3
% 2.09/1.39  #Demod        : 10
% 2.09/1.39  #Tautology    : 25
% 2.09/1.39  #SimpNegUnit  : 3
% 2.09/1.39  #BackRed      : 0
% 2.09/1.39  
% 2.09/1.39  #Partial instantiations: 0
% 2.09/1.39  #Strategies tried      : 1
% 2.09/1.39  
% 2.09/1.39  Timing (in seconds)
% 2.09/1.39  ----------------------
% 2.09/1.39  Preprocessing        : 0.28
% 2.09/1.39  Parsing              : 0.14
% 2.09/1.39  CNF conversion       : 0.02
% 2.09/1.39  Main loop            : 0.22
% 2.09/1.39  Inferencing          : 0.08
% 2.09/1.39  Reduction            : 0.06
% 2.09/1.39  Demodulation         : 0.04
% 2.09/1.39  BG Simplification    : 0.01
% 2.09/1.39  Subsumption          : 0.04
% 2.09/1.39  Abstraction          : 0.01
% 2.09/1.39  MUC search           : 0.00
% 2.09/1.39  Cooper               : 0.00
% 2.09/1.39  Total                : 0.53
% 2.09/1.39  Index Insertion      : 0.00
% 2.09/1.39  Index Deletion       : 0.00
% 2.09/1.39  Index Matching       : 0.00
% 2.09/1.39  BG Taut test         : 0.00
%------------------------------------------------------------------------------
