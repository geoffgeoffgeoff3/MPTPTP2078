%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:41:13 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   66 ( 134 expanded)
%              Number of leaves         :   14 (  42 expanded)
%              Depth                    :   12
%              Number of atoms          :  116 ( 196 expanded)
%              Number of equality atoms :   55 ( 130 expanded)
%              Maximal formula depth    :    6 (   4 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f151,plain,(
    $false ),
    inference(avatar_sat_refutation,[],[f145,f150])).

fof(f150,plain,(
    ~ spl2_1 ),
    inference(avatar_contradiction_clause,[],[f148])).

fof(f148,plain,
    ( $false
    | ~ spl2_1 ),
    inference(resolution,[],[f143,f100])).

fof(f100,plain,
    ( r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)
    | ~ spl2_1 ),
    inference(avatar_component_clause,[],[f99])).

fof(f99,plain,
    ( spl2_1
  <=> r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1) ),
    introduced(avatar_definition,[new_symbols(naming,[spl2_1])])).

fof(f143,plain,(
    ~ r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1) ),
    inference(trivial_inequality_removal,[],[f142])).

fof(f142,plain,
    ( k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k3_enumset1(sK0,sK0,sK0,sK0,sK0)
    | ~ r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1) ),
    inference(superposition,[],[f139,f54])).

fof(f54,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X1,X0)) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(superposition,[],[f45,f25])).

fof(f25,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(f45,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(definition_unfolding,[],[f29,f27])).

fof(f27,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f4,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(f29,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).

fof(f139,plain,(
    k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) ),
    inference(forward_demodulation,[],[f42,f25])).

fof(f42,plain,(
    k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)) ),
    inference(definition_unfolding,[],[f23,f41,f27,f41])).

fof(f41,plain,(
    ! [X0] : k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f24,f40])).

fof(f40,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f26,f39])).

fof(f39,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f37,f38])).

fof(f38,plain,(
    ! [X2,X0,X3,X1] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(f37,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(f26,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f7])).

fof(f7,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(f24,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f6,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(f23,plain,(
    k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f17])).

fof(f17,plain,
    ( k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1)
    & k1_xboole_0 != k4_xboole_0(k1_tarski(sK0),sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f14,f16])).

fof(f16,plain,
    ( ? [X0,X1] :
        ( k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),X1)
        & k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1) )
   => ( k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1)
      & k1_xboole_0 != k4_xboole_0(k1_tarski(sK0),sK1) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ? [X0,X1] :
      ( k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),X1)
      & k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1)
        | k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f12,conjecture,(
    ! [X0,X1] :
      ( k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1)
      | k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_zfmisc_1)).

fof(f145,plain,(
    spl2_1 ),
    inference(avatar_contradiction_clause,[],[f144])).

fof(f144,plain,
    ( $false
    | spl2_1 ),
    inference(resolution,[],[f140,f107])).

fof(f107,plain,(
    ~ r2_hidden(sK0,sK1) ),
    inference(resolution,[],[f97,f46])).

fof(f46,plain,(
    ! [X0,X1] :
      ( r1_tarski(k3_enumset1(X0,X0,X0,X0,X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f32,f41])).

fof(f32,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).

fof(f97,plain,(
    ~ r1_tarski(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1) ),
    inference(trivial_inequality_removal,[],[f95])).

fof(f95,plain,
    ( k1_xboole_0 != k1_xboole_0
    | ~ r1_tarski(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1) ),
    inference(superposition,[],[f85,f57])).

fof(f57,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X1,X0))
      | ~ r1_tarski(X0,X1) ) ),
    inference(superposition,[],[f48,f25])).

fof(f48,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f34,f27])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l32_xboole_1)).

fof(f85,plain,(
    k1_xboole_0 != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))) ),
    inference(forward_demodulation,[],[f43,f25])).

fof(f43,plain,(
    k1_xboole_0 != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)) ),
    inference(definition_unfolding,[],[f22,f27,f41])).

fof(f22,plain,(
    k1_xboole_0 != k4_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f17])).

fof(f140,plain,
    ( r2_hidden(sK0,sK1)
    | spl2_1 ),
    inference(resolution,[],[f120,f121])).

fof(f121,plain,
    ( ~ r1_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0))
    | spl2_1 ),
    inference(resolution,[],[f101,f28])).

fof(f28,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X1,X0)
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => r1_xboole_0(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(f101,plain,
    ( ~ r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)
    | spl2_1 ),
    inference(avatar_component_clause,[],[f99])).

fof(f120,plain,(
    ! [X6,X7] :
      ( r1_xboole_0(X6,k3_enumset1(X7,X7,X7,X7,X7))
      | r2_hidden(X7,X6) ) ),
    inference(trivial_inequality_removal,[],[f116])).

