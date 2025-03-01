%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:03:02 EST 2020

% Result     : Theorem 3.36s
% Output     : CNFRefutation 3.36s
% Verified   : 
% Statistics : Number of formulae       :  190 ( 806 expanded)
%              Number of clauses        :  111 ( 216 expanded)
%              Number of leaves         :   19 ( 211 expanded)
%              Depth                    :   22
%              Number of atoms          :  671 (7063 expanded)
%              Number of equality atoms :  328 (2575 expanded)
%              Maximal formula depth    :   15 (   5 average)
%              Maximal clause size      :   24 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f18,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(X3,X1,X0)
            & v1_funct_1(X3) )
         => ( ( v2_funct_1(X2)
              & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
              & k2_relset_1(X0,X1,X2) = X1 )
           => ( k2_funct_1(X2) = X3
              | k1_xboole_0 = X1
              | k1_xboole_0 = X0 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ! [X3] :
            ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
              & v1_funct_2(X3,X1,X0)
              & v1_funct_1(X3) )
           => ( ( v2_funct_1(X2)
                & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
                & k2_relset_1(X0,X1,X2) = X1 )
             => ( k2_funct_1(X2) = X3
                | k1_xboole_0 = X1
                | k1_xboole_0 = X0 ) ) ) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f44,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( k2_funct_1(X2) != X3
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0
          & v2_funct_1(X2)
          & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          & k2_relset_1(X0,X1,X2) = X1
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(X3,X1,X0)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f45,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( k2_funct_1(X2) != X3
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0
          & v2_funct_1(X2)
          & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          & k2_relset_1(X0,X1,X2) = X1
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(X3,X1,X0)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f44])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( k2_funct_1(X2) != X3
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0
          & v2_funct_1(X2)
          & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          & k2_relset_1(X0,X1,X2) = X1
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(X3,X1,X0)
          & v1_funct_1(X3) )
     => ( k2_funct_1(X2) != sK3
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0
        & v2_funct_1(X2)
        & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,sK3),k6_partfun1(X0))
        & k2_relset_1(X0,X1,X2) = X1
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(sK3,X1,X0)
        & v1_funct_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f48,plain,
    ( ? [X0,X1,X2] :
        ( ? [X3] :
            ( k2_funct_1(X2) != X3
            & k1_xboole_0 != X1
            & k1_xboole_0 != X0
            & v2_funct_1(X2)
            & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
            & k2_relset_1(X0,X1,X2) = X1
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(X3,X1,X0)
            & v1_funct_1(X3) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( ? [X3] :
          ( k2_funct_1(sK2) != X3
          & k1_xboole_0 != sK1
          & k1_xboole_0 != sK0
          & v2_funct_1(sK2)
          & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,X3),k6_partfun1(sK0))
          & k2_relset_1(sK0,sK1,sK2) = sK1
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
          & v1_funct_2(X3,sK1,sK0)
          & v1_funct_1(X3) )
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK2,sK0,sK1)
      & v1_funct_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f50,plain,
    ( k2_funct_1(sK2) != sK3
    & k1_xboole_0 != sK1
    & k1_xboole_0 != sK0
    & v2_funct_1(sK2)
    & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0))
    & k2_relset_1(sK0,sK1,sK2) = sK1
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    & v1_funct_2(sK3,sK1,sK0)
    & v1_funct_1(sK3)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK2,sK0,sK1)
    & v1_funct_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f45,f49,f48])).

fof(f86,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f50])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f83,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f50])).

fof(f81,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f50])).

fof(f5,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f25,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f24])).

fof(f56,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2)
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f82,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f50])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => ( ( k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
            & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) )
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1,X2] :
      ( ( k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
        & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) )
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f43,plain,(
    ! [X0,X1,X2] :
      ( ( k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
        & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) )
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f42])).

fof(f80,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f89,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f50])).

fof(f87,plain,(
    k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f50])).

fof(f91,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f50])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f54,plain,(
    ! [X0] :
      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f16,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f78,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f16])).

fof(f95,plain,(
    ! [X0] :
      ( k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f54,f78])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f12,axiom,(
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

fof(f36,plain,(
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
    inference(ennf_transformation,[],[f12])).

fof(f37,plain,(
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
    inference(flattening,[],[f36])).

fof(f47,plain,(
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
    inference(nnf_transformation,[],[f37])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f85,plain,(
    v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f50])).

fof(f90,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f50])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f55,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f96,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f55,f78])).

fof(f7,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
          & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
        & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f29,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
        & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f28])).

fof(f61,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f79,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f2,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f2])).

fof(f93,plain,(
    ! [X0] : k2_relat_1(k6_partfun1(X0)) = X0 ),
    inference(definition_unfolding,[],[f53,f78])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f27,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f26])).

fof(f59,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f41,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f40])).

fof(f77,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f84,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f50])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f35,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f34])).

fof(f46,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f35])).

fof(f66,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r2_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f88,plain,(
    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f50])).

fof(f14,axiom,(
    ! [X0] :
      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_partfun1(k6_partfun1(X0),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(pure_predicate_removal,[],[f14])).

fof(f76,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f20])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f39,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f38])).

fof(f75,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f92,plain,(
    k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_35,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_1598,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1604,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_3572,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1598,c_1604])).

cnf(c_38,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_1596,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_3573,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1596,c_1604])).

cnf(c_40,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1595,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_40])).

cnf(c_6,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1605,plain,
    ( v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_0,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | k5_relat_1(k5_relat_1(X2,X1),X0) = k5_relat_1(X2,k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1609,plain,
    ( k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_4613,plain,
    ( k5_relat_1(k2_funct_1(X0),k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(k2_funct_1(X0),X1),X2)
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1605,c_1609])).

cnf(c_11097,plain,
    ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1595,c_4613])).

cnf(c_43,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_1894,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_1895,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1894])).

cnf(c_11675,plain,
    ( v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_11097,c_43,c_1895])).

cnf(c_11676,plain,
    ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_11675])).

cnf(c_11685,plain,
    ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k5_relat_1(k2_funct_1(sK2),sK2),X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3573,c_11676])).

cnf(c_39,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_27,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(X2)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f80])).

cnf(c_32,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_446,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(X2)
    | sK2 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_27,c_32])).

cnf(c_447,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK2)
    | k2_relset_1(X0,X1,sK2) != X1
    | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(X1)
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_446])).

cnf(c_451,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_2(sK2,X0,X1)
    | k2_relset_1(X0,X1,sK2) != X1
    | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(X1)
    | k1_xboole_0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_447,c_40])).

cnf(c_452,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_relset_1(X0,X1,sK2) != X1
    | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(X1)
    | k1_xboole_0 = X1 ),
    inference(renaming,[status(thm)],[c_451])).

cnf(c_803,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_relset_1(X0,X1,sK2) != X1
    | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(X1)
    | sK0 != X0
    | sK1 != X1
    | sK2 != sK2
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_39,c_452])).

cnf(c_804,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | k2_relset_1(sK0,sK1,sK2) != sK1
    | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_803])).

cnf(c_34,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f87])).

cnf(c_30,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f91])).

cnf(c_806,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_804,c_38,c_34,c_30])).

cnf(c_11721,plain,
    ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k6_partfun1(sK1),X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_11685,c_806])).

cnf(c_11872,plain,
    ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,sK3)) = k5_relat_1(k6_partfun1(sK1),sK3) ),
    inference(superposition,[status(thm)],[c_3572,c_11721])).

cnf(c_3,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0 ),
    inference(cnf_transformation,[],[f95])).

cnf(c_1608,plain,
    ( k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_3745,plain,
    ( k5_relat_1(k6_partfun1(k1_relat_1(sK3)),sK3) = sK3 ),
    inference(superposition,[status(thm)],[c_3572,c_1608])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1603,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3839,plain,
    ( k1_relset_1(sK1,sK0,sK3) = k1_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1598,c_1603])).

cnf(c_22,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f68])).

cnf(c_36,negated_conjecture,
    ( v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_709,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK0 != X2
    | sK1 != X1
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_36])).

cnf(c_710,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | k1_relset_1(sK1,sK0,sK3) = sK1
    | k1_xboole_0 = sK0 ),
    inference(unflattening,[status(thm)],[c_709])).

cnf(c_31,negated_conjecture,
    ( k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f90])).

cnf(c_712,plain,
    ( k1_relset_1(sK1,sK0,sK3) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_710,c_35,c_31])).

cnf(c_3844,plain,
    ( k1_relat_1(sK3) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_3839,c_712])).

cnf(c_4265,plain,
    ( k5_relat_1(k6_partfun1(sK1),sK3) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_3745,c_3844])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0 ),
    inference(cnf_transformation,[],[f96])).

cnf(c_1607,plain,
    ( k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_3906,plain,
    ( k5_relat_1(k2_funct_1(X0),k6_partfun1(k2_relat_1(k2_funct_1(X0)))) = k2_funct_1(X0)
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1605,c_1607])).

cnf(c_4953,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(k2_relat_1(k2_funct_1(sK2)))) = k2_funct_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1595,c_3906])).

cnf(c_9,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_515,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_9,c_32])).

cnf(c_516,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k2_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_515])).

cnf(c_518,plain,
    ( ~ v1_relat_1(sK2)
    | k2_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_516,c_40])).

cnf(c_1590,plain,
    ( k2_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_518])).

cnf(c_28,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_419,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
    | sK2 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_28,c_32])).

cnf(c_420,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK2)
    | k2_relset_1(X0,X1,sK2) != X1
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_419])).

cnf(c_424,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_2(sK2,X0,X1)
    | k2_relset_1(X0,X1,sK2) != X1
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
    | k1_xboole_0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_420,c_40])).

cnf(c_425,plain,
    ( ~ v1_funct_2(sK2,X0,X1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_relset_1(X0,X1,sK2) != X1
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
    | k1_xboole_0 = X1 ),
    inference(renaming,[status(thm)],[c_424])).

cnf(c_811,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | k2_relset_1(X0,X1,sK2) != X1
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
    | sK0 != X0
    | sK1 != X1
    | sK2 != sK2
    | k1_xboole_0 = X1 ),
    inference(resolution_lifted,[status(thm)],[c_39,c_425])).

cnf(c_812,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | k2_relset_1(sK0,sK1,sK2) != sK1
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_811])).

cnf(c_814,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_812,c_38,c_34,c_30])).

cnf(c_1656,plain,
    ( k2_relat_1(k6_partfun1(sK0)) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1590,c_814])).

cnf(c_1,plain,
    ( k2_relat_1(k6_partfun1(X0)) = X0 ),
    inference(cnf_transformation,[],[f93])).

