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
% DateTime   : Thu Dec  3 12:48:34 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   41 (  66 expanded)
%              Number of leaves         :    9 (  18 expanded)
%              Depth                    :   12
%              Number of atoms          :   86 ( 156 expanded)
%              Number of equality atoms :   28 (  55 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f88,plain,(
    $false ),
    inference(subsumption_resolution,[],[f81,f22])).

fof(f22,plain,(
    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,
    ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1)
    & r1_tarski(sK0,sK1)
    & v1_relat_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f11,f18])).

fof(f18,plain,
    ( ? [X0,X1,X2] :
        ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1)
        & r1_tarski(X0,X1)
        & v1_relat_1(X2) )
   => ( k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1)
      & r1_tarski(sK0,sK1)
      & v1_relat_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f11,plain,(
    ? [X0,X1,X2] :
      ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1)
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(flattening,[],[f10])).

fof(f10,plain,(
    ? [X0,X1,X2] :
      ( k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1)
      & r1_tarski(X0,X1)
      & v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( v1_relat_1(X2)
       => ( r1_tarski(X0,X1)
         => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f8,conjecture,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( r1_tarski(X0,X1)
       => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t102_relat_1)).

fof(f81,plain,(
    k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK0),sK1) ),
    inference(resolution,[],[f80,f21])).

fof(f21,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f19])).

fof(f80,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k7_relat_1(sK2,X0) = k7_relat_1(k7_relat_1(sK2,X0),X1) ) ),
    inference(subsumption_resolution,[],[f79,f20])).

fof(f20,plain,(
    v1_relat_1(sK2) ),
    inference(cnf_transformation,[],[f19])).

fof(f79,plain,(
    ! [X0,X1] :
      ( k7_relat_1(sK2,X0) = k7_relat_1(k7_relat_1(sK2,X0),X1)
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(sK2) ) ),
    inference(resolution,[],[f58,f25])).

fof(f25,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k7_relat_1(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k7_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_relat_1)).

fof(f58,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(k7_relat_1(sK2,X0))
      | k7_relat_1(sK2,X0) = k7_relat_1(k7_relat_1(sK2,X0),X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(resolution,[],[f57,f27])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(k1_relat_1(X1),X0)
      | k7_relat_1(X1,X0) = X1
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k7_relat_1(X1,X0) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t97_relat_1)).

fof(f57,plain,(
    ! [X2,X3] :
      ( r1_tarski(k1_relat_1(k7_relat_1(sK2,X2)),X3)
      | ~ r1_tarski(X2,X3) ) ),
    inference(superposition,[],[f32,f54])).

fof(f54,plain,(
    ! [X0] : k1_relat_1(k7_relat_1(sK2,X0)) = k1_setfam_1(k2_tarski(X0,k1_relat_1(k7_relat_1(sK2,X0)))) ),
    inference(resolution,[],[f35,f20])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(X0)
      | k1_relat_1(k7_relat_1(X0,X1)) = k1_setfam_1(k2_tarski(X1,k1_relat_1(k7_relat_1(X0,X1)))) ) ),
    inference(forward_demodulation,[],[f34,f30])).

fof(f30,plain,(
    ! [X0,X1] : k1_setfam_1(k2_tarski(X0,X1)) = k1_setfam_1(k2_tarski(X1,X0)) ),
    inference(definition_unfolding,[],[f23,f24,f24])).

fof(f24,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(f23,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f34,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k7_relat_1(X0,X1)) = k1_setfam_1(k2_tarski(k1_relat_1(k7_relat_1(X0,X1)),X1))
      | ~ v1_relat_1(X0) ) ),
    inference(resolution,[],[f31,f26])).

fof(f26,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t87_relat_1)).

fof(f31,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k1_setfam_1(k2_tarski(X0,X1)) = X0 ) ),
    inference(definition_unfolding,[],[f28,f24])).

fof(f28,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k1_setfam_1(k2_tarski(X0,X2)),X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f29,f24])).

