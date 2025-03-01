%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:38:18 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   47 ( 162 expanded)
%              Number of leaves         :   10 (  51 expanded)
%              Depth                    :   14
%              Number of atoms          :   80 ( 241 expanded)
%              Number of equality atoms :   47 ( 199 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f178,plain,(
    $false ),
    inference(subsumption_resolution,[],[f177,f15])).

fof(f15,plain,(
    sK1 != sK2 ),
    inference(cnf_transformation,[],[f12])).

fof(f12,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & X1 != X2
      & k1_tarski(X0) = k2_xboole_0(X1,X2) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ~ ( k1_xboole_0 != X2
          & k1_xboole_0 != X1
          & X1 != X2
          & k1_tarski(X0) = k2_xboole_0(X1,X2) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f10,conjecture,(
    ! [X0,X1,X2] :
      ~ ( k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & X1 != X2
        & k1_tarski(X0) = k2_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_zfmisc_1)).

fof(f177,plain,(
    sK1 = sK2 ),
    inference(forward_demodulation,[],[f176,f147])).

fof(f147,plain,(
    sK1 = k3_enumset1(sK0,sK0,sK0,sK0,sK0) ),
    inference(subsumption_resolution,[],[f145,f16])).

fof(f16,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f12])).

fof(f145,plain,
    ( sK1 = k3_enumset1(sK0,sK0,sK0,sK0,sK0)
    | k1_xboole_0 = sK1 ),
    inference(resolution,[],[f44,f59])).

fof(f59,plain,(
    r1_tarski(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) ),
    inference(superposition,[],[f41,f40])).

fof(f40,plain,(
    k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k3_tarski(k3_enumset1(sK1,sK1,sK1,sK1,sK2)) ),
    inference(definition_unfolding,[],[f14,f39,f38])).

fof(f38,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f20,f37])).

fof(f37,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f21,f36])).

fof(f36,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f28,f35])).

fof(f35,plain,(
    ! [X2,X0,X3,X1] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(f28,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(f21,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(f20,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(f39,plain,(
    ! [X0] : k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f18,f37])).

fof(f18,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(f14,plain,(
    k1_tarski(sK0) = k2_xboole_0(sK1,sK2) ),
    inference(cnf_transformation,[],[f12])).

fof(f41,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k3_enumset1(X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f19,f38])).

fof(f19,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

fof(f44,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(X0,k3_enumset1(X1,X1,X1,X1,X1))
      | k3_enumset1(X1,X1,X1,X1,X1) = X0
      | k1_xboole_0 = X0 ) ),
    inference(definition_unfolding,[],[f25,f39,f39])).

fof(f25,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X0
      | k1_tarski(X1) = X0
      | ~ r1_tarski(X0,k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <=> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l3_zfmisc_1)).

fof(f176,plain,(
    sK2 = k3_enumset1(sK0,sK0,sK0,sK0,sK0) ),
    inference(subsumption_resolution,[],[f146,f17])).

fof(f17,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f12])).

fof(f146,plain,
    ( sK2 = k3_enumset1(sK0,sK0,sK0,sK0,sK0)
    | k1_xboole_0 = sK2 ),
    inference(resolution,[],[f44,f73])).

fof(f73,plain,(
    r1_tarski(sK2,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) ),
    inference(superposition,[],[f72,f40])).

fof(f72,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k3_enumset1(X1,X1,X1,X1,X0))) ),
    inference(duplicate_literal_removal,[],[f67])).

fof(f67,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k3_tarski(k3_enumset1(X1,X1,X1,X1,X0)))
      | r1_tarski(X0,k3_tarski(k3_enumset1(X1,X1,X1,X1,X0))) ) ),
    inference(resolution,[],[f63,f24])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(sK3(X0,X1),X1)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(f63,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(sK3(X0,X1),k3_tarski(k3_enumset1(X2,X2,X2,X2,X0)))
      | r1_tarski(X0,X1) ) ),
    inference(resolution,[],[f53,f23])).

fof(f23,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK3(X0,X1),X0)
      | r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f53,plain,(
    ! [X0,X3,X1] :
      ( ~ r2_hidden(X3,X1)
      | r2_hidden(X3,k3_tarski(k3_enumset1(X0,X0,X0,X0,X1))) ) ),
    inference(equality_resolution,[],[f45])).

fof(f45,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ r2_hidden(X3,X1)
      | r2_hidden(X3,X2)
      | k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f34,f38])).

