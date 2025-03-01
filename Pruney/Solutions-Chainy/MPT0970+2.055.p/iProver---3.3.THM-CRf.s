%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:00:56 EST 2020

% Result     : Theorem 3.45s
% Output     : CNFRefutation 3.45s
% Verified   : 
% Statistics : Number of formulae       :  145 ( 547 expanded)
%              Number of clauses        :   81 ( 183 expanded)
%              Number of leaves         :   19 ( 125 expanded)
%              Depth                    :   27
%              Number of atoms          :  476 (2315 expanded)
%              Number of equality atoms :  206 ( 717 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( k1_xboole_0 = X1
         => ( ( v1_funct_2(X2,X0,X1)
            <=> k1_xboole_0 = X2 )
            | k1_xboole_0 = X0 ) )
        & ( ( k1_xboole_0 = X1
           => k1_xboole_0 = X0 )
         => ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( v1_funct_2(X2,X0,X1)
          <=> k1_xboole_0 = X2 )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( v1_funct_2(X2,X0,X1)
          <=> k1_relset_1(X0,X1,X2) = X0 )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f22])).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( ( ( ( ( v1_funct_2(X2,X0,X1)
              | k1_xboole_0 != X2 )
            & ( k1_xboole_0 = X2
              | ~ v1_funct_2(X2,X0,X1) ) )
          | k1_xboole_0 = X0
          | k1_xboole_0 != X1 )
        & ( ( ( v1_funct_2(X2,X0,X1)
              | k1_relset_1(X0,X1,X2) != X0 )
            & ( k1_relset_1(X0,X1,X2) = X0
              | ~ v1_funct_2(X2,X0,X1) ) )
          | ( k1_xboole_0 != X0
            & k1_xboole_0 = X1 ) ) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f61,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f12,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ! [X3] :
            ~ ( ! [X4] :
                  ~ ( k1_funct_1(X2,X4) = X3
                    & r2_hidden(X4,X0) )
              & r2_hidden(X3,X1) )
       => k2_relset_1(X0,X1,X2) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( ! [X3] :
              ~ ( ! [X4] :
                    ~ ( k1_funct_1(X2,X4) = X3
                      & r2_hidden(X4,X0) )
                & r2_hidden(X3,X1) )
         => k2_relset_1(X0,X1,X2) = X1 ) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f24,plain,(
    ? [X0,X1,X2] :
      ( k2_relset_1(X0,X1,X2) != X1
      & ! [X3] :
          ( ? [X4] :
              ( k1_funct_1(X2,X4) = X3
              & r2_hidden(X4,X0) )
          | ~ r2_hidden(X3,X1) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f25,plain,(
    ? [X0,X1,X2] :
      ( k2_relset_1(X0,X1,X2) != X1
      & ! [X3] :
          ( ? [X4] :
              ( k1_funct_1(X2,X4) = X3
              & r2_hidden(X4,X0) )
          | ~ r2_hidden(X3,X1) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f24])).

fof(f40,plain,(
    ! [X2,X0,X3] :
      ( ? [X4] :
          ( k1_funct_1(X2,X4) = X3
          & r2_hidden(X4,X0) )
     => ( k1_funct_1(X2,sK7(X3)) = X3
        & r2_hidden(sK7(X3),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f39,plain,
    ( ? [X0,X1,X2] :
        ( k2_relset_1(X0,X1,X2) != X1
        & ! [X3] :
            ( ? [X4] :
                ( k1_funct_1(X2,X4) = X3
                & r2_hidden(X4,X0) )
            | ~ r2_hidden(X3,X1) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( k2_relset_1(sK4,sK5,sK6) != sK5
      & ! [X3] :
          ( ? [X4] :
              ( k1_funct_1(sK6,X4) = X3
              & r2_hidden(X4,sK4) )
          | ~ r2_hidden(X3,sK5) )
      & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
      & v1_funct_2(sK6,sK4,sK5)
      & v1_funct_1(sK6) ) ),
    introduced(choice_axiom,[])).

fof(f41,plain,
    ( k2_relset_1(sK4,sK5,sK6) != sK5
    & ! [X3] :
        ( ( k1_funct_1(sK6,sK7(X3)) = X3
          & r2_hidden(sK7(X3),sK4) )
        | ~ r2_hidden(X3,sK5) )
    & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    & v1_funct_2(sK6,sK4,sK5)
    & v1_funct_1(sK6) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f25,f40,f39])).

fof(f68,plain,(
    v1_funct_2(sK6,sK4,sK5) ),
    inference(cnf_transformation,[],[f41])).

fof(f69,plain,(
    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) ),
    inference(cnf_transformation,[],[f41])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X0)
         => r2_hidden(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
          | ~ r2_hidden(X2,X0) ) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f26,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X2] :
            ( r2_hidden(X2,X1)
            | ~ r2_hidden(X2,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f14])).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ? [X2] :
            ( ~ r2_hidden(X2,X1)
            & r2_hidden(X2,X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(rectify,[],[f26])).

fof(f28,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ~ r2_hidden(X2,X1)
          & r2_hidden(X2,X0) )
     => ( ~ r2_hidden(sK0(X0,X1),X1)
        & r2_hidden(sK0(X0,X1),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,X1)
        | ( ~ r2_hidden(sK0(X0,X1),X1)
          & r2_hidden(sK0(X0,X1),X0) ) )
      & ( ! [X3] :
            ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0) )
        | ~ r1_tarski(X0,X1) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f27,f28])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | r2_hidden(sK0(X0,X1),X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f70,plain,(
    ! [X3] :
      ( r2_hidden(sK7(X3),sK4)
      | ~ r2_hidden(X3,sK5) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f42,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r2_hidden(X3,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f71,plain,(
    ! [X3] :
      ( k1_funct_1(sK6,sK7(X3)) = X3
      | ~ r2_hidden(X3,sK5) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f44,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r2_hidden(sK0(X0,X1),X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f30])).

fof(f47,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f72,plain,(
    k2_relset_1(sK4,sK5,sK6) != sK5 ),
    inference(cnf_transformation,[],[f41])).

fof(f7,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( k2_relat_1(X0) = X1
        <=> ! [X2] :
              ( r2_hidden(X2,X1)
            <=> ? [X3] :
                  ( k1_funct_1(X0,X3) = X2
                  & r2_hidden(X3,k1_relat_1(X0)) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = X1
        <=> ! [X2] :
              ( r2_hidden(X2,X1)
            <=> ? [X3] :
                  ( k1_funct_1(X0,X3) = X2
                  & r2_hidden(X3,k1_relat_1(X0)) ) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(X0) = X1
        <=> ! [X2] :
              ( r2_hidden(X2,X1)
            <=> ? [X3] :
                  ( k1_funct_1(X0,X3) = X2
                  & r2_hidden(X3,k1_relat_1(X0)) ) ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f17])).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ? [X2] :
                ( ( ! [X3] :
                      ( k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ r2_hidden(X2,X1) )
                & ( ? [X3] :
                      ( k1_funct_1(X0,X3) = X2
                      & r2_hidden(X3,k1_relat_1(X0)) )
                  | r2_hidden(X2,X1) ) ) )
          & ( ! [X2] :
                ( ( r2_hidden(X2,X1)
                  | ! [X3] :
                      ( k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) ) )
                & ( ? [X3] :
                      ( k1_funct_1(X0,X3) = X2
                      & r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ r2_hidden(X2,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ? [X2] :
                ( ( ! [X3] :
                      ( k1_funct_1(X0,X3) != X2
                      | ~ r2_hidden(X3,k1_relat_1(X0)) )
                  | ~ r2_hidden(X2,X1) )
                & ( ? [X4] :
                      ( k1_funct_1(X0,X4) = X2
                      & r2_hidden(X4,k1_relat_1(X0)) )
                  | r2_hidden(X2,X1) ) ) )
          & ( ! [X5] :
                ( ( r2_hidden(X5,X1)
                  | ! [X6] :
                      ( k1_funct_1(X0,X6) != X5
                      | ~ r2_hidden(X6,k1_relat_1(X0)) ) )
                & ( ? [X7] :
                      ( k1_funct_1(X0,X7) = X5
                      & r2_hidden(X7,k1_relat_1(X0)) )
                  | ~ r2_hidden(X5,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(rectify,[],[f32])).

fof(f36,plain,(
    ! [X5,X0] :
      ( ? [X7] :
          ( k1_funct_1(X0,X7) = X5
          & r2_hidden(X7,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK3(X0,X5)) = X5
        & r2_hidden(sK3(X0,X5),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f35,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( k1_funct_1(X0,X4) = X2
          & r2_hidden(X4,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK2(X0,X1)) = X2
        & r2_hidden(sK2(X0,X1),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f34,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ! [X3] :
                ( k1_funct_1(X0,X3) != X2
                | ~ r2_hidden(X3,k1_relat_1(X0)) )
            | ~ r2_hidden(X2,X1) )
          & ( ? [X4] :
                ( k1_funct_1(X0,X4) = X2
                & r2_hidden(X4,k1_relat_1(X0)) )
            | r2_hidden(X2,X1) ) )
     => ( ( ! [X3] :
              ( k1_funct_1(X0,X3) != sK1(X0,X1)
              | ~ r2_hidden(X3,k1_relat_1(X0)) )
          | ~ r2_hidden(sK1(X0,X1),X1) )
        & ( ? [X4] :
              ( k1_funct_1(X0,X4) = sK1(X0,X1)
              & r2_hidden(X4,k1_relat_1(X0)) )
          | r2_hidden(sK1(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ( ( ! [X3] :
                    ( k1_funct_1(X0,X3) != sK1(X0,X1)
                    | ~ r2_hidden(X3,k1_relat_1(X0)) )
                | ~ r2_hidden(sK1(X0,X1),X1) )
              & ( ( k1_funct_1(X0,sK2(X0,X1)) = sK1(X0,X1)
                  & r2_hidden(sK2(X0,X1),k1_relat_1(X0)) )
                | r2_hidden(sK1(X0,X1),X1) ) ) )
          & ( ! [X5] :
                ( ( r2_hidden(X5,X1)
                  | ! [X6] :
                      ( k1_funct_1(X0,X6) != X5
                      | ~ r2_hidden(X6,k1_relat_1(X0)) ) )
                & ( ( k1_funct_1(X0,sK3(X0,X5)) = X5
                    & r2_hidden(sK3(X0,X5),k1_relat_1(X0)) )
                  | ~ r2_hidden(X5,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f33,f36,f35,f34])).

fof(f54,plain,(
    ! [X6,X0,X5,X1] :
      ( r2_hidden(X5,X1)
      | k1_funct_1(X0,X6) != X5
      | ~ r2_hidden(X6,k1_relat_1(X0))
      | k2_relat_1(X0) != X1
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f75,plain,(
    ! [X6,X0,X1] :
      ( r2_hidden(k1_funct_1(X0,X6),X1)
      | ~ r2_hidden(X6,k1_relat_1(X0))
      | k2_relat_1(X0) != X1
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f54])).

fof(f76,plain,(
    ! [X6,X0] :
      ( r2_hidden(k1_funct_1(X0,X6),k2_relat_1(X0))
      | ~ r2_hidden(X6,k1_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f75])).

fof(f67,plain,(
    v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f41])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f50,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f6,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f51,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f6])).

fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f45,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f31])).

fof(f74,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f45])).

cnf(c_24,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_29,negated_conjecture,
    ( v1_funct_2(sK6,sK4,sK5) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_503,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK6 != X0
    | sK5 != X2
    | sK4 != X1
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_24,c_29])).

cnf(c_504,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    | k1_relset_1(sK4,sK5,sK6) = sK4
    | k1_xboole_0 = sK5 ),
    inference(unflattening,[status(thm)],[c_503])).

cnf(c_28,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_506,plain,
    ( k1_relset_1(sK4,sK5,sK6) = sK4
    | k1_xboole_0 = sK5 ),
    inference(global_propositional_subsumption,[status(thm)],[c_504,c_28])).

cnf(c_1116,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1120,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_2090,plain,
    ( k1_relset_1(sK4,sK5,sK6) = k1_relat_1(sK6) ),
    inference(superposition,[status(thm)],[c_1116,c_1120])).

cnf(c_2307,plain,
    ( k1_relat_1(sK6) = sK4
    | sK5 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_506,c_2090])).

cnf(c_1,plain,
    ( r2_hidden(sK0(X0,X1),X0)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1129,plain,
    ( r2_hidden(sK0(X0,X1),X0) = iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_27,negated_conjecture,
    ( ~ r2_hidden(X0,sK5)
    | r2_hidden(sK7(X0),sK4) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_1117,plain,
    ( r2_hidden(X0,sK5) != iProver_top
    | r2_hidden(sK7(X0),sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | ~ r1_tarski(X1,X2) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1128,plain,
    ( r2_hidden(X0,X1) != iProver_top
    | r2_hidden(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_2920,plain,
    ( r2_hidden(X0,sK5) != iProver_top
    | r2_hidden(sK7(X0),X1) = iProver_top
    | r1_tarski(sK4,X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1117,c_1128])).

cnf(c_26,negated_conjecture,
    ( ~ r2_hidden(X0,sK5)
    | k1_funct_1(sK6,sK7(X0)) = X0 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1118,plain,
    ( k1_funct_1(sK6,sK7(X0)) = X0
    | r2_hidden(X0,sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_1547,plain,
    ( k1_funct_1(sK6,sK7(sK0(sK5,X0))) = sK0(sK5,X0)
    | r1_tarski(sK5,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1129,c_1118])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1119,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2004,plain,
    ( k2_relset_1(sK4,sK5,sK6) = k2_relat_1(sK6) ),
    inference(superposition,[status(thm)],[c_1116,c_1119])).

cnf(c_16,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1121,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_2883,plain,
    ( m1_subset_1(k2_relat_1(sK6),k1_zfmisc_1(sK5)) = iProver_top
    | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top ),
    inference(superposition,[status(thm)],[c_2004,c_1121])).

cnf(c_33,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_3513,plain,
    ( m1_subset_1(k2_relat_1(sK6),k1_zfmisc_1(sK5)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2883,c_33])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_1124,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r2_hidden(X2,X0) != iProver_top
    | r2_hidden(X2,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_3518,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(X0,sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_3513,c_1124])).

cnf(c_4100,plain,
    ( r2_hidden(sK0(k2_relat_1(sK6),X0),sK5) = iProver_top
    | r1_tarski(k2_relat_1(sK6),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1129,c_3518])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1),X1)
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1130,plain,
    ( r2_hidden(sK0(X0,X1),X1) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_4837,plain,
    ( r1_tarski(k2_relat_1(sK6),sK5) = iProver_top ),
    inference(superposition,[status(thm)],[c_4100,c_1130])).

cnf(c_3,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X1 = X0 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_1127,plain,
    ( X0 = X1
    | r1_tarski(X1,X0) != iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_5029,plain,
    ( k2_relat_1(sK6) = sK5
    | r1_tarski(sK5,k2_relat_1(sK6)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4837,c_1127])).

cnf(c_25,negated_conjecture,
    ( k2_relset_1(sK4,sK5,sK6) != sK5 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_2231,plain,
    ( k2_relat_1(sK6) != sK5 ),
    inference(demodulation,[status(thm)],[c_2004,c_25])).

cnf(c_5037,plain,
    ( r1_tarski(sK5,k2_relat_1(sK6)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5029,c_2231])).

cnf(c_5042,plain,
    ( k1_funct_1(sK6,sK7(sK0(sK5,k2_relat_1(sK6)))) = sK0(sK5,k2_relat_1(sK6)) ),
    inference(superposition,[status(thm)],[c_1547,c_5037])).

cnf(c_13,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_30,negated_conjecture,
    ( v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_394,plain,
    ( ~ r2_hidden(X0,k1_relat_1(X1))
    | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_30])).

cnf(c_395,plain,
    ( ~ r2_hidden(X0,k1_relat_1(sK6))
    | r2_hidden(k1_funct_1(sK6,X0),k2_relat_1(sK6))
    | ~ v1_relat_1(sK6) ),
    inference(unflattening,[status(thm)],[c_394])).

cnf(c_1111,plain,
    ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
    | r2_hidden(k1_funct_1(sK6,X0),k2_relat_1(sK6)) = iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_395])).

cnf(c_5136,plain,
    ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),k2_relat_1(sK6)) = iProver_top
    | r2_hidden(sK7(sK0(sK5,k2_relat_1(sK6))),k1_relat_1(sK6)) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(superposition,[status(thm)],[c_5042,c_1111])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1308,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0)
    | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_1442,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    | ~ v1_relat_1(k2_zfmisc_1(sK4,sK5))
    | v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_1308])).

cnf(c_1443,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK4,sK5)) != iProver_top
    | v1_relat_1(sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1442])).

cnf(c_9,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1457,plain,
    ( v1_relat_1(k2_zfmisc_1(sK4,sK5)) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_1458,plain,
    ( v1_relat_1(k2_zfmisc_1(sK4,sK5)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1457])).

cnf(c_5275,plain,
    ( r2_hidden(sK7(sK0(sK5,k2_relat_1(sK6))),k1_relat_1(sK6)) != iProver_top
    | r2_hidden(sK0(sK5,k2_relat_1(sK6)),k2_relat_1(sK6)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5136,c_33,c_1443,c_1458])).

cnf(c_5276,plain,
    ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),k2_relat_1(sK6)) = iProver_top
    | r2_hidden(sK7(sK0(sK5,k2_relat_1(sK6))),k1_relat_1(sK6)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5275])).

cnf(c_5281,plain,
    ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),k2_relat_1(sK6)) = iProver_top
    | r2_hidden(sK0(sK5,k2_relat_1(sK6)),sK5) != iProver_top
    | r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2920,c_5276])).

cnf(c_5301,plain,
    ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),sK5) != iProver_top
    | r1_tarski(sK5,k2_relat_1(sK6)) = iProver_top
    | r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
    inference(superposition,[status(thm)],[c_5281,c_1130])).

cnf(c_9610,plain,
    ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),sK5) != iProver_top
    | r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5301,c_2231,c_5029])).

cnf(c_9616,plain,
    ( r1_tarski(sK5,k2_relat_1(sK6)) = iProver_top
    | r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1129,c_9610])).

cnf(c_9674,plain,
    ( r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_9616,c_2231,c_5029])).

cnf(c_9679,plain,
    ( sK5 = k1_xboole_0
    | r1_tarski(sK4,sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_2307,c_9674])).

cnf(c_1324,plain,
    ( ~ r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5)
    | ~ r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6))
    | k2_relset_1(sK4,sK5,sK6) = sK5 ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1325,plain,
    ( k2_relset_1(sK4,sK5,sK6) = sK5
    | r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5) != iProver_top
    | r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1324])).

cnf(c_1349,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
    | k2_relset_1(sK4,sK5,sK6) = k2_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_18])).

