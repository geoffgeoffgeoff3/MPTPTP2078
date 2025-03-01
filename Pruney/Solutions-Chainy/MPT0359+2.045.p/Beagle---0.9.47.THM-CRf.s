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
% DateTime   : Thu Dec  3 09:56:15 EST 2020

% Result     : Theorem 2.63s
% Output     : CNFRefutation 2.63s
% Verified   : 
% Statistics : Number of formulae       :   81 ( 183 expanded)
%              Number of leaves         :   30 (  73 expanded)
%              Depth                    :    9
%              Number of atoms          :  105 ( 268 expanded)
%              Number of equality atoms :   37 ( 120 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > r1_tarski > m1_subset_1 > k5_xboole_0 > k4_xboole_0 > k3_xboole_0 > k3_subset_1 > #nlpp > k2_subset_1 > k1_zfmisc_1 > k1_subset_1 > k1_xboole_0 > #skF_5 > #skF_2 > #skF_4 > #skF_3 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff(k4_xboole_0,type,(
    k4_xboole_0: ( $i * $i ) > $i )).

tff(k1_xboole_0,type,(
    k1_xboole_0: $i )).

tff(k5_xboole_0,type,(
    k5_xboole_0: ( $i * $i ) > $i )).

tff(r1_tarski,type,(
    r1_tarski: ( $i * $i ) > $o )).

tff(k3_subset_1,type,(
    k3_subset_1: ( $i * $i ) > $i )).

tff('#skF_5',type,(
    '#skF_5': $i )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i * $i ) > $i )).

