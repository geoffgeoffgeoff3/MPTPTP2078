%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:48:17 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   31 (  39 expanded)
%              Number of leaves         :    7 (  11 expanded)
%              Depth                    :   11
%              Number of atoms          :   61 (  77 expanded)
%              Number of equality atoms :   22 (  30 expanded)
%              Maximal formula depth    :    6 (   4 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f39,plain,(
    $false ),
    inference(global_subsumption,[],[f16,f37])).

fof(f37,plain,(
    sK0 = k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0))) ),
    inference(resolution,[],[f34,f15])).

fof(f15,plain,(
    v1_relat_1(sK0) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,
    ( sK0 != k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0)))
    & v1_relat_1(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f8,f13])).

fof(f13,plain,
    ( ? [X0] :
        ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) != X0
        & v1_relat_1(X0) )
   => ( sK0 != k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0)))
      & v1_relat_1(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f8,plain,(
    ? [X0] :
      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) != X0
      & v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f7,negated_conjecture,(
    ~ ! [X0] :
        ( v1_relat_1(X0)
       => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ) ),
    inference(negated_conjecture,[],[f6])).

fof(f6,conjecture,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t80_relat_1)).

fof(f34,plain,(
    ! [X2] :
      ( ~ v1_relat_1(X2)
      | k5_relat_1(X2,k6_relat_1(k2_relat_1(X2))) = X2 ) ),
    inference(resolution,[],[f22,f32])).

fof(f32,plain,(
    ! [X0] : r1_tarski(X0,X0) ),
    inference(global_subsumption,[],[f17,f31])).

fof(f31,plain,(
    ! [X0] :
      ( r1_tarski(X0,X0)
      | ~ v1_relat_1(k6_relat_1(X0)) ) ),
    inference(forward_demodulation,[],[f29,f19])).

fof(f19,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_relat_1)).

fof(f29,plain,(
    ! [X0] :
      ( r1_tarski(k2_relat_1(k6_relat_1(X0)),k2_relat_1(k6_relat_1(X0)))
      | ~ v1_relat_1(k6_relat_1(X0)) ) ),
    inference(duplicate_literal_removal,[],[f27])).

fof(f27,plain,(
    ! [X0] :
      ( r1_tarski(k2_relat_1(k6_relat_1(X0)),k2_relat_1(k6_relat_1(X0)))
      | ~ v1_relat_1(k6_relat_1(X0))
      | ~ v1_relat_1(k6_relat_1(X0)) ) ),
    inference(superposition,[],[f21,f25])).

fof(f25,plain,(
    ! [X0] : k6_relat_1(X0) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X0)) ),
    inference(forward_demodulation,[],[f24,f18])).

fof(f18,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f3])).

fof(f24,plain,(
    ! [X0] : k6_relat_1(X0) = k5_relat_1(k6_relat_1(k1_relat_1(k6_relat_1(X0))),k6_relat_1(X0)) ),
    inference(resolution,[],[f20,f17])).

fof(f20,plain,(
    ! [X0] :
      ( ~ v1_relat_1(X0)
      | k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,plain,(
    ! [X0] :
      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t78_relat_1)).

fof(f21,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t45_relat_1)).

fof(f17,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_relat_1)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(k2_relat_1(X1),X0)
      | k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f11])).

fof(f11,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k2_relat_1(X1),X0)
       => k5_relat_1(X1,k6_relat_1(X0)) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_relat_1)).

fof(f16,plain,(
    sK0 != k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0))) ),
    inference(cnf_transformation,[],[f14])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n009.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 20:46:26 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.21/0.42  % (18319)lrs-11_24_av=off:bd=off:bs=on:fsr=off:gs=on:gsem=off:lma=on:nm=4:nwc=1.7:stl=90:sp=occurrence:updr=off_61 on theBenchmark
