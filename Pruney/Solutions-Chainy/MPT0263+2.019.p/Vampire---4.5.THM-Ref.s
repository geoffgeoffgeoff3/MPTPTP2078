%------------------------------------------------------------------------------
% File       : Vampire---4.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_vampire %s %d

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:40:14 EST 2020

% Result     : Theorem 1.37s
% Output     : Refutation 1.37s
% Verified   : 
% Statistics : Number of formulae       :   51 ( 164 expanded)
%              Number of leaves         :   11 (  50 expanded)
%              Depth                    :   11
%              Number of atoms          :  170 ( 511 expanded)
%              Number of equality atoms :   32 ( 151 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f447,plain,(
    $false ),
    inference(subsumption_resolution,[],[f442,f186])).

fof(f186,plain,(
    ! [X0] : r1_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(X0,sK1)) ),
    inference(unit_resulting_resolution,[],[f88,f67])).

fof(f67,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f45,f62])).

fof(f62,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f37,f61])).

fof(f61,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f39,f48])).

fof(f48,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(f39,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f10,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(f37,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f9,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(f45,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
     => r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l27_zfmisc_1)).

fof(f88,plain,(
    ! [X0] : ~ r2_hidden(sK0,k4_xboole_0(X0,sK1)) ),
    inference(unit_resulting_resolution,[],[f82,f77])).

fof(f77,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k4_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f50])).

fof(f50,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ( ( r2_hidden(sK3(X0,X1,X2),X1)
            | ~ r2_hidden(sK3(X0,X1,X2),X0)
            | ~ r2_hidden(sK3(X0,X1,X2),X2) )
          & ( ( ~ r2_hidden(sK3(X0,X1,X2),X1)
              & r2_hidden(sK3(X0,X1,X2),X0) )
            | r2_hidden(sK3(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( ~ r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f26,f27])).

fof(f27,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( ~ r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( r2_hidden(sK3(X0,X1,X2),X1)
          | ~ r2_hidden(sK3(X0,X1,X2),X0)
          | ~ r2_hidden(sK3(X0,X1,X2),X2) )
        & ( ( ~ r2_hidden(sK3(X0,X1,X2),X1)
            & r2_hidden(sK3(X0,X1,X2),X0) )
          | r2_hidden(sK3(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( ~ r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f25])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f24])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( ~ r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_xboole_0)).

fof(f82,plain,(
    r2_hidden(sK0,sK1) ),
    inference(unit_resulting_resolution,[],[f64,f67])).

fof(f64,plain,(
    ~ r1_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1) ),
    inference(definition_unfolding,[],[f34,f62])).

fof(f34,plain,(
    ~ r1_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f20])).

fof(f20,plain,
    ( k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1)
    & ~ r1_xboole_0(k1_tarski(sK0),sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f19])).

fof(f19,plain,
    ( ? [X0,X1] :
        ( k1_tarski(X0) != k3_xboole_0(k1_tarski(X0),X1)
        & ~ r1_xboole_0(k1_tarski(X0),X1) )
   => ( k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1)
      & ~ r1_xboole_0(k1_tarski(sK0),sK1) ) ),
    introduced(choice_axiom,[])).

fof(f16,plain,(
    ? [X0,X1] :
      ( k1_tarski(X0) != k3_xboole_0(k1_tarski(X0),X1)
      & ~ r1_xboole_0(k1_tarski(X0),X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),X1)
        | r1_xboole_0(k1_tarski(X0),X1) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f13,conjecture,(
    ! [X0,X1] :
      ( k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),X1)
      | r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t58_zfmisc_1)).

fof(f442,plain,(
    ~ r1_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
    inference(unit_resulting_resolution,[],[f176,f180,f44])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK2(X0,X1),X1)
          & r2_hidden(sK2(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f17,f21])).

