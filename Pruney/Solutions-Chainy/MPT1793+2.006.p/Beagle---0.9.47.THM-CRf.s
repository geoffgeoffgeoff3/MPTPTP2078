%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:27:54 EST 2020

% Result     : Theorem 2.67s
% Output     : CNFRefutation 2.92s
% Verified   : 
% Statistics : Number of formulae       :  116 ( 395 expanded)
%              Number of leaves         :   41 ( 166 expanded)
%              Depth                    :   14
%              Number of atoms          :  314 (1751 expanded)
%              Number of equality atoms :    1 (   3 expanded)
%              Maximal formula depth    :   21 (   5 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r1_tmap_1 > v1_funct_2 > v4_pre_topc > r2_hidden > r1_xboole_0 > m1_subset_1 > m1_pre_topc > v2_struct_0 > v2_pre_topc > v1_xboole_0 > v1_pre_topc > v1_funct_1 > l1_pre_topc > k2_tmap_1 > k7_tmap_1 > k6_tmap_1 > k2_zfmisc_1 > #nlpp > u1_struct_0 > k1_zfmisc_1 > #skF_2 > #skF_5 > #skF_6 > #skF_3 > #skF_4 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff(v2_struct_0,type,(
    v2_struct_0: $i > $o )).

tff(k7_tmap_1,type,(
    k7_tmap_1: ( $i * $i ) > $i )).

tff(v1_funct_1,type,(
    v1_funct_1: $i > $o )).

