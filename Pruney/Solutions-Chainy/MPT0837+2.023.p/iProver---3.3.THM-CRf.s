%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:56:24 EST 2020

% Result     : Theorem 2.80s
% Output     : CNFRefutation 2.80s
% Verified   : 
% Statistics : Number of formulae       :   96 ( 288 expanded)
%              Number of clauses        :   43 (  75 expanded)
%              Number of leaves         :   18 (  97 expanded)
%              Depth                    :   16
%              Number of atoms          :  362 (1731 expanded)
%              Number of equality atoms :   65 ( 136 expanded)
%              Maximal formula depth    :   14 (   5 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f6,axiom,(
    ! [X0,X1] :
      ( k2_relat_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> ? [X3] : r2_hidden(k4_tarski(X3,X2),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( k2_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,X2),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X3] : r2_hidden(k4_tarski(X3,X2),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ! [X3] : ~ r2_hidden(k4_tarski(X3,X2),X0) )
            & ( ? [X3] : r2_hidden(k4_tarski(X3,X2),X0)
              | ~ r2_hidden(X2,X1) ) )
        | k2_relat_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f6])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( k2_relat_1(X0) = X1
        | ? [X2] :
            ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,X2),X0)
              | ~ r2_hidden(X2,X1) )
            & ( ? [X4] : r2_hidden(k4_tarski(X4,X2),X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X6,X5),X0) )
            & ( ? [X7] : r2_hidden(k4_tarski(X7,X5),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k2_relat_1(X0) != X1 ) ) ),
    inference(rectify,[],[f26])).

fof(f30,plain,(
    ! [X5,X0] :
      ( ? [X7] : r2_hidden(k4_tarski(X7,X5),X0)
     => r2_hidden(k4_tarski(sK4(X0,X5),X5),X0) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] : r2_hidden(k4_tarski(X4,X2),X0)
     => r2_hidden(k4_tarski(sK3(X0,X1),X2),X0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,X2),X0)
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] : r2_hidden(k4_tarski(X4,X2),X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,sK2(X0,X1)),X0)
          | ~ r2_hidden(sK2(X0,X1),X1) )
        & ( ? [X4] : r2_hidden(k4_tarski(X4,sK2(X0,X1)),X0)
          | r2_hidden(sK2(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( k2_relat_1(X0) = X1
        | ( ( ! [X3] : ~ r2_hidden(k4_tarski(X3,sK2(X0,X1)),X0)
            | ~ r2_hidden(sK2(X0,X1),X1) )
          & ( r2_hidden(k4_tarski(sK3(X0,X1),sK2(X0,X1)),X0)
            | r2_hidden(sK2(X0,X1),X1) ) ) )
      & ( ! [X5] :
            ( ( r2_hidden(X5,X1)
              | ! [X6] : ~ r2_hidden(k4_tarski(X6,X5),X0) )
            & ( r2_hidden(k4_tarski(sK4(X0,X5),X5),X0)
              | ~ r2_hidden(X5,X1) ) )
        | k2_relat_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f27,f30,f29,f28])).

fof(f54,plain,(
    ! [X0,X5,X1] :
      ( r2_hidden(k4_tarski(sK4(X0,X5),X5),X0)
      | ~ r2_hidden(X5,X1)
      | k2_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f66,plain,(
    ! [X0,X5] :
      ( r2_hidden(k4_tarski(sK4(X0,X5),X5),X0)
      | ~ r2_hidden(X5,k2_relat_1(X0)) ) ),
    inference(equality_resolution,[],[f54])).

fof(f8,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ~ v1_xboole_0(X1)
         => ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
             => ! [X3] :
                  ( r2_hidden(X3,k2_relset_1(X1,X0,X2))
                <=> ? [X4] :
                      ( r2_hidden(k4_tarski(X4,X3),X2)
                      & m1_subset_1(X4,X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ~ v1_xboole_0(X1)
           => ! [X2] :
                ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
               => ! [X3] :
                    ( r2_hidden(X3,k2_relset_1(X1,X0,X2))
                  <=> ? [X4] :
                        ( r2_hidden(k4_tarski(X4,X3),X2)
                        & m1_subset_1(X4,X1) ) ) ) ) ) ),
    inference(negated_conjecture,[],[f8])).

fof(f13,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( r2_hidden(X3,k2_relset_1(X1,X0,X2))
                <~> ? [X4] :
                      ( r2_hidden(k4_tarski(X4,X3),X2)
                      & m1_subset_1(X4,X1) ) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f32,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( ! [X4] :
                        ( ~ r2_hidden(k4_tarski(X4,X3),X2)
                        | ~ m1_subset_1(X4,X1) )
                    | ~ r2_hidden(X3,k2_relset_1(X1,X0,X2)) )
                  & ( ? [X4] :
                        ( r2_hidden(k4_tarski(X4,X3),X2)
                        & m1_subset_1(X4,X1) )
                    | r2_hidden(X3,k2_relset_1(X1,X0,X2)) ) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(nnf_transformation,[],[f13])).

fof(f33,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( ! [X4] :
                        ( ~ r2_hidden(k4_tarski(X4,X3),X2)
                        | ~ m1_subset_1(X4,X1) )
                    | ~ r2_hidden(X3,k2_relset_1(X1,X0,X2)) )
                  & ( ? [X5] :
                        ( r2_hidden(k4_tarski(X5,X3),X2)
                        & m1_subset_1(X5,X1) )
                    | r2_hidden(X3,k2_relset_1(X1,X0,X2)) ) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(rectify,[],[f32])).

fof(f38,plain,(
    ! [X2,X3,X1] :
      ( ? [X5] :
          ( r2_hidden(k4_tarski(X5,X3),X2)
          & m1_subset_1(X5,X1) )
     => ( r2_hidden(k4_tarski(sK9,X3),X2)
        & m1_subset_1(sK9,X1) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ( ! [X4] :
                ( ~ r2_hidden(k4_tarski(X4,X3),X2)
                | ~ m1_subset_1(X4,X1) )
            | ~ r2_hidden(X3,k2_relset_1(X1,X0,X2)) )
          & ( ? [X5] :
                ( r2_hidden(k4_tarski(X5,X3),X2)
                & m1_subset_1(X5,X1) )
            | r2_hidden(X3,k2_relset_1(X1,X0,X2)) ) )
     => ( ( ! [X4] :
              ( ~ r2_hidden(k4_tarski(X4,sK8),X2)
              | ~ m1_subset_1(X4,X1) )
          | ~ r2_hidden(sK8,k2_relset_1(X1,X0,X2)) )
        & ( ? [X5] :
              ( r2_hidden(k4_tarski(X5,sK8),X2)
              & m1_subset_1(X5,X1) )
          | r2_hidden(sK8,k2_relset_1(X1,X0,X2)) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ? [X3] :
              ( ( ! [X4] :
                    ( ~ r2_hidden(k4_tarski(X4,X3),X2)
                    | ~ m1_subset_1(X4,X1) )
                | ~ r2_hidden(X3,k2_relset_1(X1,X0,X2)) )
              & ( ? [X5] :
                    ( r2_hidden(k4_tarski(X5,X3),X2)
                    & m1_subset_1(X5,X1) )
                | r2_hidden(X3,k2_relset_1(X1,X0,X2)) ) )
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
     => ( ? [X3] :
            ( ( ! [X4] :
                  ( ~ r2_hidden(k4_tarski(X4,X3),sK7)
                  | ~ m1_subset_1(X4,X1) )
              | ~ r2_hidden(X3,k2_relset_1(X1,X0,sK7)) )
            & ( ? [X5] :
                  ( r2_hidden(k4_tarski(X5,X3),sK7)
                  & m1_subset_1(X5,X1) )
              | r2_hidden(X3,k2_relset_1(X1,X0,sK7)) ) )
        & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( ! [X4] :
                        ( ~ r2_hidden(k4_tarski(X4,X3),X2)
                        | ~ m1_subset_1(X4,X1) )
                    | ~ r2_hidden(X3,k2_relset_1(X1,X0,X2)) )
                  & ( ? [X5] :
                        ( r2_hidden(k4_tarski(X5,X3),X2)
                        & m1_subset_1(X5,X1) )
                    | r2_hidden(X3,k2_relset_1(X1,X0,X2)) ) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
          & ~ v1_xboole_0(X1) )
     => ( ? [X2] :
            ( ? [X3] :
                ( ( ! [X4] :
                      ( ~ r2_hidden(k4_tarski(X4,X3),X2)
                      | ~ m1_subset_1(X4,sK6) )
                  | ~ r2_hidden(X3,k2_relset_1(sK6,X0,X2)) )
                & ( ? [X5] :
                      ( r2_hidden(k4_tarski(X5,X3),X2)
                      & m1_subset_1(X5,sK6) )
                  | r2_hidden(X3,k2_relset_1(sK6,X0,X2)) ) )
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK6,X0))) )
        & ~ v1_xboole_0(sK6) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ? [X2] :
                ( ? [X3] :
                    ( ( ! [X4] :
                          ( ~ r2_hidden(k4_tarski(X4,X3),X2)
                          | ~ m1_subset_1(X4,X1) )
                      | ~ r2_hidden(X3,k2_relset_1(X1,X0,X2)) )
                    & ( ? [X5] :
                          ( r2_hidden(k4_tarski(X5,X3),X2)
                          & m1_subset_1(X5,X1) )
                      | r2_hidden(X3,k2_relset_1(X1,X0,X2)) ) )
                & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
            & ~ v1_xboole_0(X1) )
        & ~ v1_xboole_0(X0) )
   => ( ? [X1] :
          ( ? [X2] :
              ( ? [X3] :
                  ( ( ! [X4] :
                        ( ~ r2_hidden(k4_tarski(X4,X3),X2)
                        | ~ m1_subset_1(X4,X1) )
                    | ~ r2_hidden(X3,k2_relset_1(X1,sK5,X2)) )
                  & ( ? [X5] :
                        ( r2_hidden(k4_tarski(X5,X3),X2)
                        & m1_subset_1(X5,X1) )
                    | r2_hidden(X3,k2_relset_1(X1,sK5,X2)) ) )
              & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,sK5))) )
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(sK5) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,
    ( ( ! [X4] :
          ( ~ r2_hidden(k4_tarski(X4,sK8),sK7)
          | ~ m1_subset_1(X4,sK6) )
      | ~ r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) )
    & ( ( r2_hidden(k4_tarski(sK9,sK8),sK7)
        & m1_subset_1(sK9,sK6) )
      | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) )
    & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK6,sK5)))
    & ~ v1_xboole_0(sK6)
    & ~ v1_xboole_0(sK5) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7,sK8,sK9])],[f33,f38,f37,f36,f35,f34])).

