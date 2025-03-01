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
% DateTime   : Thu Dec  3 11:36:09 EST 2020

% Result     : Theorem 14.52s
% Output     : CNFRefutation 14.52s
% Verified   : 
% Statistics : Number of formulae       :  150 ( 609 expanded)
%              Number of clauses        :   66 ( 203 expanded)
%              Number of leaves         :   23 ( 159 expanded)
%              Depth                    :   19
%              Number of atoms          :  414 (1069 expanded)
%              Number of equality atoms :  247 ( 728 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    6 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f8])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X2,X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f6,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f1,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f21,conjecture,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0
      <=> r2_hidden(X0,X1) ) ),
    inference(negated_conjecture,[],[f21])).

fof(f26,plain,(
    ? [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0
    <~> r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f39,plain,(
    ? [X0,X1] :
      ( ( ~ r2_hidden(X0,X1)
        | k4_xboole_0(k1_tarski(X0),X1) != k1_xboole_0 )
      & ( r2_hidden(X0,X1)
        | k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f26])).

fof(f40,plain,
    ( ? [X0,X1] :
        ( ( ~ r2_hidden(X0,X1)
          | k4_xboole_0(k1_tarski(X0),X1) != k1_xboole_0 )
        & ( r2_hidden(X0,X1)
          | k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0 ) )
   => ( ( ~ r2_hidden(sK2,sK3)
        | k4_xboole_0(k1_tarski(sK2),sK3) != k1_xboole_0 )
      & ( r2_hidden(sK2,sK3)
        | k4_xboole_0(k1_tarski(sK2),sK3) = k1_xboole_0 ) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,
    ( ( ~ r2_hidden(sK2,sK3)
      | k4_xboole_0(k1_tarski(sK2),sK3) != k1_xboole_0 )
    & ( r2_hidden(sK2,sK3)
      | k4_xboole_0(k1_tarski(sK2),sK3) = k1_xboole_0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f39,f40])).

fof(f76,plain,
    ( r2_hidden(sK2,sK3)
    | k4_xboole_0(k1_tarski(sK2),sK3) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f41])).

fof(f4,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f4])).

fof(f9,axiom,(
    ! [X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k3_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f9])).

fof(f78,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f52,f57])).

fof(f12,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f12])).

fof(f13,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f68,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f13])).

fof(f14,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f69,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f14])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f70,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f15])).

fof(f16,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f71,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f16])).

fof(f17,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f72,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f17])).

fof(f18,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f73,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f18])).

fof(f79,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f72,f73])).

fof(f80,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f71,f79])).

fof(f81,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f70,f80])).

fof(f82,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f69,f81])).

fof(f83,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f68,f82])).

fof(f84,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f67,f83])).

fof(f103,plain,
    ( r2_hidden(sK2,sK3)
    | k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3))) = k1_xboole_0 ),
    inference(definition_unfolding,[],[f76,f78,f84])).

fof(f19,axiom,(
    ! [X0,X1] :
      ( r2_hidden(X0,X1)
     => k2_xboole_0(k1_tarski(X0),X1) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(k1_tarski(X0),X1) = X1
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f74,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(k1_tarski(X0),X1) = X1
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f100,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) = X1
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f74,f84])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( ~ r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
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
    inference(nnf_transformation,[],[f2])).

fof(f28,plain,(
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
    inference(flattening,[],[f27])).

fof(f29,plain,(
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
    inference(rectify,[],[f28])).

fof(f30,plain,(
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

fof(f31,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f29,f30])).

fof(f45,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X0)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f89,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X2)
      | r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X0)
      | k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) != X2 ) ),
    inference(definition_unfolding,[],[f45,f78])).

fof(f104,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))))
      | r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X0) ) ),
    inference(equality_resolution,[],[f89])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f32])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f108,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f49])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f53,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f44,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f90,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) != X2 ) ),
    inference(definition_unfolding,[],[f44,f78])).

fof(f105,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)))) ) ),
    inference(equality_resolution,[],[f90])).

fof(f10,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f85,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X0),k2_xboole_0(X1,X0)))) = k2_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f58,f78])).

fof(f43,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f91,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) != X2 ) ),
    inference(definition_unfolding,[],[f43,f78])).

fof(f106,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)))) ) ),
    inference(equality_resolution,[],[f91])).

fof(f77,plain,
    ( ~ r2_hidden(sK2,sK3)
    | k4_xboole_0(k1_tarski(sK2),sK3) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f41])).

fof(f102,plain,
    ( ~ r2_hidden(sK2,sK3)
    | k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3))) != k1_xboole_0 ),
    inference(definition_unfolding,[],[f77,f78,f84])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f34,plain,(
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
    inference(nnf_transformation,[],[f24])).

fof(f35,plain,(
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
    inference(flattening,[],[f34])).

fof(f36,plain,(
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
    inference(rectify,[],[f35])).

fof(f37,plain,(
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
     => ( ( ( sK1(X0,X1,X2,X3) != X2
            & sK1(X0,X1,X2,X3) != X1
            & sK1(X0,X1,X2,X3) != X0 )
          | ~ r2_hidden(sK1(X0,X1,X2,X3),X3) )
        & ( sK1(X0,X1,X2,X3) = X2
          | sK1(X0,X1,X2,X3) = X1
          | sK1(X0,X1,X2,X3) = X0
          | r2_hidden(sK1(X0,X1,X2,X3),X3) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,(
    ! [X0,X1,X2,X3] :
      ( ( k1_enumset1(X0,X1,X2) = X3
        | ( ( ( sK1(X0,X1,X2,X3) != X2
              & sK1(X0,X1,X2,X3) != X1
              & sK1(X0,X1,X2,X3) != X0 )
            | ~ r2_hidden(sK1(X0,X1,X2,X3),X3) )
          & ( sK1(X0,X1,X2,X3) = X2
            | sK1(X0,X1,X2,X3) = X1
            | sK1(X0,X1,X2,X3) = X0
            | r2_hidden(sK1(X0,X1,X2,X3),X3) ) ) )
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f36,f37])).

fof(f60,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f38])).

fof(f98,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f60,f82])).

fof(f113,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f98])).

fof(f114,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2)) ),
    inference(equality_resolution,[],[f113])).

cnf(c_14,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_13,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1371,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
    inference(superposition,[status(thm)],[c_14,c_13])).

cnf(c_12,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1,plain,
    ( k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1307,plain,
    ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_12,c_1])).

cnf(c_1381,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1 ),
    inference(demodulation,[status(thm)],[c_1371,c_1307])).

cnf(c_26,negated_conjecture,
    ( r2_hidden(sK2,sK3)
    | k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3))) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f103])).

cnf(c_467,negated_conjecture,
    ( r2_hidden(sK2,sK3)
    | k5_xboole_0(sK3,k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)))) = k1_xboole_0 ),
    inference(theory_normalisation,[status(thm)],[c_26,c_13,c_1])).

cnf(c_939,plain,
    ( k5_xboole_0(sK3,k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)))) = k1_xboole_0
    | r2_hidden(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_467])).

cnf(c_1832,plain,
    ( k5_xboole_0(sK3,k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)) = k1_xboole_0
    | r2_hidden(sK2,sK3) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1381,c_939])).

cnf(c_23,plain,
    ( ~ r2_hidden(X0,X1)
    | k2_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) = X1 ),
    inference(cnf_transformation,[],[f100])).

cnf(c_941,plain,
    ( k2_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) = X1
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_2339,plain,
    ( k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3) = sK3
    | k5_xboole_0(sK3,k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1832,c_941])).

cnf(c_3240,plain,
    ( k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3) = k5_xboole_0(sK3,k1_xboole_0)
    | k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3) = sK3 ),
    inference(superposition,[status(thm)],[c_2339,c_1381])).

cnf(c_3275,plain,
    ( k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3) = sK3 ),
    inference(demodulation,[status(thm)],[c_3240,c_12])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)))) ),
    inference(cnf_transformation,[],[f104])).

cnf(c_471,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k2_xboole_0(X1,X2))))) ),
    inference(theory_normalisation,[status(thm)],[c_5,c_13,c_1])).

cnf(c_955,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k2_xboole_0(X1,X2))))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_471])).

cnf(c_1374,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(X0,X1))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_13,c_14])).

cnf(c_1859,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = k5_xboole_0(X1,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_1374,c_1381])).

cnf(c_1872,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = X1 ),
    inference(demodulation,[status(thm)],[c_1859,c_12])).

cnf(c_2185,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),X0) = X1 ),
    inference(superposition,[status(thm)],[c_1872,c_1872])).

cnf(c_1092,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(X2,k5_xboole_0(X1,X0)) ),
    inference(superposition,[status(thm)],[c_13,c_1])).

cnf(c_2585,plain,
    ( k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),X2)) = k5_xboole_0(X2,X1) ),
    inference(superposition,[status(thm)],[c_2185,c_1092])).

cnf(c_2620,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,X2))) = k5_xboole_0(X2,X1) ),
    inference(light_normalisation,[status(thm)],[c_2585,c_13])).

cnf(c_56458,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r2_hidden(X0,k5_xboole_0(k2_xboole_0(X1,X2),X2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_955,c_2620])).

cnf(c_56497,plain,
    ( r2_hidden(X0,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top
    | r2_hidden(X0,k5_xboole_0(sK3,sK3)) = iProver_top
    | r2_hidden(X0,sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_3275,c_56458])).

cnf(c_56548,plain,
    ( r2_hidden(X0,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top
    | r2_hidden(X0,sK3) = iProver_top
    | r2_hidden(X0,k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_56497,c_14])).

cnf(c_56668,plain,
    ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top
    | r2_hidden(sK2,sK3) = iProver_top
    | r2_hidden(sK2,k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_56548])).

cnf(c_10,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f108])).

