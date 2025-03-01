%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:31:57 EST 2020

% Result     : Theorem 2.69s
% Output     : CNFRefutation 2.69s
% Verified   : 
% Statistics : Number of formulae       :  127 ( 687 expanded)
%              Number of clauses        :   52 ( 138 expanded)
%              Number of leaves         :   23 ( 184 expanded)
%              Depth                    :   21
%              Number of atoms          :  346 (1550 expanded)
%              Number of equality atoms :  171 ( 826 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :   12 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f17,conjecture,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <=> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0,X1] :
        ( r1_tarski(X0,k1_tarski(X1))
      <=> ( k1_tarski(X1) = X0
          | k1_xboole_0 = X0 ) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f24,plain,(
    ? [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <~> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f46,plain,(
    ? [X0,X1] :
      ( ( ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 )
        | ~ r1_tarski(X0,k1_tarski(X1)) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f47,plain,(
    ? [X0,X1] :
      ( ( ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 )
        | ~ r1_tarski(X0,k1_tarski(X1)) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(flattening,[],[f46])).

fof(f48,plain,
    ( ? [X0,X1] :
        ( ( ( k1_tarski(X1) != X0
            & k1_xboole_0 != X0 )
          | ~ r1_tarski(X0,k1_tarski(X1)) )
        & ( k1_tarski(X1) = X0
          | k1_xboole_0 = X0
          | r1_tarski(X0,k1_tarski(X1)) ) )
   => ( ( ( k1_tarski(sK6) != sK5
          & k1_xboole_0 != sK5 )
        | ~ r1_tarski(sK5,k1_tarski(sK6)) )
      & ( k1_tarski(sK6) = sK5
        | k1_xboole_0 = sK5
        | r1_tarski(sK5,k1_tarski(sK6)) ) ) ),
    introduced(choice_axiom,[])).

fof(f49,plain,
    ( ( ( k1_tarski(sK6) != sK5
        & k1_xboole_0 != sK5 )
      | ~ r1_tarski(sK5,k1_tarski(sK6)) )
    & ( k1_tarski(sK6) = sK5
      | k1_xboole_0 = sK5
      | r1_tarski(sK5,k1_tarski(sK6)) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6])],[f47,f48])).

fof(f83,plain,
    ( k1_tarski(sK6) = sK5
    | k1_xboole_0 = sK5
    | r1_tarski(sK5,k1_tarski(sK6)) ),
    inference(cnf_transformation,[],[f49])).

fof(f9,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f74,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f75,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f76,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f77,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f12])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f78,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f13])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f79,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f14])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f80,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f15])).

fof(f86,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f79,f80])).

fof(f87,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f78,f86])).

fof(f88,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f77,f87])).

fof(f89,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f76,f88])).

fof(f90,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f75,f89])).

fof(f91,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f74,f90])).

fof(f108,plain,
    ( k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5
    | k1_xboole_0 = sK5
    | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) ),
    inference(definition_unfolding,[],[f83,f91,f91])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
        <=> r2_hidden(X2,X1) )
     => X0 = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ? [X2] :
          ( r2_hidden(X2,X0)
        <~> r2_hidden(X2,X1) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f29,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ? [X2] :
          ( ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
          & ( r2_hidden(X2,X1)
            | r2_hidden(X2,X0) ) ) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f30,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
          & ( r2_hidden(X2,X1)
            | r2_hidden(X2,X0) ) )
     => ( ( ~ r2_hidden(sK1(X0,X1),X1)
          | ~ r2_hidden(sK1(X0,X1),X0) )
        & ( r2_hidden(sK1(X0,X1),X1)
          | r2_hidden(sK1(X0,X1),X0) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ( ( ~ r2_hidden(sK1(X0,X1),X1)
          | ~ r2_hidden(sK1(X0,X1),X0) )
        & ( r2_hidden(sK1(X0,X1),X1)
          | r2_hidden(sK1(X0,X1),X0) ) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f29,f30])).

fof(f53,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | r2_hidden(sK1(X0,X1),X1)
      | r2_hidden(sK1(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f25])).

fof(f27,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f26,f27])).

fof(f51,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ~ ( ! [X3] : ~ r2_hidden(X3,k3_xboole_0(X0,X1))
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f3])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f32,plain,(
    ! [X1,X0] :
      ( ? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1))
     => r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] : ~ r2_hidden(X2,k3_xboole_0(X0,X1)) )
      & ( r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1))
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f22,f32])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f6,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f6])).

fof(f5,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f34])).

fof(f59,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f50,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> X0 = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | X0 != X2 )
            & ( X0 = X2
              | ~ r2_hidden(X2,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(rectify,[],[f41])).

fof(f43,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( X0 != X2
            | ~ r2_hidden(X2,X1) )
          & ( X0 = X2
            | r2_hidden(X2,X1) ) )
     => ( ( sK4(X0,X1) != X0
          | ~ r2_hidden(sK4(X0,X1),X1) )
        & ( sK4(X0,X1) = X0
          | r2_hidden(sK4(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ( ( sK4(X0,X1) != X0
            | ~ r2_hidden(sK4(X0,X1),X1) )
          & ( sK4(X0,X1) = X0
            | r2_hidden(sK4(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f42,f43])).

fof(f70,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f44])).

fof(f103,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1 ) ),
    inference(definition_unfolding,[],[f70,f91])).

fof(f120,plain,(
    ! [X0,X3] :
      ( X0 = X3
      | ~ r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ) ),
    inference(equality_resolution,[],[f103])).

fof(f85,plain,
    ( k1_tarski(sK6) != sK5
    | ~ r1_tarski(sK5,k1_tarski(sK6)) ),
    inference(cnf_transformation,[],[f49])).

fof(f106,plain,
    ( k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != sK5
    | ~ r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) ),
    inference(definition_unfolding,[],[f85,f91,f91])).

fof(f57,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f110,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f57])).

fof(f16,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f82,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f104,plain,(
    ! [X0,X1] :
      ( r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f82,f91])).

fof(f84,plain,
    ( k1_xboole_0 != sK5
    | ~ r1_tarski(sK5,k1_tarski(sK6)) ),
    inference(cnf_transformation,[],[f49])).

fof(f107,plain,
    ( k1_xboole_0 != sK5
    | ~ r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) ),
    inference(definition_unfolding,[],[f84,f91])).

cnf(c_28,negated_conjecture,
    ( r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
    | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5
    | k1_xboole_0 = sK5 ),
    inference(cnf_transformation,[],[f108])).

cnf(c_1203,plain,
    ( k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5
    | k1_xboole_0 = sK5
    | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_4,plain,
    ( r2_hidden(sK1(X0,X1),X1)
    | r2_hidden(sK1(X0,X1),X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1223,plain,
    ( X0 = X1
    | r2_hidden(sK1(X1,X0),X0) = iProver_top
    | r2_hidden(sK1(X1,X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1226,plain,
    ( r2_hidden(sK0(X0,X1),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_5,plain,
    ( ~ r1_xboole_0(X0,X1)
    | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_11,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_374,plain,
    ( ~ r2_hidden(X0,k3_xboole_0(X1,X2))
    | X3 != X1
    | k1_xboole_0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_11])).

cnf(c_375,plain,
    ( ~ r2_hidden(X0,k3_xboole_0(X1,k1_xboole_0)) ),
    inference(unflattening,[status(thm)],[c_374])).

cnf(c_1201,plain,
    ( r2_hidden(X0,k3_xboole_0(X1,k1_xboole_0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_375])).

cnf(c_1714,plain,
    ( r1_tarski(k3_xboole_0(X0,k1_xboole_0),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1226,c_1201])).

cnf(c_10,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1220,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_7,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1222,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1847,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1220,c_1222])).

cnf(c_2049,plain,
    ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1714,c_1847])).

cnf(c_2209,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2049,c_1201])).

cnf(c_2477,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK1(k1_xboole_0,X0),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1223,c_2209])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1225,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_3710,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK1(k1_xboole_0,X0),X1) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2477,c_1225])).

cnf(c_23,plain,
    ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f120])).

cnf(c_1208,plain,
    ( X0 = X1
    | r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_5130,plain,
    ( sK1(k1_xboole_0,X0) = X1
    | k1_xboole_0 = X0
    | r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3710,c_1208])).

cnf(c_6681,plain,
    ( k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5
    | sK1(k1_xboole_0,sK5) = sK6
    | sK5 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1203,c_5130])).

cnf(c_26,negated_conjecture,
    ( ~ r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
    | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != sK5 ),
    inference(cnf_transformation,[],[f106])).

cnf(c_622,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1535,plain,
    ( sK5 = sK5 ),
    inference(instantiation,[status(thm)],[c_622])).

cnf(c_624,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1430,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
    | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != X1
    | sK5 != X0 ),
    inference(instantiation,[status(thm)],[c_624])).

cnf(c_1534,plain,
    ( ~ r1_tarski(sK5,X0)
    | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
    | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != X0
    | sK5 != sK5 ),
    inference(instantiation,[status(thm)],[c_1430])).

cnf(c_1644,plain,
    ( r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
    | ~ r1_tarski(sK5,sK5)
    | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != sK5
    | sK5 != sK5 ),
    inference(instantiation,[status(thm)],[c_1534])).

cnf(c_9,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f110])).

