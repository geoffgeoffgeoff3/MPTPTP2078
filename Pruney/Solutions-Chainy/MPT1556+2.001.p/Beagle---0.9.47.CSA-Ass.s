%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:25:04 EST 2020

% Result     : CounterSatisfiable 2.20s
% Output     : Assurance 0s
% Verified   : 
% Statistics : -

% Comments   : 
%------------------------------------------------------------------------------
%----No solution output by system
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.33  % Computer   : n009.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % DateTime   : Tue Dec  1 20:52:56 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.20/1.27  
% 2.20/1.27  % SZS status CounterSatisfiable for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.20/1.27  
% 2.20/1.27  Inference rules
% 2.20/1.27  ----------------------
% 2.20/1.27  #Ref     : 0
% 2.20/1.27  #Sup     : 47
% 2.20/1.27  #Fact    : 0
% 2.20/1.27  #Define  : 0
% 2.20/1.27  #Split   : 1
% 2.20/1.27  #Chain   : 0
% 2.20/1.27  #Close   : 0
% 2.20/1.27  
% 2.20/1.27  Ordering : KBO
% 2.20/1.27  
% 2.20/1.27  Simplification rules
% 2.20/1.27  ----------------------
% 2.20/1.27  #Subsume      : 15
% 2.20/1.27  #Demod        : 0
% 2.20/1.27  #Tautology    : 2
% 2.20/1.27  #SimpNegUnit  : 0
% 2.20/1.27  #BackRed      : 0
% 2.20/1.27  
% 2.20/1.27  #Partial instantiations: 0
% 2.20/1.27  #Strategies tried      : 1
% 2.20/1.27  
% 2.20/1.27  Timing (in seconds)
% 2.20/1.27  ----------------------
% 2.20/1.28  Preprocessing        : 0.27
% 2.20/1.28  Parsing              : 0.15
% 2.20/1.28  CNF conversion       : 0.02
% 2.20/1.28  Main loop            : 0.27
% 2.20/1.28  Inferencing          : 0.12
% 2.20/1.28  Reduction            : 0.05
% 2.20/1.28  Demodulation         : 0.03
% 2.20/1.28  BG Simplification    : 0.01
% 2.20/1.28  Subsumption          : 0.08
% 2.20/1.28  Abstraction          : 0.01
% 2.20/1.28  MUC search           : 0.00
% 2.20/1.28  Cooper               : 0.00
% 2.20/1.28  Total                : 0.55
% 2.20/1.28  Index Insertion      : 0.00
% 2.20/1.28  Index Deletion       : 0.00
% 2.20/1.28  Index Matching       : 0.00
% 2.20/1.28  BG Taut test         : 0.00
%------------------------------------------------------------------------------
