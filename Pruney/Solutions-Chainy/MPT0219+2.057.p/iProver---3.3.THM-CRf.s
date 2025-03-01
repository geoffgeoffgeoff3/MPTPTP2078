%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:29:18 EST 2020

% Result     : Theorem 3.31s
% Output     : CNFRefutation 3.31s
% Verified   : 
% Statistics : Number of formulae       :  103 ( 401 expanded)
%              Number of clauses        :   34 (  37 expanded)
%              Number of leaves         :   19 ( 124 expanded)
%              Depth                    :   15
%              Number of atoms          :  304 ( 869 expanded)
%              Number of equality atoms :  220 ( 703 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k2_enumset1(X4,X5,X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k2_enumset1(X4,X5,X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(cnf_transformation,[],[f12])).

fof(f9,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f18,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f18])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f19])).

fof(f20,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f68,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f20])).

fof(f21,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f69,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f21])).

fof(f72,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f68,f69])).

fof(f73,plain,(
    ! [X4,X2,X0,X3,X1] : k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f67,f72])).

fof(f74,plain,(
    ! [X2,X0,X3,X1] : k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f66,f73])).

fof(f80,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3),k4_xboole_0(k6_enumset1(X4,X4,X4,X4,X4,X5,X6,X7),k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(definition_unfolding,[],[f60,f47,f74,f74])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(cnf_transformation,[],[f14])).

fof(f15,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f15])).

fof(f16,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f16])).

fof(f17,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f65,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f17])).

fof(f75,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f65,f74])).

fof(f76,plain,(
    ! [X0,X1] : k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(definition_unfolding,[],[f64,f75])).

fof(f77,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f63,f76])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(cnf_transformation,[],[f13])).

fof(f78,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4),k4_xboole_0(k6_enumset1(X5,X5,X5,X5,X5,X6,X7,X8),k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4))) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(definition_unfolding,[],[f61,f47,f73,f74])).

fof(f96,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4),k4_xboole_0(k6_enumset1(X5,X5,X5,X5,X5,X6,X7,X8),k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4))) = k5_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k4_xboole_0(k6_enumset1(X8,X8,X8,X8,X8,X8,X8,X8),k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7))) ),
    inference(definition_unfolding,[],[f62,f47,f77,f78])).

fof(f22,conjecture,(
    ! [X0,X1] :
      ( k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
     => X0 = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
       => X0 = X1 ) ),
    inference(negated_conjecture,[],[f22])).

fof(f27,plain,(
    ? [X0,X1] :
      ( X0 != X1
      & k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f37,plain,
    ( ? [X0,X1] :
        ( X0 != X1
        & k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) )
   => ( sK2 != sK3
      & k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( sK2 != sK3
    & k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f27,f37])).

fof(f70,plain,(
    k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2) ),
    inference(cnf_transformation,[],[f38])).

fof(f97,plain,(
    k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k4_xboole_0(k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
    inference(definition_unfolding,[],[f70,f47,f77,f77,f77])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f28,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X3)
              | ( X2 != X4
                & X1 != X4
                & X0 != X4 ) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f29,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X3)
              | ( X2 != X4
                & X1 != X4
                & X0 != X4 ) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(flattening,[],[f28])).

fof(f30,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ? [X4] :
            ( ( ( X2 != X4
                & X1 != X4
                & X0 != X4 )
              | ~ r2_hidden(X4,X3) )
            & ( X2 = X4
              | X1 = X4
              | X0 = X4
              | r2_hidden(X4,X3) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X3)
              | ( X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(rectify,[],[f29])).

fof(f31,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X4] :
          ( ( ( X2 != X4
              & X1 != X4
              & X0 != X4 )
            | ~ r2_hidden(X4,X3) )
          & ( X2 = X4
            | X1 = X4
            | X0 = X4
            | r2_hidden(X4,X3) ) )
     => ( ( ( sK0(X0,X1,X2,X3) != X2
            & sK0(X0,X1,X2,X3) != X1
            & sK0(X0,X1,X2,X3) != X0 )
          | ~ r2_hidden(sK0(X0,X1,X2,X3),X3) )
        & ( sK0(X0,X1,X2,X3) = X2
          | sK0(X0,X1,X2,X3) = X1
          | sK0(X0,X1,X2,X3) = X0
          | r2_hidden(sK0(X0,X1,X2,X3),X3) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ( ( ( sK0(X0,X1,X2,X3) != X2
              & sK0(X0,X1,X2,X3) != X1
              & sK0(X0,X1,X2,X3) != X0 )
            | ~ r2_hidden(sK0(X0,X1,X2,X3),X3) )
          & ( sK0(X0,X1,X2,X3) = X2
            | sK0(X0,X1,X2,X3) = X1
            | sK0(X0,X1,X2,X3) = X0
            | r2_hidden(sK0(X0,X1,X2,X3),X3) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X3)
              | ( X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X3) ) )
        | k1_enumset1(X0,X1,X2) != X3 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f30,f31])).

fof(f51,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X2 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f88,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X2 != X5
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f51,f75])).

fof(f98,plain,(
    ! [X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X5) != X3 ) ),
    inference(equality_resolution,[],[f88])).

fof(f99,plain,(
    ! [X0,X5,X1] : r2_hidden(X5,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X5)) ),
    inference(equality_resolution,[],[f98])).

fof(f49,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f90,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f49,f75])).

fof(f102,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f90])).

fof(f103,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2)) ),
    inference(equality_resolution,[],[f102])).

fof(f48,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f91,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f48,f75])).

fof(f104,plain,(
    ! [X2,X0,X5,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ) ),
    inference(equality_resolution,[],[f91])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> X0 = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | X0 != X2 )
            & ( X0 = X2
              | ~ r2_hidden(X2,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f11])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(rectify,[],[f33])).

fof(f35,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( X0 != X2
            | ~ r2_hidden(X2,X1) )
          & ( X0 = X2
            | r2_hidden(X2,X1) ) )
     => ( ( sK1(X0,X1) != X0
          | ~ r2_hidden(sK1(X0,X1),X1) )
        & ( sK1(X0,X1) = X0
          | r2_hidden(sK1(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ( ( sK1(X0,X1) != X0
            | ~ r2_hidden(sK1(X0,X1),X1) )
          & ( sK1(X0,X1) = X0
            | r2_hidden(sK1(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f34,f35])).

fof(f56,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f36])).

fof(f95,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1 ) ),
    inference(definition_unfolding,[],[f56,f77])).

fof(f107,plain,(
    ! [X0,X3] :
      ( X0 = X3
      | ~ r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ) ),
    inference(equality_resolution,[],[f95])).

fof(f57,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | X0 != X3
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f36])).

fof(f94,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | X0 != X3
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1 ) ),
    inference(definition_unfolding,[],[f57,f77])).

fof(f105,plain,(
    ! [X3,X1] :
      ( r2_hidden(X3,X1)
      | k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3) != X1 ) ),
    inference(equality_resolution,[],[f94])).

fof(f106,plain,(
    ! [X3] : r2_hidden(X3,k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3)) ),
    inference(equality_resolution,[],[f105])).

fof(f71,plain,(
    sK2 != sK3 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_1,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3),k4_xboole_0(k6_enumset1(X4,X4,X4,X4,X4,X5,X6,X7),k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_20,plain,
    ( k5_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k4_xboole_0(k6_enumset1(X8,X8,X8,X8,X8,X8,X8,X8),k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7))) = k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4),k4_xboole_0(k6_enumset1(X5,X5,X5,X5,X5,X6,X7,X8),k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4))) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_22,negated_conjecture,
    ( k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k4_xboole_0(k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_2081,plain,
    ( k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
    inference(superposition,[status(thm)],[c_20,c_22])).

cnf(c_2181,plain,
    ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
    inference(superposition,[status(thm)],[c_1,c_2081])).

cnf(c_2244,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3),k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3))) = k6_enumset1(X0,X1,X2,X3,sK2,sK2,sK2,sK3) ),
    inference(superposition,[status(thm)],[c_2181,c_1])).

cnf(c_2253,plain,
    ( k6_enumset1(X0,X1,X2,X3,sK2,sK2,sK2,sK2) = k6_enumset1(X0,X1,X2,X3,sK2,sK2,sK2,sK3) ),
    inference(demodulation,[status(thm)],[c_2244,c_1])).

cnf(c_2258,plain,
    ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_2253])).

cnf(c_1300,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1589,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(sK3,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))
    | k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2) != X1
    | sK3 != X0 ),
    inference(instantiation,[status(thm)],[c_1300])).

