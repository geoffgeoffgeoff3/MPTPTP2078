%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:16:14 EST 2020

% Result     : CounterSatisfiable 0.20s
% Output     : Saturation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   14 (  14 expanded)
%              Number of leaves         :   14 (  14 expanded)
%              Depth                    :    0
%              Number of atoms          :   29 (  29 expanded)
%              Number of equality atoms :    6 (   6 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
tff(u66,negated_conjecture,
    ( ~ ( sK1 != k1_yellow_0(sK0,k6_domain_1(u1_struct_0(sK0),sK1)) )
    | ~ ~ v1_xboole_0(u1_struct_0(sK0))
    | sK1 != k1_yellow_0(sK0,k1_tarski(sK1)) )).

tff(u65,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) )).

tff(u64,negated_conjecture,
    ( ~ ~ v1_xboole_0(u1_struct_0(sK0))
    | k6_domain_1(u1_struct_0(sK0),sK1) = k1_tarski(sK1) )).

tff(u63,negated_conjecture,(
    ~ v2_struct_0(sK0) )).

tff(u62,axiom,(
    ! [X0] :
      ( v2_struct_0(X0)
      | ~ l1_struct_0(X0)
      | ~ v1_xboole_0(u1_struct_0(X0)) ) )).

tff(u61,axiom,(
    ! [X0] :
      ( l1_struct_0(X0)
      | ~ l1_orders_2(X0) ) )).

tff(u60,negated_conjecture,
    ( ~ ~ v1_xboole_0(u1_struct_0(sK0))
    | ~ v1_xboole_0(u1_struct_0(sK0)) )).

tff(u59,axiom,(
    ! [X1,X0] :
      ( v1_xboole_0(X0)
      | ~ m1_subset_1(X1,X0)
      | k6_domain_1(X0,X1) = k1_tarski(X1) ) )).

tff(u58,negated_conjecture,(
    l1_orders_2(sK0) )).

tff(u57,negated_conjecture,
    ( ~ ~ v1_xboole_0(u1_struct_0(sK0))
    | ! [X0] :
        ( ~ m1_subset_1(X0,u1_struct_0(sK0))
        | k1_tarski(X0) = k6_domain_1(u1_struct_0(sK0),X0) ) )).

tff(u56,negated_conjecture,(
    m1_subset_1(sK1,u1_struct_0(sK0)) )).

tff(u55,negated_conjecture,(
    v3_orders_2(sK0) )).

tff(u54,axiom,(
    ! [X1,X0] :
      ( r1_orders_2(X0,X1,X1)
      | ~ m1_subset_1(X1,u1_struct_0(X0))
      | ~ l1_orders_2(X0)
      | ~ v3_orders_2(X0)
      | v2_struct_0(X0) ) )).

tff(u53,negated_conjecture,(
    v5_orders_2(sK0) )).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n005.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 20:56:32 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.20/0.45  % (3061)ott-1_50_afr=on:afp=1000:afq=1.2:amm=sco:anc=none:bsr=on:cond=fast:fsr=off:fde=none:irw=on:nm=16:nwc=1.5:updr=off:uhcvi=on_1883 on theBenchmark
% 0.20/0.45  % SZS status CounterSatisfiable for theBenchmark
% 0.20/0.45  % (3061)# SZS output start Saturation.
% 0.20/0.45  tff(u66,negated_conjecture,
% 0.20/0.45      ((~(sK1 != k1_yellow_0(sK0,k6_domain_1(u1_struct_0(sK0),sK1)))) | (~~v1_xboole_0(u1_struct_0(sK0))) | (sK1 != k1_yellow_0(sK0,k1_tarski(sK1))))).
% 0.20/0.45  
% 0.20/0.45  tff(u65,axiom,
% 0.20/0.45      (![X0] : ((k2_tarski(X0,X0) = k1_tarski(X0))))).
% 0.20/0.45  
% 0.20/0.45  tff(u64,negated_conjecture,
% 0.20/0.45      ((~~v1_xboole_0(u1_struct_0(sK0))) | (k6_domain_1(u1_struct_0(sK0),sK1) = k1_tarski(sK1)))).
% 0.20/0.45  
% 0.20/0.45  tff(u63,negated_conjecture,
% 0.20/0.45      ~v2_struct_0(sK0)).
% 0.20/0.45  
% 0.20/0.45  tff(u62,axiom,
% 0.20/0.45      (![X0] : ((v2_struct_0(X0) | ~l1_struct_0(X0) | ~v1_xboole_0(u1_struct_0(X0)))))).
% 0.20/0.45  
% 0.20/0.45  tff(u61,axiom,
% 0.20/0.45      (![X0] : ((l1_struct_0(X0) | ~l1_orders_2(X0))))).
% 0.20/0.45  
% 0.20/0.45  tff(u60,negated_conjecture,
% 0.20/0.45      ((~~v1_xboole_0(u1_struct_0(sK0))) | ~v1_xboole_0(u1_struct_0(sK0)))).
% 0.20/0.45  
% 0.20/0.45  tff(u59,axiom,
% 0.20/0.45      (![X1, X0] : ((v1_xboole_0(X0) | ~m1_subset_1(X1,X0) | (k6_domain_1(X0,X1) = k1_tarski(X1)))))).
% 0.20/0.45  
% 0.20/0.45  tff(u58,negated_conjecture,
% 0.20/0.45      l1_orders_2(sK0)).
% 0.20/0.45  
% 0.20/0.45  tff(u57,negated_conjecture,
% 0.20/0.45      ((~~v1_xboole_0(u1_struct_0(sK0))) | (![X0] : ((~m1_subset_1(X0,u1_struct_0(sK0)) | (k1_tarski(X0) = k6_domain_1(u1_struct_0(sK0),X0))))))).
% 0.20/0.45  
% 0.20/0.45  tff(u56,negated_conjecture,
% 0.20/0.45      m1_subset_1(sK1,u1_struct_0(sK0))).
% 0.20/0.45  
% 0.20/0.45  tff(u55,negated_conjecture,
% 0.20/0.45      v3_orders_2(sK0)).
% 0.20/0.45  
% 0.20/0.45  tff(u54,axiom,
% 0.20/0.45      (![X1, X0] : ((r1_orders_2(X0,X1,X1) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~l1_orders_2(X0) | ~v3_orders_2(X0) | v2_struct_0(X0))))).
% 0.20/0.45  
% 0.20/0.45  tff(u53,negated_conjecture,
% 0.20/0.45      v5_orders_2(sK0)).
% 0.20/0.45  
% 0.20/0.45  % (3061)# SZS output end Saturation.
% 0.20/0.45  % (3061)------------------------------
% 0.20/0.45  % (3061)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.45  % (3061)Termination reason: Satisfiable
% 0.20/0.45  
% 0.20/0.45  % (3061)Memory used [KB]: 6140
% 0.20/0.45  % (3061)Time elapsed: 0.044 s
% 0.20/0.45  % (3061)------------------------------
% 0.20/0.45  % (3061)------------------------------
% 0.20/0.45  % (3044)Success in time 0.097 s
%------------------------------------------------------------------------------
