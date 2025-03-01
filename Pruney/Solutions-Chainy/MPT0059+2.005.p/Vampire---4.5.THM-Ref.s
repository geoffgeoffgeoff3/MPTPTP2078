%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:30:12 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   51 (  70 expanded)
%              Number of leaves         :   16 (  34 expanded)
%              Depth                    :    6
%              Number of atoms          :   93 ( 131 expanded)
%              Number of equality atoms :   40 (  59 expanded)
%              Maximal formula depth    :    6 (   4 average)
%              Maximal term depth       :    4 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f618,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f21,f25,f29,f33,f43,f62,f112,f492,f543,f617])).

fof(f617,plain,
    ( ~ spl3_4
    | spl3_20 ),
    inference(avatar_contradiction_clause,[],[f613])).

fof(f613,plain,
    ( $false
    | ~ spl3_4
    | spl3_20 ),
    inference(unit_resulting_resolution,[],[f32,f542])).

fof(f542,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k4_xboole_0(sK0,k3_xboole_0(sK0,k4_xboole_0(sK1,sK2)))
    | spl3_20 ),
    inference(avatar_component_clause,[],[f540])).

fof(f540,plain,
    ( spl3_20
  <=> k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) = k4_xboole_0(sK0,k3_xboole_0(sK0,k4_xboole_0(sK1,sK2))) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_20])])).

fof(f32,plain,
    ( ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))
    | ~ spl3_4 ),
    inference(avatar_component_clause,[],[f31])).

fof(f31,plain,
    ( spl3_4
  <=> ! [X1,X0] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).

fof(f543,plain,
    ( ~ spl3_20
    | spl3_1
    | ~ spl3_5
    | ~ spl3_10
    | ~ spl3_19 ),
    inference(avatar_split_clause,[],[f538,f490,f110,f41,f18,f540])).

fof(f18,plain,
    ( spl3_1
  <=> k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) = k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).

fof(f41,plain,
    ( spl3_5
  <=> ! [X1,X0,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_5])])).

fof(f110,plain,
    ( spl3_10
  <=> ! [X1,X0,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X1,X0),X2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_10])])).

fof(f490,plain,
    ( spl3_19
  <=> ! [X1,X0,X2] : k4_xboole_0(X0,k3_xboole_0(X2,k4_xboole_0(X0,X1))) = k2_xboole_0(k4_xboole_0(X0,X2),k3_xboole_0(X0,X1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_19])])).

fof(f538,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k4_xboole_0(sK0,k3_xboole_0(sK0,k4_xboole_0(sK1,sK2)))
    | spl3_1
    | ~ spl3_5
    | ~ spl3_10
    | ~ spl3_19 ),
    inference(forward_demodulation,[],[f508,f121])).

fof(f121,plain,
    ( ! [X4,X5,X3] : k3_xboole_0(X3,k4_xboole_0(X4,X5)) = k3_xboole_0(X4,k4_xboole_0(X3,X5))
    | ~ spl3_5
    | ~ spl3_10 ),
    inference(superposition,[],[f111,f42])).

fof(f42,plain,
    ( ! [X2,X0,X1] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)
    | ~ spl3_5 ),
    inference(avatar_component_clause,[],[f41])).

fof(f111,plain,
    ( ! [X2,X0,X1] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X1,X0),X2)
    | ~ spl3_10 ),
    inference(avatar_component_clause,[],[f110])).

fof(f508,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k4_xboole_0(sK0,k3_xboole_0(sK1,k4_xboole_0(sK0,sK2)))
    | spl3_1
    | ~ spl3_19 ),
    inference(superposition,[],[f20,f491])).

fof(f491,plain,
    ( ! [X2,X0,X1] : k4_xboole_0(X0,k3_xboole_0(X2,k4_xboole_0(X0,X1))) = k2_xboole_0(k4_xboole_0(X0,X2),k3_xboole_0(X0,X1))
    | ~ spl3_19 ),
    inference(avatar_component_clause,[],[f490])).

fof(f20,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2))
    | spl3_1 ),
    inference(avatar_component_clause,[],[f18])).

fof(f492,plain,
    ( spl3_19
    | ~ spl3_3
    | ~ spl3_7 ),
    inference(avatar_split_clause,[],[f66,f60,f27,f490])).

fof(f27,plain,
    ( spl3_3
  <=> ! [X1,X0] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).

fof(f60,plain,
    ( spl3_7
  <=> ! [X1,X0,X2] : k4_xboole_0(X0,k3_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,X2)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_7])])).

