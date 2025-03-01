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
% DateTime   : Thu Dec  3 12:39:23 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   38 (  65 expanded)
%              Number of leaves         :   10 (  19 expanded)
%              Depth                    :   10
%              Number of atoms          :   54 (  86 expanded)
%              Number of equality atoms :   24 (  56 expanded)
%              Maximal formula depth    :    5 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f70,plain,(
    $false ),
    inference(subsumption_resolution,[],[f69,f67])).

fof(f67,plain,(
    ! [X0] : r2_hidden(sK0,X0) ),
    inference(subsumption_resolution,[],[f66,f22])).

fof(f22,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(f66,plain,(
    ! [X0] :
      ( ~ r1_tarski(k1_xboole_0,X0)
      | r2_hidden(sK0,X0) ) ),
    inference(superposition,[],[f34,f57])).

fof(f57,plain,(
    k1_xboole_0 = k1_enumset1(sK0,sK0,sK0) ),
    inference(trivial_inequality_removal,[],[f54])).

fof(f54,plain,
    ( k1_xboole_0 != k1_xboole_0
    | k1_xboole_0 = k1_enumset1(sK0,sK0,sK0) ),
    inference(superposition,[],[f29,f33])).

fof(f33,plain,(
    k1_xboole_0 = k2_xboole_0(k1_enumset1(sK0,sK0,sK0),sK1) ),
    inference(definition_unfolding,[],[f21,f32])).

fof(f32,plain,(
    ! [X0] : k1_tarski(X0) = k1_enumset1(X0,X0,X0) ),
    inference(definition_unfolding,[],[f24,f27])).

fof(f27,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(f24,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(f21,plain,(
    k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f14,f19])).

fof(f19,plain,
    ( ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1)
   => k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    inference(negated_conjecture,[],[f11])).

fof(f11,conjecture,(
    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_zfmisc_1)).

fof(f29,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) != k1_xboole_0
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f16])).

fof(f16,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X0
      | k2_xboole_0(X0,X1) != k1_xboole_0 ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = k1_xboole_0
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t15_xboole_1)).

