%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:05:02 EST 2020

% Result     : Theorem 3.89s
% Output     : CNFRefutation 3.89s
% Verified   : 
% Statistics : Number of formulae       :   61 ( 146 expanded)
%              Number of leaves         :   23 (  68 expanded)
%              Depth                    :   18
%              Number of atoms          :  161 ( 710 expanded)
%              Number of equality atoms :   55 ( 285 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > v1_relat_1 > v1_funct_1 > k5_relat_1 > k1_funct_1 > #nlpp > k2_relat_1 > k1_relat_1 > #skF_4 > #skF_7 > #skF_3 > #skF_6 > #skF_9 > #skF_8 > #skF_2 > #skF_1 > #skF_5

%Foreground sorts:

%Background operators:

%Foreground operators:
tff(v1_funct_1,type,(
    v1_funct_1: $i > $o )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff(k5_relat_1,type,(
    k5_relat_1: ( $i * $i ) > $i )).

tff('#skF_4',type,(
    '#skF_4': ( $i * $i * $i ) > $i )).

tff('#skF_7',type,(
    '#skF_7': $i )).

tff('#skF_3',type,(
    '#skF_3': ( $i * $i ) > $i )).

tff(k2_relat_1,type,(
    k2_relat_1: $i > $i )).

tff('#skF_6',type,(
    '#skF_6': $i )).

tff('#skF_9',type,(
    '#skF_9': $i )).

tff(k1_funct_1,type,(
    k1_funct_1: ( $i * $i ) > $i )).

tff('#skF_8',type,(
    '#skF_8': $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(v1_relat_1,type,(
    v1_relat_1: $i > $o )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i ) > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i ) > $i )).

tff('#skF_5',type,(
    '#skF_5': ( $i * $i ) > $i )).

tff(k1_relat_1,type,(
    k1_relat_1: $i > $i )).

tff(f_96,negated_conjecture,(
    ~ ! [A,B] :
        ( ( v1_relat_1(B)
          & v1_funct_1(B) )
       => ! [C] :
            ( ( v1_relat_1(C)
              & v1_funct_1(C) )
           => ! [D] :
                ( ( v1_relat_1(D)
                  & v1_funct_1(D) )
               => ( ( A = k2_relat_1(B)
                    & k1_relat_1(C) = A
                    & k1_relat_1(D) = A
                    & k5_relat_1(B,C) = k5_relat_1(B,D) )
                 => C = D ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t156_funct_1)).

tff(f_71,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( ( v1_relat_1(B)
            & v1_funct_1(B) )
         => ( ( k1_relat_1(A) = k1_relat_1(B)
              & ! [C] :
                  ( r2_hidden(C,k1_relat_1(A))
                 => k1_funct_1(A,C) = k1_funct_1(B,C) ) )
           => A = B ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t9_funct_1)).

tff(f_40,axiom,(
    ! [A] :
      ( ( v1_relat_1(A)
        & v1_funct_1(A) )
     => ! [B] :
          ( B = k2_relat_1(A)
        <=> ! [C] :
              ( r2_hidden(C,B)
            <=> ? [D] :
                  ( r2_hidden(D,k1_relat_1(A))
                  & C = k1_funct_1(A,D) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_funct_1)).

tff(f_53,axiom,(
    ! [A,B] :
      ( ( v1_relat_1(B)
        & v1_funct_1(B) )
     => ! [C] :
          ( ( v1_relat_1(C)
            & v1_funct_1(C) )
         => ( r2_hidden(A,k1_relat_1(B))
           => k1_funct_1(k5_relat_1(B,C),A) = k1_funct_1(C,k1_funct_1(B,A)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_funct_1)).

tff(c_26,plain,(
    '#skF_9' != '#skF_8' ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_42,plain,(
    v1_relat_1('#skF_8') ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_40,plain,(
    v1_funct_1('#skF_8') ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_32,plain,(
    k1_relat_1('#skF_8') = '#skF_6' ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_38,plain,(
    v1_relat_1('#skF_9') ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_36,plain,(
    v1_funct_1('#skF_9') ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_30,plain,(
    k1_relat_1('#skF_9') = '#skF_6' ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_157,plain,(
    ! [A_74,B_75] :
      ( r2_hidden('#skF_5'(A_74,B_75),k1_relat_1(A_74))
      | B_75 = A_74
      | k1_relat_1(B_75) != k1_relat_1(A_74)
      | ~ v1_funct_1(B_75)
      | ~ v1_relat_1(B_75)
      | ~ v1_funct_1(A_74)
      | ~ v1_relat_1(A_74) ) ),
    inference(cnfTransformation,[status(thm)],[f_71])).

tff(c_160,plain,(
    ! [B_75] :
      ( r2_hidden('#skF_5'('#skF_9',B_75),'#skF_6')
      | B_75 = '#skF_9'
      | k1_relat_1(B_75) != k1_relat_1('#skF_9')
      | ~ v1_funct_1(B_75)
      | ~ v1_relat_1(B_75)
      | ~ v1_funct_1('#skF_9')
      | ~ v1_relat_1('#skF_9') ) ),
    inference(superposition,[status(thm),theory(equality)],[c_30,c_157])).

tff(c_165,plain,(
    ! [B_75] :
      ( r2_hidden('#skF_5'('#skF_9',B_75),'#skF_6')
      | B_75 = '#skF_9'
      | k1_relat_1(B_75) != '#skF_6'
      | ~ v1_funct_1(B_75)
      | ~ v1_relat_1(B_75) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_38,c_36,c_30,c_160])).

tff(c_46,plain,(
    v1_relat_1('#skF_7') ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_44,plain,(
    v1_funct_1('#skF_7') ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_34,plain,(
    k2_relat_1('#skF_7') = '#skF_6' ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_87,plain,(
    ! [A_61,C_62] :
      ( k1_funct_1(A_61,'#skF_4'(A_61,k2_relat_1(A_61),C_62)) = C_62
      | ~ r2_hidden(C_62,k2_relat_1(A_61))
      | ~ v1_funct_1(A_61)
      | ~ v1_relat_1(A_61) ) ),
    inference(cnfTransformation,[status(thm)],[f_40])).

tff(c_103,plain,(
    ! [C_62] :
      ( k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_62)) = C_62
      | ~ r2_hidden(C_62,k2_relat_1('#skF_7'))
      | ~ v1_funct_1('#skF_7')
      | ~ v1_relat_1('#skF_7') ) ),
    inference(superposition,[status(thm),theory(equality)],[c_34,c_87])).

tff(c_109,plain,(
    ! [C_62] :
      ( k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_62)) = C_62
      | ~ r2_hidden(C_62,'#skF_6') ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_46,c_44,c_34,c_103])).

tff(c_28,plain,(
    k5_relat_1('#skF_7','#skF_9') = k5_relat_1('#skF_7','#skF_8') ),
    inference(cnfTransformation,[status(thm)],[f_96])).

tff(c_70,plain,(
    ! [A_58,C_59] :
      ( r2_hidden('#skF_4'(A_58,k2_relat_1(A_58),C_59),k1_relat_1(A_58))
      | ~ r2_hidden(C_59,k2_relat_1(A_58))
      | ~ v1_funct_1(A_58)
      | ~ v1_relat_1(A_58) ) ),
    inference(cnfTransformation,[status(thm)],[f_40])).

tff(c_79,plain,(
    ! [C_59] :
      ( r2_hidden('#skF_4'('#skF_7','#skF_6',C_59),k1_relat_1('#skF_7'))
      | ~ r2_hidden(C_59,k2_relat_1('#skF_7'))
      | ~ v1_funct_1('#skF_7')
      | ~ v1_relat_1('#skF_7') ) ),
    inference(superposition,[status(thm),theory(equality)],[c_34,c_70])).

tff(c_85,plain,(
    ! [C_59] :
      ( r2_hidden('#skF_4'('#skF_7','#skF_6',C_59),k1_relat_1('#skF_7'))
      | ~ r2_hidden(C_59,'#skF_6') ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_46,c_44,c_34,c_79])).

tff(c_168,plain,(
    ! [B_76,C_77,A_78] :
      ( k1_funct_1(k5_relat_1(B_76,C_77),A_78) = k1_funct_1(C_77,k1_funct_1(B_76,A_78))
      | ~ r2_hidden(A_78,k1_relat_1(B_76))
      | ~ v1_funct_1(C_77)
      | ~ v1_relat_1(C_77)
      | ~ v1_funct_1(B_76)
      | ~ v1_relat_1(B_76) ) ),
    inference(cnfTransformation,[status(thm)],[f_53])).

tff(c_189,plain,(
    ! [C_77,C_59] :
      ( k1_funct_1(k5_relat_1('#skF_7',C_77),'#skF_4'('#skF_7','#skF_6',C_59)) = k1_funct_1(C_77,k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_59)))
      | ~ v1_funct_1(C_77)
      | ~ v1_relat_1(C_77)
      | ~ v1_funct_1('#skF_7')
      | ~ v1_relat_1('#skF_7')
      | ~ r2_hidden(C_59,'#skF_6') ) ),
    inference(resolution,[status(thm)],[c_85,c_168])).

tff(c_321,plain,(
    ! [C_97,C_98] :
      ( k1_funct_1(k5_relat_1('#skF_7',C_97),'#skF_4'('#skF_7','#skF_6',C_98)) = k1_funct_1(C_97,k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_98)))
      | ~ v1_funct_1(C_97)
      | ~ v1_relat_1(C_97)
      | ~ r2_hidden(C_98,'#skF_6') ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_46,c_44,c_189])).

tff(c_335,plain,(
    ! [C_98] :
      ( k1_funct_1(k5_relat_1('#skF_7','#skF_8'),'#skF_4'('#skF_7','#skF_6',C_98)) = k1_funct_1('#skF_9',k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_98)))
      | ~ v1_funct_1('#skF_9')
      | ~ v1_relat_1('#skF_9')
      | ~ r2_hidden(C_98,'#skF_6') ) ),
    inference(superposition,[status(thm),theory(equality)],[c_28,c_321])).

tff(c_340,plain,(
    ! [C_99] :
      ( k1_funct_1(k5_relat_1('#skF_7','#skF_8'),'#skF_4'('#skF_7','#skF_6',C_99)) = k1_funct_1('#skF_9',k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_99)))
      | ~ r2_hidden(C_99,'#skF_6') ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_38,c_36,c_335])).

tff(c_205,plain,(
    ! [C_77,C_59] :
      ( k1_funct_1(k5_relat_1('#skF_7',C_77),'#skF_4'('#skF_7','#skF_6',C_59)) = k1_funct_1(C_77,k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_59)))
      | ~ v1_funct_1(C_77)
      | ~ v1_relat_1(C_77)
      | ~ r2_hidden(C_59,'#skF_6') ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_46,c_44,c_189])).

tff(c_346,plain,(
    ! [C_99] :
      ( k1_funct_1('#skF_9',k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_99))) = k1_funct_1('#skF_8',k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_99)))
      | ~ v1_funct_1('#skF_8')
      | ~ v1_relat_1('#skF_8')
      | ~ r2_hidden(C_99,'#skF_6')
      | ~ r2_hidden(C_99,'#skF_6') ) ),
    inference(superposition,[status(thm),theory(equality)],[c_340,c_205])).

tff(c_365,plain,(
    ! [C_100] :
      ( k1_funct_1('#skF_9',k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_100))) = k1_funct_1('#skF_8',k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_100)))
      | ~ r2_hidden(C_100,'#skF_6') ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_42,c_40,c_346])).

tff(c_386,plain,(
    ! [C_101] :
      ( k1_funct_1('#skF_8',k1_funct_1('#skF_7','#skF_4'('#skF_7','#skF_6',C_101))) = k1_funct_1('#skF_9',C_101)
      | ~ r2_hidden(C_101,'#skF_6')
      | ~ r2_hidden(C_101,'#skF_6') ) ),
    inference(superposition,[status(thm),theory(equality)],[c_109,c_365])).

tff(c_407,plain,(
    ! [C_102] :
      ( k1_funct_1('#skF_9',C_102) = k1_funct_1('#skF_8',C_102)
      | ~ r2_hidden(C_102,'#skF_6')
      | ~ r2_hidden(C_102,'#skF_6')
      | ~ r2_hidden(C_102,'#skF_6') ) ),
    inference(superposition,[status(thm),theory(equality)],[c_109,c_386])).

tff(c_1552,plain,(
    ! [B_163] :
      ( k1_funct_1('#skF_9','#skF_5'('#skF_9',B_163)) = k1_funct_1('#skF_8','#skF_5'('#skF_9',B_163))
      | ~ r2_hidden('#skF_5'('#skF_9',B_163),'#skF_6')
      | B_163 = '#skF_9'
      | k1_relat_1(B_163) != '#skF_6'
      | ~ v1_funct_1(B_163)
      | ~ v1_relat_1(B_163) ) ),
    inference(resolution,[status(thm)],[c_165,c_407])).

tff(c_1557,plain,(
    ! [B_164] :
      ( k1_funct_1('#skF_9','#skF_5'('#skF_9',B_164)) = k1_funct_1('#skF_8','#skF_5'('#skF_9',B_164))
      | B_164 = '#skF_9'
      | k1_relat_1(B_164) != '#skF_6'
      | ~ v1_funct_1(B_164)
      | ~ v1_relat_1(B_164) ) ),
    inference(resolution,[status(thm)],[c_165,c_1552])).

tff(c_22,plain,(
    ! [B_49,A_45] :
      ( k1_funct_1(B_49,'#skF_5'(A_45,B_49)) != k1_funct_1(A_45,'#skF_5'(A_45,B_49))
      | B_49 = A_45
      | k1_relat_1(B_49) != k1_relat_1(A_45)
      | ~ v1_funct_1(B_49)
      | ~ v1_relat_1(B_49)
      | ~ v1_funct_1(A_45)
      | ~ v1_relat_1(A_45) ) ),
    inference(cnfTransformation,[status(thm)],[f_71])).

tff(c_1571,plain,(
    ! [B_164] :
      ( k1_funct_1(B_164,'#skF_5'('#skF_9',B_164)) != k1_funct_1('#skF_8','#skF_5'('#skF_9',B_164))
      | B_164 = '#skF_9'
      | k1_relat_1(B_164) != k1_relat_1('#skF_9')
      | ~ v1_funct_1(B_164)
      | ~ v1_relat_1(B_164)
      | ~ v1_funct_1('#skF_9')
      | ~ v1_relat_1('#skF_9')
      | B_164 = '#skF_9'
      | k1_relat_1(B_164) != '#skF_6'
      | ~ v1_funct_1(B_164)
      | ~ v1_relat_1(B_164) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_1557,c_22])).

tff(c_1584,plain,(
    ! [B_164] :
      ( k1_funct_1(B_164,'#skF_5'('#skF_9',B_164)) != k1_funct_1('#skF_8','#skF_5'('#skF_9',B_164))
      | B_164 = '#skF_9'
      | k1_relat_1(B_164) != '#skF_6'
      | ~ v1_funct_1(B_164)
      | ~ v1_relat_1(B_164) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_38,c_36,c_30,c_1571])).

tff(c_1592,plain,
    ( '#skF_9' = '#skF_8'
    | k1_relat_1('#skF_8') != '#skF_6'
    | ~ v1_funct_1('#skF_8')
    | ~ v1_relat_1('#skF_8') ),
    inference(reflexivity,[status(thm),theory(equality)],[c_1584])).

tff(c_1594,plain,(
    '#skF_9' = '#skF_8' ),
    inference(demodulation,[status(thm),theory(equality)],[c_42,c_40,c_32,c_1592])).

tff(c_1596,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_26,c_1594])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.12/0.34  % Computer   : n018.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 11:18:26 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 3.89/1.65  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.89/1.66  
% 3.89/1.66  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.89/1.66  %$ r2_hidden > v1_relat_1 > v1_funct_1 > k5_relat_1 > k1_funct_1 > #nlpp > k2_relat_1 > k1_relat_1 > #skF_4 > #skF_7 > #skF_3 > #skF_6 > #skF_9 > #skF_8 > #skF_2 > #skF_1 > #skF_5
% 3.89/1.66  
% 3.89/1.66  %Foreground sorts:
% 3.89/1.66  
% 3.89/1.66  
% 3.89/1.66  %Background operators:
% 3.89/1.66  
% 3.89/1.66  
% 3.89/1.66  %Foreground operators:
% 3.89/1.66  tff(v1_funct_1, type, v1_funct_1: $i > $o).
% 3.89/1.66  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 3.89/1.66  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 3.89/1.66  tff(k5_relat_1, type, k5_relat_1: ($i * $i) > $i).
% 3.89/1.66  tff('#skF_4', type, '#skF_4': ($i * $i * $i) > $i).
% 3.89/1.66  tff('#skF_7', type, '#skF_7': $i).
% 3.89/1.66  tff('#skF_3', type, '#skF_3': ($i * $i) > $i).
% 3.89/1.66  tff(k2_relat_1, type, k2_relat_1: $i > $i).
% 3.89/1.66  tff('#skF_6', type, '#skF_6': $i).
% 3.89/1.66  tff('#skF_9', type, '#skF_9': $i).
% 3.89/1.66  tff(k1_funct_1, type, k1_funct_1: ($i * $i) > $i).
% 3.89/1.66  tff('#skF_8', type, '#skF_8': $i).
% 3.89/1.66  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 3.89/1.66  tff(v1_relat_1, type, v1_relat_1: $i > $o).
% 3.89/1.66  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 3.89/1.66  tff('#skF_2', type, '#skF_2': ($i * $i) > $i).
% 3.89/1.66  tff('#skF_1', type, '#skF_1': ($i * $i) > $i).
% 3.89/1.66  tff('#skF_5', type, '#skF_5': ($i * $i) > $i).
% 3.89/1.66  tff(k1_relat_1, type, k1_relat_1: $i > $i).
% 3.89/1.66  
% 3.89/1.67  tff(f_96, negated_conjecture, ~(![A, B]: ((v1_relat_1(B) & v1_funct_1(B)) => (![C]: ((v1_relat_1(C) & v1_funct_1(C)) => (![D]: ((v1_relat_1(D) & v1_funct_1(D)) => (((((A = k2_relat_1(B)) & (k1_relat_1(C) = A)) & (k1_relat_1(D) = A)) & (k5_relat_1(B, C) = k5_relat_1(B, D))) => (C = D)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t156_funct_1)).
% 3.89/1.67  tff(f_71, axiom, (![A]: ((v1_relat_1(A) & v1_funct_1(A)) => (![B]: ((v1_relat_1(B) & v1_funct_1(B)) => (((k1_relat_1(A) = k1_relat_1(B)) & (![C]: (r2_hidden(C, k1_relat_1(A)) => (k1_funct_1(A, C) = k1_funct_1(B, C))))) => (A = B)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t9_funct_1)).
% 3.89/1.67  tff(f_40, axiom, (![A]: ((v1_relat_1(A) & v1_funct_1(A)) => (![B]: ((B = k2_relat_1(A)) <=> (![C]: (r2_hidden(C, B) <=> (?[D]: (r2_hidden(D, k1_relat_1(A)) & (C = k1_funct_1(A, D)))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_funct_1)).
% 3.89/1.67  tff(f_53, axiom, (![A, B]: ((v1_relat_1(B) & v1_funct_1(B)) => (![C]: ((v1_relat_1(C) & v1_funct_1(C)) => (r2_hidden(A, k1_relat_1(B)) => (k1_funct_1(k5_relat_1(B, C), A) = k1_funct_1(C, k1_funct_1(B, A)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t23_funct_1)).
% 3.89/1.67  tff(c_26, plain, ('#skF_9'!='#skF_8'), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_42, plain, (v1_relat_1('#skF_8')), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_40, plain, (v1_funct_1('#skF_8')), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_32, plain, (k1_relat_1('#skF_8')='#skF_6'), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_38, plain, (v1_relat_1('#skF_9')), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_36, plain, (v1_funct_1('#skF_9')), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_30, plain, (k1_relat_1('#skF_9')='#skF_6'), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_157, plain, (![A_74, B_75]: (r2_hidden('#skF_5'(A_74, B_75), k1_relat_1(A_74)) | B_75=A_74 | k1_relat_1(B_75)!=k1_relat_1(A_74) | ~v1_funct_1(B_75) | ~v1_relat_1(B_75) | ~v1_funct_1(A_74) | ~v1_relat_1(A_74))), inference(cnfTransformation, [status(thm)], [f_71])).
% 3.89/1.67  tff(c_160, plain, (![B_75]: (r2_hidden('#skF_5'('#skF_9', B_75), '#skF_6') | B_75='#skF_9' | k1_relat_1(B_75)!=k1_relat_1('#skF_9') | ~v1_funct_1(B_75) | ~v1_relat_1(B_75) | ~v1_funct_1('#skF_9') | ~v1_relat_1('#skF_9'))), inference(superposition, [status(thm), theory('equality')], [c_30, c_157])).
% 3.89/1.67  tff(c_165, plain, (![B_75]: (r2_hidden('#skF_5'('#skF_9', B_75), '#skF_6') | B_75='#skF_9' | k1_relat_1(B_75)!='#skF_6' | ~v1_funct_1(B_75) | ~v1_relat_1(B_75))), inference(demodulation, [status(thm), theory('equality')], [c_38, c_36, c_30, c_160])).
% 3.89/1.67  tff(c_46, plain, (v1_relat_1('#skF_7')), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_44, plain, (v1_funct_1('#skF_7')), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_34, plain, (k2_relat_1('#skF_7')='#skF_6'), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_87, plain, (![A_61, C_62]: (k1_funct_1(A_61, '#skF_4'(A_61, k2_relat_1(A_61), C_62))=C_62 | ~r2_hidden(C_62, k2_relat_1(A_61)) | ~v1_funct_1(A_61) | ~v1_relat_1(A_61))), inference(cnfTransformation, [status(thm)], [f_40])).
% 3.89/1.67  tff(c_103, plain, (![C_62]: (k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_62))=C_62 | ~r2_hidden(C_62, k2_relat_1('#skF_7')) | ~v1_funct_1('#skF_7') | ~v1_relat_1('#skF_7'))), inference(superposition, [status(thm), theory('equality')], [c_34, c_87])).
% 3.89/1.67  tff(c_109, plain, (![C_62]: (k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_62))=C_62 | ~r2_hidden(C_62, '#skF_6'))), inference(demodulation, [status(thm), theory('equality')], [c_46, c_44, c_34, c_103])).
% 3.89/1.67  tff(c_28, plain, (k5_relat_1('#skF_7', '#skF_9')=k5_relat_1('#skF_7', '#skF_8')), inference(cnfTransformation, [status(thm)], [f_96])).
% 3.89/1.67  tff(c_70, plain, (![A_58, C_59]: (r2_hidden('#skF_4'(A_58, k2_relat_1(A_58), C_59), k1_relat_1(A_58)) | ~r2_hidden(C_59, k2_relat_1(A_58)) | ~v1_funct_1(A_58) | ~v1_relat_1(A_58))), inference(cnfTransformation, [status(thm)], [f_40])).
% 3.89/1.67  tff(c_79, plain, (![C_59]: (r2_hidden('#skF_4'('#skF_7', '#skF_6', C_59), k1_relat_1('#skF_7')) | ~r2_hidden(C_59, k2_relat_1('#skF_7')) | ~v1_funct_1('#skF_7') | ~v1_relat_1('#skF_7'))), inference(superposition, [status(thm), theory('equality')], [c_34, c_70])).
% 3.89/1.67  tff(c_85, plain, (![C_59]: (r2_hidden('#skF_4'('#skF_7', '#skF_6', C_59), k1_relat_1('#skF_7')) | ~r2_hidden(C_59, '#skF_6'))), inference(demodulation, [status(thm), theory('equality')], [c_46, c_44, c_34, c_79])).
% 3.89/1.67  tff(c_168, plain, (![B_76, C_77, A_78]: (k1_funct_1(k5_relat_1(B_76, C_77), A_78)=k1_funct_1(C_77, k1_funct_1(B_76, A_78)) | ~r2_hidden(A_78, k1_relat_1(B_76)) | ~v1_funct_1(C_77) | ~v1_relat_1(C_77) | ~v1_funct_1(B_76) | ~v1_relat_1(B_76))), inference(cnfTransformation, [status(thm)], [f_53])).
% 3.89/1.67  tff(c_189, plain, (![C_77, C_59]: (k1_funct_1(k5_relat_1('#skF_7', C_77), '#skF_4'('#skF_7', '#skF_6', C_59))=k1_funct_1(C_77, k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_59))) | ~v1_funct_1(C_77) | ~v1_relat_1(C_77) | ~v1_funct_1('#skF_7') | ~v1_relat_1('#skF_7') | ~r2_hidden(C_59, '#skF_6'))), inference(resolution, [status(thm)], [c_85, c_168])).
% 3.89/1.67  tff(c_321, plain, (![C_97, C_98]: (k1_funct_1(k5_relat_1('#skF_7', C_97), '#skF_4'('#skF_7', '#skF_6', C_98))=k1_funct_1(C_97, k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_98))) | ~v1_funct_1(C_97) | ~v1_relat_1(C_97) | ~r2_hidden(C_98, '#skF_6'))), inference(demodulation, [status(thm), theory('equality')], [c_46, c_44, c_189])).
% 3.89/1.67  tff(c_335, plain, (![C_98]: (k1_funct_1(k5_relat_1('#skF_7', '#skF_8'), '#skF_4'('#skF_7', '#skF_6', C_98))=k1_funct_1('#skF_9', k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_98))) | ~v1_funct_1('#skF_9') | ~v1_relat_1('#skF_9') | ~r2_hidden(C_98, '#skF_6'))), inference(superposition, [status(thm), theory('equality')], [c_28, c_321])).
% 3.89/1.67  tff(c_340, plain, (![C_99]: (k1_funct_1(k5_relat_1('#skF_7', '#skF_8'), '#skF_4'('#skF_7', '#skF_6', C_99))=k1_funct_1('#skF_9', k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_99))) | ~r2_hidden(C_99, '#skF_6'))), inference(demodulation, [status(thm), theory('equality')], [c_38, c_36, c_335])).
% 3.89/1.67  tff(c_205, plain, (![C_77, C_59]: (k1_funct_1(k5_relat_1('#skF_7', C_77), '#skF_4'('#skF_7', '#skF_6', C_59))=k1_funct_1(C_77, k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_59))) | ~v1_funct_1(C_77) | ~v1_relat_1(C_77) | ~r2_hidden(C_59, '#skF_6'))), inference(demodulation, [status(thm), theory('equality')], [c_46, c_44, c_189])).
% 3.89/1.67  tff(c_346, plain, (![C_99]: (k1_funct_1('#skF_9', k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_99)))=k1_funct_1('#skF_8', k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_99))) | ~v1_funct_1('#skF_8') | ~v1_relat_1('#skF_8') | ~r2_hidden(C_99, '#skF_6') | ~r2_hidden(C_99, '#skF_6'))), inference(superposition, [status(thm), theory('equality')], [c_340, c_205])).
% 3.89/1.67  tff(c_365, plain, (![C_100]: (k1_funct_1('#skF_9', k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_100)))=k1_funct_1('#skF_8', k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_100))) | ~r2_hidden(C_100, '#skF_6'))), inference(demodulation, [status(thm), theory('equality')], [c_42, c_40, c_346])).
% 3.89/1.67  tff(c_386, plain, (![C_101]: (k1_funct_1('#skF_8', k1_funct_1('#skF_7', '#skF_4'('#skF_7', '#skF_6', C_101)))=k1_funct_1('#skF_9', C_101) | ~r2_hidden(C_101, '#skF_6') | ~r2_hidden(C_101, '#skF_6'))), inference(superposition, [status(thm), theory('equality')], [c_109, c_365])).
% 3.89/1.67  tff(c_407, plain, (![C_102]: (k1_funct_1('#skF_9', C_102)=k1_funct_1('#skF_8', C_102) | ~r2_hidden(C_102, '#skF_6') | ~r2_hidden(C_102, '#skF_6') | ~r2_hidden(C_102, '#skF_6'))), inference(superposition, [status(thm), theory('equality')], [c_109, c_386])).
% 3.89/1.67  tff(c_1552, plain, (![B_163]: (k1_funct_1('#skF_9', '#skF_5'('#skF_9', B_163))=k1_funct_1('#skF_8', '#skF_5'('#skF_9', B_163)) | ~r2_hidden('#skF_5'('#skF_9', B_163), '#skF_6') | B_163='#skF_9' | k1_relat_1(B_163)!='#skF_6' | ~v1_funct_1(B_163) | ~v1_relat_1(B_163))), inference(resolution, [status(thm)], [c_165, c_407])).
% 3.89/1.67  tff(c_1557, plain, (![B_164]: (k1_funct_1('#skF_9', '#skF_5'('#skF_9', B_164))=k1_funct_1('#skF_8', '#skF_5'('#skF_9', B_164)) | B_164='#skF_9' | k1_relat_1(B_164)!='#skF_6' | ~v1_funct_1(B_164) | ~v1_relat_1(B_164))), inference(resolution, [status(thm)], [c_165, c_1552])).
% 3.89/1.67  tff(c_22, plain, (![B_49, A_45]: (k1_funct_1(B_49, '#skF_5'(A_45, B_49))!=k1_funct_1(A_45, '#skF_5'(A_45, B_49)) | B_49=A_45 | k1_relat_1(B_49)!=k1_relat_1(A_45) | ~v1_funct_1(B_49) | ~v1_relat_1(B_49) | ~v1_funct_1(A_45) | ~v1_relat_1(A_45))), inference(cnfTransformation, [status(thm)], [f_71])).
% 3.89/1.67  tff(c_1571, plain, (![B_164]: (k1_funct_1(B_164, '#skF_5'('#skF_9', B_164))!=k1_funct_1('#skF_8', '#skF_5'('#skF_9', B_164)) | B_164='#skF_9' | k1_relat_1(B_164)!=k1_relat_1('#skF_9') | ~v1_funct_1(B_164) | ~v1_relat_1(B_164) | ~v1_funct_1('#skF_9') | ~v1_relat_1('#skF_9') | B_164='#skF_9' | k1_relat_1(B_164)!='#skF_6' | ~v1_funct_1(B_164) | ~v1_relat_1(B_164))), inference(superposition, [status(thm), theory('equality')], [c_1557, c_22])).
% 3.89/1.67  tff(c_1584, plain, (![B_164]: (k1_funct_1(B_164, '#skF_5'('#skF_9', B_164))!=k1_funct_1('#skF_8', '#skF_5'('#skF_9', B_164)) | B_164='#skF_9' | k1_relat_1(B_164)!='#skF_6' | ~v1_funct_1(B_164) | ~v1_relat_1(B_164))), inference(demodulation, [status(thm), theory('equality')], [c_38, c_36, c_30, c_1571])).
% 3.89/1.67  tff(c_1592, plain, ('#skF_9'='#skF_8' | k1_relat_1('#skF_8')!='#skF_6' | ~v1_funct_1('#skF_8') | ~v1_relat_1('#skF_8')), inference(reflexivity, [status(thm), theory('equality')], [c_1584])).
% 3.89/1.67  tff(c_1594, plain, ('#skF_9'='#skF_8'), inference(demodulation, [status(thm), theory('equality')], [c_42, c_40, c_32, c_1592])).
% 3.89/1.67  tff(c_1596, plain, $false, inference(negUnitSimplification, [status(thm)], [c_26, c_1594])).
% 3.89/1.67  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.89/1.67  
% 3.89/1.67  Inference rules
% 3.89/1.67  ----------------------
% 3.89/1.67  #Ref     : 6
% 3.89/1.67  #Sup     : 337
% 3.89/1.67  #Fact    : 0
% 3.89/1.67  #Define  : 0
% 3.89/1.67  #Split   : 3
% 3.89/1.67  #Chain   : 0
% 3.89/1.67  #Close   : 0
% 3.89/1.67  
% 3.89/1.67  Ordering : KBO
% 3.89/1.67  
% 3.89/1.67  Simplification rules
% 3.89/1.67  ----------------------
% 3.89/1.67  #Subsume      : 46
% 3.89/1.67  #Demod        : 432
% 3.89/1.67  #Tautology    : 103
% 3.89/1.67  #SimpNegUnit  : 1
% 3.89/1.67  #BackRed      : 11
% 3.89/1.67  
% 3.89/1.67  #Partial instantiations: 0
% 3.89/1.67  #Strategies tried      : 1
% 3.89/1.67  
% 3.89/1.67  Timing (in seconds)
% 3.89/1.67  ----------------------
% 3.89/1.68  Preprocessing        : 0.32
% 3.89/1.68  Parsing              : 0.16
% 3.89/1.68  CNF conversion       : 0.03
% 3.89/1.68  Main loop            : 0.60
% 3.89/1.68  Inferencing          : 0.24
% 3.89/1.68  Reduction            : 0.17
% 3.89/1.68  Demodulation         : 0.12
% 3.89/1.68  BG Simplification    : 0.03
% 3.89/1.68  Subsumption          : 0.11
% 3.89/1.68  Abstraction          : 0.04
% 3.89/1.68  MUC search           : 0.00
% 3.89/1.68  Cooper               : 0.00
% 3.89/1.68  Total                : 0.95
% 3.89/1.68  Index Insertion      : 0.00
% 3.89/1.68  Index Deletion       : 0.00
% 3.89/1.68  Index Matching       : 0.00
% 3.89/1.68  BG Taut test         : 0.00
%------------------------------------------------------------------------------
