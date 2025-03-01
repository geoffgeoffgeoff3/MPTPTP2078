%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:50:52 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   35 (  93 expanded)
%              Number of leaves         :    8 (  34 expanded)
%              Depth                    :   11
%              Number of atoms          :   84 ( 355 expanded)
%              Number of equality atoms :   45 ( 172 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f55,plain,(
    $false ),
    inference(subsumption_resolution,[],[f54,f19])).

fof(f19,plain,(
    k7_relat_1(sK0,sK2) != k7_relat_1(sK1,sK2) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,
    ( k7_relat_1(sK0,sK2) != k7_relat_1(sK1,sK2)
    & k7_relat_1(sK0,sK3) = k7_relat_1(sK1,sK3)
    & r1_tarski(sK2,sK3)
    & v1_relat_1(sK1)
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f8,f13,f12,f11])).

fof(f11,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2,X3] :
                ( k7_relat_1(X0,X2) != k7_relat_1(X1,X2)
                & k7_relat_1(X0,X3) = k7_relat_1(X1,X3)
                & r1_tarski(X2,X3) )
            & v1_relat_1(X1) )
        & v1_relat_1(X0) )
   => ( ? [X1] :
          ( ? [X3,X2] :
              ( k7_relat_1(X1,X2) != k7_relat_1(sK0,X2)
              & k7_relat_1(X1,X3) = k7_relat_1(sK0,X3)
              & r1_tarski(X2,X3) )
          & v1_relat_1(X1) )
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f12,plain,
    ( ? [X1] :
        ( ? [X3,X2] :
            ( k7_relat_1(X1,X2) != k7_relat_1(sK0,X2)
            & k7_relat_1(X1,X3) = k7_relat_1(sK0,X3)
            & r1_tarski(X2,X3) )
        & v1_relat_1(X1) )
   => ( ? [X3,X2] :
          ( k7_relat_1(sK0,X2) != k7_relat_1(sK1,X2)
          & k7_relat_1(sK0,X3) = k7_relat_1(sK1,X3)
          & r1_tarski(X2,X3) )
      & v1_relat_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f13,plain,
    ( ? [X3,X2] :
        ( k7_relat_1(sK0,X2) != k7_relat_1(sK1,X2)
        & k7_relat_1(sK0,X3) = k7_relat_1(sK1,X3)
        & r1_tarski(X2,X3) )
   => ( k7_relat_1(sK0,sK2) != k7_relat_1(sK1,sK2)
      & k7_relat_1(sK0,sK3) = k7_relat_1(sK1,sK3)
      & r1_tarski(sK2,sK3) ) ),
    introduced(choice_axiom,[])).

fof(f8,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2,X3] :
              ( k7_relat_1(X0,X2) != k7_relat_1(X1,X2)
              & k7_relat_1(X0,X3) = k7_relat_1(X1,X3)
              & r1_tarski(X2,X3) )
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(flattening,[],[f7])).

fof(f7,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2,X3] :
              ( k7_relat_1(X0,X2) != k7_relat_1(X1,X2)
              & k7_relat_1(X0,X3) = k7_relat_1(X1,X3)
              & r1_tarski(X2,X3) )
          & v1_relat_1(X1) )
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => ! [X1] :
            ( v1_relat_1(X1)
           => ! [X2,X3] :
                ( ( k7_relat_1(X0,X3) = k7_relat_1(X1,X3)
                  & r1_tarski(X2,X3) )
               => k7_relat_1(X0,X2) = k7_relat_1(X1,X2) ) ) ) ),
    inference(negated_conjecture,[],[f5])).

fof(f5,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2,X3] :
              ( ( k7_relat_1(X0,X3) = k7_relat_1(X1,X3)
                & r1_tarski(X2,X3) )
             => k7_relat_1(X0,X2) = k7_relat_1(X1,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t188_relat_1)).

fof(f54,plain,(
    k7_relat_1(sK0,sK2) = k7_relat_1(sK1,sK2) ),
    inference(forward_demodulation,[],[f53,f37])).

fof(f37,plain,(
    k7_relat_1(sK0,sK2) = k7_relat_1(k7_relat_1(sK0,sK3),sK2) ),
    inference(superposition,[],[f29,f26])).

fof(f26,plain,(
    sK2 = k1_setfam_1(k2_tarski(sK2,sK3)) ),
    inference(resolution,[],[f24,f17])).

fof(f17,plain,(
    r1_tarski(sK2,sK3) ),
    inference(cnf_transformation,[],[f14])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k1_setfam_1(k2_tarski(X0,X1)) = X0 ) ),
    inference(definition_unfolding,[],[f22,f21])).

