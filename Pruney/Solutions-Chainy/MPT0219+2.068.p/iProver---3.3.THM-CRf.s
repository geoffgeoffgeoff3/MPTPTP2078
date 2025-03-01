%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:29:20 EST 2020

% Result     : Theorem 11.69s
% Output     : CNFRefutation 11.69s
% Verified   : 
% Statistics : Number of formulae       :   97 ( 335 expanded)
%              Number of clauses        :   35 (  68 expanded)
%              Number of leaves         :   18 (  96 expanded)
%              Depth                    :   15
%              Number of atoms          :  305 ( 837 expanded)
%              Number of equality atoms :  196 ( 658 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    6 (   1 average)

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f23,plain,(
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
    inference(nnf_transformation,[],[f16])).

fof(f24,plain,(
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
    inference(flattening,[],[f23])).

fof(f25,plain,(
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
    inference(rectify,[],[f24])).

fof(f26,plain,(
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

fof(f27,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f25,f26])).

fof(f46,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X2 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f12,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f12])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f13])).

fof(f58,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f53,f54])).

fof(f67,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X2 != X5
      | k3_enumset1(X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f46,f58])).

fof(f75,plain,(
    ! [X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k3_enumset1(X0,X0,X0,X1,X5) != X3 ) ),
    inference(equality_resolution,[],[f67])).

fof(f76,plain,(
    ! [X0,X5,X1] : r2_hidden(X5,k3_enumset1(X0,X0,X0,X1,X5)) ),
    inference(equality_resolution,[],[f75])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f14,conjecture,(
    ! [X0,X1] :
      ( k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
     => X0 = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
       => X0 = X1 ) ),
    inference(negated_conjecture,[],[f14])).

fof(f17,plain,(
    ? [X0,X1] :
      ( X0 != X1
      & k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f28,plain,
    ( ? [X0,X1] :
        ( X0 != X1
        & k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) )
   => ( sK2 != sK3
      & k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,
    ( sK2 != sK3
    & k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f17,f28])).

fof(f55,plain,(
    k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2) ),
    inference(cnf_transformation,[],[f29])).

fof(f8,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f57,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f42,f37])).

fof(f10,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f11])).

fof(f59,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f52,f58])).

fof(f60,plain,(
    ! [X0] : k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f51,f59])).

fof(f71,plain,(
    k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_enumset1(sK2,sK2,sK2,sK2,sK2)))) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
    inference(definition_unfolding,[],[f55,f57,f60,f60,f60])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X2,X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f5,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f5])).

fof(f62,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))))) = k1_xboole_0 ),
    inference(definition_unfolding,[],[f39,f37,f57])).

fof(f4,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,k2_xboole_0(X0,X1)) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] : k3_xboole_0(X0,k2_xboole_0(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f4])).

fof(f61,plain,(
    ! [X0,X1] : k3_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))) = X0 ),
    inference(definition_unfolding,[],[f38,f57])).

fof(f6,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f6])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f18])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( ~ r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f19])).

fof(f21,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
          | ~ r2_hidden(sK0(X0,X1,X2),X0)
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( ( r2_hidden(sK0(X0,X1,X2),X1)
            & r2_hidden(sK0(X0,X1,X2),X0) )
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
            | ~ r2_hidden(sK0(X0,X1,X2),X0)
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( ( r2_hidden(sK0(X0,X1,X2),X1)
              & r2_hidden(sK0(X0,X1,X2),X0) )
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f20,f21])).

fof(f31,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f22])).

fof(f74,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k3_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f31])).

fof(f43,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f70,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,X3)
      | k3_enumset1(X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f43,f58])).

fof(f81,plain,(
    ! [X2,X0,X5,X1] :
      ( X2 = X5
      | X1 = X5
      | X0 = X5
      | ~ r2_hidden(X5,k3_enumset1(X0,X0,X0,X1,X2)) ) ),
    inference(equality_resolution,[],[f70])).

fof(f44,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f69,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k3_enumset1(X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f44,f58])).

fof(f79,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k3_enumset1(X5,X5,X5,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f69])).

fof(f80,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k3_enumset1(X5,X5,X5,X1,X2)) ),
    inference(equality_resolution,[],[f79])).

fof(f56,plain,(
    sK2 != sK3 ),
    inference(cnf_transformation,[],[f29])).

cnf(c_15,plain,
    ( r2_hidden(X0,k3_enumset1(X1,X1,X1,X2,X0)) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_391,plain,
    ( r2_hidden(X0,k3_enumset1(X1,X1,X1,X2,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_0,plain,
    ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_20,negated_conjecture,
    ( k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_enumset1(sK2,sK2,sK2,sK2,sK2)))) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_565,plain,
    ( k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK3,sK3,sK3,sK3,sK3)))) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
    inference(demodulation,[status(thm)],[c_0,c_20])).

cnf(c_10,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_8,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))))) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_7,plain,
    ( k3_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))) = X0 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_418,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_8,c_7])).

cnf(c_852,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
    inference(superposition,[status(thm)],[c_418,c_10])).

cnf(c_940,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),k5_xboole_0(X0,k5_xboole_0(X1,X2))) = k5_xboole_0(k1_xboole_0,X2) ),
    inference(superposition,[status(thm)],[c_10,c_852])).

cnf(c_941,plain,
    ( k5_xboole_0(k1_xboole_0,X0) = k5_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_418,c_852])).

cnf(c_9,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_969,plain,
    ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_941,c_9])).

cnf(c_5775,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),k5_xboole_0(X0,k5_xboole_0(X1,X2))) = X2 ),
    inference(demodulation,[status(thm)],[c_940,c_969])).

cnf(c_5807,plain,
    ( k5_xboole_0(k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK3,sK3,sK3,sK3,sK3)),k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK3,sK3,sK3,sK3,sK3)) ),
    inference(superposition,[status(thm)],[c_565,c_5775])).

cnf(c_5829,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),k5_xboole_0(X0,k1_xboole_0)) = X1 ),
    inference(superposition,[status(thm)],[c_418,c_5775])).

cnf(c_6009,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),X0) = X1 ),
    inference(light_normalisation,[status(thm)],[c_5829,c_9])).

cnf(c_6052,plain,
    ( k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK3,sK3,sK3,sK3,sK3)) = k3_enumset1(sK3,sK3,sK3,sK3,sK3) ),
    inference(demodulation,[status(thm)],[c_5807,c_6009])).

