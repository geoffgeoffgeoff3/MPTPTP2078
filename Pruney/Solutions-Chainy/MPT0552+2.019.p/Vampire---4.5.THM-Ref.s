%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:49:47 EST 2020

% Result     : Theorem 1.74s
% Output     : Refutation 1.74s
% Verified   : 
% Statistics : Number of formulae       :   70 ( 379 expanded)
%              Number of leaves         :   14 ( 119 expanded)
%              Depth                    :   14
%              Number of atoms          :  141 ( 610 expanded)
%              Number of equality atoms :   21 ( 223 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f333,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f89,f315,f332])).

fof(f332,plain,(
    spl3_2 ),
    inference(avatar_contradiction_clause,[],[f331])).

fof(f331,plain,
    ( $false
    | spl3_2 ),
    inference(subsumption_resolution,[],[f330,f28])).

fof(f28,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f25])).

fof(f25,plain,
    ( ~ r1_tarski(k9_relat_1(sK2,k3_xboole_0(sK0,sK1)),k3_xboole_0(k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK1)))
    & v1_relat_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f15,f24])).

fof(f24,plain,
    ( ? [X0,X1,X2] :
        ( ~ r1_tarski(k9_relat_1(X2,k3_xboole_0(X0,X1)),k3_xboole_0(k9_relat_1(X2,X0),k9_relat_1(X2,X1)))
        & v1_relat_1(X2) )
   => ( ~ r1_tarski(k9_relat_1(sK2,k3_xboole_0(sK0,sK1)),k3_xboole_0(k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK1)))
      & v1_relat_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f15,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_tarski(k9_relat_1(X2,k3_xboole_0(X0,X1)),k3_xboole_0(k9_relat_1(X2,X0),k9_relat_1(X2,X1)))
      & v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( v1_relat_1(X2)
       => r1_tarski(k9_relat_1(X2,k3_xboole_0(X0,X1)),k3_xboole_0(k9_relat_1(X2,X0),k9_relat_1(X2,X1))) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f13,conjecture,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k9_relat_1(X2,k3_xboole_0(X0,X1)),k3_xboole_0(k9_relat_1(X2,X0),k9_relat_1(X2,X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t154_relat_1)).

fof(f330,plain,
    ( ~ v1_relat_1(sK2)
    | spl3_2 ),
    inference(resolution,[],[f320,f38])).

fof(f38,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k7_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_relat_1)).

fof(f320,plain,
    ( ~ v1_relat_1(k7_relat_1(sK2,sK1))
    | spl3_2 ),
    inference(subsumption_resolution,[],[f319,f162])).

fof(f162,plain,(
    ! [X35,X36] : v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X36,X36,X36,X35)))) ),
    inference(forward_demodulation,[],[f161,f55])).

fof(f55,plain,(
    ! [X0,X1] : k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k1_setfam_1(k2_enumset1(k7_relat_1(sK2,X0),k7_relat_1(sK2,X0),k7_relat_1(sK2,X0),k7_relat_1(sK2,X1))) ),
    inference(resolution,[],[f28,f50])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_relat_1(X2)
      | k7_relat_1(X2,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k1_setfam_1(k2_enumset1(k7_relat_1(X2,X0),k7_relat_1(X2,X0),k7_relat_1(X2,X0),k7_relat_1(X2,X1))) ) ),
    inference(definition_unfolding,[],[f36,f46,f46])).

fof(f46,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f42,f45])).

fof(f45,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f43,f44])).

fof(f44,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f43,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f42,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( k7_relat_1(X2,k3_xboole_0(X0,X1)) = k3_xboole_0(k7_relat_1(X2,X0),k7_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( k7_relat_1(X2,k3_xboole_0(X0,X1)) = k3_xboole_0(k7_relat_1(X2,X0),k7_relat_1(X2,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => k7_relat_1(X2,k3_xboole_0(X0,X1)) = k3_xboole_0(k7_relat_1(X2,X0),k7_relat_1(X2,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t108_relat_1)).

fof(f161,plain,(
    ! [X35,X36] : v1_relat_1(k1_setfam_1(k2_enumset1(k7_relat_1(sK2,X36),k7_relat_1(sK2,X36),k7_relat_1(sK2,X36),k7_relat_1(sK2,X35)))) ),
    inference(subsumption_resolution,[],[f138,f28])).

fof(f138,plain,(
    ! [X35,X36] :
      ( v1_relat_1(k1_setfam_1(k2_enumset1(k7_relat_1(sK2,X36),k7_relat_1(sK2,X36),k7_relat_1(sK2,X36),k7_relat_1(sK2,X35))))
      | ~ v1_relat_1(sK2) ) ),
    inference(superposition,[],[f38,f66])).

fof(f66,plain,(
    ! [X0,X1] : k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k1_setfam_1(k2_enumset1(k7_relat_1(sK2,X1),k7_relat_1(sK2,X1),k7_relat_1(sK2,X1),k7_relat_1(sK2,X0))) ),
    inference(superposition,[],[f55,f52])).

fof(f52,plain,(
    ! [X0,X1] : k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0) ),
    inference(definition_unfolding,[],[f39,f45,f45])).

fof(f39,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(f319,plain,
    ( ~ v1_relat_1(k7_relat_1(sK2,sK1))
    | ~ v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))))
    | spl3_2 ),
    inference(subsumption_resolution,[],[f318,f73])).

fof(f73,plain,(
    ! [X0,X1] : r1_tarski(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X1,X1,X1,X0))),k7_relat_1(sK2,X0)) ),
    inference(superposition,[],[f69,f52])).

