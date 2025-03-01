%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0271+2 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Wed Dec 16 12:07:22 EST 2020

% Result     : Theorem 17.47s
% Output     : CNFRefutation 17.47s
% Verified   : 
% Statistics : Number of formulae       :  127 ( 193 expanded)
%              Number of leaves         :   86 ( 115 expanded)
%              Depth                    :    8
%              Number of atoms          :   66 ( 169 expanded)
%              Number of equality atoms :   32 (  78 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r3_xboole_0 > r2_xboole_0 > r2_hidden > r1_xboole_0 > r1_tarski > v1_xboole_0 > k8_enumset1 > k7_enumset1 > k6_enumset1 > k5_enumset1 > k4_enumset1 > k3_enumset1 > k2_enumset1 > k1_enumset1 > k5_xboole_0 > k4_xboole_0 > k4_tarski > k3_xboole_0 > k2_zfmisc_1 > k2_xboole_0 > k2_tarski > #nlpp > k3_tarski > k1_zfmisc_1 > k1_tarski > o_0_0_xboole_0 > k1_xboole_0 > #skF_13 > #skF_26 > #skF_11 > #skF_41 > #skF_33 > #skF_18 > #skF_6 > #skF_44 > #skF_1 > #skF_17 > #skF_32 > #skF_31 > #skF_48 > #skF_4 > #skF_36 > #skF_10 > #skF_47 > #skF_37 > #skF_12 > #skF_45 > #skF_28 > #skF_46 > #skF_35 > #skF_5 > #skF_19 > #skF_30 > #skF_27 > #skF_9 > #skF_7 > #skF_20 > #skF_24 > #skF_34 > #skF_23 > #skF_14 > #skF_3 > #skF_38 > #skF_2 > #skF_21 > #skF_40 > #skF_8 > #skF_25 > #skF_43 > #skF_29 > #skF_16 > #skF_22 > #skF_15 > #skF_42 > #skF_39

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#skF_13',type,(
    '#skF_13': ( $i * ( $i * $i ) ) > $i )).

tff('#skF_26',type,(
    '#skF_26': ( $i * ( $i * $i ) ) > $i )).

tff('#skF_11',type,(
    '#skF_11': ( $i * $i ) > $i )).

tff('#skF_41',type,(
    '#skF_41': ( $i * $i ) > $i )).

tff(o_0_0_xboole_0,type,(
    o_0_0_xboole_0: $i )).

tff('#skF_33',type,(
    '#skF_33': ( $i * ( $i * $i ) ) > $i )).

tff('#skF_18',type,(
    '#skF_18': $i > $i )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff('#skF_6',type,(
    '#skF_6': ( $i * ( $i * $i ) ) > $i )).

tff(k1_tarski,type,(
    k1_tarski: $i > $i )).

tff(k4_xboole_0,type,(
    k4_xboole_0: ( $i * $i ) > $i )).

tff('#skF_44',type,(
    '#skF_44': ( $i * $i ) > $i )).

tff(k4_tarski,type,(
    k4_tarski: ( $i * $i ) > $i )).

tff('#skF_1',type,(
    '#skF_1': $i > $i )).

tff('#skF_17',type,(
    '#skF_17': ( $i * $i ) > $i )).

tff(k1_xboole_0,type,(
    k1_xboole_0: $i )).

tff('#skF_32',type,(
    '#skF_32': ( $i * $i ) > $i )).

tff(k3_enumset1,type,(
    k3_enumset1: ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) > $i )).

tff('#skF_31',type,(
    '#skF_31': ( $i * $i ) > $i )).

tff(k7_enumset1,type,(
    k7_enumset1: ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) ) ) ) ) > $i )).

tff('#skF_48',type,(
    '#skF_48': $i )).

tff('#skF_4',type,(
    '#skF_4': ( $i * ( $i * $i ) ) > $i )).

