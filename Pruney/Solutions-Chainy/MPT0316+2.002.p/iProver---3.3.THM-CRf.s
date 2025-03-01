%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:37:17 EST 2020

% Result     : Theorem 2.00s
% Output     : CNFRefutation 2.00s
% Verified   : 
% Statistics : Number of formulae       :   88 ( 299 expanded)
%              Number of clauses        :   30 (  44 expanded)
%              Number of leaves         :   14 (  77 expanded)
%              Depth                    :   18
%              Number of atoms          :  309 ( 780 expanded)
%              Number of equality atoms :  181 ( 399 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,axiom,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f41,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(flattening,[],[f40])).

fof(f76,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
      | ~ r2_hidden(X1,X3)
      | ~ r2_hidden(X0,X2) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f16,conjecture,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3))
    <=> ( r2_hidden(X1,X3)
        & X0 = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3))
      <=> ( r2_hidden(X1,X3)
          & X0 = X2 ) ) ),
    inference(negated_conjecture,[],[f16])).

fof(f22,plain,(
    ? [X0,X1,X2,X3] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3))
    <~> ( r2_hidden(X1,X3)
        & X0 = X2 ) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f44,plain,(
    ? [X0,X1,X2,X3] :
      ( ( ~ r2_hidden(X1,X3)
        | X0 != X2
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)) )
      & ( ( r2_hidden(X1,X3)
          & X0 = X2 )
        | r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)) ) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f45,plain,(
    ? [X0,X1,X2,X3] :
      ( ( ~ r2_hidden(X1,X3)
        | X0 != X2
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)) )
      & ( ( r2_hidden(X1,X3)
          & X0 = X2 )
        | r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)) ) ) ),
    inference(flattening,[],[f44])).

fof(f46,plain,
    ( ? [X0,X1,X2,X3] :
        ( ( ~ r2_hidden(X1,X3)
          | X0 != X2
          | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)) )
        & ( ( r2_hidden(X1,X3)
            & X0 = X2 )
          | r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)) ) )
   => ( ( ~ r2_hidden(sK5,sK7)
        | sK4 != sK6
        | ~ r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7)) )
      & ( ( r2_hidden(sK5,sK7)
          & sK4 = sK6 )
        | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7)) ) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,
    ( ( ~ r2_hidden(sK5,sK7)
      | sK4 != sK6
      | ~ r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7)) )
    & ( ( r2_hidden(sK5,sK7)
        & sK4 = sK6 )
      | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7)) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f45,f46])).

fof(f84,plain,
    ( sK4 = sK6
    | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7)) ),
    inference(cnf_transformation,[],[f47])).

fof(f4,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f65,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f67,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f68,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f9])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f69,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f10])).

fof(f87,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f68,f69])).

fof(f88,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f67,f87])).

fof(f89,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f66,f88])).

fof(f90,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f65,f89])).

fof(f91,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f64,f90])).

fof(f92,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f63,f91])).

fof(f112,plain,
    ( sK4 = sK6
    | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) ),
    inference(definition_unfolding,[],[f84,f92])).

fof(f74,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X0,X2)
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f86,plain,
    ( ~ r2_hidden(sK5,sK7)
    | sK4 != sK6
    | ~ r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7)) ),
    inference(cnf_transformation,[],[f47])).

fof(f110,plain,
    ( ~ r2_hidden(sK5,sK7)
    | sK4 != sK6
    | ~ r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) ),
    inference(definition_unfolding,[],[f86,f92])).

fof(f85,plain,
    ( r2_hidden(sK5,sK7)
    | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7)) ),
    inference(cnf_transformation,[],[f47])).

fof(f111,plain,
    ( r2_hidden(sK5,sK7)
    | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) ),
    inference(definition_unfolding,[],[f85,f92])).

fof(f75,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X1,X3)
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> X0 = X2 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
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
    inference(nnf_transformation,[],[f3])).

fof(f33,plain,(
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
    inference(rectify,[],[f32])).

fof(f34,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( X0 != X2
            | ~ r2_hidden(X2,X1) )
          & ( X0 = X2
            | r2_hidden(X2,X1) ) )
     => ( ( sK2(X0,X1) != X0
          | ~ r2_hidden(sK2(X0,X1),X1) )
        & ( sK2(X0,X1) = X0
          | r2_hidden(sK2(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ( ( sK2(X0,X1) != X0
            | ~ r2_hidden(sK2(X0,X1),X1) )
          & ( sK2(X0,X1) = X0
            | r2_hidden(sK2(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f33,f34])).

fof(f59,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f104,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1 ) ),
    inference(definition_unfolding,[],[f59,f92])).

fof(f122,plain,(
    ! [X0,X3] :
      ( X0 = X3
      | ~ r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) ) ),
    inference(equality_resolution,[],[f104])).

fof(f2,axiom,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ~ ( X2 != X4
              & X1 != X4
              & X0 != X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2,X3] :
      ( k1_enumset1(X0,X1,X2) = X3
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X2 = X4
            | X1 = X4
            | X0 = X4 ) ) ) ),
    inference(ennf_transformation,[],[f2])).

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
    inference(nnf_transformation,[],[f19])).

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
     => ( ( ( sK1(X0,X1,X2,X3) != X2
            & sK1(X0,X1,X2,X3) != X1
            & sK1(X0,X1,X2,X3) != X0 )
          | ~ r2_hidden(sK1(X0,X1,X2,X3),X3) )
        & ( sK1(X0,X1,X2,X3) = X2
          | sK1(X0,X1,X2,X3) = X1
          | sK1(X0,X1,X2,X3) = X0
          | r2_hidden(sK1(X0,X1,X2,X3),X3) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f29,f30])).

fof(f52,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k1_enumset1(X0,X1,X2) != X3 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f99,plain,(
    ! [X2,X0,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | X0 != X5
      | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3 ) ),
    inference(definition_unfolding,[],[f52,f90])).

fof(f117,plain,(
    ! [X2,X5,X3,X1] :
      ( r2_hidden(X5,X3)
      | k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2) != X3 ) ),
    inference(equality_resolution,[],[f99])).

fof(f118,plain,(
    ! [X2,X5,X1] : r2_hidden(X5,k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2)) ),
    inference(equality_resolution,[],[f117])).

cnf(c_19,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X2,X3)
    | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1626,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X2,X3) != iProver_top
    | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_31,negated_conjecture,
    ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))
    | sK4 = sK6 ),
    inference(cnf_transformation,[],[f112])).

cnf(c_1615,plain,
    ( sK4 = sK6
    | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_21,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1624,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_2556,plain,
    ( sK6 = sK4
    | r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1615,c_1624])).

cnf(c_29,negated_conjecture,
    ( ~ r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))
    | ~ r2_hidden(sK5,sK7)
    | sK4 != sK6 ),
    inference(cnf_transformation,[],[f110])).

cnf(c_30,negated_conjecture,
    ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))
    | r2_hidden(sK5,sK7) ),
    inference(cnf_transformation,[],[f111])).

cnf(c_1616,plain,
    ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) = iProver_top
    | r2_hidden(sK5,sK7) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_20,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1625,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_1720,plain,
    ( r2_hidden(sK5,sK7) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1616,c_1625])).

cnf(c_1810,plain,
    ( r2_hidden(sK5,sK7) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1720])).

cnf(c_14,plain,
    ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f122])).

cnf(c_1975,plain,
    ( ~ r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
    | sK4 = sK6 ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_1976,plain,
    ( sK4 = sK6
    | r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1975])).

cnf(c_1898,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(k4_tarski(X0,sK5),k2_zfmisc_1(X1,sK7))
    | ~ r2_hidden(sK5,sK7) ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_2067,plain,
    ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))
    | ~ r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
    | ~ r2_hidden(sK5,sK7) ),
    inference(instantiation,[status(thm)],[c_1898])).

cnf(c_2557,plain,
    ( r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
    | sK6 = sK4 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2556])).

cnf(c_2664,plain,
    ( sK6 = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2556,c_29,c_1810,c_1976,c_2067,c_2557])).

cnf(c_1617,plain,
    ( sK4 != sK6
    | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) != iProver_top
    | r2_hidden(sK5,sK7) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_1751,plain,
    ( sK6 != sK4
    | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1617,c_1625])).

