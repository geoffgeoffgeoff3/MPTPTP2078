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
% DateTime   : Thu Dec  3 11:36:09 EST 2020

% Result     : Theorem 2.68s
% Output     : CNFRefutation 2.68s
% Verified   : 
% Statistics : Number of formulae       :   90 ( 404 expanded)
%              Number of clauses        :   38 ( 114 expanded)
%              Number of leaves         :   17 ( 117 expanded)
%              Depth                    :   16
%              Number of atoms          :  158 ( 516 expanded)
%              Number of equality atoms :   91 ( 419 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f3])).

fof(f24,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK1(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f18,f24])).

fof(f32,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f5,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f47,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f29,f34,f34])).

fof(f6,axiom,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f4,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f46,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f33,f34])).

fof(f7,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f14,conjecture,(
    ! [X0,X1] :
      ( k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1)
      <=> r2_hidden(X0,X1) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f21,plain,(
    ? [X0,X1] :
      ( k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1)
    <~> r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f26,plain,(
    ? [X0,X1] :
      ( ( ~ r2_hidden(X0,X1)
        | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1) )
      & ( r2_hidden(X0,X1)
        | k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f27,plain,
    ( ? [X0,X1] :
        ( ( ~ r2_hidden(X0,X1)
          | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1) )
        & ( r2_hidden(X0,X1)
          | k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) ) )
   => ( ( ~ r2_hidden(sK2,sK3)
        | k1_xboole_0 != k4_xboole_0(k1_tarski(sK2),sK3) )
      & ( r2_hidden(sK2,sK3)
        | k1_xboole_0 = k4_xboole_0(k1_tarski(sK2),sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ( ~ r2_hidden(sK2,sK3)
      | k1_xboole_0 != k4_xboole_0(k1_tarski(sK2),sK3) )
    & ( r2_hidden(sK2,sK3)
      | k1_xboole_0 = k4_xboole_0(k1_tarski(sK2),sK3) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f26,f27])).

fof(f43,plain,
    ( r2_hidden(sK2,sK3)
    | k1_xboole_0 = k4_xboole_0(k1_tarski(sK2),sK3) ),
    inference(cnf_transformation,[],[f28])).

fof(f9,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f45,plain,(
    ! [X0] : k1_tarski(X0) = k1_enumset1(X0,X0,X0) ),
    inference(definition_unfolding,[],[f38,f39])).

fof(f54,plain,
    ( r2_hidden(sK2,sK3)
    | k1_xboole_0 = k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) ),
    inference(definition_unfolding,[],[f43,f45])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => k3_xboole_0(X1,k1_tarski(X0)) = k1_tarski(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X1,k1_tarski(X0)) = k1_tarski(X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f41,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X1,k1_tarski(X0)) = k1_tarski(X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f51,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X1,k4_xboole_0(X1,k1_enumset1(X0,X0,X0))) = k1_enumset1(X0,X0,X0)
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f41,f34,f45,f45])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f2])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f22,plain,(
    ! [X1,X0] :
      ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
     => r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f17,f22])).

fof(f31,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ) ),
    inference(definition_unfolding,[],[f31,f34])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
     => r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_tarski(X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f50,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(k1_enumset1(X0,X0,X0),X1)
      | r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f40,f45])).

fof(f44,plain,
    ( ~ r2_hidden(sK2,sK3)
    | k1_xboole_0 != k4_xboole_0(k1_tarski(sK2),sK3) ),
    inference(cnf_transformation,[],[f28])).

fof(f53,plain,
    ( ~ r2_hidden(sK2,sK3)
    | k1_xboole_0 != k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) ),
    inference(definition_unfolding,[],[f44,f45])).

fof(f13,axiom,(
    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1) ),
    inference(cnf_transformation,[],[f13])).

fof(f8,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f52,plain,(
    ! [X0,X1] : k1_xboole_0 != k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(X1,k1_enumset1(X0,X0,X0))) ),
    inference(definition_unfolding,[],[f42,f37,f45])).

cnf(c_4,plain,
    ( r2_hidden(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_545,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_5,plain,
    ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_709,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1,c_5])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_798,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_709,c_0])).

cnf(c_6,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_803,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_798,c_6])).

cnf(c_804,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_803,c_709])).

cnf(c_1297,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k4_xboole_0(X0,X0) ),
    inference(superposition,[status(thm)],[c_804,c_0])).

cnf(c_1300,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1297,c_804])).

cnf(c_1302,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1300,c_803])).

cnf(c_11,negated_conjecture,
    ( r2_hidden(sK2,sK3)
    | k1_xboole_0 = k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_541,plain,
    ( k1_xboole_0 = k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3)
    | r2_hidden(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_8,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_xboole_0(X1,k4_xboole_0(X1,k1_enumset1(X0,X0,X0))) = k1_enumset1(X0,X0,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_543,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k1_enumset1(X1,X1,X1))) = k1_enumset1(X1,X1,X1)
    | r2_hidden(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_897,plain,
    ( k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) = k1_xboole_0
    | k4_xboole_0(sK3,k4_xboole_0(sK3,k1_enumset1(sK2,sK2,sK2))) = k1_enumset1(sK2,sK2,sK2) ),
    inference(superposition,[status(thm)],[c_541,c_543])).

cnf(c_708,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
    inference(superposition,[status(thm)],[c_1,c_0])).

cnf(c_994,plain,
    ( k5_xboole_0(k1_enumset1(sK2,sK2,sK2),k1_enumset1(sK2,sK2,sK2)) = k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3)
    | k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_897,c_708])).

cnf(c_1307,plain,
    ( k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1302,c_994])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2)))
    | ~ r1_xboole_0(X1,X2) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_547,plain,
    ( r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) != iProver_top
    | r1_xboole_0(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1966,plain,
    ( r2_hidden(X0,k4_xboole_0(k1_enumset1(sK2,sK2,sK2),k1_xboole_0)) != iProver_top
    | r1_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1307,c_547])).

cnf(c_1992,plain,
    ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top
    | r1_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1966,c_803])).

cnf(c_7,plain,
    ( r2_hidden(X0,X1)
    | r1_xboole_0(k1_enumset1(X0,X0,X0),X1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_10,negated_conjecture,
    ( ~ r2_hidden(sK2,sK3)
    | k1_xboole_0 != k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_69,plain,
    ( ~ r2_hidden(sK2,sK3)
    | k1_xboole_0 != k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) ),
    inference(prop_impl,[status(thm)],[c_10])).

cnf(c_264,plain,
    ( r1_xboole_0(k1_enumset1(X0,X0,X0),X1)
    | k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != k1_xboole_0
    | sK3 != X1
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_69])).

cnf(c_265,plain,
    ( r1_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3)
    | k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_264])).

cnf(c_266,plain,
    ( k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != k1_xboole_0
    | r1_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_265])).

cnf(c_2521,plain,
    ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1992,c_266,c_1307])).

cnf(c_2528,plain,
    ( k1_enumset1(sK2,sK2,sK2) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_545,c_2521])).

cnf(c_9,plain,
    ( k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(X1,k1_enumset1(X0,X0,X0))) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_899,plain,
    ( k5_xboole_0(k1_enumset1(X0,X0,X0),k1_xboole_0) != k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5,c_9])).

cnf(c_900,plain,
    ( k1_enumset1(X0,X0,X0) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_899,c_6])).

cnf(c_901,plain,
    ( k1_enumset1(sK2,sK2,sK2) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_900])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2528,c_901])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:16:56 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.68/1.02  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.68/1.02  
