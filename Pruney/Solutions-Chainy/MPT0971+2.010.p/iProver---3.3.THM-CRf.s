%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:01:02 EST 2020

% Result     : Theorem 2.45s
% Output     : CNFRefutation 2.45s
% Verified   : 
% Statistics : Number of formulae       :  113 ( 368 expanded)
%              Number of clauses        :   63 ( 117 expanded)
%              Number of leaves         :   17 (  81 expanded)
%              Depth                    :   17
%              Number of atoms          :  382 (1830 expanded)
%              Number of equality atoms :  161 ( 522 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
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

fof(f21,plain,(
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
    inference(ennf_transformation,[],[f9])).

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
    inference(flattening,[],[f21])).

fof(f31,plain,(
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
    inference(nnf_transformation,[],[f22])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f10,conjecture,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ~ ( ! [X4] :
              ~ ( k1_funct_1(X3,X4) = X2
                & r2_hidden(X4,X0) )
          & r2_hidden(X2,k2_relset_1(X0,X1,X3)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X3,X0,X1)
          & v1_funct_1(X3) )
       => ~ ( ! [X4] :
                ~ ( k1_funct_1(X3,X4) = X2
                  & r2_hidden(X4,X0) )
            & r2_hidden(X2,k2_relset_1(X0,X1,X3)) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f23,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X2
          | ~ r2_hidden(X4,X0) )
      & r2_hidden(X2,k2_relset_1(X0,X1,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f24,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4] :
          ( k1_funct_1(X3,X4) != X2
          | ~ r2_hidden(X4,X0) )
      & r2_hidden(X2,k2_relset_1(X0,X1,X3))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X3,X0,X1)
      & v1_funct_1(X3) ) ),
    inference(flattening,[],[f23])).

fof(f32,plain,
    ( ? [X0,X1,X2,X3] :
        ( ! [X4] :
            ( k1_funct_1(X3,X4) != X2
            | ~ r2_hidden(X4,X0) )
        & r2_hidden(X2,k2_relset_1(X0,X1,X3))
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
   => ( ! [X4] :
          ( k1_funct_1(sK6,X4) != sK5
          | ~ r2_hidden(X4,sK3) )
      & r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6))
      & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
      & v1_funct_2(sK6,sK3,sK4)
      & v1_funct_1(sK6) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ! [X4] :
        ( k1_funct_1(sK6,X4) != sK5
        | ~ r2_hidden(X4,sK3) )
    & r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6))
    & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    & v1_funct_2(sK6,sK3,sK4)
    & v1_funct_1(sK6) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6])],[f24,f32])).

fof(f54,plain,(
    v1_funct_2(sK6,sK3,sK4) ),
    inference(cnf_transformation,[],[f33])).

fof(f55,plain,(
    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f33])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f4,axiom,(
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

fof(f15,plain,(
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
    inference(ennf_transformation,[],[f4])).

fof(f16,plain,(
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
    inference(flattening,[],[f15])).

fof(f25,plain,(
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
    inference(nnf_transformation,[],[f16])).

fof(f26,plain,(
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
    inference(rectify,[],[f25])).

fof(f29,plain,(
    ! [X5,X0] :
      ( ? [X7] :
          ( k1_funct_1(X0,X7) = X5
          & r2_hidden(X7,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK2(X0,X5)) = X5
        & r2_hidden(sK2(X0,X5),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,(
    ! [X2,X1,X0] :
      ( ? [X4] :
          ( k1_funct_1(X0,X4) = X2
          & r2_hidden(X4,k1_relat_1(X0)) )
     => ( k1_funct_1(X0,sK1(X0,X1)) = X2
        & r2_hidden(sK1(X0,X1),k1_relat_1(X0)) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
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
              ( k1_funct_1(X0,X3) != sK0(X0,X1)
              | ~ r2_hidden(X3,k1_relat_1(X0)) )
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( ? [X4] :
              ( k1_funct_1(X0,X4) = sK0(X0,X1)
              & r2_hidden(X4,k1_relat_1(X0)) )
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( k2_relat_1(X0) = X1
            | ( ( ! [X3] :
                    ( k1_funct_1(X0,X3) != sK0(X0,X1)
                    | ~ r2_hidden(X3,k1_relat_1(X0)) )
                | ~ r2_hidden(sK0(X0,X1),X1) )
              & ( ( k1_funct_1(X0,sK1(X0,X1)) = sK0(X0,X1)
                  & r2_hidden(sK1(X0,X1),k1_relat_1(X0)) )
                | r2_hidden(sK0(X0,X1),X1) ) ) )
          & ( ! [X5] :
                ( ( r2_hidden(X5,X1)
                  | ! [X6] :
                      ( k1_funct_1(X0,X6) != X5
                      | ~ r2_hidden(X6,k1_relat_1(X0)) ) )
                & ( ( k1_funct_1(X0,sK2(X0,X5)) = X5
                    & r2_hidden(sK2(X0,X5),k1_relat_1(X0)) )
                  | ~ r2_hidden(X5,X1) ) )
            | k2_relat_1(X0) != X1 ) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f29,f28,f27])).

fof(f37,plain,(
    ! [X0,X5,X1] :
      ( r2_hidden(sK2(X0,X5),k1_relat_1(X0))
      | ~ r2_hidden(X5,X1)
      | k2_relat_1(X0) != X1
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f61,plain,(
    ! [X0,X5] :
      ( r2_hidden(sK2(X0,X5),k1_relat_1(X0))
      | ~ r2_hidden(X5,k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f37])).

fof(f53,plain,(
    v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f33])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f56,plain,(
    r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6)) ),
    inference(cnf_transformation,[],[f33])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f38,plain,(
    ! [X0,X5,X1] :
      ( k1_funct_1(X0,sK2(X0,X5)) = X5
      | ~ r2_hidden(X5,X1)
      | k2_relat_1(X0) != X1
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f60,plain,(
    ! [X0,X5] :
      ( k1_funct_1(X0,sK2(X0,X5)) = X5
      | ~ r2_hidden(X5,k2_relat_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(equality_resolution,[],[f38])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] : ~ r2_hidden(X1,X0) ) ),
    inference(unused_predicate_definition_removal,[],[f1])).

fof(f13,plain,(
    ! [X0] :
      ( ! [X1] : ~ r2_hidden(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f2,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

fof(f57,plain,(
    ! [X4] :
      ( k1_funct_1(sK6,X4) != sK5
      | ~ r2_hidden(X4,sK3) ) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_18,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_22,negated_conjecture,
    ( v1_funct_2(sK6,sK3,sK4) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_581,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK4 != X2
    | sK3 != X1
    | sK6 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_22])).

cnf(c_582,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    | k1_relset_1(sK3,sK4,sK6) = sK3
    | k1_xboole_0 = sK4 ),
    inference(unflattening,[status(thm)],[c_581])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_584,plain,
    ( k1_relset_1(sK3,sK4,sK6) = sK3
    | k1_xboole_0 = sK4 ),
    inference(global_propositional_subsumption,[status(thm)],[c_582,c_21])).

cnf(c_1165,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1169,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1552,plain,
    ( k1_relset_1(sK3,sK4,sK6) = k1_relat_1(sK6) ),
    inference(superposition,[status(thm)],[c_1165,c_1169])).

cnf(c_1749,plain,
    ( k1_relat_1(sK6) = sK3
    | sK4 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_584,c_1552])).

cnf(c_8,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | r2_hidden(sK2(X1,X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_23,negated_conjecture,
    ( v1_funct_1(sK6) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_282,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | r2_hidden(sK2(X1,X0),k1_relat_1(X1))
    | ~ v1_relat_1(X1)
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_23])).

cnf(c_283,plain,
    ( ~ r2_hidden(X0,k2_relat_1(sK6))
    | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6))
    | ~ v1_relat_1(sK6) ),
    inference(unflattening,[status(thm)],[c_282])).

cnf(c_1163,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_283])).

cnf(c_26,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_284,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_283])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_1308,plain,
    ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
    | v1_relat_1(sK6) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_1309,plain,
    ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) != iProver_top
    | v1_relat_1(sK6) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1308])).

cnf(c_1379,plain,
    ( r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1163,c_26,c_284,c_1309])).

cnf(c_1380,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top ),
    inference(renaming,[status(thm)],[c_1379])).

cnf(c_1886,plain,
    ( sK4 = k1_xboole_0
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(sK2(sK6,X0),sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1749,c_1380])).

cnf(c_20,negated_conjecture,
    ( r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_839,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_868,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_839])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1323,plain,
    ( m1_subset_1(k2_relset_1(sK3,sK4,sK6),k1_zfmisc_1(sK4))
    | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_1311,plain,
    ( ~ m1_subset_1(k2_relset_1(sK3,sK4,sK6),k1_zfmisc_1(X0))
    | r2_hidden(sK5,X0)
    | ~ r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_1387,plain,
    ( ~ m1_subset_1(k2_relset_1(sK3,sK4,sK6),k1_zfmisc_1(sK4))
    | ~ r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6))
    | r2_hidden(sK5,sK4) ),
    inference(instantiation,[status(thm)],[c_1311])).

cnf(c_840,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1605,plain,
    ( sK4 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK4 ),
    inference(instantiation,[status(thm)],[c_840])).

cnf(c_1606,plain,
    ( sK4 != k1_xboole_0
    | k1_xboole_0 = sK4
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1605])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_1168,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_1548,plain,
    ( k2_relset_1(sK3,sK4,sK6) = k2_relat_1(sK6) ),
    inference(superposition,[status(thm)],[c_1165,c_1168])).

cnf(c_1166,plain,
    ( r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_1690,plain,
    ( r2_hidden(sK5,k2_relat_1(sK6)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1548,c_1166])).

cnf(c_7,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | k1_funct_1(X1,sK2(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_297,plain,
    ( ~ r2_hidden(X0,k2_relat_1(X1))
    | ~ v1_relat_1(X1)
    | k1_funct_1(X1,sK2(X1,X0)) = X0
    | sK6 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_23])).

cnf(c_298,plain,
    ( ~ r2_hidden(X0,k2_relat_1(sK6))
    | ~ v1_relat_1(sK6)
    | k1_funct_1(sK6,sK2(sK6,X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_297])).

cnf(c_1162,plain,
    ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_298])).

cnf(c_299,plain,
    ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | v1_relat_1(sK6) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_298])).

cnf(c_1347,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | k1_funct_1(sK6,sK2(sK6,X0)) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1162,c_26,c_299,c_1309])).

