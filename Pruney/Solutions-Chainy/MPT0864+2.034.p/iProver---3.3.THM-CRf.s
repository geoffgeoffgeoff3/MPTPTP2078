%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:57:52 EST 2020

% Result     : Theorem 2.11s
% Output     : CNFRefutation 2.11s
% Verified   : 
% Statistics : Number of formulae       :  114 (1198 expanded)
%              Number of clauses        :   45 (  96 expanded)
%              Number of leaves         :   20 ( 382 expanded)
%              Depth                    :   20
%              Number of atoms          :  247 (1762 expanded)
%              Number of equality atoms :  199 (1552 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f16,conjecture,(
    ! [X0] :
      ( ? [X1,X2] : k4_tarski(X1,X2) = X0
     => ( k2_mcart_1(X0) != X0
        & k1_mcart_1(X0) != X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,negated_conjecture,(
    ~ ! [X0] :
        ( ? [X1,X2] : k4_tarski(X1,X2) = X0
       => ( k2_mcart_1(X0) != X0
          & k1_mcart_1(X0) != X0 ) ) ),
    inference(negated_conjecture,[],[f16])).

fof(f20,plain,(
    ? [X0] :
      ( ( k2_mcart_1(X0) = X0
        | k1_mcart_1(X0) = X0 )
      & ? [X1,X2] : k4_tarski(X1,X2) = X0 ) ),
    inference(ennf_transformation,[],[f17])).

fof(f29,plain,(
    ! [X0] :
      ( ? [X1,X2] : k4_tarski(X1,X2) = X0
     => k4_tarski(sK3,sK4) = X0 ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ? [X0] :
        ( ( k2_mcart_1(X0) = X0
          | k1_mcart_1(X0) = X0 )
        & ? [X1,X2] : k4_tarski(X1,X2) = X0 )
   => ( ( k2_mcart_1(sK2) = sK2
        | k1_mcart_1(sK2) = sK2 )
      & ? [X2,X1] : k4_tarski(X1,X2) = sK2 ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ( k2_mcart_1(sK2) = sK2
      | k1_mcart_1(sK2) = sK2 )
    & k4_tarski(sK3,sK4) = sK2 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f20,f29,f28])).

fof(f54,plain,
    ( k2_mcart_1(sK2) = sK2
    | k1_mcart_1(sK2) = sK2 ),
    inference(cnf_transformation,[],[f30])).

fof(f53,plain,(
    k4_tarski(sK3,sK4) = sK2 ),
    inference(cnf_transformation,[],[f30])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( k2_mcart_1(k4_tarski(X0,X1)) = X1
      & k1_mcart_1(k4_tarski(X0,X1)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] : k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f14])).

fof(f49,plain,(
    ! [X0,X1] : k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f14])).

fof(f15,axiom,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( ! [X2,X3] :
                  ~ ( k4_tarski(X2,X3) = X1
                    & ( r2_hidden(X3,X0)
                      | r2_hidden(X2,X0) ) )
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3] :
              ( k4_tarski(X2,X3) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f15])).

fof(f26,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3] :
              ( k4_tarski(X2,X3) != X1
              | ( ~ r2_hidden(X3,X0)
                & ~ r2_hidden(X2,X0) ) )
          & r2_hidden(X1,X0) )
     => ( ! [X3,X2] :
            ( k4_tarski(X2,X3) != sK1(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK1(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0] :
      ( ( ! [X2,X3] :
            ( k4_tarski(X2,X3) != sK1(X0)
            | ( ~ r2_hidden(X3,X0)
              & ~ r2_hidden(X2,X0) ) )
        & r2_hidden(sK1(X0),X0) )
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f19,f26])).

fof(f50,plain,(
    ! [X0] :
      ( r2_hidden(sK1(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> X0 = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
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
    inference(nnf_transformation,[],[f4])).

fof(f22,plain,(
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
    inference(rectify,[],[f21])).

fof(f23,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( X0 != X2
            | ~ r2_hidden(X2,X1) )
          & ( X0 = X2
            | r2_hidden(X2,X1) ) )
     => ( ( sK0(X0,X1) != X0
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( sK0(X0,X1) = X0
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ( ( sK0(X0,X1) != X0
            | ~ r2_hidden(sK0(X0,X1),X1) )
          & ( sK0(X0,X1) = X0
            | r2_hidden(sK0(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f22,f23])).

fof(f34,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f5,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f11])).

fof(f55,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f43,f44])).

fof(f56,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f42,f55])).

fof(f57,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f41,f56])).

fof(f58,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f40,f57])).

fof(f59,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f39,f58])).

fof(f62,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f38,f59])).

fof(f67,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1 ) ),
    inference(definition_unfolding,[],[f34,f62])).

fof(f72,plain,(
    ! [X0,X3] :
      ( X0 = X3
      | ~ r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ) ),
    inference(equality_resolution,[],[f67])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
    <=> X0 != X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
        | X0 = X1 )
      & ( X0 != X1
        | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0) ) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f45,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f2,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f13,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f60,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f47,f59])).

fof(f61,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f32,f60])).

fof(f69,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ) ),
    inference(definition_unfolding,[],[f45,f61,f62,f62,f62])).

fof(f73,plain,(
    ! [X1] : k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k1_setfam_1(k6_enumset1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) != k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
    inference(equality_resolution,[],[f69])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f1])).

fof(f31,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f18])).

fof(f63,plain,(
    ! [X0] : k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f31,f60])).

fof(f3,axiom,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f3])).

fof(f52,plain,(
    ! [X2,X0,X3] :
      ( k4_tarski(X2,X3) != sK1(X0)
      | ~ r2_hidden(X3,X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f46,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
      | X0 = X1 ) ),
    inference(cnf_transformation,[],[f25])).

fof(f68,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)
      | X0 = X1 ) ),
    inference(definition_unfolding,[],[f46,f61,f62,f62,f62])).

fof(f35,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | X0 != X3
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f24])).

fof(f66,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | X0 != X3
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1 ) ),
    inference(definition_unfolding,[],[f35,f62])).

fof(f70,plain,(
    ! [X3,X1] :
      ( r2_hidden(X3,X1)
      | k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3) != X1 ) ),
    inference(equality_resolution,[],[f66])).

fof(f71,plain,(
    ! [X3] : r2_hidden(X3,k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3)) ),
    inference(equality_resolution,[],[f70])).

fof(f51,plain,(
    ! [X2,X0,X3] :
      ( k4_tarski(X2,X3) != sK1(X0)
      | ~ r2_hidden(X2,X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_13,negated_conjecture,
    ( k1_mcart_1(sK2) = sK2
    | k2_mcart_1(sK2) = sK2 ),
    inference(cnf_transformation,[],[f54])).

cnf(c_14,negated_conjecture,
    ( k4_tarski(sK3,sK4) = sK2 ),
    inference(cnf_transformation,[],[f53])).

cnf(c_9,plain,
    ( k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_571,plain,
    ( k1_mcart_1(sK2) = sK3 ),
    inference(superposition,[status(thm)],[c_14,c_9])).

cnf(c_586,plain,
    ( k2_mcart_1(sK2) = sK2
    | sK3 = sK2 ),
    inference(superposition,[status(thm)],[c_13,c_571])).

cnf(c_8,plain,
    ( k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_471,plain,
    ( k2_mcart_1(sK2) = sK4 ),
    inference(superposition,[status(thm)],[c_14,c_8])).

cnf(c_588,plain,
    ( sK4 = sK2
    | sK3 = sK2 ),
    inference(demodulation,[status(thm)],[c_586,c_471])).

cnf(c_12,plain,
    ( r2_hidden(sK1(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_388,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_391,plain,
    ( X0 = X1
    | r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1412,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_xboole_0
    | sK1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
    inference(superposition,[status(thm)],[c_388,c_391])).

cnf(c_7,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_0,plain,
    ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f33])).

cnf(c_443,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_7,c_0,c_1])).

cnf(c_1810,plain,
    ( sK1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1412,c_443])).

cnf(c_10,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_tarski(X2,X0) != sK1(X1)
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_390,plain,
    ( k4_tarski(X0,X1) != sK1(X2)
    | k1_xboole_0 = X2
    | r2_hidden(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_1294,plain,
    ( sK1(X0) != sK2
    | k1_xboole_0 = X0
    | r2_hidden(sK4,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_14,c_390])).

cnf(c_1815,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_xboole_0
    | sK2 != X0
    | r2_hidden(sK4,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1810,c_1294])).

cnf(c_1866,plain,
    ( sK2 != X0
    | r2_hidden(sK4,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1815,c_443])).

cnf(c_1874,plain,
    ( r2_hidden(sK4,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1866])).

cnf(c_2032,plain,
    ( sK3 = sK2
    | r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_588,c_1874])).

cnf(c_24,plain,
    ( k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k1_setfam_1(k6_enumset1(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)))) != k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_6,plain,
    ( X0 = X1
    | k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k1_setfam_1(k6_enumset1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_25,plain,
    ( k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k1_setfam_1(k6_enumset1(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)))) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)
    | sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_4,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_29,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_31,plain,
    ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_29])).

cnf(c_454,plain,
    ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_443])).