fof(f66,plain,
    ( ! [X2,X0,X1] : k4_xboole_0(X0,k3_xboole_0(X2,k4_xboole_0(X0,X1))) = k2_xboole_0(k4_xboole_0(X0,X2),k3_xboole_0(X0,X1))
    | ~ spl3_3
    | ~ spl3_7 ),
    inference(superposition,[],[f61,f28])).

fof(f28,plain,
    ( ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))
    | ~ spl3_3 ),
    inference(avatar_component_clause,[],[f27])).

fof(f61,plain,
    ( ! [X2,X0,X1] : k4_xboole_0(X0,k3_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,X2))
    | ~ spl3_7 ),
    inference(avatar_component_clause,[],[f60])).

fof(f112,plain,
    ( spl3_10
    | ~ spl3_2
    | ~ spl3_5 ),
    inference(avatar_split_clause,[],[f44,f41,f23,f110])).

fof(f23,plain,
    ( spl3_2
  <=> ! [X1,X0] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).

fof(f44,plain,
    ( ! [X2,X0,X1] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X1,X0),X2)
    | ~ spl3_2
    | ~ spl3_5 ),
    inference(superposition,[],[f42,f24])).

fof(f24,plain,
    ( ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)
    | ~ spl3_2 ),
    inference(avatar_component_clause,[],[f23])).

fof(f62,plain,(
    spl3_7 ),
    inference(avatar_split_clause,[],[f16,f60])).

fof(f16,plain,(
    ! [X2,X0,X1] : k4_xboole_0(X0,k3_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,X2)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1,X2] : k4_xboole_0(X0,k3_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l36_xboole_1)).

fof(f43,plain,(
    spl3_5 ),
    inference(avatar_split_clause,[],[f15,f41])).

fof(f15,plain,(
    ! [X2,X0,X1] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_xboole_1)).

fof(f33,plain,(
    spl3_4 ),
    inference(avatar_split_clause,[],[f14,f31])).

fof(f14,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t47_xboole_1)).

fof(f29,plain,(
    spl3_3 ),
    inference(avatar_split_clause,[],[f13,f27])).

fof(f13,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f25,plain,(
    spl3_2 ),
    inference(avatar_split_clause,[],[f12,f23])).

fof(f12,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f21,plain,(
    ~ spl3_1 ),
    inference(avatar_split_clause,[],[f11,f18])).

fof(f11,plain,(
    k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,plain,(
    k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f8,f9])).

fof(f9,plain,
    ( ? [X0,X1,X2] : k4_xboole_0(X0,k4_xboole_0(X1,X2)) != k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X2))
   => k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2)) ),
    introduced(choice_axiom,[])).

fof(f8,plain,(
    ? [X0,X1,X2] : k4_xboole_0(X0,k4_xboole_0(X1,X2)) != k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X2)) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,negated_conjecture,(
    ~ ! [X0,X1,X2] : k4_xboole_0(X0,k4_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X2)) ),
    inference(negated_conjecture,[],[f6])).