cnf(c_1348,plain,
    ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
    | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
    inference(renaming,[status(thm)],[c_1347])).

cnf(c_1696,plain,
    ( k1_funct_1(sK6,sK2(sK6,sK5)) = sK5 ),
    inference(superposition,[status(thm)],[c_1690,c_1348])).

cnf(c_841,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1446,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(sK5,sK4)
    | X1 != sK4
    | X0 != sK5 ),
    inference(instantiation,[status(thm)],[c_841])).

cnf(c_2295,plain,
    ( r2_hidden(k1_funct_1(sK6,sK2(sK6,sK5)),X0)
    | ~ r2_hidden(sK5,sK4)
    | X0 != sK4
    | k1_funct_1(sK6,sK2(sK6,sK5)) != sK5 ),
    inference(instantiation,[status(thm)],[c_1446])).

cnf(c_2297,plain,
    ( r2_hidden(k1_funct_1(sK6,sK2(sK6,sK5)),k1_xboole_0)
    | ~ r2_hidden(sK5,sK4)
    | k1_funct_1(sK6,sK2(sK6,sK5)) != sK5
    | k1_xboole_0 != sK4 ),
    inference(instantiation,[status(thm)],[c_2295])).

cnf(c_0,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_1,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_271,plain,
    ( ~ r2_hidden(X0,X1)
    | k1_xboole_0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_1])).

cnf(c_272,plain,
    ( ~ r2_hidden(X0,k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_271])).

cnf(c_2682,plain,
    ( ~ r2_hidden(k1_funct_1(sK6,sK2(sK6,sK5)),k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_272])).

cnf(c_3240,plain,
    ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
    | r2_hidden(sK2(sK6,X0),sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1886,c_21,c_20,c_868,c_1323,c_1387,c_1606,c_1696,c_2297,c_2682])).

