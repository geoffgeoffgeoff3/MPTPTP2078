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
% DateTime   : Thu Dec  3 12:59:03 EST 2020

% Result     : Theorem 17.01s
% Output     : Refutation 17.01s
% Verified   : 
% Statistics : Number of formulae       :   52 (  84 expanded)
%              Number of leaves         :   13 (  28 expanded)
%              Depth                    :   12
%              Number of atoms          :   54 (  86 expanded)
%              Number of equality atoms :   53 (  85 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal term depth       :    4 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f30245,plain,(
    $false ),
    inference(subsumption_resolution,[],[f30244,f24])).

fof(f24,plain,(
    ! [X2,X0,X1] : k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,axiom,(
    ! [X0,X1,X2] : k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_zfmisc_1)).

fof(f30244,plain,(
    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2)),k2_tarski(sK3,sK4)) ),
    inference(forward_demodulation,[],[f30074,f28])).

fof(f28,plain,(
    ! [X2,X0,X1] : k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)) = k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( k2_zfmisc_1(k2_tarski(X0,X1),k1_tarski(X2)) = k2_tarski(k4_tarski(X0,X2),k4_tarski(X1,X2))
      & k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)) = k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_zfmisc_1)).

fof(f30074,plain,(
    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_zfmisc_1(k2_tarski(k4_tarski(sK0,sK1),k4_tarski(sK0,sK2)),k2_tarski(sK3,sK4)) ),
    inference(superposition,[],[f11958,f1329])).

fof(f1329,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k2_zfmisc_1(k2_tarski(k4_tarski(X3,X4),k4_tarski(X0,X1)),k2_tarski(X2,X5)) = k2_enumset1(k3_mcart_1(X3,X4,X2),k3_mcart_1(X3,X4,X5),k3_mcart_1(X0,X1,X2),k3_mcart_1(X0,X1,X5)) ),
    inference(forward_demodulation,[],[f1311,f25])).

fof(f25,plain,(
    ! [X2,X0,X1] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    inference(cnf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_mcart_1)).

fof(f1311,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k2_zfmisc_1(k2_tarski(k4_tarski(X3,X4),k4_tarski(X0,X1)),k2_tarski(X2,X5)) = k2_enumset1(k3_mcart_1(X3,X4,X2),k3_mcart_1(X3,X4,X5),k3_mcart_1(X0,X1,X2),k4_tarski(k4_tarski(X0,X1),X5)) ),
    inference(superposition,[],[f136,f25])).

fof(f136,plain,(
    ! [X4,X2,X0,X3,X1] : k2_zfmisc_1(k2_tarski(k4_tarski(X0,X1),X3),k2_tarski(X2,X4)) = k2_enumset1(k3_mcart_1(X0,X1,X2),k3_mcart_1(X0,X1,X4),k4_tarski(X3,X2),k4_tarski(X3,X4)) ),
    inference(forward_demodulation,[],[f130,f25])).

fof(f130,plain,(
    ! [X4,X2,X0,X3,X1] : k2_zfmisc_1(k2_tarski(k4_tarski(X0,X1),X3),k2_tarski(X2,X4)) = k2_enumset1(k3_mcart_1(X0,X1,X2),k4_tarski(k4_tarski(X0,X1),X4),k4_tarski(X3,X2),k4_tarski(X3,X4)) ),
    inference(superposition,[],[f32,f25])).

fof(f32,plain,(
    ! [X2,X0,X3,X1] : k2_zfmisc_1(k2_tarski(X0,X1),k2_tarski(X2,X3)) = k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] : k2_zfmisc_1(k2_tarski(X0,X1),k2_tarski(X2,X3)) = k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t146_zfmisc_1)).

fof(f11958,plain,(
    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK2,sK4)) ),
    inference(superposition,[],[f8480,f10995])).

fof(f10995,plain,(
    ! [X10,X8,X11,X9] : k2_enumset1(X8,X9,X10,X11) = k2_enumset1(X8,X9,X11,X10) ),
    inference(superposition,[],[f91,f30])).