cnf(c_690,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X1)
    | X2 != X0 ),
    theory(equality)).

cnf(c_1466,plain,
    ( ~ r1_tarski(X0,k2_relset_1(sK4,sK5,sK6))
    | r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6))
    | sK5 != X0 ),
    inference(instantiation,[status(thm)],[c_690])).

cnf(c_1467,plain,
    ( sK5 != X0
    | r1_tarski(X0,k2_relset_1(sK4,sK5,sK6)) != iProver_top
    | r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1466])).

cnf(c_1469,plain,
    ( sK5 != k1_xboole_0
    | r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6)) = iProver_top
    | r1_tarski(k1_xboole_0,k2_relset_1(sK4,sK5,sK6)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1467])).

cnf(c_1375,plain,
    ( ~ r1_tarski(X0,sK5)
    | r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5)
    | k2_relset_1(sK4,sK5,sK6) != X0 ),
    inference(instantiation,[status(thm)],[c_690])).

cnf(c_2035,plain,
    ( r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5)
    | ~ r1_tarski(k2_relat_1(sK6),sK5)
    | k2_relset_1(sK4,sK5,sK6) != k2_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_1375])).

cnf(c_2036,plain,
    ( k2_relset_1(sK4,sK5,sK6) != k2_relat_1(sK6)
    | r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5) = iProver_top
    | r1_tarski(k2_relat_1(sK6),sK5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2035])).

