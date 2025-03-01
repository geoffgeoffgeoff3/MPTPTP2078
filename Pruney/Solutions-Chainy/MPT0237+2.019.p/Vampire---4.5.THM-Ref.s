%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:37:31 EST 2020

% Result     : Theorem 2.98s
% Output     : Refutation 2.98s
% Verified   : 
% Statistics : Number of formulae       :   63 (  87 expanded)
%              Number of leaves         :   17 (  30 expanded)
%              Depth                    :   11
%              Number of atoms          :  101 ( 132 expanded)
%              Number of equality atoms :   65 (  89 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1799,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f51,f61,f1785,f1798])).

fof(f1798,plain,
    ( spl2_1
    | ~ spl2_7 ),
    inference(avatar_contradiction_clause,[],[f1797])).

fof(f1797,plain,
    ( $false
    | spl2_1
    | ~ spl2_7 ),
    inference(subsumption_resolution,[],[f1796,f34])).

fof(f34,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f1796,plain,
    ( k1_tarski(sK0) != k2_tarski(sK0,sK0)
    | spl2_1
    | ~ spl2_7 ),
    inference(forward_demodulation,[],[f1795,f242])).

fof(f242,plain,(
    ! [X0] : k3_tarski(k1_tarski(X0)) = X0 ),
    inference(subsumption_resolution,[],[f237,f52])).

fof(f52,plain,(
    ! [X0] : r1_tarski(X0,X0) ),
    inference(superposition,[],[f42,f33])).

fof(f33,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(f42,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t17_xboole_1)).

fof(f237,plain,(
    ! [X0] :
      ( k3_tarski(k1_tarski(X0)) = X0
      | ~ r1_tarski(X0,X0) ) ),
    inference(superposition,[],[f234,f55])).

fof(f55,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = k3_tarski(k1_tarski(X0)) ),
    inference(superposition,[],[f35,f34])).

fof(f35,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f234,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X1,X0) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(forward_demodulation,[],[f224,f41])).

fof(f41,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_boole)).

fof(f224,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X1,k1_xboole_0) = k2_xboole_0(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(superposition,[],[f223,f43])).

fof(f43,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k4_xboole_0(X0,X1) = k1_xboole_0 ) ),
    inference(unused_predicate_definition_removal,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l32_xboole_1)).

fof(f223,plain,(
    ! [X2,X3] : k2_xboole_0(X2,X3) = k5_xboole_0(X2,k4_xboole_0(X3,X2)) ),
    inference(forward_demodulation,[],[f91,f68])).

fof(f68,plain,(
    ! [X2,X1] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X2,X1)) ),
    inference(superposition,[],[f40,f32])).

fof(f32,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f40,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f91,plain,(
    ! [X2,X3] : k5_xboole_0(X2,k5_xboole_0(X3,k3_xboole_0(X2,X3))) = k2_xboole_0(X2,X3) ),
    inference(superposition,[],[f39,f30])).

fof(f30,plain,(
    ! [X2,X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(f39,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t94_xboole_1)).

fof(f1795,plain,
    ( k2_tarski(sK0,sK0) != k3_tarski(k1_tarski(k1_tarski(sK0)))
    | spl2_1
    | ~ spl2_7 ),
    inference(forward_demodulation,[],[f1789,f34])).

fof(f1789,plain,
    ( k2_tarski(sK0,sK0) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK0)))
    | spl2_1
    | ~ spl2_7 ),
    inference(backward_demodulation,[],[f50,f1784])).

fof(f1784,plain,
    ( sK0 = sK1
    | ~ spl2_7 ),
    inference(avatar_component_clause,[],[f1782])).

fof(f1782,plain,
    ( spl2_7
  <=> sK0 = sK1 ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_7])])).

fof(f50,plain,
    ( k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1)))
    | spl2_1 ),
    inference(avatar_component_clause,[],[f48])).

fof(f48,plain,
    ( spl2_1
  <=> k2_tarski(sK0,sK1) = k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_1])])).