fof(f116,plain,(
    ! [X6,X7] :
      ( X6 != X6
      | r1_xboole_0(X6,k3_enumset1(X7,X7,X7,X7,X7))
      | r2_hidden(X7,X6) ) ),
    inference(superposition,[],[f44,f50])).

fof(f50,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1))) = X0
      | r2_hidden(X1,X0) ) ),
    inference(definition_unfolding,[],[f36,f27,f41])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
      | r2_hidden(X1,X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,k1_tarski(X1)) = X0
        | r2_hidden(X1,X0) )
      & ( ~ r2_hidden(X1,X0)
        | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
    <=> ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_zfmisc_1)).

fof(f44,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X0
      | r1_xboole_0(X0,X1) ) ),
    inference(definition_unfolding,[],[f30,f27])).

fof(f30,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
      | k4_xboole_0(X0,X1) != X0 ) ),
    inference(cnf_transformation,[],[f18])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : run_vampire %s %d
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:48:56 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.20/0.46  % (31654)dis+1002_2_add=off:afr=on:afp=10000:afq=2.0:amm=off:anc=none:cond=on:er=filter:fsr=off:nm=0:nwc=1.3:sp=occurrence_3 on theBenchmark
% 0.20/0.46  % (31655)ott+1010_8:1_add=off:afp=4000:afq=1.4:amm=off:anc=all:bd=off:bsr=on:fsr=off:fde=unused:irw=on:lma=on:nwc=4:nicw=on:sac=on:sp=reverse_arity:urr=on:updr=off:uhcvi=on_10 on theBenchmark
% 0.20/0.46  % (31654)Refutation found. Thanks to Tanya!
% 0.20/0.46  % SZS status Theorem for theBenchmark
% 0.20/0.46  % SZS output start Proof for theBenchmark
% 0.20/0.46  fof(f151,plain,(
% 0.20/0.46    $false),
% 0.20/0.46    inference(avatar_sat_refutation,[],[f145,f150])).
% 0.20/0.46  fof(f150,plain,(
% 0.20/0.46    ~spl2_1),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f148])).
% 0.20/0.46  fof(f148,plain,(
% 0.20/0.46    $false | ~spl2_1),
% 0.20/0.46    inference(resolution,[],[f143,f100])).
% 0.20/0.46  fof(f100,plain,(
% 0.20/0.46    r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1) | ~spl2_1),
% 0.20/0.46    inference(avatar_component_clause,[],[f99])).
% 0.20/0.46  fof(f99,plain,(
% 0.20/0.46    spl2_1 <=> r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)),
% 0.20/0.46    introduced(avatar_definition,[new_symbols(naming,[spl2_1])])).
% 0.20/0.46  fof(f143,plain,(
% 0.20/0.46    ~r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)),
% 0.20/0.46    inference(trivial_inequality_removal,[],[f142])).
% 0.20/0.46  fof(f142,plain,(
% 0.20/0.46    k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k3_enumset1(sK0,sK0,sK0,sK0,sK0) | ~r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)),
% 0.20/0.46    inference(superposition,[],[f139,f54])).
% 0.20/0.46  fof(f54,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X1,X0)) = X0 | ~r1_xboole_0(X0,X1)) )),
% 0.20/0.46    inference(superposition,[],[f45,f25])).
% 0.20/0.46  fof(f25,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f1])).
% 0.20/0.46  fof(f1,axiom,(
% 0.20/0.46    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).
% 0.20/0.46  fof(f45,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 | ~r1_xboole_0(X0,X1)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f29,f27])).
% 0.20/0.46  fof(f27,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 0.20/0.46    inference(cnf_transformation,[],[f4])).
% 0.20/0.46  fof(f4,axiom,(
% 0.20/0.46    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).
% 0.20/0.46  fof(f29,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f18])).
% 0.20/0.46  fof(f18,plain,(
% 0.20/0.46    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 0.20/0.46    inference(nnf_transformation,[],[f5])).
% 0.20/0.46  fof(f5,axiom,(
% 0.20/0.46    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).
% 0.20/0.46  fof(f139,plain,(
% 0.20/0.46    k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))),
% 0.20/0.46    inference(forward_demodulation,[],[f42,f25])).
% 0.20/0.46  fof(f42,plain,(
% 0.20/0.46    k3_enumset1(sK0,sK0,sK0,sK0,sK0) != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1))),
% 0.20/0.46    inference(definition_unfolding,[],[f23,f41,f27,f41])).
% 0.20/0.46  fof(f41,plain,(
% 0.20/0.46    ( ! [X0] : (k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f24,f40])).
% 0.20/0.46  fof(f40,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f26,f39])).
% 0.20/0.46  fof(f39,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f37,f38])).
% 0.20/0.46  fof(f38,plain,(
% 0.20/0.46    ( ! [X2,X0,X3,X1] : (k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f9])).
% 0.20/0.46  fof(f9,axiom,(
% 0.20/0.46    ! [X0,X1,X2,X3] : k3_enumset1(X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).
% 0.20/0.46  fof(f37,plain,(
% 0.20/0.46    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f8])).
% 0.20/0.46  fof(f8,axiom,(
% 0.20/0.46    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).
% 0.20/0.46  fof(f26,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f7])).
% 0.20/0.46  fof(f7,axiom,(
% 0.20/0.46    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).
% 0.20/0.46  fof(f24,plain,(
% 0.20/0.46    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f6])).
% 0.20/0.46  fof(f6,axiom,(
% 0.20/0.46    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).
% 0.20/0.46  fof(f23,plain,(
% 0.20/0.46    k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1)),
% 0.20/0.46    inference(cnf_transformation,[],[f17])).
% 0.20/0.46  fof(f17,plain,(
% 0.20/0.46    k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1) & k1_xboole_0 != k4_xboole_0(k1_tarski(sK0),sK1)),
% 0.20/0.46    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f14,f16])).
% 0.20/0.46  fof(f16,plain,(
% 0.20/0.46    ? [X0,X1] : (k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),X1) & k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1)) => (k1_tarski(sK0) != k4_xboole_0(k1_tarski(sK0),sK1) & k1_xboole_0 != k4_xboole_0(k1_tarski(sK0),sK1))),
% 0.20/0.46    introduced(choice_axiom,[])).
% 0.20/0.46  fof(f14,plain,(
% 0.20/0.46    ? [X0,X1] : (k1_tarski(X0) != k4_xboole_0(k1_tarski(X0),X1) & k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1))),
% 0.20/0.46    inference(ennf_transformation,[],[f13])).
% 0.20/0.46  fof(f13,negated_conjecture,(
% 0.20/0.46    ~! [X0,X1] : (k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1) | k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1))),
% 0.20/0.46    inference(negated_conjecture,[],[f12])).
% 0.20/0.46  fof(f12,conjecture,(
% 0.20/0.46    ! [X0,X1] : (k1_tarski(X0) = k4_xboole_0(k1_tarski(X0),X1) | k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1))),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_zfmisc_1)).
% 0.20/0.46  fof(f145,plain,(
% 0.20/0.46    spl2_1),
% 0.20/0.46    inference(avatar_contradiction_clause,[],[f144])).
% 0.20/0.46  fof(f144,plain,(
% 0.20/0.46    $false | spl2_1),
% 0.20/0.46    inference(resolution,[],[f140,f107])).
% 0.20/0.46  fof(f107,plain,(
% 0.20/0.46    ~r2_hidden(sK0,sK1)),
% 0.20/0.46    inference(resolution,[],[f97,f46])).
% 0.20/0.46  fof(f46,plain,(
% 0.20/0.46    ( ! [X0,X1] : (r1_tarski(k3_enumset1(X0,X0,X0,X0,X0),X1) | ~r2_hidden(X0,X1)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f32,f41])).
% 0.20/0.46  fof(f32,plain,(
% 0.20/0.46    ( ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f19])).
% 0.20/0.46  fof(f19,plain,(
% 0.20/0.46    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 0.20/0.46    inference(nnf_transformation,[],[f10])).
% 0.20/0.46  fof(f10,axiom,(
% 0.20/0.46    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).
% 0.20/0.46  fof(f97,plain,(
% 0.20/0.46    ~r1_tarski(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)),
% 0.20/0.46    inference(trivial_inequality_removal,[],[f95])).
% 0.20/0.46  fof(f95,plain,(
% 0.20/0.46    k1_xboole_0 != k1_xboole_0 | ~r1_tarski(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1)),
% 0.20/0.46    inference(superposition,[],[f85,f57])).
% 0.20/0.46  fof(f57,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X1,X0)) | ~r1_tarski(X0,X1)) )),
% 0.20/0.46    inference(superposition,[],[f48,f25])).
% 0.20/0.46  fof(f48,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X1)) | ~r1_tarski(X0,X1)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f34,f27])).
% 0.20/0.46  fof(f34,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f20])).
% 0.20/0.46  fof(f20,plain,(
% 0.20/0.46    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 0.20/0.46    inference(nnf_transformation,[],[f3])).
% 0.20/0.46  fof(f3,axiom,(
% 0.20/0.46    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l32_xboole_1)).
% 0.20/0.46  fof(f85,plain,(
% 0.20/0.46    k1_xboole_0 != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)))),
% 0.20/0.46    inference(forward_demodulation,[],[f43,f25])).
% 0.20/0.46  fof(f43,plain,(
% 0.20/0.46    k1_xboole_0 != k5_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),k3_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1))),
% 0.20/0.46    inference(definition_unfolding,[],[f22,f27,f41])).
% 0.20/0.46  fof(f22,plain,(
% 0.20/0.46    k1_xboole_0 != k4_xboole_0(k1_tarski(sK0),sK1)),
% 0.20/0.46    inference(cnf_transformation,[],[f17])).
% 0.20/0.46  fof(f140,plain,(
% 0.20/0.46    r2_hidden(sK0,sK1) | spl2_1),
% 0.20/0.46    inference(resolution,[],[f120,f121])).
% 0.20/0.46  fof(f121,plain,(
% 0.20/0.46    ~r1_xboole_0(sK1,k3_enumset1(sK0,sK0,sK0,sK0,sK0)) | spl2_1),
% 0.20/0.46    inference(resolution,[],[f101,f28])).
% 0.20/0.46  fof(f28,plain,(
% 0.20/0.46    ( ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f15])).
% 0.20/0.46  fof(f15,plain,(
% 0.20/0.46    ! [X0,X1] : (r1_xboole_0(X1,X0) | ~r1_xboole_0(X0,X1))),
% 0.20/0.46    inference(ennf_transformation,[],[f2])).
% 0.20/0.46  fof(f2,axiom,(
% 0.20/0.46    ! [X0,X1] : (r1_xboole_0(X0,X1) => r1_xboole_0(X1,X0))),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).
% 0.20/0.46  fof(f101,plain,(
% 0.20/0.46    ~r1_xboole_0(k3_enumset1(sK0,sK0,sK0,sK0,sK0),sK1) | spl2_1),
% 0.20/0.46    inference(avatar_component_clause,[],[f99])).
% 0.20/0.46  fof(f120,plain,(
% 0.20/0.46    ( ! [X6,X7] : (r1_xboole_0(X6,k3_enumset1(X7,X7,X7,X7,X7)) | r2_hidden(X7,X6)) )),
% 0.20/0.46    inference(trivial_inequality_removal,[],[f116])).
% 0.20/0.46  fof(f116,plain,(
% 0.20/0.46    ( ! [X6,X7] : (X6 != X6 | r1_xboole_0(X6,k3_enumset1(X7,X7,X7,X7,X7)) | r2_hidden(X7,X6)) )),
% 0.20/0.46    inference(superposition,[],[f44,f50])).
% 0.20/0.46  fof(f50,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1))) = X0 | r2_hidden(X1,X0)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f36,f27,f41])).
% 0.20/0.46  fof(f36,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 | r2_hidden(X1,X0)) )),
% 0.20/0.46    inference(cnf_transformation,[],[f21])).
% 0.20/0.46  fof(f21,plain,(
% 0.20/0.46    ! [X0,X1] : ((k4_xboole_0(X0,k1_tarski(X1)) = X0 | r2_hidden(X1,X0)) & (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0))),
% 0.20/0.46    inference(nnf_transformation,[],[f11])).
% 0.20/0.46  fof(f11,axiom,(
% 0.20/0.46    ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 <=> ~r2_hidden(X1,X0))),
% 0.20/0.46    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_zfmisc_1)).
% 0.20/0.46  fof(f44,plain,(
% 0.20/0.46    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X0 | r1_xboole_0(X0,X1)) )),
% 0.20/0.46    inference(definition_unfolding,[],[f30,f27])).
% 0.20/0.46  fof(f30,plain,(
% 0.20/0.46    ( ! [X0,X1] : (r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) )),
% 0.20/0.46    inference(cnf_transformation,[],[f18])).
% 0.20/0.46  % SZS output end Proof for theBenchmark
% 0.20/0.46  % (31654)------------------------------
% 0.20/0.46  % (31654)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.20/0.46  % (31654)Termination reason: Refutation
% 0.20/0.46  
% 0.20/0.46  % (31654)Memory used [KB]: 6140
% 0.20/0.46  % (31654)Time elapsed: 0.055 s
% 0.20/0.46  % (31654)------------------------------
% 0.20/0.46  % (31654)------------------------------
% 0.20/0.46  % (31650)lrs+11_24_add=large:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:bd=off:cond=fast:fde=unused:gs=on:irw=on:lma=on:nm=4:nwc=1.3:nicw=on:sas=z3:stl=30:sac=on:sp=reverse_arity:uhcvi=on_136 on theBenchmark
% 0.20/0.47  % (31646)Success in time 0.111 s
%------------------------------------------------------------------------------
