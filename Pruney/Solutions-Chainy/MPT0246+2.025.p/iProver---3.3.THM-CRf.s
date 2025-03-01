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
% DateTime   : Thu Dec  3 11:32:06 EST 2020

% Result     : Theorem 2.84s
% Output     : CNFRefutation 2.84s
% Verified   : 
% Statistics : Number of formulae       :  124 ( 282 expanded)
%              Number of clauses        :   65 (  97 expanded)
%              Number of leaves         :   19 (  63 expanded)
%              Depth                    :   15
%              Number of atoms          :  343 ( 950 expanded)
%              Number of equality atoms :  149 ( 326 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f2,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X2] :
              ~ ( r2_hidden(X2,X1)
                & r2_hidden(X2,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    inference(rectify,[],[f2])).

fof(f15,plain,(
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

fof(f25,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f15,f25])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK1(X0,X1),X0)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f41,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK1(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( ~ r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f20])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( ~ r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f21])).

fof(f23,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( ~ r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( r2_hidden(sK0(X0,X1,X2),X1)
          | ~ r2_hidden(sK0(X0,X1,X2),X0)
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
            & r2_hidden(sK0(X0,X1,X2),X0) )
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ( ( r2_hidden(sK0(X0,X1,X2),X1)
            | ~ r2_hidden(sK0(X0,X1,X2),X0)
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
              & r2_hidden(sK0(X0,X1,X2),X0) )
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( ~ r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f22,f23])).

fof(f35,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f65,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k4_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f35])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f47,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | k4_xboole_0(X0,X1) != k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f29])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f52,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | ~ r1_tarski(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f7,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f9])).

fof(f58,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f50,f51])).

fof(f59,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f49,f58])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
      | ~ r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) ) ),
    inference(definition_unfolding,[],[f52,f59])).

fof(f3,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f3])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK2(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f16,f27])).

fof(f43,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f34,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f66,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k4_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f34])).

fof(f12,conjecture,(
    ! [X0,X1] :
      ~ ( ! [X2] :
            ~ ( X1 != X2
              & r2_hidden(X2,X0) )
        & k1_xboole_0 != X0
        & k1_tarski(X1) != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1] :
        ~ ( ! [X2] :
              ~ ( X1 != X2
                & r2_hidden(X2,X0) )
          & k1_xboole_0 != X0
          & k1_tarski(X1) != X0 ) ),
    inference(negated_conjecture,[],[f12])).

fof(f19,plain,(
    ? [X0,X1] :
      ( ! [X2] :
          ( X1 = X2
          | ~ r2_hidden(X2,X0) )
      & k1_xboole_0 != X0
      & k1_tarski(X1) != X0 ) ),
    inference(ennf_transformation,[],[f13])).

fof(f32,plain,
    ( ? [X0,X1] :
        ( ! [X2] :
            ( X1 = X2
            | ~ r2_hidden(X2,X0) )
        & k1_xboole_0 != X0
        & k1_tarski(X1) != X0 )
   => ( ! [X2] :
          ( sK4 = X2
          | ~ r2_hidden(X2,sK3) )
      & k1_xboole_0 != sK3
      & k1_tarski(sK4) != sK3 ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ! [X2] :
        ( sK4 = X2
        | ~ r2_hidden(X2,sK3) )
    & k1_xboole_0 != sK3
    & k1_tarski(sK4) != sK3 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f19,f32])).

fof(f57,plain,(
    ! [X2] :
      ( sK4 = X2
      | ~ r2_hidden(X2,sK3) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f60,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_enumset1(X0,X0,X0,X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f53,f59])).

fof(f11,axiom,(
    ! [X0,X1] :
      ~ ( r2_hidden(X0,X1)
        & r1_xboole_0(k1_tarski(X0),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | ~ r1_xboole_0(k1_tarski(X0),X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f54,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | ~ r1_xboole_0(k1_tarski(X0),X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f62,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X0,X1)
      | ~ r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) ) ),
    inference(definition_unfolding,[],[f54,f59])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k4_xboole_0(X1,X0)
     => X0 = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f46,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f56,plain,(
    k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f33])).

fof(f55,plain,(
    k1_tarski(sK4) != sK3 ),
    inference(cnf_transformation,[],[f33])).

fof(f63,plain,(
    k2_enumset1(sK4,sK4,sK4,sK4) != sK3 ),
    inference(definition_unfolding,[],[f55,f59])).

cnf(c_8,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK1(X0,X1),X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1085,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_7,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK1(X0,X1),X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1086,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_4,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k4_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1089,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k4_xboole_0(X2,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1560,plain,
    ( r1_xboole_0(X0,k4_xboole_0(X1,X2)) = iProver_top
    | r2_hidden(sK1(X0,k4_xboole_0(X1,X2)),X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1086,c_1089])).

cnf(c_13174,plain,
    ( r1_xboole_0(X0,k4_xboole_0(X1,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1085,c_1560])).

cnf(c_14,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1082,plain,
    ( k4_xboole_0(X0,X1) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_13312,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0 ),
    inference(superposition,[status(thm)],[c_13174,c_1082])).

cnf(c_11,plain,
    ( r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_153,plain,
    ( r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) != k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_11])).

cnf(c_16,plain,
    ( ~ r1_tarski(k2_enumset1(X0,X0,X0,X0),X1)
    | r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_161,plain,
    ( r2_hidden(X0,X1)
    | ~ r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) ),
    inference(prop_impl,[status(thm)],[c_16])).

cnf(c_162,plain,
    ( ~ r1_tarski(k2_enumset1(X0,X0,X0,X0),X1)
    | r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_161])).

cnf(c_270,plain,
    ( r2_hidden(X0,X1)
    | X1 != X2
    | k2_enumset1(X0,X0,X0,X0) != X3
    | k4_xboole_0(X3,X2) != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_153,c_162])).

cnf(c_271,plain,
    ( r2_hidden(X0,X1)
    | k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_270])).

cnf(c_479,plain,
    ( r2_hidden(X0,X1)
    | k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) != k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_271])).

cnf(c_1079,plain,
    ( k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) != k1_xboole_0
    | r2_hidden(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_479])).

cnf(c_13503,plain,
    ( k2_enumset1(X0,X0,X0,X0) != k1_xboole_0
    | r2_hidden(X0,k4_xboole_0(X1,k2_enumset1(X0,X0,X0,X0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_13312,c_1079])).

cnf(c_13726,plain,
    ( k2_enumset1(sK4,sK4,sK4,sK4) != k1_xboole_0
    | r2_hidden(sK4,k4_xboole_0(sK4,k2_enumset1(sK4,sK4,sK4,sK4))) = iProver_top ),
    inference(instantiation,[status(thm)],[c_13503])).

cnf(c_9,plain,
    ( r2_hidden(sK2(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1084,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK2(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_5,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k4_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1088,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1401,plain,
    ( k4_xboole_0(X0,X1) = k1_xboole_0
    | r2_hidden(sK2(k4_xboole_0(X0,X1)),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1084,c_1088])).

cnf(c_18,negated_conjecture,
    ( ~ r2_hidden(X0,sK3)
    | sK4 = X0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1080,plain,
    ( sK4 = X0
    | r2_hidden(X0,sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_5062,plain,
    ( k4_xboole_0(sK3,X0) = k1_xboole_0
    | sK2(k4_xboole_0(sK3,X0)) = sK4 ),
    inference(superposition,[status(thm)],[c_1401,c_1080])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_155,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_10])).

cnf(c_15,plain,
    ( r1_tarski(k2_enumset1(X0,X0,X0,X0),X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_163,plain,
    ( ~ r2_hidden(X0,X1)
    | r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) ),
    inference(prop_impl,[status(thm)],[c_15])).

cnf(c_164,plain,
    ( r1_tarski(k2_enumset1(X0,X0,X0,X0),X1)
    | ~ r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_163])).

cnf(c_282,plain,
    ( ~ r2_hidden(X0,X1)
    | X1 != X2
    | k2_enumset1(X0,X0,X0,X0) != X3
    | k4_xboole_0(X3,X2) = k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_155,c_164])).

cnf(c_283,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_282])).

cnf(c_481,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_283])).

cnf(c_1078,plain,
    ( k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = k1_xboole_0
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_481])).

cnf(c_1400,plain,
    ( k4_xboole_0(k2_enumset1(sK2(X0),sK2(X0),sK2(X0),sK2(X0)),X0) = k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(superposition,[status(thm)],[c_1084,c_1078])).

cnf(c_5177,plain,
    ( k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),k4_xboole_0(sK3,X0)) = k1_xboole_0
    | k4_xboole_0(sK3,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5062,c_1400])).

cnf(c_13539,plain,
    ( k2_enumset1(sK4,sK4,sK4,sK4) = k1_xboole_0
    | k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_13312,c_5177])).