cnf(c_19,negated_conjecture,
    ( ~ r2_hidden(X0,sK3)
    | k1_funct_1(sK6,X0) != sK5 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1167,plain,
    ( k1_funct_1(sK6,X0) != sK5
    | r2_hidden(X0,sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_2200,plain,
    ( r2_hidden(sK2(sK6,sK5),sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1696,c_1167])).

cnf(c_3248,plain,
    ( r2_hidden(sK5,k2_relat_1(sK6)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3240,c_2200])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3248,c_1690])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 19:45:42 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 2.45/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.45/1.01  
% 2.45/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.45/1.01  
% 2.45/1.01  ------  iProver source info
% 2.45/1.01  
% 2.45/1.01  git: date: 2020-06-30 10:37:57 +0100
% 2.45/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.45/1.01  git: non_committed_changes: false
% 2.45/1.01  git: last_make_outside_of_git: false
% 2.45/1.01  
% 2.45/1.01  ------ 
% 2.45/1.01  
% 2.45/1.01  ------ Input Options
% 2.45/1.01  
% 2.45/1.01  --out_options                           all
% 2.45/1.01  --tptp_safe_out                         true
% 2.45/1.01  --problem_path                          ""
% 2.45/1.01  --include_path                          ""
% 2.45/1.01  --clausifier                            res/vclausify_rel
% 2.45/1.01  --clausifier_options                    --mode clausify
% 2.45/1.01  --stdin                                 false
% 2.45/1.01  --stats_out                             all
% 2.45/1.01  
% 2.45/1.01  ------ General Options
% 2.45/1.01  
% 2.45/1.01  --fof                                   false
% 2.45/1.01  --time_out_real                         305.
% 2.45/1.01  --time_out_virtual                      -1.
% 2.45/1.01  --symbol_type_check                     false
% 2.45/1.01  --clausify_out                          false
% 2.45/1.01  --sig_cnt_out                           false
% 2.45/1.01  --trig_cnt_out                          false
% 2.45/1.01  --trig_cnt_out_tolerance                1.
% 2.45/1.01  --trig_cnt_out_sk_spl                   false
% 2.45/1.01  --abstr_cl_out                          false
% 2.45/1.01  
% 2.45/1.01  ------ Global Options
% 2.45/1.01  
% 2.45/1.01  --schedule                              default
% 2.45/1.01  --add_important_lit                     false
% 2.45/1.01  --prop_solver_per_cl                    1000
% 2.45/1.01  --min_unsat_core                        false
% 2.45/1.01  --soft_assumptions                      false
% 2.45/1.01  --soft_lemma_size                       3
% 2.45/1.01  --prop_impl_unit_size                   0
% 2.45/1.01  --prop_impl_unit                        []
% 2.45/1.01  --share_sel_clauses                     true
% 2.45/1.01  --reset_solvers                         false
% 2.45/1.01  --bc_imp_inh                            [conj_cone]
% 2.45/1.01  --conj_cone_tolerance                   3.
% 2.45/1.01  --extra_neg_conj                        none
% 2.45/1.01  --large_theory_mode                     true
% 2.45/1.01  --prolific_symb_bound                   200
% 2.45/1.01  --lt_threshold                          2000
% 2.45/1.01  --clause_weak_htbl                      true
% 2.45/1.01  --gc_record_bc_elim                     false
% 2.45/1.01  
% 2.45/1.01  ------ Preprocessing Options
% 2.45/1.01  
% 2.45/1.01  --preprocessing_flag                    true
% 2.45/1.01  --time_out_prep_mult                    0.1
% 2.45/1.01  --splitting_mode                        input
% 2.45/1.01  --splitting_grd                         true
% 2.45/1.01  --splitting_cvd                         false
% 2.45/1.01  --splitting_cvd_svl                     false
% 2.45/1.01  --splitting_nvd                         32
% 2.45/1.01  --sub_typing                            true
% 2.45/1.01  --prep_gs_sim                           true
% 2.45/1.01  --prep_unflatten                        true
% 2.45/1.01  --prep_res_sim                          true
% 2.45/1.01  --prep_upred                            true
% 2.45/1.01  --prep_sem_filter                       exhaustive
% 2.45/1.01  --prep_sem_filter_out                   false
% 2.45/1.01  --pred_elim                             true
% 2.45/1.01  --res_sim_input                         true
% 2.45/1.01  --eq_ax_congr_red                       true
% 2.45/1.01  --pure_diseq_elim                       true
% 2.45/1.01  --brand_transform                       false
% 2.45/1.01  --non_eq_to_eq                          false
% 2.45/1.01  --prep_def_merge                        true
% 2.45/1.01  --prep_def_merge_prop_impl              false
% 2.45/1.01  --prep_def_merge_mbd                    true
% 2.45/1.01  --prep_def_merge_tr_red                 false
% 2.45/1.01  --prep_def_merge_tr_cl                  false
% 2.45/1.01  --smt_preprocessing                     true
% 2.45/1.01  --smt_ac_axioms                         fast
% 2.45/1.01  --preprocessed_out                      false
% 2.45/1.01  --preprocessed_stats                    false
% 2.45/1.01  
% 2.45/1.01  ------ Abstraction refinement Options
% 2.45/1.01  
% 2.45/1.01  --abstr_ref                             []
% 2.45/1.01  --abstr_ref_prep                        false
% 2.45/1.01  --abstr_ref_until_sat                   false
% 2.45/1.01  --abstr_ref_sig_restrict                funpre
% 2.45/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.45/1.01  --abstr_ref_under                       []
% 2.45/1.01  
% 2.45/1.01  ------ SAT Options
% 2.45/1.01  
% 2.45/1.01  --sat_mode                              false
% 2.45/1.01  --sat_fm_restart_options                ""
% 2.45/1.01  --sat_gr_def                            false
% 2.45/1.01  --sat_epr_types                         true
% 2.45/1.01  --sat_non_cyclic_types                  false
% 2.45/1.01  --sat_finite_models                     false
% 2.45/1.01  --sat_fm_lemmas                         false
% 2.45/1.01  --sat_fm_prep                           false
% 2.45/1.01  --sat_fm_uc_incr                        true
% 2.45/1.01  --sat_out_model                         small
% 2.45/1.01  --sat_out_clauses                       false
% 2.45/1.01  
% 2.45/1.01  ------ QBF Options
% 2.45/1.01  
% 2.45/1.01  --qbf_mode                              false
% 2.45/1.01  --qbf_elim_univ                         false
% 2.45/1.01  --qbf_dom_inst                          none
% 2.45/1.01  --qbf_dom_pre_inst                      false
% 2.45/1.01  --qbf_sk_in                             false
% 2.45/1.01  --qbf_pred_elim                         true
% 2.45/1.01  --qbf_split                             512
% 2.45/1.01  
% 2.45/1.01  ------ BMC1 Options
% 2.45/1.01  
% 2.45/1.01  --bmc1_incremental                      false
% 2.45/1.01  --bmc1_axioms                           reachable_all
% 2.45/1.01  --bmc1_min_bound                        0
% 2.45/1.01  --bmc1_max_bound                        -1
% 2.45/1.01  --bmc1_max_bound_default                -1
% 2.45/1.01  --bmc1_symbol_reachability              true
% 2.45/1.01  --bmc1_property_lemmas                  false
% 2.45/1.01  --bmc1_k_induction                      false
% 2.45/1.01  --bmc1_non_equiv_states                 false
% 2.45/1.01  --bmc1_deadlock                         false
% 2.45/1.01  --bmc1_ucm                              false
% 2.45/1.01  --bmc1_add_unsat_core                   none
% 2.45/1.01  --bmc1_unsat_core_children              false
% 2.45/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.45/1.01  --bmc1_out_stat                         full
% 2.45/1.01  --bmc1_ground_init                      false
% 2.45/1.01  --bmc1_pre_inst_next_state              false
% 2.45/1.01  --bmc1_pre_inst_state                   false
% 2.45/1.01  --bmc1_pre_inst_reach_state             false
% 2.45/1.01  --bmc1_out_unsat_core                   false
% 2.45/1.01  --bmc1_aig_witness_out                  false
% 2.45/1.01  --bmc1_verbose                          false
% 2.45/1.01  --bmc1_dump_clauses_tptp                false
% 2.45/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.45/1.01  --bmc1_dump_file                        -
% 2.45/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.45/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.45/1.01  --bmc1_ucm_extend_mode                  1
% 2.45/1.01  --bmc1_ucm_init_mode                    2
% 2.45/1.01  --bmc1_ucm_cone_mode                    none
% 2.45/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.45/1.01  --bmc1_ucm_relax_model                  4
% 2.45/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.45/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.45/1.01  --bmc1_ucm_layered_model                none
% 2.45/1.01  --bmc1_ucm_max_lemma_size               10
% 2.45/1.01  
% 2.45/1.01  ------ AIG Options
% 2.45/1.01  
% 2.45/1.01  --aig_mode                              false
% 2.45/1.01  
% 2.45/1.01  ------ Instantiation Options
% 2.45/1.01  
% 2.45/1.01  --instantiation_flag                    true
% 2.45/1.01  --inst_sos_flag                         false
% 2.45/1.01  --inst_sos_phase                        true
% 2.45/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.45/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.45/1.01  --inst_lit_sel_side                     num_symb
% 2.45/1.01  --inst_solver_per_active                1400
% 2.45/1.01  --inst_solver_calls_frac                1.
% 2.45/1.01  --inst_passive_queue_type               priority_queues
% 2.45/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.45/1.01  --inst_passive_queues_freq              [25;2]
% 2.45/1.01  --inst_dismatching                      true
% 2.45/1.01  --inst_eager_unprocessed_to_passive     true
% 2.45/1.01  --inst_prop_sim_given                   true
% 2.45/1.01  --inst_prop_sim_new                     false
% 2.45/1.01  --inst_subs_new                         false
% 2.45/1.01  --inst_eq_res_simp                      false
% 2.45/1.01  --inst_subs_given                       false
% 2.45/1.01  --inst_orphan_elimination               true
% 2.45/1.01  --inst_learning_loop_flag               true
% 2.45/1.01  --inst_learning_start                   3000
% 2.45/1.01  --inst_learning_factor                  2
% 2.45/1.01  --inst_start_prop_sim_after_learn       3
% 2.45/1.01  --inst_sel_renew                        solver
% 2.45/1.01  --inst_lit_activity_flag                true
% 2.45/1.01  --inst_restr_to_given                   false
% 2.45/1.01  --inst_activity_threshold               500
% 2.45/1.01  --inst_out_proof                        true
% 2.45/1.01  
% 2.45/1.01  ------ Resolution Options
% 2.45/1.01  
% 2.45/1.01  --resolution_flag                       true
% 2.45/1.01  --res_lit_sel                           adaptive
% 2.45/1.01  --res_lit_sel_side                      none
% 2.45/1.01  --res_ordering                          kbo
% 2.45/1.01  --res_to_prop_solver                    active
% 2.45/1.01  --res_prop_simpl_new                    false
% 2.45/1.01  --res_prop_simpl_given                  true
% 2.45/1.01  --res_passive_queue_type                priority_queues
% 2.45/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.45/1.01  --res_passive_queues_freq               [15;5]
% 2.45/1.01  --res_forward_subs                      full
% 2.45/1.01  --res_backward_subs                     full
% 2.45/1.01  --res_forward_subs_resolution           true
% 2.45/1.01  --res_backward_subs_resolution          true
% 2.45/1.01  --res_orphan_elimination                true
% 2.45/1.01  --res_time_limit                        2.
% 2.45/1.01  --res_out_proof                         true
% 2.45/1.01  
% 2.45/1.01  ------ Superposition Options
% 2.45/1.01  
% 2.45/1.01  --superposition_flag                    true
% 2.45/1.01  --sup_passive_queue_type                priority_queues
% 2.45/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.45/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.45/1.01  --demod_completeness_check              fast
% 2.45/1.01  --demod_use_ground                      true
% 2.45/1.01  --sup_to_prop_solver                    passive
% 2.45/1.01  --sup_prop_simpl_new                    true
% 2.45/1.01  --sup_prop_simpl_given                  true
% 2.45/1.01  --sup_fun_splitting                     false
% 2.45/1.01  --sup_smt_interval                      50000
% 2.45/1.01  
% 2.45/1.01  ------ Superposition Simplification Setup
% 2.45/1.01  
% 2.45/1.01  --sup_indices_passive                   []
% 2.45/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.45/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.45/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.45/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.45/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.45/1.01  --sup_full_bw                           [BwDemod]
% 2.45/1.01  --sup_immed_triv                        [TrivRules]
% 2.45/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.45/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.45/1.01  --sup_immed_bw_main                     []
% 2.45/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.45/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.45/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.45/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.45/1.01  
% 2.45/1.01  ------ Combination Options
% 2.45/1.01  
% 2.45/1.01  --comb_res_mult                         3
% 2.45/1.01  --comb_sup_mult                         2
% 2.45/1.01  --comb_inst_mult                        10
% 2.45/1.01  
% 2.45/1.01  ------ Debug Options
% 2.45/1.01  
% 2.45/1.01  --dbg_backtrace                         false
% 2.45/1.01  --dbg_dump_prop_clauses                 false
% 2.45/1.01  --dbg_dump_prop_clauses_file            -
% 2.45/1.01  --dbg_out_stat                          false
% 2.45/1.01  ------ Parsing...
% 2.45/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.45/1.01  
% 2.45/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 2.45/1.01  
% 2.45/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.45/1.01  
% 2.45/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.45/1.01  ------ Proving...
% 2.45/1.01  ------ Problem Properties 
% 2.45/1.01  
% 2.45/1.01  
% 2.45/1.01  clauses                                 18
% 2.45/1.01  conjectures                             3
% 2.45/1.01  EPR                                     1
% 2.45/1.01  Horn                                    14
% 2.45/1.01  unary                                   3
% 2.45/1.01  binary                                  6
% 2.45/1.01  lits                                    47
% 2.45/1.01  lits eq                                 16
% 2.45/1.01  fd_pure                                 0
% 2.45/1.01  fd_pseudo                               0
% 2.45/1.01  fd_cond                                 3
% 2.45/1.01  fd_pseudo_cond                          0
% 2.45/1.01  AC symbols                              0
% 2.45/1.01  
% 2.45/1.01  ------ Schedule dynamic 5 is on 
% 2.45/1.01  
% 2.45/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.45/1.01  
% 2.45/1.01  
% 2.45/1.01  ------ 
% 2.45/1.01  Current options:
% 2.45/1.01  ------ 
% 2.45/1.01  
% 2.45/1.01  ------ Input Options
% 2.45/1.01  
% 2.45/1.01  --out_options                           all
% 2.45/1.01  --tptp_safe_out                         true
% 2.45/1.01  --problem_path                          ""
% 2.45/1.01  --include_path                          ""
% 2.45/1.01  --clausifier                            res/vclausify_rel
% 2.45/1.01  --clausifier_options                    --mode clausify
% 2.45/1.01  --stdin                                 false
% 2.45/1.01  --stats_out                             all
% 2.45/1.01  
% 2.45/1.01  ------ General Options
% 2.45/1.01  
% 2.45/1.01  --fof                                   false
% 2.45/1.01  --time_out_real                         305.
% 2.45/1.01  --time_out_virtual                      -1.
% 2.45/1.01  --symbol_type_check                     false
% 2.45/1.01  --clausify_out                          false
% 2.45/1.01  --sig_cnt_out                           false
% 2.45/1.01  --trig_cnt_out                          false
% 2.45/1.01  --trig_cnt_out_tolerance                1.
% 2.45/1.01  --trig_cnt_out_sk_spl                   false
% 2.45/1.01  --abstr_cl_out                          false
% 2.45/1.01  
% 2.45/1.01  ------ Global Options
% 2.45/1.01  
% 2.45/1.01  --schedule                              default
% 2.45/1.01  --add_important_lit                     false
% 2.45/1.01  --prop_solver_per_cl                    1000
% 2.45/1.01  --min_unsat_core                        false
% 2.45/1.01  --soft_assumptions                      false
% 2.45/1.01  --soft_lemma_size                       3
% 2.45/1.01  --prop_impl_unit_size                   0
% 2.45/1.01  --prop_impl_unit                        []
% 2.45/1.01  --share_sel_clauses                     true
% 2.45/1.01  --reset_solvers                         false
% 2.45/1.01  --bc_imp_inh                            [conj_cone]
% 2.45/1.01  --conj_cone_tolerance                   3.
% 2.45/1.01  --extra_neg_conj                        none
% 2.45/1.01  --large_theory_mode                     true
% 2.45/1.01  --prolific_symb_bound                   200
% 2.45/1.01  --lt_threshold                          2000
% 2.45/1.01  --clause_weak_htbl                      true
% 2.45/1.01  --gc_record_bc_elim                     false
% 2.45/1.01  
% 2.45/1.01  ------ Preprocessing Options
% 2.45/1.01  
% 2.45/1.01  --preprocessing_flag                    true
% 2.45/1.01  --time_out_prep_mult                    0.1
% 2.45/1.01  --splitting_mode                        input
% 2.45/1.01  --splitting_grd                         true
% 2.45/1.01  --splitting_cvd                         false
% 2.45/1.01  --splitting_cvd_svl                     false
% 2.45/1.01  --splitting_nvd                         32
% 2.45/1.01  --sub_typing                            true
% 2.45/1.01  --prep_gs_sim                           true
% 2.45/1.01  --prep_unflatten                        true
% 2.45/1.01  --prep_res_sim                          true
% 2.45/1.01  --prep_upred                            true
% 2.45/1.01  --prep_sem_filter                       exhaustive
% 2.45/1.01  --prep_sem_filter_out                   false
% 2.45/1.01  --pred_elim                             true
% 2.45/1.01  --res_sim_input                         true
% 2.45/1.01  --eq_ax_congr_red                       true
% 2.45/1.01  --pure_diseq_elim                       true
% 2.45/1.01  --brand_transform                       false
% 2.45/1.01  --non_eq_to_eq                          false
% 2.45/1.01  --prep_def_merge                        true
% 2.45/1.01  --prep_def_merge_prop_impl              false
% 2.45/1.01  --prep_def_merge_mbd                    true
% 2.45/1.01  --prep_def_merge_tr_red                 false
% 2.45/1.01  --prep_def_merge_tr_cl                  false
% 2.45/1.01  --smt_preprocessing                     true
% 2.45/1.01  --smt_ac_axioms                         fast
% 2.45/1.01  --preprocessed_out                      false
% 2.45/1.01  --preprocessed_stats                    false
% 2.45/1.01  
% 2.45/1.01  ------ Abstraction refinement Options
% 2.45/1.01  
% 2.45/1.01  --abstr_ref                             []
% 2.45/1.01  --abstr_ref_prep                        false
% 2.45/1.01  --abstr_ref_until_sat                   false
% 2.45/1.01  --abstr_ref_sig_restrict                funpre
% 2.45/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.45/1.01  --abstr_ref_under                       []
% 2.45/1.01  
% 2.45/1.01  ------ SAT Options
% 2.45/1.01  
% 2.45/1.01  --sat_mode                              false
% 2.45/1.01  --sat_fm_restart_options                ""
% 2.45/1.01  --sat_gr_def                            false
% 2.45/1.01  --sat_epr_types                         true
% 2.45/1.01  --sat_non_cyclic_types                  false
% 2.45/1.01  --sat_finite_models                     false
% 2.45/1.01  --sat_fm_lemmas                         false
% 2.45/1.01  --sat_fm_prep                           false
% 2.45/1.01  --sat_fm_uc_incr                        true
% 2.45/1.01  --sat_out_model                         small
% 2.45/1.01  --sat_out_clauses                       false
% 2.45/1.01  
% 2.45/1.01  ------ QBF Options
% 2.45/1.01  
% 2.45/1.01  --qbf_mode                              false
% 2.45/1.01  --qbf_elim_univ                         false
% 2.45/1.01  --qbf_dom_inst                          none
% 2.45/1.01  --qbf_dom_pre_inst                      false
% 2.45/1.01  --qbf_sk_in                             false
% 2.45/1.01  --qbf_pred_elim                         true
% 2.45/1.01  --qbf_split                             512
% 2.45/1.01  
% 2.45/1.01  ------ BMC1 Options
% 2.45/1.01  
% 2.45/1.01  --bmc1_incremental                      false
% 2.45/1.01  --bmc1_axioms                           reachable_all
% 2.45/1.01  --bmc1_min_bound                        0
% 2.45/1.01  --bmc1_max_bound                        -1
% 2.45/1.01  --bmc1_max_bound_default                -1
% 2.45/1.01  --bmc1_symbol_reachability              true
% 2.45/1.01  --bmc1_property_lemmas                  false
% 2.45/1.01  --bmc1_k_induction                      false
% 2.45/1.01  --bmc1_non_equiv_states                 false
% 2.45/1.01  --bmc1_deadlock                         false
% 2.45/1.01  --bmc1_ucm                              false
% 2.45/1.01  --bmc1_add_unsat_core                   none
% 2.45/1.01  --bmc1_unsat_core_children              false
% 2.45/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.45/1.01  --bmc1_out_stat                         full
% 2.45/1.01  --bmc1_ground_init                      false
% 2.45/1.01  --bmc1_pre_inst_next_state              false
% 2.45/1.01  --bmc1_pre_inst_state                   false
% 2.45/1.01  --bmc1_pre_inst_reach_state             false
% 2.45/1.01  --bmc1_out_unsat_core                   false
% 2.45/1.01  --bmc1_aig_witness_out                  false
% 2.45/1.01  --bmc1_verbose                          false
% 2.45/1.01  --bmc1_dump_clauses_tptp                false
% 2.45/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.45/1.01  --bmc1_dump_file                        -
% 2.45/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.45/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.45/1.01  --bmc1_ucm_extend_mode                  1
% 2.45/1.01  --bmc1_ucm_init_mode                    2
% 2.45/1.01  --bmc1_ucm_cone_mode                    none
% 2.45/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.45/1.01  --bmc1_ucm_relax_model                  4
% 2.45/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.45/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.45/1.01  --bmc1_ucm_layered_model                none
% 2.45/1.01  --bmc1_ucm_max_lemma_size               10
% 2.45/1.01  
% 2.45/1.01  ------ AIG Options
% 2.45/1.01  
% 2.45/1.01  --aig_mode                              false
% 2.45/1.01  
% 2.45/1.01  ------ Instantiation Options
% 2.45/1.01  
% 2.45/1.01  --instantiation_flag                    true
% 2.45/1.01  --inst_sos_flag                         false
% 2.45/1.01  --inst_sos_phase                        true
% 2.45/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.45/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.45/1.01  --inst_lit_sel_side                     none
% 2.45/1.01  --inst_solver_per_active                1400
% 2.45/1.01  --inst_solver_calls_frac                1.
% 2.45/1.01  --inst_passive_queue_type               priority_queues
% 2.45/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.45/1.01  --inst_passive_queues_freq              [25;2]
% 2.45/1.01  --inst_dismatching                      true
% 2.45/1.01  --inst_eager_unprocessed_to_passive     true
% 2.45/1.01  --inst_prop_sim_given                   true
% 2.45/1.01  --inst_prop_sim_new                     false
% 2.45/1.01  --inst_subs_new                         false
% 2.45/1.01  --inst_eq_res_simp                      false
% 2.45/1.01  --inst_subs_given                       false
% 2.45/1.01  --inst_orphan_elimination               true
% 2.45/1.01  --inst_learning_loop_flag               true
% 2.45/1.01  --inst_learning_start                   3000
% 2.45/1.01  --inst_learning_factor                  2
% 2.45/1.01  --inst_start_prop_sim_after_learn       3
% 2.45/1.01  --inst_sel_renew                        solver
% 2.45/1.01  --inst_lit_activity_flag                true
% 2.45/1.01  --inst_restr_to_given                   false
% 2.45/1.01  --inst_activity_threshold               500
% 2.45/1.01  --inst_out_proof                        true
% 2.45/1.01  
% 2.45/1.01  ------ Resolution Options
% 2.45/1.01  
% 2.45/1.01  --resolution_flag                       false
% 2.45/1.01  --res_lit_sel                           adaptive
% 2.45/1.01  --res_lit_sel_side                      none
% 2.45/1.01  --res_ordering                          kbo
% 2.45/1.01  --res_to_prop_solver                    active
% 2.45/1.01  --res_prop_simpl_new                    false
% 2.45/1.01  --res_prop_simpl_given                  true
% 2.45/1.01  --res_passive_queue_type                priority_queues
% 2.45/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.45/1.01  --res_passive_queues_freq               [15;5]
% 2.45/1.01  --res_forward_subs                      full
% 2.45/1.01  --res_backward_subs                     full
% 2.45/1.01  --res_forward_subs_resolution           true
% 2.45/1.01  --res_backward_subs_resolution          true
% 2.45/1.01  --res_orphan_elimination                true
% 2.45/1.01  --res_time_limit                        2.
% 2.45/1.01  --res_out_proof                         true
% 2.45/1.01  
% 2.45/1.01  ------ Superposition Options
% 2.45/1.01  
% 2.45/1.01  --superposition_flag                    true
% 2.45/1.01  --sup_passive_queue_type                priority_queues
% 2.45/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.45/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.45/1.01  --demod_completeness_check              fast
% 2.45/1.01  --demod_use_ground                      true
% 2.45/1.01  --sup_to_prop_solver                    passive
% 2.45/1.01  --sup_prop_simpl_new                    true
% 2.45/1.01  --sup_prop_simpl_given                  true
% 2.45/1.01  --sup_fun_splitting                     false
% 2.45/1.01  --sup_smt_interval                      50000
% 2.45/1.01  
% 2.45/1.01  ------ Superposition Simplification Setup
% 2.45/1.01  
% 2.45/1.01  --sup_indices_passive                   []
% 2.45/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.45/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.45/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.45/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.45/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.45/1.01  --sup_full_bw                           [BwDemod]
% 2.45/1.01  --sup_immed_triv                        [TrivRules]
% 2.45/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.45/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.45/1.01  --sup_immed_bw_main                     []
% 2.45/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.45/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.45/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.45/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.45/1.01  
% 2.45/1.01  ------ Combination Options
% 2.45/1.01  
% 2.45/1.01  --comb_res_mult                         3
% 2.45/1.01  --comb_sup_mult                         2
% 2.45/1.01  --comb_inst_mult                        10
% 2.45/1.01  
% 2.45/1.01  ------ Debug Options
% 2.45/1.01  
% 2.45/1.01  --dbg_backtrace                         false
% 2.45/1.01  --dbg_dump_prop_clauses                 false
% 2.45/1.01  --dbg_dump_prop_clauses_file            -
% 2.45/1.01  --dbg_out_stat                          false
% 2.45/1.01  
% 2.45/1.01  
% 2.45/1.01  
% 2.45/1.01  
% 2.45/1.01  ------ Proving...
% 2.45/1.01  
% 2.45/1.01  
% 2.45/1.01  % SZS status Theorem for theBenchmark.p
% 2.45/1.01  
% 2.45/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 2.45/1.01  
% 2.45/1.01  fof(f9,axiom,(
% 2.45/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f21,plain,(
% 2.45/1.01    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.45/1.01    inference(ennf_transformation,[],[f9])).
% 2.45/1.01  
% 2.45/1.01  fof(f22,plain,(
% 2.45/1.01    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.45/1.01    inference(flattening,[],[f21])).
% 2.45/1.01  
% 2.45/1.01  fof(f31,plain,(
% 2.45/1.01    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.45/1.01    inference(nnf_transformation,[],[f22])).
% 2.45/1.01  
% 2.45/1.01  fof(f47,plain,(
% 2.45/1.01    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.45/1.01    inference(cnf_transformation,[],[f31])).
% 2.45/1.01  
% 2.45/1.01  fof(f10,conjecture,(
% 2.45/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ~(! [X4] : ~(k1_funct_1(X3,X4) = X2 & r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))))),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f11,negated_conjecture,(
% 2.45/1.01    ~! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ~(! [X4] : ~(k1_funct_1(X3,X4) = X2 & r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))))),
% 2.45/1.01    inference(negated_conjecture,[],[f10])).
% 2.45/1.01  
% 2.45/1.01  fof(f23,plain,(
% 2.45/1.01    ? [X0,X1,X2,X3] : ((! [X4] : (k1_funct_1(X3,X4) != X2 | ~r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)))),
% 2.45/1.01    inference(ennf_transformation,[],[f11])).
% 2.45/1.01  
% 2.45/1.01  fof(f24,plain,(
% 2.45/1.01    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X2 | ~r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3))),
% 2.45/1.01    inference(flattening,[],[f23])).
% 2.45/1.01  
% 2.45/1.01  fof(f32,plain,(
% 2.45/1.01    ? [X0,X1,X2,X3] : (! [X4] : (k1_funct_1(X3,X4) != X2 | ~r2_hidden(X4,X0)) & r2_hidden(X2,k2_relset_1(X0,X1,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => (! [X4] : (k1_funct_1(sK6,X4) != sK5 | ~r2_hidden(X4,sK3)) & r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6)) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) & v1_funct_2(sK6,sK3,sK4) & v1_funct_1(sK6))),
% 2.45/1.01    introduced(choice_axiom,[])).
% 2.45/1.01  
% 2.45/1.01  fof(f33,plain,(
% 2.45/1.01    ! [X4] : (k1_funct_1(sK6,X4) != sK5 | ~r2_hidden(X4,sK3)) & r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6)) & m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) & v1_funct_2(sK6,sK3,sK4) & v1_funct_1(sK6)),
% 2.45/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK3,sK4,sK5,sK6])],[f24,f32])).
% 2.45/1.01  
% 2.45/1.01  fof(f54,plain,(
% 2.45/1.01    v1_funct_2(sK6,sK3,sK4)),
% 2.45/1.01    inference(cnf_transformation,[],[f33])).
% 2.45/1.01  
% 2.45/1.01  fof(f55,plain,(
% 2.45/1.01    m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))),
% 2.45/1.01    inference(cnf_transformation,[],[f33])).
% 2.45/1.01  
% 2.45/1.01  fof(f7,axiom,(
% 2.45/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f19,plain,(
% 2.45/1.01    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.45/1.01    inference(ennf_transformation,[],[f7])).
% 2.45/1.01  
% 2.45/1.01  fof(f45,plain,(
% 2.45/1.01    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.45/1.01    inference(cnf_transformation,[],[f19])).
% 2.45/1.01  
% 2.45/1.01  fof(f4,axiom,(
% 2.45/1.01    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))))),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f15,plain,(
% 2.45/1.01    ! [X0] : (! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 2.45/1.01    inference(ennf_transformation,[],[f4])).
% 2.45/1.01  
% 2.45/1.01  fof(f16,plain,(
% 2.45/1.01    ! [X0] : (! [X1] : (k2_relat_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> ? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.45/1.01    inference(flattening,[],[f15])).
% 2.45/1.01  
% 2.45/1.01  fof(f25,plain,(
% 2.45/1.01    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0)))) & (? [X3] : (k1_funct_1(X0,X3) = X2 & r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.45/1.01    inference(nnf_transformation,[],[f16])).
% 2.45/1.01  
% 2.45/1.01  fof(f26,plain,(
% 2.45/1.01    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(X2,X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (k1_funct_1(X0,X6) != X5 | ~r2_hidden(X6,k1_relat_1(X0)))) & (? [X7] : (k1_funct_1(X0,X7) = X5 & r2_hidden(X7,k1_relat_1(X0))) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.45/1.01    inference(rectify,[],[f25])).
% 2.45/1.01  
% 2.45/1.01  fof(f29,plain,(
% 2.45/1.01    ! [X5,X0] : (? [X7] : (k1_funct_1(X0,X7) = X5 & r2_hidden(X7,k1_relat_1(X0))) => (k1_funct_1(X0,sK2(X0,X5)) = X5 & r2_hidden(sK2(X0,X5),k1_relat_1(X0))))),
% 2.45/1.01    introduced(choice_axiom,[])).
% 2.45/1.01  
% 2.45/1.01  fof(f28,plain,(
% 2.45/1.01    ( ! [X2] : (! [X1,X0] : (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) => (k1_funct_1(X0,sK1(X0,X1)) = X2 & r2_hidden(sK1(X0,X1),k1_relat_1(X0))))) )),
% 2.45/1.01    introduced(choice_axiom,[])).
% 2.45/1.01  
% 2.45/1.01  fof(f27,plain,(
% 2.45/1.01    ! [X1,X0] : (? [X2] : ((! [X3] : (k1_funct_1(X0,X3) != X2 | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(X2,X1)) & (? [X4] : (k1_funct_1(X0,X4) = X2 & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(X2,X1))) => ((! [X3] : (k1_funct_1(X0,X3) != sK0(X0,X1) | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(sK0(X0,X1),X1)) & (? [X4] : (k1_funct_1(X0,X4) = sK0(X0,X1) & r2_hidden(X4,k1_relat_1(X0))) | r2_hidden(sK0(X0,X1),X1))))),
% 2.45/1.01    introduced(choice_axiom,[])).
% 2.45/1.01  
% 2.45/1.01  fof(f30,plain,(
% 2.45/1.01    ! [X0] : (! [X1] : ((k2_relat_1(X0) = X1 | ((! [X3] : (k1_funct_1(X0,X3) != sK0(X0,X1) | ~r2_hidden(X3,k1_relat_1(X0))) | ~r2_hidden(sK0(X0,X1),X1)) & ((k1_funct_1(X0,sK1(X0,X1)) = sK0(X0,X1) & r2_hidden(sK1(X0,X1),k1_relat_1(X0))) | r2_hidden(sK0(X0,X1),X1)))) & (! [X5] : ((r2_hidden(X5,X1) | ! [X6] : (k1_funct_1(X0,X6) != X5 | ~r2_hidden(X6,k1_relat_1(X0)))) & ((k1_funct_1(X0,sK2(X0,X5)) = X5 & r2_hidden(sK2(X0,X5),k1_relat_1(X0))) | ~r2_hidden(X5,X1))) | k2_relat_1(X0) != X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 2.45/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f29,f28,f27])).
% 2.45/1.01  
% 2.45/1.01  fof(f37,plain,(
% 2.45/1.01    ( ! [X0,X5,X1] : (r2_hidden(sK2(X0,X5),k1_relat_1(X0)) | ~r2_hidden(X5,X1) | k2_relat_1(X0) != X1 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.45/1.01    inference(cnf_transformation,[],[f30])).
% 2.45/1.01  
% 2.45/1.01  fof(f61,plain,(
% 2.45/1.01    ( ! [X0,X5] : (r2_hidden(sK2(X0,X5),k1_relat_1(X0)) | ~r2_hidden(X5,k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.45/1.01    inference(equality_resolution,[],[f37])).
% 2.45/1.01  
% 2.45/1.01  fof(f53,plain,(
% 2.45/1.01    v1_funct_1(sK6)),
% 2.45/1.01    inference(cnf_transformation,[],[f33])).
% 2.45/1.01  
% 2.45/1.01  fof(f5,axiom,(
% 2.45/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f17,plain,(
% 2.45/1.01    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.45/1.01    inference(ennf_transformation,[],[f5])).
% 2.45/1.01  
% 2.45/1.01  fof(f43,plain,(
% 2.45/1.01    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.45/1.01    inference(cnf_transformation,[],[f17])).
% 2.45/1.01  
% 2.45/1.01  fof(f56,plain,(
% 2.45/1.01    r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6))),
% 2.45/1.01    inference(cnf_transformation,[],[f33])).
% 2.45/1.01  
% 2.45/1.01  fof(f6,axiom,(
% 2.45/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)))),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f18,plain,(
% 2.45/1.01    ! [X0,X1,X2] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.45/1.01    inference(ennf_transformation,[],[f6])).
% 2.45/1.01  
% 2.45/1.01  fof(f44,plain,(
% 2.45/1.01    ( ! [X2,X0,X1] : (m1_subset_1(k2_relset_1(X0,X1,X2),k1_zfmisc_1(X1)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.45/1.01    inference(cnf_transformation,[],[f18])).
% 2.45/1.01  
% 2.45/1.01  fof(f3,axiom,(
% 2.45/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f14,plain,(
% 2.45/1.01    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 2.45/1.01    inference(ennf_transformation,[],[f3])).
% 2.45/1.01  
% 2.45/1.01  fof(f36,plain,(
% 2.45/1.01    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 2.45/1.01    inference(cnf_transformation,[],[f14])).
% 2.45/1.01  
% 2.45/1.01  fof(f8,axiom,(
% 2.45/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f20,plain,(
% 2.45/1.01    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.45/1.01    inference(ennf_transformation,[],[f8])).
% 2.45/1.01  
% 2.45/1.01  fof(f46,plain,(
% 2.45/1.01    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.45/1.01    inference(cnf_transformation,[],[f20])).
% 2.45/1.01  
% 2.45/1.01  fof(f38,plain,(
% 2.45/1.01    ( ! [X0,X5,X1] : (k1_funct_1(X0,sK2(X0,X5)) = X5 | ~r2_hidden(X5,X1) | k2_relat_1(X0) != X1 | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.45/1.01    inference(cnf_transformation,[],[f30])).
% 2.45/1.01  
% 2.45/1.01  fof(f60,plain,(
% 2.45/1.01    ( ! [X0,X5] : (k1_funct_1(X0,sK2(X0,X5)) = X5 | ~r2_hidden(X5,k2_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 2.45/1.01    inference(equality_resolution,[],[f38])).
% 2.45/1.01  
% 2.45/1.01  fof(f1,axiom,(
% 2.45/1.01    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f12,plain,(
% 2.45/1.01    ! [X0] : (v1_xboole_0(X0) => ! [X1] : ~r2_hidden(X1,X0))),
% 2.45/1.01    inference(unused_predicate_definition_removal,[],[f1])).
% 2.45/1.01  
% 2.45/1.01  fof(f13,plain,(
% 2.45/1.01    ! [X0] : (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0))),
% 2.45/1.01    inference(ennf_transformation,[],[f12])).
% 2.45/1.01  
% 2.45/1.01  fof(f34,plain,(
% 2.45/1.01    ( ! [X0,X1] : (~r2_hidden(X1,X0) | ~v1_xboole_0(X0)) )),
% 2.45/1.01    inference(cnf_transformation,[],[f13])).
% 2.45/1.01  
% 2.45/1.01  fof(f2,axiom,(
% 2.45/1.01    v1_xboole_0(k1_xboole_0)),
% 2.45/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.45/1.01  
% 2.45/1.01  fof(f35,plain,(
% 2.45/1.01    v1_xboole_0(k1_xboole_0)),
% 2.45/1.01    inference(cnf_transformation,[],[f2])).
% 2.45/1.01  
% 2.45/1.01  fof(f57,plain,(
% 2.45/1.01    ( ! [X4] : (k1_funct_1(sK6,X4) != sK5 | ~r2_hidden(X4,sK3)) )),
% 2.45/1.01    inference(cnf_transformation,[],[f33])).
% 2.45/1.01  
% 2.45/1.01  cnf(c_18,plain,
% 2.45/1.01      ( ~ v1_funct_2(X0,X1,X2)
% 2.45/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.45/1.01      | k1_relset_1(X1,X2,X0) = X1
% 2.45/1.01      | k1_xboole_0 = X2 ),
% 2.45/1.01      inference(cnf_transformation,[],[f47]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_22,negated_conjecture,
% 2.45/1.01      ( v1_funct_2(sK6,sK3,sK4) ),
% 2.45/1.01      inference(cnf_transformation,[],[f54]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_581,plain,
% 2.45/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.45/1.01      | k1_relset_1(X1,X2,X0) = X1
% 2.45/1.01      | sK4 != X2
% 2.45/1.01      | sK3 != X1
% 2.45/1.01      | sK6 != X0
% 2.45/1.01      | k1_xboole_0 = X2 ),
% 2.45/1.01      inference(resolution_lifted,[status(thm)],[c_18,c_22]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_582,plain,
% 2.45/1.01      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
% 2.45/1.01      | k1_relset_1(sK3,sK4,sK6) = sK3
% 2.45/1.01      | k1_xboole_0 = sK4 ),
% 2.45/1.01      inference(unflattening,[status(thm)],[c_581]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_21,negated_conjecture,
% 2.45/1.01      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
% 2.45/1.01      inference(cnf_transformation,[],[f55]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_584,plain,
% 2.45/1.01      ( k1_relset_1(sK3,sK4,sK6) = sK3 | k1_xboole_0 = sK4 ),
% 2.45/1.01      inference(global_propositional_subsumption,
% 2.45/1.01                [status(thm)],
% 2.45/1.01                [c_582,c_21]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1165,plain,
% 2.45/1.01      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_11,plain,
% 2.45/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.45/1.01      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.45/1.01      inference(cnf_transformation,[],[f45]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1169,plain,
% 2.45/1.01      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.45/1.01      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1552,plain,
% 2.45/1.01      ( k1_relset_1(sK3,sK4,sK6) = k1_relat_1(sK6) ),
% 2.45/1.01      inference(superposition,[status(thm)],[c_1165,c_1169]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1749,plain,
% 2.45/1.01      ( k1_relat_1(sK6) = sK3 | sK4 = k1_xboole_0 ),
% 2.45/1.01      inference(superposition,[status(thm)],[c_584,c_1552]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_8,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 2.45/1.01      | r2_hidden(sK2(X1,X0),k1_relat_1(X1))
% 2.45/1.01      | ~ v1_relat_1(X1)
% 2.45/1.01      | ~ v1_funct_1(X1) ),
% 2.45/1.01      inference(cnf_transformation,[],[f61]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_23,negated_conjecture,
% 2.45/1.01      ( v1_funct_1(sK6) ),
% 2.45/1.01      inference(cnf_transformation,[],[f53]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_282,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 2.45/1.01      | r2_hidden(sK2(X1,X0),k1_relat_1(X1))
% 2.45/1.01      | ~ v1_relat_1(X1)
% 2.45/1.01      | sK6 != X1 ),
% 2.45/1.01      inference(resolution_lifted,[status(thm)],[c_8,c_23]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_283,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,k2_relat_1(sK6))
% 2.45/1.01      | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6))
% 2.45/1.01      | ~ v1_relat_1(sK6) ),
% 2.45/1.01      inference(unflattening,[status(thm)],[c_282]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1163,plain,
% 2.45/1.01      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.45/1.01      | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
% 2.45/1.01      | v1_relat_1(sK6) != iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_283]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_26,plain,
% 2.45/1.01      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) = iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_284,plain,
% 2.45/1.01      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.45/1.01      | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
% 2.45/1.01      | v1_relat_1(sK6) != iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_283]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_9,plain,
% 2.45/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.45/1.01      | v1_relat_1(X0) ),
% 2.45/1.01      inference(cnf_transformation,[],[f43]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1308,plain,
% 2.45/1.01      ( ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4)))
% 2.45/1.01      | v1_relat_1(sK6) ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_9]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1309,plain,
% 2.45/1.01      ( m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) != iProver_top
% 2.45/1.01      | v1_relat_1(sK6) = iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_1308]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1379,plain,
% 2.45/1.01      ( r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top
% 2.45/1.01      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
% 2.45/1.01      inference(global_propositional_subsumption,
% 2.45/1.01                [status(thm)],
% 2.45/1.01                [c_1163,c_26,c_284,c_1309]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1380,plain,
% 2.45/1.01      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.45/1.01      | r2_hidden(sK2(sK6,X0),k1_relat_1(sK6)) = iProver_top ),
% 2.45/1.01      inference(renaming,[status(thm)],[c_1379]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1886,plain,
% 2.45/1.01      ( sK4 = k1_xboole_0
% 2.45/1.01      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.45/1.01      | r2_hidden(sK2(sK6,X0),sK3) = iProver_top ),
% 2.45/1.01      inference(superposition,[status(thm)],[c_1749,c_1380]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_20,negated_conjecture,
% 2.45/1.01      ( r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6)) ),
% 2.45/1.01      inference(cnf_transformation,[],[f56]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_839,plain,( X0 = X0 ),theory(equality) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_868,plain,
% 2.45/1.01      ( k1_xboole_0 = k1_xboole_0 ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_839]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_10,plain,
% 2.45/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.45/1.01      | m1_subset_1(k2_relset_1(X1,X2,X0),k1_zfmisc_1(X2)) ),
% 2.45/1.01      inference(cnf_transformation,[],[f44]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1323,plain,
% 2.45/1.01      ( m1_subset_1(k2_relset_1(sK3,sK4,sK6),k1_zfmisc_1(sK4))
% 2.45/1.01      | ~ m1_subset_1(sK6,k1_zfmisc_1(k2_zfmisc_1(sK3,sK4))) ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_10]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_2,plain,
% 2.45/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.45/1.01      | ~ r2_hidden(X2,X0)
% 2.45/1.01      | r2_hidden(X2,X1) ),
% 2.45/1.01      inference(cnf_transformation,[],[f36]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1311,plain,
% 2.45/1.01      ( ~ m1_subset_1(k2_relset_1(sK3,sK4,sK6),k1_zfmisc_1(X0))
% 2.45/1.01      | r2_hidden(sK5,X0)
% 2.45/1.01      | ~ r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6)) ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_2]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1387,plain,
% 2.45/1.01      ( ~ m1_subset_1(k2_relset_1(sK3,sK4,sK6),k1_zfmisc_1(sK4))
% 2.45/1.01      | ~ r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6))
% 2.45/1.01      | r2_hidden(sK5,sK4) ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_1311]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_840,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1605,plain,
% 2.45/1.01      ( sK4 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK4 ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_840]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1606,plain,
% 2.45/1.01      ( sK4 != k1_xboole_0
% 2.45/1.01      | k1_xboole_0 = sK4
% 2.45/1.01      | k1_xboole_0 != k1_xboole_0 ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_1605]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_12,plain,
% 2.45/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.45/1.01      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.45/1.01      inference(cnf_transformation,[],[f46]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1168,plain,
% 2.45/1.01      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.45/1.01      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1548,plain,
% 2.45/1.01      ( k2_relset_1(sK3,sK4,sK6) = k2_relat_1(sK6) ),
% 2.45/1.01      inference(superposition,[status(thm)],[c_1165,c_1168]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1166,plain,
% 2.45/1.01      ( r2_hidden(sK5,k2_relset_1(sK3,sK4,sK6)) = iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1690,plain,
% 2.45/1.01      ( r2_hidden(sK5,k2_relat_1(sK6)) = iProver_top ),
% 2.45/1.01      inference(demodulation,[status(thm)],[c_1548,c_1166]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_7,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 2.45/1.01      | ~ v1_relat_1(X1)
% 2.45/1.01      | ~ v1_funct_1(X1)
% 2.45/1.01      | k1_funct_1(X1,sK2(X1,X0)) = X0 ),
% 2.45/1.01      inference(cnf_transformation,[],[f60]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_297,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,k2_relat_1(X1))
% 2.45/1.01      | ~ v1_relat_1(X1)
% 2.45/1.01      | k1_funct_1(X1,sK2(X1,X0)) = X0
% 2.45/1.01      | sK6 != X1 ),
% 2.45/1.01      inference(resolution_lifted,[status(thm)],[c_7,c_23]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_298,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,k2_relat_1(sK6))
% 2.45/1.01      | ~ v1_relat_1(sK6)
% 2.45/1.01      | k1_funct_1(sK6,sK2(sK6,X0)) = X0 ),
% 2.45/1.01      inference(unflattening,[status(thm)],[c_297]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1162,plain,
% 2.45/1.01      ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
% 2.45/1.01      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.45/1.01      | v1_relat_1(sK6) != iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_298]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_299,plain,
% 2.45/1.01      ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
% 2.45/1.01      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.45/1.01      | v1_relat_1(sK6) != iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_298]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1347,plain,
% 2.45/1.01      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.45/1.01      | k1_funct_1(sK6,sK2(sK6,X0)) = X0 ),
% 2.45/1.01      inference(global_propositional_subsumption,
% 2.45/1.01                [status(thm)],
% 2.45/1.01                [c_1162,c_26,c_299,c_1309]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1348,plain,
% 2.45/1.01      ( k1_funct_1(sK6,sK2(sK6,X0)) = X0
% 2.45/1.01      | r2_hidden(X0,k2_relat_1(sK6)) != iProver_top ),
% 2.45/1.01      inference(renaming,[status(thm)],[c_1347]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1696,plain,
% 2.45/1.01      ( k1_funct_1(sK6,sK2(sK6,sK5)) = sK5 ),
% 2.45/1.01      inference(superposition,[status(thm)],[c_1690,c_1348]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_841,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.45/1.01      theory(equality) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1446,plain,
% 2.45/1.01      ( r2_hidden(X0,X1) | ~ r2_hidden(sK5,sK4) | X1 != sK4 | X0 != sK5 ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_841]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_2295,plain,
% 2.45/1.01      ( r2_hidden(k1_funct_1(sK6,sK2(sK6,sK5)),X0)
% 2.45/1.01      | ~ r2_hidden(sK5,sK4)
% 2.45/1.01      | X0 != sK4
% 2.45/1.01      | k1_funct_1(sK6,sK2(sK6,sK5)) != sK5 ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_1446]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_2297,plain,
% 2.45/1.01      ( r2_hidden(k1_funct_1(sK6,sK2(sK6,sK5)),k1_xboole_0)
% 2.45/1.01      | ~ r2_hidden(sK5,sK4)
% 2.45/1.01      | k1_funct_1(sK6,sK2(sK6,sK5)) != sK5
% 2.45/1.01      | k1_xboole_0 != sK4 ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_2295]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_0,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,X1) | ~ v1_xboole_0(X1) ),
% 2.45/1.01      inference(cnf_transformation,[],[f34]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1,plain,
% 2.45/1.01      ( v1_xboole_0(k1_xboole_0) ),
% 2.45/1.01      inference(cnf_transformation,[],[f35]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_271,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,X1) | k1_xboole_0 != X1 ),
% 2.45/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_1]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_272,plain,
% 2.45/1.01      ( ~ r2_hidden(X0,k1_xboole_0) ),
% 2.45/1.01      inference(unflattening,[status(thm)],[c_271]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_2682,plain,
% 2.45/1.01      ( ~ r2_hidden(k1_funct_1(sK6,sK2(sK6,sK5)),k1_xboole_0) ),
% 2.45/1.01      inference(instantiation,[status(thm)],[c_272]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_3240,plain,
% 2.45/1.01      ( r2_hidden(X0,k2_relat_1(sK6)) != iProver_top
% 2.45/1.01      | r2_hidden(sK2(sK6,X0),sK3) = iProver_top ),
% 2.45/1.01      inference(global_propositional_subsumption,
% 2.45/1.01                [status(thm)],
% 2.45/1.01                [c_1886,c_21,c_20,c_868,c_1323,c_1387,c_1606,c_1696,
% 2.45/1.01                 c_2297,c_2682]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_19,negated_conjecture,
% 2.45/1.01      ( ~ r2_hidden(X0,sK3) | k1_funct_1(sK6,X0) != sK5 ),
% 2.45/1.01      inference(cnf_transformation,[],[f57]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_1167,plain,
% 2.45/1.01      ( k1_funct_1(sK6,X0) != sK5 | r2_hidden(X0,sK3) != iProver_top ),
% 2.45/1.01      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_2200,plain,
% 2.45/1.01      ( r2_hidden(sK2(sK6,sK5),sK3) != iProver_top ),
% 2.45/1.01      inference(superposition,[status(thm)],[c_1696,c_1167]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(c_3248,plain,
% 2.45/1.01      ( r2_hidden(sK5,k2_relat_1(sK6)) != iProver_top ),
% 2.45/1.01      inference(superposition,[status(thm)],[c_3240,c_2200]) ).
% 2.45/1.01  
% 2.45/1.01  cnf(contradiction,plain,
% 2.45/1.01      ( $false ),
% 2.45/1.01      inference(minisat,[status(thm)],[c_3248,c_1690]) ).
% 2.45/1.01  
% 2.45/1.01  
% 2.45/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 2.45/1.01  
% 2.45/1.01  ------                               Statistics
% 2.45/1.01  
% 2.45/1.01  ------ General
% 2.45/1.01  
% 2.45/1.01  abstr_ref_over_cycles:                  0
% 2.45/1.01  abstr_ref_under_cycles:                 0
% 2.45/1.01  gc_basic_clause_elim:                   0
% 2.45/1.01  forced_gc_time:                         0
% 2.45/1.01  parsing_time:                           0.011
% 2.45/1.01  unif_index_cands_time:                  0.
% 2.45/1.01  unif_index_add_time:                    0.
% 2.45/1.01  orderings_time:                         0.
% 2.45/1.01  out_proof_time:                         0.009
% 2.45/1.01  total_time:                             0.18
% 2.45/1.01  num_of_symbols:                         52
% 2.45/1.01  num_of_terms:                           2490
% 2.45/1.01  
% 2.45/1.01  ------ Preprocessing
% 2.45/1.01  
% 2.45/1.01  num_of_splits:                          0
% 2.45/1.01  num_of_split_atoms:                     0
% 2.45/1.01  num_of_reused_defs:                     0
% 2.45/1.01  num_eq_ax_congr_red:                    17
% 2.45/1.01  num_of_sem_filtered_clauses:            1
% 2.45/1.01  num_of_subtypes:                        0
% 2.45/1.01  monotx_restored_types:                  0
% 2.45/1.01  sat_num_of_epr_types:                   0
% 2.45/1.01  sat_num_of_non_cyclic_types:            0
% 2.45/1.01  sat_guarded_non_collapsed_types:        0
% 2.45/1.01  num_pure_diseq_elim:                    0
% 2.45/1.01  simp_replaced_by:                       0
% 2.45/1.01  res_preprocessed:                       109
% 2.45/1.01  prep_upred:                             0
% 2.45/1.01  prep_unflattend:                        46
% 2.45/1.01  smt_new_axioms:                         0
% 2.45/1.01  pred_elim_cands:                        3
% 2.45/1.01  pred_elim:                              3
% 2.45/1.01  pred_elim_cl:                           6
% 2.45/1.01  pred_elim_cycles:                       6
% 2.45/1.01  merged_defs:                            0
% 2.45/1.01  merged_defs_ncl:                        0
% 2.45/1.01  bin_hyper_res:                          0
% 2.45/1.01  prep_cycles:                            4
% 2.45/1.01  pred_elim_time:                         0.013
% 2.45/1.01  splitting_time:                         0.
% 2.45/1.01  sem_filter_time:                        0.
% 2.45/1.01  monotx_time:                            0.001
% 2.45/1.01  subtype_inf_time:                       0.
% 2.45/1.01  
% 2.45/1.01  ------ Problem properties
% 2.45/1.01  
% 2.45/1.01  clauses:                                18
% 2.45/1.01  conjectures:                            3
% 2.45/1.01  epr:                                    1
% 2.45/1.01  horn:                                   14
% 2.45/1.01  ground:                                 5
% 2.45/1.01  unary:                                  3
% 2.45/1.01  binary:                                 6
% 2.45/1.01  lits:                                   47
% 2.45/1.01  lits_eq:                                16
% 2.45/1.01  fd_pure:                                0
% 2.45/1.01  fd_pseudo:                              0
% 2.45/1.01  fd_cond:                                3
% 2.45/1.01  fd_pseudo_cond:                         0
% 2.45/1.01  ac_symbols:                             0
% 2.45/1.01  
% 2.45/1.01  ------ Propositional Solver
% 2.45/1.01  
% 2.45/1.01  prop_solver_calls:                      27
% 2.45/1.01  prop_fast_solver_calls:                 791
% 2.45/1.01  smt_solver_calls:                       0
% 2.45/1.01  smt_fast_solver_calls:                  0
% 2.45/1.01  prop_num_of_clauses:                    1098
% 2.45/1.01  prop_preprocess_simplified:             3949
% 2.45/1.01  prop_fo_subsumed:                       10
% 2.45/1.01  prop_solver_time:                       0.
% 2.45/1.01  smt_solver_time:                        0.
% 2.45/1.01  smt_fast_solver_time:                   0.
% 2.45/1.01  prop_fast_solver_time:                  0.
% 2.45/1.01  prop_unsat_core_time:                   0.
% 2.45/1.01  
% 2.45/1.01  ------ QBF
% 2.45/1.01  
% 2.45/1.01  qbf_q_res:                              0
% 2.45/1.01  qbf_num_tautologies:                    0
% 2.45/1.01  qbf_prep_cycles:                        0
% 2.45/1.01  
% 2.45/1.01  ------ BMC1
% 2.45/1.01  
% 2.45/1.01  bmc1_current_bound:                     -1
% 2.45/1.01  bmc1_last_solved_bound:                 -1
% 2.45/1.01  bmc1_unsat_core_size:                   -1
% 2.45/1.01  bmc1_unsat_core_parents_size:           -1
% 2.45/1.01  bmc1_merge_next_fun:                    0
% 2.45/1.01  bmc1_unsat_core_clauses_time:           0.
% 2.45/1.01  
% 2.45/1.01  ------ Instantiation
% 2.45/1.01  
% 2.45/1.01  inst_num_of_clauses:                    323
% 2.45/1.01  inst_num_in_passive:                    96
% 2.45/1.01  inst_num_in_active:                     186
% 2.45/1.01  inst_num_in_unprocessed:                41
% 2.45/1.01  inst_num_of_loops:                      240
% 2.45/1.01  inst_num_of_learning_restarts:          0
% 2.45/1.01  inst_num_moves_active_passive:          50
% 2.45/1.01  inst_lit_activity:                      0
% 2.45/1.01  inst_lit_activity_moves:                0
% 2.45/1.01  inst_num_tautologies:                   0
% 2.45/1.01  inst_num_prop_implied:                  0
% 2.45/1.01  inst_num_existing_simplified:           0
% 2.45/1.01  inst_num_eq_res_simplified:             0
% 2.45/1.01  inst_num_child_elim:                    0
% 2.45/1.01  inst_num_of_dismatching_blockings:      21
% 2.45/1.01  inst_num_of_non_proper_insts:           250
% 2.45/1.01  inst_num_of_duplicates:                 0
% 2.45/1.01  inst_inst_num_from_inst_to_res:         0
% 2.45/1.01  inst_dismatching_checking_time:         0.
% 2.45/1.01  
% 2.45/1.01  ------ Resolution
% 2.45/1.01  
% 2.45/1.01  res_num_of_clauses:                     0
% 2.45/1.01  res_num_in_passive:                     0
% 2.45/1.01  res_num_in_active:                      0
% 2.45/1.01  res_num_of_loops:                       113
% 2.45/1.01  res_forward_subset_subsumed:            15
% 2.45/1.01  res_backward_subset_subsumed:           0
% 2.45/1.01  res_forward_subsumed:                   0
% 2.45/1.01  res_backward_subsumed:                  0
% 2.45/1.01  res_forward_subsumption_resolution:     0
% 2.45/1.01  res_backward_subsumption_resolution:    0
% 2.45/1.01  res_clause_to_clause_subsumption:       170
% 2.45/1.01  res_orphan_elimination:                 0
% 2.45/1.01  res_tautology_del:                      28
% 2.45/1.01  res_num_eq_res_simplified:              0
% 2.45/1.01  res_num_sel_changes:                    0
% 2.45/1.01  res_moves_from_active_to_pass:          0
% 2.45/1.01  
% 2.45/1.01  ------ Superposition
% 2.45/1.01  
% 2.45/1.01  sup_time_total:                         0.
% 2.45/1.01  sup_time_generating:                    0.
% 2.45/1.01  sup_time_sim_full:                      0.
% 2.45/1.01  sup_time_sim_immed:                     0.
% 2.45/1.01  
% 2.45/1.01  sup_num_of_clauses:                     80
% 2.45/1.01  sup_num_in_active:                      47
% 2.45/1.01  sup_num_in_passive:                     33
% 2.45/1.01  sup_num_of_loops:                       47
% 2.45/1.01  sup_fw_superposition:                   69
% 2.45/1.01  sup_bw_superposition:                   15
% 2.45/1.01  sup_immediate_simplified:               8
% 2.45/1.01  sup_given_eliminated:                   0
% 2.45/1.01  comparisons_done:                       0
% 2.45/1.01  comparisons_avoided:                    5
% 2.45/1.01  
% 2.45/1.01  ------ Simplifications
% 2.45/1.01  
% 2.45/1.01  
% 2.45/1.01  sim_fw_subset_subsumed:                 2
% 2.45/1.01  sim_bw_subset_subsumed:                 0
% 2.45/1.01  sim_fw_subsumed:                        0
% 2.45/1.01  sim_bw_subsumed:                        0
% 2.45/1.01  sim_fw_subsumption_res:                 0
% 2.45/1.01  sim_bw_subsumption_res:                 0
% 2.45/1.01  sim_tautology_del:                      0
% 2.45/1.01  sim_eq_tautology_del:                   18
% 2.45/1.01  sim_eq_res_simp:                        0
% 2.45/1.01  sim_fw_demodulated:                     0
% 2.45/1.01  sim_bw_demodulated:                     1
% 2.45/1.01  sim_light_normalised:                   6
% 2.45/1.01  sim_joinable_taut:                      0
% 2.45/1.01  sim_joinable_simp:                      0
% 2.45/1.01  sim_ac_normalised:                      0
% 2.45/1.01  sim_smt_subsumption:                    0
% 2.45/1.01  
%------------------------------------------------------------------------------
