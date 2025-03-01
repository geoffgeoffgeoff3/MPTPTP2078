%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:34:20 EST 2020

% Result     : Theorem 1.73s
% Output     : CNFRefutation 1.73s
% Verified   : 
% Statistics : Number of formulae       :   75 ( 161 expanded)
%              Number of clauses        :   26 (  40 expanded)
%              Number of leaves         :   15 (  40 expanded)
%              Depth                    :   14
%              Number of atoms          :  229 ( 406 expanded)
%              Number of equality atoms :  106 ( 233 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
    ! [X0,X1,X2] : k2_xboole_0(k2_tarski(X0,X1),X2) != k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2] : k2_xboole_0(k2_tarski(X0,X1),X2) != k1_xboole_0 ),
    inference(negated_conjecture,[],[f12])).

fof(f17,plain,(
    ? [X0,X1,X2] : k2_xboole_0(k2_tarski(X0,X1),X2) = k1_xboole_0 ),
    inference(ennf_transformation,[],[f13])).

fof(f31,plain,
    ( ? [X0,X1,X2] : k2_xboole_0(k2_tarski(X0,X1),X2) = k1_xboole_0
   => k2_xboole_0(k2_tarski(sK3,sK4),sK5) = k1_xboole_0 ),
    introduced(choice_axiom,[])).

fof(f32,plain,(
    k2_xboole_0(k2_tarski(sK3,sK4),sK5) = k1_xboole_0 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f17,f31])).

fof(f55,plain,(
    k2_xboole_0(k2_tarski(sK3,sK4),sK5) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f32])).

fof(f11,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f11])).

fof(f57,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f54,f56])).

fof(f9,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f10])).

fof(f56,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f52,f53])).

fof(f66,plain,(
    k1_xboole_0 = k3_tarski(k2_enumset1(k2_enumset1(sK3,sK3,sK3,sK4),k2_enumset1(sK3,sK3,sK3,sK4),k2_enumset1(sK3,sK3,sK3,sK4),sK5)) ),
    inference(definition_unfolding,[],[f55,f57,f56])).

fof(f7,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f59,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f45,f57])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f24])).

fof(f42,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f5,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( k2_tarski(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( X1 = X3
            | X0 = X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ? [X3] :
            ( ( ( X1 != X3
                & X0 != X3 )
              | ~ r2_hidden(X3,X2) )
            & ( X1 = X3
              | X0 = X3
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( X1 != X3
                & X0 != X3 ) )
            & ( X1 = X3
              | X0 = X3
              | ~ r2_hidden(X3,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ? [X3] :
            ( ( ( X1 != X3
                & X0 != X3 )
              | ~ r2_hidden(X3,X2) )
            & ( X1 = X3
              | X0 = X3
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ( X1 != X3
                & X0 != X3 ) )
            & ( X1 = X3
              | X0 = X3
              | ~ r2_hidden(X3,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f26])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ? [X3] :
            ( ( ( X1 != X3
                & X0 != X3 )
              | ~ r2_hidden(X3,X2) )
            & ( X1 = X3
              | X0 = X3
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( X1 != X4
                & X0 != X4 ) )
            & ( X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f27])).

fof(f29,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( X1 != X3
              & X0 != X3 )
            | ~ r2_hidden(X3,X2) )
          & ( X1 = X3
            | X0 = X3
            | r2_hidden(X3,X2) ) )
     => ( ( ( sK2(X0,X1,X2) != X1
            & sK2(X0,X1,X2) != X0 )
          | ~ r2_hidden(sK2(X0,X1,X2),X2) )
        & ( sK2(X0,X1,X2) = X1
          | sK2(X0,X1,X2) = X0
          | r2_hidden(sK2(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ( ( ( sK2(X0,X1,X2) != X1
              & sK2(X0,X1,X2) != X0 )
            | ~ r2_hidden(sK2(X0,X1,X2),X2) )
          & ( sK2(X0,X1,X2) = X1
            | sK2(X0,X1,X2) = X0
            | r2_hidden(sK2(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( X1 != X4
                & X0 != X4 ) )
            & ( X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f28,f29])).

fof(f47,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X0 != X4
      | k2_tarski(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f64,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X0 != X4
      | k2_enumset1(X0,X0,X0,X1) != X2 ) ),
    inference(definition_unfolding,[],[f47,f56])).

fof(f71,plain,(
    ! [X4,X2,X1] :
      ( r2_hidden(X4,X2)
      | k2_enumset1(X4,X4,X4,X1) != X2 ) ),
    inference(equality_resolution,[],[f64])).

fof(f72,plain,(
    ! [X4,X1] : r2_hidden(X4,k2_enumset1(X4,X4,X4,X1)) ),
    inference(equality_resolution,[],[f71])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f18])).

fof(f20,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f19,f20])).

fof(f34,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X2] :
              ~ ( r2_hidden(X2,X1)
                & r2_hidden(X2,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f3])).

fof(f16,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f22,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f16,f22])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f6,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f6])).

cnf(c_19,negated_conjecture,
    ( k1_xboole_0 = k3_tarski(k2_enumset1(k2_enumset1(sK3,sK3,sK3,sK4),k2_enumset1(sK3,sK3,sK3,sK4),k2_enumset1(sK3,sK3,sK3,sK4),sK5)) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_12,plain,
    ( r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_703,plain,
    ( r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_957,plain,
    ( r1_tarski(k2_enumset1(sK3,sK3,sK3,sK4),k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_19,c_703])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_707,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1358,plain,
    ( k2_enumset1(sK3,sK3,sK3,sK4) = k1_xboole_0
    | r1_tarski(k1_xboole_0,k2_enumset1(sK3,sK3,sK3,sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_957,c_707])).

cnf(c_10,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_705,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_1693,plain,
    ( k2_enumset1(sK3,sK3,sK3,sK4) = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1358,c_705])).

cnf(c_17,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_698,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_1700,plain,
    ( r2_hidden(sK3,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1693,c_698])).

cnf(c_3,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_711,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2317,plain,
    ( r2_hidden(sK3,X0) = iProver_top
    | r1_tarski(k1_xboole_0,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1700,c_711])).

cnf(c_2367,plain,
    ( r2_hidden(sK3,sK3) = iProver_top
    | r1_tarski(k1_xboole_0,sK3) != iProver_top ),
    inference(instantiation,[status(thm)],[c_2317])).

cnf(c_4,plain,
    ( ~ r1_xboole_0(X0,X1)
    | ~ r2_hidden(X2,X1)
    | ~ r2_hidden(X2,X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_11,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_221,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,X2)
    | X3 != X1
    | k1_xboole_0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_11])).

cnf(c_222,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_221])).

cnf(c_223,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_222])).

cnf(c_225,plain,
    ( r2_hidden(sK3,sK3) != iProver_top
    | r2_hidden(sK3,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_223])).

cnf(c_40,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_42,plain,
    ( r1_tarski(k1_xboole_0,sK3) = iProver_top ),
    inference(instantiation,[status(thm)],[c_40])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2367,c_1700,c_225,c_42])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n004.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 11:51:08 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 1.73/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.73/0.98  
