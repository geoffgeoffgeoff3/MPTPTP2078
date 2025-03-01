%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:31:17 EST 2020

% Result     : Theorem 3.97s
% Output     : CNFRefutation 3.97s
% Verified   : 
% Statistics : Number of formulae       :   98 ( 135 expanded)
%              Number of clauses        :   33 (  37 expanded)
%              Number of leaves         :   19 (  33 expanded)
%              Depth                    :   15
%              Number of atoms          :  326 ( 394 expanded)
%              Number of equality atoms :  242 ( 294 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   18 (   1 average)
%              Maximal term depth       :    6 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f21,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ~ ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f40,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(nnf_transformation,[],[f28])).

fof(f41,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(flattening,[],[f40])).

fof(f78,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
      | k1_tarski(X1) != X0 ) ),
    inference(cnf_transformation,[],[f41])).

fof(f14,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f69,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f14])).

fof(f102,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
      | k2_tarski(X1,X1) != X0 ) ),
    inference(definition_unfolding,[],[f78,f69])).

fof(f118,plain,(
    ! [X2,X1] : r1_tarski(k2_tarski(X1,X1),k2_tarski(X1,X2)) ),
    inference(equality_resolution,[],[f102])).

fof(f22,conjecture,(
    ! [X0,X1,X2,X3] :
      ~ ( X0 != X3
        & X0 != X2
        & r1_tarski(k2_tarski(X0,X1),k2_tarski(X2,X3)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ~ ( X0 != X3
          & X0 != X2
          & r1_tarski(k2_tarski(X0,X1),k2_tarski(X2,X3)) ) ),
    inference(negated_conjecture,[],[f22])).

fof(f29,plain,(
    ? [X0,X1,X2,X3] :
      ( X0 != X3
      & X0 != X2
      & r1_tarski(k2_tarski(X0,X1),k2_tarski(X2,X3)) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f42,plain,
    ( ? [X0,X1,X2,X3] :
        ( X0 != X3
        & X0 != X2
        & r1_tarski(k2_tarski(X0,X1),k2_tarski(X2,X3)) )
   => ( sK2 != sK5
      & sK2 != sK4
      & r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)) ) ),
    introduced(choice_axiom,[])).

fof(f43,plain,
    ( sK2 != sK5
    & sK2 != sK4
    & r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f29,f42])).

fof(f81,plain,(
    r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)) ),
    inference(cnf_transformation,[],[f43])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f49,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k3_xboole_0(X1,X2))
     => r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X1)
      | ~ r1_tarski(X0,k3_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r1_tarski(X0,k3_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f10,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f10])).

fof(f4,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f84,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) ),
    inference(definition_unfolding,[],[f53,f47])).

fof(f91,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k5_xboole_0(X1,k5_xboole_0(X0,k3_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f44,f84,f84])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f11])).

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
    inference(nnf_transformation,[],[f27])).

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
    inference(flattening,[],[f30])).

fof(f32,plain,(
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
    inference(rectify,[],[f31])).

fof(f33,plain,(
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

fof(f34,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f32,f33])).

fof(f55,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f34])).

fof(f13,axiom,(
    ! [X0,X1,X2] : k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f68,plain,(
    ! [X2,X0,X1] : k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f13])).

fof(f85,plain,(
    ! [X2,X0,X1] : k5_xboole_0(k2_tarski(X0,X0),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X0,X0)))) = k1_enumset1(X0,X1,X2) ),
    inference(definition_unfolding,[],[f68,f84,f69])).

fof(f98,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k5_xboole_0(k2_tarski(X0,X0),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X0,X0)))) != X3 ) ),
    inference(definition_unfolding,[],[f55,f85])).

fof(f108,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k5_xboole_0(k2_tarski(X5,X5),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X5,X5)))) != X3 ) ),
    inference(equality_resolution,[],[f98])).

fof(f109,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k5_xboole_0(k2_tarski(X5,X5),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X5,X5))))) ),
    inference(equality_resolution,[],[f108])).

fof(f9,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f9])).

fof(f7,axiom,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f89,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k3_xboole_0(X0,X1)))) ),
    inference(definition_unfolding,[],[f51,f47,f47])).

fof(f3,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f3])).

fof(f46,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f24])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( k2_tarski(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( X1 = X3
            | X0 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
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
    inference(nnf_transformation,[],[f12])).

fof(f36,plain,(
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
    inference(flattening,[],[f35])).

fof(f37,plain,(
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
    inference(rectify,[],[f36])).

fof(f38,plain,(
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

fof(f39,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f37,f38])).

fof(f62,plain,(
    ! [X4,X2,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,X2)
      | k2_tarski(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f39])).

fof(f115,plain,(
    ! [X4,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,k2_tarski(X0,X1)) ) ),
    inference(equality_resolution,[],[f62])).

fof(f83,plain,(
    sK2 != sK5 ),
    inference(cnf_transformation,[],[f43])).

fof(f82,plain,(
    sK2 != sK4 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_26,plain,
    ( r1_tarski(k2_tarski(X0,X0),k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f118])).

cnf(c_1356,plain,
    ( r1_tarski(k2_tarski(X0,X0),k2_tarski(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_31,negated_conjecture,
    ( r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1353,plain,
    ( r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_6,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1373,plain,
    ( k3_xboole_0(X0,X1) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_4839,plain,
    ( k3_xboole_0(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)) = k2_tarski(sK2,sK3) ),
    inference(superposition,[status(thm)],[c_1353,c_1373])).

cnf(c_3,plain,
    ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_5,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(X0,k3_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1374,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r1_tarski(X0,k3_xboole_0(X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_6819,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r1_tarski(X0,k3_xboole_0(X2,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3,c_1374])).

cnf(c_6888,plain,
    ( r1_tarski(X0,k2_tarski(sK4,sK5)) = iProver_top
    | r1_tarski(X0,k2_tarski(sK2,sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4839,c_6819])).

cnf(c_6976,plain,
    ( r1_tarski(k2_tarski(sK2,sK2),k2_tarski(sK4,sK5)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1356,c_6888])).

cnf(c_7685,plain,
    ( k3_xboole_0(k2_tarski(sK2,sK2),k2_tarski(sK4,sK5)) = k2_tarski(sK2,sK2) ),
    inference(superposition,[status(thm)],[c_6976,c_1373])).

cnf(c_2,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k5_xboole_0(X1,k5_xboole_0(X0,k3_xboole_0(X0,X1))) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_15,plain,
    ( r2_hidden(X0,k5_xboole_0(k2_tarski(X0,X0),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X0,X0))))) ),
    inference(cnf_transformation,[],[f109])).

cnf(c_1366,plain,
    ( r2_hidden(X0,k5_xboole_0(k2_tarski(X0,X0),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X0,X0))))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_12928,plain,
    ( r2_hidden(X0,k5_xboole_0(k2_tarski(X1,X2),k5_xboole_0(k2_tarski(X0,X0),k3_xboole_0(k2_tarski(X0,X0),k2_tarski(X1,X2))))) = iProver_top ),
    inference(superposition,[status(thm)],[c_2,c_1366])).

cnf(c_16971,plain,
    ( r2_hidden(sK2,k5_xboole_0(k2_tarski(sK4,sK5),k5_xboole_0(k2_tarski(sK2,sK2),k2_tarski(sK2,sK2)))) = iProver_top ),
    inference(superposition,[status(thm)],[c_7685,c_12928])).

cnf(c_8,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_7,plain,
    ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k3_xboole_0(X0,X1)))) = k3_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_1936,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k1_xboole_0))) = k3_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_7,c_0])).

cnf(c_4,plain,
    ( k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1941,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1936,c_4,c_7,c_8])).

cnf(c_16979,plain,
    ( r2_hidden(sK2,k2_tarski(sK4,sK5)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_16971,c_8,c_1941])).

cnf(c_22,plain,
    ( ~ r2_hidden(X0,k2_tarski(X1,X2))
    | X0 = X1
    | X0 = X2 ),
    inference(cnf_transformation,[],[f115])).

cnf(c_1411,plain,
    ( ~ r2_hidden(sK2,k2_tarski(sK4,X0))
    | sK2 = X0
    | sK2 = sK4 ),
    inference(instantiation,[status(thm)],[c_22])).

cnf(c_2781,plain,
    ( ~ r2_hidden(sK2,k2_tarski(sK4,sK5))
    | sK2 = sK4
    | sK2 = sK5 ),
    inference(instantiation,[status(thm)],[c_1411])).

