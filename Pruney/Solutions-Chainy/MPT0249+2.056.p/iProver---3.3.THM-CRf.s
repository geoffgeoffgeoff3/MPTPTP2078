%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:32:40 EST 2020

% Result     : Theorem 19.72s
% Output     : CNFRefutation 19.72s
% Verified   : 
% Statistics : Number of formulae       :  118 (2105 expanded)
%              Number of clauses        :   61 ( 267 expanded)
%              Number of leaves         :   15 ( 635 expanded)
%              Depth                    :   26
%              Number of atoms          :  248 (3677 expanded)
%              Number of equality atoms :  197 (3173 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ~ ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(flattening,[],[f22])).

fof(f40,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
      | k1_tarski(X2) != X0 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f6,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f8])).

fof(f47,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f32,f33])).

fof(f49,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f31,f47])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k2_enumset1(X1,X1,X1,X2))
      | k2_enumset1(X2,X2,X2,X2) != X0 ) ),
    inference(definition_unfolding,[],[f40,f47,f49])).

fof(f67,plain,(
    ! [X2,X1] : r1_tarski(k2_enumset1(X2,X2,X2,X2),k2_enumset1(X1,X1,X1,X2)) ),
    inference(equality_resolution,[],[f59])).

fof(f12,conjecture,(
    ! [X0,X1,X2] :
      ~ ( k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & X1 != X2
        & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ~ ( k1_xboole_0 != X2
          & k1_xboole_0 != X1
          & X1 != X2
          & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f19,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != X2
      & k1_xboole_0 != X1
      & X1 != X2
      & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f24,plain,
    ( ? [X0,X1,X2] :
        ( k1_xboole_0 != X2
        & k1_xboole_0 != X1
        & X1 != X2
        & k2_xboole_0(X1,X2) = k1_tarski(X0) )
   => ( k1_xboole_0 != sK2
      & k1_xboole_0 != sK1
      & sK1 != sK2
      & k2_xboole_0(sK1,sK2) = k1_tarski(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,
    ( k1_xboole_0 != sK2
    & k1_xboole_0 != sK1
    & sK1 != sK2
    & k2_xboole_0(sK1,sK2) = k1_tarski(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f19,f24])).

fof(f43,plain,(
    k2_xboole_0(sK1,sK2) = k1_tarski(sK0) ),
    inference(cnf_transformation,[],[f25])).

fof(f11,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f11])).

fof(f48,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f42,f47])).

fof(f63,plain,(
    k2_enumset1(sK0,sK0,sK0,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK2)) ),
    inference(definition_unfolding,[],[f43,f48,f49])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(X0,X1),X2)
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(k2_xboole_0(X0,X1),X2) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f28,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(k2_xboole_0(X0,X1),X2) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2) ) ),
    inference(definition_unfolding,[],[f28,f48])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X1)
     => r1_tarski(X0,k2_xboole_0(X2,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_xboole_0(X2,X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f27,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k2_xboole_0(X2,X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k3_tarski(k2_enumset1(X2,X2,X2,X1)))
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f27,f48])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f29,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f53,plain,(
    ! [X0,X1] :
      ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f29,f48])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( k2_tarski(X1,X2) = X0
      | k1_tarski(X2) = X0
      | k1_tarski(X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f62,plain,(
    ! [X2,X0,X1] :
      ( k2_enumset1(X1,X1,X1,X2) = X0
      | k2_enumset1(X2,X2,X2,X2) = X0
      | k2_enumset1(X1,X1,X1,X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X2)) ) ),
    inference(definition_unfolding,[],[f37,f47,f49,f49,f47])).

fof(f45,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f25])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <=> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(flattening,[],[f20])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f57,plain,(
    ! [X0,X1] :
      ( k2_enumset1(X1,X1,X1,X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X1)) ) ),
    inference(definition_unfolding,[],[f34,f49,f49])).

fof(f5,axiom,(
    ! [X0,X1,X2] : k2_xboole_0(X0,k2_xboole_0(X1,X2)) = k2_xboole_0(k2_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X2,X0,X1] : k2_xboole_0(X0,k2_xboole_0(X1,X2)) = k2_xboole_0(k2_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f5])).

fof(f54,plain,(
    ! [X2,X0,X1] : k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))) = k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2)) ),
    inference(definition_unfolding,[],[f30,f48,f48,f48,f48])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
      | k1_tarski(X1) != X0 ) ),
    inference(cnf_transformation,[],[f23])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k2_enumset1(X1,X1,X1,X2))
      | k2_enumset1(X1,X1,X1,X1) != X0 ) ),
    inference(definition_unfolding,[],[f39,f47,f49])).

fof(f68,plain,(
    ! [X2,X1] : r1_tarski(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X1,X1,X1,X2)) ),
    inference(equality_resolution,[],[f60])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f1])).

fof(f26,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f14])).

fof(f50,plain,(
    ! [X0] : k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f26,f48])).

fof(f46,plain,(
    k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f25])).

fof(f44,plain,(
    sK1 != sK2 ),
    inference(cnf_transformation,[],[f25])).

cnf(c_9,plain,
    ( r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X0)) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_315,plain,
    ( r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_16,negated_conjecture,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK2)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_2,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X2)),X1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_321,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X2)),X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1047,plain,
    ( r1_tarski(k2_enumset1(sK0,sK0,sK0,sK0),X0) != iProver_top
    | r1_tarski(sK1,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_16,c_321])).

cnf(c_1066,plain,
    ( r1_tarski(sK1,k2_enumset1(X0,X0,X0,sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_315,c_1047])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X0,k3_tarski(k2_enumset1(X2,X2,X2,X1))) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_322,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X0,k3_tarski(k2_enumset1(X2,X2,X2,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1742,plain,
    ( r1_tarski(k2_enumset1(sK0,sK0,sK0,sK0),X0) != iProver_top
    | r1_tarski(sK1,k3_tarski(k2_enumset1(X1,X1,X1,X0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_322,c_1047])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_320,plain,
    ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2617,plain,
    ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) = k3_tarski(k2_enumset1(X0,X0,X0,X1))
    | r1_tarski(k2_enumset1(sK0,sK0,sK0,sK0),X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1742,c_320])).

cnf(c_12,plain,
    ( ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X2))
    | k2_enumset1(X1,X1,X1,X1) = X0
    | k2_enumset1(X2,X2,X2,X2) = X0
    | k2_enumset1(X1,X1,X1,X2) = X0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_312,plain,
    ( k2_enumset1(X0,X0,X0,X0) = X1
    | k2_enumset1(X2,X2,X2,X2) = X1
    | k2_enumset1(X2,X2,X2,X0) = X1
    | k1_xboole_0 = X1
    | r1_tarski(X1,k2_enumset1(X2,X2,X2,X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_1232,plain,
    ( k2_enumset1(X0,X0,X0,X0) = sK1
    | k2_enumset1(X0,X0,X0,sK0) = sK1
    | k2_enumset1(sK0,sK0,sK0,sK0) = sK1
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1066,c_312])).

cnf(c_14,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_129,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_138,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_129])).

cnf(c_130,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_394,plain,
    ( sK1 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_130])).

cnf(c_395,plain,
    ( sK1 != k1_xboole_0
    | k1_xboole_0 = sK1
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_394])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X1))
    | k2_enumset1(X1,X1,X1,X1) = X0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_317,plain,
    ( k2_enumset1(X0,X0,X0,X0) = X1
    | k1_xboole_0 = X1
    | r1_tarski(X1,k2_enumset1(X0,X0,X0,X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1570,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = sK1
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1066,c_317])).

cnf(c_27281,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1232,c_14,c_138,c_395,c_1570])).

cnf(c_44367,plain,
    ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) = k3_tarski(k2_enumset1(X0,X0,X0,X1))
    | r1_tarski(sK1,X1) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2617,c_27281])).

cnf(c_44374,plain,
    ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(X1,X1,X1,sK0))))) = k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(X1,X1,X1,sK0))) ),
    inference(superposition,[status(thm)],[c_1066,c_44367])).

cnf(c_856,plain,
    ( k3_tarski(k2_enumset1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X0))) = k2_enumset1(X1,X1,X1,X0) ),
    inference(superposition,[status(thm)],[c_315,c_320])).

cnf(c_4,plain,
    ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2)) = k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_736,plain,
    ( k3_tarski(k2_enumset1(k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK0,sK0,sK0,sK0),X0)) = k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(sK2,sK2,sK2,X0)))) ),
    inference(superposition,[status(thm)],[c_16,c_4])).

cnf(c_10872,plain,
    ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(X0,X0,X0,sK0))))) = k2_enumset1(X0,X0,X0,sK0) ),
    inference(superposition,[status(thm)],[c_856,c_736])).

cnf(c_44518,plain,
    ( k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(X0,X0,X0,sK0))) = k2_enumset1(X0,X0,X0,sK0) ),
    inference(superposition,[status(thm)],[c_44374,c_10872])).

cnf(c_10,plain,
    ( r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X1)) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_314,plain,
    ( r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_1067,plain,
    ( r1_tarski(sK1,k2_enumset1(sK0,sK0,sK0,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_314,c_1047])).

cnf(c_44375,plain,
    ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))))) = k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))) ),
    inference(superposition,[status(thm)],[c_1067,c_44367])).

cnf(c_857,plain,
    ( k3_tarski(k2_enumset1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X1))) = k2_enumset1(X0,X0,X0,X1) ),
    inference(superposition,[status(thm)],[c_314,c_320])).