fof(f69,plain,(
    ! [X2,X3] : r1_tarski(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X2,X2,X2,X3))),k7_relat_1(sK2,X2)) ),
    inference(superposition,[],[f49,f55])).

fof(f49,plain,(
    ! [X0,X1] : r1_tarski(k1_setfam_1(k2_enumset1(X0,X0,X0,X1)),X0) ),
    inference(definition_unfolding,[],[f34,f46])).

fof(f34,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t17_xboole_1)).

fof(f318,plain,
    ( ~ r1_tarski(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k7_relat_1(sK2,sK1))
    | ~ v1_relat_1(k7_relat_1(sK2,sK1))
    | ~ v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))))
    | spl3_2 ),
    inference(resolution,[],[f88,f62])).

fof(f62,plain,(
    ! [X0,X1] :
      ( r1_tarski(k9_relat_1(sK2,X0),k9_relat_1(sK2,X1))
      | ~ r1_tarski(k7_relat_1(sK2,X0),k7_relat_1(sK2,X1))
      | ~ v1_relat_1(k7_relat_1(sK2,X1))
      | ~ v1_relat_1(k7_relat_1(sK2,X0)) ) ),
    inference(superposition,[],[f58,f56])).

fof(f56,plain,(
    ! [X2] : k2_relat_1(k7_relat_1(sK2,X2)) = k9_relat_1(sK2,X2) ),
    inference(resolution,[],[f28,f35])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(X1)
      | k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t148_relat_1)).

fof(f58,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),k9_relat_1(sK2,X0))
      | ~ r1_tarski(X1,k7_relat_1(sK2,X0))
      | ~ v1_relat_1(k7_relat_1(sK2,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(superposition,[],[f41,f56])).

fof(f41,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f22])).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r1_tarski(X0,X1)
           => ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
              & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t25_relat_1)).

fof(f88,plain,
    ( ~ r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK1))
    | spl3_2 ),
    inference(avatar_component_clause,[],[f86])).

fof(f86,plain,
    ( spl3_2
  <=> r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK1)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).

fof(f315,plain,(
    spl3_1 ),
    inference(avatar_contradiction_clause,[],[f314])).

fof(f314,plain,
    ( $false
    | spl3_1 ),
    inference(subsumption_resolution,[],[f313,f28])).

fof(f313,plain,
    ( ~ v1_relat_1(sK2)
    | spl3_1 ),
    inference(resolution,[],[f304,f38])).

fof(f304,plain,
    ( ~ v1_relat_1(k7_relat_1(sK2,sK0))
    | spl3_1 ),
    inference(subsumption_resolution,[],[f303,f162])).

fof(f303,plain,
    ( ~ v1_relat_1(k7_relat_1(sK2,sK0))
    | ~ v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))))
    | spl3_1 ),
    inference(subsumption_resolution,[],[f294,f69])).

fof(f294,plain,
    ( ~ r1_tarski(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k7_relat_1(sK2,sK0))
    | ~ v1_relat_1(k7_relat_1(sK2,sK0))
    | ~ v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))))
    | spl3_1 ),
    inference(resolution,[],[f62,f84])).

fof(f84,plain,
    ( ~ r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK0))
    | spl3_1 ),
    inference(avatar_component_clause,[],[f82])).

fof(f82,plain,
    ( spl3_1
  <=> r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK0)) ),
    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).

fof(f89,plain,
    ( ~ spl3_1
    | ~ spl3_2 ),
    inference(avatar_split_clause,[],[f57,f86,f82])).

fof(f57,plain,
    ( ~ r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK1))
    | ~ r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK0)) ),
    inference(resolution,[],[f47,f48])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k1_setfam_1(k2_enumset1(X1,X1,X1,X2)))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f30,f46])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f16])).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
      | ~ r1_tarski(X0,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,k3_xboole_0(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t19_xboole_1)).

