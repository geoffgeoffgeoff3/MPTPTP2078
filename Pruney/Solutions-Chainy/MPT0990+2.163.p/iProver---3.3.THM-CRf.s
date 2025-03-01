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
% DateTime   : Thu Dec  3 12:03:31 EST 2020

% Result     : Theorem 7.54s
% Output     : CNFRefutation 7.54s
% Verified   : 
% Statistics : Number of formulae       :  186 (1526 expanded)
%              Number of clauses        :  109 ( 464 expanded)
%              Number of leaves         :   22 ( 389 expanded)
%              Depth                    :   28
%              Number of atoms          :  692 (12459 expanded)
%              Number of equality atoms :  341 (4583 expanded)
%              Maximal formula depth    :   15 (   5 average)
%              Maximal clause size      :   24 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] :
      ( v2_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0] : v2_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f16,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f73,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f16])).

fof(f87,plain,(
    ! [X0] : v2_funct_1(k6_partfun1(X0)) ),
    inference(definition_unfolding,[],[f52,f73])).

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

fof(f41,plain,(
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

fof(f42,plain,(
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
    inference(flattening,[],[f41])).

fof(f46,plain,(
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

fof(f45,plain,
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

fof(f47,plain,
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f42,f46,f45])).

fof(f77,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f47])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f81,plain,(
    k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f47])).

fof(f80,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f47])).

fof(f13,axiom,(
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

fof(f33,plain,(
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
    inference(ennf_transformation,[],[f13])).

fof(f34,plain,(
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
    inference(flattening,[],[f33])).

fof(f44,plain,(
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
    inference(nnf_transformation,[],[f34])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f63,plain,(
    ! [X2,X0,X1] :
      ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2,X3] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f58,plain,(
    ! [X2,X0,X3,X1] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f48,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f2,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f50,plain,(
    ! [X0] :
      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(X3,X1,X0)
            & v1_funct_1(X3) )
         => ( r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))
           => k2_relset_1(X0,X1,X2) = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( k2_relset_1(X0,X1,X2) = X1
          | ~ r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          | ~ v1_funct_2(X3,X1,X0)
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f40,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( k2_relset_1(X0,X1,X2) = X1
          | ~ r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          | ~ v1_funct_2(X3,X1,X0)
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f39])).

fof(f74,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_relset_1(X0,X1,X2) = X1
      | ~ r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ v1_funct_2(X3,X1,X0)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f82,plain,(
    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f47])).

fof(f75,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f47])).

fof(f76,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f47])).

fof(f78,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f47])).

fof(f79,plain,(
    v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f47])).

fof(f84,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f47])).

fof(f5,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( k2_relat_1(X1) = k1_relat_1(X0)
              & v2_funct_1(k5_relat_1(X1,X0)) )
           => ( v2_funct_1(X0)
              & v2_funct_1(X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_funct_1(X0)
            & v2_funct_1(X1) )
          | k2_relat_1(X1) != k1_relat_1(X0)
          | ~ v2_funct_1(k5_relat_1(X1,X0))
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v2_funct_1(X0)
            & v2_funct_1(X1) )
          | k2_relat_1(X1) != k1_relat_1(X0)
          | ~ v2_funct_1(k5_relat_1(X1,X0))
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f22])).

fof(f54,plain,(
    ! [X0,X1] :
      ( v2_funct_1(X0)
      | k2_relat_1(X1) != k1_relat_1(X0)
      | ~ v2_funct_1(k5_relat_1(X1,X0))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f38,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f37])).

fof(f72,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f31,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f30])).

fof(f43,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f31])).

fof(f59,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r2_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f11,axiom,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f11])).

fof(f90,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(definition_unfolding,[],[f61,f73])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f36,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f35])).

fof(f71,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f6,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( k6_relat_1(k2_relat_1(X0)) = k5_relat_1(X1,X0)
              & k2_relat_1(X1) = k1_relat_1(X0)
              & v2_funct_1(X0) )
           => k2_funct_1(X0) = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k6_relat_1(k2_relat_1(X0)) != k5_relat_1(X1,X0)
          | k2_relat_1(X1) != k1_relat_1(X0)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k6_relat_1(k2_relat_1(X0)) != k5_relat_1(X1,X0)
          | k2_relat_1(X1) != k1_relat_1(X0)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f24])).

fof(f55,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X0) = X1
      | k6_relat_1(k2_relat_1(X0)) != k5_relat_1(X1,X0)
      | k2_relat_1(X1) != k1_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f89,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X0) = X1
      | k5_relat_1(X1,X0) != k6_partfun1(k2_relat_1(X0))
      | k2_relat_1(X1) != k1_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f55,f73])).

fof(f7,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => k2_funct_1(k2_funct_1(X0)) = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( k2_funct_1(k2_funct_1(X0)) = X0
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f27,plain,(
    ! [X0] :
      ( k2_funct_1(k2_funct_1(X0)) = X0
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f26])).

fof(f56,plain,(
    ! [X0] :
      ( k2_funct_1(k2_funct_1(X0)) = X0
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f86,plain,(
    k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_3,plain,
    ( v2_funct_1(k6_partfun1(X0)) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_1279,plain,
    ( v2_funct_1(k6_partfun1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_35,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1255,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1273,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2240,plain,
    ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1255,c_1273])).

cnf(c_31,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_2241,plain,
    ( k2_relat_1(sK2) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_2240,c_31])).

cnf(c_32,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_1258,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_21,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_1263,plain,
    ( k1_relset_1(X0,X1,X2) = X0
    | k1_xboole_0 = X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_4237,plain,
    ( k1_relset_1(sK1,sK0,sK3) = sK1
    | sK0 = k1_xboole_0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1258,c_1263])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X2) = k1_relset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1270,plain,
    ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2928,plain,
    ( k8_relset_1(sK1,sK0,sK3,sK0) = k1_relset_1(sK1,sK0,sK3) ),
    inference(superposition,[status(thm)],[c_1258,c_1270])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1272,plain,
    ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2288,plain,
    ( k8_relset_1(sK1,sK0,sK3,X0) = k10_relat_1(sK3,X0) ),
    inference(superposition,[status(thm)],[c_1258,c_1272])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_1282,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_2282,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1258,c_1282])).

cnf(c_1,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_2402,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_2403,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2402])).

cnf(c_2523,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2282,c_2403])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1280,plain,
    ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_2527,plain,
    ( k10_relat_1(sK3,k2_relat_1(sK3)) = k1_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_2523,c_1280])).

cnf(c_2239,plain,
    ( k2_relset_1(sK1,sK0,sK3) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1258,c_1273])).

cnf(c_25,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X3,X1,X0)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X1,X0,X3) = X0 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_30,negated_conjecture,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_431,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X2,X1,X1,X2,X3,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X1,X2,X0) = X2
    | k6_partfun1(X2) != k6_partfun1(sK0)
    | sK0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_30])).

cnf(c_432,plain,
    ( ~ v1_funct_2(X0,X1,sK0)
    | ~ v1_funct_2(X2,sK0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X2)
    | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X1,sK0,X0) = sK0
    | k6_partfun1(sK0) != k6_partfun1(sK0) ),
    inference(unflattening,[status(thm)],[c_431])).

cnf(c_519,plain,
    ( ~ v1_funct_2(X0,X1,sK0)
    | ~ v1_funct_2(X2,sK0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X2)
    | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X1,sK0,X0) = sK0 ),
    inference(equality_resolution_simp,[status(thm)],[c_432])).

cnf(c_1250,plain,
    ( k1_partfun1(sK0,X0,X0,sK0,X1,X2) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X0,sK0,X2) = sK0
    | v1_funct_2(X2,X0,sK0) != iProver_top
    | v1_funct_2(X1,sK0,X0) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK0))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_519])).

cnf(c_1750,plain,
    ( k2_relset_1(sK1,sK0,sK3) = sK0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | v1_funct_2(sK2,sK0,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1250])).

cnf(c_37,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_38,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_36,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_39,plain,
    ( v1_funct_2(sK2,sK0,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_40,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_34,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_41,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_33,negated_conjecture,
    ( v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_42,plain,
    ( v1_funct_2(sK3,sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_43,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_2075,plain,
    ( k2_relset_1(sK1,sK0,sK3) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1750,c_38,c_39,c_40,c_41,c_42,c_43])).

cnf(c_2242,plain,
    ( k2_relat_1(sK3) = sK0 ),
    inference(light_normalisation,[status(thm)],[c_2239,c_2075])).

cnf(c_2528,plain,
    ( k10_relat_1(sK3,sK0) = k1_relat_1(sK3) ),
    inference(light_normalisation,[status(thm)],[c_2527,c_2242])).

cnf(c_2931,plain,
    ( k1_relset_1(sK1,sK0,sK3) = k1_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_2928,c_2288,c_2528])).

cnf(c_4240,plain,
    ( k1_relat_1(sK3) = sK1
    | sK0 = k1_xboole_0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4237,c_2931])).

cnf(c_28,negated_conjecture,
    ( k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f84])).

cnf(c_710,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_739,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_710])).

cnf(c_711,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1364,plain,
    ( sK0 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK0 ),
    inference(instantiation,[status(thm)],[c_711])).

cnf(c_1365,plain,
    ( sK0 != k1_xboole_0
    | k1_xboole_0 = sK0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1364])).

cnf(c_6214,plain,
    ( k1_relat_1(sK3) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4240,c_42,c_28,c_739,c_1365])).

cnf(c_5,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | v2_funct_1(X1)
    | ~ v2_funct_1(k5_relat_1(X0,X1))
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | k1_relat_1(X1) != k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1277,plain,
    ( k1_relat_1(X0) != k2_relat_1(X1)
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) = iProver_top
    | v2_funct_1(k5_relat_1(X1,X0)) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_6218,plain,
    ( k2_relat_1(X0) != sK1
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v2_funct_1(k5_relat_1(X0,sK3)) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_6214,c_1277])).

cnf(c_19508,plain,
    ( v1_relat_1(X0) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v2_funct_1(k5_relat_1(X0,sK3)) != iProver_top
    | k2_relat_1(X0) != sK1
    | v1_funct_1(X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6218,c_41,c_2282,c_2403])).

cnf(c_19509,plain,
    ( k2_relat_1(X0) != sK1
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(k5_relat_1(X0,sK3)) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_19508])).

cnf(c_19514,plain,
    ( v1_funct_1(sK2) != iProver_top
    | v2_funct_1(k5_relat_1(sK2,sK3)) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2241,c_19509])).

cnf(c_24,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1260,plain,
    ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X4) != iProver_top
    | v1_funct_1(X5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_2769,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1258,c_1260])).

cnf(c_2935,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2769,c_41])).

cnf(c_2936,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_2935])).

cnf(c_2943,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1255,c_2936])).

cnf(c_12,plain,
    ( ~ r2_relset_1(X0,X1,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | X3 = X2 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_418,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | X3 = X0
    | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
    | k6_partfun1(sK0) != X3
    | sK0 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_30])).

cnf(c_419,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_418])).

cnf(c_13,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_427,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_419,c_13])).

cnf(c_1251,plain,
    ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_427])).

cnf(c_22,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1366,plain,
    ( m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_22])).

cnf(c_2013,plain,
    ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1251,c_37,c_35,c_34,c_32,c_427,c_1366])).

cnf(c_2944,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
    | v1_funct_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2943,c_2013])).

cnf(c_3870,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2944,c_38])).

cnf(c_19516,plain,
    ( v1_funct_1(sK2) != iProver_top
    | v2_funct_1(k6_partfun1(sK0)) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_19514,c_3870])).

cnf(c_1281,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_2283,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1255,c_1282])).

cnf(c_2530,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1281,c_2283])).