cnf(c_1645,plain,
    ( r1_tarski(sK5,sK5) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_6706,plain,
    ( sK1(k1_xboole_0,sK5) = sK6
    | sK5 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6681,c_26,c_1535,c_1644,c_1645])).

cnf(c_6712,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(sK1(k1_xboole_0,sK5),sK5) = iProver_top
    | r2_hidden(sK6,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_6706,c_1223])).

cnf(c_24,plain,
    ( ~ r2_hidden(X0,X1)
    | r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) ),
    inference(cnf_transformation,[],[f104])).

cnf(c_1207,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_1848,plain,
    ( k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5
    | sK5 = k1_xboole_0
    | r1_tarski(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1203,c_1222])).

cnf(c_1864,plain,
    ( sK5 = k1_xboole_0
    | r1_tarski(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK5) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1848,c_26,c_1535,c_1644,c_1645])).

cnf(c_2456,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(sK6,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1207,c_1864])).

cnf(c_6714,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(sK6,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_6706,c_2477])).

cnf(c_6872,plain,
    ( sK5 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6712,c_2456,c_6714])).

cnf(c_27,negated_conjecture,
    ( ~ r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
    | k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f107])).

cnf(c_1204,plain,
    ( k1_xboole_0 != sK5
    | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_6880,plain,
    ( k1_xboole_0 != k1_xboole_0
    | r1_tarski(k1_xboole_0,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_6872,c_1204])).

cnf(c_6881,plain,
    ( r1_tarski(k1_xboole_0,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_6880])).

cnf(c_1667,plain,
    ( r1_tarski(k1_xboole_0,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1670,plain,
    ( r1_tarski(k1_xboole_0,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1667])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6881,c_1670])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 17:52:12 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.69/1.03  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.69/1.03  
% 2.69/1.03  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.69/1.03  
% 2.69/1.03  ------  iProver source info
% 2.69/1.03  
% 2.69/1.03  git: date: 2020-06-30 10:37:57 +0100
% 2.69/1.03  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.69/1.03  git: non_committed_changes: false
% 2.69/1.03  git: last_make_outside_of_git: false
% 2.69/1.03  
% 2.69/1.03  ------ 
% 2.69/1.03  
% 2.69/1.03  ------ Input Options
% 2.69/1.03  
% 2.69/1.03  --out_options                           all
% 2.69/1.03  --tptp_safe_out                         true
% 2.69/1.03  --problem_path                          ""
% 2.69/1.03  --include_path                          ""
% 2.69/1.03  --clausifier                            res/vclausify_rel
% 2.69/1.03  --clausifier_options                    --mode clausify
% 2.69/1.03  --stdin                                 false
% 2.69/1.03  --stats_out                             all
% 2.69/1.03  
% 2.69/1.03  ------ General Options
% 2.69/1.03  
% 2.69/1.03  --fof                                   false
% 2.69/1.03  --time_out_real                         305.
% 2.69/1.03  --time_out_virtual                      -1.
% 2.69/1.03  --symbol_type_check                     false
% 2.69/1.03  --clausify_out                          false
% 2.69/1.03  --sig_cnt_out                           false
% 2.69/1.03  --trig_cnt_out                          false
% 2.69/1.03  --trig_cnt_out_tolerance                1.
% 2.69/1.03  --trig_cnt_out_sk_spl                   false
% 2.69/1.03  --abstr_cl_out                          false
% 2.69/1.03  
% 2.69/1.03  ------ Global Options
% 2.69/1.03  
% 2.69/1.03  --schedule                              default
% 2.69/1.03  --add_important_lit                     false
% 2.69/1.03  --prop_solver_per_cl                    1000
% 2.69/1.03  --min_unsat_core                        false
% 2.69/1.03  --soft_assumptions                      false
% 2.69/1.03  --soft_lemma_size                       3
% 2.69/1.03  --prop_impl_unit_size                   0
% 2.69/1.03  --prop_impl_unit                        []
% 2.69/1.03  --share_sel_clauses                     true
% 2.69/1.03  --reset_solvers                         false
% 2.69/1.03  --bc_imp_inh                            [conj_cone]
% 2.69/1.03  --conj_cone_tolerance                   3.
% 2.69/1.03  --extra_neg_conj                        none
% 2.69/1.03  --large_theory_mode                     true
% 2.69/1.03  --prolific_symb_bound                   200
% 2.69/1.03  --lt_threshold                          2000
% 2.69/1.03  --clause_weak_htbl                      true
% 2.69/1.03  --gc_record_bc_elim                     false
% 2.69/1.03  
% 2.69/1.03  ------ Preprocessing Options
% 2.69/1.03  
% 2.69/1.03  --preprocessing_flag                    true
% 2.69/1.03  --time_out_prep_mult                    0.1
% 2.69/1.03  --splitting_mode                        input
% 2.69/1.03  --splitting_grd                         true
% 2.69/1.03  --splitting_cvd                         false
% 2.69/1.03  --splitting_cvd_svl                     false
% 2.69/1.03  --splitting_nvd                         32
% 2.69/1.03  --sub_typing                            true
% 2.69/1.03  --prep_gs_sim                           true
% 2.69/1.03  --prep_unflatten                        true
% 2.69/1.03  --prep_res_sim                          true
% 2.69/1.03  --prep_upred                            true
% 2.69/1.03  --prep_sem_filter                       exhaustive
% 2.69/1.03  --prep_sem_filter_out                   false
% 2.69/1.03  --pred_elim                             true
% 2.69/1.03  --res_sim_input                         true
% 2.69/1.03  --eq_ax_congr_red                       true
% 2.69/1.03  --pure_diseq_elim                       true
% 2.69/1.03  --brand_transform                       false
% 2.69/1.03  --non_eq_to_eq                          false
% 2.69/1.03  --prep_def_merge                        true
% 2.69/1.03  --prep_def_merge_prop_impl              false
% 2.69/1.03  --prep_def_merge_mbd                    true
% 2.69/1.03  --prep_def_merge_tr_red                 false
% 2.69/1.03  --prep_def_merge_tr_cl                  false
% 2.69/1.03  --smt_preprocessing                     true
% 2.69/1.03  --smt_ac_axioms                         fast
% 2.69/1.03  --preprocessed_out                      false
% 2.69/1.03  --preprocessed_stats                    false
% 2.69/1.03  
% 2.69/1.03  ------ Abstraction refinement Options
% 2.69/1.03  
% 2.69/1.03  --abstr_ref                             []
% 2.69/1.03  --abstr_ref_prep                        false
% 2.69/1.03  --abstr_ref_until_sat                   false
% 2.69/1.03  --abstr_ref_sig_restrict                funpre
% 2.69/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 2.69/1.03  --abstr_ref_under                       []
% 2.69/1.03  
% 2.69/1.03  ------ SAT Options
% 2.69/1.03  
% 2.69/1.03  --sat_mode                              false
% 2.69/1.03  --sat_fm_restart_options                ""
% 2.69/1.03  --sat_gr_def                            false
% 2.69/1.03  --sat_epr_types                         true
% 2.69/1.03  --sat_non_cyclic_types                  false
% 2.69/1.03  --sat_finite_models                     false
% 2.69/1.03  --sat_fm_lemmas                         false
% 2.69/1.03  --sat_fm_prep                           false
% 2.69/1.03  --sat_fm_uc_incr                        true
% 2.69/1.03  --sat_out_model                         small
% 2.69/1.03  --sat_out_clauses                       false
% 2.69/1.03  
% 2.69/1.03  ------ QBF Options
% 2.69/1.03  
% 2.69/1.03  --qbf_mode                              false
% 2.69/1.03  --qbf_elim_univ                         false
% 2.69/1.03  --qbf_dom_inst                          none
% 2.69/1.03  --qbf_dom_pre_inst                      false
% 2.69/1.03  --qbf_sk_in                             false
% 2.69/1.03  --qbf_pred_elim                         true
% 2.69/1.03  --qbf_split                             512
% 2.69/1.03  
% 2.69/1.03  ------ BMC1 Options
% 2.69/1.03  
% 2.69/1.03  --bmc1_incremental                      false
% 2.69/1.03  --bmc1_axioms                           reachable_all
% 2.69/1.03  --bmc1_min_bound                        0
% 2.69/1.03  --bmc1_max_bound                        -1
% 2.69/1.03  --bmc1_max_bound_default                -1
% 2.69/1.03  --bmc1_symbol_reachability              true
% 2.69/1.03  --bmc1_property_lemmas                  false
% 2.69/1.03  --bmc1_k_induction                      false
% 2.69/1.03  --bmc1_non_equiv_states                 false
% 2.69/1.03  --bmc1_deadlock                         false
% 2.69/1.03  --bmc1_ucm                              false
% 2.69/1.03  --bmc1_add_unsat_core                   none
% 2.69/1.03  --bmc1_unsat_core_children              false
% 2.69/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 2.69/1.03  --bmc1_out_stat                         full
% 2.69/1.03  --bmc1_ground_init                      false
% 2.69/1.03  --bmc1_pre_inst_next_state              false
% 2.69/1.03  --bmc1_pre_inst_state                   false
% 2.69/1.03  --bmc1_pre_inst_reach_state             false
% 2.69/1.03  --bmc1_out_unsat_core                   false
% 2.69/1.03  --bmc1_aig_witness_out                  false
% 2.69/1.03  --bmc1_verbose                          false
% 2.69/1.03  --bmc1_dump_clauses_tptp                false
% 2.69/1.03  --bmc1_dump_unsat_core_tptp             false
% 2.69/1.03  --bmc1_dump_file                        -
% 2.69/1.03  --bmc1_ucm_expand_uc_limit              128
% 2.69/1.03  --bmc1_ucm_n_expand_iterations          6
% 2.69/1.03  --bmc1_ucm_extend_mode                  1
% 2.69/1.03  --bmc1_ucm_init_mode                    2
% 2.69/1.03  --bmc1_ucm_cone_mode                    none
% 2.69/1.03  --bmc1_ucm_reduced_relation_type        0
% 2.69/1.03  --bmc1_ucm_relax_model                  4
% 2.69/1.03  --bmc1_ucm_full_tr_after_sat            true
% 2.69/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 2.69/1.03  --bmc1_ucm_layered_model                none
% 2.69/1.03  --bmc1_ucm_max_lemma_size               10
% 2.69/1.03  
% 2.69/1.03  ------ AIG Options
% 2.69/1.03  
% 2.69/1.03  --aig_mode                              false
% 2.69/1.03  
% 2.69/1.03  ------ Instantiation Options
% 2.69/1.03  
% 2.69/1.03  --instantiation_flag                    true
% 2.69/1.03  --inst_sos_flag                         false
% 2.69/1.03  --inst_sos_phase                        true
% 2.69/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.69/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.69/1.03  --inst_lit_sel_side                     num_symb
% 2.69/1.03  --inst_solver_per_active                1400
% 2.69/1.03  --inst_solver_calls_frac                1.
% 2.69/1.03  --inst_passive_queue_type               priority_queues
% 2.69/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.69/1.03  --inst_passive_queues_freq              [25;2]
% 2.69/1.03  --inst_dismatching                      true
% 2.69/1.03  --inst_eager_unprocessed_to_passive     true
% 2.69/1.03  --inst_prop_sim_given                   true
% 2.69/1.03  --inst_prop_sim_new                     false
% 2.69/1.03  --inst_subs_new                         false
% 2.69/1.03  --inst_eq_res_simp                      false
% 2.69/1.03  --inst_subs_given                       false
% 2.69/1.03  --inst_orphan_elimination               true
% 2.69/1.03  --inst_learning_loop_flag               true
% 2.69/1.03  --inst_learning_start                   3000
% 2.69/1.03  --inst_learning_factor                  2
% 2.69/1.03  --inst_start_prop_sim_after_learn       3
% 2.69/1.03  --inst_sel_renew                        solver
% 2.69/1.03  --inst_lit_activity_flag                true
% 2.69/1.03  --inst_restr_to_given                   false
% 2.69/1.03  --inst_activity_threshold               500
% 2.69/1.03  --inst_out_proof                        true
% 2.69/1.03  
% 2.69/1.03  ------ Resolution Options
% 2.69/1.03  
% 2.69/1.03  --resolution_flag                       true
% 2.69/1.03  --res_lit_sel                           adaptive
% 2.69/1.03  --res_lit_sel_side                      none
% 2.69/1.03  --res_ordering                          kbo
% 2.69/1.03  --res_to_prop_solver                    active
% 2.69/1.03  --res_prop_simpl_new                    false
% 2.69/1.03  --res_prop_simpl_given                  true
% 2.69/1.03  --res_passive_queue_type                priority_queues
% 2.69/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.69/1.03  --res_passive_queues_freq               [15;5]
% 2.69/1.03  --res_forward_subs                      full
% 2.69/1.03  --res_backward_subs                     full
% 2.69/1.03  --res_forward_subs_resolution           true
% 2.69/1.03  --res_backward_subs_resolution          true
% 2.69/1.03  --res_orphan_elimination                true
% 2.69/1.03  --res_time_limit                        2.
% 2.69/1.03  --res_out_proof                         true
% 2.69/1.03  
% 2.69/1.03  ------ Superposition Options
% 2.69/1.03  
% 2.69/1.03  --superposition_flag                    true
% 2.69/1.03  --sup_passive_queue_type                priority_queues
% 2.69/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.69/1.03  --sup_passive_queues_freq               [8;1;4]
% 2.69/1.03  --demod_completeness_check              fast
% 2.69/1.03  --demod_use_ground                      true
% 2.69/1.03  --sup_to_prop_solver                    passive
% 2.69/1.03  --sup_prop_simpl_new                    true
% 2.69/1.03  --sup_prop_simpl_given                  true
% 2.69/1.03  --sup_fun_splitting                     false
% 2.69/1.03  --sup_smt_interval                      50000
% 2.69/1.03  
% 2.69/1.03  ------ Superposition Simplification Setup
% 2.69/1.03  
% 2.69/1.03  --sup_indices_passive                   []
% 2.69/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 2.69/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/1.03  --sup_full_bw                           [BwDemod]
% 2.69/1.03  --sup_immed_triv                        [TrivRules]
% 2.69/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.69/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/1.03  --sup_immed_bw_main                     []
% 2.69/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 2.69/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/1.04  
% 2.69/1.04  ------ Combination Options
% 2.69/1.04  
% 2.69/1.04  --comb_res_mult                         3
% 2.69/1.04  --comb_sup_mult                         2
% 2.69/1.04  --comb_inst_mult                        10
% 2.69/1.04  
% 2.69/1.04  ------ Debug Options
% 2.69/1.04  
% 2.69/1.04  --dbg_backtrace                         false
% 2.69/1.04  --dbg_dump_prop_clauses                 false
% 2.69/1.04  --dbg_dump_prop_clauses_file            -
% 2.69/1.04  --dbg_out_stat                          false
% 2.69/1.04  ------ Parsing...
% 2.69/1.04  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.69/1.04  
% 2.69/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.69/1.04  
% 2.69/1.04  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.69/1.04  
% 2.69/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.69/1.04  ------ Proving...
% 2.69/1.04  ------ Problem Properties 
% 2.69/1.04  
% 2.69/1.04  
% 2.69/1.04  clauses                                 27
% 2.69/1.04  conjectures                             3
% 2.69/1.04  EPR                                     4
% 2.69/1.04  Horn                                    21
% 2.69/1.04  unary                                   7
% 2.69/1.04  binary                                  8
% 2.69/1.04  lits                                    62
% 2.69/1.04  lits eq                                 25
% 2.69/1.04  fd_pure                                 0
% 2.69/1.04  fd_pseudo                               0
% 2.69/1.04  fd_cond                                 0
% 2.69/1.04  fd_pseudo_cond                          9
% 2.69/1.04  AC symbols                              0
% 2.69/1.04  
% 2.69/1.04  ------ Schedule dynamic 5 is on 
% 2.69/1.04  
% 2.69/1.04  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.69/1.04  
% 2.69/1.04  
% 2.69/1.04  ------ 
% 2.69/1.04  Current options:
% 2.69/1.04  ------ 
% 2.69/1.04  
% 2.69/1.04  ------ Input Options
% 2.69/1.04  
% 2.69/1.04  --out_options                           all
% 2.69/1.04  --tptp_safe_out                         true
% 2.69/1.04  --problem_path                          ""
% 2.69/1.04  --include_path                          ""
% 2.69/1.04  --clausifier                            res/vclausify_rel
% 2.69/1.04  --clausifier_options                    --mode clausify
% 2.69/1.04  --stdin                                 false
% 2.69/1.04  --stats_out                             all
% 2.69/1.04  
% 2.69/1.04  ------ General Options
% 2.69/1.04  
% 2.69/1.04  --fof                                   false
% 2.69/1.04  --time_out_real                         305.
% 2.69/1.04  --time_out_virtual                      -1.
% 2.69/1.04  --symbol_type_check                     false
% 2.69/1.04  --clausify_out                          false
% 2.69/1.04  --sig_cnt_out                           false
% 2.69/1.04  --trig_cnt_out                          false
% 2.69/1.04  --trig_cnt_out_tolerance                1.
% 2.69/1.04  --trig_cnt_out_sk_spl                   false
% 2.69/1.04  --abstr_cl_out                          false
% 2.69/1.04  
% 2.69/1.04  ------ Global Options
% 2.69/1.04  
% 2.69/1.04  --schedule                              default
% 2.69/1.04  --add_important_lit                     false
% 2.69/1.04  --prop_solver_per_cl                    1000
% 2.69/1.04  --min_unsat_core                        false
% 2.69/1.04  --soft_assumptions                      false
% 2.69/1.04  --soft_lemma_size                       3
% 2.69/1.04  --prop_impl_unit_size                   0
% 2.69/1.04  --prop_impl_unit                        []
% 2.69/1.04  --share_sel_clauses                     true
% 2.69/1.04  --reset_solvers                         false
% 2.69/1.04  --bc_imp_inh                            [conj_cone]
% 2.69/1.04  --conj_cone_tolerance                   3.
% 2.69/1.04  --extra_neg_conj                        none
% 2.69/1.04  --large_theory_mode                     true
% 2.69/1.04  --prolific_symb_bound                   200
% 2.69/1.04  --lt_threshold                          2000
% 2.69/1.04  --clause_weak_htbl                      true
% 2.69/1.04  --gc_record_bc_elim                     false
% 2.69/1.04  
% 2.69/1.04  ------ Preprocessing Options
% 2.69/1.04  
% 2.69/1.04  --preprocessing_flag                    true
% 2.69/1.04  --time_out_prep_mult                    0.1
% 2.69/1.04  --splitting_mode                        input
% 2.69/1.04  --splitting_grd                         true
% 2.69/1.04  --splitting_cvd                         false
% 2.69/1.04  --splitting_cvd_svl                     false
% 2.69/1.04  --splitting_nvd                         32
% 2.69/1.04  --sub_typing                            true
% 2.69/1.04  --prep_gs_sim                           true
% 2.69/1.04  --prep_unflatten                        true
% 2.69/1.04  --prep_res_sim                          true
% 2.69/1.04  --prep_upred                            true
% 2.69/1.04  --prep_sem_filter                       exhaustive
% 2.69/1.04  --prep_sem_filter_out                   false
% 2.69/1.04  --pred_elim                             true
% 2.69/1.04  --res_sim_input                         true
% 2.69/1.04  --eq_ax_congr_red                       true
% 2.69/1.04  --pure_diseq_elim                       true
% 2.69/1.04  --brand_transform                       false
% 2.69/1.04  --non_eq_to_eq                          false
% 2.69/1.04  --prep_def_merge                        true
% 2.69/1.04  --prep_def_merge_prop_impl              false
% 2.69/1.04  --prep_def_merge_mbd                    true
% 2.69/1.04  --prep_def_merge_tr_red                 false
% 2.69/1.04  --prep_def_merge_tr_cl                  false
% 2.69/1.04  --smt_preprocessing                     true
% 2.69/1.04  --smt_ac_axioms                         fast
% 2.69/1.04  --preprocessed_out                      false
% 2.69/1.04  --preprocessed_stats                    false
% 2.69/1.04  
% 2.69/1.04  ------ Abstraction refinement Options
% 2.69/1.04  
% 2.69/1.04  --abstr_ref                             []
% 2.69/1.04  --abstr_ref_prep                        false
% 2.69/1.04  --abstr_ref_until_sat                   false
% 2.69/1.04  --abstr_ref_sig_restrict                funpre
% 2.69/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 2.69/1.04  --abstr_ref_under                       []
% 2.69/1.04  
% 2.69/1.04  ------ SAT Options
% 2.69/1.04  
% 2.69/1.04  --sat_mode                              false
% 2.69/1.04  --sat_fm_restart_options                ""
% 2.69/1.04  --sat_gr_def                            false
% 2.69/1.04  --sat_epr_types                         true
% 2.69/1.04  --sat_non_cyclic_types                  false
% 2.69/1.04  --sat_finite_models                     false
% 2.69/1.04  --sat_fm_lemmas                         false
% 2.69/1.04  --sat_fm_prep                           false
% 2.69/1.04  --sat_fm_uc_incr                        true
% 2.69/1.04  --sat_out_model                         small
% 2.69/1.04  --sat_out_clauses                       false
% 2.69/1.04  
% 2.69/1.04  ------ QBF Options
% 2.69/1.04  
% 2.69/1.04  --qbf_mode                              false
% 2.69/1.04  --qbf_elim_univ                         false
% 2.69/1.04  --qbf_dom_inst                          none
% 2.69/1.04  --qbf_dom_pre_inst                      false
% 2.69/1.04  --qbf_sk_in                             false
% 2.69/1.04  --qbf_pred_elim                         true
% 2.69/1.04  --qbf_split                             512
% 2.69/1.04  
% 2.69/1.04  ------ BMC1 Options
% 2.69/1.04  
% 2.69/1.04  --bmc1_incremental                      false
% 2.69/1.04  --bmc1_axioms                           reachable_all
% 2.69/1.04  --bmc1_min_bound                        0
% 2.69/1.04  --bmc1_max_bound                        -1
% 2.69/1.04  --bmc1_max_bound_default                -1
% 2.69/1.04  --bmc1_symbol_reachability              true
% 2.69/1.04  --bmc1_property_lemmas                  false
% 2.69/1.04  --bmc1_k_induction                      false
% 2.69/1.04  --bmc1_non_equiv_states                 false
% 2.69/1.04  --bmc1_deadlock                         false
% 2.69/1.04  --bmc1_ucm                              false
% 2.69/1.04  --bmc1_add_unsat_core                   none
% 2.69/1.04  --bmc1_unsat_core_children              false
% 2.69/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 2.69/1.04  --bmc1_out_stat                         full
% 2.69/1.04  --bmc1_ground_init                      false
% 2.69/1.04  --bmc1_pre_inst_next_state              false
% 2.69/1.04  --bmc1_pre_inst_state                   false
% 2.69/1.04  --bmc1_pre_inst_reach_state             false
% 2.69/1.04  --bmc1_out_unsat_core                   false
% 2.69/1.04  --bmc1_aig_witness_out                  false
% 2.69/1.04  --bmc1_verbose                          false
% 2.69/1.04  --bmc1_dump_clauses_tptp                false
% 2.69/1.04  --bmc1_dump_unsat_core_tptp             false
% 2.69/1.04  --bmc1_dump_file                        -
% 2.69/1.04  --bmc1_ucm_expand_uc_limit              128
% 2.69/1.04  --bmc1_ucm_n_expand_iterations          6
% 2.69/1.04  --bmc1_ucm_extend_mode                  1
% 2.69/1.04  --bmc1_ucm_init_mode                    2
% 2.69/1.04  --bmc1_ucm_cone_mode                    none
% 2.69/1.04  --bmc1_ucm_reduced_relation_type        0
% 2.69/1.04  --bmc1_ucm_relax_model                  4
% 2.69/1.04  --bmc1_ucm_full_tr_after_sat            true
% 2.69/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 2.69/1.04  --bmc1_ucm_layered_model                none
% 2.69/1.04  --bmc1_ucm_max_lemma_size               10
% 2.69/1.04  
% 2.69/1.04  ------ AIG Options
% 2.69/1.04  
% 2.69/1.04  --aig_mode                              false
% 2.69/1.04  
% 2.69/1.04  ------ Instantiation Options
% 2.69/1.04  
% 2.69/1.04  --instantiation_flag                    true
% 2.69/1.04  --inst_sos_flag                         false
% 2.69/1.04  --inst_sos_phase                        true
% 2.69/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.69/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.69/1.04  --inst_lit_sel_side                     none
% 2.69/1.04  --inst_solver_per_active                1400
% 2.69/1.04  --inst_solver_calls_frac                1.
% 2.69/1.04  --inst_passive_queue_type               priority_queues
% 2.69/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.69/1.04  --inst_passive_queues_freq              [25;2]
% 2.69/1.04  --inst_dismatching                      true
% 2.69/1.04  --inst_eager_unprocessed_to_passive     true
% 2.69/1.04  --inst_prop_sim_given                   true
% 2.69/1.04  --inst_prop_sim_new                     false
% 2.69/1.04  --inst_subs_new                         false
% 2.69/1.04  --inst_eq_res_simp                      false
% 2.69/1.04  --inst_subs_given                       false
% 2.69/1.04  --inst_orphan_elimination               true
% 2.69/1.04  --inst_learning_loop_flag               true
% 2.69/1.04  --inst_learning_start                   3000
% 2.69/1.04  --inst_learning_factor                  2
% 2.69/1.04  --inst_start_prop_sim_after_learn       3
% 2.69/1.04  --inst_sel_renew                        solver
% 2.69/1.04  --inst_lit_activity_flag                true
% 2.69/1.04  --inst_restr_to_given                   false
% 2.69/1.04  --inst_activity_threshold               500
% 2.69/1.04  --inst_out_proof                        true
% 2.69/1.04  
% 2.69/1.04  ------ Resolution Options
% 2.69/1.04  
% 2.69/1.04  --resolution_flag                       false
% 2.69/1.04  --res_lit_sel                           adaptive
% 2.69/1.04  --res_lit_sel_side                      none
% 2.69/1.04  --res_ordering                          kbo
% 2.69/1.04  --res_to_prop_solver                    active
% 2.69/1.04  --res_prop_simpl_new                    false
% 2.69/1.04  --res_prop_simpl_given                  true
% 2.69/1.04  --res_passive_queue_type                priority_queues
% 2.69/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.69/1.04  --res_passive_queues_freq               [15;5]
% 2.69/1.04  --res_forward_subs                      full
% 2.69/1.04  --res_backward_subs                     full
% 2.69/1.04  --res_forward_subs_resolution           true
% 2.69/1.04  --res_backward_subs_resolution          true
% 2.69/1.04  --res_orphan_elimination                true
% 2.69/1.04  --res_time_limit                        2.
% 2.69/1.04  --res_out_proof                         true
% 2.69/1.04  
% 2.69/1.04  ------ Superposition Options
% 2.69/1.04  
% 2.69/1.04  --superposition_flag                    true
% 2.69/1.04  --sup_passive_queue_type                priority_queues
% 2.69/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.69/1.04  --sup_passive_queues_freq               [8;1;4]
% 2.69/1.04  --demod_completeness_check              fast
% 2.69/1.04  --demod_use_ground                      true
% 2.69/1.04  --sup_to_prop_solver                    passive
% 2.69/1.04  --sup_prop_simpl_new                    true
% 2.69/1.04  --sup_prop_simpl_given                  true
% 2.69/1.04  --sup_fun_splitting                     false
% 2.69/1.04  --sup_smt_interval                      50000
% 2.69/1.04  
% 2.69/1.04  ------ Superposition Simplification Setup
% 2.69/1.04  
% 2.69/1.04  --sup_indices_passive                   []
% 2.69/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.69/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 2.69/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/1.04  --sup_full_bw                           [BwDemod]
% 2.69/1.04  --sup_immed_triv                        [TrivRules]
% 2.69/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.69/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/1.04  --sup_immed_bw_main                     []
% 2.69/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 2.69/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.69/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.69/1.04  
% 2.69/1.04  ------ Combination Options
% 2.69/1.04  
% 2.69/1.04  --comb_res_mult                         3
% 2.69/1.04  --comb_sup_mult                         2
% 2.69/1.04  --comb_inst_mult                        10
% 2.69/1.04  
% 2.69/1.04  ------ Debug Options
% 2.69/1.04  
% 2.69/1.04  --dbg_backtrace                         false
% 2.69/1.04  --dbg_dump_prop_clauses                 false
% 2.69/1.04  --dbg_dump_prop_clauses_file            -
% 2.69/1.04  --dbg_out_stat                          false
% 2.69/1.04  
% 2.69/1.04  
% 2.69/1.04  
% 2.69/1.04  
% 2.69/1.04  ------ Proving...
% 2.69/1.04  
% 2.69/1.04  
% 2.69/1.04  % SZS status Theorem for theBenchmark.p
% 2.69/1.04  
% 2.69/1.04  % SZS output start CNFRefutation for theBenchmark.p
% 2.69/1.04  
% 2.69/1.04  fof(f17,conjecture,(
% 2.69/1.04    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f18,negated_conjecture,(
% 2.69/1.04    ~! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 2.69/1.04    inference(negated_conjecture,[],[f17])).
% 2.69/1.04  
% 2.69/1.04  fof(f24,plain,(
% 2.69/1.04    ? [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <~> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 2.69/1.04    inference(ennf_transformation,[],[f18])).
% 2.69/1.04  
% 2.69/1.04  fof(f46,plain,(
% 2.69/1.04    ? [X0,X1] : (((k1_tarski(X1) != X0 & k1_xboole_0 != X0) | ~r1_tarski(X0,k1_tarski(X1))) & ((k1_tarski(X1) = X0 | k1_xboole_0 = X0) | r1_tarski(X0,k1_tarski(X1))))),
% 2.69/1.04    inference(nnf_transformation,[],[f24])).
% 2.69/1.04  
% 2.69/1.04  fof(f47,plain,(
% 2.69/1.04    ? [X0,X1] : (((k1_tarski(X1) != X0 & k1_xboole_0 != X0) | ~r1_tarski(X0,k1_tarski(X1))) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | r1_tarski(X0,k1_tarski(X1))))),
% 2.69/1.04    inference(flattening,[],[f46])).
% 2.69/1.04  
% 2.69/1.04  fof(f48,plain,(
% 2.69/1.04    ? [X0,X1] : (((k1_tarski(X1) != X0 & k1_xboole_0 != X0) | ~r1_tarski(X0,k1_tarski(X1))) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | r1_tarski(X0,k1_tarski(X1)))) => (((k1_tarski(sK6) != sK5 & k1_xboole_0 != sK5) | ~r1_tarski(sK5,k1_tarski(sK6))) & (k1_tarski(sK6) = sK5 | k1_xboole_0 = sK5 | r1_tarski(sK5,k1_tarski(sK6))))),
% 2.69/1.04    introduced(choice_axiom,[])).
% 2.69/1.04  
% 2.69/1.04  fof(f49,plain,(
% 2.69/1.04    ((k1_tarski(sK6) != sK5 & k1_xboole_0 != sK5) | ~r1_tarski(sK5,k1_tarski(sK6))) & (k1_tarski(sK6) = sK5 | k1_xboole_0 = sK5 | r1_tarski(sK5,k1_tarski(sK6)))),
% 2.69/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6])],[f47,f48])).
% 2.69/1.04  
% 2.69/1.04  fof(f83,plain,(
% 2.69/1.04    k1_tarski(sK6) = sK5 | k1_xboole_0 = sK5 | r1_tarski(sK5,k1_tarski(sK6))),
% 2.69/1.04    inference(cnf_transformation,[],[f49])).
% 2.69/1.04  
% 2.69/1.04  fof(f9,axiom,(
% 2.69/1.04    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f74,plain,(
% 2.69/1.04    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f9])).
% 2.69/1.04  
% 2.69/1.04  fof(f10,axiom,(
% 2.69/1.04    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f75,plain,(
% 2.69/1.04    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f10])).
% 2.69/1.04  
% 2.69/1.04  fof(f11,axiom,(
% 2.69/1.04    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f76,plain,(
% 2.69/1.04    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f11])).
% 2.69/1.04  
% 2.69/1.04  fof(f12,axiom,(
% 2.69/1.04    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f77,plain,(
% 2.69/1.04    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f12])).
% 2.69/1.04  
% 2.69/1.04  fof(f13,axiom,(
% 2.69/1.04    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f78,plain,(
% 2.69/1.04    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f13])).
% 2.69/1.04  
% 2.69/1.04  fof(f14,axiom,(
% 2.69/1.04    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f79,plain,(
% 2.69/1.04    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f14])).
% 2.69/1.04  
% 2.69/1.04  fof(f15,axiom,(
% 2.69/1.04    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f80,plain,(
% 2.69/1.04    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f15])).
% 2.69/1.04  
% 2.69/1.04  fof(f86,plain,(
% 2.69/1.04    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 2.69/1.04    inference(definition_unfolding,[],[f79,f80])).
% 2.69/1.04  
% 2.69/1.04  fof(f87,plain,(
% 2.69/1.04    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 2.69/1.04    inference(definition_unfolding,[],[f78,f86])).
% 2.69/1.04  
% 2.69/1.04  fof(f88,plain,(
% 2.69/1.04    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 2.69/1.04    inference(definition_unfolding,[],[f77,f87])).
% 2.69/1.04  
% 2.69/1.04  fof(f89,plain,(
% 2.69/1.04    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 2.69/1.04    inference(definition_unfolding,[],[f76,f88])).
% 2.69/1.04  
% 2.69/1.04  fof(f90,plain,(
% 2.69/1.04    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 2.69/1.04    inference(definition_unfolding,[],[f75,f89])).
% 2.69/1.04  
% 2.69/1.04  fof(f91,plain,(
% 2.69/1.04    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 2.69/1.04    inference(definition_unfolding,[],[f74,f90])).
% 2.69/1.04  
% 2.69/1.04  fof(f108,plain,(
% 2.69/1.04    k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5 | k1_xboole_0 = sK5 | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))),
% 2.69/1.04    inference(definition_unfolding,[],[f83,f91,f91])).
% 2.69/1.04  
% 2.69/1.04  fof(f2,axiom,(
% 2.69/1.04    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) <=> r2_hidden(X2,X1)) => X0 = X1)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f21,plain,(
% 2.69/1.04    ! [X0,X1] : (X0 = X1 | ? [X2] : (r2_hidden(X2,X0) <~> r2_hidden(X2,X1)))),
% 2.69/1.04    inference(ennf_transformation,[],[f2])).
% 2.69/1.04  
% 2.69/1.04  fof(f29,plain,(
% 2.69/1.04    ! [X0,X1] : (X0 = X1 | ? [X2] : ((~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) & (r2_hidden(X2,X1) | r2_hidden(X2,X0))))),
% 2.69/1.04    inference(nnf_transformation,[],[f21])).
% 2.69/1.04  
% 2.69/1.04  fof(f30,plain,(
% 2.69/1.04    ! [X1,X0] : (? [X2] : ((~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) & (r2_hidden(X2,X1) | r2_hidden(X2,X0))) => ((~r2_hidden(sK1(X0,X1),X1) | ~r2_hidden(sK1(X0,X1),X0)) & (r2_hidden(sK1(X0,X1),X1) | r2_hidden(sK1(X0,X1),X0))))),
% 2.69/1.04    introduced(choice_axiom,[])).
% 2.69/1.04  
% 2.69/1.04  fof(f31,plain,(
% 2.69/1.04    ! [X0,X1] : (X0 = X1 | ((~r2_hidden(sK1(X0,X1),X1) | ~r2_hidden(sK1(X0,X1),X0)) & (r2_hidden(sK1(X0,X1),X1) | r2_hidden(sK1(X0,X1),X0))))),
% 2.69/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f29,f30])).
% 2.69/1.04  
% 2.69/1.04  fof(f53,plain,(
% 2.69/1.04    ( ! [X0,X1] : (X0 = X1 | r2_hidden(sK1(X0,X1),X1) | r2_hidden(sK1(X0,X1),X0)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f31])).
% 2.69/1.04  
% 2.69/1.04  fof(f1,axiom,(
% 2.69/1.04    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f20,plain,(
% 2.69/1.04    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 2.69/1.04    inference(ennf_transformation,[],[f1])).
% 2.69/1.04  
% 2.69/1.04  fof(f25,plain,(
% 2.69/1.04    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 2.69/1.04    inference(nnf_transformation,[],[f20])).
% 2.69/1.04  
% 2.69/1.04  fof(f26,plain,(
% 2.69/1.04    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.69/1.04    inference(rectify,[],[f25])).
% 2.69/1.04  
% 2.69/1.04  fof(f27,plain,(
% 2.69/1.04    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 2.69/1.04    introduced(choice_axiom,[])).
% 2.69/1.04  
% 2.69/1.04  fof(f28,plain,(
% 2.69/1.04    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.69/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f26,f27])).
% 2.69/1.04  
% 2.69/1.04  fof(f51,plain,(
% 2.69/1.04    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f28])).
% 2.69/1.04  
% 2.69/1.04  fof(f3,axiom,(
% 2.69/1.04    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f19,plain,(
% 2.69/1.04    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : r2_hidden(X2,k3_xboole_0(X0,X1))) & ~(! [X3] : ~r2_hidden(X3,k3_xboole_0(X0,X1)) & ~r1_xboole_0(X0,X1)))),
% 2.69/1.04    inference(rectify,[],[f3])).
% 2.69/1.04  
% 2.69/1.04  fof(f22,plain,(
% 2.69/1.04    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 2.69/1.04    inference(ennf_transformation,[],[f19])).
% 2.69/1.04  
% 2.69/1.04  fof(f32,plain,(
% 2.69/1.04    ! [X1,X0] : (? [X3] : r2_hidden(X3,k3_xboole_0(X0,X1)) => r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)))),
% 2.69/1.04    introduced(choice_axiom,[])).
% 2.69/1.04  
% 2.69/1.04  fof(f33,plain,(
% 2.69/1.04    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : ~r2_hidden(X2,k3_xboole_0(X0,X1))) & (r2_hidden(sK2(X0,X1),k3_xboole_0(X0,X1)) | r1_xboole_0(X0,X1)))),
% 2.69/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f22,f32])).
% 2.69/1.04  
% 2.69/1.04  fof(f56,plain,(
% 2.69/1.04    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,k3_xboole_0(X0,X1))) )),
% 2.69/1.04    inference(cnf_transformation,[],[f33])).
% 2.69/1.04  
% 2.69/1.04  fof(f6,axiom,(
% 2.69/1.04    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f61,plain,(
% 2.69/1.04    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f6])).
% 2.69/1.04  
% 2.69/1.04  fof(f5,axiom,(
% 2.69/1.04    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f60,plain,(
% 2.69/1.04    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f5])).
% 2.69/1.04  
% 2.69/1.04  fof(f4,axiom,(
% 2.69/1.04    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f34,plain,(
% 2.69/1.04    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.69/1.04    inference(nnf_transformation,[],[f4])).
% 2.69/1.04  
% 2.69/1.04  fof(f35,plain,(
% 2.69/1.04    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 2.69/1.04    inference(flattening,[],[f34])).
% 2.69/1.04  
% 2.69/1.04  fof(f59,plain,(
% 2.69/1.04    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f35])).
% 2.69/1.04  
% 2.69/1.04  fof(f50,plain,(
% 2.69/1.04    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f28])).
% 2.69/1.04  
% 2.69/1.04  fof(f8,axiom,(
% 2.69/1.04    ! [X0,X1] : (k1_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> X0 = X2))),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f41,plain,(
% 2.69/1.04    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | X0 != X2) & (X0 = X2 | ~r2_hidden(X2,X1))) | k1_tarski(X0) != X1))),
% 2.69/1.04    inference(nnf_transformation,[],[f8])).
% 2.69/1.04  
% 2.69/1.04  fof(f42,plain,(
% 2.69/1.04    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.69/1.04    inference(rectify,[],[f41])).
% 2.69/1.04  
% 2.69/1.04  fof(f43,plain,(
% 2.69/1.04    ! [X1,X0] : (? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1))) => ((sK4(X0,X1) != X0 | ~r2_hidden(sK4(X0,X1),X1)) & (sK4(X0,X1) = X0 | r2_hidden(sK4(X0,X1),X1))))),
% 2.69/1.04    introduced(choice_axiom,[])).
% 2.69/1.04  
% 2.69/1.04  fof(f44,plain,(
% 2.69/1.04    ! [X0,X1] : ((k1_tarski(X0) = X1 | ((sK4(X0,X1) != X0 | ~r2_hidden(sK4(X0,X1),X1)) & (sK4(X0,X1) = X0 | r2_hidden(sK4(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.69/1.04    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f42,f43])).
% 2.69/1.04  
% 2.69/1.04  fof(f70,plain,(
% 2.69/1.04    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k1_tarski(X0) != X1) )),
% 2.69/1.04    inference(cnf_transformation,[],[f44])).
% 2.69/1.04  
% 2.69/1.04  fof(f103,plain,(
% 2.69/1.04    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1) )),
% 2.69/1.04    inference(definition_unfolding,[],[f70,f91])).
% 2.69/1.04  
% 2.69/1.04  fof(f120,plain,(
% 2.69/1.04    ( ! [X0,X3] : (X0 = X3 | ~r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))) )),
% 2.69/1.04    inference(equality_resolution,[],[f103])).
% 2.69/1.04  
% 2.69/1.04  fof(f85,plain,(
% 2.69/1.04    k1_tarski(sK6) != sK5 | ~r1_tarski(sK5,k1_tarski(sK6))),
% 2.69/1.04    inference(cnf_transformation,[],[f49])).
% 2.69/1.04  
% 2.69/1.04  fof(f106,plain,(
% 2.69/1.04    k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != sK5 | ~r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))),
% 2.69/1.04    inference(definition_unfolding,[],[f85,f91,f91])).
% 2.69/1.04  
% 2.69/1.04  fof(f57,plain,(
% 2.69/1.04    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 2.69/1.04    inference(cnf_transformation,[],[f35])).
% 2.69/1.04  
% 2.69/1.04  fof(f110,plain,(
% 2.69/1.04    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 2.69/1.04    inference(equality_resolution,[],[f57])).
% 2.69/1.04  
% 2.69/1.04  fof(f16,axiom,(
% 2.69/1.04    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 2.69/1.04    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.69/1.04  
% 2.69/1.04  fof(f45,plain,(
% 2.69/1.04    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 2.69/1.04    inference(nnf_transformation,[],[f16])).
% 2.69/1.04  
% 2.69/1.04  fof(f82,plain,(
% 2.69/1.04    ( ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 2.69/1.04    inference(cnf_transformation,[],[f45])).
% 2.69/1.04  
% 2.69/1.04  fof(f104,plain,(
% 2.69/1.04    ( ! [X0,X1] : (r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) | ~r2_hidden(X0,X1)) )),
% 2.69/1.04    inference(definition_unfolding,[],[f82,f91])).
% 2.69/1.04  
% 2.69/1.04  fof(f84,plain,(
% 2.69/1.04    k1_xboole_0 != sK5 | ~r1_tarski(sK5,k1_tarski(sK6))),
% 2.69/1.04    inference(cnf_transformation,[],[f49])).
% 2.69/1.04  
% 2.69/1.04  fof(f107,plain,(
% 2.69/1.04    k1_xboole_0 != sK5 | ~r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))),
% 2.69/1.04    inference(definition_unfolding,[],[f84,f91])).
% 2.69/1.04  
% 2.69/1.04  cnf(c_28,negated_conjecture,
% 2.69/1.04      ( r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
% 2.69/1.04      | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5
% 2.69/1.04      | k1_xboole_0 = sK5 ),
% 2.69/1.04      inference(cnf_transformation,[],[f108]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1203,plain,
% 2.69/1.04      ( k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5
% 2.69/1.04      | k1_xboole_0 = sK5
% 2.69/1.04      | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) = iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_4,plain,
% 2.69/1.04      ( r2_hidden(sK1(X0,X1),X1) | r2_hidden(sK1(X0,X1),X0) | X1 = X0 ),
% 2.69/1.04      inference(cnf_transformation,[],[f53]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1223,plain,
% 2.69/1.04      ( X0 = X1
% 2.69/1.04      | r2_hidden(sK1(X1,X0),X0) = iProver_top
% 2.69/1.04      | r2_hidden(sK1(X1,X0),X1) = iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1,plain,
% 2.69/1.04      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 2.69/1.04      inference(cnf_transformation,[],[f51]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1226,plain,
% 2.69/1.04      ( r2_hidden(sK0(X0,X1),X0) = iProver_top
% 2.69/1.04      | r1_tarski(X0,X1) = iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_5,plain,
% 2.69/1.04      ( ~ r1_xboole_0(X0,X1) | ~ r2_hidden(X2,k3_xboole_0(X0,X1)) ),
% 2.69/1.04      inference(cnf_transformation,[],[f56]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_11,plain,
% 2.69/1.04      ( r1_xboole_0(X0,k1_xboole_0) ),
% 2.69/1.04      inference(cnf_transformation,[],[f61]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_374,plain,
% 2.69/1.04      ( ~ r2_hidden(X0,k3_xboole_0(X1,X2))
% 2.69/1.04      | X3 != X1
% 2.69/1.04      | k1_xboole_0 != X2 ),
% 2.69/1.04      inference(resolution_lifted,[status(thm)],[c_5,c_11]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_375,plain,
% 2.69/1.04      ( ~ r2_hidden(X0,k3_xboole_0(X1,k1_xboole_0)) ),
% 2.69/1.04      inference(unflattening,[status(thm)],[c_374]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1201,plain,
% 2.69/1.04      ( r2_hidden(X0,k3_xboole_0(X1,k1_xboole_0)) != iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_375]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1714,plain,
% 2.69/1.04      ( r1_tarski(k3_xboole_0(X0,k1_xboole_0),X1) = iProver_top ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_1226,c_1201]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_10,plain,
% 2.69/1.04      ( r1_tarski(k1_xboole_0,X0) ),
% 2.69/1.04      inference(cnf_transformation,[],[f60]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1220,plain,
% 2.69/1.04      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_7,plain,
% 2.69/1.04      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 2.69/1.04      inference(cnf_transformation,[],[f59]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1222,plain,
% 2.69/1.04      ( X0 = X1
% 2.69/1.04      | r1_tarski(X1,X0) != iProver_top
% 2.69/1.04      | r1_tarski(X0,X1) != iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1847,plain,
% 2.69/1.04      ( k1_xboole_0 = X0 | r1_tarski(X0,k1_xboole_0) != iProver_top ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_1220,c_1222]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_2049,plain,
% 2.69/1.04      ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_1714,c_1847]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_2209,plain,
% 2.69/1.04      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 2.69/1.04      inference(demodulation,[status(thm)],[c_2049,c_1201]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_2477,plain,
% 2.69/1.04      ( k1_xboole_0 = X0
% 2.69/1.04      | r2_hidden(sK1(k1_xboole_0,X0),X0) = iProver_top ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_1223,c_2209]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_2,plain,
% 2.69/1.04      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 2.69/1.04      inference(cnf_transformation,[],[f50]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1225,plain,
% 2.69/1.04      ( r2_hidden(X0,X1) != iProver_top
% 2.69/1.04      | r2_hidden(X0,X2) = iProver_top
% 2.69/1.04      | r1_tarski(X1,X2) != iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_3710,plain,
% 2.69/1.04      ( k1_xboole_0 = X0
% 2.69/1.04      | r2_hidden(sK1(k1_xboole_0,X0),X1) = iProver_top
% 2.69/1.04      | r1_tarski(X0,X1) != iProver_top ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_2477,c_1225]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_23,plain,
% 2.69/1.04      ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) | X0 = X1 ),
% 2.69/1.04      inference(cnf_transformation,[],[f120]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1208,plain,
% 2.69/1.04      ( X0 = X1
% 2.69/1.04      | r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_5130,plain,
% 2.69/1.04      ( sK1(k1_xboole_0,X0) = X1
% 2.69/1.04      | k1_xboole_0 = X0
% 2.69/1.04      | r1_tarski(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_3710,c_1208]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_6681,plain,
% 2.69/1.04      ( k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5
% 2.69/1.04      | sK1(k1_xboole_0,sK5) = sK6
% 2.69/1.04      | sK5 = k1_xboole_0 ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_1203,c_5130]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_26,negated_conjecture,
% 2.69/1.04      ( ~ r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
% 2.69/1.04      | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != sK5 ),
% 2.69/1.04      inference(cnf_transformation,[],[f106]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_622,plain,( X0 = X0 ),theory(equality) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1535,plain,
% 2.69/1.04      ( sK5 = sK5 ),
% 2.69/1.04      inference(instantiation,[status(thm)],[c_622]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_624,plain,
% 2.69/1.04      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.69/1.04      theory(equality) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1430,plain,
% 2.69/1.04      ( ~ r1_tarski(X0,X1)
% 2.69/1.04      | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
% 2.69/1.04      | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != X1
% 2.69/1.04      | sK5 != X0 ),
% 2.69/1.04      inference(instantiation,[status(thm)],[c_624]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1534,plain,
% 2.69/1.04      ( ~ r1_tarski(sK5,X0)
% 2.69/1.04      | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
% 2.69/1.04      | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != X0
% 2.69/1.04      | sK5 != sK5 ),
% 2.69/1.04      inference(instantiation,[status(thm)],[c_1430]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1644,plain,
% 2.69/1.04      ( r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
% 2.69/1.04      | ~ r1_tarski(sK5,sK5)
% 2.69/1.04      | k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) != sK5
% 2.69/1.04      | sK5 != sK5 ),
% 2.69/1.04      inference(instantiation,[status(thm)],[c_1534]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_9,plain,
% 2.69/1.04      ( r1_tarski(X0,X0) ),
% 2.69/1.04      inference(cnf_transformation,[],[f110]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1645,plain,
% 2.69/1.04      ( r1_tarski(sK5,sK5) ),
% 2.69/1.04      inference(instantiation,[status(thm)],[c_9]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_6706,plain,
% 2.69/1.04      ( sK1(k1_xboole_0,sK5) = sK6 | sK5 = k1_xboole_0 ),
% 2.69/1.04      inference(global_propositional_subsumption,
% 2.69/1.04                [status(thm)],
% 2.69/1.04                [c_6681,c_26,c_1535,c_1644,c_1645]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_6712,plain,
% 2.69/1.04      ( sK5 = k1_xboole_0
% 2.69/1.04      | r2_hidden(sK1(k1_xboole_0,sK5),sK5) = iProver_top
% 2.69/1.04      | r2_hidden(sK6,k1_xboole_0) = iProver_top ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_6706,c_1223]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_24,plain,
% 2.69/1.04      ( ~ r2_hidden(X0,X1)
% 2.69/1.04      | r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) ),
% 2.69/1.04      inference(cnf_transformation,[],[f104]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1207,plain,
% 2.69/1.04      ( r2_hidden(X0,X1) != iProver_top
% 2.69/1.04      | r1_tarski(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) = iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1848,plain,
% 2.69/1.04      ( k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6) = sK5
% 2.69/1.04      | sK5 = k1_xboole_0
% 2.69/1.04      | r1_tarski(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK5) != iProver_top ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_1203,c_1222]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1864,plain,
% 2.69/1.04      ( sK5 = k1_xboole_0
% 2.69/1.04      | r1_tarski(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK5) != iProver_top ),
% 2.69/1.04      inference(global_propositional_subsumption,
% 2.69/1.04                [status(thm)],
% 2.69/1.04                [c_1848,c_26,c_1535,c_1644,c_1645]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_2456,plain,
% 2.69/1.04      ( sK5 = k1_xboole_0 | r2_hidden(sK6,sK5) != iProver_top ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_1207,c_1864]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_6714,plain,
% 2.69/1.04      ( sK5 = k1_xboole_0 | r2_hidden(sK6,sK5) = iProver_top ),
% 2.69/1.04      inference(superposition,[status(thm)],[c_6706,c_2477]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_6872,plain,
% 2.69/1.04      ( sK5 = k1_xboole_0 ),
% 2.69/1.04      inference(global_propositional_subsumption,
% 2.69/1.04                [status(thm)],
% 2.69/1.04                [c_6712,c_2456,c_6714]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_27,negated_conjecture,
% 2.69/1.04      ( ~ r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
% 2.69/1.04      | k1_xboole_0 != sK5 ),
% 2.69/1.04      inference(cnf_transformation,[],[f107]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1204,plain,
% 2.69/1.04      ( k1_xboole_0 != sK5
% 2.69/1.04      | r1_tarski(sK5,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) != iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_6880,plain,
% 2.69/1.04      ( k1_xboole_0 != k1_xboole_0
% 2.69/1.04      | r1_tarski(k1_xboole_0,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) != iProver_top ),
% 2.69/1.04      inference(demodulation,[status(thm)],[c_6872,c_1204]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_6881,plain,
% 2.69/1.04      ( r1_tarski(k1_xboole_0,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) != iProver_top ),
% 2.69/1.04      inference(equality_resolution_simp,[status(thm)],[c_6880]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1667,plain,
% 2.69/1.04      ( r1_tarski(k1_xboole_0,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) ),
% 2.69/1.04      inference(instantiation,[status(thm)],[c_10]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(c_1670,plain,
% 2.69/1.04      ( r1_tarski(k1_xboole_0,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) = iProver_top ),
% 2.69/1.04      inference(predicate_to_equality,[status(thm)],[c_1667]) ).
% 2.69/1.04  
% 2.69/1.04  cnf(contradiction,plain,
% 2.69/1.04      ( $false ),
% 2.69/1.04      inference(minisat,[status(thm)],[c_6881,c_1670]) ).
% 2.69/1.04  
% 2.69/1.04  
% 2.69/1.04  % SZS output end CNFRefutation for theBenchmark.p
% 2.69/1.04  
% 2.69/1.04  ------                               Statistics
% 2.69/1.04  
% 2.69/1.04  ------ General
% 2.69/1.04  
% 2.69/1.04  abstr_ref_over_cycles:                  0
% 2.69/1.04  abstr_ref_under_cycles:                 0
% 2.69/1.04  gc_basic_clause_elim:                   0
% 2.69/1.04  forced_gc_time:                         0
% 2.69/1.04  parsing_time:                           0.051
% 2.69/1.04  unif_index_cands_time:                  0.
% 2.69/1.04  unif_index_add_time:                    0.
% 2.69/1.04  orderings_time:                         0.
% 2.69/1.04  out_proof_time:                         0.009
% 2.69/1.04  total_time:                             0.343
% 2.69/1.04  num_of_symbols:                         44
% 2.69/1.04  num_of_terms:                           6621
% 2.69/1.04  
% 2.69/1.04  ------ Preprocessing
% 2.69/1.04  
% 2.69/1.04  num_of_splits:                          0
% 2.69/1.04  num_of_split_atoms:                     0
% 2.69/1.04  num_of_reused_defs:                     0
% 2.69/1.04  num_eq_ax_congr_red:                    41
% 2.69/1.04  num_of_sem_filtered_clauses:            1
% 2.69/1.04  num_of_subtypes:                        0
% 2.69/1.04  monotx_restored_types:                  0
% 2.69/1.04  sat_num_of_epr_types:                   0
% 2.69/1.04  sat_num_of_non_cyclic_types:            0
% 2.69/1.04  sat_guarded_non_collapsed_types:        0
% 2.69/1.04  num_pure_diseq_elim:                    0
% 2.69/1.04  simp_replaced_by:                       0
% 2.69/1.04  res_preprocessed:                       122
% 2.69/1.04  prep_upred:                             0
% 2.69/1.04  prep_unflattend:                        2
% 2.69/1.04  smt_new_axioms:                         0
% 2.69/1.04  pred_elim_cands:                        2
% 2.69/1.04  pred_elim:                              1
% 2.69/1.04  pred_elim_cl:                           1
% 2.69/1.04  pred_elim_cycles:                       3
% 2.69/1.04  merged_defs:                            8
% 2.69/1.04  merged_defs_ncl:                        0
% 2.69/1.04  bin_hyper_res:                          8
% 2.69/1.04  prep_cycles:                            4
% 2.69/1.04  pred_elim_time:                         0.001
% 2.69/1.04  splitting_time:                         0.
% 2.69/1.04  sem_filter_time:                        0.
% 2.69/1.04  monotx_time:                            0.
% 2.69/1.04  subtype_inf_time:                       0.
% 2.69/1.04  
% 2.69/1.04  ------ Problem properties
% 2.69/1.04  
% 2.69/1.04  clauses:                                27
% 2.69/1.04  conjectures:                            3
% 2.69/1.04  epr:                                    4
% 2.69/1.04  horn:                                   21
% 2.69/1.04  ground:                                 3
% 2.69/1.04  unary:                                  7
% 2.69/1.04  binary:                                 8
% 2.69/1.04  lits:                                   62
% 2.69/1.04  lits_eq:                                25
% 2.69/1.04  fd_pure:                                0
% 2.69/1.04  fd_pseudo:                              0
% 2.69/1.04  fd_cond:                                0
% 2.69/1.04  fd_pseudo_cond:                         9
% 2.69/1.04  ac_symbols:                             0
% 2.69/1.04  
% 2.69/1.04  ------ Propositional Solver
% 2.69/1.04  
% 2.69/1.04  prop_solver_calls:                      27
% 2.69/1.04  prop_fast_solver_calls:                 753
% 2.69/1.04  smt_solver_calls:                       0
% 2.69/1.04  smt_fast_solver_calls:                  0
% 2.69/1.04  prop_num_of_clauses:                    2382
% 2.69/1.04  prop_preprocess_simplified:             8217
% 2.69/1.04  prop_fo_subsumed:                       9
% 2.69/1.04  prop_solver_time:                       0.
% 2.69/1.04  smt_solver_time:                        0.
% 2.69/1.04  smt_fast_solver_time:                   0.
% 2.69/1.04  prop_fast_solver_time:                  0.
% 2.69/1.04  prop_unsat_core_time:                   0.
% 2.69/1.04  
% 2.69/1.04  ------ QBF
% 2.69/1.04  
% 2.69/1.04  qbf_q_res:                              0
% 2.69/1.04  qbf_num_tautologies:                    0
% 2.69/1.04  qbf_prep_cycles:                        0
% 2.69/1.04  
% 2.69/1.04  ------ BMC1
% 2.69/1.04  
% 2.69/1.04  bmc1_current_bound:                     -1
% 2.69/1.04  bmc1_last_solved_bound:                 -1
% 2.69/1.04  bmc1_unsat_core_size:                   -1
% 2.69/1.04  bmc1_unsat_core_parents_size:           -1
% 2.69/1.04  bmc1_merge_next_fun:                    0
% 2.69/1.04  bmc1_unsat_core_clauses_time:           0.
% 2.69/1.04  
% 2.69/1.04  ------ Instantiation
% 2.69/1.04  
% 2.69/1.04  inst_num_of_clauses:                    654
% 2.69/1.04  inst_num_in_passive:                    390
% 2.69/1.04  inst_num_in_active:                     193
% 2.69/1.04  inst_num_in_unprocessed:                72
% 2.69/1.04  inst_num_of_loops:                      310
% 2.69/1.04  inst_num_of_learning_restarts:          0
% 2.69/1.04  inst_num_moves_active_passive:          116
% 2.69/1.04  inst_lit_activity:                      0
% 2.69/1.04  inst_lit_activity_moves:                0
% 2.69/1.04  inst_num_tautologies:                   0
% 2.69/1.04  inst_num_prop_implied:                  0
% 2.69/1.04  inst_num_existing_simplified:           0
% 2.69/1.04  inst_num_eq_res_simplified:             0
% 2.69/1.04  inst_num_child_elim:                    0
% 2.69/1.04  inst_num_of_dismatching_blockings:      323
% 2.69/1.04  inst_num_of_non_proper_insts:           597
% 2.69/1.04  inst_num_of_duplicates:                 0
% 2.69/1.04  inst_inst_num_from_inst_to_res:         0
% 2.69/1.04  inst_dismatching_checking_time:         0.
% 2.69/1.04  
% 2.69/1.04  ------ Resolution
% 2.69/1.04  
% 2.69/1.04  res_num_of_clauses:                     0
% 2.69/1.04  res_num_in_passive:                     0
% 2.69/1.04  res_num_in_active:                      0
% 2.69/1.04  res_num_of_loops:                       126
% 2.69/1.04  res_forward_subset_subsumed:            89
% 2.69/1.04  res_backward_subset_subsumed:           2
% 2.69/1.04  res_forward_subsumed:                   0
% 2.69/1.04  res_backward_subsumed:                  0
% 2.69/1.04  res_forward_subsumption_resolution:     0
% 2.69/1.04  res_backward_subsumption_resolution:    0
% 2.69/1.04  res_clause_to_clause_subsumption:       539
% 2.69/1.04  res_orphan_elimination:                 0
% 2.69/1.04  res_tautology_del:                      27
% 2.69/1.04  res_num_eq_res_simplified:              0
% 2.69/1.04  res_num_sel_changes:                    0
% 2.69/1.04  res_moves_from_active_to_pass:          0
% 2.69/1.04  
% 2.69/1.04  ------ Superposition
% 2.69/1.04  
% 2.69/1.04  sup_time_total:                         0.
% 2.69/1.04  sup_time_generating:                    0.
% 2.69/1.04  sup_time_sim_full:                      0.
% 2.69/1.04  sup_time_sim_immed:                     0.
% 2.69/1.04  
% 2.69/1.04  sup_num_of_clauses:                     111
% 2.69/1.04  sup_num_in_active:                      50
% 2.69/1.04  sup_num_in_passive:                     61
% 2.69/1.04  sup_num_of_loops:                       60
% 2.69/1.04  sup_fw_superposition:                   88
% 2.69/1.04  sup_bw_superposition:                   114
% 2.69/1.04  sup_immediate_simplified:               47
% 2.69/1.04  sup_given_eliminated:                   0
% 2.69/1.04  comparisons_done:                       0
% 2.69/1.04  comparisons_avoided:                    18
% 2.69/1.04  
% 2.69/1.04  ------ Simplifications
% 2.69/1.04  
% 2.69/1.04  
% 2.69/1.04  sim_fw_subset_subsumed:                 24
% 2.69/1.04  sim_bw_subset_subsumed:                 6
% 2.69/1.04  sim_fw_subsumed:                        22
% 2.69/1.04  sim_bw_subsumed:                        1
% 2.69/1.04  sim_fw_subsumption_res:                 1
% 2.69/1.04  sim_bw_subsumption_res:                 0
% 2.69/1.04  sim_tautology_del:                      7
% 2.69/1.04  sim_eq_tautology_del:                   16
% 2.69/1.04  sim_eq_res_simp:                        2
% 2.69/1.04  sim_fw_demodulated:                     3
% 2.69/1.04  sim_bw_demodulated:                     8
% 2.69/1.04  sim_light_normalised:                   7
% 2.69/1.04  sim_joinable_taut:                      0
% 2.69/1.04  sim_joinable_simp:                      0
% 2.69/1.04  sim_ac_normalised:                      0
% 2.69/1.04  sim_smt_subsumption:                    0
% 2.69/1.04  
%------------------------------------------------------------------------------