fof(f34,plain,(
    ! [X2,X0,X3,X1] :
      ( ~ r2_hidden(X3,X1)
      | r2_hidden(X3,X2)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_xboole_0)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n001.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:05:14 EST 2020
% 0.20/0.34  % CPUTime    : 
% 0.22/0.50  % (17896)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 0.22/0.51  % (17899)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 0.22/0.51  % (17881)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 0.22/0.52  % (17881)Refutation found. Thanks to Tanya!
% 0.22/0.52  % SZS status Theorem for theBenchmark
% 0.22/0.52  % SZS output start Proof for theBenchmark
% 0.22/0.52  fof(f178,plain,(
% 0.22/0.52    $false),
% 0.22/0.52    inference(subsumption_resolution,[],[f177,f15])).
% 0.22/0.52  fof(f15,plain,(
% 0.22/0.52    sK1 != sK2),
% 0.22/0.52    inference(cnf_transformation,[],[f12])).
% 0.22/0.52  fof(f12,plain,(
% 0.22/0.52    ? [X0,X1,X2] : (k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k1_tarski(X0) = k2_xboole_0(X1,X2))),
% 0.22/0.52    inference(ennf_transformation,[],[f11])).
% 0.22/0.52  fof(f11,negated_conjecture,(
% 0.22/0.52    ~! [X0,X1,X2] : ~(k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k1_tarski(X0) = k2_xboole_0(X1,X2))),
% 0.22/0.52    inference(negated_conjecture,[],[f10])).
% 0.22/0.52  fof(f10,conjecture,(
% 0.22/0.52    ! [X0,X1,X2] : ~(k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k1_tarski(X0) = k2_xboole_0(X1,X2))),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_zfmisc_1)).
% 0.22/0.52  fof(f177,plain,(
% 0.22/0.52    sK1 = sK2),
% 0.22/0.52    inference(forward_demodulation,[],[f176,f147])).
% 0.22/0.52  fof(f147,plain,(
% 0.22/0.52    sK1 = k3_enumset1(sK0,sK0,sK0,sK0,sK0)),
% 0.22/0.52    inference(subsumption_resolution,[],[f145,f16])).
% 0.22/0.52  fof(f16,plain,(
% 0.22/0.52    k1_xboole_0 != sK1),
% 0.22/0.52    inference(cnf_transformation,[],[f12])).
% 0.22/0.52  fof(f145,plain,(
% 0.22/0.52    sK1 = k3_enumset1(sK0,sK0,sK0,sK0,sK0) | k1_xboole_0 = sK1),
% 0.22/0.52    inference(resolution,[],[f44,f59])).
% 0.22/0.52  fof(f59,plain,(
% 0.22/0.52    r1_tarski(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))),
% 0.22/0.52    inference(superposition,[],[f41,f40])).
% 0.22/0.52  fof(f40,plain,(
% 0.22/0.52    k3_enumset1(sK0,sK0,sK0,sK0,sK0) = k3_tarski(k3_enumset1(sK1,sK1,sK1,sK1,sK2))),
% 0.22/0.52    inference(definition_unfolding,[],[f14,f39,f38])).
% 0.22/0.52  fof(f38,plain,(
% 0.22/0.52    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k3_enumset1(X0,X0,X0,X0,X1))) )),
% 0.22/0.52    inference(definition_unfolding,[],[f20,f37])).
% 0.22/0.52  fof(f37,plain,(
% 0.22/0.52    ( ! [X0,X1] : (k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1)) )),
% 0.22/0.52    inference(definition_unfolding,[],[f21,f36])).
% 0.22/0.52  fof(f36,plain,(
% 0.22/0.52    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2)) )),
% 0.22/0.52    inference(definition_unfolding,[],[f28,f35])).
% 0.22/0.52  fof(f35,plain,(
% 0.22/0.52    ( ! [X2,X0,X3,X1] : (k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 0.22/0.52    inference(cnf_transformation,[],[f7])).
% 0.22/0.52  fof(f7,axiom,(
% 0.22/0.52    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).
% 0.22/0.52  fof(f28,plain,(
% 0.22/0.52    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 0.22/0.52    inference(cnf_transformation,[],[f6])).
% 0.22/0.52  fof(f6,axiom,(
% 0.22/0.52    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).
% 0.22/0.52  fof(f21,plain,(
% 0.22/0.52    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 0.22/0.52    inference(cnf_transformation,[],[f5])).
% 0.22/0.52  fof(f5,axiom,(
% 0.22/0.52    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).
% 0.22/0.52  fof(f20,plain,(
% 0.22/0.52    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 0.22/0.52    inference(cnf_transformation,[],[f9])).
% 0.22/0.52  fof(f9,axiom,(
% 0.22/0.52    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).
% 0.22/0.52  fof(f39,plain,(
% 0.22/0.52    ( ! [X0] : (k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0)) )),
% 0.22/0.52    inference(definition_unfolding,[],[f18,f37])).
% 0.22/0.52  fof(f18,plain,(
% 0.22/0.52    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.22/0.52    inference(cnf_transformation,[],[f4])).
% 0.22/0.52  fof(f4,axiom,(
% 0.22/0.52    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).
% 0.22/0.52  fof(f14,plain,(
% 0.22/0.52    k1_tarski(sK0) = k2_xboole_0(sK1,sK2)),
% 0.22/0.52    inference(cnf_transformation,[],[f12])).
% 0.22/0.52  fof(f41,plain,(
% 0.22/0.52    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)))) )),
% 0.22/0.52    inference(definition_unfolding,[],[f19,f38])).
% 0.22/0.52  fof(f19,plain,(
% 0.22/0.52    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 0.22/0.52    inference(cnf_transformation,[],[f3])).
% 0.22/0.52  fof(f3,axiom,(
% 0.22/0.52    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).
% 0.22/0.52  fof(f44,plain,(
% 0.22/0.52    ( ! [X0,X1] : (~r1_tarski(X0,k3_enumset1(X1,X1,X1,X1,X1)) | k3_enumset1(X1,X1,X1,X1,X1) = X0 | k1_xboole_0 = X0) )),
% 0.22/0.52    inference(definition_unfolding,[],[f25,f39,f39])).
% 0.22/0.52  fof(f25,plain,(
% 0.22/0.52    ( ! [X0,X1] : (k1_xboole_0 = X0 | k1_tarski(X1) = X0 | ~r1_tarski(X0,k1_tarski(X1))) )),
% 0.22/0.52    inference(cnf_transformation,[],[f8])).
% 0.22/0.52  fof(f8,axiom,(
% 0.22/0.52    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l3_zfmisc_1)).
% 0.22/0.52  fof(f176,plain,(
% 0.22/0.52    sK2 = k3_enumset1(sK0,sK0,sK0,sK0,sK0)),
% 0.22/0.52    inference(subsumption_resolution,[],[f146,f17])).
% 0.22/0.52  fof(f17,plain,(
% 0.22/0.52    k1_xboole_0 != sK2),
% 0.22/0.52    inference(cnf_transformation,[],[f12])).
% 0.22/0.52  fof(f146,plain,(
% 0.22/0.52    sK2 = k3_enumset1(sK0,sK0,sK0,sK0,sK0) | k1_xboole_0 = sK2),
% 0.22/0.52    inference(resolution,[],[f44,f73])).
% 0.22/0.52  fof(f73,plain,(
% 0.22/0.52    r1_tarski(sK2,k3_enumset1(sK0,sK0,sK0,sK0,sK0))),
% 0.22/0.52    inference(superposition,[],[f72,f40])).
% 0.22/0.52  fof(f72,plain,(
% 0.22/0.52    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k3_enumset1(X1,X1,X1,X1,X0)))) )),
% 0.22/0.52    inference(duplicate_literal_removal,[],[f67])).
% 0.22/0.52  fof(f67,plain,(
% 0.22/0.52    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k3_enumset1(X1,X1,X1,X1,X0))) | r1_tarski(X0,k3_tarski(k3_enumset1(X1,X1,X1,X1,X0)))) )),
% 0.22/0.52    inference(resolution,[],[f63,f24])).
% 0.22/0.52  fof(f24,plain,(
% 0.22/0.52    ( ! [X0,X1] : (~r2_hidden(sK3(X0,X1),X1) | r1_tarski(X0,X1)) )),
% 0.22/0.52    inference(cnf_transformation,[],[f13])).
% 0.22/0.52  fof(f13,plain,(
% 0.22/0.52    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 0.22/0.52    inference(ennf_transformation,[],[f1])).
% 0.22/0.52  fof(f1,axiom,(
% 0.22/0.52    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).
% 0.22/0.52  fof(f63,plain,(
% 0.22/0.52    ( ! [X2,X0,X1] : (r2_hidden(sK3(X0,X1),k3_tarski(k3_enumset1(X2,X2,X2,X2,X0))) | r1_tarski(X0,X1)) )),
% 0.22/0.52    inference(resolution,[],[f53,f23])).
% 0.22/0.52  fof(f23,plain,(
% 0.22/0.52    ( ! [X0,X1] : (r2_hidden(sK3(X0,X1),X0) | r1_tarski(X0,X1)) )),
% 0.22/0.52    inference(cnf_transformation,[],[f13])).
% 0.22/0.52  fof(f53,plain,(
% 0.22/0.52    ( ! [X0,X3,X1] : (~r2_hidden(X3,X1) | r2_hidden(X3,k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)))) )),
% 0.22/0.52    inference(equality_resolution,[],[f45])).
% 0.22/0.52  fof(f45,plain,(
% 0.22/0.52    ( ! [X2,X0,X3,X1] : (~r2_hidden(X3,X1) | r2_hidden(X3,X2) | k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)) != X2) )),
% 0.22/0.52    inference(definition_unfolding,[],[f34,f38])).
% 0.22/0.52  fof(f34,plain,(
% 0.22/0.52    ( ! [X2,X0,X3,X1] : (~r2_hidden(X3,X1) | r2_hidden(X3,X2) | k2_xboole_0(X0,X1) != X2) )),
% 0.22/0.52    inference(cnf_transformation,[],[f2])).
% 0.22/0.52  fof(f2,axiom,(
% 0.22/0.52    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 0.22/0.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_xboole_0)).
% 0.22/0.52  % SZS output end Proof for theBenchmark
% 0.22/0.52  % (17881)------------------------------
% 0.22/0.52  % (17881)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.52  % (17881)Termination reason: Refutation
% 0.22/0.52  
% 0.22/0.52  % (17881)Memory used [KB]: 6396
% 0.22/0.52  % (17881)Time elapsed: 0.094 s
% 0.22/0.52  % (17881)------------------------------
% 0.22/0.52  % (17881)------------------------------
% 0.22/0.52  % (17874)Success in time 0.158 s
%------------------------------------------------------------------------------