fof(f6,conjecture,(
    ! [X0,X1,X2] : k4_xboole_0(X0,k4_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t52_xboole_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n001.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 19:18:30 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.20/0.47  % (26329)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.20/0.48  % (26335)dis+10_128_acc=on:add=off:afp=4000:afq=1.4:amm=off:bd=preordered:bce=on:cond=on:fsr=off:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=64:nwc=1.2:nicw=on:sos=on:sp=occurrence:updr=off:uhcvi=on_122 on theBenchmark
% 0.20/0.48  % (26328)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.20/0.48  % (26335)Refutation not found, incomplete strategy% (26335)------------------------------
% 0.20/0.48  % (26335)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.48  % (26335)Termination reason: Refutation not found, incomplete strategy
% 0.20/0.48  
% 0.20/0.48  % (26335)Memory used [KB]: 10490
% 0.20/0.48  % (26335)Time elapsed: 0.044 s
% 0.20/0.48  % (26335)------------------------------
% 0.20/0.48  % (26335)------------------------------
% 0.20/0.48  % (26339)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_355 on theBenchmark
% 0.20/0.48  % (26332)lrs+1_128_add=off:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bs=unit_only:gs=on:gsem=off:lwlo=on:nm=2:nwc=1:sas=z3:stl=90:sac=on:sp=occurrence:urr=on:updr=off:uhcvi=on_520 on theBenchmark
% 0.20/0.48  % (26325)lrs+11_5_av=off:cond=on:fsr=off:lma=on:lwlo=on:nwc=1.2:sas=z3:stl=30:sp=reverse_arity:updr=off_123 on theBenchmark
% 0.20/0.49  % (26326)dis+11_50_add=large:afp=1000:afq=1.0:amm=sco:anc=none:fsr=off:nm=16:nwc=1.5:sac=on_13 on theBenchmark
% 0.20/0.49  % (26330)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.20/0.49  % (26324)lrs+11_24_add=large:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:bd=off:cond=fast:fde=unused:gs=on:irw=on:lma=on:nm=4:nwc=1.3:nicw=on:sas=z3:stl=30:sac=on:sp=reverse_arity:uhcvi=on_136 on theBenchmark
% 0.20/0.50  % (26334)ott+11_20_afp=10000:afq=1.1:anc=none:bs=unit_only:bsr=on:bce=on:fsr=off:gs=on:gsem=on:nwc=2.5:sas=z3:sp=occurrence:updr=off:uhcvi=on_385 on theBenchmark
% 0.20/0.50  % (26338)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.20/0.51  % (26327)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_75 on theBenchmark
% 0.20/0.51  % (26336)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.20/0.52  % (26329)Refutation found. Thanks to Tanya!
% 0.20/0.52  % SZS status Theorem for theBenchmark
% 0.20/0.52  % SZS output start Proof for theBenchmark
% 0.20/0.52  fof(f618,plain,(
% 0.20/0.52    $false),
% 0.20/0.52    inference(avatar_sat_refutation,[],[f21,f25,f29,f33,f43,f62,f112,f492,f543,f617])).
% 0.20/0.52  fof(f617,plain,(
% 0.20/0.52    ~spl3_4 | spl3_20),
% 0.20/0.52    inference(avatar_contradiction_clause,[],[f613])).
% 0.20/0.52  fof(f613,plain,(
% 0.20/0.52    $false | (~spl3_4 | spl3_20)),
% 0.20/0.52    inference(unit_resulting_resolution,[],[f32,f542])).
% 0.20/0.52  fof(f542,plain,(
% 0.20/0.52    k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k4_xboole_0(sK0,k3_xboole_0(sK0,k4_xboole_0(sK1,sK2))) | spl3_20),
% 0.20/0.52    inference(avatar_component_clause,[],[f540])).
% 0.20/0.52  fof(f540,plain,(
% 0.20/0.52    spl3_20 <=> k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) = k4_xboole_0(sK0,k3_xboole_0(sK0,k4_xboole_0(sK1,sK2)))),
% 0.20/0.52    introduced(avatar_definition,[new_symbols(naming,[spl3_20])])).
% 0.20/0.52  fof(f32,plain,(
% 0.20/0.52    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))) ) | ~spl3_4),
% 0.20/0.52    inference(avatar_component_clause,[],[f31])).
% 0.20/0.52  fof(f31,plain,(
% 0.20/0.52    spl3_4 <=> ! [X1,X0] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.20/0.52    introduced(avatar_definition,[new_symbols(naming,[spl3_4])])).
% 0.20/0.52  fof(f543,plain,(
% 0.20/0.52    ~spl3_20 | spl3_1 | ~spl3_5 | ~spl3_10 | ~spl3_19),
% 0.20/0.52    inference(avatar_split_clause,[],[f538,f490,f110,f41,f18,f540])).
% 0.20/0.52  fof(f18,plain,(
% 0.20/0.52    spl3_1 <=> k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) = k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2))),
% 0.20/0.52    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).
% 0.20/0.52  fof(f41,plain,(
% 0.20/0.52    spl3_5 <=> ! [X1,X0,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)),
% 0.20/0.52    introduced(avatar_definition,[new_symbols(naming,[spl3_5])])).
% 0.20/0.52  fof(f110,plain,(
% 0.20/0.52    spl3_10 <=> ! [X1,X0,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X1,X0),X2)),
% 0.20/0.52    introduced(avatar_definition,[new_symbols(naming,[spl3_10])])).
% 0.20/0.52  fof(f490,plain,(
% 0.20/0.52    spl3_19 <=> ! [X1,X0,X2] : k4_xboole_0(X0,k3_xboole_0(X2,k4_xboole_0(X0,X1))) = k2_xboole_0(k4_xboole_0(X0,X2),k3_xboole_0(X0,X1))),
% 0.20/0.52    introduced(avatar_definition,[new_symbols(naming,[spl3_19])])).
% 0.20/0.52  fof(f538,plain,(
% 0.20/0.52    k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k4_xboole_0(sK0,k3_xboole_0(sK0,k4_xboole_0(sK1,sK2))) | (spl3_1 | ~spl3_5 | ~spl3_10 | ~spl3_19)),
% 0.20/0.52    inference(forward_demodulation,[],[f508,f121])).
% 0.20/0.52  fof(f121,plain,(
% 0.20/0.52    ( ! [X4,X5,X3] : (k3_xboole_0(X3,k4_xboole_0(X4,X5)) = k3_xboole_0(X4,k4_xboole_0(X3,X5))) ) | (~spl3_5 | ~spl3_10)),
% 0.20/0.52    inference(superposition,[],[f111,f42])).
% 0.20/0.52  fof(f42,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)) ) | ~spl3_5),
% 0.20/0.52    inference(avatar_component_clause,[],[f41])).
% 0.20/0.52  fof(f111,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X1,X0),X2)) ) | ~spl3_10),
% 0.20/0.52    inference(avatar_component_clause,[],[f110])).
% 0.20/0.52  fof(f508,plain,(
% 0.20/0.52    k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k4_xboole_0(sK0,k3_xboole_0(sK1,k4_xboole_0(sK0,sK2))) | (spl3_1 | ~spl3_19)),
% 0.20/0.52    inference(superposition,[],[f20,f491])).
% 0.20/0.52  fof(f491,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k3_xboole_0(X2,k4_xboole_0(X0,X1))) = k2_xboole_0(k4_xboole_0(X0,X2),k3_xboole_0(X0,X1))) ) | ~spl3_19),
% 0.20/0.52    inference(avatar_component_clause,[],[f490])).
% 0.20/0.52  fof(f20,plain,(
% 0.20/0.52    k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2)) | spl3_1),
% 0.20/0.52    inference(avatar_component_clause,[],[f18])).
% 0.20/0.52  fof(f492,plain,(
% 0.20/0.52    spl3_19 | ~spl3_3 | ~spl3_7),
% 0.20/0.52    inference(avatar_split_clause,[],[f66,f60,f27,f490])).
% 0.20/0.52  fof(f27,plain,(
% 0.20/0.52    spl3_3 <=> ! [X1,X0] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 0.20/0.52    introduced(avatar_definition,[new_symbols(naming,[spl3_3])])).
% 0.20/0.52  fof(f60,plain,(
% 0.20/0.52    spl3_7 <=> ! [X1,X0,X2] : k4_xboole_0(X0,k3_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,X2))),
% 0.20/0.52    introduced(avatar_definition,[new_symbols(naming,[spl3_7])])).
% 0.20/0.52  fof(f66,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k3_xboole_0(X2,k4_xboole_0(X0,X1))) = k2_xboole_0(k4_xboole_0(X0,X2),k3_xboole_0(X0,X1))) ) | (~spl3_3 | ~spl3_7)),
% 0.20/0.52    inference(superposition,[],[f61,f28])).
% 0.20/0.52  fof(f28,plain,(
% 0.20/0.52    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) ) | ~spl3_3),
% 0.20/0.52    inference(avatar_component_clause,[],[f27])).
% 0.20/0.52  fof(f61,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k3_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,X2))) ) | ~spl3_7),
% 0.20/0.52    inference(avatar_component_clause,[],[f60])).
% 0.20/0.52  fof(f112,plain,(
% 0.20/0.52    spl3_10 | ~spl3_2 | ~spl3_5),
% 0.20/0.52    inference(avatar_split_clause,[],[f44,f41,f23,f110])).
% 0.20/0.52  fof(f23,plain,(
% 0.20/0.52    spl3_2 <=> ! [X1,X0] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.20/0.52    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).
% 0.20/0.52  fof(f44,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X1,X0),X2)) ) | (~spl3_2 | ~spl3_5)),
% 0.20/0.52    inference(superposition,[],[f42,f24])).
% 0.20/0.52  fof(f24,plain,(
% 0.20/0.52    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) ) | ~spl3_2),
% 0.20/0.52    inference(avatar_component_clause,[],[f23])).
% 0.20/0.52  fof(f62,plain,(
% 0.20/0.52    spl3_7),
% 0.20/0.52    inference(avatar_split_clause,[],[f16,f60])).
% 0.20/0.52  fof(f16,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k3_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,X2))) )),
% 0.20/0.52    inference(cnf_transformation,[],[f2])).
% 0.20/0.52  fof(f2,axiom,(
% 0.20/0.52    ! [X0,X1,X2] : k4_xboole_0(X0,k3_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,X2))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l36_xboole_1)).
% 0.20/0.52  fof(f43,plain,(
% 0.20/0.52    spl3_5),
% 0.20/0.52    inference(avatar_split_clause,[],[f15,f41])).
% 0.20/0.52  fof(f15,plain,(
% 0.20/0.52    ( ! [X2,X0,X1] : (k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f5])).
% 0.20/0.52  fof(f5,axiom,(
% 0.20/0.52    ! [X0,X1,X2] : k3_xboole_0(X0,k4_xboole_0(X1,X2)) = k4_xboole_0(k3_xboole_0(X0,X1),X2)),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_xboole_1)).
% 0.20/0.52  fof(f33,plain,(
% 0.20/0.52    spl3_4),
% 0.20/0.52    inference(avatar_split_clause,[],[f14,f31])).
% 0.20/0.52  fof(f14,plain,(
% 0.20/0.52    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.20/0.52    inference(cnf_transformation,[],[f3])).
% 0.20/0.52  fof(f3,axiom,(
% 0.20/0.52    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t47_xboole_1)).
% 0.20/0.52  fof(f29,plain,(
% 0.20/0.52    spl3_3),
% 0.20/0.52    inference(avatar_split_clause,[],[f13,f27])).
% 0.20/0.52  fof(f13,plain,(
% 0.20/0.52    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 0.20/0.52    inference(cnf_transformation,[],[f4])).
% 0.20/0.52  fof(f4,axiom,(
% 0.20/0.52    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).
% 0.20/0.52  fof(f25,plain,(
% 0.20/0.52    spl3_2),
% 0.20/0.52    inference(avatar_split_clause,[],[f12,f23])).
% 0.20/0.52  fof(f12,plain,(
% 0.20/0.52    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.20/0.52    inference(cnf_transformation,[],[f1])).
% 0.20/0.52  fof(f1,axiom,(
% 0.20/0.52    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.20/0.52  fof(f21,plain,(
% 0.20/0.52    ~spl3_1),
% 0.20/0.52    inference(avatar_split_clause,[],[f11,f18])).
% 0.20/0.52  fof(f11,plain,(
% 0.20/0.52    k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2))),
% 0.20/0.52    inference(cnf_transformation,[],[f10])).
% 0.20/0.52  fof(f10,plain,(
% 0.20/0.52    k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2))),
% 0.20/0.52    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f8,f9])).
% 0.20/0.52  fof(f9,plain,(
% 0.20/0.52    ? [X0,X1,X2] : k4_xboole_0(X0,k4_xboole_0(X1,X2)) != k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X2)) => k4_xboole_0(sK0,k4_xboole_0(sK1,sK2)) != k2_xboole_0(k4_xboole_0(sK0,sK1),k3_xboole_0(sK0,sK2))),
% 0.20/0.52    introduced(choice_axiom,[])).
% 0.20/0.52  fof(f8,plain,(
% 0.20/0.52    ? [X0,X1,X2] : k4_xboole_0(X0,k4_xboole_0(X1,X2)) != k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X2))),
% 0.20/0.52    inference(ennf_transformation,[],[f7])).
% 0.20/0.52  fof(f7,negated_conjecture,(
% 0.20/0.52    ~! [X0,X1,X2] : k4_xboole_0(X0,k4_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X2))),
% 0.20/0.52    inference(negated_conjecture,[],[f6])).
% 0.20/0.52  fof(f6,conjecture,(
% 0.20/0.52    ! [X0,X1,X2] : k4_xboole_0(X0,k4_xboole_0(X1,X2)) = k2_xboole_0(k4_xboole_0(X0,X1),k3_xboole_0(X0,X2))),
% 0.20/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t52_xboole_1)).
% 0.20/0.52  % SZS output end Proof for theBenchmark
% 0.20/0.52  % (26329)------------------------------
% 0.20/0.52  % (26329)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.52  % (26329)Termination reason: Refutation
% 0.20/0.52  
% 0.20/0.52  % (26329)Memory used [KB]: 6652
% 0.20/0.52  % (26329)Time elapsed: 0.074 s
% 0.20/0.52  % (26329)------------------------------
% 0.20/0.52  % (26329)------------------------------
% 0.20/0.52  % (26340)ott-1_50_afr=on:afp=1000:afq=1.2:amm=sco:anc=none:bsr=on:cond=fast:fsr=off:fde=none:irw=on:nm=16:nwc=1.5:updr=off:uhcvi=on_1883 on theBenchmark
% 0.20/0.52  % (26323)Success in time 0.158 s
%------------------------------------------------------------------------------