cnf(c_19700,plain,
    ( v2_funct_1(sK3) = iProver_top
    | v2_funct_1(k6_partfun1(sK0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_19516,c_38,c_2530])).

cnf(c_19701,plain,
    ( v2_funct_1(k6_partfun1(sK0)) != iProver_top
    | v2_funct_1(sK3) = iProver_top ),
    inference(renaming,[status(thm)],[c_19700])).

cnf(c_19704,plain,
    ( v2_funct_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1279,c_19701])).

cnf(c_7,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,X1) != k6_partfun1(k2_relat_1(X1))
    | k2_funct_1(X1) = X0
    | k1_relat_1(X1) != k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_1275,plain,
    ( k5_relat_1(X0,X1) != k6_partfun1(k2_relat_1(X1))
    | k2_funct_1(X1) = X0
    | k1_relat_1(X1) != k2_relat_1(X0)
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v2_funct_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_5410,plain,
    ( k2_funct_1(sK3) = sK2
    | k6_partfun1(k2_relat_1(sK3)) != k6_partfun1(sK0)
    | k1_relat_1(sK3) != k2_relat_1(sK2)
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK3) != iProver_top
    | v1_relat_1(sK3) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3870,c_1275])).

cnf(c_5411,plain,
    ( k2_funct_1(sK3) = sK2
    | k6_partfun1(sK0) != k6_partfun1(sK0)
    | k1_relat_1(sK3) != sK1
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK3) != iProver_top
    | v1_relat_1(sK3) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5410,c_2241,c_2242])).

cnf(c_5412,plain,
    ( k2_funct_1(sK3) = sK2
    | k1_relat_1(sK3) != sK1
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK3) != iProver_top
    | v1_relat_1(sK3) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_5411])).

cnf(c_5888,plain,
    ( k2_funct_1(sK3) = sK2
    | v2_funct_1(sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5412,c_38,c_41,c_42,c_28,c_739,c_1365,c_2282,c_2403,c_2530,c_4240])).

cnf(c_20034,plain,
    ( k2_funct_1(sK3) = sK2 ),
    inference(superposition,[status(thm)],[c_19704,c_5888])).

cnf(c_1256,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_8,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_funct_1(k2_funct_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1274,plain,
    ( k2_funct_1(k2_funct_1(X0)) = X0
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_3475,plain,
    ( k2_funct_1(k2_funct_1(sK3)) = sK3
    | v2_funct_1(sK3) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1256,c_1274])).

cnf(c_2626,plain,
    ( ~ v1_funct_1(sK3)
    | ~ v2_funct_1(sK3)
    | ~ v1_relat_1(sK3)
    | k2_funct_1(k2_funct_1(sK3)) = sK3 ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_2627,plain,
    ( k2_funct_1(k2_funct_1(sK3)) = sK3
    | v1_funct_1(sK3) != iProver_top
    | v2_funct_1(sK3) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2626])).

cnf(c_3782,plain,
    ( v2_funct_1(sK3) != iProver_top
    | k2_funct_1(k2_funct_1(sK3)) = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3475,c_41,c_2282,c_2403,c_2627])).

cnf(c_3783,plain,
    ( k2_funct_1(k2_funct_1(sK3)) = sK3
    | v2_funct_1(sK3) != iProver_top ),
    inference(renaming,[status(thm)],[c_3782])).

cnf(c_20035,plain,
    ( k2_funct_1(k2_funct_1(sK3)) = sK3 ),
    inference(superposition,[status(thm)],[c_19704,c_3783])).

cnf(c_20036,plain,
    ( k2_funct_1(sK2) = sK3 ),
    inference(demodulation,[status(thm)],[c_20034,c_20035])).

cnf(c_26,negated_conjecture,
    ( k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f86])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_20036,c_26])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:34:57 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 7.54/1.50  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 7.54/1.50  