fof(f21,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK2(X0,X1),X1)
        & r2_hidden(sK2(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f5])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X2] :
              ~ ( r2_hidden(X2,X1)
                & r2_hidden(X2,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_xboole_0)).

fof(f180,plain,(
    r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
    inference(subsumption_resolution,[],[f179,f176])).

fof(f179,plain,
    ( r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
    | ~ r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0)) ),
    inference(duplicate_literal_removal,[],[f178])).

fof(f178,plain,
    ( r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
    | ~ r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0))
    | ~ r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0)) ),
    inference(equality_resolution,[],[f102])).

fof(f102,plain,(
    ! [X5] :
      ( k2_enumset1(sK0,sK0,sK0,sK0) != X5
      | r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X5),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1))
      | ~ r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X5),k2_enumset1(sK0,sK0,sK0,sK0))
      | ~ r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X5),X5) ) ),
    inference(superposition,[],[f63,f54])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X0,X1) = X2
      | r2_hidden(sK3(X0,X1,X2),X1)
      | ~ r2_hidden(sK3(X0,X1,X2),X0)
      | ~ r2_hidden(sK3(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f63,plain,(
    k2_enumset1(sK0,sK0,sK0,sK0) != k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) ),
    inference(definition_unfolding,[],[f35,f62,f41,f62])).

fof(f41,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f8,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(f35,plain,(
    k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1) ),
    inference(cnf_transformation,[],[f20])).

fof(f176,plain,(
    r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0)) ),
    inference(duplicate_literal_removal,[],[f175])).

fof(f175,plain,
    ( r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0))
    | r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0)) ),
    inference(equality_resolution,[],[f100])).

fof(f100,plain,(
    ! [X3] :
      ( k2_enumset1(sK0,sK0,sK0,sK0) != X3
      | r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X3),k2_enumset1(sK0,sK0,sK0,sK0))
      | r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X3),X3) ) ),
    inference(superposition,[],[f63,f52])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X0,X1) = X2
      | r2_hidden(sK3(X0,X1,X2),X0)
      | r2_hidden(sK3(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f28])).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : run_vampire %s %d
