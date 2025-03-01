%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:57:54 EST 2020

% Result     : Theorem 3.12s
% Output     : CNFRefutation 3.12s
% Verified   : 
% Statistics : Number of formulae       :  116 ( 581 expanded)
%              Number of clauses        :   50 (  95 expanded)
%              Number of leaves         :   19 ( 178 expanded)
%              Depth                    :   16
%              Number of atoms          :  301 (1100 expanded)
%              Number of equality atoms :  228 ( 959 expanded)
%              Maximal formula depth    :   15 (   4 average)
%              Maximal clause size      :   22 (   2 average)
%              Maximal term depth       :    6 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f15,conjecture,(
    ! [X0] :
      ( ? [X1,X2] : k4_tarski(X1,X2) = X0
     => ( k2_mcart_1(X0) != X0
        & k1_mcart_1(X0) != X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0] :
        ( ? [X1,X2] : k4_tarski(X1,X2) = X0
       => ( k2_mcart_1(X0) != X0
          & k1_mcart_1(X0) != X0 ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f21,plain,(
    ? [X0] :
      ( ( k2_mcart_1(X0) = X0
        | k1_mcart_1(X0) = X0 )
      & ? [X1,X2] : k4_tarski(X1,X2) = X0 ) ),
    inference(ennf_transformation,[],[f16])).

fof(f32,plain,(
    ! [X0] :
      ( ? [X1,X2] : k4_tarski(X1,X2) = X0
     => k4_tarski(sK3,sK4) = X0 ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,
    ( ? [X0] :
        ( ( k2_mcart_1(X0) = X0
          | k1_mcart_1(X0) = X0 )
        & ? [X1,X2] : k4_tarski(X1,X2) = X0 )
   => ( ( k2_mcart_1(sK2) = sK2
        | k1_mcart_1(sK2) = sK2 )
      & ? [X2,X1] : k4_tarski(X1,X2) = sK2 ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ( k2_mcart_1(sK2) = sK2
      | k1_mcart_1(sK2) = sK2 )
    & k4_tarski(sK3,sK4) = sK2 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f21,f32,f31])).

fof(f64,plain,
    ( k2_mcart_1(sK2) = sK2
    | k1_mcart_1(sK2) = sK2 ),
    inference(cnf_transformation,[],[f33])).

fof(f63,plain,(
    k4_tarski(sK3,sK4) = sK2 ),
    inference(cnf_transformation,[],[f33])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( k2_mcart_1(k4_tarski(X0,X1)) = X1
      & k1_mcart_1(k4_tarski(X0,X1)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0,X1] : k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f14])).

fof(f62,plain,(
    ! [X0,X1] : k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f14])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( k2_tarski(k4_tarski(X0,X2),k4_tarski(X1,X2)) = k2_zfmisc_1(k2_tarski(X0,X1),k1_tarski(X2))
      & k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X2,X0,X1] : k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)) ),
    inference(cnf_transformation,[],[f10])).

fof(f5,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f69,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f38,f65])).

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

fof(f65,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f39,f40])).

fof(f75,plain,(
    ! [X2,X0,X1] : k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X2)) ),
    inference(definition_unfolding,[],[f45,f65,f69,f65])).

fof(f46,plain,(
    ! [X2,X0,X1] : k2_tarski(k4_tarski(X0,X2),k4_tarski(X1,X2)) = k2_zfmisc_1(k2_tarski(X0,X1),k1_tarski(X2)) ),
    inference(cnf_transformation,[],[f10])).

fof(f74,plain,(
    ! [X2,X0,X1] : k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X2),k4_tarski(X0,X2),k4_tarski(X1,X2)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X1),k2_enumset1(X2,X2,X2,X2)) ),
    inference(definition_unfolding,[],[f46,f65,f65,f69])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f2])).

fof(f35,plain,(
    ! [X0] : k3_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f18])).

fof(f13,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f66,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f60,f65])).

fof(f71,plain,(
    ! [X0] : k1_setfam_1(k2_enumset1(X0,X0,X0,X0)) = X0 ),
    inference(definition_unfolding,[],[f35,f66])).

fof(f11,axiom,(
    ! [X0,X1] : k2_xboole_0(k1_tarski(X0),X1) != k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] : k2_xboole_0(k1_tarski(X0),X1) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f11])).

fof(f4,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f3,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f67,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f36,f66])).

fof(f68,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0)))) ),
    inference(definition_unfolding,[],[f37,f67])).

fof(f76,plain,(
    ! [X0,X1] : k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,k2_enumset1(X0,X0,X0,X0))))) != k1_xboole_0 ),
    inference(definition_unfolding,[],[f47,f68,f69])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(rectify,[],[f1])).

fof(f34,plain,(
    ! [X0] : k2_xboole_0(X0,X0) = X0 ),
    inference(cnf_transformation,[],[f17])).

fof(f70,plain,(
    ! [X0] : k5_xboole_0(X0,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X0)))) = X0 ),
    inference(definition_unfolding,[],[f34,f68])).

fof(f22,plain,(
    ! [X3,X2,X1,X0,X4] :
      ( sP0(X3,X2,X1,X0,X4)
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ( X3 = X5
            | X2 = X5
            | X1 = X5
            | X0 = X5 ) ) ) ),
    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).

fof(f25,plain,(
    ! [X3,X2,X1,X0,X4] :
      ( ( sP0(X3,X2,X1,X0,X4)
        | ? [X5] :
            ( ( ( X3 != X5
                & X2 != X5
                & X1 != X5
                & X0 != X5 )
              | ~ r2_hidden(X5,X4) )
            & ( X3 = X5
              | X2 = X5
              | X1 = X5
              | X0 = X5
              | r2_hidden(X5,X4) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X4)
              | ( X3 != X5
                & X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X3 = X5
              | X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X4) ) )
        | ~ sP0(X3,X2,X1,X0,X4) ) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f26,plain,(
    ! [X3,X2,X1,X0,X4] :
      ( ( sP0(X3,X2,X1,X0,X4)
        | ? [X5] :
            ( ( ( X3 != X5
                & X2 != X5
                & X1 != X5
                & X0 != X5 )
              | ~ r2_hidden(X5,X4) )
            & ( X3 = X5
              | X2 = X5
              | X1 = X5
              | X0 = X5
              | r2_hidden(X5,X4) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X4)
              | ( X3 != X5
                & X2 != X5
                & X1 != X5
                & X0 != X5 ) )
            & ( X3 = X5
              | X2 = X5
              | X1 = X5
              | X0 = X5
              | ~ r2_hidden(X5,X4) ) )
        | ~ sP0(X3,X2,X1,X0,X4) ) ) ),
    inference(flattening,[],[f25])).

fof(f27,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ( sP0(X0,X1,X2,X3,X4)
        | ? [X5] :
            ( ( ( X0 != X5
                & X1 != X5
                & X2 != X5
                & X3 != X5 )
              | ~ r2_hidden(X5,X4) )
            & ( X0 = X5
              | X1 = X5
              | X2 = X5
              | X3 = X5
              | r2_hidden(X5,X4) ) ) )
      & ( ! [X6] :
            ( ( r2_hidden(X6,X4)
              | ( X0 != X6
                & X1 != X6
                & X2 != X6
                & X3 != X6 ) )
            & ( X0 = X6
              | X1 = X6
              | X2 = X6
              | X3 = X6
              | ~ r2_hidden(X6,X4) ) )
        | ~ sP0(X0,X1,X2,X3,X4) ) ) ),
    inference(rectify,[],[f26])).

fof(f28,plain,(
    ! [X4,X3,X2,X1,X0] :
      ( ? [X5] :
          ( ( ( X0 != X5
              & X1 != X5
              & X2 != X5
              & X3 != X5 )
            | ~ r2_hidden(X5,X4) )
          & ( X0 = X5
            | X1 = X5
            | X2 = X5
            | X3 = X5
            | r2_hidden(X5,X4) ) )
     => ( ( ( sK1(X0,X1,X2,X3,X4) != X0
            & sK1(X0,X1,X2,X3,X4) != X1
            & sK1(X0,X1,X2,X3,X4) != X2
            & sK1(X0,X1,X2,X3,X4) != X3 )
          | ~ r2_hidden(sK1(X0,X1,X2,X3,X4),X4) )
        & ( sK1(X0,X1,X2,X3,X4) = X0
          | sK1(X0,X1,X2,X3,X4) = X1
          | sK1(X0,X1,X2,X3,X4) = X2
          | sK1(X0,X1,X2,X3,X4) = X3
          | r2_hidden(sK1(X0,X1,X2,X3,X4),X4) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ( sP0(X0,X1,X2,X3,X4)
        | ( ( ( sK1(X0,X1,X2,X3,X4) != X0
              & sK1(X0,X1,X2,X3,X4) != X1
              & sK1(X0,X1,X2,X3,X4) != X2
              & sK1(X0,X1,X2,X3,X4) != X3 )
            | ~ r2_hidden(sK1(X0,X1,X2,X3,X4),X4) )
          & ( sK1(X0,X1,X2,X3,X4) = X0
            | sK1(X0,X1,X2,X3,X4) = X1
            | sK1(X0,X1,X2,X3,X4) = X2
            | sK1(X0,X1,X2,X3,X4) = X3
            | r2_hidden(sK1(X0,X1,X2,X3,X4),X4) ) ) )
      & ( ! [X6] :
            ( ( r2_hidden(X6,X4)
              | ( X0 != X6
                & X1 != X6
                & X2 != X6
                & X3 != X6 ) )
            & ( X0 = X6
              | X1 = X6
              | X2 = X6
              | X3 = X6
              | ~ r2_hidden(X6,X4) ) )
        | ~ sP0(X0,X1,X2,X3,X4) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f27,f28])).

fof(f49,plain,(
    ! [X6,X4,X2,X0,X3,X1] :
      ( r2_hidden(X6,X4)
      | X3 != X6
      | ~ sP0(X0,X1,X2,X3,X4) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f80,plain,(
    ! [X6,X4,X2,X0,X1] :
      ( r2_hidden(X6,X4)
      | ~ sP0(X0,X1,X2,X6,X4) ) ),
    inference(equality_resolution,[],[f49])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3,X4] :
      ( k2_enumset1(X0,X1,X2,X3) = X4
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ~ ( X3 != X5
              & X2 != X5
              & X1 != X5
              & X0 != X5 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( k2_enumset1(X0,X1,X2,X3) = X4
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ( X3 = X5
            | X2 = X5
            | X1 = X5
            | X0 = X5 ) ) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f23,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( k2_enumset1(X0,X1,X2,X3) = X4
    <=> sP0(X3,X2,X1,X0,X4) ) ),
    inference(definition_folding,[],[f20,f22])).

fof(f30,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ( k2_enumset1(X0,X1,X2,X3) = X4
        | ~ sP0(X3,X2,X1,X0,X4) )
      & ( sP0(X3,X2,X1,X0,X4)
        | k2_enumset1(X0,X1,X2,X3) != X4 ) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f58,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( sP0(X3,X2,X1,X0,X4)
      | k2_enumset1(X0,X1,X2,X3) != X4 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f81,plain,(
    ! [X2,X0,X3,X1] : sP0(X3,X2,X1,X0,k2_enumset1(X0,X1,X2,X3)) ),
    inference(equality_resolution,[],[f58])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
    <=> r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k1_tarski(X0),X1)
        | ~ r2_hidden(X0,X1) )
      & ( r2_hidden(X0,X1)
        | ~ r1_tarski(k1_tarski(X0),X1) ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_tarski(X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f72,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_enumset1(X0,X0,X0,X0),X1)
      | ~ r2_hidden(X0,X1) ) ),
    inference(definition_unfolding,[],[f42,f69])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k2_zfmisc_1(X1,X0))
        | r1_tarski(X0,k2_zfmisc_1(X0,X1)) )
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X0
      | ( ~ r1_tarski(X0,k2_zfmisc_1(X1,X0))
        & ~ r1_tarski(X0,k2_zfmisc_1(X0,X1)) ) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_zfmisc_1(X1,X0)) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f43,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_zfmisc_1(X0,X1)) ) ),
    inference(cnf_transformation,[],[f19])).

