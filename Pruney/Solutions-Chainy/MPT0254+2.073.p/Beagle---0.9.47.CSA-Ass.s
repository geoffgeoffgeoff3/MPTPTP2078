%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 09:51:28 EST 2020

% Result     : CounterSatisfiable 3.28s
% Output     : Assurance 0s
% Verified   : 
% Statistics : -

% Comments   : 
%------------------------------------------------------------------------------
%----No solution output by system
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.12/0.32  % Computer   : n019.cluster.edu
% 0.12/0.32  % Model      : x86_64 x86_64
% 0.12/0.32  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.32  % Memory     : 8042.1875MB
% 0.12/0.32  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.32  % CPULimit   : 60
% 0.12/0.32  % DateTime   : Tue Dec  1 09:34:07 EST 2020
% 0.12/0.32  % CPUTime    : 
% 0.12/0.33  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 3.28/1.52  
% 3.28/1.52  % SZS status CounterSatisfiable for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.28/1.52  
% 3.28/1.52  Inference rules
% 3.28/1.52  ----------------------
% 3.28/1.52  #Ref     : 0
% 3.28/1.52  #Sup     : 475
% 3.28/1.52  #Fact    : 0
% 3.28/1.52  #Define  : 0
% 3.28/1.52  #Split   : 0
% 3.28/1.52  #Chain   : 0
% 3.28/1.52  #Close   : 0
% 3.28/1.52  
% 3.28/1.52  Ordering : KBO
% 3.28/1.52  
% 3.28/1.52  Simplification rules
% 3.28/1.52  ----------------------
% 3.28/1.52  #Subsume      : 68
% 3.28/1.52  #Demod        : 802
% 3.28/1.52  #Tautology    : 387
% 3.28/1.52  #SimpNegUnit  : 0
% 3.28/1.52  #BackRed      : 9
% 3.28/1.52  
% 3.28/1.52  #Partial instantiations: 0
% 3.28/1.52  #Strategies tried      : 1
% 3.28/1.52  
% 3.28/1.52  Timing (in seconds)
% 3.28/1.52  ----------------------
% 3.28/1.53  Preprocessing        : 0.29
% 3.28/1.53  Parsing              : 0.15
% 3.28/1.53  CNF conversion       : 0.01
% 3.28/1.53  Main loop            : 0.52
% 3.28/1.53  Inferencing          : 0.16
% 3.28/1.53  Reduction            : 0.27
% 3.28/1.53  Demodulation         : 0.24
% 3.28/1.53  BG Simplification    : 0.02
% 3.28/1.53  Subsumption          : 0.06
% 3.28/1.53  Abstraction          : 0.03
% 3.28/1.53  MUC search           : 0.00
% 3.28/1.53  Cooper               : 0.00
% 3.28/1.53  Total                : 0.81
% 3.28/1.53  Index Insertion      : 0.00
% 3.28/1.53  Index Deletion       : 0.00
% 3.28/1.53  Index Matching       : 0.00
% 3.28/1.53  BG Taut test         : 0.00
%------------------------------------------------------------------------------
