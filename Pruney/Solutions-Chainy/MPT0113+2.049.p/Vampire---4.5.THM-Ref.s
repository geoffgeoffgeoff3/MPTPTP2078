%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:32:39 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   40 (  61 expanded)
%              Number of leaves         :   10 (  19 expanded)
%              Depth                    :   11
%              Number of atoms          :   71 ( 127 expanded)
%              Number of equality atoms :   18 (  27 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1463,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f42,f1453,f1462])).

fof(f1462,plain,(
    spl3_2 ),
    inference(avatar_contradiction_clause,[],[f1461])).

fof(f1461,plain,
    ( $false
    | spl3_2 ),
    inference(subsumption_resolution,[],[f668,f41])).

fof(f41,plain,
    ( ~ r1_xboole_0(sK0,sK2)
    | spl3_2 ),
    inference(avatar_component_clause,[],[f39])).

fof(f39,plain,
    ( spl3_2
  <=> r1_xboole_0(sK0,sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).

fof(f668,plain,(
    r1_xboole_0(sK0,sK2) ),
    inference(superposition,[],[f593,f53])).

fof(f53,plain,(
    sK0 = k3_xboole_0(sK0,k4_xboole_0(sK1,sK2)) ),
    inference(resolution,[],[f30,f20])).

fof(f20,plain,(
    r1_tarski(sK0,k4_xboole_0(sK1,sK2)) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,
    ( ( ~ r1_xboole_0(sK0,sK2)
      | ~ r1_tarski(sK0,sK1) )
    & r1_tarski(sK0,k4_xboole_0(sK1,sK2)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f15,f17])).

fof(f17,plain,
    ( ? [X0,X1,X2] :
        ( ( ~ r1_xboole_0(X0,X2)
          | ~ r1_tarski(X0,X1) )
        & r1_tarski(X0,k4_xboole_0(X1,X2)) )
   => ( ( ~ r1_xboole_0(sK0,sK2)
        | ~ r1_tarski(sK0,sK1) )
      & r1_tarski(sK0,k4_xboole_0(sK1,sK2)) ) ),
    introduced(choice_axiom,[])).

fof(f15,plain,(
    ? [X0,X1,X2] :
      ( ( ~ r1_xboole_0(X0,X2)
        | ~ r1_tarski(X0,X1) )
      & r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( r1_tarski(X0,k4_xboole_0(X1,X2))
       => ( r1_xboole_0(X0,X2)
          & r1_tarski(X0,X1) ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f12,conjecture,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
     => ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t106_xboole_1)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k3_xboole_0(X0,X1) = X0 ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f593,plain,(
    ! [X6,X8,X7] : r1_xboole_0(k3_xboole_0(X6,k4_xboole_0(X7,X8)),X8) ),
    inference(superposition,[],[f25,f33])).

fof(f33,plain,(
    ! [X2,X0,X1] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_xboole_1)).

fof(f25,plain,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_xboole_1)).

fof(f1453,plain,(
    spl3_1 ),
    inference(avatar_contradiction_clause,[],[f1452])).

fof(f1452,plain,
    ( $false
    | spl3_1 ),
    inference(subsumption_resolution,[],[f56,f1451])).

fof(f1451,plain,(
    k1_xboole_0 = k4_xboole_0(sK0,sK1) ),
    inference(forward_demodulation,[],[f1418,f22])).

fof(f22,plain,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_boole)).

fof(f1418,plain,(
    k4_xboole_0(sK0,sK1) = k3_xboole_0(sK0,k1_xboole_0) ),
    inference(superposition,[],[f582,f59])).

fof(f59,plain,(
    ! [X0,X1] : k1_xboole_0 = k4_xboole_0(k4_xboole_0(X0,X1),X0) ),
    inference(resolution,[],[f32,f26])).

fof(f26,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k4_xboole_0(X0,X1) = k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l32_xboole_1)).

fof(f582,plain,(
    ! [X27] : k3_xboole_0(sK0,k4_xboole_0(k4_xboole_0(sK1,sK2),X27)) = k4_xboole_0(sK0,X27) ),
    inference(superposition,[],[f33,f53])).

fof(f56,plain,
    ( k1_xboole_0 != k4_xboole_0(sK0,sK1)
    | spl3_1 ),
    inference(resolution,[],[f31,f37])).

fof(f37,plain,
    ( ~ r1_tarski(sK0,sK1)
    | spl3_1 ),
    inference(avatar_component_clause,[],[f35])).

fof(f35,plain,
    ( spl3_1
  <=> r1_tarski(sK0,sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).

fof(f31,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | k4_xboole_0(X0,X1) != k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f19])).

fof(f42,plain,
    ( ~ spl3_1
    | ~ spl3_2 ),
    inference(avatar_split_clause,[],[f21,f39,f35])).

fof(f21,plain,
    ( ~ r1_xboole_0(sK0,sK2)
    | ~ r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f18])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n012.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 16:04:07 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.22/0.48  % (19003)dis+11_50_add=large:afp=1000:afq=1.0:amm=sco:anc=none:fsr=off:nm=16:nwc=1.5:sac=on_13 on theBenchmark
% 0.22/0.48  % (19017)ott-1_50_afr=on:afp=1000:afq=1.2:amm=sco:anc=none:bsr=on:cond=fast:fsr=off:fde=none:irw=on:nm=16:nwc=1.5:updr=off:uhcvi=on_1883 on theBenchmark
% 0.22/0.49  % (19007)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.22/0.49  % (19016)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_355 on theBenchmark
% 0.22/0.50  % (19008)ott+11_20_afr=on:afp=100000:afq=1.0:amm=sco:anc=all:bsr=on:irw=on:lma=on:nm=4:nwc=1.2:sac=on:sp=occurrence_294 on theBenchmark
% 0.22/0.50  % (19004)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_75 on theBenchmark
% 0.22/0.51  % (19012)dis+10_128_acc=on:add=off:afp=4000:afq=1.4:amm=off:bd=preordered:bce=on:cond=on:fsr=off:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=64:nwc=1.2:nicw=on:sos=on:sp=occurrence:updr=off:uhcvi=on_122 on theBenchmark
% 0.22/0.51  % (19015)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.22/0.51  % (19017)Refutation found. Thanks to Tanya!
% 0.22/0.51  % SZS status Theorem for theBenchmark
% 0.22/0.51  % SZS output start Proof for theBenchmark
% 0.22/0.51  fof(f1463,plain,(
% 0.22/0.51    $false),
% 0.22/0.51    inference(avatar_sat_refutation,[],[f42,f1453,f1462])).
% 0.22/0.51  fof(f1462,plain,(
% 0.22/0.51    spl3_2),
% 0.22/0.51    inference(avatar_contradiction_clause,[],[f1461])).
% 0.22/0.51  fof(f1461,plain,(
% 0.22/0.51    $false | spl3_2),
% 0.22/0.51    inference(subsumption_resolution,[],[f668,f41])).
% 0.22/0.51  fof(f41,plain,(
% 0.22/0.51    ~r1_xboole_0(sK0,sK2) | spl3_2),
% 0.22/0.51    inference(avatar_component_clause,[],[f39])).
% 0.22/0.51  fof(f39,plain,(
% 0.22/0.51    spl3_2 <=> r1_xboole_0(sK0,sK2)),
% 0.22/0.51    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).
% 0.22/0.51  fof(f668,plain,(
% 0.22/0.51    r1_xboole_0(sK0,sK2)),
% 0.22/0.51    inference(superposition,[],[f593,f53])).
% 0.22/0.51  fof(f53,plain,(
% 0.22/0.51    sK0 = k3_xboole_0(sK0,k4_xboole_0(sK1,sK2))),
% 0.22/0.51    inference(resolution,[],[f30,f20])).
% 0.22/0.51  fof(f20,plain,(
% 0.22/0.51    r1_tarski(sK0,k4_xboole_0(sK1,sK2))),
% 0.22/0.51    inference(cnf_transformation,[],[f18])).
% 0.22/0.51  fof(f18,plain,(
% 0.22/0.51    (~r1_xboole_0(sK0,sK2) | ~r1_tarski(sK0,sK1)) & r1_tarski(sK0,k4_xboole_0(sK1,sK2))),
% 0.22/0.51    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f15,f17])).
% 0.22/0.51  fof(f17,plain,(
% 0.22/0.51    ? [X0,X1,X2] : ((~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1)) & r1_tarski(X0,k4_xboole_0(X1,X2))) => ((~r1_xboole_0(sK0,sK2) | ~r1_tarski(sK0,sK1)) & r1_tarski(sK0,k4_xboole_0(sK1,sK2)))),
% 0.22/0.51    introduced(choice_axiom,[])).
% 0.22/0.51  fof(f15,plain,(
% 0.22/0.51    ? [X0,X1,X2] : ((~r1_xboole_0(X0,X2) | ~r1_tarski(X0,X1)) & r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 0.22/0.51    inference(ennf_transformation,[],[f13])).
% 0.22/0.51  fof(f13,negated_conjecture,(
% 0.22/0.51    ~! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) => (r1_xboole_0(X0,X2) & r1_tarski(X0,X1)))),
% 0.22/0.51    inference(negated_conjecture,[],[f12])).
% 0.22/0.51  fof(f12,conjecture,(
% 0.22/0.51    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) => (r1_xboole_0(X0,X2) & r1_tarski(X0,X1)))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t106_xboole_1)).
% 0.22/0.51  fof(f30,plain,(
% 0.22/0.51    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0) )),
% 0.22/0.51    inference(cnf_transformation,[],[f16])).
% 0.22/0.51  fof(f16,plain,(
% 0.22/0.51    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.22/0.51    inference(ennf_transformation,[],[f5])).
% 0.22/0.51  fof(f5,axiom,(
% 0.22/0.51    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).
% 0.22/0.51  fof(f593,plain,(
% 0.22/0.51    ( ! [X6,X8,X7] : (r1_xboole_0(k3_xboole_0(X6,k4_xboole_0(X7,X8)),X8)) )),
% 0.22/0.51    inference(superposition,[],[f25,f33])).
% 0.22/0.51  fof(f33,plain,(
% 0.22/0.51    ( ! [X2,X0,X1] : (k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f10])).
% 0.22/0.51  fof(f10,axiom,(
% 0.22/0.51    ! [X0,X1,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_xboole_1)).
% 0.22/0.51  fof(f25,plain,(
% 0.22/0.51    ( ! [X0,X1] : (r1_xboole_0(k4_xboole_0(X0,X1),X1)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f11])).
% 0.22/0.51  fof(f11,axiom,(
% 0.22/0.51    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1)),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_xboole_1)).
% 0.22/0.51  fof(f1453,plain,(
% 0.22/0.51    spl3_1),
% 0.22/0.51    inference(avatar_contradiction_clause,[],[f1452])).
% 0.22/0.51  fof(f1452,plain,(
% 0.22/0.51    $false | spl3_1),
% 0.22/0.51    inference(subsumption_resolution,[],[f56,f1451])).
% 0.22/0.51  fof(f1451,plain,(
% 0.22/0.51    k1_xboole_0 = k4_xboole_0(sK0,sK1)),
% 0.22/0.51    inference(forward_demodulation,[],[f1418,f22])).
% 0.22/0.51  fof(f22,plain,(
% 0.22/0.51    ( ! [X0] : (k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f6])).
% 0.22/0.51  fof(f6,axiom,(
% 0.22/0.51    ! [X0] : k1_xboole_0 = k3_xboole_0(X0,k1_xboole_0)),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_boole)).
% 0.22/0.51  fof(f1418,plain,(
% 0.22/0.51    k4_xboole_0(sK0,sK1) = k3_xboole_0(sK0,k1_xboole_0)),
% 0.22/0.51    inference(superposition,[],[f582,f59])).
% 0.22/0.51  fof(f59,plain,(
% 0.22/0.51    ( ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(k4_xboole_0(X0,X1),X0)) )),
% 0.22/0.51    inference(resolution,[],[f32,f26])).
% 0.22/0.51  fof(f26,plain,(
% 0.22/0.51    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 0.22/0.51    inference(cnf_transformation,[],[f7])).
% 0.22/0.51  fof(f7,axiom,(
% 0.22/0.51    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).
% 0.22/0.51  fof(f32,plain,(
% 0.22/0.51    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0) )),
% 0.22/0.51    inference(cnf_transformation,[],[f19])).
% 0.22/0.51  fof(f19,plain,(
% 0.22/0.51    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 0.22/0.51    inference(nnf_transformation,[],[f3])).
% 0.22/0.51  fof(f3,axiom,(
% 0.22/0.51    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 0.22/0.51    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l32_xboole_1)).
% 0.22/0.51  fof(f582,plain,(
% 0.22/0.51    ( ! [X27] : (k3_xboole_0(sK0,k4_xboole_0(k4_xboole_0(sK1,sK2),X27)) = k4_xboole_0(sK0,X27)) )),
% 0.22/0.51    inference(superposition,[],[f33,f53])).
% 0.22/0.51  fof(f56,plain,(
% 0.22/0.51    k1_xboole_0 != k4_xboole_0(sK0,sK1) | spl3_1),
% 0.22/0.51    inference(resolution,[],[f31,f37])).
% 0.22/0.51  fof(f37,plain,(
% 0.22/0.51    ~r1_tarski(sK0,sK1) | spl3_1),
% 0.22/0.51    inference(avatar_component_clause,[],[f35])).
% 0.22/0.51  fof(f35,plain,(
% 0.22/0.51    spl3_1 <=> r1_tarski(sK0,sK1)),
% 0.22/0.51    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).
% 0.22/0.51  fof(f31,plain,(
% 0.22/0.51    ( ! [X0,X1] : (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0) )),
% 0.22/0.51    inference(cnf_transformation,[],[f19])).
% 0.22/0.51  fof(f42,plain,(
% 0.22/0.51    ~spl3_1 | ~spl3_2),
% 0.22/0.51    inference(avatar_split_clause,[],[f21,f39,f35])).
% 0.22/0.51  fof(f21,plain,(
% 0.22/0.51    ~r1_xboole_0(sK0,sK2) | ~r1_tarski(sK0,sK1)),
% 0.22/0.51    inference(cnf_transformation,[],[f18])).
% 0.22/0.51  % SZS output end Proof for theBenchmark
% 0.22/0.51  % (19017)------------------------------
% 0.22/0.51  % (19017)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.51  % (19017)Termination reason: Refutation
% 0.22/0.51  
% 0.22/0.51  % (19017)Memory used [KB]: 6780
% 0.22/0.51  % (19017)Time elapsed: 0.076 s
% 0.22/0.51  % (19017)------------------------------
% 0.22/0.51  % (19017)------------------------------
% 0.22/0.52  % (19000)Success in time 0.156 s
%------------------------------------------------------------------------------
