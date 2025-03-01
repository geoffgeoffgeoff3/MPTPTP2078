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
% DateTime   : Thu Dec  3 11:32:39 EST 2020

% Result     : Theorem 2.60s
% Output     : CNFRefutation 2.60s
% Verified   : 
% Statistics : Number of formulae       :  117 (1407 expanded)
%              Number of clauses        :   46 ( 133 expanded)
%              Number of leaves         :   21 ( 436 expanded)
%              Depth                    :   25
%              Number of atoms          :  323 (2507 expanded)
%              Number of equality atoms :  200 (2012 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f2])).

fof(f26,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK1(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f18,f26])).

fof(f44,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f16,conjecture,(
    ! [X0,X1,X2] :
      ~ ( k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & X1 != X2
        & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ~ ( k1_xboole_0 != X2
          & k1_xboole_0 != X1
          & X1 != X2
          & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    inference(negated_conjecture,[],[f16])).

fof(f20,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & X1 != X2
      & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f36,plain,
    ( ? [X0,X1,X2] :
        ( k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & X1 != X2
        & k2_xboole_0(X1,X2) = k1_tarski(X0) )
   => ( k1_xboole_0 != sK5
      & k1_xboole_0 != sK4
      & sK4 != sK5
      & k2_xboole_0(sK4,sK5) = k1_tarski(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,
    ( k1_xboole_0 != sK5
    & k1_xboole_0 != sK4
    & sK4 != sK5
    & k2_xboole_0(sK4,sK5) = k1_tarski(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f20,f36])).

fof(f65,plain,(
    k2_xboole_0(sK4,sK5) = k1_tarski(sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f14,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f14])).

fof(f74,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f61,f73])).

fof(f6,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f11])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f12])).

fof(f69,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f56,f57])).

fof(f70,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f55,f69])).

fof(f71,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f54,f70])).

fof(f72,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f53,f71])).

fof(f73,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f52,f72])).

fof(f75,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f51,f73])).

fof(f94,plain,(
    k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK5)) ),
    inference(definition_unfolding,[],[f65,f74,f75])).

fof(f4,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f83,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f46,f74])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <=> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(flattening,[],[f32])).

fof(f58,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f90,plain,(
    ! [X0,X1] :
      ( k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) ) ),
    inference(definition_unfolding,[],[f58,f75,f75])).

fof(f67,plain,(
    k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f37])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
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

fof(f22,plain,(
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
    inference(flattening,[],[f21])).

fof(f23,plain,(
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
    inference(rectify,[],[f22])).

fof(f24,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( ~ r2_hidden(X3,X1)
              & ~ r2_hidden(X3,X0) )
            | ~ r2_hidden(X3,X2) )
          & ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0)
            | r2_hidden(X3,X2) ) )
     => ( ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
            & ~ r2_hidden(sK0(X0,X1,X2),X0) )
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( r2_hidden(sK0(X0,X1,X2),X1)
          | r2_hidden(sK0(X0,X1,X2),X0)
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( k2_xboole_0(X0,X1) = X2
        | ( ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
              & ~ r2_hidden(sK0(X0,X1,X2),X0) )
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( r2_hidden(sK0(X0,X1,X2),X1)
            | r2_hidden(sK0(X0,X1,X2),X0)
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f23,f24])).

fof(f40,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k2_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f79,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f40,f74])).

fof(f95,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))
      | ~ r2_hidden(X4,X1) ) ),
    inference(equality_resolution,[],[f79])).

fof(f66,plain,(
    sK4 != sK5 ),
    inference(cnf_transformation,[],[f37])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> X0 = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
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
    inference(nnf_transformation,[],[f5])).

fof(f29,plain,(
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
    inference(rectify,[],[f28])).

fof(f30,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( X0 != X2
            | ~ r2_hidden(X2,X1) )
          & ( X0 = X2
            | r2_hidden(X2,X1) ) )
     => ( ( sK2(X0,X1) != X0
          | ~ r2_hidden(sK2(X0,X1),X1) )
        & ( sK2(X0,X1) = X0
          | r2_hidden(sK2(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ( ( sK2(X0,X1) != X0
            | ~ r2_hidden(sK2(X0,X1),X1) )
          & ( sK2(X0,X1) = X0
            | r2_hidden(sK2(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f29,f30])).

fof(f47,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f87,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1 ) ),
    inference(definition_unfolding,[],[f47,f75])).

fof(f100,plain,(
    ! [X0,X3] :
      ( X0 = X3
      | ~ r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ) ),
    inference(equality_resolution,[],[f87])).

fof(f49,plain,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
      | sK2(X0,X1) = X0
      | r2_hidden(sK2(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f85,plain,(
    ! [X0,X1] :
      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
      | sK2(X0,X1) = X0
      | r2_hidden(sK2(X0,X1),X1) ) ),
    inference(definition_unfolding,[],[f49,f75])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f82,plain,(
    ! [X0,X1] :
      ( k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f45,f74])).

fof(f50,plain,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
      | sK2(X0,X1) != X0
      | ~ r2_hidden(sK2(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f84,plain,(
    ! [X0,X1] :
      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
      | sK2(X0,X1) != X0
      | ~ r2_hidden(sK2(X0,X1),X1) ) ),
    inference(definition_unfolding,[],[f50,f75])).

fof(f68,plain,(
    k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_6,plain,
    ( r2_hidden(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_700,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_22,negated_conjecture,
    ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK5)) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_8,plain,
    ( r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_698,plain,
    ( r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1018,plain,
    ( r1_tarski(sK4,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)) = iProver_top ),
    inference(superposition,[status(thm)],[c_22,c_698])).

cnf(c_15,plain,
    ( ~ r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f90])).

cnf(c_691,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
    | k1_xboole_0 = X1
    | r1_tarski(X1,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_3251,plain,
    ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK4
    | sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1018,c_691])).

cnf(c_20,negated_conjecture,
    ( k1_xboole_0 != sK4 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_371,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_842,plain,
    ( sK4 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_371])).

cnf(c_943,plain,
    ( sK4 != k1_xboole_0
    | k1_xboole_0 = sK4
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_842])).

cnf(c_370,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_944,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_370])).

cnf(c_5613,plain,
    ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3251,c_20,c_943,c_944])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_703,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2099,plain,
    ( r2_hidden(X0,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_22,c_703])).

cnf(c_5623,plain,
    ( r2_hidden(X0,sK4) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5613,c_2099])).

cnf(c_5814,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(sK1(sK5),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_700,c_5623])).

cnf(c_21,negated_conjecture,
    ( sK4 != sK5 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f100])).

cnf(c_694,plain,
    ( X0 = X1
    | r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_2441,plain,
    ( sK3 = X0
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_2099,c_694])).

cnf(c_2521,plain,
    ( sK1(sK5) = sK3
    | sK5 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_700,c_2441])).

cnf(c_2629,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(sK3,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_2521,c_700])).

cnf(c_10,plain,
    ( r2_hidden(sK2(X0,X1),X1)
    | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
    | sK2(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f85])).

cnf(c_696,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
    | sK2(X0,X1) = X0
    | r2_hidden(sK2(X0,X1),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2522,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = sK5
    | sK2(X0,sK5) = X0
    | sK2(X0,sK5) = sK3 ),
    inference(superposition,[status(thm)],[c_696,c_2441])).

cnf(c_3130,plain,
    ( sK2(sK3,sK5) = sK3
    | r1_tarski(sK4,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_2522,c_1018])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f82])).

cnf(c_699,plain,
    ( k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = X1
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_4585,plain,
    ( sK2(sK3,sK5) = sK3
    | k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK5)) = sK5 ),
    inference(superposition,[status(thm)],[c_3130,c_699])).

cnf(c_4586,plain,
    ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK5
    | sK2(sK3,sK5) = sK3 ),
    inference(demodulation,[status(thm)],[c_4585,c_22])).

cnf(c_5683,plain,
    ( sK2(sK3,sK5) = sK3
    | sK4 = sK5 ),
    inference(superposition,[status(thm)],[c_5613,c_4586])).

cnf(c_5863,plain,
    ( sK2(sK3,sK5) = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5683,c_21])).

cnf(c_9,plain,
    ( ~ r2_hidden(sK2(X0,X1),X1)
    | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
    | sK2(X0,X1) != X0 ),
    inference(cnf_transformation,[],[f84])).