fof(f47,plain,(
    ~ r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k1_setfam_1(k2_enumset1(k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK1)))) ),
    inference(definition_unfolding,[],[f29,f46,f46])).

fof(f29,plain,(
    ~ r1_tarski(k9_relat_1(sK2,k3_xboole_0(sK0,sK1)),k3_xboole_0(k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK1))) ),
    inference(cnf_transformation,[],[f25])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n025.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 14:37:35 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.22/0.52  % (11666)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_66 on theBenchmark
% 0.22/0.53  % (11657)dis+11_3_av=off:fsr=off:lcm=predicate:lma=on:nm=4:nwc=1:sd=3:ss=axioms:st=1.2:sos=on:updr=off_4 on theBenchmark
% 0.22/0.54  % (11656)dis+10_16_awrs=decay:awrsf=256:afr=on:afp=40000:afq=2.0:amm=off:bsr=on:cond=on:er=known:gsp=input_only:irw=on:lma=on:nm=6:newcnf=on:nwc=3:sas=z3:sd=4:ss=axioms:s2a=on:sp=frequency:updr=off_8 on theBenchmark
% 0.22/0.54  % (11658)dis+1_5:1_aac=none:afr=on:afp=100000:afq=1.4:amm=sco:anc=none:br=off:gsp=input_only:gs=on:gsem=on:lcm=reverse:nm=6:nwc=1:nicw=on:sas=z3:sos=on:urr=on_1 on theBenchmark
% 0.22/0.54  % (11660)dis+1002_8:1_av=off:br=off:cond=on:irw=on:lma=on:nm=32:nwc=1:sp=occurrence:urr=on_89 on theBenchmark
% 0.22/0.54  % (11661)dis-1_2:3_av=off:cond=on:fsr=off:irw=on:lma=on:nwc=3:sd=3:ss=axioms:st=3.0:sp=occurrence:updr=off_9 on theBenchmark
% 0.22/0.54  % (11659)dis+11_2:1_add=large:afp=1000:afq=1.2:amm=sco:anc=none:cond=on:gs=on:gsem=off:nm=16:newcnf=on:nwc=1:sas=z3:sd=1:ss=axioms:st=1.2:sos=on:sp=reverse_arity:updr=off_5 on theBenchmark
% 0.22/0.54  % (11680)lrs+1011_2:3_av=off:gs=on:gsem=off:nwc=1.5:stl=30:sos=theory:sp=occurrence:urr=ec_only:updr=off_223 on theBenchmark
% 0.22/0.54  % (11672)lrs+10_1_av=off:fde=unused:irw=on:lcm=predicate:lma=on:nm=6:nwc=1:stl=30:sd=2:ss=axioms:st=5.0:sos=on:sp=reverse_arity_2 on theBenchmark
% 0.22/0.54  % (11681)dis+1010_4_acc=on:afr=on:afp=1000:afq=2.0:anc=none:bd=off:bs=unit_only:bsr=on:ccuc=small_ones:cond=fast:fsr=off:gs=on:gsem=off:lcm=reverse:lma=on:nm=64:nwc=2.5:nicw=on:sd=3:ss=axioms:st=3.0:sac=on:urr=ec_only:updr=off:uhcvi=on_83 on theBenchmark
% 0.22/0.54  % (11685)lrs-4_5:1_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:bs=unit_only:bsr=on:irw=on:lcm=reverse:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:updr=off_6 on theBenchmark
% 0.22/0.54  % (11684)lrs+1_1_aac=none:acc=model:add=large:afp=100000:afq=1.2:anc=none:bd=off:bs=on:bsr=on:ccuc=first:cond=on:fde=unused:irw=on:nm=2:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:uhcvi=on_11 on theBenchmark
% 0.22/0.54  % (11674)dis+1010_10_afr=on:afp=100000:afq=2.0:amm=sco:anc=none:ep=RS:fde=unused:gs=on:nwc=1:sos=on:sac=on:sp=occurrence_9 on theBenchmark
% 0.22/0.55  % (11677)lrs+1011_3:2_av=off:er=known:lma=on:nm=2:newcnf=on:nwc=2:stl=30:sd=2:ss=axioms:st=3.0:urr=on:updr=off_24 on theBenchmark
% 0.22/0.55  % (11676)ott-3_3_av=off:cond=fast:fde=none:lcm=reverse:nm=6:nwc=1:sd=5:ss=axioms:st=2.0:sos=on:sp=reverse_arity:updr=off:uhcvi=on_88 on theBenchmark
% 0.22/0.55  % (11673)dis+1011_3_afp=4000:afq=1.1:amm=sco:anc=none:gs=on:gsaa=from_current:gsem=off:irw=on:nm=16:nwc=1:sas=z3:ss=axioms:sos=all:sac=on:sp=reverse_arity:updr=off_17 on theBenchmark
% 0.22/0.55  % (11686)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_73 on theBenchmark
% 0.22/0.55  % (11679)dis+1010_3:2_acc=on:afr=on:afp=1000:afq=1.2:amm=sco:bs=on:ccuc=first:fde=none:nm=0:nwc=4:sd=3:ss=axioms:st=5.0:urr=ec_only_75 on theBenchmark
% 0.22/0.55  % (11678)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_13 on theBenchmark
% 0.22/0.55  % (11671)dis+1010_7_afr=on:afp=10000:afq=1.1:amm=sco:anc=none:bd=off:bsr=on:cond=on:fsr=off:lma=on:nm=32:newcnf=on:nwc=1:urr=ec_only:updr=off_83 on theBenchmark
% 0.22/0.55  % (11683)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_91 on theBenchmark
% 0.22/0.55  % (11665)lrs+11_3_afr=on:afp=10000:afq=1.0:cond=fast:fsr=off:fde=none:gs=on:gsem=off:lcm=reverse:nm=2:newcnf=on:nwc=1:sas=z3:stl=30:sd=10:ss=axioms:st=2.0:sos=all:sp=reverse_arity:urr=on:uhcvi=on_23 on theBenchmark
% 0.22/0.56  % (11669)lrs+4_2_av=off:gs=on:gsem=on:lma=on:nm=16:nwc=1:sas=z3:stl=30:sos=on:urr=on_23 on theBenchmark
% 0.22/0.56  % (11664)lrs+1_8:1_av=off:cond=fast:fde=unused:lcm=predicate:nm=16:nwc=10:stl=60:sp=occurrence:urr=ec_only_3 on theBenchmark
% 0.22/0.56  % (11668)dis+1002_7_acc=on:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:ccuc=first:fsr=off:gsp=input_only:gs=on:gsem=on:nm=6:nwc=1.1:nicw=on:sos=on:sac=on:sp=occurrence:urr=ec_only_217 on theBenchmark
% 0.22/0.56  % (11663)dis+10_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:er=filter:gs=on:gsem=off:irw=on:lma=on:nm=4:nwc=1.3:sp=reverse_arity:updr=off_2 on theBenchmark
% 0.22/0.56  % (11670)lrs+1011_1_afp=40000:afq=1.4:bd=off:cond=fast:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=16:nwc=1:stl=30:sd=2:ss=axioms:sos=all:sp=occurrence_6 on theBenchmark
% 0.22/0.56  % (11668)Refutation not found, incomplete strategy% (11668)------------------------------
% 0.22/0.56  % (11668)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.56  % (11668)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.56  
% 0.22/0.56  % (11668)Memory used [KB]: 10618
% 0.22/0.56  % (11668)Time elapsed: 0.148 s
% 0.22/0.56  % (11668)------------------------------
% 0.22/0.56  % (11668)------------------------------
% 0.22/0.56  % (11675)lrs+1_7_av=off:irw=on:lcm=predicate:lma=on:nm=4:newcnf=on:nwc=1:stl=30:sos=all:sp=occurrence:updr=off_36 on theBenchmark
% 0.22/0.56  % (11682)dis-11_3_add=off:afp=40000:afq=1.0:amm=sco:anc=none:gs=on:irw=on:lcm=reverse:nm=6:nwc=1:sd=4:ss=axioms:st=3.0:sos=on:sac=on_1 on theBenchmark
% 0.22/0.56  % (11686)Refutation not found, incomplete strategy% (11686)------------------------------
% 0.22/0.56  % (11686)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.56  % (11686)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.56  
% 0.22/0.56  % (11686)Memory used [KB]: 10618
% 0.22/0.56  % (11686)Time elapsed: 0.146 s
% 0.22/0.56  % (11686)------------------------------
% 0.22/0.56  % (11686)------------------------------
% 1.51/0.57  % (11674)Refutation not found, incomplete strategy% (11674)------------------------------
% 1.51/0.57  % (11674)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.51/0.57  % (11674)Termination reason: Refutation not found, incomplete strategy
% 1.51/0.57  
% 1.51/0.57  % (11674)Memory used [KB]: 10618
% 1.51/0.57  % (11674)Time elapsed: 0.156 s
% 1.51/0.57  % (11674)------------------------------
% 1.51/0.57  % (11674)------------------------------
% 1.51/0.57  % (11687)lrs+11_3_av=off:bce=on:cond=fast:ep=R:lcm=reverse:lma=on:newcnf=on:nwc=1.3:stl=30:sd=3:ss=axioms:st=1.2:sos=on:sp=occurrence:uhcvi=on_2 on theBenchmark
% 1.51/0.57  % (11687)Refutation not found, incomplete strategy% (11687)------------------------------
% 1.51/0.57  % (11687)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.51/0.57  % (11687)Termination reason: Refutation not found, incomplete strategy
% 1.51/0.57  
% 1.51/0.57  % (11687)Memory used [KB]: 1663
% 1.51/0.57  % (11687)Time elapsed: 0.140 s
% 1.51/0.57  % (11687)------------------------------
% 1.51/0.57  % (11687)------------------------------
% 1.74/0.59  % (11682)Refutation found. Thanks to Tanya!
% 1.74/0.59  % SZS status Theorem for theBenchmark
% 1.74/0.59  % SZS output start Proof for theBenchmark
% 1.74/0.59  fof(f333,plain,(
% 1.74/0.59    $false),
% 1.74/0.59    inference(avatar_sat_refutation,[],[f89,f315,f332])).
% 1.74/0.59  fof(f332,plain,(
% 1.74/0.59    spl3_2),
% 1.74/0.59    inference(avatar_contradiction_clause,[],[f331])).
% 1.74/0.59  fof(f331,plain,(
% 1.74/0.59    $false | spl3_2),
% 1.74/0.59    inference(subsumption_resolution,[],[f330,f28])).
% 1.74/0.59  fof(f28,plain,(
% 1.74/0.59    v1_relat_1(sK2)),
% 1.74/0.59    inference(cnf_transformation,[],[f25])).
% 1.74/0.59  fof(f25,plain,(
% 1.74/0.59    ~r1_tarski(k9_relat_1(sK2,k3_xboole_0(sK0,sK1)),k3_xboole_0(k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK1))) & v1_relat_1(sK2)),
% 1.74/0.59    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f15,f24])).
% 1.74/0.59  fof(f24,plain,(
% 1.74/0.59    ? [X0,X1,X2] : (~r1_tarski(k9_relat_1(X2,k3_xboole_0(X0,X1)),k3_xboole_0(k9_relat_1(X2,X0),k9_relat_1(X2,X1))) & v1_relat_1(X2)) => (~r1_tarski(k9_relat_1(sK2,k3_xboole_0(sK0,sK1)),k3_xboole_0(k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK1))) & v1_relat_1(sK2))),
% 1.74/0.59    introduced(choice_axiom,[])).
% 1.74/0.59  fof(f15,plain,(
% 1.74/0.59    ? [X0,X1,X2] : (~r1_tarski(k9_relat_1(X2,k3_xboole_0(X0,X1)),k3_xboole_0(k9_relat_1(X2,X0),k9_relat_1(X2,X1))) & v1_relat_1(X2))),
% 1.74/0.59    inference(ennf_transformation,[],[f14])).
% 1.74/0.59  fof(f14,negated_conjecture,(
% 1.74/0.59    ~! [X0,X1,X2] : (v1_relat_1(X2) => r1_tarski(k9_relat_1(X2,k3_xboole_0(X0,X1)),k3_xboole_0(k9_relat_1(X2,X0),k9_relat_1(X2,X1))))),
% 1.74/0.59    inference(negated_conjecture,[],[f13])).
% 1.74/0.59  fof(f13,conjecture,(
% 1.74/0.59    ! [X0,X1,X2] : (v1_relat_1(X2) => r1_tarski(k9_relat_1(X2,k3_xboole_0(X0,X1)),k3_xboole_0(k9_relat_1(X2,X0),k9_relat_1(X2,X1))))),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t154_relat_1)).
% 1.74/0.59  fof(f330,plain,(
% 1.74/0.59    ~v1_relat_1(sK2) | spl3_2),
% 1.74/0.59    inference(resolution,[],[f320,f38])).
% 1.74/0.59  fof(f38,plain,(
% 1.74/0.59    ( ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 1.74/0.59    inference(cnf_transformation,[],[f21])).
% 1.74/0.59  fof(f21,plain,(
% 1.74/0.59    ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0))),
% 1.74/0.59    inference(ennf_transformation,[],[f8])).
% 1.74/0.59  fof(f8,axiom,(
% 1.74/0.59    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k7_relat_1(X0,X1)))),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_relat_1)).
% 1.74/0.59  fof(f320,plain,(
% 1.74/0.59    ~v1_relat_1(k7_relat_1(sK2,sK1)) | spl3_2),
% 1.74/0.59    inference(subsumption_resolution,[],[f319,f162])).
% 1.74/0.59  fof(f162,plain,(
% 1.74/0.59    ( ! [X35,X36] : (v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X36,X36,X36,X35))))) )),
% 1.74/0.59    inference(forward_demodulation,[],[f161,f55])).
% 1.74/0.59  fof(f55,plain,(
% 1.74/0.59    ( ! [X0,X1] : (k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k1_setfam_1(k2_enumset1(k7_relat_1(sK2,X0),k7_relat_1(sK2,X0),k7_relat_1(sK2,X0),k7_relat_1(sK2,X1)))) )),
% 1.74/0.59    inference(resolution,[],[f28,f50])).
% 1.74/0.59  fof(f50,plain,(
% 1.74/0.59    ( ! [X2,X0,X1] : (~v1_relat_1(X2) | k7_relat_1(X2,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k1_setfam_1(k2_enumset1(k7_relat_1(X2,X0),k7_relat_1(X2,X0),k7_relat_1(X2,X0),k7_relat_1(X2,X1)))) )),
% 1.74/0.59    inference(definition_unfolding,[],[f36,f46,f46])).
% 1.74/0.59  fof(f46,plain,(
% 1.74/0.59    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) )),
% 1.74/0.59    inference(definition_unfolding,[],[f42,f45])).
% 1.74/0.59  fof(f45,plain,(
% 1.74/0.59    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 1.74/0.59    inference(definition_unfolding,[],[f43,f44])).
% 1.74/0.59  fof(f44,plain,(
% 1.74/0.59    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 1.74/0.59    inference(cnf_transformation,[],[f6])).
% 1.74/0.59  fof(f6,axiom,(
% 1.74/0.59    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 1.74/0.59  fof(f43,plain,(
% 1.74/0.59    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.74/0.59    inference(cnf_transformation,[],[f5])).
% 1.74/0.59  fof(f5,axiom,(
% 1.74/0.59    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 1.74/0.59  fof(f42,plain,(
% 1.74/0.59    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 1.74/0.59    inference(cnf_transformation,[],[f7])).
% 1.74/0.59  fof(f7,axiom,(
% 1.74/0.59    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).
% 1.74/0.59  fof(f36,plain,(
% 1.74/0.59    ( ! [X2,X0,X1] : (k7_relat_1(X2,k3_xboole_0(X0,X1)) = k3_xboole_0(k7_relat_1(X2,X0),k7_relat_1(X2,X1)) | ~v1_relat_1(X2)) )),
% 1.74/0.59    inference(cnf_transformation,[],[f19])).
% 1.74/0.59  fof(f19,plain,(
% 1.74/0.59    ! [X0,X1,X2] : (k7_relat_1(X2,k3_xboole_0(X0,X1)) = k3_xboole_0(k7_relat_1(X2,X0),k7_relat_1(X2,X1)) | ~v1_relat_1(X2))),
% 1.74/0.59    inference(ennf_transformation,[],[f10])).
% 1.74/0.59  fof(f10,axiom,(
% 1.74/0.59    ! [X0,X1,X2] : (v1_relat_1(X2) => k7_relat_1(X2,k3_xboole_0(X0,X1)) = k3_xboole_0(k7_relat_1(X2,X0),k7_relat_1(X2,X1)))),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t108_relat_1)).
% 1.74/0.59  fof(f161,plain,(
% 1.74/0.59    ( ! [X35,X36] : (v1_relat_1(k1_setfam_1(k2_enumset1(k7_relat_1(sK2,X36),k7_relat_1(sK2,X36),k7_relat_1(sK2,X36),k7_relat_1(sK2,X35))))) )),
% 1.74/0.59    inference(subsumption_resolution,[],[f138,f28])).
% 1.74/0.59  fof(f138,plain,(
% 1.74/0.59    ( ! [X35,X36] : (v1_relat_1(k1_setfam_1(k2_enumset1(k7_relat_1(sK2,X36),k7_relat_1(sK2,X36),k7_relat_1(sK2,X36),k7_relat_1(sK2,X35)))) | ~v1_relat_1(sK2)) )),
% 1.74/0.59    inference(superposition,[],[f38,f66])).
% 1.74/0.59  fof(f66,plain,(
% 1.74/0.59    ( ! [X0,X1] : (k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) = k1_setfam_1(k2_enumset1(k7_relat_1(sK2,X1),k7_relat_1(sK2,X1),k7_relat_1(sK2,X1),k7_relat_1(sK2,X0)))) )),
% 1.74/0.59    inference(superposition,[],[f55,f52])).
% 1.74/0.59  fof(f52,plain,(
% 1.74/0.59    ( ! [X0,X1] : (k2_enumset1(X0,X0,X0,X1) = k2_enumset1(X1,X1,X1,X0)) )),
% 1.74/0.59    inference(definition_unfolding,[],[f39,f45,f45])).
% 1.74/0.59  fof(f39,plain,(
% 1.74/0.59    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 1.74/0.59    inference(cnf_transformation,[],[f4])).
% 1.74/0.59  fof(f4,axiom,(
% 1.74/0.59    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).
% 1.74/0.59  fof(f319,plain,(
% 1.74/0.59    ~v1_relat_1(k7_relat_1(sK2,sK1)) | ~v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1)))) | spl3_2),
% 1.74/0.59    inference(subsumption_resolution,[],[f318,f73])).
% 1.74/0.59  fof(f73,plain,(
% 1.74/0.59    ( ! [X0,X1] : (r1_tarski(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X1,X1,X1,X0))),k7_relat_1(sK2,X0))) )),
% 1.74/0.59    inference(superposition,[],[f69,f52])).
% 1.74/0.59  fof(f69,plain,(
% 1.74/0.59    ( ! [X2,X3] : (r1_tarski(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(X2,X2,X2,X3))),k7_relat_1(sK2,X2))) )),
% 1.74/0.59    inference(superposition,[],[f49,f55])).
% 1.74/0.59  fof(f49,plain,(
% 1.74/0.59    ( ! [X0,X1] : (r1_tarski(k1_setfam_1(k2_enumset1(X0,X0,X0,X1)),X0)) )),
% 1.74/0.59    inference(definition_unfolding,[],[f34,f46])).
% 1.74/0.59  fof(f34,plain,(
% 1.74/0.59    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 1.74/0.59    inference(cnf_transformation,[],[f2])).
% 1.74/0.59  fof(f2,axiom,(
% 1.74/0.59    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t17_xboole_1)).
% 1.74/0.59  fof(f318,plain,(
% 1.74/0.59    ~r1_tarski(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k7_relat_1(sK2,sK1)) | ~v1_relat_1(k7_relat_1(sK2,sK1)) | ~v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1)))) | spl3_2),
% 1.74/0.59    inference(resolution,[],[f88,f62])).
% 1.74/0.59  fof(f62,plain,(
% 1.74/0.59    ( ! [X0,X1] : (r1_tarski(k9_relat_1(sK2,X0),k9_relat_1(sK2,X1)) | ~r1_tarski(k7_relat_1(sK2,X0),k7_relat_1(sK2,X1)) | ~v1_relat_1(k7_relat_1(sK2,X1)) | ~v1_relat_1(k7_relat_1(sK2,X0))) )),
% 1.74/0.59    inference(superposition,[],[f58,f56])).
% 1.74/0.59  fof(f56,plain,(
% 1.74/0.59    ( ! [X2] : (k2_relat_1(k7_relat_1(sK2,X2)) = k9_relat_1(sK2,X2)) )),
% 1.74/0.59    inference(resolution,[],[f28,f35])).
% 1.74/0.59  fof(f35,plain,(
% 1.74/0.59    ( ! [X0,X1] : (~v1_relat_1(X1) | k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)) )),
% 1.74/0.59    inference(cnf_transformation,[],[f18])).
% 1.74/0.59  fof(f18,plain,(
% 1.74/0.59    ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.74/0.59    inference(ennf_transformation,[],[f11])).
% 1.74/0.59  fof(f11,axiom,(
% 1.74/0.59    ! [X0,X1] : (v1_relat_1(X1) => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0))),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t148_relat_1)).
% 1.74/0.59  fof(f58,plain,(
% 1.74/0.59    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),k9_relat_1(sK2,X0)) | ~r1_tarski(X1,k7_relat_1(sK2,X0)) | ~v1_relat_1(k7_relat_1(sK2,X0)) | ~v1_relat_1(X1)) )),
% 1.74/0.59    inference(superposition,[],[f41,f56])).
% 1.74/0.59  fof(f41,plain,(
% 1.74/0.59    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 1.74/0.59    inference(cnf_transformation,[],[f23])).
% 1.74/0.59  fof(f23,plain,(
% 1.74/0.59    ! [X0] : (! [X1] : ((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.74/0.59    inference(flattening,[],[f22])).
% 1.74/0.59  fof(f22,plain,(
% 1.74/0.59    ! [X0] : (! [X1] : (((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 1.74/0.59    inference(ennf_transformation,[],[f12])).
% 1.74/0.59  fof(f12,axiom,(
% 1.74/0.59    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r1_tarski(X0,X1) => (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))))))),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t25_relat_1)).
% 1.74/0.59  fof(f88,plain,(
% 1.74/0.59    ~r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK1)) | spl3_2),
% 1.74/0.59    inference(avatar_component_clause,[],[f86])).
% 1.74/0.59  fof(f86,plain,(
% 1.74/0.59    spl3_2 <=> r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK1))),
% 1.74/0.59    introduced(avatar_definition,[new_symbols(naming,[spl3_2])])).
% 1.74/0.59  fof(f315,plain,(
% 1.74/0.59    spl3_1),
% 1.74/0.59    inference(avatar_contradiction_clause,[],[f314])).
% 1.74/0.59  fof(f314,plain,(
% 1.74/0.59    $false | spl3_1),
% 1.74/0.59    inference(subsumption_resolution,[],[f313,f28])).
% 1.74/0.59  fof(f313,plain,(
% 1.74/0.59    ~v1_relat_1(sK2) | spl3_1),
% 1.74/0.59    inference(resolution,[],[f304,f38])).
% 1.74/0.59  fof(f304,plain,(
% 1.74/0.59    ~v1_relat_1(k7_relat_1(sK2,sK0)) | spl3_1),
% 1.74/0.59    inference(subsumption_resolution,[],[f303,f162])).
% 1.74/0.59  fof(f303,plain,(
% 1.74/0.59    ~v1_relat_1(k7_relat_1(sK2,sK0)) | ~v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1)))) | spl3_1),
% 1.74/0.59    inference(subsumption_resolution,[],[f294,f69])).
% 1.74/0.59  fof(f294,plain,(
% 1.74/0.59    ~r1_tarski(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k7_relat_1(sK2,sK0)) | ~v1_relat_1(k7_relat_1(sK2,sK0)) | ~v1_relat_1(k7_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1)))) | spl3_1),
% 1.74/0.59    inference(resolution,[],[f62,f84])).
% 1.74/0.59  fof(f84,plain,(
% 1.74/0.59    ~r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK0)) | spl3_1),
% 1.74/0.59    inference(avatar_component_clause,[],[f82])).
% 1.74/0.59  fof(f82,plain,(
% 1.74/0.59    spl3_1 <=> r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK0))),
% 1.74/0.59    introduced(avatar_definition,[new_symbols(naming,[spl3_1])])).
% 1.74/0.59  fof(f89,plain,(
% 1.74/0.59    ~spl3_1 | ~spl3_2),
% 1.74/0.59    inference(avatar_split_clause,[],[f57,f86,f82])).
% 1.74/0.59  fof(f57,plain,(
% 1.74/0.59    ~r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK1)) | ~r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k9_relat_1(sK2,sK0))),
% 1.74/0.59    inference(resolution,[],[f47,f48])).
% 1.74/0.59  fof(f48,plain,(
% 1.74/0.59    ( ! [X2,X0,X1] : (r1_tarski(X0,k1_setfam_1(k2_enumset1(X1,X1,X1,X2))) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)) )),
% 1.74/0.59    inference(definition_unfolding,[],[f30,f46])).
% 1.74/0.59  fof(f30,plain,(
% 1.74/0.59    ( ! [X2,X0,X1] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)) )),
% 1.74/0.59    inference(cnf_transformation,[],[f17])).
% 1.74/0.59  fof(f17,plain,(
% 1.74/0.59    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | ~r1_tarski(X0,X2) | ~r1_tarski(X0,X1))),
% 1.74/0.59    inference(flattening,[],[f16])).
% 1.74/0.59  fof(f16,plain,(
% 1.74/0.59    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) | (~r1_tarski(X0,X2) | ~r1_tarski(X0,X1)))),
% 1.74/0.59    inference(ennf_transformation,[],[f3])).
% 1.74/0.59  fof(f3,axiom,(
% 1.74/0.59    ! [X0,X1,X2] : ((r1_tarski(X0,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,k3_xboole_0(X1,X2)))),
% 1.74/0.59    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t19_xboole_1)).
% 1.74/0.59  fof(f47,plain,(
% 1.74/0.59    ~r1_tarski(k9_relat_1(sK2,k1_setfam_1(k2_enumset1(sK0,sK0,sK0,sK1))),k1_setfam_1(k2_enumset1(k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK1))))),
% 1.74/0.59    inference(definition_unfolding,[],[f29,f46,f46])).
% 1.74/0.59  fof(f29,plain,(
% 1.74/0.59    ~r1_tarski(k9_relat_1(sK2,k3_xboole_0(sK0,sK1)),k3_xboole_0(k9_relat_1(sK2,sK0),k9_relat_1(sK2,sK1)))),
% 1.74/0.59    inference(cnf_transformation,[],[f25])).
% 1.74/0.59  % SZS output end Proof for theBenchmark
% 1.74/0.59  % (11682)------------------------------
% 1.74/0.59  % (11682)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.74/0.59  % (11682)Termination reason: Refutation
% 1.74/0.59  
% 1.74/0.59  % (11682)Memory used [KB]: 10874
% 1.74/0.59  % (11682)Time elapsed: 0.178 s
% 1.74/0.59  % (11682)------------------------------
% 1.74/0.59  % (11682)------------------------------
% 1.74/0.60  % (11648)Success in time 0.228 s
%------------------------------------------------------------------------------
