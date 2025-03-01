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
% DateTime   : Thu Dec  3 11:39:51 EST 2020

% Result     : Theorem 3.93s
% Output     : CNFRefutation 3.93s
% Verified   : 
% Statistics : Number of formulae       :  150 (2633 expanded)
%              Number of clauses        :   78 ( 898 expanded)
%              Number of leaves         :   20 ( 515 expanded)
%              Depth                    :   26
%              Number of atoms          :  460 (9013 expanded)
%              Number of equality atoms :  182 (3145 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f15,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ( r1_tarski(X1,k3_subset_1(X0,X1))
      <=> k1_subset_1(X0) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => ( r1_tarski(X1,k3_subset_1(X0,X1))
        <=> k1_subset_1(X0) = X1 ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f23,plain,(
    ? [X0,X1] :
      ( ( r1_tarski(X1,k3_subset_1(X0,X1))
      <~> k1_subset_1(X0) = X1 )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f42,plain,(
    ? [X0,X1] :
      ( ( k1_subset_1(X0) != X1
        | ~ r1_tarski(X1,k3_subset_1(X0,X1)) )
      & ( k1_subset_1(X0) = X1
        | r1_tarski(X1,k3_subset_1(X0,X1)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f43,plain,(
    ? [X0,X1] :
      ( ( k1_subset_1(X0) != X1
        | ~ r1_tarski(X1,k3_subset_1(X0,X1)) )
      & ( k1_subset_1(X0) = X1
        | r1_tarski(X1,k3_subset_1(X0,X1)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f42])).

fof(f44,plain,
    ( ? [X0,X1] :
        ( ( k1_subset_1(X0) != X1
          | ~ r1_tarski(X1,k3_subset_1(X0,X1)) )
        & ( k1_subset_1(X0) = X1
          | r1_tarski(X1,k3_subset_1(X0,X1)) )
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( ( k1_subset_1(sK4) != sK5
        | ~ r1_tarski(sK5,k3_subset_1(sK4,sK5)) )
      & ( k1_subset_1(sK4) = sK5
        | r1_tarski(sK5,k3_subset_1(sK4,sK5)) )
      & m1_subset_1(sK5,k1_zfmisc_1(sK4)) ) ),
    introduced(choice_axiom,[])).

fof(f45,plain,
    ( ( k1_subset_1(sK4) != sK5
      | ~ r1_tarski(sK5,k3_subset_1(sK4,sK5)) )
    & ( k1_subset_1(sK4) = sK5
      | r1_tarski(sK5,k3_subset_1(sK4,sK5)) )
    & m1_subset_1(sK5,k1_zfmisc_1(sK4)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f43,f44])).

fof(f77,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(sK4)) ),
    inference(cnf_transformation,[],[f45])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f73,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f6,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f62,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f88,plain,(
    ! [X0,X1] :
      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f73,f62])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f19])).

fof(f68,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ~ r1_tarski(X2,X0) )
            & ( r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(rectify,[],[f37])).

fof(f39,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK3(X0,X1),X0)
          | ~ r2_hidden(sK3(X0,X1),X1) )
        & ( r1_tarski(sK3(X0,X1),X0)
          | r2_hidden(sK3(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f40,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK3(X0,X1),X0)
            | ~ r2_hidden(sK3(X0,X1),X1) )
          & ( r1_tarski(sK3(X0,X1),X0)
            | r2_hidden(sK3(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f38,f39])).

fof(f64,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f40])).

fof(f98,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f64])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f63,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f13,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f75,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f13])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f74,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f4,axiom,(
    ! [X0] :
      ~ ( ! [X1] : ~ r2_hidden(X1,X0)
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f4])).

fof(f34,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK2(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f17,f34])).

fof(f59,plain,(
    ! [X0] :
      ( r2_hidden(sK2(X0),X0)
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f35])).

fof(f78,plain,
    ( k1_subset_1(sK4) = sK5
    | r1_tarski(sK5,k3_subset_1(sK4,sK5)) ),
    inference(cnf_transformation,[],[f45])).

fof(f10,axiom,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f72,plain,(
    ! [X0] : k1_xboole_0 = k1_subset_1(X0) ),
    inference(cnf_transformation,[],[f10])).

fof(f90,plain,
    ( k1_xboole_0 = sK5
    | r1_tarski(sK5,k3_subset_1(sK4,sK5)) ),
    inference(definition_unfolding,[],[f78,f72])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( ~ r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f30,plain,(
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
    inference(flattening,[],[f29])).

fof(f31,plain,(
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
    inference(rectify,[],[f30])).

fof(f32,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( ~ r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( r2_hidden(sK1(X0,X1,X2),X1)
          | ~ r2_hidden(sK1(X0,X1,X2),X0)
          | ~ r2_hidden(sK1(X0,X1,X2),X2) )
        & ( ( ~ r2_hidden(sK1(X0,X1,X2),X1)
            & r2_hidden(sK1(X0,X1,X2),X0) )
          | r2_hidden(sK1(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ( ( r2_hidden(sK1(X0,X1,X2),X1)
            | ~ r2_hidden(sK1(X0,X1,X2),X0)
            | ~ r2_hidden(sK1(X0,X1,X2),X2) )
          & ( ( ~ r2_hidden(sK1(X0,X1,X2),X1)
              & r2_hidden(sK1(X0,X1,X2),X0) )
            | r2_hidden(sK1(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( ~ r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f31,f32])).

fof(f54,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f33])).

fof(f84,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X2 ) ),
    inference(definition_unfolding,[],[f54,f62])).

fof(f95,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k5_xboole_0(X0,k3_xboole_0(X0,X1))) ) ),
    inference(equality_resolution,[],[f84])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
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

fof(f25,plain,(
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
    inference(flattening,[],[f24])).

fof(f26,plain,(
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
    inference(rectify,[],[f25])).

fof(f27,plain,(
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

fof(f28,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f26,f27])).

fof(f48,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f28])).

fof(f92,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k3_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f48])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f76,plain,(
    ! [X0,X1] :
      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f60,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | k4_xboole_0(X0,X1) != k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f36])).

fof(f87,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | k1_xboole_0 != k5_xboole_0(X0,k3_xboole_0(X0,X1)) ) ),
    inference(definition_unfolding,[],[f60,f62])).

fof(f79,plain,
    ( k1_subset_1(sK4) != sK5
    | ~ r1_tarski(sK5,k3_subset_1(sK4,sK5)) ),
    inference(cnf_transformation,[],[f45])).

fof(f89,plain,
    ( k1_xboole_0 != sK5
    | ~ r1_tarski(sK5,k3_subset_1(sK4,sK5)) ),
    inference(definition_unfolding,[],[f79,f72])).

fof(f61,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f86,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f61,f62])).

cnf(c_0,plain,
    ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_31,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(sK4)) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1342,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_25,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k5_xboole_0(X1,k3_xboole_0(X1,X0)) = k3_subset_1(X1,X0) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_1348,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1)
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_3010,plain,
    ( k5_xboole_0(sK4,k3_xboole_0(sK4,sK5)) = k3_subset_1(sK4,sK5) ),
    inference(superposition,[status(thm)],[c_1342,c_1348])).

cnf(c_3384,plain,
    ( k5_xboole_0(sK4,k3_xboole_0(sK5,sK4)) = k3_subset_1(sK4,sK5) ),
    inference(superposition,[status(thm)],[c_0,c_3010])).

cnf(c_24,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_1349,plain,
    ( m1_subset_1(X0,X1) != iProver_top
    | r2_hidden(X0,X1) = iProver_top
    | v1_xboole_0(X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_2288,plain,
    ( r2_hidden(sK5,k1_zfmisc_1(sK4)) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1342,c_1349])).

cnf(c_20,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_1353,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_2602,plain,
    ( r1_tarski(sK5,sK4) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2288,c_1353])).

cnf(c_16,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1357,plain,
    ( k3_xboole_0(X0,X1) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2662,plain,
    ( k3_xboole_0(sK5,sK4) = sK5
    | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2602,c_1357])).

cnf(c_27,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1346,plain,
    ( v1_xboole_0(k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_2916,plain,
    ( k3_xboole_0(sK5,sK4) = sK5 ),
    inference(superposition,[status(thm)],[c_2662,c_1346])).

cnf(c_3389,plain,
    ( k3_subset_1(sK4,sK5) = k5_xboole_0(sK4,sK5) ),
    inference(light_normalisation,[status(thm)],[c_3384,c_2916])).

cnf(c_26,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1347,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_3648,plain,
    ( m1_subset_1(k5_xboole_0(sK4,sK5),k1_zfmisc_1(sK4)) = iProver_top
    | m1_subset_1(sK5,k1_zfmisc_1(sK4)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3389,c_1347])).

cnf(c_32,plain,
    ( m1_subset_1(sK5,k1_zfmisc_1(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_7950,plain,
    ( m1_subset_1(k5_xboole_0(sK4,sK5),k1_zfmisc_1(sK4)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3648,c_32])).

cnf(c_13,plain,
    ( r2_hidden(sK2(X0),X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1360,plain,
    ( k1_xboole_0 = X0
    | r2_hidden(sK2(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_30,negated_conjecture,
    ( r1_tarski(sK5,k3_subset_1(sK4,sK5))
    | k1_xboole_0 = sK5 ),
    inference(cnf_transformation,[],[f90])).

cnf(c_1343,plain,
    ( k1_xboole_0 = sK5
    | r1_tarski(sK5,k3_subset_1(sK4,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_1524,plain,
    ( k3_xboole_0(sK5,k3_subset_1(sK4,sK5)) = sK5
    | sK5 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1343,c_1357])).

cnf(c_3636,plain,
    ( k3_xboole_0(sK5,k5_xboole_0(sK4,sK5)) = sK5
    | sK5 = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_3389,c_1524])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X2,X1))) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_1362,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X2,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_3371,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X1,X2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_1362])).

cnf(c_4285,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(X0,k5_xboole_0(k5_xboole_0(sK4,sK5),sK5)) != iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_3636,c_3371])).

cnf(c_3393,plain,
    ( k5_xboole_0(sK4,k3_xboole_0(sK4,sK5)) = k5_xboole_0(sK4,sK5) ),
    inference(demodulation,[status(thm)],[c_3389,c_3010])).

cnf(c_3510,plain,
    ( r2_hidden(X0,k5_xboole_0(sK4,sK5)) != iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_3393,c_1362])).

cnf(c_5,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k3_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_1368,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k3_xboole_0(X2,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2202,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(X0,k3_subset_1(sK4,sK5)) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_1524,c_1368])).

cnf(c_3633,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(X0,k5_xboole_0(sK4,sK5)) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3389,c_2202])).