tff('#skF_2',type,(
    '#skF_2': $i > $i )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff(r1_tmap_1,type,(
    r1_tmap_1: ( $i * $i * $i * $i ) > $o )).

tff(l1_pre_topc,type,(
    l1_pre_topc: $i > $o )).

tff('#skF_5',type,(
    '#skF_5': $i )).

tff(v1_funct_2,type,(
    v1_funct_2: ( $i * $i * $i ) > $o )).

tff('#skF_6',type,(
    '#skF_6': $i )).

tff(r1_xboole_0,type,(
    r1_xboole_0: ( $i * $i ) > $o )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff(v1_pre_topc,type,(
    v1_pre_topc: $i > $o )).

tff(k1_zfmisc_1,type,(
    k1_zfmisc_1: $i > $i )).

tff(v4_pre_topc,type,(
    v4_pre_topc: ( $i * $i ) > $o )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(k2_zfmisc_1,type,(
    k2_zfmisc_1: ( $i * $i ) > $i )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff(k6_tmap_1,type,(
    k6_tmap_1: ( $i * $i ) > $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(m1_pre_topc,type,(
    m1_pre_topc: ( $i * $i ) > $o )).

tff(v2_pre_topc,type,(
    v2_pre_topc: $i > $o )).

tff(k2_tmap_1,type,(
    k2_tmap_1: ( $i * $i * $i * $i ) > $i )).

tff(u1_struct_0,type,(
    u1_struct_0: $i > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i ) > $i )).

tff(v1_xboole_0,type,(
    v1_xboole_0: $i > $o )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_231,negated_conjecture,(
    ~ ! [A] :
        ( ( ~ v2_struct_0(A)
          & v2_pre_topc(A)
          & l1_pre_topc(A) )
       => ! [B] :
            ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
           => ! [C] :
                ( ( ~ v2_struct_0(C)
                  & m1_pre_topc(C,A) )
               => ( r1_xboole_0(u1_struct_0(C),B)
                 => ! [D] :
                      ( m1_subset_1(D,u1_struct_0(C))
                     => r1_tmap_1(C,k6_tmap_1(A,B),k2_tmap_1(A,k6_tmap_1(A,B),k7_tmap_1(A,B),C),D) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t109_tmap_1)).

tff(f_65,axiom,(
    ! [A] :
      ( ( v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_pre_topc(B,A)
         => v2_pre_topc(B) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_pre_topc)).

tff(f_72,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_pre_topc(B,A)
         => l1_pre_topc(B) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_pre_topc)).

tff(f_103,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & m1_pre_topc(B,A) )
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(B))
             => m1_subset_1(C,u1_struct_0(A)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_pre_topc)).

tff(f_56,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).

tff(f_43,axiom,(
    ! [A,B] :
      ( ~ ( ~ r1_xboole_0(A,B)
          & ! [C] :
              ~ ( r2_hidden(C,A)
                & r2_hidden(C,B) ) )
      & ~ ( ? [C] :
              ( r2_hidden(C,A)
              & r2_hidden(C,B) )
          & r1_xboole_0(A,B) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_0)).

tff(f_167,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
         => ! [C] :
              ( m1_subset_1(C,u1_struct_0(A))
             => ( ~ r2_hidden(C,B)
               => r1_tmap_1(A,k6_tmap_1(A,B),k7_tmap_1(A,B),C) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t108_tmap_1)).

tff(f_133,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v1_funct_1(k7_tmap_1(A,B))
        & v1_funct_2(k7_tmap_1(A,B),u1_struct_0(A),u1_struct_0(k6_tmap_1(A,B)))
        & m1_subset_1(k7_tmap_1(A,B),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A),u1_struct_0(k6_tmap_1(A,B))))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_tmap_1)).

tff(f_149,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( ~ v2_struct_0(k6_tmap_1(A,B))
        & v1_pre_topc(k6_tmap_1(A,B))
        & v2_pre_topc(k6_tmap_1(A,B)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc4_tmap_1)).

tff(f_118,axiom,(
    ! [A,B] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A)
        & m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A))) )
     => ( v1_pre_topc(k6_tmap_1(A,B))
        & v2_pre_topc(k6_tmap_1(A,B))
        & l1_pre_topc(k6_tmap_1(A,B)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_tmap_1)).

tff(f_207,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ! [B] :
          ( ( ~ v2_struct_0(B)
            & v2_pre_topc(B)
            & l1_pre_topc(B) )
         => ! [C] :
              ( ( v1_funct_1(C)
                & v1_funct_2(C,u1_struct_0(B),u1_struct_0(A))
                & m1_subset_1(C,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B),u1_struct_0(A)))) )
             => ! [D] :
                  ( ( ~ v2_struct_0(D)
                    & m1_pre_topc(D,B) )
                 => ! [E] :
                      ( m1_subset_1(E,u1_struct_0(B))
                     => ! [F] :
                          ( m1_subset_1(F,u1_struct_0(D))
                         => ( ( E = F
                              & r1_tmap_1(B,A,C,E) )
                           => r1_tmap_1(D,A,k2_tmap_1(B,A,C,D),F) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_tmap_1)).

tff(f_87,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v2_pre_topc(A)
        & l1_pre_topc(A) )
     => ? [B] :
          ( m1_subset_1(B,k1_zfmisc_1(u1_struct_0(A)))
          & ~ v1_xboole_0(B)
          & v4_pre_topc(B,A) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',rc7_pre_topc)).

tff(f_50,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(A))
         => v1_xboole_0(B) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_subset_1)).

tff(c_54,plain,(
    ~ v2_struct_0('#skF_5') ),
    inference(cnfTransformation,[status(thm)],[f_231])).

tff(c_60,plain,(
    v2_pre_topc('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_231])).

tff(c_58,plain,(
    l1_pre_topc('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_231])).

tff(c_52,plain,(
    m1_pre_topc('#skF_5','#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_231])).

tff(c_79,plain,(
    ! [B_123,A_124] :
      ( v2_pre_topc(B_123)
      | ~ m1_pre_topc(B_123,A_124)
      | ~ l1_pre_topc(A_124)
      | ~ v2_pre_topc(A_124) ) ),
    inference(cnfTransformation,[status(thm)],[f_65])).

tff(c_82,plain,
    ( v2_pre_topc('#skF_5')
    | ~ l1_pre_topc('#skF_3')
    | ~ v2_pre_topc('#skF_3') ),
    inference(resolution,[status(thm)],[c_52,c_79])).

tff(c_85,plain,(
    v2_pre_topc('#skF_5') ),
    inference(demodulation,[status(thm),theory(equality)],[c_60,c_58,c_82])).

tff(c_63,plain,(
    ! [B_113,A_114] :
      ( l1_pre_topc(B_113)
      | ~ m1_pre_topc(B_113,A_114)
      | ~ l1_pre_topc(A_114) ) ),
    inference(cnfTransformation,[status(thm)],[f_72])).

tff(c_66,plain,
    ( l1_pre_topc('#skF_5')
    | ~ l1_pre_topc('#skF_3') ),
    inference(resolution,[status(thm)],[c_52,c_63])).

tff(c_69,plain,(
    l1_pre_topc('#skF_5') ),
    inference(demodulation,[status(thm),theory(equality)],[c_58,c_66])).

tff(c_62,plain,(
    ~ v2_struct_0('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_231])).

tff(c_48,plain,(
    m1_subset_1('#skF_6',u1_struct_0('#skF_5')) ),
    inference(cnfTransformation,[status(thm)],[f_231])).

tff(c_216,plain,(
    ! [C_151,A_152,B_153] :
      ( m1_subset_1(C_151,u1_struct_0(A_152))
      | ~ m1_subset_1(C_151,u1_struct_0(B_153))
      | ~ m1_pre_topc(B_153,A_152)
      | v2_struct_0(B_153)
      | ~ l1_pre_topc(A_152)
      | v2_struct_0(A_152) ) ),
    inference(cnfTransformation,[status(thm)],[f_103])).

tff(c_218,plain,(
    ! [A_152] :
      ( m1_subset_1('#skF_6',u1_struct_0(A_152))
      | ~ m1_pre_topc('#skF_5',A_152)
      | v2_struct_0('#skF_5')
      | ~ l1_pre_topc(A_152)
      | v2_struct_0(A_152) ) ),
    inference(resolution,[status(thm)],[c_48,c_216])).

tff(c_221,plain,(
    ! [A_152] :
      ( m1_subset_1('#skF_6',u1_struct_0(A_152))
      | ~ m1_pre_topc('#skF_5',A_152)
      | ~ l1_pre_topc(A_152)
      | v2_struct_0(A_152) ) ),
    inference(negUnitSimplification,[status(thm)],[c_54,c_218])).

tff(c_10,plain,(
    ! [A_9,B_10] :
      ( r2_hidden(A_9,B_10)
      | v1_xboole_0(B_10)
      | ~ m1_subset_1(A_9,B_10) ) ),
    inference(cnfTransformation,[status(thm)],[f_56])).

tff(c_50,plain,(
    r1_xboole_0(u1_struct_0('#skF_5'),'#skF_4') ),
    inference(cnfTransformation,[status(thm)],[f_231])).

tff(c_87,plain,(
    ! [A_126,B_127,C_128] :
      ( ~ r1_xboole_0(A_126,B_127)
      | ~ r2_hidden(C_128,B_127)
      | ~ r2_hidden(C_128,A_126) ) ),
    inference(cnfTransformation,[status(thm)],[f_43])).

tff(c_91,plain,(
    ! [C_129] :
      ( ~ r2_hidden(C_129,'#skF_4')
      | ~ r2_hidden(C_129,u1_struct_0('#skF_5')) ) ),
    inference(resolution,[status(thm)],[c_50,c_87])).

tff(c_104,plain,(
    ! [A_9] :
      ( ~ r2_hidden(A_9,'#skF_4')
      | v1_xboole_0(u1_struct_0('#skF_5'))
      | ~ m1_subset_1(A_9,u1_struct_0('#skF_5')) ) ),
    inference(resolution,[status(thm)],[c_10,c_91])).

tff(c_127,plain,(
    ! [A_133] :
      ( ~ r2_hidden(A_133,'#skF_4')
      | ~ m1_subset_1(A_133,u1_struct_0('#skF_5')) ) ),
    inference(splitLeft,[status(thm)],[c_104])).

tff(c_131,plain,(
    ~ r2_hidden('#skF_6','#skF_4') ),
    inference(resolution,[status(thm)],[c_48,c_127])).

tff(c_56,plain,(
    m1_subset_1('#skF_4',k1_zfmisc_1(u1_struct_0('#skF_3'))) ),
    inference(cnfTransformation,[status(thm)],[f_231])).

tff(c_42,plain,(
    ! [A_32,B_36,C_38] :
      ( r1_tmap_1(A_32,k6_tmap_1(A_32,B_36),k7_tmap_1(A_32,B_36),C_38)
      | r2_hidden(C_38,B_36)
      | ~ m1_subset_1(C_38,u1_struct_0(A_32))
      | ~ m1_subset_1(B_36,k1_zfmisc_1(u1_struct_0(A_32)))
      | ~ l1_pre_topc(A_32)
      | ~ v2_pre_topc(A_32)
      | v2_struct_0(A_32) ) ),
    inference(cnfTransformation,[status(thm)],[f_167])).

tff(c_32,plain,(
    ! [A_28,B_29] :
      ( v1_funct_2(k7_tmap_1(A_28,B_29),u1_struct_0(A_28),u1_struct_0(k6_tmap_1(A_28,B_29)))
      | ~ m1_subset_1(B_29,k1_zfmisc_1(u1_struct_0(A_28)))
      | ~ l1_pre_topc(A_28)
      | ~ v2_pre_topc(A_28)
      | v2_struct_0(A_28) ) ),
    inference(cnfTransformation,[status(thm)],[f_133])).

tff(c_203,plain,(
    ! [A_148,B_149] :
      ( ~ v2_struct_0(k6_tmap_1(A_148,B_149))
      | ~ m1_subset_1(B_149,k1_zfmisc_1(u1_struct_0(A_148)))
      | ~ l1_pre_topc(A_148)
      | ~ v2_pre_topc(A_148)
      | v2_struct_0(A_148) ) ),
    inference(cnfTransformation,[status(thm)],[f_149])).

tff(c_209,plain,
    ( ~ v2_struct_0(k6_tmap_1('#skF_3','#skF_4'))
    | ~ l1_pre_topc('#skF_3')
    | ~ v2_pre_topc('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_56,c_203])).

tff(c_213,plain,
    ( ~ v2_struct_0(k6_tmap_1('#skF_3','#skF_4'))
    | v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_60,c_58,c_209])).

tff(c_214,plain,(
    ~ v2_struct_0(k6_tmap_1('#skF_3','#skF_4')) ),
    inference(negUnitSimplification,[status(thm)],[c_62,c_213])).

tff(c_177,plain,(
    ! [A_142,B_143] :
      ( v2_pre_topc(k6_tmap_1(A_142,B_143))
      | ~ m1_subset_1(B_143,k1_zfmisc_1(u1_struct_0(A_142)))
      | ~ l1_pre_topc(A_142)
      | ~ v2_pre_topc(A_142)
      | v2_struct_0(A_142) ) ),
    inference(cnfTransformation,[status(thm)],[f_149])).

tff(c_183,plain,
    ( v2_pre_topc(k6_tmap_1('#skF_3','#skF_4'))
    | ~ l1_pre_topc('#skF_3')
    | ~ v2_pre_topc('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_56,c_177])).

tff(c_187,plain,
    ( v2_pre_topc(k6_tmap_1('#skF_3','#skF_4'))
    | v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_60,c_58,c_183])).

tff(c_188,plain,(
    v2_pre_topc(k6_tmap_1('#skF_3','#skF_4')) ),
    inference(negUnitSimplification,[status(thm)],[c_62,c_187])).

tff(c_190,plain,(
    ! [A_145,B_146] :
      ( l1_pre_topc(k6_tmap_1(A_145,B_146))
      | ~ m1_subset_1(B_146,k1_zfmisc_1(u1_struct_0(A_145)))
      | ~ l1_pre_topc(A_145)
      | ~ v2_pre_topc(A_145)
      | v2_struct_0(A_145) ) ),
    inference(cnfTransformation,[status(thm)],[f_118])).

tff(c_196,plain,
    ( l1_pre_topc(k6_tmap_1('#skF_3','#skF_4'))
    | ~ l1_pre_topc('#skF_3')
    | ~ v2_pre_topc('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_56,c_190])).

tff(c_200,plain,
    ( l1_pre_topc(k6_tmap_1('#skF_3','#skF_4'))
    | v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_60,c_58,c_196])).

tff(c_201,plain,(
    l1_pre_topc(k6_tmap_1('#skF_3','#skF_4')) ),
    inference(negUnitSimplification,[status(thm)],[c_62,c_200])).

tff(c_150,plain,(
    ! [A_136,B_137] :
      ( v1_funct_1(k7_tmap_1(A_136,B_137))
      | ~ m1_subset_1(B_137,k1_zfmisc_1(u1_struct_0(A_136)))
      | ~ l1_pre_topc(A_136)
      | ~ v2_pre_topc(A_136)
      | v2_struct_0(A_136) ) ),
    inference(cnfTransformation,[status(thm)],[f_133])).

tff(c_156,plain,
    ( v1_funct_1(k7_tmap_1('#skF_3','#skF_4'))
    | ~ l1_pre_topc('#skF_3')
    | ~ v2_pre_topc('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_56,c_150])).

tff(c_160,plain,
    ( v1_funct_1(k7_tmap_1('#skF_3','#skF_4'))
    | v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_60,c_58,c_156])).

tff(c_161,plain,(
    v1_funct_1(k7_tmap_1('#skF_3','#skF_4')) ),
    inference(negUnitSimplification,[status(thm)],[c_62,c_160])).

tff(c_30,plain,(
    ! [A_28,B_29] :
      ( m1_subset_1(k7_tmap_1(A_28,B_29),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A_28),u1_struct_0(k6_tmap_1(A_28,B_29)))))
      | ~ m1_subset_1(B_29,k1_zfmisc_1(u1_struct_0(A_28)))
      | ~ l1_pre_topc(A_28)
      | ~ v2_pre_topc(A_28)
      | v2_struct_0(A_28) ) ),
    inference(cnfTransformation,[status(thm)],[f_133])).

tff(c_250,plain,(
    ! [C_170,A_166,F_168,D_167,B_169] :
      ( r1_tmap_1(D_167,A_166,k2_tmap_1(B_169,A_166,C_170,D_167),F_168)
      | ~ r1_tmap_1(B_169,A_166,C_170,F_168)
      | ~ m1_subset_1(F_168,u1_struct_0(D_167))
      | ~ m1_subset_1(F_168,u1_struct_0(B_169))
      | ~ m1_pre_topc(D_167,B_169)
      | v2_struct_0(D_167)
      | ~ m1_subset_1(C_170,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B_169),u1_struct_0(A_166))))
      | ~ v1_funct_2(C_170,u1_struct_0(B_169),u1_struct_0(A_166))
      | ~ v1_funct_1(C_170)
      | ~ l1_pre_topc(B_169)
      | ~ v2_pre_topc(B_169)
      | v2_struct_0(B_169)
      | ~ l1_pre_topc(A_166)
      | ~ v2_pre_topc(A_166)
      | v2_struct_0(A_166) ) ),
    inference(cnfTransformation,[status(thm)],[f_207])).

tff(c_254,plain,(
    ! [D_171,A_172,B_173,F_174] :
      ( r1_tmap_1(D_171,k6_tmap_1(A_172,B_173),k2_tmap_1(A_172,k6_tmap_1(A_172,B_173),k7_tmap_1(A_172,B_173),D_171),F_174)
      | ~ r1_tmap_1(A_172,k6_tmap_1(A_172,B_173),k7_tmap_1(A_172,B_173),F_174)
      | ~ m1_subset_1(F_174,u1_struct_0(D_171))
      | ~ m1_subset_1(F_174,u1_struct_0(A_172))
      | ~ m1_pre_topc(D_171,A_172)
      | v2_struct_0(D_171)
      | ~ v1_funct_2(k7_tmap_1(A_172,B_173),u1_struct_0(A_172),u1_struct_0(k6_tmap_1(A_172,B_173)))
      | ~ v1_funct_1(k7_tmap_1(A_172,B_173))
      | ~ l1_pre_topc(k6_tmap_1(A_172,B_173))
      | ~ v2_pre_topc(k6_tmap_1(A_172,B_173))
      | v2_struct_0(k6_tmap_1(A_172,B_173))
      | ~ m1_subset_1(B_173,k1_zfmisc_1(u1_struct_0(A_172)))
      | ~ l1_pre_topc(A_172)
      | ~ v2_pre_topc(A_172)
      | v2_struct_0(A_172) ) ),
    inference(resolution,[status(thm)],[c_30,c_250])).

tff(c_46,plain,(
    ~ r1_tmap_1('#skF_5',k6_tmap_1('#skF_3','#skF_4'),k2_tmap_1('#skF_3',k6_tmap_1('#skF_3','#skF_4'),k7_tmap_1('#skF_3','#skF_4'),'#skF_5'),'#skF_6') ),
    inference(cnfTransformation,[status(thm)],[f_231])).

tff(c_257,plain,
    ( ~ r1_tmap_1('#skF_3',k6_tmap_1('#skF_3','#skF_4'),k7_tmap_1('#skF_3','#skF_4'),'#skF_6')
    | ~ m1_subset_1('#skF_6',u1_struct_0('#skF_5'))
    | ~ m1_subset_1('#skF_6',u1_struct_0('#skF_3'))
    | ~ m1_pre_topc('#skF_5','#skF_3')
    | v2_struct_0('#skF_5')
    | ~ v1_funct_2(k7_tmap_1('#skF_3','#skF_4'),u1_struct_0('#skF_3'),u1_struct_0(k6_tmap_1('#skF_3','#skF_4')))
    | ~ v1_funct_1(k7_tmap_1('#skF_3','#skF_4'))
    | ~ l1_pre_topc(k6_tmap_1('#skF_3','#skF_4'))
    | ~ v2_pre_topc(k6_tmap_1('#skF_3','#skF_4'))
    | v2_struct_0(k6_tmap_1('#skF_3','#skF_4'))
    | ~ m1_subset_1('#skF_4',k1_zfmisc_1(u1_struct_0('#skF_3')))
    | ~ l1_pre_topc('#skF_3')
    | ~ v2_pre_topc('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_254,c_46])).

tff(c_260,plain,
    ( ~ r1_tmap_1('#skF_3',k6_tmap_1('#skF_3','#skF_4'),k7_tmap_1('#skF_3','#skF_4'),'#skF_6')
    | ~ m1_subset_1('#skF_6',u1_struct_0('#skF_3'))
    | v2_struct_0('#skF_5')
    | ~ v1_funct_2(k7_tmap_1('#skF_3','#skF_4'),u1_struct_0('#skF_3'),u1_struct_0(k6_tmap_1('#skF_3','#skF_4')))
    | v2_struct_0(k6_tmap_1('#skF_3','#skF_4'))
    | v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_60,c_58,c_56,c_188,c_201,c_161,c_52,c_48,c_257])).

tff(c_261,plain,
    ( ~ r1_tmap_1('#skF_3',k6_tmap_1('#skF_3','#skF_4'),k7_tmap_1('#skF_3','#skF_4'),'#skF_6')
    | ~ m1_subset_1('#skF_6',u1_struct_0('#skF_3'))
    | ~ v1_funct_2(k7_tmap_1('#skF_3','#skF_4'),u1_struct_0('#skF_3'),u1_struct_0(k6_tmap_1('#skF_3','#skF_4'))) ),
    inference(negUnitSimplification,[status(thm)],[c_62,c_214,c_54,c_260])).

tff(c_262,plain,(
    ~ v1_funct_2(k7_tmap_1('#skF_3','#skF_4'),u1_struct_0('#skF_3'),u1_struct_0(k6_tmap_1('#skF_3','#skF_4'))) ),
    inference(splitLeft,[status(thm)],[c_261])).

tff(c_265,plain,
    ( ~ m1_subset_1('#skF_4',k1_zfmisc_1(u1_struct_0('#skF_3')))
    | ~ l1_pre_topc('#skF_3')
    | ~ v2_pre_topc('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_32,c_262])).

tff(c_268,plain,(
    v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_60,c_58,c_56,c_265])).

tff(c_270,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_62,c_268])).

tff(c_271,plain,
    ( ~ m1_subset_1('#skF_6',u1_struct_0('#skF_3'))
    | ~ r1_tmap_1('#skF_3',k6_tmap_1('#skF_3','#skF_4'),k7_tmap_1('#skF_3','#skF_4'),'#skF_6') ),
    inference(splitRight,[status(thm)],[c_261])).

tff(c_273,plain,(
    ~ r1_tmap_1('#skF_3',k6_tmap_1('#skF_3','#skF_4'),k7_tmap_1('#skF_3','#skF_4'),'#skF_6') ),
    inference(splitLeft,[status(thm)],[c_271])).

tff(c_276,plain,
    ( r2_hidden('#skF_6','#skF_4')
    | ~ m1_subset_1('#skF_6',u1_struct_0('#skF_3'))
    | ~ m1_subset_1('#skF_4',k1_zfmisc_1(u1_struct_0('#skF_3')))
    | ~ l1_pre_topc('#skF_3')
    | ~ v2_pre_topc('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_42,c_273])).

tff(c_279,plain,
    ( r2_hidden('#skF_6','#skF_4')
    | ~ m1_subset_1('#skF_6',u1_struct_0('#skF_3'))
    | v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_60,c_58,c_56,c_276])).

tff(c_280,plain,(
    ~ m1_subset_1('#skF_6',u1_struct_0('#skF_3')) ),
    inference(negUnitSimplification,[status(thm)],[c_62,c_131,c_279])).

tff(c_283,plain,
    ( ~ m1_pre_topc('#skF_5','#skF_3')
    | ~ l1_pre_topc('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_221,c_280])).

tff(c_286,plain,(
    v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_58,c_52,c_283])).

tff(c_288,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_62,c_286])).

tff(c_289,plain,(
    ~ m1_subset_1('#skF_6',u1_struct_0('#skF_3')) ),
    inference(splitRight,[status(thm)],[c_271])).

tff(c_293,plain,
    ( ~ m1_pre_topc('#skF_5','#skF_3')
    | ~ l1_pre_topc('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_221,c_289])).

tff(c_296,plain,(
    v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_58,c_52,c_293])).

tff(c_298,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_62,c_296])).

tff(c_299,plain,(
    v1_xboole_0(u1_struct_0('#skF_5')) ),
    inference(splitRight,[status(thm)],[c_104])).

tff(c_121,plain,(
    ! [A_132] :
      ( m1_subset_1('#skF_2'(A_132),k1_zfmisc_1(u1_struct_0(A_132)))
      | ~ l1_pre_topc(A_132)
      | ~ v2_pre_topc(A_132)
      | v2_struct_0(A_132) ) ),
    inference(cnfTransformation,[status(thm)],[f_87])).

tff(c_8,plain,(
    ! [B_8,A_6] :
      ( v1_xboole_0(B_8)
      | ~ m1_subset_1(B_8,k1_zfmisc_1(A_6))
      | ~ v1_xboole_0(A_6) ) ),
    inference(cnfTransformation,[status(thm)],[f_50])).

tff(c_311,plain,(
    ! [A_176] :
      ( v1_xboole_0('#skF_2'(A_176))
      | ~ v1_xboole_0(u1_struct_0(A_176))
      | ~ l1_pre_topc(A_176)
      | ~ v2_pre_topc(A_176)
      | v2_struct_0(A_176) ) ),
    inference(resolution,[status(thm)],[c_121,c_8])).

tff(c_314,plain,
    ( v1_xboole_0('#skF_2'('#skF_5'))
    | ~ l1_pre_topc('#skF_5')
    | ~ v2_pre_topc('#skF_5')
    | v2_struct_0('#skF_5') ),
    inference(resolution,[status(thm)],[c_299,c_311])).

tff(c_317,plain,
    ( v1_xboole_0('#skF_2'('#skF_5'))
    | v2_struct_0('#skF_5') ),
    inference(demodulation,[status(thm),theory(equality)],[c_85,c_69,c_314])).

tff(c_318,plain,(
    v1_xboole_0('#skF_2'('#skF_5')) ),
    inference(negUnitSimplification,[status(thm)],[c_54,c_317])).

tff(c_18,plain,(
    ! [A_17] :
      ( ~ v1_xboole_0('#skF_2'(A_17))
      | ~ l1_pre_topc(A_17)
      | ~ v2_pre_topc(A_17)
      | v2_struct_0(A_17) ) ),
    inference(cnfTransformation,[status(thm)],[f_87])).

tff(c_321,plain,
    ( ~ l1_pre_topc('#skF_5')
    | ~ v2_pre_topc('#skF_5')
    | v2_struct_0('#skF_5') ),
    inference(resolution,[status(thm)],[c_318,c_18])).

tff(c_324,plain,(
    v2_struct_0('#skF_5') ),
    inference(demodulation,[status(thm),theory(equality)],[c_85,c_69,c_321])).

tff(c_326,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_54,c_324])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % DateTime   : Tue Dec  1 12:00:22 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.67/1.33  % SZS status Theorem for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.67/1.34  
% 2.67/1.34  % SZS output start CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.67/1.34  %$ r1_tmap_1 > v1_funct_2 > v4_pre_topc > r2_hidden > r1_xboole_0 > m1_subset_1 > m1_pre_topc > v2_struct_0 > v2_pre_topc > v1_xboole_0 > v1_pre_topc > v1_funct_1 > l1_pre_topc > k2_tmap_1 > k7_tmap_1 > k6_tmap_1 > k2_zfmisc_1 > #nlpp > u1_struct_0 > k1_zfmisc_1 > #skF_2 > #skF_5 > #skF_6 > #skF_3 > #skF_4 > #skF_1
% 2.67/1.34  
% 2.67/1.34  %Foreground sorts:
% 2.67/1.34  
% 2.67/1.34  
% 2.67/1.34  %Background operators:
% 2.67/1.34  
% 2.67/1.34  
% 2.67/1.34  %Foreground operators:
% 2.67/1.34  tff(v2_struct_0, type, v2_struct_0: $i > $o).
% 2.67/1.34  tff(k7_tmap_1, type, k7_tmap_1: ($i * $i) > $i).
% 2.67/1.34  tff(v1_funct_1, type, v1_funct_1: $i > $o).
% 2.67/1.34  tff('#skF_2', type, '#skF_2': $i > $i).
% 2.67/1.34  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.67/1.34  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 2.67/1.34  tff(r1_tmap_1, type, r1_tmap_1: ($i * $i * $i * $i) > $o).
% 2.67/1.34  tff(l1_pre_topc, type, l1_pre_topc: $i > $o).
% 2.67/1.34  tff('#skF_5', type, '#skF_5': $i).
% 2.67/1.34  tff(v1_funct_2, type, v1_funct_2: ($i * $i * $i) > $o).
% 2.67/1.34  tff('#skF_6', type, '#skF_6': $i).
% 2.67/1.34  tff(r1_xboole_0, type, r1_xboole_0: ($i * $i) > $o).
% 2.67/1.34  tff('#skF_3', type, '#skF_3': $i).
% 2.67/1.34  tff(v1_pre_topc, type, v1_pre_topc: $i > $o).
% 2.67/1.34  tff(k1_zfmisc_1, type, k1_zfmisc_1: $i > $i).
% 2.67/1.34  tff(v4_pre_topc, type, v4_pre_topc: ($i * $i) > $o).
% 2.67/1.34  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.67/1.34  tff(k2_zfmisc_1, type, k2_zfmisc_1: ($i * $i) > $i).
% 2.67/1.34  tff('#skF_4', type, '#skF_4': $i).
% 2.67/1.34  tff(k6_tmap_1, type, k6_tmap_1: ($i * $i) > $i).
% 2.67/1.34  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.67/1.34  tff(m1_pre_topc, type, m1_pre_topc: ($i * $i) > $o).
% 2.67/1.34  tff(v2_pre_topc, type, v2_pre_topc: $i > $o).
% 2.67/1.34  tff(k2_tmap_1, type, k2_tmap_1: ($i * $i * $i * $i) > $i).
% 2.67/1.34  tff(u1_struct_0, type, u1_struct_0: $i > $i).
% 2.67/1.34  tff('#skF_1', type, '#skF_1': ($i * $i) > $i).
% 2.67/1.34  tff(v1_xboole_0, type, v1_xboole_0: $i > $o).
% 2.67/1.34  tff(m1_subset_1, type, m1_subset_1: ($i * $i) > $o).
% 2.67/1.34  
% 2.92/1.37  tff(f_231, negated_conjecture, ~(![A]: (((~v2_struct_0(A) & v2_pre_topc(A)) & l1_pre_topc(A)) => (![B]: (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => (![C]: ((~v2_struct_0(C) & m1_pre_topc(C, A)) => (r1_xboole_0(u1_struct_0(C), B) => (![D]: (m1_subset_1(D, u1_struct_0(C)) => r1_tmap_1(C, k6_tmap_1(A, B), k2_tmap_1(A, k6_tmap_1(A, B), k7_tmap_1(A, B), C), D)))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t109_tmap_1)).
% 2.92/1.37  tff(f_65, axiom, (![A]: ((v2_pre_topc(A) & l1_pre_topc(A)) => (![B]: (m1_pre_topc(B, A) => v2_pre_topc(B))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_pre_topc)).
% 2.92/1.37  tff(f_72, axiom, (![A]: (l1_pre_topc(A) => (![B]: (m1_pre_topc(B, A) => l1_pre_topc(B))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_m1_pre_topc)).
% 2.92/1.37  tff(f_103, axiom, (![A]: ((~v2_struct_0(A) & l1_pre_topc(A)) => (![B]: ((~v2_struct_0(B) & m1_pre_topc(B, A)) => (![C]: (m1_subset_1(C, u1_struct_0(B)) => m1_subset_1(C, u1_struct_0(A)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t55_pre_topc)).
% 2.92/1.37  tff(f_56, axiom, (![A, B]: (m1_subset_1(A, B) => (v1_xboole_0(B) | r2_hidden(A, B)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_subset)).
% 2.92/1.37  tff(f_43, axiom, (![A, B]: (~(~r1_xboole_0(A, B) & (![C]: ~(r2_hidden(C, A) & r2_hidden(C, B)))) & ~((?[C]: (r2_hidden(C, A) & r2_hidden(C, B))) & r1_xboole_0(A, B)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_xboole_0)).
% 2.92/1.37  tff(f_167, axiom, (![A]: (((~v2_struct_0(A) & v2_pre_topc(A)) & l1_pre_topc(A)) => (![B]: (m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) => (![C]: (m1_subset_1(C, u1_struct_0(A)) => (~r2_hidden(C, B) => r1_tmap_1(A, k6_tmap_1(A, B), k7_tmap_1(A, B), C)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t108_tmap_1)).
% 2.92/1.37  tff(f_133, axiom, (![A, B]: ((((~v2_struct_0(A) & v2_pre_topc(A)) & l1_pre_topc(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) => ((v1_funct_1(k7_tmap_1(A, B)) & v1_funct_2(k7_tmap_1(A, B), u1_struct_0(A), u1_struct_0(k6_tmap_1(A, B)))) & m1_subset_1(k7_tmap_1(A, B), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A), u1_struct_0(k6_tmap_1(A, B)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k7_tmap_1)).
% 2.92/1.37  tff(f_149, axiom, (![A, B]: ((((~v2_struct_0(A) & v2_pre_topc(A)) & l1_pre_topc(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) => ((~v2_struct_0(k6_tmap_1(A, B)) & v1_pre_topc(k6_tmap_1(A, B))) & v2_pre_topc(k6_tmap_1(A, B))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc4_tmap_1)).
% 2.92/1.37  tff(f_118, axiom, (![A, B]: ((((~v2_struct_0(A) & v2_pre_topc(A)) & l1_pre_topc(A)) & m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A)))) => ((v1_pre_topc(k6_tmap_1(A, B)) & v2_pre_topc(k6_tmap_1(A, B))) & l1_pre_topc(k6_tmap_1(A, B))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k6_tmap_1)).
% 2.92/1.37  tff(f_207, axiom, (![A]: (((~v2_struct_0(A) & v2_pre_topc(A)) & l1_pre_topc(A)) => (![B]: (((~v2_struct_0(B) & v2_pre_topc(B)) & l1_pre_topc(B)) => (![C]: (((v1_funct_1(C) & v1_funct_2(C, u1_struct_0(B), u1_struct_0(A))) & m1_subset_1(C, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B), u1_struct_0(A))))) => (![D]: ((~v2_struct_0(D) & m1_pre_topc(D, B)) => (![E]: (m1_subset_1(E, u1_struct_0(B)) => (![F]: (m1_subset_1(F, u1_struct_0(D)) => (((E = F) & r1_tmap_1(B, A, C, E)) => r1_tmap_1(D, A, k2_tmap_1(B, A, C, D), F)))))))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t64_tmap_1)).
% 2.92/1.37  tff(f_87, axiom, (![A]: (((~v2_struct_0(A) & v2_pre_topc(A)) & l1_pre_topc(A)) => (?[B]: ((m1_subset_1(B, k1_zfmisc_1(u1_struct_0(A))) & ~v1_xboole_0(B)) & v4_pre_topc(B, A))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', rc7_pre_topc)).
% 2.92/1.37  tff(f_50, axiom, (![A]: (v1_xboole_0(A) => (![B]: (m1_subset_1(B, k1_zfmisc_1(A)) => v1_xboole_0(B))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_subset_1)).
% 2.92/1.37  tff(c_54, plain, (~v2_struct_0('#skF_5')), inference(cnfTransformation, [status(thm)], [f_231])).
% 2.92/1.37  tff(c_60, plain, (v2_pre_topc('#skF_3')), inference(cnfTransformation, [status(thm)], [f_231])).
% 2.92/1.37  tff(c_58, plain, (l1_pre_topc('#skF_3')), inference(cnfTransformation, [status(thm)], [f_231])).
% 2.92/1.37  tff(c_52, plain, (m1_pre_topc('#skF_5', '#skF_3')), inference(cnfTransformation, [status(thm)], [f_231])).
% 2.92/1.37  tff(c_79, plain, (![B_123, A_124]: (v2_pre_topc(B_123) | ~m1_pre_topc(B_123, A_124) | ~l1_pre_topc(A_124) | ~v2_pre_topc(A_124))), inference(cnfTransformation, [status(thm)], [f_65])).
% 2.92/1.37  tff(c_82, plain, (v2_pre_topc('#skF_5') | ~l1_pre_topc('#skF_3') | ~v2_pre_topc('#skF_3')), inference(resolution, [status(thm)], [c_52, c_79])).
% 2.92/1.37  tff(c_85, plain, (v2_pre_topc('#skF_5')), inference(demodulation, [status(thm), theory('equality')], [c_60, c_58, c_82])).
% 2.92/1.37  tff(c_63, plain, (![B_113, A_114]: (l1_pre_topc(B_113) | ~m1_pre_topc(B_113, A_114) | ~l1_pre_topc(A_114))), inference(cnfTransformation, [status(thm)], [f_72])).
% 2.92/1.37  tff(c_66, plain, (l1_pre_topc('#skF_5') | ~l1_pre_topc('#skF_3')), inference(resolution, [status(thm)], [c_52, c_63])).
% 2.92/1.37  tff(c_69, plain, (l1_pre_topc('#skF_5')), inference(demodulation, [status(thm), theory('equality')], [c_58, c_66])).
% 2.92/1.37  tff(c_62, plain, (~v2_struct_0('#skF_3')), inference(cnfTransformation, [status(thm)], [f_231])).
% 2.92/1.37  tff(c_48, plain, (m1_subset_1('#skF_6', u1_struct_0('#skF_5'))), inference(cnfTransformation, [status(thm)], [f_231])).
% 2.92/1.37  tff(c_216, plain, (![C_151, A_152, B_153]: (m1_subset_1(C_151, u1_struct_0(A_152)) | ~m1_subset_1(C_151, u1_struct_0(B_153)) | ~m1_pre_topc(B_153, A_152) | v2_struct_0(B_153) | ~l1_pre_topc(A_152) | v2_struct_0(A_152))), inference(cnfTransformation, [status(thm)], [f_103])).
% 2.92/1.37  tff(c_218, plain, (![A_152]: (m1_subset_1('#skF_6', u1_struct_0(A_152)) | ~m1_pre_topc('#skF_5', A_152) | v2_struct_0('#skF_5') | ~l1_pre_topc(A_152) | v2_struct_0(A_152))), inference(resolution, [status(thm)], [c_48, c_216])).
% 2.92/1.37  tff(c_221, plain, (![A_152]: (m1_subset_1('#skF_6', u1_struct_0(A_152)) | ~m1_pre_topc('#skF_5', A_152) | ~l1_pre_topc(A_152) | v2_struct_0(A_152))), inference(negUnitSimplification, [status(thm)], [c_54, c_218])).
% 2.92/1.37  tff(c_10, plain, (![A_9, B_10]: (r2_hidden(A_9, B_10) | v1_xboole_0(B_10) | ~m1_subset_1(A_9, B_10))), inference(cnfTransformation, [status(thm)], [f_56])).
% 2.92/1.37  tff(c_50, plain, (r1_xboole_0(u1_struct_0('#skF_5'), '#skF_4')), inference(cnfTransformation, [status(thm)], [f_231])).
% 2.92/1.37  tff(c_87, plain, (![A_126, B_127, C_128]: (~r1_xboole_0(A_126, B_127) | ~r2_hidden(C_128, B_127) | ~r2_hidden(C_128, A_126))), inference(cnfTransformation, [status(thm)], [f_43])).
% 2.92/1.37  tff(c_91, plain, (![C_129]: (~r2_hidden(C_129, '#skF_4') | ~r2_hidden(C_129, u1_struct_0('#skF_5')))), inference(resolution, [status(thm)], [c_50, c_87])).
% 2.92/1.37  tff(c_104, plain, (![A_9]: (~r2_hidden(A_9, '#skF_4') | v1_xboole_0(u1_struct_0('#skF_5')) | ~m1_subset_1(A_9, u1_struct_0('#skF_5')))), inference(resolution, [status(thm)], [c_10, c_91])).
% 2.92/1.37  tff(c_127, plain, (![A_133]: (~r2_hidden(A_133, '#skF_4') | ~m1_subset_1(A_133, u1_struct_0('#skF_5')))), inference(splitLeft, [status(thm)], [c_104])).
% 2.92/1.37  tff(c_131, plain, (~r2_hidden('#skF_6', '#skF_4')), inference(resolution, [status(thm)], [c_48, c_127])).
% 2.92/1.37  tff(c_56, plain, (m1_subset_1('#skF_4', k1_zfmisc_1(u1_struct_0('#skF_3')))), inference(cnfTransformation, [status(thm)], [f_231])).
% 2.92/1.37  tff(c_42, plain, (![A_32, B_36, C_38]: (r1_tmap_1(A_32, k6_tmap_1(A_32, B_36), k7_tmap_1(A_32, B_36), C_38) | r2_hidden(C_38, B_36) | ~m1_subset_1(C_38, u1_struct_0(A_32)) | ~m1_subset_1(B_36, k1_zfmisc_1(u1_struct_0(A_32))) | ~l1_pre_topc(A_32) | ~v2_pre_topc(A_32) | v2_struct_0(A_32))), inference(cnfTransformation, [status(thm)], [f_167])).
% 2.92/1.37  tff(c_32, plain, (![A_28, B_29]: (v1_funct_2(k7_tmap_1(A_28, B_29), u1_struct_0(A_28), u1_struct_0(k6_tmap_1(A_28, B_29))) | ~m1_subset_1(B_29, k1_zfmisc_1(u1_struct_0(A_28))) | ~l1_pre_topc(A_28) | ~v2_pre_topc(A_28) | v2_struct_0(A_28))), inference(cnfTransformation, [status(thm)], [f_133])).
% 2.92/1.37  tff(c_203, plain, (![A_148, B_149]: (~v2_struct_0(k6_tmap_1(A_148, B_149)) | ~m1_subset_1(B_149, k1_zfmisc_1(u1_struct_0(A_148))) | ~l1_pre_topc(A_148) | ~v2_pre_topc(A_148) | v2_struct_0(A_148))), inference(cnfTransformation, [status(thm)], [f_149])).
% 2.92/1.37  tff(c_209, plain, (~v2_struct_0(k6_tmap_1('#skF_3', '#skF_4')) | ~l1_pre_topc('#skF_3') | ~v2_pre_topc('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_56, c_203])).
% 2.92/1.37  tff(c_213, plain, (~v2_struct_0(k6_tmap_1('#skF_3', '#skF_4')) | v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_60, c_58, c_209])).
% 2.92/1.37  tff(c_214, plain, (~v2_struct_0(k6_tmap_1('#skF_3', '#skF_4'))), inference(negUnitSimplification, [status(thm)], [c_62, c_213])).
% 2.92/1.37  tff(c_177, plain, (![A_142, B_143]: (v2_pre_topc(k6_tmap_1(A_142, B_143)) | ~m1_subset_1(B_143, k1_zfmisc_1(u1_struct_0(A_142))) | ~l1_pre_topc(A_142) | ~v2_pre_topc(A_142) | v2_struct_0(A_142))), inference(cnfTransformation, [status(thm)], [f_149])).
% 2.92/1.37  tff(c_183, plain, (v2_pre_topc(k6_tmap_1('#skF_3', '#skF_4')) | ~l1_pre_topc('#skF_3') | ~v2_pre_topc('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_56, c_177])).
% 2.92/1.37  tff(c_187, plain, (v2_pre_topc(k6_tmap_1('#skF_3', '#skF_4')) | v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_60, c_58, c_183])).
% 2.92/1.37  tff(c_188, plain, (v2_pre_topc(k6_tmap_1('#skF_3', '#skF_4'))), inference(negUnitSimplification, [status(thm)], [c_62, c_187])).
% 2.92/1.37  tff(c_190, plain, (![A_145, B_146]: (l1_pre_topc(k6_tmap_1(A_145, B_146)) | ~m1_subset_1(B_146, k1_zfmisc_1(u1_struct_0(A_145))) | ~l1_pre_topc(A_145) | ~v2_pre_topc(A_145) | v2_struct_0(A_145))), inference(cnfTransformation, [status(thm)], [f_118])).
% 2.92/1.37  tff(c_196, plain, (l1_pre_topc(k6_tmap_1('#skF_3', '#skF_4')) | ~l1_pre_topc('#skF_3') | ~v2_pre_topc('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_56, c_190])).
% 2.92/1.37  tff(c_200, plain, (l1_pre_topc(k6_tmap_1('#skF_3', '#skF_4')) | v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_60, c_58, c_196])).
% 2.92/1.37  tff(c_201, plain, (l1_pre_topc(k6_tmap_1('#skF_3', '#skF_4'))), inference(negUnitSimplification, [status(thm)], [c_62, c_200])).
% 2.92/1.37  tff(c_150, plain, (![A_136, B_137]: (v1_funct_1(k7_tmap_1(A_136, B_137)) | ~m1_subset_1(B_137, k1_zfmisc_1(u1_struct_0(A_136))) | ~l1_pre_topc(A_136) | ~v2_pre_topc(A_136) | v2_struct_0(A_136))), inference(cnfTransformation, [status(thm)], [f_133])).
% 2.92/1.37  tff(c_156, plain, (v1_funct_1(k7_tmap_1('#skF_3', '#skF_4')) | ~l1_pre_topc('#skF_3') | ~v2_pre_topc('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_56, c_150])).
% 2.92/1.37  tff(c_160, plain, (v1_funct_1(k7_tmap_1('#skF_3', '#skF_4')) | v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_60, c_58, c_156])).
% 2.92/1.37  tff(c_161, plain, (v1_funct_1(k7_tmap_1('#skF_3', '#skF_4'))), inference(negUnitSimplification, [status(thm)], [c_62, c_160])).
% 2.92/1.37  tff(c_30, plain, (![A_28, B_29]: (m1_subset_1(k7_tmap_1(A_28, B_29), k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(A_28), u1_struct_0(k6_tmap_1(A_28, B_29))))) | ~m1_subset_1(B_29, k1_zfmisc_1(u1_struct_0(A_28))) | ~l1_pre_topc(A_28) | ~v2_pre_topc(A_28) | v2_struct_0(A_28))), inference(cnfTransformation, [status(thm)], [f_133])).
% 2.92/1.37  tff(c_250, plain, (![C_170, A_166, F_168, D_167, B_169]: (r1_tmap_1(D_167, A_166, k2_tmap_1(B_169, A_166, C_170, D_167), F_168) | ~r1_tmap_1(B_169, A_166, C_170, F_168) | ~m1_subset_1(F_168, u1_struct_0(D_167)) | ~m1_subset_1(F_168, u1_struct_0(B_169)) | ~m1_pre_topc(D_167, B_169) | v2_struct_0(D_167) | ~m1_subset_1(C_170, k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(B_169), u1_struct_0(A_166)))) | ~v1_funct_2(C_170, u1_struct_0(B_169), u1_struct_0(A_166)) | ~v1_funct_1(C_170) | ~l1_pre_topc(B_169) | ~v2_pre_topc(B_169) | v2_struct_0(B_169) | ~l1_pre_topc(A_166) | ~v2_pre_topc(A_166) | v2_struct_0(A_166))), inference(cnfTransformation, [status(thm)], [f_207])).
% 2.92/1.37  tff(c_254, plain, (![D_171, A_172, B_173, F_174]: (r1_tmap_1(D_171, k6_tmap_1(A_172, B_173), k2_tmap_1(A_172, k6_tmap_1(A_172, B_173), k7_tmap_1(A_172, B_173), D_171), F_174) | ~r1_tmap_1(A_172, k6_tmap_1(A_172, B_173), k7_tmap_1(A_172, B_173), F_174) | ~m1_subset_1(F_174, u1_struct_0(D_171)) | ~m1_subset_1(F_174, u1_struct_0(A_172)) | ~m1_pre_topc(D_171, A_172) | v2_struct_0(D_171) | ~v1_funct_2(k7_tmap_1(A_172, B_173), u1_struct_0(A_172), u1_struct_0(k6_tmap_1(A_172, B_173))) | ~v1_funct_1(k7_tmap_1(A_172, B_173)) | ~l1_pre_topc(k6_tmap_1(A_172, B_173)) | ~v2_pre_topc(k6_tmap_1(A_172, B_173)) | v2_struct_0(k6_tmap_1(A_172, B_173)) | ~m1_subset_1(B_173, k1_zfmisc_1(u1_struct_0(A_172))) | ~l1_pre_topc(A_172) | ~v2_pre_topc(A_172) | v2_struct_0(A_172))), inference(resolution, [status(thm)], [c_30, c_250])).
% 2.92/1.37  tff(c_46, plain, (~r1_tmap_1('#skF_5', k6_tmap_1('#skF_3', '#skF_4'), k2_tmap_1('#skF_3', k6_tmap_1('#skF_3', '#skF_4'), k7_tmap_1('#skF_3', '#skF_4'), '#skF_5'), '#skF_6')), inference(cnfTransformation, [status(thm)], [f_231])).
% 2.92/1.37  tff(c_257, plain, (~r1_tmap_1('#skF_3', k6_tmap_1('#skF_3', '#skF_4'), k7_tmap_1('#skF_3', '#skF_4'), '#skF_6') | ~m1_subset_1('#skF_6', u1_struct_0('#skF_5')) | ~m1_subset_1('#skF_6', u1_struct_0('#skF_3')) | ~m1_pre_topc('#skF_5', '#skF_3') | v2_struct_0('#skF_5') | ~v1_funct_2(k7_tmap_1('#skF_3', '#skF_4'), u1_struct_0('#skF_3'), u1_struct_0(k6_tmap_1('#skF_3', '#skF_4'))) | ~v1_funct_1(k7_tmap_1('#skF_3', '#skF_4')) | ~l1_pre_topc(k6_tmap_1('#skF_3', '#skF_4')) | ~v2_pre_topc(k6_tmap_1('#skF_3', '#skF_4')) | v2_struct_0(k6_tmap_1('#skF_3', '#skF_4')) | ~m1_subset_1('#skF_4', k1_zfmisc_1(u1_struct_0('#skF_3'))) | ~l1_pre_topc('#skF_3') | ~v2_pre_topc('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_254, c_46])).
% 2.92/1.37  tff(c_260, plain, (~r1_tmap_1('#skF_3', k6_tmap_1('#skF_3', '#skF_4'), k7_tmap_1('#skF_3', '#skF_4'), '#skF_6') | ~m1_subset_1('#skF_6', u1_struct_0('#skF_3')) | v2_struct_0('#skF_5') | ~v1_funct_2(k7_tmap_1('#skF_3', '#skF_4'), u1_struct_0('#skF_3'), u1_struct_0(k6_tmap_1('#skF_3', '#skF_4'))) | v2_struct_0(k6_tmap_1('#skF_3', '#skF_4')) | v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_60, c_58, c_56, c_188, c_201, c_161, c_52, c_48, c_257])).
% 2.92/1.37  tff(c_261, plain, (~r1_tmap_1('#skF_3', k6_tmap_1('#skF_3', '#skF_4'), k7_tmap_1('#skF_3', '#skF_4'), '#skF_6') | ~m1_subset_1('#skF_6', u1_struct_0('#skF_3')) | ~v1_funct_2(k7_tmap_1('#skF_3', '#skF_4'), u1_struct_0('#skF_3'), u1_struct_0(k6_tmap_1('#skF_3', '#skF_4')))), inference(negUnitSimplification, [status(thm)], [c_62, c_214, c_54, c_260])).
% 2.92/1.37  tff(c_262, plain, (~v1_funct_2(k7_tmap_1('#skF_3', '#skF_4'), u1_struct_0('#skF_3'), u1_struct_0(k6_tmap_1('#skF_3', '#skF_4')))), inference(splitLeft, [status(thm)], [c_261])).
% 2.92/1.37  tff(c_265, plain, (~m1_subset_1('#skF_4', k1_zfmisc_1(u1_struct_0('#skF_3'))) | ~l1_pre_topc('#skF_3') | ~v2_pre_topc('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_32, c_262])).
% 2.92/1.37  tff(c_268, plain, (v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_60, c_58, c_56, c_265])).
% 2.92/1.37  tff(c_270, plain, $false, inference(negUnitSimplification, [status(thm)], [c_62, c_268])).
% 2.92/1.37  tff(c_271, plain, (~m1_subset_1('#skF_6', u1_struct_0('#skF_3')) | ~r1_tmap_1('#skF_3', k6_tmap_1('#skF_3', '#skF_4'), k7_tmap_1('#skF_3', '#skF_4'), '#skF_6')), inference(splitRight, [status(thm)], [c_261])).
% 2.92/1.37  tff(c_273, plain, (~r1_tmap_1('#skF_3', k6_tmap_1('#skF_3', '#skF_4'), k7_tmap_1('#skF_3', '#skF_4'), '#skF_6')), inference(splitLeft, [status(thm)], [c_271])).
% 2.92/1.37  tff(c_276, plain, (r2_hidden('#skF_6', '#skF_4') | ~m1_subset_1('#skF_6', u1_struct_0('#skF_3')) | ~m1_subset_1('#skF_4', k1_zfmisc_1(u1_struct_0('#skF_3'))) | ~l1_pre_topc('#skF_3') | ~v2_pre_topc('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_42, c_273])).
% 2.92/1.37  tff(c_279, plain, (r2_hidden('#skF_6', '#skF_4') | ~m1_subset_1('#skF_6', u1_struct_0('#skF_3')) | v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_60, c_58, c_56, c_276])).
% 2.92/1.37  tff(c_280, plain, (~m1_subset_1('#skF_6', u1_struct_0('#skF_3'))), inference(negUnitSimplification, [status(thm)], [c_62, c_131, c_279])).
% 2.92/1.37  tff(c_283, plain, (~m1_pre_topc('#skF_5', '#skF_3') | ~l1_pre_topc('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_221, c_280])).
% 2.92/1.37  tff(c_286, plain, (v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_58, c_52, c_283])).
% 2.92/1.37  tff(c_288, plain, $false, inference(negUnitSimplification, [status(thm)], [c_62, c_286])).
% 2.92/1.37  tff(c_289, plain, (~m1_subset_1('#skF_6', u1_struct_0('#skF_3'))), inference(splitRight, [status(thm)], [c_271])).
% 2.92/1.37  tff(c_293, plain, (~m1_pre_topc('#skF_5', '#skF_3') | ~l1_pre_topc('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_221, c_289])).
% 2.92/1.37  tff(c_296, plain, (v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_58, c_52, c_293])).
% 2.92/1.37  tff(c_298, plain, $false, inference(negUnitSimplification, [status(thm)], [c_62, c_296])).
% 2.92/1.37  tff(c_299, plain, (v1_xboole_0(u1_struct_0('#skF_5'))), inference(splitRight, [status(thm)], [c_104])).
% 2.92/1.37  tff(c_121, plain, (![A_132]: (m1_subset_1('#skF_2'(A_132), k1_zfmisc_1(u1_struct_0(A_132))) | ~l1_pre_topc(A_132) | ~v2_pre_topc(A_132) | v2_struct_0(A_132))), inference(cnfTransformation, [status(thm)], [f_87])).
% 2.92/1.37  tff(c_8, plain, (![B_8, A_6]: (v1_xboole_0(B_8) | ~m1_subset_1(B_8, k1_zfmisc_1(A_6)) | ~v1_xboole_0(A_6))), inference(cnfTransformation, [status(thm)], [f_50])).
% 2.92/1.37  tff(c_311, plain, (![A_176]: (v1_xboole_0('#skF_2'(A_176)) | ~v1_xboole_0(u1_struct_0(A_176)) | ~l1_pre_topc(A_176) | ~v2_pre_topc(A_176) | v2_struct_0(A_176))), inference(resolution, [status(thm)], [c_121, c_8])).
% 2.92/1.37  tff(c_314, plain, (v1_xboole_0('#skF_2'('#skF_5')) | ~l1_pre_topc('#skF_5') | ~v2_pre_topc('#skF_5') | v2_struct_0('#skF_5')), inference(resolution, [status(thm)], [c_299, c_311])).
% 2.92/1.37  tff(c_317, plain, (v1_xboole_0('#skF_2'('#skF_5')) | v2_struct_0('#skF_5')), inference(demodulation, [status(thm), theory('equality')], [c_85, c_69, c_314])).
% 2.92/1.37  tff(c_318, plain, (v1_xboole_0('#skF_2'('#skF_5'))), inference(negUnitSimplification, [status(thm)], [c_54, c_317])).
% 2.92/1.37  tff(c_18, plain, (![A_17]: (~v1_xboole_0('#skF_2'(A_17)) | ~l1_pre_topc(A_17) | ~v2_pre_topc(A_17) | v2_struct_0(A_17))), inference(cnfTransformation, [status(thm)], [f_87])).
% 2.92/1.37  tff(c_321, plain, (~l1_pre_topc('#skF_5') | ~v2_pre_topc('#skF_5') | v2_struct_0('#skF_5')), inference(resolution, [status(thm)], [c_318, c_18])).
% 2.92/1.37  tff(c_324, plain, (v2_struct_0('#skF_5')), inference(demodulation, [status(thm), theory('equality')], [c_85, c_69, c_321])).
% 2.92/1.37  tff(c_326, plain, $false, inference(negUnitSimplification, [status(thm)], [c_54, c_324])).
% 2.92/1.37  % SZS output end CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.92/1.37  
% 2.92/1.37  Inference rules
% 2.92/1.37  ----------------------
% 2.92/1.37  #Ref     : 0
% 2.92/1.37  #Sup     : 40
% 2.92/1.37  #Fact    : 0
% 2.92/1.37  #Define  : 0
% 2.92/1.37  #Split   : 7
% 2.92/1.37  #Chain   : 0
% 2.92/1.37  #Close   : 0
% 2.92/1.37  
% 2.92/1.37  Ordering : KBO
% 2.92/1.37  
% 2.92/1.37  Simplification rules
% 2.92/1.37  ----------------------
% 2.92/1.37  #Subsume      : 4
% 2.92/1.37  #Demod        : 41
% 2.92/1.37  #Tautology    : 3
% 2.92/1.37  #SimpNegUnit  : 15
% 2.92/1.37  #BackRed      : 0
% 2.92/1.37  
% 2.92/1.37  #Partial instantiations: 0
% 2.92/1.37  #Strategies tried      : 1
% 2.92/1.37  
% 2.92/1.37  Timing (in seconds)
% 2.92/1.37  ----------------------
% 2.92/1.37  Preprocessing        : 0.34
% 2.92/1.37  Parsing              : 0.19
% 2.92/1.37  CNF conversion       : 0.03
% 2.92/1.37  Main loop            : 0.27
% 2.92/1.37  Inferencing          : 0.10
% 2.92/1.37  Reduction            : 0.07
% 2.92/1.37  Demodulation         : 0.05
% 2.92/1.37  BG Simplification    : 0.02
% 2.92/1.37  Subsumption          : 0.05
% 2.92/1.37  Abstraction          : 0.01
% 2.92/1.37  MUC search           : 0.00
% 2.92/1.37  Cooper               : 0.00
% 2.92/1.37  Total                : 0.65
% 2.92/1.37  Index Insertion      : 0.00
% 2.92/1.37  Index Deletion       : 0.00
% 2.92/1.37  Index Matching       : 0.00
% 2.92/1.37  BG Taut test         : 0.00
%------------------------------------------------------------------------------