% 2.68/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.68/1.02  
% 2.68/1.02  ------  iProver source info
% 2.68/1.02  
% 2.68/1.02  git: date: 2020-06-30 10:37:57 +0100
% 2.68/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.68/1.02  git: non_committed_changes: false
% 2.68/1.02  git: last_make_outside_of_git: false
% 2.68/1.02  
% 2.68/1.02  ------ 
% 2.68/1.02  
% 2.68/1.02  ------ Input Options
% 2.68/1.02  
% 2.68/1.02  --out_options                           all
% 2.68/1.02  --tptp_safe_out                         true
% 2.68/1.02  --problem_path                          ""
% 2.68/1.02  --include_path                          ""
% 2.68/1.02  --clausifier                            res/vclausify_rel
% 2.68/1.02  --clausifier_options                    --mode clausify
% 2.68/1.02  --stdin                                 false
% 2.68/1.02  --stats_out                             all
% 2.68/1.02  
% 2.68/1.02  ------ General Options
% 2.68/1.02  
% 2.68/1.02  --fof                                   false
% 2.68/1.02  --time_out_real                         305.
% 2.68/1.02  --time_out_virtual                      -1.
% 2.68/1.02  --symbol_type_check                     false
% 2.68/1.02  --clausify_out                          false
% 2.68/1.02  --sig_cnt_out                           false
% 2.68/1.02  --trig_cnt_out                          false
% 2.68/1.02  --trig_cnt_out_tolerance                1.
% 2.68/1.02  --trig_cnt_out_sk_spl                   false
% 2.68/1.02  --abstr_cl_out                          false
% 2.68/1.02  
% 2.68/1.02  ------ Global Options
% 2.68/1.02  
% 2.68/1.02  --schedule                              default
% 2.68/1.02  --add_important_lit                     false
% 2.68/1.02  --prop_solver_per_cl                    1000
% 2.68/1.02  --min_unsat_core                        false
% 2.68/1.02  --soft_assumptions                      false
% 2.68/1.02  --soft_lemma_size                       3
% 2.68/1.02  --prop_impl_unit_size                   0
% 2.68/1.02  --prop_impl_unit                        []
% 2.68/1.02  --share_sel_clauses                     true
% 2.68/1.02  --reset_solvers                         false
% 2.68/1.02  --bc_imp_inh                            [conj_cone]
% 2.68/1.02  --conj_cone_tolerance                   3.
% 2.68/1.02  --extra_neg_conj                        none
% 2.68/1.02  --large_theory_mode                     true
% 2.68/1.02  --prolific_symb_bound                   200
% 2.68/1.02  --lt_threshold                          2000
% 2.68/1.02  --clause_weak_htbl                      true
% 2.68/1.02  --gc_record_bc_elim                     false
% 2.68/1.02  
% 2.68/1.02  ------ Preprocessing Options
% 2.68/1.02  
% 2.68/1.02  --preprocessing_flag                    true
% 2.68/1.02  --time_out_prep_mult                    0.1
% 2.68/1.02  --splitting_mode                        input
% 2.68/1.02  --splitting_grd                         true
% 2.68/1.02  --splitting_cvd                         false
% 2.68/1.02  --splitting_cvd_svl                     false
% 2.68/1.02  --splitting_nvd                         32
% 2.68/1.02  --sub_typing                            true
% 2.68/1.02  --prep_gs_sim                           true
% 2.68/1.02  --prep_unflatten                        true
% 2.68/1.02  --prep_res_sim                          true
% 2.68/1.02  --prep_upred                            true
% 2.68/1.02  --prep_sem_filter                       exhaustive
% 2.68/1.02  --prep_sem_filter_out                   false
% 2.68/1.02  --pred_elim                             true
% 2.68/1.02  --res_sim_input                         true
% 2.68/1.02  --eq_ax_congr_red                       true
% 2.68/1.02  --pure_diseq_elim                       true
% 2.68/1.02  --brand_transform                       false
% 2.68/1.02  --non_eq_to_eq                          false
% 2.68/1.02  --prep_def_merge                        true
% 2.68/1.02  --prep_def_merge_prop_impl              false
% 2.68/1.02  --prep_def_merge_mbd                    true
% 2.68/1.02  --prep_def_merge_tr_red                 false
% 2.68/1.02  --prep_def_merge_tr_cl                  false
% 2.68/1.02  --smt_preprocessing                     true
% 2.68/1.02  --smt_ac_axioms                         fast
% 2.68/1.02  --preprocessed_out                      false
% 2.68/1.02  --preprocessed_stats                    false
% 2.68/1.02  
% 2.68/1.02  ------ Abstraction refinement Options
% 2.68/1.02  
% 2.68/1.02  --abstr_ref                             []
% 2.68/1.02  --abstr_ref_prep                        false
% 2.68/1.02  --abstr_ref_until_sat                   false
% 2.68/1.02  --abstr_ref_sig_restrict                funpre
% 2.68/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 2.68/1.02  --abstr_ref_under                       []
% 2.68/1.02  
% 2.68/1.02  ------ SAT Options
% 2.68/1.02  
% 2.68/1.02  --sat_mode                              false
% 2.68/1.02  --sat_fm_restart_options                ""
% 2.68/1.02  --sat_gr_def                            false
% 2.68/1.02  --sat_epr_types                         true
% 2.68/1.02  --sat_non_cyclic_types                  false
% 2.68/1.02  --sat_finite_models                     false
% 2.68/1.02  --sat_fm_lemmas                         false
% 2.68/1.02  --sat_fm_prep                           false
% 2.68/1.02  --sat_fm_uc_incr                        true
% 2.68/1.02  --sat_out_model                         small
% 2.68/1.02  --sat_out_clauses                       false
% 2.68/1.02  
% 2.68/1.02  ------ QBF Options
% 2.68/1.02  
% 2.68/1.02  --qbf_mode                              false
% 2.68/1.02  --qbf_elim_univ                         false
% 2.68/1.02  --qbf_dom_inst                          none
% 2.68/1.02  --qbf_dom_pre_inst                      false
% 2.68/1.02  --qbf_sk_in                             false
% 2.68/1.02  --qbf_pred_elim                         true
% 2.68/1.02  --qbf_split                             512
% 2.68/1.02  
% 2.68/1.02  ------ BMC1 Options
% 2.68/1.02  
% 2.68/1.02  --bmc1_incremental                      false
% 2.68/1.02  --bmc1_axioms                           reachable_all
% 2.68/1.02  --bmc1_min_bound                        0
% 2.68/1.02  --bmc1_max_bound                        -1
% 2.68/1.02  --bmc1_max_bound_default                -1
% 2.68/1.02  --bmc1_symbol_reachability              true
% 2.68/1.02  --bmc1_property_lemmas                  false
% 2.68/1.02  --bmc1_k_induction                      false
% 2.68/1.02  --bmc1_non_equiv_states                 false
% 2.68/1.02  --bmc1_deadlock                         false
% 2.68/1.02  --bmc1_ucm                              false
% 2.68/1.02  --bmc1_add_unsat_core                   none
% 2.68/1.02  --bmc1_unsat_core_children              false
% 2.68/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 2.68/1.02  --bmc1_out_stat                         full
% 2.68/1.02  --bmc1_ground_init                      false
% 2.68/1.02  --bmc1_pre_inst_next_state              false
% 2.68/1.02  --bmc1_pre_inst_state                   false
% 2.68/1.02  --bmc1_pre_inst_reach_state             false
% 2.68/1.02  --bmc1_out_unsat_core                   false
% 2.68/1.02  --bmc1_aig_witness_out                  false
% 2.68/1.02  --bmc1_verbose                          false
% 2.68/1.02  --bmc1_dump_clauses_tptp                false
% 2.68/1.02  --bmc1_dump_unsat_core_tptp             false
% 2.68/1.02  --bmc1_dump_file                        -
% 2.68/1.02  --bmc1_ucm_expand_uc_limit              128
% 2.68/1.02  --bmc1_ucm_n_expand_iterations          6
% 2.68/1.02  --bmc1_ucm_extend_mode                  1
% 2.68/1.02  --bmc1_ucm_init_mode                    2
% 2.68/1.02  --bmc1_ucm_cone_mode                    none
% 2.68/1.02  --bmc1_ucm_reduced_relation_type        0
% 2.68/1.02  --bmc1_ucm_relax_model                  4
% 2.68/1.02  --bmc1_ucm_full_tr_after_sat            true
% 2.68/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 2.68/1.02  --bmc1_ucm_layered_model                none
% 2.68/1.02  --bmc1_ucm_max_lemma_size               10
% 2.68/1.02  
% 2.68/1.02  ------ AIG Options
% 2.68/1.02  
% 2.68/1.02  --aig_mode                              false
% 2.68/1.02  
% 2.68/1.02  ------ Instantiation Options
% 2.68/1.02  
% 2.68/1.02  --instantiation_flag                    true
% 2.68/1.02  --inst_sos_flag                         false
% 2.68/1.02  --inst_sos_phase                        true
% 2.68/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.68/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.68/1.02  --inst_lit_sel_side                     num_symb
% 2.68/1.02  --inst_solver_per_active                1400
% 2.68/1.02  --inst_solver_calls_frac                1.
% 2.68/1.02  --inst_passive_queue_type               priority_queues
% 2.68/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.68/1.02  --inst_passive_queues_freq              [25;2]
% 2.68/1.02  --inst_dismatching                      true
% 2.68/1.02  --inst_eager_unprocessed_to_passive     true
% 2.68/1.02  --inst_prop_sim_given                   true
% 2.68/1.02  --inst_prop_sim_new                     false
% 2.68/1.02  --inst_subs_new                         false
% 2.68/1.02  --inst_eq_res_simp                      false
% 2.68/1.02  --inst_subs_given                       false
% 2.68/1.02  --inst_orphan_elimination               true
% 2.68/1.02  --inst_learning_loop_flag               true
% 2.68/1.02  --inst_learning_start                   3000
% 2.68/1.02  --inst_learning_factor                  2
% 2.68/1.02  --inst_start_prop_sim_after_learn       3
% 2.68/1.02  --inst_sel_renew                        solver
% 2.68/1.02  --inst_lit_activity_flag                true
% 2.68/1.02  --inst_restr_to_given                   false
% 2.68/1.02  --inst_activity_threshold               500
% 2.68/1.02  --inst_out_proof                        true
% 2.68/1.02  
% 2.68/1.02  ------ Resolution Options
% 2.68/1.02  
% 2.68/1.02  --resolution_flag                       true
% 2.68/1.02  --res_lit_sel                           adaptive
% 2.68/1.02  --res_lit_sel_side                      none
% 2.68/1.02  --res_ordering                          kbo
% 2.68/1.02  --res_to_prop_solver                    active
% 2.68/1.02  --res_prop_simpl_new                    false
% 2.68/1.02  --res_prop_simpl_given                  true
% 2.68/1.02  --res_passive_queue_type                priority_queues
% 2.68/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.68/1.02  --res_passive_queues_freq               [15;5]
% 2.68/1.02  --res_forward_subs                      full
% 2.68/1.02  --res_backward_subs                     full
% 2.68/1.02  --res_forward_subs_resolution           true
% 2.68/1.02  --res_backward_subs_resolution          true
% 2.68/1.02  --res_orphan_elimination                true
% 2.68/1.02  --res_time_limit                        2.
% 2.68/1.02  --res_out_proof                         true
% 2.68/1.02  
% 2.68/1.02  ------ Superposition Options
% 2.68/1.02  
% 2.68/1.02  --superposition_flag                    true
% 2.68/1.02  --sup_passive_queue_type                priority_queues
% 2.68/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.68/1.02  --sup_passive_queues_freq               [8;1;4]
% 2.68/1.02  --demod_completeness_check              fast
% 2.68/1.02  --demod_use_ground                      true
% 2.68/1.02  --sup_to_prop_solver                    passive
% 2.68/1.02  --sup_prop_simpl_new                    true
% 2.68/1.02  --sup_prop_simpl_given                  true
% 2.68/1.02  --sup_fun_splitting                     false
% 2.68/1.02  --sup_smt_interval                      50000
% 2.68/1.02  
% 2.68/1.02  ------ Superposition Simplification Setup
% 2.68/1.02  
% 2.68/1.02  --sup_indices_passive                   []
% 2.68/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 2.68/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/1.02  --sup_full_bw                           [BwDemod]
% 2.68/1.02  --sup_immed_triv                        [TrivRules]
% 2.68/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.68/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/1.02  --sup_immed_bw_main                     []
% 2.68/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.68/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 2.68/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.68/1.02  
% 2.68/1.02  ------ Combination Options
% 2.68/1.02  
% 2.68/1.02  --comb_res_mult                         3
% 2.68/1.02  --comb_sup_mult                         2
% 2.68/1.02  --comb_inst_mult                        10
% 2.68/1.02  
% 2.68/1.02  ------ Debug Options
% 2.68/1.02  
% 2.68/1.02  --dbg_backtrace                         false
% 2.68/1.02  --dbg_dump_prop_clauses                 false
% 2.68/1.02  --dbg_dump_prop_clauses_file            -
% 2.68/1.02  --dbg_out_stat                          false
% 2.68/1.02  ------ Parsing...
% 2.68/1.02  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.68/1.02  
% 2.68/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.68/1.02  
% 2.68/1.02  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.68/1.02  
% 2.68/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.68/1.02  ------ Proving...
% 2.68/1.02  ------ Problem Properties 
% 2.68/1.02  
% 2.68/1.02  
% 2.68/1.02  clauses                                 12
% 2.68/1.02  conjectures                             2
% 2.68/1.02  EPR                                     0
% 2.68/1.02  Horn                                    8
% 2.68/1.02  unary                                   5
% 2.68/1.02  binary                                  7
% 2.68/1.02  lits                                    19
% 2.68/1.02  lits eq                                 9
% 2.68/1.02  fd_pure                                 0
% 2.68/1.02  fd_pseudo                               0
% 2.68/1.02  fd_cond                                 1
% 2.68/1.02  fd_pseudo_cond                          0
% 2.68/1.02  AC symbols                              0
% 2.68/1.02  
% 2.68/1.02  ------ Schedule dynamic 5 is on 
% 2.68/1.02  
% 2.68/1.02  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.68/1.02  
% 2.68/1.02  
% 2.68/1.02  ------ 
% 2.68/1.02  Current options:
% 2.68/1.02  ------ 
% 2.68/1.02  
% 2.68/1.02  ------ Input Options
% 2.68/1.02  
% 2.68/1.02  --out_options                           all
% 2.68/1.02  --tptp_safe_out                         true
% 2.68/1.02  --problem_path                          ""
% 2.68/1.02  --include_path                          ""
% 2.68/1.02  --clausifier                            res/vclausify_rel
% 2.68/1.02  --clausifier_options                    --mode clausify
% 2.68/1.02  --stdin                                 false
% 2.68/1.02  --stats_out                             all
% 2.68/1.02  
% 2.68/1.02  ------ General Options
% 2.68/1.02  
% 2.68/1.02  --fof                                   false
% 2.68/1.02  --time_out_real                         305.
% 2.68/1.02  --time_out_virtual                      -1.
% 2.68/1.02  --symbol_type_check                     false
% 2.68/1.02  --clausify_out                          false
% 2.68/1.02  --sig_cnt_out                           false
% 2.68/1.02  --trig_cnt_out                          false
% 2.68/1.02  --trig_cnt_out_tolerance                1.
% 2.68/1.02  --trig_cnt_out_sk_spl                   false
% 2.68/1.02  --abstr_cl_out                          false
% 2.68/1.02  
% 2.68/1.02  ------ Global Options
% 2.68/1.02  
% 2.68/1.02  --schedule                              default
% 2.68/1.02  --add_important_lit                     false
% 2.68/1.02  --prop_solver_per_cl                    1000
% 2.68/1.02  --min_unsat_core                        false
% 2.68/1.02  --soft_assumptions                      false
% 2.68/1.02  --soft_lemma_size                       3
% 2.68/1.02  --prop_impl_unit_size                   0
% 2.68/1.02  --prop_impl_unit                        []
% 2.68/1.02  --share_sel_clauses                     true
% 2.68/1.02  --reset_solvers                         false
% 2.68/1.02  --bc_imp_inh                            [conj_cone]
% 2.68/1.02  --conj_cone_tolerance                   3.
% 2.68/1.02  --extra_neg_conj                        none
% 2.68/1.02  --large_theory_mode                     true
% 2.68/1.02  --prolific_symb_bound                   200
% 2.68/1.02  --lt_threshold                          2000
% 2.68/1.02  --clause_weak_htbl                      true
% 2.68/1.02  --gc_record_bc_elim                     false
% 2.68/1.02  
% 2.68/1.02  ------ Preprocessing Options
% 2.68/1.02  
% 2.68/1.02  --preprocessing_flag                    true
% 2.68/1.02  --time_out_prep_mult                    0.1
% 2.68/1.02  --splitting_mode                        input
% 2.68/1.02  --splitting_grd                         true
% 2.68/1.02  --splitting_cvd                         false
% 2.68/1.02  --splitting_cvd_svl                     false
% 2.68/1.02  --splitting_nvd                         32
% 2.68/1.02  --sub_typing                            true
% 2.68/1.02  --prep_gs_sim                           true
% 2.68/1.02  --prep_unflatten                        true
% 2.68/1.02  --prep_res_sim                          true
% 2.68/1.02  --prep_upred                            true
% 2.68/1.02  --prep_sem_filter                       exhaustive
% 2.68/1.02  --prep_sem_filter_out                   false
% 2.68/1.02  --pred_elim                             true
% 2.68/1.02  --res_sim_input                         true
% 2.68/1.02  --eq_ax_congr_red                       true
% 2.68/1.02  --pure_diseq_elim                       true
% 2.68/1.02  --brand_transform                       false
% 2.68/1.02  --non_eq_to_eq                          false
% 2.68/1.02  --prep_def_merge                        true
% 2.68/1.02  --prep_def_merge_prop_impl              false
% 2.68/1.02  --prep_def_merge_mbd                    true
% 2.68/1.02  --prep_def_merge_tr_red                 false
% 2.68/1.02  --prep_def_merge_tr_cl                  false
% 2.68/1.02  --smt_preprocessing                     true
% 2.68/1.02  --smt_ac_axioms                         fast
% 2.68/1.02  --preprocessed_out                      false
% 2.68/1.02  --preprocessed_stats                    false
% 2.68/1.02  
% 2.68/1.02  ------ Abstraction refinement Options
% 2.68/1.02  
% 2.68/1.02  --abstr_ref                             []
% 2.68/1.02  --abstr_ref_prep                        false
% 2.68/1.02  --abstr_ref_until_sat                   false
% 2.68/1.02  --abstr_ref_sig_restrict                funpre
% 2.68/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 2.68/1.02  --abstr_ref_under                       []
% 2.68/1.02  
% 2.68/1.02  ------ SAT Options
% 2.68/1.02  
% 2.68/1.02  --sat_mode                              false
% 2.68/1.02  --sat_fm_restart_options                ""
% 2.68/1.02  --sat_gr_def                            false
% 2.68/1.02  --sat_epr_types                         true
% 2.68/1.02  --sat_non_cyclic_types                  false
% 2.68/1.02  --sat_finite_models                     false
% 2.68/1.02  --sat_fm_lemmas                         false
% 2.68/1.02  --sat_fm_prep                           false
% 2.68/1.02  --sat_fm_uc_incr                        true
% 2.68/1.02  --sat_out_model                         small
% 2.68/1.02  --sat_out_clauses                       false
% 2.68/1.02  
% 2.68/1.02  ------ QBF Options
% 2.68/1.02  
% 2.68/1.02  --qbf_mode                              false
% 2.68/1.02  --qbf_elim_univ                         false
% 2.68/1.02  --qbf_dom_inst                          none
% 2.68/1.02  --qbf_dom_pre_inst                      false
% 2.68/1.02  --qbf_sk_in                             false
% 2.68/1.02  --qbf_pred_elim                         true
% 2.68/1.02  --qbf_split                             512
% 2.68/1.02  
% 2.68/1.02  ------ BMC1 Options
% 2.68/1.02  
% 2.68/1.02  --bmc1_incremental                      false
% 2.68/1.02  --bmc1_axioms                           reachable_all
% 2.68/1.02  --bmc1_min_bound                        0
% 2.68/1.02  --bmc1_max_bound                        -1
% 2.68/1.02  --bmc1_max_bound_default                -1
% 2.68/1.02  --bmc1_symbol_reachability              true
% 2.68/1.02  --bmc1_property_lemmas                  false
% 2.68/1.02  --bmc1_k_induction                      false
% 2.68/1.02  --bmc1_non_equiv_states                 false
% 2.68/1.02  --bmc1_deadlock                         false
% 2.68/1.02  --bmc1_ucm                              false
% 2.68/1.02  --bmc1_add_unsat_core                   none
% 2.68/1.02  --bmc1_unsat_core_children              false
% 2.68/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 2.68/1.02  --bmc1_out_stat                         full
% 2.68/1.02  --bmc1_ground_init                      false
% 2.68/1.02  --bmc1_pre_inst_next_state              false
% 2.68/1.02  --bmc1_pre_inst_state                   false
% 2.68/1.02  --bmc1_pre_inst_reach_state             false
% 2.68/1.02  --bmc1_out_unsat_core                   false
% 2.68/1.02  --bmc1_aig_witness_out                  false
% 2.68/1.02  --bmc1_verbose                          false
% 2.68/1.02  --bmc1_dump_clauses_tptp                false
% 2.68/1.02  --bmc1_dump_unsat_core_tptp             false
% 2.68/1.02  --bmc1_dump_file                        -
% 2.68/1.02  --bmc1_ucm_expand_uc_limit              128
% 2.68/1.02  --bmc1_ucm_n_expand_iterations          6
% 2.68/1.02  --bmc1_ucm_extend_mode                  1
% 2.68/1.02  --bmc1_ucm_init_mode                    2
% 2.68/1.02  --bmc1_ucm_cone_mode                    none
% 2.68/1.02  --bmc1_ucm_reduced_relation_type        0
% 2.68/1.02  --bmc1_ucm_relax_model                  4
% 2.68/1.02  --bmc1_ucm_full_tr_after_sat            true
% 2.68/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 2.68/1.02  --bmc1_ucm_layered_model                none
% 2.68/1.02  --bmc1_ucm_max_lemma_size               10
% 2.68/1.02  
% 2.68/1.02  ------ AIG Options
% 2.68/1.02  
% 2.68/1.02  --aig_mode                              false
% 2.68/1.02  
% 2.68/1.02  ------ Instantiation Options
% 2.68/1.02  
% 2.68/1.02  --instantiation_flag                    true
% 2.68/1.02  --inst_sos_flag                         false
% 2.68/1.02  --inst_sos_phase                        true
% 2.68/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.68/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.68/1.02  --inst_lit_sel_side                     none
% 2.68/1.02  --inst_solver_per_active                1400
% 2.68/1.02  --inst_solver_calls_frac                1.
% 2.68/1.02  --inst_passive_queue_type               priority_queues
% 2.68/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.68/1.02  --inst_passive_queues_freq              [25;2]
% 2.68/1.02  --inst_dismatching                      true
% 2.68/1.02  --inst_eager_unprocessed_to_passive     true
% 2.68/1.02  --inst_prop_sim_given                   true
% 2.68/1.02  --inst_prop_sim_new                     false
% 2.68/1.02  --inst_subs_new                         false
% 2.68/1.02  --inst_eq_res_simp                      false
% 2.68/1.02  --inst_subs_given                       false
% 2.68/1.02  --inst_orphan_elimination               true
% 2.68/1.02  --inst_learning_loop_flag               true
% 2.68/1.02  --inst_learning_start                   3000
% 2.68/1.02  --inst_learning_factor                  2
% 2.68/1.02  --inst_start_prop_sim_after_learn       3
% 2.68/1.02  --inst_sel_renew                        solver
% 2.68/1.02  --inst_lit_activity_flag                true
% 2.68/1.02  --inst_restr_to_given                   false
% 2.68/1.02  --inst_activity_threshold               500
% 2.68/1.02  --inst_out_proof                        true
% 2.68/1.02  
% 2.68/1.02  ------ Resolution Options
% 2.68/1.02  
% 2.68/1.02  --resolution_flag                       false
% 2.68/1.02  --res_lit_sel                           adaptive
% 2.68/1.02  --res_lit_sel_side                      none
% 2.68/1.02  --res_ordering                          kbo
% 2.68/1.02  --res_to_prop_solver                    active
% 2.68/1.02  --res_prop_simpl_new                    false
% 2.68/1.02  --res_prop_simpl_given                  true
% 2.68/1.02  --res_passive_queue_type                priority_queues
% 2.68/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.68/1.02  --res_passive_queues_freq               [15;5]
% 2.68/1.02  --res_forward_subs                      full
% 2.68/1.02  --res_backward_subs                     full
% 2.68/1.02  --res_forward_subs_resolution           true
% 2.68/1.02  --res_backward_subs_resolution          true
% 2.68/1.02  --res_orphan_elimination                true
% 2.68/1.02  --res_time_limit                        2.
% 2.68/1.02  --res_out_proof                         true
% 2.68/1.02  
% 2.68/1.02  ------ Superposition Options
% 2.68/1.02  
% 2.68/1.02  --superposition_flag                    true
% 2.68/1.02  --sup_passive_queue_type                priority_queues
% 2.68/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.68/1.02  --sup_passive_queues_freq               [8;1;4]
% 2.68/1.02  --demod_completeness_check              fast
% 2.68/1.02  --demod_use_ground                      true
% 2.68/1.02  --sup_to_prop_solver                    passive
% 2.68/1.02  --sup_prop_simpl_new                    true
% 2.68/1.02  --sup_prop_simpl_given                  true
% 2.68/1.02  --sup_fun_splitting                     false
% 2.68/1.02  --sup_smt_interval                      50000
% 2.68/1.02  
% 2.68/1.02  ------ Superposition Simplification Setup
% 2.68/1.02  
% 2.68/1.02  --sup_indices_passive                   []
% 2.68/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.68/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 2.68/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/1.02  --sup_full_bw                           [BwDemod]
% 2.68/1.02  --sup_immed_triv                        [TrivRules]
% 2.68/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.68/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/1.02  --sup_immed_bw_main                     []
% 2.68/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.68/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 2.68/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.68/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.68/1.02  
% 2.68/1.02  ------ Combination Options
% 2.68/1.02  
% 2.68/1.02  --comb_res_mult                         3
% 2.68/1.02  --comb_sup_mult                         2
% 2.68/1.02  --comb_inst_mult                        10
% 2.68/1.02  
% 2.68/1.02  ------ Debug Options
% 2.68/1.02  
% 2.68/1.02  --dbg_backtrace                         false
% 2.68/1.02  --dbg_dump_prop_clauses                 false
% 2.68/1.02  --dbg_dump_prop_clauses_file            -
% 2.68/1.02  --dbg_out_stat                          false
% 2.68/1.02  
% 2.68/1.02  
% 2.68/1.02  
% 2.68/1.02  
% 2.68/1.02  ------ Proving...
% 2.68/1.02  
% 2.68/1.02  
% 2.68/1.02  % SZS status Theorem for theBenchmark.p
% 2.68/1.02  
% 2.68/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 2.68/1.02  
% 2.68/1.02  fof(f3,axiom,(
% 2.68/1.02    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f18,plain,(
% 2.68/1.02    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 2.68/1.02    inference(ennf_transformation,[],[f3])).
% 2.68/1.02  
% 2.68/1.02  fof(f24,plain,(
% 2.68/1.02    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK1(X0),X0))),
% 2.68/1.02    introduced(choice_axiom,[])).
% 2.68/1.02  
% 2.68/1.02  fof(f25,plain,(
% 2.68/1.02    ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0)),
% 2.68/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f18,f24])).
% 2.68/1.02  
% 2.68/1.02  fof(f32,plain,(
% 2.68/1.02    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 2.68/1.02    inference(cnf_transformation,[],[f25])).
% 2.68/1.02  
% 2.68/1.02  fof(f1,axiom,(
% 2.68/1.02    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f29,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 2.68/1.02    inference(cnf_transformation,[],[f1])).
% 2.68/1.02  
% 2.68/1.02  fof(f5,axiom,(
% 2.68/1.02    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f34,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 2.68/1.02    inference(cnf_transformation,[],[f5])).
% 2.68/1.02  
% 2.68/1.02  fof(f47,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 2.68/1.02    inference(definition_unfolding,[],[f29,f34,f34])).
% 2.68/1.02  
% 2.68/1.02  fof(f6,axiom,(
% 2.68/1.02    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f35,plain,(
% 2.68/1.02    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 2.68/1.02    inference(cnf_transformation,[],[f6])).
% 2.68/1.02  
% 2.68/1.02  fof(f4,axiom,(
% 2.68/1.02    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f33,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 2.68/1.02    inference(cnf_transformation,[],[f4])).
% 2.68/1.02  
% 2.68/1.02  fof(f46,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 2.68/1.02    inference(definition_unfolding,[],[f33,f34])).
% 2.68/1.02  
% 2.68/1.02  fof(f7,axiom,(
% 2.68/1.02    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f36,plain,(
% 2.68/1.02    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 2.68/1.02    inference(cnf_transformation,[],[f7])).
% 2.68/1.02  
% 2.68/1.02  fof(f14,conjecture,(
% 2.68/1.02    ! [X0,X1] : (k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f15,negated_conjecture,(
% 2.68/1.02    ~! [X0,X1] : (k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 2.68/1.02    inference(negated_conjecture,[],[f14])).
% 2.68/1.02  
% 2.68/1.02  fof(f21,plain,(
% 2.68/1.02    ? [X0,X1] : (k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1) <~> r2_hidden(X0,X1))),
% 2.68/1.02    inference(ennf_transformation,[],[f15])).
% 2.68/1.02  
% 2.68/1.02  fof(f26,plain,(
% 2.68/1.02    ? [X0,X1] : ((~r2_hidden(X0,X1) | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1)) & (r2_hidden(X0,X1) | k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1)))),
% 2.68/1.02    inference(nnf_transformation,[],[f21])).
% 2.68/1.02  
% 2.68/1.02  fof(f27,plain,(
% 2.68/1.02    ? [X0,X1] : ((~r2_hidden(X0,X1) | k1_xboole_0 != k4_xboole_0(k1_tarski(X0),X1)) & (r2_hidden(X0,X1) | k1_xboole_0 = k4_xboole_0(k1_tarski(X0),X1))) => ((~r2_hidden(sK2,sK3) | k1_xboole_0 != k4_xboole_0(k1_tarski(sK2),sK3)) & (r2_hidden(sK2,sK3) | k1_xboole_0 = k4_xboole_0(k1_tarski(sK2),sK3)))),
% 2.68/1.02    introduced(choice_axiom,[])).
% 2.68/1.02  
% 2.68/1.02  fof(f28,plain,(
% 2.68/1.02    (~r2_hidden(sK2,sK3) | k1_xboole_0 != k4_xboole_0(k1_tarski(sK2),sK3)) & (r2_hidden(sK2,sK3) | k1_xboole_0 = k4_xboole_0(k1_tarski(sK2),sK3))),
% 2.68/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f26,f27])).
% 2.68/1.02  
% 2.68/1.02  fof(f43,plain,(
% 2.68/1.02    r2_hidden(sK2,sK3) | k1_xboole_0 = k4_xboole_0(k1_tarski(sK2),sK3)),
% 2.68/1.02    inference(cnf_transformation,[],[f28])).
% 2.68/1.02  
% 2.68/1.02  fof(f9,axiom,(
% 2.68/1.02    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f38,plain,(
% 2.68/1.02    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.68/1.02    inference(cnf_transformation,[],[f9])).
% 2.68/1.02  
% 2.68/1.02  fof(f10,axiom,(
% 2.68/1.02    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f39,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 2.68/1.02    inference(cnf_transformation,[],[f10])).
% 2.68/1.02  
% 2.68/1.02  fof(f45,plain,(
% 2.68/1.02    ( ! [X0] : (k1_tarski(X0) = k1_enumset1(X0,X0,X0)) )),
% 2.68/1.02    inference(definition_unfolding,[],[f38,f39])).
% 2.68/1.02  
% 2.68/1.02  fof(f54,plain,(
% 2.68/1.02    r2_hidden(sK2,sK3) | k1_xboole_0 = k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3)),
% 2.68/1.02    inference(definition_unfolding,[],[f43,f45])).
% 2.68/1.02  
% 2.68/1.02  fof(f12,axiom,(
% 2.68/1.02    ! [X0,X1] : (r2_hidden(X0,X1) => k3_xboole_0(X1,k1_tarski(X0)) = k1_tarski(X0))),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f20,plain,(
% 2.68/1.02    ! [X0,X1] : (k3_xboole_0(X1,k1_tarski(X0)) = k1_tarski(X0) | ~r2_hidden(X0,X1))),
% 2.68/1.02    inference(ennf_transformation,[],[f12])).
% 2.68/1.02  
% 2.68/1.02  fof(f41,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k3_xboole_0(X1,k1_tarski(X0)) = k1_tarski(X0) | ~r2_hidden(X0,X1)) )),
% 2.68/1.02    inference(cnf_transformation,[],[f20])).
% 2.68/1.02  
% 2.68/1.02  fof(f51,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k4_xboole_0(X1,k4_xboole_0(X1,k1_enumset1(X0,X0,X0))) = k1_enumset1(X0,X0,X0) | ~r2_hidden(X0,X1)) )),
% 2.68/1.02    inference(definition_unfolding,[],[f41,f34,f45,f45])).
% 2.68/1.02  
% 2.68/1.02  fof(f2,axiom,(
% 2.68/1.02    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f16,plain,(
% 2.68/1.02    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 2.68/1.02    inference(rectify,[],[f2])).
% 2.68/1.02  
% 2.68/1.02  fof(f17,plain,(
% 2.68/1.02    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 2.68/1.02    inference(ennf_transformation,[],[f16])).
% 2.68/1.02  
% 2.68/1.02  fof(f22,plain,(
% 2.68/1.02    ! [X1,X0] : (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) => r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)))),
% 2.68/1.02    introduced(choice_axiom,[])).
% 2.68/1.02  
% 2.68/1.02  fof(f23,plain,(
% 2.68/1.02    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (r2_hidden(sK0(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 2.68/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f17,f22])).
% 2.68/1.02  
% 2.68/1.02  fof(f31,plain,(
% 2.68/1.02    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k3_xboole_0(X0,X1))) )),
% 2.68/1.02    inference(cnf_transformation,[],[f23])).
% 2.68/1.02  
% 2.68/1.02  fof(f48,plain,(
% 2.68/1.02    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 2.68/1.02    inference(definition_unfolding,[],[f31,f34])).
% 2.68/1.02  
% 2.68/1.02  fof(f11,axiom,(
% 2.68/1.02    ! [X0,X1] : (~r2_hidden(X0,X1) => r1_xboole_0(k1_tarski(X0),X1))),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f19,plain,(
% 2.68/1.02    ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1))),
% 2.68/1.02    inference(ennf_transformation,[],[f11])).
% 2.68/1.02  
% 2.68/1.02  fof(f40,plain,(
% 2.68/1.02    ( ! [X0,X1] : (r1_xboole_0(k1_tarski(X0),X1) | r2_hidden(X0,X1)) )),
% 2.68/1.02    inference(cnf_transformation,[],[f19])).
% 2.68/1.02  
% 2.68/1.02  fof(f50,plain,(
% 2.68/1.02    ( ! [X0,X1] : (r1_xboole_0(k1_enumset1(X0,X0,X0),X1) | r2_hidden(X0,X1)) )),
% 2.68/1.02    inference(definition_unfolding,[],[f40,f45])).
% 2.68/1.02  
% 2.68/1.02  fof(f44,plain,(
% 2.68/1.02    ~r2_hidden(sK2,sK3) | k1_xboole_0 != k4_xboole_0(k1_tarski(sK2),sK3)),
% 2.68/1.02    inference(cnf_transformation,[],[f28])).
% 2.68/1.02  
% 2.68/1.02  fof(f53,plain,(
% 2.68/1.02    ~r2_hidden(sK2,sK3) | k1_xboole_0 != k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3)),
% 2.68/1.02    inference(definition_unfolding,[],[f44,f45])).
% 2.68/1.02  
% 2.68/1.02  fof(f13,axiom,(
% 2.68/1.02    ! [X0,X1] : k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f42,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k1_xboole_0 != k2_xboole_0(k1_tarski(X0),X1)) )),
% 2.68/1.02    inference(cnf_transformation,[],[f13])).
% 2.68/1.02  
% 2.68/1.02  fof(f8,axiom,(
% 2.68/1.02    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 2.68/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.68/1.02  
% 2.68/1.02  fof(f37,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 2.68/1.02    inference(cnf_transformation,[],[f8])).
% 2.68/1.02  
% 2.68/1.02  fof(f52,plain,(
% 2.68/1.02    ( ! [X0,X1] : (k1_xboole_0 != k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(X1,k1_enumset1(X0,X0,X0)))) )),
% 2.68/1.02    inference(definition_unfolding,[],[f42,f37,f45])).
% 2.68/1.02  
% 2.68/1.02  cnf(c_4,plain,
% 2.68/1.02      ( r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 2.68/1.02      inference(cnf_transformation,[],[f32]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_545,plain,
% 2.68/1.02      ( k1_xboole_0 = X0 | r2_hidden(sK1(X0),X0) = iProver_top ),
% 2.68/1.02      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_1,plain,
% 2.68/1.02      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 2.68/1.02      inference(cnf_transformation,[],[f47]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_5,plain,
% 2.68/1.02      ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
% 2.68/1.02      inference(cnf_transformation,[],[f35]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_709,plain,
% 2.68/1.02      ( k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
% 2.68/1.02      inference(superposition,[status(thm)],[c_1,c_5]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_0,plain,
% 2.68/1.02      ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
% 2.68/1.02      inference(cnf_transformation,[],[f46]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_798,plain,
% 2.68/1.02      ( k5_xboole_0(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
% 2.68/1.02      inference(superposition,[status(thm)],[c_709,c_0]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_6,plain,
% 2.68/1.02      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 2.68/1.02      inference(cnf_transformation,[],[f36]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_803,plain,
% 2.68/1.02      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 2.68/1.02      inference(light_normalisation,[status(thm)],[c_798,c_6]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_804,plain,
% 2.68/1.02      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 2.68/1.02      inference(demodulation,[status(thm)],[c_803,c_709]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_1297,plain,
% 2.68/1.02      ( k5_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k4_xboole_0(X0,X0) ),
% 2.68/1.02      inference(superposition,[status(thm)],[c_804,c_0]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_1300,plain,
% 2.68/1.02      ( k5_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
% 2.68/1.02      inference(light_normalisation,[status(thm)],[c_1297,c_804]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_1302,plain,
% 2.68/1.02      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 2.68/1.02      inference(light_normalisation,[status(thm)],[c_1300,c_803]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_11,negated_conjecture,
% 2.68/1.02      ( r2_hidden(sK2,sK3)
% 2.68/1.02      | k1_xboole_0 = k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) ),
% 2.68/1.02      inference(cnf_transformation,[],[f54]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_541,plain,
% 2.68/1.02      ( k1_xboole_0 = k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3)
% 2.68/1.02      | r2_hidden(sK2,sK3) = iProver_top ),
% 2.68/1.02      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_8,plain,
% 2.68/1.02      ( ~ r2_hidden(X0,X1)
% 2.68/1.02      | k4_xboole_0(X1,k4_xboole_0(X1,k1_enumset1(X0,X0,X0))) = k1_enumset1(X0,X0,X0) ),
% 2.68/1.02      inference(cnf_transformation,[],[f51]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_543,plain,
% 2.68/1.02      ( k4_xboole_0(X0,k4_xboole_0(X0,k1_enumset1(X1,X1,X1))) = k1_enumset1(X1,X1,X1)
% 2.68/1.02      | r2_hidden(X1,X0) != iProver_top ),
% 2.68/1.02      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_897,plain,
% 2.68/1.02      ( k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) = k1_xboole_0
% 2.68/1.02      | k4_xboole_0(sK3,k4_xboole_0(sK3,k1_enumset1(sK2,sK2,sK2))) = k1_enumset1(sK2,sK2,sK2) ),
% 2.68/1.02      inference(superposition,[status(thm)],[c_541,c_543]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_708,plain,
% 2.68/1.02      ( k5_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
% 2.68/1.02      inference(superposition,[status(thm)],[c_1,c_0]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_994,plain,
% 2.68/1.02      ( k5_xboole_0(k1_enumset1(sK2,sK2,sK2),k1_enumset1(sK2,sK2,sK2)) = k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3)
% 2.68/1.02      | k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) = k1_xboole_0 ),
% 2.68/1.02      inference(superposition,[status(thm)],[c_897,c_708]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_1307,plain,
% 2.68/1.02      ( k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) = k1_xboole_0 ),
% 2.68/1.02      inference(demodulation,[status(thm)],[c_1302,c_994]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_2,plain,
% 2.68/1.02      ( ~ r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2)))
% 2.68/1.02      | ~ r1_xboole_0(X1,X2) ),
% 2.68/1.02      inference(cnf_transformation,[],[f48]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_547,plain,
% 2.68/1.02      ( r2_hidden(X0,k4_xboole_0(X1,k4_xboole_0(X1,X2))) != iProver_top
% 2.68/1.02      | r1_xboole_0(X1,X2) != iProver_top ),
% 2.68/1.02      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_1966,plain,
% 2.68/1.02      ( r2_hidden(X0,k4_xboole_0(k1_enumset1(sK2,sK2,sK2),k1_xboole_0)) != iProver_top
% 2.68/1.02      | r1_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != iProver_top ),
% 2.68/1.02      inference(superposition,[status(thm)],[c_1307,c_547]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_1992,plain,
% 2.68/1.02      ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top
% 2.68/1.02      | r1_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != iProver_top ),
% 2.68/1.02      inference(demodulation,[status(thm)],[c_1966,c_803]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_7,plain,
% 2.68/1.02      ( r2_hidden(X0,X1) | r1_xboole_0(k1_enumset1(X0,X0,X0),X1) ),
% 2.68/1.02      inference(cnf_transformation,[],[f50]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_10,negated_conjecture,
% 2.68/1.02      ( ~ r2_hidden(sK2,sK3)
% 2.68/1.02      | k1_xboole_0 != k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) ),
% 2.68/1.02      inference(cnf_transformation,[],[f53]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_69,plain,
% 2.68/1.02      ( ~ r2_hidden(sK2,sK3)
% 2.68/1.02      | k1_xboole_0 != k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) ),
% 2.68/1.02      inference(prop_impl,[status(thm)],[c_10]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_264,plain,
% 2.68/1.02      ( r1_xboole_0(k1_enumset1(X0,X0,X0),X1)
% 2.68/1.02      | k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != k1_xboole_0
% 2.68/1.02      | sK3 != X1
% 2.68/1.02      | sK2 != X0 ),
% 2.68/1.02      inference(resolution_lifted,[status(thm)],[c_7,c_69]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_265,plain,
% 2.68/1.02      ( r1_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3)
% 2.68/1.02      | k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != k1_xboole_0 ),
% 2.68/1.02      inference(unflattening,[status(thm)],[c_264]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_266,plain,
% 2.68/1.02      ( k4_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) != k1_xboole_0
% 2.68/1.02      | r1_xboole_0(k1_enumset1(sK2,sK2,sK2),sK3) = iProver_top ),
% 2.68/1.02      inference(predicate_to_equality,[status(thm)],[c_265]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_2521,plain,
% 2.68/1.02      ( r2_hidden(X0,k1_enumset1(sK2,sK2,sK2)) != iProver_top ),
% 2.68/1.02      inference(global_propositional_subsumption,
% 2.68/1.02                [status(thm)],
% 2.68/1.02                [c_1992,c_266,c_1307]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_2528,plain,
% 2.68/1.02      ( k1_enumset1(sK2,sK2,sK2) = k1_xboole_0 ),
% 2.68/1.02      inference(superposition,[status(thm)],[c_545,c_2521]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_9,plain,
% 2.68/1.02      ( k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(X1,k1_enumset1(X0,X0,X0))) != k1_xboole_0 ),
% 2.68/1.02      inference(cnf_transformation,[],[f52]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_899,plain,
% 2.68/1.02      ( k5_xboole_0(k1_enumset1(X0,X0,X0),k1_xboole_0) != k1_xboole_0 ),
% 2.68/1.02      inference(superposition,[status(thm)],[c_5,c_9]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_900,plain,
% 2.68/1.02      ( k1_enumset1(X0,X0,X0) != k1_xboole_0 ),
% 2.68/1.02      inference(demodulation,[status(thm)],[c_899,c_6]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(c_901,plain,
% 2.68/1.02      ( k1_enumset1(sK2,sK2,sK2) != k1_xboole_0 ),
% 2.68/1.02      inference(instantiation,[status(thm)],[c_900]) ).
% 2.68/1.02  
% 2.68/1.02  cnf(contradiction,plain,
% 2.68/1.02      ( $false ),
% 2.68/1.02      inference(minisat,[status(thm)],[c_2528,c_901]) ).
% 2.68/1.02  
% 2.68/1.02  
% 2.68/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 2.68/1.02  
% 2.68/1.02  ------                               Statistics
% 2.68/1.02  
% 2.68/1.02  ------ General
% 2.68/1.02  
% 2.68/1.02  abstr_ref_over_cycles:                  0
% 2.68/1.02  abstr_ref_under_cycles:                 0
% 2.68/1.02  gc_basic_clause_elim:                   0
% 2.68/1.02  forced_gc_time:                         0
% 2.68/1.02  parsing_time:                           0.013
% 2.68/1.02  unif_index_cands_time:                  0.
% 2.68/1.02  unif_index_add_time:                    0.
% 2.68/1.02  orderings_time:                         0.
% 2.68/1.02  out_proof_time:                         0.008
% 2.68/1.02  total_time:                             0.129
% 2.68/1.02  num_of_symbols:                         41
% 2.68/1.02  num_of_terms:                           3384
% 2.68/1.02  
% 2.68/1.02  ------ Preprocessing
% 2.68/1.02  
% 2.68/1.02  num_of_splits:                          0
% 2.68/1.02  num_of_split_atoms:                     0
% 2.68/1.02  num_of_reused_defs:                     0
% 2.68/1.02  num_eq_ax_congr_red:                    8
% 2.68/1.02  num_of_sem_filtered_clauses:            1
% 2.68/1.02  num_of_subtypes:                        0
% 2.68/1.02  monotx_restored_types:                  0
% 2.68/1.02  sat_num_of_epr_types:                   0
% 2.68/1.02  sat_num_of_non_cyclic_types:            0
% 2.68/1.02  sat_guarded_non_collapsed_types:        0
% 2.68/1.02  num_pure_diseq_elim:                    0
% 2.68/1.02  simp_replaced_by:                       0
% 2.68/1.02  res_preprocessed:                       51
% 2.68/1.02  prep_upred:                             0
% 2.68/1.02  prep_unflattend:                        19
% 2.68/1.02  smt_new_axioms:                         0
% 2.68/1.02  pred_elim_cands:                        2
% 2.68/1.02  pred_elim:                              0
% 2.68/1.02  pred_elim_cl:                           0
% 2.68/1.02  pred_elim_cycles:                       2
% 2.68/1.02  merged_defs:                            6
% 2.68/1.02  merged_defs_ncl:                        0
% 2.68/1.02  bin_hyper_res:                          6
% 2.68/1.02  prep_cycles:                            3
% 2.68/1.02  pred_elim_time:                         0.005
% 2.68/1.02  splitting_time:                         0.
% 2.68/1.02  sem_filter_time:                        0.
% 2.68/1.02  monotx_time:                            0.001
% 2.68/1.02  subtype_inf_time:                       0.
% 2.68/1.02  
% 2.68/1.02  ------ Problem properties
% 2.68/1.02  
% 2.68/1.02  clauses:                                12
% 2.68/1.02  conjectures:                            2
% 2.68/1.02  epr:                                    0
% 2.68/1.02  horn:                                   8
% 2.68/1.02  ground:                                 2
% 2.68/1.02  unary:                                  5
% 2.68/1.02  binary:                                 7
% 2.68/1.02  lits:                                   19
% 2.68/1.02  lits_eq:                                9
% 2.68/1.02  fd_pure:                                0
% 2.68/1.02  fd_pseudo:                              0
% 2.68/1.02  fd_cond:                                1
% 2.68/1.02  fd_pseudo_cond:                         0
% 2.68/1.02  ac_symbols:                             0
% 2.68/1.02  
% 2.68/1.02  ------ Propositional Solver
% 2.68/1.02  
% 2.68/1.02  prop_solver_calls:                      24
% 2.68/1.02  prop_fast_solver_calls:                 294
% 2.68/1.02  smt_solver_calls:                       0
% 2.68/1.02  smt_fast_solver_calls:                  0
% 2.68/1.02  prop_num_of_clauses:                    931
% 2.68/1.02  prop_preprocess_simplified:             2323
% 2.68/1.02  prop_fo_subsumed:                       2
% 2.68/1.02  prop_solver_time:                       0.
% 2.68/1.02  smt_solver_time:                        0.
% 2.68/1.02  smt_fast_solver_time:                   0.
% 2.68/1.02  prop_fast_solver_time:                  0.
% 2.68/1.02  prop_unsat_core_time:                   0.
% 2.68/1.02  
% 2.68/1.02  ------ QBF
% 2.68/1.02  
% 2.68/1.02  qbf_q_res:                              0
% 2.68/1.02  qbf_num_tautologies:                    0
% 2.68/1.02  qbf_prep_cycles:                        0
% 2.68/1.02  
% 2.68/1.02  ------ BMC1
% 2.68/1.02  
% 2.68/1.02  bmc1_current_bound:                     -1
% 2.68/1.02  bmc1_last_solved_bound:                 -1
% 2.68/1.02  bmc1_unsat_core_size:                   -1
% 2.68/1.02  bmc1_unsat_core_parents_size:           -1
% 2.68/1.02  bmc1_merge_next_fun:                    0
% 2.68/1.02  bmc1_unsat_core_clauses_time:           0.
% 2.68/1.02  
% 2.68/1.02  ------ Instantiation
% 2.68/1.02  
% 2.68/1.02  inst_num_of_clauses:                    355
% 2.68/1.02  inst_num_in_passive:                    8
% 2.68/1.02  inst_num_in_active:                     169
% 2.68/1.02  inst_num_in_unprocessed:                178
% 2.68/1.02  inst_num_of_loops:                      200
% 2.68/1.02  inst_num_of_learning_restarts:          0
% 2.68/1.02  inst_num_moves_active_passive:          28
% 2.68/1.02  inst_lit_activity:                      0
% 2.68/1.02  inst_lit_activity_moves:                0
% 2.68/1.02  inst_num_tautologies:                   0
% 2.68/1.02  inst_num_prop_implied:                  0
% 2.68/1.02  inst_num_existing_simplified:           0
% 2.68/1.02  inst_num_eq_res_simplified:             0
% 2.68/1.02  inst_num_child_elim:                    0
% 2.68/1.02  inst_num_of_dismatching_blockings:      146
% 2.68/1.02  inst_num_of_non_proper_insts:           368
% 2.68/1.02  inst_num_of_duplicates:                 0
% 2.68/1.02  inst_inst_num_from_inst_to_res:         0
% 2.68/1.02  inst_dismatching_checking_time:         0.
% 2.68/1.02  
% 2.68/1.02  ------ Resolution
% 2.68/1.02  
% 2.68/1.02  res_num_of_clauses:                     0
% 2.68/1.02  res_num_in_passive:                     0
% 2.68/1.02  res_num_in_active:                      0
% 2.68/1.02  res_num_of_loops:                       54
% 2.68/1.02  res_forward_subset_subsumed:            37
% 2.68/1.02  res_backward_subset_subsumed:           0
% 2.68/1.02  res_forward_subsumed:                   0
% 2.68/1.02  res_backward_subsumed:                  0
% 2.68/1.02  res_forward_subsumption_resolution:     0
% 2.68/1.02  res_backward_subsumption_resolution:    0
% 2.68/1.02  res_clause_to_clause_subsumption:       178
% 2.68/1.02  res_orphan_elimination:                 0
% 2.68/1.02  res_tautology_del:                      65
% 2.68/1.02  res_num_eq_res_simplified:              0
% 2.68/1.02  res_num_sel_changes:                    0
% 2.68/1.02  res_moves_from_active_to_pass:          0
% 2.68/1.02  
% 2.68/1.02  ------ Superposition
% 2.68/1.02  
% 2.68/1.02  sup_time_total:                         0.
% 2.68/1.02  sup_time_generating:                    0.
% 2.68/1.02  sup_time_sim_full:                      0.
% 2.68/1.02  sup_time_sim_immed:                     0.
% 2.68/1.02  
% 2.68/1.02  sup_num_of_clauses:                     59
% 2.68/1.02  sup_num_in_active:                      31
% 2.68/1.02  sup_num_in_passive:                     28
% 2.68/1.02  sup_num_of_loops:                       38
% 2.68/1.02  sup_fw_superposition:                   103
% 2.68/1.02  sup_bw_superposition:                   45
% 2.68/1.02  sup_immediate_simplified:               71
% 2.68/1.02  sup_given_eliminated:                   2
% 2.68/1.02  comparisons_done:                       0
% 2.68/1.02  comparisons_avoided:                    12
% 2.68/1.02  
% 2.68/1.02  ------ Simplifications
% 2.68/1.02  
% 2.68/1.02  
% 2.68/1.02  sim_fw_subset_subsumed:                 1
% 2.68/1.02  sim_bw_subset_subsumed:                 4
% 2.68/1.02  sim_fw_subsumed:                        10
% 2.68/1.02  sim_bw_subsumed:                        0
% 2.68/1.02  sim_fw_subsumption_res:                 0
% 2.68/1.02  sim_bw_subsumption_res:                 0
% 2.68/1.02  sim_tautology_del:                      2
% 2.68/1.02  sim_eq_tautology_del:                   27
% 2.68/1.02  sim_eq_res_simp:                        1
% 2.68/1.02  sim_fw_demodulated:                     45
% 2.68/1.02  sim_bw_demodulated:                     7
% 2.68/1.02  sim_light_normalised:                   46
% 2.68/1.02  sim_joinable_taut:                      0
% 2.68/1.02  sim_joinable_simp:                      0
% 2.68/1.02  sim_ac_normalised:                      0
% 2.68/1.02  sim_smt_subsumption:                    0
% 2.68/1.02  
%------------------------------------------------------------------------------
