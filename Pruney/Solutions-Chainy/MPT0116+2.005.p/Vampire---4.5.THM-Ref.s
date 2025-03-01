%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:32:50 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   54 (  83 expanded)
%              Number of leaves         :   14 (  33 expanded)
%              Depth                    :    7
%              Number of atoms          :  105 ( 161 expanded)
%              Number of equality atoms :   23 (  40 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f256,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f28,f33,f39,f49,f60,f201,f255])).

fof(f255,plain,
    ( spl3_1
    | ~ spl3_3
    | ~ spl3_9 ),
    inference(avatar_contradiction_clause,[],[f250])).

fof(f250,plain,
    ( $false
    | spl3_1
    | ~ spl3_3
    | ~ spl3_9 ),
    inference(resolution,[],[f231,f27])).

fof(f27,plain,
    ( ~ r1_tarski(k4_xboole_0(sK0,sK2),sK1)
    | spl3_1 ),
    inference(avatar_component_clause,[],[f25])).

fof(f25,plain,
    ( spl3_1
  <=> r1_tarski(k4_xboole_0(sK0,sK2),sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).

fof(f231,plain,
    ( ! [X6] : r1_tarski(k4_xboole_0(sK0,X6),sK1)
    | ~ spl3_3
    | ~ spl3_9 ),
    inference(resolution,[],[f220,f77])).

fof(f77,plain,
    ( ! [X0] : r1_tarski(k4_xboole_0(sK0,X0),sK0)
    | ~ spl3_3 ),
    inference(superposition,[],[f17,f42])).

fof(f42,plain,
    ( ! [X0] : k3_xboole_0(sK0,k4_xboole_0(sK1,X0)) = k4_xboole_0(sK0,X0)
    | ~ spl3_3 ),
    inference(superposition,[],[f21,f38])).

fof(f38,plain,
    ( sK0 = k3_xboole_0(sK0,sK1)
    | ~ spl3_3 ),
    inference(avatar_component_clause,[],[f36])).

fof(f36,plain,
    ( spl3_3
  <=> sK0 = k3_xboole_0(sK0,sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).

fof(f21,plain,(
    ! [X2,X0,X1] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t49_xboole_1)).

fof(f17,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).

fof(f220,plain,
    ( ! [X2] :
        ( ~ r1_tarski(X2,sK0)
        | r1_tarski(X2,sK1) )
    | ~ spl3_9 ),
    inference(superposition,[],[f23,f198])).

fof(f198,plain,
    ( sK0 = k3_xboole_0(sK1,sK0)
    | ~ spl3_9 ),
    inference(avatar_component_clause,[],[f196])).

fof(f196,plain,
    ( spl3_9
  <=> sK0 = k3_xboole_0(sK1,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_9])])).

fof(f23,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_tarski(X0,k3_xboole_0(X1,X2))
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X1)
      | ~ r1_tarski(X0,k3_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
     => r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t18_xboole_1)).

fof(f201,plain,
    ( spl3_9
    | ~ spl3_3
    | ~ spl3_6 ),
    inference(avatar_split_clause,[],[f200,f57,f36,f196])).

fof(f57,plain,
    ( spl3_6
  <=> sK0 = k3_xboole_0(sK0,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_6])])).

fof(f200,plain,
    ( sK0 = k3_xboole_0(sK1,sK0)
    | ~ spl3_3
    | ~ spl3_6 ),
    inference(forward_demodulation,[],[f187,f59])).

fof(f59,plain,
    ( sK0 = k3_xboole_0(sK0,sK0)
    | ~ spl3_6 ),
    inference(avatar_component_clause,[],[f57])).

fof(f187,plain,
    ( k3_xboole_0(sK1,sK0) = k3_xboole_0(sK0,sK0)
    | ~ spl3_3
    | ~ spl3_6 ),
    inference(superposition,[],[f43,f141])).

fof(f141,plain,
    ( ! [X5] : k3_xboole_0(X5,sK0) = k3_xboole_0(sK0,k3_xboole_0(X5,sK0))
    | ~ spl3_6 ),
    inference(superposition,[],[f64,f18])).

