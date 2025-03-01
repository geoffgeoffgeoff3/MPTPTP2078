%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:13:27 EST 2020

% Result     : Theorem 2.74s
% Output     : CNFRefutation 2.99s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 119 expanded)
%              Number of leaves         :   33 (  56 expanded)
%              Depth                    :    9
%              Number of atoms          :  129 ( 358 expanded)
%              Number of equality atoms :   14 (  37 expanded)
%              Maximal formula depth    :   15 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_relset_1 > v1_funct_2 > v1_partfun1 > m1_subset_1 > v2_funct_1 > v1_xboole_0 > v1_relat_1 > v1_funct_1 > k1_partfun1 > k2_zfmisc_1 > #nlpp > k6_relat_1 > k6_partfun1 > k1_zfmisc_1 > k1_xboole_0 > #skF_2 > #skF_3 > #skF_1 > #skF_4

%Foreground sorts:

%Background operators:

%Foreground operators:
tff(v1_funct_1,type,(
    v1_funct_1: $i > $o )).

tff(v2_funct_1,type,(
    v2_funct_1: $i > $o )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_relset_1,type,(
    r2_relset_1: ( $i * $i * $i * $i ) > $o )).

tff(k1_xboole_0,type,(
    k1_xboole_0: $i )).

tff(k1_partfun1,type,(
    k1_partfun1: ( $i * $i * $i * $i * $i * $i ) > $i )).

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

tff(k1_zfmisc_1,type,(
    k1_zfmisc_1: $i > $i )).