tff(k1_zfmisc_1,type,(
    k1_zfmisc_1: $i > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff('#skF_3',type,(
    '#skF_3': ( $i * $i * $i ) > $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(k1_subset_1,type,(
    k1_subset_1: $i > $i )).

tff(k3_xboole_0,type,(
    k3_xboole_0: ( $i * $i ) > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i ) > $i )).

tff(k2_subset_1,type,(
    k2_subset_1: $i > $i )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_72,axiom,(
    ! [A] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(A)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_subset_1)).

tff(f_52,axiom,(
    ! [A] : k1_subset_1(A) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_subset_1)).

tff(f_54,axiom,(
    ! [A] : k2_subset_1(A) = A ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).

tff(f_64,axiom,(
    ! [A] : k2_subset_1(A) = k3_subset_1(A,k1_subset_1(A)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t22_subset_1)).

tff(f_70,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ( r1_tarski(B,k3_subset_1(A,B))
      <=> B = k1_subset_1(A) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_subset_1)).

tff(f_62,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => k3_subset_1(A,k3_subset_1(A,B)) = B ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',involutiveness_k3_subset_1)).

tff(f_79,negated_conjecture,(
    ~ ! [A,B] :
        ( m1_subset_1(B,k1_zfmisc_1(A))
       => ( r1_tarski(k3_subset_1(A,B),B)
        <=> B = k2_subset_1(A) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_subset_1)).

tff(f_32,axiom,(
    ! [A,B] :
      ( r1_tarski(A,B)
    <=> ! [C] :
          ( r2_hidden(C,A)
         => r2_hidden(C,B) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

tff(f_58,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => k3_subset_1(A,B) = k4_xboole_0(A,B) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_subset_1)).

tff(f_42,axiom,(
    ! [A,B,C] :
      ( C = k4_xboole_0(A,B)
    <=> ! [D] :
          ( r2_hidden(D,C)
        <=> ( r2_hidden(D,A)
            & ~ r2_hidden(D,B) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_xboole_0)).

tff(f_48,axiom,(
    ! [A,B] :
      ( A = B
    <=> ( r1_tarski(A,B)
        & r1_tarski(B,A) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

tff(c_48,plain,(
    ! [A_25] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(A_25)) ),
    inference(cnfTransformation,[status(thm)],[f_72])).

tff(c_34,plain,(
    ! [A_16] : k1_subset_1(A_16) = k1_xboole_0 ),
    inference(cnfTransformation,[status(thm)],[f_52])).

tff(c_36,plain,(
    ! [A_17] : k2_subset_1(A_17) = A_17 ),
    inference(cnfTransformation,[status(thm)],[f_54])).

tff(c_42,plain,(
    ! [A_22] : k3_subset_1(A_22,k1_subset_1(A_22)) = k2_subset_1(A_22) ),
    inference(cnfTransformation,[status(thm)],[f_64])).

tff(c_44,plain,(
    ! [A_23] :
      ( r1_tarski(k1_subset_1(A_23),k3_subset_1(A_23,k1_subset_1(A_23)))
      | ~ m1_subset_1(k1_subset_1(A_23),k1_zfmisc_1(A_23)) ) ),
    inference(cnfTransformation,[status(thm)],[f_70])).

tff(c_59,plain,(
    ! [A_23] :
      ( r1_tarski(k1_subset_1(A_23),k2_subset_1(A_23))
      | ~ m1_subset_1(k1_subset_1(A_23),k1_zfmisc_1(A_23)) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_42,c_44])).

tff(c_63,plain,(
    ! [A_23] :
      ( r1_tarski(k1_subset_1(A_23),A_23)
      | ~ m1_subset_1(k1_subset_1(A_23),k1_zfmisc_1(A_23)) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_36,c_59])).

tff(c_64,plain,(
    ! [A_23] :
      ( r1_tarski(k1_xboole_0,A_23)
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(A_23)) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_34,c_34,c_63])).

tff(c_68,plain,(
    ! [A_23] : r1_tarski(k1_xboole_0,A_23) ),
    inference(demodulation,[status(thm),theory(equality)],[c_48,c_64])).

tff(c_60,plain,(
    ! [A_22] : k3_subset_1(A_22,k1_subset_1(A_22)) = A_22 ),
    inference(demodulation,[status(thm),theory(equality)],[c_36,c_42])).

tff(c_66,plain,(
    ! [A_22] : k3_subset_1(A_22,k1_xboole_0) = A_22 ),
    inference(demodulation,[status(thm),theory(equality)],[c_34,c_60])).

tff(c_215,plain,(
    ! [A_57,B_58] :
      ( k3_subset_1(A_57,k3_subset_1(A_57,B_58)) = B_58
      | ~ m1_subset_1(B_58,k1_zfmisc_1(A_57)) ) ),
    inference(cnfTransformation,[status(thm)],[f_62])).

tff(c_219,plain,(
    ! [A_25] : k3_subset_1(A_25,k3_subset_1(A_25,k1_xboole_0)) = k1_xboole_0 ),
    inference(resolution,[status(thm)],[c_48,c_215])).

tff(c_222,plain,(
    ! [A_25] : k3_subset_1(A_25,A_25) = k1_xboole_0 ),
    inference(demodulation,[status(thm),theory(equality)],[c_66,c_219])).

tff(c_58,plain,
    ( r1_tarski(k3_subset_1('#skF_4','#skF_5'),'#skF_5')
    | k2_subset_1('#skF_4') = '#skF_5' ),
    inference(cnfTransformation,[status(thm)],[f_79])).

tff(c_62,plain,
    ( r1_tarski(k3_subset_1('#skF_4','#skF_5'),'#skF_5')
    | '#skF_5' = '#skF_4' ),
    inference(demodulation,[status(thm),theory(equality)],[c_36,c_58])).

tff(c_98,plain,(
    '#skF_5' = '#skF_4' ),
    inference(splitLeft,[status(thm)],[c_62])).

tff(c_52,plain,
    ( k2_subset_1('#skF_4') != '#skF_5'
    | ~ r1_tarski(k3_subset_1('#skF_4','#skF_5'),'#skF_5') ),
    inference(cnfTransformation,[status(thm)],[f_79])).

tff(c_61,plain,
    ( '#skF_5' != '#skF_4'
    | ~ r1_tarski(k3_subset_1('#skF_4','#skF_5'),'#skF_5') ),
    inference(demodulation,[status(thm),theory(equality)],[c_36,c_52])).

tff(c_105,plain,(
    ~ r1_tarski(k3_subset_1('#skF_4','#skF_4'),'#skF_4') ),
    inference(demodulation,[status(thm),theory(equality)],[c_98,c_98,c_98,c_61])).

tff(c_226,plain,(
    ~ r1_tarski(k1_xboole_0,'#skF_4') ),
    inference(demodulation,[status(thm),theory(equality)],[c_222,c_105])).

tff(c_229,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_68,c_226])).

tff(c_231,plain,(
    '#skF_5' != '#skF_4' ),
    inference(splitRight,[status(thm)],[c_62])).

tff(c_230,plain,(
    r1_tarski(k3_subset_1('#skF_4','#skF_5'),'#skF_5') ),
    inference(splitRight,[status(thm)],[c_62])).

tff(c_6,plain,(
    ! [A_1,B_2] :
      ( r2_hidden('#skF_1'(A_1,B_2),A_1)
      | r1_tarski(A_1,B_2) ) ),
    inference(cnfTransformation,[status(thm)],[f_32])).

tff(c_289,plain,(
    ! [C_74,B_75,A_76] :
      ( r2_hidden(C_74,B_75)
      | ~ r2_hidden(C_74,A_76)
      | ~ r1_tarski(A_76,B_75) ) ),
    inference(cnfTransformation,[status(thm)],[f_32])).

tff(c_424,plain,(
    ! [A_93,B_94,B_95] :
      ( r2_hidden('#skF_1'(A_93,B_94),B_95)
      | ~ r1_tarski(A_93,B_95)
      | r1_tarski(A_93,B_94) ) ),
    inference(resolution,[status(thm)],[c_6,c_289])).

tff(c_50,plain,(
    m1_subset_1('#skF_5',k1_zfmisc_1('#skF_4')) ),
    inference(cnfTransformation,[status(thm)],[f_79])).

tff(c_294,plain,(
    ! [A_77,B_78] :
      ( k4_xboole_0(A_77,B_78) = k3_subset_1(A_77,B_78)
      | ~ m1_subset_1(B_78,k1_zfmisc_1(A_77)) ) ),
    inference(cnfTransformation,[status(thm)],[f_58])).

tff(c_301,plain,(
    k4_xboole_0('#skF_4','#skF_5') = k3_subset_1('#skF_4','#skF_5') ),
    inference(resolution,[status(thm)],[c_50,c_294])).

tff(c_10,plain,(
    ! [D_11,B_7,A_6] :
      ( ~ r2_hidden(D_11,B_7)
      | ~ r2_hidden(D_11,k4_xboole_0(A_6,B_7)) ) ),
    inference(cnfTransformation,[status(thm)],[f_42])).

tff(c_335,plain,(
    ! [D_82] :
      ( ~ r2_hidden(D_82,'#skF_5')
      | ~ r2_hidden(D_82,k3_subset_1('#skF_4','#skF_5')) ) ),
    inference(superposition,[status(thm),theory(equality)],[c_301,c_10])).

tff(c_340,plain,(
    ! [B_2] :
      ( ~ r2_hidden('#skF_1'(k3_subset_1('#skF_4','#skF_5'),B_2),'#skF_5')
      | r1_tarski(k3_subset_1('#skF_4','#skF_5'),B_2) ) ),
    inference(resolution,[status(thm)],[c_6,c_335])).

tff(c_428,plain,(
    ! [B_94] :
      ( ~ r1_tarski(k3_subset_1('#skF_4','#skF_5'),'#skF_5')
      | r1_tarski(k3_subset_1('#skF_4','#skF_5'),B_94) ) ),
    inference(resolution,[status(thm)],[c_424,c_340])).

tff(c_472,plain,(
    ! [B_99] : r1_tarski(k3_subset_1('#skF_4','#skF_5'),B_99) ),
    inference(demodulation,[status(thm),theory(equality)],[c_230,c_428])).

tff(c_245,plain,(
    ! [B_66,A_67] :
      ( B_66 = A_67
      | ~ r1_tarski(B_66,A_67)
      | ~ r1_tarski(A_67,B_66) ) ),
    inference(cnfTransformation,[status(thm)],[f_48])).

tff(c_257,plain,(
    ! [A_23] :
      ( k1_xboole_0 = A_23
      | ~ r1_tarski(A_23,k1_xboole_0) ) ),
    inference(resolution,[status(thm)],[c_68,c_245])).

tff(c_484,plain,(
    k3_subset_1('#skF_4','#skF_5') = k1_xboole_0 ),
    inference(resolution,[status(thm)],[c_472,c_257])).

tff(c_341,plain,(
    ! [A_83,B_84] :
      ( k3_subset_1(A_83,k3_subset_1(A_83,B_84)) = B_84
      | ~ m1_subset_1(B_84,k1_zfmisc_1(A_83)) ) ),
    inference(cnfTransformation,[status(thm)],[f_62])).

tff(c_346,plain,(
    k3_subset_1('#skF_4',k3_subset_1('#skF_4','#skF_5')) = '#skF_5' ),
    inference(resolution,[status(thm)],[c_50,c_341])).

tff(c_46,plain,(
    ! [A_23,B_24] :
      ( k1_subset_1(A_23) = B_24
      | ~ r1_tarski(B_24,k3_subset_1(A_23,B_24))
      | ~ m1_subset_1(B_24,k1_zfmisc_1(A_23)) ) ),
    inference(cnfTransformation,[status(thm)],[f_70])).

tff(c_400,plain,(
    ! [B_91,A_92] :
      ( k1_xboole_0 = B_91
      | ~ r1_tarski(B_91,k3_subset_1(A_92,B_91))
      | ~ m1_subset_1(B_91,k1_zfmisc_1(A_92)) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_34,c_46])).

tff(c_403,plain,
    ( k3_subset_1('#skF_4','#skF_5') = k1_xboole_0
    | ~ r1_tarski(k3_subset_1('#skF_4','#skF_5'),'#skF_5')
    | ~ m1_subset_1(k3_subset_1('#skF_4','#skF_5'),k1_zfmisc_1('#skF_4')) ),
    inference(superposition,[status(thm),theory(equality)],[c_346,c_400])).

tff(c_415,plain,
    ( k3_subset_1('#skF_4','#skF_5') = k1_xboole_0
    | ~ m1_subset_1(k3_subset_1('#skF_4','#skF_5'),k1_zfmisc_1('#skF_4')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_230,c_403])).

tff(c_423,plain,(
    ~ m1_subset_1(k3_subset_1('#skF_4','#skF_5'),k1_zfmisc_1('#skF_4')) ),
    inference(splitLeft,[status(thm)],[c_415])).

tff(c_487,plain,(
    ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1('#skF_4')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_484,c_423])).

tff(c_496,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_48,c_487])).

tff(c_497,plain,(
    k3_subset_1('#skF_4','#skF_5') = k1_xboole_0 ),
    inference(splitRight,[status(thm)],[c_415])).

tff(c_501,plain,(
    k3_subset_1('#skF_4',k1_xboole_0) = '#skF_5' ),
    inference(demodulation,[status(thm),theory(equality)],[c_497,c_346])).

tff(c_507,plain,(
    '#skF_5' = '#skF_4' ),
    inference(demodulation,[status(thm),theory(equality)],[c_66,c_501])).

tff(c_509,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_231,c_507])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.14/0.34  % Computer   : n021.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % DateTime   : Tue Dec  1 13:53:04 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.63/1.33  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.63/1.34  
% 2.63/1.34  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.63/1.34  %$ r2_hidden > r1_tarski > m1_subset_1 > k5_xboole_0 > k4_xboole_0 > k3_xboole_0 > k3_subset_1 > #nlpp > k2_subset_1 > k1_zfmisc_1 > k1_subset_1 > k1_xboole_0 > #skF_5 > #skF_2 > #skF_4 > #skF_3 > #skF_1
% 2.63/1.34  
% 2.63/1.34  %Foreground sorts:
% 2.63/1.34  
% 2.63/1.34  
% 2.63/1.34  %Background operators:
% 2.63/1.34  
% 2.63/1.34  
% 2.63/1.34  %Foreground operators:
% 2.63/1.34  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.63/1.34  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 2.63/1.34  tff(k4_xboole_0, type, k4_xboole_0: ($i * $i) > $i).
% 2.63/1.34  tff(k1_xboole_0, type, k1_xboole_0: $i).
% 2.63/1.34  tff(k5_xboole_0, type, k5_xboole_0: ($i * $i) > $i).
% 2.63/1.34  tff(r1_tarski, type, r1_tarski: ($i * $i) > $o).
% 2.63/1.34  tff(k3_subset_1, type, k3_subset_1: ($i * $i) > $i).
% 2.63/1.34  tff('#skF_5', type, '#skF_5': $i).
% 2.63/1.34  tff('#skF_2', type, '#skF_2': ($i * $i * $i) > $i).
% 2.63/1.34  tff(k1_zfmisc_1, type, k1_zfmisc_1: $i > $i).
% 2.63/1.34  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.63/1.34  tff('#skF_4', type, '#skF_4': $i).
% 2.63/1.34  tff('#skF_3', type, '#skF_3': ($i * $i * $i) > $i).
% 2.63/1.34  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.63/1.34  tff(k1_subset_1, type, k1_subset_1: $i > $i).
% 2.63/1.34  tff(k3_xboole_0, type, k3_xboole_0: ($i * $i) > $i).
% 2.63/1.34  tff('#skF_1', type, '#skF_1': ($i * $i) > $i).
% 2.63/1.34  tff(k2_subset_1, type, k2_subset_1: $i > $i).
% 2.63/1.34  tff(m1_subset_1, type, m1_subset_1: ($i * $i) > $o).
% 2.63/1.34  
% 2.63/1.36  tff(f_72, axiom, (![A]: m1_subset_1(k1_xboole_0, k1_zfmisc_1(A))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_subset_1)).
% 2.63/1.36  tff(f_52, axiom, (![A]: (k1_subset_1(A) = k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_subset_1)).
% 2.63/1.36  tff(f_54, axiom, (![A]: (k2_subset_1(A) = A)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_subset_1)).
% 2.63/1.36  tff(f_64, axiom, (![A]: (k2_subset_1(A) = k3_subset_1(A, k1_subset_1(A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t22_subset_1)).
% 2.63/1.36  tff(f_70, axiom, (![A, B]: (m1_subset_1(B, k1_zfmisc_1(A)) => (r1_tarski(B, k3_subset_1(A, B)) <=> (B = k1_subset_1(A))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t38_subset_1)).
% 2.63/1.36  tff(f_62, axiom, (![A, B]: (m1_subset_1(B, k1_zfmisc_1(A)) => (k3_subset_1(A, k3_subset_1(A, B)) = B))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', involutiveness_k3_subset_1)).
% 2.63/1.36  tff(f_79, negated_conjecture, ~(![A, B]: (m1_subset_1(B, k1_zfmisc_1(A)) => (r1_tarski(k3_subset_1(A, B), B) <=> (B = k2_subset_1(A))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t39_subset_1)).
% 2.63/1.36  tff(f_32, axiom, (![A, B]: (r1_tarski(A, B) <=> (![C]: (r2_hidden(C, A) => r2_hidden(C, B))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 2.63/1.36  tff(f_58, axiom, (![A, B]: (m1_subset_1(B, k1_zfmisc_1(A)) => (k3_subset_1(A, B) = k4_xboole_0(A, B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_subset_1)).
% 2.63/1.36  tff(f_42, axiom, (![A, B, C]: ((C = k4_xboole_0(A, B)) <=> (![D]: (r2_hidden(D, C) <=> (r2_hidden(D, A) & ~r2_hidden(D, B)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_xboole_0)).
% 2.63/1.36  tff(f_48, axiom, (![A, B]: ((A = B) <=> (r1_tarski(A, B) & r1_tarski(B, A)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 2.63/1.36  tff(c_48, plain, (![A_25]: (m1_subset_1(k1_xboole_0, k1_zfmisc_1(A_25)))), inference(cnfTransformation, [status(thm)], [f_72])).
% 2.63/1.36  tff(c_34, plain, (![A_16]: (k1_subset_1(A_16)=k1_xboole_0)), inference(cnfTransformation, [status(thm)], [f_52])).
% 2.63/1.36  tff(c_36, plain, (![A_17]: (k2_subset_1(A_17)=A_17)), inference(cnfTransformation, [status(thm)], [f_54])).
% 2.63/1.36  tff(c_42, plain, (![A_22]: (k3_subset_1(A_22, k1_subset_1(A_22))=k2_subset_1(A_22))), inference(cnfTransformation, [status(thm)], [f_64])).
% 2.63/1.36  tff(c_44, plain, (![A_23]: (r1_tarski(k1_subset_1(A_23), k3_subset_1(A_23, k1_subset_1(A_23))) | ~m1_subset_1(k1_subset_1(A_23), k1_zfmisc_1(A_23)))), inference(cnfTransformation, [status(thm)], [f_70])).
% 2.63/1.36  tff(c_59, plain, (![A_23]: (r1_tarski(k1_subset_1(A_23), k2_subset_1(A_23)) | ~m1_subset_1(k1_subset_1(A_23), k1_zfmisc_1(A_23)))), inference(demodulation, [status(thm), theory('equality')], [c_42, c_44])).
% 2.63/1.36  tff(c_63, plain, (![A_23]: (r1_tarski(k1_subset_1(A_23), A_23) | ~m1_subset_1(k1_subset_1(A_23), k1_zfmisc_1(A_23)))), inference(demodulation, [status(thm), theory('equality')], [c_36, c_59])).
% 2.63/1.36  tff(c_64, plain, (![A_23]: (r1_tarski(k1_xboole_0, A_23) | ~m1_subset_1(k1_xboole_0, k1_zfmisc_1(A_23)))), inference(demodulation, [status(thm), theory('equality')], [c_34, c_34, c_63])).
% 2.63/1.36  tff(c_68, plain, (![A_23]: (r1_tarski(k1_xboole_0, A_23))), inference(demodulation, [status(thm), theory('equality')], [c_48, c_64])).
% 2.63/1.36  tff(c_60, plain, (![A_22]: (k3_subset_1(A_22, k1_subset_1(A_22))=A_22)), inference(demodulation, [status(thm), theory('equality')], [c_36, c_42])).
% 2.63/1.36  tff(c_66, plain, (![A_22]: (k3_subset_1(A_22, k1_xboole_0)=A_22)), inference(demodulation, [status(thm), theory('equality')], [c_34, c_60])).
% 2.63/1.36  tff(c_215, plain, (![A_57, B_58]: (k3_subset_1(A_57, k3_subset_1(A_57, B_58))=B_58 | ~m1_subset_1(B_58, k1_zfmisc_1(A_57)))), inference(cnfTransformation, [status(thm)], [f_62])).
% 2.63/1.36  tff(c_219, plain, (![A_25]: (k3_subset_1(A_25, k3_subset_1(A_25, k1_xboole_0))=k1_xboole_0)), inference(resolution, [status(thm)], [c_48, c_215])).
% 2.63/1.36  tff(c_222, plain, (![A_25]: (k3_subset_1(A_25, A_25)=k1_xboole_0)), inference(demodulation, [status(thm), theory('equality')], [c_66, c_219])).
% 2.63/1.36  tff(c_58, plain, (r1_tarski(k3_subset_1('#skF_4', '#skF_5'), '#skF_5') | k2_subset_1('#skF_4')='#skF_5'), inference(cnfTransformation, [status(thm)], [f_79])).
% 2.63/1.36  tff(c_62, plain, (r1_tarski(k3_subset_1('#skF_4', '#skF_5'), '#skF_5') | '#skF_5'='#skF_4'), inference(demodulation, [status(thm), theory('equality')], [c_36, c_58])).
% 2.63/1.36  tff(c_98, plain, ('#skF_5'='#skF_4'), inference(splitLeft, [status(thm)], [c_62])).
% 2.63/1.36  tff(c_52, plain, (k2_subset_1('#skF_4')!='#skF_5' | ~r1_tarski(k3_subset_1('#skF_4', '#skF_5'), '#skF_5')), inference(cnfTransformation, [status(thm)], [f_79])).
% 2.63/1.36  tff(c_61, plain, ('#skF_5'!='#skF_4' | ~r1_tarski(k3_subset_1('#skF_4', '#skF_5'), '#skF_5')), inference(demodulation, [status(thm), theory('equality')], [c_36, c_52])).
% 2.63/1.36  tff(c_105, plain, (~r1_tarski(k3_subset_1('#skF_4', '#skF_4'), '#skF_4')), inference(demodulation, [status(thm), theory('equality')], [c_98, c_98, c_98, c_61])).
% 2.63/1.36  tff(c_226, plain, (~r1_tarski(k1_xboole_0, '#skF_4')), inference(demodulation, [status(thm), theory('equality')], [c_222, c_105])).
% 2.63/1.36  tff(c_229, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_68, c_226])).
% 2.63/1.36  tff(c_231, plain, ('#skF_5'!='#skF_4'), inference(splitRight, [status(thm)], [c_62])).
% 2.63/1.36  tff(c_230, plain, (r1_tarski(k3_subset_1('#skF_4', '#skF_5'), '#skF_5')), inference(splitRight, [status(thm)], [c_62])).
% 2.63/1.36  tff(c_6, plain, (![A_1, B_2]: (r2_hidden('#skF_1'(A_1, B_2), A_1) | r1_tarski(A_1, B_2))), inference(cnfTransformation, [status(thm)], [f_32])).
% 2.63/1.36  tff(c_289, plain, (![C_74, B_75, A_76]: (r2_hidden(C_74, B_75) | ~r2_hidden(C_74, A_76) | ~r1_tarski(A_76, B_75))), inference(cnfTransformation, [status(thm)], [f_32])).
% 2.63/1.36  tff(c_424, plain, (![A_93, B_94, B_95]: (r2_hidden('#skF_1'(A_93, B_94), B_95) | ~r1_tarski(A_93, B_95) | r1_tarski(A_93, B_94))), inference(resolution, [status(thm)], [c_6, c_289])).
% 2.63/1.36  tff(c_50, plain, (m1_subset_1('#skF_5', k1_zfmisc_1('#skF_4'))), inference(cnfTransformation, [status(thm)], [f_79])).
% 2.63/1.36  tff(c_294, plain, (![A_77, B_78]: (k4_xboole_0(A_77, B_78)=k3_subset_1(A_77, B_78) | ~m1_subset_1(B_78, k1_zfmisc_1(A_77)))), inference(cnfTransformation, [status(thm)], [f_58])).
% 2.63/1.36  tff(c_301, plain, (k4_xboole_0('#skF_4', '#skF_5')=k3_subset_1('#skF_4', '#skF_5')), inference(resolution, [status(thm)], [c_50, c_294])).
% 2.63/1.36  tff(c_10, plain, (![D_11, B_7, A_6]: (~r2_hidden(D_11, B_7) | ~r2_hidden(D_11, k4_xboole_0(A_6, B_7)))), inference(cnfTransformation, [status(thm)], [f_42])).
% 2.63/1.36  tff(c_335, plain, (![D_82]: (~r2_hidden(D_82, '#skF_5') | ~r2_hidden(D_82, k3_subset_1('#skF_4', '#skF_5')))), inference(superposition, [status(thm), theory('equality')], [c_301, c_10])).
% 2.63/1.36  tff(c_340, plain, (![B_2]: (~r2_hidden('#skF_1'(k3_subset_1('#skF_4', '#skF_5'), B_2), '#skF_5') | r1_tarski(k3_subset_1('#skF_4', '#skF_5'), B_2))), inference(resolution, [status(thm)], [c_6, c_335])).
% 2.63/1.36  tff(c_428, plain, (![B_94]: (~r1_tarski(k3_subset_1('#skF_4', '#skF_5'), '#skF_5') | r1_tarski(k3_subset_1('#skF_4', '#skF_5'), B_94))), inference(resolution, [status(thm)], [c_424, c_340])).
% 2.63/1.36  tff(c_472, plain, (![B_99]: (r1_tarski(k3_subset_1('#skF_4', '#skF_5'), B_99))), inference(demodulation, [status(thm), theory('equality')], [c_230, c_428])).
% 2.63/1.36  tff(c_245, plain, (![B_66, A_67]: (B_66=A_67 | ~r1_tarski(B_66, A_67) | ~r1_tarski(A_67, B_66))), inference(cnfTransformation, [status(thm)], [f_48])).
% 2.63/1.36  tff(c_257, plain, (![A_23]: (k1_xboole_0=A_23 | ~r1_tarski(A_23, k1_xboole_0))), inference(resolution, [status(thm)], [c_68, c_245])).
% 2.63/1.36  tff(c_484, plain, (k3_subset_1('#skF_4', '#skF_5')=k1_xboole_0), inference(resolution, [status(thm)], [c_472, c_257])).
% 2.63/1.36  tff(c_341, plain, (![A_83, B_84]: (k3_subset_1(A_83, k3_subset_1(A_83, B_84))=B_84 | ~m1_subset_1(B_84, k1_zfmisc_1(A_83)))), inference(cnfTransformation, [status(thm)], [f_62])).
% 2.63/1.36  tff(c_346, plain, (k3_subset_1('#skF_4', k3_subset_1('#skF_4', '#skF_5'))='#skF_5'), inference(resolution, [status(thm)], [c_50, c_341])).
% 2.63/1.36  tff(c_46, plain, (![A_23, B_24]: (k1_subset_1(A_23)=B_24 | ~r1_tarski(B_24, k3_subset_1(A_23, B_24)) | ~m1_subset_1(B_24, k1_zfmisc_1(A_23)))), inference(cnfTransformation, [status(thm)], [f_70])).
% 2.63/1.36  tff(c_400, plain, (![B_91, A_92]: (k1_xboole_0=B_91 | ~r1_tarski(B_91, k3_subset_1(A_92, B_91)) | ~m1_subset_1(B_91, k1_zfmisc_1(A_92)))), inference(demodulation, [status(thm), theory('equality')], [c_34, c_46])).
% 2.63/1.36  tff(c_403, plain, (k3_subset_1('#skF_4', '#skF_5')=k1_xboole_0 | ~r1_tarski(k3_subset_1('#skF_4', '#skF_5'), '#skF_5') | ~m1_subset_1(k3_subset_1('#skF_4', '#skF_5'), k1_zfmisc_1('#skF_4'))), inference(superposition, [status(thm), theory('equality')], [c_346, c_400])).
% 2.63/1.36  tff(c_415, plain, (k3_subset_1('#skF_4', '#skF_5')=k1_xboole_0 | ~m1_subset_1(k3_subset_1('#skF_4', '#skF_5'), k1_zfmisc_1('#skF_4'))), inference(demodulation, [status(thm), theory('equality')], [c_230, c_403])).
% 2.63/1.36  tff(c_423, plain, (~m1_subset_1(k3_subset_1('#skF_4', '#skF_5'), k1_zfmisc_1('#skF_4'))), inference(splitLeft, [status(thm)], [c_415])).
% 2.63/1.36  tff(c_487, plain, (~m1_subset_1(k1_xboole_0, k1_zfmisc_1('#skF_4'))), inference(demodulation, [status(thm), theory('equality')], [c_484, c_423])).
% 2.63/1.36  tff(c_496, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_48, c_487])).
% 2.63/1.36  tff(c_497, plain, (k3_subset_1('#skF_4', '#skF_5')=k1_xboole_0), inference(splitRight, [status(thm)], [c_415])).
% 2.63/1.36  tff(c_501, plain, (k3_subset_1('#skF_4', k1_xboole_0)='#skF_5'), inference(demodulation, [status(thm), theory('equality')], [c_497, c_346])).
% 2.63/1.36  tff(c_507, plain, ('#skF_5'='#skF_4'), inference(demodulation, [status(thm), theory('equality')], [c_66, c_501])).
% 2.63/1.36  tff(c_509, plain, $false, inference(negUnitSimplification, [status(thm)], [c_231, c_507])).
% 2.63/1.36  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.63/1.36  
% 2.63/1.36  Inference rules
% 2.63/1.36  ----------------------
% 2.63/1.36  #Ref     : 0
% 2.63/1.36  #Sup     : 87
% 2.63/1.36  #Fact    : 0
% 2.63/1.36  #Define  : 0
% 2.63/1.36  #Split   : 3
% 2.63/1.36  #Chain   : 0
% 2.63/1.36  #Close   : 0
% 2.63/1.36  
% 2.63/1.36  Ordering : KBO
% 2.63/1.36  
% 2.63/1.36  Simplification rules
% 2.63/1.36  ----------------------
% 2.63/1.36  #Subsume      : 3
% 2.63/1.36  #Demod        : 57
% 2.63/1.36  #Tautology    : 51
% 2.63/1.36  #SimpNegUnit  : 1
% 2.63/1.36  #BackRed      : 19
% 2.63/1.36  
% 2.63/1.36  #Partial instantiations: 0
% 2.63/1.36  #Strategies tried      : 1
% 2.63/1.36  
% 2.63/1.36  Timing (in seconds)
% 2.63/1.36  ----------------------
% 2.63/1.36  Preprocessing        : 0.32
% 2.63/1.36  Parsing              : 0.16
% 2.63/1.36  CNF conversion       : 0.02
% 2.63/1.36  Main loop            : 0.26
% 2.63/1.36  Inferencing          : 0.09
% 2.63/1.36  Reduction            : 0.08
% 2.63/1.36  Demodulation         : 0.06
% 2.63/1.36  BG Simplification    : 0.02
% 2.63/1.36  Subsumption          : 0.05
% 2.63/1.36  Abstraction          : 0.02
% 2.63/1.36  MUC search           : 0.00
% 2.63/1.36  Cooper               : 0.00
% 2.63/1.36  Total                : 0.62
% 2.63/1.36  Index Insertion      : 0.00
% 2.63/1.36  Index Deletion       : 0.00
% 2.63/1.36  Index Matching       : 0.00
% 2.63/1.36  BG Taut test         : 0.00
%------------------------------------------------------------------------------
