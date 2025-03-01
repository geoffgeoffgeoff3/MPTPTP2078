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
% DateTime   : Thu Dec  3 11:30:45 EST 2020

% Result     : Theorem 3.80s
% Output     : CNFRefutation 3.80s
% Verified   : 
% Statistics : Number of formulae       :  112 ( 497 expanded)
%              Number of clauses        :   43 ( 120 expanded)
%              Number of leaves         :   20 ( 141 expanded)
%              Depth                    :   17
%              Number of atoms          :  331 ( 966 expanded)
%              Number of equality atoms :  254 ( 758 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f27,plain,(
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
    inference(nnf_transformation,[],[f25])).

fof(f28,plain,(
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
    inference(flattening,[],[f27])).

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
    inference(rectify,[],[f28])).

fof(f30,plain,(
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

fof(f31,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f29,f30])).

fof(f48,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f15,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f65,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f15])).

fof(f89,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k2_enumset1(X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f48,f65])).

fof(f105,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k2_enumset1(X5,X5,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f89])).

fof(f106,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k2_enumset1(X5,X5,X1,X2)) ),
    inference(equality_resolution,[],[f105])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f2])).

fof(f40,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f23])).

fof(f6,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f81,plain,(
    ! [X0] : k4_xboole_0(X0,k4_xboole_0(X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f40,f44])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f78,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f41,f44])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f42,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f82,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f42,f44])).

fof(f21,conjecture,(
    ! [X0,X1,X2] :
      ~ ( X0 != X2
        & X0 != X1
        & r1_tarski(k1_tarski(X0),k2_tarski(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ~ ( X0 != X2
          & X0 != X1
          & r1_tarski(k1_tarski(X0),k2_tarski(X1,X2)) ) ),
    inference(negated_conjecture,[],[f21])).

fof(f26,plain,(
    ? [X0,X1,X2] :
      ( X0 != X2
      & X0 != X1
      & r1_tarski(k1_tarski(X0),k2_tarski(X1,X2)) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f37,plain,
    ( ? [X0,X1,X2] :
        ( X0 != X2
        & X0 != X1
        & r1_tarski(k1_tarski(X0),k2_tarski(X1,X2)) )
   => ( sK2 != sK4
      & sK2 != sK3
      & r1_tarski(k1_tarski(sK2),k2_tarski(sK3,sK4)) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( sK2 != sK4
    & sK2 != sK3
    & r1_tarski(k1_tarski(sK2),k2_tarski(sK3,sK4)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f26,f37])).

fof(f71,plain,(
    r1_tarski(k1_tarski(sK2),k2_tarski(sK3,sK4)) ),
    inference(cnf_transformation,[],[f38])).

fof(f13,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f13])).

fof(f75,plain,(
    ! [X0] : k2_enumset1(X0,X0,X0,X0) = k1_tarski(X0) ),
    inference(definition_unfolding,[],[f63,f74])).

fof(f14,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f14])).

fof(f74,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f64,f65])).

fof(f100,plain,(
    r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4)) ),
    inference(definition_unfolding,[],[f71,f75,f74])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3] : k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X2,X0,X3,X1] : k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f12])).

fof(f8,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f79,plain,(
    ! [X2,X0,X3,X1] : k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k4_xboole_0(k2_enumset1(X3,X3,X3,X3),k2_enumset1(X0,X0,X1,X2))) = k2_enumset1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f62,f46,f65,f75])).

fof(f7,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f80,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f39,f44,f44])).

fof(f5,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( k2_tarski(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( X1 = X3
            | X0 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
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
    inference(nnf_transformation,[],[f10])).

fof(f33,plain,(
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
    inference(flattening,[],[f32])).

fof(f34,plain,(
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
    inference(rectify,[],[f33])).

fof(f35,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( X1 != X3
              & X0 != X3 )
            | ~ r2_hidden(X3,X2) )
          & ( X1 = X3
            | X0 = X3
            | r2_hidden(X3,X2) ) )
     => ( ( ( sK1(X0,X1,X2) != X1
            & sK1(X0,X1,X2) != X0 )
          | ~ r2_hidden(sK1(X0,X1,X2),X2) )
        & ( sK1(X0,X1,X2) = X1
          | sK1(X0,X1,X2) = X0
          | r2_hidden(sK1(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ( ( ( sK1(X0,X1,X2) != X1
              & sK1(X0,X1,X2) != X0 )
            | ~ r2_hidden(sK1(X0,X1,X2),X2) )
          & ( sK1(X0,X1,X2) = X1
            | sK1(X0,X1,X2) = X0
            | r2_hidden(sK1(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( X1 != X4
                & X0 != X4 ) )
            & ( X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f34,f35])).

fof(f55,plain,(
    ! [X4,X2,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,X2)
      | k2_tarski(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f36])).

fof(f96,plain,(
    ! [X4,X2,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,X2)
      | k2_enumset1(X0,X0,X0,X1) != X2 ) ),
    inference(definition_unfolding,[],[f55,f74])).

fof(f112,plain,(
    ! [X4,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,k2_enumset1(X0,X0,X0,X1)) ) ),
    inference(equality_resolution,[],[f96])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f11])).

fof(f97,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X1,X1,X2,X0) ),
    inference(definition_unfolding,[],[f61,f65,f65])).

fof(f56,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X0 != X4
      | k2_tarski(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f36])).

fof(f95,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | X0 != X4
      | k2_enumset1(X0,X0,X0,X1) != X2 ) ),
    inference(definition_unfolding,[],[f56,f74])).

fof(f110,plain,(
    ! [X4,X2,X1] :
      ( r2_hidden(X4,X2)
      | k2_enumset1(X4,X4,X4,X1) != X2 ) ),
    inference(equality_resolution,[],[f95])).

fof(f111,plain,(
    ! [X4,X1] : r2_hidden(X4,k2_enumset1(X4,X4,X4,X1)) ),
    inference(equality_resolution,[],[f110])).

fof(f73,plain,(
    sK2 != sK4 ),
    inference(cnf_transformation,[],[f38])).

fof(f72,plain,(
    sK2 != sK3 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_13,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X0,X1,X2)) ),
    inference(cnf_transformation,[],[f106])).

cnf(c_1841,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X0,X1,X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X0)) = X0 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_2573,plain,
    ( k5_xboole_0(X0,X0) = k4_xboole_0(X0,X0) ),
    inference(superposition,[status(thm)],[c_3,c_0])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f82])).

cnf(c_26,negated_conjecture,
    ( r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4)) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_201,plain,
    ( k2_enumset1(sK3,sK3,sK3,sK4) != X0
    | k2_enumset1(sK2,sK2,sK2,sK2) != X1
    | k4_xboole_0(X1,k4_xboole_0(X1,X0)) = X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_26])).

cnf(c_202,plain,
    ( k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4))) = k2_enumset1(sK2,sK2,sK2,sK2) ),
    inference(unflattening,[status(thm)],[c_201])).

cnf(c_2575,plain,
    ( k5_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) = k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4)) ),
    inference(superposition,[status(thm)],[c_202,c_0])).

cnf(c_2585,plain,
    ( k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4)) = k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) ),
    inference(demodulation,[status(thm)],[c_2573,c_2575])).

cnf(c_1,plain,
    ( k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k4_xboole_0(k2_enumset1(X3,X3,X3,X3),k2_enumset1(X0,X0,X1,X2))) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_3256,plain,
    ( k5_xboole_0(k2_enumset1(sK3,sK3,sK3,sK4),k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2))) = k2_enumset1(sK3,sK3,sK4,sK2) ),
    inference(superposition,[status(thm)],[c_2585,c_1])).

cnf(c_6,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_2,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_5,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_195,plain,
    ( X0 != X1
    | k4_xboole_0(X2,k4_xboole_0(X2,X1)) = X2
    | k1_xboole_0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_5])).

cnf(c_196,plain,
    ( k4_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,X0)) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_195])).

cnf(c_2650,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2,c_196])).

cnf(c_3478,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_2650,c_0])).

cnf(c_3480,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_3478,c_6])).

cnf(c_3481,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3480,c_2650])).

cnf(c_3727,plain,
    ( k2_enumset1(sK3,sK3,sK4,sK2) = k2_enumset1(sK3,sK3,sK3,sK4) ),
    inference(demodulation,[status(thm)],[c_3256,c_6,c_3481])).

cnf(c_20,plain,
    ( ~ r2_hidden(X0,k2_enumset1(X1,X1,X1,X2))
    | X0 = X1
    | X0 = X2 ),
    inference(cnf_transformation,[],[f112])).