cnf(c_17,plain,
    ( ~ r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)
    | ~ r2_hidden(X0,X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1081,plain,
    ( r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) != iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_13313,plain,
    ( r2_hidden(X0,k4_xboole_0(X1,k2_enumset1(X0,X0,X0,X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_13174,c_1081])).

cnf(c_13365,plain,
    ( r2_hidden(sK4,k4_xboole_0(sK4,k2_enumset1(sK4,sK4,sK4,sK4))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_13313])).

cnf(c_1866,plain,
    ( ~ r2_hidden(sK2(sK3),sK3)
    | sK4 = sK2(sK3) ),
    inference(instantiation,[status(thm)],[c_18])).

cnf(c_682,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1248,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(sK2(sK3),sK3)
    | X0 != sK2(sK3)
    | X1 != sK3 ),
    inference(instantiation,[status(thm)],[c_682])).

cnf(c_1710,plain,
    ( r2_hidden(X0,sK3)
    | ~ r2_hidden(sK2(sK3),sK3)
    | X0 != sK2(sK3)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_1248])).

cnf(c_1712,plain,
    ( ~ r2_hidden(sK2(sK3),sK3)
    | r2_hidden(sK4,sK3)
    | sK3 != sK3
    | sK4 != sK2(sK3) ),
    inference(instantiation,[status(thm)],[c_1710])).

cnf(c_680,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1278,plain,
    ( k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) != X0
    | k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) = k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4))
    | k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4)) != X0 ),
    inference(instantiation,[status(thm)],[c_680])).

cnf(c_1461,plain,
    ( k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) = k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4))
    | k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) != k1_xboole_0
    | k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4)) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1278])).

cnf(c_1460,plain,
    ( ~ r2_hidden(sK4,sK3)
    | k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_481])).

cnf(c_679,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1381,plain,
    ( k4_xboole_0(sK3,sK3) = k4_xboole_0(sK3,sK3) ),
    inference(instantiation,[status(thm)],[c_679])).

cnf(c_12,plain,
    ( X0 = X1
    | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1280,plain,
    ( k4_xboole_0(sK3,X0) != k4_xboole_0(X0,sK3)
    | sK3 = X0 ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1380,plain,
    ( k4_xboole_0(sK3,sK3) != k4_xboole_0(sK3,sK3)
    | sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_1280])).

cnf(c_1218,plain,
    ( k2_enumset1(sK4,sK4,sK4,sK4) = sK3
    | k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) != k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4)) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1212,plain,
    ( r2_hidden(sK2(sK3),sK3)
    | k1_xboole_0 = sK3 ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_19,negated_conjecture,
    ( k1_xboole_0 != sK3 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_20,negated_conjecture,
    ( k2_enumset1(sK4,sK4,sK4,sK4) != sK3 ),
    inference(cnf_transformation,[],[f63])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_13726,c_13539,c_13365,c_1866,c_1712,c_1461,c_1460,c_1381,c_1380,c_1218,c_1212,c_19,c_20])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 14:11:22 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.84/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.84/0.99  
