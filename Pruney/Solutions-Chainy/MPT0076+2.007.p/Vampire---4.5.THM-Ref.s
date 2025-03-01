%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:30:41 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   38 (  48 expanded)
%              Number of leaves         :    8 (  12 expanded)
%              Depth                    :    8
%              Number of atoms          :   80 ( 108 expanded)
%              Number of equality atoms :    3 (   3 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    2 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f54,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f40,f44,f49])).

fof(f49,plain,(
    ~ spl4_2 ),
    inference(avatar_contradiction_clause,[],[f46])).

fof(f46,plain,
    ( $false
    | ~ spl4_2 ),
    inference(resolution,[],[f39,f26])).

fof(f26,plain,(
    r2_hidden(sK2(sK1),sK1) ),
    inference(resolution,[],[f19,f16])).

fof(f16,plain,(
    ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,plain,(
    ? [X0,X1] :
      ( r1_xboole_0(X1,X0)
      & r1_tarski(X1,X0)
      & ~ v1_xboole_0(X1) ) ),
    inference(flattening,[],[f10])).

fof(f10,plain,(
    ? [X0,X1] :
      ( r1_xboole_0(X1,X0)
      & r1_tarski(X1,X0)
      & ~ v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ~ v1_xboole_0(X1)
       => ~ ( r1_xboole_0(X1,X0)
            & r1_tarski(X1,X0) ) ) ),
    inference(negated_conjecture,[],[f6])).

fof(f6,conjecture,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ~ ( r1_xboole_0(X1,X0)
          & r1_tarski(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_xboole_1)).

fof(f19,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK2(X0),X0) ) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).

fof(f39,plain,
    ( ! [X0] : ~ r2_hidden(X0,sK1)
    | ~ spl4_2 ),
    inference(avatar_component_clause,[],[f38])).

fof(f38,plain,
    ( spl4_2
  <=> ! [X0] : ~ r2_hidden(X0,sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl4_2])])).

fof(f44,plain,(
    spl4_1 ),
    inference(avatar_contradiction_clause,[],[f43])).

fof(f43,plain,
    ( $false
    | spl4_1 ),
    inference(subsumption_resolution,[],[f42,f18])).

fof(f18,plain,(
    r1_xboole_0(sK1,sK0) ),
    inference(cnf_transformation,[],[f11])).

fof(f42,plain,
    ( ~ r1_xboole_0(sK1,sK0)
    | spl4_1 ),
    inference(resolution,[],[f36,f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(f36,plain,
    ( ~ r1_xboole_0(sK0,sK1)
    | spl4_1 ),
    inference(avatar_component_clause,[],[f35])).

fof(f35,plain,
    ( spl4_1
  <=> r1_xboole_0(sK0,sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl4_1])])).

fof(f40,plain,
    ( ~ spl4_1
    | spl4_2 ),
    inference(avatar_split_clause,[],[f32,f38,f35])).

fof(f32,plain,(
    ! [X0] :
      ( ~ r2_hidden(X0,sK1)
      | ~ r1_xboole_0(sK0,sK1) ) ),
    inference(resolution,[],[f28,f29])).

fof(f29,plain,(
    ! [X0] :
      ( r1_xboole_0(sK1,X0)
      | ~ r1_xboole_0(sK0,X0) ) ),
    inference(resolution,[],[f25,f17])).

fof(f17,plain,(
    r1_tarski(sK1,sK0) ),
    inference(cnf_transformation,[],[f11])).

fof(f25,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | ~ r1_xboole_0(X1,X2)
      | r1_xboole_0(X0,X2) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( r1_xboole_0(X0,X2)
      | ~ r1_xboole_0(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_xboole_0(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t63_xboole_1)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X0,X0)
      | ~ r2_hidden(X1,X0) ) ),
    inference(superposition,[],[f22,f21])).

fof(f21,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f8])).

