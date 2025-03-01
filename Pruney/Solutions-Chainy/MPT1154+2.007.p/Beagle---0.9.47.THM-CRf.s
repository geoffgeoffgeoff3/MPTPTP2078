%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:19:33 EST 2020

% Result     : Theorem 3.08s
% Output     : CNFRefutation 3.28s
% Verified   : 
% Statistics : Number of formulae       :   67 (  91 expanded)
%              Number of leaves         :   33 (  47 expanded)
%              Depth                    :   11
%              Number of atoms          :   97 ( 203 expanded)
%              Number of equality atoms :   12 (  18 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > m1_subset_1 > v5_orders_2 > v4_orders_2 > v3_orders_2 > v2_struct_0 > v1_xboole_0 > l1_struct_0 > l1_orders_2 > k1_enumset1 > k6_domain_1 > k2_tarski > k1_orders_2 > #nlpp > u1_struct_0 > k1_zfmisc_1 > k1_tarski > #skF_2 > #skF_3 > #skF_4 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff(v2_struct_0,type,(
    v2_struct_0: $i > $o )).

tff(v3_orders_2,type,(
    v3_orders_2: $i > $o )).

tff(k1_orders_2,type,(
    k1_orders_2: ( $i * $i ) > $i )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff(k1_tarski,type,(
    k1_tarski: $i > $i )).

tff(k6_domain_1,type,(
    k6_domain_1: ( $i * $i ) > $i )).

tff(k2_tarski,type,(
    k2_tarski: ( $i * $i ) > $i )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i * $i * $i ) > $i )).

tff(k1_enumset1,type,(
    k1_enumset1: ( $i * $i * $i ) > $i )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff(v4_orders_2,type,(
    v4_orders_2: $i > $o )).

tff(v5_orders_2,type,(
    v5_orders_2: $i > $o )).

tff(k1_zfmisc_1,type,(
    k1_zfmisc_1: $i > $i )).

tff(l1_struct_0,type,(
    l1_struct_0: $i > $o )).

tff(l1_orders_2,type,(
    l1_orders_2: $i > $o )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i * $i * $i ) > $i )).

tff(u1_struct_0,type,(
    u1_struct_0: $i > $i )).