cnf(c_1834,plain,
    ( X0 = X1
    | X0 = X2
    | r2_hidden(X0,k2_enumset1(X1,X1,X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_3740,plain,
    ( sK3 = X0
    | sK4 = X0
    | r2_hidden(X0,k2_enumset1(sK3,sK3,sK4,sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3727,c_1834])).

cnf(c_21,plain,
    ( k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X2,X2,X0,X1) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_3737,plain,
    ( k2_enumset1(sK3,sK3,sK4,sK2) = k2_enumset1(sK4,sK4,sK3,sK3) ),
    inference(superposition,[status(thm)],[c_3727,c_21])).

cnf(c_3753,plain,
    ( sK3 = X0
    | sK4 = X0
    | r2_hidden(X0,k2_enumset1(sK4,sK4,sK3,sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3740,c_3737])).

cnf(c_4114,plain,
    ( k2_enumset1(sK2,sK2,sK3,sK4) = k2_enumset1(sK4,sK4,sK3,sK3) ),
    inference(superposition,[status(thm)],[c_3737,c_21])).

cnf(c_5410,plain,
    ( sK3 = X0
    | sK4 = X0
    | r2_hidden(X0,k2_enumset1(sK2,sK2,sK3,sK4)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3753,c_4114])).

cnf(c_5416,plain,
    ( sK3 = sK2
    | sK4 = sK2 ),
    inference(superposition,[status(thm)],[c_1841,c_5410])).

cnf(c_1630,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1876,plain,
    ( sK3 != X0
    | sK2 != X0
    | sK2 = sK3 ),
    inference(instantiation,[status(thm)],[c_1630])).

cnf(c_1877,plain,
    ( sK3 != sK2
    | sK2 = sK3
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1876])).

cnf(c_1868,plain,
    ( sK4 != X0
    | sK2 != X0
    | sK2 = sK4 ),
    inference(instantiation,[status(thm)],[c_1630])).

cnf(c_1869,plain,
    ( sK4 != sK2
    | sK2 = sK4
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1868])).

cnf(c_19,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) ),
    inference(cnf_transformation,[],[f111])).

cnf(c_34,plain,
    ( r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2)) ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_31,plain,
    ( ~ r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2))
    | sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_20])).

cnf(c_24,negated_conjecture,
    ( sK2 != sK4 ),
    inference(cnf_transformation,[],[f73])).

cnf(c_25,negated_conjecture,
    ( sK2 != sK3 ),
    inference(cnf_transformation,[],[f72])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5416,c_1877,c_1869,c_34,c_31,c_24,c_25])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n021.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:15:19 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.80/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.80/0.99  
