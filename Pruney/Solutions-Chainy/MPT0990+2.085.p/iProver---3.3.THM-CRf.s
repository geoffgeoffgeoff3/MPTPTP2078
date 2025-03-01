%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:03:15 EST 2020

% Result     : Theorem 3.77s
% Output     : CNFRefutation 3.77s
% Verified   : 
% Statistics : Number of formulae       :  215 (1130 expanded)
%              Number of clauses        :  126 ( 303 expanded)
%              Number of leaves         :   23 ( 302 expanded)
%              Depth                    :   22
%              Number of atoms          :  815 (9615 expanded)
%              Number of equality atoms :  401 (3534 expanded)
%              Maximal formula depth    :   16 (   5 average)
%              Maximal clause size      :   24 (   3 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f19,conjecture,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,negated_conjecture,(
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
    inference(negated_conjecture,[],[f19])).

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
    inference(ennf_transformation,[],[f20])).

fof(f46,plain,(
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
    inference(flattening,[],[f45])).

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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f46,f49,f48])).

fof(f86,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f50])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f66,plain,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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

fof(f87,plain,(
    k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f50])).

fof(f18,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( v2_funct_1(X2)
          & k2_relset_1(X0,X1,X2) = X1 )
       => ( ( k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
            & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) )
          | k1_xboole_0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    inference(ennf_transformation,[],[f18])).

fof(f44,plain,(
    ! [X0,X1,X2] :
      ( ( k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
        & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) )
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f43])).

fof(f80,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f82,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f50])).

fof(f89,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f50])).

fof(f91,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f50])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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

fof(f15,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f73,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f15])).

fof(f96,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f55,f73])).

fof(f7,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f27,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f26])).

fof(f61,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f9,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
          & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f31,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f30])).

fof(f64,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f100,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f64,f73])).

fof(f79,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f2,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f2])).

fof(f93,plain,(
    ! [X0] : k2_relat_1(k6_partfun1(X0)) = X0 ),
    inference(definition_unfolding,[],[f53,f73])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f14])).

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

fof(f84,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f50])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f34,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f33])).

fof(f47,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f34])).

fof(f67,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r2_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f47])).

fof(f88,plain,(
    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f50])).

fof(f12,axiom,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f69,plain,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f12])).

fof(f101,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(definition_unfolding,[],[f69,f73])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f13])).

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

fof(f17,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ! [X4] :
          ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X4,X1,X2)
            & v1_funct_1(X4) )
         => ( ( k2_relset_1(X0,X1,X3) = X1
              & v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)) )
           => ( ( v2_funct_1(X4)
                & v2_funct_1(X3) )
              | ( k1_xboole_0 != X1
                & k1_xboole_0 = X2 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1,X2,X3] :
      ( ! [X4] :
          ( ( v2_funct_1(X4)
            & v2_funct_1(X3) )
          | ( k1_xboole_0 != X1
            & k1_xboole_0 = X2 )
          | k2_relset_1(X0,X1,X3) != X1
          | ~ v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))
          | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X4,X1,X2)
          | ~ v1_funct_1(X4) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f42,plain,(
    ! [X0,X1,X2,X3] :
      ( ! [X4] :
          ( ( v2_funct_1(X4)
            & v2_funct_1(X3) )
          | ( k1_xboole_0 != X1
            & k1_xboole_0 = X2 )
          | k2_relset_1(X0,X1,X3) != X1
          | ~ v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))
          | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X4,X1,X2)
          | ~ v1_funct_1(X4) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f41])).

fof(f77,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( v2_funct_1(X4)
      | k1_xboole_0 = X2
      | k2_relset_1(X0,X1,X3) != X1
      | ~ v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_2(X4,X1,X2)
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f85,plain,(
    v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f50])).

fof(f90,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f50])).

fof(f6,axiom,(
    ! [X0] :
      ( v2_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X0] : v2_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f97,plain,(
    ! [X0] : v2_funct_1(k6_partfun1(X0)) ),
    inference(definition_unfolding,[],[f59,f73])).

fof(f8,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
          & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
        & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f29,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
        & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f28])).

fof(f62,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f16,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    inference(ennf_transformation,[],[f16])).

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

fof(f52,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f2])).

fof(f94,plain,(
    ! [X0] : k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(definition_unfolding,[],[f52,f73])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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

fof(f95,plain,(
    ! [X0] :
      ( k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f54,f73])).

fof(f92,plain,(
    k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f50])).

cnf(c_35,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_1288,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1300,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2412,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1288,c_1300])).

cnf(c_38,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_1285,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_2413,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1285,c_1300])).

cnf(c_40,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1283,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_40])).

cnf(c_6,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1309,plain,
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

cnf(c_1313,plain,
    ( k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_5339,plain,
    ( k5_relat_1(k2_funct_1(X0),k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(k2_funct_1(X0),X1),X2)
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1309,c_1313])).

cnf(c_8713,plain,
    ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1283,c_5339])).

cnf(c_9453,plain,
    ( v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8713,c_2413])).

cnf(c_9454,plain,
    ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_9453])).

cnf(c_9462,plain,
    ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k5_relat_1(k2_funct_1(sK2),sK2),X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2413,c_9454])).

cnf(c_34,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f87])).

cnf(c_27,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(X2)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f80])).

cnf(c_1291,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
    | k1_xboole_0 = X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v2_funct_1(X2) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_3564,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
    | sK1 = k1_xboole_0
    | v1_funct_2(sK2,sK0,sK1) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_34,c_1291])).

cnf(c_39,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_32,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_30,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1361,plain,
    ( ~ v1_funct_2(X0,X1,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,sK1,X0) != sK1
    | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(sK1)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_27])).

cnf(c_1450,plain,
    ( ~ v1_funct_2(sK2,X0,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1)))
    | ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(X0,sK1,sK2) != sK1
    | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_1361])).

cnf(c_1697,plain,
    ( ~ v1_funct_2(sK2,sK0,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(sK0,sK1,sK2) != sK1
    | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_1450])).

cnf(c_4386,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3564,c_40,c_39,c_38,c_34,c_32,c_30,c_1697])).

cnf(c_9466,plain,
    ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k6_partfun1(sK1),X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_9462,c_4386])).

cnf(c_9552,plain,
    ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,sK3)) = k5_relat_1(k6_partfun1(sK1),sK3) ),
    inference(superposition,[status(thm)],[c_2412,c_9466])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0 ),
    inference(cnf_transformation,[],[f96])).

cnf(c_1311,plain,
    ( k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_2418,plain,
    ( k5_relat_1(k2_funct_1(X0),k6_partfun1(k2_relat_1(k2_funct_1(X0)))) = k2_funct_1(X0)
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1309,c_1311])).

cnf(c_3556,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(k2_relat_1(k2_funct_1(sK2)))) = k2_funct_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1283,c_2418])).

cnf(c_1289,plain,
    ( v2_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_9,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_1306,plain,
    ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | v2_funct_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_3259,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1289,c_1306])).

cnf(c_41,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_40])).

cnf(c_3436,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3259,c_41,c_2413])).

cnf(c_3557,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(k1_relat_1(sK2))) = k2_funct_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3556,c_3436])).

cnf(c_5084,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(k1_relat_1(sK2))) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3557,c_2413])).

cnf(c_14,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_1301,plain,
    ( k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0))
    | v2_funct_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_3598,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2))
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1289,c_1301])).

cnf(c_28,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1290,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)
    | k1_xboole_0 = X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v2_funct_1(X2) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_3198,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
    | sK1 = k1_xboole_0
    | v1_funct_2(sK2,sK0,sK1) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v2_funct_1(sK2) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_34,c_1290])).

cnf(c_1362,plain,
    ( ~ v1_funct_2(X0,X1,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
    | ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | k2_relset_1(X1,sK1,X0) != sK1
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_28])).

cnf(c_1476,plain,
    ( ~ v1_funct_2(sK2,X0,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1)))
    | ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(X0,sK1,sK2) != sK1
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_1362])).

cnf(c_1712,plain,
    ( ~ v1_funct_2(sK2,sK0,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v2_funct_1(sK2)
    | ~ v1_funct_1(sK2)
    | k2_relset_1(sK0,sK1,sK2) != sK1
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_1476])).

cnf(c_3335,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3198,c_40,c_39,c_38,c_34,c_32,c_30,c_1712])).

cnf(c_3599,plain,
    ( k6_partfun1(k1_relat_1(sK2)) = k6_partfun1(sK0)
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3598,c_3335])).

cnf(c_4883,plain,
    ( k6_partfun1(k1_relat_1(sK2)) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3599,c_41,c_2413])).

cnf(c_1,plain,
    ( k2_relat_1(k6_partfun1(X0)) = X0 ),
    inference(cnf_transformation,[],[f93])).

cnf(c_4896,plain,
    ( k2_relat_1(k6_partfun1(sK0)) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_4883,c_1])).

cnf(c_4897,plain,
    ( k1_relat_1(sK2) = sK0 ),
    inference(demodulation,[status(thm)],[c_4896,c_1])).

cnf(c_5086,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(sK0)) = k2_funct_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_5084,c_4897])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1296,plain,
    ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X5) != iProver_top
    | v1_funct_1(X4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_5433,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1288,c_1296])).

cnf(c_37,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_44,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_5532,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_5433,c_44])).

cnf(c_5533,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_5532])).

cnf(c_5541,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1285,c_5533])).

cnf(c_17,plain,
    ( ~ r2_relset_1(X0,X1,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | X3 = X2 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_33,negated_conjecture,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_432,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | X3 = X0
    | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
    | k6_partfun1(sK0) != X3
    | sK0 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_33])).

cnf(c_433,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_432])).

cnf(c_18,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f101])).

cnf(c_441,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_433,c_18])).

cnf(c_1281,plain,
    ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_441])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1399,plain,
    ( m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_2163,plain,
    ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1281,c_40,c_38,c_37,c_35,c_441,c_1399])).

cnf(c_5542,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
    | v1_funct_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5541,c_2163])).

cnf(c_6233,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_5542,c_41])).

cnf(c_24,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X4,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v2_funct_1(X0)
    | ~ v2_funct_1(k1_partfun1(X4,X1,X1,X2,X3,X0))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X4,X1,X3) != X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f77])).

cnf(c_1294,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | k1_xboole_0 = X3
    | v1_funct_2(X4,X1,X3) != iProver_top
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v2_funct_1(X4) = iProver_top
    | v2_funct_1(k1_partfun1(X0,X1,X1,X3,X2,X4)) != iProver_top
    | v1_funct_1(X4) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_6708,plain,
    ( k1_xboole_0 = X0
    | v1_funct_2(X1,sK1,X0) != iProver_top
    | v1_funct_2(sK2,sK0,sK1) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v2_funct_1(X1) = iProver_top
    | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_34,c_1294])).

cnf(c_42,plain,
    ( v1_funct_2(sK2,sK0,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_39])).

cnf(c_43,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_6713,plain,
    ( v1_funct_1(X1) != iProver_top
    | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top
    | v2_funct_1(X1) = iProver_top
    | v1_funct_2(X1,sK1,X0) != iProver_top
    | k1_xboole_0 = X0
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6708,c_41,c_42,c_43])).

cnf(c_6714,plain,
    ( k1_xboole_0 = X0
    | v1_funct_2(X1,sK1,X0) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
    | v2_funct_1(X1) = iProver_top
    | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_6713])).

cnf(c_6717,plain,
    ( sK0 = k1_xboole_0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v2_funct_1(k6_partfun1(sK0)) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2163,c_6714])).

cnf(c_36,negated_conjecture,
    ( v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_45,plain,
    ( v1_funct_2(sK3,sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_46,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_31,negated_conjecture,
    ( k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f90])).

cnf(c_729,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_760,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_729])).