cnf(c_1773,plain,
    ( ~ r2_hidden(sK3,X0)
    | r2_hidden(sK3,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) != X0
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_1589])).

cnf(c_2099,plain,
    ( r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))
    | ~ r2_hidden(sK3,k6_enumset1(X1,X1,X1,X1,X1,X1,X2,sK3))
    | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k6_enumset1(X1,X1,X1,X1,X1,X1,X2,sK3)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_1773])).

cnf(c_2101,plain,
    ( ~ r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3))
    | r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))
    | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) != k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_2099])).

cnf(c_12,plain,
    ( r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X2,X0)) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_1724,plain,
    ( r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,sK3)) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1726,plain,
    ( r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3)) ),
    inference(instantiation,[status(thm)],[c_1724])).

cnf(c_14,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ),
    inference(cnf_transformation,[],[f103])).

cnf(c_1718,plain,
    ( r2_hidden(sK3,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,X0,X1)) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_1720,plain,
    ( r2_hidden(sK3,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK2,sK2)) ),
    inference(instantiation,[status(thm)],[c_1718])).

cnf(c_15,plain,
    ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X2,X3))
    | X0 = X1
    | X0 = X2
    | X0 = X3 ),
    inference(cnf_transformation,[],[f104])).

cnf(c_1515,plain,
    ( ~ r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2))
    | sK3 = X0
    | sK3 = X1
    | sK3 = X2 ),
    inference(instantiation,[status(thm)],[c_15])).

cnf(c_1604,plain,
    ( ~ r2_hidden(sK3,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,X0,X1))
    | sK3 = X0
    | sK3 = X1
    | sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_1515])).

cnf(c_1606,plain,
    ( ~ r2_hidden(sK3,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK2,sK2))
    | sK3 = sK3
    | sK3 = sK2 ),
    inference(instantiation,[status(thm)],[c_1604])).

cnf(c_19,plain,
    ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f107])).

cnf(c_1516,plain,
    ( ~ r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))
    | sK3 = X0 ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_1518,plain,
    ( ~ r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))
    | sK3 = sK2 ),
    inference(instantiation,[status(thm)],[c_1516])).

cnf(c_1296,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1507,plain,
    ( sK3 != X0
    | sK2 != X0
    | sK2 = sK3 ),
    inference(instantiation,[status(thm)],[c_1296])).

cnf(c_1508,plain,
    ( sK3 != sK2
    | sK2 = sK3
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1507])).

cnf(c_18,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ),
    inference(cnf_transformation,[],[f106])).

cnf(c_28,plain,
    ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) ),
    inference(instantiation,[status(thm)],[c_18])).

cnf(c_25,plain,
    ( ~ r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))
    | sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_21,negated_conjecture,
    ( sK2 != sK3 ),
    inference(cnf_transformation,[],[f71])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2258,c_2101,c_1726,c_1720,c_1606,c_1518,c_1508,c_28,c_25,c_21])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n007.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 13:06:36 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 3.31/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.31/1.00  