cnf(c_591,plain,
    ( k4_tarski(sK3,sK2) = sK2
    | sK3 = sK2 ),
    inference(superposition,[status(thm)],[c_588,c_14])).

cnf(c_1295,plain,
    ( sK1(X0) != sK2
    | sK3 = sK2
    | k1_xboole_0 = X0
    | r2_hidden(sK2,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_591,c_390])).

cnf(c_1814,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_xboole_0
    | sK3 = sK2
    | sK2 != X0
    | r2_hidden(sK2,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1810,c_1295])).

cnf(c_1853,plain,
    ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) = k1_xboole_0
    | sK3 = sK2
    | sK2 != sK2
    | r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1814])).

cnf(c_2278,plain,
    ( sK3 = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2032,c_24,c_25,c_31,c_454,c_1853])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_tarski(X0,X2) != sK1(X1)
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_389,plain,
    ( k4_tarski(X0,X1) != sK1(X2)
    | k1_xboole_0 = X2
    | r2_hidden(X0,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_674,plain,
    ( sK1(X0) != sK2
    | k1_xboole_0 = X0
    | r2_hidden(sK3,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_14,c_389])).

cnf(c_1816,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_xboole_0
    | sK2 != X0
    | r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1810,c_674])).

cnf(c_2020,plain,
    ( sK2 != X0
    | r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1816,c_443])).

cnf(c_2028,plain,
    ( r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_2020])).

cnf(c_2281,plain,
    ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2278,c_2028])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2281,c_31])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n017.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 12:45:16 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.11/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.11/0.98  
