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
% DateTime   : Thu Dec  3 09:48:15 EST 2020

% Result     : CounterSatisfiable 1.85s
% Output     : Assurance 0s
% Verified   : 
% Statistics : -

% Comments   : 
%------------------------------------------------------------------------------
%----No solution output by system
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.12/0.34  % Computer   : n019.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 13:39:52 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.85/1.16  
% 1.85/1.16  % SZS status CounterSatisfiable for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.85/1.16  
% 1.85/1.16  Inference rules
% 1.85/1.16  ----------------------
% 1.85/1.16  #Ref     : 0
% 1.85/1.16  #Sup     : 22
% 1.85/1.16  #Fact    : 0
% 1.85/1.16  #Define  : 0
% 1.85/1.16  #Split   : 0
% 1.85/1.16  #Chain   : 0
% 1.85/1.16  #Close   : 0
% 1.85/1.16  
% 1.85/1.16  Ordering : KBO
% 1.85/1.16  
% 1.85/1.16  Simplification rules
% 1.85/1.16  ----------------------
% 1.85/1.16  #Subsume      : 0
% 1.85/1.16  #Demod        : 8
% 1.85/1.16  #Tautology    : 21
% 1.85/1.16  #SimpNegUnit  : 0
% 1.85/1.16  #BackRed      : 3
% 1.85/1.16  
% 1.85/1.16  #Partial instantiations: 0
% 1.85/1.16  #Strategies tried      : 1
% 1.85/1.16  
% 1.85/1.16  Timing (in seconds)
% 1.85/1.16  ----------------------
% 1.85/1.16  Preprocessing        : 0.29
% 1.85/1.16  Parsing              : 0.15
% 1.85/1.16  CNF conversion       : 0.02
% 1.85/1.16  Main loop            : 0.10
% 1.85/1.16  Inferencing          : 0.04
% 1.85/1.16  Reduction            : 0.03
% 1.85/1.16  Demodulation         : 0.02
% 1.85/1.16  BG Simplification    : 0.01
% 1.85/1.16  Subsumption          : 0.01
% 1.85/1.16  Abstraction          : 0.01
% 1.85/1.16  MUC search           : 0.00
% 1.85/1.16  Cooper               : 0.00
% 1.85/1.16  Total                : 0.39
% 1.85/1.16  Index Insertion      : 0.00
% 1.85/1.16  Index Deletion       : 0.00
% 1.85/1.16  Index Matching       : 0.00
% 1.85/1.16  BG Taut test         : 0.00
%------------------------------------------------------------------------------
