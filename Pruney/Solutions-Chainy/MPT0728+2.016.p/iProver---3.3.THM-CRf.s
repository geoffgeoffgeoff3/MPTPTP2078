%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:53:20 EST 2020

% Result     : Theorem 0.90s
% Output     : CNFRefutation 0.90s
% Verified   : 
% Statistics : Number of formulae       :   60 (  86 expanded)
%              Number of clauses        :   10 (  10 expanded)
%              Number of leaves         :   14 (  24 expanded)
%              Depth                    :   11
%              Number of atoms          :  315 ( 348 expanded)
%              Number of equality atoms :  183 ( 214 expanded)
%              Maximal formula depth    :   19 (   7 average)
%              Maximal clause size      :   30 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) ) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) ) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f16])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ( ~ r2_hidden(X3,X1)
                & ~ r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( r2_hidden(X3,X1)
              | r2_hidden(X3,X0)
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f17])).

fof(f19,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( ~ r2_hidden(X3,X1)
              & ~ r2_hidden(X3,X0) )
            | ~ r2_hidden(X3,X2) )
          & ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0)
            | r2_hidden(X3,X2) ) )
     => ( ( ( ~ r2_hidden(sK1(X0,X1,X2),X1)
            & ~ r2_hidden(sK1(X0,X1,X2),X0) )
          | ~ r2_hidden(sK1(X0,X1,X2),X2) )
        & ( r2_hidden(sK1(X0,X1,X2),X1)
          | r2_hidden(sK1(X0,X1,X2),X0)
          | r2_hidden(sK1(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ( ( ( ~ r2_hidden(sK1(X0,X1,X2),X1)
              & ~ r2_hidden(sK1(X0,X1,X2),X0) )
            | ~ r2_hidden(sK1(X0,X1,X2),X2) )
          & ( r2_hidden(sK1(X0,X1,X2),X1)
            | r2_hidden(sK1(X0,X1,X2),X0)
            | r2_hidden(sK1(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f18,f19])).

fof(f31,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f20])).

fof(f7,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f6])).

fof(f59,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k4_enumset1(X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f38,f39])).

fof(f60,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k4_enumset1(X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f37,f59])).

fof(f61,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f36,f60])).

fof(f62,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f40,f61])).

fof(f68,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f31,f62])).

fof(f72,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)))
      | ~ r2_hidden(X4,X1) ) ),
    inference(equality_resolution,[],[f68])).