cnf(c_6,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_2550,plain,
    ( r1_tarski(k1_xboole_0,k2_relset_1(sK4,sK5,sK6)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_2553,plain,
    ( r1_tarski(k1_xboole_0,k2_relset_1(sK4,sK5,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2550])).

cnf(c_9762,plain,
    ( r1_tarski(sK4,sK4) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_9679,c_28,c_25,c_1325,c_1349,c_1469,c_2036,c_2553,c_4837])).

cnf(c_5,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1126,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_9767,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_9762,c_1126])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:34:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 3.45/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.45/0.98  
% 3.45/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.45/0.98  
% 3.45/0.98  ------  iProver source info
% 3.45/0.98  
% 3.45/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.45/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.45/0.98  git: non_committed_changes: false
% 3.45/0.98  git: last_make_outside_of_git: false
% 3.45/0.98  
% 3.45/0.98  ------ 
% 3.45/0.98  
% 3.45/0.98  ------ Input Options
% 3.45/0.98  
% 3.45/0.98  --out_options                           all
% 3.45/0.98  --tptp_safe_out                         true
% 3.45/0.98  --problem_path                          ""
% 3.45/0.98  --include_path                          ""
% 3.45/0.98  --clausifier                            res/vclausify_rel
% 3.45/0.98  --clausifier_options                    --mode clausify
% 3.45/0.98  --stdin                                 false
% 3.45/0.98  --stats_out                             all
% 3.45/0.98  
% 3.45/0.98  ------ General Options
% 3.45/0.98  
% 3.45/0.98  --fof                                   false
% 3.45/0.98  --time_out_real                         305.
% 3.45/0.98  --time_out_virtual                      -1.
% 3.45/0.98  --symbol_type_check                     false
% 3.45/0.98  --clausify_out                          false
% 3.45/0.98  --sig_cnt_out                           false
% 3.45/0.98  --trig_cnt_out                          false
% 3.45/0.98  --trig_cnt_out_tolerance                1.
% 3.45/0.98  --trig_cnt_out_sk_spl                   false
% 3.45/0.98  --abstr_cl_out                          false
% 3.45/0.98  
% 3.45/0.98  ------ Global Options
% 3.45/0.98  
% 3.45/0.98  --schedule                              default
% 3.45/0.98  --add_important_lit                     false
% 3.45/0.98  --prop_solver_per_cl                    1000
% 3.45/0.98  --min_unsat_core                        false
% 3.45/0.98  --soft_assumptions                      false
% 3.45/0.98  --soft_lemma_size                       3
% 3.45/0.98  --prop_impl_unit_size                   0
% 3.45/0.98  --prop_impl_unit                        []
% 3.45/0.98  --share_sel_clauses                     true
% 3.45/0.98  --reset_solvers                         false
% 3.45/0.98  --bc_imp_inh                            [conj_cone]
% 3.45/0.98  --conj_cone_tolerance                   3.
% 3.45/0.98  --extra_neg_conj                        none
% 3.45/0.98  --large_theory_mode                     true
% 3.45/0.98  --prolific_symb_bound                   200
% 3.45/0.98  --lt_threshold                          2000
% 3.45/0.98  --clause_weak_htbl                      true
% 3.45/0.98  --gc_record_bc_elim                     false
% 3.45/0.98  
% 3.45/0.98  ------ Preprocessing Options
% 3.45/0.98  
% 3.45/0.98  --preprocessing_flag                    true
% 3.45/0.98  --time_out_prep_mult                    0.1
% 3.45/0.98  --splitting_mode                        input
% 3.45/0.98  --splitting_grd                         true
% 3.45/0.98  --splitting_cvd                         false
% 3.45/0.98  --splitting_cvd_svl                     false
% 3.45/0.98  --splitting_nvd                         32
% 3.45/0.98  --sub_typing                            true
% 3.45/0.98  --prep_gs_sim                           true
% 3.45/0.98  --prep_unflatten                        true
% 3.45/0.98  --prep_res_sim                          true
% 3.45/0.98  --prep_upred                            true
% 3.45/0.98  --prep_sem_filter                       exhaustive
% 3.45/0.98  --prep_sem_filter_out                   false
% 3.45/0.98  --pred_elim                             true
% 3.45/0.98  --res_sim_input                         true
% 3.45/0.98  --eq_ax_congr_red                       true
% 3.45/0.98  --pure_diseq_elim                       true
% 3.45/0.98  --brand_transform                       false
% 3.45/0.98  --non_eq_to_eq                          false
% 3.45/0.98  --prep_def_merge                        true
% 3.45/0.98  --prep_def_merge_prop_impl              false
% 3.45/0.98  --prep_def_merge_mbd                    true
% 3.45/0.98  --prep_def_merge_tr_red                 false
% 3.45/0.98  --prep_def_merge_tr_cl                  false
% 3.45/0.98  --smt_preprocessing                     true
% 3.45/0.98  --smt_ac_axioms                         fast
% 3.45/0.98  --preprocessed_out                      false
% 3.45/0.98  --preprocessed_stats                    false
% 3.45/0.98  
% 3.45/0.98  ------ Abstraction refinement Options
% 3.45/0.98  
% 3.45/0.98  --abstr_ref                             []
% 3.45/0.98  --abstr_ref_prep                        false
% 3.45/0.98  --abstr_ref_until_sat                   false
% 3.45/0.98  --abstr_ref_sig_restrict                funpre
% 3.45/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.45/0.98  --abstr_ref_under                       []
% 3.45/0.98  
% 3.45/0.98  ------ SAT Options
% 3.45/0.98  
% 3.45/0.98  --sat_mode                              false
% 3.45/0.98  --sat_fm_restart_options                ""
% 3.45/0.98  --sat_gr_def                            false
% 3.45/0.98  --sat_epr_types                         true
% 3.45/0.98  --sat_non_cyclic_types                  false
% 3.45/0.98  --sat_finite_models                     false
% 3.45/0.98  --sat_fm_lemmas                         false
% 3.45/0.98  --sat_fm_prep                           false
% 3.45/0.98  --sat_fm_uc_incr                        true
% 3.45/0.98  --sat_out_model                         small
% 3.45/0.98  --sat_out_clauses                       false
% 3.45/0.98  
% 3.45/0.98  ------ QBF Options
% 3.45/0.98  
% 3.45/0.98  --qbf_mode                              false
% 3.45/0.98  --qbf_elim_univ                         false
% 3.45/0.98  --qbf_dom_inst                          none
% 3.45/0.98  --qbf_dom_pre_inst                      false
% 3.45/0.98  --qbf_sk_in                             false
% 3.45/0.98  --qbf_pred_elim                         true
% 3.45/0.98  --qbf_split                             512
% 3.45/0.98  
% 3.45/0.98  ------ BMC1 Options
% 3.45/0.98  
% 3.45/0.98  --bmc1_incremental                      false
% 3.45/0.98  --bmc1_axioms                           reachable_all
% 3.45/0.98  --bmc1_min_bound                        0
% 3.45/0.98  --bmc1_max_bound                        -1
% 3.45/0.98  --bmc1_max_bound_default                -1
% 3.45/0.98  --bmc1_symbol_reachability              true
% 3.45/0.98  --bmc1_property_lemmas                  false
% 3.45/0.98  --bmc1_k_induction                      false
% 3.45/0.98  --bmc1_non_equiv_states                 false
% 3.45/0.98  --bmc1_deadlock                         false
% 3.45/0.98  --bmc1_ucm                              false
% 3.45/0.98  --bmc1_add_unsat_core                   none
% 3.45/0.98  --bmc1_unsat_core_children              false
% 3.45/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.45/0.98  --bmc1_out_stat                         full
% 3.45/0.98  --bmc1_ground_init                      false
% 3.45/0.98  --bmc1_pre_inst_next_state              false
% 3.45/0.98  --bmc1_pre_inst_state                   false
% 3.45/0.98  --bmc1_pre_inst_reach_state             false
% 3.45/0.98  --bmc1_out_unsat_core                   false
% 3.45/0.98  --bmc1_aig_witness_out                  false
% 3.45/0.98  --bmc1_verbose                          false
% 3.45/0.98  --bmc1_dump_clauses_tptp                false
% 3.45/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.45/0.98  --bmc1_dump_file                        -
% 3.45/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.45/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.45/0.98  --bmc1_ucm_extend_mode                  1
% 3.45/0.98  --bmc1_ucm_init_mode                    2
% 3.45/0.98  --bmc1_ucm_cone_mode                    none
% 3.45/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.45/0.98  --bmc1_ucm_relax_model                  4
% 3.45/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.45/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.45/0.98  --bmc1_ucm_layered_model                none
% 3.45/0.98  --bmc1_ucm_max_lemma_size               10
% 3.45/0.98  
% 3.45/0.98  ------ AIG Options
% 3.45/0.98  
% 3.45/0.98  --aig_mode                              false
% 3.45/0.98  
% 3.45/0.98  ------ Instantiation Options
% 3.45/0.98  
% 3.45/0.98  --instantiation_flag                    true
% 3.45/0.98  --inst_sos_flag                         false
% 3.45/0.98  --inst_sos_phase                        true
% 3.45/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.45/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.45/0.98  --inst_lit_sel_side                     num_symb
% 3.45/0.98  --inst_solver_per_active                1400
% 3.45/0.98  --inst_solver_calls_frac                1.
% 3.45/0.98  --inst_passive_queue_type               priority_queues
% 3.45/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.45/0.98  --inst_passive_queues_freq              [25;2]
% 3.45/0.98  --inst_dismatching                      true
% 3.45/0.98  --inst_eager_unprocessed_to_passive     true
% 3.45/0.98  --inst_prop_sim_given                   true
% 3.45/0.98  --inst_prop_sim_new                     false
% 3.45/0.98  --inst_subs_new                         false
% 3.45/0.98  --inst_eq_res_simp                      false
% 3.45/0.98  --inst_subs_given                       false
% 3.45/0.98  --inst_orphan_elimination               true
% 3.45/0.98  --inst_learning_loop_flag               true
% 3.45/0.98  --inst_learning_start                   3000
% 3.45/0.98  --inst_learning_factor                  2
% 3.45/0.98  --inst_start_prop_sim_after_learn       3
% 3.45/0.98  --inst_sel_renew                        solver
% 3.45/0.98  --inst_lit_activity_flag                true
% 3.45/0.98  --inst_restr_to_given                   false
% 3.45/0.98  --inst_activity_threshold               500
% 3.45/0.98  --inst_out_proof                        true
% 3.45/0.98  
% 3.45/0.98  ------ Resolution Options
% 3.45/0.98  
% 3.45/0.98  --resolution_flag                       true
% 3.45/0.98  --res_lit_sel                           adaptive
% 3.45/0.98  --res_lit_sel_side                      none
% 3.45/0.98  --res_ordering                          kbo
% 3.45/0.98  --res_to_prop_solver                    active
% 3.45/0.98  --res_prop_simpl_new                    false
% 3.45/0.98  --res_prop_simpl_given                  true
% 3.45/0.98  --res_passive_queue_type                priority_queues
% 3.45/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.45/0.98  --res_passive_queues_freq               [15;5]
% 3.45/0.98  --res_forward_subs                      full
% 3.45/0.98  --res_backward_subs                     full
% 3.45/0.98  --res_forward_subs_resolution           true
% 3.45/0.98  --res_backward_subs_resolution          true
% 3.45/0.98  --res_orphan_elimination                true
% 3.45/0.98  --res_time_limit                        2.
% 3.45/0.98  --res_out_proof                         true
% 3.45/0.98  
% 3.45/0.98  ------ Superposition Options
% 3.45/0.98  
% 3.45/0.98  --superposition_flag                    true
% 3.45/0.98  --sup_passive_queue_type                priority_queues
% 3.45/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.45/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.45/0.98  --demod_completeness_check              fast
% 3.45/0.98  --demod_use_ground                      true
% 3.45/0.98  --sup_to_prop_solver                    passive
% 3.45/0.98  --sup_prop_simpl_new                    true
% 3.45/0.98  --sup_prop_simpl_given                  true
% 3.45/0.98  --sup_fun_splitting                     false
% 3.45/0.98  --sup_smt_interval                      50000
% 3.45/0.98  
% 3.45/0.98  ------ Superposition Simplification Setup
% 3.45/0.98  
% 3.45/0.98  --sup_indices_passive                   []
% 3.45/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.45/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.45/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.45/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.45/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.45/0.98  --sup_full_bw                           [BwDemod]
% 3.45/0.98  --sup_immed_triv                        [TrivRules]
% 3.45/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.45/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.45/0.98  --sup_immed_bw_main                     []
% 3.45/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.45/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.45/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.45/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.45/0.98  
% 3.45/0.98  ------ Combination Options
% 3.45/0.98  
% 3.45/0.98  --comb_res_mult                         3
% 3.45/0.98  --comb_sup_mult                         2
% 3.45/0.98  --comb_inst_mult                        10
% 3.45/0.98  
% 3.45/0.98  ------ Debug Options
% 3.45/0.98  
% 3.45/0.98  --dbg_backtrace                         false
% 3.45/0.98  --dbg_dump_prop_clauses                 false
% 3.45/0.98  --dbg_dump_prop_clauses_file            -
% 3.45/0.98  --dbg_out_stat                          false
% 3.45/0.98  ------ Parsing...
% 3.45/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.45/0.98  
% 3.45/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.45/0.98  
% 3.45/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.45/0.98  
% 3.45/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.45/0.98  ------ Proving...
% 3.45/0.98  ------ Problem Properties 
% 3.45/0.98  
% 3.45/0.98  
% 3.45/0.98  clauses                                 25
% 3.45/0.98  conjectures                             4
% 3.45/0.98  EPR                                     4
% 3.45/0.98  Horn                                    20
% 3.45/0.98  unary                                   5
% 3.45/0.98  binary                                  8
% 3.45/0.98  lits                                    62
% 3.45/0.98  lits eq                                 18
% 3.45/0.98  fd_pure                                 0
% 3.45/0.98  fd_pseudo                               0
% 3.45/0.98  fd_cond                                 3
% 3.45/0.98  fd_pseudo_cond                          1
% 3.45/0.98  AC symbols                              0
% 3.45/0.98  
% 3.45/0.98  ------ Schedule dynamic 5 is on 
% 3.45/0.98  
% 3.45/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.45/0.98  
% 3.45/0.98  
% 3.45/0.98  ------ 
% 3.45/0.98  Current options:
% 3.45/0.98  ------ 
% 3.45/0.98  
% 3.45/0.98  ------ Input Options
% 3.45/0.98  
% 3.45/0.98  --out_options                           all
% 3.45/0.98  --tptp_safe_out                         true
% 3.45/0.98  --problem_path                          ""
% 3.45/0.98  --include_path                          ""
% 3.45/0.98  --clausifier                            res/vclausify_rel
% 3.45/0.98  --clausifier_options                    --mode clausify
% 3.45/0.98  --stdin                                 false
% 3.45/0.98  --stats_out                             all
% 3.45/0.98  
% 3.45/0.98  ------ General Options
% 3.45/0.98  
% 3.45/0.98  --fof                                   false
% 3.45/0.98  --time_out_real                         305.
% 3.45/0.98  --time_out_virtual                      -1.
% 3.45/0.98  --symbol_type_check                     false
% 3.45/0.98  --clausify_out                          false
% 3.45/0.98  --sig_cnt_out                           false
% 3.45/0.98  --trig_cnt_out                          false
% 3.45/0.98  --trig_cnt_out_tolerance                1.
% 3.45/0.98  --trig_cnt_out_sk_spl                   false
% 3.45/0.98  --abstr_cl_out                          false
% 3.45/0.98  
% 3.45/0.98  ------ Global Options
% 3.45/0.98  
% 3.45/0.98  --schedule                              default
% 3.45/0.98  --add_important_lit                     false
% 3.45/0.98  --prop_solver_per_cl                    1000
% 3.45/0.98  --min_unsat_core                        false
% 3.45/0.98  --soft_assumptions                      false
% 3.45/0.98  --soft_lemma_size                       3
% 3.45/0.98  --prop_impl_unit_size                   0
% 3.45/0.98  --prop_impl_unit                        []
% 3.45/0.98  --share_sel_clauses                     true
% 3.45/0.98  --reset_solvers                         false
% 3.45/0.98  --bc_imp_inh                            [conj_cone]
% 3.45/0.98  --conj_cone_tolerance                   3.
% 3.45/0.98  --extra_neg_conj                        none
% 3.45/0.98  --large_theory_mode                     true
% 3.45/0.98  --prolific_symb_bound                   200
% 3.45/0.98  --lt_threshold                          2000
% 3.45/0.98  --clause_weak_htbl                      true
% 3.45/0.98  --gc_record_bc_elim                     false
% 3.45/0.98  
% 3.45/0.98  ------ Preprocessing Options
% 3.45/0.98  
% 3.45/0.98  --preprocessing_flag                    true
% 3.45/0.98  --time_out_prep_mult                    0.1
% 3.45/0.98  --splitting_mode                        input
% 3.45/0.98  --splitting_grd                         true
% 3.45/0.98  --splitting_cvd                         false
% 3.45/0.98  --splitting_cvd_svl                     false
% 3.45/0.98  --splitting_nvd                         32
% 3.45/0.98  --sub_typing                            true
% 3.45/0.98  --prep_gs_sim                           true
% 3.45/0.98  --prep_unflatten                        true
% 3.45/0.98  --prep_res_sim                          true
% 3.45/0.98  --prep_upred                            true
% 3.45/0.98  --prep_sem_filter                       exhaustive
% 3.45/0.98  --prep_sem_filter_out                   false
% 3.45/0.98  --pred_elim                             true
% 3.45/0.98  --res_sim_input                         true
% 3.45/0.98  --eq_ax_congr_red                       true
% 3.45/0.98  --pure_diseq_elim                       true
% 3.45/0.98  --brand_transform                       false
% 3.45/0.98  --non_eq_to_eq                          false
% 3.45/0.98  --prep_def_merge                        true
% 3.45/0.98  --prep_def_merge_prop_impl              false
% 3.45/0.98  --prep_def_merge_mbd                    true
% 3.45/0.98  --prep_def_merge_tr_red                 false
% 3.45/0.98  --prep_def_merge_tr_cl                  false
% 3.45/0.98  --smt_preprocessing                     true
% 3.45/0.98  --smt_ac_axioms                         fast
% 3.45/0.98  --preprocessed_out                      false
% 3.45/0.98  --preprocessed_stats                    false
% 3.45/0.98  
% 3.45/0.98  ------ Abstraction refinement Options
% 3.45/0.98  
% 3.45/0.98  --abstr_ref                             []
% 3.45/0.98  --abstr_ref_prep                        false
% 3.45/0.98  --abstr_ref_until_sat                   false
% 3.45/0.98  --abstr_ref_sig_restrict                funpre
% 3.45/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.45/0.98  --abstr_ref_under                       []
% 3.45/0.98  
% 3.45/0.98  ------ SAT Options
% 3.45/0.98  
% 3.45/0.98  --sat_mode                              false
% 3.45/0.98  --sat_fm_restart_options                ""
% 3.45/0.98  --sat_gr_def                            false
% 3.45/0.98  --sat_epr_types                         true
% 3.45/0.98  --sat_non_cyclic_types                  false
% 3.45/0.98  --sat_finite_models                     false
% 3.45/0.98  --sat_fm_lemmas                         false
% 3.45/0.98  --sat_fm_prep                           false
% 3.45/0.98  --sat_fm_uc_incr                        true
% 3.45/0.98  --sat_out_model                         small
% 3.45/0.98  --sat_out_clauses                       false
% 3.45/0.98  
% 3.45/0.98  ------ QBF Options
% 3.45/0.98  
% 3.45/0.98  --qbf_mode                              false
% 3.45/0.98  --qbf_elim_univ                         false
% 3.45/0.98  --qbf_dom_inst                          none
% 3.45/0.98  --qbf_dom_pre_inst                      false
% 3.45/0.98  --qbf_sk_in                             false
% 3.45/0.98  --qbf_pred_elim                         true
% 3.45/0.98  --qbf_split                             512
% 3.45/0.98  
% 3.45/0.98  ------ BMC1 Options
% 3.45/0.98  
% 3.45/0.98  --bmc1_incremental                      false
% 3.45/0.98  --bmc1_axioms                           reachable_all
% 3.45/0.98  --bmc1_min_bound                        0
% 3.45/0.98  --bmc1_max_bound                        -1
% 3.45/0.98  --bmc1_max_bound_default                -1
% 3.45/0.98  --bmc1_symbol_reachability              true
% 3.45/0.98  --bmc1_property_lemmas                  false
% 3.45/0.98  --bmc1_k_induction                      false
% 3.45/0.98  --bmc1_non_equiv_states                 false
% 3.45/0.98  --bmc1_deadlock                         false
% 3.45/0.98  --bmc1_ucm                              false
% 3.45/0.98  --bmc1_add_unsat_core                   none
% 3.45/0.98  --bmc1_unsat_core_children              false
% 3.45/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.45/0.98  --bmc1_out_stat                         full
% 3.45/0.98  --bmc1_ground_init                      false
% 3.45/0.98  --bmc1_pre_inst_next_state              false
% 3.45/0.98  --bmc1_pre_inst_state                   false
% 3.45/0.98  --bmc1_pre_inst_reach_state             false
% 3.45/0.98  --bmc1_out_unsat_core                   false
% 3.45/0.98  --bmc1_aig_witness_out                  false
% 3.45/0.98  --bmc1_verbose                          false
% 3.45/0.98  --bmc1_dump_clauses_tptp                false
% 3.45/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.45/0.98  --bmc1_dump_file                        -
% 3.45/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.45/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.45/0.98  --bmc1_ucm_extend_mode                  1
% 3.45/0.98  --bmc1_ucm_init_mode                    2
% 3.45/0.98  --bmc1_ucm_cone_mode                    none
% 3.45/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.45/0.98  --bmc1_ucm_relax_model                  4
% 3.45/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.45/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.45/0.98  --bmc1_ucm_layered_model                none
% 3.45/0.98  --bmc1_ucm_max_lemma_size               10
% 3.45/0.98  
% 3.45/0.98  ------ AIG Options
% 3.45/0.98  
% 3.45/0.98  --aig_mode                              false
% 3.45/0.98  
% 3.45/0.98  ------ Instantiation Options
% 3.45/0.98  
% 3.45/0.98  --instantiation_flag                    true
% 3.45/0.98  --inst_sos_flag                         false
% 3.45/0.98  --inst_sos_phase                        true
% 3.45/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.45/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.45/0.98  --inst_lit_sel_side                     none
% 3.45/0.98  --inst_solver_per_active                1400
% 3.45/0.98  --inst_solver_calls_frac                1.
% 3.45/0.98  --inst_passive_queue_type               priority_queues
% 3.45/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.45/0.98  --inst_passive_queues_freq              [25;2]
% 3.45/0.98  --inst_dismatching                      true
% 3.45/0.98  --inst_eager_unprocessed_to_passive     true
% 3.45/0.98  --inst_prop_sim_given                   true
% 3.45/0.98  --inst_prop_sim_new                     false
% 3.45/0.98  --inst_subs_new                         false
% 3.45/0.98  --inst_eq_res_simp                      false
% 3.45/0.98  --inst_subs_given                       false
% 3.45/0.98  --inst_orphan_elimination               true
% 3.45/0.98  --inst_learning_loop_flag               true
% 3.45/0.98  --inst_learning_start                   3000
% 3.45/0.98  --inst_learning_factor                  2
% 3.45/0.98  --inst_start_prop_sim_after_learn       3
% 3.45/0.98  --inst_sel_renew                        solver
% 3.45/0.98  --inst_lit_activity_flag                true
% 3.45/0.98  --inst_restr_to_given                   false
% 3.45/0.98  --inst_activity_threshold               500
% 3.45/0.98  --inst_out_proof                        true
% 3.45/0.98  
% 3.45/0.98  ------ Resolution Options
% 3.45/0.98  
% 3.45/0.98  --resolution_flag                       false
% 3.45/0.98  --res_lit_sel                           adaptive
% 3.45/0.98  --res_lit_sel_side                      none
% 3.45/0.98  --res_ordering                          kbo
% 3.45/0.98  --res_to_prop_solver                    active
% 3.45/0.98  --res_prop_simpl_new                    false
% 3.45/0.98  --res_prop_simpl_given                  true
% 3.45/0.98  --res_passive_queue_type                priority_queues
% 3.45/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.45/0.98  --res_passive_queues_freq               [15;5]
% 3.45/0.98  --res_forward_subs                      full
% 3.45/0.98  --res_backward_subs                     full
% 3.45/0.98  --res_forward_subs_resolution           true
% 3.45/0.98  --res_backward_subs_resolution          true
% 3.45/0.98  --res_orphan_elimination                true
% 3.45/0.98  --res_time_limit                        2.
% 3.45/0.98  --res_out_proof                         true
% 3.45/0.98  
% 3.45/0.98  ------ Superposition Options
% 3.45/0.98  
% 3.45/0.98  --superposition_flag                    true
% 3.45/0.98  --sup_passive_queue_type                priority_queues
% 3.45/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.45/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.45/0.98  --demod_completeness_check              fast
% 3.45/0.98  --demod_use_ground                      true
% 3.45/0.98  --sup_to_prop_solver                    passive
% 3.45/0.98  --sup_prop_simpl_new                    true
% 3.45/0.98  --sup_prop_simpl_given                  true
% 3.45/0.98  --sup_fun_splitting                     false
% 3.45/0.98  --sup_smt_interval                      50000
% 3.45/0.98  
% 3.45/0.98  ------ Superposition Simplification Setup
% 3.45/0.98  
% 3.45/0.98  --sup_indices_passive                   []
% 3.45/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.45/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.45/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.45/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.45/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.45/0.98  --sup_full_bw                           [BwDemod]
% 3.45/0.98  --sup_immed_triv                        [TrivRules]
% 3.45/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.45/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.45/0.98  --sup_immed_bw_main                     []
% 3.45/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.45/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.45/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.45/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.45/0.98  
% 3.45/0.98  ------ Combination Options
% 3.45/0.98  
% 3.45/0.98  --comb_res_mult                         3
% 3.45/0.98  --comb_sup_mult                         2
% 3.45/0.98  --comb_inst_mult                        10
% 3.45/0.98  
% 3.45/0.98  ------ Debug Options
% 3.45/0.98  
% 3.45/0.98  --dbg_backtrace                         false
% 3.45/0.98  --dbg_dump_prop_clauses                 false
% 3.45/0.98  --dbg_dump_prop_clauses_file            -
% 3.45/0.98  --dbg_out_stat                          false
% 3.45/0.98  
% 3.45/0.98  
% 3.45/0.98  
% 3.45/0.98  
% 3.45/0.98  ------ Proving...
% 3.45/0.98  
% 3.45/0.98  
% 3.45/0.98  % SZS status Theorem for theBenchmark.p
% 3.45/0.98  
% 3.45/0.98   Resolution empty clause
% 3.45/0.98  
% 3.45/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.45/0.98  
% 3.45/0.98  fof(f11,axiom,(
% 3.45/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f22,plain,(
% 3.45/0.98    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.45/0.98    inference(ennf_transformation,[],[f11])).
% 3.45/0.98  
% 3.45/0.98  fof(f23,plain,(
% 3.45/0.98    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.45/0.98    inference(flattening,[],[f22])).
% 3.45/0.98  
% 3.45/0.98  fof(f38,plain,(
% 3.45/0.98    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.45/0.98    inference(nnf_transformation,[],[f23])).
% 3.45/0.98  
% 3.45/0.98  fof(f61,plain,(
% 3.45/0.98    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.45/0.98    inference(cnf_transformation,[],[f38])).
% 3.45/0.98  
% 3.45/0.98  fof(f12,conjecture,(
% 3.45/0.98    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (! [X3] : ~(! [X4] : ~(k1_funct_1(X2,X4) = X3 & r2_hidden(X4,X0)) & r2_hidden(X3,X1)) => k2_relset_1(X0,X1,X2) = X1))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f13,negated_conjecture,(
% 3.45/0.98    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (! [X3] : ~(! [X4] : ~(k1_funct_1(X2,X4) = X3 & r2_hidden(X4,X0)) & r2_hidden(X3,X1)) => k2_relset_1(X0,X1,X2) = X1))),
% 3.45/0.98    inference(negated_conjecture,[],[f12])).
% 3.45/0.98  
% 3.45/0.98  fof(f24,plain,(
% 3.45/0.98    ? [X0,X1,X2] : ((k2_relset_1(X0,X1,X2) != X1 & ! [X3] : (? [X4] : (k1_funct_1(X2,X4) = X3 & r2_hidden(X4,X0)) | ~r2_hidden(X3,X1))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 3.45/0.98    inference(ennf_transformation,[],[f13])).
% 3.45/0.98  
% 3.45/0.98  fof(f25,plain,(
% 3.45/0.98    ? [X0,X1,X2] : (k2_relset_1(X0,X1,X2) != X1 & ! [X3] : (? [X4] : (k1_funct_1(X2,X4) = X3 & r2_hidden(X4,X0)) | ~r2_hidden(X3,X1)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 3.45/0.98    inference(flattening,[],[f24])).
% 3.45/0.98  
% 3.45/0.98  fof(f40,plain,(
% 3.45/0.98    ( ! [X2,X0] : (! [X3] : (? [X4] : (k1_funct_1(X2,X4) = X3 & r2_hidden(X4,X0)) => (k1_funct_1(X2,sK7(X3)) = X3 & r2_hidden(sK7(X3),X0)))) )),
% 3.45/0.98    introduced(choice_axiom,[])).
% 3.45/0.98  
% 3.45/0.98  fof(f39,plain,(
% 3.45/0.98    ? [X0,X1,X2] : (k2_relset_1(X0,X1,X2) != X1 & ! [X3] : (? [X4] : (k1_funct_1(X2,X4) = X3 & r2_hidden(X4,X0)) | ~r2_hidden(X3,X1)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (k2_relset_1(sK4,sK5,sK6) != sK5 & ! [X3] : (? [X4] : (k1_funct_1(sK6,X4) = X3 & r2_hidden(X4,sK4)) | ~r2_hidden(X3,sK5)) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) & v1_funct_2(sK6,sK4,sK5) & v1_funct_1(sK6))),
% 3.45/0.98    introduced(choice_axiom,[])).
% 3.45/0.98  
% 3.45/0.98  fof(f41,plain,(
% 3.45/0.98    k2_relset_1(sK4,sK5,sK6) != sK5 & ! [X3] : ((k1_funct_1(sK6,sK7(X3)) = X3 & r2_hidden(sK7(X3),sK4)) | ~r2_hidden(X3,sK5)) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) & v1_funct_2(sK6,sK4,sK5) & v1_funct_1(sK6)),
% 3.45/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK4,sK5,sK6,sK7])],[f25,f40,f39])).
% 3.45/0.98  
% 3.45/0.98  fof(f68,plain,(
% 3.45/0.98    v1_funct_2(sK6,sK4,sK5)),
% 3.45/0.98    inference(cnf_transformation,[],[f41])).
% 3.45/0.98  
% 3.45/0.98  fof(f69,plain,(
% 3.45/0.98    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))),
% 3.45/0.98    inference(cnf_transformation,[],[f41])).
% 3.45/0.98  
% 3.45/0.98  fof(f9,axiom,(
% 3.45/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f20,plain,(
% 3.45/0.98    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.45/0.98    inference(ennf_transformation,[],[f9])).
% 3.45/0.98  
% 3.45/0.98  fof(f59,plain,(
% 3.45/0.98    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.45/0.98    inference(cnf_transformation,[],[f20])).
% 3.45/0.98  
% 3.45/0.98  fof(f1,axiom,(
% 3.45/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X0) => r2_hidden(X2,X1)))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f14,plain,(
% 3.45/0.98    ! [X0,X1] : (r1_tarski(X0,X1) <=> ! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)))),
% 3.45/0.98    inference(ennf_transformation,[],[f1])).
% 3.45/0.98  
% 3.45/0.98  fof(f26,plain,(
% 3.45/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X2] : (r2_hidden(X2,X1) | ~r2_hidden(X2,X0)) | ~r1_tarski(X0,X1)))),
% 3.45/0.98    inference(nnf_transformation,[],[f14])).
% 3.45/0.98  
% 3.45/0.98  fof(f27,plain,(
% 3.45/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | ? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.45/0.98    inference(rectify,[],[f26])).
% 3.45/0.98  
% 3.45/0.98  fof(f28,plain,(
% 3.45/0.98    ! [X1,X0] : (? [X2] : (~r2_hidden(X2,X1) & r2_hidden(X2,X0)) => (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0)))),
% 3.45/0.98    introduced(choice_axiom,[])).
% 3.45/0.98  
% 3.45/0.98  fof(f29,plain,(
% 3.45/0.98    ! [X0,X1] : ((r1_tarski(X0,X1) | (~r2_hidden(sK0(X0,X1),X1) & r2_hidden(sK0(X0,X1),X0))) & (! [X3] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r1_tarski(X0,X1)))),
% 3.45/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f27,f28])).
% 3.45/0.98  
% 3.45/0.98  fof(f43,plain,(
% 3.45/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | r2_hidden(sK0(X0,X1),X0)) )),
% 3.45/0.98    inference(cnf_transformation,[],[f29])).
% 3.45/0.98  
% 3.45/0.98  fof(f70,plain,(
% 3.45/0.98    ( ! [X3] : (r2_hidden(sK7(X3),sK4) | ~r2_hidden(X3,sK5)) )),
% 3.45/0.98    inference(cnf_transformation,[],[f41])).
% 3.45/0.98  
% 3.45/0.98  fof(f42,plain,(
% 3.45/0.98    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r1_tarski(X0,X1)) )),
% 3.45/0.98    inference(cnf_transformation,[],[f29])).
% 3.45/0.98  
% 3.45/0.98  fof(f71,plain,(
% 3.45/0.98    ( ! [X3] : (k1_funct_1(sK6,sK7(X3)) = X3 | ~r2_hidden(X3,sK5)) )),
% 3.45/0.98    inference(cnf_transformation,[],[f41])).
% 3.45/0.98  
% 3.45/0.98  fof(f10,axiom,(
% 3.45/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f21,plain,(
% 3.45/0.98    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.45/0.98    inference(ennf_transformation,[],[f10])).
% 3.45/0.98  
% 3.45/0.98  fof(f60,plain,(
% 3.45/0.98    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.45/0.98    inference(cnf_transformation,[],[f21])).
% 3.45/0.98  
% 3.45/0.98  fof(f8,axiom,(
% 3.45/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f19,plain,(
% 3.45/0.98    ! [X0,X1,X2] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.45/0.98    inference(ennf_transformation,[],[f8])).
% 3.45/0.98  
% 3.45/0.98  fof(f58,plain,(
% 3.45/0.98    ( ! [X2,X0,X1] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.45/0.98    inference(cnf_transformation,[],[f19])).
% 3.45/0.98  
% 3.45/0.98  fof(f4,axiom,(
% 3.45/0.98    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f15,plain,(
% 3.45/0.98    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 3.45/0.98    inference(ennf_transformation,[],[f4])).
% 3.45/0.98  
% 3.45/0.98  fof(f49,plain,(
% 3.45/0.98    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 3.45/0.98    inference(cnf_transformation,[],[f15])).
% 3.45/0.98  
% 3.45/0.98  fof(f44,plain,(
% 3.45/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~r2_hidden(sK0(X0,X1),X1)) )),
% 3.45/0.98    inference(cnf_transformation,[],[f29])).
% 3.45/0.98  
% 3.45/0.98  fof(f2,axiom,(
% 3.45/0.98    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f30,plain,(
% 3.45/0.98    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.45/0.98    inference(nnf_transformation,[],[f2])).
% 3.45/0.98  
% 3.45/0.98  fof(f31,plain,(
% 3.45/0.98    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.45/0.98    inference(flattening,[],[f30])).
% 3.45/0.98  
% 3.45/0.98  fof(f47,plain,(
% 3.45/0.98    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.45/0.98    inference(cnf_transformation,[],[f31])).
% 3.45/0.98  
% 3.45/0.98  fof(f72,plain,(
% 3.45/0.98    k2_relset_1(sK4,sK5,sK6) != sK5),
% 3.45/0.98    inference(cnf_transformation,[],[f41])).
% 3.45/0.98  
% 3.45/0.98  fof(f7,axiom,(
% 3.45/0.98    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f17,plain,(
% 3.45/0.98    ! [X0] : (! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.45/0.98    inference(ennf_transformation,[],[f7])).
% 3.45/0.98  
% 3.45/0.98  fof(f18,plain,(
% 3.45/0.98    ! [X0] : (! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.45/0.98    inference(flattening,[],[f17])).
% 3.45/0.98  
% 3.45/0.98  fof(f32,plain,(
% 3.45/0.98    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0)))) & (? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.45/0.98    inference(nnf_transformation,[],[f18])).
% 3.45/0.98  
% 3.45/0.98  fof(f33,plain,(
% 3.45/0.98    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (k1_funct_1(X0,X6) != X5 | ~r2_hidden(X6,k1_relat_1(X0)))) & (? [X7] : (k1_funct_1(X0,X7) = X5 & r2_hidden(X7,k1_relat_1(X0))) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.45/0.98    inference(rectify,[],[f32])).
% 3.45/0.98  
% 3.45/0.98  fof(f36,plain,(
% 3.45/0.98    ! [X5,X0] : (? [X7] : (k1_funct_1(X0,X7) = X5 & r2_hidden(X7,k1_relat_1(X0))) => (k1_funct_1(X0,sK3(X0,X5)) = X5 & r2_hidden(sK3(X0,X5),k1_relat_1(X0))))),
% 3.45/0.98    introduced(choice_axiom,[])).
% 3.45/0.98  
% 3.45/0.98  fof(f35,plain,(
% 3.45/0.98    ( ! [X2] : (! [X1,X0] : (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) => (k1_funct_1(X0,sK2(X0,X1)) = X2 & r2_hidden(sK2(X0,X1),k1_relat_1(X0))))) )),
% 3.45/0.98    introduced(choice_axiom,[])).
% 3.45/0.98  
% 3.45/0.98  fof(f34,plain,(
% 3.45/0.98    ! [X1,X0] : (? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(X2,X1))) => ((! [X3] : (k1_funct_1(X0,X3) != sK1(X0,X1) | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(sK1(X0,X1),X1)) & (? [X4] : (k1_funct_1(X0,X4) = sK1(X0,X1) & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(sK1(X0,X1),X1))))),
% 3.45/0.98    introduced(choice_axiom,[])).
% 3.45/0.98  
% 3.45/0.98  fof(f37,plain,(
% 3.45/0.98    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ((! [X3] : (k1_funct_1(X0,X3) != sK1(X0,X1) | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(sK1(X0,X1),X1)) & ((k1_funct_1(X0,sK2(X0,X1)) = sK1(X0,X1) & r2_hidden(sK2(X0,X1),k1_relat_1(X0))) | r2_hidden(sK1(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (k1_funct_1(X0,X6) != X5 | ~r2_hidden(X6,k1_relat_1(X0)))) & ((k1_funct_1(X0,sK3(X0,X5)) = X5 & r2_hidden(sK3(X0,X5),k1_relat_1(X0))) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.45/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f33,f36,f35,f34])).
% 3.45/0.98  
% 3.45/0.98  fof(f54,plain,(
% 3.45/0.98    ( ! [X6,X0,X5,X1] : (r2_hidden(X5,X1) | k1_funct_1(X0,X6) != X5 | ~r2_hidden(X6,k1_relat_1(X0)) | k2_relat_1(X0) != X1 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.45/0.98    inference(cnf_transformation,[],[f37])).
% 3.45/0.98  
% 3.45/0.98  fof(f75,plain,(
% 3.45/0.98    ( ! [X6,X0,X1] : (r2_hidden(k1_funct_1(X0,X6),X1) | ~r2_hidden(X6,k1_relat_1(X0)) | k2_relat_1(X0) != X1 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.45/0.98    inference(equality_resolution,[],[f54])).
% 3.45/0.98  
% 3.45/0.98  fof(f76,plain,(
% 3.45/0.98    ( ! [X6,X0] : (r2_hidden(k1_funct_1(X0,X6),k2_relat_1(X0)) | ~r2_hidden(X6,k1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.45/0.98    inference(equality_resolution,[],[f75])).
% 3.45/0.98  
% 3.45/0.98  fof(f67,plain,(
% 3.45/0.98    v1_funct_1(sK6)),
% 3.45/0.98    inference(cnf_transformation,[],[f41])).
% 3.45/0.98  
% 3.45/0.98  fof(f5,axiom,(
% 3.45/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f16,plain,(
% 3.45/0.98    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 3.45/0.98    inference(ennf_transformation,[],[f5])).
% 3.45/0.98  
% 3.45/0.98  fof(f50,plain,(
% 3.45/0.98    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 3.45/0.98    inference(cnf_transformation,[],[f16])).
% 3.45/0.98  
% 3.45/0.98  fof(f6,axiom,(
% 3.45/0.98    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f51,plain,(
% 3.45/0.98    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 3.45/0.98    inference(cnf_transformation,[],[f6])).
% 3.45/0.98  
% 3.45/0.98  fof(f3,axiom,(
% 3.45/0.98    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.45/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.45/0.98  
% 3.45/0.98  fof(f48,plain,(
% 3.45/0.98    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.45/0.98    inference(cnf_transformation,[],[f3])).
% 3.45/0.98  
% 3.45/0.98  fof(f45,plain,(
% 3.45/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.45/0.98    inference(cnf_transformation,[],[f31])).
% 3.45/0.98  
% 3.45/0.98  fof(f74,plain,(
% 3.45/0.98    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.45/0.98    inference(equality_resolution,[],[f45])).
% 3.45/0.98  
% 3.45/0.98  cnf(c_24,plain,
% 3.45/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 3.45/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.45/0.98      | k1_relset_1(X1,X2,X0) = X1
% 3.45/0.98      | k1_xboole_0 = X2 ),
% 3.45/0.98      inference(cnf_transformation,[],[f61]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_29,negated_conjecture,
% 3.45/0.98      ( v1_funct_2(sK6,sK4,sK5) ),
% 3.45/0.98      inference(cnf_transformation,[],[f68]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_503,plain,
% 3.45/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.45/0.98      | k1_relset_1(X1,X2,X0) = X1
% 3.45/0.98      | sK6 != X0
% 3.45/0.98      | sK5 != X2
% 3.45/0.98      | sK4 != X1
% 3.45/0.98      | k1_xboole_0 = X2 ),
% 3.45/0.98      inference(resolution_lifted,[status(thm)],[c_24,c_29]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_504,plain,
% 3.45/0.98      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
% 3.45/0.98      | k1_relset_1(sK4,sK5,sK6) = sK4
% 3.45/0.98      | k1_xboole_0 = sK5 ),
% 3.45/0.98      inference(unflattening,[status(thm)],[c_503]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_28,negated_conjecture,
% 3.45/0.98      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) ),
% 3.45/0.98      inference(cnf_transformation,[],[f69]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_506,plain,
% 3.45/0.98      ( k1_relset_1(sK4,sK5,sK6) = sK4 | k1_xboole_0 = sK5 ),
% 3.45/0.98      inference(global_propositional_subsumption,[status(thm)],[c_504,c_28]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1116,plain,
% 3.45/0.98      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_17,plain,
% 3.45/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.45/0.98      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.45/0.98      inference(cnf_transformation,[],[f59]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1120,plain,
% 3.45/0.98      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.45/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2090,plain,
% 3.45/0.98      ( k1_relset_1(sK4,sK5,sK6) = k1_relat_1(sK6) ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_1116,c_1120]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2307,plain,
% 3.45/0.98      ( k1_relat_1(sK6) = sK4 | sK5 = k1_xboole_0 ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_506,c_2090]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1,plain,
% 3.45/0.98      ( r2_hidden(sK0(X0,X1),X0) | r1_tarski(X0,X1) ),
% 3.45/0.98      inference(cnf_transformation,[],[f43]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1129,plain,
% 3.45/0.98      ( r2_hidden(sK0(X0,X1),X0) = iProver_top
% 3.45/0.98      | r1_tarski(X0,X1) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_27,negated_conjecture,
% 3.45/0.98      ( ~ r2_hidden(X0,sK5) | r2_hidden(sK7(X0),sK4) ),
% 3.45/0.98      inference(cnf_transformation,[],[f70]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1117,plain,
% 3.45/0.98      ( r2_hidden(X0,sK5) != iProver_top
% 3.45/0.98      | r2_hidden(sK7(X0),sK4) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2,plain,
% 3.45/0.98      ( ~ r2_hidden(X0,X1) | r2_hidden(X0,X2) | ~ r1_tarski(X1,X2) ),
% 3.45/0.98      inference(cnf_transformation,[],[f42]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1128,plain,
% 3.45/0.98      ( r2_hidden(X0,X1) != iProver_top
% 3.45/0.98      | r2_hidden(X0,X2) = iProver_top
% 3.45/0.98      | r1_tarski(X1,X2) != iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2920,plain,
% 3.45/0.98      ( r2_hidden(X0,sK5) != iProver_top
% 3.45/0.98      | r2_hidden(sK7(X0),X1) = iProver_top
% 3.45/0.98      | r1_tarski(sK4,X1) != iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_1117,c_1128]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_26,negated_conjecture,
% 3.45/0.98      ( ~ r2_hidden(X0,sK5) | k1_funct_1(sK6,sK7(X0)) = X0 ),
% 3.45/0.98      inference(cnf_transformation,[],[f71]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1118,plain,
% 3.45/0.98      ( k1_funct_1(sK6,sK7(X0)) = X0 | r2_hidden(X0,sK5) != iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1547,plain,
% 3.45/0.98      ( k1_funct_1(sK6,sK7(sK0(sK5,X0))) = sK0(sK5,X0)
% 3.45/0.98      | r1_tarski(sK5,X0) = iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_1129,c_1118]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_18,plain,
% 3.45/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.45/0.98      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.45/0.98      inference(cnf_transformation,[],[f60]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1119,plain,
% 3.45/0.98      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.45/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2004,plain,
% 3.45/0.98      ( k2_relset_1(sK4,sK5,sK6) = k2_relat_1(sK6) ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_1116,c_1119]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_16,plain,
% 3.45/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.45/0.98      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
% 3.45/0.98      inference(cnf_transformation,[],[f58]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1121,plain,
% 3.45/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.45/0.98      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2883,plain,
% 3.45/0.98      ( m1_subset_1(k2_relat_1(sK6),k1_zfmisc_1(sK5)) = iProver_top
% 3.45/0.98      | m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_2004,c_1121]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_33,plain,
% 3.45/0.98      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_3513,plain,
% 3.45/0.98      ( m1_subset_1(k2_relat_1(sK6),k1_zfmisc_1(sK5)) = iProver_top ),
% 3.45/0.98      inference(global_propositional_subsumption,[status(thm)],[c_2883,c_33]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_7,plain,
% 3.45/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 3.45/0.98      | ~ r2_hidden(X2,X0)
% 3.45/0.98      | r2_hidden(X2,X1) ),
% 3.45/0.98      inference(cnf_transformation,[],[f49]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1124,plain,
% 3.45/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 3.45/0.98      | r2_hidden(X2,X0) != iProver_top
% 3.45/0.98      | r2_hidden(X2,X1) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_3518,plain,
% 3.45/0.98      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 3.45/0.98      | r2_hidden(X0,sK5) = iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_3513,c_1124]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_4100,plain,
% 3.45/0.98      ( r2_hidden(sK0(k2_relat_1(sK6),X0),sK5) = iProver_top
% 3.45/0.98      | r1_tarski(k2_relat_1(sK6),X0) = iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_1129,c_3518]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_0,plain,
% 3.45/0.98      ( ~ r2_hidden(sK0(X0,X1),X1) | r1_tarski(X0,X1) ),
% 3.45/0.98      inference(cnf_transformation,[],[f44]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1130,plain,
% 3.45/0.98      ( r2_hidden(sK0(X0,X1),X1) != iProver_top
% 3.45/0.98      | r1_tarski(X0,X1) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_4837,plain,
% 3.45/0.98      ( r1_tarski(k2_relat_1(sK6),sK5) = iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_4100,c_1130]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_3,plain,
% 3.45/0.98      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X1 = X0 ),
% 3.45/0.98      inference(cnf_transformation,[],[f47]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1127,plain,
% 3.45/0.98      ( X0 = X1
% 3.45/0.98      | r1_tarski(X1,X0) != iProver_top
% 3.45/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_5029,plain,
% 3.45/0.98      ( k2_relat_1(sK6) = sK5 | r1_tarski(sK5,k2_relat_1(sK6)) != iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_4837,c_1127]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_25,negated_conjecture,
% 3.45/0.98      ( k2_relset_1(sK4,sK5,sK6) != sK5 ),
% 3.45/0.98      inference(cnf_transformation,[],[f72]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2231,plain,
% 3.45/0.98      ( k2_relat_1(sK6) != sK5 ),
% 3.45/0.98      inference(demodulation,[status(thm)],[c_2004,c_25]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_5037,plain,
% 3.45/0.98      ( r1_tarski(sK5,k2_relat_1(sK6)) != iProver_top ),
% 3.45/0.98      inference(global_propositional_subsumption,[status(thm)],[c_5029,c_2231]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_5042,plain,
% 3.45/0.98      ( k1_funct_1(sK6,sK7(sK0(sK5,k2_relat_1(sK6)))) = sK0(sK5,k2_relat_1(sK6)) ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_1547,c_5037]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_13,plain,
% 3.45/0.98      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 3.45/0.98      | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
% 3.45/0.98      | ~ v1_funct_1(X1)
% 3.45/0.98      | ~ v1_relat_1(X1) ),
% 3.45/0.98      inference(cnf_transformation,[],[f76]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_30,negated_conjecture,
% 3.45/0.98      ( v1_funct_1(sK6) ),
% 3.45/0.98      inference(cnf_transformation,[],[f67]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_394,plain,
% 3.45/0.98      ( ~ r2_hidden(X0,k1_relat_1(X1))
% 3.45/0.98      | r2_hidden(k1_funct_1(X1,X0),k2_relat_1(X1))
% 3.45/0.98      | ~ v1_relat_1(X1)
% 3.45/0.98      | sK6 != X1 ),
% 3.45/0.98      inference(resolution_lifted,[status(thm)],[c_13,c_30]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_395,plain,
% 3.45/0.98      ( ~ r2_hidden(X0,k1_relat_1(sK6))
% 3.45/0.98      | r2_hidden(k1_funct_1(sK6,X0),k2_relat_1(sK6))
% 3.45/0.98      | ~ v1_relat_1(sK6) ),
% 3.45/0.98      inference(unflattening,[status(thm)],[c_394]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1111,plain,
% 3.45/0.98      ( r2_hidden(X0,k1_relat_1(sK6)) != iProver_top
% 3.45/0.98      | r2_hidden(k1_funct_1(sK6,X0),k2_relat_1(sK6)) = iProver_top
% 3.45/0.98      | v1_relat_1(sK6) != iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_395]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_5136,plain,
% 3.45/0.98      ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),k2_relat_1(sK6)) = iProver_top
% 3.45/0.98      | r2_hidden(sK7(sK0(sK5,k2_relat_1(sK6))),k1_relat_1(sK6)) != iProver_top
% 3.45/0.98      | v1_relat_1(sK6) != iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_5042,c_1111]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_8,plain,
% 3.45/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 3.45/0.98      inference(cnf_transformation,[],[f50]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1308,plain,
% 3.45/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.45/0.98      | v1_relat_1(X0)
% 3.45/0.98      | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_8]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1442,plain,
% 3.45/0.98      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
% 3.45/0.98      | ~ v1_relat_1(k2_zfmisc_1(sK4,sK5))
% 3.45/0.98      | v1_relat_1(sK6) ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_1308]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1443,plain,
% 3.45/0.98      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5))) != iProver_top
% 3.45/0.98      | v1_relat_1(k2_zfmisc_1(sK4,sK5)) != iProver_top
% 3.45/0.98      | v1_relat_1(sK6) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_1442]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_9,plain,
% 3.45/0.98      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 3.45/0.98      inference(cnf_transformation,[],[f51]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1457,plain,
% 3.45/0.98      ( v1_relat_1(k2_zfmisc_1(sK4,sK5)) ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_9]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1458,plain,
% 3.45/0.98      ( v1_relat_1(k2_zfmisc_1(sK4,sK5)) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_1457]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_5275,plain,
% 3.45/0.98      ( r2_hidden(sK7(sK0(sK5,k2_relat_1(sK6))),k1_relat_1(sK6)) != iProver_top
% 3.45/0.98      | r2_hidden(sK0(sK5,k2_relat_1(sK6)),k2_relat_1(sK6)) = iProver_top ),
% 3.45/0.98      inference(global_propositional_subsumption,
% 3.45/0.98                [status(thm)],
% 3.45/0.98                [c_5136,c_33,c_1443,c_1458]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_5276,plain,
% 3.45/0.98      ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),k2_relat_1(sK6)) = iProver_top
% 3.45/0.98      | r2_hidden(sK7(sK0(sK5,k2_relat_1(sK6))),k1_relat_1(sK6)) != iProver_top ),
% 3.45/0.98      inference(renaming,[status(thm)],[c_5275]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_5281,plain,
% 3.45/0.98      ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),k2_relat_1(sK6)) = iProver_top
% 3.45/0.98      | r2_hidden(sK0(sK5,k2_relat_1(sK6)),sK5) != iProver_top
% 3.45/0.98      | r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_2920,c_5276]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_5301,plain,
% 3.45/0.98      ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),sK5) != iProver_top
% 3.45/0.98      | r1_tarski(sK5,k2_relat_1(sK6)) = iProver_top
% 3.45/0.98      | r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_5281,c_1130]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_9610,plain,
% 3.45/0.98      ( r2_hidden(sK0(sK5,k2_relat_1(sK6)),sK5) != iProver_top
% 3.45/0.98      | r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
% 3.45/0.98      inference(global_propositional_subsumption,
% 3.45/0.98                [status(thm)],
% 3.45/0.98                [c_5301,c_2231,c_5029]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_9616,plain,
% 3.45/0.98      ( r1_tarski(sK5,k2_relat_1(sK6)) = iProver_top
% 3.45/0.98      | r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_1129,c_9610]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_9674,plain,
% 3.45/0.98      ( r1_tarski(sK4,k1_relat_1(sK6)) != iProver_top ),
% 3.45/0.98      inference(global_propositional_subsumption,
% 3.45/0.98                [status(thm)],
% 3.45/0.98                [c_9616,c_2231,c_5029]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_9679,plain,
% 3.45/0.98      ( sK5 = k1_xboole_0 | r1_tarski(sK4,sK4) != iProver_top ),
% 3.45/0.98      inference(superposition,[status(thm)],[c_2307,c_9674]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1324,plain,
% 3.45/0.98      ( ~ r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5)
% 3.45/0.98      | ~ r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6))
% 3.45/0.98      | k2_relset_1(sK4,sK5,sK6) = sK5 ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_3]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1325,plain,
% 3.45/0.98      ( k2_relset_1(sK4,sK5,sK6) = sK5
% 3.45/0.98      | r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5) != iProver_top
% 3.45/0.98      | r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6)) != iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_1324]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1349,plain,
% 3.45/0.98      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK4,sK5)))
% 3.45/0.98      | k2_relset_1(sK4,sK5,sK6) = k2_relat_1(sK6) ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_18]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_690,plain,
% 3.45/0.98      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X1) | X2 != X0 ),
% 3.45/0.98      theory(equality) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1466,plain,
% 3.45/0.98      ( ~ r1_tarski(X0,k2_relset_1(sK4,sK5,sK6))
% 3.45/0.98      | r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6))
% 3.45/0.98      | sK5 != X0 ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_690]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1467,plain,
% 3.45/0.98      ( sK5 != X0
% 3.45/0.98      | r1_tarski(X0,k2_relset_1(sK4,sK5,sK6)) != iProver_top
% 3.45/0.98      | r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6)) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_1466]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1469,plain,
% 3.45/0.98      ( sK5 != k1_xboole_0
% 3.45/0.98      | r1_tarski(sK5,k2_relset_1(sK4,sK5,sK6)) = iProver_top
% 3.45/0.98      | r1_tarski(k1_xboole_0,k2_relset_1(sK4,sK5,sK6)) != iProver_top ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_1467]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1375,plain,
% 3.45/0.98      ( ~ r1_tarski(X0,sK5)
% 3.45/0.98      | r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5)
% 3.45/0.98      | k2_relset_1(sK4,sK5,sK6) != X0 ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_690]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2035,plain,
% 3.45/0.98      ( r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5)
% 3.45/0.98      | ~ r1_tarski(k2_relat_1(sK6),sK5)
% 3.45/0.98      | k2_relset_1(sK4,sK5,sK6) != k2_relat_1(sK6) ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_1375]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2036,plain,
% 3.45/0.98      ( k2_relset_1(sK4,sK5,sK6) != k2_relat_1(sK6)
% 3.45/0.98      | r1_tarski(k2_relset_1(sK4,sK5,sK6),sK5) = iProver_top
% 3.45/0.98      | r1_tarski(k2_relat_1(sK6),sK5) != iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_2035]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_6,plain,
% 3.45/0.98      ( r1_tarski(k1_xboole_0,X0) ),
% 3.45/0.98      inference(cnf_transformation,[],[f48]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2550,plain,
% 3.45/0.98      ( r1_tarski(k1_xboole_0,k2_relset_1(sK4,sK5,sK6)) ),
% 3.45/0.98      inference(instantiation,[status(thm)],[c_6]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_2553,plain,
% 3.45/0.98      ( r1_tarski(k1_xboole_0,k2_relset_1(sK4,sK5,sK6)) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_2550]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_9762,plain,
% 3.45/0.98      ( r1_tarski(sK4,sK4) != iProver_top ),
% 3.45/0.98      inference(global_propositional_subsumption,
% 3.45/0.98                [status(thm)],
% 3.45/0.98                [c_9679,c_28,c_25,c_1325,c_1349,c_1469,c_2036,c_2553,c_4837]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_5,plain,( r1_tarski(X0,X0) ),inference(cnf_transformation,[],[f74]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_1126,plain,
% 3.45/0.98      ( r1_tarski(X0,X0) = iProver_top ),
% 3.45/0.98      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.45/0.98  
% 3.45/0.98  cnf(c_9767,plain,
% 3.45/0.98      ( $false ),
% 3.45/0.98      inference(forward_subsumption_resolution,[status(thm)],[c_9762,c_1126]) ).
% 3.45/0.98  
% 3.45/0.98  
% 3.45/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.45/0.98  
% 3.45/0.98  ------                               Statistics
% 3.45/0.98  
% 3.45/0.98  ------ General
% 3.45/0.98  
% 3.45/0.98  abstr_ref_over_cycles:                  0
% 3.45/0.98  abstr_ref_under_cycles:                 0
% 3.45/0.98  gc_basic_clause_elim:                   0
% 3.45/0.98  forced_gc_time:                         0
% 3.45/0.98  parsing_time:                           0.01
% 3.45/0.98  unif_index_cands_time:                  0.
% 3.45/0.98  unif_index_add_time:                    0.
% 3.45/0.98  orderings_time:                         0.
% 3.45/0.98  out_proof_time:                         0.013
% 3.45/0.98  total_time:                             0.276
% 3.45/0.98  num_of_symbols:                         53
% 3.45/0.98  num_of_terms:                           6022
% 3.45/0.98  
% 3.45/0.98  ------ Preprocessing
% 3.45/0.98  
% 3.45/0.98  num_of_splits:                          0
% 3.45/0.98  num_of_split_atoms:                     0
% 3.45/0.98  num_of_reused_defs:                     0
% 3.45/0.98  num_eq_ax_congr_red:                    28
% 3.45/0.98  num_of_sem_filtered_clauses:            1
% 3.45/0.98  num_of_subtypes:                        0
% 3.45/0.98  monotx_restored_types:                  0
% 3.45/0.98  sat_num_of_epr_types:                   0
% 3.45/0.98  sat_num_of_non_cyclic_types:            0
% 3.45/0.98  sat_guarded_non_collapsed_types:        0
% 3.45/0.98  num_pure_diseq_elim:                    0
% 3.45/0.98  simp_replaced_by:                       0
% 3.45/0.98  res_preprocessed:                       138
% 3.45/0.98  prep_upred:                             0
% 3.45/0.98  prep_unflattend:                        33
% 3.45/0.98  smt_new_axioms:                         0
% 3.45/0.98  pred_elim_cands:                        4
% 3.45/0.98  pred_elim:                              2
% 3.45/0.98  pred_elim_cl:                           5
% 3.45/0.98  pred_elim_cycles:                       4
% 3.45/0.98  merged_defs:                            0
% 3.45/0.98  merged_defs_ncl:                        0
% 3.45/0.98  bin_hyper_res:                          0
% 3.45/0.98  prep_cycles:                            4
% 3.45/0.98  pred_elim_time:                         0.004
% 3.45/0.98  splitting_time:                         0.
% 3.45/0.98  sem_filter_time:                        0.
% 3.45/0.98  monotx_time:                            0.
% 3.45/0.98  subtype_inf_time:                       0.
% 3.45/0.98  
% 3.45/0.98  ------ Problem properties
% 3.45/0.98  
% 3.45/0.98  clauses:                                25
% 3.45/0.98  conjectures:                            4
% 3.45/0.98  epr:                                    4
% 3.45/0.98  horn:                                   20
% 3.45/0.98  ground:                                 5
% 3.45/0.98  unary:                                  5
% 3.45/0.98  binary:                                 8
% 3.45/0.98  lits:                                   62
% 3.45/0.98  lits_eq:                                18
% 3.45/0.98  fd_pure:                                0
% 3.45/0.98  fd_pseudo:                              0
% 3.45/0.98  fd_cond:                                3
% 3.45/0.98  fd_pseudo_cond:                         1
% 3.45/0.98  ac_symbols:                             0
% 3.45/0.98  
% 3.45/0.98  ------ Propositional Solver
% 3.45/0.98  
% 3.45/0.98  prop_solver_calls:                      30
% 3.45/0.98  prop_fast_solver_calls:                 1077
% 3.45/0.98  smt_solver_calls:                       0
% 3.45/0.98  smt_fast_solver_calls:                  0
% 3.45/0.98  prop_num_of_clauses:                    3297
% 3.45/0.98  prop_preprocess_simplified:             6491
% 3.45/0.98  prop_fo_subsumed:                       24
% 3.45/0.98  prop_solver_time:                       0.
% 3.45/0.98  smt_solver_time:                        0.
% 3.45/0.98  smt_fast_solver_time:                   0.
% 3.45/0.98  prop_fast_solver_time:                  0.
% 3.45/0.98  prop_unsat_core_time:                   0.
% 3.45/0.98  
% 3.45/0.98  ------ QBF
% 3.45/0.98  
% 3.45/0.98  qbf_q_res:                              0
% 3.45/0.98  qbf_num_tautologies:                    0
% 3.45/0.98  qbf_prep_cycles:                        0
% 3.45/0.98  
% 3.45/0.98  ------ BMC1
% 3.45/0.98  
% 3.45/0.98  bmc1_current_bound:                     -1
% 3.45/0.98  bmc1_last_solved_bound:                 -1
% 3.45/0.98  bmc1_unsat_core_size:                   -1
% 3.45/0.98  bmc1_unsat_core_parents_size:           -1
% 3.45/0.98  bmc1_merge_next_fun:                    0
% 3.45/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.45/0.98  
% 3.45/0.98  ------ Instantiation
% 3.45/0.98  
% 3.45/0.98  inst_num_of_clauses:                    762
% 3.45/0.98  inst_num_in_passive:                    345
% 3.45/0.98  inst_num_in_active:                     367
% 3.45/0.98  inst_num_in_unprocessed:                50
% 3.45/0.98  inst_num_of_loops:                      530
% 3.45/0.98  inst_num_of_learning_restarts:          0
% 3.45/0.98  inst_num_moves_active_passive:          158
% 3.45/0.98  inst_lit_activity:                      0
% 3.45/0.98  inst_lit_activity_moves:                0
% 3.45/0.98  inst_num_tautologies:                   0
% 3.45/0.98  inst_num_prop_implied:                  0
% 3.45/0.98  inst_num_existing_simplified:           0
% 3.45/0.98  inst_num_eq_res_simplified:             0
% 3.45/0.98  inst_num_child_elim:                    0
% 3.45/0.98  inst_num_of_dismatching_blockings:      171
% 3.45/0.98  inst_num_of_non_proper_insts:           754
% 3.45/0.98  inst_num_of_duplicates:                 0
% 3.45/0.98  inst_inst_num_from_inst_to_res:         0
% 3.45/0.98  inst_dismatching_checking_time:         0.
% 3.45/0.98  
% 3.45/0.98  ------ Resolution
% 3.45/0.98  
% 3.45/0.98  res_num_of_clauses:                     0
% 3.45/0.98  res_num_in_passive:                     0
% 3.45/0.98  res_num_in_active:                      0
% 3.45/0.98  res_num_of_loops:                       142
% 3.45/0.98  res_forward_subset_subsumed:            77
% 3.45/0.98  res_backward_subset_subsumed:           0
% 3.45/0.98  res_forward_subsumed:                   0
% 3.45/0.98  res_backward_subsumed:                  0
% 3.45/0.98  res_forward_subsumption_resolution:     0
% 3.45/0.98  res_backward_subsumption_resolution:    0
% 3.45/0.98  res_clause_to_clause_subsumption:       1414
% 3.45/0.98  res_orphan_elimination:                 0
% 3.45/0.98  res_tautology_del:                      77
% 3.45/0.98  res_num_eq_res_simplified:              0
% 3.45/0.98  res_num_sel_changes:                    0
% 3.45/0.98  res_moves_from_active_to_pass:          0
% 3.45/0.98  
% 3.45/0.98  ------ Superposition
% 3.45/0.98  
% 3.45/0.98  sup_time_total:                         0.
% 3.45/0.98  sup_time_generating:                    0.
% 3.45/0.98  sup_time_sim_full:                      0.
% 3.45/0.98  sup_time_sim_immed:                     0.
% 3.45/0.98  
% 3.45/0.98  sup_num_of_clauses:                     401
% 3.45/0.98  sup_num_in_active:                      103
% 3.45/0.98  sup_num_in_passive:                     298
% 3.45/0.98  sup_num_of_loops:                       104
% 3.45/0.98  sup_fw_superposition:                   294
% 3.45/0.98  sup_bw_superposition:                   206
% 3.45/0.98  sup_immediate_simplified:               70
% 3.45/0.98  sup_given_eliminated:                   0
% 3.45/0.98  comparisons_done:                       0
% 3.45/0.98  comparisons_avoided:                    15
% 3.45/0.98  
% 3.45/0.98  ------ Simplifications
% 3.45/0.98  
% 3.45/0.98  
% 3.45/0.98  sim_fw_subset_subsumed:                 38
% 3.45/0.98  sim_bw_subset_subsumed:                 3
% 3.45/0.98  sim_fw_subsumed:                        18
% 3.45/0.98  sim_bw_subsumed:                        10
% 3.45/0.98  sim_fw_subsumption_res:                 1
% 3.45/0.98  sim_bw_subsumption_res:                 0
% 3.45/0.98  sim_tautology_del:                      2
% 3.45/0.98  sim_eq_tautology_del:                   35
% 3.45/0.98  sim_eq_res_simp:                        0
% 3.45/0.98  sim_fw_demodulated:                     0
% 3.45/0.98  sim_bw_demodulated:                     1
% 3.45/0.98  sim_light_normalised:                   2
% 3.45/0.98  sim_joinable_taut:                      0
% 3.45/0.98  sim_joinable_simp:                      0
% 3.45/0.98  sim_ac_normalised:                      0
% 3.45/0.98  sim_smt_subsumption:                    0
% 3.45/0.98  
%------------------------------------------------------------------------------