cnf(c_23,negated_conjecture,
    ( k1_mcart_1(sK2) = sK2
    | k2_mcart_1(sK2) = sK2 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_24,negated_conjecture,
    ( k4_tarski(sK3,sK4) = sK2 ),
    inference(cnf_transformation,[],[f63])).

cnf(c_22,plain,
    ( k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_2167,plain,
    ( k1_mcart_1(sK2) = sK3 ),
    inference(superposition,[status(thm)],[c_24,c_22])).

cnf(c_2169,plain,
    ( k2_mcart_1(sK2) = sK2
    | sK3 = sK2 ),
    inference(superposition,[status(thm)],[c_23,c_2167])).

cnf(c_21,plain,
    ( k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_2159,plain,
    ( k2_mcart_1(sK2) = sK4 ),
    inference(superposition,[status(thm)],[c_24,c_21])).

cnf(c_2171,plain,
    ( sK4 = sK2
    | sK3 = sK2 ),
    inference(demodulation,[status(thm)],[c_2169,c_2159])).

cnf(c_2244,plain,
    ( k4_tarski(sK3,sK2) = sK2
    | sK3 = sK2 ),
    inference(superposition,[status(thm)],[c_2171,c_24])).

cnf(c_7,plain,
    ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X2)) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_2658,plain,
    ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(X0,X0,X0,sK2)) = k2_enumset1(k4_tarski(sK3,X0),k4_tarski(sK3,X0),k4_tarski(sK3,X0),sK2)
    | sK3 = sK2 ),
    inference(superposition,[status(thm)],[c_2244,c_7])).

cnf(c_2657,plain,
    ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(X0,X0,X0,sK4)) = k2_enumset1(k4_tarski(sK3,X0),k4_tarski(sK3,X0),k4_tarski(sK3,X0),sK2) ),
    inference(superposition,[status(thm)],[c_24,c_7])).

cnf(c_7014,plain,
    ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(X0,X0,X0,sK2)) = k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(X0,X0,X0,sK4))
    | sK3 = sK2 ),
    inference(demodulation,[status(thm)],[c_2658,c_2657])).

cnf(c_6,plain,
    ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X2,X1)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X2),k2_enumset1(X1,X1,X1,X1)) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1,plain,
    ( k1_setfam_1(k2_enumset1(X0,X0,X0,X0)) = X0 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_8,plain,
    ( k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,k2_enumset1(X0,X0,X0,X0))))) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f76])).

cnf(c_2408,plain,
    ( k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0))) != k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1,c_8])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X0)))) = X0 ),
    inference(cnf_transformation,[],[f70])).

cnf(c_2032,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X0)) = X0 ),
    inference(light_normalisation,[status(thm)],[c_0,c_1])).

cnf(c_8132,plain,
    ( k2_enumset1(X0,X0,X0,X0) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2408,c_2032])).

cnf(c_8135,plain,
    ( k2_zfmisc_1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X1)) != k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_6,c_8132])).

cnf(c_8144,plain,
    ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK4,sK4,sK4,sK2)) != k1_xboole_0
    | sK3 = sK2 ),
    inference(superposition,[status(thm)],[c_7014,c_8135])).

cnf(c_2655,plain,
    ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK4,sK4,sK4,X0)) = k2_enumset1(sK2,sK2,sK2,k4_tarski(sK3,X0)) ),
    inference(superposition,[status(thm)],[c_24,c_7])).

cnf(c_8160,plain,
    ( k2_enumset1(sK2,sK2,sK2,k4_tarski(sK3,sK2)) != k1_xboole_0
    | sK3 = sK2 ),
    inference(demodulation,[status(thm)],[c_8144,c_2655])).

cnf(c_17,plain,
    ( ~ sP0(X0,X1,X2,X3,X4)
    | r2_hidden(X3,X4) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_20,plain,
    ( sP0(X0,X1,X2,X3,k2_enumset1(X3,X2,X1,X0)) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_783,plain,
    ( r2_hidden(X0,X1)
    | X2 != X3
    | X4 != X0
    | X5 != X6
    | X7 != X8
    | k2_enumset1(X4,X5,X7,X2) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_20])).

cnf(c_784,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X1,X2,X3)) ),
    inference(unflattening,[status(thm)],[c_783])).

cnf(c_786,plain,
    ( r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2)) ),
    inference(instantiation,[status(thm)],[c_784])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_2266,plain,
    ( ~ r2_hidden(X0,k2_enumset1(X0,X1,X2,X3))
    | r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X1,X2,X3)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_2271,plain,
    ( ~ r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2))
    | r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) ),
    inference(instantiation,[status(thm)],[c_2266])).

cnf(c_2417,plain,
    ( k2_zfmisc_1(k2_enumset1(X0,X0,X0,sK3),k2_enumset1(sK4,sK4,sK4,sK4)) = k2_enumset1(k4_tarski(X0,sK4),k4_tarski(X0,sK4),k4_tarski(X0,sK4),sK2) ),
    inference(superposition,[status(thm)],[c_24,c_6])).

cnf(c_2835,plain,
    ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK4,sK4,sK4,sK4)) = k2_enumset1(sK2,sK2,sK2,sK2) ),
    inference(superposition,[status(thm)],[c_24,c_2417])).

cnf(c_3025,plain,
    ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK2,sK2,sK2,sK2)) = k2_enumset1(sK2,sK2,sK2,sK2)
    | sK3 = sK2 ),
    inference(superposition,[status(thm)],[c_2171,c_2835])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,k2_zfmisc_1(X1,X0))
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_2007,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,k2_zfmisc_1(X1,X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_4316,plain,
    ( k2_enumset1(sK2,sK2,sK2,sK2) = k1_xboole_0
    | sK3 = sK2
    | r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3025,c_2007])).

cnf(c_4351,plain,
    ( ~ r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2))
    | k2_enumset1(sK2,sK2,sK2,sK2) = k1_xboole_0
    | sK3 = sK2 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4316])).

cnf(c_8134,plain,
    ( k2_enumset1(sK2,sK2,sK2,sK2) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_8132])).

cnf(c_8506,plain,
    ( sK3 = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_8160,c_786,c_2271,c_4351,c_8134])).

cnf(c_5,plain,
    ( ~ r1_tarski(X0,k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_2006,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,k2_zfmisc_1(X0,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_3911,plain,
    ( k2_enumset1(sK3,sK3,sK3,sK3) = k1_xboole_0
    | r1_tarski(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2835,c_2006])).

cnf(c_8521,plain,
    ( k2_enumset1(sK2,sK2,sK2,sK2) = k1_xboole_0
    | r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_8506,c_3911])).

cnf(c_2270,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X1,X2,X3)) != iProver_top
    | r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X1,X2,X3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2266])).

cnf(c_2272,plain,
    ( r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2)) != iProver_top
    | r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_2270])).

cnf(c_785,plain,
    ( r2_hidden(X0,k2_enumset1(X0,X1,X2,X3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_784])).

cnf(c_787,plain,
    ( r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_785])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8521,c_8134,c_2272,c_787])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n016.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 09:27:34 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.12/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.12/0.98  