fof(f61,plain,(
    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK6,sK5))) ),
    inference(cnf_transformation,[],[f39])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f52,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f25])).

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

fof(f18,plain,(
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

fof(f19,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f18])).

fof(f20,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK1(X0,X1),X1)
        & r2_hidden(sK1(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK1(X0,X1),X1)
          & r2_hidden(sK1(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f19,f20])).

fof(f42,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3] :
      ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X0,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f23,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))
        | ~ r2_hidden(X1,X3)
        | ~ r2_hidden(X0,X2) )
      & ( ( r2_hidden(X1,X3)
          & r2_hidden(X0,X2) )
        | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ) ),
    inference(flattening,[],[f22])).

fof(f45,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_hidden(X0,X2)
      | ~ r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f24,plain,(
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
    inference(nnf_transformation,[],[f11])).

fof(f49,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,X0)
      | ~ r2_hidden(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f15,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f14])).

fof(f16,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f15,f16])).

fof(f40,plain,(
    ! [X2,X0] :
      ( ~ r2_hidden(X2,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f64,plain,(
    ! [X4] :
      ( ~ r2_hidden(k4_tarski(X4,sK8),sK7)
      | ~ m1_subset_1(X4,sK6)
      | ~ r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f63,plain,
    ( r2_hidden(k4_tarski(sK9,sK8),sK7)
    | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) ),
    inference(cnf_transformation,[],[f39])).

fof(f55,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(X5,X1)
      | ~ r2_hidden(k4_tarski(X6,X5),X0)
      | k2_relat_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f65,plain,(
    ! [X6,X0,X5] :
      ( r2_hidden(X5,k2_relat_1(X0))
      | ~ r2_hidden(k4_tarski(X6,X5),X0) ) ),
    inference(equality_resolution,[],[f55])).

fof(f62,plain,
    ( m1_subset_1(sK9,sK6)
    | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_17,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | r2_hidden(k4_tarski(sK4(X1,X0),X0),X1) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1255,plain,
    ( r2_hidden(X0,k2_relat_1(X1)) != iProver_top
    | r2_hidden(k4_tarski(sK4(X1,X0),X0),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_22,negated_conjecture,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK6,sK5))) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1250,plain,
    ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK6,sK5))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1259,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_1837,plain,
    ( r1_tarski(sK7,k2_zfmisc_1(sK6,sK5)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1250,c_1259])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1267,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | r2_hidden(X2,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_3321,plain,
    ( r2_hidden(X0,k2_zfmisc_1(sK6,sK5)) = iProver_top
    | r2_hidden(X0,sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_1837,c_1267])).

cnf(c_7,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1264,plain,
    ( r2_hidden(X0,X1) = iProver_top
    | r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_3401,plain,
    ( r2_hidden(X0,sK6) = iProver_top
    | r2_hidden(k4_tarski(X0,X1),sK7) != iProver_top ),
    inference(superposition,[status(thm)],[c_3321,c_1264])).

cnf(c_3976,plain,
    ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
    | r2_hidden(sK4(sK7,X0),sK6) = iProver_top ),
    inference(superposition,[status(thm)],[c_1255,c_3401])).

cnf(c_10,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_145,plain,
    ( ~ r2_hidden(X0,X1)
    | m1_subset_1(X0,X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_10,c_1])).

cnf(c_146,plain,
    ( m1_subset_1(X0,X1)
    | ~ r2_hidden(X0,X1) ),
    inference(renaming,[status(thm)],[c_145])).

cnf(c_1247,plain,
    ( m1_subset_1(X0,X1) = iProver_top
    | r2_hidden(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_146])).

cnf(c_4753,plain,
    ( m1_subset_1(sK4(sK7,X0),sK6) = iProver_top
    | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3976,c_1247])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1254,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2458,plain,
    ( k2_relset_1(sK6,sK5,sK7) = k2_relat_1(sK7) ),
    inference(superposition,[status(thm)],[c_1250,c_1254])).

cnf(c_19,negated_conjecture,
    ( ~ m1_subset_1(X0,sK6)
    | ~ r2_hidden(k4_tarski(X0,sK8),sK7)
    | ~ r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1253,plain,
    ( m1_subset_1(X0,sK6) != iProver_top
    | r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top
    | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_2631,plain,
    ( m1_subset_1(X0,sK6) != iProver_top
    | r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top
    | r2_hidden(sK8,k2_relat_1(sK7)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2458,c_1253])).

cnf(c_20,negated_conjecture,
    ( r2_hidden(k4_tarski(sK9,sK8),sK7)
    | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1252,plain,
    ( r2_hidden(k4_tarski(sK9,sK8),sK7) = iProver_top
    | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_1515,plain,
    ( m1_subset_1(X0,sK6) != iProver_top
    | r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top
    | r2_hidden(k4_tarski(sK9,sK8),sK7) = iProver_top ),
    inference(superposition,[status(thm)],[c_1252,c_1253])).

cnf(c_16,plain,
    ( r2_hidden(X0,k2_relat_1(X1))
    | ~ r2_hidden(k4_tarski(X2,X0),X1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1622,plain,
    ( ~ r2_hidden(k4_tarski(sK9,sK8),sK7)
    | r2_hidden(sK8,k2_relat_1(sK7)) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_1623,plain,
    ( r2_hidden(k4_tarski(sK9,sK8),sK7) != iProver_top
    | r2_hidden(sK8,k2_relat_1(sK7)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1622])).

cnf(c_2712,plain,
    ( r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top
    | m1_subset_1(X0,sK6) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2631,c_1515,c_1623])).

cnf(c_2713,plain,
    ( m1_subset_1(X0,sK6) != iProver_top
    | r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top ),
    inference(renaming,[status(thm)],[c_2712])).

cnf(c_2720,plain,
    ( m1_subset_1(sK4(sK7,sK8),sK6) != iProver_top
    | r2_hidden(sK8,k2_relat_1(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1255,c_2713])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK9,sK6)
    | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1251,plain,
    ( m1_subset_1(sK9,sK6) = iProver_top
    | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_2630,plain,
    ( m1_subset_1(sK9,sK6) = iProver_top
    | r2_hidden(sK8,k2_relat_1(sK7)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2458,c_1251])).

cnf(c_2629,plain,
    ( r2_hidden(k4_tarski(sK9,sK8),sK7) = iProver_top
    | r2_hidden(sK8,k2_relat_1(sK7)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2458,c_1252])).

cnf(c_2723,plain,
    ( r2_hidden(sK8,k2_relat_1(sK7)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2630,c_1623,c_2629])).

cnf(c_3464,plain,
    ( m1_subset_1(sK4(sK7,sK8),sK6) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2720,c_1623,c_2629])).

cnf(c_6333,plain,
    ( r2_hidden(sK8,k2_relat_1(sK7)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4753,c_3464])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_6333,c_2723])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n001.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:13:14 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.80/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.80/1.00  
% 2.80/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.80/1.00  
% 2.80/1.00  ------  iProver source info
% 2.80/1.00  
% 2.80/1.00  git: date: 2020-06-30 10:37:57 +0100
% 2.80/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.80/1.00  git: non_committed_changes: false
% 2.80/1.00  git: last_make_outside_of_git: false
% 2.80/1.00  
% 2.80/1.00  ------ 
% 2.80/1.00  
% 2.80/1.00  ------ Input Options
% 2.80/1.00  
% 2.80/1.00  --out_options                           all
% 2.80/1.00  --tptp_safe_out                         true
% 2.80/1.00  --problem_path                          ""
% 2.80/1.00  --include_path                          ""
% 2.80/1.00  --clausifier                            res/vclausify_rel
% 2.80/1.00  --clausifier_options                    --mode clausify
% 2.80/1.00  --stdin                                 false
% 2.80/1.00  --stats_out                             all
% 2.80/1.00  
% 2.80/1.00  ------ General Options
% 2.80/1.00  
% 2.80/1.00  --fof                                   false
% 2.80/1.00  --time_out_real                         305.
% 2.80/1.00  --time_out_virtual                      -1.
% 2.80/1.00  --symbol_type_check                     false
% 2.80/1.00  --clausify_out                          false
% 2.80/1.00  --sig_cnt_out                           false
% 2.80/1.00  --trig_cnt_out                          false
% 2.80/1.00  --trig_cnt_out_tolerance                1.
% 2.80/1.00  --trig_cnt_out_sk_spl                   false
% 2.80/1.00  --abstr_cl_out                          false
% 2.80/1.00  
% 2.80/1.00  ------ Global Options
% 2.80/1.00  
% 2.80/1.00  --schedule                              default
% 2.80/1.00  --add_important_lit                     false
% 2.80/1.00  --prop_solver_per_cl                    1000
% 2.80/1.00  --min_unsat_core                        false
% 2.80/1.00  --soft_assumptions                      false
% 2.80/1.00  --soft_lemma_size                       3
% 2.80/1.00  --prop_impl_unit_size                   0
% 2.80/1.00  --prop_impl_unit                        []
% 2.80/1.00  --share_sel_clauses                     true
% 2.80/1.00  --reset_solvers                         false
% 2.80/1.00  --bc_imp_inh                            [conj_cone]
% 2.80/1.00  --conj_cone_tolerance                   3.
% 2.80/1.00  --extra_neg_conj                        none
% 2.80/1.00  --large_theory_mode                     true
% 2.80/1.00  --prolific_symb_bound                   200
% 2.80/1.00  --lt_threshold                          2000
% 2.80/1.00  --clause_weak_htbl                      true
% 2.80/1.00  --gc_record_bc_elim                     false
% 2.80/1.00  
% 2.80/1.00  ------ Preprocessing Options
% 2.80/1.00  
% 2.80/1.00  --preprocessing_flag                    true
% 2.80/1.00  --time_out_prep_mult                    0.1
% 2.80/1.00  --splitting_mode                        input
% 2.80/1.00  --splitting_grd                         true
% 2.80/1.00  --splitting_cvd                         false
% 2.80/1.00  --splitting_cvd_svl                     false
% 2.80/1.00  --splitting_nvd                         32
% 2.80/1.00  --sub_typing                            true
% 2.80/1.00  --prep_gs_sim                           true
% 2.80/1.00  --prep_unflatten                        true
% 2.80/1.00  --prep_res_sim                          true
% 2.80/1.00  --prep_upred                            true
% 2.80/1.00  --prep_sem_filter                       exhaustive
% 2.80/1.00  --prep_sem_filter_out                   false
% 2.80/1.00  --pred_elim                             true
% 2.80/1.00  --res_sim_input                         true
% 2.80/1.00  --eq_ax_congr_red                       true
% 2.80/1.00  --pure_diseq_elim                       true
% 2.80/1.00  --brand_transform                       false
% 2.80/1.00  --non_eq_to_eq                          false
% 2.80/1.00  --prep_def_merge                        true
% 2.80/1.00  --prep_def_merge_prop_impl              false
% 2.80/1.00  --prep_def_merge_mbd                    true
% 2.80/1.00  --prep_def_merge_tr_red                 false
% 2.80/1.00  --prep_def_merge_tr_cl                  false
% 2.80/1.00  --smt_preprocessing                     true
% 2.80/1.00  --smt_ac_axioms                         fast
% 2.80/1.00  --preprocessed_out                      false
% 2.80/1.00  --preprocessed_stats                    false
% 2.80/1.00  
% 2.80/1.00  ------ Abstraction refinement Options
% 2.80/1.00  
% 2.80/1.00  --abstr_ref                             []
% 2.80/1.00  --abstr_ref_prep                        false
% 2.80/1.00  --abstr_ref_until_sat                   false
% 2.80/1.00  --abstr_ref_sig_restrict                funpre
% 2.80/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.80/1.00  --abstr_ref_under                       []
% 2.80/1.00  
% 2.80/1.00  ------ SAT Options
% 2.80/1.00  
% 2.80/1.00  --sat_mode                              false
% 2.80/1.00  --sat_fm_restart_options                ""
% 2.80/1.00  --sat_gr_def                            false
% 2.80/1.00  --sat_epr_types                         true
% 2.80/1.00  --sat_non_cyclic_types                  false
% 2.80/1.00  --sat_finite_models                     false
% 2.80/1.00  --sat_fm_lemmas                         false
% 2.80/1.00  --sat_fm_prep                           false
% 2.80/1.00  --sat_fm_uc_incr                        true
% 2.80/1.00  --sat_out_model                         small
% 2.80/1.00  --sat_out_clauses                       false
% 2.80/1.00  
% 2.80/1.00  ------ QBF Options
% 2.80/1.00  
% 2.80/1.00  --qbf_mode                              false
% 2.80/1.00  --qbf_elim_univ                         false
% 2.80/1.00  --qbf_dom_inst                          none
% 2.80/1.00  --qbf_dom_pre_inst                      false
% 2.80/1.00  --qbf_sk_in                             false
% 2.80/1.00  --qbf_pred_elim                         true
% 2.80/1.00  --qbf_split                             512
% 2.80/1.00  
% 2.80/1.00  ------ BMC1 Options
% 2.80/1.00  
% 2.80/1.00  --bmc1_incremental                      false
% 2.80/1.00  --bmc1_axioms                           reachable_all
% 2.80/1.00  --bmc1_min_bound                        0
% 2.80/1.00  --bmc1_max_bound                        -1
% 2.80/1.00  --bmc1_max_bound_default                -1
% 2.80/1.00  --bmc1_symbol_reachability              true
% 2.80/1.00  --bmc1_property_lemmas                  false
% 2.80/1.00  --bmc1_k_induction                      false
% 2.80/1.00  --bmc1_non_equiv_states                 false
% 2.80/1.00  --bmc1_deadlock                         false
% 2.80/1.00  --bmc1_ucm                              false
% 2.80/1.00  --bmc1_add_unsat_core                   none
% 2.80/1.00  --bmc1_unsat_core_children              false
% 2.80/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.80/1.00  --bmc1_out_stat                         full
% 2.80/1.00  --bmc1_ground_init                      false
% 2.80/1.00  --bmc1_pre_inst_next_state              false
% 2.80/1.00  --bmc1_pre_inst_state                   false
% 2.80/1.00  --bmc1_pre_inst_reach_state             false
% 2.80/1.00  --bmc1_out_unsat_core                   false
% 2.80/1.00  --bmc1_aig_witness_out                  false
% 2.80/1.00  --bmc1_verbose                          false
% 2.80/1.00  --bmc1_dump_clauses_tptp                false
% 2.80/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.80/1.00  --bmc1_dump_file                        -
% 2.80/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.80/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.80/1.00  --bmc1_ucm_extend_mode                  1
% 2.80/1.00  --bmc1_ucm_init_mode                    2
% 2.80/1.00  --bmc1_ucm_cone_mode                    none
% 2.80/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.80/1.00  --bmc1_ucm_relax_model                  4
% 2.80/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.80/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.80/1.00  --bmc1_ucm_layered_model                none
% 2.80/1.00  --bmc1_ucm_max_lemma_size               10
% 2.80/1.00  
% 2.80/1.00  ------ AIG Options
% 2.80/1.00  
% 2.80/1.00  --aig_mode                              false
% 2.80/1.00  
% 2.80/1.00  ------ Instantiation Options
% 2.80/1.00  
% 2.80/1.00  --instantiation_flag                    true
% 2.80/1.00  --inst_sos_flag                         false
% 2.80/1.00  --inst_sos_phase                        true
% 2.80/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.80/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.80/1.00  --inst_lit_sel_side                     num_symb
% 2.80/1.00  --inst_solver_per_active                1400
% 2.80/1.00  --inst_solver_calls_frac                1.
% 2.80/1.00  --inst_passive_queue_type               priority_queues
% 2.80/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.80/1.00  --inst_passive_queues_freq              [25;2]
% 2.80/1.00  --inst_dismatching                      true
% 2.80/1.00  --inst_eager_unprocessed_to_passive     true
% 2.80/1.00  --inst_prop_sim_given                   true
% 2.80/1.00  --inst_prop_sim_new                     false
% 2.80/1.00  --inst_subs_new                         false
% 2.80/1.00  --inst_eq_res_simp                      false
% 2.80/1.00  --inst_subs_given                       false
% 2.80/1.00  --inst_orphan_elimination               true
% 2.80/1.00  --inst_learning_loop_flag               true
% 2.80/1.00  --inst_learning_start                   3000
% 2.80/1.00  --inst_learning_factor                  2
% 2.80/1.00  --inst_start_prop_sim_after_learn       3
% 2.80/1.00  --inst_sel_renew                        solver
% 2.80/1.00  --inst_lit_activity_flag                true
% 2.80/1.00  --inst_restr_to_given                   false
% 2.80/1.00  --inst_activity_threshold               500
% 2.80/1.00  --inst_out_proof                        true
% 2.80/1.00  
% 2.80/1.00  ------ Resolution Options
% 2.80/1.00  
% 2.80/1.00  --resolution_flag                       true
% 2.80/1.00  --res_lit_sel                           adaptive
% 2.80/1.00  --res_lit_sel_side                      none
% 2.80/1.00  --res_ordering                          kbo
% 2.80/1.00  --res_to_prop_solver                    active
% 2.80/1.00  --res_prop_simpl_new                    false
% 2.80/1.00  --res_prop_simpl_given                  true
% 2.80/1.00  --res_passive_queue_type                priority_queues
% 2.80/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.80/1.00  --res_passive_queues_freq               [15;5]
% 2.80/1.00  --res_forward_subs                      full
% 2.80/1.00  --res_backward_subs                     full
% 2.80/1.00  --res_forward_subs_resolution           true
% 2.80/1.00  --res_backward_subs_resolution          true
% 2.80/1.00  --res_orphan_elimination                true
% 2.80/1.00  --res_time_limit                        2.
% 2.80/1.00  --res_out_proof                         true
% 2.80/1.00  
% 2.80/1.00  ------ Superposition Options
% 2.80/1.00  
% 2.80/1.00  --superposition_flag                    true
% 2.80/1.00  --sup_passive_queue_type                priority_queues
% 2.80/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.80/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.80/1.00  --demod_completeness_check              fast
% 2.80/1.00  --demod_use_ground                      true
% 2.80/1.00  --sup_to_prop_solver                    passive
% 2.80/1.00  --sup_prop_simpl_new                    true
% 2.80/1.00  --sup_prop_simpl_given                  true
% 2.80/1.00  --sup_fun_splitting                     false
% 2.80/1.00  --sup_smt_interval                      50000
% 2.80/1.00  
% 2.80/1.00  ------ Superposition Simplification Setup
% 2.80/1.00  
% 2.80/1.00  --sup_indices_passive                   []
% 2.80/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.80/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/1.00  --sup_full_bw                           [BwDemod]
% 2.80/1.00  --sup_immed_triv                        [TrivRules]
% 2.80/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.80/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/1.00  --sup_immed_bw_main                     []
% 2.80/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.80/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.80/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.80/1.00  
% 2.80/1.00  ------ Combination Options
% 2.80/1.00  
% 2.80/1.00  --comb_res_mult                         3
% 2.80/1.00  --comb_sup_mult                         2
% 2.80/1.00  --comb_inst_mult                        10
% 2.80/1.00  
% 2.80/1.00  ------ Debug Options
% 2.80/1.00  
% 2.80/1.00  --dbg_backtrace                         false
% 2.80/1.00  --dbg_dump_prop_clauses                 false
% 2.80/1.00  --dbg_dump_prop_clauses_file            -
% 2.80/1.00  --dbg_out_stat                          false
% 2.80/1.00  ------ Parsing...
% 2.80/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.80/1.00  
% 2.80/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.80/1.00  
% 2.80/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.80/1.00  
% 2.80/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.80/1.00  ------ Proving...
% 2.80/1.00  ------ Problem Properties 
% 2.80/1.00  
% 2.80/1.00  
% 2.80/1.00  clauses                                 25
% 2.80/1.00  conjectures                             6
% 2.80/1.00  EPR                                     8
% 2.80/1.00  Horn                                    19
% 2.80/1.00  unary                                   3
% 2.80/1.00  binary                                  14
% 2.80/1.00  lits                                    55
% 2.80/1.00  lits eq                                 3
% 2.80/1.00  fd_pure                                 0
% 2.80/1.00  fd_pseudo                               0
% 2.80/1.00  fd_cond                                 0
% 2.80/1.00  fd_pseudo_cond                          2
% 2.80/1.00  AC symbols                              0
% 2.80/1.00  
% 2.80/1.00  ------ Schedule dynamic 5 is on 
% 2.80/1.00  
% 2.80/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.80/1.00  
% 2.80/1.00  
% 2.80/1.00  ------ 
% 2.80/1.00  Current options:
% 2.80/1.00  ------ 
% 2.80/1.00  
% 2.80/1.00  ------ Input Options
% 2.80/1.00  
% 2.80/1.00  --out_options                           all
% 2.80/1.00  --tptp_safe_out                         true
% 2.80/1.00  --problem_path                          ""
% 2.80/1.00  --include_path                          ""
% 2.80/1.00  --clausifier                            res/vclausify_rel
% 2.80/1.00  --clausifier_options                    --mode clausify
% 2.80/1.00  --stdin                                 false
% 2.80/1.00  --stats_out                             all
% 2.80/1.00  
% 2.80/1.00  ------ General Options
% 2.80/1.00  
% 2.80/1.00  --fof                                   false
% 2.80/1.00  --time_out_real                         305.
% 2.80/1.00  --time_out_virtual                      -1.
% 2.80/1.00  --symbol_type_check                     false
% 2.80/1.00  --clausify_out                          false
% 2.80/1.00  --sig_cnt_out                           false
% 2.80/1.00  --trig_cnt_out                          false
% 2.80/1.00  --trig_cnt_out_tolerance                1.
% 2.80/1.00  --trig_cnt_out_sk_spl                   false
% 2.80/1.00  --abstr_cl_out                          false
% 2.80/1.00  
% 2.80/1.00  ------ Global Options
% 2.80/1.00  
% 2.80/1.00  --schedule                              default
% 2.80/1.00  --add_important_lit                     false
% 2.80/1.00  --prop_solver_per_cl                    1000
% 2.80/1.00  --min_unsat_core                        false
% 2.80/1.00  --soft_assumptions                      false
% 2.80/1.00  --soft_lemma_size                       3
% 2.80/1.00  --prop_impl_unit_size                   0
% 2.80/1.00  --prop_impl_unit                        []
% 2.80/1.00  --share_sel_clauses                     true
% 2.80/1.00  --reset_solvers                         false
% 2.80/1.00  --bc_imp_inh                            [conj_cone]
% 2.80/1.00  --conj_cone_tolerance                   3.
% 2.80/1.00  --extra_neg_conj                        none
% 2.80/1.00  --large_theory_mode                     true
% 2.80/1.00  --prolific_symb_bound                   200
% 2.80/1.00  --lt_threshold                          2000
% 2.80/1.00  --clause_weak_htbl                      true
% 2.80/1.00  --gc_record_bc_elim                     false
% 2.80/1.00  
% 2.80/1.00  ------ Preprocessing Options
% 2.80/1.00  
% 2.80/1.00  --preprocessing_flag                    true
% 2.80/1.00  --time_out_prep_mult                    0.1
% 2.80/1.00  --splitting_mode                        input
% 2.80/1.00  --splitting_grd                         true
% 2.80/1.00  --splitting_cvd                         false
% 2.80/1.00  --splitting_cvd_svl                     false
% 2.80/1.00  --splitting_nvd                         32
% 2.80/1.00  --sub_typing                            true
% 2.80/1.00  --prep_gs_sim                           true
% 2.80/1.00  --prep_unflatten                        true
% 2.80/1.00  --prep_res_sim                          true
% 2.80/1.00  --prep_upred                            true
% 2.80/1.00  --prep_sem_filter                       exhaustive
% 2.80/1.00  --prep_sem_filter_out                   false
% 2.80/1.00  --pred_elim                             true
% 2.80/1.00  --res_sim_input                         true
% 2.80/1.00  --eq_ax_congr_red                       true
% 2.80/1.00  --pure_diseq_elim                       true
% 2.80/1.00  --brand_transform                       false
% 2.80/1.00  --non_eq_to_eq                          false
% 2.80/1.00  --prep_def_merge                        true
% 2.80/1.00  --prep_def_merge_prop_impl              false
% 2.80/1.00  --prep_def_merge_mbd                    true
% 2.80/1.00  --prep_def_merge_tr_red                 false
% 2.80/1.00  --prep_def_merge_tr_cl                  false
% 2.80/1.00  --smt_preprocessing                     true
% 2.80/1.00  --smt_ac_axioms                         fast
% 2.80/1.00  --preprocessed_out                      false
% 2.80/1.00  --preprocessed_stats                    false
% 2.80/1.00  
% 2.80/1.00  ------ Abstraction refinement Options
% 2.80/1.00  
% 2.80/1.00  --abstr_ref                             []
% 2.80/1.00  --abstr_ref_prep                        false
% 2.80/1.00  --abstr_ref_until_sat                   false
% 2.80/1.00  --abstr_ref_sig_restrict                funpre
% 2.80/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 2.80/1.00  --abstr_ref_under                       []
% 2.80/1.00  
% 2.80/1.00  ------ SAT Options
% 2.80/1.00  
% 2.80/1.00  --sat_mode                              false
% 2.80/1.00  --sat_fm_restart_options                ""
% 2.80/1.00  --sat_gr_def                            false
% 2.80/1.00  --sat_epr_types                         true
% 2.80/1.00  --sat_non_cyclic_types                  false
% 2.80/1.00  --sat_finite_models                     false
% 2.80/1.00  --sat_fm_lemmas                         false
% 2.80/1.00  --sat_fm_prep                           false
% 2.80/1.00  --sat_fm_uc_incr                        true
% 2.80/1.00  --sat_out_model                         small
% 2.80/1.00  --sat_out_clauses                       false
% 2.80/1.00  
% 2.80/1.00  ------ QBF Options
% 2.80/1.00  
% 2.80/1.00  --qbf_mode                              false
% 2.80/1.00  --qbf_elim_univ                         false
% 2.80/1.00  --qbf_dom_inst                          none
% 2.80/1.00  --qbf_dom_pre_inst                      false
% 2.80/1.00  --qbf_sk_in                             false
% 2.80/1.00  --qbf_pred_elim                         true
% 2.80/1.00  --qbf_split                             512
% 2.80/1.00  
% 2.80/1.00  ------ BMC1 Options
% 2.80/1.00  
% 2.80/1.00  --bmc1_incremental                      false
% 2.80/1.00  --bmc1_axioms                           reachable_all
% 2.80/1.00  --bmc1_min_bound                        0
% 2.80/1.00  --bmc1_max_bound                        -1
% 2.80/1.00  --bmc1_max_bound_default                -1
% 2.80/1.00  --bmc1_symbol_reachability              true
% 2.80/1.00  --bmc1_property_lemmas                  false
% 2.80/1.00  --bmc1_k_induction                      false
% 2.80/1.00  --bmc1_non_equiv_states                 false
% 2.80/1.00  --bmc1_deadlock                         false
% 2.80/1.00  --bmc1_ucm                              false
% 2.80/1.00  --bmc1_add_unsat_core                   none
% 2.80/1.00  --bmc1_unsat_core_children              false
% 2.80/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 2.80/1.00  --bmc1_out_stat                         full
% 2.80/1.00  --bmc1_ground_init                      false
% 2.80/1.00  --bmc1_pre_inst_next_state              false
% 2.80/1.00  --bmc1_pre_inst_state                   false
% 2.80/1.00  --bmc1_pre_inst_reach_state             false
% 2.80/1.00  --bmc1_out_unsat_core                   false
% 2.80/1.00  --bmc1_aig_witness_out                  false
% 2.80/1.00  --bmc1_verbose                          false
% 2.80/1.00  --bmc1_dump_clauses_tptp                false
% 2.80/1.00  --bmc1_dump_unsat_core_tptp             false
% 2.80/1.00  --bmc1_dump_file                        -
% 2.80/1.00  --bmc1_ucm_expand_uc_limit              128
% 2.80/1.00  --bmc1_ucm_n_expand_iterations          6
% 2.80/1.00  --bmc1_ucm_extend_mode                  1
% 2.80/1.00  --bmc1_ucm_init_mode                    2
% 2.80/1.00  --bmc1_ucm_cone_mode                    none
% 2.80/1.00  --bmc1_ucm_reduced_relation_type        0
% 2.80/1.00  --bmc1_ucm_relax_model                  4
% 2.80/1.00  --bmc1_ucm_full_tr_after_sat            true
% 2.80/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 2.80/1.00  --bmc1_ucm_layered_model                none
% 2.80/1.00  --bmc1_ucm_max_lemma_size               10
% 2.80/1.00  
% 2.80/1.00  ------ AIG Options
% 2.80/1.00  
% 2.80/1.00  --aig_mode                              false
% 2.80/1.00  
% 2.80/1.00  ------ Instantiation Options
% 2.80/1.00  
% 2.80/1.00  --instantiation_flag                    true
% 2.80/1.00  --inst_sos_flag                         false
% 2.80/1.00  --inst_sos_phase                        true
% 2.80/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.80/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.80/1.00  --inst_lit_sel_side                     none
% 2.80/1.00  --inst_solver_per_active                1400
% 2.80/1.00  --inst_solver_calls_frac                1.
% 2.80/1.00  --inst_passive_queue_type               priority_queues
% 2.80/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.80/1.00  --inst_passive_queues_freq              [25;2]
% 2.80/1.00  --inst_dismatching                      true
% 2.80/1.00  --inst_eager_unprocessed_to_passive     true
% 2.80/1.00  --inst_prop_sim_given                   true
% 2.80/1.00  --inst_prop_sim_new                     false
% 2.80/1.00  --inst_subs_new                         false
% 2.80/1.00  --inst_eq_res_simp                      false
% 2.80/1.00  --inst_subs_given                       false
% 2.80/1.00  --inst_orphan_elimination               true
% 2.80/1.00  --inst_learning_loop_flag               true
% 2.80/1.00  --inst_learning_start                   3000
% 2.80/1.00  --inst_learning_factor                  2
% 2.80/1.00  --inst_start_prop_sim_after_learn       3
% 2.80/1.00  --inst_sel_renew                        solver
% 2.80/1.00  --inst_lit_activity_flag                true
% 2.80/1.00  --inst_restr_to_given                   false
% 2.80/1.00  --inst_activity_threshold               500
% 2.80/1.00  --inst_out_proof                        true
% 2.80/1.00  
% 2.80/1.00  ------ Resolution Options
% 2.80/1.00  
% 2.80/1.00  --resolution_flag                       false
% 2.80/1.00  --res_lit_sel                           adaptive
% 2.80/1.00  --res_lit_sel_side                      none
% 2.80/1.00  --res_ordering                          kbo
% 2.80/1.00  --res_to_prop_solver                    active
% 2.80/1.00  --res_prop_simpl_new                    false
% 2.80/1.00  --res_prop_simpl_given                  true
% 2.80/1.00  --res_passive_queue_type                priority_queues
% 2.80/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.80/1.00  --res_passive_queues_freq               [15;5]
% 2.80/1.00  --res_forward_subs                      full
% 2.80/1.00  --res_backward_subs                     full
% 2.80/1.00  --res_forward_subs_resolution           true
% 2.80/1.00  --res_backward_subs_resolution          true
% 2.80/1.00  --res_orphan_elimination                true
% 2.80/1.00  --res_time_limit                        2.
% 2.80/1.00  --res_out_proof                         true
% 2.80/1.00  
% 2.80/1.00  ------ Superposition Options
% 2.80/1.00  
% 2.80/1.00  --superposition_flag                    true
% 2.80/1.00  --sup_passive_queue_type                priority_queues
% 2.80/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.80/1.00  --sup_passive_queues_freq               [8;1;4]
% 2.80/1.00  --demod_completeness_check              fast
% 2.80/1.00  --demod_use_ground                      true
% 2.80/1.00  --sup_to_prop_solver                    passive
% 2.80/1.00  --sup_prop_simpl_new                    true
% 2.80/1.00  --sup_prop_simpl_given                  true
% 2.80/1.00  --sup_fun_splitting                     false
% 2.80/1.00  --sup_smt_interval                      50000
% 2.80/1.00  
% 2.80/1.00  ------ Superposition Simplification Setup
% 2.80/1.00  
% 2.80/1.00  --sup_indices_passive                   []
% 2.80/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.80/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 2.80/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/1.00  --sup_full_bw                           [BwDemod]
% 2.80/1.00  --sup_immed_triv                        [TrivRules]
% 2.80/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.80/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/1.00  --sup_immed_bw_main                     []
% 2.80/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.80/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 2.80/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.80/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.80/1.00  
% 2.80/1.00  ------ Combination Options
% 2.80/1.00  
% 2.80/1.00  --comb_res_mult                         3
% 2.80/1.00  --comb_sup_mult                         2
% 2.80/1.00  --comb_inst_mult                        10
% 2.80/1.00  
% 2.80/1.00  ------ Debug Options
% 2.80/1.00  
% 2.80/1.00  --dbg_backtrace                         false
% 2.80/1.00  --dbg_dump_prop_clauses                 false
% 2.80/1.00  --dbg_dump_prop_clauses_file            -
% 2.80/1.00  --dbg_out_stat                          false
% 2.80/1.00  
% 2.80/1.00  
% 2.80/1.00  
% 2.80/1.00  
% 2.80/1.00  ------ Proving...
% 2.80/1.00  
% 2.80/1.00  
% 2.80/1.00  % SZS status Theorem for theBenchmark.p
% 2.80/1.00  
% 2.80/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 2.80/1.00  
% 2.80/1.00  fof(f6,axiom,(
% 2.80/1.00    ! [X0,X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : r2_hidden(k4_tarski(X3,X2),X0)))),
% 2.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/1.00  
% 2.80/1.00  fof(f26,plain,(
% 2.80/1.00    ! [X0,X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X3,X2),X0) | ~r2_hidden(X2,X1)) & (? [X3] : r2_hidden(k4_tarski(X3,X2),X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : ~r2_hidden(k4_tarski(X3,X2),X0)) & (? [X3] : r2_hidden(k4_tarski(X3,X2),X0) | ~r2_hidden(X2,X1))) | k2_relat_1(X0) != X1))),
% 2.80/1.00    inference(nnf_transformation,[],[f6])).
% 2.80/1.00  
% 2.80/1.00  fof(f27,plain,(
% 2.80/1.00    ! [X0,X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X3,X2),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X4,X2),X0) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X6,X5),X0)) & (? [X7] : r2_hidden(k4_tarski(X7,X5),X0) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1))),
% 2.80/1.00    inference(rectify,[],[f26])).
% 2.80/1.00  
% 2.80/1.00  fof(f30,plain,(
% 2.80/1.00    ! [X5,X0] : (? [X7] : r2_hidden(k4_tarski(X7,X5),X0) => r2_hidden(k4_tarski(sK4(X0,X5),X5),X0))),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f29,plain,(
% 2.80/1.00    ( ! [X2] : (! [X1,X0] : (? [X4] : r2_hidden(k4_tarski(X4,X2),X0) => r2_hidden(k4_tarski(sK3(X0,X1),X2),X0))) )),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f28,plain,(
% 2.80/1.00    ! [X1,X0] : (? [X2] : ((! [X3] : ~r2_hidden(k4_tarski(X3,X2),X0) | ~r2_hidden(X2,X1)) & (? [X4] : r2_hidden(k4_tarski(X4,X2),X0) | r2_hidden(X2,X1))) => ((! [X3] : ~r2_hidden(k4_tarski(X3,sK2(X0,X1)),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (? [X4] : r2_hidden(k4_tarski(X4,sK2(X0,X1)),X0) | r2_hidden(sK2(X0,X1),X1))))),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f31,plain,(
% 2.80/1.00    ! [X0,X1] : ((k2_relat_1(X0) = X1 | ((! [X3] : ~r2_hidden(k4_tarski(X3,sK2(X0,X1)),X0) | ~r2_hidden(sK2(X0,X1),X1)) & (r2_hidden(k4_tarski(sK3(X0,X1),sK2(X0,X1)),X0) | r2_hidden(sK2(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : ~r2_hidden(k4_tarski(X6,X5),X0)) & (r2_hidden(k4_tarski(sK4(X0,X5),X5),X0) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1))),
% 2.80/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3,sK4])],[f27,f30,f29,f28])).
% 2.80/1.00  
% 2.80/1.00  fof(f54,plain,(
% 2.80/1.00    ( ! [X0,X5,X1] : (r2_hidden(k4_tarski(sK4(X0,X5),X5),X0) | ~r2_hidden(X5,X1) | k2_relat_1(X0) != X1) )),
% 2.80/1.00    inference(cnf_transformation,[],[f31])).
% 2.80/1.00  
% 2.80/1.00  fof(f66,plain,(
% 2.80/1.00    ( ! [X0,X5] : (r2_hidden(k4_tarski(sK4(X0,X5),X5),X0) | ~r2_hidden(X5,k2_relat_1(X0))) )),
% 2.80/1.00    inference(equality_resolution,[],[f54])).
% 2.80/1.00  
% 2.80/1.00  fof(f8,conjecture,(
% 2.80/1.00    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ! [X3] : (r2_hidden(X3,k2_relset_1(X1,X0,X2)) <=> ? [X4] : (r2_hidden(k4_tarski(X4,X3),X2) & m1_subset_1(X4,X1))))))),
% 2.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/1.00  
% 2.80/1.00  fof(f9,negated_conjecture,(
% 2.80/1.00    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : (~v1_xboole_0(X1) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => ! [X3] : (r2_hidden(X3,k2_relset_1(X1,X0,X2)) <=> ? [X4] : (r2_hidden(k4_tarski(X4,X3),X2) & m1_subset_1(X4,X1))))))),
% 2.80/1.00    inference(negated_conjecture,[],[f8])).
% 2.80/1.00  
% 2.80/1.00  fof(f13,plain,(
% 2.80/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : (r2_hidden(X3,k2_relset_1(X1,X0,X2)) <~> ? [X4] : (r2_hidden(k4_tarski(X4,X3),X2) & m1_subset_1(X4,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 2.80/1.00    inference(ennf_transformation,[],[f9])).
% 2.80/1.00  
% 2.80/1.00  fof(f32,plain,(
% 2.80/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((! [X4] : (~r2_hidden(k4_tarski(X4,X3),X2) | ~m1_subset_1(X4,X1)) | ~r2_hidden(X3,k2_relset_1(X1,X0,X2))) & (? [X4] : (r2_hidden(k4_tarski(X4,X3),X2) & m1_subset_1(X4,X1)) | r2_hidden(X3,k2_relset_1(X1,X0,X2)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 2.80/1.00    inference(nnf_transformation,[],[f13])).
% 2.80/1.00  
% 2.80/1.00  fof(f33,plain,(
% 2.80/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((! [X4] : (~r2_hidden(k4_tarski(X4,X3),X2) | ~m1_subset_1(X4,X1)) | ~r2_hidden(X3,k2_relset_1(X1,X0,X2))) & (? [X5] : (r2_hidden(k4_tarski(X5,X3),X2) & m1_subset_1(X5,X1)) | r2_hidden(X3,k2_relset_1(X1,X0,X2)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 2.80/1.00    inference(rectify,[],[f32])).
% 2.80/1.00  
% 2.80/1.00  fof(f38,plain,(
% 2.80/1.00    ( ! [X2,X3,X1] : (? [X5] : (r2_hidden(k4_tarski(X5,X3),X2) & m1_subset_1(X5,X1)) => (r2_hidden(k4_tarski(sK9,X3),X2) & m1_subset_1(sK9,X1))) )),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f37,plain,(
% 2.80/1.00    ( ! [X2,X0,X1] : (? [X3] : ((! [X4] : (~r2_hidden(k4_tarski(X4,X3),X2) | ~m1_subset_1(X4,X1)) | ~r2_hidden(X3,k2_relset_1(X1,X0,X2))) & (? [X5] : (r2_hidden(k4_tarski(X5,X3),X2) & m1_subset_1(X5,X1)) | r2_hidden(X3,k2_relset_1(X1,X0,X2)))) => ((! [X4] : (~r2_hidden(k4_tarski(X4,sK8),X2) | ~m1_subset_1(X4,X1)) | ~r2_hidden(sK8,k2_relset_1(X1,X0,X2))) & (? [X5] : (r2_hidden(k4_tarski(X5,sK8),X2) & m1_subset_1(X5,X1)) | r2_hidden(sK8,k2_relset_1(X1,X0,X2))))) )),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f36,plain,(
% 2.80/1.00    ( ! [X0,X1] : (? [X2] : (? [X3] : ((! [X4] : (~r2_hidden(k4_tarski(X4,X3),X2) | ~m1_subset_1(X4,X1)) | ~r2_hidden(X3,k2_relset_1(X1,X0,X2))) & (? [X5] : (r2_hidden(k4_tarski(X5,X3),X2) & m1_subset_1(X5,X1)) | r2_hidden(X3,k2_relset_1(X1,X0,X2)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) => (? [X3] : ((! [X4] : (~r2_hidden(k4_tarski(X4,X3),sK7) | ~m1_subset_1(X4,X1)) | ~r2_hidden(X3,k2_relset_1(X1,X0,sK7))) & (? [X5] : (r2_hidden(k4_tarski(X5,X3),sK7) & m1_subset_1(X5,X1)) | r2_hidden(X3,k2_relset_1(X1,X0,sK7)))) & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))) )),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f35,plain,(
% 2.80/1.00    ( ! [X0] : (? [X1] : (? [X2] : (? [X3] : ((! [X4] : (~r2_hidden(k4_tarski(X4,X3),X2) | ~m1_subset_1(X4,X1)) | ~r2_hidden(X3,k2_relset_1(X1,X0,X2))) & (? [X5] : (r2_hidden(k4_tarski(X5,X3),X2) & m1_subset_1(X5,X1)) | r2_hidden(X3,k2_relset_1(X1,X0,X2)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) => (? [X2] : (? [X3] : ((! [X4] : (~r2_hidden(k4_tarski(X4,X3),X2) | ~m1_subset_1(X4,sK6)) | ~r2_hidden(X3,k2_relset_1(sK6,X0,X2))) & (? [X5] : (r2_hidden(k4_tarski(X5,X3),X2) & m1_subset_1(X5,sK6)) | r2_hidden(X3,k2_relset_1(sK6,X0,X2)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK6,X0)))) & ~v1_xboole_0(sK6))) )),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f34,plain,(
% 2.80/1.00    ? [X0] : (? [X1] : (? [X2] : (? [X3] : ((! [X4] : (~r2_hidden(k4_tarski(X4,X3),X2) | ~m1_subset_1(X4,X1)) | ~r2_hidden(X3,k2_relset_1(X1,X0,X2))) & (? [X5] : (r2_hidden(k4_tarski(X5,X3),X2) & m1_subset_1(X5,X1)) | r2_hidden(X3,k2_relset_1(X1,X0,X2)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0)) => (? [X1] : (? [X2] : (? [X3] : ((! [X4] : (~r2_hidden(k4_tarski(X4,X3),X2) | ~m1_subset_1(X4,X1)) | ~r2_hidden(X3,k2_relset_1(X1,sK5,X2))) & (? [X5] : (r2_hidden(k4_tarski(X5,X3),X2) & m1_subset_1(X5,X1)) | r2_hidden(X3,k2_relset_1(X1,sK5,X2)))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,sK5)))) & ~v1_xboole_0(X1)) & ~v1_xboole_0(sK5))),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f39,plain,(
% 2.80/1.00    ((((! [X4] : (~r2_hidden(k4_tarski(X4,sK8),sK7) | ~m1_subset_1(X4,sK6)) | ~r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7))) & ((r2_hidden(k4_tarski(sK9,sK8),sK7) & m1_subset_1(sK9,sK6)) | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)))) & m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK6,sK5)))) & ~v1_xboole_0(sK6)) & ~v1_xboole_0(sK5)),
% 2.80/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7,sK8,sK9])],[f33,f38,f37,f36,f35,f34])).
% 2.80/1.00  
% 2.80/1.00  fof(f61,plain,(
% 2.80/1.00    m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK6,sK5)))),
% 2.80/1.00    inference(cnf_transformation,[],[f39])).
% 2.80/1.00  
% 2.80/1.00  fof(f5,axiom,(
% 2.80/1.00    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/1.00  
% 2.80/1.00  fof(f25,plain,(
% 2.80/1.00    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.80/1.00    inference(nnf_transformation,[],[f5])).
% 2.80/1.00  
% 2.80/1.00  fof(f52,plain,(
% 2.80/1.00    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.80/1.00    inference(cnf_transformation,[],[f25])).
% 2.80/1.00  
% 2.80/1.00  fof(f2,axiom,(
% 2.80/1.00    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 2.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/1.00  
% 2.80/1.00  fof(f10,plain,(
% 2.80/1.00    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 2.80/1.00    inference(ennf_transformation,[],[f2])).
% 2.80/1.00  
% 2.80/1.00  fof(f18,plain,(
% 2.80/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 2.80/1.00    inference(nnf_transformation,[],[f10])).
% 2.80/1.00  
% 2.80/1.00  fof(f19,plain,(
% 2.80/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.80/1.00    inference(rectify,[],[f18])).
% 2.80/1.00  
% 2.80/1.00  fof(f20,plain,(
% 2.80/1.00    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0)))),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f21,plain,(
% 2.80/1.00    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK1(X0,X1),X1) & r2_hidden(sK1(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 2.80/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f19,f20])).
% 2.80/1.00  
% 2.80/1.00  fof(f42,plain,(
% 2.80/1.00    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 2.80/1.00    inference(cnf_transformation,[],[f21])).
% 2.80/1.00  
% 2.80/1.00  fof(f3,axiom,(
% 2.80/1.00    ! [X0,X1,X2,X3] : (r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) <=> (r2_hidden(X1,X3) & r2_hidden(X0,X2)))),
% 2.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/1.00  
% 2.80/1.00  fof(f22,plain,(
% 2.80/1.00    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | (~r2_hidden(X1,X3) | ~r2_hidden(X0,X2))) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.80/1.00    inference(nnf_transformation,[],[f3])).
% 2.80/1.00  
% 2.80/1.00  fof(f23,plain,(
% 2.80/1.00    ! [X0,X1,X2,X3] : ((r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3)) | ~r2_hidden(X1,X3) | ~r2_hidden(X0,X2)) & ((r2_hidden(X1,X3) & r2_hidden(X0,X2)) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))))),
% 2.80/1.00    inference(flattening,[],[f22])).
% 2.80/1.00  
% 2.80/1.00  fof(f45,plain,(
% 2.80/1.00    ( ! [X2,X0,X3,X1] : (r2_hidden(X0,X2) | ~r2_hidden(k4_tarski(X0,X1),k2_zfmisc_1(X2,X3))) )),
% 2.80/1.00    inference(cnf_transformation,[],[f23])).
% 2.80/1.00  
% 2.80/1.00  fof(f4,axiom,(
% 2.80/1.00    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 2.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/1.00  
% 2.80/1.00  fof(f11,plain,(
% 2.80/1.00    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 2.80/1.00    inference(ennf_transformation,[],[f4])).
% 2.80/1.00  
% 2.80/1.00  fof(f24,plain,(
% 2.80/1.00    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 2.80/1.00    inference(nnf_transformation,[],[f11])).
% 2.80/1.00  
% 2.80/1.00  fof(f49,plain,(
% 2.80/1.00    ( ! [X0,X1] : (m1_subset_1(X1,X0) | ~r2_hidden(X1,X0) | v1_xboole_0(X0)) )),
% 2.80/1.00    inference(cnf_transformation,[],[f24])).
% 2.80/1.00  
% 2.80/1.00  fof(f1,axiom,(
% 2.80/1.00    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/1.00  
% 2.80/1.00  fof(f14,plain,(
% 2.80/1.00    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 2.80/1.00    inference(nnf_transformation,[],[f1])).
% 2.80/1.00  
% 2.80/1.00  fof(f15,plain,(
% 2.80/1.00    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.80/1.00    inference(rectify,[],[f14])).
% 2.80/1.00  
% 2.80/1.00  fof(f16,plain,(
% 2.80/1.00    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 2.80/1.00    introduced(choice_axiom,[])).
% 2.80/1.00  
% 2.80/1.00  fof(f17,plain,(
% 2.80/1.00    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.80/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f15,f16])).
% 2.80/1.00  
% 2.80/1.00  fof(f40,plain,(
% 2.80/1.00    ( ! [X2,X0] : (~r2_hidden(X2,X0) | ~v1_xboole_0(X0)) )),
% 2.80/1.00    inference(cnf_transformation,[],[f17])).
% 2.80/1.00  
% 2.80/1.00  fof(f7,axiom,(
% 2.80/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.80/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.80/1.00  
% 2.80/1.00  fof(f12,plain,(
% 2.80/1.00    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.80/1.00    inference(ennf_transformation,[],[f7])).
% 2.80/1.00  
% 2.80/1.00  fof(f58,plain,(
% 2.80/1.00    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.80/1.00    inference(cnf_transformation,[],[f12])).
% 2.80/1.00  
% 2.80/1.00  fof(f64,plain,(
% 2.80/1.00    ( ! [X4] : (~r2_hidden(k4_tarski(X4,sK8),sK7) | ~m1_subset_1(X4,sK6) | ~r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7))) )),
% 2.80/1.00    inference(cnf_transformation,[],[f39])).
% 2.80/1.00  
% 2.80/1.00  fof(f63,plain,(
% 2.80/1.00    r2_hidden(k4_tarski(sK9,sK8),sK7) | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7))),
% 2.80/1.00    inference(cnf_transformation,[],[f39])).
% 2.80/1.00  
% 2.80/1.00  fof(f55,plain,(
% 2.80/1.00    ( ! [X6,X0,X5,X1] : (r2_hidden(X5,X1) | ~r2_hidden(k4_tarski(X6,X5),X0) | k2_relat_1(X0) != X1) )),
% 2.80/1.00    inference(cnf_transformation,[],[f31])).
% 2.80/1.00  
% 2.80/1.00  fof(f65,plain,(
% 2.80/1.00    ( ! [X6,X0,X5] : (r2_hidden(X5,k2_relat_1(X0)) | ~r2_hidden(k4_tarski(X6,X5),X0)) )),
% 2.80/1.00    inference(equality_resolution,[],[f55])).
% 2.80/1.00  
% 2.80/1.00  fof(f62,plain,(
% 2.80/1.00    m1_subset_1(sK9,sK6) | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7))),
% 2.80/1.00    inference(cnf_transformation,[],[f39])).
% 2.80/1.00  
% 2.80/1.00  cnf(c_17,plain,
% 2.80/1.00      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 2.80/1.00      | r2_hidden(k4_tarski(sK4(X1,X0),X0),X1) ),
% 2.80/1.00      inference(cnf_transformation,[],[f66]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1255,plain,
% 2.80/1.00      ( r2_hidden(X0,k2_relat_1(X1)) != iProver_top
% 2.80/1.00      | r2_hidden(k4_tarski(sK4(X1,X0),X0),X1) = iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_22,negated_conjecture,
% 2.80/1.00      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK6,sK5))) ),
% 2.80/1.00      inference(cnf_transformation,[],[f61]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1250,plain,
% 2.80/1.00      ( m1_subset_1(sK7,k1_zfmisc_1(k2_zfmisc_1(sK6,sK5))) = iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_13,plain,
% 2.80/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.80/1.00      inference(cnf_transformation,[],[f52]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1259,plain,
% 2.80/1.00      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.80/1.00      | r1_tarski(X0,X1) = iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1837,plain,
% 2.80/1.00      ( r1_tarski(sK7,k2_zfmisc_1(sK6,sK5)) = iProver_top ),
% 2.80/1.00      inference(superposition,[status(thm)],[c_1250,c_1259]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_4,plain,
% 2.80/1.00      ( ~ r1_tarski(X0,X1) | ~ r2_hidden(X2,X0) | r2_hidden(X2,X1) ),
% 2.80/1.00      inference(cnf_transformation,[],[f42]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1267,plain,
% 2.80/1.00      ( r1_tarski(X0,X1) != iProver_top
% 2.80/1.00      | r2_hidden(X2,X0) != iProver_top
% 2.80/1.00      | r2_hidden(X2,X1) = iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_3321,plain,
% 2.80/1.00      ( r2_hidden(X0,k2_zfmisc_1(sK6,sK5)) = iProver_top
% 2.80/1.00      | r2_hidden(X0,sK7) != iProver_top ),
% 2.80/1.00      inference(superposition,[status(thm)],[c_1837,c_1267]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_7,plain,
% 2.80/1.00      ( r2_hidden(X0,X1)
% 2.80/1.00      | ~ r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) ),
% 2.80/1.00      inference(cnf_transformation,[],[f45]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1264,plain,
% 2.80/1.00      ( r2_hidden(X0,X1) = iProver_top
% 2.80/1.00      | r2_hidden(k4_tarski(X0,X2),k2_zfmisc_1(X1,X3)) != iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_3401,plain,
% 2.80/1.00      ( r2_hidden(X0,sK6) = iProver_top
% 2.80/1.00      | r2_hidden(k4_tarski(X0,X1),sK7) != iProver_top ),
% 2.80/1.00      inference(superposition,[status(thm)],[c_3321,c_1264]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_3976,plain,
% 2.80/1.00      ( r2_hidden(X0,k2_relat_1(sK7)) != iProver_top
% 2.80/1.00      | r2_hidden(sK4(sK7,X0),sK6) = iProver_top ),
% 2.80/1.00      inference(superposition,[status(thm)],[c_1255,c_3401]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_10,plain,
% 2.80/1.00      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) | v1_xboole_0(X1) ),
% 2.80/1.00      inference(cnf_transformation,[],[f49]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1,plain,
% 2.80/1.00      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 2.80/1.00      inference(cnf_transformation,[],[f40]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_145,plain,
% 2.80/1.00      ( ~ r2_hidden(X0,X1) | m1_subset_1(X0,X1) ),
% 2.80/1.00      inference(global_propositional_subsumption,
% 2.80/1.00                [status(thm)],
% 2.80/1.00                [c_10,c_1]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_146,plain,
% 2.80/1.00      ( m1_subset_1(X0,X1) | ~ r2_hidden(X0,X1) ),
% 2.80/1.00      inference(renaming,[status(thm)],[c_145]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1247,plain,
% 2.80/1.00      ( m1_subset_1(X0,X1) = iProver_top
% 2.80/1.00      | r2_hidden(X0,X1) != iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_146]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_4753,plain,
% 2.80/1.00      ( m1_subset_1(sK4(sK7,X0),sK6) = iProver_top
% 2.80/1.00      | r2_hidden(X0,k2_relat_1(sK7)) != iProver_top ),
% 2.80/1.00      inference(superposition,[status(thm)],[c_3976,c_1247]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_18,plain,
% 2.80/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.80/1.00      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.80/1.00      inference(cnf_transformation,[],[f58]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1254,plain,
% 2.80/1.00      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.80/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_2458,plain,
% 2.80/1.00      ( k2_relset_1(sK6,sK5,sK7) = k2_relat_1(sK7) ),
% 2.80/1.00      inference(superposition,[status(thm)],[c_1250,c_1254]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_19,negated_conjecture,
% 2.80/1.00      ( ~ m1_subset_1(X0,sK6)
% 2.80/1.00      | ~ r2_hidden(k4_tarski(X0,sK8),sK7)
% 2.80/1.00      | ~ r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) ),
% 2.80/1.00      inference(cnf_transformation,[],[f64]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1253,plain,
% 2.80/1.00      ( m1_subset_1(X0,sK6) != iProver_top
% 2.80/1.00      | r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top
% 2.80/1.00      | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) != iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_2631,plain,
% 2.80/1.00      ( m1_subset_1(X0,sK6) != iProver_top
% 2.80/1.00      | r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top
% 2.80/1.00      | r2_hidden(sK8,k2_relat_1(sK7)) != iProver_top ),
% 2.80/1.00      inference(demodulation,[status(thm)],[c_2458,c_1253]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_20,negated_conjecture,
% 2.80/1.00      ( r2_hidden(k4_tarski(sK9,sK8),sK7)
% 2.80/1.00      | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) ),
% 2.80/1.00      inference(cnf_transformation,[],[f63]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1252,plain,
% 2.80/1.00      ( r2_hidden(k4_tarski(sK9,sK8),sK7) = iProver_top
% 2.80/1.00      | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) = iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1515,plain,
% 2.80/1.00      ( m1_subset_1(X0,sK6) != iProver_top
% 2.80/1.00      | r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top
% 2.80/1.00      | r2_hidden(k4_tarski(sK9,sK8),sK7) = iProver_top ),
% 2.80/1.00      inference(superposition,[status(thm)],[c_1252,c_1253]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_16,plain,
% 2.80/1.00      ( r2_hidden(X0,k2_relat_1(X1)) | ~ r2_hidden(k4_tarski(X2,X0),X1) ),
% 2.80/1.00      inference(cnf_transformation,[],[f65]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1622,plain,
% 2.80/1.00      ( ~ r2_hidden(k4_tarski(sK9,sK8),sK7)
% 2.80/1.00      | r2_hidden(sK8,k2_relat_1(sK7)) ),
% 2.80/1.00      inference(instantiation,[status(thm)],[c_16]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1623,plain,
% 2.80/1.00      ( r2_hidden(k4_tarski(sK9,sK8),sK7) != iProver_top
% 2.80/1.00      | r2_hidden(sK8,k2_relat_1(sK7)) = iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_1622]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_2712,plain,
% 2.80/1.00      ( r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top
% 2.80/1.00      | m1_subset_1(X0,sK6) != iProver_top ),
% 2.80/1.00      inference(global_propositional_subsumption,
% 2.80/1.00                [status(thm)],
% 2.80/1.00                [c_2631,c_1515,c_1623]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_2713,plain,
% 2.80/1.00      ( m1_subset_1(X0,sK6) != iProver_top
% 2.80/1.00      | r2_hidden(k4_tarski(X0,sK8),sK7) != iProver_top ),
% 2.80/1.00      inference(renaming,[status(thm)],[c_2712]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_2720,plain,
% 2.80/1.00      ( m1_subset_1(sK4(sK7,sK8),sK6) != iProver_top
% 2.80/1.00      | r2_hidden(sK8,k2_relat_1(sK7)) != iProver_top ),
% 2.80/1.00      inference(superposition,[status(thm)],[c_1255,c_2713]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_21,negated_conjecture,
% 2.80/1.00      ( m1_subset_1(sK9,sK6) | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) ),
% 2.80/1.00      inference(cnf_transformation,[],[f62]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_1251,plain,
% 2.80/1.00      ( m1_subset_1(sK9,sK6) = iProver_top
% 2.80/1.00      | r2_hidden(sK8,k2_relset_1(sK6,sK5,sK7)) = iProver_top ),
% 2.80/1.00      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_2630,plain,
% 2.80/1.00      ( m1_subset_1(sK9,sK6) = iProver_top
% 2.80/1.00      | r2_hidden(sK8,k2_relat_1(sK7)) = iProver_top ),
% 2.80/1.00      inference(demodulation,[status(thm)],[c_2458,c_1251]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_2629,plain,
% 2.80/1.00      ( r2_hidden(k4_tarski(sK9,sK8),sK7) = iProver_top
% 2.80/1.00      | r2_hidden(sK8,k2_relat_1(sK7)) = iProver_top ),
% 2.80/1.00      inference(demodulation,[status(thm)],[c_2458,c_1252]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_2723,plain,
% 2.80/1.00      ( r2_hidden(sK8,k2_relat_1(sK7)) = iProver_top ),
% 2.80/1.00      inference(global_propositional_subsumption,
% 2.80/1.00                [status(thm)],
% 2.80/1.00                [c_2630,c_1623,c_2629]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_3464,plain,
% 2.80/1.00      ( m1_subset_1(sK4(sK7,sK8),sK6) != iProver_top ),
% 2.80/1.00      inference(global_propositional_subsumption,
% 2.80/1.00                [status(thm)],
% 2.80/1.00                [c_2720,c_1623,c_2629]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(c_6333,plain,
% 2.80/1.00      ( r2_hidden(sK8,k2_relat_1(sK7)) != iProver_top ),
% 2.80/1.00      inference(superposition,[status(thm)],[c_4753,c_3464]) ).
% 2.80/1.00  
% 2.80/1.00  cnf(contradiction,plain,
% 2.80/1.00      ( $false ),
% 2.80/1.00      inference(minisat,[status(thm)],[c_6333,c_2723]) ).
% 2.80/1.00  
% 2.80/1.00  
% 2.80/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 2.80/1.00  
% 2.80/1.00  ------                               Statistics
% 2.80/1.00  
% 2.80/1.00  ------ General
% 2.80/1.00  
% 2.80/1.00  abstr_ref_over_cycles:                  0
% 2.80/1.00  abstr_ref_under_cycles:                 0
% 2.80/1.00  gc_basic_clause_elim:                   0
% 2.80/1.00  forced_gc_time:                         0
% 2.80/1.00  parsing_time:                           0.009
% 2.80/1.00  unif_index_cands_time:                  0.
% 2.80/1.00  unif_index_add_time:                    0.
% 2.80/1.00  orderings_time:                         0.
% 2.80/1.00  out_proof_time:                         0.009
% 2.80/1.00  total_time:                             0.184
% 2.80/1.00  num_of_symbols:                         50
% 2.80/1.00  num_of_terms:                           6734
% 2.80/1.00  
% 2.80/1.00  ------ Preprocessing
% 2.80/1.00  
% 2.80/1.00  num_of_splits:                          0
% 2.80/1.00  num_of_split_atoms:                     0
% 2.80/1.00  num_of_reused_defs:                     0
% 2.80/1.00  num_eq_ax_congr_red:                    24
% 2.80/1.00  num_of_sem_filtered_clauses:            1
% 2.80/1.00  num_of_subtypes:                        0
% 2.80/1.00  monotx_restored_types:                  0
% 2.80/1.00  sat_num_of_epr_types:                   0
% 2.80/1.00  sat_num_of_non_cyclic_types:            0
% 2.80/1.00  sat_guarded_non_collapsed_types:        0
% 2.80/1.00  num_pure_diseq_elim:                    0
% 2.80/1.00  simp_replaced_by:                       0
% 2.80/1.00  res_preprocessed:                       94
% 2.80/1.00  prep_upred:                             0
% 2.80/1.00  prep_unflattend:                        32
% 2.80/1.00  smt_new_axioms:                         0
% 2.80/1.00  pred_elim_cands:                        4
% 2.80/1.00  pred_elim:                              0
% 2.80/1.00  pred_elim_cl:                           0
% 2.80/1.00  pred_elim_cycles:                       2
% 2.80/1.00  merged_defs:                            6
% 2.80/1.00  merged_defs_ncl:                        0
% 2.80/1.00  bin_hyper_res:                          6
% 2.80/1.00  prep_cycles:                            3
% 2.80/1.00  pred_elim_time:                         0.006
% 2.80/1.00  splitting_time:                         0.
% 2.80/1.00  sem_filter_time:                        0.
% 2.80/1.00  monotx_time:                            0.001
% 2.80/1.00  subtype_inf_time:                       0.
% 2.80/1.00  
% 2.80/1.00  ------ Problem properties
% 2.80/1.00  
% 2.80/1.00  clauses:                                25
% 2.80/1.00  conjectures:                            6
% 2.80/1.00  epr:                                    8
% 2.80/1.00  horn:                                   19
% 2.80/1.00  ground:                                 5
% 2.80/1.00  unary:                                  3
% 2.80/1.00  binary:                                 14
% 2.80/1.00  lits:                                   55
% 2.80/1.00  lits_eq:                                3
% 2.80/1.00  fd_pure:                                0
% 2.80/1.00  fd_pseudo:                              0
% 2.80/1.00  fd_cond:                                0
% 2.80/1.00  fd_pseudo_cond:                         2
% 2.80/1.00  ac_symbols:                             0
% 2.80/1.00  
% 2.80/1.00  ------ Propositional Solver
% 2.80/1.00  
% 2.80/1.00  prop_solver_calls:                      23
% 2.80/1.00  prop_fast_solver_calls:                 668
% 2.80/1.00  smt_solver_calls:                       0
% 2.80/1.00  smt_fast_solver_calls:                  0
% 2.80/1.00  prop_num_of_clauses:                    2406
% 2.80/1.00  prop_preprocess_simplified:             7300
% 2.80/1.00  prop_fo_subsumed:                       10
% 2.80/1.00  prop_solver_time:                       0.
% 2.80/1.00  smt_solver_time:                        0.
% 2.80/1.00  smt_fast_solver_time:                   0.
% 2.80/1.00  prop_fast_solver_time:                  0.
% 2.80/1.00  prop_unsat_core_time:                   0.
% 2.80/1.00  
% 2.80/1.00  ------ QBF
% 2.80/1.00  
% 2.80/1.00  qbf_q_res:                              0
% 2.80/1.00  qbf_num_tautologies:                    0
% 2.80/1.00  qbf_prep_cycles:                        0
% 2.80/1.00  
% 2.80/1.00  ------ BMC1
% 2.80/1.00  
% 2.80/1.00  bmc1_current_bound:                     -1
% 2.80/1.00  bmc1_last_solved_bound:                 -1
% 2.80/1.00  bmc1_unsat_core_size:                   -1
% 2.80/1.00  bmc1_unsat_core_parents_size:           -1
% 2.80/1.00  bmc1_merge_next_fun:                    0
% 2.80/1.00  bmc1_unsat_core_clauses_time:           0.
% 2.80/1.00  
% 2.80/1.00  ------ Instantiation
% 2.80/1.00  
% 2.80/1.00  inst_num_of_clauses:                    591
% 2.80/1.00  inst_num_in_passive:                    318
% 2.80/1.00  inst_num_in_active:                     273
% 2.80/1.00  inst_num_in_unprocessed:                0
% 2.80/1.00  inst_num_of_loops:                      360
% 2.80/1.00  inst_num_of_learning_restarts:          0
% 2.80/1.00  inst_num_moves_active_passive:          86
% 2.80/1.00  inst_lit_activity:                      0
% 2.80/1.00  inst_lit_activity_moves:                0
% 2.80/1.00  inst_num_tautologies:                   0
% 2.80/1.00  inst_num_prop_implied:                  0
% 2.80/1.00  inst_num_existing_simplified:           0
% 2.80/1.00  inst_num_eq_res_simplified:             0
% 2.80/1.00  inst_num_child_elim:                    0
% 2.80/1.00  inst_num_of_dismatching_blockings:      329
% 2.80/1.00  inst_num_of_non_proper_insts:           515
% 2.80/1.00  inst_num_of_duplicates:                 0
% 2.80/1.00  inst_inst_num_from_inst_to_res:         0
% 2.80/1.00  inst_dismatching_checking_time:         0.
% 2.80/1.00  
% 2.80/1.00  ------ Resolution
% 2.80/1.00  
% 2.80/1.00  res_num_of_clauses:                     0
% 2.80/1.00  res_num_in_passive:                     0
% 2.80/1.00  res_num_in_active:                      0
% 2.80/1.00  res_num_of_loops:                       97
% 2.80/1.00  res_forward_subset_subsumed:            11
% 2.80/1.00  res_backward_subset_subsumed:           0
% 2.80/1.00  res_forward_subsumed:                   0
% 2.80/1.00  res_backward_subsumed:                  0
% 2.80/1.00  res_forward_subsumption_resolution:     0
% 2.80/1.00  res_backward_subsumption_resolution:    0
% 2.80/1.00  res_clause_to_clause_subsumption:       259
% 2.80/1.00  res_orphan_elimination:                 0
% 2.80/1.00  res_tautology_del:                      50
% 2.80/1.00  res_num_eq_res_simplified:              0
% 2.80/1.00  res_num_sel_changes:                    0
% 2.80/1.00  res_moves_from_active_to_pass:          0
% 2.80/1.00  
% 2.80/1.00  ------ Superposition
% 2.80/1.00  
% 2.80/1.00  sup_time_total:                         0.
% 2.80/1.00  sup_time_generating:                    0.
% 2.80/1.00  sup_time_sim_full:                      0.
% 2.80/1.00  sup_time_sim_immed:                     0.
% 2.80/1.00  
% 2.80/1.00  sup_num_of_clauses:                     123
% 2.80/1.00  sup_num_in_active:                      63
% 2.80/1.00  sup_num_in_passive:                     60
% 2.80/1.00  sup_num_of_loops:                       70
% 2.80/1.00  sup_fw_superposition:                   47
% 2.80/1.00  sup_bw_superposition:                   97
% 2.80/1.00  sup_immediate_simplified:               20
% 2.80/1.00  sup_given_eliminated:                   0
% 2.80/1.00  comparisons_done:                       0
% 2.80/1.00  comparisons_avoided:                    0
% 2.80/1.00  
% 2.80/1.00  ------ Simplifications
% 2.80/1.00  
% 2.80/1.00  
% 2.80/1.00  sim_fw_subset_subsumed:                 17
% 2.80/1.00  sim_bw_subset_subsumed:                 5
% 2.80/1.00  sim_fw_subsumed:                        3
% 2.80/1.00  sim_bw_subsumed:                        0
% 2.80/1.00  sim_fw_subsumption_res:                 0
% 2.80/1.00  sim_bw_subsumption_res:                 0
% 2.80/1.00  sim_tautology_del:                      11
% 2.80/1.00  sim_eq_tautology_del:                   3
% 2.80/1.00  sim_eq_res_simp:                        2
% 2.80/1.00  sim_fw_demodulated:                     0
% 2.80/1.00  sim_bw_demodulated:                     7
% 2.80/1.00  sim_light_normalised:                   0
% 2.80/1.00  sim_joinable_taut:                      0
% 2.80/1.00  sim_joinable_simp:                      0
% 2.80/1.00  sim_ac_normalised:                      0
% 2.80/1.00  sim_smt_subsumption:                    0
% 2.80/1.00  
%------------------------------------------------------------------------------
