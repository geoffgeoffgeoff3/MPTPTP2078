%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:36:02 EST 2020

% Result     : Theorem 3.67s
% Output     : CNFRefutation 3.67s
% Verified   : 
% Statistics : Number of formulae       :  121 (5538 expanded)
%              Number of clauses        :   59 (1326 expanded)
%              Number of leaves         :   16 (1525 expanded)
%              Depth                    :   26
%              Number of atoms          :  295 (16599 expanded)
%              Number of equality atoms :  141 (6028 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
    <=> ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,k1_tarski(X1)) = X0
        | r2_hidden(X1,X0) )
      & ( ~ r2_hidden(X1,X0)
        | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f50,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
      | r2_hidden(X1,X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f8,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f11])).

fof(f53,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f47,f48])).

fof(f54,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f46,f53])).

fof(f55,plain,(
    ! [X0] : k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f45,f54])).

fof(f64,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1)) = X0
      | r2_hidden(X1,X0) ) ),
    inference(definition_unfolding,[],[f50,f55])).

fof(f13,conjecture,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
    <=> ~ r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
      <=> ~ r2_hidden(X0,X1) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f17,plain,(
    ? [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
    <~> ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f27,plain,(
    ? [X0,X1] :
      ( ( r2_hidden(X0,X1)
        | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0) )
      & ( ~ r2_hidden(X0,X1)
        | k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) ) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f28,plain,
    ( ? [X0,X1] :
        ( ( r2_hidden(X0,X1)
          | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0) )
        & ( ~ r2_hidden(X0,X1)
          | k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) ) )
   => ( ( r2_hidden(sK2,sK3)
        | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) )
      & ( ~ r2_hidden(sK2,sK3)
        | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,
    ( ( r2_hidden(sK2,sK3)
      | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) )
    & ( ~ r2_hidden(sK2,sK3)
      | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f27,f28])).

fof(f51,plain,
    ( ~ r2_hidden(sK2,sK3)
    | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ),
    inference(cnf_transformation,[],[f29])).

fof(f67,plain,
    ( ~ r2_hidden(sK2,sK3)
    | k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
    inference(definition_unfolding,[],[f51,f55,f55])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f7,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f57,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f30,f44,f44])).

fof(f5,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f56,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f42,f44])).

fof(f4,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f4])).

fof(f24,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK1(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f16,f24])).

fof(f41,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f18])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f19])).

fof(f21,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
          | ~ r2_hidden(sK0(X0,X1,X2),X0)
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( ( r2_hidden(sK0(X0,X1,X2),X1)
            & r2_hidden(sK0(X0,X1,X2),X0) )
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
            | ~ r2_hidden(sK0(X0,X1,X2),X0)
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( ( r2_hidden(sK0(X0,X1,X2),X1)
              & r2_hidden(sK0(X0,X1,X2),X0) )
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f20,f21])).

fof(f31,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f63,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,k4_xboole_0(X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f31,f44])).

fof(f70,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ) ),
    inference(equality_resolution,[],[f63])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k5_xboole_0(X1,X2))
    <=> ~ ( r2_hidden(X0,X1)
        <=> r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k5_xboole_0(X1,X2))
    <=> ( r2_hidden(X0,X1)
      <~> r2_hidden(X0,X2) ) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X0,k5_xboole_0(X1,X2))
        | ( ( r2_hidden(X0,X1)
            | ~ r2_hidden(X0,X2) )
          & ( r2_hidden(X0,X2)
            | ~ r2_hidden(X0,X1) ) ) )
      & ( ( ( ~ r2_hidden(X0,X2)
            | ~ r2_hidden(X0,X1) )
          & ( r2_hidden(X0,X2)
            | r2_hidden(X0,X1) ) )
        | ~ r2_hidden(X0,k5_xboole_0(X1,X2)) ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,X2)
      | ~ r2_hidden(X0,X1)
      | ~ r2_hidden(X0,k5_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f32,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f62,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,k4_xboole_0(X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f32,f44])).

fof(f69,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ) ),
    inference(equality_resolution,[],[f62])).

fof(f33,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X0)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f61,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X0)
      | k4_xboole_0(X0,k4_xboole_0(X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f33,f44])).

fof(f68,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k4_xboole_0(X0,k4_xboole_0(X0,X1)))
      | ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X0) ) ),
    inference(equality_resolution,[],[f61])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X0,X2)
      | r2_hidden(X0,X1)
      | ~ r2_hidden(X0,k5_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f6,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f49,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ),
    inference(cnf_transformation,[],[f26])).

fof(f65,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | k4_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1)) != X0 ) ),
    inference(definition_unfolding,[],[f49,f55])).

fof(f52,plain,
    ( r2_hidden(sK2,sK3)
    | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) ),
    inference(cnf_transformation,[],[f29])).

fof(f66,plain,
    ( r2_hidden(sK2,sK3)
    | k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) != k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
    inference(definition_unfolding,[],[f52,f55,f55])).

cnf(c_14,plain,
    ( r2_hidden(X0,X1)
    | k4_xboole_0(X1,k3_enumset1(X0,X0,X0,X0,X0)) = X1 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_561,plain,
    ( k4_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1)) = X0
    | r2_hidden(X1,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_17,negated_conjecture,
    ( ~ r2_hidden(sK2,sK3)
    | k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_558,plain,
    ( k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2)
    | r2_hidden(sK2,sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1620,plain,
    ( k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2)
    | k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = sK3 ),
    inference(superposition,[status(thm)],[c_561,c_558])).

cnf(c_1,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1032,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(superposition,[status(thm)],[c_1,c_0])).

cnf(c_1238,plain,
    ( k5_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))))) = k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(X0,X1),X0)) ),
    inference(superposition,[status(thm)],[c_1,c_1032])).

cnf(c_12,plain,
    ( r2_hidden(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_562,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_7,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_567,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1292,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1,c_567])).

cnf(c_1772,plain,
    ( r2_hidden(X0,k4_xboole_0(X1,X2)) = iProver_top
    | r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1))))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1,c_1292])).

cnf(c_1033,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
    inference(superposition,[status(thm)],[c_1,c_0])).

cnf(c_1113,plain,
    ( k5_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = k4_xboole_0(k4_xboole_0(X0,X1),X0) ),
    inference(superposition,[status(thm)],[c_1,c_1033])).

cnf(c_10,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,X2)
    | ~ r2_hidden(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_564,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) != iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2577,plain,
    ( r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))) != iProver_top
    | r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1113,c_564])).

cnf(c_6,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k4_xboole_0(X2,k4_xboole_0(X2,X1))) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_568,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k4_xboole_0(X2,k4_xboole_0(X2,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1384,plain,
    ( r2_hidden(X0,k4_xboole_0(X1,X2)) = iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1,c_568])).

cnf(c_2787,plain,
    ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),X1)) = iProver_top
    | r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1))))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1,c_1384])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,X2)
    | r2_hidden(X0,k4_xboole_0(X2,k4_xboole_0(X2,X1))) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_569,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) != iProver_top
    | r2_hidden(X0,k4_xboole_0(X2,k4_xboole_0(X2,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2911,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1,c_569])).

cnf(c_11,plain,
    ( r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r2_hidden(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_563,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1432,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_563])).

cnf(c_38,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_3476,plain,
    ( r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top
    | r2_hidden(X0,X1) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1432,c_38])).

cnf(c_3477,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top ),
    inference(renaming,[status(thm)],[c_3476])).

cnf(c_3566,plain,
    ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1))))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1772,c_2577,c_2787,c_2911,c_3477])).

cnf(c_3574,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_562,c_3566])).

cnf(c_3586,plain,
    ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,X2),X1),k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1,c_3566])).

cnf(c_13,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_3908,plain,
    ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),X1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3586,c_13,c_3574])).

cnf(c_4546,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_562,c_3908])).

cnf(c_6759,plain,
    ( k5_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) = k4_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) ),
    inference(light_normalisation,[status(thm)],[c_1238,c_1238,c_3574,c_4546])).

cnf(c_6760,plain,
    ( k5_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) = k4_xboole_0(X0,X1) ),
    inference(demodulation,[status(thm)],[c_6759,c_13])).

cnf(c_6764,plain,
    ( k5_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k1_xboole_0) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(superposition,[status(thm)],[c_1,c_6760])).

cnf(c_6944,plain,
    ( k5_xboole_0(k4_xboole_0(X0,k5_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),k1_xboole_0)),k1_xboole_0) = k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(X0,X1),X0)) ),
    inference(superposition,[status(thm)],[c_6764,c_6764])).

cnf(c_6986,plain,
    ( k5_xboole_0(k4_xboole_0(X0,k5_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),k1_xboole_0)),k1_xboole_0) = k4_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) ),
    inference(light_normalisation,[status(thm)],[c_6944,c_4546])).