fof(f1785,plain,
    ( spl2_7
    | spl2_2 ),
    inference(avatar_split_clause,[],[f1780,f58,f1782])).

fof(f58,plain,
    ( spl2_2
  <=> k2_tarski(sK0,sK1) = k2_xboole_0(k1_tarski(sK0),k1_tarski(sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_2])])).

fof(f1780,plain,
    ( sK0 = sK1
    | spl2_2 ),
    inference(subsumption_resolution,[],[f1775,f31])).

fof(f31,plain,(
    ! [X0,X1] :
      ( k2_tarski(X0,X1) = k5_xboole_0(k1_tarski(X0),k1_tarski(X1))
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( k2_tarski(X0,X1) = k5_xboole_0(k1_tarski(X0),k1_tarski(X1))
      | X0 = X1 ) ),
    inference(ennf_transformation,[],[f18])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( X0 != X1
     => k2_tarski(X0,X1) = k5_xboole_0(k1_tarski(X0),k1_tarski(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_zfmisc_1)).

fof(f1775,plain,
    ( k2_tarski(sK0,sK1) != k5_xboole_0(k1_tarski(sK0),k1_tarski(sK1))
    | sK0 = sK1
    | spl2_2 ),
    inference(superposition,[],[f60,f225])).

fof(f225,plain,(
    ! [X2,X3] :
      ( k2_xboole_0(k1_tarski(X3),k1_tarski(X2)) = k5_xboole_0(k1_tarski(X3),k1_tarski(X2))
      | X2 = X3 ) ),
    inference(superposition,[],[f223,f37])).

fof(f37,plain,(
    ! [X0,X1] :
      ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1))
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1))
        | X0 = X1 )
      & ( X0 != X1
        | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f17,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1))
    <=> X0 != X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t20_zfmisc_1)).

fof(f60,plain,
    ( k2_tarski(sK0,sK1) != k2_xboole_0(k1_tarski(sK0),k1_tarski(sK1))
    | spl2_2 ),
    inference(avatar_component_clause,[],[f58])).

fof(f61,plain,
    ( ~ spl2_2
    | spl2_1 ),
    inference(avatar_split_clause,[],[f56,f48,f58])).

fof(f56,plain,
    ( k2_tarski(sK0,sK1) != k2_xboole_0(k1_tarski(sK0),k1_tarski(sK1))
    | spl2_1 ),
    inference(superposition,[],[f50,f35])).

fof(f51,plain,(
    ~ spl2_1 ),
    inference(avatar_split_clause,[],[f29,f48])).

fof(f29,plain,(
    k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1))) ),
    inference(cnf_transformation,[],[f27])).

fof(f27,plain,(
    k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f26])).

fof(f26,plain,
    ( ? [X0,X1] : k2_tarski(X0,X1) != k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1)))
   => k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1))) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ? [X0,X1] : k2_tarski(X0,X1) != k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1))) ),
    inference(ennf_transformation,[],[f20])).

fof(f20,negated_conjecture,(
    ~ ! [X0,X1] : k2_tarski(X0,X1) = k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1))) ),
    inference(negated_conjecture,[],[f19])).

