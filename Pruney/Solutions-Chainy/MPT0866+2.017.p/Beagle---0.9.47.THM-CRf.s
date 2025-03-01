%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:09:22 EST 2020

% Result     : Theorem 2.13s
% Output     : CNFRefutation 2.13s
% Verified   : 
% Statistics : Number of formulae       :   46 (  51 expanded)
%              Number of leaves         :   25 (  29 expanded)
%              Depth                    :    9
%              Number of atoms          :   63 (  80 expanded)
%              Number of equality atoms :   26 (  39 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > m1_subset_1 > v1_xboole_0 > v1_relat_1 > k4_tarski > k2_zfmisc_1 > #nlpp > k2_relat_1 > k2_mcart_1 > k1_relat_1 > k1_mcart_1 > k1_xboole_0 > #skF_2 > #skF_3 > #skF_1

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

tff(k2_relat_1,type,(
    k2_relat_1: $i > $i )).

tff('#skF_2',type,(
    '#skF_2': $i )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff('#skF_1',type,(
    '#skF_1': $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(k2_mcart_1,type,(
    k2_mcart_1: $i > $i )).

tff(v1_relat_1,type,(
    v1_relat_1: $i > $o )).

tff(k2_zfmisc_1,type,(
    k2_zfmisc_1: ( $i * $i ) > $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(k1_mcart_1,type,(
    k1_mcart_1: $i > $i )).

tff(v1_xboole_0,type,(
    v1_xboole_0: $i > $o )).

tff(k1_relat_1,type,(
    k1_relat_1: $i > $i )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_78,negated_conjecture,(
    ~ ! [A,B] :
        ~ ( A != k1_xboole_0
          & B != k1_xboole_0
          & ~ ! [C] :
                ( m1_subset_1(C,k2_zfmisc_1(A,B))
               => C = k4_tarski(k1_mcart_1(C),k2_mcart_1(C)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t24_mcart_1)).

tff(f_46,axiom,(
    ! [A,B] : v1_relat_1(k2_zfmisc_1(A,B)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_relat_1)).

tff(f_40,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

tff(f_64,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => ( r2_hidden(A,B)
       => A = k4_tarski(k1_mcart_1(A),k2_mcart_1(A)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_mcart_1)).

tff(f_58,axiom,(
    ! [A,B] :
      ~ ( A != k1_xboole_0
        & B != k1_xboole_0
        & ~ ( k1_relat_1(k2_zfmisc_1(A,B)) = A
            & k2_relat_1(k2_zfmisc_1(A,B)) = B ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t195_relat_1)).

tff(f_44,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v1_xboole_0(k2_relat_1(A)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc11_relat_1)).

tff(f_26,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

tff(f_34,axiom,(
    ! [A,B] :
      ~ ( v1_xboole_0(A)
        & A != B
        & v1_xboole_0(B) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t8_boole)).

tff(c_22,plain,(
    k1_xboole_0 != '#skF_2' ),
    inference(cnfTransformation,[status(thm)],[f_78])).

tff(c_24,plain,(
    k1_xboole_0 != '#skF_1' ),
    inference(cnfTransformation,[status(thm)],[f_78])).

tff(c_18,plain,(
    k4_tarski(k1_mcart_1('#skF_3'),k2_mcart_1('#skF_3')) != '#skF_3' ),
    inference(cnfTransformation,[status(thm)],[f_78])).

tff(c_10,plain,(
    ! [A_6,B_7] : v1_relat_1(k2_zfmisc_1(A_6,B_7)) ),
    inference(cnfTransformation,[status(thm)],[f_46])).

tff(c_20,plain,(
    m1_subset_1('#skF_3',k2_zfmisc_1('#skF_1','#skF_2')) ),
    inference(cnfTransformation,[status(thm)],[f_78])).

tff(c_6,plain,(
    ! [A_3,B_4] :
      ( r2_hidden(A_3,B_4)
      | v1_xboole_0(B_4)
      | ~ m1_subset_1(A_3,B_4) ) ),
    inference(cnfTransformation,[status(thm)],[f_40])).

tff(c_143,plain,(
    ! [A_35,B_36] :
      ( k4_tarski(k1_mcart_1(A_35),k2_mcart_1(A_35)) = A_35
      | ~ r2_hidden(A_35,B_36)
      | ~ v1_relat_1(B_36) ) ),
    inference(cnfTransformation,[status(thm)],[f_64])).

tff(c_320,plain,(
    ! [A_43,B_44] :
      ( k4_tarski(k1_mcart_1(A_43),k2_mcart_1(A_43)) = A_43
      | ~ v1_relat_1(B_44)
      | v1_xboole_0(B_44)
      | ~ m1_subset_1(A_43,B_44) ) ),
    inference(resolution,[status(thm)],[c_6,c_143])).

tff(c_322,plain,
    ( k4_tarski(k1_mcart_1('#skF_3'),k2_mcart_1('#skF_3')) = '#skF_3'
    | ~ v1_relat_1(k2_zfmisc_1('#skF_1','#skF_2'))
    | v1_xboole_0(k2_zfmisc_1('#skF_1','#skF_2')) ),
    inference(resolution,[status(thm)],[c_20,c_320])).

tff(c_325,plain,
    ( k4_tarski(k1_mcart_1('#skF_3'),k2_mcart_1('#skF_3')) = '#skF_3'
    | v1_xboole_0(k2_zfmisc_1('#skF_1','#skF_2')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_10,c_322])).

tff(c_326,plain,(
    v1_xboole_0(k2_zfmisc_1('#skF_1','#skF_2')) ),
    inference(negUnitSimplification,[status(thm)],[c_18,c_325])).

tff(c_119,plain,(
    ! [A_29,B_30] :
      ( k2_relat_1(k2_zfmisc_1(A_29,B_30)) = B_30
      | k1_xboole_0 = B_30
      | k1_xboole_0 = A_29 ) ),
    inference(cnfTransformation,[status(thm)],[f_58])).

tff(c_8,plain,(
    ! [A_5] :
      ( v1_xboole_0(k2_relat_1(A_5))
      | ~ v1_xboole_0(A_5) ) ),
    inference(cnfTransformation,[status(thm)],[f_44])).

tff(c_128,plain,(
    ! [B_30,A_29] :
      ( v1_xboole_0(B_30)
      | ~ v1_xboole_0(k2_zfmisc_1(A_29,B_30))
      | k1_xboole_0 = B_30
      | k1_xboole_0 = A_29 ) ),
    inference(superposition,[status(thm),theory(equality)],[c_119,c_8])).

tff(c_332,plain,
    ( v1_xboole_0('#skF_2')
    | k1_xboole_0 = '#skF_2'
    | k1_xboole_0 = '#skF_1' ),
    inference(resolution,[status(thm)],[c_326,c_128])).

tff(c_352,plain,(
    v1_xboole_0('#skF_2') ),
    inference(negUnitSimplification,[status(thm)],[c_24,c_22,c_332])).

tff(c_2,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnfTransformation,[status(thm)],[f_26])).

tff(c_27,plain,(
    ! [B_16,A_17] :
      ( ~ v1_xboole_0(B_16)
      | B_16 = A_17
      | ~ v1_xboole_0(A_17) ) ),
    inference(cnfTransformation,[status(thm)],[f_34])).

tff(c_33,plain,(
    ! [A_17] :
      ( k1_xboole_0 = A_17
      | ~ v1_xboole_0(A_17) ) ),
    inference(resolution,[status(thm)],[c_2,c_27])).

tff(c_370,plain,(
    k1_xboole_0 = '#skF_2' ),
    inference(resolution,[status(thm)],[c_352,c_33])).

tff(c_380,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_22,c_370])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n003.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 16:58:27 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.13/1.30  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.13/1.30  
% 2.13/1.30  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.13/1.30  %$ r2_hidden > m1_subset_1 > v1_xboole_0 > v1_relat_1 > k4_tarski > k2_zfmisc_1 > #nlpp > k2_relat_1 > k2_mcart_1 > k1_relat_1 > k1_mcart_1 > k1_xboole_0 > #skF_2 > #skF_3 > #skF_1
% 2.13/1.30  
% 2.13/1.30  %Foreground sorts:
% 2.13/1.30  
% 2.13/1.30  
% 2.13/1.30  %Background operators:
% 2.13/1.30  
% 2.13/1.30  
% 2.13/1.30  %Foreground operators:
% 2.13/1.30  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.13/1.30  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 2.13/1.30  tff(k4_tarski, type, k4_tarski: ($i * $i) > $i).
% 2.13/1.30  tff(k1_xboole_0, type, k1_xboole_0: $i).
% 2.13/1.30  tff(k2_relat_1, type, k2_relat_1: $i > $i).
% 2.13/1.30  tff('#skF_2', type, '#skF_2': $i).
% 2.13/1.30  tff('#skF_3', type, '#skF_3': $i).
% 2.13/1.30  tff('#skF_1', type, '#skF_1': $i).
% 2.13/1.30  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.13/1.30  tff(k2_mcart_1, type, k2_mcart_1: $i > $i).
% 2.13/1.30  tff(v1_relat_1, type, v1_relat_1: $i > $o).
% 2.13/1.30  tff(k2_zfmisc_1, type, k2_zfmisc_1: ($i * $i) > $i).
% 2.13/1.30  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.13/1.30  tff(k1_mcart_1, type, k1_mcart_1: $i > $i).
% 2.13/1.30  tff(v1_xboole_0, type, v1_xboole_0: $i > $o).
% 2.13/1.30  tff(k1_relat_1, type, k1_relat_1: $i > $i).
% 2.13/1.30  tff(m1_subset_1, type, m1_subset_1: ($i * $i) > $o).
% 2.13/1.31  
% 2.13/1.32  tff(f_78, negated_conjecture, ~(![A, B]: ~((~(A = k1_xboole_0) & ~(B = k1_xboole_0)) & ~(![C]: (m1_subset_1(C, k2_zfmisc_1(A, B)) => (C = k4_tarski(k1_mcart_1(C), k2_mcart_1(C))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t24_mcart_1)).
% 2.13/1.32  tff(f_46, axiom, (![A, B]: v1_relat_1(k2_zfmisc_1(A, B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 2.13/1.32  tff(f_40, axiom, (![A, B]: (m1_subset_1(A, B) => (v1_xboole_0(B) | r2_hidden(A, B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 2.13/1.32  tff(f_64, axiom, (![A, B]: (v1_relat_1(B) => (r2_hidden(A, B) => (A = k4_tarski(k1_mcart_1(A), k2_mcart_1(A)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t23_mcart_1)).
% 2.13/1.32  tff(f_58, axiom, (![A, B]: ~((~(A = k1_xboole_0) & ~(B = k1_xboole_0)) & ~((k1_relat_1(k2_zfmisc_1(A, B)) = A) & (k2_relat_1(k2_zfmisc_1(A, B)) = B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t195_relat_1)).
% 2.13/1.32  tff(f_44, axiom, (![A]: (v1_xboole_0(A) => v1_xboole_0(k2_relat_1(A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc11_relat_1)).
% 2.13/1.32  tff(f_26, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 2.13/1.32  tff(f_34, axiom, (![A, B]: ~((v1_xboole_0(A) & ~(A = B)) & v1_xboole_0(B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t8_boole)).
% 2.13/1.32  tff(c_22, plain, (k1_xboole_0!='#skF_2'), inference(cnfTransformation, [status(thm)], [f_78])).
% 2.13/1.32  tff(c_24, plain, (k1_xboole_0!='#skF_1'), inference(cnfTransformation, [status(thm)], [f_78])).
% 2.13/1.32  tff(c_18, plain, (k4_tarski(k1_mcart_1('#skF_3'), k2_mcart_1('#skF_3'))!='#skF_3'), inference(cnfTransformation, [status(thm)], [f_78])).
% 2.13/1.32  tff(c_10, plain, (![A_6, B_7]: (v1_relat_1(k2_zfmisc_1(A_6, B_7)))), inference(cnfTransformation, [status(thm)], [f_46])).
% 2.13/1.32  tff(c_20, plain, (m1_subset_1('#skF_3', k2_zfmisc_1('#skF_1', '#skF_2'))), inference(cnfTransformation, [status(thm)], [f_78])).
% 2.13/1.32  tff(c_6, plain, (![A_3, B_4]: (r2_hidden(A_3, B_4) | v1_xboole_0(B_4) | ~m1_subset_1(A_3, B_4))), inference(cnfTransformation, [status(thm)], [f_40])).
% 2.13/1.32  tff(c_143, plain, (![A_35, B_36]: (k4_tarski(k1_mcart_1(A_35), k2_mcart_1(A_35))=A_35 | ~r2_hidden(A_35, B_36) | ~v1_relat_1(B_36))), inference(cnfTransformation, [status(thm)], [f_64])).
% 2.13/1.32  tff(c_320, plain, (![A_43, B_44]: (k4_tarski(k1_mcart_1(A_43), k2_mcart_1(A_43))=A_43 | ~v1_relat_1(B_44) | v1_xboole_0(B_44) | ~m1_subset_1(A_43, B_44))), inference(resolution, [status(thm)], [c_6, c_143])).
% 2.13/1.32  tff(c_322, plain, (k4_tarski(k1_mcart_1('#skF_3'), k2_mcart_1('#skF_3'))='#skF_3' | ~v1_relat_1(k2_zfmisc_1('#skF_1', '#skF_2')) | v1_xboole_0(k2_zfmisc_1('#skF_1', '#skF_2'))), inference(resolution, [status(thm)], [c_20, c_320])).
% 2.13/1.32  tff(c_325, plain, (k4_tarski(k1_mcart_1('#skF_3'), k2_mcart_1('#skF_3'))='#skF_3' | v1_xboole_0(k2_zfmisc_1('#skF_1', '#skF_2'))), inference(demodulation, [status(thm), theory('equality')], [c_10, c_322])).
% 2.13/1.32  tff(c_326, plain, (v1_xboole_0(k2_zfmisc_1('#skF_1', '#skF_2'))), inference(negUnitSimplification, [status(thm)], [c_18, c_325])).
% 2.13/1.32  tff(c_119, plain, (![A_29, B_30]: (k2_relat_1(k2_zfmisc_1(A_29, B_30))=B_30 | k1_xboole_0=B_30 | k1_xboole_0=A_29)), inference(cnfTransformation, [status(thm)], [f_58])).
% 2.13/1.32  tff(c_8, plain, (![A_5]: (v1_xboole_0(k2_relat_1(A_5)) | ~v1_xboole_0(A_5))), inference(cnfTransformation, [status(thm)], [f_44])).
% 2.13/1.32  tff(c_128, plain, (![B_30, A_29]: (v1_xboole_0(B_30) | ~v1_xboole_0(k2_zfmisc_1(A_29, B_30)) | k1_xboole_0=B_30 | k1_xboole_0=A_29)), inference(superposition, [status(thm), theory('equality')], [c_119, c_8])).
% 2.13/1.32  tff(c_332, plain, (v1_xboole_0('#skF_2') | k1_xboole_0='#skF_2' | k1_xboole_0='#skF_1'), inference(resolution, [status(thm)], [c_326, c_128])).
% 2.13/1.32  tff(c_352, plain, (v1_xboole_0('#skF_2')), inference(negUnitSimplification, [status(thm)], [c_24, c_22, c_332])).
% 2.13/1.32  tff(c_2, plain, (v1_xboole_0(k1_xboole_0)), inference(cnfTransformation, [status(thm)], [f_26])).
% 2.13/1.32  tff(c_27, plain, (![B_16, A_17]: (~v1_xboole_0(B_16) | B_16=A_17 | ~v1_xboole_0(A_17))), inference(cnfTransformation, [status(thm)], [f_34])).
% 2.13/1.32  tff(c_33, plain, (![A_17]: (k1_xboole_0=A_17 | ~v1_xboole_0(A_17))), inference(resolution, [status(thm)], [c_2, c_27])).
% 2.13/1.32  tff(c_370, plain, (k1_xboole_0='#skF_2'), inference(resolution, [status(thm)], [c_352, c_33])).
% 2.13/1.32  tff(c_380, plain, $false, inference(negUnitSimplification, [status(thm)], [c_22, c_370])).
% 2.13/1.32  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.13/1.32  
% 2.13/1.32  Inference rules
% 2.13/1.32  ----------------------
% 2.13/1.32  #Ref     : 0
% 2.13/1.32  #Sup     : 93
% 2.13/1.32  #Fact    : 0
% 2.13/1.32  #Define  : 0
% 2.13/1.32  #Split   : 1
% 2.13/1.32  #Chain   : 0
% 2.13/1.32  #Close   : 0
% 2.13/1.32  
% 2.13/1.32  Ordering : KBO
% 2.13/1.32  
% 2.13/1.32  Simplification rules
% 2.13/1.32  ----------------------
% 2.13/1.32  #Subsume      : 27
% 2.13/1.32  #Demod        : 25
% 2.13/1.32  #Tautology    : 17
% 2.13/1.32  #SimpNegUnit  : 4
% 2.13/1.32  #BackRed      : 0
% 2.13/1.32  
% 2.13/1.32  #Partial instantiations: 0
% 2.13/1.32  #Strategies tried      : 1
% 2.13/1.32  
% 2.13/1.32  Timing (in seconds)
% 2.13/1.32  ----------------------
% 2.13/1.33  Preprocessing        : 0.30
% 2.13/1.33  Parsing              : 0.16
% 2.13/1.33  CNF conversion       : 0.02
% 2.13/1.33  Main loop            : 0.25
% 2.13/1.33  Inferencing          : 0.09
% 2.13/1.33  Reduction            : 0.06
% 2.13/1.33  Demodulation         : 0.04
% 2.13/1.33  BG Simplification    : 0.02
% 2.13/1.33  Subsumption          : 0.07
% 2.13/1.33  Abstraction          : 0.01
% 2.13/1.33  MUC search           : 0.00
% 2.13/1.33  Cooper               : 0.00
% 2.13/1.33  Total                : 0.59
% 2.13/1.33  Index Insertion      : 0.00
% 2.13/1.33  Index Deletion       : 0.00
% 2.13/1.33  Index Matching       : 0.00
% 2.13/1.33  BG Taut test         : 0.00
%------------------------------------------------------------------------------