cnf(c_1657,plain,
    ( k1_relat_1(sK2) = sK0
    | v1_relat_1(sK2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1656,c_1])).

cnf(c_1806,plain,
    ( ~ v1_relat_1(sK2)
    | k1_relat_1(sK2) = sK0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1657])).

cnf(c_2804,plain,
    ( k1_relat_1(sK2) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1657,c_38,c_1806,c_1894])).

cnf(c_7,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_543,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_32])).

cnf(c_544,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_543])).

cnf(c_546,plain,
    ( ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_544,c_40])).

cnf(c_1588,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_546])).

cnf(c_2211,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1588,c_40,c_38,c_544,c_1894])).

cnf(c_2807,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = sK0 ),
    inference(demodulation,[status(thm)],[c_2804,c_2211])).

cnf(c_4956,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(sK0)) = k2_funct_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4953,c_2807])).

cnf(c_6394,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(sK0)) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4956,c_43,c_1895])).

cnf(c_26,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1599,plain,
    ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X5) != iProver_top
    | v1_funct_1(X4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_4665,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1598,c_1599])).

cnf(c_37,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_44,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_5082,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4665,c_44])).

cnf(c_5083,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_5082])).

cnf(c_5094,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1596,c_5083])).

cnf(c_1967,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK3)
    | k1_partfun1(X1,X2,X3,X4,X0,sK3) = k5_relat_1(X0,sK3) ),
    inference(instantiation,[status(thm)],[c_26])).

cnf(c_2283,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK2)
    | k1_partfun1(X2,X3,X0,X1,sK2,sK3) = k5_relat_1(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_1967])).

cnf(c_2818,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK2)
    | k1_partfun1(X0,X1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_2283])).

cnf(c_4256,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK2)
    | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_2818])).

cnf(c_5230,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_5094,c_40,c_38,c_37,c_35,c_4256])).

cnf(c_16,plain,
    ( ~ r2_relset_1(X0,X1,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | X3 = X2 ),
    inference(cnf_transformation,[],[f66])).

cnf(c_33,negated_conjecture,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_403,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | X3 = X0
    | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
    | k6_partfun1(sK0) != X3
    | sK0 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_33])).

cnf(c_404,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_403])).

cnf(c_25,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_412,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_404,c_25])).

cnf(c_1594,plain,
    ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_412])).

cnf(c_5233,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
    | m1_subset_1(k5_relat_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5230,c_1594])).

cnf(c_41,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_40])).

cnf(c_46,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_23,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1602,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5))) != iProver_top
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) = iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_5235,plain,
    ( m1_subset_1(k5_relat_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_5230,c_1602])).

cnf(c_6854,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_5233,c_41,c_43,c_44,c_46,c_5235])).

cnf(c_11894,plain,
    ( k2_funct_1(sK2) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_11872,c_4265,c_6394,c_6854])).

cnf(c_29,negated_conjecture,
    ( k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f92])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_11894,c_29])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n023.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 11:49:36 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 3.36/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.36/1.00  
