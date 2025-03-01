%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0863+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n026.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:44:17 EST 2020

% Result     : Theorem 0.92s
% Output     : CNFRefutation 1.03s
% Verified   : 
% Statistics : Number of formulae       :   37 (  68 expanded)
%              Number of clauses        :   15 (  16 expanded)
%              Number of leaves         :    5 (  16 expanded)
%              Depth                    :   10
%              Number of atoms          :  161 ( 369 expanded)
%              Number of equality atoms :  106 ( 260 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k2_tarski(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( X1 = X3
            | X0 = X3 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f7,plain,(
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
    inference(nnf_transformation,[],[f1])).

fof(f8,plain,(
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
    inference(flattening,[],[f7])).

fof(f9,plain,(
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
    inference(rectify,[],[f8])).

fof(f10,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ( X1 != X3
              & X0 != X3 )
            | ~ r2_hidden(X3,X2) )
          & ( X1 = X3
            | X0 = X3
            | r2_hidden(X3,X2) ) )
     => ( ( ( sK0(X0,X1,X2) != X1
            & sK0(X0,X1,X2) != X0 )
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( sK0(X0,X1,X2) = X1
          | sK0(X0,X1,X2) = X0
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( ( k2_tarski(X0,X1) = X2
        | ( ( ( sK0(X0,X1,X2) != X1
              & sK0(X0,X1,X2) != X0 )
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( sK0(X0,X1,X2) = X1
            | sK0(X0,X1,X2) = X0
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ( X1 != X4
                & X0 != X4 ) )
            & ( X1 = X4
              | X0 = X4
              | ~ r2_hidden(X4,X2) ) )
        | k2_tarski(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f9,f10])).

fof(f14,plain,(
    ! [X4,X2,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,X2)
      | k2_tarski(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f11])).

fof(f31,plain,(
    ! [X4,X0,X1] :
      ( X1 = X4
      | X0 = X4
      | ~ r2_hidden(X4,k2_tarski(X0,X1)) ) ),
    inference(equality_resolution,[],[f14])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( r2_hidden(X0,k2_zfmisc_1(X1,X2))
     => ( r2_hidden(k2_mcart_1(X0),X2)
        & r2_hidden(k1_mcart_1(X0),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f5,plain,(
    ! [X0,X1,X2] :
      ( ( r2_hidden(k2_mcart_1(X0),X2)
        & r2_hidden(k1_mcart_1(X0),X1) )
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f20,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k1_mcart_1(X0),X1)
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(cnf_transformation,[],[f5])).

fof(f21,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(k2_mcart_1(X0),X2)
      | ~ r2_hidden(X0,k2_zfmisc_1(X1,X2)) ) ),
    inference(cnf_transformation,[],[f5])).

fof(f3,conjecture,(
    ! [X0,X1,X2,X3,X4] :
      ( r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k2_tarski(X3,X4)))
     => ( ( k2_mcart_1(X0) = X4
          | k2_mcart_1(X0) = X3 )
        & ( k1_mcart_1(X0) = X2
          | k1_mcart_1(X0) = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f4,negated_conjecture,(
    ~ ! [X0,X1,X2,X3,X4] :
        ( r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k2_tarski(X3,X4)))
       => ( ( k2_mcart_1(X0) = X4
            | k2_mcart_1(X0) = X3 )
          & ( k1_mcart_1(X0) = X2
            | k1_mcart_1(X0) = X1 ) ) ) ),
    inference(negated_conjecture,[],[f3])).

fof(f6,plain,(
    ? [X0,X1,X2,X3,X4] :
      ( ( ( k2_mcart_1(X0) != X4
          & k2_mcart_1(X0) != X3 )
        | ( k1_mcart_1(X0) != X2
          & k1_mcart_1(X0) != X1 ) )
      & r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k2_tarski(X3,X4))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f12,plain,
    ( ? [X0,X1,X2,X3,X4] :
        ( ( ( k2_mcart_1(X0) != X4
            & k2_mcart_1(X0) != X3 )
          | ( k1_mcart_1(X0) != X2
            & k1_mcart_1(X0) != X1 ) )
        & r2_hidden(X0,k2_zfmisc_1(k2_tarski(X1,X2),k2_tarski(X3,X4))) )
   => ( ( ( k2_mcart_1(sK1) != sK5
          & k2_mcart_1(sK1) != sK4 )
        | ( k1_mcart_1(sK1) != sK3
          & k1_mcart_1(sK1) != sK2 ) )
      & r2_hidden(sK1,k2_zfmisc_1(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5))) ) ),
    introduced(choice_axiom,[])).

fof(f13,plain,
    ( ( ( k2_mcart_1(sK1) != sK5
        & k2_mcart_1(sK1) != sK4 )
      | ( k1_mcart_1(sK1) != sK3
        & k1_mcart_1(sK1) != sK2 ) )
    & r2_hidden(sK1,k2_zfmisc_1(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4,sK5])],[f6,f12])).

fof(f26,plain,
    ( k2_mcart_1(sK1) != sK5
    | k1_mcart_1(sK1) != sK3 ),
    inference(cnf_transformation,[],[f13])).

fof(f25,plain,
    ( k2_mcart_1(sK1) != sK5
    | k1_mcart_1(sK1) != sK2 ),
    inference(cnf_transformation,[],[f13])).

fof(f24,plain,
    ( k2_mcart_1(sK1) != sK4
    | k1_mcart_1(sK1) != sK3 ),
    inference(cnf_transformation,[],[f13])).

fof(f23,plain,
    ( k2_mcart_1(sK1) != sK4
    | k1_mcart_1(sK1) != sK2 ),
    inference(cnf_transformation,[],[f13])).

fof(f22,plain,(
    r2_hidden(sK1,k2_zfmisc_1(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5))) ),
    inference(cnf_transformation,[],[f13])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,k2_tarski(X1,X2))
    | X0 = X1
    | X0 = X2 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_503,plain,
    ( ~ r2_hidden(k2_mcart_1(sK1),k2_tarski(sK4,X0))
    | k2_mcart_1(sK1) = X0
    | k2_mcart_1(sK1) = sK4 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_732,plain,
    ( ~ r2_hidden(k2_mcart_1(sK1),k2_tarski(sK4,sK5))
    | k2_mcart_1(sK1) = sK4
    | k2_mcart_1(sK1) = sK5 ),
    inference(instantiation,[status(thm)],[c_503])).

cnf(c_368,plain,
    ( ~ r2_hidden(k1_mcart_1(sK1),k2_tarski(sK2,X0))
    | k1_mcart_1(sK1) = X0
    | k1_mcart_1(sK1) = sK2 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_426,plain,
    ( ~ r2_hidden(k1_mcart_1(sK1),k2_tarski(sK2,sK3))
    | k1_mcart_1(sK1) = sK2
    | k1_mcart_1(sK1) = sK3 ),
    inference(instantiation,[status(thm)],[c_368])).

cnf(c_7,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | r2_hidden(k1_mcart_1(X0),X1) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_356,plain,
    ( r2_hidden(k1_mcart_1(sK1),k2_tarski(sK2,sK3))
    | ~ r2_hidden(sK1,k2_zfmisc_1(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5))) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_6,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | r2_hidden(k2_mcart_1(X0),X2) ),
    inference(cnf_transformation,[],[f21])).

cnf(c_353,plain,
    ( r2_hidden(k2_mcart_1(sK1),k2_tarski(sK4,sK5))
    | ~ r2_hidden(sK1,k2_zfmisc_1(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5))) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_8,negated_conjecture,
    ( k1_mcart_1(sK1) != sK3
    | k2_mcart_1(sK1) != sK5 ),
    inference(cnf_transformation,[],[f26])).

cnf(c_9,negated_conjecture,
    ( k1_mcart_1(sK1) != sK2
    | k2_mcart_1(sK1) != sK5 ),
    inference(cnf_transformation,[],[f25])).

cnf(c_10,negated_conjecture,
    ( k1_mcart_1(sK1) != sK3
    | k2_mcart_1(sK1) != sK4 ),
    inference(cnf_transformation,[],[f24])).

cnf(c_11,negated_conjecture,
    ( k1_mcart_1(sK1) != sK2
    | k2_mcart_1(sK1) != sK4 ),
    inference(cnf_transformation,[],[f23])).

cnf(c_12,negated_conjecture,
    ( r2_hidden(sK1,k2_zfmisc_1(k2_tarski(sK2,sK3),k2_tarski(sK4,sK5))) ),
    inference(cnf_transformation,[],[f22])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_732,c_426,c_356,c_353,c_8,c_9,c_10,c_11,c_12])).


%------------------------------------------------------------------------------