% 0.13/0.35  % Computer   : n008.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 10:27:30 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.22/0.51  % (9092)lrs+2_3:1_add=large:afr=on:afp=10000:afq=1.1:amm=off:anc=none:er=known:fde=unused:gs=on:gsaa=from_current:gsem=on:lma=on:nm=32:newcnf=on:nwc=4:sas=z3:stl=30:sd=1:ss=axioms:st=5.0:sac=on:sp=occurrence:updr=off_2 on theBenchmark
% 0.22/0.51  % (9099)ott+2_2_afp=10000:afq=1.4:amm=off:anc=none:gsp=input_only:gs=on:gsem=off:irw=on:lcm=predicate:nm=32:nwc=1.5:sos=on:sp=reverse_arity_18 on theBenchmark
% 0.22/0.51  % (9099)Refutation not found, incomplete strategy% (9099)------------------------------
% 0.22/0.51  % (9099)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 0.22/0.51  % (9099)Termination reason: Refutation not found, incomplete strategy
% 0.22/0.51  
% 0.22/0.51  % (9099)Memory used [KB]: 10618
% 0.22/0.51  % (9099)Time elapsed: 0.097 s
% 0.22/0.51  % (9099)------------------------------
% 0.22/0.51  % (9099)------------------------------
% 0.22/0.52  % (9114)ott+4_40_av=off:bce=on:cond=fast:fde=none:nm=0:nwc=1:sos=all:updr=off_197 on theBenchmark
% 0.22/0.52  % (9106)lrs+1011_3:1_add=off:afr=on:afp=10000:afq=1.1:amm=off:bce=on:cond=on:ep=R:fsr=off:nm=16:nwc=1:stl=30:sos=all:sp=reverse_arity:updr=off_9 on theBenchmark
% 1.16/0.52  % (9103)lrs+1011_7_add=large:afr=on:afp=40000:afq=1.4:amm=off:anc=none:cond=on:er=known:fsr=off:lma=on:nm=4:nwc=2.5:stl=30:sp=reverse_arity:updr=off_2 on theBenchmark
% 1.16/0.52  % (9091)lrs-11_12_av=off:nm=32:nwc=1.3:stl=30:sd=3:ss=axioms:sos=all_2 on theBenchmark
% 1.16/0.53  % (9097)ott+11_16_av=off:gs=on:gsem=on:irw=on:lma=on:nm=64:newcnf=on:nwc=1.3:sas=z3:sp=reverse_arity_14 on theBenchmark
% 1.16/0.53  % (9101)lrs+1003_3_awrs=decay:awrsf=4:add=large:afr=on:afp=100000:afq=2.0:amm=sco:bd=off:cond=fast:fsr=off:fde=unused:gs=on:gsem=on:nm=6:nwc=1:stl=30:sd=1:ss=axioms:st=1.2:sos=on:sac=on:sp=frequency:urr=on:updr=off_2 on theBenchmark
% 1.16/0.53  % (9105)lrs+1010_8_add=off:afp=100000:afq=1.0:amm=off:anc=none:bce=on:irw=on:nm=16:newcnf=on:nwc=1.1:nicw=on:sas=z3:stl=30:sp=reverse_arity:urr=on_13 on theBenchmark
% 1.16/0.53  % (9101)Refutation not found, incomplete strategy% (9101)------------------------------
% 1.16/0.53  % (9101)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.16/0.53  % (9101)Termination reason: Refutation not found, incomplete strategy
% 1.16/0.53  
% 1.16/0.53  % (9101)Memory used [KB]: 10618
% 1.16/0.53  % (9101)Time elapsed: 0.126 s
% 1.16/0.53  % (9101)------------------------------
% 1.16/0.53  % (9101)------------------------------
% 1.16/0.54  % (9095)lrs+1011_5_add=large:afp=1000:afq=1.2:anc=none:fsr=off:irw=on:lma=on:nm=64:newcnf=on:nwc=1:stl=30:sd=3:ss=axioms:st=2.0:sos=on:sac=on:sp=reverse_arity:urr=on:updr=off_10 on theBenchmark
% 1.37/0.54  % (9096)lrs+11_128_av=off:bsr=on:cond=on:gs=on:lcm=reverse:lma=on:nm=32:nwc=1:stl=30:sd=5:ss=axioms:st=3.0_1 on theBenchmark
% 1.37/0.54  % (9109)ott+1002_8:1_add=off:afr=on:afp=100000:afq=1.1:amm=off:anc=none:bd=off:bs=unit_only:fsr=off:gs=on:gsem=off:nm=32:nwc=10:sas=z3:sp=occurrence:urr=on:updr=off_14 on theBenchmark
% 1.37/0.54  % (9104)lrs+10_4:1_add=large:afp=100000:afq=1.1:anc=none:ep=RST:fde=unused:gsp=input_only:nm=6:newcnf=on:nwc=1:stl=30:sos=all:sac=on:sp=reverse_arity:urr=ec_only_22 on theBenchmark
% 1.37/0.54  % (9118)dis+1002_6_add=large:afp=40000:afq=2.0:bsr=on:cond=on:irw=on:lma=on:nm=2:nwc=2.5:nicw=on:sp=reverse_arity:updr=off_10 on theBenchmark
% 1.37/0.54  % (9117)lrs+1011_8:1_afr=on:afp=1000:afq=2.0:br=off:gsp=input_only:gs=on:nm=16:nwc=1:stl=30:sos=all:sp=occurrence:urr=on_8 on theBenchmark
% 1.37/0.54  % (9115)lrs+1010_3_av=off:fsr=off:gs=on:gsem=off:nm=2:newcnf=on:nwc=2:stl=30:sp=reverse_arity:urr=on:updr=off_9 on theBenchmark
% 1.37/0.54  % (9093)dis+2_2:1_aac=none:afp=100000:afq=1.1:amm=sco:anc=none:bsr=on:fsr=off:gs=on:gsem=on:lcm=reverse:lma=on:nm=64:nwc=1:sos=on_6 on theBenchmark
% 1.37/0.54  % (9093)Refutation not found, incomplete strategy% (9093)------------------------------
% 1.37/0.54  % (9093)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.37/0.54  % (9093)Termination reason: Refutation not found, incomplete strategy
% 1.37/0.54  
% 1.37/0.54  % (9093)Memory used [KB]: 10618
% 1.37/0.54  % (9093)Time elapsed: 0.134 s
% 1.37/0.54  % (9093)------------------------------
% 1.37/0.54  % (9093)------------------------------
% 1.37/0.55  % (9119)lrs+11_4:1_aac=none:add=large:afr=on:afp=10000:afq=1.0:amm=sco:anc=none:cond=on:er=filter:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:sas=z3:stl=30:sos=theory:sp=reverse_arity:updr=off_3 on theBenchmark
% 1.37/0.55  % (9107)dis+1_2:3_acc=on:add=large:afp=40000:afq=2.0:amm=sco:anc=none:er=filter:fsr=off:gsp=input_only:gs=on:gsem=off:nm=64:newcnf=on:nwc=1_3 on theBenchmark
% 1.37/0.55  % (9108)ott+11_4_afp=100000:afq=1.2:amm=sco:anc=none:cond=fast:ep=R:fde=none:gs=on:gsaa=from_current:gsem=off:lma=on:nm=16:nwc=1:sd=3:ss=axioms:updr=off_2 on theBenchmark
% 1.37/0.55  % (9110)lrs+1011_10_aac=none:acc=model:add=large:afp=40000:afq=2.0:anc=none:bd=off:bsr=on:fsr=off:gs=on:gsem=off:irw=on:lcm=reverse:lwlo=on:nm=64:nwc=3:nicw=on:stl=30_19 on theBenchmark
% 1.37/0.55  % (9094)dis+1011_24_add=large:afr=on:afp=4000:afq=1.0:anc=none:bs=unit_only:bce=on:cond=fast:gs=on:nm=32:nwc=2.5:nicw=on:sp=occurrence:updr=off_39 on theBenchmark
% 1.37/0.55  % (9120)dis+1010_3:2_av=off:gsp=input_only:nm=2:nwc=1:sp=reverse_arity:urr=ec_only_29 on theBenchmark
% 1.37/0.55  % (9098)lrs+11_20_av=off:bs=unit_only:bsr=on:bce=on:cond=on:fde=none:gs=on:gsem=on:irw=on:nm=4:nwc=1:stl=30:sos=theory:sp=reverse_arity:uhcvi=on_3 on theBenchmark
% 1.37/0.55  % (9100)lrs+11_1_add=large:afr=on:afp=100000:afq=2.0:amm=off:anc=none:bd=off:gs=on:gsem=on:irw=on:nm=32:newcnf=on:nwc=2.5:nicw=on:stl=30:sd=3:ss=axioms:sos=all:urr=on_34 on theBenchmark
% 1.37/0.55  % (9102)lrs-3_4:1_afp=1000:afq=1.4:amm=sco:fde=none:gs=on:lcm=reverse:lma=on:nwc=1.5:stl=30:sd=1:ss=axioms:sp=reverse_arity:urr=on:updr=off:uhcvi=on_11 on theBenchmark
% 1.37/0.56  % (9102)Refutation not found, incomplete strategy% (9102)------------------------------
% 1.37/0.56  % (9102)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.37/0.56  % (9102)Termination reason: Refutation not found, incomplete strategy
% 1.37/0.56  
% 1.37/0.56  % (9102)Memory used [KB]: 10618
% 1.37/0.56  % (9102)Time elapsed: 0.148 s
% 1.37/0.56  % (9102)------------------------------
% 1.37/0.56  % (9102)------------------------------
% 1.37/0.56  % (9113)dis+1002_7_acc=on:afp=4000:afq=2.0:amm=sco:anc=none:cond=fast:fsr=off:gsp=input_only:gs=on:gsem=on:lma=on:nm=6:newcnf=on:nwc=1.1:nicw=on:sos=on:sac=on:sp=reverse_arity:urr=ec_only:updr=off_8 on theBenchmark
% 1.37/0.56  % (9111)lrs+1011_5:4_acc=on:add=large:afr=on:afp=10000:afq=2.0:amm=sco:anc=none:bsr=on:ccuc=first:cond=on:fde=unused:gs=on:gsaa=from_current:gsem=off:irw=on:nm=2:newcnf=on:nwc=1.2:stl=30:sos=on:sac=on:sp=reverse_arity:updr=off_126 on theBenchmark
% 1.37/0.56  % (9113)Refutation not found, incomplete strategy% (9113)------------------------------
% 1.37/0.56  % (9113)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.37/0.56  % (9113)Termination reason: Refutation not found, incomplete strategy
% 1.37/0.56  
% 1.37/0.56  % (9113)Memory used [KB]: 10746
% 1.37/0.56  % (9113)Time elapsed: 0.108 s
% 1.37/0.56  % (9113)------------------------------
% 1.37/0.56  % (9113)------------------------------
% 1.37/0.56  % (9111)Refutation not found, incomplete strategy% (9111)------------------------------
% 1.37/0.56  % (9111)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.37/0.56  % (9111)Termination reason: Refutation not found, incomplete strategy
% 1.37/0.56  
% 1.37/0.56  % (9111)Memory used [KB]: 10746
% 1.37/0.56  % (9111)Time elapsed: 0.151 s
% 1.37/0.56  % (9111)------------------------------
% 1.37/0.56  % (9111)------------------------------
% 1.37/0.56  % (9112)dis+1011_10_av=off:cond=on:lma=on:nm=0:newcnf=on:nwc=1:sos=on:sp=occurrence:updr=off_4 on theBenchmark
% 1.37/0.57  % (9116)dis+1_3:2_acc=on:add=off:afr=on:afp=40000:afq=1.0:amm=sco:anc=none:ccuc=small_ones:cond=on:lma=on:nm=64:nwc=1.3:sos=all:urr=on_111 on theBenchmark
% 1.37/0.57  % (9117)Refutation found. Thanks to Tanya!
% 1.37/0.57  % SZS status Theorem for theBenchmark
% 1.37/0.57  % (9112)Refutation not found, incomplete strategy% (9112)------------------------------
% 1.37/0.57  % (9112)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.37/0.57  % (9112)Termination reason: Refutation not found, incomplete strategy
% 1.37/0.57  
% 1.37/0.57  % (9112)Memory used [KB]: 1663
% 1.37/0.57  % (9112)Time elapsed: 0.160 s
% 1.37/0.57  % (9112)------------------------------
% 1.37/0.57  % (9112)------------------------------
% 1.37/0.57  % SZS output start Proof for theBenchmark
% 1.37/0.57  fof(f447,plain,(
% 1.37/0.57    $false),
% 1.37/0.57    inference(subsumption_resolution,[],[f442,f186])).
% 1.37/0.57  fof(f186,plain,(
% 1.37/0.57    ( ! [X0] : (r1_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(X0,sK1))) )),
% 1.37/0.57    inference(unit_resulting_resolution,[],[f88,f67])).
% 1.37/0.57  fof(f67,plain,(
% 1.37/0.57    ( ! [X0,X1] : (r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) | r2_hidden(X0,X1)) )),
% 1.37/0.57    inference(definition_unfolding,[],[f45,f62])).
% 1.37/0.57  fof(f62,plain,(
% 1.37/0.57    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 1.37/0.57    inference(definition_unfolding,[],[f37,f61])).
% 1.37/0.57  fof(f61,plain,(
% 1.37/0.57    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 1.37/0.57    inference(definition_unfolding,[],[f39,f48])).
% 1.37/0.57  fof(f48,plain,(
% 1.37/0.57    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)) )),
% 1.37/0.57    inference(cnf_transformation,[],[f11])).
% 1.37/0.57  fof(f11,axiom,(
% 1.37/0.57    ! [X0,X1,X2] : k2_enumset1(X0,X0,X1,X2) = k1_enumset1(X0,X1,X2)),
% 1.37/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).
% 1.37/0.57  fof(f39,plain,(
% 1.37/0.57    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.37/0.57    inference(cnf_transformation,[],[f10])).
% 1.37/0.57  fof(f10,axiom,(
% 1.37/0.57    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 1.37/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).
% 1.37/0.57  fof(f37,plain,(
% 1.37/0.57    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.37/0.57    inference(cnf_transformation,[],[f9])).
% 1.37/0.57  fof(f9,axiom,(
% 1.37/0.57    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.37/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).
% 1.37/0.57  fof(f45,plain,(
% 1.37/0.57    ( ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1)) )),
% 1.37/0.57    inference(cnf_transformation,[],[f18])).
% 1.37/0.57  fof(f18,plain,(
% 1.37/0.57    ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1))),
% 1.37/0.57    inference(ennf_transformation,[],[f12])).
% 1.37/0.57  fof(f12,axiom,(
% 1.37/0.57    ! [X0,X1] : (~r2_hidden(X0,X1) => r1_xboole_0(k1_tarski(X0),X1))),
% 1.37/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l27_zfmisc_1)).
% 1.37/0.57  fof(f88,plain,(
% 1.37/0.57    ( ! [X0] : (~r2_hidden(sK0,k4_xboole_0(X0,sK1))) )),
% 1.37/0.57    inference(unit_resulting_resolution,[],[f82,f77])).
% 1.37/0.57  fof(f77,plain,(
% 1.37/0.57    ( ! [X4,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,k4_xboole_0(X0,X1))) )),
% 1.37/0.57    inference(equality_resolution,[],[f50])).
% 1.37/0.57  fof(f50,plain,(
% 1.37/0.57    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 1.37/0.57    inference(cnf_transformation,[],[f28])).
% 1.37/0.57  fof(f28,plain,(
% 1.37/0.57    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ((r2_hidden(sK3(X0,X1,X2),X1) | ~r2_hidden(sK3(X0,X1,X2),X0) | ~r2_hidden(sK3(X0,X1,X2),X2)) & ((~r2_hidden(sK3(X0,X1,X2),X1) & r2_hidden(sK3(X0,X1,X2),X0)) | r2_hidden(sK3(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 1.37/0.57    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f26,f27])).
% 1.37/0.57  fof(f27,plain,(
% 1.37/0.57    ! [X2,X1,X0] : (? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((r2_hidden(sK3(X0,X1,X2),X1) | ~r2_hidden(sK3(X0,X1,X2),X0) | ~r2_hidden(sK3(X0,X1,X2),X2)) & ((~r2_hidden(sK3(X0,X1,X2),X1) & r2_hidden(sK3(X0,X1,X2),X0)) | r2_hidden(sK3(X0,X1,X2),X2))))),
% 1.37/0.57    introduced(choice_axiom,[])).
% 1.37/0.57  fof(f26,plain,(
% 1.37/0.57    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 1.37/0.57    inference(rectify,[],[f25])).
% 1.37/0.57  fof(f25,plain,(
% 1.37/0.57    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 1.37/0.57    inference(flattening,[],[f24])).
% 1.37/0.57  fof(f24,plain,(
% 1.37/0.57    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 1.37/0.57    inference(nnf_transformation,[],[f3])).
% 1.37/0.57  fof(f3,axiom,(
% 1.37/0.57    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 1.37/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_xboole_0)).
% 1.37/0.57  fof(f82,plain,(
% 1.37/0.57    r2_hidden(sK0,sK1)),
% 1.37/0.57    inference(unit_resulting_resolution,[],[f64,f67])).
% 1.37/0.57  fof(f64,plain,(
% 1.37/0.57    ~r1_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1)),
% 1.37/0.57    inference(definition_unfolding,[],[f34,f62])).
% 1.37/0.57  fof(f34,plain,(
% 1.37/0.57    ~r1_xboole_0(k1_tarski(sK0),sK1)),
% 1.37/0.57    inference(cnf_transformation,[],[f20])).
% 1.37/0.57  fof(f20,plain,(
% 1.37/0.57    k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1) & ~r1_xboole_0(k1_tarski(sK0),sK1)),
% 1.37/0.57    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f16,f19])).
% 1.37/0.57  fof(f19,plain,(
% 1.37/0.57    ? [X0,X1] : (k1_tarski(X0) != k3_xboole_0(k1_tarski(X0),X1) & ~r1_xboole_0(k1_tarski(X0),X1)) => (k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1) & ~r1_xboole_0(k1_tarski(sK0),sK1))),
% 1.37/0.57    introduced(choice_axiom,[])).
% 1.37/0.57  fof(f16,plain,(
% 1.37/0.57    ? [X0,X1] : (k1_tarski(X0) != k3_xboole_0(k1_tarski(X0),X1) & ~r1_xboole_0(k1_tarski(X0),X1))),
% 1.37/0.57    inference(ennf_transformation,[],[f14])).
% 1.37/0.57  fof(f14,negated_conjecture,(
% 1.37/0.57    ~! [X0,X1] : (k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),X1) | r1_xboole_0(k1_tarski(X0),X1))),
% 1.37/0.57    inference(negated_conjecture,[],[f13])).
% 1.37/0.57  fof(f13,conjecture,(
% 1.37/0.57    ! [X0,X1] : (k1_tarski(X0) = k3_xboole_0(k1_tarski(X0),X1) | r1_xboole_0(k1_tarski(X0),X1))),
% 1.37/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t58_zfmisc_1)).
% 1.37/0.57  fof(f442,plain,(
% 1.37/0.57    ~r1_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1))),
% 1.37/0.57    inference(unit_resulting_resolution,[],[f176,f180,f44])).
% 1.37/0.57  fof(f44,plain,(
% 1.37/0.57    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 1.37/0.57    inference(cnf_transformation,[],[f22])).
% 1.37/0.57  fof(f22,plain,(
% 1.37/0.57    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK2(X0,X1),X1) & r2_hidden(sK2(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 1.37/0.57    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f17,f21])).
% 1.37/0.57  fof(f21,plain,(
% 1.37/0.57    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK2(X0,X1),X1) & r2_hidden(sK2(X0,X1),X0)))),
% 1.37/0.57    introduced(choice_axiom,[])).
% 1.37/0.57  fof(f17,plain,(
% 1.37/0.57    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 1.37/0.57    inference(ennf_transformation,[],[f15])).
% 1.37/0.57  fof(f15,plain,(
% 1.37/0.57    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 1.37/0.57    inference(rectify,[],[f5])).
% 1.37/0.57  fof(f5,axiom,(
% 1.37/0.57    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 1.37/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_xboole_0)).
% 1.37/0.57  fof(f180,plain,(
% 1.37/0.57    r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1))),
% 1.37/0.57    inference(subsumption_resolution,[],[f179,f176])).
% 1.37/0.57  fof(f179,plain,(
% 1.37/0.57    r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) | ~r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0))),
% 1.37/0.57    inference(duplicate_literal_removal,[],[f178])).
% 1.37/0.57  fof(f178,plain,(
% 1.37/0.57    r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) | ~r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0)) | ~r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0))),
% 1.37/0.57    inference(equality_resolution,[],[f102])).
% 1.37/0.57  fof(f102,plain,(
% 1.37/0.57    ( ! [X5] : (k2_enumset1(sK0,sK0,sK0,sK0) != X5 | r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X5),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1)) | ~r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X5),k2_enumset1(sK0,sK0,sK0,sK0)) | ~r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X5),X5)) )),
% 1.37/0.57    inference(superposition,[],[f63,f54])).
% 1.37/0.57  fof(f54,plain,(
% 1.37/0.57    ( ! [X2,X0,X1] : (k4_xboole_0(X0,X1) = X2 | r2_hidden(sK3(X0,X1,X2),X1) | ~r2_hidden(sK3(X0,X1,X2),X0) | ~r2_hidden(sK3(X0,X1,X2),X2)) )),
% 1.37/0.57    inference(cnf_transformation,[],[f28])).
% 1.37/0.57  fof(f63,plain,(
% 1.37/0.57    k2_enumset1(sK0,sK0,sK0,sK0) != k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1))),
% 1.37/0.57    inference(definition_unfolding,[],[f35,f62,f41,f62])).
% 1.37/0.57  fof(f41,plain,(
% 1.37/0.57    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 1.37/0.57    inference(cnf_transformation,[],[f8])).
% 1.37/0.57  fof(f8,axiom,(
% 1.37/0.57    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 1.37/0.57    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).
% 1.37/0.57  fof(f35,plain,(
% 1.37/0.57    k1_tarski(sK0) != k3_xboole_0(k1_tarski(sK0),sK1)),
% 1.37/0.57    inference(cnf_transformation,[],[f20])).
% 1.37/0.57  fof(f176,plain,(
% 1.37/0.57    r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0))),
% 1.37/0.57    inference(duplicate_literal_removal,[],[f175])).
% 1.37/0.57  fof(f175,plain,(
% 1.37/0.57    r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0)) | r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),k2_enumset1(sK0,sK0,sK0,sK0)),k2_enumset1(sK0,sK0,sK0,sK0))),
% 1.37/0.57    inference(equality_resolution,[],[f100])).
% 1.37/0.57  fof(f100,plain,(
% 1.37/0.57    ( ! [X3] : (k2_enumset1(sK0,sK0,sK0,sK0) != X3 | r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X3),k2_enumset1(sK0,sK0,sK0,sK0)) | r2_hidden(sK3(k2_enumset1(sK0,sK0,sK0,sK0),k4_xboole_0(k2_enumset1(sK0,sK0,sK0,sK0),sK1),X3),X3)) )),
% 1.37/0.57    inference(superposition,[],[f63,f52])).
% 1.37/0.57  fof(f52,plain,(
% 1.37/0.57    ( ! [X2,X0,X1] : (k4_xboole_0(X0,X1) = X2 | r2_hidden(sK3(X0,X1,X2),X0) | r2_hidden(sK3(X0,X1,X2),X2)) )),
% 1.37/0.57    inference(cnf_transformation,[],[f28])).
% 1.37/0.57  % SZS output end Proof for theBenchmark
% 1.37/0.57  % (9117)------------------------------
% 1.37/0.57  % (9117)Version: Vampire 4.5.0 (commit 2ee491ce on 2020-06-19 13:55:12 +0100)
% 1.37/0.57  % (9117)Termination reason: Refutation
% 1.37/0.57  
% 1.37/0.57  % (9117)Memory used [KB]: 11001
% 1.37/0.57  % (9117)Time elapsed: 0.151 s
% 1.37/0.57  % (9117)------------------------------
% 1.37/0.57  % (9117)------------------------------
% 1.37/0.58  % (9090)Success in time 0.209 s
%------------------------------------------------------------------------------