fof(f21,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).

fof(f22,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(f29,plain,(
    ! [X0,X1] : k7_relat_1(k7_relat_1(sK0,X0),X1) = k7_relat_1(sK0,k1_setfam_1(k2_tarski(X1,X0))) ),
    inference(superposition,[],[f27,f20])).

fof(f20,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(f27,plain,(
    ! [X0,X1] : k7_relat_1(k7_relat_1(sK0,X0),X1) = k7_relat_1(sK0,k1_setfam_1(k2_tarski(X0,X1))) ),
    inference(resolution,[],[f25,f15])).

fof(f15,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f14])).

fof(f25,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_relat_1(X2)
      | k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k1_setfam_1(k2_tarski(X0,X1))) ) ),
    inference(definition_unfolding,[],[f23,f21])).

fof(f23,plain,(
    ! [X2,X0,X1] :
      ( k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,plain,(
    ! [X0,X1,X2] :
      ( k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1))
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_relat_1)).

fof(f53,plain,(
    k7_relat_1(sK1,sK2) = k7_relat_1(k7_relat_1(sK0,sK3),sK2) ),
    inference(forward_demodulation,[],[f50,f18])).

fof(f18,plain,(
    k7_relat_1(sK0,sK3) = k7_relat_1(sK1,sK3) ),
    inference(cnf_transformation,[],[f14])).

fof(f50,plain,(
    k7_relat_1(sK1,sK2) = k7_relat_1(k7_relat_1(sK1,sK3),sK2) ),
    inference(superposition,[],[f32,f26])).

fof(f32,plain,(
    ! [X0,X1] : k7_relat_1(k7_relat_1(sK1,X0),X1) = k7_relat_1(sK1,k1_setfam_1(k2_tarski(X1,X0))) ),
    inference(superposition,[],[f28,f20])).

fof(f28,plain,(
    ! [X2,X3] : k7_relat_1(k7_relat_1(sK1,X2),X3) = k7_relat_1(sK1,k1_setfam_1(k2_tarski(X2,X3))) ),
    inference(resolution,[],[f25,f16])).

fof(f16,plain,(
    v1_relat_1(sK1) ),
    inference(cnf_transformation,[],[f14])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n008.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 19:04:45 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.20/0.40  % (10430)ott+1_28_av=off:bs=unit_only:cond=on:irw=on:nm=64:nwc=2:sp=occurrence:updr=off:uhcvi=on_1052 on theBenchmark
% 0.20/0.41  % (10430)Refutation found. Thanks to Tanya!
% 0.20/0.41  % SZS status Theorem for theBenchmark
% 0.20/0.41  % SZS output start Proof for theBenchmark
% 0.20/0.41  fof(f55,plain,(
% 0.20/0.41    $false),
% 0.20/0.41    inference(subsumption_resolution,[],[f54,f19])).
% 0.20/0.41  fof(f19,plain,(
% 0.20/0.41    k7_relat_1(sK0,sK2) != k7_relat_1(sK1,sK2)),
% 0.20/0.41    inference(cnf_transformation,[],[f14])).
% 0.20/0.41  fof(f14,plain,(
% 0.20/0.41    ((k7_relat_1(sK0,sK2) != k7_relat_1(sK1,sK2) & k7_relat_1(sK0,sK3) = k7_relat_1(sK1,sK3) & r1_tarski(sK2,sK3)) & v1_relat_1(sK1)) & v1_relat_1(sK0)),
% 0.20/0.41    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f8,f13,f12,f11])).
% 0.20/0.41  fof(f11,plain,(
% 0.20/0.41    ? [X0] : (? [X1] : (? [X2,X3] : (k7_relat_1(X0,X2) != k7_relat_1(X1,X2) & k7_relat_1(X0,X3) = k7_relat_1(X1,X3) & r1_tarski(X2,X3)) & v1_relat_1(X1)) & v1_relat_1(X0)) => (? [X1] : (? [X3,X2] : (k7_relat_1(X1,X2) != k7_relat_1(sK0,X2) & k7_relat_1(X1,X3) = k7_relat_1(sK0,X3) & r1_tarski(X2,X3)) & v1_relat_1(X1)) & v1_relat_1(sK0))),
% 0.20/0.41    introduced(choice_axiom,[])).
% 0.20/0.41  fof(f12,plain,(
% 0.20/0.41    ? [X1] : (? [X3,X2] : (k7_relat_1(X1,X2) != k7_relat_1(sK0,X2) & k7_relat_1(X1,X3) = k7_relat_1(sK0,X3) & r1_tarski(X2,X3)) & v1_relat_1(X1)) => (? [X3,X2] : (k7_relat_1(sK0,X2) != k7_relat_1(sK1,X2) & k7_relat_1(sK0,X3) = k7_relat_1(sK1,X3) & r1_tarski(X2,X3)) & v1_relat_1(sK1))),
% 0.20/0.41    introduced(choice_axiom,[])).
% 0.20/0.41  fof(f13,plain,(
% 0.20/0.41    ? [X3,X2] : (k7_relat_1(sK0,X2) != k7_relat_1(sK1,X2) & k7_relat_1(sK0,X3) = k7_relat_1(sK1,X3) & r1_tarski(X2,X3)) => (k7_relat_1(sK0,sK2) != k7_relat_1(sK1,sK2) & k7_relat_1(sK0,sK3) = k7_relat_1(sK1,sK3) & r1_tarski(sK2,sK3))),
% 0.20/0.41    introduced(choice_axiom,[])).
% 0.20/0.41  fof(f8,plain,(
% 0.20/0.41    ? [X0] : (? [X1] : (? [X2,X3] : (k7_relat_1(X0,X2) != k7_relat_1(X1,X2) & k7_relat_1(X0,X3) = k7_relat_1(X1,X3) & r1_tarski(X2,X3)) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 0.20/0.41    inference(flattening,[],[f7])).
% 0.20/0.41  fof(f7,plain,(
% 0.20/0.41    ? [X0] : (? [X1] : (? [X2,X3] : (k7_relat_1(X0,X2) != k7_relat_1(X1,X2) & (k7_relat_1(X0,X3) = k7_relat_1(X1,X3) & r1_tarski(X2,X3))) & v1_relat_1(X1)) & v1_relat_1(X0))),
% 0.20/0.41    inference(ennf_transformation,[],[f6])).
% 0.20/0.41  fof(f6,negated_conjecture,(
% 0.20/0.41    ~! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2,X3] : ((k7_relat_1(X0,X3) = k7_relat_1(X1,X3) & r1_tarski(X2,X3)) => k7_relat_1(X0,X2) = k7_relat_1(X1,X2))))),
% 0.20/0.41    inference(negated_conjecture,[],[f5])).
% 0.20/0.41  fof(f5,conjecture,(
% 0.20/0.41    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2,X3] : ((k7_relat_1(X0,X3) = k7_relat_1(X1,X3) & r1_tarski(X2,X3)) => k7_relat_1(X0,X2) = k7_relat_1(X1,X2))))),
% 0.20/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t188_relat_1)).
% 0.20/0.41  fof(f54,plain,(
% 0.20/0.41    k7_relat_1(sK0,sK2) = k7_relat_1(sK1,sK2)),
% 0.20/0.41    inference(forward_demodulation,[],[f53,f37])).
% 0.20/0.41  fof(f37,plain,(
% 0.20/0.41    k7_relat_1(sK0,sK2) = k7_relat_1(k7_relat_1(sK0,sK3),sK2)),
% 0.20/0.41    inference(superposition,[],[f29,f26])).
% 0.20/0.41  fof(f26,plain,(
% 0.20/0.41    sK2 = k1_setfam_1(k2_tarski(sK2,sK3))),
% 0.20/0.41    inference(resolution,[],[f24,f17])).
% 0.20/0.41  fof(f17,plain,(
% 0.20/0.41    r1_tarski(sK2,sK3)),
% 0.20/0.41    inference(cnf_transformation,[],[f14])).
% 0.20/0.41  fof(f24,plain,(
% 0.20/0.41    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k1_setfam_1(k2_tarski(X0,X1)) = X0) )),
% 0.20/0.41    inference(definition_unfolding,[],[f22,f21])).
% 0.20/0.41  fof(f21,plain,(
% 0.20/0.41    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 0.20/0.41    inference(cnf_transformation,[],[f3])).
% 0.20/0.41  fof(f3,axiom,(
% 0.20/0.41    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 0.20/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_setfam_1)).
% 0.20/0.41  fof(f22,plain,(
% 0.20/0.41    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 0.20/0.41    inference(cnf_transformation,[],[f9])).
% 0.20/0.41  fof(f9,plain,(
% 0.20/0.41    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 0.20/0.41    inference(ennf_transformation,[],[f1])).
% 0.20/0.41  fof(f1,axiom,(
% 0.20/0.41    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 0.20/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).
% 0.20/0.41  fof(f29,plain,(
% 0.20/0.41    ( ! [X0,X1] : (k7_relat_1(k7_relat_1(sK0,X0),X1) = k7_relat_1(sK0,k1_setfam_1(k2_tarski(X1,X0)))) )),
% 0.20/0.41    inference(superposition,[],[f27,f20])).
% 0.20/0.41  fof(f20,plain,(
% 0.20/0.41    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 0.20/0.41    inference(cnf_transformation,[],[f2])).
% 0.20/0.41  fof(f2,axiom,(
% 0.20/0.41    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 0.20/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).
% 0.20/0.41  fof(f27,plain,(
% 0.20/0.41    ( ! [X0,X1] : (k7_relat_1(k7_relat_1(sK0,X0),X1) = k7_relat_1(sK0,k1_setfam_1(k2_tarski(X0,X1)))) )),
% 0.20/0.41    inference(resolution,[],[f25,f15])).
% 0.20/0.41  fof(f15,plain,(
% 0.20/0.41    v1_relat_1(sK0)),
% 0.20/0.41    inference(cnf_transformation,[],[f14])).
% 0.20/0.41  fof(f25,plain,(
% 0.20/0.41    ( ! [X2,X0,X1] : (~v1_relat_1(X2) | k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k1_setfam_1(k2_tarski(X0,X1)))) )),
% 0.20/0.41    inference(definition_unfolding,[],[f23,f21])).
% 0.20/0.41  fof(f23,plain,(
% 0.20/0.41    ( ! [X2,X0,X1] : (k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1)) | ~v1_relat_1(X2)) )),
% 0.20/0.41    inference(cnf_transformation,[],[f10])).
% 0.20/0.41  fof(f10,plain,(
% 0.20/0.41    ! [X0,X1,X2] : (k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1)) | ~v1_relat_1(X2))),
% 0.20/0.41    inference(ennf_transformation,[],[f4])).
% 0.20/0.41  fof(f4,axiom,(
% 0.20/0.41    ! [X0,X1,X2] : (v1_relat_1(X2) => k7_relat_1(k7_relat_1(X2,X0),X1) = k7_relat_1(X2,k3_xboole_0(X0,X1)))),
% 0.20/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_relat_1)).
% 0.20/0.41  fof(f53,plain,(
% 0.20/0.41    k7_relat_1(sK1,sK2) = k7_relat_1(k7_relat_1(sK0,sK3),sK2)),
% 0.20/0.41    inference(forward_demodulation,[],[f50,f18])).
% 0.20/0.41  fof(f18,plain,(
% 0.20/0.41    k7_relat_1(sK0,sK3) = k7_relat_1(sK1,sK3)),
% 0.20/0.41    inference(cnf_transformation,[],[f14])).
% 0.20/0.41  fof(f50,plain,(
% 0.20/0.41    k7_relat_1(sK1,sK2) = k7_relat_1(k7_relat_1(sK1,sK3),sK2)),
% 0.20/0.41    inference(superposition,[],[f32,f26])).
% 0.20/0.41  fof(f32,plain,(
% 0.20/0.41    ( ! [X0,X1] : (k7_relat_1(k7_relat_1(sK1,X0),X1) = k7_relat_1(sK1,k1_setfam_1(k2_tarski(X1,X0)))) )),
% 0.20/0.41    inference(superposition,[],[f28,f20])).
% 0.20/0.41  fof(f28,plain,(
% 0.20/0.41    ( ! [X2,X3] : (k7_relat_1(k7_relat_1(sK1,X2),X3) = k7_relat_1(sK1,k1_setfam_1(k2_tarski(X2,X3)))) )),
% 0.20/0.41    inference(resolution,[],[f25,f16])).
% 0.20/0.41  fof(f16,plain,(
% 0.20/0.41    v1_relat_1(sK1)),
% 0.20/0.41    inference(cnf_transformation,[],[f14])).
% 0.20/0.41  % SZS output end Proof for theBenchmark
% 0.20/0.41  % (10430)------------------------------
% 0.20/0.41  % (10430)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.41  % (10430)Termination reason: Refutation
% 0.20/0.41  
% 0.20/0.41  % (10430)Memory used [KB]: 1663
% 0.20/0.41  % (10430)Time elapsed: 0.004 s
% 0.20/0.41  % (10430)------------------------------
% 0.20/0.41  % (10430)------------------------------
% 0.20/0.41  % (10416)Success in time 0.059 s
%------------------------------------------------------------------------------