fof(f19,conjecture,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1))) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t32_zfmisc_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n002.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 11:51:22 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.22/0.52  % (21178)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 0.22/0.52  % (21178)Refutation not found, incomplete strategy% (21178)------------------------------
% 0.22/0.52  % (21178)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.53  % (21193)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 0.22/0.53  % (21178)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.53  
% 0.22/0.53  % (21178)Memory used [KB]: 10746
% 0.22/0.53  % (21178)Time elapsed: 0.101 s
% 0.22/0.53  % (21178)------------------------------
% 0.22/0.53  % (21178)------------------------------
% 0.22/0.53  % (21193)Refutation not found, incomplete strategy% (21193)------------------------------
% 0.22/0.53  % (21193)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.53  % (21193)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.53  
% 0.22/0.53  % (21193)Memory used [KB]: 10618
% 0.22/0.53  % (21193)Time elapsed: 0.104 s
% 0.22/0.53  % (21193)------------------------------
% 0.22/0.53  % (21193)------------------------------
% 0.22/0.53  % (21186)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 0.22/0.53  % (21184)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.22/0.53  % (21186)Refutation not found, incomplete strategy% (21186)------------------------------
% 0.22/0.53  % (21186)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.53  % (21186)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.53  
% 0.22/0.53  % (21186)Memory used [KB]: 10618
% 0.22/0.53  % (21186)Time elapsed: 0.104 s
% 0.22/0.53  % (21186)------------------------------
% 0.22/0.53  % (21186)------------------------------
% 0.22/0.53  % (21177)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.22/0.53  % (21184)Refutation not found, incomplete strategy% (21184)------------------------------
% 0.22/0.53  % (21184)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.53  % (21184)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.53  
% 0.22/0.53  % (21184)Memory used [KB]: 10746
% 0.22/0.53  % (21184)Time elapsed: 0.085 s
% 0.22/0.53  % (21184)------------------------------
% 0.22/0.53  % (21184)------------------------------
% 0.22/0.53  % (21179)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 0.22/0.54  % (21200)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.22/0.54  % (21176)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 0.22/0.54  % (21204)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 0.22/0.54  % (21176)Refutation not found, incomplete strategy% (21176)------------------------------
% 0.22/0.54  % (21176)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (21176)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.54  
% 0.22/0.54  % (21176)Memory used [KB]: 1663
% 0.22/0.54  % (21176)Time elapsed: 0.113 s
% 0.22/0.54  % (21176)------------------------------
% 0.22/0.54  % (21176)------------------------------
% 0.22/0.54  % (21183)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 0.22/0.54  % (21181)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 0.22/0.54  % (21180)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.22/0.54  % (21182)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.22/0.54  % (21191)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 0.22/0.54  % (21191)Refutation not found, incomplete strategy% (21191)------------------------------
% 0.22/0.54  % (21191)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.54  % (21191)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.54  
% 0.22/0.54  % (21191)Memory used [KB]: 6140
% 0.22/0.54  % (21191)Time elapsed: 0.089 s
% 0.22/0.54  % (21191)------------------------------
% 0.22/0.54  % (21191)------------------------------
% 0.22/0.55  % (21194)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 0.22/0.55  % (21196)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 0.22/0.55  % (21192)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 0.22/0.55  % (21196)Refutation not found, incomplete strategy% (21196)------------------------------
% 0.22/0.55  % (21196)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.55  % (21196)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.55  
% 0.22/0.55  % (21196)Memory used [KB]: 10746
% 0.22/0.55  % (21196)Time elapsed: 0.128 s
% 0.22/0.55  % (21196)------------------------------
% 0.22/0.55  % (21196)------------------------------
% 0.22/0.55  % (21199)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.22/0.55  % (21199)Refutation not found, incomplete strategy% (21199)------------------------------
% 0.22/0.55  % (21199)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.55  % (21199)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.55  
% 0.22/0.55  % (21199)Memory used [KB]: 1663
% 0.22/0.55  % (21199)Time elapsed: 0.088 s
% 0.22/0.55  % (21199)------------------------------
% 0.22/0.55  % (21199)------------------------------
% 0.22/0.55  % (21195)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 0.22/0.55  % (21189)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 0.22/0.55  % (21187)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.22/0.55  % (21187)Refutation not found, incomplete strategy% (21187)------------------------------
% 0.22/0.55  % (21187)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.55  % (21187)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.55  
% 0.22/0.56  % (21187)Memory used [KB]: 10618
% 0.22/0.56  % (21187)Time elapsed: 0.136 s
% 0.22/0.56  % (21187)------------------------------
% 0.22/0.56  % (21187)------------------------------
% 0.22/0.56  % (21205)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 0.22/0.56  % (21188)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.56  % (21201)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 0.22/0.56  % (21203)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 0.22/0.56  % (21202)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 0.22/0.57  % (21185)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 0.22/0.57  % (21197)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.22/0.57  % (21198)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 0.22/0.57  % (21197)Refutation not found, incomplete strategy% (21197)------------------------------
% 0.22/0.57  % (21197)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.57  % (21197)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.57  
% 0.22/0.57  % (21197)Memory used [KB]: 1791
% 0.22/0.57  % (21197)Time elapsed: 0.148 s
% 0.22/0.57  % (21197)------------------------------
% 0.22/0.57  % (21197)------------------------------
% 0.22/0.58  % (21198)Refutation not found, incomplete strategy% (21198)------------------------------
% 0.22/0.58  % (21198)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.58  % (21190)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 0.22/0.59  % (21198)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.59  
% 0.22/0.59  % (21198)Memory used [KB]: 10746
% 0.22/0.59  % (21198)Time elapsed: 0.138 s
% 0.22/0.59  % (21198)------------------------------
% 0.22/0.59  % (21198)------------------------------
% 2.14/0.65  % (21209)lrs+11_1_av=off:bsr=on:gsp=input_only:gs=on:lcm=predicate:nm=64:nwc=1:stl=30:sd=2:ss=axioms:st=1.5:sos=all:sp=occurrence:updr=off_245 on theBenchmark
% 2.21/0.67  % (21210)lrs+1010_4_awrs=decay:awrsf=64:add=large:afp=4000:afq=1.2:amm=off:anc=none:bs=on:bsr=on:fde=none:gs=on:gsaa=from_current:gsem=on:lma=on:newcnf=on:nwc=1.7:sas=z3:stl=30:sd=10:ss=axioms:s2a=on:st=1.2:sp=frequency:updr=off:uhcvi=on_20 on theBenchmark
% 2.21/0.67  % (21209)Refutation not found, incomplete strategy% (21209)------------------------------
% 2.21/0.67  % (21209)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 2.21/0.67  % (21209)Termination reason: Refutation not found, incomplete strategy
% 2.21/0.67  
% 2.21/0.67  % (21209)Memory used [KB]: 6140
% 2.21/0.67  % (21209)Time elapsed: 0.073 s
% 2.21/0.67  % (21209)------------------------------
% 2.21/0.67  % (21209)------------------------------
% 2.21/0.67  % (21211)dis+1010_3:2_acc=on:afr=on:afp=1000:afq=1.2:amm=sco:bs=on:ccuc=first:fde=none:nm=0:nwc=4:sd=3:ss=axioms:st=5.0:urr=ec_only_12 on theBenchmark
% 2.21/0.68  % (21212)ott+11_20_afp=10000:afq=1.1:anc=none:bs=unit_only:bsr=on:bce=on:fsr=off:gs=on:gsem=on:nwc=2.5:sas=z3:sp=occurrence:updr=off:uhcvi=on_1 on theBenchmark
% 2.65/0.72  % (21216)lrs+10_12_add=off:afp=100000:afq=1.4:amm=sco:anc=none:cond=on:lma=on:nm=64:nwc=1.3:stl=30:sac=on:urr=on_41 on theBenchmark
% 2.65/0.72  % (21213)dis+1010_8_acc=model:afp=4000:afq=1.0:anc=none:bd=off:bs=unit_only:bce=on:cond=fast:fde=unused:gs=on:gsem=off:lma=on:nm=0:nwc=4:sd=3:ss=axioms:st=2.0:sac=on:sp=occurrence:urr=ec_only_1 on theBenchmark
% 2.65/0.73  % (21218)dis+11_1024_av=off:bd=off:bs=on:cond=on:gs=on:lma=on:nm=16:nwc=1:sp=occurrence:updr=off_143 on theBenchmark
% 2.65/0.74  % (21215)dis+10_4_av=off:bsr=on:cond=fast:er=filter:fde=none:gsp=input_only:lcm=reverse:lma=on:nwc=4:sp=occurrence:urr=on_8 on theBenchmark
% 2.65/0.75  % (21217)lrs+10_8:1_av=off:bs=unit_only:cond=on:fde=unused:irw=on:lcm=predicate:lma=on:nm=64:nwc=1.2:stl=30:sos=all:sp=reverse_arity:urr=on:updr=off_12 on theBenchmark
% 2.65/0.75  % (21214)lrs+11_3:2_add=large:afp=1000:afq=1.1:amm=sco:anc=none:bd=off:er=filter:irw=on:lcm=predicate:lma=on:nm=6:nwc=1:sas=z3:stl=30:sp=occurrence:urr=on:updr=off_100 on theBenchmark
% 2.98/0.80  % (21223)lrs+10_8:1_av=off:bsr=on:gs=on:gsem=on:irw=on:lcm=predicate:lwlo=on:nm=64:nwc=1:stl=30:sos=all:updr=off_78 on theBenchmark
% 2.98/0.80  % (21223)Refutation not found, incomplete strategy% (21223)------------------------------
% 2.98/0.80  % (21223)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 2.98/0.80  % (21223)Termination reason: Refutation not found, incomplete strategy
% 2.98/0.80  
% 2.98/0.80  % (21223)Memory used [KB]: 6268
% 2.98/0.80  % (21223)Time elapsed: 0.119 s
% 2.98/0.80  % (21223)------------------------------
% 2.98/0.80  % (21223)------------------------------
% 2.98/0.84  % (21211)Refutation found. Thanks to Tanya!
% 2.98/0.84  % SZS status Theorem for theBenchmark
% 2.98/0.84  % SZS output start Proof for theBenchmark
% 2.98/0.84  fof(f1799,plain,(
% 2.98/0.84    $false),
% 2.98/0.84    inference(avatar_sat_refutation,[],[f51,f61,f1785,f1798])).
% 2.98/0.84  fof(f1798,plain,(
% 2.98/0.84    spl2_1 | ~spl2_7),
% 2.98/0.84    inference(avatar_contradiction_clause,[],[f1797])).
% 2.98/0.84  fof(f1797,plain,(
% 2.98/0.84    $false | (spl2_1 | ~spl2_7)),
% 2.98/0.84    inference(subsumption_resolution,[],[f1796,f34])).
% 2.98/0.84  fof(f34,plain,(
% 2.98/0.84    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.98/0.84    inference(cnf_transformation,[],[f9])).
% 2.98/0.84  fof(f9,axiom,(
% 2.98/0.84    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 2.98/0.84  fof(f1796,plain,(
% 2.98/0.84    k1_tarski(sK0) != k2_tarski(sK0,sK0) | (spl2_1 | ~spl2_7)),
% 2.98/0.84    inference(forward_demodulation,[],[f1795,f242])).
% 2.98/0.84  fof(f242,plain,(
% 2.98/0.84    ( ! [X0] : (k3_tarski(k1_tarski(X0)) = X0) )),
% 2.98/0.84    inference(subsumption_resolution,[],[f237,f52])).
% 2.98/0.84  fof(f52,plain,(
% 2.98/0.84    ( ! [X0] : (r1_tarski(X0,X0)) )),
% 2.98/0.84    inference(superposition,[],[f42,f33])).
% 2.98/0.84  fof(f33,plain,(
% 2.98/0.84    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 2.98/0.84    inference(cnf_transformation,[],[f21])).
% 2.98/0.84  fof(f21,plain,(
% 2.98/0.84    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 2.98/0.84    inference(rectify,[],[f2])).
% 2.98/0.84  fof(f2,axiom,(
% 2.98/0.84    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).
% 2.98/0.84  fof(f42,plain,(
% 2.98/0.84    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 2.98/0.84    inference(cnf_transformation,[],[f5])).
% 2.98/0.84  fof(f5,axiom,(
% 2.98/0.84    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t17_xboole_1)).
% 2.98/0.84  fof(f237,plain,(
% 2.98/0.84    ( ! [X0] : (k3_tarski(k1_tarski(X0)) = X0 | ~r1_tarski(X0,X0)) )),
% 2.98/0.84    inference(superposition,[],[f234,f55])).
% 2.98/0.84  fof(f55,plain,(
% 2.98/0.84    ( ! [X0] : (k2_xboole_0(X0,X0) = k3_tarski(k1_tarski(X0))) )),
% 2.98/0.84    inference(superposition,[],[f35,f34])).
% 2.98/0.84  fof(f35,plain,(
% 2.98/0.84    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 2.98/0.84    inference(cnf_transformation,[],[f16])).
% 2.98/0.84  fof(f16,axiom,(
% 2.98/0.84    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 2.98/0.84  fof(f234,plain,(
% 2.98/0.84    ( ! [X0,X1] : (k2_xboole_0(X1,X0) = X1 | ~r1_tarski(X0,X1)) )),
% 2.98/0.84    inference(forward_demodulation,[],[f224,f41])).
% 2.98/0.84  fof(f41,plain,(
% 2.98/0.84    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 2.98/0.84    inference(cnf_transformation,[],[f6])).
% 2.98/0.84  fof(f6,axiom,(
% 2.98/0.84    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_boole)).
% 2.98/0.84  fof(f224,plain,(
% 2.98/0.84    ( ! [X0,X1] : (k5_xboole_0(X1,k1_xboole_0) = k2_xboole_0(X1,X0) | ~r1_tarski(X0,X1)) )),
% 2.98/0.84    inference(superposition,[],[f223,f43])).
% 2.98/0.84  fof(f43,plain,(
% 2.98/0.84    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 2.98/0.84    inference(cnf_transformation,[],[f25])).
% 2.98/0.84  fof(f25,plain,(
% 2.98/0.84    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1))),
% 2.98/0.84    inference(ennf_transformation,[],[f22])).
% 2.98/0.84  fof(f22,plain,(
% 2.98/0.84    ! [X0,X1] : (r1_tarski(X0,X1) => k4_xboole_0(X0,X1) = k1_xboole_0)),
% 2.98/0.84    inference(unused_predicate_definition_removal,[],[f3])).
% 2.98/0.84  fof(f3,axiom,(
% 2.98/0.84    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l32_xboole_1)).
% 2.98/0.84  fof(f223,plain,(
% 2.98/0.84    ( ! [X2,X3] : (k2_xboole_0(X2,X3) = k5_xboole_0(X2,k4_xboole_0(X3,X2))) )),
% 2.98/0.84    inference(forward_demodulation,[],[f91,f68])).
% 2.98/0.84  fof(f68,plain,(
% 2.98/0.84    ( ! [X2,X1] : (k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X2,X1))) )),
% 2.98/0.84    inference(superposition,[],[f40,f32])).
% 2.98/0.84  fof(f32,plain,(
% 2.98/0.84    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 2.98/0.84    inference(cnf_transformation,[],[f1])).
% 2.98/0.84  fof(f1,axiom,(
% 2.98/0.84    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 2.98/0.84  fof(f40,plain,(
% 2.98/0.84    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 2.98/0.84    inference(cnf_transformation,[],[f4])).
% 2.98/0.84  fof(f4,axiom,(
% 2.98/0.84    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).
% 2.98/0.84  fof(f91,plain,(
% 2.98/0.84    ( ! [X2,X3] : (k5_xboole_0(X2,k5_xboole_0(X3,k3_xboole_0(X2,X3))) = k2_xboole_0(X2,X3)) )),
% 2.98/0.84    inference(superposition,[],[f39,f30])).
% 2.98/0.84  fof(f30,plain,(
% 2.98/0.84    ( ! [X2,X0,X1] : (k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2))) )),
% 2.98/0.84    inference(cnf_transformation,[],[f7])).
% 2.98/0.84  fof(f7,axiom,(
% 2.98/0.84    ! [X0,X1,X2] : k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2))),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).
% 2.98/0.84  fof(f39,plain,(
% 2.98/0.84    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1))) )),
% 2.98/0.84    inference(cnf_transformation,[],[f8])).
% 2.98/0.84  fof(f8,axiom,(
% 2.98/0.84    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k3_xboole_0(X0,X1))),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t94_xboole_1)).
% 2.98/0.84  fof(f1795,plain,(
% 2.98/0.84    k2_tarski(sK0,sK0) != k3_tarski(k1_tarski(k1_tarski(sK0))) | (spl2_1 | ~spl2_7)),
% 2.98/0.84    inference(forward_demodulation,[],[f1789,f34])).
% 2.98/0.84  fof(f1789,plain,(
% 2.98/0.84    k2_tarski(sK0,sK0) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK0))) | (spl2_1 | ~spl2_7)),
% 2.98/0.84    inference(backward_demodulation,[],[f50,f1784])).
% 2.98/0.84  fof(f1784,plain,(
% 2.98/0.84    sK0 = sK1 | ~spl2_7),
% 2.98/0.84    inference(avatar_component_clause,[],[f1782])).
% 2.98/0.84  fof(f1782,plain,(
% 2.98/0.84    spl2_7 <=> sK0 = sK1),
% 2.98/0.84    introduced(avatar_definition,[new_symbols(naming,[spl2_7])])).
% 2.98/0.84  fof(f50,plain,(
% 2.98/0.84    k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1))) | spl2_1),
% 2.98/0.84    inference(avatar_component_clause,[],[f48])).
% 2.98/0.84  fof(f48,plain,(
% 2.98/0.84    spl2_1 <=> k2_tarski(sK0,sK1) = k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1)))),
% 2.98/0.84    introduced(avatar_definition,[new_symbols(naming,[spl2_1])])).
% 2.98/0.84  fof(f1785,plain,(
% 2.98/0.84    spl2_7 | spl2_2),
% 2.98/0.84    inference(avatar_split_clause,[],[f1780,f58,f1782])).
% 2.98/0.84  fof(f58,plain,(
% 2.98/0.84    spl2_2 <=> k2_tarski(sK0,sK1) = k2_xboole_0(k1_tarski(sK0),k1_tarski(sK1))),
% 2.98/0.84    introduced(avatar_definition,[new_symbols(naming,[spl2_2])])).
% 2.98/0.84  fof(f1780,plain,(
% 2.98/0.84    sK0 = sK1 | spl2_2),
% 2.98/0.84    inference(subsumption_resolution,[],[f1775,f31])).
% 2.98/0.84  fof(f31,plain,(
% 2.98/0.84    ( ! [X0,X1] : (k2_tarski(X0,X1) = k5_xboole_0(k1_tarski(X0),k1_tarski(X1)) | X0 = X1) )),
% 2.98/0.84    inference(cnf_transformation,[],[f24])).
% 2.98/0.84  fof(f24,plain,(
% 2.98/0.84    ! [X0,X1] : (k2_tarski(X0,X1) = k5_xboole_0(k1_tarski(X0),k1_tarski(X1)) | X0 = X1)),
% 2.98/0.84    inference(ennf_transformation,[],[f18])).
% 2.98/0.84  fof(f18,axiom,(
% 2.98/0.84    ! [X0,X1] : (X0 != X1 => k2_tarski(X0,X1) = k5_xboole_0(k1_tarski(X0),k1_tarski(X1)))),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_zfmisc_1)).
% 2.98/0.84  fof(f1775,plain,(
% 2.98/0.84    k2_tarski(sK0,sK1) != k5_xboole_0(k1_tarski(sK0),k1_tarski(sK1)) | sK0 = sK1 | spl2_2),
% 2.98/0.84    inference(superposition,[],[f60,f225])).
% 2.98/0.84  fof(f225,plain,(
% 2.98/0.84    ( ! [X2,X3] : (k2_xboole_0(k1_tarski(X3),k1_tarski(X2)) = k5_xboole_0(k1_tarski(X3),k1_tarski(X2)) | X2 = X3) )),
% 2.98/0.84    inference(superposition,[],[f223,f37])).
% 2.98/0.84  fof(f37,plain,(
% 2.98/0.84    ( ! [X0,X1] : (k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) | X0 = X1) )),
% 2.98/0.84    inference(cnf_transformation,[],[f28])).
% 2.98/0.84  fof(f28,plain,(
% 2.98/0.84    ! [X0,X1] : ((k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) | X0 = X1) & (X0 != X1 | k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),k1_tarski(X1))))),
% 2.98/0.84    inference(nnf_transformation,[],[f17])).
% 2.98/0.84  fof(f17,axiom,(
% 2.98/0.84    ! [X0,X1] : (k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) <=> X0 != X1)),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t20_zfmisc_1)).
% 2.98/0.84  fof(f60,plain,(
% 2.98/0.84    k2_tarski(sK0,sK1) != k2_xboole_0(k1_tarski(sK0),k1_tarski(sK1)) | spl2_2),
% 2.98/0.84    inference(avatar_component_clause,[],[f58])).
% 2.98/0.84  fof(f61,plain,(
% 2.98/0.84    ~spl2_2 | spl2_1),
% 2.98/0.84    inference(avatar_split_clause,[],[f56,f48,f58])).
% 2.98/0.84  fof(f56,plain,(
% 2.98/0.84    k2_tarski(sK0,sK1) != k2_xboole_0(k1_tarski(sK0),k1_tarski(sK1)) | spl2_1),
% 2.98/0.84    inference(superposition,[],[f50,f35])).
% 2.98/0.84  fof(f51,plain,(
% 2.98/0.84    ~spl2_1),
% 2.98/0.84    inference(avatar_split_clause,[],[f29,f48])).
% 2.98/0.84  fof(f29,plain,(
% 2.98/0.84    k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1)))),
% 2.98/0.84    inference(cnf_transformation,[],[f27])).
% 2.98/0.84  fof(f27,plain,(
% 2.98/0.84    k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1)))),
% 2.98/0.84    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f23,f26])).
% 2.98/0.84  fof(f26,plain,(
% 2.98/0.84    ? [X0,X1] : k2_tarski(X0,X1) != k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1))) => k2_tarski(sK0,sK1) != k3_tarski(k2_tarski(k1_tarski(sK0),k1_tarski(sK1)))),
% 2.98/0.84    introduced(choice_axiom,[])).
% 2.98/0.84  fof(f23,plain,(
% 2.98/0.84    ? [X0,X1] : k2_tarski(X0,X1) != k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1)))),
% 2.98/0.84    inference(ennf_transformation,[],[f20])).
% 2.98/0.84  fof(f20,negated_conjecture,(
% 2.98/0.84    ~! [X0,X1] : k2_tarski(X0,X1) = k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1)))),
% 2.98/0.84    inference(negated_conjecture,[],[f19])).
% 2.98/0.84  fof(f19,conjecture,(
% 2.98/0.84    ! [X0,X1] : k2_tarski(X0,X1) = k3_tarski(k2_tarski(k1_tarski(X0),k1_tarski(X1)))),
% 2.98/0.84    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t32_zfmisc_1)).
% 2.98/0.84  % SZS output end Proof for theBenchmark
% 2.98/0.84  % (21211)------------------------------
% 2.98/0.84  % (21211)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 2.98/0.84  % (21211)Termination reason: Refutation
% 2.98/0.84  
% 2.98/0.84  % (21211)Memory used [KB]: 7547
% 2.98/0.84  % (21211)Time elapsed: 0.221 s
% 2.98/0.84  % (21211)------------------------------
% 2.98/0.84  % (21211)------------------------------
% 2.98/0.84  % (21175)Success in time 0.465 s
%------------------------------------------------------------------------------
