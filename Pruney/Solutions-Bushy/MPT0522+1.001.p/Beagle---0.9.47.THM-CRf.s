%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0522+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n026.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:36:26 EST 2020

% Result     : Theorem 1.57s
% Output     : CNFRefutation 1.64s
% Verified   : 
% Statistics : Number of formulae       :   28 (  44 expanded)
%              Number of leaves         :   14 (  22 expanded)
%              Depth                    :    6
%              Number of atoms          :   36 (  78 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r1_tarski > v1_relat_1 > k8_relat_1 > k5_relat_1 > #nlpp > #skF_2 > #skF_3 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff(k8_relat_1,type,(
    k8_relat_1: ( $i * $i ) > $i )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(k5_relat_1,type,(
    k5_relat_1: ( $i * $i ) > $i )).

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

tff(v1_relat_1,type,(
    v1_relat_1: $i > $o )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(f_52,negated_conjecture,(
    ~ ! [A,B] :
        ( v1_relat_1(B)
       => ! [C] :
            ( v1_relat_1(C)
           => r1_tarski(k5_relat_1(B,k8_relat_1(A,C)),k5_relat_1(B,C)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t122_relat_1)).

tff(f_32,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => r1_tarski(k8_relat_1(A,B),B) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t117_relat_1)).

tff(f_28,axiom,(
    ! [A,B] :
      ( v1_relat_1(B)
     => v1_relat_1(k8_relat_1(A,B)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k8_relat_1)).

tff(f_44,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( v1_relat_1(B)
         => ! [C] :
              ( v1_relat_1(C)
             => ( r1_tarski(A,B)
               => r1_tarski(k5_relat_1(C,A),k5_relat_1(C,B)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_relat_1)).

tff(c_10,plain,(
    v1_relat_1('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_52])).

tff(c_4,plain,(
    ! [A_3,B_4] :
      ( r1_tarski(k8_relat_1(A_3,B_4),B_4)
      | ~ v1_relat_1(B_4) ) ),
    inference(cnfTransformation,[status(thm)],[f_32])).

tff(c_2,plain,(
    ! [A_1,B_2] :
      ( v1_relat_1(k8_relat_1(A_1,B_2))
      | ~ v1_relat_1(B_2) ) ),
    inference(cnfTransformation,[status(thm)],[f_28])).

tff(c_12,plain,(
    v1_relat_1('#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_52])).

tff(c_15,plain,(
    ! [C_17,A_18,B_19] :
      ( r1_tarski(k5_relat_1(C_17,A_18),k5_relat_1(C_17,B_19))
      | ~ r1_tarski(A_18,B_19)
      | ~ v1_relat_1(C_17)
      | ~ v1_relat_1(B_19)
      | ~ v1_relat_1(A_18) ) ),
    inference(cnfTransformation,[status(thm)],[f_44])).

tff(c_8,plain,(
    ~ r1_tarski(k5_relat_1('#skF_2',k8_relat_1('#skF_1','#skF_3')),k5_relat_1('#skF_2','#skF_3')) ),
    inference(cnfTransformation,[status(thm)],[f_52])).

tff(c_18,plain,
    ( ~ r1_tarski(k8_relat_1('#skF_1','#skF_3'),'#skF_3')
    | ~ v1_relat_1('#skF_2')
    | ~ v1_relat_1('#skF_3')
    | ~ v1_relat_1(k8_relat_1('#skF_1','#skF_3')) ),
    inference(resolution,[status(thm)],[c_15,c_8])).

tff(c_21,plain,
    ( ~ r1_tarski(k8_relat_1('#skF_1','#skF_3'),'#skF_3')
    | ~ v1_relat_1(k8_relat_1('#skF_1','#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_10,c_12,c_18])).

tff(c_22,plain,(
    ~ v1_relat_1(k8_relat_1('#skF_1','#skF_3')) ),
    inference(splitLeft,[status(thm)],[c_21])).

tff(c_25,plain,(
    ~ v1_relat_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_2,c_22])).

tff(c_29,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_10,c_25])).

tff(c_30,plain,(
    ~ r1_tarski(k8_relat_1('#skF_1','#skF_3'),'#skF_3') ),
    inference(splitRight,[status(thm)],[c_21])).

tff(c_34,plain,(
    ~ v1_relat_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_4,c_30])).

tff(c_38,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_10,c_34])).

%------------------------------------------------------------------------------