cnf(c_14864,plain,
    ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(sK0,sK0,sK0,X0))))) = k2_enumset1(sK0,sK0,sK0,X0) ),
    inference(superposition,[status(thm)],[c_857,c_736])).

cnf(c_45389,plain,
    ( k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(sK0,sK0,sK0,X0))) = k2_enumset1(sK0,sK0,sK0,X0) ),
    inference(superposition,[status(thm)],[c_44375,c_14864])).

cnf(c_0,plain,
    ( k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_734,plain,
    ( k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(superposition,[status(thm)],[c_0,c_4])).

cnf(c_2004,plain,
    ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))))) = k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2)) ),
    inference(superposition,[status(thm)],[c_4,c_734])).

cnf(c_2050,plain,
    ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))))) = k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))) ),
    inference(light_normalisation,[status(thm)],[c_2004,c_4])).

cnf(c_63260,plain,
    ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))))) = k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(sK0,sK0,sK0,X1))))) ),
    inference(superposition,[status(thm)],[c_45389,c_2050])).

cnf(c_63659,plain,
    ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))))) = k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))) ),
    inference(demodulation,[status(thm)],[c_63260,c_4,c_45389])).

cnf(c_1046,plain,
    ( r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2) = iProver_top
    | r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X3)))),X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_4,c_321])).

cnf(c_65149,plain,
    ( r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))),X2) != iProver_top
    | r1_tarski(k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),X0)),X2) = iProver_top ),
    inference(superposition,[status(thm)],[c_63659,c_1046])).

cnf(c_65271,plain,
    ( r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))),X2) != iProver_top
    | r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(sK2,sK2,sK2,X0)))),X2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_65149,c_4])).

cnf(c_67069,plain,
    ( r1_tarski(k2_enumset1(sK0,sK0,sK0,sK0),X0) != iProver_top
    | r1_tarski(k3_tarski(k2_enumset1(sK2,sK2,sK2,k3_tarski(k2_enumset1(sK2,sK2,sK2,sK2)))),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_44518,c_65271])).

cnf(c_67082,plain,
    ( r1_tarski(k3_tarski(k2_enumset1(sK2,sK2,sK2,k3_tarski(k2_enumset1(sK2,sK2,sK2,sK2)))),X0) = iProver_top
    | r1_tarski(sK1,X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_67069,c_27281])).

cnf(c_67083,plain,
    ( r1_tarski(k3_tarski(k2_enumset1(sK2,sK2,sK2,sK2)),X0) = iProver_top
    | r1_tarski(sK1,X0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_67082,c_734])).

cnf(c_67084,plain,
    ( r1_tarski(sK1,X0) != iProver_top
    | r1_tarski(sK2,X0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_67083,c_0])).

cnf(c_67524,plain,
    ( r1_tarski(sK2,k2_enumset1(X0,X0,X0,sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1066,c_67084])).

cnf(c_68542,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = sK2
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_67524,c_317])).

cnf(c_68545,plain,
    ( sK1 = sK2
    | sK2 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_68542,c_27281])).

cnf(c_392,plain,
    ( sK2 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_130])).

cnf(c_393,plain,
    ( sK2 != k1_xboole_0
    | k1_xboole_0 = sK2
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_392])).

cnf(c_13,negated_conjecture,
    ( k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_15,negated_conjecture,
    ( sK1 != sK2 ),
    inference(cnf_transformation,[],[f44])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_68545,c_393,c_138,c_13,c_15])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n014.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 12:18:37 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 19.72/2.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 19.72/2.99  
