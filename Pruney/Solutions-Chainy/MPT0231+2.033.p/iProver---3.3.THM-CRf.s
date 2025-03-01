%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:31:09 EST 2020

% Result     : Theorem 2.54s
% Output     : CNFRefutation 2.54s
% Verified   : 
% Statistics : Number of formulae       :  108 ( 620 expanded)
%              Number of clauses        :   42 (  51 expanded)
%              Number of leaves         :   23 ( 201 expanded)
%              Depth                    :   20
%              Number of atoms          :  213 ( 774 expanded)
%              Number of equality atoms :  142 ( 686 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :    9 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f3])).

fof(f30,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK1(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f25,f30])).

fof(f40,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f20,conjecture,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_tarski(X0,X1),k1_tarski(X2))
     => X0 = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( r1_tarski(k2_tarski(X0,X1),k1_tarski(X2))
       => X0 = X2 ) ),
    inference(negated_conjecture,[],[f20])).

fof(f27,plain,(
    ? [X0,X1,X2] :
      ( X0 != X2
      & r1_tarski(k2_tarski(X0,X1),k1_tarski(X2)) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f35,plain,
    ( ? [X0,X1,X2] :
        ( X0 != X2
        & r1_tarski(k2_tarski(X0,X1),k1_tarski(X2)) )
   => ( sK2 != sK4
      & r1_tarski(k2_tarski(sK2,sK3),k1_tarski(sK4)) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( sK2 != sK4
    & r1_tarski(k2_tarski(sK2,sK3),k1_tarski(sK4)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f27,f35])).

fof(f60,plain,(
    r1_tarski(k2_tarski(sK2,sK3),k1_tarski(sK4)) ),
    inference(cnf_transformation,[],[f36])).

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

fof(f12,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f12])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f13])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f14])).

fof(f62,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f50,f51])).

fof(f63,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f49,f62])).

fof(f64,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f48,f63])).

fof(f65,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f47,f64])).

fof(f66,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f46,f65])).

fof(f67,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f45,f66])).

fof(f80,plain,(
    r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) ),
    inference(definition_unfolding,[],[f60,f66,f67])).

fof(f15,axiom,(
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
    inference(nnf_transformation,[],[f15])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(flattening,[],[f32])).

fof(f52,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f74,plain,(
    ! [X0,X1] :
      ( k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) ) ),
    inference(definition_unfolding,[],[f52,f67,f67])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
    <=> X0 != X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
        | X0 = X1 )
      & ( X0 != X1
        | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0) ) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f58,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f34])).

fof(f77,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
      | X0 = X1 ) ),
    inference(definition_unfolding,[],[f58,f67,f67,f67])).

fof(f17,axiom,(
    ! [X0,X1] : k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0,X1] : k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f76,plain,(
    ! [X0,X1] : k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f56,f42,f67,f66,f67])).

fof(f61,plain,(
    sK2 != sK4 ),
    inference(cnf_transformation,[],[f36])).

fof(f57,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f78,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ) ),
    inference(definition_unfolding,[],[f57,f67,f67,f67])).

fof(f83,plain,(
    ! [X1] : k4_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
    inference(equality_resolution,[],[f78])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f2])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f28,plain,(
    ! [X1,X0] :
      ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
     => r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f28])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f70,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ) ),
    inference(definition_unfolding,[],[f39,f42])).

fof(f7,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f7])).

fof(f19,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),k1_tarski(X1))
     => X0 = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(k1_tarski(X0),k1_tarski(X1)) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f59,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(k1_tarski(X0),k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f79,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) ) ),
    inference(definition_unfolding,[],[f59,f67,f67])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f73,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
      | k1_xboole_0 != X0 ) ),
    inference(definition_unfolding,[],[f53,f67])).

fof(f82,plain,(
    ! [X1] : r1_tarski(k1_xboole_0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) ),
    inference(equality_resolution,[],[f73])).

cnf(c_4,plain,
    ( r2_hidden(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_483,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_16,negated_conjecture,
    ( r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_476,plain,
    ( r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_9,plain,
    ( ~ r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_479,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
    | k1_xboole_0 = X1
    | r1_tarski(X1,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1297,plain,
    ( k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3)
    | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_476,c_479])).

cnf(c_12,plain,
    ( X0 = X1
    | k4_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1689,plain,
    ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0
    | k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
    | sK4 = X0 ),
    inference(superposition,[status(thm)],[c_1297,c_12])).

cnf(c_11,plain,
    ( k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_2566,plain,
    ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0
    | k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)
    | sK4 = sK2 ),
    inference(superposition,[status(thm)],[c_1689,c_11])).

cnf(c_15,negated_conjecture,
    ( sK2 != sK4 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_274,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_554,plain,
    ( sK4 != X0
    | sK2 != X0
    | sK2 = sK4 ),
    inference(instantiation,[status(thm)],[c_274])).

cnf(c_645,plain,
    ( sK4 != sK2
    | sK2 = sK4
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_554])).

cnf(c_273,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_646,plain,
    ( sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_273])).

cnf(c_2786,plain,
    ( k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)
    | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2566,c_15,c_645,c_646])).

cnf(c_2787,plain,
    ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0
    | k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
    inference(renaming,[status(thm)],[c_2786])).

cnf(c_13,plain,
    ( k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_2790,plain,
    ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2787,c_13])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2)))
    | ~ r1_xboole_0(X1,X2) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_485,plain,
    ( r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) != iProver_top
    | r1_xboole_0(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1100,plain,
    ( r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top
    | r1_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_11,c_485])).

cnf(c_2796,plain,
    ( r2_hidden(X0,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top
    | r1_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2790,c_1100])).

cnf(c_6,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_482,plain,
    ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_3105,plain,
    ( r2_hidden(X0,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2796,c_482])).

cnf(c_3109,plain,
    ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_483,c_3105])).

cnf(c_280,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_558,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k1_xboole_0,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))
    | X1 != k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)
    | X0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_280])).

cnf(c_1179,plain,
    ( r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))
    | ~ r1_tarski(k1_xboole_0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))
    | k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
    | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_558])).

cnf(c_1182,plain,
    ( r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))
    | ~ r1_tarski(k1_xboole_0,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))
    | k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) != k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)
    | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1179])).

cnf(c_14,plain,
    ( ~ r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | X1 = X0 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_716,plain,
    ( ~ r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))
    | sK4 = sK2 ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_279,plain,
    ( X0 != X1
    | X2 != X3
    | X4 != X5
    | X6 != X7
    | X8 != X9
    | X10 != X11
    | X12 != X13
    | X14 != X15
    | k6_enumset1(X0,X2,X4,X6,X8,X10,X12,X14) = k6_enumset1(X1,X3,X5,X7,X9,X11,X13,X15) ),
    theory(equality)).

cnf(c_285,plain,
    ( k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) = k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)
    | sK4 != sK4 ),
    inference(instantiation,[status(thm)],[c_279])).

