%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:36:19 EST 2020

% Result     : Theorem 0.80s
% Output     : CNFRefutation 0.80s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 609 expanded)
%              Number of clauses        :   45 ( 163 expanded)
%              Number of leaves         :    7 ( 125 expanded)
%              Depth                    :   21
%              Number of atoms          :  224 (2378 expanded)
%              Number of equality atoms :  152 (1375 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,conjecture,(
    ! [X0,X1,X2] :
      ( k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
    <=> ( ( X0 = X1
          | r2_hidden(X1,X2) )
        & ~ r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f4,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
      <=> ( ( X0 = X1
            | r2_hidden(X1,X2) )
          & ~ r2_hidden(X0,X2) ) ) ),
    inference(negated_conjecture,[],[f3])).

fof(f5,plain,(
    ? [X0,X1,X2] :
      ( k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
    <~> ( ( X0 = X1
          | r2_hidden(X1,X2) )
        & ~ r2_hidden(X0,X2) ) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f8,plain,(
    ? [X0,X1,X2] :
      ( ( ( X0 != X1
          & ~ r2_hidden(X1,X2) )
        | r2_hidden(X0,X2)
        | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2) )
      & ( ( ( X0 = X1
            | r2_hidden(X1,X2) )
          & ~ r2_hidden(X0,X2) )
        | k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f9,plain,(
    ? [X0,X1,X2] :
      ( ( ( X0 != X1
          & ~ r2_hidden(X1,X2) )
        | r2_hidden(X0,X2)
        | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2) )
      & ( ( ( X0 = X1
            | r2_hidden(X1,X2) )
          & ~ r2_hidden(X0,X2) )
        | k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) ) ) ),
    inference(flattening,[],[f8])).

fof(f10,plain,
    ( ? [X0,X1,X2] :
        ( ( ( X0 != X1
            & ~ r2_hidden(X1,X2) )
          | r2_hidden(X0,X2)
          | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2) )
        & ( ( ( X0 = X1
              | r2_hidden(X1,X2) )
            & ~ r2_hidden(X0,X2) )
          | k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) ) )
   => ( ( ( sK0 != sK1
          & ~ r2_hidden(sK1,sK2) )
        | r2_hidden(sK0,sK2)
        | k1_tarski(sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2) )
      & ( ( ( sK0 = sK1
            | r2_hidden(sK1,sK2) )
          & ~ r2_hidden(sK0,sK2) )
        | k1_tarski(sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f11,plain,
    ( ( ( sK0 != sK1
        & ~ r2_hidden(sK1,sK2) )
      | r2_hidden(sK0,sK2)
      | k1_tarski(sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2) )
    & ( ( ( sK0 = sK1
          | r2_hidden(sK1,sK2) )
        & ~ r2_hidden(sK0,sK2) )
      | k1_tarski(sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f9,f10])).

fof(f18,plain,
    ( sK0 = sK1
    | r2_hidden(sK1,sK2)
    | k1_tarski(sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(cnf_transformation,[],[f11])).

fof(f1,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f27,plain,
    ( sK0 = sK1
    | r2_hidden(sK1,sK2)
    | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(definition_unfolding,[],[f18,f12])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
    <=> ( ( X0 = X1
          | r2_hidden(X1,X2) )
        & ~ r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f6,plain,(
    ! [X0,X1,X2] :
      ( ( k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
        | ( X0 != X1
          & ~ r2_hidden(X1,X2) )
        | r2_hidden(X0,X2) )
      & ( ( ( X0 = X1
            | r2_hidden(X1,X2) )
          & ~ r2_hidden(X0,X2) )
        | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2) ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f7,plain,(
    ! [X0,X1,X2] :
      ( ( k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
        | ( X0 != X1
          & ~ r2_hidden(X1,X2) )
        | r2_hidden(X0,X2) )
      & ( ( ( X0 = X1
            | r2_hidden(X1,X2) )
          & ~ r2_hidden(X0,X2) )
        | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2) ) ) ),
    inference(flattening,[],[f6])).

fof(f15,plain,(
    ! [X2,X0,X1] :
      ( k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
      | ~ r2_hidden(X1,X2)
      | r2_hidden(X0,X2) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f22,plain,(
    ! [X2,X0,X1] :
      ( k2_tarski(X0,X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
      | ~ r2_hidden(X1,X2)
      | r2_hidden(X0,X2) ) ),
    inference(definition_unfolding,[],[f15,f12])).

fof(f19,plain,
    ( ~ r2_hidden(sK1,sK2)
    | r2_hidden(sK0,sK2)
    | k1_tarski(sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(cnf_transformation,[],[f11])).

fof(f26,plain,
    ( ~ r2_hidden(sK1,sK2)
    | r2_hidden(sK0,sK2)
    | k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(definition_unfolding,[],[f19,f12])).

fof(f14,plain,(
    ! [X2,X0,X1] :
      ( X0 = X1
      | r2_hidden(X1,X2)
      | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f23,plain,(
    ! [X2,X0,X1] :
      ( X0 = X1
      | r2_hidden(X1,X2)
      | k2_tarski(X0,X0) != k4_xboole_0(k2_tarski(X0,X1),X2) ) ),
    inference(definition_unfolding,[],[f14,f12])).

fof(f16,plain,(
    ! [X2,X0,X1] :
      ( k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
      | X0 != X1
      | r2_hidden(X0,X2) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f21,plain,(
    ! [X2,X0,X1] :
      ( k2_tarski(X0,X0) = k4_xboole_0(k2_tarski(X0,X1),X2)
      | X0 != X1
      | r2_hidden(X0,X2) ) ),
    inference(definition_unfolding,[],[f16,f12])).

fof(f29,plain,(
    ! [X2,X1] :
      ( k2_tarski(X1,X1) = k4_xboole_0(k2_tarski(X1,X1),X2)
      | r2_hidden(X1,X2) ) ),
    inference(equality_resolution,[],[f21])).

fof(f17,plain,
    ( ~ r2_hidden(sK0,sK2)
    | k1_tarski(sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(cnf_transformation,[],[f11])).

fof(f28,plain,
    ( ~ r2_hidden(sK0,sK2)
    | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(definition_unfolding,[],[f17,f12])).

fof(f20,plain,
    ( sK0 != sK1
    | r2_hidden(sK0,sK2)
    | k1_tarski(sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(cnf_transformation,[],[f11])).

fof(f25,plain,
    ( sK0 != sK1
    | r2_hidden(sK0,sK2)
    | k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(definition_unfolding,[],[f20,f12])).

fof(f13,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,X2)
      | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2) ) ),
    inference(cnf_transformation,[],[f7])).

fof(f24,plain,(
    ! [X2,X0,X1] :
      ( ~ r2_hidden(X0,X2)
      | k2_tarski(X0,X0) != k4_xboole_0(k2_tarski(X0,X1),X2) ) ),
    inference(definition_unfolding,[],[f13,f12])).

cnf(c_6,negated_conjecture,
    ( r2_hidden(sK1,sK2)
    | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)
    | sK0 = sK1 ),
    inference(cnf_transformation,[],[f27])).

cnf(c_230,plain,
    ( k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)
    | sK0 = sK1
    | r2_hidden(sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X1)
    | k4_xboole_0(k2_tarski(X2,X0),X1) = k2_tarski(X2,X2) ),
    inference(cnf_transformation,[],[f22])).

cnf(c_235,plain,
    ( k4_xboole_0(k2_tarski(X0,X1),X2) = k2_tarski(X0,X0)
    | r2_hidden(X1,X2) != iProver_top
    | r2_hidden(X0,X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_484,plain,
    ( k4_xboole_0(k2_tarski(X0,sK1),sK2) = k2_tarski(X0,X0)
    | k4_xboole_0(k2_tarski(sK0,sK1),sK2) = k2_tarski(sK0,sK0)
    | sK1 = sK0
    | r2_hidden(X0,sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_230,c_235])).

cnf(c_5,negated_conjecture,
    ( ~ r2_hidden(sK1,sK2)
    | r2_hidden(sK0,sK2)
    | k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_90,plain,
    ( X0 != X1
    | X2 != X3
    | k2_tarski(X0,X2) = k2_tarski(X1,X3) ),
    theory(equality)).

cnf(c_93,plain,
    ( k2_tarski(sK0,sK0) = k2_tarski(sK0,sK0)
    | sK0 != sK0 ),
    inference(instantiation,[status(thm)],[c_90])).

cnf(c_88,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_97,plain,
    ( sK0 = sK0 ),
    inference(instantiation,[status(thm)],[c_88])).

cnf(c_2,plain,
    ( r2_hidden(X0,X1)
    | X2 = X0
    | k4_xboole_0(k2_tarski(X2,X0),X1) != k2_tarski(X2,X2) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_320,plain,
    ( r2_hidden(sK1,sK2)
    | X0 = sK1
    | k4_xboole_0(k2_tarski(X0,sK1),sK2) != k2_tarski(X0,X0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_322,plain,
    ( r2_hidden(sK1,sK2)
    | k4_xboole_0(k2_tarski(sK0,sK1),sK2) != k2_tarski(sK0,sK0)
    | sK0 = sK1 ),
    inference(instantiation,[status(thm)],[c_320])).

cnf(c_89,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_328,plain,
    ( X0 != X1
    | sK1 != X1
    | sK1 = X0 ),
    inference(instantiation,[status(thm)],[c_89])).

cnf(c_374,plain,
    ( X0 != sK1
    | sK1 = X0
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_328])).

cnf(c_376,plain,
    ( sK1 != sK1
    | sK1 = sK0
    | sK0 != sK1 ),
    inference(instantiation,[status(thm)],[c_374])).

cnf(c_375,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_88])).

cnf(c_0,plain,
    ( r2_hidden(X0,X1)
    | k4_xboole_0(k2_tarski(X0,X0),X1) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_236,plain,
    ( k4_xboole_0(k2_tarski(X0,X0),X1) = k2_tarski(X0,X0)
    | r2_hidden(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_7,negated_conjecture,
    ( ~ r2_hidden(sK0,sK2)
    | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_229,plain,
    ( k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)
    | r2_hidden(sK0,sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_371,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK1),sK2) = k2_tarski(sK0,sK0)
    | k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0) ),
    inference(superposition,[status(thm)],[c_236,c_229])).

cnf(c_4,negated_conjecture,
    ( r2_hidden(sK0,sK2)
    | k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)
    | sK0 != sK1 ),
    inference(cnf_transformation,[],[f25])).

cnf(c_232,plain,
    ( k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)
    | sK0 != sK1
    | r2_hidden(sK0,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_406,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0)
    | sK1 != sK0
    | r2_hidden(sK0,sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_371,c_232])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_xboole_0(k2_tarski(X0,X2),X1) != k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_233,plain,
    ( k4_xboole_0(k2_tarski(X0,X1),X2) != k2_tarski(X0,X0)
    | r2_hidden(X0,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_407,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0)
    | r2_hidden(sK0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_371,c_233])).

cnf(c_415,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0)
    | sK1 != sK0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_406,c_407])).

cnf(c_333,plain,
    ( r2_hidden(sK0,sK2)
    | k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_334,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0)
    | r2_hidden(sK0,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_333])).

cnf(c_426,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_415,c_334,c_407])).

cnf(c_429,plain,
    ( r2_hidden(sK0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_426,c_233])).

cnf(c_430,plain,
    ( ~ r2_hidden(sK0,sK2) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_429])).

cnf(c_354,plain,
    ( X0 != X1
    | k2_tarski(X2,X2) != X1
    | k2_tarski(X2,X2) = X0 ),
    inference(instantiation,[status(thm)],[c_89])).

cnf(c_380,plain,
    ( X0 != k2_tarski(X1,X1)
    | k2_tarski(X1,X1) = X0
    | k2_tarski(X1,X1) != k2_tarski(X1,X1) ),
    inference(instantiation,[status(thm)],[c_354])).

cnf(c_459,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK1),sK2) != k2_tarski(sK0,sK0)
    | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)
    | k2_tarski(sK0,sK0) != k2_tarski(sK0,sK0) ),
    inference(instantiation,[status(thm)],[c_380])).

cnf(c_501,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK1),sK2) = k2_tarski(sK0,sK0)
    | sK1 = sK0
    | r2_hidden(sK0,sK2) = iProver_top ),
    inference(instantiation,[status(thm)],[c_484])).

cnf(c_642,plain,
    ( sK1 = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_484,c_5,c_93,c_97,c_322,c_376,c_375,c_429,c_430,c_459,c_501])).

cnf(c_648,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) != k2_tarski(sK0,sK0)
    | sK0 != sK0
    | r2_hidden(sK0,sK2) = iProver_top ),
    inference(demodulation,[status(thm)],[c_642,c_232])).

cnf(c_650,plain,
    ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) != k2_tarski(sK0,sK0)
    | r2_hidden(sK0,sK2) = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_648])).

cnf(c_653,plain,
    ( k2_tarski(sK0,sK0) != k2_tarski(sK0,sK0)
    | r2_hidden(sK0,sK2) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_650,c_426])).

cnf(c_654,plain,
    ( r2_hidden(sK0,sK2) = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_653])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_654,c_429])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n021.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 15:10:34 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 0.80/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.80/1.00  
