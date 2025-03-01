%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:30:11 EST 2020

% Result     : Theorem 0.15s
% Output     : Refutation 0.15s
% Verified   : 
% Statistics : Number of formulae       :   20 (  20 expanded)
%              Number of leaves         :    6 (   6 expanded)
%              Depth                    :    9
%              Number of atoms          :   25 (  25 expanded)
%              Number of equality atoms :   17 (  17 expanded)
%              Maximal formula depth    :    5 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f21,plain,(
    $false ),
    inference(resolution,[],[f20,f12])).

fof(f12,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(f20,plain,(
    ~ r1_tarski(k4_xboole_0(sK0,sK1),sK0) ),
    inference(trivial_inequality_removal,[],[f19])).

fof(f19,plain,
    ( sK0 != sK0
    | ~ r1_tarski(k4_xboole_0(sK0,sK1),sK0) ),
    inference(superposition,[],[f17,f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t45_xboole_1)).

fof(f17,plain,(
    sK0 != k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) ),
    inference(superposition,[],[f16,f13])).

fof(f13,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(f16,plain,(
    sK0 != k2_xboole_0(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)),k4_xboole_0(sK0,sK1)) ),
    inference(definition_unfolding,[],[f11,f14])).

fof(f14,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f11,plain,(
    sK0 != k2_xboole_0(k3_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,plain,(
    sK0 != k2_xboole_0(k3_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f7,f9])).

fof(f9,plain,
    ( ? [X0,X1] : k2_xboole_0(k3_xboole_0(X0,X1),k4_xboole_0(X0,X1)) != X0
   => sK0 != k2_xboole_0(k3_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1)) ),
    introduced(choice_axiom,[])).

fof(f7,plain,(
    ? [X0,X1] : k2_xboole_0(k3_xboole_0(X0,X1),k4_xboole_0(X0,X1)) != X0 ),
    inference(ennf_transformation,[],[f6])).

fof(f6,negated_conjecture,(
    ~ ! [X0,X1] : k2_xboole_0(k3_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = X0 ),
    inference(negated_conjecture,[],[f5])).

fof(f5,conjecture,(
    ! [X0,X1] : k2_xboole_0(k3_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t51_xboole_1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.14/0.14  % Command    : run_vampire %s %d
% 0.15/0.35  % Computer   : n002.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 17:17:07 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.15/0.42  % (25778)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.15/0.42  % (25778)Refutation found. Thanks to Tanya!
% 0.15/0.42  % SZS status Theorem for theBenchmark
% 0.15/0.42  % SZS output start Proof for theBenchmark
% 0.15/0.42  fof(f21,plain,(
% 0.15/0.42    $false),
% 0.15/0.42    inference(resolution,[],[f20,f12])).
% 0.15/0.42  fof(f12,plain,(
% 0.15/0.42    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 0.15/0.42    inference(cnf_transformation,[],[f2])).
% 0.15/0.42  fof(f2,axiom,(
% 0.15/0.42    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 0.15/0.42    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).
% 0.15/0.42  fof(f20,plain,(
% 0.15/0.42    ~r1_tarski(k4_xboole_0(sK0,sK1),sK0)),
% 0.15/0.42    inference(trivial_inequality_removal,[],[f19])).
% 0.15/0.42  fof(f19,plain,(
% 0.15/0.42    sK0 != sK0 | ~r1_tarski(k4_xboole_0(sK0,sK1),sK0)),
% 0.15/0.42    inference(superposition,[],[f17,f15])).
% 0.15/0.42  fof(f15,plain,(
% 0.15/0.42    ( ! [X0,X1] : (k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1 | ~r1_tarski(X0,X1)) )),
% 0.15/0.42    inference(cnf_transformation,[],[f8])).
% 0.15/0.42  fof(f8,plain,(
% 0.15/0.42    ! [X0,X1] : (k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1 | ~r1_tarski(X0,X1))),
% 0.15/0.42    inference(ennf_transformation,[],[f3])).
% 0.15/0.42  fof(f3,axiom,(
% 0.15/0.42    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,k4_xboole_0(X1,X0)) = X1)),
% 0.15/0.42    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t45_xboole_1)).
% 0.15/0.42  fof(f17,plain,(
% 0.15/0.42    sK0 != k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)))),
% 0.15/0.42    inference(superposition,[],[f16,f13])).
% 0.15/0.42  fof(f13,plain,(
% 0.15/0.42    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 0.15/0.42    inference(cnf_transformation,[],[f1])).
% 0.15/0.42  fof(f1,axiom,(
% 0.15/0.42    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 0.15/0.42    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).
% 0.15/0.42  fof(f16,plain,(
% 0.15/0.42    sK0 != k2_xboole_0(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)),k4_xboole_0(sK0,sK1))),
% 0.15/0.42    inference(definition_unfolding,[],[f11,f14])).
% 0.15/0.42  fof(f14,plain,(
% 0.15/0.42    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)) )),
% 0.15/0.42    inference(cnf_transformation,[],[f4])).
% 0.15/0.42  fof(f4,axiom,(
% 0.15/0.42    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)),
% 0.15/0.42    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).
% 0.15/0.42  fof(f11,plain,(
% 0.15/0.42    sK0 != k2_xboole_0(k3_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1))),
% 0.15/0.42    inference(cnf_transformation,[],[f10])).
% 0.15/0.42  fof(f10,plain,(
% 0.15/0.42    sK0 != k2_xboole_0(k3_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1))),
% 0.15/0.42    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f7,f9])).
% 0.15/0.42  fof(f9,plain,(
% 0.15/0.42    ? [X0,X1] : k2_xboole_0(k3_xboole_0(X0,X1),k4_xboole_0(X0,X1)) != X0 => sK0 != k2_xboole_0(k3_xboole_0(sK0,sK1),k4_xboole_0(sK0,sK1))),
% 0.15/0.42    introduced(choice_axiom,[])).
% 0.15/0.42  fof(f7,plain,(
% 0.15/0.42    ? [X0,X1] : k2_xboole_0(k3_xboole_0(X0,X1),k4_xboole_0(X0,X1)) != X0),
% 0.15/0.42    inference(ennf_transformation,[],[f6])).
% 0.15/0.42  fof(f6,negated_conjecture,(
% 0.15/0.42    ~! [X0,X1] : k2_xboole_0(k3_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = X0),
% 0.15/0.42    inference(negated_conjecture,[],[f5])).
% 0.15/0.42  fof(f5,conjecture,(
% 0.15/0.42    ! [X0,X1] : k2_xboole_0(k3_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = X0),
% 0.15/0.42    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t51_xboole_1)).
% 0.15/0.42  % SZS output end Proof for theBenchmark
% 0.15/0.42  % (25778)------------------------------
% 0.15/0.42  % (25778)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.15/0.42  % (25778)Termination reason: Refutation
% 0.15/0.42  
% 0.15/0.42  % (25778)Memory used [KB]: 6012
% 0.15/0.42  % (25778)Time elapsed: 0.004 s
% 0.15/0.42  % (25778)------------------------------
% 0.15/0.42  % (25778)------------------------------
% 0.21/0.43  % (25771)Success in time 0.072 s
%------------------------------------------------------------------------------
