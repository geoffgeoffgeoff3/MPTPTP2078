%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:30:27 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   61 ( 152 expanded)
%              Number of leaves         :   12 (  47 expanded)
%              Depth                    :   19
%              Number of atoms          :   87 ( 230 expanded)
%              Number of equality atoms :   47 ( 117 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f501,plain,(
    $false ),
    inference(trivial_inequality_removal,[],[f489])).

fof(f489,plain,(
    k1_xboole_0 != k1_xboole_0 ),
    inference(superposition,[],[f67,f398])).

fof(f398,plain,(
    k1_xboole_0 = k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) ),
    inference(forward_demodulation,[],[f390,f141])).

fof(f141,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(X0,X0) ),
    inference(forward_demodulation,[],[f117,f49])).

fof(f49,plain,(
    ! [X2] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X2) ),
    inference(superposition,[],[f46,f22])).

fof(f22,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).

fof(f46,plain,(
    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),X0) = X0 ),
    inference(resolution,[],[f29,f24])).

fof(f24,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k2_xboole_0(X0,X1) = X1 ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(f117,plain,(
    ! [X0] : k4_xboole_0(X0,X0) = k4_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,X0)) ),
    inference(superposition,[],[f33,f23])).

fof(f23,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(f33,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f25,f27,f27])).

fof(f27,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f25,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f390,plain,(
    k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k4_xboole_0(sK2,sK2) ),
    inference(superposition,[],[f33,f385])).

fof(f385,plain,(
    sK2 = k4_xboole_0(sK2,sK0) ),
    inference(forward_demodulation,[],[f384,f50])).

fof(f50,plain,(
    ! [X4,X3] : k2_xboole_0(X3,k4_xboole_0(X3,X4)) = X3 ),
    inference(superposition,[],[f46,f26])).

fof(f26,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(f384,plain,(
    k4_xboole_0(sK2,sK0) = k2_xboole_0(sK2,k4_xboole_0(sK2,sK0)) ),
    inference(resolution,[],[f366,f29])).

fof(f366,plain,(
    r1_tarski(sK2,k4_xboole_0(sK2,sK0)) ),
    inference(superposition,[],[f221,f354])).

fof(f354,plain,(
    sK2 = k4_xboole_0(sK2,sK1) ),
    inference(superposition,[],[f342,f22])).

fof(f342,plain,(
    sK2 = k2_xboole_0(k4_xboole_0(sK2,sK1),k1_xboole_0) ),
    inference(forward_demodulation,[],[f308,f141])).

fof(f308,plain,(
    sK2 = k2_xboole_0(k4_xboole_0(sK2,sK1),k4_xboole_0(sK1,sK1)) ),
    inference(superposition,[],[f152,f89])).

fof(f89,plain,(
    sK1 = k4_xboole_0(sK1,sK2) ),
    inference(forward_demodulation,[],[f88,f46])).

fof(f88,plain,(
    k4_xboole_0(sK1,sK2) = k2_xboole_0(k4_xboole_0(sK1,sK2),sK1) ),
    inference(forward_demodulation,[],[f84,f22])).

fof(f84,plain,(
    k2_xboole_0(k4_xboole_0(sK1,sK2),sK1) = k2_xboole_0(k4_xboole_0(sK1,sK2),k1_xboole_0) ),
    inference(superposition,[],[f28,f68])).

fof(f68,plain,(
    k1_xboole_0 = k4_xboole_0(sK1,k4_xboole_0(sK1,sK2)) ),
    inference(resolution,[],[f35,f20])).

fof(f20,plain,(
    r1_xboole_0(sK1,sK2) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,
    ( ~ r1_xboole_0(sK0,sK2)
    & r1_xboole_0(sK1,sK2)
    & r1_tarski(sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f14,f16])).

fof(f16,plain,
    ( ? [X0,X1,X2] :
        ( ~ r1_xboole_0(X0,X2)
        & r1_xboole_0(X1,X2)
        & r1_tarski(X0,X1) )
   => ( ~ r1_xboole_0(sK0,sK2)
      & r1_xboole_0(sK1,sK2)
      & r1_tarski(sK0,sK1) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_xboole_0(X0,X2)
      & r1_xboole_0(X1,X2)
      & r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f13])).

fof(f13,plain,(
    ? [X0,X1,X2] :
      ( ~ r1_xboole_0(X0,X2)
      & r1_xboole_0(X1,X2)
      & r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( r1_xboole_0(X1,X2)
          & r1_tarski(X0,X1) )
       => r1_xboole_0(X0,X2) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0,X1,X2] :
      ( ( r1_xboole_0(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_xboole_0(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t63_xboole_1)).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | k1_xboole_0 = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ) ),
    inference(definition_unfolding,[],[f30,f27])).

fof(f30,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k3_xboole_0(X0,X1) != k1_xboole_0 )
      & ( k3_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k3_xboole_0(X0,X1) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_xboole_0)).

fof(f28,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_xboole_1)).

fof(f152,plain,(
    ! [X2,X3] : k2_xboole_0(k4_xboole_0(X2,X3),k4_xboole_0(X3,k4_xboole_0(X3,X2))) = X2 ),
    inference(forward_demodulation,[],[f151,f50])).

fof(f151,plain,(
    ! [X2,X3] : k2_xboole_0(k4_xboole_0(X2,X3),k4_xboole_0(X3,k4_xboole_0(X3,X2))) = k2_xboole_0(X2,k4_xboole_0(X2,X3)) ),
    inference(forward_demodulation,[],[f128,f26])).

fof(f128,plain,(
    ! [X2,X3] : k2_xboole_0(k4_xboole_0(X2,X3),X2) = k2_xboole_0(k4_xboole_0(X2,X3),k4_xboole_0(X3,k4_xboole_0(X3,X2))) ),
    inference(superposition,[],[f28,f33])).

fof(f221,plain,(
    ! [X21] : r1_tarski(k4_xboole_0(X21,sK1),k4_xboole_0(X21,sK0)) ),
    inference(superposition,[],[f78,f45])).

fof(f45,plain,(
    sK1 = k2_xboole_0(sK0,sK1) ),
    inference(resolution,[],[f29,f19])).

fof(f19,plain,(
    r1_tarski(sK0,sK1) ),
    inference(cnf_transformation,[],[f17])).

fof(f78,plain,(
    ! [X12,X13,X11] : r1_tarski(k4_xboole_0(X11,k2_xboole_0(X12,X13)),k4_xboole_0(X11,X12)) ),
    inference(superposition,[],[f24,f32])).

fof(f32,plain,(
    ! [X2,X0,X1] : k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2] : k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t41_xboole_1)).