% (7723)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
fof(f34,plain,(
    ! [X0,X1] :
      ( ~ r1_tarski(k1_enumset1(X0,X0,X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f30,f32])).

fof(f30,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | ~ r1_tarski(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | ~ r1_tarski(k1_tarski(X0),X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
     => r2_hidden(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l1_zfmisc_1)).

fof(f69,plain,(
    ! [X0] : ~ r2_hidden(sK0,X0) ),
    inference(subsumption_resolution,[],[f68,f36])).

fof(f36,plain,(
    ! [X0] : r1_xboole_0(k1_xboole_0,X0) ),
    inference(superposition,[],[f25,f23])).

fof(f23,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_boole)).

fof(f25,plain,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_xboole_1)).

fof(f68,plain,(
    ! [X0] :
      ( ~ r1_xboole_0(k1_xboole_0,X0)
      | ~ r2_hidden(sK0,X0) ) ),
    inference(superposition,[],[f35,f57])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(k1_enumset1(X0,X0,X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f31,f32])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | ~ r1_xboole_0(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | ~ r1_xboole_0(k1_tarski(X0),X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] :
      ~ ( r2_hidden(X0,X1)
        & r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l24_zfmisc_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n013.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:47:54 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.21/0.41  % (7731)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.21/0.41  % (7731)Refutation found. Thanks to Tanya!
% 0.21/0.41  % SZS status Theorem for theBenchmark
% 0.21/0.41  % SZS output start Proof for theBenchmark
% 0.21/0.41  fof(f70,plain,(
% 0.21/0.41    $false),
% 0.21/0.41    inference(subsumption_resolution,[],[f69,f67])).
% 0.21/0.41  fof(f67,plain,(
% 0.21/0.41    ( ! [X0] : (r2_hidden(sK0,X0)) )),
% 0.21/0.41    inference(subsumption_resolution,[],[f66,f22])).
% 0.21/0.41  fof(f22,plain,(
% 0.21/0.41    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 0.21/0.41    inference(cnf_transformation,[],[f4])).
% 0.21/0.41  fof(f4,axiom,(
% 0.21/0.41    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 0.21/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).
% 0.21/0.41  fof(f66,plain,(
% 0.21/0.41    ( ! [X0] : (~r1_tarski(k1_xboole_0,X0) | r2_hidden(sK0,X0)) )),
% 0.21/0.41    inference(superposition,[],[f34,f57])).
% 0.21/0.41  fof(f57,plain,(
% 0.21/0.41    k1_xboole_0 = k1_enumset1(sK0,sK0,sK0)),
% 0.21/0.41    inference(trivial_inequality_removal,[],[f54])).
% 0.21/0.41  fof(f54,plain,(
% 0.21/0.41    k1_xboole_0 != k1_xboole_0 | k1_xboole_0 = k1_enumset1(sK0,sK0,sK0)),
% 0.21/0.41    inference(superposition,[],[f29,f33])).
% 0.21/0.41  fof(f33,plain,(
% 0.21/0.41    k1_xboole_0 = k2_xboole_0(k1_enumset1(sK0,sK0,sK0),sK1)),
% 0.21/0.41    inference(definition_unfolding,[],[f21,f32])).
% 0.21/0.41  fof(f32,plain,(
% 0.21/0.41    ( ! [X0] : (k1_tarski(X0) = k1_enumset1(X0,X0,X0)) )),
% 0.21/0.41    inference(definition_unfolding,[],[f24,f27])).
% 0.21/0.41  fof(f27,plain,(
% 0.21/0.41    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 0.21/0.41    inference(cnf_transformation,[],[f8])).
% 0.21/0.41  fof(f8,axiom,(
% 0.21/0.41    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 0.21/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).
% 0.21/0.41  fof(f24,plain,(
% 0.21/0.41    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.21/0.41    inference(cnf_transformation,[],[f7])).
% 0.21/0.41  fof(f7,axiom,(
% 0.21/0.41    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.21/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).
% 0.21/0.41  fof(f21,plain,(
% 0.21/0.41    k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1)),
% 0.21/0.41    inference(cnf_transformation,[],[f20])).
% 0.21/0.41  fof(f20,plain,(
% 0.21/0.41    k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1)),
% 0.21/0.41    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f14,f19])).
% 0.21/0.41  fof(f19,plain,(
% 0.21/0.41    ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1) => k1_xboole_0 = k2_xboole_0(k1_tarski(sK0),sK1)),
% 0.21/0.41    introduced(choice_axiom,[])).
% 0.21/0.41  fof(f14,plain,(
% 0.21/0.41    ? [X0,X1] : k1_xboole_0 = k2_xboole_0(k1_tarski(X0),X1)),
% 0.21/0.41    inference(ennf_transformation,[],[f12])).
% 0.21/0.41  fof(f12,negated_conjecture,(
% 0.21/0.41    ~! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)),
% 0.21/0.41    inference(negated_conjecture,[],[f11])).
% 0.21/0.41  fof(f11,conjecture,(
% 0.21/0.41    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)),
% 0.21/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t49_zfmisc_1)).
% 0.21/0.41  fof(f29,plain,(
% 0.21/0.41    ( ! [X0,X1] : (k2_xboole_0(X0,X1) != k1_xboole_0 | k1_xboole_0 = X0) )),
% 0.21/0.41    inference(cnf_transformation,[],[f16])).
% 0.21/0.41  fof(f16,plain,(
% 0.21/0.41    ! [X0,X1] : (k1_xboole_0 = X0 | k2_xboole_0(X0,X1) != k1_xboole_0)),
% 0.21/0.41    inference(ennf_transformation,[],[f3])).
% 0.21/0.41  fof(f3,axiom,(
% 0.21/0.41    ! [X0,X1] : (k2_xboole_0(X0,X1) = k1_xboole_0 => k1_xboole_0 = X0)),
% 0.21/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t15_xboole_1)).
% 0.21/0.41  % (7723)dis+11_5:4_acc=on:add=large:afr=on:afp=4000:afq=2.0:amm=off:anc=none:ccuc=small_ones:fsr=off:irw=on:nm=32:nwc=2.5:nicw=on:urr=on:updr=off_10 on theBenchmark
% 0.21/0.41  fof(f34,plain,(
% 0.21/0.41    ( ! [X0,X1] : (~r1_tarski(k1_enumset1(X0,X0,X0),X1) | r2_hidden(X0,X1)) )),
% 0.21/0.41    inference(definition_unfolding,[],[f30,f32])).
% 0.21/0.41  fof(f30,plain,(
% 0.21/0.41    ( ! [X0,X1] : (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)) )),
% 0.21/0.41    inference(cnf_transformation,[],[f17])).
% 0.21/0.41  fof(f17,plain,(
% 0.21/0.41    ! [X0,X1] : (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1))),
% 0.21/0.41    inference(ennf_transformation,[],[f13])).
% 0.21/0.41  fof(f13,plain,(
% 0.21/0.41    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) => r2_hidden(X0,X1))),
% 0.21/0.41    inference(unused_predicate_definition_removal,[],[f9])).
% 0.21/0.41  fof(f9,axiom,(
% 0.21/0.41    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 0.21/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l1_zfmisc_1)).
% 0.21/0.41  fof(f69,plain,(
% 0.21/0.41    ( ! [X0] : (~r2_hidden(sK0,X0)) )),
% 0.21/0.41    inference(subsumption_resolution,[],[f68,f36])).
% 0.21/0.41  fof(f36,plain,(
% 0.21/0.41    ( ! [X0] : (r1_xboole_0(k1_xboole_0,X0)) )),
% 0.21/0.41    inference(superposition,[],[f25,f23])).
% 0.21/0.41  fof(f23,plain,(
% 0.21/0.41    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 0.21/0.41    inference(cnf_transformation,[],[f5])).
% 0.21/0.41  fof(f5,axiom,(
% 0.21/0.41    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)),
% 0.21/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t4_boole)).
% 0.21/0.41  fof(f25,plain,(
% 0.21/0.41    ( ! [X0,X1] : (r1_xboole_0(k4_xboole_0(X0,X1),X1)) )),
% 0.21/0.41    inference(cnf_transformation,[],[f6])).
% 0.21/0.41  fof(f6,axiom,(
% 0.21/0.41    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1)),
% 0.21/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_xboole_1)).
% 0.21/0.41  fof(f68,plain,(
% 0.21/0.41    ( ! [X0] : (~r1_xboole_0(k1_xboole_0,X0) | ~r2_hidden(sK0,X0)) )),
% 0.21/0.41    inference(superposition,[],[f35,f57])).
% 0.21/0.41  fof(f35,plain,(
% 0.21/0.41    ( ! [X0,X1] : (~r1_xboole_0(k1_enumset1(X0,X0,X0),X1) | ~r2_hidden(X0,X1)) )),
% 0.21/0.41    inference(definition_unfolding,[],[f31,f32])).
% 0.21/0.41  fof(f31,plain,(
% 0.21/0.41    ( ! [X0,X1] : (~r2_hidden(X0,X1) | ~r1_xboole_0(k1_tarski(X0),X1)) )),
% 0.21/0.41    inference(cnf_transformation,[],[f18])).
% 0.21/0.41  fof(f18,plain,(
% 0.21/0.41    ! [X0,X1] : (~r2_hidden(X0,X1) | ~r1_xboole_0(k1_tarski(X0),X1))),
% 0.21/0.41    inference(ennf_transformation,[],[f10])).
% 0.21/0.41  fof(f10,axiom,(
% 0.21/0.41    ! [X0,X1] : ~(r2_hidden(X0,X1) & r1_xboole_0(k1_tarski(X0),X1))),
% 0.21/0.41    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l24_zfmisc_1)).
% 0.21/0.41  % SZS output end Proof for theBenchmark
% 0.21/0.41  % (7731)------------------------------
% 0.21/0.41  % (7731)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.41  % (7731)Termination reason: Refutation
% 0.21/0.41  
% 0.21/0.41  % (7731)Memory used [KB]: 6140
% 0.21/0.41  % (7731)Time elapsed: 0.006 s
% 0.21/0.41  % (7731)------------------------------
% 0.21/0.41  % (7731)------------------------------
% 0.21/0.42  % (7716)Success in time 0.066 s
%------------------------------------------------------------------------------