cnf(c_951,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_11,plain,
    ( ~ r1_tarski(X0,X1)
    | k2_xboole_0(X0,X1) = X1 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_950,plain,
    ( k2_xboole_0(X0,X1) = X1
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_41092,plain,
    ( k2_xboole_0(X0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_951,c_950])).

cnf(c_6,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k5_xboole_0(X2,k5_xboole_0(k5_xboole_0(X2,X1),k2_xboole_0(X2,X1)))) ),
    inference(cnf_transformation,[],[f105])).

cnf(c_470,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X2,k2_xboole_0(X2,X1))))) ),
    inference(theory_normalisation,[status(thm)],[c_6,c_13,c_1])).

cnf(c_954,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X2,k2_xboole_0(X2,X1))))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_470])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X0),k2_xboole_0(X1,X0)))) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_475,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(X1,k2_xboole_0(X1,X0))))) = k2_xboole_0(X0,X1) ),
    inference(theory_normalisation,[status(thm)],[c_0,c_13,c_1])).

cnf(c_1834,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,k2_xboole_0(X1,X0))) = k2_xboole_0(X0,X1) ),
    inference(demodulation,[status(thm)],[c_1381,c_475])).

cnf(c_1862,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X0,X1),X2))) = X2 ),
    inference(superposition,[status(thm)],[c_1381,c_13])).

cnf(c_1867,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(X0,k5_xboole_0(X1,X2)))) = X2 ),
    inference(light_normalisation,[status(thm)],[c_1862,c_13])).

cnf(c_8602,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,k2_xboole_0(X0,X1))) = k2_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_1834,c_1867])).

cnf(c_51734,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,k2_xboole_0(X1,X2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_954,c_8602])).

cnf(c_51764,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_41092,c_51734])).

cnf(c_51786,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_51764,c_14])).

cnf(c_51836,plain,
    ( r2_hidden(sK2,sK2) != iProver_top
    | r2_hidden(sK2,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_51786])).

cnf(c_7,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)))) ),
    inference(cnf_transformation,[],[f106])).

cnf(c_469,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k2_xboole_0(X1,X2))))) ),
    inference(theory_normalisation,[status(thm)],[c_7,c_13,c_1])).

cnf(c_953,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k2_xboole_0(X1,X2))))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_469])).

cnf(c_47039,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k5_xboole_0(k2_xboole_0(X1,X2),X2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_953,c_2620])).

cnf(c_47084,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_41092,c_47039])).

cnf(c_47092,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_47084,c_14])).

cnf(c_47202,plain,
    ( r2_hidden(sK2,sK2) = iProver_top
    | r2_hidden(sK2,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_47092])).

cnf(c_25,negated_conjecture,
    ( ~ r2_hidden(sK2,sK3)
    | k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3))) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f102])).

cnf(c_468,negated_conjecture,
    ( ~ r2_hidden(sK2,sK3)
    | k5_xboole_0(sK3,k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)))) != k1_xboole_0 ),
    inference(theory_normalisation,[status(thm)],[c_25,c_13,c_1])).

cnf(c_940,plain,
    ( k5_xboole_0(sK3,k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)))) != k1_xboole_0
    | r2_hidden(sK2,sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_468])).

cnf(c_1833,plain,
    ( k5_xboole_0(sK3,k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)) != k1_xboole_0
    | r2_hidden(sK2,sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1381,c_940])).

cnf(c_3279,plain,
    ( k5_xboole_0(sK3,sK3) != k1_xboole_0
    | r2_hidden(sK2,sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3275,c_1833])).

cnf(c_3282,plain,
    ( k1_xboole_0 != k1_xboole_0
    | r2_hidden(sK2,sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3279,c_14])).

cnf(c_3283,plain,
    ( r2_hidden(sK2,sK3) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_3282])).

cnf(c_21,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ),
    inference(cnf_transformation,[],[f114])).

cnf(c_36,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_38,plain,
    ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_36])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_56668,c_51836,c_47202,c_3283,c_38])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n006.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:47:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 14.52/2.50  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 14.52/2.50  
