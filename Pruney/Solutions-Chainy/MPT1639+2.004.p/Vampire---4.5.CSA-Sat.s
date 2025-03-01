%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:16:59 EST 2020

% Result     : CounterSatisfiable 0.21s
% Output     : Saturation 0.21s
% Verified   : 
% Statistics : Number of clauses        :   43 (  43 expanded)
%              Number of leaves         :   43 (  43 expanded)
%              Depth                    :    0
%              Number of atoms          :  173 ( 173 expanded)
%              Number of equality atoms :   14 (  14 expanded)
%              Maximal clause size      :   10 (   4 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
cnf(u162,negated_conjecture,
    ( r1_yellow_0(sK0,k2_tarski(sK1,sK1)) )).

cnf(u144,negated_conjecture,
    ( r1_yellow_0(sK0,k2_tarski(sK2,sK2)) )).

cnf(u18,negated_conjecture,
    ( v5_orders_2(sK0) )).

cnf(u116,negated_conjecture,
    ( r1_orders_2(sK0,sK3(sK0,sK2,sK2,sK2),sK3(sK0,sK2,sK2,sK2))
    | r1_yellow_0(sK0,k2_tarski(sK2,sK2)) )).

cnf(u109,negated_conjecture,
    ( r1_orders_2(sK0,sK1,sK3(sK0,sK1,sK1,sK1))
    | r1_yellow_0(sK0,k2_tarski(sK1,sK1)) )).

cnf(u42,negated_conjecture,
    ( r1_orders_2(sK0,sK1,sK1) )).

cnf(u106,negated_conjecture,
    ( r1_orders_2(sK0,sK2,sK3(sK0,sK2,sK2,sK2))
    | r1_yellow_0(sK0,k2_tarski(sK2,sK2)) )).

cnf(u39,negated_conjecture,
    ( r1_orders_2(sK0,sK2,sK2) )).

cnf(u96,negated_conjecture,
    ( ~ r1_orders_2(sK0,X3,sK1)
    | ~ m1_subset_1(X3,u1_struct_0(sK0))
    | r1_orders_2(sK0,X3,sK3(sK0,sK1,X3,sK1))
    | r1_yellow_0(sK0,k2_tarski(sK1,X3)) )).

cnf(u99,negated_conjecture,
    ( ~ r1_orders_2(sK0,X4,sK1)
    | ~ m1_subset_1(X4,u1_struct_0(sK0))
    | r1_orders_2(sK0,sK1,sK3(sK0,sK1,X4,sK1))
    | r1_yellow_0(sK0,k2_tarski(sK1,X4)) )).

cnf(u102,negated_conjecture,
    ( ~ r1_orders_2(sK0,X5,sK1)
    | ~ m1_subset_1(X5,u1_struct_0(sK0))
    | m1_subset_1(sK3(sK0,sK1,X5,sK1),u1_struct_0(sK0))
    | r1_yellow_0(sK0,k2_tarski(sK1,X5)) )).

cnf(u87,negated_conjecture,
    ( ~ r1_orders_2(sK0,X0,sK1)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | r1_orders_2(sK0,X0,sK3(sK0,sK1,X0,sK1))
    | sK1 = k10_lattice3(sK0,sK1,X0) )).

cnf(u90,negated_conjecture,
    ( ~ r1_orders_2(sK0,X1,sK1)
    | ~ m1_subset_1(X1,u1_struct_0(sK0))
    | r1_orders_2(sK0,sK1,sK3(sK0,sK1,X1,sK1))
    | sK1 = k10_lattice3(sK0,sK1,X1) )).

cnf(u93,negated_conjecture,
    ( ~ r1_orders_2(sK0,X2,sK1)
    | ~ m1_subset_1(X2,u1_struct_0(sK0))
    | m1_subset_1(sK3(sK0,sK1,X2,sK1),u1_struct_0(sK0))
    | sK1 = k10_lattice3(sK0,sK1,X2) )).

cnf(u47,negated_conjecture,
    ( ~ r1_orders_2(sK0,X0,sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | m1_subset_1(sK3(sK0,sK2,X0,sK2),u1_struct_0(sK0))
    | r1_yellow_0(sK0,k2_tarski(sK2,X0)) )).

cnf(u52,negated_conjecture,
    ( ~ r1_orders_2(sK0,X0,sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | r1_orders_2(sK0,sK2,sK3(sK0,sK2,X0,sK2))
    | r1_yellow_0(sK0,k2_tarski(sK2,X0)) )).

cnf(u57,negated_conjecture,
    ( ~ r1_orders_2(sK0,X0,sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | r1_orders_2(sK0,X0,sK3(sK0,sK2,X0,sK2))
    | r1_yellow_0(sK0,k2_tarski(sK2,X0)) )).

cnf(u62,negated_conjecture,
    ( ~ r1_orders_2(sK0,X0,sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | m1_subset_1(sK3(sK0,sK2,X0,sK2),u1_struct_0(sK0))
    | sK2 = k10_lattice3(sK0,sK2,X0) )).

cnf(u67,negated_conjecture,
    ( ~ r1_orders_2(sK0,X0,sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | r1_orders_2(sK0,sK2,sK3(sK0,sK2,X0,sK2))
    | sK2 = k10_lattice3(sK0,sK2,X0) )).

cnf(u72,negated_conjecture,
    ( ~ r1_orders_2(sK0,X0,sK2)
    | ~ m1_subset_1(X0,u1_struct_0(sK0))
    | r1_orders_2(sK0,X0,sK3(sK0,sK2,X0,sK2))
    | sK2 = k10_lattice3(sK0,sK2,X0) )).

cnf(u25,axiom,
    ( ~ r1_orders_2(X0,X3,sK3(X0,X1,X2,X3))
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ r1_orders_2(X0,X1,X3)
    | ~ r1_orders_2(X0,X2,X3)
    | ~ v5_orders_2(X0)
    | r1_yellow_0(X0,k2_tarski(X1,X2)) )).

cnf(u29,axiom,
    ( ~ r1_orders_2(X0,X3,sK3(X0,X1,X2,X3))
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ r1_orders_2(X0,X1,X3)
    | ~ r1_orders_2(X0,X2,X3)
    | ~ v5_orders_2(X0)
    | k10_lattice3(X0,X1,X2) = X3 )).

cnf(u22,axiom,
    ( ~ r1_orders_2(X0,X1,X3)
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ r1_orders_2(X0,X2,X3)
    | m1_subset_1(sK3(X0,X1,X2,X3),u1_struct_0(X0))
    | r1_yellow_0(X0,k2_tarski(X1,X2)) )).

cnf(u23,axiom,
    ( ~ r1_orders_2(X0,X1,X3)
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ r1_orders_2(X0,X2,X3)
    | r1_orders_2(X0,X1,sK3(X0,X1,X2,X3))
    | r1_yellow_0(X0,k2_tarski(X1,X2)) )).

cnf(u24,axiom,
    ( ~ r1_orders_2(X0,X1,X3)
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ r1_orders_2(X0,X2,X3)
    | r1_orders_2(X0,X2,sK3(X0,X1,X2,X3))
    | r1_yellow_0(X0,k2_tarski(X1,X2)) )).

cnf(u26,axiom,
    ( ~ r1_orders_2(X0,X1,X3)
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ r1_orders_2(X0,X2,X3)
    | m1_subset_1(sK3(X0,X1,X2,X3),u1_struct_0(X0))
    | k10_lattice3(X0,X1,X2) = X3 )).

cnf(u27,axiom,
    ( ~ r1_orders_2(X0,X1,X3)
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ r1_orders_2(X0,X2,X3)
    | r1_orders_2(X0,X1,sK3(X0,X1,X2,X3))
    | k10_lattice3(X0,X1,X2) = X3 )).

cnf(u28,axiom,
    ( ~ r1_orders_2(X0,X1,X3)
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ m1_subset_1(X3,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ r1_orders_2(X0,X2,X3)
    | r1_orders_2(X0,X2,sK3(X0,X1,X2,X3))
    | k10_lattice3(X0,X1,X2) = X3 )).

cnf(u112,negated_conjecture,
    ( m1_subset_1(sK3(sK0,sK1,sK1,sK1),u1_struct_0(sK0))
    | r1_yellow_0(sK0,k2_tarski(sK1,sK1)) )).

cnf(u104,negated_conjecture,
    ( m1_subset_1(sK3(sK0,sK2,sK2,sK2),u1_struct_0(sK0))
    | r1_yellow_0(sK0,k2_tarski(sK2,sK2)) )).

cnf(u15,negated_conjecture,
    ( m1_subset_1(sK1,u1_struct_0(sK0)) )).

cnf(u12,negated_conjecture,
    ( m1_subset_1(sK2,u1_struct_0(sK0)) )).

cnf(u32,axiom,
    ( ~ m1_subset_1(k10_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ r1_yellow_0(X0,k2_tarski(X1,X2))
    | r1_orders_2(X0,X2,k10_lattice3(X0,X1,X2)) )).

cnf(u33,axiom,
    ( ~ m1_subset_1(k10_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ r1_yellow_0(X0,k2_tarski(X1,X2))
    | r1_orders_2(X0,X1,k10_lattice3(X0,X1,X2)) )).

cnf(u34,axiom,
    ( ~ m1_subset_1(k10_lattice3(X0,X1,X2),u1_struct_0(X0))
    | ~ l1_orders_2(X0)
    | ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ m1_subset_1(X2,u1_struct_0(X0))
    | ~ v5_orders_2(X0)
    | ~ r1_yellow_0(X0,k2_tarski(X1,X2))
    | ~ m1_subset_1(X5,u1_struct_0(X0))
    | ~ r1_orders_2(X0,X1,X5)
    | ~ r1_orders_2(X0,X2,X5)
    | r1_orders_2(X0,k10_lattice3(X0,X1,X2),X5) )).

cnf(u20,axiom,
    ( ~ m1_subset_1(X1,u1_struct_0(X0))
    | ~ v3_orders_2(X0)
    | ~ l1_orders_2(X0)
    | v2_struct_0(X0)
    | r1_orders_2(X0,X1,X1) )).

cnf(u19,negated_conjecture,
    ( l1_orders_2(sK0) )).

cnf(u17,negated_conjecture,
    ( v3_orders_2(sK0) )).

cnf(u16,negated_conjecture,
    ( ~ v2_struct_0(sK0) )).

cnf(u195,negated_conjecture,
    ( sK1 = k10_lattice3(sK0,sK1,sK1) )).

cnf(u181,negated_conjecture,
    ( sK2 = k10_lattice3(sK0,sK2,sK2) )).

cnf(u13,negated_conjecture,
    ( k5_waybel_0(sK0,sK1) = k5_waybel_0(sK0,sK2) )).

cnf(u14,negated_conjecture,
    ( sK1 != sK2 )).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n018.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 17:40:27 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.21/0.43  % (16654)lrs+11_1024_afr=on:afp=40000:afq=2.0:anc=none:br=off:ep=RSTC:gs=on:nm=16:nwc=1:stl=30:sp=occurrence:urr=on_129 on theBenchmark
% 0.21/0.44  % (16646)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_38 on theBenchmark
% 0.21/0.47  % (16640)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_2 on theBenchmark
% 0.21/0.48  % (16655)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_159 on theBenchmark
% 0.21/0.48  % (16648)lrs+10_4_add=off:afp=100000:afq=2.0:anc=none:bd=off:er=known:gs=on:gsem=off:irw=on:lcm=reverse:nm=4:newcnf=on:nwc=2.5:sas=z3:stl=30:sac=on:urr=ec_only:updr=off_3 on theBenchmark
% 0.21/0.48  % (16640)Refutation not found, incomplete strategy% (16640)------------------------------
% 0.21/0.48  % (16640)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.49  % (16641)lrs+1002_8_add=large:afp=40000:afq=1.0:amm=off:anc=none:cond=on:gs=on:irw=on:nm=16:newcnf=on:nwc=1:stl=30:sos=on:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.49  % (16640)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.49  
% 0.21/0.49  % (16640)Memory used [KB]: 6268
% 0.21/0.49  % (16640)Time elapsed: 0.068 s
% 0.21/0.49  % (16640)------------------------------
% 0.21/0.49  % (16640)------------------------------
% 0.21/0.49  % (16658)lrs+1002_16_av=off:cond=on:nwc=3:stl=30_83 on theBenchmark
% 0.21/0.50  % (16644)lrs+1011_3:1_av=off:cond=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sos=all:updr=off_11 on theBenchmark
% 0.21/0.50  % (16659)dis+11_3_add=off:afr=on:afp=40000:afq=2.0:amm=sco:anc=none:cond=on:nm=16:nwc=1:ss=axioms:st=5.0:sos=all:sp=reverse_arity_169 on theBenchmark
% 0.21/0.50  % (16645)dis+1011_3_awrs=decay:awrsf=32:afp=10000:afq=1.1:amm=off:anc=none:cond=fast:ep=RSTC:fde=unused:lma=on:nm=16:nwc=2.5:s2a=on:sac=on:sp=frequency:urr=ec_only_2 on theBenchmark
% 0.21/0.50  % (16643)dis+1011_5:4_acc=model:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=off:ccuc=small_ones:cond=fast:fde=unused:gs=on:nm=2:newcnf=on:nwc=1:nicw=on:sos=on:sac=on:sp=occurrence:updr=off_9 on theBenchmark
% 0.21/0.50  % (16652)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.21/0.50  % (16656)ott+1002_7_acc=on:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bs=unit_only:gsp=input_only:gs=on:nm=2:nwc=10:sos=theory:sp=reverse_arity:urr=on:updr=off_45 on theBenchmark
% 0.21/0.51  % (16642)lrs+1010_2:1_aac=none:afr=on:afp=10000:afq=1.4:amm=sco:anc=none:gs=on:gsem=off:irw=on:nm=16:nwc=3:stl=30_7 on theBenchmark
% 0.21/0.51  % (16641)Refutation not found, incomplete strategy% (16641)------------------------------
% 0.21/0.51  % (16641)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.51  % (16641)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.51  
% 0.21/0.51  % (16641)Memory used [KB]: 10618
% 0.21/0.51  % (16641)Time elapsed: 0.091 s
% 0.21/0.51  % (16641)------------------------------
% 0.21/0.51  % (16641)------------------------------
% 0.21/0.51  % (16660)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_3 on theBenchmark
% 0.21/0.51  % (16653)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_81 on theBenchmark
% 0.21/0.51  % (16660)Refutation not found, incomplete strategy% (16660)------------------------------
% 0.21/0.51  % (16660)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.51  % (16660)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.51  
% 0.21/0.51  % (16660)Memory used [KB]: 10618
% 0.21/0.51  % (16660)Time elapsed: 0.096 s
% 0.21/0.51  % (16660)------------------------------
% 0.21/0.51  % (16660)------------------------------
% 0.21/0.51  % (16647)lrs+1011_5_afr=on:afp=100000:afq=1.0:amm=off:anc=none:cond=on:lma=on:nm=6:nwc=1:sas=z3:stl=30:sac=on:urr=on_12 on theBenchmark
% 0.21/0.51  % (16650)dis+11_2:1_add=large:afp=4000:afq=1.4:amm=sco:anc=none:fsr=off:nm=16:nwc=1:sd=3:ss=axioms:st=1.2:sos=all:urr=ec_only:updr=off_2 on theBenchmark
% 0.21/0.51  % (16650)Refutation not found, incomplete strategy% (16650)------------------------------
% 0.21/0.51  % (16650)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.51  % (16650)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.51  
% 0.21/0.51  % (16650)Memory used [KB]: 6140
% 0.21/0.51  % (16650)Time elapsed: 0.107 s
% 0.21/0.51  % (16650)------------------------------
% 0.21/0.51  % (16650)------------------------------
% 0.21/0.51  % (16657)ott+1_8:1_av=off:bd=preordered:bsr=on:lma=on:nm=64:newcnf=on:nwc=1.2:uhcvi=on_180 on theBenchmark
% 0.21/0.52  % (16651)lrs+10_50_add=large:afp=40000:afq=1.2:amm=sco:anc=none:br=off:cond=on:fsr=off:gsp=input_only:gs=on:irw=on:lma=on:nm=64:nwc=1:stl=30:sos=all:sp=reverse_arity:urr=on_21 on theBenchmark
% 0.21/0.52  % SZS status CounterSatisfiable for theBenchmark
% 0.21/0.52  % (16657)# SZS output start Saturation.
% 0.21/0.52  cnf(u162,negated_conjecture,
% 0.21/0.52      r1_yellow_0(sK0,k2_tarski(sK1,sK1))).
% 0.21/0.52  
% 0.21/0.52  cnf(u144,negated_conjecture,
% 0.21/0.52      r1_yellow_0(sK0,k2_tarski(sK2,sK2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u18,negated_conjecture,
% 0.21/0.52      v5_orders_2(sK0)).
% 0.21/0.52  
% 0.21/0.52  cnf(u116,negated_conjecture,
% 0.21/0.52      r1_orders_2(sK0,sK3(sK0,sK2,sK2,sK2),sK3(sK0,sK2,sK2,sK2)) | r1_yellow_0(sK0,k2_tarski(sK2,sK2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u109,negated_conjecture,
% 0.21/0.52      r1_orders_2(sK0,sK1,sK3(sK0,sK1,sK1,sK1)) | r1_yellow_0(sK0,k2_tarski(sK1,sK1))).
% 0.21/0.52  
% 0.21/0.52  cnf(u42,negated_conjecture,
% 0.21/0.52      r1_orders_2(sK0,sK1,sK1)).
% 0.21/0.52  
% 0.21/0.52  cnf(u106,negated_conjecture,
% 0.21/0.52      r1_orders_2(sK0,sK2,sK3(sK0,sK2,sK2,sK2)) | r1_yellow_0(sK0,k2_tarski(sK2,sK2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u39,negated_conjecture,
% 0.21/0.52      r1_orders_2(sK0,sK2,sK2)).
% 0.21/0.52  
% 0.21/0.52  cnf(u96,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X3,sK1) | ~m1_subset_1(X3,u1_struct_0(sK0)) | r1_orders_2(sK0,X3,sK3(sK0,sK1,X3,sK1)) | r1_yellow_0(sK0,k2_tarski(sK1,X3))).
% 0.21/0.52  
% 0.21/0.52  cnf(u99,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X4,sK1) | ~m1_subset_1(X4,u1_struct_0(sK0)) | r1_orders_2(sK0,sK1,sK3(sK0,sK1,X4,sK1)) | r1_yellow_0(sK0,k2_tarski(sK1,X4))).
% 0.21/0.52  
% 0.21/0.52  cnf(u102,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X5,sK1) | ~m1_subset_1(X5,u1_struct_0(sK0)) | m1_subset_1(sK3(sK0,sK1,X5,sK1),u1_struct_0(sK0)) | r1_yellow_0(sK0,k2_tarski(sK1,X5))).
% 0.21/0.52  
% 0.21/0.52  cnf(u87,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X0,sK1) | ~m1_subset_1(X0,u1_struct_0(sK0)) | r1_orders_2(sK0,X0,sK3(sK0,sK1,X0,sK1)) | sK1 = k10_lattice3(sK0,sK1,X0)).
% 0.21/0.52  
% 0.21/0.52  cnf(u90,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X1,sK1) | ~m1_subset_1(X1,u1_struct_0(sK0)) | r1_orders_2(sK0,sK1,sK3(sK0,sK1,X1,sK1)) | sK1 = k10_lattice3(sK0,sK1,X1)).
% 0.21/0.52  
% 0.21/0.52  cnf(u93,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X2,sK1) | ~m1_subset_1(X2,u1_struct_0(sK0)) | m1_subset_1(sK3(sK0,sK1,X2,sK1),u1_struct_0(sK0)) | sK1 = k10_lattice3(sK0,sK1,X2)).
% 0.21/0.52  
% 0.21/0.52  cnf(u47,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X0,sK2) | ~m1_subset_1(X0,u1_struct_0(sK0)) | m1_subset_1(sK3(sK0,sK2,X0,sK2),u1_struct_0(sK0)) | r1_yellow_0(sK0,k2_tarski(sK2,X0))).
% 0.21/0.52  
% 0.21/0.52  cnf(u52,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X0,sK2) | ~m1_subset_1(X0,u1_struct_0(sK0)) | r1_orders_2(sK0,sK2,sK3(sK0,sK2,X0,sK2)) | r1_yellow_0(sK0,k2_tarski(sK2,X0))).
% 0.21/0.52  
% 0.21/0.52  cnf(u57,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X0,sK2) | ~m1_subset_1(X0,u1_struct_0(sK0)) | r1_orders_2(sK0,X0,sK3(sK0,sK2,X0,sK2)) | r1_yellow_0(sK0,k2_tarski(sK2,X0))).
% 0.21/0.52  
% 0.21/0.52  cnf(u62,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X0,sK2) | ~m1_subset_1(X0,u1_struct_0(sK0)) | m1_subset_1(sK3(sK0,sK2,X0,sK2),u1_struct_0(sK0)) | sK2 = k10_lattice3(sK0,sK2,X0)).
% 0.21/0.52  
% 0.21/0.52  cnf(u67,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X0,sK2) | ~m1_subset_1(X0,u1_struct_0(sK0)) | r1_orders_2(sK0,sK2,sK3(sK0,sK2,X0,sK2)) | sK2 = k10_lattice3(sK0,sK2,X0)).
% 0.21/0.52  
% 0.21/0.52  cnf(u72,negated_conjecture,
% 0.21/0.52      ~r1_orders_2(sK0,X0,sK2) | ~m1_subset_1(X0,u1_struct_0(sK0)) | r1_orders_2(sK0,X0,sK3(sK0,sK2,X0,sK2)) | sK2 = k10_lattice3(sK0,sK2,X0)).
% 0.21/0.52  
% 0.21/0.52  cnf(u25,axiom,
% 0.21/0.52      ~r1_orders_2(X0,X3,sK3(X0,X1,X2,X3)) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~r1_orders_2(X0,X1,X3) | ~r1_orders_2(X0,X2,X3) | ~v5_orders_2(X0) | r1_yellow_0(X0,k2_tarski(X1,X2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u29,axiom,
% 0.21/0.52      ~r1_orders_2(X0,X3,sK3(X0,X1,X2,X3)) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~r1_orders_2(X0,X1,X3) | ~r1_orders_2(X0,X2,X3) | ~v5_orders_2(X0) | k10_lattice3(X0,X1,X2) = X3).
% 0.21/0.52  
% 0.21/0.52  cnf(u22,axiom,
% 0.21/0.52      ~r1_orders_2(X0,X1,X3) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~v5_orders_2(X0) | ~r1_orders_2(X0,X2,X3) | m1_subset_1(sK3(X0,X1,X2,X3),u1_struct_0(X0)) | r1_yellow_0(X0,k2_tarski(X1,X2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u23,axiom,
% 0.21/0.52      ~r1_orders_2(X0,X1,X3) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~v5_orders_2(X0) | ~r1_orders_2(X0,X2,X3) | r1_orders_2(X0,X1,sK3(X0,X1,X2,X3)) | r1_yellow_0(X0,k2_tarski(X1,X2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u24,axiom,
% 0.21/0.52      ~r1_orders_2(X0,X1,X3) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~v5_orders_2(X0) | ~r1_orders_2(X0,X2,X3) | r1_orders_2(X0,X2,sK3(X0,X1,X2,X3)) | r1_yellow_0(X0,k2_tarski(X1,X2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u26,axiom,
% 0.21/0.52      ~r1_orders_2(X0,X1,X3) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~v5_orders_2(X0) | ~r1_orders_2(X0,X2,X3) | m1_subset_1(sK3(X0,X1,X2,X3),u1_struct_0(X0)) | k10_lattice3(X0,X1,X2) = X3).
% 0.21/0.52  
% 0.21/0.52  cnf(u27,axiom,
% 0.21/0.52      ~r1_orders_2(X0,X1,X3) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~v5_orders_2(X0) | ~r1_orders_2(X0,X2,X3) | r1_orders_2(X0,X1,sK3(X0,X1,X2,X3)) | k10_lattice3(X0,X1,X2) = X3).
% 0.21/0.52  
% 0.21/0.52  cnf(u28,axiom,
% 0.21/0.52      ~r1_orders_2(X0,X1,X3) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~m1_subset_1(X3,u1_struct_0(X0)) | ~v5_orders_2(X0) | ~r1_orders_2(X0,X2,X3) | r1_orders_2(X0,X2,sK3(X0,X1,X2,X3)) | k10_lattice3(X0,X1,X2) = X3).
% 0.21/0.52  
% 0.21/0.52  cnf(u112,negated_conjecture,
% 0.21/0.52      m1_subset_1(sK3(sK0,sK1,sK1,sK1),u1_struct_0(sK0)) | r1_yellow_0(sK0,k2_tarski(sK1,sK1))).
% 0.21/0.52  
% 0.21/0.52  cnf(u104,negated_conjecture,
% 0.21/0.52      m1_subset_1(sK3(sK0,sK2,sK2,sK2),u1_struct_0(sK0)) | r1_yellow_0(sK0,k2_tarski(sK2,sK2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u15,negated_conjecture,
% 0.21/0.52      m1_subset_1(sK1,u1_struct_0(sK0))).
% 0.21/0.52  
% 0.21/0.52  cnf(u12,negated_conjecture,
% 0.21/0.52      m1_subset_1(sK2,u1_struct_0(sK0))).
% 0.21/0.52  
% 0.21/0.52  cnf(u32,axiom,
% 0.21/0.52      ~m1_subset_1(k10_lattice3(X0,X1,X2),u1_struct_0(X0)) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~v5_orders_2(X0) | ~r1_yellow_0(X0,k2_tarski(X1,X2)) | r1_orders_2(X0,X2,k10_lattice3(X0,X1,X2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u33,axiom,
% 0.21/0.52      ~m1_subset_1(k10_lattice3(X0,X1,X2),u1_struct_0(X0)) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~v5_orders_2(X0) | ~r1_yellow_0(X0,k2_tarski(X1,X2)) | r1_orders_2(X0,X1,k10_lattice3(X0,X1,X2))).
% 0.21/0.52  
% 0.21/0.52  cnf(u34,axiom,
% 0.21/0.52      ~m1_subset_1(k10_lattice3(X0,X1,X2),u1_struct_0(X0)) | ~l1_orders_2(X0) | ~m1_subset_1(X1,u1_struct_0(X0)) | ~m1_subset_1(X2,u1_struct_0(X0)) | ~v5_orders_2(X0) | ~r1_yellow_0(X0,k2_tarski(X1,X2)) | ~m1_subset_1(X5,u1_struct_0(X0)) | ~r1_orders_2(X0,X1,X5) | ~r1_orders_2(X0,X2,X5) | r1_orders_2(X0,k10_lattice3(X0,X1,X2),X5)).
% 0.21/0.52  
% 0.21/0.52  cnf(u20,axiom,
% 0.21/0.52      ~m1_subset_1(X1,u1_struct_0(X0)) | ~v3_orders_2(X0) | ~l1_orders_2(X0) | v2_struct_0(X0) | r1_orders_2(X0,X1,X1)).
% 0.21/0.52  
% 0.21/0.52  cnf(u19,negated_conjecture,
% 0.21/0.52      l1_orders_2(sK0)).
% 0.21/0.52  
% 0.21/0.52  cnf(u17,negated_conjecture,
% 0.21/0.52      v3_orders_2(sK0)).
% 0.21/0.52  
% 0.21/0.52  cnf(u16,negated_conjecture,
% 0.21/0.52      ~v2_struct_0(sK0)).
% 0.21/0.52  
% 0.21/0.52  cnf(u195,negated_conjecture,
% 0.21/0.52      sK1 = k10_lattice3(sK0,sK1,sK1)).
% 0.21/0.52  
% 0.21/0.52  cnf(u181,negated_conjecture,
% 0.21/0.52      sK2 = k10_lattice3(sK0,sK2,sK2)).
% 0.21/0.52  
% 0.21/0.52  cnf(u13,negated_conjecture,
% 0.21/0.52      k5_waybel_0(sK0,sK1) = k5_waybel_0(sK0,sK2)).
% 0.21/0.52  
% 0.21/0.52  cnf(u14,negated_conjecture,
% 0.21/0.52      sK1 != sK2).
% 0.21/0.52  
% 0.21/0.52  % (16657)# SZS output end Saturation.
% 0.21/0.52  % (16657)------------------------------
% 0.21/0.52  % (16657)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.52  % (16657)Termination reason: Satisfiable
% 0.21/0.52  
% 0.21/0.52  % (16657)Memory used [KB]: 1663
% 0.21/0.52  % (16657)Time elapsed: 0.107 s
% 0.21/0.52  % (16657)------------------------------
% 0.21/0.52  % (16657)------------------------------
% 0.21/0.52  % (16637)Success in time 0.157 s
%------------------------------------------------------------------------------