fof(f14,plain,(
    ! [X5,X4,X3,X2,X1,X0,X6] :
      ( sP0(X5,X4,X3,X2,X1,X0,X6)
    <=> ! [X7] :
          ( r2_hidden(X7,X6)
        <=> ( X5 = X7
            | X4 = X7
            | X3 = X7
            | X2 = X7
            | X1 = X7
            | X0 = X7 ) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f21,plain,(
    ! [X5,X4,X3,X2,X1,X0,X6] :
      ( ( sP0(X5,X4,X3,X2,X1,X0,X6)
        | ? [X7] :
            ( ( ( X5 != X7
                & X4 != X7
                & X3 != X7
                & X2 != X7
                & X1 != X7
                & X0 != X7 )
              | ~ r2_hidden(X7,X6) )
            & ( X5 = X7
              | X4 = X7
              | X3 = X7
              | X2 = X7
              | X1 = X7
              | X0 = X7
              | r2_hidden(X7,X6) ) ) )
      & ( ! [X7] :
            ( ( r2_hidden(X7,X6)
              | ( X5 != X7
                & X4 != X7
                & X3 != X7
                & X2 != X7
                & X1 != X7
                & X0 != X7 ) )
            & ( X5 = X7
              | X4 = X7
              | X3 = X7
              | X2 = X7
              | X1 = X7
              | X0 = X7
              | ~ r2_hidden(X7,X6) ) )
        | ~ sP0(X5,X4,X3,X2,X1,X0,X6) ) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f22,plain,(
    ! [X5,X4,X3,X2,X1,X0,X6] :
      ( ( sP0(X5,X4,X3,X2,X1,X0,X6)
        | ? [X7] :
            ( ( ( X5 != X7
                & X4 != X7
                & X3 != X7
                & X2 != X7
                & X1 != X7
                & X0 != X7 )
              | ~ r2_hidden(X7,X6) )
            & ( X5 = X7
              | X4 = X7
              | X3 = X7
              | X2 = X7
              | X1 = X7
              | X0 = X7
              | r2_hidden(X7,X6) ) ) )
      & ( ! [X7] :
            ( ( r2_hidden(X7,X6)
              | ( X5 != X7
                & X4 != X7
                & X3 != X7
                & X2 != X7
                & X1 != X7
                & X0 != X7 ) )
            & ( X5 = X7
              | X4 = X7
              | X3 = X7
              | X2 = X7
              | X1 = X7
              | X0 = X7
              | ~ r2_hidden(X7,X6) ) )
        | ~ sP0(X5,X4,X3,X2,X1,X0,X6) ) ) ),
    inference(flattening,[],[f21])).

fof(f23,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6] :
      ( ( sP0(X0,X1,X2,X3,X4,X5,X6)
        | ? [X7] :
            ( ( ( X0 != X7
                & X1 != X7
                & X2 != X7
                & X3 != X7
                & X4 != X7
                & X5 != X7 )
              | ~ r2_hidden(X7,X6) )
            & ( X0 = X7
              | X1 = X7
              | X2 = X7
              | X3 = X7
              | X4 = X7
              | X5 = X7
              | r2_hidden(X7,X6) ) ) )
      & ( ! [X8] :
            ( ( r2_hidden(X8,X6)
              | ( X0 != X8
                & X1 != X8
                & X2 != X8
                & X3 != X8
                & X4 != X8
                & X5 != X8 ) )
            & ( X0 = X8
              | X1 = X8
              | X2 = X8
              | X3 = X8
              | X4 = X8
              | X5 = X8
              | ~ r2_hidden(X8,X6) ) )
        | ~ sP0(X0,X1,X2,X3,X4,X5,X6) ) ) ),
    inference(rectify,[],[f22])).

fof(f24,plain,(
    ! [X6,X5,X4,X3,X2,X1,X0] :
      ( ? [X7] :
          ( ( ( X0 != X7
              & X1 != X7
              & X2 != X7
              & X3 != X7
              & X4 != X7
              & X5 != X7 )
            | ~ r2_hidden(X7,X6) )
          & ( X0 = X7
            | X1 = X7
            | X2 = X7
            | X3 = X7
            | X4 = X7
            | X5 = X7
            | r2_hidden(X7,X6) ) )
     => ( ( ( sK2(X0,X1,X2,X3,X4,X5,X6) != X0
            & sK2(X0,X1,X2,X3,X4,X5,X6) != X1
            & sK2(X0,X1,X2,X3,X4,X5,X6) != X2
            & sK2(X0,X1,X2,X3,X4,X5,X6) != X3
            & sK2(X0,X1,X2,X3,X4,X5,X6) != X4
            & sK2(X0,X1,X2,X3,X4,X5,X6) != X5 )
          | ~ r2_hidden(sK2(X0,X1,X2,X3,X4,X5,X6),X6) )
        & ( sK2(X0,X1,X2,X3,X4,X5,X6) = X0
          | sK2(X0,X1,X2,X3,X4,X5,X6) = X1
          | sK2(X0,X1,X2,X3,X4,X5,X6) = X2
          | sK2(X0,X1,X2,X3,X4,X5,X6) = X3
          | sK2(X0,X1,X2,X3,X4,X5,X6) = X4
          | sK2(X0,X1,X2,X3,X4,X5,X6) = X5
          | r2_hidden(sK2(X0,X1,X2,X3,X4,X5,X6),X6) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6] :
      ( ( sP0(X0,X1,X2,X3,X4,X5,X6)
        | ( ( ( sK2(X0,X1,X2,X3,X4,X5,X6) != X0
              & sK2(X0,X1,X2,X3,X4,X5,X6) != X1
              & sK2(X0,X1,X2,X3,X4,X5,X6) != X2
              & sK2(X0,X1,X2,X3,X4,X5,X6) != X3
              & sK2(X0,X1,X2,X3,X4,X5,X6) != X4
              & sK2(X0,X1,X2,X3,X4,X5,X6) != X5 )
            | ~ r2_hidden(sK2(X0,X1,X2,X3,X4,X5,X6),X6) )
          & ( sK2(X0,X1,X2,X3,X4,X5,X6) = X0
            | sK2(X0,X1,X2,X3,X4,X5,X6) = X1
            | sK2(X0,X1,X2,X3,X4,X5,X6) = X2
            | sK2(X0,X1,X2,X3,X4,X5,X6) = X3
            | sK2(X0,X1,X2,X3,X4,X5,X6) = X4
            | sK2(X0,X1,X2,X3,X4,X5,X6) = X5
            | r2_hidden(sK2(X0,X1,X2,X3,X4,X5,X6),X6) ) ) )
      & ( ! [X8] :
            ( ( r2_hidden(X8,X6)
              | ( X0 != X8
                & X1 != X8
                & X2 != X8
                & X3 != X8
                & X4 != X8
                & X5 != X8 ) )
            & ( X0 = X8
              | X1 = X8
              | X2 = X8
              | X3 = X8
              | X4 = X8
              | X5 = X8
              | ~ r2_hidden(X8,X6) ) )
        | ~ sP0(X0,X1,X2,X3,X4,X5,X6) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f23,f24])).

fof(f42,plain,(
    ! [X6,X4,X2,X0,X8,X5,X3,X1] :
      ( r2_hidden(X8,X6)
      | X5 != X8
      | ~ sP0(X0,X1,X2,X3,X4,X5,X6) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f80,plain,(
    ! [X6,X4,X2,X0,X8,X3,X1] :
      ( r2_hidden(X8,X6)
      | ~ sP0(X0,X1,X2,X3,X4,X8,X6) ) ),
    inference(equality_resolution,[],[f42])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] :
      ( k4_enumset1(X0,X1,X2,X3,X4,X5) = X6
    <=> ! [X7] :
          ( r2_hidden(X7,X6)
        <=> ~ ( X5 != X7
              & X4 != X7
              & X3 != X7
              & X2 != X7
              & X1 != X7
              & X0 != X7 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6] :
      ( k4_enumset1(X0,X1,X2,X3,X4,X5) = X6
    <=> ! [X7] :
          ( r2_hidden(X7,X6)
        <=> ( X5 = X7
            | X4 = X7
            | X3 = X7
            | X2 = X7
            | X1 = X7
            | X0 = X7 ) ) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f15,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6] :
      ( k4_enumset1(X0,X1,X2,X3,X4,X5) = X6
    <=> sP0(X5,X4,X3,X2,X1,X0,X6) ) ),
    inference(definition_folding,[],[f12,f14])).

fof(f26,plain,(
    ! [X0,X1,X2,X3,X4,X5,X6] :
      ( ( k4_enumset1(X0,X1,X2,X3,X4,X5) = X6
        | ~ sP0(X5,X4,X3,X2,X1,X0,X6) )
      & ( sP0(X5,X4,X3,X2,X1,X0,X6)
        | k4_enumset1(X0,X1,X2,X3,X4,X5) != X6 ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f55,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] :
      ( sP0(X5,X4,X3,X2,X1,X0,X6)
      | k4_enumset1(X0,X1,X2,X3,X4,X5) != X6 ) ),
    inference(cnf_transformation,[],[f26])).

fof(f81,plain,(
    ! [X4,X2,X0,X5,X3,X1] : sP0(X5,X4,X3,X2,X1,X0,k4_enumset1(X0,X1,X2,X3,X4,X5)) ),
    inference(equality_resolution,[],[f55])).

fof(f10,conjecture,(
    ! [X0] : r2_hidden(X0,k1_ordinal1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] : r2_hidden(X0,k1_ordinal1(X0)) ),
    inference(negated_conjecture,[],[f10])).

fof(f13,plain,(
    ? [X0] : ~ r2_hidden(X0,k1_ordinal1(X0)) ),
    inference(ennf_transformation,[],[f11])).

fof(f27,plain,
    ( ? [X0] : ~ r2_hidden(X0,k1_ordinal1(X0))
   => ~ r2_hidden(sK3,k1_ordinal1(sK3)) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ~ r2_hidden(sK3,k1_ordinal1(sK3)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f13,f27])).

fof(f58,plain,(
    ~ r2_hidden(sK3,k1_ordinal1(sK3)) ),
    inference(cnf_transformation,[],[f28])).

fof(f9,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0] : k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f63,plain,(
    ! [X0] : k1_tarski(X0) = k4_enumset1(X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f35,f61])).

fof(f64,plain,(
    ! [X0] : k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k4_enumset1(X0,X0,X0,X0,X0,X0))) = k1_ordinal1(X0) ),
    inference(definition_unfolding,[],[f57,f62,f63])).

fof(f71,plain,(
    ~ r2_hidden(sK3,k3_tarski(k4_enumset1(sK3,sK3,sK3,sK3,sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3)))) ),
    inference(definition_unfolding,[],[f58,f64])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k3_tarski(k4_enumset1(X2,X2,X2,X2,X2,X1))) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_2126,plain,
    ( ~ r2_hidden(X0,k4_enumset1(X0,X1,X2,X3,X4,X5))
    | r2_hidden(X0,k3_tarski(k4_enumset1(X6,X6,X6,X6,X6,k4_enumset1(X0,X1,X2,X3,X4,X5)))) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_2133,plain,
    ( ~ r2_hidden(sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3))
    | r2_hidden(sK3,k3_tarski(k4_enumset1(sK3,sK3,sK3,sK3,sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3)))) ),
    inference(instantiation,[status(thm)],[c_2126])).

cnf(c_18,plain,
    ( ~ sP0(X0,X1,X2,X3,X4,X5,X6)
    | r2_hidden(X5,X6) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_21,plain,
    ( sP0(X0,X1,X2,X3,X4,X5,k4_enumset1(X5,X4,X3,X2,X1,X0)) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1202,plain,
    ( r2_hidden(X0,X1)
    | X2 != X3
    | X4 != X0
    | X5 != X6
    | X7 != X8
    | X9 != X10
    | X11 != X12
    | k4_enumset1(X4,X5,X7,X9,X11,X2) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_21])).

cnf(c_1203,plain,
    ( r2_hidden(X0,k4_enumset1(X0,X1,X2,X3,X4,X5)) ),
    inference(unflattening,[status(thm)],[c_1202])).

cnf(c_1205,plain,
    ( r2_hidden(sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3)) ),
    inference(instantiation,[status(thm)],[c_1203])).

cnf(c_22,negated_conjecture,
    ( ~ r2_hidden(sK3,k3_tarski(k4_enumset1(sK3,sK3,sK3,sK3,sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3)))) ),
    inference(cnf_transformation,[],[f71])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2133,c_1205,c_22])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n024.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 15:46:51 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 0.90/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.90/1.00  
% 0.90/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.90/1.00  
% 0.90/1.00  ------  iProver source info
% 0.90/1.00  
% 0.90/1.00  git: date: 2020-06-30 10:37:57 +0100
% 0.90/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.90/1.00  git: non_committed_changes: false
% 0.90/1.00  git: last_make_outside_of_git: false
% 0.90/1.00  
% 0.90/1.00  ------ 
% 0.90/1.00  
% 0.90/1.00  ------ Input Options
% 0.90/1.00  
% 0.90/1.00  --out_options                           all
% 0.90/1.00  --tptp_safe_out                         true
% 0.90/1.00  --problem_path                          ""
% 0.90/1.00  --include_path                          ""
% 0.90/1.00  --clausifier                            res/vclausify_rel
% 0.90/1.00  --clausifier_options                    --mode clausify
% 0.90/1.00  --stdin                                 false
% 0.90/1.00  --stats_out                             all
% 0.90/1.00  
% 0.90/1.00  ------ General Options
% 0.90/1.00  
% 0.90/1.00  --fof                                   false
% 0.90/1.00  --time_out_real                         305.
% 0.90/1.00  --time_out_virtual                      -1.
% 0.90/1.00  --symbol_type_check                     false
% 0.90/1.00  --clausify_out                          false
% 0.90/1.00  --sig_cnt_out                           false
% 0.90/1.00  --trig_cnt_out                          false
% 0.90/1.00  --trig_cnt_out_tolerance                1.
% 0.90/1.00  --trig_cnt_out_sk_spl                   false
% 0.90/1.00  --abstr_cl_out                          false
% 0.90/1.00  
% 0.90/1.00  ------ Global Options
% 0.90/1.00  
% 0.90/1.00  --schedule                              default
% 0.90/1.00  --add_important_lit                     false
% 0.90/1.00  --prop_solver_per_cl                    1000
% 0.90/1.00  --min_unsat_core                        false
% 0.90/1.00  --soft_assumptions                      false
% 0.90/1.00  --soft_lemma_size                       3
% 0.90/1.00  --prop_impl_unit_size                   0
% 0.90/1.00  --prop_impl_unit                        []
% 0.90/1.00  --share_sel_clauses                     true
% 0.90/1.00  --reset_solvers                         false
% 0.90/1.00  --bc_imp_inh                            [conj_cone]
% 0.90/1.00  --conj_cone_tolerance                   3.
% 0.90/1.00  --extra_neg_conj                        none
% 0.90/1.00  --large_theory_mode                     true
% 0.90/1.00  --prolific_symb_bound                   200
% 0.90/1.00  --lt_threshold                          2000
% 0.90/1.00  --clause_weak_htbl                      true
% 0.90/1.00  --gc_record_bc_elim                     false
% 0.90/1.00  
% 0.90/1.00  ------ Preprocessing Options
% 0.90/1.00  
% 0.90/1.00  --preprocessing_flag                    true
% 0.90/1.00  --time_out_prep_mult                    0.1
% 0.90/1.00  --splitting_mode                        input
% 0.90/1.00  --splitting_grd                         true
% 0.90/1.00  --splitting_cvd                         false
% 0.90/1.00  --splitting_cvd_svl                     false
% 0.90/1.00  --splitting_nvd                         32
% 0.90/1.00  --sub_typing                            true
% 0.90/1.00  --prep_gs_sim                           true
% 0.90/1.00  --prep_unflatten                        true
% 0.90/1.00  --prep_res_sim                          true
% 0.90/1.00  --prep_upred                            true
% 0.90/1.00  --prep_sem_filter                       exhaustive
% 0.90/1.00  --prep_sem_filter_out                   false
% 0.90/1.00  --pred_elim                             true
% 0.90/1.00  --res_sim_input                         true
% 0.90/1.00  --eq_ax_congr_red                       true
% 0.90/1.00  --pure_diseq_elim                       true
% 0.90/1.00  --brand_transform                       false
% 0.90/1.00  --non_eq_to_eq                          false
% 0.90/1.00  --prep_def_merge                        true
% 0.90/1.00  --prep_def_merge_prop_impl              false
% 0.90/1.00  --prep_def_merge_mbd                    true
% 0.90/1.00  --prep_def_merge_tr_red                 false
% 0.90/1.00  --prep_def_merge_tr_cl                  false
% 0.90/1.00  --smt_preprocessing                     true
% 0.90/1.00  --smt_ac_axioms                         fast
% 0.90/1.00  --preprocessed_out                      false
% 0.90/1.00  --preprocessed_stats                    false
% 0.90/1.00  
% 0.90/1.00  ------ Abstraction refinement Options
% 0.90/1.00  
% 0.90/1.00  --abstr_ref                             []
% 0.90/1.00  --abstr_ref_prep                        false
% 0.90/1.00  --abstr_ref_until_sat                   false
% 0.90/1.00  --abstr_ref_sig_restrict                funpre
% 0.90/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 0.90/1.00  --abstr_ref_under                       []
% 0.90/1.00  
% 0.90/1.00  ------ SAT Options
% 0.90/1.00  
% 0.90/1.00  --sat_mode                              false
% 0.90/1.00  --sat_fm_restart_options                ""
% 0.90/1.00  --sat_gr_def                            false
% 0.90/1.00  --sat_epr_types                         true
% 0.90/1.00  --sat_non_cyclic_types                  false
% 0.90/1.00  --sat_finite_models                     false
% 0.90/1.00  --sat_fm_lemmas                         false
% 0.90/1.00  --sat_fm_prep                           false
% 0.90/1.00  --sat_fm_uc_incr                        true
% 0.90/1.00  --sat_out_model                         small
% 0.90/1.00  --sat_out_clauses                       false
% 0.90/1.00  
% 0.90/1.00  ------ QBF Options
% 0.90/1.00  
% 0.90/1.00  --qbf_mode                              false
% 0.90/1.00  --qbf_elim_univ                         false
% 0.90/1.00  --qbf_dom_inst                          none
% 0.90/1.00  --qbf_dom_pre_inst                      false
% 0.90/1.00  --qbf_sk_in                             false
% 0.90/1.00  --qbf_pred_elim                         true
% 0.90/1.00  --qbf_split                             512
% 0.90/1.00  
% 0.90/1.00  ------ BMC1 Options
% 0.90/1.00  
% 0.90/1.00  --bmc1_incremental                      false
% 0.90/1.00  --bmc1_axioms                           reachable_all
% 0.90/1.00  --bmc1_min_bound                        0
% 0.90/1.00  --bmc1_max_bound                        -1
% 0.90/1.00  --bmc1_max_bound_default                -1
% 0.90/1.00  --bmc1_symbol_reachability              true
% 0.90/1.00  --bmc1_property_lemmas                  false
% 0.90/1.00  --bmc1_k_induction                      false
% 0.90/1.00  --bmc1_non_equiv_states                 false
% 0.90/1.00  --bmc1_deadlock                         false
% 0.90/1.00  --bmc1_ucm                              false
% 0.90/1.00  --bmc1_add_unsat_core                   none
% 0.90/1.00  --bmc1_unsat_core_children              false
% 0.90/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 0.90/1.00  --bmc1_out_stat                         full
% 0.90/1.00  --bmc1_ground_init                      false
% 0.90/1.00  --bmc1_pre_inst_next_state              false
% 0.90/1.00  --bmc1_pre_inst_state                   false
% 0.90/1.00  --bmc1_pre_inst_reach_state             false
% 0.90/1.00  --bmc1_out_unsat_core                   false
% 0.90/1.00  --bmc1_aig_witness_out                  false
% 0.90/1.00  --bmc1_verbose                          false
% 0.90/1.00  --bmc1_dump_clauses_tptp                false
% 0.90/1.00  --bmc1_dump_unsat_core_tptp             false
% 0.90/1.00  --bmc1_dump_file                        -
% 0.90/1.00  --bmc1_ucm_expand_uc_limit              128
% 0.90/1.00  --bmc1_ucm_n_expand_iterations          6
% 0.90/1.00  --bmc1_ucm_extend_mode                  1
% 0.90/1.00  --bmc1_ucm_init_mode                    2
% 0.90/1.00  --bmc1_ucm_cone_mode                    none
% 0.90/1.00  --bmc1_ucm_reduced_relation_type        0
% 0.90/1.00  --bmc1_ucm_relax_model                  4
% 0.90/1.00  --bmc1_ucm_full_tr_after_sat            true
% 0.90/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 0.90/1.00  --bmc1_ucm_layered_model                none
% 0.90/1.00  --bmc1_ucm_max_lemma_size               10
% 0.90/1.00  
% 0.90/1.00  ------ AIG Options
% 0.90/1.00  
% 0.90/1.00  --aig_mode                              false
% 0.90/1.00  
% 0.90/1.00  ------ Instantiation Options
% 0.90/1.00  
% 0.90/1.00  --instantiation_flag                    true
% 0.90/1.00  --inst_sos_flag                         false
% 0.90/1.00  --inst_sos_phase                        true
% 0.90/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.90/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.90/1.00  --inst_lit_sel_side                     num_symb
% 0.90/1.00  --inst_solver_per_active                1400
% 0.90/1.00  --inst_solver_calls_frac                1.
% 0.90/1.00  --inst_passive_queue_type               priority_queues
% 0.90/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.90/1.00  --inst_passive_queues_freq              [25;2]
% 0.90/1.00  --inst_dismatching                      true
% 0.90/1.00  --inst_eager_unprocessed_to_passive     true
% 0.90/1.00  --inst_prop_sim_given                   true
% 0.90/1.00  --inst_prop_sim_new                     false
% 0.90/1.00  --inst_subs_new                         false
% 0.90/1.00  --inst_eq_res_simp                      false
% 0.90/1.00  --inst_subs_given                       false
% 0.90/1.00  --inst_orphan_elimination               true
% 0.90/1.00  --inst_learning_loop_flag               true
% 0.90/1.00  --inst_learning_start                   3000
% 0.90/1.00  --inst_learning_factor                  2
% 0.90/1.00  --inst_start_prop_sim_after_learn       3
% 0.90/1.00  --inst_sel_renew                        solver
% 0.90/1.00  --inst_lit_activity_flag                true
% 0.90/1.00  --inst_restr_to_given                   false
% 0.90/1.00  --inst_activity_threshold               500
% 0.90/1.00  --inst_out_proof                        true
% 0.90/1.00  
% 0.90/1.00  ------ Resolution Options
% 0.90/1.00  
% 0.90/1.00  --resolution_flag                       true
% 0.90/1.00  --res_lit_sel                           adaptive
% 0.90/1.00  --res_lit_sel_side                      none
% 0.90/1.00  --res_ordering                          kbo
% 0.90/1.00  --res_to_prop_solver                    active
% 0.90/1.00  --res_prop_simpl_new                    false
% 0.90/1.00  --res_prop_simpl_given                  true
% 0.90/1.00  --res_passive_queue_type                priority_queues
% 0.90/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.90/1.00  --res_passive_queues_freq               [15;5]
% 0.90/1.00  --res_forward_subs                      full
% 0.90/1.00  --res_backward_subs                     full
% 0.90/1.00  --res_forward_subs_resolution           true
% 0.90/1.00  --res_backward_subs_resolution          true
% 0.90/1.00  --res_orphan_elimination                true
% 0.90/1.00  --res_time_limit                        2.
% 0.90/1.00  --res_out_proof                         true
% 0.90/1.00  
% 0.90/1.00  ------ Superposition Options
% 0.90/1.00  
% 0.90/1.00  --superposition_flag                    true
% 0.90/1.00  --sup_passive_queue_type                priority_queues
% 0.90/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.90/1.00  --sup_passive_queues_freq               [8;1;4]
% 0.90/1.00  --demod_completeness_check              fast
% 0.90/1.00  --demod_use_ground                      true
% 0.90/1.00  --sup_to_prop_solver                    passive
% 0.90/1.00  --sup_prop_simpl_new                    true
% 0.90/1.00  --sup_prop_simpl_given                  true
% 0.90/1.00  --sup_fun_splitting                     false
% 0.90/1.00  --sup_smt_interval                      50000
% 0.90/1.00  
% 0.90/1.00  ------ Superposition Simplification Setup
% 0.90/1.00  
% 0.90/1.00  --sup_indices_passive                   []
% 0.90/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 0.90/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.00  --sup_full_bw                           [BwDemod]
% 0.90/1.00  --sup_immed_triv                        [TrivRules]
% 0.90/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.90/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.00  --sup_immed_bw_main                     []
% 0.90/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.90/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 0.90/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.90/1.00  
% 0.90/1.00  ------ Combination Options
% 0.90/1.00  
% 0.90/1.00  --comb_res_mult                         3
% 0.90/1.00  --comb_sup_mult                         2
% 0.90/1.00  --comb_inst_mult                        10
% 0.90/1.00  
% 0.90/1.00  ------ Debug Options
% 0.90/1.00  
% 0.90/1.00  --dbg_backtrace                         false
% 0.90/1.00  --dbg_dump_prop_clauses                 false
% 0.90/1.00  --dbg_dump_prop_clauses_file            -
% 0.90/1.00  --dbg_out_stat                          false
% 0.90/1.00  ------ Parsing...
% 0.90/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.90/1.00  
% 0.90/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 0.90/1.00  
% 0.90/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.90/1.00  
% 0.90/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.90/1.00  ------ Proving...
% 0.90/1.00  ------ Problem Properties 
% 0.90/1.00  
% 0.90/1.00  
% 0.90/1.00  clauses                                 23
% 0.90/1.00  conjectures                             1
% 0.90/1.00  EPR                                     7
% 0.90/1.00  Horn                                    19
% 0.90/1.00  unary                                   2
% 0.90/1.00  binary                                  9
% 0.90/1.00  lits                                    67
% 0.90/1.00  lits eq                                 22
% 0.90/1.00  fd_pure                                 0
% 0.90/1.00  fd_pseudo                               0
% 0.90/1.00  fd_cond                                 0
% 0.90/1.00  fd_pseudo_cond                          5
% 0.90/1.00  AC symbols                              0
% 0.90/1.00  
% 0.90/1.00  ------ Schedule dynamic 5 is on 
% 0.90/1.00  
% 0.90/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.90/1.00  
% 0.90/1.00  
% 0.90/1.00  ------ 
% 0.90/1.00  Current options:
% 0.90/1.00  ------ 
% 0.90/1.00  
% 0.90/1.00  ------ Input Options
% 0.90/1.00  
% 0.90/1.00  --out_options                           all
% 0.90/1.00  --tptp_safe_out                         true
% 0.90/1.00  --problem_path                          ""
% 0.90/1.00  --include_path                          ""
% 0.90/1.00  --clausifier                            res/vclausify_rel
% 0.90/1.00  --clausifier_options                    --mode clausify
% 0.90/1.00  --stdin                                 false
% 0.90/1.00  --stats_out                             all
% 0.90/1.00  
% 0.90/1.00  ------ General Options
% 0.90/1.00  
% 0.90/1.00  --fof                                   false
% 0.90/1.00  --time_out_real                         305.
% 0.90/1.00  --time_out_virtual                      -1.
% 0.90/1.00  --symbol_type_check                     false
% 0.90/1.00  --clausify_out                          false
% 0.90/1.00  --sig_cnt_out                           false
% 0.90/1.00  --trig_cnt_out                          false
% 0.90/1.00  --trig_cnt_out_tolerance                1.
% 0.90/1.00  --trig_cnt_out_sk_spl                   false
% 0.90/1.00  --abstr_cl_out                          false
% 0.90/1.00  
% 0.90/1.00  ------ Global Options
% 0.90/1.00  
% 0.90/1.00  --schedule                              default
% 0.90/1.00  --add_important_lit                     false
% 0.90/1.00  --prop_solver_per_cl                    1000
% 0.90/1.00  --min_unsat_core                        false
% 0.90/1.00  --soft_assumptions                      false
% 0.90/1.00  --soft_lemma_size                       3
% 0.90/1.00  --prop_impl_unit_size                   0
% 0.90/1.00  --prop_impl_unit                        []
% 0.90/1.00  --share_sel_clauses                     true
% 0.90/1.00  --reset_solvers                         false
% 0.90/1.00  --bc_imp_inh                            [conj_cone]
% 0.90/1.00  --conj_cone_tolerance                   3.
% 0.90/1.00  --extra_neg_conj                        none
% 0.90/1.00  --large_theory_mode                     true
% 0.90/1.00  --prolific_symb_bound                   200
% 0.90/1.00  --lt_threshold                          2000
% 0.90/1.00  --clause_weak_htbl                      true
% 0.90/1.00  --gc_record_bc_elim                     false
% 0.90/1.00  
% 0.90/1.00  ------ Preprocessing Options
% 0.90/1.00  
% 0.90/1.00  --preprocessing_flag                    true
% 0.90/1.00  --time_out_prep_mult                    0.1
% 0.90/1.00  --splitting_mode                        input
% 0.90/1.00  --splitting_grd                         true
% 0.90/1.00  --splitting_cvd                         false
% 0.90/1.00  --splitting_cvd_svl                     false
% 0.90/1.00  --splitting_nvd                         32
% 0.90/1.00  --sub_typing                            true
% 0.90/1.00  --prep_gs_sim                           true
% 0.90/1.00  --prep_unflatten                        true
% 0.90/1.00  --prep_res_sim                          true
% 0.90/1.00  --prep_upred                            true
% 0.90/1.00  --prep_sem_filter                       exhaustive
% 0.90/1.00  --prep_sem_filter_out                   false
% 0.90/1.00  --pred_elim                             true
% 0.90/1.00  --res_sim_input                         true
% 0.90/1.00  --eq_ax_congr_red                       true
% 0.90/1.00  --pure_diseq_elim                       true
% 0.90/1.00  --brand_transform                       false
% 0.90/1.00  --non_eq_to_eq                          false
% 0.90/1.00  --prep_def_merge                        true
% 0.90/1.00  --prep_def_merge_prop_impl              false
% 0.90/1.00  --prep_def_merge_mbd                    true
% 0.90/1.00  --prep_def_merge_tr_red                 false
% 0.90/1.00  --prep_def_merge_tr_cl                  false
% 0.90/1.00  --smt_preprocessing                     true
% 0.90/1.00  --smt_ac_axioms                         fast
% 0.90/1.00  --preprocessed_out                      false
% 0.90/1.00  --preprocessed_stats                    false
% 0.90/1.00  
% 0.90/1.00  ------ Abstraction refinement Options
% 0.90/1.00  
% 0.90/1.00  --abstr_ref                             []
% 0.90/1.00  --abstr_ref_prep                        false
% 0.90/1.00  --abstr_ref_until_sat                   false
% 0.90/1.00  --abstr_ref_sig_restrict                funpre
% 0.90/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 0.90/1.00  --abstr_ref_under                       []
% 0.90/1.00  
% 0.90/1.00  ------ SAT Options
% 0.90/1.00  
% 0.90/1.00  --sat_mode                              false
% 0.90/1.00  --sat_fm_restart_options                ""
% 0.90/1.00  --sat_gr_def                            false
% 0.90/1.00  --sat_epr_types                         true
% 0.90/1.00  --sat_non_cyclic_types                  false
% 0.90/1.00  --sat_finite_models                     false
% 0.90/1.00  --sat_fm_lemmas                         false
% 0.90/1.00  --sat_fm_prep                           false
% 0.90/1.00  --sat_fm_uc_incr                        true
% 0.90/1.00  --sat_out_model                         small
% 0.90/1.00  --sat_out_clauses                       false
% 0.90/1.00  
% 0.90/1.00  ------ QBF Options
% 0.90/1.00  
% 0.90/1.00  --qbf_mode                              false
% 0.90/1.00  --qbf_elim_univ                         false
% 0.90/1.00  --qbf_dom_inst                          none
% 0.90/1.00  --qbf_dom_pre_inst                      false
% 0.90/1.00  --qbf_sk_in                             false
% 0.90/1.00  --qbf_pred_elim                         true
% 0.90/1.00  --qbf_split                             512
% 0.90/1.00  
% 0.90/1.00  ------ BMC1 Options
% 0.90/1.00  
% 0.90/1.00  --bmc1_incremental                      false
% 0.90/1.00  --bmc1_axioms                           reachable_all
% 0.90/1.00  --bmc1_min_bound                        0
% 0.90/1.00  --bmc1_max_bound                        -1
% 0.90/1.00  --bmc1_max_bound_default                -1
% 0.90/1.00  --bmc1_symbol_reachability              true
% 0.90/1.00  --bmc1_property_lemmas                  false
% 0.90/1.00  --bmc1_k_induction                      false
% 0.90/1.00  --bmc1_non_equiv_states                 false
% 0.90/1.00  --bmc1_deadlock                         false
% 0.90/1.00  --bmc1_ucm                              false
% 0.90/1.00  --bmc1_add_unsat_core                   none
% 0.90/1.00  --bmc1_unsat_core_children              false
% 0.90/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 0.90/1.00  --bmc1_out_stat                         full
% 0.90/1.00  --bmc1_ground_init                      false
% 0.90/1.00  --bmc1_pre_inst_next_state              false
% 0.90/1.00  --bmc1_pre_inst_state                   false
% 0.90/1.00  --bmc1_pre_inst_reach_state             false
% 0.90/1.00  --bmc1_out_unsat_core                   false
% 0.90/1.00  --bmc1_aig_witness_out                  false
% 0.90/1.00  --bmc1_verbose                          false
% 0.90/1.00  --bmc1_dump_clauses_tptp                false
% 0.90/1.00  --bmc1_dump_unsat_core_tptp             false
% 0.90/1.00  --bmc1_dump_file                        -
% 0.90/1.00  --bmc1_ucm_expand_uc_limit              128
% 0.90/1.00  --bmc1_ucm_n_expand_iterations          6
% 0.90/1.00  --bmc1_ucm_extend_mode                  1
% 0.90/1.00  --bmc1_ucm_init_mode                    2
% 0.90/1.00  --bmc1_ucm_cone_mode                    none
% 0.90/1.00  --bmc1_ucm_reduced_relation_type        0
% 0.90/1.00  --bmc1_ucm_relax_model                  4
% 0.90/1.00  --bmc1_ucm_full_tr_after_sat            true
% 0.90/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 0.90/1.00  --bmc1_ucm_layered_model                none
% 0.90/1.00  --bmc1_ucm_max_lemma_size               10
% 0.90/1.00  
% 0.90/1.00  ------ AIG Options
% 0.90/1.00  
% 0.90/1.00  --aig_mode                              false
% 0.90/1.00  
% 0.90/1.00  ------ Instantiation Options
% 0.90/1.00  
% 0.90/1.00  --instantiation_flag                    true
% 0.90/1.00  --inst_sos_flag                         false
% 0.90/1.00  --inst_sos_phase                        true
% 0.90/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.90/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.90/1.00  --inst_lit_sel_side                     none
% 0.90/1.00  --inst_solver_per_active                1400
% 0.90/1.00  --inst_solver_calls_frac                1.
% 0.90/1.00  --inst_passive_queue_type               priority_queues
% 0.90/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.90/1.00  --inst_passive_queues_freq              [25;2]
% 0.90/1.01  --inst_dismatching                      true
% 0.90/1.01  --inst_eager_unprocessed_to_passive     true
% 0.90/1.01  --inst_prop_sim_given                   true
% 0.90/1.01  --inst_prop_sim_new                     false
% 0.90/1.01  --inst_subs_new                         false
% 0.90/1.01  --inst_eq_res_simp                      false
% 0.90/1.01  --inst_subs_given                       false
% 0.90/1.01  --inst_orphan_elimination               true
% 0.90/1.01  --inst_learning_loop_flag               true
% 0.90/1.01  --inst_learning_start                   3000
% 0.90/1.01  --inst_learning_factor                  2
% 0.90/1.01  --inst_start_prop_sim_after_learn       3
% 0.90/1.01  --inst_sel_renew                        solver
% 0.90/1.01  --inst_lit_activity_flag                true
% 0.90/1.01  --inst_restr_to_given                   false
% 0.90/1.01  --inst_activity_threshold               500
% 0.90/1.01  --inst_out_proof                        true
% 0.90/1.01  
% 0.90/1.01  ------ Resolution Options
% 0.90/1.01  
% 0.90/1.01  --resolution_flag                       false
% 0.90/1.01  --res_lit_sel                           adaptive
% 0.90/1.01  --res_lit_sel_side                      none
% 0.90/1.01  --res_ordering                          kbo
% 0.90/1.01  --res_to_prop_solver                    active
% 0.90/1.01  --res_prop_simpl_new                    false
% 0.90/1.01  --res_prop_simpl_given                  true
% 0.90/1.01  --res_passive_queue_type                priority_queues
% 0.90/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.90/1.01  --res_passive_queues_freq               [15;5]
% 0.90/1.01  --res_forward_subs                      full
% 0.90/1.01  --res_backward_subs                     full
% 0.90/1.01  --res_forward_subs_resolution           true
% 0.90/1.01  --res_backward_subs_resolution          true
% 0.90/1.01  --res_orphan_elimination                true
% 0.90/1.01  --res_time_limit                        2.
% 0.90/1.01  --res_out_proof                         true
% 0.90/1.01  
% 0.90/1.01  ------ Superposition Options
% 0.90/1.01  
% 0.90/1.01  --superposition_flag                    true
% 0.90/1.01  --sup_passive_queue_type                priority_queues
% 0.90/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.90/1.01  --sup_passive_queues_freq               [8;1;4]
% 0.90/1.01  --demod_completeness_check              fast
% 0.90/1.01  --demod_use_ground                      true
% 0.90/1.01  --sup_to_prop_solver                    passive
% 0.90/1.01  --sup_prop_simpl_new                    true
% 0.90/1.01  --sup_prop_simpl_given                  true
% 0.90/1.01  --sup_fun_splitting                     false
% 0.90/1.01  --sup_smt_interval                      50000
% 0.90/1.01  
% 0.90/1.01  ------ Superposition Simplification Setup
% 0.90/1.01  
% 0.90/1.01  --sup_indices_passive                   []
% 0.90/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.90/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 0.90/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.01  --sup_full_bw                           [BwDemod]
% 0.90/1.01  --sup_immed_triv                        [TrivRules]
% 0.90/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.90/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.01  --sup_immed_bw_main                     []
% 0.90/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.90/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 0.90/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.90/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.90/1.01  
% 0.90/1.01  ------ Combination Options
% 0.90/1.01  
% 0.90/1.01  --comb_res_mult                         3
% 0.90/1.01  --comb_sup_mult                         2
% 0.90/1.01  --comb_inst_mult                        10
% 0.90/1.01  
% 0.90/1.01  ------ Debug Options
% 0.90/1.01  
% 0.90/1.01  --dbg_backtrace                         false
% 0.90/1.01  --dbg_dump_prop_clauses                 false
% 0.90/1.01  --dbg_dump_prop_clauses_file            -
% 0.90/1.01  --dbg_out_stat                          false
% 0.90/1.01  
% 0.90/1.01  
% 0.90/1.01  
% 0.90/1.01  
% 0.90/1.01  ------ Proving...
% 0.90/1.01  
% 0.90/1.01  
% 0.90/1.01  % SZS status Theorem for theBenchmark.p
% 0.90/1.01  
% 0.90/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 0.90/1.01  
% 0.90/1.01  fof(f1,axiom,(
% 0.90/1.01    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f16,plain,(
% 0.90/1.01    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.90/1.01    inference(nnf_transformation,[],[f1])).
% 0.90/1.01  
% 0.90/1.01  fof(f17,plain,(
% 0.90/1.01    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.90/1.01    inference(flattening,[],[f16])).
% 0.90/1.01  
% 0.90/1.01  fof(f18,plain,(
% 0.90/1.01    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.90/1.01    inference(rectify,[],[f17])).
% 0.90/1.01  
% 0.90/1.01  fof(f19,plain,(
% 0.90/1.01    ! [X2,X1,X0] : (? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2))) => (((~r2_hidden(sK1(X0,X1,X2),X1) & ~r2_hidden(sK1(X0,X1,X2),X0)) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (r2_hidden(sK1(X0,X1,X2),X1) | r2_hidden(sK1(X0,X1,X2),X0) | r2_hidden(sK1(X0,X1,X2),X2))))),
% 0.90/1.01    introduced(choice_axiom,[])).
% 0.90/1.01  
% 0.90/1.01  fof(f20,plain,(
% 0.90/1.01    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | (((~r2_hidden(sK1(X0,X1,X2),X1) & ~r2_hidden(sK1(X0,X1,X2),X0)) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (r2_hidden(sK1(X0,X1,X2),X1) | r2_hidden(sK1(X0,X1,X2),X0) | r2_hidden(sK1(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 0.90/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f18,f19])).
% 0.90/1.01  
% 0.90/1.01  fof(f31,plain,(
% 0.90/1.01    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k2_xboole_0(X0,X1) != X2) )),
% 0.90/1.01    inference(cnf_transformation,[],[f20])).
% 0.90/1.01  
% 0.90/1.01  fof(f7,axiom,(
% 0.90/1.01    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f40,plain,(
% 0.90/1.01    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 0.90/1.01    inference(cnf_transformation,[],[f7])).
% 0.90/1.01  
% 0.90/1.01  fof(f3,axiom,(
% 0.90/1.01    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f36,plain,(
% 0.90/1.01    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 0.90/1.01    inference(cnf_transformation,[],[f3])).
% 0.90/1.01  
% 0.90/1.01  fof(f4,axiom,(
% 0.90/1.01    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f37,plain,(
% 0.90/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 0.90/1.01    inference(cnf_transformation,[],[f4])).
% 0.90/1.01  
% 0.90/1.01  fof(f5,axiom,(
% 0.90/1.01    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f38,plain,(
% 0.90/1.01    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 0.90/1.01    inference(cnf_transformation,[],[f5])).
% 0.90/1.01  
% 0.90/1.01  fof(f6,axiom,(
% 0.90/1.01    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f39,plain,(
% 0.90/1.01    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 0.90/1.01    inference(cnf_transformation,[],[f6])).
% 0.90/1.01  
% 0.90/1.01  fof(f59,plain,(
% 0.90/1.01    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k4_enumset1(X0,X0,X0,X1,X2,X3)) )),
% 0.90/1.01    inference(definition_unfolding,[],[f38,f39])).
% 0.90/1.01  
% 0.90/1.01  fof(f60,plain,(
% 0.90/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k4_enumset1(X0,X0,X0,X0,X1,X2)) )),
% 0.90/1.01    inference(definition_unfolding,[],[f37,f59])).
% 0.90/1.01  
% 0.90/1.01  fof(f61,plain,(
% 0.90/1.01    ( ! [X0,X1] : (k2_tarski(X0,X1) = k4_enumset1(X0,X0,X0,X0,X0,X1)) )),
% 0.90/1.01    inference(definition_unfolding,[],[f36,f60])).
% 0.90/1.01  
% 0.90/1.01  fof(f62,plain,(
% 0.90/1.01    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) )),
% 0.90/1.01    inference(definition_unfolding,[],[f40,f61])).
% 0.90/1.01  
% 0.90/1.01  fof(f68,plain,(
% 0.90/1.01    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1)) != X2) )),
% 0.90/1.01    inference(definition_unfolding,[],[f31,f62])).
% 0.90/1.01  
% 0.90/1.01  fof(f72,plain,(
% 0.90/1.01    ( ! [X4,X0,X1] : (r2_hidden(X4,k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,X1))) | ~r2_hidden(X4,X1)) )),
% 0.90/1.01    inference(equality_resolution,[],[f68])).
% 0.90/1.01  
% 0.90/1.01  fof(f14,plain,(
% 0.90/1.01    ! [X5,X4,X3,X2,X1,X0,X6] : (sP0(X5,X4,X3,X2,X1,X0,X6) <=> ! [X7] : (r2_hidden(X7,X6) <=> (X5 = X7 | X4 = X7 | X3 = X7 | X2 = X7 | X1 = X7 | X0 = X7)))),
% 0.90/1.01    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 0.90/1.01  
% 0.90/1.01  fof(f21,plain,(
% 0.90/1.01    ! [X5,X4,X3,X2,X1,X0,X6] : ((sP0(X5,X4,X3,X2,X1,X0,X6) | ? [X7] : (((X5 != X7 & X4 != X7 & X3 != X7 & X2 != X7 & X1 != X7 & X0 != X7) | ~r2_hidden(X7,X6)) & ((X5 = X7 | X4 = X7 | X3 = X7 | X2 = X7 | X1 = X7 | X0 = X7) | r2_hidden(X7,X6)))) & (! [X7] : ((r2_hidden(X7,X6) | (X5 != X7 & X4 != X7 & X3 != X7 & X2 != X7 & X1 != X7 & X0 != X7)) & ((X5 = X7 | X4 = X7 | X3 = X7 | X2 = X7 | X1 = X7 | X0 = X7) | ~r2_hidden(X7,X6))) | ~sP0(X5,X4,X3,X2,X1,X0,X6)))),
% 0.90/1.01    inference(nnf_transformation,[],[f14])).
% 0.90/1.01  
% 0.90/1.01  fof(f22,plain,(
% 0.90/1.01    ! [X5,X4,X3,X2,X1,X0,X6] : ((sP0(X5,X4,X3,X2,X1,X0,X6) | ? [X7] : (((X5 != X7 & X4 != X7 & X3 != X7 & X2 != X7 & X1 != X7 & X0 != X7) | ~r2_hidden(X7,X6)) & (X5 = X7 | X4 = X7 | X3 = X7 | X2 = X7 | X1 = X7 | X0 = X7 | r2_hidden(X7,X6)))) & (! [X7] : ((r2_hidden(X7,X6) | (X5 != X7 & X4 != X7 & X3 != X7 & X2 != X7 & X1 != X7 & X0 != X7)) & (X5 = X7 | X4 = X7 | X3 = X7 | X2 = X7 | X1 = X7 | X0 = X7 | ~r2_hidden(X7,X6))) | ~sP0(X5,X4,X3,X2,X1,X0,X6)))),
% 0.90/1.01    inference(flattening,[],[f21])).
% 0.90/1.01  
% 0.90/1.01  fof(f23,plain,(
% 0.90/1.01    ! [X0,X1,X2,X3,X4,X5,X6] : ((sP0(X0,X1,X2,X3,X4,X5,X6) | ? [X7] : (((X0 != X7 & X1 != X7 & X2 != X7 & X3 != X7 & X4 != X7 & X5 != X7) | ~r2_hidden(X7,X6)) & (X0 = X7 | X1 = X7 | X2 = X7 | X3 = X7 | X4 = X7 | X5 = X7 | r2_hidden(X7,X6)))) & (! [X8] : ((r2_hidden(X8,X6) | (X0 != X8 & X1 != X8 & X2 != X8 & X3 != X8 & X4 != X8 & X5 != X8)) & (X0 = X8 | X1 = X8 | X2 = X8 | X3 = X8 | X4 = X8 | X5 = X8 | ~r2_hidden(X8,X6))) | ~sP0(X0,X1,X2,X3,X4,X5,X6)))),
% 0.90/1.01    inference(rectify,[],[f22])).
% 0.90/1.01  
% 0.90/1.01  fof(f24,plain,(
% 0.90/1.01    ! [X6,X5,X4,X3,X2,X1,X0] : (? [X7] : (((X0 != X7 & X1 != X7 & X2 != X7 & X3 != X7 & X4 != X7 & X5 != X7) | ~r2_hidden(X7,X6)) & (X0 = X7 | X1 = X7 | X2 = X7 | X3 = X7 | X4 = X7 | X5 = X7 | r2_hidden(X7,X6))) => (((sK2(X0,X1,X2,X3,X4,X5,X6) != X0 & sK2(X0,X1,X2,X3,X4,X5,X6) != X1 & sK2(X0,X1,X2,X3,X4,X5,X6) != X2 & sK2(X0,X1,X2,X3,X4,X5,X6) != X3 & sK2(X0,X1,X2,X3,X4,X5,X6) != X4 & sK2(X0,X1,X2,X3,X4,X5,X6) != X5) | ~r2_hidden(sK2(X0,X1,X2,X3,X4,X5,X6),X6)) & (sK2(X0,X1,X2,X3,X4,X5,X6) = X0 | sK2(X0,X1,X2,X3,X4,X5,X6) = X1 | sK2(X0,X1,X2,X3,X4,X5,X6) = X2 | sK2(X0,X1,X2,X3,X4,X5,X6) = X3 | sK2(X0,X1,X2,X3,X4,X5,X6) = X4 | sK2(X0,X1,X2,X3,X4,X5,X6) = X5 | r2_hidden(sK2(X0,X1,X2,X3,X4,X5,X6),X6))))),
% 0.90/1.01    introduced(choice_axiom,[])).
% 0.90/1.01  
% 0.90/1.01  fof(f25,plain,(
% 0.90/1.01    ! [X0,X1,X2,X3,X4,X5,X6] : ((sP0(X0,X1,X2,X3,X4,X5,X6) | (((sK2(X0,X1,X2,X3,X4,X5,X6) != X0 & sK2(X0,X1,X2,X3,X4,X5,X6) != X1 & sK2(X0,X1,X2,X3,X4,X5,X6) != X2 & sK2(X0,X1,X2,X3,X4,X5,X6) != X3 & sK2(X0,X1,X2,X3,X4,X5,X6) != X4 & sK2(X0,X1,X2,X3,X4,X5,X6) != X5) | ~r2_hidden(sK2(X0,X1,X2,X3,X4,X5,X6),X6)) & (sK2(X0,X1,X2,X3,X4,X5,X6) = X0 | sK2(X0,X1,X2,X3,X4,X5,X6) = X1 | sK2(X0,X1,X2,X3,X4,X5,X6) = X2 | sK2(X0,X1,X2,X3,X4,X5,X6) = X3 | sK2(X0,X1,X2,X3,X4,X5,X6) = X4 | sK2(X0,X1,X2,X3,X4,X5,X6) = X5 | r2_hidden(sK2(X0,X1,X2,X3,X4,X5,X6),X6)))) & (! [X8] : ((r2_hidden(X8,X6) | (X0 != X8 & X1 != X8 & X2 != X8 & X3 != X8 & X4 != X8 & X5 != X8)) & (X0 = X8 | X1 = X8 | X2 = X8 | X3 = X8 | X4 = X8 | X5 = X8 | ~r2_hidden(X8,X6))) | ~sP0(X0,X1,X2,X3,X4,X5,X6)))),
% 0.90/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f23,f24])).
% 0.90/1.01  
% 0.90/1.01  fof(f42,plain,(
% 0.90/1.01    ( ! [X6,X4,X2,X0,X8,X5,X3,X1] : (r2_hidden(X8,X6) | X5 != X8 | ~sP0(X0,X1,X2,X3,X4,X5,X6)) )),
% 0.90/1.01    inference(cnf_transformation,[],[f25])).
% 0.90/1.01  
% 0.90/1.01  fof(f80,plain,(
% 0.90/1.01    ( ! [X6,X4,X2,X0,X8,X3,X1] : (r2_hidden(X8,X6) | ~sP0(X0,X1,X2,X3,X4,X8,X6)) )),
% 0.90/1.01    inference(equality_resolution,[],[f42])).
% 0.90/1.01  
% 0.90/1.01  fof(f8,axiom,(
% 0.90/1.01    ! [X0,X1,X2,X3,X4,X5,X6] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = X6 <=> ! [X7] : (r2_hidden(X7,X6) <=> ~(X5 != X7 & X4 != X7 & X3 != X7 & X2 != X7 & X1 != X7 & X0 != X7)))),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f12,plain,(
% 0.90/1.01    ! [X0,X1,X2,X3,X4,X5,X6] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = X6 <=> ! [X7] : (r2_hidden(X7,X6) <=> (X5 = X7 | X4 = X7 | X3 = X7 | X2 = X7 | X1 = X7 | X0 = X7)))),
% 0.90/1.01    inference(ennf_transformation,[],[f8])).
% 0.90/1.01  
% 0.90/1.01  fof(f15,plain,(
% 0.90/1.01    ! [X0,X1,X2,X3,X4,X5,X6] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = X6 <=> sP0(X5,X4,X3,X2,X1,X0,X6))),
% 0.90/1.01    inference(definition_folding,[],[f12,f14])).
% 0.90/1.01  
% 0.90/1.01  fof(f26,plain,(
% 0.90/1.01    ! [X0,X1,X2,X3,X4,X5,X6] : ((k4_enumset1(X0,X1,X2,X3,X4,X5) = X6 | ~sP0(X5,X4,X3,X2,X1,X0,X6)) & (sP0(X5,X4,X3,X2,X1,X0,X6) | k4_enumset1(X0,X1,X2,X3,X4,X5) != X6))),
% 0.90/1.01    inference(nnf_transformation,[],[f15])).
% 0.90/1.01  
% 0.90/1.01  fof(f55,plain,(
% 0.90/1.01    ( ! [X6,X4,X2,X0,X5,X3,X1] : (sP0(X5,X4,X3,X2,X1,X0,X6) | k4_enumset1(X0,X1,X2,X3,X4,X5) != X6) )),
% 0.90/1.01    inference(cnf_transformation,[],[f26])).
% 0.90/1.01  
% 0.90/1.01  fof(f81,plain,(
% 0.90/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (sP0(X5,X4,X3,X2,X1,X0,k4_enumset1(X0,X1,X2,X3,X4,X5))) )),
% 0.90/1.01    inference(equality_resolution,[],[f55])).
% 0.90/1.01  
% 0.90/1.01  fof(f10,conjecture,(
% 0.90/1.01    ! [X0] : r2_hidden(X0,k1_ordinal1(X0))),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f11,negated_conjecture,(
% 0.90/1.01    ~! [X0] : r2_hidden(X0,k1_ordinal1(X0))),
% 0.90/1.01    inference(negated_conjecture,[],[f10])).
% 0.90/1.01  
% 0.90/1.01  fof(f13,plain,(
% 0.90/1.01    ? [X0] : ~r2_hidden(X0,k1_ordinal1(X0))),
% 0.90/1.01    inference(ennf_transformation,[],[f11])).
% 0.90/1.01  
% 0.90/1.01  fof(f27,plain,(
% 0.90/1.01    ? [X0] : ~r2_hidden(X0,k1_ordinal1(X0)) => ~r2_hidden(sK3,k1_ordinal1(sK3))),
% 0.90/1.01    introduced(choice_axiom,[])).
% 0.90/1.01  
% 0.90/1.01  fof(f28,plain,(
% 0.90/1.01    ~r2_hidden(sK3,k1_ordinal1(sK3))),
% 0.90/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f13,f27])).
% 0.90/1.01  
% 0.90/1.01  fof(f58,plain,(
% 0.90/1.01    ~r2_hidden(sK3,k1_ordinal1(sK3))),
% 0.90/1.01    inference(cnf_transformation,[],[f28])).
% 0.90/1.01  
% 0.90/1.01  fof(f9,axiom,(
% 0.90/1.01    ! [X0] : k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0)),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f57,plain,(
% 0.90/1.01    ( ! [X0] : (k2_xboole_0(X0,k1_tarski(X0)) = k1_ordinal1(X0)) )),
% 0.90/1.01    inference(cnf_transformation,[],[f9])).
% 0.90/1.01  
% 0.90/1.01  fof(f2,axiom,(
% 0.90/1.01    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.90/1.01    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.90/1.01  
% 0.90/1.01  fof(f35,plain,(
% 0.90/1.01    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.90/1.01    inference(cnf_transformation,[],[f2])).
% 0.90/1.01  
% 0.90/1.01  fof(f63,plain,(
% 0.90/1.01    ( ! [X0] : (k1_tarski(X0) = k4_enumset1(X0,X0,X0,X0,X0,X0)) )),
% 0.90/1.01    inference(definition_unfolding,[],[f35,f61])).
% 0.90/1.01  
% 0.90/1.01  fof(f64,plain,(
% 0.90/1.01    ( ! [X0] : (k3_tarski(k4_enumset1(X0,X0,X0,X0,X0,k4_enumset1(X0,X0,X0,X0,X0,X0))) = k1_ordinal1(X0)) )),
% 0.90/1.01    inference(definition_unfolding,[],[f57,f62,f63])).
% 0.90/1.01  
% 0.90/1.01  fof(f71,plain,(
% 0.90/1.01    ~r2_hidden(sK3,k3_tarski(k4_enumset1(sK3,sK3,sK3,sK3,sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3))))),
% 0.90/1.01    inference(definition_unfolding,[],[f58,f64])).
% 0.90/1.01  
% 0.90/1.01  cnf(c_3,plain,
% 0.90/1.01      ( ~ r2_hidden(X0,X1)
% 0.90/1.01      | r2_hidden(X0,k3_tarski(k4_enumset1(X2,X2,X2,X2,X2,X1))) ),
% 0.90/1.01      inference(cnf_transformation,[],[f72]) ).
% 0.90/1.01  
% 0.90/1.01  cnf(c_2126,plain,
% 0.90/1.01      ( ~ r2_hidden(X0,k4_enumset1(X0,X1,X2,X3,X4,X5))
% 0.90/1.01      | r2_hidden(X0,k3_tarski(k4_enumset1(X6,X6,X6,X6,X6,k4_enumset1(X0,X1,X2,X3,X4,X5)))) ),
% 0.90/1.01      inference(instantiation,[status(thm)],[c_3]) ).
% 0.90/1.01  
% 0.90/1.01  cnf(c_2133,plain,
% 0.90/1.01      ( ~ r2_hidden(sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3))
% 0.90/1.01      | r2_hidden(sK3,k3_tarski(k4_enumset1(sK3,sK3,sK3,sK3,sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3)))) ),
% 0.90/1.01      inference(instantiation,[status(thm)],[c_2126]) ).
% 0.90/1.01  
% 0.90/1.01  cnf(c_18,plain,
% 0.90/1.01      ( ~ sP0(X0,X1,X2,X3,X4,X5,X6) | r2_hidden(X5,X6) ),
% 0.90/1.01      inference(cnf_transformation,[],[f80]) ).
% 0.90/1.01  
% 0.90/1.01  cnf(c_21,plain,
% 0.90/1.01      ( sP0(X0,X1,X2,X3,X4,X5,k4_enumset1(X5,X4,X3,X2,X1,X0)) ),
% 0.90/1.01      inference(cnf_transformation,[],[f81]) ).
% 0.90/1.01  
% 0.90/1.01  cnf(c_1202,plain,
% 0.90/1.01      ( r2_hidden(X0,X1)
% 0.90/1.01      | X2 != X3
% 0.90/1.01      | X4 != X0
% 0.90/1.01      | X5 != X6
% 0.90/1.01      | X7 != X8
% 0.90/1.01      | X9 != X10
% 0.90/1.01      | X11 != X12
% 0.90/1.01      | k4_enumset1(X4,X5,X7,X9,X11,X2) != X1 ),
% 0.90/1.01      inference(resolution_lifted,[status(thm)],[c_18,c_21]) ).
% 0.90/1.01  
% 0.90/1.01  cnf(c_1203,plain,
% 0.90/1.01      ( r2_hidden(X0,k4_enumset1(X0,X1,X2,X3,X4,X5)) ),
% 0.90/1.01      inference(unflattening,[status(thm)],[c_1202]) ).
% 0.90/1.01  
% 0.90/1.01  cnf(c_1205,plain,
% 0.90/1.01      ( r2_hidden(sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3)) ),
% 0.90/1.01      inference(instantiation,[status(thm)],[c_1203]) ).
% 0.90/1.01  
% 0.90/1.01  cnf(c_22,negated_conjecture,
% 0.90/1.01      ( ~ r2_hidden(sK3,k3_tarski(k4_enumset1(sK3,sK3,sK3,sK3,sK3,k4_enumset1(sK3,sK3,sK3,sK3,sK3,sK3)))) ),
% 0.90/1.01      inference(cnf_transformation,[],[f71]) ).
% 0.90/1.01  
% 0.90/1.01  cnf(contradiction,plain,
% 0.90/1.01      ( $false ),
% 0.90/1.01      inference(minisat,[status(thm)],[c_2133,c_1205,c_22]) ).
% 0.90/1.01  
% 0.90/1.01  
% 0.90/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 0.90/1.01  
% 0.90/1.01  ------                               Statistics
% 0.90/1.01  
% 0.90/1.01  ------ General
% 0.90/1.01  
% 0.90/1.01  abstr_ref_over_cycles:                  0
% 0.90/1.01  abstr_ref_under_cycles:                 0
% 0.90/1.01  gc_basic_clause_elim:                   0
% 0.90/1.01  forced_gc_time:                         0
% 0.90/1.01  parsing_time:                           0.011
% 0.90/1.01  unif_index_cands_time:                  0.
% 0.90/1.01  unif_index_add_time:                    0.
% 0.90/1.01  orderings_time:                         0.
% 0.90/1.01  out_proof_time:                         0.009
% 0.90/1.01  total_time:                             0.079
% 0.90/1.01  num_of_symbols:                         35
% 0.90/1.01  num_of_terms:                           814
% 0.90/1.01  
% 0.90/1.01  ------ Preprocessing
% 0.90/1.01  
% 0.90/1.01  num_of_splits:                          0
% 0.90/1.01  num_of_split_atoms:                     0
% 0.90/1.01  num_of_reused_defs:                     0
% 0.90/1.01  num_eq_ax_congr_red:                    32
% 0.90/1.01  num_of_sem_filtered_clauses:            1
% 0.90/1.01  num_of_subtypes:                        0
% 0.90/1.01  monotx_restored_types:                  0
% 0.90/1.01  sat_num_of_epr_types:                   0
% 0.90/1.01  sat_num_of_non_cyclic_types:            0
% 0.90/1.01  sat_guarded_non_collapsed_types:        0
% 0.90/1.01  num_pure_diseq_elim:                    0
% 0.90/1.01  simp_replaced_by:                       0
% 0.90/1.01  res_preprocessed:                       82
% 0.90/1.01  prep_upred:                             0
% 0.90/1.01  prep_unflattend:                        56
% 0.90/1.01  smt_new_axioms:                         0
% 0.90/1.01  pred_elim_cands:                        2
% 0.90/1.01  pred_elim:                              0
% 0.90/1.01  pred_elim_cl:                           0
% 0.90/1.01  pred_elim_cycles:                       1
% 0.90/1.01  merged_defs:                            0
% 0.90/1.01  merged_defs_ncl:                        0
% 0.90/1.01  bin_hyper_res:                          0
% 0.90/1.01  prep_cycles:                            3
% 0.90/1.01  pred_elim_time:                         0.019
% 0.90/1.01  splitting_time:                         0.
% 0.90/1.01  sem_filter_time:                        0.
% 0.90/1.01  monotx_time:                            0.
% 0.90/1.01  subtype_inf_time:                       0.
% 0.90/1.01  
% 0.90/1.01  ------ Problem properties
% 0.90/1.01  
% 0.90/1.01  clauses:                                23
% 0.90/1.01  conjectures:                            1
% 0.90/1.01  epr:                                    7
% 0.90/1.01  horn:                                   19
% 0.90/1.01  ground:                                 1
% 0.90/1.01  unary:                                  2
% 0.90/1.01  binary:                                 9
% 0.90/1.01  lits:                                   67
% 0.90/1.01  lits_eq:                                22
% 0.90/1.01  fd_pure:                                0
% 0.90/1.01  fd_pseudo:                              0
% 0.90/1.01  fd_cond:                                0
% 0.90/1.01  fd_pseudo_cond:                         5
% 0.90/1.01  ac_symbols:                             0
% 0.90/1.01  
% 0.90/1.01  ------ Propositional Solver
% 0.90/1.01  
% 0.90/1.01  prop_solver_calls:                      18
% 0.90/1.01  prop_fast_solver_calls:                 755
% 0.90/1.01  smt_solver_calls:                       0
% 0.90/1.01  smt_fast_solver_calls:                  0
% 0.90/1.01  prop_num_of_clauses:                    246
% 0.90/1.01  prop_preprocess_simplified:             2885
% 0.90/1.01  prop_fo_subsumed:                       0
% 0.90/1.01  prop_solver_time:                       0.
% 0.90/1.01  smt_solver_time:                        0.
% 0.90/1.01  smt_fast_solver_time:                   0.
% 0.90/1.01  prop_fast_solver_time:                  0.
% 0.90/1.01  prop_unsat_core_time:                   0.
% 0.90/1.01  
% 0.90/1.01  ------ QBF
% 0.90/1.01  
% 0.90/1.01  qbf_q_res:                              0
% 0.90/1.01  qbf_num_tautologies:                    0
% 0.90/1.01  qbf_prep_cycles:                        0
% 0.90/1.01  
% 0.90/1.01  ------ BMC1
% 0.90/1.01  
% 0.90/1.01  bmc1_current_bound:                     -1
% 0.90/1.01  bmc1_last_solved_bound:                 -1
% 0.90/1.01  bmc1_unsat_core_size:                   -1
% 0.90/1.01  bmc1_unsat_core_parents_size:           -1
% 0.90/1.01  bmc1_merge_next_fun:                    0
% 0.90/1.01  bmc1_unsat_core_clauses_time:           0.
% 0.90/1.01  
% 0.90/1.01  ------ Instantiation
% 0.90/1.01  
% 0.90/1.01  inst_num_of_clauses:                    38
% 0.90/1.01  inst_num_in_passive:                    7
% 0.90/1.01  inst_num_in_active:                     29
% 0.90/1.01  inst_num_in_unprocessed:                1
% 0.90/1.01  inst_num_of_loops:                      31
% 0.90/1.01  inst_num_of_learning_restarts:          0
% 0.90/1.01  inst_num_moves_active_passive:          0
% 0.90/1.01  inst_lit_activity:                      0
% 0.90/1.01  inst_lit_activity_moves:                0
% 0.90/1.01  inst_num_tautologies:                   0
% 0.90/1.01  inst_num_prop_implied:                  0
% 0.90/1.01  inst_num_existing_simplified:           0
% 0.90/1.01  inst_num_eq_res_simplified:             0
% 0.90/1.01  inst_num_child_elim:                    0
% 0.90/1.01  inst_num_of_dismatching_blockings:      0
% 0.90/1.01  inst_num_of_non_proper_insts:           4
% 0.90/1.01  inst_num_of_duplicates:                 0
% 0.90/1.01  inst_inst_num_from_inst_to_res:         0
% 0.90/1.01  inst_dismatching_checking_time:         0.
% 0.90/1.01  
% 0.90/1.01  ------ Resolution
% 0.90/1.01  
% 0.90/1.01  res_num_of_clauses:                     0
% 0.90/1.01  res_num_in_passive:                     0
% 0.90/1.01  res_num_in_active:                      0
% 0.90/1.01  res_num_of_loops:                       85
% 0.90/1.01  res_forward_subset_subsumed:            0
% 0.90/1.01  res_backward_subset_subsumed:           0
% 0.90/1.01  res_forward_subsumed:                   0
% 0.90/1.01  res_backward_subsumed:                  0
% 0.90/1.01  res_forward_subsumption_resolution:     0
% 0.90/1.01  res_backward_subsumption_resolution:    0
% 0.90/1.01  res_clause_to_clause_subsumption:       1488
% 0.90/1.01  res_orphan_elimination:                 0
% 0.90/1.01  res_tautology_del:                      1
% 0.90/1.01  res_num_eq_res_simplified:              0
% 0.90/1.01  res_num_sel_changes:                    0
% 0.90/1.01  res_moves_from_active_to_pass:          0
% 0.90/1.01  
% 0.90/1.01  ------ Superposition
% 0.90/1.01  
% 0.90/1.01  sup_time_total:                         0.
% 0.90/1.01  sup_time_generating:                    0.
% 0.90/1.01  sup_time_sim_full:                      0.
% 0.90/1.01  sup_time_sim_immed:                     0.
% 0.90/1.01  
% 0.90/1.01  sup_num_of_clauses:                     25
% 0.90/1.01  sup_num_in_active:                      6
% 0.90/1.01  sup_num_in_passive:                     19
% 0.90/1.01  sup_num_of_loops:                       6
% 0.90/1.01  sup_fw_superposition:                   2
% 0.90/1.01  sup_bw_superposition:                   0
% 0.90/1.01  sup_immediate_simplified:               0
% 0.90/1.01  sup_given_eliminated:                   0
% 0.90/1.01  comparisons_done:                       0
% 0.90/1.01  comparisons_avoided:                    0
% 0.90/1.01  
% 0.90/1.01  ------ Simplifications
% 0.90/1.01  
% 0.90/1.01  
% 0.90/1.01  sim_fw_subset_subsumed:                 0
% 0.90/1.01  sim_bw_subset_subsumed:                 0
% 0.90/1.01  sim_fw_subsumed:                        0
% 0.90/1.01  sim_bw_subsumed:                        0
% 0.90/1.01  sim_fw_subsumption_res:                 0
% 0.90/1.01  sim_bw_subsumption_res:                 0
% 0.90/1.01  sim_tautology_del:                      0
% 0.90/1.01  sim_eq_tautology_del:                   0
% 0.90/1.01  sim_eq_res_simp:                        0
% 0.90/1.01  sim_fw_demodulated:                     0
% 0.90/1.01  sim_bw_demodulated:                     0
% 0.90/1.01  sim_light_normalised:                   0
% 0.90/1.01  sim_joinable_taut:                      0
% 0.90/1.01  sim_joinable_simp:                      0
% 0.90/1.01  sim_ac_normalised:                      0
% 0.90/1.01  sim_smt_subsumption:                    0
% 0.90/1.01  
%------------------------------------------------------------------------------
