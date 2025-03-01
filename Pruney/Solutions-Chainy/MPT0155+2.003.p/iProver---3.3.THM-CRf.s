%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n012.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:26:58 EST 2020

% Result     : Theorem 3.63s
% Output     : CNFRefutation 3.63s
% Verified   : 
% Statistics : Number of formulae       :   56 (  73 expanded)
%              Number of clauses        :   17 (  17 expanded)
%              Number of leaves         :   12 (  18 expanded)
%              Depth                    :   11
%              Number of atoms          :  261 ( 435 expanded)
%              Number of equality atoms :  139 ( 228 expanded)
%              Maximal formula depth    :   13 (   6 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f29,plain,(
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
    inference(nnf_transformation,[],[f17])).

fof(f30,plain,(
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
    inference(flattening,[],[f29])).

fof(f31,plain,(
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
    inference(rectify,[],[f30])).

fof(f32,plain,(
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
     => ( ( ( sK2(X0,X1,X2,X3) != X2
            & sK2(X0,X1,X2,X3) != X1
            & sK2(X0,X1,X2,X3) != X0 )
          | ~ r2_hidden(sK2(X0,X1,X2,X3),X3) )
        & ( sK2(X0,X1,X2,X3) = X2
          | sK2(X0,X1,X2,X3) = X1
          | sK2(X0,X1,X2,X3) = X0
          | r2_hidden(sK2(X0,X1,X2,X3),X3) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ( ( ( sK2(X0,X1,X2,X3) != X2
              & sK2(X0,X1,X2,X3) != X1
              & sK2(X0,X1,X2,X3) != X0 )
            | ~ r2_hidden(sK2(X0,X1,X2,X3),X3) )
          & ( sK2(X0,X1,X2,X3) = X2
            | sK2(X0,X1,X2,X3) = X1
            | sK2(X0,X1,X2,X3) = X0
            | r2_hidden(sK2(X0,X1,X2,X3),X3) ) ) )
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f31,f32])).

fof(f57,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f96,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k1_enumset1(X5,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f57])).

fof(f97,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k1_enumset1(X5,X1,X2)) ),
    inference(equality_resolution,[],[f96])).

fof(f56,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f98,plain,(
    ! [X2,X0,X5,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,k1_enumset1(X0,X1,X2)) ) ),
    inference(equality_resolution,[],[f56])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( k2_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            | r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
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
    inference(nnf_transformation,[],[f3])).

fof(f20,plain,(
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
    inference(flattening,[],[f19])).

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
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( ~ r2_hidden(X4,X1)
                & ~ r2_hidden(X4,X0) ) )
            & ( r2_hidden(X4,X1)
              | r2_hidden(X4,X0)
              | ~ r2_hidden(X4,X2) ) )
        | k2_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f20])).

fof(f22,plain,(
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

fof(f23,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f22])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( k2_xboole_0(X0,X1) = X2
      | r2_hidden(sK0(X0,X1,X2),X1)
      | r2_hidden(sK0(X0,X1,X2),X0)
      | r2_hidden(sK0(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f10,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( k5_xboole_0(X0,k4_xboole_0(X1,X0)) = X2
      | r2_hidden(sK0(X0,X1,X2),X1)
      | r2_hidden(sK0(X0,X1,X2),X0)
      | r2_hidden(sK0(X0,X1,X2),X2) ) ),
    inference(definition_unfolding,[],[f41,f55])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( k2_xboole_0(X0,X1) = X2
      | ~ r2_hidden(sK0(X0,X1,X2),X1)
      | ~ r2_hidden(sK0(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( k5_xboole_0(X0,k4_xboole_0(X1,X0)) = X2
      | ~ r2_hidden(sK0(X0,X1,X2),X1)
      | ~ r2_hidden(sK0(X0,X1,X2),X2) ) ),
    inference(definition_unfolding,[],[f43,f55])).

fof(f15,conjecture,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(negated_conjecture,[],[f15])).

fof(f18,plain,(
    ? [X0,X1,X2] : k1_enumset1(X0,X1,X2) != k2_enumset1(X0,X0,X1,X2) ),
    inference(ennf_transformation,[],[f16])).

fof(f34,plain,
    ( ? [X0,X1,X2] : k1_enumset1(X0,X1,X2) != k2_enumset1(X0,X0,X1,X2)
   => k1_enumset1(sK3,sK4,sK5) != k2_enumset1(sK3,sK3,sK4,sK5) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    k1_enumset1(sK3,sK4,sK5) != k2_enumset1(sK3,sK3,sK4,sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f18,f34])).

fof(f67,plain,(
    k1_enumset1(sK3,sK4,sK5) != k2_enumset1(sK3,sK3,sK4,sK5) ),
    inference(cnf_transformation,[],[f35])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3] : k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3)) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X2,X0,X3,X1] : k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3)) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f12])).

fof(f13,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f65,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f13])).

fof(f14,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f14])).

fof(f68,plain,(
    ! [X0] : k1_enumset1(X0,X0,X0) = k1_tarski(X0) ),
    inference(definition_unfolding,[],[f65,f66])).

fof(f69,plain,(
    ! [X2,X0,X3,X1] : k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X0,X0,X0))) = k2_enumset1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f64,f55,f68])).

fof(f85,plain,(
    k5_xboole_0(k1_enumset1(sK3,sK3,sK3),k4_xboole_0(k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK3,sK3))) != k1_enumset1(sK3,sK4,sK5) ),
    inference(definition_unfolding,[],[f67,f69])).

cnf(c_24,plain,
    ( r2_hidden(X0,k1_enumset1(X0,X1,X2)) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_4565,plain,
    ( r2_hidden(sK3,k1_enumset1(sK3,sK4,sK5)) ),
    inference(instantiation,[status(thm)],[c_24])).

cnf(c_25,plain,
    ( ~ r2_hidden(X0,k1_enumset1(X1,X2,X3))
    | X0 = X1
    | X0 = X2
    | X0 = X3 ),
    inference(cnf_transformation,[],[f98])).

cnf(c_1278,plain,
    ( ~ r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(X0,X1,X2))
    | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) = X0
    | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) = X1
    | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) = X2 ),
    inference(instantiation,[status(thm)],[c_25])).

cnf(c_1280,plain,
    ( ~ r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK3,sK3))
    | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) = sK3 ),
    inference(instantiation,[status(thm)],[c_1278])).

cnf(c_229,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1065,plain,
    ( k1_enumset1(sK3,sK4,sK5) = k1_enumset1(sK3,sK4,sK5) ),
    inference(instantiation,[status(thm)],[c_229])).

cnf(c_233,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_601,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
    | k1_enumset1(sK3,sK4,sK5) != X1
    | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) != X0 ),
    inference(instantiation,[status(thm)],[c_233])).

cnf(c_800,plain,
    ( ~ r2_hidden(X0,k1_enumset1(sK3,sK4,sK5))
    | r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
    | k1_enumset1(sK3,sK4,sK5) != k1_enumset1(sK3,sK4,sK5)
    | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) != X0 ),
    inference(instantiation,[status(thm)],[c_601])).

cnf(c_802,plain,
    ( r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
    | ~ r2_hidden(sK3,k1_enumset1(sK3,sK4,sK5))
    | k1_enumset1(sK3,sK4,sK5) != k1_enumset1(sK3,sK4,sK5)
    | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) != sK3 ),
    inference(instantiation,[status(thm)],[c_800])).

