%------------------------------------------------------------------------------
% File       : Beagle---0.9.47
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:25:03 EST 2020

% Result     : CounterSatisfiable 1.63s
% Output     : Assurance 0s
% Verified   : 
% Statistics : -

% Comments   : 
%------------------------------------------------------------------------------
%----No solution output by system
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : java -Xms512M -Xmx4G -Xss10M -XX:MaxPermSize=384M -jar /export/starexec/sandbox2/solver/bin/beagle.jar -auto -q -proof -print tff -smtsolver /export/starexec/sandbox2/solver/bin/cvc4-1.4-x86_64-linux-opt -liasolver cooper -t %d %s
% 0.13/0.34  % Computer   : n025.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 12:22:35 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  OpenJDK 64-Bit Server VM warning: ignoring option MaxPermSize=384M; support was removed in 8.0
% 1.63/1.16  
% 1.63/1.16  % SZS status CounterSatisfiable for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.63/1.16  
% 1.63/1.16  Inference rules
% 1.63/1.16  ----------------------
% 1.63/1.16  #Ref     : 0
% 1.63/1.16  #Sup     : 2
% 1.63/1.16  #Fact    : 0
% 1.63/1.16  #Define  : 0
% 1.63/1.16  #Split   : 3
% 1.63/1.16  #Chain   : 0
% 1.63/1.16  #Close   : 0
% 1.63/1.16  
% 1.63/1.16  Ordering : KBO
% 1.63/1.16  
% 1.63/1.16  Simplification rules
% 1.63/1.16  ----------------------
% 1.63/1.16  #Subsume      : 8
% 1.63/1.16  #Demod        : 4
% 1.63/1.16  #Tautology    : 6
% 1.63/1.16  #SimpNegUnit  : 0
% 1.63/1.16  #BackRed      : 0
% 1.63/1.16  
% 1.63/1.16  #Partial instantiations: 0
% 1.63/1.16  #Strategies tried      : 1
% 1.63/1.16  
% 1.63/1.16  Timing (in seconds)
% 1.63/1.16  ----------------------
% 1.63/1.17  Preprocessing        : 0.29
% 1.63/1.17  Parsing              : 0.16
% 1.63/1.17  CNF conversion       : 0.03
% 1.63/1.17  Main loop            : 0.08
% 1.63/1.17  Inferencing          : 0.02
% 1.63/1.17  Reduction            : 0.03
% 1.63/1.17  Demodulation         : 0.02
% 1.63/1.17  BG Simplification    : 0.02
% 1.63/1.17  Subsumption          : 0.02
% 1.63/1.17  Abstraction          : 0.00
% 1.63/1.17  MUC search           : 0.00
% 1.63/1.17  Cooper               : 0.00
% 1.63/1.17  Total                : 0.39
% 1.63/1.17  Index Insertion      : 0.00
% 1.63/1.17  Index Deletion       : 0.00
% 1.63/1.17  Index Matching       : 0.00
% 1.63/1.17  BG Taut test         : 0.00
%------------------------------------------------------------------------------
