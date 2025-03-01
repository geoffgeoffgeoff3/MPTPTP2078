%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:00:25 EST 2020

% Result     : Theorem 1.71s
% Output     : CNFRefutation 1.97s
% Verified   : 
% Statistics : Number of formulae       :   57 (  63 expanded)
%              Number of leaves         :   32 (  36 expanded)
%              Depth                    :   10
%              Number of atoms          :   38 (  44 expanded)
%              Number of equality atoms :   31 (  37 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ v1_relat_1 > k6_enumset1 > k5_enumset1 > k4_enumset1 > k3_enumset1 > k2_enumset1 > k1_enumset1 > k8_relat_1 > k5_xboole_0 > k4_xboole_0 > k3_xboole_0 > k2_zfmisc_1 > k2_xboole_0 > k2_tarski > #nlpp > k6_relat_1 > k1_setfam_1 > k1_relat_1 > k1_xboole_0 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff(k8_relat_1,type,(
    k8_relat_1: ( $i * $i ) > $i )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(k4_xboole_0,type,(
    k4_xboole_0: ( $i * $i ) > $i )).

tff(k1_xboole_0,type,(
    k1_xboole_0: $i )).

tff(k3_enumset1,type,(
    k3_enumset1: ( $i * $i * $i * $i * $i ) > $i )).

tff(k5_xboole_0,type,(
    k5_xboole_0: ( $i * $i ) > $i )).

tff(k2_enumset1,type,(
    k2_enumset1: ( $i * $i * $i * $i ) > $i )).

tff(k2_tarski,type,(
    k2_tarski: ( $i * $i ) > $i )).

tff(k1_enumset1,type,(
    k1_enumset1: ( $i * $i * $i ) > $i )).

tff('#skF_1',type,(
    '#skF_1': $i )).

tff(k4_enumset1,type,(
    k4_enumset1: ( $i * $i * $i * $i * $i * $i ) > $i )).

