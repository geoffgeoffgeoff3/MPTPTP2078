%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:30:21 EST 2020

% Result     : Theorem 1.18s
% Output     : CNFRefutation 1.18s
% Verified   : 
% Statistics : Number of formulae       :   79 ( 323 expanded)
%              Number of clauses        :   25 (  28 expanded)
%              Number of leaves         :   15 ( 100 expanded)
%              Depth                    :   18
%              Number of atoms          :  218 ( 579 expanded)
%              Number of equality atoms :  174 ( 504 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
    <=> ~ r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
        | r2_hidden(X0,X1) )
      & ( ~ r2_hidden(X0,X1)
        | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0) ) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f1,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f1])).

fof(f5,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f11])).

fof(f47,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f41,f42])).

fof(f48,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f40,f47])).

fof(f49,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f39,f48])).

fof(f50,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f38,f49])).

fof(f51,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f37,f50])).

fof(f52,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f36,f51])).

fof(f61,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
      | r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f44,f25,f52,f52])).

fof(f13,conjecture,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_xboole_0
     => X0 = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_xboole_0
       => X0 = X1 ) ),
    inference(negated_conjecture,[],[f13])).

fof(f16,plain,(
    ? [X0,X1] :
      ( X0 != X1
      & k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_xboole_0 ) ),
    inference(ennf_transformation,[],[f14])).

fof(f23,plain,
    ( ? [X0,X1] :
        ( X0 != X1
        & k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_xboole_0 )
   => ( sK1 != sK2
      & k4_xboole_0(k1_tarski(sK1),k1_tarski(sK2)) = k1_xboole_0 ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( sK1 != sK2
    & k4_xboole_0(k1_tarski(sK1),k1_tarski(sK2)) = k1_xboole_0 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f16,f23])).

fof(f45,plain,(
    k4_xboole_0(k1_tarski(sK1),k1_tarski(sK2)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f24])).

fof(f63,plain,(
    k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k1_xboole_0 ),
    inference(definition_unfolding,[],[f45,f25,f52,f52])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f62,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ) ),
    inference(definition_unfolding,[],[f43,f25,f52,f52])).

fof(f46,plain,(
    sK1 != sK2 ),
    inference(cnf_transformation,[],[f24])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f17,plain,(
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
    inference(nnf_transformation,[],[f15])).

fof(f18,plain,(
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
    inference(flattening,[],[f17])).

fof(f19,plain,(
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
    inference(rectify,[],[f18])).

fof(f20,plain,(
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

fof(f21,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f19,f20])).

fof(f28,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f21])).

fof(f60,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f28,f50])).

fof(f70,plain,(
    ! [X2,X0,X5,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ) ),
    inference(equality_resolution,[],[f60])).

fof(f29,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f21])).

fof(f59,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f29,f50])).

fof(f68,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f59])).

fof(f69,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2)) ),
    inference(equality_resolution,[],[f68])).

fof(f2,axiom,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f3])).

cnf(c_10,plain,
    ( r2_hidden(X0,X1)
    | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_734,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
    | r2_hidden(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_13,negated_conjecture,
    ( k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f63])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,X1)
    | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_733,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1011,plain,
    ( k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) != k1_xboole_0
    | r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_13,c_733])).

cnf(c_12,negated_conjecture,
    ( sK1 != sK2 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_9,plain,
    ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X2,X3))
    | X0 = X1
    | X0 = X2
    | X0 = X3 ),
    inference(cnf_transformation,[],[f70])).

cnf(c_837,plain,
    ( ~ r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,X0,X1))
    | sK1 = X0
    | sK1 = X1
    | sK1 = sK2 ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_858,plain,
    ( ~ r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,X0))
    | sK1 = X0
    | sK1 = sK2 ),
    inference(instantiation,[status(thm)],[c_837])).

cnf(c_918,plain,
    ( ~ r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))
    | sK1 = sK2 ),
    inference(instantiation,[status(thm)],[c_858])).

cnf(c_919,plain,
    ( sK1 = sK2
    | r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_918])).

cnf(c_1149,plain,
    ( r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1011,c_12,c_919])).

cnf(c_1354,plain,
    ( k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) ),
    inference(superposition,[status(thm)],[c_734,c_1149])).

cnf(c_1359,plain,
    ( k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1354,c_13])).

cnf(c_8,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_736,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1371,plain,
    ( r2_hidden(sK1,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1359,c_736])).

cnf(c_0,plain,
    ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f26])).

cnf(c_1012,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_xboole_0) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
    | r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_733])).

cnf(c_1,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f27])).

cnf(c_1015,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
    | r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1012,c_1])).

cnf(c_1016,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_1015])).

cnf(c_1024,plain,
    ( r2_hidden(sK1,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1016])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1371,c_1024])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n025.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 10:57:35 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.18/1.02  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.18/1.02  