cnf(c_2782,plain,
    ( sK2 = sK4
    | sK2 = sK5
    | r2_hidden(sK2,k2_tarski(sK4,sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2781])).

cnf(c_29,negated_conjecture,
    ( sK2 != sK5 ),
    inference(cnf_transformation,[],[f83])).

cnf(c_30,negated_conjecture,
    ( sK2 != sK4 ),
    inference(cnf_transformation,[],[f82])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_16979,c_2782,c_29,c_30])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n022.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:18:55 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 3.97/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.97/0.98  
% 3.97/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.97/0.98  
% 3.97/0.98  ------  iProver source info
% 3.97/0.98  
% 3.97/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.97/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.97/0.98  git: non_committed_changes: false
% 3.97/0.98  git: last_make_outside_of_git: false
% 3.97/0.98  
% 3.97/0.98  ------ 
% 3.97/0.98  
% 3.97/0.98  ------ Input Options
% 3.97/0.98  
% 3.97/0.98  --out_options                           all
% 3.97/0.98  --tptp_safe_out                         true
% 3.97/0.98  --problem_path                          ""
% 3.97/0.98  --include_path                          ""
% 3.97/0.98  --clausifier                            res/vclausify_rel
% 3.97/0.98  --clausifier_options                    ""
% 3.97/0.98  --stdin                                 false
% 3.97/0.98  --stats_out                             all
% 3.97/0.98  
% 3.97/0.98  ------ General Options
% 3.97/0.98  
% 3.97/0.98  --fof                                   false
% 3.97/0.98  --time_out_real                         305.
% 3.97/0.98  --time_out_virtual                      -1.
% 3.97/0.98  --symbol_type_check                     false
% 3.97/0.98  --clausify_out                          false
% 3.97/0.98  --sig_cnt_out                           false
% 3.97/0.98  --trig_cnt_out                          false
% 3.97/0.98  --trig_cnt_out_tolerance                1.
% 3.97/0.98  --trig_cnt_out_sk_spl                   false
% 3.97/0.98  --abstr_cl_out                          false
% 3.97/0.98  
% 3.97/0.98  ------ Global Options
% 3.97/0.98  
% 3.97/0.98  --schedule                              default
% 3.97/0.98  --add_important_lit                     false
% 3.97/0.98  --prop_solver_per_cl                    1000
% 3.97/0.98  --min_unsat_core                        false
% 3.97/0.98  --soft_assumptions                      false
% 3.97/0.98  --soft_lemma_size                       3
% 3.97/0.98  --prop_impl_unit_size                   0
% 3.97/0.98  --prop_impl_unit                        []
% 3.97/0.98  --share_sel_clauses                     true
% 3.97/0.98  --reset_solvers                         false
% 3.97/0.98  --bc_imp_inh                            [conj_cone]
% 3.97/0.98  --conj_cone_tolerance                   3.
% 3.97/0.98  --extra_neg_conj                        none
% 3.97/0.98  --large_theory_mode                     true
% 3.97/0.98  --prolific_symb_bound                   200
% 3.97/0.98  --lt_threshold                          2000
% 3.97/0.98  --clause_weak_htbl                      true
% 3.97/0.98  --gc_record_bc_elim                     false
% 3.97/0.98  
% 3.97/0.98  ------ Preprocessing Options
% 3.97/0.98  
% 3.97/0.98  --preprocessing_flag                    true
% 3.97/0.98  --time_out_prep_mult                    0.1
% 3.97/0.98  --splitting_mode                        input
% 3.97/0.98  --splitting_grd                         true
% 3.97/0.98  --splitting_cvd                         false
% 3.97/0.98  --splitting_cvd_svl                     false
% 3.97/0.98  --splitting_nvd                         32
% 3.97/0.98  --sub_typing                            true
% 3.97/0.98  --prep_gs_sim                           true
% 3.97/0.98  --prep_unflatten                        true
% 3.97/0.98  --prep_res_sim                          true
% 3.97/0.98  --prep_upred                            true
% 3.97/0.98  --prep_sem_filter                       exhaustive
% 3.97/0.98  --prep_sem_filter_out                   false
% 3.97/0.98  --pred_elim                             true
% 3.97/0.98  --res_sim_input                         true
% 3.97/0.98  --eq_ax_congr_red                       true
% 3.97/0.98  --pure_diseq_elim                       true
% 3.97/0.98  --brand_transform                       false
% 3.97/0.98  --non_eq_to_eq                          false
% 3.97/0.98  --prep_def_merge                        true
% 3.97/0.98  --prep_def_merge_prop_impl              false
% 3.97/0.98  --prep_def_merge_mbd                    true
% 3.97/0.98  --prep_def_merge_tr_red                 false
% 3.97/0.98  --prep_def_merge_tr_cl                  false
% 3.97/0.98  --smt_preprocessing                     true
% 3.97/0.98  --smt_ac_axioms                         fast
% 3.97/0.98  --preprocessed_out                      false
% 3.97/0.98  --preprocessed_stats                    false
% 3.97/0.98  
% 3.97/0.98  ------ Abstraction refinement Options
% 3.97/0.98  
% 3.97/0.98  --abstr_ref                             []
% 3.97/0.98  --abstr_ref_prep                        false
% 3.97/0.98  --abstr_ref_until_sat                   false
% 3.97/0.98  --abstr_ref_sig_restrict                funpre
% 3.97/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.97/0.98  --abstr_ref_under                       []
% 3.97/0.98  
% 3.97/0.98  ------ SAT Options
% 3.97/0.98  
% 3.97/0.98  --sat_mode                              false
% 3.97/0.98  --sat_fm_restart_options                ""
% 3.97/0.98  --sat_gr_def                            false
% 3.97/0.98  --sat_epr_types                         true
% 3.97/0.98  --sat_non_cyclic_types                  false
% 3.97/0.98  --sat_finite_models                     false
% 3.97/0.98  --sat_fm_lemmas                         false
% 3.97/0.98  --sat_fm_prep                           false
% 3.97/0.98  --sat_fm_uc_incr                        true
% 3.97/0.98  --sat_out_model                         small
% 3.97/0.98  --sat_out_clauses                       false
% 3.97/0.98  
% 3.97/0.98  ------ QBF Options
% 3.97/0.98  
% 3.97/0.98  --qbf_mode                              false
% 3.97/0.98  --qbf_elim_univ                         false
% 3.97/0.98  --qbf_dom_inst                          none
% 3.97/0.98  --qbf_dom_pre_inst                      false
% 3.97/0.98  --qbf_sk_in                             false
% 3.97/0.98  --qbf_pred_elim                         true
% 3.97/0.98  --qbf_split                             512
% 3.97/0.98  
% 3.97/0.98  ------ BMC1 Options
% 3.97/0.98  
% 3.97/0.98  --bmc1_incremental                      false
% 3.97/0.98  --bmc1_axioms                           reachable_all
% 3.97/0.98  --bmc1_min_bound                        0
% 3.97/0.98  --bmc1_max_bound                        -1
% 3.97/0.98  --bmc1_max_bound_default                -1
% 3.97/0.98  --bmc1_symbol_reachability              true
% 3.97/0.98  --bmc1_property_lemmas                  false
% 3.97/0.98  --bmc1_k_induction                      false
% 3.97/0.98  --bmc1_non_equiv_states                 false
% 3.97/0.98  --bmc1_deadlock                         false
% 3.97/0.98  --bmc1_ucm                              false
% 3.97/0.98  --bmc1_add_unsat_core                   none
% 3.97/0.98  --bmc1_unsat_core_children              false
% 3.97/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.97/0.98  --bmc1_out_stat                         full
% 3.97/0.98  --bmc1_ground_init                      false
% 3.97/0.98  --bmc1_pre_inst_next_state              false
% 3.97/0.98  --bmc1_pre_inst_state                   false
% 3.97/0.98  --bmc1_pre_inst_reach_state             false
% 3.97/0.98  --bmc1_out_unsat_core                   false
% 3.97/0.98  --bmc1_aig_witness_out                  false
% 3.97/0.98  --bmc1_verbose                          false
% 3.97/0.98  --bmc1_dump_clauses_tptp                false
% 3.97/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.97/0.98  --bmc1_dump_file                        -
% 3.97/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.97/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.97/0.98  --bmc1_ucm_extend_mode                  1
% 3.97/0.98  --bmc1_ucm_init_mode                    2
% 3.97/0.98  --bmc1_ucm_cone_mode                    none
% 3.97/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.97/0.98  --bmc1_ucm_relax_model                  4
% 3.97/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.97/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.97/0.98  --bmc1_ucm_layered_model                none
% 3.97/0.98  --bmc1_ucm_max_lemma_size               10
% 3.97/0.98  
% 3.97/0.98  ------ AIG Options
% 3.97/0.98  
% 3.97/0.98  --aig_mode                              false
% 3.97/0.98  
% 3.97/0.98  ------ Instantiation Options
% 3.97/0.98  
% 3.97/0.98  --instantiation_flag                    true
% 3.97/0.98  --inst_sos_flag                         true
% 3.97/0.98  --inst_sos_phase                        true
% 3.97/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.97/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.97/0.98  --inst_lit_sel_side                     num_symb
% 3.97/0.98  --inst_solver_per_active                1400
% 3.97/0.98  --inst_solver_calls_frac                1.
% 3.97/0.98  --inst_passive_queue_type               priority_queues
% 3.97/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.97/0.98  --inst_passive_queues_freq              [25;2]
% 3.97/0.98  --inst_dismatching                      true
% 3.97/0.98  --inst_eager_unprocessed_to_passive     true
% 3.97/0.98  --inst_prop_sim_given                   true
% 3.97/0.98  --inst_prop_sim_new                     false
% 3.97/0.98  --inst_subs_new                         false
% 3.97/0.98  --inst_eq_res_simp                      false
% 3.97/0.98  --inst_subs_given                       false
% 3.97/0.98  --inst_orphan_elimination               true
% 3.97/0.98  --inst_learning_loop_flag               true
% 3.97/0.98  --inst_learning_start                   3000
% 3.97/0.98  --inst_learning_factor                  2
% 3.97/0.98  --inst_start_prop_sim_after_learn       3
% 3.97/0.98  --inst_sel_renew                        solver
% 3.97/0.98  --inst_lit_activity_flag                true
% 3.97/0.98  --inst_restr_to_given                   false
% 3.97/0.98  --inst_activity_threshold               500
% 3.97/0.98  --inst_out_proof                        true
% 3.97/0.98  
% 3.97/0.98  ------ Resolution Options
% 3.97/0.98  
% 3.97/0.98  --resolution_flag                       true
% 3.97/0.98  --res_lit_sel                           adaptive
% 3.97/0.98  --res_lit_sel_side                      none
% 3.97/0.98  --res_ordering                          kbo
% 3.97/0.98  --res_to_prop_solver                    active
% 3.97/0.98  --res_prop_simpl_new                    false
% 3.97/0.98  --res_prop_simpl_given                  true
% 3.97/0.98  --res_passive_queue_type                priority_queues
% 3.97/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.97/0.98  --res_passive_queues_freq               [15;5]
% 3.97/0.98  --res_forward_subs                      full
% 3.97/0.98  --res_backward_subs                     full
% 3.97/0.98  --res_forward_subs_resolution           true
% 3.97/0.98  --res_backward_subs_resolution          true
% 3.97/0.98  --res_orphan_elimination                true
% 3.97/0.98  --res_time_limit                        2.
% 3.97/0.98  --res_out_proof                         true
% 3.97/0.98  
% 3.97/0.98  ------ Superposition Options
% 3.97/0.98  
% 3.97/0.98  --superposition_flag                    true
% 3.97/0.98  --sup_passive_queue_type                priority_queues
% 3.97/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.97/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.97/0.98  --demod_completeness_check              fast
% 3.97/0.98  --demod_use_ground                      true
% 3.97/0.98  --sup_to_prop_solver                    passive
% 3.97/0.98  --sup_prop_simpl_new                    true
% 3.97/0.98  --sup_prop_simpl_given                  true
% 3.97/0.98  --sup_fun_splitting                     true
% 3.97/0.98  --sup_smt_interval                      50000
% 3.97/0.98  
% 3.97/0.98  ------ Superposition Simplification Setup
% 3.97/0.98  
% 3.97/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.97/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.97/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.97/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.97/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.97/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.97/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.97/0.98  --sup_immed_triv                        [TrivRules]
% 3.97/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.97/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.97/0.98  --sup_immed_bw_main                     []
% 3.97/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.97/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.97/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.97/0.98  --sup_input_bw                          []
% 3.97/0.98  
% 3.97/0.98  ------ Combination Options
% 3.97/0.98  
% 3.97/0.98  --comb_res_mult                         3
% 3.97/0.98  --comb_sup_mult                         2
% 3.97/0.98  --comb_inst_mult                        10
% 3.97/0.98  
% 3.97/0.98  ------ Debug Options
% 3.97/0.98  
% 3.97/0.98  --dbg_backtrace                         false
% 3.97/0.98  --dbg_dump_prop_clauses                 false
% 3.97/0.98  --dbg_dump_prop_clauses_file            -
% 3.97/0.98  --dbg_out_stat                          false
% 3.97/0.98  ------ Parsing...
% 3.97/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.97/0.98  
% 3.97/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.97/0.98  
% 3.97/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.97/0.98  
% 3.97/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.97/0.98  ------ Proving...
% 3.97/0.98  ------ Problem Properties 
% 3.97/0.98  
% 3.97/0.98  
% 3.97/0.98  clauses                                 32
% 3.97/0.98  conjectures                             3
% 3.97/0.98  EPR                                     2
% 3.97/0.98  Horn                                    27
% 3.97/0.98  unary                                   20
% 3.97/0.98  binary                                  2
% 3.97/0.98  lits                                    60
% 3.97/0.98  lits eq                                 37
% 3.97/0.98  fd_pure                                 0
% 3.97/0.98  fd_pseudo                               0
% 3.97/0.98  fd_cond                                 0
% 3.97/0.98  fd_pseudo_cond                          8
% 3.97/0.98  AC symbols                              0
% 3.97/0.98  
% 3.97/0.98  ------ Schedule dynamic 5 is on 
% 3.97/0.98  
% 3.97/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.97/0.98  
% 3.97/0.98  
% 3.97/0.98  ------ 
% 3.97/0.98  Current options:
% 3.97/0.98  ------ 
% 3.97/0.98  
% 3.97/0.98  ------ Input Options
% 3.97/0.98  
% 3.97/0.98  --out_options                           all
% 3.97/0.98  --tptp_safe_out                         true
% 3.97/0.98  --problem_path                          ""
% 3.97/0.98  --include_path                          ""
% 3.97/0.98  --clausifier                            res/vclausify_rel
% 3.97/0.98  --clausifier_options                    ""
% 3.97/0.98  --stdin                                 false
% 3.97/0.98  --stats_out                             all
% 3.97/0.98  
% 3.97/0.98  ------ General Options
% 3.97/0.98  
% 3.97/0.98  --fof                                   false
% 3.97/0.98  --time_out_real                         305.
% 3.97/0.98  --time_out_virtual                      -1.
% 3.97/0.98  --symbol_type_check                     false
% 3.97/0.98  --clausify_out                          false
% 3.97/0.98  --sig_cnt_out                           false
% 3.97/0.98  --trig_cnt_out                          false
% 3.97/0.98  --trig_cnt_out_tolerance                1.
% 3.97/0.98  --trig_cnt_out_sk_spl                   false
% 3.97/0.98  --abstr_cl_out                          false
% 3.97/0.98  
% 3.97/0.98  ------ Global Options
% 3.97/0.98  
% 3.97/0.98  --schedule                              default
% 3.97/0.98  --add_important_lit                     false
% 3.97/0.98  --prop_solver_per_cl                    1000
% 3.97/0.98  --min_unsat_core                        false
% 3.97/0.98  --soft_assumptions                      false
% 3.97/0.98  --soft_lemma_size                       3
% 3.97/0.98  --prop_impl_unit_size                   0
% 3.97/0.98  --prop_impl_unit                        []
% 3.97/0.98  --share_sel_clauses                     true
% 3.97/0.98  --reset_solvers                         false
% 3.97/0.98  --bc_imp_inh                            [conj_cone]
% 3.97/0.98  --conj_cone_tolerance                   3.
% 3.97/0.98  --extra_neg_conj                        none
% 3.97/0.98  --large_theory_mode                     true
% 3.97/0.98  --prolific_symb_bound                   200
% 3.97/0.98  --lt_threshold                          2000
% 3.97/0.98  --clause_weak_htbl                      true
% 3.97/0.98  --gc_record_bc_elim                     false
% 3.97/0.98  
% 3.97/0.98  ------ Preprocessing Options
% 3.97/0.98  
% 3.97/0.98  --preprocessing_flag                    true
% 3.97/0.98  --time_out_prep_mult                    0.1
% 3.97/0.98  --splitting_mode                        input
% 3.97/0.98  --splitting_grd                         true
% 3.97/0.98  --splitting_cvd                         false
% 3.97/0.98  --splitting_cvd_svl                     false
% 3.97/0.98  --splitting_nvd                         32
% 3.97/0.98  --sub_typing                            true
% 3.97/0.98  --prep_gs_sim                           true
% 3.97/0.98  --prep_unflatten                        true
% 3.97/0.98  --prep_res_sim                          true
% 3.97/0.98  --prep_upred                            true
% 3.97/0.98  --prep_sem_filter                       exhaustive
% 3.97/0.98  --prep_sem_filter_out                   false
% 3.97/0.98  --pred_elim                             true
% 3.97/0.98  --res_sim_input                         true
% 3.97/0.98  --eq_ax_congr_red                       true
% 3.97/0.98  --pure_diseq_elim                       true
% 3.97/0.98  --brand_transform                       false
% 3.97/0.98  --non_eq_to_eq                          false
% 3.97/0.98  --prep_def_merge                        true
% 3.97/0.98  --prep_def_merge_prop_impl              false
% 3.97/0.98  --prep_def_merge_mbd                    true
% 3.97/0.98  --prep_def_merge_tr_red                 false
% 3.97/0.98  --prep_def_merge_tr_cl                  false
% 3.97/0.98  --smt_preprocessing                     true
% 3.97/0.98  --smt_ac_axioms                         fast
% 3.97/0.98  --preprocessed_out                      false
% 3.97/0.98  --preprocessed_stats                    false
% 3.97/0.98  
% 3.97/0.98  ------ Abstraction refinement Options
% 3.97/0.98  
% 3.97/0.98  --abstr_ref                             []
% 3.97/0.98  --abstr_ref_prep                        false
% 3.97/0.98  --abstr_ref_until_sat                   false
% 3.97/0.98  --abstr_ref_sig_restrict                funpre
% 3.97/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.97/0.98  --abstr_ref_under                       []
% 3.97/0.98  
% 3.97/0.98  ------ SAT Options
% 3.97/0.98  
% 3.97/0.98  --sat_mode                              false
% 3.97/0.98  --sat_fm_restart_options                ""
% 3.97/0.98  --sat_gr_def                            false
% 3.97/0.98  --sat_epr_types                         true
% 3.97/0.98  --sat_non_cyclic_types                  false
% 3.97/0.98  --sat_finite_models                     false
% 3.97/0.98  --sat_fm_lemmas                         false
% 3.97/0.98  --sat_fm_prep                           false
% 3.97/0.98  --sat_fm_uc_incr                        true
% 3.97/0.98  --sat_out_model                         small
% 3.97/0.98  --sat_out_clauses                       false
% 3.97/0.98  
% 3.97/0.98  ------ QBF Options
% 3.97/0.98  
% 3.97/0.98  --qbf_mode                              false
% 3.97/0.98  --qbf_elim_univ                         false
% 3.97/0.98  --qbf_dom_inst                          none
% 3.97/0.98  --qbf_dom_pre_inst                      false
% 3.97/0.98  --qbf_sk_in                             false
% 3.97/0.98  --qbf_pred_elim                         true
% 3.97/0.98  --qbf_split                             512
% 3.97/0.98  
% 3.97/0.98  ------ BMC1 Options
% 3.97/0.98  
% 3.97/0.98  --bmc1_incremental                      false
% 3.97/0.98  --bmc1_axioms                           reachable_all
% 3.97/0.98  --bmc1_min_bound                        0
% 3.97/0.98  --bmc1_max_bound                        -1
% 3.97/0.98  --bmc1_max_bound_default                -1
% 3.97/0.98  --bmc1_symbol_reachability              true
% 3.97/0.98  --bmc1_property_lemmas                  false
% 3.97/0.98  --bmc1_k_induction                      false
% 3.97/0.98  --bmc1_non_equiv_states                 false
% 3.97/0.98  --bmc1_deadlock                         false
% 3.97/0.98  --bmc1_ucm                              false
% 3.97/0.98  --bmc1_add_unsat_core                   none
% 3.97/0.98  --bmc1_unsat_core_children              false
% 3.97/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.97/0.98  --bmc1_out_stat                         full
% 3.97/0.98  --bmc1_ground_init                      false
% 3.97/0.98  --bmc1_pre_inst_next_state              false
% 3.97/0.98  --bmc1_pre_inst_state                   false
% 3.97/0.98  --bmc1_pre_inst_reach_state             false
% 3.97/0.98  --bmc1_out_unsat_core                   false
% 3.97/0.98  --bmc1_aig_witness_out                  false
% 3.97/0.98  --bmc1_verbose                          false
% 3.97/0.98  --bmc1_dump_clauses_tptp                false
% 3.97/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.97/0.98  --bmc1_dump_file                        -
% 3.97/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.97/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.97/0.98  --bmc1_ucm_extend_mode                  1
% 3.97/0.98  --bmc1_ucm_init_mode                    2
% 3.97/0.98  --bmc1_ucm_cone_mode                    none
% 3.97/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.97/0.98  --bmc1_ucm_relax_model                  4
% 3.97/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.97/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.97/0.98  --bmc1_ucm_layered_model                none
% 3.97/0.98  --bmc1_ucm_max_lemma_size               10
% 3.97/0.98  
% 3.97/0.98  ------ AIG Options
% 3.97/0.98  
% 3.97/0.98  --aig_mode                              false
% 3.97/0.98  
% 3.97/0.98  ------ Instantiation Options
% 3.97/0.98  
% 3.97/0.98  --instantiation_flag                    true
% 3.97/0.98  --inst_sos_flag                         true
% 3.97/0.98  --inst_sos_phase                        true
% 3.97/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.97/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.97/0.98  --inst_lit_sel_side                     none
% 3.97/0.98  --inst_solver_per_active                1400
% 3.97/0.98  --inst_solver_calls_frac                1.
% 3.97/0.98  --inst_passive_queue_type               priority_queues
% 3.97/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.97/0.98  --inst_passive_queues_freq              [25;2]
% 3.97/0.98  --inst_dismatching                      true
% 3.97/0.98  --inst_eager_unprocessed_to_passive     true
% 3.97/0.98  --inst_prop_sim_given                   true
% 3.97/0.98  --inst_prop_sim_new                     false
% 3.97/0.98  --inst_subs_new                         false
% 3.97/0.98  --inst_eq_res_simp                      false
% 3.97/0.98  --inst_subs_given                       false
% 3.97/0.98  --inst_orphan_elimination               true
% 3.97/0.98  --inst_learning_loop_flag               true
% 3.97/0.98  --inst_learning_start                   3000
% 3.97/0.98  --inst_learning_factor                  2
% 3.97/0.98  --inst_start_prop_sim_after_learn       3
% 3.97/0.98  --inst_sel_renew                        solver
% 3.97/0.98  --inst_lit_activity_flag                true
% 3.97/0.98  --inst_restr_to_given                   false
% 3.97/0.98  --inst_activity_threshold               500
% 3.97/0.98  --inst_out_proof                        true
% 3.97/0.98  
% 3.97/0.98  ------ Resolution Options
% 3.97/0.98  
% 3.97/0.98  --resolution_flag                       false
% 3.97/0.98  --res_lit_sel                           adaptive
% 3.97/0.98  --res_lit_sel_side                      none
% 3.97/0.98  --res_ordering                          kbo
% 3.97/0.98  --res_to_prop_solver                    active
% 3.97/0.98  --res_prop_simpl_new                    false
% 3.97/0.98  --res_prop_simpl_given                  true
% 3.97/0.98  --res_passive_queue_type                priority_queues
% 3.97/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.97/0.98  --res_passive_queues_freq               [15;5]
% 3.97/0.98  --res_forward_subs                      full
% 3.97/0.98  --res_backward_subs                     full
% 3.97/0.98  --res_forward_subs_resolution           true
% 3.97/0.98  --res_backward_subs_resolution          true
% 3.97/0.98  --res_orphan_elimination                true
% 3.97/0.98  --res_time_limit                        2.
% 3.97/0.98  --res_out_proof                         true
% 3.97/0.98  
% 3.97/0.98  ------ Superposition Options
% 3.97/0.98  
% 3.97/0.98  --superposition_flag                    true
% 3.97/0.98  --sup_passive_queue_type                priority_queues
% 3.97/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.97/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.97/0.98  --demod_completeness_check              fast
% 3.97/0.98  --demod_use_ground                      true
% 3.97/0.98  --sup_to_prop_solver                    passive
% 3.97/0.98  --sup_prop_simpl_new                    true
% 3.97/0.98  --sup_prop_simpl_given                  true
% 3.97/0.98  --sup_fun_splitting                     true
% 3.97/0.98  --sup_smt_interval                      50000
% 3.97/0.98  
% 3.97/0.98  ------ Superposition Simplification Setup
% 3.97/0.98  
% 3.97/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.97/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.97/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.97/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.97/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.97/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.97/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.97/0.98  --sup_immed_triv                        [TrivRules]
% 3.97/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.97/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.97/0.98  --sup_immed_bw_main                     []
% 3.97/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.97/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.97/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.97/0.98  --sup_input_bw                          []
% 3.97/0.98  
% 3.97/0.98  ------ Combination Options
% 3.97/0.98  
% 3.97/0.98  --comb_res_mult                         3
% 3.97/0.98  --comb_sup_mult                         2
% 3.97/0.98  --comb_inst_mult                        10
% 3.97/0.98  
% 3.97/0.98  ------ Debug Options
% 3.97/0.98  
% 3.97/0.98  --dbg_backtrace                         false
% 3.97/0.98  --dbg_dump_prop_clauses                 false
% 3.97/0.98  --dbg_dump_prop_clauses_file            -
% 3.97/0.98  --dbg_out_stat                          false
% 3.97/0.98  
% 3.97/0.98  
% 3.97/0.98  
% 3.97/0.98  
% 3.97/0.98  ------ Proving...
% 3.97/0.98  
% 3.97/0.98  
% 3.97/0.98  % SZS status Theorem for theBenchmark.p
% 3.97/0.98  
% 3.97/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.97/0.98  
% 3.97/0.98  fof(f21,axiom,(
% 3.97/0.98    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> ~(k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0))),
% 3.97/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.98  
% 3.97/0.98  fof(f28,plain,(
% 3.97/0.98    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 3.97/0.98    inference(ennf_transformation,[],[f21])).
% 3.97/0.98  
% 3.97/0.98  fof(f40,plain,(
% 3.97/0.98    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 3.97/0.98    inference(nnf_transformation,[],[f28])).
% 3.97/0.98  
% 3.97/0.98  fof(f41,plain,(
% 3.97/0.98    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 3.97/0.98    inference(flattening,[],[f40])).
% 3.97/0.98  
% 3.97/0.98  fof(f78,plain,(
% 3.97/0.98    ( ! [X2,X0,X1] : (r1_tarski(X0,k2_tarski(X1,X2)) | k1_tarski(X1) != X0) )),
% 3.97/0.98    inference(cnf_transformation,[],[f41])).
% 3.97/0.98  
% 3.97/0.98  fof(f14,axiom,(
% 3.97/0.98    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.97/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.98  
% 3.97/0.98  fof(f69,plain,(
% 3.97/0.98    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.97/0.99    inference(cnf_transformation,[],[f14])).
% 3.97/0.99  
% 3.97/0.99  fof(f102,plain,(
% 3.97/0.99    ( ! [X2,X0,X1] : (r1_tarski(X0,k2_tarski(X1,X2)) | k2_tarski(X1,X1) != X0) )),
% 3.97/0.99    inference(definition_unfolding,[],[f78,f69])).
% 3.97/0.99  
% 3.97/0.99  fof(f118,plain,(
% 3.97/0.99    ( ! [X2,X1] : (r1_tarski(k2_tarski(X1,X1),k2_tarski(X1,X2))) )),
% 3.97/0.99    inference(equality_resolution,[],[f102])).
% 3.97/0.99  
% 3.97/0.99  fof(f22,conjecture,(
% 3.97/0.99    ! [X0,X1,X2,X3] : ~(X0 != X3 & X0 != X2 & r1_tarski(k2_tarski(X0,X1),k2_tarski(X2,X3)))),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f23,negated_conjecture,(
% 3.97/0.99    ~! [X0,X1,X2,X3] : ~(X0 != X3 & X0 != X2 & r1_tarski(k2_tarski(X0,X1),k2_tarski(X2,X3)))),
% 3.97/0.99    inference(negated_conjecture,[],[f22])).
% 3.97/0.99  
% 3.97/0.99  fof(f29,plain,(
% 3.97/0.99    ? [X0,X1,X2,X3] : (X0 != X3 & X0 != X2 & r1_tarski(k2_tarski(X0,X1),k2_tarski(X2,X3)))),
% 3.97/0.99    inference(ennf_transformation,[],[f23])).
% 3.97/0.99  
% 3.97/0.99  fof(f42,plain,(
% 3.97/0.99    ? [X0,X1,X2,X3] : (X0 != X3 & X0 != X2 & r1_tarski(k2_tarski(X0,X1),k2_tarski(X2,X3))) => (sK2 != sK5 & sK2 != sK4 & r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)))),
% 3.97/0.99    introduced(choice_axiom,[])).
% 3.97/0.99  
% 3.97/0.99  fof(f43,plain,(
% 3.97/0.99    sK2 != sK5 & sK2 != sK4 & r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5))),
% 3.97/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f29,f42])).
% 3.97/0.99  
% 3.97/0.99  fof(f81,plain,(
% 3.97/0.99    r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5))),
% 3.97/0.99    inference(cnf_transformation,[],[f43])).
% 3.97/0.99  
% 3.97/0.99  fof(f6,axiom,(
% 3.97/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f26,plain,(
% 3.97/0.99    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 3.97/0.99    inference(ennf_transformation,[],[f6])).
% 3.97/0.99  
% 3.97/0.99  fof(f49,plain,(
% 3.97/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 3.97/0.99    inference(cnf_transformation,[],[f26])).
% 3.97/0.99  
% 3.97/0.99  fof(f2,axiom,(
% 3.97/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f45,plain,(
% 3.97/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 3.97/0.99    inference(cnf_transformation,[],[f2])).
% 3.97/0.99  
% 3.97/0.99  fof(f5,axiom,(
% 3.97/0.99    ! [X0,X1,X2] : (r1_tarski(X0,k3_xboole_0(X1,X2)) => r1_tarski(X0,X1))),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f25,plain,(
% 3.97/0.99    ! [X0,X1,X2] : (r1_tarski(X0,X1) | ~r1_tarski(X0,k3_xboole_0(X1,X2)))),
% 3.97/0.99    inference(ennf_transformation,[],[f5])).
% 3.97/0.99  
% 3.97/0.99  fof(f48,plain,(
% 3.97/0.99    ( ! [X2,X0,X1] : (r1_tarski(X0,X1) | ~r1_tarski(X0,k3_xboole_0(X1,X2))) )),
% 3.97/0.99    inference(cnf_transformation,[],[f25])).
% 3.97/0.99  
% 3.97/0.99  fof(f1,axiom,(
% 3.97/0.99    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f44,plain,(
% 3.97/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 3.97/0.99    inference(cnf_transformation,[],[f1])).
% 3.97/0.99  
% 3.97/0.99  fof(f10,axiom,(
% 3.97/0.99    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f53,plain,(
% 3.97/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 3.97/0.99    inference(cnf_transformation,[],[f10])).
% 3.97/0.99  
% 3.97/0.99  fof(f4,axiom,(
% 3.97/0.99    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f47,plain,(
% 3.97/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.97/0.99    inference(cnf_transformation,[],[f4])).
% 3.97/0.99  
% 3.97/0.99  fof(f84,plain,(
% 3.97/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0)))) )),
% 3.97/0.99    inference(definition_unfolding,[],[f53,f47])).
% 3.97/0.99  
% 3.97/0.99  fof(f91,plain,(
% 3.97/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k5_xboole_0(X1,k5_xboole_0(X0,k3_xboole_0(X0,X1)))) )),
% 3.97/0.99    inference(definition_unfolding,[],[f44,f84,f84])).
% 3.97/0.99  
% 3.97/0.99  fof(f11,axiom,(
% 3.97/0.99    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f27,plain,(
% 3.97/0.99    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 3.97/0.99    inference(ennf_transformation,[],[f11])).
% 3.97/0.99  
% 3.97/0.99  fof(f30,plain,(
% 3.97/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.97/0.99    inference(nnf_transformation,[],[f27])).
% 3.97/0.99  
% 3.97/0.99  fof(f31,plain,(
% 3.97/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.97/0.99    inference(flattening,[],[f30])).
% 3.97/0.99  
% 3.97/0.99  fof(f32,plain,(
% 3.97/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.97/0.99    inference(rectify,[],[f31])).
% 3.97/0.99  
% 3.97/0.99  fof(f33,plain,(
% 3.97/0.99    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK0(X0,X1,X2,X3) != X2 & sK0(X0,X1,X2,X3) != X1 & sK0(X0,X1,X2,X3) != X0) | ~r2_hidden(sK0(X0,X1,X2,X3),X3)) & (sK0(X0,X1,X2,X3) = X2 | sK0(X0,X1,X2,X3) = X1 | sK0(X0,X1,X2,X3) = X0 | r2_hidden(sK0(X0,X1,X2,X3),X3))))),
% 3.97/0.99    introduced(choice_axiom,[])).
% 3.97/0.99  
% 3.97/0.99  fof(f34,plain,(
% 3.97/0.99    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK0(X0,X1,X2,X3) != X2 & sK0(X0,X1,X2,X3) != X1 & sK0(X0,X1,X2,X3) != X0) | ~r2_hidden(sK0(X0,X1,X2,X3),X3)) & (sK0(X0,X1,X2,X3) = X2 | sK0(X0,X1,X2,X3) = X1 | sK0(X0,X1,X2,X3) = X0 | r2_hidden(sK0(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 3.97/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f32,f33])).
% 3.97/0.99  
% 3.97/0.99  fof(f55,plain,(
% 3.97/0.99    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 3.97/0.99    inference(cnf_transformation,[],[f34])).
% 3.97/0.99  
% 3.97/0.99  fof(f13,axiom,(
% 3.97/0.99    ! [X0,X1,X2] : k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) = k1_enumset1(X0,X1,X2)),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f68,plain,(
% 3.97/0.99    ( ! [X2,X0,X1] : (k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) = k1_enumset1(X0,X1,X2)) )),
% 3.97/0.99    inference(cnf_transformation,[],[f13])).
% 3.97/0.99  
% 3.97/0.99  fof(f85,plain,(
% 3.97/0.99    ( ! [X2,X0,X1] : (k5_xboole_0(k2_tarski(X0,X0),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X0,X0)))) = k1_enumset1(X0,X1,X2)) )),
% 3.97/0.99    inference(definition_unfolding,[],[f68,f84,f69])).
% 3.97/0.99  
% 3.97/0.99  fof(f98,plain,(
% 3.97/0.99    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k5_xboole_0(k2_tarski(X0,X0),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X0,X0)))) != X3) )),
% 3.97/0.99    inference(definition_unfolding,[],[f55,f85])).
% 3.97/0.99  
% 3.97/0.99  fof(f108,plain,(
% 3.97/0.99    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k5_xboole_0(k2_tarski(X5,X5),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X5,X5)))) != X3) )),
% 3.97/0.99    inference(equality_resolution,[],[f98])).
% 3.97/0.99  
% 3.97/0.99  fof(f109,plain,(
% 3.97/0.99    ( ! [X2,X5,X1] : (r2_hidden(X5,k5_xboole_0(k2_tarski(X5,X5),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X5,X5)))))) )),
% 3.97/0.99    inference(equality_resolution,[],[f108])).
% 3.97/0.99  
% 3.97/0.99  fof(f9,axiom,(
% 3.97/0.99    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f52,plain,(
% 3.97/0.99    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 3.97/0.99    inference(cnf_transformation,[],[f9])).
% 3.97/0.99  
% 3.97/0.99  fof(f7,axiom,(
% 3.97/0.99    ! [X0] : k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f50,plain,(
% 3.97/0.99    ( ! [X0] : (k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0) )),
% 3.97/0.99    inference(cnf_transformation,[],[f7])).
% 3.97/0.99  
% 3.97/0.99  fof(f8,axiom,(
% 3.97/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f51,plain,(
% 3.97/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 3.97/0.99    inference(cnf_transformation,[],[f8])).
% 3.97/0.99  
% 3.97/0.99  fof(f89,plain,(
% 3.97/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k3_xboole_0(X0,X1))))) )),
% 3.97/0.99    inference(definition_unfolding,[],[f51,f47,f47])).
% 3.97/0.99  
% 3.97/0.99  fof(f3,axiom,(
% 3.97/0.99    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f24,plain,(
% 3.97/0.99    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 3.97/0.99    inference(rectify,[],[f3])).
% 3.97/0.99  
% 3.97/0.99  fof(f46,plain,(
% 3.97/0.99    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 3.97/0.99    inference(cnf_transformation,[],[f24])).
% 3.97/0.99  
% 3.97/0.99  fof(f12,axiom,(
% 3.97/0.99    ! [X0,X1,X2] : (k2_tarski(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (X1 = X3 | X0 = X3)))),
% 3.97/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.97/0.99  
% 3.97/0.99  fof(f35,plain,(
% 3.97/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & ((X1 = X3 | X0 = X3) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & ((X1 = X3 | X0 = X3) | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 3.97/0.99    inference(nnf_transformation,[],[f12])).
% 3.97/0.99  
% 3.97/0.99  fof(f36,plain,(
% 3.97/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (X1 != X3 & X0 != X3)) & (X1 = X3 | X0 = X3 | ~r2_hidden(X3,X2))) | k2_tarski(X0,X1) != X2))),
% 3.97/0.99    inference(flattening,[],[f35])).
% 3.97/0.99  
% 3.97/0.99  fof(f37,plain,(
% 3.97/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | ? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 3.97/0.99    inference(rectify,[],[f36])).
% 3.97/0.99  
% 3.97/0.99  fof(f38,plain,(
% 3.97/0.99    ! [X2,X1,X0] : (? [X3] : (((X1 != X3 & X0 != X3) | ~r2_hidden(X3,X2)) & (X1 = X3 | X0 = X3 | r2_hidden(X3,X2))) => (((sK1(X0,X1,X2) != X1 & sK1(X0,X1,X2) != X0) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (sK1(X0,X1,X2) = X1 | sK1(X0,X1,X2) = X0 | r2_hidden(sK1(X0,X1,X2),X2))))),
% 3.97/0.99    introduced(choice_axiom,[])).
% 3.97/0.99  
% 3.97/0.99  fof(f39,plain,(
% 3.97/0.99    ! [X0,X1,X2] : ((k2_tarski(X0,X1) = X2 | (((sK1(X0,X1,X2) != X1 & sK1(X0,X1,X2) != X0) | ~r2_hidden(sK1(X0,X1,X2),X2)) & (sK1(X0,X1,X2) = X1 | sK1(X0,X1,X2) = X0 | r2_hidden(sK1(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | (X1 != X4 & X0 != X4)) & (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2))) | k2_tarski(X0,X1) != X2))),
% 3.97/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f37,f38])).
% 3.97/0.99  
% 3.97/0.99  fof(f62,plain,(
% 3.97/0.99    ( ! [X4,X2,X0,X1] : (X1 = X4 | X0 = X4 | ~r2_hidden(X4,X2) | k2_tarski(X0,X1) != X2) )),
% 3.97/0.99    inference(cnf_transformation,[],[f39])).
% 3.97/0.99  
% 3.97/0.99  fof(f115,plain,(
% 3.97/0.99    ( ! [X4,X0,X1] : (X1 = X4 | X0 = X4 | ~r2_hidden(X4,k2_tarski(X0,X1))) )),
% 3.97/0.99    inference(equality_resolution,[],[f62])).
% 3.97/0.99  
% 3.97/0.99  fof(f83,plain,(
% 3.97/0.99    sK2 != sK5),
% 3.97/0.99    inference(cnf_transformation,[],[f43])).
% 3.97/0.99  
% 3.97/0.99  fof(f82,plain,(
% 3.97/0.99    sK2 != sK4),
% 3.97/0.99    inference(cnf_transformation,[],[f43])).
% 3.97/0.99  
% 3.97/0.99  cnf(c_26,plain,
% 3.97/0.99      ( r1_tarski(k2_tarski(X0,X0),k2_tarski(X0,X1)) ),
% 3.97/0.99      inference(cnf_transformation,[],[f118]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_1356,plain,
% 3.97/0.99      ( r1_tarski(k2_tarski(X0,X0),k2_tarski(X0,X1)) = iProver_top ),
% 3.97/0.99      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_31,negated_conjecture,
% 3.97/0.99      ( r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)) ),
% 3.97/0.99      inference(cnf_transformation,[],[f81]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_1353,plain,
% 3.97/0.99      ( r1_tarski(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)) = iProver_top ),
% 3.97/0.99      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_6,plain,
% 3.97/0.99      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 3.97/0.99      inference(cnf_transformation,[],[f49]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_1373,plain,
% 3.97/0.99      ( k3_xboole_0(X0,X1) = X0 | r1_tarski(X0,X1) != iProver_top ),
% 3.97/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_4839,plain,
% 3.97/0.99      ( k3_xboole_0(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5)) = k2_tarski(sK2,sK3) ),
% 3.97/0.99      inference(superposition,[status(thm)],[c_1353,c_1373]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_3,plain,
% 3.97/0.99      ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
% 3.97/0.99      inference(cnf_transformation,[],[f45]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_5,plain,
% 3.97/0.99      ( r1_tarski(X0,X1) | ~ r1_tarski(X0,k3_xboole_0(X1,X2)) ),
% 3.97/0.99      inference(cnf_transformation,[],[f48]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_1374,plain,
% 3.97/0.99      ( r1_tarski(X0,X1) = iProver_top
% 3.97/0.99      | r1_tarski(X0,k3_xboole_0(X1,X2)) != iProver_top ),
% 3.97/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_6819,plain,
% 3.97/0.99      ( r1_tarski(X0,X1) = iProver_top
% 3.97/0.99      | r1_tarski(X0,k3_xboole_0(X2,X1)) != iProver_top ),
% 3.97/0.99      inference(superposition,[status(thm)],[c_3,c_1374]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_6888,plain,
% 3.97/0.99      ( r1_tarski(X0,k2_tarski(sK4,sK5)) = iProver_top
% 3.97/0.99      | r1_tarski(X0,k2_tarski(sK2,sK3)) != iProver_top ),
% 3.97/0.99      inference(superposition,[status(thm)],[c_4839,c_6819]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_6976,plain,
% 3.97/0.99      ( r1_tarski(k2_tarski(sK2,sK2),k2_tarski(sK4,sK5)) = iProver_top ),
% 3.97/0.99      inference(superposition,[status(thm)],[c_1356,c_6888]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_7685,plain,
% 3.97/0.99      ( k3_xboole_0(k2_tarski(sK2,sK2),k2_tarski(sK4,sK5)) = k2_tarski(sK2,sK2) ),
% 3.97/0.99      inference(superposition,[status(thm)],[c_6976,c_1373]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_2,plain,
% 3.97/0.99      ( k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k5_xboole_0(X1,k5_xboole_0(X0,k3_xboole_0(X0,X1))) ),
% 3.97/0.99      inference(cnf_transformation,[],[f91]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_15,plain,
% 3.97/0.99      ( r2_hidden(X0,k5_xboole_0(k2_tarski(X0,X0),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X0,X0))))) ),
% 3.97/0.99      inference(cnf_transformation,[],[f109]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_1366,plain,
% 3.97/0.99      ( r2_hidden(X0,k5_xboole_0(k2_tarski(X0,X0),k5_xboole_0(k2_tarski(X1,X2),k3_xboole_0(k2_tarski(X1,X2),k2_tarski(X0,X0))))) = iProver_top ),
% 3.97/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_12928,plain,
% 3.97/0.99      ( r2_hidden(X0,k5_xboole_0(k2_tarski(X1,X2),k5_xboole_0(k2_tarski(X0,X0),k3_xboole_0(k2_tarski(X0,X0),k2_tarski(X1,X2))))) = iProver_top ),
% 3.97/0.99      inference(superposition,[status(thm)],[c_2,c_1366]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_16971,plain,
% 3.97/0.99      ( r2_hidden(sK2,k5_xboole_0(k2_tarski(sK4,sK5),k5_xboole_0(k2_tarski(sK2,sK2),k2_tarski(sK2,sK2)))) = iProver_top ),
% 3.97/0.99      inference(superposition,[status(thm)],[c_7685,c_12928]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_8,plain,
% 3.97/0.99      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.97/0.99      inference(cnf_transformation,[],[f52]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_7,plain,
% 3.97/0.99      ( k3_xboole_0(X0,k1_xboole_0) = k1_xboole_0 ),
% 3.97/0.99      inference(cnf_transformation,[],[f50]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_0,plain,
% 3.97/0.99      ( k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k3_xboole_0(X0,X1)))) = k3_xboole_0(X0,X1) ),
% 3.97/0.99      inference(cnf_transformation,[],[f89]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_1936,plain,
% 3.97/0.99      ( k5_xboole_0(X0,k3_xboole_0(X0,k5_xboole_0(X0,k1_xboole_0))) = k3_xboole_0(X0,k1_xboole_0) ),
% 3.97/0.99      inference(superposition,[status(thm)],[c_7,c_0]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_4,plain,
% 3.97/0.99      ( k3_xboole_0(X0,X0) = X0 ),
% 3.97/0.99      inference(cnf_transformation,[],[f46]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_1941,plain,
% 3.97/0.99      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 3.97/0.99      inference(light_normalisation,[status(thm)],[c_1936,c_4,c_7,c_8]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_16979,plain,
% 3.97/0.99      ( r2_hidden(sK2,k2_tarski(sK4,sK5)) = iProver_top ),
% 3.97/0.99      inference(demodulation,[status(thm)],[c_16971,c_8,c_1941]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_22,plain,
% 3.97/0.99      ( ~ r2_hidden(X0,k2_tarski(X1,X2)) | X0 = X1 | X0 = X2 ),
% 3.97/0.99      inference(cnf_transformation,[],[f115]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_1411,plain,
% 3.97/0.99      ( ~ r2_hidden(sK2,k2_tarski(sK4,X0)) | sK2 = X0 | sK2 = sK4 ),
% 3.97/0.99      inference(instantiation,[status(thm)],[c_22]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_2781,plain,
% 3.97/0.99      ( ~ r2_hidden(sK2,k2_tarski(sK4,sK5)) | sK2 = sK4 | sK2 = sK5 ),
% 3.97/0.99      inference(instantiation,[status(thm)],[c_1411]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_2782,plain,
% 3.97/0.99      ( sK2 = sK4
% 3.97/0.99      | sK2 = sK5
% 3.97/0.99      | r2_hidden(sK2,k2_tarski(sK4,sK5)) != iProver_top ),
% 3.97/0.99      inference(predicate_to_equality,[status(thm)],[c_2781]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_29,negated_conjecture,
% 3.97/0.99      ( sK2 != sK5 ),
% 3.97/0.99      inference(cnf_transformation,[],[f83]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(c_30,negated_conjecture,
% 3.97/0.99      ( sK2 != sK4 ),
% 3.97/0.99      inference(cnf_transformation,[],[f82]) ).
% 3.97/0.99  
% 3.97/0.99  cnf(contradiction,plain,
% 3.97/0.99      ( $false ),
% 3.97/0.99      inference(minisat,[status(thm)],[c_16979,c_2782,c_29,c_30]) ).
% 3.97/0.99  
% 3.97/0.99  
% 3.97/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.97/0.99  
% 3.97/0.99  ------                               Statistics
% 3.97/0.99  
% 3.97/0.99  ------ General
% 3.97/0.99  
% 3.97/0.99  abstr_ref_over_cycles:                  0
% 3.97/0.99  abstr_ref_under_cycles:                 0
% 3.97/0.99  gc_basic_clause_elim:                   0
% 3.97/0.99  forced_gc_time:                         0
% 3.97/0.99  parsing_time:                           0.008
% 3.97/0.99  unif_index_cands_time:                  0.
% 3.97/0.99  unif_index_add_time:                    0.
% 3.97/0.99  orderings_time:                         0.
% 3.97/0.99  out_proof_time:                         0.023
% 3.97/0.99  total_time:                             0.51
% 3.97/0.99  num_of_symbols:                         44
% 3.97/0.99  num_of_terms:                           24864
% 3.97/0.99  
% 3.97/0.99  ------ Preprocessing
% 3.97/0.99  
% 3.97/0.99  num_of_splits:                          0
% 3.97/0.99  num_of_split_atoms:                     0
% 3.97/0.99  num_of_reused_defs:                     0
% 3.97/0.99  num_eq_ax_congr_red:                    30
% 3.97/0.99  num_of_sem_filtered_clauses:            1
% 3.97/0.99  num_of_subtypes:                        0
% 3.97/0.99  monotx_restored_types:                  0
% 3.97/0.99  sat_num_of_epr_types:                   0
% 3.97/0.99  sat_num_of_non_cyclic_types:            0
% 3.97/0.99  sat_guarded_non_collapsed_types:        0
% 3.97/0.99  num_pure_diseq_elim:                    0
% 3.97/0.99  simp_replaced_by:                       0
% 3.97/0.99  res_preprocessed:                       111
% 3.97/0.99  prep_upred:                             0
% 3.97/0.99  prep_unflattend:                        48
% 3.97/0.99  smt_new_axioms:                         0
% 3.97/0.99  pred_elim_cands:                        2
% 3.97/0.99  pred_elim:                              0
% 3.97/0.99  pred_elim_cl:                           0
% 3.97/0.99  pred_elim_cycles:                       1
% 3.97/0.99  merged_defs:                            0
% 3.97/0.99  merged_defs_ncl:                        0
% 3.97/0.99  bin_hyper_res:                          0
% 3.97/0.99  prep_cycles:                            3
% 3.97/0.99  pred_elim_time:                         0.014
% 3.97/0.99  splitting_time:                         0.
% 3.97/0.99  sem_filter_time:                        0.
% 3.97/0.99  monotx_time:                            0.
% 3.97/0.99  subtype_inf_time:                       0.
% 3.97/0.99  
% 3.97/0.99  ------ Problem properties
% 3.97/0.99  
% 3.97/0.99  clauses:                                32
% 3.97/0.99  conjectures:                            3
% 3.97/0.99  epr:                                    2
% 3.97/0.99  horn:                                   27
% 3.97/0.99  ground:                                 3
% 3.97/0.99  unary:                                  20
% 3.97/0.99  binary:                                 2
% 3.97/0.99  lits:                                   60
% 3.97/0.99  lits_eq:                                37
% 3.97/0.99  fd_pure:                                0
% 3.97/0.99  fd_pseudo:                              0
% 3.97/0.99  fd_cond:                                0
% 3.97/0.99  fd_pseudo_cond:                         8
% 3.97/0.99  ac_symbols:                             0
% 3.97/0.99  
% 3.97/0.99  ------ Propositional Solver
% 3.97/0.99  
% 3.97/0.99  prop_solver_calls:                      28
% 3.97/0.99  prop_fast_solver_calls:                 937
% 3.97/0.99  smt_solver_calls:                       0
% 3.97/0.99  smt_fast_solver_calls:                  0
% 3.97/0.99  prop_num_of_clauses:                    7000
% 3.97/0.99  prop_preprocess_simplified:             16428
% 3.97/0.99  prop_fo_subsumed:                       23
% 3.97/0.99  prop_solver_time:                       0.
% 3.97/0.99  smt_solver_time:                        0.
% 3.97/0.99  smt_fast_solver_time:                   0.
% 3.97/0.99  prop_fast_solver_time:                  0.
% 3.97/0.99  prop_unsat_core_time:                   0.
% 3.97/0.99  
% 3.97/0.99  ------ QBF
% 3.97/0.99  
% 3.97/0.99  qbf_q_res:                              0
% 3.97/0.99  qbf_num_tautologies:                    0
% 3.97/0.99  qbf_prep_cycles:                        0
% 3.97/0.99  
% 3.97/0.99  ------ BMC1
% 3.97/0.99  
% 3.97/0.99  bmc1_current_bound:                     -1
% 3.97/0.99  bmc1_last_solved_bound:                 -1
% 3.97/0.99  bmc1_unsat_core_size:                   -1
% 3.97/0.99  bmc1_unsat_core_parents_size:           -1
% 3.97/0.99  bmc1_merge_next_fun:                    0
% 3.97/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.97/0.99  
% 3.97/0.99  ------ Instantiation
% 3.97/0.99  
% 3.97/0.99  inst_num_of_clauses:                    1876
% 3.97/0.99  inst_num_in_passive:                    1281
% 3.97/0.99  inst_num_in_active:                     465
% 3.97/0.99  inst_num_in_unprocessed:                130
% 3.97/0.99  inst_num_of_loops:                      640
% 3.97/0.99  inst_num_of_learning_restarts:          0
% 3.97/0.99  inst_num_moves_active_passive:          174
% 3.97/0.99  inst_lit_activity:                      0
% 3.97/0.99  inst_lit_activity_moves:                0
% 3.97/0.99  inst_num_tautologies:                   0
% 3.97/0.99  inst_num_prop_implied:                  0
% 3.97/0.99  inst_num_existing_simplified:           0
% 3.97/0.99  inst_num_eq_res_simplified:             0
% 3.97/0.99  inst_num_child_elim:                    0
% 3.97/0.99  inst_num_of_dismatching_blockings:      1908
% 3.97/0.99  inst_num_of_non_proper_insts:           1865
% 3.97/0.99  inst_num_of_duplicates:                 0
% 3.97/0.99  inst_inst_num_from_inst_to_res:         0
% 3.97/0.99  inst_dismatching_checking_time:         0.
% 3.97/0.99  
% 3.97/0.99  ------ Resolution
% 3.97/0.99  
% 3.97/0.99  res_num_of_clauses:                     0
% 3.97/0.99  res_num_in_passive:                     0
% 3.97/0.99  res_num_in_active:                      0
% 3.97/0.99  res_num_of_loops:                       114
% 3.97/0.99  res_forward_subset_subsumed:            310
% 3.97/0.99  res_backward_subset_subsumed:           0
% 3.97/0.99  res_forward_subsumed:                   0
% 3.97/0.99  res_backward_subsumed:                  0
% 3.97/0.99  res_forward_subsumption_resolution:     0
% 3.97/0.99  res_backward_subsumption_resolution:    0
% 3.97/0.99  res_clause_to_clause_subsumption:       1849
% 3.97/0.99  res_orphan_elimination:                 0
% 3.97/0.99  res_tautology_del:                      39
% 3.97/0.99  res_num_eq_res_simplified:              0
% 3.97/0.99  res_num_sel_changes:                    0
% 3.97/0.99  res_moves_from_active_to_pass:          0
% 3.97/0.99  
% 3.97/0.99  ------ Superposition
% 3.97/0.99  
% 3.97/0.99  sup_time_total:                         0.
% 3.97/0.99  sup_time_generating:                    0.
% 3.97/0.99  sup_time_sim_full:                      0.
% 3.97/0.99  sup_time_sim_immed:                     0.
% 3.97/0.99  
% 3.97/0.99  sup_num_of_clauses:                     261
% 3.97/0.99  sup_num_in_active:                      78
% 3.97/0.99  sup_num_in_passive:                     183
% 3.97/0.99  sup_num_of_loops:                       126
% 3.97/0.99  sup_fw_superposition:                   587
% 3.97/0.99  sup_bw_superposition:                   633
% 3.97/0.99  sup_immediate_simplified:               406
% 3.97/0.99  sup_given_eliminated:                   4
% 3.97/0.99  comparisons_done:                       0
% 3.97/0.99  comparisons_avoided:                    90
% 3.97/0.99  
% 3.97/0.99  ------ Simplifications
% 3.97/0.99  
% 3.97/0.99  
% 3.97/0.99  sim_fw_subset_subsumed:                 4
% 3.97/0.99  sim_bw_subset_subsumed:                 78
% 3.97/0.99  sim_fw_subsumed:                        65
% 3.97/0.99  sim_bw_subsumed:                        9
% 3.97/0.99  sim_fw_subsumption_res:                 0
% 3.97/0.99  sim_bw_subsumption_res:                 0
% 3.97/0.99  sim_tautology_del:                      23
% 3.97/0.99  sim_eq_tautology_del:                   216
% 3.97/0.99  sim_eq_res_simp:                        0
% 3.97/0.99  sim_fw_demodulated:                     274
% 3.97/0.99  sim_bw_demodulated:                     34
% 3.97/0.99  sim_light_normalised:                   190
% 3.97/0.99  sim_joinable_taut:                      0
% 3.97/0.99  sim_joinable_simp:                      0
% 3.97/0.99  sim_ac_normalised:                      0
% 3.97/0.99  sim_smt_subsumption:                    0
% 3.97/0.99  
%------------------------------------------------------------------------------
