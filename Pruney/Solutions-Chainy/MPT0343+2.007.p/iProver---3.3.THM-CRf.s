%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:38:55 EST 2020

% Result     : Theorem 3.70s
% Output     : CNFRefutation 3.70s
% Verified   : 
% Statistics : Number of formulae       :  141 (1499 expanded)
%              Number of clauses        :   84 ( 498 expanded)
%              Number of leaves         :   16 ( 306 expanded)
%              Depth                    :   25
%              Number of atoms          :  494 (8201 expanded)
%              Number of equality atoms :  154 (1413 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( k3_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
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
    inference(nnf_transformation,[],[f3])).

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
    inference(flattening,[],[f23])).

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
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f24])).

fof(f26,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ~ r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( ~ r2_hidden(sK2(X0,X1,X2),X1)
          | ~ r2_hidden(sK2(X0,X1,X2),X0)
          | ~ r2_hidden(sK2(X0,X1,X2),X2) )
        & ( ( r2_hidden(sK2(X0,X1,X2),X1)
            & r2_hidden(sK2(X0,X1,X2),X0) )
          | r2_hidden(sK2(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( k3_xboole_0(X0,X1) = X2
        | ( ( ~ r2_hidden(sK2(X0,X1,X2),X1)
            | ~ r2_hidden(sK2(X0,X1,X2),X0)
            | ~ r2_hidden(sK2(X0,X1,X2),X2) )
          & ( ( r2_hidden(sK2(X0,X1,X2),X1)
              & r2_hidden(sK2(X0,X1,X2),X0) )
            | r2_hidden(sK2(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | ~ r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k3_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f25,f26])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k3_xboole_0(X0,X1) = X2
      | r2_hidden(sK2(X0,X1,X2),X1)
      | r2_hidden(sK2(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f32,plain,(
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
    inference(nnf_transformation,[],[f12])).

fof(f56,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ v1_xboole_0(X1)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f8,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X0))
         => ( ! [X3] :
                ( m1_subset_1(X3,X0)
               => ( r2_hidden(X3,X1)
                <=> r2_hidden(X3,X2) ) )
           => X1 = X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(X0))
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(X0))
           => ( ! [X3] :
                  ( m1_subset_1(X3,X0)
                 => ( r2_hidden(X3,X1)
                  <=> r2_hidden(X3,X2) ) )
             => X1 = X2 ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f13,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( X1 != X2
          & ! [X3] :
              ( ( r2_hidden(X3,X1)
              <=> r2_hidden(X3,X2) )
              | ~ m1_subset_1(X3,X0) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f14,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( X1 != X2
          & ! [X3] :
              ( ( r2_hidden(X3,X1)
              <=> r2_hidden(X3,X2) )
              | ~ m1_subset_1(X3,X0) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(flattening,[],[f13])).

fof(f33,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( X1 != X2
          & ! [X3] :
              ( ( ( r2_hidden(X3,X1)
                  | ~ r2_hidden(X3,X2) )
                & ( r2_hidden(X3,X2)
                  | ~ r2_hidden(X3,X1) ) )
              | ~ m1_subset_1(X3,X0) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f35,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( X1 != X2
          & ! [X3] :
              ( ( ( r2_hidden(X3,X1)
                  | ~ r2_hidden(X3,X2) )
                & ( r2_hidden(X3,X2)
                  | ~ r2_hidden(X3,X1) ) )
              | ~ m1_subset_1(X3,X0) )
          & m1_subset_1(X2,k1_zfmisc_1(X0)) )
     => ( sK6 != X1
        & ! [X3] :
            ( ( ( r2_hidden(X3,X1)
                | ~ r2_hidden(X3,sK6) )
              & ( r2_hidden(X3,sK6)
                | ~ r2_hidden(X3,X1) ) )
            | ~ m1_subset_1(X3,X0) )
        & m1_subset_1(sK6,k1_zfmisc_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( X1 != X2
            & ! [X3] :
                ( ( ( r2_hidden(X3,X1)
                    | ~ r2_hidden(X3,X2) )
                  & ( r2_hidden(X3,X2)
                    | ~ r2_hidden(X3,X1) ) )
                | ~ m1_subset_1(X3,X0) )
            & m1_subset_1(X2,k1_zfmisc_1(X0)) )
        & m1_subset_1(X1,k1_zfmisc_1(X0)) )
   => ( ? [X2] :
          ( sK5 != X2
          & ! [X3] :
              ( ( ( r2_hidden(X3,sK5)
                  | ~ r2_hidden(X3,X2) )
                & ( r2_hidden(X3,X2)
                  | ~ r2_hidden(X3,sK5) ) )
              | ~ m1_subset_1(X3,sK4) )
          & m1_subset_1(X2,k1_zfmisc_1(sK4)) )
      & m1_subset_1(sK5,k1_zfmisc_1(sK4)) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,
    ( sK5 != sK6
    & ! [X3] :
        ( ( ( r2_hidden(X3,sK5)
            | ~ r2_hidden(X3,sK6) )
          & ( r2_hidden(X3,sK6)
            | ~ r2_hidden(X3,sK5) ) )
        | ~ m1_subset_1(X3,sK4) )
    & m1_subset_1(sK6,k1_zfmisc_1(sK4))
    & m1_subset_1(sK5,k1_zfmisc_1(sK4)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6])],[f33,f35,f34])).

fof(f61,plain,(
    ! [X3] :
      ( r2_hidden(X3,sK5)
      | ~ r2_hidden(X3,sK6)
      | ~ m1_subset_1(X3,sK4) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f54,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f16,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f15])).

fof(f17,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).

fof(f37,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f59,plain,(
    m1_subset_1(sK6,k1_zfmisc_1(sK4)) ),
    inference(cnf_transformation,[],[f36])).

fof(f7,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f7])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
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
    inference(nnf_transformation,[],[f5])).

fof(f29,plain,(
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
    inference(rectify,[],[f28])).

fof(f30,plain,(
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

fof(f31,plain,(
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f29,f30])).

fof(f49,plain,(
    ! [X0,X3,X1] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,X1)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f67,plain,(
    ! [X0,X3] :
      ( r1_tarski(X3,X0)
      | ~ r2_hidden(X3,k1_zfmisc_1(X0)) ) ),
    inference(equality_resolution,[],[f49])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f48,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f43,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f64,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k3_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f43])).

fof(f60,plain,(
    ! [X3] :
      ( r2_hidden(X3,sK6)
      | ~ r2_hidden(X3,sK5)
      | ~ m1_subset_1(X3,sK4) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f58,plain,(
    m1_subset_1(sK5,k1_zfmisc_1(sK4)) ),
    inference(cnf_transformation,[],[f36])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( k3_xboole_0(X0,X1) = X2
      | ~ r2_hidden(sK2(X0,X1,X2),X1)
      | ~ r2_hidden(sK2(X0,X1,X2),X0)
      | ~ r2_hidden(sK2(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f19])).

fof(f21,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f21])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK1(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f41,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK1(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f42,plain,(
    ! [X4,X2,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,X2)
      | k3_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f27])).

fof(f65,plain,(
    ! [X4,X0,X1] :
      ( r2_hidden(X4,X0)
      | ~ r2_hidden(X4,k3_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f42])).

fof(f62,plain,(
    sK5 != sK6 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_6,plain,
    ( r2_hidden(sK2(X0,X1,X2),X1)
    | r2_hidden(sK2(X0,X1,X2),X2)
    | k3_xboole_0(X0,X1) = X2 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1340,plain,
    ( k3_xboole_0(X0,X1) = X2
    | r2_hidden(sK2(X0,X1,X2),X2) = iProver_top
    | r2_hidden(sK2(X0,X1,X2),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_16,plain,
    ( m1_subset_1(X0,X1)
    | ~ v1_xboole_0(X1)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_22,negated_conjecture,
    ( ~ m1_subset_1(X0,sK4)
    | ~ r2_hidden(X0,sK6)
    | r2_hidden(X0,sK5) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_613,plain,
    ( ~ r2_hidden(X0,sK6)
    | r2_hidden(X0,sK5)
    | ~ v1_xboole_0(X1)
    | ~ v1_xboole_0(X2)
    | X0 != X1
    | sK4 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_22])).

cnf(c_614,plain,
    ( ~ r2_hidden(X0,sK6)
    | r2_hidden(X0,sK5)
    | ~ v1_xboole_0(X0)
    | ~ v1_xboole_0(sK4) ),
    inference(unflattening,[status(thm)],[c_613])).

cnf(c_1326,plain,
    ( r2_hidden(X0,sK6) != iProver_top
    | r2_hidden(X0,sK5) = iProver_top
    | v1_xboole_0(X0) != iProver_top
    | v1_xboole_0(sK4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_614])).

cnf(c_4596,plain,
    ( k3_xboole_0(X0,sK6) = X1
    | r2_hidden(sK2(X0,sK6,X1),X1) = iProver_top
    | r2_hidden(sK2(X0,sK6,X1),sK5) = iProver_top
    | v1_xboole_0(sK2(X0,sK6,X1)) != iProver_top
    | v1_xboole_0(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1340,c_1326])).

cnf(c_18,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_146,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_18,c_1])).

cnf(c_147,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_146])).

cnf(c_580,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X2,sK6)
    | r2_hidden(X2,sK5)
    | X2 != X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_147,c_22])).

cnf(c_581,plain,
    ( ~ r2_hidden(X0,sK4)
    | ~ r2_hidden(X0,sK6)
    | r2_hidden(X0,sK5) ),
    inference(unflattening,[status(thm)],[c_580])).

cnf(c_1328,plain,
    ( r2_hidden(X0,sK4) != iProver_top
    | r2_hidden(X0,sK6) != iProver_top
    | r2_hidden(X0,sK5) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_581])).

cnf(c_4597,plain,
    ( k3_xboole_0(X0,sK6) = X1
    | r2_hidden(sK2(X0,sK6,X1),X1) = iProver_top
    | r2_hidden(sK2(X0,sK6,X1),sK4) != iProver_top
    | r2_hidden(sK2(X0,sK6,X1),sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_1340,c_1328])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,X1)
    | r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_24,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(sK4)) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_631,plain,
    ( r2_hidden(X0,X1)
    | v1_xboole_0(X1)
    | k1_zfmisc_1(sK4) != X1
    | sK6 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_24])).

cnf(c_632,plain,
    ( r2_hidden(sK6,k1_zfmisc_1(sK4))
    | v1_xboole_0(k1_zfmisc_1(sK4)) ),
    inference(unflattening,[status(thm)],[c_631])).

cnf(c_20,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_35,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(sK4)) ),
    inference(instantiation,[status(thm)],[c_20])).

cnf(c_634,plain,
    ( r2_hidden(sK6,k1_zfmisc_1(sK4)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_632,c_35])).

cnf(c_1325,plain,
    ( r2_hidden(sK6,k1_zfmisc_1(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_634])).

cnf(c_15,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1331,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2511,plain,
    ( r1_tarski(sK6,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1325,c_1331])).

cnf(c_11,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1335,plain,
    ( k3_xboole_0(X0,X1) = X0
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_3150,plain,
    ( k3_xboole_0(sK6,sK4) = sK6 ),
    inference(superposition,[status(thm)],[c_2511,c_1335])).

cnf(c_9,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k3_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1337,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k3_xboole_0(X2,X1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_3420,plain,
    ( r2_hidden(X0,sK4) = iProver_top
    | r2_hidden(X0,sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_3150,c_1337])).

cnf(c_6652,plain,
    ( k3_xboole_0(X0,sK6) = X1
    | r2_hidden(sK2(X0,sK6,X1),X1) = iProver_top
    | r2_hidden(sK2(X0,sK6,X1),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1340,c_3420])).

cnf(c_7900,plain,
    ( k3_xboole_0(X0,sK6) = X1
    | r2_hidden(sK2(X0,sK6,X1),X1) = iProver_top
    | r2_hidden(sK2(X0,sK6,X1),sK5) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4596,c_4597,c_6652])).

cnf(c_7916,plain,
    ( k3_xboole_0(X0,sK6) = sK6
    | r2_hidden(sK2(X0,sK6,sK6),sK4) != iProver_top
    | r2_hidden(sK2(X0,sK6,sK6),sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_7900,c_1328])).

cnf(c_7914,plain,
    ( k3_xboole_0(X0,sK6) = sK6
    | r2_hidden(sK2(X0,sK6,sK6),sK4) = iProver_top
    | r2_hidden(sK2(X0,sK6,sK6),sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_7900,c_3420])).

cnf(c_7973,plain,
    ( k3_xboole_0(X0,sK6) = sK6
    | r2_hidden(sK2(X0,sK6,sK6),sK5) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7916,c_7914])).

cnf(c_23,negated_conjecture,
    ( ~ m1_subset_1(X0,sK4)
    | r2_hidden(X0,sK6)
    | ~ r2_hidden(X0,sK5) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_565,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,sK6)
    | ~ r2_hidden(X2,sK5)
    | X2 != X0
    | sK4 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_147,c_23])).

cnf(c_566,plain,
    ( ~ r2_hidden(X0,sK4)
    | r2_hidden(X0,sK6)
    | ~ r2_hidden(X0,sK5) ),
    inference(unflattening,[status(thm)],[c_565])).

cnf(c_1329,plain,
    ( r2_hidden(X0,sK4) != iProver_top
    | r2_hidden(X0,sK6) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_566])).

cnf(c_7983,plain,
    ( k3_xboole_0(X0,sK6) = sK6
    | r2_hidden(sK2(X0,sK6,sK6),sK4) != iProver_top
    | r2_hidden(sK2(X0,sK6,sK6),sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_7973,c_1329])).

cnf(c_25,negated_conjecture,
    ( m1_subset_1(sK5,k1_zfmisc_1(sK4)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_649,plain,
    ( r2_hidden(X0,X1)
    | v1_xboole_0(X1)
    | k1_zfmisc_1(sK4) != X1
    | sK5 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_25])).

cnf(c_650,plain,
    ( r2_hidden(sK5,k1_zfmisc_1(sK4))
    | v1_xboole_0(k1_zfmisc_1(sK4)) ),
    inference(unflattening,[status(thm)],[c_649])).

cnf(c_652,plain,
    ( r2_hidden(sK5,k1_zfmisc_1(sK4)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_650,c_35])).

cnf(c_1324,plain,
    ( r2_hidden(sK5,k1_zfmisc_1(sK4)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_652])).

cnf(c_2512,plain,
    ( r1_tarski(sK5,sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1324,c_1331])).

cnf(c_3152,plain,
    ( k3_xboole_0(sK5,sK4) = sK5 ),
    inference(superposition,[status(thm)],[c_2512,c_1335])).

cnf(c_3425,plain,
    ( r2_hidden(X0,sK4) = iProver_top
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(superposition,[status(thm)],[c_3152,c_1337])).

cnf(c_7981,plain,
    ( k3_xboole_0(X0,sK6) = sK6
    | r2_hidden(sK2(X0,sK6,sK6),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_7973,c_3425])).

cnf(c_7998,plain,
    ( k3_xboole_0(X0,sK6) = sK6
    | r2_hidden(sK2(X0,sK6,sK6),sK6) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7983,c_7981])).

cnf(c_5,plain,
    ( ~ r2_hidden(sK2(X0,X1,X2),X1)
    | ~ r2_hidden(sK2(X0,X1,X2),X0)
    | ~ r2_hidden(sK2(X0,X1,X2),X2)
    | k3_xboole_0(X0,X1) = X2 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1341,plain,
    ( k3_xboole_0(X0,X1) = X2
    | r2_hidden(sK2(X0,X1,X2),X0) != iProver_top
    | r2_hidden(sK2(X0,X1,X2),X2) != iProver_top
    | r2_hidden(sK2(X0,X1,X2),X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_7980,plain,
    ( k3_xboole_0(sK5,sK6) = sK6
    | r2_hidden(sK2(sK5,sK6,sK6),sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_7973,c_1341])).

cnf(c_3,plain,
    ( r1_tarski(X0,X1)
    | r2_hidden(sK1(X0,X1),X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_1343,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2,plain,
    ( r1_tarski(X0,X1)
    | ~ r2_hidden(sK1(X0,X1),X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_1344,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r2_hidden(sK1(X0,X1),X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_3577,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1343,c_1344])).

cnf(c_4777,plain,
    ( k3_xboole_0(X0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_3577,c_1335])).

cnf(c_10,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k3_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1336,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(X0,k3_xboole_0(X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2874,plain,
    ( r1_tarski(k3_xboole_0(X0,X1),X2) = iProver_top
    | r2_hidden(sK1(k3_xboole_0(X0,X1),X2),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1343,c_1336])).

cnf(c_8451,plain,
    ( r1_tarski(k3_xboole_0(sK5,X0),X1) = iProver_top
    | r2_hidden(sK1(k3_xboole_0(sK5,X0),X1),sK4) != iProver_top
    | r2_hidden(sK1(k3_xboole_0(sK5,X0),X1),sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_2874,c_1329])).

cnf(c_8449,plain,
    ( r1_tarski(k3_xboole_0(sK5,X0),X1) = iProver_top
    | r2_hidden(sK1(k3_xboole_0(sK5,X0),X1),sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_2874,c_3425])).

cnf(c_8701,plain,
    ( r1_tarski(k3_xboole_0(sK5,X0),X1) = iProver_top
    | r2_hidden(sK1(k3_xboole_0(sK5,X0),X1),sK6) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_8451,c_8449])).

cnf(c_8710,plain,
    ( r1_tarski(k3_xboole_0(sK5,X0),sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_8701,c_1344])).

cnf(c_9291,plain,
    ( k3_xboole_0(k3_xboole_0(sK5,X0),sK6) = k3_xboole_0(sK5,X0) ),
    inference(superposition,[status(thm)],[c_8710,c_1335])).

cnf(c_9396,plain,
    ( k3_xboole_0(sK5,sK6) = k3_xboole_0(sK5,sK5) ),
    inference(superposition,[status(thm)],[c_4777,c_9291])).

cnf(c_9409,plain,
    ( k3_xboole_0(sK5,sK6) = sK5 ),
    inference(demodulation,[status(thm)],[c_9396,c_4777])).

cnf(c_10983,plain,
    ( sK6 = sK5
    | r2_hidden(sK2(sK5,sK6,sK6),sK6) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_7980,c_9409])).

cnf(c_21,negated_conjecture,
    ( sK5 != sK6 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_758,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_3129,plain,
    ( sK5 = sK5 ),
    inference(instantiation,[status(thm)],[c_758])).

cnf(c_759,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_2045,plain,
    ( X0 != X1
    | sK5 != X1
    | sK5 = X0 ),
    inference(instantiation,[status(thm)],[c_759])).

cnf(c_3185,plain,
    ( X0 != sK5
    | sK5 = X0
    | sK5 != sK5 ),
    inference(instantiation,[status(thm)],[c_2045])).

cnf(c_7744,plain,
    ( sK6 != sK5
    | sK5 = sK6
    | sK5 != sK5 ),
    inference(instantiation,[status(thm)],[c_3185])).

cnf(c_10985,plain,
    ( r2_hidden(sK2(sK5,sK6,sK6),sK6) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_10983,c_21,c_3129,c_7744])).

cnf(c_10996,plain,
    ( k3_xboole_0(sK5,sK6) = sK6 ),
    inference(superposition,[status(thm)],[c_7998,c_10985])).

cnf(c_10997,plain,
    ( sK6 = sK5 ),
    inference(light_normalisation,[status(thm)],[c_10996,c_9409])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_10997,c_7744,c_3129,c_21])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n021.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 16:37:04 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.70/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.70/0.99  
% 3.70/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.70/0.99  
% 3.70/0.99  ------  iProver source info
% 3.70/0.99  
% 3.70/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.70/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.70/0.99  git: non_committed_changes: false
% 3.70/0.99  git: last_make_outside_of_git: false
% 3.70/0.99  
% 3.70/0.99  ------ 
% 3.70/0.99  
% 3.70/0.99  ------ Input Options
% 3.70/0.99  
% 3.70/0.99  --out_options                           all
% 3.70/0.99  --tptp_safe_out                         true
% 3.70/0.99  --problem_path                          ""
% 3.70/0.99  --include_path                          ""
% 3.70/0.99  --clausifier                            res/vclausify_rel
% 3.70/0.99  --clausifier_options                    ""
% 3.70/0.99  --stdin                                 false
% 3.70/0.99  --stats_out                             all
% 3.70/0.99  
% 3.70/0.99  ------ General Options
% 3.70/0.99  
% 3.70/0.99  --fof                                   false
% 3.70/0.99  --time_out_real                         305.
% 3.70/0.99  --time_out_virtual                      -1.
% 3.70/0.99  --symbol_type_check                     false
% 3.70/0.99  --clausify_out                          false
% 3.70/0.99  --sig_cnt_out                           false
% 3.70/0.99  --trig_cnt_out                          false
% 3.70/0.99  --trig_cnt_out_tolerance                1.
% 3.70/0.99  --trig_cnt_out_sk_spl                   false
% 3.70/0.99  --abstr_cl_out                          false
% 3.70/0.99  
% 3.70/0.99  ------ Global Options
% 3.70/0.99  
% 3.70/0.99  --schedule                              default
% 3.70/0.99  --add_important_lit                     false
% 3.70/0.99  --prop_solver_per_cl                    1000
% 3.70/0.99  --min_unsat_core                        false
% 3.70/0.99  --soft_assumptions                      false
% 3.70/0.99  --soft_lemma_size                       3
% 3.70/0.99  --prop_impl_unit_size                   0
% 3.70/0.99  --prop_impl_unit                        []
% 3.70/0.99  --share_sel_clauses                     true
% 3.70/0.99  --reset_solvers                         false
% 3.70/0.99  --bc_imp_inh                            [conj_cone]
% 3.70/0.99  --conj_cone_tolerance                   3.
% 3.70/0.99  --extra_neg_conj                        none
% 3.70/0.99  --large_theory_mode                     true
% 3.70/0.99  --prolific_symb_bound                   200
% 3.70/0.99  --lt_threshold                          2000
% 3.70/0.99  --clause_weak_htbl                      true
% 3.70/0.99  --gc_record_bc_elim                     false
% 3.70/0.99  
% 3.70/0.99  ------ Preprocessing Options
% 3.70/0.99  
% 3.70/0.99  --preprocessing_flag                    true
% 3.70/0.99  --time_out_prep_mult                    0.1
% 3.70/0.99  --splitting_mode                        input
% 3.70/0.99  --splitting_grd                         true
% 3.70/0.99  --splitting_cvd                         false
% 3.70/0.99  --splitting_cvd_svl                     false
% 3.70/0.99  --splitting_nvd                         32
% 3.70/0.99  --sub_typing                            true
% 3.70/0.99  --prep_gs_sim                           true
% 3.70/0.99  --prep_unflatten                        true
% 3.70/0.99  --prep_res_sim                          true
% 3.70/0.99  --prep_upred                            true
% 3.70/0.99  --prep_sem_filter                       exhaustive
% 3.70/0.99  --prep_sem_filter_out                   false
% 3.70/0.99  --pred_elim                             true
% 3.70/0.99  --res_sim_input                         true
% 3.70/0.99  --eq_ax_congr_red                       true
% 3.70/0.99  --pure_diseq_elim                       true
% 3.70/0.99  --brand_transform                       false
% 3.70/0.99  --non_eq_to_eq                          false
% 3.70/0.99  --prep_def_merge                        true
% 3.70/0.99  --prep_def_merge_prop_impl              false
% 3.70/0.99  --prep_def_merge_mbd                    true
% 3.70/0.99  --prep_def_merge_tr_red                 false
% 3.70/0.99  --prep_def_merge_tr_cl                  false
% 3.70/0.99  --smt_preprocessing                     true
% 3.70/0.99  --smt_ac_axioms                         fast
% 3.70/0.99  --preprocessed_out                      false
% 3.70/0.99  --preprocessed_stats                    false
% 3.70/0.99  
% 3.70/0.99  ------ Abstraction refinement Options
% 3.70/0.99  
% 3.70/0.99  --abstr_ref                             []
% 3.70/0.99  --abstr_ref_prep                        false
% 3.70/0.99  --abstr_ref_until_sat                   false
% 3.70/0.99  --abstr_ref_sig_restrict                funpre
% 3.70/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.70/0.99  --abstr_ref_under                       []
% 3.70/0.99  
% 3.70/0.99  ------ SAT Options
% 3.70/0.99  
% 3.70/0.99  --sat_mode                              false
% 3.70/0.99  --sat_fm_restart_options                ""
% 3.70/0.99  --sat_gr_def                            false
% 3.70/0.99  --sat_epr_types                         true
% 3.70/0.99  --sat_non_cyclic_types                  false
% 3.70/0.99  --sat_finite_models                     false
% 3.70/0.99  --sat_fm_lemmas                         false
% 3.70/0.99  --sat_fm_prep                           false
% 3.70/0.99  --sat_fm_uc_incr                        true
% 3.70/0.99  --sat_out_model                         small
% 3.70/0.99  --sat_out_clauses                       false
% 3.70/0.99  
% 3.70/0.99  ------ QBF Options
% 3.70/0.99  
% 3.70/0.99  --qbf_mode                              false
% 3.70/0.99  --qbf_elim_univ                         false
% 3.70/0.99  --qbf_dom_inst                          none
% 3.70/0.99  --qbf_dom_pre_inst                      false
% 3.70/0.99  --qbf_sk_in                             false
% 3.70/0.99  --qbf_pred_elim                         true
% 3.70/0.99  --qbf_split                             512
% 3.70/0.99  
% 3.70/0.99  ------ BMC1 Options
% 3.70/0.99  
% 3.70/0.99  --bmc1_incremental                      false
% 3.70/0.99  --bmc1_axioms                           reachable_all
% 3.70/0.99  --bmc1_min_bound                        0
% 3.70/0.99  --bmc1_max_bound                        -1
% 3.70/0.99  --bmc1_max_bound_default                -1
% 3.70/0.99  --bmc1_symbol_reachability              true
% 3.70/0.99  --bmc1_property_lemmas                  false
% 3.70/0.99  --bmc1_k_induction                      false
% 3.70/0.99  --bmc1_non_equiv_states                 false
% 3.70/0.99  --bmc1_deadlock                         false
% 3.70/0.99  --bmc1_ucm                              false
% 3.70/0.99  --bmc1_add_unsat_core                   none
% 3.70/0.99  --bmc1_unsat_core_children              false
% 3.70/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.70/0.99  --bmc1_out_stat                         full
% 3.70/0.99  --bmc1_ground_init                      false
% 3.70/0.99  --bmc1_pre_inst_next_state              false
% 3.70/0.99  --bmc1_pre_inst_state                   false
% 3.70/0.99  --bmc1_pre_inst_reach_state             false
% 3.70/0.99  --bmc1_out_unsat_core                   false
% 3.70/0.99  --bmc1_aig_witness_out                  false
% 3.70/0.99  --bmc1_verbose                          false
% 3.70/0.99  --bmc1_dump_clauses_tptp                false
% 3.70/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.70/0.99  --bmc1_dump_file                        -
% 3.70/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.70/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.70/0.99  --bmc1_ucm_extend_mode                  1
% 3.70/0.99  --bmc1_ucm_init_mode                    2
% 3.70/0.99  --bmc1_ucm_cone_mode                    none
% 3.70/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.70/0.99  --bmc1_ucm_relax_model                  4
% 3.70/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.70/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.70/0.99  --bmc1_ucm_layered_model                none
% 3.70/0.99  --bmc1_ucm_max_lemma_size               10
% 3.70/0.99  
% 3.70/0.99  ------ AIG Options
% 3.70/0.99  
% 3.70/0.99  --aig_mode                              false
% 3.70/0.99  
% 3.70/0.99  ------ Instantiation Options
% 3.70/0.99  
% 3.70/0.99  --instantiation_flag                    true
% 3.70/0.99  --inst_sos_flag                         true
% 3.70/0.99  --inst_sos_phase                        true
% 3.70/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.70/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.70/0.99  --inst_lit_sel_side                     num_symb
% 3.70/0.99  --inst_solver_per_active                1400
% 3.70/0.99  --inst_solver_calls_frac                1.
% 3.70/0.99  --inst_passive_queue_type               priority_queues
% 3.70/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.70/0.99  --inst_passive_queues_freq              [25;2]
% 3.70/0.99  --inst_dismatching                      true
% 3.70/0.99  --inst_eager_unprocessed_to_passive     true
% 3.70/0.99  --inst_prop_sim_given                   true
% 3.70/0.99  --inst_prop_sim_new                     false
% 3.70/0.99  --inst_subs_new                         false
% 3.70/0.99  --inst_eq_res_simp                      false
% 3.70/0.99  --inst_subs_given                       false
% 3.70/0.99  --inst_orphan_elimination               true
% 3.70/0.99  --inst_learning_loop_flag               true
% 3.70/0.99  --inst_learning_start                   3000
% 3.70/0.99  --inst_learning_factor                  2
% 3.70/0.99  --inst_start_prop_sim_after_learn       3
% 3.70/0.99  --inst_sel_renew                        solver
% 3.70/0.99  --inst_lit_activity_flag                true
% 3.70/0.99  --inst_restr_to_given                   false
% 3.70/0.99  --inst_activity_threshold               500
% 3.70/0.99  --inst_out_proof                        true
% 3.70/0.99  
% 3.70/0.99  ------ Resolution Options
% 3.70/0.99  
% 3.70/0.99  --resolution_flag                       true
% 3.70/0.99  --res_lit_sel                           adaptive
% 3.70/0.99  --res_lit_sel_side                      none
% 3.70/0.99  --res_ordering                          kbo
% 3.70/0.99  --res_to_prop_solver                    active
% 3.70/0.99  --res_prop_simpl_new                    false
% 3.70/0.99  --res_prop_simpl_given                  true
% 3.70/0.99  --res_passive_queue_type                priority_queues
% 3.70/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.70/0.99  --res_passive_queues_freq               [15;5]
% 3.70/0.99  --res_forward_subs                      full
% 3.70/0.99  --res_backward_subs                     full
% 3.70/0.99  --res_forward_subs_resolution           true
% 3.70/0.99  --res_backward_subs_resolution          true
% 3.70/0.99  --res_orphan_elimination                true
% 3.70/0.99  --res_time_limit                        2.
% 3.70/0.99  --res_out_proof                         true
% 3.70/0.99  
% 3.70/0.99  ------ Superposition Options
% 3.70/0.99  
% 3.70/0.99  --superposition_flag                    true
% 3.70/0.99  --sup_passive_queue_type                priority_queues
% 3.70/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.70/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.70/0.99  --demod_completeness_check              fast
% 3.70/0.99  --demod_use_ground                      true
% 3.70/0.99  --sup_to_prop_solver                    passive
% 3.70/0.99  --sup_prop_simpl_new                    true
% 3.70/0.99  --sup_prop_simpl_given                  true
% 3.70/0.99  --sup_fun_splitting                     true
% 3.70/0.99  --sup_smt_interval                      50000
% 3.70/0.99  
% 3.70/0.99  ------ Superposition Simplification Setup
% 3.70/0.99  
% 3.70/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.70/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.70/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.70/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.70/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.70/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.70/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.70/0.99  --sup_immed_triv                        [TrivRules]
% 3.70/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/0.99  --sup_immed_bw_main                     []
% 3.70/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.70/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.70/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/0.99  --sup_input_bw                          []
% 3.70/0.99  
% 3.70/0.99  ------ Combination Options
% 3.70/0.99  
% 3.70/0.99  --comb_res_mult                         3
% 3.70/0.99  --comb_sup_mult                         2
% 3.70/0.99  --comb_inst_mult                        10
% 3.70/0.99  
% 3.70/0.99  ------ Debug Options
% 3.70/0.99  
% 3.70/0.99  --dbg_backtrace                         false
% 3.70/0.99  --dbg_dump_prop_clauses                 false
% 3.70/0.99  --dbg_dump_prop_clauses_file            -
% 3.70/0.99  --dbg_out_stat                          false
% 3.70/0.99  ------ Parsing...
% 3.70/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.70/0.99  
% 3.70/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e 
% 3.70/0.99  
% 3.70/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.70/0.99  
% 3.70/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.70/0.99  ------ Proving...
% 3.70/0.99  ------ Problem Properties 
% 3.70/0.99  
% 3.70/0.99  
% 3.70/0.99  clauses                                 28
% 3.70/0.99  conjectures                             1
% 3.70/0.99  EPR                                     7
% 3.70/0.99  Horn                                    23
% 3.70/0.99  unary                                   4
% 3.70/0.99  binary                                  9
% 3.70/0.99  lits                                    70
% 3.70/0.99  lits eq                                 11
% 3.70/0.99  fd_pure                                 0
% 3.70/0.99  fd_pseudo                               0
% 3.70/0.99  fd_cond                                 0
% 3.70/0.99  fd_pseudo_cond                          5
% 3.70/0.99  AC symbols                              0
% 3.70/0.99  
% 3.70/0.99  ------ Schedule dynamic 5 is on 
% 3.70/0.99  
% 3.70/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.70/0.99  
% 3.70/0.99  
% 3.70/0.99  ------ 
% 3.70/0.99  Current options:
% 3.70/0.99  ------ 
% 3.70/0.99  
% 3.70/0.99  ------ Input Options
% 3.70/0.99  
% 3.70/0.99  --out_options                           all
% 3.70/0.99  --tptp_safe_out                         true
% 3.70/0.99  --problem_path                          ""
% 3.70/0.99  --include_path                          ""
% 3.70/0.99  --clausifier                            res/vclausify_rel
% 3.70/0.99  --clausifier_options                    ""
% 3.70/0.99  --stdin                                 false
% 3.70/0.99  --stats_out                             all
% 3.70/0.99  
% 3.70/0.99  ------ General Options
% 3.70/0.99  
% 3.70/0.99  --fof                                   false
% 3.70/0.99  --time_out_real                         305.
% 3.70/0.99  --time_out_virtual                      -1.
% 3.70/0.99  --symbol_type_check                     false
% 3.70/0.99  --clausify_out                          false
% 3.70/0.99  --sig_cnt_out                           false
% 3.70/0.99  --trig_cnt_out                          false
% 3.70/0.99  --trig_cnt_out_tolerance                1.
% 3.70/0.99  --trig_cnt_out_sk_spl                   false
% 3.70/0.99  --abstr_cl_out                          false
% 3.70/0.99  
% 3.70/0.99  ------ Global Options
% 3.70/0.99  
% 3.70/0.99  --schedule                              default
% 3.70/0.99  --add_important_lit                     false
% 3.70/0.99  --prop_solver_per_cl                    1000
% 3.70/0.99  --min_unsat_core                        false
% 3.70/0.99  --soft_assumptions                      false
% 3.70/0.99  --soft_lemma_size                       3
% 3.70/0.99  --prop_impl_unit_size                   0
% 3.70/0.99  --prop_impl_unit                        []
% 3.70/0.99  --share_sel_clauses                     true
% 3.70/0.99  --reset_solvers                         false
% 3.70/0.99  --bc_imp_inh                            [conj_cone]
% 3.70/0.99  --conj_cone_tolerance                   3.
% 3.70/0.99  --extra_neg_conj                        none
% 3.70/0.99  --large_theory_mode                     true
% 3.70/0.99  --prolific_symb_bound                   200
% 3.70/0.99  --lt_threshold                          2000
% 3.70/0.99  --clause_weak_htbl                      true
% 3.70/0.99  --gc_record_bc_elim                     false
% 3.70/0.99  
% 3.70/0.99  ------ Preprocessing Options
% 3.70/0.99  
% 3.70/0.99  --preprocessing_flag                    true
% 3.70/0.99  --time_out_prep_mult                    0.1
% 3.70/0.99  --splitting_mode                        input
% 3.70/0.99  --splitting_grd                         true
% 3.70/0.99  --splitting_cvd                         false
% 3.70/0.99  --splitting_cvd_svl                     false
% 3.70/0.99  --splitting_nvd                         32
% 3.70/0.99  --sub_typing                            true
% 3.70/0.99  --prep_gs_sim                           true
% 3.70/0.99  --prep_unflatten                        true
% 3.70/0.99  --prep_res_sim                          true
% 3.70/0.99  --prep_upred                            true
% 3.70/0.99  --prep_sem_filter                       exhaustive
% 3.70/0.99  --prep_sem_filter_out                   false
% 3.70/0.99  --pred_elim                             true
% 3.70/0.99  --res_sim_input                         true
% 3.70/0.99  --eq_ax_congr_red                       true
% 3.70/0.99  --pure_diseq_elim                       true
% 3.70/0.99  --brand_transform                       false
% 3.70/0.99  --non_eq_to_eq                          false
% 3.70/0.99  --prep_def_merge                        true
% 3.70/0.99  --prep_def_merge_prop_impl              false
% 3.70/0.99  --prep_def_merge_mbd                    true
% 3.70/0.99  --prep_def_merge_tr_red                 false
% 3.70/0.99  --prep_def_merge_tr_cl                  false
% 3.70/0.99  --smt_preprocessing                     true
% 3.70/0.99  --smt_ac_axioms                         fast
% 3.70/0.99  --preprocessed_out                      false
% 3.70/0.99  --preprocessed_stats                    false
% 3.70/0.99  
% 3.70/0.99  ------ Abstraction refinement Options
% 3.70/0.99  
% 3.70/0.99  --abstr_ref                             []
% 3.70/0.99  --abstr_ref_prep                        false
% 3.70/0.99  --abstr_ref_until_sat                   false
% 3.70/0.99  --abstr_ref_sig_restrict                funpre
% 3.70/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.70/0.99  --abstr_ref_under                       []
% 3.70/0.99  
% 3.70/0.99  ------ SAT Options
% 3.70/0.99  
% 3.70/0.99  --sat_mode                              false
% 3.70/0.99  --sat_fm_restart_options                ""
% 3.70/0.99  --sat_gr_def                            false
% 3.70/0.99  --sat_epr_types                         true
% 3.70/0.99  --sat_non_cyclic_types                  false
% 3.70/0.99  --sat_finite_models                     false
% 3.70/0.99  --sat_fm_lemmas                         false
% 3.70/0.99  --sat_fm_prep                           false
% 3.70/0.99  --sat_fm_uc_incr                        true
% 3.70/0.99  --sat_out_model                         small
% 3.70/0.99  --sat_out_clauses                       false
% 3.70/0.99  
% 3.70/0.99  ------ QBF Options
% 3.70/0.99  
% 3.70/0.99  --qbf_mode                              false
% 3.70/0.99  --qbf_elim_univ                         false
% 3.70/0.99  --qbf_dom_inst                          none
% 3.70/0.99  --qbf_dom_pre_inst                      false
% 3.70/0.99  --qbf_sk_in                             false
% 3.70/0.99  --qbf_pred_elim                         true
% 3.70/0.99  --qbf_split                             512
% 3.70/0.99  
% 3.70/0.99  ------ BMC1 Options
% 3.70/0.99  
% 3.70/0.99  --bmc1_incremental                      false
% 3.70/0.99  --bmc1_axioms                           reachable_all
% 3.70/0.99  --bmc1_min_bound                        0
% 3.70/0.99  --bmc1_max_bound                        -1
% 3.70/0.99  --bmc1_max_bound_default                -1
% 3.70/0.99  --bmc1_symbol_reachability              true
% 3.70/0.99  --bmc1_property_lemmas                  false
% 3.70/0.99  --bmc1_k_induction                      false
% 3.70/0.99  --bmc1_non_equiv_states                 false
% 3.70/0.99  --bmc1_deadlock                         false
% 3.70/0.99  --bmc1_ucm                              false
% 3.70/0.99  --bmc1_add_unsat_core                   none
% 3.70/0.99  --bmc1_unsat_core_children              false
% 3.70/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.70/0.99  --bmc1_out_stat                         full
% 3.70/0.99  --bmc1_ground_init                      false
% 3.70/0.99  --bmc1_pre_inst_next_state              false
% 3.70/0.99  --bmc1_pre_inst_state                   false
% 3.70/0.99  --bmc1_pre_inst_reach_state             false
% 3.70/0.99  --bmc1_out_unsat_core                   false
% 3.70/0.99  --bmc1_aig_witness_out                  false
% 3.70/0.99  --bmc1_verbose                          false
% 3.70/0.99  --bmc1_dump_clauses_tptp                false
% 3.70/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.70/0.99  --bmc1_dump_file                        -
% 3.70/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.70/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.70/0.99  --bmc1_ucm_extend_mode                  1
% 3.70/0.99  --bmc1_ucm_init_mode                    2
% 3.70/0.99  --bmc1_ucm_cone_mode                    none
% 3.70/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.70/0.99  --bmc1_ucm_relax_model                  4
% 3.70/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.70/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.70/0.99  --bmc1_ucm_layered_model                none
% 3.70/0.99  --bmc1_ucm_max_lemma_size               10
% 3.70/0.99  
% 3.70/0.99  ------ AIG Options
% 3.70/0.99  
% 3.70/0.99  --aig_mode                              false
% 3.70/0.99  
% 3.70/0.99  ------ Instantiation Options
% 3.70/0.99  
% 3.70/0.99  --instantiation_flag                    true
% 3.70/0.99  --inst_sos_flag                         true
% 3.70/0.99  --inst_sos_phase                        true
% 3.70/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.70/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.70/0.99  --inst_lit_sel_side                     none
% 3.70/0.99  --inst_solver_per_active                1400
% 3.70/0.99  --inst_solver_calls_frac                1.
% 3.70/0.99  --inst_passive_queue_type               priority_queues
% 3.70/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.70/0.99  --inst_passive_queues_freq              [25;2]
% 3.70/0.99  --inst_dismatching                      true
% 3.70/0.99  --inst_eager_unprocessed_to_passive     true
% 3.70/0.99  --inst_prop_sim_given                   true
% 3.70/0.99  --inst_prop_sim_new                     false
% 3.70/0.99  --inst_subs_new                         false
% 3.70/0.99  --inst_eq_res_simp                      false
% 3.70/0.99  --inst_subs_given                       false
% 3.70/0.99  --inst_orphan_elimination               true
% 3.70/0.99  --inst_learning_loop_flag               true
% 3.70/0.99  --inst_learning_start                   3000
% 3.70/0.99  --inst_learning_factor                  2
% 3.70/0.99  --inst_start_prop_sim_after_learn       3
% 3.70/0.99  --inst_sel_renew                        solver
% 3.70/0.99  --inst_lit_activity_flag                true
% 3.70/0.99  --inst_restr_to_given                   false
% 3.70/0.99  --inst_activity_threshold               500
% 3.70/0.99  --inst_out_proof                        true
% 3.70/0.99  
% 3.70/0.99  ------ Resolution Options
% 3.70/0.99  
% 3.70/0.99  --resolution_flag                       false
% 3.70/0.99  --res_lit_sel                           adaptive
% 3.70/0.99  --res_lit_sel_side                      none
% 3.70/0.99  --res_ordering                          kbo
% 3.70/0.99  --res_to_prop_solver                    active
% 3.70/0.99  --res_prop_simpl_new                    false
% 3.70/0.99  --res_prop_simpl_given                  true
% 3.70/0.99  --res_passive_queue_type                priority_queues
% 3.70/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.70/0.99  --res_passive_queues_freq               [15;5]
% 3.70/0.99  --res_forward_subs                      full
% 3.70/0.99  --res_backward_subs                     full
% 3.70/0.99  --res_forward_subs_resolution           true
% 3.70/0.99  --res_backward_subs_resolution          true
% 3.70/0.99  --res_orphan_elimination                true
% 3.70/0.99  --res_time_limit                        2.
% 3.70/0.99  --res_out_proof                         true
% 3.70/0.99  
% 3.70/0.99  ------ Superposition Options
% 3.70/0.99  
% 3.70/0.99  --superposition_flag                    true
% 3.70/0.99  --sup_passive_queue_type                priority_queues
% 3.70/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.70/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.70/0.99  --demod_completeness_check              fast
% 3.70/0.99  --demod_use_ground                      true
% 3.70/0.99  --sup_to_prop_solver                    passive
% 3.70/0.99  --sup_prop_simpl_new                    true
% 3.70/0.99  --sup_prop_simpl_given                  true
% 3.70/0.99  --sup_fun_splitting                     true
% 3.70/0.99  --sup_smt_interval                      50000
% 3.70/0.99  
% 3.70/0.99  ------ Superposition Simplification Setup
% 3.70/0.99  
% 3.70/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.70/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.70/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.70/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.70/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.70/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.70/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.70/0.99  --sup_immed_triv                        [TrivRules]
% 3.70/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/0.99  --sup_immed_bw_main                     []
% 3.70/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.70/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.70/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.70/0.99  --sup_input_bw                          []
% 3.70/0.99  
% 3.70/0.99  ------ Combination Options
% 3.70/0.99  
% 3.70/0.99  --comb_res_mult                         3
% 3.70/0.99  --comb_sup_mult                         2
% 3.70/0.99  --comb_inst_mult                        10
% 3.70/0.99  
% 3.70/0.99  ------ Debug Options
% 3.70/0.99  
% 3.70/0.99  --dbg_backtrace                         false
% 3.70/0.99  --dbg_dump_prop_clauses                 false
% 3.70/0.99  --dbg_dump_prop_clauses_file            -
% 3.70/0.99  --dbg_out_stat                          false
% 3.70/0.99  
% 3.70/0.99  
% 3.70/0.99  
% 3.70/0.99  
% 3.70/0.99  ------ Proving...
% 3.70/0.99  
% 3.70/0.99  
% 3.70/0.99  % SZS status Theorem for theBenchmark.p
% 3.70/0.99  
% 3.70/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.70/0.99  
% 3.70/0.99  fof(f3,axiom,(
% 3.70/0.99    ! [X0,X1,X2] : (k3_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 3.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/0.99  
% 3.70/0.99  fof(f23,plain,(
% 3.70/0.99    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : (((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (~r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.70/0.99    inference(nnf_transformation,[],[f3])).
% 3.70/0.99  
% 3.70/0.99  fof(f24,plain,(
% 3.70/0.99    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ~r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.70/0.99    inference(flattening,[],[f23])).
% 3.70/0.99  
% 3.70/0.99  fof(f25,plain,(
% 3.70/0.99    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.70/0.99    inference(rectify,[],[f24])).
% 3.70/0.99  
% 3.70/0.99  fof(f26,plain,(
% 3.70/0.99    ! [X2,X1,X0] : (? [X3] : ((~r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((~r2_hidden(sK2(X0,X1,X2),X1) | ~r2_hidden(sK2(X0,X1,X2),X0) | ~r2_hidden(sK2(X0,X1,X2),X2)) & ((r2_hidden(sK2(X0,X1,X2),X1) & r2_hidden(sK2(X0,X1,X2),X0)) | r2_hidden(sK2(X0,X1,X2),X2))))),
% 3.70/0.99    introduced(choice_axiom,[])).
% 3.70/0.99  
% 3.70/0.99  fof(f27,plain,(
% 3.70/0.99    ! [X0,X1,X2] : ((k3_xboole_0(X0,X1) = X2 | ((~r2_hidden(sK2(X0,X1,X2),X1) | ~r2_hidden(sK2(X0,X1,X2),X0) | ~r2_hidden(sK2(X0,X1,X2),X2)) & ((r2_hidden(sK2(X0,X1,X2),X1) & r2_hidden(sK2(X0,X1,X2),X0)) | r2_hidden(sK2(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | ~r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k3_xboole_0(X0,X1) != X2))),
% 3.70/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2])],[f25,f26])).
% 3.70/0.99  
% 3.70/0.99  fof(f46,plain,(
% 3.70/0.99    ( ! [X2,X0,X1] : (k3_xboole_0(X0,X1) = X2 | r2_hidden(sK2(X0,X1,X2),X1) | r2_hidden(sK2(X0,X1,X2),X2)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f27])).
% 3.70/0.99  
% 3.70/0.99  fof(f6,axiom,(
% 3.70/0.99    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 3.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/0.99  
% 3.70/0.99  fof(f12,plain,(
% 3.70/0.99    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 3.70/0.99    inference(ennf_transformation,[],[f6])).
% 3.70/0.99  
% 3.70/0.99  fof(f32,plain,(
% 3.70/0.99    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 3.70/0.99    inference(nnf_transformation,[],[f12])).
% 3.70/0.99  
% 3.70/0.99  fof(f56,plain,(
% 3.70/0.99    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~v1_xboole_0(X1) | ~v1_xboole_0(X0)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f32])).
% 3.70/0.99  
% 3.70/0.99  fof(f8,conjecture,(
% 3.70/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (! [X3] : (m1_subset_1(X3,X0) => (r2_hidden(X3,X1) <=> r2_hidden(X3,X2))) => X1 = X2)))),
% 3.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/0.99  
% 3.70/0.99  fof(f9,negated_conjecture,(
% 3.70/0.99    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(X0)) => (! [X3] : (m1_subset_1(X3,X0) => (r2_hidden(X3,X1) <=> r2_hidden(X3,X2))) => X1 = X2)))),
% 3.70/0.99    inference(negated_conjecture,[],[f8])).
% 3.70/0.99  
% 3.70/0.99  fof(f13,plain,(
% 3.70/0.99    ? [X0,X1] : (? [X2] : ((X1 != X2 & ! [X3] : ((r2_hidden(X3,X1) <=> r2_hidden(X3,X2)) | ~m1_subset_1(X3,X0))) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.70/0.99    inference(ennf_transformation,[],[f9])).
% 3.70/0.99  
% 3.70/0.99  fof(f14,plain,(
% 3.70/0.99    ? [X0,X1] : (? [X2] : (X1 != X2 & ! [X3] : ((r2_hidden(X3,X1) <=> r2_hidden(X3,X2)) | ~m1_subset_1(X3,X0)) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.70/0.99    inference(flattening,[],[f13])).
% 3.70/0.99  
% 3.70/0.99  fof(f33,plain,(
% 3.70/0.99    ? [X0,X1] : (? [X2] : (X1 != X2 & ! [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X2) | ~r2_hidden(X3,X1))) | ~m1_subset_1(X3,X0)) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.70/0.99    inference(nnf_transformation,[],[f14])).
% 3.70/0.99  
% 3.70/0.99  fof(f35,plain,(
% 3.70/0.99    ( ! [X0,X1] : (? [X2] : (X1 != X2 & ! [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X2) | ~r2_hidden(X3,X1))) | ~m1_subset_1(X3,X0)) & m1_subset_1(X2,k1_zfmisc_1(X0))) => (sK6 != X1 & ! [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,sK6)) & (r2_hidden(X3,sK6) | ~r2_hidden(X3,X1))) | ~m1_subset_1(X3,X0)) & m1_subset_1(sK6,k1_zfmisc_1(X0)))) )),
% 3.70/0.99    introduced(choice_axiom,[])).
% 3.70/0.99  
% 3.70/0.99  fof(f34,plain,(
% 3.70/0.99    ? [X0,X1] : (? [X2] : (X1 != X2 & ! [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X2) | ~r2_hidden(X3,X1))) | ~m1_subset_1(X3,X0)) & m1_subset_1(X2,k1_zfmisc_1(X0))) & m1_subset_1(X1,k1_zfmisc_1(X0))) => (? [X2] : (sK5 != X2 & ! [X3] : (((r2_hidden(X3,sK5) | ~r2_hidden(X3,X2)) & (r2_hidden(X3,X2) | ~r2_hidden(X3,sK5))) | ~m1_subset_1(X3,sK4)) & m1_subset_1(X2,k1_zfmisc_1(sK4))) & m1_subset_1(sK5,k1_zfmisc_1(sK4)))),
% 3.70/0.99    introduced(choice_axiom,[])).
% 3.70/0.99  
% 3.70/0.99  fof(f36,plain,(
% 3.70/0.99    (sK5 != sK6 & ! [X3] : (((r2_hidden(X3,sK5) | ~r2_hidden(X3,sK6)) & (r2_hidden(X3,sK6) | ~r2_hidden(X3,sK5))) | ~m1_subset_1(X3,sK4)) & m1_subset_1(sK6,k1_zfmisc_1(sK4))) & m1_subset_1(sK5,k1_zfmisc_1(sK4))),
% 3.70/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6])],[f33,f35,f34])).
% 3.70/0.99  
% 3.70/0.99  fof(f61,plain,(
% 3.70/0.99    ( ! [X3] : (r2_hidden(X3,sK5) | ~r2_hidden(X3,sK6) | ~m1_subset_1(X3,sK4)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f36])).
% 3.70/0.99  
% 3.70/0.99  fof(f54,plain,(
% 3.70/0.99    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f32])).
% 3.70/0.99  
% 3.70/0.99  fof(f1,axiom,(
% 3.70/0.99    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 3.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/0.99  
% 3.70/0.99  fof(f15,plain,(
% 3.70/0.99    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 3.70/0.99    inference(nnf_transformation,[],[f1])).
% 3.70/0.99  
% 3.70/0.99  fof(f16,plain,(
% 3.70/0.99    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 3.70/0.99    inference(rectify,[],[f15])).
% 3.70/0.99  
% 3.70/0.99  fof(f17,plain,(
% 3.70/0.99    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 3.70/0.99    introduced(choice_axiom,[])).
% 3.70/0.99  
% 3.70/0.99  fof(f18,plain,(
% 3.70/0.99    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 3.70/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).
% 3.70/0.99  
% 3.70/0.99  fof(f37,plain,(
% 3.70/0.99    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f18])).
% 3.70/0.99  
% 3.70/0.99  fof(f53,plain,(
% 3.70/0.99    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f32])).
% 3.70/0.99  
% 3.70/0.99  fof(f59,plain,(
% 3.70/0.99    m1_subset_1(sK6,k1_zfmisc_1(sK4))),
% 3.70/0.99    inference(cnf_transformation,[],[f36])).
% 3.70/0.99  
% 3.70/0.99  fof(f7,axiom,(
% 3.70/0.99    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 3.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/0.99  
% 3.70/0.99  fof(f57,plain,(
% 3.70/0.99    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 3.70/0.99    inference(cnf_transformation,[],[f7])).
% 3.70/0.99  
% 3.70/0.99  fof(f5,axiom,(
% 3.70/0.99    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 3.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/0.99  
% 3.70/0.99  fof(f28,plain,(
% 3.70/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 3.70/0.99    inference(nnf_transformation,[],[f5])).
% 3.70/0.99  
% 3.70/0.99  fof(f29,plain,(
% 3.70/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 3.70/0.99    inference(rectify,[],[f28])).
% 3.70/0.99  
% 3.70/0.99  fof(f30,plain,(
% 3.70/0.99    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK3(X0,X1),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (r1_tarski(sK3(X0,X1),X0) | r2_hidden(sK3(X0,X1),X1))))),
% 3.70/0.99    introduced(choice_axiom,[])).
% 3.70/0.99  
% 3.70/0.99  fof(f31,plain,(
% 3.70/0.99    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK3(X0,X1),X0) | ~r2_hidden(sK3(X0,X1),X1)) & (r1_tarski(sK3(X0,X1),X0) | r2_hidden(sK3(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 3.70/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3])],[f29,f30])).
% 3.70/0.99  
% 3.70/0.99  fof(f49,plain,(
% 3.70/0.99    ( ! [X0,X3,X1] : (r1_tarski(X3,X0) | ~r2_hidden(X3,X1) | k1_zfmisc_1(X0) != X1) )),
% 3.70/0.99    inference(cnf_transformation,[],[f31])).
% 3.70/0.99  
% 3.70/0.99  fof(f67,plain,(
% 3.70/0.99    ( ! [X0,X3] : (r1_tarski(X3,X0) | ~r2_hidden(X3,k1_zfmisc_1(X0))) )),
% 3.70/0.99    inference(equality_resolution,[],[f49])).
% 3.70/0.99  
% 3.70/0.99  fof(f4,axiom,(
% 3.70/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 3.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/0.99  
% 3.70/0.99  fof(f11,plain,(
% 3.70/0.99    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 3.70/0.99    inference(ennf_transformation,[],[f4])).
% 3.70/0.99  
% 3.70/0.99  fof(f48,plain,(
% 3.70/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f11])).
% 3.70/0.99  
% 3.70/0.99  fof(f43,plain,(
% 3.70/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k3_xboole_0(X0,X1) != X2) )),
% 3.70/0.99    inference(cnf_transformation,[],[f27])).
% 3.70/0.99  
% 3.70/0.99  fof(f64,plain,(
% 3.70/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,X1) | ~r2_hidden(X4,k3_xboole_0(X0,X1))) )),
% 3.70/0.99    inference(equality_resolution,[],[f43])).
% 3.70/0.99  
% 3.70/0.99  fof(f60,plain,(
% 3.70/0.99    ( ! [X3] : (r2_hidden(X3,sK6) | ~r2_hidden(X3,sK5) | ~m1_subset_1(X3,sK4)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f36])).
% 3.70/0.99  
% 3.70/0.99  fof(f58,plain,(
% 3.70/0.99    m1_subset_1(sK5,k1_zfmisc_1(sK4))),
% 3.70/0.99    inference(cnf_transformation,[],[f36])).
% 3.70/0.99  
% 3.70/0.99  fof(f47,plain,(
% 3.70/0.99    ( ! [X2,X0,X1] : (k3_xboole_0(X0,X1) = X2 | ~r2_hidden(sK2(X0,X1,X2),X1) | ~r2_hidden(sK2(X0,X1,X2),X0) | ~r2_hidden(sK2(X0,X1,X2),X2)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f27])).
% 3.70/0.99  
% 3.70/0.99  fof(f2,axiom,(
% 3.70/0.99    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 3.70/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.70/0.99  
% 3.70/0.99  fof(f10,plain,(
% 3.70/0.99    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 3.70/0.99    inference(ennf_transformation,[],[f2])).
% 3.70/0.99  
% 3.70/0.99  fof(f19,plain,(
% 3.70/0.99    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 3.70/0.99    inference(nnf_transformation,[],[f10])).
% 3.70/0.99  
% 3.70/0.99  fof(f20,plain,(
% 3.70/0.99    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.70/0.99    inference(rectify,[],[f19])).
% 3.70/0.99  
% 3.70/0.99  fof(f21,plain,(
% 3.70/0.99    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 3.70/0.99    introduced(choice_axiom,[])).
% 3.70/0.99  
% 3.70/0.99  fof(f22,plain,(
% 3.70/0.99    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.70/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f20,f21])).
% 3.70/0.99  
% 3.70/0.99  fof(f40,plain,(
% 3.70/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f22])).
% 3.70/0.99  
% 3.70/0.99  fof(f41,plain,(
% 3.70/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK1(X0,X1),X1)) )),
% 3.70/0.99    inference(cnf_transformation,[],[f22])).
% 3.70/0.99  
% 3.70/0.99  fof(f42,plain,(
% 3.70/0.99    ( ! [X4,X2,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,X2) | k3_xboole_0(X0,X1) != X2) )),
% 3.70/0.99    inference(cnf_transformation,[],[f27])).
% 3.70/0.99  
% 3.70/0.99  fof(f65,plain,(
% 3.70/0.99    ( ! [X4,X0,X1] : (r2_hidden(X4,X0) | ~r2_hidden(X4,k3_xboole_0(X0,X1))) )),
% 3.70/0.99    inference(equality_resolution,[],[f42])).
% 3.70/0.99  
% 3.70/0.99  fof(f62,plain,(
% 3.70/0.99    sK5 != sK6),
% 3.70/0.99    inference(cnf_transformation,[],[f36])).
% 3.70/0.99  
% 3.70/0.99  cnf(c_6,plain,
% 3.70/0.99      ( r2_hidden(sK2(X0,X1,X2),X1)
% 3.70/0.99      | r2_hidden(sK2(X0,X1,X2),X2)
% 3.70/0.99      | k3_xboole_0(X0,X1) = X2 ),
% 3.70/0.99      inference(cnf_transformation,[],[f46]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1340,plain,
% 3.70/0.99      ( k3_xboole_0(X0,X1) = X2
% 3.70/0.99      | r2_hidden(sK2(X0,X1,X2),X2) = iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,X1,X2),X1) = iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_16,plain,
% 3.70/0.99      ( m1_subset_1(X0,X1) | ~ v1_xboole_0(X1) | ~ v1_xboole_0(X0) ),
% 3.70/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_22,negated_conjecture,
% 3.70/0.99      ( ~ m1_subset_1(X0,sK4) | ~ r2_hidden(X0,sK6) | r2_hidden(X0,sK5) ),
% 3.70/0.99      inference(cnf_transformation,[],[f61]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_613,plain,
% 3.70/0.99      ( ~ r2_hidden(X0,sK6)
% 3.70/0.99      | r2_hidden(X0,sK5)
% 3.70/0.99      | ~ v1_xboole_0(X1)
% 3.70/0.99      | ~ v1_xboole_0(X2)
% 3.70/0.99      | X0 != X1
% 3.70/0.99      | sK4 != X2 ),
% 3.70/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_22]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_614,plain,
% 3.70/0.99      ( ~ r2_hidden(X0,sK6)
% 3.70/0.99      | r2_hidden(X0,sK5)
% 3.70/0.99      | ~ v1_xboole_0(X0)
% 3.70/0.99      | ~ v1_xboole_0(sK4) ),
% 3.70/0.99      inference(unflattening,[status(thm)],[c_613]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1326,plain,
% 3.70/0.99      ( r2_hidden(X0,sK6) != iProver_top
% 3.70/0.99      | r2_hidden(X0,sK5) = iProver_top
% 3.70/0.99      | v1_xboole_0(X0) != iProver_top
% 3.70/0.99      | v1_xboole_0(sK4) != iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_614]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_4596,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = X1
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,X1),X1) = iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,X1),sK5) = iProver_top
% 3.70/0.99      | v1_xboole_0(sK2(X0,sK6,X1)) != iProver_top
% 3.70/0.99      | v1_xboole_0(sK4) != iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_1340,c_1326]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_18,plain,
% 3.70/0.99      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.70/0.99      inference(cnf_transformation,[],[f54]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1,plain,
% 3.70/0.99      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 3.70/0.99      inference(cnf_transformation,[],[f37]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_146,plain,
% 3.70/0.99      ( ~ r2_hidden(X0,X1) | m1_subset_1(X0,X1) ),
% 3.70/0.99      inference(global_propositional_subsumption,
% 3.70/0.99                [status(thm)],
% 3.70/0.99                [c_18,c_1]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_147,plain,
% 3.70/0.99      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 3.70/0.99      inference(renaming,[status(thm)],[c_146]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_580,plain,
% 3.70/0.99      ( ~ r2_hidden(X0,X1)
% 3.70/0.99      | ~ r2_hidden(X2,sK6)
% 3.70/0.99      | r2_hidden(X2,sK5)
% 3.70/0.99      | X2 != X0
% 3.70/0.99      | sK4 != X1 ),
% 3.70/0.99      inference(resolution_lifted,[status(thm)],[c_147,c_22]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_581,plain,
% 3.70/0.99      ( ~ r2_hidden(X0,sK4) | ~ r2_hidden(X0,sK6) | r2_hidden(X0,sK5) ),
% 3.70/0.99      inference(unflattening,[status(thm)],[c_580]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1328,plain,
% 3.70/0.99      ( r2_hidden(X0,sK4) != iProver_top
% 3.70/0.99      | r2_hidden(X0,sK6) != iProver_top
% 3.70/0.99      | r2_hidden(X0,sK5) = iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_581]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_4597,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = X1
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,X1),X1) = iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,X1),sK4) != iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,X1),sK5) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_1340,c_1328]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_19,plain,
% 3.70/0.99      ( ~ m1_subset_1(X0,X1) | r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 3.70/0.99      inference(cnf_transformation,[],[f53]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_24,negated_conjecture,
% 3.70/0.99      ( m1_subset_1(sK6,k1_zfmisc_1(sK4)) ),
% 3.70/0.99      inference(cnf_transformation,[],[f59]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_631,plain,
% 3.70/0.99      ( r2_hidden(X0,X1)
% 3.70/0.99      | v1_xboole_0(X1)
% 3.70/0.99      | k1_zfmisc_1(sK4) != X1
% 3.70/0.99      | sK6 != X0 ),
% 3.70/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_24]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_632,plain,
% 3.70/0.99      ( r2_hidden(sK6,k1_zfmisc_1(sK4)) | v1_xboole_0(k1_zfmisc_1(sK4)) ),
% 3.70/0.99      inference(unflattening,[status(thm)],[c_631]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_20,plain,
% 3.70/0.99      ( ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
% 3.70/0.99      inference(cnf_transformation,[],[f57]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_35,plain,
% 3.70/0.99      ( ~ v1_xboole_0(k1_zfmisc_1(sK4)) ),
% 3.70/0.99      inference(instantiation,[status(thm)],[c_20]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_634,plain,
% 3.70/0.99      ( r2_hidden(sK6,k1_zfmisc_1(sK4)) ),
% 3.70/0.99      inference(global_propositional_subsumption,
% 3.70/0.99                [status(thm)],
% 3.70/0.99                [c_632,c_35]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1325,plain,
% 3.70/0.99      ( r2_hidden(sK6,k1_zfmisc_1(sK4)) = iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_634]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_15,plain,
% 3.70/0.99      ( r1_tarski(X0,X1) | ~ r2_hidden(X0,k1_zfmisc_1(X1)) ),
% 3.70/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1331,plain,
% 3.70/0.99      ( r1_tarski(X0,X1) = iProver_top
% 3.70/0.99      | r2_hidden(X0,k1_zfmisc_1(X1)) != iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_2511,plain,
% 3.70/0.99      ( r1_tarski(sK6,sK4) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_1325,c_1331]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_11,plain,
% 3.70/0.99      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 3.70/0.99      inference(cnf_transformation,[],[f48]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1335,plain,
% 3.70/0.99      ( k3_xboole_0(X0,X1) = X0 | r1_tarski(X0,X1) != iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_3150,plain,
% 3.70/0.99      ( k3_xboole_0(sK6,sK4) = sK6 ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_2511,c_1335]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_9,plain,
% 3.70/0.99      ( r2_hidden(X0,X1) | ~ r2_hidden(X0,k3_xboole_0(X2,X1)) ),
% 3.70/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1337,plain,
% 3.70/0.99      ( r2_hidden(X0,X1) = iProver_top
% 3.70/0.99      | r2_hidden(X0,k3_xboole_0(X2,X1)) != iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_3420,plain,
% 3.70/0.99      ( r2_hidden(X0,sK4) = iProver_top
% 3.70/0.99      | r2_hidden(X0,sK6) != iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_3150,c_1337]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_6652,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = X1
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,X1),X1) = iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,X1),sK4) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_1340,c_3420]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_7900,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = X1
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,X1),X1) = iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,X1),sK5) = iProver_top ),
% 3.70/0.99      inference(global_propositional_subsumption,
% 3.70/0.99                [status(thm)],
% 3.70/0.99                [c_4596,c_4597,c_6652]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_7916,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = sK6
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,sK6),sK4) != iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,sK6),sK5) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_7900,c_1328]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_7914,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = sK6
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,sK6),sK4) = iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,sK6),sK5) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_7900,c_3420]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_7973,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = sK6
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,sK6),sK5) = iProver_top ),
% 3.70/0.99      inference(global_propositional_subsumption,
% 3.70/0.99                [status(thm)],
% 3.70/0.99                [c_7916,c_7914]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_23,negated_conjecture,
% 3.70/0.99      ( ~ m1_subset_1(X0,sK4) | r2_hidden(X0,sK6) | ~ r2_hidden(X0,sK5) ),
% 3.70/0.99      inference(cnf_transformation,[],[f60]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_565,plain,
% 3.70/0.99      ( ~ r2_hidden(X0,X1)
% 3.70/0.99      | r2_hidden(X2,sK6)
% 3.70/0.99      | ~ r2_hidden(X2,sK5)
% 3.70/0.99      | X2 != X0
% 3.70/0.99      | sK4 != X1 ),
% 3.70/0.99      inference(resolution_lifted,[status(thm)],[c_147,c_23]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_566,plain,
% 3.70/0.99      ( ~ r2_hidden(X0,sK4) | r2_hidden(X0,sK6) | ~ r2_hidden(X0,sK5) ),
% 3.70/0.99      inference(unflattening,[status(thm)],[c_565]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1329,plain,
% 3.70/0.99      ( r2_hidden(X0,sK4) != iProver_top
% 3.70/0.99      | r2_hidden(X0,sK6) = iProver_top
% 3.70/0.99      | r2_hidden(X0,sK5) != iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_566]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_7983,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = sK6
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,sK6),sK4) != iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,sK6),sK6) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_7973,c_1329]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_25,negated_conjecture,
% 3.70/0.99      ( m1_subset_1(sK5,k1_zfmisc_1(sK4)) ),
% 3.70/0.99      inference(cnf_transformation,[],[f58]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_649,plain,
% 3.70/0.99      ( r2_hidden(X0,X1)
% 3.70/0.99      | v1_xboole_0(X1)
% 3.70/0.99      | k1_zfmisc_1(sK4) != X1
% 3.70/0.99      | sK5 != X0 ),
% 3.70/0.99      inference(resolution_lifted,[status(thm)],[c_19,c_25]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_650,plain,
% 3.70/0.99      ( r2_hidden(sK5,k1_zfmisc_1(sK4)) | v1_xboole_0(k1_zfmisc_1(sK4)) ),
% 3.70/0.99      inference(unflattening,[status(thm)],[c_649]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_652,plain,
% 3.70/0.99      ( r2_hidden(sK5,k1_zfmisc_1(sK4)) ),
% 3.70/0.99      inference(global_propositional_subsumption,
% 3.70/0.99                [status(thm)],
% 3.70/0.99                [c_650,c_35]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1324,plain,
% 3.70/0.99      ( r2_hidden(sK5,k1_zfmisc_1(sK4)) = iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_652]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_2512,plain,
% 3.70/0.99      ( r1_tarski(sK5,sK4) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_1324,c_1331]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_3152,plain,
% 3.70/0.99      ( k3_xboole_0(sK5,sK4) = sK5 ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_2512,c_1335]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_3425,plain,
% 3.70/0.99      ( r2_hidden(X0,sK4) = iProver_top
% 3.70/0.99      | r2_hidden(X0,sK5) != iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_3152,c_1337]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_7981,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = sK6
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,sK6),sK4) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_7973,c_3425]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_7998,plain,
% 3.70/0.99      ( k3_xboole_0(X0,sK6) = sK6
% 3.70/0.99      | r2_hidden(sK2(X0,sK6,sK6),sK6) = iProver_top ),
% 3.70/0.99      inference(global_propositional_subsumption,
% 3.70/0.99                [status(thm)],
% 3.70/0.99                [c_7983,c_7981]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_5,plain,
% 3.70/0.99      ( ~ r2_hidden(sK2(X0,X1,X2),X1)
% 3.70/0.99      | ~ r2_hidden(sK2(X0,X1,X2),X0)
% 3.70/0.99      | ~ r2_hidden(sK2(X0,X1,X2),X2)
% 3.70/0.99      | k3_xboole_0(X0,X1) = X2 ),
% 3.70/0.99      inference(cnf_transformation,[],[f47]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1341,plain,
% 3.70/0.99      ( k3_xboole_0(X0,X1) = X2
% 3.70/0.99      | r2_hidden(sK2(X0,X1,X2),X0) != iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,X1,X2),X2) != iProver_top
% 3.70/0.99      | r2_hidden(sK2(X0,X1,X2),X1) != iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_7980,plain,
% 3.70/0.99      ( k3_xboole_0(sK5,sK6) = sK6
% 3.70/0.99      | r2_hidden(sK2(sK5,sK6,sK6),sK6) != iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_7973,c_1341]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_3,plain,
% 3.70/0.99      ( r1_tarski(X0,X1) | r2_hidden(sK1(X0,X1),X0) ),
% 3.70/0.99      inference(cnf_transformation,[],[f40]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1343,plain,
% 3.70/0.99      ( r1_tarski(X0,X1) = iProver_top
% 3.70/0.99      | r2_hidden(sK1(X0,X1),X0) = iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_2,plain,
% 3.70/0.99      ( r1_tarski(X0,X1) | ~ r2_hidden(sK1(X0,X1),X1) ),
% 3.70/0.99      inference(cnf_transformation,[],[f41]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1344,plain,
% 3.70/0.99      ( r1_tarski(X0,X1) = iProver_top
% 3.70/0.99      | r2_hidden(sK1(X0,X1),X1) != iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_3577,plain,
% 3.70/0.99      ( r1_tarski(X0,X0) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_1343,c_1344]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_4777,plain,
% 3.70/0.99      ( k3_xboole_0(X0,X0) = X0 ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_3577,c_1335]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_10,plain,
% 3.70/0.99      ( r2_hidden(X0,X1) | ~ r2_hidden(X0,k3_xboole_0(X1,X2)) ),
% 3.70/0.99      inference(cnf_transformation,[],[f65]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_1336,plain,
% 3.70/0.99      ( r2_hidden(X0,X1) = iProver_top
% 3.70/0.99      | r2_hidden(X0,k3_xboole_0(X1,X2)) != iProver_top ),
% 3.70/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_2874,plain,
% 3.70/0.99      ( r1_tarski(k3_xboole_0(X0,X1),X2) = iProver_top
% 3.70/0.99      | r2_hidden(sK1(k3_xboole_0(X0,X1),X2),X0) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_1343,c_1336]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_8451,plain,
% 3.70/0.99      ( r1_tarski(k3_xboole_0(sK5,X0),X1) = iProver_top
% 3.70/0.99      | r2_hidden(sK1(k3_xboole_0(sK5,X0),X1),sK4) != iProver_top
% 3.70/0.99      | r2_hidden(sK1(k3_xboole_0(sK5,X0),X1),sK6) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_2874,c_1329]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_8449,plain,
% 3.70/0.99      ( r1_tarski(k3_xboole_0(sK5,X0),X1) = iProver_top
% 3.70/0.99      | r2_hidden(sK1(k3_xboole_0(sK5,X0),X1),sK4) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_2874,c_3425]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_8701,plain,
% 3.70/0.99      ( r1_tarski(k3_xboole_0(sK5,X0),X1) = iProver_top
% 3.70/0.99      | r2_hidden(sK1(k3_xboole_0(sK5,X0),X1),sK6) = iProver_top ),
% 3.70/0.99      inference(global_propositional_subsumption,
% 3.70/0.99                [status(thm)],
% 3.70/0.99                [c_8451,c_8449]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_8710,plain,
% 3.70/0.99      ( r1_tarski(k3_xboole_0(sK5,X0),sK6) = iProver_top ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_8701,c_1344]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_9291,plain,
% 3.70/0.99      ( k3_xboole_0(k3_xboole_0(sK5,X0),sK6) = k3_xboole_0(sK5,X0) ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_8710,c_1335]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_9396,plain,
% 3.70/0.99      ( k3_xboole_0(sK5,sK6) = k3_xboole_0(sK5,sK5) ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_4777,c_9291]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_9409,plain,
% 3.70/0.99      ( k3_xboole_0(sK5,sK6) = sK5 ),
% 3.70/0.99      inference(demodulation,[status(thm)],[c_9396,c_4777]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_10983,plain,
% 3.70/0.99      ( sK6 = sK5 | r2_hidden(sK2(sK5,sK6,sK6),sK6) != iProver_top ),
% 3.70/0.99      inference(light_normalisation,[status(thm)],[c_7980,c_9409]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_21,negated_conjecture,
% 3.70/0.99      ( sK5 != sK6 ),
% 3.70/0.99      inference(cnf_transformation,[],[f62]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_758,plain,( X0 = X0 ),theory(equality) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_3129,plain,
% 3.70/0.99      ( sK5 = sK5 ),
% 3.70/0.99      inference(instantiation,[status(thm)],[c_758]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_759,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_2045,plain,
% 3.70/0.99      ( X0 != X1 | sK5 != X1 | sK5 = X0 ),
% 3.70/0.99      inference(instantiation,[status(thm)],[c_759]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_3185,plain,
% 3.70/0.99      ( X0 != sK5 | sK5 = X0 | sK5 != sK5 ),
% 3.70/0.99      inference(instantiation,[status(thm)],[c_2045]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_7744,plain,
% 3.70/0.99      ( sK6 != sK5 | sK5 = sK6 | sK5 != sK5 ),
% 3.70/0.99      inference(instantiation,[status(thm)],[c_3185]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_10985,plain,
% 3.70/0.99      ( r2_hidden(sK2(sK5,sK6,sK6),sK6) != iProver_top ),
% 3.70/0.99      inference(global_propositional_subsumption,
% 3.70/0.99                [status(thm)],
% 3.70/0.99                [c_10983,c_21,c_3129,c_7744]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_10996,plain,
% 3.70/0.99      ( k3_xboole_0(sK5,sK6) = sK6 ),
% 3.70/0.99      inference(superposition,[status(thm)],[c_7998,c_10985]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(c_10997,plain,
% 3.70/0.99      ( sK6 = sK5 ),
% 3.70/0.99      inference(light_normalisation,[status(thm)],[c_10996,c_9409]) ).
% 3.70/0.99  
% 3.70/0.99  cnf(contradiction,plain,
% 3.70/0.99      ( $false ),
% 3.70/0.99      inference(minisat,[status(thm)],[c_10997,c_7744,c_3129,c_21]) ).
% 3.70/0.99  
% 3.70/0.99  
% 3.70/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.70/0.99  
% 3.70/0.99  ------                               Statistics
% 3.70/0.99  
% 3.70/0.99  ------ General
% 3.70/0.99  
% 3.70/0.99  abstr_ref_over_cycles:                  0
% 3.70/0.99  abstr_ref_under_cycles:                 0
% 3.70/0.99  gc_basic_clause_elim:                   0
% 3.70/0.99  forced_gc_time:                         0
% 3.70/0.99  parsing_time:                           0.009
% 3.70/0.99  unif_index_cands_time:                  0.
% 3.70/0.99  unif_index_add_time:                    0.
% 3.70/0.99  orderings_time:                         0.
% 3.70/0.99  out_proof_time:                         0.009
% 3.70/0.99  total_time:                             0.298
% 3.70/0.99  num_of_symbols:                         44
% 3.70/0.99  num_of_terms:                           9511
% 3.70/0.99  
% 3.70/0.99  ------ Preprocessing
% 3.70/0.99  
% 3.70/0.99  num_of_splits:                          0
% 3.70/0.99  num_of_split_atoms:                     0
% 3.70/0.99  num_of_reused_defs:                     0
% 3.70/0.99  num_eq_ax_congr_red:                    22
% 3.70/0.99  num_of_sem_filtered_clauses:            1
% 3.70/0.99  num_of_subtypes:                        0
% 3.70/0.99  monotx_restored_types:                  0
% 3.70/0.99  sat_num_of_epr_types:                   0
% 3.70/0.99  sat_num_of_non_cyclic_types:            0
% 3.70/0.99  sat_guarded_non_collapsed_types:        0
% 3.70/0.99  num_pure_diseq_elim:                    0
% 3.70/0.99  simp_replaced_by:                       0
% 3.70/0.99  res_preprocessed:                       95
% 3.70/0.99  prep_upred:                             0
% 3.70/0.99  prep_unflattend:                        32
% 3.70/0.99  smt_new_axioms:                         0
% 3.70/0.99  pred_elim_cands:                        4
% 3.70/0.99  pred_elim:                              1
% 3.70/0.99  pred_elim_cl:                           -2
% 3.70/0.99  pred_elim_cycles:                       3
% 3.70/0.99  merged_defs:                            6
% 3.70/0.99  merged_defs_ncl:                        0
% 3.70/0.99  bin_hyper_res:                          6
% 3.70/0.99  prep_cycles:                            3
% 3.70/0.99  pred_elim_time:                         0.006
% 3.70/0.99  splitting_time:                         0.
% 3.70/0.99  sem_filter_time:                        0.
% 3.70/0.99  monotx_time:                            0.
% 3.70/0.99  subtype_inf_time:                       0.
% 3.70/0.99  
% 3.70/0.99  ------ Problem properties
% 3.70/0.99  
% 3.70/0.99  clauses:                                28
% 3.70/0.99  conjectures:                            1
% 3.70/0.99  epr:                                    7
% 3.70/0.99  horn:                                   23
% 3.70/0.99  ground:                                 7
% 3.70/0.99  unary:                                  4
% 3.70/0.99  binary:                                 9
% 3.70/0.99  lits:                                   70
% 3.70/0.99  lits_eq:                                11
% 3.70/0.99  fd_pure:                                0
% 3.70/0.99  fd_pseudo:                              0
% 3.70/0.99  fd_cond:                                0
% 3.70/0.99  fd_pseudo_cond:                         5
% 3.70/0.99  ac_symbols:                             0
% 3.70/0.99  
% 3.70/0.99  ------ Propositional Solver
% 3.70/0.99  
% 3.70/0.99  prop_solver_calls:                      24
% 3.70/0.99  prop_fast_solver_calls:                 958
% 3.70/0.99  smt_solver_calls:                       0
% 3.70/0.99  smt_fast_solver_calls:                  0
% 3.70/0.99  prop_num_of_clauses:                    5192
% 3.70/0.99  prop_preprocess_simplified:             12119
% 3.70/0.99  prop_fo_subsumed:                       36
% 3.70/0.99  prop_solver_time:                       0.
% 3.70/0.99  smt_solver_time:                        0.
% 3.70/0.99  smt_fast_solver_time:                   0.
% 3.70/0.99  prop_fast_solver_time:                  0.
% 3.70/0.99  prop_unsat_core_time:                   0.
% 3.70/0.99  
% 3.70/0.99  ------ QBF
% 3.70/0.99  
% 3.70/0.99  qbf_q_res:                              0
% 3.70/0.99  qbf_num_tautologies:                    0
% 3.70/0.99  qbf_prep_cycles:                        0
% 3.70/0.99  
% 3.70/0.99  ------ BMC1
% 3.70/0.99  
% 3.70/0.99  bmc1_current_bound:                     -1
% 3.70/0.99  bmc1_last_solved_bound:                 -1
% 3.70/0.99  bmc1_unsat_core_size:                   -1
% 3.70/0.99  bmc1_unsat_core_parents_size:           -1
% 3.70/0.99  bmc1_merge_next_fun:                    0
% 3.70/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.70/0.99  
% 3.70/0.99  ------ Instantiation
% 3.70/0.99  
% 3.70/0.99  inst_num_of_clauses:                    1349
% 3.70/0.99  inst_num_in_passive:                    462
% 3.70/0.99  inst_num_in_active:                     477
% 3.70/0.99  inst_num_in_unprocessed:                410
% 3.70/0.99  inst_num_of_loops:                      670
% 3.70/0.99  inst_num_of_learning_restarts:          0
% 3.70/0.99  inst_num_moves_active_passive:          193
% 3.70/0.99  inst_lit_activity:                      0
% 3.70/0.99  inst_lit_activity_moves:                0
% 3.70/0.99  inst_num_tautologies:                   0
% 3.70/0.99  inst_num_prop_implied:                  0
% 3.70/0.99  inst_num_existing_simplified:           0
% 3.70/0.99  inst_num_eq_res_simplified:             0
% 3.70/0.99  inst_num_child_elim:                    0
% 3.70/0.99  inst_num_of_dismatching_blockings:      514
% 3.70/0.99  inst_num_of_non_proper_insts:           1220
% 3.70/0.99  inst_num_of_duplicates:                 0
% 3.70/0.99  inst_inst_num_from_inst_to_res:         0
% 3.70/0.99  inst_dismatching_checking_time:         0.
% 3.70/0.99  
% 3.70/0.99  ------ Resolution
% 3.70/0.99  
% 3.70/0.99  res_num_of_clauses:                     0
% 3.70/0.99  res_num_in_passive:                     0
% 3.70/0.99  res_num_in_active:                      0
% 3.70/0.99  res_num_of_loops:                       98
% 3.70/0.99  res_forward_subset_subsumed:            108
% 3.70/0.99  res_backward_subset_subsumed:           0
% 3.70/0.99  res_forward_subsumed:                   2
% 3.70/0.99  res_backward_subsumed:                  0
% 3.70/0.99  res_forward_subsumption_resolution:     0
% 3.70/0.99  res_backward_subsumption_resolution:    0
% 3.70/0.99  res_clause_to_clause_subsumption:       2161
% 3.70/0.99  res_orphan_elimination:                 0
% 3.70/0.99  res_tautology_del:                      29
% 3.70/0.99  res_num_eq_res_simplified:              0
% 3.70/0.99  res_num_sel_changes:                    0
% 3.70/0.99  res_moves_from_active_to_pass:          0
% 3.70/0.99  
% 3.70/0.99  ------ Superposition
% 3.70/0.99  
% 3.70/0.99  sup_time_total:                         0.
% 3.70/0.99  sup_time_generating:                    0.
% 3.70/0.99  sup_time_sim_full:                      0.
% 3.70/0.99  sup_time_sim_immed:                     0.
% 3.70/0.99  
% 3.70/0.99  sup_num_of_clauses:                     305
% 3.70/0.99  sup_num_in_active:                      114
% 3.70/0.99  sup_num_in_passive:                     191
% 3.70/0.99  sup_num_of_loops:                       132
% 3.70/0.99  sup_fw_superposition:                   216
% 3.70/0.99  sup_bw_superposition:                   456
% 3.70/0.99  sup_immediate_simplified:               244
% 3.70/0.99  sup_given_eliminated:                   1
% 3.70/0.99  comparisons_done:                       0
% 3.70/0.99  comparisons_avoided:                    0
% 3.70/0.99  
% 3.70/0.99  ------ Simplifications
% 3.70/0.99  
% 3.70/0.99  
% 3.70/0.99  sim_fw_subset_subsumed:                 4
% 3.70/0.99  sim_bw_subset_subsumed:                 28
% 3.70/0.99  sim_fw_subsumed:                        162
% 3.70/0.99  sim_bw_subsumed:                        15
% 3.70/0.99  sim_fw_subsumption_res:                 0
% 3.70/0.99  sim_bw_subsumption_res:                 0
% 3.70/0.99  sim_tautology_del:                      42
% 3.70/0.99  sim_eq_tautology_del:                   2
% 3.70/0.99  sim_eq_res_simp:                        10
% 3.70/0.99  sim_fw_demodulated:                     60
% 3.70/0.99  sim_bw_demodulated:                     1
% 3.70/0.99  sim_light_normalised:                   33
% 3.70/0.99  sim_joinable_taut:                      0
% 3.70/0.99  sim_joinable_simp:                      0
% 3.70/0.99  sim_ac_normalised:                      0
% 3.70/0.99  sim_smt_subsumption:                    0
% 3.70/0.99  
%------------------------------------------------------------------------------
