%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:06:36 EST 2020

% Result     : Theorem 1.90s
% Output     : CNFRefutation 1.90s
% Verified   : 
% Statistics : Number of formulae       :   98 ( 449 expanded)
%              Number of clauses        :   30 (  31 expanded)
%              Number of leaves         :   18 ( 141 expanded)
%              Depth                    :   21
%              Number of atoms          :  336 ( 808 expanded)
%              Number of equality atoms :  209 ( 567 expanded)
%              Maximal formula depth    :   15 (   5 average)
%              Maximal clause size      :   22 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f15,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => k1_funct_1(X3,X2) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
          & v1_funct_2(X3,X0,k1_tarski(X1))
          & v1_funct_1(X3) )
       => ( r2_hidden(X2,X0)
         => k1_funct_1(X3,X2) = X1 ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f20,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f21,plain,(
    ? [X0,X1,X2,X3] :
      ( k1_funct_1(X3,X2) != X1
      & r2_hidden(X2,X0)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
      & v1_funct_2(X3,X0,k1_tarski(X1))
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f20])).

fof(f31,plain,
    ( ? [X0,X1,X2,X3] :
        ( k1_funct_1(X3,X2) != X1
        & r2_hidden(X2,X0)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1))))
        & v1_funct_2(X3,X0,k1_tarski(X1))
        & v1_funct_1(X3) )
   => ( k1_funct_1(sK5,sK4) != sK3
      & r2_hidden(sK4,sK2)
      & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3))))
      & v1_funct_2(sK5,sK2,k1_tarski(sK3))
      & v1_funct_1(sK5) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( k1_funct_1(sK5,sK4) != sK3
    & r2_hidden(sK4,sK2)
    & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3))))
    & v1_funct_2(sK5,sK2,k1_tarski(sK3))
    & v1_funct_1(sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f21,f31])).

fof(f62,plain,(
    r2_hidden(sK4,sK2) ),
    inference(cnf_transformation,[],[f32])).

fof(f60,plain,(
    v1_funct_2(sK5,sK2,k1_tarski(sK3)) ),
    inference(cnf_transformation,[],[f32])).

fof(f2,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f5])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f8])).

fof(f64,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f39,f40])).

fof(f65,plain,(
    ! [X4,X2,X0,X3,X1] : k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4) ),
    inference(definition_unfolding,[],[f38,f64])).

fof(f66,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f37,f65])).

fof(f67,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2) ),
    inference(definition_unfolding,[],[f36,f66])).

fof(f68,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f35,f67])).

fof(f71,plain,(
    ! [X0] : k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f34,f68])).

fof(f79,plain,(
    v1_funct_2(sK5,sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)) ),
    inference(definition_unfolding,[],[f60,f71])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ( r2_hidden(X2,X0)
       => ( r2_hidden(k1_funct_1(X3,X2),X1)
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),X1)
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f19,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k1_funct_1(X3,X2),X1)
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f18])).

fof(f58,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(k1_funct_1(X3,X2),X1)
      | k1_xboole_0 = X1
      | ~ r2_hidden(X2,X0)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f61,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3)))) ),
    inference(cnf_transformation,[],[f32])).

fof(f78,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)))) ),
    inference(definition_unfolding,[],[f61,f71])).

fof(f59,plain,(
    v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f32])).

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

fof(f17,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( k2_enumset1(X0,X1,X2,X3) = X4
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ( X3 = X5
            | X2 = X5
            | X1 = X5
            | X0 = X5 ) ) ) ),
    inference(ennf_transformation,[],[f12])).

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

fof(f23,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( k2_enumset1(X0,X1,X2,X3) = X4
    <=> sP0(X3,X2,X1,X0,X4) ) ),
    inference(definition_folding,[],[f17,f22])).

fof(f30,plain,(
    ! [X0,X1,X2,X3,X4] :
      ( ( k2_enumset1(X0,X1,X2,X3) = X4
        | ~ sP0(X3,X2,X1,X0,X4) )
      & ( sP0(X3,X2,X1,X0,X4)
        | k2_enumset1(X0,X1,X2,X3) != X4 ) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f55,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( sP0(X3,X2,X1,X0,X4)
      | k2_enumset1(X0,X1,X2,X3) != X4 ) ),
    inference(cnf_transformation,[],[f30])).

fof(f77,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( sP0(X3,X2,X1,X0,X4)
      | k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) != X4 ) ),
    inference(definition_unfolding,[],[f55,f66])).

fof(f85,plain,(
    ! [X2,X0,X3,X1] : sP0(X3,X2,X1,X0,k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) ),
    inference(equality_resolution,[],[f77])).

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

fof(f45,plain,(
    ! [X6,X4,X2,X0,X3,X1] :
      ( X0 = X6
      | X1 = X6
      | X2 = X6
      | X3 = X6
      | ~ r2_hidden(X6,X4)
      | ~ sP0(X0,X1,X2,X3,X4) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
    <=> X0 != X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0)
        | X0 = X1 )
      & ( X0 != X1
        | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0) ) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f42,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f1,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f1])).

fof(f13,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f69,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f57,f68])).

fof(f70,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f33,f69])).

fof(f74,plain,(
    ! [X0,X1] :
      ( X0 != X1
      | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ) ),
    inference(definition_unfolding,[],[f42,f70,f71,f71,f71])).

fof(f80,plain,(
    ! [X1] : k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k1_setfam_1(k6_enumset1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) != k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1) ),
    inference(equality_resolution,[],[f74])).

fof(f9,axiom,(
    ! [X0,X1] : k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] : k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f9])).

fof(f72,plain,(
    ! [X0,X1] : k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f41,f69,f71,f68,f71])).

fof(f11,axiom,(
    ! [X0,X1] : k4_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] : k4_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f11])).

fof(f75,plain,(
    ! [X0,X1] : k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) = k1_xboole_0 ),
    inference(definition_unfolding,[],[f44,f70,f71,f68])).

fof(f63,plain,(
    k1_funct_1(sK5,sK4) != sK3 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_18,negated_conjecture,
    ( r2_hidden(sK4,sK2) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1938,plain,
    ( r2_hidden(sK4,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_20,negated_conjecture,
    ( v1_funct_2(sK5,sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_16,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),X2)
    | ~ v1_funct_1(X0)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_19,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)))) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_195,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ r2_hidden(X3,X1)
    | r2_hidden(k1_funct_1(X0,X3),X2)
    | ~ v1_funct_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK5 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_19])).

cnf(c_196,plain,
    ( ~ v1_funct_2(sK5,X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(k1_funct_1(sK5,X2),X1)
    | ~ v1_funct_1(sK5)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_195])).

cnf(c_21,negated_conjecture,
    ( v1_funct_1(sK5) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_200,plain,
    ( r2_hidden(k1_funct_1(sK5,X2),X1)
    | ~ r2_hidden(X2,X0)
    | ~ v1_funct_2(sK5,X0,X1)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_196,c_21])).

cnf(c_201,plain,
    ( ~ v1_funct_2(sK5,X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(k1_funct_1(sK5,X2),X1)
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
    | k1_xboole_0 = X1 ),
    inference(renaming,[status(thm)],[c_200])).

cnf(c_228,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(k1_funct_1(sK5,X0),X2)
    | k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) != X2
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
    | sK2 != X1
    | sK5 != sK5
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_201])).

cnf(c_229,plain,
    ( ~ r2_hidden(X0,sK2)
    | r2_hidden(k1_funct_1(sK5,X0),k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))
    | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)))
    | k1_xboole_0 = k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) ),
    inference(unflattening,[status(thm)],[c_228])).

cnf(c_941,plain,
    ( ~ r2_hidden(X0,sK2)
    | r2_hidden(k1_funct_1(sK5,X0),k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))
    | k1_xboole_0 = k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) ),
    inference(equality_resolution_simp,[status(thm)],[c_229])).

cnf(c_1937,plain,
    ( k1_xboole_0 = k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)
    | r2_hidden(X0,sK2) != iProver_top
    | r2_hidden(k1_funct_1(sK5,X0),k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_941])).

cnf(c_15,plain,
    ( sP0(X0,X1,X2,X3,k6_enumset1(X3,X3,X3,X3,X3,X2,X1,X0)) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_1939,plain,
    ( sP0(X0,X1,X2,X3,k6_enumset1(X3,X3,X3,X3,X3,X2,X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_13,plain,
    ( ~ sP0(X0,X1,X2,X3,X4)
    | ~ r2_hidden(X5,X4)
    | X5 = X3
    | X5 = X2
    | X5 = X1
    | X5 = X0 ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1941,plain,
    ( X0 = X1
    | X0 = X2
    | X0 = X3
    | X0 = X4
    | sP0(X4,X3,X2,X1,X5) != iProver_top
    | r2_hidden(X0,X5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3074,plain,
    ( X0 = X1
    | X2 = X1
    | X3 = X1
    | X4 = X1
    | r2_hidden(X1,k6_enumset1(X0,X0,X0,X0,X0,X2,X3,X4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1939,c_1941])).

cnf(c_3165,plain,
    ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = k1_xboole_0
    | k1_funct_1(sK5,X0) = sK3
    | r2_hidden(X0,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1937,c_3074])).

cnf(c_2,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_0,plain,
    ( k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_3,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f75])).

cnf(c_2033,plain,
    ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_3,c_0])).

cnf(c_2036,plain,
    ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2,c_0,c_2033])).

cnf(c_2044,plain,
    ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_2036])).

