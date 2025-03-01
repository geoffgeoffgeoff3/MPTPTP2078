%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:23:38 EST 2020

% Result     : Theorem 3.63s
% Output     : CNFRefutation 3.63s
% Verified   : 
% Statistics : Number of formulae       :  182 (27163 expanded)
%              Number of leaves         :   50 (9438 expanded)
%              Depth                    :   24
%              Number of atoms          :  457 (77550 expanded)
%              Number of equality atoms :  110 (16879 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_funct_2 > v1_funct_2 > v5_relat_1 > v4_relat_1 > v1_partfun1 > m1_subset_1 > v2_struct_0 > v2_funct_1 > v1_xboole_0 > v1_relat_1 > v1_funct_1 > l1_struct_0 > k2_tops_2 > k2_relset_1 > k5_relat_1 > k2_zfmisc_1 > #nlpp > u1_struct_0 > k6_relat_1 > k6_partfun1 > k2_struct_0 > k2_relat_1 > k2_funct_1 > k1_zfmisc_1 > k1_relat_1 > k1_xboole_0 > #skF_2 > #skF_3 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff(k2_relset_1,type,(
    k2_relset_1: ( $i * $i * $i ) > $i )).

tff(v2_struct_0,type,(
    v2_struct_0: $i > $o )).

tff(v1_funct_1,type,(
    v1_funct_1: $i > $o )).

tff(k2_funct_1,type,(
    k2_funct_1: $i > $i )).