cnf(c_2667,plain,
    ( sK4 != sK4
    | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK7)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2664,c_1751])).

cnf(c_2669,plain,
    ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK7)) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_2667])).

cnf(c_4547,plain,
    ( r2_hidden(sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top
    | r2_hidden(sK5,sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1626,c_2669])).

cnf(c_4886,plain,
    ( r2_hidden(sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4547,c_1720])).

cnf(c_9,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ),
    inference(cnf_transformation,[],[f118])).

cnf(c_1636,plain,
    ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_4891,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4886,c_1636])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n007.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:17:06 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 2.00/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.00/1.00  
% 2.00/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.00/1.00  
% 2.00/1.00  ------  iProver source info
% 2.00/1.00  
% 2.00/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.00/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.00/1.00  git: non_committed_changes: false
% 2.00/1.00  git: last_make_outside_of_git: false
% 2.00/1.00  
% 2.00/1.00  ------ 
% 2.00/1.00  
% 2.00/1.00  ------ Input Options
% 2.00/1.00  
% 2.00/1.00  --out_options                           all
% 2.00/1.00  --tptp_safe_out                         true
% 2.00/1.00  --problem_path                          ""
% 2.00/1.00  --include_path                          ""
% 2.00/1.00  --clausifier                            res/vclausify_rel
% 2.00/1.00  --clausifier_options                    --mode clausify
% 2.00/1.00  --stdin                                 false
% 2.00/1.00  --stats_out                             all
% 2.00/1.00  
% 2.00/1.00  ------ General Options
% 2.00/1.00  
% 2.00/1.00  --fof                                   false
% 2.00/1.00  --time_out_real                         305.
% 2.00/1.00  --time_out_virtual                      -1.
% 2.00/1.00  --symbol_type_check                     false
% 2.00/1.00  --clausify_out                          false
% 2.00/1.00  --sig_cnt_out                           false
% 2.00/1.00  --trig_cnt_out                          false
% 2.00/1.00  --trig_cnt_out_tolerance                1.
% 2.00/1.00  --trig_cnt_out_sk_spl                   false
% 2.00/1.00  --abstr_cl_out                          false
% 2.00/1.00  
% 2.00/1.00  ------ Global Options
% 2.00/1.00  
% 2.00/1.00  --schedule                              default
% 2.00/1.00  --add_important_lit                     false
% 2.00/1.00  --prop_solver_per_cl                    1000
% 2.00/1.00  --min_unsat_core                        false
% 2.00/1.00  --soft_assumptions                      false
% 2.00/1.00  --soft_lemma_size                       3
% 2.00/1.00  --prop_impl_unit_size                   0
% 2.00/1.00  --prop_impl_unit                        []
% 2.00/1.00  --share_sel_clauses                     true
% 2.00/1.00  --reset_solvers                         false
% 2.00/1.00  --bc_imp_inh                            [conj_cone]
% 2.00/1.00  --conj_cone_tolerance                   3.
% 2.00/1.00  --extra_neg_conj                        none
% 2.00/1.00  --large_theory_mode                     true
% 2.00/1.00  --prolific_symb_bound                   200
% 2.00/1.00  --lt_threshold                          2000
% 2.00/1.00  --clause_weak_htbl                      true
% 2.00/1.00  --gc_record_bc_elim                     false
% 2.00/1.00  
% 2.00/1.00  ------ Preprocessing Options
% 2.00/1.00  
% 2.00/1.00  --preprocessing_flag                    true
% 2.00/1.00  --time_out_prep_mult                    0.1
% 2.00/1.00  --splitting_mode                        input
% 2.00/1.00  --splitting_grd                         true
% 2.00/1.00  --splitting_cvd                         false
% 2.00/1.00  --splitting_cvd_svl                     false
% 2.00/1.00  --splitting_nvd                         32
% 2.00/1.00  --sub_typing                            true
% 2.00/1.00  --prep_gs_sim                           true
% 2.00/1.00  --prep_unflatten                        true
% 2.00/1.00  --prep_res_sim                          true
% 2.00/1.00  --prep_upred                            true
% 2.00/1.00  --prep_sem_filter                       exhaustive
% 2.00/1.00  --prep_sem_filter_out                   false
% 2.00/1.00  --pred_elim                             true
% 2.00/1.00  --res_sim_input                         true
% 2.00/1.00  --eq_ax_congr_red                       true
% 2.00/1.00  --pure_diseq_elim                       true
% 2.00/1.00  --brand_transform                       false
% 2.00/1.00  --non_eq_to_eq                          false
% 2.00/1.00  --prep_def_merge                        true
% 2.00/1.00  --prep_def_merge_prop_impl              false
% 2.00/1.00  --prep_def_merge_mbd                    true
% 2.00/1.00  --prep_def_merge_tr_red                 false
% 2.00/1.00  --prep_def_merge_tr_cl                  false
% 2.00/1.00  --smt_preprocessing                     true
% 2.00/1.00  --smt_ac_axioms                         fast
% 2.00/1.00  --preprocessed_out                      false
% 2.00/1.00  --preprocessed_stats                    false
% 2.00/1.00  
% 2.00/1.00  ------ Abstraction refinement Options
% 2.00/1.00  
% 2.00/1.00  --abstr_ref                             []
% 2.00/1.00  --abstr_ref_prep                        false
% 2.00/1.00  --abstr_ref_until_sat                   false
% 2.00/1.00  --abstr_ref_sig_restrict                funpre
% 2.00/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.00/1.00  --abstr_ref_under                       []
% 2.00/1.00  
% 2.00/1.00  ------ SAT Options
% 2.00/1.00  
% 2.00/1.00  --sat_mode                              false
% 2.00/1.00  --sat_fm_restart_options                ""
% 2.00/1.00  --sat_gr_def                            false
% 2.00/1.00  --sat_epr_types                         true
% 2.00/1.00  --sat_non_cyclic_types                  false
% 2.00/1.00  --sat_finite_models                     false
% 2.00/1.00  --sat_fm_lemmas                         false
% 2.00/1.00  --sat_fm_prep                           false
% 2.00/1.00  --sat_fm_uc_incr                        true
% 2.00/1.00  --sat_out_model                         small
% 2.00/1.00  --sat_out_clauses                       false
% 2.00/1.00  
% 2.00/1.00  ------ QBF Options
% 2.00/1.00  
% 2.00/1.00  --qbf_mode                              false
% 2.00/1.00  --qbf_elim_univ                         false
% 2.00/1.00  --qbf_dom_inst                          none
% 2.00/1.00  --qbf_dom_pre_inst                      false
% 2.00/1.00  --qbf_sk_in                             false
% 2.00/1.00  --qbf_pred_elim                         true
% 2.00/1.00  --qbf_split                             512
% 2.00/1.00  
% 2.00/1.00  ------ BMC1 Options
% 2.00/1.00  
% 2.00/1.00  --bmc1_incremental                      false
% 2.00/1.00  --bmc1_axioms                           reachable_all
% 2.00/1.00  --bmc1_min_bound                        0
% 2.00/1.00  --bmc1_max_bound                        -1
% 2.00/1.00  --bmc1_max_bound_default                -1
% 2.00/1.00  --bmc1_symbol_reachability              true
% 2.00/1.00  --bmc1_property_lemmas                  false
% 2.00/1.00  --bmc1_k_induction                      false
% 2.00/1.00  --bmc1_non_equiv_states                 false
% 2.00/1.00  --bmc1_deadlock                         false
% 2.00/1.00  --bmc1_ucm                              false
% 2.00/1.00  --bmc1_add_unsat_core                   none
% 2.00/1.00  --bmc1_unsat_core_children              false
% 2.00/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.00/1.00  --bmc1_out_stat                         full
% 2.00/1.00  --bmc1_ground_init                      false
% 2.00/1.00  --bmc1_pre_inst_next_state              false
% 2.00/1.00  --bmc1_pre_inst_state                   false
% 2.00/1.00  --bmc1_pre_inst_reach_state             false
% 2.00/1.00  --bmc1_out_unsat_core                   false
% 2.00/1.00  --bmc1_aig_witness_out                  false
% 2.00/1.00  --bmc1_verbose                          false
% 2.00/1.00  --bmc1_dump_clauses_tptp                false
% 2.00/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.00/1.00  --bmc1_dump_file                        -
% 2.00/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.00/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.00/1.00  --bmc1_ucm_extend_mode                  1
% 2.00/1.00  --bmc1_ucm_init_mode                    2
% 2.00/1.00  --bmc1_ucm_cone_mode                    none
% 2.00/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.00/1.00  --bmc1_ucm_relax_model                  4
% 2.00/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.00/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.00/1.00  --bmc1_ucm_layered_model                none
% 2.00/1.00  --bmc1_ucm_max_lemma_size               10
% 2.00/1.00  
% 2.00/1.00  ------ AIG Options
% 2.00/1.00  
% 2.00/1.00  --aig_mode                              false
% 2.00/1.00  
% 2.00/1.00  ------ Instantiation Options
% 2.00/1.00  
% 2.00/1.00  --instantiation_flag                    true
% 2.00/1.00  --inst_sos_flag                         false
% 2.00/1.00  --inst_sos_phase                        true
% 2.00/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.00/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.00/1.00  --inst_lit_sel_side                     num_symb
% 2.00/1.00  --inst_solver_per_active                1400
% 2.00/1.00  --inst_solver_calls_frac                1.
% 2.00/1.00  --inst_passive_queue_type               priority_queues
% 2.00/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.00/1.00  --inst_passive_queues_freq              [25;2]
% 2.00/1.00  --inst_dismatching                      true
% 2.00/1.00  --inst_eager_unprocessed_to_passive     true
% 2.00/1.00  --inst_prop_sim_given                   true
% 2.00/1.00  --inst_prop_sim_new                     false
% 2.00/1.00  --inst_subs_new                         false
% 2.00/1.00  --inst_eq_res_simp                      false
% 2.00/1.00  --inst_subs_given                       false
% 2.00/1.00  --inst_orphan_elimination               true
% 2.00/1.00  --inst_learning_loop_flag               true
% 2.00/1.00  --inst_learning_start                   3000
% 2.00/1.00  --inst_learning_factor                  2
% 2.00/1.00  --inst_start_prop_sim_after_learn       3
% 2.00/1.00  --inst_sel_renew                        solver
% 2.00/1.00  --inst_lit_activity_flag                true
% 2.00/1.00  --inst_restr_to_given                   false
% 2.00/1.00  --inst_activity_threshold               500
% 2.00/1.00  --inst_out_proof                        true
% 2.00/1.00  
% 2.00/1.00  ------ Resolution Options
% 2.00/1.00  
% 2.00/1.00  --resolution_flag                       true
% 2.00/1.00  --res_lit_sel                           adaptive
% 2.00/1.00  --res_lit_sel_side                      none
% 2.00/1.00  --res_ordering                          kbo
% 2.00/1.00  --res_to_prop_solver                    active
% 2.00/1.00  --res_prop_simpl_new                    false
% 2.00/1.00  --res_prop_simpl_given                  true
% 2.00/1.00  --res_passive_queue_type                priority_queues
% 2.00/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.00/1.00  --res_passive_queues_freq               [15;5]
% 2.00/1.00  --res_forward_subs                      full
% 2.00/1.00  --res_backward_subs                     full
% 2.00/1.00  --res_forward_subs_resolution           true
% 2.00/1.00  --res_backward_subs_resolution          true
% 2.00/1.00  --res_orphan_elimination                true
% 2.00/1.00  --res_time_limit                        2.
% 2.00/1.00  --res_out_proof                         true
% 2.00/1.00  
% 2.00/1.00  ------ Superposition Options
% 2.00/1.00  
% 2.00/1.00  --superposition_flag                    true
% 2.00/1.00  --sup_passive_queue_type                priority_queues
% 2.00/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.00/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.00/1.00  --demod_completeness_check              fast
% 2.00/1.00  --demod_use_ground                      true
% 2.00/1.00  --sup_to_prop_solver                    passive
% 2.00/1.00  --sup_prop_simpl_new                    true
% 2.00/1.00  --sup_prop_simpl_given                  true
% 2.00/1.00  --sup_fun_splitting                     false
% 2.00/1.00  --sup_smt_interval                      50000
% 2.00/1.00  
% 2.00/1.00  ------ Superposition Simplification Setup
% 2.00/1.00  
% 2.00/1.00  --sup_indices_passive                   []
% 2.00/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.00/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.00/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.00/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.00/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.00/1.00  --sup_full_bw                           [BwDemod]
% 2.00/1.00  --sup_immed_triv                        [TrivRules]
% 2.00/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.00/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.00/1.00  --sup_immed_bw_main                     []
% 2.00/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.00/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.00/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.00/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.00/1.00  
% 2.00/1.00  ------ Combination Options
% 2.00/1.00  
% 2.00/1.00  --comb_res_mult                         3
% 2.00/1.00  --comb_sup_mult                         2
% 2.00/1.00  --comb_inst_mult                        10
% 2.00/1.00  
% 2.00/1.00  ------ Debug Options
% 2.00/1.00  
% 2.00/1.00  --dbg_backtrace                         false
% 2.00/1.00  --dbg_dump_prop_clauses                 false
% 2.00/1.00  --dbg_dump_prop_clauses_file            -
% 2.00/1.00  --dbg_out_stat                          false
% 2.00/1.00  ------ Parsing...
% 2.00/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.00/1.00  
% 2.00/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.00/1.00  
% 2.00/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.00/1.00  
% 2.00/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.00/1.00  ------ Proving...
% 2.00/1.00  ------ Problem Properties 
% 2.00/1.00  
% 2.00/1.00  
% 2.00/1.00  clauses                                 32
% 2.00/1.00  conjectures                             3
% 2.00/1.00  EPR                                     1
% 2.00/1.00  Horn                                    24
% 2.00/1.00  unary                                   9
% 2.00/1.00  binary                                  10
% 2.00/1.00  lits                                    73
% 2.00/1.00  lits eq                                 27
% 2.00/1.00  fd_pure                                 0
% 2.00/1.00  fd_pseudo                               0
% 2.00/1.00  fd_cond                                 0
% 2.00/1.00  fd_pseudo_cond                          9
% 2.00/1.00  AC symbols                              0
% 2.00/1.00  
% 2.00/1.00  ------ Schedule dynamic 5 is on 
% 2.00/1.00  
% 2.00/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.00/1.00  
% 2.00/1.00  
% 2.00/1.00  ------ 
% 2.00/1.00  Current options:
% 2.00/1.00  ------ 
% 2.00/1.00  
% 2.00/1.00  ------ Input Options
% 2.00/1.00  
% 2.00/1.00  --out_options                           all
% 2.00/1.00  --tptp_safe_out                         true
% 2.00/1.00  --problem_path                          ""
% 2.00/1.00  --include_path                          ""
% 2.00/1.00  --clausifier                            res/vclausify_rel
% 2.00/1.00  --clausifier_options                    --mode clausify
% 2.00/1.00  --stdin                                 false
% 2.00/1.00  --stats_out                             all
% 2.00/1.00  
% 2.00/1.00  ------ General Options
% 2.00/1.00  
% 2.00/1.00  --fof                                   false
% 2.00/1.00  --time_out_real                         305.
% 2.00/1.00  --time_out_virtual                      -1.
% 2.00/1.00  --symbol_type_check                     false
% 2.00/1.00  --clausify_out                          false
% 2.00/1.00  --sig_cnt_out                           false
% 2.00/1.00  --trig_cnt_out                          false
% 2.00/1.00  --trig_cnt_out_tolerance                1.
% 2.00/1.00  --trig_cnt_out_sk_spl                   false
% 2.00/1.00  --abstr_cl_out                          false
% 2.00/1.00  
% 2.00/1.00  ------ Global Options
% 2.00/1.00  
% 2.00/1.00  --schedule                              default
% 2.00/1.00  --add_important_lit                     false
% 2.00/1.00  --prop_solver_per_cl                    1000
% 2.00/1.00  --min_unsat_core                        false
% 2.00/1.00  --soft_assumptions                      false
% 2.00/1.00  --soft_lemma_size                       3
% 2.00/1.00  --prop_impl_unit_size                   0
% 2.00/1.00  --prop_impl_unit                        []
% 2.00/1.00  --share_sel_clauses                     true
% 2.00/1.00  --reset_solvers                         false
% 2.00/1.00  --bc_imp_inh                            [conj_cone]
% 2.00/1.00  --conj_cone_tolerance                   3.
% 2.00/1.00  --extra_neg_conj                        none
% 2.00/1.00  --large_theory_mode                     true
% 2.00/1.00  --prolific_symb_bound                   200
% 2.00/1.00  --lt_threshold                          2000
% 2.00/1.00  --clause_weak_htbl                      true
% 2.00/1.00  --gc_record_bc_elim                     false
% 2.00/1.00  
% 2.00/1.00  ------ Preprocessing Options
% 2.00/1.00  
% 2.00/1.00  --preprocessing_flag                    true
% 2.00/1.00  --time_out_prep_mult                    0.1
% 2.00/1.00  --splitting_mode                        input
% 2.00/1.00  --splitting_grd                         true
% 2.00/1.00  --splitting_cvd                         false
% 2.00/1.00  --splitting_cvd_svl                     false
% 2.00/1.00  --splitting_nvd                         32
% 2.00/1.00  --sub_typing                            true
% 2.00/1.00  --prep_gs_sim                           true
% 2.00/1.00  --prep_unflatten                        true
% 2.00/1.00  --prep_res_sim                          true
% 2.00/1.00  --prep_upred                            true
% 2.00/1.00  --prep_sem_filter                       exhaustive
% 2.00/1.00  --prep_sem_filter_out                   false
% 2.00/1.00  --pred_elim                             true
% 2.00/1.00  --res_sim_input                         true
% 2.00/1.00  --eq_ax_congr_red                       true
% 2.00/1.00  --pure_diseq_elim                       true
% 2.00/1.00  --brand_transform                       false
% 2.00/1.00  --non_eq_to_eq                          false
% 2.00/1.00  --prep_def_merge                        true
% 2.00/1.00  --prep_def_merge_prop_impl              false
% 2.00/1.00  --prep_def_merge_mbd                    true
% 2.00/1.00  --prep_def_merge_tr_red                 false
% 2.00/1.00  --prep_def_merge_tr_cl                  false
% 2.00/1.00  --smt_preprocessing                     true
% 2.00/1.00  --smt_ac_axioms                         fast
% 2.00/1.00  --preprocessed_out                      false
% 2.00/1.00  --preprocessed_stats                    false
% 2.00/1.00  
% 2.00/1.00  ------ Abstraction refinement Options
% 2.00/1.00  
% 2.00/1.00  --abstr_ref                             []
% 2.00/1.00  --abstr_ref_prep                        false
% 2.00/1.00  --abstr_ref_until_sat                   false
% 2.00/1.00  --abstr_ref_sig_restrict                funpre
% 2.00/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.00/1.00  --abstr_ref_under                       []
% 2.00/1.00  
% 2.00/1.00  ------ SAT Options
% 2.00/1.00  
% 2.00/1.00  --sat_mode                              false
% 2.00/1.00  --sat_fm_restart_options                ""
% 2.00/1.00  --sat_gr_def                            false
% 2.00/1.00  --sat_epr_types                         true
% 2.00/1.00  --sat_non_cyclic_types                  false
% 2.00/1.00  --sat_finite_models                     false
% 2.00/1.00  --sat_fm_lemmas                         false
% 2.00/1.00  --sat_fm_prep                           false
% 2.00/1.00  --sat_fm_uc_incr                        true
% 2.00/1.00  --sat_out_model                         small
% 2.00/1.00  --sat_out_clauses                       false
% 2.00/1.00  
% 2.00/1.00  ------ QBF Options
% 2.00/1.00  
% 2.00/1.00  --qbf_mode                              false
% 2.00/1.00  --qbf_elim_univ                         false
% 2.00/1.00  --qbf_dom_inst                          none
% 2.00/1.00  --qbf_dom_pre_inst                      false
% 2.00/1.00  --qbf_sk_in                             false
% 2.00/1.00  --qbf_pred_elim                         true
% 2.00/1.00  --qbf_split                             512
% 2.00/1.00  
% 2.00/1.00  ------ BMC1 Options
% 2.00/1.00  
% 2.00/1.00  --bmc1_incremental                      false
% 2.00/1.00  --bmc1_axioms                           reachable_all
% 2.00/1.00  --bmc1_min_bound                        0
% 2.00/1.00  --bmc1_max_bound                        -1
% 2.00/1.00  --bmc1_max_bound_default                -1
% 2.00/1.00  --bmc1_symbol_reachability              true
% 2.00/1.00  --bmc1_property_lemmas                  false
% 2.00/1.00  --bmc1_k_induction                      false
% 2.00/1.00  --bmc1_non_equiv_states                 false
% 2.00/1.00  --bmc1_deadlock                         false
% 2.00/1.00  --bmc1_ucm                              false
% 2.00/1.00  --bmc1_add_unsat_core                   none
% 2.00/1.00  --bmc1_unsat_core_children              false
% 2.00/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.00/1.00  --bmc1_out_stat                         full
% 2.00/1.00  --bmc1_ground_init                      false
% 2.00/1.00  --bmc1_pre_inst_next_state              false
% 2.00/1.00  --bmc1_pre_inst_state                   false
% 2.00/1.00  --bmc1_pre_inst_reach_state             false
% 2.00/1.00  --bmc1_out_unsat_core                   false
% 2.00/1.00  --bmc1_aig_witness_out                  false
% 2.00/1.00  --bmc1_verbose                          false
% 2.00/1.00  --bmc1_dump_clauses_tptp                false
% 2.00/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.00/1.00  --bmc1_dump_file                        -
% 2.00/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.00/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.00/1.00  --bmc1_ucm_extend_mode                  1
% 2.00/1.00  --bmc1_ucm_init_mode                    2
% 2.00/1.00  --bmc1_ucm_cone_mode                    none
% 2.00/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.00/1.00  --bmc1_ucm_relax_model                  4
% 2.00/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.00/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.00/1.00  --bmc1_ucm_layered_model                none
% 2.00/1.00  --bmc1_ucm_max_lemma_size               10
% 2.00/1.00  
% 2.00/1.00  ------ AIG Options
% 2.00/1.00  
% 2.00/1.00  --aig_mode                              false
% 2.00/1.00  
% 2.00/1.00  ------ Instantiation Options
% 2.00/1.00  
% 2.00/1.00  --instantiation_flag                    true
% 2.00/1.00  --inst_sos_flag                         false
% 2.00/1.00  --inst_sos_phase                        true
% 2.00/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.00/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.00/1.00  --inst_lit_sel_side                     none
% 2.00/1.00  --inst_solver_per_active                1400
% 2.00/1.00  --inst_solver_calls_frac                1.
% 2.00/1.00  --inst_passive_queue_type               priority_queues
% 2.00/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.00/1.00  --inst_passive_queues_freq              [25;2]
% 2.00/1.00  --inst_dismatching                      true
% 2.00/1.00  --inst_eager_unprocessed_to_passive     true
% 2.00/1.00  --inst_prop_sim_given                   true
% 2.00/1.00  --inst_prop_sim_new                     false
% 2.00/1.00  --inst_subs_new                         false
% 2.00/1.00  --inst_eq_res_simp                      false
% 2.00/1.00  --inst_subs_given                       false
% 2.00/1.00  --inst_orphan_elimination               true
% 2.00/1.00  --inst_learning_loop_flag               true
% 2.00/1.00  --inst_learning_start                   3000
% 2.00/1.00  --inst_learning_factor                  2
% 2.00/1.00  --inst_start_prop_sim_after_learn       3
% 2.00/1.00  --inst_sel_renew                        solver
% 2.00/1.00  --inst_lit_activity_flag                true
% 2.00/1.00  --inst_restr_to_given                   false
% 2.00/1.00  --inst_activity_threshold               500
% 2.00/1.00  --inst_out_proof                        true
% 2.00/1.00  
% 2.00/1.00  ------ Resolution Options
% 2.00/1.00  
% 2.00/1.00  --resolution_flag                       false
% 2.00/1.00  --res_lit_sel                           adaptive
% 2.00/1.00  --res_lit_sel_side                      none
% 2.00/1.00  --res_ordering                          kbo
% 2.00/1.00  --res_to_prop_solver                    active
% 2.00/1.00  --res_prop_simpl_new                    false
% 2.00/1.00  --res_prop_simpl_given                  true
% 2.00/1.00  --res_passive_queue_type                priority_queues
% 2.00/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.00/1.00  --res_passive_queues_freq               [15;5]
% 2.00/1.00  --res_forward_subs                      full
% 2.00/1.00  --res_backward_subs                     full
% 2.00/1.00  --res_forward_subs_resolution           true
% 2.00/1.00  --res_backward_subs_resolution          true
% 2.00/1.00  --res_orphan_elimination                true
% 2.00/1.00  --res_time_limit                        2.
% 2.00/1.00  --res_out_proof                         true
% 2.00/1.00  
% 2.00/1.00  ------ Superposition Options
% 2.00/1.00  
% 2.00/1.00  --superposition_flag                    true
% 2.00/1.00  --sup_passive_queue_type                priority_queues
% 2.00/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.00/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.00/1.00  --demod_completeness_check              fast
% 2.00/1.00  --demod_use_ground                      true
% 2.00/1.00  --sup_to_prop_solver                    passive
% 2.00/1.00  --sup_prop_simpl_new                    true
% 2.00/1.00  --sup_prop_simpl_given                  true
% 2.00/1.00  --sup_fun_splitting                     false
% 2.00/1.00  --sup_smt_interval                      50000
% 2.00/1.00  
% 2.00/1.00  ------ Superposition Simplification Setup
% 2.00/1.00  
% 2.00/1.00  --sup_indices_passive                   []
% 2.00/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.00/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.00/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.00/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.00/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.00/1.00  --sup_full_bw                           [BwDemod]
% 2.00/1.00  --sup_immed_triv                        [TrivRules]
% 2.00/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.00/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.00/1.00  --sup_immed_bw_main                     []
% 2.00/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.00/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.00/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.00/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.00/1.00  
% 2.00/1.00  ------ Combination Options
% 2.00/1.00  
% 2.00/1.00  --comb_res_mult                         3
% 2.00/1.00  --comb_sup_mult                         2
% 2.00/1.00  --comb_inst_mult                        10
% 2.00/1.00  
% 2.00/1.00  ------ Debug Options
% 2.00/1.00  
% 2.00/1.00  --dbg_backtrace                         false
% 2.00/1.00  --dbg_dump_prop_clauses                 false
% 2.00/1.00  --dbg_dump_prop_clauses_file            -
% 2.00/1.00  --dbg_out_stat                          false
% 2.00/1.00  
% 2.00/1.00  
% 2.00/1.00  
% 2.00/1.00  
% 2.00/1.00  ------ Proving...
% 2.00/1.00  
% 2.00/1.00  
% 2.00/1.00  % SZS status Theorem for theBenchmark.p
% 2.00/1.00  
% 2.00/1.00   Resolution empty clause
% 2.00/1.00  
% 2.00/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.00/1.00  
% 2.00/1.00  fof(f12,axiom,(
% 2.00/1.00    ! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) <=> (r2_hidden(X1,X3) & r2_hidden(X0,X2)))),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f40,plain,(
% 2.00/1.00    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | (~r2_hidden(X1,X3) | ~r2_hidden(X0,X2))) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.00/1.00    inference(nnf_transformation,[],[f12])).
% 2.00/1.00  
% 2.00/1.00  fof(f41,plain,(
% 2.00/1.00    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | ~r2_hidden(X1,X3) | ~r2_hidden(X0,X2)) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.00/1.00    inference(flattening,[],[f40])).
% 2.00/1.00  
% 2.00/1.00  fof(f76,plain,(
% 2.00/1.00    ( ! [X2,X0,X3,X1] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | ~r2_hidden(X1,X3) | ~r2_hidden(X0,X2)) )),
% 2.00/1.00    inference(cnf_transformation,[],[f41])).
% 2.00/1.00  
% 2.00/1.00  fof(f16,conjecture,(
% 2.00/1.00    ! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)) <=> (r2_hidden(X1,X3) & X0 = X2))),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f17,negated_conjecture,(
% 2.00/1.00    ~! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)) <=> (r2_hidden(X1,X3) & X0 = X2))),
% 2.00/1.00    inference(negated_conjecture,[],[f16])).
% 2.00/1.00  
% 2.00/1.00  fof(f22,plain,(
% 2.00/1.00    ? [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)) <~> (r2_hidden(X1,X3) & X0 = X2))),
% 2.00/1.00    inference(ennf_transformation,[],[f17])).
% 2.00/1.00  
% 2.00/1.00  fof(f44,plain,(
% 2.00/1.00    ? [X0,X1,X2,X3] : (((~r2_hidden(X1,X3) | X0 != X2) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3))) & ((r2_hidden(X1,X3) & X0 = X2) | r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3))))),
% 2.00/1.00    inference(nnf_transformation,[],[f22])).
% 2.00/1.00  
% 2.00/1.00  fof(f45,plain,(
% 2.00/1.00    ? [X0,X1,X2,X3] : ((~r2_hidden(X1,X3) | X0 != X2 | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3))) & ((r2_hidden(X1,X3) & X0 = X2) | r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3))))),
% 2.00/1.00    inference(flattening,[],[f44])).
% 2.00/1.00  
% 2.00/1.00  fof(f46,plain,(
% 2.00/1.00    ? [X0,X1,X2,X3] : ((~r2_hidden(X1,X3) | X0 != X2 | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3))) & ((r2_hidden(X1,X3) & X0 = X2) | r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(k1_tarski(X2),X3)))) => ((~r2_hidden(sK5,sK7) | sK4 != sK6 | ~r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7))) & ((r2_hidden(sK5,sK7) & sK4 = sK6) | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7))))),
% 2.00/1.00    introduced(choice_axiom,[])).
% 2.00/1.00  
% 2.00/1.00  fof(f47,plain,(
% 2.00/1.00    (~r2_hidden(sK5,sK7) | sK4 != sK6 | ~r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7))) & ((r2_hidden(sK5,sK7) & sK4 = sK6) | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7)))),
% 2.00/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f45,f46])).
% 2.00/1.00  
% 2.00/1.00  fof(f84,plain,(
% 2.00/1.00    sK4 = sK6 | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7))),
% 2.00/1.00    inference(cnf_transformation,[],[f47])).
% 2.00/1.00  
% 2.00/1.00  fof(f4,axiom,(
% 2.00/1.00    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f63,plain,(
% 2.00/1.00    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 2.00/1.00    inference(cnf_transformation,[],[f4])).
% 2.00/1.00  
% 2.00/1.00  fof(f5,axiom,(
% 2.00/1.00    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f64,plain,(
% 2.00/1.00    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 2.00/1.00    inference(cnf_transformation,[],[f5])).
% 2.00/1.00  
% 2.00/1.00  fof(f6,axiom,(
% 2.00/1.00    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f65,plain,(
% 2.00/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 2.00/1.00    inference(cnf_transformation,[],[f6])).
% 2.00/1.00  
% 2.00/1.00  fof(f7,axiom,(
% 2.00/1.00    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f66,plain,(
% 2.00/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 2.00/1.00    inference(cnf_transformation,[],[f7])).
% 2.00/1.00  
% 2.00/1.00  fof(f8,axiom,(
% 2.00/1.00    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f67,plain,(
% 2.00/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 2.00/1.00    inference(cnf_transformation,[],[f8])).
% 2.00/1.00  
% 2.00/1.00  fof(f9,axiom,(
% 2.00/1.00    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f68,plain,(
% 2.00/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 2.00/1.00    inference(cnf_transformation,[],[f9])).
% 2.00/1.00  
% 2.00/1.00  fof(f10,axiom,(
% 2.00/1.00    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f69,plain,(
% 2.00/1.00    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 2.00/1.00    inference(cnf_transformation,[],[f10])).
% 2.00/1.00  
% 2.00/1.00  fof(f87,plain,(
% 2.00/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 2.00/1.00    inference(definition_unfolding,[],[f68,f69])).
% 2.00/1.00  
% 2.00/1.00  fof(f88,plain,(
% 2.00/1.00    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 2.00/1.00    inference(definition_unfolding,[],[f67,f87])).
% 2.00/1.00  
% 2.00/1.00  fof(f89,plain,(
% 2.00/1.00    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 2.00/1.00    inference(definition_unfolding,[],[f66,f88])).
% 2.00/1.00  
% 2.00/1.00  fof(f90,plain,(
% 2.00/1.00    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 2.00/1.00    inference(definition_unfolding,[],[f65,f89])).
% 2.00/1.00  
% 2.00/1.00  fof(f91,plain,(
% 2.00/1.00    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 2.00/1.00    inference(definition_unfolding,[],[f64,f90])).
% 2.00/1.00  
% 2.00/1.00  fof(f92,plain,(
% 2.00/1.00    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 2.00/1.00    inference(definition_unfolding,[],[f63,f91])).
% 2.00/1.00  
% 2.00/1.00  fof(f112,plain,(
% 2.00/1.00    sK4 = sK6 | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))),
% 2.00/1.00    inference(definition_unfolding,[],[f84,f92])).
% 2.00/1.00  
% 2.00/1.00  fof(f74,plain,(
% 2.00/1.00    ( ! [X2,X0,X3,X1] : (r2_hidden(X0,X2) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))) )),
% 2.00/1.00    inference(cnf_transformation,[],[f41])).
% 2.00/1.00  
% 2.00/1.00  fof(f86,plain,(
% 2.00/1.00    ~r2_hidden(sK5,sK7) | sK4 != sK6 | ~r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7))),
% 2.00/1.00    inference(cnf_transformation,[],[f47])).
% 2.00/1.00  
% 2.00/1.00  fof(f110,plain,(
% 2.00/1.00    ~r2_hidden(sK5,sK7) | sK4 != sK6 | ~r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))),
% 2.00/1.00    inference(definition_unfolding,[],[f86,f92])).
% 2.00/1.00  
% 2.00/1.00  fof(f85,plain,(
% 2.00/1.00    r2_hidden(sK5,sK7) | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k1_tarski(sK6),sK7))),
% 2.00/1.00    inference(cnf_transformation,[],[f47])).
% 2.00/1.00  
% 2.00/1.00  fof(f111,plain,(
% 2.00/1.00    r2_hidden(sK5,sK7) | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))),
% 2.00/1.00    inference(definition_unfolding,[],[f85,f92])).
% 2.00/1.00  
% 2.00/1.00  fof(f75,plain,(
% 2.00/1.00    ( ! [X2,X0,X3,X1] : (r2_hidden(X1,X3) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))) )),
% 2.00/1.00    inference(cnf_transformation,[],[f41])).
% 2.00/1.00  
% 2.00/1.00  fof(f3,axiom,(
% 2.00/1.00    ! [X0,X1] : (k1_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> X0 = X2))),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f32,plain,(
% 2.00/1.00    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | X0 != X2) & (X0 = X2 | ~r2_hidden(X2,X1))) | k1_tarski(X0) != X1))),
% 2.00/1.00    inference(nnf_transformation,[],[f3])).
% 2.00/1.00  
% 2.00/1.00  fof(f33,plain,(
% 2.00/1.00    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.00/1.00    inference(rectify,[],[f32])).
% 2.00/1.00  
% 2.00/1.00  fof(f34,plain,(
% 2.00/1.00    ! [X1,X0] : (? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1))) => ((sK2(X0,X1) != X0 | ~r2_hidden(sK2(X0,X1),X1)) & (sK2(X0,X1) = X0 | r2_hidden(sK2(X0,X1),X1))))),
% 2.00/1.00    introduced(choice_axiom,[])).
% 2.00/1.00  
% 2.00/1.00  fof(f35,plain,(
% 2.00/1.00    ! [X0,X1] : ((k1_tarski(X0) = X1 | ((sK2(X0,X1) != X0 | ~r2_hidden(sK2(X0,X1),X1)) & (sK2(X0,X1) = X0 | r2_hidden(sK2(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.00/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f33,f34])).
% 2.00/1.00  
% 2.00/1.00  fof(f59,plain,(
% 2.00/1.00    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k1_tarski(X0) != X1) )),
% 2.00/1.00    inference(cnf_transformation,[],[f35])).
% 2.00/1.00  
% 2.00/1.00  fof(f104,plain,(
% 2.00/1.00    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != X1) )),
% 2.00/1.00    inference(definition_unfolding,[],[f59,f92])).
% 2.00/1.00  
% 2.00/1.00  fof(f122,plain,(
% 2.00/1.00    ( ! [X0,X3] : (X0 = X3 | ~r2_hidden(X3,k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0))) )),
% 2.00/1.00    inference(equality_resolution,[],[f104])).
% 2.00/1.00  
% 2.00/1.00  fof(f2,axiom,(
% 2.00/1.00    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> ~(X2 != X4 & X1 != X4 & X0 != X4)))),
% 2.00/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.00/1.00  
% 2.00/1.00  fof(f19,plain,(
% 2.00/1.00    ! [X0,X1,X2,X3] : (k1_enumset1(X0,X1,X2) = X3 <=> ! [X4] : (r2_hidden(X4,X3) <=> (X2 = X4 | X1 = X4 | X0 = X4)))),
% 2.00/1.00    inference(ennf_transformation,[],[f2])).
% 2.00/1.00  
% 2.00/1.00  fof(f27,plain,(
% 2.00/1.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & ((X2 = X4 | X1 = X4 | X0 = X4) | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & ((X2 = X4 | X1 = X4 | X0 = X4) | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.00/1.00    inference(nnf_transformation,[],[f19])).
% 2.00/1.00  
% 2.00/1.00  fof(f28,plain,(
% 2.00/1.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X4] : ((r2_hidden(X4,X3) | (X2 != X4 & X1 != X4 & X0 != X4)) & (X2 = X4 | X1 = X4 | X0 = X4 | ~r2_hidden(X4,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.00/1.00    inference(flattening,[],[f27])).
% 2.00/1.00  
% 2.00/1.00  fof(f29,plain,(
% 2.00/1.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | ? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.00/1.00    inference(rectify,[],[f28])).
% 2.00/1.00  
% 2.00/1.00  fof(f30,plain,(
% 2.00/1.00    ! [X3,X2,X1,X0] : (? [X4] : (((X2 != X4 & X1 != X4 & X0 != X4) | ~r2_hidden(X4,X3)) & (X2 = X4 | X1 = X4 | X0 = X4 | r2_hidden(X4,X3))) => (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3))))),
% 2.00/1.00    introduced(choice_axiom,[])).
% 2.00/1.00  
% 2.00/1.00  fof(f31,plain,(
% 2.00/1.00    ! [X0,X1,X2,X3] : ((k1_enumset1(X0,X1,X2) = X3 | (((sK1(X0,X1,X2,X3) != X2 & sK1(X0,X1,X2,X3) != X1 & sK1(X0,X1,X2,X3) != X0) | ~r2_hidden(sK1(X0,X1,X2,X3),X3)) & (sK1(X0,X1,X2,X3) = X2 | sK1(X0,X1,X2,X3) = X1 | sK1(X0,X1,X2,X3) = X0 | r2_hidden(sK1(X0,X1,X2,X3),X3)))) & (! [X5] : ((r2_hidden(X5,X3) | (X2 != X5 & X1 != X5 & X0 != X5)) & (X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X3))) | k1_enumset1(X0,X1,X2) != X3))),
% 2.00/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f29,f30])).
% 2.00/1.00  
% 2.00/1.00  fof(f52,plain,(
% 2.00/1.00    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k1_enumset1(X0,X1,X2) != X3) )),
% 2.00/1.00    inference(cnf_transformation,[],[f31])).
% 2.00/1.00  
% 2.00/1.00  fof(f99,plain,(
% 2.00/1.00    ( ! [X2,X0,X5,X3,X1] : (r2_hidden(X5,X3) | X0 != X5 | k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) != X3) )),
% 2.00/1.00    inference(definition_unfolding,[],[f52,f90])).
% 2.00/1.00  
% 2.00/1.00  fof(f117,plain,(
% 2.00/1.00    ( ! [X2,X5,X3,X1] : (r2_hidden(X5,X3) | k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2) != X3) )),
% 2.00/1.00    inference(equality_resolution,[],[f99])).
% 2.00/1.00  
% 2.00/1.00  fof(f118,plain,(
% 2.00/1.00    ( ! [X2,X5,X1] : (r2_hidden(X5,k6_enumset1(X5,X5,X5,X5,X5,X5,X1,X2))) )),
% 2.00/1.00    inference(equality_resolution,[],[f117])).
% 2.00/1.00  
% 2.00/1.00  cnf(c_19,plain,
% 2.00/1.00      ( ~ r2_hidden(X0,X1)
% 2.00/1.00      | ~ r2_hidden(X2,X3)
% 2.00/1.00      | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) ),
% 2.00/1.00      inference(cnf_transformation,[],[f76]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1626,plain,
% 2.00/1.00      ( r2_hidden(X0,X1) != iProver_top
% 2.00/1.00      | r2_hidden(X2,X3) != iProver_top
% 2.00/1.00      | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) = iProver_top ),
% 2.00/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_31,negated_conjecture,
% 2.00/1.00      ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))
% 2.00/1.00      | sK4 = sK6 ),
% 2.00/1.00      inference(cnf_transformation,[],[f112]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1615,plain,
% 2.00/1.00      ( sK4 = sK6
% 2.00/1.00      | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) = iProver_top ),
% 2.00/1.00      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_21,plain,
% 2.00/1.00      ( r2_hidden(X0,X1) | ~ r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) ),
% 2.00/1.00      inference(cnf_transformation,[],[f74]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1624,plain,
% 2.00/1.00      ( r2_hidden(X0,X1) = iProver_top
% 2.00/1.00      | r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) != iProver_top ),
% 2.00/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_2556,plain,
% 2.00/1.00      ( sK6 = sK4
% 2.00/1.00      | r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) = iProver_top ),
% 2.00/1.00      inference(superposition,[status(thm)],[c_1615,c_1624]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_29,negated_conjecture,
% 2.00/1.00      ( ~ r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))
% 2.00/1.00      | ~ r2_hidden(sK5,sK7)
% 2.00/1.00      | sK4 != sK6 ),
% 2.00/1.00      inference(cnf_transformation,[],[f110]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_30,negated_conjecture,
% 2.00/1.00      ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))
% 2.00/1.00      | r2_hidden(sK5,sK7) ),
% 2.00/1.00      inference(cnf_transformation,[],[f111]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1616,plain,
% 2.00/1.00      ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) = iProver_top
% 2.00/1.00      | r2_hidden(sK5,sK7) = iProver_top ),
% 2.00/1.00      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_20,plain,
% 2.00/1.00      ( r2_hidden(X0,X1) | ~ r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) ),
% 2.00/1.00      inference(cnf_transformation,[],[f75]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1625,plain,
% 2.00/1.00      ( r2_hidden(X0,X1) = iProver_top
% 2.00/1.00      | r2_hidden(k4_tarski(X2,X0),k2_zfmisc_1(X3,X1)) != iProver_top ),
% 2.00/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1720,plain,
% 2.00/1.00      ( r2_hidden(sK5,sK7) = iProver_top ),
% 2.00/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_1616,c_1625]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1810,plain,
% 2.00/1.00      ( r2_hidden(sK5,sK7) ),
% 2.00/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_1720]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_14,plain,
% 2.00/1.00      ( ~ r2_hidden(X0,k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) | X0 = X1 ),
% 2.00/1.00      inference(cnf_transformation,[],[f122]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1975,plain,
% 2.00/1.00      ( ~ r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
% 2.00/1.00      | sK4 = sK6 ),
% 2.00/1.00      inference(instantiation,[status(thm)],[c_14]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1976,plain,
% 2.00/1.00      ( sK4 = sK6
% 2.00/1.00      | r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6)) != iProver_top ),
% 2.00/1.00      inference(predicate_to_equality,[status(thm)],[c_1975]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1898,plain,
% 2.00/1.00      ( ~ r2_hidden(X0,X1)
% 2.00/1.00      | r2_hidden(k4_tarski(X0,sK5),k2_zfmisc_1(X1,sK7))
% 2.00/1.00      | ~ r2_hidden(sK5,sK7) ),
% 2.00/1.00      inference(instantiation,[status(thm)],[c_19]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_2067,plain,
% 2.00/1.00      ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7))
% 2.00/1.00      | ~ r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
% 2.00/1.00      | ~ r2_hidden(sK5,sK7) ),
% 2.00/1.00      inference(instantiation,[status(thm)],[c_1898]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_2557,plain,
% 2.00/1.00      ( r2_hidden(sK4,k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6))
% 2.00/1.00      | sK6 = sK4 ),
% 2.00/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_2556]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_2664,plain,
% 2.00/1.00      ( sK6 = sK4 ),
% 2.00/1.00      inference(global_propositional_subsumption,
% 2.00/1.00                [status(thm)],
% 2.00/1.00                [c_2556,c_29,c_1810,c_1976,c_2067,c_2557]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1617,plain,
% 2.00/1.00      ( sK4 != sK6
% 2.00/1.00      | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) != iProver_top
% 2.00/1.00      | r2_hidden(sK5,sK7) != iProver_top ),
% 2.00/1.00      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1751,plain,
% 2.00/1.00      ( sK6 != sK4
% 2.00/1.00      | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK6,sK6,sK6,sK6,sK6,sK6,sK6,sK6),sK7)) != iProver_top ),
% 2.00/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_1617,c_1625]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_2667,plain,
% 2.00/1.00      ( sK4 != sK4
% 2.00/1.00      | r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK7)) != iProver_top ),
% 2.00/1.00      inference(demodulation,[status(thm)],[c_2664,c_1751]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_2669,plain,
% 2.00/1.00      ( r2_hidden(k4_tarski(sK4,sK5),k2_zfmisc_1(k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4),sK7)) != iProver_top ),
% 2.00/1.00      inference(equality_resolution_simp,[status(thm)],[c_2667]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_4547,plain,
% 2.00/1.00      ( r2_hidden(sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top
% 2.00/1.00      | r2_hidden(sK5,sK7) != iProver_top ),
% 2.00/1.00      inference(superposition,[status(thm)],[c_1626,c_2669]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_4886,plain,
% 2.00/1.00      ( r2_hidden(sK4,k6_enumset1(sK4,sK4,sK4,sK4,sK4,sK4,sK4,sK4)) != iProver_top ),
% 2.00/1.00      inference(global_propositional_subsumption,[status(thm)],[c_4547,c_1720]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_9,plain,
% 2.00/1.00      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) ),
% 2.00/1.00      inference(cnf_transformation,[],[f118]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_1636,plain,
% 2.00/1.00      ( r2_hidden(X0,k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) = iProver_top ),
% 2.00/1.00      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.00/1.00  
% 2.00/1.00  cnf(c_4891,plain,
% 2.00/1.00      ( $false ),
% 2.00/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_4886,c_1636]) ).
% 2.00/1.00  
% 2.00/1.00  
% 2.00/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.00/1.00  
% 2.00/1.00  ------                               Statistics
% 2.00/1.00  
% 2.00/1.00  ------ General
% 2.00/1.00  
% 2.00/1.00  abstr_ref_over_cycles:                  0
% 2.00/1.00  abstr_ref_under_cycles:                 0
% 2.00/1.00  gc_basic_clause_elim:                   0
% 2.00/1.00  forced_gc_time:                         0
% 2.00/1.00  parsing_time:                           0.011
% 2.00/1.00  unif_index_cands_time:                  0.
% 2.00/1.00  unif_index_add_time:                    0.
% 2.00/1.00  orderings_time:                         0.
% 2.00/1.00  out_proof_time:                         0.009
% 2.00/1.00  total_time:                             0.177
% 2.00/1.00  num_of_symbols:                         47
% 2.00/1.00  num_of_terms:                           5351
% 2.00/1.00  
% 2.00/1.00  ------ Preprocessing
% 2.00/1.00  
% 2.00/1.00  num_of_splits:                          0
% 2.00/1.00  num_of_split_atoms:                     0
% 2.00/1.00  num_of_reused_defs:                     0
% 2.00/1.00  num_eq_ax_congr_red:                    22
% 2.00/1.00  num_of_sem_filtered_clauses:            1
% 2.00/1.00  num_of_subtypes:                        0
% 2.00/1.00  monotx_restored_types:                  0
% 2.00/1.00  sat_num_of_epr_types:                   0
% 2.00/1.00  sat_num_of_non_cyclic_types:            0
% 2.00/1.00  sat_guarded_non_collapsed_types:        0
% 2.00/1.00  num_pure_diseq_elim:                    0
% 2.00/1.00  simp_replaced_by:                       0
% 2.00/1.00  res_preprocessed:                       113
% 2.00/1.00  prep_upred:                             0
% 2.00/1.00  prep_unflattend:                        55
% 2.00/1.00  smt_new_axioms:                         0
% 2.00/1.00  pred_elim_cands:                        2
% 2.00/1.00  pred_elim:                              0
% 2.00/1.00  pred_elim_cl:                           0
% 2.00/1.00  pred_elim_cycles:                       1
% 2.00/1.00  merged_defs:                            6
% 2.00/1.00  merged_defs_ncl:                        0
% 2.00/1.00  bin_hyper_res:                          6
% 2.00/1.00  prep_cycles:                            3
% 2.00/1.00  pred_elim_time:                         0.01
% 2.00/1.00  splitting_time:                         0.
% 2.00/1.00  sem_filter_time:                        0.
% 2.00/1.00  monotx_time:                            0.001
% 2.00/1.00  subtype_inf_time:                       0.
% 2.00/1.00  
% 2.00/1.00  ------ Problem properties
% 2.00/1.00  
% 2.00/1.00  clauses:                                32
% 2.00/1.00  conjectures:                            3
% 2.00/1.00  epr:                                    1
% 2.00/1.00  horn:                                   24
% 2.00/1.00  ground:                                 3
% 2.00/1.00  unary:                                  9
% 2.00/1.00  binary:                                 10
% 2.00/1.00  lits:                                   73
% 2.00/1.00  lits_eq:                                27
% 2.00/1.00  fd_pure:                                0
% 2.00/1.00  fd_pseudo:                              0
% 2.00/1.00  fd_cond:                                0
% 2.00/1.00  fd_pseudo_cond:                         9
% 2.00/1.00  ac_symbols:                             0
% 2.00/1.00  
% 2.00/1.00  ------ Propositional Solver
% 2.00/1.00  
% 2.00/1.00  prop_solver_calls:                      22
% 2.00/1.00  prop_fast_solver_calls:                 736
% 2.00/1.00  smt_solver_calls:                       0
% 2.00/1.00  smt_fast_solver_calls:                  0
% 2.00/1.00  prop_num_of_clauses:                    1906
% 2.00/1.00  prop_preprocess_simplified:             6464
% 2.00/1.00  prop_fo_subsumed:                       2
% 2.00/1.00  prop_solver_time:                       0.
% 2.00/1.00  smt_solver_time:                        0.
% 2.00/1.00  smt_fast_solver_time:                   0.
% 2.00/1.00  prop_fast_solver_time:                  0.
% 2.00/1.00  prop_unsat_core_time:                   0.
% 2.00/1.00  
% 2.00/1.00  ------ QBF
% 2.00/1.00  
% 2.00/1.00  qbf_q_res:                              0
% 2.00/1.00  qbf_num_tautologies:                    0
% 2.00/1.00  qbf_prep_cycles:                        0
% 2.00/1.00  
% 2.00/1.00  ------ BMC1
% 2.00/1.00  
% 2.00/1.00  bmc1_current_bound:                     -1
% 2.00/1.00  bmc1_last_solved_bound:                 -1
% 2.00/1.00  bmc1_unsat_core_size:                   -1
% 2.00/1.00  bmc1_unsat_core_parents_size:           -1
% 2.00/1.00  bmc1_merge_next_fun:                    0
% 2.00/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.00/1.00  
% 2.00/1.00  ------ Instantiation
% 2.00/1.00  
% 2.00/1.00  inst_num_of_clauses:                    503
% 2.00/1.00  inst_num_in_passive:                    176
% 2.00/1.00  inst_num_in_active:                     164
% 2.00/1.00  inst_num_in_unprocessed:                163
% 2.00/1.00  inst_num_of_loops:                      190
% 2.00/1.00  inst_num_of_learning_restarts:          0
% 2.00/1.00  inst_num_moves_active_passive:          25
% 2.00/1.00  inst_lit_activity:                      0
% 2.00/1.00  inst_lit_activity_moves:                0
% 2.00/1.00  inst_num_tautologies:                   0
% 2.00/1.00  inst_num_prop_implied:                  0
% 2.00/1.00  inst_num_existing_simplified:           0
% 2.00/1.00  inst_num_eq_res_simplified:             0
% 2.00/1.00  inst_num_child_elim:                    0
% 2.00/1.00  inst_num_of_dismatching_blockings:      70
% 2.00/1.00  inst_num_of_non_proper_insts:           259
% 2.00/1.00  inst_num_of_duplicates:                 0
% 2.00/1.00  inst_inst_num_from_inst_to_res:         0
% 2.00/1.00  inst_dismatching_checking_time:         0.
% 2.00/1.00  
% 2.00/1.00  ------ Resolution
% 2.00/1.00  
% 2.00/1.00  res_num_of_clauses:                     0
% 2.00/1.00  res_num_in_passive:                     0
% 2.00/1.00  res_num_in_active:                      0
% 2.00/1.00  res_num_of_loops:                       116
% 2.00/1.00  res_forward_subset_subsumed:            11
% 2.00/1.00  res_backward_subset_subsumed:           0
% 2.00/1.00  res_forward_subsumed:                   0
% 2.00/1.00  res_backward_subsumed:                  0
% 2.00/1.00  res_forward_subsumption_resolution:     0
% 2.00/1.00  res_backward_subsumption_resolution:    0
% 2.00/1.00  res_clause_to_clause_subsumption:       400
% 2.00/1.00  res_orphan_elimination:                 0
% 2.00/1.00  res_tautology_del:                      24
% 2.00/1.00  res_num_eq_res_simplified:              0
% 2.00/1.00  res_num_sel_changes:                    0
% 2.00/1.00  res_moves_from_active_to_pass:          0
% 2.00/1.00  
% 2.00/1.00  ------ Superposition
% 2.00/1.00  
% 2.00/1.00  sup_time_total:                         0.
% 2.00/1.00  sup_time_generating:                    0.
% 2.00/1.00  sup_time_sim_full:                      0.
% 2.00/1.00  sup_time_sim_immed:                     0.
% 2.00/1.00  
% 2.00/1.00  sup_num_of_clauses:                     74
% 2.00/1.00  sup_num_in_active:                      35
% 2.00/1.00  sup_num_in_passive:                     39
% 2.00/1.00  sup_num_of_loops:                       37
% 2.00/1.00  sup_fw_superposition:                   44
% 2.00/1.00  sup_bw_superposition:                   17
% 2.00/1.00  sup_immediate_simplified:               1
% 2.00/1.00  sup_given_eliminated:                   0
% 2.00/1.00  comparisons_done:                       0
% 2.00/1.00  comparisons_avoided:                    2
% 2.00/1.00  
% 2.00/1.00  ------ Simplifications
% 2.00/1.00  
% 2.00/1.00  
% 2.00/1.00  sim_fw_subset_subsumed:                 0
% 2.00/1.00  sim_bw_subset_subsumed:                 0
% 2.00/1.00  sim_fw_subsumed:                        1
% 2.00/1.00  sim_bw_subsumed:                        1
% 2.00/1.00  sim_fw_subsumption_res:                 3
% 2.00/1.00  sim_bw_subsumption_res:                 0
% 2.00/1.00  sim_tautology_del:                      4
% 2.00/1.00  sim_eq_tautology_del:                   3
% 2.00/1.00  sim_eq_res_simp:                        1
% 2.00/1.00  sim_fw_demodulated:                     1
% 2.00/1.00  sim_bw_demodulated:                     2
% 2.00/1.00  sim_light_normalised:                   0
% 2.00/1.00  sim_joinable_taut:                      0
% 2.00/1.00  sim_joinable_simp:                      0
% 2.00/1.00  sim_ac_normalised:                      0
% 2.00/1.00  sim_smt_subsumption:                    0
% 2.00/1.00  
%------------------------------------------------------------------------------
