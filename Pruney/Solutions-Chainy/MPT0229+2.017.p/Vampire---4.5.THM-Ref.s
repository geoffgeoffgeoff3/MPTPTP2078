%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:36:32 EST 2020

% Result     : Theorem 1.25s
% Output     : Refutation 1.25s
% Verified   : 
% Statistics : Number of formulae       :   47 ( 151 expanded)
%              Number of leaves         :   11 (  48 expanded)
%              Depth                    :   14
%              Number of atoms          :   81 ( 196 expanded)
%              Number of equality atoms :   61 ( 171 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f71,plain,(
    $false ),
    inference(subsumption_resolution,[],[f70,f17])).

fof(f17,plain,(
    sK0 != sK1 ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ? [X0,X1] :
      ( X0 != X1
      & r1_tarski(k1_tarski(X0),k1_tarski(X1)) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1] :
        ( r1_tarski(k1_tarski(X0),k1_tarski(X1))
       => X0 = X1 ) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),k1_tarski(X1))
     => X0 = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t24_zfmisc_1)).

fof(f70,plain,(
    sK0 = sK1 ),
    inference(resolution,[],[f67,f56])).

fof(f56,plain,(
    ! [X4,X2,X1] : r2_hidden(X4,k6_enumset1(X4,X4,X4,X4,X4,X4,X1,X2)) ),
    inference(equality_resolution,[],[f55])).

fof(f55,plain,(
    ! [X4,X2,X3,X1] :
      ( r2_hidden(X4,X3)
      | k6_enumset1(X4,X4,X4,X4,X4,X4,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f45])).

fof(f45,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( X0 != X4
      | r2_hidden(X4,X3)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f29,f38])).

fof(f38,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f21,f37])).

fof(f37,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f23,f36])).

fof(f36,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f32,f35])).

fof(f35,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f33,f34])).

fof(f34,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).

fof(f33,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(f32,plain,(
    ! [X4,X2,X0,X3,X1] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(f23,plain,(
    ! [X2,X0,X3,X1] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(f21,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(f29,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( X0 != X4
      | r2_hidden(X4,X3)
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_enumset1)).

fof(f67,plain,(
    ! [X3] :
      ( ~ r2_hidden(X3,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK1,sK1))
      | sK1 = X3 ) ),
    inference(duplicate_literal_removal,[],[f63])).

fof(f63,plain,(
    ! [X3] :
      ( ~ r2_hidden(X3,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK1,sK1))
      | sK1 = X3
      | sK1 = X3
      | sK1 = X3 ) ),
    inference(superposition,[],[f57,f59])).

fof(f59,plain,(
    k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK1,sK1) ),
    inference(forward_demodulation,[],[f58,f42])).

fof(f42,plain,(
    ! [X2,X0,X1] : k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) = k2_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) ),
    inference(definition_unfolding,[],[f22,f38,f40,f39])).

fof(f39,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f19,f38])).

fof(f19,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f40,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f18,f39])).

fof(f18,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f22,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_enumset1)).

fof(f58,plain,(
    k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k2_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)) ),
    inference(resolution,[],[f41,f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,X1)
      | k2_xboole_0(X0,X1) = X1 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f14,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(f41,plain,(
    r1_tarski(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1)) ),
    inference(definition_unfolding,[],[f16,f40,f40])).

fof(f16,plain,(
    r1_tarski(k1_tarski(sK0),k1_tarski(sK1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f57,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2))
      | X1 = X4
      | X2 = X4
      | X0 = X4 ) ),
    inference(equality_resolution,[],[f46])).

fof(f46,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( X0 = X4
      | X1 = X4
      | X2 = X4
      | ~ r2_hidden(X4,X3)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f28,f38])).