fof(f30,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X0,X1),k2_tarski(X2,X3)) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X0,X1),k2_tarski(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l53_enumset1)).

fof(f91,plain,(
    ! [X4,X2,X3,X1] : k2_enumset1(X3,X4,X1,X2) = k2_xboole_0(k2_tarski(X3,X4),k2_tarski(X2,X1)) ),
    inference(superposition,[],[f30,f67])).

fof(f67,plain,(
    ! [X2,X3] : k2_tarski(X2,X3) = k2_tarski(X3,X2) ),
    inference(superposition,[],[f43,f42])).

fof(f42,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
    inference(forward_demodulation,[],[f37,f23])).

fof(f23,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f37,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) ),
    inference(superposition,[],[f27,f20])).

fof(f20,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f27,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_enumset1)).

fof(f43,plain,(
    ! [X2,X3] : k2_tarski(X2,X3) = k2_xboole_0(k1_tarski(X3),k1_tarski(X2)) ),
    inference(superposition,[],[f42,f21])).

fof(f21,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(f8480,plain,(
    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4),k3_mcart_1(sK0,sK2,sK3)) ),
    inference(superposition,[],[f19,f2386])).

fof(f2386,plain,(
    ! [X61,X59,X62,X60] : k2_enumset1(X61,X62,X59,X60) = k2_enumset1(X61,X59,X60,X62) ),
    inference(superposition,[],[f2321,f227])).

fof(f227,plain,(
    ! [X6,X4,X7,X5] : k2_enumset1(X4,X5,X6,X7) = k2_enumset1(X6,X7,X4,X5) ),
    inference(superposition,[],[f53,f30])).

fof(f53,plain,(
    ! [X6,X4,X7,X5] : k2_xboole_0(k2_tarski(X6,X7),k2_tarski(X4,X5)) = k2_enumset1(X4,X5,X6,X7) ),
    inference(superposition,[],[f30,f21])).

fof(f2321,plain,(
    ! [X6,X4,X7,X5] : k2_enumset1(X4,X5,X6,X7) = k2_enumset1(X6,X4,X5,X7) ),
    inference(superposition,[],[f191,f31])).

fof(f31,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_enumset1)).

fof(f191,plain,(
    ! [X6,X4,X7,X5] : k2_enumset1(X4,X5,X6,X7) = k2_xboole_0(k1_enumset1(X5,X6,X4),k1_tarski(X7)) ),
    inference(superposition,[],[f31,f142])).

fof(f142,plain,(
    ! [X4,X5,X3] : k1_enumset1(X3,X4,X5) = k1_enumset1(X4,X5,X3) ),
    inference(superposition,[],[f59,f26])).

fof(f26,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f59,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X1,X2,X0) ),
    inference(forward_demodulation,[],[f51,f38])).

fof(f38,plain,(
    ! [X4,X5,X3] : k2_xboole_0(k1_tarski(X5),k2_tarski(X3,X4)) = k1_enumset1(X3,X4,X5) ),
    inference(superposition,[],[f27,f21])).

fof(f51,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) ),
    inference(superposition,[],[f30,f20])).

fof(f19,plain,(
    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4)) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f16,f17])).

fof(f17,plain,
    ( ? [X0,X1,X2,X3,X4] : k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) != k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4))
   => k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4)) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ? [X0,X1,X2,X3,X4] : k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) != k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1,X2,X3,X4] : k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) = k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) ),
    inference(negated_conjecture,[],[f14])).

