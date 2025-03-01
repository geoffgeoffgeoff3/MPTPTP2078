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
% DateTime   : Thu Dec  3 11:31:56 EST 2020

% Result     : Theorem 2.83s
% Output     : CNFRefutation 2.83s
% Verified   : 
% Statistics : ERROR: Analysing output (Could not find formula named c_827)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,axiom,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
     => r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f8,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f46,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f39,f40])).

fof(f47,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f38,f46])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f42,f47])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
     => k4_xboole_0(X0,X1) = X0 ) ),
    inference(unused_predicate_definition_removal,[],[f7])).

fof(f17,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f37,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => r1_tarski(k1_tarski(X0),X1) ) ),
    inference(unused_predicate_definition_removal,[],[f11])).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f41,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_enumset1(X0,X0,X0,X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f41,f47])).

fof(f13,conjecture,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <=> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] :
        ( r1_tarski(X0,k1_tarski(X1))
      <=> ( k1_tarski(X1) = X0
          | k1_xboole_0 = X0 ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f20,plain,(
    ? [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <~> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f24,plain,(
    ? [X0,X1] :
      ( ( ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 )
        | ~ r1_tarski(X0,k1_tarski(X1)) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f25,plain,(
    ? [X0,X1] :
      ( ( ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 )
        | ~ r1_tarski(X0,k1_tarski(X1)) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(flattening,[],[f24])).

fof(f26,plain,
    ( ? [X0,X1] :
        ( ( ( k1_tarski(X1) != X0
            & k1_xboole_0 != X0 )
          | ~ r1_tarski(X0,k1_tarski(X1)) )
        & ( k1_tarski(X1) = X0
          | k1_xboole_0 = X0
          | r1_tarski(X0,k1_tarski(X1)) ) )
   => ( ( ( k1_tarski(sK1) != sK0
          & k1_xboole_0 != sK0 )
        | ~ r1_tarski(sK0,k1_tarski(sK1)) )
      & ( k1_tarski(sK1) = sK0
        | k1_xboole_0 = sK0
        | r1_tarski(sK0,k1_tarski(sK1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,
    ( ( ( k1_tarski(sK1) != sK0
        & k1_xboole_0 != sK0 )
      | ~ r1_tarski(sK0,k1_tarski(sK1)) )
    & ( k1_tarski(sK1) = sK0
      | k1_xboole_0 = sK0
      | r1_tarski(sK0,k1_tarski(sK1)) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f25,f26])).

fof(f43,plain,
    ( k1_tarski(sK1) = sK0
    | k1_xboole_0 = sK0
    | r1_tarski(sK0,k1_tarski(sK1)) ),
    inference(cnf_transformation,[],[f27])).

fof(f53,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = sK0
    | k1_xboole_0 = sK0
    | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) ),
    inference(definition_unfolding,[],[f43,f47,f47])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f33,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f21])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f55,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f29])).

fof(f32,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | k4_xboole_0(X0,X1) != k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f31,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f45,plain,
    ( k1_tarski(sK1) != sK0
    | ~ r1_tarski(sK0,k1_tarski(sK1)) ),
    inference(cnf_transformation,[],[f27])).

fof(f51,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) != sK0
    | ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) ),
    inference(definition_unfolding,[],[f45,f47,f47])).

fof(f44,plain,
    ( k1_xboole_0 != sK0
    | ~ r1_tarski(sK0,k1_tarski(sK1)) ),
    inference(cnf_transformation,[],[f27])).

fof(f52,plain,
    ( k1_xboole_0 != sK0
    | ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) ),
    inference(definition_unfolding,[],[f44,f47])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f6,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f48,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f28,f36,f36])).

fof(f5,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f4,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f4])).

cnf(c_10,plain,
    ( r2_hidden(X0,X1)
    | r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_617,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_8,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_619,plain,
    ( k4_xboole_0(X0,X1) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_973,plain,
    ( k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = k2_enumset1(X0,X0,X0,X0)
    | r2_hidden(X0,X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_617,c_619])).

cnf(c_9,plain,
    ( ~ r2_hidden(X0,X1)
    | r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_618,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_13,negated_conjecture,
    ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | k2_enumset1(sK1,sK1,sK1,sK1) = sK0
    | k1_xboole_0 = sK0 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_614,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = sK0
    | k1_xboole_0 = sK0
    | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f33])).

cnf(c_622,plain,
    ( k4_xboole_0(X0,X1) = k1_xboole_0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1137,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = sK0
    | k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
    | sK0 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_614,c_622])).

cnf(c_724,plain,
    ( ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_325,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_746,plain,
    ( sK0 = sK0 ),
    inference(instantiation,[status(thm)],[c_325])).

cnf(c_328,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_711,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | k2_enumset1(sK1,sK1,sK1,sK1) != X1
    | sK0 != X0 ),
    inference(instantiation,[status(thm)],[c_328])).

cnf(c_745,plain,
    ( ~ r1_tarski(sK0,X0)
    | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | k2_enumset1(sK1,sK1,sK1,sK1) != X0
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_711])).

cnf(c_788,plain,
    ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | ~ r1_tarski(sK0,sK0)
    | k2_enumset1(sK1,sK1,sK1,sK1) != sK0
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_745])).

cnf(c_3,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_789,plain,
    ( r1_tarski(sK0,sK0) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1150,plain,
    ( k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
    | sK0 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1137,c_724,c_746,c_788,c_789])).

cnf(c_5,plain,
    ( r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_621,plain,
    ( k4_xboole_0(X0,X1) != k1_xboole_0
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1154,plain,
    ( sK0 = k1_xboole_0
    | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1150,c_621])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_624,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1500,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = sK0
    | sK0 = k1_xboole_0
    | r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1154,c_624])).

cnf(c_11,negated_conjecture,
    ( ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | k2_enumset1(sK1,sK1,sK1,sK1) != sK0 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_16,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) != sK0
    | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_868,plain,
    ( ~ r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),sK0)
    | ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | k2_enumset1(sK1,sK1,sK1,sK1) = sK0 ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_869,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = sK0
    | r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),sK0) != iProver_top
    | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_868])).

cnf(c_1951,plain,
    ( sK0 = k1_xboole_0
    | r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),sK0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1500,c_16,c_869,c_1154])).

cnf(c_1957,plain,
    ( sK0 = k1_xboole_0
    | r2_hidden(sK1,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_618,c_1951])).

cnf(c_2452,plain,
    ( k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0) = k2_enumset1(sK1,sK1,sK1,sK1)
    | sK0 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_973,c_1957])).

cnf(c_12,negated_conjecture,
    ( ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_697,plain,
    ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_772,plain,
    ( ~ r1_tarski(X0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,X0)
    | k1_xboole_0 = X0 ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_909,plain,
    ( ~ r1_tarski(k1_xboole_0,k1_xboole_0)
    | k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_772])).

cnf(c_910,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_326,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_709,plain,
    ( sK0 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK0 ),
    inference(instantiation,[status(thm)],[c_326])).

cnf(c_1047,plain,
    ( sK0 != k1_xboole_0
    | k1_xboole_0 = sK0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_709])).

cnf(c_0,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1067,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) != k1_xboole_0
    | r1_tarski(X1,k4_xboole_0(X1,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_621])).

cnf(c_1375,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) != k1_xboole_0
    | r1_tarski(k4_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(X0,X1),X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_1067])).

cnf(c_1532,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) != k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(X0,X1),X0),k4_xboole_0(k4_xboole_0(k4_xboole_0(X0,X1),X0),k4_xboole_0(X0,X1))) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_1375])).

cnf(c_1684,plain,
    ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X1,k4_xboole_0(k4_xboole_0(X1,X0),k4_xboole_0(k4_xboole_0(X1,X0),X1)))) != k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_1532])).

cnf(c_1847,plain,
    ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X0))))) != k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_1684])).

cnf(c_2632,plain,
    ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X0,k4_xboole_0(X0,X1))))) != k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_1847])).

cnf(c_2722,plain,
    ( k4_xboole_0(k4_xboole_0(sK0,k1_xboole_0),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(sK0,k1_xboole_0)))) != k1_xboole_0
    | sK0 = k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1150,c_2632])).

cnf(c_7,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_2737,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0))) != k1_xboole_0
    | sK0 = k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2722,c_7])).

cnf(c_37,plain,
    ( r1_tarski(sK1,sK1) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_41,plain,
    ( ~ r1_tarski(sK1,sK1)
    | sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_330,plain,
    ( X0 != X1
    | X2 != X3
    | X4 != X5
    | X6 != X7
    | k2_enumset1(X0,X2,X4,X6) = k2_enumset1(X1,X3,X5,X7) ),
    theory(equality)).

cnf(c_334,plain,
    ( k2_enumset1(sK1,sK1,sK1,sK1) = k2_enumset1(sK1,sK1,sK1,sK1)
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_330])).

cnf(c_1046,plain,
    ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | ~ r1_tarski(k1_xboole_0,X0)
    | k2_enumset1(sK1,sK1,sK1,sK1) != X0
    | sK0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_711])).

cnf(c_1592,plain,
    ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | ~ r1_tarski(k1_xboole_0,k2_enumset1(sK1,sK1,sK1,sK1))
    | k2_enumset1(sK1,sK1,sK1,sK1) != k2_enumset1(sK1,sK1,sK1,sK1)
    | sK0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1046])).