% 14.52/2.50  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 14.52/2.50  
% 14.52/2.50  ------  iProver source info
% 14.52/2.50  
% 14.52/2.50  git: date: 2020-06-30 10:37:57 +0100
% 14.52/2.50  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 14.52/2.50  git: non_committed_changes: false
% 14.52/2.50  git: last_make_outside_of_git: false
% 14.52/2.50  
% 14.52/2.50  ------ 
% 14.52/2.50  
% 14.52/2.50  ------ Input Options
% 14.52/2.50  
% 14.52/2.50  --out_options                           all
% 14.52/2.50  --tptp_safe_out                         true
% 14.52/2.50  --problem_path                          ""
% 14.52/2.50  --include_path                          ""
% 14.52/2.50  --clausifier                            res/vclausify_rel
% 14.52/2.50  --clausifier_options                    --mode clausify
% 14.52/2.50  --stdin                                 false
% 14.52/2.50  --stats_out                             all
% 14.52/2.50  
% 14.52/2.50  ------ General Options
% 14.52/2.50  
% 14.52/2.50  --fof                                   false
% 14.52/2.50  --time_out_real                         305.
% 14.52/2.50  --time_out_virtual                      -1.
% 14.52/2.50  --symbol_type_check                     false
% 14.52/2.50  --clausify_out                          false
% 14.52/2.50  --sig_cnt_out                           false
% 14.52/2.50  --trig_cnt_out                          false
% 14.52/2.50  --trig_cnt_out_tolerance                1.
% 14.52/2.50  --trig_cnt_out_sk_spl                   false
% 14.52/2.50  --abstr_cl_out                          false
% 14.52/2.50  
% 14.52/2.50  ------ Global Options
% 14.52/2.50  
% 14.52/2.50  --schedule                              default
% 14.52/2.50  --add_important_lit                     false
% 14.52/2.50  --prop_solver_per_cl                    1000
% 14.52/2.50  --min_unsat_core                        false
% 14.52/2.50  --soft_assumptions                      false
% 14.52/2.50  --soft_lemma_size                       3
% 14.52/2.50  --prop_impl_unit_size                   0
% 14.52/2.50  --prop_impl_unit                        []
% 14.52/2.50  --share_sel_clauses                     true
% 14.52/2.50  --reset_solvers                         false
% 14.52/2.50  --bc_imp_inh                            [conj_cone]
% 14.52/2.50  --conj_cone_tolerance                   3.
% 14.52/2.50  --extra_neg_conj                        none
% 14.52/2.50  --large_theory_mode                     true
% 14.52/2.50  --prolific_symb_bound                   200
% 14.52/2.50  --lt_threshold                          2000
% 14.52/2.50  --clause_weak_htbl                      true
% 14.52/2.50  --gc_record_bc_elim                     false
% 14.52/2.50  
% 14.52/2.50  ------ Preprocessing Options
% 14.52/2.50  
% 14.52/2.50  --preprocessing_flag                    true
% 14.52/2.50  --time_out_prep_mult                    0.1
% 14.52/2.50  --splitting_mode                        input
% 14.52/2.50  --splitting_grd                         true
% 14.52/2.50  --splitting_cvd                         false
% 14.52/2.50  --splitting_cvd_svl                     false
% 14.52/2.50  --splitting_nvd                         32
% 14.52/2.50  --sub_typing                            true
% 14.52/2.50  --prep_gs_sim                           true
% 14.52/2.50  --prep_unflatten                        true
% 14.52/2.50  --prep_res_sim                          true
% 14.52/2.50  --prep_upred                            true
% 14.52/2.50  --prep_sem_filter                       exhaustive
% 14.52/2.50  --prep_sem_filter_out                   false
% 14.52/2.50  --pred_elim                             true
% 14.52/2.50  --res_sim_input                         true
% 14.52/2.50  --eq_ax_congr_red                       true
% 14.52/2.50  --pure_diseq_elim                       true
% 14.52/2.50  --brand_transform                       false
% 14.52/2.50  --non_eq_to_eq                          false
% 14.52/2.50  --prep_def_merge                        true
% 14.52/2.50  --prep_def_merge_prop_impl              false
% 14.52/2.50  --prep_def_merge_mbd                    true
% 14.52/2.50  --prep_def_merge_tr_red                 false
% 14.52/2.50  --prep_def_merge_tr_cl                  false
% 14.52/2.50  --smt_preprocessing                     true
% 14.52/2.50  --smt_ac_axioms                         fast
% 14.52/2.50  --preprocessed_out                      false
% 14.52/2.50  --preprocessed_stats                    false
% 14.52/2.50  
% 14.52/2.50  ------ Abstraction refinement Options
% 14.52/2.50  
% 14.52/2.50  --abstr_ref                             []
% 14.52/2.50  --abstr_ref_prep                        false
% 14.52/2.50  --abstr_ref_until_sat                   false
% 14.52/2.50  --abstr_ref_sig_restrict                funpre
% 14.52/2.50  --abstr_ref_af_restrict_to_split_sk     false
% 14.52/2.50  --abstr_ref_under                       []
% 14.52/2.50  
% 14.52/2.50  ------ SAT Options
% 14.52/2.50  
% 14.52/2.50  --sat_mode                              false
% 14.52/2.50  --sat_fm_restart_options                ""
% 14.52/2.50  --sat_gr_def                            false
% 14.52/2.50  --sat_epr_types                         true
% 14.52/2.50  --sat_non_cyclic_types                  false
% 14.52/2.50  --sat_finite_models                     false
% 14.52/2.50  --sat_fm_lemmas                         false
% 14.52/2.50  --sat_fm_prep                           false
% 14.52/2.50  --sat_fm_uc_incr                        true
% 14.52/2.50  --sat_out_model                         small
% 14.52/2.50  --sat_out_clauses                       false
% 14.52/2.50  
% 14.52/2.50  ------ QBF Options
% 14.52/2.50  
% 14.52/2.50  --qbf_mode                              false
% 14.52/2.50  --qbf_elim_univ                         false
% 14.52/2.50  --qbf_dom_inst                          none
% 14.52/2.50  --qbf_dom_pre_inst                      false
% 14.52/2.50  --qbf_sk_in                             false
% 14.52/2.50  --qbf_pred_elim                         true
% 14.52/2.50  --qbf_split                             512
% 14.52/2.50  
% 14.52/2.50  ------ BMC1 Options
% 14.52/2.50  
% 14.52/2.50  --bmc1_incremental                      false
% 14.52/2.50  --bmc1_axioms                           reachable_all
% 14.52/2.50  --bmc1_min_bound                        0
% 14.52/2.50  --bmc1_max_bound                        -1
% 14.52/2.50  --bmc1_max_bound_default                -1
% 14.52/2.50  --bmc1_symbol_reachability              true
% 14.52/2.50  --bmc1_property_lemmas                  false
% 14.52/2.50  --bmc1_k_induction                      false
% 14.52/2.50  --bmc1_non_equiv_states                 false
% 14.52/2.50  --bmc1_deadlock                         false
% 14.52/2.50  --bmc1_ucm                              false
% 14.52/2.50  --bmc1_add_unsat_core                   none
% 14.52/2.50  --bmc1_unsat_core_children              false
% 14.52/2.50  --bmc1_unsat_core_extrapolate_axioms    false
% 14.52/2.50  --bmc1_out_stat                         full
% 14.52/2.50  --bmc1_ground_init                      false
% 14.52/2.50  --bmc1_pre_inst_next_state              false
% 14.52/2.50  --bmc1_pre_inst_state                   false
% 14.52/2.50  --bmc1_pre_inst_reach_state             false
% 14.52/2.50  --bmc1_out_unsat_core                   false
% 14.52/2.50  --bmc1_aig_witness_out                  false
% 14.52/2.50  --bmc1_verbose                          false
% 14.52/2.50  --bmc1_dump_clauses_tptp                false
% 14.52/2.50  --bmc1_dump_unsat_core_tptp             false
% 14.52/2.50  --bmc1_dump_file                        -
% 14.52/2.50  --bmc1_ucm_expand_uc_limit              128
% 14.52/2.50  --bmc1_ucm_n_expand_iterations          6
% 14.52/2.50  --bmc1_ucm_extend_mode                  1
% 14.52/2.50  --bmc1_ucm_init_mode                    2
% 14.52/2.50  --bmc1_ucm_cone_mode                    none
% 14.52/2.50  --bmc1_ucm_reduced_relation_type        0
% 14.52/2.50  --bmc1_ucm_relax_model                  4
% 14.52/2.50  --bmc1_ucm_full_tr_after_sat            true
% 14.52/2.50  --bmc1_ucm_expand_neg_assumptions       false
% 14.52/2.50  --bmc1_ucm_layered_model                none
% 14.52/2.50  --bmc1_ucm_max_lemma_size               10
% 14.52/2.50  
% 14.52/2.50  ------ AIG Options
% 14.52/2.50  
% 14.52/2.50  --aig_mode                              false
% 14.52/2.50  
% 14.52/2.50  ------ Instantiation Options
% 14.52/2.50  
% 14.52/2.50  --instantiation_flag                    true
% 14.52/2.50  --inst_sos_flag                         false
% 14.52/2.50  --inst_sos_phase                        true
% 14.52/2.50  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 14.52/2.50  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 14.52/2.50  --inst_lit_sel_side                     num_symb
% 14.52/2.50  --inst_solver_per_active                1400
% 14.52/2.50  --inst_solver_calls_frac                1.
% 14.52/2.50  --inst_passive_queue_type               priority_queues
% 14.52/2.50  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 14.52/2.50  --inst_passive_queues_freq              [25;2]
% 14.52/2.50  --inst_dismatching                      true
% 14.52/2.50  --inst_eager_unprocessed_to_passive     true
% 14.52/2.50  --inst_prop_sim_given                   true
% 14.52/2.50  --inst_prop_sim_new                     false
% 14.52/2.50  --inst_subs_new                         false
% 14.52/2.50  --inst_eq_res_simp                      false
% 14.52/2.50  --inst_subs_given                       false
% 14.52/2.50  --inst_orphan_elimination               true
% 14.52/2.50  --inst_learning_loop_flag               true
% 14.52/2.50  --inst_learning_start                   3000
% 14.52/2.50  --inst_learning_factor                  2
% 14.52/2.50  --inst_start_prop_sim_after_learn       3
% 14.52/2.50  --inst_sel_renew                        solver
% 14.52/2.50  --inst_lit_activity_flag                true
% 14.52/2.50  --inst_restr_to_given                   false
% 14.52/2.50  --inst_activity_threshold               500
% 14.52/2.50  --inst_out_proof                        true
% 14.52/2.50  
% 14.52/2.50  ------ Resolution Options
% 14.52/2.50  
% 14.52/2.50  --resolution_flag                       true
% 14.52/2.50  --res_lit_sel                           adaptive
% 14.52/2.50  --res_lit_sel_side                      none
% 14.52/2.50  --res_ordering                          kbo
% 14.52/2.50  --res_to_prop_solver                    active
% 14.52/2.50  --res_prop_simpl_new                    false
% 14.52/2.50  --res_prop_simpl_given                  true
% 14.52/2.50  --res_passive_queue_type                priority_queues
% 14.52/2.50  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 14.52/2.50  --res_passive_queues_freq               [15;5]
% 14.52/2.50  --res_forward_subs                      full
% 14.52/2.50  --res_backward_subs                     full
% 14.52/2.50  --res_forward_subs_resolution           true
% 14.52/2.50  --res_backward_subs_resolution          true
% 14.52/2.50  --res_orphan_elimination                true
% 14.52/2.50  --res_time_limit                        2.
% 14.52/2.50  --res_out_proof                         true
% 14.52/2.50  
% 14.52/2.50  ------ Superposition Options
% 14.52/2.50  
% 14.52/2.50  --superposition_flag                    true
% 14.52/2.50  --sup_passive_queue_type                priority_queues
% 14.52/2.50  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 14.52/2.50  --sup_passive_queues_freq               [8;1;4]
% 14.52/2.50  --demod_completeness_check              fast
% 14.52/2.50  --demod_use_ground                      true
% 14.52/2.50  --sup_to_prop_solver                    passive
% 14.52/2.50  --sup_prop_simpl_new                    true
% 14.52/2.50  --sup_prop_simpl_given                  true
% 14.52/2.50  --sup_fun_splitting                     false
% 14.52/2.50  --sup_smt_interval                      50000
% 14.52/2.50  
% 14.52/2.50  ------ Superposition Simplification Setup
% 14.52/2.50  
% 14.52/2.50  --sup_indices_passive                   []
% 14.52/2.50  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 14.52/2.50  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 14.52/2.50  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 14.52/2.50  --sup_full_triv                         [TrivRules;PropSubs]
% 14.52/2.50  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 14.52/2.50  --sup_full_bw                           [BwDemod]
% 14.52/2.50  --sup_immed_triv                        [TrivRules]
% 14.52/2.50  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 14.52/2.50  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 14.52/2.50  --sup_immed_bw_main                     []
% 14.52/2.50  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 14.52/2.50  --sup_input_triv                        [Unflattening;TrivRules]
% 14.52/2.50  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 14.52/2.50  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 14.52/2.50  
% 14.52/2.50  ------ Combination Options
% 14.52/2.50  
% 14.52/2.50  --comb_res_mult                         3
% 14.52/2.50  --comb_sup_mult                         2
% 14.52/2.50  --comb_inst_mult                        10
% 14.52/2.50  
% 14.52/2.50  ------ Debug Options
% 14.52/2.50  
% 14.52/2.50  --dbg_backtrace                         false
% 14.52/2.50  --dbg_dump_prop_clauses                 false
% 14.52/2.50  --dbg_dump_prop_clauses_file            -
% 14.52/2.50  --dbg_out_stat                          false
% 14.52/2.50  ------ Parsing...
% 14.52/2.50  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 14.52/2.50  
% 14.52/2.50  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 14.52/2.50  
% 14.52/2.50  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 14.52/2.50  
% 14.52/2.50  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 14.52/2.50  ------ Proving...
% 14.52/2.50  ------ Problem Properties 
% 14.52/2.50  
% 14.52/2.50  
% 14.52/2.50  clauses                                 26
% 14.52/2.50  conjectures                             2
% 14.52/2.50  EPR                                     2
% 14.52/2.50  Horn                                    19
% 14.52/2.50  unary                                   10
% 14.52/2.50  binary                                  6
% 14.52/2.50  lits                                    56
% 14.52/2.50  lits eq                                 27
% 14.52/2.50  fd_pure                                 0
% 14.52/2.50  fd_pseudo                               0
% 14.52/2.50  fd_cond                                 0
% 14.52/2.50  fd_pseudo_cond                          8
% 14.52/2.50  AC symbols                              1
% 14.52/2.50  
% 14.52/2.50  ------ Schedule dynamic 5 is on 
% 14.52/2.50  
% 14.52/2.50  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 14.52/2.50  
% 14.52/2.50  
% 14.52/2.50  ------ 
% 14.52/2.50  Current options:
% 14.52/2.50  ------ 
% 14.52/2.50  
% 14.52/2.50  ------ Input Options
% 14.52/2.50  
% 14.52/2.50  --out_options                           all
% 14.52/2.50  --tptp_safe_out                         true
% 14.52/2.50  --problem_path                          ""
% 14.52/2.50  --include_path                          ""
% 14.52/2.50  --clausifier                            res/vclausify_rel
% 14.52/2.50  --clausifier_options                    --mode clausify
% 14.52/2.50  --stdin                                 false
% 14.52/2.50  --stats_out                             all
% 14.52/2.50  
% 14.52/2.50  ------ General Options
% 14.52/2.50  
% 14.52/2.50  --fof                                   false
% 14.52/2.50  --time_out_real                         305.
% 14.52/2.50  --time_out_virtual                      -1.
% 14.52/2.50  --symbol_type_check                     false
% 14.52/2.50  --clausify_out                          false
% 14.52/2.50  --sig_cnt_out                           false
% 14.52/2.50  --trig_cnt_out                          false
% 14.52/2.50  --trig_cnt_out_tolerance                1.
% 14.52/2.50  --trig_cnt_out_sk_spl                   false
% 14.52/2.50  --abstr_cl_out                          false
% 14.52/2.50  
% 14.52/2.50  ------ Global Options
% 14.52/2.50  
% 14.52/2.50  --schedule                              default
% 14.52/2.50  --add_important_lit                     false
% 14.52/2.50  --prop_solver_per_cl                    1000
% 14.52/2.50  --min_unsat_core                        false
% 14.52/2.50  --soft_assumptions                      false
% 14.52/2.50  --soft_lemma_size                       3
% 14.52/2.50  --prop_impl_unit_size                   0
% 14.52/2.50  --prop_impl_unit                        []
% 14.52/2.50  --share_sel_clauses                     true
% 14.52/2.50  --reset_solvers                         false
% 14.52/2.50  --bc_imp_inh                            [conj_cone]
% 14.52/2.50  --conj_cone_tolerance                   3.
% 14.52/2.50  --extra_neg_conj                        none
% 14.52/2.50  --large_theory_mode                     true
% 14.52/2.50  --prolific_symb_bound                   200
% 14.52/2.50  --lt_threshold                          2000
% 14.52/2.50  --clause_weak_htbl                      true
% 14.52/2.50  --gc_record_bc_elim                     false
% 14.52/2.50  
% 14.52/2.50  ------ Preprocessing Options
% 14.52/2.50  
% 14.52/2.50  --preprocessing_flag                    true
% 14.52/2.50  --time_out_prep_mult                    0.1
% 14.52/2.50  --splitting_mode                        input
% 14.52/2.50  --splitting_grd                         true
% 14.52/2.50  --splitting_cvd                         false
% 14.52/2.50  --splitting_cvd_svl                     false
% 14.52/2.50  --splitting_nvd                         32
% 14.52/2.50  --sub_typing                            true
% 14.52/2.50  --prep_gs_sim                           true
% 14.52/2.50  --prep_unflatten                        true
% 14.52/2.50  --prep_res_sim                          true
% 14.52/2.50  --prep_upred                            true
% 14.52/2.50  --prep_sem_filter                       exhaustive
% 14.52/2.50  --prep_sem_filter_out                   false
% 14.52/2.50  --pred_elim                             true
% 14.52/2.50  --res_sim_input                         true
% 14.52/2.50  --eq_ax_congr_red                       true
% 14.52/2.50  --pure_diseq_elim                       true
% 14.52/2.50  --brand_transform                       false
% 14.52/2.50  --non_eq_to_eq                          false
% 14.52/2.50  --prep_def_merge                        true
% 14.52/2.50  --prep_def_merge_prop_impl              false
% 14.52/2.50  --prep_def_merge_mbd                    true
% 14.52/2.50  --prep_def_merge_tr_red                 false
% 14.52/2.50  --prep_def_merge_tr_cl                  false
% 14.52/2.50  --smt_preprocessing                     true
% 14.52/2.50  --smt_ac_axioms                         fast
% 14.52/2.50  --preprocessed_out                      false
% 14.52/2.50  --preprocessed_stats                    false
% 14.52/2.50  
% 14.52/2.50  ------ Abstraction refinement Options
% 14.52/2.50  
% 14.52/2.50  --abstr_ref                             []
% 14.52/2.50  --abstr_ref_prep                        false
% 14.52/2.50  --abstr_ref_until_sat                   false
% 14.52/2.50  --abstr_ref_sig_restrict                funpre
% 14.52/2.50  --abstr_ref_af_restrict_to_split_sk     false
% 14.52/2.50  --abstr_ref_under                       []
% 14.52/2.50  
% 14.52/2.50  ------ SAT Options
% 14.52/2.50  
% 14.52/2.50  --sat_mode                              false
% 14.52/2.50  --sat_fm_restart_options                ""
% 14.52/2.50  --sat_gr_def                            false
% 14.52/2.50  --sat_epr_types                         true
% 14.52/2.50  --sat_non_cyclic_types                  false
% 14.52/2.50  --sat_finite_models                     false
% 14.52/2.50  --sat_fm_lemmas                         false
% 14.52/2.50  --sat_fm_prep                           false
% 14.52/2.50  --sat_fm_uc_incr                        true
% 14.52/2.50  --sat_out_model                         small
% 14.52/2.50  --sat_out_clauses                       false
% 14.52/2.50  
% 14.52/2.50  ------ QBF Options
% 14.52/2.50  
% 14.52/2.50  --qbf_mode                              false
% 14.52/2.50  --qbf_elim_univ                         false
% 14.52/2.50  --qbf_dom_inst                          none
% 14.52/2.50  --qbf_dom_pre_inst                      false
% 14.52/2.50  --qbf_sk_in                             false
% 14.52/2.50  --qbf_pred_elim                         true
% 14.52/2.50  --qbf_split                             512
% 14.52/2.50  
% 14.52/2.50  ------ BMC1 Options
% 14.52/2.50  
% 14.52/2.50  --bmc1_incremental                      false
% 14.52/2.50  --bmc1_axioms                           reachable_all
% 14.52/2.50  --bmc1_min_bound                        0
% 14.52/2.50  --bmc1_max_bound                        -1
% 14.52/2.50  --bmc1_max_bound_default                -1
% 14.52/2.50  --bmc1_symbol_reachability              true
% 14.52/2.50  --bmc1_property_lemmas                  false
% 14.52/2.50  --bmc1_k_induction                      false
% 14.52/2.50  --bmc1_non_equiv_states                 false
% 14.52/2.50  --bmc1_deadlock                         false
% 14.52/2.50  --bmc1_ucm                              false
% 14.52/2.50  --bmc1_add_unsat_core                   none
% 14.52/2.50  --bmc1_unsat_core_children              false
% 14.52/2.50  --bmc1_unsat_core_extrapolate_axioms    false
% 14.52/2.50  --bmc1_out_stat                         full
% 14.52/2.50  --bmc1_ground_init                      false
% 14.52/2.50  --bmc1_pre_inst_next_state              false
% 14.52/2.50  --bmc1_pre_inst_state                   false
% 14.52/2.50  --bmc1_pre_inst_reach_state             false
% 14.52/2.50  --bmc1_out_unsat_core                   false
% 14.52/2.50  --bmc1_aig_witness_out                  false
% 14.52/2.50  --bmc1_verbose                          false
% 14.52/2.50  --bmc1_dump_clauses_tptp                false
% 14.52/2.50  --bmc1_dump_unsat_core_tptp             false
% 14.52/2.50  --bmc1_dump_file                        -
% 14.52/2.50  --bmc1_ucm_expand_uc_limit              128
% 14.52/2.50  --bmc1_ucm_n_expand_iterations          6
% 14.52/2.50  --bmc1_ucm_extend_mode                  1
% 14.52/2.50  --bmc1_ucm_init_mode                    2
% 14.52/2.50  --bmc1_ucm_cone_mode                    none
% 14.52/2.50  --bmc1_ucm_reduced_relation_type        0
% 14.52/2.50  --bmc1_ucm_relax_model                  4
% 14.52/2.50  --bmc1_ucm_full_tr_after_sat            true
% 14.52/2.50  --bmc1_ucm_expand_neg_assumptions       false
% 14.52/2.50  --bmc1_ucm_layered_model                none
% 14.52/2.50  --bmc1_ucm_max_lemma_size               10
% 14.52/2.50  
% 14.52/2.50  ------ AIG Options
% 14.52/2.50  
% 14.52/2.50  --aig_mode                              false
% 14.52/2.50  
% 14.52/2.50  ------ Instantiation Options
% 14.52/2.50  
% 14.52/2.50  --instantiation_flag                    true
% 14.52/2.50  --inst_sos_flag                         false
% 14.52/2.50  --inst_sos_phase                        true
% 14.52/2.50  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 14.52/2.50  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 14.52/2.50  --inst_lit_sel_side                     none
% 14.52/2.50  --inst_solver_per_active                1400
% 14.52/2.50  --inst_solver_calls_frac                1.
% 14.52/2.50  --inst_passive_queue_type               priority_queues
% 14.52/2.50  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 14.52/2.50  --inst_passive_queues_freq              [25;2]
% 14.52/2.50  --inst_dismatching                      true
% 14.52/2.50  --inst_eager_unprocessed_to_passive     true
% 14.52/2.50  --inst_prop_sim_given                   true
% 14.52/2.50  --inst_prop_sim_new                     false
% 14.52/2.50  --inst_subs_new                         false
% 14.52/2.50  --inst_eq_res_simp                      false
% 14.52/2.50  --inst_subs_given                       false
% 14.52/2.50  --inst_orphan_elimination               true
% 14.52/2.50  --inst_learning_loop_flag               true
% 14.52/2.50  --inst_learning_start                   3000
% 14.52/2.50  --inst_learning_factor                  2
% 14.52/2.50  --inst_start_prop_sim_after_learn       3
% 14.52/2.50  --inst_sel_renew                        solver
% 14.52/2.50  --inst_lit_activity_flag                true
% 14.52/2.50  --inst_restr_to_given                   false
% 14.52/2.50  --inst_activity_threshold               500
% 14.52/2.50  --inst_out_proof                        true
% 14.52/2.50  
% 14.52/2.50  ------ Resolution Options
% 14.52/2.50  
% 14.52/2.50  --resolution_flag                       false
% 14.52/2.50  --res_lit_sel                           adaptive
% 14.52/2.50  --res_lit_sel_side                      none
% 14.52/2.50  --res_ordering                          kbo
% 14.52/2.50  --res_to_prop_solver                    active
% 14.52/2.50  --res_prop_simpl_new                    false
% 14.52/2.50  --res_prop_simpl_given                  true
% 14.52/2.50  --res_passive_queue_type                priority_queues
% 14.52/2.50  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 14.52/2.50  --res_passive_queues_freq               [15;5]
% 14.52/2.50  --res_forward_subs                      full
% 14.52/2.50  --res_backward_subs                     full
% 14.52/2.50  --res_forward_subs_resolution           true
% 14.52/2.50  --res_backward_subs_resolution          true
% 14.52/2.50  --res_orphan_elimination                true
% 14.52/2.50  --res_time_limit                        2.
% 14.52/2.50  --res_out_proof                         true
% 14.52/2.50  
% 14.52/2.50  ------ Superposition Options
% 14.52/2.50  
% 14.52/2.50  --superposition_flag                    true
% 14.52/2.50  --sup_passive_queue_type                priority_queues
% 14.52/2.50  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 14.52/2.50  --sup_passive_queues_freq               [8;1;4]
% 14.52/2.50  --demod_completeness_check              fast
% 14.52/2.50  --demod_use_ground                      true
% 14.52/2.50  --sup_to_prop_solver                    passive
% 14.52/2.50  --sup_prop_simpl_new                    true
% 14.52/2.50  --sup_prop_simpl_given                  true
% 14.52/2.50  --sup_fun_splitting                     false
% 14.52/2.50  --sup_smt_interval                      50000
% 14.52/2.50  
% 14.52/2.50  ------ Superposition Simplification Setup
% 14.52/2.50  
% 14.52/2.50  --sup_indices_passive                   []
% 14.52/2.50  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 14.52/2.50  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 14.52/2.50  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 14.52/2.50  --sup_full_triv                         [TrivRules;PropSubs]
% 14.52/2.50  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 14.52/2.50  --sup_full_bw                           [BwDemod]
% 14.52/2.50  --sup_immed_triv                        [TrivRules]
% 14.52/2.50  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 14.52/2.50  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 14.52/2.50  --sup_immed_bw_main                     []
% 14.52/2.50  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 14.52/2.50  --sup_input_triv                        [Unflattening;TrivRules]
% 14.52/2.50  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 14.52/2.50  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 14.52/2.50  
% 14.52/2.50  ------ Combination Options
% 14.52/2.50  
% 14.52/2.50  --comb_res_mult                         3
% 14.52/2.50  --comb_sup_mult                         2
% 14.52/2.50  --comb_inst_mult                        10
% 14.52/2.50  
% 14.52/2.50  ------ Debug Options
% 14.52/2.50  
% 14.52/2.50  --dbg_backtrace                         false
% 14.52/2.50  --dbg_dump_prop_clauses                 false
% 14.52/2.50  --dbg_dump_prop_clauses_file            -
% 14.52/2.50  --dbg_out_stat                          false
% 14.52/2.50  
% 14.52/2.50  
% 14.52/2.50  
% 14.52/2.50  
% 14.52/2.50  ------ Proving...
% 14.52/2.50  
% 14.52/2.50  
% 14.52/2.50  % SZS status Theorem for theBenchmark.p
% 14.52/2.50  
% 14.52/2.50  % SZS output start CNFRefutation for theBenchmark.p
% 14.52/2.50  
% 14.52/2.50  fof(f8,axiom,(
% 14.52/2.50    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f56,plain,(
% 14.52/2.50    ( ! [X0] : (k5_xboole_0(X0,X0) = k1_xboole_0) )),
% 14.52/2.50    inference(cnf_transformation,[],[f8])).
% 14.52/2.50  
% 14.52/2.50  fof(f7,axiom,(
% 14.52/2.50    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f55,plain,(
% 14.52/2.50    ( ! [X2,X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f7])).
% 14.52/2.50  
% 14.52/2.50  fof(f6,axiom,(
% 14.52/2.50    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f54,plain,(
% 14.52/2.50    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 14.52/2.50    inference(cnf_transformation,[],[f6])).
% 14.52/2.50  
% 14.52/2.50  fof(f1,axiom,(
% 14.52/2.50    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f42,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f1])).
% 14.52/2.50  
% 14.52/2.50  fof(f21,conjecture,(
% 14.52/2.50    ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0 <=> r2_hidden(X0,X1))),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f22,negated_conjecture,(
% 14.52/2.50    ~! [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0 <=> r2_hidden(X0,X1))),
% 14.52/2.50    inference(negated_conjecture,[],[f21])).
% 14.52/2.50  
% 14.52/2.50  fof(f26,plain,(
% 14.52/2.50    ? [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0 <~> r2_hidden(X0,X1))),
% 14.52/2.50    inference(ennf_transformation,[],[f22])).
% 14.52/2.50  
% 14.52/2.50  fof(f39,plain,(
% 14.52/2.50    ? [X0,X1] : ((~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_xboole_0) & (r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0))),
% 14.52/2.50    inference(nnf_transformation,[],[f26])).
% 14.52/2.50  
% 14.52/2.50  fof(f40,plain,(
% 14.52/2.50    ? [X0,X1] : ((~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_xboole_0) & (r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) = k1_xboole_0)) => ((~r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) != k1_xboole_0) & (r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) = k1_xboole_0))),
% 14.52/2.50    introduced(choice_axiom,[])).
% 14.52/2.50  
% 14.52/2.50  fof(f41,plain,(
% 14.52/2.50    (~r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) != k1_xboole_0) & (r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) = k1_xboole_0)),
% 14.52/2.50    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f39,f40])).
% 14.52/2.50  
% 14.52/2.50  fof(f76,plain,(
% 14.52/2.50    r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) = k1_xboole_0),
% 14.52/2.50    inference(cnf_transformation,[],[f41])).
% 14.52/2.50  
% 14.52/2.50  fof(f4,axiom,(
% 14.52/2.50    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f52,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f4])).
% 14.52/2.50  
% 14.52/2.50  fof(f9,axiom,(
% 14.52/2.50    ! [X0,X1] : k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f57,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k3_xboole_0(X0,X1)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f9])).
% 14.52/2.50  
% 14.52/2.50  fof(f78,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) = k4_xboole_0(X0,X1)) )),
% 14.52/2.50    inference(definition_unfolding,[],[f52,f57])).
% 14.52/2.50  
% 14.52/2.50  fof(f12,axiom,(
% 14.52/2.50    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f67,plain,(
% 14.52/2.50    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f12])).
% 14.52/2.50  
% 14.52/2.50  fof(f13,axiom,(
% 14.52/2.50    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f68,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f13])).
% 14.52/2.50  
% 14.52/2.50  fof(f14,axiom,(
% 14.52/2.50    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f69,plain,(
% 14.52/2.50    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f14])).
% 14.52/2.50  
% 14.52/2.50  fof(f15,axiom,(
% 14.52/2.50    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f70,plain,(
% 14.52/2.50    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f15])).
% 14.52/2.50  
% 14.52/2.50  fof(f16,axiom,(
% 14.52/2.50    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f71,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f16])).
% 14.52/2.50  
% 14.52/2.50  fof(f17,axiom,(
% 14.52/2.50    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f72,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f17])).
% 14.52/2.50  
% 14.52/2.50  fof(f18,axiom,(
% 14.52/2.50    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f73,plain,(
% 14.52/2.50    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f18])).
% 14.52/2.50  
% 14.52/2.50  fof(f79,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 14.52/2.50    inference(definition_unfolding,[],[f72,f73])).
% 14.52/2.50  
% 14.52/2.50  fof(f80,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 14.52/2.50    inference(definition_unfolding,[],[f71,f79])).
% 14.52/2.50  
% 14.52/2.50  fof(f81,plain,(
% 14.52/2.50    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 14.52/2.50    inference(definition_unfolding,[],[f70,f80])).
% 14.52/2.50  
% 14.52/2.50  fof(f82,plain,(
% 14.52/2.50    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 14.52/2.50    inference(definition_unfolding,[],[f69,f81])).
% 14.52/2.50  
% 14.52/2.50  fof(f83,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 14.52/2.50    inference(definition_unfolding,[],[f68,f82])).
% 14.52/2.50  
% 14.52/2.50  fof(f84,plain,(
% 14.52/2.50    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 14.52/2.50    inference(definition_unfolding,[],[f67,f83])).
% 14.52/2.50  
% 14.52/2.50  fof(f103,plain,(
% 14.52/2.50    r2_hidden(sK2,sK3) | k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3))) = k1_xboole_0),
% 14.52/2.50    inference(definition_unfolding,[],[f76,f78,f84])).
% 14.52/2.50  
% 14.52/2.50  fof(f19,axiom,(
% 14.52/2.50    ! [X0,X1] : (r2_hidden(X0,X1) => k2_xboole_0(k1_tarski(X0),X1) = X1)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f25,plain,(
% 14.52/2.50    ! [X0,X1] : (k2_xboole_0(k1_tarski(X0),X1) = X1 | ~r2_hidden(X0,X1))),
% 14.52/2.50    inference(ennf_transformation,[],[f19])).
% 14.52/2.50  
% 14.52/2.50  fof(f74,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k2_xboole_0(k1_tarski(X0),X1) = X1 | ~r2_hidden(X0,X1)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f25])).
% 14.52/2.50  
% 14.52/2.50  fof(f100,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k2_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) = X1 | ~r2_hidden(X0,X1)) )),
% 14.52/2.50    inference(definition_unfolding,[],[f74,f84])).
% 14.52/2.50  
% 14.52/2.50  fof(f2,axiom,(
% 14.52/2.50    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f27,plain,(
% 14.52/2.50    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 14.52/2.50    inference(nnf_transformation,[],[f2])).
% 14.52/2.50  
% 14.52/2.50  fof(f28,plain,(
% 14.52/2.50    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 14.52/2.50    inference(flattening,[],[f27])).
% 14.52/2.50  
% 14.52/2.50  fof(f29,plain,(
% 14.52/2.50    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 14.52/2.50    inference(rectify,[],[f28])).
% 14.52/2.50  
% 14.52/2.50  fof(f30,plain,(
% 14.52/2.50    ! [X2,X1,X0] : (? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((~r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 14.52/2.50    introduced(choice_axiom,[])).
% 14.52/2.50  
% 14.52/2.50  fof(f31,plain,(
% 14.52/2.50    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ((r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((~r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 14.52/2.50    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f29,f30])).
% 14.52/2.50  
% 14.52/2.50  fof(f45,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0) | k4_xboole_0(X0,X1) != X2) )),
% 14.52/2.50    inference(cnf_transformation,[],[f31])).
% 14.52/2.50  
% 14.52/2.50  fof(f89,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0) | k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) != X2) )),
% 14.52/2.50    inference(definition_unfolding,[],[f45,f78])).
% 14.52/2.50  
% 14.52/2.50  fof(f104,plain,(
% 14.52/2.50    ( ! [X4,X0,X1] : (r2_hidden(X4,k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)))) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) )),
% 14.52/2.50    inference(equality_resolution,[],[f89])).
% 14.52/2.50  
% 14.52/2.50  fof(f3,axiom,(
% 14.52/2.50    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f32,plain,(
% 14.52/2.50    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 14.52/2.50    inference(nnf_transformation,[],[f3])).
% 14.52/2.50  
% 14.52/2.50  fof(f33,plain,(
% 14.52/2.50    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 14.52/2.50    inference(flattening,[],[f32])).
% 14.52/2.50  
% 14.52/2.50  fof(f49,plain,(
% 14.52/2.50    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 14.52/2.50    inference(cnf_transformation,[],[f33])).
% 14.52/2.50  
% 14.52/2.50  fof(f108,plain,(
% 14.52/2.50    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 14.52/2.50    inference(equality_resolution,[],[f49])).
% 14.52/2.50  
% 14.52/2.50  fof(f5,axiom,(
% 14.52/2.50    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f23,plain,(
% 14.52/2.50    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 14.52/2.50    inference(ennf_transformation,[],[f5])).
% 14.52/2.50  
% 14.52/2.50  fof(f53,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f23])).
% 14.52/2.50  
% 14.52/2.50  fof(f44,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 14.52/2.50    inference(cnf_transformation,[],[f31])).
% 14.52/2.50  
% 14.52/2.50  fof(f90,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) != X2) )),
% 14.52/2.50    inference(definition_unfolding,[],[f44,f78])).
% 14.52/2.50  
% 14.52/2.50  fof(f105,plain,(
% 14.52/2.50    ( ! [X4,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))))) )),
% 14.52/2.50    inference(equality_resolution,[],[f90])).
% 14.52/2.50  
% 14.52/2.50  fof(f10,axiom,(
% 14.52/2.50    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f58,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 14.52/2.50    inference(cnf_transformation,[],[f10])).
% 14.52/2.50  
% 14.52/2.50  fof(f85,plain,(
% 14.52/2.50    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X0),k2_xboole_0(X1,X0)))) = k2_xboole_0(X0,X1)) )),
% 14.52/2.50    inference(definition_unfolding,[],[f58,f78])).
% 14.52/2.50  
% 14.52/2.50  fof(f43,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 14.52/2.50    inference(cnf_transformation,[],[f31])).
% 14.52/2.50  
% 14.52/2.50  fof(f91,plain,(
% 14.52/2.50    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))) != X2) )),
% 14.52/2.50    inference(definition_unfolding,[],[f43,f78])).
% 14.52/2.50  
% 14.52/2.50  fof(f106,plain,(
% 14.52/2.50    ( ! [X4,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))))) )),
% 14.52/2.50    inference(equality_resolution,[],[f91])).
% 14.52/2.50  
% 14.52/2.50  fof(f77,plain,(
% 14.52/2.50    ~r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) != k1_xboole_0),
% 14.52/2.50    inference(cnf_transformation,[],[f41])).
% 14.52/2.50  
% 14.52/2.50  fof(f102,plain,(
% 14.52/2.50    ~r2_hidden(sK2,sK3) | k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3))) != k1_xboole_0),
% 14.52/2.50    inference(definition_unfolding,[],[f77,f78,f84])).
% 14.52/2.50  
% 14.52/2.50  fof(f11,axiom,(
% 14.52/2.50    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 14.52/2.50    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 14.52/2.50  
% 14.52/2.50  fof(f24,plain,(
% 14.52/2.50    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 14.52/2.50    inference(ennf_transformation,[],[f11])).
% 14.52/2.50  
% 14.52/2.50  fof(f34,plain,(
% 14.52/2.50    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 14.52/2.50    inference(nnf_transformation,[],[f24])).
% 14.52/2.50  
% 14.52/2.50  fof(f35,plain,(
% 14.52/2.50    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 14.52/2.50    inference(flattening,[],[f34])).
% 14.52/2.50  
% 14.52/2.50  fof(f36,plain,(
% 14.52/2.50    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 14.52/2.50    inference(rectify,[],[f35])).
% 14.52/2.50  
% 14.52/2.50  fof(f37,plain,(
% 14.52/2.50    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3))))),
% 14.52/2.50    introduced(choice_axiom,[])).
% 14.52/2.50  
% 14.52/2.50  fof(f38,plain,(
% 14.52/2.50    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 14.52/2.50    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f36,f37])).
% 14.52/2.50  
% 14.52/2.50  fof(f60,plain,(
% 14.52/2.50    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 14.52/2.50    inference(cnf_transformation,[],[f38])).
% 14.52/2.50  
% 14.52/2.50  fof(f98,plain,(
% 14.52/2.50    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3) )),
% 14.52/2.50    inference(definition_unfolding,[],[f60,f82])).
% 14.52/2.50  
% 14.52/2.50  fof(f113,plain,(
% 14.52/2.50    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2) != X3) )),
% 14.52/2.50    inference(equality_resolution,[],[f98])).
% 14.52/2.50  
% 14.52/2.50  fof(f114,plain,(
% 14.52/2.50    ( ! [X2,X5,X1] : (r2_hidden(X5,k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2))) )),
% 14.52/2.50    inference(equality_resolution,[],[f113])).
% 14.52/2.50  
% 14.52/2.50  cnf(c_14,plain,
% 14.52/2.50      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 14.52/2.50      inference(cnf_transformation,[],[f56]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_13,plain,
% 14.52/2.50      ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
% 14.52/2.50      inference(cnf_transformation,[],[f55]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1371,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_14,c_13]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_12,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 14.52/2.50      inference(cnf_transformation,[],[f54]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1,plain,
% 14.52/2.50      ( k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
% 14.52/2.50      inference(cnf_transformation,[],[f42]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1307,plain,
% 14.52/2.50      ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_12,c_1]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1381,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1 ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_1371,c_1307]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_26,negated_conjecture,
% 14.52/2.50      ( r2_hidden(sK2,sK3)
% 14.52/2.50      | k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3))) = k1_xboole_0 ),
% 14.52/2.50      inference(cnf_transformation,[],[f103]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_467,negated_conjecture,
% 14.52/2.50      ( r2_hidden(sK2,sK3)
% 14.52/2.50      | k5_xboole_0(sK3,k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)))) = k1_xboole_0 ),
% 14.52/2.50      inference(theory_normalisation,[status(thm)],[c_26,c_13,c_1]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_939,plain,
% 14.52/2.50      ( k5_xboole_0(sK3,k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)))) = k1_xboole_0
% 14.52/2.50      | r2_hidden(sK2,sK3) = iProver_top ),
% 14.52/2.50      inference(predicate_to_equality,[status(thm)],[c_467]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1832,plain,
% 14.52/2.50      ( k5_xboole_0(sK3,k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)) = k1_xboole_0
% 14.52/2.50      | r2_hidden(sK2,sK3) = iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_1381,c_939]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_23,plain,
% 14.52/2.50      ( ~ r2_hidden(X0,X1)
% 14.52/2.50      | k2_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) = X1 ),
% 14.52/2.50      inference(cnf_transformation,[],[f100]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_941,plain,
% 14.52/2.50      ( k2_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),X1) = X1
% 14.52/2.50      | r2_hidden(X0,X1) != iProver_top ),
% 14.52/2.50      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_2339,plain,
% 14.52/2.50      ( k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3) = sK3
% 14.52/2.50      | k5_xboole_0(sK3,k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)) = k1_xboole_0 ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_1832,c_941]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_3240,plain,
% 14.52/2.50      ( k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3) = k5_xboole_0(sK3,k1_xboole_0)
% 14.52/2.50      | k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3) = sK3 ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_2339,c_1381]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_3275,plain,
% 14.52/2.50      ( k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3) = sK3 ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_3240,c_12]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_5,plain,
% 14.52/2.50      ( ~ r2_hidden(X0,X1)
% 14.52/2.50      | r2_hidden(X0,X2)
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)))) ),
% 14.52/2.50      inference(cnf_transformation,[],[f104]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_471,plain,
% 14.52/2.50      ( ~ r2_hidden(X0,X1)
% 14.52/2.50      | r2_hidden(X0,X2)
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k2_xboole_0(X1,X2))))) ),
% 14.52/2.50      inference(theory_normalisation,[status(thm)],[c_5,c_13,c_1]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_955,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) != iProver_top
% 14.52/2.50      | r2_hidden(X0,X2) = iProver_top
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k2_xboole_0(X1,X2))))) = iProver_top ),
% 14.52/2.50      inference(predicate_to_equality,[status(thm)],[c_471]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1374,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(X0,X1))) = k1_xboole_0 ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_13,c_14]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1859,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = k5_xboole_0(X1,k1_xboole_0) ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_1374,c_1381]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1872,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = X1 ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_1859,c_12]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_2185,plain,
% 14.52/2.50      ( k5_xboole_0(k5_xboole_0(X0,X1),X0) = X1 ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_1872,c_1872]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1092,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(X2,k5_xboole_0(X1,X0)) ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_13,c_1]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_2585,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X0,X1),X2)) = k5_xboole_0(X2,X1) ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_2185,c_1092]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_2620,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,X2))) = k5_xboole_0(X2,X1) ),
% 14.52/2.50      inference(light_normalisation,[status(thm)],[c_2585,c_13]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_56458,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) != iProver_top
% 14.52/2.50      | r2_hidden(X0,X2) = iProver_top
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(k2_xboole_0(X1,X2),X2)) = iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_955,c_2620]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_56497,plain,
% 14.52/2.50      ( r2_hidden(X0,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(sK3,sK3)) = iProver_top
% 14.52/2.50      | r2_hidden(X0,sK3) = iProver_top ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_3275,c_56458]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_56548,plain,
% 14.52/2.50      ( r2_hidden(X0,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top
% 14.52/2.50      | r2_hidden(X0,sK3) = iProver_top
% 14.52/2.50      | r2_hidden(X0,k1_xboole_0) = iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_56497,c_14]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_56668,plain,
% 14.52/2.50      ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top
% 14.52/2.50      | r2_hidden(sK2,sK3) = iProver_top
% 14.52/2.50      | r2_hidden(sK2,k1_xboole_0) = iProver_top ),
% 14.52/2.50      inference(instantiation,[status(thm)],[c_56548]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_10,plain,
% 14.52/2.50      ( r1_tarski(X0,X0) ),
% 14.52/2.50      inference(cnf_transformation,[],[f108]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_951,plain,
% 14.52/2.50      ( r1_tarski(X0,X0) = iProver_top ),
% 14.52/2.50      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_11,plain,
% 14.52/2.50      ( ~ r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1 ),
% 14.52/2.50      inference(cnf_transformation,[],[f53]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_950,plain,
% 14.52/2.50      ( k2_xboole_0(X0,X1) = X1 | r1_tarski(X0,X1) != iProver_top ),
% 14.52/2.50      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_41092,plain,
% 14.52/2.50      ( k2_xboole_0(X0,X0) = X0 ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_951,c_950]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_6,plain,
% 14.52/2.50      ( ~ r2_hidden(X0,X1)
% 14.52/2.50      | ~ r2_hidden(X0,k5_xboole_0(X2,k5_xboole_0(k5_xboole_0(X2,X1),k2_xboole_0(X2,X1)))) ),
% 14.52/2.50      inference(cnf_transformation,[],[f105]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_470,plain,
% 14.52/2.50      ( ~ r2_hidden(X0,X1)
% 14.52/2.50      | ~ r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X2,k2_xboole_0(X2,X1))))) ),
% 14.52/2.50      inference(theory_normalisation,[status(thm)],[c_6,c_13,c_1]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_954,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) != iProver_top
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X2,k2_xboole_0(X2,X1))))) != iProver_top ),
% 14.52/2.50      inference(predicate_to_equality,[status(thm)],[c_470]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_0,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X0),k2_xboole_0(X1,X0)))) = k2_xboole_0(X0,X1) ),
% 14.52/2.50      inference(cnf_transformation,[],[f85]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_475,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(X1,k2_xboole_0(X1,X0))))) = k2_xboole_0(X0,X1) ),
% 14.52/2.50      inference(theory_normalisation,[status(thm)],[c_0,c_13,c_1]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1834,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X0,k2_xboole_0(X1,X0))) = k2_xboole_0(X0,X1) ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_1381,c_475]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1862,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X0,X1),X2))) = X2 ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_1381,c_13]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1867,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X1,k5_xboole_0(X0,k5_xboole_0(X1,X2)))) = X2 ),
% 14.52/2.50      inference(light_normalisation,[status(thm)],[c_1862,c_13]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_8602,plain,
% 14.52/2.50      ( k5_xboole_0(X0,k5_xboole_0(X0,k2_xboole_0(X0,X1))) = k2_xboole_0(X1,X0) ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_1834,c_1867]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_51734,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) != iProver_top
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(X1,k2_xboole_0(X1,X2))) != iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_954,c_8602]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_51764,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) != iProver_top
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_41092,c_51734]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_51786,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) != iProver_top
% 14.52/2.50      | r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_51764,c_14]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_51836,plain,
% 14.52/2.50      ( r2_hidden(sK2,sK2) != iProver_top
% 14.52/2.50      | r2_hidden(sK2,k1_xboole_0) != iProver_top ),
% 14.52/2.50      inference(instantiation,[status(thm)],[c_51786]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_7,plain,
% 14.52/2.50      ( r2_hidden(X0,X1)
% 14.52/2.50      | ~ r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)))) ),
% 14.52/2.50      inference(cnf_transformation,[],[f106]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_469,plain,
% 14.52/2.50      ( r2_hidden(X0,X1)
% 14.52/2.50      | ~ r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k2_xboole_0(X1,X2))))) ),
% 14.52/2.50      inference(theory_normalisation,[status(thm)],[c_7,c_13,c_1]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_953,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) = iProver_top
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k2_xboole_0(X1,X2))))) != iProver_top ),
% 14.52/2.50      inference(predicate_to_equality,[status(thm)],[c_469]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_47039,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) = iProver_top
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(k2_xboole_0(X1,X2),X2)) != iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_953,c_2620]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_47084,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) = iProver_top
% 14.52/2.50      | r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
% 14.52/2.50      inference(superposition,[status(thm)],[c_41092,c_47039]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_47092,plain,
% 14.52/2.50      ( r2_hidden(X0,X1) = iProver_top
% 14.52/2.50      | r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_47084,c_14]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_47202,plain,
% 14.52/2.50      ( r2_hidden(sK2,sK2) = iProver_top
% 14.52/2.50      | r2_hidden(sK2,k1_xboole_0) != iProver_top ),
% 14.52/2.50      inference(instantiation,[status(thm)],[c_47092]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_25,negated_conjecture,
% 14.52/2.50      ( ~ r2_hidden(sK2,sK3)
% 14.52/2.50      | k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3))) != k1_xboole_0 ),
% 14.52/2.50      inference(cnf_transformation,[],[f102]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_468,negated_conjecture,
% 14.52/2.50      ( ~ r2_hidden(sK2,sK3)
% 14.52/2.50      | k5_xboole_0(sK3,k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)))) != k1_xboole_0 ),
% 14.52/2.50      inference(theory_normalisation,[status(thm)],[c_25,c_13,c_1]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_940,plain,
% 14.52/2.50      ( k5_xboole_0(sK3,k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)))) != k1_xboole_0
% 14.52/2.50      | r2_hidden(sK2,sK3) != iProver_top ),
% 14.52/2.50      inference(predicate_to_equality,[status(thm)],[c_468]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_1833,plain,
% 14.52/2.50      ( k5_xboole_0(sK3,k2_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),sK3)) != k1_xboole_0
% 14.52/2.50      | r2_hidden(sK2,sK3) != iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_1381,c_940]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_3279,plain,
% 14.52/2.50      ( k5_xboole_0(sK3,sK3) != k1_xboole_0
% 14.52/2.50      | r2_hidden(sK2,sK3) != iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_3275,c_1833]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_3282,plain,
% 14.52/2.50      ( k1_xboole_0 != k1_xboole_0 | r2_hidden(sK2,sK3) != iProver_top ),
% 14.52/2.50      inference(demodulation,[status(thm)],[c_3279,c_14]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_3283,plain,
% 14.52/2.50      ( r2_hidden(sK2,sK3) != iProver_top ),
% 14.52/2.50      inference(equality_resolution_simp,[status(thm)],[c_3282]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_21,plain,
% 14.52/2.50      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ),
% 14.52/2.50      inference(cnf_transformation,[],[f114]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_36,plain,
% 14.52/2.50      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) = iProver_top ),
% 14.52/2.50      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(c_38,plain,
% 14.52/2.50      ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = iProver_top ),
% 14.52/2.50      inference(instantiation,[status(thm)],[c_36]) ).
% 14.52/2.50  
% 14.52/2.50  cnf(contradiction,plain,
% 14.52/2.50      ( $false ),
% 14.52/2.50      inference(minisat,
% 14.52/2.50                [status(thm)],
% 14.52/2.50                [c_56668,c_51836,c_47202,c_3283,c_38]) ).
% 14.52/2.50  
% 14.52/2.50  
% 14.52/2.50  % SZS output end CNFRefutation for theBenchmark.p
% 14.52/2.50  
% 14.52/2.50  ------                               Statistics
% 14.52/2.50  
% 14.52/2.50  ------ General
% 14.52/2.50  
% 14.52/2.50  abstr_ref_over_cycles:                  0
% 14.52/2.50  abstr_ref_under_cycles:                 0
% 14.52/2.50  gc_basic_clause_elim:                   0
% 14.52/2.50  forced_gc_time:                         0
% 14.52/2.50  parsing_time:                           0.009
% 14.52/2.50  unif_index_cands_time:                  0.
% 14.52/2.50  unif_index_add_time:                    0.
% 14.52/2.50  orderings_time:                         0.
% 14.52/2.50  out_proof_time:                         0.008
% 14.52/2.50  total_time:                             1.685
% 14.52/2.50  num_of_symbols:                         42
% 14.52/2.50  num_of_terms:                           67300
% 14.52/2.50  
% 14.52/2.50  ------ Preprocessing
% 14.52/2.50  
% 14.52/2.50  num_of_splits:                          0
% 14.52/2.50  num_of_split_atoms:                     0
% 14.52/2.50  num_of_reused_defs:                     0
% 14.52/2.50  num_eq_ax_congr_red:                    27
% 14.52/2.50  num_of_sem_filtered_clauses:            1
% 14.52/2.50  num_of_subtypes:                        0
% 14.52/2.50  monotx_restored_types:                  0
% 14.52/2.50  sat_num_of_epr_types:                   0
% 14.52/2.50  sat_num_of_non_cyclic_types:            0
% 14.52/2.50  sat_guarded_non_collapsed_types:        0
% 14.52/2.50  num_pure_diseq_elim:                    0
% 14.52/2.50  simp_replaced_by:                       0
% 14.52/2.50  res_preprocessed:                       119
% 14.52/2.50  prep_upred:                             0
% 14.52/2.50  prep_unflattend:                        0
% 14.52/2.50  smt_new_axioms:                         0
% 14.52/2.50  pred_elim_cands:                        2
% 14.52/2.50  pred_elim:                              0
% 14.52/2.50  pred_elim_cl:                           0
% 14.52/2.50  pred_elim_cycles:                       2
% 14.52/2.50  merged_defs:                            8
% 14.52/2.50  merged_defs_ncl:                        0
% 14.52/2.50  bin_hyper_res:                          8
% 14.52/2.50  prep_cycles:                            4
% 14.52/2.50  pred_elim_time:                         0.001
% 14.52/2.50  splitting_time:                         0.
% 14.52/2.50  sem_filter_time:                        0.
% 14.52/2.50  monotx_time:                            0.
% 14.52/2.50  subtype_inf_time:                       0.
% 14.52/2.50  
% 14.52/2.50  ------ Problem properties
% 14.52/2.50  
% 14.52/2.50  clauses:                                26
% 14.52/2.50  conjectures:                            2
% 14.52/2.50  epr:                                    2
% 14.52/2.50  horn:                                   19
% 14.52/2.50  ground:                                 2
% 14.52/2.50  unary:                                  10
% 14.52/2.50  binary:                                 6
% 14.52/2.50  lits:                                   56
% 14.52/2.50  lits_eq:                                27
% 14.52/2.50  fd_pure:                                0
% 14.52/2.50  fd_pseudo:                              0
% 14.52/2.50  fd_cond:                                0
% 14.52/2.50  fd_pseudo_cond:                         8
% 14.52/2.50  ac_symbols:                             1
% 14.52/2.50  
% 14.52/2.50  ------ Propositional Solver
% 14.52/2.50  
% 14.52/2.50  prop_solver_calls:                      27
% 14.52/2.50  prop_fast_solver_calls:                 813
% 14.52/2.50  smt_solver_calls:                       0
% 14.52/2.50  smt_fast_solver_calls:                  0
% 14.52/2.50  prop_num_of_clauses:                    10293
% 14.52/2.50  prop_preprocess_simplified:             21151
% 14.52/2.50  prop_fo_subsumed:                       0
% 14.52/2.50  prop_solver_time:                       0.
% 14.52/2.50  smt_solver_time:                        0.
% 14.52/2.50  smt_fast_solver_time:                   0.
% 14.52/2.50  prop_fast_solver_time:                  0.
% 14.52/2.50  prop_unsat_core_time:                   0.
% 14.52/2.50  
% 14.52/2.50  ------ QBF
% 14.52/2.50  
% 14.52/2.50  qbf_q_res:                              0
% 14.52/2.50  qbf_num_tautologies:                    0
% 14.52/2.50  qbf_prep_cycles:                        0
% 14.52/2.50  
% 14.52/2.50  ------ BMC1
% 14.52/2.50  
% 14.52/2.50  bmc1_current_bound:                     -1
% 14.52/2.50  bmc1_last_solved_bound:                 -1
% 14.52/2.50  bmc1_unsat_core_size:                   -1
% 14.52/2.50  bmc1_unsat_core_parents_size:           -1
% 14.52/2.50  bmc1_merge_next_fun:                    0
% 14.52/2.50  bmc1_unsat_core_clauses_time:           0.
% 14.52/2.50  
% 14.52/2.50  ------ Instantiation
% 14.52/2.50  
% 14.52/2.50  inst_num_of_clauses:                    2404
% 14.52/2.50  inst_num_in_passive:                    591
% 14.52/2.50  inst_num_in_active:                     637
% 14.52/2.50  inst_num_in_unprocessed:                1176
% 14.52/2.50  inst_num_of_loops:                      760
% 14.52/2.50  inst_num_of_learning_restarts:          0
% 14.52/2.50  inst_num_moves_active_passive:          123
% 14.52/2.50  inst_lit_activity:                      0
% 14.52/2.50  inst_lit_activity_moves:                0
% 14.52/2.50  inst_num_tautologies:                   0
% 14.52/2.50  inst_num_prop_implied:                  0
% 14.52/2.50  inst_num_existing_simplified:           0
% 14.52/2.50  inst_num_eq_res_simplified:             0
% 14.52/2.50  inst_num_child_elim:                    0
% 14.52/2.50  inst_num_of_dismatching_blockings:      4273
% 14.52/2.50  inst_num_of_non_proper_insts:           2253
% 14.52/2.50  inst_num_of_duplicates:                 0
% 14.52/2.50  inst_inst_num_from_inst_to_res:         0
% 14.52/2.50  inst_dismatching_checking_time:         0.
% 14.52/2.50  
% 14.52/2.50  ------ Resolution
% 14.52/2.50  
% 14.52/2.50  res_num_of_clauses:                     0
% 14.52/2.50  res_num_in_passive:                     0
% 14.52/2.50  res_num_in_active:                      0
% 14.52/2.50  res_num_of_loops:                       123
% 14.52/2.50  res_forward_subset_subsumed:            85
% 14.52/2.50  res_backward_subset_subsumed:           0
% 14.52/2.50  res_forward_subsumed:                   0
% 14.52/2.50  res_backward_subsumed:                  0
% 14.52/2.50  res_forward_subsumption_resolution:     0
% 14.52/2.50  res_backward_subsumption_resolution:    0
% 14.52/2.50  res_clause_to_clause_subsumption:       76811
% 14.52/2.50  res_orphan_elimination:                 0
% 14.52/2.50  res_tautology_del:                      436
% 14.52/2.50  res_num_eq_res_simplified:              0
% 14.52/2.50  res_num_sel_changes:                    0
% 14.52/2.50  res_moves_from_active_to_pass:          0
% 14.52/2.50  
% 14.52/2.50  ------ Superposition
% 14.52/2.50  
% 14.52/2.50  sup_time_total:                         0.
% 14.52/2.50  sup_time_generating:                    0.
% 14.52/2.50  sup_time_sim_full:                      0.
% 14.52/2.50  sup_time_sim_immed:                     0.
% 14.52/2.50  
% 14.52/2.50  sup_num_of_clauses:                     2622
% 14.52/2.50  sup_num_in_active:                      141
% 14.52/2.50  sup_num_in_passive:                     2481
% 14.52/2.50  sup_num_of_loops:                       150
% 14.52/2.50  sup_fw_superposition:                   8541
% 14.52/2.50  sup_bw_superposition:                   10323
% 14.52/2.50  sup_immediate_simplified:               3800
% 14.52/2.50  sup_given_eliminated:                   0
% 14.52/2.50  comparisons_done:                       0
% 14.52/2.50  comparisons_avoided:                    98
% 14.52/2.50  
% 14.52/2.50  ------ Simplifications
% 14.52/2.50  
% 14.52/2.50  
% 14.52/2.50  sim_fw_subset_subsumed:                 4
% 14.52/2.50  sim_bw_subset_subsumed:                 6
% 14.52/2.50  sim_fw_subsumed:                        665
% 14.52/2.50  sim_bw_subsumed:                        6
% 14.52/2.50  sim_fw_subsumption_res:                 1
% 14.52/2.50  sim_bw_subsumption_res:                 0
% 14.52/2.50  sim_tautology_del:                      5
% 14.52/2.50  sim_eq_tautology_del:                   730
% 14.52/2.50  sim_eq_res_simp:                        1
% 14.52/2.50  sim_fw_demodulated:                     1649
% 14.52/2.50  sim_bw_demodulated:                     196
% 14.52/2.50  sim_light_normalised:                   1254
% 14.52/2.50  sim_joinable_taut:                      242
% 14.52/2.50  sim_joinable_simp:                      0
% 14.52/2.50  sim_ac_normalised:                      0
% 14.52/2.50  sim_smt_subsumption:                    0
% 14.52/2.50  
%------------------------------------------------------------------------------