fof(f8,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(f22,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X2,k3_xboole_0(X0,X1))
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_xboole_0)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.14  % Command    : run_vampire %s %d
% 0.15/0.35  % Computer   : n007.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 20:20:06 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.22/0.42  % (7071)lrs-11_8_afr=on:afp=100000:afq=2.0:anc=none:bd=off:cond=on:gs=on:lma=on:nm=2:newcnf=on:nwc=3:stl=30:sac=on:sp=occurrence_6 on theBenchmark
% 0.22/0.42  % (7074)lrs+1004_5:4_aac=none:add=large:afp=100000:afq=1.4:anc=all_dependent:bd=off:cond=fast:gsp=input_only:gs=on:gsem=off:lma=on:lwlo=on:nm=4:newcnf=on:nwc=1:stl=30:sp=occurrence:updr=off:uhcvi=on_99 on theBenchmark
% 0.22/0.42  % (7076)ott+11_50_add=large:afr=on:afp=40000:afq=1.1:amm=sco:anc=all:bd=off:cond=fast:gs=on:gsem=on:irw=on:lma=on:nm=0:nwc=1:sp=occurrence:updr=off:uhcvi=on_102 on theBenchmark
% 0.22/0.42  % (7074)Refutation found. Thanks to Tanya!
% 0.22/0.42  % SZS status Theorem for theBenchmark
% 0.22/0.42  % SZS output start Proof for theBenchmark
% 0.22/0.42  fof(f54,plain,(
% 0.22/0.42    $false),
% 0.22/0.42    inference(avatar_sat_refutation,[],[f40,f44,f49])).
% 0.22/0.42  fof(f49,plain,(
% 0.22/0.42    ~spl4_2),
% 0.22/0.42    inference(avatar_contradiction_clause,[],[f46])).
% 0.22/0.42  fof(f46,plain,(
% 0.22/0.42    $false | ~spl4_2),
% 0.22/0.42    inference(resolution,[],[f39,f26])).
% 0.22/0.42  fof(f26,plain,(
% 0.22/0.42    r2_hidden(sK2(sK1),sK1)),
% 0.22/0.42    inference(resolution,[],[f19,f16])).
% 0.22/0.42  fof(f16,plain,(
% 0.22/0.42    ~v1_xboole_0(sK1)),
% 0.22/0.42    inference(cnf_transformation,[],[f11])).
% 0.22/0.42  fof(f11,plain,(
% 0.22/0.42    ? [X0,X1] : (r1_xboole_0(X1,X0) & r1_tarski(X1,X0) & ~v1_xboole_0(X1))),
% 0.22/0.42    inference(flattening,[],[f10])).
% 0.22/0.42  fof(f10,plain,(
% 0.22/0.42    ? [X0,X1] : ((r1_xboole_0(X1,X0) & r1_tarski(X1,X0)) & ~v1_xboole_0(X1))),
% 0.22/0.42    inference(ennf_transformation,[],[f7])).
% 0.22/0.42  fof(f7,negated_conjecture,(
% 0.22/0.42    ~! [X0,X1] : (~v1_xboole_0(X1) => ~(r1_xboole_0(X1,X0) & r1_tarski(X1,X0)))),
% 0.22/0.42    inference(negated_conjecture,[],[f6])).
% 0.22/0.42  fof(f6,conjecture,(
% 0.22/0.42    ! [X0,X1] : (~v1_xboole_0(X1) => ~(r1_xboole_0(X1,X0) & r1_tarski(X1,X0)))),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_xboole_1)).
% 0.22/0.42  fof(f19,plain,(
% 0.22/0.42    ( ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK2(X0),X0)) )),
% 0.22/0.42    inference(cnf_transformation,[],[f1])).
% 0.22/0.42  fof(f1,axiom,(
% 0.22/0.42    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_xboole_0)).
% 0.22/0.42  fof(f39,plain,(
% 0.22/0.42    ( ! [X0] : (~r2_hidden(X0,sK1)) ) | ~spl4_2),
% 0.22/0.42    inference(avatar_component_clause,[],[f38])).
% 0.22/0.42  fof(f38,plain,(
% 0.22/0.42    spl4_2 <=> ! [X0] : ~r2_hidden(X0,sK1)),
% 0.22/0.42    introduced(avatar_definition,[new_symbols(naming,[spl4_2])])).
% 0.22/0.42  fof(f44,plain,(
% 0.22/0.42    spl4_1),
% 0.22/0.42    inference(avatar_contradiction_clause,[],[f43])).
% 0.22/0.42  fof(f43,plain,(
% 0.22/0.42    $false | spl4_1),
% 0.22/0.42    inference(subsumption_resolution,[],[f42,f18])).
% 0.22/0.42  fof(f18,plain,(
% 0.22/0.42    r1_xboole_0(sK1,sK0)),
% 0.22/0.42    inference(cnf_transformation,[],[f11])).
% 0.22/0.42  fof(f42,plain,(
% 0.22/0.42    ~r1_xboole_0(sK1,sK0) | spl4_1),
% 0.22/0.42    inference(resolution,[],[f36,f24])).
% 0.22/0.42  fof(f24,plain,(
% 0.22/0.42    ( ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1)) )),
% 0.22/0.42    inference(cnf_transformation,[],[f13])).
% 0.22/0.42  fof(f13,plain,(
% 0.22/0.42    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 0.22/0.42    inference(ennf_transformation,[],[f3])).
% 0.22/0.42  fof(f3,axiom,(
% 0.22/0.42    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).
% 0.22/0.42  fof(f36,plain,(
% 0.22/0.42    ~r1_xboole_0(sK0,sK1) | spl4_1),
% 0.22/0.42    inference(avatar_component_clause,[],[f35])).
% 0.22/0.42  fof(f35,plain,(
% 0.22/0.42    spl4_1 <=> r1_xboole_0(sK0,sK1)),
% 0.22/0.42    introduced(avatar_definition,[new_symbols(naming,[spl4_1])])).
% 0.22/0.42  fof(f40,plain,(
% 0.22/0.42    ~spl4_1 | spl4_2),
% 0.22/0.42    inference(avatar_split_clause,[],[f32,f38,f35])).
% 0.22/0.42  fof(f32,plain,(
% 0.22/0.42    ( ! [X0] : (~r2_hidden(X0,sK1) | ~r1_xboole_0(sK0,sK1)) )),
% 0.22/0.42    inference(resolution,[],[f28,f29])).
% 0.22/0.42  fof(f29,plain,(
% 0.22/0.42    ( ! [X0] : (r1_xboole_0(sK1,X0) | ~r1_xboole_0(sK0,X0)) )),
% 0.22/0.42    inference(resolution,[],[f25,f17])).
% 0.22/0.42  fof(f17,plain,(
% 0.22/0.42    r1_tarski(sK1,sK0)),
% 0.22/0.42    inference(cnf_transformation,[],[f11])).
% 0.22/0.42  fof(f25,plain,(
% 0.22/0.42    ( ! [X2,X0,X1] : (~r1_tarski(X0,X1) | ~r1_xboole_0(X1,X2) | r1_xboole_0(X0,X2)) )),
% 0.22/0.42    inference(cnf_transformation,[],[f15])).
% 0.22/0.42  fof(f15,plain,(
% 0.22/0.42    ! [X0,X1,X2] : (r1_xboole_0(X0,X2) | ~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1))),
% 0.22/0.42    inference(flattening,[],[f14])).
% 0.22/0.42  fof(f14,plain,(
% 0.22/0.42    ! [X0,X1,X2] : (r1_xboole_0(X0,X2) | (~r1_xboole_0(X1,X2) | ~r1_tarski(X0,X1)))),
% 0.22/0.42    inference(ennf_transformation,[],[f5])).
% 0.22/0.42  fof(f5,axiom,(
% 0.22/0.42    ! [X0,X1,X2] : ((r1_xboole_0(X1,X2) & r1_tarski(X0,X1)) => r1_xboole_0(X0,X2))),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t63_xboole_1)).
% 0.22/0.42  fof(f28,plain,(
% 0.22/0.42    ( ! [X0,X1] : (~r1_xboole_0(X0,X0) | ~r2_hidden(X1,X0)) )),
% 0.22/0.42    inference(superposition,[],[f22,f21])).
% 0.22/0.42  fof(f21,plain,(
% 0.22/0.42    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 0.22/0.42    inference(cnf_transformation,[],[f8])).
% 0.22/0.42  fof(f8,plain,(
% 0.22/0.42    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 0.22/0.42    inference(rectify,[],[f2])).
% 0.22/0.42  fof(f2,axiom,(
% 0.22/0.42    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).
% 0.22/0.42  fof(f22,plain,(
% 0.22/0.42    ( ! [X2,X0,X1] : (~r2_hidden(X2,k3_xboole_0(X0,X1)) | ~r1_xboole_0(X0,X1)) )),
% 0.22/0.42    inference(cnf_transformation,[],[f12])).
% 0.22/0.42  fof(f12,plain,(
% 0.22/0.42    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 0.22/0.42    inference(ennf_transformation,[],[f9])).
% 0.22/0.42  fof(f9,plain,(
% 0.22/0.42    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 0.22/0.42    inference(rectify,[],[f4])).
% 0.22/0.42  fof(f4,axiom,(
% 0.22/0.42    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 0.22/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_xboole_0)).
% 0.22/0.42  % SZS output end Proof for theBenchmark
% 0.22/0.42  % (7074)------------------------------
% 0.22/0.42  % (7074)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.42  % (7074)Termination reason: Refutation
% 0.22/0.42  
% 0.22/0.42  % (7074)Memory used [KB]: 10490
% 0.22/0.42  % (7074)Time elapsed: 0.006 s
% 0.22/0.42  % (7074)------------------------------
% 0.22/0.42  % (7074)------------------------------
% 0.22/0.43  % (7070)Success in time 0.064 s
%------------------------------------------------------------------------------
