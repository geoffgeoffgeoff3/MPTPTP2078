%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:33:39 EST 2020

% Result     : Theorem 3.81s
% Output     : CNFRefutation 3.81s
% Verified   : 
% Statistics : Number of formulae       :  125 (1211 expanded)
%              Number of clauses        :   53 ( 185 expanded)
%              Number of leaves         :   19 ( 369 expanded)
%              Depth                    :   18
%              Number of atoms          :  306 (1941 expanded)
%              Number of equality atoms :  123 (1227 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   14 (   1 average)
%              Maximal term depth       :    6 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f17,conjecture,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(X2,X1)
        & r2_hidden(X0,X1) )
     => k2_xboole_0(k2_tarski(X0,X2),X1) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( r2_hidden(X2,X1)
          & r2_hidden(X0,X1) )
       => k2_xboole_0(k2_tarski(X0,X2),X1) = X1 ) ),
    inference(negated_conjecture,[],[f17])).

fof(f22,plain,(
    ? [X0,X1,X2] :
      ( k2_xboole_0(k2_tarski(X0,X2),X1) != X1
      & r2_hidden(X2,X1)
      & r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f23,plain,(
    ? [X0,X1,X2] :
      ( k2_xboole_0(k2_tarski(X0,X2),X1) != X1
      & r2_hidden(X2,X1)
      & r2_hidden(X0,X1) ) ),
    inference(flattening,[],[f22])).

fof(f36,plain,
    ( ? [X0,X1,X2] :
        ( k2_xboole_0(k2_tarski(X0,X2),X1) != X1
        & r2_hidden(X2,X1)
        & r2_hidden(X0,X1) )
   => ( k2_xboole_0(k2_tarski(sK2,sK4),sK3) != sK3
      & r2_hidden(sK4,sK3)
      & r2_hidden(sK2,sK3) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,
    ( k2_xboole_0(k2_tarski(sK2,sK4),sK3) != sK3
    & r2_hidden(sK4,sK3)
    & r2_hidden(sK2,sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f23,f36])).

fof(f67,plain,(
    r2_hidden(sK4,sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f66,plain,(
    r2_hidden(sK2,sK3) ),
    inference(cnf_transformation,[],[f37])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_tarski(X0,X1),X2)
    <=> ( r2_hidden(X1,X2)
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(k2_tarski(X0,X1),X2)
        | ~ r2_hidden(X1,X2)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X2)
          & r2_hidden(X0,X2) )
        | ~ r1_tarski(k2_tarski(X0,X1),X2) ) ) ),
    inference(nnf_transformation,[],[f16])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(k2_tarski(X0,X1),X2)
        | ~ r2_hidden(X1,X2)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X2)
          & r2_hidden(X0,X2) )
        | ~ r1_tarski(k2_tarski(X0,X1),X2) ) ) ),
    inference(flattening,[],[f34])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k2_tarski(X0,X1),X2)
      | ~ r2_hidden(X1,X2)
      | ~ r2_hidden(X0,X2) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f12,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f12])).

fof(f13,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f13])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f14])).

fof(f70,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f60,f61])).

fof(f71,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f59,f70])).

fof(f84,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(k3_enumset1(X0,X0,X0,X0,X1),X2)
      | ~ r2_hidden(X1,X2)
      | ~ r2_hidden(X0,X2) ) ),
    inference(definition_unfolding,[],[f65,f71])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f53,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f15,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f15])).

fof(f10,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f10])).

fof(f5,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f69,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f57,f51])).

fof(f83,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f62,f69,f71])).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
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

fof(f20,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f29,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f29])).

fof(f45,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK1(X0,X1),X0)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f11,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0) ),
    inference(cnf_transformation,[],[f11])).

fof(f82,plain,(
    ! [X0,X1] : k3_enumset1(X0,X0,X0,X0,X1) = k3_enumset1(X1,X1,X1,X1,X0) ),
    inference(definition_unfolding,[],[f58,f71,f71])).

fof(f6,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f78,plain,(
    ! [X0] : k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0))) = X0 ),
    inference(definition_unfolding,[],[f52,f69])).

fof(f8,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f8])).

fof(f79,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0))) ),
    inference(definition_unfolding,[],[f54,f69,f69,f51])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( ~ r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
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

fof(f25,plain,(
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
    inference(flattening,[],[f24])).

fof(f26,plain,(
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
    inference(rectify,[],[f25])).

fof(f27,plain,(
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

fof(f28,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f26,f27])).

fof(f40,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f76,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f40,f51])).

fof(f89,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k5_xboole_0(X0,k3_xboole_0(X0,X1))) ) ),
    inference(equality_resolution,[],[f76])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( r1_xboole_0(X0,X1)
        | k4_xboole_0(X0,X1) != X0 )
      & ( k4_xboole_0(X0,X1) = X0
        | ~ r1_xboole_0(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f9])).

fof(f55,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f81,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0
      | ~ r1_xboole_0(X0,X1) ) ),
    inference(definition_unfolding,[],[f55,f51])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X0,X1) = X2
      | r2_hidden(sK0(X0,X1,X2),X0)
      | r2_hidden(sK0(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2
      | r2_hidden(sK0(X0,X1,X2),X0)
      | r2_hidden(sK0(X0,X1,X2),X2) ) ),
    inference(definition_unfolding,[],[f42,f51])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f31])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f32])).

fof(f91,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f49])).

fof(f39,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f77,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f39,f51])).

fof(f90,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k5_xboole_0(X0,k3_xboole_0(X0,X1))) ) ),
    inference(equality_resolution,[],[f77])).

fof(f68,plain,(
    k2_xboole_0(k2_tarski(sK2,sK4),sK3) != sK3 ),
    inference(cnf_transformation,[],[f37])).

fof(f87,plain,(
    k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK4),k5_xboole_0(sK3,k3_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4)))) != sK3 ),
    inference(definition_unfolding,[],[f68,f69,f71])).

cnf(c_24,negated_conjecture,
    ( r2_hidden(sK4,sK3) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1042,plain,
    ( r2_hidden(sK4,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_25,negated_conjecture,
    ( r2_hidden(sK2,sK3) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1041,plain,
    ( r2_hidden(sK2,sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_20,plain,
    ( r1_tarski(k3_enumset1(X0,X0,X0,X0,X1),X2)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X0,X2) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_1045,plain,
    ( r1_tarski(k3_enumset1(X0,X0,X0,X0,X1),X2) = iProver_top
    | r2_hidden(X0,X2) != iProver_top
    | r2_hidden(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_14,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1048,plain,
    ( k3_xboole_0(X0,X1) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3355,plain,
    ( k3_xboole_0(k3_enumset1(X0,X0,X0,X0,X1),X2) = k3_enumset1(X0,X0,X0,X0,X1)
    | r2_hidden(X1,X2) != iProver_top
    | r2_hidden(X0,X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1045,c_1048])).

cnf(c_10606,plain,
    ( k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,X0),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,X0)
    | r2_hidden(X0,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1041,c_3355])).

cnf(c_13034,plain,
    ( k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK4),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK4) ),
    inference(superposition,[status(thm)],[c_1042,c_10606])).

cnf(c_19,plain,
    ( k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_13287,plain,
    ( k5_xboole_0(sK3,k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK4),k3_enumset1(sK2,sK2,sK2,sK2,sK4))) = k3_tarski(k3_enumset1(sK3,sK3,sK3,sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4))) ),
    inference(superposition,[status(thm)],[c_13034,c_19])).

cnf(c_9,plain,
    ( r1_xboole_0(X0,X1)
    | r2_hidden(sK1(X0,X1),X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1051,plain,
    ( r1_xboole_0(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_18,plain,
    ( k3_enumset1(X0,X0,X0,X0,X1) = k3_enumset1(X1,X1,X1,X1,X0) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_1488,plain,
    ( k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)) = k5_xboole_0(X1,k5_xboole_0(X0,k3_xboole_0(X0,X1))) ),
    inference(superposition,[status(thm)],[c_18,c_19])).

cnf(c_13,plain,
    ( k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0))) = X0 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1494,plain,
    ( k3_tarski(k3_enumset1(X0,X0,X0,X0,k1_xboole_0)) = X0 ),
    inference(superposition,[status(thm)],[c_19,c_13])).

cnf(c_2259,plain,
    ( k5_xboole_0(k1_xboole_0,k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0))) = X0 ),
    inference(superposition,[status(thm)],[c_1488,c_1494])).

cnf(c_15,plain,
    ( k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0))) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_2387,plain,
    ( k5_xboole_0(k1_xboole_0,k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0))) = k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) ),
    inference(superposition,[status(thm)],[c_2259,c_15])).

cnf(c_2389,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0 ),
    inference(light_normalisation,[status(thm)],[c_2387,c_2259])).

cnf(c_2391,plain,
    ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(demodulation,[status(thm)],[c_2389,c_2259])).