% 3.12/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.12/0.98  
% 3.12/0.98  ------  iProver source info
% 3.12/0.98  
% 3.12/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.12/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.12/0.98  git: non_committed_changes: false
% 3.12/0.98  git: last_make_outside_of_git: false
% 3.12/0.98  
% 3.12/0.98  ------ 
% 3.12/0.98  
% 3.12/0.98  ------ Input Options
% 3.12/0.98  
% 3.12/0.98  --out_options                           all
% 3.12/0.98  --tptp_safe_out                         true
% 3.12/0.98  --problem_path                          ""
% 3.12/0.98  --include_path                          ""
% 3.12/0.98  --clausifier                            res/vclausify_rel
% 3.12/0.98  --clausifier_options                    --mode clausify
% 3.12/0.98  --stdin                                 false
% 3.12/0.98  --stats_out                             all
% 3.12/0.98  
% 3.12/0.98  ------ General Options
% 3.12/0.98  
% 3.12/0.98  --fof                                   false
% 3.12/0.98  --time_out_real                         305.
% 3.12/0.98  --time_out_virtual                      -1.
% 3.12/0.98  --symbol_type_check                     false
% 3.12/0.98  --clausify_out                          false
% 3.12/0.98  --sig_cnt_out                           false
% 3.12/0.98  --trig_cnt_out                          false
% 3.12/0.98  --trig_cnt_out_tolerance                1.
% 3.12/0.98  --trig_cnt_out_sk_spl                   false
% 3.12/0.98  --abstr_cl_out                          false
% 3.12/0.98  
% 3.12/0.98  ------ Global Options
% 3.12/0.98  
% 3.12/0.98  --schedule                              default
% 3.12/0.98  --add_important_lit                     false
% 3.12/0.98  --prop_solver_per_cl                    1000
% 3.12/0.98  --min_unsat_core                        false
% 3.12/0.98  --soft_assumptions                      false
% 3.12/0.98  --soft_lemma_size                       3
% 3.12/0.98  --prop_impl_unit_size                   0
% 3.12/0.98  --prop_impl_unit                        []
% 3.12/0.98  --share_sel_clauses                     true
% 3.12/0.98  --reset_solvers                         false
% 3.12/0.98  --bc_imp_inh                            [conj_cone]
% 3.12/0.98  --conj_cone_tolerance                   3.
% 3.12/0.98  --extra_neg_conj                        none
% 3.12/0.98  --large_theory_mode                     true
% 3.12/0.98  --prolific_symb_bound                   200
% 3.12/0.98  --lt_threshold                          2000
% 3.12/0.98  --clause_weak_htbl                      true
% 3.12/0.98  --gc_record_bc_elim                     false
% 3.12/0.98  
% 3.12/0.98  ------ Preprocessing Options
% 3.12/0.98  
% 3.12/0.98  --preprocessing_flag                    true
% 3.12/0.98  --time_out_prep_mult                    0.1
% 3.12/0.98  --splitting_mode                        input
% 3.12/0.98  --splitting_grd                         true
% 3.12/0.98  --splitting_cvd                         false
% 3.12/0.98  --splitting_cvd_svl                     false
% 3.12/0.98  --splitting_nvd                         32
% 3.12/0.98  --sub_typing                            true
% 3.12/0.98  --prep_gs_sim                           true
% 3.12/0.98  --prep_unflatten                        true
% 3.12/0.98  --prep_res_sim                          true
% 3.12/0.98  --prep_upred                            true
% 3.12/0.98  --prep_sem_filter                       exhaustive
% 3.12/0.98  --prep_sem_filter_out                   false
% 3.12/0.98  --pred_elim                             true
% 3.12/0.98  --res_sim_input                         true
% 3.12/0.98  --eq_ax_congr_red                       true
% 3.12/0.98  --pure_diseq_elim                       true
% 3.12/0.98  --brand_transform                       false
% 3.12/0.98  --non_eq_to_eq                          false
% 3.12/0.98  --prep_def_merge                        true
% 3.12/0.98  --prep_def_merge_prop_impl              false
% 3.12/0.98  --prep_def_merge_mbd                    true
% 3.12/0.98  --prep_def_merge_tr_red                 false
% 3.12/0.98  --prep_def_merge_tr_cl                  false
% 3.12/0.98  --smt_preprocessing                     true
% 3.12/0.98  --smt_ac_axioms                         fast
% 3.12/0.98  --preprocessed_out                      false
% 3.12/0.98  --preprocessed_stats                    false
% 3.12/0.98  
% 3.12/0.98  ------ Abstraction refinement Options
% 3.12/0.98  
% 3.12/0.98  --abstr_ref                             []
% 3.12/0.98  --abstr_ref_prep                        false
% 3.12/0.98  --abstr_ref_until_sat                   false
% 3.12/0.98  --abstr_ref_sig_restrict                funpre
% 3.12/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.12/0.98  --abstr_ref_under                       []
% 3.12/0.98  
% 3.12/0.98  ------ SAT Options
% 3.12/0.98  
% 3.12/0.98  --sat_mode                              false
% 3.12/0.98  --sat_fm_restart_options                ""
% 3.12/0.98  --sat_gr_def                            false
% 3.12/0.98  --sat_epr_types                         true
% 3.12/0.98  --sat_non_cyclic_types                  false
% 3.12/0.98  --sat_finite_models                     false
% 3.12/0.98  --sat_fm_lemmas                         false
% 3.12/0.98  --sat_fm_prep                           false
% 3.12/0.98  --sat_fm_uc_incr                        true
% 3.12/0.98  --sat_out_model                         small
% 3.12/0.98  --sat_out_clauses                       false
% 3.12/0.98  
% 3.12/0.98  ------ QBF Options
% 3.12/0.98  
% 3.12/0.98  --qbf_mode                              false
% 3.12/0.98  --qbf_elim_univ                         false
% 3.12/0.98  --qbf_dom_inst                          none
% 3.12/0.98  --qbf_dom_pre_inst                      false
% 3.12/0.98  --qbf_sk_in                             false
% 3.12/0.98  --qbf_pred_elim                         true
% 3.12/0.98  --qbf_split                             512
% 3.12/0.98  
% 3.12/0.98  ------ BMC1 Options
% 3.12/0.98  
% 3.12/0.98  --bmc1_incremental                      false
% 3.12/0.98  --bmc1_axioms                           reachable_all
% 3.12/0.98  --bmc1_min_bound                        0
% 3.12/0.98  --bmc1_max_bound                        -1
% 3.12/0.98  --bmc1_max_bound_default                -1
% 3.12/0.98  --bmc1_symbol_reachability              true
% 3.12/0.98  --bmc1_property_lemmas                  false
% 3.12/0.98  --bmc1_k_induction                      false
% 3.12/0.98  --bmc1_non_equiv_states                 false
% 3.12/0.98  --bmc1_deadlock                         false
% 3.12/0.98  --bmc1_ucm                              false
% 3.12/0.98  --bmc1_add_unsat_core                   none
% 3.12/0.98  --bmc1_unsat_core_children              false
% 3.12/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.12/0.98  --bmc1_out_stat                         full
% 3.12/0.98  --bmc1_ground_init                      false
% 3.12/0.98  --bmc1_pre_inst_next_state              false
% 3.12/0.98  --bmc1_pre_inst_state                   false
% 3.12/0.98  --bmc1_pre_inst_reach_state             false
% 3.12/0.98  --bmc1_out_unsat_core                   false
% 3.12/0.98  --bmc1_aig_witness_out                  false
% 3.12/0.98  --bmc1_verbose                          false
% 3.12/0.98  --bmc1_dump_clauses_tptp                false
% 3.12/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.12/0.98  --bmc1_dump_file                        -
% 3.12/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.12/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.12/0.98  --bmc1_ucm_extend_mode                  1
% 3.12/0.98  --bmc1_ucm_init_mode                    2
% 3.12/0.98  --bmc1_ucm_cone_mode                    none
% 3.12/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.12/0.98  --bmc1_ucm_relax_model                  4
% 3.12/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.12/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.12/0.98  --bmc1_ucm_layered_model                none
% 3.12/0.98  --bmc1_ucm_max_lemma_size               10
% 3.12/0.98  
% 3.12/0.98  ------ AIG Options
% 3.12/0.98  
% 3.12/0.98  --aig_mode                              false
% 3.12/0.98  
% 3.12/0.98  ------ Instantiation Options
% 3.12/0.98  
% 3.12/0.98  --instantiation_flag                    true
% 3.12/0.98  --inst_sos_flag                         false
% 3.12/0.98  --inst_sos_phase                        true
% 3.12/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.12/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.12/0.98  --inst_lit_sel_side                     num_symb
% 3.12/0.98  --inst_solver_per_active                1400
% 3.12/0.98  --inst_solver_calls_frac                1.
% 3.12/0.98  --inst_passive_queue_type               priority_queues
% 3.12/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.12/0.98  --inst_passive_queues_freq              [25;2]
% 3.12/0.98  --inst_dismatching                      true
% 3.12/0.98  --inst_eager_unprocessed_to_passive     true
% 3.12/0.98  --inst_prop_sim_given                   true
% 3.12/0.98  --inst_prop_sim_new                     false
% 3.12/0.98  --inst_subs_new                         false
% 3.12/0.98  --inst_eq_res_simp                      false
% 3.12/0.98  --inst_subs_given                       false
% 3.12/0.98  --inst_orphan_elimination               true
% 3.12/0.98  --inst_learning_loop_flag               true
% 3.12/0.98  --inst_learning_start                   3000
% 3.12/0.98  --inst_learning_factor                  2
% 3.12/0.98  --inst_start_prop_sim_after_learn       3
% 3.12/0.98  --inst_sel_renew                        solver
% 3.12/0.98  --inst_lit_activity_flag                true
% 3.12/0.98  --inst_restr_to_given                   false
% 3.12/0.98  --inst_activity_threshold               500
% 3.12/0.98  --inst_out_proof                        true
% 3.12/0.98  
% 3.12/0.98  ------ Resolution Options
% 3.12/0.98  
% 3.12/0.98  --resolution_flag                       true
% 3.12/0.98  --res_lit_sel                           adaptive
% 3.12/0.98  --res_lit_sel_side                      none
% 3.12/0.98  --res_ordering                          kbo
% 3.12/0.98  --res_to_prop_solver                    active
% 3.12/0.98  --res_prop_simpl_new                    false
% 3.12/0.98  --res_prop_simpl_given                  true
% 3.12/0.98  --res_passive_queue_type                priority_queues
% 3.12/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.12/0.98  --res_passive_queues_freq               [15;5]
% 3.12/0.98  --res_forward_subs                      full
% 3.12/0.98  --res_backward_subs                     full
% 3.12/0.98  --res_forward_subs_resolution           true
% 3.12/0.98  --res_backward_subs_resolution          true
% 3.12/0.98  --res_orphan_elimination                true
% 3.12/0.98  --res_time_limit                        2.
% 3.12/0.98  --res_out_proof                         true
% 3.12/0.98  
% 3.12/0.98  ------ Superposition Options
% 3.12/0.98  
% 3.12/0.98  --superposition_flag                    true
% 3.12/0.98  --sup_passive_queue_type                priority_queues
% 3.12/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.12/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.12/0.98  --demod_completeness_check              fast
% 3.12/0.98  --demod_use_ground                      true
% 3.12/0.98  --sup_to_prop_solver                    passive
% 3.12/0.98  --sup_prop_simpl_new                    true
% 3.12/0.98  --sup_prop_simpl_given                  true
% 3.12/0.98  --sup_fun_splitting                     false
% 3.12/0.98  --sup_smt_interval                      50000
% 3.12/0.98  
% 3.12/0.98  ------ Superposition Simplification Setup
% 3.12/0.98  
% 3.12/0.98  --sup_indices_passive                   []
% 3.12/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.12/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/0.98  --sup_full_bw                           [BwDemod]
% 3.12/0.98  --sup_immed_triv                        [TrivRules]
% 3.12/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/0.98  --sup_immed_bw_main                     []
% 3.12/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.12/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.12/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.12/0.98  
% 3.12/0.98  ------ Combination Options
% 3.12/0.98  
% 3.12/0.98  --comb_res_mult                         3
% 3.12/0.98  --comb_sup_mult                         2
% 3.12/0.98  --comb_inst_mult                        10
% 3.12/0.98  
% 3.12/0.98  ------ Debug Options
% 3.12/0.98  
% 3.12/0.98  --dbg_backtrace                         false
% 3.12/0.98  --dbg_dump_prop_clauses                 false
% 3.12/0.98  --dbg_dump_prop_clauses_file            -
% 3.12/0.98  --dbg_out_stat                          false
% 3.12/0.98  ------ Parsing...
% 3.12/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.12/0.98  
% 3.12/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.12/0.98  
% 3.12/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.12/0.98  
% 3.12/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.12/0.98  ------ Proving...
% 3.12/0.98  ------ Problem Properties 
% 3.12/0.98  
% 3.12/0.98  
% 3.12/0.98  clauses                                 25
% 3.12/0.98  conjectures                             2
% 3.12/0.98  EPR                                     5
% 3.12/0.98  Horn                                    22
% 3.12/0.98  unary                                   9
% 3.12/0.98  binary                                  10
% 3.12/0.98  lits                                    53
% 3.12/0.98  lits eq                                 25
% 3.12/0.98  fd_pure                                 0
% 3.12/0.98  fd_pseudo                               0
% 3.12/0.98  fd_cond                                 2
% 3.12/0.98  fd_pseudo_cond                          2
% 3.12/0.98  AC symbols                              0
% 3.12/0.98  
% 3.12/0.98  ------ Schedule dynamic 5 is on 
% 3.12/0.98  
% 3.12/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.12/0.98  
% 3.12/0.98  
% 3.12/0.98  ------ 
% 3.12/0.98  Current options:
% 3.12/0.98  ------ 
% 3.12/0.98  
% 3.12/0.98  ------ Input Options
% 3.12/0.98  
% 3.12/0.98  --out_options                           all
% 3.12/0.98  --tptp_safe_out                         true
% 3.12/0.98  --problem_path                          ""
% 3.12/0.98  --include_path                          ""
% 3.12/0.98  --clausifier                            res/vclausify_rel
% 3.12/0.98  --clausifier_options                    --mode clausify
% 3.12/0.98  --stdin                                 false
% 3.12/0.98  --stats_out                             all
% 3.12/0.98  
% 3.12/0.98  ------ General Options
% 3.12/0.98  
% 3.12/0.98  --fof                                   false
% 3.12/0.98  --time_out_real                         305.
% 3.12/0.98  --time_out_virtual                      -1.
% 3.12/0.98  --symbol_type_check                     false
% 3.12/0.98  --clausify_out                          false
% 3.12/0.98  --sig_cnt_out                           false
% 3.12/0.98  --trig_cnt_out                          false
% 3.12/0.98  --trig_cnt_out_tolerance                1.
% 3.12/0.98  --trig_cnt_out_sk_spl                   false
% 3.12/0.98  --abstr_cl_out                          false
% 3.12/0.98  
% 3.12/0.98  ------ Global Options
% 3.12/0.98  
% 3.12/0.98  --schedule                              default
% 3.12/0.98  --add_important_lit                     false
% 3.12/0.98  --prop_solver_per_cl                    1000
% 3.12/0.98  --min_unsat_core                        false
% 3.12/0.98  --soft_assumptions                      false
% 3.12/0.98  --soft_lemma_size                       3
% 3.12/0.98  --prop_impl_unit_size                   0
% 3.12/0.98  --prop_impl_unit                        []
% 3.12/0.98  --share_sel_clauses                     true
% 3.12/0.98  --reset_solvers                         false
% 3.12/0.98  --bc_imp_inh                            [conj_cone]
% 3.12/0.98  --conj_cone_tolerance                   3.
% 3.12/0.98  --extra_neg_conj                        none
% 3.12/0.98  --large_theory_mode                     true
% 3.12/0.98  --prolific_symb_bound                   200
% 3.12/0.98  --lt_threshold                          2000
% 3.12/0.98  --clause_weak_htbl                      true
% 3.12/0.98  --gc_record_bc_elim                     false
% 3.12/0.98  
% 3.12/0.98  ------ Preprocessing Options
% 3.12/0.98  
% 3.12/0.98  --preprocessing_flag                    true
% 3.12/0.98  --time_out_prep_mult                    0.1
% 3.12/0.98  --splitting_mode                        input
% 3.12/0.98  --splitting_grd                         true
% 3.12/0.98  --splitting_cvd                         false
% 3.12/0.98  --splitting_cvd_svl                     false
% 3.12/0.98  --splitting_nvd                         32
% 3.12/0.98  --sub_typing                            true
% 3.12/0.98  --prep_gs_sim                           true
% 3.12/0.98  --prep_unflatten                        true
% 3.12/0.98  --prep_res_sim                          true
% 3.12/0.98  --prep_upred                            true
% 3.12/0.98  --prep_sem_filter                       exhaustive
% 3.12/0.98  --prep_sem_filter_out                   false
% 3.12/0.98  --pred_elim                             true
% 3.12/0.98  --res_sim_input                         true
% 3.12/0.98  --eq_ax_congr_red                       true
% 3.12/0.98  --pure_diseq_elim                       true
% 3.12/0.98  --brand_transform                       false
% 3.12/0.98  --non_eq_to_eq                          false
% 3.12/0.98  --prep_def_merge                        true
% 3.12/0.98  --prep_def_merge_prop_impl              false
% 3.12/0.98  --prep_def_merge_mbd                    true
% 3.12/0.98  --prep_def_merge_tr_red                 false
% 3.12/0.98  --prep_def_merge_tr_cl                  false
% 3.12/0.98  --smt_preprocessing                     true
% 3.12/0.98  --smt_ac_axioms                         fast
% 3.12/0.98  --preprocessed_out                      false
% 3.12/0.98  --preprocessed_stats                    false
% 3.12/0.98  
% 3.12/0.98  ------ Abstraction refinement Options
% 3.12/0.98  
% 3.12/0.98  --abstr_ref                             []
% 3.12/0.98  --abstr_ref_prep                        false
% 3.12/0.98  --abstr_ref_until_sat                   false
% 3.12/0.98  --abstr_ref_sig_restrict                funpre
% 3.12/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.12/0.98  --abstr_ref_under                       []
% 3.12/0.98  
% 3.12/0.98  ------ SAT Options
% 3.12/0.98  
% 3.12/0.98  --sat_mode                              false
% 3.12/0.98  --sat_fm_restart_options                ""
% 3.12/0.98  --sat_gr_def                            false
% 3.12/0.98  --sat_epr_types                         true
% 3.12/0.98  --sat_non_cyclic_types                  false
% 3.12/0.98  --sat_finite_models                     false
% 3.12/0.98  --sat_fm_lemmas                         false
% 3.12/0.98  --sat_fm_prep                           false
% 3.12/0.98  --sat_fm_uc_incr                        true
% 3.12/0.98  --sat_out_model                         small
% 3.12/0.98  --sat_out_clauses                       false
% 3.12/0.98  
% 3.12/0.98  ------ QBF Options
% 3.12/0.98  
% 3.12/0.98  --qbf_mode                              false
% 3.12/0.98  --qbf_elim_univ                         false
% 3.12/0.98  --qbf_dom_inst                          none
% 3.12/0.98  --qbf_dom_pre_inst                      false
% 3.12/0.98  --qbf_sk_in                             false
% 3.12/0.98  --qbf_pred_elim                         true
% 3.12/0.98  --qbf_split                             512
% 3.12/0.98  
% 3.12/0.98  ------ BMC1 Options
% 3.12/0.98  
% 3.12/0.98  --bmc1_incremental                      false
% 3.12/0.98  --bmc1_axioms                           reachable_all
% 3.12/0.98  --bmc1_min_bound                        0
% 3.12/0.98  --bmc1_max_bound                        -1
% 3.12/0.98  --bmc1_max_bound_default                -1
% 3.12/0.98  --bmc1_symbol_reachability              true
% 3.12/0.98  --bmc1_property_lemmas                  false
% 3.12/0.98  --bmc1_k_induction                      false
% 3.12/0.98  --bmc1_non_equiv_states                 false
% 3.12/0.98  --bmc1_deadlock                         false
% 3.12/0.98  --bmc1_ucm                              false
% 3.12/0.98  --bmc1_add_unsat_core                   none
% 3.12/0.98  --bmc1_unsat_core_children              false
% 3.12/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.12/0.98  --bmc1_out_stat                         full
% 3.12/0.98  --bmc1_ground_init                      false
% 3.12/0.98  --bmc1_pre_inst_next_state              false
% 3.12/0.98  --bmc1_pre_inst_state                   false
% 3.12/0.98  --bmc1_pre_inst_reach_state             false
% 3.12/0.98  --bmc1_out_unsat_core                   false
% 3.12/0.98  --bmc1_aig_witness_out                  false
% 3.12/0.98  --bmc1_verbose                          false
% 3.12/0.98  --bmc1_dump_clauses_tptp                false
% 3.12/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.12/0.98  --bmc1_dump_file                        -
% 3.12/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.12/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.12/0.98  --bmc1_ucm_extend_mode                  1
% 3.12/0.98  --bmc1_ucm_init_mode                    2
% 3.12/0.98  --bmc1_ucm_cone_mode                    none
% 3.12/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.12/0.98  --bmc1_ucm_relax_model                  4
% 3.12/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.12/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.12/0.98  --bmc1_ucm_layered_model                none
% 3.12/0.98  --bmc1_ucm_max_lemma_size               10
% 3.12/0.98  
% 3.12/0.98  ------ AIG Options
% 3.12/0.98  
% 3.12/0.98  --aig_mode                              false
% 3.12/0.98  
% 3.12/0.98  ------ Instantiation Options
% 3.12/0.98  
% 3.12/0.98  --instantiation_flag                    true
% 3.12/0.98  --inst_sos_flag                         false
% 3.12/0.98  --inst_sos_phase                        true
% 3.12/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.12/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.12/0.98  --inst_lit_sel_side                     none
% 3.12/0.98  --inst_solver_per_active                1400
% 3.12/0.98  --inst_solver_calls_frac                1.
% 3.12/0.98  --inst_passive_queue_type               priority_queues
% 3.12/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.12/0.98  --inst_passive_queues_freq              [25;2]
% 3.12/0.98  --inst_dismatching                      true
% 3.12/0.98  --inst_eager_unprocessed_to_passive     true
% 3.12/0.98  --inst_prop_sim_given                   true
% 3.12/0.98  --inst_prop_sim_new                     false
% 3.12/0.98  --inst_subs_new                         false
% 3.12/0.98  --inst_eq_res_simp                      false
% 3.12/0.98  --inst_subs_given                       false
% 3.12/0.98  --inst_orphan_elimination               true
% 3.12/0.98  --inst_learning_loop_flag               true
% 3.12/0.98  --inst_learning_start                   3000
% 3.12/0.98  --inst_learning_factor                  2
% 3.12/0.98  --inst_start_prop_sim_after_learn       3
% 3.12/0.98  --inst_sel_renew                        solver
% 3.12/0.98  --inst_lit_activity_flag                true
% 3.12/0.98  --inst_restr_to_given                   false
% 3.12/0.98  --inst_activity_threshold               500
% 3.12/0.98  --inst_out_proof                        true
% 3.12/0.98  
% 3.12/0.98  ------ Resolution Options
% 3.12/0.98  
% 3.12/0.98  --resolution_flag                       false
% 3.12/0.98  --res_lit_sel                           adaptive
% 3.12/0.98  --res_lit_sel_side                      none
% 3.12/0.98  --res_ordering                          kbo
% 3.12/0.98  --res_to_prop_solver                    active
% 3.12/0.98  --res_prop_simpl_new                    false
% 3.12/0.98  --res_prop_simpl_given                  true
% 3.12/0.98  --res_passive_queue_type                priority_queues
% 3.12/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.12/0.98  --res_passive_queues_freq               [15;5]
% 3.12/0.98  --res_forward_subs                      full
% 3.12/0.98  --res_backward_subs                     full
% 3.12/0.98  --res_forward_subs_resolution           true
% 3.12/0.98  --res_backward_subs_resolution          true
% 3.12/0.98  --res_orphan_elimination                true
% 3.12/0.98  --res_time_limit                        2.
% 3.12/0.98  --res_out_proof                         true
% 3.12/0.98  
% 3.12/0.98  ------ Superposition Options
% 3.12/0.98  
% 3.12/0.98  --superposition_flag                    true
% 3.12/0.98  --sup_passive_queue_type                priority_queues
% 3.12/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.12/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.12/0.98  --demod_completeness_check              fast
% 3.12/0.98  --demod_use_ground                      true
% 3.12/0.98  --sup_to_prop_solver                    passive
% 3.12/0.98  --sup_prop_simpl_new                    true
% 3.12/0.98  --sup_prop_simpl_given                  true
% 3.12/0.98  --sup_fun_splitting                     false
% 3.12/0.98  --sup_smt_interval                      50000
% 3.12/0.98  
% 3.12/0.98  ------ Superposition Simplification Setup
% 3.12/0.98  
% 3.12/0.98  --sup_indices_passive                   []
% 3.12/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.12/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.12/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/0.98  --sup_full_bw                           [BwDemod]
% 3.12/0.98  --sup_immed_triv                        [TrivRules]
% 3.12/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.12/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/0.99  --sup_immed_bw_main                     []
% 3.12/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.12/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.12/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.12/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.12/0.99  
% 3.12/0.99  ------ Combination Options
% 3.12/0.99  
% 3.12/0.99  --comb_res_mult                         3
% 3.12/0.99  --comb_sup_mult                         2
% 3.12/0.99  --comb_inst_mult                        10
% 3.12/0.99  
% 3.12/0.99  ------ Debug Options
% 3.12/0.99  
% 3.12/0.99  --dbg_backtrace                         false
% 3.12/0.99  --dbg_dump_prop_clauses                 false
% 3.12/0.99  --dbg_dump_prop_clauses_file            -
% 3.12/0.99  --dbg_out_stat                          false
% 3.12/0.99  
% 3.12/0.99  
% 3.12/0.99  
% 3.12/0.99  
% 3.12/0.99  ------ Proving...
% 3.12/0.99  
% 3.12/0.99  
% 3.12/0.99  % SZS status Theorem for theBenchmark.p
% 3.12/0.99  
% 3.12/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.12/0.99  
% 3.12/0.99  fof(f15,conjecture,(
% 3.12/0.99    ! [X0] : (? [X1,X2] : k4_tarski(X1,X2) = X0 => (k2_mcart_1(X0) != X0 & k1_mcart_1(X0) != X0))),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f16,negated_conjecture,(
% 3.12/0.99    ~! [X0] : (? [X1,X2] : k4_tarski(X1,X2) = X0 => (k2_mcart_1(X0) != X0 & k1_mcart_1(X0) != X0))),
% 3.12/0.99    inference(negated_conjecture,[],[f15])).
% 3.12/0.99  
% 3.12/0.99  fof(f21,plain,(
% 3.12/0.99    ? [X0] : ((k2_mcart_1(X0) = X0 | k1_mcart_1(X0) = X0) & ? [X1,X2] : k4_tarski(X1,X2) = X0)),
% 3.12/0.99    inference(ennf_transformation,[],[f16])).
% 3.12/0.99  
% 3.12/0.99  fof(f32,plain,(
% 3.12/0.99    ( ! [X0] : (? [X1,X2] : k4_tarski(X1,X2) = X0 => k4_tarski(sK3,sK4) = X0) )),
% 3.12/0.99    introduced(choice_axiom,[])).
% 3.12/0.99  
% 3.12/0.99  fof(f31,plain,(
% 3.12/0.99    ? [X0] : ((k2_mcart_1(X0) = X0 | k1_mcart_1(X0) = X0) & ? [X1,X2] : k4_tarski(X1,X2) = X0) => ((k2_mcart_1(sK2) = sK2 | k1_mcart_1(sK2) = sK2) & ? [X2,X1] : k4_tarski(X1,X2) = sK2)),
% 3.12/0.99    introduced(choice_axiom,[])).
% 3.12/0.99  
% 3.12/0.99  fof(f33,plain,(
% 3.12/0.99    (k2_mcart_1(sK2) = sK2 | k1_mcart_1(sK2) = sK2) & k4_tarski(sK3,sK4) = sK2),
% 3.12/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f21,f32,f31])).
% 3.12/0.99  
% 3.12/0.99  fof(f64,plain,(
% 3.12/0.99    k2_mcart_1(sK2) = sK2 | k1_mcart_1(sK2) = sK2),
% 3.12/0.99    inference(cnf_transformation,[],[f33])).
% 3.12/0.99  
% 3.12/0.99  fof(f63,plain,(
% 3.12/0.99    k4_tarski(sK3,sK4) = sK2),
% 3.12/0.99    inference(cnf_transformation,[],[f33])).
% 3.12/0.99  
% 3.12/0.99  fof(f14,axiom,(
% 3.12/0.99    ! [X0,X1] : (k2_mcart_1(k4_tarski(X0,X1)) = X1 & k1_mcart_1(k4_tarski(X0,X1)) = X0)),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f61,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k1_mcart_1(k4_tarski(X0,X1)) = X0) )),
% 3.12/0.99    inference(cnf_transformation,[],[f14])).
% 3.12/0.99  
% 3.12/0.99  fof(f62,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k2_mcart_1(k4_tarski(X0,X1)) = X1) )),
% 3.12/0.99    inference(cnf_transformation,[],[f14])).
% 3.12/0.99  
% 3.12/0.99  fof(f10,axiom,(
% 3.12/0.99    ! [X0,X1,X2] : (k2_tarski(k4_tarski(X0,X2),k4_tarski(X1,X2)) = k2_zfmisc_1(k2_tarski(X0,X1),k1_tarski(X2)) & k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2)))),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f45,plain,(
% 3.12/0.99    ( ! [X2,X0,X1] : (k2_tarski(k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k1_tarski(X0),k2_tarski(X1,X2))) )),
% 3.12/0.99    inference(cnf_transformation,[],[f10])).
% 3.12/0.99  
% 3.12/0.99  fof(f5,axiom,(
% 3.12/0.99    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f38,plain,(
% 3.12/0.99    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 3.12/0.99    inference(cnf_transformation,[],[f5])).
% 3.12/0.99  
% 3.12/0.99  fof(f69,plain,(
% 3.12/0.99    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 3.12/0.99    inference(definition_unfolding,[],[f38,f65])).
% 3.12/0.99  
% 3.12/0.99  fof(f6,axiom,(
% 3.12/0.99    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f39,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 3.12/0.99    inference(cnf_transformation,[],[f6])).
% 3.12/0.99  
% 3.12/0.99  fof(f7,axiom,(
% 3.12/0.99    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f40,plain,(
% 3.12/0.99    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 3.12/0.99    inference(cnf_transformation,[],[f7])).
% 3.12/0.99  
% 3.12/0.99  fof(f65,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 3.12/0.99    inference(definition_unfolding,[],[f39,f40])).
% 3.12/0.99  
% 3.12/0.99  fof(f75,plain,(
% 3.12/0.99    ( ! [X2,X0,X1] : (k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X2))) )),
% 3.12/0.99    inference(definition_unfolding,[],[f45,f65,f69,f65])).
% 3.12/0.99  
% 3.12/0.99  fof(f46,plain,(
% 3.12/0.99    ( ! [X2,X0,X1] : (k2_tarski(k4_tarski(X0,X2),k4_tarski(X1,X2)) = k2_zfmisc_1(k2_tarski(X0,X1),k1_tarski(X2))) )),
% 3.12/0.99    inference(cnf_transformation,[],[f10])).
% 3.12/0.99  
% 3.12/0.99  fof(f74,plain,(
% 3.12/0.99    ( ! [X2,X0,X1] : (k2_enumset1(k4_tarski(X0,X2),k4_tarski(X0,X2),k4_tarski(X0,X2),k4_tarski(X1,X2)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X1),k2_enumset1(X2,X2,X2,X2))) )),
% 3.12/0.99    inference(definition_unfolding,[],[f46,f65,f65,f69])).
% 3.12/0.99  
% 3.12/0.99  fof(f2,axiom,(
% 3.12/0.99    ! [X0,X1] : k3_xboole_0(X0,X0) = X0),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f18,plain,(
% 3.12/0.99    ! [X0] : k3_xboole_0(X0,X0) = X0),
% 3.12/0.99    inference(rectify,[],[f2])).
% 3.12/0.99  
% 3.12/0.99  fof(f35,plain,(
% 3.12/0.99    ( ! [X0] : (k3_xboole_0(X0,X0) = X0) )),
% 3.12/0.99    inference(cnf_transformation,[],[f18])).
% 3.12/0.99  
% 3.12/0.99  fof(f13,axiom,(
% 3.12/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f60,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 3.12/0.99    inference(cnf_transformation,[],[f13])).
% 3.12/0.99  
% 3.12/0.99  fof(f66,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_enumset1(X0,X0,X0,X1))) )),
% 3.12/0.99    inference(definition_unfolding,[],[f60,f65])).
% 3.12/0.99  
% 3.12/0.99  fof(f71,plain,(
% 3.12/0.99    ( ! [X0] : (k1_setfam_1(k2_enumset1(X0,X0,X0,X0)) = X0) )),
% 3.12/0.99    inference(definition_unfolding,[],[f35,f66])).
% 3.12/0.99  
% 3.12/0.99  fof(f11,axiom,(
% 3.12/0.99    ! [X0,X1] : k2_xboole_0(k1_tarski(X0),X1) != k1_xboole_0),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f47,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k2_xboole_0(k1_tarski(X0),X1) != k1_xboole_0) )),
% 3.12/0.99    inference(cnf_transformation,[],[f11])).
% 3.12/0.99  
% 3.12/0.99  fof(f4,axiom,(
% 3.12/0.99    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f37,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 3.12/0.99    inference(cnf_transformation,[],[f4])).
% 3.12/0.99  
% 3.12/0.99  fof(f3,axiom,(
% 3.12/0.99    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f36,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.12/0.99    inference(cnf_transformation,[],[f3])).
% 3.12/0.99  
% 3.12/0.99  fof(f67,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X1)))) )),
% 3.12/0.99    inference(definition_unfolding,[],[f36,f66])).
% 3.12/0.99  
% 3.12/0.99  fof(f68,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X0))))) )),
% 3.12/0.99    inference(definition_unfolding,[],[f37,f67])).
% 3.12/0.99  
% 3.12/0.99  fof(f76,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,k2_enumset1(X0,X0,X0,X0))))) != k1_xboole_0) )),
% 3.12/0.99    inference(definition_unfolding,[],[f47,f68,f69])).
% 3.12/0.99  
% 3.12/0.99  fof(f1,axiom,(
% 3.12/0.99    ! [X0,X1] : k2_xboole_0(X0,X0) = X0),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f17,plain,(
% 3.12/0.99    ! [X0] : k2_xboole_0(X0,X0) = X0),
% 3.12/0.99    inference(rectify,[],[f1])).
% 3.12/0.99  
% 3.12/0.99  fof(f34,plain,(
% 3.12/0.99    ( ! [X0] : (k2_xboole_0(X0,X0) = X0) )),
% 3.12/0.99    inference(cnf_transformation,[],[f17])).
% 3.12/0.99  
% 3.12/0.99  fof(f70,plain,(
% 3.12/0.99    ( ! [X0] : (k5_xboole_0(X0,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X0)))) = X0) )),
% 3.12/0.99    inference(definition_unfolding,[],[f34,f68])).
% 3.12/0.99  
% 3.12/0.99  fof(f22,plain,(
% 3.12/0.99    ! [X3,X2,X1,X0,X4] : (sP0(X3,X2,X1,X0,X4) <=> ! [X5] : (r2_hidden(X5,X4) <=> (X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5)))),
% 3.12/0.99    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 3.12/0.99  
% 3.12/0.99  fof(f25,plain,(
% 3.12/0.99    ! [X3,X2,X1,X0,X4] : ((sP0(X3,X2,X1,X0,X4) | ? [X5] : (((X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5) | ~r2_hidden(X5,X4)) & ((X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5) | r2_hidden(X5,X4)))) & (! [X5] : ((r2_hidden(X5,X4) | (X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5)) & ((X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5) | ~r2_hidden(X5,X4))) | ~sP0(X3,X2,X1,X0,X4)))),
% 3.12/0.99    inference(nnf_transformation,[],[f22])).
% 3.12/0.99  
% 3.12/0.99  fof(f26,plain,(
% 3.12/0.99    ! [X3,X2,X1,X0,X4] : ((sP0(X3,X2,X1,X0,X4) | ? [X5] : (((X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5) | ~r2_hidden(X5,X4)) & (X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5 | r2_hidden(X5,X4)))) & (! [X5] : ((r2_hidden(X5,X4) | (X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5)) & (X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X4))) | ~sP0(X3,X2,X1,X0,X4)))),
% 3.12/0.99    inference(flattening,[],[f25])).
% 3.12/0.99  
% 3.12/0.99  fof(f27,plain,(
% 3.12/0.99    ! [X0,X1,X2,X3,X4] : ((sP0(X0,X1,X2,X3,X4) | ? [X5] : (((X0 != X5 & X1 != X5 & X2 != X5 & X3 != X5) | ~r2_hidden(X5,X4)) & (X0 = X5 | X1 = X5 | X2 = X5 | X3 = X5 | r2_hidden(X5,X4)))) & (! [X6] : ((r2_hidden(X6,X4) | (X0 != X6 & X1 != X6 & X2 != X6 & X3 != X6)) & (X0 = X6 | X1 = X6 | X2 = X6 | X3 = X6 | ~r2_hidden(X6,X4))) | ~sP0(X0,X1,X2,X3,X4)))),
% 3.12/0.99    inference(rectify,[],[f26])).
% 3.12/0.99  
% 3.12/0.99  fof(f28,plain,(
% 3.12/0.99    ! [X4,X3,X2,X1,X0] : (? [X5] : (((X0 != X5 & X1 != X5 & X2 != X5 & X3 != X5) | ~r2_hidden(X5,X4)) & (X0 = X5 | X1 = X5 | X2 = X5 | X3 = X5 | r2_hidden(X5,X4))) => (((sK1(X0,X1,X2,X3,X4) != X0 & sK1(X0,X1,X2,X3,X4) != X1 & sK1(X0,X1,X2,X3,X4) != X2 & sK1(X0,X1,X2,X3,X4) != X3) | ~r2_hidden(sK1(X0,X1,X2,X3,X4),X4)) & (sK1(X0,X1,X2,X3,X4) = X0 | sK1(X0,X1,X2,X3,X4) = X1 | sK1(X0,X1,X2,X3,X4) = X2 | sK1(X0,X1,X2,X3,X4) = X3 | r2_hidden(sK1(X0,X1,X2,X3,X4),X4))))),
% 3.12/0.99    introduced(choice_axiom,[])).
% 3.12/0.99  
% 3.12/0.99  fof(f29,plain,(
% 3.12/0.99    ! [X0,X1,X2,X3,X4] : ((sP0(X0,X1,X2,X3,X4) | (((sK1(X0,X1,X2,X3,X4) != X0 & sK1(X0,X1,X2,X3,X4) != X1 & sK1(X0,X1,X2,X3,X4) != X2 & sK1(X0,X1,X2,X3,X4) != X3) | ~r2_hidden(sK1(X0,X1,X2,X3,X4),X4)) & (sK1(X0,X1,X2,X3,X4) = X0 | sK1(X0,X1,X2,X3,X4) = X1 | sK1(X0,X1,X2,X3,X4) = X2 | sK1(X0,X1,X2,X3,X4) = X3 | r2_hidden(sK1(X0,X1,X2,X3,X4),X4)))) & (! [X6] : ((r2_hidden(X6,X4) | (X0 != X6 & X1 != X6 & X2 != X6 & X3 != X6)) & (X0 = X6 | X1 = X6 | X2 = X6 | X3 = X6 | ~r2_hidden(X6,X4))) | ~sP0(X0,X1,X2,X3,X4)))),
% 3.12/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f27,f28])).
% 3.12/0.99  
% 3.12/0.99  fof(f49,plain,(
% 3.12/0.99    ( ! [X6,X4,X2,X0,X3,X1] : (r2_hidden(X6,X4) | X3 != X6 | ~sP0(X0,X1,X2,X3,X4)) )),
% 3.12/0.99    inference(cnf_transformation,[],[f29])).
% 3.12/0.99  
% 3.12/0.99  fof(f80,plain,(
% 3.12/0.99    ( ! [X6,X4,X2,X0,X1] : (r2_hidden(X6,X4) | ~sP0(X0,X1,X2,X6,X4)) )),
% 3.12/0.99    inference(equality_resolution,[],[f49])).
% 3.12/0.99  
% 3.12/0.99  fof(f12,axiom,(
% 3.12/0.99    ! [X0,X1,X2,X3,X4] : (k2_enumset1(X0,X1,X2,X3) = X4 <=> ! [X5] : (r2_hidden(X5,X4) <=> ~(X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5)))),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f20,plain,(
% 3.12/0.99    ! [X0,X1,X2,X3,X4] : (k2_enumset1(X0,X1,X2,X3) = X4 <=> ! [X5] : (r2_hidden(X5,X4) <=> (X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5)))),
% 3.12/0.99    inference(ennf_transformation,[],[f12])).
% 3.12/0.99  
% 3.12/0.99  fof(f23,plain,(
% 3.12/0.99    ! [X0,X1,X2,X3,X4] : (k2_enumset1(X0,X1,X2,X3) = X4 <=> sP0(X3,X2,X1,X0,X4))),
% 3.12/0.99    inference(definition_folding,[],[f20,f22])).
% 3.12/0.99  
% 3.12/0.99  fof(f30,plain,(
% 3.12/0.99    ! [X0,X1,X2,X3,X4] : ((k2_enumset1(X0,X1,X2,X3) = X4 | ~sP0(X3,X2,X1,X0,X4)) & (sP0(X3,X2,X1,X0,X4) | k2_enumset1(X0,X1,X2,X3) != X4))),
% 3.12/0.99    inference(nnf_transformation,[],[f23])).
% 3.12/0.99  
% 3.12/0.99  fof(f58,plain,(
% 3.12/0.99    ( ! [X4,X2,X0,X3,X1] : (sP0(X3,X2,X1,X0,X4) | k2_enumset1(X0,X1,X2,X3) != X4) )),
% 3.12/0.99    inference(cnf_transformation,[],[f30])).
% 3.12/0.99  
% 3.12/0.99  fof(f81,plain,(
% 3.12/0.99    ( ! [X2,X0,X3,X1] : (sP0(X3,X2,X1,X0,k2_enumset1(X0,X1,X2,X3))) )),
% 3.12/0.99    inference(equality_resolution,[],[f58])).
% 3.12/0.99  
% 3.12/0.99  fof(f8,axiom,(
% 3.12/0.99    ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) <=> r2_hidden(X0,X1))),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f24,plain,(
% 3.12/0.99    ! [X0,X1] : ((r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) & (r2_hidden(X0,X1) | ~r1_tarski(k1_tarski(X0),X1)))),
% 3.12/0.99    inference(nnf_transformation,[],[f8])).
% 3.12/0.99  
% 3.12/0.99  fof(f42,plain,(
% 3.12/0.99    ( ! [X0,X1] : (r1_tarski(k1_tarski(X0),X1) | ~r2_hidden(X0,X1)) )),
% 3.12/0.99    inference(cnf_transformation,[],[f24])).
% 3.12/0.99  
% 3.12/0.99  fof(f72,plain,(
% 3.12/0.99    ( ! [X0,X1] : (r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) | ~r2_hidden(X0,X1)) )),
% 3.12/0.99    inference(definition_unfolding,[],[f42,f69])).
% 3.12/0.99  
% 3.12/0.99  fof(f9,axiom,(
% 3.12/0.99    ! [X0,X1] : ((r1_tarski(X0,k2_zfmisc_1(X1,X0)) | r1_tarski(X0,k2_zfmisc_1(X0,X1))) => k1_xboole_0 = X0)),
% 3.12/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.12/0.99  
% 3.12/0.99  fof(f19,plain,(
% 3.12/0.99    ! [X0,X1] : (k1_xboole_0 = X0 | (~r1_tarski(X0,k2_zfmisc_1(X1,X0)) & ~r1_tarski(X0,k2_zfmisc_1(X0,X1))))),
% 3.12/0.99    inference(ennf_transformation,[],[f9])).
% 3.12/0.99  
% 3.12/0.99  fof(f44,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k2_zfmisc_1(X1,X0))) )),
% 3.12/0.99    inference(cnf_transformation,[],[f19])).
% 3.12/0.99  
% 3.12/0.99  fof(f43,plain,(
% 3.12/0.99    ( ! [X0,X1] : (k1_xboole_0 = X0 | ~r1_tarski(X0,k2_zfmisc_1(X0,X1))) )),
% 3.12/0.99    inference(cnf_transformation,[],[f19])).
% 3.12/0.99  
% 3.12/0.99  cnf(c_23,negated_conjecture,
% 3.12/0.99      ( k1_mcart_1(sK2) = sK2 | k2_mcart_1(sK2) = sK2 ),
% 3.12/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_24,negated_conjecture,
% 3.12/0.99      ( k4_tarski(sK3,sK4) = sK2 ),
% 3.12/0.99      inference(cnf_transformation,[],[f63]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_22,plain,
% 3.12/0.99      ( k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
% 3.12/0.99      inference(cnf_transformation,[],[f61]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2167,plain,
% 3.12/0.99      ( k1_mcart_1(sK2) = sK3 ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_24,c_22]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2169,plain,
% 3.12/0.99      ( k2_mcart_1(sK2) = sK2 | sK3 = sK2 ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_23,c_2167]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_21,plain,
% 3.12/0.99      ( k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
% 3.12/0.99      inference(cnf_transformation,[],[f62]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2159,plain,
% 3.12/0.99      ( k2_mcart_1(sK2) = sK4 ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_24,c_21]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2171,plain,
% 3.12/0.99      ( sK4 = sK2 | sK3 = sK2 ),
% 3.12/0.99      inference(demodulation,[status(thm)],[c_2169,c_2159]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2244,plain,
% 3.12/0.99      ( k4_tarski(sK3,sK2) = sK2 | sK3 = sK2 ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_2171,c_24]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_7,plain,
% 3.12/0.99      ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X2)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X2)) ),
% 3.12/0.99      inference(cnf_transformation,[],[f75]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2658,plain,
% 3.12/0.99      ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(X0,X0,X0,sK2)) = k2_enumset1(k4_tarski(sK3,X0),k4_tarski(sK3,X0),k4_tarski(sK3,X0),sK2)
% 3.12/0.99      | sK3 = sK2 ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_2244,c_7]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2657,plain,
% 3.12/0.99      ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(X0,X0,X0,sK4)) = k2_enumset1(k4_tarski(sK3,X0),k4_tarski(sK3,X0),k4_tarski(sK3,X0),sK2) ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_24,c_7]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_7014,plain,
% 3.12/0.99      ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(X0,X0,X0,sK2)) = k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(X0,X0,X0,sK4))
% 3.12/0.99      | sK3 = sK2 ),
% 3.12/0.99      inference(demodulation,[status(thm)],[c_2658,c_2657]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_6,plain,
% 3.12/0.99      ( k2_enumset1(k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X0,X1),k4_tarski(X2,X1)) = k2_zfmisc_1(k2_enumset1(X0,X0,X0,X2),k2_enumset1(X1,X1,X1,X1)) ),
% 3.12/0.99      inference(cnf_transformation,[],[f74]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_1,plain,
% 3.12/0.99      ( k1_setfam_1(k2_enumset1(X0,X0,X0,X0)) = X0 ),
% 3.12/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_8,plain,
% 3.12/0.99      ( k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k5_xboole_0(X1,k1_setfam_1(k2_enumset1(X1,X1,X1,k2_enumset1(X0,X0,X0,X0))))) != k1_xboole_0 ),
% 3.12/0.99      inference(cnf_transformation,[],[f76]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2408,plain,
% 3.12/0.99      ( k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k5_xboole_0(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X0,X0,X0))) != k1_xboole_0 ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_1,c_8]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_0,plain,
% 3.12/0.99      ( k5_xboole_0(X0,k5_xboole_0(X0,k1_setfam_1(k2_enumset1(X0,X0,X0,X0)))) = X0 ),
% 3.12/0.99      inference(cnf_transformation,[],[f70]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2032,plain,
% 3.12/0.99      ( k5_xboole_0(X0,k5_xboole_0(X0,X0)) = X0 ),
% 3.12/0.99      inference(light_normalisation,[status(thm)],[c_0,c_1]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_8132,plain,
% 3.12/0.99      ( k2_enumset1(X0,X0,X0,X0) != k1_xboole_0 ),
% 3.12/0.99      inference(demodulation,[status(thm)],[c_2408,c_2032]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_8135,plain,
% 3.12/0.99      ( k2_zfmisc_1(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X1,X1,X1,X1)) != k1_xboole_0 ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_6,c_8132]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_8144,plain,
% 3.12/0.99      ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK4,sK4,sK4,sK2)) != k1_xboole_0
% 3.12/0.99      | sK3 = sK2 ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_7014,c_8135]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2655,plain,
% 3.12/0.99      ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK4,sK4,sK4,X0)) = k2_enumset1(sK2,sK2,sK2,k4_tarski(sK3,X0)) ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_24,c_7]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_8160,plain,
% 3.12/0.99      ( k2_enumset1(sK2,sK2,sK2,k4_tarski(sK3,sK2)) != k1_xboole_0
% 3.12/0.99      | sK3 = sK2 ),
% 3.12/0.99      inference(demodulation,[status(thm)],[c_8144,c_2655]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_17,plain,
% 3.12/0.99      ( ~ sP0(X0,X1,X2,X3,X4) | r2_hidden(X3,X4) ),
% 3.12/0.99      inference(cnf_transformation,[],[f80]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_20,plain,
% 3.12/0.99      ( sP0(X0,X1,X2,X3,k2_enumset1(X3,X2,X1,X0)) ),
% 3.12/0.99      inference(cnf_transformation,[],[f81]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_783,plain,
% 3.12/0.99      ( r2_hidden(X0,X1)
% 3.12/0.99      | X2 != X3
% 3.12/0.99      | X4 != X0
% 3.12/0.99      | X5 != X6
% 3.12/0.99      | X7 != X8
% 3.12/0.99      | k2_enumset1(X4,X5,X7,X2) != X1 ),
% 3.12/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_20]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_784,plain,
% 3.12/0.99      ( r2_hidden(X0,k2_enumset1(X0,X1,X2,X3)) ),
% 3.12/0.99      inference(unflattening,[status(thm)],[c_783]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_786,plain,
% 3.12/0.99      ( r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2)) ),
% 3.12/0.99      inference(instantiation,[status(thm)],[c_784]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2,plain,
% 3.12/0.99      ( ~ r2_hidden(X0,X1) | r1_tarski(k2_enumset1(X0,X0,X0,X0),X1) ),
% 3.12/0.99      inference(cnf_transformation,[],[f72]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2266,plain,
% 3.12/0.99      ( ~ r2_hidden(X0,k2_enumset1(X0,X1,X2,X3))
% 3.12/0.99      | r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X1,X2,X3)) ),
% 3.12/0.99      inference(instantiation,[status(thm)],[c_2]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2271,plain,
% 3.12/0.99      ( ~ r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2))
% 3.12/0.99      | r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) ),
% 3.12/0.99      inference(instantiation,[status(thm)],[c_2266]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2417,plain,
% 3.12/0.99      ( k2_zfmisc_1(k2_enumset1(X0,X0,X0,sK3),k2_enumset1(sK4,sK4,sK4,sK4)) = k2_enumset1(k4_tarski(X0,sK4),k4_tarski(X0,sK4),k4_tarski(X0,sK4),sK2) ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_24,c_6]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2835,plain,
% 3.12/0.99      ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK4,sK4,sK4,sK4)) = k2_enumset1(sK2,sK2,sK2,sK2) ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_24,c_2417]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_3025,plain,
% 3.12/0.99      ( k2_zfmisc_1(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK2,sK2,sK2,sK2)) = k2_enumset1(sK2,sK2,sK2,sK2)
% 3.12/0.99      | sK3 = sK2 ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_2171,c_2835]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_4,plain,
% 3.12/0.99      ( ~ r1_tarski(X0,k2_zfmisc_1(X1,X0)) | k1_xboole_0 = X0 ),
% 3.12/0.99      inference(cnf_transformation,[],[f44]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2007,plain,
% 3.12/0.99      ( k1_xboole_0 = X0
% 3.12/0.99      | r1_tarski(X0,k2_zfmisc_1(X1,X0)) != iProver_top ),
% 3.12/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_4316,plain,
% 3.12/0.99      ( k2_enumset1(sK2,sK2,sK2,sK2) = k1_xboole_0
% 3.12/0.99      | sK3 = sK2
% 3.12/0.99      | r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) != iProver_top ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_3025,c_2007]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_4351,plain,
% 3.12/0.99      ( ~ r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2))
% 3.12/0.99      | k2_enumset1(sK2,sK2,sK2,sK2) = k1_xboole_0
% 3.12/0.99      | sK3 = sK2 ),
% 3.12/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_4316]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_8134,plain,
% 3.12/0.99      ( k2_enumset1(sK2,sK2,sK2,sK2) != k1_xboole_0 ),
% 3.12/0.99      inference(instantiation,[status(thm)],[c_8132]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_8506,plain,
% 3.12/0.99      ( sK3 = sK2 ),
% 3.12/0.99      inference(global_propositional_subsumption,
% 3.12/0.99                [status(thm)],
% 3.12/0.99                [c_8160,c_786,c_2271,c_4351,c_8134]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_5,plain,
% 3.12/0.99      ( ~ r1_tarski(X0,k2_zfmisc_1(X0,X1)) | k1_xboole_0 = X0 ),
% 3.12/0.99      inference(cnf_transformation,[],[f43]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2006,plain,
% 3.12/0.99      ( k1_xboole_0 = X0
% 3.12/0.99      | r1_tarski(X0,k2_zfmisc_1(X0,X1)) != iProver_top ),
% 3.12/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_3911,plain,
% 3.12/0.99      ( k2_enumset1(sK3,sK3,sK3,sK3) = k1_xboole_0
% 3.12/0.99      | r1_tarski(k2_enumset1(sK3,sK3,sK3,sK3),k2_enumset1(sK2,sK2,sK2,sK2)) != iProver_top ),
% 3.12/0.99      inference(superposition,[status(thm)],[c_2835,c_2006]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_8521,plain,
% 3.12/0.99      ( k2_enumset1(sK2,sK2,sK2,sK2) = k1_xboole_0
% 3.12/0.99      | r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) != iProver_top ),
% 3.12/0.99      inference(demodulation,[status(thm)],[c_8506,c_3911]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2270,plain,
% 3.12/0.99      ( r2_hidden(X0,k2_enumset1(X0,X1,X2,X3)) != iProver_top
% 3.12/0.99      | r1_tarski(k2_enumset1(X0,X0,X0,X0),k2_enumset1(X0,X1,X2,X3)) = iProver_top ),
% 3.12/0.99      inference(predicate_to_equality,[status(thm)],[c_2266]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_2272,plain,
% 3.12/0.99      ( r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2)) != iProver_top
% 3.12/0.99      | r1_tarski(k2_enumset1(sK2,sK2,sK2,sK2),k2_enumset1(sK2,sK2,sK2,sK2)) = iProver_top ),
% 3.12/0.99      inference(instantiation,[status(thm)],[c_2270]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_785,plain,
% 3.12/0.99      ( r2_hidden(X0,k2_enumset1(X0,X1,X2,X3)) = iProver_top ),
% 3.12/0.99      inference(predicate_to_equality,[status(thm)],[c_784]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(c_787,plain,
% 3.12/0.99      ( r2_hidden(sK2,k2_enumset1(sK2,sK2,sK2,sK2)) = iProver_top ),
% 3.12/0.99      inference(instantiation,[status(thm)],[c_785]) ).
% 3.12/0.99  
% 3.12/0.99  cnf(contradiction,plain,
% 3.12/0.99      ( $false ),
% 3.12/0.99      inference(minisat,[status(thm)],[c_8521,c_8134,c_2272,c_787]) ).
% 3.12/0.99  
% 3.12/0.99  
% 3.12/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.12/0.99  
% 3.12/0.99  ------                               Statistics
% 3.12/0.99  
% 3.12/0.99  ------ General
% 3.12/0.99  
% 3.12/0.99  abstr_ref_over_cycles:                  0
% 3.12/0.99  abstr_ref_under_cycles:                 0
% 3.12/0.99  gc_basic_clause_elim:                   0
% 3.12/0.99  forced_gc_time:                         0
% 3.12/0.99  parsing_time:                           0.031
% 3.12/0.99  unif_index_cands_time:                  0.
% 3.12/0.99  unif_index_add_time:                    0.
% 3.12/0.99  orderings_time:                         0.
% 3.12/0.99  out_proof_time:                         0.008
% 3.12/0.99  total_time:                             0.295
% 3.12/0.99  num_of_symbols:                         46
% 3.12/0.99  num_of_terms:                           14285
% 3.12/0.99  
% 3.12/0.99  ------ Preprocessing
% 3.12/0.99  
% 3.12/0.99  num_of_splits:                          0
% 3.12/0.99  num_of_split_atoms:                     0
% 3.12/0.99  num_of_reused_defs:                     0
% 3.12/0.99  num_eq_ax_congr_red:                    20
% 3.12/0.99  num_of_sem_filtered_clauses:            1
% 3.12/0.99  num_of_subtypes:                        0
% 3.12/0.99  monotx_restored_types:                  0
% 3.12/0.99  sat_num_of_epr_types:                   0
% 3.12/0.99  sat_num_of_non_cyclic_types:            0
% 3.12/0.99  sat_guarded_non_collapsed_types:        0
% 3.12/0.99  num_pure_diseq_elim:                    0
% 3.12/0.99  simp_replaced_by:                       0
% 3.12/0.99  res_preprocessed:                       100
% 3.12/0.99  prep_upred:                             0
% 3.12/0.99  prep_unflattend:                        96
% 3.12/0.99  smt_new_axioms:                         0
% 3.12/0.99  pred_elim_cands:                        3
% 3.12/0.99  pred_elim:                              0
% 3.12/0.99  pred_elim_cl:                           0
% 3.12/0.99  pred_elim_cycles:                       3
% 3.12/0.99  merged_defs:                            6
% 3.12/0.99  merged_defs_ncl:                        0
% 3.12/0.99  bin_hyper_res:                          6
% 3.12/0.99  prep_cycles:                            3
% 3.12/0.99  pred_elim_time:                         0.024
% 3.12/0.99  splitting_time:                         0.
% 3.12/0.99  sem_filter_time:                        0.
% 3.12/0.99  monotx_time:                            0.
% 3.12/0.99  subtype_inf_time:                       0.
% 3.12/0.99  
% 3.12/0.99  ------ Problem properties
% 3.12/0.99  
% 3.12/0.99  clauses:                                25
% 3.12/0.99  conjectures:                            2
% 3.12/0.99  epr:                                    5
% 3.12/0.99  horn:                                   22
% 3.12/0.99  ground:                                 2
% 3.12/0.99  unary:                                  9
% 3.12/0.99  binary:                                 10
% 3.12/0.99  lits:                                   53
% 3.12/0.99  lits_eq:                                25
% 3.12/0.99  fd_pure:                                0
% 3.12/0.99  fd_pseudo:                              0
% 3.12/0.99  fd_cond:                                2
% 3.12/0.99  fd_pseudo_cond:                         2
% 3.12/0.99  ac_symbols:                             0
% 3.12/0.99  
% 3.12/0.99  ------ Propositional Solver
% 3.12/0.99  
% 3.12/0.99  prop_solver_calls:                      23
% 3.12/0.99  prop_fast_solver_calls:                 801
% 3.12/0.99  smt_solver_calls:                       0
% 3.12/0.99  smt_fast_solver_calls:                  0
% 3.12/0.99  prop_num_of_clauses:                    3493
% 3.12/0.99  prop_preprocess_simplified:             8932
% 3.12/0.99  prop_fo_subsumed:                       1
% 3.12/0.99  prop_solver_time:                       0.
% 3.12/0.99  smt_solver_time:                        0.
% 3.12/0.99  smt_fast_solver_time:                   0.
% 3.12/0.99  prop_fast_solver_time:                  0.
% 3.12/0.99  prop_unsat_core_time:                   0.
% 3.12/0.99  
% 3.12/0.99  ------ QBF
% 3.12/0.99  
% 3.12/0.99  qbf_q_res:                              0
% 3.12/0.99  qbf_num_tautologies:                    0
% 3.12/0.99  qbf_prep_cycles:                        0
% 3.12/0.99  
% 3.12/0.99  ------ BMC1
% 3.12/0.99  
% 3.12/0.99  bmc1_current_bound:                     -1
% 3.12/0.99  bmc1_last_solved_bound:                 -1
% 3.12/0.99  bmc1_unsat_core_size:                   -1
% 3.12/0.99  bmc1_unsat_core_parents_size:           -1
% 3.12/0.99  bmc1_merge_next_fun:                    0
% 3.12/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.12/0.99  
% 3.12/0.99  ------ Instantiation
% 3.12/0.99  
% 3.12/0.99  inst_num_of_clauses:                    1073
% 3.12/0.99  inst_num_in_passive:                    384
% 3.12/0.99  inst_num_in_active:                     267
% 3.12/0.99  inst_num_in_unprocessed:                422
% 3.12/0.99  inst_num_of_loops:                      270
% 3.12/0.99  inst_num_of_learning_restarts:          0
% 3.12/0.99  inst_num_moves_active_passive:          1
% 3.12/0.99  inst_lit_activity:                      0
% 3.12/0.99  inst_lit_activity_moves:                0
% 3.12/0.99  inst_num_tautologies:                   0
% 3.12/0.99  inst_num_prop_implied:                  0
% 3.12/0.99  inst_num_existing_simplified:           0
% 3.12/0.99  inst_num_eq_res_simplified:             0
% 3.12/0.99  inst_num_child_elim:                    0
% 3.12/0.99  inst_num_of_dismatching_blockings:      300
% 3.12/0.99  inst_num_of_non_proper_insts:           1123
% 3.12/0.99  inst_num_of_duplicates:                 0
% 3.12/0.99  inst_inst_num_from_inst_to_res:         0
% 3.12/0.99  inst_dismatching_checking_time:         0.
% 3.12/0.99  
% 3.12/0.99  ------ Resolution
% 3.12/0.99  
% 3.12/0.99  res_num_of_clauses:                     0
% 3.12/0.99  res_num_in_passive:                     0
% 3.12/0.99  res_num_in_active:                      0
% 3.12/0.99  res_num_of_loops:                       103
% 3.12/0.99  res_forward_subset_subsumed:            210
% 3.12/0.99  res_backward_subset_subsumed:           0
% 3.12/0.99  res_forward_subsumed:                   0
% 3.12/0.99  res_backward_subsumed:                  0
% 3.12/0.99  res_forward_subsumption_resolution:     0
% 3.12/0.99  res_backward_subsumption_resolution:    0
% 3.12/0.99  res_clause_to_clause_subsumption:       775
% 3.12/0.99  res_orphan_elimination:                 0
% 3.12/0.99  res_tautology_del:                      136
% 3.12/0.99  res_num_eq_res_simplified:              0
% 3.12/0.99  res_num_sel_changes:                    0
% 3.12/0.99  res_moves_from_active_to_pass:          0
% 3.12/0.99  
% 3.12/0.99  ------ Superposition
% 3.12/0.99  
% 3.12/0.99  sup_time_total:                         0.
% 3.12/0.99  sup_time_generating:                    0.
% 3.12/0.99  sup_time_sim_full:                      0.
% 3.12/0.99  sup_time_sim_immed:                     0.
% 3.12/0.99  
% 3.12/0.99  sup_num_of_clauses:                     79
% 3.12/0.99  sup_num_in_active:                      26
% 3.12/0.99  sup_num_in_passive:                     53
% 3.12/0.99  sup_num_of_loops:                       53
% 3.12/0.99  sup_fw_superposition:                   184
% 3.12/0.99  sup_bw_superposition:                   66
% 3.12/0.99  sup_immediate_simplified:               34
% 3.12/0.99  sup_given_eliminated:                   0
% 3.12/0.99  comparisons_done:                       0
% 3.12/0.99  comparisons_avoided:                    27
% 3.12/0.99  
% 3.12/0.99  ------ Simplifications
% 3.12/0.99  
% 3.12/0.99  
% 3.12/0.99  sim_fw_subset_subsumed:                 2
% 3.12/0.99  sim_bw_subset_subsumed:                 11
% 3.12/0.99  sim_fw_subsumed:                        14
% 3.12/0.99  sim_bw_subsumed:                        0
% 3.12/0.99  sim_fw_subsumption_res:                 0
% 3.12/0.99  sim_bw_subsumption_res:                 0
% 3.12/0.99  sim_tautology_del:                      1
% 3.12/0.99  sim_eq_tautology_del:                   14
% 3.12/0.99  sim_eq_res_simp:                        0
% 3.12/0.99  sim_fw_demodulated:                     11
% 3.12/0.99  sim_bw_demodulated:                     25
% 3.12/0.99  sim_light_normalised:                   21
% 3.12/0.99  sim_joinable_taut:                      0
% 3.12/0.99  sim_joinable_simp:                      0
% 3.12/0.99  sim_ac_normalised:                      0
% 3.12/0.99  sim_smt_subsumption:                    0
% 3.12/0.99  
%------------------------------------------------------------------------------