tff(k6_enumset1,type,(
    k6_enumset1: ( $i * $i * $i * $i * $i * $i * $i * $i ) > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(v1_relat_1,type,(
    v1_relat_1: $i > $o )).

tff(k2_zfmisc_1,type,(
    k2_zfmisc_1: ( $i * $i ) > $i )).

tff(k6_relat_1,type,(
    k6_relat_1: $i > $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(k3_xboole_0,type,(
    k3_xboole_0: ( $i * $i ) > $i )).

tff(k2_xboole_0,type,(
    k2_xboole_0: ( $i * $i ) > $i )).

tff(k5_enumset1,type,(
    k5_enumset1: ( $i * $i * $i * $i * $i * $i * $i ) > $i )).

tff(k1_relat_1,type,(
    k1_relat_1: $i > $i )).

tff(k1_setfam_1,type,(
    k1_setfam_1: $i > $i )).

tff(f_58,axiom,(
    k6_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t81_relat_1)).

tff(f_53,axiom,(
    ! [A] : v1_relat_1(k6_relat_1(A)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_relat_1)).

tff(f_57,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => k8_relat_1(A,B) = k3_xboole_0(B,k2_zfmisc_1(k1_relat_1(B),A)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t124_relat_1)).

tff(f_33,axiom,(
    ! [A] : k4_xboole_0(k1_xboole_0,A) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_boole)).

tff(f_35,axiom,(
    ! [A] : k5_xboole_0(A,k1_xboole_0) = A ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_boole)).

tff(f_37,axiom,(
    ! [A,B] : k2_xboole_0(A,B) = k5_xboole_0(A,k4_xboole_0(B,A)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_xboole_1)).

tff(f_27,axiom,(
    ! [A,B] : k2_xboole_0(A,B) = k2_xboole_0(B,A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

tff(f_31,axiom,(
    ! [A] : k3_xboole_0(A,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_boole)).

tff(f_29,axiom,(
    ! [A,B] : k4_xboole_0(A,B) = k5_xboole_0(A,k3_xboole_0(A,B)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

tff(f_61,negated_conjecture,(
    ~ ! [A] : k8_relat_1(A,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t138_relat_1)).

tff(c_32,plain,(
    k6_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnfTransformation,[status(thm)],[f_58])).

tff(c_39,plain,(
    ! [A_42] : v1_relat_1(k6_relat_1(A_42)) ),
    inference(cnfTransformation,[status(thm)],[f_53])).

tff(c_41,plain,(
    v1_relat_1(k1_xboole_0) ),
    inference(superposition,[status(thm),theory(equality)],[c_32,c_39])).

tff(c_305,plain,(
    ! [B_68,A_69] :
      ( k3_xboole_0(B_68,k2_zfmisc_1(k1_relat_1(B_68),A_69)) = k8_relat_1(A_69,B_68)
      | ~ v1_relat_1(B_68) ) ),
    inference(cnfTransformation,[status(thm)],[f_57])).

tff(c_8,plain,(
    ! [A_6] : k4_xboole_0(k1_xboole_0,A_6) = k1_xboole_0 ),
    inference(cnfTransformation,[status(thm)],[f_33])).

tff(c_10,plain,(
    ! [A_7] : k5_xboole_0(A_7,k1_xboole_0) = A_7 ),
    inference(cnfTransformation,[status(thm)],[f_35])).

tff(c_116,plain,(
    ! [A_52,B_53] : k5_xboole_0(A_52,k4_xboole_0(B_53,A_52)) = k2_xboole_0(A_52,B_53) ),
    inference(cnfTransformation,[status(thm)],[f_37])).

tff(c_125,plain,(
    ! [A_6] : k5_xboole_0(A_6,k1_xboole_0) = k2_xboole_0(A_6,k1_xboole_0) ),
    inference(superposition,[status(thm),theory(equality)],[c_8,c_116])).

tff(c_129,plain,(
    ! [A_54] : k2_xboole_0(A_54,k1_xboole_0) = A_54 ),
    inference(demodulation,[status(thm),theory(equality)],[c_10,c_125])).

tff(c_2,plain,(
    ! [B_2,A_1] : k2_xboole_0(B_2,A_1) = k2_xboole_0(A_1,B_2) ),
    inference(cnfTransformation,[status(thm)],[f_27])).

tff(c_135,plain,(
    ! [A_54] : k2_xboole_0(k1_xboole_0,A_54) = A_54 ),
    inference(superposition,[status(thm),theory(equality)],[c_129,c_2])).

tff(c_6,plain,(
    ! [A_5] : k3_xboole_0(A_5,k1_xboole_0) = k1_xboole_0 ),
    inference(cnfTransformation,[status(thm)],[f_31])).

tff(c_191,plain,(
    ! [A_56,B_57] : k5_xboole_0(A_56,k3_xboole_0(A_56,B_57)) = k4_xboole_0(A_56,B_57) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_200,plain,(
    ! [A_5] : k5_xboole_0(A_5,k1_xboole_0) = k4_xboole_0(A_5,k1_xboole_0) ),
    inference(superposition,[status(thm),theory(equality)],[c_6,c_191])).

tff(c_204,plain,(
    ! [A_58] : k4_xboole_0(A_58,k1_xboole_0) = A_58 ),
    inference(demodulation,[status(thm),theory(equality)],[c_10,c_200])).

tff(c_12,plain,(
    ! [A_8,B_9] : k5_xboole_0(A_8,k4_xboole_0(B_9,A_8)) = k2_xboole_0(A_8,B_9) ),
    inference(cnfTransformation,[status(thm)],[f_37])).

tff(c_210,plain,(
    ! [A_58] : k5_xboole_0(k1_xboole_0,A_58) = k2_xboole_0(k1_xboole_0,A_58) ),
    inference(superposition,[status(thm),theory(equality)],[c_204,c_12])).

tff(c_228,plain,(
    ! [A_59] : k5_xboole_0(k1_xboole_0,A_59) = A_59 ),
    inference(demodulation,[status(thm),theory(equality)],[c_135,c_210])).

tff(c_4,plain,(
    ! [A_3,B_4] : k5_xboole_0(A_3,k3_xboole_0(A_3,B_4)) = k4_xboole_0(A_3,B_4) ),
    inference(cnfTransformation,[status(thm)],[f_29])).

tff(c_235,plain,(
    ! [B_4] : k4_xboole_0(k1_xboole_0,B_4) = k3_xboole_0(k1_xboole_0,B_4) ),
    inference(superposition,[status(thm),theory(equality)],[c_228,c_4])).

tff(c_260,plain,(
    ! [B_4] : k3_xboole_0(k1_xboole_0,B_4) = k1_xboole_0 ),
    inference(demodulation,[status(thm),theory(equality)],[c_8,c_235])).

tff(c_312,plain,(
    ! [A_69] :
      ( k8_relat_1(A_69,k1_xboole_0) = k1_xboole_0
      | ~ v1_relat_1(k1_xboole_0) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_305,c_260])).

tff(c_325,plain,(
    ! [A_69] : k8_relat_1(A_69,k1_xboole_0) = k1_xboole_0 ),
    inference(demodulation,[status(thm),theory(equality)],[c_41,c_312])).

tff(c_34,plain,(
    k8_relat_1('#skF_1',k1_xboole_0) != k1_xboole_0 ),
    inference(cnfTransformation,[status(thm)],[f_61])).

tff(c_331,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_325,c_34])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.00/0.12  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.11/0.32  % Computer   : n015.cluster.edu
% 0.11/0.32  % Model      : x86_64 x86_64
% 0.11/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.32  % Memory     : 8042.1875MB
% 0.11/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.32  % CPULimit   : 60
% 0.11/0.32  % DateTime   : Tue Dec  1 13:24:53 EST 2020
% 0.11/0.32  % CPUTime    : 
% 0.11/0.33  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.71/1.17  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.97/1.17  
% 1.97/1.17  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.97/1.18  %$ v1_relat_1 > k6_enumset1 > k5_enumset1 > k4_enumset1 > k3_enumset1 > k2_enumset1 > k1_enumset1 > k8_relat_1 > k5_xboole_0 > k4_xboole_0 > k3_xboole_0 > k2_zfmisc_1 > k2_xboole_0 > k2_tarski > #nlpp > k6_relat_1 > k1_setfam_1 > k1_relat_1 > k1_xboole_0 > #skF_1
% 1.97/1.18  
% 1.97/1.18  %Foreground sorts:
% 1.97/1.18  
% 1.97/1.18  
% 1.97/1.18  %Background operators:
% 1.97/1.18  
% 1.97/1.18  
% 1.97/1.18  %Foreground operators:
% 1.97/1.18  tff(k8_relat_1, type, k8_relat_1: ($i * $i) > $i).
% 1.97/1.18  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 1.97/1.18  tff(k4_xboole_0, type, k4_xboole_0: ($i * $i) > $i).
% 1.97/1.18  tff(k1_xboole_0, type, k1_xboole_0: $i).
% 1.97/1.18  tff(k3_enumset1, type, k3_enumset1: ($i * $i * $i * $i * $i) > $i).
% 1.97/1.18  tff(k5_xboole_0, type, k5_xboole_0: ($i * $i) > $i).
% 1.97/1.18  tff(k2_enumset1, type, k2_enumset1: ($i * $i * $i * $i) > $i).
% 1.97/1.18  tff(k2_tarski, type, k2_tarski: ($i * $i) > $i).
% 1.97/1.18  tff(k1_enumset1, type, k1_enumset1: ($i * $i * $i) > $i).
% 1.97/1.18  tff('#skF_1', type, '#skF_1': $i).
% 1.97/1.18  tff(k4_enumset1, type, k4_enumset1: ($i * $i * $i * $i * $i * $i) > $i).
% 1.97/1.18  tff(k6_enumset1, type, k6_enumset1: ($i * $i * $i * $i * $i * $i * $i * $i) > $i).
% 1.97/1.18  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 1.97/1.18  tff(v1_relat_1, type, v1_relat_1: $i > $o).
% 1.97/1.18  tff(k2_zfmisc_1, type, k2_zfmisc_1: ($i * $i) > $i).
% 1.97/1.18  tff(k6_relat_1, type, k6_relat_1: $i > $i).
% 1.97/1.18  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 1.97/1.18  tff(k3_xboole_0, type, k3_xboole_0: ($i * $i) > $i).
% 1.97/1.18  tff(k2_xboole_0, type, k2_xboole_0: ($i * $i) > $i).
% 1.97/1.18  tff(k5_enumset1, type, k5_enumset1: ($i * $i * $i * $i * $i * $i * $i) > $i).
% 1.97/1.18  tff(k1_relat_1, type, k1_relat_1: $i > $i).
% 1.97/1.18  tff(k1_setfam_1, type, k1_setfam_1: $i > $i).
% 1.97/1.18  
% 1.97/1.19  tff(f_58, axiom, (k6_relat_1(k1_xboole_0) = k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t81_relat_1)).
% 1.97/1.19  tff(f_53, axiom, (![A]: v1_relat_1(k6_relat_1(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k6_relat_1)).
% 1.97/1.19  tff(f_57, axiom, (![A, B]: (v1_relat_1(B) => (k8_relat_1(A, B) = k3_xboole_0(B, k2_zfmisc_1(k1_relat_1(B), A))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t124_relat_1)).
% 1.97/1.19  tff(f_33, axiom, (![A]: (k4_xboole_0(k1_xboole_0, A) = k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_boole)).
% 1.97/1.19  tff(f_35, axiom, (![A]: (k5_xboole_0(A, k1_xboole_0) = A)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_boole)).
% 1.97/1.19  tff(f_37, axiom, (![A, B]: (k2_xboole_0(A, B) = k5_xboole_0(A, k4_xboole_0(B, A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t98_xboole_1)).
% 1.97/1.19  tff(f_27, axiom, (![A, B]: (k2_xboole_0(A, B) = k2_xboole_0(B, A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 1.97/1.19  tff(f_31, axiom, (![A]: (k3_xboole_0(A, k1_xboole_0) = k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_boole)).
% 1.97/1.19  tff(f_29, axiom, (![A, B]: (k4_xboole_0(A, B) = k5_xboole_0(A, k3_xboole_0(A, B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 1.97/1.19  tff(f_61, negated_conjecture, ~(![A]: (k8_relat_1(A, k1_xboole_0) = k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t138_relat_1)).
% 1.97/1.19  tff(c_32, plain, (k6_relat_1(k1_xboole_0)=k1_xboole_0), inference(cnfTransformation, [status(thm)], [f_58])).
% 1.97/1.19  tff(c_39, plain, (![A_42]: (v1_relat_1(k6_relat_1(A_42)))), inference(cnfTransformation, [status(thm)], [f_53])).
% 1.97/1.19  tff(c_41, plain, (v1_relat_1(k1_xboole_0)), inference(superposition, [status(thm), theory('equality')], [c_32, c_39])).
% 1.97/1.19  tff(c_305, plain, (![B_68, A_69]: (k3_xboole_0(B_68, k2_zfmisc_1(k1_relat_1(B_68), A_69))=k8_relat_1(A_69, B_68) | ~v1_relat_1(B_68))), inference(cnfTransformation, [status(thm)], [f_57])).
% 1.97/1.19  tff(c_8, plain, (![A_6]: (k4_xboole_0(k1_xboole_0, A_6)=k1_xboole_0)), inference(cnfTransformation, [status(thm)], [f_33])).
% 1.97/1.19  tff(c_10, plain, (![A_7]: (k5_xboole_0(A_7, k1_xboole_0)=A_7)), inference(cnfTransformation, [status(thm)], [f_35])).
% 1.97/1.19  tff(c_116, plain, (![A_52, B_53]: (k5_xboole_0(A_52, k4_xboole_0(B_53, A_52))=k2_xboole_0(A_52, B_53))), inference(cnfTransformation, [status(thm)], [f_37])).
% 1.97/1.19  tff(c_125, plain, (![A_6]: (k5_xboole_0(A_6, k1_xboole_0)=k2_xboole_0(A_6, k1_xboole_0))), inference(superposition, [status(thm), theory('equality')], [c_8, c_116])).
% 1.97/1.19  tff(c_129, plain, (![A_54]: (k2_xboole_0(A_54, k1_xboole_0)=A_54)), inference(demodulation, [status(thm), theory('equality')], [c_10, c_125])).
% 1.97/1.19  tff(c_2, plain, (![B_2, A_1]: (k2_xboole_0(B_2, A_1)=k2_xboole_0(A_1, B_2))), inference(cnfTransformation, [status(thm)], [f_27])).
% 1.97/1.19  tff(c_135, plain, (![A_54]: (k2_xboole_0(k1_xboole_0, A_54)=A_54)), inference(superposition, [status(thm), theory('equality')], [c_129, c_2])).
% 1.97/1.19  tff(c_6, plain, (![A_5]: (k3_xboole_0(A_5, k1_xboole_0)=k1_xboole_0)), inference(cnfTransformation, [status(thm)], [f_31])).
% 1.97/1.19  tff(c_191, plain, (![A_56, B_57]: (k5_xboole_0(A_56, k3_xboole_0(A_56, B_57))=k4_xboole_0(A_56, B_57))), inference(cnfTransformation, [status(thm)], [f_29])).
% 1.97/1.19  tff(c_200, plain, (![A_5]: (k5_xboole_0(A_5, k1_xboole_0)=k4_xboole_0(A_5, k1_xboole_0))), inference(superposition, [status(thm), theory('equality')], [c_6, c_191])).
% 1.97/1.19  tff(c_204, plain, (![A_58]: (k4_xboole_0(A_58, k1_xboole_0)=A_58)), inference(demodulation, [status(thm), theory('equality')], [c_10, c_200])).
% 1.97/1.19  tff(c_12, plain, (![A_8, B_9]: (k5_xboole_0(A_8, k4_xboole_0(B_9, A_8))=k2_xboole_0(A_8, B_9))), inference(cnfTransformation, [status(thm)], [f_37])).
% 1.97/1.19  tff(c_210, plain, (![A_58]: (k5_xboole_0(k1_xboole_0, A_58)=k2_xboole_0(k1_xboole_0, A_58))), inference(superposition, [status(thm), theory('equality')], [c_204, c_12])).
% 1.97/1.19  tff(c_228, plain, (![A_59]: (k5_xboole_0(k1_xboole_0, A_59)=A_59)), inference(demodulation, [status(thm), theory('equality')], [c_135, c_210])).
% 1.97/1.19  tff(c_4, plain, (![A_3, B_4]: (k5_xboole_0(A_3, k3_xboole_0(A_3, B_4))=k4_xboole_0(A_3, B_4))), inference(cnfTransformation, [status(thm)], [f_29])).
% 1.97/1.19  tff(c_235, plain, (![B_4]: (k4_xboole_0(k1_xboole_0, B_4)=k3_xboole_0(k1_xboole_0, B_4))), inference(superposition, [status(thm), theory('equality')], [c_228, c_4])).
% 1.97/1.19  tff(c_260, plain, (![B_4]: (k3_xboole_0(k1_xboole_0, B_4)=k1_xboole_0)), inference(demodulation, [status(thm), theory('equality')], [c_8, c_235])).
% 1.97/1.19  tff(c_312, plain, (![A_69]: (k8_relat_1(A_69, k1_xboole_0)=k1_xboole_0 | ~v1_relat_1(k1_xboole_0))), inference(superposition, [status(thm), theory('equality')], [c_305, c_260])).
% 1.97/1.19  tff(c_325, plain, (![A_69]: (k8_relat_1(A_69, k1_xboole_0)=k1_xboole_0)), inference(demodulation, [status(thm), theory('equality')], [c_41, c_312])).
% 1.97/1.19  tff(c_34, plain, (k8_relat_1('#skF_1', k1_xboole_0)!=k1_xboole_0), inference(cnfTransformation, [status(thm)], [f_61])).
% 1.97/1.19  tff(c_331, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_325, c_34])).
% 1.97/1.19  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.97/1.19  
% 1.97/1.19  Inference rules
% 1.97/1.19  ----------------------
% 1.97/1.19  #Ref     : 0
% 1.97/1.19  #Sup     : 68
% 1.97/1.19  #Fact    : 0
% 1.97/1.19  #Define  : 0
% 1.97/1.19  #Split   : 0
% 1.97/1.19  #Chain   : 0
% 1.97/1.19  #Close   : 0
% 1.97/1.19  
% 1.97/1.19  Ordering : KBO
% 1.97/1.19  
% 1.97/1.19  Simplification rules
% 1.97/1.19  ----------------------
% 1.97/1.19  #Subsume      : 0
% 1.97/1.19  #Demod        : 22
% 1.97/1.19  #Tautology    : 59
% 1.97/1.19  #SimpNegUnit  : 0
% 1.97/1.19  #BackRed      : 1
% 1.97/1.19  
% 1.97/1.19  #Partial instantiations: 0
% 1.97/1.19  #Strategies tried      : 1
% 1.97/1.19  
% 1.97/1.19  Timing (in seconds)
% 1.97/1.19  ----------------------
% 1.97/1.19  Preprocessing        : 0.30
% 1.97/1.19  Parsing              : 0.16
% 1.97/1.19  CNF conversion       : 0.02
% 1.97/1.19  Main loop            : 0.15
% 1.97/1.19  Inferencing          : 0.06
% 1.97/1.19  Reduction            : 0.05
% 1.97/1.19  Demodulation         : 0.04
% 1.97/1.19  BG Simplification    : 0.01
% 1.97/1.19  Subsumption          : 0.02
% 1.97/1.19  Abstraction          : 0.01
% 1.97/1.19  MUC search           : 0.00
% 1.97/1.19  Cooper               : 0.00
% 1.97/1.19  Total                : 0.47
% 1.97/1.19  Index Insertion      : 0.00
% 1.97/1.19  Index Deletion       : 0.00
% 1.97/1.19  Index Matching       : 0.00
% 1.97/1.19  BG Taut test         : 0.00
%------------------------------------------------------------------------------