cnf(c_697,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
    | sK2(X0,X1) != X0
    | r2_hidden(sK2(X0,X1),X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_5866,plain,
    ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK5
    | r2_hidden(sK2(sK3,sK5),sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_5863,c_697])).

cnf(c_5870,plain,
    ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK5
    | r2_hidden(sK3,sK5) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5866,c_5863])).

cnf(c_5871,plain,
    ( sK4 = sK5
    | r2_hidden(sK3,sK5) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5870,c_5613])).

cnf(c_6092,plain,
    ( sK5 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_5814,c_21,c_2629,c_5871])).

cnf(c_19,negated_conjecture,
    ( k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_6105,plain,
    ( k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_6092,c_19])).

cnf(c_6106,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_6105])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 16:18:06 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.60/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.60/1.00  
% 2.60/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.60/1.00  
% 2.60/1.00  ------  iProver source info
% 2.60/1.00  
% 2.60/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.60/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.60/1.00  git: non_committed_changes: false
% 2.60/1.00  git: last_make_outside_of_git: false
% 2.60/1.00  
% 2.60/1.00  ------ 
% 2.60/1.00  
% 2.60/1.00  ------ Input Options
% 2.60/1.00  
% 2.60/1.00  --out_options                           all
% 2.60/1.00  --tptp_safe_out                         true
% 2.60/1.00  --problem_path                          ""
% 2.60/1.00  --include_path                          ""
% 2.60/1.00  --clausifier                            res/vclausify_rel
% 2.60/1.00  --clausifier_options                    --mode clausify
% 2.60/1.00  --stdin                                 false
% 2.60/1.00  --stats_out                             all
% 2.60/1.00  
% 2.60/1.00  ------ General Options
% 2.60/1.00  
% 2.60/1.00  --fof                                   false
% 2.60/1.00  --time_out_real                         305.
% 2.60/1.00  --time_out_virtual                      -1.
% 2.60/1.00  --symbol_type_check                     false
% 2.60/1.00  --clausify_out                          false
% 2.60/1.00  --sig_cnt_out                           false
% 2.60/1.00  --trig_cnt_out                          false
% 2.60/1.00  --trig_cnt_out_tolerance                1.
% 2.60/1.00  --trig_cnt_out_sk_spl                   false
% 2.60/1.00  --abstr_cl_out                          false
% 2.60/1.00  
% 2.60/1.00  ------ Global Options
% 2.60/1.00  
% 2.60/1.00  --schedule                              default
% 2.60/1.00  --add_important_lit                     false
% 2.60/1.00  --prop_solver_per_cl                    1000
% 2.60/1.00  --min_unsat_core                        false
% 2.60/1.00  --soft_assumptions                      false
% 2.60/1.00  --soft_lemma_size                       3
% 2.60/1.00  --prop_impl_unit_size                   0
% 2.60/1.00  --prop_impl_unit                        []
% 2.60/1.00  --share_sel_clauses                     true
% 2.60/1.00  --reset_solvers                         false
% 2.60/1.00  --bc_imp_inh                            [conj_cone]
% 2.60/1.00  --conj_cone_tolerance                   3.
% 2.60/1.00  --extra_neg_conj                        none
% 2.60/1.00  --large_theory_mode                     true
% 2.60/1.00  --prolific_symb_bound                   200
% 2.60/1.00  --lt_threshold                          2000
% 2.60/1.00  --clause_weak_htbl                      true
% 2.60/1.00  --gc_record_bc_elim                     false
% 2.60/1.00  
% 2.60/1.00  ------ Preprocessing Options
% 2.60/1.00  
% 2.60/1.00  --preprocessing_flag                    true
% 2.60/1.00  --time_out_prep_mult                    0.1
% 2.60/1.00  --splitting_mode                        input
% 2.60/1.00  --splitting_grd                         true
% 2.60/1.00  --splitting_cvd                         false
% 2.60/1.00  --splitting_cvd_svl                     false
% 2.60/1.00  --splitting_nvd                         32
% 2.60/1.00  --sub_typing                            true
% 2.60/1.00  --prep_gs_sim                           true
% 2.60/1.00  --prep_unflatten                        true
% 2.60/1.00  --prep_res_sim                          true
% 2.60/1.00  --prep_upred                            true
% 2.60/1.00  --prep_sem_filter                       exhaustive
% 2.60/1.00  --prep_sem_filter_out                   false
% 2.60/1.00  --pred_elim                             true
% 2.60/1.00  --res_sim_input                         true
% 2.60/1.00  --eq_ax_congr_red                       true
% 2.60/1.00  --pure_diseq_elim                       true
% 2.60/1.00  --brand_transform                       false
% 2.60/1.00  --non_eq_to_eq                          false
% 2.60/1.00  --prep_def_merge                        true
% 2.60/1.00  --prep_def_merge_prop_impl              false
% 2.60/1.00  --prep_def_merge_mbd                    true
% 2.60/1.00  --prep_def_merge_tr_red                 false
% 2.60/1.00  --prep_def_merge_tr_cl                  false
% 2.60/1.00  --smt_preprocessing                     true
% 2.60/1.00  --smt_ac_axioms                         fast
% 2.60/1.00  --preprocessed_out                      false
% 2.60/1.00  --preprocessed_stats                    false
% 2.60/1.00  
% 2.60/1.00  ------ Abstraction refinement Options
% 2.60/1.00  
% 2.60/1.00  --abstr_ref                             []
% 2.60/1.00  --abstr_ref_prep                        false
% 2.60/1.00  --abstr_ref_until_sat                   false
% 2.60/1.00  --abstr_ref_sig_restrict                funpre
% 2.60/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.60/1.00  --abstr_ref_under                       []
% 2.60/1.00  
% 2.60/1.00  ------ SAT Options
% 2.60/1.00  
% 2.60/1.00  --sat_mode                              false
% 2.60/1.00  --sat_fm_restart_options                ""
% 2.60/1.00  --sat_gr_def                            false
% 2.60/1.00  --sat_epr_types                         true
% 2.60/1.00  --sat_non_cyclic_types                  false
% 2.60/1.00  --sat_finite_models                     false
% 2.60/1.00  --sat_fm_lemmas                         false
% 2.60/1.00  --sat_fm_prep                           false
% 2.60/1.00  --sat_fm_uc_incr                        true
% 2.60/1.00  --sat_out_model                         small
% 2.60/1.00  --sat_out_clauses                       false
% 2.60/1.00  
% 2.60/1.00  ------ QBF Options
% 2.60/1.00  
% 2.60/1.00  --qbf_mode                              false
% 2.60/1.00  --qbf_elim_univ                         false
% 2.60/1.00  --qbf_dom_inst                          none
% 2.60/1.00  --qbf_dom_pre_inst                      false
% 2.60/1.00  --qbf_sk_in                             false
% 2.60/1.00  --qbf_pred_elim                         true
% 2.60/1.00  --qbf_split                             512
% 2.60/1.00  
% 2.60/1.00  ------ BMC1 Options
% 2.60/1.00  
% 2.60/1.00  --bmc1_incremental                      false
% 2.60/1.00  --bmc1_axioms                           reachable_all
% 2.60/1.00  --bmc1_min_bound                        0
% 2.60/1.00  --bmc1_max_bound                        -1
% 2.60/1.00  --bmc1_max_bound_default                -1
% 2.60/1.00  --bmc1_symbol_reachability              true
% 2.60/1.00  --bmc1_property_lemmas                  false
% 2.60/1.00  --bmc1_k_induction                      false
% 2.60/1.00  --bmc1_non_equiv_states                 false
% 2.60/1.00  --bmc1_deadlock                         false
% 2.60/1.00  --bmc1_ucm                              false
% 2.60/1.00  --bmc1_add_unsat_core                   none
% 2.60/1.00  --bmc1_unsat_core_children              false
% 2.60/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.60/1.00  --bmc1_out_stat                         full
% 2.60/1.00  --bmc1_ground_init                      false
% 2.60/1.00  --bmc1_pre_inst_next_state              false
% 2.60/1.00  --bmc1_pre_inst_state                   false
% 2.60/1.00  --bmc1_pre_inst_reach_state             false
% 2.60/1.00  --bmc1_out_unsat_core                   false
% 2.60/1.00  --bmc1_aig_witness_out                  false
% 2.60/1.00  --bmc1_verbose                          false
% 2.60/1.00  --bmc1_dump_clauses_tptp                false
% 2.60/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.60/1.00  --bmc1_dump_file                        -
% 2.60/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.60/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.60/1.00  --bmc1_ucm_extend_mode                  1
% 2.60/1.00  --bmc1_ucm_init_mode                    2
% 2.60/1.00  --bmc1_ucm_cone_mode                    none
% 2.60/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.60/1.00  --bmc1_ucm_relax_model                  4
% 2.60/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.60/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.60/1.00  --bmc1_ucm_layered_model                none
% 2.60/1.00  --bmc1_ucm_max_lemma_size               10
% 2.60/1.00  
% 2.60/1.00  ------ AIG Options
% 2.60/1.00  
% 2.60/1.00  --aig_mode                              false
% 2.60/1.00  
% 2.60/1.00  ------ Instantiation Options
% 2.60/1.00  
% 2.60/1.00  --instantiation_flag                    true
% 2.60/1.00  --inst_sos_flag                         false
% 2.60/1.00  --inst_sos_phase                        true
% 2.60/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.60/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.60/1.00  --inst_lit_sel_side                     num_symb
% 2.60/1.00  --inst_solver_per_active                1400
% 2.60/1.00  --inst_solver_calls_frac                1.
% 2.60/1.00  --inst_passive_queue_type               priority_queues
% 2.60/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.60/1.00  --inst_passive_queues_freq              [25;2]
% 2.60/1.00  --inst_dismatching                      true
% 2.60/1.00  --inst_eager_unprocessed_to_passive     true
% 2.60/1.00  --inst_prop_sim_given                   true
% 2.60/1.00  --inst_prop_sim_new                     false
% 2.60/1.00  --inst_subs_new                         false
% 2.60/1.00  --inst_eq_res_simp                      false
% 2.60/1.00  --inst_subs_given                       false
% 2.60/1.00  --inst_orphan_elimination               true
% 2.60/1.00  --inst_learning_loop_flag               true
% 2.60/1.00  --inst_learning_start                   3000
% 2.60/1.00  --inst_learning_factor                  2
% 2.60/1.00  --inst_start_prop_sim_after_learn       3
% 2.60/1.00  --inst_sel_renew                        solver
% 2.60/1.00  --inst_lit_activity_flag                true
% 2.60/1.00  --inst_restr_to_given                   false
% 2.60/1.00  --inst_activity_threshold               500
% 2.60/1.00  --inst_out_proof                        true
% 2.60/1.00  
% 2.60/1.00  ------ Resolution Options
% 2.60/1.00  
% 2.60/1.00  --resolution_flag                       true
% 2.60/1.00  --res_lit_sel                           adaptive
% 2.60/1.00  --res_lit_sel_side                      none
% 2.60/1.00  --res_ordering                          kbo
% 2.60/1.00  --res_to_prop_solver                    active
% 2.60/1.00  --res_prop_simpl_new                    false
% 2.60/1.00  --res_prop_simpl_given                  true
% 2.60/1.00  --res_passive_queue_type                priority_queues
% 2.60/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.60/1.00  --res_passive_queues_freq               [15;5]
% 2.60/1.00  --res_forward_subs                      full
% 2.60/1.00  --res_backward_subs                     full
% 2.60/1.00  --res_forward_subs_resolution           true
% 2.60/1.00  --res_backward_subs_resolution          true
% 2.60/1.00  --res_orphan_elimination                true
% 2.60/1.00  --res_time_limit                        2.
% 2.60/1.00  --res_out_proof                         true
% 2.60/1.00  
% 2.60/1.00  ------ Superposition Options
% 2.60/1.00  
% 2.60/1.00  --superposition_flag                    true
% 2.60/1.00  --sup_passive_queue_type                priority_queues
% 2.60/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.60/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.60/1.00  --demod_completeness_check              fast
% 2.60/1.00  --demod_use_ground                      true
% 2.60/1.00  --sup_to_prop_solver                    passive
% 2.60/1.00  --sup_prop_simpl_new                    true
% 2.60/1.00  --sup_prop_simpl_given                  true
% 2.60/1.00  --sup_fun_splitting                     false
% 2.60/1.00  --sup_smt_interval                      50000
% 2.60/1.00  
% 2.60/1.00  ------ Superposition Simplification Setup
% 2.60/1.00  
% 2.60/1.00  --sup_indices_passive                   []
% 2.60/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.60/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.60/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.60/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.60/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.60/1.00  --sup_full_bw                           [BwDemod]
% 2.60/1.00  --sup_immed_triv                        [TrivRules]
% 2.60/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.60/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.60/1.00  --sup_immed_bw_main                     []
% 2.60/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.60/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.60/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.60/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.60/1.00  
% 2.60/1.00  ------ Combination Options
% 2.60/1.00  
% 2.60/1.00  --comb_res_mult                         3
% 2.60/1.00  --comb_sup_mult                         2
% 2.60/1.00  --comb_inst_mult                        10
% 2.60/1.00  
% 2.60/1.00  ------ Debug Options
% 2.60/1.00  
% 2.60/1.00  --dbg_backtrace                         false
% 2.60/1.00  --dbg_dump_prop_clauses                 false
% 2.60/1.00  --dbg_dump_prop_clauses_file            -
% 2.60/1.00  --dbg_out_stat                          false
% 2.60/1.00  ------ Parsing...
% 2.60/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.60/1.00  
% 2.60/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.60/1.00  
% 2.60/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.60/1.00  
% 2.60/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.60/1.00  ------ Proving...
% 2.60/1.00  ------ Problem Properties 
% 2.60/1.00  
% 2.60/1.00  
% 2.60/1.00  clauses                                 23
% 2.60/1.00  conjectures                             4
% 2.60/1.00  EPR                                     3
% 2.60/1.00  Horn                                    18
% 2.60/1.00  unary                                   8
% 2.60/1.00  binary                                  7
% 2.60/1.00  lits                                    47
% 2.60/1.00  lits eq                                 16
% 2.60/1.00  fd_pure                                 0
% 2.60/1.00  fd_pseudo                               0
% 2.60/1.00  fd_cond                                 1
% 2.60/1.00  fd_pseudo_cond                          6
% 2.60/1.00  AC symbols                              0
% 2.60/1.00  
% 2.60/1.00  ------ Schedule dynamic 5 is on 
% 2.60/1.00  
% 2.60/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.60/1.00  
% 2.60/1.00  
% 2.60/1.00  ------ 
% 2.60/1.00  Current options:
% 2.60/1.00  ------ 
% 2.60/1.00  
% 2.60/1.00  ------ Input Options
% 2.60/1.00  
% 2.60/1.00  --out_options                           all
% 2.60/1.00  --tptp_safe_out                         true
% 2.60/1.00  --problem_path                          ""
% 2.60/1.00  --include_path                          ""
% 2.60/1.00  --clausifier                            res/vclausify_rel
% 2.60/1.00  --clausifier_options                    --mode clausify
% 2.60/1.00  --stdin                                 false
% 2.60/1.00  --stats_out                             all
% 2.60/1.00  
% 2.60/1.00  ------ General Options
% 2.60/1.00  
% 2.60/1.00  --fof                                   false
% 2.60/1.00  --time_out_real                         305.
% 2.60/1.00  --time_out_virtual                      -1.
% 2.60/1.00  --symbol_type_check                     false
% 2.60/1.00  --clausify_out                          false
% 2.60/1.00  --sig_cnt_out                           false
% 2.60/1.00  --trig_cnt_out                          false
% 2.60/1.00  --trig_cnt_out_tolerance                1.
% 2.60/1.00  --trig_cnt_out_sk_spl                   false
% 2.60/1.00  --abstr_cl_out                          false
% 2.60/1.00  
% 2.60/1.00  ------ Global Options
% 2.60/1.00  
% 2.60/1.00  --schedule                              default
% 2.60/1.00  --add_important_lit                     false
% 2.60/1.00  --prop_solver_per_cl                    1000
% 2.60/1.00  --min_unsat_core                        false
% 2.60/1.00  --soft_assumptions                      false
% 2.60/1.00  --soft_lemma_size                       3
% 2.60/1.00  --prop_impl_unit_size                   0
% 2.60/1.00  --prop_impl_unit                        []
% 2.60/1.00  --share_sel_clauses                     true
% 2.60/1.00  --reset_solvers                         false
% 2.60/1.00  --bc_imp_inh                            [conj_cone]
% 2.60/1.00  --conj_cone_tolerance                   3.
% 2.60/1.00  --extra_neg_conj                        none
% 2.60/1.00  --large_theory_mode                     true
% 2.60/1.00  --prolific_symb_bound                   200
% 2.60/1.00  --lt_threshold                          2000
% 2.60/1.00  --clause_weak_htbl                      true
% 2.60/1.00  --gc_record_bc_elim                     false
% 2.60/1.00  
% 2.60/1.00  ------ Preprocessing Options
% 2.60/1.00  
% 2.60/1.00  --preprocessing_flag                    true
% 2.60/1.00  --time_out_prep_mult                    0.1
% 2.60/1.00  --splitting_mode                        input
% 2.60/1.00  --splitting_grd                         true
% 2.60/1.00  --splitting_cvd                         false
% 2.60/1.00  --splitting_cvd_svl                     false
% 2.60/1.00  --splitting_nvd                         32
% 2.60/1.00  --sub_typing                            true
% 2.60/1.00  --prep_gs_sim                           true
% 2.60/1.00  --prep_unflatten                        true
% 2.60/1.00  --prep_res_sim                          true
% 2.60/1.00  --prep_upred                            true
% 2.60/1.00  --prep_sem_filter                       exhaustive
% 2.60/1.00  --prep_sem_filter_out                   false
% 2.60/1.00  --pred_elim                             true
% 2.60/1.00  --res_sim_input                         true
% 2.60/1.00  --eq_ax_congr_red                       true
% 2.60/1.00  --pure_diseq_elim                       true
% 2.60/1.00  --brand_transform                       false
% 2.60/1.00  --non_eq_to_eq                          false
% 2.60/1.00  --prep_def_merge                        true
% 2.60/1.00  --prep_def_merge_prop_impl              false
% 2.60/1.00  --prep_def_merge_mbd                    true
% 2.60/1.00  --prep_def_merge_tr_red                 false
% 2.60/1.00  --prep_def_merge_tr_cl                  false
% 2.60/1.00  --smt_preprocessing                     true
% 2.60/1.00  --smt_ac_axioms                         fast
% 2.60/1.00  --preprocessed_out                      false
% 2.60/1.00  --preprocessed_stats                    false
% 2.60/1.00  
% 2.60/1.00  ------ Abstraction refinement Options
% 2.60/1.00  
% 2.60/1.00  --abstr_ref                             []
% 2.60/1.00  --abstr_ref_prep                        false
% 2.60/1.00  --abstr_ref_until_sat                   false
% 2.60/1.00  --abstr_ref_sig_restrict                funpre
% 2.60/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.60/1.00  --abstr_ref_under                       []
% 2.60/1.00  
% 2.60/1.00  ------ SAT Options
% 2.60/1.00  
% 2.60/1.00  --sat_mode                              false
% 2.60/1.00  --sat_fm_restart_options                ""
% 2.60/1.00  --sat_gr_def                            false
% 2.60/1.00  --sat_epr_types                         true
% 2.60/1.00  --sat_non_cyclic_types                  false
% 2.60/1.00  --sat_finite_models                     false
% 2.60/1.00  --sat_fm_lemmas                         false
% 2.60/1.00  --sat_fm_prep                           false
% 2.60/1.00  --sat_fm_uc_incr                        true
% 2.60/1.00  --sat_out_model                         small
% 2.60/1.00  --sat_out_clauses                       false
% 2.60/1.00  
% 2.60/1.00  ------ QBF Options
% 2.60/1.00  
% 2.60/1.00  --qbf_mode                              false
% 2.60/1.00  --qbf_elim_univ                         false
% 2.60/1.00  --qbf_dom_inst                          none
% 2.60/1.00  --qbf_dom_pre_inst                      false
% 2.60/1.00  --qbf_sk_in                             false
% 2.60/1.00  --qbf_pred_elim                         true
% 2.60/1.00  --qbf_split                             512
% 2.60/1.00  
% 2.60/1.00  ------ BMC1 Options
% 2.60/1.00  
% 2.60/1.00  --bmc1_incremental                      false
% 2.60/1.00  --bmc1_axioms                           reachable_all
% 2.60/1.00  --bmc1_min_bound                        0
% 2.60/1.00  --bmc1_max_bound                        -1
% 2.60/1.00  --bmc1_max_bound_default                -1
% 2.60/1.00  --bmc1_symbol_reachability              true
% 2.60/1.00  --bmc1_property_lemmas                  false
% 2.60/1.00  --bmc1_k_induction                      false
% 2.60/1.00  --bmc1_non_equiv_states                 false
% 2.60/1.00  --bmc1_deadlock                         false
% 2.60/1.00  --bmc1_ucm                              false
% 2.60/1.00  --bmc1_add_unsat_core                   none
% 2.60/1.00  --bmc1_unsat_core_children              false
% 2.60/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.60/1.00  --bmc1_out_stat                         full
% 2.60/1.00  --bmc1_ground_init                      false
% 2.60/1.00  --bmc1_pre_inst_next_state              false
% 2.60/1.00  --bmc1_pre_inst_state                   false
% 2.60/1.00  --bmc1_pre_inst_reach_state             false
% 2.60/1.00  --bmc1_out_unsat_core                   false
% 2.60/1.00  --bmc1_aig_witness_out                  false
% 2.60/1.00  --bmc1_verbose                          false
% 2.60/1.00  --bmc1_dump_clauses_tptp                false
% 2.60/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.60/1.00  --bmc1_dump_file                        -
% 2.60/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.60/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.60/1.00  --bmc1_ucm_extend_mode                  1
% 2.60/1.00  --bmc1_ucm_init_mode                    2
% 2.60/1.00  --bmc1_ucm_cone_mode                    none
% 2.60/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.60/1.00  --bmc1_ucm_relax_model                  4
% 2.60/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.60/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.60/1.00  --bmc1_ucm_layered_model                none
% 2.60/1.00  --bmc1_ucm_max_lemma_size               10
% 2.60/1.00  
% 2.60/1.00  ------ AIG Options
% 2.60/1.00  
% 2.60/1.00  --aig_mode                              false
% 2.60/1.00  
% 2.60/1.00  ------ Instantiation Options
% 2.60/1.00  
% 2.60/1.00  --instantiation_flag                    true
% 2.60/1.00  --inst_sos_flag                         false
% 2.60/1.00  --inst_sos_phase                        true
% 2.60/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.60/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.60/1.00  --inst_lit_sel_side                     none
% 2.60/1.00  --inst_solver_per_active                1400
% 2.60/1.00  --inst_solver_calls_frac                1.
% 2.60/1.00  --inst_passive_queue_type               priority_queues
% 2.60/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.60/1.00  --inst_passive_queues_freq              [25;2]
% 2.60/1.00  --inst_dismatching                      true
% 2.60/1.00  --inst_eager_unprocessed_to_passive     true
% 2.60/1.00  --inst_prop_sim_given                   true
% 2.60/1.00  --inst_prop_sim_new                     false
% 2.60/1.00  --inst_subs_new                         false
% 2.60/1.00  --inst_eq_res_simp                      false
% 2.60/1.00  --inst_subs_given                       false
% 2.60/1.00  --inst_orphan_elimination               true
% 2.60/1.00  --inst_learning_loop_flag               true
% 2.60/1.00  --inst_learning_start                   3000
% 2.60/1.00  --inst_learning_factor                  2
% 2.60/1.00  --inst_start_prop_sim_after_learn       3
% 2.60/1.00  --inst_sel_renew                        solver
% 2.60/1.00  --inst_lit_activity_flag                true
% 2.60/1.00  --inst_restr_to_given                   false
% 2.60/1.00  --inst_activity_threshold               500
% 2.60/1.00  --inst_out_proof                        true
% 2.60/1.00  
% 2.60/1.00  ------ Resolution Options
% 2.60/1.00  
% 2.60/1.00  --resolution_flag                       false
% 2.60/1.00  --res_lit_sel                           adaptive
% 2.60/1.00  --res_lit_sel_side                      none
% 2.60/1.00  --res_ordering                          kbo
% 2.60/1.00  --res_to_prop_solver                    active
% 2.60/1.00  --res_prop_simpl_new                    false
% 2.60/1.00  --res_prop_simpl_given                  true
% 2.60/1.00  --res_passive_queue_type                priority_queues
% 2.60/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.60/1.00  --res_passive_queues_freq               [15;5]
% 2.60/1.00  --res_forward_subs                      full
% 2.60/1.00  --res_backward_subs                     full
% 2.60/1.00  --res_forward_subs_resolution           true
% 2.60/1.00  --res_backward_subs_resolution          true
% 2.60/1.00  --res_orphan_elimination                true
% 2.60/1.00  --res_time_limit                        2.
% 2.60/1.00  --res_out_proof                         true
% 2.60/1.00  
% 2.60/1.00  ------ Superposition Options
% 2.60/1.00  
% 2.60/1.00  --superposition_flag                    true
% 2.60/1.00  --sup_passive_queue_type                priority_queues
% 2.60/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.60/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.60/1.00  --demod_completeness_check              fast
% 2.60/1.00  --demod_use_ground                      true
% 2.60/1.00  --sup_to_prop_solver                    passive
% 2.60/1.00  --sup_prop_simpl_new                    true
% 2.60/1.00  --sup_prop_simpl_given                  true
% 2.60/1.00  --sup_fun_splitting                     false
% 2.60/1.00  --sup_smt_interval                      50000
% 2.60/1.00  
% 2.60/1.00  ------ Superposition Simplification Setup
% 2.60/1.00  
% 2.60/1.00  --sup_indices_passive                   []
% 2.60/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.60/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.60/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.60/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.60/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.60/1.00  --sup_full_bw                           [BwDemod]
% 2.60/1.00  --sup_immed_triv                        [TrivRules]
% 2.60/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.60/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.60/1.00  --sup_immed_bw_main                     []
% 2.60/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.60/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.60/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.60/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.60/1.00  
% 2.60/1.00  ------ Combination Options
% 2.60/1.00  
% 2.60/1.00  --comb_res_mult                         3
% 2.60/1.00  --comb_sup_mult                         2
% 2.60/1.00  --comb_inst_mult                        10
% 2.60/1.00  
% 2.60/1.00  ------ Debug Options
% 2.60/1.00  
% 2.60/1.00  --dbg_backtrace                         false
% 2.60/1.00  --dbg_dump_prop_clauses                 false
% 2.60/1.00  --dbg_dump_prop_clauses_file            -
% 2.60/1.00  --dbg_out_stat                          false
% 2.60/1.00  
% 2.60/1.00  
% 2.60/1.00  
% 2.60/1.00  
% 2.60/1.00  ------ Proving...
% 2.60/1.00  
% 2.60/1.00  
% 2.60/1.00  % SZS status Theorem for theBenchmark.p
% 2.60/1.00  
% 2.60/1.00   Resolution empty clause
% 2.60/1.00  
% 2.60/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.60/1.00  
% 2.60/1.00  fof(f2,axiom,(
% 2.60/1.00    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f18,plain,(
% 2.60/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 2.60/1.00    inference(ennf_transformation,[],[f2])).
% 2.60/1.00  
% 2.60/1.00  fof(f26,plain,(
% 2.60/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK1(X0),X0))),
% 2.60/1.00    introduced(choice_axiom,[])).
% 2.60/1.00  
% 2.60/1.00  fof(f27,plain,(
% 2.60/1.00    ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0)),
% 2.60/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f18,f26])).
% 2.60/1.00  
% 2.60/1.00  fof(f44,plain,(
% 2.60/1.00    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 2.60/1.00    inference(cnf_transformation,[],[f27])).
% 2.60/1.00  
% 2.60/1.00  fof(f16,conjecture,(
% 2.60/1.00    ! [X0,X1,X2] : ~(k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f17,negated_conjecture,(
% 2.60/1.00    ~! [X0,X1,X2] : ~(k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 2.60/1.00    inference(negated_conjecture,[],[f16])).
% 2.60/1.00  
% 2.60/1.00  fof(f20,plain,(
% 2.60/1.00    ? [X0,X1,X2] : (k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 2.60/1.00    inference(ennf_transformation,[],[f17])).
% 2.60/1.00  
% 2.60/1.00  fof(f36,plain,(
% 2.60/1.00    ? [X0,X1,X2] : (k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k2_xboole_0(X1,X2) = k1_tarski(X0)) => (k1_xboole_0 != sK5 & k1_xboole_0 != sK4 & sK4 != sK5 & k2_xboole_0(sK4,sK5) = k1_tarski(sK3))),
% 2.60/1.00    introduced(choice_axiom,[])).
% 2.60/1.00  
% 2.60/1.00  fof(f37,plain,(
% 2.60/1.00    k1_xboole_0 != sK5 & k1_xboole_0 != sK4 & sK4 != sK5 & k2_xboole_0(sK4,sK5) = k1_tarski(sK3)),
% 2.60/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f20,f36])).
% 2.60/1.00  
% 2.60/1.00  fof(f65,plain,(
% 2.60/1.00    k2_xboole_0(sK4,sK5) = k1_tarski(sK3)),
% 2.60/1.00    inference(cnf_transformation,[],[f37])).
% 2.60/1.00  
% 2.60/1.00  fof(f14,axiom,(
% 2.60/1.00    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f61,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 2.60/1.00    inference(cnf_transformation,[],[f14])).
% 2.60/1.00  
% 2.60/1.00  fof(f74,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) )),
% 2.60/1.00    inference(definition_unfolding,[],[f61,f73])).
% 2.60/1.00  
% 2.60/1.00  fof(f6,axiom,(
% 2.60/1.00    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f51,plain,(
% 2.60/1.00    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f6])).
% 2.60/1.00  
% 2.60/1.00  fof(f7,axiom,(
% 2.60/1.00    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f52,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f7])).
% 2.60/1.00  
% 2.60/1.00  fof(f8,axiom,(
% 2.60/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f53,plain,(
% 2.60/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f8])).
% 2.60/1.00  
% 2.60/1.00  fof(f9,axiom,(
% 2.60/1.00    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f54,plain,(
% 2.60/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f9])).
% 2.60/1.00  
% 2.60/1.00  fof(f10,axiom,(
% 2.60/1.00    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f55,plain,(
% 2.60/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f10])).
% 2.60/1.00  
% 2.60/1.00  fof(f11,axiom,(
% 2.60/1.00    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f56,plain,(
% 2.60/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f11])).
% 2.60/1.00  
% 2.60/1.00  fof(f12,axiom,(
% 2.60/1.00    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f57,plain,(
% 2.60/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f12])).
% 2.60/1.00  
% 2.60/1.00  fof(f69,plain,(
% 2.60/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 2.60/1.00    inference(definition_unfolding,[],[f56,f57])).
% 2.60/1.00  
% 2.60/1.00  fof(f70,plain,(
% 2.60/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 2.60/1.00    inference(definition_unfolding,[],[f55,f69])).
% 2.60/1.00  
% 2.60/1.00  fof(f71,plain,(
% 2.60/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 2.60/1.00    inference(definition_unfolding,[],[f54,f70])).
% 2.60/1.00  
% 2.60/1.00  fof(f72,plain,(
% 2.60/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 2.60/1.00    inference(definition_unfolding,[],[f53,f71])).
% 2.60/1.00  
% 2.60/1.00  fof(f73,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 2.60/1.00    inference(definition_unfolding,[],[f52,f72])).
% 2.60/1.00  
% 2.60/1.00  fof(f75,plain,(
% 2.60/1.00    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 2.60/1.00    inference(definition_unfolding,[],[f51,f73])).
% 2.60/1.00  
% 2.60/1.00  fof(f94,plain,(
% 2.60/1.00    k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK5))),
% 2.60/1.00    inference(definition_unfolding,[],[f65,f74,f75])).
% 2.60/1.00  
% 2.60/1.00  fof(f4,axiom,(
% 2.60/1.00    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f46,plain,(
% 2.60/1.00    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 2.60/1.00    inference(cnf_transformation,[],[f4])).
% 2.60/1.00  
% 2.60/1.00  fof(f83,plain,(
% 2.60/1.00    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) )),
% 2.60/1.00    inference(definition_unfolding,[],[f46,f74])).
% 2.60/1.00  
% 2.60/1.00  fof(f13,axiom,(
% 2.60/1.00    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f32,plain,(
% 2.60/1.00    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k1_tarski(X1))))),
% 2.60/1.00    inference(nnf_transformation,[],[f13])).
% 2.60/1.00  
% 2.60/1.00  fof(f33,plain,(
% 2.60/1.00    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))))),
% 2.60/1.00    inference(flattening,[],[f32])).
% 2.60/1.00  
% 2.60/1.00  fof(f58,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))) )),
% 2.60/1.00    inference(cnf_transformation,[],[f33])).
% 2.60/1.00  
% 2.60/1.00  fof(f90,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) )),
% 2.60/1.00    inference(definition_unfolding,[],[f58,f75,f75])).
% 2.60/1.00  
% 2.60/1.00  fof(f67,plain,(
% 2.60/1.00    k1_xboole_0 != sK4),
% 2.60/1.00    inference(cnf_transformation,[],[f37])).
% 2.60/1.00  
% 2.60/1.00  fof(f1,axiom,(
% 2.60/1.00    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f21,plain,(
% 2.60/1.00    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 2.60/1.00    inference(nnf_transformation,[],[f1])).
% 2.60/1.00  
% 2.60/1.00  fof(f22,plain,(
% 2.60/1.00    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 2.60/1.00    inference(flattening,[],[f21])).
% 2.60/1.00  
% 2.60/1.00  fof(f23,plain,(
% 2.60/1.00    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 2.60/1.00    inference(rectify,[],[f22])).
% 2.60/1.00  
% 2.60/1.00  fof(f24,plain,(
% 2.60/1.00    ! [X2,X1,X0] : (? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2))) => (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 2.60/1.00    introduced(choice_axiom,[])).
% 2.60/1.00  
% 2.60/1.00  fof(f25,plain,(
% 2.60/1.00    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 2.60/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f23,f24])).
% 2.60/1.00  
% 2.60/1.00  fof(f40,plain,(
% 2.60/1.00    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k2_xboole_0(X0,X1) != X2) )),
% 2.60/1.00    inference(cnf_transformation,[],[f25])).
% 2.60/1.00  
% 2.60/1.00  fof(f79,plain,(
% 2.60/1.00    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) != X2) )),
% 2.60/1.00    inference(definition_unfolding,[],[f40,f74])).
% 2.60/1.00  
% 2.60/1.00  fof(f95,plain,(
% 2.60/1.00    ( ! [X4,X0,X1] : (r2_hidden(X4,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) | ~r2_hidden(X4,X1)) )),
% 2.60/1.00    inference(equality_resolution,[],[f79])).
% 2.60/1.00  
% 2.60/1.00  fof(f66,plain,(
% 2.60/1.00    sK4 != sK5),
% 2.60/1.00    inference(cnf_transformation,[],[f37])).
% 2.60/1.00  
% 2.60/1.00  fof(f5,axiom,(
% 2.60/1.00    ! [X0,X1] : (k1_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> X0 = X2))),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f28,plain,(
% 2.60/1.00    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | X0 != X2) & (X0 = X2 | ~r2_hidden(X2,X1))) | k1_tarski(X0) != X1))),
% 2.60/1.00    inference(nnf_transformation,[],[f5])).
% 2.60/1.00  
% 2.60/1.00  fof(f29,plain,(
% 2.60/1.00    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.60/1.00    inference(rectify,[],[f28])).
% 2.60/1.00  
% 2.60/1.00  fof(f30,plain,(
% 2.60/1.00    ! [X1,X0] : (? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1))) => ((sK2(X0,X1) != X0 | ~r2_hidden(sK2(X0,X1),X1)) & (sK2(X0,X1) = X0 | r2_hidden(sK2(X0,X1),X1))))),
% 2.60/1.00    introduced(choice_axiom,[])).
% 2.60/1.00  
% 2.60/1.00  fof(f31,plain,(
% 2.60/1.00    ! [X0,X1] : ((k1_tarski(X0) = X1 | ((sK2(X0,X1) != X0 | ~r2_hidden(sK2(X0,X1),X1)) & (sK2(X0,X1) = X0 | r2_hidden(sK2(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.60/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f29,f30])).
% 2.60/1.00  
% 2.60/1.00  fof(f47,plain,(
% 2.60/1.00    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k1_tarski(X0) != X1) )),
% 2.60/1.00    inference(cnf_transformation,[],[f31])).
% 2.60/1.00  
% 2.60/1.00  fof(f87,plain,(
% 2.60/1.00    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1) )),
% 2.60/1.00    inference(definition_unfolding,[],[f47,f75])).
% 2.60/1.00  
% 2.60/1.00  fof(f100,plain,(
% 2.60/1.00    ( ! [X0,X3] : (X0 = X3 | ~r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))) )),
% 2.60/1.00    inference(equality_resolution,[],[f87])).
% 2.60/1.00  
% 2.60/1.00  fof(f49,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k1_tarski(X0) = X1 | sK2(X0,X1) = X0 | r2_hidden(sK2(X0,X1),X1)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f31])).
% 2.60/1.00  
% 2.60/1.00  fof(f85,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1 | sK2(X0,X1) = X0 | r2_hidden(sK2(X0,X1),X1)) )),
% 2.60/1.00    inference(definition_unfolding,[],[f49,f75])).
% 2.60/1.00  
% 2.60/1.00  fof(f3,axiom,(
% 2.60/1.00    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 2.60/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.60/1.00  
% 2.60/1.00  fof(f19,plain,(
% 2.60/1.00    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 2.60/1.00    inference(ennf_transformation,[],[f3])).
% 2.60/1.00  
% 2.60/1.00  fof(f45,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f19])).
% 2.60/1.00  
% 2.60/1.00  fof(f82,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = X1 | ~r1_tarski(X0,X1)) )),
% 2.60/1.00    inference(definition_unfolding,[],[f45,f74])).
% 2.60/1.00  
% 2.60/1.00  fof(f50,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k1_tarski(X0) = X1 | sK2(X0,X1) != X0 | ~r2_hidden(sK2(X0,X1),X1)) )),
% 2.60/1.00    inference(cnf_transformation,[],[f31])).
% 2.60/1.00  
% 2.60/1.00  fof(f84,plain,(
% 2.60/1.00    ( ! [X0,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1 | sK2(X0,X1) != X0 | ~r2_hidden(sK2(X0,X1),X1)) )),
% 2.60/1.00    inference(definition_unfolding,[],[f50,f75])).
% 2.60/1.00  
% 2.60/1.00  fof(f68,plain,(
% 2.60/1.00    k1_xboole_0 != sK5),
% 2.60/1.00    inference(cnf_transformation,[],[f37])).
% 2.60/1.00  
% 2.60/1.00  cnf(c_6,plain,
% 2.60/1.00      ( r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 2.60/1.00      inference(cnf_transformation,[],[f44]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_700,plain,
% 2.60/1.00      ( k1_xboole_0 = X0 | r2_hidden(sK1(X0),X0) = iProver_top ),
% 2.60/1.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_22,negated_conjecture,
% 2.60/1.00      ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK5)) ),
% 2.60/1.00      inference(cnf_transformation,[],[f94]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_8,plain,
% 2.60/1.00      ( r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
% 2.60/1.00      inference(cnf_transformation,[],[f83]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_698,plain,
% 2.60/1.00      ( r1_tarski(X0,k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = iProver_top ),
% 2.60/1.00      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_1018,plain,
% 2.60/1.00      ( r1_tarski(sK4,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)) = iProver_top ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_22,c_698]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_15,plain,
% 2.60/1.00      ( ~ r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
% 2.60/1.00      | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0
% 2.60/1.00      | k1_xboole_0 = X0 ),
% 2.60/1.00      inference(cnf_transformation,[],[f90]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_691,plain,
% 2.60/1.00      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
% 2.60/1.00      | k1_xboole_0 = X1
% 2.60/1.00      | r1_tarski(X1,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
% 2.60/1.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_3251,plain,
% 2.60/1.00      ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK4
% 2.60/1.00      | sK4 = k1_xboole_0 ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_1018,c_691]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_20,negated_conjecture,
% 2.60/1.00      ( k1_xboole_0 != sK4 ),
% 2.60/1.00      inference(cnf_transformation,[],[f67]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_371,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_842,plain,
% 2.60/1.00      ( sK4 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK4 ),
% 2.60/1.00      inference(instantiation,[status(thm)],[c_371]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_943,plain,
% 2.60/1.00      ( sK4 != k1_xboole_0 | k1_xboole_0 = sK4 | k1_xboole_0 != k1_xboole_0 ),
% 2.60/1.00      inference(instantiation,[status(thm)],[c_842]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_370,plain,( X0 = X0 ),theory(equality) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_944,plain,
% 2.60/1.00      ( k1_xboole_0 = k1_xboole_0 ),
% 2.60/1.00      inference(instantiation,[status(thm)],[c_370]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_5613,plain,
% 2.60/1.00      ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK4 ),
% 2.60/1.00      inference(global_propositional_subsumption,
% 2.60/1.00                [status(thm)],
% 2.60/1.00                [c_3251,c_20,c_943,c_944]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_3,plain,
% 2.60/1.00      ( ~ r2_hidden(X0,X1)
% 2.60/1.00      | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) ),
% 2.60/1.00      inference(cnf_transformation,[],[f95]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_703,plain,
% 2.60/1.00      ( r2_hidden(X0,X1) != iProver_top
% 2.60/1.00      | r2_hidden(X0,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))) = iProver_top ),
% 2.60/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_2099,plain,
% 2.60/1.00      ( r2_hidden(X0,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)) = iProver_top
% 2.60/1.00      | r2_hidden(X0,sK5) != iProver_top ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_22,c_703]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_5623,plain,
% 2.60/1.00      ( r2_hidden(X0,sK4) = iProver_top | r2_hidden(X0,sK5) != iProver_top ),
% 2.60/1.00      inference(demodulation,[status(thm)],[c_5613,c_2099]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_5814,plain,
% 2.60/1.00      ( sK5 = k1_xboole_0 | r2_hidden(sK1(sK5),sK4) = iProver_top ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_700,c_5623]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_21,negated_conjecture,
% 2.60/1.00      ( sK4 != sK5 ),
% 2.60/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_12,plain,
% 2.60/1.00      ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) | X0 = X1 ),
% 2.60/1.00      inference(cnf_transformation,[],[f100]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_694,plain,
% 2.60/1.00      ( X0 = X1
% 2.60/1.00      | r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top ),
% 2.60/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_2441,plain,
% 2.60/1.00      ( sK3 = X0 | r2_hidden(X0,sK5) != iProver_top ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_2099,c_694]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_2521,plain,
% 2.60/1.00      ( sK1(sK5) = sK3 | sK5 = k1_xboole_0 ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_700,c_2441]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_2629,plain,
% 2.60/1.00      ( sK5 = k1_xboole_0 | r2_hidden(sK3,sK5) = iProver_top ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_2521,c_700]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_10,plain,
% 2.60/1.00      ( r2_hidden(sK2(X0,X1),X1)
% 2.60/1.00      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
% 2.60/1.00      | sK2(X0,X1) = X0 ),
% 2.60/1.00      inference(cnf_transformation,[],[f85]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_696,plain,
% 2.60/1.00      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
% 2.60/1.00      | sK2(X0,X1) = X0
% 2.60/1.00      | r2_hidden(sK2(X0,X1),X1) = iProver_top ),
% 2.60/1.00      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_2522,plain,
% 2.60/1.00      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = sK5
% 2.60/1.00      | sK2(X0,sK5) = X0
% 2.60/1.00      | sK2(X0,sK5) = sK3 ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_696,c_2441]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_3130,plain,
% 2.60/1.00      ( sK2(sK3,sK5) = sK3 | r1_tarski(sK4,sK5) = iProver_top ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_2522,c_1018]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_7,plain,
% 2.60/1.00      ( ~ r1_tarski(X0,X1)
% 2.60/1.00      | k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = X1 ),
% 2.60/1.00      inference(cnf_transformation,[],[f82]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_699,plain,
% 2.60/1.00      ( k3_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) = X1
% 2.60/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 2.60/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_4585,plain,
% 2.60/1.00      ( sK2(sK3,sK5) = sK3
% 2.60/1.00      | k3_tarski(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK5)) = sK5 ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_3130,c_699]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_4586,plain,
% 2.60/1.00      ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK5
% 2.60/1.00      | sK2(sK3,sK5) = sK3 ),
% 2.60/1.00      inference(demodulation,[status(thm)],[c_4585,c_22]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_5683,plain,
% 2.60/1.00      ( sK2(sK3,sK5) = sK3 | sK4 = sK5 ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_5613,c_4586]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_5863,plain,
% 2.60/1.00      ( sK2(sK3,sK5) = sK3 ),
% 2.60/1.00      inference(global_propositional_subsumption,[status(thm)],[c_5683,c_21]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_9,plain,
% 2.60/1.00      ( ~ r2_hidden(sK2(X0,X1),X1)
% 2.60/1.00      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
% 2.60/1.00      | sK2(X0,X1) != X0 ),
% 2.60/1.00      inference(cnf_transformation,[],[f84]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_697,plain,
% 2.60/1.00      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
% 2.60/1.00      | sK2(X0,X1) != X0
% 2.60/1.00      | r2_hidden(sK2(X0,X1),X1) != iProver_top ),
% 2.60/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_5866,plain,
% 2.60/1.00      ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK5
% 2.60/1.00      | r2_hidden(sK2(sK3,sK5),sK5) != iProver_top ),
% 2.60/1.00      inference(superposition,[status(thm)],[c_5863,c_697]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_5870,plain,
% 2.60/1.00      ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = sK5
% 2.60/1.00      | r2_hidden(sK3,sK5) != iProver_top ),
% 2.60/1.00      inference(light_normalisation,[status(thm)],[c_5866,c_5863]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_5871,plain,
% 2.60/1.00      ( sK4 = sK5 | r2_hidden(sK3,sK5) != iProver_top ),
% 2.60/1.00      inference(demodulation,[status(thm)],[c_5870,c_5613]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_6092,plain,
% 2.60/1.00      ( sK5 = k1_xboole_0 ),
% 2.60/1.00      inference(global_propositional_subsumption,
% 2.60/1.00                [status(thm)],
% 2.60/1.00                [c_5814,c_21,c_2629,c_5871]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_19,negated_conjecture,
% 2.60/1.00      ( k1_xboole_0 != sK5 ),
% 2.60/1.00      inference(cnf_transformation,[],[f68]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_6105,plain,
% 2.60/1.00      ( k1_xboole_0 != k1_xboole_0 ),
% 2.60/1.00      inference(demodulation,[status(thm)],[c_6092,c_19]) ).
% 2.60/1.00  
% 2.60/1.00  cnf(c_6106,plain,
% 2.60/1.00      ( $false ),
% 2.60/1.00      inference(equality_resolution_simp,[status(thm)],[c_6105]) ).
% 2.60/1.00  
% 2.60/1.00  
% 2.60/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.60/1.00  
% 2.60/1.00  ------                               Statistics
% 2.60/1.00  
% 2.60/1.00  ------ General
% 2.60/1.00  
% 2.60/1.00  abstr_ref_over_cycles:                  0
% 2.60/1.00  abstr_ref_under_cycles:                 0
% 2.60/1.00  gc_basic_clause_elim:                   0
% 2.60/1.00  forced_gc_time:                         0
% 2.60/1.00  parsing_time:                           0.008
% 2.60/1.00  unif_index_cands_time:                  0.
% 2.60/1.00  unif_index_add_time:                    0.
% 2.60/1.00  orderings_time:                         0.
% 2.60/1.00  out_proof_time:                         0.01
% 2.60/1.00  total_time:                             0.203
% 2.60/1.00  num_of_symbols:                         42
% 2.60/1.00  num_of_terms:                           6259
% 2.60/1.00  
% 2.60/1.00  ------ Preprocessing
% 2.60/1.00  
% 2.60/1.00  num_of_splits:                          0
% 2.60/1.00  num_of_split_atoms:                     0
% 2.60/1.00  num_of_reused_defs:                     0
% 2.60/1.00  num_eq_ax_congr_red:                    12
% 2.60/1.00  num_of_sem_filtered_clauses:            1
% 2.60/1.00  num_of_subtypes:                        0
% 2.60/1.00  monotx_restored_types:                  0
% 2.60/1.00  sat_num_of_epr_types:                   0
% 2.60/1.00  sat_num_of_non_cyclic_types:            0
% 2.60/1.00  sat_guarded_non_collapsed_types:        0
% 2.60/1.00  num_pure_diseq_elim:                    0
% 2.60/1.00  simp_replaced_by:                       0
% 2.60/1.00  res_preprocessed:                       82
% 2.60/1.00  prep_upred:                             0
% 2.60/1.00  prep_unflattend:                        21
% 2.60/1.00  smt_new_axioms:                         0
% 2.60/1.00  pred_elim_cands:                        2
% 2.60/1.00  pred_elim:                              0
% 2.60/1.00  pred_elim_cl:                           0
% 2.60/1.00  pred_elim_cycles:                       1
% 2.60/1.00  merged_defs:                            0
% 2.60/1.00  merged_defs_ncl:                        0
% 2.60/1.00  bin_hyper_res:                          0
% 2.60/1.00  prep_cycles:                            3
% 2.60/1.00  pred_elim_time:                         0.001
% 2.60/1.00  splitting_time:                         0.
% 2.60/1.00  sem_filter_time:                        0.
% 2.60/1.00  monotx_time:                            0.
% 2.60/1.00  subtype_inf_time:                       0.
% 2.60/1.00  
% 2.60/1.00  ------ Problem properties
% 2.60/1.00  
% 2.60/1.00  clauses:                                23
% 2.60/1.00  conjectures:                            4
% 2.60/1.00  epr:                                    3
% 2.60/1.00  horn:                                   18
% 2.60/1.00  ground:                                 4
% 2.60/1.00  unary:                                  8
% 2.60/1.00  binary:                                 7
% 2.60/1.00  lits:                                   47
% 2.60/1.00  lits_eq:                                16
% 2.60/1.00  fd_pure:                                0
% 2.60/1.00  fd_pseudo:                              0
% 2.60/1.00  fd_cond:                                1
% 2.60/1.00  fd_pseudo_cond:                         6
% 2.60/1.00  ac_symbols:                             0
% 2.60/1.00  
% 2.60/1.00  ------ Propositional Solver
% 2.60/1.00  
% 2.60/1.00  prop_solver_calls:                      23
% 2.60/1.00  prop_fast_solver_calls:                 532
% 2.60/1.00  smt_solver_calls:                       0
% 2.60/1.00  smt_fast_solver_calls:                  0
% 2.60/1.00  prop_num_of_clauses:                    2409
% 2.60/1.00  prop_preprocess_simplified:             6763
% 2.60/1.00  prop_fo_subsumed:                       8
% 2.60/1.00  prop_solver_time:                       0.
% 2.60/1.00  smt_solver_time:                        0.
% 2.60/1.00  smt_fast_solver_time:                   0.
% 2.60/1.00  prop_fast_solver_time:                  0.
% 2.60/1.00  prop_unsat_core_time:                   0.
% 2.60/1.00  
% 2.60/1.00  ------ QBF
% 2.60/1.00  
% 2.60/1.00  qbf_q_res:                              0
% 2.60/1.00  qbf_num_tautologies:                    0
% 2.60/1.00  qbf_prep_cycles:                        0
% 2.60/1.00  
% 2.60/1.00  ------ BMC1
% 2.60/1.00  
% 2.60/1.00  bmc1_current_bound:                     -1
% 2.60/1.00  bmc1_last_solved_bound:                 -1
% 2.60/1.00  bmc1_unsat_core_size:                   -1
% 2.60/1.00  bmc1_unsat_core_parents_size:           -1
% 2.60/1.00  bmc1_merge_next_fun:                    0
% 2.60/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.60/1.00  
% 2.60/1.00  ------ Instantiation
% 2.60/1.00  
% 2.60/1.00  inst_num_of_clauses:                    635
% 2.60/1.00  inst_num_in_passive:                    345
% 2.60/1.00  inst_num_in_active:                     247
% 2.60/1.00  inst_num_in_unprocessed:                43
% 2.60/1.00  inst_num_of_loops:                      300
% 2.60/1.00  inst_num_of_learning_restarts:          0
% 2.60/1.00  inst_num_moves_active_passive:          52
% 2.60/1.00  inst_lit_activity:                      0
% 2.60/1.00  inst_lit_activity_moves:                0
% 2.60/1.00  inst_num_tautologies:                   0
% 2.60/1.00  inst_num_prop_implied:                  0
% 2.60/1.00  inst_num_existing_simplified:           0
% 2.60/1.00  inst_num_eq_res_simplified:             0
% 2.60/1.00  inst_num_child_elim:                    0
% 2.60/1.00  inst_num_of_dismatching_blockings:      212
% 2.60/1.00  inst_num_of_non_proper_insts:           572
% 2.60/1.00  inst_num_of_duplicates:                 0
% 2.60/1.00  inst_inst_num_from_inst_to_res:         0
% 2.60/1.00  inst_dismatching_checking_time:         0.
% 2.60/1.00  
% 2.60/1.00  ------ Resolution
% 2.60/1.00  
% 2.60/1.00  res_num_of_clauses:                     0
% 2.60/1.00  res_num_in_passive:                     0
% 2.60/1.00  res_num_in_active:                      0
% 2.60/1.00  res_num_of_loops:                       85
% 2.60/1.00  res_forward_subset_subsumed:            31
% 2.60/1.00  res_backward_subset_subsumed:           0
% 2.60/1.00  res_forward_subsumed:                   0
% 2.60/1.00  res_backward_subsumed:                  0
% 2.60/1.00  res_forward_subsumption_resolution:     0
% 2.60/1.00  res_backward_subsumption_resolution:    0
% 2.60/1.00  res_clause_to_clause_subsumption:       694
% 2.60/1.00  res_orphan_elimination:                 0
% 2.60/1.00  res_tautology_del:                      17
% 2.60/1.00  res_num_eq_res_simplified:              0
% 2.60/1.00  res_num_sel_changes:                    0
% 2.60/1.00  res_moves_from_active_to_pass:          0
% 2.60/1.00  
% 2.60/1.00  ------ Superposition
% 2.60/1.00  
% 2.60/1.00  sup_time_total:                         0.
% 2.60/1.00  sup_time_generating:                    0.
% 2.60/1.00  sup_time_sim_full:                      0.
% 2.60/1.00  sup_time_sim_immed:                     0.
% 2.60/1.00  
% 2.60/1.00  sup_num_of_clauses:                     130
% 2.60/1.00  sup_num_in_active:                      30
% 2.60/1.00  sup_num_in_passive:                     100
% 2.60/1.00  sup_num_of_loops:                       59
% 2.60/1.00  sup_fw_superposition:                   114
% 2.60/1.00  sup_bw_superposition:                   146
% 2.60/1.00  sup_immediate_simplified:               26
% 2.60/1.00  sup_given_eliminated:                   0
% 2.60/1.00  comparisons_done:                       0
% 2.60/1.00  comparisons_avoided:                    23
% 2.60/1.00  
% 2.60/1.00  ------ Simplifications
% 2.60/1.00  
% 2.60/1.00  
% 2.60/1.00  sim_fw_subset_subsumed:                 15
% 2.60/1.00  sim_bw_subset_subsumed:                 20
% 2.60/1.00  sim_fw_subsumed:                        8
% 2.60/1.00  sim_bw_subsumed:                        0
% 2.60/1.00  sim_fw_subsumption_res:                 2
% 2.60/1.00  sim_bw_subsumption_res:                 0
% 2.60/1.00  sim_tautology_del:                      27
% 2.60/1.00  sim_eq_tautology_del:                   7
% 2.60/1.00  sim_eq_res_simp:                        6
% 2.60/1.00  sim_fw_demodulated:                     4
% 2.60/1.00  sim_bw_demodulated:                     23
% 2.60/1.00  sim_light_normalised:                   1
% 2.60/1.00  sim_joinable_taut:                      0
% 2.60/1.00  sim_joinable_simp:                      0
% 2.60/1.00  sim_ac_normalised:                      0
% 2.60/1.00  sim_smt_subsumption:                    0
% 2.60/1.00  
%------------------------------------------------------------------------------