fof(f14,conjecture,(
    ! [X0,X1,X2,X3,X4] : k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) = k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t45_mcart_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_vampire %s %d
% 0.14/0.35  % Computer   : n025.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 12:13:50 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.22/0.44  % (16313)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.22/0.47  % (16310)lrs+1002_1_av=off:fde=unused:lwlo=on:nm=16:nwc=4:stl=30:sp=occurrence_75 on theBenchmark
% 0.22/0.47  % (16308)lrs+11_5_av=off:cond=on:fsr=off:lma=on:lwlo=on:nwc=1.2:sas=z3:stl=30:sp=reverse_arity:updr=off_123 on theBenchmark
% 0.22/0.47  % (16311)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.22/0.48  % (16314)ott+11_20_afr=on:afp=100000:afq=1.0:amm=sco:anc=all:bsr=on:irw=on:lma=on:nm=4:nwc=1.2:sac=on:sp=occurrence_294 on theBenchmark
% 0.22/0.49  % (16320)ott+1_28_av=off:bs=unit_only:cond=on:irw=on:nm=64:nwc=2:sp=occurrence:updr=off:uhcvi=on_1052 on theBenchmark
% 0.22/0.49  % (16319)dis+1_24_av=off:cond=on:irw=on:lma=on:nm=2:nwc=1.5:sp=occurrence:updr=off_16 on theBenchmark
% 0.22/0.49  % (16317)ott+11_20_afp=10000:afq=1.1:anc=none:bs=unit_only:bsr=on:bce=on:fsr=off:gs=on:gsem=on:nwc=2.5:sas=z3:sp=occurrence:updr=off:uhcvi=on_385 on theBenchmark
% 0.22/0.51  % (16321)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.22/0.51  % (16323)ott-1_50_afr=on:afp=1000:afq=1.2:amm=sco:anc=none:bsr=on:cond=fast:fsr=off:fde=none:irw=on:nm=16:nwc=1.5:updr=off:uhcvi=on_1883 on theBenchmark
% 0.22/0.51  % (16307)lrs+11_24_add=large:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:bd=off:cond=fast:fde=unused:gs=on:irw=on:lma=on:nm=4:nwc=1.3:nicw=on:sas=z3:stl=30:sac=on:sp=reverse_arity:uhcvi=on_136 on theBenchmark
% 0.22/0.51  % (16312)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.22/0.51  % (16318)dis+10_128_acc=on:add=off:afp=4000:afq=1.4:amm=off:bd=preordered:bce=on:cond=on:fsr=off:fde=unused:gs=on:gsem=on:irw=on:lma=on:nm=64:nwc=1.2:nicw=on:sos=on:sp=occurrence:updr=off:uhcvi=on_122 on theBenchmark
% 0.22/0.51  % (16316)lrs+10_24_add=off:afr=on:afp=1000:afq=1.4:anc=none:bs=unit_only:gs=on:gsaa=from_current:gsem=on:lma=on:nm=2:nwc=1.1:stl=60:sac=on:uhcvi=on_461 on theBenchmark
% 0.22/0.51  % (16318)Refutation not found, incomplete strategy% (16318)------------------------------
% 0.22/0.51  % (16318)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.51  % (16318)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.51  
% 0.22/0.51  % (16318)Memory used [KB]: 10618
% 0.22/0.51  % (16318)Time elapsed: 0.092 s
% 0.22/0.51  % (16318)------------------------------
% 0.22/0.51  % (16318)------------------------------
% 0.22/0.52  % (16309)dis+11_50_add=large:afp=1000:afq=1.0:amm=sco:anc=none:fsr=off:nm=16:nwc=1.5:sac=on_13 on theBenchmark
% 0.22/0.52  % (16315)lrs+1_128_add=off:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bs=unit_only:gs=on:gsem=off:lwlo=on:nm=2:nwc=1:sas=z3:stl=90:sac=on:sp=occurrence:urr=on:updr=off:uhcvi=on_520 on theBenchmark
% 0.22/0.52  % (16322)ott+4_4:1_acc=model:add=large:afr=on:afp=10000:afq=1.4:amm=off:anc=none:bd=preordered:bs=unit_only:ccuc=first:cond=on:gs=on:nm=32:nwc=1.5:sac=on:urr=on:updr=off_355 on theBenchmark
% 0.22/0.52  % (16324)lrs+11_64_acc=model:afp=100000:afq=1.2:anc=all_dependent:bd=off:bs=unit_only:cond=fast:fsr=off:gs=on:gsaa=full_model:gsem=off:irw=on:lma=on:nwc=1:stl=150:sac=on:sp=reverse_arity:urr=on:updr=off_893 on theBenchmark
% 5.14/1.03  % (16311)Time limit reached!
% 5.14/1.03  % (16311)------------------------------
% 5.14/1.03  % (16311)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 5.14/1.03  % (16311)Termination reason: Time limit
% 5.14/1.03  
% 5.14/1.03  % (16311)Memory used [KB]: 11897
% 5.14/1.03  % (16311)Time elapsed: 0.605 s
% 5.14/1.03  % (16311)------------------------------
% 5.14/1.03  % (16311)------------------------------
% 12.41/1.97  % (16312)Time limit reached!
% 12.41/1.97  % (16312)------------------------------
% 12.41/1.97  % (16312)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 12.41/1.97  % (16312)Termination reason: Time limit
% 12.41/1.97  
% 12.41/1.97  % (16312)Memory used [KB]: 33773
% 12.41/1.97  % (16312)Time elapsed: 1.507 s
% 12.41/1.97  % (16312)------------------------------
% 12.41/1.97  % (16312)------------------------------
% 12.41/1.98  % (16313)Time limit reached!
% 12.41/1.98  % (16313)------------------------------
% 12.41/1.98  % (16313)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 12.41/1.98  % (16313)Termination reason: Time limit
% 12.41/1.98  
% 12.41/1.98  % (16313)Memory used [KB]: 27121
% 12.41/1.98  % (16313)Time elapsed: 1.547 s
% 12.41/1.98  % (16313)------------------------------
% 12.41/1.98  % (16313)------------------------------
% 14.03/2.22  % (16309)Time limit reached!
% 14.03/2.22  % (16309)------------------------------
% 14.03/2.22  % (16309)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 14.03/2.22  % (16309)Termination reason: Time limit
% 14.03/2.22  % (16309)Termination phase: Saturation
% 14.03/2.22  
% 14.03/2.22  % (16309)Memory used [KB]: 12537
% 14.03/2.22  % (16309)Time elapsed: 1.800 s
% 14.03/2.22  % (16309)------------------------------
% 14.03/2.22  % (16309)------------------------------
% 17.01/2.49  % (16310)Refutation found. Thanks to Tanya!
% 17.01/2.49  % SZS status Theorem for theBenchmark
% 17.01/2.50  % SZS output start Proof for theBenchmark
% 17.01/2.50  fof(f30245,plain,(
% 17.01/2.50    $false),
% 17.01/2.50    inference(subsumption_resolution,[],[f30244,f24])).
% 17.01/2.50  fof(f24,plain,(
% 17.01/2.50    ( ! [X2,X0,X1] : (k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)) )),
% 17.01/2.50    inference(cnf_transformation,[],[f13])).
% 17.01/2.50  fof(f13,axiom,(
% 17.01/2.50    ! [X0,X1,X2] : k3_zfmisc_1(X0,X1,X2) = k2_zfmisc_1(k2_zfmisc_1(X0,X1),X2)),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_zfmisc_1)).
% 17.01/2.50  fof(f30244,plain,(
% 17.01/2.50    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_zfmisc_1(k2_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2)),k2_tarski(sK3,sK4))),
% 17.01/2.50    inference(forward_demodulation,[],[f30074,f28])).
% 17.01/2.50  fof(f28,plain,(
% 17.01/2.50    ( ! [X2,X0,X1] : (k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)) = k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2))) )),
% 17.01/2.50    inference(cnf_transformation,[],[f11])).
% 17.01/2.50  fof(f11,axiom,(
% 17.01/2.50    ! [X0,X1,X2] : (k2_zfmisc_1(k2_tarski(X0,X1),k1_tarski(X2)) = k2_tarski(k4_tarski(X0,X2),k4_tarski(X1,X2)) & k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)) = k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)))),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_zfmisc_1)).
% 17.01/2.50  fof(f30074,plain,(
% 17.01/2.50    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_zfmisc_1(k2_tarski(k4_tarski(sK0,sK1),k4_tarski(sK0,sK2)),k2_tarski(sK3,sK4))),
% 17.01/2.50    inference(superposition,[],[f11958,f1329])).
% 17.01/2.50  fof(f1329,plain,(
% 17.01/2.50    ( ! [X4,X2,X0,X5,X3,X1] : (k2_zfmisc_1(k2_tarski(k4_tarski(X3,X4),k4_tarski(X0,X1)),k2_tarski(X2,X5)) = k2_enumset1(k3_mcart_1(X3,X4,X2),k3_mcart_1(X3,X4,X5),k3_mcart_1(X0,X1,X2),k3_mcart_1(X0,X1,X5))) )),
% 17.01/2.50    inference(forward_demodulation,[],[f1311,f25])).
% 17.01/2.50  fof(f25,plain,(
% 17.01/2.50    ( ! [X2,X0,X1] : (k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)) )),
% 17.01/2.50    inference(cnf_transformation,[],[f12])).
% 17.01/2.50  fof(f12,axiom,(
% 17.01/2.50    ! [X0,X1,X2] : k3_mcart_1(X0,X1,X2) = k4_tarski(k4_tarski(X0,X1),X2)),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_mcart_1)).
% 17.01/2.50  fof(f1311,plain,(
% 17.01/2.50    ( ! [X4,X2,X0,X5,X3,X1] : (k2_zfmisc_1(k2_tarski(k4_tarski(X3,X4),k4_tarski(X0,X1)),k2_tarski(X2,X5)) = k2_enumset1(k3_mcart_1(X3,X4,X2),k3_mcart_1(X3,X4,X5),k3_mcart_1(X0,X1,X2),k4_tarski(k4_tarski(X0,X1),X5))) )),
% 17.01/2.50    inference(superposition,[],[f136,f25])).
% 17.01/2.50  fof(f136,plain,(
% 17.01/2.50    ( ! [X4,X2,X0,X3,X1] : (k2_zfmisc_1(k2_tarski(k4_tarski(X0,X1),X3),k2_tarski(X2,X4)) = k2_enumset1(k3_mcart_1(X0,X1,X2),k3_mcart_1(X0,X1,X4),k4_tarski(X3,X2),k4_tarski(X3,X4))) )),
% 17.01/2.50    inference(forward_demodulation,[],[f130,f25])).
% 17.01/2.50  fof(f130,plain,(
% 17.01/2.50    ( ! [X4,X2,X0,X3,X1] : (k2_zfmisc_1(k2_tarski(k4_tarski(X0,X1),X3),k2_tarski(X2,X4)) = k2_enumset1(k3_mcart_1(X0,X1,X2),k4_tarski(k4_tarski(X0,X1),X4),k4_tarski(X3,X2),k4_tarski(X3,X4))) )),
% 17.01/2.50    inference(superposition,[],[f32,f25])).
% 17.01/2.50  fof(f32,plain,(
% 17.01/2.50    ( ! [X2,X0,X3,X1] : (k2_zfmisc_1(k2_tarski(X0,X1),k2_tarski(X2,X3)) = k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3))) )),
% 17.01/2.50    inference(cnf_transformation,[],[f10])).
% 17.01/2.50  fof(f10,axiom,(
% 17.01/2.50    ! [X0,X1,X2,X3] : k2_zfmisc_1(k2_tarski(X0,X1),k2_tarski(X2,X3)) = k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X3),k4_tarski(X1,X2),k4_tarski(X1,X3))),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t146_zfmisc_1)).
% 17.01/2.50  fof(f11958,plain,(
% 17.01/2.50    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK2,sK4))),
% 17.01/2.50    inference(superposition,[],[f8480,f10995])).
% 17.01/2.50  fof(f10995,plain,(
% 17.01/2.50    ( ! [X10,X8,X11,X9] : (k2_enumset1(X8,X9,X10,X11) = k2_enumset1(X8,X9,X11,X10)) )),
% 17.01/2.50    inference(superposition,[],[f91,f30])).
% 17.01/2.50  fof(f30,plain,(
% 17.01/2.50    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X0,X1),k2_tarski(X2,X3))) )),
% 17.01/2.50    inference(cnf_transformation,[],[f2])).
% 17.01/2.50  fof(f2,axiom,(
% 17.01/2.50    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k2_tarski(X0,X1),k2_tarski(X2,X3))),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l53_enumset1)).
% 17.01/2.50  fof(f91,plain,(
% 17.01/2.50    ( ! [X4,X2,X3,X1] : (k2_enumset1(X3,X4,X1,X2) = k2_xboole_0(k2_tarski(X3,X4),k2_tarski(X2,X1))) )),
% 17.01/2.50    inference(superposition,[],[f30,f67])).
% 17.01/2.50  fof(f67,plain,(
% 17.01/2.50    ( ! [X2,X3] : (k2_tarski(X2,X3) = k2_tarski(X3,X2)) )),
% 17.01/2.50    inference(superposition,[],[f43,f42])).
% 17.01/2.50  fof(f42,plain,(
% 17.01/2.50    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1))) )),
% 17.01/2.50    inference(forward_demodulation,[],[f37,f23])).
% 17.01/2.50  fof(f23,plain,(
% 17.01/2.50    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 17.01/2.50    inference(cnf_transformation,[],[f7])).
% 17.01/2.50  fof(f7,axiom,(
% 17.01/2.50    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 17.01/2.50  fof(f37,plain,(
% 17.01/2.50    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_xboole_0(k1_tarski(X0),k1_tarski(X1))) )),
% 17.01/2.50    inference(superposition,[],[f27,f20])).
% 17.01/2.50  fof(f20,plain,(
% 17.01/2.50    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 17.01/2.50    inference(cnf_transformation,[],[f6])).
% 17.01/2.50  fof(f6,axiom,(
% 17.01/2.50    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 17.01/2.50  fof(f27,plain,(
% 17.01/2.50    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2))) )),
% 17.01/2.50    inference(cnf_transformation,[],[f3])).
% 17.01/2.50  fof(f3,axiom,(
% 17.01/2.50    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2))),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t43_enumset1)).
% 17.01/2.50  fof(f43,plain,(
% 17.01/2.50    ( ! [X2,X3] : (k2_tarski(X2,X3) = k2_xboole_0(k1_tarski(X3),k1_tarski(X2))) )),
% 17.01/2.50    inference(superposition,[],[f42,f21])).
% 17.01/2.50  fof(f21,plain,(
% 17.01/2.50    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 17.01/2.50    inference(cnf_transformation,[],[f1])).
% 17.01/2.50  fof(f1,axiom,(
% 17.01/2.50    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).
% 17.01/2.50  fof(f8480,plain,(
% 17.01/2.50    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4),k3_mcart_1(sK0,sK2,sK3))),
% 17.01/2.50    inference(superposition,[],[f19,f2386])).
% 17.01/2.50  fof(f2386,plain,(
% 17.01/2.50    ( ! [X61,X59,X62,X60] : (k2_enumset1(X61,X62,X59,X60) = k2_enumset1(X61,X59,X60,X62)) )),
% 17.01/2.50    inference(superposition,[],[f2321,f227])).
% 17.01/2.50  fof(f227,plain,(
% 17.01/2.50    ( ! [X6,X4,X7,X5] : (k2_enumset1(X4,X5,X6,X7) = k2_enumset1(X6,X7,X4,X5)) )),
% 17.01/2.50    inference(superposition,[],[f53,f30])).
% 17.01/2.50  fof(f53,plain,(
% 17.01/2.50    ( ! [X6,X4,X7,X5] : (k2_xboole_0(k2_tarski(X6,X7),k2_tarski(X4,X5)) = k2_enumset1(X4,X5,X6,X7)) )),
% 17.01/2.50    inference(superposition,[],[f30,f21])).
% 17.01/2.50  fof(f2321,plain,(
% 17.01/2.50    ( ! [X6,X4,X7,X5] : (k2_enumset1(X4,X5,X6,X7) = k2_enumset1(X6,X4,X5,X7)) )),
% 17.01/2.50    inference(superposition,[],[f191,f31])).
% 17.01/2.50  fof(f31,plain,(
% 17.01/2.50    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3))) )),
% 17.01/2.50    inference(cnf_transformation,[],[f4])).
% 17.01/2.50  fof(f4,axiom,(
% 17.01/2.50    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3))),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_enumset1)).
% 17.01/2.50  fof(f191,plain,(
% 17.01/2.50    ( ! [X6,X4,X7,X5] : (k2_enumset1(X4,X5,X6,X7) = k2_xboole_0(k1_enumset1(X5,X6,X4),k1_tarski(X7))) )),
% 17.01/2.50    inference(superposition,[],[f31,f142])).
% 17.01/2.50  fof(f142,plain,(
% 17.01/2.50    ( ! [X4,X5,X3] : (k1_enumset1(X3,X4,X5) = k1_enumset1(X4,X5,X3)) )),
% 17.01/2.50    inference(superposition,[],[f59,f26])).
% 17.01/2.50  fof(f26,plain,(
% 17.01/2.50    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 17.01/2.50    inference(cnf_transformation,[],[f8])).
% 17.01/2.50  fof(f8,axiom,(
% 17.01/2.50    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 17.01/2.50  fof(f59,plain,(
% 17.01/2.50    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X1,X2,X0)) )),
% 17.01/2.50    inference(forward_demodulation,[],[f51,f38])).
% 17.01/2.50  fof(f38,plain,(
% 17.01/2.50    ( ! [X4,X5,X3] : (k2_xboole_0(k1_tarski(X5),k2_tarski(X3,X4)) = k1_enumset1(X3,X4,X5)) )),
% 17.01/2.50    inference(superposition,[],[f27,f21])).
% 17.01/2.50  fof(f51,plain,(
% 17.01/2.50    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2))) )),
% 17.01/2.50    inference(superposition,[],[f30,f20])).
% 17.01/2.50  fof(f19,plain,(
% 17.01/2.50    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4))),
% 17.01/2.50    inference(cnf_transformation,[],[f18])).
% 17.01/2.50  fof(f18,plain,(
% 17.01/2.50    k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4))),
% 17.01/2.50    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f16,f17])).
% 17.01/2.50  fof(f17,plain,(
% 17.01/2.50    ? [X0,X1,X2,X3,X4] : k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) != k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4)) => k3_zfmisc_1(k1_tarski(sK0),k2_tarski(sK1,sK2),k2_tarski(sK3,sK4)) != k2_enumset1(k3_mcart_1(sK0,sK1,sK3),k3_mcart_1(sK0,sK2,sK3),k3_mcart_1(sK0,sK1,sK4),k3_mcart_1(sK0,sK2,sK4))),
% 17.01/2.50    introduced(choice_axiom,[])).
% 17.01/2.50  fof(f16,plain,(
% 17.01/2.50    ? [X0,X1,X2,X3,X4] : k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) != k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4))),
% 17.01/2.50    inference(ennf_transformation,[],[f15])).
% 17.01/2.50  fof(f15,negated_conjecture,(
% 17.01/2.50    ~! [X0,X1,X2,X3,X4] : k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) = k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4))),
% 17.01/2.50    inference(negated_conjecture,[],[f14])).
% 17.01/2.50  fof(f14,conjecture,(
% 17.01/2.50    ! [X0,X1,X2,X3,X4] : k3_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2),k2_tarski(X3,X4)) = k2_enumset1(k3_mcart_1(X0,X1,X3),k3_mcart_1(X0,X2,X3),k3_mcart_1(X0,X1,X4),k3_mcart_1(X0,X2,X4))),
% 17.01/2.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t45_mcart_1)).
% 17.01/2.50  % SZS output end Proof for theBenchmark
% 17.01/2.50  % (16310)------------------------------
% 17.01/2.50  % (16310)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 17.01/2.50  % (16310)Termination reason: Refutation
% 17.01/2.50  
% 17.01/2.50  % (16310)Memory used [KB]: 38250
% 17.01/2.50  % (16310)Time elapsed: 2.054 s
% 17.01/2.50  % (16310)------------------------------
% 17.01/2.50  % (16310)------------------------------
% 17.16/2.51  % (16301)Success in time 2.142 s
%------------------------------------------------------------------------------