cnf(c_4502,plain,
    ( sK5 = k1_xboole_0
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4285,c_3510,c_3633])).

cnf(c_4508,plain,
    ( sK5 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1360,c_4502])).

cnf(c_7954,plain,
    ( m1_subset_1(k5_xboole_0(sK4,k1_xboole_0),k1_zfmisc_1(sK4)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_7950,c_4508])).

cnf(c_7957,plain,
    ( r2_hidden(k5_xboole_0(sK4,k1_xboole_0),k1_zfmisc_1(sK4)) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_7954,c_1349])).

cnf(c_11776,plain,
    ( r1_tarski(k5_xboole_0(sK4,k1_xboole_0),sK4) = iProver_top
    | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_7957,c_1353])).

cnf(c_12235,plain,
    ( k3_xboole_0(k5_xboole_0(sK4,k1_xboole_0),sK4) = k5_xboole_0(sK4,k1_xboole_0)
    | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_11776,c_1357])).

cnf(c_15190,plain,
    ( k3_xboole_0(k5_xboole_0(sK4,k1_xboole_0),sK4) = k5_xboole_0(sK4,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_12235,c_1346])).

cnf(c_15206,plain,
    ( k3_xboole_0(sK4,k5_xboole_0(sK4,k1_xboole_0)) = k5_xboole_0(sK4,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_15190,c_0])).

cnf(c_7958,plain,
    ( k5_xboole_0(sK4,k3_xboole_0(sK4,k5_xboole_0(sK4,k1_xboole_0))) = k3_subset_1(sK4,k5_xboole_0(sK4,k1_xboole_0)) ),
    inference(superposition,[status(thm)],[c_7954,c_1348])).

cnf(c_28,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1345,plain,
    ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
    | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_2401,plain,
    ( k3_subset_1(sK4,k3_subset_1(sK4,sK5)) = sK5 ),
    inference(superposition,[status(thm)],[c_1342,c_1345])).

cnf(c_3632,plain,
    ( k3_subset_1(sK4,k5_xboole_0(sK4,sK5)) = sK5 ),
    inference(demodulation,[status(thm)],[c_3389,c_2401])).

cnf(c_5847,plain,
    ( k3_subset_1(sK4,k5_xboole_0(sK4,k1_xboole_0)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4508,c_3632])).

cnf(c_7961,plain,
    ( k5_xboole_0(sK4,k3_xboole_0(sK4,k5_xboole_0(sK4,k1_xboole_0))) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_7958,c_5847])).

cnf(c_15,plain,
    ( r1_tarski(X0,X1)
    | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f87])).

cnf(c_1358,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) != k1_xboole_0
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_7963,plain,
    ( r1_tarski(sK4,k5_xboole_0(sK4,k1_xboole_0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_7961,c_1358])).

cnf(c_8781,plain,
    ( k3_xboole_0(sK4,k5_xboole_0(sK4,k1_xboole_0)) = sK4 ),
    inference(superposition,[status(thm)],[c_7963,c_1357])).

cnf(c_15224,plain,
    ( k5_xboole_0(sK4,k1_xboole_0) = sK4 ),
    inference(light_normalisation,[status(thm)],[c_15206,c_8781])).

cnf(c_29,negated_conjecture,
    ( ~ r1_tarski(sK5,k3_subset_1(sK4,sK5))
    | k1_xboole_0 != sK5 ),
    inference(cnf_transformation,[],[f89])).

cnf(c_1344,plain,
    ( k1_xboole_0 != sK5
    | r1_tarski(sK5,k3_subset_1(sK4,sK5)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_3638,plain,
    ( sK5 != k1_xboole_0
    | r1_tarski(sK5,k5_xboole_0(sK4,sK5)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3389,c_1344])).

cnf(c_5848,plain,
    ( k1_xboole_0 != k1_xboole_0
    | r1_tarski(k1_xboole_0,k5_xboole_0(sK4,k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4508,c_3638])).

cnf(c_5855,plain,
    ( r1_tarski(k1_xboole_0,k5_xboole_0(sK4,k1_xboole_0)) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_5848])).

cnf(c_15389,plain,
    ( r1_tarski(k1_xboole_0,sK4) != iProver_top ),
    inference(demodulation,[status(thm)],[c_15224,c_5855])).

cnf(c_7022,plain,
    ( k3_xboole_0(k1_xboole_0,sK4) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_2916,c_2916,c_4508])).

cnf(c_7026,plain,
    ( k5_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | r1_tarski(k1_xboole_0,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_7022,c_1358])).

cnf(c_14,plain,
    ( ~ r1_tarski(X0,X1)
    | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f86])).

cnf(c_1359,plain,
    ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2661,plain,
    ( k5_xboole_0(sK5,k3_xboole_0(sK5,sK4)) = k1_xboole_0
    | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2602,c_1359])).

cnf(c_4689,plain,
    ( k5_xboole_0(k1_xboole_0,sK5) = k1_xboole_0
    | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2661,c_2916,c_4508])).

cnf(c_4690,plain,
    ( k5_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0
    | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4689,c_4508])).

cnf(c_4692,plain,
    ( k5_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_4690,c_1346])).

cnf(c_7042,plain,
    ( k1_xboole_0 != k1_xboole_0
    | r1_tarski(k1_xboole_0,sK4) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_7026,c_4692])).

cnf(c_7043,plain,
    ( r1_tarski(k1_xboole_0,sK4) = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_7042])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_15389,c_7043])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.35  % Computer   : n007.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 13:34:21 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 3.93/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.93/0.99  
