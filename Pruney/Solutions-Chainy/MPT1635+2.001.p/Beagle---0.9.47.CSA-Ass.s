%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:25:46 EST 2020

% Result     : CounterSatisfiable 1.66s
% Output     : Assurance 0s
% Verified   : 
% Statistics : -

% Comments   : 
%------------------------------------------------------------------------------
%----No solution output by system
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.14  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.15  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.15/0.36  % Computer   : n008.cluster.edu
% 0.15/0.36  % Model      : x86_64 x86_64
% 0.15/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.36  % Memory     : 8042.1875MB
% 0.15/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.36  % CPULimit   : 60
% 0.15/0.36  % DateTime   : Tue Dec  1 09:46:00 EST 2020
% 0.15/0.36  % CPUTime    : 
% 0.15/0.37  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.66/1.15  
% 1.66/1.15  % SZS status CounterSatisfiable for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.66/1.15  
% 1.66/1.15  Inference rules
% 1.66/1.15  ----------------------
% 1.66/1.15  #Ref     : 0
% 1.66/1.15  #Sup     : 7
% 1.66/1.15  #Fact    : 0
% 1.66/1.15  #Define  : 0
% 1.66/1.15  #Split   : 0
% 1.66/1.15  #Chain   : 0
% 1.66/1.15  #Close   : 0
% 1.66/1.15  
% 1.66/1.15  Ordering : KBO
% 1.66/1.15  
% 1.66/1.15  Simplification rules
% 1.66/1.15  ----------------------
% 1.66/1.15  #Subsume      : 1
% 1.66/1.15  #Demod        : 3
% 1.66/1.15  #Tautology    : 4
% 1.66/1.15  #SimpNegUnit  : 0
% 1.66/1.15  #BackRed      : 0
% 1.66/1.15  
% 1.66/1.15  #Partial instantiations: 0
% 1.66/1.15  #Strategies tried      : 1
% 1.66/1.15  
% 1.66/1.15  Timing (in seconds)
% 1.66/1.15  ----------------------
% 1.66/1.15  Preprocessing        : 0.28
% 1.66/1.15  Parsing              : 0.15
% 1.66/1.15  CNF conversion       : 0.02
% 1.66/1.15  Main loop            : 0.10
% 1.66/1.15  Inferencing          : 0.04
% 1.66/1.15  Reduction            : 0.03
% 1.66/1.15  Demodulation         : 0.02
% 1.66/1.15  BG Simplification    : 0.01
% 1.66/1.15  Subsumption          : 0.02
% 1.66/1.15  Abstraction          : 0.00
% 1.66/1.15  MUC search           : 0.00
% 1.66/1.15  Cooper               : 0.00
% 1.66/1.15  Total                : 0.39
% 1.66/1.15  Index Insertion      : 0.00
% 1.66/1.15  Index Deletion       : 0.00
% 1.66/1.15  Index Matching       : 0.00
% 1.66/1.15  BG Taut test         : 0.00
%------------------------------------------------------------------------------
