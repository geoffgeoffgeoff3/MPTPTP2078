%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:25:54 EST 2020

% Result     : CounterSatisfiable 2.08s
% Output     : Assurance 0s
% Verified   : 
% Statistics : -

% Comments   : 
%------------------------------------------------------------------------------
%----No solution output by system
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.14  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.36  % CPULimit   : 60
% 0.13/0.36  % DateTime   : Tue Dec  1 19:31:51 EST 2020
% 0.13/0.36  % CPUTime    : 
% 0.13/0.37  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 2.08/1.29  
% 2.08/1.29  % SZS status CounterSatisfiable for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.08/1.29  
% 2.08/1.29  Inference rules
% 2.08/1.29  ----------------------
% 2.08/1.29  #Ref     : 0
% 2.08/1.29  #Sup     : 12
% 2.08/1.29  #Fact    : 0
% 2.08/1.29  #Define  : 0
% 2.08/1.29  #Split   : 1
% 2.08/1.29  #Chain   : 0
% 2.08/1.29  #Close   : 0
% 2.08/1.29  
% 2.08/1.29  Ordering : KBO
% 2.08/1.29  
% 2.08/1.29  Simplification rules
% 2.08/1.29  ----------------------
% 2.08/1.29  #Subsume      : 2
% 2.08/1.29  #Demod        : 9
% 2.08/1.29  #Tautology    : 5
% 2.08/1.29  #SimpNegUnit  : 1
% 2.08/1.29  #BackRed      : 0
% 2.08/1.29  
% 2.08/1.29  #Partial instantiations: 0
% 2.08/1.29  #Strategies tried      : 1
% 2.08/1.29  
% 2.08/1.29  Timing (in seconds)
% 2.08/1.29  ----------------------
% 2.08/1.29  Preprocessing        : 0.30
% 2.08/1.29  Parsing              : 0.17
% 2.08/1.29  CNF conversion       : 0.02
% 2.08/1.29  Main loop            : 0.19
% 2.08/1.29  Inferencing          : 0.08
% 2.08/1.29  Reduction            : 0.05
% 2.08/1.29  Demodulation         : 0.03
% 2.08/1.29  BG Simplification    : 0.01
% 2.08/1.29  Subsumption          : 0.04
% 2.08/1.29  Abstraction          : 0.01
% 2.08/1.29  MUC search           : 0.00
% 2.08/1.29  Cooper               : 0.00
% 2.08/1.29  Total                : 0.50
% 2.08/1.29  Index Insertion      : 0.00
% 2.08/1.29  Index Deletion       : 0.00
% 2.08/1.29  Index Matching       : 0.00
% 2.08/1.29  BG Taut test         : 0.00
%------------------------------------------------------------------------------