tff(k5_xboole_0,type,(
    k5_xboole_0: ( $i * $i ) > $i )).

tff('#skF_36',type,(
    '#skF_36': ( $i * ( $i * $i ) ) > $i )).

tff(r1_tarski,type,(
    r1_tarski: ( $i * $i ) > $o )).

tff(k2_enumset1,type,(
    k2_enumset1: ( $i * ( $i * ( $i * $i ) ) ) > $i )).

tff('#skF_10',type,(
    '#skF_10': $i )).

tff('#skF_47',type,(
    '#skF_47': $i )).

tff('#skF_37',type,(
    '#skF_37': ( $i * ( $i * ( $i * $i ) ) ) > $i )).

tff('#skF_12',type,(
    '#skF_12': ( $i * $i ) > $i )).

tff(k2_tarski,type,(
    k2_tarski: ( $i * $i ) > $i )).

tff('#skF_45',type,(
    '#skF_45': $i )).

tff('#skF_28',type,(
    '#skF_28': ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) ) ) ) ) ) > $i )).

tff('#skF_46',type,(
    '#skF_46': $i )).

tff('#skF_35',type,(
    '#skF_35': ( $i * ( $i * $i ) ) > $i )).

tff('#skF_5',type,(
    '#skF_5': ( $i * ( $i * $i ) ) > $i )).

tff(k1_enumset1,type,(
    k1_enumset1: ( $i * ( $i * $i ) ) > $i )).

tff(r1_xboole_0,type,(
    r1_xboole_0: ( $i * $i ) > $o )).

tff('#skF_19',type,(
    '#skF_19': ( $i * ( $i * $i ) ) > $i )).

tff('#skF_30',type,(
    '#skF_30': ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) ) ) ) ) ) ) > $i )).

tff('#skF_27',type,(
    '#skF_27': ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) ) ) ) ) ) > $i )).

tff(k4_enumset1,type,(
    k4_enumset1: ( $i * ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) ) > $i )).

tff('#skF_9',type,(
    '#skF_9': $i )).

tff(k1_zfmisc_1,type,(
    k1_zfmisc_1: $i > $i )).

tff('#skF_7',type,(
    '#skF_7': ( $i * ( $i * $i ) ) > $i )).

tff(r2_xboole_0,type,(
    r2_xboole_0: ( $i * $i ) > $o )).

tff('#skF_20',type,(
    '#skF_20': ( $i * ( $i * $i ) ) > $i )).

tff(k6_enumset1,type,(
    k6_enumset1: ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) ) ) ) > $i )).

tff('#skF_24',type,(
    '#skF_24': ( $i * $i ) > $i )).

tff('#skF_34',type,(
    '#skF_34': ( $i * ( $i * $i ) ) > $i )).

tff('#skF_23',type,(
    '#skF_23': ( $i * $i ) > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#skF_14',type,(
    '#skF_14': ( $i * ( $i * $i ) ) > $i )).

tff(k3_tarski,type,(
    k3_tarski: $i > $i )).

tff(k2_zfmisc_1,type,(
    k2_zfmisc_1: ( $i * $i ) > $i )).

tff(r3_xboole_0,type,(
    r3_xboole_0: ( $i * $i ) > $o )).

tff('#skF_3',type,(
    '#skF_3': ( $i * ( $i * $i ) ) > $i )).

tff('#skF_38',type,(
    '#skF_38': ( $i * ( $i * ( $i * $i ) ) ) > $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i ) > $i )).

tff('#skF_21',type,(
    '#skF_21': ( $i * ( $i * ( $i * $i ) ) ) > $i )).

tff(k8_enumset1,type,(
    k8_enumset1: ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) ) ) ) ) ) > $i )).

tff('#skF_40',type,(
    '#skF_40': ( $i * $i ) > $i )).

tff(k3_xboole_0,type,(
    k3_xboole_0: ( $i * $i ) > $i )).