cnf(c_6,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_2222,plain,
    ( r1_tarski(k1_xboole_0,k2_enumset1(sK1,sK1,sK1,sK1)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_3207,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0))) != k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2737,c_12,c_37,c_41,c_334,c_697,c_724,c_909,c_910,c_1047,c_1150,c_1592,c_2222])).

cnf(c_3213,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)))) != k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_3207])).

cnf(c_3332,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(sK0,k1_xboole_0)) != k1_xboole_0
    | sK0 = k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1150,c_3213])).

cnf(c_623,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_1135,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_623,c_622])).

cnf(c_3336,plain,
    ( sK0 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3332,c_7,c_1135])).

cnf(c_3337,plain,
    ( sK0 = k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_3336])).

cnf(c_3471,plain,
    ( r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3337,c_12,c_37,c_41,c_334,c_697,c_724,c_909,c_910,c_1047,c_1150,c_1592,c_2222])).

cnf(c_3476,plain,
    ( r1_tarski(k4_xboole_0(k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))))) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_3471])).

cnf(c_3551,plain,
    ( sK0 = k1_xboole_0
    | r1_tarski(k4_xboole_0(k4_xboole_0(sK0,k1_xboole_0),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(sK0,k1_xboole_0),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(sK0,k1_xboole_0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1150,c_3476])).

cnf(c_3564,plain,
    ( sK0 = k1_xboole_0
    | r1_tarski(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_3551,c_7])).

cnf(c_3570,plain,
    ( r1_tarski(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3564,c_12,c_37,c_41,c_334,c_697,c_724,c_909,c_910,c_1047,c_1150,c_1592,c_2222])).

cnf(c_3577,plain,
    ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | r1_tarski(k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0),k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3570,c_624])).

cnf(c_4068,plain,
    ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | sK0 = k1_xboole_0
    | r1_tarski(k4_xboole_0(k1_xboole_0,sK0),k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1150,c_3577])).

cnf(c_620,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1136,plain,
    ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_620,c_622])).

cnf(c_4070,plain,
    ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
    | sK0 = k1_xboole_0
    | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4068,c_1136])).

cnf(c_913,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_910])).

cnf(c_4121,plain,
    ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4070,c_12,c_37,c_41,c_334,c_697,c_724,c_909,c_910,c_913,c_1047,c_1150,c_1592,c_2222])).

cnf(c_4150,plain,
    ( k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) != k1_xboole_0
    | r1_tarski(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = iProver_top ),
    inference(superposition,[status(thm)],[c_4121,c_621])).

cnf(c_4212,plain,
    ( r1_tarski(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4150,c_37,c_41,c_334,c_724,c_1150,c_1592,c_2222])).

cnf(c_4219,plain,
    ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4212,c_622])).

cnf(c_4291,plain,
    ( k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4219,c_4121])).

cnf(c_6331,plain,
    ( k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0) = k2_enumset1(sK1,sK1,sK1,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2452,c_11,c_37,c_41,c_334,c_697,c_724,c_827,c_868,c_1018,c_1150,c_1592,c_1981,c_2222])).

cnf(c_6387,plain,
    ( k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k2_enumset1(sK1,sK1,sK1,sK1)) = k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))) ),
    inference(superposition,[status(thm)],[c_6331,c_0])).

cnf(c_6389,plain,
    ( k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k2_enumset1(sK1,sK1,sK1,sK1)) = k4_xboole_0(sK0,k1_xboole_0) ),
    inference(light_normalisation,[status(thm)],[c_6387,c_4291])).

cnf(c_6390,plain,
    ( sK0 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_6389,c_7,c_1135])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6390,c_4291,c_1047,c_910,c_909,c_697,c_12])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 15:33:07 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.83/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.83/0.99  