% 19.72/2.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 19.72/2.99  
% 19.72/2.99  ------  iProver source info
% 19.72/2.99  
% 19.72/2.99  git: date: 2020-06-30 10:37:57 +0100
% 19.72/2.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 19.72/2.99  git: non_committed_changes: false
% 19.72/2.99  git: last_make_outside_of_git: false
% 19.72/2.99  
% 19.72/2.99  ------ 
% 19.72/2.99  
% 19.72/2.99  ------ Input Options
% 19.72/2.99  
% 19.72/2.99  --out_options                           all
% 19.72/2.99  --tptp_safe_out                         true
% 19.72/2.99  --problem_path                          ""
% 19.72/2.99  --include_path                          ""
% 19.72/2.99  --clausifier                            res/vclausify_rel
% 19.72/2.99  --clausifier_options                    --mode clausify
% 19.72/2.99  --stdin                                 false
% 19.72/2.99  --stats_out                             all
% 19.72/2.99  
% 19.72/2.99  ------ General Options
% 19.72/2.99  
% 19.72/2.99  --fof                                   false
% 19.72/2.99  --time_out_real                         305.
% 19.72/2.99  --time_out_virtual                      -1.
% 19.72/2.99  --symbol_type_check                     false
% 19.72/2.99  --clausify_out                          false
% 19.72/2.99  --sig_cnt_out                           false
% 19.72/2.99  --trig_cnt_out                          false
% 19.72/2.99  --trig_cnt_out_tolerance                1.
% 19.72/2.99  --trig_cnt_out_sk_spl                   false
% 19.72/2.99  --abstr_cl_out                          false
% 19.72/2.99  
% 19.72/2.99  ------ Global Options
% 19.72/2.99  
% 19.72/2.99  --schedule                              default
% 19.72/2.99  --add_important_lit                     false
% 19.72/2.99  --prop_solver_per_cl                    1000
% 19.72/2.99  --min_unsat_core                        false
% 19.72/2.99  --soft_assumptions                      false
% 19.72/2.99  --soft_lemma_size                       3
% 19.72/2.99  --prop_impl_unit_size                   0
% 19.72/2.99  --prop_impl_unit                        []
% 19.72/2.99  --share_sel_clauses                     true
% 19.72/2.99  --reset_solvers                         false
% 19.72/2.99  --bc_imp_inh                            [conj_cone]
% 19.72/2.99  --conj_cone_tolerance                   3.
% 19.72/2.99  --extra_neg_conj                        none
% 19.72/2.99  --large_theory_mode                     true
% 19.72/2.99  --prolific_symb_bound                   200
% 19.72/2.99  --lt_threshold                          2000
% 19.72/2.99  --clause_weak_htbl                      true
% 19.72/2.99  --gc_record_bc_elim                     false
% 19.72/2.99  
% 19.72/2.99  ------ Preprocessing Options
% 19.72/2.99  
% 19.72/2.99  --preprocessing_flag                    true
% 19.72/2.99  --time_out_prep_mult                    0.1
% 19.72/2.99  --splitting_mode                        input
% 19.72/2.99  --splitting_grd                         true
% 19.72/2.99  --splitting_cvd                         false
% 19.72/2.99  --splitting_cvd_svl                     false
% 19.72/2.99  --splitting_nvd                         32
% 19.72/2.99  --sub_typing                            true
% 19.72/2.99  --prep_gs_sim                           true
% 19.72/2.99  --prep_unflatten                        true
% 19.72/2.99  --prep_res_sim                          true
% 19.72/2.99  --prep_upred                            true
% 19.72/2.99  --prep_sem_filter                       exhaustive
% 19.72/2.99  --prep_sem_filter_out                   false
% 19.72/2.99  --pred_elim                             true
% 19.72/2.99  --res_sim_input                         true
% 19.72/2.99  --eq_ax_congr_red                       true
% 19.72/2.99  --pure_diseq_elim                       true
% 19.72/2.99  --brand_transform                       false
% 19.72/2.99  --non_eq_to_eq                          false
% 19.72/2.99  --prep_def_merge                        true
% 19.72/2.99  --prep_def_merge_prop_impl              false
% 19.72/2.99  --prep_def_merge_mbd                    true
% 19.72/2.99  --prep_def_merge_tr_red                 false
% 19.72/2.99  --prep_def_merge_tr_cl                  false
% 19.72/2.99  --smt_preprocessing                     true
% 19.72/2.99  --smt_ac_axioms                         fast
% 19.72/2.99  --preprocessed_out                      false
% 19.72/2.99  --preprocessed_stats                    false
% 19.72/2.99  
% 19.72/2.99  ------ Abstraction refinement Options
% 19.72/2.99  
% 19.72/2.99  --abstr_ref                             []
% 19.72/2.99  --abstr_ref_prep                        false
% 19.72/2.99  --abstr_ref_until_sat                   false
% 19.72/2.99  --abstr_ref_sig_restrict                funpre
% 19.72/2.99  --abstr_ref_af_restrict_to_split_sk     false
% 19.72/2.99  --abstr_ref_under                       []
% 19.72/2.99  
% 19.72/2.99  ------ SAT Options
% 19.72/2.99  
% 19.72/2.99  --sat_mode                              false
% 19.72/2.99  --sat_fm_restart_options                ""
% 19.72/2.99  --sat_gr_def                            false
% 19.72/2.99  --sat_epr_types                         true
% 19.72/2.99  --sat_non_cyclic_types                  false
% 19.72/2.99  --sat_finite_models                     false
% 19.72/2.99  --sat_fm_lemmas                         false
% 19.72/2.99  --sat_fm_prep                           false
% 19.72/2.99  --sat_fm_uc_incr                        true
% 19.72/2.99  --sat_out_model                         small
% 19.72/2.99  --sat_out_clauses                       false
% 19.72/2.99  
% 19.72/2.99  ------ QBF Options
% 19.72/2.99  
% 19.72/2.99  --qbf_mode                              false
% 19.72/2.99  --qbf_elim_univ                         false
% 19.72/2.99  --qbf_dom_inst                          none
% 19.72/2.99  --qbf_dom_pre_inst                      false
% 19.72/2.99  --qbf_sk_in                             false
% 19.72/2.99  --qbf_pred_elim                         true
% 19.72/2.99  --qbf_split                             512
% 19.72/2.99  
% 19.72/2.99  ------ BMC1 Options
% 19.72/2.99  
% 19.72/2.99  --bmc1_incremental                      false
% 19.72/2.99  --bmc1_axioms                           reachable_all
% 19.72/2.99  --bmc1_min_bound                        0
% 19.72/2.99  --bmc1_max_bound                        -1
% 19.72/2.99  --bmc1_max_bound_default                -1
% 19.72/2.99  --bmc1_symbol_reachability              true
% 19.72/2.99  --bmc1_property_lemmas                  false
% 19.72/2.99  --bmc1_k_induction                      false
% 19.72/2.99  --bmc1_non_equiv_states                 false
% 19.72/2.99  --bmc1_deadlock                         false
% 19.72/2.99  --bmc1_ucm                              false
% 19.72/2.99  --bmc1_add_unsat_core                   none
% 19.72/2.99  --bmc1_unsat_core_children              false
% 19.72/2.99  --bmc1_unsat_core_extrapolate_axioms    false
% 19.72/2.99  --bmc1_out_stat                         full
% 19.72/2.99  --bmc1_ground_init                      false
% 19.72/2.99  --bmc1_pre_inst_next_state              false
% 19.72/2.99  --bmc1_pre_inst_state                   false
% 19.72/2.99  --bmc1_pre_inst_reach_state             false
% 19.72/2.99  --bmc1_out_unsat_core                   false
% 19.72/2.99  --bmc1_aig_witness_out                  false
% 19.72/2.99  --bmc1_verbose                          false
% 19.72/2.99  --bmc1_dump_clauses_tptp                false
% 19.72/2.99  --bmc1_dump_unsat_core_tptp             false
% 19.72/2.99  --bmc1_dump_file                        -
% 19.72/2.99  --bmc1_ucm_expand_uc_limit              128
% 19.72/2.99  --bmc1_ucm_n_expand_iterations          6
% 19.72/2.99  --bmc1_ucm_extend_mode                  1
% 19.72/2.99  --bmc1_ucm_init_mode                    2
% 19.72/2.99  --bmc1_ucm_cone_mode                    none
% 19.72/2.99  --bmc1_ucm_reduced_relation_type        0
% 19.72/2.99  --bmc1_ucm_relax_model                  4
% 19.72/2.99  --bmc1_ucm_full_tr_after_sat            true
% 19.72/2.99  --bmc1_ucm_expand_neg_assumptions       false
% 19.72/2.99  --bmc1_ucm_layered_model                none
% 19.72/2.99  --bmc1_ucm_max_lemma_size               10
% 19.72/2.99  
% 19.72/2.99  ------ AIG Options
% 19.72/2.99  
% 19.72/2.99  --aig_mode                              false
% 19.72/2.99  
% 19.72/2.99  ------ Instantiation Options
% 19.72/2.99  
% 19.72/2.99  --instantiation_flag                    true
% 19.72/2.99  --inst_sos_flag                         false
% 19.72/2.99  --inst_sos_phase                        true
% 19.72/2.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 19.72/2.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 19.72/2.99  --inst_lit_sel_side                     num_symb
% 19.72/2.99  --inst_solver_per_active                1400
% 19.72/2.99  --inst_solver_calls_frac                1.
% 19.72/2.99  --inst_passive_queue_type               priority_queues
% 19.72/2.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 19.72/2.99  --inst_passive_queues_freq              [25;2]
% 19.72/2.99  --inst_dismatching                      true
% 19.72/2.99  --inst_eager_unprocessed_to_passive     true
% 19.72/2.99  --inst_prop_sim_given                   true
% 19.72/2.99  --inst_prop_sim_new                     false
% 19.72/2.99  --inst_subs_new                         false
% 19.72/2.99  --inst_eq_res_simp                      false
% 19.72/2.99  --inst_subs_given                       false
% 19.72/2.99  --inst_orphan_elimination               true
% 19.72/2.99  --inst_learning_loop_flag               true
% 19.72/2.99  --inst_learning_start                   3000
% 19.72/2.99  --inst_learning_factor                  2
% 19.72/2.99  --inst_start_prop_sim_after_learn       3
% 19.72/2.99  --inst_sel_renew                        solver
% 19.72/2.99  --inst_lit_activity_flag                true
% 19.72/2.99  --inst_restr_to_given                   false
% 19.72/2.99  --inst_activity_threshold               500
% 19.72/2.99  --inst_out_proof                        true
% 19.72/2.99  
% 19.72/2.99  ------ Resolution Options
% 19.72/2.99  
% 19.72/2.99  --resolution_flag                       true
% 19.72/2.99  --res_lit_sel                           adaptive
% 19.72/2.99  --res_lit_sel_side                      none
% 19.72/2.99  --res_ordering                          kbo
% 19.72/2.99  --res_to_prop_solver                    active
% 19.72/2.99  --res_prop_simpl_new                    false
% 19.72/2.99  --res_prop_simpl_given                  true
% 19.72/2.99  --res_passive_queue_type                priority_queues
% 19.72/2.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 19.72/2.99  --res_passive_queues_freq               [15;5]
% 19.72/2.99  --res_forward_subs                      full
% 19.72/2.99  --res_backward_subs                     full
% 19.72/2.99  --res_forward_subs_resolution           true
% 19.72/2.99  --res_backward_subs_resolution          true
% 19.72/2.99  --res_orphan_elimination                true
% 19.72/2.99  --res_time_limit                        2.
% 19.72/2.99  --res_out_proof                         true
% 19.72/2.99  
% 19.72/2.99  ------ Superposition Options
% 19.72/2.99  
% 19.72/2.99  --superposition_flag                    true
% 19.72/2.99  --sup_passive_queue_type                priority_queues
% 19.72/2.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 19.72/2.99  --sup_passive_queues_freq               [8;1;4]
% 19.72/2.99  --demod_completeness_check              fast
% 19.72/2.99  --demod_use_ground                      true
% 19.72/2.99  --sup_to_prop_solver                    passive
% 19.72/2.99  --sup_prop_simpl_new                    true
% 19.72/2.99  --sup_prop_simpl_given                  true
% 19.72/2.99  --sup_fun_splitting                     false
% 19.72/2.99  --sup_smt_interval                      50000
% 19.72/2.99  
% 19.72/2.99  ------ Superposition Simplification Setup
% 19.72/2.99  
% 19.72/2.99  --sup_indices_passive                   []
% 19.72/2.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 19.72/2.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 19.72/2.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 19.72/2.99  --sup_full_triv                         [TrivRules;PropSubs]
% 19.72/2.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 19.72/2.99  --sup_full_bw                           [BwDemod]
% 19.72/2.99  --sup_immed_triv                        [TrivRules]
% 19.72/2.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 19.72/2.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 19.72/2.99  --sup_immed_bw_main                     []
% 19.72/2.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 19.72/2.99  --sup_input_triv                        [Unflattening;TrivRules]
% 19.72/2.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 19.72/2.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 19.72/2.99  
% 19.72/2.99  ------ Combination Options
% 19.72/2.99  
% 19.72/2.99  --comb_res_mult                         3
% 19.72/2.99  --comb_sup_mult                         2
% 19.72/2.99  --comb_inst_mult                        10
% 19.72/2.99  
% 19.72/2.99  ------ Debug Options
% 19.72/2.99  
% 19.72/2.99  --dbg_backtrace                         false
% 19.72/2.99  --dbg_dump_prop_clauses                 false
% 19.72/2.99  --dbg_dump_prop_clauses_file            -
% 19.72/2.99  --dbg_out_stat                          false
% 19.72/2.99  ------ Parsing...
% 19.72/2.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 19.72/2.99  
% 19.72/2.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 19.72/2.99  
% 19.72/2.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 19.72/2.99  
% 19.72/2.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 19.72/2.99  ------ Proving...
% 19.72/2.99  ------ Problem Properties 
% 19.72/2.99  
% 19.72/2.99  
% 19.72/2.99  clauses                                 17
% 19.72/2.99  conjectures                             4
% 19.72/2.99  EPR                                     3
% 19.72/2.99  Horn                                    15
% 19.72/2.99  unary                                   12
% 19.72/2.99  binary                                  3
% 19.72/2.99  lits                                    26
% 19.72/2.99  lits eq                                 13
% 19.72/2.99  fd_pure                                 0
% 19.72/2.99  fd_pseudo                               0
% 19.72/2.99  fd_cond                                 0
% 19.72/2.99  fd_pseudo_cond                          2
% 19.72/2.99  AC symbols                              0
% 19.72/2.99  
% 19.72/2.99  ------ Schedule dynamic 5 is on 
% 19.72/2.99  
% 19.72/2.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 19.72/2.99  
% 19.72/2.99  
% 19.72/2.99  ------ 
% 19.72/2.99  Current options:
% 19.72/2.99  ------ 
% 19.72/2.99  
% 19.72/2.99  ------ Input Options
% 19.72/2.99  
% 19.72/2.99  --out_options                           all
% 19.72/2.99  --tptp_safe_out                         true
% 19.72/2.99  --problem_path                          ""
% 19.72/2.99  --include_path                          ""
% 19.72/2.99  --clausifier                            res/vclausify_rel
% 19.72/2.99  --clausifier_options                    --mode clausify
% 19.72/2.99  --stdin                                 false
% 19.72/2.99  --stats_out                             all
% 19.72/2.99  
% 19.72/2.99  ------ General Options
% 19.72/2.99  
% 19.72/2.99  --fof                                   false
% 19.72/2.99  --time_out_real                         305.
% 19.72/2.99  --time_out_virtual                      -1.
% 19.72/2.99  --symbol_type_check                     false
% 19.72/2.99  --clausify_out                          false
% 19.72/2.99  --sig_cnt_out                           false
% 19.72/2.99  --trig_cnt_out                          false
% 19.72/2.99  --trig_cnt_out_tolerance                1.
% 19.72/2.99  --trig_cnt_out_sk_spl                   false
% 19.72/2.99  --abstr_cl_out                          false
% 19.72/2.99  
% 19.72/2.99  ------ Global Options
% 19.72/2.99  
% 19.72/2.99  --schedule                              default
% 19.72/2.99  --add_important_lit                     false
% 19.72/2.99  --prop_solver_per_cl                    1000
% 19.72/2.99  --min_unsat_core                        false
% 19.72/2.99  --soft_assumptions                      false
% 19.72/2.99  --soft_lemma_size                       3
% 19.72/2.99  --prop_impl_unit_size                   0
% 19.72/2.99  --prop_impl_unit                        []
% 19.72/2.99  --share_sel_clauses                     true
% 19.72/2.99  --reset_solvers                         false
% 19.72/2.99  --bc_imp_inh                            [conj_cone]
% 19.72/2.99  --conj_cone_tolerance                   3.
% 19.72/2.99  --extra_neg_conj                        none
% 19.72/2.99  --large_theory_mode                     true
% 19.72/2.99  --prolific_symb_bound                   200
% 19.72/2.99  --lt_threshold                          2000
% 19.72/2.99  --clause_weak_htbl                      true
% 19.72/2.99  --gc_record_bc_elim                     false
% 19.72/2.99  
% 19.72/2.99  ------ Preprocessing Options
% 19.72/2.99  
% 19.72/2.99  --preprocessing_flag                    true
% 19.72/2.99  --time_out_prep_mult                    0.1
% 19.72/2.99  --splitting_mode                        input
% 19.72/2.99  --splitting_grd                         true
% 19.72/2.99  --splitting_cvd                         false
% 19.72/2.99  --splitting_cvd_svl                     false
% 19.72/2.99  --splitting_nvd                         32
% 19.72/2.99  --sub_typing                            true
% 19.72/2.99  --prep_gs_sim                           true
% 19.72/2.99  --prep_unflatten                        true
% 19.72/2.99  --prep_res_sim                          true
% 19.72/2.99  --prep_upred                            true
% 19.72/2.99  --prep_sem_filter                       exhaustive
% 19.72/2.99  --prep_sem_filter_out                   false
% 19.72/2.99  --pred_elim                             true
% 19.72/2.99  --res_sim_input                         true
% 19.72/2.99  --eq_ax_congr_red                       true
% 19.72/2.99  --pure_diseq_elim                       true
% 19.72/2.99  --brand_transform                       false
% 19.72/2.99  --non_eq_to_eq                          false
% 19.72/2.99  --prep_def_merge                        true
% 19.72/2.99  --prep_def_merge_prop_impl              false
% 19.72/2.99  --prep_def_merge_mbd                    true
% 19.72/2.99  --prep_def_merge_tr_red                 false
% 19.72/2.99  --prep_def_merge_tr_cl                  false
% 19.72/2.99  --smt_preprocessing                     true
% 19.72/2.99  --smt_ac_axioms                         fast
% 19.72/2.99  --preprocessed_out                      false
% 19.72/2.99  --preprocessed_stats                    false
% 19.72/2.99  
% 19.72/2.99  ------ Abstraction refinement Options
% 19.72/2.99  
% 19.72/2.99  --abstr_ref                             []
% 19.72/2.99  --abstr_ref_prep                        false
% 19.72/2.99  --abstr_ref_until_sat                   false
% 19.72/2.99  --abstr_ref_sig_restrict                funpre
% 19.72/2.99  --abstr_ref_af_restrict_to_split_sk     false
% 19.72/2.99  --abstr_ref_under                       []
% 19.72/2.99  
% 19.72/2.99  ------ SAT Options
% 19.72/2.99  
% 19.72/2.99  --sat_mode                              false
% 19.72/2.99  --sat_fm_restart_options                ""
% 19.72/2.99  --sat_gr_def                            false
% 19.72/2.99  --sat_epr_types                         true
% 19.72/2.99  --sat_non_cyclic_types                  false
% 19.72/2.99  --sat_finite_models                     false
% 19.72/2.99  --sat_fm_lemmas                         false
% 19.72/2.99  --sat_fm_prep                           false
% 19.72/2.99  --sat_fm_uc_incr                        true
% 19.72/2.99  --sat_out_model                         small
% 19.72/2.99  --sat_out_clauses                       false
% 19.72/2.99  
% 19.72/2.99  ------ QBF Options
% 19.72/2.99  
% 19.72/2.99  --qbf_mode                              false
% 19.72/2.99  --qbf_elim_univ                         false
% 19.72/2.99  --qbf_dom_inst                          none
% 19.72/2.99  --qbf_dom_pre_inst                      false
% 19.72/2.99  --qbf_sk_in                             false
% 19.72/2.99  --qbf_pred_elim                         true
% 19.72/2.99  --qbf_split                             512
% 19.72/2.99  
% 19.72/2.99  ------ BMC1 Options
% 19.72/2.99  
% 19.72/2.99  --bmc1_incremental                      false
% 19.72/2.99  --bmc1_axioms                           reachable_all
% 19.72/2.99  --bmc1_min_bound                        0
% 19.72/2.99  --bmc1_max_bound                        -1
% 19.72/2.99  --bmc1_max_bound_default                -1
% 19.72/2.99  --bmc1_symbol_reachability              true
% 19.72/2.99  --bmc1_property_lemmas                  false
% 19.72/2.99  --bmc1_k_induction                      false
% 19.72/2.99  --bmc1_non_equiv_states                 false
% 19.72/2.99  --bmc1_deadlock                         false
% 19.72/2.99  --bmc1_ucm                              false
% 19.72/2.99  --bmc1_add_unsat_core                   none
% 19.72/2.99  --bmc1_unsat_core_children              false
% 19.72/2.99  --bmc1_unsat_core_extrapolate_axioms    false
% 19.72/2.99  --bmc1_out_stat                         full
% 19.72/2.99  --bmc1_ground_init                      false
% 19.72/2.99  --bmc1_pre_inst_next_state              false
% 19.72/2.99  --bmc1_pre_inst_state                   false
% 19.72/2.99  --bmc1_pre_inst_reach_state             false
% 19.72/2.99  --bmc1_out_unsat_core                   false
% 19.72/2.99  --bmc1_aig_witness_out                  false
% 19.72/2.99  --bmc1_verbose                          false
% 19.72/2.99  --bmc1_dump_clauses_tptp                false
% 19.72/2.99  --bmc1_dump_unsat_core_tptp             false
% 19.72/2.99  --bmc1_dump_file                        -
% 19.72/2.99  --bmc1_ucm_expand_uc_limit              128
% 19.72/2.99  --bmc1_ucm_n_expand_iterations          6
% 19.72/2.99  --bmc1_ucm_extend_mode                  1
% 19.72/2.99  --bmc1_ucm_init_mode                    2
% 19.72/2.99  --bmc1_ucm_cone_mode                    none
% 19.72/2.99  --bmc1_ucm_reduced_relation_type        0
% 19.72/2.99  --bmc1_ucm_relax_model                  4
% 19.72/2.99  --bmc1_ucm_full_tr_after_sat            true
% 19.72/2.99  --bmc1_ucm_expand_neg_assumptions       false
% 19.72/2.99  --bmc1_ucm_layered_model                none
% 19.72/2.99  --bmc1_ucm_max_lemma_size               10
% 19.72/2.99  
% 19.72/2.99  ------ AIG Options
% 19.72/2.99  
% 19.72/2.99  --aig_mode                              false
% 19.72/2.99  
% 19.72/2.99  ------ Instantiation Options
% 19.72/2.99  
% 19.72/2.99  --instantiation_flag                    true
% 19.72/2.99  --inst_sos_flag                         false
% 19.72/2.99  --inst_sos_phase                        true
% 19.72/2.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 19.72/2.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 19.72/2.99  --inst_lit_sel_side                     none
% 19.72/2.99  --inst_solver_per_active                1400
% 19.72/2.99  --inst_solver_calls_frac                1.
% 19.72/2.99  --inst_passive_queue_type               priority_queues
% 19.72/2.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 19.72/2.99  --inst_passive_queues_freq              [25;2]
% 19.72/2.99  --inst_dismatching                      true
% 19.72/2.99  --inst_eager_unprocessed_to_passive     true
% 19.72/2.99  --inst_prop_sim_given                   true
% 19.72/2.99  --inst_prop_sim_new                     false
% 19.72/2.99  --inst_subs_new                         false
% 19.72/2.99  --inst_eq_res_simp                      false
% 19.72/2.99  --inst_subs_given                       false
% 19.72/2.99  --inst_orphan_elimination               true
% 19.72/2.99  --inst_learning_loop_flag               true
% 19.72/2.99  --inst_learning_start                   3000
% 19.72/2.99  --inst_learning_factor                  2
% 19.72/2.99  --inst_start_prop_sim_after_learn       3
% 19.72/2.99  --inst_sel_renew                        solver
% 19.72/2.99  --inst_lit_activity_flag                true
% 19.72/2.99  --inst_restr_to_given                   false
% 19.72/2.99  --inst_activity_threshold               500
% 19.72/2.99  --inst_out_proof                        true
% 19.72/2.99  
% 19.72/2.99  ------ Resolution Options
% 19.72/2.99  
% 19.72/2.99  --resolution_flag                       false
% 19.72/2.99  --res_lit_sel                           adaptive
% 19.72/2.99  --res_lit_sel_side                      none
% 19.72/2.99  --res_ordering                          kbo
% 19.72/2.99  --res_to_prop_solver                    active
% 19.72/2.99  --res_prop_simpl_new                    false
% 19.72/2.99  --res_prop_simpl_given                  true
% 19.72/2.99  --res_passive_queue_type                priority_queues
% 19.72/2.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 19.72/2.99  --res_passive_queues_freq               [15;5]
% 19.72/2.99  --res_forward_subs                      full
% 19.72/2.99  --res_backward_subs                     full
% 19.72/2.99  --res_forward_subs_resolution           true
% 19.72/2.99  --res_backward_subs_resolution          true
% 19.72/2.99  --res_orphan_elimination                true
% 19.72/2.99  --res_time_limit                        2.
% 19.72/2.99  --res_out_proof                         true
% 19.72/2.99  
% 19.72/2.99  ------ Superposition Options
% 19.72/2.99  
% 19.72/2.99  --superposition_flag                    true
% 19.72/2.99  --sup_passive_queue_type                priority_queues
% 19.72/2.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 19.72/2.99  --sup_passive_queues_freq               [8;1;4]
% 19.72/2.99  --demod_completeness_check              fast
% 19.72/2.99  --demod_use_ground                      true
% 19.72/2.99  --sup_to_prop_solver                    passive
% 19.72/2.99  --sup_prop_simpl_new                    true
% 19.72/2.99  --sup_prop_simpl_given                  true
% 19.72/2.99  --sup_fun_splitting                     false
% 19.72/2.99  --sup_smt_interval                      50000
% 19.72/2.99  
% 19.72/2.99  ------ Superposition Simplification Setup
% 19.72/2.99  
% 19.72/2.99  --sup_indices_passive                   []
% 19.72/2.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 19.72/2.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 19.72/2.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 19.72/2.99  --sup_full_triv                         [TrivRules;PropSubs]
% 19.72/2.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 19.72/2.99  --sup_full_bw                           [BwDemod]
% 19.72/2.99  --sup_immed_triv                        [TrivRules]
% 19.72/2.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 19.72/2.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 19.72/2.99  --sup_immed_bw_main                     []
% 19.72/2.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 19.72/2.99  --sup_input_triv                        [Unflattening;TrivRules]
% 19.72/2.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 19.72/2.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 19.72/2.99  
% 19.72/2.99  ------ Combination Options
% 19.72/2.99  
% 19.72/2.99  --comb_res_mult                         3
% 19.72/2.99  --comb_sup_mult                         2
% 19.72/2.99  --comb_inst_mult                        10
% 19.72/2.99  
% 19.72/2.99  ------ Debug Options
% 19.72/2.99  
% 19.72/2.99  --dbg_backtrace                         false
% 19.72/2.99  --dbg_dump_prop_clauses                 false
% 19.72/2.99  --dbg_dump_prop_clauses_file            -
% 19.72/2.99  --dbg_out_stat                          false
% 19.72/2.99  
% 19.72/2.99  
% 19.72/2.99  
% 19.72/2.99  
% 19.72/2.99  ------ Proving...
% 19.72/2.99  
% 19.72/2.99  
% 19.72/2.99  % SZS status Theorem for theBenchmark.p
% 19.72/2.99  
% 19.72/2.99  % SZS output start CNFRefutation for theBenchmark.p
% 19.72/2.99  
% 19.72/2.99  fof(f10,axiom,(
% 19.72/2.99    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> ~(k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0))),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f18,plain,(
% 19.72/2.99    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 19.72/2.99    inference(ennf_transformation,[],[f10])).
% 19.72/2.99  
% 19.72/2.99  fof(f22,plain,(
% 19.72/2.99    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 19.72/2.99    inference(nnf_transformation,[],[f18])).
% 19.72/2.99  
% 19.72/2.99  fof(f23,plain,(
% 19.72/2.99    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 19.72/2.99    inference(flattening,[],[f22])).
% 19.72/2.99  
% 19.72/2.99  fof(f40,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k2_tarski(X1,X2)) | k1_tarski(X2) != X0) )),
% 19.72/2.99    inference(cnf_transformation,[],[f23])).
% 19.72/2.99  
% 19.72/2.99  fof(f6,axiom,(
% 19.72/2.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f31,plain,(
% 19.72/2.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 19.72/2.99    inference(cnf_transformation,[],[f6])).
% 19.72/2.99  
% 19.72/2.99  fof(f7,axiom,(
% 19.72/2.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f32,plain,(
% 19.72/2.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 19.72/2.99    inference(cnf_transformation,[],[f7])).
% 19.72/2.99  
% 19.72/2.99  fof(f8,axiom,(
% 19.72/2.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f33,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 19.72/2.99    inference(cnf_transformation,[],[f8])).
% 19.72/2.99  
% 19.72/2.99  fof(f47,plain,(
% 19.72/2.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 19.72/2.99    inference(definition_unfolding,[],[f32,f33])).
% 19.72/2.99  
% 19.72/2.99  fof(f49,plain,(
% 19.72/2.99    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 19.72/2.99    inference(definition_unfolding,[],[f31,f47])).
% 19.72/2.99  
% 19.72/2.99  fof(f59,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k2_enumset1(X1,X1,X1,X2)) | k2_enumset1(X2,X2,X2,X2) != X0) )),
% 19.72/2.99    inference(definition_unfolding,[],[f40,f47,f49])).
% 19.72/2.99  
% 19.72/2.99  fof(f67,plain,(
% 19.72/2.99    ( ! [X2,X1] : (r1_tarski(k2_enumset1(X2,X2,X2,X2),k2_enumset1(X1,X1,X1,X2))) )),
% 19.72/2.99    inference(equality_resolution,[],[f59])).
% 19.72/2.99  
% 19.72/2.99  fof(f12,conjecture,(
% 19.72/2.99    ! [X0,X1,X2] : ~(k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f13,negated_conjecture,(
% 19.72/2.99    ~! [X0,X1,X2] : ~(k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 19.72/2.99    inference(negated_conjecture,[],[f12])).
% 19.72/2.99  
% 19.72/2.99  fof(f19,plain,(
% 19.72/2.99    ? [X0,X1,X2] : (k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 19.72/2.99    inference(ennf_transformation,[],[f13])).
% 19.72/2.99  
% 19.72/2.99  fof(f24,plain,(
% 19.72/2.99    ? [X0,X1,X2] : (k1_xboole_0 != X2 & k1_xboole_0 != X1 & X1 != X2 & k2_xboole_0(X1,X2) = k1_tarski(X0)) => (k1_xboole_0 != sK2 & k1_xboole_0 != sK1 & sK1 != sK2 & k2_xboole_0(sK1,sK2) = k1_tarski(sK0))),
% 19.72/2.99    introduced(choice_axiom,[])).
% 19.72/2.99  
% 19.72/2.99  fof(f25,plain,(
% 19.72/2.99    k1_xboole_0 != sK2 & k1_xboole_0 != sK1 & sK1 != sK2 & k2_xboole_0(sK1,sK2) = k1_tarski(sK0)),
% 19.72/2.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f19,f24])).
% 19.72/2.99  
% 19.72/2.99  fof(f43,plain,(
% 19.72/2.99    k2_xboole_0(sK1,sK2) = k1_tarski(sK0)),
% 19.72/2.99    inference(cnf_transformation,[],[f25])).
% 19.72/2.99  
% 19.72/2.99  fof(f11,axiom,(
% 19.72/2.99    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f42,plain,(
% 19.72/2.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 19.72/2.99    inference(cnf_transformation,[],[f11])).
% 19.72/2.99  
% 19.72/2.99  fof(f48,plain,(
% 19.72/2.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1))) )),
% 19.72/2.99    inference(definition_unfolding,[],[f42,f47])).
% 19.72/2.99  
% 19.72/2.99  fof(f63,plain,(
% 19.72/2.99    k2_enumset1(sK0,sK0,sK0,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK2))),
% 19.72/2.99    inference(definition_unfolding,[],[f43,f48,f49])).
% 19.72/2.99  
% 19.72/2.99  fof(f3,axiom,(
% 19.72/2.99    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(X0,X1),X2) => r1_tarski(X0,X2))),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f16,plain,(
% 19.72/2.99    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(k2_xboole_0(X0,X1),X2))),
% 19.72/2.99    inference(ennf_transformation,[],[f3])).
% 19.72/2.99  
% 19.72/2.99  fof(f28,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(k2_xboole_0(X0,X1),X2)) )),
% 19.72/2.99    inference(cnf_transformation,[],[f16])).
% 19.72/2.99  
% 19.72/2.99  fof(f52,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2)) )),
% 19.72/2.99    inference(definition_unfolding,[],[f28,f48])).
% 19.72/2.99  
% 19.72/2.99  fof(f2,axiom,(
% 19.72/2.99    ! [X0,X1,X2] : (r1_tarski(X0,X1) => r1_tarski(X0,k2_xboole_0(X2,X1)))),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f15,plain,(
% 19.72/2.99    ! [X0,X1,X2] : (r1_tarski(X0,k2_xboole_0(X2,X1)) | ~r1_tarski(X0,X1))),
% 19.72/2.99    inference(ennf_transformation,[],[f2])).
% 19.72/2.99  
% 19.72/2.99  fof(f27,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k2_xboole_0(X2,X1)) | ~r1_tarski(X0,X1)) )),
% 19.72/2.99    inference(cnf_transformation,[],[f15])).
% 19.72/2.99  
% 19.72/2.99  fof(f51,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k3_tarski(k2_enumset1(X2,X2,X2,X1))) | ~r1_tarski(X0,X1)) )),
% 19.72/2.99    inference(definition_unfolding,[],[f27,f48])).
% 19.72/2.99  
% 19.72/2.99  fof(f4,axiom,(
% 19.72/2.99    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f17,plain,(
% 19.72/2.99    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 19.72/2.99    inference(ennf_transformation,[],[f4])).
% 19.72/2.99  
% 19.72/2.99  fof(f29,plain,(
% 19.72/2.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 19.72/2.99    inference(cnf_transformation,[],[f17])).
% 19.72/2.99  
% 19.72/2.99  fof(f53,plain,(
% 19.72/2.99    ( ! [X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1 | ~r1_tarski(X0,X1)) )),
% 19.72/2.99    inference(definition_unfolding,[],[f29,f48])).
% 19.72/2.99  
% 19.72/2.99  fof(f37,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_tarski(X1,X2))) )),
% 19.72/2.99    inference(cnf_transformation,[],[f23])).
% 19.72/2.99  
% 19.72/2.99  fof(f62,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (k2_enumset1(X1,X1,X1,X2) = X0 | k2_enumset1(X2,X2,X2,X2) = X0 | k2_enumset1(X1,X1,X1,X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_enumset1(X1,X1,X1,X2))) )),
% 19.72/2.99    inference(definition_unfolding,[],[f37,f47,f49,f49,f47])).
% 19.72/2.99  
% 19.72/2.99  fof(f45,plain,(
% 19.72/2.99    k1_xboole_0 != sK1),
% 19.72/2.99    inference(cnf_transformation,[],[f25])).
% 19.72/2.99  
% 19.72/2.99  fof(f9,axiom,(
% 19.72/2.99    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f20,plain,(
% 19.72/2.99    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k1_tarski(X1))))),
% 19.72/2.99    inference(nnf_transformation,[],[f9])).
% 19.72/2.99  
% 19.72/2.99  fof(f21,plain,(
% 19.72/2.99    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))))),
% 19.72/2.99    inference(flattening,[],[f20])).
% 19.72/2.99  
% 19.72/2.99  fof(f34,plain,(
% 19.72/2.99    ( ! [X0,X1] : (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))) )),
% 19.72/2.99    inference(cnf_transformation,[],[f21])).
% 19.72/2.99  
% 19.72/2.99  fof(f57,plain,(
% 19.72/2.99    ( ! [X0,X1] : (k2_enumset1(X1,X1,X1,X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_enumset1(X1,X1,X1,X1))) )),
% 19.72/2.99    inference(definition_unfolding,[],[f34,f49,f49])).
% 19.72/2.99  
% 19.72/2.99  fof(f5,axiom,(
% 19.72/2.99    ! [X0,X1,X2] : k2_xboole_0(X0,k2_xboole_0(X1,X2)) = k2_xboole_0(k2_xboole_0(X0,X1),X2)),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f30,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (k2_xboole_0(X0,k2_xboole_0(X1,X2)) = k2_xboole_0(k2_xboole_0(X0,X1),X2)) )),
% 19.72/2.99    inference(cnf_transformation,[],[f5])).
% 19.72/2.99  
% 19.72/2.99  fof(f54,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))) = k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2))) )),
% 19.72/2.99    inference(definition_unfolding,[],[f30,f48,f48,f48,f48])).
% 19.72/2.99  
% 19.72/2.99  fof(f39,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k2_tarski(X1,X2)) | k1_tarski(X1) != X0) )),
% 19.72/2.99    inference(cnf_transformation,[],[f23])).
% 19.72/2.99  
% 19.72/2.99  fof(f60,plain,(
% 19.72/2.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k2_enumset1(X1,X1,X1,X2)) | k2_enumset1(X1,X1,X1,X1) != X0) )),
% 19.72/2.99    inference(definition_unfolding,[],[f39,f47,f49])).
% 19.72/2.99  
% 19.72/2.99  fof(f68,plain,(
% 19.72/2.99    ( ! [X2,X1] : (r1_tarski(k2_enumset1(X1,X1,X1,X1),k2_enumset1(X1,X1,X1,X2))) )),
% 19.72/2.99    inference(equality_resolution,[],[f60])).
% 19.72/2.99  
% 19.72/2.99  fof(f1,axiom,(
% 19.72/2.99    ! [X0,X1] : k2_xboole_0(X0,X0) = X0),
% 19.72/2.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 19.72/2.99  
% 19.72/2.99  fof(f14,plain,(
% 19.72/2.99    ! [X0] : k2_xboole_0(X0,X0) = X0),
% 19.72/2.99    inference(rectify,[],[f1])).
% 19.72/2.99  
% 19.72/2.99  fof(f26,plain,(
% 19.72/2.99    ( ! [X0] : (k2_xboole_0(X0,X0) = X0) )),
% 19.72/2.99    inference(cnf_transformation,[],[f14])).
% 19.72/2.99  
% 19.72/2.99  fof(f50,plain,(
% 19.72/2.99    ( ! [X0] : (k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0) )),
% 19.72/2.99    inference(definition_unfolding,[],[f26,f48])).
% 19.72/2.99  
% 19.72/2.99  fof(f46,plain,(
% 19.72/2.99    k1_xboole_0 != sK2),
% 19.72/2.99    inference(cnf_transformation,[],[f25])).
% 19.72/2.99  
% 19.72/2.99  fof(f44,plain,(
% 19.72/2.99    sK1 != sK2),
% 19.72/2.99    inference(cnf_transformation,[],[f25])).
% 19.72/2.99  
% 19.72/2.99  cnf(c_9,plain,
% 19.72/2.99      ( r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X0)) ),
% 19.72/2.99      inference(cnf_transformation,[],[f67]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_315,plain,
% 19.72/2.99      ( r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X0)) = iProver_top ),
% 19.72/2.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_16,negated_conjecture,
% 19.72/2.99      ( k2_enumset1(sK0,sK0,sK0,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK2)) ),
% 19.72/2.99      inference(cnf_transformation,[],[f63]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_2,plain,
% 19.72/2.99      ( r1_tarski(X0,X1)
% 19.72/2.99      | ~ r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X2)),X1) ),
% 19.72/2.99      inference(cnf_transformation,[],[f52]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_321,plain,
% 19.72/2.99      ( r1_tarski(X0,X1) = iProver_top
% 19.72/2.99      | r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X2)),X1) != iProver_top ),
% 19.72/2.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_1047,plain,
% 19.72/2.99      ( r1_tarski(k2_enumset1(sK0,sK0,sK0,sK0),X0) != iProver_top
% 19.72/2.99      | r1_tarski(sK1,X0) = iProver_top ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_16,c_321]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_1066,plain,
% 19.72/2.99      ( r1_tarski(sK1,k2_enumset1(X0,X0,X0,sK0)) = iProver_top ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_315,c_1047]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_1,plain,
% 19.72/2.99      ( ~ r1_tarski(X0,X1)
% 19.72/2.99      | r1_tarski(X0,k3_tarski(k2_enumset1(X2,X2,X2,X1))) ),
% 19.72/2.99      inference(cnf_transformation,[],[f51]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_322,plain,
% 19.72/2.99      ( r1_tarski(X0,X1) != iProver_top
% 19.72/2.99      | r1_tarski(X0,k3_tarski(k2_enumset1(X2,X2,X2,X1))) = iProver_top ),
% 19.72/2.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_1742,plain,
% 19.72/2.99      ( r1_tarski(k2_enumset1(sK0,sK0,sK0,sK0),X0) != iProver_top
% 19.72/2.99      | r1_tarski(sK1,k3_tarski(k2_enumset1(X1,X1,X1,X0))) = iProver_top ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_322,c_1047]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_3,plain,
% 19.72/2.99      ( ~ r1_tarski(X0,X1) | k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1 ),
% 19.72/2.99      inference(cnf_transformation,[],[f53]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_320,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1
% 19.72/2.99      | r1_tarski(X0,X1) != iProver_top ),
% 19.72/2.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_2617,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) = k3_tarski(k2_enumset1(X0,X0,X0,X1))
% 19.72/2.99      | r1_tarski(k2_enumset1(sK0,sK0,sK0,sK0),X1) != iProver_top ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_1742,c_320]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_12,plain,
% 19.72/2.99      ( ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X2))
% 19.72/2.99      | k2_enumset1(X1,X1,X1,X1) = X0
% 19.72/2.99      | k2_enumset1(X2,X2,X2,X2) = X0
% 19.72/2.99      | k2_enumset1(X1,X1,X1,X2) = X0
% 19.72/2.99      | k1_xboole_0 = X0 ),
% 19.72/2.99      inference(cnf_transformation,[],[f62]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_312,plain,
% 19.72/2.99      ( k2_enumset1(X0,X0,X0,X0) = X1
% 19.72/2.99      | k2_enumset1(X2,X2,X2,X2) = X1
% 19.72/2.99      | k2_enumset1(X2,X2,X2,X0) = X1
% 19.72/2.99      | k1_xboole_0 = X1
% 19.72/2.99      | r1_tarski(X1,k2_enumset1(X2,X2,X2,X0)) != iProver_top ),
% 19.72/2.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_1232,plain,
% 19.72/2.99      ( k2_enumset1(X0,X0,X0,X0) = sK1
% 19.72/2.99      | k2_enumset1(X0,X0,X0,sK0) = sK1
% 19.72/2.99      | k2_enumset1(sK0,sK0,sK0,sK0) = sK1
% 19.72/2.99      | sK1 = k1_xboole_0 ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_1066,c_312]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_14,negated_conjecture,
% 19.72/2.99      ( k1_xboole_0 != sK1 ),
% 19.72/2.99      inference(cnf_transformation,[],[f45]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_129,plain,( X0 = X0 ),theory(equality) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_138,plain,
% 19.72/2.99      ( k1_xboole_0 = k1_xboole_0 ),
% 19.72/2.99      inference(instantiation,[status(thm)],[c_129]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_130,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_394,plain,
% 19.72/2.99      ( sK1 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK1 ),
% 19.72/2.99      inference(instantiation,[status(thm)],[c_130]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_395,plain,
% 19.72/2.99      ( sK1 != k1_xboole_0
% 19.72/2.99      | k1_xboole_0 = sK1
% 19.72/2.99      | k1_xboole_0 != k1_xboole_0 ),
% 19.72/2.99      inference(instantiation,[status(thm)],[c_394]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_7,plain,
% 19.72/2.99      ( ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X1))
% 19.72/2.99      | k2_enumset1(X1,X1,X1,X1) = X0
% 19.72/2.99      | k1_xboole_0 = X0 ),
% 19.72/2.99      inference(cnf_transformation,[],[f57]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_317,plain,
% 19.72/2.99      ( k2_enumset1(X0,X0,X0,X0) = X1
% 19.72/2.99      | k1_xboole_0 = X1
% 19.72/2.99      | r1_tarski(X1,k2_enumset1(X0,X0,X0,X0)) != iProver_top ),
% 19.72/2.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_1570,plain,
% 19.72/2.99      ( k2_enumset1(sK0,sK0,sK0,sK0) = sK1 | sK1 = k1_xboole_0 ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_1066,c_317]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_27281,plain,
% 19.72/2.99      ( k2_enumset1(sK0,sK0,sK0,sK0) = sK1 ),
% 19.72/2.99      inference(global_propositional_subsumption,
% 19.72/2.99                [status(thm)],
% 19.72/2.99                [c_1232,c_14,c_138,c_395,c_1570]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_44367,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) = k3_tarski(k2_enumset1(X0,X0,X0,X1))
% 19.72/2.99      | r1_tarski(sK1,X1) != iProver_top ),
% 19.72/2.99      inference(light_normalisation,[status(thm)],[c_2617,c_27281]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_44374,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(X1,X1,X1,sK0))))) = k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(X1,X1,X1,sK0))) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_1066,c_44367]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_856,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X0))) = k2_enumset1(X1,X1,X1,X0) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_315,c_320]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_4,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2)) = k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))) ),
% 19.72/2.99      inference(cnf_transformation,[],[f54]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_736,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK0,sK0,sK0,sK0),k2_enumset1(sK0,sK0,sK0,sK0),X0)) = k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(sK2,sK2,sK2,X0)))) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_16,c_4]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_10872,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(X0,X0,X0,sK0))))) = k2_enumset1(X0,X0,X0,sK0) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_856,c_736]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_44518,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(X0,X0,X0,sK0))) = k2_enumset1(X0,X0,X0,sK0) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_44374,c_10872]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_10,plain,
% 19.72/2.99      ( r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X1)) ),
% 19.72/2.99      inference(cnf_transformation,[],[f68]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_314,plain,
% 19.72/2.99      ( r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X1)) = iProver_top ),
% 19.72/2.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_1067,plain,
% 19.72/2.99      ( r1_tarski(sK1,k2_enumset1(sK0,sK0,sK0,X0)) = iProver_top ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_314,c_1047]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_44375,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))))) = k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_1067,c_44367]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_857,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X1))) = k2_enumset1(X0,X0,X0,X1) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_314,c_320]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_14864,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(sK1,sK1,sK1,k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(sK0,sK0,sK0,X0))))) = k2_enumset1(sK0,sK0,sK0,X0) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_857,c_736]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_45389,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(sK0,sK0,sK0,X0))) = k2_enumset1(sK0,sK0,sK0,X0) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_44375,c_14864]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_0,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(X0,X0,X0,X0)) = X0 ),
% 19.72/2.99      inference(cnf_transformation,[],[f50]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_734,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_0,c_4]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_2004,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))))) = k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2)) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_4,c_734]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_2050,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,X1)),k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))))) = k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X2)))) ),
% 19.72/2.99      inference(light_normalisation,[status(thm)],[c_2004,c_4]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_63260,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))))) = k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(sK2,sK2,sK2,k2_enumset1(sK0,sK0,sK0,X1))))) ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_45389,c_2050]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_63659,plain,
% 19.72/2.99      ( k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))))) = k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))) ),
% 19.72/2.99      inference(demodulation,[status(thm)],[c_63260,c_4,c_45389]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_1046,plain,
% 19.72/2.99      ( r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,X1)),X2) = iProver_top
% 19.72/2.99      | r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(X1,X1,X1,X3)))),X2) != iProver_top ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_4,c_321]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_65149,plain,
% 19.72/2.99      ( r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))),X2) != iProver_top
% 19.72/2.99      | r1_tarski(k3_tarski(k2_enumset1(k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),k3_tarski(k2_enumset1(X0,X0,X0,sK2)),X0)),X2) = iProver_top ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_63659,c_1046]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_65271,plain,
% 19.72/2.99      ( r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,k2_enumset1(sK0,sK0,sK0,X1))),X2) != iProver_top
% 19.72/2.99      | r1_tarski(k3_tarski(k2_enumset1(X0,X0,X0,k3_tarski(k2_enumset1(sK2,sK2,sK2,X0)))),X2) = iProver_top ),
% 19.72/2.99      inference(demodulation,[status(thm)],[c_65149,c_4]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_67069,plain,
% 19.72/2.99      ( r1_tarski(k2_enumset1(sK0,sK0,sK0,sK0),X0) != iProver_top
% 19.72/2.99      | r1_tarski(k3_tarski(k2_enumset1(sK2,sK2,sK2,k3_tarski(k2_enumset1(sK2,sK2,sK2,sK2)))),X0) = iProver_top ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_44518,c_65271]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_67082,plain,
% 19.72/2.99      ( r1_tarski(k3_tarski(k2_enumset1(sK2,sK2,sK2,k3_tarski(k2_enumset1(sK2,sK2,sK2,sK2)))),X0) = iProver_top
% 19.72/2.99      | r1_tarski(sK1,X0) != iProver_top ),
% 19.72/2.99      inference(light_normalisation,[status(thm)],[c_67069,c_27281]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_67083,plain,
% 19.72/2.99      ( r1_tarski(k3_tarski(k2_enumset1(sK2,sK2,sK2,sK2)),X0) = iProver_top
% 19.72/2.99      | r1_tarski(sK1,X0) != iProver_top ),
% 19.72/2.99      inference(demodulation,[status(thm)],[c_67082,c_734]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_67084,plain,
% 19.72/2.99      ( r1_tarski(sK1,X0) != iProver_top
% 19.72/2.99      | r1_tarski(sK2,X0) = iProver_top ),
% 19.72/2.99      inference(demodulation,[status(thm)],[c_67083,c_0]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_67524,plain,
% 19.72/2.99      ( r1_tarski(sK2,k2_enumset1(X0,X0,X0,sK0)) = iProver_top ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_1066,c_67084]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_68542,plain,
% 19.72/2.99      ( k2_enumset1(sK0,sK0,sK0,sK0) = sK2 | sK2 = k1_xboole_0 ),
% 19.72/2.99      inference(superposition,[status(thm)],[c_67524,c_317]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_68545,plain,
% 19.72/2.99      ( sK1 = sK2 | sK2 = k1_xboole_0 ),
% 19.72/2.99      inference(demodulation,[status(thm)],[c_68542,c_27281]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_392,plain,
% 19.72/2.99      ( sK2 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK2 ),
% 19.72/2.99      inference(instantiation,[status(thm)],[c_130]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_393,plain,
% 19.72/2.99      ( sK2 != k1_xboole_0
% 19.72/2.99      | k1_xboole_0 = sK2
% 19.72/2.99      | k1_xboole_0 != k1_xboole_0 ),
% 19.72/2.99      inference(instantiation,[status(thm)],[c_392]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_13,negated_conjecture,
% 19.72/2.99      ( k1_xboole_0 != sK2 ),
% 19.72/2.99      inference(cnf_transformation,[],[f46]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(c_15,negated_conjecture,
% 19.72/2.99      ( sK1 != sK2 ),
% 19.72/2.99      inference(cnf_transformation,[],[f44]) ).
% 19.72/2.99  
% 19.72/2.99  cnf(contradiction,plain,
% 19.72/2.99      ( $false ),
% 19.72/2.99      inference(minisat,[status(thm)],[c_68545,c_393,c_138,c_13,c_15]) ).
% 19.72/2.99  
% 19.72/2.99  
% 19.72/2.99  % SZS output end CNFRefutation for theBenchmark.p
% 19.72/2.99  
% 19.72/2.99  ------                               Statistics
% 19.72/2.99  
% 19.72/2.99  ------ General
% 19.72/2.99  
% 19.72/2.99  abstr_ref_over_cycles:                  0
% 19.72/2.99  abstr_ref_under_cycles:                 0
% 19.72/2.99  gc_basic_clause_elim:                   0
% 19.72/2.99  forced_gc_time:                         0
% 19.72/2.99  parsing_time:                           0.008
% 19.72/2.99  unif_index_cands_time:                  0.
% 19.72/2.99  unif_index_add_time:                    0.
% 19.72/2.99  orderings_time:                         0.
% 19.72/2.99  out_proof_time:                         0.01
% 19.72/2.99  total_time:                             2.1
% 19.72/2.99  num_of_symbols:                         35
% 19.72/2.99  num_of_terms:                           86981
% 19.72/2.99  
% 19.72/2.99  ------ Preprocessing
% 19.72/2.99  
% 19.72/2.99  num_of_splits:                          0
% 19.72/2.99  num_of_split_atoms:                     0
% 19.72/2.99  num_of_reused_defs:                     0
% 19.72/2.99  num_eq_ax_congr_red:                    0
% 19.72/2.99  num_of_sem_filtered_clauses:            1
% 19.72/2.99  num_of_subtypes:                        0
% 19.72/2.99  monotx_restored_types:                  0
% 19.72/2.99  sat_num_of_epr_types:                   0
% 19.72/2.99  sat_num_of_non_cyclic_types:            0
% 19.72/2.99  sat_guarded_non_collapsed_types:        0
% 19.72/2.99  num_pure_diseq_elim:                    0
% 19.72/2.99  simp_replaced_by:                       0
% 19.72/2.99  res_preprocessed:                       62
% 19.72/2.99  prep_upred:                             0
% 19.72/2.99  prep_unflattend:                        0
% 19.72/2.99  smt_new_axioms:                         0
% 19.72/2.99  pred_elim_cands:                        1
% 19.72/2.99  pred_elim:                              0
% 19.72/2.99  pred_elim_cl:                           0
% 19.72/2.99  pred_elim_cycles:                       1
% 19.72/2.99  merged_defs:                            0
% 19.72/2.99  merged_defs_ncl:                        0
% 19.72/2.99  bin_hyper_res:                          0
% 19.72/2.99  prep_cycles:                            3
% 19.72/2.99  pred_elim_time:                         0.
% 19.72/2.99  splitting_time:                         0.
% 19.72/2.99  sem_filter_time:                        0.
% 19.72/2.99  monotx_time:                            0.001
% 19.72/2.99  subtype_inf_time:                       0.
% 19.72/2.99  
% 19.72/2.99  ------ Problem properties
% 19.72/2.99  
% 19.72/2.99  clauses:                                17
% 19.72/2.99  conjectures:                            4
% 19.72/2.99  epr:                                    3
% 19.72/2.99  horn:                                   15
% 19.72/2.99  ground:                                 4
% 19.72/2.99  unary:                                  12
% 19.72/2.99  binary:                                 3
% 19.72/2.99  lits:                                   26
% 19.72/2.99  lits_eq:                                13
% 19.72/2.99  fd_pure:                                0
% 19.72/2.99  fd_pseudo:                              0
% 19.72/2.99  fd_cond:                                0
% 19.72/2.99  fd_pseudo_cond:                         2
% 19.72/2.99  ac_symbols:                             0
% 19.72/2.99  
% 19.72/2.99  ------ Propositional Solver
% 19.72/2.99  
% 19.72/2.99  prop_solver_calls:                      26
% 19.72/2.99  prop_fast_solver_calls:                 812
% 19.72/2.99  smt_solver_calls:                       0
% 19.72/2.99  smt_fast_solver_calls:                  0
% 19.72/2.99  prop_num_of_clauses:                    16855
% 19.72/2.99  prop_preprocess_simplified:             27614
% 19.72/2.99  prop_fo_subsumed:                       6
% 19.72/2.99  prop_solver_time:                       0.
% 19.72/2.99  smt_solver_time:                        0.
% 19.72/2.99  smt_fast_solver_time:                   0.
% 19.72/2.99  prop_fast_solver_time:                  0.
% 19.72/2.99  prop_unsat_core_time:                   0.001
% 19.72/2.99  
% 19.72/2.99  ------ QBF
% 19.72/2.99  
% 19.72/2.99  qbf_q_res:                              0
% 19.72/2.99  qbf_num_tautologies:                    0
% 19.72/2.99  qbf_prep_cycles:                        0
% 19.72/2.99  
% 19.72/2.99  ------ BMC1
% 19.72/2.99  
% 19.72/2.99  bmc1_current_bound:                     -1
% 19.72/2.99  bmc1_last_solved_bound:                 -1
% 19.72/2.99  bmc1_unsat_core_size:                   -1
% 19.72/2.99  bmc1_unsat_core_parents_size:           -1
% 19.72/2.99  bmc1_merge_next_fun:                    0
% 19.72/2.99  bmc1_unsat_core_clauses_time:           0.
% 19.72/2.99  
% 19.72/2.99  ------ Instantiation
% 19.72/2.99  
% 19.72/2.99  inst_num_of_clauses:                    3606
% 19.72/2.99  inst_num_in_passive:                    2077
% 19.72/2.99  inst_num_in_active:                     1153
% 19.72/2.99  inst_num_in_unprocessed:                381
% 19.72/2.99  inst_num_of_loops:                      1190
% 19.72/2.99  inst_num_of_learning_restarts:          0
% 19.72/2.99  inst_num_moves_active_passive:          35
% 19.72/2.99  inst_lit_activity:                      0
% 19.72/2.99  inst_lit_activity_moves:                0
% 19.72/2.99  inst_num_tautologies:                   0
% 19.72/2.99  inst_num_prop_implied:                  0
% 19.72/2.99  inst_num_existing_simplified:           0
% 19.72/2.99  inst_num_eq_res_simplified:             0
% 19.72/2.99  inst_num_child_elim:                    0
% 19.72/2.99  inst_num_of_dismatching_blockings:      6906
% 19.72/2.99  inst_num_of_non_proper_insts:           6812
% 19.72/2.99  inst_num_of_duplicates:                 0
% 19.72/2.99  inst_inst_num_from_inst_to_res:         0
% 19.72/2.99  inst_dismatching_checking_time:         0.
% 19.72/2.99  
% 19.72/2.99  ------ Resolution
% 19.72/2.99  
% 19.72/2.99  res_num_of_clauses:                     0
% 19.72/2.99  res_num_in_passive:                     0
% 19.72/2.99  res_num_in_active:                      0
% 19.72/2.99  res_num_of_loops:                       65
% 19.72/2.99  res_forward_subset_subsumed:            464
% 19.72/2.99  res_backward_subset_subsumed:           18
% 19.72/2.99  res_forward_subsumed:                   0
% 19.72/3.00  res_backward_subsumed:                  0
% 19.72/3.00  res_forward_subsumption_resolution:     0
% 19.72/3.00  res_backward_subsumption_resolution:    0
% 19.72/3.00  res_clause_to_clause_subsumption:       30589
% 19.72/3.00  res_orphan_elimination:                 0
% 19.72/3.00  res_tautology_del:                      670
% 19.72/3.00  res_num_eq_res_simplified:              0
% 19.72/3.00  res_num_sel_changes:                    0
% 19.72/3.00  res_moves_from_active_to_pass:          0
% 19.72/3.00  
% 19.72/3.00  ------ Superposition
% 19.72/3.00  
% 19.72/3.00  sup_time_total:                         0.
% 19.72/3.00  sup_time_generating:                    0.
% 19.72/3.00  sup_time_sim_full:                      0.
% 19.72/3.00  sup_time_sim_immed:                     0.
% 19.72/3.00  
% 19.72/3.00  sup_num_of_clauses:                     2328
% 19.72/3.00  sup_num_in_active:                      152
% 19.72/3.00  sup_num_in_passive:                     2176
% 19.72/3.00  sup_num_of_loops:                       237
% 19.72/3.00  sup_fw_superposition:                   4567
% 19.72/3.00  sup_bw_superposition:                   3488
% 19.72/3.00  sup_immediate_simplified:               4681
% 19.72/3.00  sup_given_eliminated:                   0
% 19.72/3.00  comparisons_done:                       0
% 19.72/3.00  comparisons_avoided:                    0
% 19.72/3.00  
% 19.72/3.00  ------ Simplifications
% 19.72/3.00  
% 19.72/3.00  
% 19.72/3.00  sim_fw_subset_subsumed:                 25
% 19.72/3.00  sim_bw_subset_subsumed:                 3
% 19.72/3.00  sim_fw_subsumed:                        1090
% 19.72/3.00  sim_bw_subsumed:                        107
% 19.72/3.00  sim_fw_subsumption_res:                 0
% 19.72/3.00  sim_bw_subsumption_res:                 0
% 19.72/3.00  sim_tautology_del:                      270
% 19.72/3.00  sim_eq_tautology_del:                   338
% 19.72/3.00  sim_eq_res_simp:                        0
% 19.72/3.00  sim_fw_demodulated:                     4363
% 19.72/3.00  sim_bw_demodulated:                     146
% 19.72/3.00  sim_light_normalised:                   1205
% 19.72/3.00  sim_joinable_taut:                      0
% 19.72/3.00  sim_joinable_simp:                      0
% 19.72/3.00  sim_ac_normalised:                      0
% 19.72/3.00  sim_smt_subsumption:                    0
% 19.72/3.00  
%------------------------------------------------------------------------------