cnf(c_2661,plain,
    ( k5_xboole_0(X0,k3_xboole_0(k1_xboole_0,X0)) = X0 ),
    inference(demodulation,[status(thm)],[c_2391,c_13])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X2,X1))) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_1055,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X2,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_5485,plain,
    ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2661,c_1055])).

cnf(c_5884,plain,
    ( r1_xboole_0(k1_xboole_0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1051,c_5485])).

cnf(c_17,plain,
    ( ~ r1_xboole_0(X0,X1)
    | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1046,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0
    | r1_xboole_0(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_5893,plain,
    ( k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5884,c_1046])).

cnf(c_6011,plain,
    ( k3_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_5893,c_2391])).

cnf(c_6022,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(demodulation,[status(thm)],[c_6011,c_2661])).

cnf(c_3,plain,
    ( r2_hidden(sK0(X0,X1,X2),X0)
    | r2_hidden(sK0(X0,X1,X2),X2)
    | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1057,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2
    | r2_hidden(sK0(X0,X1,X2),X0) = iProver_top
    | r2_hidden(sK0(X0,X1,X2),X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_7960,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0
    | r2_hidden(sK0(X0,X1,k1_xboole_0),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1057,c_5485])).

cnf(c_11,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1049,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1302,plain,
    ( k3_xboole_0(X0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_1049,c_1048])).

cnf(c_5489,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1302,c_1055])).

cnf(c_6,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,X2))) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_1054,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,X2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_4288,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1302,c_1054])).

cnf(c_6774,plain,
    ( r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5489,c_4288])).

cnf(c_9841,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X0),k3_xboole_0(k5_xboole_0(X0,X0),X1)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_7960,c_6774])).

cnf(c_6782,plain,
    ( r1_xboole_0(k5_xboole_0(X0,X0),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1051,c_6774])).

cnf(c_7244,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X0),k3_xboole_0(k5_xboole_0(X0,X0),X1)) = k5_xboole_0(X0,X0) ),
    inference(superposition,[status(thm)],[c_6782,c_1046])).

cnf(c_9961,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_9841,c_7244])).

cnf(c_13340,plain,
    ( k3_tarski(k3_enumset1(sK3,sK3,sK3,sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4))) = sK3 ),
    inference(demodulation,[status(thm)],[c_13287,c_6022,c_9961])).

cnf(c_23,negated_conjecture,
    ( k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK4),k5_xboole_0(sK3,k3_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4)))) != sK3 ),
    inference(cnf_transformation,[],[f87])).

cnf(c_2246,plain,
    ( k3_tarski(k3_enumset1(sK3,sK3,sK3,sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4))) != sK3 ),
    inference(demodulation,[status(thm)],[c_1488,c_23])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_13340,c_2246])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n005.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:28:47 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.81/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.81/0.99  