% 0.80/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.80/1.00  
% 0.80/1.00  ------  iProver source info
% 0.80/1.00  
% 0.80/1.00  git: date: 2020-06-30 10:37:57 +0100
% 0.80/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.80/1.00  git: non_committed_changes: false
% 0.80/1.00  git: last_make_outside_of_git: false
% 0.80/1.00  
% 0.80/1.00  ------ 
% 0.80/1.00  
% 0.80/1.00  ------ Input Options
% 0.80/1.00  
% 0.80/1.00  --out_options                           all
% 0.80/1.00  --tptp_safe_out                         true
% 0.80/1.00  --problem_path                          ""
% 0.80/1.00  --include_path                          ""
% 0.80/1.00  --clausifier                            res/vclausify_rel
% 0.80/1.00  --clausifier_options                    --mode clausify
% 0.80/1.00  --stdin                                 false
% 0.80/1.00  --stats_out                             all
% 0.80/1.00  
% 0.80/1.00  ------ General Options
% 0.80/1.00  
% 0.80/1.00  --fof                                   false
% 0.80/1.00  --time_out_real                         305.
% 0.80/1.00  --time_out_virtual                      -1.
% 0.80/1.00  --symbol_type_check                     false
% 0.80/1.00  --clausify_out                          false
% 0.80/1.00  --sig_cnt_out                           false
% 0.80/1.00  --trig_cnt_out                          false
% 0.80/1.00  --trig_cnt_out_tolerance                1.
% 0.80/1.00  --trig_cnt_out_sk_spl                   false
% 0.80/1.00  --abstr_cl_out                          false
% 0.80/1.00  
% 0.80/1.00  ------ Global Options
% 0.80/1.00  
% 0.80/1.00  --schedule                              default
% 0.80/1.00  --add_important_lit                     false
% 0.80/1.00  --prop_solver_per_cl                    1000
% 0.80/1.00  --min_unsat_core                        false
% 0.80/1.00  --soft_assumptions                      false
% 0.80/1.00  --soft_lemma_size                       3
% 0.80/1.00  --prop_impl_unit_size                   0
% 0.80/1.00  --prop_impl_unit                        []
% 0.80/1.00  --share_sel_clauses                     true
% 0.80/1.00  --reset_solvers                         false
% 0.80/1.00  --bc_imp_inh                            [conj_cone]
% 0.80/1.00  --conj_cone_tolerance                   3.
% 0.80/1.00  --extra_neg_conj                        none
% 0.80/1.00  --large_theory_mode                     true
% 0.80/1.00  --prolific_symb_bound                   200
% 0.80/1.00  --lt_threshold                          2000
% 0.80/1.00  --clause_weak_htbl                      true
% 0.80/1.00  --gc_record_bc_elim                     false
% 0.80/1.00  
% 0.80/1.00  ------ Preprocessing Options
% 0.80/1.00  
% 0.80/1.00  --preprocessing_flag                    true
% 0.80/1.00  --time_out_prep_mult                    0.1
% 0.80/1.00  --splitting_mode                        input
% 0.80/1.00  --splitting_grd                         true
% 0.80/1.00  --splitting_cvd                         false
% 0.80/1.00  --splitting_cvd_svl                     false
% 0.80/1.00  --splitting_nvd                         32
% 0.80/1.00  --sub_typing                            true
% 0.80/1.00  --prep_gs_sim                           true
% 0.80/1.00  --prep_unflatten                        true
% 0.80/1.00  --prep_res_sim                          true
% 0.80/1.00  --prep_upred                            true
% 0.80/1.00  --prep_sem_filter                       exhaustive
% 0.80/1.00  --prep_sem_filter_out                   false
% 0.80/1.00  --pred_elim                             true
% 0.80/1.00  --res_sim_input                         true
% 0.80/1.00  --eq_ax_congr_red                       true
% 0.80/1.00  --pure_diseq_elim                       true
% 0.80/1.00  --brand_transform                       false
% 0.80/1.00  --non_eq_to_eq                          false
% 0.80/1.00  --prep_def_merge                        true
% 0.80/1.00  --prep_def_merge_prop_impl              false
% 0.80/1.00  --prep_def_merge_mbd                    true
% 0.80/1.00  --prep_def_merge_tr_red                 false
% 0.80/1.00  --prep_def_merge_tr_cl                  false
% 0.80/1.00  --smt_preprocessing                     true
% 0.80/1.00  --smt_ac_axioms                         fast
% 0.80/1.00  --preprocessed_out                      false
% 0.80/1.00  --preprocessed_stats                    false
% 0.80/1.00  
% 0.80/1.00  ------ Abstraction refinement Options
% 0.80/1.00  
% 0.80/1.00  --abstr_ref                             []
% 0.80/1.00  --abstr_ref_prep                        false
% 0.80/1.00  --abstr_ref_until_sat                   false
% 0.80/1.00  --abstr_ref_sig_restrict                funpre
% 0.80/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 0.80/1.00  --abstr_ref_under                       []
% 0.80/1.00  
% 0.80/1.00  ------ SAT Options
% 0.80/1.00  
% 0.80/1.00  --sat_mode                              false
% 0.80/1.00  --sat_fm_restart_options                ""
% 0.80/1.00  --sat_gr_def                            false
% 0.80/1.00  --sat_epr_types                         true
% 0.80/1.00  --sat_non_cyclic_types                  false
% 0.80/1.00  --sat_finite_models                     false
% 0.80/1.00  --sat_fm_lemmas                         false
% 0.80/1.00  --sat_fm_prep                           false
% 0.80/1.00  --sat_fm_uc_incr                        true
% 0.80/1.00  --sat_out_model                         small
% 0.80/1.00  --sat_out_clauses                       false
% 0.80/1.00  
% 0.80/1.00  ------ QBF Options
% 0.80/1.00  
% 0.80/1.00  --qbf_mode                              false
% 0.80/1.00  --qbf_elim_univ                         false
% 0.80/1.00  --qbf_dom_inst                          none
% 0.80/1.00  --qbf_dom_pre_inst                      false
% 0.80/1.00  --qbf_sk_in                             false
% 0.80/1.00  --qbf_pred_elim                         true
% 0.80/1.00  --qbf_split                             512
% 0.80/1.00  
% 0.80/1.00  ------ BMC1 Options
% 0.80/1.00  
% 0.80/1.00  --bmc1_incremental                      false
% 0.80/1.00  --bmc1_axioms                           reachable_all
% 0.80/1.00  --bmc1_min_bound                        0
% 0.80/1.00  --bmc1_max_bound                        -1
% 0.80/1.00  --bmc1_max_bound_default                -1
% 0.80/1.00  --bmc1_symbol_reachability              true
% 0.80/1.00  --bmc1_property_lemmas                  false
% 0.80/1.00  --bmc1_k_induction                      false
% 0.80/1.00  --bmc1_non_equiv_states                 false
% 0.80/1.00  --bmc1_deadlock                         false
% 0.80/1.00  --bmc1_ucm                              false
% 0.80/1.00  --bmc1_add_unsat_core                   none
% 0.80/1.00  --bmc1_unsat_core_children              false
% 0.80/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 0.80/1.00  --bmc1_out_stat                         full
% 0.80/1.00  --bmc1_ground_init                      false
% 0.80/1.00  --bmc1_pre_inst_next_state              false
% 0.80/1.00  --bmc1_pre_inst_state                   false
% 0.80/1.00  --bmc1_pre_inst_reach_state             false
% 0.80/1.00  --bmc1_out_unsat_core                   false
% 0.80/1.00  --bmc1_aig_witness_out                  false
% 0.80/1.00  --bmc1_verbose                          false
% 0.80/1.00  --bmc1_dump_clauses_tptp                false
% 0.80/1.00  --bmc1_dump_unsat_core_tptp             false
% 0.80/1.00  --bmc1_dump_file                        -
% 0.80/1.00  --bmc1_ucm_expand_uc_limit              128
% 0.80/1.00  --bmc1_ucm_n_expand_iterations          6
% 0.80/1.00  --bmc1_ucm_extend_mode                  1
% 0.80/1.00  --bmc1_ucm_init_mode                    2
% 0.80/1.00  --bmc1_ucm_cone_mode                    none
% 0.80/1.00  --bmc1_ucm_reduced_relation_type        0
% 0.80/1.00  --bmc1_ucm_relax_model                  4
% 0.80/1.00  --bmc1_ucm_full_tr_after_sat            true
% 0.80/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 0.80/1.00  --bmc1_ucm_layered_model                none
% 0.80/1.00  --bmc1_ucm_max_lemma_size               10
% 0.80/1.00  
% 0.80/1.00  ------ AIG Options
% 0.80/1.00  
% 0.80/1.00  --aig_mode                              false
% 0.80/1.00  
% 0.80/1.00  ------ Instantiation Options
% 0.80/1.00  
% 0.80/1.00  --instantiation_flag                    true
% 0.80/1.00  --inst_sos_flag                         false
% 0.80/1.00  --inst_sos_phase                        true
% 0.80/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.80/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.80/1.00  --inst_lit_sel_side                     num_symb
% 0.80/1.00  --inst_solver_per_active                1400
% 0.80/1.00  --inst_solver_calls_frac                1.
% 0.80/1.00  --inst_passive_queue_type               priority_queues
% 0.80/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.80/1.00  --inst_passive_queues_freq              [25;2]
% 0.80/1.00  --inst_dismatching                      true
% 0.80/1.00  --inst_eager_unprocessed_to_passive     true
% 0.80/1.00  --inst_prop_sim_given                   true
% 0.80/1.00  --inst_prop_sim_new                     false
% 0.80/1.00  --inst_subs_new                         false
% 0.80/1.00  --inst_eq_res_simp                      false
% 0.80/1.00  --inst_subs_given                       false
% 0.80/1.00  --inst_orphan_elimination               true
% 0.80/1.00  --inst_learning_loop_flag               true
% 0.80/1.00  --inst_learning_start                   3000
% 0.80/1.00  --inst_learning_factor                  2
% 0.80/1.00  --inst_start_prop_sim_after_learn       3
% 0.80/1.00  --inst_sel_renew                        solver
% 0.80/1.00  --inst_lit_activity_flag                true
% 0.80/1.00  --inst_restr_to_given                   false
% 0.80/1.00  --inst_activity_threshold               500
% 0.80/1.00  --inst_out_proof                        true
% 0.80/1.00  
% 0.80/1.00  ------ Resolution Options
% 0.80/1.00  
% 0.80/1.00  --resolution_flag                       true
% 0.80/1.00  --res_lit_sel                           adaptive
% 0.80/1.00  --res_lit_sel_side                      none
% 0.80/1.00  --res_ordering                          kbo
% 0.80/1.00  --res_to_prop_solver                    active
% 0.80/1.00  --res_prop_simpl_new                    false
% 0.80/1.00  --res_prop_simpl_given                  true
% 0.80/1.00  --res_passive_queue_type                priority_queues
% 0.80/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.80/1.00  --res_passive_queues_freq               [15;5]
% 0.80/1.00  --res_forward_subs                      full
% 0.80/1.00  --res_backward_subs                     full
% 0.80/1.00  --res_forward_subs_resolution           true
% 0.80/1.00  --res_backward_subs_resolution          true
% 0.80/1.00  --res_orphan_elimination                true
% 0.80/1.00  --res_time_limit                        2.
% 0.80/1.00  --res_out_proof                         true
% 0.80/1.00  
% 0.80/1.00  ------ Superposition Options
% 0.80/1.00  
% 0.80/1.00  --superposition_flag                    true
% 0.80/1.00  --sup_passive_queue_type                priority_queues
% 0.80/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.80/1.00  --sup_passive_queues_freq               [8;1;4]
% 0.80/1.00  --demod_completeness_check              fast
% 0.80/1.00  --demod_use_ground                      true
% 0.80/1.00  --sup_to_prop_solver                    passive
% 0.80/1.00  --sup_prop_simpl_new                    true
% 0.80/1.00  --sup_prop_simpl_given                  true
% 0.80/1.00  --sup_fun_splitting                     false
% 0.80/1.00  --sup_smt_interval                      50000
% 0.80/1.00  
% 0.80/1.00  ------ Superposition Simplification Setup
% 0.80/1.00  
% 0.80/1.00  --sup_indices_passive                   []
% 0.80/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.80/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.80/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.80/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 0.80/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.80/1.00  --sup_full_bw                           [BwDemod]
% 0.80/1.00  --sup_immed_triv                        [TrivRules]
% 0.80/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.80/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.80/1.00  --sup_immed_bw_main                     []
% 0.80/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.80/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 0.80/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.80/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.80/1.00  
% 0.80/1.00  ------ Combination Options
% 0.80/1.00  
% 0.80/1.00  --comb_res_mult                         3
% 0.80/1.00  --comb_sup_mult                         2
% 0.80/1.00  --comb_inst_mult                        10
% 0.80/1.00  
% 0.80/1.00  ------ Debug Options
% 0.80/1.00  
% 0.80/1.00  --dbg_backtrace                         false
% 0.80/1.00  --dbg_dump_prop_clauses                 false
% 0.80/1.00  --dbg_dump_prop_clauses_file            -
% 0.80/1.00  --dbg_out_stat                          false
% 0.80/1.00  ------ Parsing...
% 0.80/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.80/1.00  
% 0.80/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 0.80/1.00  
% 0.80/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.80/1.00  
% 0.80/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.80/1.00  ------ Proving...
% 0.80/1.00  ------ Problem Properties 
% 0.80/1.00  
% 0.80/1.00  
% 0.80/1.00  clauses                                 8
% 0.80/1.00  conjectures                             4
% 0.80/1.00  EPR                                     0
% 0.80/1.00  Horn                                    4
% 0.80/1.00  unary                                   0
% 0.80/1.00  binary                                  3
% 0.80/1.00  lits                                    21
% 0.80/1.00  lits eq                                 11
% 0.80/1.00  fd_pure                                 0
% 0.80/1.00  fd_pseudo                               0
% 0.80/1.00  fd_cond                                 0
% 0.80/1.00  fd_pseudo_cond                          1
% 0.80/1.00  AC symbols                              0
% 0.80/1.00  
% 0.80/1.00  ------ Schedule dynamic 5 is on 
% 0.80/1.00  
% 0.80/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.80/1.00  
% 0.80/1.00  
% 0.80/1.00  ------ 
% 0.80/1.00  Current options:
% 0.80/1.00  ------ 
% 0.80/1.00  
% 0.80/1.00  ------ Input Options
% 0.80/1.00  
% 0.80/1.00  --out_options                           all
% 0.80/1.00  --tptp_safe_out                         true
% 0.80/1.00  --problem_path                          ""
% 0.80/1.00  --include_path                          ""
% 0.80/1.00  --clausifier                            res/vclausify_rel
% 0.80/1.00  --clausifier_options                    --mode clausify
% 0.80/1.00  --stdin                                 false
% 0.80/1.00  --stats_out                             all
% 0.80/1.00  
% 0.80/1.00  ------ General Options
% 0.80/1.00  
% 0.80/1.00  --fof                                   false
% 0.80/1.00  --time_out_real                         305.
% 0.80/1.00  --time_out_virtual                      -1.
% 0.80/1.00  --symbol_type_check                     false
% 0.80/1.00  --clausify_out                          false
% 0.80/1.00  --sig_cnt_out                           false
% 0.80/1.00  --trig_cnt_out                          false
% 0.80/1.00  --trig_cnt_out_tolerance                1.
% 0.80/1.00  --trig_cnt_out_sk_spl                   false
% 0.80/1.00  --abstr_cl_out                          false
% 0.80/1.00  
% 0.80/1.00  ------ Global Options
% 0.80/1.00  
% 0.80/1.00  --schedule                              default
% 0.80/1.00  --add_important_lit                     false
% 0.80/1.00  --prop_solver_per_cl                    1000
% 0.80/1.00  --min_unsat_core                        false
% 0.80/1.00  --soft_assumptions                      false
% 0.80/1.00  --soft_lemma_size                       3
% 0.80/1.00  --prop_impl_unit_size                   0
% 0.80/1.00  --prop_impl_unit                        []
% 0.80/1.00  --share_sel_clauses                     true
% 0.80/1.00  --reset_solvers                         false
% 0.80/1.00  --bc_imp_inh                            [conj_cone]
% 0.80/1.00  --conj_cone_tolerance                   3.
% 0.80/1.00  --extra_neg_conj                        none
% 0.80/1.00  --large_theory_mode                     true
% 0.80/1.00  --prolific_symb_bound                   200
% 0.80/1.00  --lt_threshold                          2000
% 0.80/1.00  --clause_weak_htbl                      true
% 0.80/1.00  --gc_record_bc_elim                     false
% 0.80/1.00  
% 0.80/1.00  ------ Preprocessing Options
% 0.80/1.00  
% 0.80/1.00  --preprocessing_flag                    true
% 0.80/1.00  --time_out_prep_mult                    0.1
% 0.80/1.00  --splitting_mode                        input
% 0.80/1.00  --splitting_grd                         true
% 0.80/1.00  --splitting_cvd                         false
% 0.80/1.00  --splitting_cvd_svl                     false
% 0.80/1.00  --splitting_nvd                         32
% 0.80/1.00  --sub_typing                            true
% 0.80/1.00  --prep_gs_sim                           true
% 0.80/1.00  --prep_unflatten                        true
% 0.80/1.00  --prep_res_sim                          true
% 0.80/1.00  --prep_upred                            true
% 0.80/1.00  --prep_sem_filter                       exhaustive
% 0.80/1.00  --prep_sem_filter_out                   false
% 0.80/1.00  --pred_elim                             true
% 0.80/1.00  --res_sim_input                         true
% 0.80/1.00  --eq_ax_congr_red                       true
% 0.80/1.00  --pure_diseq_elim                       true
% 0.80/1.00  --brand_transform                       false
% 0.80/1.00  --non_eq_to_eq                          false
% 0.80/1.00  --prep_def_merge                        true
% 0.80/1.00  --prep_def_merge_prop_impl              false
% 0.80/1.00  --prep_def_merge_mbd                    true
% 0.80/1.00  --prep_def_merge_tr_red                 false
% 0.80/1.00  --prep_def_merge_tr_cl                  false
% 0.80/1.00  --smt_preprocessing                     true
% 0.80/1.00  --smt_ac_axioms                         fast
% 0.80/1.00  --preprocessed_out                      false
% 0.80/1.00  --preprocessed_stats                    false
% 0.80/1.00  
% 0.80/1.00  ------ Abstraction refinement Options
% 0.80/1.00  
% 0.80/1.00  --abstr_ref                             []
% 0.80/1.00  --abstr_ref_prep                        false
% 0.80/1.00  --abstr_ref_until_sat                   false
% 0.80/1.00  --abstr_ref_sig_restrict                funpre
% 0.80/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 0.80/1.00  --abstr_ref_under                       []
% 0.80/1.00  
% 0.80/1.00  ------ SAT Options
% 0.80/1.00  
% 0.80/1.00  --sat_mode                              false
% 0.80/1.00  --sat_fm_restart_options                ""
% 0.80/1.00  --sat_gr_def                            false
% 0.80/1.00  --sat_epr_types                         true
% 0.80/1.00  --sat_non_cyclic_types                  false
% 0.80/1.00  --sat_finite_models                     false
% 0.80/1.00  --sat_fm_lemmas                         false
% 0.80/1.00  --sat_fm_prep                           false
% 0.80/1.00  --sat_fm_uc_incr                        true
% 0.80/1.00  --sat_out_model                         small
% 0.80/1.00  --sat_out_clauses                       false
% 0.80/1.00  
% 0.80/1.00  ------ QBF Options
% 0.80/1.00  
% 0.80/1.00  --qbf_mode                              false
% 0.80/1.00  --qbf_elim_univ                         false
% 0.80/1.00  --qbf_dom_inst                          none
% 0.80/1.00  --qbf_dom_pre_inst                      false
% 0.80/1.00  --qbf_sk_in                             false
% 0.80/1.00  --qbf_pred_elim                         true
% 0.80/1.00  --qbf_split                             512
% 0.80/1.00  
% 0.80/1.00  ------ BMC1 Options
% 0.80/1.00  
% 0.80/1.00  --bmc1_incremental                      false
% 0.80/1.00  --bmc1_axioms                           reachable_all
% 0.80/1.00  --bmc1_min_bound                        0
% 0.80/1.00  --bmc1_max_bound                        -1
% 0.80/1.00  --bmc1_max_bound_default                -1
% 0.80/1.00  --bmc1_symbol_reachability              true
% 0.80/1.00  --bmc1_property_lemmas                  false
% 0.80/1.00  --bmc1_k_induction                      false
% 0.80/1.00  --bmc1_non_equiv_states                 false
% 0.80/1.00  --bmc1_deadlock                         false
% 0.80/1.00  --bmc1_ucm                              false
% 0.80/1.00  --bmc1_add_unsat_core                   none
% 0.80/1.00  --bmc1_unsat_core_children              false
% 0.80/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 0.80/1.00  --bmc1_out_stat                         full
% 0.80/1.00  --bmc1_ground_init                      false
% 0.80/1.00  --bmc1_pre_inst_next_state              false
% 0.80/1.00  --bmc1_pre_inst_state                   false
% 0.80/1.00  --bmc1_pre_inst_reach_state             false
% 0.80/1.00  --bmc1_out_unsat_core                   false
% 0.80/1.00  --bmc1_aig_witness_out                  false
% 0.80/1.00  --bmc1_verbose                          false
% 0.80/1.00  --bmc1_dump_clauses_tptp                false
% 0.80/1.00  --bmc1_dump_unsat_core_tptp             false
% 0.80/1.00  --bmc1_dump_file                        -
% 0.80/1.00  --bmc1_ucm_expand_uc_limit              128
% 0.80/1.00  --bmc1_ucm_n_expand_iterations          6
% 0.80/1.00  --bmc1_ucm_extend_mode                  1
% 0.80/1.00  --bmc1_ucm_init_mode                    2
% 0.80/1.00  --bmc1_ucm_cone_mode                    none
% 0.80/1.00  --bmc1_ucm_reduced_relation_type        0
% 0.80/1.00  --bmc1_ucm_relax_model                  4
% 0.80/1.00  --bmc1_ucm_full_tr_after_sat            true
% 0.80/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 0.80/1.00  --bmc1_ucm_layered_model                none
% 0.80/1.00  --bmc1_ucm_max_lemma_size               10
% 0.80/1.00  
% 0.80/1.00  ------ AIG Options
% 0.80/1.00  
% 0.80/1.00  --aig_mode                              false
% 0.80/1.00  
% 0.80/1.00  ------ Instantiation Options
% 0.80/1.00  
% 0.80/1.00  --instantiation_flag                    true
% 0.80/1.00  --inst_sos_flag                         false
% 0.80/1.00  --inst_sos_phase                        true
% 0.80/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.80/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.80/1.00  --inst_lit_sel_side                     none
% 0.80/1.00  --inst_solver_per_active                1400
% 0.80/1.00  --inst_solver_calls_frac                1.
% 0.80/1.00  --inst_passive_queue_type               priority_queues
% 0.80/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.80/1.00  --inst_passive_queues_freq              [25;2]
% 0.80/1.00  --inst_dismatching                      true
% 0.80/1.00  --inst_eager_unprocessed_to_passive     true
% 0.80/1.00  --inst_prop_sim_given                   true
% 0.80/1.00  --inst_prop_sim_new                     false
% 0.80/1.00  --inst_subs_new                         false
% 0.80/1.00  --inst_eq_res_simp                      false
% 0.80/1.00  --inst_subs_given                       false
% 0.80/1.00  --inst_orphan_elimination               true
% 0.80/1.00  --inst_learning_loop_flag               true
% 0.80/1.00  --inst_learning_start                   3000
% 0.80/1.00  --inst_learning_factor                  2
% 0.80/1.00  --inst_start_prop_sim_after_learn       3
% 0.80/1.00  --inst_sel_renew                        solver
% 0.80/1.00  --inst_lit_activity_flag                true
% 0.80/1.00  --inst_restr_to_given                   false
% 0.80/1.00  --inst_activity_threshold               500
% 0.80/1.00  --inst_out_proof                        true
% 0.80/1.00  
% 0.80/1.00  ------ Resolution Options
% 0.80/1.00  
% 0.80/1.00  --resolution_flag                       false
% 0.80/1.00  --res_lit_sel                           adaptive
% 0.80/1.00  --res_lit_sel_side                      none
% 0.80/1.00  --res_ordering                          kbo
% 0.80/1.00  --res_to_prop_solver                    active
% 0.80/1.00  --res_prop_simpl_new                    false
% 0.80/1.00  --res_prop_simpl_given                  true
% 0.80/1.00  --res_passive_queue_type                priority_queues
% 0.80/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.80/1.00  --res_passive_queues_freq               [15;5]
% 0.80/1.00  --res_forward_subs                      full
% 0.80/1.00  --res_backward_subs                     full
% 0.80/1.00  --res_forward_subs_resolution           true
% 0.80/1.00  --res_backward_subs_resolution          true
% 0.80/1.00  --res_orphan_elimination                true
% 0.80/1.00  --res_time_limit                        2.
% 0.80/1.00  --res_out_proof                         true
% 0.80/1.00  
% 0.80/1.00  ------ Superposition Options
% 0.80/1.00  
% 0.80/1.00  --superposition_flag                    true
% 0.80/1.00  --sup_passive_queue_type                priority_queues
% 0.80/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.80/1.00  --sup_passive_queues_freq               [8;1;4]
% 0.80/1.00  --demod_completeness_check              fast
% 0.80/1.00  --demod_use_ground                      true
% 0.80/1.00  --sup_to_prop_solver                    passive
% 0.80/1.00  --sup_prop_simpl_new                    true
% 0.80/1.00  --sup_prop_simpl_given                  true
% 0.80/1.00  --sup_fun_splitting                     false
% 0.80/1.00  --sup_smt_interval                      50000
% 0.80/1.00  
% 0.80/1.00  ------ Superposition Simplification Setup
% 0.80/1.00  
% 0.80/1.00  --sup_indices_passive                   []
% 0.80/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.80/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.80/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.80/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 0.80/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.80/1.00  --sup_full_bw                           [BwDemod]
% 0.80/1.00  --sup_immed_triv                        [TrivRules]
% 0.80/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.80/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.80/1.00  --sup_immed_bw_main                     []
% 0.80/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.80/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 0.80/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.80/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.80/1.00  
% 0.80/1.00  ------ Combination Options
% 0.80/1.00  
% 0.80/1.00  --comb_res_mult                         3
% 0.80/1.00  --comb_sup_mult                         2
% 0.80/1.00  --comb_inst_mult                        10
% 0.80/1.00  
% 0.80/1.00  ------ Debug Options
% 0.80/1.00  
% 0.80/1.00  --dbg_backtrace                         false
% 0.80/1.00  --dbg_dump_prop_clauses                 false
% 0.80/1.00  --dbg_dump_prop_clauses_file            -
% 0.80/1.00  --dbg_out_stat                          false
% 0.80/1.00  
% 0.80/1.00  
% 0.80/1.00  
% 0.80/1.00  
% 0.80/1.00  ------ Proving...
% 0.80/1.00  
% 0.80/1.00  
% 0.80/1.00  % SZS status Theorem for theBenchmark.p
% 0.80/1.00  
% 0.80/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 0.80/1.00  
% 0.80/1.00  fof(f3,conjecture,(
% 0.80/1.00    ! [X0,X1,X2] : (k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) <=> ((X0 = X1 | r2_hidden(X1,X2)) & ~r2_hidden(X0,X2)))),
% 0.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.80/1.00  
% 0.80/1.00  fof(f4,negated_conjecture,(
% 0.80/1.00    ~! [X0,X1,X2] : (k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) <=> ((X0 = X1 | r2_hidden(X1,X2)) & ~r2_hidden(X0,X2)))),
% 0.80/1.00    inference(negated_conjecture,[],[f3])).
% 0.80/1.00  
% 0.80/1.00  fof(f5,plain,(
% 0.80/1.00    ? [X0,X1,X2] : (k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) <~> ((X0 = X1 | r2_hidden(X1,X2)) & ~r2_hidden(X0,X2)))),
% 0.80/1.00    inference(ennf_transformation,[],[f4])).
% 0.80/1.00  
% 0.80/1.00  fof(f8,plain,(
% 0.80/1.00    ? [X0,X1,X2] : ((((X0 != X1 & ~r2_hidden(X1,X2)) | r2_hidden(X0,X2)) | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2)) & (((X0 = X1 | r2_hidden(X1,X2)) & ~r2_hidden(X0,X2)) | k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)))),
% 0.80/1.00    inference(nnf_transformation,[],[f5])).
% 0.80/1.00  
% 0.80/1.00  fof(f9,plain,(
% 0.80/1.00    ? [X0,X1,X2] : (((X0 != X1 & ~r2_hidden(X1,X2)) | r2_hidden(X0,X2) | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2)) & (((X0 = X1 | r2_hidden(X1,X2)) & ~r2_hidden(X0,X2)) | k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2)))),
% 0.80/1.00    inference(flattening,[],[f8])).
% 0.80/1.00  
% 0.80/1.00  fof(f10,plain,(
% 0.80/1.00    ? [X0,X1,X2] : (((X0 != X1 & ~r2_hidden(X1,X2)) | r2_hidden(X0,X2) | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2)) & (((X0 = X1 | r2_hidden(X1,X2)) & ~r2_hidden(X0,X2)) | k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2))) => (((sK0 != sK1 & ~r2_hidden(sK1,sK2)) | r2_hidden(sK0,sK2) | k1_tarski(sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)) & (((sK0 = sK1 | r2_hidden(sK1,sK2)) & ~r2_hidden(sK0,sK2)) | k1_tarski(sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)))),
% 0.80/1.00    introduced(choice_axiom,[])).
% 0.80/1.00  
% 0.80/1.00  fof(f11,plain,(
% 0.80/1.00    ((sK0 != sK1 & ~r2_hidden(sK1,sK2)) | r2_hidden(sK0,sK2) | k1_tarski(sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)) & (((sK0 = sK1 | r2_hidden(sK1,sK2)) & ~r2_hidden(sK0,sK2)) | k1_tarski(sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2))),
% 0.80/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f9,f10])).
% 0.80/1.00  
% 0.80/1.00  fof(f18,plain,(
% 0.80/1.00    sK0 = sK1 | r2_hidden(sK1,sK2) | k1_tarski(sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 0.80/1.00    inference(cnf_transformation,[],[f11])).
% 0.80/1.00  
% 0.80/1.00  fof(f1,axiom,(
% 0.80/1.00    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.80/1.00  
% 0.80/1.00  fof(f12,plain,(
% 0.80/1.00    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.80/1.00    inference(cnf_transformation,[],[f1])).
% 0.80/1.00  
% 0.80/1.00  fof(f27,plain,(
% 0.80/1.00    sK0 = sK1 | r2_hidden(sK1,sK2) | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 0.80/1.00    inference(definition_unfolding,[],[f18,f12])).
% 0.80/1.00  
% 0.80/1.00  fof(f2,axiom,(
% 0.80/1.00    ! [X0,X1,X2] : (k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) <=> ((X0 = X1 | r2_hidden(X1,X2)) & ~r2_hidden(X0,X2)))),
% 0.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.80/1.00  
% 0.80/1.00  fof(f6,plain,(
% 0.80/1.00    ! [X0,X1,X2] : ((k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) | ((X0 != X1 & ~r2_hidden(X1,X2)) | r2_hidden(X0,X2))) & (((X0 = X1 | r2_hidden(X1,X2)) & ~r2_hidden(X0,X2)) | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2)))),
% 0.80/1.00    inference(nnf_transformation,[],[f2])).
% 0.80/1.00  
% 0.80/1.00  fof(f7,plain,(
% 0.80/1.00    ! [X0,X1,X2] : ((k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) | (X0 != X1 & ~r2_hidden(X1,X2)) | r2_hidden(X0,X2)) & (((X0 = X1 | r2_hidden(X1,X2)) & ~r2_hidden(X0,X2)) | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2)))),
% 0.80/1.00    inference(flattening,[],[f6])).
% 0.80/1.00  
% 0.80/1.00  fof(f15,plain,(
% 0.80/1.00    ( ! [X2,X0,X1] : (k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) | ~r2_hidden(X1,X2) | r2_hidden(X0,X2)) )),
% 0.80/1.00    inference(cnf_transformation,[],[f7])).
% 0.80/1.00  
% 0.80/1.00  fof(f22,plain,(
% 0.80/1.00    ( ! [X2,X0,X1] : (k2_tarski(X0,X0) = k4_xboole_0(k2_tarski(X0,X1),X2) | ~r2_hidden(X1,X2) | r2_hidden(X0,X2)) )),
% 0.80/1.00    inference(definition_unfolding,[],[f15,f12])).
% 0.80/1.00  
% 0.80/1.00  fof(f19,plain,(
% 0.80/1.00    ~r2_hidden(sK1,sK2) | r2_hidden(sK0,sK2) | k1_tarski(sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 0.80/1.00    inference(cnf_transformation,[],[f11])).
% 0.80/1.00  
% 0.80/1.00  fof(f26,plain,(
% 0.80/1.00    ~r2_hidden(sK1,sK2) | r2_hidden(sK0,sK2) | k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 0.80/1.00    inference(definition_unfolding,[],[f19,f12])).
% 0.80/1.00  
% 0.80/1.00  fof(f14,plain,(
% 0.80/1.00    ( ! [X2,X0,X1] : (X0 = X1 | r2_hidden(X1,X2) | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2)) )),
% 0.80/1.00    inference(cnf_transformation,[],[f7])).
% 0.80/1.00  
% 0.80/1.00  fof(f23,plain,(
% 0.80/1.00    ( ! [X2,X0,X1] : (X0 = X1 | r2_hidden(X1,X2) | k2_tarski(X0,X0) != k4_xboole_0(k2_tarski(X0,X1),X2)) )),
% 0.80/1.00    inference(definition_unfolding,[],[f14,f12])).
% 0.80/1.00  
% 0.80/1.00  fof(f16,plain,(
% 0.80/1.00    ( ! [X2,X0,X1] : (k1_tarski(X0) = k4_xboole_0(k2_tarski(X0,X1),X2) | X0 != X1 | r2_hidden(X0,X2)) )),
% 0.80/1.00    inference(cnf_transformation,[],[f7])).
% 0.80/1.00  
% 0.80/1.00  fof(f21,plain,(
% 0.80/1.00    ( ! [X2,X0,X1] : (k2_tarski(X0,X0) = k4_xboole_0(k2_tarski(X0,X1),X2) | X0 != X1 | r2_hidden(X0,X2)) )),
% 0.80/1.00    inference(definition_unfolding,[],[f16,f12])).
% 0.80/1.00  
% 0.80/1.00  fof(f29,plain,(
% 0.80/1.00    ( ! [X2,X1] : (k2_tarski(X1,X1) = k4_xboole_0(k2_tarski(X1,X1),X2) | r2_hidden(X1,X2)) )),
% 0.80/1.00    inference(equality_resolution,[],[f21])).
% 0.80/1.00  
% 0.80/1.00  fof(f17,plain,(
% 0.80/1.00    ~r2_hidden(sK0,sK2) | k1_tarski(sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 0.80/1.00    inference(cnf_transformation,[],[f11])).
% 0.80/1.00  
% 0.80/1.00  fof(f28,plain,(
% 0.80/1.00    ~r2_hidden(sK0,sK2) | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 0.80/1.00    inference(definition_unfolding,[],[f17,f12])).
% 0.80/1.00  
% 0.80/1.00  fof(f20,plain,(
% 0.80/1.00    sK0 != sK1 | r2_hidden(sK0,sK2) | k1_tarski(sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 0.80/1.00    inference(cnf_transformation,[],[f11])).
% 0.80/1.00  
% 0.80/1.00  fof(f25,plain,(
% 0.80/1.00    sK0 != sK1 | r2_hidden(sK0,sK2) | k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)),
% 0.80/1.00    inference(definition_unfolding,[],[f20,f12])).
% 0.80/1.00  
% 0.80/1.00  fof(f13,plain,(
% 0.80/1.00    ( ! [X2,X0,X1] : (~r2_hidden(X0,X2) | k1_tarski(X0) != k4_xboole_0(k2_tarski(X0,X1),X2)) )),
% 0.80/1.00    inference(cnf_transformation,[],[f7])).
% 0.80/1.00  
% 0.80/1.00  fof(f24,plain,(
% 0.80/1.00    ( ! [X2,X0,X1] : (~r2_hidden(X0,X2) | k2_tarski(X0,X0) != k4_xboole_0(k2_tarski(X0,X1),X2)) )),
% 0.80/1.00    inference(definition_unfolding,[],[f13,f12])).
% 0.80/1.00  
% 0.80/1.00  cnf(c_6,negated_conjecture,
% 0.80/1.00      ( r2_hidden(sK1,sK2)
% 0.80/1.00      | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)
% 0.80/1.00      | sK0 = sK1 ),
% 0.80/1.00      inference(cnf_transformation,[],[f27]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_230,plain,
% 0.80/1.00      ( k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)
% 0.80/1.00      | sK0 = sK1
% 0.80/1.00      | r2_hidden(sK1,sK2) = iProver_top ),
% 0.80/1.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_1,plain,
% 0.80/1.00      ( ~ r2_hidden(X0,X1)
% 0.80/1.00      | r2_hidden(X2,X1)
% 0.80/1.00      | k4_xboole_0(k2_tarski(X2,X0),X1) = k2_tarski(X2,X2) ),
% 0.80/1.00      inference(cnf_transformation,[],[f22]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_235,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(X0,X1),X2) = k2_tarski(X0,X0)
% 0.80/1.00      | r2_hidden(X1,X2) != iProver_top
% 0.80/1.00      | r2_hidden(X0,X2) = iProver_top ),
% 0.80/1.00      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_484,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(X0,sK1),sK2) = k2_tarski(X0,X0)
% 0.80/1.00      | k4_xboole_0(k2_tarski(sK0,sK1),sK2) = k2_tarski(sK0,sK0)
% 0.80/1.00      | sK1 = sK0
% 0.80/1.00      | r2_hidden(X0,sK2) = iProver_top ),
% 0.80/1.00      inference(superposition,[status(thm)],[c_230,c_235]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_5,negated_conjecture,
% 0.80/1.00      ( ~ r2_hidden(sK1,sK2)
% 0.80/1.00      | r2_hidden(sK0,sK2)
% 0.80/1.00      | k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
% 0.80/1.00      inference(cnf_transformation,[],[f26]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_90,plain,
% 0.80/1.00      ( X0 != X1 | X2 != X3 | k2_tarski(X0,X2) = k2_tarski(X1,X3) ),
% 0.80/1.00      theory(equality) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_93,plain,
% 0.80/1.00      ( k2_tarski(sK0,sK0) = k2_tarski(sK0,sK0) | sK0 != sK0 ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_90]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_88,plain,( X0 = X0 ),theory(equality) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_97,plain,
% 0.80/1.00      ( sK0 = sK0 ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_88]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_2,plain,
% 0.80/1.00      ( r2_hidden(X0,X1)
% 0.80/1.00      | X2 = X0
% 0.80/1.00      | k4_xboole_0(k2_tarski(X2,X0),X1) != k2_tarski(X2,X2) ),
% 0.80/1.00      inference(cnf_transformation,[],[f23]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_320,plain,
% 0.80/1.00      ( r2_hidden(sK1,sK2)
% 0.80/1.00      | X0 = sK1
% 0.80/1.00      | k4_xboole_0(k2_tarski(X0,sK1),sK2) != k2_tarski(X0,X0) ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_2]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_322,plain,
% 0.80/1.00      ( r2_hidden(sK1,sK2)
% 0.80/1.00      | k4_xboole_0(k2_tarski(sK0,sK1),sK2) != k2_tarski(sK0,sK0)
% 0.80/1.00      | sK0 = sK1 ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_320]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_89,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_328,plain,
% 0.80/1.00      ( X0 != X1 | sK1 != X1 | sK1 = X0 ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_89]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_374,plain,
% 0.80/1.00      ( X0 != sK1 | sK1 = X0 | sK1 != sK1 ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_328]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_376,plain,
% 0.80/1.00      ( sK1 != sK1 | sK1 = sK0 | sK0 != sK1 ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_374]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_375,plain,
% 0.80/1.00      ( sK1 = sK1 ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_88]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_0,plain,
% 0.80/1.00      ( r2_hidden(X0,X1)
% 0.80/1.00      | k4_xboole_0(k2_tarski(X0,X0),X1) = k2_tarski(X0,X0) ),
% 0.80/1.00      inference(cnf_transformation,[],[f29]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_236,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(X0,X0),X1) = k2_tarski(X0,X0)
% 0.80/1.00      | r2_hidden(X0,X1) = iProver_top ),
% 0.80/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_7,negated_conjecture,
% 0.80/1.00      ( ~ r2_hidden(sK0,sK2)
% 0.80/1.00      | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2) ),
% 0.80/1.00      inference(cnf_transformation,[],[f28]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_229,plain,
% 0.80/1.00      ( k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)
% 0.80/1.00      | r2_hidden(sK0,sK2) != iProver_top ),
% 0.80/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_371,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK1),sK2) = k2_tarski(sK0,sK0)
% 0.80/1.00      | k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0) ),
% 0.80/1.00      inference(superposition,[status(thm)],[c_236,c_229]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_4,negated_conjecture,
% 0.80/1.00      ( r2_hidden(sK0,sK2)
% 0.80/1.00      | k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)
% 0.80/1.00      | sK0 != sK1 ),
% 0.80/1.00      inference(cnf_transformation,[],[f25]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_232,plain,
% 0.80/1.00      ( k2_tarski(sK0,sK0) != k4_xboole_0(k2_tarski(sK0,sK1),sK2)
% 0.80/1.00      | sK0 != sK1
% 0.80/1.00      | r2_hidden(sK0,sK2) = iProver_top ),
% 0.80/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_406,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0)
% 0.80/1.00      | sK1 != sK0
% 0.80/1.00      | r2_hidden(sK0,sK2) = iProver_top ),
% 0.80/1.00      inference(superposition,[status(thm)],[c_371,c_232]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_3,plain,
% 0.80/1.00      ( ~ r2_hidden(X0,X1)
% 0.80/1.00      | k4_xboole_0(k2_tarski(X0,X2),X1) != k2_tarski(X0,X0) ),
% 0.80/1.00      inference(cnf_transformation,[],[f24]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_233,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(X0,X1),X2) != k2_tarski(X0,X0)
% 0.80/1.00      | r2_hidden(X0,X2) != iProver_top ),
% 0.80/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_407,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0)
% 0.80/1.00      | r2_hidden(sK0,sK2) != iProver_top ),
% 0.80/1.00      inference(superposition,[status(thm)],[c_371,c_233]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_415,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0)
% 0.80/1.00      | sK1 != sK0 ),
% 0.80/1.00      inference(forward_subsumption_resolution,
% 0.80/1.00                [status(thm)],
% 0.80/1.00                [c_406,c_407]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_333,plain,
% 0.80/1.00      ( r2_hidden(sK0,sK2)
% 0.80/1.00      | k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0) ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_0]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_334,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0)
% 0.80/1.00      | r2_hidden(sK0,sK2) = iProver_top ),
% 0.80/1.00      inference(predicate_to_equality,[status(thm)],[c_333]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_426,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) = k2_tarski(sK0,sK0) ),
% 0.80/1.00      inference(global_propositional_subsumption,
% 0.80/1.00                [status(thm)],
% 0.80/1.00                [c_415,c_334,c_407]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_429,plain,
% 0.80/1.00      ( r2_hidden(sK0,sK2) != iProver_top ),
% 0.80/1.00      inference(superposition,[status(thm)],[c_426,c_233]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_430,plain,
% 0.80/1.00      ( ~ r2_hidden(sK0,sK2) ),
% 0.80/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_429]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_354,plain,
% 0.80/1.00      ( X0 != X1 | k2_tarski(X2,X2) != X1 | k2_tarski(X2,X2) = X0 ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_89]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_380,plain,
% 0.80/1.00      ( X0 != k2_tarski(X1,X1)
% 0.80/1.00      | k2_tarski(X1,X1) = X0
% 0.80/1.00      | k2_tarski(X1,X1) != k2_tarski(X1,X1) ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_354]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_459,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK1),sK2) != k2_tarski(sK0,sK0)
% 0.80/1.00      | k2_tarski(sK0,sK0) = k4_xboole_0(k2_tarski(sK0,sK1),sK2)
% 0.80/1.00      | k2_tarski(sK0,sK0) != k2_tarski(sK0,sK0) ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_380]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_501,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK1),sK2) = k2_tarski(sK0,sK0)
% 0.80/1.00      | sK1 = sK0
% 0.80/1.00      | r2_hidden(sK0,sK2) = iProver_top ),
% 0.80/1.00      inference(instantiation,[status(thm)],[c_484]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_642,plain,
% 0.80/1.00      ( sK1 = sK0 ),
% 0.80/1.00      inference(global_propositional_subsumption,
% 0.80/1.00                [status(thm)],
% 0.80/1.00                [c_484,c_5,c_93,c_97,c_322,c_376,c_375,c_429,c_430,c_459,
% 0.80/1.00                 c_501]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_648,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) != k2_tarski(sK0,sK0)
% 0.80/1.00      | sK0 != sK0
% 0.80/1.00      | r2_hidden(sK0,sK2) = iProver_top ),
% 0.80/1.00      inference(demodulation,[status(thm)],[c_642,c_232]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_650,plain,
% 0.80/1.00      ( k4_xboole_0(k2_tarski(sK0,sK0),sK2) != k2_tarski(sK0,sK0)
% 0.80/1.00      | r2_hidden(sK0,sK2) = iProver_top ),
% 0.80/1.00      inference(equality_resolution_simp,[status(thm)],[c_648]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_653,plain,
% 0.80/1.00      ( k2_tarski(sK0,sK0) != k2_tarski(sK0,sK0)
% 0.80/1.00      | r2_hidden(sK0,sK2) = iProver_top ),
% 0.80/1.00      inference(light_normalisation,[status(thm)],[c_650,c_426]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(c_654,plain,
% 0.80/1.00      ( r2_hidden(sK0,sK2) = iProver_top ),
% 0.80/1.00      inference(equality_resolution_simp,[status(thm)],[c_653]) ).
% 0.80/1.00  
% 0.80/1.00  cnf(contradiction,plain,
% 0.80/1.00      ( $false ),
% 0.80/1.00      inference(minisat,[status(thm)],[c_654,c_429]) ).
% 0.80/1.00  
% 0.80/1.00  
% 0.80/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 0.80/1.00  
% 0.80/1.00  ------                               Statistics
% 0.80/1.00  
% 0.80/1.00  ------ General
% 0.80/1.00  
% 0.80/1.00  abstr_ref_over_cycles:                  0
% 0.80/1.00  abstr_ref_under_cycles:                 0
% 0.80/1.00  gc_basic_clause_elim:                   0
% 0.80/1.00  forced_gc_time:                         0
% 0.80/1.00  parsing_time:                           0.009
% 0.80/1.00  unif_index_cands_time:                  0.
% 0.80/1.00  unif_index_add_time:                    0.
% 0.80/1.00  orderings_time:                         0.
% 0.80/1.00  out_proof_time:                         0.007
% 0.80/1.00  total_time:                             0.053
% 0.80/1.00  num_of_symbols:                         37
% 0.80/1.00  num_of_terms:                           522
% 0.80/1.00  
% 0.80/1.00  ------ Preprocessing
% 0.80/1.00  
% 0.80/1.00  num_of_splits:                          0
% 0.80/1.00  num_of_split_atoms:                     0
% 0.80/1.00  num_of_reused_defs:                     0
% 0.80/1.00  num_eq_ax_congr_red:                    0
% 0.80/1.00  num_of_sem_filtered_clauses:            1
% 0.80/1.00  num_of_subtypes:                        0
% 0.80/1.00  monotx_restored_types:                  0
% 0.80/1.00  sat_num_of_epr_types:                   0
% 0.80/1.00  sat_num_of_non_cyclic_types:            0
% 0.80/1.00  sat_guarded_non_collapsed_types:        0
% 0.80/1.00  num_pure_diseq_elim:                    0
% 0.80/1.00  simp_replaced_by:                       0
% 0.80/1.00  res_preprocessed:                       35
% 0.80/1.00  prep_upred:                             0
% 0.80/1.00  prep_unflattend:                        0
% 0.80/1.00  smt_new_axioms:                         0
% 0.80/1.00  pred_elim_cands:                        1
% 0.80/1.00  pred_elim:                              0
% 0.80/1.00  pred_elim_cl:                           0
% 0.80/1.00  pred_elim_cycles:                       1
% 0.80/1.00  merged_defs:                            0
% 0.80/1.00  merged_defs_ncl:                        0
% 0.80/1.00  bin_hyper_res:                          0
% 0.80/1.00  prep_cycles:                            3
% 0.80/1.00  pred_elim_time:                         0.
% 0.80/1.00  splitting_time:                         0.
% 0.80/1.00  sem_filter_time:                        0.
% 0.80/1.00  monotx_time:                            0.001
% 0.80/1.00  subtype_inf_time:                       0.
% 0.80/1.00  
% 0.80/1.00  ------ Problem properties
% 0.80/1.00  
% 0.80/1.00  clauses:                                8
% 0.80/1.00  conjectures:                            4
% 0.80/1.00  epr:                                    0
% 0.80/1.00  horn:                                   4
% 0.80/1.00  ground:                                 4
% 0.80/1.00  unary:                                  0
% 0.80/1.00  binary:                                 3
% 0.80/1.00  lits:                                   21
% 0.80/1.00  lits_eq:                                11
% 0.80/1.00  fd_pure:                                0
% 0.80/1.00  fd_pseudo:                              0
% 0.80/1.00  fd_cond:                                0
% 0.80/1.00  fd_pseudo_cond:                         1
% 0.80/1.00  ac_symbols:                             0
% 0.80/1.00  
% 0.80/1.00  ------ Propositional Solver
% 0.80/1.00  
% 0.80/1.00  prop_solver_calls:                      22
% 0.80/1.00  prop_fast_solver_calls:                 219
% 0.80/1.00  smt_solver_calls:                       0
% 0.80/1.00  smt_fast_solver_calls:                  0
% 0.80/1.00  prop_num_of_clauses:                    175
% 0.80/1.00  prop_preprocess_simplified:             1060
% 0.80/1.00  prop_fo_subsumed:                       4
% 0.80/1.00  prop_solver_time:                       0.
% 0.80/1.00  smt_solver_time:                        0.
% 0.80/1.00  smt_fast_solver_time:                   0.
% 0.80/1.00  prop_fast_solver_time:                  0.
% 0.80/1.00  prop_unsat_core_time:                   0.
% 0.80/1.00  
% 0.80/1.00  ------ QBF
% 0.80/1.00  
% 0.80/1.00  qbf_q_res:                              0
% 0.80/1.00  qbf_num_tautologies:                    0
% 0.80/1.00  qbf_prep_cycles:                        0
% 0.80/1.00  
% 0.80/1.00  ------ BMC1
% 0.80/1.00  
% 0.80/1.00  bmc1_current_bound:                     -1
% 0.80/1.00  bmc1_last_solved_bound:                 -1
% 0.80/1.00  bmc1_unsat_core_size:                   -1
% 0.80/1.00  bmc1_unsat_core_parents_size:           -1
% 0.80/1.00  bmc1_merge_next_fun:                    0
% 0.80/1.00  bmc1_unsat_core_clauses_time:           0.
% 0.80/1.00  
% 0.80/1.00  ------ Instantiation
% 0.80/1.00  
% 0.80/1.00  inst_num_of_clauses:                    90
% 0.80/1.00  inst_num_in_passive:                    12
% 0.80/1.00  inst_num_in_active:                     48
% 0.80/1.00  inst_num_in_unprocessed:                30
% 0.80/1.00  inst_num_of_loops:                      70
% 0.80/1.00  inst_num_of_learning_restarts:          0
% 0.80/1.00  inst_num_moves_active_passive:          19
% 0.80/1.00  inst_lit_activity:                      0
% 0.80/1.00  inst_lit_activity_moves:                0
% 0.80/1.00  inst_num_tautologies:                   0
% 0.80/1.00  inst_num_prop_implied:                  0
% 0.80/1.00  inst_num_existing_simplified:           0
% 0.80/1.00  inst_num_eq_res_simplified:             0
% 0.80/1.00  inst_num_child_elim:                    0
% 0.80/1.00  inst_num_of_dismatching_blockings:      11
% 0.80/1.00  inst_num_of_non_proper_insts:           86
% 0.80/1.00  inst_num_of_duplicates:                 0
% 0.80/1.00  inst_inst_num_from_inst_to_res:         0
% 0.80/1.00  inst_dismatching_checking_time:         0.
% 0.80/1.00  
% 0.80/1.00  ------ Resolution
% 0.80/1.00  
% 0.80/1.00  res_num_of_clauses:                     0
% 0.80/1.00  res_num_in_passive:                     0
% 0.80/1.00  res_num_in_active:                      0
% 0.80/1.00  res_num_of_loops:                       38
% 0.80/1.00  res_forward_subset_subsumed:            4
% 0.80/1.00  res_backward_subset_subsumed:           0
% 0.80/1.00  res_forward_subsumed:                   0
% 0.80/1.00  res_backward_subsumed:                  0
% 0.80/1.00  res_forward_subsumption_resolution:     0
% 0.80/1.00  res_backward_subsumption_resolution:    0
% 0.80/1.00  res_clause_to_clause_subsumption:       56
% 0.80/1.00  res_orphan_elimination:                 0
% 0.80/1.00  res_tautology_del:                      20
% 0.80/1.00  res_num_eq_res_simplified:              0
% 0.80/1.00  res_num_sel_changes:                    0
% 0.80/1.00  res_moves_from_active_to_pass:          0
% 0.80/1.00  
% 0.80/1.00  ------ Superposition
% 0.80/1.00  
% 0.80/1.00  sup_time_total:                         0.
% 0.80/1.00  sup_time_generating:                    0.
% 0.80/1.00  sup_time_sim_full:                      0.
% 0.80/1.00  sup_time_sim_immed:                     0.
% 0.80/1.00  
% 0.80/1.00  sup_num_of_clauses:                     11
% 0.80/1.00  sup_num_in_active:                      7
% 0.80/1.00  sup_num_in_passive:                     4
% 0.80/1.00  sup_num_of_loops:                       12
% 0.80/1.00  sup_fw_superposition:                   5
% 0.80/1.00  sup_bw_superposition:                   8
% 0.80/1.00  sup_immediate_simplified:               4
% 0.80/1.00  sup_given_eliminated:                   0
% 0.80/1.00  comparisons_done:                       0
% 0.80/1.00  comparisons_avoided:                    4
% 0.80/1.00  
% 0.80/1.00  ------ Simplifications
% 0.80/1.00  
% 0.80/1.00  
% 0.80/1.00  sim_fw_subset_subsumed:                 1
% 0.80/1.00  sim_bw_subset_subsumed:                 3
% 0.80/1.00  sim_fw_subsumed:                        0
% 0.80/1.00  sim_bw_subsumed:                        0
% 0.80/1.00  sim_fw_subsumption_res:                 2
% 0.80/1.00  sim_bw_subsumption_res:                 0
% 0.80/1.00  sim_tautology_del:                      1
% 0.80/1.00  sim_eq_tautology_del:                   2
% 0.80/1.00  sim_eq_res_simp:                        2
% 0.80/1.00  sim_fw_demodulated:                     0
% 0.80/1.00  sim_bw_demodulated:                     5
% 0.80/1.00  sim_light_normalised:                   1
% 0.80/1.00  sim_joinable_taut:                      0
% 0.80/1.00  sim_joinable_simp:                      0
% 0.80/1.00  sim_ac_normalised:                      0
% 0.80/1.00  sim_smt_subsumption:                    0
% 0.80/1.00  
%------------------------------------------------------------------------------