cnf(c_6766,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_13,c_6760])).

cnf(c_6785,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_6766,c_13])).

cnf(c_6987,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
    inference(demodulation,[status(thm)],[c_6986,c_13,c_6785])).

cnf(c_7263,plain,
    ( k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = sK3
    | k4_xboole_0(sK3,k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK2,sK2,sK2,sK2,sK2))) = k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) ),
    inference(superposition,[status(thm)],[c_1620,c_6987])).

cnf(c_1028,plain,
    ( k4_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,X0)) = k4_xboole_0(X0,X0) ),
    inference(superposition,[status(thm)],[c_13,c_1])).

cnf(c_4554,plain,
    ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X1),k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1028,c_3908])).

cnf(c_4833,plain,
    ( r2_hidden(X0,k4_xboole_0(X1,X1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4554,c_13])).

cnf(c_5203,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_562,c_4833])).

cnf(c_7303,plain,
    ( k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = sK3 ),
    inference(demodulation,[status(thm)],[c_7263,c_13,c_5203])).

cnf(c_7744,plain,
    ( k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k4_xboole_0(sK3,sK3)) = k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) ),
    inference(superposition,[status(thm)],[c_7303,c_1033])).

cnf(c_7751,plain,
    ( k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
    inference(demodulation,[status(thm)],[c_7744,c_5203,c_6785])).

cnf(c_15,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_xboole_0(X1,k3_enumset1(X0,X0,X0,X0,X0)) != X1 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1547,plain,
    ( ~ r2_hidden(sK2,sK3)
    | k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) != sK3 ),
    inference(instantiation,[status(thm)],[c_15])).

cnf(c_16,negated_conjecture,
    ( r2_hidden(sK2,sK3)
    | k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) != k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
    inference(cnf_transformation,[],[f66])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_7751,c_7303,c_1547,c_16])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n006.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 20:40:52 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.67/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.67/0.98  