% 2.11/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.11/0.98  
% 2.11/0.98  ------  iProver source info
% 2.11/0.98  
% 2.11/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.11/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.11/0.98  git: non_committed_changes: false
% 2.11/0.98  git: last_make_outside_of_git: false
% 2.11/0.98  
% 2.11/0.98  ------ 
% 2.11/0.98  
% 2.11/0.98  ------ Input Options
% 2.11/0.98  
% 2.11/0.98  --out_options                           all
% 2.11/0.98  --tptp_safe_out                         true
% 2.11/0.98  --problem_path                          ""
% 2.11/0.98  --include_path                          ""
% 2.11/0.98  --clausifier                            res/vclausify_rel
% 2.11/0.98  --clausifier_options                    --mode clausify
% 2.11/0.98  --stdin                                 false
% 2.11/0.98  --stats_out                             all
% 2.11/0.98  
% 2.11/0.98  ------ General Options
% 2.11/0.98  
% 2.11/0.98  --fof                                   false
% 2.11/0.98  --time_out_real                         305.
% 2.11/0.98  --time_out_virtual                      -1.
% 2.11/0.98  --symbol_type_check                     false
% 2.11/0.98  --clausify_out                          false
% 2.11/0.98  --sig_cnt_out                           false
% 2.11/0.98  --trig_cnt_out                          false
% 2.11/0.98  --trig_cnt_out_tolerance                1.
% 2.11/0.98  --trig_cnt_out_sk_spl                   false
% 2.11/0.98  --abstr_cl_out                          false
% 2.11/0.98  
% 2.11/0.98  ------ Global Options
% 2.11/0.98  
% 2.11/0.98  --schedule                              default
% 2.11/0.98  --add_important_lit                     false
% 2.11/0.98  --prop_solver_per_cl                    1000
% 2.11/0.98  --min_unsat_core                        false
% 2.11/0.98  --soft_assumptions                      false
% 2.11/0.98  --soft_lemma_size                       3
% 2.11/0.98  --prop_impl_unit_size                   0
% 2.11/0.98  --prop_impl_unit                        []
% 2.11/0.98  --share_sel_clauses                     true
% 2.11/0.98  --reset_solvers                         false
% 2.11/0.98  --bc_imp_inh                            [conj_cone]
% 2.11/0.98  --conj_cone_tolerance                   3.
% 2.11/0.98  --extra_neg_conj                        none
% 2.11/0.98  --large_theory_mode                     true
% 2.11/0.98  --prolific_symb_bound                   200
% 2.11/0.98  --lt_threshold                          2000
% 2.11/0.98  --clause_weak_htbl                      true
% 2.11/0.98  --gc_record_bc_elim                     false
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing Options
% 2.11/0.98  
% 2.11/0.98  --preprocessing_flag                    true
% 2.11/0.98  --time_out_prep_mult                    0.1
% 2.11/0.98  --splitting_mode                        input
% 2.11/0.98  --splitting_grd                         true
% 2.11/0.98  --splitting_cvd                         false
% 2.11/0.98  --splitting_cvd_svl                     false
% 2.11/0.98  --splitting_nvd                         32
% 2.11/0.98  --sub_typing                            true
% 2.11/0.98  --prep_gs_sim                           true
% 2.11/0.98  --prep_unflatten                        true
% 2.11/0.98  --prep_res_sim                          true
% 2.11/0.98  --prep_upred                            true
% 2.11/0.98  --prep_sem_filter                       exhaustive
% 2.11/0.98  --prep_sem_filter_out                   false
% 2.11/0.98  --pred_elim                             true
% 2.11/0.98  --res_sim_input                         true
% 2.11/0.98  --eq_ax_congr_red                       true
% 2.11/0.98  --pure_diseq_elim                       true
% 2.11/0.98  --brand_transform                       false
% 2.11/0.98  --non_eq_to_eq                          false
% 2.11/0.98  --prep_def_merge                        true
% 2.11/0.98  --prep_def_merge_prop_impl              false
% 2.11/0.98  --prep_def_merge_mbd                    true
% 2.11/0.98  --prep_def_merge_tr_red                 false
% 2.11/0.98  --prep_def_merge_tr_cl                  false
% 2.11/0.98  --smt_preprocessing                     true
% 2.11/0.98  --smt_ac_axioms                         fast
% 2.11/0.98  --preprocessed_out                      false
% 2.11/0.98  --preprocessed_stats                    false
% 2.11/0.98  
% 2.11/0.98  ------ Abstraction refinement Options
% 2.11/0.98  
% 2.11/0.98  --abstr_ref                             []
% 2.11/0.98  --abstr_ref_prep                        false
% 2.11/0.98  --abstr_ref_until_sat                   false
% 2.11/0.98  --abstr_ref_sig_restrict                funpre
% 2.11/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.11/0.98  --abstr_ref_under                       []
% 2.11/0.98  
% 2.11/0.98  ------ SAT Options
% 2.11/0.98  
% 2.11/0.98  --sat_mode                              false
% 2.11/0.98  --sat_fm_restart_options                ""
% 2.11/0.98  --sat_gr_def                            false
% 2.11/0.98  --sat_epr_types                         true
% 2.11/0.98  --sat_non_cyclic_types                  false
% 2.11/0.98  --sat_finite_models                     false
% 2.11/0.98  --sat_fm_lemmas                         false
% 2.11/0.98  --sat_fm_prep                           false
% 2.11/0.98  --sat_fm_uc_incr                        true
% 2.11/0.98  --sat_out_model                         small
% 2.11/0.98  --sat_out_clauses                       false
% 2.11/0.98  
% 2.11/0.98  ------ QBF Options
% 2.11/0.98  
% 2.11/0.98  --qbf_mode                              false
% 2.11/0.98  --qbf_elim_univ                         false
% 2.11/0.98  --qbf_dom_inst                          none
% 2.11/0.98  --qbf_dom_pre_inst                      false
% 2.11/0.98  --qbf_sk_in                             false
% 2.11/0.98  --qbf_pred_elim                         true
% 2.11/0.98  --qbf_split                             512
% 2.11/0.98  
% 2.11/0.98  ------ BMC1 Options
% 2.11/0.98  
% 2.11/0.98  --bmc1_incremental                      false
% 2.11/0.98  --bmc1_axioms                           reachable_all
% 2.11/0.98  --bmc1_min_bound                        0
% 2.11/0.98  --bmc1_max_bound                        -1
% 2.11/0.98  --bmc1_max_bound_default                -1
% 2.11/0.98  --bmc1_symbol_reachability              true
% 2.11/0.98  --bmc1_property_lemmas                  false
% 2.11/0.98  --bmc1_k_induction                      false
% 2.11/0.98  --bmc1_non_equiv_states                 false
% 2.11/0.98  --bmc1_deadlock                         false
% 2.11/0.98  --bmc1_ucm                              false
% 2.11/0.98  --bmc1_add_unsat_core                   none
% 2.11/0.98  --bmc1_unsat_core_children              false
% 2.11/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.11/0.98  --bmc1_out_stat                         full
% 2.11/0.98  --bmc1_ground_init                      false
% 2.11/0.98  --bmc1_pre_inst_next_state              false
% 2.11/0.98  --bmc1_pre_inst_state                   false
% 2.11/0.98  --bmc1_pre_inst_reach_state             false
% 2.11/0.98  --bmc1_out_unsat_core                   false
% 2.11/0.98  --bmc1_aig_witness_out                  false
% 2.11/0.98  --bmc1_verbose                          false
% 2.11/0.98  --bmc1_dump_clauses_tptp                false
% 2.11/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.11/0.98  --bmc1_dump_file                        -
% 2.11/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.11/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.11/0.98  --bmc1_ucm_extend_mode                  1
% 2.11/0.98  --bmc1_ucm_init_mode                    2
% 2.11/0.98  --bmc1_ucm_cone_mode                    none
% 2.11/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.11/0.98  --bmc1_ucm_relax_model                  4
% 2.11/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.11/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.11/0.98  --bmc1_ucm_layered_model                none
% 2.11/0.98  --bmc1_ucm_max_lemma_size               10
% 2.11/0.98  
% 2.11/0.98  ------ AIG Options
% 2.11/0.98  
% 2.11/0.98  --aig_mode                              false
% 2.11/0.98  
% 2.11/0.98  ------ Instantiation Options
% 2.11/0.98  
% 2.11/0.98  --instantiation_flag                    true
% 2.11/0.98  --inst_sos_flag                         false
% 2.11/0.98  --inst_sos_phase                        true
% 2.11/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.11/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.11/0.98  --inst_lit_sel_side                     num_symb
% 2.11/0.98  --inst_solver_per_active                1400
% 2.11/0.98  --inst_solver_calls_frac                1.
% 2.11/0.98  --inst_passive_queue_type               priority_queues
% 2.11/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.11/0.98  --inst_passive_queues_freq              [25;2]
% 2.11/0.98  --inst_dismatching                      true
% 2.11/0.98  --inst_eager_unprocessed_to_passive     true
% 2.11/0.98  --inst_prop_sim_given                   true
% 2.11/0.98  --inst_prop_sim_new                     false
% 2.11/0.98  --inst_subs_new                         false
% 2.11/0.98  --inst_eq_res_simp                      false
% 2.11/0.98  --inst_subs_given                       false
% 2.11/0.98  --inst_orphan_elimination               true
% 2.11/0.98  --inst_learning_loop_flag               true
% 2.11/0.98  --inst_learning_start                   3000
% 2.11/0.98  --inst_learning_factor                  2
% 2.11/0.98  --inst_start_prop_sim_after_learn       3
% 2.11/0.98  --inst_sel_renew                        solver
% 2.11/0.98  --inst_lit_activity_flag                true
% 2.11/0.98  --inst_restr_to_given                   false
% 2.11/0.98  --inst_activity_threshold               500
% 2.11/0.98  --inst_out_proof                        true
% 2.11/0.98  
% 2.11/0.98  ------ Resolution Options
% 2.11/0.98  
% 2.11/0.98  --resolution_flag                       true
% 2.11/0.98  --res_lit_sel                           adaptive
% 2.11/0.98  --res_lit_sel_side                      none
% 2.11/0.98  --res_ordering                          kbo
% 2.11/0.98  --res_to_prop_solver                    active
% 2.11/0.98  --res_prop_simpl_new                    false
% 2.11/0.98  --res_prop_simpl_given                  true
% 2.11/0.98  --res_passive_queue_type                priority_queues
% 2.11/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.11/0.98  --res_passive_queues_freq               [15;5]
% 2.11/0.98  --res_forward_subs                      full
% 2.11/0.98  --res_backward_subs                     full
% 2.11/0.98  --res_forward_subs_resolution           true
% 2.11/0.98  --res_backward_subs_resolution          true
% 2.11/0.98  --res_orphan_elimination                true
% 2.11/0.98  --res_time_limit                        2.
% 2.11/0.98  --res_out_proof                         true
% 2.11/0.98  
% 2.11/0.98  ------ Superposition Options
% 2.11/0.98  
% 2.11/0.98  --superposition_flag                    true
% 2.11/0.98  --sup_passive_queue_type                priority_queues
% 2.11/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.11/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.11/0.98  --demod_completeness_check              fast
% 2.11/0.98  --demod_use_ground                      true
% 2.11/0.98  --sup_to_prop_solver                    passive
% 2.11/0.98  --sup_prop_simpl_new                    true
% 2.11/0.98  --sup_prop_simpl_given                  true
% 2.11/0.98  --sup_fun_splitting                     false
% 2.11/0.98  --sup_smt_interval                      50000
% 2.11/0.98  
% 2.11/0.98  ------ Superposition Simplification Setup
% 2.11/0.98  
% 2.11/0.98  --sup_indices_passive                   []
% 2.11/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.11/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.98  --sup_full_bw                           [BwDemod]
% 2.11/0.98  --sup_immed_triv                        [TrivRules]
% 2.11/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.11/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.98  --sup_immed_bw_main                     []
% 2.11/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.11/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.11/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.11/0.98  
% 2.11/0.98  ------ Combination Options
% 2.11/0.98  
% 2.11/0.98  --comb_res_mult                         3
% 2.11/0.98  --comb_sup_mult                         2
% 2.11/0.98  --comb_inst_mult                        10
% 2.11/0.98  
% 2.11/0.98  ------ Debug Options
% 2.11/0.98  
% 2.11/0.98  --dbg_backtrace                         false
% 2.11/0.98  --dbg_dump_prop_clauses                 false
% 2.11/0.98  --dbg_dump_prop_clauses_file            -
% 2.11/0.98  --dbg_out_stat                          false
% 2.11/0.98  ------ Parsing...
% 2.11/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.11/0.98  ------ Proving...
% 2.11/0.98  ------ Problem Properties 
% 2.11/0.98  
% 2.11/0.98  
% 2.11/0.98  clauses                                 15
% 2.11/0.98  conjectures                             2
% 2.11/0.98  EPR                                     0
% 2.11/0.98  Horn                                    11
% 2.11/0.98  unary                                   7
% 2.11/0.98  binary                                  4
% 2.11/0.98  lits                                    27
% 2.11/0.98  lits eq                                 20
% 2.11/0.98  fd_pure                                 0
% 2.11/0.98  fd_pseudo                               0
% 2.11/0.98  fd_cond                                 3
% 2.11/0.98  fd_pseudo_cond                          3
% 2.11/0.98  AC symbols                              0
% 2.11/0.98  
% 2.11/0.98  ------ Schedule dynamic 5 is on 
% 2.11/0.98  
% 2.11/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.11/0.98  
% 2.11/0.98  
% 2.11/0.98  ------ 
% 2.11/0.98  Current options:
% 2.11/0.98  ------ 
% 2.11/0.98  
% 2.11/0.98  ------ Input Options
% 2.11/0.98  
% 2.11/0.98  --out_options                           all
% 2.11/0.98  --tptp_safe_out                         true
% 2.11/0.98  --problem_path                          ""
% 2.11/0.98  --include_path                          ""
% 2.11/0.98  --clausifier                            res/vclausify_rel
% 2.11/0.98  --clausifier_options                    --mode clausify
% 2.11/0.98  --stdin                                 false
% 2.11/0.98  --stats_out                             all
% 2.11/0.98  
% 2.11/0.98  ------ General Options
% 2.11/0.98  
% 2.11/0.98  --fof                                   false
% 2.11/0.98  --time_out_real                         305.
% 2.11/0.98  --time_out_virtual                      -1.
% 2.11/0.98  --symbol_type_check                     false
% 2.11/0.98  --clausify_out                          false
% 2.11/0.98  --sig_cnt_out                           false
% 2.11/0.98  --trig_cnt_out                          false
% 2.11/0.98  --trig_cnt_out_tolerance                1.
% 2.11/0.98  --trig_cnt_out_sk_spl                   false
% 2.11/0.98  --abstr_cl_out                          false
% 2.11/0.98  
% 2.11/0.98  ------ Global Options
% 2.11/0.98  
% 2.11/0.98  --schedule                              default
% 2.11/0.98  --add_important_lit                     false
% 2.11/0.98  --prop_solver_per_cl                    1000
% 2.11/0.98  --min_unsat_core                        false
% 2.11/0.98  --soft_assumptions                      false
% 2.11/0.98  --soft_lemma_size                       3
% 2.11/0.98  --prop_impl_unit_size                   0
% 2.11/0.98  --prop_impl_unit                        []
% 2.11/0.98  --share_sel_clauses                     true
% 2.11/0.98  --reset_solvers                         false
% 2.11/0.98  --bc_imp_inh                            [conj_cone]
% 2.11/0.98  --conj_cone_tolerance                   3.
% 2.11/0.98  --extra_neg_conj                        none
% 2.11/0.98  --large_theory_mode                     true
% 2.11/0.98  --prolific_symb_bound                   200
% 2.11/0.98  --lt_threshold                          2000
% 2.11/0.98  --clause_weak_htbl                      true
% 2.11/0.98  --gc_record_bc_elim                     false
% 2.11/0.98  
% 2.11/0.98  ------ Preprocessing Options
% 2.11/0.98  
% 2.11/0.98  --preprocessing_flag                    true
% 2.11/0.98  --time_out_prep_mult                    0.1
% 2.11/0.98  --splitting_mode                        input
% 2.11/0.98  --splitting_grd                         true
% 2.11/0.98  --splitting_cvd                         false
% 2.11/0.98  --splitting_cvd_svl                     false
% 2.11/0.98  --splitting_nvd                         32
% 2.11/0.98  --sub_typing                            true
% 2.11/0.98  --prep_gs_sim                           true
% 2.11/0.98  --prep_unflatten                        true
% 2.11/0.98  --prep_res_sim                          true
% 2.11/0.98  --prep_upred                            true
% 2.11/0.98  --prep_sem_filter                       exhaustive
% 2.11/0.98  --prep_sem_filter_out                   false
% 2.11/0.98  --pred_elim                             true
% 2.11/0.98  --res_sim_input                         true
% 2.11/0.98  --eq_ax_congr_red                       true
% 2.11/0.98  --pure_diseq_elim                       true
% 2.11/0.98  --brand_transform                       false
% 2.11/0.98  --non_eq_to_eq                          false
% 2.11/0.98  --prep_def_merge                        true
% 2.11/0.98  --prep_def_merge_prop_impl              false
% 2.11/0.98  --prep_def_merge_mbd                    true
% 2.11/0.98  --prep_def_merge_tr_red                 false
% 2.11/0.98  --prep_def_merge_tr_cl                  false
% 2.11/0.98  --smt_preprocessing                     true
% 2.11/0.98  --smt_ac_axioms                         fast
% 2.11/0.98  --preprocessed_out                      false
% 2.11/0.98  --preprocessed_stats                    false
% 2.11/0.98  
% 2.11/0.98  ------ Abstraction refinement Options
% 2.11/0.98  
% 2.11/0.98  --abstr_ref                             []
% 2.11/0.98  --abstr_ref_prep                        false
% 2.11/0.98  --abstr_ref_until_sat                   false
% 2.11/0.98  --abstr_ref_sig_restrict                funpre
% 2.11/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.11/0.98  --abstr_ref_under                       []
% 2.11/0.98  
% 2.11/0.98  ------ SAT Options
% 2.11/0.98  
% 2.11/0.98  --sat_mode                              false
% 2.11/0.98  --sat_fm_restart_options                ""
% 2.11/0.98  --sat_gr_def                            false
% 2.11/0.98  --sat_epr_types                         true
% 2.11/0.98  --sat_non_cyclic_types                  false
% 2.11/0.98  --sat_finite_models                     false
% 2.11/0.98  --sat_fm_lemmas                         false
% 2.11/0.98  --sat_fm_prep                           false
% 2.11/0.98  --sat_fm_uc_incr                        true
% 2.11/0.98  --sat_out_model                         small
% 2.11/0.98  --sat_out_clauses                       false
% 2.11/0.98  
% 2.11/0.98  ------ QBF Options
% 2.11/0.98  
% 2.11/0.98  --qbf_mode                              false
% 2.11/0.98  --qbf_elim_univ                         false
% 2.11/0.98  --qbf_dom_inst                          none
% 2.11/0.98  --qbf_dom_pre_inst                      false
% 2.11/0.98  --qbf_sk_in                             false
% 2.11/0.98  --qbf_pred_elim                         true
% 2.11/0.98  --qbf_split                             512
% 2.11/0.98  
% 2.11/0.98  ------ BMC1 Options
% 2.11/0.98  
% 2.11/0.98  --bmc1_incremental                      false
% 2.11/0.98  --bmc1_axioms                           reachable_all
% 2.11/0.98  --bmc1_min_bound                        0
% 2.11/0.98  --bmc1_max_bound                        -1
% 2.11/0.98  --bmc1_max_bound_default                -1
% 2.11/0.98  --bmc1_symbol_reachability              true
% 2.11/0.98  --bmc1_property_lemmas                  false
% 2.11/0.98  --bmc1_k_induction                      false
% 2.11/0.98  --bmc1_non_equiv_states                 false
% 2.11/0.98  --bmc1_deadlock                         false
% 2.11/0.98  --bmc1_ucm                              false
% 2.11/0.98  --bmc1_add_unsat_core                   none
% 2.11/0.98  --bmc1_unsat_core_children              false
% 2.11/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.11/0.98  --bmc1_out_stat                         full
% 2.11/0.98  --bmc1_ground_init                      false
% 2.11/0.98  --bmc1_pre_inst_next_state              false
% 2.11/0.98  --bmc1_pre_inst_state                   false
% 2.11/0.98  --bmc1_pre_inst_reach_state             false
% 2.11/0.98  --bmc1_out_unsat_core                   false
% 2.11/0.98  --bmc1_aig_witness_out                  false
% 2.11/0.98  --bmc1_verbose                          false
% 2.11/0.98  --bmc1_dump_clauses_tptp                false
% 2.11/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.11/0.98  --bmc1_dump_file                        -
% 2.11/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.11/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.11/0.98  --bmc1_ucm_extend_mode                  1
% 2.11/0.98  --bmc1_ucm_init_mode                    2
% 2.11/0.98  --bmc1_ucm_cone_mode                    none
% 2.11/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.11/0.98  --bmc1_ucm_relax_model                  4
% 2.11/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.11/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.11/0.98  --bmc1_ucm_layered_model                none
% 2.11/0.98  --bmc1_ucm_max_lemma_size               10
% 2.11/0.98  
% 2.11/0.98  ------ AIG Options
% 2.11/0.98  
% 2.11/0.98  --aig_mode                              false
% 2.11/0.98  
% 2.11/0.98  ------ Instantiation Options
% 2.11/0.98  
% 2.11/0.98  --instantiation_flag                    true
% 2.11/0.98  --inst_sos_flag                         false
% 2.11/0.98  --inst_sos_phase                        true
% 2.11/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.11/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.11/0.98  --inst_lit_sel_side                     none
% 2.11/0.98  --inst_solver_per_active                1400
% 2.11/0.98  --inst_solver_calls_frac                1.
% 2.11/0.98  --inst_passive_queue_type               priority_queues
% 2.11/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.11/0.98  --inst_passive_queues_freq              [25;2]
% 2.11/0.98  --inst_dismatching                      true
% 2.11/0.98  --inst_eager_unprocessed_to_passive     true
% 2.11/0.98  --inst_prop_sim_given                   true
% 2.11/0.98  --inst_prop_sim_new                     false
% 2.11/0.98  --inst_subs_new                         false
% 2.11/0.98  --inst_eq_res_simp                      false
% 2.11/0.98  --inst_subs_given                       false
% 2.11/0.98  --inst_orphan_elimination               true
% 2.11/0.98  --inst_learning_loop_flag               true
% 2.11/0.98  --inst_learning_start                   3000
% 2.11/0.98  --inst_learning_factor                  2
% 2.11/0.98  --inst_start_prop_sim_after_learn       3
% 2.11/0.98  --inst_sel_renew                        solver
% 2.11/0.98  --inst_lit_activity_flag                true
% 2.11/0.98  --inst_restr_to_given                   false
% 2.11/0.98  --inst_activity_threshold               500
% 2.11/0.98  --inst_out_proof                        true
% 2.11/0.98  
% 2.11/0.98  ------ Resolution Options
% 2.11/0.98  
% 2.11/0.98  --resolution_flag                       false
% 2.11/0.98  --res_lit_sel                           adaptive
% 2.11/0.98  --res_lit_sel_side                      none
% 2.11/0.98  --res_ordering                          kbo
% 2.11/0.98  --res_to_prop_solver                    active
% 2.11/0.99  --res_prop_simpl_new                    false
% 2.11/0.99  --res_prop_simpl_given                  true
% 2.11/0.99  --res_passive_queue_type                priority_queues
% 2.11/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.11/0.99  --res_passive_queues_freq               [15;5]
% 2.11/0.99  --res_forward_subs                      full
% 2.11/0.99  --res_backward_subs                     full
% 2.11/0.99  --res_forward_subs_resolution           true
% 2.11/0.99  --res_backward_subs_resolution          true
% 2.11/0.99  --res_orphan_elimination                true
% 2.11/0.99  --res_time_limit                        2.
% 2.11/0.99  --res_out_proof                         true
% 2.11/0.99  
% 2.11/0.99  ------ Superposition Options
% 2.11/0.99  
% 2.11/0.99  --superposition_flag                    true
% 2.11/0.99  --sup_passive_queue_type                priority_queues
% 2.11/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.11/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.11/0.99  --demod_completeness_check              fast
% 2.11/0.99  --demod_use_ground                      true
% 2.11/0.99  --sup_to_prop_solver                    passive
% 2.11/0.99  --sup_prop_simpl_new                    true
% 2.11/0.99  --sup_prop_simpl_given                  true
% 2.11/0.99  --sup_fun_splitting                     false
% 2.11/0.99  --sup_smt_interval                      50000
% 2.11/0.99  
% 2.11/0.99  ------ Superposition Simplification Setup
% 2.11/0.99  
% 2.11/0.99  --sup_indices_passive                   []
% 2.11/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.11/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.11/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.99  --sup_full_bw                           [BwDemod]
% 2.11/0.99  --sup_immed_triv                        [TrivRules]
% 2.11/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.11/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.99  --sup_immed_bw_main                     []
% 2.11/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.11/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.11/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.11/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.11/0.99  
% 2.11/0.99  ------ Combination Options
% 2.11/0.99  
% 2.11/0.99  --comb_res_mult                         3
% 2.11/0.99  --comb_sup_mult                         2
% 2.11/0.99  --comb_inst_mult                        10
% 2.11/0.99  
% 2.11/0.99  ------ Debug Options
% 2.11/0.99  
% 2.11/0.99  --dbg_backtrace                         false
% 2.11/0.99  --dbg_dump_prop_clauses                 false
% 2.11/0.99  --dbg_dump_prop_clauses_file            -
% 2.11/0.99  --dbg_out_stat                          false
% 2.11/0.99  
% 2.11/0.99  
% 2.11/0.99  
% 2.11/0.99  
% 2.11/0.99  ------ Proving...
% 2.11/0.99  
% 2.11/0.99  
% 2.11/0.99  % SZS status Theorem for theBenchmark.p
% 2.11/0.99  
% 2.11/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.11/0.99  
% 2.11/0.99  fof(f16,conjecture,(
% 2.11/0.99    ! [X0] : (? [X1,X2] : k4_tarski(X1,X2) = X0 => (k2_mcart_1(X0) != X0 & k1_mcart_1(X0) != X0))),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f17,negated_conjecture,(
% 2.11/0.99    ~! [X0] : (? [X1,X2] : k4_tarski(X1,X2) = X0 => (k2_mcart_1(X0) != X0 & k1_mcart_1(X0) != X0))),
% 2.11/0.99    inference(negated_conjecture,[],[f16])).
% 2.11/0.99  
% 2.11/0.99  fof(f20,plain,(
% 2.11/0.99    ? [X0] : ((k2_mcart_1(X0) = X0 | k1_mcart_1(X0) = X0) & ? [X1,X2] : k4_tarski(X1,X2) = X0)),
% 2.11/0.99    inference(ennf_transformation,[],[f17])).
% 2.11/0.99  
% 2.11/0.99  fof(f29,plain,(
% 2.11/0.99    ( ! [X0] : (? [X1,X2] : k4_tarski(X1,X2) = X0 => k4_tarski(sK3,sK4) = X0) )),
% 2.11/0.99    introduced(choice_axiom,[])).
% 2.11/0.99  
% 2.11/0.99  fof(f28,plain,(
% 2.11/0.99    ? [X0] : ((k2_mcart_1(X0) = X0 | k1_mcart_1(X0) = X0) & ? [X1,X2] : k4_tarski(X1,X2) = X0) => ((k2_mcart_1(sK2) = sK2 | k1_mcart_1(sK2) = sK2) & ? [X2,X1] : k4_tarski(X1,X2) = sK2)),
% 2.11/0.99    introduced(choice_axiom,[])).
% 2.11/0.99  
% 2.11/0.99  fof(f30,plain,(
% 2.11/0.99    (k2_mcart_1(sK2) = sK2 | k1_mcart_1(sK2) = sK2) & k4_tarski(sK3,sK4) = sK2),
% 2.11/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f20,f29,f28])).
% 2.11/0.99  
% 2.11/0.99  fof(f54,plain,(
% 2.11/0.99    k2_mcart_1(sK2) = sK2 | k1_mcart_1(sK2) = sK2),
% 2.11/0.99    inference(cnf_transformation,[],[f30])).
% 2.11/0.99  
% 2.11/0.99  fof(f53,plain,(
% 2.11/0.99    k4_tarski(sK3,sK4) = sK2),
% 2.11/0.99    inference(cnf_transformation,[],[f30])).
% 2.11/0.99  
% 2.11/0.99  fof(f14,axiom,(
% 2.11/0.99    ! [X0,X1] : (k2_mcart_1(k4_tarski(X0,X1)) = X1 & k1_mcart_1(k4_tarski(X0,X1)) = X0)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f48,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k1_mcart_1(k4_tarski(X0,X1)) = X0) )),
% 2.11/0.99    inference(cnf_transformation,[],[f14])).
% 2.11/0.99  
% 2.11/0.99  fof(f49,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k2_mcart_1(k4_tarski(X0,X1)) = X1) )),
% 2.11/0.99    inference(cnf_transformation,[],[f14])).
% 2.11/0.99  
% 2.11/0.99  fof(f15,axiom,(
% 2.11/0.99    ! [X0] : ~(! [X1] : ~(! [X2,X3] : ~(k4_tarski(X2,X3) = X1 & (r2_hidden(X3,X0) | r2_hidden(X2,X0))) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f19,plain,(
% 2.11/0.99    ! [X0] : (? [X1] : (! [X2,X3] : (k4_tarski(X2,X3) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) | k1_xboole_0 = X0)),
% 2.11/0.99    inference(ennf_transformation,[],[f15])).
% 2.11/0.99  
% 2.11/0.99  fof(f26,plain,(
% 2.11/0.99    ! [X0] : (? [X1] : (! [X2,X3] : (k4_tarski(X2,X3) != X1 | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(X1,X0)) => (! [X3,X2] : (k4_tarski(X2,X3) != sK1(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK1(X0),X0)))),
% 2.11/0.99    introduced(choice_axiom,[])).
% 2.11/0.99  
% 2.11/0.99  fof(f27,plain,(
% 2.11/0.99    ! [X0] : ((! [X2,X3] : (k4_tarski(X2,X3) != sK1(X0) | (~r2_hidden(X3,X0) & ~r2_hidden(X2,X0))) & r2_hidden(sK1(X0),X0)) | k1_xboole_0 = X0)),
% 2.11/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f19,f26])).
% 2.11/0.99  
% 2.11/0.99  fof(f50,plain,(
% 2.11/0.99    ( ! [X0] : (r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0) )),
% 2.11/0.99    inference(cnf_transformation,[],[f27])).
% 2.11/0.99  
% 2.11/0.99  fof(f4,axiom,(
% 2.11/0.99    ! [X0,X1] : (k1_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> X0 = X2))),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f21,plain,(
% 2.11/0.99    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | X0 != X2) & (X0 = X2 | ~r2_hidden(X2,X1))) | k1_tarski(X0) != X1))),
% 2.11/0.99    inference(nnf_transformation,[],[f4])).
% 2.11/0.99  
% 2.11/0.99  fof(f22,plain,(
% 2.11/0.99    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.11/0.99    inference(rectify,[],[f21])).
% 2.11/0.99  
% 2.11/0.99  fof(f23,plain,(
% 2.11/0.99    ! [X1,X0] : (? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1))) => ((sK0(X0,X1) != X0 | ~r2_hidden(sK0(X0,X1),X1)) & (sK0(X0,X1) = X0 | r2_hidden(sK0(X0,X1),X1))))),
% 2.11/0.99    introduced(choice_axiom,[])).
% 2.11/0.99  
% 2.11/0.99  fof(f24,plain,(
% 2.11/0.99    ! [X0,X1] : ((k1_tarski(X0) = X1 | ((sK0(X0,X1) != X0 | ~r2_hidden(sK0(X0,X1),X1)) & (sK0(X0,X1) = X0 | r2_hidden(sK0(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.11/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f22,f23])).
% 2.11/0.99  
% 2.11/0.99  fof(f34,plain,(
% 2.11/0.99    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k1_tarski(X0) != X1) )),
% 2.11/0.99    inference(cnf_transformation,[],[f24])).
% 2.11/0.99  
% 2.11/0.99  fof(f5,axiom,(
% 2.11/0.99    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f38,plain,(
% 2.11/0.99    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 2.11/0.99    inference(cnf_transformation,[],[f5])).
% 2.11/0.99  
% 2.11/0.99  fof(f6,axiom,(
% 2.11/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f39,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 2.11/0.99    inference(cnf_transformation,[],[f6])).
% 2.11/0.99  
% 2.11/0.99  fof(f7,axiom,(
% 2.11/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f40,plain,(
% 2.11/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.11/0.99    inference(cnf_transformation,[],[f7])).
% 2.11/0.99  
% 2.11/0.99  fof(f8,axiom,(
% 2.11/0.99    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f41,plain,(
% 2.11/0.99    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 2.11/0.99    inference(cnf_transformation,[],[f8])).
% 2.11/0.99  
% 2.11/0.99  fof(f9,axiom,(
% 2.11/0.99    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f42,plain,(
% 2.11/0.99    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 2.11/0.99    inference(cnf_transformation,[],[f9])).
% 2.11/0.99  
% 2.11/0.99  fof(f10,axiom,(
% 2.11/0.99    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f43,plain,(
% 2.11/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 2.11/0.99    inference(cnf_transformation,[],[f10])).
% 2.11/0.99  
% 2.11/0.99  fof(f11,axiom,(
% 2.11/0.99    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f44,plain,(
% 2.11/0.99    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 2.11/0.99    inference(cnf_transformation,[],[f11])).
% 2.11/0.99  
% 2.11/0.99  fof(f55,plain,(
% 2.11/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 2.11/0.99    inference(definition_unfolding,[],[f43,f44])).
% 2.11/0.99  
% 2.11/0.99  fof(f56,plain,(
% 2.11/0.99    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 2.11/0.99    inference(definition_unfolding,[],[f42,f55])).
% 2.11/0.99  
% 2.11/0.99  fof(f57,plain,(
% 2.11/0.99    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 2.11/0.99    inference(definition_unfolding,[],[f41,f56])).
% 2.11/0.99  
% 2.11/0.99  fof(f58,plain,(
% 2.11/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 2.11/0.99    inference(definition_unfolding,[],[f40,f57])).
% 2.11/0.99  
% 2.11/0.99  fof(f59,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 2.11/0.99    inference(definition_unfolding,[],[f39,f58])).
% 2.11/0.99  
% 2.11/0.99  fof(f62,plain,(
% 2.11/0.99    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 2.11/0.99    inference(definition_unfolding,[],[f38,f59])).
% 2.11/0.99  
% 2.11/0.99  fof(f67,plain,(
% 2.11/0.99    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1) )),
% 2.11/0.99    inference(definition_unfolding,[],[f34,f62])).
% 2.11/0.99  
% 2.11/0.99  fof(f72,plain,(
% 2.11/0.99    ( ! [X0,X3] : (X0 = X3 | ~r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))) )),
% 2.11/0.99    inference(equality_resolution,[],[f67])).
% 2.11/0.99  
% 2.11/0.99  fof(f12,axiom,(
% 2.11/0.99    ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) <=> X0 != X1)),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f25,plain,(
% 2.11/0.99    ! [X0,X1] : ((k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) | X0 = X1) & (X0 != X1 | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0)))),
% 2.11/0.99    inference(nnf_transformation,[],[f12])).
% 2.11/0.99  
% 2.11/0.99  fof(f45,plain,(
% 2.11/0.99    ( ! [X0,X1] : (X0 != X1 | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0)) )),
% 2.11/0.99    inference(cnf_transformation,[],[f25])).
% 2.11/0.99  
% 2.11/0.99  fof(f2,axiom,(
% 2.11/0.99    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f32,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 2.11/0.99    inference(cnf_transformation,[],[f2])).
% 2.11/0.99  
% 2.11/0.99  fof(f13,axiom,(
% 2.11/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f47,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 2.11/0.99    inference(cnf_transformation,[],[f13])).
% 2.11/0.99  
% 2.11/0.99  fof(f60,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) )),
% 2.11/0.99    inference(definition_unfolding,[],[f47,f59])).
% 2.11/0.99  
% 2.11/0.99  fof(f61,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) )),
% 2.11/0.99    inference(definition_unfolding,[],[f32,f60])).
% 2.11/0.99  
% 2.11/0.99  fof(f69,plain,(
% 2.11/0.99    ( ! [X0,X1] : (X0 != X1 | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 2.11/0.99    inference(definition_unfolding,[],[f45,f61,f62,f62,f62])).
% 2.11/0.99  
% 2.11/0.99  fof(f73,plain,(
% 2.11/0.99    ( ! [X1] : (k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k1_setfam_1(k6_enumset1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) != k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) )),
% 2.11/0.99    inference(equality_resolution,[],[f69])).
% 2.11/0.99  
% 2.11/0.99  fof(f1,axiom,(
% 2.11/0.99    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f18,plain,(
% 2.11/0.99    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 2.11/0.99    inference(rectify,[],[f1])).
% 2.11/0.99  
% 2.11/0.99  fof(f31,plain,(
% 2.11/0.99    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 2.11/0.99    inference(cnf_transformation,[],[f18])).
% 2.11/0.99  
% 2.11/0.99  fof(f63,plain,(
% 2.11/0.99    ( ! [X0] : (k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0) )),
% 2.11/0.99    inference(definition_unfolding,[],[f31,f60])).
% 2.11/0.99  
% 2.11/0.99  fof(f3,axiom,(
% 2.11/0.99    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0),
% 2.11/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.11/0.99  
% 2.11/0.99  fof(f33,plain,(
% 2.11/0.99    ( ! [X0] : (k5_xboole_0(X0,X0) = k1_xboole_0) )),
% 2.11/0.99    inference(cnf_transformation,[],[f3])).
% 2.11/0.99  
% 2.11/0.99  fof(f52,plain,(
% 2.11/0.99    ( ! [X2,X0,X3] : (k4_tarski(X2,X3) != sK1(X0) | ~r2_hidden(X3,X0) | k1_xboole_0 = X0) )),
% 2.11/0.99    inference(cnf_transformation,[],[f27])).
% 2.11/0.99  
% 2.11/0.99  fof(f46,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) | X0 = X1) )),
% 2.11/0.99    inference(cnf_transformation,[],[f25])).
% 2.11/0.99  
% 2.11/0.99  fof(f68,plain,(
% 2.11/0.99    ( ! [X0,X1] : (k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) | X0 = X1) )),
% 2.11/0.99    inference(definition_unfolding,[],[f46,f61,f62,f62,f62])).
% 2.11/0.99  
% 2.11/0.99  fof(f35,plain,(
% 2.11/0.99    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | X0 != X3 | k1_tarski(X0) != X1) )),
% 2.11/0.99    inference(cnf_transformation,[],[f24])).
% 2.11/0.99  
% 2.11/0.99  fof(f66,plain,(
% 2.11/0.99    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | X0 != X3 | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1) )),
% 2.11/0.99    inference(definition_unfolding,[],[f35,f62])).
% 2.11/0.99  
% 2.11/0.99  fof(f70,plain,(
% 2.11/0.99    ( ! [X3,X1] : (r2_hidden(X3,X1) | k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3) != X1) )),
% 2.11/0.99    inference(equality_resolution,[],[f66])).
% 2.11/0.99  
% 2.11/0.99  fof(f71,plain,(
% 2.11/0.99    ( ! [X3] : (r2_hidden(X3,k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X3))) )),
% 2.11/0.99    inference(equality_resolution,[],[f70])).
% 2.11/0.99  
% 2.11/0.99  fof(f51,plain,(
% 2.11/0.99    ( ! [X2,X0,X3] : (k4_tarski(X2,X3) != sK1(X0) | ~r2_hidden(X2,X0) | k1_xboole_0 = X0) )),
% 2.11/0.99    inference(cnf_transformation,[],[f27])).
% 2.11/0.99  
% 2.11/0.99  cnf(c_13,negated_conjecture,
% 2.11/0.99      ( k1_mcart_1(sK2) = sK2 | k2_mcart_1(sK2) = sK2 ),
% 2.11/0.99      inference(cnf_transformation,[],[f54]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_14,negated_conjecture,
% 2.11/0.99      ( k4_tarski(sK3,sK4) = sK2 ),
% 2.11/0.99      inference(cnf_transformation,[],[f53]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_9,plain,
% 2.11/0.99      ( k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
% 2.11/0.99      inference(cnf_transformation,[],[f48]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_571,plain,
% 2.11/0.99      ( k1_mcart_1(sK2) = sK3 ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_14,c_9]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_586,plain,
% 2.11/0.99      ( k2_mcart_1(sK2) = sK2 | sK3 = sK2 ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_13,c_571]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_8,plain,
% 2.11/0.99      ( k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
% 2.11/0.99      inference(cnf_transformation,[],[f49]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_471,plain,
% 2.11/0.99      ( k2_mcart_1(sK2) = sK4 ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_14,c_8]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_588,plain,
% 2.11/0.99      ( sK4 = sK2 | sK3 = sK2 ),
% 2.11/0.99      inference(demodulation,[status(thm)],[c_586,c_471]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_12,plain,
% 2.11/0.99      ( r2_hidden(sK1(X0),X0) | k1_xboole_0 = X0 ),
% 2.11/0.99      inference(cnf_transformation,[],[f50]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_388,plain,
% 2.11/0.99      ( k1_xboole_0 = X0 | r2_hidden(sK1(X0),X0) = iProver_top ),
% 2.11/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_5,plain,
% 2.11/0.99      ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) | X0 = X1 ),
% 2.11/0.99      inference(cnf_transformation,[],[f72]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_391,plain,
% 2.11/0.99      ( X0 = X1
% 2.11/0.99      | r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) != iProver_top ),
% 2.11/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1412,plain,
% 2.11/0.99      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_xboole_0
% 2.11/0.99      | sK1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_388,c_391]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_7,plain,
% 2.11/0.99      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
% 2.11/0.99      inference(cnf_transformation,[],[f73]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_0,plain,
% 2.11/0.99      ( k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
% 2.11/0.99      inference(cnf_transformation,[],[f63]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1,plain,
% 2.11/0.99      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 2.11/0.99      inference(cnf_transformation,[],[f33]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_443,plain,
% 2.11/0.99      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_xboole_0 ),
% 2.11/0.99      inference(demodulation,[status(thm)],[c_7,c_0,c_1]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1810,plain,
% 2.11/0.99      ( sK1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = X0 ),
% 2.11/0.99      inference(global_propositional_subsumption,
% 2.11/0.99                [status(thm)],
% 2.11/0.99                [c_1412,c_443]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_10,plain,
% 2.11/0.99      ( ~ r2_hidden(X0,X1)
% 2.11/0.99      | k4_tarski(X2,X0) != sK1(X1)
% 2.11/0.99      | k1_xboole_0 = X1 ),
% 2.11/0.99      inference(cnf_transformation,[],[f52]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_390,plain,
% 2.11/0.99      ( k4_tarski(X0,X1) != sK1(X2)
% 2.11/0.99      | k1_xboole_0 = X2
% 2.11/0.99      | r2_hidden(X1,X2) != iProver_top ),
% 2.11/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1294,plain,
% 2.11/0.99      ( sK1(X0) != sK2
% 2.11/0.99      | k1_xboole_0 = X0
% 2.11/0.99      | r2_hidden(sK4,X0) != iProver_top ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_14,c_390]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1815,plain,
% 2.11/0.99      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_xboole_0
% 2.11/0.99      | sK2 != X0
% 2.11/0.99      | r2_hidden(sK4,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_1810,c_1294]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1866,plain,
% 2.11/0.99      ( sK2 != X0
% 2.11/0.99      | r2_hidden(sK4,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
% 2.11/0.99      inference(global_propositional_subsumption,
% 2.11/0.99                [status(thm)],
% 2.11/0.99                [c_1815,c_443]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1874,plain,
% 2.11/0.99      ( r2_hidden(sK4,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 2.11/0.99      inference(equality_resolution,[status(thm)],[c_1866]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_2032,plain,
% 2.11/0.99      ( sK3 = sK2
% 2.11/0.99      | r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_588,c_1874]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_24,plain,
% 2.11/0.99      ( k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k1_setfam_1(k6_enumset1(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)))) != k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) ),
% 2.11/0.99      inference(instantiation,[status(thm)],[c_7]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_6,plain,
% 2.11/0.99      ( X0 = X1
% 2.11/0.99      | k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k1_setfam_1(k6_enumset1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) = k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
% 2.11/0.99      inference(cnf_transformation,[],[f68]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_25,plain,
% 2.11/0.99      ( k5_xboole_0(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k1_setfam_1(k6_enumset1(k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2),k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)))) = k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)
% 2.11/0.99      | sK2 = sK2 ),
% 2.11/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_4,plain,
% 2.11/0.99      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ),
% 2.11/0.99      inference(cnf_transformation,[],[f71]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_29,plain,
% 2.11/0.99      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = iProver_top ),
% 2.11/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_31,plain,
% 2.11/0.99      ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) = iProver_top ),
% 2.11/0.99      inference(instantiation,[status(thm)],[c_29]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_454,plain,
% 2.11/0.99      ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) != k1_xboole_0 ),
% 2.11/0.99      inference(instantiation,[status(thm)],[c_443]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_591,plain,
% 2.11/0.99      ( k4_tarski(sK3,sK2) = sK2 | sK3 = sK2 ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_588,c_14]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1295,plain,
% 2.11/0.99      ( sK1(X0) != sK2
% 2.11/0.99      | sK3 = sK2
% 2.11/0.99      | k1_xboole_0 = X0
% 2.11/0.99      | r2_hidden(sK2,X0) != iProver_top ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_591,c_390]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1814,plain,
% 2.11/0.99      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_xboole_0
% 2.11/0.99      | sK3 = sK2
% 2.11/0.99      | sK2 != X0
% 2.11/0.99      | r2_hidden(sK2,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_1810,c_1295]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1853,plain,
% 2.11/0.99      ( k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2) = k1_xboole_0
% 2.11/0.99      | sK3 = sK2
% 2.11/0.99      | sK2 != sK2
% 2.11/0.99      | r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 2.11/0.99      inference(instantiation,[status(thm)],[c_1814]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_2278,plain,
% 2.11/0.99      ( sK3 = sK2 ),
% 2.11/0.99      inference(global_propositional_subsumption,
% 2.11/0.99                [status(thm)],
% 2.11/0.99                [c_2032,c_24,c_25,c_31,c_454,c_1853]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_11,plain,
% 2.11/0.99      ( ~ r2_hidden(X0,X1)
% 2.11/0.99      | k4_tarski(X0,X2) != sK1(X1)
% 2.11/0.99      | k1_xboole_0 = X1 ),
% 2.11/0.99      inference(cnf_transformation,[],[f51]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_389,plain,
% 2.11/0.99      ( k4_tarski(X0,X1) != sK1(X2)
% 2.11/0.99      | k1_xboole_0 = X2
% 2.11/0.99      | r2_hidden(X0,X2) != iProver_top ),
% 2.11/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_674,plain,
% 2.11/0.99      ( sK1(X0) != sK2
% 2.11/0.99      | k1_xboole_0 = X0
% 2.11/0.99      | r2_hidden(sK3,X0) != iProver_top ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_14,c_389]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_1816,plain,
% 2.11/0.99      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_xboole_0
% 2.11/0.99      | sK2 != X0
% 2.11/0.99      | r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
% 2.11/0.99      inference(superposition,[status(thm)],[c_1810,c_674]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_2020,plain,
% 2.11/0.99      ( sK2 != X0
% 2.11/0.99      | r2_hidden(sK3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) != iProver_top ),
% 2.11/0.99      inference(global_propositional_subsumption,
% 2.11/0.99                [status(thm)],
% 2.11/0.99                [c_1816,c_443]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_2028,plain,
% 2.11/0.99      ( r2_hidden(sK3,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 2.11/0.99      inference(equality_resolution,[status(thm)],[c_2020]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(c_2281,plain,
% 2.11/0.99      ( r2_hidden(sK2,k6_enumset1(sK2,sK2,sK2,sK2,sK2,sK2,sK2,sK2)) != iProver_top ),
% 2.11/0.99      inference(demodulation,[status(thm)],[c_2278,c_2028]) ).
% 2.11/0.99  
% 2.11/0.99  cnf(contradiction,plain,
% 2.11/0.99      ( $false ),
% 2.11/0.99      inference(minisat,[status(thm)],[c_2281,c_31]) ).
% 2.11/0.99  
% 2.11/0.99  
% 2.11/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.11/0.99  
% 2.11/0.99  ------                               Statistics
% 2.11/0.99  
% 2.11/0.99  ------ General
% 2.11/0.99  
% 2.11/0.99  abstr_ref_over_cycles:                  0
% 2.11/0.99  abstr_ref_under_cycles:                 0
% 2.11/0.99  gc_basic_clause_elim:                   0
% 2.11/0.99  forced_gc_time:                         0
% 2.11/0.99  parsing_time:                           0.01
% 2.11/0.99  unif_index_cands_time:                  0.
% 2.11/0.99  unif_index_add_time:                    0.
% 2.11/0.99  orderings_time:                         0.
% 2.11/0.99  out_proof_time:                         0.008
% 2.11/0.99  total_time:                             0.165
% 2.11/0.99  num_of_symbols:                         44
% 2.11/0.99  num_of_terms:                           3632
% 2.11/0.99  
% 2.11/0.99  ------ Preprocessing
% 2.11/0.99  
% 2.11/0.99  num_of_splits:                          0
% 2.11/0.99  num_of_split_atoms:                     0
% 2.11/0.99  num_of_reused_defs:                     0
% 2.11/0.99  num_eq_ax_congr_red:                    6
% 2.11/0.99  num_of_sem_filtered_clauses:            1
% 2.11/0.99  num_of_subtypes:                        0
% 2.11/0.99  monotx_restored_types:                  0
% 2.11/0.99  sat_num_of_epr_types:                   0
% 2.11/0.99  sat_num_of_non_cyclic_types:            0
% 2.11/0.99  sat_guarded_non_collapsed_types:        0
% 2.11/0.99  num_pure_diseq_elim:                    0
% 2.11/0.99  simp_replaced_by:                       0
% 2.11/0.99  res_preprocessed:                       64
% 2.11/0.99  prep_upred:                             0
% 2.11/0.99  prep_unflattend:                        19
% 2.11/0.99  smt_new_axioms:                         0
% 2.11/0.99  pred_elim_cands:                        1
% 2.11/0.99  pred_elim:                              0
% 2.11/0.99  pred_elim_cl:                           0
% 2.11/0.99  pred_elim_cycles:                       1
% 2.11/0.99  merged_defs:                            0
% 2.11/0.99  merged_defs_ncl:                        0
% 2.11/0.99  bin_hyper_res:                          0
% 2.11/0.99  prep_cycles:                            3
% 2.11/0.99  pred_elim_time:                         0.003
% 2.11/0.99  splitting_time:                         0.
% 2.11/0.99  sem_filter_time:                        0.
% 2.11/0.99  monotx_time:                            0.
% 2.11/0.99  subtype_inf_time:                       0.
% 2.11/0.99  
% 2.11/0.99  ------ Problem properties
% 2.11/0.99  
% 2.11/0.99  clauses:                                15
% 2.11/0.99  conjectures:                            2
% 2.11/0.99  epr:                                    0
% 2.11/0.99  horn:                                   11
% 2.11/0.99  ground:                                 2
% 2.11/0.99  unary:                                  7
% 2.11/0.99  binary:                                 4
% 2.11/0.99  lits:                                   27
% 2.11/0.99  lits_eq:                                20
% 2.11/0.99  fd_pure:                                0
% 2.11/0.99  fd_pseudo:                              0
% 2.11/0.99  fd_cond:                                3
% 2.11/0.99  fd_pseudo_cond:                         3
% 2.11/0.99  ac_symbols:                             0
% 2.11/0.99  
% 2.11/0.99  ------ Propositional Solver
% 2.11/0.99  
% 2.11/0.99  prop_solver_calls:                      23
% 2.11/0.99  prop_fast_solver_calls:                 378
% 2.11/0.99  smt_solver_calls:                       0
% 2.11/0.99  smt_fast_solver_calls:                  0
% 2.11/0.99  prop_num_of_clauses:                    981
% 2.11/0.99  prop_preprocess_simplified:             3024
% 2.11/0.99  prop_fo_subsumed:                       5
% 2.11/0.99  prop_solver_time:                       0.
% 2.11/0.99  smt_solver_time:                        0.
% 2.11/0.99  smt_fast_solver_time:                   0.
% 2.11/0.99  prop_fast_solver_time:                  0.
% 2.11/0.99  prop_unsat_core_time:                   0.
% 2.11/0.99  
% 2.11/0.99  ------ QBF
% 2.11/0.99  
% 2.11/0.99  qbf_q_res:                              0
% 2.11/0.99  qbf_num_tautologies:                    0
% 2.11/0.99  qbf_prep_cycles:                        0
% 2.11/0.99  
% 2.11/0.99  ------ BMC1
% 2.11/0.99  
% 2.11/0.99  bmc1_current_bound:                     -1
% 2.11/0.99  bmc1_last_solved_bound:                 -1
% 2.11/0.99  bmc1_unsat_core_size:                   -1
% 2.11/0.99  bmc1_unsat_core_parents_size:           -1
% 2.11/0.99  bmc1_merge_next_fun:                    0
% 2.11/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.11/0.99  
% 2.11/0.99  ------ Instantiation
% 2.11/0.99  
% 2.11/0.99  inst_num_of_clauses:                    320
% 2.11/0.99  inst_num_in_passive:                    124
% 2.11/0.99  inst_num_in_active:                     88
% 2.11/0.99  inst_num_in_unprocessed:                108
% 2.11/0.99  inst_num_of_loops:                      140
% 2.11/0.99  inst_num_of_learning_restarts:          0
% 2.11/0.99  inst_num_moves_active_passive:          50
% 2.11/0.99  inst_lit_activity:                      0
% 2.11/0.99  inst_lit_activity_moves:                0
% 2.11/0.99  inst_num_tautologies:                   0
% 2.11/0.99  inst_num_prop_implied:                  0
% 2.11/0.99  inst_num_existing_simplified:           0
% 2.11/0.99  inst_num_eq_res_simplified:             0
% 2.11/0.99  inst_num_child_elim:                    0
% 2.11/0.99  inst_num_of_dismatching_blockings:      144
% 2.11/0.99  inst_num_of_non_proper_insts:           229
% 2.11/0.99  inst_num_of_duplicates:                 0
% 2.11/0.99  inst_inst_num_from_inst_to_res:         0
% 2.11/0.99  inst_dismatching_checking_time:         0.
% 2.11/0.99  
% 2.11/0.99  ------ Resolution
% 2.11/0.99  
% 2.11/0.99  res_num_of_clauses:                     0
% 2.11/0.99  res_num_in_passive:                     0
% 2.11/0.99  res_num_in_active:                      0
% 2.11/0.99  res_num_of_loops:                       67
% 2.11/0.99  res_forward_subset_subsumed:            10
% 2.11/0.99  res_backward_subset_subsumed:           0
% 2.11/0.99  res_forward_subsumed:                   0
% 2.11/0.99  res_backward_subsumed:                  0
% 2.11/0.99  res_forward_subsumption_resolution:     0
% 2.11/0.99  res_backward_subsumption_resolution:    0
% 2.11/0.99  res_clause_to_clause_subsumption:       56
% 2.11/0.99  res_orphan_elimination:                 0
% 2.11/0.99  res_tautology_del:                      6
% 2.11/0.99  res_num_eq_res_simplified:              0
% 2.11/0.99  res_num_sel_changes:                    0
% 2.11/0.99  res_moves_from_active_to_pass:          0
% 2.11/0.99  
% 2.11/0.99  ------ Superposition
% 2.11/0.99  
% 2.11/0.99  sup_time_total:                         0.
% 2.11/0.99  sup_time_generating:                    0.
% 2.11/0.99  sup_time_sim_full:                      0.
% 2.11/0.99  sup_time_sim_immed:                     0.
% 2.11/0.99  
% 2.11/0.99  sup_num_of_clauses:                     26
% 2.11/0.99  sup_num_in_active:                      20
% 2.11/0.99  sup_num_in_passive:                     6
% 2.11/0.99  sup_num_of_loops:                       27
% 2.11/0.99  sup_fw_superposition:                   10
% 2.11/0.99  sup_bw_superposition:                   12
% 2.11/0.99  sup_immediate_simplified:               4
% 2.11/0.99  sup_given_eliminated:                   0
% 2.11/0.99  comparisons_done:                       0
% 2.11/0.99  comparisons_avoided:                    4
% 2.11/0.99  
% 2.11/0.99  ------ Simplifications
% 2.11/0.99  
% 2.11/0.99  
% 2.11/0.99  sim_fw_subset_subsumed:                 2
% 2.11/0.99  sim_bw_subset_subsumed:                 0
% 2.11/0.99  sim_fw_subsumed:                        0
% 2.11/0.99  sim_bw_subsumed:                        0
% 2.11/0.99  sim_fw_subsumption_res:                 0
% 2.11/0.99  sim_bw_subsumption_res:                 0
% 2.11/0.99  sim_tautology_del:                      0
% 2.11/0.99  sim_eq_tautology_del:                   4
% 2.11/0.99  sim_eq_res_simp:                        0
% 2.11/0.99  sim_fw_demodulated:                     3
% 2.11/0.99  sim_bw_demodulated:                     7
% 2.11/0.99  sim_light_normalised:                   0
% 2.11/0.99  sim_joinable_taut:                      0
% 2.11/0.99  sim_joinable_simp:                      0
% 2.11/0.99  sim_ac_normalised:                      0
% 2.11/0.99  sim_smt_subsumption:                    0
% 2.11/0.99  
%------------------------------------------------------------------------------