tff('#skF_8',type,(
    '#skF_8': ( $i * ( $i * $i ) ) > $i )).

tff(k2_xboole_0,type,(
    k2_xboole_0: ( $i * $i ) > $i )).

tff('#skF_25',type,(
    '#skF_25': ( $i * ( $i * $i ) ) > $i )).

tff('#skF_43',type,(
    '#skF_43': ( $i * $i ) > $i )).

tff(k5_enumset1,type,(
    k5_enumset1: ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) ) ) > $i )).

tff('#skF_29',type,(
    '#skF_29': ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * ( $i * $i ) ) ) ) ) ) ) ) ) ) > $i )).

tff('#skF_16',type,(
    '#skF_16': ( $i * $i ) > $i )).

tff(v1_xboole_0,type,(
    v1_xboole_0: $i > $o )).

tff('#skF_22',type,(
    '#skF_22': ( $i * ( $i * ( $i * $i ) ) ) > $i )).

tff('#skF_15',type,(
    '#skF_15': ( $i * $i ) > $i )).

tff('#skF_42',type,(
    '#skF_42': ( $i * ( $i * $i ) ) > $i )).

tff('#skF_39',type,(
    '#skF_39': ( $i * $i ) > $i )).

tff(f_1598,negated_conjecture,(
    ~ ! [A,B] :
        ( k4_xboole_0(k1_tarski(A),B) = k1_xboole_0
      <=> r2_hidden(A,B) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t68_zfmisc_1)).

tff(f_136,axiom,(
    ? [A] : v1_xboole_0(A) ),
    file('/export/starexec/sandbox2/benchmark/Axioms/MPT001+2.ax',rc1_xboole_0)).

tff(f_661,axiom,(
    ! [A] :
      ( v1_xboole_0(A)
     => A = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/Axioms/MPT002+2.ax',t6_boole)).

tff(f_430,axiom,(
    ! [A] : k2_xboole_0(A,k1_xboole_0) = A ),
    file('/export/starexec/sandbox2/benchmark/Axioms/MPT002+2.ax',t1_boole)).

tff(f_515,axiom,(
    ! [A,B] : k2_xboole_0(A,k4_xboole_0(B,A)) = k2_xboole_0(A,B) ),
    file('/export/starexec/sandbox2/benchmark/Axioms/MPT002+2.ax',t39_xboole_1)).

tff(f_61,axiom,(
    ! [A,B] : k2_xboole_0(A,B) = k2_xboole_0(B,A) ),
    file('/export/starexec/sandbox2/benchmark/Axioms/MPT001+2.ax',commutativity_k2_xboole_0)).

tff(f_738,axiom,(
    ! [A,B] : r1_tarski(A,k2_xboole_0(A,B)) ),
    file('/export/starexec/sandbox2/benchmark/Axioms/MPT002+2.ax',t7_xboole_1)).

tff(f_1402,axiom,(
    ! [A,B] :
      ( r1_tarski(k1_tarski(A),B)
    <=> r2_hidden(A,B) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t37_zfmisc_1)).

tff(f_1232,axiom,(
    ! [A,B] :
      ( k4_xboole_0(k1_tarski(A),B) = k1_xboole_0
    <=> r2_hidden(A,B) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l35_zfmisc_1)).

tff(c_1196,plain,
    ( r2_hidden('#skF_45','#skF_46')
    | ~ r2_hidden('#skF_47','#skF_48') ),
    inference(cnfTransformation,[status(thm)],[f_1598])).

tff(c_1265,plain,(
    ~ r2_hidden('#skF_47','#skF_48') ),
    inference(splitLeft,[status(thm)],[c_1196])).

tff(c_112,plain,(
    v1_xboole_0('#skF_9') ),
    inference(cnfTransformation,[status(thm)],[f_136])).

tff(c_1269,plain,(
    ! [A_1181] :
      ( k1_xboole_0 = A_1181
      | ~ v1_xboole_0(A_1181) ) ),
    inference(cnfTransformation,[status(thm)],[f_661])).

tff(c_1278,plain,(
    k1_xboole_0 = '#skF_9' ),
    inference(resolution,[status(thm)],[c_112,c_1269])).

tff(c_296,plain,(
    ! [A_183] : k2_xboole_0(A_183,k1_xboole_0) = A_183 ),
    inference(cnfTransformation,[status(thm)],[f_430])).

tff(c_1326,plain,(
    ! [A_183] : k2_xboole_0(A_183,'#skF_9') = A_183 ),
    inference(demodulation,[status(thm),theory(equality)],[c_1278,c_296])).

tff(c_1200,plain,
    ( r2_hidden('#skF_45','#skF_46')
    | k4_xboole_0(k1_tarski('#skF_47'),'#skF_48') = k1_xboole_0 ),
    inference(cnfTransformation,[status(thm)],[f_1598])).

tff(c_1364,plain,
    ( r2_hidden('#skF_45','#skF_46')
    | k4_xboole_0(k1_tarski('#skF_47'),'#skF_48') = '#skF_9' ),
    inference(demodulation,[status(thm),theory(equality)],[c_1278,c_1200])).

tff(c_1365,plain,(
    k4_xboole_0(k1_tarski('#skF_47'),'#skF_48') = '#skF_9' ),
    inference(splitLeft,[status(thm)],[c_1364])).

tff(c_5888,plain,(
    ! [A_1479,B_1480] : k2_xboole_0(A_1479,k4_xboole_0(B_1480,A_1479)) = k2_xboole_0(A_1479,B_1480) ),
    inference(cnfTransformation,[status(thm)],[f_515])).

tff(c_6000,plain,(
    k2_xboole_0('#skF_48',k1_tarski('#skF_47')) = k2_xboole_0('#skF_48','#skF_9') ),
    inference(superposition,[status(thm),theory(equality)],[c_1365,c_5888])).

tff(c_6028,plain,(
    k2_xboole_0('#skF_48',k1_tarski('#skF_47')) = '#skF_48' ),
    inference(demodulation,[status(thm),theory(equality)],[c_1326,c_6000])).

tff(c_6,plain,(
    ! [B_6,A_5] : k2_xboole_0(B_6,A_5) = k2_xboole_0(A_5,B_6) ),
    inference(cnfTransformation,[status(thm)],[f_61])).

tff(c_454,plain,(
    ! [A_361,B_362] : r1_tarski(A_361,k2_xboole_0(A_361,B_362)) ),
    inference(cnfTransformation,[status(thm)],[f_738])).

tff(c_3062,plain,(
    ! [A_1344,B_1345] :
      ( r2_hidden(A_1344,B_1345)
      | ~ r1_tarski(k1_tarski(A_1344),B_1345) ) ),
    inference(cnfTransformation,[status(thm)],[f_1402])).

tff(c_3089,plain,(
    ! [A_1346,B_1347] : r2_hidden(A_1346,k2_xboole_0(k1_tarski(A_1346),B_1347)) ),
    inference(resolution,[status(thm)],[c_454,c_3062])).

tff(c_3106,plain,(
    ! [A_1346,B_6] : r2_hidden(A_1346,k2_xboole_0(B_6,k1_tarski(A_1346))) ),
    inference(superposition,[status(thm),theory(equality)],[c_6,c_3089])).

tff(c_6046,plain,(
    r2_hidden('#skF_47','#skF_48') ),
    inference(superposition,[status(thm),theory(equality)],[c_6028,c_3106])).

tff(c_6084,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_1265,c_6046])).

tff(c_6085,plain,(
    r2_hidden('#skF_45','#skF_46') ),
    inference(splitRight,[status(thm)],[c_1364])).

tff(c_988,plain,(
    ! [A_1011,B_1012] :
      ( k4_xboole_0(k1_tarski(A_1011),B_1012) = k1_xboole_0
      | ~ r2_hidden(A_1011,B_1012) ) ),
    inference(cnfTransformation,[status(thm)],[f_1232])).

tff(c_17803,plain,(
    ! [A_1995,B_1996] :
      ( k4_xboole_0(k1_tarski(A_1995),B_1996) = '#skF_9'
      | ~ r2_hidden(A_1995,B_1996) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_1278,c_988])).

tff(c_1198,plain,
    ( k4_xboole_0(k1_tarski('#skF_45'),'#skF_46') != k1_xboole_0
    | k4_xboole_0(k1_tarski('#skF_47'),'#skF_48') = k1_xboole_0 ),
    inference(cnfTransformation,[status(thm)],[f_1598])).

tff(c_6097,plain,
    ( k4_xboole_0(k1_tarski('#skF_45'),'#skF_46') != '#skF_9'
    | k4_xboole_0(k1_tarski('#skF_47'),'#skF_48') = '#skF_9' ),
    inference(demodulation,[status(thm),theory(equality)],[c_1278,c_1278,c_1198])).

tff(c_6098,plain,(
    k4_xboole_0(k1_tarski('#skF_45'),'#skF_46') != '#skF_9' ),
    inference(splitLeft,[status(thm)],[c_6097])).

tff(c_17961,plain,(
    ~ r2_hidden('#skF_45','#skF_46') ),
    inference(superposition,[status(thm),theory(equality)],[c_17803,c_6098])).

tff(c_18056,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_6085,c_17961])).

tff(c_18057,plain,(
    k4_xboole_0(k1_tarski('#skF_47'),'#skF_48') = '#skF_9' ),
    inference(splitRight,[status(thm)],[c_6097])).

tff(c_6086,plain,(
    k4_xboole_0(k1_tarski('#skF_47'),'#skF_48') != '#skF_9' ),
    inference(splitRight,[status(thm)],[c_1364])).

tff(c_18316,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_18057,c_6086])).

