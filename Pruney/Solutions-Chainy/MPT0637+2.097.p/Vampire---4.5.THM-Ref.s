%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:52:36 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   42 (  63 expanded)
%              Number of leaves         :   10 (  19 expanded)
%              Depth                    :   10
%              Number of atoms          :   64 (  92 expanded)
%              Number of equality atoms :   38 (  54 expanded)
%              Maximal formula depth    :    6 (   4 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f50,plain,(
    $false ),
    inference(trivial_inequality_removal,[],[f42])).

fof(f42,plain,(
    k7_relat_1(k6_relat_1(sK0),sK1) != k7_relat_1(k6_relat_1(sK0),sK1) ),
    inference(superposition,[],[f34,f41])).

fof(f41,plain,(
    ! [X0,X1] : k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(k1_setfam_1(k1_enumset1(X0,X0,X1))) ),
    inference(forward_demodulation,[],[f38,f40])).

fof(f40,plain,(
    ! [X0,X1] : k7_relat_1(k6_relat_1(X0),X1) = k7_relat_1(k6_relat_1(X0),k1_setfam_1(k1_enumset1(X0,X0,X1))) ),
    inference(forward_demodulation,[],[f39,f21])).

fof(f21,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_relat_1)).

fof(f39,plain,(
    ! [X0,X1] : k7_relat_1(k6_relat_1(X0),X1) = k7_relat_1(k6_relat_1(X0),k1_setfam_1(k1_enumset1(k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),X1))) ),
    inference(resolution,[],[f32,f19])).

fof(f19,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc3_funct_1)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(X1)
      | k7_relat_1(X1,X0) = k7_relat_1(X1,k1_setfam_1(k1_enumset1(k1_relat_1(X1),k1_relat_1(X1),X0))) ) ),
    inference(definition_unfolding,[],[f27,f29])).

fof(f29,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k1_enumset1(X0,X0,X1)) ),
    inference(definition_unfolding,[],[f24,f25])).

fof(f25,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(f24,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(f27,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = k7_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = k7_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k7_relat_1(X1,X0) = k7_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t192_relat_1)).

fof(f38,plain,(
    ! [X0,X1] : k6_relat_1(k1_setfam_1(k1_enumset1(X0,X0,X1))) = k7_relat_1(k6_relat_1(X0),k1_setfam_1(k1_enumset1(X0,X0,X1))) ),
    inference(resolution,[],[f37,f31])).

fof(f31,plain,(
    ! [X0,X1] : r1_tarski(k1_setfam_1(k1_enumset1(X0,X0,X1)),X0) ),
    inference(definition_unfolding,[],[f23,f29])).

fof(f23,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).

fof(f37,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k6_relat_1(X0) = k7_relat_1(k6_relat_1(X1),X0) ) ),
    inference(forward_demodulation,[],[f36,f33])).

fof(f33,plain,(
    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k7_relat_1(k6_relat_1(X0),X1) ),
    inference(resolution,[],[f26,f19])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ~ v1_relat_1(X1)
      | k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_relat_1)).

fof(f36,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k6_relat_1(X0) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) ) ),
    inference(subsumption_resolution,[],[f35,f19])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k6_relat_1(X0) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X1))
      | ~ v1_relat_1(k6_relat_1(X0)) ) ),
    inference(superposition,[],[f28,f22])).

fof(f22,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(k2_relat_1(X1),X0)
      | k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k2_relat_1(X1),X0)
       => k5_relat_1(X1,k6_relat_1(X0)) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_relat_1)).

fof(f34,plain,(
    k6_relat_1(k1_setfam_1(k1_enumset1(sK0,sK0,sK1))) != k7_relat_1(k6_relat_1(sK0),sK1) ),
    inference(backward_demodulation,[],[f30,f33])).

fof(f30,plain,(
    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k1_setfam_1(k1_enumset1(sK0,sK0,sK1))) ),
    inference(definition_unfolding,[],[f18,f29])).

fof(f18,plain,(
    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1)) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f11,f16])).

fof(f16,plain,
    ( ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1))
   => k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1)) ),
    introduced(choice_axiom,[])).

fof(f11,plain,(
    ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1)) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,negated_conjecture,(
    ~ ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    inference(negated_conjecture,[],[f9])).