fof(f18,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f64,plain,
    ( ! [X1] : k3_xboole_0(sK0,X1) = k3_xboole_0(sK0,k3_xboole_0(sK0,X1))
    | ~ spl3_6 ),
    inference(superposition,[],[f22,f59])).

fof(f22,plain,(
    ! [X2,X0,X1] : k3_xboole_0(k3_xboole_0(X0,X1),X2) = k3_xboole_0(X0,k3_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k3_xboole_0(k3_xboole_0(X0,X1),X2) = k3_xboole_0(X0,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t16_xboole_1)).

fof(f43,plain,
    ( ! [X1] : k3_xboole_0(sK0,k3_xboole_0(sK1,X1)) = k3_xboole_0(sK0,X1)
    | ~ spl3_3 ),
    inference(superposition,[],[f22,f38])).

fof(f60,plain,
    ( spl3_6
    | ~ spl3_4 ),
    inference(avatar_split_clause,[],[f55,f46,f57])).

fof(f46,plain,
    ( spl3_4
  <=> r1_tarski(sK0,sK0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).

fof(f55,plain,
    ( sK0 = k3_xboole_0(sK0,sK0)
    | ~ spl3_4 ),
    inference(resolution,[],[f48,f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k3_xboole_0(X0,X1) = X0 ) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f48,plain,
    ( r1_tarski(sK0,sK0)
    | ~ spl3_4 ),
    inference(avatar_component_clause,[],[f46])).

fof(f49,plain,
    ( spl3_4
    | ~ spl3_3 ),
    inference(avatar_split_clause,[],[f40,f36,f46])).

fof(f40,plain,
    ( r1_tarski(sK0,sK0)
    | ~ spl3_3 ),
    inference(superposition,[],[f17,f38])).

fof(f39,plain,
    ( spl3_3
    | ~ spl3_2 ),
    inference(avatar_split_clause,[],[f34,f30,f36])).

fof(f30,plain,
    ( spl3_2
  <=> r1_tarski(sK0,sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).

fof(f34,plain,
    ( sK0 = k3_xboole_0(sK0,sK1)
    | ~ spl3_2 ),
    inference(resolution,[],[f32,f20])).

fof(f32,plain,
    ( r1_tarski(sK0,sK1)
    | ~ spl3_2 ),
    inference(avatar_component_clause,[],[f30])).

fof(f33,plain,(
    spl3_2 ),
    inference(avatar_split_clause,[],[f15,f30])).

fof(f15,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,
    ( ~ r1_tarski(k4_xboole_0(sK0,sK2),sK1)
    & r1_tarski(sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f10,f13])).

fof(f13,plain,
    ( ? [X0,X1,X2] :
        ( ~ r1_tarski(k4_xboole_0(X0,X2),X1)
        & r1_tarski(X0,X1) )
   => ( ~ r1_tarski(k4_xboole_0(sK0,sK2),sK1)
      & r1_tarski(sK0,sK1) ) ),
    introduced(choice_axiom,[])).

fof(f10,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(k4_xboole_0(X0,X2),X1)
      & r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( r1_tarski(X0,X1)
       => r1_tarski(k4_xboole_0(X0,X2),X1) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f8,conjecture,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X1)
     => r1_tarski(k4_xboole_0(X0,X2),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t109_xboole_1)).

fof(f28,plain,(
    ~ spl3_1 ),
    inference(avatar_split_clause,[],[f16,f25])).

fof(f16,plain,(
    ~ r1_tarski(k4_xboole_0(sK0,sK2),sK1) ),
    inference(cnf_transformation,[],[f14])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:14:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.40  % (1174)ott+1_28_av=off:bs=unit_only:cond=on:irw=on:nm=64:nwc=2:sp=occurrence:updr=off:uhcvi=on_1052 on theBenchmark
% 0.20/0.46  % (1170)lrs+10_24_add=off:afr=on:afp=1000:afq=1.4:anc=none:bs=unit_only:gs=on:gsaa=from_current:gsem=on:lma=on:nm=2:nwc=1.1:stl=60:sac=on:uhcvi=on_461 on theBenchmark
% 0.20/0.46  % (1161)lrs+11_24_add=large:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:bd=off:cond=fast:fde=unused:gs=on:irw=on:lma=on:nm=4:nwc=1.3:nicw=on:sas=z3:stl=30:sac=on:sp=reverse_arity:uhcvi=on_136 on theBenchmark
% 0.20/0.46  % (1169)lrs+1_128_add=off:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bs=unit_only:gs=on:gsem=off:lwlo=on:nm=2:nwc=1:sas=z3:stl=90:sac=on:sp=occurrence:urr=on:updr=off:uhcvi=on_520 on theBenchmark
% 0.20/0.46  % (1163)dis+11_50_add=large:afp=1000:afq=1.0:amm=sco:anc=none:fsr=off:nm=16:nwc=1.5:sac=on_13 on theBenchmark
% 0.20/0.47  % (1171)ott+11_20_afp=10000:afq=1.1:anc=none:bs=unit_only:bsr=on:bce=on:fsr=off:gs=on:gsem=on:nwc=2.5:sas=z3:sp=occurrence:updr=off:uhcvi=on_385 on theBenchmark
% 0.20/0.47  % (1176)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_355 on theBenchmark
% 0.20/0.47  % (1175)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.20/0.47  % (1165)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.20/0.47  % (1167)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.20/0.47  % (1164)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_75 on theBenchmark
% 0.20/0.48  % (1162)lrs+11_5_av=off:cond=on:fsr=off:lma=on:lwlo=on:nwc=1.2:sas=z3:stl=30:sp=reverse_arity:updr=off_123 on theBenchmark
% 0.20/0.48  % (1180)ott-1_50_afr=on:afp=1000:afq=1.2:amm=sco:anc=none:bsr=on:cond=fast:fsr=off:fde=none:irw=on:nm=16:nwc=1.5:updr=off:uhcvi=on_1883 on theBenchmark
% 0.20/0.49  % (1172)dis+10_128_acc=on:add=off:afp=4000:afq=1.4:amm=off:bd=preordered:bce=on:cond=on:fsr=off:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=64:nwc=1.2:nicw=on:sos=on:sp=occurrence:updr=off:uhcvi=on_122 on theBenchmark
% 0.20/0.49  % (1173)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.20/0.49  % (1166)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.20/0.49  % (1172)Refutation found. Thanks to Tanya!
% 0.20/0.49  % SZS status Theorem for theBenchmark
% 0.20/0.49  % SZS output start Proof for theBenchmark
% 0.20/0.49  fof(f256,plain,(
% 0.20/0.49    $false),
% 0.20/0.49    inference(avatar_sat_refutation,[],[f28,f33,f39,f49,f60,f201,f255])).
% 0.20/0.49  fof(f255,plain,(
% 0.20/0.49    spl3_1 | ~spl3_3 | ~spl3_9),
% 0.20/0.49    inference(avatar_contradiction_clause,[],[f250])).
% 0.20/0.49  fof(f250,plain,(
% 0.20/0.49    $false | (spl3_1 | ~spl3_3 | ~spl3_9)),
% 0.20/0.49    inference(resolution,[],[f231,f27])).
% 0.20/0.49  fof(f27,plain,(
% 0.20/0.49    ~r1_tarski(k4_xboole_0(sK0,sK2),sK1) | spl3_1),
% 0.20/0.49    inference(avatar_component_clause,[],[f25])).
% 0.20/0.49  fof(f25,plain,(
% 0.20/0.49    spl3_1 <=> r1_tarski(k4_xboole_0(sK0,sK2),sK1)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).
% 0.20/0.49  fof(f231,plain,(
% 0.20/0.49    ( ! [X6] : (r1_tarski(k4_xboole_0(sK0,X6),sK1)) ) | (~spl3_3 | ~spl3_9)),
% 0.20/0.49    inference(resolution,[],[f220,f77])).
% 0.20/0.49  fof(f77,plain,(
% 0.20/0.49    ( ! [X0] : (r1_tarski(k4_xboole_0(sK0,X0),sK0)) ) | ~spl3_3),
% 0.20/0.49    inference(superposition,[],[f17,f42])).
% 0.20/0.49  fof(f42,plain,(
% 0.20/0.49    ( ! [X0] : (k3_xboole_0(sK0,k4_xboole_0(sK1,X0)) = k4_xboole_0(sK0,X0)) ) | ~spl3_3),
% 0.20/0.49    inference(superposition,[],[f21,f38])).
% 0.20/0.49  fof(f38,plain,(
% 0.20/0.49    sK0 = k3_xboole_0(sK0,sK1) | ~spl3_3),
% 0.20/0.49    inference(avatar_component_clause,[],[f36])).
% 0.20/0.49  fof(f36,plain,(
% 0.20/0.49    spl3_3 <=> sK0 = k3_xboole_0(sK0,sK1)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).
% 0.20/0.49  fof(f21,plain,(
% 0.20/0.49    ( ! [X2,X0,X1] : (k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f7])).
% 0.20/0.49  fof(f7,axiom,(
% 0.20/0.49    ! [X0,X1,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)),
% 0.20/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t49_xboole_1)).
% 0.20/0.49  fof(f17,plain,(
% 0.20/0.49    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f4])).
% 0.20/0.49  fof(f4,axiom,(
% 0.20/0.49    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 0.20/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).
% 0.20/0.49  fof(f220,plain,(
% 0.20/0.49    ( ! [X2] : (~r1_tarski(X2,sK0) | r1_tarski(X2,sK1)) ) | ~spl3_9),
% 0.20/0.49    inference(superposition,[],[f23,f198])).
% 0.20/0.49  fof(f198,plain,(
% 0.20/0.49    sK0 = k3_xboole_0(sK1,sK0) | ~spl3_9),
% 0.20/0.49    inference(avatar_component_clause,[],[f196])).
% 0.20/0.49  fof(f196,plain,(
% 0.20/0.49    spl3_9 <=> sK0 = k3_xboole_0(sK1,sK0)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_9])])).
% 0.20/0.49  fof(f23,plain,(
% 0.20/0.49    ( ! [X2,X0,X1] : (~r1_tarski(X0,k3_xboole_0(X1,X2)) | r1_tarski(X0,X1)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f12])).
% 0.20/0.49  fof(f12,plain,(
% 0.20/0.49    ! [X0,X1,X2] : (r1_tarski(X0,X1) | ~r1_tarski(X0,k3_xboole_0(X1,X2)))),
% 0.20/0.49    inference(ennf_transformation,[],[f5])).
% 0.20/0.49  fof(f5,axiom,(
% 0.20/0.49    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) => r1_tarski(X0,X1))),
% 0.20/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t18_xboole_1)).
% 0.20/0.49  fof(f201,plain,(
% 0.20/0.49    spl3_9 | ~spl3_3 | ~spl3_6),
% 0.20/0.49    inference(avatar_split_clause,[],[f200,f57,f36,f196])).
% 0.20/0.49  fof(f57,plain,(
% 0.20/0.49    spl3_6 <=> sK0 = k3_xboole_0(sK0,sK0)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_6])])).
% 0.20/0.49  fof(f200,plain,(
% 0.20/0.49    sK0 = k3_xboole_0(sK1,sK0) | (~spl3_3 | ~spl3_6)),
% 0.20/0.49    inference(forward_demodulation,[],[f187,f59])).
% 0.20/0.49  fof(f59,plain,(
% 0.20/0.49    sK0 = k3_xboole_0(sK0,sK0) | ~spl3_6),
% 0.20/0.49    inference(avatar_component_clause,[],[f57])).
% 0.20/0.49  fof(f187,plain,(
% 0.20/0.49    k3_xboole_0(sK1,sK0) = k3_xboole_0(sK0,sK0) | (~spl3_3 | ~spl3_6)),
% 0.20/0.49    inference(superposition,[],[f43,f141])).
% 0.20/0.49  fof(f141,plain,(
% 0.20/0.49    ( ! [X5] : (k3_xboole_0(X5,sK0) = k3_xboole_0(sK0,k3_xboole_0(X5,sK0))) ) | ~spl3_6),
% 0.20/0.49    inference(superposition,[],[f64,f18])).
% 0.20/0.49  fof(f18,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f1])).
% 0.20/0.49  fof(f1,axiom,(
% 0.20/0.49    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.20/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.20/0.49  fof(f64,plain,(
% 0.20/0.49    ( ! [X1] : (k3_xboole_0(sK0,X1) = k3_xboole_0(sK0,k3_xboole_0(sK0,X1))) ) | ~spl3_6),
% 0.20/0.49    inference(superposition,[],[f22,f59])).
% 0.20/0.49  fof(f22,plain,(
% 0.20/0.49    ( ! [X2,X0,X1] : (k3_xboole_0(k3_xboole_0(X0,X1),X2) = k3_xboole_0(X0,k3_xboole_0(X1,X2))) )),
% 0.20/0.49    inference(cnf_transformation,[],[f3])).
% 0.20/0.49  fof(f3,axiom,(
% 0.20/0.49    ! [X0,X1,X2] : k3_xboole_0(k3_xboole_0(X0,X1),X2) = k3_xboole_0(X0,k3_xboole_0(X1,X2))),
% 0.20/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t16_xboole_1)).
% 0.20/0.49  fof(f43,plain,(
% 0.20/0.49    ( ! [X1] : (k3_xboole_0(sK0,k3_xboole_0(sK1,X1)) = k3_xboole_0(sK0,X1)) ) | ~spl3_3),
% 0.20/0.49    inference(superposition,[],[f22,f38])).
% 0.20/0.49  fof(f60,plain,(
% 0.20/0.49    spl3_6 | ~spl3_4),
% 0.20/0.49    inference(avatar_split_clause,[],[f55,f46,f57])).
% 0.20/0.49  fof(f46,plain,(
% 0.20/0.49    spl3_4 <=> r1_tarski(sK0,sK0)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).
% 0.20/0.49  fof(f55,plain,(
% 0.20/0.49    sK0 = k3_xboole_0(sK0,sK0) | ~spl3_4),
% 0.20/0.49    inference(resolution,[],[f48,f20])).
% 0.20/0.49  fof(f20,plain,(
% 0.20/0.49    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0) )),
% 0.20/0.49    inference(cnf_transformation,[],[f11])).
% 0.20/0.49  fof(f11,plain,(
% 0.20/0.49    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.20/0.49    inference(ennf_transformation,[],[f6])).
% 0.20/0.49  fof(f6,axiom,(
% 0.20/0.49    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.20/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).
% 0.20/0.49  fof(f48,plain,(
% 0.20/0.49    r1_tarski(sK0,sK0) | ~spl3_4),
% 0.20/0.49    inference(avatar_component_clause,[],[f46])).
% 0.20/0.49  fof(f49,plain,(
% 0.20/0.49    spl3_4 | ~spl3_3),
% 0.20/0.49    inference(avatar_split_clause,[],[f40,f36,f46])).
% 0.20/0.49  fof(f40,plain,(
% 0.20/0.49    r1_tarski(sK0,sK0) | ~spl3_3),
% 0.20/0.49    inference(superposition,[],[f17,f38])).
% 0.20/0.49  fof(f39,plain,(
% 0.20/0.49    spl3_3 | ~spl3_2),
% 0.20/0.49    inference(avatar_split_clause,[],[f34,f30,f36])).
% 0.20/0.49  fof(f30,plain,(
% 0.20/0.49    spl3_2 <=> r1_tarski(sK0,sK1)),
% 0.20/0.49    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).
% 0.20/0.49  fof(f34,plain,(
% 0.20/0.49    sK0 = k3_xboole_0(sK0,sK1) | ~spl3_2),
% 0.20/0.49    inference(resolution,[],[f32,f20])).
% 0.20/0.49  fof(f32,plain,(
% 0.20/0.49    r1_tarski(sK0,sK1) | ~spl3_2),
% 0.20/0.49    inference(avatar_component_clause,[],[f30])).
% 0.20/0.49  fof(f33,plain,(
% 0.20/0.49    spl3_2),
% 0.20/0.49    inference(avatar_split_clause,[],[f15,f30])).
% 0.20/0.49  fof(f15,plain,(
% 0.20/0.49    r1_tarski(sK0,sK1)),
% 0.20/0.49    inference(cnf_transformation,[],[f14])).
% 0.20/0.49  fof(f14,plain,(
% 0.20/0.49    ~r1_tarski(k4_xboole_0(sK0,sK2),sK1) & r1_tarski(sK0,sK1)),
% 0.20/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f10,f13])).
% 0.20/0.49  fof(f13,plain,(
% 0.20/0.49    ? [X0,X1,X2] : (~r1_tarski(k4_xboole_0(X0,X2),X1) & r1_tarski(X0,X1)) => (~r1_tarski(k4_xboole_0(sK0,sK2),sK1) & r1_tarski(sK0,sK1))),
% 0.20/0.49    introduced(choice_axiom,[])).
% 0.20/0.49  fof(f10,plain,(
% 0.20/0.49    ? [X0,X1,X2] : (~r1_tarski(k4_xboole_0(X0,X2),X1) & r1_tarski(X0,X1))),
% 0.20/0.49    inference(ennf_transformation,[],[f9])).
% 0.20/0.49  fof(f9,negated_conjecture,(
% 0.20/0.49    ~! [X0,X1,X2] : (r1_tarski(X0,X1) => r1_tarski(k4_xboole_0(X0,X2),X1))),
% 0.20/0.49    inference(negated_conjecture,[],[f8])).
% 0.20/0.49  fof(f8,conjecture,(
% 0.20/0.49    ! [X0,X1,X2] : (r1_tarski(X0,X1) => r1_tarski(k4_xboole_0(X0,X2),X1))),
% 0.20/0.49    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t109_xboole_1)).
% 0.20/0.49  fof(f28,plain,(
% 0.20/0.49    ~spl3_1),
% 0.20/0.49    inference(avatar_split_clause,[],[f16,f25])).
% 0.20/0.49  fof(f16,plain,(
% 0.20/0.49    ~r1_tarski(k4_xboole_0(sK0,sK2),sK1)),
% 0.20/0.49    inference(cnf_transformation,[],[f14])).
% 0.20/0.49  % SZS output end Proof for theBenchmark
% 0.20/0.49  % (1172)------------------------------
% 0.20/0.49  % (1172)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.49  % (1172)Termination reason: Refutation
% 0.20/0.49  
% 0.20/0.49  % (1172)Memory used [KB]: 10746
% 0.20/0.49  % (1172)Time elapsed: 0.077 s
% 0.20/0.49  % (1172)------------------------------
% 0.20/0.49  % (1172)------------------------------
% 0.20/0.50  % (1181)lrs+11_64_acc=model:afp=100000:afq=1.2:anc=all_dependent:bd=off:bs=unit_only:cond=fast:fsr=off:gs=on:gsaa=full_model:gsem=off:irw=on:lma=on:nwc=1:stl=150:sac=on:sp=reverse_arity:urr=on:updr=off_893 on theBenchmark
% 0.20/0.50  % (1168)ott+11_20_afr=on:afp=100000:afq=1.0:amm=sco:anc=all:bsr=on:irw=on:lma=on:nm=4:nwc=1.2:sac=on:sp=occurrence_294 on theBenchmark
% 0.20/0.50  % (1159)Success in time 0.151 s
%------------------------------------------------------------------------------