cnf(c_3266,plain,
    ( k1_funct_1(sK5,X0) = sK3
    | r2_hidden(X0,sK2) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3165,c_2044])).

cnf(c_3275,plain,
    ( k1_funct_1(sK5,sK4) = sK3 ),
    inference(superposition,[status(thm)],[c_1938,c_3266])).

cnf(c_17,negated_conjecture,
    ( k1_funct_1(sK5,sK4) != sK3 ),
    inference(cnf_transformation,[],[f63])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3275,c_17])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n004.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 09:21:38 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.90/1.04  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.90/1.04  
% 1.90/1.04  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.90/1.04  
% 1.90/1.04  ------  iProver source info
% 1.90/1.04  
% 1.90/1.04  git: date: 2020-06-30 10:37:57 +0100
% 1.90/1.04  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.90/1.04  git: non_committed_changes: false
% 1.90/1.04  git: last_make_outside_of_git: false
% 1.90/1.04  
% 1.90/1.04  ------ 
% 1.90/1.04  
% 1.90/1.04  ------ Input Options
% 1.90/1.04  
% 1.90/1.04  --out_options                           all
% 1.90/1.04  --tptp_safe_out                         true
% 1.90/1.04  --problem_path                          ""
% 1.90/1.04  --include_path                          ""
% 1.90/1.04  --clausifier                            res/vclausify_rel
% 1.90/1.04  --clausifier_options                    --mode clausify
% 1.90/1.04  --stdin                                 false
% 1.90/1.04  --stats_out                             all
% 1.90/1.04  
% 1.90/1.04  ------ General Options
% 1.90/1.04  
% 1.90/1.04  --fof                                   false
% 1.90/1.04  --time_out_real                         305.
% 1.90/1.04  --time_out_virtual                      -1.
% 1.90/1.04  --symbol_type_check                     false
% 1.90/1.04  --clausify_out                          false
% 1.90/1.04  --sig_cnt_out                           false
% 1.90/1.04  --trig_cnt_out                          false
% 1.90/1.04  --trig_cnt_out_tolerance                1.
% 1.90/1.04  --trig_cnt_out_sk_spl                   false
% 1.90/1.04  --abstr_cl_out                          false
% 1.90/1.04  
% 1.90/1.04  ------ Global Options
% 1.90/1.04  
% 1.90/1.04  --schedule                              default
% 1.90/1.04  --add_important_lit                     false
% 1.90/1.04  --prop_solver_per_cl                    1000
% 1.90/1.04  --min_unsat_core                        false
% 1.90/1.04  --soft_assumptions                      false
% 1.90/1.04  --soft_lemma_size                       3
% 1.90/1.04  --prop_impl_unit_size                   0
% 1.90/1.04  --prop_impl_unit                        []
% 1.90/1.04  --share_sel_clauses                     true
% 1.90/1.04  --reset_solvers                         false
% 1.90/1.04  --bc_imp_inh                            [conj_cone]
% 1.90/1.04  --conj_cone_tolerance                   3.
% 1.90/1.04  --extra_neg_conj                        none
% 1.90/1.04  --large_theory_mode                     true
% 1.90/1.04  --prolific_symb_bound                   200
% 1.90/1.04  --lt_threshold                          2000
% 1.90/1.04  --clause_weak_htbl                      true
% 1.90/1.04  --gc_record_bc_elim                     false
% 1.90/1.04  
% 1.90/1.04  ------ Preprocessing Options
% 1.90/1.04  
% 1.90/1.04  --preprocessing_flag                    true
% 1.90/1.04  --time_out_prep_mult                    0.1
% 1.90/1.04  --splitting_mode                        input
% 1.90/1.04  --splitting_grd                         true
% 1.90/1.04  --splitting_cvd                         false
% 1.90/1.04  --splitting_cvd_svl                     false
% 1.90/1.04  --splitting_nvd                         32
% 1.90/1.04  --sub_typing                            true
% 1.90/1.04  --prep_gs_sim                           true
% 1.90/1.04  --prep_unflatten                        true
% 1.90/1.04  --prep_res_sim                          true
% 1.90/1.04  --prep_upred                            true
% 1.90/1.04  --prep_sem_filter                       exhaustive
% 1.90/1.04  --prep_sem_filter_out                   false
% 1.90/1.04  --pred_elim                             true
% 1.90/1.04  --res_sim_input                         true
% 1.90/1.04  --eq_ax_congr_red                       true
% 1.90/1.04  --pure_diseq_elim                       true
% 1.90/1.04  --brand_transform                       false
% 1.90/1.04  --non_eq_to_eq                          false
% 1.90/1.04  --prep_def_merge                        true
% 1.90/1.04  --prep_def_merge_prop_impl              false
% 1.90/1.04  --prep_def_merge_mbd                    true
% 1.90/1.04  --prep_def_merge_tr_red                 false
% 1.90/1.04  --prep_def_merge_tr_cl                  false
% 1.90/1.04  --smt_preprocessing                     true
% 1.90/1.04  --smt_ac_axioms                         fast
% 1.90/1.04  --preprocessed_out                      false
% 1.90/1.04  --preprocessed_stats                    false
% 1.90/1.04  
% 1.90/1.04  ------ Abstraction refinement Options
% 1.90/1.04  
% 1.90/1.04  --abstr_ref                             []
% 1.90/1.04  --abstr_ref_prep                        false
% 1.90/1.04  --abstr_ref_until_sat                   false
% 1.90/1.04  --abstr_ref_sig_restrict                funpre
% 1.90/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 1.90/1.04  --abstr_ref_under                       []
% 1.90/1.04  
% 1.90/1.04  ------ SAT Options
% 1.90/1.04  
% 1.90/1.04  --sat_mode                              false
% 1.90/1.04  --sat_fm_restart_options                ""
% 1.90/1.04  --sat_gr_def                            false
% 1.90/1.04  --sat_epr_types                         true
% 1.90/1.04  --sat_non_cyclic_types                  false
% 1.90/1.04  --sat_finite_models                     false
% 1.90/1.04  --sat_fm_lemmas                         false
% 1.90/1.04  --sat_fm_prep                           false
% 1.90/1.04  --sat_fm_uc_incr                        true
% 1.90/1.04  --sat_out_model                         small
% 1.90/1.04  --sat_out_clauses                       false
% 1.90/1.04  
% 1.90/1.04  ------ QBF Options
% 1.90/1.04  
% 1.90/1.04  --qbf_mode                              false
% 1.90/1.04  --qbf_elim_univ                         false
% 1.90/1.04  --qbf_dom_inst                          none
% 1.90/1.04  --qbf_dom_pre_inst                      false
% 1.90/1.04  --qbf_sk_in                             false
% 1.90/1.04  --qbf_pred_elim                         true
% 1.90/1.04  --qbf_split                             512
% 1.90/1.04  
% 1.90/1.04  ------ BMC1 Options
% 1.90/1.04  
% 1.90/1.04  --bmc1_incremental                      false
% 1.90/1.04  --bmc1_axioms                           reachable_all
% 1.90/1.04  --bmc1_min_bound                        0
% 1.90/1.04  --bmc1_max_bound                        -1
% 1.90/1.04  --bmc1_max_bound_default                -1
% 1.90/1.04  --bmc1_symbol_reachability              true
% 1.90/1.04  --bmc1_property_lemmas                  false
% 1.90/1.04  --bmc1_k_induction                      false
% 1.90/1.04  --bmc1_non_equiv_states                 false
% 1.90/1.04  --bmc1_deadlock                         false
% 1.90/1.04  --bmc1_ucm                              false
% 1.90/1.04  --bmc1_add_unsat_core                   none
% 1.90/1.04  --bmc1_unsat_core_children              false
% 1.90/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 1.90/1.04  --bmc1_out_stat                         full
% 1.90/1.04  --bmc1_ground_init                      false
% 1.90/1.04  --bmc1_pre_inst_next_state              false
% 1.90/1.04  --bmc1_pre_inst_state                   false
% 1.90/1.04  --bmc1_pre_inst_reach_state             false
% 1.90/1.04  --bmc1_out_unsat_core                   false
% 1.90/1.04  --bmc1_aig_witness_out                  false
% 1.90/1.04  --bmc1_verbose                          false
% 1.90/1.04  --bmc1_dump_clauses_tptp                false
% 1.90/1.04  --bmc1_dump_unsat_core_tptp             false
% 1.90/1.04  --bmc1_dump_file                        -
% 1.90/1.04  --bmc1_ucm_expand_uc_limit              128
% 1.90/1.04  --bmc1_ucm_n_expand_iterations          6
% 1.90/1.04  --bmc1_ucm_extend_mode                  1
% 1.90/1.04  --bmc1_ucm_init_mode                    2
% 1.90/1.04  --bmc1_ucm_cone_mode                    none
% 1.90/1.04  --bmc1_ucm_reduced_relation_type        0
% 1.90/1.04  --bmc1_ucm_relax_model                  4
% 1.90/1.04  --bmc1_ucm_full_tr_after_sat            true
% 1.90/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 1.90/1.04  --bmc1_ucm_layered_model                none
% 1.90/1.04  --bmc1_ucm_max_lemma_size               10
% 1.90/1.04  
% 1.90/1.04  ------ AIG Options
% 1.90/1.04  
% 1.90/1.04  --aig_mode                              false
% 1.90/1.04  
% 1.90/1.04  ------ Instantiation Options
% 1.90/1.04  
% 1.90/1.04  --instantiation_flag                    true
% 1.90/1.04  --inst_sos_flag                         false
% 1.90/1.04  --inst_sos_phase                        true
% 1.90/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.90/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.90/1.04  --inst_lit_sel_side                     num_symb
% 1.90/1.04  --inst_solver_per_active                1400
% 1.90/1.04  --inst_solver_calls_frac                1.
% 1.90/1.04  --inst_passive_queue_type               priority_queues
% 1.90/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.90/1.04  --inst_passive_queues_freq              [25;2]
% 1.90/1.04  --inst_dismatching                      true
% 1.90/1.04  --inst_eager_unprocessed_to_passive     true
% 1.90/1.04  --inst_prop_sim_given                   true
% 1.90/1.04  --inst_prop_sim_new                     false
% 1.90/1.04  --inst_subs_new                         false
% 1.90/1.04  --inst_eq_res_simp                      false
% 1.90/1.04  --inst_subs_given                       false
% 1.90/1.04  --inst_orphan_elimination               true
% 1.90/1.04  --inst_learning_loop_flag               true
% 1.90/1.04  --inst_learning_start                   3000
% 1.90/1.04  --inst_learning_factor                  2
% 1.90/1.04  --inst_start_prop_sim_after_learn       3
% 1.90/1.04  --inst_sel_renew                        solver
% 1.90/1.04  --inst_lit_activity_flag                true
% 1.90/1.04  --inst_restr_to_given                   false
% 1.90/1.04  --inst_activity_threshold               500
% 1.90/1.04  --inst_out_proof                        true
% 1.90/1.04  
% 1.90/1.04  ------ Resolution Options
% 1.90/1.04  
% 1.90/1.04  --resolution_flag                       true
% 1.90/1.04  --res_lit_sel                           adaptive
% 1.90/1.04  --res_lit_sel_side                      none
% 1.90/1.04  --res_ordering                          kbo
% 1.90/1.04  --res_to_prop_solver                    active
% 1.90/1.04  --res_prop_simpl_new                    false
% 1.90/1.04  --res_prop_simpl_given                  true
% 1.90/1.04  --res_passive_queue_type                priority_queues
% 1.90/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.90/1.04  --res_passive_queues_freq               [15;5]
% 1.90/1.04  --res_forward_subs                      full
% 1.90/1.04  --res_backward_subs                     full
% 1.90/1.04  --res_forward_subs_resolution           true
% 1.90/1.04  --res_backward_subs_resolution          true
% 1.90/1.04  --res_orphan_elimination                true
% 1.90/1.04  --res_time_limit                        2.
% 1.90/1.04  --res_out_proof                         true
% 1.90/1.04  
% 1.90/1.04  ------ Superposition Options
% 1.90/1.04  
% 1.90/1.04  --superposition_flag                    true
% 1.90/1.04  --sup_passive_queue_type                priority_queues
% 1.90/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.90/1.04  --sup_passive_queues_freq               [8;1;4]
% 1.90/1.04  --demod_completeness_check              fast
% 1.90/1.04  --demod_use_ground                      true
% 1.90/1.04  --sup_to_prop_solver                    passive
% 1.90/1.04  --sup_prop_simpl_new                    true
% 1.90/1.04  --sup_prop_simpl_given                  true
% 1.90/1.04  --sup_fun_splitting                     false
% 1.90/1.04  --sup_smt_interval                      50000
% 1.90/1.04  
% 1.90/1.04  ------ Superposition Simplification Setup
% 1.90/1.04  
% 1.90/1.04  --sup_indices_passive                   []
% 1.90/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 1.90/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/1.04  --sup_full_bw                           [BwDemod]
% 1.90/1.04  --sup_immed_triv                        [TrivRules]
% 1.90/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.90/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/1.04  --sup_immed_bw_main                     []
% 1.90/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.90/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 1.90/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.90/1.04  
% 1.90/1.04  ------ Combination Options
% 1.90/1.04  
% 1.90/1.04  --comb_res_mult                         3
% 1.90/1.04  --comb_sup_mult                         2
% 1.90/1.04  --comb_inst_mult                        10
% 1.90/1.04  
% 1.90/1.04  ------ Debug Options
% 1.90/1.04  
% 1.90/1.04  --dbg_backtrace                         false
% 1.90/1.04  --dbg_dump_prop_clauses                 false
% 1.90/1.04  --dbg_dump_prop_clauses_file            -
% 1.90/1.04  --dbg_out_stat                          false
% 1.90/1.04  ------ Parsing...
% 1.90/1.04  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.90/1.04  
% 1.90/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.90/1.04  
% 1.90/1.04  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.90/1.04  
% 1.90/1.04  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.90/1.04  ------ Proving...
% 1.90/1.04  ------ Problem Properties 
% 1.90/1.04  
% 1.90/1.04  
% 1.90/1.04  clauses                                 19
% 1.90/1.04  conjectures                             2
% 1.90/1.04  EPR                                     6
% 1.90/1.04  Horn                                    15
% 1.90/1.04  unary                                   6
% 1.90/1.04  binary                                  6
% 1.90/1.04  lits                                    45
% 1.90/1.04  lits eq                                 20
% 1.90/1.04  fd_pure                                 0
% 1.90/1.04  fd_pseudo                               0
% 1.90/1.04  fd_cond                                 0
% 1.90/1.04  fd_pseudo_cond                          3
% 1.90/1.04  AC symbols                              0
% 1.90/1.04  
% 1.90/1.04  ------ Schedule dynamic 5 is on 
% 1.90/1.04  
% 1.90/1.04  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.90/1.04  
% 1.90/1.04  
% 1.90/1.04  ------ 
% 1.90/1.04  Current options:
% 1.90/1.04  ------ 
% 1.90/1.04  
% 1.90/1.04  ------ Input Options
% 1.90/1.04  
% 1.90/1.04  --out_options                           all
% 1.90/1.04  --tptp_safe_out                         true
% 1.90/1.04  --problem_path                          ""
% 1.90/1.04  --include_path                          ""
% 1.90/1.04  --clausifier                            res/vclausify_rel
% 1.90/1.04  --clausifier_options                    --mode clausify
% 1.90/1.04  --stdin                                 false
% 1.90/1.04  --stats_out                             all
% 1.90/1.04  
% 1.90/1.04  ------ General Options
% 1.90/1.04  
% 1.90/1.04  --fof                                   false
% 1.90/1.04  --time_out_real                         305.
% 1.90/1.04  --time_out_virtual                      -1.
% 1.90/1.04  --symbol_type_check                     false
% 1.90/1.04  --clausify_out                          false
% 1.90/1.04  --sig_cnt_out                           false
% 1.90/1.04  --trig_cnt_out                          false
% 1.90/1.04  --trig_cnt_out_tolerance                1.
% 1.90/1.04  --trig_cnt_out_sk_spl                   false
% 1.90/1.04  --abstr_cl_out                          false
% 1.90/1.04  
% 1.90/1.04  ------ Global Options
% 1.90/1.04  
% 1.90/1.04  --schedule                              default
% 1.90/1.04  --add_important_lit                     false
% 1.90/1.04  --prop_solver_per_cl                    1000
% 1.90/1.04  --min_unsat_core                        false
% 1.90/1.04  --soft_assumptions                      false
% 1.90/1.04  --soft_lemma_size                       3
% 1.90/1.04  --prop_impl_unit_size                   0
% 1.90/1.04  --prop_impl_unit                        []
% 1.90/1.04  --share_sel_clauses                     true
% 1.90/1.04  --reset_solvers                         false
% 1.90/1.04  --bc_imp_inh                            [conj_cone]
% 1.90/1.04  --conj_cone_tolerance                   3.
% 1.90/1.04  --extra_neg_conj                        none
% 1.90/1.04  --large_theory_mode                     true
% 1.90/1.04  --prolific_symb_bound                   200
% 1.90/1.04  --lt_threshold                          2000
% 1.90/1.04  --clause_weak_htbl                      true
% 1.90/1.04  --gc_record_bc_elim                     false
% 1.90/1.04  
% 1.90/1.04  ------ Preprocessing Options
% 1.90/1.04  
% 1.90/1.04  --preprocessing_flag                    true
% 1.90/1.04  --time_out_prep_mult                    0.1
% 1.90/1.04  --splitting_mode                        input
% 1.90/1.04  --splitting_grd                         true
% 1.90/1.04  --splitting_cvd                         false
% 1.90/1.04  --splitting_cvd_svl                     false
% 1.90/1.04  --splitting_nvd                         32
% 1.90/1.04  --sub_typing                            true
% 1.90/1.04  --prep_gs_sim                           true
% 1.90/1.04  --prep_unflatten                        true
% 1.90/1.04  --prep_res_sim                          true
% 1.90/1.04  --prep_upred                            true
% 1.90/1.04  --prep_sem_filter                       exhaustive
% 1.90/1.04  --prep_sem_filter_out                   false
% 1.90/1.04  --pred_elim                             true
% 1.90/1.04  --res_sim_input                         true
% 1.90/1.04  --eq_ax_congr_red                       true
% 1.90/1.04  --pure_diseq_elim                       true
% 1.90/1.04  --brand_transform                       false
% 1.90/1.04  --non_eq_to_eq                          false
% 1.90/1.04  --prep_def_merge                        true
% 1.90/1.04  --prep_def_merge_prop_impl              false
% 1.90/1.04  --prep_def_merge_mbd                    true
% 1.90/1.04  --prep_def_merge_tr_red                 false
% 1.90/1.04  --prep_def_merge_tr_cl                  false
% 1.90/1.04  --smt_preprocessing                     true
% 1.90/1.04  --smt_ac_axioms                         fast
% 1.90/1.04  --preprocessed_out                      false
% 1.90/1.04  --preprocessed_stats                    false
% 1.90/1.04  
% 1.90/1.04  ------ Abstraction refinement Options
% 1.90/1.04  
% 1.90/1.04  --abstr_ref                             []
% 1.90/1.04  --abstr_ref_prep                        false
% 1.90/1.04  --abstr_ref_until_sat                   false
% 1.90/1.04  --abstr_ref_sig_restrict                funpre
% 1.90/1.04  --abstr_ref_af_restrict_to_split_sk     false
% 1.90/1.04  --abstr_ref_under                       []
% 1.90/1.04  
% 1.90/1.04  ------ SAT Options
% 1.90/1.04  
% 1.90/1.04  --sat_mode                              false
% 1.90/1.04  --sat_fm_restart_options                ""
% 1.90/1.04  --sat_gr_def                            false
% 1.90/1.04  --sat_epr_types                         true
% 1.90/1.04  --sat_non_cyclic_types                  false
% 1.90/1.04  --sat_finite_models                     false
% 1.90/1.04  --sat_fm_lemmas                         false
% 1.90/1.04  --sat_fm_prep                           false
% 1.90/1.04  --sat_fm_uc_incr                        true
% 1.90/1.04  --sat_out_model                         small
% 1.90/1.04  --sat_out_clauses                       false
% 1.90/1.04  
% 1.90/1.04  ------ QBF Options
% 1.90/1.04  
% 1.90/1.04  --qbf_mode                              false
% 1.90/1.04  --qbf_elim_univ                         false
% 1.90/1.04  --qbf_dom_inst                          none
% 1.90/1.04  --qbf_dom_pre_inst                      false
% 1.90/1.04  --qbf_sk_in                             false
% 1.90/1.04  --qbf_pred_elim                         true
% 1.90/1.04  --qbf_split                             512
% 1.90/1.04  
% 1.90/1.04  ------ BMC1 Options
% 1.90/1.04  
% 1.90/1.04  --bmc1_incremental                      false
% 1.90/1.04  --bmc1_axioms                           reachable_all
% 1.90/1.04  --bmc1_min_bound                        0
% 1.90/1.04  --bmc1_max_bound                        -1
% 1.90/1.04  --bmc1_max_bound_default                -1
% 1.90/1.04  --bmc1_symbol_reachability              true
% 1.90/1.04  --bmc1_property_lemmas                  false
% 1.90/1.04  --bmc1_k_induction                      false
% 1.90/1.04  --bmc1_non_equiv_states                 false
% 1.90/1.04  --bmc1_deadlock                         false
% 1.90/1.04  --bmc1_ucm                              false
% 1.90/1.04  --bmc1_add_unsat_core                   none
% 1.90/1.04  --bmc1_unsat_core_children              false
% 1.90/1.04  --bmc1_unsat_core_extrapolate_axioms    false
% 1.90/1.04  --bmc1_out_stat                         full
% 1.90/1.04  --bmc1_ground_init                      false
% 1.90/1.04  --bmc1_pre_inst_next_state              false
% 1.90/1.04  --bmc1_pre_inst_state                   false
% 1.90/1.04  --bmc1_pre_inst_reach_state             false
% 1.90/1.04  --bmc1_out_unsat_core                   false
% 1.90/1.04  --bmc1_aig_witness_out                  false
% 1.90/1.04  --bmc1_verbose                          false
% 1.90/1.04  --bmc1_dump_clauses_tptp                false
% 1.90/1.04  --bmc1_dump_unsat_core_tptp             false
% 1.90/1.04  --bmc1_dump_file                        -
% 1.90/1.04  --bmc1_ucm_expand_uc_limit              128
% 1.90/1.04  --bmc1_ucm_n_expand_iterations          6
% 1.90/1.04  --bmc1_ucm_extend_mode                  1
% 1.90/1.04  --bmc1_ucm_init_mode                    2
% 1.90/1.04  --bmc1_ucm_cone_mode                    none
% 1.90/1.04  --bmc1_ucm_reduced_relation_type        0
% 1.90/1.04  --bmc1_ucm_relax_model                  4
% 1.90/1.04  --bmc1_ucm_full_tr_after_sat            true
% 1.90/1.04  --bmc1_ucm_expand_neg_assumptions       false
% 1.90/1.04  --bmc1_ucm_layered_model                none
% 1.90/1.04  --bmc1_ucm_max_lemma_size               10
% 1.90/1.04  
% 1.90/1.04  ------ AIG Options
% 1.90/1.04  
% 1.90/1.04  --aig_mode                              false
% 1.90/1.04  
% 1.90/1.04  ------ Instantiation Options
% 1.90/1.04  
% 1.90/1.04  --instantiation_flag                    true
% 1.90/1.04  --inst_sos_flag                         false
% 1.90/1.04  --inst_sos_phase                        true
% 1.90/1.04  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.90/1.04  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.90/1.04  --inst_lit_sel_side                     none
% 1.90/1.04  --inst_solver_per_active                1400
% 1.90/1.04  --inst_solver_calls_frac                1.
% 1.90/1.04  --inst_passive_queue_type               priority_queues
% 1.90/1.04  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.90/1.04  --inst_passive_queues_freq              [25;2]
% 1.90/1.04  --inst_dismatching                      true
% 1.90/1.04  --inst_eager_unprocessed_to_passive     true
% 1.90/1.04  --inst_prop_sim_given                   true
% 1.90/1.04  --inst_prop_sim_new                     false
% 1.90/1.04  --inst_subs_new                         false
% 1.90/1.04  --inst_eq_res_simp                      false
% 1.90/1.04  --inst_subs_given                       false
% 1.90/1.04  --inst_orphan_elimination               true
% 1.90/1.04  --inst_learning_loop_flag               true
% 1.90/1.04  --inst_learning_start                   3000
% 1.90/1.04  --inst_learning_factor                  2
% 1.90/1.04  --inst_start_prop_sim_after_learn       3
% 1.90/1.04  --inst_sel_renew                        solver
% 1.90/1.04  --inst_lit_activity_flag                true
% 1.90/1.04  --inst_restr_to_given                   false
% 1.90/1.04  --inst_activity_threshold               500
% 1.90/1.04  --inst_out_proof                        true
% 1.90/1.04  
% 1.90/1.04  ------ Resolution Options
% 1.90/1.04  
% 1.90/1.04  --resolution_flag                       false
% 1.90/1.04  --res_lit_sel                           adaptive
% 1.90/1.04  --res_lit_sel_side                      none
% 1.90/1.04  --res_ordering                          kbo
% 1.90/1.04  --res_to_prop_solver                    active
% 1.90/1.04  --res_prop_simpl_new                    false
% 1.90/1.04  --res_prop_simpl_given                  true
% 1.90/1.04  --res_passive_queue_type                priority_queues
% 1.90/1.04  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.90/1.04  --res_passive_queues_freq               [15;5]
% 1.90/1.04  --res_forward_subs                      full
% 1.90/1.04  --res_backward_subs                     full
% 1.90/1.04  --res_forward_subs_resolution           true
% 1.90/1.04  --res_backward_subs_resolution          true
% 1.90/1.04  --res_orphan_elimination                true
% 1.90/1.04  --res_time_limit                        2.
% 1.90/1.04  --res_out_proof                         true
% 1.90/1.04  
% 1.90/1.04  ------ Superposition Options
% 1.90/1.04  
% 1.90/1.04  --superposition_flag                    true
% 1.90/1.04  --sup_passive_queue_type                priority_queues
% 1.90/1.04  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.90/1.04  --sup_passive_queues_freq               [8;1;4]
% 1.90/1.04  --demod_completeness_check              fast
% 1.90/1.04  --demod_use_ground                      true
% 1.90/1.04  --sup_to_prop_solver                    passive
% 1.90/1.04  --sup_prop_simpl_new                    true
% 1.90/1.04  --sup_prop_simpl_given                  true
% 1.90/1.04  --sup_fun_splitting                     false
% 1.90/1.04  --sup_smt_interval                      50000
% 1.90/1.04  
% 1.90/1.04  ------ Superposition Simplification Setup
% 1.90/1.04  
% 1.90/1.04  --sup_indices_passive                   []
% 1.90/1.04  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/1.04  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/1.04  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.90/1.04  --sup_full_triv                         [TrivRules;PropSubs]
% 1.90/1.04  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/1.04  --sup_full_bw                           [BwDemod]
% 1.90/1.04  --sup_immed_triv                        [TrivRules]
% 1.90/1.04  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.90/1.04  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/1.04  --sup_immed_bw_main                     []
% 1.90/1.04  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.90/1.04  --sup_input_triv                        [Unflattening;TrivRules]
% 1.90/1.04  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.90/1.04  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.90/1.04  
% 1.90/1.04  ------ Combination Options
% 1.90/1.04  
% 1.90/1.04  --comb_res_mult                         3
% 1.90/1.04  --comb_sup_mult                         2
% 1.90/1.04  --comb_inst_mult                        10
% 1.90/1.04  
% 1.90/1.04  ------ Debug Options
% 1.90/1.04  
% 1.90/1.04  --dbg_backtrace                         false
% 1.90/1.04  --dbg_dump_prop_clauses                 false
% 1.90/1.04  --dbg_dump_prop_clauses_file            -
% 1.90/1.04  --dbg_out_stat                          false
% 1.90/1.04  
% 1.90/1.04  
% 1.90/1.04  
% 1.90/1.04  
% 1.90/1.04  ------ Proving...
% 1.90/1.04  
% 1.90/1.04  
% 1.90/1.04  % SZS status Theorem for theBenchmark.p
% 1.90/1.04  
% 1.90/1.04  % SZS output start CNFRefutation for theBenchmark.p
% 1.90/1.04  
% 1.90/1.04  fof(f15,conjecture,(
% 1.90/1.04    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f16,negated_conjecture,(
% 1.90/1.05    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => k1_funct_1(X3,X2) = X1))),
% 1.90/1.05    inference(negated_conjecture,[],[f15])).
% 1.90/1.05  
% 1.90/1.05  fof(f20,plain,(
% 1.90/1.05    ? [X0,X1,X2,X3] : ((k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)))),
% 1.90/1.05    inference(ennf_transformation,[],[f16])).
% 1.90/1.05  
% 1.90/1.05  fof(f21,plain,(
% 1.90/1.05    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3))),
% 1.90/1.05    inference(flattening,[],[f20])).
% 1.90/1.05  
% 1.90/1.05  fof(f31,plain,(
% 1.90/1.05    ? [X0,X1,X2,X3] : (k1_funct_1(X3,X2) != X1 & r2_hidden(X2,X0) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,k1_tarski(X1)))) & v1_funct_2(X3,X0,k1_tarski(X1)) & v1_funct_1(X3)) => (k1_funct_1(sK5,sK4) != sK3 & r2_hidden(sK4,sK2) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3)))) & v1_funct_2(sK5,sK2,k1_tarski(sK3)) & v1_funct_1(sK5))),
% 1.90/1.05    introduced(choice_axiom,[])).
% 1.90/1.05  
% 1.90/1.05  fof(f32,plain,(
% 1.90/1.05    k1_funct_1(sK5,sK4) != sK3 & r2_hidden(sK4,sK2) & m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3)))) & v1_funct_2(sK5,sK2,k1_tarski(sK3)) & v1_funct_1(sK5)),
% 1.90/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4,sK5])],[f21,f31])).
% 1.90/1.05  
% 1.90/1.05  fof(f62,plain,(
% 1.90/1.05    r2_hidden(sK4,sK2)),
% 1.90/1.05    inference(cnf_transformation,[],[f32])).
% 1.90/1.05  
% 1.90/1.05  fof(f60,plain,(
% 1.90/1.05    v1_funct_2(sK5,sK2,k1_tarski(sK3))),
% 1.90/1.05    inference(cnf_transformation,[],[f32])).
% 1.90/1.05  
% 1.90/1.05  fof(f2,axiom,(
% 1.90/1.05    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f34,plain,(
% 1.90/1.05    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f2])).
% 1.90/1.05  
% 1.90/1.05  fof(f3,axiom,(
% 1.90/1.05    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f35,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f3])).
% 1.90/1.05  
% 1.90/1.05  fof(f4,axiom,(
% 1.90/1.05    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f36,plain,(
% 1.90/1.05    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f4])).
% 1.90/1.05  
% 1.90/1.05  fof(f5,axiom,(
% 1.90/1.05    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f37,plain,(
% 1.90/1.05    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f5])).
% 1.90/1.05  
% 1.90/1.05  fof(f6,axiom,(
% 1.90/1.05    ! [X0,X1,X2,X3,X4] : k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f38,plain,(
% 1.90/1.05    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k4_enumset1(X0,X0,X1,X2,X3,X4)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f6])).
% 1.90/1.05  
% 1.90/1.05  fof(f7,axiom,(
% 1.90/1.05    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f39,plain,(
% 1.90/1.05    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f7])).
% 1.90/1.05  
% 1.90/1.05  fof(f8,axiom,(
% 1.90/1.05    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f40,plain,(
% 1.90/1.05    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f8])).
% 1.90/1.05  
% 1.90/1.05  fof(f64,plain,(
% 1.90/1.05    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k6_enumset1(X0,X0,X0,X1,X2,X3,X4,X5)) )),
% 1.90/1.05    inference(definition_unfolding,[],[f39,f40])).
% 1.90/1.05  
% 1.90/1.05  fof(f65,plain,(
% 1.90/1.05    ( ! [X4,X2,X0,X3,X1] : (k3_enumset1(X0,X1,X2,X3,X4) = k6_enumset1(X0,X0,X0,X0,X1,X2,X3,X4)) )),
% 1.90/1.05    inference(definition_unfolding,[],[f38,f64])).
% 1.90/1.05  
% 1.90/1.05  fof(f66,plain,(
% 1.90/1.05    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3)) )),
% 1.90/1.05    inference(definition_unfolding,[],[f37,f65])).
% 1.90/1.05  
% 1.90/1.05  fof(f67,plain,(
% 1.90/1.05    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k6_enumset1(X0,X0,X0,X0,X0,X0,X1,X2)) )),
% 1.90/1.05    inference(definition_unfolding,[],[f36,f66])).
% 1.90/1.05  
% 1.90/1.05  fof(f68,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k2_tarski(X0,X1) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)) )),
% 1.90/1.05    inference(definition_unfolding,[],[f35,f67])).
% 1.90/1.05  
% 1.90/1.05  fof(f71,plain,(
% 1.90/1.05    ( ! [X0] : (k1_tarski(X0) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 1.90/1.05    inference(definition_unfolding,[],[f34,f68])).
% 1.90/1.05  
% 1.90/1.05  fof(f79,plain,(
% 1.90/1.05    v1_funct_2(sK5,sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))),
% 1.90/1.05    inference(definition_unfolding,[],[f60,f71])).
% 1.90/1.05  
% 1.90/1.05  fof(f14,axiom,(
% 1.90/1.05    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (r2_hidden(X2,X0) => (r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1)))),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f18,plain,(
% 1.90/1.05    ! [X0,X1,X2,X3] : (((r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1) | ~r2_hidden(X2,X0)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 1.90/1.05    inference(ennf_transformation,[],[f14])).
% 1.90/1.05  
% 1.90/1.05  fof(f19,plain,(
% 1.90/1.05    ! [X0,X1,X2,X3] : (r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 1.90/1.05    inference(flattening,[],[f18])).
% 1.90/1.05  
% 1.90/1.05  fof(f58,plain,(
% 1.90/1.05    ( ! [X2,X0,X3,X1] : (r2_hidden(k1_funct_1(X3,X2),X1) | k1_xboole_0 = X1 | ~r2_hidden(X2,X0) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f19])).
% 1.90/1.05  
% 1.90/1.05  fof(f61,plain,(
% 1.90/1.05    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k1_tarski(sK3))))),
% 1.90/1.05    inference(cnf_transformation,[],[f32])).
% 1.90/1.05  
% 1.90/1.05  fof(f78,plain,(
% 1.90/1.05    m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))))),
% 1.90/1.05    inference(definition_unfolding,[],[f61,f71])).
% 1.90/1.05  
% 1.90/1.05  fof(f59,plain,(
% 1.90/1.05    v1_funct_1(sK5)),
% 1.90/1.05    inference(cnf_transformation,[],[f32])).
% 1.90/1.05  
% 1.90/1.05  fof(f12,axiom,(
% 1.90/1.05    ! [X0,X1,X2,X3,X4] : (k2_enumset1(X0,X1,X2,X3) = X4 <=> ! [X5] : (r2_hidden(X5,X4) <=> ~(X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5)))),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f17,plain,(
% 1.90/1.05    ! [X0,X1,X2,X3,X4] : (k2_enumset1(X0,X1,X2,X3) = X4 <=> ! [X5] : (r2_hidden(X5,X4) <=> (X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5)))),
% 1.90/1.05    inference(ennf_transformation,[],[f12])).
% 1.90/1.05  
% 1.90/1.05  fof(f22,plain,(
% 1.90/1.05    ! [X3,X2,X1,X0,X4] : (sP0(X3,X2,X1,X0,X4) <=> ! [X5] : (r2_hidden(X5,X4) <=> (X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5)))),
% 1.90/1.05    introduced(predicate_definition_introduction,[new_symbols(naming,[sP0])])).
% 1.90/1.05  
% 1.90/1.05  fof(f23,plain,(
% 1.90/1.05    ! [X0,X1,X2,X3,X4] : (k2_enumset1(X0,X1,X2,X3) = X4 <=> sP0(X3,X2,X1,X0,X4))),
% 1.90/1.05    inference(definition_folding,[],[f17,f22])).
% 1.90/1.05  
% 1.90/1.05  fof(f30,plain,(
% 1.90/1.05    ! [X0,X1,X2,X3,X4] : ((k2_enumset1(X0,X1,X2,X3) = X4 | ~sP0(X3,X2,X1,X0,X4)) & (sP0(X3,X2,X1,X0,X4) | k2_enumset1(X0,X1,X2,X3) != X4))),
% 1.90/1.05    inference(nnf_transformation,[],[f23])).
% 1.90/1.05  
% 1.90/1.05  fof(f55,plain,(
% 1.90/1.05    ( ! [X4,X2,X0,X3,X1] : (sP0(X3,X2,X1,X0,X4) | k2_enumset1(X0,X1,X2,X3) != X4) )),
% 1.90/1.05    inference(cnf_transformation,[],[f30])).
% 1.90/1.05  
% 1.90/1.05  fof(f77,plain,(
% 1.90/1.05    ( ! [X4,X2,X0,X3,X1] : (sP0(X3,X2,X1,X0,X4) | k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3) != X4) )),
% 1.90/1.05    inference(definition_unfolding,[],[f55,f66])).
% 1.90/1.05  
% 1.90/1.05  fof(f85,plain,(
% 1.90/1.05    ( ! [X2,X0,X3,X1] : (sP0(X3,X2,X1,X0,k6_enumset1(X0,X0,X0,X0,X0,X1,X2,X3))) )),
% 1.90/1.05    inference(equality_resolution,[],[f77])).
% 1.90/1.05  
% 1.90/1.05  fof(f25,plain,(
% 1.90/1.05    ! [X3,X2,X1,X0,X4] : ((sP0(X3,X2,X1,X0,X4) | ? [X5] : (((X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5) | ~r2_hidden(X5,X4)) & ((X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5) | r2_hidden(X5,X4)))) & (! [X5] : ((r2_hidden(X5,X4) | (X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5)) & ((X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5) | ~r2_hidden(X5,X4))) | ~sP0(X3,X2,X1,X0,X4)))),
% 1.90/1.05    inference(nnf_transformation,[],[f22])).
% 1.90/1.05  
% 1.90/1.05  fof(f26,plain,(
% 1.90/1.05    ! [X3,X2,X1,X0,X4] : ((sP0(X3,X2,X1,X0,X4) | ? [X5] : (((X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5) | ~r2_hidden(X5,X4)) & (X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5 | r2_hidden(X5,X4)))) & (! [X5] : ((r2_hidden(X5,X4) | (X3 != X5 & X2 != X5 & X1 != X5 & X0 != X5)) & (X3 = X5 | X2 = X5 | X1 = X5 | X0 = X5 | ~r2_hidden(X5,X4))) | ~sP0(X3,X2,X1,X0,X4)))),
% 1.90/1.05    inference(flattening,[],[f25])).
% 1.90/1.05  
% 1.90/1.05  fof(f27,plain,(
% 1.90/1.05    ! [X0,X1,X2,X3,X4] : ((sP0(X0,X1,X2,X3,X4) | ? [X5] : (((X0 != X5 & X1 != X5 & X2 != X5 & X3 != X5) | ~r2_hidden(X5,X4)) & (X0 = X5 | X1 = X5 | X2 = X5 | X3 = X5 | r2_hidden(X5,X4)))) & (! [X6] : ((r2_hidden(X6,X4) | (X0 != X6 & X1 != X6 & X2 != X6 & X3 != X6)) & (X0 = X6 | X1 = X6 | X2 = X6 | X3 = X6 | ~r2_hidden(X6,X4))) | ~sP0(X0,X1,X2,X3,X4)))),
% 1.90/1.05    inference(rectify,[],[f26])).
% 1.90/1.05  
% 1.90/1.05  fof(f28,plain,(
% 1.90/1.05    ! [X4,X3,X2,X1,X0] : (? [X5] : (((X0 != X5 & X1 != X5 & X2 != X5 & X3 != X5) | ~r2_hidden(X5,X4)) & (X0 = X5 | X1 = X5 | X2 = X5 | X3 = X5 | r2_hidden(X5,X4))) => (((sK1(X0,X1,X2,X3,X4) != X0 & sK1(X0,X1,X2,X3,X4) != X1 & sK1(X0,X1,X2,X3,X4) != X2 & sK1(X0,X1,X2,X3,X4) != X3) | ~r2_hidden(sK1(X0,X1,X2,X3,X4),X4)) & (sK1(X0,X1,X2,X3,X4) = X0 | sK1(X0,X1,X2,X3,X4) = X1 | sK1(X0,X1,X2,X3,X4) = X2 | sK1(X0,X1,X2,X3,X4) = X3 | r2_hidden(sK1(X0,X1,X2,X3,X4),X4))))),
% 1.90/1.05    introduced(choice_axiom,[])).
% 1.90/1.05  
% 1.90/1.05  fof(f29,plain,(
% 1.90/1.05    ! [X0,X1,X2,X3,X4] : ((sP0(X0,X1,X2,X3,X4) | (((sK1(X0,X1,X2,X3,X4) != X0 & sK1(X0,X1,X2,X3,X4) != X1 & sK1(X0,X1,X2,X3,X4) != X2 & sK1(X0,X1,X2,X3,X4) != X3) | ~r2_hidden(sK1(X0,X1,X2,X3,X4),X4)) & (sK1(X0,X1,X2,X3,X4) = X0 | sK1(X0,X1,X2,X3,X4) = X1 | sK1(X0,X1,X2,X3,X4) = X2 | sK1(X0,X1,X2,X3,X4) = X3 | r2_hidden(sK1(X0,X1,X2,X3,X4),X4)))) & (! [X6] : ((r2_hidden(X6,X4) | (X0 != X6 & X1 != X6 & X2 != X6 & X3 != X6)) & (X0 = X6 | X1 = X6 | X2 = X6 | X3 = X6 | ~r2_hidden(X6,X4))) | ~sP0(X0,X1,X2,X3,X4)))),
% 1.90/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f27,f28])).
% 1.90/1.05  
% 1.90/1.05  fof(f45,plain,(
% 1.90/1.05    ( ! [X6,X4,X2,X0,X3,X1] : (X0 = X6 | X1 = X6 | X2 = X6 | X3 = X6 | ~r2_hidden(X6,X4) | ~sP0(X0,X1,X2,X3,X4)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f29])).
% 1.90/1.05  
% 1.90/1.05  fof(f10,axiom,(
% 1.90/1.05    ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) <=> X0 != X1)),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f24,plain,(
% 1.90/1.05    ! [X0,X1] : ((k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) = k1_tarski(X0) | X0 = X1) & (X0 != X1 | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0)))),
% 1.90/1.05    inference(nnf_transformation,[],[f10])).
% 1.90/1.05  
% 1.90/1.05  fof(f42,plain,(
% 1.90/1.05    ( ! [X0,X1] : (X0 != X1 | k4_xboole_0(k1_tarski(X0),k1_tarski(X1)) != k1_tarski(X0)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f24])).
% 1.90/1.05  
% 1.90/1.05  fof(f1,axiom,(
% 1.90/1.05    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f33,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.90/1.05    inference(cnf_transformation,[],[f1])).
% 1.90/1.05  
% 1.90/1.05  fof(f13,axiom,(
% 1.90/1.05    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f57,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 1.90/1.05    inference(cnf_transformation,[],[f13])).
% 1.90/1.05  
% 1.90/1.05  fof(f69,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) )),
% 1.90/1.05    inference(definition_unfolding,[],[f57,f68])).
% 1.90/1.05  
% 1.90/1.05  fof(f70,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) )),
% 1.90/1.05    inference(definition_unfolding,[],[f33,f69])).
% 1.90/1.05  
% 1.90/1.05  fof(f74,plain,(
% 1.90/1.05    ( ! [X0,X1] : (X0 != X1 | k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) )),
% 1.90/1.05    inference(definition_unfolding,[],[f42,f70,f71,f71,f71])).
% 1.90/1.05  
% 1.90/1.05  fof(f80,plain,(
% 1.90/1.05    ( ! [X1] : (k5_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k1_setfam_1(k6_enumset1(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))) != k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) )),
% 1.90/1.05    inference(equality_resolution,[],[f74])).
% 1.90/1.05  
% 1.90/1.05  fof(f9,axiom,(
% 1.90/1.05    ! [X0,X1] : k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_tarski(X0)),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f41,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k3_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_tarski(X0)) )),
% 1.90/1.05    inference(cnf_transformation,[],[f9])).
% 1.90/1.05  
% 1.90/1.05  fof(f72,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) = k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) )),
% 1.90/1.05    inference(definition_unfolding,[],[f41,f69,f71,f68,f71])).
% 1.90/1.05  
% 1.90/1.05  fof(f11,axiom,(
% 1.90/1.05    ! [X0,X1] : k4_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_xboole_0),
% 1.90/1.05    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.90/1.05  
% 1.90/1.05  fof(f44,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),k2_tarski(X0,X1)) = k1_xboole_0) )),
% 1.90/1.05    inference(cnf_transformation,[],[f11])).
% 1.90/1.05  
% 1.90/1.05  fof(f75,plain,(
% 1.90/1.05    ( ! [X0,X1] : (k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) = k1_xboole_0) )),
% 1.90/1.05    inference(definition_unfolding,[],[f44,f70,f71,f68])).
% 1.90/1.05  
% 1.90/1.05  fof(f63,plain,(
% 1.90/1.05    k1_funct_1(sK5,sK4) != sK3),
% 1.90/1.05    inference(cnf_transformation,[],[f32])).
% 1.90/1.05  
% 1.90/1.05  cnf(c_18,negated_conjecture,
% 1.90/1.05      ( r2_hidden(sK4,sK2) ),
% 1.90/1.05      inference(cnf_transformation,[],[f62]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_1938,plain,
% 1.90/1.05      ( r2_hidden(sK4,sK2) = iProver_top ),
% 1.90/1.05      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_20,negated_conjecture,
% 1.90/1.05      ( v1_funct_2(sK5,sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)) ),
% 1.90/1.05      inference(cnf_transformation,[],[f79]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_16,plain,
% 1.90/1.05      ( ~ v1_funct_2(X0,X1,X2)
% 1.90/1.05      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.90/1.05      | ~ r2_hidden(X3,X1)
% 1.90/1.05      | r2_hidden(k1_funct_1(X0,X3),X2)
% 1.90/1.05      | ~ v1_funct_1(X0)
% 1.90/1.05      | k1_xboole_0 = X2 ),
% 1.90/1.05      inference(cnf_transformation,[],[f58]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_19,negated_conjecture,
% 1.90/1.05      ( m1_subset_1(sK5,k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)))) ),
% 1.90/1.05      inference(cnf_transformation,[],[f78]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_195,plain,
% 1.90/1.05      ( ~ v1_funct_2(X0,X1,X2)
% 1.90/1.05      | ~ r2_hidden(X3,X1)
% 1.90/1.05      | r2_hidden(k1_funct_1(X0,X3),X2)
% 1.90/1.05      | ~ v1_funct_1(X0)
% 1.90/1.05      | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.90/1.05      | sK5 != X0
% 1.90/1.05      | k1_xboole_0 = X2 ),
% 1.90/1.05      inference(resolution_lifted,[status(thm)],[c_16,c_19]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_196,plain,
% 1.90/1.05      ( ~ v1_funct_2(sK5,X0,X1)
% 1.90/1.05      | ~ r2_hidden(X2,X0)
% 1.90/1.05      | r2_hidden(k1_funct_1(sK5,X2),X1)
% 1.90/1.05      | ~ v1_funct_1(sK5)
% 1.90/1.05      | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.90/1.05      | k1_xboole_0 = X1 ),
% 1.90/1.05      inference(unflattening,[status(thm)],[c_195]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_21,negated_conjecture,
% 1.90/1.05      ( v1_funct_1(sK5) ),
% 1.90/1.05      inference(cnf_transformation,[],[f59]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_200,plain,
% 1.90/1.05      ( r2_hidden(k1_funct_1(sK5,X2),X1)
% 1.90/1.05      | ~ r2_hidden(X2,X0)
% 1.90/1.05      | ~ v1_funct_2(sK5,X0,X1)
% 1.90/1.05      | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.90/1.05      | k1_xboole_0 = X1 ),
% 1.90/1.05      inference(global_propositional_subsumption,
% 1.90/1.05                [status(thm)],
% 1.90/1.05                [c_196,c_21]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_201,plain,
% 1.90/1.05      ( ~ v1_funct_2(sK5,X0,X1)
% 1.90/1.05      | ~ r2_hidden(X2,X0)
% 1.90/1.05      | r2_hidden(k1_funct_1(sK5,X2),X1)
% 1.90/1.05      | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X0,X1))
% 1.90/1.05      | k1_xboole_0 = X1 ),
% 1.90/1.05      inference(renaming,[status(thm)],[c_200]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_228,plain,
% 1.90/1.05      ( ~ r2_hidden(X0,X1)
% 1.90/1.05      | r2_hidden(k1_funct_1(sK5,X0),X2)
% 1.90/1.05      | k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) != X2
% 1.90/1.05      | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(X1,X2))
% 1.90/1.05      | sK2 != X1
% 1.90/1.05      | sK5 != sK5
% 1.90/1.05      | k1_xboole_0 = X2 ),
% 1.90/1.05      inference(resolution_lifted,[status(thm)],[c_20,c_201]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_229,plain,
% 1.90/1.05      ( ~ r2_hidden(X0,sK2)
% 1.90/1.05      | r2_hidden(k1_funct_1(sK5,X0),k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))
% 1.90/1.05      | k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))) != k1_zfmisc_1(k2_zfmisc_1(sK2,k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)))
% 1.90/1.05      | k1_xboole_0 = k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) ),
% 1.90/1.05      inference(unflattening,[status(thm)],[c_228]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_941,plain,
% 1.90/1.05      ( ~ r2_hidden(X0,sK2)
% 1.90/1.05      | r2_hidden(k1_funct_1(sK5,X0),k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3))
% 1.90/1.05      | k1_xboole_0 = k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) ),
% 1.90/1.05      inference(equality_resolution_simp,[status(thm)],[c_229]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_1937,plain,
% 1.90/1.05      ( k1_xboole_0 = k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)
% 1.90/1.05      | r2_hidden(X0,sK2) != iProver_top
% 1.90/1.05      | r2_hidden(k1_funct_1(sK5,X0),k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3)) = iProver_top ),
% 1.90/1.05      inference(predicate_to_equality,[status(thm)],[c_941]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_15,plain,
% 1.90/1.05      ( sP0(X0,X1,X2,X3,k6_enumset1(X3,X3,X3,X3,X3,X2,X1,X0)) ),
% 1.90/1.05      inference(cnf_transformation,[],[f85]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_1939,plain,
% 1.90/1.05      ( sP0(X0,X1,X2,X3,k6_enumset1(X3,X3,X3,X3,X3,X2,X1,X0)) = iProver_top ),
% 1.90/1.05      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_13,plain,
% 1.90/1.05      ( ~ sP0(X0,X1,X2,X3,X4)
% 1.90/1.05      | ~ r2_hidden(X5,X4)
% 1.90/1.05      | X5 = X3
% 1.90/1.05      | X5 = X2
% 1.90/1.05      | X5 = X1
% 1.90/1.05      | X5 = X0 ),
% 1.90/1.05      inference(cnf_transformation,[],[f45]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_1941,plain,
% 1.90/1.05      ( X0 = X1
% 1.90/1.05      | X0 = X2
% 1.90/1.05      | X0 = X3
% 1.90/1.05      | X0 = X4
% 1.90/1.05      | sP0(X4,X3,X2,X1,X5) != iProver_top
% 1.90/1.05      | r2_hidden(X0,X5) != iProver_top ),
% 1.90/1.05      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_3074,plain,
% 1.90/1.05      ( X0 = X1
% 1.90/1.05      | X2 = X1
% 1.90/1.05      | X3 = X1
% 1.90/1.05      | X4 = X1
% 1.90/1.05      | r2_hidden(X1,k6_enumset1(X0,X0,X0,X0,X0,X2,X3,X4)) != iProver_top ),
% 1.90/1.05      inference(superposition,[status(thm)],[c_1939,c_1941]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_3165,plain,
% 1.90/1.05      ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) = k1_xboole_0
% 1.90/1.05      | k1_funct_1(sK5,X0) = sK3
% 1.90/1.05      | r2_hidden(X0,sK2) != iProver_top ),
% 1.90/1.05      inference(superposition,[status(thm)],[c_1937,c_3074]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_2,plain,
% 1.90/1.05      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)))) != k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
% 1.90/1.05      inference(cnf_transformation,[],[f80]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_0,plain,
% 1.90/1.05      ( k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1))) = k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) ),
% 1.90/1.05      inference(cnf_transformation,[],[f72]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_3,plain,
% 1.90/1.05      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k1_setfam_1(k6_enumset1(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X1)))) = k1_xboole_0 ),
% 1.90/1.05      inference(cnf_transformation,[],[f75]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_2033,plain,
% 1.90/1.05      ( k5_xboole_0(k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0),k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0)) = k1_xboole_0 ),
% 1.90/1.05      inference(light_normalisation,[status(thm)],[c_3,c_0]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_2036,plain,
% 1.90/1.05      ( k6_enumset1(X0,X0,X0,X0,X0,X0,X0,X0) != k1_xboole_0 ),
% 1.90/1.05      inference(demodulation,[status(thm)],[c_2,c_0,c_2033]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_2044,plain,
% 1.90/1.05      ( k6_enumset1(sK3,sK3,sK3,sK3,sK3,sK3,sK3,sK3) != k1_xboole_0 ),
% 1.90/1.05      inference(instantiation,[status(thm)],[c_2036]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_3266,plain,
% 1.90/1.05      ( k1_funct_1(sK5,X0) = sK3 | r2_hidden(X0,sK2) != iProver_top ),
% 1.90/1.05      inference(global_propositional_subsumption,
% 1.90/1.05                [status(thm)],
% 1.90/1.05                [c_3165,c_2044]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_3275,plain,
% 1.90/1.05      ( k1_funct_1(sK5,sK4) = sK3 ),
% 1.90/1.05      inference(superposition,[status(thm)],[c_1938,c_3266]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(c_17,negated_conjecture,
% 1.90/1.05      ( k1_funct_1(sK5,sK4) != sK3 ),
% 1.90/1.05      inference(cnf_transformation,[],[f63]) ).
% 1.90/1.05  
% 1.90/1.05  cnf(contradiction,plain,
% 1.90/1.05      ( $false ),
% 1.90/1.05      inference(minisat,[status(thm)],[c_3275,c_17]) ).
% 1.90/1.05  
% 1.90/1.05  
% 1.90/1.05  % SZS output end CNFRefutation for theBenchmark.p
% 1.90/1.05  
% 1.90/1.05  ------                               Statistics
% 1.90/1.05  
% 1.90/1.05  ------ General
% 1.90/1.05  
% 1.90/1.05  abstr_ref_over_cycles:                  0
% 1.90/1.05  abstr_ref_under_cycles:                 0
% 1.90/1.05  gc_basic_clause_elim:                   0
% 1.90/1.05  forced_gc_time:                         0
% 1.90/1.05  parsing_time:                           0.008
% 1.90/1.05  unif_index_cands_time:                  0.
% 1.90/1.05  unif_index_add_time:                    0.
% 1.90/1.05  orderings_time:                         0.
% 1.90/1.05  out_proof_time:                         0.007
% 1.90/1.05  total_time:                             0.186
% 1.90/1.05  num_of_symbols:                         48
% 1.90/1.05  num_of_terms:                           2162
% 1.90/1.05  
% 1.90/1.05  ------ Preprocessing
% 1.90/1.05  
% 1.90/1.05  num_of_splits:                          0
% 1.90/1.05  num_of_split_atoms:                     0
% 1.90/1.05  num_of_reused_defs:                     0
% 1.90/1.05  num_eq_ax_congr_red:                    27
% 1.90/1.05  num_of_sem_filtered_clauses:            1
% 1.90/1.05  num_of_subtypes:                        0
% 1.90/1.05  monotx_restored_types:                  0
% 1.90/1.05  sat_num_of_epr_types:                   0
% 1.90/1.05  sat_num_of_non_cyclic_types:            0
% 1.90/1.05  sat_guarded_non_collapsed_types:        0
% 1.90/1.05  num_pure_diseq_elim:                    0
% 1.90/1.05  simp_replaced_by:                       0
% 1.90/1.05  res_preprocessed:                       96
% 1.90/1.05  prep_upred:                             0
% 1.90/1.05  prep_unflattend:                        63
% 1.90/1.05  smt_new_axioms:                         0
% 1.90/1.05  pred_elim_cands:                        2
% 1.90/1.05  pred_elim:                              3
% 1.90/1.05  pred_elim_cl:                           3
% 1.90/1.05  pred_elim_cycles:                       5
% 1.90/1.05  merged_defs:                            0
% 1.90/1.05  merged_defs_ncl:                        0
% 1.90/1.05  bin_hyper_res:                          0
% 1.90/1.05  prep_cycles:                            4
% 1.90/1.05  pred_elim_time:                         0.035
% 1.90/1.05  splitting_time:                         0.
% 1.90/1.05  sem_filter_time:                        0.
% 1.90/1.05  monotx_time:                            0.001
% 1.90/1.05  subtype_inf_time:                       0.
% 1.90/1.05  
% 1.90/1.05  ------ Problem properties
% 1.90/1.05  
% 1.90/1.05  clauses:                                19
% 1.90/1.05  conjectures:                            2
% 1.90/1.05  epr:                                    6
% 1.90/1.05  horn:                                   15
% 1.90/1.05  ground:                                 2
% 1.90/1.05  unary:                                  6
% 1.90/1.05  binary:                                 6
% 1.90/1.05  lits:                                   45
% 1.90/1.05  lits_eq:                                20
% 1.90/1.05  fd_pure:                                0
% 1.90/1.05  fd_pseudo:                              0
% 1.90/1.05  fd_cond:                                0
% 1.90/1.05  fd_pseudo_cond:                         3
% 1.90/1.05  ac_symbols:                             0
% 1.90/1.05  
% 1.90/1.05  ------ Propositional Solver
% 1.90/1.05  
% 1.90/1.05  prop_solver_calls:                      25
% 1.90/1.05  prop_fast_solver_calls:                 834
% 1.90/1.05  smt_solver_calls:                       0
% 1.90/1.05  smt_fast_solver_calls:                  0
% 1.90/1.05  prop_num_of_clauses:                    670
% 1.90/1.05  prop_preprocess_simplified:             3793
% 1.90/1.05  prop_fo_subsumed:                       2
% 1.90/1.05  prop_solver_time:                       0.
% 1.90/1.05  smt_solver_time:                        0.
% 1.90/1.05  smt_fast_solver_time:                   0.
% 1.90/1.05  prop_fast_solver_time:                  0.
% 1.90/1.05  prop_unsat_core_time:                   0.
% 1.90/1.05  
% 1.90/1.05  ------ QBF
% 1.90/1.05  
% 1.90/1.05  qbf_q_res:                              0
% 1.90/1.05  qbf_num_tautologies:                    0
% 1.90/1.05  qbf_prep_cycles:                        0
% 1.90/1.05  
% 1.90/1.05  ------ BMC1
% 1.90/1.05  
% 1.90/1.05  bmc1_current_bound:                     -1
% 1.90/1.05  bmc1_last_solved_bound:                 -1
% 1.90/1.05  bmc1_unsat_core_size:                   -1
% 1.90/1.05  bmc1_unsat_core_parents_size:           -1
% 1.90/1.05  bmc1_merge_next_fun:                    0
% 1.90/1.05  bmc1_unsat_core_clauses_time:           0.
% 1.90/1.05  
% 1.90/1.05  ------ Instantiation
% 1.90/1.05  
% 1.90/1.05  inst_num_of_clauses:                    190
% 1.90/1.05  inst_num_in_passive:                    8
% 1.90/1.05  inst_num_in_active:                     110
% 1.90/1.05  inst_num_in_unprocessed:                72
% 1.90/1.05  inst_num_of_loops:                      130
% 1.90/1.05  inst_num_of_learning_restarts:          0
% 1.90/1.05  inst_num_moves_active_passive:          19
% 1.90/1.05  inst_lit_activity:                      0
% 1.90/1.05  inst_lit_activity_moves:                0
% 1.90/1.05  inst_num_tautologies:                   0
% 1.90/1.05  inst_num_prop_implied:                  0
% 1.90/1.05  inst_num_existing_simplified:           0
% 1.90/1.05  inst_num_eq_res_simplified:             0
% 1.90/1.05  inst_num_child_elim:                    0
% 1.90/1.05  inst_num_of_dismatching_blockings:      45
% 1.90/1.05  inst_num_of_non_proper_insts:           185
% 1.90/1.05  inst_num_of_duplicates:                 0
% 1.90/1.05  inst_inst_num_from_inst_to_res:         0
% 1.90/1.05  inst_dismatching_checking_time:         0.
% 1.90/1.05  
% 1.90/1.05  ------ Resolution
% 1.90/1.05  
% 1.90/1.05  res_num_of_clauses:                     0
% 1.90/1.05  res_num_in_passive:                     0
% 1.90/1.05  res_num_in_active:                      0
% 1.90/1.05  res_num_of_loops:                       100
% 1.90/1.05  res_forward_subset_subsumed:            53
% 1.90/1.05  res_backward_subset_subsumed:           0
% 1.90/1.05  res_forward_subsumed:                   0
% 1.90/1.05  res_backward_subsumed:                  0
% 1.90/1.05  res_forward_subsumption_resolution:     0
% 1.90/1.05  res_backward_subsumption_resolution:    0
% 1.90/1.05  res_clause_to_clause_subsumption:       671
% 1.90/1.05  res_orphan_elimination:                 0
% 1.90/1.05  res_tautology_del:                      7
% 1.90/1.05  res_num_eq_res_simplified:              1
% 1.90/1.05  res_num_sel_changes:                    0
% 1.90/1.05  res_moves_from_active_to_pass:          0
% 1.90/1.05  
% 1.90/1.05  ------ Superposition
% 1.90/1.05  
% 1.90/1.05  sup_time_total:                         0.
% 1.90/1.05  sup_time_generating:                    0.
% 1.90/1.05  sup_time_sim_full:                      0.
% 1.90/1.05  sup_time_sim_immed:                     0.
% 1.90/1.05  
% 1.90/1.05  sup_num_of_clauses:                     30
% 1.90/1.05  sup_num_in_active:                      25
% 1.90/1.05  sup_num_in_passive:                     5
% 1.90/1.05  sup_num_of_loops:                       24
% 1.90/1.05  sup_fw_superposition:                   11
% 1.90/1.05  sup_bw_superposition:                   4
% 1.90/1.05  sup_immediate_simplified:               0
% 1.90/1.05  sup_given_eliminated:                   0
% 1.90/1.05  comparisons_done:                       0
% 1.90/1.05  comparisons_avoided:                    2
% 1.90/1.05  
% 1.90/1.05  ------ Simplifications
% 1.90/1.05  
% 1.90/1.05  
% 1.90/1.05  sim_fw_subset_subsumed:                 0
% 1.90/1.05  sim_bw_subset_subsumed:                 0
% 1.90/1.05  sim_fw_subsumed:                        0
% 1.90/1.05  sim_bw_subsumed:                        0
% 1.90/1.05  sim_fw_subsumption_res:                 0
% 1.90/1.05  sim_bw_subsumption_res:                 0
% 1.90/1.05  sim_tautology_del:                      0
% 1.90/1.05  sim_eq_tautology_del:                   4
% 1.90/1.05  sim_eq_res_simp:                        0
% 1.90/1.05  sim_fw_demodulated:                     1
% 1.90/1.05  sim_bw_demodulated:                     0
% 1.90/1.05  sim_light_normalised:                   1
% 1.90/1.05  sim_joinable_taut:                      0
% 1.90/1.05  sim_joinable_simp:                      0
% 1.90/1.05  sim_ac_normalised:                      0
% 1.90/1.05  sim_smt_subsumption:                    0
% 1.90/1.05  
%------------------------------------------------------------------------------