cnf(c_5,plain,
    ( r2_hidden(sK0(X0,X1,X2),X1)
    | r2_hidden(sK0(X0,X1,X2),X2)
    | r2_hidden(sK0(X0,X1,X2),X0)
    | k5_xboole_0(X0,k4_xboole_0(X1,X0)) = X2 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_566,plain,
    ( r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
    | r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK3,sK3))
    | k5_xboole_0(k1_enumset1(sK3,sK3,sK3),k4_xboole_0(k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK3,sK3))) = k1_enumset1(sK3,sK4,sK5) ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_3,plain,
    ( ~ r2_hidden(sK0(X0,X1,X2),X1)
    | ~ r2_hidden(sK0(X0,X1,X2),X2)
    | k5_xboole_0(X0,k4_xboole_0(X1,X0)) = X2 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_567,plain,
    ( ~ r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
    | k5_xboole_0(k1_enumset1(sK3,sK3,sK3),k4_xboole_0(k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK3,sK3))) = k1_enumset1(sK3,sK4,sK5) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_26,negated_conjecture,
    ( k5_xboole_0(k1_enumset1(sK3,sK3,sK3),k4_xboole_0(k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK3,sK3))) != k1_enumset1(sK3,sK4,sK5) ),
    inference(cnf_transformation,[],[f85])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4565,c_1280,c_1065,c_802,c_566,c_567,c_26])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n012.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 18:05:07 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.63/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.63/0.98  