tff(v2_funct_1,type,(
    v2_funct_1: $i > $o )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(k1_xboole_0,type,(
    k1_xboole_0: $i )).

tff(k5_relat_1,type,(
    k5_relat_1: ( $i * $i ) > $i )).

tff(k2_relat_1,type,(
    k2_relat_1: $i > $i )).

tff(k2_tops_2,type,(
    k2_tops_2: ( $i * $i * $i ) > $i )).

tff(v1_funct_2,type,(
    v1_funct_2: ( $i * $i * $i ) > $o )).

tff('#skF_2',type,(
    '#skF_2': $i )).

tff(v1_partfun1,type,(
    v1_partfun1: ( $i * $i ) > $o )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff('#skF_1',type,(
    '#skF_1': $i )).

tff(v5_relat_1,type,(
    v5_relat_1: ( $i * $i ) > $o )).

tff(k1_zfmisc_1,type,(
    k1_zfmisc_1: $i > $i )).

tff(l1_struct_0,type,(
    l1_struct_0: $i > $o )).

tff(k6_partfun1,type,(
    k6_partfun1: $i > $i )).

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

tff(v4_relat_1,type,(
    v4_relat_1: ( $i * $i ) > $o )).

tff(u1_struct_0,type,(
    u1_struct_0: $i > $i )).

tff(k2_struct_0,type,(
    k2_struct_0: $i > $i )).

tff(v1_xboole_0,type,(
    v1_xboole_0: $i > $o )).

tff(k1_relat_1,type,(
    k1_relat_1: $i > $i )).

tff(r2_funct_2,type,(
    r2_funct_2: ( $i * $i * $i * $i ) > $o )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_217,negated_conjecture,(
    ~ ! [A] :
        ( l1_struct_0(A)
       => ! [B] :
            ( ( ~ v2_struct_0(B)
              & l1_struct_0(B) )
           => ! [C] :
                ( ( v1_funct_1(C)
                  & v1_funct_2(C,u1_struct_0(A),u1_struct_0(B))
                  & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(B)))) )
               => ( ( k2_relset_1(u1_struct_0(A),u1_struct_0(B),C) = k2_struct_0(B)
                    & v2_funct_1(C) )
                 => r2_funct_2(u1_struct_0(A),u1_struct_0(B),k2_tops_2(u1_struct_0(B),u1_struct_0(A),k2_tops_2(u1_struct_0(A),u1_struct_0(B),C)),C) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_tops_2)).

tff(f_35,axiom,(
    ! [A,B] : v1_relat_1(k2_zfmisc_1(A,B)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_relat_1)).

tff(f_175,axiom,(
    ! [A] :
      ( l1_struct_0(A)
     => k2_struct_0(A) = u1_struct_0(A) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_struct_0)).

tff(f_33,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_relat_1(B) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relat_1)).

tff(f_97,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => ( v4_relat_1(C,A)
        & v5_relat_1(C,B) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

tff(f_123,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v4_relat_1(B,A) )
     => ( v1_partfun1(B,A)
      <=> k1_relat_1(B) = A ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_partfun1)).

tff(f_115,axiom,(
    ! [A,B] :
      ( ~ v1_xboole_0(B)
     => ! [C] :
          ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
         => ( ( v1_funct_1(C)
              & v1_funct_2(C,A,B) )
           => ( v1_funct_1(C)
              & v1_partfun1(C,A) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc5_funct_2)).

tff(f_183,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(k2_struct_0(A)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc5_struct_0)).

tff(f_101,axiom,(
    ! [A,B,C] :
      ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
     => k2_relset_1(A,B,C) = k2_relat_1(C) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

tff(f_139,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => r2_funct_2(A,B,C,C) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',reflexivity_r2_funct_2)).

tff(f_155,axiom,(
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ( ( v2_funct_1(C)
          & k2_relset_1(A,B,C) = B )
       => ( v1_funct_1(k2_funct_1(C))
          & v1_funct_2(k2_funct_1(C),B,A)
          & m1_subset_1(k2_funct_1(C),k1_zfmisc_1(k2_zfmisc_1(B,A))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t31_funct_2)).

tff(f_125,axiom,(
    ! [A] : k6_partfun1(A) = k6_relat_1(A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_partfun1)).

tff(f_47,axiom,(
    ! [A] :
      ( v1_relat_1(k6_relat_1(A))
      & v2_funct_1(k6_relat_1(A)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc4_funct_1)).

tff(f_74,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v2_funct_1(A)
       => ( k2_relat_1(A) = k1_relat_1(k2_funct_1(A))
          & k1_relat_1(A) = k2_relat_1(k2_funct_1(A)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t55_funct_1)).

tff(f_26,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

tff(f_171,axiom,(
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ( ( k2_relset_1(A,B,C) = B
          & v2_funct_1(C) )
       => ( B = k1_xboole_0
          | ( k5_relat_1(C,k2_funct_1(C)) = k6_partfun1(A)
            & k5_relat_1(k2_funct_1(C),C) = k6_partfun1(B) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t35_funct_2)).

tff(f_64,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_funct_1(k5_relat_1(B,A))
              & k2_relat_1(B) = k1_relat_1(A) )
           => ( v2_funct_1(B)
              & v2_funct_1(A) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_funct_1)).

tff(f_91,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( v2_funct_1(A)
              & k2_relat_1(B) = k1_relat_1(A)
              & k5_relat_1(B,A) = k6_relat_1(k2_relat_1(A)) )
           => B = k2_funct_1(A) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_funct_1)).

tff(f_195,axiom,(
    ! [A,B,C] :
      ( ( v1_funct_1(C)
        & v1_funct_2(C,A,B)
        & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ( ( k2_relset_1(A,B,C) = B
          & v2_funct_1(C) )
       => k2_tops_2(A,B,C) = k2_funct_1(C) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_tops_2)).

tff(c_70,plain,(
    v1_funct_1('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_217])).

tff(c_74,plain,(
    ~ v2_struct_0('#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_217])).

tff(c_72,plain,(
    l1_struct_0('#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_217])).

tff(c_6,plain,(
    ! [A_4,B_5] : v1_relat_1(k2_zfmisc_1(A_4,B_5)) ),
    inference(cnfTransformation,[status(thm)],[f_35])).

tff(c_76,plain,(
    l1_struct_0('#skF_1') ),
    inference(cnfTransformation,[status(thm)],[f_217])).

tff(c_92,plain,(
    ! [A_52] :
      ( u1_struct_0(A_52) = k2_struct_0(A_52)
      | ~ l1_struct_0(A_52) ) ),
    inference(cnfTransformation,[status(thm)],[f_175])).

tff(c_100,plain,(
    u1_struct_0('#skF_1') = k2_struct_0('#skF_1') ),
    inference(resolution,[status(thm)],[c_76,c_92])).

tff(c_99,plain,(
    u1_struct_0('#skF_2') = k2_struct_0('#skF_2') ),
    inference(resolution,[status(thm)],[c_72,c_92])).

tff(c_66,plain,(
    m1_subset_1('#skF_3',k1_zfmisc_1(k2_zfmisc_1(u1_struct_0('#skF_1'),u1_struct_0('#skF_2')))) ),
    inference(cnfTransformation,[status(thm)],[f_217])).

tff(c_119,plain,(
    m1_subset_1('#skF_3',k1_zfmisc_1(k2_zfmisc_1(k2_struct_0('#skF_1'),k2_struct_0('#skF_2')))) ),
    inference(demodulation,[status(thm),theory(equality)],[c_100,c_99,c_66])).

tff(c_120,plain,(
    ! [B_56,A_57] :
      ( v1_relat_1(B_56)
      | ~ m1_subset_1(B_56,k1_zfmisc_1(A_57))
      | ~ v1_relat_1(A_57) ) ),
    inference(cnfTransformation,[status(thm)],[f_33])).

tff(c_123,plain,
    ( v1_relat_1('#skF_3')
    | ~ v1_relat_1(k2_zfmisc_1(k2_struct_0('#skF_1'),k2_struct_0('#skF_2'))) ),
    inference(resolution,[status(thm)],[c_119,c_120])).

tff(c_126,plain,(
    v1_relat_1('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_6,c_123])).

tff(c_132,plain,(
    ! [C_61,A_62,B_63] :
      ( v4_relat_1(C_61,A_62)
      | ~ m1_subset_1(C_61,k1_zfmisc_1(k2_zfmisc_1(A_62,B_63))) ) ),
    inference(cnfTransformation,[status(thm)],[f_97])).

tff(c_136,plain,(
    v4_relat_1('#skF_3',k2_struct_0('#skF_1')) ),
    inference(resolution,[status(thm)],[c_119,c_132])).

tff(c_160,plain,(
    ! [B_67,A_68] :
      ( k1_relat_1(B_67) = A_68
      | ~ v1_partfun1(B_67,A_68)
      | ~ v4_relat_1(B_67,A_68)
      | ~ v1_relat_1(B_67) ) ),
    inference(cnfTransformation,[status(thm)],[f_123])).

tff(c_163,plain,
    ( k2_struct_0('#skF_1') = k1_relat_1('#skF_3')
    | ~ v1_partfun1('#skF_3',k2_struct_0('#skF_1'))
    | ~ v1_relat_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_136,c_160])).

tff(c_166,plain,
    ( k2_struct_0('#skF_1') = k1_relat_1('#skF_3')
    | ~ v1_partfun1('#skF_3',k2_struct_0('#skF_1')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_126,c_163])).

tff(c_167,plain,(
    ~ v1_partfun1('#skF_3',k2_struct_0('#skF_1')) ),
    inference(splitLeft,[status(thm)],[c_166])).

tff(c_68,plain,(
    v1_funct_2('#skF_3',u1_struct_0('#skF_1'),u1_struct_0('#skF_2')) ),
    inference(cnfTransformation,[status(thm)],[f_217])).

tff(c_101,plain,(
    v1_funct_2('#skF_3',u1_struct_0('#skF_1'),k2_struct_0('#skF_2')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_99,c_68])).

tff(c_110,plain,(
    v1_funct_2('#skF_3',k2_struct_0('#skF_1'),k2_struct_0('#skF_2')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_100,c_101])).

tff(c_178,plain,(
    ! [C_72,A_73,B_74] :
      ( v1_partfun1(C_72,A_73)
      | ~ v1_funct_2(C_72,A_73,B_74)
      | ~ v1_funct_1(C_72)
      | ~ m1_subset_1(C_72,k1_zfmisc_1(k2_zfmisc_1(A_73,B_74)))
      | v1_xboole_0(B_74) ) ),
    inference(cnfTransformation,[status(thm)],[f_115])).

tff(c_181,plain,
    ( v1_partfun1('#skF_3',k2_struct_0('#skF_1'))
    | ~ v1_funct_2('#skF_3',k2_struct_0('#skF_1'),k2_struct_0('#skF_2'))
    | ~ v1_funct_1('#skF_3')
    | v1_xboole_0(k2_struct_0('#skF_2')) ),
    inference(resolution,[status(thm)],[c_119,c_178])).

tff(c_184,plain,
    ( v1_partfun1('#skF_3',k2_struct_0('#skF_1'))
    | v1_xboole_0(k2_struct_0('#skF_2')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_110,c_181])).

tff(c_185,plain,(
    v1_xboole_0(k2_struct_0('#skF_2')) ),
    inference(negUnitSimplification,[status(thm)],[c_167,c_184])).

tff(c_56,plain,(
    ! [A_39] :
      ( ~ v1_xboole_0(k2_struct_0(A_39))
      | ~ l1_struct_0(A_39)
      | v2_struct_0(A_39) ) ),
    inference(cnfTransformation,[status(thm)],[f_183])).

tff(c_188,plain,
    ( ~ l1_struct_0('#skF_2')
    | v2_struct_0('#skF_2') ),
    inference(resolution,[status(thm)],[c_185,c_56])).

tff(c_191,plain,(
    v2_struct_0('#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_72,c_188])).

tff(c_193,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_74,c_191])).

tff(c_194,plain,(
    k2_struct_0('#skF_1') = k1_relat_1('#skF_3') ),
    inference(splitRight,[status(thm)],[c_166])).

tff(c_198,plain,(
    m1_subset_1('#skF_3',k1_zfmisc_1(k2_zfmisc_1(k1_relat_1('#skF_3'),k2_struct_0('#skF_2')))) ),
    inference(demodulation,[status(thm),theory(equality)],[c_194,c_119])).

tff(c_30,plain,(
    ! [A_18,B_19,C_20] :
      ( k2_relset_1(A_18,B_19,C_20) = k2_relat_1(C_20)
      | ~ m1_subset_1(C_20,k1_zfmisc_1(k2_zfmisc_1(A_18,B_19))) ) ),
    inference(cnfTransformation,[status(thm)],[f_101])).

tff(c_247,plain,(
    k2_relset_1(k1_relat_1('#skF_3'),k2_struct_0('#skF_2'),'#skF_3') = k2_relat_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_198,c_30])).

tff(c_64,plain,(
    k2_relset_1(u1_struct_0('#skF_1'),u1_struct_0('#skF_2'),'#skF_3') = k2_struct_0('#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_217])).

tff(c_114,plain,(
    k2_relset_1(k2_struct_0('#skF_1'),k2_struct_0('#skF_2'),'#skF_3') = k2_struct_0('#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_100,c_99,c_64])).

tff(c_199,plain,(
    k2_relset_1(k1_relat_1('#skF_3'),k2_struct_0('#skF_2'),'#skF_3') = k2_struct_0('#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_194,c_114])).

tff(c_255,plain,(
    k2_struct_0('#skF_2') = k2_relat_1('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_247,c_199])).

tff(c_200,plain,(
    v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_struct_0('#skF_2')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_194,c_110])).

tff(c_262,plain,(
    v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_255,c_200])).

tff(c_261,plain,(
    m1_subset_1('#skF_3',k1_zfmisc_1(k2_zfmisc_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3')))) ),
    inference(demodulation,[status(thm),theory(equality)],[c_255,c_198])).

tff(c_595,plain,(
    ! [A_118,B_119,C_120,D_121] :
      ( r2_funct_2(A_118,B_119,C_120,C_120)
      | ~ m1_subset_1(D_121,k1_zfmisc_1(k2_zfmisc_1(A_118,B_119)))
      | ~ v1_funct_2(D_121,A_118,B_119)
      | ~ v1_funct_1(D_121)
      | ~ m1_subset_1(C_120,k1_zfmisc_1(k2_zfmisc_1(A_118,B_119)))
      | ~ v1_funct_2(C_120,A_118,B_119)
      | ~ v1_funct_1(C_120) ) ),
    inference(cnfTransformation,[status(thm)],[f_139])).

tff(c_599,plain,(
    ! [C_120] :
      ( r2_funct_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),C_120,C_120)
      | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
      | ~ v1_funct_1('#skF_3')
      | ~ m1_subset_1(C_120,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))))
      | ~ v1_funct_2(C_120,k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
      | ~ v1_funct_1(C_120) ) ),
    inference(resolution,[status(thm)],[c_261,c_595])).

tff(c_604,plain,(
    ! [C_122] :
      ( r2_funct_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),C_122,C_122)
      | ~ m1_subset_1(C_122,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))))
      | ~ v1_funct_2(C_122,k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
      | ~ v1_funct_1(C_122) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_599])).

tff(c_609,plain,
    ( r2_funct_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3','#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_604])).

tff(c_613,plain,(
    r2_funct_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3','#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_609])).

tff(c_62,plain,(
    v2_funct_1('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_217])).

tff(c_260,plain,(
    k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') = k2_relat_1('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_255,c_247])).

tff(c_319,plain,(
    ! [C_86,A_87,B_88] :
      ( v1_funct_1(k2_funct_1(C_86))
      | k2_relset_1(A_87,B_88,C_86) != B_88
      | ~ v2_funct_1(C_86)
      | ~ m1_subset_1(C_86,k1_zfmisc_1(k2_zfmisc_1(A_87,B_88)))
      | ~ v1_funct_2(C_86,A_87,B_88)
      | ~ v1_funct_1(C_86) ) ),
    inference(cnfTransformation,[status(thm)],[f_155])).

tff(c_322,plain,
    ( v1_funct_1(k2_funct_1('#skF_3'))
    | k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') != k2_relat_1('#skF_3')
    | ~ v2_funct_1('#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_319])).

tff(c_325,plain,(
    v1_funct_1(k2_funct_1('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_62,c_260,c_322])).

tff(c_329,plain,(
    ! [C_91,B_92,A_93] :
      ( v1_funct_2(k2_funct_1(C_91),B_92,A_93)
      | k2_relset_1(A_93,B_92,C_91) != B_92
      | ~ v2_funct_1(C_91)
      | ~ m1_subset_1(C_91,k1_zfmisc_1(k2_zfmisc_1(A_93,B_92)))
      | ~ v1_funct_2(C_91,A_93,B_92)
      | ~ v1_funct_1(C_91) ) ),
    inference(cnfTransformation,[status(thm)],[f_155])).

tff(c_332,plain,
    ( v1_funct_2(k2_funct_1('#skF_3'),k2_relat_1('#skF_3'),k1_relat_1('#skF_3'))
    | k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') != k2_relat_1('#skF_3')
    | ~ v2_funct_1('#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_329])).

tff(c_335,plain,(
    v1_funct_2(k2_funct_1('#skF_3'),k2_relat_1('#skF_3'),k1_relat_1('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_62,c_260,c_332])).

tff(c_348,plain,(
    ! [C_97,B_98,A_99] :
      ( m1_subset_1(k2_funct_1(C_97),k1_zfmisc_1(k2_zfmisc_1(B_98,A_99)))
      | k2_relset_1(A_99,B_98,C_97) != B_98
      | ~ v2_funct_1(C_97)
      | ~ m1_subset_1(C_97,k1_zfmisc_1(k2_zfmisc_1(A_99,B_98)))
      | ~ v1_funct_2(C_97,A_99,B_98)
      | ~ v1_funct_1(C_97) ) ),
    inference(cnfTransformation,[status(thm)],[f_155])).

tff(c_4,plain,(
    ! [B_3,A_1] :
      ( v1_relat_1(B_3)
      | ~ m1_subset_1(B_3,k1_zfmisc_1(A_1))
      | ~ v1_relat_1(A_1) ) ),
    inference(cnfTransformation,[status(thm)],[f_33])).

tff(c_372,plain,(
    ! [C_97,B_98,A_99] :
      ( v1_relat_1(k2_funct_1(C_97))
      | ~ v1_relat_1(k2_zfmisc_1(B_98,A_99))
      | k2_relset_1(A_99,B_98,C_97) != B_98
      | ~ v2_funct_1(C_97)
      | ~ m1_subset_1(C_97,k1_zfmisc_1(k2_zfmisc_1(A_99,B_98)))
      | ~ v1_funct_2(C_97,A_99,B_98)
      | ~ v1_funct_1(C_97) ) ),
    inference(resolution,[status(thm)],[c_348,c_4])).

tff(c_383,plain,(
    ! [C_100,A_101,B_102] :
      ( v1_relat_1(k2_funct_1(C_100))
      | k2_relset_1(A_101,B_102,C_100) != B_102
      | ~ v2_funct_1(C_100)
      | ~ m1_subset_1(C_100,k1_zfmisc_1(k2_zfmisc_1(A_101,B_102)))
      | ~ v1_funct_2(C_100,A_101,B_102)
      | ~ v1_funct_1(C_100) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_6,c_372])).

tff(c_389,plain,
    ( v1_relat_1(k2_funct_1('#skF_3'))
    | k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') != k2_relat_1('#skF_3')
    | ~ v2_funct_1('#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_383])).

tff(c_393,plain,(
    v1_relat_1(k2_funct_1('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_62,c_260,c_389])).

tff(c_40,plain,(
    ! [A_27] : k6_relat_1(A_27) = k6_partfun1(A_27) ),
    inference(cnfTransformation,[status(thm)],[f_125])).

tff(c_14,plain,(
    ! [A_7] : v2_funct_1(k6_relat_1(A_7)) ),
    inference(cnfTransformation,[status(thm)],[f_47])).

tff(c_78,plain,(
    ! [A_7] : v2_funct_1(k6_partfun1(A_7)) ),
    inference(demodulation,[status(thm),theory(equality)],[c_40,c_14])).

tff(c_28,plain,(
    ! [C_17,A_15,B_16] :
      ( v4_relat_1(C_17,A_15)
      | ~ m1_subset_1(C_17,k1_zfmisc_1(k2_zfmisc_1(A_15,B_16))) ) ),
    inference(cnfTransformation,[status(thm)],[f_97])).

tff(c_394,plain,(
    ! [C_103,B_104,A_105] :
      ( v4_relat_1(k2_funct_1(C_103),B_104)
      | k2_relset_1(A_105,B_104,C_103) != B_104
      | ~ v2_funct_1(C_103)
      | ~ m1_subset_1(C_103,k1_zfmisc_1(k2_zfmisc_1(A_105,B_104)))
      | ~ v1_funct_2(C_103,A_105,B_104)
      | ~ v1_funct_1(C_103) ) ),
    inference(resolution,[status(thm)],[c_348,c_28])).

tff(c_400,plain,
    ( v4_relat_1(k2_funct_1('#skF_3'),k2_relat_1('#skF_3'))
    | k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') != k2_relat_1('#skF_3')
    | ~ v2_funct_1('#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_394])).

tff(c_404,plain,(
    v4_relat_1(k2_funct_1('#skF_3'),k2_relat_1('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_62,c_260,c_400])).

tff(c_38,plain,(
    ! [B_26,A_25] :
      ( k1_relat_1(B_26) = A_25
      | ~ v1_partfun1(B_26,A_25)
      | ~ v4_relat_1(B_26,A_25)
      | ~ v1_relat_1(B_26) ) ),
    inference(cnfTransformation,[status(thm)],[f_123])).

tff(c_407,plain,
    ( k1_relat_1(k2_funct_1('#skF_3')) = k2_relat_1('#skF_3')
    | ~ v1_partfun1(k2_funct_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_relat_1(k2_funct_1('#skF_3')) ),
    inference(resolution,[status(thm)],[c_404,c_38])).

tff(c_410,plain,
    ( k1_relat_1(k2_funct_1('#skF_3')) = k2_relat_1('#skF_3')
    | ~ v1_partfun1(k2_funct_1('#skF_3'),k2_relat_1('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_393,c_407])).

tff(c_411,plain,(
    ~ v1_partfun1(k2_funct_1('#skF_3'),k2_relat_1('#skF_3')) ),
    inference(splitLeft,[status(thm)],[c_410])).

tff(c_22,plain,(
    ! [A_11] :
      ( k1_relat_1(k2_funct_1(A_11)) = k2_relat_1(A_11)
      | ~ v2_funct_1(A_11)
      | ~ v1_funct_1(A_11)
      | ~ v1_relat_1(A_11) ) ),
    inference(cnfTransformation,[status(thm)],[f_74])).

tff(c_2,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnfTransformation,[status(thm)],[f_26])).

tff(c_412,plain,(
    ! [A_106,C_107,B_108] :
      ( k6_partfun1(A_106) = k5_relat_1(C_107,k2_funct_1(C_107))
      | k1_xboole_0 = B_108
      | ~ v2_funct_1(C_107)
      | k2_relset_1(A_106,B_108,C_107) != B_108
      | ~ m1_subset_1(C_107,k1_zfmisc_1(k2_zfmisc_1(A_106,B_108)))
      | ~ v1_funct_2(C_107,A_106,B_108)
      | ~ v1_funct_1(C_107) ) ),
    inference(cnfTransformation,[status(thm)],[f_171])).

tff(c_416,plain,
    ( k5_relat_1('#skF_3',k2_funct_1('#skF_3')) = k6_partfun1(k1_relat_1('#skF_3'))
    | k2_relat_1('#skF_3') = k1_xboole_0
    | ~ v2_funct_1('#skF_3')
    | k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') != k2_relat_1('#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_412])).

tff(c_420,plain,
    ( k5_relat_1('#skF_3',k2_funct_1('#skF_3')) = k6_partfun1(k1_relat_1('#skF_3'))
    | k2_relat_1('#skF_3') = k1_xboole_0 ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_260,c_62,c_416])).

tff(c_421,plain,(
    k2_relat_1('#skF_3') = k1_xboole_0 ),
    inference(splitLeft,[status(thm)],[c_420])).

tff(c_268,plain,
    ( ~ v1_xboole_0(k2_relat_1('#skF_3'))
    | ~ l1_struct_0('#skF_2')
    | v2_struct_0('#skF_2') ),
    inference(superposition,[status(thm),theory(equality)],[c_255,c_56])).

tff(c_272,plain,
    ( ~ v1_xboole_0(k2_relat_1('#skF_3'))
    | v2_struct_0('#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_72,c_268])).

tff(c_273,plain,(
    ~ v1_xboole_0(k2_relat_1('#skF_3')) ),
    inference(negUnitSimplification,[status(thm)],[c_74,c_272])).

tff(c_432,plain,(
    ~ v1_xboole_0(k1_xboole_0) ),
    inference(demodulation,[status(thm),theory(equality)],[c_421,c_273])).

tff(c_436,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_2,c_432])).

tff(c_437,plain,(
    k5_relat_1('#skF_3',k2_funct_1('#skF_3')) = k6_partfun1(k1_relat_1('#skF_3')) ),
    inference(splitRight,[status(thm)],[c_420])).

tff(c_16,plain,(
    ! [A_8,B_10] :
      ( v2_funct_1(A_8)
      | k2_relat_1(B_10) != k1_relat_1(A_8)
      | ~ v2_funct_1(k5_relat_1(B_10,A_8))
      | ~ v1_funct_1(B_10)
      | ~ v1_relat_1(B_10)
      | ~ v1_funct_1(A_8)
      | ~ v1_relat_1(A_8) ) ),
    inference(cnfTransformation,[status(thm)],[f_64])).

tff(c_445,plain,
    ( v2_funct_1(k2_funct_1('#skF_3'))
    | k1_relat_1(k2_funct_1('#skF_3')) != k2_relat_1('#skF_3')
    | ~ v2_funct_1(k6_partfun1(k1_relat_1('#skF_3')))
    | ~ v1_funct_1('#skF_3')
    | ~ v1_relat_1('#skF_3')
    | ~ v1_funct_1(k2_funct_1('#skF_3'))
    | ~ v1_relat_1(k2_funct_1('#skF_3')) ),
    inference(superposition,[status(thm),theory(equality)],[c_437,c_16])).

tff(c_451,plain,
    ( v2_funct_1(k2_funct_1('#skF_3'))
    | k1_relat_1(k2_funct_1('#skF_3')) != k2_relat_1('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_393,c_325,c_126,c_70,c_78,c_445])).

tff(c_453,plain,(
    k1_relat_1(k2_funct_1('#skF_3')) != k2_relat_1('#skF_3') ),
    inference(splitLeft,[status(thm)],[c_451])).

tff(c_456,plain,
    ( ~ v2_funct_1('#skF_3')
    | ~ v1_funct_1('#skF_3')
    | ~ v1_relat_1('#skF_3') ),
    inference(superposition,[status(thm),theory(equality)],[c_22,c_453])).

tff(c_460,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_126,c_70,c_62,c_456])).

tff(c_462,plain,(
    k1_relat_1(k2_funct_1('#skF_3')) = k2_relat_1('#skF_3') ),
    inference(splitRight,[status(thm)],[c_451])).

tff(c_147,plain,(
    ! [A_66] :
      ( k1_relat_1(k2_funct_1(A_66)) = k2_relat_1(A_66)
      | ~ v2_funct_1(A_66)
      | ~ v1_funct_1(A_66)
      | ~ v1_relat_1(A_66) ) ),
    inference(cnfTransformation,[status(thm)],[f_74])).

tff(c_36,plain,(
    ! [B_26] :
      ( v1_partfun1(B_26,k1_relat_1(B_26))
      | ~ v4_relat_1(B_26,k1_relat_1(B_26))
      | ~ v1_relat_1(B_26) ) ),
    inference(cnfTransformation,[status(thm)],[f_123])).

tff(c_153,plain,(
    ! [A_66] :
      ( v1_partfun1(k2_funct_1(A_66),k1_relat_1(k2_funct_1(A_66)))
      | ~ v4_relat_1(k2_funct_1(A_66),k2_relat_1(A_66))
      | ~ v1_relat_1(k2_funct_1(A_66))
      | ~ v2_funct_1(A_66)
      | ~ v1_funct_1(A_66)
      | ~ v1_relat_1(A_66) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_147,c_36])).

tff(c_466,plain,
    ( v1_partfun1(k2_funct_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v4_relat_1(k2_funct_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_relat_1(k2_funct_1('#skF_3'))
    | ~ v2_funct_1('#skF_3')
    | ~ v1_funct_1('#skF_3')
    | ~ v1_relat_1('#skF_3') ),
    inference(superposition,[status(thm),theory(equality)],[c_462,c_153])).

tff(c_479,plain,(
    v1_partfun1(k2_funct_1('#skF_3'),k2_relat_1('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_126,c_70,c_62,c_393,c_404,c_466])).

tff(c_481,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_411,c_479])).

tff(c_482,plain,(
    k1_relat_1(k2_funct_1('#skF_3')) = k2_relat_1('#skF_3') ),
    inference(splitRight,[status(thm)],[c_410])).

tff(c_484,plain,(
    ! [A_109,C_110,B_111] :
      ( k6_partfun1(A_109) = k5_relat_1(C_110,k2_funct_1(C_110))
      | k1_xboole_0 = B_111
      | ~ v2_funct_1(C_110)
      | k2_relset_1(A_109,B_111,C_110) != B_111
      | ~ m1_subset_1(C_110,k1_zfmisc_1(k2_zfmisc_1(A_109,B_111)))
      | ~ v1_funct_2(C_110,A_109,B_111)
      | ~ v1_funct_1(C_110) ) ),
    inference(cnfTransformation,[status(thm)],[f_171])).

tff(c_488,plain,
    ( k5_relat_1('#skF_3',k2_funct_1('#skF_3')) = k6_partfun1(k1_relat_1('#skF_3'))
    | k2_relat_1('#skF_3') = k1_xboole_0
    | ~ v2_funct_1('#skF_3')
    | k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') != k2_relat_1('#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_484])).

tff(c_492,plain,
    ( k5_relat_1('#skF_3',k2_funct_1('#skF_3')) = k6_partfun1(k1_relat_1('#skF_3'))
    | k2_relat_1('#skF_3') = k1_xboole_0 ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_260,c_62,c_488])).

tff(c_520,plain,(
    k2_relat_1('#skF_3') = k1_xboole_0 ),
    inference(splitLeft,[status(thm)],[c_492])).

tff(c_532,plain,(
    ~ v1_xboole_0(k1_xboole_0) ),
    inference(demodulation,[status(thm),theory(equality)],[c_520,c_273])).

tff(c_536,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_2,c_532])).

tff(c_537,plain,(
    k5_relat_1('#skF_3',k2_funct_1('#skF_3')) = k6_partfun1(k1_relat_1('#skF_3')) ),
    inference(splitRight,[status(thm)],[c_492])).

tff(c_546,plain,
    ( v2_funct_1(k2_funct_1('#skF_3'))
    | k1_relat_1(k2_funct_1('#skF_3')) != k2_relat_1('#skF_3')
    | ~ v2_funct_1(k6_partfun1(k1_relat_1('#skF_3')))
    | ~ v1_funct_1('#skF_3')
    | ~ v1_relat_1('#skF_3')
    | ~ v1_funct_1(k2_funct_1('#skF_3'))
    | ~ v1_relat_1(k2_funct_1('#skF_3')) ),
    inference(superposition,[status(thm),theory(equality)],[c_537,c_16])).

tff(c_552,plain,(
    v2_funct_1(k2_funct_1('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_393,c_325,c_126,c_70,c_78,c_482,c_546])).

tff(c_20,plain,(
    ! [A_11] :
      ( k2_relat_1(k2_funct_1(A_11)) = k1_relat_1(A_11)
      | ~ v2_funct_1(A_11)
      | ~ v1_funct_1(A_11)
      | ~ v1_relat_1(A_11) ) ),
    inference(cnfTransformation,[status(thm)],[f_74])).

tff(c_24,plain,(
    ! [A_12,B_14] :
      ( k2_funct_1(A_12) = B_14
      | k6_relat_1(k2_relat_1(A_12)) != k5_relat_1(B_14,A_12)
      | k2_relat_1(B_14) != k1_relat_1(A_12)
      | ~ v2_funct_1(A_12)
      | ~ v1_funct_1(B_14)
      | ~ v1_relat_1(B_14)
      | ~ v1_funct_1(A_12)
      | ~ v1_relat_1(A_12) ) ),
    inference(cnfTransformation,[status(thm)],[f_91])).

tff(c_326,plain,(
    ! [A_89,B_90] :
      ( k2_funct_1(A_89) = B_90
      | k6_partfun1(k2_relat_1(A_89)) != k5_relat_1(B_90,A_89)
      | k2_relat_1(B_90) != k1_relat_1(A_89)
      | ~ v2_funct_1(A_89)
      | ~ v1_funct_1(B_90)
      | ~ v1_relat_1(B_90)
      | ~ v1_funct_1(A_89)
      | ~ v1_relat_1(A_89) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_40,c_24])).

tff(c_651,plain,(
    ! [A_130,B_131] :
      ( k2_funct_1(k2_funct_1(A_130)) = B_131
      | k5_relat_1(B_131,k2_funct_1(A_130)) != k6_partfun1(k1_relat_1(A_130))
      | k2_relat_1(B_131) != k1_relat_1(k2_funct_1(A_130))
      | ~ v2_funct_1(k2_funct_1(A_130))
      | ~ v1_funct_1(B_131)
      | ~ v1_relat_1(B_131)
      | ~ v1_funct_1(k2_funct_1(A_130))
      | ~ v1_relat_1(k2_funct_1(A_130))
      | ~ v2_funct_1(A_130)
      | ~ v1_funct_1(A_130)
      | ~ v1_relat_1(A_130) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_20,c_326])).

tff(c_653,plain,
    ( k2_funct_1(k2_funct_1('#skF_3')) = '#skF_3'
    | k1_relat_1(k2_funct_1('#skF_3')) != k2_relat_1('#skF_3')
    | ~ v2_funct_1(k2_funct_1('#skF_3'))
    | ~ v1_funct_1(k2_funct_1('#skF_3'))
    | ~ v1_relat_1(k2_funct_1('#skF_3'))
    | ~ v2_funct_1('#skF_3')
    | ~ v1_funct_1('#skF_3')
    | ~ v1_relat_1('#skF_3') ),
    inference(superposition,[status(thm),theory(equality)],[c_537,c_651])).

tff(c_656,plain,(
    k2_funct_1(k2_funct_1('#skF_3')) = '#skF_3' ),
    inference(demodulation,[status(thm),theory(equality)],[c_126,c_70,c_62,c_393,c_325,c_552,c_482,c_653])).

tff(c_674,plain,
    ( k2_relat_1(k2_funct_1('#skF_3')) = k1_relat_1('#skF_3')
    | ~ v2_funct_1(k2_funct_1('#skF_3'))
    | ~ v1_funct_1(k2_funct_1('#skF_3'))
    | ~ v1_relat_1(k2_funct_1('#skF_3')) ),
    inference(superposition,[status(thm),theory(equality)],[c_656,c_22])).

tff(c_697,plain,(
    k2_relat_1(k2_funct_1('#skF_3')) = k1_relat_1('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_393,c_325,c_552,c_674])).

tff(c_624,plain,(
    ! [B_124,A_125,C_126] :
      ( k2_relset_1(B_124,A_125,k2_funct_1(C_126)) = k2_relat_1(k2_funct_1(C_126))
      | k2_relset_1(A_125,B_124,C_126) != B_124
      | ~ v2_funct_1(C_126)
      | ~ m1_subset_1(C_126,k1_zfmisc_1(k2_zfmisc_1(A_125,B_124)))
      | ~ v1_funct_2(C_126,A_125,B_124)
      | ~ v1_funct_1(C_126) ) ),
    inference(resolution,[status(thm)],[c_348,c_30])).

tff(c_630,plain,
    ( k2_relset_1(k2_relat_1('#skF_3'),k1_relat_1('#skF_3'),k2_funct_1('#skF_3')) = k2_relat_1(k2_funct_1('#skF_3'))
    | k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') != k2_relat_1('#skF_3')
    | ~ v2_funct_1('#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_624])).

tff(c_634,plain,(
    k2_relset_1(k2_relat_1('#skF_3'),k1_relat_1('#skF_3'),k2_funct_1('#skF_3')) = k2_relat_1(k2_funct_1('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_62,c_260,c_630])).

tff(c_705,plain,(
    k2_relset_1(k2_relat_1('#skF_3'),k1_relat_1('#skF_3'),k2_funct_1('#skF_3')) = k1_relat_1('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_697,c_634])).

tff(c_58,plain,(
    ! [A_40,B_41,C_42] :
      ( k2_tops_2(A_40,B_41,C_42) = k2_funct_1(C_42)
      | ~ v2_funct_1(C_42)
      | k2_relset_1(A_40,B_41,C_42) != B_41
      | ~ m1_subset_1(C_42,k1_zfmisc_1(k2_zfmisc_1(A_40,B_41)))
      | ~ v1_funct_2(C_42,A_40,B_41)
      | ~ v1_funct_1(C_42) ) ),
    inference(cnfTransformation,[status(thm)],[f_195])).

tff(c_855,plain,(
    ! [B_157,A_158,C_159] :
      ( k2_tops_2(B_157,A_158,k2_funct_1(C_159)) = k2_funct_1(k2_funct_1(C_159))
      | ~ v2_funct_1(k2_funct_1(C_159))
      | k2_relset_1(B_157,A_158,k2_funct_1(C_159)) != A_158
      | ~ v1_funct_2(k2_funct_1(C_159),B_157,A_158)
      | ~ v1_funct_1(k2_funct_1(C_159))
      | k2_relset_1(A_158,B_157,C_159) != B_157
      | ~ v2_funct_1(C_159)
      | ~ m1_subset_1(C_159,k1_zfmisc_1(k2_zfmisc_1(A_158,B_157)))
      | ~ v1_funct_2(C_159,A_158,B_157)
      | ~ v1_funct_1(C_159) ) ),
    inference(resolution,[status(thm)],[c_348,c_58])).

tff(c_861,plain,
    ( k2_tops_2(k2_relat_1('#skF_3'),k1_relat_1('#skF_3'),k2_funct_1('#skF_3')) = k2_funct_1(k2_funct_1('#skF_3'))
    | ~ v2_funct_1(k2_funct_1('#skF_3'))
    | k2_relset_1(k2_relat_1('#skF_3'),k1_relat_1('#skF_3'),k2_funct_1('#skF_3')) != k1_relat_1('#skF_3')
    | ~ v1_funct_2(k2_funct_1('#skF_3'),k2_relat_1('#skF_3'),k1_relat_1('#skF_3'))
    | ~ v1_funct_1(k2_funct_1('#skF_3'))
    | k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') != k2_relat_1('#skF_3')
    | ~ v2_funct_1('#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_855])).

tff(c_865,plain,(
    k2_tops_2(k2_relat_1('#skF_3'),k1_relat_1('#skF_3'),k2_funct_1('#skF_3')) = '#skF_3' ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_62,c_260,c_325,c_335,c_705,c_552,c_656,c_861])).

tff(c_336,plain,(
    ! [A_94,B_95,C_96] :
      ( k2_tops_2(A_94,B_95,C_96) = k2_funct_1(C_96)
      | ~ v2_funct_1(C_96)
      | k2_relset_1(A_94,B_95,C_96) != B_95
      | ~ m1_subset_1(C_96,k1_zfmisc_1(k2_zfmisc_1(A_94,B_95)))
      | ~ v1_funct_2(C_96,A_94,B_95)
      | ~ v1_funct_1(C_96) ) ),
    inference(cnfTransformation,[status(thm)],[f_195])).

tff(c_339,plain,
    ( k2_tops_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') = k2_funct_1('#skF_3')
    | ~ v2_funct_1('#skF_3')
    | k2_relset_1(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') != k2_relat_1('#skF_3')
    | ~ v1_funct_2('#skF_3',k1_relat_1('#skF_3'),k2_relat_1('#skF_3'))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_261,c_336])).

tff(c_342,plain,(
    k2_tops_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3') = k2_funct_1('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_70,c_262,c_260,c_62,c_339])).

tff(c_60,plain,(
    ~ r2_funct_2(u1_struct_0('#skF_1'),u1_struct_0('#skF_2'),k2_tops_2(u1_struct_0('#skF_2'),u1_struct_0('#skF_1'),k2_tops_2(u1_struct_0('#skF_1'),u1_struct_0('#skF_2'),'#skF_3')),'#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_217])).

tff(c_159,plain,(
    ~ r2_funct_2(k2_struct_0('#skF_1'),k2_struct_0('#skF_2'),k2_tops_2(k2_struct_0('#skF_2'),k2_struct_0('#skF_1'),k2_tops_2(k2_struct_0('#skF_1'),k2_struct_0('#skF_2'),'#skF_3')),'#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_100,c_100,c_100,c_99,c_99,c_99,c_60])).

tff(c_196,plain,(
    ~ r2_funct_2(k1_relat_1('#skF_3'),k2_struct_0('#skF_2'),k2_tops_2(k2_struct_0('#skF_2'),k1_relat_1('#skF_3'),k2_tops_2(k1_relat_1('#skF_3'),k2_struct_0('#skF_2'),'#skF_3')),'#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_194,c_194,c_194,c_159])).

tff(c_312,plain,(
    ~ r2_funct_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),k2_tops_2(k2_relat_1('#skF_3'),k1_relat_1('#skF_3'),k2_tops_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3')),'#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_255,c_255,c_255,c_196])).

tff(c_343,plain,(
    ~ r2_funct_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),k2_tops_2(k2_relat_1('#skF_3'),k1_relat_1('#skF_3'),k2_funct_1('#skF_3')),'#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_342,c_312])).

tff(c_866,plain,(
    ~ r2_funct_2(k1_relat_1('#skF_3'),k2_relat_1('#skF_3'),'#skF_3','#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_865,c_343])).

tff(c_869,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_613,c_866])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.00/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.12/0.33  % Computer   : n021.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % DateTime   : Tue Dec  1 11:43:49 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 3.63/1.55  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.63/1.57  
% 3.63/1.57  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.63/1.58  %$ r2_funct_2 > v1_funct_2 > v5_relat_1 > v4_relat_1 > v1_partfun1 > m1_subset_1 > v2_struct_0 > v2_funct_1 > v1_xboole_0 > v1_relat_1 > v1_funct_1 > l1_struct_0 > k2_tops_2 > k2_relset_1 > k5_relat_1 > k2_zfmisc_1 > #nlpp > u1_struct_0 > k6_relat_1 > k6_partfun1 > k2_struct_0 > k2_relat_1 > k2_funct_1 > k1_zfmisc_1 > k1_relat_1 > k1_xboole_0 > #skF_2 > #skF_3 > #skF_1
% 3.63/1.58  
% 3.63/1.58  %Foreground sorts:
% 3.63/1.58  
% 3.63/1.58  
% 3.63/1.58  %Background operators:
% 3.63/1.58  
% 3.63/1.58  
% 3.63/1.58  %Foreground operators:
% 3.63/1.58  tff(k2_relset_1, type, k2_relset_1: ($i * $i * $i) > $i).
% 3.63/1.58  tff(v2_struct_0, type, v2_struct_0: $i > $o).
% 3.63/1.58  tff(v1_funct_1, type, v1_funct_1: $i > $o).
% 3.63/1.58  tff(k2_funct_1, type, k2_funct_1: $i > $i).
% 3.63/1.58  tff(v2_funct_1, type, v2_funct_1: $i > $o).
% 3.63/1.58  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 3.63/1.58  tff(k1_xboole_0, type, k1_xboole_0: $i).
% 3.63/1.58  tff(k5_relat_1, type, k5_relat_1: ($i * $i) > $i).
% 3.63/1.58  tff(k2_relat_1, type, k2_relat_1: $i > $i).
% 3.63/1.58  tff(k2_tops_2, type, k2_tops_2: ($i * $i * $i) > $i).
% 3.63/1.58  tff(v1_funct_2, type, v1_funct_2: ($i * $i * $i) > $o).
% 3.63/1.58  tff('#skF_2', type, '#skF_2': $i).
% 3.63/1.58  tff(v1_partfun1, type, v1_partfun1: ($i * $i) > $o).
% 3.63/1.58  tff('#skF_3', type, '#skF_3': $i).
% 3.63/1.58  tff('#skF_1', type, '#skF_1': $i).
% 3.63/1.58  tff(v5_relat_1, type, v5_relat_1: ($i * $i) > $o).
% 3.63/1.58  tff(k1_zfmisc_1, type, k1_zfmisc_1: $i > $i).
% 3.63/1.58  tff(l1_struct_0, type, l1_struct_0: $i > $o).
% 3.63/1.58  tff(k6_partfun1, type, k6_partfun1: $i > $i).
% 3.63/1.58  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 3.63/1.58  tff(v1_relat_1, type, v1_relat_1: $i > $o).
% 3.63/1.58  tff(k2_zfmisc_1, type, k2_zfmisc_1: ($i * $i) > $i).
% 3.63/1.58  tff(k6_relat_1, type, k6_relat_1: $i > $i).
% 3.63/1.58  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 3.63/1.58  tff(v4_relat_1, type, v4_relat_1: ($i * $i) > $o).
% 3.63/1.58  tff(u1_struct_0, type, u1_struct_0: $i > $i).
% 3.63/1.58  tff(k2_struct_0, type, k2_struct_0: $i > $i).
% 3.63/1.58  tff(v1_xboole_0, type, v1_xboole_0: $i > $o).
% 3.63/1.58  tff(k1_relat_1, type, k1_relat_1: $i > $i).
% 3.63/1.58  tff(r2_funct_2, type, r2_funct_2: ($i * $i * $i * $i) > $o).
% 3.63/1.58  tff(m1_subset_1, type, m1_subset_1: ($i * $i) > $o).
% 3.63/1.58  
% 3.63/1.61  tff(f_217, negated_conjecture, ~(![A]: (l1_struct_0(A) => (![B]: ((~v2_struct_0(B) & l1_struct_0(B)) => (![C]: (((v1_funct_1(C) & v1_funct_2(C, u1_struct_0(A), u1_struct_0(B))) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(B))))) => (((k2_relset_1(u1_struct_0(A), u1_struct_0(B), C) = k2_struct_0(B)) & v2_funct_1(C)) => r2_funct_2(u1_struct_0(A), u1_struct_0(B), k2_tops_2(u1_struct_0(B), u1_struct_0(A), k2_tops_2(u1_struct_0(A), u1_struct_0(B), C)), C)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_tops_2)).
% 3.63/1.61  tff(f_35, axiom, (![A, B]: v1_relat_1(k2_zfmisc_1(A, B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 3.63/1.61  tff(f_175, axiom, (![A]: (l1_struct_0(A) => (k2_struct_0(A) = u1_struct_0(A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_struct_0)).
% 3.63/1.61  tff(f_33, axiom, (![A]: (v1_relat_1(A) => (![B]: (m1_subset_1(B, k1_zfmisc_1(A)) => v1_relat_1(B))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 3.63/1.61  tff(f_97, axiom, (![A, B, C]: (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => (v4_relat_1(C, A) & v5_relat_1(C, B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 3.63/1.61  tff(f_123, axiom, (![A, B]: ((v1_relat_1(B) & v4_relat_1(B, A)) => (v1_partfun1(B, A) <=> (k1_relat_1(B) = A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_partfun1)).
% 3.63/1.61  tff(f_115, axiom, (![A, B]: (~v1_xboole_0(B) => (![C]: (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => ((v1_funct_1(C) & v1_funct_2(C, A, B)) => (v1_funct_1(C) & v1_partfun1(C, A))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc5_funct_2)).
% 3.63/1.61  tff(f_183, axiom, (![A]: ((~v2_struct_0(A) & l1_struct_0(A)) => ~v1_xboole_0(k2_struct_0(A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc5_struct_0)).
% 3.63/1.61  tff(f_101, axiom, (![A, B, C]: (m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) => (k2_relset_1(A, B, C) = k2_relat_1(C)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 3.63/1.61  tff(f_139, axiom, (![A, B, C, D]: ((((((v1_funct_1(C) & v1_funct_2(C, A, B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) & v1_funct_1(D)) & v1_funct_2(D, A, B)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) => r2_funct_2(A, B, C, C))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', reflexivity_r2_funct_2)).
% 3.63/1.61  tff(f_155, axiom, (![A, B, C]: (((v1_funct_1(C) & v1_funct_2(C, A, B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) => ((v2_funct_1(C) & (k2_relset_1(A, B, C) = B)) => ((v1_funct_1(k2_funct_1(C)) & v1_funct_2(k2_funct_1(C), B, A)) & m1_subset_1(k2_funct_1(C), k1_zfmisc_1(k2_zfmisc_1(B, A))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t31_funct_2)).
% 3.63/1.61  tff(f_125, axiom, (![A]: (k6_partfun1(A) = k6_relat_1(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_partfun1)).
% 3.63/1.61  tff(f_47, axiom, (![A]: (v1_relat_1(k6_relat_1(A)) & v2_funct_1(k6_relat_1(A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc4_funct_1)).
% 3.63/1.61  tff(f_74, axiom, (![A]: ((v1_relat_1(A) & v1_funct_1(A)) => (v2_funct_1(A) => ((k2_relat_1(A) = k1_relat_1(k2_funct_1(A))) & (k1_relat_1(A) = k2_relat_1(k2_funct_1(A))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t55_funct_1)).
% 3.63/1.61  tff(f_26, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 3.63/1.61  tff(f_171, axiom, (![A, B, C]: (((v1_funct_1(C) & v1_funct_2(C, A, B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) => (((k2_relset_1(A, B, C) = B) & v2_funct_1(C)) => ((B = k1_xboole_0) | ((k5_relat_1(C, k2_funct_1(C)) = k6_partfun1(A)) & (k5_relat_1(k2_funct_1(C), C) = k6_partfun1(B))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t35_funct_2)).
% 3.63/1.61  tff(f_64, axiom, (![A]: ((v1_relat_1(A) & v1_funct_1(A)) => (![B]: ((v1_relat_1(B) & v1_funct_1(B)) => ((v2_funct_1(k5_relat_1(B, A)) & (k2_relat_1(B) = k1_relat_1(A))) => (v2_funct_1(B) & v2_funct_1(A))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_funct_1)).
% 3.63/1.61  tff(f_91, axiom, (![A]: ((v1_relat_1(A) & v1_funct_1(A)) => (![B]: ((v1_relat_1(B) & v1_funct_1(B)) => (((v2_funct_1(A) & (k2_relat_1(B) = k1_relat_1(A))) & (k5_relat_1(B, A) = k6_relat_1(k2_relat_1(A)))) => (B = k2_funct_1(A))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_funct_1)).
% 3.63/1.61  tff(f_195, axiom, (![A, B, C]: (((v1_funct_1(C) & v1_funct_2(C, A, B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) => (((k2_relset_1(A, B, C) = B) & v2_funct_1(C)) => (k2_tops_2(A, B, C) = k2_funct_1(C))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_tops_2)).
% 3.63/1.61  tff(c_70, plain, (v1_funct_1('#skF_3')), inference(cnfTransformation, [status(thm)], [f_217])).
% 3.63/1.61  tff(c_74, plain, (~v2_struct_0('#skF_2')), inference(cnfTransformation, [status(thm)], [f_217])).
% 3.63/1.61  tff(c_72, plain, (l1_struct_0('#skF_2')), inference(cnfTransformation, [status(thm)], [f_217])).
% 3.63/1.61  tff(c_6, plain, (![A_4, B_5]: (v1_relat_1(k2_zfmisc_1(A_4, B_5)))), inference(cnfTransformation, [status(thm)], [f_35])).
% 3.63/1.61  tff(c_76, plain, (l1_struct_0('#skF_1')), inference(cnfTransformation, [status(thm)], [f_217])).
% 3.63/1.61  tff(c_92, plain, (![A_52]: (u1_struct_0(A_52)=k2_struct_0(A_52) | ~l1_struct_0(A_52))), inference(cnfTransformation, [status(thm)], [f_175])).
% 3.63/1.61  tff(c_100, plain, (u1_struct_0('#skF_1')=k2_struct_0('#skF_1')), inference(resolution, [status(thm)], [c_76, c_92])).
% 3.63/1.61  tff(c_99, plain, (u1_struct_0('#skF_2')=k2_struct_0('#skF_2')), inference(resolution, [status(thm)], [c_72, c_92])).
% 3.63/1.61  tff(c_66, plain, (m1_subset_1('#skF_3', k1_zfmisc_1(k2_zfmisc_1(u1_struct_0('#skF_1'), u1_struct_0('#skF_2'))))), inference(cnfTransformation, [status(thm)], [f_217])).
% 3.63/1.61  tff(c_119, plain, (m1_subset_1('#skF_3', k1_zfmisc_1(k2_zfmisc_1(k2_struct_0('#skF_1'), k2_struct_0('#skF_2'))))), inference(demodulation, [status(thm), theory('equality')], [c_100, c_99, c_66])).
% 3.63/1.61  tff(c_120, plain, (![B_56, A_57]: (v1_relat_1(B_56) | ~m1_subset_1(B_56, k1_zfmisc_1(A_57)) | ~v1_relat_1(A_57))), inference(cnfTransformation, [status(thm)], [f_33])).
% 3.63/1.61  tff(c_123, plain, (v1_relat_1('#skF_3') | ~v1_relat_1(k2_zfmisc_1(k2_struct_0('#skF_1'), k2_struct_0('#skF_2')))), inference(resolution, [status(thm)], [c_119, c_120])).
% 3.63/1.61  tff(c_126, plain, (v1_relat_1('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_6, c_123])).
% 3.63/1.61  tff(c_132, plain, (![C_61, A_62, B_63]: (v4_relat_1(C_61, A_62) | ~m1_subset_1(C_61, k1_zfmisc_1(k2_zfmisc_1(A_62, B_63))))), inference(cnfTransformation, [status(thm)], [f_97])).
% 3.63/1.61  tff(c_136, plain, (v4_relat_1('#skF_3', k2_struct_0('#skF_1'))), inference(resolution, [status(thm)], [c_119, c_132])).
% 3.63/1.61  tff(c_160, plain, (![B_67, A_68]: (k1_relat_1(B_67)=A_68 | ~v1_partfun1(B_67, A_68) | ~v4_relat_1(B_67, A_68) | ~v1_relat_1(B_67))), inference(cnfTransformation, [status(thm)], [f_123])).
% 3.63/1.61  tff(c_163, plain, (k2_struct_0('#skF_1')=k1_relat_1('#skF_3') | ~v1_partfun1('#skF_3', k2_struct_0('#skF_1')) | ~v1_relat_1('#skF_3')), inference(resolution, [status(thm)], [c_136, c_160])).
% 3.63/1.61  tff(c_166, plain, (k2_struct_0('#skF_1')=k1_relat_1('#skF_3') | ~v1_partfun1('#skF_3', k2_struct_0('#skF_1'))), inference(demodulation, [status(thm), theory('equality')], [c_126, c_163])).
% 3.63/1.61  tff(c_167, plain, (~v1_partfun1('#skF_3', k2_struct_0('#skF_1'))), inference(splitLeft, [status(thm)], [c_166])).
% 3.63/1.61  tff(c_68, plain, (v1_funct_2('#skF_3', u1_struct_0('#skF_1'), u1_struct_0('#skF_2'))), inference(cnfTransformation, [status(thm)], [f_217])).
% 3.63/1.61  tff(c_101, plain, (v1_funct_2('#skF_3', u1_struct_0('#skF_1'), k2_struct_0('#skF_2'))), inference(demodulation, [status(thm), theory('equality')], [c_99, c_68])).
% 3.63/1.61  tff(c_110, plain, (v1_funct_2('#skF_3', k2_struct_0('#skF_1'), k2_struct_0('#skF_2'))), inference(demodulation, [status(thm), theory('equality')], [c_100, c_101])).
% 3.63/1.61  tff(c_178, plain, (![C_72, A_73, B_74]: (v1_partfun1(C_72, A_73) | ~v1_funct_2(C_72, A_73, B_74) | ~v1_funct_1(C_72) | ~m1_subset_1(C_72, k1_zfmisc_1(k2_zfmisc_1(A_73, B_74))) | v1_xboole_0(B_74))), inference(cnfTransformation, [status(thm)], [f_115])).
% 3.63/1.61  tff(c_181, plain, (v1_partfun1('#skF_3', k2_struct_0('#skF_1')) | ~v1_funct_2('#skF_3', k2_struct_0('#skF_1'), k2_struct_0('#skF_2')) | ~v1_funct_1('#skF_3') | v1_xboole_0(k2_struct_0('#skF_2'))), inference(resolution, [status(thm)], [c_119, c_178])).
% 3.63/1.61  tff(c_184, plain, (v1_partfun1('#skF_3', k2_struct_0('#skF_1')) | v1_xboole_0(k2_struct_0('#skF_2'))), inference(demodulation, [status(thm), theory('equality')], [c_70, c_110, c_181])).
% 3.63/1.61  tff(c_185, plain, (v1_xboole_0(k2_struct_0('#skF_2'))), inference(negUnitSimplification, [status(thm)], [c_167, c_184])).
% 3.63/1.61  tff(c_56, plain, (![A_39]: (~v1_xboole_0(k2_struct_0(A_39)) | ~l1_struct_0(A_39) | v2_struct_0(A_39))), inference(cnfTransformation, [status(thm)], [f_183])).
% 3.63/1.61  tff(c_188, plain, (~l1_struct_0('#skF_2') | v2_struct_0('#skF_2')), inference(resolution, [status(thm)], [c_185, c_56])).
% 3.63/1.61  tff(c_191, plain, (v2_struct_0('#skF_2')), inference(demodulation, [status(thm), theory('equality')], [c_72, c_188])).
% 3.63/1.61  tff(c_193, plain, $false, inference(negUnitSimplification, [status(thm)], [c_74, c_191])).
% 3.63/1.61  tff(c_194, plain, (k2_struct_0('#skF_1')=k1_relat_1('#skF_3')), inference(splitRight, [status(thm)], [c_166])).
% 3.63/1.61  tff(c_198, plain, (m1_subset_1('#skF_3', k1_zfmisc_1(k2_zfmisc_1(k1_relat_1('#skF_3'), k2_struct_0('#skF_2'))))), inference(demodulation, [status(thm), theory('equality')], [c_194, c_119])).
% 3.63/1.61  tff(c_30, plain, (![A_18, B_19, C_20]: (k2_relset_1(A_18, B_19, C_20)=k2_relat_1(C_20) | ~m1_subset_1(C_20, k1_zfmisc_1(k2_zfmisc_1(A_18, B_19))))), inference(cnfTransformation, [status(thm)], [f_101])).
% 3.63/1.61  tff(c_247, plain, (k2_relset_1(k1_relat_1('#skF_3'), k2_struct_0('#skF_2'), '#skF_3')=k2_relat_1('#skF_3')), inference(resolution, [status(thm)], [c_198, c_30])).
% 3.63/1.61  tff(c_64, plain, (k2_relset_1(u1_struct_0('#skF_1'), u1_struct_0('#skF_2'), '#skF_3')=k2_struct_0('#skF_2')), inference(cnfTransformation, [status(thm)], [f_217])).
% 3.63/1.61  tff(c_114, plain, (k2_relset_1(k2_struct_0('#skF_1'), k2_struct_0('#skF_2'), '#skF_3')=k2_struct_0('#skF_2')), inference(demodulation, [status(thm), theory('equality')], [c_100, c_99, c_64])).
% 3.63/1.61  tff(c_199, plain, (k2_relset_1(k1_relat_1('#skF_3'), k2_struct_0('#skF_2'), '#skF_3')=k2_struct_0('#skF_2')), inference(demodulation, [status(thm), theory('equality')], [c_194, c_114])).
% 3.63/1.61  tff(c_255, plain, (k2_struct_0('#skF_2')=k2_relat_1('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_247, c_199])).
% 3.63/1.61  tff(c_200, plain, (v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_struct_0('#skF_2'))), inference(demodulation, [status(thm), theory('equality')], [c_194, c_110])).
% 3.63/1.61  tff(c_262, plain, (v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_255, c_200])).
% 3.63/1.61  tff(c_261, plain, (m1_subset_1('#skF_3', k1_zfmisc_1(k2_zfmisc_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'))))), inference(demodulation, [status(thm), theory('equality')], [c_255, c_198])).
% 3.63/1.61  tff(c_595, plain, (![A_118, B_119, C_120, D_121]: (r2_funct_2(A_118, B_119, C_120, C_120) | ~m1_subset_1(D_121, k1_zfmisc_1(k2_zfmisc_1(A_118, B_119))) | ~v1_funct_2(D_121, A_118, B_119) | ~v1_funct_1(D_121) | ~m1_subset_1(C_120, k1_zfmisc_1(k2_zfmisc_1(A_118, B_119))) | ~v1_funct_2(C_120, A_118, B_119) | ~v1_funct_1(C_120))), inference(cnfTransformation, [status(thm)], [f_139])).
% 3.63/1.61  tff(c_599, plain, (![C_120]: (r2_funct_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), C_120, C_120) | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3') | ~m1_subset_1(C_120, k1_zfmisc_1(k2_zfmisc_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3')))) | ~v1_funct_2(C_120, k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1(C_120))), inference(resolution, [status(thm)], [c_261, c_595])).
% 3.63/1.61  tff(c_604, plain, (![C_122]: (r2_funct_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), C_122, C_122) | ~m1_subset_1(C_122, k1_zfmisc_1(k2_zfmisc_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3')))) | ~v1_funct_2(C_122, k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1(C_122))), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_599])).
% 3.63/1.61  tff(c_609, plain, (r2_funct_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3', '#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_604])).
% 3.63/1.61  tff(c_613, plain, (r2_funct_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3', '#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_609])).
% 3.63/1.61  tff(c_62, plain, (v2_funct_1('#skF_3')), inference(cnfTransformation, [status(thm)], [f_217])).
% 3.63/1.61  tff(c_260, plain, (k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')=k2_relat_1('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_255, c_247])).
% 3.63/1.61  tff(c_319, plain, (![C_86, A_87, B_88]: (v1_funct_1(k2_funct_1(C_86)) | k2_relset_1(A_87, B_88, C_86)!=B_88 | ~v2_funct_1(C_86) | ~m1_subset_1(C_86, k1_zfmisc_1(k2_zfmisc_1(A_87, B_88))) | ~v1_funct_2(C_86, A_87, B_88) | ~v1_funct_1(C_86))), inference(cnfTransformation, [status(thm)], [f_155])).
% 3.63/1.61  tff(c_322, plain, (v1_funct_1(k2_funct_1('#skF_3')) | k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')!=k2_relat_1('#skF_3') | ~v2_funct_1('#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_319])).
% 3.63/1.61  tff(c_325, plain, (v1_funct_1(k2_funct_1('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_62, c_260, c_322])).
% 3.63/1.61  tff(c_329, plain, (![C_91, B_92, A_93]: (v1_funct_2(k2_funct_1(C_91), B_92, A_93) | k2_relset_1(A_93, B_92, C_91)!=B_92 | ~v2_funct_1(C_91) | ~m1_subset_1(C_91, k1_zfmisc_1(k2_zfmisc_1(A_93, B_92))) | ~v1_funct_2(C_91, A_93, B_92) | ~v1_funct_1(C_91))), inference(cnfTransformation, [status(thm)], [f_155])).
% 3.63/1.61  tff(c_332, plain, (v1_funct_2(k2_funct_1('#skF_3'), k2_relat_1('#skF_3'), k1_relat_1('#skF_3')) | k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')!=k2_relat_1('#skF_3') | ~v2_funct_1('#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_329])).
% 3.63/1.61  tff(c_335, plain, (v1_funct_2(k2_funct_1('#skF_3'), k2_relat_1('#skF_3'), k1_relat_1('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_62, c_260, c_332])).
% 3.63/1.61  tff(c_348, plain, (![C_97, B_98, A_99]: (m1_subset_1(k2_funct_1(C_97), k1_zfmisc_1(k2_zfmisc_1(B_98, A_99))) | k2_relset_1(A_99, B_98, C_97)!=B_98 | ~v2_funct_1(C_97) | ~m1_subset_1(C_97, k1_zfmisc_1(k2_zfmisc_1(A_99, B_98))) | ~v1_funct_2(C_97, A_99, B_98) | ~v1_funct_1(C_97))), inference(cnfTransformation, [status(thm)], [f_155])).
% 3.63/1.61  tff(c_4, plain, (![B_3, A_1]: (v1_relat_1(B_3) | ~m1_subset_1(B_3, k1_zfmisc_1(A_1)) | ~v1_relat_1(A_1))), inference(cnfTransformation, [status(thm)], [f_33])).
% 3.63/1.61  tff(c_372, plain, (![C_97, B_98, A_99]: (v1_relat_1(k2_funct_1(C_97)) | ~v1_relat_1(k2_zfmisc_1(B_98, A_99)) | k2_relset_1(A_99, B_98, C_97)!=B_98 | ~v2_funct_1(C_97) | ~m1_subset_1(C_97, k1_zfmisc_1(k2_zfmisc_1(A_99, B_98))) | ~v1_funct_2(C_97, A_99, B_98) | ~v1_funct_1(C_97))), inference(resolution, [status(thm)], [c_348, c_4])).
% 3.63/1.61  tff(c_383, plain, (![C_100, A_101, B_102]: (v1_relat_1(k2_funct_1(C_100)) | k2_relset_1(A_101, B_102, C_100)!=B_102 | ~v2_funct_1(C_100) | ~m1_subset_1(C_100, k1_zfmisc_1(k2_zfmisc_1(A_101, B_102))) | ~v1_funct_2(C_100, A_101, B_102) | ~v1_funct_1(C_100))), inference(demodulation, [status(thm), theory('equality')], [c_6, c_372])).
% 3.63/1.61  tff(c_389, plain, (v1_relat_1(k2_funct_1('#skF_3')) | k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')!=k2_relat_1('#skF_3') | ~v2_funct_1('#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_383])).
% 3.63/1.61  tff(c_393, plain, (v1_relat_1(k2_funct_1('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_62, c_260, c_389])).
% 3.63/1.61  tff(c_40, plain, (![A_27]: (k6_relat_1(A_27)=k6_partfun1(A_27))), inference(cnfTransformation, [status(thm)], [f_125])).
% 3.63/1.61  tff(c_14, plain, (![A_7]: (v2_funct_1(k6_relat_1(A_7)))), inference(cnfTransformation, [status(thm)], [f_47])).
% 3.63/1.61  tff(c_78, plain, (![A_7]: (v2_funct_1(k6_partfun1(A_7)))), inference(demodulation, [status(thm), theory('equality')], [c_40, c_14])).
% 3.63/1.61  tff(c_28, plain, (![C_17, A_15, B_16]: (v4_relat_1(C_17, A_15) | ~m1_subset_1(C_17, k1_zfmisc_1(k2_zfmisc_1(A_15, B_16))))), inference(cnfTransformation, [status(thm)], [f_97])).
% 3.63/1.61  tff(c_394, plain, (![C_103, B_104, A_105]: (v4_relat_1(k2_funct_1(C_103), B_104) | k2_relset_1(A_105, B_104, C_103)!=B_104 | ~v2_funct_1(C_103) | ~m1_subset_1(C_103, k1_zfmisc_1(k2_zfmisc_1(A_105, B_104))) | ~v1_funct_2(C_103, A_105, B_104) | ~v1_funct_1(C_103))), inference(resolution, [status(thm)], [c_348, c_28])).
% 3.63/1.61  tff(c_400, plain, (v4_relat_1(k2_funct_1('#skF_3'), k2_relat_1('#skF_3')) | k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')!=k2_relat_1('#skF_3') | ~v2_funct_1('#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_394])).
% 3.63/1.61  tff(c_404, plain, (v4_relat_1(k2_funct_1('#skF_3'), k2_relat_1('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_62, c_260, c_400])).
% 3.63/1.61  tff(c_38, plain, (![B_26, A_25]: (k1_relat_1(B_26)=A_25 | ~v1_partfun1(B_26, A_25) | ~v4_relat_1(B_26, A_25) | ~v1_relat_1(B_26))), inference(cnfTransformation, [status(thm)], [f_123])).
% 3.63/1.61  tff(c_407, plain, (k1_relat_1(k2_funct_1('#skF_3'))=k2_relat_1('#skF_3') | ~v1_partfun1(k2_funct_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_relat_1(k2_funct_1('#skF_3'))), inference(resolution, [status(thm)], [c_404, c_38])).
% 3.63/1.61  tff(c_410, plain, (k1_relat_1(k2_funct_1('#skF_3'))=k2_relat_1('#skF_3') | ~v1_partfun1(k2_funct_1('#skF_3'), k2_relat_1('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_393, c_407])).
% 3.63/1.61  tff(c_411, plain, (~v1_partfun1(k2_funct_1('#skF_3'), k2_relat_1('#skF_3'))), inference(splitLeft, [status(thm)], [c_410])).
% 3.63/1.61  tff(c_22, plain, (![A_11]: (k1_relat_1(k2_funct_1(A_11))=k2_relat_1(A_11) | ~v2_funct_1(A_11) | ~v1_funct_1(A_11) | ~v1_relat_1(A_11))), inference(cnfTransformation, [status(thm)], [f_74])).
% 3.63/1.61  tff(c_2, plain, (v1_xboole_0(k1_xboole_0)), inference(cnfTransformation, [status(thm)], [f_26])).
% 3.63/1.61  tff(c_412, plain, (![A_106, C_107, B_108]: (k6_partfun1(A_106)=k5_relat_1(C_107, k2_funct_1(C_107)) | k1_xboole_0=B_108 | ~v2_funct_1(C_107) | k2_relset_1(A_106, B_108, C_107)!=B_108 | ~m1_subset_1(C_107, k1_zfmisc_1(k2_zfmisc_1(A_106, B_108))) | ~v1_funct_2(C_107, A_106, B_108) | ~v1_funct_1(C_107))), inference(cnfTransformation, [status(thm)], [f_171])).
% 3.63/1.61  tff(c_416, plain, (k5_relat_1('#skF_3', k2_funct_1('#skF_3'))=k6_partfun1(k1_relat_1('#skF_3')) | k2_relat_1('#skF_3')=k1_xboole_0 | ~v2_funct_1('#skF_3') | k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')!=k2_relat_1('#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_412])).
% 3.63/1.61  tff(c_420, plain, (k5_relat_1('#skF_3', k2_funct_1('#skF_3'))=k6_partfun1(k1_relat_1('#skF_3')) | k2_relat_1('#skF_3')=k1_xboole_0), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_260, c_62, c_416])).
% 3.63/1.61  tff(c_421, plain, (k2_relat_1('#skF_3')=k1_xboole_0), inference(splitLeft, [status(thm)], [c_420])).
% 3.63/1.61  tff(c_268, plain, (~v1_xboole_0(k2_relat_1('#skF_3')) | ~l1_struct_0('#skF_2') | v2_struct_0('#skF_2')), inference(superposition, [status(thm), theory('equality')], [c_255, c_56])).
% 3.63/1.61  tff(c_272, plain, (~v1_xboole_0(k2_relat_1('#skF_3')) | v2_struct_0('#skF_2')), inference(demodulation, [status(thm), theory('equality')], [c_72, c_268])).
% 3.63/1.61  tff(c_273, plain, (~v1_xboole_0(k2_relat_1('#skF_3'))), inference(negUnitSimplification, [status(thm)], [c_74, c_272])).
% 3.63/1.61  tff(c_432, plain, (~v1_xboole_0(k1_xboole_0)), inference(demodulation, [status(thm), theory('equality')], [c_421, c_273])).
% 3.63/1.61  tff(c_436, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_2, c_432])).
% 3.63/1.61  tff(c_437, plain, (k5_relat_1('#skF_3', k2_funct_1('#skF_3'))=k6_partfun1(k1_relat_1('#skF_3'))), inference(splitRight, [status(thm)], [c_420])).
% 3.63/1.61  tff(c_16, plain, (![A_8, B_10]: (v2_funct_1(A_8) | k2_relat_1(B_10)!=k1_relat_1(A_8) | ~v2_funct_1(k5_relat_1(B_10, A_8)) | ~v1_funct_1(B_10) | ~v1_relat_1(B_10) | ~v1_funct_1(A_8) | ~v1_relat_1(A_8))), inference(cnfTransformation, [status(thm)], [f_64])).
% 3.63/1.61  tff(c_445, plain, (v2_funct_1(k2_funct_1('#skF_3')) | k1_relat_1(k2_funct_1('#skF_3'))!=k2_relat_1('#skF_3') | ~v2_funct_1(k6_partfun1(k1_relat_1('#skF_3'))) | ~v1_funct_1('#skF_3') | ~v1_relat_1('#skF_3') | ~v1_funct_1(k2_funct_1('#skF_3')) | ~v1_relat_1(k2_funct_1('#skF_3'))), inference(superposition, [status(thm), theory('equality')], [c_437, c_16])).
% 3.63/1.61  tff(c_451, plain, (v2_funct_1(k2_funct_1('#skF_3')) | k1_relat_1(k2_funct_1('#skF_3'))!=k2_relat_1('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_393, c_325, c_126, c_70, c_78, c_445])).
% 3.63/1.61  tff(c_453, plain, (k1_relat_1(k2_funct_1('#skF_3'))!=k2_relat_1('#skF_3')), inference(splitLeft, [status(thm)], [c_451])).
% 3.63/1.61  tff(c_456, plain, (~v2_funct_1('#skF_3') | ~v1_funct_1('#skF_3') | ~v1_relat_1('#skF_3')), inference(superposition, [status(thm), theory('equality')], [c_22, c_453])).
% 3.63/1.61  tff(c_460, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_126, c_70, c_62, c_456])).
% 3.63/1.61  tff(c_462, plain, (k1_relat_1(k2_funct_1('#skF_3'))=k2_relat_1('#skF_3')), inference(splitRight, [status(thm)], [c_451])).
% 3.63/1.61  tff(c_147, plain, (![A_66]: (k1_relat_1(k2_funct_1(A_66))=k2_relat_1(A_66) | ~v2_funct_1(A_66) | ~v1_funct_1(A_66) | ~v1_relat_1(A_66))), inference(cnfTransformation, [status(thm)], [f_74])).
% 3.63/1.61  tff(c_36, plain, (![B_26]: (v1_partfun1(B_26, k1_relat_1(B_26)) | ~v4_relat_1(B_26, k1_relat_1(B_26)) | ~v1_relat_1(B_26))), inference(cnfTransformation, [status(thm)], [f_123])).
% 3.63/1.61  tff(c_153, plain, (![A_66]: (v1_partfun1(k2_funct_1(A_66), k1_relat_1(k2_funct_1(A_66))) | ~v4_relat_1(k2_funct_1(A_66), k2_relat_1(A_66)) | ~v1_relat_1(k2_funct_1(A_66)) | ~v2_funct_1(A_66) | ~v1_funct_1(A_66) | ~v1_relat_1(A_66))), inference(superposition, [status(thm), theory('equality')], [c_147, c_36])).
% 3.63/1.61  tff(c_466, plain, (v1_partfun1(k2_funct_1('#skF_3'), k2_relat_1('#skF_3')) | ~v4_relat_1(k2_funct_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_relat_1(k2_funct_1('#skF_3')) | ~v2_funct_1('#skF_3') | ~v1_funct_1('#skF_3') | ~v1_relat_1('#skF_3')), inference(superposition, [status(thm), theory('equality')], [c_462, c_153])).
% 3.63/1.61  tff(c_479, plain, (v1_partfun1(k2_funct_1('#skF_3'), k2_relat_1('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_126, c_70, c_62, c_393, c_404, c_466])).
% 3.63/1.61  tff(c_481, plain, $false, inference(negUnitSimplification, [status(thm)], [c_411, c_479])).
% 3.63/1.61  tff(c_482, plain, (k1_relat_1(k2_funct_1('#skF_3'))=k2_relat_1('#skF_3')), inference(splitRight, [status(thm)], [c_410])).
% 3.63/1.61  tff(c_484, plain, (![A_109, C_110, B_111]: (k6_partfun1(A_109)=k5_relat_1(C_110, k2_funct_1(C_110)) | k1_xboole_0=B_111 | ~v2_funct_1(C_110) | k2_relset_1(A_109, B_111, C_110)!=B_111 | ~m1_subset_1(C_110, k1_zfmisc_1(k2_zfmisc_1(A_109, B_111))) | ~v1_funct_2(C_110, A_109, B_111) | ~v1_funct_1(C_110))), inference(cnfTransformation, [status(thm)], [f_171])).
% 3.63/1.61  tff(c_488, plain, (k5_relat_1('#skF_3', k2_funct_1('#skF_3'))=k6_partfun1(k1_relat_1('#skF_3')) | k2_relat_1('#skF_3')=k1_xboole_0 | ~v2_funct_1('#skF_3') | k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')!=k2_relat_1('#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_484])).
% 3.63/1.61  tff(c_492, plain, (k5_relat_1('#skF_3', k2_funct_1('#skF_3'))=k6_partfun1(k1_relat_1('#skF_3')) | k2_relat_1('#skF_3')=k1_xboole_0), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_260, c_62, c_488])).
% 3.63/1.61  tff(c_520, plain, (k2_relat_1('#skF_3')=k1_xboole_0), inference(splitLeft, [status(thm)], [c_492])).
% 3.63/1.61  tff(c_532, plain, (~v1_xboole_0(k1_xboole_0)), inference(demodulation, [status(thm), theory('equality')], [c_520, c_273])).
% 3.63/1.61  tff(c_536, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_2, c_532])).
% 3.63/1.61  tff(c_537, plain, (k5_relat_1('#skF_3', k2_funct_1('#skF_3'))=k6_partfun1(k1_relat_1('#skF_3'))), inference(splitRight, [status(thm)], [c_492])).
% 3.63/1.61  tff(c_546, plain, (v2_funct_1(k2_funct_1('#skF_3')) | k1_relat_1(k2_funct_1('#skF_3'))!=k2_relat_1('#skF_3') | ~v2_funct_1(k6_partfun1(k1_relat_1('#skF_3'))) | ~v1_funct_1('#skF_3') | ~v1_relat_1('#skF_3') | ~v1_funct_1(k2_funct_1('#skF_3')) | ~v1_relat_1(k2_funct_1('#skF_3'))), inference(superposition, [status(thm), theory('equality')], [c_537, c_16])).
% 3.63/1.61  tff(c_552, plain, (v2_funct_1(k2_funct_1('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_393, c_325, c_126, c_70, c_78, c_482, c_546])).
% 3.63/1.61  tff(c_20, plain, (![A_11]: (k2_relat_1(k2_funct_1(A_11))=k1_relat_1(A_11) | ~v2_funct_1(A_11) | ~v1_funct_1(A_11) | ~v1_relat_1(A_11))), inference(cnfTransformation, [status(thm)], [f_74])).
% 3.63/1.61  tff(c_24, plain, (![A_12, B_14]: (k2_funct_1(A_12)=B_14 | k6_relat_1(k2_relat_1(A_12))!=k5_relat_1(B_14, A_12) | k2_relat_1(B_14)!=k1_relat_1(A_12) | ~v2_funct_1(A_12) | ~v1_funct_1(B_14) | ~v1_relat_1(B_14) | ~v1_funct_1(A_12) | ~v1_relat_1(A_12))), inference(cnfTransformation, [status(thm)], [f_91])).
% 3.63/1.61  tff(c_326, plain, (![A_89, B_90]: (k2_funct_1(A_89)=B_90 | k6_partfun1(k2_relat_1(A_89))!=k5_relat_1(B_90, A_89) | k2_relat_1(B_90)!=k1_relat_1(A_89) | ~v2_funct_1(A_89) | ~v1_funct_1(B_90) | ~v1_relat_1(B_90) | ~v1_funct_1(A_89) | ~v1_relat_1(A_89))), inference(demodulation, [status(thm), theory('equality')], [c_40, c_24])).
% 3.63/1.61  tff(c_651, plain, (![A_130, B_131]: (k2_funct_1(k2_funct_1(A_130))=B_131 | k5_relat_1(B_131, k2_funct_1(A_130))!=k6_partfun1(k1_relat_1(A_130)) | k2_relat_1(B_131)!=k1_relat_1(k2_funct_1(A_130)) | ~v2_funct_1(k2_funct_1(A_130)) | ~v1_funct_1(B_131) | ~v1_relat_1(B_131) | ~v1_funct_1(k2_funct_1(A_130)) | ~v1_relat_1(k2_funct_1(A_130)) | ~v2_funct_1(A_130) | ~v1_funct_1(A_130) | ~v1_relat_1(A_130))), inference(superposition, [status(thm), theory('equality')], [c_20, c_326])).
% 3.63/1.61  tff(c_653, plain, (k2_funct_1(k2_funct_1('#skF_3'))='#skF_3' | k1_relat_1(k2_funct_1('#skF_3'))!=k2_relat_1('#skF_3') | ~v2_funct_1(k2_funct_1('#skF_3')) | ~v1_funct_1(k2_funct_1('#skF_3')) | ~v1_relat_1(k2_funct_1('#skF_3')) | ~v2_funct_1('#skF_3') | ~v1_funct_1('#skF_3') | ~v1_relat_1('#skF_3')), inference(superposition, [status(thm), theory('equality')], [c_537, c_651])).
% 3.63/1.61  tff(c_656, plain, (k2_funct_1(k2_funct_1('#skF_3'))='#skF_3'), inference(demodulation, [status(thm), theory('equality')], [c_126, c_70, c_62, c_393, c_325, c_552, c_482, c_653])).
% 3.63/1.61  tff(c_674, plain, (k2_relat_1(k2_funct_1('#skF_3'))=k1_relat_1('#skF_3') | ~v2_funct_1(k2_funct_1('#skF_3')) | ~v1_funct_1(k2_funct_1('#skF_3')) | ~v1_relat_1(k2_funct_1('#skF_3'))), inference(superposition, [status(thm), theory('equality')], [c_656, c_22])).
% 3.63/1.61  tff(c_697, plain, (k2_relat_1(k2_funct_1('#skF_3'))=k1_relat_1('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_393, c_325, c_552, c_674])).
% 3.63/1.61  tff(c_624, plain, (![B_124, A_125, C_126]: (k2_relset_1(B_124, A_125, k2_funct_1(C_126))=k2_relat_1(k2_funct_1(C_126)) | k2_relset_1(A_125, B_124, C_126)!=B_124 | ~v2_funct_1(C_126) | ~m1_subset_1(C_126, k1_zfmisc_1(k2_zfmisc_1(A_125, B_124))) | ~v1_funct_2(C_126, A_125, B_124) | ~v1_funct_1(C_126))), inference(resolution, [status(thm)], [c_348, c_30])).
% 3.63/1.61  tff(c_630, plain, (k2_relset_1(k2_relat_1('#skF_3'), k1_relat_1('#skF_3'), k2_funct_1('#skF_3'))=k2_relat_1(k2_funct_1('#skF_3')) | k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')!=k2_relat_1('#skF_3') | ~v2_funct_1('#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_624])).
% 3.63/1.61  tff(c_634, plain, (k2_relset_1(k2_relat_1('#skF_3'), k1_relat_1('#skF_3'), k2_funct_1('#skF_3'))=k2_relat_1(k2_funct_1('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_62, c_260, c_630])).
% 3.63/1.61  tff(c_705, plain, (k2_relset_1(k2_relat_1('#skF_3'), k1_relat_1('#skF_3'), k2_funct_1('#skF_3'))=k1_relat_1('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_697, c_634])).
% 3.63/1.61  tff(c_58, plain, (![A_40, B_41, C_42]: (k2_tops_2(A_40, B_41, C_42)=k2_funct_1(C_42) | ~v2_funct_1(C_42) | k2_relset_1(A_40, B_41, C_42)!=B_41 | ~m1_subset_1(C_42, k1_zfmisc_1(k2_zfmisc_1(A_40, B_41))) | ~v1_funct_2(C_42, A_40, B_41) | ~v1_funct_1(C_42))), inference(cnfTransformation, [status(thm)], [f_195])).
% 3.63/1.61  tff(c_855, plain, (![B_157, A_158, C_159]: (k2_tops_2(B_157, A_158, k2_funct_1(C_159))=k2_funct_1(k2_funct_1(C_159)) | ~v2_funct_1(k2_funct_1(C_159)) | k2_relset_1(B_157, A_158, k2_funct_1(C_159))!=A_158 | ~v1_funct_2(k2_funct_1(C_159), B_157, A_158) | ~v1_funct_1(k2_funct_1(C_159)) | k2_relset_1(A_158, B_157, C_159)!=B_157 | ~v2_funct_1(C_159) | ~m1_subset_1(C_159, k1_zfmisc_1(k2_zfmisc_1(A_158, B_157))) | ~v1_funct_2(C_159, A_158, B_157) | ~v1_funct_1(C_159))), inference(resolution, [status(thm)], [c_348, c_58])).
% 3.63/1.61  tff(c_861, plain, (k2_tops_2(k2_relat_1('#skF_3'), k1_relat_1('#skF_3'), k2_funct_1('#skF_3'))=k2_funct_1(k2_funct_1('#skF_3')) | ~v2_funct_1(k2_funct_1('#skF_3')) | k2_relset_1(k2_relat_1('#skF_3'), k1_relat_1('#skF_3'), k2_funct_1('#skF_3'))!=k1_relat_1('#skF_3') | ~v1_funct_2(k2_funct_1('#skF_3'), k2_relat_1('#skF_3'), k1_relat_1('#skF_3')) | ~v1_funct_1(k2_funct_1('#skF_3')) | k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')!=k2_relat_1('#skF_3') | ~v2_funct_1('#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_855])).
% 3.63/1.61  tff(c_865, plain, (k2_tops_2(k2_relat_1('#skF_3'), k1_relat_1('#skF_3'), k2_funct_1('#skF_3'))='#skF_3'), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_62, c_260, c_325, c_335, c_705, c_552, c_656, c_861])).
% 3.63/1.61  tff(c_336, plain, (![A_94, B_95, C_96]: (k2_tops_2(A_94, B_95, C_96)=k2_funct_1(C_96) | ~v2_funct_1(C_96) | k2_relset_1(A_94, B_95, C_96)!=B_95 | ~m1_subset_1(C_96, k1_zfmisc_1(k2_zfmisc_1(A_94, B_95))) | ~v1_funct_2(C_96, A_94, B_95) | ~v1_funct_1(C_96))), inference(cnfTransformation, [status(thm)], [f_195])).
% 3.63/1.61  tff(c_339, plain, (k2_tops_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')=k2_funct_1('#skF_3') | ~v2_funct_1('#skF_3') | k2_relset_1(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')!=k2_relat_1('#skF_3') | ~v1_funct_2('#skF_3', k1_relat_1('#skF_3'), k2_relat_1('#skF_3')) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_261, c_336])).
% 3.63/1.61  tff(c_342, plain, (k2_tops_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')=k2_funct_1('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_70, c_262, c_260, c_62, c_339])).
% 3.63/1.61  tff(c_60, plain, (~r2_funct_2(u1_struct_0('#skF_1'), u1_struct_0('#skF_2'), k2_tops_2(u1_struct_0('#skF_2'), u1_struct_0('#skF_1'), k2_tops_2(u1_struct_0('#skF_1'), u1_struct_0('#skF_2'), '#skF_3')), '#skF_3')), inference(cnfTransformation, [status(thm)], [f_217])).
% 3.63/1.61  tff(c_159, plain, (~r2_funct_2(k2_struct_0('#skF_1'), k2_struct_0('#skF_2'), k2_tops_2(k2_struct_0('#skF_2'), k2_struct_0('#skF_1'), k2_tops_2(k2_struct_0('#skF_1'), k2_struct_0('#skF_2'), '#skF_3')), '#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_100, c_100, c_100, c_99, c_99, c_99, c_60])).
% 3.63/1.61  tff(c_196, plain, (~r2_funct_2(k1_relat_1('#skF_3'), k2_struct_0('#skF_2'), k2_tops_2(k2_struct_0('#skF_2'), k1_relat_1('#skF_3'), k2_tops_2(k1_relat_1('#skF_3'), k2_struct_0('#skF_2'), '#skF_3')), '#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_194, c_194, c_194, c_159])).
% 3.63/1.61  tff(c_312, plain, (~r2_funct_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), k2_tops_2(k2_relat_1('#skF_3'), k1_relat_1('#skF_3'), k2_tops_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3')), '#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_255, c_255, c_255, c_196])).
% 3.63/1.61  tff(c_343, plain, (~r2_funct_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), k2_tops_2(k2_relat_1('#skF_3'), k1_relat_1('#skF_3'), k2_funct_1('#skF_3')), '#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_342, c_312])).
% 3.63/1.61  tff(c_866, plain, (~r2_funct_2(k1_relat_1('#skF_3'), k2_relat_1('#skF_3'), '#skF_3', '#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_865, c_343])).
% 3.63/1.61  tff(c_869, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_613, c_866])).
% 3.63/1.61  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.63/1.61  
% 3.63/1.61  Inference rules
% 3.63/1.61  ----------------------
% 3.63/1.61  #Ref     : 0
% 3.63/1.61  #Sup     : 161
% 3.63/1.61  #Fact    : 0
% 3.63/1.61  #Define  : 0
% 3.63/1.61  #Split   : 6
% 3.63/1.61  #Chain   : 0
% 3.63/1.61  #Close   : 0
% 3.63/1.61  
% 3.63/1.61  Ordering : KBO
% 3.63/1.61  
% 3.63/1.61  Simplification rules
% 3.63/1.61  ----------------------
% 3.63/1.61  #Subsume      : 0
% 3.63/1.61  #Demod        : 467
% 3.63/1.61  #Tautology    : 94
% 3.63/1.61  #SimpNegUnit  : 7
% 3.63/1.61  #BackRed      : 42
% 3.63/1.61  
% 3.63/1.61  #Partial instantiations: 0
% 3.63/1.61  #Strategies tried      : 1
% 3.63/1.61  
% 3.63/1.61  Timing (in seconds)
% 3.63/1.61  ----------------------
% 3.99/1.62  Preprocessing        : 0.38
% 3.99/1.62  Parsing              : 0.19
% 3.99/1.62  CNF conversion       : 0.03
% 3.99/1.62  Main loop            : 0.43
% 3.99/1.62  Inferencing          : 0.14
% 3.99/1.62  Reduction            : 0.15
% 3.99/1.62  Demodulation         : 0.11
% 3.99/1.62  BG Simplification    : 0.03
% 3.99/1.62  Subsumption          : 0.07
% 3.99/1.62  Abstraction          : 0.02
% 3.99/1.62  MUC search           : 0.00
% 3.99/1.62  Cooper               : 0.00
% 3.99/1.62  Total                : 0.88
% 3.99/1.62  Index Insertion      : 0.00
% 3.99/1.62  Index Deletion       : 0.00
% 3.99/1.62  Index Matching       : 0.00
% 3.99/1.62  BG Taut test         : 0.00
%------------------------------------------------------------------------------