fof(f28,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( X0 = X4
      | X1 = X4
      | X2 = X4
      | ~ r2_hidden(X4,X3)
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f15])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.14  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n015.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 13:24:23 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.21/0.51  % (25813)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 0.21/0.51  % (25813)Refutation not found, incomplete strategy% (25813)------------------------------
% 0.21/0.51  % (25813)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.51  % (25813)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.51  
% 0.21/0.51  % (25813)Memory used [KB]: 10618
% 0.21/0.51  % (25813)Time elapsed: 0.092 s
% 0.21/0.51  % (25813)------------------------------
% 0.21/0.51  % (25813)------------------------------
% 0.21/0.52  % (25806)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 0.21/0.52  % (25806)Refutation not found, incomplete strategy% (25806)------------------------------
% 0.21/0.52  % (25806)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.52  % (25806)Termination reason: Refutation not found, incomplete strategy
% 0.21/0.52  
% 0.21/0.52  % (25806)Memory used [KB]: 6140
% 0.21/0.52  % (25806)Time elapsed: 0.103 s
% 0.21/0.52  % (25806)------------------------------
% 0.21/0.52  % (25806)------------------------------
% 0.21/0.52  % (25823)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.21/0.52  % (25818)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 1.25/0.52  % (25821)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 1.25/0.52  % (25823)Refutation found. Thanks to Tanya!
% 1.25/0.52  % SZS status Theorem for theBenchmark
% 1.25/0.52  % SZS output start Proof for theBenchmark
% 1.25/0.52  fof(f71,plain,(
% 1.25/0.52    $false),
% 1.25/0.52    inference(subsumption_resolution,[],[f70,f17])).
% 1.25/0.52  fof(f17,plain,(
% 1.25/0.52    sK0 != sK1),
% 1.25/0.52    inference(cnf_transformation,[],[f13])).
% 1.25/0.52  fof(f13,plain,(
% 1.25/0.52    ? [X0,X1] : (X0 != X1 & r1_tarski(k1_tarski(X0),k1_tarski(X1)))),
% 1.25/0.52    inference(ennf_transformation,[],[f12])).
% 1.25/0.52  fof(f12,negated_conjecture,(
% 1.25/0.52    ~! [X0,X1] : (r1_tarski(k1_tarski(X0),k1_tarski(X1)) => X0 = X1)),
% 1.25/0.52    inference(negated_conjecture,[],[f11])).
% 1.25/0.52  fof(f11,conjecture,(
% 1.25/0.52    ! [X0,X1] : (r1_tarski(k1_tarski(X0),k1_tarski(X1)) => X0 = X1)),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t24_zfmisc_1)).
% 1.25/0.52  fof(f70,plain,(
% 1.25/0.52    sK0 = sK1),
% 1.25/0.52    inference(resolution,[],[f67,f56])).
% 1.25/0.52  fof(f56,plain,(
% 1.25/0.52    ( ! [X4,X2,X1] : (r2_hidden(X4,k6_enumset1(X4,X4,X4,X4,X4,X4,X1,X2))) )),
% 1.25/0.52    inference(equality_resolution,[],[f55])).
% 1.25/0.52  fof(f55,plain,(
% 1.25/0.52    ( ! [X4,X2,X3,X1] : (r2_hidden(X4,X3) | k6_enumset1(X4,X4,X4,X4,X4,X4,X1,X2) != X3) )),
% 1.25/0.52    inference(equality_resolution,[],[f45])).
% 1.25/0.52  fof(f45,plain,(
% 1.25/0.52    ( ! [X4,X2,X0,X3,X1] : (X0 != X4 | r2_hidden(X4,X3) | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3) )),
% 1.25/0.52    inference(definition_unfolding,[],[f29,f38])).
% 1.25/0.52  fof(f38,plain,(
% 1.25/0.52    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 1.25/0.52    inference(definition_unfolding,[],[f21,f37])).
% 1.25/0.52  fof(f37,plain,(
% 1.25/0.52    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 1.25/0.52    inference(definition_unfolding,[],[f23,f36])).
% 1.25/0.52  fof(f36,plain,(
% 1.25/0.52    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 1.25/0.52    inference(definition_unfolding,[],[f32,f35])).
% 1.25/0.52  fof(f35,plain,(
% 1.25/0.52    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 1.25/0.52    inference(definition_unfolding,[],[f33,f34])).
% 1.25/0.52  fof(f34,plain,(
% 1.25/0.52    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)) )),
% 1.25/0.52    inference(cnf_transformation,[],[f10])).
% 1.25/0.52  fof(f10,axiom,(
% 1.25/0.52    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).
% 1.25/0.52  fof(f33,plain,(
% 1.25/0.52    ( ! [X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 1.25/0.52    inference(cnf_transformation,[],[f9])).
% 1.25/0.52  fof(f9,axiom,(
% 1.25/0.52    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).
% 1.25/0.52  fof(f32,plain,(
% 1.25/0.52    ( ! [X4,X2,X0,X3,X1] : (k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 1.25/0.52    inference(cnf_transformation,[],[f8])).
% 1.25/0.52  fof(f8,axiom,(
% 1.25/0.52    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).
% 1.25/0.52  fof(f23,plain,(
% 1.25/0.52    ( ! [X2,X0,X3,X1] : (k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 1.25/0.52    inference(cnf_transformation,[],[f7])).
% 1.25/0.52  fof(f7,axiom,(
% 1.25/0.52    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).
% 1.25/0.52  fof(f21,plain,(
% 1.25/0.52    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 1.25/0.52    inference(cnf_transformation,[],[f6])).
% 1.25/0.52  fof(f6,axiom,(
% 1.25/0.52    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).
% 1.25/0.52  fof(f29,plain,(
% 1.25/0.52    ( ! [X4,X2,X0,X3,X1] : (X0 != X4 | r2_hidden(X4,X3) | k1_enumset1(X0,X1,X2) != X3) )),
% 1.25/0.52    inference(cnf_transformation,[],[f15])).
% 1.25/0.52  fof(f15,plain,(
% 1.25/0.52    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 1.25/0.52    inference(ennf_transformation,[],[f2])).
% 1.25/0.52  fof(f2,axiom,(
% 1.25/0.52    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_enumset1)).
% 1.25/0.52  fof(f67,plain,(
% 1.25/0.52    ( ! [X3] : (~r2_hidden(X3,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK1,sK1)) | sK1 = X3) )),
% 1.25/0.52    inference(duplicate_literal_removal,[],[f63])).
% 1.25/0.52  fof(f63,plain,(
% 1.25/0.52    ( ! [X3] : (~r2_hidden(X3,k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK1,sK1)) | sK1 = X3 | sK1 = X3 | sK1 = X3) )),
% 1.25/0.52    inference(superposition,[],[f57,f59])).
% 1.25/0.52  fof(f59,plain,(
% 1.25/0.52    k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK1,sK1)),
% 1.25/0.52    inference(forward_demodulation,[],[f58,f42])).
% 1.25/0.52  fof(f42,plain,(
% 1.25/0.52    ( ! [X2,X0,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) = k2_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) )),
% 1.25/0.52    inference(definition_unfolding,[],[f22,f38,f40,f39])).
% 1.25/0.52  fof(f39,plain,(
% 1.25/0.52    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 1.25/0.52    inference(definition_unfolding,[],[f19,f38])).
% 1.25/0.52  fof(f19,plain,(
% 1.25/0.52    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.25/0.52    inference(cnf_transformation,[],[f5])).
% 1.25/0.52  fof(f5,axiom,(
% 1.25/0.52    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 1.25/0.52  fof(f40,plain,(
% 1.25/0.52    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 1.25/0.52    inference(definition_unfolding,[],[f18,f39])).
% 1.25/0.52  fof(f18,plain,(
% 1.25/0.52    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 1.25/0.52    inference(cnf_transformation,[],[f4])).
% 1.25/0.52  fof(f4,axiom,(
% 1.25/0.52    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 1.25/0.52  fof(f22,plain,(
% 1.25/0.52    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2))) )),
% 1.25/0.52    inference(cnf_transformation,[],[f3])).
% 1.25/0.52  fof(f3,axiom,(
% 1.25/0.52    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2))),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_enumset1)).
% 1.25/0.52  fof(f58,plain,(
% 1.25/0.52    k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k2_xboole_0(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1))),
% 1.25/0.52    inference(resolution,[],[f41,f20])).
% 1.25/0.52  fof(f20,plain,(
% 1.25/0.52    ( ! [X0,X1] : (~r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1) )),
% 1.25/0.52    inference(cnf_transformation,[],[f14])).
% 1.25/0.52  fof(f14,plain,(
% 1.25/0.52    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 1.25/0.52    inference(ennf_transformation,[],[f1])).
% 1.25/0.52  fof(f1,axiom,(
% 1.25/0.52    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 1.25/0.52    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).
% 1.25/0.52  fof(f41,plain,(
% 1.25/0.52    r1_tarski(k6_enumset1(sK0,sK0,sK0,sK0,sK0,sK0,sK0,sK0),k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1))),
% 1.25/0.52    inference(definition_unfolding,[],[f16,f40,f40])).
% 1.25/0.52  fof(f16,plain,(
% 1.25/0.52    r1_tarski(k1_tarski(sK0),k1_tarski(sK1))),
% 1.25/0.52    inference(cnf_transformation,[],[f13])).
% 1.25/0.52  fof(f57,plain,(
% 1.25/0.52    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) | X1 = X4 | X2 = X4 | X0 = X4) )),
% 1.25/0.52    inference(equality_resolution,[],[f46])).
% 1.25/0.52  fof(f46,plain,(
% 1.25/0.52    ( ! [X4,X2,X0,X3,X1] : (X0 = X4 | X1 = X4 | X2 = X4 | ~r2_hidden(X4,X3) | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3) )),
% 1.25/0.52    inference(definition_unfolding,[],[f28,f38])).
% 1.25/0.52  fof(f28,plain,(
% 1.25/0.52    ( ! [X4,X2,X0,X3,X1] : (X0 = X4 | X1 = X4 | X2 = X4 | ~r2_hidden(X4,X3) | k1_enumset1(X0,X1,X2) != X3) )),
% 1.25/0.52    inference(cnf_transformation,[],[f15])).
% 1.25/0.52  % SZS output end Proof for theBenchmark
% 1.25/0.52  % (25823)------------------------------
% 1.25/0.52  % (25823)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.25/0.52  % (25823)Termination reason: Refutation
% 1.25/0.52  
% 1.25/0.52  % (25823)Memory used [KB]: 1791
% 1.25/0.52  % (25823)Time elapsed: 0.105 s
% 1.25/0.52  % (25823)------------------------------
% 1.25/0.52  % (25823)------------------------------
% 1.25/0.53  % (25801)Success in time 0.158 s
%------------------------------------------------------------------------------