% 7.54/1.50  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.54/1.50  
% 7.54/1.50  ------  iProver source info
% 7.54/1.50  
% 7.54/1.50  git: date: 2020-06-30 10:37:57 +0100
% 7.54/1.50  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.54/1.50  git: non_committed_changes: false
% 7.54/1.50  git: last_make_outside_of_git: false
% 7.54/1.50  
% 7.54/1.50  ------ 
% 7.54/1.50  
% 7.54/1.50  ------ Input Options
% 7.54/1.50  
% 7.54/1.50  --out_options                           all
% 7.54/1.50  --tptp_safe_out                         true
% 7.54/1.50  --problem_path                          ""
% 7.54/1.50  --include_path                          ""
% 7.54/1.50  --clausifier                            res/vclausify_rel
% 7.54/1.50  --clausifier_options                    ""
% 7.54/1.50  --stdin                                 false
% 7.54/1.50  --stats_out                             all
% 7.54/1.50  
% 7.54/1.50  ------ General Options
% 7.54/1.50  
% 7.54/1.50  --fof                                   false
% 7.54/1.50  --time_out_real                         305.
% 7.54/1.50  --time_out_virtual                      -1.
% 7.54/1.50  --symbol_type_check                     false
% 7.54/1.50  --clausify_out                          false
% 7.54/1.50  --sig_cnt_out                           false
% 7.54/1.50  --trig_cnt_out                          false
% 7.54/1.50  --trig_cnt_out_tolerance                1.
% 7.54/1.50  --trig_cnt_out_sk_spl                   false
% 7.54/1.50  --abstr_cl_out                          false
% 7.54/1.50  
% 7.54/1.50  ------ Global Options
% 7.54/1.50  
% 7.54/1.50  --schedule                              default
% 7.54/1.50  --add_important_lit                     false
% 7.54/1.50  --prop_solver_per_cl                    1000
% 7.54/1.50  --min_unsat_core                        false
% 7.54/1.50  --soft_assumptions                      false
% 7.54/1.50  --soft_lemma_size                       3
% 7.54/1.50  --prop_impl_unit_size                   0
% 7.54/1.50  --prop_impl_unit                        []
% 7.54/1.50  --share_sel_clauses                     true
% 7.54/1.50  --reset_solvers                         false
% 7.54/1.50  --bc_imp_inh                            [conj_cone]
% 7.54/1.50  --conj_cone_tolerance                   3.
% 7.54/1.50  --extra_neg_conj                        none
% 7.54/1.50  --large_theory_mode                     true
% 7.54/1.50  --prolific_symb_bound                   200
% 7.54/1.50  --lt_threshold                          2000
% 7.54/1.50  --clause_weak_htbl                      true
% 7.54/1.50  --gc_record_bc_elim                     false
% 7.54/1.50  
% 7.54/1.50  ------ Preprocessing Options
% 7.54/1.50  
% 7.54/1.50  --preprocessing_flag                    true
% 7.54/1.50  --time_out_prep_mult                    0.1
% 7.54/1.50  --splitting_mode                        input
% 7.54/1.50  --splitting_grd                         true
% 7.54/1.50  --splitting_cvd                         false
% 7.54/1.50  --splitting_cvd_svl                     false
% 7.54/1.50  --splitting_nvd                         32
% 7.54/1.50  --sub_typing                            true
% 7.54/1.50  --prep_gs_sim                           true
% 7.54/1.50  --prep_unflatten                        true
% 7.54/1.50  --prep_res_sim                          true
% 7.54/1.50  --prep_upred                            true
% 7.54/1.50  --prep_sem_filter                       exhaustive
% 7.54/1.50  --prep_sem_filter_out                   false
% 7.54/1.50  --pred_elim                             true
% 7.54/1.50  --res_sim_input                         true
% 7.54/1.50  --eq_ax_congr_red                       true
% 7.54/1.50  --pure_diseq_elim                       true
% 7.54/1.50  --brand_transform                       false
% 7.54/1.50  --non_eq_to_eq                          false
% 7.54/1.50  --prep_def_merge                        true
% 7.54/1.50  --prep_def_merge_prop_impl              false
% 7.54/1.50  --prep_def_merge_mbd                    true
% 7.54/1.50  --prep_def_merge_tr_red                 false
% 7.54/1.50  --prep_def_merge_tr_cl                  false
% 7.54/1.50  --smt_preprocessing                     true
% 7.54/1.50  --smt_ac_axioms                         fast
% 7.54/1.50  --preprocessed_out                      false
% 7.54/1.50  --preprocessed_stats                    false
% 7.54/1.50  
% 7.54/1.50  ------ Abstraction refinement Options
% 7.54/1.50  
% 7.54/1.50  --abstr_ref                             []
% 7.54/1.50  --abstr_ref_prep                        false
% 7.54/1.50  --abstr_ref_until_sat                   false
% 7.54/1.50  --abstr_ref_sig_restrict                funpre
% 7.54/1.50  --abstr_ref_af_restrict_to_split_sk     false
% 7.54/1.50  --abstr_ref_under                       []
% 7.54/1.50  
% 7.54/1.50  ------ SAT Options
% 7.54/1.50  
% 7.54/1.50  --sat_mode                              false
% 7.54/1.50  --sat_fm_restart_options                ""
% 7.54/1.50  --sat_gr_def                            false
% 7.54/1.50  --sat_epr_types                         true
% 7.54/1.50  --sat_non_cyclic_types                  false
% 7.54/1.50  --sat_finite_models                     false
% 7.54/1.50  --sat_fm_lemmas                         false
% 7.54/1.50  --sat_fm_prep                           false
% 7.54/1.50  --sat_fm_uc_incr                        true
% 7.54/1.50  --sat_out_model                         small
% 7.54/1.50  --sat_out_clauses                       false
% 7.54/1.50  
% 7.54/1.50  ------ QBF Options
% 7.54/1.50  
% 7.54/1.50  --qbf_mode                              false
% 7.54/1.50  --qbf_elim_univ                         false
% 7.54/1.50  --qbf_dom_inst                          none
% 7.54/1.50  --qbf_dom_pre_inst                      false
% 7.54/1.50  --qbf_sk_in                             false
% 7.54/1.50  --qbf_pred_elim                         true
% 7.54/1.50  --qbf_split                             512
% 7.54/1.50  
% 7.54/1.50  ------ BMC1 Options
% 7.54/1.50  
% 7.54/1.50  --bmc1_incremental                      false
% 7.54/1.50  --bmc1_axioms                           reachable_all
% 7.54/1.50  --bmc1_min_bound                        0
% 7.54/1.50  --bmc1_max_bound                        -1
% 7.54/1.50  --bmc1_max_bound_default                -1
% 7.54/1.50  --bmc1_symbol_reachability              true
% 7.54/1.50  --bmc1_property_lemmas                  false
% 7.54/1.50  --bmc1_k_induction                      false
% 7.54/1.50  --bmc1_non_equiv_states                 false
% 7.54/1.50  --bmc1_deadlock                         false
% 7.54/1.50  --bmc1_ucm                              false
% 7.54/1.50  --bmc1_add_unsat_core                   none
% 7.54/1.50  --bmc1_unsat_core_children              false
% 7.54/1.50  --bmc1_unsat_core_extrapolate_axioms    false
% 7.54/1.50  --bmc1_out_stat                         full
% 7.54/1.50  --bmc1_ground_init                      false
% 7.54/1.50  --bmc1_pre_inst_next_state              false
% 7.54/1.50  --bmc1_pre_inst_state                   false
% 7.54/1.50  --bmc1_pre_inst_reach_state             false
% 7.54/1.50  --bmc1_out_unsat_core                   false
% 7.54/1.50  --bmc1_aig_witness_out                  false
% 7.54/1.50  --bmc1_verbose                          false
% 7.54/1.50  --bmc1_dump_clauses_tptp                false
% 7.54/1.50  --bmc1_dump_unsat_core_tptp             false
% 7.54/1.50  --bmc1_dump_file                        -
% 7.54/1.50  --bmc1_ucm_expand_uc_limit              128
% 7.54/1.50  --bmc1_ucm_n_expand_iterations          6
% 7.54/1.50  --bmc1_ucm_extend_mode                  1
% 7.54/1.50  --bmc1_ucm_init_mode                    2
% 7.54/1.50  --bmc1_ucm_cone_mode                    none
% 7.54/1.50  --bmc1_ucm_reduced_relation_type        0
% 7.54/1.50  --bmc1_ucm_relax_model                  4
% 7.54/1.50  --bmc1_ucm_full_tr_after_sat            true
% 7.54/1.50  --bmc1_ucm_expand_neg_assumptions       false
% 7.54/1.50  --bmc1_ucm_layered_model                none
% 7.54/1.50  --bmc1_ucm_max_lemma_size               10
% 7.54/1.50  
% 7.54/1.50  ------ AIG Options
% 7.54/1.50  
% 7.54/1.50  --aig_mode                              false
% 7.54/1.50  
% 7.54/1.50  ------ Instantiation Options
% 7.54/1.50  
% 7.54/1.50  --instantiation_flag                    true
% 7.54/1.50  --inst_sos_flag                         true
% 7.54/1.50  --inst_sos_phase                        true
% 7.54/1.50  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.54/1.50  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.54/1.50  --inst_lit_sel_side                     num_symb
% 7.54/1.50  --inst_solver_per_active                1400
% 7.54/1.50  --inst_solver_calls_frac                1.
% 7.54/1.50  --inst_passive_queue_type               priority_queues
% 7.54/1.50  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.54/1.50  --inst_passive_queues_freq              [25;2]
% 7.54/1.50  --inst_dismatching                      true
% 7.54/1.50  --inst_eager_unprocessed_to_passive     true
% 7.54/1.50  --inst_prop_sim_given                   true
% 7.54/1.50  --inst_prop_sim_new                     false
% 7.54/1.50  --inst_subs_new                         false
% 7.54/1.50  --inst_eq_res_simp                      false
% 7.54/1.50  --inst_subs_given                       false
% 7.54/1.50  --inst_orphan_elimination               true
% 7.54/1.50  --inst_learning_loop_flag               true
% 7.54/1.50  --inst_learning_start                   3000
% 7.54/1.50  --inst_learning_factor                  2
% 7.54/1.50  --inst_start_prop_sim_after_learn       3
% 7.54/1.50  --inst_sel_renew                        solver
% 7.54/1.50  --inst_lit_activity_flag                true
% 7.54/1.50  --inst_restr_to_given                   false
% 7.54/1.50  --inst_activity_threshold               500
% 7.54/1.50  --inst_out_proof                        true
% 7.54/1.50  
% 7.54/1.50  ------ Resolution Options
% 7.54/1.50  
% 7.54/1.50  --resolution_flag                       true
% 7.54/1.50  --res_lit_sel                           adaptive
% 7.54/1.50  --res_lit_sel_side                      none
% 7.54/1.50  --res_ordering                          kbo
% 7.54/1.50  --res_to_prop_solver                    active
% 7.54/1.50  --res_prop_simpl_new                    false
% 7.54/1.50  --res_prop_simpl_given                  true
% 7.54/1.50  --res_passive_queue_type                priority_queues
% 7.54/1.50  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.54/1.50  --res_passive_queues_freq               [15;5]
% 7.54/1.50  --res_forward_subs                      full
% 7.54/1.50  --res_backward_subs                     full
% 7.54/1.50  --res_forward_subs_resolution           true
% 7.54/1.50  --res_backward_subs_resolution          true
% 7.54/1.50  --res_orphan_elimination                true
% 7.54/1.50  --res_time_limit                        2.
% 7.54/1.50  --res_out_proof                         true
% 7.54/1.50  
% 7.54/1.50  ------ Superposition Options
% 7.54/1.50  
% 7.54/1.50  --superposition_flag                    true
% 7.54/1.50  --sup_passive_queue_type                priority_queues
% 7.54/1.50  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.54/1.50  --sup_passive_queues_freq               [8;1;4]
% 7.54/1.50  --demod_completeness_check              fast
% 7.54/1.50  --demod_use_ground                      true
% 7.54/1.50  --sup_to_prop_solver                    passive
% 7.54/1.50  --sup_prop_simpl_new                    true
% 7.54/1.50  --sup_prop_simpl_given                  true
% 7.54/1.50  --sup_fun_splitting                     true
% 7.54/1.50  --sup_smt_interval                      50000
% 7.54/1.50  
% 7.54/1.50  ------ Superposition Simplification Setup
% 7.54/1.50  
% 7.54/1.50  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 7.54/1.50  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 7.54/1.50  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 7.54/1.50  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 7.54/1.50  --sup_full_triv                         [TrivRules;PropSubs]
% 7.54/1.50  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 7.54/1.50  --sup_full_bw                           [BwDemod;BwSubsumption]
% 7.54/1.50  --sup_immed_triv                        [TrivRules]
% 7.54/1.50  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.54/1.50  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.54/1.50  --sup_immed_bw_main                     []
% 7.54/1.50  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 7.54/1.50  --sup_input_triv                        [Unflattening;TrivRules]
% 7.54/1.50  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.54/1.50  --sup_input_bw                          []
% 7.54/1.50  
% 7.54/1.50  ------ Combination Options
% 7.54/1.50  
% 7.54/1.50  --comb_res_mult                         3
% 7.54/1.50  --comb_sup_mult                         2
% 7.54/1.50  --comb_inst_mult                        10
% 7.54/1.50  
% 7.54/1.50  ------ Debug Options
% 7.54/1.50  
% 7.54/1.50  --dbg_backtrace                         false
% 7.54/1.50  --dbg_dump_prop_clauses                 false
% 7.54/1.50  --dbg_dump_prop_clauses_file            -
% 7.54/1.50  --dbg_out_stat                          false
% 7.54/1.50  ------ Parsing...
% 7.54/1.50  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.54/1.50  
% 7.54/1.50  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 7.54/1.50  
% 7.54/1.50  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.54/1.50  
% 7.54/1.50  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 7.54/1.50  ------ Proving...
% 7.54/1.50  ------ Problem Properties 
% 7.54/1.50  
% 7.54/1.50  
% 7.54/1.50  clauses                                 37
% 7.54/1.50  conjectures                             11
% 7.54/1.50  EPR                                     7
% 7.54/1.50  Horn                                    33
% 7.54/1.50  unary                                   15
% 7.54/1.50  binary                                  6
% 7.54/1.50  lits                                    108
% 7.54/1.50  lits eq                                 30
% 7.54/1.50  fd_pure                                 0
% 7.54/1.50  fd_pseudo                               0
% 7.54/1.50  fd_cond                                 3
% 7.54/1.50  fd_pseudo_cond                          1
% 7.54/1.50  AC symbols                              0
% 7.54/1.50  
% 7.54/1.50  ------ Schedule dynamic 5 is on 
% 7.54/1.50  
% 7.54/1.50  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 7.54/1.50  
% 7.54/1.50  
% 7.54/1.50  ------ 
% 7.54/1.50  Current options:
% 7.54/1.50  ------ 
% 7.54/1.50  
% 7.54/1.50  ------ Input Options
% 7.54/1.50  
% 7.54/1.50  --out_options                           all
% 7.54/1.50  --tptp_safe_out                         true
% 7.54/1.50  --problem_path                          ""
% 7.54/1.50  --include_path                          ""
% 7.54/1.50  --clausifier                            res/vclausify_rel
% 7.54/1.50  --clausifier_options                    ""
% 7.54/1.50  --stdin                                 false
% 7.54/1.50  --stats_out                             all
% 7.54/1.50  
% 7.54/1.50  ------ General Options
% 7.54/1.50  
% 7.54/1.50  --fof                                   false
% 7.54/1.50  --time_out_real                         305.
% 7.54/1.50  --time_out_virtual                      -1.
% 7.54/1.50  --symbol_type_check                     false
% 7.54/1.50  --clausify_out                          false
% 7.54/1.50  --sig_cnt_out                           false
% 7.54/1.50  --trig_cnt_out                          false
% 7.54/1.50  --trig_cnt_out_tolerance                1.
% 7.54/1.50  --trig_cnt_out_sk_spl                   false
% 7.54/1.50  --abstr_cl_out                          false
% 7.54/1.50  
% 7.54/1.50  ------ Global Options
% 7.54/1.50  
% 7.54/1.50  --schedule                              default
% 7.54/1.50  --add_important_lit                     false
% 7.54/1.50  --prop_solver_per_cl                    1000
% 7.54/1.50  --min_unsat_core                        false
% 7.54/1.50  --soft_assumptions                      false
% 7.54/1.50  --soft_lemma_size                       3
% 7.54/1.50  --prop_impl_unit_size                   0
% 7.54/1.50  --prop_impl_unit                        []
% 7.54/1.50  --share_sel_clauses                     true
% 7.54/1.50  --reset_solvers                         false
% 7.54/1.50  --bc_imp_inh                            [conj_cone]
% 7.54/1.50  --conj_cone_tolerance                   3.
% 7.54/1.50  --extra_neg_conj                        none
% 7.54/1.50  --large_theory_mode                     true
% 7.54/1.50  --prolific_symb_bound                   200
% 7.54/1.50  --lt_threshold                          2000
% 7.54/1.50  --clause_weak_htbl                      true
% 7.54/1.50  --gc_record_bc_elim                     false
% 7.54/1.50  
% 7.54/1.50  ------ Preprocessing Options
% 7.54/1.50  
% 7.54/1.50  --preprocessing_flag                    true
% 7.54/1.50  --time_out_prep_mult                    0.1
% 7.54/1.50  --splitting_mode                        input
% 7.54/1.50  --splitting_grd                         true
% 7.54/1.50  --splitting_cvd                         false
% 7.54/1.50  --splitting_cvd_svl                     false
% 7.54/1.50  --splitting_nvd                         32
% 7.54/1.50  --sub_typing                            true
% 7.54/1.50  --prep_gs_sim                           true
% 7.54/1.50  --prep_unflatten                        true
% 7.54/1.50  --prep_res_sim                          true
% 7.54/1.50  --prep_upred                            true
% 7.54/1.50  --prep_sem_filter                       exhaustive
% 7.54/1.50  --prep_sem_filter_out                   false
% 7.54/1.50  --pred_elim                             true
% 7.54/1.50  --res_sim_input                         true
% 7.54/1.50  --eq_ax_congr_red                       true
% 7.54/1.50  --pure_diseq_elim                       true
% 7.54/1.50  --brand_transform                       false
% 7.54/1.50  --non_eq_to_eq                          false
% 7.54/1.50  --prep_def_merge                        true
% 7.54/1.50  --prep_def_merge_prop_impl              false
% 7.54/1.50  --prep_def_merge_mbd                    true
% 7.54/1.50  --prep_def_merge_tr_red                 false
% 7.54/1.50  --prep_def_merge_tr_cl                  false
% 7.54/1.50  --smt_preprocessing                     true
% 7.54/1.50  --smt_ac_axioms                         fast
% 7.54/1.50  --preprocessed_out                      false
% 7.54/1.50  --preprocessed_stats                    false
% 7.54/1.50  
% 7.54/1.50  ------ Abstraction refinement Options
% 7.54/1.50  
% 7.54/1.50  --abstr_ref                             []
% 7.54/1.50  --abstr_ref_prep                        false
% 7.54/1.50  --abstr_ref_until_sat                   false
% 7.54/1.50  --abstr_ref_sig_restrict                funpre
% 7.54/1.50  --abstr_ref_af_restrict_to_split_sk     false
% 7.54/1.50  --abstr_ref_under                       []
% 7.54/1.50  
% 7.54/1.50  ------ SAT Options
% 7.54/1.50  
% 7.54/1.50  --sat_mode                              false
% 7.54/1.50  --sat_fm_restart_options                ""
% 7.54/1.50  --sat_gr_def                            false
% 7.54/1.50  --sat_epr_types                         true
% 7.54/1.50  --sat_non_cyclic_types                  false
% 7.54/1.50  --sat_finite_models                     false
% 7.54/1.50  --sat_fm_lemmas                         false
% 7.54/1.50  --sat_fm_prep                           false
% 7.54/1.50  --sat_fm_uc_incr                        true
% 7.54/1.50  --sat_out_model                         small
% 7.54/1.50  --sat_out_clauses                       false
% 7.54/1.50  
% 7.54/1.50  ------ QBF Options
% 7.54/1.50  
% 7.54/1.50  --qbf_mode                              false
% 7.54/1.50  --qbf_elim_univ                         false
% 7.54/1.50  --qbf_dom_inst                          none
% 7.54/1.50  --qbf_dom_pre_inst                      false
% 7.54/1.50  --qbf_sk_in                             false
% 7.54/1.50  --qbf_pred_elim                         true
% 7.54/1.50  --qbf_split                             512
% 7.54/1.50  
% 7.54/1.50  ------ BMC1 Options
% 7.54/1.50  
% 7.54/1.50  --bmc1_incremental                      false
% 7.54/1.50  --bmc1_axioms                           reachable_all
% 7.54/1.50  --bmc1_min_bound                        0
% 7.54/1.50  --bmc1_max_bound                        -1
% 7.54/1.50  --bmc1_max_bound_default                -1
% 7.54/1.50  --bmc1_symbol_reachability              true
% 7.54/1.50  --bmc1_property_lemmas                  false
% 7.54/1.50  --bmc1_k_induction                      false
% 7.54/1.50  --bmc1_non_equiv_states                 false
% 7.54/1.50  --bmc1_deadlock                         false
% 7.54/1.50  --bmc1_ucm                              false
% 7.54/1.50  --bmc1_add_unsat_core                   none
% 7.54/1.50  --bmc1_unsat_core_children              false
% 7.54/1.50  --bmc1_unsat_core_extrapolate_axioms    false
% 7.54/1.50  --bmc1_out_stat                         full
% 7.54/1.50  --bmc1_ground_init                      false
% 7.54/1.50  --bmc1_pre_inst_next_state              false
% 7.54/1.50  --bmc1_pre_inst_state                   false
% 7.54/1.50  --bmc1_pre_inst_reach_state             false
% 7.54/1.50  --bmc1_out_unsat_core                   false
% 7.54/1.50  --bmc1_aig_witness_out                  false
% 7.54/1.50  --bmc1_verbose                          false
% 7.54/1.50  --bmc1_dump_clauses_tptp                false
% 7.54/1.50  --bmc1_dump_unsat_core_tptp             false
% 7.54/1.50  --bmc1_dump_file                        -
% 7.54/1.50  --bmc1_ucm_expand_uc_limit              128
% 7.54/1.50  --bmc1_ucm_n_expand_iterations          6
% 7.54/1.50  --bmc1_ucm_extend_mode                  1
% 7.54/1.50  --bmc1_ucm_init_mode                    2
% 7.54/1.50  --bmc1_ucm_cone_mode                    none
% 7.54/1.50  --bmc1_ucm_reduced_relation_type        0
% 7.54/1.50  --bmc1_ucm_relax_model                  4
% 7.54/1.50  --bmc1_ucm_full_tr_after_sat            true
% 7.54/1.50  --bmc1_ucm_expand_neg_assumptions       false
% 7.54/1.50  --bmc1_ucm_layered_model                none
% 7.54/1.50  --bmc1_ucm_max_lemma_size               10
% 7.54/1.50  
% 7.54/1.50  ------ AIG Options
% 7.54/1.50  
% 7.54/1.50  --aig_mode                              false
% 7.54/1.50  
% 7.54/1.50  ------ Instantiation Options
% 7.54/1.50  
% 7.54/1.50  --instantiation_flag                    true
% 7.54/1.50  --inst_sos_flag                         true
% 7.54/1.50  --inst_sos_phase                        true
% 7.54/1.50  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.54/1.50  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.54/1.50  --inst_lit_sel_side                     none
% 7.54/1.50  --inst_solver_per_active                1400
% 7.54/1.50  --inst_solver_calls_frac                1.
% 7.54/1.50  --inst_passive_queue_type               priority_queues
% 7.54/1.50  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.54/1.50  --inst_passive_queues_freq              [25;2]
% 7.54/1.50  --inst_dismatching                      true
% 7.54/1.50  --inst_eager_unprocessed_to_passive     true
% 7.54/1.50  --inst_prop_sim_given                   true
% 7.54/1.50  --inst_prop_sim_new                     false
% 7.54/1.50  --inst_subs_new                         false
% 7.54/1.50  --inst_eq_res_simp                      false
% 7.54/1.50  --inst_subs_given                       false
% 7.54/1.50  --inst_orphan_elimination               true
% 7.54/1.50  --inst_learning_loop_flag               true
% 7.54/1.50  --inst_learning_start                   3000
% 7.54/1.50  --inst_learning_factor                  2
% 7.54/1.50  --inst_start_prop_sim_after_learn       3
% 7.54/1.50  --inst_sel_renew                        solver
% 7.54/1.50  --inst_lit_activity_flag                true
% 7.54/1.50  --inst_restr_to_given                   false
% 7.54/1.50  --inst_activity_threshold               500
% 7.54/1.50  --inst_out_proof                        true
% 7.54/1.50  
% 7.54/1.50  ------ Resolution Options
% 7.54/1.50  
% 7.54/1.50  --resolution_flag                       false
% 7.54/1.50  --res_lit_sel                           adaptive
% 7.54/1.50  --res_lit_sel_side                      none
% 7.54/1.50  --res_ordering                          kbo
% 7.54/1.50  --res_to_prop_solver                    active
% 7.54/1.50  --res_prop_simpl_new                    false
% 7.54/1.50  --res_prop_simpl_given                  true
% 7.54/1.50  --res_passive_queue_type                priority_queues
% 7.54/1.50  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.54/1.50  --res_passive_queues_freq               [15;5]
% 7.54/1.50  --res_forward_subs                      full
% 7.54/1.50  --res_backward_subs                     full
% 7.54/1.50  --res_forward_subs_resolution           true
% 7.54/1.50  --res_backward_subs_resolution          true
% 7.54/1.50  --res_orphan_elimination                true
% 7.54/1.50  --res_time_limit                        2.
% 7.54/1.50  --res_out_proof                         true
% 7.54/1.50  
% 7.54/1.50  ------ Superposition Options
% 7.54/1.50  
% 7.54/1.50  --superposition_flag                    true
% 7.54/1.50  --sup_passive_queue_type                priority_queues
% 7.54/1.50  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.54/1.50  --sup_passive_queues_freq               [8;1;4]
% 7.54/1.50  --demod_completeness_check              fast
% 7.54/1.50  --demod_use_ground                      true
% 7.54/1.50  --sup_to_prop_solver                    passive
% 7.54/1.50  --sup_prop_simpl_new                    true
% 7.54/1.50  --sup_prop_simpl_given                  true
% 7.54/1.50  --sup_fun_splitting                     true
% 7.54/1.50  --sup_smt_interval                      50000
% 7.54/1.50  
% 7.54/1.50  ------ Superposition Simplification Setup
% 7.54/1.50  
% 7.54/1.50  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 7.54/1.50  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 7.54/1.50  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 7.54/1.50  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 7.54/1.50  --sup_full_triv                         [TrivRules;PropSubs]
% 7.54/1.50  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 7.54/1.50  --sup_full_bw                           [BwDemod;BwSubsumption]
% 7.54/1.50  --sup_immed_triv                        [TrivRules]
% 7.54/1.50  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.54/1.50  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.54/1.50  --sup_immed_bw_main                     []
% 7.54/1.50  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 7.54/1.50  --sup_input_triv                        [Unflattening;TrivRules]
% 7.54/1.50  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.54/1.50  --sup_input_bw                          []
% 7.54/1.50  
% 7.54/1.50  ------ Combination Options
% 7.54/1.50  
% 7.54/1.50  --comb_res_mult                         3
% 7.54/1.50  --comb_sup_mult                         2
% 7.54/1.50  --comb_inst_mult                        10
% 7.54/1.50  
% 7.54/1.50  ------ Debug Options
% 7.54/1.50  
% 7.54/1.50  --dbg_backtrace                         false
% 7.54/1.50  --dbg_dump_prop_clauses                 false
% 7.54/1.50  --dbg_dump_prop_clauses_file            -
% 7.54/1.50  --dbg_out_stat                          false
% 7.54/1.50  
% 7.54/1.50  
% 7.54/1.50  
% 7.54/1.50  
% 7.54/1.50  ------ Proving...
% 7.54/1.50  
% 7.54/1.50  
% 7.54/1.50  % SZS status Theorem for theBenchmark.p
% 7.54/1.50  
% 7.54/1.50  % SZS output start CNFRefutation for theBenchmark.p
% 7.54/1.50  
% 7.54/1.50  fof(f4,axiom,(
% 7.54/1.50    ! [X0] : (v2_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f52,plain,(
% 7.54/1.50    ( ! [X0] : (v2_funct_1(k6_relat_1(X0))) )),
% 7.54/1.50    inference(cnf_transformation,[],[f4])).
% 7.54/1.50  
% 7.54/1.50  fof(f16,axiom,(
% 7.54/1.50    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f73,plain,(
% 7.54/1.50    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 7.54/1.50    inference(cnf_transformation,[],[f16])).
% 7.54/1.50  
% 7.54/1.50  fof(f87,plain,(
% 7.54/1.50    ( ! [X0] : (v2_funct_1(k6_partfun1(X0))) )),
% 7.54/1.50    inference(definition_unfolding,[],[f52,f73])).
% 7.54/1.50  
% 7.54/1.50  fof(f18,conjecture,(
% 7.54/1.50    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f19,negated_conjecture,(
% 7.54/1.50    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 7.54/1.50    inference(negated_conjecture,[],[f18])).
% 7.54/1.50  
% 7.54/1.50  fof(f41,plain,(
% 7.54/1.50    ? [X0,X1,X2] : (? [X3] : (((k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & (v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 7.54/1.50    inference(ennf_transformation,[],[f19])).
% 7.54/1.50  
% 7.54/1.50  fof(f42,plain,(
% 7.54/1.50    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 7.54/1.50    inference(flattening,[],[f41])).
% 7.54/1.50  
% 7.54/1.50  fof(f46,plain,(
% 7.54/1.50    ( ! [X2,X0,X1] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (k2_funct_1(X2) != sK3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,sK3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(sK3,X1,X0) & v1_funct_1(sK3))) )),
% 7.54/1.50    introduced(choice_axiom,[])).
% 7.54/1.50  
% 7.54/1.50  fof(f45,plain,(
% 7.54/1.50    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (k2_funct_1(sK2) != X3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,X3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(X3,sK1,sK0) & v1_funct_1(X3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 7.54/1.50    introduced(choice_axiom,[])).
% 7.54/1.50  
% 7.54/1.50  fof(f47,plain,(
% 7.54/1.50    (k2_funct_1(sK2) != sK3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(sK3,sK1,sK0) & v1_funct_1(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 7.54/1.50    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f42,f46,f45])).
% 7.54/1.50  
% 7.54/1.50  fof(f77,plain,(
% 7.54/1.50    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  fof(f8,axiom,(
% 7.54/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f28,plain,(
% 7.54/1.50    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.54/1.50    inference(ennf_transformation,[],[f8])).
% 7.54/1.50  
% 7.54/1.50  fof(f57,plain,(
% 7.54/1.50    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.54/1.50    inference(cnf_transformation,[],[f28])).
% 7.54/1.50  
% 7.54/1.50  fof(f81,plain,(
% 7.54/1.50    k2_relset_1(sK0,sK1,sK2) = sK1),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  fof(f80,plain,(
% 7.54/1.50    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  fof(f13,axiom,(
% 7.54/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f33,plain,(
% 7.54/1.50    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.54/1.50    inference(ennf_transformation,[],[f13])).
% 7.54/1.50  
% 7.54/1.50  fof(f34,plain,(
% 7.54/1.50    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.54/1.50    inference(flattening,[],[f33])).
% 7.54/1.50  
% 7.54/1.50  fof(f44,plain,(
% 7.54/1.50    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.54/1.50    inference(nnf_transformation,[],[f34])).
% 7.54/1.50  
% 7.54/1.50  fof(f64,plain,(
% 7.54/1.50    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.54/1.50    inference(cnf_transformation,[],[f44])).
% 7.54/1.50  
% 7.54/1.50  fof(f12,axiom,(
% 7.54/1.50    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0)))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f32,plain,(
% 7.54/1.50    ! [X0,X1,X2] : ((k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.54/1.50    inference(ennf_transformation,[],[f12])).
% 7.54/1.50  
% 7.54/1.50  fof(f63,plain,(
% 7.54/1.50    ( ! [X2,X0,X1] : (k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.54/1.50    inference(cnf_transformation,[],[f32])).
% 7.54/1.50  
% 7.54/1.50  fof(f9,axiom,(
% 7.54/1.50    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f29,plain,(
% 7.54/1.50    ! [X0,X1,X2,X3] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.54/1.50    inference(ennf_transformation,[],[f9])).
% 7.54/1.50  
% 7.54/1.50  fof(f58,plain,(
% 7.54/1.50    ( ! [X2,X0,X3,X1] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.54/1.50    inference(cnf_transformation,[],[f29])).
% 7.54/1.50  
% 7.54/1.50  fof(f1,axiom,(
% 7.54/1.50    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f20,plain,(
% 7.54/1.50    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 7.54/1.50    inference(ennf_transformation,[],[f1])).
% 7.54/1.50  
% 7.54/1.50  fof(f48,plain,(
% 7.54/1.50    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 7.54/1.50    inference(cnf_transformation,[],[f20])).
% 7.54/1.50  
% 7.54/1.50  fof(f2,axiom,(
% 7.54/1.50    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f49,plain,(
% 7.54/1.50    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 7.54/1.50    inference(cnf_transformation,[],[f2])).
% 7.54/1.50  
% 7.54/1.50  fof(f3,axiom,(
% 7.54/1.50    ! [X0] : (v1_relat_1(X0) => k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f21,plain,(
% 7.54/1.50    ! [X0] : (k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) | ~v1_relat_1(X0))),
% 7.54/1.50    inference(ennf_transformation,[],[f3])).
% 7.54/1.50  
% 7.54/1.50  fof(f50,plain,(
% 7.54/1.50    ( ! [X0] : (k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 7.54/1.50    inference(cnf_transformation,[],[f21])).
% 7.54/1.50  
% 7.54/1.50  fof(f17,axiom,(
% 7.54/1.50    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) => k2_relset_1(X0,X1,X2) = X1)))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f39,plain,(
% 7.54/1.50    ! [X0,X1,X2] : (! [X3] : ((k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 7.54/1.50    inference(ennf_transformation,[],[f17])).
% 7.54/1.50  
% 7.54/1.50  fof(f40,plain,(
% 7.54/1.50    ! [X0,X1,X2] : (! [X3] : (k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 7.54/1.50    inference(flattening,[],[f39])).
% 7.54/1.50  
% 7.54/1.50  fof(f74,plain,(
% 7.54/1.50    ( ! [X2,X0,X3,X1] : (k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 7.54/1.50    inference(cnf_transformation,[],[f40])).
% 7.54/1.50  
% 7.54/1.50  fof(f82,plain,(
% 7.54/1.50    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0))),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  fof(f75,plain,(
% 7.54/1.50    v1_funct_1(sK2)),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  fof(f76,plain,(
% 7.54/1.50    v1_funct_2(sK2,sK0,sK1)),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  fof(f78,plain,(
% 7.54/1.50    v1_funct_1(sK3)),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  fof(f79,plain,(
% 7.54/1.50    v1_funct_2(sK3,sK1,sK0)),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  fof(f84,plain,(
% 7.54/1.50    k1_xboole_0 != sK0),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  fof(f5,axiom,(
% 7.54/1.50    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k2_relat_1(X1) = k1_relat_1(X0) & v2_funct_1(k5_relat_1(X1,X0))) => (v2_funct_1(X0) & v2_funct_1(X1)))))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f22,plain,(
% 7.54/1.50    ! [X0] : (! [X1] : (((v2_funct_1(X0) & v2_funct_1(X1)) | (k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(k5_relat_1(X1,X0)))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 7.54/1.50    inference(ennf_transformation,[],[f5])).
% 7.54/1.50  
% 7.54/1.50  fof(f23,plain,(
% 7.54/1.50    ! [X0] : (! [X1] : ((v2_funct_1(X0) & v2_funct_1(X1)) | k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(k5_relat_1(X1,X0)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 7.54/1.50    inference(flattening,[],[f22])).
% 7.54/1.50  
% 7.54/1.50  fof(f54,plain,(
% 7.54/1.50    ( ! [X0,X1] : (v2_funct_1(X0) | k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(k5_relat_1(X1,X0)) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 7.54/1.50    inference(cnf_transformation,[],[f23])).
% 7.54/1.50  
% 7.54/1.50  fof(f15,axiom,(
% 7.54/1.50    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f37,plain,(
% 7.54/1.50    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 7.54/1.50    inference(ennf_transformation,[],[f15])).
% 7.54/1.50  
% 7.54/1.50  fof(f38,plain,(
% 7.54/1.50    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 7.54/1.50    inference(flattening,[],[f37])).
% 7.54/1.50  
% 7.54/1.50  fof(f72,plain,(
% 7.54/1.50    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 7.54/1.50    inference(cnf_transformation,[],[f38])).
% 7.54/1.50  
% 7.54/1.50  fof(f10,axiom,(
% 7.54/1.50    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f30,plain,(
% 7.54/1.50    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 7.54/1.50    inference(ennf_transformation,[],[f10])).
% 7.54/1.50  
% 7.54/1.50  fof(f31,plain,(
% 7.54/1.50    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.54/1.50    inference(flattening,[],[f30])).
% 7.54/1.50  
% 7.54/1.50  fof(f43,plain,(
% 7.54/1.50    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 7.54/1.50    inference(nnf_transformation,[],[f31])).
% 7.54/1.50  
% 7.54/1.50  fof(f59,plain,(
% 7.54/1.50    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 7.54/1.50    inference(cnf_transformation,[],[f43])).
% 7.54/1.50  
% 7.54/1.50  fof(f11,axiom,(
% 7.54/1.50    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f61,plain,(
% 7.54/1.50    ( ! [X0] : (m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 7.54/1.50    inference(cnf_transformation,[],[f11])).
% 7.54/1.50  
% 7.54/1.50  fof(f90,plain,(
% 7.54/1.50    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 7.54/1.50    inference(definition_unfolding,[],[f61,f73])).
% 7.54/1.50  
% 7.54/1.50  fof(f14,axiom,(
% 7.54/1.50    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f35,plain,(
% 7.54/1.50    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 7.54/1.50    inference(ennf_transformation,[],[f14])).
% 7.54/1.50  
% 7.54/1.50  fof(f36,plain,(
% 7.54/1.50    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 7.54/1.50    inference(flattening,[],[f35])).
% 7.54/1.50  
% 7.54/1.50  fof(f71,plain,(
% 7.54/1.50    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 7.54/1.50    inference(cnf_transformation,[],[f36])).
% 7.54/1.50  
% 7.54/1.50  fof(f6,axiom,(
% 7.54/1.50    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k6_relat_1(k2_relat_1(X0)) = k5_relat_1(X1,X0) & k2_relat_1(X1) = k1_relat_1(X0) & v2_funct_1(X0)) => k2_funct_1(X0) = X1)))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f24,plain,(
% 7.54/1.50    ! [X0] : (! [X1] : ((k2_funct_1(X0) = X1 | (k6_relat_1(k2_relat_1(X0)) != k5_relat_1(X1,X0) | k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(X0))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 7.54/1.50    inference(ennf_transformation,[],[f6])).
% 7.54/1.50  
% 7.54/1.50  fof(f25,plain,(
% 7.54/1.50    ! [X0] : (! [X1] : (k2_funct_1(X0) = X1 | k6_relat_1(k2_relat_1(X0)) != k5_relat_1(X1,X0) | k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 7.54/1.50    inference(flattening,[],[f24])).
% 7.54/1.50  
% 7.54/1.50  fof(f55,plain,(
% 7.54/1.50    ( ! [X0,X1] : (k2_funct_1(X0) = X1 | k6_relat_1(k2_relat_1(X0)) != k5_relat_1(X1,X0) | k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 7.54/1.50    inference(cnf_transformation,[],[f25])).
% 7.54/1.50  
% 7.54/1.50  fof(f89,plain,(
% 7.54/1.50    ( ! [X0,X1] : (k2_funct_1(X0) = X1 | k5_relat_1(X1,X0) != k6_partfun1(k2_relat_1(X0)) | k2_relat_1(X1) != k1_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 7.54/1.50    inference(definition_unfolding,[],[f55,f73])).
% 7.54/1.50  
% 7.54/1.50  fof(f7,axiom,(
% 7.54/1.50    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => k2_funct_1(k2_funct_1(X0)) = X0))),
% 7.54/1.50    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 7.54/1.50  
% 7.54/1.50  fof(f26,plain,(
% 7.54/1.50    ! [X0] : ((k2_funct_1(k2_funct_1(X0)) = X0 | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 7.54/1.50    inference(ennf_transformation,[],[f7])).
% 7.54/1.50  
% 7.54/1.50  fof(f27,plain,(
% 7.54/1.50    ! [X0] : (k2_funct_1(k2_funct_1(X0)) = X0 | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 7.54/1.50    inference(flattening,[],[f26])).
% 7.54/1.50  
% 7.54/1.50  fof(f56,plain,(
% 7.54/1.50    ( ! [X0] : (k2_funct_1(k2_funct_1(X0)) = X0 | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 7.54/1.50    inference(cnf_transformation,[],[f27])).
% 7.54/1.50  
% 7.54/1.50  fof(f86,plain,(
% 7.54/1.50    k2_funct_1(sK2) != sK3),
% 7.54/1.50    inference(cnf_transformation,[],[f47])).
% 7.54/1.50  
% 7.54/1.50  cnf(c_3,plain,
% 7.54/1.50      ( v2_funct_1(k6_partfun1(X0)) ),
% 7.54/1.50      inference(cnf_transformation,[],[f87]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1279,plain,
% 7.54/1.50      ( v2_funct_1(k6_partfun1(X0)) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_35,negated_conjecture,
% 7.54/1.50      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 7.54/1.50      inference(cnf_transformation,[],[f77]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1255,plain,
% 7.54/1.50      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_9,plain,
% 7.54/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.54/1.50      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 7.54/1.50      inference(cnf_transformation,[],[f57]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1273,plain,
% 7.54/1.50      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 7.54/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2240,plain,
% 7.54/1.50      ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1255,c_1273]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_31,negated_conjecture,
% 7.54/1.50      ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
% 7.54/1.50      inference(cnf_transformation,[],[f81]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2241,plain,
% 7.54/1.50      ( k2_relat_1(sK2) = sK1 ),
% 7.54/1.50      inference(light_normalisation,[status(thm)],[c_2240,c_31]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_32,negated_conjecture,
% 7.54/1.50      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
% 7.54/1.50      inference(cnf_transformation,[],[f80]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1258,plain,
% 7.54/1.50      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_21,plain,
% 7.54/1.50      ( ~ v1_funct_2(X0,X1,X2)
% 7.54/1.50      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.54/1.50      | k1_relset_1(X1,X2,X0) = X1
% 7.54/1.50      | k1_xboole_0 = X2 ),
% 7.54/1.50      inference(cnf_transformation,[],[f64]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1263,plain,
% 7.54/1.50      ( k1_relset_1(X0,X1,X2) = X0
% 7.54/1.50      | k1_xboole_0 = X1
% 7.54/1.50      | v1_funct_2(X2,X0,X1) != iProver_top
% 7.54/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_4237,plain,
% 7.54/1.50      ( k1_relset_1(sK1,sK0,sK3) = sK1
% 7.54/1.50      | sK0 = k1_xboole_0
% 7.54/1.50      | v1_funct_2(sK3,sK1,sK0) != iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1258,c_1263]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_14,plain,
% 7.54/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.54/1.50      | k8_relset_1(X1,X2,X0,X2) = k1_relset_1(X1,X2,X0) ),
% 7.54/1.50      inference(cnf_transformation,[],[f63]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1270,plain,
% 7.54/1.50      ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
% 7.54/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2928,plain,
% 7.54/1.50      ( k8_relset_1(sK1,sK0,sK3,sK0) = k1_relset_1(sK1,sK0,sK3) ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1258,c_1270]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_10,plain,
% 7.54/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.54/1.50      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 7.54/1.50      inference(cnf_transformation,[],[f58]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1272,plain,
% 7.54/1.50      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
% 7.54/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2288,plain,
% 7.54/1.50      ( k8_relset_1(sK1,sK0,sK3,X0) = k10_relat_1(sK3,X0) ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1258,c_1272]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_0,plain,
% 7.54/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 7.54/1.50      | ~ v1_relat_1(X1)
% 7.54/1.50      | v1_relat_1(X0) ),
% 7.54/1.50      inference(cnf_transformation,[],[f48]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1282,plain,
% 7.54/1.50      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 7.54/1.50      | v1_relat_1(X1) != iProver_top
% 7.54/1.50      | v1_relat_1(X0) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2282,plain,
% 7.54/1.50      ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) != iProver_top
% 7.54/1.50      | v1_relat_1(sK3) = iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1258,c_1282]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1,plain,
% 7.54/1.50      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 7.54/1.50      inference(cnf_transformation,[],[f49]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2402,plain,
% 7.54/1.50      ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) ),
% 7.54/1.50      inference(instantiation,[status(thm)],[c_1]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2403,plain,
% 7.54/1.50      ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_2402]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2523,plain,
% 7.54/1.50      ( v1_relat_1(sK3) = iProver_top ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_2282,c_2403]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2,plain,
% 7.54/1.50      ( ~ v1_relat_1(X0)
% 7.54/1.50      | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
% 7.54/1.50      inference(cnf_transformation,[],[f50]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1280,plain,
% 7.54/1.50      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
% 7.54/1.50      | v1_relat_1(X0) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2527,plain,
% 7.54/1.50      ( k10_relat_1(sK3,k2_relat_1(sK3)) = k1_relat_1(sK3) ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_2523,c_1280]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2239,plain,
% 7.54/1.50      ( k2_relset_1(sK1,sK0,sK3) = k2_relat_1(sK3) ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1258,c_1273]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_25,plain,
% 7.54/1.50      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 7.54/1.50      | ~ v1_funct_2(X3,X1,X0)
% 7.54/1.50      | ~ v1_funct_2(X2,X0,X1)
% 7.54/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 7.54/1.50      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 7.54/1.50      | ~ v1_funct_1(X2)
% 7.54/1.50      | ~ v1_funct_1(X3)
% 7.54/1.50      | k2_relset_1(X1,X0,X3) = X0 ),
% 7.54/1.50      inference(cnf_transformation,[],[f74]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_30,negated_conjecture,
% 7.54/1.50      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
% 7.54/1.50      inference(cnf_transformation,[],[f82]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_431,plain,
% 7.54/1.50      ( ~ v1_funct_2(X0,X1,X2)
% 7.54/1.50      | ~ v1_funct_2(X3,X2,X1)
% 7.54/1.50      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.54/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 7.54/1.50      | ~ v1_funct_1(X0)
% 7.54/1.50      | ~ v1_funct_1(X3)
% 7.54/1.50      | k1_partfun1(X2,X1,X1,X2,X3,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 7.54/1.50      | k2_relset_1(X1,X2,X0) = X2
% 7.54/1.50      | k6_partfun1(X2) != k6_partfun1(sK0)
% 7.54/1.50      | sK0 != X2 ),
% 7.54/1.50      inference(resolution_lifted,[status(thm)],[c_25,c_30]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_432,plain,
% 7.54/1.50      ( ~ v1_funct_2(X0,X1,sK0)
% 7.54/1.50      | ~ v1_funct_2(X2,sK0,X1)
% 7.54/1.50      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
% 7.54/1.50      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
% 7.54/1.50      | ~ v1_funct_1(X0)
% 7.54/1.50      | ~ v1_funct_1(X2)
% 7.54/1.50      | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 7.54/1.50      | k2_relset_1(X1,sK0,X0) = sK0
% 7.54/1.50      | k6_partfun1(sK0) != k6_partfun1(sK0) ),
% 7.54/1.50      inference(unflattening,[status(thm)],[c_431]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_519,plain,
% 7.54/1.50      ( ~ v1_funct_2(X0,X1,sK0)
% 7.54/1.50      | ~ v1_funct_2(X2,sK0,X1)
% 7.54/1.50      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
% 7.54/1.50      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
% 7.54/1.50      | ~ v1_funct_1(X0)
% 7.54/1.50      | ~ v1_funct_1(X2)
% 7.54/1.50      | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 7.54/1.50      | k2_relset_1(X1,sK0,X0) = sK0 ),
% 7.54/1.50      inference(equality_resolution_simp,[status(thm)],[c_432]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1250,plain,
% 7.54/1.50      ( k1_partfun1(sK0,X0,X0,sK0,X1,X2) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 7.54/1.50      | k2_relset_1(X0,sK0,X2) = sK0
% 7.54/1.50      | v1_funct_2(X2,X0,sK0) != iProver_top
% 7.54/1.50      | v1_funct_2(X1,sK0,X0) != iProver_top
% 7.54/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK0))) != iProver_top
% 7.54/1.50      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
% 7.54/1.50      | v1_funct_1(X1) != iProver_top
% 7.54/1.50      | v1_funct_1(X2) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_519]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1750,plain,
% 7.54/1.50      ( k2_relset_1(sK1,sK0,sK3) = sK0
% 7.54/1.50      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 7.54/1.50      | v1_funct_2(sK2,sK0,sK1) != iProver_top
% 7.54/1.50      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 7.54/1.50      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 7.54/1.50      | v1_funct_1(sK3) != iProver_top
% 7.54/1.50      | v1_funct_1(sK2) != iProver_top ),
% 7.54/1.50      inference(equality_resolution,[status(thm)],[c_1250]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_37,negated_conjecture,
% 7.54/1.50      ( v1_funct_1(sK2) ),
% 7.54/1.50      inference(cnf_transformation,[],[f75]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_38,plain,
% 7.54/1.50      ( v1_funct_1(sK2) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_36,negated_conjecture,
% 7.54/1.50      ( v1_funct_2(sK2,sK0,sK1) ),
% 7.54/1.50      inference(cnf_transformation,[],[f76]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_39,plain,
% 7.54/1.50      ( v1_funct_2(sK2,sK0,sK1) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_40,plain,
% 7.54/1.50      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_34,negated_conjecture,
% 7.54/1.50      ( v1_funct_1(sK3) ),
% 7.54/1.50      inference(cnf_transformation,[],[f78]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_41,plain,
% 7.54/1.50      ( v1_funct_1(sK3) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_33,negated_conjecture,
% 7.54/1.50      ( v1_funct_2(sK3,sK1,sK0) ),
% 7.54/1.50      inference(cnf_transformation,[],[f79]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_42,plain,
% 7.54/1.50      ( v1_funct_2(sK3,sK1,sK0) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_43,plain,
% 7.54/1.50      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2075,plain,
% 7.54/1.50      ( k2_relset_1(sK1,sK0,sK3) = sK0 ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_1750,c_38,c_39,c_40,c_41,c_42,c_43]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2242,plain,
% 7.54/1.50      ( k2_relat_1(sK3) = sK0 ),
% 7.54/1.50      inference(light_normalisation,[status(thm)],[c_2239,c_2075]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2528,plain,
% 7.54/1.50      ( k10_relat_1(sK3,sK0) = k1_relat_1(sK3) ),
% 7.54/1.50      inference(light_normalisation,[status(thm)],[c_2527,c_2242]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2931,plain,
% 7.54/1.50      ( k1_relset_1(sK1,sK0,sK3) = k1_relat_1(sK3) ),
% 7.54/1.50      inference(demodulation,[status(thm)],[c_2928,c_2288,c_2528]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_4240,plain,
% 7.54/1.50      ( k1_relat_1(sK3) = sK1
% 7.54/1.50      | sK0 = k1_xboole_0
% 7.54/1.50      | v1_funct_2(sK3,sK1,sK0) != iProver_top ),
% 7.54/1.50      inference(demodulation,[status(thm)],[c_4237,c_2931]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_28,negated_conjecture,
% 7.54/1.50      ( k1_xboole_0 != sK0 ),
% 7.54/1.50      inference(cnf_transformation,[],[f84]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_710,plain,( X0 = X0 ),theory(equality) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_739,plain,
% 7.54/1.50      ( k1_xboole_0 = k1_xboole_0 ),
% 7.54/1.50      inference(instantiation,[status(thm)],[c_710]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_711,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1364,plain,
% 7.54/1.50      ( sK0 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK0 ),
% 7.54/1.50      inference(instantiation,[status(thm)],[c_711]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1365,plain,
% 7.54/1.50      ( sK0 != k1_xboole_0
% 7.54/1.50      | k1_xboole_0 = sK0
% 7.54/1.50      | k1_xboole_0 != k1_xboole_0 ),
% 7.54/1.50      inference(instantiation,[status(thm)],[c_1364]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_6214,plain,
% 7.54/1.50      ( k1_relat_1(sK3) = sK1 ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_4240,c_42,c_28,c_739,c_1365]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_5,plain,
% 7.54/1.50      ( ~ v1_funct_1(X0)
% 7.54/1.50      | ~ v1_funct_1(X1)
% 7.54/1.50      | v2_funct_1(X1)
% 7.54/1.50      | ~ v2_funct_1(k5_relat_1(X0,X1))
% 7.54/1.50      | ~ v1_relat_1(X1)
% 7.54/1.50      | ~ v1_relat_1(X0)
% 7.54/1.50      | k1_relat_1(X1) != k2_relat_1(X0) ),
% 7.54/1.50      inference(cnf_transformation,[],[f54]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1277,plain,
% 7.54/1.50      ( k1_relat_1(X0) != k2_relat_1(X1)
% 7.54/1.50      | v1_funct_1(X1) != iProver_top
% 7.54/1.50      | v1_funct_1(X0) != iProver_top
% 7.54/1.50      | v2_funct_1(X0) = iProver_top
% 7.54/1.50      | v2_funct_1(k5_relat_1(X1,X0)) != iProver_top
% 7.54/1.50      | v1_relat_1(X1) != iProver_top
% 7.54/1.50      | v1_relat_1(X0) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_6218,plain,
% 7.54/1.50      ( k2_relat_1(X0) != sK1
% 7.54/1.50      | v1_funct_1(X0) != iProver_top
% 7.54/1.50      | v1_funct_1(sK3) != iProver_top
% 7.54/1.50      | v2_funct_1(k5_relat_1(X0,sK3)) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) = iProver_top
% 7.54/1.50      | v1_relat_1(X0) != iProver_top
% 7.54/1.50      | v1_relat_1(sK3) != iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_6214,c_1277]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_19508,plain,
% 7.54/1.50      ( v1_relat_1(X0) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) = iProver_top
% 7.54/1.50      | v2_funct_1(k5_relat_1(X0,sK3)) != iProver_top
% 7.54/1.50      | k2_relat_1(X0) != sK1
% 7.54/1.50      | v1_funct_1(X0) != iProver_top ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_6218,c_41,c_2282,c_2403]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_19509,plain,
% 7.54/1.50      ( k2_relat_1(X0) != sK1
% 7.54/1.50      | v1_funct_1(X0) != iProver_top
% 7.54/1.50      | v2_funct_1(k5_relat_1(X0,sK3)) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) = iProver_top
% 7.54/1.50      | v1_relat_1(X0) != iProver_top ),
% 7.54/1.50      inference(renaming,[status(thm)],[c_19508]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_19514,plain,
% 7.54/1.50      ( v1_funct_1(sK2) != iProver_top
% 7.54/1.50      | v2_funct_1(k5_relat_1(sK2,sK3)) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) = iProver_top
% 7.54/1.50      | v1_relat_1(sK2) != iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_2241,c_19509]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_24,plain,
% 7.54/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.54/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 7.54/1.50      | ~ v1_funct_1(X0)
% 7.54/1.50      | ~ v1_funct_1(X3)
% 7.54/1.50      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 7.54/1.50      inference(cnf_transformation,[],[f72]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1260,plain,
% 7.54/1.50      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 7.54/1.50      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 7.54/1.50      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 7.54/1.50      | v1_funct_1(X4) != iProver_top
% 7.54/1.50      | v1_funct_1(X5) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2769,plain,
% 7.54/1.50      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 7.54/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 7.54/1.50      | v1_funct_1(X2) != iProver_top
% 7.54/1.50      | v1_funct_1(sK3) != iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1258,c_1260]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2935,plain,
% 7.54/1.50      ( v1_funct_1(X2) != iProver_top
% 7.54/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 7.54/1.50      | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_2769,c_41]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2936,plain,
% 7.54/1.50      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 7.54/1.50      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 7.54/1.50      | v1_funct_1(X2) != iProver_top ),
% 7.54/1.50      inference(renaming,[status(thm)],[c_2935]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2943,plain,
% 7.54/1.50      ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
% 7.54/1.50      | v1_funct_1(sK2) != iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1255,c_2936]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_12,plain,
% 7.54/1.50      ( ~ r2_relset_1(X0,X1,X2,X3)
% 7.54/1.50      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 7.54/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 7.54/1.50      | X3 = X2 ),
% 7.54/1.50      inference(cnf_transformation,[],[f59]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_418,plain,
% 7.54/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.54/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.54/1.50      | X3 = X0
% 7.54/1.50      | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
% 7.54/1.50      | k6_partfun1(sK0) != X3
% 7.54/1.50      | sK0 != X2
% 7.54/1.50      | sK0 != X1 ),
% 7.54/1.50      inference(resolution_lifted,[status(thm)],[c_12,c_30]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_419,plain,
% 7.54/1.50      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 7.54/1.50      | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 7.54/1.50      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 7.54/1.50      inference(unflattening,[status(thm)],[c_418]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_13,plain,
% 7.54/1.50      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 7.54/1.50      inference(cnf_transformation,[],[f90]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_427,plain,
% 7.54/1.50      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 7.54/1.50      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 7.54/1.50      inference(forward_subsumption_resolution,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_419,c_13]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1251,plain,
% 7.54/1.50      ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 7.54/1.50      | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_427]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_22,plain,
% 7.54/1.50      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 7.54/1.50      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 7.54/1.50      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 7.54/1.50      | ~ v1_funct_1(X0)
% 7.54/1.50      | ~ v1_funct_1(X3) ),
% 7.54/1.50      inference(cnf_transformation,[],[f71]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1366,plain,
% 7.54/1.50      ( m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 7.54/1.50      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 7.54/1.50      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 7.54/1.50      | ~ v1_funct_1(sK3)
% 7.54/1.50      | ~ v1_funct_1(sK2) ),
% 7.54/1.50      inference(instantiation,[status(thm)],[c_22]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2013,plain,
% 7.54/1.50      ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_1251,c_37,c_35,c_34,c_32,c_427,c_1366]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2944,plain,
% 7.54/1.50      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
% 7.54/1.50      | v1_funct_1(sK2) != iProver_top ),
% 7.54/1.50      inference(light_normalisation,[status(thm)],[c_2943,c_2013]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_3870,plain,
% 7.54/1.50      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_2944,c_38]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_19516,plain,
% 7.54/1.50      ( v1_funct_1(sK2) != iProver_top
% 7.54/1.50      | v2_funct_1(k6_partfun1(sK0)) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) = iProver_top
% 7.54/1.50      | v1_relat_1(sK2) != iProver_top ),
% 7.54/1.50      inference(light_normalisation,[status(thm)],[c_19514,c_3870]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1281,plain,
% 7.54/1.50      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2283,plain,
% 7.54/1.50      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 7.54/1.50      | v1_relat_1(sK2) = iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1255,c_1282]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2530,plain,
% 7.54/1.50      ( v1_relat_1(sK2) = iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1281,c_2283]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_19700,plain,
% 7.54/1.50      ( v2_funct_1(sK3) = iProver_top
% 7.54/1.50      | v2_funct_1(k6_partfun1(sK0)) != iProver_top ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_19516,c_38,c_2530]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_19701,plain,
% 7.54/1.50      ( v2_funct_1(k6_partfun1(sK0)) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) = iProver_top ),
% 7.54/1.50      inference(renaming,[status(thm)],[c_19700]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_19704,plain,
% 7.54/1.50      ( v2_funct_1(sK3) = iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1279,c_19701]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_7,plain,
% 7.54/1.50      ( ~ v1_funct_1(X0)
% 7.54/1.50      | ~ v1_funct_1(X1)
% 7.54/1.50      | ~ v2_funct_1(X1)
% 7.54/1.50      | ~ v1_relat_1(X1)
% 7.54/1.50      | ~ v1_relat_1(X0)
% 7.54/1.50      | k5_relat_1(X0,X1) != k6_partfun1(k2_relat_1(X1))
% 7.54/1.50      | k2_funct_1(X1) = X0
% 7.54/1.50      | k1_relat_1(X1) != k2_relat_1(X0) ),
% 7.54/1.50      inference(cnf_transformation,[],[f89]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1275,plain,
% 7.54/1.50      ( k5_relat_1(X0,X1) != k6_partfun1(k2_relat_1(X1))
% 7.54/1.50      | k2_funct_1(X1) = X0
% 7.54/1.50      | k1_relat_1(X1) != k2_relat_1(X0)
% 7.54/1.50      | v1_funct_1(X0) != iProver_top
% 7.54/1.50      | v1_funct_1(X1) != iProver_top
% 7.54/1.50      | v2_funct_1(X1) != iProver_top
% 7.54/1.50      | v1_relat_1(X0) != iProver_top
% 7.54/1.50      | v1_relat_1(X1) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_5410,plain,
% 7.54/1.50      ( k2_funct_1(sK3) = sK2
% 7.54/1.50      | k6_partfun1(k2_relat_1(sK3)) != k6_partfun1(sK0)
% 7.54/1.50      | k1_relat_1(sK3) != k2_relat_1(sK2)
% 7.54/1.50      | v1_funct_1(sK3) != iProver_top
% 7.54/1.50      | v1_funct_1(sK2) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) != iProver_top
% 7.54/1.50      | v1_relat_1(sK3) != iProver_top
% 7.54/1.50      | v1_relat_1(sK2) != iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_3870,c_1275]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_5411,plain,
% 7.54/1.50      ( k2_funct_1(sK3) = sK2
% 7.54/1.50      | k6_partfun1(sK0) != k6_partfun1(sK0)
% 7.54/1.50      | k1_relat_1(sK3) != sK1
% 7.54/1.50      | v1_funct_1(sK3) != iProver_top
% 7.54/1.50      | v1_funct_1(sK2) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) != iProver_top
% 7.54/1.50      | v1_relat_1(sK3) != iProver_top
% 7.54/1.50      | v1_relat_1(sK2) != iProver_top ),
% 7.54/1.50      inference(light_normalisation,[status(thm)],[c_5410,c_2241,c_2242]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_5412,plain,
% 7.54/1.50      ( k2_funct_1(sK3) = sK2
% 7.54/1.50      | k1_relat_1(sK3) != sK1
% 7.54/1.50      | v1_funct_1(sK3) != iProver_top
% 7.54/1.50      | v1_funct_1(sK2) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) != iProver_top
% 7.54/1.50      | v1_relat_1(sK3) != iProver_top
% 7.54/1.50      | v1_relat_1(sK2) != iProver_top ),
% 7.54/1.50      inference(equality_resolution_simp,[status(thm)],[c_5411]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_5888,plain,
% 7.54/1.50      ( k2_funct_1(sK3) = sK2 | v2_funct_1(sK3) != iProver_top ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_5412,c_38,c_41,c_42,c_28,c_739,c_1365,c_2282,c_2403,
% 7.54/1.50                 c_2530,c_4240]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_20034,plain,
% 7.54/1.50      ( k2_funct_1(sK3) = sK2 ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_19704,c_5888]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1256,plain,
% 7.54/1.50      ( v1_funct_1(sK3) = iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_8,plain,
% 7.54/1.50      ( ~ v1_funct_1(X0)
% 7.54/1.50      | ~ v2_funct_1(X0)
% 7.54/1.50      | ~ v1_relat_1(X0)
% 7.54/1.50      | k2_funct_1(k2_funct_1(X0)) = X0 ),
% 7.54/1.50      inference(cnf_transformation,[],[f56]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_1274,plain,
% 7.54/1.50      ( k2_funct_1(k2_funct_1(X0)) = X0
% 7.54/1.50      | v1_funct_1(X0) != iProver_top
% 7.54/1.50      | v2_funct_1(X0) != iProver_top
% 7.54/1.50      | v1_relat_1(X0) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_3475,plain,
% 7.54/1.50      ( k2_funct_1(k2_funct_1(sK3)) = sK3
% 7.54/1.50      | v2_funct_1(sK3) != iProver_top
% 7.54/1.50      | v1_relat_1(sK3) != iProver_top ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_1256,c_1274]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2626,plain,
% 7.54/1.50      ( ~ v1_funct_1(sK3)
% 7.54/1.50      | ~ v2_funct_1(sK3)
% 7.54/1.50      | ~ v1_relat_1(sK3)
% 7.54/1.50      | k2_funct_1(k2_funct_1(sK3)) = sK3 ),
% 7.54/1.50      inference(instantiation,[status(thm)],[c_8]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_2627,plain,
% 7.54/1.50      ( k2_funct_1(k2_funct_1(sK3)) = sK3
% 7.54/1.50      | v1_funct_1(sK3) != iProver_top
% 7.54/1.50      | v2_funct_1(sK3) != iProver_top
% 7.54/1.50      | v1_relat_1(sK3) != iProver_top ),
% 7.54/1.50      inference(predicate_to_equality,[status(thm)],[c_2626]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_3782,plain,
% 7.54/1.50      ( v2_funct_1(sK3) != iProver_top
% 7.54/1.50      | k2_funct_1(k2_funct_1(sK3)) = sK3 ),
% 7.54/1.50      inference(global_propositional_subsumption,
% 7.54/1.50                [status(thm)],
% 7.54/1.50                [c_3475,c_41,c_2282,c_2403,c_2627]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_3783,plain,
% 7.54/1.50      ( k2_funct_1(k2_funct_1(sK3)) = sK3
% 7.54/1.50      | v2_funct_1(sK3) != iProver_top ),
% 7.54/1.50      inference(renaming,[status(thm)],[c_3782]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_20035,plain,
% 7.54/1.50      ( k2_funct_1(k2_funct_1(sK3)) = sK3 ),
% 7.54/1.50      inference(superposition,[status(thm)],[c_19704,c_3783]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_20036,plain,
% 7.54/1.50      ( k2_funct_1(sK2) = sK3 ),
% 7.54/1.50      inference(demodulation,[status(thm)],[c_20034,c_20035]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(c_26,negated_conjecture,
% 7.54/1.50      ( k2_funct_1(sK2) != sK3 ),
% 7.54/1.50      inference(cnf_transformation,[],[f86]) ).
% 7.54/1.50  
% 7.54/1.50  cnf(contradiction,plain,
% 7.54/1.50      ( $false ),
% 7.54/1.50      inference(minisat,[status(thm)],[c_20036,c_26]) ).
% 7.54/1.50  
% 7.54/1.50  
% 7.54/1.50  % SZS output end CNFRefutation for theBenchmark.p
% 7.54/1.50  
% 7.54/1.50  ------                               Statistics
% 7.54/1.50  
% 7.54/1.50  ------ General
% 7.54/1.50  
% 7.54/1.50  abstr_ref_over_cycles:                  0
% 7.54/1.50  abstr_ref_under_cycles:                 0
% 7.54/1.50  gc_basic_clause_elim:                   0
% 7.54/1.50  forced_gc_time:                         0
% 7.54/1.50  parsing_time:                           0.01
% 7.54/1.50  unif_index_cands_time:                  0.
% 7.54/1.50  unif_index_add_time:                    0.
% 7.54/1.50  orderings_time:                         0.
% 7.54/1.50  out_proof_time:                         0.015
% 7.54/1.50  total_time:                             0.735
% 7.54/1.50  num_of_symbols:                         55
% 7.54/1.50  num_of_terms:                           29763
% 7.54/1.50  
% 7.54/1.50  ------ Preprocessing
% 7.54/1.50  
% 7.54/1.50  num_of_splits:                          0
% 7.54/1.50  num_of_split_atoms:                     0
% 7.54/1.50  num_of_reused_defs:                     0
% 7.54/1.50  num_eq_ax_congr_red:                    45
% 7.54/1.50  num_of_sem_filtered_clauses:            1
% 7.54/1.50  num_of_subtypes:                        0
% 7.54/1.50  monotx_restored_types:                  0
% 7.54/1.50  sat_num_of_epr_types:                   0
% 7.54/1.50  sat_num_of_non_cyclic_types:            0
% 7.54/1.50  sat_guarded_non_collapsed_types:        0
% 7.54/1.50  num_pure_diseq_elim:                    0
% 7.54/1.50  simp_replaced_by:                       0
% 7.54/1.50  res_preprocessed:                       180
% 7.54/1.50  prep_upred:                             0
% 7.54/1.50  prep_unflattend:                        12
% 7.54/1.50  smt_new_axioms:                         0
% 7.54/1.50  pred_elim_cands:                        5
% 7.54/1.50  pred_elim:                              1
% 7.54/1.50  pred_elim_cl:                           1
% 7.54/1.50  pred_elim_cycles:                       3
% 7.54/1.50  merged_defs:                            0
% 7.54/1.50  merged_defs_ncl:                        0
% 7.54/1.50  bin_hyper_res:                          0
% 7.54/1.50  prep_cycles:                            4
% 7.54/1.50  pred_elim_time:                         0.005
% 7.54/1.50  splitting_time:                         0.
% 7.54/1.50  sem_filter_time:                        0.
% 7.54/1.50  monotx_time:                            0.001
% 7.54/1.50  subtype_inf_time:                       0.
% 7.54/1.50  
% 7.54/1.50  ------ Problem properties
% 7.54/1.50  
% 7.54/1.50  clauses:                                37
% 7.54/1.50  conjectures:                            11
% 7.54/1.50  epr:                                    7
% 7.54/1.50  horn:                                   33
% 7.54/1.50  ground:                                 12
% 7.54/1.50  unary:                                  15
% 7.54/1.50  binary:                                 6
% 7.54/1.50  lits:                                   108
% 7.54/1.50  lits_eq:                                30
% 7.54/1.50  fd_pure:                                0
% 7.54/1.50  fd_pseudo:                              0
% 7.54/1.50  fd_cond:                                3
% 7.54/1.50  fd_pseudo_cond:                         1
% 7.54/1.50  ac_symbols:                             0
% 7.54/1.50  
% 7.54/1.50  ------ Propositional Solver
% 7.54/1.50  
% 7.54/1.50  prop_solver_calls:                      32
% 7.54/1.50  prop_fast_solver_calls:                 2118
% 7.54/1.50  smt_solver_calls:                       0
% 7.54/1.50  smt_fast_solver_calls:                  0
% 7.54/1.50  prop_num_of_clauses:                    10114
% 7.54/1.50  prop_preprocess_simplified:             20283
% 7.54/1.50  prop_fo_subsumed:                       300
% 7.54/1.50  prop_solver_time:                       0.
% 7.54/1.50  smt_solver_time:                        0.
% 7.54/1.50  smt_fast_solver_time:                   0.
% 7.54/1.50  prop_fast_solver_time:                  0.
% 7.54/1.50  prop_unsat_core_time:                   0.001
% 7.54/1.50  
% 7.54/1.50  ------ QBF
% 7.54/1.50  
% 7.54/1.50  qbf_q_res:                              0
% 7.54/1.50  qbf_num_tautologies:                    0
% 7.54/1.50  qbf_prep_cycles:                        0
% 7.54/1.50  
% 7.54/1.50  ------ BMC1
% 7.54/1.50  
% 7.54/1.50  bmc1_current_bound:                     -1
% 7.54/1.50  bmc1_last_solved_bound:                 -1
% 7.54/1.50  bmc1_unsat_core_size:                   -1
% 7.54/1.50  bmc1_unsat_core_parents_size:           -1
% 7.54/1.50  bmc1_merge_next_fun:                    0
% 7.54/1.50  bmc1_unsat_core_clauses_time:           0.
% 7.54/1.50  
% 7.54/1.50  ------ Instantiation
% 7.54/1.50  
% 7.54/1.50  inst_num_of_clauses:                    2636
% 7.54/1.50  inst_num_in_passive:                    968
% 7.54/1.50  inst_num_in_active:                     1243
% 7.54/1.50  inst_num_in_unprocessed:                425
% 7.54/1.50  inst_num_of_loops:                      1360
% 7.54/1.50  inst_num_of_learning_restarts:          0
% 7.54/1.50  inst_num_moves_active_passive:          114
% 7.54/1.50  inst_lit_activity:                      0
% 7.54/1.50  inst_lit_activity_moves:                1
% 7.54/1.50  inst_num_tautologies:                   0
% 7.54/1.50  inst_num_prop_implied:                  0
% 7.54/1.50  inst_num_existing_simplified:           0
% 7.54/1.50  inst_num_eq_res_simplified:             0
% 7.54/1.50  inst_num_child_elim:                    0
% 7.54/1.50  inst_num_of_dismatching_blockings:      858
% 7.54/1.50  inst_num_of_non_proper_insts:           2942
% 7.54/1.50  inst_num_of_duplicates:                 0
% 7.54/1.50  inst_inst_num_from_inst_to_res:         0
% 7.54/1.50  inst_dismatching_checking_time:         0.
% 7.54/1.50  
% 7.54/1.50  ------ Resolution
% 7.54/1.50  
% 7.54/1.50  res_num_of_clauses:                     0
% 7.54/1.50  res_num_in_passive:                     0
% 7.54/1.50  res_num_in_active:                      0
% 7.54/1.50  res_num_of_loops:                       184
% 7.54/1.50  res_forward_subset_subsumed:            196
% 7.54/1.50  res_backward_subset_subsumed:           0
% 7.54/1.50  res_forward_subsumed:                   0
% 7.54/1.50  res_backward_subsumed:                  0
% 7.54/1.50  res_forward_subsumption_resolution:     2
% 7.54/1.50  res_backward_subsumption_resolution:    0
% 7.54/1.50  res_clause_to_clause_subsumption:       1537
% 7.54/1.50  res_orphan_elimination:                 0
% 7.54/1.50  res_tautology_del:                      121
% 7.54/1.50  res_num_eq_res_simplified:              1
% 7.54/1.50  res_num_sel_changes:                    0
% 7.54/1.50  res_moves_from_active_to_pass:          0
% 7.54/1.50  
% 7.54/1.50  ------ Superposition
% 7.54/1.50  
% 7.54/1.50  sup_time_total:                         0.
% 7.54/1.50  sup_time_generating:                    0.
% 7.54/1.50  sup_time_sim_full:                      0.
% 7.54/1.50  sup_time_sim_immed:                     0.
% 7.54/1.50  
% 7.54/1.50  sup_num_of_clauses:                     718
% 7.54/1.50  sup_num_in_active:                      254
% 7.54/1.50  sup_num_in_passive:                     464
% 7.54/1.50  sup_num_of_loops:                       271
% 7.54/1.50  sup_fw_superposition:                   476
% 7.54/1.50  sup_bw_superposition:                   309
% 7.54/1.50  sup_immediate_simplified:               389
% 7.54/1.50  sup_given_eliminated:                   0
% 7.54/1.50  comparisons_done:                       0
% 7.54/1.50  comparisons_avoided:                    1
% 7.54/1.50  
% 7.54/1.50  ------ Simplifications
% 7.54/1.50  
% 7.54/1.50  
% 7.54/1.50  sim_fw_subset_subsumed:                 30
% 7.54/1.50  sim_bw_subset_subsumed:                 26
% 7.54/1.50  sim_fw_subsumed:                        11
% 7.54/1.50  sim_bw_subsumed:                        3
% 7.54/1.50  sim_fw_subsumption_res:                 0
% 7.54/1.50  sim_bw_subsumption_res:                 0
% 7.54/1.50  sim_tautology_del:                      0
% 7.54/1.50  sim_eq_tautology_del:                   28
% 7.54/1.50  sim_eq_res_simp:                        1
% 7.54/1.50  sim_fw_demodulated:                     52
% 7.54/1.50  sim_bw_demodulated:                     8
% 7.54/1.50  sim_light_normalised:                   327
% 7.54/1.50  sim_joinable_taut:                      0
% 7.54/1.50  sim_joinable_simp:                      0
% 7.54/1.50  sim_ac_normalised:                      0
% 7.54/1.50  sim_smt_subsumption:                    0
% 7.54/1.50  
%------------------------------------------------------------------------------
