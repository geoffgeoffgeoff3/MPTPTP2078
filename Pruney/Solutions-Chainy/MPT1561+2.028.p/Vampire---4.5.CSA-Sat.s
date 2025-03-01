%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:16:11 EST 2020

% Result     : CounterSatisfiable 0.22s
% Output     : Saturation 0.22s
% Verified   : 
% Statistics : Number of clauses        :   15 (  15 expanded)
%              Number of leaves         :   15 (  15 expanded)
%              Depth                    :    0
%              Number of atoms          :   31 (  31 expanded)
%              Number of equality atoms :    4 (   4 expanded)
%              Maximal clause size      :    5 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
cnf(u22,negated_conjecture,
    ( v5_orders_2(sK0) )).

cnf(u41,negated_conjecture,
    ( r1_orders_2(sK0,sK1,sK1)
    | v2_struct_0(sK0) )).

cnf(u21,negated_conjecture,
    ( v3_orders_2(sK0) )).

cnf(u28,axiom,
    ( ~ v3_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | r1_orders_2(X0,X1,X1)
    | v2_struct_0(X0) )).

cnf(u24,negated_conjecture,
    ( m1_subset_1(sK1,u1_struct_0(sK0)) )).

cnf(u40,negated_conjecture,
    ( ~ m1_subset_1(X0,u1_struct_0(sK0))
    | r1_orders_2(sK0,X0,X0)
    | v2_struct_0(sK0) )).

cnf(u31,axiom,
    ( ~ m1_subset_1(X1,X0)
    | k6_domain_1(X0,X1) = k2_tarski(X1,X1)
    | v1_xboole_0(X0) )).

cnf(u23,negated_conjecture,
    ( l1_orders_2(sK0) )).

cnf(u39,negated_conjecture,
    ( ~ l1_orders_2(sK0)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | r1_orders_2(sK0,X0,X0)
    | v2_struct_0(sK0) )).

cnf(u27,axiom,
    ( ~ l1_orders_2(X0)
    | l1_struct_0(X0) )).

cnf(u29,axiom,
    ( ~ v1_xboole_0(u1_struct_0(X0))
    | ~ l1_struct_0(X0)
    | v2_struct_0(X0) )).

cnf(u32,negated_conjecture,
    ( l1_struct_0(sK0) )).

cnf(u20,negated_conjecture,
    ( ~ v2_struct_0(sK0) )).

cnf(u36,negated_conjecture,
    ( k6_domain_1(u1_struct_0(sK0),sK1) = k2_tarski(sK1,sK1) )).

cnf(u38,negated_conjecture,
    ( sK1 != k2_yellow_0(sK0,k2_tarski(sK1,sK1))
    | sK1 != k1_yellow_0(sK0,k2_tarski(sK1,sK1)) )).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n024.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 20:39:36 EST 2020
% 0.19/0.35  % CPUTime    : 
% 0.22/0.46  % (11596)lrs+11_24_add=large:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:bd=off:cond=fast:fde=unused:gs=on:irw=on:lma=on:nm=4:nwc=1.3:nicw=on:sas=z3:stl=30:sac=on:sp=reverse_arity:uhcvi=on_136 on theBenchmark
% 0.22/0.47  % (11599)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_75 on theBenchmark
% 0.22/0.47  % (11599)Refutation not found, incomplete strategy% (11599)------------------------------
% 0.22/0.47  % (11599)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.47  % (11599)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.47  
% 0.22/0.47  % (11599)Memory used [KB]: 1535
% 0.22/0.47  % (11599)Time elapsed: 0.049 s
% 0.22/0.47  % (11599)------------------------------
% 0.22/0.47  % (11599)------------------------------
% 0.22/0.47  % (11597)lrs+11_5_av=off:cond=on:fsr=off:lma=on:lwlo=on:nwc=1.2:sas=z3:stl=30:sp=reverse_arity:updr=off_123 on theBenchmark
% 0.22/0.47  % SZS status CounterSatisfiable for theBenchmark
% 0.22/0.47  % (11597)# SZS output start Saturation.
% 0.22/0.47  cnf(u22,negated_conjecture,
% 0.22/0.47      v5_orders_2(sK0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u41,negated_conjecture,
% 0.22/0.47      r1_orders_2(sK0,sK1,sK1) | v2_struct_0(sK0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u21,negated_conjecture,
% 0.22/0.47      v3_orders_2(sK0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u28,axiom,
% 0.22/0.47      ~v3_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | r1_orders_2(X0,X1,X1) | v2_struct_0(X0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u24,negated_conjecture,
% 0.22/0.47      m1_subset_1(sK1,u1_struct_0(sK0))).
% 0.22/0.47  
% 0.22/0.47  cnf(u40,negated_conjecture,
% 0.22/0.47      ~m1_subset_1(X0,u1_struct_0(sK0)) | r1_orders_2(sK0,X0,X0) | v2_struct_0(sK0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u31,axiom,
% 0.22/0.47      ~m1_subset_1(X1,X0) | k6_domain_1(X0,X1) = k2_tarski(X1,X1) | v1_xboole_0(X0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u23,negated_conjecture,
% 0.22/0.47      l1_orders_2(sK0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u39,negated_conjecture,
% 0.22/0.47      ~l1_orders_2(sK0) | ~m1_subset_1(X0,u1_struct_0(sK0)) | r1_orders_2(sK0,X0,X0) | v2_struct_0(sK0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u27,axiom,
% 0.22/0.47      ~l1_orders_2(X0) | l1_struct_0(X0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u29,axiom,
% 0.22/0.47      ~v1_xboole_0(u1_struct_0(X0)) | ~l1_struct_0(X0) | v2_struct_0(X0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u32,negated_conjecture,
% 0.22/0.47      l1_struct_0(sK0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u20,negated_conjecture,
% 0.22/0.47      ~v2_struct_0(sK0)).
% 0.22/0.47  
% 0.22/0.47  cnf(u36,negated_conjecture,
% 0.22/0.47      k6_domain_1(u1_struct_0(sK0),sK1) = k2_tarski(sK1,sK1)).
% 0.22/0.47  
% 0.22/0.47  cnf(u38,negated_conjecture,
% 0.22/0.47      sK1 != k2_yellow_0(sK0,k2_tarski(sK1,sK1)) | sK1 != k1_yellow_0(sK0,k2_tarski(sK1,sK1))).
% 0.22/0.47  
% 0.22/0.47  % (11597)# SZS output end Saturation.
% 0.22/0.47  % (11597)------------------------------
% 0.22/0.47  % (11597)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.47  % (11597)Termination reason: Satisfiable
% 0.22/0.47  
% 0.22/0.47  % (11597)Memory used [KB]: 1663
% 0.22/0.47  % (11597)Time elapsed: 0.049 s
% 0.22/0.47  % (11597)------------------------------
% 0.22/0.47  % (11597)------------------------------
% 0.22/0.47  % (11595)Success in time 0.112 s
%------------------------------------------------------------------------------