fof(f29,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(k3_xboole_0(X0,X2),X1)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X1)
     => r1_tarski(k3_xboole_0(X0,X2),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t108_xboole_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n013.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 12:17:54 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.20/0.44  % (19909)ott+11_20_afr=on:afp=100000:afq=1.0:amm=sco:anc=all:bsr=on:irw=on:lma=on:nm=4:nwc=1.2:sac=on:sp=occurrence_294 on theBenchmark
% 0.20/0.45  % (19911)lrs+10_24_add=off:afr=on:afp=1000:afq=1.4:anc=none:bs=unit_only:gs=on:gsaa=from_current:gsem=on:lma=on:nm=2:nwc=1.1:stl=60:sac=on:uhcvi=on_461 on theBenchmark
% 0.20/0.46  % (19907)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.20/0.46  % (19916)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.20/0.46  % (19911)Refutation found. Thanks to Tanya!
% 0.20/0.46  % SZS status Theorem for theBenchmark
% 0.20/0.46  % SZS output start Proof for theBenchmark
% 0.20/0.46  fof(f88,plain,(
% 0.20/0.46    $false),
% 0.20/0.46    inference(subsumption_resolution,[],[f81,f22])).
% 0.20/0.46  fof(f22,plain,(
% 0.20/0.46    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1)),
% 0.20/0.46    inference(cnf_transformation,[],[f19])).
% 0.20/0.46  fof(f19,plain,(
% 0.20/0.46    k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) & r1_tarski(sK0,sK1) & v1_relat_1(sK2)),
% 0.20/0.46    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f11,f18])).
% 0.20/0.46  fof(f18,plain,(
% 0.20/0.46    ? [X0,X1,X2] : (k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1) & r1_tarski(X0,X1) & v1_relat_1(X2)) => (k7_relat_1(sK2,sK0) != k7_relat_1(k7_relat_1(sK2,sK0),sK1) & r1_tarski(sK0,sK1) & v1_relat_1(sK2))),
% 0.20/0.46    introduced(choice_axiom,[])).
% 0.20/0.46  fof(f11,plain,(
% 0.20/0.46    ? [X0,X1,X2] : (k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1) & r1_tarski(X0,X1) & v1_relat_1(X2))),
% 0.20/0.46    inference(flattening,[],[f10])).
% 0.20/0.46  fof(f10,plain,(
% 0.20/0.46    ? [X0,X1,X2] : ((k7_relat_1(X2,X0) != k7_relat_1(k7_relat_1(X2,X0),X1) & r1_tarski(X0,X1)) & v1_relat_1(X2))),
% 0.20/0.46    inference(ennf_transformation,[],[f9])).
% 0.20/0.46  fof(f9,negated_conjecture,(
% 0.20/0.46    ~! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1)))),
% 0.20/0.46    inference(negated_conjecture,[],[f8])).
% 0.20/0.46  fof(f8,conjecture,(
% 0.20/0.46    ! [X0,X1,X2] : (v1_relat_1(X2) => (r1_tarski(X0,X1) => k7_relat_1(X2,X0) = k7_relat_1(k7_relat_1(X2,X0),X1)))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t102_relat_1)).
% 0.20/0.46  fof(f81,plain,(
% 0.20/0.46    k7_relat_1(sK2,sK0) = k7_relat_1(k7_relat_1(sK2,sK0),sK1)),
% 0.20/0.46    inference(resolution,[],[f80,f21])).
% 0.20/0.46  fof(f21,plain,(
% 0.20/0.46    r1_tarski(sK0,sK1)),
% 0.20/0.46    inference(cnf_transformation,[],[f19])).
% 0.20/0.46  fof(f80,plain,(
% 0.20/0.46    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k7_relat_1(sK2,X0) = k7_relat_1(k7_relat_1(sK2,X0),X1)) )),
% 0.20/0.46    inference(subsumption_resolution,[],[f79,f20])).
% 0.20/0.46  fof(f20,plain,(
% 0.20/0.46    v1_relat_1(sK2)),
% 0.20/0.46    inference(cnf_transformation,[],[f19])).
% 0.20/0.46  fof(f79,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k7_relat_1(sK2,X0) = k7_relat_1(k7_relat_1(sK2,X0),X1) | ~r1_tarski(X0,X1) | ~v1_relat_1(sK2)) )),
% 0.20/0.46    inference(resolution,[],[f58,f25])).
% 0.20/0.46  fof(f25,plain,(
% 0.20/0.46    ( ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f12])).
% 0.20/0.46  fof(f12,plain,(
% 0.20/0.46    ! [X0,X1] : (v1_relat_1(k7_relat_1(X0,X1)) | ~v1_relat_1(X0))),
% 0.20/0.46    inference(ennf_transformation,[],[f5])).
% 0.20/0.46  fof(f5,axiom,(
% 0.20/0.46    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k7_relat_1(X0,X1)))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k7_relat_1)).
% 0.20/0.46  fof(f58,plain,(
% 0.20/0.46    ( ! [X0,X1] : (~v1_relat_1(k7_relat_1(sK2,X0)) | k7_relat_1(sK2,X0) = k7_relat_1(k7_relat_1(sK2,X0),X1) | ~r1_tarski(X0,X1)) )),
% 0.20/0.46    inference(resolution,[],[f57,f27])).
% 0.20/0.46  fof(f27,plain,(
% 0.20/0.46    ( ! [X0,X1] : (~r1_tarski(k1_relat_1(X1),X0) | k7_relat_1(X1,X0) = X1 | ~v1_relat_1(X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f15])).
% 0.20/0.46  fof(f15,plain,(
% 0.20/0.46    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 0.20/0.46    inference(flattening,[],[f14])).
% 0.20/0.46  fof(f14,plain,(
% 0.20/0.46    ! [X0,X1] : ((k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 0.20/0.46    inference(ennf_transformation,[],[f7])).
% 0.20/0.46  fof(f7,axiom,(
% 0.20/0.46    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k7_relat_1(X1,X0) = X1))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t97_relat_1)).
% 0.20/0.46  fof(f57,plain,(
% 0.20/0.46    ( ! [X2,X3] : (r1_tarski(k1_relat_1(k7_relat_1(sK2,X2)),X3) | ~r1_tarski(X2,X3)) )),
% 0.20/0.46    inference(superposition,[],[f32,f54])).
% 0.20/0.46  fof(f54,plain,(
% 0.20/0.46    ( ! [X0] : (k1_relat_1(k7_relat_1(sK2,X0)) = k1_setfam_1(k2_tarski(X0,k1_relat_1(k7_relat_1(sK2,X0))))) )),
% 0.20/0.46    inference(resolution,[],[f35,f20])).
% 0.20/0.46  fof(f35,plain,(
% 0.20/0.46    ( ! [X0,X1] : (~v1_relat_1(X0) | k1_relat_1(k7_relat_1(X0,X1)) = k1_setfam_1(k2_tarski(X1,k1_relat_1(k7_relat_1(X0,X1))))) )),
% 0.20/0.46    inference(forward_demodulation,[],[f34,f30])).
% 0.20/0.46  fof(f30,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k1_setfam_1(k2_tarski(X0,X1)) = k1_setfam_1(k2_tarski(X1,X0))) )),
% 0.20/0.46    inference(definition_unfolding,[],[f23,f24,f24])).
% 0.20/0.46  fof(f24,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 0.20/0.46    inference(cnf_transformation,[],[f4])).
% 0.20/0.46  fof(f4,axiom,(
% 0.20/0.46    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).
% 0.20/0.46  fof(f23,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f1])).
% 0.20/0.46  fof(f1,axiom,(
% 0.20/0.46    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.20/0.46  fof(f34,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k1_relat_1(k7_relat_1(X0,X1)) = k1_setfam_1(k2_tarski(k1_relat_1(k7_relat_1(X0,X1)),X1)) | ~v1_relat_1(X0)) )),
% 0.20/0.46    inference(resolution,[],[f31,f26])).
% 0.20/0.46  fof(f26,plain,(
% 0.20/0.46    ( ! [X0,X1] : (r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) | ~v1_relat_1(X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f13])).
% 0.20/0.46  fof(f13,plain,(
% 0.20/0.46    ! [X0,X1] : (r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0) | ~v1_relat_1(X1))),
% 0.20/0.46    inference(ennf_transformation,[],[f6])).
% 0.20/0.46  fof(f6,axiom,(
% 0.20/0.46    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k1_relat_1(k7_relat_1(X1,X0)),X0))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t87_relat_1)).
% 0.20/0.46  fof(f31,plain,(
% 0.20/0.46    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k1_setfam_1(k2_tarski(X0,X1)) = X0) )),
% 0.20/0.46    inference(definition_unfolding,[],[f28,f24])).
% 0.20/0.46  fof(f28,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f16])).
% 0.20/0.46  fof(f16,plain,(
% 0.20/0.46    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.20/0.46    inference(ennf_transformation,[],[f3])).
% 0.20/0.46  fof(f3,axiom,(
% 0.20/0.46    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).
% 0.20/0.46  fof(f32,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (r1_tarski(k1_setfam_1(k2_tarski(X0,X2)),X1) | ~r1_tarski(X0,X1)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f29,f24])).
% 0.20/0.46  fof(f29,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (r1_tarski(k3_xboole_0(X0,X2),X1) | ~r1_tarski(X0,X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f17])).
% 0.20/0.46  fof(f17,plain,(
% 0.20/0.46    ! [X0,X1,X2] : (r1_tarski(k3_xboole_0(X0,X2),X1) | ~r1_tarski(X0,X1))),
% 0.20/0.46    inference(ennf_transformation,[],[f2])).
% 0.20/0.46  fof(f2,axiom,(
% 0.20/0.46    ! [X0,X1,X2] : (r1_tarski(X0,X1) => r1_tarski(k3_xboole_0(X0,X2),X1))),
% 0.20/0.46    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t108_xboole_1)).
% 0.20/0.46  % SZS output end Proof for theBenchmark
% 0.20/0.46  % (19911)------------------------------
% 0.20/0.46  % (19911)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.46  % (19911)Termination reason: Refutation
% 0.20/0.46  
% 0.20/0.46  % (19911)Memory used [KB]: 10618
% 0.20/0.46  % (19911)Time elapsed: 0.042 s
% 0.20/0.46  % (19911)------------------------------
% 0.20/0.46  % (19911)------------------------------
% 0.20/0.46  % (19910)lrs+1_128_add=off:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bs=unit_only:gs=on:gsem=off:lwlo=on:nm=2:nwc=1:sas=z3:stl=90:sac=on:sp=occurrence:urr=on:updr=off:uhcvi=on_520 on theBenchmark
% 0.20/0.47  % (19901)Success in time 0.114 s
%------------------------------------------------------------------------------
