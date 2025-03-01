%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:40:19 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 1.86s
% Verified   : 
% Statistics : Number of formulae       :   69 ( 162 expanded)
%              Number of leaves         :   18 (  58 expanded)
%              Depth                    :   10
%              Number of atoms          :  156 ( 282 expanded)
%              Number of equality atoms :   83 ( 187 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f347,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f56,f61,f66,f89,f127,f346])).

fof(f346,plain,
    ( ~ spl4_3
    | spl4_4
    | ~ spl4_7 ),
    inference(avatar_contradiction_clause,[],[f345])).

fof(f345,plain,
    ( $false
    | ~ spl4_3
    | spl4_4
    | ~ spl4_7 ),
    inference(subsumption_resolution,[],[f344,f116])).

fof(f116,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) != k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK1,sK1,sK1,sK1))
    | spl4_4 ),
    inference(unit_resulting_resolution,[],[f88,f44])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k2_enumset1(X1,X1,X1,X1) != k3_xboole_0(X0,k2_enumset1(X1,X1,X1,X1))
      | r2_hidden(X1,X0) ) ),
    inference(definition_unfolding,[],[f31,f39,f39])).

fof(f39,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f25,f38])).

fof(f38,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f28,f36])).

fof(f36,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f28,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f25,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f31,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | k1_tarski(X1) != k3_xboole_0(X0,k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | k1_tarski(X1) != k3_xboole_0(X0,k1_tarski(X1)) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k3_xboole_0(X0,k1_tarski(X1))
     => r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l29_zfmisc_1)).

fof(f88,plain,
    ( ~ r2_hidden(sK1,k2_enumset1(sK0,sK0,sK0,sK0))
    | spl4_4 ),
    inference(avatar_component_clause,[],[f86])).

fof(f86,plain,
    ( spl4_4
  <=> r2_hidden(sK1,k2_enumset1(sK0,sK0,sK0,sK0)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl4_4])])).

fof(f344,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK1,sK1,sK1,sK1))
    | ~ spl4_3
    | ~ spl4_7 ),
    inference(backward_demodulation,[],[f284,f330])).

fof(f330,plain,(
    ! [X4,X3] : k2_enumset1(X3,X3,X3,X3) = k3_xboole_0(k2_enumset1(X4,X4,X4,X3),k2_enumset1(X3,X3,X3,X3)) ),
    inference(superposition,[],[f98,f27])).

fof(f27,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f98,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X0) = k3_xboole_0(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X0)) ),
    inference(superposition,[],[f42,f41])).

fof(f41,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0) ),
    inference(definition_unfolding,[],[f26,f38,f38])).

fof(f26,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(f42,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X0) = k3_xboole_0(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f29,f39,f39,f38])).

fof(f29,plain,(
    ! [X0,X1] : k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] : k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t19_zfmisc_1)).

fof(f284,plain,
    ( k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK1,sK1,sK1,sK1)) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),k2_enumset1(sK1,sK1,sK1,sK1))
    | ~ spl4_3
    | ~ spl4_7 ),
    inference(superposition,[],[f77,f126])).

fof(f126,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))
    | ~ spl4_7 ),
    inference(avatar_component_clause,[],[f124])).

fof(f124,plain,
    ( spl4_7
  <=> k2_enumset1(sK1,sK1,sK1,sK1) = k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl4_7])])).

fof(f77,plain,
    ( ! [X6] : k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),k3_xboole_0(sK2,X6)) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),X6)
    | ~ spl4_3 ),
    inference(superposition,[],[f37,f65])).

fof(f65,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),sK2)
    | ~ spl4_3 ),
    inference(avatar_component_clause,[],[f63])).

fof(f63,plain,
    ( spl4_3
  <=> k2_enumset1(sK0,sK0,sK0,sK0) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl4_3])])).