cnf(c_730,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1397,plain,
    ( sK0 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK0 ),
    inference(instantiation,[status(thm)],[c_730])).

cnf(c_1398,plain,
    ( sK0 != k1_xboole_0
    | k1_xboole_0 = sK0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1397])).

cnf(c_7,plain,
    ( v2_funct_1(k6_partfun1(X0)) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_3092,plain,
    ( v2_funct_1(k6_partfun1(sK0)) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_3093,plain,
    ( v2_funct_1(k6_partfun1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3092])).

cnf(c_6800,plain,
    ( v2_funct_1(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6717,c_44,c_45,c_46,c_31,c_760,c_1398,c_3093])).

cnf(c_12,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1303,plain,
    ( k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0)
    | v2_funct_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_6805,plain,
    ( k1_relat_1(k5_relat_1(sK3,k2_funct_1(sK3))) = k1_relat_1(sK3)
    | v1_funct_1(sK3) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_6800,c_1303])).

cnf(c_22,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X2,X0,X1)
    | ~ v1_funct_2(X3,X1,X0)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X1,X0,X3) = X0 ),
    inference(cnf_transformation,[],[f74])).

cnf(c_445,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X2,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X2,X1,X1,X2,X3,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X1,X2,X0) = X2
    | k6_partfun1(X2) != k6_partfun1(sK0)
    | sK0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_33])).

cnf(c_446,plain,
    ( ~ v1_funct_2(X0,X1,sK0)
    | ~ v1_funct_2(X2,sK0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X2)
    | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X1,sK0,X0) = sK0
    | k6_partfun1(sK0) != k6_partfun1(sK0) ),
    inference(unflattening,[status(thm)],[c_445])).

cnf(c_534,plain,
    ( ~ v1_funct_2(X0,X1,sK0)
    | ~ v1_funct_2(X2,sK0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X2)
    | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X1,sK0,X0) = sK0 ),
    inference(equality_resolution_simp,[status(thm)],[c_446])).

cnf(c_1280,plain,
    ( k1_partfun1(sK0,X0,X0,sK0,X1,X2) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X0,sK0,X2) = sK0
    | v1_funct_2(X2,X0,sK0) != iProver_top
    | v1_funct_2(X1,sK0,X0) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK0))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_534])).

cnf(c_1835,plain,
    ( k2_relset_1(sK1,sK0,sK3) = sK0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | v1_funct_2(sK2,sK0,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1280])).

cnf(c_2170,plain,
    ( k2_relset_1(sK1,sK0,sK3) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1835,c_41,c_42,c_43,c_44,c_45,c_46])).

cnf(c_3199,plain,
    ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1)
    | sK0 = k1_xboole_0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v2_funct_1(sK3) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2170,c_1290])).

cnf(c_3517,plain,
    ( v2_funct_1(sK3) != iProver_top
    | k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3199,c_44,c_45,c_46,c_31,c_760,c_1398])).

cnf(c_3518,plain,
    ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1)
    | v2_funct_1(sK3) != iProver_top ),
    inference(renaming,[status(thm)],[c_3517])).

cnf(c_6811,plain,
    ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1) ),
    inference(superposition,[status(thm)],[c_6800,c_3518])).

cnf(c_6814,plain,
    ( k1_relat_1(k6_partfun1(sK1)) = k1_relat_1(sK3)
    | v1_funct_1(sK3) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_6805,c_6811])).

cnf(c_2,plain,
    ( k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(cnf_transformation,[],[f94])).

cnf(c_6815,plain,
    ( k1_relat_1(sK3) = sK1
    | v1_funct_1(sK3) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(demodulation,[status(thm)],[c_6814,c_2])).

cnf(c_7446,plain,
    ( k1_relat_1(sK3) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6815,c_44,c_2412])).

cnf(c_3,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0 ),
    inference(cnf_transformation,[],[f95])).

cnf(c_1312,plain,
    ( k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_2644,plain,
    ( k5_relat_1(k6_partfun1(k1_relat_1(sK3)),sK3) = sK3 ),
    inference(superposition,[status(thm)],[c_2412,c_1312])).

cnf(c_7448,plain,
    ( k5_relat_1(k6_partfun1(sK1),sK3) = sK3 ),
    inference(demodulation,[status(thm)],[c_7446,c_2644])).

cnf(c_9557,plain,
    ( k2_funct_1(sK2) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_9552,c_5086,c_6233,c_7448])).

cnf(c_29,negated_conjecture,
    ( k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f92])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_9557,c_29])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n003.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 19:28:57 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.77/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.77/0.98  