tff(v1_xboole_0,type,(
    v1_xboole_0: $i > $o )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_119,negated_conjecture,(
    ~ ! [A] :
        ( ( ~ v2_struct_0(A)
          & v3_orders_2(A)
          & v4_orders_2(A)
          & v5_orders_2(A)
          & l1_orders_2(A) )
       => ! [B] :
            ( m1_subset_1(B,u1_struct_0(A))
           => ~ r2_hidden(B,k1_orders_2(A,k6_domain_1(u1_struct_0(A),B))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_orders_2)).

tff(f_72,axiom,(
    ! [A] :
      ( l1_orders_2(A)
     => l1_struct_0(A) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_orders_2)).

tff(f_79,axiom,(
    ! [A,B] :
      ( ( ~ v1_xboole_0(A)
        & m1_subset_1(B,A) )
     => k6_domain_1(A,B) = k1_tarski(B) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_domain_1)).

tff(f_68,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & l1_struct_0(A) )
     => ~ v1_xboole_0(u1_struct_0(A)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_struct_0)).

tff(f_54,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,B)
     => ( v1_xboole_0(B)
        | r2_hidden(A,B) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

tff(f_48,axiom,(
    ! [A,B] :
      ( r2_hidden(A,B)
     => m1_subset_1(k1_tarski(A),k1_zfmisc_1(B)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_subset_1)).

tff(f_42,axiom,(
    ! [A] : k2_tarski(A,A) = k1_tarski(A) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

tff(f_44,axiom,(
    ! [A,B] : k1_enumset1(A,A,B) = k2_tarski(A,B) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

tff(f_40,axiom,(
    ! [A,B,C,D] :
      ( D = k1_enumset1(A,B,C)
    <=> ! [E] :
          ( r2_hidden(E,D)
        <=> ~ ( E != A
              & E != B
              & E != C ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_enumset1)).

tff(f_101,axiom,(
    ! [A] :
      ( ( ~ v2_struct_0(A)
        & v3_orders_2(A)
        & v4_orders_2(A)
        & v5_orders_2(A)
        & l1_orders_2(A) )
     => ! [B] :
          ( m1_subset_1(B,u1_struct_0(A))
         => ! [C] :
              ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
             => ~ ( r2_hidden(B,C)
                  & r2_hidden(B,k1_orders_2(A,C)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t47_orders_2)).

tff(c_48,plain,(
    l1_orders_2('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_119])).

tff(c_38,plain,(
    ! [A_19] :
      ( l1_struct_0(A_19)
      | ~ l1_orders_2(A_19) ) ),
    inference(cnfTransformation,[status(thm)],[f_72])).

tff(c_56,plain,(
    ~ v2_struct_0('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_119])).

tff(c_46,plain,(
    m1_subset_1('#skF_4',u1_struct_0('#skF_3')) ),
    inference(cnfTransformation,[status(thm)],[f_119])).

tff(c_106,plain,(
    ! [A_56,B_57] :
      ( k6_domain_1(A_56,B_57) = k1_tarski(B_57)
      | ~ m1_subset_1(B_57,A_56)
      | v1_xboole_0(A_56) ) ),
    inference(cnfTransformation,[status(thm)],[f_79])).

tff(c_114,plain,
    ( k6_domain_1(u1_struct_0('#skF_3'),'#skF_4') = k1_tarski('#skF_4')
    | v1_xboole_0(u1_struct_0('#skF_3')) ),
    inference(resolution,[status(thm)],[c_46,c_106])).

tff(c_115,plain,(
    v1_xboole_0(u1_struct_0('#skF_3')) ),
    inference(splitLeft,[status(thm)],[c_114])).

tff(c_36,plain,(
    ! [A_18] :
      ( ~ v1_xboole_0(u1_struct_0(A_18))
      | ~ l1_struct_0(A_18)
      | v2_struct_0(A_18) ) ),
    inference(cnfTransformation,[status(thm)],[f_68])).

tff(c_118,plain,
    ( ~ l1_struct_0('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_115,c_36])).

tff(c_121,plain,(
    ~ l1_struct_0('#skF_3') ),
    inference(negUnitSimplification,[status(thm)],[c_56,c_118])).

tff(c_124,plain,(
    ~ l1_orders_2('#skF_3') ),
    inference(resolution,[status(thm)],[c_38,c_121])).

tff(c_128,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_48,c_124])).

tff(c_130,plain,(
    ~ v1_xboole_0(u1_struct_0('#skF_3')) ),
    inference(splitRight,[status(thm)],[c_114])).

tff(c_32,plain,(
    ! [A_13,B_14] :
      ( r2_hidden(A_13,B_14)
      | v1_xboole_0(B_14)
      | ~ m1_subset_1(A_13,B_14) ) ),
    inference(cnfTransformation,[status(thm)],[f_54])).

tff(c_30,plain,(
    ! [A_11,B_12] :
      ( m1_subset_1(k1_tarski(A_11),k1_zfmisc_1(B_12))
      | ~ r2_hidden(A_11,B_12) ) ),
    inference(cnfTransformation,[status(thm)],[f_48])).

tff(c_54,plain,(
    v3_orders_2('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_119])).

tff(c_52,plain,(
    v4_orders_2('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_119])).

tff(c_50,plain,(
    v5_orders_2('#skF_3') ),
    inference(cnfTransformation,[status(thm)],[f_119])).

tff(c_26,plain,(
    ! [A_8] : k2_tarski(A_8,A_8) = k1_tarski(A_8) ),
    inference(cnfTransformation,[status(thm)],[f_42])).

tff(c_71,plain,(
    ! [A_42,B_43] : k1_enumset1(A_42,A_42,B_43) = k2_tarski(A_42,B_43) ),
    inference(cnfTransformation,[status(thm)],[f_44])).

tff(c_8,plain,(
    ! [E_7,B_2,C_3] : r2_hidden(E_7,k1_enumset1(E_7,B_2,C_3)) ),
    inference(cnfTransformation,[status(thm)],[f_40])).

tff(c_89,plain,(
    ! [A_44,B_45] : r2_hidden(A_44,k2_tarski(A_44,B_45)) ),
    inference(superposition,[status(thm),theory(equality)],[c_71,c_8])).

tff(c_92,plain,(
    ! [A_8] : r2_hidden(A_8,k1_tarski(A_8)) ),
    inference(superposition,[status(thm),theory(equality)],[c_26,c_89])).

tff(c_129,plain,(
    k6_domain_1(u1_struct_0('#skF_3'),'#skF_4') = k1_tarski('#skF_4') ),
    inference(splitRight,[status(thm)],[c_114])).

tff(c_44,plain,(
    r2_hidden('#skF_4',k1_orders_2('#skF_3',k6_domain_1(u1_struct_0('#skF_3'),'#skF_4'))) ),
    inference(cnfTransformation,[status(thm)],[f_119])).

tff(c_155,plain,(
    r2_hidden('#skF_4',k1_orders_2('#skF_3',k1_tarski('#skF_4'))) ),
    inference(demodulation,[status(thm),theory(equality)],[c_129,c_44])).

tff(c_457,plain,(
    ! [B_121,A_122,C_123] :
      ( ~ r2_hidden(B_121,k1_orders_2(A_122,C_123))
      | ~ r2_hidden(B_121,C_123)
      | ~ m1_subset_1(C_123,k1_zfmisc_1(u1_struct_0(A_122)))
      | ~ m1_subset_1(B_121,u1_struct_0(A_122))
      | ~ l1_orders_2(A_122)
      | ~ v5_orders_2(A_122)
      | ~ v4_orders_2(A_122)
      | ~ v3_orders_2(A_122)
      | v2_struct_0(A_122) ) ),
    inference(cnfTransformation,[status(thm)],[f_101])).

tff(c_462,plain,
    ( ~ r2_hidden('#skF_4',k1_tarski('#skF_4'))
    | ~ m1_subset_1(k1_tarski('#skF_4'),k1_zfmisc_1(u1_struct_0('#skF_3')))
    | ~ m1_subset_1('#skF_4',u1_struct_0('#skF_3'))
    | ~ l1_orders_2('#skF_3')
    | ~ v5_orders_2('#skF_3')
    | ~ v4_orders_2('#skF_3')
    | ~ v3_orders_2('#skF_3')
    | v2_struct_0('#skF_3') ),
    inference(resolution,[status(thm)],[c_155,c_457])).

tff(c_469,plain,
    ( ~ m1_subset_1(k1_tarski('#skF_4'),k1_zfmisc_1(u1_struct_0('#skF_3')))
    | v2_struct_0('#skF_3') ),
    inference(demodulation,[status(thm),theory(equality)],[c_54,c_52,c_50,c_48,c_46,c_92,c_462])).

tff(c_470,plain,(
    ~ m1_subset_1(k1_tarski('#skF_4'),k1_zfmisc_1(u1_struct_0('#skF_3'))) ),
    inference(negUnitSimplification,[status(thm)],[c_56,c_469])).

tff(c_475,plain,(
    ~ r2_hidden('#skF_4',u1_struct_0('#skF_3')) ),
    inference(resolution,[status(thm)],[c_30,c_470])).

tff(c_478,plain,
    ( v1_xboole_0(u1_struct_0('#skF_3'))
    | ~ m1_subset_1('#skF_4',u1_struct_0('#skF_3')) ),
    inference(resolution,[status(thm)],[c_32,c_475])).

tff(c_481,plain,(
    v1_xboole_0(u1_struct_0('#skF_3')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_46,c_478])).

tff(c_483,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_130,c_481])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.14/0.35  % Computer   : n024.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % DateTime   : Tue Dec  1 11:10:36 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.36  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 3.08/2.28  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.08/2.28  
% 3.08/2.28  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.08/2.29  %$ r2_hidden > m1_subset_1 > v5_orders_2 > v4_orders_2 > v3_orders_2 > v2_struct_0 > v1_xboole_0 > l1_struct_0 > l1_orders_2 > k1_enumset1 > k6_domain_1 > k2_tarski > k1_orders_2 > #nlpp > u1_struct_0 > k1_zfmisc_1 > k1_tarski > #skF_2 > #skF_3 > #skF_4 > #skF_1
% 3.08/2.29  
% 3.08/2.29  %Foreground sorts:
% 3.08/2.29  
% 3.08/2.29  
% 3.08/2.29  %Background operators:
% 3.08/2.29  
% 3.08/2.29  
% 3.08/2.29  %Foreground operators:
% 3.08/2.29  tff(v2_struct_0, type, v2_struct_0: $i > $o).
% 3.08/2.29  tff(v3_orders_2, type, v3_orders_2: $i > $o).
% 3.08/2.29  tff(k1_orders_2, type, k1_orders_2: ($i * $i) > $i).
% 3.08/2.29  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 3.08/2.29  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 3.08/2.29  tff(k1_tarski, type, k1_tarski: $i > $i).
% 3.08/2.29  tff(k6_domain_1, type, k6_domain_1: ($i * $i) > $i).
% 3.08/2.29  tff(k2_tarski, type, k2_tarski: ($i * $i) > $i).
% 3.08/2.29  tff('#skF_2', type, '#skF_2': ($i * $i * $i * $i) > $i).
% 3.08/2.29  tff(k1_enumset1, type, k1_enumset1: ($i * $i * $i) > $i).
% 3.08/2.29  tff('#skF_3', type, '#skF_3': $i).
% 3.08/2.29  tff(v4_orders_2, type, v4_orders_2: $i > $o).
% 3.08/2.29  tff(v5_orders_2, type, v5_orders_2: $i > $o).
% 3.08/2.29  tff(k1_zfmisc_1, type, k1_zfmisc_1: $i > $i).
% 3.08/2.29  tff(l1_struct_0, type, l1_struct_0: $i > $o).
% 3.08/2.29  tff(l1_orders_2, type, l1_orders_2: $i > $o).
% 3.08/2.29  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 3.08/2.29  tff('#skF_4', type, '#skF_4': $i).
% 3.08/2.29  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 3.08/2.29  tff('#skF_1', type, '#skF_1': ($i * $i * $i * $i) > $i).
% 3.08/2.29  tff(u1_struct_0, type, u1_struct_0: $i > $i).
% 3.08/2.29  tff(v1_xboole_0, type, v1_xboole_0: $i > $o).
% 3.08/2.29  tff(m1_subset_1, type, m1_subset_1: ($i * $i) > $o).
% 3.08/2.29  
% 3.28/2.31  tff(f_119, negated_conjecture, ~(![A]: (((((~v2_struct_0(A) & v3_orders_2(A)) & v4_orders_2(A)) & v5_orders_2(A)) & l1_orders_2(A)) => (![B]: (m1_subset_1(B, u1_struct_0(A)) => ~r2_hidden(B, k1_orders_2(A, k6_domain_1(u1_struct_0(A), B))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_orders_2)).
% 3.28/2.31  tff(f_72, axiom, (![A]: (l1_orders_2(A) => l1_struct_0(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_l1_orders_2)).
% 3.28/2.31  tff(f_79, axiom, (![A, B]: ((~v1_xboole_0(A) & m1_subset_1(B, A)) => (k6_domain_1(A, B) = k1_tarski(B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_domain_1)).
% 3.28/2.31  tff(f_68, axiom, (![A]: ((~v2_struct_0(A) & l1_struct_0(A)) => ~v1_xboole_0(u1_struct_0(A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc2_struct_0)).
% 3.28/2.31  tff(f_54, axiom, (![A, B]: (m1_subset_1(A, B) => (v1_xboole_0(B) | r2_hidden(A, B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 3.28/2.31  tff(f_48, axiom, (![A, B]: (r2_hidden(A, B) => m1_subset_1(k1_tarski(A), k1_zfmisc_1(B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t63_subset_1)).
% 3.28/2.31  tff(f_42, axiom, (![A]: (k2_tarski(A, A) = k1_tarski(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 3.28/2.31  tff(f_44, axiom, (![A, B]: (k1_enumset1(A, A, B) = k2_tarski(A, B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 3.28/2.31  tff(f_40, axiom, (![A, B, C, D]: ((D = k1_enumset1(A, B, C)) <=> (![E]: (r2_hidden(E, D) <=> ~((~(E = A) & ~(E = B)) & ~(E = C)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_enumset1)).
% 3.28/2.31  tff(f_101, axiom, (![A]: (((((~v2_struct_0(A) & v3_orders_2(A)) & v4_orders_2(A)) & v5_orders_2(A)) & l1_orders_2(A)) => (![B]: (m1_subset_1(B, u1_struct_0(A)) => (![C]: (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) => ~(r2_hidden(B, C) & r2_hidden(B, k1_orders_2(A, C))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t47_orders_2)).
% 3.28/2.31  tff(c_48, plain, (l1_orders_2('#skF_3')), inference(cnfTransformation, [status(thm)], [f_119])).
% 3.28/2.31  tff(c_38, plain, (![A_19]: (l1_struct_0(A_19) | ~l1_orders_2(A_19))), inference(cnfTransformation, [status(thm)], [f_72])).
% 3.28/2.31  tff(c_56, plain, (~v2_struct_0('#skF_3')), inference(cnfTransformation, [status(thm)], [f_119])).
% 3.28/2.31  tff(c_46, plain, (m1_subset_1('#skF_4', u1_struct_0('#skF_3'))), inference(cnfTransformation, [status(thm)], [f_119])).
% 3.28/2.31  tff(c_106, plain, (![A_56, B_57]: (k6_domain_1(A_56, B_57)=k1_tarski(B_57) | ~m1_subset_1(B_57, A_56) | v1_xboole_0(A_56))), inference(cnfTransformation, [status(thm)], [f_79])).
% 3.28/2.31  tff(c_114, plain, (k6_domain_1(u1_struct_0('#skF_3'), '#skF_4')=k1_tarski('#skF_4') | v1_xboole_0(u1_struct_0('#skF_3'))), inference(resolution, [status(thm)], [c_46, c_106])).
% 3.28/2.31  tff(c_115, plain, (v1_xboole_0(u1_struct_0('#skF_3'))), inference(splitLeft, [status(thm)], [c_114])).
% 3.28/2.31  tff(c_36, plain, (![A_18]: (~v1_xboole_0(u1_struct_0(A_18)) | ~l1_struct_0(A_18) | v2_struct_0(A_18))), inference(cnfTransformation, [status(thm)], [f_68])).
% 3.28/2.31  tff(c_118, plain, (~l1_struct_0('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_115, c_36])).
% 3.28/2.31  tff(c_121, plain, (~l1_struct_0('#skF_3')), inference(negUnitSimplification, [status(thm)], [c_56, c_118])).
% 3.28/2.31  tff(c_124, plain, (~l1_orders_2('#skF_3')), inference(resolution, [status(thm)], [c_38, c_121])).
% 3.28/2.31  tff(c_128, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_48, c_124])).
% 3.28/2.31  tff(c_130, plain, (~v1_xboole_0(u1_struct_0('#skF_3'))), inference(splitRight, [status(thm)], [c_114])).
% 3.28/2.31  tff(c_32, plain, (![A_13, B_14]: (r2_hidden(A_13, B_14) | v1_xboole_0(B_14) | ~m1_subset_1(A_13, B_14))), inference(cnfTransformation, [status(thm)], [f_54])).
% 3.28/2.31  tff(c_30, plain, (![A_11, B_12]: (m1_subset_1(k1_tarski(A_11), k1_zfmisc_1(B_12)) | ~r2_hidden(A_11, B_12))), inference(cnfTransformation, [status(thm)], [f_48])).
% 3.28/2.31  tff(c_54, plain, (v3_orders_2('#skF_3')), inference(cnfTransformation, [status(thm)], [f_119])).
% 3.28/2.31  tff(c_52, plain, (v4_orders_2('#skF_3')), inference(cnfTransformation, [status(thm)], [f_119])).
% 3.28/2.31  tff(c_50, plain, (v5_orders_2('#skF_3')), inference(cnfTransformation, [status(thm)], [f_119])).
% 3.28/2.31  tff(c_26, plain, (![A_8]: (k2_tarski(A_8, A_8)=k1_tarski(A_8))), inference(cnfTransformation, [status(thm)], [f_42])).
% 3.28/2.31  tff(c_71, plain, (![A_42, B_43]: (k1_enumset1(A_42, A_42, B_43)=k2_tarski(A_42, B_43))), inference(cnfTransformation, [status(thm)], [f_44])).
% 3.28/2.31  tff(c_8, plain, (![E_7, B_2, C_3]: (r2_hidden(E_7, k1_enumset1(E_7, B_2, C_3)))), inference(cnfTransformation, [status(thm)], [f_40])).
% 3.28/2.31  tff(c_89, plain, (![A_44, B_45]: (r2_hidden(A_44, k2_tarski(A_44, B_45)))), inference(superposition, [status(thm), theory('equality')], [c_71, c_8])).
% 3.28/2.31  tff(c_92, plain, (![A_8]: (r2_hidden(A_8, k1_tarski(A_8)))), inference(superposition, [status(thm), theory('equality')], [c_26, c_89])).
% 3.28/2.31  tff(c_129, plain, (k6_domain_1(u1_struct_0('#skF_3'), '#skF_4')=k1_tarski('#skF_4')), inference(splitRight, [status(thm)], [c_114])).
% 3.28/2.31  tff(c_44, plain, (r2_hidden('#skF_4', k1_orders_2('#skF_3', k6_domain_1(u1_struct_0('#skF_3'), '#skF_4')))), inference(cnfTransformation, [status(thm)], [f_119])).
% 3.28/2.31  tff(c_155, plain, (r2_hidden('#skF_4', k1_orders_2('#skF_3', k1_tarski('#skF_4')))), inference(demodulation, [status(thm), theory('equality')], [c_129, c_44])).
% 3.28/2.31  tff(c_457, plain, (![B_121, A_122, C_123]: (~r2_hidden(B_121, k1_orders_2(A_122, C_123)) | ~r2_hidden(B_121, C_123) | ~m1_subset_1(C_123, k1_zfmisc_1(u1_struct_0(A_122))) | ~m1_subset_1(B_121, u1_struct_0(A_122)) | ~l1_orders_2(A_122) | ~v5_orders_2(A_122) | ~v4_orders_2(A_122) | ~v3_orders_2(A_122) | v2_struct_0(A_122))), inference(cnfTransformation, [status(thm)], [f_101])).
% 3.28/2.31  tff(c_462, plain, (~r2_hidden('#skF_4', k1_tarski('#skF_4')) | ~m1_subset_1(k1_tarski('#skF_4'), k1_zfmisc_1(u1_struct_0('#skF_3'))) | ~m1_subset_1('#skF_4', u1_struct_0('#skF_3')) | ~l1_orders_2('#skF_3') | ~v5_orders_2('#skF_3') | ~v4_orders_2('#skF_3') | ~v3_orders_2('#skF_3') | v2_struct_0('#skF_3')), inference(resolution, [status(thm)], [c_155, c_457])).
% 3.28/2.31  tff(c_469, plain, (~m1_subset_1(k1_tarski('#skF_4'), k1_zfmisc_1(u1_struct_0('#skF_3'))) | v2_struct_0('#skF_3')), inference(demodulation, [status(thm), theory('equality')], [c_54, c_52, c_50, c_48, c_46, c_92, c_462])).
% 3.28/2.31  tff(c_470, plain, (~m1_subset_1(k1_tarski('#skF_4'), k1_zfmisc_1(u1_struct_0('#skF_3')))), inference(negUnitSimplification, [status(thm)], [c_56, c_469])).
% 3.28/2.31  tff(c_475, plain, (~r2_hidden('#skF_4', u1_struct_0('#skF_3'))), inference(resolution, [status(thm)], [c_30, c_470])).
% 3.28/2.31  tff(c_478, plain, (v1_xboole_0(u1_struct_0('#skF_3')) | ~m1_subset_1('#skF_4', u1_struct_0('#skF_3'))), inference(resolution, [status(thm)], [c_32, c_475])).
% 3.28/2.31  tff(c_481, plain, (v1_xboole_0(u1_struct_0('#skF_3'))), inference(demodulation, [status(thm), theory('equality')], [c_46, c_478])).
% 3.28/2.31  tff(c_483, plain, $false, inference(negUnitSimplification, [status(thm)], [c_130, c_481])).
% 3.28/2.31  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.28/2.31  
% 3.28/2.31  Inference rules
% 3.28/2.31  ----------------------
% 3.28/2.31  #Ref     : 0
% 3.28/2.31  #Sup     : 93
% 3.28/2.31  #Fact    : 0
% 3.28/2.31  #Define  : 0
% 3.28/2.31  #Split   : 3
% 3.28/2.31  #Chain   : 0
% 3.28/2.31  #Close   : 0
% 3.28/2.31  
% 3.28/2.31  Ordering : KBO
% 3.28/2.31  
% 3.28/2.31  Simplification rules
% 3.28/2.31  ----------------------
% 3.28/2.31  #Subsume      : 7
% 3.28/2.31  #Demod        : 25
% 3.28/2.31  #Tautology    : 34
% 3.28/2.31  #SimpNegUnit  : 3
% 3.28/2.31  #BackRed      : 1
% 3.28/2.31  
% 3.28/2.31  #Partial instantiations: 0
% 3.28/2.31  #Strategies tried      : 1
% 3.28/2.31  
% 3.28/2.31  Timing (in seconds)
% 3.28/2.31  ----------------------
% 3.28/2.32  Preprocessing        : 0.64
% 3.28/2.32  Parsing              : 0.37
% 3.28/2.32  CNF conversion       : 0.04
% 3.28/2.32  Main loop            : 0.58
% 3.28/2.32  Inferencing          : 0.21
% 3.28/2.32  Reduction            : 0.18
% 3.28/2.32  Demodulation         : 0.12
% 3.28/2.32  BG Simplification    : 0.03
% 3.28/2.32  Subsumption          : 0.10
% 3.28/2.32  Abstraction          : 0.03
% 3.28/2.32  MUC search           : 0.00
% 3.28/2.32  Cooper               : 0.00
% 3.28/2.32  Total                : 1.27
% 3.28/2.32  Index Insertion      : 0.00
% 3.28/2.32  Index Deletion       : 0.00
% 3.28/2.32  Index Matching       : 0.00
% 3.28/2.32  BG Taut test         : 0.00
%------------------------------------------------------------------------------