fof(f37,plain,(
    ! [X2,X0,X1] : k3_xboole_0(k3_xboole_0(X0,X1),X2) = k3_xboole_0(X0,k3_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1,X2] : k3_xboole_0(k3_xboole_0(X0,X1),X2) = k3_xboole_0(X0,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t16_xboole_1)).

fof(f127,plain,
    ( spl4_7
    | ~ spl4_1 ),
    inference(avatar_split_clause,[],[f90,f53,f124])).

fof(f53,plain,
    ( spl4_1
  <=> r2_hidden(sK1,sK2) ),
    introduced(avatar_definition,[new_symbols(naming,[spl4_1])])).

fof(f90,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))
    | ~ spl4_1 ),
    inference(unit_resulting_resolution,[],[f55,f43])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | k2_enumset1(X0,X0,X0,X0) = k3_xboole_0(X1,k2_enumset1(X0,X0,X0,X0)) ) ),
    inference(definition_unfolding,[],[f30,f39,f39])).

fof(f30,plain,(
    ! [X0,X1] :
      ( k1_tarski(X0) = k3_xboole_0(X1,k1_tarski(X0))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( k1_tarski(X0) = k3_xboole_0(X1,k1_tarski(X0))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => k1_tarski(X0) = k3_xboole_0(X1,k1_tarski(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l31_zfmisc_1)).

fof(f55,plain,
    ( r2_hidden(sK1,sK2)
    | ~ spl4_1 ),
    inference(avatar_component_clause,[],[f53])).

fof(f89,plain,
    ( ~ spl4_4
    | spl4_2 ),
    inference(avatar_split_clause,[],[f71,f58,f86])).

fof(f58,plain,
    ( spl4_2
  <=> sK0 = sK1 ),
    introduced(avatar_definition,[new_symbols(naming,[spl4_2])])).

fof(f71,plain,
    ( ~ r2_hidden(sK1,k2_enumset1(sK0,sK0,sK0,sK0))
    | spl4_2 ),
    inference(unit_resulting_resolution,[],[f60,f51])).

fof(f51,plain,(
    ! [X0,X3] :
      ( ~ r2_hidden(X3,k2_enumset1(X0,X0,X0,X0))
      | X0 = X3 ) ),
    inference(equality_resolution,[],[f48])).

fof(f48,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k2_enumset1(X0,X0,X0,X0) != X1 ) ),
    inference(definition_unfolding,[],[f32,f39])).

fof(f32,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ( ( sK3(X0,X1) != X0
            | ~ r2_hidden(sK3(X0,X1),X1) )
          & ( sK3(X0,X1) = X0
            | r2_hidden(sK3(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f19,f20])).

fof(f20,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( X0 != X2
            | ~ r2_hidden(X2,X1) )
          & ( X0 = X2
            | r2_hidden(X2,X1) ) )
     => ( ( sK3(X0,X1) != X0
          | ~ r2_hidden(sK3(X0,X1),X1) )
        & ( sK3(X0,X1) = X0
          | r2_hidden(sK3(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(rectify,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | X0 != X2 )
            & ( X0 = X2
              | ~ r2_hidden(X2,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> X0 = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).

fof(f60,plain,
    ( sK0 != sK1
    | spl4_2 ),
    inference(avatar_component_clause,[],[f58])).

fof(f66,plain,(
    spl4_3 ),
    inference(avatar_split_clause,[],[f40,f63])).

fof(f40,plain,(
    k2_enumset1(sK0,sK0,sK0,sK0) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),sK2) ),
    inference(definition_unfolding,[],[f22,f39,f38])).

fof(f22,plain,(
    k1_tarski(sK0) = k3_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,
    ( sK0 != sK1
    & r2_hidden(sK1,sK2)
    & k1_tarski(sK0) = k3_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f13,f16])).

fof(f16,plain,
    ( ? [X0,X1,X2] :
        ( X0 != X1
        & r2_hidden(X1,X2)
        & k1_tarski(X0) = k3_xboole_0(k2_tarski(X0,X1),X2) )
   => ( sK0 != sK1
      & r2_hidden(sK1,sK2)
      & k1_tarski(sK0) = k3_xboole_0(k2_tarski(sK0,sK1),sK2) ) ),
    introduced(choice_axiom,[])).

fof(f13,plain,(
    ? [X0,X1,X2] :
      ( X0 != X1
      & r2_hidden(X1,X2)
      & k1_tarski(X0) = k3_xboole_0(k2_tarski(X0,X1),X2) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ~ ( X0 != X1
          & r2_hidden(X1,X2)
          & k1_tarski(X0) = k3_xboole_0(k2_tarski(X0,X1),X2) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0,X1,X2] :
      ~ ( X0 != X1
        & r2_hidden(X1,X2)
        & k1_tarski(X0) = k3_xboole_0(k2_tarski(X0,X1),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t59_zfmisc_1)).

fof(f61,plain,(
    ~ spl4_2 ),
    inference(avatar_split_clause,[],[f24,f58])).

fof(f24,plain,(
    sK0 != sK1 ),
    inference(cnf_transformation,[],[f17])).

fof(f56,plain,(
    spl4_1 ),
    inference(avatar_split_clause,[],[f23,f53])).

fof(f23,plain,(
    r2_hidden(sK1,sK2) ),
    inference(cnf_transformation,[],[f17])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n013.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 19:09:24 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.22/0.52  % (19384)lrs+11_3_afr=on:afp=10000:afq=1.0:cond=fast:fsr=off:fde=none:gs=on:gsem=off:lcm=reverse:nm=2:newcnf=on:nwc=1:sas=z3:stl=30:sd=10:ss=axioms:st=2.0:sos=all:sp=reverse_arity:urr=on:uhcvi=on_23 on theBenchmark
% 0.22/0.53  % (19401)dis-11_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:gs=on:irw=on:lcm=reverse:nm=6:nwc=1:sd=4:ss=axioms:st=3.0:sos=on:sac=on_1 on theBenchmark
% 0.22/0.53  % (19377)dis+1_5:1_aac=none:afr=on:afp=100000:afq=1.4:amm=sco:anc=none:br=off:gsp=input_only:gs=on:gsem=on:lcm=reverse:nm=6:nwc=1:nicw=on:sas=z3:sos=on:urr=on_1 on theBenchmark
% 0.22/0.53  % (19376)dis+11_3_av=off:fsr=off:lcm=predicate:lma=on:nm=4:nwc=1:sd=3:ss=axioms:st=1.2:sos=on:updr=off_4 on theBenchmark
% 0.22/0.53  % (19392)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_9 on theBenchmark
% 0.22/0.53  % (19383)lrs+1_8:1_av=off:cond=fast:fde=unused:lcm=predicate:nm=16:nwc=10:stl=60:sp=occurrence:urr=ec_only_3 on theBenchmark
% 0.22/0.53  % (19392)Refutation not found, incomplete strategy% (19392)------------------------------
% 0.22/0.53  % (19392)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.53  % (19392)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.53  
% 0.22/0.53  % (19392)Memory used [KB]: 10618
% 0.22/0.53  % (19392)Time elapsed: 0.110 s
% 0.22/0.53  % (19392)------------------------------
% 0.22/0.53  % (19392)------------------------------
% 0.22/0.54  % (19382)dis+10_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:er=filter:gs=on:gsem=off:irw=on:lma=on:nm=4:nwc=1.3:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.54  % (19379)dis+1002_8:1_av=off:br=off:cond=on:irw=on:lma=on:nm=32:nwc=1:sp=occurrence:urr=on_89 on theBenchmark
% 0.22/0.54  % (19375)dis+10_16_awrs=decay:awrsf=256:afr=on:afp=40000:afq=2.0:amm=off:bsr=on:cond=on:er=known:gsp=input_only:irw=on:lma=on:nm=6:newcnf=on:nwc=3:sas=z3:sd=4:ss=axioms:s2a=on:sp=frequency:updr=off_8 on theBenchmark
% 0.22/0.54  % (19390)lrs+10_1_av=off:fde=unused:irw=on:lcm=predicate:lma=on:nm=6:nwc=1:stl=30:sd=2:ss=axioms:st=5.0:sos=on:sp=reverse_arity_2 on theBenchmark
% 0.22/0.54  % (19378)dis+11_2:1_add=large:afp=1000:afq=1.2:amm=sco:anc=none:cond=on:gs=on:gsem=off:nm=16:newcnf=on:nwc=1:sas=z3:sd=1:ss=axioms:st=1.2:sos=on:sp=reverse_arity:updr=off_5 on theBenchmark
% 0.22/0.55  % (19386)dis+1002_7_acc=on:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:ccuc=first:fsr=off:gsp=input_only:gs=on:gsem=on:nm=6:nwc=1.1:nicw=on:sos=on:sac=on:sp=occurrence:urr=ec_only_217 on theBenchmark
% 0.22/0.55  % (19405)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_73 on theBenchmark
% 0.22/0.55  % (19385)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_66 on theBenchmark
% 0.22/0.55  % (19397)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_13 on theBenchmark
% 0.22/0.55  % (19391)dis+1011_3_afp=4000:afq=1.1:amm=sco:anc=none:gs=on:gsaa=from_current:gsem=off:irw=on:nm=16:nwc=1:sas=z3:ss=axioms:sos=all:sac=on:sp=reverse_arity:updr=off_17 on theBenchmark
% 0.22/0.55  % (19399)lrs+1011_2:3_av=off:gs=on:gsem=off:nwc=1.5:stl=30:sos=theory:sp=occurrence:urr=ec_only:updr=off_223 on theBenchmark
% 0.22/0.55  % (19398)dis+1010_3:2_acc=on:afr=on:afp=1000:afq=1.2:amm=sco:bs=on:ccuc=first:fde=none:nm=0:nwc=4:sd=3:ss=axioms:st=5.0:urr=ec_only_75 on theBenchmark
% 0.22/0.55  % (19387)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_23 on theBenchmark
% 0.22/0.56  % (19404)lrs-4_5:1_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:bs=unit_only:bsr=on:irw=on:lcm=reverse:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:updr=off_6 on theBenchmark
% 0.22/0.56  % (19388)lrs+1011_1_afp=40000:afq=1.4:bd=off:cond=fast:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sd=2:ss=axioms:sos=all:sp=occurrence_6 on theBenchmark
% 0.22/0.56  % (19402)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_91 on theBenchmark
% 0.22/0.56  % (19395)lrs+1011_3:2_av=off:er=known:lma=on:nm=2:newcnf=on:nwc=2:stl=30:sd=2:ss=axioms:st=3.0:urr=on:updr=off_24 on theBenchmark
% 0.22/0.56  % (19394)ott-3_3_av=off:cond=fast:fde=none:lcm=reverse:nm=6:nwc=1:sd=5:ss=axioms:st=2.0:sos=on:sp=reverse_arity:updr=off:uhcvi=on_88 on theBenchmark
% 0.22/0.57  % (19403)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_11 on theBenchmark
% 0.22/0.57  % (19381)dis-1_2:3_av=off:cond=on:fsr=off:irw=on:lma=on:nwc=3:sd=3:ss=axioms:st=3.0:sp=occurrence:updr=off_9 on theBenchmark
% 0.22/0.58  % (19400)dis+1010_4_acc=on:afr=on:afp=1000:afq=2.0:anc=none:bd=off:bs=unit_only:bsr=on:ccuc=small_ones:cond=fast:fsr=off:gs=on:gsem=off:lcm=reverse:lma=on:nm=64:nwc=2.5:nicw=on:sd=3:ss=axioms:st=3.0:sac=on:urr=ec_only:updr=off:uhcvi=on_83 on theBenchmark
% 0.22/0.58  % (19389)dis+1010_7_afr=on:afp=10000:afq=1.1:amm=sco:anc=none:bd=off:bsr=on:cond=on:fsr=off:lma=on:nm=32:newcnf=on:nwc=1:urr=ec_only:updr=off_83 on theBenchmark
% 0.22/0.59  % (19406)lrs+11_3_av=off:bce=on:cond=fast:ep=R:lcm=reverse:lma=on:newcnf=on:nwc=1.3:stl=30:sd=3:ss=axioms:st=1.2:sos=on:sp=occurrence:uhcvi=on_2 on theBenchmark
% 0.22/0.59  % (19393)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_36 on theBenchmark
% 0.22/0.60  % (19397)Refutation found. Thanks to Tanya!
% 0.22/0.60  % SZS status Theorem for theBenchmark
% 0.22/0.60  % SZS output start Proof for theBenchmark
% 0.22/0.60  fof(f347,plain,(
% 0.22/0.60    $false),
% 0.22/0.60    inference(avatar_sat_refutation,[],[f56,f61,f66,f89,f127,f346])).
% 0.22/0.60  fof(f346,plain,(
% 0.22/0.60    ~spl4_3 | spl4_4 | ~spl4_7),
% 0.22/0.60    inference(avatar_contradiction_clause,[],[f345])).
% 0.22/0.60  fof(f345,plain,(
% 0.22/0.60    $false | (~spl4_3 | spl4_4 | ~spl4_7)),
% 0.22/0.60    inference(subsumption_resolution,[],[f344,f116])).
% 0.22/0.60  fof(f116,plain,(
% 0.22/0.60    k2_enumset1(sK1,sK1,sK1,sK1) != k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK1,sK1,sK1,sK1)) | spl4_4),
% 0.22/0.60    inference(unit_resulting_resolution,[],[f88,f44])).
% 0.22/0.60  fof(f44,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k2_enumset1(X1,X1,X1,X1) != k3_xboole_0(X0,k2_enumset1(X1,X1,X1,X1)) | r2_hidden(X1,X0)) )),
% 0.22/0.60    inference(definition_unfolding,[],[f31,f39,f39])).
% 0.22/0.60  fof(f39,plain,(
% 0.22/0.60    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 0.22/0.60    inference(definition_unfolding,[],[f25,f38])).
% 0.22/0.60  fof(f38,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 0.22/0.60    inference(definition_unfolding,[],[f28,f36])).
% 0.22/0.60  fof(f36,plain,(
% 0.22/0.60    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 0.22/0.60    inference(cnf_transformation,[],[f7])).
% 0.22/0.60  fof(f7,axiom,(
% 0.22/0.60    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 0.22/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 0.22/0.60  fof(f28,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 0.22/0.60    inference(cnf_transformation,[],[f6])).
% 0.22/0.60  fof(f6,axiom,(
% 0.22/0.60    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 0.22/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 0.22/0.60  fof(f25,plain,(
% 0.22/0.60    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 0.22/0.60    inference(cnf_transformation,[],[f5])).
% 0.22/0.60  fof(f5,axiom,(
% 0.22/0.60    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 0.22/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 0.22/0.60  fof(f31,plain,(
% 0.22/0.60    ( ! [X0,X1] : (r2_hidden(X1,X0) | k1_tarski(X1) != k3_xboole_0(X0,k1_tarski(X1))) )),
% 0.22/0.60    inference(cnf_transformation,[],[f15])).
% 0.22/0.60  fof(f15,plain,(
% 0.22/0.60    ! [X0,X1] : (r2_hidden(X1,X0) | k1_tarski(X1) != k3_xboole_0(X0,k1_tarski(X1)))),
% 0.22/0.60    inference(ennf_transformation,[],[f8])).
% 0.22/0.60  fof(f8,axiom,(
% 0.22/0.60    ! [X0,X1] : (k1_tarski(X1) = k3_xboole_0(X0,k1_tarski(X1)) => r2_hidden(X1,X0))),
% 0.22/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l29_zfmisc_1)).
% 0.22/0.60  fof(f88,plain,(
% 0.22/0.60    ~r2_hidden(sK1,k2_enumset1(sK0,sK0,sK0,sK0)) | spl4_4),
% 0.22/0.60    inference(avatar_component_clause,[],[f86])).
% 0.22/0.60  fof(f86,plain,(
% 0.22/0.60    spl4_4 <=> r2_hidden(sK1,k2_enumset1(sK0,sK0,sK0,sK0))),
% 0.22/0.60    introduced(avatar_definition,[new_symbols(naming,[spl4_4])])).
% 0.22/0.60  fof(f344,plain,(
% 0.22/0.60    k2_enumset1(sK1,sK1,sK1,sK1) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK1,sK1,sK1,sK1)) | (~spl4_3 | ~spl4_7)),
% 0.22/0.60    inference(backward_demodulation,[],[f284,f330])).
% 0.22/0.60  fof(f330,plain,(
% 0.22/0.60    ( ! [X4,X3] : (k2_enumset1(X3,X3,X3,X3) = k3_xboole_0(k2_enumset1(X4,X4,X4,X3),k2_enumset1(X3,X3,X3,X3))) )),
% 0.22/0.60    inference(superposition,[],[f98,f27])).
% 0.22/0.60  fof(f27,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.22/0.60    inference(cnf_transformation,[],[f1])).
% 0.22/0.60  fof(f1,axiom,(
% 0.22/0.60    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.22/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.22/0.60  fof(f98,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X0) = k3_xboole_0(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X0))) )),
% 0.22/0.60    inference(superposition,[],[f42,f41])).
% 0.22/0.60  fof(f41,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0)) )),
% 0.22/0.60    inference(definition_unfolding,[],[f26,f38,f38])).
% 0.22/0.60  fof(f26,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 0.22/0.60    inference(cnf_transformation,[],[f3])).
% 0.22/0.60  fof(f3,axiom,(
% 0.22/0.60    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 0.22/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).
% 0.22/0.60  fof(f42,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X0) = k3_xboole_0(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X1))) )),
% 0.22/0.60    inference(definition_unfolding,[],[f29,f39,f39,f38])).
% 0.22/0.60  fof(f29,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1))) )),
% 0.22/0.60    inference(cnf_transformation,[],[f10])).
% 0.22/0.60  fof(f10,axiom,(
% 0.22/0.60    ! [X0,X1] : k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1))),
% 0.22/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t19_zfmisc_1)).
% 0.22/0.60  fof(f284,plain,(
% 0.22/0.60    k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK1,sK1,sK1,sK1)) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),k2_enumset1(sK1,sK1,sK1,sK1)) | (~spl4_3 | ~spl4_7)),
% 0.22/0.60    inference(superposition,[],[f77,f126])).
% 0.22/0.60  fof(f126,plain,(
% 0.22/0.60    k2_enumset1(sK1,sK1,sK1,sK1) = k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)) | ~spl4_7),
% 0.22/0.60    inference(avatar_component_clause,[],[f124])).
% 0.22/0.60  fof(f124,plain,(
% 0.22/0.60    spl4_7 <=> k2_enumset1(sK1,sK1,sK1,sK1) = k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1))),
% 0.22/0.60    introduced(avatar_definition,[new_symbols(naming,[spl4_7])])).
% 0.22/0.60  fof(f77,plain,(
% 0.22/0.60    ( ! [X6] : (k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),k3_xboole_0(sK2,X6)) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),X6)) ) | ~spl4_3),
% 0.22/0.60    inference(superposition,[],[f37,f65])).
% 0.22/0.60  fof(f65,plain,(
% 0.22/0.60    k2_enumset1(sK0,sK0,sK0,sK0) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),sK2) | ~spl4_3),
% 0.22/0.60    inference(avatar_component_clause,[],[f63])).
% 0.22/0.60  fof(f63,plain,(
% 0.22/0.60    spl4_3 <=> k2_enumset1(sK0,sK0,sK0,sK0) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),sK2)),
% 0.22/0.60    introduced(avatar_definition,[new_symbols(naming,[spl4_3])])).
% 0.22/0.60  fof(f37,plain,(
% 0.22/0.60    ( ! [X2,X0,X1] : (k3_xboole_0(k3_xboole_0(X0,X1),X2) = k3_xboole_0(X0,k3_xboole_0(X1,X2))) )),
% 0.22/0.60    inference(cnf_transformation,[],[f2])).
% 0.22/0.60  fof(f2,axiom,(
% 0.22/0.60    ! [X0,X1,X2] : k3_xboole_0(k3_xboole_0(X0,X1),X2) = k3_xboole_0(X0,k3_xboole_0(X1,X2))),
% 0.22/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t16_xboole_1)).
% 0.22/0.60  fof(f127,plain,(
% 0.22/0.60    spl4_7 | ~spl4_1),
% 0.22/0.60    inference(avatar_split_clause,[],[f90,f53,f124])).
% 0.22/0.60  fof(f53,plain,(
% 0.22/0.60    spl4_1 <=> r2_hidden(sK1,sK2)),
% 0.22/0.60    introduced(avatar_definition,[new_symbols(naming,[spl4_1])])).
% 0.22/0.60  fof(f90,plain,(
% 0.22/0.60    k2_enumset1(sK1,sK1,sK1,sK1) = k3_xboole_0(sK2,k2_enumset1(sK1,sK1,sK1,sK1)) | ~spl4_1),
% 0.22/0.60    inference(unit_resulting_resolution,[],[f55,f43])).
% 0.22/0.60  fof(f43,plain,(
% 0.22/0.60    ( ! [X0,X1] : (~r2_hidden(X0,X1) | k2_enumset1(X0,X0,X0,X0) = k3_xboole_0(X1,k2_enumset1(X0,X0,X0,X0))) )),
% 0.22/0.60    inference(definition_unfolding,[],[f30,f39,f39])).
% 0.22/0.60  fof(f30,plain,(
% 0.22/0.60    ( ! [X0,X1] : (k1_tarski(X0) = k3_xboole_0(X1,k1_tarski(X0)) | ~r2_hidden(X0,X1)) )),
% 0.22/0.60    inference(cnf_transformation,[],[f14])).
% 0.22/0.60  fof(f14,plain,(
% 0.22/0.60    ! [X0,X1] : (k1_tarski(X0) = k3_xboole_0(X1,k1_tarski(X0)) | ~r2_hidden(X0,X1))),
% 0.22/0.60    inference(ennf_transformation,[],[f9])).
% 0.22/0.60  fof(f9,axiom,(
% 0.22/0.60    ! [X0,X1] : (r2_hidden(X0,X1) => k1_tarski(X0) = k3_xboole_0(X1,k1_tarski(X0)))),
% 0.22/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l31_zfmisc_1)).
% 0.22/0.60  fof(f55,plain,(
% 0.22/0.60    r2_hidden(sK1,sK2) | ~spl4_1),
% 0.22/0.60    inference(avatar_component_clause,[],[f53])).
% 0.22/0.60  fof(f89,plain,(
% 0.22/0.60    ~spl4_4 | spl4_2),
% 0.22/0.60    inference(avatar_split_clause,[],[f71,f58,f86])).
% 0.22/0.60  fof(f58,plain,(
% 0.22/0.60    spl4_2 <=> sK0 = sK1),
% 0.22/0.60    introduced(avatar_definition,[new_symbols(naming,[spl4_2])])).
% 1.86/0.60  fof(f71,plain,(
% 1.86/0.60    ~r2_hidden(sK1,k2_enumset1(sK0,sK0,sK0,sK0)) | spl4_2),
% 1.86/0.60    inference(unit_resulting_resolution,[],[f60,f51])).
% 1.86/0.60  fof(f51,plain,(
% 1.86/0.60    ( ! [X0,X3] : (~r2_hidden(X3,k2_enumset1(X0,X0,X0,X0)) | X0 = X3) )),
% 1.86/0.60    inference(equality_resolution,[],[f48])).
% 1.86/0.60  fof(f48,plain,(
% 1.86/0.60    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k2_enumset1(X0,X0,X0,X0) != X1) )),
% 1.86/0.60    inference(definition_unfolding,[],[f32,f39])).
% 1.86/0.60  fof(f32,plain,(
% 1.86/0.60    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k1_tarski(X0) != X1) )),
% 1.86/0.60    inference(cnf_transformation,[],[f21])).
% 1.86/0.60  fof(f21,plain,(
% 1.86/0.60    ! [X0,X1] : ((k1_tarski(X0) = X1 | ((sK3(X0,X1) != X0 | ~r2_hidden(sK3(X0,X1),X1)) & (sK3(X0,X1) = X0 | r2_hidden(sK3(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 1.86/0.60    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f19,f20])).
% 1.86/0.60  fof(f20,plain,(
% 1.86/0.60    ! [X1,X0] : (? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1))) => ((sK3(X0,X1) != X0 | ~r2_hidden(sK3(X0,X1),X1)) & (sK3(X0,X1) = X0 | r2_hidden(sK3(X0,X1),X1))))),
% 1.86/0.60    introduced(choice_axiom,[])).
% 1.86/0.60  fof(f19,plain,(
% 1.86/0.60    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 1.86/0.60    inference(rectify,[],[f18])).
% 1.86/0.60  fof(f18,plain,(
% 1.86/0.60    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | X0 != X2) & (X0 = X2 | ~r2_hidden(X2,X1))) | k1_tarski(X0) != X1))),
% 1.86/0.60    inference(nnf_transformation,[],[f4])).
% 1.86/0.60  fof(f4,axiom,(
% 1.86/0.60    ! [X0,X1] : (k1_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> X0 = X2))),
% 1.86/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_tarski)).
% 1.86/0.60  fof(f60,plain,(
% 1.86/0.60    sK0 != sK1 | spl4_2),
% 1.86/0.60    inference(avatar_component_clause,[],[f58])).
% 1.86/0.60  fof(f66,plain,(
% 1.86/0.60    spl4_3),
% 1.86/0.60    inference(avatar_split_clause,[],[f40,f63])).
% 1.86/0.60  fof(f40,plain,(
% 1.86/0.60    k2_enumset1(sK0,sK0,sK0,sK0) = k3_xboole_0(k2_enumset1(sK0,sK0,sK0,sK1),sK2)),
% 1.86/0.60    inference(definition_unfolding,[],[f22,f39,f38])).
% 1.86/0.60  fof(f22,plain,(
% 1.86/0.60    k1_tarski(sK0) = k3_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 1.86/0.60    inference(cnf_transformation,[],[f17])).
% 1.86/0.60  fof(f17,plain,(
% 1.86/0.60    sK0 != sK1 & r2_hidden(sK1,sK2) & k1_tarski(sK0) = k3_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 1.86/0.60    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f13,f16])).
% 1.86/0.60  fof(f16,plain,(
% 1.86/0.60    ? [X0,X1,X2] : (X0 != X1 & r2_hidden(X1,X2) & k1_tarski(X0) = k3_xboole_0(k2_tarski(X0,X1),X2)) => (sK0 != sK1 & r2_hidden(sK1,sK2) & k1_tarski(sK0) = k3_xboole_0(k2_tarski(sK0,sK1),sK2))),
% 1.86/0.60    introduced(choice_axiom,[])).
% 1.86/0.60  fof(f13,plain,(
% 1.86/0.60    ? [X0,X1,X2] : (X0 != X1 & r2_hidden(X1,X2) & k1_tarski(X0) = k3_xboole_0(k2_tarski(X0,X1),X2))),
% 1.86/0.60    inference(ennf_transformation,[],[f12])).
% 1.86/0.60  fof(f12,negated_conjecture,(
% 1.86/0.60    ~! [X0,X1,X2] : ~(X0 != X1 & r2_hidden(X1,X2) & k1_tarski(X0) = k3_xboole_0(k2_tarski(X0,X1),X2))),
% 1.86/0.60    inference(negated_conjecture,[],[f11])).
% 1.86/0.60  fof(f11,conjecture,(
% 1.86/0.60    ! [X0,X1,X2] : ~(X0 != X1 & r2_hidden(X1,X2) & k1_tarski(X0) = k3_xboole_0(k2_tarski(X0,X1),X2))),
% 1.86/0.60    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t59_zfmisc_1)).
% 1.86/0.60  fof(f61,plain,(
% 1.86/0.60    ~spl4_2),
% 1.86/0.60    inference(avatar_split_clause,[],[f24,f58])).
% 1.86/0.60  fof(f24,plain,(
% 1.86/0.60    sK0 != sK1),
% 1.86/0.60    inference(cnf_transformation,[],[f17])).
% 1.86/0.60  fof(f56,plain,(
% 1.86/0.60    spl4_1),
% 1.86/0.60    inference(avatar_split_clause,[],[f23,f53])).
% 1.86/0.60  fof(f23,plain,(
% 1.86/0.60    r2_hidden(sK1,sK2)),
% 1.86/0.60    inference(cnf_transformation,[],[f17])).
% 1.86/0.60  % SZS output end Proof for theBenchmark
% 1.86/0.60  % (19397)------------------------------
% 1.86/0.60  % (19397)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.86/0.60  % (19397)Termination reason: Refutation
% 1.86/0.60  
% 1.86/0.60  % (19397)Memory used [KB]: 11257
% 1.86/0.60  % (19397)Time elapsed: 0.170 s
% 1.86/0.60  % (19397)------------------------------
% 1.86/0.60  % (19397)------------------------------
% 1.86/0.60  % (19374)Success in time 0.24 s
%------------------------------------------------------------------------------