% 3.93/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.93/0.99  
% 3.93/0.99  ------  iProver source info
% 3.93/0.99  
% 3.93/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.93/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.93/0.99  git: non_committed_changes: false
% 3.93/0.99  git: last_make_outside_of_git: false
% 3.93/0.99  
% 3.93/0.99  ------ 
% 3.93/0.99  
% 3.93/0.99  ------ Input Options
% 3.93/0.99  
% 3.93/0.99  --out_options                           all
% 3.93/0.99  --tptp_safe_out                         true
% 3.93/0.99  --problem_path                          ""
% 3.93/0.99  --include_path                          ""
% 3.93/0.99  --clausifier                            res/vclausify_rel
% 3.93/0.99  --clausifier_options                    ""
% 3.93/0.99  --stdin                                 false
% 3.93/0.99  --stats_out                             all
% 3.93/0.99  
% 3.93/0.99  ------ General Options
% 3.93/0.99  
% 3.93/0.99  --fof                                   false
% 3.93/0.99  --time_out_real                         305.
% 3.93/0.99  --time_out_virtual                      -1.
% 3.93/0.99  --symbol_type_check                     false
% 3.93/0.99  --clausify_out                          false
% 3.93/0.99  --sig_cnt_out                           false
% 3.93/0.99  --trig_cnt_out                          false
% 3.93/0.99  --trig_cnt_out_tolerance                1.
% 3.93/0.99  --trig_cnt_out_sk_spl                   false
% 3.93/0.99  --abstr_cl_out                          false
% 3.93/0.99  
% 3.93/0.99  ------ Global Options
% 3.93/0.99  
% 3.93/0.99  --schedule                              default
% 3.93/0.99  --add_important_lit                     false
% 3.93/0.99  --prop_solver_per_cl                    1000
% 3.93/0.99  --min_unsat_core                        false
% 3.93/0.99  --soft_assumptions                      false
% 3.93/0.99  --soft_lemma_size                       3
% 3.93/0.99  --prop_impl_unit_size                   0
% 3.93/0.99  --prop_impl_unit                        []
% 3.93/0.99  --share_sel_clauses                     true
% 3.93/0.99  --reset_solvers                         false
% 3.93/0.99  --bc_imp_inh                            [conj_cone]
% 3.93/0.99  --conj_cone_tolerance                   3.
% 3.93/0.99  --extra_neg_conj                        none
% 3.93/0.99  --large_theory_mode                     true
% 3.93/0.99  --prolific_symb_bound                   200
% 3.93/0.99  --lt_threshold                          2000
% 3.93/0.99  --clause_weak_htbl                      true
% 3.93/0.99  --gc_record_bc_elim                     false
% 3.93/0.99  
% 3.93/0.99  ------ Preprocessing Options
% 3.93/0.99  
% 3.93/0.99  --preprocessing_flag                    true
% 3.93/0.99  --time_out_prep_mult                    0.1
% 3.93/0.99  --splitting_mode                        input
% 3.93/0.99  --splitting_grd                         true
% 3.93/0.99  --splitting_cvd                         false
% 3.93/0.99  --splitting_cvd_svl                     false
% 3.93/0.99  --splitting_nvd                         32
% 3.93/0.99  --sub_typing                            true
% 3.93/0.99  --prep_gs_sim                           true
% 3.93/0.99  --prep_unflatten                        true
% 3.93/0.99  --prep_res_sim                          true
% 3.93/0.99  --prep_upred                            true
% 3.93/0.99  --prep_sem_filter                       exhaustive
% 3.93/0.99  --prep_sem_filter_out                   false
% 3.93/0.99  --pred_elim                             true
% 3.93/0.99  --res_sim_input                         true
% 3.93/0.99  --eq_ax_congr_red                       true
% 3.93/0.99  --pure_diseq_elim                       true
% 3.93/0.99  --brand_transform                       false
% 3.93/0.99  --non_eq_to_eq                          false
% 3.93/0.99  --prep_def_merge                        true
% 3.93/0.99  --prep_def_merge_prop_impl              false
% 3.93/0.99  --prep_def_merge_mbd                    true
% 3.93/0.99  --prep_def_merge_tr_red                 false
% 3.93/0.99  --prep_def_merge_tr_cl                  false
% 3.93/0.99  --smt_preprocessing                     true
% 3.93/0.99  --smt_ac_axioms                         fast
% 3.93/0.99  --preprocessed_out                      false
% 3.93/0.99  --preprocessed_stats                    false
% 3.93/0.99  
% 3.93/0.99  ------ Abstraction refinement Options
% 3.93/0.99  
% 3.93/0.99  --abstr_ref                             []
% 3.93/0.99  --abstr_ref_prep                        false
% 3.93/0.99  --abstr_ref_until_sat                   false
% 3.93/0.99  --abstr_ref_sig_restrict                funpre
% 3.93/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.93/0.99  --abstr_ref_under                       []
% 3.93/0.99  
% 3.93/0.99  ------ SAT Options
% 3.93/0.99  
% 3.93/0.99  --sat_mode                              false
% 3.93/0.99  --sat_fm_restart_options                ""
% 3.93/0.99  --sat_gr_def                            false
% 3.93/0.99  --sat_epr_types                         true
% 3.93/0.99  --sat_non_cyclic_types                  false
% 3.93/0.99  --sat_finite_models                     false
% 3.93/0.99  --sat_fm_lemmas                         false
% 3.93/0.99  --sat_fm_prep                           false
% 3.93/0.99  --sat_fm_uc_incr                        true
% 3.93/0.99  --sat_out_model                         small
% 3.93/0.99  --sat_out_clauses                       false
% 3.93/0.99  
% 3.93/0.99  ------ QBF Options
% 3.93/0.99  
% 3.93/0.99  --qbf_mode                              false
% 3.93/0.99  --qbf_elim_univ                         false
% 3.93/0.99  --qbf_dom_inst                          none
% 3.93/0.99  --qbf_dom_pre_inst                      false
% 3.93/0.99  --qbf_sk_in                             false
% 3.93/0.99  --qbf_pred_elim                         true
% 3.93/0.99  --qbf_split                             512
% 3.93/0.99  
% 3.93/0.99  ------ BMC1 Options
% 3.93/0.99  
% 3.93/0.99  --bmc1_incremental                      false
% 3.93/0.99  --bmc1_axioms                           reachable_all
% 3.93/0.99  --bmc1_min_bound                        0
% 3.93/0.99  --bmc1_max_bound                        -1
% 3.93/0.99  --bmc1_max_bound_default                -1
% 3.93/0.99  --bmc1_symbol_reachability              true
% 3.93/0.99  --bmc1_property_lemmas                  false
% 3.93/0.99  --bmc1_k_induction                      false
% 3.93/0.99  --bmc1_non_equiv_states                 false
% 3.93/0.99  --bmc1_deadlock                         false
% 3.93/0.99  --bmc1_ucm                              false
% 3.93/0.99  --bmc1_add_unsat_core                   none
% 3.93/0.99  --bmc1_unsat_core_children              false
% 3.93/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.93/0.99  --bmc1_out_stat                         full
% 3.93/0.99  --bmc1_ground_init                      false
% 3.93/0.99  --bmc1_pre_inst_next_state              false
% 3.93/0.99  --bmc1_pre_inst_state                   false
% 3.93/0.99  --bmc1_pre_inst_reach_state             false
% 3.93/0.99  --bmc1_out_unsat_core                   false
% 3.93/0.99  --bmc1_aig_witness_out                  false
% 3.93/0.99  --bmc1_verbose                          false
% 3.93/0.99  --bmc1_dump_clauses_tptp                false
% 3.93/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.93/0.99  --bmc1_dump_file                        -
% 3.93/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.93/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.93/0.99  --bmc1_ucm_extend_mode                  1
% 3.93/0.99  --bmc1_ucm_init_mode                    2
% 3.93/0.99  --bmc1_ucm_cone_mode                    none
% 3.93/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.93/0.99  --bmc1_ucm_relax_model                  4
% 3.93/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.93/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.93/0.99  --bmc1_ucm_layered_model                none
% 3.93/0.99  --bmc1_ucm_max_lemma_size               10
% 3.93/0.99  
% 3.93/0.99  ------ AIG Options
% 3.93/0.99  
% 3.93/0.99  --aig_mode                              false
% 3.93/0.99  
% 3.93/0.99  ------ Instantiation Options
% 3.93/0.99  
% 3.93/0.99  --instantiation_flag                    true
% 3.93/0.99  --inst_sos_flag                         true
% 3.93/0.99  --inst_sos_phase                        true
% 3.93/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.93/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.93/0.99  --inst_lit_sel_side                     num_symb
% 3.93/0.99  --inst_solver_per_active                1400
% 3.93/0.99  --inst_solver_calls_frac                1.
% 3.93/0.99  --inst_passive_queue_type               priority_queues
% 3.93/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.93/0.99  --inst_passive_queues_freq              [25;2]
% 3.93/0.99  --inst_dismatching                      true
% 3.93/0.99  --inst_eager_unprocessed_to_passive     true
% 3.93/0.99  --inst_prop_sim_given                   true
% 3.93/0.99  --inst_prop_sim_new                     false
% 3.93/0.99  --inst_subs_new                         false
% 3.93/0.99  --inst_eq_res_simp                      false
% 3.93/0.99  --inst_subs_given                       false
% 3.93/0.99  --inst_orphan_elimination               true
% 3.93/0.99  --inst_learning_loop_flag               true
% 3.93/0.99  --inst_learning_start                   3000
% 3.93/0.99  --inst_learning_factor                  2
% 3.93/0.99  --inst_start_prop_sim_after_learn       3
% 3.93/0.99  --inst_sel_renew                        solver
% 3.93/0.99  --inst_lit_activity_flag                true
% 3.93/0.99  --inst_restr_to_given                   false
% 3.93/0.99  --inst_activity_threshold               500
% 3.93/0.99  --inst_out_proof                        true
% 3.93/0.99  
% 3.93/0.99  ------ Resolution Options
% 3.93/0.99  
% 3.93/0.99  --resolution_flag                       true
% 3.93/0.99  --res_lit_sel                           adaptive
% 3.93/0.99  --res_lit_sel_side                      none
% 3.93/0.99  --res_ordering                          kbo
% 3.93/0.99  --res_to_prop_solver                    active
% 3.93/0.99  --res_prop_simpl_new                    false
% 3.93/0.99  --res_prop_simpl_given                  true
% 3.93/0.99  --res_passive_queue_type                priority_queues
% 3.93/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.93/0.99  --res_passive_queues_freq               [15;5]
% 3.93/0.99  --res_forward_subs                      full
% 3.93/0.99  --res_backward_subs                     full
% 3.93/0.99  --res_forward_subs_resolution           true
% 3.93/0.99  --res_backward_subs_resolution          true
% 3.93/0.99  --res_orphan_elimination                true
% 3.93/0.99  --res_time_limit                        2.
% 3.93/0.99  --res_out_proof                         true
% 3.93/0.99  
% 3.93/0.99  ------ Superposition Options
% 3.93/0.99  
% 3.93/0.99  --superposition_flag                    true
% 3.93/0.99  --sup_passive_queue_type                priority_queues
% 3.93/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.93/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.93/0.99  --demod_completeness_check              fast
% 3.93/0.99  --demod_use_ground                      true
% 3.93/0.99  --sup_to_prop_solver                    passive
% 3.93/0.99  --sup_prop_simpl_new                    true
% 3.93/0.99  --sup_prop_simpl_given                  true
% 3.93/0.99  --sup_fun_splitting                     true
% 3.93/0.99  --sup_smt_interval                      50000
% 3.93/0.99  
% 3.93/0.99  ------ Superposition Simplification Setup
% 3.93/0.99  
% 3.93/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.93/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.93/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.93/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.93/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.93/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.93/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.93/0.99  --sup_immed_triv                        [TrivRules]
% 3.93/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.93/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.93/0.99  --sup_immed_bw_main                     []
% 3.93/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.93/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.93/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.93/0.99  --sup_input_bw                          []
% 3.93/0.99  
% 3.93/0.99  ------ Combination Options
% 3.93/0.99  
% 3.93/0.99  --comb_res_mult                         3
% 3.93/0.99  --comb_sup_mult                         2
% 3.93/0.99  --comb_inst_mult                        10
% 3.93/0.99  
% 3.93/0.99  ------ Debug Options
% 3.93/0.99  
% 3.93/0.99  --dbg_backtrace                         false
% 3.93/0.99  --dbg_dump_prop_clauses                 false
% 3.93/0.99  --dbg_dump_prop_clauses_file            -
% 3.93/0.99  --dbg_out_stat                          false
% 3.93/0.99  ------ Parsing...
% 3.93/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.93/0.99  
% 3.93/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.93/0.99  
% 3.93/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.93/0.99  
% 3.93/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.93/0.99  ------ Proving...
% 3.93/0.99  ------ Problem Properties 
% 3.93/0.99  
% 3.93/0.99  
% 3.93/0.99  clauses                                 32
% 3.93/0.99  conjectures                             3
% 3.93/0.99  EPR                                     4
% 3.93/0.99  Horn                                    21
% 3.93/0.99  unary                                   3
% 3.93/0.99  binary                                  15
% 3.93/0.99  lits                                    77
% 3.93/0.99  lits eq                                 17
% 3.93/0.99  fd_pure                                 0
% 3.93/0.99  fd_pseudo                               0
% 3.93/0.99  fd_cond                                 1
% 3.93/0.99  fd_pseudo_cond                          8
% 3.93/0.99  AC symbols                              0
% 3.93/0.99  
% 3.93/0.99  ------ Schedule dynamic 5 is on 
% 3.93/0.99  
% 3.93/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.93/0.99  
% 3.93/0.99  
% 3.93/0.99  ------ 
% 3.93/0.99  Current options:
% 3.93/0.99  ------ 
% 3.93/0.99  
% 3.93/0.99  ------ Input Options
% 3.93/0.99  
% 3.93/0.99  --out_options                           all
% 3.93/0.99  --tptp_safe_out                         true
% 3.93/0.99  --problem_path                          ""
% 3.93/0.99  --include_path                          ""
% 3.93/0.99  --clausifier                            res/vclausify_rel
% 3.93/0.99  --clausifier_options                    ""
% 3.93/0.99  --stdin                                 false
% 3.93/0.99  --stats_out                             all
% 3.93/0.99  
% 3.93/0.99  ------ General Options
% 3.93/0.99  
% 3.93/0.99  --fof                                   false
% 3.93/0.99  --time_out_real                         305.
% 3.93/0.99  --time_out_virtual                      -1.
% 3.93/0.99  --symbol_type_check                     false
% 3.93/0.99  --clausify_out                          false
% 3.93/0.99  --sig_cnt_out                           false
% 3.93/0.99  --trig_cnt_out                          false
% 3.93/0.99  --trig_cnt_out_tolerance                1.
% 3.93/0.99  --trig_cnt_out_sk_spl                   false
% 3.93/0.99  --abstr_cl_out                          false
% 3.93/0.99  
% 3.93/0.99  ------ Global Options
% 3.93/0.99  
% 3.93/0.99  --schedule                              default
% 3.93/0.99  --add_important_lit                     false
% 3.93/0.99  --prop_solver_per_cl                    1000
% 3.93/0.99  --min_unsat_core                        false
% 3.93/0.99  --soft_assumptions                      false
% 3.93/0.99  --soft_lemma_size                       3
% 3.93/0.99  --prop_impl_unit_size                   0
% 3.93/0.99  --prop_impl_unit                        []
% 3.93/0.99  --share_sel_clauses                     true
% 3.93/0.99  --reset_solvers                         false
% 3.93/0.99  --bc_imp_inh                            [conj_cone]
% 3.93/0.99  --conj_cone_tolerance                   3.
% 3.93/0.99  --extra_neg_conj                        none
% 3.93/0.99  --large_theory_mode                     true
% 3.93/0.99  --prolific_symb_bound                   200
% 3.93/0.99  --lt_threshold                          2000
% 3.93/0.99  --clause_weak_htbl                      true
% 3.93/0.99  --gc_record_bc_elim                     false
% 3.93/0.99  
% 3.93/0.99  ------ Preprocessing Options
% 3.93/0.99  
% 3.93/0.99  --preprocessing_flag                    true
% 3.93/0.99  --time_out_prep_mult                    0.1
% 3.93/0.99  --splitting_mode                        input
% 3.93/0.99  --splitting_grd                         true
% 3.93/0.99  --splitting_cvd                         false
% 3.93/0.99  --splitting_cvd_svl                     false
% 3.93/0.99  --splitting_nvd                         32
% 3.93/0.99  --sub_typing                            true
% 3.93/0.99  --prep_gs_sim                           true
% 3.93/0.99  --prep_unflatten                        true
% 3.93/0.99  --prep_res_sim                          true
% 3.93/0.99  --prep_upred                            true
% 3.93/0.99  --prep_sem_filter                       exhaustive
% 3.93/0.99  --prep_sem_filter_out                   false
% 3.93/0.99  --pred_elim                             true
% 3.93/0.99  --res_sim_input                         true
% 3.93/0.99  --eq_ax_congr_red                       true
% 3.93/0.99  --pure_diseq_elim                       true
% 3.93/0.99  --brand_transform                       false
% 3.93/0.99  --non_eq_to_eq                          false
% 3.93/0.99  --prep_def_merge                        true
% 3.93/0.99  --prep_def_merge_prop_impl              false
% 3.93/0.99  --prep_def_merge_mbd                    true
% 3.93/0.99  --prep_def_merge_tr_red                 false
% 3.93/0.99  --prep_def_merge_tr_cl                  false
% 3.93/0.99  --smt_preprocessing                     true
% 3.93/0.99  --smt_ac_axioms                         fast
% 3.93/0.99  --preprocessed_out                      false
% 3.93/0.99  --preprocessed_stats                    false
% 3.93/0.99  
% 3.93/0.99  ------ Abstraction refinement Options
% 3.93/0.99  
% 3.93/0.99  --abstr_ref                             []
% 3.93/0.99  --abstr_ref_prep                        false
% 3.93/0.99  --abstr_ref_until_sat                   false
% 3.93/0.99  --abstr_ref_sig_restrict                funpre
% 3.93/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.93/0.99  --abstr_ref_under                       []
% 3.93/0.99  
% 3.93/0.99  ------ SAT Options
% 3.93/0.99  
% 3.93/0.99  --sat_mode                              false
% 3.93/0.99  --sat_fm_restart_options                ""
% 3.93/0.99  --sat_gr_def                            false
% 3.93/0.99  --sat_epr_types                         true
% 3.93/0.99  --sat_non_cyclic_types                  false
% 3.93/0.99  --sat_finite_models                     false
% 3.93/0.99  --sat_fm_lemmas                         false
% 3.93/0.99  --sat_fm_prep                           false
% 3.93/0.99  --sat_fm_uc_incr                        true
% 3.93/0.99  --sat_out_model                         small
% 3.93/0.99  --sat_out_clauses                       false
% 3.93/0.99  
% 3.93/0.99  ------ QBF Options
% 3.93/0.99  
% 3.93/0.99  --qbf_mode                              false
% 3.93/0.99  --qbf_elim_univ                         false
% 3.93/0.99  --qbf_dom_inst                          none
% 3.93/0.99  --qbf_dom_pre_inst                      false
% 3.93/0.99  --qbf_sk_in                             false
% 3.93/0.99  --qbf_pred_elim                         true
% 3.93/0.99  --qbf_split                             512
% 3.93/0.99  
% 3.93/0.99  ------ BMC1 Options
% 3.93/0.99  
% 3.93/0.99  --bmc1_incremental                      false
% 3.93/0.99  --bmc1_axioms                           reachable_all
% 3.93/0.99  --bmc1_min_bound                        0
% 3.93/0.99  --bmc1_max_bound                        -1
% 3.93/0.99  --bmc1_max_bound_default                -1
% 3.93/0.99  --bmc1_symbol_reachability              true
% 3.93/0.99  --bmc1_property_lemmas                  false
% 3.93/0.99  --bmc1_k_induction                      false
% 3.93/0.99  --bmc1_non_equiv_states                 false
% 3.93/0.99  --bmc1_deadlock                         false
% 3.93/0.99  --bmc1_ucm                              false
% 3.93/0.99  --bmc1_add_unsat_core                   none
% 3.93/0.99  --bmc1_unsat_core_children              false
% 3.93/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.93/0.99  --bmc1_out_stat                         full
% 3.93/0.99  --bmc1_ground_init                      false
% 3.93/0.99  --bmc1_pre_inst_next_state              false
% 3.93/0.99  --bmc1_pre_inst_state                   false
% 3.93/0.99  --bmc1_pre_inst_reach_state             false
% 3.93/0.99  --bmc1_out_unsat_core                   false
% 3.93/0.99  --bmc1_aig_witness_out                  false
% 3.93/0.99  --bmc1_verbose                          false
% 3.93/0.99  --bmc1_dump_clauses_tptp                false
% 3.93/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.93/0.99  --bmc1_dump_file                        -
% 3.93/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.93/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.93/0.99  --bmc1_ucm_extend_mode                  1
% 3.93/0.99  --bmc1_ucm_init_mode                    2
% 3.93/0.99  --bmc1_ucm_cone_mode                    none
% 3.93/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.93/0.99  --bmc1_ucm_relax_model                  4
% 3.93/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.93/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.93/0.99  --bmc1_ucm_layered_model                none
% 3.93/0.99  --bmc1_ucm_max_lemma_size               10
% 3.93/0.99  
% 3.93/0.99  ------ AIG Options
% 3.93/0.99  
% 3.93/0.99  --aig_mode                              false
% 3.93/0.99  
% 3.93/0.99  ------ Instantiation Options
% 3.93/0.99  
% 3.93/0.99  --instantiation_flag                    true
% 3.93/0.99  --inst_sos_flag                         true
% 3.93/0.99  --inst_sos_phase                        true
% 3.93/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.93/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.93/0.99  --inst_lit_sel_side                     none
% 3.93/0.99  --inst_solver_per_active                1400
% 3.93/0.99  --inst_solver_calls_frac                1.
% 3.93/0.99  --inst_passive_queue_type               priority_queues
% 3.93/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.93/0.99  --inst_passive_queues_freq              [25;2]
% 3.93/0.99  --inst_dismatching                      true
% 3.93/0.99  --inst_eager_unprocessed_to_passive     true
% 3.93/0.99  --inst_prop_sim_given                   true
% 3.93/0.99  --inst_prop_sim_new                     false
% 3.93/0.99  --inst_subs_new                         false
% 3.93/0.99  --inst_eq_res_simp                      false
% 3.93/0.99  --inst_subs_given                       false
% 3.93/0.99  --inst_orphan_elimination               true
% 3.93/0.99  --inst_learning_loop_flag               true
% 3.93/0.99  --inst_learning_start                   3000
% 3.93/0.99  --inst_learning_factor                  2
% 3.93/0.99  --inst_start_prop_sim_after_learn       3
% 3.93/0.99  --inst_sel_renew                        solver
% 3.93/0.99  --inst_lit_activity_flag                true
% 3.93/0.99  --inst_restr_to_given                   false
% 3.93/0.99  --inst_activity_threshold               500
% 3.93/0.99  --inst_out_proof                        true
% 3.93/0.99  
% 3.93/0.99  ------ Resolution Options
% 3.93/0.99  
% 3.93/0.99  --resolution_flag                       false
% 3.93/0.99  --res_lit_sel                           adaptive
% 3.93/0.99  --res_lit_sel_side                      none
% 3.93/0.99  --res_ordering                          kbo
% 3.93/0.99  --res_to_prop_solver                    active
% 3.93/0.99  --res_prop_simpl_new                    false
% 3.93/0.99  --res_prop_simpl_given                  true
% 3.93/0.99  --res_passive_queue_type                priority_queues
% 3.93/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.93/0.99  --res_passive_queues_freq               [15;5]
% 3.93/0.99  --res_forward_subs                      full
% 3.93/0.99  --res_backward_subs                     full
% 3.93/0.99  --res_forward_subs_resolution           true
% 3.93/0.99  --res_backward_subs_resolution          true
% 3.93/0.99  --res_orphan_elimination                true
% 3.93/0.99  --res_time_limit                        2.
% 3.93/0.99  --res_out_proof                         true
% 3.93/0.99  
% 3.93/0.99  ------ Superposition Options
% 3.93/0.99  
% 3.93/0.99  --superposition_flag                    true
% 3.93/0.99  --sup_passive_queue_type                priority_queues
% 3.93/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.93/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.93/0.99  --demod_completeness_check              fast
% 3.93/0.99  --demod_use_ground                      true
% 3.93/0.99  --sup_to_prop_solver                    passive
% 3.93/0.99  --sup_prop_simpl_new                    true
% 3.93/0.99  --sup_prop_simpl_given                  true
% 3.93/0.99  --sup_fun_splitting                     true
% 3.93/0.99  --sup_smt_interval                      50000
% 3.93/0.99  
% 3.93/0.99  ------ Superposition Simplification Setup
% 3.93/0.99  
% 3.93/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.93/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.93/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.93/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.93/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.93/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.93/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.93/0.99  --sup_immed_triv                        [TrivRules]
% 3.93/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.93/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.93/0.99  --sup_immed_bw_main                     []
% 3.93/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.93/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.93/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.93/0.99  --sup_input_bw                          []
% 3.93/0.99  
% 3.93/0.99  ------ Combination Options
% 3.93/0.99  
% 3.93/0.99  --comb_res_mult                         3
% 3.93/0.99  --comb_sup_mult                         2
% 3.93/0.99  --comb_inst_mult                        10
% 3.93/0.99  
% 3.93/0.99  ------ Debug Options
% 3.93/0.99  
% 3.93/0.99  --dbg_backtrace                         false
% 3.93/0.99  --dbg_dump_prop_clauses                 false
% 3.93/0.99  --dbg_dump_prop_clauses_file            -
% 3.93/0.99  --dbg_out_stat                          false
% 3.93/0.99  
% 3.93/0.99  
% 3.93/0.99  
% 3.93/0.99  
% 3.93/0.99  ------ Proving...
% 3.93/0.99  
% 3.93/0.99  
% 3.93/0.99  % SZS status Theorem for theBenchmark.p
% 3.93/0.99  
% 3.93/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.93/0.99  
% 3.93/0.99  fof(f1,axiom,(
% 3.93/0.99    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f46,plain,(
% 3.93/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 3.93/0.99    inference(cnf_transformation,[],[f1])).
% 3.93/0.99  
% 3.93/0.99  fof(f15,conjecture,(
% 3.93/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (r1_tarski(X1,k3_subset_1(X0,X1)) <=> k1_subset_1(X0) = X1))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f16,negated_conjecture,(
% 3.93/0.99    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => (r1_tarski(X1,k3_subset_1(X0,X1)) <=> k1_subset_1(X0) = X1))),
% 3.93/0.99    inference(negated_conjecture,[],[f15])).
% 3.93/0.99  
% 3.93/0.99  fof(f23,plain,(
% 3.93/0.99    ? [X0,X1] : ((r1_tarski(X1,k3_subset_1(X0,X1)) <~> k1_subset_1(X0) = X1) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.93/0.99    inference(ennf_transformation,[],[f16])).
% 3.93/0.99  
% 3.93/0.99  fof(f42,plain,(
% 3.93/0.99    ? [X0,X1] : (((k1_subset_1(X0) != X1 | ~r1_tarski(X1,k3_subset_1(X0,X1))) & (k1_subset_1(X0) = X1 | r1_tarski(X1,k3_subset_1(X0,X1)))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.93/0.99    inference(nnf_transformation,[],[f23])).
% 3.93/0.99  
% 3.93/0.99  fof(f43,plain,(
% 3.93/0.99    ? [X0,X1] : ((k1_subset_1(X0) != X1 | ~r1_tarski(X1,k3_subset_1(X0,X1))) & (k1_subset_1(X0) = X1 | r1_tarski(X1,k3_subset_1(X0,X1))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.93/0.99    inference(flattening,[],[f42])).
% 3.93/0.99  
% 3.93/0.99  fof(f44,plain,(
% 3.93/0.99    ? [X0,X1] : ((k1_subset_1(X0) != X1 | ~r1_tarski(X1,k3_subset_1(X0,X1))) & (k1_subset_1(X0) = X1 | r1_tarski(X1,k3_subset_1(X0,X1))) & m1_subset_1(X1,k1_zfmisc_1(X0))) => ((k1_subset_1(sK4) != sK5 | ~r1_tarski(sK5,k3_subset_1(sK4,sK5))) & (k1_subset_1(sK4) = sK5 | r1_tarski(sK5,k3_subset_1(sK4,sK5))) & m1_subset_1(sK5,k1_zfmisc_1(sK4)))),
% 3.93/0.99    introduced(choice_axiom,[])).
% 3.93/0.99  
% 3.93/0.99  fof(f45,plain,(
% 3.93/0.99    (k1_subset_1(sK4) != sK5 | ~r1_tarski(sK5,k3_subset_1(sK4,sK5))) & (k1_subset_1(sK4) = sK5 | r1_tarski(sK5,k3_subset_1(sK4,sK5))) & m1_subset_1(sK5,k1_zfmisc_1(sK4))),
% 3.93/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5])],[f43,f44])).
% 3.93/0.99  
% 3.93/0.99  fof(f77,plain,(
% 3.93/0.99    m1_subset_1(sK5,k1_zfmisc_1(sK4))),
% 3.93/0.99    inference(cnf_transformation,[],[f45])).
% 3.93/0.99  
% 3.93/0.99  fof(f11,axiom,(
% 3.93/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X0,X1) = k3_subset_1(X0,X1))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f20,plain,(
% 3.93/0.99    ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.93/0.99    inference(ennf_transformation,[],[f11])).
% 3.93/0.99  
% 3.93/0.99  fof(f73,plain,(
% 3.93/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.93/0.99    inference(cnf_transformation,[],[f20])).
% 3.93/0.99  
% 3.93/0.99  fof(f6,axiom,(
% 3.93/0.99    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f62,plain,(
% 3.93/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.93/0.99    inference(cnf_transformation,[],[f6])).
% 3.93/0.99  
% 3.93/0.99  fof(f88,plain,(
% 3.93/0.99    ( ! [X0,X1] : (k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.93/0.99    inference(definition_unfolding,[],[f73,f62])).
% 3.93/0.99  
% 3.93/0.99  fof(f9,axiom,(
% 3.93/0.99    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f19,plain,(
% 3.93/0.99    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 3.93/0.99    inference(ennf_transformation,[],[f9])).
% 3.93/0.99  
% 3.93/0.99  fof(f41,plain,(
% 3.93/0.99    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 3.93/0.99    inference(nnf_transformation,[],[f19])).
% 3.93/0.99  
% 3.93/0.99  fof(f68,plain,(
% 3.93/0.99    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 3.93/0.99    inference(cnf_transformation,[],[f41])).
% 3.93/0.99  
% 3.93/0.99  fof(f8,axiom,(
% 3.93/0.99    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f37,plain,(
% 3.93/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 3.93/0.99    inference(nnf_transformation,[],[f8])).
% 3.93/0.99  
% 3.93/0.99  fof(f38,plain,(
% 3.93/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 3.93/0.99    inference(rectify,[],[f37])).
% 3.93/0.99  
% 3.93/0.99  fof(f39,plain,(
% 3.93/0.99    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK3(X0,X1),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (r1_tarski(sK3(X0,X1),X0) | r2_hidden(sK3(X0,X1),X1))))),
% 3.93/0.99    introduced(choice_axiom,[])).
% 3.93/0.99  
% 3.93/0.99  fof(f40,plain,(
% 3.93/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK3(X0,X1),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (r1_tarski(sK3(X0,X1),X0) | r2_hidden(sK3(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 3.93/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f38,f39])).
% 3.93/0.99  
% 3.93/0.99  fof(f64,plain,(
% 3.93/0.99    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 3.93/0.99    inference(cnf_transformation,[],[f40])).
% 3.93/0.99  
% 3.93/0.99  fof(f98,plain,(
% 3.93/0.99    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 3.93/0.99    inference(equality_resolution,[],[f64])).
% 3.93/0.99  
% 3.93/0.99  fof(f7,axiom,(
% 3.93/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f18,plain,(
% 3.93/0.99    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 3.93/0.99    inference(ennf_transformation,[],[f7])).
% 3.93/0.99  
% 3.93/0.99  fof(f63,plain,(
% 3.93/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 3.93/0.99    inference(cnf_transformation,[],[f18])).
% 3.93/0.99  
% 3.93/0.99  fof(f13,axiom,(
% 3.93/0.99    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f75,plain,(
% 3.93/0.99    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 3.93/0.99    inference(cnf_transformation,[],[f13])).
% 3.93/0.99  
% 3.93/0.99  fof(f12,axiom,(
% 3.93/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f21,plain,(
% 3.93/0.99    ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.93/0.99    inference(ennf_transformation,[],[f12])).
% 3.93/0.99  
% 3.93/0.99  fof(f74,plain,(
% 3.93/0.99    ( ! [X0,X1] : (m1_subset_1(k3_subset_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.93/0.99    inference(cnf_transformation,[],[f21])).
% 3.93/0.99  
% 3.93/0.99  fof(f4,axiom,(
% 3.93/0.99    ! [X0] : ~(! [X1] : ~r2_hidden(X1,X0) & k1_xboole_0 != X0)),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f17,plain,(
% 3.93/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) | k1_xboole_0 = X0)),
% 3.93/0.99    inference(ennf_transformation,[],[f4])).
% 3.93/0.99  
% 3.93/0.99  fof(f34,plain,(
% 3.93/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK2(X0),X0))),
% 3.93/0.99    introduced(choice_axiom,[])).
% 3.93/0.99  
% 3.93/0.99  fof(f35,plain,(
% 3.93/0.99    ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0)),
% 3.93/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f17,f34])).
% 3.93/0.99  
% 3.93/0.99  fof(f59,plain,(
% 3.93/0.99    ( ! [X0] : (r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0) )),
% 3.93/0.99    inference(cnf_transformation,[],[f35])).
% 3.93/0.99  
% 3.93/0.99  fof(f78,plain,(
% 3.93/0.99    k1_subset_1(sK4) = sK5 | r1_tarski(sK5,k3_subset_1(sK4,sK5))),
% 3.93/0.99    inference(cnf_transformation,[],[f45])).
% 3.93/0.99  
% 3.93/0.99  fof(f10,axiom,(
% 3.93/0.99    ! [X0] : k1_xboole_0 = k1_subset_1(X0)),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f72,plain,(
% 3.93/0.99    ( ! [X0] : (k1_xboole_0 = k1_subset_1(X0)) )),
% 3.93/0.99    inference(cnf_transformation,[],[f10])).
% 3.93/0.99  
% 3.93/0.99  fof(f90,plain,(
% 3.93/0.99    k1_xboole_0 = sK5 | r1_tarski(sK5,k3_subset_1(sK4,sK5))),
% 3.93/0.99    inference(definition_unfolding,[],[f78,f72])).
% 3.93/0.99  
% 3.93/0.99  fof(f3,axiom,(
% 3.93/0.99    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f29,plain,(
% 3.93/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.93/0.99    inference(nnf_transformation,[],[f3])).
% 3.93/0.99  
% 3.93/0.99  fof(f30,plain,(
% 3.93/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.93/0.99    inference(flattening,[],[f29])).
% 3.93/0.99  
% 3.93/0.99  fof(f31,plain,(
% 3.93/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.93/0.99    inference(rectify,[],[f30])).
% 3.93/0.99  
% 3.93/0.99  fof(f32,plain,(
% 3.93/0.99    ! [X2,X1,X0] : (? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((r2_hidden(sK1(X0,X1,X2),X1) | ~r2_hidden(sK1(X0,X1,X2),X0) | ~r2_hidden(sK1(X0,X1,X2),X2)) & ((~r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(sK1(X0,X1,X2),X0)) | r2_hidden(sK1(X0,X1,X2),X2))))),
% 3.93/0.99    introduced(choice_axiom,[])).
% 3.93/0.99  
% 3.93/0.99  fof(f33,plain,(
% 3.93/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ((r2_hidden(sK1(X0,X1,X2),X1) | ~r2_hidden(sK1(X0,X1,X2),X0) | ~r2_hidden(sK1(X0,X1,X2),X2)) & ((~r2_hidden(sK1(X0,X1,X2),X1) & r2_hidden(sK1(X0,X1,X2),X0)) | r2_hidden(sK1(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 3.93/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f31,f32])).
% 3.93/0.99  
% 3.93/0.99  fof(f54,plain,(
% 3.93/0.99    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 3.93/0.99    inference(cnf_transformation,[],[f33])).
% 3.93/0.99  
% 3.93/0.99  fof(f84,plain,(
% 3.93/0.99    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != X2) )),
% 3.93/0.99    inference(definition_unfolding,[],[f54,f62])).
% 3.93/0.99  
% 3.93/0.99  fof(f95,plain,(
% 3.93/0.99    ( ! [X4,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,k5_xboole_0(X0,k3_xboole_0(X0,X1)))) )),
% 3.93/0.99    inference(equality_resolution,[],[f84])).
% 3.93/0.99  
% 3.93/0.99  fof(f2,axiom,(
% 3.93/0.99    ! [X0,X1,X2] : (k3_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f24,plain,(
% 3.93/0.99    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.93/0.99    inference(nnf_transformation,[],[f2])).
% 3.93/0.99  
% 3.93/0.99  fof(f25,plain,(
% 3.93/0.99    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.93/0.99    inference(flattening,[],[f24])).
% 3.93/0.99  
% 3.93/0.99  fof(f26,plain,(
% 3.93/0.99    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.93/0.99    inference(rectify,[],[f25])).
% 3.93/0.99  
% 3.93/0.99  fof(f27,plain,(
% 3.93/0.99    ! [X2,X1,X0] : (? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((~r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 3.93/0.99    introduced(choice_axiom,[])).
% 3.93/0.99  
% 3.93/0.99  fof(f28,plain,(
% 3.93/0.99    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ((~r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.93/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f26,f27])).
% 3.93/0.99  
% 3.93/0.99  fof(f48,plain,(
% 3.93/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k3_xboole_0(X0,X1) != X2) )),
% 3.93/0.99    inference(cnf_transformation,[],[f28])).
% 3.93/0.99  
% 3.93/0.99  fof(f92,plain,(
% 3.93/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,X1) | ~r2_hidden(X4,k3_xboole_0(X0,X1))) )),
% 3.93/0.99    inference(equality_resolution,[],[f48])).
% 3.93/0.99  
% 3.93/0.99  fof(f14,axiom,(
% 3.93/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k3_subset_1(X0,k3_subset_1(X0,X1)) = X1)),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f22,plain,(
% 3.93/0.99    ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.93/0.99    inference(ennf_transformation,[],[f14])).
% 3.93/0.99  
% 3.93/0.99  fof(f76,plain,(
% 3.93/0.99    ( ! [X0,X1] : (k3_subset_1(X0,k3_subset_1(X0,X1)) = X1 | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.93/0.99    inference(cnf_transformation,[],[f22])).
% 3.93/0.99  
% 3.93/0.99  fof(f5,axiom,(
% 3.93/0.99    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 3.93/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.93/0.99  
% 3.93/0.99  fof(f36,plain,(
% 3.93/0.99    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 3.93/0.99    inference(nnf_transformation,[],[f5])).
% 3.93/0.99  
% 3.93/0.99  fof(f60,plain,(
% 3.93/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0) )),
% 3.93/0.99    inference(cnf_transformation,[],[f36])).
% 3.93/0.99  
% 3.93/0.99  fof(f87,plain,(
% 3.93/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | k1_xboole_0 != k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.93/0.99    inference(definition_unfolding,[],[f60,f62])).
% 3.93/0.99  
% 3.93/0.99  fof(f79,plain,(
% 3.93/0.99    k1_subset_1(sK4) != sK5 | ~r1_tarski(sK5,k3_subset_1(sK4,sK5))),
% 3.93/0.99    inference(cnf_transformation,[],[f45])).
% 3.93/0.99  
% 3.93/0.99  fof(f89,plain,(
% 3.93/0.99    k1_xboole_0 != sK5 | ~r1_tarski(sK5,k3_subset_1(sK4,sK5))),
% 3.93/0.99    inference(definition_unfolding,[],[f79,f72])).
% 3.93/0.99  
% 3.93/0.99  fof(f61,plain,(
% 3.93/0.99    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 3.93/0.99    inference(cnf_transformation,[],[f36])).
% 3.93/0.99  
% 3.93/0.99  fof(f86,plain,(
% 3.93/0.99    ( ! [X0,X1] : (k1_xboole_0 = k5_xboole_0(X0,k3_xboole_0(X0,X1)) | ~r1_tarski(X0,X1)) )),
% 3.93/0.99    inference(definition_unfolding,[],[f61,f62])).
% 3.93/0.99  
% 3.93/0.99  cnf(c_0,plain,
% 3.93/0.99      ( k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
% 3.93/0.99      inference(cnf_transformation,[],[f46]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_31,negated_conjecture,
% 3.93/0.99      ( m1_subset_1(sK5,k1_zfmisc_1(sK4)) ),
% 3.93/0.99      inference(cnf_transformation,[],[f77]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_1342,plain,
% 3.93/0.99      ( m1_subset_1(sK5,k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/0.99      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_25,plain,
% 3.93/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.93/0.99      | k5_xboole_0(X1,k3_xboole_0(X1,X0)) = k3_subset_1(X1,X0) ),
% 3.93/0.99      inference(cnf_transformation,[],[f88]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_1348,plain,
% 3.93/0.99      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k3_subset_1(X0,X1)
% 3.93/0.99      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 3.93/0.99      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_3010,plain,
% 3.93/0.99      ( k5_xboole_0(sK4,k3_xboole_0(sK4,sK5)) = k3_subset_1(sK4,sK5) ),
% 3.93/0.99      inference(superposition,[status(thm)],[c_1342,c_1348]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_3384,plain,
% 3.93/0.99      ( k5_xboole_0(sK4,k3_xboole_0(sK5,sK4)) = k3_subset_1(sK4,sK5) ),
% 3.93/0.99      inference(superposition,[status(thm)],[c_0,c_3010]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_24,plain,
% 3.93/0.99      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.93/0.99      inference(cnf_transformation,[],[f68]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_1349,plain,
% 3.93/0.99      ( m1_subset_1(X0,X1) != iProver_top
% 3.93/0.99      | r2_hidden(X0,X1) = iProver_top
% 3.93/0.99      | v1_xboole_0(X1) = iProver_top ),
% 3.93/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_2288,plain,
% 3.93/0.99      ( r2_hidden(sK5,k1_zfmisc_1(sK4)) = iProver_top
% 3.93/0.99      | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/0.99      inference(superposition,[status(thm)],[c_1342,c_1349]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_20,plain,
% 3.93/0.99      ( r1_tarski(X0,X1) | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
% 3.93/0.99      inference(cnf_transformation,[],[f98]) ).
% 3.93/0.99  
% 3.93/0.99  cnf(c_1353,plain,
% 3.93/0.99      ( r1_tarski(X0,X1) = iProver_top
% 3.93/0.99      | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
% 3.93/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_2602,plain,
% 3.93/1.00      ( r1_tarski(sK5,sK4) = iProver_top
% 3.93/1.00      | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_2288,c_1353]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_16,plain,
% 3.93/1.00      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 3.93/1.00      inference(cnf_transformation,[],[f63]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1357,plain,
% 3.93/1.00      ( k3_xboole_0(X0,X1) = X0 | r1_tarski(X0,X1) != iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_2662,plain,
% 3.93/1.00      ( k3_xboole_0(sK5,sK4) = sK5
% 3.93/1.00      | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_2602,c_1357]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_27,plain,
% 3.93/1.00      ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
% 3.93/1.00      inference(cnf_transformation,[],[f75]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1346,plain,
% 3.93/1.00      ( v1_xboole_0(k1_zfmisc_1(X0)) != iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_2916,plain,
% 3.93/1.00      ( k3_xboole_0(sK5,sK4) = sK5 ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_2662,c_1346]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_3389,plain,
% 3.93/1.00      ( k3_subset_1(sK4,sK5) = k5_xboole_0(sK4,sK5) ),
% 3.93/1.00      inference(light_normalisation,[status(thm)],[c_3384,c_2916]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_26,plain,
% 3.93/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.93/1.00      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) ),
% 3.93/1.00      inference(cnf_transformation,[],[f74]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1347,plain,
% 3.93/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.93/1.00      | m1_subset_1(k3_subset_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_3648,plain,
% 3.93/1.00      ( m1_subset_1(k5_xboole_0(sK4,sK5),k1_zfmisc_1(sK4)) = iProver_top
% 3.93/1.00      | m1_subset_1(sK5,k1_zfmisc_1(sK4)) != iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_3389,c_1347]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_32,plain,
% 3.93/1.00      ( m1_subset_1(sK5,k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7950,plain,
% 3.93/1.00      ( m1_subset_1(k5_xboole_0(sK4,sK5),k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(global_propositional_subsumption,
% 3.93/1.00                [status(thm)],
% 3.93/1.00                [c_3648,c_32]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_13,plain,
% 3.93/1.00      ( r2_hidden(sK2(X0),X0) | k1_xboole_0 = X0 ),
% 3.93/1.00      inference(cnf_transformation,[],[f59]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1360,plain,
% 3.93/1.00      ( k1_xboole_0 = X0 | r2_hidden(sK2(X0),X0) = iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_30,negated_conjecture,
% 3.93/1.00      ( r1_tarski(sK5,k3_subset_1(sK4,sK5)) | k1_xboole_0 = sK5 ),
% 3.93/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1343,plain,
% 3.93/1.00      ( k1_xboole_0 = sK5
% 3.93/1.00      | r1_tarski(sK5,k3_subset_1(sK4,sK5)) = iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1524,plain,
% 3.93/1.00      ( k3_xboole_0(sK5,k3_subset_1(sK4,sK5)) = sK5 | sK5 = k1_xboole_0 ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_1343,c_1357]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_3636,plain,
% 3.93/1.00      ( k3_xboole_0(sK5,k5_xboole_0(sK4,sK5)) = sK5 | sK5 = k1_xboole_0 ),
% 3.93/1.00      inference(demodulation,[status(thm)],[c_3389,c_1524]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_11,plain,
% 3.93/1.00      ( ~ r2_hidden(X0,X1)
% 3.93/1.00      | ~ r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X2,X1))) ),
% 3.93/1.00      inference(cnf_transformation,[],[f95]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1362,plain,
% 3.93/1.00      ( r2_hidden(X0,X1) != iProver_top
% 3.93/1.00      | r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X2,X1))) != iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_3371,plain,
% 3.93/1.00      ( r2_hidden(X0,X1) != iProver_top
% 3.93/1.00      | r2_hidden(X0,k5_xboole_0(X2,k3_xboole_0(X1,X2))) != iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_0,c_1362]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_4285,plain,
% 3.93/1.00      ( sK5 = k1_xboole_0
% 3.93/1.00      | r2_hidden(X0,k5_xboole_0(k5_xboole_0(sK4,sK5),sK5)) != iProver_top
% 3.93/1.00      | r2_hidden(X0,sK5) != iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_3636,c_3371]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_3393,plain,
% 3.93/1.00      ( k5_xboole_0(sK4,k3_xboole_0(sK4,sK5)) = k5_xboole_0(sK4,sK5) ),
% 3.93/1.00      inference(demodulation,[status(thm)],[c_3389,c_3010]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_3510,plain,
% 3.93/1.00      ( r2_hidden(X0,k5_xboole_0(sK4,sK5)) != iProver_top
% 3.93/1.00      | r2_hidden(X0,sK5) != iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_3393,c_1362]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_5,plain,
% 3.93/1.00      ( r2_hidden(X0,X1) | ~ r2_hidden(X0,k3_xboole_0(X2,X1)) ),
% 3.93/1.00      inference(cnf_transformation,[],[f92]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1368,plain,
% 3.93/1.00      ( r2_hidden(X0,X1) = iProver_top
% 3.93/1.00      | r2_hidden(X0,k3_xboole_0(X2,X1)) != iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_2202,plain,
% 3.93/1.00      ( sK5 = k1_xboole_0
% 3.93/1.00      | r2_hidden(X0,k3_subset_1(sK4,sK5)) = iProver_top
% 3.93/1.00      | r2_hidden(X0,sK5) != iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_1524,c_1368]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_3633,plain,
% 3.93/1.00      ( sK5 = k1_xboole_0
% 3.93/1.00      | r2_hidden(X0,k5_xboole_0(sK4,sK5)) = iProver_top
% 3.93/1.00      | r2_hidden(X0,sK5) != iProver_top ),
% 3.93/1.00      inference(demodulation,[status(thm)],[c_3389,c_2202]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_4502,plain,
% 3.93/1.00      ( sK5 = k1_xboole_0 | r2_hidden(X0,sK5) != iProver_top ),
% 3.93/1.00      inference(global_propositional_subsumption,
% 3.93/1.00                [status(thm)],
% 3.93/1.00                [c_4285,c_3510,c_3633]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_4508,plain,
% 3.93/1.00      ( sK5 = k1_xboole_0 ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_1360,c_4502]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7954,plain,
% 3.93/1.00      ( m1_subset_1(k5_xboole_0(sK4,k1_xboole_0),k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(light_normalisation,[status(thm)],[c_7950,c_4508]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7957,plain,
% 3.93/1.00      ( r2_hidden(k5_xboole_0(sK4,k1_xboole_0),k1_zfmisc_1(sK4)) = iProver_top
% 3.93/1.00      | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_7954,c_1349]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_11776,plain,
% 3.93/1.00      ( r1_tarski(k5_xboole_0(sK4,k1_xboole_0),sK4) = iProver_top
% 3.93/1.00      | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_7957,c_1353]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_12235,plain,
% 3.93/1.00      ( k3_xboole_0(k5_xboole_0(sK4,k1_xboole_0),sK4) = k5_xboole_0(sK4,k1_xboole_0)
% 3.93/1.00      | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_11776,c_1357]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_15190,plain,
% 3.93/1.00      ( k3_xboole_0(k5_xboole_0(sK4,k1_xboole_0),sK4) = k5_xboole_0(sK4,k1_xboole_0) ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_12235,c_1346]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_15206,plain,
% 3.93/1.00      ( k3_xboole_0(sK4,k5_xboole_0(sK4,k1_xboole_0)) = k5_xboole_0(sK4,k1_xboole_0) ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_15190,c_0]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7958,plain,
% 3.93/1.00      ( k5_xboole_0(sK4,k3_xboole_0(sK4,k5_xboole_0(sK4,k1_xboole_0))) = k3_subset_1(sK4,k5_xboole_0(sK4,k1_xboole_0)) ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_7954,c_1348]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_28,plain,
% 3.93/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.93/1.00      | k3_subset_1(X1,k3_subset_1(X1,X0)) = X0 ),
% 3.93/1.00      inference(cnf_transformation,[],[f76]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1345,plain,
% 3.93/1.00      ( k3_subset_1(X0,k3_subset_1(X0,X1)) = X1
% 3.93/1.00      | m1_subset_1(X1,k1_zfmisc_1(X0)) != iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_2401,plain,
% 3.93/1.00      ( k3_subset_1(sK4,k3_subset_1(sK4,sK5)) = sK5 ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_1342,c_1345]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_3632,plain,
% 3.93/1.00      ( k3_subset_1(sK4,k5_xboole_0(sK4,sK5)) = sK5 ),
% 3.93/1.00      inference(demodulation,[status(thm)],[c_3389,c_2401]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_5847,plain,
% 3.93/1.00      ( k3_subset_1(sK4,k5_xboole_0(sK4,k1_xboole_0)) = k1_xboole_0 ),
% 3.93/1.00      inference(demodulation,[status(thm)],[c_4508,c_3632]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7961,plain,
% 3.93/1.00      ( k5_xboole_0(sK4,k3_xboole_0(sK4,k5_xboole_0(sK4,k1_xboole_0))) = k1_xboole_0 ),
% 3.93/1.00      inference(light_normalisation,[status(thm)],[c_7958,c_5847]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_15,plain,
% 3.93/1.00      ( r1_tarski(X0,X1)
% 3.93/1.00      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) != k1_xboole_0 ),
% 3.93/1.00      inference(cnf_transformation,[],[f87]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1358,plain,
% 3.93/1.00      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) != k1_xboole_0
% 3.93/1.00      | r1_tarski(X0,X1) = iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7963,plain,
% 3.93/1.00      ( r1_tarski(sK4,k5_xboole_0(sK4,k1_xboole_0)) = iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_7961,c_1358]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_8781,plain,
% 3.93/1.00      ( k3_xboole_0(sK4,k5_xboole_0(sK4,k1_xboole_0)) = sK4 ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_7963,c_1357]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_15224,plain,
% 3.93/1.00      ( k5_xboole_0(sK4,k1_xboole_0) = sK4 ),
% 3.93/1.00      inference(light_normalisation,[status(thm)],[c_15206,c_8781]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_29,negated_conjecture,
% 3.93/1.00      ( ~ r1_tarski(sK5,k3_subset_1(sK4,sK5)) | k1_xboole_0 != sK5 ),
% 3.93/1.00      inference(cnf_transformation,[],[f89]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1344,plain,
% 3.93/1.00      ( k1_xboole_0 != sK5
% 3.93/1.00      | r1_tarski(sK5,k3_subset_1(sK4,sK5)) != iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_3638,plain,
% 3.93/1.00      ( sK5 != k1_xboole_0
% 3.93/1.00      | r1_tarski(sK5,k5_xboole_0(sK4,sK5)) != iProver_top ),
% 3.93/1.00      inference(demodulation,[status(thm)],[c_3389,c_1344]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_5848,plain,
% 3.93/1.00      ( k1_xboole_0 != k1_xboole_0
% 3.93/1.00      | r1_tarski(k1_xboole_0,k5_xboole_0(sK4,k1_xboole_0)) != iProver_top ),
% 3.93/1.00      inference(demodulation,[status(thm)],[c_4508,c_3638]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_5855,plain,
% 3.93/1.00      ( r1_tarski(k1_xboole_0,k5_xboole_0(sK4,k1_xboole_0)) != iProver_top ),
% 3.93/1.00      inference(equality_resolution_simp,[status(thm)],[c_5848]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_15389,plain,
% 3.93/1.00      ( r1_tarski(k1_xboole_0,sK4) != iProver_top ),
% 3.93/1.00      inference(demodulation,[status(thm)],[c_15224,c_5855]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7022,plain,
% 3.93/1.00      ( k3_xboole_0(k1_xboole_0,sK4) = k1_xboole_0 ),
% 3.93/1.00      inference(light_normalisation,[status(thm)],[c_2916,c_2916,c_4508]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7026,plain,
% 3.93/1.00      ( k5_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 3.93/1.00      | r1_tarski(k1_xboole_0,sK4) = iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_7022,c_1358]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_14,plain,
% 3.93/1.00      ( ~ r1_tarski(X0,X1)
% 3.93/1.00      | k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0 ),
% 3.93/1.00      inference(cnf_transformation,[],[f86]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_1359,plain,
% 3.93/1.00      ( k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k1_xboole_0
% 3.93/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 3.93/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_2661,plain,
% 3.93/1.00      ( k5_xboole_0(sK5,k3_xboole_0(sK5,sK4)) = k1_xboole_0
% 3.93/1.00      | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_2602,c_1359]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_4689,plain,
% 3.93/1.00      ( k5_xboole_0(k1_xboole_0,sK5) = k1_xboole_0
% 3.93/1.00      | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(light_normalisation,[status(thm)],[c_2661,c_2916,c_4508]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_4690,plain,
% 3.93/1.00      ( k5_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0
% 3.93/1.00      | v1_xboole_0(k1_zfmisc_1(sK4)) = iProver_top ),
% 3.93/1.00      inference(demodulation,[status(thm)],[c_4689,c_4508]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_4692,plain,
% 3.93/1.00      ( k5_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 3.93/1.00      inference(superposition,[status(thm)],[c_4690,c_1346]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7042,plain,
% 3.93/1.00      ( k1_xboole_0 != k1_xboole_0
% 3.93/1.00      | r1_tarski(k1_xboole_0,sK4) = iProver_top ),
% 3.93/1.00      inference(light_normalisation,[status(thm)],[c_7026,c_4692]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(c_7043,plain,
% 3.93/1.00      ( r1_tarski(k1_xboole_0,sK4) = iProver_top ),
% 3.93/1.00      inference(equality_resolution_simp,[status(thm)],[c_7042]) ).
% 3.93/1.00  
% 3.93/1.00  cnf(contradiction,plain,
% 3.93/1.00      ( $false ),
% 3.93/1.00      inference(minisat,[status(thm)],[c_15389,c_7043]) ).
% 3.93/1.00  
% 3.93/1.00  
% 3.93/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.93/1.00  
% 3.93/1.00  ------                               Statistics
% 3.93/1.00  
% 3.93/1.00  ------ General
% 3.93/1.00  
% 3.93/1.00  abstr_ref_over_cycles:                  0
% 3.93/1.00  abstr_ref_under_cycles:                 0
% 3.93/1.00  gc_basic_clause_elim:                   0
% 3.93/1.00  forced_gc_time:                         0
% 3.93/1.00  parsing_time:                           0.012
% 3.93/1.00  unif_index_cands_time:                  0.
% 3.93/1.00  unif_index_add_time:                    0.
% 3.93/1.00  orderings_time:                         0.
% 3.93/1.00  out_proof_time:                         0.01
% 3.93/1.00  total_time:                             0.46
% 3.93/1.00  num_of_symbols:                         46
% 3.93/1.00  num_of_terms:                           19310
% 3.93/1.00  
% 3.93/1.00  ------ Preprocessing
% 3.93/1.00  
% 3.93/1.00  num_of_splits:                          0
% 3.93/1.00  num_of_split_atoms:                     0
% 3.93/1.00  num_of_reused_defs:                     0
% 3.93/1.00  num_eq_ax_congr_red:                    24
% 3.93/1.00  num_of_sem_filtered_clauses:            1
% 3.93/1.00  num_of_subtypes:                        0
% 3.93/1.00  monotx_restored_types:                  0
% 3.93/1.00  sat_num_of_epr_types:                   0
% 3.93/1.00  sat_num_of_non_cyclic_types:            0
% 3.93/1.00  sat_guarded_non_collapsed_types:        0
% 3.93/1.00  num_pure_diseq_elim:                    0
% 3.93/1.00  simp_replaced_by:                       0
% 3.93/1.00  res_preprocessed:                       115
% 3.93/1.00  prep_upred:                             0
% 3.93/1.00  prep_unflattend:                        22
% 3.93/1.00  smt_new_axioms:                         0
% 3.93/1.00  pred_elim_cands:                        4
% 3.93/1.00  pred_elim:                              0
% 3.93/1.00  pred_elim_cl:                           0
% 3.93/1.00  pred_elim_cycles:                       1
% 3.93/1.00  merged_defs:                            18
% 3.93/1.00  merged_defs_ncl:                        0
% 3.93/1.00  bin_hyper_res:                          18
% 3.93/1.00  prep_cycles:                            3
% 3.93/1.00  pred_elim_time:                         0.024
% 3.93/1.00  splitting_time:                         0.
% 3.93/1.00  sem_filter_time:                        0.
% 3.93/1.00  monotx_time:                            0.
% 3.93/1.00  subtype_inf_time:                       0.
% 3.93/1.00  
% 3.93/1.00  ------ Problem properties
% 3.93/1.00  
% 3.93/1.00  clauses:                                32
% 3.93/1.00  conjectures:                            3
% 3.93/1.00  epr:                                    4
% 3.93/1.00  horn:                                   21
% 3.93/1.00  ground:                                 3
% 3.93/1.00  unary:                                  3
% 3.93/1.00  binary:                                 15
% 3.93/1.00  lits:                                   77
% 3.93/1.00  lits_eq:                                17
% 3.93/1.00  fd_pure:                                0
% 3.93/1.00  fd_pseudo:                              0
% 3.93/1.00  fd_cond:                                1
% 3.93/1.00  fd_pseudo_cond:                         8
% 3.93/1.00  ac_symbols:                             0
% 3.93/1.00  
% 3.93/1.00  ------ Propositional Solver
% 3.93/1.00  
% 3.93/1.00  prop_solver_calls:                      28
% 3.93/1.00  prop_fast_solver_calls:                 974
% 3.93/1.00  smt_solver_calls:                       0
% 3.93/1.00  smt_fast_solver_calls:                  0
% 3.93/1.00  prop_num_of_clauses:                    7247
% 3.93/1.00  prop_preprocess_simplified:             16411
% 3.93/1.00  prop_fo_subsumed:                       16
% 3.93/1.00  prop_solver_time:                       0.
% 3.93/1.00  smt_solver_time:                        0.
% 3.93/1.00  smt_fast_solver_time:                   0.
% 3.93/1.00  prop_fast_solver_time:                  0.
% 3.93/1.00  prop_unsat_core_time:                   0.
% 3.93/1.00  
% 3.93/1.00  ------ QBF
% 3.93/1.00  
% 3.93/1.00  qbf_q_res:                              0
% 3.93/1.00  qbf_num_tautologies:                    0
% 3.93/1.00  qbf_prep_cycles:                        0
% 3.93/1.00  
% 3.93/1.00  ------ BMC1
% 3.93/1.00  
% 3.93/1.00  bmc1_current_bound:                     -1
% 3.93/1.00  bmc1_last_solved_bound:                 -1
% 3.93/1.00  bmc1_unsat_core_size:                   -1
% 3.93/1.00  bmc1_unsat_core_parents_size:           -1
% 3.93/1.00  bmc1_merge_next_fun:                    0
% 3.93/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.93/1.00  
% 3.93/1.00  ------ Instantiation
% 3.93/1.00  
% 3.93/1.00  inst_num_of_clauses:                    1841
% 3.93/1.00  inst_num_in_passive:                    1271
% 3.93/1.00  inst_num_in_active:                     487
% 3.93/1.00  inst_num_in_unprocessed:                84
% 3.93/1.00  inst_num_of_loops:                      690
% 3.93/1.00  inst_num_of_learning_restarts:          0
% 3.93/1.00  inst_num_moves_active_passive:          199
% 3.93/1.00  inst_lit_activity:                      0
% 3.93/1.00  inst_lit_activity_moves:                0
% 3.93/1.00  inst_num_tautologies:                   0
% 3.93/1.00  inst_num_prop_implied:                  0
% 3.93/1.00  inst_num_existing_simplified:           0
% 3.93/1.00  inst_num_eq_res_simplified:             0
% 3.93/1.00  inst_num_child_elim:                    0
% 3.93/1.00  inst_num_of_dismatching_blockings:      1190
% 3.93/1.00  inst_num_of_non_proper_insts:           1506
% 3.93/1.00  inst_num_of_duplicates:                 0
% 3.93/1.00  inst_inst_num_from_inst_to_res:         0
% 3.93/1.00  inst_dismatching_checking_time:         0.
% 3.93/1.00  
% 3.93/1.00  ------ Resolution
% 3.93/1.00  
% 3.93/1.00  res_num_of_clauses:                     0
% 3.93/1.00  res_num_in_passive:                     0
% 3.93/1.00  res_num_in_active:                      0
% 3.93/1.00  res_num_of_loops:                       118
% 3.93/1.00  res_forward_subset_subsumed:            69
% 3.93/1.00  res_backward_subset_subsumed:           2
% 3.93/1.00  res_forward_subsumed:                   0
% 3.93/1.00  res_backward_subsumed:                  0
% 3.93/1.00  res_forward_subsumption_resolution:     0
% 3.93/1.00  res_backward_subsumption_resolution:    0
% 3.93/1.00  res_clause_to_clause_subsumption:       1918
% 3.93/1.00  res_orphan_elimination:                 0
% 3.93/1.00  res_tautology_del:                      120
% 3.93/1.00  res_num_eq_res_simplified:              0
% 3.93/1.00  res_num_sel_changes:                    0
% 3.93/1.00  res_moves_from_active_to_pass:          0
% 3.93/1.00  
% 3.93/1.00  ------ Superposition
% 3.93/1.00  
% 3.93/1.00  sup_time_total:                         0.
% 3.93/1.00  sup_time_generating:                    0.
% 3.93/1.00  sup_time_sim_full:                      0.
% 3.93/1.00  sup_time_sim_immed:                     0.
% 3.93/1.00  
% 3.93/1.00  sup_num_of_clauses:                     437
% 3.93/1.00  sup_num_in_active:                      64
% 3.93/1.00  sup_num_in_passive:                     373
% 3.93/1.00  sup_num_of_loops:                       136
% 3.93/1.00  sup_fw_superposition:                   232
% 3.93/1.00  sup_bw_superposition:                   569
% 3.93/1.00  sup_immediate_simplified:               165
% 3.93/1.00  sup_given_eliminated:                   2
% 3.93/1.00  comparisons_done:                       0
% 3.93/1.00  comparisons_avoided:                    12
% 3.93/1.00  
% 3.93/1.00  ------ Simplifications
% 3.93/1.00  
% 3.93/1.00  
% 3.93/1.00  sim_fw_subset_subsumed:                 38
% 3.93/1.00  sim_bw_subset_subsumed:                 25
% 3.93/1.00  sim_fw_subsumed:                        55
% 3.93/1.00  sim_bw_subsumed:                        6
% 3.93/1.00  sim_fw_subsumption_res:                 0
% 3.93/1.00  sim_bw_subsumption_res:                 0
% 3.93/1.00  sim_tautology_del:                      53
% 3.93/1.00  sim_eq_tautology_del:                   29
% 3.93/1.00  sim_eq_res_simp:                        14
% 3.93/1.00  sim_fw_demodulated:                     17
% 3.93/1.00  sim_bw_demodulated:                     69
% 3.93/1.00  sim_light_normalised:                   79
% 3.93/1.00  sim_joinable_taut:                      0
% 3.93/1.00  sim_joinable_simp:                      0
% 3.93/1.00  sim_ac_normalised:                      0
% 3.93/1.00  sim_smt_subsumption:                    0
% 3.93/1.00  
%------------------------------------------------------------------------------
