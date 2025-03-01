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
% DateTime   : Thu Dec  3 12:33:03 EST 2020

% Result     : Theorem 2.52s
% Output     : Refutation 2.52s
% Verified   : 
% Statistics : Number of formulae       :   29 (  39 expanded)
%              Number of leaves         :    8 (  13 expanded)
%              Depth                    :    7
%              Number of atoms          :   30 (  40 expanded)
%              Number of equality atoms :   29 (  39 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4589,plain,(
    $false ),
    inference(subsumption_resolution,[],[f1387,f4566])).

fof(f4566,plain,(
    ! [X10,X8,X11,X9] : k2_enumset1(X10,X11,X8,X9) = k2_enumset1(X9,X8,X10,X11) ),
    inference(superposition,[],[f449,f454])).

fof(f454,plain,(
    ! [X6,X8,X7,X9] : k2_enumset1(X6,X7,X8,X9) = k2_xboole_0(k2_tarski(X8,X9),k2_tarski(X6,X7)) ),
    inference(superposition,[],[f26,f17])).

fof(f17,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(f26,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X0,X1),k2_tarski(X2,X3)) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X0,X1),k2_tarski(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l53_enumset1)).

fof(f449,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X1,X0),k2_tarski(X2,X3)) ),
    inference(superposition,[],[f26,f37])).

fof(f37,plain,(
    ! [X2,X3] : k2_tarski(X2,X3) = k2_tarski(X3,X2) ),
    inference(superposition,[],[f29,f19])).

fof(f19,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t41_enumset1)).

fof(f29,plain,(
    ! [X2,X3] : k2_tarski(X2,X3) = k2_xboole_0(k1_tarski(X3),k1_tarski(X2)) ),
    inference(superposition,[],[f19,f17])).

fof(f1387,plain,(
    k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK3,sK2,sK0,sK1) ),
    inference(superposition,[],[f27,f379])).

fof(f379,plain,(
    ! [X14,X12,X15,X13] : k2_enumset1(X15,X12,X13,X14) = k2_xboole_0(k1_tarski(X15),k1_enumset1(X13,X14,X12)) ),
    inference(superposition,[],[f25,f90])).

fof(f90,plain,(
    ! [X4,X5,X3] : k1_enumset1(X5,X3,X4) = k1_enumset1(X3,X4,X5) ),
    inference(superposition,[],[f63,f23])).

fof(f23,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_enumset1)).

fof(f63,plain,(
    ! [X8,X7,X9] : k2_xboole_0(k2_tarski(X8,X9),k1_tarski(X7)) = k1_enumset1(X7,X8,X9) ),
    inference(superposition,[],[f22,f17])).

fof(f22,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_enumset1)).

fof(f25,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_enumset1)).

fof(f27,plain,(
    k2_enumset1(sK0,sK1,sK2,sK3) != k2_xboole_0(k1_tarski(sK3),k1_enumset1(sK0,sK1,sK2)) ),
    inference(superposition,[],[f16,f17])).

fof(f16,plain,(
    k2_enumset1(sK0,sK1,sK2,sK3) != k2_xboole_0(k1_enumset1(sK0,sK1,sK2),k1_tarski(sK3)) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    k2_enumset1(sK0,sK1,sK2,sK3) != k2_xboole_0(k1_enumset1(sK0,sK1,sK2),k1_tarski(sK3)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f13,f14])).

fof(f14,plain,
    ( ? [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) != k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3))
   => k2_enumset1(sK0,sK1,sK2,sK3) != k2_xboole_0(k1_enumset1(sK0,sK1,sK2),k1_tarski(sK3)) ),
    introduced(choice_axiom,[])).