cnf(c_8,plain,
    ( r1_tarski(k1_xboole_0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_31,plain,
    ( r1_tarski(k1_xboole_0,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_22,plain,
    ( k4_xboole_0(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) = k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)
    | sK4 = sK4 ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_21,plain,
    ( k4_xboole_0(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3109,c_1182,c_716,c_646,c_645,c_285,c_31,c_22,c_21,c_15])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n009.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:49:56 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.54/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.54/1.00  
% 2.54/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.54/1.00  
% 2.54/1.00  ------  iProver source info
% 2.54/1.00  
% 2.54/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.54/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.54/1.00  git: non_committed_changes: false
% 2.54/1.00  git: last_make_outside_of_git: false
% 2.54/1.00  
% 2.54/1.00  ------ 
% 2.54/1.00  
% 2.54/1.00  ------ Input Options
% 2.54/1.00  
% 2.54/1.00  --out_options                           all
% 2.54/1.00  --tptp_safe_out                         true
% 2.54/1.00  --problem_path                          ""
% 2.54/1.00  --include_path                          ""
% 2.54/1.00  --clausifier                            res/vclausify_rel
% 2.54/1.00  --clausifier_options                    --mode clausify
% 2.54/1.00  --stdin                                 false
% 2.54/1.00  --stats_out                             all
% 2.54/1.00  
% 2.54/1.00  ------ General Options
% 2.54/1.00  
% 2.54/1.00  --fof                                   false
% 2.54/1.00  --time_out_real                         305.
% 2.54/1.00  --time_out_virtual                      -1.
% 2.54/1.00  --symbol_type_check                     false
% 2.54/1.00  --clausify_out                          false
% 2.54/1.00  --sig_cnt_out                           false
% 2.54/1.00  --trig_cnt_out                          false
% 2.54/1.00  --trig_cnt_out_tolerance                1.
% 2.54/1.00  --trig_cnt_out_sk_spl                   false
% 2.54/1.00  --abstr_cl_out                          false
% 2.54/1.00  
% 2.54/1.00  ------ Global Options
% 2.54/1.00  
% 2.54/1.00  --schedule                              default
% 2.54/1.00  --add_important_lit                     false
% 2.54/1.00  --prop_solver_per_cl                    1000
% 2.54/1.00  --min_unsat_core                        false
% 2.54/1.00  --soft_assumptions                      false
% 2.54/1.00  --soft_lemma_size                       3
% 2.54/1.00  --prop_impl_unit_size                   0
% 2.54/1.00  --prop_impl_unit                        []
% 2.54/1.00  --share_sel_clauses                     true
% 2.54/1.00  --reset_solvers                         false
% 2.54/1.00  --bc_imp_inh                            [conj_cone]
% 2.54/1.00  --conj_cone_tolerance                   3.
% 2.54/1.00  --extra_neg_conj                        none
% 2.54/1.00  --large_theory_mode                     true
% 2.54/1.00  --prolific_symb_bound                   200
% 2.54/1.00  --lt_threshold                          2000
% 2.54/1.00  --clause_weak_htbl                      true
% 2.54/1.00  --gc_record_bc_elim                     false
% 2.54/1.00  
% 2.54/1.00  ------ Preprocessing Options
% 2.54/1.00  
% 2.54/1.00  --preprocessing_flag                    true
% 2.54/1.00  --time_out_prep_mult                    0.1
% 2.54/1.00  --splitting_mode                        input
% 2.54/1.00  --splitting_grd                         true
% 2.54/1.00  --splitting_cvd                         false
% 2.54/1.00  --splitting_cvd_svl                     false
% 2.54/1.00  --splitting_nvd                         32
% 2.54/1.00  --sub_typing                            true
% 2.54/1.00  --prep_gs_sim                           true
% 2.54/1.00  --prep_unflatten                        true
% 2.54/1.00  --prep_res_sim                          true
% 2.54/1.00  --prep_upred                            true
% 2.54/1.00  --prep_sem_filter                       exhaustive
% 2.54/1.00  --prep_sem_filter_out                   false
% 2.54/1.00  --pred_elim                             true
% 2.54/1.00  --res_sim_input                         true
% 2.54/1.00  --eq_ax_congr_red                       true
% 2.54/1.00  --pure_diseq_elim                       true
% 2.54/1.00  --brand_transform                       false
% 2.54/1.00  --non_eq_to_eq                          false
% 2.54/1.00  --prep_def_merge                        true
% 2.54/1.00  --prep_def_merge_prop_impl              false
% 2.54/1.00  --prep_def_merge_mbd                    true
% 2.54/1.00  --prep_def_merge_tr_red                 false
% 2.54/1.00  --prep_def_merge_tr_cl                  false
% 2.54/1.00  --smt_preprocessing                     true
% 2.54/1.00  --smt_ac_axioms                         fast
% 2.54/1.00  --preprocessed_out                      false
% 2.54/1.00  --preprocessed_stats                    false
% 2.54/1.00  
% 2.54/1.00  ------ Abstraction refinement Options
% 2.54/1.00  
% 2.54/1.00  --abstr_ref                             []
% 2.54/1.00  --abstr_ref_prep                        false
% 2.54/1.00  --abstr_ref_until_sat                   false
% 2.54/1.00  --abstr_ref_sig_restrict                funpre
% 2.54/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.54/1.00  --abstr_ref_under                       []
% 2.54/1.00  
% 2.54/1.00  ------ SAT Options
% 2.54/1.00  
% 2.54/1.00  --sat_mode                              false
% 2.54/1.00  --sat_fm_restart_options                ""
% 2.54/1.00  --sat_gr_def                            false
% 2.54/1.00  --sat_epr_types                         true
% 2.54/1.00  --sat_non_cyclic_types                  false
% 2.54/1.00  --sat_finite_models                     false
% 2.54/1.00  --sat_fm_lemmas                         false
% 2.54/1.00  --sat_fm_prep                           false
% 2.54/1.00  --sat_fm_uc_incr                        true
% 2.54/1.00  --sat_out_model                         small
% 2.54/1.00  --sat_out_clauses                       false
% 2.54/1.00  
% 2.54/1.00  ------ QBF Options
% 2.54/1.00  
% 2.54/1.00  --qbf_mode                              false
% 2.54/1.00  --qbf_elim_univ                         false
% 2.54/1.00  --qbf_dom_inst                          none
% 2.54/1.00  --qbf_dom_pre_inst                      false
% 2.54/1.00  --qbf_sk_in                             false
% 2.54/1.00  --qbf_pred_elim                         true
% 2.54/1.00  --qbf_split                             512
% 2.54/1.00  
% 2.54/1.00  ------ BMC1 Options
% 2.54/1.00  
% 2.54/1.00  --bmc1_incremental                      false
% 2.54/1.00  --bmc1_axioms                           reachable_all
% 2.54/1.00  --bmc1_min_bound                        0
% 2.54/1.00  --bmc1_max_bound                        -1
% 2.54/1.00  --bmc1_max_bound_default                -1
% 2.54/1.00  --bmc1_symbol_reachability              true
% 2.54/1.00  --bmc1_property_lemmas                  false
% 2.54/1.00  --bmc1_k_induction                      false
% 2.54/1.00  --bmc1_non_equiv_states                 false
% 2.54/1.00  --bmc1_deadlock                         false
% 2.54/1.00  --bmc1_ucm                              false
% 2.54/1.00  --bmc1_add_unsat_core                   none
% 2.54/1.00  --bmc1_unsat_core_children              false
% 2.54/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.54/1.00  --bmc1_out_stat                         full
% 2.54/1.00  --bmc1_ground_init                      false
% 2.54/1.00  --bmc1_pre_inst_next_state              false
% 2.54/1.00  --bmc1_pre_inst_state                   false
% 2.54/1.00  --bmc1_pre_inst_reach_state             false
% 2.54/1.00  --bmc1_out_unsat_core                   false
% 2.54/1.00  --bmc1_aig_witness_out                  false
% 2.54/1.00  --bmc1_verbose                          false
% 2.54/1.00  --bmc1_dump_clauses_tptp                false
% 2.54/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.54/1.00  --bmc1_dump_file                        -
% 2.54/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.54/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.54/1.00  --bmc1_ucm_extend_mode                  1
% 2.54/1.00  --bmc1_ucm_init_mode                    2
% 2.54/1.00  --bmc1_ucm_cone_mode                    none
% 2.54/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.54/1.00  --bmc1_ucm_relax_model                  4
% 2.54/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.54/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.54/1.00  --bmc1_ucm_layered_model                none
% 2.54/1.00  --bmc1_ucm_max_lemma_size               10
% 2.54/1.00  
% 2.54/1.00  ------ AIG Options
% 2.54/1.00  
% 2.54/1.00  --aig_mode                              false
% 2.54/1.00  
% 2.54/1.00  ------ Instantiation Options
% 2.54/1.00  
% 2.54/1.00  --instantiation_flag                    true
% 2.54/1.00  --inst_sos_flag                         false
% 2.54/1.00  --inst_sos_phase                        true
% 2.54/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.54/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.54/1.00  --inst_lit_sel_side                     num_symb
% 2.54/1.00  --inst_solver_per_active                1400
% 2.54/1.00  --inst_solver_calls_frac                1.
% 2.54/1.00  --inst_passive_queue_type               priority_queues
% 2.54/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.54/1.00  --inst_passive_queues_freq              [25;2]
% 2.54/1.00  --inst_dismatching                      true
% 2.54/1.00  --inst_eager_unprocessed_to_passive     true
% 2.54/1.00  --inst_prop_sim_given                   true
% 2.54/1.00  --inst_prop_sim_new                     false
% 2.54/1.00  --inst_subs_new                         false
% 2.54/1.00  --inst_eq_res_simp                      false
% 2.54/1.00  --inst_subs_given                       false
% 2.54/1.00  --inst_orphan_elimination               true
% 2.54/1.00  --inst_learning_loop_flag               true
% 2.54/1.00  --inst_learning_start                   3000
% 2.54/1.00  --inst_learning_factor                  2
% 2.54/1.00  --inst_start_prop_sim_after_learn       3
% 2.54/1.00  --inst_sel_renew                        solver
% 2.54/1.00  --inst_lit_activity_flag                true
% 2.54/1.00  --inst_restr_to_given                   false
% 2.54/1.00  --inst_activity_threshold               500
% 2.54/1.00  --inst_out_proof                        true
% 2.54/1.00  
% 2.54/1.00  ------ Resolution Options
% 2.54/1.00  
% 2.54/1.00  --resolution_flag                       true
% 2.54/1.00  --res_lit_sel                           adaptive
% 2.54/1.00  --res_lit_sel_side                      none
% 2.54/1.00  --res_ordering                          kbo
% 2.54/1.00  --res_to_prop_solver                    active
% 2.54/1.00  --res_prop_simpl_new                    false
% 2.54/1.00  --res_prop_simpl_given                  true
% 2.54/1.00  --res_passive_queue_type                priority_queues
% 2.54/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.54/1.00  --res_passive_queues_freq               [15;5]
% 2.54/1.00  --res_forward_subs                      full
% 2.54/1.00  --res_backward_subs                     full
% 2.54/1.00  --res_forward_subs_resolution           true
% 2.54/1.00  --res_backward_subs_resolution          true
% 2.54/1.00  --res_orphan_elimination                true
% 2.54/1.00  --res_time_limit                        2.
% 2.54/1.00  --res_out_proof                         true
% 2.54/1.00  
% 2.54/1.00  ------ Superposition Options
% 2.54/1.00  
% 2.54/1.00  --superposition_flag                    true
% 2.54/1.00  --sup_passive_queue_type                priority_queues
% 2.54/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.54/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.54/1.00  --demod_completeness_check              fast
% 2.54/1.00  --demod_use_ground                      true
% 2.54/1.00  --sup_to_prop_solver                    passive
% 2.54/1.00  --sup_prop_simpl_new                    true
% 2.54/1.00  --sup_prop_simpl_given                  true
% 2.54/1.00  --sup_fun_splitting                     false
% 2.54/1.00  --sup_smt_interval                      50000
% 2.54/1.00  
% 2.54/1.00  ------ Superposition Simplification Setup
% 2.54/1.00  
% 2.54/1.00  --sup_indices_passive                   []
% 2.54/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.54/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.54/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.54/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.54/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.54/1.00  --sup_full_bw                           [BwDemod]
% 2.54/1.00  --sup_immed_triv                        [TrivRules]
% 2.54/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.54/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.54/1.00  --sup_immed_bw_main                     []
% 2.54/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.54/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.54/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.54/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.54/1.00  
% 2.54/1.00  ------ Combination Options
% 2.54/1.00  
% 2.54/1.00  --comb_res_mult                         3
% 2.54/1.00  --comb_sup_mult                         2
% 2.54/1.00  --comb_inst_mult                        10
% 2.54/1.00  
% 2.54/1.00  ------ Debug Options
% 2.54/1.00  
% 2.54/1.00  --dbg_backtrace                         false
% 2.54/1.00  --dbg_dump_prop_clauses                 false
% 2.54/1.00  --dbg_dump_prop_clauses_file            -
% 2.54/1.00  --dbg_out_stat                          false
% 2.54/1.00  ------ Parsing...
% 2.54/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.54/1.00  
% 2.54/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.54/1.00  
% 2.54/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.54/1.00  
% 2.54/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.54/1.00  ------ Proving...
% 2.54/1.00  ------ Problem Properties 
% 2.54/1.00  
% 2.54/1.00  
% 2.54/1.00  clauses                                 17
% 2.54/1.00  conjectures                             2
% 2.54/1.00  EPR                                     2
% 2.54/1.00  Horn                                    13
% 2.54/1.00  unary                                   11
% 2.54/1.00  binary                                  5
% 2.54/1.00  lits                                    24
% 2.54/1.00  lits eq                                 12
% 2.54/1.00  fd_pure                                 0
% 2.54/1.00  fd_pseudo                               0
% 2.54/1.00  fd_cond                                 1
% 2.54/1.00  fd_pseudo_cond                          3
% 2.54/1.00  AC symbols                              0
% 2.54/1.00  
% 2.54/1.00  ------ Schedule dynamic 5 is on 
% 2.54/1.00  
% 2.54/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.54/1.00  
% 2.54/1.00  
% 2.54/1.00  ------ 
% 2.54/1.00  Current options:
% 2.54/1.00  ------ 
% 2.54/1.00  
% 2.54/1.00  ------ Input Options
% 2.54/1.00  
% 2.54/1.00  --out_options                           all
% 2.54/1.00  --tptp_safe_out                         true
% 2.54/1.00  --problem_path                          ""
% 2.54/1.00  --include_path                          ""
% 2.54/1.00  --clausifier                            res/vclausify_rel
% 2.54/1.00  --clausifier_options                    --mode clausify
% 2.54/1.00  --stdin                                 false
% 2.54/1.00  --stats_out                             all
% 2.54/1.00  
% 2.54/1.00  ------ General Options
% 2.54/1.00  
% 2.54/1.00  --fof                                   false
% 2.54/1.00  --time_out_real                         305.
% 2.54/1.00  --time_out_virtual                      -1.
% 2.54/1.00  --symbol_type_check                     false
% 2.54/1.00  --clausify_out                          false
% 2.54/1.00  --sig_cnt_out                           false
% 2.54/1.00  --trig_cnt_out                          false
% 2.54/1.00  --trig_cnt_out_tolerance                1.
% 2.54/1.00  --trig_cnt_out_sk_spl                   false
% 2.54/1.00  --abstr_cl_out                          false
% 2.54/1.00  
% 2.54/1.00  ------ Global Options
% 2.54/1.00  
% 2.54/1.00  --schedule                              default
% 2.54/1.00  --add_important_lit                     false
% 2.54/1.00  --prop_solver_per_cl                    1000
% 2.54/1.00  --min_unsat_core                        false
% 2.54/1.00  --soft_assumptions                      false
% 2.54/1.00  --soft_lemma_size                       3
% 2.54/1.00  --prop_impl_unit_size                   0
% 2.54/1.00  --prop_impl_unit                        []
% 2.54/1.00  --share_sel_clauses                     true
% 2.54/1.00  --reset_solvers                         false
% 2.54/1.00  --bc_imp_inh                            [conj_cone]
% 2.54/1.00  --conj_cone_tolerance                   3.
% 2.54/1.00  --extra_neg_conj                        none
% 2.54/1.00  --large_theory_mode                     true
% 2.54/1.00  --prolific_symb_bound                   200
% 2.54/1.00  --lt_threshold                          2000
% 2.54/1.00  --clause_weak_htbl                      true
% 2.54/1.00  --gc_record_bc_elim                     false
% 2.54/1.00  
% 2.54/1.00  ------ Preprocessing Options
% 2.54/1.00  
% 2.54/1.00  --preprocessing_flag                    true
% 2.54/1.00  --time_out_prep_mult                    0.1
% 2.54/1.00  --splitting_mode                        input
% 2.54/1.00  --splitting_grd                         true
% 2.54/1.00  --splitting_cvd                         false
% 2.54/1.00  --splitting_cvd_svl                     false
% 2.54/1.00  --splitting_nvd                         32
% 2.54/1.00  --sub_typing                            true
% 2.54/1.00  --prep_gs_sim                           true
% 2.54/1.00  --prep_unflatten                        true
% 2.54/1.00  --prep_res_sim                          true
% 2.54/1.00  --prep_upred                            true
% 2.54/1.00  --prep_sem_filter                       exhaustive
% 2.54/1.00  --prep_sem_filter_out                   false
% 2.54/1.00  --pred_elim                             true
% 2.54/1.00  --res_sim_input                         true
% 2.54/1.00  --eq_ax_congr_red                       true
% 2.54/1.00  --pure_diseq_elim                       true
% 2.54/1.00  --brand_transform                       false
% 2.54/1.00  --non_eq_to_eq                          false
% 2.54/1.00  --prep_def_merge                        true
% 2.54/1.00  --prep_def_merge_prop_impl              false
% 2.54/1.00  --prep_def_merge_mbd                    true
% 2.54/1.00  --prep_def_merge_tr_red                 false
% 2.54/1.00  --prep_def_merge_tr_cl                  false
% 2.54/1.00  --smt_preprocessing                     true
% 2.54/1.00  --smt_ac_axioms                         fast
% 2.54/1.00  --preprocessed_out                      false
% 2.54/1.00  --preprocessed_stats                    false
% 2.54/1.00  
% 2.54/1.00  ------ Abstraction refinement Options
% 2.54/1.00  
% 2.54/1.00  --abstr_ref                             []
% 2.54/1.00  --abstr_ref_prep                        false
% 2.54/1.00  --abstr_ref_until_sat                   false
% 2.54/1.00  --abstr_ref_sig_restrict                funpre
% 2.54/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.54/1.00  --abstr_ref_under                       []
% 2.54/1.00  
% 2.54/1.00  ------ SAT Options
% 2.54/1.00  
% 2.54/1.00  --sat_mode                              false
% 2.54/1.00  --sat_fm_restart_options                ""
% 2.54/1.00  --sat_gr_def                            false
% 2.54/1.00  --sat_epr_types                         true
% 2.54/1.00  --sat_non_cyclic_types                  false
% 2.54/1.00  --sat_finite_models                     false
% 2.54/1.00  --sat_fm_lemmas                         false
% 2.54/1.00  --sat_fm_prep                           false
% 2.54/1.00  --sat_fm_uc_incr                        true
% 2.54/1.00  --sat_out_model                         small
% 2.54/1.00  --sat_out_clauses                       false
% 2.54/1.00  
% 2.54/1.00  ------ QBF Options
% 2.54/1.00  
% 2.54/1.00  --qbf_mode                              false
% 2.54/1.00  --qbf_elim_univ                         false
% 2.54/1.00  --qbf_dom_inst                          none
% 2.54/1.00  --qbf_dom_pre_inst                      false
% 2.54/1.00  --qbf_sk_in                             false
% 2.54/1.00  --qbf_pred_elim                         true
% 2.54/1.00  --qbf_split                             512
% 2.54/1.00  
% 2.54/1.00  ------ BMC1 Options
% 2.54/1.00  
% 2.54/1.00  --bmc1_incremental                      false
% 2.54/1.00  --bmc1_axioms                           reachable_all
% 2.54/1.00  --bmc1_min_bound                        0
% 2.54/1.00  --bmc1_max_bound                        -1
% 2.54/1.00  --bmc1_max_bound_default                -1
% 2.54/1.00  --bmc1_symbol_reachability              true
% 2.54/1.00  --bmc1_property_lemmas                  false
% 2.54/1.01  --bmc1_k_induction                      false
% 2.54/1.01  --bmc1_non_equiv_states                 false
% 2.54/1.01  --bmc1_deadlock                         false
% 2.54/1.01  --bmc1_ucm                              false
% 2.54/1.01  --bmc1_add_unsat_core                   none
% 2.54/1.01  --bmc1_unsat_core_children              false
% 2.54/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.54/1.01  --bmc1_out_stat                         full
% 2.54/1.01  --bmc1_ground_init                      false
% 2.54/1.01  --bmc1_pre_inst_next_state              false
% 2.54/1.01  --bmc1_pre_inst_state                   false
% 2.54/1.01  --bmc1_pre_inst_reach_state             false
% 2.54/1.01  --bmc1_out_unsat_core                   false
% 2.54/1.01  --bmc1_aig_witness_out                  false
% 2.54/1.01  --bmc1_verbose                          false
% 2.54/1.01  --bmc1_dump_clauses_tptp                false
% 2.54/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.54/1.01  --bmc1_dump_file                        -
% 2.54/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.54/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.54/1.01  --bmc1_ucm_extend_mode                  1
% 2.54/1.01  --bmc1_ucm_init_mode                    2
% 2.54/1.01  --bmc1_ucm_cone_mode                    none
% 2.54/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.54/1.01  --bmc1_ucm_relax_model                  4
% 2.54/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.54/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.54/1.01  --bmc1_ucm_layered_model                none
% 2.54/1.01  --bmc1_ucm_max_lemma_size               10
% 2.54/1.01  
% 2.54/1.01  ------ AIG Options
% 2.54/1.01  
% 2.54/1.01  --aig_mode                              false
% 2.54/1.01  
% 2.54/1.01  ------ Instantiation Options
% 2.54/1.01  
% 2.54/1.01  --instantiation_flag                    true
% 2.54/1.01  --inst_sos_flag                         false
% 2.54/1.01  --inst_sos_phase                        true
% 2.54/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.54/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.54/1.01  --inst_lit_sel_side                     none
% 2.54/1.01  --inst_solver_per_active                1400
% 2.54/1.01  --inst_solver_calls_frac                1.
% 2.54/1.01  --inst_passive_queue_type               priority_queues
% 2.54/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.54/1.01  --inst_passive_queues_freq              [25;2]
% 2.54/1.01  --inst_dismatching                      true
% 2.54/1.01  --inst_eager_unprocessed_to_passive     true
% 2.54/1.01  --inst_prop_sim_given                   true
% 2.54/1.01  --inst_prop_sim_new                     false
% 2.54/1.01  --inst_subs_new                         false
% 2.54/1.01  --inst_eq_res_simp                      false
% 2.54/1.01  --inst_subs_given                       false
% 2.54/1.01  --inst_orphan_elimination               true
% 2.54/1.01  --inst_learning_loop_flag               true
% 2.54/1.01  --inst_learning_start                   3000
% 2.54/1.01  --inst_learning_factor                  2
% 2.54/1.01  --inst_start_prop_sim_after_learn       3
% 2.54/1.01  --inst_sel_renew                        solver
% 2.54/1.01  --inst_lit_activity_flag                true
% 2.54/1.01  --inst_restr_to_given                   false
% 2.54/1.01  --inst_activity_threshold               500
% 2.54/1.01  --inst_out_proof                        true
% 2.54/1.01  
% 2.54/1.01  ------ Resolution Options
% 2.54/1.01  
% 2.54/1.01  --resolution_flag                       false
% 2.54/1.01  --res_lit_sel                           adaptive
% 2.54/1.01  --res_lit_sel_side                      none
% 2.54/1.01  --res_ordering                          kbo
% 2.54/1.01  --res_to_prop_solver                    active
% 2.54/1.01  --res_prop_simpl_new                    false
% 2.54/1.01  --res_prop_simpl_given                  true
% 2.54/1.01  --res_passive_queue_type                priority_queues
% 2.54/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.54/1.01  --res_passive_queues_freq               [15;5]
% 2.54/1.01  --res_forward_subs                      full
% 2.54/1.01  --res_backward_subs                     full
% 2.54/1.01  --res_forward_subs_resolution           true
% 2.54/1.01  --res_backward_subs_resolution          true
% 2.54/1.01  --res_orphan_elimination                true
% 2.54/1.01  --res_time_limit                        2.
% 2.54/1.01  --res_out_proof                         true
% 2.54/1.01  
% 2.54/1.01  ------ Superposition Options
% 2.54/1.01  
% 2.54/1.01  --superposition_flag                    true
% 2.54/1.01  --sup_passive_queue_type                priority_queues
% 2.54/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.54/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.54/1.01  --demod_completeness_check              fast
% 2.54/1.01  --demod_use_ground                      true
% 2.54/1.01  --sup_to_prop_solver                    passive
% 2.54/1.01  --sup_prop_simpl_new                    true
% 2.54/1.01  --sup_prop_simpl_given                  true
% 2.54/1.01  --sup_fun_splitting                     false
% 2.54/1.01  --sup_smt_interval                      50000
% 2.54/1.01  
% 2.54/1.01  ------ Superposition Simplification Setup
% 2.54/1.01  
% 2.54/1.01  --sup_indices_passive                   []
% 2.54/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.54/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.54/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.54/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.54/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.54/1.01  --sup_full_bw                           [BwDemod]
% 2.54/1.01  --sup_immed_triv                        [TrivRules]
% 2.54/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.54/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.54/1.01  --sup_immed_bw_main                     []
% 2.54/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.54/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.54/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.54/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.54/1.01  
% 2.54/1.01  ------ Combination Options
% 2.54/1.01  
% 2.54/1.01  --comb_res_mult                         3
% 2.54/1.01  --comb_sup_mult                         2
% 2.54/1.01  --comb_inst_mult                        10
% 2.54/1.01  
% 2.54/1.01  ------ Debug Options
% 2.54/1.01  
% 2.54/1.01  --dbg_backtrace                         false
% 2.54/1.01  --dbg_dump_prop_clauses                 false
% 2.54/1.01  --dbg_dump_prop_clauses_file            -
% 2.54/1.01  --dbg_out_stat                          false
% 2.54/1.01  
% 2.54/1.01  
% 2.54/1.01  
% 2.54/1.01  
% 2.54/1.01  ------ Proving...
% 2.54/1.01  
% 2.54/1.01  
% 2.54/1.01  % SZS status Theorem for theBenchmark.p
% 2.54/1.01  
% 2.54/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 2.54/1.01  
% 2.54/1.01  fof(f3,axiom,(
% 2.54/1.01    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f25,plain,(
% 2.54/1.01    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 2.54/1.01    inference(ennf_transformation,[],[f3])).
% 2.54/1.01  
% 2.54/1.01  fof(f30,plain,(
% 2.54/1.01    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK1(X0),X0))),
% 2.54/1.01    introduced(choice_axiom,[])).
% 2.54/1.01  
% 2.54/1.01  fof(f31,plain,(
% 2.54/1.01    ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0)),
% 2.54/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f25,f30])).
% 2.54/1.01  
% 2.54/1.01  fof(f40,plain,(
% 2.54/1.01    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 2.54/1.01    inference(cnf_transformation,[],[f31])).
% 2.54/1.01  
% 2.54/1.01  fof(f20,conjecture,(
% 2.54/1.01    ! [X0,X1,X2] : (r1_tarski(k2_tarski(X0,X1),k1_tarski(X2)) => X0 = X2)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f21,negated_conjecture,(
% 2.54/1.01    ~! [X0,X1,X2] : (r1_tarski(k2_tarski(X0,X1),k1_tarski(X2)) => X0 = X2)),
% 2.54/1.01    inference(negated_conjecture,[],[f20])).
% 2.54/1.01  
% 2.54/1.01  fof(f27,plain,(
% 2.54/1.01    ? [X0,X1,X2] : (X0 != X2 & r1_tarski(k2_tarski(X0,X1),k1_tarski(X2)))),
% 2.54/1.01    inference(ennf_transformation,[],[f21])).
% 2.54/1.01  
% 2.54/1.01  fof(f35,plain,(
% 2.54/1.01    ? [X0,X1,X2] : (X0 != X2 & r1_tarski(k2_tarski(X0,X1),k1_tarski(X2))) => (sK2 != sK4 & r1_tarski(k2_tarski(sK2,sK3),k1_tarski(sK4)))),
% 2.54/1.01    introduced(choice_axiom,[])).
% 2.54/1.01  
% 2.54/1.01  fof(f36,plain,(
% 2.54/1.01    sK2 != sK4 & r1_tarski(k2_tarski(sK2,sK3),k1_tarski(sK4))),
% 2.54/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f27,f35])).
% 2.54/1.01  
% 2.54/1.01  fof(f60,plain,(
% 2.54/1.01    r1_tarski(k2_tarski(sK2,sK3),k1_tarski(sK4))),
% 2.54/1.01    inference(cnf_transformation,[],[f36])).
% 2.54/1.01  
% 2.54/1.01  fof(f8,axiom,(
% 2.54/1.01    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f45,plain,(
% 2.54/1.01    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f8])).
% 2.54/1.01  
% 2.54/1.01  fof(f9,axiom,(
% 2.54/1.01    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f46,plain,(
% 2.54/1.01    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f9])).
% 2.54/1.01  
% 2.54/1.01  fof(f10,axiom,(
% 2.54/1.01    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f47,plain,(
% 2.54/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f10])).
% 2.54/1.01  
% 2.54/1.01  fof(f11,axiom,(
% 2.54/1.01    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f48,plain,(
% 2.54/1.01    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f11])).
% 2.54/1.01  
% 2.54/1.01  fof(f12,axiom,(
% 2.54/1.01    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f49,plain,(
% 2.54/1.01    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f12])).
% 2.54/1.01  
% 2.54/1.01  fof(f13,axiom,(
% 2.54/1.01    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f50,plain,(
% 2.54/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f13])).
% 2.54/1.01  
% 2.54/1.01  fof(f14,axiom,(
% 2.54/1.01    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f51,plain,(
% 2.54/1.01    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f14])).
% 2.54/1.01  
% 2.54/1.01  fof(f62,plain,(
% 2.54/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 2.54/1.01    inference(definition_unfolding,[],[f50,f51])).
% 2.54/1.01  
% 2.54/1.01  fof(f63,plain,(
% 2.54/1.01    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 2.54/1.01    inference(definition_unfolding,[],[f49,f62])).
% 2.54/1.01  
% 2.54/1.01  fof(f64,plain,(
% 2.54/1.01    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 2.54/1.01    inference(definition_unfolding,[],[f48,f63])).
% 2.54/1.01  
% 2.54/1.01  fof(f65,plain,(
% 2.54/1.01    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 2.54/1.01    inference(definition_unfolding,[],[f47,f64])).
% 2.54/1.01  
% 2.54/1.01  fof(f66,plain,(
% 2.54/1.01    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 2.54/1.01    inference(definition_unfolding,[],[f46,f65])).
% 2.54/1.01  
% 2.54/1.01  fof(f67,plain,(
% 2.54/1.01    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 2.54/1.01    inference(definition_unfolding,[],[f45,f66])).
% 2.54/1.01  
% 2.54/1.01  fof(f80,plain,(
% 2.54/1.01    r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))),
% 2.54/1.01    inference(definition_unfolding,[],[f60,f66,f67])).
% 2.54/1.01  
% 2.54/1.01  fof(f15,axiom,(
% 2.54/1.01    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f32,plain,(
% 2.54/1.01    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k1_tarski(X1))))),
% 2.54/1.01    inference(nnf_transformation,[],[f15])).
% 2.54/1.01  
% 2.54/1.01  fof(f33,plain,(
% 2.54/1.01    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))))),
% 2.54/1.01    inference(flattening,[],[f32])).
% 2.54/1.01  
% 2.54/1.01  fof(f52,plain,(
% 2.54/1.01    ( ! [X0,X1] : (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))) )),
% 2.54/1.01    inference(cnf_transformation,[],[f33])).
% 2.54/1.01  
% 2.54/1.01  fof(f74,plain,(
% 2.54/1.01    ( ! [X0,X1] : (k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) )),
% 2.54/1.01    inference(definition_unfolding,[],[f52,f67,f67])).
% 2.54/1.01  
% 2.54/1.01  fof(f18,axiom,(
% 2.54/1.01    ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) <=> X0 != X1)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f34,plain,(
% 2.54/1.01    ! [X0,X1] : ((k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) | X0 = X1) & (X0 != X1 | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0)))),
% 2.54/1.01    inference(nnf_transformation,[],[f18])).
% 2.54/1.01  
% 2.54/1.01  fof(f58,plain,(
% 2.54/1.01    ( ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) | X0 = X1) )),
% 2.54/1.01    inference(cnf_transformation,[],[f34])).
% 2.54/1.01  
% 2.54/1.01  fof(f77,plain,(
% 2.54/1.01    ( ! [X0,X1] : (k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) | X0 = X1) )),
% 2.54/1.01    inference(definition_unfolding,[],[f58,f67,f67,f67])).
% 2.54/1.01  
% 2.54/1.01  fof(f17,axiom,(
% 2.54/1.01    ! [X0,X1] : k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_tarski(X0)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f56,plain,(
% 2.54/1.01    ( ! [X0,X1] : (k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_tarski(X0)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f17])).
% 2.54/1.01  
% 2.54/1.01  fof(f5,axiom,(
% 2.54/1.01    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f42,plain,(
% 2.54/1.01    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 2.54/1.01    inference(cnf_transformation,[],[f5])).
% 2.54/1.01  
% 2.54/1.01  fof(f76,plain,(
% 2.54/1.01    ( ! [X0,X1] : (k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 2.54/1.01    inference(definition_unfolding,[],[f56,f42,f67,f66,f67])).
% 2.54/1.01  
% 2.54/1.01  fof(f61,plain,(
% 2.54/1.01    sK2 != sK4),
% 2.54/1.01    inference(cnf_transformation,[],[f36])).
% 2.54/1.01  
% 2.54/1.01  fof(f57,plain,(
% 2.54/1.01    ( ! [X0,X1] : (X0 != X1 | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f34])).
% 2.54/1.01  
% 2.54/1.01  fof(f78,plain,(
% 2.54/1.01    ( ! [X0,X1] : (X0 != X1 | k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 2.54/1.01    inference(definition_unfolding,[],[f57,f67,f67,f67])).
% 2.54/1.01  
% 2.54/1.01  fof(f83,plain,(
% 2.54/1.01    ( ! [X1] : (k4_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) )),
% 2.54/1.01    inference(equality_resolution,[],[f78])).
% 2.54/1.01  
% 2.54/1.01  fof(f2,axiom,(
% 2.54/1.01    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f23,plain,(
% 2.54/1.01    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 2.54/1.01    inference(rectify,[],[f2])).
% 2.54/1.01  
% 2.54/1.01  fof(f24,plain,(
% 2.54/1.01    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 2.54/1.01    inference(ennf_transformation,[],[f23])).
% 2.54/1.01  
% 2.54/1.01  fof(f28,plain,(
% 2.54/1.01    ! [X1,X0] : (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) => r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)))),
% 2.54/1.01    introduced(choice_axiom,[])).
% 2.54/1.01  
% 2.54/1.01  fof(f29,plain,(
% 2.54/1.01    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 2.54/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f28])).
% 2.54/1.01  
% 2.54/1.01  fof(f39,plain,(
% 2.54/1.01    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k3_xboole_0(X0,X1))) )),
% 2.54/1.01    inference(cnf_transformation,[],[f29])).
% 2.54/1.01  
% 2.54/1.01  fof(f70,plain,(
% 2.54/1.01    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 2.54/1.01    inference(definition_unfolding,[],[f39,f42])).
% 2.54/1.01  
% 2.54/1.01  fof(f7,axiom,(
% 2.54/1.01    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f44,plain,(
% 2.54/1.01    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 2.54/1.01    inference(cnf_transformation,[],[f7])).
% 2.54/1.01  
% 2.54/1.01  fof(f19,axiom,(
% 2.54/1.01    ! [X0,X1] : (r1_tarski(k1_tarski(X0),k1_tarski(X1)) => X0 = X1)),
% 2.54/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.54/1.01  
% 2.54/1.01  fof(f26,plain,(
% 2.54/1.01    ! [X0,X1] : (X0 = X1 | ~r1_tarski(k1_tarski(X0),k1_tarski(X1)))),
% 2.54/1.01    inference(ennf_transformation,[],[f19])).
% 2.54/1.01  
% 2.54/1.01  fof(f59,plain,(
% 2.54/1.01    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(k1_tarski(X0),k1_tarski(X1))) )),
% 2.54/1.01    inference(cnf_transformation,[],[f26])).
% 2.54/1.01  
% 2.54/1.01  fof(f79,plain,(
% 2.54/1.01    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) )),
% 2.54/1.01    inference(definition_unfolding,[],[f59,f67,f67])).
% 2.54/1.01  
% 2.54/1.01  fof(f53,plain,(
% 2.54/1.01    ( ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) | k1_xboole_0 != X0) )),
% 2.54/1.01    inference(cnf_transformation,[],[f33])).
% 2.54/1.01  
% 2.54/1.01  fof(f73,plain,(
% 2.54/1.01    ( ! [X0,X1] : (r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) | k1_xboole_0 != X0) )),
% 2.54/1.01    inference(definition_unfolding,[],[f53,f67])).
% 2.54/1.01  
% 2.54/1.01  fof(f82,plain,(
% 2.54/1.01    ( ! [X1] : (r1_tarski(k1_xboole_0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) )),
% 2.54/1.01    inference(equality_resolution,[],[f73])).
% 2.54/1.01  
% 2.54/1.01  cnf(c_4,plain,
% 2.54/1.01      ( r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 2.54/1.01      inference(cnf_transformation,[],[f40]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_483,plain,
% 2.54/1.01      ( k1_xboole_0 = X0 | r2_hidden(sK1(X0),X0) = iProver_top ),
% 2.54/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_16,negated_conjecture,
% 2.54/1.01      ( r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) ),
% 2.54/1.01      inference(cnf_transformation,[],[f80]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_476,plain,
% 2.54/1.01      ( r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) = iProver_top ),
% 2.54/1.01      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_9,plain,
% 2.54/1.01      ( ~ r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
% 2.54/1.01      | k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) = X0
% 2.54/1.01      | k1_xboole_0 = X0 ),
% 2.54/1.01      inference(cnf_transformation,[],[f74]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_479,plain,
% 2.54/1.01      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = X1
% 2.54/1.01      | k1_xboole_0 = X1
% 2.54/1.01      | r1_tarski(X1,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
% 2.54/1.01      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_1297,plain,
% 2.54/1.01      ( k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3)
% 2.54/1.01      | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0 ),
% 2.54/1.01      inference(superposition,[status(thm)],[c_476,c_479]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_12,plain,
% 2.54/1.01      ( X0 = X1
% 2.54/1.01      | k4_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
% 2.54/1.01      inference(cnf_transformation,[],[f77]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_1689,plain,
% 2.54/1.01      ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0
% 2.54/1.01      | k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
% 2.54/1.01      | sK4 = X0 ),
% 2.54/1.01      inference(superposition,[status(thm)],[c_1297,c_12]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_11,plain,
% 2.54/1.01      ( k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
% 2.54/1.01      inference(cnf_transformation,[],[f76]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_2566,plain,
% 2.54/1.01      ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0
% 2.54/1.01      | k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)
% 2.54/1.01      | sK4 = sK2 ),
% 2.54/1.01      inference(superposition,[status(thm)],[c_1689,c_11]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_15,negated_conjecture,
% 2.54/1.01      ( sK2 != sK4 ),
% 2.54/1.01      inference(cnf_transformation,[],[f61]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_274,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_554,plain,
% 2.54/1.01      ( sK4 != X0 | sK2 != X0 | sK2 = sK4 ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_274]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_645,plain,
% 2.54/1.01      ( sK4 != sK2 | sK2 = sK4 | sK2 != sK2 ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_554]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_273,plain,( X0 = X0 ),theory(equality) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_646,plain,
% 2.54/1.01      ( sK2 = sK2 ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_273]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_2786,plain,
% 2.54/1.01      ( k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)
% 2.54/1.01      | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0 ),
% 2.54/1.01      inference(global_propositional_subsumption,
% 2.54/1.01                [status(thm)],
% 2.54/1.01                [c_2566,c_15,c_645,c_646]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_2787,plain,
% 2.54/1.01      ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0
% 2.54/1.01      | k4_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
% 2.54/1.01      inference(renaming,[status(thm)],[c_2786]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_13,plain,
% 2.54/1.01      ( k4_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
% 2.54/1.01      inference(cnf_transformation,[],[f83]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_2790,plain,
% 2.54/1.01      ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK3) = k1_xboole_0 ),
% 2.54/1.01      inference(forward_subsumption_resolution,
% 2.54/1.01                [status(thm)],
% 2.54/1.01                [c_2787,c_13]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_2,plain,
% 2.54/1.01      ( ~ r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2)))
% 2.54/1.01      | ~ r1_xboole_0(X1,X2) ),
% 2.54/1.01      inference(cnf_transformation,[],[f70]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_485,plain,
% 2.54/1.01      ( r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) != iProver_top
% 2.54/1.01      | r1_xboole_0(X1,X2) != iProver_top ),
% 2.54/1.01      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_1100,plain,
% 2.54/1.01      ( r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top
% 2.54/1.01      | r1_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) != iProver_top ),
% 2.54/1.01      inference(superposition,[status(thm)],[c_11,c_485]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_2796,plain,
% 2.54/1.01      ( r2_hidden(X0,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top
% 2.54/1.01      | r1_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k1_xboole_0) != iProver_top ),
% 2.54/1.01      inference(superposition,[status(thm)],[c_2790,c_1100]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_6,plain,
% 2.54/1.01      ( r1_xboole_0(X0,k1_xboole_0) ),
% 2.54/1.01      inference(cnf_transformation,[],[f44]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_482,plain,
% 2.54/1.01      ( r1_xboole_0(X0,k1_xboole_0) = iProver_top ),
% 2.54/1.01      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_3105,plain,
% 2.54/1.01      ( r2_hidden(X0,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 2.54/1.01      inference(forward_subsumption_resolution,
% 2.54/1.01                [status(thm)],
% 2.54/1.01                [c_2796,c_482]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_3109,plain,
% 2.54/1.01      ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) = k1_xboole_0 ),
% 2.54/1.01      inference(superposition,[status(thm)],[c_483,c_3105]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_280,plain,
% 2.54/1.01      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.54/1.01      theory(equality) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_558,plain,
% 2.54/1.01      ( r1_tarski(X0,X1)
% 2.54/1.01      | ~ r1_tarski(k1_xboole_0,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))
% 2.54/1.01      | X1 != k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)
% 2.54/1.01      | X0 != k1_xboole_0 ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_280]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_1179,plain,
% 2.54/1.01      ( r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))
% 2.54/1.01      | ~ r1_tarski(k1_xboole_0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))
% 2.54/1.01      | k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
% 2.54/1.01      | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) != k1_xboole_0 ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_558]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_1182,plain,
% 2.54/1.01      ( r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))
% 2.54/1.01      | ~ r1_tarski(k1_xboole_0,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))
% 2.54/1.01      | k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) != k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)
% 2.54/1.01      | k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) != k1_xboole_0 ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_1179]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_14,plain,
% 2.54/1.01      ( ~ r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
% 2.54/1.01      | X1 = X0 ),
% 2.54/1.01      inference(cnf_transformation,[],[f79]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_716,plain,
% 2.54/1.01      ( ~ r1_tarski(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4))
% 2.54/1.01      | sK4 = sK2 ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_14]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_279,plain,
% 2.54/1.01      ( X0 != X1
% 2.54/1.01      | X2 != X3
% 2.54/1.01      | X4 != X5
% 2.54/1.01      | X6 != X7
% 2.54/1.01      | X8 != X9
% 2.54/1.01      | X10 != X11
% 2.54/1.01      | X12 != X13
% 2.54/1.01      | X14 != X15
% 2.54/1.01      | k6_enumset1(X0,X2,X4,X6,X8,X10,X12,X14) = k6_enumset1(X1,X3,X5,X7,X9,X11,X13,X15) ),
% 2.54/1.01      theory(equality) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_285,plain,
% 2.54/1.01      ( k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) = k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)
% 2.54/1.01      | sK4 != sK4 ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_279]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_8,plain,
% 2.54/1.01      ( r1_tarski(k1_xboole_0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ),
% 2.54/1.01      inference(cnf_transformation,[],[f82]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_31,plain,
% 2.54/1.01      ( r1_tarski(k1_xboole_0,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_8]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_22,plain,
% 2.54/1.01      ( k4_xboole_0(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) = k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)
% 2.54/1.01      | sK4 = sK4 ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_12]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(c_21,plain,
% 2.54/1.01      ( k4_xboole_0(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4) ),
% 2.54/1.01      inference(instantiation,[status(thm)],[c_13]) ).
% 2.54/1.01  
% 2.54/1.01  cnf(contradiction,plain,
% 2.54/1.01      ( $false ),
% 2.54/1.01      inference(minisat,
% 2.54/1.01                [status(thm)],
% 2.54/1.01                [c_3109,c_1182,c_716,c_646,c_645,c_285,c_31,c_22,c_21,
% 2.54/1.01                 c_15]) ).
% 2.54/1.01  
% 2.54/1.01  
% 2.54/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 2.54/1.01  
% 2.54/1.01  ------                               Statistics
% 2.54/1.01  
% 2.54/1.01  ------ General
% 2.54/1.01  
% 2.54/1.01  abstr_ref_over_cycles:                  0
% 2.54/1.01  abstr_ref_under_cycles:                 0
% 2.54/1.01  gc_basic_clause_elim:                   0
% 2.54/1.01  forced_gc_time:                         0
% 2.54/1.01  parsing_time:                           0.009
% 2.54/1.01  unif_index_cands_time:                  0.
% 2.54/1.01  unif_index_add_time:                    0.
% 2.54/1.01  orderings_time:                         0.
% 2.54/1.01  out_proof_time:                         0.008
% 2.54/1.01  total_time:                             0.185
% 2.54/1.01  num_of_symbols:                         43
% 2.54/1.01  num_of_terms:                           2881
% 2.54/1.01  
% 2.54/1.01  ------ Preprocessing
% 2.54/1.01  
% 2.54/1.01  num_of_splits:                          0
% 2.54/1.01  num_of_split_atoms:                     0
% 2.54/1.01  num_of_reused_defs:                     0
% 2.54/1.01  num_eq_ax_congr_red:                    10
% 2.54/1.01  num_of_sem_filtered_clauses:            1
% 2.54/1.01  num_of_subtypes:                        0
% 2.54/1.01  monotx_restored_types:                  0
% 2.54/1.01  sat_num_of_epr_types:                   0
% 2.54/1.01  sat_num_of_non_cyclic_types:            0
% 2.54/1.01  sat_guarded_non_collapsed_types:        0
% 2.54/1.01  num_pure_diseq_elim:                    0
% 2.54/1.01  simp_replaced_by:                       0
% 2.54/1.01  res_preprocessed:                       68
% 2.54/1.01  prep_upred:                             0
% 2.54/1.01  prep_unflattend:                        11
% 2.54/1.01  smt_new_axioms:                         0
% 2.54/1.01  pred_elim_cands:                        3
% 2.54/1.01  pred_elim:                              0
% 2.54/1.01  pred_elim_cl:                           0
% 2.54/1.01  pred_elim_cycles:                       3
% 2.54/1.01  merged_defs:                            0
% 2.54/1.01  merged_defs_ncl:                        0
% 2.54/1.01  bin_hyper_res:                          0
% 2.54/1.01  prep_cycles:                            3
% 2.54/1.01  pred_elim_time:                         0.002
% 2.54/1.01  splitting_time:                         0.
% 2.54/1.01  sem_filter_time:                        0.
% 2.54/1.01  monotx_time:                            0.
% 2.54/1.01  subtype_inf_time:                       0.
% 2.54/1.01  
% 2.54/1.01  ------ Problem properties
% 2.54/1.01  
% 2.54/1.01  clauses:                                17
% 2.54/1.01  conjectures:                            2
% 2.54/1.01  epr:                                    2
% 2.54/1.01  horn:                                   13
% 2.54/1.01  ground:                                 2
% 2.54/1.01  unary:                                  11
% 2.54/1.01  binary:                                 5
% 2.54/1.01  lits:                                   24
% 2.54/1.01  lits_eq:                                12
% 2.54/1.01  fd_pure:                                0
% 2.54/1.01  fd_pseudo:                              0
% 2.54/1.01  fd_cond:                                1
% 2.54/1.01  fd_pseudo_cond:                         3
% 2.54/1.01  ac_symbols:                             0
% 2.54/1.01  
% 2.54/1.01  ------ Propositional Solver
% 2.54/1.01  
% 2.54/1.01  prop_solver_calls:                      23
% 2.54/1.01  prop_fast_solver_calls:                 379
% 2.54/1.01  smt_solver_calls:                       0
% 2.54/1.01  smt_fast_solver_calls:                  0
% 2.54/1.01  prop_num_of_clauses:                    984
% 2.54/1.01  prop_preprocess_simplified:             3223
% 2.54/1.01  prop_fo_subsumed:                       4
% 2.54/1.01  prop_solver_time:                       0.
% 2.54/1.01  smt_solver_time:                        0.
% 2.54/1.01  smt_fast_solver_time:                   0.
% 2.54/1.01  prop_fast_solver_time:                  0.
% 2.54/1.01  prop_unsat_core_time:                   0.
% 2.54/1.01  
% 2.54/1.01  ------ QBF
% 2.54/1.01  
% 2.54/1.01  qbf_q_res:                              0
% 2.54/1.01  qbf_num_tautologies:                    0
% 2.54/1.01  qbf_prep_cycles:                        0
% 2.54/1.01  
% 2.54/1.01  ------ BMC1
% 2.54/1.01  
% 2.54/1.01  bmc1_current_bound:                     -1
% 2.54/1.01  bmc1_last_solved_bound:                 -1
% 2.54/1.01  bmc1_unsat_core_size:                   -1
% 2.54/1.01  bmc1_unsat_core_parents_size:           -1
% 2.54/1.01  bmc1_merge_next_fun:                    0
% 2.54/1.01  bmc1_unsat_core_clauses_time:           0.
% 2.54/1.01  
% 2.54/1.01  ------ Instantiation
% 2.54/1.01  
% 2.54/1.01  inst_num_of_clauses:                    370
% 2.54/1.01  inst_num_in_passive:                    101
% 2.54/1.01  inst_num_in_active:                     185
% 2.54/1.01  inst_num_in_unprocessed:                84
% 2.54/1.01  inst_num_of_loops:                      220
% 2.54/1.01  inst_num_of_learning_restarts:          0
% 2.54/1.01  inst_num_moves_active_passive:          33
% 2.54/1.01  inst_lit_activity:                      0
% 2.54/1.01  inst_lit_activity_moves:                0
% 2.54/1.01  inst_num_tautologies:                   0
% 2.54/1.01  inst_num_prop_implied:                  0
% 2.54/1.01  inst_num_existing_simplified:           0
% 2.54/1.01  inst_num_eq_res_simplified:             0
% 2.54/1.01  inst_num_child_elim:                    0
% 2.54/1.01  inst_num_of_dismatching_blockings:      207
% 2.54/1.01  inst_num_of_non_proper_insts:           432
% 2.54/1.01  inst_num_of_duplicates:                 0
% 2.54/1.01  inst_inst_num_from_inst_to_res:         0
% 2.54/1.01  inst_dismatching_checking_time:         0.
% 2.54/1.01  
% 2.54/1.01  ------ Resolution
% 2.54/1.01  
% 2.54/1.01  res_num_of_clauses:                     0
% 2.54/1.01  res_num_in_passive:                     0
% 2.54/1.01  res_num_in_active:                      0
% 2.54/1.01  res_num_of_loops:                       71
% 2.54/1.01  res_forward_subset_subsumed:            52
% 2.54/1.01  res_backward_subset_subsumed:           0
% 2.54/1.01  res_forward_subsumed:                   0
% 2.54/1.01  res_backward_subsumed:                  0
% 2.54/1.01  res_forward_subsumption_resolution:     0
% 2.54/1.01  res_backward_subsumption_resolution:    0
% 2.54/1.01  res_clause_to_clause_subsumption:       244
% 2.54/1.01  res_orphan_elimination:                 0
% 2.54/1.01  res_tautology_del:                      23
% 2.54/1.01  res_num_eq_res_simplified:              0
% 2.54/1.01  res_num_sel_changes:                    0
% 2.54/1.01  res_moves_from_active_to_pass:          0
% 2.54/1.01  
% 2.54/1.01  ------ Superposition
% 2.54/1.01  
% 2.54/1.01  sup_time_total:                         0.
% 2.54/1.01  sup_time_generating:                    0.
% 2.54/1.01  sup_time_sim_full:                      0.
% 2.54/1.01  sup_time_sim_immed:                     0.
% 2.54/1.01  
% 2.54/1.01  sup_num_of_clauses:                     53
% 2.54/1.01  sup_num_in_active:                      33
% 2.54/1.01  sup_num_in_passive:                     20
% 2.54/1.01  sup_num_of_loops:                       43
% 2.54/1.01  sup_fw_superposition:                   52
% 2.54/1.01  sup_bw_superposition:                   73
% 2.54/1.01  sup_immediate_simplified:               24
% 2.54/1.01  sup_given_eliminated:                   1
% 2.54/1.01  comparisons_done:                       0
% 2.54/1.01  comparisons_avoided:                    12
% 2.54/1.01  
% 2.54/1.01  ------ Simplifications
% 2.54/1.01  
% 2.54/1.01  
% 2.54/1.01  sim_fw_subset_subsumed:                 0
% 2.54/1.01  sim_bw_subset_subsumed:                 21
% 2.54/1.01  sim_fw_subsumed:                        11
% 2.54/1.01  sim_bw_subsumed:                        2
% 2.54/1.01  sim_fw_subsumption_res:                 2
% 2.54/1.01  sim_bw_subsumption_res:                 0
% 2.54/1.01  sim_tautology_del:                      3
% 2.54/1.01  sim_eq_tautology_del:                   21
% 2.54/1.01  sim_eq_res_simp:                        0
% 2.54/1.01  sim_fw_demodulated:                     9
% 2.54/1.01  sim_bw_demodulated:                     4
% 2.54/1.01  sim_light_normalised:                   9
% 2.54/1.01  sim_joinable_taut:                      0
% 2.54/1.01  sim_joinable_simp:                      0
% 2.54/1.01  sim_ac_normalised:                      0
% 2.54/1.01  sim_smt_subsumption:                    0
% 2.54/1.01  
%------------------------------------------------------------------------------