% 2.83/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.83/0.99  
% 2.83/0.99  ------  iProver source info
% 2.83/0.99  
% 2.83/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.83/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.83/0.99  git: non_committed_changes: false
% 2.83/0.99  git: last_make_outside_of_git: false
% 2.83/0.99  
% 2.83/0.99  ------ 
% 2.83/0.99  
% 2.83/0.99  ------ Input Options
% 2.83/0.99  
% 2.83/0.99  --out_options                           all
% 2.83/0.99  --tptp_safe_out                         true
% 2.83/0.99  --problem_path                          ""
% 2.83/0.99  --include_path                          ""
% 2.83/0.99  --clausifier                            res/vclausify_rel
% 2.83/0.99  --clausifier_options                    --mode clausify
% 2.83/0.99  --stdin                                 false
% 2.83/0.99  --stats_out                             all
% 2.83/0.99  
% 2.83/0.99  ------ General Options
% 2.83/0.99  
% 2.83/0.99  --fof                                   false
% 2.83/0.99  --time_out_real                         305.
% 2.83/0.99  --time_out_virtual                      -1.
% 2.83/0.99  --symbol_type_check                     false
% 2.83/0.99  --clausify_out                          false
% 2.83/0.99  --sig_cnt_out                           false
% 2.83/0.99  --trig_cnt_out                          false
% 2.83/0.99  --trig_cnt_out_tolerance                1.
% 2.83/0.99  --trig_cnt_out_sk_spl                   false
% 2.83/0.99  --abstr_cl_out                          false
% 2.83/0.99  
% 2.83/0.99  ------ Global Options
% 2.83/0.99  
% 2.83/0.99  --schedule                              default
% 2.83/0.99  --add_important_lit                     false
% 2.83/0.99  --prop_solver_per_cl                    1000
% 2.83/0.99  --min_unsat_core                        false
% 2.83/0.99  --soft_assumptions                      false
% 2.83/0.99  --soft_lemma_size                       3
% 2.83/0.99  --prop_impl_unit_size                   0
% 2.83/0.99  --prop_impl_unit                        []
% 2.83/0.99  --share_sel_clauses                     true
% 2.83/0.99  --reset_solvers                         false
% 2.83/0.99  --bc_imp_inh                            [conj_cone]
% 2.83/0.99  --conj_cone_tolerance                   3.
% 2.83/0.99  --extra_neg_conj                        none
% 2.83/0.99  --large_theory_mode                     true
% 2.83/0.99  --prolific_symb_bound                   200
% 2.83/0.99  --lt_threshold                          2000
% 2.83/0.99  --clause_weak_htbl                      true
% 2.83/0.99  --gc_record_bc_elim                     false
% 2.83/0.99  
% 2.83/0.99  ------ Preprocessing Options
% 2.83/0.99  
% 2.83/0.99  --preprocessing_flag                    true
% 2.83/0.99  --time_out_prep_mult                    0.1
% 2.83/0.99  --splitting_mode                        input
% 2.83/0.99  --splitting_grd                         true
% 2.83/0.99  --splitting_cvd                         false
% 2.83/0.99  --splitting_cvd_svl                     false
% 2.83/0.99  --splitting_nvd                         32
% 2.83/0.99  --sub_typing                            true
% 2.83/0.99  --prep_gs_sim                           true
% 2.83/0.99  --prep_unflatten                        true
% 2.83/0.99  --prep_res_sim                          true
% 2.83/0.99  --prep_upred                            true
% 2.83/0.99  --prep_sem_filter                       exhaustive
% 2.83/0.99  --prep_sem_filter_out                   false
% 2.83/0.99  --pred_elim                             true
% 2.83/0.99  --res_sim_input                         true
% 2.83/0.99  --eq_ax_congr_red                       true
% 2.83/0.99  --pure_diseq_elim                       true
% 2.83/0.99  --brand_transform                       false
% 2.83/0.99  --non_eq_to_eq                          false
% 2.83/0.99  --prep_def_merge                        true
% 2.83/0.99  --prep_def_merge_prop_impl              false
% 2.83/0.99  --prep_def_merge_mbd                    true
% 2.83/0.99  --prep_def_merge_tr_red                 false
% 2.83/0.99  --prep_def_merge_tr_cl                  false
% 2.83/0.99  --smt_preprocessing                     true
% 2.83/0.99  --smt_ac_axioms                         fast
% 2.83/0.99  --preprocessed_out                      false
% 2.83/0.99  --preprocessed_stats                    false
% 2.83/0.99  
% 2.83/0.99  ------ Abstraction refinement Options
% 2.83/0.99  
% 2.83/0.99  --abstr_ref                             []
% 2.83/0.99  --abstr_ref_prep                        false
% 2.83/0.99  --abstr_ref_until_sat                   false
% 2.83/0.99  --abstr_ref_sig_restrict                funpre
% 2.83/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.83/0.99  --abstr_ref_under                       []
% 2.83/0.99  
% 2.83/0.99  ------ SAT Options
% 2.83/0.99  
% 2.83/0.99  --sat_mode                              false
% 2.83/0.99  --sat_fm_restart_options                ""
% 2.83/0.99  --sat_gr_def                            false
% 2.83/0.99  --sat_epr_types                         true
% 2.83/0.99  --sat_non_cyclic_types                  false
% 2.83/0.99  --sat_finite_models                     false
% 2.83/0.99  --sat_fm_lemmas                         false
% 2.83/0.99  --sat_fm_prep                           false
% 2.83/0.99  --sat_fm_uc_incr                        true
% 2.83/0.99  --sat_out_model                         small
% 2.83/0.99  --sat_out_clauses                       false
% 2.83/0.99  
% 2.83/0.99  ------ QBF Options
% 2.83/0.99  
% 2.83/0.99  --qbf_mode                              false
% 2.83/0.99  --qbf_elim_univ                         false
% 2.83/0.99  --qbf_dom_inst                          none
% 2.83/0.99  --qbf_dom_pre_inst                      false
% 2.83/0.99  --qbf_sk_in                             false
% 2.83/0.99  --qbf_pred_elim                         true
% 2.83/0.99  --qbf_split                             512
% 2.83/0.99  
% 2.83/0.99  ------ BMC1 Options
% 2.83/0.99  
% 2.83/0.99  --bmc1_incremental                      false
% 2.83/0.99  --bmc1_axioms                           reachable_all
% 2.83/0.99  --bmc1_min_bound                        0
% 2.83/0.99  --bmc1_max_bound                        -1
% 2.83/0.99  --bmc1_max_bound_default                -1
% 2.83/0.99  --bmc1_symbol_reachability              true
% 2.83/0.99  --bmc1_property_lemmas                  false
% 2.83/0.99  --bmc1_k_induction                      false
% 2.83/0.99  --bmc1_non_equiv_states                 false
% 2.83/0.99  --bmc1_deadlock                         false
% 2.83/0.99  --bmc1_ucm                              false
% 2.83/0.99  --bmc1_add_unsat_core                   none
% 2.83/0.99  --bmc1_unsat_core_children              false
% 2.83/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.83/0.99  --bmc1_out_stat                         full
% 2.83/0.99  --bmc1_ground_init                      false
% 2.83/0.99  --bmc1_pre_inst_next_state              false
% 2.83/0.99  --bmc1_pre_inst_state                   false
% 2.83/0.99  --bmc1_pre_inst_reach_state             false
% 2.83/0.99  --bmc1_out_unsat_core                   false
% 2.83/0.99  --bmc1_aig_witness_out                  false
% 2.83/0.99  --bmc1_verbose                          false
% 2.83/0.99  --bmc1_dump_clauses_tptp                false
% 2.83/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.83/0.99  --bmc1_dump_file                        -
% 2.83/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.83/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.83/0.99  --bmc1_ucm_extend_mode                  1
% 2.83/0.99  --bmc1_ucm_init_mode                    2
% 2.83/0.99  --bmc1_ucm_cone_mode                    none
% 2.83/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.83/0.99  --bmc1_ucm_relax_model                  4
% 2.83/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.83/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.83/0.99  --bmc1_ucm_layered_model                none
% 2.83/0.99  --bmc1_ucm_max_lemma_size               10
% 2.83/0.99  
% 2.83/0.99  ------ AIG Options
% 2.83/0.99  
% 2.83/0.99  --aig_mode                              false
% 2.83/0.99  
% 2.83/0.99  ------ Instantiation Options
% 2.83/0.99  
% 2.83/0.99  --instantiation_flag                    true
% 2.83/0.99  --inst_sos_flag                         false
% 2.83/0.99  --inst_sos_phase                        true
% 2.83/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.83/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.83/0.99  --inst_lit_sel_side                     num_symb
% 2.83/0.99  --inst_solver_per_active                1400
% 2.83/0.99  --inst_solver_calls_frac                1.
% 2.83/0.99  --inst_passive_queue_type               priority_queues
% 2.83/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.83/0.99  --inst_passive_queues_freq              [25;2]
% 2.83/0.99  --inst_dismatching                      true
% 2.83/0.99  --inst_eager_unprocessed_to_passive     true
% 2.83/0.99  --inst_prop_sim_given                   true
% 2.83/0.99  --inst_prop_sim_new                     false
% 2.83/0.99  --inst_subs_new                         false
% 2.83/0.99  --inst_eq_res_simp                      false
% 2.83/0.99  --inst_subs_given                       false
% 2.83/0.99  --inst_orphan_elimination               true
% 2.83/0.99  --inst_learning_loop_flag               true
% 2.83/0.99  --inst_learning_start                   3000
% 2.83/0.99  --inst_learning_factor                  2
% 2.83/0.99  --inst_start_prop_sim_after_learn       3
% 2.83/0.99  --inst_sel_renew                        solver
% 2.83/0.99  --inst_lit_activity_flag                true
% 2.83/0.99  --inst_restr_to_given                   false
% 2.83/0.99  --inst_activity_threshold               500
% 2.83/0.99  --inst_out_proof                        true
% 2.83/0.99  
% 2.83/0.99  ------ Resolution Options
% 2.83/0.99  
% 2.83/0.99  --resolution_flag                       true
% 2.83/0.99  --res_lit_sel                           adaptive
% 2.83/0.99  --res_lit_sel_side                      none
% 2.83/0.99  --res_ordering                          kbo
% 2.83/0.99  --res_to_prop_solver                    active
% 2.83/0.99  --res_prop_simpl_new                    false
% 2.83/0.99  --res_prop_simpl_given                  true
% 2.83/0.99  --res_passive_queue_type                priority_queues
% 2.83/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.83/0.99  --res_passive_queues_freq               [15;5]
% 2.83/0.99  --res_forward_subs                      full
% 2.83/0.99  --res_backward_subs                     full
% 2.83/0.99  --res_forward_subs_resolution           true
% 2.83/0.99  --res_backward_subs_resolution          true
% 2.83/0.99  --res_orphan_elimination                true
% 2.83/0.99  --res_time_limit                        2.
% 2.83/0.99  --res_out_proof                         true
% 2.83/0.99  
% 2.83/0.99  ------ Superposition Options
% 2.83/0.99  
% 2.83/0.99  --superposition_flag                    true
% 2.83/0.99  --sup_passive_queue_type                priority_queues
% 2.83/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.83/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.83/0.99  --demod_completeness_check              fast
% 2.83/0.99  --demod_use_ground                      true
% 2.83/0.99  --sup_to_prop_solver                    passive
% 2.83/0.99  --sup_prop_simpl_new                    true
% 2.83/0.99  --sup_prop_simpl_given                  true
% 2.83/0.99  --sup_fun_splitting                     false
% 2.83/0.99  --sup_smt_interval                      50000
% 2.83/0.99  
% 2.83/0.99  ------ Superposition Simplification Setup
% 2.83/0.99  
% 2.83/0.99  --sup_indices_passive                   []
% 2.83/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.83/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.83/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.83/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.83/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.83/0.99  --sup_full_bw                           [BwDemod]
% 2.83/0.99  --sup_immed_triv                        [TrivRules]
% 2.83/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.83/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.83/0.99  --sup_immed_bw_main                     []
% 2.83/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.83/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.83/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.83/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.83/0.99  
% 2.83/0.99  ------ Combination Options
% 2.83/0.99  
% 2.83/0.99  --comb_res_mult                         3
% 2.83/0.99  --comb_sup_mult                         2
% 2.83/0.99  --comb_inst_mult                        10
% 2.83/0.99  
% 2.83/0.99  ------ Debug Options
% 2.83/0.99  
% 2.83/0.99  --dbg_backtrace                         false
% 2.83/0.99  --dbg_dump_prop_clauses                 false
% 2.83/0.99  --dbg_dump_prop_clauses_file            -
% 2.83/0.99  --dbg_out_stat                          false
% 2.83/0.99  ------ Parsing...
% 2.83/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.83/0.99  
% 2.83/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.83/0.99  
% 2.83/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.83/0.99  
% 2.83/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.83/0.99  ------ Proving...
% 2.83/0.99  ------ Problem Properties 
% 2.83/0.99  
% 2.83/0.99  
% 2.83/0.99  clauses                                 13
% 2.83/0.99  conjectures                             3
% 2.83/0.99  EPR                                     3
% 2.83/0.99  Horn                                    11
% 2.83/0.99  unary                                   4
% 2.83/0.99  binary                                  7
% 2.83/0.99  lits                                    24
% 2.83/0.99  lits eq                                 10
% 2.83/0.99  fd_pure                                 0
% 2.83/0.99  fd_pseudo                               0
% 2.83/0.99  fd_cond                                 0
% 2.83/0.99  fd_pseudo_cond                          1
% 2.83/0.99  AC symbols                              0
% 2.83/0.99  
% 2.83/0.99  ------ Schedule dynamic 5 is on 
% 2.83/0.99  
% 2.83/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.83/0.99  
% 2.83/0.99  
% 2.83/0.99  ------ 
% 2.83/0.99  Current options:
% 2.83/0.99  ------ 
% 2.83/0.99  
% 2.83/0.99  ------ Input Options
% 2.83/0.99  
% 2.83/0.99  --out_options                           all
% 2.83/0.99  --tptp_safe_out                         true
% 2.83/0.99  --problem_path                          ""
% 2.83/0.99  --include_path                          ""
% 2.83/0.99  --clausifier                            res/vclausify_rel
% 2.83/0.99  --clausifier_options                    --mode clausify
% 2.83/0.99  --stdin                                 false
% 2.83/0.99  --stats_out                             all
% 2.83/0.99  
% 2.83/0.99  ------ General Options
% 2.83/0.99  
% 2.83/0.99  --fof                                   false
% 2.83/0.99  --time_out_real                         305.
% 2.83/0.99  --time_out_virtual                      -1.
% 2.83/0.99  --symbol_type_check                     false
% 2.83/0.99  --clausify_out                          false
% 2.83/0.99  --sig_cnt_out                           false
% 2.83/0.99  --trig_cnt_out                          false
% 2.83/0.99  --trig_cnt_out_tolerance                1.
% 2.83/0.99  --trig_cnt_out_sk_spl                   false
% 2.83/0.99  --abstr_cl_out                          false
% 2.83/0.99  
% 2.83/0.99  ------ Global Options
% 2.83/0.99  
% 2.83/0.99  --schedule                              default
% 2.83/0.99  --add_important_lit                     false
% 2.83/0.99  --prop_solver_per_cl                    1000
% 2.83/0.99  --min_unsat_core                        false
% 2.83/0.99  --soft_assumptions                      false
% 2.83/0.99  --soft_lemma_size                       3
% 2.83/0.99  --prop_impl_unit_size                   0
% 2.83/0.99  --prop_impl_unit                        []
% 2.83/0.99  --share_sel_clauses                     true
% 2.83/0.99  --reset_solvers                         false
% 2.83/0.99  --bc_imp_inh                            [conj_cone]
% 2.83/0.99  --conj_cone_tolerance                   3.
% 2.83/0.99  --extra_neg_conj                        none
% 2.83/0.99  --large_theory_mode                     true
% 2.83/0.99  --prolific_symb_bound                   200
% 2.83/0.99  --lt_threshold                          2000
% 2.83/0.99  --clause_weak_htbl                      true
% 2.83/0.99  --gc_record_bc_elim                     false
% 2.83/0.99  
% 2.83/0.99  ------ Preprocessing Options
% 2.83/0.99  
% 2.83/0.99  --preprocessing_flag                    true
% 2.83/0.99  --time_out_prep_mult                    0.1
% 2.83/0.99  --splitting_mode                        input
% 2.83/0.99  --splitting_grd                         true
% 2.83/0.99  --splitting_cvd                         false
% 2.83/0.99  --splitting_cvd_svl                     false
% 2.83/0.99  --splitting_nvd                         32
% 2.83/0.99  --sub_typing                            true
% 2.83/0.99  --prep_gs_sim                           true
% 2.83/0.99  --prep_unflatten                        true
% 2.83/0.99  --prep_res_sim                          true
% 2.83/0.99  --prep_upred                            true
% 2.83/0.99  --prep_sem_filter                       exhaustive
% 2.83/0.99  --prep_sem_filter_out                   false
% 2.83/0.99  --pred_elim                             true
% 2.83/0.99  --res_sim_input                         true
% 2.83/0.99  --eq_ax_congr_red                       true
% 2.83/0.99  --pure_diseq_elim                       true
% 2.83/0.99  --brand_transform                       false
% 2.83/0.99  --non_eq_to_eq                          false
% 2.83/0.99  --prep_def_merge                        true
% 2.83/0.99  --prep_def_merge_prop_impl              false
% 2.83/0.99  --prep_def_merge_mbd                    true
% 2.83/0.99  --prep_def_merge_tr_red                 false
% 2.83/0.99  --prep_def_merge_tr_cl                  false
% 2.83/0.99  --smt_preprocessing                     true
% 2.83/0.99  --smt_ac_axioms                         fast
% 2.83/0.99  --preprocessed_out                      false
% 2.83/0.99  --preprocessed_stats                    false
% 2.83/0.99  
% 2.83/0.99  ------ Abstraction refinement Options
% 2.83/0.99  
% 2.83/0.99  --abstr_ref                             []
% 2.83/0.99  --abstr_ref_prep                        false
% 2.83/0.99  --abstr_ref_until_sat                   false
% 2.83/0.99  --abstr_ref_sig_restrict                funpre
% 2.83/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.83/0.99  --abstr_ref_under                       []
% 2.83/0.99  
% 2.83/0.99  ------ SAT Options
% 2.83/0.99  
% 2.83/0.99  --sat_mode                              false
% 2.83/0.99  --sat_fm_restart_options                ""
% 2.83/0.99  --sat_gr_def                            false
% 2.83/0.99  --sat_epr_types                         true
% 2.83/0.99  --sat_non_cyclic_types                  false
% 2.83/0.99  --sat_finite_models                     false
% 2.83/0.99  --sat_fm_lemmas                         false
% 2.83/0.99  --sat_fm_prep                           false
% 2.83/0.99  --sat_fm_uc_incr                        true
% 2.83/0.99  --sat_out_model                         small
% 2.83/0.99  --sat_out_clauses                       false
% 2.83/0.99  
% 2.83/0.99  ------ QBF Options
% 2.83/0.99  
% 2.83/0.99  --qbf_mode                              false
% 2.83/0.99  --qbf_elim_univ                         false
% 2.83/0.99  --qbf_dom_inst                          none
% 2.83/0.99  --qbf_dom_pre_inst                      false
% 2.83/0.99  --qbf_sk_in                             false
% 2.83/0.99  --qbf_pred_elim                         true
% 2.83/0.99  --qbf_split                             512
% 2.83/0.99  
% 2.83/0.99  ------ BMC1 Options
% 2.83/0.99  
% 2.83/0.99  --bmc1_incremental                      false
% 2.83/0.99  --bmc1_axioms                           reachable_all
% 2.83/0.99  --bmc1_min_bound                        0
% 2.83/0.99  --bmc1_max_bound                        -1
% 2.83/0.99  --bmc1_max_bound_default                -1
% 2.83/0.99  --bmc1_symbol_reachability              true
% 2.83/0.99  --bmc1_property_lemmas                  false
% 2.83/0.99  --bmc1_k_induction                      false
% 2.83/0.99  --bmc1_non_equiv_states                 false
% 2.83/0.99  --bmc1_deadlock                         false
% 2.83/0.99  --bmc1_ucm                              false
% 2.83/0.99  --bmc1_add_unsat_core                   none
% 2.83/0.99  --bmc1_unsat_core_children              false
% 2.83/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.83/0.99  --bmc1_out_stat                         full
% 2.83/0.99  --bmc1_ground_init                      false
% 2.83/0.99  --bmc1_pre_inst_next_state              false
% 2.83/0.99  --bmc1_pre_inst_state                   false
% 2.83/0.99  --bmc1_pre_inst_reach_state             false
% 2.83/0.99  --bmc1_out_unsat_core                   false
% 2.83/0.99  --bmc1_aig_witness_out                  false
% 2.83/0.99  --bmc1_verbose                          false
% 2.83/0.99  --bmc1_dump_clauses_tptp                false
% 2.83/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.83/0.99  --bmc1_dump_file                        -
% 2.83/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.83/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.83/0.99  --bmc1_ucm_extend_mode                  1
% 2.83/0.99  --bmc1_ucm_init_mode                    2
% 2.83/0.99  --bmc1_ucm_cone_mode                    none
% 2.83/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.83/0.99  --bmc1_ucm_relax_model                  4
% 2.83/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.83/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.83/0.99  --bmc1_ucm_layered_model                none
% 2.83/0.99  --bmc1_ucm_max_lemma_size               10
% 2.83/0.99  
% 2.83/0.99  ------ AIG Options
% 2.83/0.99  
% 2.83/0.99  --aig_mode                              false
% 2.83/0.99  
% 2.83/0.99  ------ Instantiation Options
% 2.83/0.99  
% 2.83/0.99  --instantiation_flag                    true
% 2.83/0.99  --inst_sos_flag                         false
% 2.83/0.99  --inst_sos_phase                        true
% 2.83/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.83/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.83/0.99  --inst_lit_sel_side                     none
% 2.83/0.99  --inst_solver_per_active                1400
% 2.83/0.99  --inst_solver_calls_frac                1.
% 2.83/0.99  --inst_passive_queue_type               priority_queues
% 2.83/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.83/0.99  --inst_passive_queues_freq              [25;2]
% 2.83/0.99  --inst_dismatching                      true
% 2.83/0.99  --inst_eager_unprocessed_to_passive     true
% 2.83/0.99  --inst_prop_sim_given                   true
% 2.83/0.99  --inst_prop_sim_new                     false
% 2.83/0.99  --inst_subs_new                         false
% 2.83/0.99  --inst_eq_res_simp                      false
% 2.83/0.99  --inst_subs_given                       false
% 2.83/0.99  --inst_orphan_elimination               true
% 2.83/0.99  --inst_learning_loop_flag               true
% 2.83/0.99  --inst_learning_start                   3000
% 2.83/0.99  --inst_learning_factor                  2
% 2.83/0.99  --inst_start_prop_sim_after_learn       3
% 2.83/0.99  --inst_sel_renew                        solver
% 2.83/0.99  --inst_lit_activity_flag                true
% 2.83/0.99  --inst_restr_to_given                   false
% 2.83/0.99  --inst_activity_threshold               500
% 2.83/0.99  --inst_out_proof                        true
% 2.83/0.99  
% 2.83/0.99  ------ Resolution Options
% 2.83/0.99  
% 2.83/0.99  --resolution_flag                       false
% 2.83/0.99  --res_lit_sel                           adaptive
% 2.83/0.99  --res_lit_sel_side                      none
% 2.83/0.99  --res_ordering                          kbo
% 2.83/0.99  --res_to_prop_solver                    active
% 2.83/0.99  --res_prop_simpl_new                    false
% 2.83/0.99  --res_prop_simpl_given                  true
% 2.83/0.99  --res_passive_queue_type                priority_queues
% 2.83/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.83/0.99  --res_passive_queues_freq               [15;5]
% 2.83/0.99  --res_forward_subs                      full
% 2.83/0.99  --res_backward_subs                     full
% 2.83/0.99  --res_forward_subs_resolution           true
% 2.83/0.99  --res_backward_subs_resolution          true
% 2.83/0.99  --res_orphan_elimination                true
% 2.83/0.99  --res_time_limit                        2.
% 2.83/0.99  --res_out_proof                         true
% 2.83/0.99  
% 2.83/0.99  ------ Superposition Options
% 2.83/0.99  
% 2.83/0.99  --superposition_flag                    true
% 2.83/0.99  --sup_passive_queue_type                priority_queues
% 2.83/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.83/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.83/0.99  --demod_completeness_check              fast
% 2.83/0.99  --demod_use_ground                      true
% 2.83/0.99  --sup_to_prop_solver                    passive
% 2.83/0.99  --sup_prop_simpl_new                    true
% 2.83/0.99  --sup_prop_simpl_given                  true
% 2.83/0.99  --sup_fun_splitting                     false
% 2.83/0.99  --sup_smt_interval                      50000
% 2.83/0.99  
% 2.83/0.99  ------ Superposition Simplification Setup
% 2.83/0.99  
% 2.83/0.99  --sup_indices_passive                   []
% 2.83/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.83/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.83/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.83/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.83/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.83/0.99  --sup_full_bw                           [BwDemod]
% 2.83/0.99  --sup_immed_triv                        [TrivRules]
% 2.83/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.83/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.83/0.99  --sup_immed_bw_main                     []
% 2.83/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.83/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.83/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.83/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.83/0.99  
% 2.83/0.99  ------ Combination Options
% 2.83/0.99  
% 2.83/0.99  --comb_res_mult                         3
% 2.83/0.99  --comb_sup_mult                         2
% 2.83/0.99  --comb_inst_mult                        10
% 2.83/0.99  
% 2.83/0.99  ------ Debug Options
% 2.83/0.99  
% 2.83/0.99  --dbg_backtrace                         false
% 2.83/0.99  --dbg_dump_prop_clauses                 false
% 2.83/0.99  --dbg_dump_prop_clauses_file            -
% 2.83/0.99  --dbg_out_stat                          false
% 2.83/0.99  
% 2.83/0.99  
% 2.83/0.99  
% 2.83/0.99  
% 2.83/0.99  ------ Proving...
% 2.83/0.99  
% 2.83/0.99  
% 2.83/0.99  % SZS status Theorem for theBenchmark.p
% 2.83/0.99  
% 2.83/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.83/0.99  
% 2.83/0.99  fof(f12,axiom,(
% 2.83/0.99    ! [X0,X1] : (~r2_hidden(X0,X1) => r1_xboole_0(k1_tarski(X0),X1))),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f19,plain,(
% 2.83/0.99    ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1))),
% 2.83/0.99    inference(ennf_transformation,[],[f12])).
% 2.83/0.99  
% 2.83/0.99  fof(f42,plain,(
% 2.83/0.99    ( ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f19])).
% 2.83/0.99  
% 2.83/0.99  fof(f8,axiom,(
% 2.83/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f38,plain,(
% 2.83/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f8])).
% 2.83/0.99  
% 2.83/0.99  fof(f9,axiom,(
% 2.83/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f39,plain,(
% 2.83/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f9])).
% 2.83/0.99  
% 2.83/0.99  fof(f10,axiom,(
% 2.83/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f40,plain,(
% 2.83/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f10])).
% 2.83/0.99  
% 2.83/0.99  fof(f46,plain,(
% 2.83/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 2.83/0.99    inference(definition_unfolding,[],[f39,f40])).
% 2.83/0.99  
% 2.83/0.99  fof(f47,plain,(
% 2.83/0.99    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 2.83/0.99    inference(definition_unfolding,[],[f38,f46])).
% 2.83/0.99  
% 2.83/0.99  fof(f50,plain,(
% 2.83/0.99    ( ! [X0,X1] : (r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) | r2_hidden(X0,X1)) )),
% 2.83/0.99    inference(definition_unfolding,[],[f42,f47])).
% 2.83/0.99  
% 2.83/0.99  fof(f7,axiom,(
% 2.83/0.99    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f16,plain,(
% 2.83/0.99    ! [X0,X1] : (r1_xboole_0(X0,X1) => k4_xboole_0(X0,X1) = X0)),
% 2.83/0.99    inference(unused_predicate_definition_removal,[],[f7])).
% 2.83/0.99  
% 2.83/0.99  fof(f17,plain,(
% 2.83/0.99    ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1))),
% 2.83/0.99    inference(ennf_transformation,[],[f16])).
% 2.83/0.99  
% 2.83/0.99  fof(f37,plain,(
% 2.83/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f17])).
% 2.83/0.99  
% 2.83/0.99  fof(f11,axiom,(
% 2.83/0.99    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f15,plain,(
% 2.83/0.99    ! [X0,X1] : (r2_hidden(X0,X1) => r1_tarski(k1_tarski(X0),X1))),
% 2.83/0.99    inference(unused_predicate_definition_removal,[],[f11])).
% 2.83/0.99  
% 2.83/0.99  fof(f18,plain,(
% 2.83/0.99    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1))),
% 2.83/0.99    inference(ennf_transformation,[],[f15])).
% 2.83/0.99  
% 2.83/0.99  fof(f41,plain,(
% 2.83/0.99    ( ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f18])).
% 2.83/0.99  
% 2.83/0.99  fof(f49,plain,(
% 2.83/0.99    ( ! [X0,X1] : (r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) | ~r2_hidden(X0,X1)) )),
% 2.83/0.99    inference(definition_unfolding,[],[f41,f47])).
% 2.83/0.99  
% 2.83/0.99  fof(f13,conjecture,(
% 2.83/0.99    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f14,negated_conjecture,(
% 2.83/0.99    ~! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 2.83/0.99    inference(negated_conjecture,[],[f13])).
% 2.83/0.99  
% 2.83/0.99  fof(f20,plain,(
% 2.83/0.99    ? [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <~> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 2.83/0.99    inference(ennf_transformation,[],[f14])).
% 2.83/0.99  
% 2.83/0.99  fof(f24,plain,(
% 2.83/0.99    ? [X0,X1] : (((k1_tarski(X1) != X0 & k1_xboole_0 != X0) | ~r1_tarski(X0,k1_tarski(X1))) & ((k1_tarski(X1) = X0 | k1_xboole_0 = X0) | r1_tarski(X0,k1_tarski(X1))))),
% 2.83/0.99    inference(nnf_transformation,[],[f20])).
% 2.83/0.99  
% 2.83/0.99  fof(f25,plain,(
% 2.83/0.99    ? [X0,X1] : (((k1_tarski(X1) != X0 & k1_xboole_0 != X0) | ~r1_tarski(X0,k1_tarski(X1))) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | r1_tarski(X0,k1_tarski(X1))))),
% 2.83/0.99    inference(flattening,[],[f24])).
% 2.83/0.99  
% 2.83/0.99  fof(f26,plain,(
% 2.83/0.99    ? [X0,X1] : (((k1_tarski(X1) != X0 & k1_xboole_0 != X0) | ~r1_tarski(X0,k1_tarski(X1))) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | r1_tarski(X0,k1_tarski(X1)))) => (((k1_tarski(sK1) != sK0 & k1_xboole_0 != sK0) | ~r1_tarski(sK0,k1_tarski(sK1))) & (k1_tarski(sK1) = sK0 | k1_xboole_0 = sK0 | r1_tarski(sK0,k1_tarski(sK1))))),
% 2.83/0.99    introduced(choice_axiom,[])).
% 2.83/0.99  
% 2.83/0.99  fof(f27,plain,(
% 2.83/0.99    ((k1_tarski(sK1) != sK0 & k1_xboole_0 != sK0) | ~r1_tarski(sK0,k1_tarski(sK1))) & (k1_tarski(sK1) = sK0 | k1_xboole_0 = sK0 | r1_tarski(sK0,k1_tarski(sK1)))),
% 2.83/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f25,f26])).
% 2.83/0.99  
% 2.83/0.99  fof(f43,plain,(
% 2.83/0.99    k1_tarski(sK1) = sK0 | k1_xboole_0 = sK0 | r1_tarski(sK0,k1_tarski(sK1))),
% 2.83/0.99    inference(cnf_transformation,[],[f27])).
% 2.83/0.99  
% 2.83/0.99  fof(f53,plain,(
% 2.83/0.99    k2_enumset1(sK1,sK1,sK1,sK1) = sK0 | k1_xboole_0 = sK0 | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))),
% 2.83/0.99    inference(definition_unfolding,[],[f43,f47,f47])).
% 2.83/0.99  
% 2.83/0.99  fof(f3,axiom,(
% 2.83/0.99    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f23,plain,(
% 2.83/0.99    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 2.83/0.99    inference(nnf_transformation,[],[f3])).
% 2.83/0.99  
% 2.83/0.99  fof(f33,plain,(
% 2.83/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f23])).
% 2.83/0.99  
% 2.83/0.99  fof(f2,axiom,(
% 2.83/0.99    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f21,plain,(
% 2.83/0.99    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.83/0.99    inference(nnf_transformation,[],[f2])).
% 2.83/0.99  
% 2.83/0.99  fof(f22,plain,(
% 2.83/0.99    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.83/0.99    inference(flattening,[],[f21])).
% 2.83/0.99  
% 2.83/0.99  fof(f29,plain,(
% 2.83/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.83/0.99    inference(cnf_transformation,[],[f22])).
% 2.83/0.99  
% 2.83/0.99  fof(f55,plain,(
% 2.83/0.99    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.83/0.99    inference(equality_resolution,[],[f29])).
% 2.83/0.99  
% 2.83/0.99  fof(f32,plain,(
% 2.83/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0) )),
% 2.83/0.99    inference(cnf_transformation,[],[f23])).
% 2.83/0.99  
% 2.83/0.99  fof(f31,plain,(
% 2.83/0.99    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f22])).
% 2.83/0.99  
% 2.83/0.99  fof(f45,plain,(
% 2.83/0.99    k1_tarski(sK1) != sK0 | ~r1_tarski(sK0,k1_tarski(sK1))),
% 2.83/0.99    inference(cnf_transformation,[],[f27])).
% 2.83/0.99  
% 2.83/0.99  fof(f51,plain,(
% 2.83/0.99    k2_enumset1(sK1,sK1,sK1,sK1) != sK0 | ~r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))),
% 2.83/0.99    inference(definition_unfolding,[],[f45,f47,f47])).
% 2.83/0.99  
% 2.83/0.99  fof(f44,plain,(
% 2.83/0.99    k1_xboole_0 != sK0 | ~r1_tarski(sK0,k1_tarski(sK1))),
% 2.83/0.99    inference(cnf_transformation,[],[f27])).
% 2.83/0.99  
% 2.83/0.99  fof(f52,plain,(
% 2.83/0.99    k1_xboole_0 != sK0 | ~r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))),
% 2.83/0.99    inference(definition_unfolding,[],[f44,f47])).
% 2.83/0.99  
% 2.83/0.99  fof(f1,axiom,(
% 2.83/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f28,plain,(
% 2.83/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f1])).
% 2.83/0.99  
% 2.83/0.99  fof(f6,axiom,(
% 2.83/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f36,plain,(
% 2.83/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 2.83/0.99    inference(cnf_transformation,[],[f6])).
% 2.83/0.99  
% 2.83/0.99  fof(f48,plain,(
% 2.83/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 2.83/0.99    inference(definition_unfolding,[],[f28,f36,f36])).
% 2.83/0.99  
% 2.83/0.99  fof(f5,axiom,(
% 2.83/0.99    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f35,plain,(
% 2.83/0.99    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 2.83/0.99    inference(cnf_transformation,[],[f5])).
% 2.83/0.99  
% 2.83/0.99  fof(f4,axiom,(
% 2.83/0.99    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.83/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.83/0.99  
% 2.83/0.99  fof(f34,plain,(
% 2.83/0.99    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.83/0.99    inference(cnf_transformation,[],[f4])).
% 2.83/0.99  
% 2.83/0.99  cnf(c_10,plain,
% 2.83/0.99      ( r2_hidden(X0,X1) | r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) ),
% 2.83/0.99      inference(cnf_transformation,[],[f50]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_617,plain,
% 2.83/0.99      ( r2_hidden(X0,X1) = iProver_top
% 2.83/0.99      | r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_8,plain,
% 2.83/0.99      ( ~ r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) = X0 ),
% 2.83/0.99      inference(cnf_transformation,[],[f37]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_619,plain,
% 2.83/0.99      ( k4_xboole_0(X0,X1) = X0 | r1_xboole_0(X0,X1) != iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_973,plain,
% 2.83/0.99      ( k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = k2_enumset1(X0,X0,X0,X0)
% 2.83/0.99      | r2_hidden(X0,X1) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_617,c_619]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_9,plain,
% 2.83/0.99      ( ~ r2_hidden(X0,X1) | r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) ),
% 2.83/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_618,plain,
% 2.83/0.99      ( r2_hidden(X0,X1) != iProver_top
% 2.83/0.99      | r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) = iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_13,negated_conjecture,
% 2.83/0.99      ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | k2_enumset1(sK1,sK1,sK1,sK1) = sK0
% 2.83/0.99      | k1_xboole_0 = sK0 ),
% 2.83/0.99      inference(cnf_transformation,[],[f53]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_614,plain,
% 2.83/0.99      ( k2_enumset1(sK1,sK1,sK1,sK1) = sK0
% 2.83/0.99      | k1_xboole_0 = sK0
% 2.83/0.99      | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_4,plain,
% 2.83/0.99      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 2.83/0.99      inference(cnf_transformation,[],[f33]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_622,plain,
% 2.83/0.99      ( k4_xboole_0(X0,X1) = k1_xboole_0
% 2.83/0.99      | r1_tarski(X0,X1) != iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1137,plain,
% 2.83/0.99      ( k2_enumset1(sK1,sK1,sK1,sK1) = sK0
% 2.83/0.99      | k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
% 2.83/0.99      | sK0 = k1_xboole_0 ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_614,c_622]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_724,plain,
% 2.83/0.99      ( ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_4]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_325,plain,( X0 = X0 ),theory(equality) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_746,plain,
% 2.83/0.99      ( sK0 = sK0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_325]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_328,plain,
% 2.83/0.99      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.83/0.99      theory(equality) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_711,plain,
% 2.83/0.99      ( ~ r1_tarski(X0,X1)
% 2.83/0.99      | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | k2_enumset1(sK1,sK1,sK1,sK1) != X1
% 2.83/0.99      | sK0 != X0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_328]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_745,plain,
% 2.83/0.99      ( ~ r1_tarski(sK0,X0)
% 2.83/0.99      | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | k2_enumset1(sK1,sK1,sK1,sK1) != X0
% 2.83/0.99      | sK0 != sK0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_711]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_788,plain,
% 2.83/0.99      ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | ~ r1_tarski(sK0,sK0)
% 2.83/0.99      | k2_enumset1(sK1,sK1,sK1,sK1) != sK0
% 2.83/0.99      | sK0 != sK0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_745]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3,plain,
% 2.83/0.99      ( r1_tarski(X0,X0) ),
% 2.83/0.99      inference(cnf_transformation,[],[f55]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_789,plain,
% 2.83/0.99      ( r1_tarski(sK0,sK0) ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1150,plain,
% 2.83/0.99      ( k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0
% 2.83/0.99      | sK0 = k1_xboole_0 ),
% 2.83/0.99      inference(global_propositional_subsumption,
% 2.83/0.99                [status(thm)],
% 2.83/0.99                [c_1137,c_724,c_746,c_788,c_789]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_5,plain,
% 2.83/0.99      ( r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0 ),
% 2.83/0.99      inference(cnf_transformation,[],[f32]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_621,plain,
% 2.83/0.99      ( k4_xboole_0(X0,X1) != k1_xboole_0
% 2.83/0.99      | r1_tarski(X0,X1) = iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1154,plain,
% 2.83/0.99      ( sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_1150,c_621]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1,plain,
% 2.83/0.99      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 2.83/0.99      inference(cnf_transformation,[],[f31]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_624,plain,
% 2.83/0.99      ( X0 = X1
% 2.83/0.99      | r1_tarski(X0,X1) != iProver_top
% 2.83/0.99      | r1_tarski(X1,X0) != iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1500,plain,
% 2.83/0.99      ( k2_enumset1(sK1,sK1,sK1,sK1) = sK0
% 2.83/0.99      | sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),sK0) != iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_1154,c_624]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_11,negated_conjecture,
% 2.83/0.99      ( ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | k2_enumset1(sK1,sK1,sK1,sK1) != sK0 ),
% 2.83/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_16,plain,
% 2.83/0.99      ( k2_enumset1(sK1,sK1,sK1,sK1) != sK0
% 2.83/0.99      | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_868,plain,
% 2.83/0.99      ( ~ r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),sK0)
% 2.83/0.99      | ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | k2_enumset1(sK1,sK1,sK1,sK1) = sK0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_1]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_869,plain,
% 2.83/0.99      ( k2_enumset1(sK1,sK1,sK1,sK1) = sK0
% 2.83/0.99      | r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),sK0) != iProver_top
% 2.83/0.99      | r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) != iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_868]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1951,plain,
% 2.83/0.99      ( sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k2_enumset1(sK1,sK1,sK1,sK1),sK0) != iProver_top ),
% 2.83/0.99      inference(global_propositional_subsumption,
% 2.83/0.99                [status(thm)],
% 2.83/0.99                [c_1500,c_16,c_869,c_1154]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1957,plain,
% 2.83/0.99      ( sK0 = k1_xboole_0 | r2_hidden(sK1,sK0) != iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_618,c_1951]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_2452,plain,
% 2.83/0.99      ( k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0) = k2_enumset1(sK1,sK1,sK1,sK1)
% 2.83/0.99      | sK0 = k1_xboole_0 ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_973,c_1957]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_12,negated_conjecture,
% 2.83/0.99      ( ~ r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | k1_xboole_0 != sK0 ),
% 2.83/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_697,plain,
% 2.83/0.99      ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) != k1_xboole_0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_5]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_772,plain,
% 2.83/0.99      ( ~ r1_tarski(X0,k1_xboole_0)
% 2.83/0.99      | ~ r1_tarski(k1_xboole_0,X0)
% 2.83/0.99      | k1_xboole_0 = X0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_1]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_909,plain,
% 2.83/0.99      ( ~ r1_tarski(k1_xboole_0,k1_xboole_0)
% 2.83/0.99      | k1_xboole_0 = k1_xboole_0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_772]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_910,plain,
% 2.83/0.99      ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_326,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_709,plain,
% 2.83/0.99      ( sK0 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_326]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1047,plain,
% 2.83/0.99      ( sK0 != k1_xboole_0
% 2.83/0.99      | k1_xboole_0 = sK0
% 2.83/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_709]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_0,plain,
% 2.83/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 2.83/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1067,plain,
% 2.83/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) != k1_xboole_0
% 2.83/0.99      | r1_tarski(X1,k4_xboole_0(X1,X0)) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_0,c_621]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1375,plain,
% 2.83/0.99      ( k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) != k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(X0,X1),k4_xboole_0(k4_xboole_0(X0,X1),X0)) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_0,c_1067]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1532,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0)))) != k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(X0,X1),X0),k4_xboole_0(k4_xboole_0(k4_xboole_0(X0,X1),X0),k4_xboole_0(X0,X1))) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_0,c_1375]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1684,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X1,k4_xboole_0(k4_xboole_0(X1,X0),k4_xboole_0(k4_xboole_0(X1,X0),X1)))) != k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_0,c_1532]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1847,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X0))))) != k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_0,c_1684]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_2632,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X0,k4_xboole_0(X0,X1))))) != k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X1),k4_xboole_0(X1,k4_xboole_0(X1,X0)))) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_0,c_1847]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_2722,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(sK0,k1_xboole_0),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(sK0,k1_xboole_0)))) != k1_xboole_0
% 2.83/0.99      | sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_1150,c_2632]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_7,plain,
% 2.83/0.99      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 2.83/0.99      inference(cnf_transformation,[],[f35]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_2737,plain,
% 2.83/0.99      ( k4_xboole_0(sK0,k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0))) != k1_xboole_0
% 2.83/0.99      | sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
% 2.83/0.99      inference(demodulation,[status(thm)],[c_2722,c_7]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_37,plain,
% 2.83/0.99      ( r1_tarski(sK1,sK1) ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_41,plain,
% 2.83/0.99      ( ~ r1_tarski(sK1,sK1) | sK1 = sK1 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_1]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_330,plain,
% 2.83/0.99      ( X0 != X1
% 2.83/0.99      | X2 != X3
% 2.83/0.99      | X4 != X5
% 2.83/0.99      | X6 != X7
% 2.83/0.99      | k2_enumset1(X0,X2,X4,X6) = k2_enumset1(X1,X3,X5,X7) ),
% 2.83/0.99      theory(equality) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_334,plain,
% 2.83/0.99      ( k2_enumset1(sK1,sK1,sK1,sK1) = k2_enumset1(sK1,sK1,sK1,sK1)
% 2.83/0.99      | sK1 != sK1 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_330]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1046,plain,
% 2.83/0.99      ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | ~ r1_tarski(k1_xboole_0,X0)
% 2.83/0.99      | k2_enumset1(sK1,sK1,sK1,sK1) != X0
% 2.83/0.99      | sK0 != k1_xboole_0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_711]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1592,plain,
% 2.83/0.99      ( r1_tarski(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | ~ r1_tarski(k1_xboole_0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | k2_enumset1(sK1,sK1,sK1,sK1) != k2_enumset1(sK1,sK1,sK1,sK1)
% 2.83/0.99      | sK0 != k1_xboole_0 ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_1046]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_6,plain,
% 2.83/0.99      ( r1_tarski(k1_xboole_0,X0) ),
% 2.83/0.99      inference(cnf_transformation,[],[f34]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_2222,plain,
% 2.83/0.99      ( r1_tarski(k1_xboole_0,k2_enumset1(sK1,sK1,sK1,sK1)) ),
% 2.83/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3207,plain,
% 2.83/0.99      ( k4_xboole_0(sK0,k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0))) != k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
% 2.83/0.99      inference(global_propositional_subsumption,
% 2.83/0.99                [status(thm)],
% 2.83/0.99                [c_2737,c_12,c_37,c_41,c_334,c_697,c_724,c_909,c_910,
% 2.83/0.99                 c_1047,c_1150,c_1592,c_2222]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3213,plain,
% 2.83/0.99      ( k4_xboole_0(sK0,k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)))) != k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_0,c_3207]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3332,plain,
% 2.83/0.99      ( k4_xboole_0(sK0,k4_xboole_0(sK0,k1_xboole_0)) != k1_xboole_0
% 2.83/0.99      | sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_1150,c_3213]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_623,plain,
% 2.83/0.99      ( r1_tarski(X0,X0) = iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1135,plain,
% 2.83/0.99      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_623,c_622]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3336,plain,
% 2.83/0.99      ( sK0 = k1_xboole_0
% 2.83/0.99      | k1_xboole_0 != k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
% 2.83/0.99      inference(demodulation,[status(thm)],[c_3332,c_7,c_1135]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3337,plain,
% 2.83/0.99      ( sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
% 2.83/0.99      inference(equality_resolution_simp,[status(thm)],[c_3336]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3471,plain,
% 2.83/0.99      ( r1_tarski(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0)))) = iProver_top ),
% 2.83/0.99      inference(global_propositional_subsumption,
% 2.83/0.99                [status(thm)],
% 2.83/0.99                [c_3337,c_12,c_37,c_41,c_334,c_697,c_724,c_909,c_910,
% 2.83/0.99                 c_1047,c_1150,c_1592,c_2222]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3476,plain,
% 2.83/0.99      ( r1_tarski(k4_xboole_0(k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))))) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_0,c_3471]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3551,plain,
% 2.83/0.99      ( sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(sK0,k1_xboole_0),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(k4_xboole_0(sK0,k1_xboole_0),k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(sK0,k1_xboole_0))) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_1150,c_3476]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3564,plain,
% 2.83/0.99      ( sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0)) = iProver_top ),
% 2.83/0.99      inference(demodulation,[status(thm)],[c_3551,c_7]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3570,plain,
% 2.83/0.99      ( r1_tarski(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0)) = iProver_top ),
% 2.83/0.99      inference(global_propositional_subsumption,
% 2.83/0.99                [status(thm)],
% 2.83/0.99                [c_3564,c_12,c_37,c_41,c_334,c_697,c_724,c_909,c_910,
% 2.83/0.99                 c_1047,c_1150,c_1592,c_2222]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_3577,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | r1_tarski(k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0),k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))) != iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_3570,c_624]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_4068,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(k1_xboole_0,sK0),k1_xboole_0) != iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_1150,c_3577]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_620,plain,
% 2.83/0.99      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_1136,plain,
% 2.83/0.99      ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_620,c_622]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_4070,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))
% 2.83/0.99      | sK0 = k1_xboole_0
% 2.83/0.99      | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
% 2.83/0.99      inference(demodulation,[status(thm)],[c_4068,c_1136]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_913,plain,
% 2.83/0.99      ( r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
% 2.83/0.99      inference(predicate_to_equality,[status(thm)],[c_910]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_4121,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) ),
% 2.83/0.99      inference(global_propositional_subsumption,
% 2.83/0.99                [status(thm)],
% 2.83/0.99                [c_4070,c_12,c_37,c_41,c_334,c_697,c_724,c_909,c_910,
% 2.83/0.99                 c_913,c_1047,c_1150,c_1592,c_2222]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_4150,plain,
% 2.83/0.99      ( k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) != k1_xboole_0
% 2.83/0.99      | r1_tarski(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = iProver_top ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_4121,c_621]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_4212,plain,
% 2.83/0.99      ( r1_tarski(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = iProver_top ),
% 2.83/0.99      inference(global_propositional_subsumption,
% 2.83/0.99                [status(thm)],
% 2.83/0.99                [c_4150,c_37,c_41,c_334,c_724,c_1150,c_1592,c_2222]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_4219,plain,
% 2.83/0.99      ( k4_xboole_0(k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)),sK0) = k1_xboole_0 ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_4212,c_622]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_4291,plain,
% 2.83/0.99      ( k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1)) = k1_xboole_0 ),
% 2.83/0.99      inference(demodulation,[status(thm)],[c_4219,c_4121]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_6331,plain,
% 2.83/0.99      ( k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),sK0) = k2_enumset1(sK1,sK1,sK1,sK1) ),
% 2.83/0.99      inference(global_propositional_subsumption,
% 2.83/0.99                [status(thm)],
% 2.83/0.99                [c_2452,c_11,c_37,c_41,c_334,c_697,c_724,c_827,c_868,
% 2.83/0.99                 c_1018,c_1150,c_1592,c_1981,c_2222]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_6387,plain,
% 2.83/0.99      ( k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k2_enumset1(sK1,sK1,sK1,sK1)) = k4_xboole_0(sK0,k4_xboole_0(sK0,k2_enumset1(sK1,sK1,sK1,sK1))) ),
% 2.83/0.99      inference(superposition,[status(thm)],[c_6331,c_0]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_6389,plain,
% 2.83/0.99      ( k4_xboole_0(k2_enumset1(sK1,sK1,sK1,sK1),k2_enumset1(sK1,sK1,sK1,sK1)) = k4_xboole_0(sK0,k1_xboole_0) ),
% 2.83/0.99      inference(light_normalisation,[status(thm)],[c_6387,c_4291]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(c_6390,plain,
% 2.83/0.99      ( sK0 = k1_xboole_0 ),
% 2.83/0.99      inference(demodulation,[status(thm)],[c_6389,c_7,c_1135]) ).
% 2.83/0.99  
% 2.83/0.99  cnf(contradiction,plain,
% 2.83/0.99      ( $false ),
% 2.83/0.99      inference(minisat,
% 2.83/0.99                [status(thm)],
% 2.83/0.99                [c_6390,c_4291,c_1047,c_910,c_909,c_697,c_12]) ).
% 2.83/0.99  
% 2.83/0.99  
% 2.83/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.83/0.99  
% 2.83/0.99  ------                               Statistics
% 2.83/0.99  
% 2.83/0.99  ------ General
% 2.83/0.99  
% 2.83/0.99  abstr_ref_over_cycles:                  0
% 2.83/0.99  abstr_ref_under_cycles:                 0
% 2.83/0.99  gc_basic_clause_elim:                   0
% 2.83/0.99  forced_gc_time:                         0
% 2.83/0.99  parsing_time:                           0.007
% 2.83/0.99  unif_index_cands_time:                  0.
% 2.83/0.99  unif_index_add_time:                    0.
% 2.83/0.99  orderings_time:                         0.
% 2.83/0.99  out_proof_time:                         0.009
% 2.83/0.99  total_time:                             0.27
% 2.83/0.99  num_of_symbols:                         39
% 2.83/0.99  num_of_terms:                           4465
% 2.83/0.99  
% 2.83/0.99  ------ Preprocessing
% 2.83/0.99  
% 2.83/0.99  num_of_splits:                          0
% 2.83/0.99  num_of_split_atoms:                     0
% 2.83/0.99  num_of_reused_defs:                     0
% 2.83/0.99  num_eq_ax_congr_red:                    12
% 2.83/0.99  num_of_sem_filtered_clauses:            1
% 2.83/0.99  num_of_subtypes:                        0
% 2.83/0.99  monotx_restored_types:                  0
% 2.83/0.99  sat_num_of_epr_types:                   0
% 2.83/0.99  sat_num_of_non_cyclic_types:            0
% 2.83/0.99  sat_guarded_non_collapsed_types:        0
% 2.83/0.99  num_pure_diseq_elim:                    0
% 2.83/0.99  simp_replaced_by:                       0
% 2.83/0.99  res_preprocessed:                       65
% 2.83/0.99  prep_upred:                             0
% 2.83/0.99  prep_unflattend:                        4
% 2.83/0.99  smt_new_axioms:                         0
% 2.83/0.99  pred_elim_cands:                        3
% 2.83/0.99  pred_elim:                              0
% 2.83/0.99  pred_elim_cl:                           0
% 2.83/0.99  pred_elim_cycles:                       4
% 2.83/0.99  merged_defs:                            8
% 2.83/0.99  merged_defs_ncl:                        0
% 2.83/0.99  bin_hyper_res:                          8
% 2.83/0.99  prep_cycles:                            4
% 2.83/0.99  pred_elim_time:                         0.
% 2.83/0.99  splitting_time:                         0.
% 2.83/0.99  sem_filter_time:                        0.
% 2.83/0.99  monotx_time:                            0.001
% 2.83/0.99  subtype_inf_time:                       0.
% 2.83/0.99  
% 2.83/0.99  ------ Problem properties
% 2.83/0.99  
% 2.83/0.99  clauses:                                13
% 2.83/0.99  conjectures:                            3
% 2.83/0.99  epr:                                    3
% 2.83/0.99  horn:                                   11
% 2.83/0.99  ground:                                 3
% 2.83/0.99  unary:                                  4
% 2.83/0.99  binary:                                 7
% 2.83/0.99  lits:                                   24
% 2.83/0.99  lits_eq:                                10
% 2.83/0.99  fd_pure:                                0
% 2.83/0.99  fd_pseudo:                              0
% 2.83/0.99  fd_cond:                                0
% 2.83/0.99  fd_pseudo_cond:                         1
% 2.83/0.99  ac_symbols:                             0
% 2.83/0.99  
% 2.83/0.99  ------ Propositional Solver
% 2.83/0.99  
% 2.83/0.99  prop_solver_calls:                      31
% 2.83/0.99  prop_fast_solver_calls:                 460
% 2.83/0.99  smt_solver_calls:                       0
% 2.83/0.99  smt_fast_solver_calls:                  0
% 2.83/0.99  prop_num_of_clauses:                    1401
% 2.83/0.99  prop_preprocess_simplified:             3377
% 2.83/0.99  prop_fo_subsumed:                       22
% 2.83/0.99  prop_solver_time:                       0.
% 2.83/0.99  smt_solver_time:                        0.
% 2.83/0.99  smt_fast_solver_time:                   0.
% 2.83/0.99  prop_fast_solver_time:                  0.
% 2.83/0.99  prop_unsat_core_time:                   0.
% 2.83/0.99  
% 2.83/0.99  ------ QBF
% 2.83/0.99  
% 2.83/0.99  qbf_q_res:                              0
% 2.83/0.99  qbf_num_tautologies:                    0
% 2.83/0.99  qbf_prep_cycles:                        0
% 2.83/0.99  
% 2.83/0.99  ------ BMC1
% 2.83/0.99  
% 2.83/0.99  bmc1_current_bound:                     -1
% 2.83/0.99  bmc1_last_solved_bound:                 -1
% 2.83/0.99  bmc1_unsat_core_size:                   -1
% 2.83/0.99  bmc1_unsat_core_parents_size:           -1
% 2.83/0.99  bmc1_merge_next_fun:                    0
% 2.83/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.83/0.99  
% 2.83/0.99  ------ Instantiation
% 2.83/0.99  
% 2.83/0.99  inst_num_of_clauses:                    393
% 2.83/0.99  inst_num_in_passive:                    90
% 2.83/0.99  inst_num_in_active:                     267
% 2.83/0.99  inst_num_in_unprocessed:                38
% 2.83/0.99  inst_num_of_loops:                      360
% 2.83/0.99  inst_num_of_learning_restarts:          0
% 2.83/0.99  inst_num_moves_active_passive:          88
% 2.83/0.99  inst_lit_activity:                      0
% 2.83/0.99  inst_lit_activity_moves:                0
% 2.83/0.99  inst_num_tautologies:                   0
% 2.83/0.99  inst_num_prop_implied:                  0
% 2.83/0.99  inst_num_existing_simplified:           0
% 2.83/0.99  inst_num_eq_res_simplified:             0
% 2.83/0.99  inst_num_child_elim:                    0
% 2.83/0.99  inst_num_of_dismatching_blockings:      246
% 2.83/0.99  inst_num_of_non_proper_insts:           802
% 2.83/0.99  inst_num_of_duplicates:                 0
% 2.83/0.99  inst_inst_num_from_inst_to_res:         0
% 2.83/0.99  inst_dismatching_checking_time:         0.
% 2.83/0.99  
% 2.83/0.99  ------ Resolution
% 2.83/0.99  
% 2.83/0.99  res_num_of_clauses:                     0
% 2.83/0.99  res_num_in_passive:                     0
% 2.83/0.99  res_num_in_active:                      0
% 2.83/0.99  res_num_of_loops:                       69
% 2.83/0.99  res_forward_subset_subsumed:            75
% 2.83/0.99  res_backward_subset_subsumed:           6
% 2.83/0.99  res_forward_subsumed:                   0
% 2.83/0.99  res_backward_subsumed:                  0
% 2.83/0.99  res_forward_subsumption_resolution:     0
% 2.83/0.99  res_backward_subsumption_resolution:    0
% 2.83/0.99  res_clause_to_clause_subsumption:       1437
% 2.83/0.99  res_orphan_elimination:                 0
% 2.83/0.99  res_tautology_del:                      91
% 2.83/0.99  res_num_eq_res_simplified:              0
% 2.83/0.99  res_num_sel_changes:                    0
% 2.83/0.99  res_moves_from_active_to_pass:          0
% 2.83/0.99  
% 2.83/0.99  ------ Superposition
% 2.83/0.99  
% 2.83/0.99  sup_time_total:                         0.
% 2.83/0.99  sup_time_generating:                    0.
% 2.83/0.99  sup_time_sim_full:                      0.
% 2.83/0.99  sup_time_sim_immed:                     0.
% 2.83/0.99  
% 2.83/0.99  sup_num_of_clauses:                     132
% 2.83/0.99  sup_num_in_active:                      36
% 2.83/0.99  sup_num_in_passive:                     96
% 2.83/0.99  sup_num_of_loops:                       70
% 2.83/0.99  sup_fw_superposition:                   347
% 2.83/0.99  sup_bw_superposition:                   407
% 2.83/0.99  sup_immediate_simplified:               505
% 2.83/0.99  sup_given_eliminated:                   3
% 2.83/0.99  comparisons_done:                       0
% 2.83/0.99  comparisons_avoided:                    0
% 2.83/0.99  
% 2.83/0.99  ------ Simplifications
% 2.83/0.99  
% 2.83/0.99  
% 2.83/0.99  sim_fw_subset_subsumed:                 59
% 2.83/0.99  sim_bw_subset_subsumed:                 10
% 2.83/0.99  sim_fw_subsumed:                        68
% 2.83/0.99  sim_bw_subsumed:                        11
% 2.83/0.99  sim_fw_subsumption_res:                 1
% 2.83/0.99  sim_bw_subsumption_res:                 0
% 2.83/0.99  sim_tautology_del:                      1
% 2.83/0.99  sim_eq_tautology_del:                   22
% 2.83/0.99  sim_eq_res_simp:                        175
% 2.83/0.99  sim_fw_demodulated:                     400
% 2.83/0.99  sim_bw_demodulated:                     33
% 2.83/0.99  sim_light_normalised:                   226
% 2.83/0.99  sim_joinable_taut:                      0
% 2.83/0.99  sim_joinable_simp:                      0
% 2.83/0.99  sim_ac_normalised:                      0
% 2.83/0.99  sim_smt_subsumption:                    0
% 2.83/0.99  
%------------------------------------------------------------------------------