% 3.31/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.31/1.00  
% 3.31/1.00  ------  iProver source info
% 3.31/1.00  
% 3.31/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.31/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.31/1.00  git: non_committed_changes: false
% 3.31/1.00  git: last_make_outside_of_git: false
% 3.31/1.00  
% 3.31/1.00  ------ 
% 3.31/1.00  
% 3.31/1.00  ------ Input Options
% 3.31/1.00  
% 3.31/1.00  --out_options                           all
% 3.31/1.00  --tptp_safe_out                         true
% 3.31/1.00  --problem_path                          ""
% 3.31/1.00  --include_path                          ""
% 3.31/1.00  --clausifier                            res/vclausify_rel
% 3.31/1.00  --clausifier_options                    ""
% 3.31/1.00  --stdin                                 false
% 3.31/1.00  --stats_out                             all
% 3.31/1.00  
% 3.31/1.00  ------ General Options
% 3.31/1.00  
% 3.31/1.00  --fof                                   false
% 3.31/1.00  --time_out_real                         305.
% 3.31/1.00  --time_out_virtual                      -1.
% 3.31/1.00  --symbol_type_check                     false
% 3.31/1.00  --clausify_out                          false
% 3.31/1.00  --sig_cnt_out                           false
% 3.31/1.00  --trig_cnt_out                          false
% 3.31/1.00  --trig_cnt_out_tolerance                1.
% 3.31/1.00  --trig_cnt_out_sk_spl                   false
% 3.31/1.00  --abstr_cl_out                          false
% 3.31/1.00  
% 3.31/1.00  ------ Global Options
% 3.31/1.00  
% 3.31/1.00  --schedule                              default
% 3.31/1.00  --add_important_lit                     false
% 3.31/1.00  --prop_solver_per_cl                    1000
% 3.31/1.00  --min_unsat_core                        false
% 3.31/1.00  --soft_assumptions                      false
% 3.31/1.00  --soft_lemma_size                       3
% 3.31/1.00  --prop_impl_unit_size                   0
% 3.31/1.00  --prop_impl_unit                        []
% 3.31/1.00  --share_sel_clauses                     true
% 3.31/1.00  --reset_solvers                         false
% 3.31/1.00  --bc_imp_inh                            [conj_cone]
% 3.31/1.00  --conj_cone_tolerance                   3.
% 3.31/1.00  --extra_neg_conj                        none
% 3.31/1.00  --large_theory_mode                     true
% 3.31/1.00  --prolific_symb_bound                   200
% 3.31/1.00  --lt_threshold                          2000
% 3.31/1.00  --clause_weak_htbl                      true
% 3.31/1.00  --gc_record_bc_elim                     false
% 3.31/1.00  
% 3.31/1.00  ------ Preprocessing Options
% 3.31/1.00  
% 3.31/1.00  --preprocessing_flag                    true
% 3.31/1.00  --time_out_prep_mult                    0.1
% 3.31/1.00  --splitting_mode                        input
% 3.31/1.00  --splitting_grd                         true
% 3.31/1.00  --splitting_cvd                         false
% 3.31/1.00  --splitting_cvd_svl                     false
% 3.31/1.00  --splitting_nvd                         32
% 3.31/1.00  --sub_typing                            true
% 3.31/1.00  --prep_gs_sim                           true
% 3.31/1.00  --prep_unflatten                        true
% 3.31/1.00  --prep_res_sim                          true
% 3.31/1.00  --prep_upred                            true
% 3.31/1.00  --prep_sem_filter                       exhaustive
% 3.31/1.00  --prep_sem_filter_out                   false
% 3.31/1.00  --pred_elim                             true
% 3.31/1.00  --res_sim_input                         true
% 3.31/1.00  --eq_ax_congr_red                       true
% 3.31/1.00  --pure_diseq_elim                       true
% 3.31/1.00  --brand_transform                       false
% 3.31/1.00  --non_eq_to_eq                          false
% 3.31/1.00  --prep_def_merge                        true
% 3.31/1.00  --prep_def_merge_prop_impl              false
% 3.31/1.00  --prep_def_merge_mbd                    true
% 3.31/1.00  --prep_def_merge_tr_red                 false
% 3.31/1.00  --prep_def_merge_tr_cl                  false
% 3.31/1.00  --smt_preprocessing                     true
% 3.31/1.00  --smt_ac_axioms                         fast
% 3.31/1.00  --preprocessed_out                      false
% 3.31/1.00  --preprocessed_stats                    false
% 3.31/1.00  
% 3.31/1.00  ------ Abstraction refinement Options
% 3.31/1.00  
% 3.31/1.00  --abstr_ref                             []
% 3.31/1.00  --abstr_ref_prep                        false
% 3.31/1.00  --abstr_ref_until_sat                   false
% 3.31/1.00  --abstr_ref_sig_restrict                funpre
% 3.31/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.31/1.00  --abstr_ref_under                       []
% 3.31/1.00  
% 3.31/1.00  ------ SAT Options
% 3.31/1.00  
% 3.31/1.00  --sat_mode                              false
% 3.31/1.00  --sat_fm_restart_options                ""
% 3.31/1.00  --sat_gr_def                            false
% 3.31/1.00  --sat_epr_types                         true
% 3.31/1.00  --sat_non_cyclic_types                  false
% 3.31/1.00  --sat_finite_models                     false
% 3.31/1.00  --sat_fm_lemmas                         false
% 3.31/1.00  --sat_fm_prep                           false
% 3.31/1.00  --sat_fm_uc_incr                        true
% 3.31/1.00  --sat_out_model                         small
% 3.31/1.00  --sat_out_clauses                       false
% 3.31/1.00  
% 3.31/1.00  ------ QBF Options
% 3.31/1.00  
% 3.31/1.00  --qbf_mode                              false
% 3.31/1.00  --qbf_elim_univ                         false
% 3.31/1.00  --qbf_dom_inst                          none
% 3.31/1.00  --qbf_dom_pre_inst                      false
% 3.31/1.00  --qbf_sk_in                             false
% 3.31/1.00  --qbf_pred_elim                         true
% 3.31/1.00  --qbf_split                             512
% 3.31/1.00  
% 3.31/1.00  ------ BMC1 Options
% 3.31/1.00  
% 3.31/1.00  --bmc1_incremental                      false
% 3.31/1.00  --bmc1_axioms                           reachable_all
% 3.31/1.00  --bmc1_min_bound                        0
% 3.31/1.00  --bmc1_max_bound                        -1
% 3.31/1.00  --bmc1_max_bound_default                -1
% 3.31/1.00  --bmc1_symbol_reachability              true
% 3.31/1.00  --bmc1_property_lemmas                  false
% 3.31/1.00  --bmc1_k_induction                      false
% 3.31/1.00  --bmc1_non_equiv_states                 false
% 3.31/1.00  --bmc1_deadlock                         false
% 3.31/1.00  --bmc1_ucm                              false
% 3.31/1.00  --bmc1_add_unsat_core                   none
% 3.31/1.00  --bmc1_unsat_core_children              false
% 3.31/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.31/1.00  --bmc1_out_stat                         full
% 3.31/1.00  --bmc1_ground_init                      false
% 3.31/1.00  --bmc1_pre_inst_next_state              false
% 3.31/1.00  --bmc1_pre_inst_state                   false
% 3.31/1.00  --bmc1_pre_inst_reach_state             false
% 3.31/1.00  --bmc1_out_unsat_core                   false
% 3.31/1.00  --bmc1_aig_witness_out                  false
% 3.31/1.00  --bmc1_verbose                          false
% 3.31/1.00  --bmc1_dump_clauses_tptp                false
% 3.31/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.31/1.00  --bmc1_dump_file                        -
% 3.31/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.31/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.31/1.00  --bmc1_ucm_extend_mode                  1
% 3.31/1.00  --bmc1_ucm_init_mode                    2
% 3.31/1.00  --bmc1_ucm_cone_mode                    none
% 3.31/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.31/1.00  --bmc1_ucm_relax_model                  4
% 3.31/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.31/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.31/1.00  --bmc1_ucm_layered_model                none
% 3.31/1.00  --bmc1_ucm_max_lemma_size               10
% 3.31/1.00  
% 3.31/1.00  ------ AIG Options
% 3.31/1.00  
% 3.31/1.00  --aig_mode                              false
% 3.31/1.00  
% 3.31/1.00  ------ Instantiation Options
% 3.31/1.00  
% 3.31/1.00  --instantiation_flag                    true
% 3.31/1.00  --inst_sos_flag                         true
% 3.31/1.00  --inst_sos_phase                        true
% 3.31/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.31/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.31/1.00  --inst_lit_sel_side                     num_symb
% 3.31/1.00  --inst_solver_per_active                1400
% 3.31/1.00  --inst_solver_calls_frac                1.
% 3.31/1.00  --inst_passive_queue_type               priority_queues
% 3.31/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.31/1.00  --inst_passive_queues_freq              [25;2]
% 3.31/1.00  --inst_dismatching                      true
% 3.31/1.00  --inst_eager_unprocessed_to_passive     true
% 3.31/1.00  --inst_prop_sim_given                   true
% 3.31/1.00  --inst_prop_sim_new                     false
% 3.31/1.00  --inst_subs_new                         false
% 3.31/1.00  --inst_eq_res_simp                      false
% 3.31/1.00  --inst_subs_given                       false
% 3.31/1.00  --inst_orphan_elimination               true
% 3.31/1.00  --inst_learning_loop_flag               true
% 3.31/1.00  --inst_learning_start                   3000
% 3.31/1.00  --inst_learning_factor                  2
% 3.31/1.00  --inst_start_prop_sim_after_learn       3
% 3.31/1.00  --inst_sel_renew                        solver
% 3.31/1.00  --inst_lit_activity_flag                true
% 3.31/1.00  --inst_restr_to_given                   false
% 3.31/1.00  --inst_activity_threshold               500
% 3.31/1.00  --inst_out_proof                        true
% 3.31/1.00  
% 3.31/1.00  ------ Resolution Options
% 3.31/1.00  
% 3.31/1.00  --resolution_flag                       true
% 3.31/1.00  --res_lit_sel                           adaptive
% 3.31/1.00  --res_lit_sel_side                      none
% 3.31/1.00  --res_ordering                          kbo
% 3.31/1.00  --res_to_prop_solver                    active
% 3.31/1.00  --res_prop_simpl_new                    false
% 3.31/1.00  --res_prop_simpl_given                  true
% 3.31/1.00  --res_passive_queue_type                priority_queues
% 3.31/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.31/1.00  --res_passive_queues_freq               [15;5]
% 3.31/1.00  --res_forward_subs                      full
% 3.31/1.00  --res_backward_subs                     full
% 3.31/1.00  --res_forward_subs_resolution           true
% 3.31/1.00  --res_backward_subs_resolution          true
% 3.31/1.00  --res_orphan_elimination                true
% 3.31/1.00  --res_time_limit                        2.
% 3.31/1.00  --res_out_proof                         true
% 3.31/1.00  
% 3.31/1.00  ------ Superposition Options
% 3.31/1.00  
% 3.31/1.00  --superposition_flag                    true
% 3.31/1.00  --sup_passive_queue_type                priority_queues
% 3.31/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.31/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.31/1.00  --demod_completeness_check              fast
% 3.31/1.00  --demod_use_ground                      true
% 3.31/1.00  --sup_to_prop_solver                    passive
% 3.31/1.00  --sup_prop_simpl_new                    true
% 3.31/1.00  --sup_prop_simpl_given                  true
% 3.31/1.00  --sup_fun_splitting                     true
% 3.31/1.00  --sup_smt_interval                      50000
% 3.31/1.00  
% 3.31/1.00  ------ Superposition Simplification Setup
% 3.31/1.00  
% 3.31/1.00  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.31/1.00  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.31/1.00  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.31/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.31/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.31/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.31/1.00  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.31/1.00  --sup_immed_triv                        [TrivRules]
% 3.31/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.31/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.31/1.00  --sup_immed_bw_main                     []
% 3.31/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.31/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.31/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.31/1.00  --sup_input_bw                          []
% 3.31/1.00  
% 3.31/1.00  ------ Combination Options
% 3.31/1.00  
% 3.31/1.00  --comb_res_mult                         3
% 3.31/1.00  --comb_sup_mult                         2
% 3.31/1.00  --comb_inst_mult                        10
% 3.31/1.00  
% 3.31/1.00  ------ Debug Options
% 3.31/1.00  
% 3.31/1.00  --dbg_backtrace                         false
% 3.31/1.00  --dbg_dump_prop_clauses                 false
% 3.31/1.00  --dbg_dump_prop_clauses_file            -
% 3.31/1.00  --dbg_out_stat                          false
% 3.31/1.00  ------ Parsing...
% 3.31/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.31/1.00  
% 3.31/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.31/1.00  
% 3.31/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.31/1.00  
% 3.31/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.31/1.00  ------ Proving...
% 3.31/1.00  ------ Problem Properties 
% 3.31/1.00  
% 3.31/1.00  
% 3.31/1.00  clauses                                 22
% 3.31/1.00  conjectures                             2
% 3.31/1.00  EPR                                     1
% 3.31/1.00  Horn                                    19
% 3.31/1.00  unary                                   14
% 3.31/1.00  binary                                  1
% 3.31/1.00  lits                                    40
% 3.31/1.00  lits eq                                 28
% 3.31/1.00  fd_pure                                 0
% 3.31/1.00  fd_pseudo                               0
% 3.31/1.00  fd_cond                                 0
% 3.31/1.00  fd_pseudo_cond                          6
% 3.31/1.00  AC symbols                              0
% 3.31/1.00  
% 3.31/1.00  ------ Schedule dynamic 5 is on 
% 3.31/1.00  
% 3.31/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.31/1.00  
% 3.31/1.00  
% 3.31/1.00  ------ 
% 3.31/1.00  Current options:
% 3.31/1.00  ------ 
% 3.31/1.00  
% 3.31/1.00  ------ Input Options
% 3.31/1.00  
% 3.31/1.00  --out_options                           all
% 3.31/1.00  --tptp_safe_out                         true
% 3.31/1.00  --problem_path                          ""
% 3.31/1.00  --include_path                          ""
% 3.31/1.00  --clausifier                            res/vclausify_rel
% 3.31/1.00  --clausifier_options                    ""
% 3.31/1.00  --stdin                                 false
% 3.31/1.00  --stats_out                             all
% 3.31/1.00  
% 3.31/1.00  ------ General Options
% 3.31/1.00  
% 3.31/1.00  --fof                                   false
% 3.31/1.00  --time_out_real                         305.
% 3.31/1.00  --time_out_virtual                      -1.
% 3.31/1.00  --symbol_type_check                     false
% 3.31/1.00  --clausify_out                          false
% 3.31/1.00  --sig_cnt_out                           false
% 3.31/1.00  --trig_cnt_out                          false
% 3.31/1.00  --trig_cnt_out_tolerance                1.
% 3.31/1.00  --trig_cnt_out_sk_spl                   false
% 3.31/1.00  --abstr_cl_out                          false
% 3.31/1.00  
% 3.31/1.00  ------ Global Options
% 3.31/1.00  
% 3.31/1.00  --schedule                              default
% 3.31/1.00  --add_important_lit                     false
% 3.31/1.00  --prop_solver_per_cl                    1000
% 3.31/1.00  --min_unsat_core                        false
% 3.31/1.00  --soft_assumptions                      false
% 3.31/1.00  --soft_lemma_size                       3
% 3.31/1.00  --prop_impl_unit_size                   0
% 3.31/1.00  --prop_impl_unit                        []
% 3.31/1.00  --share_sel_clauses                     true
% 3.31/1.00  --reset_solvers                         false
% 3.31/1.00  --bc_imp_inh                            [conj_cone]
% 3.31/1.00  --conj_cone_tolerance                   3.
% 3.31/1.00  --extra_neg_conj                        none
% 3.31/1.00  --large_theory_mode                     true
% 3.31/1.00  --prolific_symb_bound                   200
% 3.31/1.00  --lt_threshold                          2000
% 3.31/1.00  --clause_weak_htbl                      true
% 3.31/1.00  --gc_record_bc_elim                     false
% 3.31/1.00  
% 3.31/1.00  ------ Preprocessing Options
% 3.31/1.00  
% 3.31/1.00  --preprocessing_flag                    true
% 3.31/1.00  --time_out_prep_mult                    0.1
% 3.31/1.00  --splitting_mode                        input
% 3.31/1.00  --splitting_grd                         true
% 3.31/1.00  --splitting_cvd                         false
% 3.31/1.00  --splitting_cvd_svl                     false
% 3.31/1.00  --splitting_nvd                         32
% 3.31/1.00  --sub_typing                            true
% 3.31/1.00  --prep_gs_sim                           true
% 3.31/1.00  --prep_unflatten                        true
% 3.31/1.00  --prep_res_sim                          true
% 3.31/1.00  --prep_upred                            true
% 3.31/1.00  --prep_sem_filter                       exhaustive
% 3.31/1.00  --prep_sem_filter_out                   false
% 3.31/1.00  --pred_elim                             true
% 3.31/1.00  --res_sim_input                         true
% 3.31/1.00  --eq_ax_congr_red                       true
% 3.31/1.00  --pure_diseq_elim                       true
% 3.31/1.00  --brand_transform                       false
% 3.31/1.00  --non_eq_to_eq                          false
% 3.31/1.00  --prep_def_merge                        true
% 3.31/1.00  --prep_def_merge_prop_impl              false
% 3.31/1.00  --prep_def_merge_mbd                    true
% 3.31/1.00  --prep_def_merge_tr_red                 false
% 3.31/1.00  --prep_def_merge_tr_cl                  false
% 3.31/1.00  --smt_preprocessing                     true
% 3.31/1.00  --smt_ac_axioms                         fast
% 3.31/1.00  --preprocessed_out                      false
% 3.31/1.00  --preprocessed_stats                    false
% 3.31/1.00  
% 3.31/1.00  ------ Abstraction refinement Options
% 3.31/1.00  
% 3.31/1.00  --abstr_ref                             []
% 3.31/1.00  --abstr_ref_prep                        false
% 3.31/1.00  --abstr_ref_until_sat                   false
% 3.31/1.00  --abstr_ref_sig_restrict                funpre
% 3.31/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.31/1.00  --abstr_ref_under                       []
% 3.31/1.00  
% 3.31/1.00  ------ SAT Options
% 3.31/1.00  
% 3.31/1.00  --sat_mode                              false
% 3.31/1.00  --sat_fm_restart_options                ""
% 3.31/1.00  --sat_gr_def                            false
% 3.31/1.00  --sat_epr_types                         true
% 3.31/1.00  --sat_non_cyclic_types                  false
% 3.31/1.00  --sat_finite_models                     false
% 3.31/1.00  --sat_fm_lemmas                         false
% 3.31/1.00  --sat_fm_prep                           false
% 3.31/1.00  --sat_fm_uc_incr                        true
% 3.31/1.00  --sat_out_model                         small
% 3.31/1.00  --sat_out_clauses                       false
% 3.31/1.00  
% 3.31/1.00  ------ QBF Options
% 3.31/1.00  
% 3.31/1.00  --qbf_mode                              false
% 3.31/1.00  --qbf_elim_univ                         false
% 3.31/1.00  --qbf_dom_inst                          none
% 3.31/1.00  --qbf_dom_pre_inst                      false
% 3.31/1.00  --qbf_sk_in                             false
% 3.31/1.00  --qbf_pred_elim                         true
% 3.31/1.00  --qbf_split                             512
% 3.31/1.00  
% 3.31/1.00  ------ BMC1 Options
% 3.31/1.00  
% 3.31/1.00  --bmc1_incremental                      false
% 3.31/1.00  --bmc1_axioms                           reachable_all
% 3.31/1.00  --bmc1_min_bound                        0
% 3.31/1.00  --bmc1_max_bound                        -1
% 3.31/1.00  --bmc1_max_bound_default                -1
% 3.31/1.00  --bmc1_symbol_reachability              true
% 3.31/1.00  --bmc1_property_lemmas                  false
% 3.31/1.00  --bmc1_k_induction                      false
% 3.31/1.00  --bmc1_non_equiv_states                 false
% 3.31/1.00  --bmc1_deadlock                         false
% 3.31/1.00  --bmc1_ucm                              false
% 3.31/1.00  --bmc1_add_unsat_core                   none
% 3.31/1.00  --bmc1_unsat_core_children              false
% 3.31/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.31/1.00  --bmc1_out_stat                         full
% 3.31/1.00  --bmc1_ground_init                      false
% 3.31/1.00  --bmc1_pre_inst_next_state              false
% 3.31/1.00  --bmc1_pre_inst_state                   false
% 3.31/1.00  --bmc1_pre_inst_reach_state             false
% 3.31/1.00  --bmc1_out_unsat_core                   false
% 3.31/1.00  --bmc1_aig_witness_out                  false
% 3.31/1.00  --bmc1_verbose                          false
% 3.31/1.00  --bmc1_dump_clauses_tptp                false
% 3.31/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.31/1.00  --bmc1_dump_file                        -
% 3.31/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.31/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.31/1.00  --bmc1_ucm_extend_mode                  1
% 3.31/1.00  --bmc1_ucm_init_mode                    2
% 3.31/1.00  --bmc1_ucm_cone_mode                    none
% 3.31/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.31/1.00  --bmc1_ucm_relax_model                  4
% 3.31/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.31/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.31/1.00  --bmc1_ucm_layered_model                none
% 3.31/1.00  --bmc1_ucm_max_lemma_size               10
% 3.31/1.00  
% 3.31/1.00  ------ AIG Options
% 3.31/1.00  
% 3.31/1.00  --aig_mode                              false
% 3.31/1.00  
% 3.31/1.00  ------ Instantiation Options
% 3.31/1.00  
% 3.31/1.00  --instantiation_flag                    true
% 3.31/1.00  --inst_sos_flag                         true
% 3.31/1.00  --inst_sos_phase                        true
% 3.31/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.31/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.31/1.00  --inst_lit_sel_side                     none
% 3.31/1.00  --inst_solver_per_active                1400
% 3.31/1.00  --inst_solver_calls_frac                1.
% 3.31/1.00  --inst_passive_queue_type               priority_queues
% 3.31/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.31/1.00  --inst_passive_queues_freq              [25;2]
% 3.31/1.00  --inst_dismatching                      true
% 3.31/1.00  --inst_eager_unprocessed_to_passive     true
% 3.31/1.00  --inst_prop_sim_given                   true
% 3.31/1.00  --inst_prop_sim_new                     false
% 3.31/1.00  --inst_subs_new                         false
% 3.31/1.00  --inst_eq_res_simp                      false
% 3.31/1.00  --inst_subs_given                       false
% 3.31/1.00  --inst_orphan_elimination               true
% 3.31/1.00  --inst_learning_loop_flag               true
% 3.31/1.00  --inst_learning_start                   3000
% 3.31/1.00  --inst_learning_factor                  2
% 3.31/1.00  --inst_start_prop_sim_after_learn       3
% 3.31/1.00  --inst_sel_renew                        solver
% 3.31/1.00  --inst_lit_activity_flag                true
% 3.31/1.00  --inst_restr_to_given                   false
% 3.31/1.00  --inst_activity_threshold               500
% 3.31/1.00  --inst_out_proof                        true
% 3.31/1.00  
% 3.31/1.00  ------ Resolution Options
% 3.31/1.00  
% 3.31/1.00  --resolution_flag                       false
% 3.31/1.00  --res_lit_sel                           adaptive
% 3.31/1.00  --res_lit_sel_side                      none
% 3.31/1.00  --res_ordering                          kbo
% 3.31/1.00  --res_to_prop_solver                    active
% 3.31/1.00  --res_prop_simpl_new                    false
% 3.31/1.00  --res_prop_simpl_given                  true
% 3.31/1.00  --res_passive_queue_type                priority_queues
% 3.31/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.31/1.00  --res_passive_queues_freq               [15;5]
% 3.31/1.00  --res_forward_subs                      full
% 3.31/1.00  --res_backward_subs                     full
% 3.31/1.00  --res_forward_subs_resolution           true
% 3.31/1.00  --res_backward_subs_resolution          true
% 3.31/1.00  --res_orphan_elimination                true
% 3.31/1.00  --res_time_limit                        2.
% 3.31/1.00  --res_out_proof                         true
% 3.31/1.00  
% 3.31/1.00  ------ Superposition Options
% 3.31/1.00  
% 3.31/1.00  --superposition_flag                    true
% 3.31/1.00  --sup_passive_queue_type                priority_queues
% 3.31/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.31/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.31/1.00  --demod_completeness_check              fast
% 3.31/1.00  --demod_use_ground                      true
% 3.31/1.00  --sup_to_prop_solver                    passive
% 3.31/1.00  --sup_prop_simpl_new                    true
% 3.31/1.00  --sup_prop_simpl_given                  true
% 3.31/1.00  --sup_fun_splitting                     true
% 3.31/1.00  --sup_smt_interval                      50000
% 3.31/1.00  
% 3.31/1.00  ------ Superposition Simplification Setup
% 3.31/1.00  
% 3.31/1.00  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.31/1.00  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.31/1.00  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.31/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.31/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.31/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.31/1.00  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.31/1.00  --sup_immed_triv                        [TrivRules]
% 3.31/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.31/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.31/1.00  --sup_immed_bw_main                     []
% 3.31/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.31/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.31/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.31/1.00  --sup_input_bw                          []
% 3.31/1.00  
% 3.31/1.00  ------ Combination Options
% 3.31/1.00  
% 3.31/1.00  --comb_res_mult                         3
% 3.31/1.00  --comb_sup_mult                         2
% 3.31/1.00  --comb_inst_mult                        10
% 3.31/1.00  
% 3.31/1.00  ------ Debug Options
% 3.31/1.00  
% 3.31/1.00  --dbg_backtrace                         false
% 3.31/1.00  --dbg_dump_prop_clauses                 false
% 3.31/1.00  --dbg_dump_prop_clauses_file            -
% 3.31/1.00  --dbg_out_stat                          false
% 3.31/1.00  
% 3.31/1.00  
% 3.31/1.00  
% 3.31/1.00  
% 3.31/1.00  ------ Proving...
% 3.31/1.00  
% 3.31/1.00  
% 3.31/1.00  % SZS status Theorem for theBenchmark.p
% 3.31/1.00  
% 3.31/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.31/1.00  
% 3.31/1.00  fof(f12,axiom,(
% 3.31/1.00    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k2_enumset1(X4,X5,X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)),
% 3.31/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.00  
% 3.31/1.00  fof(f60,plain,(
% 3.31/1.00    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k2_enumset1(X4,X5,X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) )),
% 3.31/1.00    inference(cnf_transformation,[],[f12])).
% 3.31/1.00  
% 3.31/1.00  fof(f9,axiom,(
% 3.31/1.00    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 3.31/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.00  
% 3.31/1.00  fof(f47,plain,(
% 3.31/1.00    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 3.31/1.00    inference(cnf_transformation,[],[f9])).
% 3.31/1.00  
% 3.31/1.00  fof(f18,axiom,(
% 3.31/1.00    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 3.31/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.00  
% 3.31/1.00  fof(f66,plain,(
% 3.31/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 3.31/1.00    inference(cnf_transformation,[],[f18])).
% 3.31/1.00  
% 3.31/1.00  fof(f19,axiom,(
% 3.31/1.00    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 3.31/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.00  
% 3.31/1.00  fof(f67,plain,(
% 3.31/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 3.31/1.00    inference(cnf_transformation,[],[f19])).
% 3.31/1.01  
% 3.31/1.01  fof(f20,axiom,(
% 3.31/1.01    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f68,plain,(
% 3.31/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 3.31/1.01    inference(cnf_transformation,[],[f20])).
% 3.31/1.01  
% 3.31/1.01  fof(f21,axiom,(
% 3.31/1.01    ! [X0,X1,X2,X3,X4,X5,X6] : k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f69,plain,(
% 3.31/1.01    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)) )),
% 3.31/1.01    inference(cnf_transformation,[],[f21])).
% 3.31/1.01  
% 3.31/1.01  fof(f72,plain,(
% 3.31/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 3.31/1.01    inference(definition_unfolding,[],[f68,f69])).
% 3.31/1.01  
% 3.31/1.01  fof(f73,plain,(
% 3.31/1.01    ( ! [X4,X2,X0,X3,X1] : (k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 3.31/1.01    inference(definition_unfolding,[],[f67,f72])).
% 3.31/1.01  
% 3.31/1.01  fof(f74,plain,(
% 3.31/1.01    ( ! [X2,X0,X3,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3)) )),
% 3.31/1.01    inference(definition_unfolding,[],[f66,f73])).
% 3.31/1.01  
% 3.31/1.01  fof(f80,plain,(
% 3.31/1.01    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3),k4_xboole_0(k6_enumset1(X4,X4,X4,X4,X4,X5,X6,X7),k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) )),
% 3.31/1.01    inference(definition_unfolding,[],[f60,f47,f74,f74])).
% 3.31/1.01  
% 3.31/1.01  fof(f14,axiom,(
% 3.31/1.01    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f62,plain,(
% 3.31/1.01    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 3.31/1.01    inference(cnf_transformation,[],[f14])).
% 3.31/1.01  
% 3.31/1.01  fof(f15,axiom,(
% 3.31/1.01    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f63,plain,(
% 3.31/1.01    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 3.31/1.01    inference(cnf_transformation,[],[f15])).
% 3.31/1.01  
% 3.31/1.01  fof(f16,axiom,(
% 3.31/1.01    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f64,plain,(
% 3.31/1.01    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.31/1.01    inference(cnf_transformation,[],[f16])).
% 3.31/1.01  
% 3.31/1.01  fof(f17,axiom,(
% 3.31/1.01    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f65,plain,(
% 3.31/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.31/1.01    inference(cnf_transformation,[],[f17])).
% 3.31/1.01  
% 3.31/1.01  fof(f75,plain,(
% 3.31/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 3.31/1.01    inference(definition_unfolding,[],[f65,f74])).
% 3.31/1.01  
% 3.31/1.01  fof(f76,plain,(
% 3.31/1.01    ( ! [X0,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.31/1.01    inference(definition_unfolding,[],[f64,f75])).
% 3.31/1.01  
% 3.31/1.01  fof(f77,plain,(
% 3.31/1.01    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 3.31/1.01    inference(definition_unfolding,[],[f63,f76])).
% 3.31/1.01  
% 3.31/1.01  fof(f13,axiom,(
% 3.31/1.01    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f61,plain,(
% 3.31/1.01    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 3.31/1.01    inference(cnf_transformation,[],[f13])).
% 3.31/1.01  
% 3.31/1.01  fof(f78,plain,(
% 3.31/1.01    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4),k4_xboole_0(k6_enumset1(X5,X5,X5,X5,X5,X6,X7,X8),k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4))) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 3.31/1.01    inference(definition_unfolding,[],[f61,f47,f73,f74])).
% 3.31/1.01  
% 3.31/1.01  fof(f96,plain,(
% 3.31/1.01    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4),k4_xboole_0(k6_enumset1(X5,X5,X5,X5,X5,X6,X7,X8),k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4))) = k5_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k4_xboole_0(k6_enumset1(X8,X8,X8,X8,X8,X8,X8,X8),k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)))) )),
% 3.31/1.01    inference(definition_unfolding,[],[f62,f47,f77,f78])).
% 3.31/1.01  
% 3.31/1.01  fof(f22,conjecture,(
% 3.31/1.01    ! [X0,X1] : (k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) => X0 = X1)),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f23,negated_conjecture,(
% 3.31/1.01    ~! [X0,X1] : (k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) => X0 = X1)),
% 3.31/1.01    inference(negated_conjecture,[],[f22])).
% 3.31/1.01  
% 3.31/1.01  fof(f27,plain,(
% 3.31/1.01    ? [X0,X1] : (X0 != X1 & k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0))),
% 3.31/1.01    inference(ennf_transformation,[],[f23])).
% 3.31/1.01  
% 3.31/1.01  fof(f37,plain,(
% 3.31/1.01    ? [X0,X1] : (X0 != X1 & k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)) => (sK2 != sK3 & k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2))),
% 3.31/1.01    introduced(choice_axiom,[])).
% 3.31/1.01  
% 3.31/1.01  fof(f38,plain,(
% 3.31/1.01    sK2 != sK3 & k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2)),
% 3.31/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f27,f37])).
% 3.31/1.01  
% 3.31/1.01  fof(f70,plain,(
% 3.31/1.01    k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2)),
% 3.31/1.01    inference(cnf_transformation,[],[f38])).
% 3.31/1.01  
% 3.31/1.01  fof(f97,plain,(
% 3.31/1.01    k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k4_xboole_0(k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)),
% 3.31/1.01    inference(definition_unfolding,[],[f70,f47,f77,f77,f77])).
% 3.31/1.01  
% 3.31/1.01  fof(f10,axiom,(
% 3.31/1.01    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f26,plain,(
% 3.31/1.01    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 3.31/1.01    inference(ennf_transformation,[],[f10])).
% 3.31/1.01  
% 3.31/1.01  fof(f28,plain,(
% 3.31/1.01    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.31/1.01    inference(nnf_transformation,[],[f26])).
% 3.31/1.01  
% 3.31/1.01  fof(f29,plain,(
% 3.31/1.01    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.31/1.01    inference(flattening,[],[f28])).
% 3.31/1.01  
% 3.31/1.01  fof(f30,plain,(
% 3.31/1.01    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.31/1.01    inference(rectify,[],[f29])).
% 3.31/1.01  
% 3.31/1.01  fof(f31,plain,(
% 3.31/1.01    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK0(X0,X1,X2,X3) != X2 & sK0(X0,X1,X2,X3) != X1 & sK0(X0,X1,X2,X3) != X0) | ~r2_hidden(sK0(X0,X1,X2,X3),X3)) & (sK0(X0,X1,X2,X3) = X2 | sK0(X0,X1,X2,X3) = X1 | sK0(X0,X1,X2,X3) = X0 | r2_hidden(sK0(X0,X1,X2,X3),X3))))),
% 3.31/1.01    introduced(choice_axiom,[])).
% 3.31/1.01  
% 3.31/1.01  fof(f32,plain,(
% 3.31/1.01    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK0(X0,X1,X2,X3) != X2 & sK0(X0,X1,X2,X3) != X1 & sK0(X0,X1,X2,X3) != X0) | ~r2_hidden(sK0(X0,X1,X2,X3),X3)) & (sK0(X0,X1,X2,X3) = X2 | sK0(X0,X1,X2,X3) = X1 | sK0(X0,X1,X2,X3) = X0 | r2_hidden(sK0(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.31/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f30,f31])).
% 3.31/1.01  
% 3.31/1.01  fof(f51,plain,(
% 3.31/1.01    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X2 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 3.31/1.01    inference(cnf_transformation,[],[f32])).
% 3.31/1.01  
% 3.31/1.01  fof(f88,plain,(
% 3.31/1.01    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X2 != X5 | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3) )),
% 3.31/1.01    inference(definition_unfolding,[],[f51,f75])).
% 3.31/1.01  
% 3.31/1.01  fof(f98,plain,(
% 3.31/1.01    ( ! [X0,X5,X3,X1] : (r2_hidden(X5,X3) | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X5) != X3) )),
% 3.31/1.01    inference(equality_resolution,[],[f88])).
% 3.31/1.01  
% 3.31/1.01  fof(f99,plain,(
% 3.31/1.01    ( ! [X0,X5,X1] : (r2_hidden(X5,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X5))) )),
% 3.31/1.01    inference(equality_resolution,[],[f98])).
% 3.31/1.01  
% 3.31/1.01  fof(f49,plain,(
% 3.31/1.01    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 3.31/1.01    inference(cnf_transformation,[],[f32])).
% 3.31/1.01  
% 3.31/1.01  fof(f90,plain,(
% 3.31/1.01    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3) )),
% 3.31/1.01    inference(definition_unfolding,[],[f49,f75])).
% 3.31/1.01  
% 3.31/1.01  fof(f102,plain,(
% 3.31/1.01    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2) != X3) )),
% 3.31/1.01    inference(equality_resolution,[],[f90])).
% 3.31/1.01  
% 3.31/1.01  fof(f103,plain,(
% 3.31/1.01    ( ! [X2,X5,X1] : (r2_hidden(X5,k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2))) )),
% 3.31/1.01    inference(equality_resolution,[],[f102])).
% 3.31/1.01  
% 3.31/1.01  fof(f48,plain,(
% 3.31/1.01    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k1_enumset1(X0,X1,X2) != X3) )),
% 3.31/1.01    inference(cnf_transformation,[],[f32])).
% 3.31/1.01  
% 3.31/1.01  fof(f91,plain,(
% 3.31/1.01    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3) )),
% 3.31/1.01    inference(definition_unfolding,[],[f48,f75])).
% 3.31/1.01  
% 3.31/1.01  fof(f104,plain,(
% 3.31/1.01    ( ! [X2,X0,X5,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2))) )),
% 3.31/1.01    inference(equality_resolution,[],[f91])).
% 3.31/1.01  
% 3.31/1.01  fof(f11,axiom,(
% 3.31/1.01    ! [X0,X1] : (k1_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> X0 = X2))),
% 3.31/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.31/1.01  
% 3.31/1.01  fof(f33,plain,(
% 3.31/1.01    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | X0 != X2) & (X0 = X2 | ~r2_hidden(X2,X1))) | k1_tarski(X0) != X1))),
% 3.31/1.01    inference(nnf_transformation,[],[f11])).
% 3.31/1.01  
% 3.31/1.01  fof(f34,plain,(
% 3.31/1.01    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 3.31/1.01    inference(rectify,[],[f33])).
% 3.31/1.01  
% 3.31/1.01  fof(f35,plain,(
% 3.31/1.01    ! [X1,X0] : (? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1))) => ((sK1(X0,X1) != X0 | ~r2_hidden(sK1(X0,X1),X1)) & (sK1(X0,X1) = X0 | r2_hidden(sK1(X0,X1),X1))))),
% 3.31/1.01    introduced(choice_axiom,[])).
% 3.31/1.01  
% 3.31/1.01  fof(f36,plain,(
% 3.31/1.01    ! [X0,X1] : ((k1_tarski(X0) = X1 | ((sK1(X0,X1) != X0 | ~r2_hidden(sK1(X0,X1),X1)) & (sK1(X0,X1) = X0 | r2_hidden(sK1(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 3.31/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f34,f35])).
% 3.31/1.01  
% 3.31/1.01  fof(f56,plain,(
% 3.31/1.01    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k1_tarski(X0) != X1) )),
% 3.31/1.01    inference(cnf_transformation,[],[f36])).
% 3.31/1.01  
% 3.31/1.01  fof(f95,plain,(
% 3.31/1.01    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1) )),
% 3.31/1.01    inference(definition_unfolding,[],[f56,f77])).
% 3.31/1.01  
% 3.31/1.01  fof(f107,plain,(
% 3.31/1.01    ( ! [X0,X3] : (X0 = X3 | ~r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))) )),
% 3.31/1.01    inference(equality_resolution,[],[f95])).
% 3.31/1.01  
% 3.31/1.01  fof(f57,plain,(
% 3.31/1.01    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | X0 != X3 | k1_tarski(X0) != X1) )),
% 3.31/1.01    inference(cnf_transformation,[],[f36])).
% 3.31/1.01  
% 3.31/1.01  fof(f94,plain,(
% 3.31/1.01    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | X0 != X3 | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1) )),
% 3.31/1.01    inference(definition_unfolding,[],[f57,f77])).
% 3.31/1.01  
% 3.31/1.01  fof(f105,plain,(
% 3.31/1.01    ( ! [X3,X1] : (r2_hidden(X3,X1) | k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3) != X1) )),
% 3.31/1.01    inference(equality_resolution,[],[f94])).
% 3.31/1.01  
% 3.31/1.01  fof(f106,plain,(
% 3.31/1.01    ( ! [X3] : (r2_hidden(X3,k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3))) )),
% 3.31/1.01    inference(equality_resolution,[],[f105])).
% 3.31/1.01  
% 3.31/1.01  fof(f71,plain,(
% 3.31/1.01    sK2 != sK3),
% 3.31/1.01    inference(cnf_transformation,[],[f38])).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1,plain,
% 3.31/1.01      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3),k4_xboole_0(k6_enumset1(X4,X4,X4,X4,X4,X5,X6,X7),k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
% 3.31/1.01      inference(cnf_transformation,[],[f80]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_20,plain,
% 3.31/1.01      ( k5_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k4_xboole_0(k6_enumset1(X8,X8,X8,X8,X8,X8,X8,X8),k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7))) = k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4),k4_xboole_0(k6_enumset1(X5,X5,X5,X5,X5,X6,X7,X8),k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4))) ),
% 3.31/1.01      inference(cnf_transformation,[],[f96]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_22,negated_conjecture,
% 3.31/1.01      ( k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k4_xboole_0(k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
% 3.31/1.01      inference(cnf_transformation,[],[f97]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_2081,plain,
% 3.31/1.01      ( k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
% 3.31/1.01      inference(superposition,[status(thm)],[c_20,c_22]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_2181,plain,
% 3.31/1.01      ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
% 3.31/1.01      inference(superposition,[status(thm)],[c_1,c_2081]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_2244,plain,
% 3.31/1.01      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3),k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3))) = k6_enumset1(X0,X1,X2,X3,sK2,sK2,sK2,sK3) ),
% 3.31/1.01      inference(superposition,[status(thm)],[c_2181,c_1]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_2253,plain,
% 3.31/1.01      ( k6_enumset1(X0,X1,X2,X3,sK2,sK2,sK2,sK2) = k6_enumset1(X0,X1,X2,X3,sK2,sK2,sK2,sK3) ),
% 3.31/1.01      inference(demodulation,[status(thm)],[c_2244,c_1]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_2258,plain,
% 3.31/1.01      ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_2253]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1300,plain,
% 3.31/1.01      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.31/1.01      theory(equality) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1589,plain,
% 3.31/1.01      ( ~ r2_hidden(X0,X1)
% 3.31/1.01      | r2_hidden(sK3,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))
% 3.31/1.01      | k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2) != X1
% 3.31/1.01      | sK3 != X0 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1300]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1773,plain,
% 3.31/1.01      ( ~ r2_hidden(sK3,X0)
% 3.31/1.01      | r2_hidden(sK3,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
% 3.31/1.01      | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) != X0
% 3.31/1.01      | sK3 != sK3 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1589]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_2099,plain,
% 3.31/1.01      ( r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))
% 3.31/1.01      | ~ r2_hidden(sK3,k6_enumset1(X1,X1,X1,X1,X1,X1,X2,sK3))
% 3.31/1.01      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k6_enumset1(X1,X1,X1,X1,X1,X1,X2,sK3)
% 3.31/1.01      | sK3 != sK3 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1773]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_2101,plain,
% 3.31/1.01      ( ~ r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3))
% 3.31/1.01      | r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))
% 3.31/1.01      | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) != k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3)
% 3.31/1.01      | sK3 != sK3 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_2099]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_12,plain,
% 3.31/1.01      ( r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X2,X0)) ),
% 3.31/1.01      inference(cnf_transformation,[],[f99]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1724,plain,
% 3.31/1.01      ( r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,sK3)) ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_12]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1726,plain,
% 3.31/1.01      ( r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3)) ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1724]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_14,plain,
% 3.31/1.01      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ),
% 3.31/1.01      inference(cnf_transformation,[],[f103]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1718,plain,
% 3.31/1.01      ( r2_hidden(sK3,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,X0,X1)) ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_14]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1720,plain,
% 3.31/1.01      ( r2_hidden(sK3,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK2,sK2)) ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1718]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_15,plain,
% 3.31/1.01      ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X2,X3))
% 3.31/1.01      | X0 = X1
% 3.31/1.01      | X0 = X2
% 3.31/1.01      | X0 = X3 ),
% 3.31/1.01      inference(cnf_transformation,[],[f104]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1515,plain,
% 3.31/1.01      ( ~ r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2))
% 3.31/1.01      | sK3 = X0
% 3.31/1.01      | sK3 = X1
% 3.31/1.01      | sK3 = X2 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_15]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1604,plain,
% 3.31/1.01      ( ~ r2_hidden(sK3,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,X0,X1))
% 3.31/1.01      | sK3 = X0
% 3.31/1.01      | sK3 = X1
% 3.31/1.01      | sK3 = sK3 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1515]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1606,plain,
% 3.31/1.01      ( ~ r2_hidden(sK3,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK2,sK2))
% 3.31/1.01      | sK3 = sK3
% 3.31/1.01      | sK3 = sK2 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1604]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_19,plain,
% 3.31/1.01      ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) | X0 = X1 ),
% 3.31/1.01      inference(cnf_transformation,[],[f107]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1516,plain,
% 3.31/1.01      ( ~ r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))
% 3.31/1.01      | sK3 = X0 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_19]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1518,plain,
% 3.31/1.01      ( ~ r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))
% 3.31/1.01      | sK3 = sK2 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1516]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1296,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1507,plain,
% 3.31/1.01      ( sK3 != X0 | sK2 != X0 | sK2 = sK3 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1296]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_1508,plain,
% 3.31/1.01      ( sK3 != sK2 | sK2 = sK3 | sK2 != sK2 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_1507]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_18,plain,
% 3.31/1.01      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ),
% 3.31/1.01      inference(cnf_transformation,[],[f106]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_28,plain,
% 3.31/1.01      ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_18]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_25,plain,
% 3.31/1.01      ( ~ r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))
% 3.31/1.01      | sK2 = sK2 ),
% 3.31/1.01      inference(instantiation,[status(thm)],[c_19]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(c_21,negated_conjecture,
% 3.31/1.01      ( sK2 != sK3 ),
% 3.31/1.01      inference(cnf_transformation,[],[f71]) ).
% 3.31/1.01  
% 3.31/1.01  cnf(contradiction,plain,
% 3.31/1.01      ( $false ),
% 3.31/1.01      inference(minisat,
% 3.31/1.01                [status(thm)],
% 3.31/1.01                [c_2258,c_2101,c_1726,c_1720,c_1606,c_1518,c_1508,c_28,
% 3.31/1.01                 c_25,c_21]) ).
% 3.31/1.01  
% 3.31/1.01  
% 3.31/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 3.31/1.01  
% 3.31/1.01  ------                               Statistics
% 3.31/1.01  
% 3.31/1.01  ------ General
% 3.31/1.01  
% 3.31/1.01  abstr_ref_over_cycles:                  0
% 3.31/1.01  abstr_ref_under_cycles:                 0
% 3.31/1.01  gc_basic_clause_elim:                   0
% 3.31/1.01  forced_gc_time:                         0
% 3.31/1.01  parsing_time:                           0.015
% 3.31/1.01  unif_index_cands_time:                  0.
% 3.31/1.01  unif_index_add_time:                    0.
% 3.31/1.01  orderings_time:                         0.
% 3.31/1.01  out_proof_time:                         0.026
% 3.31/1.01  total_time:                             0.148
% 3.31/1.01  num_of_symbols:                         41
% 3.31/1.01  num_of_terms:                           1879
% 3.31/1.01  
% 3.31/1.01  ------ Preprocessing
% 3.31/1.01  
% 3.31/1.01  num_of_splits:                          0
% 3.31/1.01  num_of_split_atoms:                     0
% 3.31/1.01  num_of_reused_defs:                     0
% 3.31/1.01  num_eq_ax_congr_red:                    19
% 3.31/1.01  num_of_sem_filtered_clauses:            1
% 3.31/1.01  num_of_subtypes:                        0
% 3.31/1.01  monotx_restored_types:                  0
% 3.31/1.01  sat_num_of_epr_types:                   0
% 3.31/1.01  sat_num_of_non_cyclic_types:            0
% 3.31/1.01  sat_guarded_non_collapsed_types:        0
% 3.31/1.01  num_pure_diseq_elim:                    0
% 3.31/1.01  simp_replaced_by:                       0
% 3.31/1.01  res_preprocessed:                       102
% 3.31/1.01  prep_upred:                             0
% 3.31/1.01  prep_unflattend:                        74
% 3.31/1.01  smt_new_axioms:                         0
% 3.31/1.01  pred_elim_cands:                        1
% 3.31/1.01  pred_elim:                              1
% 3.31/1.01  pred_elim_cl:                           1
% 3.31/1.01  pred_elim_cycles:                       3
% 3.31/1.01  merged_defs:                            0
% 3.31/1.01  merged_defs_ncl:                        0
% 3.31/1.01  bin_hyper_res:                          0
% 3.31/1.01  prep_cycles:                            4
% 3.31/1.01  pred_elim_time:                         0.032
% 3.31/1.01  splitting_time:                         0.
% 3.31/1.01  sem_filter_time:                        0.
% 3.31/1.01  monotx_time:                            0.002
% 3.31/1.01  subtype_inf_time:                       0.
% 3.31/1.01  
% 3.31/1.01  ------ Problem properties
% 3.31/1.01  
% 3.31/1.01  clauses:                                22
% 3.31/1.01  conjectures:                            2
% 3.31/1.01  epr:                                    1
% 3.31/1.01  horn:                                   19
% 3.31/1.01  ground:                                 2
% 3.31/1.01  unary:                                  14
% 3.31/1.01  binary:                                 1
% 3.31/1.01  lits:                                   40
% 3.31/1.01  lits_eq:                                28
% 3.31/1.01  fd_pure:                                0
% 3.31/1.01  fd_pseudo:                              0
% 3.31/1.01  fd_cond:                                0
% 3.31/1.01  fd_pseudo_cond:                         6
% 3.31/1.01  ac_symbols:                             0
% 3.31/1.01  
% 3.31/1.01  ------ Propositional Solver
% 3.31/1.01  
% 3.31/1.01  prop_solver_calls:                      28
% 3.31/1.01  prop_fast_solver_calls:                 665
% 3.31/1.01  smt_solver_calls:                       0
% 3.31/1.01  smt_fast_solver_calls:                  0
% 3.31/1.01  prop_num_of_clauses:                    418
% 3.31/1.01  prop_preprocess_simplified:             2810
% 3.31/1.01  prop_fo_subsumed:                       0
% 3.31/1.01  prop_solver_time:                       0.
% 3.31/1.01  smt_solver_time:                        0.
% 3.31/1.01  smt_fast_solver_time:                   0.
% 3.31/1.01  prop_fast_solver_time:                  0.
% 3.31/1.01  prop_unsat_core_time:                   0.
% 3.31/1.01  
% 3.31/1.01  ------ QBF
% 3.31/1.01  
% 3.31/1.01  qbf_q_res:                              0
% 3.31/1.01  qbf_num_tautologies:                    0
% 3.31/1.01  qbf_prep_cycles:                        0
% 3.31/1.01  
% 3.31/1.01  ------ BMC1
% 3.31/1.01  
% 3.31/1.01  bmc1_current_bound:                     -1
% 3.31/1.01  bmc1_last_solved_bound:                 -1
% 3.31/1.01  bmc1_unsat_core_size:                   -1
% 3.31/1.01  bmc1_unsat_core_parents_size:           -1
% 3.31/1.01  bmc1_merge_next_fun:                    0
% 3.31/1.01  bmc1_unsat_core_clauses_time:           0.
% 3.31/1.01  
% 3.31/1.01  ------ Instantiation
% 3.31/1.01  
% 3.31/1.01  inst_num_of_clauses:                    103
% 3.31/1.01  inst_num_in_passive:                    19
% 3.31/1.01  inst_num_in_active:                     71
% 3.31/1.01  inst_num_in_unprocessed:                13
% 3.31/1.01  inst_num_of_loops:                      90
% 3.31/1.01  inst_num_of_learning_restarts:          0
% 3.31/1.01  inst_num_moves_active_passive:          16
% 3.31/1.01  inst_lit_activity:                      0
% 3.31/1.01  inst_lit_activity_moves:                0
% 3.31/1.01  inst_num_tautologies:                   0
% 3.31/1.01  inst_num_prop_implied:                  0
% 3.31/1.01  inst_num_existing_simplified:           0
% 3.31/1.01  inst_num_eq_res_simplified:             0
% 3.31/1.01  inst_num_child_elim:                    0
% 3.31/1.01  inst_num_of_dismatching_blockings:      53
% 3.31/1.01  inst_num_of_non_proper_insts:           180
% 3.31/1.01  inst_num_of_duplicates:                 0
% 3.31/1.01  inst_inst_num_from_inst_to_res:         0
% 3.31/1.01  inst_dismatching_checking_time:         0.
% 3.31/1.01  
% 3.31/1.01  ------ Resolution
% 3.31/1.01  
% 3.31/1.01  res_num_of_clauses:                     0
% 3.31/1.01  res_num_in_passive:                     0
% 3.31/1.01  res_num_in_active:                      0
% 3.31/1.01  res_num_of_loops:                       106
% 3.31/1.01  res_forward_subset_subsumed:            69
% 3.31/1.01  res_backward_subset_subsumed:           0
% 3.31/1.01  res_forward_subsumed:                   2
% 3.31/1.01  res_backward_subsumed:                  0
% 3.31/1.01  res_forward_subsumption_resolution:     0
% 3.31/1.01  res_backward_subsumption_resolution:    0
% 3.31/1.01  res_clause_to_clause_subsumption:       177
% 3.31/1.01  res_orphan_elimination:                 0
% 3.31/1.01  res_tautology_del:                      20
% 3.31/1.01  res_num_eq_res_simplified:              0
% 3.31/1.01  res_num_sel_changes:                    0
% 3.31/1.01  res_moves_from_active_to_pass:          0
% 3.31/1.01  
% 3.31/1.01  ------ Superposition
% 3.31/1.01  
% 3.31/1.01  sup_time_total:                         0.
% 3.31/1.01  sup_time_generating:                    0.
% 3.31/1.01  sup_time_sim_full:                      0.
% 3.31/1.01  sup_time_sim_immed:                     0.
% 3.31/1.01  
% 3.31/1.01  sup_num_of_clauses:                     48
% 3.31/1.01  sup_num_in_active:                      14
% 3.31/1.01  sup_num_in_passive:                     34
% 3.31/1.01  sup_num_of_loops:                       16
% 3.31/1.01  sup_fw_superposition:                   25
% 3.31/1.01  sup_bw_superposition:                   38
% 3.31/1.01  sup_immediate_simplified:               18
% 3.31/1.01  sup_given_eliminated:                   1
% 3.31/1.01  comparisons_done:                       0
% 3.31/1.01  comparisons_avoided:                    0
% 3.31/1.01  
% 3.31/1.01  ------ Simplifications
% 3.31/1.01  
% 3.31/1.01  
% 3.31/1.01  sim_fw_subset_subsumed:                 0
% 3.31/1.01  sim_bw_subset_subsumed:                 0
% 3.31/1.01  sim_fw_subsumed:                        7
% 3.31/1.01  sim_bw_subsumed:                        1
% 3.31/1.01  sim_fw_subsumption_res:                 0
% 3.31/1.01  sim_bw_subsumption_res:                 0
% 3.31/1.01  sim_tautology_del:                      0
% 3.31/1.01  sim_eq_tautology_del:                   1
% 3.31/1.01  sim_eq_res_simp:                        0
% 3.31/1.01  sim_fw_demodulated:                     10
% 3.31/1.01  sim_bw_demodulated:                     3
% 3.31/1.01  sim_light_normalised:                   6
% 3.31/1.01  sim_joinable_taut:                      0
% 3.31/1.01  sim_joinable_simp:                      0
% 3.31/1.01  sim_ac_normalised:                      0
% 3.31/1.01  sim_smt_subsumption:                    0
% 3.31/1.01  
%------------------------------------------------------------------------------