% 3.77/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.77/0.98  
% 3.77/0.98  ------  iProver source info
% 3.77/0.98  
% 3.77/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.77/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.77/0.98  git: non_committed_changes: false
% 3.77/0.98  git: last_make_outside_of_git: false
% 3.77/0.98  
% 3.77/0.98  ------ 
% 3.77/0.98  
% 3.77/0.98  ------ Input Options
% 3.77/0.98  
% 3.77/0.98  --out_options                           all
% 3.77/0.98  --tptp_safe_out                         true
% 3.77/0.98  --problem_path                          ""
% 3.77/0.98  --include_path                          ""
% 3.77/0.98  --clausifier                            res/vclausify_rel
% 3.77/0.98  --clausifier_options                    ""
% 3.77/0.98  --stdin                                 false
% 3.77/0.98  --stats_out                             all
% 3.77/0.98  
% 3.77/0.98  ------ General Options
% 3.77/0.98  
% 3.77/0.98  --fof                                   false
% 3.77/0.98  --time_out_real                         305.
% 3.77/0.98  --time_out_virtual                      -1.
% 3.77/0.98  --symbol_type_check                     false
% 3.77/0.98  --clausify_out                          false
% 3.77/0.98  --sig_cnt_out                           false
% 3.77/0.98  --trig_cnt_out                          false
% 3.77/0.98  --trig_cnt_out_tolerance                1.
% 3.77/0.98  --trig_cnt_out_sk_spl                   false
% 3.77/0.98  --abstr_cl_out                          false
% 3.77/0.98  
% 3.77/0.98  ------ Global Options
% 3.77/0.98  
% 3.77/0.98  --schedule                              default
% 3.77/0.98  --add_important_lit                     false
% 3.77/0.98  --prop_solver_per_cl                    1000
% 3.77/0.98  --min_unsat_core                        false
% 3.77/0.98  --soft_assumptions                      false
% 3.77/0.98  --soft_lemma_size                       3
% 3.77/0.98  --prop_impl_unit_size                   0
% 3.77/0.98  --prop_impl_unit                        []
% 3.77/0.98  --share_sel_clauses                     true
% 3.77/0.98  --reset_solvers                         false
% 3.77/0.98  --bc_imp_inh                            [conj_cone]
% 3.77/0.98  --conj_cone_tolerance                   3.
% 3.77/0.98  --extra_neg_conj                        none
% 3.77/0.98  --large_theory_mode                     true
% 3.77/0.98  --prolific_symb_bound                   200
% 3.77/0.98  --lt_threshold                          2000
% 3.77/0.98  --clause_weak_htbl                      true
% 3.77/0.98  --gc_record_bc_elim                     false
% 3.77/0.98  
% 3.77/0.98  ------ Preprocessing Options
% 3.77/0.98  
% 3.77/0.98  --preprocessing_flag                    true
% 3.77/0.98  --time_out_prep_mult                    0.1
% 3.77/0.98  --splitting_mode                        input
% 3.77/0.98  --splitting_grd                         true
% 3.77/0.98  --splitting_cvd                         false
% 3.77/0.98  --splitting_cvd_svl                     false
% 3.77/0.98  --splitting_nvd                         32
% 3.77/0.98  --sub_typing                            true
% 3.77/0.98  --prep_gs_sim                           true
% 3.77/0.98  --prep_unflatten                        true
% 3.77/0.98  --prep_res_sim                          true
% 3.77/0.98  --prep_upred                            true
% 3.77/0.98  --prep_sem_filter                       exhaustive
% 3.77/0.98  --prep_sem_filter_out                   false
% 3.77/0.98  --pred_elim                             true
% 3.77/0.98  --res_sim_input                         true
% 3.77/0.98  --eq_ax_congr_red                       true
% 3.77/0.98  --pure_diseq_elim                       true
% 3.77/0.98  --brand_transform                       false
% 3.77/0.98  --non_eq_to_eq                          false
% 3.77/0.98  --prep_def_merge                        true
% 3.77/0.98  --prep_def_merge_prop_impl              false
% 3.77/0.98  --prep_def_merge_mbd                    true
% 3.77/0.98  --prep_def_merge_tr_red                 false
% 3.77/0.98  --prep_def_merge_tr_cl                  false
% 3.77/0.98  --smt_preprocessing                     true
% 3.77/0.98  --smt_ac_axioms                         fast
% 3.77/0.98  --preprocessed_out                      false
% 3.77/0.98  --preprocessed_stats                    false
% 3.77/0.98  
% 3.77/0.98  ------ Abstraction refinement Options
% 3.77/0.98  
% 3.77/0.98  --abstr_ref                             []
% 3.77/0.98  --abstr_ref_prep                        false
% 3.77/0.98  --abstr_ref_until_sat                   false
% 3.77/0.98  --abstr_ref_sig_restrict                funpre
% 3.77/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.77/0.98  --abstr_ref_under                       []
% 3.77/0.98  
% 3.77/0.98  ------ SAT Options
% 3.77/0.98  
% 3.77/0.98  --sat_mode                              false
% 3.77/0.98  --sat_fm_restart_options                ""
% 3.77/0.98  --sat_gr_def                            false
% 3.77/0.98  --sat_epr_types                         true
% 3.77/0.98  --sat_non_cyclic_types                  false
% 3.77/0.98  --sat_finite_models                     false
% 3.77/0.98  --sat_fm_lemmas                         false
% 3.77/0.98  --sat_fm_prep                           false
% 3.77/0.98  --sat_fm_uc_incr                        true
% 3.77/0.98  --sat_out_model                         small
% 3.77/0.98  --sat_out_clauses                       false
% 3.77/0.98  
% 3.77/0.98  ------ QBF Options
% 3.77/0.98  
% 3.77/0.98  --qbf_mode                              false
% 3.77/0.98  --qbf_elim_univ                         false
% 3.77/0.98  --qbf_dom_inst                          none
% 3.77/0.98  --qbf_dom_pre_inst                      false
% 3.77/0.98  --qbf_sk_in                             false
% 3.77/0.98  --qbf_pred_elim                         true
% 3.77/0.98  --qbf_split                             512
% 3.77/0.98  
% 3.77/0.98  ------ BMC1 Options
% 3.77/0.98  
% 3.77/0.98  --bmc1_incremental                      false
% 3.77/0.98  --bmc1_axioms                           reachable_all
% 3.77/0.98  --bmc1_min_bound                        0
% 3.77/0.98  --bmc1_max_bound                        -1
% 3.77/0.98  --bmc1_max_bound_default                -1
% 3.77/0.98  --bmc1_symbol_reachability              true
% 3.77/0.98  --bmc1_property_lemmas                  false
% 3.77/0.98  --bmc1_k_induction                      false
% 3.77/0.98  --bmc1_non_equiv_states                 false
% 3.77/0.98  --bmc1_deadlock                         false
% 3.77/0.98  --bmc1_ucm                              false
% 3.77/0.98  --bmc1_add_unsat_core                   none
% 3.77/0.98  --bmc1_unsat_core_children              false
% 3.77/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.77/0.98  --bmc1_out_stat                         full
% 3.77/0.98  --bmc1_ground_init                      false
% 3.77/0.98  --bmc1_pre_inst_next_state              false
% 3.77/0.98  --bmc1_pre_inst_state                   false
% 3.77/0.98  --bmc1_pre_inst_reach_state             false
% 3.77/0.98  --bmc1_out_unsat_core                   false
% 3.77/0.98  --bmc1_aig_witness_out                  false
% 3.77/0.98  --bmc1_verbose                          false
% 3.77/0.98  --bmc1_dump_clauses_tptp                false
% 3.77/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.77/0.98  --bmc1_dump_file                        -
% 3.77/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.77/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.77/0.98  --bmc1_ucm_extend_mode                  1
% 3.77/0.98  --bmc1_ucm_init_mode                    2
% 3.77/0.98  --bmc1_ucm_cone_mode                    none
% 3.77/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.77/0.98  --bmc1_ucm_relax_model                  4
% 3.77/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.77/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.77/0.98  --bmc1_ucm_layered_model                none
% 3.77/0.98  --bmc1_ucm_max_lemma_size               10
% 3.77/0.98  
% 3.77/0.98  ------ AIG Options
% 3.77/0.98  
% 3.77/0.98  --aig_mode                              false
% 3.77/0.98  
% 3.77/0.98  ------ Instantiation Options
% 3.77/0.98  
% 3.77/0.98  --instantiation_flag                    true
% 3.77/0.98  --inst_sos_flag                         true
% 3.77/0.98  --inst_sos_phase                        true
% 3.77/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.77/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.77/0.98  --inst_lit_sel_side                     num_symb
% 3.77/0.98  --inst_solver_per_active                1400
% 3.77/0.98  --inst_solver_calls_frac                1.
% 3.77/0.98  --inst_passive_queue_type               priority_queues
% 3.77/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.77/0.98  --inst_passive_queues_freq              [25;2]
% 3.77/0.98  --inst_dismatching                      true
% 3.77/0.98  --inst_eager_unprocessed_to_passive     true
% 3.77/0.98  --inst_prop_sim_given                   true
% 3.77/0.98  --inst_prop_sim_new                     false
% 3.77/0.98  --inst_subs_new                         false
% 3.77/0.98  --inst_eq_res_simp                      false
% 3.77/0.98  --inst_subs_given                       false
% 3.77/0.98  --inst_orphan_elimination               true
% 3.77/0.98  --inst_learning_loop_flag               true
% 3.77/0.98  --inst_learning_start                   3000
% 3.77/0.98  --inst_learning_factor                  2
% 3.77/0.98  --inst_start_prop_sim_after_learn       3
% 3.77/0.98  --inst_sel_renew                        solver
% 3.77/0.98  --inst_lit_activity_flag                true
% 3.77/0.98  --inst_restr_to_given                   false
% 3.77/0.98  --inst_activity_threshold               500
% 3.77/0.98  --inst_out_proof                        true
% 3.77/0.98  
% 3.77/0.98  ------ Resolution Options
% 3.77/0.98  
% 3.77/0.98  --resolution_flag                       true
% 3.77/0.98  --res_lit_sel                           adaptive
% 3.77/0.98  --res_lit_sel_side                      none
% 3.77/0.98  --res_ordering                          kbo
% 3.77/0.98  --res_to_prop_solver                    active
% 3.77/0.98  --res_prop_simpl_new                    false
% 3.77/0.98  --res_prop_simpl_given                  true
% 3.77/0.98  --res_passive_queue_type                priority_queues
% 3.77/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.77/0.98  --res_passive_queues_freq               [15;5]
% 3.77/0.98  --res_forward_subs                      full
% 3.77/0.98  --res_backward_subs                     full
% 3.77/0.98  --res_forward_subs_resolution           true
% 3.77/0.98  --res_backward_subs_resolution          true
% 3.77/0.98  --res_orphan_elimination                true
% 3.77/0.98  --res_time_limit                        2.
% 3.77/0.98  --res_out_proof                         true
% 3.77/0.98  
% 3.77/0.98  ------ Superposition Options
% 3.77/0.98  
% 3.77/0.98  --superposition_flag                    true
% 3.77/0.98  --sup_passive_queue_type                priority_queues
% 3.77/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.77/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.77/0.98  --demod_completeness_check              fast
% 3.77/0.98  --demod_use_ground                      true
% 3.77/0.98  --sup_to_prop_solver                    passive
% 3.77/0.98  --sup_prop_simpl_new                    true
% 3.77/0.98  --sup_prop_simpl_given                  true
% 3.77/0.98  --sup_fun_splitting                     true
% 3.77/0.98  --sup_smt_interval                      50000
% 3.77/0.98  
% 3.77/0.98  ------ Superposition Simplification Setup
% 3.77/0.98  
% 3.77/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.77/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.77/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.77/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.77/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.77/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.77/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.77/0.98  --sup_immed_triv                        [TrivRules]
% 3.77/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.77/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.77/0.98  --sup_immed_bw_main                     []
% 3.77/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.77/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.77/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.77/0.98  --sup_input_bw                          []
% 3.77/0.98  
% 3.77/0.98  ------ Combination Options
% 3.77/0.98  
% 3.77/0.98  --comb_res_mult                         3
% 3.77/0.98  --comb_sup_mult                         2
% 3.77/0.98  --comb_inst_mult                        10
% 3.77/0.98  
% 3.77/0.98  ------ Debug Options
% 3.77/0.98  
% 3.77/0.98  --dbg_backtrace                         false
% 3.77/0.98  --dbg_dump_prop_clauses                 false
% 3.77/0.98  --dbg_dump_prop_clauses_file            -
% 3.77/0.98  --dbg_out_stat                          false
% 3.77/0.98  ------ Parsing...
% 3.77/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.77/0.98  
% 3.77/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.77/0.98  
% 3.77/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.77/0.98  
% 3.77/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.77/0.98  ------ Proving...
% 3.77/0.98  ------ Problem Properties 
% 3.77/0.98  
% 3.77/0.98  
% 3.77/0.98  clauses                                 40
% 3.77/0.98  conjectures                             11
% 3.77/0.98  EPR                                     7
% 3.77/0.98  Horn                                    36
% 3.77/0.98  unary                                   16
% 3.77/0.98  binary                                  4
% 3.77/0.98  lits                                    141
% 3.77/0.98  lits eq                                 33
% 3.77/0.98  fd_pure                                 0
% 3.77/0.98  fd_pseudo                               0
% 3.77/0.98  fd_cond                                 4
% 3.77/0.98  fd_pseudo_cond                          0
% 3.77/0.98  AC symbols                              0
% 3.77/0.98  
% 3.77/0.98  ------ Schedule dynamic 5 is on 
% 3.77/0.98  
% 3.77/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.77/0.98  
% 3.77/0.98  
% 3.77/0.98  ------ 
% 3.77/0.98  Current options:
% 3.77/0.98  ------ 
% 3.77/0.98  
% 3.77/0.98  ------ Input Options
% 3.77/0.98  
% 3.77/0.98  --out_options                           all
% 3.77/0.98  --tptp_safe_out                         true
% 3.77/0.98  --problem_path                          ""
% 3.77/0.98  --include_path                          ""
% 3.77/0.98  --clausifier                            res/vclausify_rel
% 3.77/0.98  --clausifier_options                    ""
% 3.77/0.98  --stdin                                 false
% 3.77/0.98  --stats_out                             all
% 3.77/0.98  
% 3.77/0.98  ------ General Options
% 3.77/0.98  
% 3.77/0.98  --fof                                   false
% 3.77/0.98  --time_out_real                         305.
% 3.77/0.98  --time_out_virtual                      -1.
% 3.77/0.98  --symbol_type_check                     false
% 3.77/0.98  --clausify_out                          false
% 3.77/0.98  --sig_cnt_out                           false
% 3.77/0.98  --trig_cnt_out                          false
% 3.77/0.98  --trig_cnt_out_tolerance                1.
% 3.77/0.98  --trig_cnt_out_sk_spl                   false
% 3.77/0.98  --abstr_cl_out                          false
% 3.77/0.98  
% 3.77/0.98  ------ Global Options
% 3.77/0.98  
% 3.77/0.98  --schedule                              default
% 3.77/0.98  --add_important_lit                     false
% 3.77/0.98  --prop_solver_per_cl                    1000
% 3.77/0.98  --min_unsat_core                        false
% 3.77/0.98  --soft_assumptions                      false
% 3.77/0.98  --soft_lemma_size                       3
% 3.77/0.98  --prop_impl_unit_size                   0
% 3.77/0.98  --prop_impl_unit                        []
% 3.77/0.98  --share_sel_clauses                     true
% 3.77/0.98  --reset_solvers                         false
% 3.77/0.98  --bc_imp_inh                            [conj_cone]
% 3.77/0.98  --conj_cone_tolerance                   3.
% 3.77/0.98  --extra_neg_conj                        none
% 3.77/0.98  --large_theory_mode                     true
% 3.77/0.98  --prolific_symb_bound                   200
% 3.77/0.98  --lt_threshold                          2000
% 3.77/0.98  --clause_weak_htbl                      true
% 3.77/0.98  --gc_record_bc_elim                     false
% 3.77/0.98  
% 3.77/0.98  ------ Preprocessing Options
% 3.77/0.98  
% 3.77/0.98  --preprocessing_flag                    true
% 3.77/0.98  --time_out_prep_mult                    0.1
% 3.77/0.98  --splitting_mode                        input
% 3.77/0.98  --splitting_grd                         true
% 3.77/0.98  --splitting_cvd                         false
% 3.77/0.98  --splitting_cvd_svl                     false
% 3.77/0.98  --splitting_nvd                         32
% 3.77/0.98  --sub_typing                            true
% 3.77/0.98  --prep_gs_sim                           true
% 3.77/0.98  --prep_unflatten                        true
% 3.77/0.98  --prep_res_sim                          true
% 3.77/0.98  --prep_upred                            true
% 3.77/0.98  --prep_sem_filter                       exhaustive
% 3.77/0.98  --prep_sem_filter_out                   false
% 3.77/0.98  --pred_elim                             true
% 3.77/0.98  --res_sim_input                         true
% 3.77/0.98  --eq_ax_congr_red                       true
% 3.77/0.98  --pure_diseq_elim                       true
% 3.77/0.98  --brand_transform                       false
% 3.77/0.99  --non_eq_to_eq                          false
% 3.77/0.99  --prep_def_merge                        true
% 3.77/0.99  --prep_def_merge_prop_impl              false
% 3.77/0.99  --prep_def_merge_mbd                    true
% 3.77/0.99  --prep_def_merge_tr_red                 false
% 3.77/0.99  --prep_def_merge_tr_cl                  false
% 3.77/0.99  --smt_preprocessing                     true
% 3.77/0.99  --smt_ac_axioms                         fast
% 3.77/0.99  --preprocessed_out                      false
% 3.77/0.99  --preprocessed_stats                    false
% 3.77/0.99  
% 3.77/0.99  ------ Abstraction refinement Options
% 3.77/0.99  
% 3.77/0.99  --abstr_ref                             []
% 3.77/0.99  --abstr_ref_prep                        false
% 3.77/0.99  --abstr_ref_until_sat                   false
% 3.77/0.99  --abstr_ref_sig_restrict                funpre
% 3.77/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.77/0.99  --abstr_ref_under                       []
% 3.77/0.99  
% 3.77/0.99  ------ SAT Options
% 3.77/0.99  
% 3.77/0.99  --sat_mode                              false
% 3.77/0.99  --sat_fm_restart_options                ""
% 3.77/0.99  --sat_gr_def                            false
% 3.77/0.99  --sat_epr_types                         true
% 3.77/0.99  --sat_non_cyclic_types                  false
% 3.77/0.99  --sat_finite_models                     false
% 3.77/0.99  --sat_fm_lemmas                         false
% 3.77/0.99  --sat_fm_prep                           false
% 3.77/0.99  --sat_fm_uc_incr                        true
% 3.77/0.99  --sat_out_model                         small
% 3.77/0.99  --sat_out_clauses                       false
% 3.77/0.99  
% 3.77/0.99  ------ QBF Options
% 3.77/0.99  
% 3.77/0.99  --qbf_mode                              false
% 3.77/0.99  --qbf_elim_univ                         false
% 3.77/0.99  --qbf_dom_inst                          none
% 3.77/0.99  --qbf_dom_pre_inst                      false
% 3.77/0.99  --qbf_sk_in                             false
% 3.77/0.99  --qbf_pred_elim                         true
% 3.77/0.99  --qbf_split                             512
% 3.77/0.99  
% 3.77/0.99  ------ BMC1 Options
% 3.77/0.99  
% 3.77/0.99  --bmc1_incremental                      false
% 3.77/0.99  --bmc1_axioms                           reachable_all
% 3.77/0.99  --bmc1_min_bound                        0
% 3.77/0.99  --bmc1_max_bound                        -1
% 3.77/0.99  --bmc1_max_bound_default                -1
% 3.77/0.99  --bmc1_symbol_reachability              true
% 3.77/0.99  --bmc1_property_lemmas                  false
% 3.77/0.99  --bmc1_k_induction                      false
% 3.77/0.99  --bmc1_non_equiv_states                 false
% 3.77/0.99  --bmc1_deadlock                         false
% 3.77/0.99  --bmc1_ucm                              false
% 3.77/0.99  --bmc1_add_unsat_core                   none
% 3.77/0.99  --bmc1_unsat_core_children              false
% 3.77/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.77/0.99  --bmc1_out_stat                         full
% 3.77/0.99  --bmc1_ground_init                      false
% 3.77/0.99  --bmc1_pre_inst_next_state              false
% 3.77/0.99  --bmc1_pre_inst_state                   false
% 3.77/0.99  --bmc1_pre_inst_reach_state             false
% 3.77/0.99  --bmc1_out_unsat_core                   false
% 3.77/0.99  --bmc1_aig_witness_out                  false
% 3.77/0.99  --bmc1_verbose                          false
% 3.77/0.99  --bmc1_dump_clauses_tptp                false
% 3.77/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.77/0.99  --bmc1_dump_file                        -
% 3.77/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.77/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.77/0.99  --bmc1_ucm_extend_mode                  1
% 3.77/0.99  --bmc1_ucm_init_mode                    2
% 3.77/0.99  --bmc1_ucm_cone_mode                    none
% 3.77/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.77/0.99  --bmc1_ucm_relax_model                  4
% 3.77/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.77/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.77/0.99  --bmc1_ucm_layered_model                none
% 3.77/0.99  --bmc1_ucm_max_lemma_size               10
% 3.77/0.99  
% 3.77/0.99  ------ AIG Options
% 3.77/0.99  
% 3.77/0.99  --aig_mode                              false
% 3.77/0.99  
% 3.77/0.99  ------ Instantiation Options
% 3.77/0.99  
% 3.77/0.99  --instantiation_flag                    true
% 3.77/0.99  --inst_sos_flag                         true
% 3.77/0.99  --inst_sos_phase                        true
% 3.77/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.77/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.77/0.99  --inst_lit_sel_side                     none
% 3.77/0.99  --inst_solver_per_active                1400
% 3.77/0.99  --inst_solver_calls_frac                1.
% 3.77/0.99  --inst_passive_queue_type               priority_queues
% 3.77/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.77/0.99  --inst_passive_queues_freq              [25;2]
% 3.77/0.99  --inst_dismatching                      true
% 3.77/0.99  --inst_eager_unprocessed_to_passive     true
% 3.77/0.99  --inst_prop_sim_given                   true
% 3.77/0.99  --inst_prop_sim_new                     false
% 3.77/0.99  --inst_subs_new                         false
% 3.77/0.99  --inst_eq_res_simp                      false
% 3.77/0.99  --inst_subs_given                       false
% 3.77/0.99  --inst_orphan_elimination               true
% 3.77/0.99  --inst_learning_loop_flag               true
% 3.77/0.99  --inst_learning_start                   3000
% 3.77/0.99  --inst_learning_factor                  2
% 3.77/0.99  --inst_start_prop_sim_after_learn       3
% 3.77/0.99  --inst_sel_renew                        solver
% 3.77/0.99  --inst_lit_activity_flag                true
% 3.77/0.99  --inst_restr_to_given                   false
% 3.77/0.99  --inst_activity_threshold               500
% 3.77/0.99  --inst_out_proof                        true
% 3.77/0.99  
% 3.77/0.99  ------ Resolution Options
% 3.77/0.99  
% 3.77/0.99  --resolution_flag                       false
% 3.77/0.99  --res_lit_sel                           adaptive
% 3.77/0.99  --res_lit_sel_side                      none
% 3.77/0.99  --res_ordering                          kbo
% 3.77/0.99  --res_to_prop_solver                    active
% 3.77/0.99  --res_prop_simpl_new                    false
% 3.77/0.99  --res_prop_simpl_given                  true
% 3.77/0.99  --res_passive_queue_type                priority_queues
% 3.77/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.77/0.99  --res_passive_queues_freq               [15;5]
% 3.77/0.99  --res_forward_subs                      full
% 3.77/0.99  --res_backward_subs                     full
% 3.77/0.99  --res_forward_subs_resolution           true
% 3.77/0.99  --res_backward_subs_resolution          true
% 3.77/0.99  --res_orphan_elimination                true
% 3.77/0.99  --res_time_limit                        2.
% 3.77/0.99  --res_out_proof                         true
% 3.77/0.99  
% 3.77/0.99  ------ Superposition Options
% 3.77/0.99  
% 3.77/0.99  --superposition_flag                    true
% 3.77/0.99  --sup_passive_queue_type                priority_queues
% 3.77/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.77/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.77/0.99  --demod_completeness_check              fast
% 3.77/0.99  --demod_use_ground                      true
% 3.77/0.99  --sup_to_prop_solver                    passive
% 3.77/0.99  --sup_prop_simpl_new                    true
% 3.77/0.99  --sup_prop_simpl_given                  true
% 3.77/0.99  --sup_fun_splitting                     true
% 3.77/0.99  --sup_smt_interval                      50000
% 3.77/0.99  
% 3.77/0.99  ------ Superposition Simplification Setup
% 3.77/0.99  
% 3.77/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.77/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.77/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.77/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.77/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.77/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.77/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.77/0.99  --sup_immed_triv                        [TrivRules]
% 3.77/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.77/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.77/0.99  --sup_immed_bw_main                     []
% 3.77/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.77/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.77/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.77/0.99  --sup_input_bw                          []
% 3.77/0.99  
% 3.77/0.99  ------ Combination Options
% 3.77/0.99  
% 3.77/0.99  --comb_res_mult                         3
% 3.77/0.99  --comb_sup_mult                         2
% 3.77/0.99  --comb_inst_mult                        10
% 3.77/0.99  
% 3.77/0.99  ------ Debug Options
% 3.77/0.99  
% 3.77/0.99  --dbg_backtrace                         false
% 3.77/0.99  --dbg_dump_prop_clauses                 false
% 3.77/0.99  --dbg_dump_prop_clauses_file            -
% 3.77/0.99  --dbg_out_stat                          false
% 3.77/0.99  
% 3.77/0.99  
% 3.77/0.99  
% 3.77/0.99  
% 3.77/0.99  ------ Proving...
% 3.77/0.99  
% 3.77/0.99  
% 3.77/0.99  % SZS status Theorem for theBenchmark.p
% 3.77/0.99  
% 3.77/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.77/0.99  
% 3.77/0.99  fof(f19,conjecture,(
% 3.77/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f20,negated_conjecture,(
% 3.77/0.99    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 3.77/0.99    inference(negated_conjecture,[],[f19])).
% 3.77/0.99  
% 3.77/0.99  fof(f45,plain,(
% 3.77/0.99    ? [X0,X1,X2] : (? [X3] : (((k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & (v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 3.77/0.99    inference(ennf_transformation,[],[f20])).
% 3.77/0.99  
% 3.77/0.99  fof(f46,plain,(
% 3.77/0.99    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 3.77/0.99    inference(flattening,[],[f45])).
% 3.77/0.99  
% 3.77/0.99  fof(f49,plain,(
% 3.77/0.99    ( ! [X2,X0,X1] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (k2_funct_1(X2) != sK3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,sK3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(sK3,X1,X0) & v1_funct_1(sK3))) )),
% 3.77/0.99    introduced(choice_axiom,[])).
% 3.77/0.99  
% 3.77/0.99  fof(f48,plain,(
% 3.77/0.99    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (k2_funct_1(sK2) != X3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,X3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(X3,sK1,sK0) & v1_funct_1(X3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 3.77/0.99    introduced(choice_axiom,[])).
% 3.77/0.99  
% 3.77/0.99  fof(f50,plain,(
% 3.77/0.99    (k2_funct_1(sK2) != sK3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(sK3,sK1,sK0) & v1_funct_1(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 3.77/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f46,f49,f48])).
% 3.77/0.99  
% 3.77/0.99  fof(f86,plain,(
% 3.77/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f10,axiom,(
% 3.77/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f32,plain,(
% 3.77/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.77/0.99    inference(ennf_transformation,[],[f10])).
% 3.77/0.99  
% 3.77/0.99  fof(f66,plain,(
% 3.77/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.77/0.99    inference(cnf_transformation,[],[f32])).
% 3.77/0.99  
% 3.77/0.99  fof(f83,plain,(
% 3.77/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f81,plain,(
% 3.77/0.99    v1_funct_1(sK2)),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f5,axiom,(
% 3.77/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f24,plain,(
% 3.77/0.99    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.77/0.99    inference(ennf_transformation,[],[f5])).
% 3.77/0.99  
% 3.77/0.99  fof(f25,plain,(
% 3.77/0.99    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.77/0.99    inference(flattening,[],[f24])).
% 3.77/0.99  
% 3.77/0.99  fof(f56,plain,(
% 3.77/0.99    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f25])).
% 3.77/0.99  
% 3.77/0.99  fof(f1,axiom,(
% 3.77/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2))))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f21,plain,(
% 3.77/0.99    ! [X0] : (! [X1] : (! [X2] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.77/0.99    inference(ennf_transformation,[],[f1])).
% 3.77/0.99  
% 3.77/0.99  fof(f51,plain,(
% 3.77/0.99    ( ! [X2,X0,X1] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f21])).
% 3.77/0.99  
% 3.77/0.99  fof(f87,plain,(
% 3.77/0.99    k2_relset_1(sK0,sK1,sK2) = sK1),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f18,axiom,(
% 3.77/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => ((k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)) | k1_xboole_0 = X1)))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f43,plain,(
% 3.77/0.99    ! [X0,X1,X2] : ((((k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)) | k1_xboole_0 = X1) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.77/0.99    inference(ennf_transformation,[],[f18])).
% 3.77/0.99  
% 3.77/0.99  fof(f44,plain,(
% 3.77/0.99    ! [X0,X1,X2] : ((k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)) | k1_xboole_0 = X1 | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.77/0.99    inference(flattening,[],[f43])).
% 3.77/0.99  
% 3.77/0.99  fof(f80,plain,(
% 3.77/0.99    ( ! [X2,X0,X1] : (k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) | k1_xboole_0 = X1 | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f44])).
% 3.77/0.99  
% 3.77/0.99  fof(f82,plain,(
% 3.77/0.99    v1_funct_2(sK2,sK0,sK1)),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f89,plain,(
% 3.77/0.99    v2_funct_1(sK2)),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f91,plain,(
% 3.77/0.99    k1_xboole_0 != sK1),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f4,axiom,(
% 3.77/0.99    ! [X0] : (v1_relat_1(X0) => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0)),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f23,plain,(
% 3.77/0.99    ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0))),
% 3.77/0.99    inference(ennf_transformation,[],[f4])).
% 3.77/0.99  
% 3.77/0.99  fof(f55,plain,(
% 3.77/0.99    ( ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f23])).
% 3.77/0.99  
% 3.77/0.99  fof(f15,axiom,(
% 3.77/0.99    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f73,plain,(
% 3.77/0.99    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f15])).
% 3.77/0.99  
% 3.77/0.99  fof(f96,plain,(
% 3.77/0.99    ( ! [X0] : (k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(definition_unfolding,[],[f55,f73])).
% 3.77/0.99  
% 3.77/0.99  fof(f7,axiom,(
% 3.77/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f26,plain,(
% 3.77/0.99    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.77/0.99    inference(ennf_transformation,[],[f7])).
% 3.77/0.99  
% 3.77/0.99  fof(f27,plain,(
% 3.77/0.99    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.77/0.99    inference(flattening,[],[f26])).
% 3.77/0.99  
% 3.77/0.99  fof(f61,plain,(
% 3.77/0.99    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f27])).
% 3.77/0.99  
% 3.77/0.99  fof(f9,axiom,(
% 3.77/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)))))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f30,plain,(
% 3.77/0.99    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.77/0.99    inference(ennf_transformation,[],[f9])).
% 3.77/0.99  
% 3.77/0.99  fof(f31,plain,(
% 3.77/0.99    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.77/0.99    inference(flattening,[],[f30])).
% 3.77/0.99  
% 3.77/0.99  fof(f64,plain,(
% 3.77/0.99    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f31])).
% 3.77/0.99  
% 3.77/0.99  fof(f100,plain,(
% 3.77/0.99    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(definition_unfolding,[],[f64,f73])).
% 3.77/0.99  
% 3.77/0.99  fof(f79,plain,(
% 3.77/0.99    ( ! [X2,X0,X1] : (k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) | k1_xboole_0 = X1 | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f44])).
% 3.77/0.99  
% 3.77/0.99  fof(f2,axiom,(
% 3.77/0.99    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f53,plain,(
% 3.77/0.99    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 3.77/0.99    inference(cnf_transformation,[],[f2])).
% 3.77/0.99  
% 3.77/0.99  fof(f93,plain,(
% 3.77/0.99    ( ! [X0] : (k2_relat_1(k6_partfun1(X0)) = X0) )),
% 3.77/0.99    inference(definition_unfolding,[],[f53,f73])).
% 3.77/0.99  
% 3.77/0.99  fof(f14,axiom,(
% 3.77/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f37,plain,(
% 3.77/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.77/0.99    inference(ennf_transformation,[],[f14])).
% 3.77/0.99  
% 3.77/0.99  fof(f38,plain,(
% 3.77/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.77/0.99    inference(flattening,[],[f37])).
% 3.77/0.99  
% 3.77/0.99  fof(f72,plain,(
% 3.77/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f38])).
% 3.77/0.99  
% 3.77/0.99  fof(f84,plain,(
% 3.77/0.99    v1_funct_1(sK3)),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f11,axiom,(
% 3.77/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f33,plain,(
% 3.77/0.99    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 3.77/0.99    inference(ennf_transformation,[],[f11])).
% 3.77/0.99  
% 3.77/0.99  fof(f34,plain,(
% 3.77/0.99    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.77/0.99    inference(flattening,[],[f33])).
% 3.77/0.99  
% 3.77/0.99  fof(f47,plain,(
% 3.77/0.99    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.77/0.99    inference(nnf_transformation,[],[f34])).
% 3.77/0.99  
% 3.77/0.99  fof(f67,plain,(
% 3.77/0.99    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.77/0.99    inference(cnf_transformation,[],[f47])).
% 3.77/0.99  
% 3.77/0.99  fof(f88,plain,(
% 3.77/0.99    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0))),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f12,axiom,(
% 3.77/0.99    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f69,plain,(
% 3.77/0.99    ( ! [X0] : (m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 3.77/0.99    inference(cnf_transformation,[],[f12])).
% 3.77/0.99  
% 3.77/0.99  fof(f101,plain,(
% 3.77/0.99    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 3.77/0.99    inference(definition_unfolding,[],[f69,f73])).
% 3.77/0.99  
% 3.77/0.99  fof(f13,axiom,(
% 3.77/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f35,plain,(
% 3.77/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.77/0.99    inference(ennf_transformation,[],[f13])).
% 3.77/0.99  
% 3.77/0.99  fof(f36,plain,(
% 3.77/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.77/0.99    inference(flattening,[],[f35])).
% 3.77/0.99  
% 3.77/0.99  fof(f71,plain,(
% 3.77/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f36])).
% 3.77/0.99  
% 3.77/0.99  fof(f17,axiom,(
% 3.77/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((k2_relset_1(X0,X1,X3) = X1 & v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))) => ((v2_funct_1(X4) & v2_funct_1(X3)) | (k1_xboole_0 != X1 & k1_xboole_0 = X2)))))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f41,plain,(
% 3.77/0.99    ! [X0,X1,X2,X3] : (! [X4] : ((((v2_funct_1(X4) & v2_funct_1(X3)) | (k1_xboole_0 != X1 & k1_xboole_0 = X2)) | (k2_relset_1(X0,X1,X3) != X1 | ~v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X4,X1,X2) | ~v1_funct_1(X4))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 3.77/0.99    inference(ennf_transformation,[],[f17])).
% 3.77/0.99  
% 3.77/0.99  fof(f42,plain,(
% 3.77/0.99    ! [X0,X1,X2,X3] : (! [X4] : ((v2_funct_1(X4) & v2_funct_1(X3)) | (k1_xboole_0 != X1 & k1_xboole_0 = X2) | k2_relset_1(X0,X1,X3) != X1 | ~v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X4,X1,X2) | ~v1_funct_1(X4)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 3.77/0.99    inference(flattening,[],[f41])).
% 3.77/0.99  
% 3.77/0.99  fof(f77,plain,(
% 3.77/0.99    ( ! [X4,X2,X0,X3,X1] : (v2_funct_1(X4) | k1_xboole_0 = X2 | k2_relset_1(X0,X1,X3) != X1 | ~v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X4,X1,X2) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f42])).
% 3.77/0.99  
% 3.77/0.99  fof(f85,plain,(
% 3.77/0.99    v1_funct_2(sK3,sK1,sK0)),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f90,plain,(
% 3.77/0.99    k1_xboole_0 != sK0),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  fof(f6,axiom,(
% 3.77/0.99    ! [X0] : (v2_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f59,plain,(
% 3.77/0.99    ( ! [X0] : (v2_funct_1(k6_relat_1(X0))) )),
% 3.77/0.99    inference(cnf_transformation,[],[f6])).
% 3.77/0.99  
% 3.77/0.99  fof(f97,plain,(
% 3.77/0.99    ( ! [X0] : (v2_funct_1(k6_partfun1(X0))) )),
% 3.77/0.99    inference(definition_unfolding,[],[f59,f73])).
% 3.77/0.99  
% 3.77/0.99  fof(f8,axiom,(
% 3.77/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))))))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f28,plain,(
% 3.77/0.99    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.77/0.99    inference(ennf_transformation,[],[f8])).
% 3.77/0.99  
% 3.77/0.99  fof(f29,plain,(
% 3.77/0.99    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.77/0.99    inference(flattening,[],[f28])).
% 3.77/0.99  
% 3.77/0.99  fof(f62,plain,(
% 3.77/0.99    ( ! [X0] : (k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f29])).
% 3.77/0.99  
% 3.77/0.99  fof(f16,axiom,(
% 3.77/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) => k2_relset_1(X0,X1,X2) = X1)))),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f39,plain,(
% 3.77/0.99    ! [X0,X1,X2] : (! [X3] : ((k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.77/0.99    inference(ennf_transformation,[],[f16])).
% 3.77/0.99  
% 3.77/0.99  fof(f40,plain,(
% 3.77/0.99    ! [X0,X1,X2] : (! [X3] : (k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.77/0.99    inference(flattening,[],[f39])).
% 3.77/0.99  
% 3.77/0.99  fof(f74,plain,(
% 3.77/0.99    ( ! [X2,X0,X3,X1] : (k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f40])).
% 3.77/0.99  
% 3.77/0.99  fof(f52,plain,(
% 3.77/0.99    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 3.77/0.99    inference(cnf_transformation,[],[f2])).
% 3.77/0.99  
% 3.77/0.99  fof(f94,plain,(
% 3.77/0.99    ( ! [X0] : (k1_relat_1(k6_partfun1(X0)) = X0) )),
% 3.77/0.99    inference(definition_unfolding,[],[f52,f73])).
% 3.77/0.99  
% 3.77/0.99  fof(f3,axiom,(
% 3.77/0.99    ! [X0] : (v1_relat_1(X0) => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0)),
% 3.77/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.77/0.99  
% 3.77/0.99  fof(f22,plain,(
% 3.77/0.99    ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0))),
% 3.77/0.99    inference(ennf_transformation,[],[f3])).
% 3.77/0.99  
% 3.77/0.99  fof(f54,plain,(
% 3.77/0.99    ( ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(cnf_transformation,[],[f22])).
% 3.77/0.99  
% 3.77/0.99  fof(f95,plain,(
% 3.77/0.99    ( ! [X0] : (k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0)) )),
% 3.77/0.99    inference(definition_unfolding,[],[f54,f73])).
% 3.77/0.99  
% 3.77/0.99  fof(f92,plain,(
% 3.77/0.99    k2_funct_1(sK2) != sK3),
% 3.77/0.99    inference(cnf_transformation,[],[f50])).
% 3.77/0.99  
% 3.77/0.99  cnf(c_35,negated_conjecture,
% 3.77/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
% 3.77/0.99      inference(cnf_transformation,[],[f86]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1288,plain,
% 3.77/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_15,plain,
% 3.77/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.77/0.99      | v1_relat_1(X0) ),
% 3.77/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1300,plain,
% 3.77/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.77/0.99      | v1_relat_1(X0) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_2412,plain,
% 3.77/0.99      ( v1_relat_1(sK3) = iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1288,c_1300]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_38,negated_conjecture,
% 3.77/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.77/0.99      inference(cnf_transformation,[],[f83]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1285,plain,
% 3.77/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_2413,plain,
% 3.77/0.99      ( v1_relat_1(sK2) = iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1285,c_1300]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_40,negated_conjecture,
% 3.77/0.99      ( v1_funct_1(sK2) ),
% 3.77/0.99      inference(cnf_transformation,[],[f81]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1283,plain,
% 3.77/0.99      ( v1_funct_1(sK2) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_40]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6,plain,
% 3.77/0.99      ( ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_relat_1(X0)
% 3.77/0.99      | v1_relat_1(k2_funct_1(X0)) ),
% 3.77/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1309,plain,
% 3.77/0.99      ( v1_funct_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_0,plain,
% 3.77/0.99      ( ~ v1_relat_1(X0)
% 3.77/0.99      | ~ v1_relat_1(X1)
% 3.77/0.99      | ~ v1_relat_1(X2)
% 3.77/0.99      | k5_relat_1(k5_relat_1(X2,X1),X0) = k5_relat_1(X2,k5_relat_1(X1,X0)) ),
% 3.77/0.99      inference(cnf_transformation,[],[f51]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1313,plain,
% 3.77/0.99      ( k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))
% 3.77/0.99      | v1_relat_1(X2) != iProver_top
% 3.77/0.99      | v1_relat_1(X1) != iProver_top
% 3.77/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_5339,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(X0),k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(k2_funct_1(X0),X1),X2)
% 3.77/0.99      | v1_funct_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(X1) != iProver_top
% 3.77/0.99      | v1_relat_1(X2) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1309,c_1313]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_8713,plain,
% 3.77/0.99      ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
% 3.77/0.99      | v1_relat_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(X1) != iProver_top
% 3.77/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1283,c_5339]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_9453,plain,
% 3.77/0.99      ( v1_relat_1(X1) != iProver_top
% 3.77/0.99      | v1_relat_1(X0) != iProver_top
% 3.77/0.99      | k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1)) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_8713,c_2413]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_9454,plain,
% 3.77/0.99      ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
% 3.77/0.99      | v1_relat_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(X1) != iProver_top ),
% 3.77/0.99      inference(renaming,[status(thm)],[c_9453]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_9462,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k5_relat_1(k2_funct_1(sK2),sK2),X0)
% 3.77/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_2413,c_9454]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_34,negated_conjecture,
% 3.77/0.99      ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
% 3.77/0.99      inference(cnf_transformation,[],[f87]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_27,plain,
% 3.77/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.77/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.77/0.99      | ~ v2_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | k2_relset_1(X1,X2,X0) != X2
% 3.77/0.99      | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(X2)
% 3.77/0.99      | k1_xboole_0 = X2 ),
% 3.77/0.99      inference(cnf_transformation,[],[f80]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1291,plain,
% 3.77/0.99      ( k2_relset_1(X0,X1,X2) != X1
% 3.77/0.99      | k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
% 3.77/0.99      | k1_xboole_0 = X1
% 3.77/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.77/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.77/0.99      | v2_funct_1(X2) != iProver_top
% 3.77/0.99      | v1_funct_1(X2) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3564,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
% 3.77/0.99      | sK1 = k1_xboole_0
% 3.77/0.99      | v1_funct_2(sK2,sK0,sK1) != iProver_top
% 3.77/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.77/0.99      | v2_funct_1(sK2) != iProver_top
% 3.77/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_34,c_1291]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_39,negated_conjecture,
% 3.77/0.99      ( v1_funct_2(sK2,sK0,sK1) ),
% 3.77/0.99      inference(cnf_transformation,[],[f82]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_32,negated_conjecture,
% 3.77/0.99      ( v2_funct_1(sK2) ),
% 3.77/0.99      inference(cnf_transformation,[],[f89]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_30,negated_conjecture,
% 3.77/0.99      ( k1_xboole_0 != sK1 ),
% 3.77/0.99      inference(cnf_transformation,[],[f91]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1361,plain,
% 3.77/0.99      ( ~ v1_funct_2(X0,X1,sK1)
% 3.77/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
% 3.77/0.99      | ~ v2_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | k2_relset_1(X1,sK1,X0) != sK1
% 3.77/0.99      | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(sK1)
% 3.77/0.99      | k1_xboole_0 = sK1 ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_27]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1450,plain,
% 3.77/0.99      ( ~ v1_funct_2(sK2,X0,sK1)
% 3.77/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1)))
% 3.77/0.99      | ~ v2_funct_1(sK2)
% 3.77/0.99      | ~ v1_funct_1(sK2)
% 3.77/0.99      | k2_relset_1(X0,sK1,sK2) != sK1
% 3.77/0.99      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
% 3.77/0.99      | k1_xboole_0 = sK1 ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_1361]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1697,plain,
% 3.77/0.99      ( ~ v1_funct_2(sK2,sK0,sK1)
% 3.77/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.77/0.99      | ~ v2_funct_1(sK2)
% 3.77/0.99      | ~ v1_funct_1(sK2)
% 3.77/0.99      | k2_relset_1(sK0,sK1,sK2) != sK1
% 3.77/0.99      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
% 3.77/0.99      | k1_xboole_0 = sK1 ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_1450]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_4386,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_3564,c_40,c_39,c_38,c_34,c_32,c_30,c_1697]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_9466,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k6_partfun1(sK1),X0)
% 3.77/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.77/0.99      inference(light_normalisation,[status(thm)],[c_9462,c_4386]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_9552,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,sK3)) = k5_relat_1(k6_partfun1(sK1),sK3) ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_2412,c_9466]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_4,plain,
% 3.77/0.99      ( ~ v1_relat_1(X0)
% 3.77/0.99      | k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0 ),
% 3.77/0.99      inference(cnf_transformation,[],[f96]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1311,plain,
% 3.77/0.99      ( k5_relat_1(X0,k6_partfun1(k2_relat_1(X0))) = X0
% 3.77/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_2418,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(X0),k6_partfun1(k2_relat_1(k2_funct_1(X0)))) = k2_funct_1(X0)
% 3.77/0.99      | v1_funct_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1309,c_1311]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3556,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(k2_relat_1(k2_funct_1(sK2)))) = k2_funct_1(sK2)
% 3.77/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1283,c_2418]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1289,plain,
% 3.77/0.99      ( v2_funct_1(sK2) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_9,plain,
% 3.77/0.99      ( ~ v2_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_relat_1(X0)
% 3.77/0.99      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 3.77/0.99      inference(cnf_transformation,[],[f61]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1306,plain,
% 3.77/0.99      ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 3.77/0.99      | v2_funct_1(X0) != iProver_top
% 3.77/0.99      | v1_funct_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3259,plain,
% 3.77/0.99      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 3.77/0.99      | v1_funct_1(sK2) != iProver_top
% 3.77/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1289,c_1306]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_41,plain,
% 3.77/0.99      ( v1_funct_1(sK2) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_40]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3436,plain,
% 3.77/0.99      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_3259,c_41,c_2413]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3557,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(k1_relat_1(sK2))) = k2_funct_1(sK2)
% 3.77/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.77/0.99      inference(light_normalisation,[status(thm)],[c_3556,c_3436]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_5084,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(k1_relat_1(sK2))) = k2_funct_1(sK2) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_3557,c_2413]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_14,plain,
% 3.77/0.99      ( ~ v2_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_relat_1(X0)
% 3.77/0.99      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) ),
% 3.77/0.99      inference(cnf_transformation,[],[f100]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1301,plain,
% 3.77/0.99      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0))
% 3.77/0.99      | v2_funct_1(X0) != iProver_top
% 3.77/0.99      | v1_funct_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3598,plain,
% 3.77/0.99      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2))
% 3.77/0.99      | v1_funct_1(sK2) != iProver_top
% 3.77/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1289,c_1301]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_28,plain,
% 3.77/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.77/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.77/0.99      | ~ v2_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | k2_relset_1(X1,X2,X0) != X2
% 3.77/0.99      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
% 3.77/0.99      | k1_xboole_0 = X2 ),
% 3.77/0.99      inference(cnf_transformation,[],[f79]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1290,plain,
% 3.77/0.99      ( k2_relset_1(X0,X1,X2) != X1
% 3.77/0.99      | k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)
% 3.77/0.99      | k1_xboole_0 = X1
% 3.77/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.77/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.77/0.99      | v2_funct_1(X2) != iProver_top
% 3.77/0.99      | v1_funct_1(X2) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3198,plain,
% 3.77/0.99      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
% 3.77/0.99      | sK1 = k1_xboole_0
% 3.77/0.99      | v1_funct_2(sK2,sK0,sK1) != iProver_top
% 3.77/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.77/0.99      | v2_funct_1(sK2) != iProver_top
% 3.77/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_34,c_1290]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1362,plain,
% 3.77/0.99      ( ~ v1_funct_2(X0,X1,sK1)
% 3.77/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
% 3.77/0.99      | ~ v2_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | k2_relset_1(X1,sK1,X0) != sK1
% 3.77/0.99      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
% 3.77/0.99      | k1_xboole_0 = sK1 ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_28]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1476,plain,
% 3.77/0.99      ( ~ v1_funct_2(sK2,X0,sK1)
% 3.77/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1)))
% 3.77/0.99      | ~ v2_funct_1(sK2)
% 3.77/0.99      | ~ v1_funct_1(sK2)
% 3.77/0.99      | k2_relset_1(X0,sK1,sK2) != sK1
% 3.77/0.99      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
% 3.77/0.99      | k1_xboole_0 = sK1 ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_1362]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1712,plain,
% 3.77/0.99      ( ~ v1_funct_2(sK2,sK0,sK1)
% 3.77/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.77/0.99      | ~ v2_funct_1(sK2)
% 3.77/0.99      | ~ v1_funct_1(sK2)
% 3.77/0.99      | k2_relset_1(sK0,sK1,sK2) != sK1
% 3.77/0.99      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
% 3.77/0.99      | k1_xboole_0 = sK1 ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_1476]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3335,plain,
% 3.77/0.99      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_3198,c_40,c_39,c_38,c_34,c_32,c_30,c_1712]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3599,plain,
% 3.77/0.99      ( k6_partfun1(k1_relat_1(sK2)) = k6_partfun1(sK0)
% 3.77/0.99      | v1_funct_1(sK2) != iProver_top
% 3.77/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.77/0.99      inference(light_normalisation,[status(thm)],[c_3598,c_3335]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_4883,plain,
% 3.77/0.99      ( k6_partfun1(k1_relat_1(sK2)) = k6_partfun1(sK0) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_3599,c_41,c_2413]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1,plain,
% 3.77/0.99      ( k2_relat_1(k6_partfun1(X0)) = X0 ),
% 3.77/0.99      inference(cnf_transformation,[],[f93]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_4896,plain,
% 3.77/0.99      ( k2_relat_1(k6_partfun1(sK0)) = k1_relat_1(sK2) ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_4883,c_1]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_4897,plain,
% 3.77/0.99      ( k1_relat_1(sK2) = sK0 ),
% 3.77/0.99      inference(demodulation,[status(thm)],[c_4896,c_1]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_5086,plain,
% 3.77/0.99      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(sK0)) = k2_funct_1(sK2) ),
% 3.77/0.99      inference(light_normalisation,[status(thm)],[c_5084,c_4897]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_21,plain,
% 3.77/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.77/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X3)
% 3.77/0.99      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 3.77/0.99      inference(cnf_transformation,[],[f72]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1296,plain,
% 3.77/0.99      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 3.77/0.99      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 3.77/0.99      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.77/0.99      | v1_funct_1(X5) != iProver_top
% 3.77/0.99      | v1_funct_1(X4) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_5433,plain,
% 3.77/0.99      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 3.77/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.77/0.99      | v1_funct_1(X2) != iProver_top
% 3.77/0.99      | v1_funct_1(sK3) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1288,c_1296]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_37,negated_conjecture,
% 3.77/0.99      ( v1_funct_1(sK3) ),
% 3.77/0.99      inference(cnf_transformation,[],[f84]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_44,plain,
% 3.77/0.99      ( v1_funct_1(sK3) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_5532,plain,
% 3.77/0.99      ( v1_funct_1(X2) != iProver_top
% 3.77/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.77/0.99      | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_5433,c_44]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_5533,plain,
% 3.77/0.99      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 3.77/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.77/0.99      | v1_funct_1(X2) != iProver_top ),
% 3.77/0.99      inference(renaming,[status(thm)],[c_5532]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_5541,plain,
% 3.77/0.99      ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
% 3.77/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_1285,c_5533]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_17,plain,
% 3.77/0.99      ( ~ r2_relset_1(X0,X1,X2,X3)
% 3.77/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.77/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.77/0.99      | X3 = X2 ),
% 3.77/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_33,negated_conjecture,
% 3.77/0.99      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
% 3.77/0.99      inference(cnf_transformation,[],[f88]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_432,plain,
% 3.77/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.77/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.77/0.99      | X3 = X0
% 3.77/0.99      | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
% 3.77/0.99      | k6_partfun1(sK0) != X3
% 3.77/0.99      | sK0 != X2
% 3.77/0.99      | sK0 != X1 ),
% 3.77/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_33]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_433,plain,
% 3.77/0.99      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.77/0.99      | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.77/0.99      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 3.77/0.99      inference(unflattening,[status(thm)],[c_432]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_18,plain,
% 3.77/0.99      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 3.77/0.99      inference(cnf_transformation,[],[f101]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_441,plain,
% 3.77/0.99      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.77/0.99      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 3.77/0.99      inference(forward_subsumption_resolution,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_433,c_18]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1281,plain,
% 3.77/0.99      ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.77/0.99      | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_441]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_19,plain,
% 3.77/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.77/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.77/0.99      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X3) ),
% 3.77/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1399,plain,
% 3.77/0.99      ( m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.77/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.77/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.77/0.99      | ~ v1_funct_1(sK3)
% 3.77/0.99      | ~ v1_funct_1(sK2) ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_19]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_2163,plain,
% 3.77/0.99      ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_1281,c_40,c_38,c_37,c_35,c_441,c_1399]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_5542,plain,
% 3.77/0.99      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
% 3.77/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.77/0.99      inference(light_normalisation,[status(thm)],[c_5541,c_2163]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6233,plain,
% 3.77/0.99      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_5542,c_41]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_24,plain,
% 3.77/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.77/0.99      | ~ v1_funct_2(X3,X4,X1)
% 3.77/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X1)))
% 3.77/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.77/0.99      | v2_funct_1(X0)
% 3.77/0.99      | ~ v2_funct_1(k1_partfun1(X4,X1,X1,X2,X3,X0))
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X3)
% 3.77/0.99      | k2_relset_1(X4,X1,X3) != X1
% 3.77/0.99      | k1_xboole_0 = X2 ),
% 3.77/0.99      inference(cnf_transformation,[],[f77]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1294,plain,
% 3.77/0.99      ( k2_relset_1(X0,X1,X2) != X1
% 3.77/0.99      | k1_xboole_0 = X3
% 3.77/0.99      | v1_funct_2(X4,X1,X3) != iProver_top
% 3.77/0.99      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.77/0.99      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) != iProver_top
% 3.77/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.77/0.99      | v2_funct_1(X4) = iProver_top
% 3.77/0.99      | v2_funct_1(k1_partfun1(X0,X1,X1,X3,X2,X4)) != iProver_top
% 3.77/0.99      | v1_funct_1(X4) != iProver_top
% 3.77/0.99      | v1_funct_1(X2) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6708,plain,
% 3.77/0.99      ( k1_xboole_0 = X0
% 3.77/0.99      | v1_funct_2(X1,sK1,X0) != iProver_top
% 3.77/0.99      | v1_funct_2(sK2,sK0,sK1) != iProver_top
% 3.77/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
% 3.77/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.77/0.99      | v2_funct_1(X1) = iProver_top
% 3.77/0.99      | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top
% 3.77/0.99      | v1_funct_1(X1) != iProver_top
% 3.77/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_34,c_1294]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_42,plain,
% 3.77/0.99      ( v1_funct_2(sK2,sK0,sK1) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_39]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_43,plain,
% 3.77/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6713,plain,
% 3.77/0.99      ( v1_funct_1(X1) != iProver_top
% 3.77/0.99      | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top
% 3.77/0.99      | v2_funct_1(X1) = iProver_top
% 3.77/0.99      | v1_funct_2(X1,sK1,X0) != iProver_top
% 3.77/0.99      | k1_xboole_0 = X0
% 3.77/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_6708,c_41,c_42,c_43]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6714,plain,
% 3.77/0.99      ( k1_xboole_0 = X0
% 3.77/0.99      | v1_funct_2(X1,sK1,X0) != iProver_top
% 3.77/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
% 3.77/0.99      | v2_funct_1(X1) = iProver_top
% 3.77/0.99      | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top
% 3.77/0.99      | v1_funct_1(X1) != iProver_top ),
% 3.77/0.99      inference(renaming,[status(thm)],[c_6713]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6717,plain,
% 3.77/0.99      ( sK0 = k1_xboole_0
% 3.77/0.99      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.77/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.77/0.99      | v2_funct_1(k6_partfun1(sK0)) != iProver_top
% 3.77/0.99      | v2_funct_1(sK3) = iProver_top
% 3.77/0.99      | v1_funct_1(sK3) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_2163,c_6714]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_36,negated_conjecture,
% 3.77/0.99      ( v1_funct_2(sK3,sK1,sK0) ),
% 3.77/0.99      inference(cnf_transformation,[],[f85]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_45,plain,
% 3.77/0.99      ( v1_funct_2(sK3,sK1,sK0) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_46,plain,
% 3.77/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_31,negated_conjecture,
% 3.77/0.99      ( k1_xboole_0 != sK0 ),
% 3.77/0.99      inference(cnf_transformation,[],[f90]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_729,plain,( X0 = X0 ),theory(equality) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_760,plain,
% 3.77/0.99      ( k1_xboole_0 = k1_xboole_0 ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_729]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_730,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1397,plain,
% 3.77/0.99      ( sK0 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK0 ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_730]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1398,plain,
% 3.77/0.99      ( sK0 != k1_xboole_0
% 3.77/0.99      | k1_xboole_0 = sK0
% 3.77/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_1397]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_7,plain,
% 3.77/0.99      ( v2_funct_1(k6_partfun1(X0)) ),
% 3.77/0.99      inference(cnf_transformation,[],[f97]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3092,plain,
% 3.77/0.99      ( v2_funct_1(k6_partfun1(sK0)) ),
% 3.77/0.99      inference(instantiation,[status(thm)],[c_7]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3093,plain,
% 3.77/0.99      ( v2_funct_1(k6_partfun1(sK0)) = iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_3092]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6800,plain,
% 3.77/0.99      ( v2_funct_1(sK3) = iProver_top ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_6717,c_44,c_45,c_46,c_31,c_760,c_1398,c_3093]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_12,plain,
% 3.77/0.99      ( ~ v2_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_relat_1(X0)
% 3.77/0.99      | k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0) ),
% 3.77/0.99      inference(cnf_transformation,[],[f62]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1303,plain,
% 3.77/0.99      ( k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0)
% 3.77/0.99      | v2_funct_1(X0) != iProver_top
% 3.77/0.99      | v1_funct_1(X0) != iProver_top
% 3.77/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6805,plain,
% 3.77/0.99      ( k1_relat_1(k5_relat_1(sK3,k2_funct_1(sK3))) = k1_relat_1(sK3)
% 3.77/0.99      | v1_funct_1(sK3) != iProver_top
% 3.77/0.99      | v1_relat_1(sK3) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_6800,c_1303]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_22,plain,
% 3.77/0.99      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.77/0.99      | ~ v1_funct_2(X2,X0,X1)
% 3.77/0.99      | ~ v1_funct_2(X3,X1,X0)
% 3.77/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.77/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.77/0.99      | ~ v1_funct_1(X2)
% 3.77/0.99      | ~ v1_funct_1(X3)
% 3.77/0.99      | k2_relset_1(X1,X0,X3) = X0 ),
% 3.77/0.99      inference(cnf_transformation,[],[f74]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_445,plain,
% 3.77/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.77/0.99      | ~ v1_funct_2(X3,X2,X1)
% 3.77/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.77/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X3)
% 3.77/0.99      | k1_partfun1(X2,X1,X1,X2,X3,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.77/0.99      | k2_relset_1(X1,X2,X0) = X2
% 3.77/0.99      | k6_partfun1(X2) != k6_partfun1(sK0)
% 3.77/0.99      | sK0 != X2 ),
% 3.77/0.99      inference(resolution_lifted,[status(thm)],[c_22,c_33]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_446,plain,
% 3.77/0.99      ( ~ v1_funct_2(X0,X1,sK0)
% 3.77/0.99      | ~ v1_funct_2(X2,sK0,X1)
% 3.77/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
% 3.77/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X2)
% 3.77/0.99      | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.77/0.99      | k2_relset_1(X1,sK0,X0) = sK0
% 3.77/0.99      | k6_partfun1(sK0) != k6_partfun1(sK0) ),
% 3.77/0.99      inference(unflattening,[status(thm)],[c_445]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_534,plain,
% 3.77/0.99      ( ~ v1_funct_2(X0,X1,sK0)
% 3.77/0.99      | ~ v1_funct_2(X2,sK0,X1)
% 3.77/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
% 3.77/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
% 3.77/0.99      | ~ v1_funct_1(X0)
% 3.77/0.99      | ~ v1_funct_1(X2)
% 3.77/0.99      | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.77/0.99      | k2_relset_1(X1,sK0,X0) = sK0 ),
% 3.77/0.99      inference(equality_resolution_simp,[status(thm)],[c_446]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1280,plain,
% 3.77/0.99      ( k1_partfun1(sK0,X0,X0,sK0,X1,X2) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.77/0.99      | k2_relset_1(X0,sK0,X2) = sK0
% 3.77/0.99      | v1_funct_2(X2,X0,sK0) != iProver_top
% 3.77/0.99      | v1_funct_2(X1,sK0,X0) != iProver_top
% 3.77/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK0))) != iProver_top
% 3.77/0.99      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
% 3.77/0.99      | v1_funct_1(X2) != iProver_top
% 3.77/0.99      | v1_funct_1(X1) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_534]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1835,plain,
% 3.77/0.99      ( k2_relset_1(sK1,sK0,sK3) = sK0
% 3.77/0.99      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.77/0.99      | v1_funct_2(sK2,sK0,sK1) != iProver_top
% 3.77/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.77/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.77/0.99      | v1_funct_1(sK3) != iProver_top
% 3.77/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.77/0.99      inference(equality_resolution,[status(thm)],[c_1280]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_2170,plain,
% 3.77/0.99      ( k2_relset_1(sK1,sK0,sK3) = sK0 ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_1835,c_41,c_42,c_43,c_44,c_45,c_46]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3199,plain,
% 3.77/0.99      ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1)
% 3.77/0.99      | sK0 = k1_xboole_0
% 3.77/0.99      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.77/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.77/0.99      | v2_funct_1(sK3) != iProver_top
% 3.77/0.99      | v1_funct_1(sK3) != iProver_top ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_2170,c_1290]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3517,plain,
% 3.77/0.99      ( v2_funct_1(sK3) != iProver_top
% 3.77/0.99      | k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1) ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_3199,c_44,c_45,c_46,c_31,c_760,c_1398]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3518,plain,
% 3.77/0.99      ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1)
% 3.77/0.99      | v2_funct_1(sK3) != iProver_top ),
% 3.77/0.99      inference(renaming,[status(thm)],[c_3517]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6811,plain,
% 3.77/0.99      ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1) ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_6800,c_3518]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6814,plain,
% 3.77/0.99      ( k1_relat_1(k6_partfun1(sK1)) = k1_relat_1(sK3)
% 3.77/0.99      | v1_funct_1(sK3) != iProver_top
% 3.77/0.99      | v1_relat_1(sK3) != iProver_top ),
% 3.77/0.99      inference(demodulation,[status(thm)],[c_6805,c_6811]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_2,plain,
% 3.77/0.99      ( k1_relat_1(k6_partfun1(X0)) = X0 ),
% 3.77/0.99      inference(cnf_transformation,[],[f94]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_6815,plain,
% 3.77/0.99      ( k1_relat_1(sK3) = sK1
% 3.77/0.99      | v1_funct_1(sK3) != iProver_top
% 3.77/0.99      | v1_relat_1(sK3) != iProver_top ),
% 3.77/0.99      inference(demodulation,[status(thm)],[c_6814,c_2]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_7446,plain,
% 3.77/0.99      ( k1_relat_1(sK3) = sK1 ),
% 3.77/0.99      inference(global_propositional_subsumption,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_6815,c_44,c_2412]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_3,plain,
% 3.77/0.99      ( ~ v1_relat_1(X0)
% 3.77/0.99      | k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0 ),
% 3.77/0.99      inference(cnf_transformation,[],[f95]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_1312,plain,
% 3.77/0.99      ( k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0
% 3.77/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.77/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_2644,plain,
% 3.77/0.99      ( k5_relat_1(k6_partfun1(k1_relat_1(sK3)),sK3) = sK3 ),
% 3.77/0.99      inference(superposition,[status(thm)],[c_2412,c_1312]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_7448,plain,
% 3.77/0.99      ( k5_relat_1(k6_partfun1(sK1),sK3) = sK3 ),
% 3.77/0.99      inference(demodulation,[status(thm)],[c_7446,c_2644]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_9557,plain,
% 3.77/0.99      ( k2_funct_1(sK2) = sK3 ),
% 3.77/0.99      inference(light_normalisation,
% 3.77/0.99                [status(thm)],
% 3.77/0.99                [c_9552,c_5086,c_6233,c_7448]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(c_29,negated_conjecture,
% 3.77/0.99      ( k2_funct_1(sK2) != sK3 ),
% 3.77/0.99      inference(cnf_transformation,[],[f92]) ).
% 3.77/0.99  
% 3.77/0.99  cnf(contradiction,plain,
% 3.77/0.99      ( $false ),
% 3.77/0.99      inference(minisat,[status(thm)],[c_9557,c_29]) ).
% 3.77/0.99  
% 3.77/0.99  
% 3.77/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.77/0.99  
% 3.77/0.99  ------                               Statistics
% 3.77/0.99  
% 3.77/0.99  ------ General
% 3.77/0.99  
% 3.77/0.99  abstr_ref_over_cycles:                  0
% 3.77/0.99  abstr_ref_under_cycles:                 0
% 3.77/0.99  gc_basic_clause_elim:                   0
% 3.77/0.99  forced_gc_time:                         0
% 3.77/0.99  parsing_time:                           0.013
% 3.77/0.99  unif_index_cands_time:                  0.
% 3.77/0.99  unif_index_add_time:                    0.
% 3.77/0.99  orderings_time:                         0.
% 3.77/0.99  out_proof_time:                         0.014
% 3.77/0.99  total_time:                             0.442
% 3.77/0.99  num_of_symbols:                         51
% 3.77/0.99  num_of_terms:                           15170
% 3.77/0.99  
% 3.77/0.99  ------ Preprocessing
% 3.77/0.99  
% 3.77/0.99  num_of_splits:                          0
% 3.77/0.99  num_of_split_atoms:                     0
% 3.77/0.99  num_of_reused_defs:                     0
% 3.77/0.99  num_eq_ax_congr_red:                    0
% 3.77/0.99  num_of_sem_filtered_clauses:            1
% 3.77/0.99  num_of_subtypes:                        0
% 3.77/0.99  monotx_restored_types:                  0
% 3.77/0.99  sat_num_of_epr_types:                   0
% 3.77/0.99  sat_num_of_non_cyclic_types:            0
% 3.77/0.99  sat_guarded_non_collapsed_types:        0
% 3.77/0.99  num_pure_diseq_elim:                    0
% 3.77/0.99  simp_replaced_by:                       0
% 3.77/0.99  res_preprocessed:                       194
% 3.77/0.99  prep_upred:                             0
% 3.77/0.99  prep_unflattend:                        12
% 3.77/0.99  smt_new_axioms:                         0
% 3.77/0.99  pred_elim_cands:                        5
% 3.77/0.99  pred_elim:                              1
% 3.77/0.99  pred_elim_cl:                           1
% 3.77/0.99  pred_elim_cycles:                       3
% 3.77/0.99  merged_defs:                            0
% 3.77/0.99  merged_defs_ncl:                        0
% 3.77/0.99  bin_hyper_res:                          0
% 3.77/0.99  prep_cycles:                            4
% 3.77/0.99  pred_elim_time:                         0.004
% 3.77/0.99  splitting_time:                         0.
% 3.77/0.99  sem_filter_time:                        0.
% 3.77/0.99  monotx_time:                            0.001
% 3.77/0.99  subtype_inf_time:                       0.
% 3.77/0.99  
% 3.77/0.99  ------ Problem properties
% 3.77/0.99  
% 3.77/0.99  clauses:                                40
% 3.77/0.99  conjectures:                            11
% 3.77/0.99  epr:                                    7
% 3.77/0.99  horn:                                   36
% 3.77/0.99  ground:                                 12
% 3.77/0.99  unary:                                  16
% 3.77/0.99  binary:                                 4
% 3.77/0.99  lits:                                   141
% 3.77/0.99  lits_eq:                                33
% 3.77/0.99  fd_pure:                                0
% 3.77/0.99  fd_pseudo:                              0
% 3.77/0.99  fd_cond:                                4
% 3.77/0.99  fd_pseudo_cond:                         0
% 3.77/0.99  ac_symbols:                             0
% 3.77/0.99  
% 3.77/0.99  ------ Propositional Solver
% 3.77/0.99  
% 3.77/0.99  prop_solver_calls:                      29
% 3.77/0.99  prop_fast_solver_calls:                 1800
% 3.77/0.99  smt_solver_calls:                       0
% 3.77/0.99  smt_fast_solver_calls:                  0
% 3.77/0.99  prop_num_of_clauses:                    5081
% 3.77/0.99  prop_preprocess_simplified:             13435
% 3.77/0.99  prop_fo_subsumed:                       90
% 3.77/0.99  prop_solver_time:                       0.
% 3.77/0.99  smt_solver_time:                        0.
% 3.77/0.99  smt_fast_solver_time:                   0.
% 3.77/0.99  prop_fast_solver_time:                  0.
% 3.77/0.99  prop_unsat_core_time:                   0.
% 3.77/0.99  
% 3.77/0.99  ------ QBF
% 3.77/0.99  
% 3.77/0.99  qbf_q_res:                              0
% 3.77/0.99  qbf_num_tautologies:                    0
% 3.77/0.99  qbf_prep_cycles:                        0
% 3.77/0.99  
% 3.77/0.99  ------ BMC1
% 3.77/0.99  
% 3.77/0.99  bmc1_current_bound:                     -1
% 3.77/0.99  bmc1_last_solved_bound:                 -1
% 3.77/0.99  bmc1_unsat_core_size:                   -1
% 3.77/0.99  bmc1_unsat_core_parents_size:           -1
% 3.77/0.99  bmc1_merge_next_fun:                    0
% 3.77/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.77/0.99  
% 3.77/0.99  ------ Instantiation
% 3.77/0.99  
% 3.77/0.99  inst_num_of_clauses:                    1203
% 3.77/0.99  inst_num_in_passive:                    598
% 3.77/0.99  inst_num_in_active:                     596
% 3.77/0.99  inst_num_in_unprocessed:                9
% 3.77/0.99  inst_num_of_loops:                      670
% 3.77/0.99  inst_num_of_learning_restarts:          0
% 3.77/0.99  inst_num_moves_active_passive:          73
% 3.77/0.99  inst_lit_activity:                      0
% 3.77/0.99  inst_lit_activity_moves:                1
% 3.77/0.99  inst_num_tautologies:                   0
% 3.77/0.99  inst_num_prop_implied:                  0
% 3.77/0.99  inst_num_existing_simplified:           0
% 3.77/0.99  inst_num_eq_res_simplified:             0
% 3.77/0.99  inst_num_child_elim:                    0
% 3.77/0.99  inst_num_of_dismatching_blockings:      137
% 3.77/0.99  inst_num_of_non_proper_insts:           1012
% 3.77/0.99  inst_num_of_duplicates:                 0
% 3.77/0.99  inst_inst_num_from_inst_to_res:         0
% 3.77/0.99  inst_dismatching_checking_time:         0.
% 3.77/0.99  
% 3.77/0.99  ------ Resolution
% 3.77/0.99  
% 3.77/0.99  res_num_of_clauses:                     0
% 3.77/0.99  res_num_in_passive:                     0
% 3.77/0.99  res_num_in_active:                      0
% 3.77/0.99  res_num_of_loops:                       198
% 3.77/0.99  res_forward_subset_subsumed:            55
% 3.77/0.99  res_backward_subset_subsumed:           0
% 3.77/0.99  res_forward_subsumed:                   0
% 3.77/0.99  res_backward_subsumed:                  0
% 3.77/0.99  res_forward_subsumption_resolution:     2
% 3.77/0.99  res_backward_subsumption_resolution:    0
% 3.77/0.99  res_clause_to_clause_subsumption:       466
% 3.77/0.99  res_orphan_elimination:                 0
% 3.77/0.99  res_tautology_del:                      15
% 3.77/0.99  res_num_eq_res_simplified:              1
% 3.77/0.99  res_num_sel_changes:                    0
% 3.77/0.99  res_moves_from_active_to_pass:          0
% 3.77/0.99  
% 3.77/0.99  ------ Superposition
% 3.77/0.99  
% 3.77/0.99  sup_time_total:                         0.
% 3.77/0.99  sup_time_generating:                    0.
% 3.77/0.99  sup_time_sim_full:                      0.
% 3.77/0.99  sup_time_sim_immed:                     0.
% 3.77/0.99  
% 3.77/0.99  sup_num_of_clauses:                     221
% 3.77/0.99  sup_num_in_active:                      118
% 3.77/0.99  sup_num_in_passive:                     103
% 3.77/0.99  sup_num_of_loops:                       132
% 3.77/0.99  sup_fw_superposition:                   122
% 3.77/0.99  sup_bw_superposition:                   100
% 3.77/0.99  sup_immediate_simplified:               54
% 3.77/0.99  sup_given_eliminated:                   3
% 3.77/0.99  comparisons_done:                       0
% 3.77/0.99  comparisons_avoided:                    0
% 3.77/0.99  
% 3.77/0.99  ------ Simplifications
% 3.77/0.99  
% 3.77/0.99  
% 3.77/0.99  sim_fw_subset_subsumed:                 2
% 3.77/0.99  sim_bw_subset_subsumed:                 2
% 3.77/0.99  sim_fw_subsumed:                        21
% 3.77/0.99  sim_bw_subsumed:                        1
% 3.77/0.99  sim_fw_subsumption_res:                 0
% 3.77/0.99  sim_bw_subsumption_res:                 0
% 3.77/0.99  sim_tautology_del:                      0
% 3.77/0.99  sim_eq_tautology_del:                   6
% 3.77/0.99  sim_eq_res_simp:                        0
% 3.77/0.99  sim_fw_demodulated:                     10
% 3.77/0.99  sim_bw_demodulated:                     17
% 3.77/0.99  sim_light_normalised:                   45
% 3.77/0.99  sim_joinable_taut:                      0
% 3.77/0.99  sim_joinable_simp:                      0
% 3.77/0.99  sim_ac_normalised:                      0
% 3.77/0.99  sim_smt_subsumption:                    0
% 3.77/0.99  
%------------------------------------------------------------------------------
