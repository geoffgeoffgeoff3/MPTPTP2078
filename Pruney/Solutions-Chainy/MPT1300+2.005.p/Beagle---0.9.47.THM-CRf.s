%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:22:45 EST 2020

% Result     : Theorem 2.20s
% Output     : CNFRefutation 2.20s
% Verified   : 
% Statistics : Number of formulae       :   53 ( 138 expanded)
%              Number of leaves         :   19 (  57 expanded)
%              Depth                    :   13
%              Number of atoms          :   99 ( 418 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
%$ v3_pre_topc > v1_tops_2 > r2_hidden > r1_tarski > m1_subset_1 > l1_pre_topc > #nlpp > u1_struct_0 > k1_zfmisc_1 > #skF_2 > #skF_3 > #skF_4 > #skF_1

%Foreground sorts:

%Background operators:

%Foreground operators:
tff(v3_pre_topc,type,(
    v3_pre_topc: ( $i * $i ) > $o )).

tff('#nlpp',type,(
    '#nlpp': ( $real * $real ) > $real )).

tff(r2_hidden,type,(
    r2_hidden: ( $i * $i ) > $o )).

tff(v1_tops_2,type,(
    v1_tops_2: ( $i * $i ) > $o )).

tff(l1_pre_topc,type,(
    l1_pre_topc: $i > $o )).

tff(r1_tarski,type,(
    r1_tarski: ( $i * $i ) > $o )).

tff('#skF_2',type,(
    '#skF_2': $i )).

tff('#skF_3',type,(
    '#skF_3': $i )).

tff(k1_zfmisc_1,type,(
    k1_zfmisc_1: $i > $i )).

tff('#nlpp_001',type,(
    '#nlpp': ( $rat * $rat ) > $rat )).

tff('#skF_4',type,(
    '#skF_4': $i )).

tff('#nlpp_002',type,(
    '#nlpp': ( $int * $int ) > $int )).

tff(u1_struct_0,type,(
    u1_struct_0: $i > $i )).

tff('#skF_1',type,(
    '#skF_1': ( $i * $i ) > $i )).

tff(m1_subset_1,type,(
    m1_subset_1: ( $i * $i ) > $o )).

tff(f_65,negated_conjecture,(
    ~ ! [A] :
        ( l1_pre_topc(A)
       => ! [B] :
            ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
           => ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
               => ( ( r1_tarski(B,C)
                    & v1_tops_2(C,A) )
                 => v1_tops_2(B,A) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t18_tops_2)).

tff(f_36,axiom,(
    ! [A,B] :
      ( m1_subset_1(A,k1_zfmisc_1(B))
    <=> r1_tarski(A,B) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_subset)).

tff(f_50,axiom,(
    ! [A] :
      ( l1_pre_topc(A)
     => ! [B] :
          ( m1_subset_1(B,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A))))
         => ( v1_tops_2(B,A)
          <=> ! [C] :
                ( m1_subset_1(C,k1_zfmisc_1(u1_struct_0(A)))
               => ( r2_hidden(C,B)
                 => v3_pre_topc(C,A) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tops_2)).

tff(f_32,axiom,(
    ! [A,B] :
      ( m1_subset_1(B,k1_zfmisc_1(A))
     => ! [C] :
          ( r2_hidden(C,B)
         => r2_hidden(C,A) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l3_subset_1)).

tff(c_16,plain,(
    ~ v1_tops_2('#skF_3','#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_65])).

tff(c_26,plain,(
    l1_pre_topc('#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_65])).

tff(c_24,plain,(
    m1_subset_1('#skF_3',k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2')))) ),
    inference(cnfTransformation,[status(thm)],[f_65])).

tff(c_20,plain,(
    r1_tarski('#skF_3','#skF_4') ),
    inference(cnfTransformation,[status(thm)],[f_65])).

tff(c_6,plain,(
    ! [A_5,B_6] :
      ( m1_subset_1(A_5,k1_zfmisc_1(B_6))
      | ~ r1_tarski(A_5,B_6) ) ),
    inference(cnfTransformation,[status(thm)],[f_36])).

tff(c_22,plain,(
    m1_subset_1('#skF_4',k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2')))) ),
    inference(cnfTransformation,[status(thm)],[f_65])).

tff(c_42,plain,(
    ! [A_28,B_29] :
      ( r2_hidden('#skF_1'(A_28,B_29),B_29)
      | v1_tops_2(B_29,A_28)
      | ~ m1_subset_1(B_29,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_28))))
      | ~ l1_pre_topc(A_28) ) ),
    inference(cnfTransformation,[status(thm)],[f_50])).

tff(c_49,plain,
    ( r2_hidden('#skF_1'('#skF_2','#skF_3'),'#skF_3')
    | v1_tops_2('#skF_3','#skF_2')
    | ~ l1_pre_topc('#skF_2') ),
    inference(resolution,[status(thm)],[c_24,c_42])).

tff(c_56,plain,
    ( r2_hidden('#skF_1'('#skF_2','#skF_3'),'#skF_3')
    | v1_tops_2('#skF_3','#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_26,c_49])).

tff(c_57,plain,(
    r2_hidden('#skF_1'('#skF_2','#skF_3'),'#skF_3') ),
    inference(negUnitSimplification,[status(thm)],[c_16,c_56])).

tff(c_2,plain,(
    ! [C_4,A_1,B_2] :
      ( r2_hidden(C_4,A_1)
      | ~ r2_hidden(C_4,B_2)
      | ~ m1_subset_1(B_2,k1_zfmisc_1(A_1)) ) ),
    inference(cnfTransformation,[status(thm)],[f_32])).

tff(c_61,plain,(
    ! [A_30] :
      ( r2_hidden('#skF_1'('#skF_2','#skF_3'),A_30)
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(A_30)) ) ),
    inference(resolution,[status(thm)],[c_57,c_2])).

tff(c_65,plain,(
    ! [A_31,A_32] :
      ( r2_hidden('#skF_1'('#skF_2','#skF_3'),A_31)
      | ~ m1_subset_1(A_32,k1_zfmisc_1(A_31))
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(A_32)) ) ),
    inference(resolution,[status(thm)],[c_61,c_2])).

tff(c_73,plain,
    ( r2_hidden('#skF_1'('#skF_2','#skF_3'),k1_zfmisc_1(u1_struct_0('#skF_2')))
    | ~ m1_subset_1('#skF_3',k1_zfmisc_1('#skF_4')) ),
    inference(resolution,[status(thm)],[c_22,c_65])).

tff(c_76,plain,(
    ~ m1_subset_1('#skF_3',k1_zfmisc_1('#skF_4')) ),
    inference(splitLeft,[status(thm)],[c_73])).

tff(c_79,plain,(
    ~ r1_tarski('#skF_3','#skF_4') ),
    inference(resolution,[status(thm)],[c_6,c_76])).

tff(c_83,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_20,c_79])).

tff(c_85,plain,(
    m1_subset_1('#skF_3',k1_zfmisc_1('#skF_4')) ),
    inference(splitRight,[status(thm)],[c_73])).

tff(c_18,plain,(
    v1_tops_2('#skF_4','#skF_2') ),
    inference(cnfTransformation,[status(thm)],[f_65])).

tff(c_14,plain,(
    ! [A_7,B_13] :
      ( m1_subset_1('#skF_1'(A_7,B_13),k1_zfmisc_1(u1_struct_0(A_7)))
      | v1_tops_2(B_13,A_7)
      | ~ m1_subset_1(B_13,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_7))))
      | ~ l1_pre_topc(A_7) ) ),
    inference(cnfTransformation,[status(thm)],[f_50])).

tff(c_60,plain,(
    ! [A_1] :
      ( r2_hidden('#skF_1'('#skF_2','#skF_3'),A_1)
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(A_1)) ) ),
    inference(resolution,[status(thm)],[c_57,c_2])).

tff(c_180,plain,(
    ! [C_50,A_51,B_52] :
      ( v3_pre_topc(C_50,A_51)
      | ~ r2_hidden(C_50,B_52)
      | ~ m1_subset_1(C_50,k1_zfmisc_1(u1_struct_0(A_51)))
      | ~ v1_tops_2(B_52,A_51)
      | ~ m1_subset_1(B_52,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_51))))
      | ~ l1_pre_topc(A_51) ) ),
    inference(cnfTransformation,[status(thm)],[f_50])).

tff(c_268,plain,(
    ! [A_62,A_63] :
      ( v3_pre_topc('#skF_1'('#skF_2','#skF_3'),A_62)
      | ~ m1_subset_1('#skF_1'('#skF_2','#skF_3'),k1_zfmisc_1(u1_struct_0(A_62)))
      | ~ v1_tops_2(A_63,A_62)
      | ~ m1_subset_1(A_63,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_62))))
      | ~ l1_pre_topc(A_62)
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(A_63)) ) ),
    inference(resolution,[status(thm)],[c_60,c_180])).

tff(c_271,plain,(
    ! [A_63] :
      ( v3_pre_topc('#skF_1'('#skF_2','#skF_3'),'#skF_2')
      | ~ v1_tops_2(A_63,'#skF_2')
      | ~ m1_subset_1(A_63,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2'))))
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(A_63))
      | v1_tops_2('#skF_3','#skF_2')
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2'))))
      | ~ l1_pre_topc('#skF_2') ) ),
    inference(resolution,[status(thm)],[c_14,c_268])).

tff(c_277,plain,(
    ! [A_63] :
      ( v3_pre_topc('#skF_1'('#skF_2','#skF_3'),'#skF_2')
      | ~ v1_tops_2(A_63,'#skF_2')
      | ~ m1_subset_1(A_63,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2'))))
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(A_63))
      | v1_tops_2('#skF_3','#skF_2') ) ),
    inference(demodulation,[status(thm),theory(equality)],[c_26,c_24,c_271])).

tff(c_278,plain,(
    ! [A_63] :
      ( v3_pre_topc('#skF_1'('#skF_2','#skF_3'),'#skF_2')
      | ~ v1_tops_2(A_63,'#skF_2')
      | ~ m1_subset_1(A_63,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2'))))
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(A_63)) ) ),
    inference(negUnitSimplification,[status(thm)],[c_16,c_277])).

tff(c_281,plain,(
    ! [A_64] :
      ( ~ v1_tops_2(A_64,'#skF_2')
      | ~ m1_subset_1(A_64,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2'))))
      | ~ m1_subset_1('#skF_3',k1_zfmisc_1(A_64)) ) ),
    inference(splitLeft,[status(thm)],[c_278])).

tff(c_288,plain,
    ( ~ v1_tops_2('#skF_4','#skF_2')
    | ~ m1_subset_1('#skF_3',k1_zfmisc_1('#skF_4')) ),
    inference(resolution,[status(thm)],[c_22,c_281])).

tff(c_296,plain,(
    $false ),
    inference(demodulation,[status(thm),theory(equality)],[c_85,c_18,c_288])).

tff(c_297,plain,(
    v3_pre_topc('#skF_1'('#skF_2','#skF_3'),'#skF_2') ),
    inference(splitRight,[status(thm)],[c_278])).

tff(c_10,plain,(
    ! [A_7,B_13] :
      ( ~ v3_pre_topc('#skF_1'(A_7,B_13),A_7)
      | v1_tops_2(B_13,A_7)
      | ~ m1_subset_1(B_13,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_7))))
      | ~ l1_pre_topc(A_7) ) ),
    inference(cnfTransformation,[status(thm)],[f_50])).

tff(c_299,plain,
    ( v1_tops_2('#skF_3','#skF_2')
    | ~ m1_subset_1('#skF_3',k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2'))))
    | ~ l1_pre_topc('#skF_2') ),
    inference(resolution,[status(thm)],[c_297,c_10])).

tff(c_302,plain,(
    v1_tops_2('#skF_3','#skF_2') ),
    inference(demodulation,[status(thm),theory(equality)],[c_26,c_24,c_299])).

tff(c_304,plain,(
    $false ),
    inference(negUnitSimplification,[status(thm)],[c_16,c_302])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.33  % Computer   : n011.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 10:09:27 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.20/1.29  % SZS status Theorem for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.20/1.29  
% 2.20/1.29  % SZS output start CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.20/1.29  %$ v3_pre_topc > v1_tops_2 > r2_hidden > r1_tarski > m1_subset_1 > l1_pre_topc > #nlpp > u1_struct_0 > k1_zfmisc_1 > #skF_2 > #skF_3 > #skF_4 > #skF_1
% 2.20/1.29  
% 2.20/1.29  %Foreground sorts:
% 2.20/1.29  
% 2.20/1.29  
% 2.20/1.29  %Background operators:
% 2.20/1.29  
% 2.20/1.29  
% 2.20/1.29  %Foreground operators:
% 2.20/1.29  tff(v3_pre_topc, type, v3_pre_topc: ($i * $i) > $o).
% 2.20/1.29  tff('#nlpp', type, '#nlpp': ($real * $real) > $real).
% 2.20/1.29  tff(r2_hidden, type, r2_hidden: ($i * $i) > $o).
% 2.20/1.29  tff(v1_tops_2, type, v1_tops_2: ($i * $i) > $o).
% 2.20/1.29  tff(l1_pre_topc, type, l1_pre_topc: $i > $o).
% 2.20/1.29  tff(r1_tarski, type, r1_tarski: ($i * $i) > $o).
% 2.20/1.29  tff('#skF_2', type, '#skF_2': $i).
% 2.20/1.29  tff('#skF_3', type, '#skF_3': $i).
% 2.20/1.29  tff(k1_zfmisc_1, type, k1_zfmisc_1: $i > $i).
% 2.20/1.29  tff('#nlpp', type, '#nlpp': ($rat * $rat) > $rat).
% 2.20/1.29  tff('#skF_4', type, '#skF_4': $i).
% 2.20/1.29  tff('#nlpp', type, '#nlpp': ($int * $int) > $int).
% 2.20/1.29  tff(u1_struct_0, type, u1_struct_0: $i > $i).
% 2.20/1.29  tff('#skF_1', type, '#skF_1': ($i * $i) > $i).
% 2.20/1.29  tff(m1_subset_1, type, m1_subset_1: ($i * $i) > $o).
% 2.20/1.29  
% 2.20/1.31  tff(f_65, negated_conjecture, ~(![A]: (l1_pre_topc(A) => (![B]: (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) => (![C]: (m1_subset_1(C, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) => ((r1_tarski(B, C) & v1_tops_2(C, A)) => v1_tops_2(B, A)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t18_tops_2)).
% 2.20/1.31  tff(f_36, axiom, (![A, B]: (m1_subset_1(A, k1_zfmisc_1(B)) <=> r1_tarski(A, B))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_subset)).
% 2.20/1.31  tff(f_50, axiom, (![A]: (l1_pre_topc(A) => (![B]: (m1_subset_1(B, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A)))) => (v1_tops_2(B, A) <=> (![C]: (m1_subset_1(C, k1_zfmisc_1(u1_struct_0(A))) => (r2_hidden(C, B) => v3_pre_topc(C, A))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_tops_2)).
% 2.20/1.31  tff(f_32, axiom, (![A, B]: (m1_subset_1(B, k1_zfmisc_1(A)) => (![C]: (r2_hidden(C, B) => r2_hidden(C, A))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l3_subset_1)).
% 2.20/1.31  tff(c_16, plain, (~v1_tops_2('#skF_3', '#skF_2')), inference(cnfTransformation, [status(thm)], [f_65])).
% 2.20/1.31  tff(c_26, plain, (l1_pre_topc('#skF_2')), inference(cnfTransformation, [status(thm)], [f_65])).
% 2.20/1.31  tff(c_24, plain, (m1_subset_1('#skF_3', k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2'))))), inference(cnfTransformation, [status(thm)], [f_65])).
% 2.20/1.31  tff(c_20, plain, (r1_tarski('#skF_3', '#skF_4')), inference(cnfTransformation, [status(thm)], [f_65])).
% 2.20/1.31  tff(c_6, plain, (![A_5, B_6]: (m1_subset_1(A_5, k1_zfmisc_1(B_6)) | ~r1_tarski(A_5, B_6))), inference(cnfTransformation, [status(thm)], [f_36])).
% 2.20/1.31  tff(c_22, plain, (m1_subset_1('#skF_4', k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2'))))), inference(cnfTransformation, [status(thm)], [f_65])).
% 2.20/1.31  tff(c_42, plain, (![A_28, B_29]: (r2_hidden('#skF_1'(A_28, B_29), B_29) | v1_tops_2(B_29, A_28) | ~m1_subset_1(B_29, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_28)))) | ~l1_pre_topc(A_28))), inference(cnfTransformation, [status(thm)], [f_50])).
% 2.20/1.31  tff(c_49, plain, (r2_hidden('#skF_1'('#skF_2', '#skF_3'), '#skF_3') | v1_tops_2('#skF_3', '#skF_2') | ~l1_pre_topc('#skF_2')), inference(resolution, [status(thm)], [c_24, c_42])).
% 2.20/1.31  tff(c_56, plain, (r2_hidden('#skF_1'('#skF_2', '#skF_3'), '#skF_3') | v1_tops_2('#skF_3', '#skF_2')), inference(demodulation, [status(thm), theory('equality')], [c_26, c_49])).
% 2.20/1.31  tff(c_57, plain, (r2_hidden('#skF_1'('#skF_2', '#skF_3'), '#skF_3')), inference(negUnitSimplification, [status(thm)], [c_16, c_56])).
% 2.20/1.31  tff(c_2, plain, (![C_4, A_1, B_2]: (r2_hidden(C_4, A_1) | ~r2_hidden(C_4, B_2) | ~m1_subset_1(B_2, k1_zfmisc_1(A_1)))), inference(cnfTransformation, [status(thm)], [f_32])).
% 2.20/1.31  tff(c_61, plain, (![A_30]: (r2_hidden('#skF_1'('#skF_2', '#skF_3'), A_30) | ~m1_subset_1('#skF_3', k1_zfmisc_1(A_30)))), inference(resolution, [status(thm)], [c_57, c_2])).
% 2.20/1.31  tff(c_65, plain, (![A_31, A_32]: (r2_hidden('#skF_1'('#skF_2', '#skF_3'), A_31) | ~m1_subset_1(A_32, k1_zfmisc_1(A_31)) | ~m1_subset_1('#skF_3', k1_zfmisc_1(A_32)))), inference(resolution, [status(thm)], [c_61, c_2])).
% 2.20/1.31  tff(c_73, plain, (r2_hidden('#skF_1'('#skF_2', '#skF_3'), k1_zfmisc_1(u1_struct_0('#skF_2'))) | ~m1_subset_1('#skF_3', k1_zfmisc_1('#skF_4'))), inference(resolution, [status(thm)], [c_22, c_65])).
% 2.20/1.31  tff(c_76, plain, (~m1_subset_1('#skF_3', k1_zfmisc_1('#skF_4'))), inference(splitLeft, [status(thm)], [c_73])).
% 2.20/1.31  tff(c_79, plain, (~r1_tarski('#skF_3', '#skF_4')), inference(resolution, [status(thm)], [c_6, c_76])).
% 2.20/1.31  tff(c_83, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_20, c_79])).
% 2.20/1.31  tff(c_85, plain, (m1_subset_1('#skF_3', k1_zfmisc_1('#skF_4'))), inference(splitRight, [status(thm)], [c_73])).
% 2.20/1.31  tff(c_18, plain, (v1_tops_2('#skF_4', '#skF_2')), inference(cnfTransformation, [status(thm)], [f_65])).
% 2.20/1.31  tff(c_14, plain, (![A_7, B_13]: (m1_subset_1('#skF_1'(A_7, B_13), k1_zfmisc_1(u1_struct_0(A_7))) | v1_tops_2(B_13, A_7) | ~m1_subset_1(B_13, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_7)))) | ~l1_pre_topc(A_7))), inference(cnfTransformation, [status(thm)], [f_50])).
% 2.20/1.31  tff(c_60, plain, (![A_1]: (r2_hidden('#skF_1'('#skF_2', '#skF_3'), A_1) | ~m1_subset_1('#skF_3', k1_zfmisc_1(A_1)))), inference(resolution, [status(thm)], [c_57, c_2])).
% 2.20/1.31  tff(c_180, plain, (![C_50, A_51, B_52]: (v3_pre_topc(C_50, A_51) | ~r2_hidden(C_50, B_52) | ~m1_subset_1(C_50, k1_zfmisc_1(u1_struct_0(A_51))) | ~v1_tops_2(B_52, A_51) | ~m1_subset_1(B_52, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_51)))) | ~l1_pre_topc(A_51))), inference(cnfTransformation, [status(thm)], [f_50])).
% 2.20/1.31  tff(c_268, plain, (![A_62, A_63]: (v3_pre_topc('#skF_1'('#skF_2', '#skF_3'), A_62) | ~m1_subset_1('#skF_1'('#skF_2', '#skF_3'), k1_zfmisc_1(u1_struct_0(A_62))) | ~v1_tops_2(A_63, A_62) | ~m1_subset_1(A_63, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_62)))) | ~l1_pre_topc(A_62) | ~m1_subset_1('#skF_3', k1_zfmisc_1(A_63)))), inference(resolution, [status(thm)], [c_60, c_180])).
% 2.20/1.31  tff(c_271, plain, (![A_63]: (v3_pre_topc('#skF_1'('#skF_2', '#skF_3'), '#skF_2') | ~v1_tops_2(A_63, '#skF_2') | ~m1_subset_1(A_63, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2')))) | ~m1_subset_1('#skF_3', k1_zfmisc_1(A_63)) | v1_tops_2('#skF_3', '#skF_2') | ~m1_subset_1('#skF_3', k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2')))) | ~l1_pre_topc('#skF_2'))), inference(resolution, [status(thm)], [c_14, c_268])).
% 2.20/1.31  tff(c_277, plain, (![A_63]: (v3_pre_topc('#skF_1'('#skF_2', '#skF_3'), '#skF_2') | ~v1_tops_2(A_63, '#skF_2') | ~m1_subset_1(A_63, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2')))) | ~m1_subset_1('#skF_3', k1_zfmisc_1(A_63)) | v1_tops_2('#skF_3', '#skF_2'))), inference(demodulation, [status(thm), theory('equality')], [c_26, c_24, c_271])).
% 2.20/1.31  tff(c_278, plain, (![A_63]: (v3_pre_topc('#skF_1'('#skF_2', '#skF_3'), '#skF_2') | ~v1_tops_2(A_63, '#skF_2') | ~m1_subset_1(A_63, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2')))) | ~m1_subset_1('#skF_3', k1_zfmisc_1(A_63)))), inference(negUnitSimplification, [status(thm)], [c_16, c_277])).
% 2.20/1.31  tff(c_281, plain, (![A_64]: (~v1_tops_2(A_64, '#skF_2') | ~m1_subset_1(A_64, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2')))) | ~m1_subset_1('#skF_3', k1_zfmisc_1(A_64)))), inference(splitLeft, [status(thm)], [c_278])).
% 2.20/1.31  tff(c_288, plain, (~v1_tops_2('#skF_4', '#skF_2') | ~m1_subset_1('#skF_3', k1_zfmisc_1('#skF_4'))), inference(resolution, [status(thm)], [c_22, c_281])).
% 2.20/1.31  tff(c_296, plain, $false, inference(demodulation, [status(thm), theory('equality')], [c_85, c_18, c_288])).
% 2.20/1.31  tff(c_297, plain, (v3_pre_topc('#skF_1'('#skF_2', '#skF_3'), '#skF_2')), inference(splitRight, [status(thm)], [c_278])).
% 2.20/1.31  tff(c_10, plain, (![A_7, B_13]: (~v3_pre_topc('#skF_1'(A_7, B_13), A_7) | v1_tops_2(B_13, A_7) | ~m1_subset_1(B_13, k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(A_7)))) | ~l1_pre_topc(A_7))), inference(cnfTransformation, [status(thm)], [f_50])).
% 2.20/1.31  tff(c_299, plain, (v1_tops_2('#skF_3', '#skF_2') | ~m1_subset_1('#skF_3', k1_zfmisc_1(k1_zfmisc_1(u1_struct_0('#skF_2')))) | ~l1_pre_topc('#skF_2')), inference(resolution, [status(thm)], [c_297, c_10])).
% 2.20/1.31  tff(c_302, plain, (v1_tops_2('#skF_3', '#skF_2')), inference(demodulation, [status(thm), theory('equality')], [c_26, c_24, c_299])).
% 2.20/1.31  tff(c_304, plain, $false, inference(negUnitSimplification, [status(thm)], [c_16, c_302])).
% 2.20/1.31  % SZS output end CNFRefutation for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.20/1.31  
% 2.20/1.31  Inference rules
% 2.20/1.31  ----------------------
% 2.20/1.31  #Ref     : 0
% 2.20/1.31  #Sup     : 57
% 2.20/1.31  #Fact    : 0
% 2.20/1.31  #Define  : 0
% 2.20/1.31  #Split   : 5
% 2.20/1.31  #Chain   : 0
% 2.20/1.31  #Close   : 0
% 2.20/1.31  
% 2.20/1.31  Ordering : KBO
% 2.20/1.31  
% 2.20/1.31  Simplification rules
% 2.20/1.31  ----------------------
% 2.20/1.31  #Subsume      : 10
% 2.20/1.31  #Demod        : 34
% 2.20/1.31  #Tautology    : 10
% 2.20/1.31  #SimpNegUnit  : 8
% 2.20/1.31  #BackRed      : 0
% 2.20/1.31  
% 2.20/1.31  #Partial instantiations: 0
% 2.20/1.31  #Strategies tried      : 1
% 2.20/1.31  
% 2.20/1.31  Timing (in seconds)
% 2.20/1.31  ----------------------
% 2.20/1.31  Preprocessing        : 0.28
% 2.20/1.31  Parsing              : 0.16
% 2.20/1.31  CNF conversion       : 0.02
% 2.20/1.31  Main loop            : 0.28
% 2.20/1.31  Inferencing          : 0.10
% 2.20/1.31  Reduction            : 0.08
% 2.20/1.31  Demodulation         : 0.05
% 2.20/1.31  BG Simplification    : 0.01
% 2.20/1.31  Subsumption          : 0.07
% 2.20/1.31  Abstraction          : 0.01
% 2.20/1.31  MUC search           : 0.00
% 2.20/1.31  Cooper               : 0.00
% 2.20/1.31  Total                : 0.58
% 2.20/1.31  Index Insertion      : 0.00
% 2.20/1.31  Index Deletion       : 0.00
% 2.20/1.31  Index Matching       : 0.00
% 2.20/1.31  BG Taut test         : 0.00
%------------------------------------------------------------------------------