tff(c_18317,plain,(
    r2_hidden('#skF_45','#skF_46') ),
    inference(splitRight,[status(thm)],[c_1196])).

tff(c_18343,plain,(
    ! [A_2034] :
      ( k1_xboole_0 = A_2034
      | ~ v1_xboole_0(A_2034) ) ),
    inference(cnfTransformation,[status(thm)],[f_661])).

tff(c_18352,plain,(
    k1_xboole_0 = '#skF_9' ),
    inference(resolution,[status(thm)],[c_112,c_18343])).

tff(c_37725,plain,(
    ! [A_2696,B_2697] :
      ( k4_xboole_0(k1_tarski(A_2696),B_2697) = '#skF_9'
      | ~ r2_hidden(A_2696,B_2697) ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_18352,c_988])).

tff(c_18318,plain,(
    r2_hidden('#skF_47','#skF_48') ),
    inference(splitRight,[status(thm)],[c_1196])).

tff(c_1194,plain,
    ( k4_xboole_0(k1_tarski('#skF_45'),'#skF_46') != k1_xboole_0
    | ~ r2_hidden('#skF_47','#skF_48') ),
    inference(cnfTransformation,[status(thm)],[f_1598])).

tff(c_18354,plain,(
    k4_xboole_0(k1_tarski('#skF_45'),'#skF_46') != k1_xboole_0 ),
    inference(demodulation,[status(thm),theory(equality)],[c_18318,c_1194])).

tff(c_18355,plain,(
    k4_xboole_0(k1_tarski('#skF_45'),'#skF_46') != '#skF_9' ),
    inference(demodulation,[status(thm),theory(equality)],[c_18352,c_18354])).

tff(c_37946,plain,(
    ~ r2_hidden('#skF_45','#skF_46') ),
    inference(superposition,[status(thm),theory(equality)],[c_37725,c_18355])).

tff(c_38065,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_18317,c_37946])).
%------------------------------------------------------------------------------