% 3.81/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.81/0.99  
% 3.81/0.99  ------  iProver source info
% 3.81/0.99  
% 3.81/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.81/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.81/0.99  git: non_committed_changes: false
% 3.81/0.99  git: last_make_outside_of_git: false
% 3.81/0.99  
% 3.81/0.99  ------ 
% 3.81/0.99  
% 3.81/0.99  ------ Input Options
% 3.81/0.99  
% 3.81/0.99  --out_options                           all
% 3.81/0.99  --tptp_safe_out                         true
% 3.81/0.99  --problem_path                          ""
% 3.81/0.99  --include_path                          ""
% 3.81/0.99  --clausifier                            res/vclausify_rel
% 3.81/0.99  --clausifier_options                    --mode clausify
% 3.81/0.99  --stdin                                 false
% 3.81/0.99  --stats_out                             all
% 3.81/0.99  
% 3.81/0.99  ------ General Options
% 3.81/0.99  
% 3.81/0.99  --fof                                   false
% 3.81/0.99  --time_out_real                         305.
% 3.81/0.99  --time_out_virtual                      -1.
% 3.81/0.99  --symbol_type_check                     false
% 3.81/0.99  --clausify_out                          false
% 3.81/0.99  --sig_cnt_out                           false
% 3.81/0.99  --trig_cnt_out                          false
% 3.81/0.99  --trig_cnt_out_tolerance                1.
% 3.81/0.99  --trig_cnt_out_sk_spl                   false
% 3.81/0.99  --abstr_cl_out                          false
% 3.81/0.99  
% 3.81/0.99  ------ Global Options
% 3.81/0.99  
% 3.81/0.99  --schedule                              default
% 3.81/0.99  --add_important_lit                     false
% 3.81/0.99  --prop_solver_per_cl                    1000
% 3.81/0.99  --min_unsat_core                        false
% 3.81/0.99  --soft_assumptions                      false
% 3.81/0.99  --soft_lemma_size                       3
% 3.81/0.99  --prop_impl_unit_size                   0
% 3.81/0.99  --prop_impl_unit                        []
% 3.81/0.99  --share_sel_clauses                     true
% 3.81/0.99  --reset_solvers                         false
% 3.81/0.99  --bc_imp_inh                            [conj_cone]
% 3.81/0.99  --conj_cone_tolerance                   3.
% 3.81/0.99  --extra_neg_conj                        none
% 3.81/0.99  --large_theory_mode                     true
% 3.81/0.99  --prolific_symb_bound                   200
% 3.81/0.99  --lt_threshold                          2000
% 3.81/0.99  --clause_weak_htbl                      true
% 3.81/0.99  --gc_record_bc_elim                     false
% 3.81/0.99  
% 3.81/0.99  ------ Preprocessing Options
% 3.81/0.99  
% 3.81/0.99  --preprocessing_flag                    true
% 3.81/0.99  --time_out_prep_mult                    0.1
% 3.81/0.99  --splitting_mode                        input
% 3.81/0.99  --splitting_grd                         true
% 3.81/0.99  --splitting_cvd                         false
% 3.81/0.99  --splitting_cvd_svl                     false
% 3.81/0.99  --splitting_nvd                         32
% 3.81/0.99  --sub_typing                            true
% 3.81/0.99  --prep_gs_sim                           true
% 3.81/0.99  --prep_unflatten                        true
% 3.81/0.99  --prep_res_sim                          true
% 3.81/0.99  --prep_upred                            true
% 3.81/0.99  --prep_sem_filter                       exhaustive
% 3.81/0.99  --prep_sem_filter_out                   false
% 3.81/0.99  --pred_elim                             true
% 3.81/0.99  --res_sim_input                         true
% 3.81/0.99  --eq_ax_congr_red                       true
% 3.81/0.99  --pure_diseq_elim                       true
% 3.81/0.99  --brand_transform                       false
% 3.81/0.99  --non_eq_to_eq                          false
% 3.81/0.99  --prep_def_merge                        true
% 3.81/0.99  --prep_def_merge_prop_impl              false
% 3.81/0.99  --prep_def_merge_mbd                    true
% 3.81/0.99  --prep_def_merge_tr_red                 false
% 3.81/0.99  --prep_def_merge_tr_cl                  false
% 3.81/0.99  --smt_preprocessing                     true
% 3.81/0.99  --smt_ac_axioms                         fast
% 3.81/0.99  --preprocessed_out                      false
% 3.81/0.99  --preprocessed_stats                    false
% 3.81/0.99  
% 3.81/0.99  ------ Abstraction refinement Options
% 3.81/0.99  
% 3.81/0.99  --abstr_ref                             []
% 3.81/0.99  --abstr_ref_prep                        false
% 3.81/0.99  --abstr_ref_until_sat                   false
% 3.81/0.99  --abstr_ref_sig_restrict                funpre
% 3.81/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.81/0.99  --abstr_ref_under                       []
% 3.81/0.99  
% 3.81/0.99  ------ SAT Options
% 3.81/0.99  
% 3.81/0.99  --sat_mode                              false
% 3.81/0.99  --sat_fm_restart_options                ""
% 3.81/0.99  --sat_gr_def                            false
% 3.81/0.99  --sat_epr_types                         true
% 3.81/0.99  --sat_non_cyclic_types                  false
% 3.81/0.99  --sat_finite_models                     false
% 3.81/0.99  --sat_fm_lemmas                         false
% 3.81/0.99  --sat_fm_prep                           false
% 3.81/0.99  --sat_fm_uc_incr                        true
% 3.81/0.99  --sat_out_model                         small
% 3.81/0.99  --sat_out_clauses                       false
% 3.81/0.99  
% 3.81/0.99  ------ QBF Options
% 3.81/0.99  
% 3.81/0.99  --qbf_mode                              false
% 3.81/0.99  --qbf_elim_univ                         false
% 3.81/0.99  --qbf_dom_inst                          none
% 3.81/0.99  --qbf_dom_pre_inst                      false
% 3.81/0.99  --qbf_sk_in                             false
% 3.81/0.99  --qbf_pred_elim                         true
% 3.81/0.99  --qbf_split                             512
% 3.81/0.99  
% 3.81/0.99  ------ BMC1 Options
% 3.81/0.99  
% 3.81/0.99  --bmc1_incremental                      false
% 3.81/0.99  --bmc1_axioms                           reachable_all
% 3.81/0.99  --bmc1_min_bound                        0
% 3.81/0.99  --bmc1_max_bound                        -1
% 3.81/0.99  --bmc1_max_bound_default                -1
% 3.81/0.99  --bmc1_symbol_reachability              true
% 3.81/0.99  --bmc1_property_lemmas                  false
% 3.81/0.99  --bmc1_k_induction                      false
% 3.81/0.99  --bmc1_non_equiv_states                 false
% 3.81/0.99  --bmc1_deadlock                         false
% 3.81/0.99  --bmc1_ucm                              false
% 3.81/0.99  --bmc1_add_unsat_core                   none
% 3.81/0.99  --bmc1_unsat_core_children              false
% 3.81/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.81/0.99  --bmc1_out_stat                         full
% 3.81/0.99  --bmc1_ground_init                      false
% 3.81/0.99  --bmc1_pre_inst_next_state              false
% 3.81/0.99  --bmc1_pre_inst_state                   false
% 3.81/0.99  --bmc1_pre_inst_reach_state             false
% 3.81/0.99  --bmc1_out_unsat_core                   false
% 3.81/0.99  --bmc1_aig_witness_out                  false
% 3.81/0.99  --bmc1_verbose                          false
% 3.81/0.99  --bmc1_dump_clauses_tptp                false
% 3.81/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.81/0.99  --bmc1_dump_file                        -
% 3.81/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.81/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.81/0.99  --bmc1_ucm_extend_mode                  1
% 3.81/0.99  --bmc1_ucm_init_mode                    2
% 3.81/0.99  --bmc1_ucm_cone_mode                    none
% 3.81/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.81/0.99  --bmc1_ucm_relax_model                  4
% 3.81/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.81/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.81/0.99  --bmc1_ucm_layered_model                none
% 3.81/0.99  --bmc1_ucm_max_lemma_size               10
% 3.81/0.99  
% 3.81/0.99  ------ AIG Options
% 3.81/0.99  
% 3.81/0.99  --aig_mode                              false
% 3.81/0.99  
% 3.81/0.99  ------ Instantiation Options
% 3.81/0.99  
% 3.81/0.99  --instantiation_flag                    true
% 3.81/0.99  --inst_sos_flag                         false
% 3.81/0.99  --inst_sos_phase                        true
% 3.81/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.81/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.81/0.99  --inst_lit_sel_side                     num_symb
% 3.81/0.99  --inst_solver_per_active                1400
% 3.81/0.99  --inst_solver_calls_frac                1.
% 3.81/0.99  --inst_passive_queue_type               priority_queues
% 3.81/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.81/0.99  --inst_passive_queues_freq              [25;2]
% 3.81/0.99  --inst_dismatching                      true
% 3.81/0.99  --inst_eager_unprocessed_to_passive     true
% 3.81/0.99  --inst_prop_sim_given                   true
% 3.81/0.99  --inst_prop_sim_new                     false
% 3.81/0.99  --inst_subs_new                         false
% 3.81/0.99  --inst_eq_res_simp                      false
% 3.81/0.99  --inst_subs_given                       false
% 3.81/0.99  --inst_orphan_elimination               true
% 3.81/0.99  --inst_learning_loop_flag               true
% 3.81/0.99  --inst_learning_start                   3000
% 3.81/0.99  --inst_learning_factor                  2
% 3.81/0.99  --inst_start_prop_sim_after_learn       3
% 3.81/0.99  --inst_sel_renew                        solver
% 3.81/0.99  --inst_lit_activity_flag                true
% 3.81/0.99  --inst_restr_to_given                   false
% 3.81/0.99  --inst_activity_threshold               500
% 3.81/0.99  --inst_out_proof                        true
% 3.81/0.99  
% 3.81/0.99  ------ Resolution Options
% 3.81/0.99  
% 3.81/0.99  --resolution_flag                       true
% 3.81/0.99  --res_lit_sel                           adaptive
% 3.81/0.99  --res_lit_sel_side                      none
% 3.81/0.99  --res_ordering                          kbo
% 3.81/0.99  --res_to_prop_solver                    active
% 3.81/0.99  --res_prop_simpl_new                    false
% 3.81/0.99  --res_prop_simpl_given                  true
% 3.81/0.99  --res_passive_queue_type                priority_queues
% 3.81/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.81/0.99  --res_passive_queues_freq               [15;5]
% 3.81/0.99  --res_forward_subs                      full
% 3.81/0.99  --res_backward_subs                     full
% 3.81/0.99  --res_forward_subs_resolution           true
% 3.81/0.99  --res_backward_subs_resolution          true
% 3.81/0.99  --res_orphan_elimination                true
% 3.81/0.99  --res_time_limit                        2.
% 3.81/0.99  --res_out_proof                         true
% 3.81/0.99  
% 3.81/0.99  ------ Superposition Options
% 3.81/0.99  
% 3.81/0.99  --superposition_flag                    true
% 3.81/0.99  --sup_passive_queue_type                priority_queues
% 3.81/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.81/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.81/0.99  --demod_completeness_check              fast
% 3.81/0.99  --demod_use_ground                      true
% 3.81/0.99  --sup_to_prop_solver                    passive
% 3.81/0.99  --sup_prop_simpl_new                    true
% 3.81/0.99  --sup_prop_simpl_given                  true
% 3.81/0.99  --sup_fun_splitting                     false
% 3.81/0.99  --sup_smt_interval                      50000
% 3.81/0.99  
% 3.81/0.99  ------ Superposition Simplification Setup
% 3.81/0.99  
% 3.81/0.99  --sup_indices_passive                   []
% 3.81/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.81/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.81/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.81/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.81/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.81/0.99  --sup_full_bw                           [BwDemod]
% 3.81/0.99  --sup_immed_triv                        [TrivRules]
% 3.81/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.81/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.81/0.99  --sup_immed_bw_main                     []
% 3.81/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.81/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.81/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.81/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.81/0.99  
% 3.81/0.99  ------ Combination Options
% 3.81/0.99  
% 3.81/0.99  --comb_res_mult                         3
% 3.81/0.99  --comb_sup_mult                         2
% 3.81/0.99  --comb_inst_mult                        10
% 3.81/0.99  
% 3.81/0.99  ------ Debug Options
% 3.81/0.99  
% 3.81/0.99  --dbg_backtrace                         false
% 3.81/0.99  --dbg_dump_prop_clauses                 false
% 3.81/0.99  --dbg_dump_prop_clauses_file            -
% 3.81/0.99  --dbg_out_stat                          false
% 3.81/0.99  ------ Parsing...
% 3.81/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.81/0.99  
% 3.81/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.81/0.99  
% 3.81/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.81/0.99  
% 3.81/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.81/0.99  ------ Proving...
% 3.81/0.99  ------ Problem Properties 
% 3.81/0.99  
% 3.81/0.99  
% 3.81/0.99  clauses                                 25
% 3.81/0.99  conjectures                             3
% 3.81/0.99  EPR                                     5
% 3.81/0.99  Horn                                    19
% 3.81/0.99  unary                                   9
% 3.81/0.99  binary                                  9
% 3.81/0.99  lits                                    49
% 3.81/0.99  lits eq                                 13
% 3.81/0.99  fd_pure                                 0
% 3.81/0.99  fd_pseudo                               0
% 3.81/0.99  fd_cond                                 0
% 3.81/0.99  fd_pseudo_cond                          4
% 3.81/0.99  AC symbols                              0
% 3.81/0.99  
% 3.81/0.99  ------ Schedule dynamic 5 is on 
% 3.81/0.99  
% 3.81/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.81/0.99  
% 3.81/0.99  
% 3.81/0.99  ------ 
% 3.81/0.99  Current options:
% 3.81/0.99  ------ 
% 3.81/0.99  
% 3.81/0.99  ------ Input Options
% 3.81/0.99  
% 3.81/0.99  --out_options                           all
% 3.81/0.99  --tptp_safe_out                         true
% 3.81/0.99  --problem_path                          ""
% 3.81/0.99  --include_path                          ""
% 3.81/0.99  --clausifier                            res/vclausify_rel
% 3.81/0.99  --clausifier_options                    --mode clausify
% 3.81/0.99  --stdin                                 false
% 3.81/0.99  --stats_out                             all
% 3.81/0.99  
% 3.81/0.99  ------ General Options
% 3.81/0.99  
% 3.81/0.99  --fof                                   false
% 3.81/0.99  --time_out_real                         305.
% 3.81/0.99  --time_out_virtual                      -1.
% 3.81/0.99  --symbol_type_check                     false
% 3.81/0.99  --clausify_out                          false
% 3.81/0.99  --sig_cnt_out                           false
% 3.81/0.99  --trig_cnt_out                          false
% 3.81/0.99  --trig_cnt_out_tolerance                1.
% 3.81/0.99  --trig_cnt_out_sk_spl                   false
% 3.81/0.99  --abstr_cl_out                          false
% 3.81/0.99  
% 3.81/0.99  ------ Global Options
% 3.81/0.99  
% 3.81/0.99  --schedule                              default
% 3.81/0.99  --add_important_lit                     false
% 3.81/0.99  --prop_solver_per_cl                    1000
% 3.81/0.99  --min_unsat_core                        false
% 3.81/0.99  --soft_assumptions                      false
% 3.81/0.99  --soft_lemma_size                       3
% 3.81/0.99  --prop_impl_unit_size                   0
% 3.81/0.99  --prop_impl_unit                        []
% 3.81/0.99  --share_sel_clauses                     true
% 3.81/0.99  --reset_solvers                         false
% 3.81/0.99  --bc_imp_inh                            [conj_cone]
% 3.81/0.99  --conj_cone_tolerance                   3.
% 3.81/0.99  --extra_neg_conj                        none
% 3.81/0.99  --large_theory_mode                     true
% 3.81/0.99  --prolific_symb_bound                   200
% 3.81/0.99  --lt_threshold                          2000
% 3.81/0.99  --clause_weak_htbl                      true
% 3.81/0.99  --gc_record_bc_elim                     false
% 3.81/0.99  
% 3.81/0.99  ------ Preprocessing Options
% 3.81/0.99  
% 3.81/0.99  --preprocessing_flag                    true
% 3.81/0.99  --time_out_prep_mult                    0.1
% 3.81/0.99  --splitting_mode                        input
% 3.81/0.99  --splitting_grd                         true
% 3.81/0.99  --splitting_cvd                         false
% 3.81/0.99  --splitting_cvd_svl                     false
% 3.81/0.99  --splitting_nvd                         32
% 3.81/0.99  --sub_typing                            true
% 3.81/0.99  --prep_gs_sim                           true
% 3.81/0.99  --prep_unflatten                        true
% 3.81/0.99  --prep_res_sim                          true
% 3.81/0.99  --prep_upred                            true
% 3.81/0.99  --prep_sem_filter                       exhaustive
% 3.81/0.99  --prep_sem_filter_out                   false
% 3.81/0.99  --pred_elim                             true
% 3.81/0.99  --res_sim_input                         true
% 3.81/0.99  --eq_ax_congr_red                       true
% 3.81/0.99  --pure_diseq_elim                       true
% 3.81/0.99  --brand_transform                       false
% 3.81/0.99  --non_eq_to_eq                          false
% 3.81/0.99  --prep_def_merge                        true
% 3.81/0.99  --prep_def_merge_prop_impl              false
% 3.81/0.99  --prep_def_merge_mbd                    true
% 3.81/0.99  --prep_def_merge_tr_red                 false
% 3.81/0.99  --prep_def_merge_tr_cl                  false
% 3.81/0.99  --smt_preprocessing                     true
% 3.81/0.99  --smt_ac_axioms                         fast
% 3.81/0.99  --preprocessed_out                      false
% 3.81/0.99  --preprocessed_stats                    false
% 3.81/0.99  
% 3.81/0.99  ------ Abstraction refinement Options
% 3.81/0.99  
% 3.81/0.99  --abstr_ref                             []
% 3.81/0.99  --abstr_ref_prep                        false
% 3.81/0.99  --abstr_ref_until_sat                   false
% 3.81/0.99  --abstr_ref_sig_restrict                funpre
% 3.81/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.81/0.99  --abstr_ref_under                       []
% 3.81/0.99  
% 3.81/0.99  ------ SAT Options
% 3.81/0.99  
% 3.81/0.99  --sat_mode                              false
% 3.81/0.99  --sat_fm_restart_options                ""
% 3.81/0.99  --sat_gr_def                            false
% 3.81/0.99  --sat_epr_types                         true
% 3.81/0.99  --sat_non_cyclic_types                  false
% 3.81/0.99  --sat_finite_models                     false
% 3.81/0.99  --sat_fm_lemmas                         false
% 3.81/0.99  --sat_fm_prep                           false
% 3.81/0.99  --sat_fm_uc_incr                        true
% 3.81/0.99  --sat_out_model                         small
% 3.81/0.99  --sat_out_clauses                       false
% 3.81/0.99  
% 3.81/0.99  ------ QBF Options
% 3.81/0.99  
% 3.81/0.99  --qbf_mode                              false
% 3.81/0.99  --qbf_elim_univ                         false
% 3.81/0.99  --qbf_dom_inst                          none
% 3.81/0.99  --qbf_dom_pre_inst                      false
% 3.81/0.99  --qbf_sk_in                             false
% 3.81/0.99  --qbf_pred_elim                         true
% 3.81/0.99  --qbf_split                             512
% 3.81/0.99  
% 3.81/0.99  ------ BMC1 Options
% 3.81/0.99  
% 3.81/0.99  --bmc1_incremental                      false
% 3.81/0.99  --bmc1_axioms                           reachable_all
% 3.81/0.99  --bmc1_min_bound                        0
% 3.81/0.99  --bmc1_max_bound                        -1
% 3.81/0.99  --bmc1_max_bound_default                -1
% 3.81/0.99  --bmc1_symbol_reachability              true
% 3.81/0.99  --bmc1_property_lemmas                  false
% 3.81/0.99  --bmc1_k_induction                      false
% 3.81/0.99  --bmc1_non_equiv_states                 false
% 3.81/0.99  --bmc1_deadlock                         false
% 3.81/0.99  --bmc1_ucm                              false
% 3.81/0.99  --bmc1_add_unsat_core                   none
% 3.81/0.99  --bmc1_unsat_core_children              false
% 3.81/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.81/0.99  --bmc1_out_stat                         full
% 3.81/0.99  --bmc1_ground_init                      false
% 3.81/0.99  --bmc1_pre_inst_next_state              false
% 3.81/0.99  --bmc1_pre_inst_state                   false
% 3.81/0.99  --bmc1_pre_inst_reach_state             false
% 3.81/0.99  --bmc1_out_unsat_core                   false
% 3.81/0.99  --bmc1_aig_witness_out                  false
% 3.81/0.99  --bmc1_verbose                          false
% 3.81/0.99  --bmc1_dump_clauses_tptp                false
% 3.81/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.81/0.99  --bmc1_dump_file                        -
% 3.81/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.81/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.81/0.99  --bmc1_ucm_extend_mode                  1
% 3.81/0.99  --bmc1_ucm_init_mode                    2
% 3.81/0.99  --bmc1_ucm_cone_mode                    none
% 3.81/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.81/0.99  --bmc1_ucm_relax_model                  4
% 3.81/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.81/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.81/0.99  --bmc1_ucm_layered_model                none
% 3.81/0.99  --bmc1_ucm_max_lemma_size               10
% 3.81/0.99  
% 3.81/0.99  ------ AIG Options
% 3.81/0.99  
% 3.81/0.99  --aig_mode                              false
% 3.81/0.99  
% 3.81/0.99  ------ Instantiation Options
% 3.81/0.99  
% 3.81/0.99  --instantiation_flag                    true
% 3.81/0.99  --inst_sos_flag                         false
% 3.81/0.99  --inst_sos_phase                        true
% 3.81/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.81/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.81/0.99  --inst_lit_sel_side                     none
% 3.81/0.99  --inst_solver_per_active                1400
% 3.81/0.99  --inst_solver_calls_frac                1.
% 3.81/0.99  --inst_passive_queue_type               priority_queues
% 3.81/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.81/0.99  --inst_passive_queues_freq              [25;2]
% 3.81/0.99  --inst_dismatching                      true
% 3.81/0.99  --inst_eager_unprocessed_to_passive     true
% 3.81/0.99  --inst_prop_sim_given                   true
% 3.81/0.99  --inst_prop_sim_new                     false
% 3.81/0.99  --inst_subs_new                         false
% 3.81/0.99  --inst_eq_res_simp                      false
% 3.81/0.99  --inst_subs_given                       false
% 3.81/0.99  --inst_orphan_elimination               true
% 3.81/0.99  --inst_learning_loop_flag               true
% 3.81/0.99  --inst_learning_start                   3000
% 3.81/0.99  --inst_learning_factor                  2
% 3.81/0.99  --inst_start_prop_sim_after_learn       3
% 3.81/0.99  --inst_sel_renew                        solver
% 3.81/0.99  --inst_lit_activity_flag                true
% 3.81/0.99  --inst_restr_to_given                   false
% 3.81/0.99  --inst_activity_threshold               500
% 3.81/0.99  --inst_out_proof                        true
% 3.81/0.99  
% 3.81/0.99  ------ Resolution Options
% 3.81/0.99  
% 3.81/0.99  --resolution_flag                       false
% 3.81/0.99  --res_lit_sel                           adaptive
% 3.81/0.99  --res_lit_sel_side                      none
% 3.81/0.99  --res_ordering                          kbo
% 3.81/0.99  --res_to_prop_solver                    active
% 3.81/0.99  --res_prop_simpl_new                    false
% 3.81/0.99  --res_prop_simpl_given                  true
% 3.81/0.99  --res_passive_queue_type                priority_queues
% 3.81/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.81/0.99  --res_passive_queues_freq               [15;5]
% 3.81/0.99  --res_forward_subs                      full
% 3.81/0.99  --res_backward_subs                     full
% 3.81/0.99  --res_forward_subs_resolution           true
% 3.81/0.99  --res_backward_subs_resolution          true
% 3.81/0.99  --res_orphan_elimination                true
% 3.81/0.99  --res_time_limit                        2.
% 3.81/0.99  --res_out_proof                         true
% 3.81/0.99  
% 3.81/0.99  ------ Superposition Options
% 3.81/0.99  
% 3.81/0.99  --superposition_flag                    true
% 3.81/0.99  --sup_passive_queue_type                priority_queues
% 3.81/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.81/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.81/0.99  --demod_completeness_check              fast
% 3.81/0.99  --demod_use_ground                      true
% 3.81/0.99  --sup_to_prop_solver                    passive
% 3.81/0.99  --sup_prop_simpl_new                    true
% 3.81/0.99  --sup_prop_simpl_given                  true
% 3.81/0.99  --sup_fun_splitting                     false
% 3.81/0.99  --sup_smt_interval                      50000
% 3.81/0.99  
% 3.81/0.99  ------ Superposition Simplification Setup
% 3.81/0.99  
% 3.81/0.99  --sup_indices_passive                   []
% 3.81/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.81/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.81/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.81/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.81/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.81/0.99  --sup_full_bw                           [BwDemod]
% 3.81/0.99  --sup_immed_triv                        [TrivRules]
% 3.81/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.81/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.81/0.99  --sup_immed_bw_main                     []
% 3.81/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.81/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.81/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.81/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.81/0.99  
% 3.81/0.99  ------ Combination Options
% 3.81/0.99  
% 3.81/0.99  --comb_res_mult                         3
% 3.81/0.99  --comb_sup_mult                         2
% 3.81/0.99  --comb_inst_mult                        10
% 3.81/0.99  
% 3.81/0.99  ------ Debug Options
% 3.81/0.99  
% 3.81/0.99  --dbg_backtrace                         false
% 3.81/0.99  --dbg_dump_prop_clauses                 false
% 3.81/0.99  --dbg_dump_prop_clauses_file            -
% 3.81/0.99  --dbg_out_stat                          false
% 3.81/0.99  
% 3.81/0.99  
% 3.81/0.99  
% 3.81/0.99  
% 3.81/0.99  ------ Proving...
% 3.81/0.99  
% 3.81/0.99  
% 3.81/0.99  % SZS status Theorem for theBenchmark.p
% 3.81/0.99  
% 3.81/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.81/0.99  
% 3.81/0.99  fof(f17,conjecture,(
% 3.81/0.99    ! [X0,X1,X2] : ((r2_hidden(X2,X1) & r2_hidden(X0,X1)) => k2_xboole_0(k2_tarski(X0,X2),X1) = X1)),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f18,negated_conjecture,(
% 3.81/0.99    ~! [X0,X1,X2] : ((r2_hidden(X2,X1) & r2_hidden(X0,X1)) => k2_xboole_0(k2_tarski(X0,X2),X1) = X1)),
% 3.81/0.99    inference(negated_conjecture,[],[f17])).
% 3.81/0.99  
% 3.81/0.99  fof(f22,plain,(
% 3.81/0.99    ? [X0,X1,X2] : (k2_xboole_0(k2_tarski(X0,X2),X1) != X1 & (r2_hidden(X2,X1) & r2_hidden(X0,X1)))),
% 3.81/0.99    inference(ennf_transformation,[],[f18])).
% 3.81/0.99  
% 3.81/0.99  fof(f23,plain,(
% 3.81/0.99    ? [X0,X1,X2] : (k2_xboole_0(k2_tarski(X0,X2),X1) != X1 & r2_hidden(X2,X1) & r2_hidden(X0,X1))),
% 3.81/0.99    inference(flattening,[],[f22])).
% 3.81/0.99  
% 3.81/0.99  fof(f36,plain,(
% 3.81/0.99    ? [X0,X1,X2] : (k2_xboole_0(k2_tarski(X0,X2),X1) != X1 & r2_hidden(X2,X1) & r2_hidden(X0,X1)) => (k2_xboole_0(k2_tarski(sK2,sK4),sK3) != sK3 & r2_hidden(sK4,sK3) & r2_hidden(sK2,sK3))),
% 3.81/0.99    introduced(choice_axiom,[])).
% 3.81/0.99  
% 3.81/0.99  fof(f37,plain,(
% 3.81/0.99    k2_xboole_0(k2_tarski(sK2,sK4),sK3) != sK3 & r2_hidden(sK4,sK3) & r2_hidden(sK2,sK3)),
% 3.81/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f23,f36])).
% 3.81/0.99  
% 3.81/0.99  fof(f67,plain,(
% 3.81/0.99    r2_hidden(sK4,sK3)),
% 3.81/0.99    inference(cnf_transformation,[],[f37])).
% 3.81/0.99  
% 3.81/0.99  fof(f66,plain,(
% 3.81/0.99    r2_hidden(sK2,sK3)),
% 3.81/0.99    inference(cnf_transformation,[],[f37])).
% 3.81/0.99  
% 3.81/0.99  fof(f16,axiom,(
% 3.81/0.99    ! [X0,X1,X2] : (r1_tarski(k2_tarski(X0,X1),X2) <=> (r2_hidden(X1,X2) & r2_hidden(X0,X2)))),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f34,plain,(
% 3.81/0.99    ! [X0,X1,X2] : ((r1_tarski(k2_tarski(X0,X1),X2) | (~r2_hidden(X1,X2) | ~r2_hidden(X0,X2))) & ((r2_hidden(X1,X2) & r2_hidden(X0,X2)) | ~r1_tarski(k2_tarski(X0,X1),X2)))),
% 3.81/0.99    inference(nnf_transformation,[],[f16])).
% 3.81/0.99  
% 3.81/0.99  fof(f35,plain,(
% 3.81/0.99    ! [X0,X1,X2] : ((r1_tarski(k2_tarski(X0,X1),X2) | ~r2_hidden(X1,X2) | ~r2_hidden(X0,X2)) & ((r2_hidden(X1,X2) & r2_hidden(X0,X2)) | ~r1_tarski(k2_tarski(X0,X1),X2)))),
% 3.81/0.99    inference(flattening,[],[f34])).
% 3.81/0.99  
% 3.81/0.99  fof(f65,plain,(
% 3.81/0.99    ( ! [X2,X0,X1] : (r1_tarski(k2_tarski(X0,X1),X2) | ~r2_hidden(X1,X2) | ~r2_hidden(X0,X2)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f35])).
% 3.81/0.99  
% 3.81/0.99  fof(f12,axiom,(
% 3.81/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f59,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f12])).
% 3.81/0.99  
% 3.81/0.99  fof(f13,axiom,(
% 3.81/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f60,plain,(
% 3.81/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f13])).
% 3.81/0.99  
% 3.81/0.99  fof(f14,axiom,(
% 3.81/0.99    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f61,plain,(
% 3.81/0.99    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f14])).
% 3.81/0.99  
% 3.81/0.99  fof(f70,plain,(
% 3.81/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2)) )),
% 3.81/0.99    inference(definition_unfolding,[],[f60,f61])).
% 3.81/0.99  
% 3.81/0.99  fof(f71,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1)) )),
% 3.81/0.99    inference(definition_unfolding,[],[f59,f70])).
% 3.81/0.99  
% 3.81/0.99  fof(f84,plain,(
% 3.81/0.99    ( ! [X2,X0,X1] : (r1_tarski(k3_enumset1(X0,X0,X0,X0,X1),X2) | ~r2_hidden(X1,X2) | ~r2_hidden(X0,X2)) )),
% 3.81/0.99    inference(definition_unfolding,[],[f65,f71])).
% 3.81/0.99  
% 3.81/0.99  fof(f7,axiom,(
% 3.81/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f21,plain,(
% 3.81/0.99    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 3.81/0.99    inference(ennf_transformation,[],[f7])).
% 3.81/0.99  
% 3.81/0.99  fof(f53,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f21])).
% 3.81/0.99  
% 3.81/0.99  fof(f15,axiom,(
% 3.81/0.99    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f62,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 3.81/0.99    inference(cnf_transformation,[],[f15])).
% 3.81/0.99  
% 3.81/0.99  fof(f10,axiom,(
% 3.81/0.99    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f57,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f10])).
% 3.81/0.99  
% 3.81/0.99  fof(f5,axiom,(
% 3.81/0.99    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f51,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.81/0.99    inference(cnf_transformation,[],[f5])).
% 3.81/0.99  
% 3.81/0.99  fof(f69,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1)) )),
% 3.81/0.99    inference(definition_unfolding,[],[f57,f51])).
% 3.81/0.99  
% 3.81/0.99  fof(f83,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k3_tarski(k3_enumset1(X0,X0,X0,X0,X1))) )),
% 3.81/0.99    inference(definition_unfolding,[],[f62,f69,f71])).
% 3.81/0.99  
% 3.81/0.99  fof(f3,axiom,(
% 3.81/0.99    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f19,plain,(
% 3.81/0.99    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 3.81/0.99    inference(rectify,[],[f3])).
% 3.81/0.99  
% 3.81/0.99  fof(f20,plain,(
% 3.81/0.99    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 3.81/0.99    inference(ennf_transformation,[],[f19])).
% 3.81/0.99  
% 3.81/0.99  fof(f29,plain,(
% 3.81/0.99    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 3.81/0.99    introduced(choice_axiom,[])).
% 3.81/0.99  
% 3.81/0.99  fof(f30,plain,(
% 3.81/0.99    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 3.81/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f29])).
% 3.81/0.99  
% 3.81/0.99  fof(f45,plain,(
% 3.81/0.99    ( ! [X0,X1] : (r2_hidden(sK1(X0,X1),X0) | r1_xboole_0(X0,X1)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f30])).
% 3.81/0.99  
% 3.81/0.99  fof(f11,axiom,(
% 3.81/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k2_tarski(X1,X0)),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f58,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_tarski(X1,X0)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f11])).
% 3.81/0.99  
% 3.81/0.99  fof(f82,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k3_enumset1(X0,X0,X0,X0,X1) = k3_enumset1(X1,X1,X1,X1,X0)) )),
% 3.81/0.99    inference(definition_unfolding,[],[f58,f71,f71])).
% 3.81/0.99  
% 3.81/0.99  fof(f6,axiom,(
% 3.81/0.99    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f52,plain,(
% 3.81/0.99    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 3.81/0.99    inference(cnf_transformation,[],[f6])).
% 3.81/0.99  
% 3.81/0.99  fof(f78,plain,(
% 3.81/0.99    ( ! [X0] : (k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0))) = X0) )),
% 3.81/0.99    inference(definition_unfolding,[],[f52,f69])).
% 3.81/0.99  
% 3.81/0.99  fof(f8,axiom,(
% 3.81/0.99    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f54,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 3.81/0.99    inference(cnf_transformation,[],[f8])).
% 3.81/0.99  
% 3.81/0.99  fof(f79,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0)))) )),
% 3.81/0.99    inference(definition_unfolding,[],[f54,f69,f69,f51])).
% 3.81/0.99  
% 3.81/0.99  fof(f2,axiom,(
% 3.81/0.99    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f24,plain,(
% 3.81/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.81/0.99    inference(nnf_transformation,[],[f2])).
% 3.81/0.99  
% 3.81/0.99  fof(f25,plain,(
% 3.81/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.81/0.99    inference(flattening,[],[f24])).
% 3.81/0.99  
% 3.81/0.99  fof(f26,plain,(
% 3.81/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.81/0.99    inference(rectify,[],[f25])).
% 3.81/0.99  
% 3.81/0.99  fof(f27,plain,(
% 3.81/0.99    ! [X2,X1,X0] : (? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((~r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 3.81/0.99    introduced(choice_axiom,[])).
% 3.81/0.99  
% 3.81/0.99  fof(f28,plain,(
% 3.81/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ((r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((~r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.81/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f26,f27])).
% 3.81/0.99  
% 3.81/0.99  fof(f40,plain,(
% 3.81/0.99    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 3.81/0.99    inference(cnf_transformation,[],[f28])).
% 3.81/0.99  
% 3.81/0.99  fof(f76,plain,(
% 3.81/0.99    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X2) )),
% 3.81/0.99    inference(definition_unfolding,[],[f40,f51])).
% 3.81/0.99  
% 3.81/0.99  fof(f89,plain,(
% 3.81/0.99    ( ! [X4,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,k5_xboole_0(X0,k3_xboole_0(X0,X1)))) )),
% 3.81/0.99    inference(equality_resolution,[],[f76])).
% 3.81/0.99  
% 3.81/0.99  fof(f9,axiom,(
% 3.81/0.99    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f33,plain,(
% 3.81/0.99    ! [X0,X1] : ((r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) & (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)))),
% 3.81/0.99    inference(nnf_transformation,[],[f9])).
% 3.81/0.99  
% 3.81/0.99  fof(f55,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 | ~r1_xboole_0(X0,X1)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f33])).
% 3.81/0.99  
% 3.81/0.99  fof(f81,plain,(
% 3.81/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 | ~r1_xboole_0(X0,X1)) )),
% 3.81/0.99    inference(definition_unfolding,[],[f55,f51])).
% 3.81/0.99  
% 3.81/0.99  fof(f42,plain,(
% 3.81/0.99    ( ! [X2,X0,X1] : (k4_xboole_0(X0,X1) = X2 | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)) )),
% 3.81/0.99    inference(cnf_transformation,[],[f28])).
% 3.81/0.99  
% 3.81/0.99  fof(f74,plain,(
% 3.81/0.99    ( ! [X2,X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2 | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)) )),
% 3.81/0.99    inference(definition_unfolding,[],[f42,f51])).
% 3.81/0.99  
% 3.81/0.99  fof(f4,axiom,(
% 3.81/0.99    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.81/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.81/0.99  
% 3.81/0.99  fof(f31,plain,(
% 3.81/0.99    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.81/0.99    inference(nnf_transformation,[],[f4])).
% 3.81/0.99  
% 3.81/0.99  fof(f32,plain,(
% 3.81/0.99    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.81/0.99    inference(flattening,[],[f31])).
% 3.81/0.99  
% 3.81/0.99  fof(f49,plain,(
% 3.81/0.99    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 3.81/0.99    inference(cnf_transformation,[],[f32])).
% 3.81/0.99  
% 3.81/0.99  fof(f91,plain,(
% 3.81/0.99    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.81/0.99    inference(equality_resolution,[],[f49])).
% 3.81/0.99  
% 3.81/0.99  fof(f39,plain,(
% 3.81/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 3.81/0.99    inference(cnf_transformation,[],[f28])).
% 3.81/0.99  
% 3.81/0.99  fof(f77,plain,(
% 3.81/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X2) )),
% 3.81/0.99    inference(definition_unfolding,[],[f39,f51])).
% 3.81/0.99  
% 3.81/0.99  fof(f90,plain,(
% 3.81/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,k5_xboole_0(X0,k3_xboole_0(X0,X1)))) )),
% 3.81/0.99    inference(equality_resolution,[],[f77])).
% 3.81/0.99  
% 3.81/0.99  fof(f68,plain,(
% 3.81/0.99    k2_xboole_0(k2_tarski(sK2,sK4),sK3) != sK3),
% 3.81/0.99    inference(cnf_transformation,[],[f37])).
% 3.81/0.99  
% 3.81/0.99  fof(f87,plain,(
% 3.81/0.99    k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK4),k5_xboole_0(sK3,k3_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4)))) != sK3),
% 3.81/0.99    inference(definition_unfolding,[],[f68,f69,f71])).
% 3.81/0.99  
% 3.81/0.99  cnf(c_24,negated_conjecture,
% 3.81/0.99      ( r2_hidden(sK4,sK3) ),
% 3.81/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1042,plain,
% 3.81/0.99      ( r2_hidden(sK4,sK3) = iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_25,negated_conjecture,
% 3.81/0.99      ( r2_hidden(sK2,sK3) ),
% 3.81/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1041,plain,
% 3.81/0.99      ( r2_hidden(sK2,sK3) = iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_20,plain,
% 3.81/0.99      ( r1_tarski(k3_enumset1(X0,X0,X0,X0,X1),X2)
% 3.81/0.99      | ~ r2_hidden(X1,X2)
% 3.81/0.99      | ~ r2_hidden(X0,X2) ),
% 3.81/0.99      inference(cnf_transformation,[],[f84]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1045,plain,
% 3.81/0.99      ( r1_tarski(k3_enumset1(X0,X0,X0,X0,X1),X2) = iProver_top
% 3.81/0.99      | r2_hidden(X0,X2) != iProver_top
% 3.81/0.99      | r2_hidden(X1,X2) != iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_14,plain,
% 3.81/0.99      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 3.81/0.99      inference(cnf_transformation,[],[f53]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1048,plain,
% 3.81/0.99      ( k3_xboole_0(X0,X1) = X0 | r1_tarski(X0,X1) != iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_3355,plain,
% 3.81/0.99      ( k3_xboole_0(k3_enumset1(X0,X0,X0,X0,X1),X2) = k3_enumset1(X0,X0,X0,X0,X1)
% 3.81/0.99      | r2_hidden(X1,X2) != iProver_top
% 3.81/0.99      | r2_hidden(X0,X2) != iProver_top ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1045,c_1048]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_10606,plain,
% 3.81/0.99      ( k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,X0),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,X0)
% 3.81/0.99      | r2_hidden(X0,sK3) != iProver_top ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1041,c_3355]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_13034,plain,
% 3.81/0.99      ( k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK4),sK3) = k3_enumset1(sK2,sK2,sK2,sK2,sK4) ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1042,c_10606]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_19,plain,
% 3.81/0.99      ( k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
% 3.81/0.99      inference(cnf_transformation,[],[f83]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_13287,plain,
% 3.81/0.99      ( k5_xboole_0(sK3,k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK4),k3_enumset1(sK2,sK2,sK2,sK2,sK4))) = k3_tarski(k3_enumset1(sK3,sK3,sK3,sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4))) ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_13034,c_19]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_9,plain,
% 3.81/0.99      ( r1_xboole_0(X0,X1) | r2_hidden(sK1(X0,X1),X0) ),
% 3.81/0.99      inference(cnf_transformation,[],[f45]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1051,plain,
% 3.81/0.99      ( r1_xboole_0(X0,X1) = iProver_top
% 3.81/0.99      | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_18,plain,
% 3.81/0.99      ( k3_enumset1(X0,X0,X0,X0,X1) = k3_enumset1(X1,X1,X1,X1,X0) ),
% 3.81/0.99      inference(cnf_transformation,[],[f82]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1488,plain,
% 3.81/0.99      ( k3_tarski(k3_enumset1(X0,X0,X0,X0,X1)) = k5_xboole_0(X1,k5_xboole_0(X0,k3_xboole_0(X0,X1))) ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_18,c_19]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_13,plain,
% 3.81/0.99      ( k5_xboole_0(X0,k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0))) = X0 ),
% 3.81/0.99      inference(cnf_transformation,[],[f78]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1494,plain,
% 3.81/0.99      ( k3_tarski(k3_enumset1(X0,X0,X0,X0,k1_xboole_0)) = X0 ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_19,c_13]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_2259,plain,
% 3.81/0.99      ( k5_xboole_0(k1_xboole_0,k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0))) = X0 ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1488,c_1494]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_15,plain,
% 3.81/0.99      ( k5_xboole_0(X0,k5_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),k3_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X0)),X0))) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
% 3.81/0.99      inference(cnf_transformation,[],[f79]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_2387,plain,
% 3.81/0.99      ( k5_xboole_0(k1_xboole_0,k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0))) = k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_2259,c_15]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_2389,plain,
% 3.81/0.99      ( k5_xboole_0(X0,k3_xboole_0(X0,k1_xboole_0)) = X0 ),
% 3.81/0.99      inference(light_normalisation,[status(thm)],[c_2387,c_2259]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_2391,plain,
% 3.81/0.99      ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
% 3.81/0.99      inference(demodulation,[status(thm)],[c_2389,c_2259]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_2661,plain,
% 3.81/0.99      ( k5_xboole_0(X0,k3_xboole_0(k1_xboole_0,X0)) = X0 ),
% 3.81/0.99      inference(demodulation,[status(thm)],[c_2391,c_13]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_5,plain,
% 3.81/0.99      ( ~ r2_hidden(X0,X1)
% 3.81/0.99      | ~ r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X2,X1))) ),
% 3.81/0.99      inference(cnf_transformation,[],[f89]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1055,plain,
% 3.81/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.81/0.99      | r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X2,X1))) != iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_5485,plain,
% 3.81/0.99      ( r2_hidden(X0,k1_xboole_0) != iProver_top ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_2661,c_1055]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_5884,plain,
% 3.81/0.99      ( r1_xboole_0(k1_xboole_0,X0) = iProver_top ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1051,c_5485]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_17,plain,
% 3.81/0.99      ( ~ r1_xboole_0(X0,X1) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0 ),
% 3.81/0.99      inference(cnf_transformation,[],[f81]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1046,plain,
% 3.81/0.99      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X0
% 3.81/0.99      | r1_xboole_0(X0,X1) != iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_5893,plain,
% 3.81/0.99      ( k5_xboole_0(k1_xboole_0,k3_xboole_0(k1_xboole_0,X0)) = k1_xboole_0 ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_5884,c_1046]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_6011,plain,
% 3.81/0.99      ( k3_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_5893,c_2391]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_6022,plain,
% 3.81/0.99      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.81/0.99      inference(demodulation,[status(thm)],[c_6011,c_2661]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_3,plain,
% 3.81/0.99      ( r2_hidden(sK0(X0,X1,X2),X0)
% 3.81/0.99      | r2_hidden(sK0(X0,X1,X2),X2)
% 3.81/0.99      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2 ),
% 3.81/0.99      inference(cnf_transformation,[],[f74]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1057,plain,
% 3.81/0.99      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = X2
% 3.81/0.99      | r2_hidden(sK0(X0,X1,X2),X0) = iProver_top
% 3.81/0.99      | r2_hidden(sK0(X0,X1,X2),X2) = iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_7960,plain,
% 3.81/0.99      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0
% 3.81/0.99      | r2_hidden(sK0(X0,X1,k1_xboole_0),X0) = iProver_top ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1057,c_5485]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_11,plain,
% 3.81/0.99      ( r1_tarski(X0,X0) ),
% 3.81/0.99      inference(cnf_transformation,[],[f91]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1049,plain,
% 3.81/0.99      ( r1_tarski(X0,X0) = iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1302,plain,
% 3.81/0.99      ( k3_xboole_0(X0,X0) = X0 ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1049,c_1048]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_5489,plain,
% 3.81/0.99      ( r2_hidden(X0,X1) != iProver_top
% 3.81/0.99      | r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1302,c_1055]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_6,plain,
% 3.81/0.99      ( r2_hidden(X0,X1)
% 3.81/0.99      | ~ r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,X2))) ),
% 3.81/0.99      inference(cnf_transformation,[],[f90]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_1054,plain,
% 3.81/0.99      ( r2_hidden(X0,X1) = iProver_top
% 3.81/0.99      | r2_hidden(X0,k5_xboole_0(X1,k3_xboole_0(X1,X2))) != iProver_top ),
% 3.81/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_4288,plain,
% 3.81/0.99      ( r2_hidden(X0,X1) = iProver_top
% 3.81/0.99      | r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1302,c_1054]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_6774,plain,
% 3.81/0.99      ( r2_hidden(X0,k5_xboole_0(X1,X1)) != iProver_top ),
% 3.81/0.99      inference(global_propositional_subsumption,
% 3.81/0.99                [status(thm)],
% 3.81/0.99                [c_5489,c_4288]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_9841,plain,
% 3.81/0.99      ( k5_xboole_0(k5_xboole_0(X0,X0),k3_xboole_0(k5_xboole_0(X0,X0),X1)) = k1_xboole_0 ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_7960,c_6774]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_6782,plain,
% 3.81/0.99      ( r1_xboole_0(k5_xboole_0(X0,X0),X1) = iProver_top ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_1051,c_6774]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_7244,plain,
% 3.81/0.99      ( k5_xboole_0(k5_xboole_0(X0,X0),k3_xboole_0(k5_xboole_0(X0,X0),X1)) = k5_xboole_0(X0,X0) ),
% 3.81/0.99      inference(superposition,[status(thm)],[c_6782,c_1046]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_9961,plain,
% 3.81/0.99      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 3.81/0.99      inference(demodulation,[status(thm)],[c_9841,c_7244]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_13340,plain,
% 3.81/0.99      ( k3_tarski(k3_enumset1(sK3,sK3,sK3,sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4))) = sK3 ),
% 3.81/0.99      inference(demodulation,[status(thm)],[c_13287,c_6022,c_9961]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_23,negated_conjecture,
% 3.81/0.99      ( k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK4),k5_xboole_0(sK3,k3_xboole_0(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4)))) != sK3 ),
% 3.81/0.99      inference(cnf_transformation,[],[f87]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(c_2246,plain,
% 3.81/0.99      ( k3_tarski(k3_enumset1(sK3,sK3,sK3,sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK4))) != sK3 ),
% 3.81/0.99      inference(demodulation,[status(thm)],[c_1488,c_23]) ).
% 3.81/0.99  
% 3.81/0.99  cnf(contradiction,plain,
% 3.81/0.99      ( $false ),
% 3.81/0.99      inference(minisat,[status(thm)],[c_13340,c_2246]) ).
% 3.81/0.99  
% 3.81/0.99  
% 3.81/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.81/0.99  
% 3.81/0.99  ------                               Statistics
% 3.81/0.99  
% 3.81/0.99  ------ General
% 3.81/0.99  
% 3.81/0.99  abstr_ref_over_cycles:                  0
% 3.81/0.99  abstr_ref_under_cycles:                 0
% 3.81/0.99  gc_basic_clause_elim:                   0
% 3.81/0.99  forced_gc_time:                         0
% 3.81/0.99  parsing_time:                           0.008
% 3.81/0.99  unif_index_cands_time:                  0.
% 3.81/0.99  unif_index_add_time:                    0.
% 3.81/0.99  orderings_time:                         0.
% 3.81/0.99  out_proof_time:                         0.008
% 3.81/0.99  total_time:                             0.377
% 3.81/0.99  num_of_symbols:                         44
% 3.81/0.99  num_of_terms:                           17028
% 3.81/0.99  
% 3.81/0.99  ------ Preprocessing
% 3.81/0.99  
% 3.81/0.99  num_of_splits:                          0
% 3.81/0.99  num_of_split_atoms:                     0
% 3.81/0.99  num_of_reused_defs:                     0
% 3.81/0.99  num_eq_ax_congr_red:                    24
% 3.81/0.99  num_of_sem_filtered_clauses:            1
% 3.81/0.99  num_of_subtypes:                        0
% 3.81/0.99  monotx_restored_types:                  0
% 3.81/0.99  sat_num_of_epr_types:                   0
% 3.81/0.99  sat_num_of_non_cyclic_types:            0
% 3.81/0.99  sat_guarded_non_collapsed_types:        0
% 3.81/0.99  num_pure_diseq_elim:                    0
% 3.81/0.99  simp_replaced_by:                       0
% 3.81/0.99  res_preprocessed:                       117
% 3.81/0.99  prep_upred:                             0
% 3.81/0.99  prep_unflattend:                        0
% 3.81/0.99  smt_new_axioms:                         0
% 3.81/0.99  pred_elim_cands:                        3
% 3.81/0.99  pred_elim:                              0
% 3.81/0.99  pred_elim_cl:                           0
% 3.81/0.99  pred_elim_cycles:                       2
% 3.81/0.99  merged_defs:                            8
% 3.81/0.99  merged_defs_ncl:                        0
% 3.81/0.99  bin_hyper_res:                          8
% 3.81/0.99  prep_cycles:                            4
% 3.81/0.99  pred_elim_time:                         0.002
% 3.81/0.99  splitting_time:                         0.
% 3.81/0.99  sem_filter_time:                        0.
% 3.81/0.99  monotx_time:                            0.001
% 3.81/0.99  subtype_inf_time:                       0.
% 3.81/0.99  
% 3.81/0.99  ------ Problem properties
% 3.81/0.99  
% 3.81/0.99  clauses:                                25
% 3.81/0.99  conjectures:                            3
% 3.81/0.99  epr:                                    5
% 3.81/0.99  horn:                                   19
% 3.81/0.99  ground:                                 3
% 3.81/0.99  unary:                                  9
% 3.81/0.99  binary:                                 9
% 3.81/0.99  lits:                                   49
% 3.81/0.99  lits_eq:                                13
% 3.81/0.99  fd_pure:                                0
% 3.81/0.99  fd_pseudo:                              0
% 3.81/0.99  fd_cond:                                0
% 3.81/0.99  fd_pseudo_cond:                         4
% 3.81/0.99  ac_symbols:                             0
% 3.81/0.99  
% 3.81/0.99  ------ Propositional Solver
% 3.81/0.99  
% 3.81/0.99  prop_solver_calls:                      29
% 3.81/0.99  prop_fast_solver_calls:                 696
% 3.81/0.99  smt_solver_calls:                       0
% 3.81/0.99  smt_fast_solver_calls:                  0
% 3.81/0.99  prop_num_of_clauses:                    4628
% 3.81/0.99  prop_preprocess_simplified:             11863
% 3.81/0.99  prop_fo_subsumed:                       4
% 3.81/0.99  prop_solver_time:                       0.
% 3.81/0.99  smt_solver_time:                        0.
% 3.81/0.99  smt_fast_solver_time:                   0.
% 3.81/0.99  prop_fast_solver_time:                  0.
% 3.81/0.99  prop_unsat_core_time:                   0.
% 3.81/0.99  
% 3.81/0.99  ------ QBF
% 3.81/0.99  
% 3.81/0.99  qbf_q_res:                              0
% 3.81/0.99  qbf_num_tautologies:                    0
% 3.81/0.99  qbf_prep_cycles:                        0
% 3.81/0.99  
% 3.81/0.99  ------ BMC1
% 3.81/0.99  
% 3.81/0.99  bmc1_current_bound:                     -1
% 3.81/0.99  bmc1_last_solved_bound:                 -1
% 3.81/0.99  bmc1_unsat_core_size:                   -1
% 3.81/0.99  bmc1_unsat_core_parents_size:           -1
% 3.81/0.99  bmc1_merge_next_fun:                    0
% 3.81/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.81/0.99  
% 3.81/0.99  ------ Instantiation
% 3.81/0.99  
% 3.81/0.99  inst_num_of_clauses:                    1204
% 3.81/0.99  inst_num_in_passive:                    691
% 3.81/0.99  inst_num_in_active:                     440
% 3.81/0.99  inst_num_in_unprocessed:                74
% 3.81/0.99  inst_num_of_loops:                      490
% 3.81/0.99  inst_num_of_learning_restarts:          0
% 3.81/0.99  inst_num_moves_active_passive:          48
% 3.81/0.99  inst_lit_activity:                      0
% 3.81/0.99  inst_lit_activity_moves:                0
% 3.81/0.99  inst_num_tautologies:                   0
% 3.81/0.99  inst_num_prop_implied:                  0
% 3.81/0.99  inst_num_existing_simplified:           0
% 3.81/0.99  inst_num_eq_res_simplified:             0
% 3.81/0.99  inst_num_child_elim:                    0
% 3.81/0.99  inst_num_of_dismatching_blockings:      1457
% 3.81/0.99  inst_num_of_non_proper_insts:           1504
% 3.81/0.99  inst_num_of_duplicates:                 0
% 3.81/0.99  inst_inst_num_from_inst_to_res:         0
% 3.81/0.99  inst_dismatching_checking_time:         0.
% 3.81/0.99  
% 3.81/0.99  ------ Resolution
% 3.81/0.99  
% 3.81/0.99  res_num_of_clauses:                     0
% 3.81/0.99  res_num_in_passive:                     0
% 3.81/0.99  res_num_in_active:                      0
% 3.81/0.99  res_num_of_loops:                       121
% 3.81/0.99  res_forward_subset_subsumed:            75
% 3.81/0.99  res_backward_subset_subsumed:           4
% 3.81/0.99  res_forward_subsumed:                   0
% 3.81/0.99  res_backward_subsumed:                  0
% 3.81/0.99  res_forward_subsumption_resolution:     0
% 3.81/0.99  res_backward_subsumption_resolution:    0
% 3.81/0.99  res_clause_to_clause_subsumption:       1083
% 3.81/0.99  res_orphan_elimination:                 0
% 3.81/0.99  res_tautology_del:                      97
% 3.81/0.99  res_num_eq_res_simplified:              0
% 3.81/0.99  res_num_sel_changes:                    0
% 3.81/0.99  res_moves_from_active_to_pass:          0
% 3.81/0.99  
% 3.81/0.99  ------ Superposition
% 3.81/0.99  
% 3.81/0.99  sup_time_total:                         0.
% 3.81/0.99  sup_time_generating:                    0.
% 3.81/0.99  sup_time_sim_full:                      0.
% 3.81/0.99  sup_time_sim_immed:                     0.
% 3.81/0.99  
% 3.81/0.99  sup_num_of_clauses:                     188
% 3.81/0.99  sup_num_in_active:                      67
% 3.81/0.99  sup_num_in_passive:                     121
% 3.81/0.99  sup_num_of_loops:                       96
% 3.81/0.99  sup_fw_superposition:                   508
% 3.81/0.99  sup_bw_superposition:                   472
% 3.81/0.99  sup_immediate_simplified:               247
% 3.81/0.99  sup_given_eliminated:                   2
% 3.81/0.99  comparisons_done:                       0
% 3.81/0.99  comparisons_avoided:                    0
% 3.81/0.99  
% 3.81/0.99  ------ Simplifications
% 3.81/0.99  
% 3.81/0.99  
% 3.81/0.99  sim_fw_subset_subsumed:                 13
% 3.81/0.99  sim_bw_subset_subsumed:                 6
% 3.81/0.99  sim_fw_subsumed:                        45
% 3.81/0.99  sim_bw_subsumed:                        3
% 3.81/0.99  sim_fw_subsumption_res:                 0
% 3.81/0.99  sim_bw_subsumption_res:                 0
% 3.81/0.99  sim_tautology_del:                      44
% 3.81/0.99  sim_eq_tautology_del:                   88
% 3.81/0.99  sim_eq_res_simp:                        3
% 3.81/0.99  sim_fw_demodulated:                     109
% 3.81/0.99  sim_bw_demodulated:                     35
% 3.81/0.99  sim_light_normalised:                   141
% 3.81/0.99  sim_joinable_taut:                      0
% 3.81/0.99  sim_joinable_simp:                      0
% 3.81/0.99  sim_ac_normalised:                      0
% 3.81/0.99  sim_smt_subsumption:                    0
% 3.81/0.99  
%------------------------------------------------------------------------------