% 3.80/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.80/0.99  
% 3.80/0.99  ------  iProver source info
% 3.80/0.99  
% 3.80/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.80/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.80/0.99  git: non_committed_changes: false
% 3.80/0.99  git: last_make_outside_of_git: false
% 3.80/0.99  
% 3.80/0.99  ------ 
% 3.80/0.99  
% 3.80/0.99  ------ Input Options
% 3.80/0.99  
% 3.80/0.99  --out_options                           all
% 3.80/0.99  --tptp_safe_out                         true
% 3.80/0.99  --problem_path                          ""
% 3.80/0.99  --include_path                          ""
% 3.80/0.99  --clausifier                            res/vclausify_rel
% 3.80/0.99  --clausifier_options                    ""
% 3.80/0.99  --stdin                                 false
% 3.80/0.99  --stats_out                             all
% 3.80/0.99  
% 3.80/0.99  ------ General Options
% 3.80/0.99  
% 3.80/0.99  --fof                                   false
% 3.80/0.99  --time_out_real                         305.
% 3.80/0.99  --time_out_virtual                      -1.
% 3.80/0.99  --symbol_type_check                     false
% 3.80/0.99  --clausify_out                          false
% 3.80/0.99  --sig_cnt_out                           false
% 3.80/0.99  --trig_cnt_out                          false
% 3.80/0.99  --trig_cnt_out_tolerance                1.
% 3.80/0.99  --trig_cnt_out_sk_spl                   false
% 3.80/0.99  --abstr_cl_out                          false
% 3.80/0.99  
% 3.80/0.99  ------ Global Options
% 3.80/0.99  
% 3.80/0.99  --schedule                              default
% 3.80/0.99  --add_important_lit                     false
% 3.80/0.99  --prop_solver_per_cl                    1000
% 3.80/0.99  --min_unsat_core                        false
% 3.80/0.99  --soft_assumptions                      false
% 3.80/0.99  --soft_lemma_size                       3
% 3.80/0.99  --prop_impl_unit_size                   0
% 3.80/0.99  --prop_impl_unit                        []
% 3.80/0.99  --share_sel_clauses                     true
% 3.80/0.99  --reset_solvers                         false
% 3.80/0.99  --bc_imp_inh                            [conj_cone]
% 3.80/0.99  --conj_cone_tolerance                   3.
% 3.80/0.99  --extra_neg_conj                        none
% 3.80/0.99  --large_theory_mode                     true
% 3.80/0.99  --prolific_symb_bound                   200
% 3.80/0.99  --lt_threshold                          2000
% 3.80/0.99  --clause_weak_htbl                      true
% 3.80/0.99  --gc_record_bc_elim                     false
% 3.80/0.99  
% 3.80/0.99  ------ Preprocessing Options
% 3.80/0.99  
% 3.80/0.99  --preprocessing_flag                    true
% 3.80/0.99  --time_out_prep_mult                    0.1
% 3.80/0.99  --splitting_mode                        input
% 3.80/0.99  --splitting_grd                         true
% 3.80/0.99  --splitting_cvd                         false
% 3.80/0.99  --splitting_cvd_svl                     false
% 3.80/0.99  --splitting_nvd                         32
% 3.80/0.99  --sub_typing                            true
% 3.80/0.99  --prep_gs_sim                           true
% 3.80/0.99  --prep_unflatten                        true
% 3.80/0.99  --prep_res_sim                          true
% 3.80/0.99  --prep_upred                            true
% 3.80/0.99  --prep_sem_filter                       exhaustive
% 3.80/0.99  --prep_sem_filter_out                   false
% 3.80/0.99  --pred_elim                             true
% 3.80/0.99  --res_sim_input                         true
% 3.80/0.99  --eq_ax_congr_red                       true
% 3.80/0.99  --pure_diseq_elim                       true
% 3.80/0.99  --brand_transform                       false
% 3.80/0.99  --non_eq_to_eq                          false
% 3.80/0.99  --prep_def_merge                        true
% 3.80/0.99  --prep_def_merge_prop_impl              false
% 3.80/0.99  --prep_def_merge_mbd                    true
% 3.80/0.99  --prep_def_merge_tr_red                 false
% 3.80/0.99  --prep_def_merge_tr_cl                  false
% 3.80/0.99  --smt_preprocessing                     true
% 3.80/0.99  --smt_ac_axioms                         fast
% 3.80/0.99  --preprocessed_out                      false
% 3.80/0.99  --preprocessed_stats                    false
% 3.80/0.99  
% 3.80/0.99  ------ Abstraction refinement Options
% 3.80/0.99  
% 3.80/0.99  --abstr_ref                             []
% 3.80/0.99  --abstr_ref_prep                        false
% 3.80/0.99  --abstr_ref_until_sat                   false
% 3.80/0.99  --abstr_ref_sig_restrict                funpre
% 3.80/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.80/0.99  --abstr_ref_under                       []
% 3.80/0.99  
% 3.80/0.99  ------ SAT Options
% 3.80/0.99  
% 3.80/0.99  --sat_mode                              false
% 3.80/0.99  --sat_fm_restart_options                ""
% 3.80/0.99  --sat_gr_def                            false
% 3.80/0.99  --sat_epr_types                         true
% 3.80/0.99  --sat_non_cyclic_types                  false
% 3.80/0.99  --sat_finite_models                     false
% 3.80/0.99  --sat_fm_lemmas                         false
% 3.80/0.99  --sat_fm_prep                           false
% 3.80/0.99  --sat_fm_uc_incr                        true
% 3.80/0.99  --sat_out_model                         small
% 3.80/0.99  --sat_out_clauses                       false
% 3.80/0.99  
% 3.80/0.99  ------ QBF Options
% 3.80/0.99  
% 3.80/0.99  --qbf_mode                              false
% 3.80/0.99  --qbf_elim_univ                         false
% 3.80/0.99  --qbf_dom_inst                          none
% 3.80/0.99  --qbf_dom_pre_inst                      false
% 3.80/0.99  --qbf_sk_in                             false
% 3.80/0.99  --qbf_pred_elim                         true
% 3.80/0.99  --qbf_split                             512
% 3.80/0.99  
% 3.80/0.99  ------ BMC1 Options
% 3.80/0.99  
% 3.80/0.99  --bmc1_incremental                      false
% 3.80/0.99  --bmc1_axioms                           reachable_all
% 3.80/0.99  --bmc1_min_bound                        0
% 3.80/0.99  --bmc1_max_bound                        -1
% 3.80/0.99  --bmc1_max_bound_default                -1
% 3.80/0.99  --bmc1_symbol_reachability              true
% 3.80/0.99  --bmc1_property_lemmas                  false
% 3.80/0.99  --bmc1_k_induction                      false
% 3.80/0.99  --bmc1_non_equiv_states                 false
% 3.80/0.99  --bmc1_deadlock                         false
% 3.80/0.99  --bmc1_ucm                              false
% 3.80/0.99  --bmc1_add_unsat_core                   none
% 3.80/0.99  --bmc1_unsat_core_children              false
% 3.80/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.80/0.99  --bmc1_out_stat                         full
% 3.80/0.99  --bmc1_ground_init                      false
% 3.80/0.99  --bmc1_pre_inst_next_state              false
% 3.80/0.99  --bmc1_pre_inst_state                   false
% 3.80/0.99  --bmc1_pre_inst_reach_state             false
% 3.80/0.99  --bmc1_out_unsat_core                   false
% 3.80/0.99  --bmc1_aig_witness_out                  false
% 3.80/0.99  --bmc1_verbose                          false
% 3.80/0.99  --bmc1_dump_clauses_tptp                false
% 3.80/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.80/0.99  --bmc1_dump_file                        -
% 3.80/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.80/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.80/0.99  --bmc1_ucm_extend_mode                  1
% 3.80/0.99  --bmc1_ucm_init_mode                    2
% 3.80/0.99  --bmc1_ucm_cone_mode                    none
% 3.80/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.80/0.99  --bmc1_ucm_relax_model                  4
% 3.80/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.80/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.80/0.99  --bmc1_ucm_layered_model                none
% 3.80/0.99  --bmc1_ucm_max_lemma_size               10
% 3.80/0.99  
% 3.80/0.99  ------ AIG Options
% 3.80/0.99  
% 3.80/0.99  --aig_mode                              false
% 3.80/0.99  
% 3.80/0.99  ------ Instantiation Options
% 3.80/0.99  
% 3.80/0.99  --instantiation_flag                    true
% 3.80/0.99  --inst_sos_flag                         true
% 3.80/0.99  --inst_sos_phase                        true
% 3.80/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.80/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.80/0.99  --inst_lit_sel_side                     num_symb
% 3.80/0.99  --inst_solver_per_active                1400
% 3.80/0.99  --inst_solver_calls_frac                1.
% 3.80/0.99  --inst_passive_queue_type               priority_queues
% 3.80/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.80/0.99  --inst_passive_queues_freq              [25;2]
% 3.80/0.99  --inst_dismatching                      true
% 3.80/0.99  --inst_eager_unprocessed_to_passive     true
% 3.80/0.99  --inst_prop_sim_given                   true
% 3.80/0.99  --inst_prop_sim_new                     false
% 3.80/0.99  --inst_subs_new                         false
% 3.80/0.99  --inst_eq_res_simp                      false
% 3.80/0.99  --inst_subs_given                       false
% 3.80/0.99  --inst_orphan_elimination               true
% 3.80/0.99  --inst_learning_loop_flag               true
% 3.80/0.99  --inst_learning_start                   3000
% 3.80/0.99  --inst_learning_factor                  2
% 3.80/0.99  --inst_start_prop_sim_after_learn       3
% 3.80/0.99  --inst_sel_renew                        solver
% 3.80/0.99  --inst_lit_activity_flag                true
% 3.80/0.99  --inst_restr_to_given                   false
% 3.80/0.99  --inst_activity_threshold               500
% 3.80/0.99  --inst_out_proof                        true
% 3.80/0.99  
% 3.80/0.99  ------ Resolution Options
% 3.80/0.99  
% 3.80/0.99  --resolution_flag                       true
% 3.80/0.99  --res_lit_sel                           adaptive
% 3.80/0.99  --res_lit_sel_side                      none
% 3.80/0.99  --res_ordering                          kbo
% 3.80/0.99  --res_to_prop_solver                    active
% 3.80/0.99  --res_prop_simpl_new                    false
% 3.80/0.99  --res_prop_simpl_given                  true
% 3.80/0.99  --res_passive_queue_type                priority_queues
% 3.80/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.80/0.99  --res_passive_queues_freq               [15;5]
% 3.80/0.99  --res_forward_subs                      full
% 3.80/0.99  --res_backward_subs                     full
% 3.80/0.99  --res_forward_subs_resolution           true
% 3.80/0.99  --res_backward_subs_resolution          true
% 3.80/0.99  --res_orphan_elimination                true
% 3.80/0.99  --res_time_limit                        2.
% 3.80/0.99  --res_out_proof                         true
% 3.80/0.99  
% 3.80/0.99  ------ Superposition Options
% 3.80/0.99  
% 3.80/0.99  --superposition_flag                    true
% 3.80/0.99  --sup_passive_queue_type                priority_queues
% 3.80/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.80/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.80/0.99  --demod_completeness_check              fast
% 3.80/0.99  --demod_use_ground                      true
% 3.80/0.99  --sup_to_prop_solver                    passive
% 3.80/0.99  --sup_prop_simpl_new                    true
% 3.80/0.99  --sup_prop_simpl_given                  true
% 3.80/0.99  --sup_fun_splitting                     true
% 3.80/0.99  --sup_smt_interval                      50000
% 3.80/0.99  
% 3.80/0.99  ------ Superposition Simplification Setup
% 3.80/0.99  
% 3.80/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.80/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.80/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.80/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.80/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.80/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.80/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.80/0.99  --sup_immed_triv                        [TrivRules]
% 3.80/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.80/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.80/0.99  --sup_immed_bw_main                     []
% 3.80/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.80/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.80/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.80/0.99  --sup_input_bw                          []
% 3.80/0.99  
% 3.80/0.99  ------ Combination Options
% 3.80/0.99  
% 3.80/0.99  --comb_res_mult                         3
% 3.80/0.99  --comb_sup_mult                         2
% 3.80/0.99  --comb_inst_mult                        10
% 3.80/0.99  
% 3.80/0.99  ------ Debug Options
% 3.80/0.99  
% 3.80/0.99  --dbg_backtrace                         false
% 3.80/0.99  --dbg_dump_prop_clauses                 false
% 3.80/0.99  --dbg_dump_prop_clauses_file            -
% 3.80/0.99  --dbg_out_stat                          false
% 3.80/0.99  ------ Parsing...
% 3.80/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.80/0.99  
% 3.80/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.80/0.99  
% 3.80/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.80/0.99  
% 3.80/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.80/0.99  ------ Proving...
% 3.80/0.99  ------ Problem Properties 
% 3.80/0.99  
% 3.80/0.99  
% 3.80/0.99  clauses                                 26
% 3.80/0.99  conjectures                             2
% 3.80/0.99  EPR                                     2
% 3.80/0.99  Horn                                    22
% 3.80/0.99  unary                                   17
% 3.80/0.99  binary                                  0
% 3.80/0.99  lits                                    48
% 3.80/0.99  lits eq                                 34
% 3.80/0.99  fd_pure                                 0
% 3.80/0.99  fd_pseudo                               0
% 3.80/0.99  fd_cond                                 0
% 3.80/0.99  fd_pseudo_cond                          7
% 3.80/0.99  AC symbols                              0
% 3.80/0.99  
% 3.80/0.99  ------ Schedule dynamic 5 is on 
% 3.80/0.99  
% 3.80/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.80/0.99  
% 3.80/0.99  
% 3.80/0.99  ------ 
% 3.80/0.99  Current options:
% 3.80/0.99  ------ 
% 3.80/0.99  
% 3.80/0.99  ------ Input Options
% 3.80/0.99  
% 3.80/0.99  --out_options                           all
% 3.80/0.99  --tptp_safe_out                         true
% 3.80/0.99  --problem_path                          ""
% 3.80/0.99  --include_path                          ""
% 3.80/0.99  --clausifier                            res/vclausify_rel
% 3.80/0.99  --clausifier_options                    ""
% 3.80/0.99  --stdin                                 false
% 3.80/0.99  --stats_out                             all
% 3.80/0.99  
% 3.80/0.99  ------ General Options
% 3.80/0.99  
% 3.80/0.99  --fof                                   false
% 3.80/0.99  --time_out_real                         305.
% 3.80/0.99  --time_out_virtual                      -1.
% 3.80/0.99  --symbol_type_check                     false
% 3.80/0.99  --clausify_out                          false
% 3.80/0.99  --sig_cnt_out                           false
% 3.80/0.99  --trig_cnt_out                          false
% 3.80/0.99  --trig_cnt_out_tolerance                1.
% 3.80/0.99  --trig_cnt_out_sk_spl                   false
% 3.80/0.99  --abstr_cl_out                          false
% 3.80/0.99  
% 3.80/0.99  ------ Global Options
% 3.80/0.99  
% 3.80/0.99  --schedule                              default
% 3.80/0.99  --add_important_lit                     false
% 3.80/0.99  --prop_solver_per_cl                    1000
% 3.80/0.99  --min_unsat_core                        false
% 3.80/0.99  --soft_assumptions                      false
% 3.80/0.99  --soft_lemma_size                       3
% 3.80/0.99  --prop_impl_unit_size                   0
% 3.80/0.99  --prop_impl_unit                        []
% 3.80/0.99  --share_sel_clauses                     true
% 3.80/0.99  --reset_solvers                         false
% 3.80/0.99  --bc_imp_inh                            [conj_cone]
% 3.80/0.99  --conj_cone_tolerance                   3.
% 3.80/0.99  --extra_neg_conj                        none
% 3.80/0.99  --large_theory_mode                     true
% 3.80/0.99  --prolific_symb_bound                   200
% 3.80/0.99  --lt_threshold                          2000
% 3.80/0.99  --clause_weak_htbl                      true
% 3.80/0.99  --gc_record_bc_elim                     false
% 3.80/0.99  
% 3.80/0.99  ------ Preprocessing Options
% 3.80/0.99  
% 3.80/0.99  --preprocessing_flag                    true
% 3.80/0.99  --time_out_prep_mult                    0.1
% 3.80/0.99  --splitting_mode                        input
% 3.80/0.99  --splitting_grd                         true
% 3.80/0.99  --splitting_cvd                         false
% 3.80/0.99  --splitting_cvd_svl                     false
% 3.80/0.99  --splitting_nvd                         32
% 3.80/0.99  --sub_typing                            true
% 3.80/0.99  --prep_gs_sim                           true
% 3.80/0.99  --prep_unflatten                        true
% 3.80/0.99  --prep_res_sim                          true
% 3.80/0.99  --prep_upred                            true
% 3.80/0.99  --prep_sem_filter                       exhaustive
% 3.80/0.99  --prep_sem_filter_out                   false
% 3.80/0.99  --pred_elim                             true
% 3.80/0.99  --res_sim_input                         true
% 3.80/0.99  --eq_ax_congr_red                       true
% 3.80/0.99  --pure_diseq_elim                       true
% 3.80/0.99  --brand_transform                       false
% 3.80/0.99  --non_eq_to_eq                          false
% 3.80/0.99  --prep_def_merge                        true
% 3.80/0.99  --prep_def_merge_prop_impl              false
% 3.80/0.99  --prep_def_merge_mbd                    true
% 3.80/0.99  --prep_def_merge_tr_red                 false
% 3.80/0.99  --prep_def_merge_tr_cl                  false
% 3.80/0.99  --smt_preprocessing                     true
% 3.80/0.99  --smt_ac_axioms                         fast
% 3.80/0.99  --preprocessed_out                      false
% 3.80/0.99  --preprocessed_stats                    false
% 3.80/0.99  
% 3.80/0.99  ------ Abstraction refinement Options
% 3.80/0.99  
% 3.80/0.99  --abstr_ref                             []
% 3.80/0.99  --abstr_ref_prep                        false
% 3.80/0.99  --abstr_ref_until_sat                   false
% 3.80/0.99  --abstr_ref_sig_restrict                funpre
% 3.80/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.80/0.99  --abstr_ref_under                       []
% 3.80/0.99  
% 3.80/0.99  ------ SAT Options
% 3.80/0.99  
% 3.80/0.99  --sat_mode                              false
% 3.80/0.99  --sat_fm_restart_options                ""
% 3.80/0.99  --sat_gr_def                            false
% 3.80/0.99  --sat_epr_types                         true
% 3.80/0.99  --sat_non_cyclic_types                  false
% 3.80/0.99  --sat_finite_models                     false
% 3.80/0.99  --sat_fm_lemmas                         false
% 3.80/0.99  --sat_fm_prep                           false
% 3.80/0.99  --sat_fm_uc_incr                        true
% 3.80/0.99  --sat_out_model                         small
% 3.80/0.99  --sat_out_clauses                       false
% 3.80/0.99  
% 3.80/0.99  ------ QBF Options
% 3.80/0.99  
% 3.80/0.99  --qbf_mode                              false
% 3.80/0.99  --qbf_elim_univ                         false
% 3.80/0.99  --qbf_dom_inst                          none
% 3.80/0.99  --qbf_dom_pre_inst                      false
% 3.80/0.99  --qbf_sk_in                             false
% 3.80/0.99  --qbf_pred_elim                         true
% 3.80/0.99  --qbf_split                             512
% 3.80/0.99  
% 3.80/0.99  ------ BMC1 Options
% 3.80/0.99  
% 3.80/0.99  --bmc1_incremental                      false
% 3.80/0.99  --bmc1_axioms                           reachable_all
% 3.80/0.99  --bmc1_min_bound                        0
% 3.80/0.99  --bmc1_max_bound                        -1
% 3.80/0.99  --bmc1_max_bound_default                -1
% 3.80/0.99  --bmc1_symbol_reachability              true
% 3.80/0.99  --bmc1_property_lemmas                  false
% 3.80/0.99  --bmc1_k_induction                      false
% 3.80/0.99  --bmc1_non_equiv_states                 false
% 3.80/0.99  --bmc1_deadlock                         false
% 3.80/0.99  --bmc1_ucm                              false
% 3.80/0.99  --bmc1_add_unsat_core                   none
% 3.80/0.99  --bmc1_unsat_core_children              false
% 3.80/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.80/0.99  --bmc1_out_stat                         full
% 3.80/0.99  --bmc1_ground_init                      false
% 3.80/0.99  --bmc1_pre_inst_next_state              false
% 3.80/0.99  --bmc1_pre_inst_state                   false
% 3.80/0.99  --bmc1_pre_inst_reach_state             false
% 3.80/0.99  --bmc1_out_unsat_core                   false
% 3.80/0.99  --bmc1_aig_witness_out                  false
% 3.80/0.99  --bmc1_verbose                          false
% 3.80/0.99  --bmc1_dump_clauses_tptp                false
% 3.80/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.80/0.99  --bmc1_dump_file                        -
% 3.80/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.80/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.80/0.99  --bmc1_ucm_extend_mode                  1
% 3.80/0.99  --bmc1_ucm_init_mode                    2
% 3.80/0.99  --bmc1_ucm_cone_mode                    none
% 3.80/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.80/0.99  --bmc1_ucm_relax_model                  4
% 3.80/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.80/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.80/0.99  --bmc1_ucm_layered_model                none
% 3.80/0.99  --bmc1_ucm_max_lemma_size               10
% 3.80/0.99  
% 3.80/0.99  ------ AIG Options
% 3.80/0.99  
% 3.80/0.99  --aig_mode                              false
% 3.80/0.99  
% 3.80/0.99  ------ Instantiation Options
% 3.80/0.99  
% 3.80/0.99  --instantiation_flag                    true
% 3.80/0.99  --inst_sos_flag                         true
% 3.80/0.99  --inst_sos_phase                        true
% 3.80/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.80/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.80/0.99  --inst_lit_sel_side                     none
% 3.80/0.99  --inst_solver_per_active                1400
% 3.80/0.99  --inst_solver_calls_frac                1.
% 3.80/0.99  --inst_passive_queue_type               priority_queues
% 3.80/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.80/0.99  --inst_passive_queues_freq              [25;2]
% 3.80/0.99  --inst_dismatching                      true
% 3.80/0.99  --inst_eager_unprocessed_to_passive     true
% 3.80/0.99  --inst_prop_sim_given                   true
% 3.80/0.99  --inst_prop_sim_new                     false
% 3.80/0.99  --inst_subs_new                         false
% 3.80/0.99  --inst_eq_res_simp                      false
% 3.80/0.99  --inst_subs_given                       false
% 3.80/0.99  --inst_orphan_elimination               true
% 3.80/0.99  --inst_learning_loop_flag               true
% 3.80/0.99  --inst_learning_start                   3000
% 3.80/0.99  --inst_learning_factor                  2
% 3.80/0.99  --inst_start_prop_sim_after_learn       3
% 3.80/0.99  --inst_sel_renew                        solver
% 3.80/0.99  --inst_lit_activity_flag                true
% 3.80/0.99  --inst_restr_to_given                   false
% 3.80/0.99  --inst_activity_threshold               500
% 3.80/0.99  --inst_out_proof                        true
% 3.80/0.99  
% 3.80/0.99  ------ Resolution Options
% 3.80/0.99  
% 3.80/0.99  --resolution_flag                       false
% 3.80/0.99  --res_lit_sel                           adaptive
% 3.80/0.99  --res_lit_sel_side                      none
% 3.80/0.99  --res_ordering                          kbo
% 3.80/0.99  --res_to_prop_solver                    active
% 3.80/0.99  --res_prop_simpl_new                    false
% 3.80/0.99  --res_prop_simpl_given                  true
% 3.80/0.99  --res_passive_queue_type                priority_queues
% 3.80/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.80/0.99  --res_passive_queues_freq               [15;5]
% 3.80/0.99  --res_forward_subs                      full
% 3.80/0.99  --res_backward_subs                     full
% 3.80/0.99  --res_forward_subs_resolution           true
% 3.80/0.99  --res_backward_subs_resolution          true
% 3.80/0.99  --res_orphan_elimination                true
% 3.80/0.99  --res_time_limit                        2.
% 3.80/0.99  --res_out_proof                         true
% 3.80/0.99  
% 3.80/0.99  ------ Superposition Options
% 3.80/0.99  
% 3.80/0.99  --superposition_flag                    true
% 3.80/0.99  --sup_passive_queue_type                priority_queues
% 3.80/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.80/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.80/0.99  --demod_completeness_check              fast
% 3.80/0.99  --demod_use_ground                      true
% 3.80/0.99  --sup_to_prop_solver                    passive
% 3.80/0.99  --sup_prop_simpl_new                    true
% 3.80/0.99  --sup_prop_simpl_given                  true
% 3.80/0.99  --sup_fun_splitting                     true
% 3.80/0.99  --sup_smt_interval                      50000
% 3.80/0.99  
% 3.80/0.99  ------ Superposition Simplification Setup
% 3.80/0.99  
% 3.80/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.80/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.80/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.80/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.80/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.80/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.80/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.80/0.99  --sup_immed_triv                        [TrivRules]
% 3.80/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.80/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.80/0.99  --sup_immed_bw_main                     []
% 3.80/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.80/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.80/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.80/0.99  --sup_input_bw                          []
% 3.80/0.99  
% 3.80/0.99  ------ Combination Options
% 3.80/0.99  
% 3.80/0.99  --comb_res_mult                         3
% 3.80/0.99  --comb_sup_mult                         2
% 3.80/0.99  --comb_inst_mult                        10
% 3.80/0.99  
% 3.80/0.99  ------ Debug Options
% 3.80/0.99  
% 3.80/0.99  --dbg_backtrace                         false
% 3.80/0.99  --dbg_dump_prop_clauses                 false
% 3.80/0.99  --dbg_dump_prop_clauses_file            -
% 3.80/0.99  --dbg_out_stat                          false
% 3.80/0.99  
% 3.80/0.99  
% 3.80/0.99  
% 3.80/0.99  
% 3.80/0.99  ------ Proving...
% 3.80/0.99  
% 3.80/0.99  
% 3.80/0.99  % SZS status Theorem for theBenchmark.p
% 3.80/0.99  
% 3.80/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.80/0.99  
% 3.80/0.99  fof(f9,axiom,(
% 3.80/0.99    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f25,plain,(
% 3.80/0.99    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 3.80/0.99    inference(ennf_transformation,[],[f9])).
% 3.80/0.99  
% 3.80/0.99  fof(f27,plain,(
% 3.80/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.80/0.99    inference(nnf_transformation,[],[f25])).
% 3.80/0.99  
% 3.80/0.99  fof(f28,plain,(
% 3.80/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.80/0.99    inference(flattening,[],[f27])).
% 3.80/0.99  
% 3.80/0.99  fof(f29,plain,(
% 3.80/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.80/0.99    inference(rectify,[],[f28])).
% 3.80/0.99  
% 3.80/0.99  fof(f30,plain,(
% 3.80/0.99    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK0(X0,X1,X2,X3) != X2 & sK0(X0,X1,X2,X3) != X1 & sK0(X0,X1,X2,X3) != X0) | ~r2_hidden(sK0(X0,X1,X2,X3),X3)) & (sK0(X0,X1,X2,X3) = X2 | sK0(X0,X1,X2,X3) = X1 | sK0(X0,X1,X2,X3) = X0 | r2_hidden(sK0(X0,X1,X2,X3),X3))))),
% 3.80/0.99    introduced(choice_axiom,[])).
% 3.80/0.99  
% 3.80/0.99  fof(f31,plain,(
% 3.80/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK0(X0,X1,X2,X3) != X2 & sK0(X0,X1,X2,X3) != X1 & sK0(X0,X1,X2,X3) != X0) | ~r2_hidden(sK0(X0,X1,X2,X3),X3)) & (sK0(X0,X1,X2,X3) = X2 | sK0(X0,X1,X2,X3) = X1 | sK0(X0,X1,X2,X3) = X0 | r2_hidden(sK0(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f29,f30])).
% 3.80/0.99  
% 3.80/0.99  fof(f48,plain,(
% 3.80/0.99    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 3.80/0.99    inference(cnf_transformation,[],[f31])).
% 3.80/0.99  
% 3.80/0.99  fof(f15,axiom,(
% 3.80/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f65,plain,(
% 3.80/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.80/0.99    inference(cnf_transformation,[],[f15])).
% 3.80/0.99  
% 3.80/0.99  fof(f89,plain,(
% 3.80/0.99    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k2_enumset1(X0,X0,X1,X2) != X3) )),
% 3.80/0.99    inference(definition_unfolding,[],[f48,f65])).
% 3.80/0.99  
% 3.80/0.99  fof(f105,plain,(
% 3.80/0.99    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k2_enumset1(X5,X5,X1,X2) != X3) )),
% 3.80/0.99    inference(equality_resolution,[],[f89])).
% 3.80/0.99  
% 3.80/0.99  fof(f106,plain,(
% 3.80/0.99    ( ! [X2,X5,X1] : (r2_hidden(X5,k2_enumset1(X5,X5,X1,X2))) )),
% 3.80/0.99    inference(equality_resolution,[],[f105])).
% 3.80/0.99  
% 3.80/0.99  fof(f2,axiom,(
% 3.80/0.99    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f23,plain,(
% 3.80/0.99    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 3.80/0.99    inference(rectify,[],[f2])).
% 3.80/0.99  
% 3.80/0.99  fof(f40,plain,(
% 3.80/0.99    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 3.80/0.99    inference(cnf_transformation,[],[f23])).
% 3.80/0.99  
% 3.80/0.99  fof(f6,axiom,(
% 3.80/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f44,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 3.80/0.99    inference(cnf_transformation,[],[f6])).
% 3.80/0.99  
% 3.80/0.99  fof(f81,plain,(
% 3.80/0.99    ( ! [X0] : (k4_xboole_0(X0,k4_xboole_0(X0,X0)) = X0) )),
% 3.80/0.99    inference(definition_unfolding,[],[f40,f44])).
% 3.80/0.99  
% 3.80/0.99  fof(f3,axiom,(
% 3.80/0.99    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f41,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.80/0.99    inference(cnf_transformation,[],[f3])).
% 3.80/0.99  
% 3.80/0.99  fof(f78,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 3.80/0.99    inference(definition_unfolding,[],[f41,f44])).
% 3.80/0.99  
% 3.80/0.99  fof(f4,axiom,(
% 3.80/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f24,plain,(
% 3.80/0.99    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 3.80/0.99    inference(ennf_transformation,[],[f4])).
% 3.80/0.99  
% 3.80/0.99  fof(f42,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 3.80/0.99    inference(cnf_transformation,[],[f24])).
% 3.80/0.99  
% 3.80/0.99  fof(f82,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 | ~r1_tarski(X0,X1)) )),
% 3.80/0.99    inference(definition_unfolding,[],[f42,f44])).
% 3.80/0.99  
% 3.80/0.99  fof(f21,conjecture,(
% 3.80/0.99    ! [X0,X1,X2] : ~(X0 != X2 & X0 != X1 & r1_tarski(k1_tarski(X0),k2_tarski(X1,X2)))),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f22,negated_conjecture,(
% 3.80/0.99    ~! [X0,X1,X2] : ~(X0 != X2 & X0 != X1 & r1_tarski(k1_tarski(X0),k2_tarski(X1,X2)))),
% 3.80/0.99    inference(negated_conjecture,[],[f21])).
% 3.80/0.99  
% 3.80/0.99  fof(f26,plain,(
% 3.80/0.99    ? [X0,X1,X2] : (X0 != X2 & X0 != X1 & r1_tarski(k1_tarski(X0),k2_tarski(X1,X2)))),
% 3.80/0.99    inference(ennf_transformation,[],[f22])).
% 3.80/0.99  
% 3.80/0.99  fof(f37,plain,(
% 3.80/0.99    ? [X0,X1,X2] : (X0 != X2 & X0 != X1 & r1_tarski(k1_tarski(X0),k2_tarski(X1,X2))) => (sK2 != sK4 & sK2 != sK3 & r1_tarski(k1_tarski(sK2),k2_tarski(sK3,sK4)))),
% 3.80/0.99    introduced(choice_axiom,[])).
% 3.80/0.99  
% 3.80/0.99  fof(f38,plain,(
% 3.80/0.99    sK2 != sK4 & sK2 != sK3 & r1_tarski(k1_tarski(sK2),k2_tarski(sK3,sK4))),
% 3.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f26,f37])).
% 3.80/0.99  
% 3.80/0.99  fof(f71,plain,(
% 3.80/0.99    r1_tarski(k1_tarski(sK2),k2_tarski(sK3,sK4))),
% 3.80/0.99    inference(cnf_transformation,[],[f38])).
% 3.80/0.99  
% 3.80/0.99  fof(f13,axiom,(
% 3.80/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f63,plain,(
% 3.80/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.80/0.99    inference(cnf_transformation,[],[f13])).
% 3.80/0.99  
% 3.80/0.99  fof(f75,plain,(
% 3.80/0.99    ( ! [X0] : (k2_enumset1(X0,X0,X0,X0) = k1_tarski(X0)) )),
% 3.80/0.99    inference(definition_unfolding,[],[f63,f74])).
% 3.80/0.99  
% 3.80/0.99  fof(f14,axiom,(
% 3.80/0.99    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f64,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 3.80/0.99    inference(cnf_transformation,[],[f14])).
% 3.80/0.99  
% 3.80/0.99  fof(f74,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 3.80/0.99    inference(definition_unfolding,[],[f64,f65])).
% 3.80/0.99  
% 3.80/0.99  fof(f100,plain,(
% 3.80/0.99    r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4))),
% 3.80/0.99    inference(definition_unfolding,[],[f71,f75,f74])).
% 3.80/0.99  
% 3.80/0.99  fof(f12,axiom,(
% 3.80/0.99    ! [X0,X1,X2,X3] : k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3)),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f62,plain,(
% 3.80/0.99    ( ! [X2,X0,X3,X1] : (k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3)) )),
% 3.80/0.99    inference(cnf_transformation,[],[f12])).
% 3.80/0.99  
% 3.80/0.99  fof(f8,axiom,(
% 3.80/0.99    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f46,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 3.80/0.99    inference(cnf_transformation,[],[f8])).
% 3.80/0.99  
% 3.80/0.99  fof(f79,plain,(
% 3.80/0.99    ( ! [X2,X0,X3,X1] : (k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k4_xboole_0(k2_enumset1(X3,X3,X3,X3),k2_enumset1(X0,X0,X1,X2))) = k2_enumset1(X0,X1,X2,X3)) )),
% 3.80/0.99    inference(definition_unfolding,[],[f62,f46,f65,f75])).
% 3.80/0.99  
% 3.80/0.99  fof(f7,axiom,(
% 3.80/0.99    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f45,plain,(
% 3.80/0.99    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 3.80/0.99    inference(cnf_transformation,[],[f7])).
% 3.80/0.99  
% 3.80/0.99  fof(f1,axiom,(
% 3.80/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f39,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 3.80/0.99    inference(cnf_transformation,[],[f1])).
% 3.80/0.99  
% 3.80/0.99  fof(f80,plain,(
% 3.80/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 3.80/0.99    inference(definition_unfolding,[],[f39,f44,f44])).
% 3.80/0.99  
% 3.80/0.99  fof(f5,axiom,(
% 3.80/0.99    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f43,plain,(
% 3.80/0.99    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.80/0.99    inference(cnf_transformation,[],[f5])).
% 3.80/0.99  
% 3.80/0.99  fof(f10,axiom,(
% 3.80/0.99    ! [X0,X1,X2] : (k2_tarski(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (X1 = X3 | X0 = X3)))),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f32,plain,(
% 3.80/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & ((X1 = X3 | X0 = X3) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & ((X1 = X3 | X0 = X3) | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 3.80/0.99    inference(nnf_transformation,[],[f10])).
% 3.80/0.99  
% 3.80/0.99  fof(f33,plain,(
% 3.80/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & (X1 = X3 | X0 = X3 | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 3.80/0.99    inference(flattening,[],[f32])).
% 3.80/0.99  
% 3.80/0.99  fof(f34,plain,(
% 3.80/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 3.80/0.99    inference(rectify,[],[f33])).
% 3.80/0.99  
% 3.80/0.99  fof(f35,plain,(
% 3.80/0.99    ! [X2,X1,X0] : (? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2))) => (((sK1(X0,X1,X2) != X1 & sK1(X0,X1,X2) != X0) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (sK1(X0,X1,X2) = X1 | sK1(X0,X1,X2) = X0 | r2_hidden(sK1(X0,X1,X2),X2))))),
% 3.80/0.99    introduced(choice_axiom,[])).
% 3.80/0.99  
% 3.80/0.99  fof(f36,plain,(
% 3.80/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | (((sK1(X0,X1,X2) != X1 & sK1(X0,X1,X2) != X0) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (sK1(X0,X1,X2) = X1 | sK1(X0,X1,X2) = X0 | r2_hidden(sK1(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 3.80/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f34,f35])).
% 3.80/0.99  
% 3.80/0.99  fof(f55,plain,(
% 3.80/0.99    ( ! [X4,X2,X0,X1] : (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2) | k2_tarski(X0,X1) != X2) )),
% 3.80/0.99    inference(cnf_transformation,[],[f36])).
% 3.80/0.99  
% 3.80/0.99  fof(f96,plain,(
% 3.80/0.99    ( ! [X4,X2,X0,X1] : (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2) | k2_enumset1(X0,X0,X0,X1) != X2) )),
% 3.80/0.99    inference(definition_unfolding,[],[f55,f74])).
% 3.80/0.99  
% 3.80/0.99  fof(f112,plain,(
% 3.80/0.99    ( ! [X4,X0,X1] : (X1 = X4 | X0 = X4 | ~r2_hidden(X4,k2_enumset1(X0,X0,X0,X1))) )),
% 3.80/0.99    inference(equality_resolution,[],[f96])).
% 3.80/0.99  
% 3.80/0.99  fof(f11,axiom,(
% 3.80/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0)),
% 3.80/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.80/0.99  
% 3.80/0.99  fof(f61,plain,(
% 3.80/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0)) )),
% 3.80/0.99    inference(cnf_transformation,[],[f11])).
% 3.80/0.99  
% 3.80/0.99  fof(f97,plain,(
% 3.80/0.99    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X1,X1,X2,X0)) )),
% 3.80/0.99    inference(definition_unfolding,[],[f61,f65,f65])).
% 3.80/0.99  
% 3.80/0.99  fof(f56,plain,(
% 3.80/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X0 != X4 | k2_tarski(X0,X1) != X2) )),
% 3.80/0.99    inference(cnf_transformation,[],[f36])).
% 3.80/0.99  
% 3.80/0.99  fof(f95,plain,(
% 3.80/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | X0 != X4 | k2_enumset1(X0,X0,X0,X1) != X2) )),
% 3.80/0.99    inference(definition_unfolding,[],[f56,f74])).
% 3.80/0.99  
% 3.80/0.99  fof(f110,plain,(
% 3.80/0.99    ( ! [X4,X2,X1] : (r2_hidden(X4,X2) | k2_enumset1(X4,X4,X4,X1) != X2) )),
% 3.80/0.99    inference(equality_resolution,[],[f95])).
% 3.80/0.99  
% 3.80/0.99  fof(f111,plain,(
% 3.80/0.99    ( ! [X4,X1] : (r2_hidden(X4,k2_enumset1(X4,X4,X4,X1))) )),
% 3.80/0.99    inference(equality_resolution,[],[f110])).
% 3.80/0.99  
% 3.80/0.99  fof(f73,plain,(
% 3.80/0.99    sK2 != sK4),
% 3.80/0.99    inference(cnf_transformation,[],[f38])).
% 3.80/0.99  
% 3.80/0.99  fof(f72,plain,(
% 3.80/0.99    sK2 != sK3),
% 3.80/0.99    inference(cnf_transformation,[],[f38])).
% 3.80/0.99  
% 3.80/0.99  cnf(c_13,plain,
% 3.80/0.99      ( r2_hidden(X0,k2_enumset1(X0,X0,X1,X2)) ),
% 3.80/0.99      inference(cnf_transformation,[],[f106]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_1841,plain,
% 3.80/0.99      ( r2_hidden(X0,k2_enumset1(X0,X0,X1,X2)) = iProver_top ),
% 3.80/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_3,plain,
% 3.80/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,X0)) = X0 ),
% 3.80/0.99      inference(cnf_transformation,[],[f81]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_0,plain,
% 3.80/0.99      ( k5_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
% 3.80/0.99      inference(cnf_transformation,[],[f78]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_2573,plain,
% 3.80/0.99      ( k5_xboole_0(X0,X0) = k4_xboole_0(X0,X0) ),
% 3.80/0.99      inference(superposition,[status(thm)],[c_3,c_0]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_4,plain,
% 3.80/0.99      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
% 3.80/0.99      inference(cnf_transformation,[],[f82]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_26,negated_conjecture,
% 3.80/0.99      ( r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4)) ),
% 3.80/0.99      inference(cnf_transformation,[],[f100]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_201,plain,
% 3.80/0.99      ( k2_enumset1(sK3,sK3,sK3,sK4) != X0
% 3.80/0.99      | k2_enumset1(sK2,sK2,sK2,sK2) != X1
% 3.80/0.99      | k4_xboole_0(X1,k4_xboole_0(X1,X0)) = X1 ),
% 3.80/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_26]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_202,plain,
% 3.80/0.99      ( k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4))) = k2_enumset1(sK2,sK2,sK2,sK2) ),
% 3.80/0.99      inference(unflattening,[status(thm)],[c_201]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_2575,plain,
% 3.80/0.99      ( k5_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) = k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4)) ),
% 3.80/0.99      inference(superposition,[status(thm)],[c_202,c_0]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_2585,plain,
% 3.80/0.99      ( k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK3,sK3,sK3,sK4)) = k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) ),
% 3.80/0.99      inference(demodulation,[status(thm)],[c_2573,c_2575]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_1,plain,
% 3.80/0.99      ( k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k4_xboole_0(k2_enumset1(X3,X3,X3,X3),k2_enumset1(X0,X0,X1,X2))) = k2_enumset1(X0,X1,X2,X3) ),
% 3.80/0.99      inference(cnf_transformation,[],[f79]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_3256,plain,
% 3.80/0.99      ( k5_xboole_0(k2_enumset1(sK3,sK3,sK3,sK4),k4_xboole_0(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2))) = k2_enumset1(sK3,sK3,sK4,sK2) ),
% 3.80/0.99      inference(superposition,[status(thm)],[c_2585,c_1]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_6,plain,
% 3.80/0.99      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.80/0.99      inference(cnf_transformation,[],[f45]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_2,plain,
% 3.80/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 3.80/0.99      inference(cnf_transformation,[],[f80]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_5,plain,
% 3.80/0.99      ( r1_tarski(k1_xboole_0,X0) ),
% 3.80/0.99      inference(cnf_transformation,[],[f43]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_195,plain,
% 3.80/0.99      ( X0 != X1
% 3.80/0.99      | k4_xboole_0(X2,k4_xboole_0(X2,X1)) = X2
% 3.80/0.99      | k1_xboole_0 != X2 ),
% 3.80/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_5]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_196,plain,
% 3.80/0.99      ( k4_xboole_0(k1_xboole_0,k4_xboole_0(k1_xboole_0,X0)) = k1_xboole_0 ),
% 3.80/0.99      inference(unflattening,[status(thm)],[c_195]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_2650,plain,
% 3.80/0.99      ( k4_xboole_0(X0,k4_xboole_0(X0,k1_xboole_0)) = k1_xboole_0 ),
% 3.80/0.99      inference(superposition,[status(thm)],[c_2,c_196]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_3478,plain,
% 3.80/0.99      ( k5_xboole_0(X0,k1_xboole_0) = k4_xboole_0(X0,k1_xboole_0) ),
% 3.80/0.99      inference(superposition,[status(thm)],[c_2650,c_0]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_3480,plain,
% 3.80/0.99      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.80/0.99      inference(light_normalisation,[status(thm)],[c_3478,c_6]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_3481,plain,
% 3.80/0.99      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 3.80/0.99      inference(demodulation,[status(thm)],[c_3480,c_2650]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_3727,plain,
% 3.80/0.99      ( k2_enumset1(sK3,sK3,sK4,sK2) = k2_enumset1(sK3,sK3,sK3,sK4) ),
% 3.80/0.99      inference(demodulation,[status(thm)],[c_3256,c_6,c_3481]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_20,plain,
% 3.80/0.99      ( ~ r2_hidden(X0,k2_enumset1(X1,X1,X1,X2)) | X0 = X1 | X0 = X2 ),
% 3.80/0.99      inference(cnf_transformation,[],[f112]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_1834,plain,
% 3.80/0.99      ( X0 = X1
% 3.80/0.99      | X0 = X2
% 3.80/0.99      | r2_hidden(X0,k2_enumset1(X1,X1,X1,X2)) != iProver_top ),
% 3.80/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_3740,plain,
% 3.80/0.99      ( sK3 = X0
% 3.80/0.99      | sK4 = X0
% 3.80/0.99      | r2_hidden(X0,k2_enumset1(sK3,sK3,sK4,sK2)) != iProver_top ),
% 3.80/0.99      inference(superposition,[status(thm)],[c_3727,c_1834]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_21,plain,
% 3.80/0.99      ( k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X2,X2,X0,X1) ),
% 3.80/0.99      inference(cnf_transformation,[],[f97]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_3737,plain,
% 3.80/0.99      ( k2_enumset1(sK3,sK3,sK4,sK2) = k2_enumset1(sK4,sK4,sK3,sK3) ),
% 3.80/0.99      inference(superposition,[status(thm)],[c_3727,c_21]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_3753,plain,
% 3.80/0.99      ( sK3 = X0
% 3.80/0.99      | sK4 = X0
% 3.80/0.99      | r2_hidden(X0,k2_enumset1(sK4,sK4,sK3,sK3)) != iProver_top ),
% 3.80/0.99      inference(light_normalisation,[status(thm)],[c_3740,c_3737]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_4114,plain,
% 3.80/0.99      ( k2_enumset1(sK2,sK2,sK3,sK4) = k2_enumset1(sK4,sK4,sK3,sK3) ),
% 3.80/0.99      inference(superposition,[status(thm)],[c_3737,c_21]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_5410,plain,
% 3.80/0.99      ( sK3 = X0
% 3.80/0.99      | sK4 = X0
% 3.80/0.99      | r2_hidden(X0,k2_enumset1(sK2,sK2,sK3,sK4)) != iProver_top ),
% 3.80/0.99      inference(light_normalisation,[status(thm)],[c_3753,c_4114]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_5416,plain,
% 3.80/0.99      ( sK3 = sK2 | sK4 = sK2 ),
% 3.80/0.99      inference(superposition,[status(thm)],[c_1841,c_5410]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_1630,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_1876,plain,
% 3.80/0.99      ( sK3 != X0 | sK2 != X0 | sK2 = sK3 ),
% 3.80/0.99      inference(instantiation,[status(thm)],[c_1630]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_1877,plain,
% 3.80/0.99      ( sK3 != sK2 | sK2 = sK3 | sK2 != sK2 ),
% 3.80/0.99      inference(instantiation,[status(thm)],[c_1876]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_1868,plain,
% 3.80/0.99      ( sK4 != X0 | sK2 != X0 | sK2 = sK4 ),
% 3.80/0.99      inference(instantiation,[status(thm)],[c_1630]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_1869,plain,
% 3.80/0.99      ( sK4 != sK2 | sK2 = sK4 | sK2 != sK2 ),
% 3.80/0.99      inference(instantiation,[status(thm)],[c_1868]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_19,plain,
% 3.80/0.99      ( r2_hidden(X0,k2_enumset1(X0,X0,X0,X1)) ),
% 3.80/0.99      inference(cnf_transformation,[],[f111]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_34,plain,
% 3.80/0.99      ( r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2)) ),
% 3.80/0.99      inference(instantiation,[status(thm)],[c_19]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_31,plain,
% 3.80/0.99      ( ~ r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2)) | sK2 = sK2 ),
% 3.80/0.99      inference(instantiation,[status(thm)],[c_20]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_24,negated_conjecture,
% 3.80/0.99      ( sK2 != sK4 ),
% 3.80/0.99      inference(cnf_transformation,[],[f73]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(c_25,negated_conjecture,
% 3.80/0.99      ( sK2 != sK3 ),
% 3.80/0.99      inference(cnf_transformation,[],[f72]) ).
% 3.80/0.99  
% 3.80/0.99  cnf(contradiction,plain,
% 3.80/0.99      ( $false ),
% 3.80/0.99      inference(minisat,
% 3.80/0.99                [status(thm)],
% 3.80/0.99                [c_5416,c_1877,c_1869,c_34,c_31,c_24,c_25]) ).
% 3.80/0.99  
% 3.80/0.99  
% 3.80/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.80/0.99  
% 3.80/0.99  ------                               Statistics
% 3.80/0.99  
% 3.80/0.99  ------ General
% 3.80/0.99  
% 3.80/0.99  abstr_ref_over_cycles:                  0
% 3.80/0.99  abstr_ref_under_cycles:                 0
% 3.80/0.99  gc_basic_clause_elim:                   0
% 3.80/0.99  forced_gc_time:                         0
% 3.80/0.99  parsing_time:                           0.009
% 3.80/0.99  unif_index_cands_time:                  0.
% 3.80/0.99  unif_index_add_time:                    0.
% 3.80/0.99  orderings_time:                         0.
% 3.80/0.99  out_proof_time:                         0.009
% 3.80/0.99  total_time:                             0.192
% 3.80/0.99  num_of_symbols:                         43
% 3.80/0.99  num_of_terms:                           5148
% 3.80/0.99  
% 3.80/0.99  ------ Preprocessing
% 3.80/0.99  
% 3.80/0.99  num_of_splits:                          0
% 3.80/0.99  num_of_split_atoms:                     0
% 3.80/0.99  num_of_reused_defs:                     0
% 3.80/0.99  num_eq_ax_congr_red:                    45
% 3.80/0.99  num_of_sem_filtered_clauses:            1
% 3.80/0.99  num_of_subtypes:                        0
% 3.80/0.99  monotx_restored_types:                  0
% 3.80/0.99  sat_num_of_epr_types:                   0
% 3.80/0.99  sat_num_of_non_cyclic_types:            0
% 3.80/0.99  sat_guarded_non_collapsed_types:        0
% 3.80/0.99  num_pure_diseq_elim:                    0
% 3.80/0.99  simp_replaced_by:                       0
% 3.80/0.99  res_preprocessed:                       118
% 3.80/0.99  prep_upred:                             0
% 3.80/0.99  prep_unflattend:                        100
% 3.80/0.99  smt_new_axioms:                         0
% 3.80/0.99  pred_elim_cands:                        1
% 3.80/0.99  pred_elim:                              1
% 3.80/0.99  pred_elim_cl:                           1
% 3.80/0.99  pred_elim_cycles:                       3
% 3.80/0.99  merged_defs:                            0
% 3.80/0.99  merged_defs_ncl:                        0
% 3.80/0.99  bin_hyper_res:                          0
% 3.80/0.99  prep_cycles:                            4
% 3.80/0.99  pred_elim_time:                         0.025
% 3.80/0.99  splitting_time:                         0.
% 3.80/0.99  sem_filter_time:                        0.
% 3.80/0.99  monotx_time:                            0.
% 3.80/0.99  subtype_inf_time:                       0.
% 3.80/0.99  
% 3.80/0.99  ------ Problem properties
% 3.80/0.99  
% 3.80/0.99  clauses:                                26
% 3.80/0.99  conjectures:                            2
% 3.80/0.99  epr:                                    2
% 3.80/0.99  horn:                                   22
% 3.80/0.99  ground:                                 3
% 3.80/0.99  unary:                                  17
% 3.80/0.99  binary:                                 0
% 3.80/0.99  lits:                                   48
% 3.80/0.99  lits_eq:                                34
% 3.80/0.99  fd_pure:                                0
% 3.80/0.99  fd_pseudo:                              0
% 3.80/0.99  fd_cond:                                0
% 3.80/0.99  fd_pseudo_cond:                         7
% 3.80/0.99  ac_symbols:                             0
% 3.80/0.99  
% 3.80/0.99  ------ Propositional Solver
% 3.80/0.99  
% 3.80/0.99  prop_solver_calls:                      29
% 3.80/0.99  prop_fast_solver_calls:                 864
% 3.80/0.99  smt_solver_calls:                       0
% 3.80/0.99  smt_fast_solver_calls:                  0
% 3.80/0.99  prop_num_of_clauses:                    1618
% 3.80/0.99  prop_preprocess_simplified:             5623
% 3.80/0.99  prop_fo_subsumed:                       0
% 3.80/0.99  prop_solver_time:                       0.
% 3.80/0.99  smt_solver_time:                        0.
% 3.80/0.99  smt_fast_solver_time:                   0.
% 3.80/0.99  prop_fast_solver_time:                  0.
% 3.80/0.99  prop_unsat_core_time:                   0.
% 3.80/0.99  
% 3.80/0.99  ------ QBF
% 3.80/0.99  
% 3.80/0.99  qbf_q_res:                              0
% 3.80/0.99  qbf_num_tautologies:                    0
% 3.80/0.99  qbf_prep_cycles:                        0
% 3.80/0.99  
% 3.80/0.99  ------ BMC1
% 3.80/0.99  
% 3.80/0.99  bmc1_current_bound:                     -1
% 3.80/0.99  bmc1_last_solved_bound:                 -1
% 3.80/0.99  bmc1_unsat_core_size:                   -1
% 3.80/0.99  bmc1_unsat_core_parents_size:           -1
% 3.80/0.99  bmc1_merge_next_fun:                    0
% 3.80/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.80/0.99  
% 3.80/0.99  ------ Instantiation
% 3.80/0.99  
% 3.80/0.99  inst_num_of_clauses:                    506
% 3.80/0.99  inst_num_in_passive:                    200
% 3.80/0.99  inst_num_in_active:                     186
% 3.80/0.99  inst_num_in_unprocessed:                120
% 3.80/0.99  inst_num_of_loops:                      220
% 3.80/0.99  inst_num_of_learning_restarts:          0
% 3.80/0.99  inst_num_moves_active_passive:          33
% 3.80/0.99  inst_lit_activity:                      0
% 3.80/0.99  inst_lit_activity_moves:                0
% 3.80/0.99  inst_num_tautologies:                   0
% 3.80/0.99  inst_num_prop_implied:                  0
% 3.80/0.99  inst_num_existing_simplified:           0
% 3.80/0.99  inst_num_eq_res_simplified:             0
% 3.80/0.99  inst_num_child_elim:                    0
% 3.80/0.99  inst_num_of_dismatching_blockings:      448
% 3.80/0.99  inst_num_of_non_proper_insts:           473
% 3.80/0.99  inst_num_of_duplicates:                 0
% 3.80/0.99  inst_inst_num_from_inst_to_res:         0
% 3.80/0.99  inst_dismatching_checking_time:         0.
% 3.80/0.99  
% 3.80/0.99  ------ Resolution
% 3.80/0.99  
% 3.80/0.99  res_num_of_clauses:                     0
% 3.80/0.99  res_num_in_passive:                     0
% 3.80/0.99  res_num_in_active:                      0
% 3.80/0.99  res_num_of_loops:                       122
% 3.80/0.99  res_forward_subset_subsumed:            255
% 3.80/0.99  res_backward_subset_subsumed:           0
% 3.80/0.99  res_forward_subsumed:                   16
% 3.80/0.99  res_backward_subsumed:                  0
% 3.80/0.99  res_forward_subsumption_resolution:     0
% 3.80/0.99  res_backward_subsumption_resolution:    0
% 3.80/0.99  res_clause_to_clause_subsumption:       1093
% 3.80/0.99  res_orphan_elimination:                 0
% 3.80/0.99  res_tautology_del:                      25
% 3.80/0.99  res_num_eq_res_simplified:              0
% 3.80/0.99  res_num_sel_changes:                    0
% 3.80/0.99  res_moves_from_active_to_pass:          0
% 3.80/0.99  
% 3.80/0.99  ------ Superposition
% 3.80/0.99  
% 3.80/0.99  sup_time_total:                         0.
% 3.80/0.99  sup_time_generating:                    0.
% 3.80/0.99  sup_time_sim_full:                      0.
% 3.80/0.99  sup_time_sim_immed:                     0.
% 3.80/0.99  
% 3.80/0.99  sup_num_of_clauses:                     70
% 3.80/0.99  sup_num_in_active:                      26
% 3.80/0.99  sup_num_in_passive:                     44
% 3.80/0.99  sup_num_of_loops:                       42
% 3.80/0.99  sup_fw_superposition:                   82
% 3.80/0.99  sup_bw_superposition:                   96
% 3.80/0.99  sup_immediate_simplified:               56
% 3.80/0.99  sup_given_eliminated:                   4
% 3.80/0.99  comparisons_done:                       0
% 3.80/0.99  comparisons_avoided:                    4
% 3.80/0.99  
% 3.80/0.99  ------ Simplifications
% 3.80/0.99  
% 3.80/0.99  
% 3.80/0.99  sim_fw_subset_subsumed:                 0
% 3.80/0.99  sim_bw_subset_subsumed:                 0
% 3.80/0.99  sim_fw_subsumed:                        14
% 3.80/0.99  sim_bw_subsumed:                        6
% 3.80/0.99  sim_fw_subsumption_res:                 0
% 3.80/0.99  sim_bw_subsumption_res:                 0
% 3.80/0.99  sim_tautology_del:                      0
% 3.80/0.99  sim_eq_tautology_del:                   11
% 3.80/0.99  sim_eq_res_simp:                        0
% 3.80/0.99  sim_fw_demodulated:                     31
% 3.80/0.99  sim_bw_demodulated:                     20
% 3.80/0.99  sim_light_normalised:                   29
% 3.80/0.99  sim_joinable_taut:                      0
% 3.80/0.99  sim_joinable_simp:                      0
% 3.80/0.99  sim_ac_normalised:                      0
% 3.80/0.99  sim_smt_subsumption:                    0
% 3.80/0.99  
%------------------------------------------------------------------------------