cnf(c_6,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k3_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_396,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k3_xboole_0(X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_10084,plain,
    ( r2_hidden(X0,k3_enumset1(sK3,sK3,sK3,sK3,sK3)) != iProver_top
    | r2_hidden(X0,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_6052,c_396])).

cnf(c_45274,plain,
    ( r2_hidden(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_391,c_10084])).

cnf(c_18,plain,
    ( ~ r2_hidden(X0,k3_enumset1(X1,X1,X1,X2,X3))
    | X0 = X1
    | X0 = X2
    | X0 = X3 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_554,plain,
    ( ~ r2_hidden(sK3,k3_enumset1(X0,X0,X0,X1,X2))
    | sK3 = X0
    | sK3 = X1
    | sK3 = X2 ),
    inference(instantiation,[status(thm)],[c_18])).

cnf(c_555,plain,
    ( sK3 = X0
    | sK3 = X1
    | sK3 = X2
    | r2_hidden(sK3,k3_enumset1(X0,X0,X0,X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_554])).

cnf(c_557,plain,
    ( sK3 = sK2
    | r2_hidden(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_555])).

cnf(c_165,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_525,plain,
    ( sK3 != X0
    | sK2 != X0
    | sK2 = sK3 ),
    inference(instantiation,[status(thm)],[c_165])).

cnf(c_526,plain,
    ( sK3 != sK2
    | sK2 = sK3
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_525])).

cnf(c_17,plain,
    ( r2_hidden(X0,k3_enumset1(X0,X0,X0,X1,X2)) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_25,plain,
    ( r2_hidden(sK2,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) ),
    inference(instantiation,[status(thm)],[c_17])).

cnf(c_22,plain,
    ( ~ r2_hidden(sK2,k3_enumset1(sK2,sK2,sK2,sK2,sK2))
    | sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_18])).

cnf(c_19,negated_conjecture,
    ( sK2 != sK3 ),
    inference(cnf_transformation,[],[f56])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_45274,c_557,c_526,c_25,c_22,c_19])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:18:36 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 11.69/2.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 11.69/2.00  
% 11.69/2.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 11.69/2.00  
% 11.69/2.00  ------  iProver source info
% 11.69/2.00  
% 11.69/2.00  git: date: 2020-06-30 10:37:57 +0100
% 11.69/2.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 11.69/2.00  git: non_committed_changes: false
% 11.69/2.00  git: last_make_outside_of_git: false
% 11.69/2.00  
% 11.69/2.00  ------ 
% 11.69/2.00  
% 11.69/2.00  ------ Input Options
% 11.69/2.00  
% 11.69/2.00  --out_options                           all
% 11.69/2.00  --tptp_safe_out                         true
% 11.69/2.00  --problem_path                          ""
% 11.69/2.00  --include_path                          ""
% 11.69/2.00  --clausifier                            res/vclausify_rel
% 11.69/2.00  --clausifier_options                    --mode clausify
% 11.69/2.00  --stdin                                 false
% 11.69/2.00  --stats_out                             all
% 11.69/2.00  
% 11.69/2.00  ------ General Options
% 11.69/2.00  
% 11.69/2.00  --fof                                   false
% 11.69/2.00  --time_out_real                         305.
% 11.69/2.00  --time_out_virtual                      -1.
% 11.69/2.00  --symbol_type_check                     false
% 11.69/2.00  --clausify_out                          false
% 11.69/2.00  --sig_cnt_out                           false
% 11.69/2.00  --trig_cnt_out                          false
% 11.69/2.00  --trig_cnt_out_tolerance                1.
% 11.69/2.00  --trig_cnt_out_sk_spl                   false
% 11.69/2.00  --abstr_cl_out                          false
% 11.69/2.00  
% 11.69/2.00  ------ Global Options
% 11.69/2.00  
% 11.69/2.00  --schedule                              default
% 11.69/2.00  --add_important_lit                     false
% 11.69/2.00  --prop_solver_per_cl                    1000
% 11.69/2.00  --min_unsat_core                        false
% 11.69/2.00  --soft_assumptions                      false
% 11.69/2.00  --soft_lemma_size                       3
% 11.69/2.00  --prop_impl_unit_size                   0
% 11.69/2.00  --prop_impl_unit                        []
% 11.69/2.00  --share_sel_clauses                     true
% 11.69/2.00  --reset_solvers                         false
% 11.69/2.00  --bc_imp_inh                            [conj_cone]
% 11.69/2.00  --conj_cone_tolerance                   3.
% 11.69/2.00  --extra_neg_conj                        none
% 11.69/2.00  --large_theory_mode                     true
% 11.69/2.00  --prolific_symb_bound                   200
% 11.69/2.00  --lt_threshold                          2000
% 11.69/2.00  --clause_weak_htbl                      true
% 11.69/2.00  --gc_record_bc_elim                     false
% 11.69/2.00  
% 11.69/2.00  ------ Preprocessing Options
% 11.69/2.00  
% 11.69/2.00  --preprocessing_flag                    true
% 11.69/2.00  --time_out_prep_mult                    0.1
% 11.69/2.00  --splitting_mode                        input
% 11.69/2.00  --splitting_grd                         true
% 11.69/2.00  --splitting_cvd                         false
% 11.69/2.00  --splitting_cvd_svl                     false
% 11.69/2.00  --splitting_nvd                         32
% 11.69/2.00  --sub_typing                            true
% 11.69/2.00  --prep_gs_sim                           true
% 11.69/2.00  --prep_unflatten                        true
% 11.69/2.00  --prep_res_sim                          true
% 11.69/2.00  --prep_upred                            true
% 11.69/2.00  --prep_sem_filter                       exhaustive
% 11.69/2.00  --prep_sem_filter_out                   false
% 11.69/2.00  --pred_elim                             true
% 11.69/2.00  --res_sim_input                         true
% 11.69/2.00  --eq_ax_congr_red                       true
% 11.69/2.00  --pure_diseq_elim                       true
% 11.69/2.00  --brand_transform                       false
% 11.69/2.00  --non_eq_to_eq                          false
% 11.69/2.00  --prep_def_merge                        true
% 11.69/2.00  --prep_def_merge_prop_impl              false
% 11.69/2.00  --prep_def_merge_mbd                    true
% 11.69/2.00  --prep_def_merge_tr_red                 false
% 11.69/2.00  --prep_def_merge_tr_cl                  false
% 11.69/2.00  --smt_preprocessing                     true
% 11.69/2.00  --smt_ac_axioms                         fast
% 11.69/2.00  --preprocessed_out                      false
% 11.69/2.00  --preprocessed_stats                    false
% 11.69/2.00  
% 11.69/2.00  ------ Abstraction refinement Options
% 11.69/2.00  
% 11.69/2.00  --abstr_ref                             []
% 11.69/2.00  --abstr_ref_prep                        false
% 11.69/2.00  --abstr_ref_until_sat                   false
% 11.69/2.00  --abstr_ref_sig_restrict                funpre
% 11.69/2.00  --abstr_ref_af_restrict_to_split_sk     false
% 11.69/2.00  --abstr_ref_under                       []
% 11.69/2.00  
% 11.69/2.00  ------ SAT Options
% 11.69/2.00  
% 11.69/2.00  --sat_mode                              false
% 11.69/2.00  --sat_fm_restart_options                ""
% 11.69/2.00  --sat_gr_def                            false
% 11.69/2.00  --sat_epr_types                         true
% 11.69/2.00  --sat_non_cyclic_types                  false
% 11.69/2.00  --sat_finite_models                     false
% 11.69/2.00  --sat_fm_lemmas                         false
% 11.69/2.00  --sat_fm_prep                           false
% 11.69/2.00  --sat_fm_uc_incr                        true
% 11.69/2.00  --sat_out_model                         small
% 11.69/2.00  --sat_out_clauses                       false
% 11.69/2.00  
% 11.69/2.00  ------ QBF Options
% 11.69/2.00  
% 11.69/2.00  --qbf_mode                              false
% 11.69/2.00  --qbf_elim_univ                         false
% 11.69/2.00  --qbf_dom_inst                          none
% 11.69/2.00  --qbf_dom_pre_inst                      false
% 11.69/2.00  --qbf_sk_in                             false
% 11.69/2.00  --qbf_pred_elim                         true
% 11.69/2.00  --qbf_split                             512
% 11.69/2.00  
% 11.69/2.00  ------ BMC1 Options
% 11.69/2.00  
% 11.69/2.00  --bmc1_incremental                      false
% 11.69/2.00  --bmc1_axioms                           reachable_all
% 11.69/2.00  --bmc1_min_bound                        0
% 11.69/2.00  --bmc1_max_bound                        -1
% 11.69/2.00  --bmc1_max_bound_default                -1
% 11.69/2.00  --bmc1_symbol_reachability              true
% 11.69/2.00  --bmc1_property_lemmas                  false
% 11.69/2.00  --bmc1_k_induction                      false
% 11.69/2.00  --bmc1_non_equiv_states                 false
% 11.69/2.00  --bmc1_deadlock                         false
% 11.69/2.00  --bmc1_ucm                              false
% 11.69/2.00  --bmc1_add_unsat_core                   none
% 11.69/2.00  --bmc1_unsat_core_children              false
% 11.69/2.00  --bmc1_unsat_core_extrapolate_axioms    false
% 11.69/2.00  --bmc1_out_stat                         full
% 11.69/2.00  --bmc1_ground_init                      false
% 11.69/2.00  --bmc1_pre_inst_next_state              false
% 11.69/2.00  --bmc1_pre_inst_state                   false
% 11.69/2.00  --bmc1_pre_inst_reach_state             false
% 11.69/2.00  --bmc1_out_unsat_core                   false
% 11.69/2.00  --bmc1_aig_witness_out                  false
% 11.69/2.00  --bmc1_verbose                          false
% 11.69/2.00  --bmc1_dump_clauses_tptp                false
% 11.69/2.00  --bmc1_dump_unsat_core_tptp             false
% 11.69/2.00  --bmc1_dump_file                        -
% 11.69/2.00  --bmc1_ucm_expand_uc_limit              128
% 11.69/2.00  --bmc1_ucm_n_expand_iterations          6
% 11.69/2.00  --bmc1_ucm_extend_mode                  1
% 11.69/2.00  --bmc1_ucm_init_mode                    2
% 11.69/2.00  --bmc1_ucm_cone_mode                    none
% 11.69/2.00  --bmc1_ucm_reduced_relation_type        0
% 11.69/2.00  --bmc1_ucm_relax_model                  4
% 11.69/2.00  --bmc1_ucm_full_tr_after_sat            true
% 11.69/2.00  --bmc1_ucm_expand_neg_assumptions       false
% 11.69/2.00  --bmc1_ucm_layered_model                none
% 11.69/2.00  --bmc1_ucm_max_lemma_size               10
% 11.69/2.00  
% 11.69/2.00  ------ AIG Options
% 11.69/2.00  
% 11.69/2.00  --aig_mode                              false
% 11.69/2.00  
% 11.69/2.00  ------ Instantiation Options
% 11.69/2.00  
% 11.69/2.00  --instantiation_flag                    true
% 11.69/2.00  --inst_sos_flag                         false
% 11.69/2.00  --inst_sos_phase                        true
% 11.69/2.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.69/2.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.69/2.00  --inst_lit_sel_side                     num_symb
% 11.69/2.00  --inst_solver_per_active                1400
% 11.69/2.00  --inst_solver_calls_frac                1.
% 11.69/2.00  --inst_passive_queue_type               priority_queues
% 11.69/2.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.69/2.00  --inst_passive_queues_freq              [25;2]
% 11.69/2.00  --inst_dismatching                      true
% 11.69/2.00  --inst_eager_unprocessed_to_passive     true
% 11.69/2.00  --inst_prop_sim_given                   true
% 11.69/2.00  --inst_prop_sim_new                     false
% 11.69/2.00  --inst_subs_new                         false
% 11.69/2.00  --inst_eq_res_simp                      false
% 11.69/2.00  --inst_subs_given                       false
% 11.69/2.00  --inst_orphan_elimination               true
% 11.69/2.00  --inst_learning_loop_flag               true
% 11.69/2.00  --inst_learning_start                   3000
% 11.69/2.00  --inst_learning_factor                  2
% 11.69/2.00  --inst_start_prop_sim_after_learn       3
% 11.69/2.00  --inst_sel_renew                        solver
% 11.69/2.00  --inst_lit_activity_flag                true
% 11.69/2.00  --inst_restr_to_given                   false
% 11.69/2.00  --inst_activity_threshold               500
% 11.69/2.00  --inst_out_proof                        true
% 11.69/2.00  
% 11.69/2.00  ------ Resolution Options
% 11.69/2.00  
% 11.69/2.00  --resolution_flag                       true
% 11.69/2.00  --res_lit_sel                           adaptive
% 11.69/2.00  --res_lit_sel_side                      none
% 11.69/2.00  --res_ordering                          kbo
% 11.69/2.00  --res_to_prop_solver                    active
% 11.69/2.00  --res_prop_simpl_new                    false
% 11.69/2.00  --res_prop_simpl_given                  true
% 11.69/2.00  --res_passive_queue_type                priority_queues
% 11.69/2.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.69/2.00  --res_passive_queues_freq               [15;5]
% 11.69/2.00  --res_forward_subs                      full
% 11.69/2.00  --res_backward_subs                     full
% 11.69/2.00  --res_forward_subs_resolution           true
% 11.69/2.00  --res_backward_subs_resolution          true
% 11.69/2.00  --res_orphan_elimination                true
% 11.69/2.00  --res_time_limit                        2.
% 11.69/2.00  --res_out_proof                         true
% 11.69/2.00  
% 11.69/2.00  ------ Superposition Options
% 11.69/2.00  
% 11.69/2.00  --superposition_flag                    true
% 11.69/2.00  --sup_passive_queue_type                priority_queues
% 11.69/2.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.69/2.00  --sup_passive_queues_freq               [8;1;4]
% 11.69/2.00  --demod_completeness_check              fast
% 11.69/2.00  --demod_use_ground                      true
% 11.69/2.00  --sup_to_prop_solver                    passive
% 11.69/2.00  --sup_prop_simpl_new                    true
% 11.69/2.00  --sup_prop_simpl_given                  true
% 11.69/2.00  --sup_fun_splitting                     false
% 11.69/2.00  --sup_smt_interval                      50000
% 11.69/2.00  
% 11.69/2.00  ------ Superposition Simplification Setup
% 11.69/2.00  
% 11.69/2.00  --sup_indices_passive                   []
% 11.69/2.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.69/2.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.69/2.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.69/2.00  --sup_full_triv                         [TrivRules;PropSubs]
% 11.69/2.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.69/2.00  --sup_full_bw                           [BwDemod]
% 11.69/2.00  --sup_immed_triv                        [TrivRules]
% 11.69/2.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.69/2.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.69/2.00  --sup_immed_bw_main                     []
% 11.69/2.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.69/2.00  --sup_input_triv                        [Unflattening;TrivRules]
% 11.69/2.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.69/2.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.69/2.00  
% 11.69/2.00  ------ Combination Options
% 11.69/2.00  
% 11.69/2.00  --comb_res_mult                         3
% 11.69/2.00  --comb_sup_mult                         2
% 11.69/2.00  --comb_inst_mult                        10
% 11.69/2.00  
% 11.69/2.00  ------ Debug Options
% 11.69/2.00  
% 11.69/2.00  --dbg_backtrace                         false
% 11.69/2.00  --dbg_dump_prop_clauses                 false
% 11.69/2.00  --dbg_dump_prop_clauses_file            -
% 11.69/2.00  --dbg_out_stat                          false
% 11.69/2.00  ------ Parsing...
% 11.69/2.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 11.69/2.00  
% 11.69/2.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 11.69/2.00  
% 11.69/2.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 11.69/2.00  
% 11.69/2.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 11.69/2.00  ------ Proving...
% 11.69/2.00  ------ Problem Properties 
% 11.69/2.00  
% 11.69/2.00  
% 11.69/2.00  clauses                                 21
% 11.69/2.00  conjectures                             2
% 11.69/2.00  EPR                                     1
% 11.69/2.00  Horn                                    17
% 11.69/2.00  unary                                   10
% 11.69/2.00  binary                                  2
% 11.69/2.00  lits                                    45
% 11.69/2.00  lits eq                                 23
% 11.69/2.00  fd_pure                                 0
% 11.69/2.00  fd_pseudo                               0
% 11.69/2.00  fd_cond                                 0
% 11.69/2.00  fd_pseudo_cond                          7
% 11.69/2.00  AC symbols                              0
% 11.69/2.00  
% 11.69/2.00  ------ Schedule dynamic 5 is on 
% 11.69/2.00  
% 11.69/2.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 11.69/2.00  
% 11.69/2.00  
% 11.69/2.00  ------ 
% 11.69/2.00  Current options:
% 11.69/2.00  ------ 
% 11.69/2.00  
% 11.69/2.00  ------ Input Options
% 11.69/2.00  
% 11.69/2.00  --out_options                           all
% 11.69/2.00  --tptp_safe_out                         true
% 11.69/2.00  --problem_path                          ""
% 11.69/2.00  --include_path                          ""
% 11.69/2.00  --clausifier                            res/vclausify_rel
% 11.69/2.00  --clausifier_options                    --mode clausify
% 11.69/2.00  --stdin                                 false
% 11.69/2.00  --stats_out                             all
% 11.69/2.00  
% 11.69/2.00  ------ General Options
% 11.69/2.00  
% 11.69/2.00  --fof                                   false
% 11.69/2.00  --time_out_real                         305.
% 11.69/2.00  --time_out_virtual                      -1.
% 11.69/2.00  --symbol_type_check                     false
% 11.69/2.00  --clausify_out                          false
% 11.69/2.00  --sig_cnt_out                           false
% 11.69/2.00  --trig_cnt_out                          false
% 11.69/2.00  --trig_cnt_out_tolerance                1.
% 11.69/2.00  --trig_cnt_out_sk_spl                   false
% 11.69/2.00  --abstr_cl_out                          false
% 11.69/2.00  
% 11.69/2.00  ------ Global Options
% 11.69/2.00  
% 11.69/2.00  --schedule                              default
% 11.69/2.00  --add_important_lit                     false
% 11.69/2.00  --prop_solver_per_cl                    1000
% 11.69/2.00  --min_unsat_core                        false
% 11.69/2.00  --soft_assumptions                      false
% 11.69/2.00  --soft_lemma_size                       3
% 11.69/2.00  --prop_impl_unit_size                   0
% 11.69/2.00  --prop_impl_unit                        []
% 11.69/2.00  --share_sel_clauses                     true
% 11.69/2.00  --reset_solvers                         false
% 11.69/2.00  --bc_imp_inh                            [conj_cone]
% 11.69/2.00  --conj_cone_tolerance                   3.
% 11.69/2.00  --extra_neg_conj                        none
% 11.69/2.00  --large_theory_mode                     true
% 11.69/2.00  --prolific_symb_bound                   200
% 11.69/2.00  --lt_threshold                          2000
% 11.69/2.00  --clause_weak_htbl                      true
% 11.69/2.00  --gc_record_bc_elim                     false
% 11.69/2.00  
% 11.69/2.00  ------ Preprocessing Options
% 11.69/2.00  
% 11.69/2.00  --preprocessing_flag                    true
% 11.69/2.00  --time_out_prep_mult                    0.1
% 11.69/2.00  --splitting_mode                        input
% 11.69/2.00  --splitting_grd                         true
% 11.69/2.00  --splitting_cvd                         false
% 11.69/2.00  --splitting_cvd_svl                     false
% 11.69/2.00  --splitting_nvd                         32
% 11.69/2.00  --sub_typing                            true
% 11.69/2.00  --prep_gs_sim                           true
% 11.69/2.00  --prep_unflatten                        true
% 11.69/2.00  --prep_res_sim                          true
% 11.69/2.00  --prep_upred                            true
% 11.69/2.00  --prep_sem_filter                       exhaustive
% 11.69/2.00  --prep_sem_filter_out                   false
% 11.69/2.00  --pred_elim                             true
% 11.69/2.00  --res_sim_input                         true
% 11.69/2.00  --eq_ax_congr_red                       true
% 11.69/2.00  --pure_diseq_elim                       true
% 11.69/2.00  --brand_transform                       false
% 11.69/2.00  --non_eq_to_eq                          false
% 11.69/2.00  --prep_def_merge                        true
% 11.69/2.00  --prep_def_merge_prop_impl              false
% 11.69/2.00  --prep_def_merge_mbd                    true
% 11.69/2.00  --prep_def_merge_tr_red                 false
% 11.69/2.00  --prep_def_merge_tr_cl                  false
% 11.69/2.00  --smt_preprocessing                     true
% 11.69/2.00  --smt_ac_axioms                         fast
% 11.69/2.00  --preprocessed_out                      false
% 11.69/2.00  --preprocessed_stats                    false
% 11.69/2.00  
% 11.69/2.00  ------ Abstraction refinement Options
% 11.69/2.00  
% 11.69/2.00  --abstr_ref                             []
% 11.69/2.00  --abstr_ref_prep                        false
% 11.69/2.00  --abstr_ref_until_sat                   false
% 11.69/2.00  --abstr_ref_sig_restrict                funpre
% 11.69/2.00  --abstr_ref_af_restrict_to_split_sk     false
% 11.69/2.00  --abstr_ref_under                       []
% 11.69/2.00  
% 11.69/2.00  ------ SAT Options
% 11.69/2.00  
% 11.69/2.00  --sat_mode                              false
% 11.69/2.00  --sat_fm_restart_options                ""
% 11.69/2.00  --sat_gr_def                            false
% 11.69/2.00  --sat_epr_types                         true
% 11.69/2.00  --sat_non_cyclic_types                  false
% 11.69/2.00  --sat_finite_models                     false
% 11.69/2.00  --sat_fm_lemmas                         false
% 11.69/2.00  --sat_fm_prep                           false
% 11.69/2.00  --sat_fm_uc_incr                        true
% 11.69/2.00  --sat_out_model                         small
% 11.69/2.00  --sat_out_clauses                       false
% 11.69/2.00  
% 11.69/2.00  ------ QBF Options
% 11.69/2.00  
% 11.69/2.00  --qbf_mode                              false
% 11.69/2.00  --qbf_elim_univ                         false
% 11.69/2.00  --qbf_dom_inst                          none
% 11.69/2.00  --qbf_dom_pre_inst                      false
% 11.69/2.00  --qbf_sk_in                             false
% 11.69/2.00  --qbf_pred_elim                         true
% 11.69/2.00  --qbf_split                             512
% 11.69/2.00  
% 11.69/2.00  ------ BMC1 Options
% 11.69/2.00  
% 11.69/2.00  --bmc1_incremental                      false
% 11.69/2.00  --bmc1_axioms                           reachable_all
% 11.69/2.00  --bmc1_min_bound                        0
% 11.69/2.00  --bmc1_max_bound                        -1
% 11.69/2.00  --bmc1_max_bound_default                -1
% 11.69/2.00  --bmc1_symbol_reachability              true
% 11.69/2.00  --bmc1_property_lemmas                  false
% 11.69/2.00  --bmc1_k_induction                      false
% 11.69/2.00  --bmc1_non_equiv_states                 false
% 11.69/2.00  --bmc1_deadlock                         false
% 11.69/2.00  --bmc1_ucm                              false
% 11.69/2.00  --bmc1_add_unsat_core                   none
% 11.69/2.00  --bmc1_unsat_core_children              false
% 11.69/2.00  --bmc1_unsat_core_extrapolate_axioms    false
% 11.69/2.00  --bmc1_out_stat                         full
% 11.69/2.00  --bmc1_ground_init                      false
% 11.69/2.00  --bmc1_pre_inst_next_state              false
% 11.69/2.00  --bmc1_pre_inst_state                   false
% 11.69/2.00  --bmc1_pre_inst_reach_state             false
% 11.69/2.00  --bmc1_out_unsat_core                   false
% 11.69/2.00  --bmc1_aig_witness_out                  false
% 11.69/2.00  --bmc1_verbose                          false
% 11.69/2.00  --bmc1_dump_clauses_tptp                false
% 11.69/2.00  --bmc1_dump_unsat_core_tptp             false
% 11.69/2.00  --bmc1_dump_file                        -
% 11.69/2.00  --bmc1_ucm_expand_uc_limit              128
% 11.69/2.00  --bmc1_ucm_n_expand_iterations          6
% 11.69/2.00  --bmc1_ucm_extend_mode                  1
% 11.69/2.00  --bmc1_ucm_init_mode                    2
% 11.69/2.00  --bmc1_ucm_cone_mode                    none
% 11.69/2.00  --bmc1_ucm_reduced_relation_type        0
% 11.69/2.00  --bmc1_ucm_relax_model                  4
% 11.69/2.00  --bmc1_ucm_full_tr_after_sat            true
% 11.69/2.00  --bmc1_ucm_expand_neg_assumptions       false
% 11.69/2.00  --bmc1_ucm_layered_model                none
% 11.69/2.00  --bmc1_ucm_max_lemma_size               10
% 11.69/2.00  
% 11.69/2.00  ------ AIG Options
% 11.69/2.00  
% 11.69/2.00  --aig_mode                              false
% 11.69/2.00  
% 11.69/2.00  ------ Instantiation Options
% 11.69/2.00  
% 11.69/2.00  --instantiation_flag                    true
% 11.69/2.00  --inst_sos_flag                         false
% 11.69/2.00  --inst_sos_phase                        true
% 11.69/2.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.69/2.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.69/2.00  --inst_lit_sel_side                     none
% 11.69/2.00  --inst_solver_per_active                1400
% 11.69/2.00  --inst_solver_calls_frac                1.
% 11.69/2.00  --inst_passive_queue_type               priority_queues
% 11.69/2.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.69/2.00  --inst_passive_queues_freq              [25;2]
% 11.69/2.00  --inst_dismatching                      true
% 11.69/2.00  --inst_eager_unprocessed_to_passive     true
% 11.69/2.00  --inst_prop_sim_given                   true
% 11.69/2.00  --inst_prop_sim_new                     false
% 11.69/2.00  --inst_subs_new                         false
% 11.69/2.00  --inst_eq_res_simp                      false
% 11.69/2.00  --inst_subs_given                       false
% 11.69/2.00  --inst_orphan_elimination               true
% 11.69/2.00  --inst_learning_loop_flag               true
% 11.69/2.00  --inst_learning_start                   3000
% 11.69/2.00  --inst_learning_factor                  2
% 11.69/2.00  --inst_start_prop_sim_after_learn       3
% 11.69/2.00  --inst_sel_renew                        solver
% 11.69/2.00  --inst_lit_activity_flag                true
% 11.69/2.00  --inst_restr_to_given                   false
% 11.69/2.00  --inst_activity_threshold               500
% 11.69/2.00  --inst_out_proof                        true
% 11.69/2.00  
% 11.69/2.00  ------ Resolution Options
% 11.69/2.00  
% 11.69/2.00  --resolution_flag                       false
% 11.69/2.00  --res_lit_sel                           adaptive
% 11.69/2.00  --res_lit_sel_side                      none
% 11.69/2.00  --res_ordering                          kbo
% 11.69/2.00  --res_to_prop_solver                    active
% 11.69/2.00  --res_prop_simpl_new                    false
% 11.69/2.00  --res_prop_simpl_given                  true
% 11.69/2.00  --res_passive_queue_type                priority_queues
% 11.69/2.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.69/2.00  --res_passive_queues_freq               [15;5]
% 11.69/2.00  --res_forward_subs                      full
% 11.69/2.00  --res_backward_subs                     full
% 11.69/2.00  --res_forward_subs_resolution           true
% 11.69/2.00  --res_backward_subs_resolution          true
% 11.69/2.00  --res_orphan_elimination                true
% 11.69/2.00  --res_time_limit                        2.
% 11.69/2.00  --res_out_proof                         true
% 11.69/2.00  
% 11.69/2.00  ------ Superposition Options
% 11.69/2.00  
% 11.69/2.00  --superposition_flag                    true
% 11.69/2.00  --sup_passive_queue_type                priority_queues
% 11.69/2.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.69/2.00  --sup_passive_queues_freq               [8;1;4]
% 11.69/2.00  --demod_completeness_check              fast
% 11.69/2.00  --demod_use_ground                      true
% 11.69/2.00  --sup_to_prop_solver                    passive
% 11.69/2.00  --sup_prop_simpl_new                    true
% 11.69/2.00  --sup_prop_simpl_given                  true
% 11.69/2.00  --sup_fun_splitting                     false
% 11.69/2.00  --sup_smt_interval                      50000
% 11.69/2.00  
% 11.69/2.00  ------ Superposition Simplification Setup
% 11.69/2.00  
% 11.69/2.00  --sup_indices_passive                   []
% 11.69/2.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.69/2.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.69/2.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 11.69/2.00  --sup_full_triv                         [TrivRules;PropSubs]
% 11.69/2.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.69/2.00  --sup_full_bw                           [BwDemod]
% 11.69/2.00  --sup_immed_triv                        [TrivRules]
% 11.69/2.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.69/2.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.69/2.00  --sup_immed_bw_main                     []
% 11.69/2.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.69/2.00  --sup_input_triv                        [Unflattening;TrivRules]
% 11.69/2.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 11.69/2.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 11.69/2.00  
% 11.69/2.00  ------ Combination Options
% 11.69/2.00  
% 11.69/2.00  --comb_res_mult                         3
% 11.69/2.00  --comb_sup_mult                         2
% 11.69/2.00  --comb_inst_mult                        10
% 11.69/2.00  
% 11.69/2.00  ------ Debug Options
% 11.69/2.00  
% 11.69/2.00  --dbg_backtrace                         false
% 11.69/2.00  --dbg_dump_prop_clauses                 false
% 11.69/2.00  --dbg_dump_prop_clauses_file            -
% 11.69/2.00  --dbg_out_stat                          false
% 11.69/2.00  
% 11.69/2.00  
% 11.69/2.00  
% 11.69/2.00  
% 11.69/2.00  ------ Proving...
% 11.69/2.00  
% 11.69/2.00  
% 11.69/2.00  % SZS status Theorem for theBenchmark.p
% 11.69/2.00  
% 11.69/2.00  % SZS output start CNFRefutation for theBenchmark.p
% 11.69/2.00  
% 11.69/2.00  fof(f9,axiom,(
% 11.69/2.00    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f16,plain,(
% 11.69/2.00    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 11.69/2.00    inference(ennf_transformation,[],[f9])).
% 11.69/2.00  
% 11.69/2.00  fof(f23,plain,(
% 11.69/2.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 11.69/2.00    inference(nnf_transformation,[],[f16])).
% 11.69/2.00  
% 11.69/2.00  fof(f24,plain,(
% 11.69/2.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 11.69/2.00    inference(flattening,[],[f23])).
% 11.69/2.00  
% 11.69/2.00  fof(f25,plain,(
% 11.69/2.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 11.69/2.00    inference(rectify,[],[f24])).
% 11.69/2.00  
% 11.69/2.00  fof(f26,plain,(
% 11.69/2.00    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3))))),
% 11.69/2.00    introduced(choice_axiom,[])).
% 11.69/2.00  
% 11.69/2.00  fof(f27,plain,(
% 11.69/2.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 11.69/2.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f25,f26])).
% 11.69/2.00  
% 11.69/2.00  fof(f46,plain,(
% 11.69/2.00    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X2 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 11.69/2.00    inference(cnf_transformation,[],[f27])).
% 11.69/2.00  
% 11.69/2.00  fof(f12,axiom,(
% 11.69/2.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f53,plain,(
% 11.69/2.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 11.69/2.00    inference(cnf_transformation,[],[f12])).
% 11.69/2.00  
% 11.69/2.00  fof(f13,axiom,(
% 11.69/2.00    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f54,plain,(
% 11.69/2.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 11.69/2.00    inference(cnf_transformation,[],[f13])).
% 11.69/2.00  
% 11.69/2.00  fof(f58,plain,(
% 11.69/2.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k3_enumset1(X0,X0,X0,X1,X2)) )),
% 11.69/2.00    inference(definition_unfolding,[],[f53,f54])).
% 11.69/2.00  
% 11.69/2.00  fof(f67,plain,(
% 11.69/2.00    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X2 != X5 | k3_enumset1(X0,X0,X0,X1,X2) != X3) )),
% 11.69/2.00    inference(definition_unfolding,[],[f46,f58])).
% 11.69/2.00  
% 11.69/2.00  fof(f75,plain,(
% 11.69/2.00    ( ! [X0,X5,X3,X1] : (r2_hidden(X5,X3) | k3_enumset1(X0,X0,X0,X1,X5) != X3) )),
% 11.69/2.00    inference(equality_resolution,[],[f67])).
% 11.69/2.00  
% 11.69/2.00  fof(f76,plain,(
% 11.69/2.00    ( ! [X0,X5,X1] : (r2_hidden(X5,k3_enumset1(X0,X0,X0,X1,X5))) )),
% 11.69/2.00    inference(equality_resolution,[],[f75])).
% 11.69/2.00  
% 11.69/2.00  fof(f1,axiom,(
% 11.69/2.00    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f30,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 11.69/2.00    inference(cnf_transformation,[],[f1])).
% 11.69/2.00  
% 11.69/2.00  fof(f14,conjecture,(
% 11.69/2.00    ! [X0,X1] : (k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) => X0 = X1)),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f15,negated_conjecture,(
% 11.69/2.00    ~! [X0,X1] : (k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) => X0 = X1)),
% 11.69/2.00    inference(negated_conjecture,[],[f14])).
% 11.69/2.00  
% 11.69/2.00  fof(f17,plain,(
% 11.69/2.00    ? [X0,X1] : (X0 != X1 & k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0))),
% 11.69/2.00    inference(ennf_transformation,[],[f15])).
% 11.69/2.00  
% 11.69/2.00  fof(f28,plain,(
% 11.69/2.00    ? [X0,X1] : (X0 != X1 & k2_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)) => (sK2 != sK3 & k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2))),
% 11.69/2.00    introduced(choice_axiom,[])).
% 11.69/2.00  
% 11.69/2.00  fof(f29,plain,(
% 11.69/2.00    sK2 != sK3 & k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2)),
% 11.69/2.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f17,f28])).
% 11.69/2.00  
% 11.69/2.00  fof(f55,plain,(
% 11.69/2.00    k2_xboole_0(k1_tarski(sK2),k1_tarski(sK3)) = k1_tarski(sK2)),
% 11.69/2.00    inference(cnf_transformation,[],[f29])).
% 11.69/2.00  
% 11.69/2.00  fof(f8,axiom,(
% 11.69/2.00    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f42,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 11.69/2.00    inference(cnf_transformation,[],[f8])).
% 11.69/2.00  
% 11.69/2.00  fof(f3,axiom,(
% 11.69/2.00    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f37,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 11.69/2.00    inference(cnf_transformation,[],[f3])).
% 11.69/2.00  
% 11.69/2.00  fof(f57,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1)) )),
% 11.69/2.00    inference(definition_unfolding,[],[f42,f37])).
% 11.69/2.00  
% 11.69/2.00  fof(f10,axiom,(
% 11.69/2.00    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f51,plain,(
% 11.69/2.00    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 11.69/2.00    inference(cnf_transformation,[],[f10])).
% 11.69/2.00  
% 11.69/2.00  fof(f11,axiom,(
% 11.69/2.00    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f52,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 11.69/2.00    inference(cnf_transformation,[],[f11])).
% 11.69/2.00  
% 11.69/2.00  fof(f59,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k3_enumset1(X0,X0,X0,X0,X1)) )),
% 11.69/2.00    inference(definition_unfolding,[],[f52,f58])).
% 11.69/2.00  
% 11.69/2.00  fof(f60,plain,(
% 11.69/2.00    ( ! [X0] : (k1_tarski(X0) = k3_enumset1(X0,X0,X0,X0,X0)) )),
% 11.69/2.00    inference(definition_unfolding,[],[f51,f59])).
% 11.69/2.00  
% 11.69/2.00  fof(f71,plain,(
% 11.69/2.00    k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_enumset1(sK2,sK2,sK2,sK2,sK2)))) = k3_enumset1(sK2,sK2,sK2,sK2,sK2)),
% 11.69/2.00    inference(definition_unfolding,[],[f55,f57,f60,f60,f60])).
% 11.69/2.00  
% 11.69/2.00  fof(f7,axiom,(
% 11.69/2.00    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f41,plain,(
% 11.69/2.00    ( ! [X2,X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)) )),
% 11.69/2.00    inference(cnf_transformation,[],[f7])).
% 11.69/2.00  
% 11.69/2.00  fof(f5,axiom,(
% 11.69/2.00    ! [X0,X1] : k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f39,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0) )),
% 11.69/2.00    inference(cnf_transformation,[],[f5])).
% 11.69/2.00  
% 11.69/2.00  fof(f62,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))))) = k1_xboole_0) )),
% 11.69/2.00    inference(definition_unfolding,[],[f39,f37,f57])).
% 11.69/2.00  
% 11.69/2.00  fof(f4,axiom,(
% 11.69/2.00    ! [X0,X1] : k3_xboole_0(X0,k2_xboole_0(X0,X1)) = X0),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f38,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k3_xboole_0(X0,k2_xboole_0(X0,X1)) = X0) )),
% 11.69/2.00    inference(cnf_transformation,[],[f4])).
% 11.69/2.00  
% 11.69/2.00  fof(f61,plain,(
% 11.69/2.00    ( ! [X0,X1] : (k3_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))) = X0) )),
% 11.69/2.00    inference(definition_unfolding,[],[f38,f57])).
% 11.69/2.00  
% 11.69/2.00  fof(f6,axiom,(
% 11.69/2.00    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f40,plain,(
% 11.69/2.00    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 11.69/2.00    inference(cnf_transformation,[],[f6])).
% 11.69/2.00  
% 11.69/2.00  fof(f2,axiom,(
% 11.69/2.00    ! [X0,X1,X2] : (k3_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 11.69/2.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.69/2.00  
% 11.69/2.00  fof(f18,plain,(
% 11.69/2.00    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 11.69/2.00    inference(nnf_transformation,[],[f2])).
% 11.69/2.00  
% 11.69/2.00  fof(f19,plain,(
% 11.69/2.00    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 11.69/2.00    inference(flattening,[],[f18])).
% 11.69/2.00  
% 11.69/2.00  fof(f20,plain,(
% 11.69/2.00    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 11.69/2.00    inference(rectify,[],[f19])).
% 11.69/2.00  
% 11.69/2.00  fof(f21,plain,(
% 11.69/2.00    ! [X2,X1,X0] : (? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((~r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 11.69/2.00    introduced(choice_axiom,[])).
% 11.69/2.00  
% 11.69/2.00  fof(f22,plain,(
% 11.69/2.00    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ((~r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 11.69/2.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f20,f21])).
% 11.69/2.00  
% 11.69/2.00  fof(f31,plain,(
% 11.69/2.00    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k3_xboole_0(X0,X1) != X2) )),
% 11.69/2.00    inference(cnf_transformation,[],[f22])).
% 11.69/2.00  
% 11.69/2.00  fof(f74,plain,(
% 11.69/2.00    ( ! [X4,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,k3_xboole_0(X0,X1))) )),
% 11.69/2.00    inference(equality_resolution,[],[f31])).
% 11.69/2.00  
% 11.69/2.00  fof(f43,plain,(
% 11.69/2.00    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k1_enumset1(X0,X1,X2) != X3) )),
% 11.69/2.00    inference(cnf_transformation,[],[f27])).
% 11.69/2.00  
% 11.69/2.00  fof(f70,plain,(
% 11.69/2.00    ( ! [X2,X0,X5,X3,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3) | k3_enumset1(X0,X0,X0,X1,X2) != X3) )),
% 11.69/2.00    inference(definition_unfolding,[],[f43,f58])).
% 11.69/2.00  
% 11.69/2.00  fof(f81,plain,(
% 11.69/2.00    ( ! [X2,X0,X5,X1] : (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,k3_enumset1(X0,X0,X0,X1,X2))) )),
% 11.69/2.00    inference(equality_resolution,[],[f70])).
% 11.69/2.00  
% 11.69/2.00  fof(f44,plain,(
% 11.69/2.00    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 11.69/2.00    inference(cnf_transformation,[],[f27])).
% 11.69/2.00  
% 11.69/2.00  fof(f69,plain,(
% 11.69/2.00    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k3_enumset1(X0,X0,X0,X1,X2) != X3) )),
% 11.69/2.00    inference(definition_unfolding,[],[f44,f58])).
% 11.69/2.00  
% 11.69/2.00  fof(f79,plain,(
% 11.69/2.00    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k3_enumset1(X5,X5,X5,X1,X2) != X3) )),
% 11.69/2.00    inference(equality_resolution,[],[f69])).
% 11.69/2.00  
% 11.69/2.00  fof(f80,plain,(
% 11.69/2.00    ( ! [X2,X5,X1] : (r2_hidden(X5,k3_enumset1(X5,X5,X5,X1,X2))) )),
% 11.69/2.00    inference(equality_resolution,[],[f79])).
% 11.69/2.00  
% 11.69/2.00  fof(f56,plain,(
% 11.69/2.00    sK2 != sK3),
% 11.69/2.00    inference(cnf_transformation,[],[f29])).
% 11.69/2.00  
% 11.69/2.00  cnf(c_15,plain,
% 11.69/2.00      ( r2_hidden(X0,k3_enumset1(X1,X1,X1,X2,X0)) ),
% 11.69/2.00      inference(cnf_transformation,[],[f76]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_391,plain,
% 11.69/2.00      ( r2_hidden(X0,k3_enumset1(X1,X1,X1,X2,X0)) = iProver_top ),
% 11.69/2.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_0,plain,
% 11.69/2.00      ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
% 11.69/2.00      inference(cnf_transformation,[],[f30]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_20,negated_conjecture,
% 11.69/2.00      ( k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_enumset1(sK2,sK2,sK2,sK2,sK2)))) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
% 11.69/2.00      inference(cnf_transformation,[],[f71]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_565,plain,
% 11.69/2.00      ( k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k5_xboole_0(k3_enumset1(sK3,sK3,sK3,sK3,sK3),k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK3,sK3,sK3,sK3,sK3)))) = k3_enumset1(sK2,sK2,sK2,sK2,sK2) ),
% 11.69/2.00      inference(demodulation,[status(thm)],[c_0,c_20]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_10,plain,
% 11.69/2.00      ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
% 11.69/2.00      inference(cnf_transformation,[],[f41]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_8,plain,
% 11.69/2.00      ( k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))))) = k1_xboole_0 ),
% 11.69/2.00      inference(cnf_transformation,[],[f62]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_7,plain,
% 11.69/2.00      ( k3_xboole_0(X0,k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))) = X0 ),
% 11.69/2.00      inference(cnf_transformation,[],[f61]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_418,plain,
% 11.69/2.00      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 11.69/2.00      inference(light_normalisation,[status(thm)],[c_8,c_7]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_852,plain,
% 11.69/2.00      ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
% 11.69/2.00      inference(superposition,[status(thm)],[c_418,c_10]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_940,plain,
% 11.69/2.00      ( k5_xboole_0(k5_xboole_0(X0,X1),k5_xboole_0(X0,k5_xboole_0(X1,X2))) = k5_xboole_0(k1_xboole_0,X2) ),
% 11.69/2.00      inference(superposition,[status(thm)],[c_10,c_852]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_941,plain,
% 11.69/2.00      ( k5_xboole_0(k1_xboole_0,X0) = k5_xboole_0(X0,k1_xboole_0) ),
% 11.69/2.00      inference(superposition,[status(thm)],[c_418,c_852]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_9,plain,
% 11.69/2.00      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 11.69/2.00      inference(cnf_transformation,[],[f40]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_969,plain,
% 11.69/2.00      ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
% 11.69/2.00      inference(light_normalisation,[status(thm)],[c_941,c_9]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_5775,plain,
% 11.69/2.00      ( k5_xboole_0(k5_xboole_0(X0,X1),k5_xboole_0(X0,k5_xboole_0(X1,X2))) = X2 ),
% 11.69/2.00      inference(demodulation,[status(thm)],[c_940,c_969]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_5807,plain,
% 11.69/2.00      ( k5_xboole_0(k5_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK3,sK3,sK3,sK3,sK3)),k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK3,sK3,sK3,sK3,sK3)) ),
% 11.69/2.00      inference(superposition,[status(thm)],[c_565,c_5775]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_5829,plain,
% 11.69/2.00      ( k5_xboole_0(k5_xboole_0(X0,X1),k5_xboole_0(X0,k1_xboole_0)) = X1 ),
% 11.69/2.00      inference(superposition,[status(thm)],[c_418,c_5775]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_6009,plain,
% 11.69/2.00      ( k5_xboole_0(k5_xboole_0(X0,X1),X0) = X1 ),
% 11.69/2.00      inference(light_normalisation,[status(thm)],[c_5829,c_9]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_6052,plain,
% 11.69/2.00      ( k3_xboole_0(k3_enumset1(sK2,sK2,sK2,sK2,sK2),k3_enumset1(sK3,sK3,sK3,sK3,sK3)) = k3_enumset1(sK3,sK3,sK3,sK3,sK3) ),
% 11.69/2.00      inference(demodulation,[status(thm)],[c_5807,c_6009]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_6,plain,
% 11.69/2.00      ( r2_hidden(X0,X1) | ~ r2_hidden(X0,k3_xboole_0(X1,X2)) ),
% 11.69/2.00      inference(cnf_transformation,[],[f74]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_396,plain,
% 11.69/2.00      ( r2_hidden(X0,X1) = iProver_top
% 11.69/2.00      | r2_hidden(X0,k3_xboole_0(X1,X2)) != iProver_top ),
% 11.69/2.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_10084,plain,
% 11.69/2.00      ( r2_hidden(X0,k3_enumset1(sK3,sK3,sK3,sK3,sK3)) != iProver_top
% 11.69/2.00      | r2_hidden(X0,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = iProver_top ),
% 11.69/2.00      inference(superposition,[status(thm)],[c_6052,c_396]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_45274,plain,
% 11.69/2.00      ( r2_hidden(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) = iProver_top ),
% 11.69/2.00      inference(superposition,[status(thm)],[c_391,c_10084]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_18,plain,
% 11.69/2.00      ( ~ r2_hidden(X0,k3_enumset1(X1,X1,X1,X2,X3))
% 11.69/2.00      | X0 = X1
% 11.69/2.00      | X0 = X2
% 11.69/2.00      | X0 = X3 ),
% 11.69/2.00      inference(cnf_transformation,[],[f81]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_554,plain,
% 11.69/2.00      ( ~ r2_hidden(sK3,k3_enumset1(X0,X0,X0,X1,X2))
% 11.69/2.00      | sK3 = X0
% 11.69/2.00      | sK3 = X1
% 11.69/2.00      | sK3 = X2 ),
% 11.69/2.00      inference(instantiation,[status(thm)],[c_18]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_555,plain,
% 11.69/2.00      ( sK3 = X0
% 11.69/2.00      | sK3 = X1
% 11.69/2.00      | sK3 = X2
% 11.69/2.00      | r2_hidden(sK3,k3_enumset1(X0,X0,X0,X1,X2)) != iProver_top ),
% 11.69/2.00      inference(predicate_to_equality,[status(thm)],[c_554]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_557,plain,
% 11.69/2.00      ( sK3 = sK2
% 11.69/2.00      | r2_hidden(sK3,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 11.69/2.00      inference(instantiation,[status(thm)],[c_555]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_165,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_525,plain,
% 11.69/2.00      ( sK3 != X0 | sK2 != X0 | sK2 = sK3 ),
% 11.69/2.00      inference(instantiation,[status(thm)],[c_165]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_526,plain,
% 11.69/2.00      ( sK3 != sK2 | sK2 = sK3 | sK2 != sK2 ),
% 11.69/2.00      inference(instantiation,[status(thm)],[c_525]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_17,plain,
% 11.69/2.00      ( r2_hidden(X0,k3_enumset1(X0,X0,X0,X1,X2)) ),
% 11.69/2.00      inference(cnf_transformation,[],[f80]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_25,plain,
% 11.69/2.00      ( r2_hidden(sK2,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) ),
% 11.69/2.00      inference(instantiation,[status(thm)],[c_17]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_22,plain,
% 11.69/2.00      ( ~ r2_hidden(sK2,k3_enumset1(sK2,sK2,sK2,sK2,sK2)) | sK2 = sK2 ),
% 11.69/2.00      inference(instantiation,[status(thm)],[c_18]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(c_19,negated_conjecture,
% 11.69/2.00      ( sK2 != sK3 ),
% 11.69/2.00      inference(cnf_transformation,[],[f56]) ).
% 11.69/2.00  
% 11.69/2.00  cnf(contradiction,plain,
% 11.69/2.00      ( $false ),
% 11.69/2.00      inference(minisat,
% 11.69/2.00                [status(thm)],
% 11.69/2.00                [c_45274,c_557,c_526,c_25,c_22,c_19]) ).
% 11.69/2.00  
% 11.69/2.00  
% 11.69/2.00  % SZS output end CNFRefutation for theBenchmark.p
% 11.69/2.00  
% 11.69/2.00  ------                               Statistics
% 11.69/2.00  
% 11.69/2.00  ------ General
% 11.69/2.00  
% 11.69/2.00  abstr_ref_over_cycles:                  0
% 11.69/2.00  abstr_ref_under_cycles:                 0
% 11.69/2.00  gc_basic_clause_elim:                   0
% 11.69/2.00  forced_gc_time:                         0
% 11.69/2.00  parsing_time:                           0.01
% 11.69/2.00  unif_index_cands_time:                  0.
% 11.69/2.00  unif_index_add_time:                    0.
% 11.69/2.00  orderings_time:                         0.
% 11.69/2.00  out_proof_time:                         0.01
% 11.69/2.00  total_time:                             1.346
% 11.69/2.00  num_of_symbols:                         40
% 11.69/2.00  num_of_terms:                           71482
% 11.69/2.00  
% 11.69/2.00  ------ Preprocessing
% 11.69/2.00  
% 11.69/2.00  num_of_splits:                          0
% 11.69/2.00  num_of_split_atoms:                     0
% 11.69/2.00  num_of_reused_defs:                     0
% 11.69/2.00  num_eq_ax_congr_red:                    14
% 11.69/2.00  num_of_sem_filtered_clauses:            1
% 11.69/2.00  num_of_subtypes:                        0
% 11.69/2.00  monotx_restored_types:                  0
% 11.69/2.00  sat_num_of_epr_types:                   0
% 11.69/2.00  sat_num_of_non_cyclic_types:            0
% 11.69/2.00  sat_guarded_non_collapsed_types:        0
% 11.69/2.00  num_pure_diseq_elim:                    0
% 11.69/2.00  simp_replaced_by:                       0
% 11.69/2.00  res_preprocessed:                       76
% 11.69/2.00  prep_upred:                             0
% 11.69/2.00  prep_unflattend:                        0
% 11.69/2.00  smt_new_axioms:                         0
% 11.69/2.00  pred_elim_cands:                        1
% 11.69/2.00  pred_elim:                              0
% 11.69/2.00  pred_elim_cl:                           0
% 11.69/2.00  pred_elim_cycles:                       1
% 11.69/2.00  merged_defs:                            0
% 11.69/2.00  merged_defs_ncl:                        0
% 11.69/2.00  bin_hyper_res:                          0
% 11.69/2.00  prep_cycles:                            3
% 11.69/2.00  pred_elim_time:                         0.
% 11.69/2.00  splitting_time:                         0.
% 11.69/2.00  sem_filter_time:                        0.
% 11.69/2.00  monotx_time:                            0.
% 11.69/2.00  subtype_inf_time:                       0.
% 11.69/2.00  
% 11.69/2.00  ------ Problem properties
% 11.69/2.00  
% 11.69/2.00  clauses:                                21
% 11.69/2.00  conjectures:                            2
% 11.69/2.00  epr:                                    1
% 11.69/2.00  horn:                                   17
% 11.69/2.00  ground:                                 2
% 11.69/2.00  unary:                                  10
% 11.69/2.00  binary:                                 2
% 11.69/2.00  lits:                                   45
% 11.69/2.00  lits_eq:                                23
% 11.69/2.00  fd_pure:                                0
% 11.69/2.00  fd_pseudo:                              0
% 11.69/2.00  fd_cond:                                0
% 11.69/2.00  fd_pseudo_cond:                         7
% 11.69/2.00  ac_symbols:                             1
% 11.69/2.00  
% 11.69/2.00  ------ Propositional Solver
% 11.69/2.00  
% 11.69/2.00  prop_solver_calls:                      26
% 11.69/2.00  prop_fast_solver_calls:                 537
% 11.69/2.00  smt_solver_calls:                       0
% 11.69/2.00  smt_fast_solver_calls:                  0
% 11.69/2.00  prop_num_of_clauses:                    11843
% 11.69/2.00  prop_preprocess_simplified:             21437
% 11.69/2.00  prop_fo_subsumed:                       0
% 11.69/2.00  prop_solver_time:                       0.
% 11.69/2.00  smt_solver_time:                        0.
% 11.69/2.00  smt_fast_solver_time:                   0.
% 11.69/2.00  prop_fast_solver_time:                  0.
% 11.69/2.00  prop_unsat_core_time:                   0.001
% 11.69/2.00  
% 11.69/2.00  ------ QBF
% 11.69/2.00  
% 11.69/2.00  qbf_q_res:                              0
% 11.69/2.00  qbf_num_tautologies:                    0
% 11.69/2.00  qbf_prep_cycles:                        0
% 11.69/2.00  
% 11.69/2.00  ------ BMC1
% 11.69/2.00  
% 11.69/2.00  bmc1_current_bound:                     -1
% 11.69/2.00  bmc1_last_solved_bound:                 -1
% 11.69/2.00  bmc1_unsat_core_size:                   -1
% 11.69/2.00  bmc1_unsat_core_parents_size:           -1
% 11.69/2.00  bmc1_merge_next_fun:                    0
% 11.69/2.00  bmc1_unsat_core_clauses_time:           0.
% 11.69/2.00  
% 11.69/2.00  ------ Instantiation
% 11.69/2.00  
% 11.69/2.00  inst_num_of_clauses:                    2363
% 11.69/2.00  inst_num_in_passive:                    1757
% 11.69/2.00  inst_num_in_active:                     465
% 11.69/2.00  inst_num_in_unprocessed:                144
% 11.69/2.00  inst_num_of_loops:                      660
% 11.69/2.00  inst_num_of_learning_restarts:          0
% 11.69/2.00  inst_num_moves_active_passive:          187
% 11.69/2.00  inst_lit_activity:                      0
% 11.69/2.00  inst_lit_activity_moves:                0
% 11.69/2.00  inst_num_tautologies:                   0
% 11.69/2.00  inst_num_prop_implied:                  0
% 11.69/2.00  inst_num_existing_simplified:           0
% 11.69/2.00  inst_num_eq_res_simplified:             0
% 11.69/2.00  inst_num_child_elim:                    0
% 11.69/2.00  inst_num_of_dismatching_blockings:      1424
% 11.69/2.00  inst_num_of_non_proper_insts:           1950
% 11.69/2.00  inst_num_of_duplicates:                 0
% 11.69/2.00  inst_inst_num_from_inst_to_res:         0
% 11.69/2.00  inst_dismatching_checking_time:         0.
% 11.69/2.00  
% 11.69/2.00  ------ Resolution
% 11.69/2.00  
% 11.69/2.00  res_num_of_clauses:                     0
% 11.69/2.00  res_num_in_passive:                     0
% 11.69/2.00  res_num_in_active:                      0
% 11.69/2.00  res_num_of_loops:                       79
% 11.69/2.00  res_forward_subset_subsumed:            246
% 11.69/2.00  res_backward_subset_subsumed:           18
% 11.69/2.00  res_forward_subsumed:                   0
% 11.69/2.00  res_backward_subsumed:                  0
% 11.69/2.00  res_forward_subsumption_resolution:     0
% 11.69/2.00  res_backward_subsumption_resolution:    0
% 11.69/2.00  res_clause_to_clause_subsumption:       53550
% 11.69/2.00  res_orphan_elimination:                 0
% 11.69/2.00  res_tautology_del:                      45
% 11.69/2.00  res_num_eq_res_simplified:              0
% 11.69/2.00  res_num_sel_changes:                    0
% 11.69/2.00  res_moves_from_active_to_pass:          0
% 11.69/2.00  
% 11.69/2.00  ------ Superposition
% 11.69/2.00  
% 11.69/2.00  sup_time_total:                         0.
% 11.69/2.00  sup_time_generating:                    0.
% 11.69/2.00  sup_time_sim_full:                      0.
% 11.69/2.00  sup_time_sim_immed:                     0.
% 11.69/2.00  
% 11.69/2.00  sup_num_of_clauses:                     2646
% 11.69/2.00  sup_num_in_active:                      85
% 11.69/2.00  sup_num_in_passive:                     2561
% 11.69/2.00  sup_num_of_loops:                       130
% 11.69/2.00  sup_fw_superposition:                   5946
% 11.69/2.00  sup_bw_superposition:                   4310
% 11.69/2.00  sup_immediate_simplified:               5443
% 11.69/2.00  sup_given_eliminated:                   17
% 11.69/2.00  comparisons_done:                       0
% 11.69/2.00  comparisons_avoided:                    6
% 11.69/2.00  
% 11.69/2.00  ------ Simplifications
% 11.69/2.00  
% 11.69/2.00  
% 11.69/2.00  sim_fw_subset_subsumed:                 0
% 11.69/2.00  sim_bw_subset_subsumed:                 0
% 11.69/2.00  sim_fw_subsumed:                        449
% 11.69/2.00  sim_bw_subsumed:                        138
% 11.69/2.00  sim_fw_subsumption_res:                 0
% 11.69/2.00  sim_bw_subsumption_res:                 0
% 11.69/2.00  sim_tautology_del:                      37
% 11.69/2.00  sim_eq_tautology_del:                   705
% 11.69/2.00  sim_eq_res_simp:                        2
% 11.69/2.00  sim_fw_demodulated:                     5092
% 11.69/2.00  sim_bw_demodulated:                     328
% 11.69/2.00  sim_light_normalised:                   1404
% 11.69/2.00  sim_joinable_taut:                      183
% 11.69/2.00  sim_joinable_simp:                      0
% 11.69/2.00  sim_ac_normalised:                      0
% 11.69/2.00  sim_smt_subsumption:                    0
% 11.69/2.00  
%------------------------------------------------------------------------------