tff(k6_partfun1,type,(
    k6_partfun1: $i > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(v1_relat_1,type,(
    v1_relat_1: $i > $o )).

tff(k2_zfmisc_1,type,(
    k2_zfmisc_1: ( $i * $i ) > $i )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff(k6_relat_1,type,(
    k6_relat_1: $i > $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(v1_xboole_0,type,(
    v1_xboole_0: $i > $o )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_30,axiom,(
    ! [A,B] :
      ( v1_xboole_0(A)
     => v1_xboole_0(k2_zfmisc_1(A,B)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc4_zfmisc_1)).

tff(f_130,negated_conjecture,(
    ~ ! [A,B,C] :
        ( ( v1_funct_1(C)
          & v1_funct_2(C,A,B)
          & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
       => ~ ( B != k1_xboole_0
            & ? [D] :
                ( v1_funct_1(D)
                & v1_funct_2(D,B,A)
                & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(B,A)))
                & r2_relset_1(A,A,k1_partfun1(A,B,B,A,C,D),k6_partfun1(A)) )
            & ~ v2_funct_1(C) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t37_funct_2)).

tff(f_57,axiom,(
    ! [A] :
      ( ( v1_xboole_0(A)
        & v1_relat_1(A)
        & v1_funct_1(A) )
     => ( v1_relat_1(A)
        & v1_funct_1(A)
        & v2_funct_1(A) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_funct_1)).

tff(f_37,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_xboole_0(B) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_subset_1)).

tff(f_85,axiom,(
    ! [A] : k6_partfun1(A) = k6_relat_1(A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_partfun1)).

tff(f_59,axiom,(
    ! [A] : v2_funct_1(k6_relat_1(A)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t52_funct_1)).

tff(f_79,axiom,(
    ! [A,B,C,D,E,F] :
      ( ( v1_funct_1(E)
        & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & v1_funct_1(F)
        & m1_subset_1(F,k1_zfmisc_1(k2_zfmisc_1(C,D))) )
     => ( v1_funct_1(k1_partfun1(A,B,C,D,E,F))
        & m1_subset_1(k1_partfun1(A,B,C,D,E,F),k1_zfmisc_1(k2_zfmisc_1(A,D))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k1_partfun1)).

tff(f_83,axiom,(
    ! [A] :
      ( v1_partfun1(k6_partfun1(A),A)
      & m1_subset_1(k6_partfun1(A),k1_zfmisc_1(k2_zfmisc_1(A,A))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_partfun1)).

tff(f_67,axiom,(
    ! [A,B,C,D] :
      ( ( m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(A,B)))
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ( r2_relset_1(A,B,C,D)
      <=> C = D ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_r2_relset_1)).

tff(f_107,axiom,(
    ! [A,B,C,D] :
      ( ( v1_funct_1(D)
        & v1_funct_2(D,A,B)
        & m1_subset_1(D,k1_zfmisc_1(k2_zfmisc_1(A,B))) )
     => ! [E] :
          ( ( v1_funct_1(E)
            & v1_funct_2(E,B,C)
            & m1_subset_1(E,k1_zfmisc_1(k2_zfmisc_1(B,C))) )
         => ( v2_funct_1(k1_partfun1(A,B,B,C,D,E))
           => ( ( C = k1_xboole_0
                & B != k1_xboole_0 )
              | v2_funct_1(D) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t26_funct_2)).

tff(f_26,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

tff(f_41,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => v1_relat_1(A) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relat_1)).

tff(c_4,plain,(
    ! [A_1,B_2] :
      ( v1_xboole_0(k2_zfmisc_1(A_1,B_2))
      | ~ v1_xboole_0(A_1) ) ),
    inference(cnfTransformation,[status(thm)],[f_30])).

tff(c_54,plain,(
    v1_funct_1('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_130])).

tff(c_107,plain,(
    ! [A_43] :
      ( v2_funct_1(A_43)
      | ~ v1_funct_1(A_43)
      | ~ v1_relat_1(A_43)
      | ~ v1_xboole_0(A_43) ) ),
    inference(cnfTransformation,[status(thm)],[f_57])).

tff(c_38,plain,(
    ~ v2_funct_1('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_130])).

tff(c_110,plain,
    ( ~ v1_funct_1('#skF_3')
    | ~ v1_relat_1('#skF_3')
    | ~ v1_xboole_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_107,c_38])).

tff(c_113,plain,
    ( ~ v1_relat_1('#skF_3')
    | ~ v1_xboole_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_54,c_110])).

tff(c_114,plain,(
    ~ v1_xboole_0('#skF_3') ),
    inference(splitLeft,[status(thm)],[c_113])).

tff(c_50,plain,(
    m1_subset_1('#skF_3',k1_zfmisc_1(k2_zfmisc_1('#skF_1','#skF_2'))) ),
    inference(cnfTransformation,[status(thm)],[f_130])).

tff(c_89,plain,(
    ! [B_41,A_42] :
      ( v1_xboole_0(B_41)
      | ~ m1_subset_1(B_41,k1_zfmisc_1(A_42))
      | ~ v1_xboole_0(A_42) ) ),
    inference(cnfTransformation,[status(thm)],[f_37])).

tff(c_101,plain,
    ( v1_xboole_0('#skF_3')
    | ~ v1_xboole_0(k2_zfmisc_1('#skF_1','#skF_2')) ),
    inference(resolution,[status(thm)],[c_50,c_89])).

tff(c_115,plain,(
    ~ v1_xboole_0(k2_zfmisc_1('#skF_1','#skF_2')) ),
    inference(negUnitSimplification,[status(thm)],[c_114,c_101])).

tff(c_119,plain,(
    ~ v1_xboole_0('#skF_1') ),
    inference(resolution,[status(thm)],[c_4,c_115])).

tff(c_52,plain,(
    v1_funct_2('#skF_3','#skF_1','#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_130])).

tff(c_46,plain,(
    v1_funct_1('#skF_4') ),
    inference(cnfTransformation,[status(thm)],[f_130])).

tff(c_44,plain,(
    v1_funct_2('#skF_4','#skF_2','#skF_1') ),
    inference(cnfTransformation,[status(thm)],[f_130])).

tff(c_42,plain,(
    m1_subset_1('#skF_4',k1_zfmisc_1(k2_zfmisc_1('#skF_2','#skF_1'))) ),
    inference(cnfTransformation,[status(thm)],[f_130])).

tff(c_32,plain,(
    ! [A_21] : k6_relat_1(A_21) = k6_partfun1(A_21) ),
    inference(cnfTransformation,[status(thm)],[f_85])).

tff(c_18,plain,(
    ! [A_9] : v2_funct_1(k6_relat_1(A_9)) ),
    inference(cnfTransformation,[status(thm)],[f_59])).

tff(c_55,plain,(
    ! [A_9] : v2_funct_1(k6_partfun1(A_9)) ),
    inference(demodulation,[status(thm),theory(equality)],[c_32,c_18])).

tff(c_204,plain,(
    ! [D_67,A_70,E_65,C_68,F_66,B_69] :
      ( m1_subset_1(k1_partfun1(A_70,B_69,C_68,D_67,E_65,F_66),k1_zfmisc_1(k2_zfmisc_1(A_70,D_67)))
      | ~ m1_subset_1(F_66,k1_zfmisc_1(k2_zfmisc_1(C_68,D_67)))
      | ~ v1_funct_1(F_66)
      | ~ m1_subset_1(E_65,k1_zfmisc_1(k2_zfmisc_1(A_70,B_69)))
      | ~ v1_funct_1(E_65) ) ),
    inference(cnfTransformation,[status(thm)],[f_79])).

tff(c_30,plain,(
    ! [A_20] : m1_subset_1(k6_partfun1(A_20),k1_zfmisc_1(k2_zfmisc_1(A_20,A_20))) ),
    inference(cnfTransformation,[status(thm)],[f_83])).

tff(c_40,plain,(
    r2_relset_1('#skF_1','#skF_1',k1_partfun1('#skF_1','#skF_2','#skF_2','#skF_1','#skF_3','#skF_4'),k6_partfun1('#skF_1')) ),
    inference(cnfTransformation,[status(thm)],[f_130])).

tff(c_147,plain,(
    ! [D_51,C_52,A_53,B_54] :
      ( D_51 = C_52
      | ~ r2_relset_1(A_53,B_54,C_52,D_51)
      | ~ m1_subset_1(D_51,k1_zfmisc_1(k2_zfmisc_1(A_53,B_54)))
      | ~ m1_subset_1(C_52,k1_zfmisc_1(k2_zfmisc_1(A_53,B_54))) ) ),
    inference(cnfTransformation,[status(thm)],[f_67])).

tff(c_149,plain,
    ( k1_partfun1('#skF_1','#skF_2','#skF_2','#skF_1','#skF_3','#skF_4') = k6_partfun1('#skF_1')
    | ~ m1_subset_1(k6_partfun1('#skF_1'),k1_zfmisc_1(k2_zfmisc_1('#skF_1','#skF_1')))
    | ~ m1_subset_1(k1_partfun1('#skF_1','#skF_2','#skF_2','#skF_1','#skF_3','#skF_4'),k1_zfmisc_1(k2_zfmisc_1('#skF_1','#skF_1'))) ),
    inference(resolution,[status(thm)],[c_40,c_147])).

tff(c_152,plain,
    ( k1_partfun1('#skF_1','#skF_2','#skF_2','#skF_1','#skF_3','#skF_4') = k6_partfun1('#skF_1')
    | ~ m1_subset_1(k1_partfun1('#skF_1','#skF_2','#skF_2','#skF_1','#skF_3','#skF_4'),k1_zfmisc_1(k2_zfmisc_1('#skF_1','#skF_1'))) ),
    inference(demodulation,[status(thm),theory(equality)],[c_30,c_149])).

tff(c_172,plain,(
    ~ m1_subset_1(k1_partfun1('#skF_1','#skF_2','#skF_2','#skF_1','#skF_3','#skF_4'),k1_zfmisc_1(k2_zfmisc_1('#skF_1','#skF_1'))) ),
    inference(splitLeft,[status(thm)],[c_152])).

tff(c_212,plain,
    ( ~ m1_subset_1('#skF_4',k1_zfmisc_1(k2_zfmisc_1('#skF_2','#skF_1')))
    | ~ v1_funct_1('#skF_4')
    | ~ m1_subset_1('#skF_3',k1_zfmisc_1(k2_zfmisc_1('#skF_1','#skF_2')))
    | ~ v1_funct_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_204,c_172])).

tff(c_223,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_54,c_50,c_46,c_42,c_212])).

tff(c_224,plain,(
    k1_partfun1('#skF_1','#skF_2','#skF_2','#skF_1','#skF_3','#skF_4') = k6_partfun1('#skF_1') ),
    inference(splitRight,[status(thm)],[c_152])).

tff(c_451,plain,(
    ! [B_129,E_126,C_127,A_125,D_128] :
      ( k1_xboole_0 = C_127
      | v2_funct_1(D_128)
      | ~ v2_funct_1(k1_partfun1(A_125,B_129,B_129,C_127,D_128,E_126))
      | ~ m1_subset_1(E_126,k1_zfmisc_1(k2_zfmisc_1(B_129,C_127)))
      | ~ v1_funct_2(E_126,B_129,C_127)
      | ~ v1_funct_1(E_126)
      | ~ m1_subset_1(D_128,k1_zfmisc_1(k2_zfmisc_1(A_125,B_129)))
      | ~ v1_funct_2(D_128,A_125,B_129)
      | ~ v1_funct_1(D_128) ) ),
    inference(cnfTransformation,[status(thm)],[f_107])).

tff(c_453,plain,
    ( k1_xboole_0 = '#skF_1'
    | v2_funct_1('#skF_3')
    | ~ v2_funct_1(k6_partfun1('#skF_1'))
    | ~ m1_subset_1('#skF_4',k1_zfmisc_1(k2_zfmisc_1('#skF_2','#skF_1')))
    | ~ v1_funct_2('#skF_4','#skF_2','#skF_1')
    | ~ v1_funct_1('#skF_4')
    | ~ m1_subset_1('#skF_3',k1_zfmisc_1(k2_zfmisc_1('#skF_1','#skF_2')))
    | ~ v1_funct_2('#skF_3','#skF_1','#skF_2')
    | ~ v1_funct_1('#skF_3') ),
    inference(superposition,[status(thm),theory(equality)],[c_224,c_451])).

tff(c_458,plain,
    ( k1_xboole_0 = '#skF_1'
    | v2_funct_1('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_54,c_52,c_50,c_46,c_44,c_42,c_55,c_453])).

tff(c_459,plain,(
    k1_xboole_0 = '#skF_1' ),
    inference(negUnitSimplification,[status(thm)],[c_38,c_458])).

tff(c_2,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnfTransformation,[status(thm)],[f_26])).

tff(c_465,plain,(
    v1_xboole_0('#skF_1') ),
    inference(demodulation,[status(thm),theory(equality)],[c_459,c_2])).

tff(c_468,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_119,c_465])).

tff(c_469,plain,(
    ~ v1_relat_1('#skF_3') ),
    inference(splitRight,[status(thm)],[c_113])).

tff(c_470,plain,(
    v1_xboole_0('#skF_3') ),
    inference(splitRight,[status(thm)],[c_113])).

tff(c_8,plain,(
    ! [A_6] :
      ( v1_relat_1(A_6)
      | ~ v1_xboole_0(A_6) ) ),
    inference(cnfTransformation,[status(thm)],[f_41])).

tff(c_476,plain,(
    v1_relat_1('#skF_3') ),
    inference(resolution,[status(thm)],[c_470,c_8])).

tff(c_482,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_469,c_476])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n023.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 18:56:05 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.74/1.39  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.99/1.39  
% 2.99/1.39  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.99/1.40  %$ r2_relset_1 > v1_funct_2 > v1_partfun1 > m1_subset_1 > v2_funct_1 > v1_xboole_0 > v1_relat_1 > v1_funct_1 > k1_partfun1 > k2_zfmisc_1 > #nlpp > k6_relat_1 > k6_partfun1 > k1_zfmisc_1 > k1_xboole_0 > #skF_2 > #skF_3 > #skF_1 > #skF_4
% 2.99/1.40  
% 2.99/1.40  %Foreground sorts:
% 2.99/1.40  
% 2.99/1.40  
% 2.99/1.40  %Background operators:
% 2.99/1.40  
% 2.99/1.40  
% 2.99/1.40  %Foreground operators:
% 2.99/1.40  tff(v1_funct_1, type, v1_funct_1: $i > $o).
% 2.99/1.40  tff(v2_funct_1, type, v2_funct_1: $i > $o).
% 2.99/1.40  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.99/1.40  tff(r2_relset_1, type, r2_relset_1: ($i * $i * $i * $i) > $o).
% 2.99/1.40  tff(k1_xboole_0, type, k1_xboole_0: $i).
% 2.99/1.40  tff(k1_partfun1, type, k1_partfun1: ($i * $i * $i * $i * $i * $i) > $i).
% 2.99/1.40  tff(v1_funct_2, type, v1_funct_2: ($i * $i * $i) > $o).
% 2.99/1.40  tff('#skF_2', type, '#skF_2': $i).
% 2.99/1.40  tff(v1_partfun1, type, v1_partfun1: ($i * $i) > $o).
% 2.99/1.40  tff('#skF_3', type, '#skF_3': $i).
% 2.99/1.40  tff('#skF_1', type, '#skF_1': $i).
% 2.99/1.40  tff(k1_zfmisc_1, type, k1_zfmisc_1: $i > $i).
% 2.99/1.40  tff(k6_partfun1, type, k6_partfun1: $i > $i).
% 2.99/1.40  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.99/1.40  tff(v1_relat_1, type, v1_relat_1: $i > $o).
% 2.99/1.40  tff(k2_zfmisc_1, type, k2_zfmisc_1: ($i * $i) > $i).
% 2.99/1.40  tff('#skF_4', type, '#skF_4': $i).
% 2.99/1.40  tff(k6_relat_1, type, k6_relat_1: $i > $i).
% 2.99/1.40  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.99/1.40  tff(v1_xboole_0, type, v1_xboole_0: $i > $o).
% 2.99/1.40  tff(m1_subset_1, type, m1_subset_1: ($i * $i) > $o).
% 2.99/1.40  
% 2.99/1.41  tff(f_30, axiom, (![A, B]: (v1_xboole_0(A) => v1_xboole_0(k2_zfmisc_1(A, B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc4_zfmisc_1)).
% 2.99/1.41  tff(f_130, negated_conjecture, ~(![A, B, C]: (((v1_funct_1(C) & v1_funct_2(C, A, B)) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B)))) => ~((~(B = k1_xboole_0) & (?[D]: (((v1_funct_1(D) & v1_funct_2(D, B, A)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(B, A)))) & r2_relset_1(A, A, k1_partfun1(A, B, B, A, C, D), k6_partfun1(A))))) & ~v2_funct_1(C)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t37_funct_2)).
% 2.99/1.41  tff(f_57, axiom, (![A]: (((v1_xboole_0(A) & v1_relat_1(A)) & v1_funct_1(A)) => ((v1_relat_1(A) & v1_funct_1(A)) & v2_funct_1(A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_funct_1)).
% 2.99/1.41  tff(f_37, axiom, (![A]: (v1_xboole_0(A) => (![B]: (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_subset_1)).
% 2.99/1.41  tff(f_85, axiom, (![A]: (k6_partfun1(A) = k6_relat_1(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_partfun1)).
% 2.99/1.41  tff(f_59, axiom, (![A]: v2_funct_1(k6_relat_1(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t52_funct_1)).
% 2.99/1.41  tff(f_79, axiom, (![A, B, C, D, E, F]: ((((v1_funct_1(E) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(A, B)))) & v1_funct_1(F)) & m1_subset_1(F, k1_zfmisc_1(k2_zfmisc_1(C, D)))) => (v1_funct_1(k1_partfun1(A, B, C, D, E, F)) & m1_subset_1(k1_partfun1(A, B, C, D, E, F), k1_zfmisc_1(k2_zfmisc_1(A, D)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k1_partfun1)).
% 2.99/1.41  tff(f_83, axiom, (![A]: (v1_partfun1(k6_partfun1(A), A) & m1_subset_1(k6_partfun1(A), k1_zfmisc_1(k2_zfmisc_1(A, A))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k6_partfun1)).
% 2.99/1.41  tff(f_67, axiom, (![A, B, C, D]: ((m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(A, B))) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) => (r2_relset_1(A, B, C, D) <=> (C = D)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_r2_relset_1)).
% 2.99/1.41  tff(f_107, axiom, (![A, B, C, D]: (((v1_funct_1(D) & v1_funct_2(D, A, B)) & m1_subset_1(D, k1_zfmisc_1(k2_zfmisc_1(A, B)))) => (![E]: (((v1_funct_1(E) & v1_funct_2(E, B, C)) & m1_subset_1(E, k1_zfmisc_1(k2_zfmisc_1(B, C)))) => (v2_funct_1(k1_partfun1(A, B, B, C, D, E)) => (((C = k1_xboole_0) & ~(B = k1_xboole_0)) | v2_funct_1(D))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t26_funct_2)).
% 2.99/1.41  tff(f_26, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 2.99/1.41  tff(f_41, axiom, (![A]: (v1_xboole_0(A) => v1_relat_1(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relat_1)).
% 2.99/1.41  tff(c_4, plain, (![A_1, B_2]: (v1_xboole_0(k2_zfmisc_1(A_1, B_2)) | ~v1_xboole_0(A_1))), inference(cnfTransformation, [status(thm)], [f_30])).
% 2.99/1.41  tff(c_54, plain, (v1_funct_1('#skF_3')), inference(cnfTransformation, [status(thm)], [f_130])).
% 2.99/1.41  tff(c_107, plain, (![A_43]: (v2_funct_1(A_43) | ~v1_funct_1(A_43) | ~v1_relat_1(A_43) | ~v1_xboole_0(A_43))), inference(cnfTransformation, [status(thm)], [f_57])).
% 2.99/1.41  tff(c_38, plain, (~v2_funct_1('#skF_3')), inference(cnfTransformation, [status(thm)], [f_130])).
% 2.99/1.41  tff(c_110, plain, (~v1_funct_1('#skF_3') | ~v1_relat_1('#skF_3') | ~v1_xboole_0('#skF_3')), inference(resolution, [status(thm)], [c_107, c_38])).
% 2.99/1.41  tff(c_113, plain, (~v1_relat_1('#skF_3') | ~v1_xboole_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_54, c_110])).
% 2.99/1.41  tff(c_114, plain, (~v1_xboole_0('#skF_3')), inference(splitLeft, [status(thm)], [c_113])).
% 2.99/1.41  tff(c_50, plain, (m1_subset_1('#skF_3', k1_zfmisc_1(k2_zfmisc_1('#skF_1', '#skF_2')))), inference(cnfTransformation, [status(thm)], [f_130])).
% 2.99/1.41  tff(c_89, plain, (![B_41, A_42]: (v1_xboole_0(B_41) | ~m1_subset_1(B_41, k1_zfmisc_1(A_42)) | ~v1_xboole_0(A_42))), inference(cnfTransformation, [status(thm)], [f_37])).
% 2.99/1.41  tff(c_101, plain, (v1_xboole_0('#skF_3') | ~v1_xboole_0(k2_zfmisc_1('#skF_1', '#skF_2'))), inference(resolution, [status(thm)], [c_50, c_89])).
% 2.99/1.41  tff(c_115, plain, (~v1_xboole_0(k2_zfmisc_1('#skF_1', '#skF_2'))), inference(negUnitSimplification, [status(thm)], [c_114, c_101])).
% 2.99/1.41  tff(c_119, plain, (~v1_xboole_0('#skF_1')), inference(resolution, [status(thm)], [c_4, c_115])).
% 2.99/1.41  tff(c_52, plain, (v1_funct_2('#skF_3', '#skF_1', '#skF_2')), inference(cnfTransformation, [status(thm)], [f_130])).
% 2.99/1.41  tff(c_46, plain, (v1_funct_1('#skF_4')), inference(cnfTransformation, [status(thm)], [f_130])).
% 2.99/1.41  tff(c_44, plain, (v1_funct_2('#skF_4', '#skF_2', '#skF_1')), inference(cnfTransformation, [status(thm)], [f_130])).
% 2.99/1.41  tff(c_42, plain, (m1_subset_1('#skF_4', k1_zfmisc_1(k2_zfmisc_1('#skF_2', '#skF_1')))), inference(cnfTransformation, [status(thm)], [f_130])).
% 2.99/1.41  tff(c_32, plain, (![A_21]: (k6_relat_1(A_21)=k6_partfun1(A_21))), inference(cnfTransformation, [status(thm)], [f_85])).
% 2.99/1.41  tff(c_18, plain, (![A_9]: (v2_funct_1(k6_relat_1(A_9)))), inference(cnfTransformation, [status(thm)], [f_59])).
% 2.99/1.41  tff(c_55, plain, (![A_9]: (v2_funct_1(k6_partfun1(A_9)))), inference(demodulation, [status(thm), theory('equality')], [c_32, c_18])).
% 2.99/1.41  tff(c_204, plain, (![D_67, A_70, E_65, C_68, F_66, B_69]: (m1_subset_1(k1_partfun1(A_70, B_69, C_68, D_67, E_65, F_66), k1_zfmisc_1(k2_zfmisc_1(A_70, D_67))) | ~m1_subset_1(F_66, k1_zfmisc_1(k2_zfmisc_1(C_68, D_67))) | ~v1_funct_1(F_66) | ~m1_subset_1(E_65, k1_zfmisc_1(k2_zfmisc_1(A_70, B_69))) | ~v1_funct_1(E_65))), inference(cnfTransformation, [status(thm)], [f_79])).
% 2.99/1.41  tff(c_30, plain, (![A_20]: (m1_subset_1(k6_partfun1(A_20), k1_zfmisc_1(k2_zfmisc_1(A_20, A_20))))), inference(cnfTransformation, [status(thm)], [f_83])).
% 2.99/1.41  tff(c_40, plain, (r2_relset_1('#skF_1', '#skF_1', k1_partfun1('#skF_1', '#skF_2', '#skF_2', '#skF_1', '#skF_3', '#skF_4'), k6_partfun1('#skF_1'))), inference(cnfTransformation, [status(thm)], [f_130])).
% 2.99/1.41  tff(c_147, plain, (![D_51, C_52, A_53, B_54]: (D_51=C_52 | ~r2_relset_1(A_53, B_54, C_52, D_51) | ~m1_subset_1(D_51, k1_zfmisc_1(k2_zfmisc_1(A_53, B_54))) | ~m1_subset_1(C_52, k1_zfmisc_1(k2_zfmisc_1(A_53, B_54))))), inference(cnfTransformation, [status(thm)], [f_67])).
% 2.99/1.41  tff(c_149, plain, (k1_partfun1('#skF_1', '#skF_2', '#skF_2', '#skF_1', '#skF_3', '#skF_4')=k6_partfun1('#skF_1') | ~m1_subset_1(k6_partfun1('#skF_1'), k1_zfmisc_1(k2_zfmisc_1('#skF_1', '#skF_1'))) | ~m1_subset_1(k1_partfun1('#skF_1', '#skF_2', '#skF_2', '#skF_1', '#skF_3', '#skF_4'), k1_zfmisc_1(k2_zfmisc_1('#skF_1', '#skF_1')))), inference(resolution, [status(thm)], [c_40, c_147])).
% 2.99/1.41  tff(c_152, plain, (k1_partfun1('#skF_1', '#skF_2', '#skF_2', '#skF_1', '#skF_3', '#skF_4')=k6_partfun1('#skF_1') | ~m1_subset_1(k1_partfun1('#skF_1', '#skF_2', '#skF_2', '#skF_1', '#skF_3', '#skF_4'), k1_zfmisc_1(k2_zfmisc_1('#skF_1', '#skF_1')))), inference(demodulation, [status(thm), theory('equality')], [c_30, c_149])).
% 2.99/1.41  tff(c_172, plain, (~m1_subset_1(k1_partfun1('#skF_1', '#skF_2', '#skF_2', '#skF_1', '#skF_3', '#skF_4'), k1_zfmisc_1(k2_zfmisc_1('#skF_1', '#skF_1')))), inference(splitLeft, [status(thm)], [c_152])).
% 2.99/1.41  tff(c_212, plain, (~m1_subset_1('#skF_4', k1_zfmisc_1(k2_zfmisc_1('#skF_2', '#skF_1'))) | ~v1_funct_1('#skF_4') | ~m1_subset_1('#skF_3', k1_zfmisc_1(k2_zfmisc_1('#skF_1', '#skF_2'))) | ~v1_funct_1('#skF_3')), inference(resolution, [status(thm)], [c_204, c_172])).
% 2.99/1.41  tff(c_223, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_54, c_50, c_46, c_42, c_212])).
% 2.99/1.41  tff(c_224, plain, (k1_partfun1('#skF_1', '#skF_2', '#skF_2', '#skF_1', '#skF_3', '#skF_4')=k6_partfun1('#skF_1')), inference(splitRight, [status(thm)], [c_152])).
% 2.99/1.41  tff(c_451, plain, (![B_129, E_126, C_127, A_125, D_128]: (k1_xboole_0=C_127 | v2_funct_1(D_128) | ~v2_funct_1(k1_partfun1(A_125, B_129, B_129, C_127, D_128, E_126)) | ~m1_subset_1(E_126, k1_zfmisc_1(k2_zfmisc_1(B_129, C_127))) | ~v1_funct_2(E_126, B_129, C_127) | ~v1_funct_1(E_126) | ~m1_subset_1(D_128, k1_zfmisc_1(k2_zfmisc_1(A_125, B_129))) | ~v1_funct_2(D_128, A_125, B_129) | ~v1_funct_1(D_128))), inference(cnfTransformation, [status(thm)], [f_107])).
% 2.99/1.41  tff(c_453, plain, (k1_xboole_0='#skF_1' | v2_funct_1('#skF_3') | ~v2_funct_1(k6_partfun1('#skF_1')) | ~m1_subset_1('#skF_4', k1_zfmisc_1(k2_zfmisc_1('#skF_2', '#skF_1'))) | ~v1_funct_2('#skF_4', '#skF_2', '#skF_1') | ~v1_funct_1('#skF_4') | ~m1_subset_1('#skF_3', k1_zfmisc_1(k2_zfmisc_1('#skF_1', '#skF_2'))) | ~v1_funct_2('#skF_3', '#skF_1', '#skF_2') | ~v1_funct_1('#skF_3')), inference(superposition, [status(thm), theory('equality')], [c_224, c_451])).
% 2.99/1.41  tff(c_458, plain, (k1_xboole_0='#skF_1' | v2_funct_1('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_54, c_52, c_50, c_46, c_44, c_42, c_55, c_453])).
% 2.99/1.41  tff(c_459, plain, (k1_xboole_0='#skF_1'), inference(negUnitSimplification, [status(thm)], [c_38, c_458])).
% 2.99/1.41  tff(c_2, plain, (v1_xboole_0(k1_xboole_0)), inference(cnfTransformation, [status(thm)], [f_26])).
% 2.99/1.41  tff(c_465, plain, (v1_xboole_0('#skF_1')), inference(demodulation, [status(thm), theory('equality')], [c_459, c_2])).
% 2.99/1.41  tff(c_468, plain, $false, inference(negUnitSimplification, [status(thm)], [c_119, c_465])).
% 2.99/1.41  tff(c_469, plain, (~v1_relat_1('#skF_3')), inference(splitRight, [status(thm)], [c_113])).
% 2.99/1.41  tff(c_470, plain, (v1_xboole_0('#skF_3')), inference(splitRight, [status(thm)], [c_113])).
% 2.99/1.41  tff(c_8, plain, (![A_6]: (v1_relat_1(A_6) | ~v1_xboole_0(A_6))), inference(cnfTransformation, [status(thm)], [f_41])).
% 2.99/1.41  tff(c_476, plain, (v1_relat_1('#skF_3')), inference(resolution, [status(thm)], [c_470, c_8])).
% 2.99/1.41  tff(c_482, plain, $false, inference(negUnitSimplification, [status(thm)], [c_469, c_476])).
% 2.99/1.41  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.99/1.41  
% 2.99/1.41  Inference rules
% 2.99/1.41  ----------------------
% 2.99/1.41  #Ref     : 0
% 2.99/1.41  #Sup     : 84
% 2.99/1.41  #Fact    : 0
% 2.99/1.41  #Define  : 0
% 2.99/1.41  #Split   : 4
% 2.99/1.41  #Chain   : 0
% 2.99/1.41  #Close   : 0
% 2.99/1.41  
% 2.99/1.41  Ordering : KBO
% 2.99/1.41  
% 2.99/1.41  Simplification rules
% 2.99/1.41  ----------------------
% 2.99/1.41  #Subsume      : 8
% 2.99/1.41  #Demod        : 60
% 2.99/1.41  #Tautology    : 13
% 2.99/1.41  #SimpNegUnit  : 4
% 2.99/1.41  #BackRed      : 7
% 2.99/1.41  
% 2.99/1.41  #Partial instantiations: 0
% 2.99/1.41  #Strategies tried      : 1
% 2.99/1.41  
% 2.99/1.41  Timing (in seconds)
% 2.99/1.41  ----------------------
% 2.99/1.41  Preprocessing        : 0.33
% 2.99/1.41  Parsing              : 0.17
% 2.99/1.41  CNF conversion       : 0.02
% 2.99/1.41  Main loop            : 0.32
% 2.99/1.41  Inferencing          : 0.12
% 2.99/1.41  Reduction            : 0.10
% 2.99/1.41  Demodulation         : 0.07
% 2.99/1.41  BG Simplification    : 0.02
% 2.99/1.42  Subsumption          : 0.07
% 2.99/1.42  Abstraction          : 0.01
% 2.99/1.42  MUC search           : 0.00
% 2.99/1.42  Cooper               : 0.00
% 2.99/1.42  Total                : 0.68
% 2.99/1.42  Index Insertion      : 0.00
% 2.99/1.42  Index Deletion       : 0.00
% 2.99/1.42  Index Matching       : 0.00
% 2.99/1.42  BG Taut test         : 0.00
%------------------------------------------------------------------------------