% 3.36/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.36/1.00  
% 3.36/1.00  ------  iProver source info
% 3.36/1.00  
% 3.36/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.36/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.36/1.00  git: non_committed_changes: false
% 3.36/1.00  git: last_make_outside_of_git: false
% 3.36/1.00  
% 3.36/1.00  ------ 
% 3.36/1.00  
% 3.36/1.00  ------ Input Options
% 3.36/1.00  
% 3.36/1.00  --out_options                           all
% 3.36/1.00  --tptp_safe_out                         true
% 3.36/1.00  --problem_path                          ""
% 3.36/1.00  --include_path                          ""
% 3.36/1.00  --clausifier                            res/vclausify_rel
% 3.36/1.00  --clausifier_options                    --mode clausify
% 3.36/1.00  --stdin                                 false
% 3.36/1.00  --stats_out                             all
% 3.36/1.00  
% 3.36/1.00  ------ General Options
% 3.36/1.00  
% 3.36/1.00  --fof                                   false
% 3.36/1.00  --time_out_real                         305.
% 3.36/1.00  --time_out_virtual                      -1.
% 3.36/1.00  --symbol_type_check                     false
% 3.36/1.00  --clausify_out                          false
% 3.36/1.00  --sig_cnt_out                           false
% 3.36/1.00  --trig_cnt_out                          false
% 3.36/1.00  --trig_cnt_out_tolerance                1.
% 3.36/1.00  --trig_cnt_out_sk_spl                   false
% 3.36/1.00  --abstr_cl_out                          false
% 3.36/1.00  
% 3.36/1.00  ------ Global Options
% 3.36/1.00  
% 3.36/1.00  --schedule                              default
% 3.36/1.00  --add_important_lit                     false
% 3.36/1.00  --prop_solver_per_cl                    1000
% 3.36/1.00  --min_unsat_core                        false
% 3.36/1.00  --soft_assumptions                      false
% 3.36/1.00  --soft_lemma_size                       3
% 3.36/1.00  --prop_impl_unit_size                   0
% 3.36/1.00  --prop_impl_unit                        []
% 3.36/1.00  --share_sel_clauses                     true
% 3.36/1.00  --reset_solvers                         false
% 3.36/1.00  --bc_imp_inh                            [conj_cone]
% 3.36/1.00  --conj_cone_tolerance                   3.
% 3.36/1.00  --extra_neg_conj                        none
% 3.36/1.00  --large_theory_mode                     true
% 3.36/1.00  --prolific_symb_bound                   200
% 3.36/1.00  --lt_threshold                          2000
% 3.36/1.00  --clause_weak_htbl                      true
% 3.36/1.00  --gc_record_bc_elim                     false
% 3.36/1.00  
% 3.36/1.00  ------ Preprocessing Options
% 3.36/1.00  
% 3.36/1.00  --preprocessing_flag                    true
% 3.36/1.00  --time_out_prep_mult                    0.1
% 3.36/1.00  --splitting_mode                        input
% 3.36/1.00  --splitting_grd                         true
% 3.36/1.00  --splitting_cvd                         false
% 3.36/1.00  --splitting_cvd_svl                     false
% 3.36/1.00  --splitting_nvd                         32
% 3.36/1.00  --sub_typing                            true
% 3.36/1.00  --prep_gs_sim                           true
% 3.36/1.00  --prep_unflatten                        true
% 3.36/1.00  --prep_res_sim                          true
% 3.36/1.00  --prep_upred                            true
% 3.36/1.00  --prep_sem_filter                       exhaustive
% 3.36/1.00  --prep_sem_filter_out                   false
% 3.36/1.00  --pred_elim                             true
% 3.36/1.00  --res_sim_input                         true
% 3.36/1.00  --eq_ax_congr_red                       true
% 3.36/1.00  --pure_diseq_elim                       true
% 3.36/1.00  --brand_transform                       false
% 3.36/1.00  --non_eq_to_eq                          false
% 3.36/1.00  --prep_def_merge                        true
% 3.36/1.00  --prep_def_merge_prop_impl              false
% 3.36/1.00  --prep_def_merge_mbd                    true
% 3.36/1.00  --prep_def_merge_tr_red                 false
% 3.36/1.00  --prep_def_merge_tr_cl                  false
% 3.36/1.00  --smt_preprocessing                     true
% 3.36/1.00  --smt_ac_axioms                         fast
% 3.36/1.00  --preprocessed_out                      false
% 3.36/1.00  --preprocessed_stats                    false
% 3.36/1.00  
% 3.36/1.00  ------ Abstraction refinement Options
% 3.36/1.00  
% 3.36/1.00  --abstr_ref                             []
% 3.36/1.00  --abstr_ref_prep                        false
% 3.36/1.00  --abstr_ref_until_sat                   false
% 3.36/1.00  --abstr_ref_sig_restrict                funpre
% 3.36/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.36/1.00  --abstr_ref_under                       []
% 3.36/1.00  
% 3.36/1.00  ------ SAT Options
% 3.36/1.00  
% 3.36/1.00  --sat_mode                              false
% 3.36/1.00  --sat_fm_restart_options                ""
% 3.36/1.00  --sat_gr_def                            false
% 3.36/1.00  --sat_epr_types                         true
% 3.36/1.00  --sat_non_cyclic_types                  false
% 3.36/1.00  --sat_finite_models                     false
% 3.36/1.00  --sat_fm_lemmas                         false
% 3.36/1.00  --sat_fm_prep                           false
% 3.36/1.00  --sat_fm_uc_incr                        true
% 3.36/1.00  --sat_out_model                         small
% 3.36/1.00  --sat_out_clauses                       false
% 3.36/1.00  
% 3.36/1.00  ------ QBF Options
% 3.36/1.00  
% 3.36/1.00  --qbf_mode                              false
% 3.36/1.00  --qbf_elim_univ                         false
% 3.36/1.00  --qbf_dom_inst                          none
% 3.36/1.00  --qbf_dom_pre_inst                      false
% 3.36/1.00  --qbf_sk_in                             false
% 3.36/1.00  --qbf_pred_elim                         true
% 3.36/1.00  --qbf_split                             512
% 3.36/1.00  
% 3.36/1.00  ------ BMC1 Options
% 3.36/1.00  
% 3.36/1.00  --bmc1_incremental                      false
% 3.36/1.00  --bmc1_axioms                           reachable_all
% 3.36/1.00  --bmc1_min_bound                        0
% 3.36/1.00  --bmc1_max_bound                        -1
% 3.36/1.00  --bmc1_max_bound_default                -1
% 3.36/1.00  --bmc1_symbol_reachability              true
% 3.36/1.00  --bmc1_property_lemmas                  false
% 3.36/1.00  --bmc1_k_induction                      false
% 3.36/1.00  --bmc1_non_equiv_states                 false
% 3.36/1.00  --bmc1_deadlock                         false
% 3.36/1.00  --bmc1_ucm                              false
% 3.36/1.00  --bmc1_add_unsat_core                   none
% 3.36/1.00  --bmc1_unsat_core_children              false
% 3.36/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.36/1.00  --bmc1_out_stat                         full
% 3.36/1.00  --bmc1_ground_init                      false
% 3.36/1.00  --bmc1_pre_inst_next_state              false
% 3.36/1.00  --bmc1_pre_inst_state                   false
% 3.36/1.00  --bmc1_pre_inst_reach_state             false
% 3.36/1.00  --bmc1_out_unsat_core                   false
% 3.36/1.00  --bmc1_aig_witness_out                  false
% 3.36/1.00  --bmc1_verbose                          false
% 3.36/1.00  --bmc1_dump_clauses_tptp                false
% 3.36/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.36/1.00  --bmc1_dump_file                        -
% 3.36/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.36/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.36/1.00  --bmc1_ucm_extend_mode                  1
% 3.36/1.00  --bmc1_ucm_init_mode                    2
% 3.36/1.00  --bmc1_ucm_cone_mode                    none
% 3.36/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.36/1.00  --bmc1_ucm_relax_model                  4
% 3.36/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.36/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.36/1.00  --bmc1_ucm_layered_model                none
% 3.36/1.00  --bmc1_ucm_max_lemma_size               10
% 3.36/1.00  
% 3.36/1.00  ------ AIG Options
% 3.36/1.00  
% 3.36/1.00  --aig_mode                              false
% 3.36/1.00  
% 3.36/1.00  ------ Instantiation Options
% 3.36/1.00  
% 3.36/1.00  --instantiation_flag                    true
% 3.36/1.00  --inst_sos_flag                         false
% 3.36/1.00  --inst_sos_phase                        true
% 3.36/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.36/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.36/1.00  --inst_lit_sel_side                     num_symb
% 3.36/1.00  --inst_solver_per_active                1400
% 3.36/1.00  --inst_solver_calls_frac                1.
% 3.36/1.00  --inst_passive_queue_type               priority_queues
% 3.36/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.36/1.00  --inst_passive_queues_freq              [25;2]
% 3.36/1.00  --inst_dismatching                      true
% 3.36/1.00  --inst_eager_unprocessed_to_passive     true
% 3.36/1.00  --inst_prop_sim_given                   true
% 3.36/1.00  --inst_prop_sim_new                     false
% 3.36/1.00  --inst_subs_new                         false
% 3.36/1.00  --inst_eq_res_simp                      false
% 3.36/1.00  --inst_subs_given                       false
% 3.36/1.00  --inst_orphan_elimination               true
% 3.36/1.00  --inst_learning_loop_flag               true
% 3.36/1.00  --inst_learning_start                   3000
% 3.36/1.00  --inst_learning_factor                  2
% 3.36/1.00  --inst_start_prop_sim_after_learn       3
% 3.36/1.00  --inst_sel_renew                        solver
% 3.36/1.00  --inst_lit_activity_flag                true
% 3.36/1.00  --inst_restr_to_given                   false
% 3.36/1.00  --inst_activity_threshold               500
% 3.36/1.00  --inst_out_proof                        true
% 3.36/1.00  
% 3.36/1.00  ------ Resolution Options
% 3.36/1.00  
% 3.36/1.00  --resolution_flag                       true
% 3.36/1.00  --res_lit_sel                           adaptive
% 3.36/1.00  --res_lit_sel_side                      none
% 3.36/1.00  --res_ordering                          kbo
% 3.36/1.00  --res_to_prop_solver                    active
% 3.36/1.00  --res_prop_simpl_new                    false
% 3.36/1.00  --res_prop_simpl_given                  true
% 3.36/1.00  --res_passive_queue_type                priority_queues
% 3.36/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.36/1.00  --res_passive_queues_freq               [15;5]
% 3.36/1.00  --res_forward_subs                      full
% 3.36/1.00  --res_backward_subs                     full
% 3.36/1.00  --res_forward_subs_resolution           true
% 3.36/1.00  --res_backward_subs_resolution          true
% 3.36/1.00  --res_orphan_elimination                true
% 3.36/1.00  --res_time_limit                        2.
% 3.36/1.00  --res_out_proof                         true
% 3.36/1.00  
% 3.36/1.00  ------ Superposition Options
% 3.36/1.00  
% 3.36/1.00  --superposition_flag                    true
% 3.36/1.00  --sup_passive_queue_type                priority_queues
% 3.36/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.36/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.36/1.00  --demod_completeness_check              fast
% 3.36/1.00  --demod_use_ground                      true
% 3.36/1.00  --sup_to_prop_solver                    passive
% 3.36/1.00  --sup_prop_simpl_new                    true
% 3.36/1.00  --sup_prop_simpl_given                  true
% 3.36/1.00  --sup_fun_splitting                     false
% 3.36/1.00  --sup_smt_interval                      50000
% 3.36/1.00  
% 3.36/1.00  ------ Superposition Simplification Setup
% 3.36/1.00  
% 3.36/1.00  --sup_indices_passive                   []
% 3.36/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.36/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.36/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.36/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.36/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.36/1.00  --sup_full_bw                           [BwDemod]
% 3.36/1.00  --sup_immed_triv                        [TrivRules]
% 3.36/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.36/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.36/1.00  --sup_immed_bw_main                     []
% 3.36/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.36/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.36/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.36/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.36/1.00  
% 3.36/1.00  ------ Combination Options
% 3.36/1.00  
% 3.36/1.00  --comb_res_mult                         3
% 3.36/1.00  --comb_sup_mult                         2
% 3.36/1.00  --comb_inst_mult                        10
% 3.36/1.00  
% 3.36/1.00  ------ Debug Options
% 3.36/1.00  
% 3.36/1.00  --dbg_backtrace                         false
% 3.36/1.00  --dbg_dump_prop_clauses                 false
% 3.36/1.00  --dbg_dump_prop_clauses_file            -
% 3.36/1.00  --dbg_out_stat                          false
% 3.36/1.00  ------ Parsing...
% 3.36/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.36/1.00  
% 3.36/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 3.36/1.00  
% 3.36/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.36/1.00  
% 3.36/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.36/1.00  ------ Proving...
% 3.36/1.00  ------ Problem Properties 
% 3.36/1.00  
% 3.36/1.00  
% 3.36/1.00  clauses                                 40
% 3.36/1.00  conjectures                             8
% 3.36/1.00  EPR                                     4
% 3.36/1.00  Horn                                    38
% 3.36/1.00  unary                                   15
% 3.36/1.00  binary                                  11
% 3.36/1.00  lits                                    92
% 3.36/1.00  lits eq                                 44
% 3.36/1.00  fd_pure                                 0
% 3.36/1.00  fd_pseudo                               0
% 3.36/1.00  fd_cond                                 2
% 3.36/1.00  fd_pseudo_cond                          0
% 3.36/1.00  AC symbols                              0
% 3.36/1.00  
% 3.36/1.00  ------ Schedule dynamic 5 is on 
% 3.36/1.00  
% 3.36/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.36/1.00  
% 3.36/1.00  
% 3.36/1.00  ------ 
% 3.36/1.00  Current options:
% 3.36/1.00  ------ 
% 3.36/1.00  
% 3.36/1.00  ------ Input Options
% 3.36/1.00  
% 3.36/1.00  --out_options                           all
% 3.36/1.00  --tptp_safe_out                         true
% 3.36/1.00  --problem_path                          ""
% 3.36/1.00  --include_path                          ""
% 3.36/1.00  --clausifier                            res/vclausify_rel
% 3.36/1.00  --clausifier_options                    --mode clausify
% 3.36/1.00  --stdin                                 false
% 3.36/1.00  --stats_out                             all
% 3.36/1.00  
% 3.36/1.00  ------ General Options
% 3.36/1.00  
% 3.36/1.00  --fof                                   false
% 3.36/1.00  --time_out_real                         305.
% 3.36/1.00  --time_out_virtual                      -1.
% 3.36/1.00  --symbol_type_check                     false
% 3.36/1.00  --clausify_out                          false
% 3.36/1.00  --sig_cnt_out                           false
% 3.36/1.00  --trig_cnt_out                          false
% 3.36/1.00  --trig_cnt_out_tolerance                1.
% 3.36/1.00  --trig_cnt_out_sk_spl                   false
% 3.36/1.00  --abstr_cl_out                          false
% 3.36/1.00  
% 3.36/1.00  ------ Global Options
% 3.36/1.00  
% 3.36/1.00  --schedule                              default
% 3.36/1.00  --add_important_lit                     false
% 3.36/1.00  --prop_solver_per_cl                    1000
% 3.36/1.00  --min_unsat_core                        false
% 3.36/1.00  --soft_assumptions                      false
% 3.36/1.00  --soft_lemma_size                       3
% 3.36/1.00  --prop_impl_unit_size                   0
% 3.36/1.00  --prop_impl_unit                        []
% 3.36/1.00  --share_sel_clauses                     true
% 3.36/1.00  --reset_solvers                         false
% 3.36/1.00  --bc_imp_inh                            [conj_cone]
% 3.36/1.00  --conj_cone_tolerance                   3.
% 3.36/1.00  --extra_neg_conj                        none
% 3.36/1.00  --large_theory_mode                     true
% 3.36/1.00  --prolific_symb_bound                   200
% 3.36/1.00  --lt_threshold                          2000
% 3.36/1.00  --clause_weak_htbl                      true
% 3.36/1.00  --gc_record_bc_elim                     false
% 3.36/1.00  
% 3.36/1.00  ------ Preprocessing Options
% 3.36/1.00  
% 3.36/1.00  --preprocessing_flag                    true
% 3.36/1.00  --time_out_prep_mult                    0.1
% 3.36/1.00  --splitting_mode                        input
% 3.36/1.00  --splitting_grd                         true
% 3.36/1.00  --splitting_cvd                         false
% 3.36/1.00  --splitting_cvd_svl                     false
% 3.36/1.00  --splitting_nvd                         32
% 3.36/1.00  --sub_typing                            true
% 3.36/1.00  --prep_gs_sim                           true
% 3.36/1.00  --prep_unflatten                        true
% 3.36/1.00  --prep_res_sim                          true
% 3.36/1.00  --prep_upred                            true
% 3.36/1.00  --prep_sem_filter                       exhaustive
% 3.36/1.00  --prep_sem_filter_out                   false
% 3.36/1.00  --pred_elim                             true
% 3.36/1.00  --res_sim_input                         true
% 3.36/1.00  --eq_ax_congr_red                       true
% 3.36/1.00  --pure_diseq_elim                       true
% 3.36/1.00  --brand_transform                       false
% 3.36/1.00  --non_eq_to_eq                          false
% 3.36/1.00  --prep_def_merge                        true
% 3.36/1.00  --prep_def_merge_prop_impl              false
% 3.36/1.00  --prep_def_merge_mbd                    true
% 3.36/1.00  --prep_def_merge_tr_red                 false
% 3.36/1.00  --prep_def_merge_tr_cl                  false
% 3.36/1.00  --smt_preprocessing                     true
% 3.36/1.00  --smt_ac_axioms                         fast
% 3.36/1.00  --preprocessed_out                      false
% 3.36/1.00  --preprocessed_stats                    false
% 3.36/1.00  
% 3.36/1.00  ------ Abstraction refinement Options
% 3.36/1.00  
% 3.36/1.00  --abstr_ref                             []
% 3.36/1.00  --abstr_ref_prep                        false
% 3.36/1.00  --abstr_ref_until_sat                   false
% 3.36/1.00  --abstr_ref_sig_restrict                funpre
% 3.36/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.36/1.00  --abstr_ref_under                       []
% 3.36/1.00  
% 3.36/1.00  ------ SAT Options
% 3.36/1.00  
% 3.36/1.00  --sat_mode                              false
% 3.36/1.00  --sat_fm_restart_options                ""
% 3.36/1.00  --sat_gr_def                            false
% 3.36/1.00  --sat_epr_types                         true
% 3.36/1.00  --sat_non_cyclic_types                  false
% 3.36/1.00  --sat_finite_models                     false
% 3.36/1.00  --sat_fm_lemmas                         false
% 3.36/1.00  --sat_fm_prep                           false
% 3.36/1.00  --sat_fm_uc_incr                        true
% 3.36/1.00  --sat_out_model                         small
% 3.36/1.00  --sat_out_clauses                       false
% 3.36/1.00  
% 3.36/1.00  ------ QBF Options
% 3.36/1.00  
% 3.36/1.00  --qbf_mode                              false
% 3.36/1.00  --qbf_elim_univ                         false
% 3.36/1.00  --qbf_dom_inst                          none
% 3.36/1.00  --qbf_dom_pre_inst                      false
% 3.36/1.00  --qbf_sk_in                             false
% 3.36/1.00  --qbf_pred_elim                         true
% 3.36/1.00  --qbf_split                             512
% 3.36/1.00  
% 3.36/1.00  ------ BMC1 Options
% 3.36/1.00  
% 3.36/1.00  --bmc1_incremental                      false
% 3.36/1.00  --bmc1_axioms                           reachable_all
% 3.36/1.00  --bmc1_min_bound                        0
% 3.36/1.00  --bmc1_max_bound                        -1
% 3.36/1.00  --bmc1_max_bound_default                -1
% 3.36/1.00  --bmc1_symbol_reachability              true
% 3.36/1.00  --bmc1_property_lemmas                  false
% 3.36/1.00  --bmc1_k_induction                      false
% 3.36/1.00  --bmc1_non_equiv_states                 false
% 3.36/1.00  --bmc1_deadlock                         false
% 3.36/1.00  --bmc1_ucm                              false
% 3.36/1.00  --bmc1_add_unsat_core                   none
% 3.36/1.00  --bmc1_unsat_core_children              false
% 3.36/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.36/1.00  --bmc1_out_stat                         full
% 3.36/1.00  --bmc1_ground_init                      false
% 3.36/1.00  --bmc1_pre_inst_next_state              false
% 3.36/1.00  --bmc1_pre_inst_state                   false
% 3.36/1.00  --bmc1_pre_inst_reach_state             false
% 3.36/1.00  --bmc1_out_unsat_core                   false
% 3.36/1.00  --bmc1_aig_witness_out                  false
% 3.36/1.00  --bmc1_verbose                          false
% 3.36/1.00  --bmc1_dump_clauses_tptp                false
% 3.36/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.36/1.00  --bmc1_dump_file                        -
% 3.36/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.36/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.36/1.00  --bmc1_ucm_extend_mode                  1
% 3.36/1.00  --bmc1_ucm_init_mode                    2
% 3.36/1.00  --bmc1_ucm_cone_mode                    none
% 3.36/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.36/1.00  --bmc1_ucm_relax_model                  4
% 3.36/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.36/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.36/1.00  --bmc1_ucm_layered_model                none
% 3.36/1.00  --bmc1_ucm_max_lemma_size               10
% 3.36/1.00  
% 3.36/1.00  ------ AIG Options
% 3.36/1.00  
% 3.36/1.00  --aig_mode                              false
% 3.36/1.00  
% 3.36/1.00  ------ Instantiation Options
% 3.36/1.00  
% 3.36/1.00  --instantiation_flag                    true
% 3.36/1.00  --inst_sos_flag                         false
% 3.36/1.00  --inst_sos_phase                        true
% 3.36/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.36/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.36/1.00  --inst_lit_sel_side                     none
% 3.36/1.00  --inst_solver_per_active                1400
% 3.36/1.00  --inst_solver_calls_frac                1.
% 3.36/1.00  --inst_passive_queue_type               priority_queues
% 3.36/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.36/1.00  --inst_passive_queues_freq              [25;2]
% 3.36/1.00  --inst_dismatching                      true
% 3.36/1.00  --inst_eager_unprocessed_to_passive     true
% 3.36/1.00  --inst_prop_sim_given                   true
% 3.36/1.00  --inst_prop_sim_new                     false
% 3.36/1.00  --inst_subs_new                         false
% 3.36/1.00  --inst_eq_res_simp                      false
% 3.36/1.00  --inst_subs_given                       false
% 3.36/1.00  --inst_orphan_elimination               true
% 3.36/1.00  --inst_learning_loop_flag               true
% 3.36/1.00  --inst_learning_start                   3000
% 3.36/1.00  --inst_learning_factor                  2
% 3.36/1.00  --inst_start_prop_sim_after_learn       3
% 3.36/1.00  --inst_sel_renew                        solver
% 3.36/1.00  --inst_lit_activity_flag                true
% 3.36/1.00  --inst_restr_to_given                   false
% 3.36/1.00  --inst_activity_threshold               500
% 3.36/1.00  --inst_out_proof                        true
% 3.36/1.00  
% 3.36/1.00  ------ Resolution Options
% 3.36/1.00  
% 3.36/1.00  --resolution_flag                       false
% 3.36/1.00  --res_lit_sel                           adaptive
% 3.36/1.00  --res_lit_sel_side                      none
% 3.36/1.00  --res_ordering                          kbo
% 3.36/1.00  --res_to_prop_solver                    active
% 3.36/1.00  --res_prop_simpl_new                    false
% 3.36/1.00  --res_prop_simpl_given                  true
% 3.36/1.00  --res_passive_queue_type                priority_queues
% 3.36/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.36/1.00  --res_passive_queues_freq               [15;5]
% 3.36/1.00  --res_forward_subs                      full
% 3.36/1.00  --res_backward_subs                     full
% 3.36/1.00  --res_forward_subs_resolution           true
% 3.36/1.00  --res_backward_subs_resolution          true
% 3.36/1.00  --res_orphan_elimination                true
% 3.36/1.00  --res_time_limit                        2.
% 3.36/1.00  --res_out_proof                         true
% 3.36/1.00  
% 3.36/1.00  ------ Superposition Options
% 3.36/1.00  
% 3.36/1.00  --superposition_flag                    true
% 3.36/1.00  --sup_passive_queue_type                priority_queues
% 3.36/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.36/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.36/1.00  --demod_completeness_check              fast
% 3.36/1.00  --demod_use_ground                      true
% 3.36/1.00  --sup_to_prop_solver                    passive
% 3.36/1.00  --sup_prop_simpl_new                    true
% 3.36/1.00  --sup_prop_simpl_given                  true
% 3.36/1.00  --sup_fun_splitting                     false
% 3.36/1.00  --sup_smt_interval                      50000
% 3.36/1.00  
% 3.36/1.00  ------ Superposition Simplification Setup
% 3.36/1.00  
% 3.36/1.00  --sup_indices_passive                   []
% 3.36/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.36/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.36/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.36/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.36/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.36/1.00  --sup_full_bw                           [BwDemod]
% 3.36/1.00  --sup_immed_triv                        [TrivRules]
% 3.36/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.36/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.36/1.00  --sup_immed_bw_main                     []
% 3.36/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.36/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.36/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.36/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.36/1.00  
% 3.36/1.00  ------ Combination Options
% 3.36/1.00  
% 3.36/1.00  --comb_res_mult                         3
% 3.36/1.00  --comb_sup_mult                         2
% 3.36/1.00  --comb_inst_mult                        10
% 3.36/1.00  
% 3.36/1.00  ------ Debug Options
% 3.36/1.00  
% 3.36/1.00  --dbg_backtrace                         false
% 3.36/1.00  --dbg_dump_prop_clauses                 false
% 3.36/1.00  --dbg_dump_prop_clauses_file            -
% 3.36/1.00  --dbg_out_stat                          false
% 3.36/1.00  
% 3.36/1.00  
% 3.36/1.00  
% 3.36/1.00  
% 3.36/1.00  ------ Proving...
% 3.36/1.00  
% 3.36/1.00  
% 3.36/1.00  % SZS status Theorem for theBenchmark.p
% 3.36/1.00  
% 3.36/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.36/1.00  
% 3.36/1.00  fof(f18,conjecture,(
% 3.36/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f19,negated_conjecture,(
% 3.36/1.00    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 3.36/1.00    inference(negated_conjecture,[],[f18])).
% 3.36/1.00  
% 3.36/1.00  fof(f44,plain,(
% 3.36/1.00    ? [X0,X1,X2] : (? [X3] : (((k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & (v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 3.36/1.00    inference(ennf_transformation,[],[f19])).
% 3.36/1.00  
% 3.36/1.00  fof(f45,plain,(
% 3.36/1.00    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 3.36/1.00    inference(flattening,[],[f44])).
% 3.36/1.00  
% 3.36/1.00  fof(f49,plain,(
% 3.36/1.00    ( ! [X2,X0,X1] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (k2_funct_1(X2) != sK3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,sK3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(sK3,X1,X0) & v1_funct_1(sK3))) )),
% 3.36/1.00    introduced(choice_axiom,[])).
% 3.36/1.00  
% 3.36/1.00  fof(f48,plain,(
% 3.36/1.00    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (k2_funct_1(sK2) != X3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,X3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(X3,sK1,sK0) & v1_funct_1(X3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 3.36/1.00    introduced(choice_axiom,[])).
% 3.36/1.00  
% 3.36/1.00  fof(f50,plain,(
% 3.36/1.00    (k2_funct_1(sK2) != sK3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(sK3,sK1,sK0) & v1_funct_1(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 3.36/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f45,f49,f48])).
% 3.36/1.00  
% 3.36/1.00  fof(f86,plain,(
% 3.36/1.00    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f9,axiom,(
% 3.36/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f32,plain,(
% 3.36/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.36/1.00    inference(ennf_transformation,[],[f9])).
% 3.36/1.00  
% 3.36/1.00  fof(f64,plain,(
% 3.36/1.00    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.36/1.00    inference(cnf_transformation,[],[f32])).
% 3.36/1.00  
% 3.36/1.00  fof(f83,plain,(
% 3.36/1.00    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f81,plain,(
% 3.36/1.00    v1_funct_1(sK2)),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f5,axiom,(
% 3.36/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f24,plain,(
% 3.36/1.00    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.36/1.00    inference(ennf_transformation,[],[f5])).
% 3.36/1.00  
% 3.36/1.00  fof(f25,plain,(
% 3.36/1.00    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.36/1.00    inference(flattening,[],[f24])).
% 3.36/1.00  
% 3.36/1.00  fof(f56,plain,(
% 3.36/1.00    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f25])).
% 3.36/1.00  
% 3.36/1.00  fof(f1,axiom,(
% 3.36/1.00    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2))))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f21,plain,(
% 3.36/1.00    ! [X0] : (! [X1] : (! [X2] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.36/1.00    inference(ennf_transformation,[],[f1])).
% 3.36/1.00  
% 3.36/1.00  fof(f51,plain,(
% 3.36/1.00    ( ! [X2,X0,X1] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f21])).
% 3.36/1.00  
% 3.36/1.00  fof(f82,plain,(
% 3.36/1.00    v1_funct_2(sK2,sK0,sK1)),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f17,axiom,(
% 3.36/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => ((k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)) | k1_xboole_0 = X1)))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f42,plain,(
% 3.36/1.00    ! [X0,X1,X2] : ((((k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)) | k1_xboole_0 = X1) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.36/1.00    inference(ennf_transformation,[],[f17])).
% 3.36/1.00  
% 3.36/1.00  fof(f43,plain,(
% 3.36/1.00    ! [X0,X1,X2] : ((k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)) | k1_xboole_0 = X1 | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.36/1.00    inference(flattening,[],[f42])).
% 3.36/1.00  
% 3.36/1.00  fof(f80,plain,(
% 3.36/1.00    ( ! [X2,X0,X1] : (k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) | k1_xboole_0 = X1 | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f43])).
% 3.36/1.00  
% 3.36/1.00  fof(f89,plain,(
% 3.36/1.00    v2_funct_1(sK2)),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f87,plain,(
% 3.36/1.00    k2_relset_1(sK0,sK1,sK2) = sK1),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f91,plain,(
% 3.36/1.00    k1_xboole_0 != sK1),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f3,axiom,(
% 3.36/1.00    ! [X0] : (v1_relat_1(X0) => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0)),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f22,plain,(
% 3.36/1.00    ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0))),
% 3.36/1.00    inference(ennf_transformation,[],[f3])).
% 3.36/1.00  
% 3.36/1.00  fof(f54,plain,(
% 3.36/1.00    ( ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f22])).
% 3.36/1.00  
% 3.36/1.00  fof(f16,axiom,(
% 3.36/1.00    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f78,plain,(
% 3.36/1.00    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f16])).
% 3.36/1.00  
% 3.36/1.00  fof(f95,plain,(
% 3.36/1.00    ( ! [X0] : (k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0)) )),
% 3.36/1.00    inference(definition_unfolding,[],[f54,f78])).
% 3.36/1.00  
% 3.36/1.00  fof(f10,axiom,(
% 3.36/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f33,plain,(
% 3.36/1.00    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.36/1.00    inference(ennf_transformation,[],[f10])).
% 3.36/1.00  
% 3.36/1.00  fof(f65,plain,(
% 3.36/1.00    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.36/1.00    inference(cnf_transformation,[],[f33])).
% 3.36/1.00  
% 3.36/1.00  fof(f12,axiom,(
% 3.36/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f36,plain,(
% 3.36/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.36/1.00    inference(ennf_transformation,[],[f12])).
% 3.36/1.00  
% 3.36/1.00  fof(f37,plain,(
% 3.36/1.00    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.36/1.00    inference(flattening,[],[f36])).
% 3.36/1.00  
% 3.36/1.00  fof(f47,plain,(
% 3.36/1.00    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.36/1.00    inference(nnf_transformation,[],[f37])).
% 3.36/1.00  
% 3.36/1.00  fof(f68,plain,(
% 3.36/1.00    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.36/1.00    inference(cnf_transformation,[],[f47])).
% 3.36/1.00  
% 3.36/1.00  fof(f85,plain,(
% 3.36/1.00    v1_funct_2(sK3,sK1,sK0)),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f90,plain,(
% 3.36/1.00    k1_xboole_0 != sK0),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f4,axiom,(
% 3.36/1.00    ! [X0] : (v1_relat_1(X0) => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0)),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f23,plain,(
% 3.36/1.00    ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0))),
% 3.36/1.00    inference(ennf_transformation,[],[f4])).
% 3.36/1.00  
% 3.36/1.00  fof(f55,plain,(
% 3.36/1.00    ( ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f23])).
% 3.36/1.00  
% 3.36/1.00  fof(f96,plain,(
% 3.36/1.00    ( ! [X0] : (k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0)) )),
% 3.36/1.00    inference(definition_unfolding,[],[f55,f78])).
% 3.36/1.00  
% 3.36/1.00  fof(f7,axiom,(
% 3.36/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))))))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f28,plain,(
% 3.36/1.00    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.36/1.00    inference(ennf_transformation,[],[f7])).
% 3.36/1.00  
% 3.36/1.00  fof(f29,plain,(
% 3.36/1.00    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.36/1.00    inference(flattening,[],[f28])).
% 3.36/1.00  
% 3.36/1.00  fof(f61,plain,(
% 3.36/1.00    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f29])).
% 3.36/1.00  
% 3.36/1.00  fof(f79,plain,(
% 3.36/1.00    ( ! [X2,X0,X1] : (k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) | k1_xboole_0 = X1 | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f43])).
% 3.36/1.00  
% 3.36/1.00  fof(f2,axiom,(
% 3.36/1.00    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f53,plain,(
% 3.36/1.00    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 3.36/1.00    inference(cnf_transformation,[],[f2])).
% 3.36/1.00  
% 3.36/1.00  fof(f93,plain,(
% 3.36/1.00    ( ! [X0] : (k2_relat_1(k6_partfun1(X0)) = X0) )),
% 3.36/1.00    inference(definition_unfolding,[],[f53,f78])).
% 3.36/1.00  
% 3.36/1.00  fof(f6,axiom,(
% 3.36/1.00    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f26,plain,(
% 3.36/1.00    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.36/1.00    inference(ennf_transformation,[],[f6])).
% 3.36/1.00  
% 3.36/1.00  fof(f27,plain,(
% 3.36/1.00    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.36/1.00    inference(flattening,[],[f26])).
% 3.36/1.00  
% 3.36/1.00  fof(f59,plain,(
% 3.36/1.00    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f27])).
% 3.36/1.00  
% 3.36/1.00  fof(f15,axiom,(
% 3.36/1.00    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f40,plain,(
% 3.36/1.00    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.36/1.00    inference(ennf_transformation,[],[f15])).
% 3.36/1.00  
% 3.36/1.00  fof(f41,plain,(
% 3.36/1.00    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.36/1.00    inference(flattening,[],[f40])).
% 3.36/1.00  
% 3.36/1.00  fof(f77,plain,(
% 3.36/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f41])).
% 3.36/1.00  
% 3.36/1.00  fof(f84,plain,(
% 3.36/1.00    v1_funct_1(sK3)),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f11,axiom,(
% 3.36/1.00    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f34,plain,(
% 3.36/1.00    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 3.36/1.00    inference(ennf_transformation,[],[f11])).
% 3.36/1.00  
% 3.36/1.00  fof(f35,plain,(
% 3.36/1.00    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.36/1.00    inference(flattening,[],[f34])).
% 3.36/1.00  
% 3.36/1.00  fof(f46,plain,(
% 3.36/1.00    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.36/1.00    inference(nnf_transformation,[],[f35])).
% 3.36/1.00  
% 3.36/1.00  fof(f66,plain,(
% 3.36/1.00    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.36/1.00    inference(cnf_transformation,[],[f46])).
% 3.36/1.00  
% 3.36/1.00  fof(f88,plain,(
% 3.36/1.00    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0))),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  fof(f14,axiom,(
% 3.36/1.00    ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_partfun1(k6_partfun1(X0),X0))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f20,plain,(
% 3.36/1.00    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 3.36/1.00    inference(pure_predicate_removal,[],[f14])).
% 3.36/1.00  
% 3.36/1.00  fof(f76,plain,(
% 3.36/1.00    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 3.36/1.00    inference(cnf_transformation,[],[f20])).
% 3.36/1.00  
% 3.36/1.00  fof(f13,axiom,(
% 3.36/1.00    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))))),
% 3.36/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.36/1.00  
% 3.36/1.00  fof(f38,plain,(
% 3.36/1.00    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.36/1.00    inference(ennf_transformation,[],[f13])).
% 3.36/1.00  
% 3.36/1.00  fof(f39,plain,(
% 3.36/1.00    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.36/1.00    inference(flattening,[],[f38])).
% 3.36/1.00  
% 3.36/1.00  fof(f75,plain,(
% 3.36/1.00    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.36/1.00    inference(cnf_transformation,[],[f39])).
% 3.36/1.00  
% 3.36/1.00  fof(f92,plain,(
% 3.36/1.00    k2_funct_1(sK2) != sK3),
% 3.36/1.00    inference(cnf_transformation,[],[f50])).
% 3.36/1.00  
% 3.36/1.00  cnf(c_35,negated_conjecture,
% 3.36/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
% 3.36/1.00      inference(cnf_transformation,[],[f86]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1598,plain,
% 3.36/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_13,plain,
% 3.36/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | v1_relat_1(X0) ),
% 3.36/1.00      inference(cnf_transformation,[],[f64]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1604,plain,
% 3.36/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.36/1.00      | v1_relat_1(X0) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_3572,plain,
% 3.36/1.00      ( v1_relat_1(sK3) = iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_1598,c_1604]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_38,negated_conjecture,
% 3.36/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.36/1.00      inference(cnf_transformation,[],[f83]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1596,plain,
% 3.36/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_3573,plain,
% 3.36/1.00      ( v1_relat_1(sK2) = iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_1596,c_1604]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_40,negated_conjecture,
% 3.36/1.00      ( v1_funct_1(sK2) ),
% 3.36/1.00      inference(cnf_transformation,[],[f81]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1595,plain,
% 3.36/1.00      ( v1_funct_1(sK2) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_40]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_6,plain,
% 3.36/1.00      ( ~ v1_funct_1(X0)
% 3.36/1.00      | ~ v1_relat_1(X0)
% 3.36/1.00      | v1_relat_1(k2_funct_1(X0)) ),
% 3.36/1.00      inference(cnf_transformation,[],[f56]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1605,plain,
% 3.36/1.00      ( v1_funct_1(X0) != iProver_top
% 3.36/1.00      | v1_relat_1(X0) != iProver_top
% 3.36/1.00      | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_0,plain,
% 3.36/1.00      ( ~ v1_relat_1(X0)
% 3.36/1.00      | ~ v1_relat_1(X1)
% 3.36/1.00      | ~ v1_relat_1(X2)
% 3.36/1.00      | k5_relat_1(k5_relat_1(X2,X1),X0) = k5_relat_1(X2,k5_relat_1(X1,X0)) ),
% 3.36/1.00      inference(cnf_transformation,[],[f51]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1609,plain,
% 3.36/1.00      ( k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))
% 3.36/1.00      | v1_relat_1(X2) != iProver_top
% 3.36/1.00      | v1_relat_1(X1) != iProver_top
% 3.36/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_4613,plain,
% 3.36/1.00      ( k5_relat_1(k2_funct_1(X0),k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(k2_funct_1(X0),X1),X2)
% 3.36/1.00      | v1_funct_1(X0) != iProver_top
% 3.36/1.00      | v1_relat_1(X0) != iProver_top
% 3.36/1.00      | v1_relat_1(X1) != iProver_top
% 3.36/1.00      | v1_relat_1(X2) != iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_1605,c_1609]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_11097,plain,
% 3.36/1.00      ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
% 3.36/1.00      | v1_relat_1(X0) != iProver_top
% 3.36/1.00      | v1_relat_1(X1) != iProver_top
% 3.36/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_1595,c_4613]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_43,plain,
% 3.36/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1894,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.36/1.00      | v1_relat_1(sK2) ),
% 3.36/1.00      inference(instantiation,[status(thm)],[c_13]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1895,plain,
% 3.36/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.36/1.00      | v1_relat_1(sK2) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_1894]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_11675,plain,
% 3.36/1.00      ( v1_relat_1(X1) != iProver_top
% 3.36/1.00      | v1_relat_1(X0) != iProver_top
% 3.36/1.00      | k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1)) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_11097,c_43,c_1895]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_11676,plain,
% 3.36/1.00      ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
% 3.36/1.00      | v1_relat_1(X0) != iProver_top
% 3.36/1.00      | v1_relat_1(X1) != iProver_top ),
% 3.36/1.00      inference(renaming,[status(thm)],[c_11675]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_11685,plain,
% 3.36/1.00      ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k5_relat_1(k2_funct_1(sK2),sK2),X0)
% 3.36/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_3573,c_11676]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_39,negated_conjecture,
% 3.36/1.00      ( v1_funct_2(sK2,sK0,sK1) ),
% 3.36/1.00      inference(cnf_transformation,[],[f82]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_27,plain,
% 3.36/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.36/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | ~ v2_funct_1(X0)
% 3.36/1.00      | ~ v1_funct_1(X0)
% 3.36/1.00      | k2_relset_1(X1,X2,X0) != X2
% 3.36/1.00      | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(X2)
% 3.36/1.00      | k1_xboole_0 = X2 ),
% 3.36/1.00      inference(cnf_transformation,[],[f80]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_32,negated_conjecture,
% 3.36/1.00      ( v2_funct_1(sK2) ),
% 3.36/1.00      inference(cnf_transformation,[],[f89]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_446,plain,
% 3.36/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.36/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | ~ v1_funct_1(X0)
% 3.36/1.00      | k2_relset_1(X1,X2,X0) != X2
% 3.36/1.00      | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(X2)
% 3.36/1.00      | sK2 != X0
% 3.36/1.00      | k1_xboole_0 = X2 ),
% 3.36/1.00      inference(resolution_lifted,[status(thm)],[c_27,c_32]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_447,plain,
% 3.36/1.00      ( ~ v1_funct_2(sK2,X0,X1)
% 3.36/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | ~ v1_funct_1(sK2)
% 3.36/1.00      | k2_relset_1(X0,X1,sK2) != X1
% 3.36/1.00      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(X1)
% 3.36/1.00      | k1_xboole_0 = X1 ),
% 3.36/1.00      inference(unflattening,[status(thm)],[c_446]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_451,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | ~ v1_funct_2(sK2,X0,X1)
% 3.36/1.00      | k2_relset_1(X0,X1,sK2) != X1
% 3.36/1.00      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(X1)
% 3.36/1.00      | k1_xboole_0 = X1 ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_447,c_40]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_452,plain,
% 3.36/1.00      ( ~ v1_funct_2(sK2,X0,X1)
% 3.36/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | k2_relset_1(X0,X1,sK2) != X1
% 3.36/1.00      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(X1)
% 3.36/1.00      | k1_xboole_0 = X1 ),
% 3.36/1.00      inference(renaming,[status(thm)],[c_451]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_803,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | k2_relset_1(X0,X1,sK2) != X1
% 3.36/1.00      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(X1)
% 3.36/1.00      | sK0 != X0
% 3.36/1.00      | sK1 != X1
% 3.36/1.00      | sK2 != sK2
% 3.36/1.00      | k1_xboole_0 = X1 ),
% 3.36/1.00      inference(resolution_lifted,[status(thm)],[c_39,c_452]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_804,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.36/1.00      | k2_relset_1(sK0,sK1,sK2) != sK1
% 3.36/1.00      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
% 3.36/1.00      | k1_xboole_0 = sK1 ),
% 3.36/1.00      inference(unflattening,[status(thm)],[c_803]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_34,negated_conjecture,
% 3.36/1.00      ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
% 3.36/1.00      inference(cnf_transformation,[],[f87]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_30,negated_conjecture,
% 3.36/1.00      ( k1_xboole_0 != sK1 ),
% 3.36/1.00      inference(cnf_transformation,[],[f91]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_806,plain,
% 3.36/1.00      ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_804,c_38,c_34,c_30]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_11721,plain,
% 3.36/1.00      ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k6_partfun1(sK1),X0)
% 3.36/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.36/1.00      inference(light_normalisation,[status(thm)],[c_11685,c_806]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_11872,plain,
% 3.36/1.00      ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,sK3)) = k5_relat_1(k6_partfun1(sK1),sK3) ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_3572,c_11721]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_3,plain,
% 3.36/1.00      ( ~ v1_relat_1(X0)
% 3.36/1.00      | k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0 ),
% 3.36/1.00      inference(cnf_transformation,[],[f95]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1608,plain,
% 3.36/1.00      ( k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0
% 3.36/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_3745,plain,
% 3.36/1.00      ( k5_relat_1(k6_partfun1(k1_relat_1(sK3)),sK3) = sK3 ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_3572,c_1608]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_14,plain,
% 3.36/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.36/1.00      inference(cnf_transformation,[],[f65]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1603,plain,
% 3.36/1.00      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.36/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_3839,plain,
% 3.36/1.00      ( k1_relset_1(sK1,sK0,sK3) = k1_relat_1(sK3) ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_1598,c_1603]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_22,plain,
% 3.36/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.36/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.36/1.00      | k1_xboole_0 = X2 ),
% 3.36/1.00      inference(cnf_transformation,[],[f68]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_36,negated_conjecture,
% 3.36/1.00      ( v1_funct_2(sK3,sK1,sK0) ),
% 3.36/1.00      inference(cnf_transformation,[],[f85]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_709,plain,
% 3.36/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | k1_relset_1(X1,X2,X0) = X1
% 3.36/1.00      | sK0 != X2
% 3.36/1.00      | sK1 != X1
% 3.36/1.00      | sK3 != X0
% 3.36/1.00      | k1_xboole_0 = X2 ),
% 3.36/1.00      inference(resolution_lifted,[status(thm)],[c_22,c_36]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_710,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.36/1.00      | k1_relset_1(sK1,sK0,sK3) = sK1
% 3.36/1.00      | k1_xboole_0 = sK0 ),
% 3.36/1.00      inference(unflattening,[status(thm)],[c_709]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_31,negated_conjecture,
% 3.36/1.00      ( k1_xboole_0 != sK0 ),
% 3.36/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_712,plain,
% 3.36/1.00      ( k1_relset_1(sK1,sK0,sK3) = sK1 ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_710,c_35,c_31]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_3844,plain,
% 3.36/1.00      ( k1_relat_1(sK3) = sK1 ),
% 3.36/1.00      inference(light_normalisation,[status(thm)],[c_3839,c_712]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_4265,plain,
% 3.36/1.00      ( k5_relat_1(k6_partfun1(sK1),sK3) = sK3 ),
% 3.36/1.00      inference(light_normalisation,[status(thm)],[c_3745,c_3844]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_4,plain,
% 3.36/1.00      ( ~ v1_relat_1(X0)
% 3.36/1.00      | k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0 ),
% 3.36/1.00      inference(cnf_transformation,[],[f96]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1607,plain,
% 3.36/1.00      ( k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0
% 3.36/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_3906,plain,
% 3.36/1.00      ( k5_relat_1(k2_funct_1(X0),k6_partfun1(k2_relat_1(k2_funct_1(X0)))) = k2_funct_1(X0)
% 3.36/1.00      | v1_funct_1(X0) != iProver_top
% 3.36/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_1605,c_1607]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_4953,plain,
% 3.36/1.00      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(k2_relat_1(k2_funct_1(sK2)))) = k2_funct_1(sK2)
% 3.36/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_1595,c_3906]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_9,plain,
% 3.36/1.00      ( ~ v2_funct_1(X0)
% 3.36/1.00      | ~ v1_funct_1(X0)
% 3.36/1.00      | ~ v1_relat_1(X0)
% 3.36/1.00      | k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0) ),
% 3.36/1.00      inference(cnf_transformation,[],[f61]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_515,plain,
% 3.36/1.00      ( ~ v1_funct_1(X0)
% 3.36/1.00      | ~ v1_relat_1(X0)
% 3.36/1.00      | k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0)
% 3.36/1.00      | sK2 != X0 ),
% 3.36/1.00      inference(resolution_lifted,[status(thm)],[c_9,c_32]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_516,plain,
% 3.36/1.00      ( ~ v1_funct_1(sK2)
% 3.36/1.00      | ~ v1_relat_1(sK2)
% 3.36/1.00      | k2_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2) ),
% 3.36/1.00      inference(unflattening,[status(thm)],[c_515]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_518,plain,
% 3.36/1.00      ( ~ v1_relat_1(sK2)
% 3.36/1.00      | k2_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_516,c_40]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1590,plain,
% 3.36/1.00      ( k2_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2)
% 3.36/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_518]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_28,plain,
% 3.36/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.36/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | ~ v2_funct_1(X0)
% 3.36/1.00      | ~ v1_funct_1(X0)
% 3.36/1.00      | k2_relset_1(X1,X2,X0) != X2
% 3.36/1.00      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
% 3.36/1.00      | k1_xboole_0 = X2 ),
% 3.36/1.00      inference(cnf_transformation,[],[f79]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_419,plain,
% 3.36/1.00      ( ~ v1_funct_2(X0,X1,X2)
% 3.36/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | ~ v1_funct_1(X0)
% 3.36/1.00      | k2_relset_1(X1,X2,X0) != X2
% 3.36/1.00      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
% 3.36/1.00      | sK2 != X0
% 3.36/1.00      | k1_xboole_0 = X2 ),
% 3.36/1.00      inference(resolution_lifted,[status(thm)],[c_28,c_32]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_420,plain,
% 3.36/1.00      ( ~ v1_funct_2(sK2,X0,X1)
% 3.36/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | ~ v1_funct_1(sK2)
% 3.36/1.00      | k2_relset_1(X0,X1,sK2) != X1
% 3.36/1.00      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
% 3.36/1.00      | k1_xboole_0 = X1 ),
% 3.36/1.00      inference(unflattening,[status(thm)],[c_419]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_424,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | ~ v1_funct_2(sK2,X0,X1)
% 3.36/1.00      | k2_relset_1(X0,X1,sK2) != X1
% 3.36/1.00      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
% 3.36/1.00      | k1_xboole_0 = X1 ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_420,c_40]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_425,plain,
% 3.36/1.00      ( ~ v1_funct_2(sK2,X0,X1)
% 3.36/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | k2_relset_1(X0,X1,sK2) != X1
% 3.36/1.00      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
% 3.36/1.00      | k1_xboole_0 = X1 ),
% 3.36/1.00      inference(renaming,[status(thm)],[c_424]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_811,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | k2_relset_1(X0,X1,sK2) != X1
% 3.36/1.00      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
% 3.36/1.00      | sK0 != X0
% 3.36/1.00      | sK1 != X1
% 3.36/1.00      | sK2 != sK2
% 3.36/1.00      | k1_xboole_0 = X1 ),
% 3.36/1.00      inference(resolution_lifted,[status(thm)],[c_39,c_425]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_812,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.36/1.00      | k2_relset_1(sK0,sK1,sK2) != sK1
% 3.36/1.00      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
% 3.36/1.00      | k1_xboole_0 = sK1 ),
% 3.36/1.00      inference(unflattening,[status(thm)],[c_811]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_814,plain,
% 3.36/1.00      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_812,c_38,c_34,c_30]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1656,plain,
% 3.36/1.00      ( k2_relat_1(k6_partfun1(sK0)) = k1_relat_1(sK2)
% 3.36/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.36/1.00      inference(light_normalisation,[status(thm)],[c_1590,c_814]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1,plain,
% 3.36/1.00      ( k2_relat_1(k6_partfun1(X0)) = X0 ),
% 3.36/1.00      inference(cnf_transformation,[],[f93]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1657,plain,
% 3.36/1.00      ( k1_relat_1(sK2) = sK0 | v1_relat_1(sK2) != iProver_top ),
% 3.36/1.00      inference(demodulation,[status(thm)],[c_1656,c_1]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1806,plain,
% 3.36/1.00      ( ~ v1_relat_1(sK2) | k1_relat_1(sK2) = sK0 ),
% 3.36/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_1657]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_2804,plain,
% 3.36/1.00      ( k1_relat_1(sK2) = sK0 ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_1657,c_38,c_1806,c_1894]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_7,plain,
% 3.36/1.00      ( ~ v2_funct_1(X0)
% 3.36/1.00      | ~ v1_funct_1(X0)
% 3.36/1.00      | ~ v1_relat_1(X0)
% 3.36/1.00      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 3.36/1.00      inference(cnf_transformation,[],[f59]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_543,plain,
% 3.36/1.00      ( ~ v1_funct_1(X0)
% 3.36/1.00      | ~ v1_relat_1(X0)
% 3.36/1.00      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 3.36/1.00      | sK2 != X0 ),
% 3.36/1.00      inference(resolution_lifted,[status(thm)],[c_7,c_32]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_544,plain,
% 3.36/1.00      ( ~ v1_funct_1(sK2)
% 3.36/1.00      | ~ v1_relat_1(sK2)
% 3.36/1.00      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.36/1.00      inference(unflattening,[status(thm)],[c_543]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_546,plain,
% 3.36/1.00      ( ~ v1_relat_1(sK2)
% 3.36/1.00      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_544,c_40]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1588,plain,
% 3.36/1.00      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 3.36/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_546]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_2211,plain,
% 3.36/1.00      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_1588,c_40,c_38,c_544,c_1894]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_2807,plain,
% 3.36/1.00      ( k2_relat_1(k2_funct_1(sK2)) = sK0 ),
% 3.36/1.00      inference(demodulation,[status(thm)],[c_2804,c_2211]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_4956,plain,
% 3.36/1.00      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(sK0)) = k2_funct_1(sK2)
% 3.36/1.00      | v1_relat_1(sK2) != iProver_top ),
% 3.36/1.00      inference(light_normalisation,[status(thm)],[c_4953,c_2807]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_6394,plain,
% 3.36/1.00      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(sK0)) = k2_funct_1(sK2) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_4956,c_43,c_1895]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_26,plain,
% 3.36/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.36/1.00      | ~ v1_funct_1(X0)
% 3.36/1.00      | ~ v1_funct_1(X3)
% 3.36/1.00      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 3.36/1.00      inference(cnf_transformation,[],[f77]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1599,plain,
% 3.36/1.00      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 3.36/1.00      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 3.36/1.00      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.36/1.00      | v1_funct_1(X5) != iProver_top
% 3.36/1.00      | v1_funct_1(X4) != iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_4665,plain,
% 3.36/1.00      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 3.36/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.36/1.00      | v1_funct_1(X2) != iProver_top
% 3.36/1.00      | v1_funct_1(sK3) != iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_1598,c_1599]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_37,negated_conjecture,
% 3.36/1.00      ( v1_funct_1(sK3) ),
% 3.36/1.00      inference(cnf_transformation,[],[f84]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_44,plain,
% 3.36/1.00      ( v1_funct_1(sK3) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_5082,plain,
% 3.36/1.00      ( v1_funct_1(X2) != iProver_top
% 3.36/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.36/1.00      | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_4665,c_44]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_5083,plain,
% 3.36/1.00      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 3.36/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.36/1.00      | v1_funct_1(X2) != iProver_top ),
% 3.36/1.00      inference(renaming,[status(thm)],[c_5082]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_5094,plain,
% 3.36/1.00      ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
% 3.36/1.00      | v1_funct_1(sK2) != iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_1596,c_5083]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1967,plain,
% 3.36/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
% 3.36/1.00      | ~ v1_funct_1(X0)
% 3.36/1.00      | ~ v1_funct_1(sK3)
% 3.36/1.00      | k1_partfun1(X1,X2,X3,X4,X0,sK3) = k5_relat_1(X0,sK3) ),
% 3.36/1.00      inference(instantiation,[status(thm)],[c_26]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_2283,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 3.36/1.00      | ~ v1_funct_1(sK3)
% 3.36/1.00      | ~ v1_funct_1(sK2)
% 3.36/1.00      | k1_partfun1(X2,X3,X0,X1,sK2,sK3) = k5_relat_1(sK2,sK3) ),
% 3.36/1.00      inference(instantiation,[status(thm)],[c_1967]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_2818,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.36/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | ~ v1_funct_1(sK3)
% 3.36/1.00      | ~ v1_funct_1(sK2)
% 3.36/1.00      | k1_partfun1(X0,X1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3) ),
% 3.36/1.00      inference(instantiation,[status(thm)],[c_2283]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_4256,plain,
% 3.36/1.00      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.36/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.36/1.00      | ~ v1_funct_1(sK3)
% 3.36/1.00      | ~ v1_funct_1(sK2)
% 3.36/1.00      | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3) ),
% 3.36/1.00      inference(instantiation,[status(thm)],[c_2818]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_5230,plain,
% 3.36/1.00      ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_5094,c_40,c_38,c_37,c_35,c_4256]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_16,plain,
% 3.36/1.00      ( ~ r2_relset_1(X0,X1,X2,X3)
% 3.36/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.36/1.00      | X3 = X2 ),
% 3.36/1.00      inference(cnf_transformation,[],[f66]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_33,negated_conjecture,
% 3.36/1.00      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
% 3.36/1.00      inference(cnf_transformation,[],[f88]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_403,plain,
% 3.36/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | X3 = X0
% 3.36/1.00      | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
% 3.36/1.00      | k6_partfun1(sK0) != X3
% 3.36/1.00      | sK0 != X2
% 3.36/1.00      | sK0 != X1 ),
% 3.36/1.00      inference(resolution_lifted,[status(thm)],[c_16,c_33]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_404,plain,
% 3.36/1.00      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.36/1.00      | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.36/1.00      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 3.36/1.00      inference(unflattening,[status(thm)],[c_403]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_25,plain,
% 3.36/1.00      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 3.36/1.00      inference(cnf_transformation,[],[f76]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_412,plain,
% 3.36/1.00      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.36/1.00      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 3.36/1.00      inference(forward_subsumption_resolution,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_404,c_25]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1594,plain,
% 3.36/1.00      ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.36/1.00      | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_412]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_5233,plain,
% 3.36/1.00      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
% 3.36/1.00      | m1_subset_1(k5_relat_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
% 3.36/1.00      inference(demodulation,[status(thm)],[c_5230,c_1594]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_41,plain,
% 3.36/1.00      ( v1_funct_1(sK2) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_40]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_46,plain,
% 3.36/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_23,plain,
% 3.36/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.36/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.36/1.00      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 3.36/1.00      | ~ v1_funct_1(X0)
% 3.36/1.00      | ~ v1_funct_1(X3) ),
% 3.36/1.00      inference(cnf_transformation,[],[f75]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_1602,plain,
% 3.36/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.36/1.00      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5))) != iProver_top
% 3.36/1.00      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2))) = iProver_top
% 3.36/1.00      | v1_funct_1(X0) != iProver_top
% 3.36/1.00      | v1_funct_1(X3) != iProver_top ),
% 3.36/1.00      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_5235,plain,
% 3.36/1.00      ( m1_subset_1(k5_relat_1(sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top
% 3.36/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.36/1.00      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.36/1.00      | v1_funct_1(sK3) != iProver_top
% 3.36/1.00      | v1_funct_1(sK2) != iProver_top ),
% 3.36/1.00      inference(superposition,[status(thm)],[c_5230,c_1602]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_6854,plain,
% 3.36/1.00      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
% 3.36/1.00      inference(global_propositional_subsumption,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_5233,c_41,c_43,c_44,c_46,c_5235]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_11894,plain,
% 3.36/1.00      ( k2_funct_1(sK2) = sK3 ),
% 3.36/1.00      inference(light_normalisation,
% 3.36/1.00                [status(thm)],
% 3.36/1.00                [c_11872,c_4265,c_6394,c_6854]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(c_29,negated_conjecture,
% 3.36/1.00      ( k2_funct_1(sK2) != sK3 ),
% 3.36/1.00      inference(cnf_transformation,[],[f92]) ).
% 3.36/1.00  
% 3.36/1.00  cnf(contradiction,plain,
% 3.36/1.00      ( $false ),
% 3.36/1.00      inference(minisat,[status(thm)],[c_11894,c_29]) ).
% 3.36/1.00  
% 3.36/1.00  
% 3.36/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.36/1.00  
% 3.36/1.00  ------                               Statistics
% 3.36/1.00  
% 3.36/1.00  ------ General
% 3.36/1.00  
% 3.36/1.00  abstr_ref_over_cycles:                  0
% 3.36/1.00  abstr_ref_under_cycles:                 0
% 3.36/1.00  gc_basic_clause_elim:                   0
% 3.36/1.00  forced_gc_time:                         0
% 3.36/1.00  parsing_time:                           0.011
% 3.36/1.00  unif_index_cands_time:                  0.
% 3.36/1.00  unif_index_add_time:                    0.
% 3.36/1.00  orderings_time:                         0.
% 3.36/1.00  out_proof_time:                         0.015
% 3.36/1.00  total_time:                             0.378
% 3.36/1.00  num_of_symbols:                         52
% 3.36/1.00  num_of_terms:                           13542
% 3.36/1.00  
% 3.36/1.00  ------ Preprocessing
% 3.36/1.00  
% 3.36/1.00  num_of_splits:                          0
% 3.36/1.00  num_of_split_atoms:                     0
% 3.36/1.00  num_of_reused_defs:                     0
% 3.36/1.00  num_eq_ax_congr_red:                    2
% 3.36/1.00  num_of_sem_filtered_clauses:            1
% 3.36/1.00  num_of_subtypes:                        0
% 3.36/1.00  monotx_restored_types:                  0
% 3.36/1.00  sat_num_of_epr_types:                   0
% 3.36/1.00  sat_num_of_non_cyclic_types:            0
% 3.36/1.00  sat_guarded_non_collapsed_types:        0
% 3.36/1.00  num_pure_diseq_elim:                    0
% 3.36/1.00  simp_replaced_by:                       0
% 3.36/1.00  res_preprocessed:                       192
% 3.36/1.00  prep_upred:                             0
% 3.36/1.00  prep_unflattend:                        74
% 3.36/1.00  smt_new_axioms:                         0
% 3.36/1.00  pred_elim_cands:                        3
% 3.36/1.00  pred_elim:                              3
% 3.36/1.00  pred_elim_cl:                           1
% 3.36/1.00  pred_elim_cycles:                       5
% 3.36/1.00  merged_defs:                            0
% 3.36/1.00  merged_defs_ncl:                        0
% 3.36/1.00  bin_hyper_res:                          0
% 3.36/1.00  prep_cycles:                            4
% 3.36/1.00  pred_elim_time:                         0.011
% 3.36/1.00  splitting_time:                         0.
% 3.36/1.00  sem_filter_time:                        0.
% 3.36/1.00  monotx_time:                            0.001
% 3.36/1.00  subtype_inf_time:                       0.
% 3.36/1.00  
% 3.36/1.00  ------ Problem properties
% 3.36/1.00  
% 3.36/1.00  clauses:                                40
% 3.36/1.00  conjectures:                            8
% 3.36/1.00  epr:                                    4
% 3.36/1.00  horn:                                   38
% 3.36/1.00  ground:                                 25
% 3.36/1.00  unary:                                  15
% 3.36/1.00  binary:                                 11
% 3.36/1.00  lits:                                   92
% 3.36/1.00  lits_eq:                                44
% 3.36/1.00  fd_pure:                                0
% 3.36/1.00  fd_pseudo:                              0
% 3.36/1.00  fd_cond:                                2
% 3.36/1.00  fd_pseudo_cond:                         0
% 3.36/1.00  ac_symbols:                             0
% 3.36/1.00  
% 3.36/1.00  ------ Propositional Solver
% 3.36/1.00  
% 3.36/1.00  prop_solver_calls:                      29
% 3.36/1.00  prop_fast_solver_calls:                 1458
% 3.36/1.00  smt_solver_calls:                       0
% 3.36/1.00  smt_fast_solver_calls:                  0
% 3.36/1.00  prop_num_of_clauses:                    5737
% 3.36/1.00  prop_preprocess_simplified:             11870
% 3.36/1.00  prop_fo_subsumed:                       90
% 3.36/1.00  prop_solver_time:                       0.
% 3.36/1.00  smt_solver_time:                        0.
% 3.36/1.00  smt_fast_solver_time:                   0.
% 3.36/1.00  prop_fast_solver_time:                  0.
% 3.36/1.00  prop_unsat_core_time:                   0.
% 3.36/1.00  
% 3.36/1.00  ------ QBF
% 3.36/1.00  
% 3.36/1.00  qbf_q_res:                              0
% 3.36/1.00  qbf_num_tautologies:                    0
% 3.36/1.00  qbf_prep_cycles:                        0
% 3.36/1.00  
% 3.36/1.00  ------ BMC1
% 3.36/1.00  
% 3.36/1.00  bmc1_current_bound:                     -1
% 3.36/1.00  bmc1_last_solved_bound:                 -1
% 3.36/1.00  bmc1_unsat_core_size:                   -1
% 3.36/1.00  bmc1_unsat_core_parents_size:           -1
% 3.36/1.00  bmc1_merge_next_fun:                    0
% 3.36/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.36/1.00  
% 3.36/1.00  ------ Instantiation
% 3.36/1.00  
% 3.36/1.00  inst_num_of_clauses:                    1545
% 3.36/1.00  inst_num_in_passive:                    348
% 3.36/1.00  inst_num_in_active:                     589
% 3.36/1.00  inst_num_in_unprocessed:                608
% 3.36/1.00  inst_num_of_loops:                      650
% 3.36/1.00  inst_num_of_learning_restarts:          0
% 3.36/1.00  inst_num_moves_active_passive:          60
% 3.36/1.00  inst_lit_activity:                      0
% 3.36/1.00  inst_lit_activity_moves:                2
% 3.36/1.00  inst_num_tautologies:                   0
% 3.36/1.00  inst_num_prop_implied:                  0
% 3.36/1.00  inst_num_existing_simplified:           0
% 3.36/1.00  inst_num_eq_res_simplified:             0
% 3.36/1.00  inst_num_child_elim:                    0
% 3.36/1.00  inst_num_of_dismatching_blockings:      29
% 3.36/1.00  inst_num_of_non_proper_insts:           710
% 3.36/1.00  inst_num_of_duplicates:                 0
% 3.36/1.00  inst_inst_num_from_inst_to_res:         0
% 3.36/1.00  inst_dismatching_checking_time:         0.
% 3.36/1.00  
% 3.36/1.00  ------ Resolution
% 3.36/1.00  
% 3.36/1.00  res_num_of_clauses:                     0
% 3.36/1.00  res_num_in_passive:                     0
% 3.36/1.00  res_num_in_active:                      0
% 3.36/1.00  res_num_of_loops:                       196
% 3.36/1.00  res_forward_subset_subsumed:            22
% 3.36/1.00  res_backward_subset_subsumed:           0
% 3.36/1.00  res_forward_subsumed:                   0
% 3.36/1.00  res_backward_subsumed:                  2
% 3.36/1.00  res_forward_subsumption_resolution:     1
% 3.36/1.00  res_backward_subsumption_resolution:    0
% 3.36/1.00  res_clause_to_clause_subsumption:       726
% 3.36/1.00  res_orphan_elimination:                 0
% 3.36/1.00  res_tautology_del:                      31
% 3.36/1.00  res_num_eq_res_simplified:              0
% 3.36/1.00  res_num_sel_changes:                    0
% 3.36/1.00  res_moves_from_active_to_pass:          0
% 3.36/1.00  
% 3.36/1.00  ------ Superposition
% 3.36/1.00  
% 3.36/1.00  sup_time_total:                         0.
% 3.36/1.00  sup_time_generating:                    0.
% 3.36/1.00  sup_time_sim_full:                      0.
% 3.36/1.00  sup_time_sim_immed:                     0.
% 3.36/1.00  
% 3.36/1.00  sup_num_of_clauses:                     275
% 3.36/1.00  sup_num_in_active:                      124
% 3.36/1.00  sup_num_in_passive:                     151
% 3.36/1.00  sup_num_of_loops:                       128
% 3.36/1.00  sup_fw_superposition:                   163
% 3.36/1.00  sup_bw_superposition:                   98
% 3.36/1.00  sup_immediate_simplified:               39
% 3.36/1.00  sup_given_eliminated:                   1
% 3.36/1.00  comparisons_done:                       0
% 3.36/1.00  comparisons_avoided:                    0
% 3.36/1.00  
% 3.36/1.00  ------ Simplifications
% 3.36/1.00  
% 3.36/1.00  
% 3.36/1.00  sim_fw_subset_subsumed:                 0
% 3.36/1.00  sim_bw_subset_subsumed:                 2
% 3.36/1.00  sim_fw_subsumed:                        3
% 3.36/1.00  sim_bw_subsumed:                        0
% 3.36/1.00  sim_fw_subsumption_res:                 0
% 3.36/1.00  sim_bw_subsumption_res:                 0
% 3.36/1.00  sim_tautology_del:                      0
% 3.36/1.00  sim_eq_tautology_del:                   5
% 3.36/1.00  sim_eq_res_simp:                        0
% 3.36/1.00  sim_fw_demodulated:                     8
% 3.36/1.00  sim_bw_demodulated:                     9
% 3.36/1.00  sim_light_normalised:                   46
% 3.36/1.00  sim_joinable_taut:                      0
% 3.36/1.00  sim_joinable_simp:                      0
% 3.36/1.00  sim_ac_normalised:                      0
% 3.36/1.00  sim_smt_subsumption:                    0
% 3.36/1.00  
%------------------------------------------------------------------------------
