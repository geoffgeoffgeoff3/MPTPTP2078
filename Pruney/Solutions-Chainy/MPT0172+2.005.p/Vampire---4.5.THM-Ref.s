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
% DateTime   : Thu Dec  3 12:33:58 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   16 (  16 expanded)
%              Number of leaves         :    5 (   5 expanded)
%              Depth                    :    6
%              Number of atoms          :   17 (  17 expanded)
%              Number of equality atoms :   16 (  16 expanded)
%              Maximal formula depth    :    6 (   4 average)
%              Maximal term depth       :    2 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f16,plain,(
    $false ),
    inference(trivial_inequality_removal,[],[f15])).

fof(f15,plain,(
    k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1) != k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1) ),
    inference(definition_unfolding,[],[f9,f14])).

fof(f14,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f10,f13])).

fof(f13,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k4_enumset1(X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f11,f12])).

fof(f12,plain,(
    ! [X4,X2,X0,X3,X1] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t73_enumset1)).

fof(f11,plain,(
    ! [X2,X0,X1] : k3_enumset1(X0,X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k3_enumset1(X0,X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t78_enumset1)).

fof(f10,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(f9,plain,(
    k2_tarski(sK0,sK1) != k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,plain,(
    k2_tarski(sK0,sK1) != k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f6,f7])).

fof(f7,plain,
    ( ? [X0,X1] : k2_tarski(X0,X1) != k4_enumset1(X0,X0,X0,X0,X0,X1)
   => k2_tarski(sK0,sK1) != k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1) ),
    introduced(choice_axiom,[])).

fof(f6,plain,(
    ? [X0,X1] : k2_tarski(X0,X1) != k4_enumset1(X0,X0,X0,X0,X0,X1) ),
    inference(ennf_transformation,[],[f5])).

fof(f5,negated_conjecture,(
    ~ ! [X0,X1] : k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1) ),
    inference(negated_conjecture,[],[f4])).

fof(f4,conjecture,(
    ! [X0,X1] : k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t88_enumset1)).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.14  % Command    : run_vampire %s %d
% 0.14/0.34  % Computer   : n013.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 13:36:24 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.21/0.43  % (21068)lrs+11_128_add=large:afr=on:afp=10000:afq=1.2:amm=sco:anc=none:bs=unit_only:cond=on:nwc=1.3:stl=30:sac=on:uhcvi=on_236 on theBenchmark
% 0.21/0.43  % (21068)Refutation found. Thanks to Tanya!
% 0.21/0.43  % SZS status Theorem for theBenchmark
% 0.21/0.43  % SZS output start Proof for theBenchmark
% 0.21/0.43  fof(f16,plain,(
% 0.21/0.43    $false),
% 0.21/0.43    inference(trivial_inequality_removal,[],[f15])).
% 0.21/0.43  fof(f15,plain,(
% 0.21/0.43    k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1) != k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1)),
% 0.21/0.43    inference(definition_unfolding,[],[f9,f14])).
% 0.21/0.43  fof(f14,plain,(
% 0.21/0.43    ( ! [X0,X1] : (k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1)) )),
% 0.21/0.43    inference(definition_unfolding,[],[f10,f13])).
% 0.21/0.43  fof(f13,plain,(
% 0.21/0.43    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k4_enumset1(X0,X0,X0,X0,X1,X2)) )),
% 0.21/0.43    inference(definition_unfolding,[],[f11,f12])).
% 0.21/0.43  fof(f12,plain,(
% 0.21/0.43    ( ! [X4,X2,X0,X3,X1] : (k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 0.21/0.43    inference(cnf_transformation,[],[f2])).
% 0.21/0.43  fof(f2,axiom,(
% 0.21/0.43    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)),
% 0.21/0.43    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t73_enumset1)).
% 0.21/0.43  fof(f11,plain,(
% 0.21/0.43    ( ! [X2,X0,X1] : (k3_enumset1(X0,X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 0.21/0.43    inference(cnf_transformation,[],[f3])).
% 0.21/0.43  fof(f3,axiom,(
% 0.21/0.43    ! [X0,X1,X2] : k3_enumset1(X0,X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 0.21/0.43    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t78_enumset1)).
% 0.21/0.43  fof(f10,plain,(
% 0.21/0.43    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 0.21/0.43    inference(cnf_transformation,[],[f1])).
% 0.21/0.43  fof(f1,axiom,(
% 0.21/0.43    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 0.21/0.43    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).
% 0.21/0.43  fof(f9,plain,(
% 0.21/0.43    k2_tarski(sK0,sK1) != k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1)),
% 0.21/0.43    inference(cnf_transformation,[],[f8])).
% 0.21/0.43  fof(f8,plain,(
% 0.21/0.43    k2_tarski(sK0,sK1) != k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1)),
% 0.21/0.43    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f6,f7])).
% 0.21/0.43  fof(f7,plain,(
% 0.21/0.43    ? [X0,X1] : k2_tarski(X0,X1) != k4_enumset1(X0,X0,X0,X0,X0,X1) => k2_tarski(sK0,sK1) != k4_enumset1(sK0,sK0,sK0,sK0,sK0,sK1)),
% 0.21/0.43    introduced(choice_axiom,[])).
% 0.21/0.43  fof(f6,plain,(
% 0.21/0.43    ? [X0,X1] : k2_tarski(X0,X1) != k4_enumset1(X0,X0,X0,X0,X0,X1)),
% 0.21/0.43    inference(ennf_transformation,[],[f5])).
% 0.21/0.43  fof(f5,negated_conjecture,(
% 0.21/0.43    ~! [X0,X1] : k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1)),
% 0.21/0.43    inference(negated_conjecture,[],[f4])).
% 0.21/0.43  fof(f4,conjecture,(
% 0.21/0.43    ! [X0,X1] : k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1)),
% 0.21/0.43    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t88_enumset1)).
% 0.21/0.43  % SZS output end Proof for theBenchmark
% 0.21/0.43  % (21068)------------------------------
% 0.21/0.43  % (21068)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.21/0.43  % (21068)Termination reason: Refutation
% 0.21/0.43  
% 0.21/0.43  % (21068)Memory used [KB]: 6012
% 0.21/0.43  % (21068)Time elapsed: 0.003 s
% 0.21/0.43  % (21068)------------------------------
% 0.21/0.43  % (21068)------------------------------
% 0.21/0.43  % (21053)Success in time 0.072 s
%------------------------------------------------------------------------------