fof(f9,conjecture,(
    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t43_funct_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n010.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 12:30:29 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.22/0.44  % (2803)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.22/0.44  % (2801)ott+11_20_afp=10000:afq=1.1:anc=none:bs=unit_only:bsr=on:bce=on:fsr=off:gs=on:gsem=on:nwc=2.5:sas=z3:sp=occurrence:updr=off:uhcvi=on_385 on theBenchmark
% 0.22/0.44  % (2803)Refutation found. Thanks to Tanya!
% 0.22/0.44  % SZS status Theorem for theBenchmark
% 0.22/0.44  % SZS output start Proof for theBenchmark
% 0.22/0.44  fof(f50,plain,(
% 0.22/0.44    $false),
% 0.22/0.44    inference(trivial_inequality_removal,[],[f42])).
% 0.22/0.44  fof(f42,plain,(
% 0.22/0.44    k7_relat_1(k6_relat_1(sK0),sK1) != k7_relat_1(k6_relat_1(sK0),sK1)),
% 0.22/0.44    inference(superposition,[],[f34,f41])).
% 0.22/0.44  fof(f41,plain,(
% 0.22/0.44    ( ! [X0,X1] : (k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(k1_setfam_1(k1_enumset1(X0,X0,X1)))) )),
% 0.22/0.44    inference(forward_demodulation,[],[f38,f40])).
% 0.22/0.44  fof(f40,plain,(
% 0.22/0.44    ( ! [X0,X1] : (k7_relat_1(k6_relat_1(X0),X1) = k7_relat_1(k6_relat_1(X0),k1_setfam_1(k1_enumset1(X0,X0,X1)))) )),
% 0.22/0.44    inference(forward_demodulation,[],[f39,f21])).
% 0.22/0.44  fof(f21,plain,(
% 0.22/0.44    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 0.22/0.44    inference(cnf_transformation,[],[f5])).
% 0.22/0.44  fof(f5,axiom,(
% 0.22/0.44    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 0.22/0.44    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_relat_1)).
% 0.22/0.44  fof(f39,plain,(
% 0.22/0.44    ( ! [X0,X1] : (k7_relat_1(k6_relat_1(X0),X1) = k7_relat_1(k6_relat_1(X0),k1_setfam_1(k1_enumset1(k1_relat_1(k6_relat_1(X0)),k1_relat_1(k6_relat_1(X0)),X1)))) )),
% 0.22/0.44    inference(resolution,[],[f32,f19])).
% 0.22/0.44  fof(f19,plain,(
% 0.22/0.44    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 0.22/0.44    inference(cnf_transformation,[],[f8])).
% 0.22/0.44  fof(f8,axiom,(
% 0.22/0.44    ! [X0] : (v1_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 0.22/0.44    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc3_funct_1)).
% 0.22/0.44  fof(f32,plain,(
% 0.22/0.44    ( ! [X0,X1] : (~v1_relat_1(X1) | k7_relat_1(X1,X0) = k7_relat_1(X1,k1_setfam_1(k1_enumset1(k1_relat_1(X1),k1_relat_1(X1),X0)))) )),
% 0.22/0.44    inference(definition_unfolding,[],[f27,f29])).
% 0.22/0.44  fof(f29,plain,(
% 0.22/0.44    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k1_enumset1(X0,X0,X1))) )),
% 0.22/0.44    inference(definition_unfolding,[],[f24,f25])).
% 0.22/0.44  fof(f25,plain,(
% 0.22/0.44    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 0.22/0.44    inference(cnf_transformation,[],[f2])).
% 0.22/0.44  fof(f2,axiom,(
% 0.22/0.44    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 0.22/0.44    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).
% 0.22/0.44  fof(f24,plain,(
% 0.22/0.44    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 0.22/0.44    inference(cnf_transformation,[],[f3])).
% 0.22/0.44  fof(f3,axiom,(
% 0.22/0.44    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 0.22/0.44    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).
% 0.22/0.44  fof(f27,plain,(
% 0.22/0.44    ( ! [X0,X1] : (k7_relat_1(X1,X0) = k7_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0)) | ~v1_relat_1(X1)) )),
% 0.22/0.44    inference(cnf_transformation,[],[f13])).
% 0.22/0.44  fof(f13,plain,(
% 0.22/0.44    ! [X0,X1] : (k7_relat_1(X1,X0) = k7_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 0.22/0.44    inference(ennf_transformation,[],[f4])).
% 0.22/0.44  fof(f4,axiom,(
% 0.22/0.44    ! [X0,X1] : (v1_relat_1(X1) => k7_relat_1(X1,X0) = k7_relat_1(X1,k3_xboole_0(k1_relat_1(X1),X0)))),
% 0.22/0.44    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t192_relat_1)).
% 0.22/0.44  fof(f38,plain,(
% 0.22/0.44    ( ! [X0,X1] : (k6_relat_1(k1_setfam_1(k1_enumset1(X0,X0,X1))) = k7_relat_1(k6_relat_1(X0),k1_setfam_1(k1_enumset1(X0,X0,X1)))) )),
% 0.22/0.44    inference(resolution,[],[f37,f31])).
% 0.22/0.44  fof(f31,plain,(
% 0.22/0.44    ( ! [X0,X1] : (r1_tarski(k1_setfam_1(k1_enumset1(X0,X0,X1)),X0)) )),
% 0.22/0.44    inference(definition_unfolding,[],[f23,f29])).
% 0.22/0.44  fof(f23,plain,(
% 0.22/0.44    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 0.22/0.44    inference(cnf_transformation,[],[f1])).
% 0.22/0.44  fof(f1,axiom,(
% 0.22/0.44    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 0.22/0.44    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).
% 0.22/0.44  fof(f37,plain,(
% 0.22/0.44    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k6_relat_1(X0) = k7_relat_1(k6_relat_1(X1),X0)) )),
% 0.22/0.44    inference(forward_demodulation,[],[f36,f33])).
% 0.22/0.44  fof(f33,plain,(
% 0.22/0.44    ( ! [X0,X1] : (k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k7_relat_1(k6_relat_1(X0),X1)) )),
% 0.22/0.44    inference(resolution,[],[f26,f19])).
% 0.22/0.44  fof(f26,plain,(
% 0.22/0.44    ( ! [X0,X1] : (~v1_relat_1(X1) | k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1)) )),
% 0.22/0.44    inference(cnf_transformation,[],[f12])).
% 0.22/0.44  fof(f12,plain,(
% 0.22/0.44    ! [X0,X1] : (k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) | ~v1_relat_1(X1))),
% 0.22/0.44    inference(ennf_transformation,[],[f7])).
% 0.22/0.44  fof(f7,axiom,(
% 0.22/0.44    ! [X0,X1] : (v1_relat_1(X1) => k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1))),
% 0.22/0.44    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_relat_1)).
% 0.22/0.44  fof(f36,plain,(
% 0.22/0.44    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k6_relat_1(X0) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X1))) )),
% 0.22/0.44    inference(subsumption_resolution,[],[f35,f19])).
% 0.22/0.44  fof(f35,plain,(
% 0.22/0.44    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k6_relat_1(X0) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) | ~v1_relat_1(k6_relat_1(X0))) )),
% 0.22/0.44    inference(superposition,[],[f28,f22])).
% 0.22/0.44  fof(f22,plain,(
% 0.22/0.44    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 0.22/0.44    inference(cnf_transformation,[],[f5])).
% 0.22/0.44  fof(f28,plain,(
% 0.22/0.44    ( ! [X0,X1] : (~r1_tarski(k2_relat_1(X1),X0) | k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~v1_relat_1(X1)) )),
% 0.22/0.44    inference(cnf_transformation,[],[f15])).
% 0.22/0.44  fof(f15,plain,(
% 0.22/0.44    ! [X0,X1] : (k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 0.22/0.44    inference(flattening,[],[f14])).
% 0.22/0.44  fof(f14,plain,(
% 0.22/0.44    ! [X0,X1] : ((k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 0.22/0.44    inference(ennf_transformation,[],[f6])).
% 0.22/0.44  fof(f6,axiom,(
% 0.22/0.44    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k2_relat_1(X1),X0) => k5_relat_1(X1,k6_relat_1(X0)) = X1))),
% 0.22/0.44    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t79_relat_1)).
% 0.22/0.44  fof(f34,plain,(
% 0.22/0.44    k6_relat_1(k1_setfam_1(k1_enumset1(sK0,sK0,sK1))) != k7_relat_1(k6_relat_1(sK0),sK1)),
% 0.22/0.44    inference(backward_demodulation,[],[f30,f33])).
% 0.22/0.44  fof(f30,plain,(
% 0.22/0.44    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k1_setfam_1(k1_enumset1(sK0,sK0,sK1)))),
% 0.22/0.44    inference(definition_unfolding,[],[f18,f29])).
% 0.22/0.44  fof(f18,plain,(
% 0.22/0.44    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1))),
% 0.22/0.44    inference(cnf_transformation,[],[f17])).
% 0.22/0.44  fof(f17,plain,(
% 0.22/0.44    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1))),
% 0.22/0.44    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f11,f16])).
% 0.22/0.44  fof(f16,plain,(
% 0.22/0.44    ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1)) => k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1))),
% 0.22/0.44    introduced(choice_axiom,[])).
% 0.22/0.44  fof(f11,plain,(
% 0.22/0.44    ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1))),
% 0.22/0.44    inference(ennf_transformation,[],[f10])).
% 0.22/0.44  fof(f10,negated_conjecture,(
% 0.22/0.44    ~! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))),
% 0.22/0.44    inference(negated_conjecture,[],[f9])).
% 0.22/0.44  fof(f9,conjecture,(
% 0.22/0.44    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))),
% 0.22/0.44    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t43_funct_1)).
% 0.22/0.44  % SZS output end Proof for theBenchmark
% 0.22/0.44  % (2803)------------------------------
% 0.22/0.44  % (2803)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.44  % (2803)Termination reason: Refutation
% 0.22/0.44  
% 0.22/0.44  % (2803)Memory used [KB]: 1663
% 0.22/0.44  % (2803)Time elapsed: 0.005 s
% 0.22/0.44  % (2803)------------------------------
% 0.22/0.44  % (2803)------------------------------
% 0.22/0.44  % (2790)Success in time 0.078 s
%------------------------------------------------------------------------------