fof(f13,plain,(
    ? [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) != k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_enumset1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_vampire %s %d
% 0.15/0.35  % Computer   : n009.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 15:40:56 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.21/0.48  % (5678)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.21/0.48  % (5675)lrs+11_5_av=off:cond=on:fsr=off:lma=on:lwlo=on:nwc=1.2:sas=z3:stl=30:sp=reverse_arity:updr=off_123 on theBenchmark
% 0.21/0.48  % (5682)lrs+1_128_add=off:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bs=unit_only:gs=on:gsem=off:lwlo=on:nm=2:nwc=1:sas=z3:stl=90:sac=on:sp=occurrence:urr=on:updr=off:uhcvi=on_520 on theBenchmark
% 0.21/0.49  % (5676)dis+11_50_add=large:afp=1000:afq=1.0:amm=sco:anc=none:fsr=off:nm=16:nwc=1.5:sac=on_13 on theBenchmark
% 0.21/0.49  % (5689)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_355 on theBenchmark
% 0.21/0.49  % (5680)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.21/0.50  % (5674)lrs+11_24_add=large:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:bd=off:cond=fast:fde=unused:gs=on:irw=on:lma=on:nm=4:nwc=1.3:nicw=on:sas=z3:stl=30:sac=on:sp=reverse_arity:uhcvi=on_136 on theBenchmark
% 0.21/0.50  % (5684)ott+11_20_afp=10000:afq=1.1:anc=none:bs=unit_only:bsr=on:bce=on:fsr=off:gs=on:gsem=on:nwc=2.5:sas=z3:sp=occurrence:updr=off:uhcvi=on_385 on theBenchmark
% 0.21/0.50  % (5681)ott+11_20_afr=on:afp=100000:afq=1.0:amm=sco:anc=all:bsr=on:irw=on:lma=on:nm=4:nwc=1.2:sac=on:sp=occurrence_294 on theBenchmark
% 0.21/0.50  % (5677)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_75 on theBenchmark
% 0.21/0.50  % (5686)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.21/0.51  % (5679)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.21/0.52  % (5683)lrs+10_24_add=off:afr=on:afp=1000:afq=1.4:anc=none:bs=unit_only:gs=on:gsaa=from_current:gsem=on:lma=on:nm=2:nwc=1.1:stl=60:sac=on:uhcvi=on_461 on theBenchmark
% 0.21/0.53  % (5690)ott-1_50_afr=on:afp=1000:afq=1.2:amm=sco:anc=none:bsr=on:cond=fast:fsr=off:fde=none:irw=on:nm=16:nwc=1.5:updr=off:uhcvi=on_1883 on theBenchmark
% 0.21/0.54  % (5687)ott+1_28_av=off:bs=unit_only:cond=on:irw=on:nm=64:nwc=2:sp=occurrence:updr=off:uhcvi=on_1052 on theBenchmark
% 0.21/0.54  % (5685)dis+10_128_acc=on:add=off:afp=4000:afq=1.4:amm=off:bd=preordered:bce=on:cond=on:fsr=off:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=64:nwc=1.2:nicw=on:sos=on:sp=occurrence:updr=off:uhcvi=on_122 on theBenchmark
% 0.21/0.54  % (5685)Refutation not found, incomplete strategy% (5685)------------------------------
% 0.21/0.54  % (5685)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.54  % (5685)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.54  
% 0.21/0.54  % (5685)Memory used [KB]: 10618
% 0.21/0.54  % (5685)Time elapsed: 0.120 s
% 0.21/0.54  % (5685)------------------------------
% 0.21/0.54  % (5685)------------------------------
% 1.37/0.55  % (5688)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 1.64/0.56  % (5691)lrs+11_64_acc=model:afp=100000:afq=1.2:anc=all_dependent:bd=off:bs=unit_only:cond=fast:fsr=off:gs=on:gsaa=full_model:gsem=off:irw=on:lma=on:nwc=1:stl=150:sac=on:sp=reverse_arity:urr=on:updr=off_893 on theBenchmark
% 2.52/0.71  % (5690)Refutation found. Thanks to Tanya!
% 2.52/0.71  % SZS status Theorem for theBenchmark
% 2.52/0.71  % SZS output start Proof for theBenchmark
% 2.52/0.71  fof(f4589,plain,(
% 2.52/0.71    $false),
% 2.52/0.71    inference(subsumption_resolution,[],[f1387,f4566])).
% 2.52/0.71  fof(f4566,plain,(
% 2.52/0.71    ( ! [X10,X8,X11,X9] : (k2_enumset1(X10,X11,X8,X9) = k2_enumset1(X9,X8,X10,X11)) )),
% 2.52/0.71    inference(superposition,[],[f449,f454])).
% 2.52/0.71  fof(f454,plain,(
% 2.52/0.71    ( ! [X6,X8,X7,X9] : (k2_enumset1(X6,X7,X8,X9) = k2_xboole_0(k2_tarski(X8,X9),k2_tarski(X6,X7))) )),
% 2.52/0.71    inference(superposition,[],[f26,f17])).
% 2.52/0.71  fof(f17,plain,(
% 2.52/0.71    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 2.52/0.71    inference(cnf_transformation,[],[f1])).
% 2.52/0.71  fof(f1,axiom,(
% 2.52/0.71    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 2.52/0.71    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).
% 2.52/0.71  fof(f26,plain,(
% 2.52/0.71    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X0,X1),k2_tarski(X2,X3))) )),
% 2.52/0.71    inference(cnf_transformation,[],[f6])).
% 2.52/0.71  fof(f6,axiom,(
% 2.52/0.71    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X0,X1),k2_tarski(X2,X3))),
% 2.52/0.71    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l53_enumset1)).
% 2.52/0.71  fof(f449,plain,(
% 2.52/0.71    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X1,X0),k2_tarski(X2,X3))) )),
% 2.52/0.71    inference(superposition,[],[f26,f37])).
% 2.52/0.71  fof(f37,plain,(
% 2.52/0.71    ( ! [X2,X3] : (k2_tarski(X2,X3) = k2_tarski(X3,X2)) )),
% 2.52/0.71    inference(superposition,[],[f29,f19])).
% 2.52/0.71  fof(f19,plain,(
% 2.52/0.71    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1))) )),
% 2.52/0.71    inference(cnf_transformation,[],[f7])).
% 2.52/0.71  fof(f7,axiom,(
% 2.52/0.71    ! [X0,X1] : k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1))),
% 2.52/0.71    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t41_enumset1)).
% 2.52/0.71  fof(f29,plain,(
% 2.52/0.71    ( ! [X2,X3] : (k2_tarski(X2,X3) = k2_xboole_0(k1_tarski(X3),k1_tarski(X2))) )),
% 2.52/0.71    inference(superposition,[],[f19,f17])).
% 2.52/0.71  fof(f1387,plain,(
% 2.52/0.71    k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK3,sK2,sK0,sK1)),
% 2.52/0.71    inference(superposition,[],[f27,f379])).
% 2.52/0.71  fof(f379,plain,(
% 2.52/0.71    ( ! [X14,X12,X15,X13] : (k2_enumset1(X15,X12,X13,X14) = k2_xboole_0(k1_tarski(X15),k1_enumset1(X13,X14,X12))) )),
% 2.52/0.71    inference(superposition,[],[f25,f90])).
% 2.52/0.71  fof(f90,plain,(
% 2.52/0.71    ( ! [X4,X5,X3] : (k1_enumset1(X5,X3,X4) = k1_enumset1(X3,X4,X5)) )),
% 2.52/0.71    inference(superposition,[],[f63,f23])).
% 2.52/0.71  fof(f23,plain,(
% 2.52/0.71    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2))) )),
% 2.52/0.71    inference(cnf_transformation,[],[f9])).
% 2.52/0.71  fof(f9,axiom,(
% 2.52/0.71    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2))),
% 2.52/0.71    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_enumset1)).
% 2.52/0.71  fof(f63,plain,(
% 2.52/0.71    ( ! [X8,X7,X9] : (k2_xboole_0(k2_tarski(X8,X9),k1_tarski(X7)) = k1_enumset1(X7,X8,X9)) )),
% 2.52/0.71    inference(superposition,[],[f22,f17])).
% 2.52/0.71  fof(f22,plain,(
% 2.52/0.71    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2))) )),
% 2.52/0.71    inference(cnf_transformation,[],[f8])).
% 2.52/0.71  fof(f8,axiom,(
% 2.52/0.71    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2))),
% 2.52/0.71    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_enumset1)).
% 2.52/0.71  fof(f25,plain,(
% 2.52/0.71    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3))) )),
% 2.52/0.71    inference(cnf_transformation,[],[f10])).
% 2.52/0.71  fof(f10,axiom,(
% 2.52/0.71    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3))),
% 2.52/0.71    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_enumset1)).
% 2.52/0.71  fof(f27,plain,(
% 2.52/0.71    k2_enumset1(sK0,sK1,sK2,sK3) != k2_xboole_0(k1_tarski(sK3),k1_enumset1(sK0,sK1,sK2))),
% 2.52/0.71    inference(superposition,[],[f16,f17])).
% 2.52/0.71  fof(f16,plain,(
% 2.52/0.71    k2_enumset1(sK0,sK1,sK2,sK3) != k2_xboole_0(k1_enumset1(sK0,sK1,sK2),k1_tarski(sK3))),
% 2.52/0.71    inference(cnf_transformation,[],[f15])).
% 2.52/0.71  fof(f15,plain,(
% 2.52/0.71    k2_enumset1(sK0,sK1,sK2,sK3) != k2_xboole_0(k1_enumset1(sK0,sK1,sK2),k1_tarski(sK3))),
% 2.52/0.71    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f13,f14])).
% 2.52/0.71  fof(f14,plain,(
% 2.52/0.71    ? [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) != k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) => k2_enumset1(sK0,sK1,sK2,sK3) != k2_xboole_0(k1_enumset1(sK0,sK1,sK2),k1_tarski(sK3))),
% 2.52/0.71    introduced(choice_axiom,[])).
% 2.52/0.71  fof(f13,plain,(
% 2.52/0.71    ? [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) != k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3))),
% 2.52/0.71    inference(ennf_transformation,[],[f12])).
% 2.52/0.71  fof(f12,negated_conjecture,(
% 2.52/0.71    ~! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3))),
% 2.52/0.71    inference(negated_conjecture,[],[f11])).
% 2.52/0.71  fof(f11,conjecture,(
% 2.52/0.71    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3))),
% 2.52/0.71    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_enumset1)).
% 2.52/0.71  % SZS output end Proof for theBenchmark
% 2.52/0.71  % (5690)------------------------------
% 2.52/0.71  % (5690)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 2.52/0.71  % (5690)Termination reason: Refutation
% 2.52/0.71  
% 2.52/0.71  % (5690)Memory used [KB]: 7419
% 2.52/0.71  % (5690)Time elapsed: 0.268 s
% 2.52/0.71  % (5690)------------------------------
% 2.52/0.71  % (5690)------------------------------
% 2.52/0.71  % (5673)Success in time 0.346 s
%------------------------------------------------------------------------------