fof(f67,plain,(
    k1_xboole_0 != k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) ),
    inference(resolution,[],[f34,f21])).

fof(f21,plain,(
    ~ r1_xboole_0(sK0,sK2) ),
    inference(cnf_transformation,[],[f17])).

fof(f34,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
      | k1_xboole_0 != k4_xboole_0(X0,k4_xboole_0(X0,X1)) ) ),
    inference(definition_unfolding,[],[f31,f27])).

fof(f31,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
      | k3_xboole_0(X0,X1) != k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f18])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.14  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n016.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 15:26:19 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.20/0.47  % (10858)lrs+11_5_av=off:cond=on:fsr=off:lma=on:lwlo=on:nwc=1.2:sas=z3:stl=30:sp=reverse_arity:updr=off_123 on theBenchmark
% 0.20/0.47  % (10865)lrs+1_128_add=off:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bs=unit_only:gs=on:gsem=off:lwlo=on:nm=2:nwc=1:sas=z3:stl=90:sac=on:sp=occurrence:urr=on:updr=off:uhcvi=on_520 on theBenchmark
% 0.20/0.47  % (10859)dis+11_50_add=large:afp=1000:afq=1.0:amm=sco:anc=none:fsr=off:nm=16:nwc=1.5:sac=on_13 on theBenchmark
% 0.20/0.47  % (10866)lrs+10_24_add=off:afr=on:afp=1000:afq=1.4:anc=none:bs=unit_only:gs=on:gsaa=from_current:gsem=on:lma=on:nm=2:nwc=1.1:stl=60:sac=on:uhcvi=on_461 on theBenchmark
% 0.20/0.47  % (10872)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_355 on theBenchmark
% 0.20/0.48  % (10864)ott+11_20_afr=on:afp=100000:afq=1.0:amm=sco:anc=all:bsr=on:irw=on:lma=on:nm=4:nwc=1.2:sac=on:sp=occurrence_294 on theBenchmark
% 0.20/0.48  % (10857)lrs+11_24_add=large:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:bd=off:cond=fast:fde=unused:gs=on:irw=on:lma=on:nm=4:nwc=1.3:nicw=on:sas=z3:stl=30:sac=on:sp=reverse_arity:uhcvi=on_136 on theBenchmark
% 0.20/0.48  % (10861)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.20/0.48  % (10871)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.20/0.49  % (10863)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.20/0.49  % (10862)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.20/0.49  % (10858)Refutation found. Thanks to Tanya!
% 0.20/0.49  % SZS status Theorem for theBenchmark
% 0.20/0.49  % SZS output start Proof for theBenchmark
% 0.20/0.49  fof(f501,plain,(
% 0.20/0.49    $false),
% 0.20/0.49    inference(trivial_inequality_removal,[],[f489])).
% 0.20/0.49  fof(f489,plain,(
% 0.20/0.49    k1_xboole_0 != k1_xboole_0),
% 0.20/0.49    inference(superposition,[],[f67,f398])).
% 0.20/0.49  fof(f398,plain,(
% 0.20/0.49    k1_xboole_0 = k4_xboole_0(sK0,k4_xboole_0(sK0,sK2))),
% 0.20/0.49    inference(forward_demodulation,[],[f390,f141])).
% 0.20/0.49  fof(f141,plain,(
% 0.20/0.49    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(X0,X0)) )),
% 0.20/0.49    inference(forward_demodulation,[],[f117,f49])).
% 0.20/0.49  fof(f49,plain,(
% 0.20/0.49    ( ! [X2] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X2)) )),
% 0.20/0.49    inference(superposition,[],[f46,f22])).
% 0.20/0.49  fof(f22,plain,(
% 0.20/0.49    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.20/0.49    inference(cnf_transformation,[],[f5])).
% 0.20/0.49  fof(f5,axiom,(
% 0.20/0.49    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).
% 0.20/0.49  fof(f46,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k2_xboole_0(k4_xboole_0(X0,X1),X0) = X0) )),
% 0.20/0.49    inference(resolution,[],[f29,f24])).
% 0.20/0.49  fof(f24,plain,(
% 0.20/0.49    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f6])).
% 0.20/0.49  fof(f6,axiom,(
% 0.20/0.49    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).
% 0.20/0.49  fof(f29,plain,(
% 0.20/0.49    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1) )),
% 0.20/0.49    inference(cnf_transformation,[],[f15])).
% 0.20/0.49  fof(f15,plain,(
% 0.20/0.49    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 0.20/0.49    inference(ennf_transformation,[],[f4])).
% 0.20/0.49  fof(f4,axiom,(
% 0.20/0.49    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).
% 0.20/0.49  fof(f117,plain,(
% 0.20/0.49    ( ! [X0] : (k4_xboole_0(X0,X0) = k4_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,X0))) )),
% 0.20/0.49    inference(superposition,[],[f33,f23])).
% 0.20/0.49  fof(f23,plain,(
% 0.20/0.49    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 0.20/0.49    inference(cnf_transformation,[],[f8])).
% 0.20/0.49  fof(f8,axiom,(
% 0.20/0.49    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).
% 0.20/0.49  fof(f33,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 0.20/0.49    inference(definition_unfolding,[],[f25,f27,f27])).
% 0.20/0.49  fof(f27,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 0.20/0.49    inference(cnf_transformation,[],[f10])).
% 0.20/0.49  fof(f10,axiom,(
% 0.20/0.49    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).
% 0.20/0.49  fof(f25,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f2])).
% 0.20/0.49  fof(f2,axiom,(
% 0.20/0.49    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.20/0.49  fof(f390,plain,(
% 0.20/0.49    k4_xboole_0(sK0,k4_xboole_0(sK0,sK2)) = k4_xboole_0(sK2,sK2)),
% 0.20/0.49    inference(superposition,[],[f33,f385])).
% 0.20/0.49  fof(f385,plain,(
% 0.20/0.49    sK2 = k4_xboole_0(sK2,sK0)),
% 0.20/0.49    inference(forward_demodulation,[],[f384,f50])).
% 0.20/0.49  fof(f50,plain,(
% 0.20/0.49    ( ! [X4,X3] : (k2_xboole_0(X3,k4_xboole_0(X3,X4)) = X3) )),
% 0.20/0.49    inference(superposition,[],[f46,f26])).
% 0.20/0.49  fof(f26,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f1])).
% 0.20/0.49  fof(f1,axiom,(
% 0.20/0.49    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).
% 0.20/0.49  fof(f384,plain,(
% 0.20/0.49    k4_xboole_0(sK2,sK0) = k2_xboole_0(sK2,k4_xboole_0(sK2,sK0))),
% 0.20/0.49    inference(resolution,[],[f366,f29])).
% 0.20/0.49  fof(f366,plain,(
% 0.20/0.49    r1_tarski(sK2,k4_xboole_0(sK2,sK0))),
% 0.20/0.49    inference(superposition,[],[f221,f354])).
% 0.20/0.49  fof(f354,plain,(
% 0.20/0.49    sK2 = k4_xboole_0(sK2,sK1)),
% 0.20/0.49    inference(superposition,[],[f342,f22])).
% 0.20/0.49  fof(f342,plain,(
% 0.20/0.49    sK2 = k2_xboole_0(k4_xboole_0(sK2,sK1),k1_xboole_0)),
% 0.20/0.49    inference(forward_demodulation,[],[f308,f141])).
% 0.20/0.49  fof(f308,plain,(
% 0.20/0.49    sK2 = k2_xboole_0(k4_xboole_0(sK2,sK1),k4_xboole_0(sK1,sK1))),
% 0.20/0.49    inference(superposition,[],[f152,f89])).
% 0.20/0.49  fof(f89,plain,(
% 0.20/0.49    sK1 = k4_xboole_0(sK1,sK2)),
% 0.20/0.49    inference(forward_demodulation,[],[f88,f46])).
% 0.20/0.49  fof(f88,plain,(
% 0.20/0.49    k4_xboole_0(sK1,sK2) = k2_xboole_0(k4_xboole_0(sK1,sK2),sK1)),
% 0.20/0.49    inference(forward_demodulation,[],[f84,f22])).
% 0.20/0.49  fof(f84,plain,(
% 0.20/0.49    k2_xboole_0(k4_xboole_0(sK1,sK2),sK1) = k2_xboole_0(k4_xboole_0(sK1,sK2),k1_xboole_0)),
% 0.20/0.49    inference(superposition,[],[f28,f68])).
% 0.20/0.49  fof(f68,plain,(
% 0.20/0.49    k1_xboole_0 = k4_xboole_0(sK1,k4_xboole_0(sK1,sK2))),
% 0.20/0.49    inference(resolution,[],[f35,f20])).
% 0.20/0.49  fof(f20,plain,(
% 0.20/0.49    r1_xboole_0(sK1,sK2)),
% 0.20/0.49    inference(cnf_transformation,[],[f17])).
% 0.20/0.49  fof(f17,plain,(
% 0.20/0.49    ~r1_xboole_0(sK0,sK2) & r1_xboole_0(sK1,sK2) & r1_tarski(sK0,sK1)),
% 0.20/0.49    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f14,f16])).
% 0.20/0.49  fof(f16,plain,(
% 0.20/0.49    ? [X0,X1,X2] : (~r1_xboole_0(X0,X2) & r1_xboole_0(X1,X2) & r1_tarski(X0,X1)) => (~r1_xboole_0(sK0,sK2) & r1_xboole_0(sK1,sK2) & r1_tarski(sK0,sK1))),
% 0.20/0.49    introduced(choice_axiom,[])).
% 0.20/0.49  fof(f14,plain,(
% 0.20/0.49    ? [X0,X1,X2] : (~r1_xboole_0(X0,X2) & r1_xboole_0(X1,X2) & r1_tarski(X0,X1))),
% 0.20/0.49    inference(flattening,[],[f13])).
% 0.20/0.49  fof(f13,plain,(
% 0.20/0.49    ? [X0,X1,X2] : (~r1_xboole_0(X0,X2) & (r1_xboole_0(X1,X2) & r1_tarski(X0,X1)))),
% 0.20/0.49    inference(ennf_transformation,[],[f12])).
% 0.20/0.49  fof(f12,negated_conjecture,(
% 0.20/0.49    ~! [X0,X1,X2] : ((r1_xboole_0(X1,X2) & r1_tarski(X0,X1)) => r1_xboole_0(X0,X2))),
% 0.20/0.49    inference(negated_conjecture,[],[f11])).
% 0.20/0.49  fof(f11,conjecture,(
% 0.20/0.49    ! [X0,X1,X2] : ((r1_xboole_0(X1,X2) & r1_tarski(X0,X1)) => r1_xboole_0(X0,X2))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t63_xboole_1)).
% 0.20/0.49  fof(f35,plain,(
% 0.20/0.49    ( ! [X0,X1] : (~r1_xboole_0(X0,X1) | k1_xboole_0 = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 0.20/0.49    inference(definition_unfolding,[],[f30,f27])).
% 0.20/0.49  fof(f30,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)) )),
% 0.20/0.49    inference(cnf_transformation,[],[f18])).
% 0.20/0.49  fof(f18,plain,(
% 0.20/0.49    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) != k1_xboole_0) & (k3_xboole_0(X0,X1) = k1_xboole_0 | ~r1_xboole_0(X0,X1)))),
% 0.20/0.49    inference(nnf_transformation,[],[f3])).
% 0.20/0.49  fof(f3,axiom,(
% 0.20/0.49    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k3_xboole_0(X0,X1) = k1_xboole_0)),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_xboole_0)).
% 0.20/0.49  fof(f28,plain,(
% 0.20/0.49    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 0.20/0.49    inference(cnf_transformation,[],[f7])).
% 0.20/0.49  fof(f7,axiom,(
% 0.20/0.49    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_xboole_1)).
% 0.20/0.49  fof(f152,plain,(
% 0.20/0.49    ( ! [X2,X3] : (k2_xboole_0(k4_xboole_0(X2,X3),k4_xboole_0(X3,k4_xboole_0(X3,X2))) = X2) )),
% 0.20/0.49    inference(forward_demodulation,[],[f151,f50])).
% 0.20/0.49  fof(f151,plain,(
% 0.20/0.49    ( ! [X2,X3] : (k2_xboole_0(k4_xboole_0(X2,X3),k4_xboole_0(X3,k4_xboole_0(X3,X2))) = k2_xboole_0(X2,k4_xboole_0(X2,X3))) )),
% 0.20/0.49    inference(forward_demodulation,[],[f128,f26])).
% 0.20/0.49  fof(f128,plain,(
% 0.20/0.49    ( ! [X2,X3] : (k2_xboole_0(k4_xboole_0(X2,X3),X2) = k2_xboole_0(k4_xboole_0(X2,X3),k4_xboole_0(X3,k4_xboole_0(X3,X2)))) )),
% 0.20/0.49    inference(superposition,[],[f28,f33])).
% 0.20/0.49  fof(f221,plain,(
% 0.20/0.49    ( ! [X21] : (r1_tarski(k4_xboole_0(X21,sK1),k4_xboole_0(X21,sK0))) )),
% 0.20/0.49    inference(superposition,[],[f78,f45])).
% 0.20/0.49  fof(f45,plain,(
% 0.20/0.49    sK1 = k2_xboole_0(sK0,sK1)),
% 0.20/0.49    inference(resolution,[],[f29,f19])).
% 0.20/0.49  fof(f19,plain,(
% 0.20/0.49    r1_tarski(sK0,sK1)),
% 0.20/0.49    inference(cnf_transformation,[],[f17])).
% 0.20/0.49  fof(f78,plain,(
% 0.20/0.49    ( ! [X12,X13,X11] : (r1_tarski(k4_xboole_0(X11,k2_xboole_0(X12,X13)),k4_xboole_0(X11,X12))) )),
% 0.20/0.49    inference(superposition,[],[f24,f32])).
% 0.20/0.49  fof(f32,plain,(
% 0.20/0.49    ( ! [X2,X0,X1] : (k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2))) )),
% 0.20/0.49    inference(cnf_transformation,[],[f9])).
% 0.20/0.49  fof(f9,axiom,(
% 0.20/0.49    ! [X0,X1,X2] : k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2))),
% 0.20/0.49    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t41_xboole_1)).
% 0.20/0.49  fof(f67,plain,(
% 0.20/0.49    k1_xboole_0 != k4_xboole_0(sK0,k4_xboole_0(sK0,sK2))),
% 0.20/0.49    inference(resolution,[],[f34,f21])).
% 0.20/0.49  fof(f21,plain,(
% 0.20/0.49    ~r1_xboole_0(sK0,sK2)),
% 0.20/0.49    inference(cnf_transformation,[],[f17])).
% 0.20/0.49  fof(f34,plain,(
% 0.20/0.49    ( ! [X0,X1] : (r1_xboole_0(X0,X1) | k1_xboole_0 != k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 0.20/0.49    inference(definition_unfolding,[],[f31,f27])).
% 0.20/0.49  fof(f31,plain,(
% 0.20/0.49    ( ! [X0,X1] : (r1_xboole_0(X0,X1) | k3_xboole_0(X0,X1) != k1_xboole_0) )),
% 0.20/0.49    inference(cnf_transformation,[],[f18])).
% 0.20/0.49  % SZS output end Proof for theBenchmark
% 0.20/0.49  % (10858)------------------------------
% 0.20/0.49  % (10858)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.49  % (10858)Termination reason: Refutation
% 0.20/0.49  
% 0.20/0.49  % (10858)Memory used [KB]: 1918
% 0.20/0.49  % (10858)Time elapsed: 0.079 s
% 0.20/0.49  % (10858)------------------------------
% 0.20/0.49  % (10858)------------------------------
% 0.20/0.49  % (10854)Success in time 0.129 s
%------------------------------------------------------------------------------
