%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:57:19 EST 2020

% Result     : Theorem 1.45s
% Output     : CNFRefutation 1.45s
% Verified   : 
% Statistics : Number of formulae       :   72 (  94 expanded)
%              Number of clauses        :   39 (  42 expanded)
%              Number of leaves         :   14 (  25 expanded)
%              Depth                    :    8
%              Number of atoms          :  241 ( 340 expanded)
%              Number of equality atoms :   55 (  68 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0,X1] :
      ~ ( ! [X2] :
            ~ ( ! [X3] :
                  ~ ( r2_hidden(X3,X2)
                    & r2_hidden(X3,X1) )
              & r2_hidden(X2,X1) )
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ! [X3] :
              ( ~ r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1) )
          & r2_hidden(X2,X1) )
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f24,plain,(
    ! [X1] :
      ( ? [X2] :
          ( ! [X3] :
              ( ~ r2_hidden(X3,X2)
              | ~ r2_hidden(X3,X1) )
          & r2_hidden(X2,X1) )
     => ( ! [X3] :
            ( ~ r2_hidden(X3,sK4(X1))
            | ~ r2_hidden(X3,X1) )
        & r2_hidden(sK4(X1),X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( ! [X3] :
            ( ~ r2_hidden(X3,sK4(X1))
            | ~ r2_hidden(X3,X1) )
        & r2_hidden(sK4(X1),X1) )
      | ~ r2_hidden(X0,X1) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f14,f24])).

fof(f43,plain,(
    ! [X0,X3,X1] :
      ( ~ r2_hidden(X3,sK4(X1))
      | ~ r2_hidden(X3,X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f1,axiom,(
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

fof(f11,plain,(
    ! [X0,X1] :
      ( ~ ( r1_xboole_0(X0,X1)
          & ? [X2] :
              ( r2_hidden(X2,X1)
              & r2_hidden(X2,X0) ) )
      & ~ ( ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
          & ~ r1_xboole_0(X0,X1) ) ) ),
    inference(rectify,[],[f1])).

fof(f12,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ? [X3] :
            ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f16,plain,(
    ! [X1,X0] :
      ( ? [X3] :
          ( r2_hidden(X3,X1)
          & r2_hidden(X3,X0) )
     => ( r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( ~ r1_xboole_0(X0,X1)
        | ! [X2] :
            ( ~ r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) ) )
      & ( ( r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) )
        | r1_xboole_0(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f12,f16])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK0(X0,X1),X1)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f28,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK0(X0,X1),X0)
      | r1_xboole_0(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f9,conjecture,(
    ! [X0] :
      ~ ( ! [X1] :
            ~ ( r1_xboole_0(X1,X0)
              & r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0] :
        ~ ( ! [X1] :
              ~ ( r1_xboole_0(X1,X0)
                & r2_hidden(X1,X0) )
          & k1_xboole_0 != X0 ) ),
    inference(negated_conjecture,[],[f9])).

fof(f15,plain,(
    ? [X0] :
      ( ! [X1] :
          ( ~ r1_xboole_0(X1,X0)
          | ~ r2_hidden(X1,X0) )
      & k1_xboole_0 != X0 ) ),
    inference(ennf_transformation,[],[f10])).

fof(f26,plain,
    ( ? [X0] :
        ( ! [X1] :
            ( ~ r1_xboole_0(X1,X0)
            | ~ r2_hidden(X1,X0) )
        & k1_xboole_0 != X0 )
   => ( ! [X1] :
          ( ~ r1_xboole_0(X1,sK5)
          | ~ r2_hidden(X1,sK5) )
      & k1_xboole_0 != sK5 ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,
    ( ! [X1] :
        ( ~ r1_xboole_0(X1,sK5)
        | ~ r2_hidden(X1,sK5) )
    & k1_xboole_0 != sK5 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f15,f26])).

fof(f45,plain,(
    ! [X1] :
      ( ~ r1_xboole_0(X1,sK5)
      | ~ r2_hidden(X1,sK5) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( ~ r1_xboole_0(X0,X1)
      | ~ r2_hidden(X2,X1)
      | ~ r2_hidden(X2,X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r2_hidden(sK4(X1),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k3_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> ? [X3] :
              ( r2_hidden(X3,X0)
              & r2_hidden(X2,X3) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( k3_tarski(X0) = X1
        | ? [X2] :
            ( ( ! [X3] :
                  ( ~ r2_hidden(X3,X0)
                  | ~ r2_hidden(X2,X3) )
              | ~ r2_hidden(X2,X1) )
            & ( ? [X3] :
                  ( r2_hidden(X3,X0)
                  & r2_hidden(X2,X3) )
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ! [X3] :
                  ( ~ r2_hidden(X3,X0)
                  | ~ r2_hidden(X2,X3) ) )
            & ( ? [X3] :
                  ( r2_hidden(X3,X0)
                  & r2_hidden(X2,X3) )
              | ~ r2_hidden(X2,X1) ) )
        | k3_tarski(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( k3_tarski(X0) = X1
        | ? [X2] :
            ( ( ! [X3] :
                  ( ~ r2_hidden(X3,X0)
                  | ~ r2_hidden(X2,X3) )
              | ~ r2_hidden(X2,X1) )
            & ( ? [X4] :
                  ( r2_hidden(X4,X0)
                  & r2_hidden(X2,X4) )
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] :
                  ( ~ r2_hidden(X6,X0)
                  | ~ r2_hidden(X5,X6) ) )
            & ( ? [X7] :
                  ( r2_hidden(X7,X0)
                  & r2_hidden(X5,X7) )
              | ~ r2_hidden(X5,X1) ) )
        | k3_tarski(X0) != X1 ) ) ),
    inference(rectify,[],[f18])).

fof(f22,plain,(
    ! [X5,X0] :
      ( ? [X7] :
          ( r2_hidden(X7,X0)
          & r2_hidden(X5,X7) )
     => ( r2_hidden(sK3(X0,X5),X0)
        & r2_hidden(X5,sK3(X0,X5)) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( r2_hidden(X4,X0)
          & r2_hidden(X2,X4) )
     => ( r2_hidden(sK2(X0,X1),X0)
        & r2_hidden(X2,sK2(X0,X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] :
                ( ~ r2_hidden(X3,X0)
                | ~ r2_hidden(X2,X3) )
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] :
                ( r2_hidden(X4,X0)
                & r2_hidden(X2,X4) )
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] :
              ( ~ r2_hidden(X3,X0)
              | ~ r2_hidden(sK1(X0,X1),X3) )
          | ~ r2_hidden(sK1(X0,X1),X1) )
        & ( ? [X4] :
              ( r2_hidden(X4,X0)
              & r2_hidden(sK1(X0,X1),X4) )
          | r2_hidden(sK1(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( k3_tarski(X0) = X1
        | ( ( ! [X3] :
                ( ~ r2_hidden(X3,X0)
                | ~ r2_hidden(sK1(X0,X1),X3) )
            | ~ r2_hidden(sK1(X0,X1),X1) )
          & ( ( r2_hidden(sK2(X0,X1),X0)
              & r2_hidden(sK1(X0,X1),sK2(X0,X1)) )
            | r2_hidden(sK1(X0,X1),X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] :
                  ( ~ r2_hidden(X6,X0)
                  | ~ r2_hidden(X5,X6) ) )
            & ( ( r2_hidden(sK3(X0,X5),X0)
                & r2_hidden(X5,sK3(X0,X5)) )
              | ~ r2_hidden(X5,X1) ) )
        | k3_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f19,f22,f21,f20])).

fof(f38,plain,(
    ! [X0,X1] :
      ( k3_tarski(X0) = X1
      | r2_hidden(sK2(X0,X1),X0)
      | r2_hidden(sK1(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f2,axiom,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] : r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

fof(f6,axiom,(
    k1_xboole_0 = k3_tarski(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    k1_xboole_0 = k3_tarski(k1_xboole_0) ),
    inference(cnf_transformation,[],[f6])).

fof(f44,plain,(
    k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f27])).

cnf(c_12,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X2,X1)
    | ~ r2_hidden(X2,sK4(X1)) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_693,plain,
    ( ~ r2_hidden(X0,sK4(sK5))
    | ~ r2_hidden(X0,sK5)
    | ~ r2_hidden(sK1(X1,sK5),sK5) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1978,plain,
    ( ~ r2_hidden(sK1(X0,sK5),sK5)
    | ~ r2_hidden(sK0(sK4(sK5),sK5),sK4(sK5))
    | ~ r2_hidden(sK0(sK4(sK5),sK5),sK5) ),
    inference(instantiation,[status(thm)],[c_693])).

cnf(c_1983,plain,
    ( ~ r2_hidden(sK1(k1_xboole_0,sK5),sK5)
    | ~ r2_hidden(sK0(sK4(sK5),sK5),sK4(sK5))
    | ~ r2_hidden(sK0(sK4(sK5),sK5),sK5) ),
    inference(instantiation,[status(thm)],[c_1978])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X1)
    | r1_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_908,plain,
    ( r2_hidden(sK0(X0,sK5),sK5)
    | r1_xboole_0(X0,sK5) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_1472,plain,
    ( r2_hidden(sK0(sK4(sK5),sK5),sK5)
    | r1_xboole_0(sK4(sK5),sK5) ),
    inference(instantiation,[status(thm)],[c_908])).

cnf(c_2,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_907,plain,
    ( r2_hidden(sK0(X0,sK5),X0)
    | r1_xboole_0(X0,sK5) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1249,plain,
    ( r2_hidden(sK0(sK4(sK5),sK5),sK4(sK5))
    | r1_xboole_0(sK4(sK5),sK5) ),
    inference(instantiation,[status(thm)],[c_907])).

cnf(c_14,negated_conjecture,
    ( ~ r2_hidden(X0,sK5)
    | ~ r1_xboole_0(X0,sK5) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_993,plain,
    ( ~ r2_hidden(sK4(sK5),sK5)
    | ~ r1_xboole_0(sK4(sK5),sK5) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,X2)
    | ~ r1_xboole_0(X2,X1) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_820,plain,
    ( ~ r2_hidden(sK2(X0,sK5),X0)
    | ~ r2_hidden(sK2(X0,sK5),X1)
    | ~ r1_xboole_0(X1,X0) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_827,plain,
    ( ~ r2_hidden(sK2(k1_xboole_0,sK5),k1_xboole_0)
    | ~ r1_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_820])).

cnf(c_285,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_736,plain,
    ( k3_tarski(X0) != X1
    | k1_xboole_0 != X1
    | k1_xboole_0 = k3_tarski(X0) ),
    inference(instantiation,[status(thm)],[c_285])).

cnf(c_737,plain,
    ( k3_tarski(k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 = k3_tarski(k1_xboole_0)
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_736])).

cnf(c_676,plain,
    ( X0 != X1
    | X0 = sK5
    | sK5 != X1 ),
    inference(instantiation,[status(thm)],[c_285])).

cnf(c_724,plain,
    ( X0 != k3_tarski(X1)
    | X0 = sK5
    | sK5 != k3_tarski(X1) ),
    inference(instantiation,[status(thm)],[c_676])).

cnf(c_727,plain,
    ( sK5 != k3_tarski(k1_xboole_0)
    | k1_xboole_0 != k3_tarski(k1_xboole_0)
    | k1_xboole_0 = sK5 ),
    inference(instantiation,[status(thm)],[c_724])).

cnf(c_13,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(sK4(X1),X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_696,plain,
    ( ~ r2_hidden(sK1(X0,sK5),sK5)
    | r2_hidden(sK4(sK5),sK5) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_698,plain,
    ( ~ r2_hidden(sK1(k1_xboole_0,sK5),sK5)
    | r2_hidden(sK4(sK5),sK5) ),
    inference(instantiation,[status(thm)],[c_696])).

cnf(c_5,plain,
    ( r2_hidden(sK2(X0,X1),X0)
    | r2_hidden(sK1(X0,X1),X1)
    | k3_tarski(X0) = X1 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_664,plain,
    ( r2_hidden(sK2(X0,sK5),X0)
    | r2_hidden(sK1(X0,sK5),sK5)
    | k3_tarski(X0) = sK5 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_667,plain,
    ( r2_hidden(sK2(k1_xboole_0,sK5),k1_xboole_0)
    | r2_hidden(sK1(k1_xboole_0,sK5),sK5)
    | k3_tarski(k1_xboole_0) = sK5 ),
    inference(instantiation,[status(thm)],[c_664])).

cnf(c_656,plain,
    ( X0 != X1
    | sK5 != X1
    | sK5 = X0 ),
    inference(instantiation,[status(thm)],[c_285])).

cnf(c_657,plain,
    ( X0 != sK5
    | sK5 = X0
    | sK5 != sK5 ),
    inference(instantiation,[status(thm)],[c_656])).

cnf(c_662,plain,
    ( k3_tarski(X0) != sK5
    | sK5 = k3_tarski(X0)
    | sK5 != sK5 ),
    inference(instantiation,[status(thm)],[c_657])).

cnf(c_665,plain,
    ( k3_tarski(k1_xboole_0) != sK5
    | sK5 = k3_tarski(k1_xboole_0)
    | sK5 != sK5 ),
    inference(instantiation,[status(thm)],[c_662])).

cnf(c_284,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_658,plain,
    ( sK5 = sK5 ),
    inference(instantiation,[status(thm)],[c_284])).

cnf(c_293,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_284])).

cnf(c_3,plain,
    ( r1_xboole_0(X0,k1_xboole_0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_41,plain,
    ( r1_xboole_0(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_10,plain,
    ( k3_tarski(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_15,negated_conjecture,
    ( k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f44])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1983,c_1472,c_1249,c_993,c_827,c_737,c_727,c_698,c_667,c_665,c_658,c_293,c_41,c_10,c_15])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n024.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 14:51:21 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 1.45/1.02  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.45/1.02  
% 1.45/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.45/1.02  
% 1.45/1.02  ------  iProver source info
% 1.45/1.02  
% 1.45/1.02  git: date: 2020-06-30 10:37:57 +0100
% 1.45/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.45/1.02  git: non_committed_changes: false
% 1.45/1.02  git: last_make_outside_of_git: false
% 1.45/1.02  
% 1.45/1.02  ------ 
% 1.45/1.02  
% 1.45/1.02  ------ Input Options
% 1.45/1.02  
% 1.45/1.02  --out_options                           all
% 1.45/1.02  --tptp_safe_out                         true
% 1.45/1.02  --problem_path                          ""
% 1.45/1.02  --include_path                          ""
% 1.45/1.02  --clausifier                            res/vclausify_rel
% 1.45/1.02  --clausifier_options                    --mode clausify
% 1.45/1.02  --stdin                                 false
% 1.45/1.02  --stats_out                             all
% 1.45/1.02  
% 1.45/1.02  ------ General Options
% 1.45/1.02  
% 1.45/1.02  --fof                                   false
% 1.45/1.02  --time_out_real                         305.
% 1.45/1.02  --time_out_virtual                      -1.
% 1.45/1.02  --symbol_type_check                     false
% 1.45/1.02  --clausify_out                          false
% 1.45/1.02  --sig_cnt_out                           false
% 1.45/1.02  --trig_cnt_out                          false
% 1.45/1.02  --trig_cnt_out_tolerance                1.
% 1.45/1.02  --trig_cnt_out_sk_spl                   false
% 1.45/1.02  --abstr_cl_out                          false
% 1.45/1.02  
% 1.45/1.02  ------ Global Options
% 1.45/1.02  
% 1.45/1.02  --schedule                              default
% 1.45/1.02  --add_important_lit                     false
% 1.45/1.02  --prop_solver_per_cl                    1000
% 1.45/1.02  --min_unsat_core                        false
% 1.45/1.02  --soft_assumptions                      false
% 1.45/1.02  --soft_lemma_size                       3
% 1.45/1.02  --prop_impl_unit_size                   0
% 1.45/1.02  --prop_impl_unit                        []
% 1.45/1.02  --share_sel_clauses                     true
% 1.45/1.02  --reset_solvers                         false
% 1.45/1.02  --bc_imp_inh                            [conj_cone]
% 1.45/1.02  --conj_cone_tolerance                   3.
% 1.45/1.02  --extra_neg_conj                        none
% 1.45/1.02  --large_theory_mode                     true
% 1.45/1.02  --prolific_symb_bound                   200
% 1.45/1.02  --lt_threshold                          2000
% 1.45/1.02  --clause_weak_htbl                      true
% 1.45/1.02  --gc_record_bc_elim                     false
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing Options
% 1.45/1.02  
% 1.45/1.02  --preprocessing_flag                    true
% 1.45/1.02  --time_out_prep_mult                    0.1
% 1.45/1.02  --splitting_mode                        input
% 1.45/1.02  --splitting_grd                         true
% 1.45/1.02  --splitting_cvd                         false
% 1.45/1.02  --splitting_cvd_svl                     false
% 1.45/1.02  --splitting_nvd                         32
% 1.45/1.02  --sub_typing                            true
% 1.45/1.02  --prep_gs_sim                           true
% 1.45/1.02  --prep_unflatten                        true
% 1.45/1.02  --prep_res_sim                          true
% 1.45/1.02  --prep_upred                            true
% 1.45/1.02  --prep_sem_filter                       exhaustive
% 1.45/1.02  --prep_sem_filter_out                   false
% 1.45/1.02  --pred_elim                             true
% 1.45/1.02  --res_sim_input                         true
% 1.45/1.02  --eq_ax_congr_red                       true
% 1.45/1.02  --pure_diseq_elim                       true
% 1.45/1.02  --brand_transform                       false
% 1.45/1.02  --non_eq_to_eq                          false
% 1.45/1.02  --prep_def_merge                        true
% 1.45/1.02  --prep_def_merge_prop_impl              false
% 1.45/1.02  --prep_def_merge_mbd                    true
% 1.45/1.02  --prep_def_merge_tr_red                 false
% 1.45/1.02  --prep_def_merge_tr_cl                  false
% 1.45/1.02  --smt_preprocessing                     true
% 1.45/1.02  --smt_ac_axioms                         fast
% 1.45/1.02  --preprocessed_out                      false
% 1.45/1.02  --preprocessed_stats                    false
% 1.45/1.02  
% 1.45/1.02  ------ Abstraction refinement Options
% 1.45/1.02  
% 1.45/1.02  --abstr_ref                             []
% 1.45/1.02  --abstr_ref_prep                        false
% 1.45/1.02  --abstr_ref_until_sat                   false
% 1.45/1.02  --abstr_ref_sig_restrict                funpre
% 1.45/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 1.45/1.02  --abstr_ref_under                       []
% 1.45/1.02  
% 1.45/1.02  ------ SAT Options
% 1.45/1.02  
% 1.45/1.02  --sat_mode                              false
% 1.45/1.02  --sat_fm_restart_options                ""
% 1.45/1.02  --sat_gr_def                            false
% 1.45/1.02  --sat_epr_types                         true
% 1.45/1.02  --sat_non_cyclic_types                  false
% 1.45/1.02  --sat_finite_models                     false
% 1.45/1.02  --sat_fm_lemmas                         false
% 1.45/1.02  --sat_fm_prep                           false
% 1.45/1.02  --sat_fm_uc_incr                        true
% 1.45/1.02  --sat_out_model                         small
% 1.45/1.02  --sat_out_clauses                       false
% 1.45/1.02  
% 1.45/1.02  ------ QBF Options
% 1.45/1.02  
% 1.45/1.02  --qbf_mode                              false
% 1.45/1.02  --qbf_elim_univ                         false
% 1.45/1.02  --qbf_dom_inst                          none
% 1.45/1.02  --qbf_dom_pre_inst                      false
% 1.45/1.02  --qbf_sk_in                             false
% 1.45/1.02  --qbf_pred_elim                         true
% 1.45/1.02  --qbf_split                             512
% 1.45/1.02  
% 1.45/1.02  ------ BMC1 Options
% 1.45/1.02  
% 1.45/1.02  --bmc1_incremental                      false
% 1.45/1.02  --bmc1_axioms                           reachable_all
% 1.45/1.02  --bmc1_min_bound                        0
% 1.45/1.02  --bmc1_max_bound                        -1
% 1.45/1.02  --bmc1_max_bound_default                -1
% 1.45/1.02  --bmc1_symbol_reachability              true
% 1.45/1.02  --bmc1_property_lemmas                  false
% 1.45/1.02  --bmc1_k_induction                      false
% 1.45/1.02  --bmc1_non_equiv_states                 false
% 1.45/1.02  --bmc1_deadlock                         false
% 1.45/1.02  --bmc1_ucm                              false
% 1.45/1.02  --bmc1_add_unsat_core                   none
% 1.45/1.02  --bmc1_unsat_core_children              false
% 1.45/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 1.45/1.02  --bmc1_out_stat                         full
% 1.45/1.02  --bmc1_ground_init                      false
% 1.45/1.02  --bmc1_pre_inst_next_state              false
% 1.45/1.02  --bmc1_pre_inst_state                   false
% 1.45/1.02  --bmc1_pre_inst_reach_state             false
% 1.45/1.02  --bmc1_out_unsat_core                   false
% 1.45/1.02  --bmc1_aig_witness_out                  false
% 1.45/1.02  --bmc1_verbose                          false
% 1.45/1.02  --bmc1_dump_clauses_tptp                false
% 1.45/1.02  --bmc1_dump_unsat_core_tptp             false
% 1.45/1.02  --bmc1_dump_file                        -
% 1.45/1.02  --bmc1_ucm_expand_uc_limit              128
% 1.45/1.02  --bmc1_ucm_n_expand_iterations          6
% 1.45/1.02  --bmc1_ucm_extend_mode                  1
% 1.45/1.02  --bmc1_ucm_init_mode                    2
% 1.45/1.02  --bmc1_ucm_cone_mode                    none
% 1.45/1.02  --bmc1_ucm_reduced_relation_type        0
% 1.45/1.02  --bmc1_ucm_relax_model                  4
% 1.45/1.02  --bmc1_ucm_full_tr_after_sat            true
% 1.45/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 1.45/1.02  --bmc1_ucm_layered_model                none
% 1.45/1.02  --bmc1_ucm_max_lemma_size               10
% 1.45/1.02  
% 1.45/1.02  ------ AIG Options
% 1.45/1.02  
% 1.45/1.02  --aig_mode                              false
% 1.45/1.02  
% 1.45/1.02  ------ Instantiation Options
% 1.45/1.02  
% 1.45/1.02  --instantiation_flag                    true
% 1.45/1.02  --inst_sos_flag                         false
% 1.45/1.02  --inst_sos_phase                        true
% 1.45/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.45/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.45/1.02  --inst_lit_sel_side                     num_symb
% 1.45/1.02  --inst_solver_per_active                1400
% 1.45/1.02  --inst_solver_calls_frac                1.
% 1.45/1.02  --inst_passive_queue_type               priority_queues
% 1.45/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.45/1.02  --inst_passive_queues_freq              [25;2]
% 1.45/1.02  --inst_dismatching                      true
% 1.45/1.02  --inst_eager_unprocessed_to_passive     true
% 1.45/1.02  --inst_prop_sim_given                   true
% 1.45/1.02  --inst_prop_sim_new                     false
% 1.45/1.02  --inst_subs_new                         false
% 1.45/1.02  --inst_eq_res_simp                      false
% 1.45/1.02  --inst_subs_given                       false
% 1.45/1.02  --inst_orphan_elimination               true
% 1.45/1.02  --inst_learning_loop_flag               true
% 1.45/1.02  --inst_learning_start                   3000
% 1.45/1.02  --inst_learning_factor                  2
% 1.45/1.02  --inst_start_prop_sim_after_learn       3
% 1.45/1.02  --inst_sel_renew                        solver
% 1.45/1.02  --inst_lit_activity_flag                true
% 1.45/1.02  --inst_restr_to_given                   false
% 1.45/1.02  --inst_activity_threshold               500
% 1.45/1.02  --inst_out_proof                        true
% 1.45/1.02  
% 1.45/1.02  ------ Resolution Options
% 1.45/1.02  
% 1.45/1.02  --resolution_flag                       true
% 1.45/1.02  --res_lit_sel                           adaptive
% 1.45/1.02  --res_lit_sel_side                      none
% 1.45/1.02  --res_ordering                          kbo
% 1.45/1.02  --res_to_prop_solver                    active
% 1.45/1.02  --res_prop_simpl_new                    false
% 1.45/1.02  --res_prop_simpl_given                  true
% 1.45/1.02  --res_passive_queue_type                priority_queues
% 1.45/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.45/1.02  --res_passive_queues_freq               [15;5]
% 1.45/1.02  --res_forward_subs                      full
% 1.45/1.02  --res_backward_subs                     full
% 1.45/1.02  --res_forward_subs_resolution           true
% 1.45/1.02  --res_backward_subs_resolution          true
% 1.45/1.02  --res_orphan_elimination                true
% 1.45/1.02  --res_time_limit                        2.
% 1.45/1.02  --res_out_proof                         true
% 1.45/1.02  
% 1.45/1.02  ------ Superposition Options
% 1.45/1.02  
% 1.45/1.02  --superposition_flag                    true
% 1.45/1.02  --sup_passive_queue_type                priority_queues
% 1.45/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.45/1.02  --sup_passive_queues_freq               [8;1;4]
% 1.45/1.02  --demod_completeness_check              fast
% 1.45/1.02  --demod_use_ground                      true
% 1.45/1.02  --sup_to_prop_solver                    passive
% 1.45/1.02  --sup_prop_simpl_new                    true
% 1.45/1.02  --sup_prop_simpl_given                  true
% 1.45/1.02  --sup_fun_splitting                     false
% 1.45/1.02  --sup_smt_interval                      50000
% 1.45/1.02  
% 1.45/1.02  ------ Superposition Simplification Setup
% 1.45/1.02  
% 1.45/1.02  --sup_indices_passive                   []
% 1.45/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 1.45/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_full_bw                           [BwDemod]
% 1.45/1.02  --sup_immed_triv                        [TrivRules]
% 1.45/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.45/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_immed_bw_main                     []
% 1.45/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.45/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 1.45/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.45/1.02  
% 1.45/1.02  ------ Combination Options
% 1.45/1.02  
% 1.45/1.02  --comb_res_mult                         3
% 1.45/1.02  --comb_sup_mult                         2
% 1.45/1.02  --comb_inst_mult                        10
% 1.45/1.02  
% 1.45/1.02  ------ Debug Options
% 1.45/1.02  
% 1.45/1.02  --dbg_backtrace                         false
% 1.45/1.02  --dbg_dump_prop_clauses                 false
% 1.45/1.02  --dbg_dump_prop_clauses_file            -
% 1.45/1.02  --dbg_out_stat                          false
% 1.45/1.02  ------ Parsing...
% 1.45/1.02  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.45/1.02  ------ Proving...
% 1.45/1.02  ------ Problem Properties 
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  clauses                                 16
% 1.45/1.02  conjectures                             2
% 1.45/1.02  EPR                                     4
% 1.45/1.02  Horn                                    12
% 1.45/1.02  unary                                   3
% 1.45/1.02  binary                                  7
% 1.45/1.02  lits                                    36
% 1.45/1.02  lits eq                                 5
% 1.45/1.02  fd_pure                                 0
% 1.45/1.02  fd_pseudo                               0
% 1.45/1.02  fd_cond                                 0
% 1.45/1.02  fd_pseudo_cond                          3
% 1.45/1.02  AC symbols                              0
% 1.45/1.02  
% 1.45/1.02  ------ Schedule dynamic 5 is on 
% 1.45/1.02  
% 1.45/1.02  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  ------ 
% 1.45/1.02  Current options:
% 1.45/1.02  ------ 
% 1.45/1.02  
% 1.45/1.02  ------ Input Options
% 1.45/1.02  
% 1.45/1.02  --out_options                           all
% 1.45/1.02  --tptp_safe_out                         true
% 1.45/1.02  --problem_path                          ""
% 1.45/1.02  --include_path                          ""
% 1.45/1.02  --clausifier                            res/vclausify_rel
% 1.45/1.02  --clausifier_options                    --mode clausify
% 1.45/1.02  --stdin                                 false
% 1.45/1.02  --stats_out                             all
% 1.45/1.02  
% 1.45/1.02  ------ General Options
% 1.45/1.02  
% 1.45/1.02  --fof                                   false
% 1.45/1.02  --time_out_real                         305.
% 1.45/1.02  --time_out_virtual                      -1.
% 1.45/1.02  --symbol_type_check                     false
% 1.45/1.02  --clausify_out                          false
% 1.45/1.02  --sig_cnt_out                           false
% 1.45/1.02  --trig_cnt_out                          false
% 1.45/1.02  --trig_cnt_out_tolerance                1.
% 1.45/1.02  --trig_cnt_out_sk_spl                   false
% 1.45/1.02  --abstr_cl_out                          false
% 1.45/1.02  
% 1.45/1.02  ------ Global Options
% 1.45/1.02  
% 1.45/1.02  --schedule                              default
% 1.45/1.02  --add_important_lit                     false
% 1.45/1.02  --prop_solver_per_cl                    1000
% 1.45/1.02  --min_unsat_core                        false
% 1.45/1.02  --soft_assumptions                      false
% 1.45/1.02  --soft_lemma_size                       3
% 1.45/1.02  --prop_impl_unit_size                   0
% 1.45/1.02  --prop_impl_unit                        []
% 1.45/1.02  --share_sel_clauses                     true
% 1.45/1.02  --reset_solvers                         false
% 1.45/1.02  --bc_imp_inh                            [conj_cone]
% 1.45/1.02  --conj_cone_tolerance                   3.
% 1.45/1.02  --extra_neg_conj                        none
% 1.45/1.02  --large_theory_mode                     true
% 1.45/1.02  --prolific_symb_bound                   200
% 1.45/1.02  --lt_threshold                          2000
% 1.45/1.02  --clause_weak_htbl                      true
% 1.45/1.02  --gc_record_bc_elim                     false
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing Options
% 1.45/1.02  
% 1.45/1.02  --preprocessing_flag                    true
% 1.45/1.02  --time_out_prep_mult                    0.1
% 1.45/1.02  --splitting_mode                        input
% 1.45/1.02  --splitting_grd                         true
% 1.45/1.02  --splitting_cvd                         false
% 1.45/1.02  --splitting_cvd_svl                     false
% 1.45/1.02  --splitting_nvd                         32
% 1.45/1.02  --sub_typing                            true
% 1.45/1.02  --prep_gs_sim                           true
% 1.45/1.02  --prep_unflatten                        true
% 1.45/1.02  --prep_res_sim                          true
% 1.45/1.02  --prep_upred                            true
% 1.45/1.02  --prep_sem_filter                       exhaustive
% 1.45/1.02  --prep_sem_filter_out                   false
% 1.45/1.02  --pred_elim                             true
% 1.45/1.02  --res_sim_input                         true
% 1.45/1.02  --eq_ax_congr_red                       true
% 1.45/1.02  --pure_diseq_elim                       true
% 1.45/1.02  --brand_transform                       false
% 1.45/1.02  --non_eq_to_eq                          false
% 1.45/1.02  --prep_def_merge                        true
% 1.45/1.02  --prep_def_merge_prop_impl              false
% 1.45/1.02  --prep_def_merge_mbd                    true
% 1.45/1.02  --prep_def_merge_tr_red                 false
% 1.45/1.02  --prep_def_merge_tr_cl                  false
% 1.45/1.02  --smt_preprocessing                     true
% 1.45/1.02  --smt_ac_axioms                         fast
% 1.45/1.02  --preprocessed_out                      false
% 1.45/1.02  --preprocessed_stats                    false
% 1.45/1.02  
% 1.45/1.02  ------ Abstraction refinement Options
% 1.45/1.02  
% 1.45/1.02  --abstr_ref                             []
% 1.45/1.02  --abstr_ref_prep                        false
% 1.45/1.02  --abstr_ref_until_sat                   false
% 1.45/1.02  --abstr_ref_sig_restrict                funpre
% 1.45/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 1.45/1.02  --abstr_ref_under                       []
% 1.45/1.02  
% 1.45/1.02  ------ SAT Options
% 1.45/1.02  
% 1.45/1.02  --sat_mode                              false
% 1.45/1.02  --sat_fm_restart_options                ""
% 1.45/1.02  --sat_gr_def                            false
% 1.45/1.02  --sat_epr_types                         true
% 1.45/1.02  --sat_non_cyclic_types                  false
% 1.45/1.02  --sat_finite_models                     false
% 1.45/1.02  --sat_fm_lemmas                         false
% 1.45/1.02  --sat_fm_prep                           false
% 1.45/1.02  --sat_fm_uc_incr                        true
% 1.45/1.02  --sat_out_model                         small
% 1.45/1.02  --sat_out_clauses                       false
% 1.45/1.02  
% 1.45/1.02  ------ QBF Options
% 1.45/1.02  
% 1.45/1.02  --qbf_mode                              false
% 1.45/1.02  --qbf_elim_univ                         false
% 1.45/1.02  --qbf_dom_inst                          none
% 1.45/1.02  --qbf_dom_pre_inst                      false
% 1.45/1.02  --qbf_sk_in                             false
% 1.45/1.02  --qbf_pred_elim                         true
% 1.45/1.02  --qbf_split                             512
% 1.45/1.02  
% 1.45/1.02  ------ BMC1 Options
% 1.45/1.02  
% 1.45/1.02  --bmc1_incremental                      false
% 1.45/1.02  --bmc1_axioms                           reachable_all
% 1.45/1.02  --bmc1_min_bound                        0
% 1.45/1.02  --bmc1_max_bound                        -1
% 1.45/1.02  --bmc1_max_bound_default                -1
% 1.45/1.02  --bmc1_symbol_reachability              true
% 1.45/1.02  --bmc1_property_lemmas                  false
% 1.45/1.02  --bmc1_k_induction                      false
% 1.45/1.02  --bmc1_non_equiv_states                 false
% 1.45/1.02  --bmc1_deadlock                         false
% 1.45/1.02  --bmc1_ucm                              false
% 1.45/1.02  --bmc1_add_unsat_core                   none
% 1.45/1.02  --bmc1_unsat_core_children              false
% 1.45/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 1.45/1.02  --bmc1_out_stat                         full
% 1.45/1.02  --bmc1_ground_init                      false
% 1.45/1.02  --bmc1_pre_inst_next_state              false
% 1.45/1.02  --bmc1_pre_inst_state                   false
% 1.45/1.02  --bmc1_pre_inst_reach_state             false
% 1.45/1.02  --bmc1_out_unsat_core                   false
% 1.45/1.02  --bmc1_aig_witness_out                  false
% 1.45/1.02  --bmc1_verbose                          false
% 1.45/1.02  --bmc1_dump_clauses_tptp                false
% 1.45/1.02  --bmc1_dump_unsat_core_tptp             false
% 1.45/1.02  --bmc1_dump_file                        -
% 1.45/1.02  --bmc1_ucm_expand_uc_limit              128
% 1.45/1.02  --bmc1_ucm_n_expand_iterations          6
% 1.45/1.02  --bmc1_ucm_extend_mode                  1
% 1.45/1.02  --bmc1_ucm_init_mode                    2
% 1.45/1.02  --bmc1_ucm_cone_mode                    none
% 1.45/1.02  --bmc1_ucm_reduced_relation_type        0
% 1.45/1.02  --bmc1_ucm_relax_model                  4
% 1.45/1.02  --bmc1_ucm_full_tr_after_sat            true
% 1.45/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 1.45/1.02  --bmc1_ucm_layered_model                none
% 1.45/1.02  --bmc1_ucm_max_lemma_size               10
% 1.45/1.02  
% 1.45/1.02  ------ AIG Options
% 1.45/1.02  
% 1.45/1.02  --aig_mode                              false
% 1.45/1.02  
% 1.45/1.02  ------ Instantiation Options
% 1.45/1.02  
% 1.45/1.02  --instantiation_flag                    true
% 1.45/1.02  --inst_sos_flag                         false
% 1.45/1.02  --inst_sos_phase                        true
% 1.45/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.45/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.45/1.02  --inst_lit_sel_side                     none
% 1.45/1.02  --inst_solver_per_active                1400
% 1.45/1.02  --inst_solver_calls_frac                1.
% 1.45/1.02  --inst_passive_queue_type               priority_queues
% 1.45/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.45/1.02  --inst_passive_queues_freq              [25;2]
% 1.45/1.02  --inst_dismatching                      true
% 1.45/1.02  --inst_eager_unprocessed_to_passive     true
% 1.45/1.02  --inst_prop_sim_given                   true
% 1.45/1.02  --inst_prop_sim_new                     false
% 1.45/1.02  --inst_subs_new                         false
% 1.45/1.02  --inst_eq_res_simp                      false
% 1.45/1.02  --inst_subs_given                       false
% 1.45/1.02  --inst_orphan_elimination               true
% 1.45/1.02  --inst_learning_loop_flag               true
% 1.45/1.02  --inst_learning_start                   3000
% 1.45/1.02  --inst_learning_factor                  2
% 1.45/1.02  --inst_start_prop_sim_after_learn       3
% 1.45/1.02  --inst_sel_renew                        solver
% 1.45/1.02  --inst_lit_activity_flag                true
% 1.45/1.02  --inst_restr_to_given                   false
% 1.45/1.02  --inst_activity_threshold               500
% 1.45/1.02  --inst_out_proof                        true
% 1.45/1.02  
% 1.45/1.02  ------ Resolution Options
% 1.45/1.02  
% 1.45/1.02  --resolution_flag                       false
% 1.45/1.02  --res_lit_sel                           adaptive
% 1.45/1.02  --res_lit_sel_side                      none
% 1.45/1.02  --res_ordering                          kbo
% 1.45/1.02  --res_to_prop_solver                    active
% 1.45/1.02  --res_prop_simpl_new                    false
% 1.45/1.02  --res_prop_simpl_given                  true
% 1.45/1.02  --res_passive_queue_type                priority_queues
% 1.45/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.45/1.02  --res_passive_queues_freq               [15;5]
% 1.45/1.02  --res_forward_subs                      full
% 1.45/1.02  --res_backward_subs                     full
% 1.45/1.02  --res_forward_subs_resolution           true
% 1.45/1.02  --res_backward_subs_resolution          true
% 1.45/1.02  --res_orphan_elimination                true
% 1.45/1.02  --res_time_limit                        2.
% 1.45/1.02  --res_out_proof                         true
% 1.45/1.02  
% 1.45/1.02  ------ Superposition Options
% 1.45/1.02  
% 1.45/1.02  --superposition_flag                    true
% 1.45/1.02  --sup_passive_queue_type                priority_queues
% 1.45/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.45/1.02  --sup_passive_queues_freq               [8;1;4]
% 1.45/1.02  --demod_completeness_check              fast
% 1.45/1.02  --demod_use_ground                      true
% 1.45/1.02  --sup_to_prop_solver                    passive
% 1.45/1.02  --sup_prop_simpl_new                    true
% 1.45/1.02  --sup_prop_simpl_given                  true
% 1.45/1.02  --sup_fun_splitting                     false
% 1.45/1.02  --sup_smt_interval                      50000
% 1.45/1.02  
% 1.45/1.02  ------ Superposition Simplification Setup
% 1.45/1.02  
% 1.45/1.02  --sup_indices_passive                   []
% 1.45/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.45/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 1.45/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_full_bw                           [BwDemod]
% 1.45/1.02  --sup_immed_triv                        [TrivRules]
% 1.45/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.45/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_immed_bw_main                     []
% 1.45/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.45/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 1.45/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.45/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.45/1.02  
% 1.45/1.02  ------ Combination Options
% 1.45/1.02  
% 1.45/1.02  --comb_res_mult                         3
% 1.45/1.02  --comb_sup_mult                         2
% 1.45/1.02  --comb_inst_mult                        10
% 1.45/1.02  
% 1.45/1.02  ------ Debug Options
% 1.45/1.02  
% 1.45/1.02  --dbg_backtrace                         false
% 1.45/1.02  --dbg_dump_prop_clauses                 false
% 1.45/1.02  --dbg_dump_prop_clauses_file            -
% 1.45/1.02  --dbg_out_stat                          false
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  ------ Proving...
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  % SZS status Theorem for theBenchmark.p
% 1.45/1.02  
% 1.45/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 1.45/1.02  
% 1.45/1.02  fof(f8,axiom,(
% 1.45/1.02    ! [X0,X1] : ~(! [X2] : ~(! [X3] : ~(r2_hidden(X3,X2) & r2_hidden(X3,X1)) & r2_hidden(X2,X1)) & r2_hidden(X0,X1))),
% 1.45/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f14,plain,(
% 1.45/1.02    ! [X0,X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,X2) | ~r2_hidden(X3,X1)) & r2_hidden(X2,X1)) | ~r2_hidden(X0,X1))),
% 1.45/1.02    inference(ennf_transformation,[],[f8])).
% 1.45/1.02  
% 1.45/1.02  fof(f24,plain,(
% 1.45/1.02    ! [X1] : (? [X2] : (! [X3] : (~r2_hidden(X3,X2) | ~r2_hidden(X3,X1)) & r2_hidden(X2,X1)) => (! [X3] : (~r2_hidden(X3,sK4(X1)) | ~r2_hidden(X3,X1)) & r2_hidden(sK4(X1),X1)))),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f25,plain,(
% 1.45/1.02    ! [X0,X1] : ((! [X3] : (~r2_hidden(X3,sK4(X1)) | ~r2_hidden(X3,X1)) & r2_hidden(sK4(X1),X1)) | ~r2_hidden(X0,X1))),
% 1.45/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4])],[f14,f24])).
% 1.45/1.02  
% 1.45/1.02  fof(f43,plain,(
% 1.45/1.02    ( ! [X0,X3,X1] : (~r2_hidden(X3,sK4(X1)) | ~r2_hidden(X3,X1) | ~r2_hidden(X0,X1)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f25])).
% 1.45/1.02  
% 1.45/1.02  fof(f1,axiom,(
% 1.45/1.02    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X2] : ~(r2_hidden(X2,X1) & r2_hidden(X2,X0)) & ~r1_xboole_0(X0,X1)))),
% 1.45/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f11,plain,(
% 1.45/1.02    ! [X0,X1] : (~(r1_xboole_0(X0,X1) & ? [X2] : (r2_hidden(X2,X1) & r2_hidden(X2,X0))) & ~(! [X3] : ~(r2_hidden(X3,X1) & r2_hidden(X3,X0)) & ~r1_xboole_0(X0,X1)))),
% 1.45/1.02    inference(rectify,[],[f1])).
% 1.45/1.02  
% 1.45/1.02  fof(f12,plain,(
% 1.45/1.02    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r1_xboole_0(X0,X1)))),
% 1.45/1.02    inference(ennf_transformation,[],[f11])).
% 1.45/1.02  
% 1.45/1.02  fof(f16,plain,(
% 1.45/1.02    ! [X1,X0] : (? [X3] : (r2_hidden(X3,X1) & r2_hidden(X3,X0)) => (r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f17,plain,(
% 1.45/1.02    ! [X0,X1] : ((~r1_xboole_0(X0,X1) | ! [X2] : (~r2_hidden(X2,X1) | ~r2_hidden(X2,X0))) & ((r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)) | r1_xboole_0(X0,X1)))),
% 1.45/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f12,f16])).
% 1.45/1.02  
% 1.45/1.02  fof(f29,plain,(
% 1.45/1.02    ( ! [X0,X1] : (r2_hidden(sK0(X0,X1),X1) | r1_xboole_0(X0,X1)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f17])).
% 1.45/1.02  
% 1.45/1.02  fof(f28,plain,(
% 1.45/1.02    ( ! [X0,X1] : (r2_hidden(sK0(X0,X1),X0) | r1_xboole_0(X0,X1)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f17])).
% 1.45/1.02  
% 1.45/1.02  fof(f9,conjecture,(
% 1.45/1.02    ! [X0] : ~(! [X1] : ~(r1_xboole_0(X1,X0) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 1.45/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f10,negated_conjecture,(
% 1.45/1.02    ~! [X0] : ~(! [X1] : ~(r1_xboole_0(X1,X0) & r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 1.45/1.02    inference(negated_conjecture,[],[f9])).
% 1.45/1.02  
% 1.45/1.02  fof(f15,plain,(
% 1.45/1.02    ? [X0] : (! [X1] : (~r1_xboole_0(X1,X0) | ~r2_hidden(X1,X0)) & k1_xboole_0 != X0)),
% 1.45/1.02    inference(ennf_transformation,[],[f10])).
% 1.45/1.02  
% 1.45/1.02  fof(f26,plain,(
% 1.45/1.02    ? [X0] : (! [X1] : (~r1_xboole_0(X1,X0) | ~r2_hidden(X1,X0)) & k1_xboole_0 != X0) => (! [X1] : (~r1_xboole_0(X1,sK5) | ~r2_hidden(X1,sK5)) & k1_xboole_0 != sK5)),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f27,plain,(
% 1.45/1.02    ! [X1] : (~r1_xboole_0(X1,sK5) | ~r2_hidden(X1,sK5)) & k1_xboole_0 != sK5),
% 1.45/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5])],[f15,f26])).
% 1.45/1.02  
% 1.45/1.02  fof(f45,plain,(
% 1.45/1.02    ( ! [X1] : (~r1_xboole_0(X1,sK5) | ~r2_hidden(X1,sK5)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f27])).
% 1.45/1.02  
% 1.45/1.02  fof(f30,plain,(
% 1.45/1.02    ( ! [X2,X0,X1] : (~r1_xboole_0(X0,X1) | ~r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f17])).
% 1.45/1.02  
% 1.45/1.02  fof(f42,plain,(
% 1.45/1.02    ( ! [X0,X1] : (r2_hidden(sK4(X1),X1) | ~r2_hidden(X0,X1)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f25])).
% 1.45/1.02  
% 1.45/1.02  fof(f5,axiom,(
% 1.45/1.02    ! [X0,X1] : (k3_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (r2_hidden(X3,X0) & r2_hidden(X2,X3))))),
% 1.45/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f18,plain,(
% 1.45/1.02    ! [X0,X1] : ((k3_tarski(X0) = X1 | ? [X2] : ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(X2,X3)) | ~r2_hidden(X2,X1)) & (? [X3] : (r2_hidden(X3,X0) & r2_hidden(X2,X3)) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(X2,X3))) & (? [X3] : (r2_hidden(X3,X0) & r2_hidden(X2,X3)) | ~r2_hidden(X2,X1))) | k3_tarski(X0) != X1))),
% 1.45/1.02    inference(nnf_transformation,[],[f5])).
% 1.45/1.02  
% 1.45/1.02  fof(f19,plain,(
% 1.45/1.02    ! [X0,X1] : ((k3_tarski(X0) = X1 | ? [X2] : ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(X2,X3)) | ~r2_hidden(X2,X1)) & (? [X4] : (r2_hidden(X4,X0) & r2_hidden(X2,X4)) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (~r2_hidden(X6,X0) | ~r2_hidden(X5,X6))) & (? [X7] : (r2_hidden(X7,X0) & r2_hidden(X5,X7)) | ~r2_hidden(X5,X1))) | k3_tarski(X0) != X1))),
% 1.45/1.02    inference(rectify,[],[f18])).
% 1.45/1.02  
% 1.45/1.02  fof(f22,plain,(
% 1.45/1.02    ! [X5,X0] : (? [X7] : (r2_hidden(X7,X0) & r2_hidden(X5,X7)) => (r2_hidden(sK3(X0,X5),X0) & r2_hidden(X5,sK3(X0,X5))))),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f21,plain,(
% 1.45/1.02    ( ! [X2] : (! [X1,X0] : (? [X4] : (r2_hidden(X4,X0) & r2_hidden(X2,X4)) => (r2_hidden(sK2(X0,X1),X0) & r2_hidden(X2,sK2(X0,X1))))) )),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f20,plain,(
% 1.45/1.02    ! [X1,X0] : (? [X2] : ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(X2,X3)) | ~r2_hidden(X2,X1)) & (? [X4] : (r2_hidden(X4,X0) & r2_hidden(X2,X4)) | r2_hidden(X2,X1))) => ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(sK1(X0,X1),X3)) | ~r2_hidden(sK1(X0,X1),X1)) & (? [X4] : (r2_hidden(X4,X0) & r2_hidden(sK1(X0,X1),X4)) | r2_hidden(sK1(X0,X1),X1))))),
% 1.45/1.02    introduced(choice_axiom,[])).
% 1.45/1.02  
% 1.45/1.02  fof(f23,plain,(
% 1.45/1.02    ! [X0,X1] : ((k3_tarski(X0) = X1 | ((! [X3] : (~r2_hidden(X3,X0) | ~r2_hidden(sK1(X0,X1),X3)) | ~r2_hidden(sK1(X0,X1),X1)) & ((r2_hidden(sK2(X0,X1),X0) & r2_hidden(sK1(X0,X1),sK2(X0,X1))) | r2_hidden(sK1(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (~r2_hidden(X6,X0) | ~r2_hidden(X5,X6))) & ((r2_hidden(sK3(X0,X5),X0) & r2_hidden(X5,sK3(X0,X5))) | ~r2_hidden(X5,X1))) | k3_tarski(X0) != X1))),
% 1.45/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f19,f22,f21,f20])).
% 1.45/1.02  
% 1.45/1.02  fof(f38,plain,(
% 1.45/1.02    ( ! [X0,X1] : (k3_tarski(X0) = X1 | r2_hidden(sK2(X0,X1),X0) | r2_hidden(sK1(X0,X1),X1)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f23])).
% 1.45/1.02  
% 1.45/1.02  fof(f2,axiom,(
% 1.45/1.02    ! [X0] : r1_xboole_0(X0,k1_xboole_0)),
% 1.45/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f31,plain,(
% 1.45/1.02    ( ! [X0] : (r1_xboole_0(X0,k1_xboole_0)) )),
% 1.45/1.02    inference(cnf_transformation,[],[f2])).
% 1.45/1.02  
% 1.45/1.02  fof(f6,axiom,(
% 1.45/1.02    k1_xboole_0 = k3_tarski(k1_xboole_0)),
% 1.45/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.45/1.02  
% 1.45/1.02  fof(f40,plain,(
% 1.45/1.02    k1_xboole_0 = k3_tarski(k1_xboole_0)),
% 1.45/1.02    inference(cnf_transformation,[],[f6])).
% 1.45/1.02  
% 1.45/1.02  fof(f44,plain,(
% 1.45/1.02    k1_xboole_0 != sK5),
% 1.45/1.02    inference(cnf_transformation,[],[f27])).
% 1.45/1.02  
% 1.45/1.02  cnf(c_12,plain,
% 1.45/1.02      ( ~ r2_hidden(X0,X1)
% 1.45/1.02      | ~ r2_hidden(X2,X1)
% 1.45/1.02      | ~ r2_hidden(X2,sK4(X1)) ),
% 1.45/1.02      inference(cnf_transformation,[],[f43]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_693,plain,
% 1.45/1.02      ( ~ r2_hidden(X0,sK4(sK5))
% 1.45/1.02      | ~ r2_hidden(X0,sK5)
% 1.45/1.02      | ~ r2_hidden(sK1(X1,sK5),sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_12]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1978,plain,
% 1.45/1.02      ( ~ r2_hidden(sK1(X0,sK5),sK5)
% 1.45/1.02      | ~ r2_hidden(sK0(sK4(sK5),sK5),sK4(sK5))
% 1.45/1.02      | ~ r2_hidden(sK0(sK4(sK5),sK5),sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_693]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1983,plain,
% 1.45/1.02      ( ~ r2_hidden(sK1(k1_xboole_0,sK5),sK5)
% 1.45/1.02      | ~ r2_hidden(sK0(sK4(sK5),sK5),sK4(sK5))
% 1.45/1.02      | ~ r2_hidden(sK0(sK4(sK5),sK5),sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_1978]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1,plain,
% 1.45/1.02      ( r2_hidden(sK0(X0,X1),X1) | r1_xboole_0(X0,X1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f29]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_908,plain,
% 1.45/1.02      ( r2_hidden(sK0(X0,sK5),sK5) | r1_xboole_0(X0,sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_1]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1472,plain,
% 1.45/1.02      ( r2_hidden(sK0(sK4(sK5),sK5),sK5) | r1_xboole_0(sK4(sK5),sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_908]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_2,plain,
% 1.45/1.02      ( r2_hidden(sK0(X0,X1),X0) | r1_xboole_0(X0,X1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f28]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_907,plain,
% 1.45/1.02      ( r2_hidden(sK0(X0,sK5),X0) | r1_xboole_0(X0,sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_2]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_1249,plain,
% 1.45/1.02      ( r2_hidden(sK0(sK4(sK5),sK5),sK4(sK5))
% 1.45/1.02      | r1_xboole_0(sK4(sK5),sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_907]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_14,negated_conjecture,
% 1.45/1.02      ( ~ r2_hidden(X0,sK5) | ~ r1_xboole_0(X0,sK5) ),
% 1.45/1.02      inference(cnf_transformation,[],[f45]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_993,plain,
% 1.45/1.02      ( ~ r2_hidden(sK4(sK5),sK5) | ~ r1_xboole_0(sK4(sK5),sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_14]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_0,plain,
% 1.45/1.02      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X0,X2) | ~ r1_xboole_0(X2,X1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f30]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_820,plain,
% 1.45/1.02      ( ~ r2_hidden(sK2(X0,sK5),X0)
% 1.45/1.02      | ~ r2_hidden(sK2(X0,sK5),X1)
% 1.45/1.02      | ~ r1_xboole_0(X1,X0) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_0]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_827,plain,
% 1.45/1.02      ( ~ r2_hidden(sK2(k1_xboole_0,sK5),k1_xboole_0)
% 1.45/1.02      | ~ r1_xboole_0(k1_xboole_0,k1_xboole_0) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_820]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_285,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_736,plain,
% 1.45/1.02      ( k3_tarski(X0) != X1
% 1.45/1.02      | k1_xboole_0 != X1
% 1.45/1.02      | k1_xboole_0 = k3_tarski(X0) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_285]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_737,plain,
% 1.45/1.02      ( k3_tarski(k1_xboole_0) != k1_xboole_0
% 1.45/1.02      | k1_xboole_0 = k3_tarski(k1_xboole_0)
% 1.45/1.02      | k1_xboole_0 != k1_xboole_0 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_736]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_676,plain,
% 1.45/1.02      ( X0 != X1 | X0 = sK5 | sK5 != X1 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_285]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_724,plain,
% 1.45/1.02      ( X0 != k3_tarski(X1) | X0 = sK5 | sK5 != k3_tarski(X1) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_676]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_727,plain,
% 1.45/1.02      ( sK5 != k3_tarski(k1_xboole_0)
% 1.45/1.02      | k1_xboole_0 != k3_tarski(k1_xboole_0)
% 1.45/1.02      | k1_xboole_0 = sK5 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_724]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_13,plain,
% 1.45/1.02      ( ~ r2_hidden(X0,X1) | r2_hidden(sK4(X1),X1) ),
% 1.45/1.02      inference(cnf_transformation,[],[f42]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_696,plain,
% 1.45/1.02      ( ~ r2_hidden(sK1(X0,sK5),sK5) | r2_hidden(sK4(sK5),sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_13]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_698,plain,
% 1.45/1.02      ( ~ r2_hidden(sK1(k1_xboole_0,sK5),sK5) | r2_hidden(sK4(sK5),sK5) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_696]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_5,plain,
% 1.45/1.02      ( r2_hidden(sK2(X0,X1),X0)
% 1.45/1.02      | r2_hidden(sK1(X0,X1),X1)
% 1.45/1.02      | k3_tarski(X0) = X1 ),
% 1.45/1.02      inference(cnf_transformation,[],[f38]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_664,plain,
% 1.45/1.02      ( r2_hidden(sK2(X0,sK5),X0)
% 1.45/1.02      | r2_hidden(sK1(X0,sK5),sK5)
% 1.45/1.02      | k3_tarski(X0) = sK5 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_5]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_667,plain,
% 1.45/1.02      ( r2_hidden(sK2(k1_xboole_0,sK5),k1_xboole_0)
% 1.45/1.02      | r2_hidden(sK1(k1_xboole_0,sK5),sK5)
% 1.45/1.02      | k3_tarski(k1_xboole_0) = sK5 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_664]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_656,plain,
% 1.45/1.02      ( X0 != X1 | sK5 != X1 | sK5 = X0 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_285]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_657,plain,
% 1.45/1.02      ( X0 != sK5 | sK5 = X0 | sK5 != sK5 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_656]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_662,plain,
% 1.45/1.02      ( k3_tarski(X0) != sK5 | sK5 = k3_tarski(X0) | sK5 != sK5 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_657]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_665,plain,
% 1.45/1.02      ( k3_tarski(k1_xboole_0) != sK5
% 1.45/1.02      | sK5 = k3_tarski(k1_xboole_0)
% 1.45/1.02      | sK5 != sK5 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_662]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_284,plain,( X0 = X0 ),theory(equality) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_658,plain,
% 1.45/1.02      ( sK5 = sK5 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_284]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_293,plain,
% 1.45/1.02      ( k1_xboole_0 = k1_xboole_0 ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_284]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_3,plain,
% 1.45/1.02      ( r1_xboole_0(X0,k1_xboole_0) ),
% 1.45/1.02      inference(cnf_transformation,[],[f31]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_41,plain,
% 1.45/1.02      ( r1_xboole_0(k1_xboole_0,k1_xboole_0) ),
% 1.45/1.02      inference(instantiation,[status(thm)],[c_3]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_10,plain,
% 1.45/1.02      ( k3_tarski(k1_xboole_0) = k1_xboole_0 ),
% 1.45/1.02      inference(cnf_transformation,[],[f40]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(c_15,negated_conjecture,
% 1.45/1.02      ( k1_xboole_0 != sK5 ),
% 1.45/1.02      inference(cnf_transformation,[],[f44]) ).
% 1.45/1.02  
% 1.45/1.02  cnf(contradiction,plain,
% 1.45/1.02      ( $false ),
% 1.45/1.02      inference(minisat,
% 1.45/1.02                [status(thm)],
% 1.45/1.02                [c_1983,c_1472,c_1249,c_993,c_827,c_737,c_727,c_698,
% 1.45/1.02                 c_667,c_665,c_658,c_293,c_41,c_10,c_15]) ).
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 1.45/1.02  
% 1.45/1.02  ------                               Statistics
% 1.45/1.02  
% 1.45/1.02  ------ General
% 1.45/1.02  
% 1.45/1.02  abstr_ref_over_cycles:                  0
% 1.45/1.02  abstr_ref_under_cycles:                 0
% 1.45/1.02  gc_basic_clause_elim:                   0
% 1.45/1.02  forced_gc_time:                         0
% 1.45/1.02  parsing_time:                           0.016
% 1.45/1.02  unif_index_cands_time:                  0.
% 1.45/1.02  unif_index_add_time:                    0.
% 1.45/1.02  orderings_time:                         0.
% 1.45/1.02  out_proof_time:                         0.02
% 1.45/1.02  total_time:                             0.113
% 1.45/1.02  num_of_symbols:                         42
% 1.45/1.02  num_of_terms:                           2043
% 1.45/1.02  
% 1.45/1.02  ------ Preprocessing
% 1.45/1.02  
% 1.45/1.02  num_of_splits:                          0
% 1.45/1.02  num_of_split_atoms:                     0
% 1.45/1.02  num_of_reused_defs:                     0
% 1.45/1.02  num_eq_ax_congr_red:                    26
% 1.45/1.02  num_of_sem_filtered_clauses:            1
% 1.45/1.02  num_of_subtypes:                        0
% 1.45/1.02  monotx_restored_types:                  0
% 1.45/1.02  sat_num_of_epr_types:                   0
% 1.45/1.02  sat_num_of_non_cyclic_types:            0
% 1.45/1.02  sat_guarded_non_collapsed_types:        0
% 1.45/1.02  num_pure_diseq_elim:                    0
% 1.45/1.02  simp_replaced_by:                       0
% 1.45/1.02  res_preprocessed:                       59
% 1.45/1.02  prep_upred:                             0
% 1.45/1.02  prep_unflattend:                        17
% 1.45/1.02  smt_new_axioms:                         0
% 1.45/1.02  pred_elim_cands:                        2
% 1.45/1.02  pred_elim:                              0
% 1.45/1.02  pred_elim_cl:                           0
% 1.45/1.02  pred_elim_cycles:                       1
% 1.45/1.02  merged_defs:                            0
% 1.45/1.02  merged_defs_ncl:                        0
% 1.45/1.02  bin_hyper_res:                          0
% 1.45/1.02  prep_cycles:                            3
% 1.45/1.02  pred_elim_time:                         0.002
% 1.45/1.02  splitting_time:                         0.
% 1.45/1.02  sem_filter_time:                        0.
% 1.45/1.02  monotx_time:                            0.
% 1.45/1.02  subtype_inf_time:                       0.
% 1.45/1.02  
% 1.45/1.02  ------ Problem properties
% 1.45/1.02  
% 1.45/1.02  clauses:                                16
% 1.45/1.02  conjectures:                            2
% 1.45/1.02  epr:                                    4
% 1.45/1.02  horn:                                   12
% 1.45/1.02  ground:                                 2
% 1.45/1.02  unary:                                  3
% 1.45/1.02  binary:                                 7
% 1.45/1.02  lits:                                   36
% 1.45/1.02  lits_eq:                                5
% 1.45/1.02  fd_pure:                                0
% 1.45/1.02  fd_pseudo:                              0
% 1.45/1.02  fd_cond:                                0
% 1.45/1.02  fd_pseudo_cond:                         3
% 1.45/1.02  ac_symbols:                             0
% 1.45/1.02  
% 1.45/1.02  ------ Propositional Solver
% 1.45/1.02  
% 1.45/1.02  prop_solver_calls:                      23
% 1.45/1.02  prop_fast_solver_calls:                 340
% 1.45/1.02  smt_solver_calls:                       0
% 1.45/1.02  smt_fast_solver_calls:                  0
% 1.45/1.02  prop_num_of_clauses:                    730
% 1.45/1.02  prop_preprocess_simplified:             2446
% 1.45/1.02  prop_fo_subsumed:                       0
% 1.45/1.02  prop_solver_time:                       0.
% 1.45/1.02  smt_solver_time:                        0.
% 1.45/1.02  smt_fast_solver_time:                   0.
% 1.45/1.02  prop_fast_solver_time:                  0.
% 1.45/1.02  prop_unsat_core_time:                   0.
% 1.45/1.02  
% 1.45/1.02  ------ QBF
% 1.45/1.02  
% 1.45/1.02  qbf_q_res:                              0
% 1.45/1.02  qbf_num_tautologies:                    0
% 1.45/1.02  qbf_prep_cycles:                        0
% 1.45/1.02  
% 1.45/1.02  ------ BMC1
% 1.45/1.02  
% 1.45/1.02  bmc1_current_bound:                     -1
% 1.45/1.02  bmc1_last_solved_bound:                 -1
% 1.45/1.02  bmc1_unsat_core_size:                   -1
% 1.45/1.02  bmc1_unsat_core_parents_size:           -1
% 1.45/1.02  bmc1_merge_next_fun:                    0
% 1.45/1.02  bmc1_unsat_core_clauses_time:           0.
% 1.45/1.02  
% 1.45/1.02  ------ Instantiation
% 1.45/1.02  
% 1.45/1.02  inst_num_of_clauses:                    167
% 1.45/1.02  inst_num_in_passive:                    46
% 1.45/1.02  inst_num_in_active:                     99
% 1.45/1.02  inst_num_in_unprocessed:                21
% 1.45/1.02  inst_num_of_loops:                      127
% 1.45/1.02  inst_num_of_learning_restarts:          0
% 1.45/1.02  inst_num_moves_active_passive:          20
% 1.45/1.02  inst_lit_activity:                      0
% 1.45/1.02  inst_lit_activity_moves:                0
% 1.45/1.02  inst_num_tautologies:                   0
% 1.45/1.02  inst_num_prop_implied:                  0
% 1.45/1.02  inst_num_existing_simplified:           0
% 1.45/1.02  inst_num_eq_res_simplified:             0
% 1.45/1.02  inst_num_child_elim:                    0
% 1.45/1.02  inst_num_of_dismatching_blockings:      74
% 1.45/1.02  inst_num_of_non_proper_insts:           133
% 1.45/1.02  inst_num_of_duplicates:                 0
% 1.45/1.02  inst_inst_num_from_inst_to_res:         0
% 1.45/1.02  inst_dismatching_checking_time:         0.
% 1.45/1.02  
% 1.45/1.02  ------ Resolution
% 1.45/1.02  
% 1.45/1.02  res_num_of_clauses:                     0
% 1.45/1.02  res_num_in_passive:                     0
% 1.45/1.02  res_num_in_active:                      0
% 1.45/1.02  res_num_of_loops:                       62
% 1.45/1.02  res_forward_subset_subsumed:            6
% 1.45/1.02  res_backward_subset_subsumed:           2
% 1.45/1.02  res_forward_subsumed:                   0
% 1.45/1.02  res_backward_subsumed:                  1
% 1.45/1.02  res_forward_subsumption_resolution:     0
% 1.45/1.02  res_backward_subsumption_resolution:    0
% 1.45/1.02  res_clause_to_clause_subsumption:       174
% 1.45/1.02  res_orphan_elimination:                 0
% 1.45/1.02  res_tautology_del:                      10
% 1.45/1.02  res_num_eq_res_simplified:              0
% 1.45/1.02  res_num_sel_changes:                    0
% 1.45/1.02  res_moves_from_active_to_pass:          0
% 1.45/1.02  
% 1.45/1.02  ------ Superposition
% 1.45/1.02  
% 1.45/1.02  sup_time_total:                         0.
% 1.45/1.02  sup_time_generating:                    0.
% 1.45/1.02  sup_time_sim_full:                      0.
% 1.45/1.02  sup_time_sim_immed:                     0.
% 1.45/1.02  
% 1.45/1.02  sup_num_of_clauses:                     72
% 1.45/1.02  sup_num_in_active:                      24
% 1.45/1.02  sup_num_in_passive:                     48
% 1.45/1.02  sup_num_of_loops:                       24
% 1.45/1.02  sup_fw_superposition:                   25
% 1.45/1.02  sup_bw_superposition:                   38
% 1.45/1.02  sup_immediate_simplified:               6
% 1.45/1.02  sup_given_eliminated:                   0
% 1.45/1.02  comparisons_done:                       0
% 1.45/1.02  comparisons_avoided:                    0
% 1.45/1.02  
% 1.45/1.02  ------ Simplifications
% 1.45/1.02  
% 1.45/1.02  
% 1.45/1.02  sim_fw_subset_subsumed:                 1
% 1.45/1.02  sim_bw_subset_subsumed:                 0
% 1.45/1.02  sim_fw_subsumed:                        0
% 1.45/1.02  sim_bw_subsumed:                        0
% 1.45/1.02  sim_fw_subsumption_res:                 0
% 1.45/1.02  sim_bw_subsumption_res:                 0
% 1.45/1.02  sim_tautology_del:                      0
% 1.45/1.02  sim_eq_tautology_del:                   1
% 1.45/1.02  sim_eq_res_simp:                        0
% 1.45/1.02  sim_fw_demodulated:                     1
% 1.45/1.02  sim_bw_demodulated:                     0
% 1.45/1.02  sim_light_normalised:                   4
% 1.45/1.02  sim_joinable_taut:                      0
% 1.45/1.02  sim_joinable_simp:                      0
% 1.45/1.02  sim_ac_normalised:                      0
% 1.45/1.02  sim_smt_subsumption:                    0
% 1.45/1.02  
%------------------------------------------------------------------------------