% 0.21/0.42  % (18319)Refutation found. Thanks to Tanya!
% 0.21/0.42  % SZS status Theorem for theBenchmark
% 0.21/0.42  % SZS output start Proof for theBenchmark
% 0.21/0.42  fof(f39,plain,(
% 0.21/0.42    $false),
% 0.21/0.42    inference(global_subsumption,[],[f16,f37])).
% 0.21/0.42  fof(f37,plain,(
% 0.21/0.42    sK0 = k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0)))),
% 0.21/0.42    inference(resolution,[],[f34,f15])).
% 0.21/0.42  fof(f15,plain,(
% 0.21/0.42    v1_relat_1(sK0)),
% 0.21/0.42    inference(cnf_transformation,[],[f14])).
% 0.21/0.42  fof(f14,plain,(
% 0.21/0.42    sK0 != k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0))) & v1_relat_1(sK0)),
% 0.21/0.42    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f8,f13])).
% 0.21/0.42  fof(f13,plain,(
% 0.21/0.42    ? [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) != X0 & v1_relat_1(X0)) => (sK0 != k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0))) & v1_relat_1(sK0))),
% 0.21/0.42    introduced(choice_axiom,[])).
% 0.21/0.42  fof(f8,plain,(
% 0.21/0.42    ? [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) != X0 & v1_relat_1(X0))),
% 0.21/0.42    inference(ennf_transformation,[],[f7])).
% 0.21/0.42  fof(f7,negated_conjecture,(
% 0.21/0.42    ~! [X0] : (v1_relat_1(X0) => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0)),
% 0.21/0.42    inference(negated_conjecture,[],[f6])).
% 0.21/0.42  fof(f6,conjecture,(
% 0.21/0.42    ! [X0] : (v1_relat_1(X0) => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0)),
% 0.21/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t80_relat_1)).
% 0.21/0.42  fof(f34,plain,(
% 0.21/0.42    ( ! [X2] : (~v1_relat_1(X2) | k5_relat_1(X2,k6_relat_1(k2_relat_1(X2))) = X2) )),
% 0.21/0.42    inference(resolution,[],[f22,f32])).
% 0.21/0.42  fof(f32,plain,(
% 0.21/0.42    ( ! [X0] : (r1_tarski(X0,X0)) )),
% 0.21/0.42    inference(global_subsumption,[],[f17,f31])).
% 0.21/0.42  fof(f31,plain,(
% 0.21/0.42    ( ! [X0] : (r1_tarski(X0,X0) | ~v1_relat_1(k6_relat_1(X0))) )),
% 0.21/0.42    inference(forward_demodulation,[],[f29,f19])).
% 0.21/0.42  fof(f19,plain,(
% 0.21/0.42    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 0.21/0.42    inference(cnf_transformation,[],[f3])).
% 0.21/0.42  fof(f3,axiom,(
% 0.21/0.42    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 0.21/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_relat_1)).
% 0.21/0.42  fof(f29,plain,(
% 0.21/0.42    ( ! [X0] : (r1_tarski(k2_relat_1(k6_relat_1(X0)),k2_relat_1(k6_relat_1(X0))) | ~v1_relat_1(k6_relat_1(X0))) )),
% 0.21/0.42    inference(duplicate_literal_removal,[],[f27])).
% 0.21/0.42  fof(f27,plain,(
% 0.21/0.42    ( ! [X0] : (r1_tarski(k2_relat_1(k6_relat_1(X0)),k2_relat_1(k6_relat_1(X0))) | ~v1_relat_1(k6_relat_1(X0)) | ~v1_relat_1(k6_relat_1(X0))) )),
% 0.21/0.42    inference(superposition,[],[f21,f25])).
% 0.21/0.42  fof(f25,plain,(
% 0.21/0.42    ( ! [X0] : (k6_relat_1(X0) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X0))) )),
% 0.21/0.42    inference(forward_demodulation,[],[f24,f18])).
% 0.21/0.42  fof(f18,plain,(
% 0.21/0.42    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 0.21/0.42    inference(cnf_transformation,[],[f3])).
% 0.21/0.42  fof(f24,plain,(
% 0.21/0.42    ( ! [X0] : (k6_relat_1(X0) = k5_relat_1(k6_relat_1(k1_relat_1(k6_relat_1(X0))),k6_relat_1(X0))) )),
% 0.21/0.42    inference(resolution,[],[f20,f17])).
% 0.21/0.42  fof(f20,plain,(
% 0.21/0.42    ( ! [X0] : (~v1_relat_1(X0) | k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0) )),
% 0.21/0.42    inference(cnf_transformation,[],[f9])).
% 0.21/0.42  fof(f9,plain,(
% 0.21/0.42    ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0))),
% 0.21/0.42    inference(ennf_transformation,[],[f4])).
% 0.21/0.42  fof(f4,axiom,(
% 0.21/0.42    ! [X0] : (v1_relat_1(X0) => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0)),
% 0.21/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t78_relat_1)).
% 0.21/0.42  fof(f21,plain,(
% 0.21/0.42    ( ! [X0,X1] : (r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 0.21/0.42    inference(cnf_transformation,[],[f10])).
% 0.21/0.42  fof(f10,plain,(
% 0.21/0.42    ! [X0] : (! [X1] : (r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 0.21/0.42    inference(ennf_transformation,[],[f2])).
% 0.21/0.42  fof(f2,axiom,(
% 0.21/0.42    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => r1_tarski(k2_relat_1(k5_relat_1(X0,X1)),k2_relat_1(X1))))),
% 0.21/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t45_relat_1)).
% 0.21/0.42  fof(f17,plain,(
% 0.21/0.42    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 0.21/0.42    inference(cnf_transformation,[],[f1])).
% 0.21/0.42  fof(f1,axiom,(
% 0.21/0.42    ! [X0] : v1_relat_1(k6_relat_1(X0))),
% 0.21/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k6_relat_1)).
% 0.21/0.42  fof(f22,plain,(
% 0.21/0.42    ( ! [X0,X1] : (~r1_tarski(k2_relat_1(X1),X0) | k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~v1_relat_1(X1)) )),
% 0.21/0.42    inference(cnf_transformation,[],[f12])).
% 0.21/0.42  fof(f12,plain,(
% 0.21/0.42    ! [X0,X1] : (k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 0.21/0.42    inference(flattening,[],[f11])).
% 0.21/0.42  fof(f11,plain,(
% 0.21/0.42    ! [X0,X1] : ((k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 0.21/0.42    inference(ennf_transformation,[],[f5])).
% 0.21/0.42  fof(f5,axiom,(
% 0.21/0.42    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k2_relat_1(X1),X0) => k5_relat_1(X1,k6_relat_1(X0)) = X1))),
% 0.21/0.42    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_relat_1)).
% 0.21/0.42  fof(f16,plain,(
% 0.21/0.42    sK0 != k5_relat_1(sK0,k6_relat_1(k2_relat_1(sK0)))),
% 0.21/0.42    inference(cnf_transformation,[],[f14])).
% 0.21/0.42  % SZS output end Proof for theBenchmark
% 0.21/0.42  % (18319)------------------------------
% 0.21/0.42  % (18319)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.42  % (18319)Termination reason: Refutation
% 0.21/0.42  
% 0.21/0.42  % (18319)Memory used [KB]: 6140
% 0.21/0.42  % (18319)Time elapsed: 0.005 s
% 0.21/0.42  % (18319)------------------------------
% 0.21/0.42  % (18319)------------------------------
% 0.21/0.43  % (18314)Success in time 0.061 s
%------------------------------------------------------------------------------