% 3.63/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.63/0.98  
% 3.63/0.98  ------  iProver source info
% 3.63/0.98  
% 3.63/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.63/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.63/0.98  git: non_committed_changes: false
% 3.63/0.98  git: last_make_outside_of_git: false
% 3.63/0.98  
% 3.63/0.98  ------ 
% 3.63/0.98  
% 3.63/0.98  ------ Input Options
% 3.63/0.98  
% 3.63/0.98  --out_options                           all
% 3.63/0.98  --tptp_safe_out                         true
% 3.63/0.98  --problem_path                          ""
% 3.63/0.98  --include_path                          ""
% 3.63/0.98  --clausifier                            res/vclausify_rel
% 3.63/0.98  --clausifier_options                    ""
% 3.63/0.98  --stdin                                 false
% 3.63/0.98  --stats_out                             all
% 3.63/0.98  
% 3.63/0.98  ------ General Options
% 3.63/0.98  
% 3.63/0.98  --fof                                   false
% 3.63/0.98  --time_out_real                         305.
% 3.63/0.98  --time_out_virtual                      -1.
% 3.63/0.98  --symbol_type_check                     false
% 3.63/0.98  --clausify_out                          false
% 3.63/0.98  --sig_cnt_out                           false
% 3.63/0.98  --trig_cnt_out                          false
% 3.63/0.98  --trig_cnt_out_tolerance                1.
% 3.63/0.98  --trig_cnt_out_sk_spl                   false
% 3.63/0.98  --abstr_cl_out                          false
% 3.63/0.98  
% 3.63/0.98  ------ Global Options
% 3.63/0.98  
% 3.63/0.98  --schedule                              default
% 3.63/0.98  --add_important_lit                     false
% 3.63/0.98  --prop_solver_per_cl                    1000
% 3.63/0.98  --min_unsat_core                        false
% 3.63/0.98  --soft_assumptions                      false
% 3.63/0.98  --soft_lemma_size                       3
% 3.63/0.98  --prop_impl_unit_size                   0
% 3.63/0.98  --prop_impl_unit                        []
% 3.63/0.98  --share_sel_clauses                     true
% 3.63/0.98  --reset_solvers                         false
% 3.63/0.98  --bc_imp_inh                            [conj_cone]
% 3.63/0.98  --conj_cone_tolerance                   3.
% 3.63/0.98  --extra_neg_conj                        none
% 3.63/0.98  --large_theory_mode                     true
% 3.63/0.98  --prolific_symb_bound                   200
% 3.63/0.98  --lt_threshold                          2000
% 3.63/0.98  --clause_weak_htbl                      true
% 3.63/0.98  --gc_record_bc_elim                     false
% 3.63/0.98  
% 3.63/0.98  ------ Preprocessing Options
% 3.63/0.98  
% 3.63/0.98  --preprocessing_flag                    true
% 3.63/0.98  --time_out_prep_mult                    0.1
% 3.63/0.98  --splitting_mode                        input
% 3.63/0.98  --splitting_grd                         true
% 3.63/0.98  --splitting_cvd                         false
% 3.63/0.98  --splitting_cvd_svl                     false
% 3.63/0.98  --splitting_nvd                         32
% 3.63/0.98  --sub_typing                            true
% 3.63/0.98  --prep_gs_sim                           true
% 3.63/0.98  --prep_unflatten                        true
% 3.63/0.98  --prep_res_sim                          true
% 3.63/0.98  --prep_upred                            true
% 3.63/0.98  --prep_sem_filter                       exhaustive
% 3.63/0.98  --prep_sem_filter_out                   false
% 3.63/0.98  --pred_elim                             true
% 3.63/0.98  --res_sim_input                         true
% 3.63/0.98  --eq_ax_congr_red                       true
% 3.63/0.98  --pure_diseq_elim                       true
% 3.63/0.98  --brand_transform                       false
% 3.63/0.98  --non_eq_to_eq                          false
% 3.63/0.98  --prep_def_merge                        true
% 3.63/0.98  --prep_def_merge_prop_impl              false
% 3.63/0.98  --prep_def_merge_mbd                    true
% 3.63/0.98  --prep_def_merge_tr_red                 false
% 3.63/0.98  --prep_def_merge_tr_cl                  false
% 3.63/0.98  --smt_preprocessing                     true
% 3.63/0.98  --smt_ac_axioms                         fast
% 3.63/0.98  --preprocessed_out                      false
% 3.63/0.98  --preprocessed_stats                    false
% 3.63/0.98  
% 3.63/0.98  ------ Abstraction refinement Options
% 3.63/0.98  
% 3.63/0.98  --abstr_ref                             []
% 3.63/0.98  --abstr_ref_prep                        false
% 3.63/0.98  --abstr_ref_until_sat                   false
% 3.63/0.98  --abstr_ref_sig_restrict                funpre
% 3.63/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.63/0.98  --abstr_ref_under                       []
% 3.63/0.98  
% 3.63/0.98  ------ SAT Options
% 3.63/0.98  
% 3.63/0.98  --sat_mode                              false
% 3.63/0.98  --sat_fm_restart_options                ""
% 3.63/0.98  --sat_gr_def                            false
% 3.63/0.98  --sat_epr_types                         true
% 3.63/0.98  --sat_non_cyclic_types                  false
% 3.63/0.98  --sat_finite_models                     false
% 3.63/0.98  --sat_fm_lemmas                         false
% 3.63/0.98  --sat_fm_prep                           false
% 3.63/0.98  --sat_fm_uc_incr                        true
% 3.63/0.98  --sat_out_model                         small
% 3.63/0.98  --sat_out_clauses                       false
% 3.63/0.98  
% 3.63/0.98  ------ QBF Options
% 3.63/0.98  
% 3.63/0.98  --qbf_mode                              false
% 3.63/0.98  --qbf_elim_univ                         false
% 3.63/0.98  --qbf_dom_inst                          none
% 3.63/0.98  --qbf_dom_pre_inst                      false
% 3.63/0.98  --qbf_sk_in                             false
% 3.63/0.98  --qbf_pred_elim                         true
% 3.63/0.98  --qbf_split                             512
% 3.63/0.98  
% 3.63/0.98  ------ BMC1 Options
% 3.63/0.98  
% 3.63/0.98  --bmc1_incremental                      false
% 3.63/0.98  --bmc1_axioms                           reachable_all
% 3.63/0.98  --bmc1_min_bound                        0
% 3.63/0.98  --bmc1_max_bound                        -1
% 3.63/0.98  --bmc1_max_bound_default                -1
% 3.63/0.98  --bmc1_symbol_reachability              true
% 3.63/0.98  --bmc1_property_lemmas                  false
% 3.63/0.98  --bmc1_k_induction                      false
% 3.63/0.98  --bmc1_non_equiv_states                 false
% 3.63/0.98  --bmc1_deadlock                         false
% 3.63/0.98  --bmc1_ucm                              false
% 3.63/0.98  --bmc1_add_unsat_core                   none
% 3.63/0.99  --bmc1_unsat_core_children              false
% 3.63/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.63/0.99  --bmc1_out_stat                         full
% 3.63/0.99  --bmc1_ground_init                      false
% 3.63/0.99  --bmc1_pre_inst_next_state              false
% 3.63/0.99  --bmc1_pre_inst_state                   false
% 3.63/0.99  --bmc1_pre_inst_reach_state             false
% 3.63/0.99  --bmc1_out_unsat_core                   false
% 3.63/0.99  --bmc1_aig_witness_out                  false
% 3.63/0.99  --bmc1_verbose                          false
% 3.63/0.99  --bmc1_dump_clauses_tptp                false
% 3.63/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.63/0.99  --bmc1_dump_file                        -
% 3.63/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.63/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.63/0.99  --bmc1_ucm_extend_mode                  1
% 3.63/0.99  --bmc1_ucm_init_mode                    2
% 3.63/0.99  --bmc1_ucm_cone_mode                    none
% 3.63/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.63/0.99  --bmc1_ucm_relax_model                  4
% 3.63/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.63/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.63/0.99  --bmc1_ucm_layered_model                none
% 3.63/0.99  --bmc1_ucm_max_lemma_size               10
% 3.63/0.99  
% 3.63/0.99  ------ AIG Options
% 3.63/0.99  
% 3.63/0.99  --aig_mode                              false
% 3.63/0.99  
% 3.63/0.99  ------ Instantiation Options
% 3.63/0.99  
% 3.63/0.99  --instantiation_flag                    true
% 3.63/0.99  --inst_sos_flag                         true
% 3.63/0.99  --inst_sos_phase                        true
% 3.63/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.63/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.63/0.99  --inst_lit_sel_side                     num_symb
% 3.63/0.99  --inst_solver_per_active                1400
% 3.63/0.99  --inst_solver_calls_frac                1.
% 3.63/0.99  --inst_passive_queue_type               priority_queues
% 3.63/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.63/0.99  --inst_passive_queues_freq              [25;2]
% 3.63/0.99  --inst_dismatching                      true
% 3.63/0.99  --inst_eager_unprocessed_to_passive     true
% 3.63/0.99  --inst_prop_sim_given                   true
% 3.63/0.99  --inst_prop_sim_new                     false
% 3.63/0.99  --inst_subs_new                         false
% 3.63/0.99  --inst_eq_res_simp                      false
% 3.63/0.99  --inst_subs_given                       false
% 3.63/0.99  --inst_orphan_elimination               true
% 3.63/0.99  --inst_learning_loop_flag               true
% 3.63/0.99  --inst_learning_start                   3000
% 3.63/0.99  --inst_learning_factor                  2
% 3.63/0.99  --inst_start_prop_sim_after_learn       3
% 3.63/0.99  --inst_sel_renew                        solver
% 3.63/0.99  --inst_lit_activity_flag                true
% 3.63/0.99  --inst_restr_to_given                   false
% 3.63/0.99  --inst_activity_threshold               500
% 3.63/0.99  --inst_out_proof                        true
% 3.63/0.99  
% 3.63/0.99  ------ Resolution Options
% 3.63/0.99  
% 3.63/0.99  --resolution_flag                       true
% 3.63/0.99  --res_lit_sel                           adaptive
% 3.63/0.99  --res_lit_sel_side                      none
% 3.63/0.99  --res_ordering                          kbo
% 3.63/0.99  --res_to_prop_solver                    active
% 3.63/0.99  --res_prop_simpl_new                    false
% 3.63/0.99  --res_prop_simpl_given                  true
% 3.63/0.99  --res_passive_queue_type                priority_queues
% 3.63/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.63/0.99  --res_passive_queues_freq               [15;5]
% 3.63/0.99  --res_forward_subs                      full
% 3.63/0.99  --res_backward_subs                     full
% 3.63/0.99  --res_forward_subs_resolution           true
% 3.63/0.99  --res_backward_subs_resolution          true
% 3.63/0.99  --res_orphan_elimination                true
% 3.63/0.99  --res_time_limit                        2.
% 3.63/0.99  --res_out_proof                         true
% 3.63/0.99  
% 3.63/0.99  ------ Superposition Options
% 3.63/0.99  
% 3.63/0.99  --superposition_flag                    true
% 3.63/0.99  --sup_passive_queue_type                priority_queues
% 3.63/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.63/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.63/0.99  --demod_completeness_check              fast
% 3.63/0.99  --demod_use_ground                      true
% 3.63/0.99  --sup_to_prop_solver                    passive
% 3.63/0.99  --sup_prop_simpl_new                    true
% 3.63/0.99  --sup_prop_simpl_given                  true
% 3.63/0.99  --sup_fun_splitting                     true
% 3.63/0.99  --sup_smt_interval                      50000
% 3.63/0.99  
% 3.63/0.99  ------ Superposition Simplification Setup
% 3.63/0.99  
% 3.63/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.63/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.63/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.63/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.63/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.63/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.63/0.99  --sup_immed_triv                        [TrivRules]
% 3.63/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_immed_bw_main                     []
% 3.63/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.63/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.63/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_input_bw                          []
% 3.63/0.99  
% 3.63/0.99  ------ Combination Options
% 3.63/0.99  
% 3.63/0.99  --comb_res_mult                         3
% 3.63/0.99  --comb_sup_mult                         2
% 3.63/0.99  --comb_inst_mult                        10
% 3.63/0.99  
% 3.63/0.99  ------ Debug Options
% 3.63/0.99  
% 3.63/0.99  --dbg_backtrace                         false
% 3.63/0.99  --dbg_dump_prop_clauses                 false
% 3.63/0.99  --dbg_dump_prop_clauses_file            -
% 3.63/0.99  --dbg_out_stat                          false
% 3.63/0.99  ------ Parsing...
% 3.63/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.63/0.99  ------ Proving...
% 3.63/0.99  ------ Problem Properties 
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  clauses                                 27
% 3.63/0.99  conjectures                             1
% 3.63/0.99  EPR                                     0
% 3.63/0.99  Horn                                    21
% 3.63/0.99  unary                                   10
% 3.63/0.99  binary                                  4
% 3.63/0.99  lits                                    62
% 3.63/0.99  lits eq                                 26
% 3.63/0.99  fd_pure                                 0
% 3.63/0.99  fd_pseudo                               0
% 3.63/0.99  fd_cond                                 0
% 3.63/0.99  fd_pseudo_cond                          10
% 3.63/0.99  AC symbols                              1
% 3.63/0.99  
% 3.63/0.99  ------ Schedule dynamic 5 is on 
% 3.63/0.99  
% 3.63/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  ------ 
% 3.63/0.99  Current options:
% 3.63/0.99  ------ 
% 3.63/0.99  
% 3.63/0.99  ------ Input Options
% 3.63/0.99  
% 3.63/0.99  --out_options                           all
% 3.63/0.99  --tptp_safe_out                         true
% 3.63/0.99  --problem_path                          ""
% 3.63/0.99  --include_path                          ""
% 3.63/0.99  --clausifier                            res/vclausify_rel
% 3.63/0.99  --clausifier_options                    ""
% 3.63/0.99  --stdin                                 false
% 3.63/0.99  --stats_out                             all
% 3.63/0.99  
% 3.63/0.99  ------ General Options
% 3.63/0.99  
% 3.63/0.99  --fof                                   false
% 3.63/0.99  --time_out_real                         305.
% 3.63/0.99  --time_out_virtual                      -1.
% 3.63/0.99  --symbol_type_check                     false
% 3.63/0.99  --clausify_out                          false
% 3.63/0.99  --sig_cnt_out                           false
% 3.63/0.99  --trig_cnt_out                          false
% 3.63/0.99  --trig_cnt_out_tolerance                1.
% 3.63/0.99  --trig_cnt_out_sk_spl                   false
% 3.63/0.99  --abstr_cl_out                          false
% 3.63/0.99  
% 3.63/0.99  ------ Global Options
% 3.63/0.99  
% 3.63/0.99  --schedule                              default
% 3.63/0.99  --add_important_lit                     false
% 3.63/0.99  --prop_solver_per_cl                    1000
% 3.63/0.99  --min_unsat_core                        false
% 3.63/0.99  --soft_assumptions                      false
% 3.63/0.99  --soft_lemma_size                       3
% 3.63/0.99  --prop_impl_unit_size                   0
% 3.63/0.99  --prop_impl_unit                        []
% 3.63/0.99  --share_sel_clauses                     true
% 3.63/0.99  --reset_solvers                         false
% 3.63/0.99  --bc_imp_inh                            [conj_cone]
% 3.63/0.99  --conj_cone_tolerance                   3.
% 3.63/0.99  --extra_neg_conj                        none
% 3.63/0.99  --large_theory_mode                     true
% 3.63/0.99  --prolific_symb_bound                   200
% 3.63/0.99  --lt_threshold                          2000
% 3.63/0.99  --clause_weak_htbl                      true
% 3.63/0.99  --gc_record_bc_elim                     false
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing Options
% 3.63/0.99  
% 3.63/0.99  --preprocessing_flag                    true
% 3.63/0.99  --time_out_prep_mult                    0.1
% 3.63/0.99  --splitting_mode                        input
% 3.63/0.99  --splitting_grd                         true
% 3.63/0.99  --splitting_cvd                         false
% 3.63/0.99  --splitting_cvd_svl                     false
% 3.63/0.99  --splitting_nvd                         32
% 3.63/0.99  --sub_typing                            true
% 3.63/0.99  --prep_gs_sim                           true
% 3.63/0.99  --prep_unflatten                        true
% 3.63/0.99  --prep_res_sim                          true
% 3.63/0.99  --prep_upred                            true
% 3.63/0.99  --prep_sem_filter                       exhaustive
% 3.63/0.99  --prep_sem_filter_out                   false
% 3.63/0.99  --pred_elim                             true
% 3.63/0.99  --res_sim_input                         true
% 3.63/0.99  --eq_ax_congr_red                       true
% 3.63/0.99  --pure_diseq_elim                       true
% 3.63/0.99  --brand_transform                       false
% 3.63/0.99  --non_eq_to_eq                          false
% 3.63/0.99  --prep_def_merge                        true
% 3.63/0.99  --prep_def_merge_prop_impl              false
% 3.63/0.99  --prep_def_merge_mbd                    true
% 3.63/0.99  --prep_def_merge_tr_red                 false
% 3.63/0.99  --prep_def_merge_tr_cl                  false
% 3.63/0.99  --smt_preprocessing                     true
% 3.63/0.99  --smt_ac_axioms                         fast
% 3.63/0.99  --preprocessed_out                      false
% 3.63/0.99  --preprocessed_stats                    false
% 3.63/0.99  
% 3.63/0.99  ------ Abstraction refinement Options
% 3.63/0.99  
% 3.63/0.99  --abstr_ref                             []
% 3.63/0.99  --abstr_ref_prep                        false
% 3.63/0.99  --abstr_ref_until_sat                   false
% 3.63/0.99  --abstr_ref_sig_restrict                funpre
% 3.63/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.63/0.99  --abstr_ref_under                       []
% 3.63/0.99  
% 3.63/0.99  ------ SAT Options
% 3.63/0.99  
% 3.63/0.99  --sat_mode                              false
% 3.63/0.99  --sat_fm_restart_options                ""
% 3.63/0.99  --sat_gr_def                            false
% 3.63/0.99  --sat_epr_types                         true
% 3.63/0.99  --sat_non_cyclic_types                  false
% 3.63/0.99  --sat_finite_models                     false
% 3.63/0.99  --sat_fm_lemmas                         false
% 3.63/0.99  --sat_fm_prep                           false
% 3.63/0.99  --sat_fm_uc_incr                        true
% 3.63/0.99  --sat_out_model                         small
% 3.63/0.99  --sat_out_clauses                       false
% 3.63/0.99  
% 3.63/0.99  ------ QBF Options
% 3.63/0.99  
% 3.63/0.99  --qbf_mode                              false
% 3.63/0.99  --qbf_elim_univ                         false
% 3.63/0.99  --qbf_dom_inst                          none
% 3.63/0.99  --qbf_dom_pre_inst                      false
% 3.63/0.99  --qbf_sk_in                             false
% 3.63/0.99  --qbf_pred_elim                         true
% 3.63/0.99  --qbf_split                             512
% 3.63/0.99  
% 3.63/0.99  ------ BMC1 Options
% 3.63/0.99  
% 3.63/0.99  --bmc1_incremental                      false
% 3.63/0.99  --bmc1_axioms                           reachable_all
% 3.63/0.99  --bmc1_min_bound                        0
% 3.63/0.99  --bmc1_max_bound                        -1
% 3.63/0.99  --bmc1_max_bound_default                -1
% 3.63/0.99  --bmc1_symbol_reachability              true
% 3.63/0.99  --bmc1_property_lemmas                  false
% 3.63/0.99  --bmc1_k_induction                      false
% 3.63/0.99  --bmc1_non_equiv_states                 false
% 3.63/0.99  --bmc1_deadlock                         false
% 3.63/0.99  --bmc1_ucm                              false
% 3.63/0.99  --bmc1_add_unsat_core                   none
% 3.63/0.99  --bmc1_unsat_core_children              false
% 3.63/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.63/0.99  --bmc1_out_stat                         full
% 3.63/0.99  --bmc1_ground_init                      false
% 3.63/0.99  --bmc1_pre_inst_next_state              false
% 3.63/0.99  --bmc1_pre_inst_state                   false
% 3.63/0.99  --bmc1_pre_inst_reach_state             false
% 3.63/0.99  --bmc1_out_unsat_core                   false
% 3.63/0.99  --bmc1_aig_witness_out                  false
% 3.63/0.99  --bmc1_verbose                          false
% 3.63/0.99  --bmc1_dump_clauses_tptp                false
% 3.63/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.63/0.99  --bmc1_dump_file                        -
% 3.63/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.63/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.63/0.99  --bmc1_ucm_extend_mode                  1
% 3.63/0.99  --bmc1_ucm_init_mode                    2
% 3.63/0.99  --bmc1_ucm_cone_mode                    none
% 3.63/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.63/0.99  --bmc1_ucm_relax_model                  4
% 3.63/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.63/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.63/0.99  --bmc1_ucm_layered_model                none
% 3.63/0.99  --bmc1_ucm_max_lemma_size               10
% 3.63/0.99  
% 3.63/0.99  ------ AIG Options
% 3.63/0.99  
% 3.63/0.99  --aig_mode                              false
% 3.63/0.99  
% 3.63/0.99  ------ Instantiation Options
% 3.63/0.99  
% 3.63/0.99  --instantiation_flag                    true
% 3.63/0.99  --inst_sos_flag                         true
% 3.63/0.99  --inst_sos_phase                        true
% 3.63/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.63/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.63/0.99  --inst_lit_sel_side                     none
% 3.63/0.99  --inst_solver_per_active                1400
% 3.63/0.99  --inst_solver_calls_frac                1.
% 3.63/0.99  --inst_passive_queue_type               priority_queues
% 3.63/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.63/0.99  --inst_passive_queues_freq              [25;2]
% 3.63/0.99  --inst_dismatching                      true
% 3.63/0.99  --inst_eager_unprocessed_to_passive     true
% 3.63/0.99  --inst_prop_sim_given                   true
% 3.63/0.99  --inst_prop_sim_new                     false
% 3.63/0.99  --inst_subs_new                         false
% 3.63/0.99  --inst_eq_res_simp                      false
% 3.63/0.99  --inst_subs_given                       false
% 3.63/0.99  --inst_orphan_elimination               true
% 3.63/0.99  --inst_learning_loop_flag               true
% 3.63/0.99  --inst_learning_start                   3000
% 3.63/0.99  --inst_learning_factor                  2
% 3.63/0.99  --inst_start_prop_sim_after_learn       3
% 3.63/0.99  --inst_sel_renew                        solver
% 3.63/0.99  --inst_lit_activity_flag                true
% 3.63/0.99  --inst_restr_to_given                   false
% 3.63/0.99  --inst_activity_threshold               500
% 3.63/0.99  --inst_out_proof                        true
% 3.63/0.99  
% 3.63/0.99  ------ Resolution Options
% 3.63/0.99  
% 3.63/0.99  --resolution_flag                       false
% 3.63/0.99  --res_lit_sel                           adaptive
% 3.63/0.99  --res_lit_sel_side                      none
% 3.63/0.99  --res_ordering                          kbo
% 3.63/0.99  --res_to_prop_solver                    active
% 3.63/0.99  --res_prop_simpl_new                    false
% 3.63/0.99  --res_prop_simpl_given                  true
% 3.63/0.99  --res_passive_queue_type                priority_queues
% 3.63/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.63/0.99  --res_passive_queues_freq               [15;5]
% 3.63/0.99  --res_forward_subs                      full
% 3.63/0.99  --res_backward_subs                     full
% 3.63/0.99  --res_forward_subs_resolution           true
% 3.63/0.99  --res_backward_subs_resolution          true
% 3.63/0.99  --res_orphan_elimination                true
% 3.63/0.99  --res_time_limit                        2.
% 3.63/0.99  --res_out_proof                         true
% 3.63/0.99  
% 3.63/0.99  ------ Superposition Options
% 3.63/0.99  
% 3.63/0.99  --superposition_flag                    true
% 3.63/0.99  --sup_passive_queue_type                priority_queues
% 3.63/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.63/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.63/0.99  --demod_completeness_check              fast
% 3.63/0.99  --demod_use_ground                      true
% 3.63/0.99  --sup_to_prop_solver                    passive
% 3.63/0.99  --sup_prop_simpl_new                    true
% 3.63/0.99  --sup_prop_simpl_given                  true
% 3.63/0.99  --sup_fun_splitting                     true
% 3.63/0.99  --sup_smt_interval                      50000
% 3.63/0.99  
% 3.63/0.99  ------ Superposition Simplification Setup
% 3.63/0.99  
% 3.63/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.63/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.63/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.63/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.63/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.63/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.63/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.63/0.99  --sup_immed_triv                        [TrivRules]
% 3.63/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_immed_bw_main                     []
% 3.63/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.63/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.63/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.63/0.99  --sup_input_bw                          []
% 3.63/0.99  
% 3.63/0.99  ------ Combination Options
% 3.63/0.99  
% 3.63/0.99  --comb_res_mult                         3
% 3.63/0.99  --comb_sup_mult                         2
% 3.63/0.99  --comb_inst_mult                        10
% 3.63/0.99  
% 3.63/0.99  ------ Debug Options
% 3.63/0.99  
% 3.63/0.99  --dbg_backtrace                         false
% 3.63/0.99  --dbg_dump_prop_clauses                 false
% 3.63/0.99  --dbg_dump_prop_clauses_file            -
% 3.63/0.99  --dbg_out_stat                          false
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  ------ Proving...
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  % SZS status Theorem for theBenchmark.p
% 3.63/0.99  
% 3.63/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.63/0.99  
% 3.63/0.99  fof(f11,axiom,(
% 3.63/0.99    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f17,plain,(
% 3.63/0.99    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 3.63/0.99    inference(ennf_transformation,[],[f11])).
% 3.63/0.99  
% 3.63/0.99  fof(f29,plain,(
% 3.63/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.63/0.99    inference(nnf_transformation,[],[f17])).
% 3.63/0.99  
% 3.63/0.99  fof(f30,plain,(
% 3.63/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.63/0.99    inference(flattening,[],[f29])).
% 3.63/0.99  
% 3.63/0.99  fof(f31,plain,(
% 3.63/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.63/0.99    inference(rectify,[],[f30])).
% 3.63/0.99  
% 3.63/0.99  fof(f32,plain,(
% 3.63/0.99    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK2(X0,X1,X2,X3) != X2 & sK2(X0,X1,X2,X3) != X1 & sK2(X0,X1,X2,X3) != X0) | ~r2_hidden(sK2(X0,X1,X2,X3),X3)) & (sK2(X0,X1,X2,X3) = X2 | sK2(X0,X1,X2,X3) = X1 | sK2(X0,X1,X2,X3) = X0 | r2_hidden(sK2(X0,X1,X2,X3),X3))))),
% 3.63/0.99    introduced(choice_axiom,[])).
% 3.63/0.99  
% 3.63/0.99  fof(f33,plain,(
% 3.63/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK2(X0,X1,X2,X3) != X2 & sK2(X0,X1,X2,X3) != X1 & sK2(X0,X1,X2,X3) != X0) | ~r2_hidden(sK2(X0,X1,X2,X3),X3)) & (sK2(X0,X1,X2,X3) = X2 | sK2(X0,X1,X2,X3) = X1 | sK2(X0,X1,X2,X3) = X0 | r2_hidden(sK2(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.63/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f31,f32])).
% 3.63/0.99  
% 3.63/0.99  fof(f57,plain,(
% 3.63/0.99    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 3.63/0.99    inference(cnf_transformation,[],[f33])).
% 3.63/0.99  
% 3.63/0.99  fof(f96,plain,(
% 3.63/0.99    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k1_enumset1(X5,X1,X2) != X3) )),
% 3.63/0.99    inference(equality_resolution,[],[f57])).
% 3.63/0.99  
% 3.63/0.99  fof(f97,plain,(
% 3.63/0.99    ( ! [X2,X5,X1] : (r2_hidden(X5,k1_enumset1(X5,X1,X2))) )),
% 3.63/0.99    inference(equality_resolution,[],[f96])).
% 3.63/0.99  
% 3.63/0.99  fof(f56,plain,(
% 3.63/0.99    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k1_enumset1(X0,X1,X2) != X3) )),
% 3.63/0.99    inference(cnf_transformation,[],[f33])).
% 3.63/0.99  
% 3.63/0.99  fof(f98,plain,(
% 3.63/0.99    ( ! [X2,X0,X5,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,k1_enumset1(X0,X1,X2))) )),
% 3.63/0.99    inference(equality_resolution,[],[f56])).
% 3.63/0.99  
% 3.63/0.99  fof(f3,axiom,(
% 3.63/0.99    ! [X0,X1,X2] : (k2_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) | r2_hidden(X3,X0))))),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f19,plain,(
% 3.63/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) | r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.63/0.99    inference(nnf_transformation,[],[f3])).
% 3.63/0.99  
% 3.63/0.99  fof(f20,plain,(
% 3.63/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) & ~r2_hidden(X3,X0))) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | ~r2_hidden(X3,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.63/0.99    inference(flattening,[],[f19])).
% 3.63/0.99  
% 3.63/0.99  fof(f21,plain,(
% 3.63/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.63/0.99    inference(rectify,[],[f20])).
% 3.63/0.99  
% 3.63/0.99  fof(f22,plain,(
% 3.63/0.99    ! [X2,X1,X0] : (? [X3] : (((~r2_hidden(X3,X1) & ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X1) | r2_hidden(X3,X0) | r2_hidden(X3,X2))) => (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 3.63/0.99    introduced(choice_axiom,[])).
% 3.63/0.99  
% 3.63/0.99  fof(f23,plain,(
% 3.63/0.99    ! [X0,X1,X2] : ((k2_xboole_0(X0,X1) = X2 | (((~r2_hidden(sK0(X0,X1,X2),X1) & ~r2_hidden(sK0(X0,X1,X2),X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (~r2_hidden(X4,X1) & ~r2_hidden(X4,X0))) & (r2_hidden(X4,X1) | r2_hidden(X4,X0) | ~r2_hidden(X4,X2))) | k2_xboole_0(X0,X1) != X2))),
% 3.63/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f21,f22])).
% 3.63/0.99  
% 3.63/0.99  fof(f41,plain,(
% 3.63/0.99    ( ! [X2,X0,X1] : (k2_xboole_0(X0,X1) = X2 | r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f23])).
% 3.63/0.99  
% 3.63/0.99  fof(f10,axiom,(
% 3.63/0.99    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f55,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f10])).
% 3.63/0.99  
% 3.63/0.99  fof(f74,plain,(
% 3.63/0.99    ( ! [X2,X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = X2 | r2_hidden(sK0(X0,X1,X2),X1) | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)) )),
% 3.63/0.99    inference(definition_unfolding,[],[f41,f55])).
% 3.63/0.99  
% 3.63/0.99  fof(f43,plain,(
% 3.63/0.99    ( ! [X2,X0,X1] : (k2_xboole_0(X0,X1) = X2 | ~r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X2)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f23])).
% 3.63/0.99  
% 3.63/0.99  fof(f72,plain,(
% 3.63/0.99    ( ! [X2,X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = X2 | ~r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X2)) )),
% 3.63/0.99    inference(definition_unfolding,[],[f43,f55])).
% 3.63/0.99  
% 3.63/0.99  fof(f15,conjecture,(
% 3.63/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f16,negated_conjecture,(
% 3.63/0.99    ~! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.63/0.99    inference(negated_conjecture,[],[f15])).
% 3.63/0.99  
% 3.63/0.99  fof(f18,plain,(
% 3.63/0.99    ? [X0,X1,X2] : k1_enumset1(X0,X1,X2) != k2_enumset1(X0,X0,X1,X2)),
% 3.63/0.99    inference(ennf_transformation,[],[f16])).
% 3.63/0.99  
% 3.63/0.99  fof(f34,plain,(
% 3.63/0.99    ? [X0,X1,X2] : k1_enumset1(X0,X1,X2) != k2_enumset1(X0,X0,X1,X2) => k1_enumset1(sK3,sK4,sK5) != k2_enumset1(sK3,sK3,sK4,sK5)),
% 3.63/0.99    introduced(choice_axiom,[])).
% 3.63/0.99  
% 3.63/0.99  fof(f35,plain,(
% 3.63/0.99    k1_enumset1(sK3,sK4,sK5) != k2_enumset1(sK3,sK3,sK4,sK5)),
% 3.63/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5])],[f18,f34])).
% 3.63/0.99  
% 3.63/0.99  fof(f67,plain,(
% 3.63/0.99    k1_enumset1(sK3,sK4,sK5) != k2_enumset1(sK3,sK3,sK4,sK5)),
% 3.63/0.99    inference(cnf_transformation,[],[f35])).
% 3.63/0.99  
% 3.63/0.99  fof(f12,axiom,(
% 3.63/0.99    ! [X0,X1,X2,X3] : k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3)) = k2_enumset1(X0,X1,X2,X3)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f64,plain,(
% 3.63/0.99    ( ! [X2,X0,X3,X1] : (k2_xboole_0(k1_tarski(X0),k1_enumset1(X1,X2,X3)) = k2_enumset1(X0,X1,X2,X3)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f12])).
% 3.63/0.99  
% 3.63/0.99  fof(f13,axiom,(
% 3.63/0.99    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f65,plain,(
% 3.63/0.99    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f13])).
% 3.63/0.99  
% 3.63/0.99  fof(f14,axiom,(
% 3.63/0.99    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 3.63/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.63/0.99  
% 3.63/0.99  fof(f66,plain,(
% 3.63/0.99    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.63/0.99    inference(cnf_transformation,[],[f14])).
% 3.63/0.99  
% 3.63/0.99  fof(f68,plain,(
% 3.63/0.99    ( ! [X0] : (k1_enumset1(X0,X0,X0) = k1_tarski(X0)) )),
% 3.63/0.99    inference(definition_unfolding,[],[f65,f66])).
% 3.63/0.99  
% 3.63/0.99  fof(f69,plain,(
% 3.63/0.99    ( ! [X2,X0,X3,X1] : (k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X0,X0,X0))) = k2_enumset1(X0,X1,X2,X3)) )),
% 3.63/0.99    inference(definition_unfolding,[],[f64,f55,f68])).
% 3.63/0.99  
% 3.63/0.99  fof(f85,plain,(
% 3.63/0.99    k5_xboole_0(k1_enumset1(sK3,sK3,sK3),k4_xboole_0(k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK3,sK3))) != k1_enumset1(sK3,sK4,sK5)),
% 3.63/0.99    inference(definition_unfolding,[],[f67,f69])).
% 3.63/0.99  
% 3.63/0.99  cnf(c_24,plain,
% 3.63/0.99      ( r2_hidden(X0,k1_enumset1(X0,X1,X2)) ),
% 3.63/0.99      inference(cnf_transformation,[],[f97]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_4565,plain,
% 3.63/0.99      ( r2_hidden(sK3,k1_enumset1(sK3,sK4,sK5)) ),
% 3.63/0.99      inference(instantiation,[status(thm)],[c_24]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_25,plain,
% 3.63/0.99      ( ~ r2_hidden(X0,k1_enumset1(X1,X2,X3))
% 3.63/0.99      | X0 = X1
% 3.63/0.99      | X0 = X2
% 3.63/0.99      | X0 = X3 ),
% 3.63/0.99      inference(cnf_transformation,[],[f98]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_1278,plain,
% 3.63/0.99      ( ~ r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(X0,X1,X2))
% 3.63/0.99      | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) = X0
% 3.63/0.99      | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) = X1
% 3.63/0.99      | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) = X2 ),
% 3.63/0.99      inference(instantiation,[status(thm)],[c_25]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_1280,plain,
% 3.63/0.99      ( ~ r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK3,sK3))
% 3.63/0.99      | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) = sK3 ),
% 3.63/0.99      inference(instantiation,[status(thm)],[c_1278]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_229,plain,( X0 = X0 ),theory(equality) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_1065,plain,
% 3.63/0.99      ( k1_enumset1(sK3,sK4,sK5) = k1_enumset1(sK3,sK4,sK5) ),
% 3.63/0.99      inference(instantiation,[status(thm)],[c_229]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_233,plain,
% 3.63/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 3.63/0.99      theory(equality) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_601,plain,
% 3.63/0.99      ( ~ r2_hidden(X0,X1)
% 3.63/0.99      | r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
% 3.63/0.99      | k1_enumset1(sK3,sK4,sK5) != X1
% 3.63/0.99      | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) != X0 ),
% 3.63/0.99      inference(instantiation,[status(thm)],[c_233]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_800,plain,
% 3.63/0.99      ( ~ r2_hidden(X0,k1_enumset1(sK3,sK4,sK5))
% 3.63/0.99      | r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
% 3.63/0.99      | k1_enumset1(sK3,sK4,sK5) != k1_enumset1(sK3,sK4,sK5)
% 3.63/0.99      | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) != X0 ),
% 3.63/0.99      inference(instantiation,[status(thm)],[c_601]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_802,plain,
% 3.63/0.99      ( r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
% 3.63/0.99      | ~ r2_hidden(sK3,k1_enumset1(sK3,sK4,sK5))
% 3.63/0.99      | k1_enumset1(sK3,sK4,sK5) != k1_enumset1(sK3,sK4,sK5)
% 3.63/0.99      | sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)) != sK3 ),
% 3.63/0.99      inference(instantiation,[status(thm)],[c_800]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_5,plain,
% 3.63/0.99      ( r2_hidden(sK0(X0,X1,X2),X1)
% 3.63/0.99      | r2_hidden(sK0(X0,X1,X2),X2)
% 3.63/0.99      | r2_hidden(sK0(X0,X1,X2),X0)
% 3.63/0.99      | k5_xboole_0(X0,k4_xboole_0(X1,X0)) = X2 ),
% 3.63/0.99      inference(cnf_transformation,[],[f74]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_566,plain,
% 3.63/0.99      ( r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
% 3.63/0.99      | r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK3,sK3))
% 3.63/0.99      | k5_xboole_0(k1_enumset1(sK3,sK3,sK3),k4_xboole_0(k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK3,sK3))) = k1_enumset1(sK3,sK4,sK5) ),
% 3.63/0.99      inference(instantiation,[status(thm)],[c_5]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_3,plain,
% 3.63/0.99      ( ~ r2_hidden(sK0(X0,X1,X2),X1)
% 3.63/0.99      | ~ r2_hidden(sK0(X0,X1,X2),X2)
% 3.63/0.99      | k5_xboole_0(X0,k4_xboole_0(X1,X0)) = X2 ),
% 3.63/0.99      inference(cnf_transformation,[],[f72]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_567,plain,
% 3.63/0.99      ( ~ r2_hidden(sK0(k1_enumset1(sK3,sK3,sK3),k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK4,sK5)),k1_enumset1(sK3,sK4,sK5))
% 3.63/0.99      | k5_xboole_0(k1_enumset1(sK3,sK3,sK3),k4_xboole_0(k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK3,sK3))) = k1_enumset1(sK3,sK4,sK5) ),
% 3.63/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(c_26,negated_conjecture,
% 3.63/0.99      ( k5_xboole_0(k1_enumset1(sK3,sK3,sK3),k4_xboole_0(k1_enumset1(sK3,sK4,sK5),k1_enumset1(sK3,sK3,sK3))) != k1_enumset1(sK3,sK4,sK5) ),
% 3.63/0.99      inference(cnf_transformation,[],[f85]) ).
% 3.63/0.99  
% 3.63/0.99  cnf(contradiction,plain,
% 3.63/0.99      ( $false ),
% 3.63/0.99      inference(minisat,
% 3.63/0.99                [status(thm)],
% 3.63/0.99                [c_4565,c_1280,c_1065,c_802,c_566,c_567,c_26]) ).
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.63/0.99  
% 3.63/0.99  ------                               Statistics
% 3.63/0.99  
% 3.63/0.99  ------ General
% 3.63/0.99  
% 3.63/0.99  abstr_ref_over_cycles:                  0
% 3.63/0.99  abstr_ref_under_cycles:                 0
% 3.63/0.99  gc_basic_clause_elim:                   0
% 3.63/0.99  forced_gc_time:                         0
% 3.63/0.99  parsing_time:                           0.009
% 3.63/0.99  unif_index_cands_time:                  0.
% 3.63/0.99  unif_index_add_time:                    0.
% 3.63/0.99  orderings_time:                         0.
% 3.63/0.99  out_proof_time:                         0.013
% 3.63/0.99  total_time:                             0.229
% 3.63/0.99  num_of_symbols:                         42
% 3.63/0.99  num_of_terms:                           6540
% 3.63/0.99  
% 3.63/0.99  ------ Preprocessing
% 3.63/0.99  
% 3.63/0.99  num_of_splits:                          0
% 3.63/0.99  num_of_split_atoms:                     0
% 3.63/0.99  num_of_reused_defs:                     0
% 3.63/0.99  num_eq_ax_congr_red:                    20
% 3.63/0.99  num_of_sem_filtered_clauses:            1
% 3.63/0.99  num_of_subtypes:                        0
% 3.63/0.99  monotx_restored_types:                  0
% 3.63/0.99  sat_num_of_epr_types:                   0
% 3.63/0.99  sat_num_of_non_cyclic_types:            0
% 3.63/0.99  sat_guarded_non_collapsed_types:        0
% 3.63/0.99  num_pure_diseq_elim:                    0
% 3.63/0.99  simp_replaced_by:                       0
% 3.63/0.99  res_preprocessed:                       94
% 3.63/0.99  prep_upred:                             0
% 3.63/0.99  prep_unflattend:                        0
% 3.63/0.99  smt_new_axioms:                         0
% 3.63/0.99  pred_elim_cands:                        1
% 3.63/0.99  pred_elim:                              0
% 3.63/0.99  pred_elim_cl:                           0
% 3.63/0.99  pred_elim_cycles:                       1
% 3.63/0.99  merged_defs:                            0
% 3.63/0.99  merged_defs_ncl:                        0
% 3.63/0.99  bin_hyper_res:                          0
% 3.63/0.99  prep_cycles:                            3
% 3.63/0.99  pred_elim_time:                         0.
% 3.63/0.99  splitting_time:                         0.
% 3.63/0.99  sem_filter_time:                        0.
% 3.63/0.99  monotx_time:                            0.
% 3.63/0.99  subtype_inf_time:                       0.
% 3.63/0.99  
% 3.63/0.99  ------ Problem properties
% 3.63/0.99  
% 3.63/0.99  clauses:                                27
% 3.63/0.99  conjectures:                            1
% 3.63/0.99  epr:                                    0
% 3.63/0.99  horn:                                   21
% 3.63/0.99  ground:                                 1
% 3.63/0.99  unary:                                  10
% 3.63/0.99  binary:                                 4
% 3.63/0.99  lits:                                   62
% 3.63/0.99  lits_eq:                                26
% 3.63/0.99  fd_pure:                                0
% 3.63/0.99  fd_pseudo:                              0
% 3.63/0.99  fd_cond:                                0
% 3.63/0.99  fd_pseudo_cond:                         10
% 3.63/0.99  ac_symbols:                             1
% 3.63/0.99  
% 3.63/0.99  ------ Propositional Solver
% 3.63/0.99  
% 3.63/0.99  prop_solver_calls:                      23
% 3.63/0.99  prop_fast_solver_calls:                 493
% 3.63/0.99  smt_solver_calls:                       0
% 3.63/0.99  smt_fast_solver_calls:                  0
% 3.63/0.99  prop_num_of_clauses:                    1969
% 3.63/0.99  prop_preprocess_simplified:             5465
% 3.63/0.99  prop_fo_subsumed:                       0
% 3.63/0.99  prop_solver_time:                       0.
% 3.63/0.99  smt_solver_time:                        0.
% 3.63/0.99  smt_fast_solver_time:                   0.
% 3.63/0.99  prop_fast_solver_time:                  0.
% 3.63/0.99  prop_unsat_core_time:                   0.
% 3.63/0.99  
% 3.63/0.99  ------ QBF
% 3.63/0.99  
% 3.63/0.99  qbf_q_res:                              0
% 3.63/0.99  qbf_num_tautologies:                    0
% 3.63/0.99  qbf_prep_cycles:                        0
% 3.63/0.99  
% 3.63/0.99  ------ BMC1
% 3.63/0.99  
% 3.63/0.99  bmc1_current_bound:                     -1
% 3.63/0.99  bmc1_last_solved_bound:                 -1
% 3.63/0.99  bmc1_unsat_core_size:                   -1
% 3.63/0.99  bmc1_unsat_core_parents_size:           -1
% 3.63/0.99  bmc1_merge_next_fun:                    0
% 3.63/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.63/0.99  
% 3.63/0.99  ------ Instantiation
% 3.63/0.99  
% 3.63/0.99  inst_num_of_clauses:                    466
% 3.63/0.99  inst_num_in_passive:                    184
% 3.63/0.99  inst_num_in_active:                     163
% 3.63/0.99  inst_num_in_unprocessed:                118
% 3.63/0.99  inst_num_of_loops:                      183
% 3.63/0.99  inst_num_of_learning_restarts:          0
% 3.63/0.99  inst_num_moves_active_passive:          18
% 3.63/0.99  inst_lit_activity:                      0
% 3.63/0.99  inst_lit_activity_moves:                0
% 3.63/0.99  inst_num_tautologies:                   0
% 3.63/0.99  inst_num_prop_implied:                  0
% 3.63/0.99  inst_num_existing_simplified:           0
% 3.63/0.99  inst_num_eq_res_simplified:             0
% 3.63/0.99  inst_num_child_elim:                    0
% 3.63/0.99  inst_num_of_dismatching_blockings:      151
% 3.63/0.99  inst_num_of_non_proper_insts:           376
% 3.63/0.99  inst_num_of_duplicates:                 0
% 3.63/0.99  inst_inst_num_from_inst_to_res:         0
% 3.63/0.99  inst_dismatching_checking_time:         0.
% 3.63/0.99  
% 3.63/0.99  ------ Resolution
% 3.63/0.99  
% 3.63/0.99  res_num_of_clauses:                     0
% 3.63/0.99  res_num_in_passive:                     0
% 3.63/0.99  res_num_in_active:                      0
% 3.63/0.99  res_num_of_loops:                       97
% 3.63/0.99  res_forward_subset_subsumed:            61
% 3.63/0.99  res_backward_subset_subsumed:           0
% 3.63/0.99  res_forward_subsumed:                   0
% 3.63/0.99  res_backward_subsumed:                  0
% 3.63/0.99  res_forward_subsumption_resolution:     0
% 3.63/0.99  res_backward_subsumption_resolution:    0
% 3.63/0.99  res_clause_to_clause_subsumption:       2485
% 3.63/0.99  res_orphan_elimination:                 0
% 3.63/0.99  res_tautology_del:                      2
% 3.63/0.99  res_num_eq_res_simplified:              0
% 3.63/0.99  res_num_sel_changes:                    0
% 3.63/0.99  res_moves_from_active_to_pass:          0
% 3.63/0.99  
% 3.63/0.99  ------ Superposition
% 3.63/0.99  
% 3.63/0.99  sup_time_total:                         0.
% 3.63/0.99  sup_time_generating:                    0.
% 3.63/0.99  sup_time_sim_full:                      0.
% 3.63/0.99  sup_time_sim_immed:                     0.
% 3.63/0.99  
% 3.63/0.99  sup_num_of_clauses:                     206
% 3.63/0.99  sup_num_in_active:                      35
% 3.63/0.99  sup_num_in_passive:                     171
% 3.63/0.99  sup_num_of_loops:                       36
% 3.63/0.99  sup_fw_superposition:                   538
% 3.63/0.99  sup_bw_superposition:                   354
% 3.63/0.99  sup_immediate_simplified:               226
% 3.63/0.99  sup_given_eliminated:                   1
% 3.63/0.99  comparisons_done:                       0
% 3.63/0.99  comparisons_avoided:                    6
% 3.63/0.99  
% 3.63/0.99  ------ Simplifications
% 3.63/0.99  
% 3.63/0.99  
% 3.63/0.99  sim_fw_subset_subsumed:                 0
% 3.63/0.99  sim_bw_subset_subsumed:                 0
% 3.63/0.99  sim_fw_subsumed:                        45
% 3.63/0.99  sim_bw_subsumed:                        0
% 3.63/0.99  sim_fw_subsumption_res:                 0
% 3.63/0.99  sim_bw_subsumption_res:                 0
% 3.63/0.99  sim_tautology_del:                      0
% 3.63/0.99  sim_eq_tautology_del:                   72
% 3.63/0.99  sim_eq_res_simp:                        0
% 3.63/0.99  sim_fw_demodulated:                     63
% 3.63/0.99  sim_bw_demodulated:                     9
% 3.63/0.99  sim_light_normalised:                   133
% 3.63/0.99  sim_joinable_taut:                      12
% 3.63/0.99  sim_joinable_simp:                      0
% 3.63/0.99  sim_ac_normalised:                      0
% 3.63/0.99  sim_smt_subsumption:                    0
% 3.63/0.99  
%------------------------------------------------------------------------------
