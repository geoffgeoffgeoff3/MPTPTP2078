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
% DateTime   : Thu Dec  3 09:58:25 EST 2020

% Result     : Theorem 2.22s
% Output     : CNFRefutation 2.22s
% Verified   : 
% Statistics : Number of formulae       :   46 (  78 expanded)
%              Number of leaves         :   22 (  37 expanded)
%              Depth                    :    8
%              Number of atoms          :   52 ( 109 expanded)
%              Number of equality atoms :    8 (  24 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r1_tarski > m1_subset_1 > v1_relat_1 > k6_subset_1 > k4_xboole_0 > k2_xboole_0 > #nlpp > k2_relat_1 > k1_zfmisc_1 > #skF_2 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(k4_xboole_0,type,(
    k4_xboole_0: ( $i * $i ) > $i )).

tff(r1_tarski,type,(
    r1_tarski: ( $i * $i ) > $o )).

tff(k2_relat_1,type,(
    k2_relat_1: $i > $i )).

tff('#skF_2',type,(
    '#skF_2': $i )).

tff(k6_subset_1,type,(
    k6_subset_1: ( $i * $i ) > $i )).

tff('#skF_1',type,(
    '#skF_1': $i )).

tff(k1_zfmisc_1,type,(
    k1_zfmisc_1: $i > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(v1_relat_1,type,(
    v1_relat_1: $i > $o )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(k2_xboole_0,type,(
    k2_xboole_0: ( $i * $i ) > $i )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_61,negated_conjecture,(
    ~ ! [A] :
        ( v1_relat_1(A)
       => ! [B] :
            ( v1_relat_1(B)
           => r1_tarski(k6_subset_1(k2_relat_1(A),k2_relat_1(B)),k2_relat_1(k6_subset_1(A,B))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_relat_1)).

tff(f_53,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => k2_relat_1(k2_xboole_0(A,B)) = k2_xboole_0(k2_relat_1(A),k2_relat_1(B)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t26_relat_1)).

tff(f_35,axiom,(
    ! [A,B] : r1_tarski(A,k2_xboole_0(A,B)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

tff(f_39,axiom,(
    ! [A,B] : k6_subset_1(A,B) = k4_xboole_0(A,B) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k6_subset_1)).

tff(f_37,axiom,(
    ! [A,B] : m1_subset_1(k6_subset_1(A,B),k1_zfmisc_1(A)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_subset_1)).

tff(f_46,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_relat_1(B) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc2_relat_1)).

tff(f_27,axiom,(
    ! [A,B] : k2_xboole_0(A,B) = k2_xboole_0(B,A) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

tff(f_29,axiom,(
    ! [A,B] : k2_xboole_0(A,k4_xboole_0(B,A)) = k2_xboole_0(A,B) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_xboole_1)).

tff(f_33,axiom,(
    ! [A,B,C] :
      ( r1_tarski(A,k2_xboole_0(B,C))
     => r1_tarski(k4_xboole_0(A,B),C) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_xboole_1)).

tff(c_22,plain,(
    v1_relat_1('#skF_1') ),
    inference(cnfTransformation,[status(thm)],[f_61])).

tff(c_20,plain,(
    v1_relat_1('#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_61])).

tff(c_201,plain,(
    ! [A_56,B_57] :
      ( k2_xboole_0(k2_relat_1(A_56),k2_relat_1(B_57)) = k2_relat_1(k2_xboole_0(A_56,B_57))
      | ~ v1_relat_1(B_57)
      | ~ v1_relat_1(A_56) ) ),
    inference(cnfTransformation,[status(thm)],[f_53])).

tff(c_8,plain,(
    ! [A_8,B_9] : r1_tarski(A_8,k2_xboole_0(A_8,B_9)) ),
    inference(cnfTransformation,[status(thm)],[f_35])).

tff(c_243,plain,(
    ! [A_56,B_57] :
      ( r1_tarski(k2_relat_1(A_56),k2_relat_1(k2_xboole_0(A_56,B_57)))
      | ~ v1_relat_1(B_57)
      | ~ v1_relat_1(A_56) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_201,c_8])).

tff(c_12,plain,(
    ! [A_12,B_13] : k6_subset_1(A_12,B_13) = k4_xboole_0(A_12,B_13) ),
    inference(cnfTransformation,[status(thm)],[f_39])).

tff(c_10,plain,(
    ! [A_10,B_11] : m1_subset_1(k6_subset_1(A_10,B_11),k1_zfmisc_1(A_10)) ),
    inference(cnfTransformation,[status(thm)],[f_37])).

tff(c_24,plain,(
    ! [A_10,B_11] : m1_subset_1(k4_xboole_0(A_10,B_11),k1_zfmisc_1(A_10)) ),
    inference(demodulation,[status(thm),theory(equality)],[c_12,c_10])).

tff(c_124,plain,(
    ! [B_37,A_38] :
      ( v1_relat_1(B_37)
      | ~ m1_subset_1(B_37,k1_zfmisc_1(A_38))
      | ~ v1_relat_1(A_38) ) ),
    inference(cnfTransformation,[status(thm)],[f_46])).

tff(c_128,plain,(
    ! [A_10,B_11] :
      ( v1_relat_1(k4_xboole_0(A_10,B_11))
      | ~ v1_relat_1(A_10) ) ),
    inference(resolution,[status(thm)],[c_24,c_124])).

tff(c_2,plain,(
    ! [B_2,A_1] : k2_xboole_0(B_2,A_1) = k2_xboole_0(A_1,B_2) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_4,plain,(
    ! [A_3,B_4] : k2_xboole_0(A_3,k4_xboole_0(B_4,A_3)) = k2_xboole_0(A_3,B_4) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_130,plain,(
    ! [A_41,B_42,C_43] :
      ( r1_tarski(k4_xboole_0(A_41,B_42),C_43)
      | ~ r1_tarski(A_41,k2_xboole_0(B_42,C_43)) ) ),
    inference(cnfTransformation,[status(thm)],[f_33])).

tff(c_18,plain,(
    ~ r1_tarski(k6_subset_1(k2_relat_1('#skF_1'),k2_relat_1('#skF_2')),k2_relat_1(k6_subset_1('#skF_1','#skF_2'))) ),
    inference(cnfTransformation,[status(thm)],[f_61])).

tff(c_23,plain,(
    ~ r1_tarski(k4_xboole_0(k2_relat_1('#skF_1'),k2_relat_1('#skF_2')),k2_relat_1(k4_xboole_0('#skF_1','#skF_2'))) ),
    inference(demodulation,[status(thm),theory(equality)],[c_12,c_12,c_18])).

tff(c_134,plain,(
    ~ r1_tarski(k2_relat_1('#skF_1'),k2_xboole_0(k2_relat_1('#skF_2'),k2_relat_1(k4_xboole_0('#skF_1','#skF_2')))) ),
    inference(resolution,[status(thm)],[c_130,c_23])).

tff(c_216,plain,
    ( ~ r1_tarski(k2_relat_1('#skF_1'),k2_relat_1(k2_xboole_0('#skF_2',k4_xboole_0('#skF_1','#skF_2'))))
    | ~ v1_relat_1(k4_xboole_0('#skF_1','#skF_2'))
    | ~ v1_relat_1('#skF_2') ),
    inference(superposition,[status(thm),theory(equality)],[c_201,c_134])).

tff(c_255,plain,
    ( ~ r1_tarski(k2_relat_1('#skF_1'),k2_relat_1(k2_xboole_0('#skF_1','#skF_2')))
    | ~ v1_relat_1(k4_xboole_0('#skF_1','#skF_2')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_20,c_2,c_4,c_216])).

tff(c_270,plain,(
    ~ v1_relat_1(k4_xboole_0('#skF_1','#skF_2')) ),
    inference(splitLeft,[status(thm)],[c_255])).

tff(c_273,plain,(
    ~ v1_relat_1('#skF_1') ),
    inference(resolution,[status(thm)],[c_128,c_270])).

tff(c_277,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_22,c_273])).

tff(c_278,plain,(
    ~ r1_tarski(k2_relat_1('#skF_1'),k2_relat_1(k2_xboole_0('#skF_1','#skF_2'))) ),
    inference(splitRight,[status(thm)],[c_255])).

tff(c_282,plain,
    ( ~ v1_relat_1('#skF_2')
    | ~ v1_relat_1('#skF_1') ),
    inference(resolution,[status(thm)],[c_243,c_278])).

tff(c_286,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_22,c_20,c_282])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n021.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 09:49:49 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.22/1.38  % SZS status Theorem for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.22/1.39  
% 2.22/1.39  % SZS output start CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.22/1.39  %$ r1_tarski > m1_subset_1 > v1_relat_1 > k6_subset_1 > k4_xboole_0 > k2_xboole_0 > #nlpp > k2_relat_1 > k1_zfmisc_1 > #skF_2 > #skF_1
% 2.22/1.39  
% 2.22/1.39  %Foreground sorts:
% 2.22/1.39  
% 2.22/1.39  
% 2.22/1.39  %Background operators:
% 2.22/1.39  
% 2.22/1.39  
% 2.22/1.39  %Foreground operators:
% 2.22/1.39  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.22/1.39  tff(k4_xboole_0, type, k4_xboole_0: ($i * $i) > $i).
% 2.22/1.39  tff(r1_tarski, type, r1_tarski: ($i * $i) > $o).
% 2.22/1.39  tff(k2_relat_1, type, k2_relat_1: $i > $i).
% 2.22/1.39  tff('#skF_2', type, '#skF_2': $i).
% 2.22/1.39  tff(k6_subset_1, type, k6_subset_1: ($i * $i) > $i).
% 2.22/1.39  tff('#skF_1', type, '#skF_1': $i).
% 2.22/1.39  tff(k1_zfmisc_1, type, k1_zfmisc_1: $i > $i).
% 2.22/1.39  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.22/1.39  tff(v1_relat_1, type, v1_relat_1: $i > $o).
% 2.22/1.39  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.22/1.39  tff(k2_xboole_0, type, k2_xboole_0: ($i * $i) > $i).
% 2.22/1.39  tff(m1_subset_1, type, m1_subset_1: ($i * $i) > $o).
% 2.22/1.39  
% 2.22/1.40  tff(f_61, negated_conjecture, ~(![A]: (v1_relat_1(A) => (![B]: (v1_relat_1(B) => r1_tarski(k6_subset_1(k2_relat_1(A), k2_relat_1(B)), k2_relat_1(k6_subset_1(A, B))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_relat_1)).
% 2.22/1.40  tff(f_53, axiom, (![A]: (v1_relat_1(A) => (![B]: (v1_relat_1(B) => (k2_relat_1(k2_xboole_0(A, B)) = k2_xboole_0(k2_relat_1(A), k2_relat_1(B))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t26_relat_1)).
% 2.22/1.40  tff(f_35, axiom, (![A, B]: r1_tarski(A, k2_xboole_0(A, B))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_1)).
% 2.22/1.40  tff(f_39, axiom, (![A, B]: (k6_subset_1(A, B) = k4_xboole_0(A, B))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k6_subset_1)).
% 2.22/1.40  tff(f_37, axiom, (![A, B]: m1_subset_1(k6_subset_1(A, B), k1_zfmisc_1(A))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k6_subset_1)).
% 2.22/1.40  tff(f_46, axiom, (![A]: (v1_relat_1(A) => (![B]: (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc2_relat_1)).
% 2.22/1.40  tff(f_27, axiom, (![A, B]: (k2_xboole_0(A, B) = k2_xboole_0(B, A))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 2.22/1.40  tff(f_29, axiom, (![A, B]: (k2_xboole_0(A, k4_xboole_0(B, A)) = k2_xboole_0(A, B))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t39_xboole_1)).
% 2.22/1.40  tff(f_33, axiom, (![A, B, C]: (r1_tarski(A, k2_xboole_0(B, C)) => r1_tarski(k4_xboole_0(A, B), C))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t43_xboole_1)).
% 2.22/1.40  tff(c_22, plain, (v1_relat_1('#skF_1')), inference(cnfTransformation, [status(thm)], [f_61])).
% 2.22/1.40  tff(c_20, plain, (v1_relat_1('#skF_2')), inference(cnfTransformation, [status(thm)], [f_61])).
% 2.22/1.40  tff(c_201, plain, (![A_56, B_57]: (k2_xboole_0(k2_relat_1(A_56), k2_relat_1(B_57))=k2_relat_1(k2_xboole_0(A_56, B_57)) | ~v1_relat_1(B_57) | ~v1_relat_1(A_56))), inference(cnfTransformation, [status(thm)], [f_53])).
% 2.22/1.40  tff(c_8, plain, (![A_8, B_9]: (r1_tarski(A_8, k2_xboole_0(A_8, B_9)))), inference(cnfTransformation, [status(thm)], [f_35])).
% 2.22/1.40  tff(c_243, plain, (![A_56, B_57]: (r1_tarski(k2_relat_1(A_56), k2_relat_1(k2_xboole_0(A_56, B_57))) | ~v1_relat_1(B_57) | ~v1_relat_1(A_56))), inference(superposition, [status(thm), theory('equality')], [c_201, c_8])).
% 2.22/1.40  tff(c_12, plain, (![A_12, B_13]: (k6_subset_1(A_12, B_13)=k4_xboole_0(A_12, B_13))), inference(cnfTransformation, [status(thm)], [f_39])).
% 2.22/1.40  tff(c_10, plain, (![A_10, B_11]: (m1_subset_1(k6_subset_1(A_10, B_11), k1_zfmisc_1(A_10)))), inference(cnfTransformation, [status(thm)], [f_37])).
% 2.22/1.40  tff(c_24, plain, (![A_10, B_11]: (m1_subset_1(k4_xboole_0(A_10, B_11), k1_zfmisc_1(A_10)))), inference(demodulation, [status(thm), theory('equality')], [c_12, c_10])).
% 2.22/1.40  tff(c_124, plain, (![B_37, A_38]: (v1_relat_1(B_37) | ~m1_subset_1(B_37, k1_zfmisc_1(A_38)) | ~v1_relat_1(A_38))), inference(cnfTransformation, [status(thm)], [f_46])).
% 2.22/1.40  tff(c_128, plain, (![A_10, B_11]: (v1_relat_1(k4_xboole_0(A_10, B_11)) | ~v1_relat_1(A_10))), inference(resolution, [status(thm)], [c_24, c_124])).
% 2.22/1.40  tff(c_2, plain, (![B_2, A_1]: (k2_xboole_0(B_2, A_1)=k2_xboole_0(A_1, B_2))), inference(cnfTransformation, [status(thm)], [f_27])).
% 2.22/1.40  tff(c_4, plain, (![A_3, B_4]: (k2_xboole_0(A_3, k4_xboole_0(B_4, A_3))=k2_xboole_0(A_3, B_4))), inference(cnfTransformation, [status(thm)], [f_29])).
% 2.22/1.40  tff(c_130, plain, (![A_41, B_42, C_43]: (r1_tarski(k4_xboole_0(A_41, B_42), C_43) | ~r1_tarski(A_41, k2_xboole_0(B_42, C_43)))), inference(cnfTransformation, [status(thm)], [f_33])).
% 2.22/1.40  tff(c_18, plain, (~r1_tarski(k6_subset_1(k2_relat_1('#skF_1'), k2_relat_1('#skF_2')), k2_relat_1(k6_subset_1('#skF_1', '#skF_2')))), inference(cnfTransformation, [status(thm)], [f_61])).
% 2.22/1.40  tff(c_23, plain, (~r1_tarski(k4_xboole_0(k2_relat_1('#skF_1'), k2_relat_1('#skF_2')), k2_relat_1(k4_xboole_0('#skF_1', '#skF_2')))), inference(demodulation, [status(thm), theory('equality')], [c_12, c_12, c_18])).
% 2.22/1.40  tff(c_134, plain, (~r1_tarski(k2_relat_1('#skF_1'), k2_xboole_0(k2_relat_1('#skF_2'), k2_relat_1(k4_xboole_0('#skF_1', '#skF_2'))))), inference(resolution, [status(thm)], [c_130, c_23])).
% 2.22/1.40  tff(c_216, plain, (~r1_tarski(k2_relat_1('#skF_1'), k2_relat_1(k2_xboole_0('#skF_2', k4_xboole_0('#skF_1', '#skF_2')))) | ~v1_relat_1(k4_xboole_0('#skF_1', '#skF_2')) | ~v1_relat_1('#skF_2')), inference(superposition, [status(thm), theory('equality')], [c_201, c_134])).
% 2.22/1.40  tff(c_255, plain, (~r1_tarski(k2_relat_1('#skF_1'), k2_relat_1(k2_xboole_0('#skF_1', '#skF_2'))) | ~v1_relat_1(k4_xboole_0('#skF_1', '#skF_2'))), inference(demodulation, [status(thm), theory('equality')], [c_20, c_2, c_4, c_216])).
% 2.22/1.40  tff(c_270, plain, (~v1_relat_1(k4_xboole_0('#skF_1', '#skF_2'))), inference(splitLeft, [status(thm)], [c_255])).
% 2.22/1.40  tff(c_273, plain, (~v1_relat_1('#skF_1')), inference(resolution, [status(thm)], [c_128, c_270])).
% 2.22/1.40  tff(c_277, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_22, c_273])).
% 2.22/1.40  tff(c_278, plain, (~r1_tarski(k2_relat_1('#skF_1'), k2_relat_1(k2_xboole_0('#skF_1', '#skF_2')))), inference(splitRight, [status(thm)], [c_255])).
% 2.22/1.40  tff(c_282, plain, (~v1_relat_1('#skF_2') | ~v1_relat_1('#skF_1')), inference(resolution, [status(thm)], [c_243, c_278])).
% 2.22/1.40  tff(c_286, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_22, c_20, c_282])).
% 2.22/1.40  % SZS output end CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.22/1.40  
% 2.22/1.40  Inference rules
% 2.22/1.40  ----------------------
% 2.22/1.40  #Ref     : 0
% 2.22/1.40  #Sup     : 67
% 2.22/1.40  #Fact    : 0
% 2.22/1.40  #Define  : 0
% 2.22/1.40  #Split   : 1
% 2.22/1.40  #Chain   : 0
% 2.22/1.40  #Close   : 0
% 2.22/1.40  
% 2.22/1.40  Ordering : KBO
% 2.22/1.40  
% 2.22/1.40  Simplification rules
% 2.22/1.40  ----------------------
% 2.22/1.40  #Subsume      : 0
% 2.22/1.40  #Demod        : 22
% 2.22/1.40  #Tautology    : 27
% 2.22/1.40  #SimpNegUnit  : 0
% 2.22/1.40  #BackRed      : 0
% 2.22/1.40  
% 2.22/1.40  #Partial instantiations: 0
% 2.22/1.40  #Strategies tried      : 1
% 2.22/1.40  
% 2.22/1.40  Timing (in seconds)
% 2.22/1.40  ----------------------
% 2.22/1.40  Preprocessing        : 0.41
% 2.22/1.40  Parsing              : 0.25
% 2.22/1.40  CNF conversion       : 0.02
% 2.22/1.40  Main loop            : 0.21
% 2.22/1.40  Inferencing          : 0.07
% 2.22/1.40  Reduction            : 0.08
% 2.22/1.40  Demodulation         : 0.06
% 2.22/1.40  BG Simplification    : 0.01
% 2.22/1.40  Subsumption          : 0.04
% 2.22/1.40  Abstraction          : 0.01
% 2.22/1.40  MUC search           : 0.00
% 2.22/1.40  Cooper               : 0.00
% 2.22/1.40  Total                : 0.64
% 2.22/1.40  Index Insertion      : 0.00
% 2.22/1.40  Index Deletion       : 0.00
% 2.22/1.40  Index Matching       : 0.00
% 2.22/1.40  BG Taut test         : 0.00
%------------------------------------------------------------------------------