% 2.84/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.84/0.99  
% 2.84/0.99  ------  iProver source info
% 2.84/0.99  
% 2.84/0.99  git: date: 2020-06-30 10:37:57 +0100
% 2.84/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.84/0.99  git: non_committed_changes: false
% 2.84/0.99  git: last_make_outside_of_git: false
% 2.84/0.99  
% 2.84/0.99  ------ 
% 2.84/0.99  
% 2.84/0.99  ------ Input Options
% 2.84/0.99  
% 2.84/0.99  --out_options                           all
% 2.84/0.99  --tptp_safe_out                         true
% 2.84/0.99  --problem_path                          ""
% 2.84/0.99  --include_path                          ""
% 2.84/0.99  --clausifier                            res/vclausify_rel
% 2.84/0.99  --clausifier_options                    --mode clausify
% 2.84/0.99  --stdin                                 false
% 2.84/0.99  --stats_out                             all
% 2.84/0.99  
% 2.84/0.99  ------ General Options
% 2.84/0.99  
% 2.84/0.99  --fof                                   false
% 2.84/0.99  --time_out_real                         305.
% 2.84/0.99  --time_out_virtual                      -1.
% 2.84/0.99  --symbol_type_check                     false
% 2.84/0.99  --clausify_out                          false
% 2.84/0.99  --sig_cnt_out                           false
% 2.84/0.99  --trig_cnt_out                          false
% 2.84/0.99  --trig_cnt_out_tolerance                1.
% 2.84/0.99  --trig_cnt_out_sk_spl                   false
% 2.84/0.99  --abstr_cl_out                          false
% 2.84/0.99  
% 2.84/0.99  ------ Global Options
% 2.84/0.99  
% 2.84/0.99  --schedule                              default
% 2.84/0.99  --add_important_lit                     false
% 2.84/0.99  --prop_solver_per_cl                    1000
% 2.84/0.99  --min_unsat_core                        false
% 2.84/0.99  --soft_assumptions                      false
% 2.84/0.99  --soft_lemma_size                       3
% 2.84/0.99  --prop_impl_unit_size                   0
% 2.84/0.99  --prop_impl_unit                        []
% 2.84/0.99  --share_sel_clauses                     true
% 2.84/0.99  --reset_solvers                         false
% 2.84/0.99  --bc_imp_inh                            [conj_cone]
% 2.84/0.99  --conj_cone_tolerance                   3.
% 2.84/0.99  --extra_neg_conj                        none
% 2.84/0.99  --large_theory_mode                     true
% 2.84/0.99  --prolific_symb_bound                   200
% 2.84/0.99  --lt_threshold                          2000
% 2.84/0.99  --clause_weak_htbl                      true
% 2.84/0.99  --gc_record_bc_elim                     false
% 2.84/0.99  
% 2.84/0.99  ------ Preprocessing Options
% 2.84/0.99  
% 2.84/0.99  --preprocessing_flag                    true
% 2.84/0.99  --time_out_prep_mult                    0.1
% 2.84/0.99  --splitting_mode                        input
% 2.84/0.99  --splitting_grd                         true
% 2.84/0.99  --splitting_cvd                         false
% 2.84/0.99  --splitting_cvd_svl                     false
% 2.84/0.99  --splitting_nvd                         32
% 2.84/0.99  --sub_typing                            true
% 2.84/0.99  --prep_gs_sim                           true
% 2.84/0.99  --prep_unflatten                        true
% 2.84/0.99  --prep_res_sim                          true
% 2.84/0.99  --prep_upred                            true
% 2.84/0.99  --prep_sem_filter                       exhaustive
% 2.84/0.99  --prep_sem_filter_out                   false
% 2.84/0.99  --pred_elim                             true
% 2.84/0.99  --res_sim_input                         true
% 2.84/0.99  --eq_ax_congr_red                       true
% 2.84/0.99  --pure_diseq_elim                       true
% 2.84/0.99  --brand_transform                       false
% 2.84/0.99  --non_eq_to_eq                          false
% 2.84/0.99  --prep_def_merge                        true
% 2.84/0.99  --prep_def_merge_prop_impl              false
% 2.84/0.99  --prep_def_merge_mbd                    true
% 2.84/0.99  --prep_def_merge_tr_red                 false
% 2.84/0.99  --prep_def_merge_tr_cl                  false
% 2.84/0.99  --smt_preprocessing                     true
% 2.84/0.99  --smt_ac_axioms                         fast
% 2.84/0.99  --preprocessed_out                      false
% 2.84/0.99  --preprocessed_stats                    false
% 2.84/0.99  
% 2.84/0.99  ------ Abstraction refinement Options
% 2.84/0.99  
% 2.84/0.99  --abstr_ref                             []
% 2.84/0.99  --abstr_ref_prep                        false
% 2.84/0.99  --abstr_ref_until_sat                   false
% 2.84/0.99  --abstr_ref_sig_restrict                funpre
% 2.84/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.84/0.99  --abstr_ref_under                       []
% 2.84/0.99  
% 2.84/0.99  ------ SAT Options
% 2.84/0.99  
% 2.84/0.99  --sat_mode                              false
% 2.84/0.99  --sat_fm_restart_options                ""
% 2.84/0.99  --sat_gr_def                            false
% 2.84/0.99  --sat_epr_types                         true
% 2.84/0.99  --sat_non_cyclic_types                  false
% 2.84/0.99  --sat_finite_models                     false
% 2.84/0.99  --sat_fm_lemmas                         false
% 2.84/0.99  --sat_fm_prep                           false
% 2.84/0.99  --sat_fm_uc_incr                        true
% 2.84/0.99  --sat_out_model                         small
% 2.84/0.99  --sat_out_clauses                       false
% 2.84/0.99  
% 2.84/0.99  ------ QBF Options
% 2.84/0.99  
% 2.84/0.99  --qbf_mode                              false
% 2.84/0.99  --qbf_elim_univ                         false
% 2.84/0.99  --qbf_dom_inst                          none
% 2.84/0.99  --qbf_dom_pre_inst                      false
% 2.84/0.99  --qbf_sk_in                             false
% 2.84/0.99  --qbf_pred_elim                         true
% 2.84/0.99  --qbf_split                             512
% 2.84/0.99  
% 2.84/0.99  ------ BMC1 Options
% 2.84/0.99  
% 2.84/0.99  --bmc1_incremental                      false
% 2.84/0.99  --bmc1_axioms                           reachable_all
% 2.84/0.99  --bmc1_min_bound                        0
% 2.84/0.99  --bmc1_max_bound                        -1
% 2.84/0.99  --bmc1_max_bound_default                -1
% 2.84/0.99  --bmc1_symbol_reachability              true
% 2.84/0.99  --bmc1_property_lemmas                  false
% 2.84/0.99  --bmc1_k_induction                      false
% 2.84/0.99  --bmc1_non_equiv_states                 false
% 2.84/0.99  --bmc1_deadlock                         false
% 2.84/0.99  --bmc1_ucm                              false
% 2.84/0.99  --bmc1_add_unsat_core                   none
% 2.84/0.99  --bmc1_unsat_core_children              false
% 2.84/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.84/0.99  --bmc1_out_stat                         full
% 2.84/0.99  --bmc1_ground_init                      false
% 2.84/0.99  --bmc1_pre_inst_next_state              false
% 2.84/0.99  --bmc1_pre_inst_state                   false
% 2.84/0.99  --bmc1_pre_inst_reach_state             false
% 2.84/0.99  --bmc1_out_unsat_core                   false
% 2.84/0.99  --bmc1_aig_witness_out                  false
% 2.84/0.99  --bmc1_verbose                          false
% 2.84/0.99  --bmc1_dump_clauses_tptp                false
% 2.84/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.84/0.99  --bmc1_dump_file                        -
% 2.84/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.84/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.84/0.99  --bmc1_ucm_extend_mode                  1
% 2.84/0.99  --bmc1_ucm_init_mode                    2
% 2.84/0.99  --bmc1_ucm_cone_mode                    none
% 2.84/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.84/0.99  --bmc1_ucm_relax_model                  4
% 2.84/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.84/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.84/0.99  --bmc1_ucm_layered_model                none
% 2.84/0.99  --bmc1_ucm_max_lemma_size               10
% 2.84/0.99  
% 2.84/0.99  ------ AIG Options
% 2.84/0.99  
% 2.84/0.99  --aig_mode                              false
% 2.84/0.99  
% 2.84/0.99  ------ Instantiation Options
% 2.84/0.99  
% 2.84/0.99  --instantiation_flag                    true
% 2.84/0.99  --inst_sos_flag                         false
% 2.84/0.99  --inst_sos_phase                        true
% 2.84/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.84/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.84/0.99  --inst_lit_sel_side                     num_symb
% 2.84/0.99  --inst_solver_per_active                1400
% 2.84/0.99  --inst_solver_calls_frac                1.
% 2.84/0.99  --inst_passive_queue_type               priority_queues
% 2.84/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.84/0.99  --inst_passive_queues_freq              [25;2]
% 2.84/0.99  --inst_dismatching                      true
% 2.84/0.99  --inst_eager_unprocessed_to_passive     true
% 2.84/0.99  --inst_prop_sim_given                   true
% 2.84/0.99  --inst_prop_sim_new                     false
% 2.84/0.99  --inst_subs_new                         false
% 2.84/0.99  --inst_eq_res_simp                      false
% 2.84/0.99  --inst_subs_given                       false
% 2.84/0.99  --inst_orphan_elimination               true
% 2.84/0.99  --inst_learning_loop_flag               true
% 2.84/0.99  --inst_learning_start                   3000
% 2.84/0.99  --inst_learning_factor                  2
% 2.84/0.99  --inst_start_prop_sim_after_learn       3
% 2.84/0.99  --inst_sel_renew                        solver
% 2.84/0.99  --inst_lit_activity_flag                true
% 2.84/0.99  --inst_restr_to_given                   false
% 2.84/0.99  --inst_activity_threshold               500
% 2.84/0.99  --inst_out_proof                        true
% 2.84/0.99  
% 2.84/0.99  ------ Resolution Options
% 2.84/0.99  
% 2.84/0.99  --resolution_flag                       true
% 2.84/0.99  --res_lit_sel                           adaptive
% 2.84/0.99  --res_lit_sel_side                      none
% 2.84/0.99  --res_ordering                          kbo
% 2.84/0.99  --res_to_prop_solver                    active
% 2.84/0.99  --res_prop_simpl_new                    false
% 2.84/0.99  --res_prop_simpl_given                  true
% 2.84/0.99  --res_passive_queue_type                priority_queues
% 2.84/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.84/0.99  --res_passive_queues_freq               [15;5]
% 2.84/0.99  --res_forward_subs                      full
% 2.84/0.99  --res_backward_subs                     full
% 2.84/0.99  --res_forward_subs_resolution           true
% 2.84/0.99  --res_backward_subs_resolution          true
% 2.84/0.99  --res_orphan_elimination                true
% 2.84/0.99  --res_time_limit                        2.
% 2.84/0.99  --res_out_proof                         true
% 2.84/0.99  
% 2.84/0.99  ------ Superposition Options
% 2.84/0.99  
% 2.84/0.99  --superposition_flag                    true
% 2.84/0.99  --sup_passive_queue_type                priority_queues
% 2.84/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.84/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.84/0.99  --demod_completeness_check              fast
% 2.84/0.99  --demod_use_ground                      true
% 2.84/0.99  --sup_to_prop_solver                    passive
% 2.84/0.99  --sup_prop_simpl_new                    true
% 2.84/0.99  --sup_prop_simpl_given                  true
% 2.84/0.99  --sup_fun_splitting                     false
% 2.84/0.99  --sup_smt_interval                      50000
% 2.84/0.99  
% 2.84/0.99  ------ Superposition Simplification Setup
% 2.84/0.99  
% 2.84/0.99  --sup_indices_passive                   []
% 2.84/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.84/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.84/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.84/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.84/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.84/0.99  --sup_full_bw                           [BwDemod]
% 2.84/0.99  --sup_immed_triv                        [TrivRules]
% 2.84/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.84/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.84/0.99  --sup_immed_bw_main                     []
% 2.84/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.84/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.84/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.84/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.84/0.99  
% 2.84/0.99  ------ Combination Options
% 2.84/0.99  
% 2.84/0.99  --comb_res_mult                         3
% 2.84/0.99  --comb_sup_mult                         2
% 2.84/0.99  --comb_inst_mult                        10
% 2.84/0.99  
% 2.84/0.99  ------ Debug Options
% 2.84/0.99  
% 2.84/0.99  --dbg_backtrace                         false
% 2.84/0.99  --dbg_dump_prop_clauses                 false
% 2.84/0.99  --dbg_dump_prop_clauses_file            -
% 2.84/0.99  --dbg_out_stat                          false
% 2.84/0.99  ------ Parsing...
% 2.84/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.84/0.99  
% 2.84/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.84/0.99  
% 2.84/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.84/0.99  
% 2.84/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.84/0.99  ------ Proving...
% 2.84/0.99  ------ Problem Properties 
% 2.84/0.99  
% 2.84/0.99  
% 2.84/0.99  clauses                                 19
% 2.84/0.99  conjectures                             3
% 2.84/0.99  EPR                                     3
% 2.84/0.99  Horn                                    12
% 2.84/0.99  unary                                   2
% 2.84/0.99  binary                                  12
% 2.84/0.99  lits                                    42
% 2.84/0.99  lits eq                                 13
% 2.84/0.99  fd_pure                                 0
% 2.84/0.99  fd_pseudo                               0
% 2.84/0.99  fd_cond                                 2
% 2.84/0.99  fd_pseudo_cond                          4
% 2.84/0.99  AC symbols                              0
% 2.84/0.99  
% 2.84/0.99  ------ Schedule dynamic 5 is on 
% 2.84/0.99  
% 2.84/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.84/0.99  
% 2.84/0.99  
% 2.84/0.99  ------ 
% 2.84/0.99  Current options:
% 2.84/0.99  ------ 
% 2.84/0.99  
% 2.84/0.99  ------ Input Options
% 2.84/0.99  
% 2.84/0.99  --out_options                           all
% 2.84/0.99  --tptp_safe_out                         true
% 2.84/0.99  --problem_path                          ""
% 2.84/0.99  --include_path                          ""
% 2.84/0.99  --clausifier                            res/vclausify_rel
% 2.84/0.99  --clausifier_options                    --mode clausify
% 2.84/0.99  --stdin                                 false
% 2.84/0.99  --stats_out                             all
% 2.84/0.99  
% 2.84/0.99  ------ General Options
% 2.84/0.99  
% 2.84/0.99  --fof                                   false
% 2.84/0.99  --time_out_real                         305.
% 2.84/0.99  --time_out_virtual                      -1.
% 2.84/0.99  --symbol_type_check                     false
% 2.84/0.99  --clausify_out                          false
% 2.84/0.99  --sig_cnt_out                           false
% 2.84/0.99  --trig_cnt_out                          false
% 2.84/0.99  --trig_cnt_out_tolerance                1.
% 2.84/0.99  --trig_cnt_out_sk_spl                   false
% 2.84/0.99  --abstr_cl_out                          false
% 2.84/0.99  
% 2.84/0.99  ------ Global Options
% 2.84/0.99  
% 2.84/0.99  --schedule                              default
% 2.84/0.99  --add_important_lit                     false
% 2.84/0.99  --prop_solver_per_cl                    1000
% 2.84/0.99  --min_unsat_core                        false
% 2.84/0.99  --soft_assumptions                      false
% 2.84/0.99  --soft_lemma_size                       3
% 2.84/0.99  --prop_impl_unit_size                   0
% 2.84/0.99  --prop_impl_unit                        []
% 2.84/0.99  --share_sel_clauses                     true
% 2.84/0.99  --reset_solvers                         false
% 2.84/0.99  --bc_imp_inh                            [conj_cone]
% 2.84/0.99  --conj_cone_tolerance                   3.
% 2.84/0.99  --extra_neg_conj                        none
% 2.84/0.99  --large_theory_mode                     true
% 2.84/0.99  --prolific_symb_bound                   200
% 2.84/0.99  --lt_threshold                          2000
% 2.84/0.99  --clause_weak_htbl                      true
% 2.84/0.99  --gc_record_bc_elim                     false
% 2.84/0.99  
% 2.84/0.99  ------ Preprocessing Options
% 2.84/0.99  
% 2.84/0.99  --preprocessing_flag                    true
% 2.84/0.99  --time_out_prep_mult                    0.1
% 2.84/0.99  --splitting_mode                        input
% 2.84/0.99  --splitting_grd                         true
% 2.84/0.99  --splitting_cvd                         false
% 2.84/0.99  --splitting_cvd_svl                     false
% 2.84/0.99  --splitting_nvd                         32
% 2.84/0.99  --sub_typing                            true
% 2.84/0.99  --prep_gs_sim                           true
% 2.84/0.99  --prep_unflatten                        true
% 2.84/0.99  --prep_res_sim                          true
% 2.84/0.99  --prep_upred                            true
% 2.84/0.99  --prep_sem_filter                       exhaustive
% 2.84/0.99  --prep_sem_filter_out                   false
% 2.84/0.99  --pred_elim                             true
% 2.84/0.99  --res_sim_input                         true
% 2.84/0.99  --eq_ax_congr_red                       true
% 2.84/0.99  --pure_diseq_elim                       true
% 2.84/0.99  --brand_transform                       false
% 2.84/0.99  --non_eq_to_eq                          false
% 2.84/0.99  --prep_def_merge                        true
% 2.84/0.99  --prep_def_merge_prop_impl              false
% 2.84/0.99  --prep_def_merge_mbd                    true
% 2.84/0.99  --prep_def_merge_tr_red                 false
% 2.84/0.99  --prep_def_merge_tr_cl                  false
% 2.84/0.99  --smt_preprocessing                     true
% 2.84/0.99  --smt_ac_axioms                         fast
% 2.84/0.99  --preprocessed_out                      false
% 2.84/0.99  --preprocessed_stats                    false
% 2.84/0.99  
% 2.84/0.99  ------ Abstraction refinement Options
% 2.84/0.99  
% 2.84/0.99  --abstr_ref                             []
% 2.84/0.99  --abstr_ref_prep                        false
% 2.84/0.99  --abstr_ref_until_sat                   false
% 2.84/0.99  --abstr_ref_sig_restrict                funpre
% 2.84/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.84/0.99  --abstr_ref_under                       []
% 2.84/0.99  
% 2.84/0.99  ------ SAT Options
% 2.84/0.99  
% 2.84/0.99  --sat_mode                              false
% 2.84/0.99  --sat_fm_restart_options                ""
% 2.84/0.99  --sat_gr_def                            false
% 2.84/0.99  --sat_epr_types                         true
% 2.84/0.99  --sat_non_cyclic_types                  false
% 2.84/0.99  --sat_finite_models                     false
% 2.84/0.99  --sat_fm_lemmas                         false
% 2.84/0.99  --sat_fm_prep                           false
% 2.84/0.99  --sat_fm_uc_incr                        true
% 2.84/0.99  --sat_out_model                         small
% 2.84/0.99  --sat_out_clauses                       false
% 2.84/0.99  
% 2.84/0.99  ------ QBF Options
% 2.84/0.99  
% 2.84/0.99  --qbf_mode                              false
% 2.84/0.99  --qbf_elim_univ                         false
% 2.84/0.99  --qbf_dom_inst                          none
% 2.84/0.99  --qbf_dom_pre_inst                      false
% 2.84/0.99  --qbf_sk_in                             false
% 2.84/0.99  --qbf_pred_elim                         true
% 2.84/0.99  --qbf_split                             512
% 2.84/0.99  
% 2.84/0.99  ------ BMC1 Options
% 2.84/0.99  
% 2.84/0.99  --bmc1_incremental                      false
% 2.84/0.99  --bmc1_axioms                           reachable_all
% 2.84/0.99  --bmc1_min_bound                        0
% 2.84/0.99  --bmc1_max_bound                        -1
% 2.84/0.99  --bmc1_max_bound_default                -1
% 2.84/0.99  --bmc1_symbol_reachability              true
% 2.84/0.99  --bmc1_property_lemmas                  false
% 2.84/0.99  --bmc1_k_induction                      false
% 2.84/0.99  --bmc1_non_equiv_states                 false
% 2.84/0.99  --bmc1_deadlock                         false
% 2.84/0.99  --bmc1_ucm                              false
% 2.84/0.99  --bmc1_add_unsat_core                   none
% 2.84/0.99  --bmc1_unsat_core_children              false
% 2.84/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.84/0.99  --bmc1_out_stat                         full
% 2.84/0.99  --bmc1_ground_init                      false
% 2.84/0.99  --bmc1_pre_inst_next_state              false
% 2.84/0.99  --bmc1_pre_inst_state                   false
% 2.84/0.99  --bmc1_pre_inst_reach_state             false
% 2.84/0.99  --bmc1_out_unsat_core                   false
% 2.84/0.99  --bmc1_aig_witness_out                  false
% 2.84/0.99  --bmc1_verbose                          false
% 2.84/0.99  --bmc1_dump_clauses_tptp                false
% 2.84/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.84/0.99  --bmc1_dump_file                        -
% 2.84/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.84/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.84/0.99  --bmc1_ucm_extend_mode                  1
% 2.84/0.99  --bmc1_ucm_init_mode                    2
% 2.84/0.99  --bmc1_ucm_cone_mode                    none
% 2.84/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.84/0.99  --bmc1_ucm_relax_model                  4
% 2.84/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.84/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.84/0.99  --bmc1_ucm_layered_model                none
% 2.84/0.99  --bmc1_ucm_max_lemma_size               10
% 2.84/0.99  
% 2.84/0.99  ------ AIG Options
% 2.84/0.99  
% 2.84/0.99  --aig_mode                              false
% 2.84/0.99  
% 2.84/0.99  ------ Instantiation Options
% 2.84/0.99  
% 2.84/0.99  --instantiation_flag                    true
% 2.84/0.99  --inst_sos_flag                         false
% 2.84/0.99  --inst_sos_phase                        true
% 2.84/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.84/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.84/0.99  --inst_lit_sel_side                     none
% 2.84/0.99  --inst_solver_per_active                1400
% 2.84/0.99  --inst_solver_calls_frac                1.
% 2.84/0.99  --inst_passive_queue_type               priority_queues
% 2.84/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.84/0.99  --inst_passive_queues_freq              [25;2]
% 2.84/0.99  --inst_dismatching                      true
% 2.84/0.99  --inst_eager_unprocessed_to_passive     true
% 2.84/0.99  --inst_prop_sim_given                   true
% 2.84/0.99  --inst_prop_sim_new                     false
% 2.84/0.99  --inst_subs_new                         false
% 2.84/0.99  --inst_eq_res_simp                      false
% 2.84/0.99  --inst_subs_given                       false
% 2.84/0.99  --inst_orphan_elimination               true
% 2.84/0.99  --inst_learning_loop_flag               true
% 2.84/0.99  --inst_learning_start                   3000
% 2.84/0.99  --inst_learning_factor                  2
% 2.84/0.99  --inst_start_prop_sim_after_learn       3
% 2.84/0.99  --inst_sel_renew                        solver
% 2.84/0.99  --inst_lit_activity_flag                true
% 2.84/0.99  --inst_restr_to_given                   false
% 2.84/0.99  --inst_activity_threshold               500
% 2.84/0.99  --inst_out_proof                        true
% 2.84/0.99  
% 2.84/0.99  ------ Resolution Options
% 2.84/0.99  
% 2.84/0.99  --resolution_flag                       false
% 2.84/0.99  --res_lit_sel                           adaptive
% 2.84/0.99  --res_lit_sel_side                      none
% 2.84/0.99  --res_ordering                          kbo
% 2.84/0.99  --res_to_prop_solver                    active
% 2.84/0.99  --res_prop_simpl_new                    false
% 2.84/0.99  --res_prop_simpl_given                  true
% 2.84/0.99  --res_passive_queue_type                priority_queues
% 2.84/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.84/0.99  --res_passive_queues_freq               [15;5]
% 2.84/0.99  --res_forward_subs                      full
% 2.84/0.99  --res_backward_subs                     full
% 2.84/0.99  --res_forward_subs_resolution           true
% 2.84/0.99  --res_backward_subs_resolution          true
% 2.84/0.99  --res_orphan_elimination                true
% 2.84/0.99  --res_time_limit                        2.
% 2.84/0.99  --res_out_proof                         true
% 2.84/0.99  
% 2.84/0.99  ------ Superposition Options
% 2.84/0.99  
% 2.84/0.99  --superposition_flag                    true
% 2.84/0.99  --sup_passive_queue_type                priority_queues
% 2.84/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.84/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.84/0.99  --demod_completeness_check              fast
% 2.84/0.99  --demod_use_ground                      true
% 2.84/0.99  --sup_to_prop_solver                    passive
% 2.84/0.99  --sup_prop_simpl_new                    true
% 2.84/0.99  --sup_prop_simpl_given                  true
% 2.84/0.99  --sup_fun_splitting                     false
% 2.84/0.99  --sup_smt_interval                      50000
% 2.84/0.99  
% 2.84/0.99  ------ Superposition Simplification Setup
% 2.84/0.99  
% 2.84/0.99  --sup_indices_passive                   []
% 2.84/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.84/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.84/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.84/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.84/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.84/0.99  --sup_full_bw                           [BwDemod]
% 2.84/0.99  --sup_immed_triv                        [TrivRules]
% 2.84/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.84/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.84/0.99  --sup_immed_bw_main                     []
% 2.84/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.84/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.84/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.84/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.84/0.99  
% 2.84/0.99  ------ Combination Options
% 2.84/0.99  
% 2.84/0.99  --comb_res_mult                         3
% 2.84/0.99  --comb_sup_mult                         2
% 2.84/0.99  --comb_inst_mult                        10
% 2.84/0.99  
% 2.84/0.99  ------ Debug Options
% 2.84/0.99  
% 2.84/0.99  --dbg_backtrace                         false
% 2.84/0.99  --dbg_dump_prop_clauses                 false
% 2.84/0.99  --dbg_dump_prop_clauses_file            -
% 2.84/0.99  --dbg_out_stat                          false
% 2.84/0.99  
% 2.84/0.99  
% 2.84/0.99  
% 2.84/0.99  
% 2.84/0.99  ------ Proving...
% 2.84/0.99  
% 2.84/0.99  
% 2.84/0.99  % SZS status Theorem for theBenchmark.p
% 2.84/0.99  
% 2.84/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.84/0.99  
% 2.84/0.99  fof(f2,axiom,(
% 2.84/0.99    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f14,plain,(
% 2.84/0.99    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 2.84/0.99    inference(rectify,[],[f2])).
% 2.84/0.99  
% 2.84/0.99  fof(f15,plain,(
% 2.84/0.99    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 2.84/0.99    inference(ennf_transformation,[],[f14])).
% 2.84/0.99  
% 2.84/0.99  fof(f25,plain,(
% 2.84/0.99    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 2.84/0.99    introduced(choice_axiom,[])).
% 2.84/0.99  
% 2.84/0.99  fof(f26,plain,(
% 2.84/0.99    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 2.84/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f15,f25])).
% 2.84/0.99  
% 2.84/0.99  fof(f40,plain,(
% 2.84/0.99    ( ! [X0,X1] : (r2_hidden(sK1(X0,X1),X0) | r1_xboole_0(X0,X1)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f26])).
% 2.84/0.99  
% 2.84/0.99  fof(f41,plain,(
% 2.84/0.99    ( ! [X0,X1] : (r2_hidden(sK1(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f26])).
% 2.84/0.99  
% 2.84/0.99  fof(f1,axiom,(
% 2.84/0.99    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f20,plain,(
% 2.84/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 2.84/0.99    inference(nnf_transformation,[],[f1])).
% 2.84/0.99  
% 2.84/0.99  fof(f21,plain,(
% 2.84/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 2.84/0.99    inference(flattening,[],[f20])).
% 2.84/0.99  
% 2.84/0.99  fof(f22,plain,(
% 2.84/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 2.84/0.99    inference(rectify,[],[f21])).
% 2.84/0.99  
% 2.84/0.99  fof(f23,plain,(
% 2.84/0.99    ! [X2,X1,X0] : (? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((~r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 2.84/0.99    introduced(choice_axiom,[])).
% 2.84/0.99  
% 2.84/0.99  fof(f24,plain,(
% 2.84/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ((r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((~r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 2.84/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f22,f23])).
% 2.84/0.99  
% 2.84/0.99  fof(f35,plain,(
% 2.84/0.99    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 2.84/0.99    inference(cnf_transformation,[],[f24])).
% 2.84/0.99  
% 2.84/0.99  fof(f65,plain,(
% 2.84/0.99    ( ! [X4,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,k4_xboole_0(X0,X1))) )),
% 2.84/0.99    inference(equality_resolution,[],[f35])).
% 2.84/0.99  
% 2.84/0.99  fof(f6,axiom,(
% 2.84/0.99    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f30,plain,(
% 2.84/0.99    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 2.84/0.99    inference(nnf_transformation,[],[f6])).
% 2.84/0.99  
% 2.84/0.99  fof(f47,plain,(
% 2.84/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f30])).
% 2.84/0.99  
% 2.84/0.99  fof(f4,axiom,(
% 2.84/0.99    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f29,plain,(
% 2.84/0.99    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 2.84/0.99    inference(nnf_transformation,[],[f4])).
% 2.84/0.99  
% 2.84/0.99  fof(f44,plain,(
% 2.84/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0) )),
% 2.84/0.99    inference(cnf_transformation,[],[f29])).
% 2.84/0.99  
% 2.84/0.99  fof(f10,axiom,(
% 2.84/0.99    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f31,plain,(
% 2.84/0.99    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 2.84/0.99    inference(nnf_transformation,[],[f10])).
% 2.84/0.99  
% 2.84/0.99  fof(f52,plain,(
% 2.84/0.99    ( ! [X0,X1] : (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f31])).
% 2.84/0.99  
% 2.84/0.99  fof(f7,axiom,(
% 2.84/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f49,plain,(
% 2.84/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f7])).
% 2.84/0.99  
% 2.84/0.99  fof(f8,axiom,(
% 2.84/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f50,plain,(
% 2.84/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f8])).
% 2.84/0.99  
% 2.84/0.99  fof(f9,axiom,(
% 2.84/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f51,plain,(
% 2.84/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f9])).
% 2.84/0.99  
% 2.84/0.99  fof(f58,plain,(
% 2.84/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 2.84/0.99    inference(definition_unfolding,[],[f50,f51])).
% 2.84/0.99  
% 2.84/0.99  fof(f59,plain,(
% 2.84/0.99    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 2.84/0.99    inference(definition_unfolding,[],[f49,f58])).
% 2.84/0.99  
% 2.84/0.99  fof(f61,plain,(
% 2.84/0.99    ( ! [X0,X1] : (r2_hidden(X0,X1) | ~r1_tarski(k2_enumset1(X0,X0,X0,X0),X1)) )),
% 2.84/0.99    inference(definition_unfolding,[],[f52,f59])).
% 2.84/0.99  
% 2.84/0.99  fof(f3,axiom,(
% 2.84/0.99    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f16,plain,(
% 2.84/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 2.84/0.99    inference(ennf_transformation,[],[f3])).
% 2.84/0.99  
% 2.84/0.99  fof(f27,plain,(
% 2.84/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK2(X0),X0))),
% 2.84/0.99    introduced(choice_axiom,[])).
% 2.84/0.99  
% 2.84/0.99  fof(f28,plain,(
% 2.84/0.99    ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0)),
% 2.84/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f16,f27])).
% 2.84/0.99  
% 2.84/0.99  fof(f43,plain,(
% 2.84/0.99    ( ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0) )),
% 2.84/0.99    inference(cnf_transformation,[],[f28])).
% 2.84/0.99  
% 2.84/0.99  fof(f34,plain,(
% 2.84/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 2.84/0.99    inference(cnf_transformation,[],[f24])).
% 2.84/0.99  
% 2.84/0.99  fof(f66,plain,(
% 2.84/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,k4_xboole_0(X0,X1))) )),
% 2.84/0.99    inference(equality_resolution,[],[f34])).
% 2.84/0.99  
% 2.84/0.99  fof(f12,conjecture,(
% 2.84/0.99    ! [X0,X1] : ~(! [X2] : ~(X1 != X2 & r2_hidden(X2,X0)) & k1_xboole_0 != X0 & k1_tarski(X1) != X0)),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f13,negated_conjecture,(
% 2.84/0.99    ~! [X0,X1] : ~(! [X2] : ~(X1 != X2 & r2_hidden(X2,X0)) & k1_xboole_0 != X0 & k1_tarski(X1) != X0)),
% 2.84/0.99    inference(negated_conjecture,[],[f12])).
% 2.84/0.99  
% 2.84/0.99  fof(f19,plain,(
% 2.84/0.99    ? [X0,X1] : (! [X2] : (X1 = X2 | ~r2_hidden(X2,X0)) & k1_xboole_0 != X0 & k1_tarski(X1) != X0)),
% 2.84/0.99    inference(ennf_transformation,[],[f13])).
% 2.84/0.99  
% 2.84/0.99  fof(f32,plain,(
% 2.84/0.99    ? [X0,X1] : (! [X2] : (X1 = X2 | ~r2_hidden(X2,X0)) & k1_xboole_0 != X0 & k1_tarski(X1) != X0) => (! [X2] : (sK4 = X2 | ~r2_hidden(X2,sK3)) & k1_xboole_0 != sK3 & k1_tarski(sK4) != sK3)),
% 2.84/0.99    introduced(choice_axiom,[])).
% 2.84/0.99  
% 2.84/0.99  fof(f33,plain,(
% 2.84/0.99    ! [X2] : (sK4 = X2 | ~r2_hidden(X2,sK3)) & k1_xboole_0 != sK3 & k1_tarski(sK4) != sK3),
% 2.84/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4])],[f19,f32])).
% 2.84/0.99  
% 2.84/0.99  fof(f57,plain,(
% 2.84/0.99    ( ! [X2] : (sK4 = X2 | ~r2_hidden(X2,sK3)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f33])).
% 2.84/0.99  
% 2.84/0.99  fof(f45,plain,(
% 2.84/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f29])).
% 2.84/0.99  
% 2.84/0.99  fof(f53,plain,(
% 2.84/0.99    ( ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f31])).
% 2.84/0.99  
% 2.84/0.99  fof(f60,plain,(
% 2.84/0.99    ( ! [X0,X1] : (r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) | ~r2_hidden(X0,X1)) )),
% 2.84/0.99    inference(definition_unfolding,[],[f53,f59])).
% 2.84/0.99  
% 2.84/0.99  fof(f11,axiom,(
% 2.84/0.99    ! [X0,X1] : ~(r2_hidden(X0,X1) & r1_xboole_0(k1_tarski(X0),X1))),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f18,plain,(
% 2.84/0.99    ! [X0,X1] : (~r2_hidden(X0,X1) | ~r1_xboole_0(k1_tarski(X0),X1))),
% 2.84/0.99    inference(ennf_transformation,[],[f11])).
% 2.84/0.99  
% 2.84/0.99  fof(f54,plain,(
% 2.84/0.99    ( ! [X0,X1] : (~r2_hidden(X0,X1) | ~r1_xboole_0(k1_tarski(X0),X1)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f18])).
% 2.84/0.99  
% 2.84/0.99  fof(f62,plain,(
% 2.84/0.99    ( ! [X0,X1] : (~r2_hidden(X0,X1) | ~r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1)) )),
% 2.84/0.99    inference(definition_unfolding,[],[f54,f59])).
% 2.84/0.99  
% 2.84/0.99  fof(f5,axiom,(
% 2.84/0.99    ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X1,X0) => X0 = X1)),
% 2.84/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.84/0.99  
% 2.84/0.99  fof(f17,plain,(
% 2.84/0.99    ! [X0,X1] : (X0 = X1 | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0))),
% 2.84/0.99    inference(ennf_transformation,[],[f5])).
% 2.84/0.99  
% 2.84/0.99  fof(f46,plain,(
% 2.84/0.99    ( ! [X0,X1] : (X0 = X1 | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0)) )),
% 2.84/0.99    inference(cnf_transformation,[],[f17])).
% 2.84/0.99  
% 2.84/0.99  fof(f56,plain,(
% 2.84/0.99    k1_xboole_0 != sK3),
% 2.84/0.99    inference(cnf_transformation,[],[f33])).
% 2.84/0.99  
% 2.84/0.99  fof(f55,plain,(
% 2.84/0.99    k1_tarski(sK4) != sK3),
% 2.84/0.99    inference(cnf_transformation,[],[f33])).
% 2.84/0.99  
% 2.84/0.99  fof(f63,plain,(
% 2.84/0.99    k2_enumset1(sK4,sK4,sK4,sK4) != sK3),
% 2.84/0.99    inference(definition_unfolding,[],[f55,f59])).
% 2.84/0.99  
% 2.84/0.99  cnf(c_8,plain,
% 2.84/0.99      ( r1_xboole_0(X0,X1) | r2_hidden(sK1(X0,X1),X0) ),
% 2.84/0.99      inference(cnf_transformation,[],[f40]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1085,plain,
% 2.84/0.99      ( r1_xboole_0(X0,X1) = iProver_top
% 2.84/0.99      | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_7,plain,
% 2.84/0.99      ( r1_xboole_0(X0,X1) | r2_hidden(sK1(X0,X1),X1) ),
% 2.84/0.99      inference(cnf_transformation,[],[f41]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1086,plain,
% 2.84/0.99      ( r1_xboole_0(X0,X1) = iProver_top
% 2.84/0.99      | r2_hidden(sK1(X0,X1),X1) = iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_4,plain,
% 2.84/0.99      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X0,k4_xboole_0(X2,X1)) ),
% 2.84/0.99      inference(cnf_transformation,[],[f65]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1089,plain,
% 2.84/0.99      ( r2_hidden(X0,X1) != iProver_top
% 2.84/0.99      | r2_hidden(X0,k4_xboole_0(X2,X1)) != iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1560,plain,
% 2.84/0.99      ( r1_xboole_0(X0,k4_xboole_0(X1,X2)) = iProver_top
% 2.84/0.99      | r2_hidden(sK1(X0,k4_xboole_0(X1,X2)),X2) != iProver_top ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_1086,c_1089]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_13174,plain,
% 2.84/0.99      ( r1_xboole_0(X0,k4_xboole_0(X1,X0)) = iProver_top ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_1085,c_1560]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_14,plain,
% 2.84/0.99      ( ~ r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) = X0 ),
% 2.84/0.99      inference(cnf_transformation,[],[f47]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1082,plain,
% 2.84/0.99      ( k4_xboole_0(X0,X1) = X0 | r1_xboole_0(X0,X1) != iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_13312,plain,
% 2.84/0.99      ( k4_xboole_0(X0,k4_xboole_0(X1,X0)) = X0 ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_13174,c_1082]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_11,plain,
% 2.84/0.99      ( r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0 ),
% 2.84/0.99      inference(cnf_transformation,[],[f44]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_153,plain,
% 2.84/0.99      ( r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0 ),
% 2.84/0.99      inference(prop_impl,[status(thm)],[c_11]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_16,plain,
% 2.84/0.99      ( ~ r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) | r2_hidden(X0,X1) ),
% 2.84/0.99      inference(cnf_transformation,[],[f61]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_161,plain,
% 2.84/0.99      ( r2_hidden(X0,X1) | ~ r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) ),
% 2.84/0.99      inference(prop_impl,[status(thm)],[c_16]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_162,plain,
% 2.84/0.99      ( ~ r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) | r2_hidden(X0,X1) ),
% 2.84/0.99      inference(renaming,[status(thm)],[c_161]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_270,plain,
% 2.84/0.99      ( r2_hidden(X0,X1)
% 2.84/0.99      | X1 != X2
% 2.84/0.99      | k2_enumset1(X0,X0,X0,X0) != X3
% 2.84/0.99      | k4_xboole_0(X3,X2) != k1_xboole_0 ),
% 2.84/0.99      inference(resolution_lifted,[status(thm)],[c_153,c_162]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_271,plain,
% 2.84/0.99      ( r2_hidden(X0,X1)
% 2.84/0.99      | k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) != k1_xboole_0 ),
% 2.84/0.99      inference(unflattening,[status(thm)],[c_270]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_479,plain,
% 2.84/0.99      ( r2_hidden(X0,X1)
% 2.84/0.99      | k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) != k1_xboole_0 ),
% 2.84/0.99      inference(prop_impl,[status(thm)],[c_271]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1079,plain,
% 2.84/0.99      ( k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) != k1_xboole_0
% 2.84/0.99      | r2_hidden(X0,X1) = iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_479]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_13503,plain,
% 2.84/0.99      ( k2_enumset1(X0,X0,X0,X0) != k1_xboole_0
% 2.84/0.99      | r2_hidden(X0,k4_xboole_0(X1,k2_enumset1(X0,X0,X0,X0))) = iProver_top ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_13312,c_1079]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_13726,plain,
% 2.84/0.99      ( k2_enumset1(sK4,sK4,sK4,sK4) != k1_xboole_0
% 2.84/0.99      | r2_hidden(sK4,k4_xboole_0(sK4,k2_enumset1(sK4,sK4,sK4,sK4))) = iProver_top ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_13503]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_9,plain,
% 2.84/0.99      ( r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0 ),
% 2.84/0.99      inference(cnf_transformation,[],[f43]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1084,plain,
% 2.84/0.99      ( k1_xboole_0 = X0 | r2_hidden(sK2(X0),X0) = iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_5,plain,
% 2.84/0.99      ( r2_hidden(X0,X1) | ~ r2_hidden(X0,k4_xboole_0(X1,X2)) ),
% 2.84/0.99      inference(cnf_transformation,[],[f66]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1088,plain,
% 2.84/0.99      ( r2_hidden(X0,X1) = iProver_top
% 2.84/0.99      | r2_hidden(X0,k4_xboole_0(X1,X2)) != iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1401,plain,
% 2.84/0.99      ( k4_xboole_0(X0,X1) = k1_xboole_0
% 2.84/0.99      | r2_hidden(sK2(k4_xboole_0(X0,X1)),X0) = iProver_top ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_1084,c_1088]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_18,negated_conjecture,
% 2.84/0.99      ( ~ r2_hidden(X0,sK3) | sK4 = X0 ),
% 2.84/0.99      inference(cnf_transformation,[],[f57]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1080,plain,
% 2.84/0.99      ( sK4 = X0 | r2_hidden(X0,sK3) != iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_5062,plain,
% 2.84/0.99      ( k4_xboole_0(sK3,X0) = k1_xboole_0
% 2.84/0.99      | sK2(k4_xboole_0(sK3,X0)) = sK4 ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_1401,c_1080]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_10,plain,
% 2.84/0.99      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 2.84/0.99      inference(cnf_transformation,[],[f45]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_155,plain,
% 2.84/0.99      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 2.84/0.99      inference(prop_impl,[status(thm)],[c_10]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_15,plain,
% 2.84/0.99      ( r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) | ~ r2_hidden(X0,X1) ),
% 2.84/0.99      inference(cnf_transformation,[],[f60]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_163,plain,
% 2.84/0.99      ( ~ r2_hidden(X0,X1) | r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) ),
% 2.84/0.99      inference(prop_impl,[status(thm)],[c_15]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_164,plain,
% 2.84/0.99      ( r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) | ~ r2_hidden(X0,X1) ),
% 2.84/0.99      inference(renaming,[status(thm)],[c_163]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_282,plain,
% 2.84/0.99      ( ~ r2_hidden(X0,X1)
% 2.84/0.99      | X1 != X2
% 2.84/0.99      | k2_enumset1(X0,X0,X0,X0) != X3
% 2.84/0.99      | k4_xboole_0(X3,X2) = k1_xboole_0 ),
% 2.84/0.99      inference(resolution_lifted,[status(thm)],[c_155,c_164]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_283,plain,
% 2.84/0.99      ( ~ r2_hidden(X0,X1)
% 2.84/0.99      | k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = k1_xboole_0 ),
% 2.84/0.99      inference(unflattening,[status(thm)],[c_282]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_481,plain,
% 2.84/0.99      ( ~ r2_hidden(X0,X1)
% 2.84/0.99      | k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = k1_xboole_0 ),
% 2.84/0.99      inference(prop_impl,[status(thm)],[c_283]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1078,plain,
% 2.84/0.99      ( k4_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) = k1_xboole_0
% 2.84/0.99      | r2_hidden(X0,X1) != iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_481]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1400,plain,
% 2.84/0.99      ( k4_xboole_0(k2_enumset1(sK2(X0),sK2(X0),sK2(X0),sK2(X0)),X0) = k1_xboole_0
% 2.84/0.99      | k1_xboole_0 = X0 ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_1084,c_1078]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_5177,plain,
% 2.84/0.99      ( k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),k4_xboole_0(sK3,X0)) = k1_xboole_0
% 2.84/0.99      | k4_xboole_0(sK3,X0) = k1_xboole_0 ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_5062,c_1400]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_13539,plain,
% 2.84/0.99      ( k2_enumset1(sK4,sK4,sK4,sK4) = k1_xboole_0
% 2.84/0.99      | k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4)) = k1_xboole_0 ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_13312,c_5177]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_17,plain,
% 2.84/0.99      ( ~ r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) | ~ r2_hidden(X0,X1) ),
% 2.84/0.99      inference(cnf_transformation,[],[f62]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1081,plain,
% 2.84/0.99      ( r1_xboole_0(k2_enumset1(X0,X0,X0,X0),X1) != iProver_top
% 2.84/0.99      | r2_hidden(X0,X1) != iProver_top ),
% 2.84/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_13313,plain,
% 2.84/0.99      ( r2_hidden(X0,k4_xboole_0(X1,k2_enumset1(X0,X0,X0,X0))) != iProver_top ),
% 2.84/0.99      inference(superposition,[status(thm)],[c_13174,c_1081]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_13365,plain,
% 2.84/0.99      ( r2_hidden(sK4,k4_xboole_0(sK4,k2_enumset1(sK4,sK4,sK4,sK4))) != iProver_top ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_13313]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1866,plain,
% 2.84/0.99      ( ~ r2_hidden(sK2(sK3),sK3) | sK4 = sK2(sK3) ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_18]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_682,plain,
% 2.84/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.84/0.99      theory(equality) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1248,plain,
% 2.84/0.99      ( r2_hidden(X0,X1)
% 2.84/0.99      | ~ r2_hidden(sK2(sK3),sK3)
% 2.84/0.99      | X0 != sK2(sK3)
% 2.84/0.99      | X1 != sK3 ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_682]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1710,plain,
% 2.84/0.99      ( r2_hidden(X0,sK3)
% 2.84/0.99      | ~ r2_hidden(sK2(sK3),sK3)
% 2.84/0.99      | X0 != sK2(sK3)
% 2.84/0.99      | sK3 != sK3 ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_1248]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1712,plain,
% 2.84/0.99      ( ~ r2_hidden(sK2(sK3),sK3)
% 2.84/0.99      | r2_hidden(sK4,sK3)
% 2.84/0.99      | sK3 != sK3
% 2.84/0.99      | sK4 != sK2(sK3) ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_1710]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_680,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1278,plain,
% 2.84/0.99      ( k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) != X0
% 2.84/0.99      | k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) = k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4))
% 2.84/0.99      | k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4)) != X0 ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_680]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1461,plain,
% 2.84/0.99      ( k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) = k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4))
% 2.84/0.99      | k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) != k1_xboole_0
% 2.84/0.99      | k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4)) != k1_xboole_0 ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_1278]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1460,plain,
% 2.84/0.99      ( ~ r2_hidden(sK4,sK3)
% 2.84/0.99      | k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) = k1_xboole_0 ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_481]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_679,plain,( X0 = X0 ),theory(equality) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1381,plain,
% 2.84/0.99      ( k4_xboole_0(sK3,sK3) = k4_xboole_0(sK3,sK3) ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_679]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_12,plain,
% 2.84/0.99      ( X0 = X1 | k4_xboole_0(X0,X1) != k4_xboole_0(X1,X0) ),
% 2.84/0.99      inference(cnf_transformation,[],[f46]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1280,plain,
% 2.84/0.99      ( k4_xboole_0(sK3,X0) != k4_xboole_0(X0,sK3) | sK3 = X0 ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_12]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1380,plain,
% 2.84/0.99      ( k4_xboole_0(sK3,sK3) != k4_xboole_0(sK3,sK3) | sK3 = sK3 ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_1280]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1218,plain,
% 2.84/0.99      ( k2_enumset1(sK4,sK4,sK4,sK4) = sK3
% 2.84/0.99      | k4_xboole_0(k2_enumset1(sK4,sK4,sK4,sK4),sK3) != k4_xboole_0(sK3,k2_enumset1(sK4,sK4,sK4,sK4)) ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_12]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_1212,plain,
% 2.84/0.99      ( r2_hidden(sK2(sK3),sK3) | k1_xboole_0 = sK3 ),
% 2.84/0.99      inference(instantiation,[status(thm)],[c_9]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_19,negated_conjecture,
% 2.84/0.99      ( k1_xboole_0 != sK3 ),
% 2.84/0.99      inference(cnf_transformation,[],[f56]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(c_20,negated_conjecture,
% 2.84/0.99      ( k2_enumset1(sK4,sK4,sK4,sK4) != sK3 ),
% 2.84/0.99      inference(cnf_transformation,[],[f63]) ).
% 2.84/0.99  
% 2.84/0.99  cnf(contradiction,plain,
% 2.84/0.99      ( $false ),
% 2.84/0.99      inference(minisat,
% 2.84/0.99                [status(thm)],
% 2.84/0.99                [c_13726,c_13539,c_13365,c_1866,c_1712,c_1461,c_1460,
% 2.84/0.99                 c_1381,c_1380,c_1218,c_1212,c_19,c_20]) ).
% 2.84/0.99  
% 2.84/0.99  
% 2.84/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.84/0.99  
% 2.84/0.99  ------                               Statistics
% 2.84/0.99  
% 2.84/0.99  ------ General
% 2.84/0.99  
% 2.84/0.99  abstr_ref_over_cycles:                  0
% 2.84/0.99  abstr_ref_under_cycles:                 0
% 2.84/0.99  gc_basic_clause_elim:                   0
% 2.84/0.99  forced_gc_time:                         0
% 2.84/0.99  parsing_time:                           0.008
% 2.84/0.99  unif_index_cands_time:                  0.
% 2.84/0.99  unif_index_add_time:                    0.
% 2.84/0.99  orderings_time:                         0.
% 2.84/0.99  out_proof_time:                         0.009
% 2.84/0.99  total_time:                             0.343
% 2.84/0.99  num_of_symbols:                         42
% 2.84/0.99  num_of_terms:                           11408
% 2.84/0.99  
% 2.84/0.99  ------ Preprocessing
% 2.84/0.99  
% 2.84/0.99  num_of_splits:                          0
% 2.84/0.99  num_of_split_atoms:                     0
% 2.84/0.99  num_of_reused_defs:                     0
% 2.84/0.99  num_eq_ax_congr_red:                    26
% 2.84/0.99  num_of_sem_filtered_clauses:            1
% 2.84/0.99  num_of_subtypes:                        0
% 2.84/0.99  monotx_restored_types:                  0
% 2.84/0.99  sat_num_of_epr_types:                   0
% 2.84/0.99  sat_num_of_non_cyclic_types:            0
% 2.84/0.99  sat_guarded_non_collapsed_types:        0
% 2.84/0.99  num_pure_diseq_elim:                    0
% 2.84/0.99  simp_replaced_by:                       0
% 2.84/0.99  res_preprocessed:                       91
% 2.84/0.99  prep_upred:                             0
% 2.84/0.99  prep_unflattend:                        16
% 2.84/0.99  smt_new_axioms:                         0
% 2.84/0.99  pred_elim_cands:                        2
% 2.84/0.99  pred_elim:                              1
% 2.84/0.99  pred_elim_cl:                           2
% 2.84/0.99  pred_elim_cycles:                       3
% 2.84/0.99  merged_defs:                            18
% 2.84/0.99  merged_defs_ncl:                        0
% 2.84/0.99  bin_hyper_res:                          18
% 2.84/0.99  prep_cycles:                            4
% 2.84/0.99  pred_elim_time:                         0.003
% 2.84/0.99  splitting_time:                         0.
% 2.84/0.99  sem_filter_time:                        0.
% 2.84/0.99  monotx_time:                            0.
% 2.84/0.99  subtype_inf_time:                       0.
% 2.84/0.99  
% 2.84/0.99  ------ Problem properties
% 2.84/0.99  
% 2.84/0.99  clauses:                                19
% 2.84/0.99  conjectures:                            3
% 2.84/0.99  epr:                                    3
% 2.84/0.99  horn:                                   12
% 2.84/0.99  ground:                                 2
% 2.84/0.99  unary:                                  2
% 2.84/0.99  binary:                                 12
% 2.84/0.99  lits:                                   42
% 2.84/0.99  lits_eq:                                13
% 2.84/0.99  fd_pure:                                0
% 2.84/0.99  fd_pseudo:                              0
% 2.84/0.99  fd_cond:                                2
% 2.84/0.99  fd_pseudo_cond:                         4
% 2.84/0.99  ac_symbols:                             0
% 2.84/0.99  
% 2.84/0.99  ------ Propositional Solver
% 2.84/0.99  
% 2.84/0.99  prop_solver_calls:                      29
% 2.84/0.99  prop_fast_solver_calls:                 756
% 2.84/0.99  smt_solver_calls:                       0
% 2.84/0.99  smt_fast_solver_calls:                  0
% 2.84/0.99  prop_num_of_clauses:                    4270
% 2.84/0.99  prop_preprocess_simplified:             9042
% 2.84/0.99  prop_fo_subsumed:                       13
% 2.84/0.99  prop_solver_time:                       0.
% 2.84/0.99  smt_solver_time:                        0.
% 2.84/0.99  smt_fast_solver_time:                   0.
% 2.84/0.99  prop_fast_solver_time:                  0.
% 2.84/0.99  prop_unsat_core_time:                   0.
% 2.84/0.99  
% 2.84/0.99  ------ QBF
% 2.84/0.99  
% 2.84/0.99  qbf_q_res:                              0
% 2.84/0.99  qbf_num_tautologies:                    0
% 2.84/0.99  qbf_prep_cycles:                        0
% 2.84/0.99  
% 2.84/0.99  ------ BMC1
% 2.84/0.99  
% 2.84/0.99  bmc1_current_bound:                     -1
% 2.84/0.99  bmc1_last_solved_bound:                 -1
% 2.84/0.99  bmc1_unsat_core_size:                   -1
% 2.84/0.99  bmc1_unsat_core_parents_size:           -1
% 2.84/0.99  bmc1_merge_next_fun:                    0
% 2.84/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.84/0.99  
% 2.84/0.99  ------ Instantiation
% 2.84/0.99  
% 2.84/0.99  inst_num_of_clauses:                    1063
% 2.84/0.99  inst_num_in_passive:                    501
% 2.84/0.99  inst_num_in_active:                     463
% 2.84/0.99  inst_num_in_unprocessed:                102
% 2.84/0.99  inst_num_of_loops:                      560
% 2.84/0.99  inst_num_of_learning_restarts:          0
% 2.84/0.99  inst_num_moves_active_passive:          95
% 2.84/0.99  inst_lit_activity:                      0
% 2.84/0.99  inst_lit_activity_moves:                0
% 2.84/0.99  inst_num_tautologies:                   0
% 2.84/0.99  inst_num_prop_implied:                  0
% 2.84/0.99  inst_num_existing_simplified:           0
% 2.84/0.99  inst_num_eq_res_simplified:             0
% 2.84/0.99  inst_num_child_elim:                    0
% 2.84/0.99  inst_num_of_dismatching_blockings:      1245
% 2.84/0.99  inst_num_of_non_proper_insts:           1443
% 2.84/0.99  inst_num_of_duplicates:                 0
% 2.84/0.99  inst_inst_num_from_inst_to_res:         0
% 2.84/0.99  inst_dismatching_checking_time:         0.
% 2.84/0.99  
% 2.84/0.99  ------ Resolution
% 2.84/0.99  
% 2.84/0.99  res_num_of_clauses:                     0
% 2.84/0.99  res_num_in_passive:                     0
% 2.84/0.99  res_num_in_active:                      0
% 2.84/0.99  res_num_of_loops:                       95
% 2.84/0.99  res_forward_subset_subsumed:            117
% 2.84/0.99  res_backward_subset_subsumed:           14
% 2.84/0.99  res_forward_subsumed:                   0
% 2.84/0.99  res_backward_subsumed:                  0
% 2.84/0.99  res_forward_subsumption_resolution:     0
% 2.84/0.99  res_backward_subsumption_resolution:    0
% 2.84/0.99  res_clause_to_clause_subsumption:       2090
% 2.84/0.99  res_orphan_elimination:                 0
% 2.84/0.99  res_tautology_del:                      238
% 2.84/0.99  res_num_eq_res_simplified:              0
% 2.84/0.99  res_num_sel_changes:                    0
% 2.84/0.99  res_moves_from_active_to_pass:          0
% 2.84/0.99  
% 2.84/0.99  ------ Superposition
% 2.84/0.99  
% 2.84/0.99  sup_time_total:                         0.
% 2.84/0.99  sup_time_generating:                    0.
% 2.84/0.99  sup_time_sim_full:                      0.
% 2.84/0.99  sup_time_sim_immed:                     0.
% 2.84/0.99  
% 2.84/0.99  sup_num_of_clauses:                     468
% 2.84/0.99  sup_num_in_active:                      109
% 2.84/0.99  sup_num_in_passive:                     359
% 2.84/0.99  sup_num_of_loops:                       110
% 2.84/0.99  sup_fw_superposition:                   409
% 2.84/0.99  sup_bw_superposition:                   476
% 2.84/0.99  sup_immediate_simplified:               298
% 2.84/0.99  sup_given_eliminated:                   0
% 2.84/0.99  comparisons_done:                       0
% 2.84/0.99  comparisons_avoided:                    61
% 2.84/0.99  
% 2.84/0.99  ------ Simplifications
% 2.84/0.99  
% 2.84/0.99  
% 2.84/0.99  sim_fw_subset_subsumed:                 130
% 2.84/0.99  sim_bw_subset_subsumed:                 10
% 2.84/0.99  sim_fw_subsumed:                        97
% 2.84/0.99  sim_bw_subsumed:                        12
% 2.84/0.99  sim_fw_subsumption_res:                 4
% 2.84/0.99  sim_bw_subsumption_res:                 1
% 2.84/0.99  sim_tautology_del:                      15
% 2.84/0.99  sim_eq_tautology_del:                   14
% 2.84/0.99  sim_eq_res_simp:                        1
% 2.84/0.99  sim_fw_demodulated:                     37
% 2.84/0.99  sim_bw_demodulated:                     0
% 2.84/0.99  sim_light_normalised:                   48
% 2.84/0.99  sim_joinable_taut:                      0
% 2.84/0.99  sim_joinable_simp:                      0
% 2.84/0.99  sim_ac_normalised:                      0
% 2.84/0.99  sim_smt_subsumption:                    0
% 2.84/0.99  
%------------------------------------------------------------------------------