% 1.18/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.18/1.02  
% 1.18/1.02  ------  iProver source info
% 1.18/1.02  
% 1.18/1.02  git: date: 2020-06-30 10:37:57 +0100
% 1.18/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.18/1.02  git: non_committed_changes: false
% 1.18/1.02  git: last_make_outside_of_git: false
% 1.18/1.02  
% 1.18/1.02  ------ 
% 1.18/1.02  
% 1.18/1.02  ------ Input Options
% 1.18/1.02  
% 1.18/1.02  --out_options                           all
% 1.18/1.02  --tptp_safe_out                         true
% 1.18/1.02  --problem_path                          ""
% 1.18/1.02  --include_path                          ""
% 1.18/1.02  --clausifier                            res/vclausify_rel
% 1.18/1.02  --clausifier_options                    --mode clausify
% 1.18/1.02  --stdin                                 false
% 1.18/1.02  --stats_out                             all
% 1.18/1.02  
% 1.18/1.02  ------ General Options
% 1.18/1.02  
% 1.18/1.02  --fof                                   false
% 1.18/1.02  --time_out_real                         305.
% 1.18/1.02  --time_out_virtual                      -1.
% 1.18/1.02  --symbol_type_check                     false
% 1.18/1.02  --clausify_out                          false
% 1.18/1.02  --sig_cnt_out                           false
% 1.18/1.02  --trig_cnt_out                          false
% 1.18/1.02  --trig_cnt_out_tolerance                1.
% 1.18/1.02  --trig_cnt_out_sk_spl                   false
% 1.18/1.02  --abstr_cl_out                          false
% 1.18/1.02  
% 1.18/1.02  ------ Global Options
% 1.18/1.02  
% 1.18/1.02  --schedule                              default
% 1.18/1.02  --add_important_lit                     false
% 1.18/1.02  --prop_solver_per_cl                    1000
% 1.18/1.02  --min_unsat_core                        false
% 1.18/1.02  --soft_assumptions                      false
% 1.18/1.02  --soft_lemma_size                       3
% 1.18/1.02  --prop_impl_unit_size                   0
% 1.18/1.02  --prop_impl_unit                        []
% 1.18/1.02  --share_sel_clauses                     true
% 1.18/1.02  --reset_solvers                         false
% 1.18/1.02  --bc_imp_inh                            [conj_cone]
% 1.18/1.02  --conj_cone_tolerance                   3.
% 1.18/1.02  --extra_neg_conj                        none
% 1.18/1.02  --large_theory_mode                     true
% 1.18/1.02  --prolific_symb_bound                   200
% 1.18/1.02  --lt_threshold                          2000
% 1.18/1.02  --clause_weak_htbl                      true
% 1.18/1.02  --gc_record_bc_elim                     false
% 1.18/1.02  
% 1.18/1.02  ------ Preprocessing Options
% 1.18/1.02  
% 1.18/1.02  --preprocessing_flag                    true
% 1.18/1.02  --time_out_prep_mult                    0.1
% 1.18/1.02  --splitting_mode                        input
% 1.18/1.02  --splitting_grd                         true
% 1.18/1.02  --splitting_cvd                         false
% 1.18/1.02  --splitting_cvd_svl                     false
% 1.18/1.02  --splitting_nvd                         32
% 1.18/1.02  --sub_typing                            true
% 1.18/1.02  --prep_gs_sim                           true
% 1.18/1.02  --prep_unflatten                        true
% 1.18/1.02  --prep_res_sim                          true
% 1.18/1.02  --prep_upred                            true
% 1.18/1.02  --prep_sem_filter                       exhaustive
% 1.18/1.02  --prep_sem_filter_out                   false
% 1.18/1.02  --pred_elim                             true
% 1.18/1.02  --res_sim_input                         true
% 1.18/1.02  --eq_ax_congr_red                       true
% 1.18/1.02  --pure_diseq_elim                       true
% 1.18/1.02  --brand_transform                       false
% 1.18/1.02  --non_eq_to_eq                          false
% 1.18/1.02  --prep_def_merge                        true
% 1.18/1.02  --prep_def_merge_prop_impl              false
% 1.18/1.02  --prep_def_merge_mbd                    true
% 1.18/1.02  --prep_def_merge_tr_red                 false
% 1.18/1.02  --prep_def_merge_tr_cl                  false
% 1.18/1.02  --smt_preprocessing                     true
% 1.18/1.02  --smt_ac_axioms                         fast
% 1.18/1.02  --preprocessed_out                      false
% 1.18/1.02  --preprocessed_stats                    false
% 1.18/1.02  
% 1.18/1.02  ------ Abstraction refinement Options
% 1.18/1.02  
% 1.18/1.02  --abstr_ref                             []
% 1.18/1.02  --abstr_ref_prep                        false
% 1.18/1.02  --abstr_ref_until_sat                   false
% 1.18/1.02  --abstr_ref_sig_restrict                funpre
% 1.18/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 1.18/1.02  --abstr_ref_under                       []
% 1.18/1.02  
% 1.18/1.02  ------ SAT Options
% 1.18/1.02  
% 1.18/1.02  --sat_mode                              false
% 1.18/1.02  --sat_fm_restart_options                ""
% 1.18/1.02  --sat_gr_def                            false
% 1.18/1.02  --sat_epr_types                         true
% 1.18/1.02  --sat_non_cyclic_types                  false
% 1.18/1.02  --sat_finite_models                     false
% 1.18/1.02  --sat_fm_lemmas                         false
% 1.18/1.02  --sat_fm_prep                           false
% 1.18/1.02  --sat_fm_uc_incr                        true
% 1.18/1.02  --sat_out_model                         small
% 1.18/1.02  --sat_out_clauses                       false
% 1.18/1.02  
% 1.18/1.02  ------ QBF Options
% 1.18/1.02  
% 1.18/1.02  --qbf_mode                              false
% 1.18/1.02  --qbf_elim_univ                         false
% 1.18/1.02  --qbf_dom_inst                          none
% 1.18/1.02  --qbf_dom_pre_inst                      false
% 1.18/1.02  --qbf_sk_in                             false
% 1.18/1.02  --qbf_pred_elim                         true
% 1.18/1.02  --qbf_split                             512
% 1.18/1.02  
% 1.18/1.02  ------ BMC1 Options
% 1.18/1.02  
% 1.18/1.02  --bmc1_incremental                      false
% 1.18/1.02  --bmc1_axioms                           reachable_all
% 1.18/1.02  --bmc1_min_bound                        0
% 1.18/1.02  --bmc1_max_bound                        -1
% 1.18/1.02  --bmc1_max_bound_default                -1
% 1.18/1.02  --bmc1_symbol_reachability              true
% 1.18/1.02  --bmc1_property_lemmas                  false
% 1.18/1.02  --bmc1_k_induction                      false
% 1.18/1.02  --bmc1_non_equiv_states                 false
% 1.18/1.02  --bmc1_deadlock                         false
% 1.18/1.02  --bmc1_ucm                              false
% 1.18/1.02  --bmc1_add_unsat_core                   none
% 1.18/1.02  --bmc1_unsat_core_children              false
% 1.18/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 1.18/1.02  --bmc1_out_stat                         full
% 1.18/1.02  --bmc1_ground_init                      false
% 1.18/1.02  --bmc1_pre_inst_next_state              false
% 1.18/1.02  --bmc1_pre_inst_state                   false
% 1.18/1.02  --bmc1_pre_inst_reach_state             false
% 1.18/1.02  --bmc1_out_unsat_core                   false
% 1.18/1.02  --bmc1_aig_witness_out                  false
% 1.18/1.02  --bmc1_verbose                          false
% 1.18/1.02  --bmc1_dump_clauses_tptp                false
% 1.18/1.02  --bmc1_dump_unsat_core_tptp             false
% 1.18/1.02  --bmc1_dump_file                        -
% 1.18/1.02  --bmc1_ucm_expand_uc_limit              128
% 1.18/1.02  --bmc1_ucm_n_expand_iterations          6
% 1.18/1.02  --bmc1_ucm_extend_mode                  1
% 1.18/1.02  --bmc1_ucm_init_mode                    2
% 1.18/1.02  --bmc1_ucm_cone_mode                    none
% 1.18/1.02  --bmc1_ucm_reduced_relation_type        0
% 1.18/1.02  --bmc1_ucm_relax_model                  4
% 1.18/1.02  --bmc1_ucm_full_tr_after_sat            true
% 1.18/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 1.18/1.02  --bmc1_ucm_layered_model                none
% 1.18/1.03  --bmc1_ucm_max_lemma_size               10
% 1.18/1.03  
% 1.18/1.03  ------ AIG Options
% 1.18/1.03  
% 1.18/1.03  --aig_mode                              false
% 1.18/1.03  
% 1.18/1.03  ------ Instantiation Options
% 1.18/1.03  
% 1.18/1.03  --instantiation_flag                    true
% 1.18/1.03  --inst_sos_flag                         false
% 1.18/1.03  --inst_sos_phase                        true
% 1.18/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.18/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.18/1.03  --inst_lit_sel_side                     num_symb
% 1.18/1.03  --inst_solver_per_active                1400
% 1.18/1.03  --inst_solver_calls_frac                1.
% 1.18/1.03  --inst_passive_queue_type               priority_queues
% 1.18/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.18/1.03  --inst_passive_queues_freq              [25;2]
% 1.18/1.03  --inst_dismatching                      true
% 1.18/1.03  --inst_eager_unprocessed_to_passive     true
% 1.18/1.03  --inst_prop_sim_given                   true
% 1.18/1.03  --inst_prop_sim_new                     false
% 1.18/1.03  --inst_subs_new                         false
% 1.18/1.03  --inst_eq_res_simp                      false
% 1.18/1.03  --inst_subs_given                       false
% 1.18/1.03  --inst_orphan_elimination               true
% 1.18/1.03  --inst_learning_loop_flag               true
% 1.18/1.03  --inst_learning_start                   3000
% 1.18/1.03  --inst_learning_factor                  2
% 1.18/1.03  --inst_start_prop_sim_after_learn       3
% 1.18/1.03  --inst_sel_renew                        solver
% 1.18/1.03  --inst_lit_activity_flag                true
% 1.18/1.03  --inst_restr_to_given                   false
% 1.18/1.03  --inst_activity_threshold               500
% 1.18/1.03  --inst_out_proof                        true
% 1.18/1.03  
% 1.18/1.03  ------ Resolution Options
% 1.18/1.03  
% 1.18/1.03  --resolution_flag                       true
% 1.18/1.03  --res_lit_sel                           adaptive
% 1.18/1.03  --res_lit_sel_side                      none
% 1.18/1.03  --res_ordering                          kbo
% 1.18/1.03  --res_to_prop_solver                    active
% 1.18/1.03  --res_prop_simpl_new                    false
% 1.18/1.03  --res_prop_simpl_given                  true
% 1.18/1.03  --res_passive_queue_type                priority_queues
% 1.18/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.18/1.03  --res_passive_queues_freq               [15;5]
% 1.18/1.03  --res_forward_subs                      full
% 1.18/1.03  --res_backward_subs                     full
% 1.18/1.03  --res_forward_subs_resolution           true
% 1.18/1.03  --res_backward_subs_resolution          true
% 1.18/1.03  --res_orphan_elimination                true
% 1.18/1.03  --res_time_limit                        2.
% 1.18/1.03  --res_out_proof                         true
% 1.18/1.03  
% 1.18/1.03  ------ Superposition Options
% 1.18/1.03  
% 1.18/1.03  --superposition_flag                    true
% 1.18/1.03  --sup_passive_queue_type                priority_queues
% 1.18/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.18/1.03  --sup_passive_queues_freq               [8;1;4]
% 1.18/1.03  --demod_completeness_check              fast
% 1.18/1.03  --demod_use_ground                      true
% 1.18/1.03  --sup_to_prop_solver                    passive
% 1.18/1.03  --sup_prop_simpl_new                    true
% 1.18/1.03  --sup_prop_simpl_given                  true
% 1.18/1.03  --sup_fun_splitting                     false
% 1.18/1.03  --sup_smt_interval                      50000
% 1.18/1.03  
% 1.18/1.03  ------ Superposition Simplification Setup
% 1.18/1.03  
% 1.18/1.03  --sup_indices_passive                   []
% 1.18/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.18/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.18/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.18/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 1.18/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.18/1.03  --sup_full_bw                           [BwDemod]
% 1.18/1.03  --sup_immed_triv                        [TrivRules]
% 1.18/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.18/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.18/1.03  --sup_immed_bw_main                     []
% 1.18/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.18/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 1.18/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.18/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.18/1.03  
% 1.18/1.03  ------ Combination Options
% 1.18/1.03  
% 1.18/1.03  --comb_res_mult                         3
% 1.18/1.03  --comb_sup_mult                         2
% 1.18/1.03  --comb_inst_mult                        10
% 1.18/1.03  
% 1.18/1.03  ------ Debug Options
% 1.18/1.03  
% 1.18/1.03  --dbg_backtrace                         false
% 1.18/1.03  --dbg_dump_prop_clauses                 false
% 1.18/1.03  --dbg_dump_prop_clauses_file            -
% 1.18/1.03  --dbg_out_stat                          false
% 1.18/1.03  ------ Parsing...
% 1.18/1.03  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.18/1.03  
% 1.18/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.18/1.03  
% 1.18/1.03  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.18/1.03  
% 1.18/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.18/1.03  ------ Proving...
% 1.18/1.03  ------ Problem Properties 
% 1.18/1.03  
% 1.18/1.03  
% 1.18/1.03  clauses                                 14
% 1.18/1.03  conjectures                             2
% 1.18/1.03  EPR                                     1
% 1.18/1.03  Horn                                    11
% 1.18/1.03  unary                                   7
% 1.18/1.03  binary                                  2
% 1.18/1.03  lits                                    29
% 1.18/1.03  lits eq                                 19
% 1.18/1.03  fd_pure                                 0
% 1.18/1.03  fd_pseudo                               0
% 1.18/1.03  fd_cond                                 0
% 1.18/1.03  fd_pseudo_cond                          4
% 1.18/1.03  AC symbols                              0
% 1.18/1.03  
% 1.18/1.03  ------ Schedule dynamic 5 is on 
% 1.18/1.03  
% 1.18/1.03  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.18/1.03  
% 1.18/1.03  
% 1.18/1.03  ------ 
% 1.18/1.03  Current options:
% 1.18/1.03  ------ 
% 1.18/1.03  
% 1.18/1.03  ------ Input Options
% 1.18/1.03  
% 1.18/1.03  --out_options                           all
% 1.18/1.03  --tptp_safe_out                         true
% 1.18/1.03  --problem_path                          ""
% 1.18/1.03  --include_path                          ""
% 1.18/1.03  --clausifier                            res/vclausify_rel
% 1.18/1.03  --clausifier_options                    --mode clausify
% 1.18/1.03  --stdin                                 false
% 1.18/1.03  --stats_out                             all
% 1.18/1.03  
% 1.18/1.03  ------ General Options
% 1.18/1.03  
% 1.18/1.03  --fof                                   false
% 1.18/1.03  --time_out_real                         305.
% 1.18/1.03  --time_out_virtual                      -1.
% 1.18/1.03  --symbol_type_check                     false
% 1.18/1.03  --clausify_out                          false
% 1.18/1.03  --sig_cnt_out                           false
% 1.18/1.03  --trig_cnt_out                          false
% 1.18/1.03  --trig_cnt_out_tolerance                1.
% 1.18/1.03  --trig_cnt_out_sk_spl                   false
% 1.18/1.03  --abstr_cl_out                          false
% 1.18/1.03  
% 1.18/1.03  ------ Global Options
% 1.18/1.03  
% 1.18/1.03  --schedule                              default
% 1.18/1.03  --add_important_lit                     false
% 1.18/1.03  --prop_solver_per_cl                    1000
% 1.18/1.03  --min_unsat_core                        false
% 1.18/1.03  --soft_assumptions                      false
% 1.18/1.03  --soft_lemma_size                       3
% 1.18/1.03  --prop_impl_unit_size                   0
% 1.18/1.03  --prop_impl_unit                        []
% 1.18/1.03  --share_sel_clauses                     true
% 1.18/1.03  --reset_solvers                         false
% 1.18/1.03  --bc_imp_inh                            [conj_cone]
% 1.18/1.03  --conj_cone_tolerance                   3.
% 1.18/1.03  --extra_neg_conj                        none
% 1.18/1.03  --large_theory_mode                     true
% 1.18/1.03  --prolific_symb_bound                   200
% 1.18/1.03  --lt_threshold                          2000
% 1.18/1.03  --clause_weak_htbl                      true
% 1.18/1.03  --gc_record_bc_elim                     false
% 1.18/1.03  
% 1.18/1.03  ------ Preprocessing Options
% 1.18/1.03  
% 1.18/1.03  --preprocessing_flag                    true
% 1.18/1.03  --time_out_prep_mult                    0.1
% 1.18/1.03  --splitting_mode                        input
% 1.18/1.03  --splitting_grd                         true
% 1.18/1.03  --splitting_cvd                         false
% 1.18/1.03  --splitting_cvd_svl                     false
% 1.18/1.03  --splitting_nvd                         32
% 1.18/1.03  --sub_typing                            true
% 1.18/1.03  --prep_gs_sim                           true
% 1.18/1.03  --prep_unflatten                        true
% 1.18/1.03  --prep_res_sim                          true
% 1.18/1.03  --prep_upred                            true
% 1.18/1.03  --prep_sem_filter                       exhaustive
% 1.18/1.03  --prep_sem_filter_out                   false
% 1.18/1.03  --pred_elim                             true
% 1.18/1.03  --res_sim_input                         true
% 1.18/1.03  --eq_ax_congr_red                       true
% 1.18/1.03  --pure_diseq_elim                       true
% 1.18/1.03  --brand_transform                       false
% 1.18/1.03  --non_eq_to_eq                          false
% 1.18/1.03  --prep_def_merge                        true
% 1.18/1.03  --prep_def_merge_prop_impl              false
% 1.18/1.03  --prep_def_merge_mbd                    true
% 1.18/1.03  --prep_def_merge_tr_red                 false
% 1.18/1.03  --prep_def_merge_tr_cl                  false
% 1.18/1.03  --smt_preprocessing                     true
% 1.18/1.03  --smt_ac_axioms                         fast
% 1.18/1.03  --preprocessed_out                      false
% 1.18/1.03  --preprocessed_stats                    false
% 1.18/1.03  
% 1.18/1.03  ------ Abstraction refinement Options
% 1.18/1.03  
% 1.18/1.03  --abstr_ref                             []
% 1.18/1.03  --abstr_ref_prep                        false
% 1.18/1.03  --abstr_ref_until_sat                   false
% 1.18/1.03  --abstr_ref_sig_restrict                funpre
% 1.18/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 1.18/1.03  --abstr_ref_under                       []
% 1.18/1.03  
% 1.18/1.03  ------ SAT Options
% 1.18/1.03  
% 1.18/1.03  --sat_mode                              false
% 1.18/1.03  --sat_fm_restart_options                ""
% 1.18/1.03  --sat_gr_def                            false
% 1.18/1.03  --sat_epr_types                         true
% 1.18/1.03  --sat_non_cyclic_types                  false
% 1.18/1.03  --sat_finite_models                     false
% 1.18/1.03  --sat_fm_lemmas                         false
% 1.18/1.03  --sat_fm_prep                           false
% 1.18/1.03  --sat_fm_uc_incr                        true
% 1.18/1.03  --sat_out_model                         small
% 1.18/1.03  --sat_out_clauses                       false
% 1.18/1.03  
% 1.18/1.03  ------ QBF Options
% 1.18/1.03  
% 1.18/1.03  --qbf_mode                              false
% 1.18/1.03  --qbf_elim_univ                         false
% 1.18/1.03  --qbf_dom_inst                          none
% 1.18/1.03  --qbf_dom_pre_inst                      false
% 1.18/1.03  --qbf_sk_in                             false
% 1.18/1.03  --qbf_pred_elim                         true
% 1.18/1.03  --qbf_split                             512
% 1.18/1.03  
% 1.18/1.03  ------ BMC1 Options
% 1.18/1.03  
% 1.18/1.03  --bmc1_incremental                      false
% 1.18/1.03  --bmc1_axioms                           reachable_all
% 1.18/1.03  --bmc1_min_bound                        0
% 1.18/1.03  --bmc1_max_bound                        -1
% 1.18/1.03  --bmc1_max_bound_default                -1
% 1.18/1.03  --bmc1_symbol_reachability              true
% 1.18/1.03  --bmc1_property_lemmas                  false
% 1.18/1.03  --bmc1_k_induction                      false
% 1.18/1.03  --bmc1_non_equiv_states                 false
% 1.18/1.03  --bmc1_deadlock                         false
% 1.18/1.03  --bmc1_ucm                              false
% 1.18/1.03  --bmc1_add_unsat_core                   none
% 1.18/1.03  --bmc1_unsat_core_children              false
% 1.18/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 1.18/1.03  --bmc1_out_stat                         full
% 1.18/1.03  --bmc1_ground_init                      false
% 1.18/1.03  --bmc1_pre_inst_next_state              false
% 1.18/1.03  --bmc1_pre_inst_state                   false
% 1.18/1.03  --bmc1_pre_inst_reach_state             false
% 1.18/1.03  --bmc1_out_unsat_core                   false
% 1.18/1.03  --bmc1_aig_witness_out                  false
% 1.18/1.03  --bmc1_verbose                          false
% 1.18/1.03  --bmc1_dump_clauses_tptp                false
% 1.18/1.03  --bmc1_dump_unsat_core_tptp             false
% 1.18/1.03  --bmc1_dump_file                        -
% 1.18/1.03  --bmc1_ucm_expand_uc_limit              128
% 1.18/1.03  --bmc1_ucm_n_expand_iterations          6
% 1.18/1.03  --bmc1_ucm_extend_mode                  1
% 1.18/1.03  --bmc1_ucm_init_mode                    2
% 1.18/1.03  --bmc1_ucm_cone_mode                    none
% 1.18/1.03  --bmc1_ucm_reduced_relation_type        0
% 1.18/1.03  --bmc1_ucm_relax_model                  4
% 1.18/1.03  --bmc1_ucm_full_tr_after_sat            true
% 1.18/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 1.18/1.03  --bmc1_ucm_layered_model                none
% 1.18/1.03  --bmc1_ucm_max_lemma_size               10
% 1.18/1.03  
% 1.18/1.03  ------ AIG Options
% 1.18/1.03  
% 1.18/1.03  --aig_mode                              false
% 1.18/1.03  
% 1.18/1.03  ------ Instantiation Options
% 1.18/1.03  
% 1.18/1.03  --instantiation_flag                    true
% 1.18/1.03  --inst_sos_flag                         false
% 1.18/1.03  --inst_sos_phase                        true
% 1.18/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.18/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.18/1.03  --inst_lit_sel_side                     none
% 1.18/1.03  --inst_solver_per_active                1400
% 1.18/1.03  --inst_solver_calls_frac                1.
% 1.18/1.03  --inst_passive_queue_type               priority_queues
% 1.18/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.18/1.03  --inst_passive_queues_freq              [25;2]
% 1.18/1.03  --inst_dismatching                      true
% 1.18/1.03  --inst_eager_unprocessed_to_passive     true
% 1.18/1.03  --inst_prop_sim_given                   true
% 1.18/1.03  --inst_prop_sim_new                     false
% 1.18/1.03  --inst_subs_new                         false
% 1.18/1.03  --inst_eq_res_simp                      false
% 1.18/1.03  --inst_subs_given                       false
% 1.18/1.03  --inst_orphan_elimination               true
% 1.18/1.03  --inst_learning_loop_flag               true
% 1.18/1.03  --inst_learning_start                   3000
% 1.18/1.03  --inst_learning_factor                  2
% 1.18/1.03  --inst_start_prop_sim_after_learn       3
% 1.18/1.03  --inst_sel_renew                        solver
% 1.18/1.03  --inst_lit_activity_flag                true
% 1.18/1.03  --inst_restr_to_given                   false
% 1.18/1.03  --inst_activity_threshold               500
% 1.18/1.03  --inst_out_proof                        true
% 1.18/1.03  
% 1.18/1.03  ------ Resolution Options
% 1.18/1.03  
% 1.18/1.03  --resolution_flag                       false
% 1.18/1.03  --res_lit_sel                           adaptive
% 1.18/1.03  --res_lit_sel_side                      none
% 1.18/1.03  --res_ordering                          kbo
% 1.18/1.03  --res_to_prop_solver                    active
% 1.18/1.03  --res_prop_simpl_new                    false
% 1.18/1.03  --res_prop_simpl_given                  true
% 1.18/1.03  --res_passive_queue_type                priority_queues
% 1.18/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.18/1.03  --res_passive_queues_freq               [15;5]
% 1.18/1.03  --res_forward_subs                      full
% 1.18/1.03  --res_backward_subs                     full
% 1.18/1.03  --res_forward_subs_resolution           true
% 1.18/1.03  --res_backward_subs_resolution          true
% 1.18/1.03  --res_orphan_elimination                true
% 1.18/1.03  --res_time_limit                        2.
% 1.18/1.03  --res_out_proof                         true
% 1.18/1.03  
% 1.18/1.03  ------ Superposition Options
% 1.18/1.03  
% 1.18/1.03  --superposition_flag                    true
% 1.18/1.03  --sup_passive_queue_type                priority_queues
% 1.18/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.18/1.03  --sup_passive_queues_freq               [8;1;4]
% 1.18/1.03  --demod_completeness_check              fast
% 1.18/1.03  --demod_use_ground                      true
% 1.18/1.03  --sup_to_prop_solver                    passive
% 1.18/1.03  --sup_prop_simpl_new                    true
% 1.18/1.03  --sup_prop_simpl_given                  true
% 1.18/1.03  --sup_fun_splitting                     false
% 1.18/1.03  --sup_smt_interval                      50000
% 1.18/1.03  
% 1.18/1.03  ------ Superposition Simplification Setup
% 1.18/1.03  
% 1.18/1.03  --sup_indices_passive                   []
% 1.18/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.18/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.18/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.18/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 1.18/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.18/1.03  --sup_full_bw                           [BwDemod]
% 1.18/1.03  --sup_immed_triv                        [TrivRules]
% 1.18/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.18/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.18/1.03  --sup_immed_bw_main                     []
% 1.18/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.18/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 1.18/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.18/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.18/1.03  
% 1.18/1.03  ------ Combination Options
% 1.18/1.03  
% 1.18/1.03  --comb_res_mult                         3
% 1.18/1.03  --comb_sup_mult                         2
% 1.18/1.03  --comb_inst_mult                        10
% 1.18/1.03  
% 1.18/1.03  ------ Debug Options
% 1.18/1.03  
% 1.18/1.03  --dbg_backtrace                         false
% 1.18/1.03  --dbg_dump_prop_clauses                 false
% 1.18/1.03  --dbg_dump_prop_clauses_file            -
% 1.18/1.03  --dbg_out_stat                          false
% 1.18/1.03  
% 1.18/1.03  
% 1.18/1.03  
% 1.18/1.03  
% 1.18/1.03  ------ Proving...
% 1.18/1.03  
% 1.18/1.03  
% 1.18/1.03  % SZS status Theorem for theBenchmark.p
% 1.18/1.03  
% 1.18/1.03  % SZS output start CNFRefutation for theBenchmark.p
% 1.18/1.03  
% 1.18/1.03  fof(f12,axiom,(
% 1.18/1.03    ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) <=> ~r2_hidden(X0,X1))),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f22,plain,(
% 1.18/1.03    ! [X0,X1] : ((k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) | r2_hidden(X0,X1)) & (~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0)))),
% 1.18/1.03    inference(nnf_transformation,[],[f12])).
% 1.18/1.03  
% 1.18/1.03  fof(f44,plain,(
% 1.18/1.03    ( ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) | r2_hidden(X0,X1)) )),
% 1.18/1.03    inference(cnf_transformation,[],[f22])).
% 1.18/1.03  
% 1.18/1.03  fof(f1,axiom,(
% 1.18/1.03    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f25,plain,(
% 1.18/1.03    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.18/1.03    inference(cnf_transformation,[],[f1])).
% 1.18/1.03  
% 1.18/1.03  fof(f5,axiom,(
% 1.18/1.03    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f36,plain,(
% 1.18/1.03    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.18/1.03    inference(cnf_transformation,[],[f5])).
% 1.18/1.03  
% 1.18/1.03  fof(f6,axiom,(
% 1.18/1.03    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f37,plain,(
% 1.18/1.03    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.18/1.03    inference(cnf_transformation,[],[f6])).
% 1.18/1.03  
% 1.18/1.03  fof(f7,axiom,(
% 1.18/1.03    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f38,plain,(
% 1.18/1.03    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 1.18/1.03    inference(cnf_transformation,[],[f7])).
% 1.18/1.03  
% 1.18/1.03  fof(f8,axiom,(
% 1.18/1.03    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f39,plain,(
% 1.18/1.03    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 1.18/1.03    inference(cnf_transformation,[],[f8])).
% 1.18/1.03  
% 1.18/1.03  fof(f9,axiom,(
% 1.18/1.03    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f40,plain,(
% 1.18/1.03    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 1.18/1.03    inference(cnf_transformation,[],[f9])).
% 1.18/1.03  
% 1.18/1.03  fof(f10,axiom,(
% 1.18/1.03    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f41,plain,(
% 1.18/1.03    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 1.18/1.03    inference(cnf_transformation,[],[f10])).
% 1.18/1.03  
% 1.18/1.03  fof(f11,axiom,(
% 1.18/1.03    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f42,plain,(
% 1.18/1.03    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 1.18/1.03    inference(cnf_transformation,[],[f11])).
% 1.18/1.03  
% 1.18/1.03  fof(f47,plain,(
% 1.18/1.03    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 1.18/1.03    inference(definition_unfolding,[],[f41,f42])).
% 1.18/1.03  
% 1.18/1.03  fof(f48,plain,(
% 1.18/1.03    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 1.18/1.03    inference(definition_unfolding,[],[f40,f47])).
% 1.18/1.03  
% 1.18/1.03  fof(f49,plain,(
% 1.18/1.03    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 1.18/1.03    inference(definition_unfolding,[],[f39,f48])).
% 1.18/1.03  
% 1.18/1.03  fof(f50,plain,(
% 1.18/1.03    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 1.18/1.03    inference(definition_unfolding,[],[f38,f49])).
% 1.18/1.03  
% 1.18/1.03  fof(f51,plain,(
% 1.18/1.03    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 1.18/1.03    inference(definition_unfolding,[],[f37,f50])).
% 1.18/1.03  
% 1.18/1.03  fof(f52,plain,(
% 1.18/1.03    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 1.18/1.03    inference(definition_unfolding,[],[f36,f51])).
% 1.18/1.03  
% 1.18/1.03  fof(f61,plain,(
% 1.18/1.03    ( ! [X0,X1] : (k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) | r2_hidden(X0,X1)) )),
% 1.18/1.03    inference(definition_unfolding,[],[f44,f25,f52,f52])).
% 1.18/1.03  
% 1.18/1.03  fof(f13,conjecture,(
% 1.18/1.03    ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_xboole_0 => X0 = X1)),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f14,negated_conjecture,(
% 1.18/1.03    ~! [X0,X1] : (k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_xboole_0 => X0 = X1)),
% 1.18/1.03    inference(negated_conjecture,[],[f13])).
% 1.18/1.03  
% 1.18/1.03  fof(f16,plain,(
% 1.18/1.03    ? [X0,X1] : (X0 != X1 & k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_xboole_0)),
% 1.18/1.03    inference(ennf_transformation,[],[f14])).
% 1.18/1.03  
% 1.18/1.03  fof(f23,plain,(
% 1.18/1.03    ? [X0,X1] : (X0 != X1 & k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_xboole_0) => (sK1 != sK2 & k4_xboole_0(k1_tarski(sK1),k1_tarski(sK2)) = k1_xboole_0)),
% 1.18/1.03    introduced(choice_axiom,[])).
% 1.18/1.03  
% 1.18/1.03  fof(f24,plain,(
% 1.18/1.03    sK1 != sK2 & k4_xboole_0(k1_tarski(sK1),k1_tarski(sK2)) = k1_xboole_0),
% 1.18/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f16,f23])).
% 1.18/1.03  
% 1.18/1.03  fof(f45,plain,(
% 1.18/1.03    k4_xboole_0(k1_tarski(sK1),k1_tarski(sK2)) = k1_xboole_0),
% 1.18/1.03    inference(cnf_transformation,[],[f24])).
% 1.18/1.03  
% 1.18/1.03  fof(f63,plain,(
% 1.18/1.03    k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k1_xboole_0),
% 1.18/1.03    inference(definition_unfolding,[],[f45,f25,f52,f52])).
% 1.18/1.03  
% 1.18/1.03  fof(f43,plain,(
% 1.18/1.03    ( ! [X0,X1] : (~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0)) )),
% 1.18/1.03    inference(cnf_transformation,[],[f22])).
% 1.18/1.03  
% 1.18/1.03  fof(f62,plain,(
% 1.18/1.03    ( ! [X0,X1] : (~r2_hidden(X0,X1) | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 1.18/1.03    inference(definition_unfolding,[],[f43,f25,f52,f52])).
% 1.18/1.03  
% 1.18/1.03  fof(f46,plain,(
% 1.18/1.03    sK1 != sK2),
% 1.18/1.03    inference(cnf_transformation,[],[f24])).
% 1.18/1.03  
% 1.18/1.03  fof(f4,axiom,(
% 1.18/1.03    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f15,plain,(
% 1.18/1.03    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 1.18/1.03    inference(ennf_transformation,[],[f4])).
% 1.18/1.03  
% 1.18/1.03  fof(f17,plain,(
% 1.18/1.03    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 1.18/1.03    inference(nnf_transformation,[],[f15])).
% 1.18/1.03  
% 1.18/1.03  fof(f18,plain,(
% 1.18/1.03    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 1.18/1.03    inference(flattening,[],[f17])).
% 1.18/1.03  
% 1.18/1.03  fof(f19,plain,(
% 1.18/1.03    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 1.18/1.03    inference(rectify,[],[f18])).
% 1.18/1.03  
% 1.18/1.03  fof(f20,plain,(
% 1.18/1.03    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK0(X0,X1,X2,X3) != X2 & sK0(X0,X1,X2,X3) != X1 & sK0(X0,X1,X2,X3) != X0) | ~r2_hidden(sK0(X0,X1,X2,X3),X3)) & (sK0(X0,X1,X2,X3) = X2 | sK0(X0,X1,X2,X3) = X1 | sK0(X0,X1,X2,X3) = X0 | r2_hidden(sK0(X0,X1,X2,X3),X3))))),
% 1.18/1.03    introduced(choice_axiom,[])).
% 1.18/1.03  
% 1.18/1.03  fof(f21,plain,(
% 1.18/1.03    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK0(X0,X1,X2,X3) != X2 & sK0(X0,X1,X2,X3) != X1 & sK0(X0,X1,X2,X3) != X0) | ~r2_hidden(sK0(X0,X1,X2,X3),X3)) & (sK0(X0,X1,X2,X3) = X2 | sK0(X0,X1,X2,X3) = X1 | sK0(X0,X1,X2,X3) = X0 | r2_hidden(sK0(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 1.18/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f19,f20])).
% 1.18/1.03  
% 1.18/1.03  fof(f28,plain,(
% 1.18/1.03    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k1_enumset1(X0,X1,X2) != X3) )),
% 1.18/1.03    inference(cnf_transformation,[],[f21])).
% 1.18/1.03  
% 1.18/1.03  fof(f60,plain,(
% 1.18/1.03    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3) )),
% 1.18/1.03    inference(definition_unfolding,[],[f28,f50])).
% 1.18/1.03  
% 1.18/1.03  fof(f70,plain,(
% 1.18/1.03    ( ! [X2,X0,X5,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2))) )),
% 1.18/1.03    inference(equality_resolution,[],[f60])).
% 1.18/1.03  
% 1.18/1.03  fof(f29,plain,(
% 1.18/1.03    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 1.18/1.03    inference(cnf_transformation,[],[f21])).
% 1.18/1.03  
% 1.18/1.03  fof(f59,plain,(
% 1.18/1.03    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3) )),
% 1.18/1.03    inference(definition_unfolding,[],[f29,f50])).
% 1.18/1.03  
% 1.18/1.03  fof(f68,plain,(
% 1.18/1.03    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2) != X3) )),
% 1.18/1.03    inference(equality_resolution,[],[f59])).
% 1.18/1.03  
% 1.18/1.03  fof(f69,plain,(
% 1.18/1.03    ( ! [X2,X5,X1] : (r2_hidden(X5,k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2))) )),
% 1.18/1.03    inference(equality_resolution,[],[f68])).
% 1.18/1.03  
% 1.18/1.03  fof(f2,axiom,(
% 1.18/1.03    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f26,plain,(
% 1.18/1.03    ( ! [X0] : (k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0) )),
% 1.18/1.03    inference(cnf_transformation,[],[f2])).
% 1.18/1.03  
% 1.18/1.03  fof(f3,axiom,(
% 1.18/1.03    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 1.18/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.18/1.03  
% 1.18/1.03  fof(f27,plain,(
% 1.18/1.03    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.18/1.03    inference(cnf_transformation,[],[f3])).
% 1.18/1.03  
% 1.18/1.03  cnf(c_10,plain,
% 1.18/1.03      ( r2_hidden(X0,X1)
% 1.18/1.03      | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
% 1.18/1.03      inference(cnf_transformation,[],[f61]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_734,plain,
% 1.18/1.03      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
% 1.18/1.03      | r2_hidden(X0,X1) = iProver_top ),
% 1.18/1.03      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_13,negated_conjecture,
% 1.18/1.03      ( k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k1_xboole_0 ),
% 1.18/1.03      inference(cnf_transformation,[],[f63]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_11,plain,
% 1.18/1.03      ( ~ r2_hidden(X0,X1)
% 1.18/1.03      | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
% 1.18/1.03      inference(cnf_transformation,[],[f62]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_733,plain,
% 1.18/1.03      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k3_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
% 1.18/1.03      | r2_hidden(X0,X1) != iProver_top ),
% 1.18/1.03      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1011,plain,
% 1.18/1.03      ( k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) != k1_xboole_0
% 1.18/1.03      | r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 1.18/1.03      inference(superposition,[status(thm)],[c_13,c_733]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_12,negated_conjecture,
% 1.18/1.03      ( sK1 != sK2 ),
% 1.18/1.03      inference(cnf_transformation,[],[f46]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_9,plain,
% 1.18/1.03      ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X2,X3))
% 1.18/1.03      | X0 = X1
% 1.18/1.03      | X0 = X2
% 1.18/1.03      | X0 = X3 ),
% 1.18/1.03      inference(cnf_transformation,[],[f70]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_837,plain,
% 1.18/1.03      ( ~ r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,X0,X1))
% 1.18/1.03      | sK1 = X0
% 1.18/1.03      | sK1 = X1
% 1.18/1.03      | sK1 = sK2 ),
% 1.18/1.03      inference(instantiation,[status(thm)],[c_9]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_858,plain,
% 1.18/1.03      ( ~ r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,X0))
% 1.18/1.03      | sK1 = X0
% 1.18/1.03      | sK1 = sK2 ),
% 1.18/1.03      inference(instantiation,[status(thm)],[c_837]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_918,plain,
% 1.18/1.03      ( ~ r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))
% 1.18/1.03      | sK1 = sK2 ),
% 1.18/1.03      inference(instantiation,[status(thm)],[c_858]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_919,plain,
% 1.18/1.03      ( sK1 = sK2
% 1.18/1.03      | r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 1.18/1.03      inference(predicate_to_equality,[status(thm)],[c_918]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1149,plain,
% 1.18/1.03      ( r2_hidden(sK1,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 1.18/1.03      inference(global_propositional_subsumption,
% 1.18/1.03                [status(thm)],
% 1.18/1.03                [c_1011,c_12,c_919]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1354,plain,
% 1.18/1.03      ( k5_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k3_xboole_0(k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2))) = k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) ),
% 1.18/1.03      inference(superposition,[status(thm)],[c_734,c_1149]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1359,plain,
% 1.18/1.03      ( k6_enumset1(sK1,sK1,sK1,sK1,sK1,sK1,sK1,sK1) = k1_xboole_0 ),
% 1.18/1.03      inference(light_normalisation,[status(thm)],[c_1354,c_13]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_8,plain,
% 1.18/1.03      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ),
% 1.18/1.03      inference(cnf_transformation,[],[f69]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_736,plain,
% 1.18/1.03      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) = iProver_top ),
% 1.18/1.03      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1371,plain,
% 1.18/1.03      ( r2_hidden(sK1,k1_xboole_0) = iProver_top ),
% 1.18/1.03      inference(superposition,[status(thm)],[c_1359,c_736]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_0,plain,
% 1.18/1.03      ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
% 1.18/1.03      inference(cnf_transformation,[],[f26]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1012,plain,
% 1.18/1.03      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_xboole_0) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
% 1.18/1.03      | r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 1.18/1.03      inference(superposition,[status(thm)],[c_0,c_733]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1,plain,
% 1.18/1.03      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 1.18/1.03      inference(cnf_transformation,[],[f27]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1015,plain,
% 1.18/1.03      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
% 1.18/1.03      | r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 1.18/1.03      inference(demodulation,[status(thm)],[c_1012,c_1]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1016,plain,
% 1.18/1.03      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 1.18/1.03      inference(equality_resolution_simp,[status(thm)],[c_1015]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(c_1024,plain,
% 1.18/1.03      ( r2_hidden(sK1,k1_xboole_0) != iProver_top ),
% 1.18/1.03      inference(instantiation,[status(thm)],[c_1016]) ).
% 1.18/1.03  
% 1.18/1.03  cnf(contradiction,plain,
% 1.18/1.03      ( $false ),
% 1.18/1.03      inference(minisat,[status(thm)],[c_1371,c_1024]) ).
% 1.18/1.03  
% 1.18/1.03  
% 1.18/1.03  % SZS output end CNFRefutation for theBenchmark.p
% 1.18/1.03  
% 1.18/1.03  ------                               Statistics
% 1.18/1.03  
% 1.18/1.03  ------ General
% 1.18/1.03  
% 1.18/1.03  abstr_ref_over_cycles:                  0
% 1.18/1.03  abstr_ref_under_cycles:                 0
% 1.18/1.03  gc_basic_clause_elim:                   0
% 1.18/1.03  forced_gc_time:                         0
% 1.18/1.03  parsing_time:                           0.009
% 1.18/1.03  unif_index_cands_time:                  0.
% 1.18/1.03  unif_index_add_time:                    0.
% 1.18/1.03  orderings_time:                         0.
% 1.18/1.03  out_proof_time:                         0.009
% 1.18/1.03  total_time:                             0.089
% 1.18/1.03  num_of_symbols:                         39
% 1.18/1.03  num_of_terms:                           1523
% 1.18/1.03  
% 1.18/1.03  ------ Preprocessing
% 1.18/1.03  
% 1.18/1.03  num_of_splits:                          0
% 1.18/1.03  num_of_split_atoms:                     0
% 1.18/1.03  num_of_reused_defs:                     0
% 1.18/1.03  num_eq_ax_congr_red:                    8
% 1.18/1.03  num_of_sem_filtered_clauses:            1
% 1.18/1.03  num_of_subtypes:                        0
% 1.18/1.03  monotx_restored_types:                  0
% 1.18/1.03  sat_num_of_epr_types:                   0
% 1.18/1.03  sat_num_of_non_cyclic_types:            0
% 1.18/1.03  sat_guarded_non_collapsed_types:        0
% 1.18/1.03  num_pure_diseq_elim:                    0
% 1.18/1.03  simp_replaced_by:                       0
% 1.18/1.03  res_preprocessed:                       55
% 1.18/1.03  prep_upred:                             0
% 1.18/1.03  prep_unflattend:                        30
% 1.18/1.03  smt_new_axioms:                         0
% 1.18/1.03  pred_elim_cands:                        1
% 1.18/1.03  pred_elim:                              0
% 1.18/1.03  pred_elim_cl:                           0
% 1.18/1.03  pred_elim_cycles:                       1
% 1.18/1.03  merged_defs:                            6
% 1.18/1.03  merged_defs_ncl:                        0
% 1.18/1.03  bin_hyper_res:                          6
% 1.18/1.03  prep_cycles:                            3
% 1.18/1.03  pred_elim_time:                         0.004
% 1.18/1.03  splitting_time:                         0.
% 1.18/1.03  sem_filter_time:                        0.
% 1.18/1.03  monotx_time:                            0.
% 1.18/1.03  subtype_inf_time:                       0.
% 1.18/1.03  
% 1.18/1.03  ------ Problem properties
% 1.18/1.03  
% 1.18/1.03  clauses:                                14
% 1.18/1.03  conjectures:                            2
% 1.18/1.03  epr:                                    1
% 1.18/1.03  horn:                                   11
% 1.18/1.03  ground:                                 2
% 1.18/1.03  unary:                                  7
% 1.18/1.03  binary:                                 2
% 1.18/1.03  lits:                                   29
% 1.18/1.03  lits_eq:                                19
% 1.18/1.03  fd_pure:                                0
% 1.18/1.03  fd_pseudo:                              0
% 1.18/1.03  fd_cond:                                0
% 1.18/1.03  fd_pseudo_cond:                         4
% 1.18/1.03  ac_symbols:                             0
% 1.18/1.03  
% 1.18/1.03  ------ Propositional Solver
% 1.18/1.03  
% 1.18/1.03  prop_solver_calls:                      22
% 1.18/1.03  prop_fast_solver_calls:                 364
% 1.18/1.03  smt_solver_calls:                       0
% 1.18/1.03  smt_fast_solver_calls:                  0
% 1.18/1.03  prop_num_of_clauses:                    340
% 1.18/1.03  prop_preprocess_simplified:             1955
% 1.18/1.03  prop_fo_subsumed:                       1
% 1.18/1.03  prop_solver_time:                       0.
% 1.18/1.03  smt_solver_time:                        0.
% 1.18/1.03  smt_fast_solver_time:                   0.
% 1.18/1.03  prop_fast_solver_time:                  0.
% 1.18/1.03  prop_unsat_core_time:                   0.
% 1.18/1.03  
% 1.18/1.03  ------ QBF
% 1.18/1.03  
% 1.18/1.03  qbf_q_res:                              0
% 1.18/1.03  qbf_num_tautologies:                    0
% 1.18/1.03  qbf_prep_cycles:                        0
% 1.18/1.03  
% 1.18/1.03  ------ BMC1
% 1.18/1.03  
% 1.18/1.03  bmc1_current_bound:                     -1
% 1.18/1.03  bmc1_last_solved_bound:                 -1
% 1.18/1.03  bmc1_unsat_core_size:                   -1
% 1.18/1.03  bmc1_unsat_core_parents_size:           -1
% 1.18/1.03  bmc1_merge_next_fun:                    0
% 1.18/1.03  bmc1_unsat_core_clauses_time:           0.
% 1.18/1.03  
% 1.18/1.03  ------ Instantiation
% 1.18/1.03  
% 1.18/1.03  inst_num_of_clauses:                    117
% 1.18/1.03  inst_num_in_passive:                    22
% 1.18/1.03  inst_num_in_active:                     69
% 1.18/1.03  inst_num_in_unprocessed:                26
% 1.18/1.03  inst_num_of_loops:                      80
% 1.18/1.03  inst_num_of_learning_restarts:          0
% 1.18/1.03  inst_num_moves_active_passive:          9
% 1.18/1.03  inst_lit_activity:                      0
% 1.18/1.03  inst_lit_activity_moves:                0
% 1.18/1.03  inst_num_tautologies:                   0
% 1.18/1.03  inst_num_prop_implied:                  0
% 1.18/1.03  inst_num_existing_simplified:           0
% 1.18/1.03  inst_num_eq_res_simplified:             0
% 1.18/1.03  inst_num_child_elim:                    0
% 1.18/1.03  inst_num_of_dismatching_blockings:      40
% 1.18/1.03  inst_num_of_non_proper_insts:           125
% 1.18/1.03  inst_num_of_duplicates:                 0
% 1.18/1.03  inst_inst_num_from_inst_to_res:         0
% 1.18/1.03  inst_dismatching_checking_time:         0.
% 1.18/1.03  
% 1.18/1.03  ------ Resolution
% 1.18/1.03  
% 1.18/1.03  res_num_of_clauses:                     0
% 1.18/1.03  res_num_in_passive:                     0
% 1.18/1.03  res_num_in_active:                      0
% 1.18/1.03  res_num_of_loops:                       58
% 1.18/1.03  res_forward_subset_subsumed:            14
% 1.18/1.03  res_backward_subset_subsumed:           0
% 1.18/1.03  res_forward_subsumed:                   0
% 1.18/1.03  res_backward_subsumed:                  0
% 1.18/1.03  res_forward_subsumption_resolution:     0
% 1.18/1.03  res_backward_subsumption_resolution:    0
% 1.18/1.03  res_clause_to_clause_subsumption:       56
% 1.18/1.03  res_orphan_elimination:                 0
% 1.18/1.03  res_tautology_del:                      17
% 1.18/1.03  res_num_eq_res_simplified:              0
% 1.18/1.03  res_num_sel_changes:                    0
% 1.18/1.03  res_moves_from_active_to_pass:          0
% 1.18/1.03  
% 1.18/1.03  ------ Superposition
% 1.18/1.03  
% 1.18/1.03  sup_time_total:                         0.
% 1.18/1.03  sup_time_generating:                    0.
% 1.18/1.03  sup_time_sim_full:                      0.
% 1.18/1.03  sup_time_sim_immed:                     0.
% 1.18/1.03  
% 1.18/1.03  sup_num_of_clauses:                     20
% 1.18/1.03  sup_num_in_active:                      15
% 1.18/1.03  sup_num_in_passive:                     5
% 1.18/1.03  sup_num_of_loops:                       15
% 1.18/1.03  sup_fw_superposition:                   5
% 1.18/1.03  sup_bw_superposition:                   9
% 1.18/1.03  sup_immediate_simplified:               3
% 1.18/1.03  sup_given_eliminated:                   0
% 1.18/1.03  comparisons_done:                       0
% 1.18/1.03  comparisons_avoided:                    0
% 1.18/1.03  
% 1.18/1.03  ------ Simplifications
% 1.18/1.03  
% 1.18/1.03  
% 1.18/1.03  sim_fw_subset_subsumed:                 1
% 1.18/1.03  sim_bw_subset_subsumed:                 0
% 1.18/1.03  sim_fw_subsumed:                        0
% 1.18/1.03  sim_bw_subsumed:                        0
% 1.18/1.03  sim_fw_subsumption_res:                 0
% 1.18/1.03  sim_bw_subsumption_res:                 0
% 1.18/1.03  sim_tautology_del:                      0
% 1.18/1.03  sim_eq_tautology_del:                   2
% 1.18/1.03  sim_eq_res_simp:                        1
% 1.18/1.03  sim_fw_demodulated:                     2
% 1.18/1.03  sim_bw_demodulated:                     1
% 1.18/1.03  sim_light_normalised:                   2
% 1.18/1.03  sim_joinable_taut:                      0
% 1.18/1.03  sim_joinable_simp:                      0
% 1.18/1.03  sim_ac_normalised:                      0
% 1.18/1.03  sim_smt_subsumption:                    0
% 1.18/1.03  
%------------------------------------------------------------------------------