% 3.67/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.67/0.98  
% 3.67/0.98  ------  iProver source info
% 3.67/0.98  
% 3.67/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.67/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.67/0.98  git: non_committed_changes: false
% 3.67/0.98  git: last_make_outside_of_git: false
% 3.67/0.98  
% 3.67/0.98  ------ 
% 3.67/0.98  
% 3.67/0.98  ------ Input Options
% 3.67/0.98  
% 3.67/0.98  --out_options                           all
% 3.67/0.98  --tptp_safe_out                         true
% 3.67/0.98  --problem_path                          ""
% 3.67/0.98  --include_path                          ""
% 3.67/0.98  --clausifier                            res/vclausify_rel
% 3.67/0.98  --clausifier_options                    ""
% 3.67/0.98  --stdin                                 false
% 3.67/0.98  --stats_out                             all
% 3.67/0.98  
% 3.67/0.98  ------ General Options
% 3.67/0.98  
% 3.67/0.98  --fof                                   false
% 3.67/0.98  --time_out_real                         305.
% 3.67/0.98  --time_out_virtual                      -1.
% 3.67/0.98  --symbol_type_check                     false
% 3.67/0.98  --clausify_out                          false
% 3.67/0.98  --sig_cnt_out                           false
% 3.67/0.98  --trig_cnt_out                          false
% 3.67/0.98  --trig_cnt_out_tolerance                1.
% 3.67/0.98  --trig_cnt_out_sk_spl                   false
% 3.67/0.98  --abstr_cl_out                          false
% 3.67/0.98  
% 3.67/0.98  ------ Global Options
% 3.67/0.98  
% 3.67/0.98  --schedule                              default
% 3.67/0.98  --add_important_lit                     false
% 3.67/0.98  --prop_solver_per_cl                    1000
% 3.67/0.98  --min_unsat_core                        false
% 3.67/0.98  --soft_assumptions                      false
% 3.67/0.98  --soft_lemma_size                       3
% 3.67/0.98  --prop_impl_unit_size                   0
% 3.67/0.98  --prop_impl_unit                        []
% 3.67/0.98  --share_sel_clauses                     true
% 3.67/0.98  --reset_solvers                         false
% 3.67/0.98  --bc_imp_inh                            [conj_cone]
% 3.67/0.98  --conj_cone_tolerance                   3.
% 3.67/0.98  --extra_neg_conj                        none
% 3.67/0.98  --large_theory_mode                     true
% 3.67/0.98  --prolific_symb_bound                   200
% 3.67/0.98  --lt_threshold                          2000
% 3.67/0.98  --clause_weak_htbl                      true
% 3.67/0.98  --gc_record_bc_elim                     false
% 3.67/0.98  
% 3.67/0.98  ------ Preprocessing Options
% 3.67/0.98  
% 3.67/0.98  --preprocessing_flag                    true
% 3.67/0.98  --time_out_prep_mult                    0.1
% 3.67/0.98  --splitting_mode                        input
% 3.67/0.98  --splitting_grd                         true
% 3.67/0.98  --splitting_cvd                         false
% 3.67/0.98  --splitting_cvd_svl                     false
% 3.67/0.98  --splitting_nvd                         32
% 3.67/0.98  --sub_typing                            true
% 3.67/0.98  --prep_gs_sim                           true
% 3.67/0.98  --prep_unflatten                        true
% 3.67/0.98  --prep_res_sim                          true
% 3.67/0.98  --prep_upred                            true
% 3.67/0.98  --prep_sem_filter                       exhaustive
% 3.67/0.98  --prep_sem_filter_out                   false
% 3.67/0.98  --pred_elim                             true
% 3.67/0.98  --res_sim_input                         true
% 3.67/0.98  --eq_ax_congr_red                       true
% 3.67/0.98  --pure_diseq_elim                       true
% 3.67/0.98  --brand_transform                       false
% 3.67/0.98  --non_eq_to_eq                          false
% 3.67/0.98  --prep_def_merge                        true
% 3.67/0.98  --prep_def_merge_prop_impl              false
% 3.67/0.98  --prep_def_merge_mbd                    true
% 3.67/0.98  --prep_def_merge_tr_red                 false
% 3.67/0.98  --prep_def_merge_tr_cl                  false
% 3.67/0.98  --smt_preprocessing                     true
% 3.67/0.98  --smt_ac_axioms                         fast
% 3.67/0.98  --preprocessed_out                      false
% 3.67/0.98  --preprocessed_stats                    false
% 3.67/0.98  
% 3.67/0.98  ------ Abstraction refinement Options
% 3.67/0.98  
% 3.67/0.98  --abstr_ref                             []
% 3.67/0.98  --abstr_ref_prep                        false
% 3.67/0.98  --abstr_ref_until_sat                   false
% 3.67/0.98  --abstr_ref_sig_restrict                funpre
% 3.67/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.67/0.98  --abstr_ref_under                       []
% 3.67/0.98  
% 3.67/0.98  ------ SAT Options
% 3.67/0.98  
% 3.67/0.98  --sat_mode                              false
% 3.67/0.98  --sat_fm_restart_options                ""
% 3.67/0.98  --sat_gr_def                            false
% 3.67/0.98  --sat_epr_types                         true
% 3.67/0.98  --sat_non_cyclic_types                  false
% 3.67/0.98  --sat_finite_models                     false
% 3.67/0.98  --sat_fm_lemmas                         false
% 3.67/0.98  --sat_fm_prep                           false
% 3.67/0.98  --sat_fm_uc_incr                        true
% 3.67/0.98  --sat_out_model                         small
% 3.67/0.98  --sat_out_clauses                       false
% 3.67/0.98  
% 3.67/0.98  ------ QBF Options
% 3.67/0.98  
% 3.67/0.98  --qbf_mode                              false
% 3.67/0.98  --qbf_elim_univ                         false
% 3.67/0.98  --qbf_dom_inst                          none
% 3.67/0.98  --qbf_dom_pre_inst                      false
% 3.67/0.98  --qbf_sk_in                             false
% 3.67/0.98  --qbf_pred_elim                         true
% 3.67/0.98  --qbf_split                             512
% 3.67/0.98  
% 3.67/0.98  ------ BMC1 Options
% 3.67/0.98  
% 3.67/0.98  --bmc1_incremental                      false
% 3.67/0.98  --bmc1_axioms                           reachable_all
% 3.67/0.98  --bmc1_min_bound                        0
% 3.67/0.98  --bmc1_max_bound                        -1
% 3.67/0.98  --bmc1_max_bound_default                -1
% 3.67/0.98  --bmc1_symbol_reachability              true
% 3.67/0.98  --bmc1_property_lemmas                  false
% 3.67/0.98  --bmc1_k_induction                      false
% 3.67/0.98  --bmc1_non_equiv_states                 false
% 3.67/0.98  --bmc1_deadlock                         false
% 3.67/0.98  --bmc1_ucm                              false
% 3.67/0.98  --bmc1_add_unsat_core                   none
% 3.67/0.98  --bmc1_unsat_core_children              false
% 3.67/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.67/0.98  --bmc1_out_stat                         full
% 3.67/0.98  --bmc1_ground_init                      false
% 3.67/0.98  --bmc1_pre_inst_next_state              false
% 3.67/0.98  --bmc1_pre_inst_state                   false
% 3.67/0.98  --bmc1_pre_inst_reach_state             false
% 3.67/0.98  --bmc1_out_unsat_core                   false
% 3.67/0.98  --bmc1_aig_witness_out                  false
% 3.67/0.98  --bmc1_verbose                          false
% 3.67/0.98  --bmc1_dump_clauses_tptp                false
% 3.67/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.67/0.98  --bmc1_dump_file                        -
% 3.67/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.67/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.67/0.98  --bmc1_ucm_extend_mode                  1
% 3.67/0.98  --bmc1_ucm_init_mode                    2
% 3.67/0.98  --bmc1_ucm_cone_mode                    none
% 3.67/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.67/0.98  --bmc1_ucm_relax_model                  4
% 3.67/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.67/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.67/0.98  --bmc1_ucm_layered_model                none
% 3.67/0.98  --bmc1_ucm_max_lemma_size               10
% 3.67/0.98  
% 3.67/0.98  ------ AIG Options
% 3.67/0.98  
% 3.67/0.98  --aig_mode                              false
% 3.67/0.98  
% 3.67/0.98  ------ Instantiation Options
% 3.67/0.98  
% 3.67/0.98  --instantiation_flag                    true
% 3.67/0.98  --inst_sos_flag                         true
% 3.67/0.98  --inst_sos_phase                        true
% 3.67/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.67/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.67/0.98  --inst_lit_sel_side                     num_symb
% 3.67/0.98  --inst_solver_per_active                1400
% 3.67/0.98  --inst_solver_calls_frac                1.
% 3.67/0.98  --inst_passive_queue_type               priority_queues
% 3.67/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.67/0.98  --inst_passive_queues_freq              [25;2]
% 3.67/0.98  --inst_dismatching                      true
% 3.67/0.98  --inst_eager_unprocessed_to_passive     true
% 3.67/0.98  --inst_prop_sim_given                   true
% 3.67/0.98  --inst_prop_sim_new                     false
% 3.67/0.98  --inst_subs_new                         false
% 3.67/0.98  --inst_eq_res_simp                      false
% 3.67/0.98  --inst_subs_given                       false
% 3.67/0.98  --inst_orphan_elimination               true
% 3.67/0.98  --inst_learning_loop_flag               true
% 3.67/0.98  --inst_learning_start                   3000
% 3.67/0.98  --inst_learning_factor                  2
% 3.67/0.98  --inst_start_prop_sim_after_learn       3
% 3.67/0.98  --inst_sel_renew                        solver
% 3.67/0.98  --inst_lit_activity_flag                true
% 3.67/0.98  --inst_restr_to_given                   false
% 3.67/0.98  --inst_activity_threshold               500
% 3.67/0.98  --inst_out_proof                        true
% 3.67/0.98  
% 3.67/0.98  ------ Resolution Options
% 3.67/0.98  
% 3.67/0.98  --resolution_flag                       true
% 3.67/0.98  --res_lit_sel                           adaptive
% 3.67/0.98  --res_lit_sel_side                      none
% 3.67/0.98  --res_ordering                          kbo
% 3.67/0.98  --res_to_prop_solver                    active
% 3.67/0.98  --res_prop_simpl_new                    false
% 3.67/0.98  --res_prop_simpl_given                  true
% 3.67/0.98  --res_passive_queue_type                priority_queues
% 3.67/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.67/0.98  --res_passive_queues_freq               [15;5]
% 3.67/0.98  --res_forward_subs                      full
% 3.67/0.98  --res_backward_subs                     full
% 3.67/0.98  --res_forward_subs_resolution           true
% 3.67/0.98  --res_backward_subs_resolution          true
% 3.67/0.98  --res_orphan_elimination                true
% 3.67/0.98  --res_time_limit                        2.
% 3.67/0.98  --res_out_proof                         true
% 3.67/0.98  
% 3.67/0.98  ------ Superposition Options
% 3.67/0.98  
% 3.67/0.98  --superposition_flag                    true
% 3.67/0.98  --sup_passive_queue_type                priority_queues
% 3.67/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.67/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.67/0.98  --demod_completeness_check              fast
% 3.67/0.98  --demod_use_ground                      true
% 3.67/0.98  --sup_to_prop_solver                    passive
% 3.67/0.98  --sup_prop_simpl_new                    true
% 3.67/0.98  --sup_prop_simpl_given                  true
% 3.67/0.98  --sup_fun_splitting                     true
% 3.67/0.98  --sup_smt_interval                      50000
% 3.67/0.98  
% 3.67/0.98  ------ Superposition Simplification Setup
% 3.67/0.98  
% 3.67/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.67/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.67/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.67/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.67/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.67/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.67/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.67/0.98  --sup_immed_triv                        [TrivRules]
% 3.67/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.67/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.67/0.98  --sup_immed_bw_main                     []
% 3.67/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.67/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.67/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.67/0.98  --sup_input_bw                          []
% 3.67/0.98  
% 3.67/0.98  ------ Combination Options
% 3.67/0.98  
% 3.67/0.98  --comb_res_mult                         3
% 3.67/0.98  --comb_sup_mult                         2
% 3.67/0.98  --comb_inst_mult                        10
% 3.67/0.98  
% 3.67/0.98  ------ Debug Options
% 3.67/0.98  
% 3.67/0.98  --dbg_backtrace                         false
% 3.67/0.98  --dbg_dump_prop_clauses                 false
% 3.67/0.98  --dbg_dump_prop_clauses_file            -
% 3.67/0.98  --dbg_out_stat                          false
% 3.67/0.98  ------ Parsing...
% 3.67/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.67/0.98  
% 3.67/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.67/0.98  
% 3.67/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.67/0.98  
% 3.67/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.67/0.98  ------ Proving...
% 3.67/0.98  ------ Problem Properties 
% 3.67/0.98  
% 3.67/0.98  
% 3.67/0.98  clauses                                 18
% 3.67/0.98  conjectures                             2
% 3.67/0.98  EPR                                     0
% 3.67/0.98  Horn                                    11
% 3.67/0.98  unary                                   3
% 3.67/0.98  binary                                  7
% 3.67/0.98  lits                                    42
% 3.67/0.98  lits eq                                 11
% 3.67/0.98  fd_pure                                 0
% 3.67/0.98  fd_pseudo                               0
% 3.67/0.98  fd_cond                                 1
% 3.67/0.98  fd_pseudo_cond                          3
% 3.67/0.98  AC symbols                              0
% 3.67/0.98  
% 3.67/0.98  ------ Schedule dynamic 5 is on 
% 3.67/0.98  
% 3.67/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.67/0.98  
% 3.67/0.98  
% 3.67/0.98  ------ 
% 3.67/0.98  Current options:
% 3.67/0.98  ------ 
% 3.67/0.98  
% 3.67/0.98  ------ Input Options
% 3.67/0.98  
% 3.67/0.98  --out_options                           all
% 3.67/0.98  --tptp_safe_out                         true
% 3.67/0.98  --problem_path                          ""
% 3.67/0.98  --include_path                          ""
% 3.67/0.98  --clausifier                            res/vclausify_rel
% 3.67/0.98  --clausifier_options                    ""
% 3.67/0.98  --stdin                                 false
% 3.67/0.98  --stats_out                             all
% 3.67/0.98  
% 3.67/0.98  ------ General Options
% 3.67/0.98  
% 3.67/0.98  --fof                                   false
% 3.67/0.98  --time_out_real                         305.
% 3.67/0.98  --time_out_virtual                      -1.
% 3.67/0.98  --symbol_type_check                     false
% 3.67/0.98  --clausify_out                          false
% 3.67/0.98  --sig_cnt_out                           false
% 3.67/0.98  --trig_cnt_out                          false
% 3.67/0.98  --trig_cnt_out_tolerance                1.
% 3.67/0.98  --trig_cnt_out_sk_spl                   false
% 3.67/0.98  --abstr_cl_out                          false
% 3.67/0.98  
% 3.67/0.98  ------ Global Options
% 3.67/0.98  
% 3.67/0.98  --schedule                              default
% 3.67/0.98  --add_important_lit                     false
% 3.67/0.98  --prop_solver_per_cl                    1000
% 3.67/0.98  --min_unsat_core                        false
% 3.67/0.98  --soft_assumptions                      false
% 3.67/0.98  --soft_lemma_size                       3
% 3.67/0.98  --prop_impl_unit_size                   0
% 3.67/0.98  --prop_impl_unit                        []
% 3.67/0.98  --share_sel_clauses                     true
% 3.67/0.98  --reset_solvers                         false
% 3.67/0.98  --bc_imp_inh                            [conj_cone]
% 3.67/0.98  --conj_cone_tolerance                   3.
% 3.67/0.98  --extra_neg_conj                        none
% 3.67/0.98  --large_theory_mode                     true
% 3.67/0.98  --prolific_symb_bound                   200
% 3.67/0.98  --lt_threshold                          2000
% 3.67/0.98  --clause_weak_htbl                      true
% 3.67/0.98  --gc_record_bc_elim                     false
% 3.67/0.98  
% 3.67/0.98  ------ Preprocessing Options
% 3.67/0.98  
% 3.67/0.98  --preprocessing_flag                    true
% 3.67/0.98  --time_out_prep_mult                    0.1
% 3.67/0.98  --splitting_mode                        input
% 3.67/0.98  --splitting_grd                         true
% 3.67/0.98  --splitting_cvd                         false
% 3.67/0.98  --splitting_cvd_svl                     false
% 3.67/0.98  --splitting_nvd                         32
% 3.67/0.98  --sub_typing                            true
% 3.67/0.98  --prep_gs_sim                           true
% 3.67/0.98  --prep_unflatten                        true
% 3.67/0.98  --prep_res_sim                          true
% 3.67/0.98  --prep_upred                            true
% 3.67/0.98  --prep_sem_filter                       exhaustive
% 3.67/0.98  --prep_sem_filter_out                   false
% 3.67/0.98  --pred_elim                             true
% 3.67/0.98  --res_sim_input                         true
% 3.67/0.98  --eq_ax_congr_red                       true
% 3.67/0.98  --pure_diseq_elim                       true
% 3.67/0.98  --brand_transform                       false
% 3.67/0.98  --non_eq_to_eq                          false
% 3.67/0.98  --prep_def_merge                        true
% 3.67/0.98  --prep_def_merge_prop_impl              false
% 3.67/0.98  --prep_def_merge_mbd                    true
% 3.67/0.98  --prep_def_merge_tr_red                 false
% 3.67/0.98  --prep_def_merge_tr_cl                  false
% 3.67/0.98  --smt_preprocessing                     true
% 3.67/0.98  --smt_ac_axioms                         fast
% 3.67/0.98  --preprocessed_out                      false
% 3.67/0.98  --preprocessed_stats                    false
% 3.67/0.98  
% 3.67/0.98  ------ Abstraction refinement Options
% 3.67/0.98  
% 3.67/0.98  --abstr_ref                             []
% 3.67/0.98  --abstr_ref_prep                        false
% 3.67/0.98  --abstr_ref_until_sat                   false
% 3.67/0.98  --abstr_ref_sig_restrict                funpre
% 3.67/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.67/0.98  --abstr_ref_under                       []
% 3.67/0.98  
% 3.67/0.98  ------ SAT Options
% 3.67/0.98  
% 3.67/0.98  --sat_mode                              false
% 3.67/0.98  --sat_fm_restart_options                ""
% 3.67/0.98  --sat_gr_def                            false
% 3.67/0.98  --sat_epr_types                         true
% 3.67/0.98  --sat_non_cyclic_types                  false
% 3.67/0.98  --sat_finite_models                     false
% 3.67/0.98  --sat_fm_lemmas                         false
% 3.67/0.98  --sat_fm_prep                           false
% 3.67/0.98  --sat_fm_uc_incr                        true
% 3.67/0.98  --sat_out_model                         small
% 3.67/0.98  --sat_out_clauses                       false
% 3.67/0.98  
% 3.67/0.98  ------ QBF Options
% 3.67/0.98  
% 3.67/0.98  --qbf_mode                              false
% 3.67/0.98  --qbf_elim_univ                         false
% 3.67/0.98  --qbf_dom_inst                          none
% 3.67/0.98  --qbf_dom_pre_inst                      false
% 3.67/0.98  --qbf_sk_in                             false
% 3.67/0.98  --qbf_pred_elim                         true
% 3.67/0.98  --qbf_split                             512
% 3.67/0.98  
% 3.67/0.98  ------ BMC1 Options
% 3.67/0.98  
% 3.67/0.98  --bmc1_incremental                      false
% 3.67/0.98  --bmc1_axioms                           reachable_all
% 3.67/0.98  --bmc1_min_bound                        0
% 3.67/0.98  --bmc1_max_bound                        -1
% 3.67/0.98  --bmc1_max_bound_default                -1
% 3.67/0.98  --bmc1_symbol_reachability              true
% 3.67/0.98  --bmc1_property_lemmas                  false
% 3.67/0.98  --bmc1_k_induction                      false
% 3.67/0.98  --bmc1_non_equiv_states                 false
% 3.67/0.98  --bmc1_deadlock                         false
% 3.67/0.98  --bmc1_ucm                              false
% 3.67/0.98  --bmc1_add_unsat_core                   none
% 3.67/0.98  --bmc1_unsat_core_children              false
% 3.67/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.67/0.98  --bmc1_out_stat                         full
% 3.67/0.98  --bmc1_ground_init                      false
% 3.67/0.98  --bmc1_pre_inst_next_state              false
% 3.67/0.98  --bmc1_pre_inst_state                   false
% 3.67/0.98  --bmc1_pre_inst_reach_state             false
% 3.67/0.98  --bmc1_out_unsat_core                   false
% 3.67/0.98  --bmc1_aig_witness_out                  false
% 3.67/0.98  --bmc1_verbose                          false
% 3.67/0.98  --bmc1_dump_clauses_tptp                false
% 3.67/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.67/0.98  --bmc1_dump_file                        -
% 3.67/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.67/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.67/0.98  --bmc1_ucm_extend_mode                  1
% 3.67/0.98  --bmc1_ucm_init_mode                    2
% 3.67/0.98  --bmc1_ucm_cone_mode                    none
% 3.67/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.67/0.98  --bmc1_ucm_relax_model                  4
% 3.67/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.67/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.67/0.98  --bmc1_ucm_layered_model                none
% 3.67/0.98  --bmc1_ucm_max_lemma_size               10
% 3.67/0.98  
% 3.67/0.98  ------ AIG Options
% 3.67/0.98  
% 3.67/0.98  --aig_mode                              false
% 3.67/0.98  
% 3.67/0.98  ------ Instantiation Options
% 3.67/0.98  
% 3.67/0.98  --instantiation_flag                    true
% 3.67/0.98  --inst_sos_flag                         true
% 3.67/0.98  --inst_sos_phase                        true
% 3.67/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.67/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.67/0.98  --inst_lit_sel_side                     none
% 3.67/0.98  --inst_solver_per_active                1400
% 3.67/0.98  --inst_solver_calls_frac                1.
% 3.67/0.98  --inst_passive_queue_type               priority_queues
% 3.67/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.67/0.98  --inst_passive_queues_freq              [25;2]
% 3.67/0.98  --inst_dismatching                      true
% 3.67/0.98  --inst_eager_unprocessed_to_passive     true
% 3.67/0.98  --inst_prop_sim_given                   true
% 3.67/0.98  --inst_prop_sim_new                     false
% 3.67/0.98  --inst_subs_new                         false
% 3.67/0.98  --inst_eq_res_simp                      false
% 3.67/0.98  --inst_subs_given                       false
% 3.67/0.98  --inst_orphan_elimination               true
% 3.67/0.98  --inst_learning_loop_flag               true
% 3.67/0.98  --inst_learning_start                   3000
% 3.67/0.98  --inst_learning_factor                  2
% 3.67/0.98  --inst_start_prop_sim_after_learn       3
% 3.67/0.98  --inst_sel_renew                        solver
% 3.67/0.98  --inst_lit_activity_flag                true
% 3.67/0.98  --inst_restr_to_given                   false
% 3.67/0.98  --inst_activity_threshold               500
% 3.67/0.98  --inst_out_proof                        true
% 3.67/0.98  
% 3.67/0.98  ------ Resolution Options
% 3.67/0.98  
% 3.67/0.98  --resolution_flag                       false
% 3.67/0.98  --res_lit_sel                           adaptive
% 3.67/0.98  --res_lit_sel_side                      none
% 3.67/0.98  --res_ordering                          kbo
% 3.67/0.98  --res_to_prop_solver                    active
% 3.67/0.98  --res_prop_simpl_new                    false
% 3.67/0.98  --res_prop_simpl_given                  true
% 3.67/0.98  --res_passive_queue_type                priority_queues
% 3.67/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.67/0.98  --res_passive_queues_freq               [15;5]
% 3.67/0.98  --res_forward_subs                      full
% 3.67/0.98  --res_backward_subs                     full
% 3.67/0.98  --res_forward_subs_resolution           true
% 3.67/0.98  --res_backward_subs_resolution          true
% 3.67/0.98  --res_orphan_elimination                true
% 3.67/0.98  --res_time_limit                        2.
% 3.67/0.98  --res_out_proof                         true
% 3.67/0.98  
% 3.67/0.98  ------ Superposition Options
% 3.67/0.98  
% 3.67/0.98  --superposition_flag                    true
% 3.67/0.98  --sup_passive_queue_type                priority_queues
% 3.67/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.67/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.67/0.98  --demod_completeness_check              fast
% 3.67/0.98  --demod_use_ground                      true
% 3.67/0.98  --sup_to_prop_solver                    passive
% 3.67/0.98  --sup_prop_simpl_new                    true
% 3.67/0.98  --sup_prop_simpl_given                  true
% 3.67/0.98  --sup_fun_splitting                     true
% 3.67/0.98  --sup_smt_interval                      50000
% 3.67/0.98  
% 3.67/0.98  ------ Superposition Simplification Setup
% 3.67/0.98  
% 3.67/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.67/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.67/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.67/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.67/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.67/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.67/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.67/0.98  --sup_immed_triv                        [TrivRules]
% 3.67/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.67/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.67/0.98  --sup_immed_bw_main                     []
% 3.67/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.67/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.67/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.67/0.98  --sup_input_bw                          []
% 3.67/0.98  
% 3.67/0.98  ------ Combination Options
% 3.67/0.98  
% 3.67/0.98  --comb_res_mult                         3
% 3.67/0.98  --comb_sup_mult                         2
% 3.67/0.98  --comb_inst_mult                        10
% 3.67/0.98  
% 3.67/0.98  ------ Debug Options
% 3.67/0.98  
% 3.67/0.98  --dbg_backtrace                         false
% 3.67/0.98  --dbg_dump_prop_clauses                 false
% 3.67/0.98  --dbg_dump_prop_clauses_file            -
% 3.67/0.98  --dbg_out_stat                          false
% 3.67/0.98  
% 3.67/0.98  
% 3.67/0.98  
% 3.67/0.98  
% 3.67/0.98  ------ Proving...
% 3.67/0.98  
% 3.67/0.98  
% 3.67/0.98  % SZS status Theorem for theBenchmark.p
% 3.67/0.98  
% 3.67/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.67/0.98  
% 3.67/0.98  fof(f12,axiom,(
% 3.67/0.98    ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 <=> ~r2_hidden(X1,X0))),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f26,plain,(
% 3.67/0.98    ! [X0,X1] : ((k4_xboole_0(X0,k1_tarski(X1)) = X0 | r2_hidden(X1,X0)) & (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0))),
% 3.67/0.98    inference(nnf_transformation,[],[f12])).
% 3.67/0.98  
% 3.67/0.98  fof(f50,plain,(
% 3.67/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 | r2_hidden(X1,X0)) )),
% 3.67/0.98    inference(cnf_transformation,[],[f26])).
% 3.67/0.98  
% 3.67/0.98  fof(f8,axiom,(
% 3.67/0.98    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f45,plain,(
% 3.67/0.98    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.67/0.98    inference(cnf_transformation,[],[f8])).
% 3.67/0.98  
% 3.67/0.98  fof(f9,axiom,(
% 3.67/0.98    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f46,plain,(
% 3.67/0.98    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.67/0.98    inference(cnf_transformation,[],[f9])).
% 3.67/0.98  
% 3.67/0.98  fof(f10,axiom,(
% 3.67/0.98    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f47,plain,(
% 3.67/0.98    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.67/0.98    inference(cnf_transformation,[],[f10])).
% 3.67/0.98  
% 3.67/0.98  fof(f11,axiom,(
% 3.67/0.98    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f48,plain,(
% 3.67/0.98    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 3.67/0.98    inference(cnf_transformation,[],[f11])).
% 3.67/0.98  
% 3.67/0.98  fof(f53,plain,(
% 3.67/0.98    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2)) )),
% 3.67/0.98    inference(definition_unfolding,[],[f47,f48])).
% 3.67/0.98  
% 3.67/0.98  fof(f54,plain,(
% 3.67/0.98    ( ! [X0,X1] : (k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1)) )),
% 3.67/0.98    inference(definition_unfolding,[],[f46,f53])).
% 3.67/0.98  
% 3.67/0.98  fof(f55,plain,(
% 3.67/0.98    ( ! [X0] : (k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0)) )),
% 3.67/0.98    inference(definition_unfolding,[],[f45,f54])).
% 3.67/0.98  
% 3.67/0.98  fof(f64,plain,(
% 3.67/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1)) = X0 | r2_hidden(X1,X0)) )),
% 3.67/0.98    inference(definition_unfolding,[],[f50,f55])).
% 3.67/0.98  
% 3.67/0.98  fof(f13,conjecture,(
% 3.67/0.98    ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) <=> ~r2_hidden(X0,X1))),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f14,negated_conjecture,(
% 3.67/0.98    ~! [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) <=> ~r2_hidden(X0,X1))),
% 3.67/0.98    inference(negated_conjecture,[],[f13])).
% 3.67/0.98  
% 3.67/0.98  fof(f17,plain,(
% 3.67/0.98    ? [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) <~> ~r2_hidden(X0,X1))),
% 3.67/0.98    inference(ennf_transformation,[],[f14])).
% 3.67/0.98  
% 3.67/0.98  fof(f27,plain,(
% 3.67/0.98    ? [X0,X1] : ((r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0)) & (~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)))),
% 3.67/0.98    inference(nnf_transformation,[],[f17])).
% 3.67/0.98  
% 3.67/0.98  fof(f28,plain,(
% 3.67/0.98    ? [X0,X1] : ((r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0)) & (~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0))) => ((r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2)) & (~r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2)))),
% 3.67/0.98    introduced(choice_axiom,[])).
% 3.67/0.98  
% 3.67/0.98  fof(f29,plain,(
% 3.67/0.98    (r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2)) & (~r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2))),
% 3.67/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f27,f28])).
% 3.67/0.98  
% 3.67/0.98  fof(f51,plain,(
% 3.67/0.98    ~r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2)),
% 3.67/0.98    inference(cnf_transformation,[],[f29])).
% 3.67/0.98  
% 3.67/0.98  fof(f67,plain,(
% 3.67/0.98    ~r2_hidden(sK2,sK3) | k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2)),
% 3.67/0.98    inference(definition_unfolding,[],[f51,f55,f55])).
% 3.67/0.98  
% 3.67/0.98  fof(f1,axiom,(
% 3.67/0.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f30,plain,(
% 3.67/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 3.67/0.98    inference(cnf_transformation,[],[f1])).
% 3.67/0.98  
% 3.67/0.98  fof(f7,axiom,(
% 3.67/0.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f44,plain,(
% 3.67/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 3.67/0.98    inference(cnf_transformation,[],[f7])).
% 3.67/0.98  
% 3.67/0.98  fof(f57,plain,(
% 3.67/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 3.67/0.98    inference(definition_unfolding,[],[f30,f44,f44])).
% 3.67/0.98  
% 3.67/0.98  fof(f5,axiom,(
% 3.67/0.98    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f42,plain,(
% 3.67/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)) )),
% 3.67/0.98    inference(cnf_transformation,[],[f5])).
% 3.67/0.98  
% 3.67/0.98  fof(f56,plain,(
% 3.67/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1)) )),
% 3.67/0.98    inference(definition_unfolding,[],[f42,f44])).
% 3.67/0.98  
% 3.67/0.98  fof(f4,axiom,(
% 3.67/0.98    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f16,plain,(
% 3.67/0.98    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 3.67/0.98    inference(ennf_transformation,[],[f4])).
% 3.67/0.98  
% 3.67/0.98  fof(f24,plain,(
% 3.67/0.98    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK1(X0),X0))),
% 3.67/0.98    introduced(choice_axiom,[])).
% 3.67/0.98  
% 3.67/0.98  fof(f25,plain,(
% 3.67/0.98    ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0)),
% 3.67/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f16,f24])).
% 3.67/0.98  
% 3.67/0.98  fof(f41,plain,(
% 3.67/0.98    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 3.67/0.98    inference(cnf_transformation,[],[f25])).
% 3.67/0.98  
% 3.67/0.98  fof(f2,axiom,(
% 3.67/0.98    ! [X0,X1,X2] : (k3_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f18,plain,(
% 3.67/0.98    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.67/0.98    inference(nnf_transformation,[],[f2])).
% 3.67/0.98  
% 3.67/0.98  fof(f19,plain,(
% 3.67/0.98    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.67/0.98    inference(flattening,[],[f18])).
% 3.67/0.98  
% 3.67/0.98  fof(f20,plain,(
% 3.67/0.98    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.67/0.98    inference(rectify,[],[f19])).
% 3.67/0.98  
% 3.67/0.98  fof(f21,plain,(
% 3.67/0.98    ! [X2,X1,X0] : (? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((~r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 3.67/0.98    introduced(choice_axiom,[])).
% 3.67/0.98  
% 3.67/0.98  fof(f22,plain,(
% 3.67/0.98    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ((~r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.67/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f20,f21])).
% 3.67/0.98  
% 3.67/0.98  fof(f31,plain,(
% 3.67/0.98    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k3_xboole_0(X0,X1) != X2) )),
% 3.67/0.98    inference(cnf_transformation,[],[f22])).
% 3.67/0.98  
% 3.67/0.98  fof(f63,plain,(
% 3.67/0.98    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,k4_xboole_0(X0,X1)) != X2) )),
% 3.67/0.98    inference(definition_unfolding,[],[f31,f44])).
% 3.67/0.98  
% 3.67/0.98  fof(f70,plain,(
% 3.67/0.98    ( ! [X4,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 3.67/0.98    inference(equality_resolution,[],[f63])).
% 3.67/0.98  
% 3.67/0.98  fof(f3,axiom,(
% 3.67/0.98    ! [X0,X1,X2] : (r2_hidden(X0,k5_xboole_0(X1,X2)) <=> ~(r2_hidden(X0,X1) <=> r2_hidden(X0,X2)))),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f15,plain,(
% 3.67/0.98    ! [X0,X1,X2] : (r2_hidden(X0,k5_xboole_0(X1,X2)) <=> (r2_hidden(X0,X1) <~> r2_hidden(X0,X2)))),
% 3.67/0.98    inference(ennf_transformation,[],[f3])).
% 3.67/0.98  
% 3.67/0.98  fof(f23,plain,(
% 3.67/0.98    ! [X0,X1,X2] : ((r2_hidden(X0,k5_xboole_0(X1,X2)) | ((r2_hidden(X0,X1) | ~r2_hidden(X0,X2)) & (r2_hidden(X0,X2) | ~r2_hidden(X0,X1)))) & (((~r2_hidden(X0,X2) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X2) | r2_hidden(X0,X1))) | ~r2_hidden(X0,k5_xboole_0(X1,X2))))),
% 3.67/0.98    inference(nnf_transformation,[],[f15])).
% 3.67/0.98  
% 3.67/0.98  fof(f38,plain,(
% 3.67/0.98    ( ! [X2,X0,X1] : (~r2_hidden(X0,X2) | ~r2_hidden(X0,X1) | ~r2_hidden(X0,k5_xboole_0(X1,X2))) )),
% 3.67/0.98    inference(cnf_transformation,[],[f23])).
% 3.67/0.98  
% 3.67/0.98  fof(f32,plain,(
% 3.67/0.98    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k3_xboole_0(X0,X1) != X2) )),
% 3.67/0.98    inference(cnf_transformation,[],[f22])).
% 3.67/0.98  
% 3.67/0.98  fof(f62,plain,(
% 3.67/0.98    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,k4_xboole_0(X0,X1)) != X2) )),
% 3.67/0.98    inference(definition_unfolding,[],[f32,f44])).
% 3.67/0.98  
% 3.67/0.98  fof(f69,plain,(
% 3.67/0.98    ( ! [X4,X0,X1] : (r2_hidden(X4,X1) | ~r2_hidden(X4,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 3.67/0.98    inference(equality_resolution,[],[f62])).
% 3.67/0.98  
% 3.67/0.98  fof(f33,plain,(
% 3.67/0.98    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0) | k3_xboole_0(X0,X1) != X2) )),
% 3.67/0.98    inference(cnf_transformation,[],[f22])).
% 3.67/0.98  
% 3.67/0.98  fof(f61,plain,(
% 3.67/0.98    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0) | k4_xboole_0(X0,k4_xboole_0(X0,X1)) != X2) )),
% 3.67/0.98    inference(definition_unfolding,[],[f33,f44])).
% 3.67/0.98  
% 3.67/0.98  fof(f68,plain,(
% 3.67/0.98    ( ! [X4,X0,X1] : (r2_hidden(X4,k4_xboole_0(X0,k4_xboole_0(X0,X1))) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) )),
% 3.67/0.98    inference(equality_resolution,[],[f61])).
% 3.67/0.98  
% 3.67/0.98  fof(f37,plain,(
% 3.67/0.98    ( ! [X2,X0,X1] : (r2_hidden(X0,X2) | r2_hidden(X0,X1) | ~r2_hidden(X0,k5_xboole_0(X1,X2))) )),
% 3.67/0.98    inference(cnf_transformation,[],[f23])).
% 3.67/0.98  
% 3.67/0.98  fof(f6,axiom,(
% 3.67/0.98    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 3.67/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.67/0.98  
% 3.67/0.98  fof(f43,plain,(
% 3.67/0.98    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 3.67/0.98    inference(cnf_transformation,[],[f6])).
% 3.67/0.98  
% 3.67/0.98  fof(f49,plain,(
% 3.67/0.98    ( ! [X0,X1] : (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0) )),
% 3.67/0.98    inference(cnf_transformation,[],[f26])).
% 3.67/0.98  
% 3.67/0.98  fof(f65,plain,(
% 3.67/0.98    ( ! [X0,X1] : (~r2_hidden(X1,X0) | k4_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1)) != X0) )),
% 3.67/0.98    inference(definition_unfolding,[],[f49,f55])).
% 3.67/0.98  
% 3.67/0.98  fof(f52,plain,(
% 3.67/0.98    r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2)),
% 3.67/0.98    inference(cnf_transformation,[],[f29])).
% 3.67/0.98  
% 3.67/0.98  fof(f66,plain,(
% 3.67/0.98    r2_hidden(sK2,sK3) | k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) != k3_enumset1(sK2,sK2,sK2,sK2,sK2)),
% 3.67/0.98    inference(definition_unfolding,[],[f52,f55,f55])).
% 3.67/0.98  
% 3.67/0.98  cnf(c_14,plain,
% 3.67/0.98      ( r2_hidden(X0,X1)
% 3.67/0.98      | k4_xboole_0(X1,k3_enumset1(X0,X0,X0,X0,X0)) = X1 ),
% 3.67/0.98      inference(cnf_transformation,[],[f64]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_561,plain,
% 3.67/0.98      ( k4_xboole_0(X0,k3_enumset1(X1,X1,X1,X1,X1)) = X0
% 3.67/0.98      | r2_hidden(X1,X0) = iProver_top ),
% 3.67/0.98      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_17,negated_conjecture,
% 3.67/0.98      ( ~ r2_hidden(sK2,sK3)
% 3.67/0.98      | k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
% 3.67/0.98      inference(cnf_transformation,[],[f67]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_558,plain,
% 3.67/0.98      ( k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2)
% 3.67/0.98      | r2_hidden(sK2,sK3) != iProver_top ),
% 3.67/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1620,plain,
% 3.67/0.98      ( k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2)
% 3.67/0.98      | k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = sK3 ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_561,c_558]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1,plain,
% 3.67/0.98      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 3.67/0.98      inference(cnf_transformation,[],[f57]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_0,plain,
% 3.67/0.98      ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
% 3.67/0.98      inference(cnf_transformation,[],[f56]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1032,plain,
% 3.67/0.98      ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_0]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1238,plain,
% 3.67/0.98      ( k5_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))))) = k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(X0,X1),X0)) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_1032]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_12,plain,
% 3.67/0.98      ( r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 3.67/0.98      inference(cnf_transformation,[],[f41]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_562,plain,
% 3.67/0.98      ( k1_xboole_0 = X0 | r2_hidden(sK1(X0),X0) = iProver_top ),
% 3.67/0.98      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_7,plain,
% 3.67/0.98      ( r2_hidden(X0,X1)
% 3.67/0.98      | ~ r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) ),
% 3.67/0.98      inference(cnf_transformation,[],[f70]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_567,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) != iProver_top ),
% 3.67/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1292,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))) != iProver_top ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_567]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1772,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(X1,X2)) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1))))) != iProver_top ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_1292]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1033,plain,
% 3.67/0.98      ( k5_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_0]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1113,plain,
% 3.67/0.98      ( k5_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = k4_xboole_0(k4_xboole_0(X0,X1),X0) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_1033]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_10,plain,
% 3.67/0.98      ( ~ r2_hidden(X0,X1)
% 3.67/0.98      | ~ r2_hidden(X0,X2)
% 3.67/0.98      | ~ r2_hidden(X0,k5_xboole_0(X1,X2)) ),
% 3.67/0.98      inference(cnf_transformation,[],[f38]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_564,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) != iProver_top
% 3.67/0.98      | r2_hidden(X0,X2) != iProver_top
% 3.67/0.98      | r2_hidden(X0,k5_xboole_0(X1,X2)) != iProver_top ),
% 3.67/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_2577,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))) != iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),X1)) != iProver_top ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1113,c_564]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_6,plain,
% 3.67/0.98      ( r2_hidden(X0,X1)
% 3.67/0.98      | ~ r2_hidden(X0,k4_xboole_0(X2,k4_xboole_0(X2,X1))) ),
% 3.67/0.98      inference(cnf_transformation,[],[f69]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_568,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X2,k4_xboole_0(X2,X1))) != iProver_top ),
% 3.67/0.98      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1384,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(X1,X2)) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))) != iProver_top ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_568]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_2787,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),X1)) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1))))) != iProver_top ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_1384]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_5,plain,
% 3.67/0.98      ( ~ r2_hidden(X0,X1)
% 3.67/0.98      | ~ r2_hidden(X0,X2)
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X2,k4_xboole_0(X2,X1))) ),
% 3.67/0.98      inference(cnf_transformation,[],[f68]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_569,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) != iProver_top
% 3.67/0.98      | r2_hidden(X0,X2) != iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X2,k4_xboole_0(X2,X1))) = iProver_top ),
% 3.67/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_2911,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) != iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))) = iProver_top ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_569]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_11,plain,
% 3.67/0.98      ( r2_hidden(X0,X1)
% 3.67/0.98      | r2_hidden(X0,X2)
% 3.67/0.98      | ~ r2_hidden(X0,k5_xboole_0(X1,X2)) ),
% 3.67/0.98      inference(cnf_transformation,[],[f37]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_563,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) = iProver_top
% 3.67/0.98      | r2_hidden(X0,X2) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k5_xboole_0(X1,X2)) != iProver_top ),
% 3.67/0.98      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1432,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) = iProver_top ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_0,c_563]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_38,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) != iProver_top ),
% 3.67/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_3476,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top
% 3.67/0.98      | r2_hidden(X0,X1) = iProver_top ),
% 3.67/0.98      inference(global_propositional_subsumption,
% 3.67/0.98                [status(thm)],
% 3.67/0.98                [c_1432,c_38]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_3477,plain,
% 3.67/0.98      ( r2_hidden(X0,X1) = iProver_top
% 3.67/0.98      | r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top ),
% 3.67/0.98      inference(renaming,[status(thm)],[c_3476]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_3566,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1))))) != iProver_top ),
% 3.67/0.98      inference(global_propositional_subsumption,
% 3.67/0.98                [status(thm)],
% 3.67/0.98                [c_1772,c_2577,c_2787,c_2911,c_3477]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_3574,plain,
% 3.67/0.98      ( k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = k1_xboole_0 ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_562,c_3566]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_3586,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,X2),X1),k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))))) != iProver_top ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_3566]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_13,plain,
% 3.67/0.98      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.67/0.98      inference(cnf_transformation,[],[f43]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_3908,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X2),X1)) != iProver_top ),
% 3.67/0.98      inference(demodulation,[status(thm)],[c_3586,c_13,c_3574]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_4546,plain,
% 3.67/0.98      ( k4_xboole_0(k4_xboole_0(X0,X1),X0) = k1_xboole_0 ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_562,c_3908]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_6759,plain,
% 3.67/0.98      ( k5_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) = k4_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) ),
% 3.67/0.98      inference(light_normalisation,
% 3.67/0.98                [status(thm)],
% 3.67/0.98                [c_1238,c_1238,c_3574,c_4546]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_6760,plain,
% 3.67/0.98      ( k5_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) = k4_xboole_0(X0,X1) ),
% 3.67/0.98      inference(demodulation,[status(thm)],[c_6759,c_13]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_6764,plain,
% 3.67/0.98      ( k5_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k1_xboole_0) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1,c_6760]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_6944,plain,
% 3.67/0.98      ( k5_xboole_0(k4_xboole_0(X0,k5_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),k1_xboole_0)),k1_xboole_0) = k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(X0,X1),X0)) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_6764,c_6764]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_6986,plain,
% 3.67/0.98      ( k5_xboole_0(k4_xboole_0(X0,k5_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),k1_xboole_0)),k1_xboole_0) = k4_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) ),
% 3.67/0.98      inference(light_normalisation,[status(thm)],[c_6944,c_4546]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_6766,plain,
% 3.67/0.98      ( k5_xboole_0(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_13,c_6760]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_6785,plain,
% 3.67/0.98      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.67/0.98      inference(light_normalisation,[status(thm)],[c_6766,c_13]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_6987,plain,
% 3.67/0.98      ( k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
% 3.67/0.98      inference(demodulation,[status(thm)],[c_6986,c_13,c_6785]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_7263,plain,
% 3.67/0.98      ( k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = sK3
% 3.67/0.98      | k4_xboole_0(sK3,k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK2,sK2,sK2,sK2,sK2))) = k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1620,c_6987]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1028,plain,
% 3.67/0.98      ( k4_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,X0)) = k4_xboole_0(X0,X0) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_13,c_1]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_4554,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(k4_xboole_0(X1,X1),k1_xboole_0)) != iProver_top ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_1028,c_3908]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_4833,plain,
% 3.67/0.98      ( r2_hidden(X0,k4_xboole_0(X1,X1)) != iProver_top ),
% 3.67/0.98      inference(demodulation,[status(thm)],[c_4554,c_13]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_5203,plain,
% 3.67/0.98      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_562,c_4833]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_7303,plain,
% 3.67/0.98      ( k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = sK3 ),
% 3.67/0.98      inference(demodulation,[status(thm)],[c_7263,c_13,c_5203]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_7744,plain,
% 3.67/0.98      ( k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k4_xboole_0(sK3,sK3)) = k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) ),
% 3.67/0.98      inference(superposition,[status(thm)],[c_7303,c_1033]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_7751,plain,
% 3.67/0.98      ( k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
% 3.67/0.98      inference(demodulation,[status(thm)],[c_7744,c_5203,c_6785]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_15,plain,
% 3.67/0.98      ( ~ r2_hidden(X0,X1)
% 3.67/0.98      | k4_xboole_0(X1,k3_enumset1(X0,X0,X0,X0,X0)) != X1 ),
% 3.67/0.98      inference(cnf_transformation,[],[f65]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_1547,plain,
% 3.67/0.98      ( ~ r2_hidden(sK2,sK3)
% 3.67/0.98      | k4_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) != sK3 ),
% 3.67/0.98      inference(instantiation,[status(thm)],[c_15]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(c_16,negated_conjecture,
% 3.67/0.98      ( r2_hidden(sK2,sK3)
% 3.67/0.98      | k4_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),sK3) != k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
% 3.67/0.98      inference(cnf_transformation,[],[f66]) ).
% 3.67/0.98  
% 3.67/0.98  cnf(contradiction,plain,
% 3.67/0.98      ( $false ),
% 3.67/0.98      inference(minisat,[status(thm)],[c_7751,c_7303,c_1547,c_16]) ).
% 3.67/0.98  
% 3.67/0.98  
% 3.67/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.67/0.98  
% 3.67/0.98  ------                               Statistics
% 3.67/0.98  
% 3.67/0.98  ------ General
% 3.67/0.98  
% 3.67/0.98  abstr_ref_over_cycles:                  0
% 3.67/0.98  abstr_ref_under_cycles:                 0
% 3.67/0.98  gc_basic_clause_elim:                   0
% 3.67/0.98  forced_gc_time:                         0
% 3.67/0.98  parsing_time:                           0.007
% 3.67/0.98  unif_index_cands_time:                  0.
% 3.67/0.98  unif_index_add_time:                    0.
% 3.67/0.98  orderings_time:                         0.
% 3.67/0.98  out_proof_time:                         0.008
% 3.67/0.98  total_time:                             0.277
% 3.67/0.98  num_of_symbols:                         40
% 3.67/0.98  num_of_terms:                           10499
% 3.67/0.98  
% 3.67/0.98  ------ Preprocessing
% 3.67/0.98  
% 3.67/0.98  num_of_splits:                          0
% 3.67/0.98  num_of_split_atoms:                     0
% 3.67/0.98  num_of_reused_defs:                     0
% 3.67/0.98  num_eq_ax_congr_red:                    10
% 3.67/0.98  num_of_sem_filtered_clauses:            1
% 3.67/0.98  num_of_subtypes:                        0
% 3.67/0.98  monotx_restored_types:                  0
% 3.67/0.98  sat_num_of_epr_types:                   0
% 3.67/0.98  sat_num_of_non_cyclic_types:            0
% 3.67/0.98  sat_guarded_non_collapsed_types:        0
% 3.67/0.98  num_pure_diseq_elim:                    0
% 3.67/0.98  simp_replaced_by:                       0
% 3.67/0.98  res_preprocessed:                       67
% 3.67/0.98  prep_upred:                             0
% 3.67/0.98  prep_unflattend:                        0
% 3.67/0.98  smt_new_axioms:                         0
% 3.67/0.98  pred_elim_cands:                        1
% 3.67/0.98  pred_elim:                              0
% 3.67/0.98  pred_elim_cl:                           0
% 3.67/0.98  pred_elim_cycles:                       1
% 3.67/0.98  merged_defs:                            12
% 3.67/0.98  merged_defs_ncl:                        0
% 3.67/0.98  bin_hyper_res:                          12
% 3.67/0.98  prep_cycles:                            3
% 3.67/0.98  pred_elim_time:                         0.
% 3.67/0.98  splitting_time:                         0.
% 3.67/0.98  sem_filter_time:                        0.
% 3.67/0.98  monotx_time:                            0.
% 3.67/0.98  subtype_inf_time:                       0.
% 3.67/0.98  
% 3.67/0.98  ------ Problem properties
% 3.67/0.98  
% 3.67/0.98  clauses:                                18
% 3.67/0.98  conjectures:                            2
% 3.67/0.98  epr:                                    0
% 3.67/0.98  horn:                                   11
% 3.67/0.98  ground:                                 2
% 3.67/0.98  unary:                                  3
% 3.67/0.98  binary:                                 7
% 3.67/0.98  lits:                                   42
% 3.67/0.98  lits_eq:                                11
% 3.67/0.98  fd_pure:                                0
% 3.67/0.98  fd_pseudo:                              0
% 3.67/0.98  fd_cond:                                1
% 3.67/0.98  fd_pseudo_cond:                         3
% 3.67/0.98  ac_symbols:                             0
% 3.67/0.98  
% 3.67/0.98  ------ Propositional Solver
% 3.67/0.98  
% 3.67/0.98  prop_solver_calls:                      27
% 3.67/0.98  prop_fast_solver_calls:                 580
% 3.67/0.98  smt_solver_calls:                       0
% 3.67/0.98  smt_fast_solver_calls:                  0
% 3.67/0.98  prop_num_of_clauses:                    3852
% 3.67/0.98  prop_preprocess_simplified:             8005
% 3.67/0.98  prop_fo_subsumed:                       15
% 3.67/0.98  prop_solver_time:                       0.
% 3.67/0.98  smt_solver_time:                        0.
% 3.67/0.98  smt_fast_solver_time:                   0.
% 3.67/0.98  prop_fast_solver_time:                  0.
% 3.67/0.98  prop_unsat_core_time:                   0.
% 3.67/0.98  
% 3.67/0.98  ------ QBF
% 3.67/0.98  
% 3.67/0.98  qbf_q_res:                              0
% 3.67/0.98  qbf_num_tautologies:                    0
% 3.67/0.98  qbf_prep_cycles:                        0
% 3.67/0.98  
% 3.67/0.98  ------ BMC1
% 3.67/0.98  
% 3.67/0.98  bmc1_current_bound:                     -1
% 3.67/0.98  bmc1_last_solved_bound:                 -1
% 3.67/0.98  bmc1_unsat_core_size:                   -1
% 3.67/0.98  bmc1_unsat_core_parents_size:           -1
% 3.67/0.98  bmc1_merge_next_fun:                    0
% 3.67/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.67/0.98  
% 3.67/0.98  ------ Instantiation
% 3.67/0.98  
% 3.67/0.98  inst_num_of_clauses:                    836
% 3.67/0.98  inst_num_in_passive:                    564
% 3.67/0.98  inst_num_in_active:                     270
% 3.67/0.98  inst_num_in_unprocessed:                2
% 3.67/0.98  inst_num_of_loops:                      440
% 3.67/0.98  inst_num_of_learning_restarts:          0
% 3.67/0.98  inst_num_moves_active_passive:          168
% 3.67/0.98  inst_lit_activity:                      0
% 3.67/0.98  inst_lit_activity_moves:                0
% 3.67/0.98  inst_num_tautologies:                   0
% 3.67/0.98  inst_num_prop_implied:                  0
% 3.67/0.98  inst_num_existing_simplified:           0
% 3.67/0.98  inst_num_eq_res_simplified:             0
% 3.67/0.98  inst_num_child_elim:                    0
% 3.67/0.98  inst_num_of_dismatching_blockings:      279
% 3.67/0.98  inst_num_of_non_proper_insts:           936
% 3.67/0.98  inst_num_of_duplicates:                 0
% 3.67/0.98  inst_inst_num_from_inst_to_res:         0
% 3.67/0.98  inst_dismatching_checking_time:         0.
% 3.67/0.98  
% 3.67/0.98  ------ Resolution
% 3.67/0.98  
% 3.67/0.98  res_num_of_clauses:                     0
% 3.67/0.98  res_num_in_passive:                     0
% 3.67/0.98  res_num_in_active:                      0
% 3.67/0.98  res_num_of_loops:                       70
% 3.67/0.98  res_forward_subset_subsumed:            20
% 3.67/0.98  res_backward_subset_subsumed:           0
% 3.67/0.98  res_forward_subsumed:                   0
% 3.67/0.98  res_backward_subsumed:                  0
% 3.67/0.98  res_forward_subsumption_resolution:     0
% 3.67/0.98  res_backward_subsumption_resolution:    0
% 3.67/0.98  res_clause_to_clause_subsumption:       1922
% 3.67/0.98  res_orphan_elimination:                 0
% 3.67/0.98  res_tautology_del:                      133
% 3.67/0.98  res_num_eq_res_simplified:              0
% 3.67/0.98  res_num_sel_changes:                    0
% 3.67/0.98  res_moves_from_active_to_pass:          0
% 3.67/0.98  
% 3.67/0.98  ------ Superposition
% 3.67/0.98  
% 3.67/0.98  sup_time_total:                         0.
% 3.67/0.98  sup_time_generating:                    0.
% 3.67/0.98  sup_time_sim_full:                      0.
% 3.67/0.98  sup_time_sim_immed:                     0.
% 3.67/0.98  
% 3.67/0.98  sup_num_of_clauses:                     272
% 3.67/0.98  sup_num_in_active:                      31
% 3.67/0.98  sup_num_in_passive:                     241
% 3.67/0.98  sup_num_of_loops:                       86
% 3.67/0.98  sup_fw_superposition:                   563
% 3.67/0.98  sup_bw_superposition:                   294
% 3.67/0.98  sup_immediate_simplified:               331
% 3.67/0.98  sup_given_eliminated:                   12
% 3.67/0.98  comparisons_done:                       0
% 3.67/0.98  comparisons_avoided:                    33
% 3.67/0.98  
% 3.67/0.98  ------ Simplifications
% 3.67/0.98  
% 3.67/0.98  
% 3.67/0.98  sim_fw_subset_subsumed:                 31
% 3.67/0.98  sim_bw_subset_subsumed:                 69
% 3.67/0.98  sim_fw_subsumed:                        51
% 3.67/0.98  sim_bw_subsumed:                        22
% 3.67/0.98  sim_fw_subsumption_res:                 0
% 3.67/0.98  sim_bw_subsumption_res:                 0
% 3.67/0.98  sim_tautology_del:                      53
% 3.67/0.98  sim_eq_tautology_del:                   54
% 3.67/0.98  sim_eq_res_simp:                        2
% 3.67/0.98  sim_fw_demodulated:                     260
% 3.67/0.98  sim_bw_demodulated:                     42
% 3.67/0.98  sim_light_normalised:                   84
% 3.67/0.98  sim_joinable_taut:                      0
% 3.67/0.98  sim_joinable_simp:                      0
% 3.67/0.98  sim_ac_normalised:                      0
% 3.67/0.98  sim_smt_subsumption:                    0
% 3.67/0.98  
%------------------------------------------------------------------------------
