%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT1885+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n028.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:38:37 EST 2020

% Result     : Theorem 2.12s
% Output     : CNFRefutation 2.21s
% Verified   : 
% Statistics : Number of formulae       :   51 ( 128 expanded)
%              Number of leaves         :   20 (  58 expanded)
%              Depth                    :   12
%              Number of atoms          :  120 ( 586 expanded)
%              Number of equality atoms :    9 (  55 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ v4_tex_2 > v3_tex_2 > m1_subset_1 > m1_pre_topc > v2_struct_0 > v2_pre_topc > v1_xboole_0 > v1_pre_topc > l1_pre_topc > #nlpp > u1_struct_0 > k1_zfmisc_1 > #skF_2 > #skF_3 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff(v2_struct_0,type,(
    v2_struct_0: $i > $o )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(v4_tex_2,type,(
    v4_tex_2: ( $i * $i ) > $o )).

tff(l1_pre_topc,type,(
    l1_pre_topc: $i > $o )).

tff(v3_tex_2,type,(
    v3_tex_2: ( $i * $i ) > $o )).

tff('#skF_2',type,(
    '#skF_2': $i )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff(v1_pre_topc,type,(
    v1_pre_topc: $i > $o )).

tff(k1_zfmisc_1,type,(
    k1_zfmisc_1: $i > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(m1_pre_topc,type,(
    m1_pre_topc: ( $i * $i ) > $o )).

tff(v2_pre_topc,type,(
    v2_pre_topc: $i > $o )).

tff(u1_struct_0,type,(
    u1_struct_0: $i > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i ) > $i )).

tff(v1_xboole_0,type,(
    v1_xboole_0: $i > $o )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_92,negated_conjecture,(
    ~ ! [A] :
        ( ( ~ v2_struct_0(A)
          & v2_pre_topc(A)
          & l1_pre_topc(A) )
       => ! [B] :
            ( ( ~ v1_xboole_0(B)
              & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
           => ~ ( v3_tex_2(B,A)
                & ! [C] :
                    ( ( ~ v2_struct_0(C)
                      & v1_pre_topc(C)
                      & m1_pre_topc(C,A) )
                   => ~ ( v4_tex_2(C,A)
                        & B = u1_struct_0(C) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t53_tex_2)).

tff(f_45,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v1_xboole_0(B)
            & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
         => ? [C] :
              ( ~ v2_struct_0(C)
              & v1_pre_topc(C)
              & m1_pre_topc(C,A)
              & B = u1_struct_0(C) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t10_tsep_1)).

tff(f_62,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ( C = u1_struct_0(B)
               => ( v3_tex_2(C,A)
                <=> v4_tex_2(B,A) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t51_tex_2)).

tff(c_26,plain,(
    ~ v2_struct_0('#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_92])).

tff(c_20,plain,(
    ~ v1_xboole_0('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_92])).

tff(c_22,plain,(
    l1_pre_topc('#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_92])).

tff(c_18,plain,(
    m1_subset_1('#skF_3',k1_zfmisc_1(u1_struct_0('#skF_2'))) ),
    inference(cnfTransformation,[status(thm)],[f_92])).

tff(c_28,plain,(
    ! [A_20,B_21] :
      ( ~ v2_struct_0('#skF_1'(A_20,B_21))
      | ~ m1_subset_1(B_21,k1_zfmisc_1(u1_struct_0(A_20)))
      | v1_xboole_0(B_21)
      | ~ l1_pre_topc(A_20)
      | v2_struct_0(A_20) ) ),
    inference(cnfTransformation,[status(thm)],[f_45])).

tff(c_31,plain,
    ( ~ v2_struct_0('#skF_1'('#skF_2','#skF_3'))
    | v1_xboole_0('#skF_3')
    | ~ l1_pre_topc('#skF_2')
    | v2_struct_0('#skF_2') ),
    inference(resolution,[status(thm)],[c_18,c_28])).

tff(c_34,plain,
    ( ~ v2_struct_0('#skF_1'('#skF_2','#skF_3'))
    | v1_xboole_0('#skF_3')
    | v2_struct_0('#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_22,c_31])).

tff(c_35,plain,(
    ~ v2_struct_0('#skF_1'('#skF_2','#skF_3')) ),
    inference(negUnitSimplification,[status(thm)],[c_26,c_20,c_34])).

tff(c_36,plain,(
    ! [A_22,B_23] :
      ( v1_pre_topc('#skF_1'(A_22,B_23))
      | ~ m1_subset_1(B_23,k1_zfmisc_1(u1_struct_0(A_22)))
      | v1_xboole_0(B_23)
      | ~ l1_pre_topc(A_22)
      | v2_struct_0(A_22) ) ),
    inference(cnfTransformation,[status(thm)],[f_45])).

tff(c_39,plain,
    ( v1_pre_topc('#skF_1'('#skF_2','#skF_3'))
    | v1_xboole_0('#skF_3')
    | ~ l1_pre_topc('#skF_2')
    | v2_struct_0('#skF_2') ),
    inference(resolution,[status(thm)],[c_18,c_36])).

tff(c_42,plain,
    ( v1_pre_topc('#skF_1'('#skF_2','#skF_3'))
    | v1_xboole_0('#skF_3')
    | v2_struct_0('#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_22,c_39])).

tff(c_43,plain,(
    v1_pre_topc('#skF_1'('#skF_2','#skF_3')) ),
    inference(negUnitSimplification,[status(thm)],[c_26,c_20,c_42])).

tff(c_44,plain,(
    ! [A_24,B_25] :
      ( m1_pre_topc('#skF_1'(A_24,B_25),A_24)
      | ~ m1_subset_1(B_25,k1_zfmisc_1(u1_struct_0(A_24)))
      | v1_xboole_0(B_25)
      | ~ l1_pre_topc(A_24)
      | v2_struct_0(A_24) ) ),
    inference(cnfTransformation,[status(thm)],[f_45])).

tff(c_46,plain,
    ( m1_pre_topc('#skF_1'('#skF_2','#skF_3'),'#skF_2')
    | v1_xboole_0('#skF_3')
    | ~ l1_pre_topc('#skF_2')
    | v2_struct_0('#skF_2') ),
    inference(resolution,[status(thm)],[c_18,c_44])).

tff(c_49,plain,
    ( m1_pre_topc('#skF_1'('#skF_2','#skF_3'),'#skF_2')
    | v1_xboole_0('#skF_3')
    | v2_struct_0('#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_22,c_46])).

tff(c_50,plain,(
    m1_pre_topc('#skF_1'('#skF_2','#skF_3'),'#skF_2') ),
    inference(negUnitSimplification,[status(thm)],[c_26,c_20,c_49])).

tff(c_51,plain,(
    ! [A_26,B_27] :
      ( u1_struct_0('#skF_1'(A_26,B_27)) = B_27
      | ~ m1_subset_1(B_27,k1_zfmisc_1(u1_struct_0(A_26)))
      | v1_xboole_0(B_27)
      | ~ l1_pre_topc(A_26)
      | v2_struct_0(A_26) ) ),
    inference(cnfTransformation,[status(thm)],[f_45])).

tff(c_54,plain,
    ( u1_struct_0('#skF_1'('#skF_2','#skF_3')) = '#skF_3'
    | v1_xboole_0('#skF_3')
    | ~ l1_pre_topc('#skF_2')
    | v2_struct_0('#skF_2') ),
    inference(resolution,[status(thm)],[c_18,c_51])).

tff(c_57,plain,
    ( u1_struct_0('#skF_1'('#skF_2','#skF_3')) = '#skF_3'
    | v1_xboole_0('#skF_3')
    | v2_struct_0('#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_22,c_54])).

tff(c_58,plain,(
    u1_struct_0('#skF_1'('#skF_2','#skF_3')) = '#skF_3' ),
    inference(negUnitSimplification,[status(thm)],[c_26,c_20,c_57])).

tff(c_16,plain,(
    v3_tex_2('#skF_3','#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_92])).

tff(c_78,plain,(
    ! [B_28,A_29] :
      ( v4_tex_2(B_28,A_29)
      | ~ v3_tex_2(u1_struct_0(B_28),A_29)
      | ~ m1_subset_1(u1_struct_0(B_28),k1_zfmisc_1(u1_struct_0(A_29)))
      | ~ m1_pre_topc(B_28,A_29)
      | ~ l1_pre_topc(A_29)
      | v2_struct_0(A_29) ) ),
    inference(cnfTransformation,[status(thm)],[f_62])).

tff(c_81,plain,(
    ! [A_29] :
      ( v4_tex_2('#skF_1'('#skF_2','#skF_3'),A_29)
      | ~ v3_tex_2(u1_struct_0('#skF_1'('#skF_2','#skF_3')),A_29)
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(u1_struct_0(A_29)))
      | ~ m1_pre_topc('#skF_1'('#skF_2','#skF_3'),A_29)
      | ~ l1_pre_topc(A_29)
      | v2_struct_0(A_29) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_58,c_78])).

tff(c_97,plain,(
    ! [A_32] :
      ( v4_tex_2('#skF_1'('#skF_2','#skF_3'),A_32)
      | ~ v3_tex_2('#skF_3',A_32)
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(u1_struct_0(A_32)))
      | ~ m1_pre_topc('#skF_1'('#skF_2','#skF_3'),A_32)
      | ~ l1_pre_topc(A_32)
      | v2_struct_0(A_32) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_58,c_81])).

tff(c_103,plain,
    ( v4_tex_2('#skF_1'('#skF_2','#skF_3'),'#skF_2')
    | ~ v3_tex_2('#skF_3','#skF_2')
    | ~ m1_pre_topc('#skF_1'('#skF_2','#skF_3'),'#skF_2')
    | ~ l1_pre_topc('#skF_2')
    | v2_struct_0('#skF_2') ),
    inference(resolution,[status(thm)],[c_18,c_97])).

tff(c_107,plain,
    ( v4_tex_2('#skF_1'('#skF_2','#skF_3'),'#skF_2')
    | v2_struct_0('#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_22,c_50,c_16,c_103])).

tff(c_108,plain,(
    v4_tex_2('#skF_1'('#skF_2','#skF_3'),'#skF_2') ),
    inference(negUnitSimplification,[status(thm)],[c_26,c_107])).

tff(c_14,plain,(
    ! [C_18] :
      ( u1_struct_0(C_18) != '#skF_3'
      | ~ v4_tex_2(C_18,'#skF_2')
      | ~ m1_pre_topc(C_18,'#skF_2')
      | ~ v1_pre_topc(C_18)
      | v2_struct_0(C_18) ) ),
    inference(cnfTransformation,[status(thm)],[f_92])).

tff(c_111,plain,
    ( u1_struct_0('#skF_1'('#skF_2','#skF_3')) != '#skF_3'
    | ~ m1_pre_topc('#skF_1'('#skF_2','#skF_3'),'#skF_2')
    | ~ v1_pre_topc('#skF_1'('#skF_2','#skF_3'))
    | v2_struct_0('#skF_1'('#skF_2','#skF_3')) ),
    inference(resolution,[status(thm)],[c_108,c_14])).

tff(c_114,plain,(
    v2_struct_0('#skF_1'('#skF_2','#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_43,c_50,c_58,c_111])).

tff(c_116,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_35,c_114])).

%------------------------------------------------------------------------------
