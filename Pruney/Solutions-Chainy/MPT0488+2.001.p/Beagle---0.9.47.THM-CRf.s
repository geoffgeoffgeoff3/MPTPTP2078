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
% DateTime   : Thu Dec  3 09:59:34 EST 2020

% Result     : Theorem 2.79s
% Output     : CNFRefutation 2.79s
% Verified   : 
% Statistics : Number of formulae       :   59 (  99 expanded)
%              Number of leaves         :   23 (  45 expanded)
%              Depth                    :    8
%              Number of atoms          :   94 ( 207 expanded)
%              Number of equality atoms :    2 (   8 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ r2_hidden > v1_relat_1 > k7_relat_1 > k4_tarski > #nlpp > k1_relat_1 > #skF_6 > #skF_1 > #skF_11 > #skF_4 > #skF_10 > #skF_2 > #skF_9 > #skF_3 > #skF_8 > #skF_7 > #skF_5

%Foreground sorts:

%Background operators:

%Foreground operators:
tff('#skF_6',type,(
    '#skF_6': ( $i * $i ) > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i * $i ) > $i )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff('#skF_11',type,(
    '#skF_11': $i )).

tff(k7_relat_1,type,(
    k7_relat_1: ( $i * $i ) > $i )).

tff(k4_tarski,type,(
    k4_tarski: ( $i * $i ) > $i )).

tff('#skF_4',type,(
    '#skF_4': ( $i * $i * $i ) > $i )).

tff('#skF_10',type,(
    '#skF_10': $i )).

tff('#skF_2',type,(
    '#skF_2': ( $i * $i * $i ) > $i )).

tff('#skF_9',type,(
    '#skF_9': $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff(v1_relat_1,type,(
    v1_relat_1: $i > $o )).

tff('#skF_3',type,(
    '#skF_3': ( $i * $i * $i ) > $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff('#skF_8',type,(
    '#skF_8': ( $i * $i * $i ) > $i )).

tff('#skF_7',type,(
    '#skF_7': ( $i * $i ) > $i )).

tff('#skF_5',type,(
    '#skF_5': ( $i * $i ) > $i )).

tff(k1_relat_1,type,(
    k1_relat_1: $i > $i )).

tff(f_60,negated_conjecture,(
    ~ ! [A,B,C] :
        ( v1_relat_1(C)
       => ( r2_hidden(A,k1_relat_1(k7_relat_1(C,B)))
        <=> ( r2_hidden(A,B)
            & r2_hidden(A,k1_relat_1(C)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t86_relat_1)).

tff(f_51,axiom,(
    ! [A,B] :
      ( v1_relat_1(A)
     => v1_relat_1(k7_relat_1(A,B)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k7_relat_1)).

tff(f_47,axiom,(
    ! [A,B] :
      ( B = k1_relat_1(A)
    <=> ! [C] :
          ( r2_hidden(C,B)
        <=> ? [D] : r2_hidden(k4_tarski(C,D),A) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_relat_1)).

tff(f_39,axiom,(
    ! [A] :
      ( v1_relat_1(A)
     => ! [B,C] :
          ( v1_relat_1(C)
         => ( C = k7_relat_1(A,B)
          <=> ! [D,E] :
                ( r2_hidden(k4_tarski(D,E),C)
              <=> ( r2_hidden(D,B)
                  & r2_hidden(k4_tarski(D,E),A) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d11_relat_1)).

tff(c_34,plain,(
    v1_relat_1('#skF_11') ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_32,plain,(
    ! [A_39,B_40] :
      ( v1_relat_1(k7_relat_1(A_39,B_40))
      | ~ v1_relat_1(A_39) ) ),
    inference(cnfTransformation,[status(thm)],[f_51])).

tff(c_42,plain,
    ( r2_hidden('#skF_9',k1_relat_1(k7_relat_1('#skF_11','#skF_10')))
    | r2_hidden('#skF_9',k1_relat_1('#skF_11')) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_50,plain,(
    r2_hidden('#skF_9',k1_relat_1('#skF_11')) ),
    inference(splitLeft,[status(thm)],[c_42])).

tff(c_46,plain,
    ( r2_hidden('#skF_9',k1_relat_1(k7_relat_1('#skF_11','#skF_10')))
    | r2_hidden('#skF_9','#skF_10') ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_48,plain,(
    r2_hidden('#skF_9','#skF_10') ),
    inference(splitLeft,[status(thm)],[c_46])).

tff(c_20,plain,(
    ! [C_35,A_20] :
      ( r2_hidden(k4_tarski(C_35,'#skF_8'(A_20,k1_relat_1(A_20),C_35)),A_20)
      | ~ r2_hidden(C_35,k1_relat_1(A_20)) ) ),
    inference(cnfTransformation,[status(thm)],[f_47])).

tff(c_153,plain,(
    ! [D_75,E_76,A_77,B_78] :
      ( r2_hidden(k4_tarski(D_75,E_76),k7_relat_1(A_77,B_78))
      | ~ r2_hidden(k4_tarski(D_75,E_76),A_77)
      | ~ r2_hidden(D_75,B_78)
      | ~ v1_relat_1(k7_relat_1(A_77,B_78))
      | ~ v1_relat_1(A_77) ) ),
    inference(cnfTransformation,[status(thm)],[f_39])).

tff(c_22,plain,(
    ! [C_35,A_20,D_38] :
      ( r2_hidden(C_35,k1_relat_1(A_20))
      | ~ r2_hidden(k4_tarski(C_35,D_38),A_20) ) ),
    inference(cnfTransformation,[status(thm)],[f_47])).

tff(c_170,plain,(
    ! [D_79,A_80,B_81,E_82] :
      ( r2_hidden(D_79,k1_relat_1(k7_relat_1(A_80,B_81)))
      | ~ r2_hidden(k4_tarski(D_79,E_82),A_80)
      | ~ r2_hidden(D_79,B_81)
      | ~ v1_relat_1(k7_relat_1(A_80,B_81))
      | ~ v1_relat_1(A_80) ) ),
    inference(resolution,[status(thm)],[c_153,c_22])).

tff(c_183,plain,(
    ! [C_83,A_84,B_85] :
      ( r2_hidden(C_83,k1_relat_1(k7_relat_1(A_84,B_85)))
      | ~ r2_hidden(C_83,B_85)
      | ~ v1_relat_1(k7_relat_1(A_84,B_85))
      | ~ v1_relat_1(A_84)
      | ~ r2_hidden(C_83,k1_relat_1(A_84)) ) ),
    inference(resolution,[status(thm)],[c_20,c_170])).

tff(c_36,plain,
    ( ~ r2_hidden('#skF_9',k1_relat_1('#skF_11'))
    | ~ r2_hidden('#skF_9','#skF_10')
    | ~ r2_hidden('#skF_9',k1_relat_1(k7_relat_1('#skF_11','#skF_10'))) ),
    inference(cnfTransformation,[status(thm)],[f_60])).

tff(c_53,plain,(
    ~ r2_hidden('#skF_9',k1_relat_1(k7_relat_1('#skF_11','#skF_10'))) ),
    inference(demodulation,[status(thm),theory(equality)],[c_48,c_50,c_36])).

tff(c_202,plain,
    ( ~ r2_hidden('#skF_9','#skF_10')
    | ~ v1_relat_1(k7_relat_1('#skF_11','#skF_10'))
    | ~ v1_relat_1('#skF_11')
    | ~ r2_hidden('#skF_9',k1_relat_1('#skF_11')) ),
    inference(resolution,[status(thm)],[c_183,c_53])).

tff(c_214,plain,(
    ~ v1_relat_1(k7_relat_1('#skF_11','#skF_10')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_50,c_34,c_48,c_202])).

tff(c_218,plain,(
    ~ v1_relat_1('#skF_11') ),
    inference(resolution,[status(thm)],[c_32,c_214])).

tff(c_222,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_34,c_218])).

tff(c_224,plain,(
    ~ r2_hidden('#skF_9',k1_relat_1('#skF_11')) ),
    inference(splitRight,[status(thm)],[c_42])).

tff(c_223,plain,(
    r2_hidden('#skF_9',k1_relat_1(k7_relat_1('#skF_11','#skF_10'))) ),
    inference(splitRight,[status(thm)],[c_42])).

tff(c_284,plain,(
    ! [D_104,E_105,A_106,B_107] :
      ( r2_hidden(k4_tarski(D_104,E_105),A_106)
      | ~ r2_hidden(k4_tarski(D_104,E_105),k7_relat_1(A_106,B_107))
      | ~ v1_relat_1(k7_relat_1(A_106,B_107))
      | ~ v1_relat_1(A_106) ) ),
    inference(cnfTransformation,[status(thm)],[f_39])).

tff(c_444,plain,(
    ! [C_136,A_137,B_138] :
      ( r2_hidden(k4_tarski(C_136,'#skF_8'(k7_relat_1(A_137,B_138),k1_relat_1(k7_relat_1(A_137,B_138)),C_136)),A_137)
      | ~ v1_relat_1(k7_relat_1(A_137,B_138))
      | ~ v1_relat_1(A_137)
      | ~ r2_hidden(C_136,k1_relat_1(k7_relat_1(A_137,B_138))) ) ),
    inference(resolution,[status(thm)],[c_20,c_284])).

tff(c_474,plain,(
    ! [C_139,A_140,B_141] :
      ( r2_hidden(C_139,k1_relat_1(A_140))
      | ~ v1_relat_1(k7_relat_1(A_140,B_141))
      | ~ v1_relat_1(A_140)
      | ~ r2_hidden(C_139,k1_relat_1(k7_relat_1(A_140,B_141))) ) ),
    inference(resolution,[status(thm)],[c_444,c_22])).

tff(c_520,plain,
    ( r2_hidden('#skF_9',k1_relat_1('#skF_11'))
    | ~ v1_relat_1(k7_relat_1('#skF_11','#skF_10'))
    | ~ v1_relat_1('#skF_11') ),
    inference(resolution,[status(thm)],[c_223,c_474])).

tff(c_534,plain,
    ( r2_hidden('#skF_9',k1_relat_1('#skF_11'))
    | ~ v1_relat_1(k7_relat_1('#skF_11','#skF_10')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_34,c_520])).

tff(c_535,plain,(
    ~ v1_relat_1(k7_relat_1('#skF_11','#skF_10')) ),
    inference(negUnitSimplification,[status(thm)],[c_224,c_534])).

tff(c_599,plain,(
    ~ v1_relat_1('#skF_11') ),
    inference(resolution,[status(thm)],[c_32,c_535])).

tff(c_603,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_34,c_599])).

tff(c_605,plain,(
    ~ r2_hidden('#skF_9','#skF_10') ),
    inference(splitRight,[status(thm)],[c_46])).

tff(c_604,plain,(
    r2_hidden('#skF_9',k1_relat_1(k7_relat_1('#skF_11','#skF_10'))) ),
    inference(splitRight,[status(thm)],[c_46])).

tff(c_617,plain,(
    ! [D_155,B_156,E_157,A_158] :
      ( r2_hidden(D_155,B_156)
      | ~ r2_hidden(k4_tarski(D_155,E_157),k7_relat_1(A_158,B_156))
      | ~ v1_relat_1(k7_relat_1(A_158,B_156))
      | ~ v1_relat_1(A_158) ) ),
    inference(cnfTransformation,[status(thm)],[f_39])).

tff(c_623,plain,(
    ! [C_159,B_160,A_161] :
      ( r2_hidden(C_159,B_160)
      | ~ v1_relat_1(k7_relat_1(A_161,B_160))
      | ~ v1_relat_1(A_161)
      | ~ r2_hidden(C_159,k1_relat_1(k7_relat_1(A_161,B_160))) ) ),
    inference(resolution,[status(thm)],[c_20,c_617])).

tff(c_634,plain,
    ( r2_hidden('#skF_9','#skF_10')
    | ~ v1_relat_1(k7_relat_1('#skF_11','#skF_10'))
    | ~ v1_relat_1('#skF_11') ),
    inference(resolution,[status(thm)],[c_604,c_623])).

tff(c_639,plain,
    ( r2_hidden('#skF_9','#skF_10')
    | ~ v1_relat_1(k7_relat_1('#skF_11','#skF_10')) ),
    inference(demodulation,[status(thm),theory(equality)],[c_34,c_634])).

tff(c_640,plain,(
    ~ v1_relat_1(k7_relat_1('#skF_11','#skF_10')) ),
    inference(negUnitSimplification,[status(thm)],[c_605,c_639])).

tff(c_643,plain,(
    ~ v1_relat_1('#skF_11') ),
    inference(resolution,[status(thm)],[c_32,c_640])).

tff(c_647,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_34,c_643])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 12:08:51 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.36  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.79/1.41  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.79/1.41  
% 2.79/1.41  % SZS output start CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.79/1.41  %$ r2_hidden > v1_relat_1 > k7_relat_1 > k4_tarski > #nlpp > k1_relat_1 > #skF_6 > #skF_1 > #skF_11 > #skF_4 > #skF_10 > #skF_2 > #skF_9 > #skF_3 > #skF_8 > #skF_7 > #skF_5
% 2.79/1.41  
% 2.79/1.41  %Foreground sorts:
% 2.79/1.41  
% 2.79/1.41  
% 2.79/1.41  %Background operators:
% 2.79/1.41  
% 2.79/1.41  
% 2.79/1.41  %Foreground operators:
% 2.79/1.41  tff('#skF_6', type, '#skF_6': ($i * $i) > $i).
% 2.79/1.41  tff('#skF_1', type, '#skF_1': ($i * $i * $i) > $i).
% 2.79/1.41  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.79/1.41  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 2.79/1.41  tff('#skF_11', type, '#skF_11': $i).
% 2.79/1.41  tff(k7_relat_1, type, k7_relat_1: ($i * $i) > $i).
% 2.79/1.41  tff(k4_tarski, type, k4_tarski: ($i * $i) > $i).
% 2.79/1.41  tff('#skF_4', type, '#skF_4': ($i * $i * $i) > $i).
% 2.79/1.41  tff('#skF_10', type, '#skF_10': $i).
% 2.79/1.41  tff('#skF_2', type, '#skF_2': ($i * $i * $i) > $i).
% 2.79/1.41  tff('#skF_9', type, '#skF_9': $i).
% 2.79/1.41  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.79/1.41  tff(v1_relat_1, type, v1_relat_1: $i > $o).
% 2.79/1.41  tff('#skF_3', type, '#skF_3': ($i * $i * $i) > $i).
% 2.79/1.41  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.79/1.41  tff('#skF_8', type, '#skF_8': ($i * $i * $i) > $i).
% 2.79/1.41  tff('#skF_7', type, '#skF_7': ($i * $i) > $i).
% 2.79/1.42  tff('#skF_5', type, '#skF_5': ($i * $i) > $i).
% 2.79/1.42  tff(k1_relat_1, type, k1_relat_1: $i > $i).
% 2.79/1.42  
% 2.79/1.43  tff(f_60, negated_conjecture, ~(![A, B, C]: (v1_relat_1(C) => (r2_hidden(A, k1_relat_1(k7_relat_1(C, B))) <=> (r2_hidden(A, B) & r2_hidden(A, k1_relat_1(C)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t86_relat_1)).
% 2.79/1.43  tff(f_51, axiom, (![A, B]: (v1_relat_1(A) => v1_relat_1(k7_relat_1(A, B)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k7_relat_1)).
% 2.79/1.43  tff(f_47, axiom, (![A, B]: ((B = k1_relat_1(A)) <=> (![C]: (r2_hidden(C, B) <=> (?[D]: r2_hidden(k4_tarski(C, D), A)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_relat_1)).
% 2.79/1.43  tff(f_39, axiom, (![A]: (v1_relat_1(A) => (![B, C]: (v1_relat_1(C) => ((C = k7_relat_1(A, B)) <=> (![D, E]: (r2_hidden(k4_tarski(D, E), C) <=> (r2_hidden(D, B) & r2_hidden(k4_tarski(D, E), A))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d11_relat_1)).
% 2.79/1.43  tff(c_34, plain, (v1_relat_1('#skF_11')), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.79/1.43  tff(c_32, plain, (![A_39, B_40]: (v1_relat_1(k7_relat_1(A_39, B_40)) | ~v1_relat_1(A_39))), inference(cnfTransformation, [status(thm)], [f_51])).
% 2.79/1.43  tff(c_42, plain, (r2_hidden('#skF_9', k1_relat_1(k7_relat_1('#skF_11', '#skF_10'))) | r2_hidden('#skF_9', k1_relat_1('#skF_11'))), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.79/1.43  tff(c_50, plain, (r2_hidden('#skF_9', k1_relat_1('#skF_11'))), inference(splitLeft, [status(thm)], [c_42])).
% 2.79/1.43  tff(c_46, plain, (r2_hidden('#skF_9', k1_relat_1(k7_relat_1('#skF_11', '#skF_10'))) | r2_hidden('#skF_9', '#skF_10')), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.79/1.43  tff(c_48, plain, (r2_hidden('#skF_9', '#skF_10')), inference(splitLeft, [status(thm)], [c_46])).
% 2.79/1.43  tff(c_20, plain, (![C_35, A_20]: (r2_hidden(k4_tarski(C_35, '#skF_8'(A_20, k1_relat_1(A_20), C_35)), A_20) | ~r2_hidden(C_35, k1_relat_1(A_20)))), inference(cnfTransformation, [status(thm)], [f_47])).
% 2.79/1.43  tff(c_153, plain, (![D_75, E_76, A_77, B_78]: (r2_hidden(k4_tarski(D_75, E_76), k7_relat_1(A_77, B_78)) | ~r2_hidden(k4_tarski(D_75, E_76), A_77) | ~r2_hidden(D_75, B_78) | ~v1_relat_1(k7_relat_1(A_77, B_78)) | ~v1_relat_1(A_77))), inference(cnfTransformation, [status(thm)], [f_39])).
% 2.79/1.43  tff(c_22, plain, (![C_35, A_20, D_38]: (r2_hidden(C_35, k1_relat_1(A_20)) | ~r2_hidden(k4_tarski(C_35, D_38), A_20))), inference(cnfTransformation, [status(thm)], [f_47])).
% 2.79/1.43  tff(c_170, plain, (![D_79, A_80, B_81, E_82]: (r2_hidden(D_79, k1_relat_1(k7_relat_1(A_80, B_81))) | ~r2_hidden(k4_tarski(D_79, E_82), A_80) | ~r2_hidden(D_79, B_81) | ~v1_relat_1(k7_relat_1(A_80, B_81)) | ~v1_relat_1(A_80))), inference(resolution, [status(thm)], [c_153, c_22])).
% 2.79/1.43  tff(c_183, plain, (![C_83, A_84, B_85]: (r2_hidden(C_83, k1_relat_1(k7_relat_1(A_84, B_85))) | ~r2_hidden(C_83, B_85) | ~v1_relat_1(k7_relat_1(A_84, B_85)) | ~v1_relat_1(A_84) | ~r2_hidden(C_83, k1_relat_1(A_84)))), inference(resolution, [status(thm)], [c_20, c_170])).
% 2.79/1.43  tff(c_36, plain, (~r2_hidden('#skF_9', k1_relat_1('#skF_11')) | ~r2_hidden('#skF_9', '#skF_10') | ~r2_hidden('#skF_9', k1_relat_1(k7_relat_1('#skF_11', '#skF_10')))), inference(cnfTransformation, [status(thm)], [f_60])).
% 2.79/1.43  tff(c_53, plain, (~r2_hidden('#skF_9', k1_relat_1(k7_relat_1('#skF_11', '#skF_10')))), inference(demodulation, [status(thm), theory('equality')], [c_48, c_50, c_36])).
% 2.79/1.43  tff(c_202, plain, (~r2_hidden('#skF_9', '#skF_10') | ~v1_relat_1(k7_relat_1('#skF_11', '#skF_10')) | ~v1_relat_1('#skF_11') | ~r2_hidden('#skF_9', k1_relat_1('#skF_11'))), inference(resolution, [status(thm)], [c_183, c_53])).
% 2.79/1.43  tff(c_214, plain, (~v1_relat_1(k7_relat_1('#skF_11', '#skF_10'))), inference(demodulation, [status(thm), theory('equality')], [c_50, c_34, c_48, c_202])).
% 2.79/1.43  tff(c_218, plain, (~v1_relat_1('#skF_11')), inference(resolution, [status(thm)], [c_32, c_214])).
% 2.79/1.43  tff(c_222, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_34, c_218])).
% 2.79/1.43  tff(c_224, plain, (~r2_hidden('#skF_9', k1_relat_1('#skF_11'))), inference(splitRight, [status(thm)], [c_42])).
% 2.79/1.43  tff(c_223, plain, (r2_hidden('#skF_9', k1_relat_1(k7_relat_1('#skF_11', '#skF_10')))), inference(splitRight, [status(thm)], [c_42])).
% 2.79/1.43  tff(c_284, plain, (![D_104, E_105, A_106, B_107]: (r2_hidden(k4_tarski(D_104, E_105), A_106) | ~r2_hidden(k4_tarski(D_104, E_105), k7_relat_1(A_106, B_107)) | ~v1_relat_1(k7_relat_1(A_106, B_107)) | ~v1_relat_1(A_106))), inference(cnfTransformation, [status(thm)], [f_39])).
% 2.79/1.43  tff(c_444, plain, (![C_136, A_137, B_138]: (r2_hidden(k4_tarski(C_136, '#skF_8'(k7_relat_1(A_137, B_138), k1_relat_1(k7_relat_1(A_137, B_138)), C_136)), A_137) | ~v1_relat_1(k7_relat_1(A_137, B_138)) | ~v1_relat_1(A_137) | ~r2_hidden(C_136, k1_relat_1(k7_relat_1(A_137, B_138))))), inference(resolution, [status(thm)], [c_20, c_284])).
% 2.79/1.43  tff(c_474, plain, (![C_139, A_140, B_141]: (r2_hidden(C_139, k1_relat_1(A_140)) | ~v1_relat_1(k7_relat_1(A_140, B_141)) | ~v1_relat_1(A_140) | ~r2_hidden(C_139, k1_relat_1(k7_relat_1(A_140, B_141))))), inference(resolution, [status(thm)], [c_444, c_22])).
% 2.79/1.43  tff(c_520, plain, (r2_hidden('#skF_9', k1_relat_1('#skF_11')) | ~v1_relat_1(k7_relat_1('#skF_11', '#skF_10')) | ~v1_relat_1('#skF_11')), inference(resolution, [status(thm)], [c_223, c_474])).
% 2.79/1.43  tff(c_534, plain, (r2_hidden('#skF_9', k1_relat_1('#skF_11')) | ~v1_relat_1(k7_relat_1('#skF_11', '#skF_10'))), inference(demodulation, [status(thm), theory('equality')], [c_34, c_520])).
% 2.79/1.43  tff(c_535, plain, (~v1_relat_1(k7_relat_1('#skF_11', '#skF_10'))), inference(negUnitSimplification, [status(thm)], [c_224, c_534])).
% 2.79/1.43  tff(c_599, plain, (~v1_relat_1('#skF_11')), inference(resolution, [status(thm)], [c_32, c_535])).
% 2.79/1.43  tff(c_603, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_34, c_599])).
% 2.79/1.43  tff(c_605, plain, (~r2_hidden('#skF_9', '#skF_10')), inference(splitRight, [status(thm)], [c_46])).
% 2.79/1.43  tff(c_604, plain, (r2_hidden('#skF_9', k1_relat_1(k7_relat_1('#skF_11', '#skF_10')))), inference(splitRight, [status(thm)], [c_46])).
% 2.79/1.43  tff(c_617, plain, (![D_155, B_156, E_157, A_158]: (r2_hidden(D_155, B_156) | ~r2_hidden(k4_tarski(D_155, E_157), k7_relat_1(A_158, B_156)) | ~v1_relat_1(k7_relat_1(A_158, B_156)) | ~v1_relat_1(A_158))), inference(cnfTransformation, [status(thm)], [f_39])).
% 2.79/1.43  tff(c_623, plain, (![C_159, B_160, A_161]: (r2_hidden(C_159, B_160) | ~v1_relat_1(k7_relat_1(A_161, B_160)) | ~v1_relat_1(A_161) | ~r2_hidden(C_159, k1_relat_1(k7_relat_1(A_161, B_160))))), inference(resolution, [status(thm)], [c_20, c_617])).
% 2.79/1.43  tff(c_634, plain, (r2_hidden('#skF_9', '#skF_10') | ~v1_relat_1(k7_relat_1('#skF_11', '#skF_10')) | ~v1_relat_1('#skF_11')), inference(resolution, [status(thm)], [c_604, c_623])).
% 2.79/1.43  tff(c_639, plain, (r2_hidden('#skF_9', '#skF_10') | ~v1_relat_1(k7_relat_1('#skF_11', '#skF_10'))), inference(demodulation, [status(thm), theory('equality')], [c_34, c_634])).
% 2.79/1.43  tff(c_640, plain, (~v1_relat_1(k7_relat_1('#skF_11', '#skF_10'))), inference(negUnitSimplification, [status(thm)], [c_605, c_639])).
% 2.79/1.43  tff(c_643, plain, (~v1_relat_1('#skF_11')), inference(resolution, [status(thm)], [c_32, c_640])).
% 2.79/1.43  tff(c_647, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_34, c_643])).
% 2.79/1.43  % SZS output end CNFRefutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.79/1.43  
% 2.79/1.43  Inference rules
% 2.79/1.43  ----------------------
% 2.79/1.43  #Ref     : 0
% 2.79/1.43  #Sup     : 120
% 2.79/1.43  #Fact    : 0
% 2.79/1.43  #Define  : 0
% 2.79/1.43  #Split   : 2
% 2.79/1.43  #Chain   : 0
% 2.79/1.43  #Close   : 0
% 2.79/1.43  
% 2.79/1.43  Ordering : KBO
% 2.79/1.43  
% 2.79/1.43  Simplification rules
% 2.79/1.43  ----------------------
% 2.79/1.43  #Subsume      : 2
% 2.79/1.43  #Demod        : 16
% 2.79/1.43  #Tautology    : 19
% 2.79/1.43  #SimpNegUnit  : 2
% 2.79/1.43  #BackRed      : 0
% 2.79/1.43  
% 2.79/1.43  #Partial instantiations: 0
% 2.79/1.43  #Strategies tried      : 1
% 2.79/1.43  
% 2.79/1.43  Timing (in seconds)
% 2.79/1.43  ----------------------
% 2.79/1.43  Preprocessing        : 0.29
% 2.79/1.43  Parsing              : 0.15
% 2.79/1.43  CNF conversion       : 0.03
% 2.79/1.43  Main loop            : 0.35
% 2.79/1.43  Inferencing          : 0.14
% 2.79/1.43  Reduction            : 0.08
% 2.79/1.43  Demodulation         : 0.06
% 2.79/1.43  BG Simplification    : 0.02
% 2.79/1.43  Subsumption          : 0.08
% 2.79/1.43  Abstraction          : 0.02
% 2.79/1.43  MUC search           : 0.00
% 2.79/1.43  Cooper               : 0.00
% 2.79/1.43  Total                : 0.66
% 2.79/1.43  Index Insertion      : 0.00
% 2.79/1.43  Index Deletion       : 0.00
% 2.79/1.43  Index Matching       : 0.00
% 2.79/1.43  BG Taut test         : 0.00
%------------------------------------------------------------------------------