% 1.73/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.73/0.98  
% 1.73/0.98  ------  iProver source info
% 1.73/0.98  
% 1.73/0.98  git: date: 2020-06-30 10:37:57 +0100
% 1.73/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.73/0.98  git: non_committed_changes: false
% 1.73/0.98  git: last_make_outside_of_git: false
% 1.73/0.98  
% 1.73/0.98  ------ 
% 1.73/0.98  
% 1.73/0.98  ------ Input Options
% 1.73/0.98  
% 1.73/0.98  --out_options                           all
% 1.73/0.98  --tptp_safe_out                         true
% 1.73/0.98  --problem_path                          ""
% 1.73/0.98  --include_path                          ""
% 1.73/0.98  --clausifier                            res/vclausify_rel
% 1.73/0.98  --clausifier_options                    --mode clausify
% 1.73/0.98  --stdin                                 false
% 1.73/0.98  --stats_out                             all
% 1.73/0.98  
% 1.73/0.98  ------ General Options
% 1.73/0.98  
% 1.73/0.98  --fof                                   false
% 1.73/0.98  --time_out_real                         305.
% 1.73/0.98  --time_out_virtual                      -1.
% 1.73/0.98  --symbol_type_check                     false
% 1.73/0.98  --clausify_out                          false
% 1.73/0.98  --sig_cnt_out                           false
% 1.73/0.98  --trig_cnt_out                          false
% 1.73/0.98  --trig_cnt_out_tolerance                1.
% 1.73/0.98  --trig_cnt_out_sk_spl                   false
% 1.73/0.98  --abstr_cl_out                          false
% 1.73/0.98  
% 1.73/0.98  ------ Global Options
% 1.73/0.98  
% 1.73/0.98  --schedule                              default
% 1.73/0.98  --add_important_lit                     false
% 1.73/0.98  --prop_solver_per_cl                    1000
% 1.73/0.98  --min_unsat_core                        false
% 1.73/0.98  --soft_assumptions                      false
% 1.73/0.98  --soft_lemma_size                       3
% 1.73/0.98  --prop_impl_unit_size                   0
% 1.73/0.98  --prop_impl_unit                        []
% 1.73/0.98  --share_sel_clauses                     true
% 1.73/0.98  --reset_solvers                         false
% 1.73/0.98  --bc_imp_inh                            [conj_cone]
% 1.73/0.98  --conj_cone_tolerance                   3.
% 1.73/0.98  --extra_neg_conj                        none
% 1.73/0.98  --large_theory_mode                     true
% 1.73/0.98  --prolific_symb_bound                   200
% 1.73/0.98  --lt_threshold                          2000
% 1.73/0.98  --clause_weak_htbl                      true
% 1.73/0.98  --gc_record_bc_elim                     false
% 1.73/0.98  
% 1.73/0.98  ------ Preprocessing Options
% 1.73/0.98  
% 1.73/0.98  --preprocessing_flag                    true
% 1.73/0.98  --time_out_prep_mult                    0.1
% 1.73/0.98  --splitting_mode                        input
% 1.73/0.98  --splitting_grd                         true
% 1.73/0.98  --splitting_cvd                         false
% 1.73/0.98  --splitting_cvd_svl                     false
% 1.73/0.98  --splitting_nvd                         32
% 1.73/0.98  --sub_typing                            true
% 1.73/0.98  --prep_gs_sim                           true
% 1.73/0.98  --prep_unflatten                        true
% 1.73/0.98  --prep_res_sim                          true
% 1.73/0.98  --prep_upred                            true
% 1.73/0.98  --prep_sem_filter                       exhaustive
% 1.73/0.98  --prep_sem_filter_out                   false
% 1.73/0.98  --pred_elim                             true
% 1.73/0.98  --res_sim_input                         true
% 1.73/0.98  --eq_ax_congr_red                       true
% 1.73/0.98  --pure_diseq_elim                       true
% 1.73/0.98  --brand_transform                       false
% 1.73/0.98  --non_eq_to_eq                          false
% 1.73/0.98  --prep_def_merge                        true
% 1.73/0.98  --prep_def_merge_prop_impl              false
% 1.73/0.98  --prep_def_merge_mbd                    true
% 1.73/0.98  --prep_def_merge_tr_red                 false
% 1.73/0.98  --prep_def_merge_tr_cl                  false
% 1.73/0.98  --smt_preprocessing                     true
% 1.73/0.98  --smt_ac_axioms                         fast
% 1.73/0.98  --preprocessed_out                      false
% 1.73/0.98  --preprocessed_stats                    false
% 1.73/0.98  
% 1.73/0.98  ------ Abstraction refinement Options
% 1.73/0.98  
% 1.73/0.98  --abstr_ref                             []
% 1.73/0.98  --abstr_ref_prep                        false
% 1.73/0.98  --abstr_ref_until_sat                   false
% 1.73/0.98  --abstr_ref_sig_restrict                funpre
% 1.73/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.73/0.98  --abstr_ref_under                       []
% 1.73/0.98  
% 1.73/0.98  ------ SAT Options
% 1.73/0.98  
% 1.73/0.98  --sat_mode                              false
% 1.73/0.98  --sat_fm_restart_options                ""
% 1.73/0.98  --sat_gr_def                            false
% 1.73/0.98  --sat_epr_types                         true
% 1.73/0.98  --sat_non_cyclic_types                  false
% 1.73/0.98  --sat_finite_models                     false
% 1.73/0.98  --sat_fm_lemmas                         false
% 1.73/0.98  --sat_fm_prep                           false
% 1.73/0.98  --sat_fm_uc_incr                        true
% 1.73/0.98  --sat_out_model                         small
% 1.73/0.98  --sat_out_clauses                       false
% 1.73/0.98  
% 1.73/0.98  ------ QBF Options
% 1.73/0.98  
% 1.73/0.98  --qbf_mode                              false
% 1.73/0.98  --qbf_elim_univ                         false
% 1.73/0.98  --qbf_dom_inst                          none
% 1.73/0.98  --qbf_dom_pre_inst                      false
% 1.73/0.98  --qbf_sk_in                             false
% 1.73/0.98  --qbf_pred_elim                         true
% 1.73/0.98  --qbf_split                             512
% 1.73/0.98  
% 1.73/0.98  ------ BMC1 Options
% 1.73/0.98  
% 1.73/0.98  --bmc1_incremental                      false
% 1.73/0.98  --bmc1_axioms                           reachable_all
% 1.73/0.98  --bmc1_min_bound                        0
% 1.73/0.98  --bmc1_max_bound                        -1
% 1.73/0.98  --bmc1_max_bound_default                -1
% 1.73/0.98  --bmc1_symbol_reachability              true
% 1.73/0.98  --bmc1_property_lemmas                  false
% 1.73/0.98  --bmc1_k_induction                      false
% 1.73/0.98  --bmc1_non_equiv_states                 false
% 1.73/0.98  --bmc1_deadlock                         false
% 1.73/0.98  --bmc1_ucm                              false
% 1.73/0.98  --bmc1_add_unsat_core                   none
% 1.73/0.98  --bmc1_unsat_core_children              false
% 1.73/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.73/0.98  --bmc1_out_stat                         full
% 1.73/0.98  --bmc1_ground_init                      false
% 1.73/0.98  --bmc1_pre_inst_next_state              false
% 1.73/0.98  --bmc1_pre_inst_state                   false
% 1.73/0.98  --bmc1_pre_inst_reach_state             false
% 1.73/0.98  --bmc1_out_unsat_core                   false
% 1.73/0.98  --bmc1_aig_witness_out                  false
% 1.73/0.98  --bmc1_verbose                          false
% 1.73/0.98  --bmc1_dump_clauses_tptp                false
% 1.73/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.73/0.98  --bmc1_dump_file                        -
% 1.73/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.73/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.73/0.98  --bmc1_ucm_extend_mode                  1
% 1.73/0.98  --bmc1_ucm_init_mode                    2
% 1.73/0.98  --bmc1_ucm_cone_mode                    none
% 1.73/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.73/0.98  --bmc1_ucm_relax_model                  4
% 1.73/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.73/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.73/0.98  --bmc1_ucm_layered_model                none
% 1.73/0.98  --bmc1_ucm_max_lemma_size               10
% 1.73/0.98  
% 1.73/0.98  ------ AIG Options
% 1.73/0.98  
% 1.73/0.98  --aig_mode                              false
% 1.73/0.98  
% 1.73/0.98  ------ Instantiation Options
% 1.73/0.98  
% 1.73/0.98  --instantiation_flag                    true
% 1.73/0.98  --inst_sos_flag                         false
% 1.73/0.98  --inst_sos_phase                        true
% 1.73/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.73/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.73/0.98  --inst_lit_sel_side                     num_symb
% 1.73/0.98  --inst_solver_per_active                1400
% 1.73/0.98  --inst_solver_calls_frac                1.
% 1.73/0.98  --inst_passive_queue_type               priority_queues
% 1.73/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.73/0.98  --inst_passive_queues_freq              [25;2]
% 1.73/0.98  --inst_dismatching                      true
% 1.73/0.98  --inst_eager_unprocessed_to_passive     true
% 1.73/0.98  --inst_prop_sim_given                   true
% 1.73/0.98  --inst_prop_sim_new                     false
% 1.73/0.98  --inst_subs_new                         false
% 1.73/0.98  --inst_eq_res_simp                      false
% 1.73/0.98  --inst_subs_given                       false
% 1.73/0.98  --inst_orphan_elimination               true
% 1.73/0.98  --inst_learning_loop_flag               true
% 1.73/0.98  --inst_learning_start                   3000
% 1.73/0.98  --inst_learning_factor                  2
% 1.73/0.98  --inst_start_prop_sim_after_learn       3
% 1.73/0.98  --inst_sel_renew                        solver
% 1.73/0.98  --inst_lit_activity_flag                true
% 1.73/0.98  --inst_restr_to_given                   false
% 1.73/0.98  --inst_activity_threshold               500
% 1.73/0.98  --inst_out_proof                        true
% 1.73/0.98  
% 1.73/0.98  ------ Resolution Options
% 1.73/0.98  
% 1.73/0.98  --resolution_flag                       true
% 1.73/0.98  --res_lit_sel                           adaptive
% 1.73/0.98  --res_lit_sel_side                      none
% 1.73/0.98  --res_ordering                          kbo
% 1.73/0.98  --res_to_prop_solver                    active
% 1.73/0.98  --res_prop_simpl_new                    false
% 1.73/0.98  --res_prop_simpl_given                  true
% 1.73/0.98  --res_passive_queue_type                priority_queues
% 1.73/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.73/0.98  --res_passive_queues_freq               [15;5]
% 1.73/0.98  --res_forward_subs                      full
% 1.73/0.98  --res_backward_subs                     full
% 1.73/0.98  --res_forward_subs_resolution           true
% 1.73/0.98  --res_backward_subs_resolution          true
% 1.73/0.98  --res_orphan_elimination                true
% 1.73/0.98  --res_time_limit                        2.
% 1.73/0.98  --res_out_proof                         true
% 1.73/0.98  
% 1.73/0.98  ------ Superposition Options
% 1.73/0.98  
% 1.73/0.98  --superposition_flag                    true
% 1.73/0.98  --sup_passive_queue_type                priority_queues
% 1.73/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.73/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.73/0.98  --demod_completeness_check              fast
% 1.73/0.98  --demod_use_ground                      true
% 1.73/0.98  --sup_to_prop_solver                    passive
% 1.73/0.98  --sup_prop_simpl_new                    true
% 1.73/0.98  --sup_prop_simpl_given                  true
% 1.73/0.98  --sup_fun_splitting                     false
% 1.73/0.98  --sup_smt_interval                      50000
% 1.73/0.98  
% 1.73/0.98  ------ Superposition Simplification Setup
% 1.73/0.98  
% 1.73/0.98  --sup_indices_passive                   []
% 1.73/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.73/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.73/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.73/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.73/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.73/0.98  --sup_full_bw                           [BwDemod]
% 1.73/0.98  --sup_immed_triv                        [TrivRules]
% 1.73/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.73/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.73/0.98  --sup_immed_bw_main                     []
% 1.73/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.73/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.73/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.73/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.73/0.98  
% 1.73/0.98  ------ Combination Options
% 1.73/0.98  
% 1.73/0.98  --comb_res_mult                         3
% 1.73/0.98  --comb_sup_mult                         2
% 1.73/0.98  --comb_inst_mult                        10
% 1.73/0.98  
% 1.73/0.98  ------ Debug Options
% 1.73/0.98  
% 1.73/0.98  --dbg_backtrace                         false
% 1.73/0.98  --dbg_dump_prop_clauses                 false
% 1.73/0.98  --dbg_dump_prop_clauses_file            -
% 1.73/0.98  --dbg_out_stat                          false
% 1.73/0.98  ------ Parsing...
% 1.73/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.73/0.98  
% 1.73/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.73/0.98  
% 1.73/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.73/0.98  
% 1.73/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.73/0.98  ------ Proving...
% 1.73/0.98  ------ Problem Properties 
% 1.73/0.98  
% 1.73/0.98  
% 1.73/0.98  clauses                                 19
% 1.73/0.98  conjectures                             1
% 1.73/0.98  EPR                                     6
% 1.73/0.98  Horn                                    14
% 1.73/0.98  unary                                   8
% 1.73/0.98  binary                                  4
% 1.73/0.98  lits                                    38
% 1.73/0.98  lits eq                                 12
% 1.73/0.98  fd_pure                                 0
% 1.73/0.98  fd_pseudo                               0
% 1.73/0.98  fd_cond                                 0
% 1.73/0.98  fd_pseudo_cond                          4
% 1.73/0.98  AC symbols                              0
% 1.73/0.98  
% 1.73/0.98  ------ Schedule dynamic 5 is on 
% 1.73/0.98  
% 1.73/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.73/0.98  
% 1.73/0.98  
% 1.73/0.98  ------ 
% 1.73/0.98  Current options:
% 1.73/0.98  ------ 
% 1.73/0.98  
% 1.73/0.98  ------ Input Options
% 1.73/0.98  
% 1.73/0.98  --out_options                           all
% 1.73/0.98  --tptp_safe_out                         true
% 1.73/0.98  --problem_path                          ""
% 1.73/0.98  --include_path                          ""
% 1.73/0.98  --clausifier                            res/vclausify_rel
% 1.73/0.98  --clausifier_options                    --mode clausify
% 1.73/0.98  --stdin                                 false
% 1.73/0.98  --stats_out                             all
% 1.73/0.98  
% 1.73/0.98  ------ General Options
% 1.73/0.98  
% 1.73/0.98  --fof                                   false
% 1.73/0.98  --time_out_real                         305.
% 1.73/0.98  --time_out_virtual                      -1.
% 1.73/0.98  --symbol_type_check                     false
% 1.73/0.98  --clausify_out                          false
% 1.73/0.98  --sig_cnt_out                           false
% 1.73/0.98  --trig_cnt_out                          false
% 1.73/0.98  --trig_cnt_out_tolerance                1.
% 1.73/0.98  --trig_cnt_out_sk_spl                   false
% 1.73/0.98  --abstr_cl_out                          false
% 1.73/0.98  
% 1.73/0.98  ------ Global Options
% 1.73/0.98  
% 1.73/0.98  --schedule                              default
% 1.73/0.98  --add_important_lit                     false
% 1.73/0.98  --prop_solver_per_cl                    1000
% 1.73/0.98  --min_unsat_core                        false
% 1.73/0.98  --soft_assumptions                      false
% 1.73/0.98  --soft_lemma_size                       3
% 1.73/0.98  --prop_impl_unit_size                   0
% 1.73/0.98  --prop_impl_unit                        []
% 1.73/0.98  --share_sel_clauses                     true
% 1.73/0.98  --reset_solvers                         false
% 1.73/0.98  --bc_imp_inh                            [conj_cone]
% 1.73/0.98  --conj_cone_tolerance                   3.
% 1.73/0.98  --extra_neg_conj                        none
% 1.73/0.98  --large_theory_mode                     true
% 1.73/0.98  --prolific_symb_bound                   200
% 1.73/0.98  --lt_threshold                          2000
% 1.73/0.98  --clause_weak_htbl                      true
% 1.73/0.98  --gc_record_bc_elim                     false
% 1.73/0.98  
% 1.73/0.98  ------ Preprocessing Options
% 1.73/0.98  
% 1.73/0.98  --preprocessing_flag                    true
% 1.73/0.98  --time_out_prep_mult                    0.1
% 1.73/0.98  --splitting_mode                        input
% 1.73/0.98  --splitting_grd                         true
% 1.73/0.98  --splitting_cvd                         false
% 1.73/0.98  --splitting_cvd_svl                     false
% 1.73/0.98  --splitting_nvd                         32
% 1.73/0.98  --sub_typing                            true
% 1.73/0.98  --prep_gs_sim                           true
% 1.73/0.98  --prep_unflatten                        true
% 1.73/0.98  --prep_res_sim                          true
% 1.73/0.98  --prep_upred                            true
% 1.73/0.98  --prep_sem_filter                       exhaustive
% 1.73/0.98  --prep_sem_filter_out                   false
% 1.73/0.98  --pred_elim                             true
% 1.73/0.98  --res_sim_input                         true
% 1.73/0.98  --eq_ax_congr_red                       true
% 1.73/0.98  --pure_diseq_elim                       true
% 1.73/0.98  --brand_transform                       false
% 1.73/0.98  --non_eq_to_eq                          false
% 1.73/0.98  --prep_def_merge                        true
% 1.73/0.98  --prep_def_merge_prop_impl              false
% 1.73/0.98  --prep_def_merge_mbd                    true
% 1.73/0.98  --prep_def_merge_tr_red                 false
% 1.73/0.98  --prep_def_merge_tr_cl                  false
% 1.73/0.98  --smt_preprocessing                     true
% 1.73/0.98  --smt_ac_axioms                         fast
% 1.73/0.98  --preprocessed_out                      false
% 1.73/0.98  --preprocessed_stats                    false
% 1.73/0.98  
% 1.73/0.98  ------ Abstraction refinement Options
% 1.73/0.98  
% 1.73/0.98  --abstr_ref                             []
% 1.73/0.98  --abstr_ref_prep                        false
% 1.73/0.98  --abstr_ref_until_sat                   false
% 1.73/0.98  --abstr_ref_sig_restrict                funpre
% 1.73/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.73/0.98  --abstr_ref_under                       []
% 1.73/0.98  
% 1.73/0.98  ------ SAT Options
% 1.73/0.98  
% 1.73/0.98  --sat_mode                              false
% 1.73/0.98  --sat_fm_restart_options                ""
% 1.73/0.98  --sat_gr_def                            false
% 1.73/0.98  --sat_epr_types                         true
% 1.73/0.98  --sat_non_cyclic_types                  false
% 1.73/0.98  --sat_finite_models                     false
% 1.73/0.98  --sat_fm_lemmas                         false
% 1.73/0.98  --sat_fm_prep                           false
% 1.73/0.98  --sat_fm_uc_incr                        true
% 1.73/0.98  --sat_out_model                         small
% 1.73/0.98  --sat_out_clauses                       false
% 1.73/0.98  
% 1.73/0.98  ------ QBF Options
% 1.73/0.98  
% 1.73/0.98  --qbf_mode                              false
% 1.73/0.98  --qbf_elim_univ                         false
% 1.73/0.98  --qbf_dom_inst                          none
% 1.73/0.98  --qbf_dom_pre_inst                      false
% 1.73/0.98  --qbf_sk_in                             false
% 1.73/0.98  --qbf_pred_elim                         true
% 1.73/0.98  --qbf_split                             512
% 1.73/0.98  
% 1.73/0.98  ------ BMC1 Options
% 1.73/0.98  
% 1.73/0.98  --bmc1_incremental                      false
% 1.73/0.98  --bmc1_axioms                           reachable_all
% 1.73/0.98  --bmc1_min_bound                        0
% 1.73/0.98  --bmc1_max_bound                        -1
% 1.73/0.98  --bmc1_max_bound_default                -1
% 1.73/0.98  --bmc1_symbol_reachability              true
% 1.73/0.98  --bmc1_property_lemmas                  false
% 1.73/0.98  --bmc1_k_induction                      false
% 1.73/0.98  --bmc1_non_equiv_states                 false
% 1.73/0.98  --bmc1_deadlock                         false
% 1.73/0.98  --bmc1_ucm                              false
% 1.73/0.98  --bmc1_add_unsat_core                   none
% 1.73/0.98  --bmc1_unsat_core_children              false
% 1.73/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.73/0.98  --bmc1_out_stat                         full
% 1.73/0.98  --bmc1_ground_init                      false
% 1.73/0.98  --bmc1_pre_inst_next_state              false
% 1.73/0.98  --bmc1_pre_inst_state                   false
% 1.73/0.98  --bmc1_pre_inst_reach_state             false
% 1.73/0.98  --bmc1_out_unsat_core                   false
% 1.73/0.98  --bmc1_aig_witness_out                  false
% 1.73/0.98  --bmc1_verbose                          false
% 1.73/0.98  --bmc1_dump_clauses_tptp                false
% 1.73/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.73/0.98  --bmc1_dump_file                        -
% 1.73/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.73/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.73/0.98  --bmc1_ucm_extend_mode                  1
% 1.73/0.98  --bmc1_ucm_init_mode                    2
% 1.73/0.98  --bmc1_ucm_cone_mode                    none
% 1.73/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.73/0.98  --bmc1_ucm_relax_model                  4
% 1.73/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.73/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.73/0.98  --bmc1_ucm_layered_model                none
% 1.73/0.98  --bmc1_ucm_max_lemma_size               10
% 1.73/0.98  
% 1.73/0.98  ------ AIG Options
% 1.73/0.98  
% 1.73/0.98  --aig_mode                              false
% 1.73/0.98  
% 1.73/0.98  ------ Instantiation Options
% 1.73/0.98  
% 1.73/0.98  --instantiation_flag                    true
% 1.73/0.98  --inst_sos_flag                         false
% 1.73/0.98  --inst_sos_phase                        true
% 1.73/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.73/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.73/0.98  --inst_lit_sel_side                     none
% 1.73/0.98  --inst_solver_per_active                1400
% 1.73/0.98  --inst_solver_calls_frac                1.
% 1.73/0.98  --inst_passive_queue_type               priority_queues
% 1.73/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.73/0.98  --inst_passive_queues_freq              [25;2]
% 1.73/0.98  --inst_dismatching                      true
% 1.73/0.98  --inst_eager_unprocessed_to_passive     true
% 1.73/0.98  --inst_prop_sim_given                   true
% 1.73/0.98  --inst_prop_sim_new                     false
% 1.73/0.98  --inst_subs_new                         false
% 1.73/0.98  --inst_eq_res_simp                      false
% 1.73/0.98  --inst_subs_given                       false
% 1.73/0.98  --inst_orphan_elimination               true
% 1.73/0.98  --inst_learning_loop_flag               true
% 1.73/0.98  --inst_learning_start                   3000
% 1.73/0.98  --inst_learning_factor                  2
% 1.73/0.98  --inst_start_prop_sim_after_learn       3
% 1.73/0.98  --inst_sel_renew                        solver
% 1.73/0.98  --inst_lit_activity_flag                true
% 1.73/0.98  --inst_restr_to_given                   false
% 1.73/0.98  --inst_activity_threshold               500
% 1.73/0.98  --inst_out_proof                        true
% 1.73/0.98  
% 1.73/0.98  ------ Resolution Options
% 1.73/0.98  
% 1.73/0.98  --resolution_flag                       false
% 1.73/0.98  --res_lit_sel                           adaptive
% 1.73/0.98  --res_lit_sel_side                      none
% 1.73/0.98  --res_ordering                          kbo
% 1.73/0.98  --res_to_prop_solver                    active
% 1.73/0.98  --res_prop_simpl_new                    false
% 1.73/0.98  --res_prop_simpl_given                  true
% 1.73/0.98  --res_passive_queue_type                priority_queues
% 1.73/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.73/0.98  --res_passive_queues_freq               [15;5]
% 1.73/0.98  --res_forward_subs                      full
% 1.73/0.98  --res_backward_subs                     full
% 1.73/0.98  --res_forward_subs_resolution           true
% 1.73/0.98  --res_backward_subs_resolution          true
% 1.73/0.98  --res_orphan_elimination                true
% 1.73/0.98  --res_time_limit                        2.
% 1.73/0.98  --res_out_proof                         true
% 1.73/0.98  
% 1.73/0.98  ------ Superposition Options
% 1.73/0.98  
% 1.73/0.98  --superposition_flag                    true
% 1.73/0.98  --sup_passive_queue_type                priority_queues
% 1.73/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.73/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.73/0.98  --demod_completeness_check              fast
% 1.73/0.98  --demod_use_ground                      true
% 1.73/0.98  --sup_to_prop_solver                    passive
% 1.73/0.98  --sup_prop_simpl_new                    true
% 1.73/0.98  --sup_prop_simpl_given                  true
% 1.73/0.98  --sup_fun_splitting                     false
% 1.73/0.98  --sup_smt_interval                      50000
% 1.73/0.98  
% 1.73/0.98  ------ Superposition Simplification Setup
% 1.73/0.98  
% 1.73/0.98  --sup_indices_passive                   []
% 1.73/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.73/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.73/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.73/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.73/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.73/0.98  --sup_full_bw                           [BwDemod]
% 1.73/0.98  --sup_immed_triv                        [TrivRules]
% 1.73/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.73/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.73/0.98  --sup_immed_bw_main                     []
% 1.73/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.73/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.73/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.73/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.73/0.98  
% 1.73/0.98  ------ Combination Options
% 1.73/0.98  
% 1.73/0.98  --comb_res_mult                         3
% 1.73/0.98  --comb_sup_mult                         2
% 1.73/0.98  --comb_inst_mult                        10
% 1.73/0.98  
% 1.73/0.98  ------ Debug Options
% 1.73/0.98  
% 1.73/0.98  --dbg_backtrace                         false
% 1.73/0.98  --dbg_dump_prop_clauses                 false
% 1.73/0.98  --dbg_dump_prop_clauses_file            -
% 1.73/0.98  --dbg_out_stat                          false
% 1.73/0.98  
% 1.73/0.98  
% 1.73/0.98  
% 1.73/0.98  
% 1.73/0.98  ------ Proving...
% 1.73/0.98  
% 1.73/0.98  
% 1.73/0.98  % SZS status Theorem for theBenchmark.p
% 1.73/0.98  
% 1.73/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 1.73/0.98  
% 1.73/0.98  fof(f12,conjecture,(
% 1.73/0.98    ! [X0,X1,X2] : k2_xboole_0(k2_tarski(X0,X1),X2) != k1_xboole_0),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f13,negated_conjecture,(
% 1.73/0.98    ~! [X0,X1,X2] : k2_xboole_0(k2_tarski(X0,X1),X2) != k1_xboole_0),
% 1.73/0.98    inference(negated_conjecture,[],[f12])).
% 1.73/0.98  
% 1.73/0.98  fof(f17,plain,(
% 1.73/0.98    ? [X0,X1,X2] : k2_xboole_0(k2_tarski(X0,X1),X2) = k1_xboole_0),
% 1.73/0.98    inference(ennf_transformation,[],[f13])).
% 1.73/0.98  
% 1.73/0.98  fof(f31,plain,(
% 1.73/0.98    ? [X0,X1,X2] : k2_xboole_0(k2_tarski(X0,X1),X2) = k1_xboole_0 => k2_xboole_0(k2_tarski(sK3,sK4),sK5) = k1_xboole_0),
% 1.73/0.98    introduced(choice_axiom,[])).
% 1.73/0.98  
% 1.73/0.98  fof(f32,plain,(
% 1.73/0.98    k2_xboole_0(k2_tarski(sK3,sK4),sK5) = k1_xboole_0),
% 1.73/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f17,f31])).
% 1.73/0.98  
% 1.73/0.98  fof(f55,plain,(
% 1.73/0.98    k2_xboole_0(k2_tarski(sK3,sK4),sK5) = k1_xboole_0),
% 1.73/0.98    inference(cnf_transformation,[],[f32])).
% 1.73/0.98  
% 1.73/0.98  fof(f11,axiom,(
% 1.73/0.98    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f54,plain,(
% 1.73/0.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 1.73/0.98    inference(cnf_transformation,[],[f11])).
% 1.73/0.98  
% 1.73/0.98  fof(f57,plain,(
% 1.73/0.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1))) )),
% 1.73/0.98    inference(definition_unfolding,[],[f54,f56])).
% 1.73/0.98  
% 1.73/0.98  fof(f9,axiom,(
% 1.73/0.98    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f52,plain,(
% 1.73/0.98    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.73/0.98    inference(cnf_transformation,[],[f9])).
% 1.73/0.98  
% 1.73/0.98  fof(f10,axiom,(
% 1.73/0.98    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f53,plain,(
% 1.73/0.98    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 1.73/0.98    inference(cnf_transformation,[],[f10])).
% 1.73/0.98  
% 1.73/0.98  fof(f56,plain,(
% 1.73/0.98    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 1.73/0.98    inference(definition_unfolding,[],[f52,f53])).
% 1.73/0.98  
% 1.73/0.98  fof(f66,plain,(
% 1.73/0.98    k1_xboole_0 = k3_tarski(k2_enumset1(k2_enumset1(sK3,sK3,sK3,sK4),k2_enumset1(sK3,sK3,sK3,sK4),k2_enumset1(sK3,sK3,sK3,sK4),sK5))),
% 1.73/0.98    inference(definition_unfolding,[],[f55,f57,f56])).
% 1.73/0.98  
% 1.73/0.98  fof(f7,axiom,(
% 1.73/0.98    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f45,plain,(
% 1.73/0.98    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 1.73/0.98    inference(cnf_transformation,[],[f7])).
% 1.73/0.98  
% 1.73/0.98  fof(f59,plain,(
% 1.73/0.98    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) )),
% 1.73/0.98    inference(definition_unfolding,[],[f45,f57])).
% 1.73/0.98  
% 1.73/0.98  fof(f4,axiom,(
% 1.73/0.98    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f24,plain,(
% 1.73/0.98    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.73/0.98    inference(nnf_transformation,[],[f4])).
% 1.73/0.98  
% 1.73/0.98  fof(f25,plain,(
% 1.73/0.98    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 1.73/0.98    inference(flattening,[],[f24])).
% 1.73/0.98  
% 1.73/0.98  fof(f42,plain,(
% 1.73/0.98    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 1.73/0.98    inference(cnf_transformation,[],[f25])).
% 1.73/0.98  
% 1.73/0.98  fof(f5,axiom,(
% 1.73/0.98    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f43,plain,(
% 1.73/0.98    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.73/0.98    inference(cnf_transformation,[],[f5])).
% 1.73/0.98  
% 1.73/0.98  fof(f8,axiom,(
% 1.73/0.98    ! [X0,X1,X2] : (k2_tarski(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (X1 = X3 | X0 = X3)))),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f26,plain,(
% 1.73/0.98    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & ((X1 = X3 | X0 = X3) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & ((X1 = X3 | X0 = X3) | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 1.73/0.98    inference(nnf_transformation,[],[f8])).
% 1.73/0.98  
% 1.73/0.98  fof(f27,plain,(
% 1.73/0.98    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & (X1 = X3 | X0 = X3 | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 1.73/0.98    inference(flattening,[],[f26])).
% 1.73/0.98  
% 1.73/0.98  fof(f28,plain,(
% 1.73/0.98    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 1.73/0.98    inference(rectify,[],[f27])).
% 1.73/0.98  
% 1.73/0.98  fof(f29,plain,(
% 1.73/0.98    ! [X2,X1,X0] : (? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2))) => (((sK2(X0,X1,X2) != X1 & sK2(X0,X1,X2) != X0) | ~r2_hidden(sK2(X0,X1,X2),X2)) & (sK2(X0,X1,X2) = X1 | sK2(X0,X1,X2) = X0 | r2_hidden(sK2(X0,X1,X2),X2))))),
% 1.73/0.98    introduced(choice_axiom,[])).
% 1.73/0.98  
% 1.73/0.98  fof(f30,plain,(
% 1.73/0.98    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | (((sK2(X0,X1,X2) != X1 & sK2(X0,X1,X2) != X0) | ~r2_hidden(sK2(X0,X1,X2),X2)) & (sK2(X0,X1,X2) = X1 | sK2(X0,X1,X2) = X0 | r2_hidden(sK2(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 1.73/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f28,f29])).
% 1.73/0.98  
% 1.73/0.98  fof(f47,plain,(
% 1.73/0.98    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X0 != X4 | k2_tarski(X0,X1) != X2) )),
% 1.73/0.98    inference(cnf_transformation,[],[f30])).
% 1.73/0.98  
% 1.73/0.98  fof(f64,plain,(
% 1.73/0.98    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X0 != X4 | k2_enumset1(X0,X0,X0,X1) != X2) )),
% 1.73/0.98    inference(definition_unfolding,[],[f47,f56])).
% 1.73/0.98  
% 1.73/0.98  fof(f71,plain,(
% 1.73/0.98    ( ! [X4,X2,X1] : (r2_hidden(X4,X2) | k2_enumset1(X4,X4,X4,X1) != X2) )),
% 1.73/0.98    inference(equality_resolution,[],[f64])).
% 1.73/0.98  
% 1.73/0.98  fof(f72,plain,(
% 1.73/0.98    ( ! [X4,X1] : (r2_hidden(X4,k2_enumset1(X4,X4,X4,X1))) )),
% 1.73/0.98    inference(equality_resolution,[],[f71])).
% 1.73/0.98  
% 1.73/0.98  fof(f2,axiom,(
% 1.73/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f15,plain,(
% 1.73/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 1.73/0.98    inference(ennf_transformation,[],[f2])).
% 1.73/0.98  
% 1.73/0.98  fof(f18,plain,(
% 1.73/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 1.73/0.98    inference(nnf_transformation,[],[f15])).
% 1.73/0.98  
% 1.73/0.98  fof(f19,plain,(
% 1.73/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.73/0.98    inference(rectify,[],[f18])).
% 1.73/0.98  
% 1.73/0.98  fof(f20,plain,(
% 1.73/0.98    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 1.73/0.98    introduced(choice_axiom,[])).
% 1.73/0.98  
% 1.73/0.98  fof(f21,plain,(
% 1.73/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 1.73/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f19,f20])).
% 1.73/0.98  
% 1.73/0.98  fof(f34,plain,(
% 1.73/0.98    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 1.73/0.98    inference(cnf_transformation,[],[f21])).
% 1.73/0.98  
% 1.73/0.98  fof(f3,axiom,(
% 1.73/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f14,plain,(
% 1.73/0.98    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 1.73/0.98    inference(rectify,[],[f3])).
% 1.73/0.98  
% 1.73/0.98  fof(f16,plain,(
% 1.73/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 1.73/0.98    inference(ennf_transformation,[],[f14])).
% 1.73/0.98  
% 1.73/0.98  fof(f22,plain,(
% 1.73/0.98    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 1.73/0.98    introduced(choice_axiom,[])).
% 1.73/0.98  
% 1.73/0.98  fof(f23,plain,(
% 1.73/0.98    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 1.73/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f16,f22])).
% 1.73/0.98  
% 1.73/0.98  fof(f39,plain,(
% 1.73/0.98    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 1.73/0.98    inference(cnf_transformation,[],[f23])).
% 1.73/0.98  
% 1.73/0.98  fof(f6,axiom,(
% 1.73/0.98    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 1.73/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.73/0.98  
% 1.73/0.98  fof(f44,plain,(
% 1.73/0.98    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 1.73/0.98    inference(cnf_transformation,[],[f6])).
% 1.73/0.98  
% 1.73/0.98  cnf(c_19,negated_conjecture,
% 1.73/0.98      ( k1_xboole_0 = k3_tarski(k2_enumset1(k2_enumset1(sK3,sK3,sK3,sK4),k2_enumset1(sK3,sK3,sK3,sK4),k2_enumset1(sK3,sK3,sK3,sK4),sK5)) ),
% 1.73/0.98      inference(cnf_transformation,[],[f66]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_12,plain,
% 1.73/0.98      ( r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) ),
% 1.73/0.98      inference(cnf_transformation,[],[f59]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_703,plain,
% 1.73/0.98      ( r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) = iProver_top ),
% 1.73/0.98      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_957,plain,
% 1.73/0.98      ( r1_tarski(k2_enumset1(sK3,sK3,sK3,sK4),k1_xboole_0) = iProver_top ),
% 1.73/0.98      inference(superposition,[status(thm)],[c_19,c_703]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_7,plain,
% 1.73/0.98      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 1.73/0.98      inference(cnf_transformation,[],[f42]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_707,plain,
% 1.73/0.98      ( X0 = X1
% 1.73/0.98      | r1_tarski(X1,X0) != iProver_top
% 1.73/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 1.73/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_1358,plain,
% 1.73/0.98      ( k2_enumset1(sK3,sK3,sK3,sK4) = k1_xboole_0
% 1.73/0.98      | r1_tarski(k1_xboole_0,k2_enumset1(sK3,sK3,sK3,sK4)) != iProver_top ),
% 1.73/0.98      inference(superposition,[status(thm)],[c_957,c_707]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_10,plain,
% 1.73/0.98      ( r1_tarski(k1_xboole_0,X0) ),
% 1.73/0.98      inference(cnf_transformation,[],[f43]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_705,plain,
% 1.73/0.98      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 1.73/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_1693,plain,
% 1.73/0.98      ( k2_enumset1(sK3,sK3,sK3,sK4) = k1_xboole_0 ),
% 1.73/0.98      inference(forward_subsumption_resolution,
% 1.73/0.98                [status(thm)],
% 1.73/0.98                [c_1358,c_705]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_17,plain,
% 1.73/0.98      ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) ),
% 1.73/0.98      inference(cnf_transformation,[],[f72]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_698,plain,
% 1.73/0.98      ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) = iProver_top ),
% 1.73/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_1700,plain,
% 1.73/0.98      ( r2_hidden(sK3,k1_xboole_0) = iProver_top ),
% 1.73/0.98      inference(superposition,[status(thm)],[c_1693,c_698]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_3,plain,
% 1.73/0.98      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 1.73/0.98      inference(cnf_transformation,[],[f34]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_711,plain,
% 1.73/0.98      ( r2_hidden(X0,X1) != iProver_top
% 1.73/0.98      | r2_hidden(X0,X2) = iProver_top
% 1.73/0.98      | r1_tarski(X1,X2) != iProver_top ),
% 1.73/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_2317,plain,
% 1.73/0.98      ( r2_hidden(sK3,X0) = iProver_top
% 1.73/0.98      | r1_tarski(k1_xboole_0,X0) != iProver_top ),
% 1.73/0.98      inference(superposition,[status(thm)],[c_1700,c_711]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_2367,plain,
% 1.73/0.98      ( r2_hidden(sK3,sK3) = iProver_top
% 1.73/0.98      | r1_tarski(k1_xboole_0,sK3) != iProver_top ),
% 1.73/0.98      inference(instantiation,[status(thm)],[c_2317]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_4,plain,
% 1.73/0.98      ( ~ r1_xboole_0(X0,X1) | ~ r2_hidden(X2,X1) | ~ r2_hidden(X2,X0) ),
% 1.73/0.98      inference(cnf_transformation,[],[f39]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_11,plain,
% 1.73/0.98      ( r1_xboole_0(X0,k1_xboole_0) ),
% 1.73/0.98      inference(cnf_transformation,[],[f44]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_221,plain,
% 1.73/0.98      ( ~ r2_hidden(X0,X1)
% 1.73/0.98      | ~ r2_hidden(X0,X2)
% 1.73/0.98      | X3 != X1
% 1.73/0.98      | k1_xboole_0 != X2 ),
% 1.73/0.98      inference(resolution_lifted,[status(thm)],[c_4,c_11]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_222,plain,
% 1.73/0.98      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X0,k1_xboole_0) ),
% 1.73/0.98      inference(unflattening,[status(thm)],[c_221]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_223,plain,
% 1.73/0.98      ( r2_hidden(X0,X1) != iProver_top
% 1.73/0.98      | r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 1.73/0.98      inference(predicate_to_equality,[status(thm)],[c_222]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_225,plain,
% 1.73/0.98      ( r2_hidden(sK3,sK3) != iProver_top
% 1.73/0.98      | r2_hidden(sK3,k1_xboole_0) != iProver_top ),
% 1.73/0.98      inference(instantiation,[status(thm)],[c_223]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_40,plain,
% 1.73/0.98      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 1.73/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(c_42,plain,
% 1.73/0.98      ( r1_tarski(k1_xboole_0,sK3) = iProver_top ),
% 1.73/0.98      inference(instantiation,[status(thm)],[c_40]) ).
% 1.73/0.98  
% 1.73/0.98  cnf(contradiction,plain,
% 1.73/0.98      ( $false ),
% 1.73/0.98      inference(minisat,[status(thm)],[c_2367,c_1700,c_225,c_42]) ).
% 1.73/0.98  
% 1.73/0.98  
% 1.73/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 1.73/0.98  
% 1.73/0.98  ------                               Statistics
% 1.73/0.98  
% 1.73/0.98  ------ General
% 1.73/0.98  
% 1.73/0.98  abstr_ref_over_cycles:                  0
% 1.73/0.98  abstr_ref_under_cycles:                 0
% 1.73/0.98  gc_basic_clause_elim:                   0
% 1.73/0.98  forced_gc_time:                         0
% 1.73/0.98  parsing_time:                           0.008
% 1.73/0.98  unif_index_cands_time:                  0.
% 1.73/0.98  unif_index_add_time:                    0.
% 1.73/0.98  orderings_time:                         0.
% 1.73/0.98  out_proof_time:                         0.007
% 1.73/0.98  total_time:                             0.106
% 1.73/0.98  num_of_symbols:                         43
% 1.73/0.98  num_of_terms:                           2818
% 1.73/0.98  
% 1.73/0.98  ------ Preprocessing
% 1.73/0.98  
% 1.73/0.98  num_of_splits:                          0
% 1.73/0.98  num_of_split_atoms:                     0
% 1.73/0.98  num_of_reused_defs:                     0
% 1.73/0.98  num_eq_ax_congr_red:                    24
% 1.73/0.98  num_of_sem_filtered_clauses:            1
% 1.73/0.98  num_of_subtypes:                        0
% 1.73/0.98  monotx_restored_types:                  0
% 1.73/0.98  sat_num_of_epr_types:                   0
% 1.73/0.98  sat_num_of_non_cyclic_types:            0
% 1.73/0.98  sat_guarded_non_collapsed_types:        0
% 1.73/0.98  num_pure_diseq_elim:                    0
% 1.73/0.98  simp_replaced_by:                       0
% 1.73/0.98  res_preprocessed:                       91
% 1.73/0.98  prep_upred:                             0
% 1.73/0.98  prep_unflattend:                        4
% 1.73/0.98  smt_new_axioms:                         0
% 1.73/0.98  pred_elim_cands:                        3
% 1.73/0.98  pred_elim:                              0
% 1.73/0.98  pred_elim_cl:                           0
% 1.73/0.98  pred_elim_cycles:                       2
% 1.73/0.98  merged_defs:                            0
% 1.73/0.98  merged_defs_ncl:                        0
% 1.73/0.98  bin_hyper_res:                          0
% 1.73/0.98  prep_cycles:                            4
% 1.73/0.98  pred_elim_time:                         0.001
% 1.73/0.98  splitting_time:                         0.
% 1.73/0.98  sem_filter_time:                        0.
% 1.73/0.98  monotx_time:                            0.001
% 1.73/0.98  subtype_inf_time:                       0.
% 1.73/0.98  
% 1.73/0.98  ------ Problem properties
% 1.73/0.98  
% 1.73/0.98  clauses:                                19
% 1.73/0.98  conjectures:                            1
% 1.73/0.98  epr:                                    6
% 1.73/0.98  horn:                                   14
% 1.73/0.98  ground:                                 1
% 1.73/0.98  unary:                                  8
% 1.73/0.98  binary:                                 4
% 1.73/0.98  lits:                                   38
% 1.73/0.98  lits_eq:                                12
% 1.73/0.98  fd_pure:                                0
% 1.73/0.98  fd_pseudo:                              0
% 1.73/0.98  fd_cond:                                0
% 1.73/0.98  fd_pseudo_cond:                         4
% 1.73/0.98  ac_symbols:                             0
% 1.73/0.98  
% 1.73/0.98  ------ Propositional Solver
% 1.73/0.98  
% 1.73/0.98  prop_solver_calls:                      28
% 1.73/0.98  prop_fast_solver_calls:                 454
% 1.73/0.98  smt_solver_calls:                       0
% 1.73/0.98  smt_fast_solver_calls:                  0
% 1.73/0.98  prop_num_of_clauses:                    851
% 1.73/0.98  prop_preprocess_simplified:             4141
% 1.73/0.98  prop_fo_subsumed:                       0
% 1.73/0.98  prop_solver_time:                       0.
% 1.73/0.98  smt_solver_time:                        0.
% 1.73/0.98  smt_fast_solver_time:                   0.
% 1.73/0.98  prop_fast_solver_time:                  0.
% 1.73/0.98  prop_unsat_core_time:                   0.
% 1.73/0.98  
% 1.73/0.98  ------ QBF
% 1.73/0.98  
% 1.73/0.98  qbf_q_res:                              0
% 1.73/0.98  qbf_num_tautologies:                    0
% 1.73/0.98  qbf_prep_cycles:                        0
% 1.73/0.98  
% 1.73/0.98  ------ BMC1
% 1.73/0.98  
% 1.73/0.98  bmc1_current_bound:                     -1
% 1.73/0.98  bmc1_last_solved_bound:                 -1
% 1.73/0.98  bmc1_unsat_core_size:                   -1
% 1.73/0.98  bmc1_unsat_core_parents_size:           -1
% 1.73/0.98  bmc1_merge_next_fun:                    0
% 1.73/0.98  bmc1_unsat_core_clauses_time:           0.
% 1.73/0.98  
% 1.73/0.98  ------ Instantiation
% 1.73/0.98  
% 1.73/0.98  inst_num_of_clauses:                    262
% 1.73/0.98  inst_num_in_passive:                    142
% 1.73/0.98  inst_num_in_active:                     103
% 1.73/0.98  inst_num_in_unprocessed:                17
% 1.73/0.98  inst_num_of_loops:                      130
% 1.73/0.98  inst_num_of_learning_restarts:          0
% 1.73/0.98  inst_num_moves_active_passive:          24
% 1.73/0.98  inst_lit_activity:                      0
% 1.73/0.98  inst_lit_activity_moves:                0
% 1.73/0.98  inst_num_tautologies:                   0
% 1.73/0.98  inst_num_prop_implied:                  0
% 1.73/0.98  inst_num_existing_simplified:           0
% 1.73/0.98  inst_num_eq_res_simplified:             0
% 1.73/0.98  inst_num_child_elim:                    0
% 1.73/0.98  inst_num_of_dismatching_blockings:      62
% 1.73/0.98  inst_num_of_non_proper_insts:           232
% 1.73/0.98  inst_num_of_duplicates:                 0
% 1.73/0.98  inst_inst_num_from_inst_to_res:         0
% 1.73/0.98  inst_dismatching_checking_time:         0.
% 1.73/0.98  
% 1.73/0.98  ------ Resolution
% 1.73/0.98  
% 1.73/0.98  res_num_of_clauses:                     0
% 1.73/0.98  res_num_in_passive:                     0
% 1.73/0.98  res_num_in_active:                      0
% 1.73/0.98  res_num_of_loops:                       95
% 1.73/0.98  res_forward_subset_subsumed:            25
% 1.73/0.98  res_backward_subset_subsumed:           0
% 1.73/0.98  res_forward_subsumed:                   0
% 1.73/0.98  res_backward_subsumed:                  0
% 1.73/0.98  res_forward_subsumption_resolution:     0
% 1.73/0.98  res_backward_subsumption_resolution:    0
% 1.73/0.98  res_clause_to_clause_subsumption:       114
% 1.73/0.98  res_orphan_elimination:                 0
% 1.73/0.98  res_tautology_del:                      15
% 1.73/0.98  res_num_eq_res_simplified:              0
% 1.73/0.98  res_num_sel_changes:                    0
% 1.73/0.98  res_moves_from_active_to_pass:          0
% 1.73/0.98  
% 1.73/0.98  ------ Superposition
% 1.73/0.98  
% 1.73/0.98  sup_time_total:                         0.
% 1.73/0.98  sup_time_generating:                    0.
% 1.73/0.98  sup_time_sim_full:                      0.
% 1.73/0.98  sup_time_sim_immed:                     0.
% 1.73/0.98  
% 1.73/0.98  sup_num_of_clauses:                     42
% 1.73/0.98  sup_num_in_active:                      20
% 1.73/0.98  sup_num_in_passive:                     22
% 1.73/0.98  sup_num_of_loops:                       25
% 1.73/0.98  sup_fw_superposition:                   23
% 1.73/0.98  sup_bw_superposition:                   24
% 1.73/0.98  sup_immediate_simplified:               1
% 1.73/0.98  sup_given_eliminated:                   0
% 1.73/0.98  comparisons_done:                       0
% 1.73/0.98  comparisons_avoided:                    4
% 1.73/0.98  
% 1.73/0.98  ------ Simplifications
% 1.73/0.98  
% 1.73/0.98  
% 1.73/0.98  sim_fw_subset_subsumed:                 0
% 1.73/0.98  sim_bw_subset_subsumed:                 0
% 1.73/0.98  sim_fw_subsumed:                        1
% 1.73/0.98  sim_bw_subsumed:                        0
% 1.73/0.98  sim_fw_subsumption_res:                 2
% 1.73/0.98  sim_bw_subsumption_res:                 0
% 1.73/0.98  sim_tautology_del:                      0
% 1.73/0.98  sim_eq_tautology_del:                   1
% 1.73/0.98  sim_eq_res_simp:                        0
% 1.73/0.98  sim_fw_demodulated:                     0
% 1.73/0.98  sim_bw_demodulated:                     6
% 1.73/0.98  sim_light_normalised:                   0
% 1.73/0.98  sim_joinable_taut:                      0
% 1.73/0.98  sim_joinable_simp:                      0
% 1.73/0.98  sim_ac_normalised:                      0
% 1.73/0.98  sim_smt_subsumption:                    0
% 1.73/0.98  
%------------------------------------------------------------------------------
