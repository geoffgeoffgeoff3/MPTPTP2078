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
% DateTime   : Thu Dec  3 12:07:08 EST 2020

% Result     : Theorem 3.20s
% Output     : CNFRefutation 3.20s
% Verified   : 
% Statistics : ERROR: Analysing output (Could not find formula named c_43)

% Comments   : 
%------------------------------------------------------------------------------
fof(f17,conjecture,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => ! [X2] :
          ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
            & v3_funct_2(X2,X0,X0)
            & v1_funct_2(X2,X0,X0)
            & v1_funct_1(X2) )
         => ( r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0))
           => r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v3_funct_2(X1,X0,X0)
          & v1_funct_2(X1,X0,X0)
          & v1_funct_1(X1) )
       => ! [X2] :
            ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
              & v3_funct_2(X2,X0,X0)
              & v1_funct_2(X2,X0,X0)
              & v1_funct_1(X2) )
           => ( r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0))
             => r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) ) ) ) ),
    inference(negated_conjecture,[],[f17])).

fof(f40,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1))
          & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0))
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v3_funct_2(X2,X0,X0)
          & v1_funct_2(X2,X0,X0)
          & v1_funct_1(X2) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v3_funct_2(X1,X0,X0)
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f41,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1))
          & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0))
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v3_funct_2(X2,X0,X0)
          & v1_funct_2(X2,X0,X0)
          & v1_funct_1(X2) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v3_funct_2(X1,X0,X0)
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(flattening,[],[f40])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1))
          & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0))
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v3_funct_2(X2,X0,X0)
          & v1_funct_2(X2,X0,X0)
          & v1_funct_1(X2) )
     => ( ~ r2_relset_1(X0,X0,sK3,k2_funct_2(X0,X1))
        & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,sK3),k6_partfun1(X0))
        & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(sK3,X0,X0)
        & v1_funct_2(sK3,X0,X0)
        & v1_funct_1(sK3) ) ) ),
    introduced(choice_axiom,[])).

fof(f51,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ~ r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1))
            & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0))
            & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
            & v3_funct_2(X2,X0,X0)
            & v1_funct_2(X2,X0,X0)
            & v1_funct_1(X2) )
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
   => ( ? [X2] :
          ( ~ r2_relset_1(sK1,sK1,X2,k2_funct_2(sK1,sK2))
          & r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,X2),k6_partfun1(sK1))
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
          & v3_funct_2(X2,sK1,sK1)
          & v1_funct_2(X2,sK1,sK1)
          & v1_funct_1(X2) )
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
      & v3_funct_2(sK2,sK1,sK1)
      & v1_funct_2(sK2,sK1,sK1)
      & v1_funct_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f53,plain,
    ( ~ r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2))
    & r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,sK3),k6_partfun1(sK1))
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    & v3_funct_2(sK3,sK1,sK1)
    & v1_funct_2(sK3,sK1,sK1)
    & v1_funct_1(sK3)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    & v3_funct_2(sK2,sK1,sK1)
    & v1_funct_2(sK2,sK1,sK1)
    & v1_funct_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f41,f52,f51])).

fof(f86,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
    inference(cnf_transformation,[],[f53])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => k2_funct_2(X0,X1) = k2_funct_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( k2_funct_2(X0,X1) = k2_funct_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k2_funct_2(X0,X1) = k2_funct_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(flattening,[],[f34])).

fof(f79,plain,(
    ! [X0,X1] :
      ( k2_funct_2(X0,X1) = k2_funct_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f83,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f53])).

fof(f84,plain,(
    v1_funct_2(sK2,sK1,sK1) ),
    inference(cnf_transformation,[],[f53])).

fof(f85,plain,(
    v3_funct_2(sK2,sK1,sK1) ),
    inference(cnf_transformation,[],[f53])).

fof(f92,plain,(
    ~ r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2)) ),
    inference(cnf_transformation,[],[f53])).

fof(f3,axiom,(
    ! [X0,X1] :
      ~ ( v1_xboole_0(X1)
        & X0 != X1
        & v1_xboole_0(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | X0 = X1
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f58,plain,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
      | X0 = X1
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( v1_xboole_0(X0)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
         => v1_xboole_0(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v1_xboole_0(X2)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( v1_xboole_0(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f91,plain,(
    r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,sK3),k6_partfun1(sK1)) ),
    inference(cnf_transformation,[],[f53])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f30])).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( ( v2_funct_2(X1,X0)
          | k2_relat_1(X1) != X0 )
        & ( k2_relat_1(X1) = X0
          | ~ v2_funct_2(X1,X0) ) )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f31])).

fof(f73,plain,(
    ! [X0,X1] :
      ( k2_relat_1(X1) = X0
      | ~ v2_funct_2(X1,X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( v3_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( v2_funct_2(X2,X1)
          & v2_funct_1(X2)
          & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f28])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( v2_funct_2(X2,X1)
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relset_1(X0,X1,X2) = k2_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f16,axiom,(
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

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( k2_funct_1(X2) = X3
          | k1_xboole_0 = X1
          | k1_xboole_0 = X0
          | ~ v2_funct_1(X2)
          | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          | k2_relset_1(X0,X1,X2) != X1
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          | ~ v1_funct_2(X3,X1,X0)
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( k2_funct_1(X2) = X3
          | k1_xboole_0 = X1
          | k1_xboole_0 = X0
          | ~ v2_funct_1(X2)
          | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          | k2_relset_1(X0,X1,X2) != X1
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          | ~ v1_funct_2(X3,X1,X0)
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f38])).

fof(f82,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_funct_1(X2) = X3
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0
      | ~ v2_funct_1(X2)
      | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ v1_funct_2(X3,X1,X0)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ! [X3] :
          ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(X3,X1,X0)
            & v1_funct_1(X3) )
         => ( r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
           => ( v2_funct_2(X3,X0)
              & v2_funct_1(X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ( v2_funct_2(X3,X0)
            & v2_funct_1(X2) )
          | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          | ~ v1_funct_2(X3,X1,X0)
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( ! [X3] :
          ( ( v2_funct_2(X3,X0)
            & v2_funct_1(X2) )
          | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          | ~ v1_funct_2(X3,X1,X0)
          | ~ v1_funct_1(X3) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f36])).

fof(f80,plain,(
    ! [X2,X0,X3,X1] :
      ( v2_funct_1(X2)
      | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ v1_funct_2(X3,X1,X0)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f87,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f53])).

fof(f88,plain,(
    v1_funct_2(sK3,sK1,sK1) ),
    inference(cnf_transformation,[],[f53])).

fof(f90,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
    inference(cnf_transformation,[],[f53])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_1(k2_funct_2(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_1(k2_funct_2(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_1(k2_funct_2(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(flattening,[],[f32])).

fof(f78,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f27,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f26])).

fof(f49,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f27])).

fof(f69,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f95,plain,(
    ! [X0,X3,X1] :
      ( r2_relset_1(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(equality_resolution,[],[f69])).

fof(f2,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

cnf(c_35,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_2318,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_25,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | k2_funct_2(X1,X0) = k2_funct_1(X0) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_2326,plain,
    ( k2_funct_2(X0,X1) = k2_funct_1(X1)
    | v1_funct_2(X1,X0,X0) != iProver_top
    | v3_funct_2(X1,X0,X0) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_8667,plain,
    ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2)
    | v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v3_funct_2(sK2,sK1,sK1) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2318,c_2326])).

cnf(c_38,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_37,negated_conjecture,
    ( v1_funct_2(sK2,sK1,sK1) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_36,negated_conjecture,
    ( v3_funct_2(sK2,sK1,sK1) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_2712,plain,
    ( ~ v1_funct_2(sK2,X0,X0)
    | ~ v3_funct_2(sK2,X0,X0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
    | ~ v1_funct_1(sK2)
    | k2_funct_2(X0,sK2) = k2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_25])).

cnf(c_2714,plain,
    ( ~ v1_funct_2(sK2,sK1,sK1)
    | ~ v3_funct_2(sK2,sK1,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ v1_funct_1(sK2)
    | k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2712])).

cnf(c_9607,plain,
    ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8667,c_38,c_37,c_36,c_35,c_2714])).

cnf(c_29,negated_conjecture,
    ( ~ r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2)) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_2324,plain,
    ( r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_9611,plain,
    ( r2_relset_1(sK1,sK1,sK3,k2_funct_1(sK2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_9607,c_2324])).

cnf(c_1534,plain,
    ( ~ r2_relset_1(X0,X1,X2,X3)
    | r2_relset_1(X4,X5,X6,X7)
    | X5 != X1
    | X4 != X0
    | X6 != X2
    | X7 != X3 ),
    theory(equality)).

cnf(c_2790,plain,
    ( r2_relset_1(X0,X1,X2,X3)
    | ~ r2_relset_1(sK1,sK1,sK3,sK3)
    | X2 != sK3
    | X3 != sK3
    | X0 != sK1
    | X1 != sK1 ),
    inference(instantiation,[status(thm)],[c_1534])).

cnf(c_3352,plain,
    ( r2_relset_1(X0,X1,sK3,X2)
    | ~ r2_relset_1(sK1,sK1,sK3,sK3)
    | X2 != sK3
    | X0 != sK1
    | X1 != sK1
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_2790])).

cnf(c_9484,plain,
    ( r2_relset_1(X0,X1,sK3,k2_funct_1(sK2))
    | ~ r2_relset_1(sK1,sK1,sK3,sK3)
    | X0 != sK1
    | X1 != sK1
    | k2_funct_1(sK2) != sK3
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_3352])).

cnf(c_9490,plain,
    ( X0 != sK1
    | X1 != sK1
    | k2_funct_1(sK2) != sK3
    | sK3 != sK3
    | r2_relset_1(X0,X1,sK3,k2_funct_1(sK2)) = iProver_top
    | r2_relset_1(sK1,sK1,sK3,sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9484])).

cnf(c_9492,plain,
    ( k2_funct_1(sK2) != sK3
    | sK3 != sK3
    | sK1 != sK1
    | r2_relset_1(sK1,sK1,sK3,k2_funct_1(sK2)) = iProver_top
    | r2_relset_1(sK1,sK1,sK3,sK3) != iProver_top ),
    inference(instantiation,[status(thm)],[c_9490])).

cnf(c_4,plain,
    ( ~ v1_xboole_0(X0)
    | ~ v1_xboole_0(X1)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_8268,plain,
    ( ~ v1_xboole_0(X0)
    | ~ v1_xboole_0(k2_funct_2(X1,sK2))
    | k2_funct_2(X1,sK2) = X0 ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_8270,plain,
    ( ~ v1_xboole_0(k2_funct_2(sK1,sK2))
    | ~ v1_xboole_0(sK1)
    | k2_funct_2(sK1,sK2) = sK1 ),
    inference(instantiation,[status(thm)],[c_8268])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_xboole_0(X2)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_7750,plain,
    ( ~ m1_subset_1(k2_funct_2(X0,sK2),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_xboole_0(X2)
    | v1_xboole_0(k2_funct_2(X0,sK2)) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_7757,plain,
    ( ~ m1_subset_1(k2_funct_2(sK1,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | v1_xboole_0(k2_funct_2(sK1,sK2))
    | ~ v1_xboole_0(sK1) ),
    inference(instantiation,[status(thm)],[c_7750])).

cnf(c_30,negated_conjecture,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,sK3),k6_partfun1(sK1)) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_2323,plain,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,sK3),k6_partfun1(sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_11,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_20,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f73])).

cnf(c_510,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_11,c_20])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_522,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | k2_relat_1(X0) = X1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_510,c_10])).

cnf(c_2313,plain,
    ( k2_relat_1(X0) = X1
    | v2_funct_2(X0,X1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_522])).

cnf(c_4235,plain,
    ( k2_relat_1(sK2) = sK1
    | v2_funct_2(sK2,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2318,c_2313])).

cnf(c_16,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | v2_funct_2(X0,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_2663,plain,
    ( ~ v3_funct_2(sK2,X0,X1)
    | v2_funct_2(sK2,X1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_2665,plain,
    ( ~ v3_funct_2(sK2,sK1,sK1)
    | v2_funct_2(sK2,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2663])).

cnf(c_2835,plain,
    ( ~ v2_funct_2(sK2,X0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | k2_relat_1(sK2) = X0 ),
    inference(instantiation,[status(thm)],[c_522])).

cnf(c_2837,plain,
    ( ~ v2_funct_2(sK2,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | k2_relat_1(sK2) = sK1 ),
    inference(instantiation,[status(thm)],[c_2835])).

cnf(c_4857,plain,
    ( k2_relat_1(sK2) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4235,c_38,c_36,c_35,c_2665,c_2837])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_2334,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_4383,plain,
    ( k2_relset_1(sK1,sK1,sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_2318,c_2334])).

cnf(c_4860,plain,
    ( k2_relset_1(sK1,sK1,sK2) = sK1 ),
    inference(demodulation,[status(thm)],[c_4857,c_4383])).

cnf(c_28,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X3,X1,X0)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X0,X1,X2) != X1
    | k2_funct_1(X2) = X3
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f82])).

cnf(c_27,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X3,X1,X0)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | v2_funct_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_205,plain,
    ( ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_2(X2,X0,X1)
    | ~ v1_funct_2(X3,X1,X0)
    | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X0,X1,X2) != X1
    | k2_funct_1(X2) = X3
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_28,c_27])).

cnf(c_206,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X3,X1,X0)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X2)
    | k2_relset_1(X0,X1,X2) != X1
    | k2_funct_1(X2) = X3
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0 ),
    inference(renaming,[status(thm)],[c_205])).

cnf(c_2314,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | k2_funct_1(X2) = X3
    | k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) != iProver_top
    | v1_funct_2(X3,X1,X0) != iProver_top
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_206])).

cnf(c_5986,plain,
    ( k2_funct_1(sK2) = X0
    | sK1 = k1_xboole_0
    | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,X0),k6_partfun1(sK1)) != iProver_top
    | v1_funct_2(X0,sK1,sK1) != iProver_top
    | v1_funct_2(sK2,sK1,sK1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_4860,c_2314])).

cnf(c_39,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_40,plain,
    ( v1_funct_2(sK2,sK1,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_42,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_6739,plain,
    ( v1_funct_1(X0) != iProver_top
    | v1_funct_2(X0,sK1,sK1) != iProver_top
    | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,X0),k6_partfun1(sK1)) != iProver_top
    | sK1 = k1_xboole_0
    | k2_funct_1(sK2) = X0
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5986,c_39,c_40,c_42])).

cnf(c_6740,plain,
    ( k2_funct_1(sK2) = X0
    | sK1 = k1_xboole_0
    | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,X0),k6_partfun1(sK1)) != iProver_top
    | v1_funct_2(X0,sK1,sK1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_6739])).

cnf(c_6751,plain,
    ( k2_funct_1(sK2) = sK3
    | sK1 = k1_xboole_0
    | v1_funct_2(sK3,sK1,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2323,c_6740])).

cnf(c_34,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_33,negated_conjecture,
    ( v1_funct_2(sK3,sK1,sK1) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_31,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_6752,plain,
    ( ~ v1_funct_2(sK3,sK1,sK1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ v1_funct_1(sK3)
    | k2_funct_1(sK2) = sK3
    | sK1 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_6751])).

cnf(c_6754,plain,
    ( sK1 = k1_xboole_0
    | k2_funct_1(sK2) = sK3 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6751,c_43,c_44,c_46])).

cnf(c_6755,plain,
    ( k2_funct_1(sK2) = sK3
    | sK1 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_6754])).

cnf(c_2322,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_2335,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_xboole_0(X2) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_6087,plain,
    ( v1_xboole_0(sK3) = iProver_top
    | v1_xboole_0(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_2322,c_2335])).

cnf(c_6112,plain,
    ( v1_xboole_0(sK3)
    | ~ v1_xboole_0(sK1) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_6087])).

cnf(c_4280,plain,
    ( ~ r2_relset_1(X0,X1,X2,X3)
    | r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2))
    | k2_funct_2(sK1,sK2) != X3
    | sK3 != X2
    | sK1 != X1
    | sK1 != X0 ),
    inference(instantiation,[status(thm)],[c_1534])).

cnf(c_4282,plain,
    ( r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2))
    | ~ r2_relset_1(sK1,sK1,sK1,sK1)
    | k2_funct_2(sK1,sK2) != sK1
    | sK3 != sK1
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_4280])).

cnf(c_3196,plain,
    ( ~ v1_xboole_0(X0)
    | ~ v1_xboole_0(sK3)
    | sK3 = X0 ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_3198,plain,
    ( ~ v1_xboole_0(sK3)
    | ~ v1_xboole_0(sK1)
    | sK3 = sK1 ),
    inference(instantiation,[status(thm)],[c_3196])).

cnf(c_1527,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_2845,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_1527])).

cnf(c_2795,plain,
    ( ~ v1_xboole_0(X0)
    | ~ v1_xboole_0(sK3)
    | X0 = sK3 ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_2797,plain,
    ( ~ v1_xboole_0(sK3)
    | ~ v1_xboole_0(sK1)
    | sK1 = sK3 ),
    inference(instantiation,[status(thm)],[c_2795])).

cnf(c_2792,plain,
    ( ~ r2_relset_1(sK1,sK1,sK3,sK3)
    | r2_relset_1(sK1,sK1,sK1,sK1)
    | sK1 != sK3
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_2790])).

cnf(c_1530,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_2781,plain,
    ( v1_xboole_0(X0)
    | ~ v1_xboole_0(k1_xboole_0)
    | X0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1530])).

cnf(c_2783,plain,
    ( v1_xboole_0(sK1)
    | ~ v1_xboole_0(k1_xboole_0)
    | sK1 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_2781])).

cnf(c_21,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_2722,plain,
    ( ~ v1_funct_2(sK2,X0,X0)
    | ~ v3_funct_2(sK2,X0,X0)
    | m1_subset_1(k2_funct_2(X0,sK2),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_21])).

cnf(c_2724,plain,
    ( ~ v1_funct_2(sK2,sK1,sK1)
    | ~ v3_funct_2(sK2,sK1,sK1)
    | m1_subset_1(k2_funct_2(sK1,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2722])).

cnf(c_14,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_2640,plain,
    ( r2_relset_1(sK1,sK1,sK3,sK3)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_2641,plain,
    ( r2_relset_1(sK1,sK1,sK3,sK3) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2640])).

cnf(c_1556,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_1527])).

cnf(c_3,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_46,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_9611,c_9492,c_8270,c_7757,c_6755,c_6112,c_4282,c_3198,c_2845,c_2797,c_2792,c_2783,c_2724,c_2641,c_2640,c_1556,c_3,c_29,c_46,c_31,c_35,c_36,c_37,c_38])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n007.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 16:13:36 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 3.20/1.00  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.20/1.00  
% 3.20/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.20/1.00  
% 3.20/1.00  ------  iProver source info
% 3.20/1.00  
% 3.20/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.20/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.20/1.00  git: non_committed_changes: false
% 3.20/1.00  git: last_make_outside_of_git: false
% 3.20/1.00  
% 3.20/1.00  ------ 
% 3.20/1.00  
% 3.20/1.00  ------ Input Options
% 3.20/1.00  
% 3.20/1.00  --out_options                           all
% 3.20/1.00  --tptp_safe_out                         true
% 3.20/1.00  --problem_path                          ""
% 3.20/1.00  --include_path                          ""
% 3.20/1.00  --clausifier                            res/vclausify_rel
% 3.20/1.00  --clausifier_options                    --mode clausify
% 3.20/1.00  --stdin                                 false
% 3.20/1.00  --stats_out                             all
% 3.20/1.00  
% 3.20/1.00  ------ General Options
% 3.20/1.00  
% 3.20/1.00  --fof                                   false
% 3.20/1.00  --time_out_real                         305.
% 3.20/1.00  --time_out_virtual                      -1.
% 3.20/1.00  --symbol_type_check                     false
% 3.20/1.00  --clausify_out                          false
% 3.20/1.00  --sig_cnt_out                           false
% 3.20/1.00  --trig_cnt_out                          false
% 3.20/1.00  --trig_cnt_out_tolerance                1.
% 3.20/1.00  --trig_cnt_out_sk_spl                   false
% 3.20/1.00  --abstr_cl_out                          false
% 3.20/1.00  
% 3.20/1.00  ------ Global Options
% 3.20/1.00  
% 3.20/1.00  --schedule                              default
% 3.20/1.00  --add_important_lit                     false
% 3.20/1.00  --prop_solver_per_cl                    1000
% 3.20/1.00  --min_unsat_core                        false
% 3.20/1.00  --soft_assumptions                      false
% 3.20/1.00  --soft_lemma_size                       3
% 3.20/1.00  --prop_impl_unit_size                   0
% 3.20/1.00  --prop_impl_unit                        []
% 3.20/1.00  --share_sel_clauses                     true
% 3.20/1.00  --reset_solvers                         false
% 3.20/1.00  --bc_imp_inh                            [conj_cone]
% 3.20/1.00  --conj_cone_tolerance                   3.
% 3.20/1.00  --extra_neg_conj                        none
% 3.20/1.00  --large_theory_mode                     true
% 3.20/1.00  --prolific_symb_bound                   200
% 3.20/1.00  --lt_threshold                          2000
% 3.20/1.00  --clause_weak_htbl                      true
% 3.20/1.00  --gc_record_bc_elim                     false
% 3.20/1.00  
% 3.20/1.00  ------ Preprocessing Options
% 3.20/1.00  
% 3.20/1.00  --preprocessing_flag                    true
% 3.20/1.00  --time_out_prep_mult                    0.1
% 3.20/1.00  --splitting_mode                        input
% 3.20/1.00  --splitting_grd                         true
% 3.20/1.00  --splitting_cvd                         false
% 3.20/1.00  --splitting_cvd_svl                     false
% 3.20/1.00  --splitting_nvd                         32
% 3.20/1.00  --sub_typing                            true
% 3.20/1.00  --prep_gs_sim                           true
% 3.20/1.00  --prep_unflatten                        true
% 3.20/1.00  --prep_res_sim                          true
% 3.20/1.00  --prep_upred                            true
% 3.20/1.00  --prep_sem_filter                       exhaustive
% 3.20/1.00  --prep_sem_filter_out                   false
% 3.20/1.00  --pred_elim                             true
% 3.20/1.00  --res_sim_input                         true
% 3.20/1.00  --eq_ax_congr_red                       true
% 3.20/1.00  --pure_diseq_elim                       true
% 3.20/1.00  --brand_transform                       false
% 3.20/1.00  --non_eq_to_eq                          false
% 3.20/1.00  --prep_def_merge                        true
% 3.20/1.00  --prep_def_merge_prop_impl              false
% 3.20/1.00  --prep_def_merge_mbd                    true
% 3.20/1.00  --prep_def_merge_tr_red                 false
% 3.20/1.00  --prep_def_merge_tr_cl                  false
% 3.20/1.00  --smt_preprocessing                     true
% 3.20/1.00  --smt_ac_axioms                         fast
% 3.20/1.00  --preprocessed_out                      false
% 3.20/1.00  --preprocessed_stats                    false
% 3.20/1.00  
% 3.20/1.00  ------ Abstraction refinement Options
% 3.20/1.00  
% 3.20/1.00  --abstr_ref                             []
% 3.20/1.00  --abstr_ref_prep                        false
% 3.20/1.00  --abstr_ref_until_sat                   false
% 3.20/1.00  --abstr_ref_sig_restrict                funpre
% 3.20/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.20/1.00  --abstr_ref_under                       []
% 3.20/1.00  
% 3.20/1.00  ------ SAT Options
% 3.20/1.00  
% 3.20/1.00  --sat_mode                              false
% 3.20/1.00  --sat_fm_restart_options                ""
% 3.20/1.00  --sat_gr_def                            false
% 3.20/1.00  --sat_epr_types                         true
% 3.20/1.00  --sat_non_cyclic_types                  false
% 3.20/1.00  --sat_finite_models                     false
% 3.20/1.00  --sat_fm_lemmas                         false
% 3.20/1.00  --sat_fm_prep                           false
% 3.20/1.00  --sat_fm_uc_incr                        true
% 3.20/1.00  --sat_out_model                         small
% 3.20/1.00  --sat_out_clauses                       false
% 3.20/1.00  
% 3.20/1.00  ------ QBF Options
% 3.20/1.00  
% 3.20/1.00  --qbf_mode                              false
% 3.20/1.00  --qbf_elim_univ                         false
% 3.20/1.00  --qbf_dom_inst                          none
% 3.20/1.00  --qbf_dom_pre_inst                      false
% 3.20/1.00  --qbf_sk_in                             false
% 3.20/1.00  --qbf_pred_elim                         true
% 3.20/1.00  --qbf_split                             512
% 3.20/1.00  
% 3.20/1.00  ------ BMC1 Options
% 3.20/1.00  
% 3.20/1.00  --bmc1_incremental                      false
% 3.20/1.00  --bmc1_axioms                           reachable_all
% 3.20/1.00  --bmc1_min_bound                        0
% 3.20/1.00  --bmc1_max_bound                        -1
% 3.20/1.00  --bmc1_max_bound_default                -1
% 3.20/1.00  --bmc1_symbol_reachability              true
% 3.20/1.00  --bmc1_property_lemmas                  false
% 3.20/1.00  --bmc1_k_induction                      false
% 3.20/1.00  --bmc1_non_equiv_states                 false
% 3.20/1.00  --bmc1_deadlock                         false
% 3.20/1.00  --bmc1_ucm                              false
% 3.20/1.00  --bmc1_add_unsat_core                   none
% 3.20/1.00  --bmc1_unsat_core_children              false
% 3.20/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.20/1.00  --bmc1_out_stat                         full
% 3.20/1.00  --bmc1_ground_init                      false
% 3.20/1.00  --bmc1_pre_inst_next_state              false
% 3.20/1.00  --bmc1_pre_inst_state                   false
% 3.20/1.00  --bmc1_pre_inst_reach_state             false
% 3.20/1.00  --bmc1_out_unsat_core                   false
% 3.20/1.00  --bmc1_aig_witness_out                  false
% 3.20/1.00  --bmc1_verbose                          false
% 3.20/1.00  --bmc1_dump_clauses_tptp                false
% 3.20/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.20/1.00  --bmc1_dump_file                        -
% 3.20/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.20/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.20/1.00  --bmc1_ucm_extend_mode                  1
% 3.20/1.00  --bmc1_ucm_init_mode                    2
% 3.20/1.00  --bmc1_ucm_cone_mode                    none
% 3.20/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.20/1.00  --bmc1_ucm_relax_model                  4
% 3.20/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.20/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.20/1.00  --bmc1_ucm_layered_model                none
% 3.20/1.00  --bmc1_ucm_max_lemma_size               10
% 3.20/1.00  
% 3.20/1.00  ------ AIG Options
% 3.20/1.00  
% 3.20/1.00  --aig_mode                              false
% 3.20/1.00  
% 3.20/1.00  ------ Instantiation Options
% 3.20/1.00  
% 3.20/1.00  --instantiation_flag                    true
% 3.20/1.00  --inst_sos_flag                         false
% 3.20/1.00  --inst_sos_phase                        true
% 3.20/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.20/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.20/1.00  --inst_lit_sel_side                     num_symb
% 3.20/1.00  --inst_solver_per_active                1400
% 3.20/1.00  --inst_solver_calls_frac                1.
% 3.20/1.00  --inst_passive_queue_type               priority_queues
% 3.20/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.20/1.00  --inst_passive_queues_freq              [25;2]
% 3.20/1.00  --inst_dismatching                      true
% 3.20/1.00  --inst_eager_unprocessed_to_passive     true
% 3.20/1.00  --inst_prop_sim_given                   true
% 3.20/1.00  --inst_prop_sim_new                     false
% 3.20/1.00  --inst_subs_new                         false
% 3.20/1.00  --inst_eq_res_simp                      false
% 3.20/1.00  --inst_subs_given                       false
% 3.20/1.00  --inst_orphan_elimination               true
% 3.20/1.00  --inst_learning_loop_flag               true
% 3.20/1.00  --inst_learning_start                   3000
% 3.20/1.00  --inst_learning_factor                  2
% 3.20/1.00  --inst_start_prop_sim_after_learn       3
% 3.20/1.00  --inst_sel_renew                        solver
% 3.20/1.00  --inst_lit_activity_flag                true
% 3.20/1.00  --inst_restr_to_given                   false
% 3.20/1.00  --inst_activity_threshold               500
% 3.20/1.00  --inst_out_proof                        true
% 3.20/1.00  
% 3.20/1.00  ------ Resolution Options
% 3.20/1.00  
% 3.20/1.00  --resolution_flag                       true
% 3.20/1.00  --res_lit_sel                           adaptive
% 3.20/1.00  --res_lit_sel_side                      none
% 3.20/1.00  --res_ordering                          kbo
% 3.20/1.00  --res_to_prop_solver                    active
% 3.20/1.00  --res_prop_simpl_new                    false
% 3.20/1.00  --res_prop_simpl_given                  true
% 3.20/1.00  --res_passive_queue_type                priority_queues
% 3.20/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.20/1.00  --res_passive_queues_freq               [15;5]
% 3.20/1.00  --res_forward_subs                      full
% 3.20/1.00  --res_backward_subs                     full
% 3.20/1.00  --res_forward_subs_resolution           true
% 3.20/1.00  --res_backward_subs_resolution          true
% 3.20/1.00  --res_orphan_elimination                true
% 3.20/1.00  --res_time_limit                        2.
% 3.20/1.00  --res_out_proof                         true
% 3.20/1.00  
% 3.20/1.00  ------ Superposition Options
% 3.20/1.00  
% 3.20/1.00  --superposition_flag                    true
% 3.20/1.00  --sup_passive_queue_type                priority_queues
% 3.20/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.20/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.20/1.00  --demod_completeness_check              fast
% 3.20/1.00  --demod_use_ground                      true
% 3.20/1.00  --sup_to_prop_solver                    passive
% 3.20/1.00  --sup_prop_simpl_new                    true
% 3.20/1.00  --sup_prop_simpl_given                  true
% 3.20/1.00  --sup_fun_splitting                     false
% 3.20/1.00  --sup_smt_interval                      50000
% 3.20/1.00  
% 3.20/1.00  ------ Superposition Simplification Setup
% 3.20/1.00  
% 3.20/1.00  --sup_indices_passive                   []
% 3.20/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.20/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.20/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.20/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.20/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.20/1.00  --sup_full_bw                           [BwDemod]
% 3.20/1.00  --sup_immed_triv                        [TrivRules]
% 3.20/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.20/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.20/1.00  --sup_immed_bw_main                     []
% 3.20/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.20/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.20/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.20/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.20/1.00  
% 3.20/1.00  ------ Combination Options
% 3.20/1.00  
% 3.20/1.00  --comb_res_mult                         3
% 3.20/1.00  --comb_sup_mult                         2
% 3.20/1.00  --comb_inst_mult                        10
% 3.20/1.00  
% 3.20/1.00  ------ Debug Options
% 3.20/1.00  
% 3.20/1.00  --dbg_backtrace                         false
% 3.20/1.00  --dbg_dump_prop_clauses                 false
% 3.20/1.00  --dbg_dump_prop_clauses_file            -
% 3.20/1.00  --dbg_out_stat                          false
% 3.20/1.00  ------ Parsing...
% 3.20/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.20/1.00  
% 3.20/1.00  ------ Preprocessing... sf_s  rm: 3 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.20/1.00  
% 3.20/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.20/1.00  
% 3.20/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.20/1.00  ------ Proving...
% 3.20/1.00  ------ Problem Properties 
% 3.20/1.00  
% 3.20/1.00  
% 3.20/1.00  clauses                                 34
% 3.20/1.00  conjectures                             10
% 3.20/1.00  EPR                                     9
% 3.20/1.00  Horn                                    31
% 3.20/1.00  unary                                   13
% 3.20/1.00  binary                                  7
% 3.20/1.00  lits                                    94
% 3.20/1.00  lits eq                                 14
% 3.20/1.00  fd_pure                                 0
% 3.20/1.00  fd_pseudo                               0
% 3.20/1.00  fd_cond                                 1
% 3.20/1.00  fd_pseudo_cond                          4
% 3.20/1.00  AC symbols                              0
% 3.20/1.00  
% 3.20/1.00  ------ Schedule dynamic 5 is on 
% 3.20/1.00  
% 3.20/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.20/1.00  
% 3.20/1.00  
% 3.20/1.00  ------ 
% 3.20/1.00  Current options:
% 3.20/1.00  ------ 
% 3.20/1.00  
% 3.20/1.00  ------ Input Options
% 3.20/1.00  
% 3.20/1.00  --out_options                           all
% 3.20/1.00  --tptp_safe_out                         true
% 3.20/1.00  --problem_path                          ""
% 3.20/1.00  --include_path                          ""
% 3.20/1.00  --clausifier                            res/vclausify_rel
% 3.20/1.00  --clausifier_options                    --mode clausify
% 3.20/1.00  --stdin                                 false
% 3.20/1.00  --stats_out                             all
% 3.20/1.00  
% 3.20/1.00  ------ General Options
% 3.20/1.00  
% 3.20/1.00  --fof                                   false
% 3.20/1.00  --time_out_real                         305.
% 3.20/1.00  --time_out_virtual                      -1.
% 3.20/1.00  --symbol_type_check                     false
% 3.20/1.00  --clausify_out                          false
% 3.20/1.00  --sig_cnt_out                           false
% 3.20/1.00  --trig_cnt_out                          false
% 3.20/1.00  --trig_cnt_out_tolerance                1.
% 3.20/1.00  --trig_cnt_out_sk_spl                   false
% 3.20/1.00  --abstr_cl_out                          false
% 3.20/1.00  
% 3.20/1.00  ------ Global Options
% 3.20/1.00  
% 3.20/1.00  --schedule                              default
% 3.20/1.00  --add_important_lit                     false
% 3.20/1.00  --prop_solver_per_cl                    1000
% 3.20/1.00  --min_unsat_core                        false
% 3.20/1.00  --soft_assumptions                      false
% 3.20/1.00  --soft_lemma_size                       3
% 3.20/1.00  --prop_impl_unit_size                   0
% 3.20/1.00  --prop_impl_unit                        []
% 3.20/1.00  --share_sel_clauses                     true
% 3.20/1.00  --reset_solvers                         false
% 3.20/1.00  --bc_imp_inh                            [conj_cone]
% 3.20/1.00  --conj_cone_tolerance                   3.
% 3.20/1.00  --extra_neg_conj                        none
% 3.20/1.00  --large_theory_mode                     true
% 3.20/1.00  --prolific_symb_bound                   200
% 3.20/1.00  --lt_threshold                          2000
% 3.20/1.00  --clause_weak_htbl                      true
% 3.20/1.00  --gc_record_bc_elim                     false
% 3.20/1.00  
% 3.20/1.00  ------ Preprocessing Options
% 3.20/1.00  
% 3.20/1.00  --preprocessing_flag                    true
% 3.20/1.00  --time_out_prep_mult                    0.1
% 3.20/1.00  --splitting_mode                        input
% 3.20/1.00  --splitting_grd                         true
% 3.20/1.00  --splitting_cvd                         false
% 3.20/1.00  --splitting_cvd_svl                     false
% 3.20/1.00  --splitting_nvd                         32
% 3.20/1.00  --sub_typing                            true
% 3.20/1.00  --prep_gs_sim                           true
% 3.20/1.00  --prep_unflatten                        true
% 3.20/1.00  --prep_res_sim                          true
% 3.20/1.00  --prep_upred                            true
% 3.20/1.00  --prep_sem_filter                       exhaustive
% 3.20/1.00  --prep_sem_filter_out                   false
% 3.20/1.00  --pred_elim                             true
% 3.20/1.00  --res_sim_input                         true
% 3.20/1.00  --eq_ax_congr_red                       true
% 3.20/1.00  --pure_diseq_elim                       true
% 3.20/1.00  --brand_transform                       false
% 3.20/1.00  --non_eq_to_eq                          false
% 3.20/1.00  --prep_def_merge                        true
% 3.20/1.00  --prep_def_merge_prop_impl              false
% 3.20/1.00  --prep_def_merge_mbd                    true
% 3.20/1.00  --prep_def_merge_tr_red                 false
% 3.20/1.00  --prep_def_merge_tr_cl                  false
% 3.20/1.00  --smt_preprocessing                     true
% 3.20/1.00  --smt_ac_axioms                         fast
% 3.20/1.00  --preprocessed_out                      false
% 3.20/1.00  --preprocessed_stats                    false
% 3.20/1.00  
% 3.20/1.00  ------ Abstraction refinement Options
% 3.20/1.00  
% 3.20/1.00  --abstr_ref                             []
% 3.20/1.00  --abstr_ref_prep                        false
% 3.20/1.00  --abstr_ref_until_sat                   false
% 3.20/1.00  --abstr_ref_sig_restrict                funpre
% 3.20/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.20/1.00  --abstr_ref_under                       []
% 3.20/1.00  
% 3.20/1.00  ------ SAT Options
% 3.20/1.00  
% 3.20/1.00  --sat_mode                              false
% 3.20/1.00  --sat_fm_restart_options                ""
% 3.20/1.00  --sat_gr_def                            false
% 3.20/1.00  --sat_epr_types                         true
% 3.20/1.00  --sat_non_cyclic_types                  false
% 3.20/1.00  --sat_finite_models                     false
% 3.20/1.00  --sat_fm_lemmas                         false
% 3.20/1.00  --sat_fm_prep                           false
% 3.20/1.00  --sat_fm_uc_incr                        true
% 3.20/1.00  --sat_out_model                         small
% 3.20/1.00  --sat_out_clauses                       false
% 3.20/1.00  
% 3.20/1.00  ------ QBF Options
% 3.20/1.00  
% 3.20/1.00  --qbf_mode                              false
% 3.20/1.00  --qbf_elim_univ                         false
% 3.20/1.00  --qbf_dom_inst                          none
% 3.20/1.00  --qbf_dom_pre_inst                      false
% 3.20/1.00  --qbf_sk_in                             false
% 3.20/1.00  --qbf_pred_elim                         true
% 3.20/1.00  --qbf_split                             512
% 3.20/1.00  
% 3.20/1.00  ------ BMC1 Options
% 3.20/1.00  
% 3.20/1.00  --bmc1_incremental                      false
% 3.20/1.00  --bmc1_axioms                           reachable_all
% 3.20/1.00  --bmc1_min_bound                        0
% 3.20/1.00  --bmc1_max_bound                        -1
% 3.20/1.00  --bmc1_max_bound_default                -1
% 3.20/1.00  --bmc1_symbol_reachability              true
% 3.20/1.00  --bmc1_property_lemmas                  false
% 3.20/1.00  --bmc1_k_induction                      false
% 3.20/1.00  --bmc1_non_equiv_states                 false
% 3.20/1.00  --bmc1_deadlock                         false
% 3.20/1.00  --bmc1_ucm                              false
% 3.20/1.00  --bmc1_add_unsat_core                   none
% 3.20/1.00  --bmc1_unsat_core_children              false
% 3.20/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.20/1.00  --bmc1_out_stat                         full
% 3.20/1.00  --bmc1_ground_init                      false
% 3.20/1.00  --bmc1_pre_inst_next_state              false
% 3.20/1.00  --bmc1_pre_inst_state                   false
% 3.20/1.00  --bmc1_pre_inst_reach_state             false
% 3.20/1.00  --bmc1_out_unsat_core                   false
% 3.20/1.00  --bmc1_aig_witness_out                  false
% 3.20/1.00  --bmc1_verbose                          false
% 3.20/1.00  --bmc1_dump_clauses_tptp                false
% 3.20/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.20/1.00  --bmc1_dump_file                        -
% 3.20/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.20/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.20/1.00  --bmc1_ucm_extend_mode                  1
% 3.20/1.00  --bmc1_ucm_init_mode                    2
% 3.20/1.00  --bmc1_ucm_cone_mode                    none
% 3.20/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.20/1.00  --bmc1_ucm_relax_model                  4
% 3.20/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.20/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.20/1.00  --bmc1_ucm_layered_model                none
% 3.20/1.00  --bmc1_ucm_max_lemma_size               10
% 3.20/1.00  
% 3.20/1.00  ------ AIG Options
% 3.20/1.00  
% 3.20/1.00  --aig_mode                              false
% 3.20/1.00  
% 3.20/1.00  ------ Instantiation Options
% 3.20/1.00  
% 3.20/1.00  --instantiation_flag                    true
% 3.20/1.00  --inst_sos_flag                         false
% 3.20/1.00  --inst_sos_phase                        true
% 3.20/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.20/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.20/1.00  --inst_lit_sel_side                     none
% 3.20/1.00  --inst_solver_per_active                1400
% 3.20/1.00  --inst_solver_calls_frac                1.
% 3.20/1.00  --inst_passive_queue_type               priority_queues
% 3.20/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.20/1.00  --inst_passive_queues_freq              [25;2]
% 3.20/1.00  --inst_dismatching                      true
% 3.20/1.00  --inst_eager_unprocessed_to_passive     true
% 3.20/1.00  --inst_prop_sim_given                   true
% 3.20/1.00  --inst_prop_sim_new                     false
% 3.20/1.00  --inst_subs_new                         false
% 3.20/1.00  --inst_eq_res_simp                      false
% 3.20/1.00  --inst_subs_given                       false
% 3.20/1.00  --inst_orphan_elimination               true
% 3.20/1.00  --inst_learning_loop_flag               true
% 3.20/1.00  --inst_learning_start                   3000
% 3.20/1.00  --inst_learning_factor                  2
% 3.20/1.00  --inst_start_prop_sim_after_learn       3
% 3.20/1.00  --inst_sel_renew                        solver
% 3.20/1.00  --inst_lit_activity_flag                true
% 3.20/1.00  --inst_restr_to_given                   false
% 3.20/1.00  --inst_activity_threshold               500
% 3.20/1.00  --inst_out_proof                        true
% 3.20/1.00  
% 3.20/1.00  ------ Resolution Options
% 3.20/1.00  
% 3.20/1.00  --resolution_flag                       false
% 3.20/1.00  --res_lit_sel                           adaptive
% 3.20/1.00  --res_lit_sel_side                      none
% 3.20/1.00  --res_ordering                          kbo
% 3.20/1.00  --res_to_prop_solver                    active
% 3.20/1.00  --res_prop_simpl_new                    false
% 3.20/1.00  --res_prop_simpl_given                  true
% 3.20/1.00  --res_passive_queue_type                priority_queues
% 3.20/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.20/1.00  --res_passive_queues_freq               [15;5]
% 3.20/1.00  --res_forward_subs                      full
% 3.20/1.00  --res_backward_subs                     full
% 3.20/1.00  --res_forward_subs_resolution           true
% 3.20/1.00  --res_backward_subs_resolution          true
% 3.20/1.00  --res_orphan_elimination                true
% 3.20/1.00  --res_time_limit                        2.
% 3.20/1.00  --res_out_proof                         true
% 3.20/1.00  
% 3.20/1.00  ------ Superposition Options
% 3.20/1.00  
% 3.20/1.00  --superposition_flag                    true
% 3.20/1.00  --sup_passive_queue_type                priority_queues
% 3.20/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.20/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.20/1.00  --demod_completeness_check              fast
% 3.20/1.00  --demod_use_ground                      true
% 3.20/1.00  --sup_to_prop_solver                    passive
% 3.20/1.00  --sup_prop_simpl_new                    true
% 3.20/1.00  --sup_prop_simpl_given                  true
% 3.20/1.00  --sup_fun_splitting                     false
% 3.20/1.00  --sup_smt_interval                      50000
% 3.20/1.00  
% 3.20/1.00  ------ Superposition Simplification Setup
% 3.20/1.00  
% 3.20/1.00  --sup_indices_passive                   []
% 3.20/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.20/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.20/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.20/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.20/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.20/1.00  --sup_full_bw                           [BwDemod]
% 3.20/1.00  --sup_immed_triv                        [TrivRules]
% 3.20/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.20/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.20/1.00  --sup_immed_bw_main                     []
% 3.20/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.20/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.20/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.20/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.20/1.00  
% 3.20/1.00  ------ Combination Options
% 3.20/1.00  
% 3.20/1.00  --comb_res_mult                         3
% 3.20/1.00  --comb_sup_mult                         2
% 3.20/1.00  --comb_inst_mult                        10
% 3.20/1.00  
% 3.20/1.00  ------ Debug Options
% 3.20/1.00  
% 3.20/1.00  --dbg_backtrace                         false
% 3.20/1.00  --dbg_dump_prop_clauses                 false
% 3.20/1.00  --dbg_dump_prop_clauses_file            -
% 3.20/1.00  --dbg_out_stat                          false
% 3.20/1.00  
% 3.20/1.00  
% 3.20/1.00  
% 3.20/1.00  
% 3.20/1.00  ------ Proving...
% 3.20/1.00  
% 3.20/1.00  
% 3.20/1.00  % SZS status Theorem for theBenchmark.p
% 3.20/1.00  
% 3.20/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.20/1.00  
% 3.20/1.00  fof(f17,conjecture,(
% 3.20/1.00    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) => r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)))))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f18,negated_conjecture,(
% 3.20/1.00    ~! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) => r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)))))),
% 3.20/1.00    inference(negated_conjecture,[],[f17])).
% 3.20/1.00  
% 3.20/1.00  fof(f40,plain,(
% 3.20/1.00    ? [X0,X1] : (? [X2] : ((~r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)))),
% 3.20/1.00    inference(ennf_transformation,[],[f18])).
% 3.20/1.00  
% 3.20/1.00  fof(f41,plain,(
% 3.20/1.00    ? [X0,X1] : (? [X2] : (~r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 3.20/1.00    inference(flattening,[],[f40])).
% 3.20/1.00  
% 3.20/1.00  fof(f52,plain,(
% 3.20/1.00    ( ! [X0,X1] : (? [X2] : (~r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) => (~r2_relset_1(X0,X0,sK3,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,sK3),k6_partfun1(X0)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(sK3,X0,X0) & v1_funct_2(sK3,X0,X0) & v1_funct_1(sK3))) )),
% 3.20/1.00    introduced(choice_axiom,[])).
% 3.20/1.00  
% 3.20/1.00  fof(f51,plain,(
% 3.20/1.00    ? [X0,X1] : (? [X2] : (~r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (? [X2] : (~r2_relset_1(sK1,sK1,X2,k2_funct_2(sK1,sK2)) & r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,X2),k6_partfun1(sK1)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) & v3_funct_2(X2,sK1,sK1) & v1_funct_2(X2,sK1,sK1) & v1_funct_1(X2)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) & v3_funct_2(sK2,sK1,sK1) & v1_funct_2(sK2,sK1,sK1) & v1_funct_1(sK2))),
% 3.20/1.00    introduced(choice_axiom,[])).
% 3.20/1.00  
% 3.20/1.00  fof(f53,plain,(
% 3.20/1.00    (~r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2)) & r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,sK3),k6_partfun1(sK1)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) & v3_funct_2(sK3,sK1,sK1) & v1_funct_2(sK3,sK1,sK1) & v1_funct_1(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) & v3_funct_2(sK2,sK1,sK1) & v1_funct_2(sK2,sK1,sK1) & v1_funct_1(sK2)),
% 3.20/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f41,f52,f51])).
% 3.20/1.00  
% 3.20/1.00  fof(f86,plain,(
% 3.20/1.00    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))),
% 3.20/1.00    inference(cnf_transformation,[],[f53])).
% 3.20/1.00  
% 3.20/1.00  fof(f14,axiom,(
% 3.20/1.00    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => k2_funct_2(X0,X1) = k2_funct_1(X1))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f34,plain,(
% 3.20/1.00    ! [X0,X1] : (k2_funct_2(X0,X1) = k2_funct_1(X1) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 3.20/1.00    inference(ennf_transformation,[],[f14])).
% 3.20/1.00  
% 3.20/1.00  fof(f35,plain,(
% 3.20/1.00    ! [X0,X1] : (k2_funct_2(X0,X1) = k2_funct_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 3.20/1.00    inference(flattening,[],[f34])).
% 3.20/1.00  
% 3.20/1.00  fof(f79,plain,(
% 3.20/1.00    ( ! [X0,X1] : (k2_funct_2(X0,X1) = k2_funct_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.20/1.00    inference(cnf_transformation,[],[f35])).
% 3.20/1.00  
% 3.20/1.00  fof(f83,plain,(
% 3.20/1.00    v1_funct_1(sK2)),
% 3.20/1.00    inference(cnf_transformation,[],[f53])).
% 3.20/1.00  
% 3.20/1.00  fof(f84,plain,(
% 3.20/1.00    v1_funct_2(sK2,sK1,sK1)),
% 3.20/1.00    inference(cnf_transformation,[],[f53])).
% 3.20/1.00  
% 3.20/1.00  fof(f85,plain,(
% 3.20/1.00    v3_funct_2(sK2,sK1,sK1)),
% 3.20/1.00    inference(cnf_transformation,[],[f53])).
% 3.20/1.00  
% 3.20/1.00  fof(f92,plain,(
% 3.20/1.00    ~r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2))),
% 3.20/1.00    inference(cnf_transformation,[],[f53])).
% 3.20/1.00  
% 3.20/1.00  fof(f3,axiom,(
% 3.20/1.00    ! [X0,X1] : ~(v1_xboole_0(X1) & X0 != X1 & v1_xboole_0(X0))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f21,plain,(
% 3.20/1.00    ! [X0,X1] : (~v1_xboole_0(X1) | X0 = X1 | ~v1_xboole_0(X0))),
% 3.20/1.00    inference(ennf_transformation,[],[f3])).
% 3.20/1.00  
% 3.20/1.00  fof(f58,plain,(
% 3.20/1.00    ( ! [X0,X1] : (~v1_xboole_0(X1) | X0 = X1 | ~v1_xboole_0(X0)) )),
% 3.20/1.00    inference(cnf_transformation,[],[f21])).
% 3.20/1.00  
% 3.20/1.00  fof(f8,axiom,(
% 3.20/1.00    ! [X0,X1] : (v1_xboole_0(X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => v1_xboole_0(X2)))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f24,plain,(
% 3.20/1.00    ! [X0,X1] : (! [X2] : (v1_xboole_0(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) | ~v1_xboole_0(X0))),
% 3.20/1.00    inference(ennf_transformation,[],[f8])).
% 3.20/1.00  
% 3.20/1.00  fof(f66,plain,(
% 3.20/1.00    ( ! [X2,X0,X1] : (v1_xboole_0(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_xboole_0(X0)) )),
% 3.20/1.00    inference(cnf_transformation,[],[f24])).
% 3.20/1.00  
% 3.20/1.00  fof(f91,plain,(
% 3.20/1.00    r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,sK3),k6_partfun1(sK1))),
% 3.20/1.00    inference(cnf_transformation,[],[f53])).
% 3.20/1.00  
% 3.20/1.00  fof(f7,axiom,(
% 3.20/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f19,plain,(
% 3.20/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 3.20/1.00    inference(pure_predicate_removal,[],[f7])).
% 3.20/1.00  
% 3.20/1.00  fof(f23,plain,(
% 3.20/1.00    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.20/1.00    inference(ennf_transformation,[],[f19])).
% 3.20/1.00  
% 3.20/1.00  fof(f65,plain,(
% 3.20/1.00    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.20/1.00    inference(cnf_transformation,[],[f23])).
% 3.20/1.00  
% 3.20/1.00  fof(f12,axiom,(
% 3.20/1.00    ! [X0,X1] : ((v5_relat_1(X1,X0) & v1_relat_1(X1)) => (v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f30,plain,(
% 3.20/1.00    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | (~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 3.20/1.00    inference(ennf_transformation,[],[f12])).
% 3.20/1.00  
% 3.20/1.00  fof(f31,plain,(
% 3.20/1.00    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.20/1.00    inference(flattening,[],[f30])).
% 3.20/1.00  
% 3.20/1.00  fof(f50,plain,(
% 3.20/1.00    ! [X0,X1] : (((v2_funct_2(X1,X0) | k2_relat_1(X1) != X0) & (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0))) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.20/1.00    inference(nnf_transformation,[],[f31])).
% 3.20/1.00  
% 3.20/1.00  fof(f73,plain,(
% 3.20/1.00    ( ! [X0,X1] : (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.20/1.00    inference(cnf_transformation,[],[f50])).
% 3.20/1.00  
% 3.20/1.00  fof(f6,axiom,(
% 3.20/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f22,plain,(
% 3.20/1.00    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.20/1.00    inference(ennf_transformation,[],[f6])).
% 3.20/1.00  
% 3.20/1.00  fof(f64,plain,(
% 3.20/1.00    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.20/1.00    inference(cnf_transformation,[],[f22])).
% 3.20/1.00  
% 3.20/1.00  fof(f11,axiom,(
% 3.20/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v3_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2))))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f28,plain,(
% 3.20/1.00    ! [X0,X1,X2] : (((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | (~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.20/1.00    inference(ennf_transformation,[],[f11])).
% 3.20/1.00  
% 3.20/1.00  fof(f29,plain,(
% 3.20/1.00    ! [X0,X1,X2] : ((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.20/1.00    inference(flattening,[],[f28])).
% 3.20/1.00  
% 3.20/1.00  fof(f72,plain,(
% 3.20/1.00    ( ! [X2,X0,X1] : (v2_funct_2(X2,X1) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.20/1.00    inference(cnf_transformation,[],[f29])).
% 3.20/1.00  
% 3.20/1.00  fof(f9,axiom,(
% 3.20/1.00    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relset_1(X0,X1,X2) = k2_relat_1(X2))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f25,plain,(
% 3.20/1.00    ! [X0,X1,X2] : (k2_relset_1(X0,X1,X2) = k2_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.20/1.00    inference(ennf_transformation,[],[f9])).
% 3.20/1.00  
% 3.20/1.00  fof(f67,plain,(
% 3.20/1.00    ( ! [X2,X0,X1] : (k2_relset_1(X0,X1,X2) = k2_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.20/1.00    inference(cnf_transformation,[],[f25])).
% 3.20/1.00  
% 3.20/1.00  fof(f16,axiom,(
% 3.20/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f38,plain,(
% 3.20/1.00    ! [X0,X1,X2] : (! [X3] : (((k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0) | (~v2_funct_1(X2) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.20/1.00    inference(ennf_transformation,[],[f16])).
% 3.20/1.00  
% 3.20/1.00  fof(f39,plain,(
% 3.20/1.00    ! [X0,X1,X2] : (! [X3] : (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~v2_funct_1(X2) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.20/1.00    inference(flattening,[],[f38])).
% 3.20/1.00  
% 3.20/1.00  fof(f82,plain,(
% 3.20/1.00    ( ! [X2,X0,X3,X1] : (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~v2_funct_1(X2) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.20/1.00    inference(cnf_transformation,[],[f39])).
% 3.20/1.00  
% 3.20/1.00  fof(f15,axiom,(
% 3.20/1.00    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) => (v2_funct_2(X3,X0) & v2_funct_1(X2)))))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f36,plain,(
% 3.20/1.00    ! [X0,X1,X2] : (! [X3] : (((v2_funct_2(X3,X0) & v2_funct_1(X2)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.20/1.00    inference(ennf_transformation,[],[f15])).
% 3.20/1.00  
% 3.20/1.00  fof(f37,plain,(
% 3.20/1.00    ! [X0,X1,X2] : (! [X3] : ((v2_funct_2(X3,X0) & v2_funct_1(X2)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.20/1.00    inference(flattening,[],[f36])).
% 3.20/1.00  
% 3.20/1.00  fof(f80,plain,(
% 3.20/1.00    ( ! [X2,X0,X3,X1] : (v2_funct_1(X2) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.20/1.00    inference(cnf_transformation,[],[f37])).
% 3.20/1.00  
% 3.20/1.00  fof(f87,plain,(
% 3.20/1.00    v1_funct_1(sK3)),
% 3.20/1.00    inference(cnf_transformation,[],[f53])).
% 3.20/1.00  
% 3.20/1.00  fof(f88,plain,(
% 3.20/1.00    v1_funct_2(sK3,sK1,sK1)),
% 3.20/1.00    inference(cnf_transformation,[],[f53])).
% 3.20/1.00  
% 3.20/1.00  fof(f90,plain,(
% 3.20/1.00    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))),
% 3.20/1.00    inference(cnf_transformation,[],[f53])).
% 3.20/1.00  
% 3.20/1.00  fof(f13,axiom,(
% 3.20/1.00    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f32,plain,(
% 3.20/1.00    ! [X0,X1] : ((m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 3.20/1.00    inference(ennf_transformation,[],[f13])).
% 3.20/1.00  
% 3.20/1.00  fof(f33,plain,(
% 3.20/1.00    ! [X0,X1] : ((m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 3.20/1.00    inference(flattening,[],[f32])).
% 3.20/1.00  
% 3.20/1.00  fof(f78,plain,(
% 3.20/1.00    ( ! [X0,X1] : (m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.20/1.00    inference(cnf_transformation,[],[f33])).
% 3.20/1.00  
% 3.20/1.00  fof(f10,axiom,(
% 3.20/1.00    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f26,plain,(
% 3.20/1.00    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 3.20/1.00    inference(ennf_transformation,[],[f10])).
% 3.20/1.00  
% 3.20/1.00  fof(f27,plain,(
% 3.20/1.00    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.20/1.00    inference(flattening,[],[f26])).
% 3.20/1.00  
% 3.20/1.00  fof(f49,plain,(
% 3.20/1.00    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.20/1.00    inference(nnf_transformation,[],[f27])).
% 3.20/1.00  
% 3.20/1.00  fof(f69,plain,(
% 3.20/1.00    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.20/1.00    inference(cnf_transformation,[],[f49])).
% 3.20/1.00  
% 3.20/1.00  fof(f95,plain,(
% 3.20/1.00    ( ! [X0,X3,X1] : (r2_relset_1(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.20/1.00    inference(equality_resolution,[],[f69])).
% 3.20/1.00  
% 3.20/1.00  fof(f2,axiom,(
% 3.20/1.00    v1_xboole_0(k1_xboole_0)),
% 3.20/1.00    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.20/1.00  
% 3.20/1.00  fof(f57,plain,(
% 3.20/1.00    v1_xboole_0(k1_xboole_0)),
% 3.20/1.00    inference(cnf_transformation,[],[f2])).
% 3.20/1.00  
% 3.20/1.00  cnf(c_35,negated_conjecture,
% 3.20/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
% 3.20/1.00      inference(cnf_transformation,[],[f86]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2318,plain,
% 3.20/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_25,plain,
% 3.20/1.00      ( ~ v1_funct_2(X0,X1,X1)
% 3.20/1.00      | ~ v3_funct_2(X0,X1,X1)
% 3.20/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.20/1.00      | ~ v1_funct_1(X0)
% 3.20/1.00      | k2_funct_2(X1,X0) = k2_funct_1(X0) ),
% 3.20/1.00      inference(cnf_transformation,[],[f79]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2326,plain,
% 3.20/1.00      ( k2_funct_2(X0,X1) = k2_funct_1(X1)
% 3.20/1.00      | v1_funct_2(X1,X0,X0) != iProver_top
% 3.20/1.00      | v3_funct_2(X1,X0,X0) != iProver_top
% 3.20/1.00      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
% 3.20/1.00      | v1_funct_1(X1) != iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_8667,plain,
% 3.20/1.00      ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2)
% 3.20/1.00      | v1_funct_2(sK2,sK1,sK1) != iProver_top
% 3.20/1.00      | v3_funct_2(sK2,sK1,sK1) != iProver_top
% 3.20/1.00      | v1_funct_1(sK2) != iProver_top ),
% 3.20/1.00      inference(superposition,[status(thm)],[c_2318,c_2326]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_38,negated_conjecture,
% 3.20/1.00      ( v1_funct_1(sK2) ),
% 3.20/1.00      inference(cnf_transformation,[],[f83]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_37,negated_conjecture,
% 3.20/1.00      ( v1_funct_2(sK2,sK1,sK1) ),
% 3.20/1.00      inference(cnf_transformation,[],[f84]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_36,negated_conjecture,
% 3.20/1.00      ( v3_funct_2(sK2,sK1,sK1) ),
% 3.20/1.00      inference(cnf_transformation,[],[f85]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2712,plain,
% 3.20/1.00      ( ~ v1_funct_2(sK2,X0,X0)
% 3.20/1.00      | ~ v3_funct_2(sK2,X0,X0)
% 3.20/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
% 3.20/1.00      | ~ v1_funct_1(sK2)
% 3.20/1.00      | k2_funct_2(X0,sK2) = k2_funct_1(sK2) ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_25]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2714,plain,
% 3.20/1.00      ( ~ v1_funct_2(sK2,sK1,sK1)
% 3.20/1.00      | ~ v3_funct_2(sK2,sK1,sK1)
% 3.20/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.20/1.00      | ~ v1_funct_1(sK2)
% 3.20/1.00      | k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_2712]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_9607,plain,
% 3.20/1.00      ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
% 3.20/1.00      inference(global_propositional_subsumption,
% 3.20/1.00                [status(thm)],
% 3.20/1.00                [c_8667,c_38,c_37,c_36,c_35,c_2714]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_29,negated_conjecture,
% 3.20/1.00      ( ~ r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2)) ),
% 3.20/1.00      inference(cnf_transformation,[],[f92]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2324,plain,
% 3.20/1.00      ( r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2)) != iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_9611,plain,
% 3.20/1.00      ( r2_relset_1(sK1,sK1,sK3,k2_funct_1(sK2)) != iProver_top ),
% 3.20/1.00      inference(demodulation,[status(thm)],[c_9607,c_2324]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_1534,plain,
% 3.20/1.00      ( ~ r2_relset_1(X0,X1,X2,X3)
% 3.20/1.00      | r2_relset_1(X4,X5,X6,X7)
% 3.20/1.00      | X5 != X1
% 3.20/1.00      | X4 != X0
% 3.20/1.00      | X6 != X2
% 3.20/1.00      | X7 != X3 ),
% 3.20/1.00      theory(equality) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2790,plain,
% 3.20/1.00      ( r2_relset_1(X0,X1,X2,X3)
% 3.20/1.00      | ~ r2_relset_1(sK1,sK1,sK3,sK3)
% 3.20/1.00      | X2 != sK3
% 3.20/1.00      | X3 != sK3
% 3.20/1.00      | X0 != sK1
% 3.20/1.00      | X1 != sK1 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_1534]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_3352,plain,
% 3.20/1.00      ( r2_relset_1(X0,X1,sK3,X2)
% 3.20/1.00      | ~ r2_relset_1(sK1,sK1,sK3,sK3)
% 3.20/1.00      | X2 != sK3
% 3.20/1.00      | X0 != sK1
% 3.20/1.00      | X1 != sK1
% 3.20/1.00      | sK3 != sK3 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_2790]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_9484,plain,
% 3.20/1.00      ( r2_relset_1(X0,X1,sK3,k2_funct_1(sK2))
% 3.20/1.00      | ~ r2_relset_1(sK1,sK1,sK3,sK3)
% 3.20/1.00      | X0 != sK1
% 3.20/1.00      | X1 != sK1
% 3.20/1.00      | k2_funct_1(sK2) != sK3
% 3.20/1.00      | sK3 != sK3 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_3352]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_9490,plain,
% 3.20/1.00      ( X0 != sK1
% 3.20/1.00      | X1 != sK1
% 3.20/1.00      | k2_funct_1(sK2) != sK3
% 3.20/1.00      | sK3 != sK3
% 3.20/1.00      | r2_relset_1(X0,X1,sK3,k2_funct_1(sK2)) = iProver_top
% 3.20/1.00      | r2_relset_1(sK1,sK1,sK3,sK3) != iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_9484]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_9492,plain,
% 3.20/1.00      ( k2_funct_1(sK2) != sK3
% 3.20/1.00      | sK3 != sK3
% 3.20/1.00      | sK1 != sK1
% 3.20/1.00      | r2_relset_1(sK1,sK1,sK3,k2_funct_1(sK2)) = iProver_top
% 3.20/1.00      | r2_relset_1(sK1,sK1,sK3,sK3) != iProver_top ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_9490]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_4,plain,
% 3.20/1.00      ( ~ v1_xboole_0(X0) | ~ v1_xboole_0(X1) | X0 = X1 ),
% 3.20/1.00      inference(cnf_transformation,[],[f58]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_8268,plain,
% 3.20/1.00      ( ~ v1_xboole_0(X0)
% 3.20/1.00      | ~ v1_xboole_0(k2_funct_2(X1,sK2))
% 3.20/1.00      | k2_funct_2(X1,sK2) = X0 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_4]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_8270,plain,
% 3.20/1.00      ( ~ v1_xboole_0(k2_funct_2(sK1,sK2))
% 3.20/1.00      | ~ v1_xboole_0(sK1)
% 3.20/1.00      | k2_funct_2(sK1,sK2) = sK1 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_8268]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_12,plain,
% 3.20/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.20/1.00      | ~ v1_xboole_0(X2)
% 3.20/1.00      | v1_xboole_0(X0) ),
% 3.20/1.00      inference(cnf_transformation,[],[f66]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_7750,plain,
% 3.20/1.00      ( ~ m1_subset_1(k2_funct_2(X0,sK2),k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.20/1.00      | ~ v1_xboole_0(X2)
% 3.20/1.00      | v1_xboole_0(k2_funct_2(X0,sK2)) ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_12]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_7757,plain,
% 3.20/1.00      ( ~ m1_subset_1(k2_funct_2(sK1,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.20/1.00      | v1_xboole_0(k2_funct_2(sK1,sK2))
% 3.20/1.00      | ~ v1_xboole_0(sK1) ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_7750]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_30,negated_conjecture,
% 3.20/1.00      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,sK3),k6_partfun1(sK1)) ),
% 3.20/1.00      inference(cnf_transformation,[],[f91]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2323,plain,
% 3.20/1.00      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,sK3),k6_partfun1(sK1)) = iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_11,plain,
% 3.20/1.00      ( v5_relat_1(X0,X1)
% 3.20/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 3.20/1.00      inference(cnf_transformation,[],[f65]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_20,plain,
% 3.20/1.00      ( ~ v2_funct_2(X0,X1)
% 3.20/1.00      | ~ v5_relat_1(X0,X1)
% 3.20/1.00      | ~ v1_relat_1(X0)
% 3.20/1.00      | k2_relat_1(X0) = X1 ),
% 3.20/1.00      inference(cnf_transformation,[],[f73]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_510,plain,
% 3.20/1.00      ( ~ v2_funct_2(X0,X1)
% 3.20/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.20/1.00      | ~ v1_relat_1(X0)
% 3.20/1.00      | k2_relat_1(X0) = X1 ),
% 3.20/1.00      inference(resolution,[status(thm)],[c_11,c_20]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_10,plain,
% 3.20/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.20/1.00      | v1_relat_1(X0) ),
% 3.20/1.00      inference(cnf_transformation,[],[f64]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_522,plain,
% 3.20/1.00      ( ~ v2_funct_2(X0,X1)
% 3.20/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.20/1.00      | k2_relat_1(X0) = X1 ),
% 3.20/1.00      inference(forward_subsumption_resolution,
% 3.20/1.00                [status(thm)],
% 3.20/1.00                [c_510,c_10]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2313,plain,
% 3.20/1.00      ( k2_relat_1(X0) = X1
% 3.20/1.00      | v2_funct_2(X0,X1) != iProver_top
% 3.20/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_522]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_4235,plain,
% 3.20/1.00      ( k2_relat_1(sK2) = sK1 | v2_funct_2(sK2,sK1) != iProver_top ),
% 3.20/1.00      inference(superposition,[status(thm)],[c_2318,c_2313]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_16,plain,
% 3.20/1.00      ( ~ v3_funct_2(X0,X1,X2)
% 3.20/1.00      | v2_funct_2(X0,X2)
% 3.20/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.20/1.00      | ~ v1_funct_1(X0) ),
% 3.20/1.00      inference(cnf_transformation,[],[f72]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2663,plain,
% 3.20/1.00      ( ~ v3_funct_2(sK2,X0,X1)
% 3.20/1.00      | v2_funct_2(sK2,X1)
% 3.20/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.20/1.00      | ~ v1_funct_1(sK2) ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_16]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2665,plain,
% 3.20/1.00      ( ~ v3_funct_2(sK2,sK1,sK1)
% 3.20/1.00      | v2_funct_2(sK2,sK1)
% 3.20/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.20/1.00      | ~ v1_funct_1(sK2) ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_2663]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2835,plain,
% 3.20/1.00      ( ~ v2_funct_2(sK2,X0)
% 3.20/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.20/1.00      | k2_relat_1(sK2) = X0 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_522]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2837,plain,
% 3.20/1.00      ( ~ v2_funct_2(sK2,sK1)
% 3.20/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.20/1.00      | k2_relat_1(sK2) = sK1 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_2835]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_4857,plain,
% 3.20/1.00      ( k2_relat_1(sK2) = sK1 ),
% 3.20/1.00      inference(global_propositional_subsumption,
% 3.20/1.00                [status(thm)],
% 3.20/1.00                [c_4235,c_38,c_36,c_35,c_2665,c_2837]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_13,plain,
% 3.20/1.00      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.20/1.00      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.20/1.00      inference(cnf_transformation,[],[f67]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2334,plain,
% 3.20/1.00      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.20/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_4383,plain,
% 3.20/1.00      ( k2_relset_1(sK1,sK1,sK2) = k2_relat_1(sK2) ),
% 3.20/1.00      inference(superposition,[status(thm)],[c_2318,c_2334]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_4860,plain,
% 3.20/1.00      ( k2_relset_1(sK1,sK1,sK2) = sK1 ),
% 3.20/1.00      inference(demodulation,[status(thm)],[c_4857,c_4383]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_28,plain,
% 3.20/1.00      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.20/1.00      | ~ v1_funct_2(X3,X1,X0)
% 3.20/1.00      | ~ v1_funct_2(X2,X0,X1)
% 3.20/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.20/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.20/1.00      | ~ v2_funct_1(X2)
% 3.20/1.00      | ~ v1_funct_1(X2)
% 3.20/1.00      | ~ v1_funct_1(X3)
% 3.20/1.00      | k2_relset_1(X0,X1,X2) != X1
% 3.20/1.00      | k2_funct_1(X2) = X3
% 3.20/1.00      | k1_xboole_0 = X1
% 3.20/1.00      | k1_xboole_0 = X0 ),
% 3.20/1.00      inference(cnf_transformation,[],[f82]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_27,plain,
% 3.20/1.00      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.20/1.00      | ~ v1_funct_2(X3,X1,X0)
% 3.20/1.00      | ~ v1_funct_2(X2,X0,X1)
% 3.20/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.20/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.20/1.00      | v2_funct_1(X2)
% 3.20/1.00      | ~ v1_funct_1(X2)
% 3.20/1.00      | ~ v1_funct_1(X3) ),
% 3.20/1.00      inference(cnf_transformation,[],[f80]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_205,plain,
% 3.20/1.00      ( ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.20/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.20/1.00      | ~ v1_funct_2(X2,X0,X1)
% 3.20/1.00      | ~ v1_funct_2(X3,X1,X0)
% 3.20/1.00      | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.20/1.00      | ~ v1_funct_1(X2)
% 3.20/1.00      | ~ v1_funct_1(X3)
% 3.20/1.00      | k2_relset_1(X0,X1,X2) != X1
% 3.20/1.00      | k2_funct_1(X2) = X3
% 3.20/1.00      | k1_xboole_0 = X1
% 3.20/1.00      | k1_xboole_0 = X0 ),
% 3.20/1.00      inference(global_propositional_subsumption,
% 3.20/1.00                [status(thm)],
% 3.20/1.00                [c_28,c_27]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_206,plain,
% 3.20/1.00      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.20/1.00      | ~ v1_funct_2(X3,X1,X0)
% 3.20/1.00      | ~ v1_funct_2(X2,X0,X1)
% 3.20/1.00      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.20/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.20/1.00      | ~ v1_funct_1(X3)
% 3.20/1.00      | ~ v1_funct_1(X2)
% 3.20/1.00      | k2_relset_1(X0,X1,X2) != X1
% 3.20/1.00      | k2_funct_1(X2) = X3
% 3.20/1.00      | k1_xboole_0 = X1
% 3.20/1.00      | k1_xboole_0 = X0 ),
% 3.20/1.00      inference(renaming,[status(thm)],[c_205]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2314,plain,
% 3.20/1.00      ( k2_relset_1(X0,X1,X2) != X1
% 3.20/1.00      | k2_funct_1(X2) = X3
% 3.20/1.00      | k1_xboole_0 = X1
% 3.20/1.00      | k1_xboole_0 = X0
% 3.20/1.00      | r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) != iProver_top
% 3.20/1.00      | v1_funct_2(X3,X1,X0) != iProver_top
% 3.20/1.00      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.20/1.00      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.20/1.00      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) != iProver_top
% 3.20/1.00      | v1_funct_1(X2) != iProver_top
% 3.20/1.00      | v1_funct_1(X3) != iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_206]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_5986,plain,
% 3.20/1.00      ( k2_funct_1(sK2) = X0
% 3.20/1.00      | sK1 = k1_xboole_0
% 3.20/1.00      | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,X0),k6_partfun1(sK1)) != iProver_top
% 3.20/1.00      | v1_funct_2(X0,sK1,sK1) != iProver_top
% 3.20/1.00      | v1_funct_2(sK2,sK1,sK1) != iProver_top
% 3.20/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 3.20/1.00      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 3.20/1.00      | v1_funct_1(X0) != iProver_top
% 3.20/1.00      | v1_funct_1(sK2) != iProver_top ),
% 3.20/1.00      inference(superposition,[status(thm)],[c_4860,c_2314]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_39,plain,
% 3.20/1.00      ( v1_funct_1(sK2) = iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_40,plain,
% 3.20/1.00      ( v1_funct_2(sK2,sK1,sK1) = iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_42,plain,
% 3.20/1.00      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_6739,plain,
% 3.20/1.00      ( v1_funct_1(X0) != iProver_top
% 3.20/1.00      | v1_funct_2(X0,sK1,sK1) != iProver_top
% 3.20/1.00      | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,X0),k6_partfun1(sK1)) != iProver_top
% 3.20/1.00      | sK1 = k1_xboole_0
% 3.20/1.00      | k2_funct_1(sK2) = X0
% 3.20/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top ),
% 3.20/1.00      inference(global_propositional_subsumption,
% 3.20/1.00                [status(thm)],
% 3.20/1.00                [c_5986,c_39,c_40,c_42]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_6740,plain,
% 3.20/1.00      ( k2_funct_1(sK2) = X0
% 3.20/1.00      | sK1 = k1_xboole_0
% 3.20/1.00      | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,X0),k6_partfun1(sK1)) != iProver_top
% 3.20/1.00      | v1_funct_2(X0,sK1,sK1) != iProver_top
% 3.20/1.00      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 3.20/1.00      | v1_funct_1(X0) != iProver_top ),
% 3.20/1.00      inference(renaming,[status(thm)],[c_6739]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_6751,plain,
% 3.20/1.00      ( k2_funct_1(sK2) = sK3
% 3.20/1.00      | sK1 = k1_xboole_0
% 3.20/1.00      | v1_funct_2(sK3,sK1,sK1) != iProver_top
% 3.20/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 3.20/1.00      | v1_funct_1(sK3) != iProver_top ),
% 3.20/1.00      inference(superposition,[status(thm)],[c_2323,c_6740]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_34,negated_conjecture,
% 3.20/1.00      ( v1_funct_1(sK3) ),
% 3.20/1.00      inference(cnf_transformation,[],[f87]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_33,negated_conjecture,
% 3.20/1.00      ( v1_funct_2(sK3,sK1,sK1) ),
% 3.20/1.00      inference(cnf_transformation,[],[f88]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_31,negated_conjecture,
% 3.20/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
% 3.20/1.00      inference(cnf_transformation,[],[f90]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_6752,plain,
% 3.20/1.00      ( ~ v1_funct_2(sK3,sK1,sK1)
% 3.20/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.20/1.00      | ~ v1_funct_1(sK3)
% 3.20/1.00      | k2_funct_1(sK2) = sK3
% 3.20/1.00      | sK1 = k1_xboole_0 ),
% 3.20/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_6751]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_6754,plain,
% 3.20/1.00      ( sK1 = k1_xboole_0 | k2_funct_1(sK2) = sK3 ),
% 3.20/1.00      inference(global_propositional_subsumption,
% 3.20/1.00                [status(thm)],
% 3.20/1.00                [c_6751,c_43,c_44,c_46]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_6755,plain,
% 3.20/1.00      ( k2_funct_1(sK2) = sK3 | sK1 = k1_xboole_0 ),
% 3.20/1.00      inference(renaming,[status(thm)],[c_6754]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2322,plain,
% 3.20/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2335,plain,
% 3.20/1.00      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.20/1.00      | v1_xboole_0(X2) != iProver_top
% 3.20/1.00      | v1_xboole_0(X0) = iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_6087,plain,
% 3.20/1.00      ( v1_xboole_0(sK3) = iProver_top
% 3.20/1.00      | v1_xboole_0(sK1) != iProver_top ),
% 3.20/1.00      inference(superposition,[status(thm)],[c_2322,c_2335]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_6112,plain,
% 3.20/1.00      ( v1_xboole_0(sK3) | ~ v1_xboole_0(sK1) ),
% 3.20/1.00      inference(predicate_to_equality_rev,[status(thm)],[c_6087]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_4280,plain,
% 3.20/1.00      ( ~ r2_relset_1(X0,X1,X2,X3)
% 3.20/1.00      | r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2))
% 3.20/1.00      | k2_funct_2(sK1,sK2) != X3
% 3.20/1.00      | sK3 != X2
% 3.20/1.00      | sK1 != X1
% 3.20/1.00      | sK1 != X0 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_1534]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_4282,plain,
% 3.20/1.00      ( r2_relset_1(sK1,sK1,sK3,k2_funct_2(sK1,sK2))
% 3.20/1.00      | ~ r2_relset_1(sK1,sK1,sK1,sK1)
% 3.20/1.00      | k2_funct_2(sK1,sK2) != sK1
% 3.20/1.00      | sK3 != sK1
% 3.20/1.00      | sK1 != sK1 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_4280]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_3196,plain,
% 3.20/1.00      ( ~ v1_xboole_0(X0) | ~ v1_xboole_0(sK3) | sK3 = X0 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_4]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_3198,plain,
% 3.20/1.00      ( ~ v1_xboole_0(sK3) | ~ v1_xboole_0(sK1) | sK3 = sK1 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_3196]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_1527,plain,( X0 = X0 ),theory(equality) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2845,plain,
% 3.20/1.00      ( sK3 = sK3 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_1527]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2795,plain,
% 3.20/1.00      ( ~ v1_xboole_0(X0) | ~ v1_xboole_0(sK3) | X0 = sK3 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_4]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2797,plain,
% 3.20/1.00      ( ~ v1_xboole_0(sK3) | ~ v1_xboole_0(sK1) | sK1 = sK3 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_2795]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2792,plain,
% 3.20/1.00      ( ~ r2_relset_1(sK1,sK1,sK3,sK3)
% 3.20/1.00      | r2_relset_1(sK1,sK1,sK1,sK1)
% 3.20/1.00      | sK1 != sK3
% 3.20/1.00      | sK1 != sK1 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_2790]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_1530,plain,
% 3.20/1.00      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 3.20/1.00      theory(equality) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2781,plain,
% 3.20/1.00      ( v1_xboole_0(X0)
% 3.20/1.00      | ~ v1_xboole_0(k1_xboole_0)
% 3.20/1.00      | X0 != k1_xboole_0 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_1530]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2783,plain,
% 3.20/1.00      ( v1_xboole_0(sK1)
% 3.20/1.00      | ~ v1_xboole_0(k1_xboole_0)
% 3.20/1.00      | sK1 != k1_xboole_0 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_2781]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_21,plain,
% 3.20/1.00      ( ~ v1_funct_2(X0,X1,X1)
% 3.20/1.00      | ~ v3_funct_2(X0,X1,X1)
% 3.20/1.00      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.20/1.00      | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.20/1.00      | ~ v1_funct_1(X0) ),
% 3.20/1.00      inference(cnf_transformation,[],[f78]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2722,plain,
% 3.20/1.00      ( ~ v1_funct_2(sK2,X0,X0)
% 3.20/1.00      | ~ v3_funct_2(sK2,X0,X0)
% 3.20/1.00      | m1_subset_1(k2_funct_2(X0,sK2),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
% 3.20/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
% 3.20/1.00      | ~ v1_funct_1(sK2) ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_21]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2724,plain,
% 3.20/1.00      ( ~ v1_funct_2(sK2,sK1,sK1)
% 3.20/1.00      | ~ v3_funct_2(sK2,sK1,sK1)
% 3.20/1.00      | m1_subset_1(k2_funct_2(sK1,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.20/1.00      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.20/1.00      | ~ v1_funct_1(sK2) ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_2722]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_14,plain,
% 3.20/1.00      ( r2_relset_1(X0,X1,X2,X2)
% 3.20/1.00      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 3.20/1.00      inference(cnf_transformation,[],[f95]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2640,plain,
% 3.20/1.00      ( r2_relset_1(sK1,sK1,sK3,sK3)
% 3.20/1.00      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_14]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_2641,plain,
% 3.20/1.00      ( r2_relset_1(sK1,sK1,sK3,sK3) = iProver_top
% 3.20/1.00      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_2640]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_1556,plain,
% 3.20/1.00      ( sK1 = sK1 ),
% 3.20/1.00      inference(instantiation,[status(thm)],[c_1527]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_3,plain,
% 3.20/1.00      ( v1_xboole_0(k1_xboole_0) ),
% 3.20/1.00      inference(cnf_transformation,[],[f57]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(c_46,plain,
% 3.20/1.00      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 3.20/1.00      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.20/1.00  
% 3.20/1.00  cnf(contradiction,plain,
% 3.20/1.00      ( $false ),
% 3.20/1.00      inference(minisat,
% 3.20/1.00                [status(thm)],
% 3.20/1.00                [c_9611,c_9492,c_8270,c_7757,c_6755,c_6112,c_4282,c_3198,
% 3.20/1.00                 c_2845,c_2797,c_2792,c_2783,c_2724,c_2641,c_2640,c_1556,
% 3.20/1.00                 c_3,c_29,c_46,c_31,c_35,c_36,c_37,c_38]) ).
% 3.20/1.00  
% 3.20/1.00  
% 3.20/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.20/1.00  
% 3.20/1.00  ------                               Statistics
% 3.20/1.00  
% 3.20/1.00  ------ General
% 3.20/1.00  
% 3.20/1.00  abstr_ref_over_cycles:                  0
% 3.20/1.00  abstr_ref_under_cycles:                 0
% 3.20/1.00  gc_basic_clause_elim:                   0
% 3.20/1.00  forced_gc_time:                         0
% 3.20/1.00  parsing_time:                           0.009
% 3.20/1.00  unif_index_cands_time:                  0.
% 3.20/1.00  unif_index_add_time:                    0.
% 3.20/1.00  orderings_time:                         0.
% 3.20/1.00  out_proof_time:                         0.015
% 3.20/1.00  total_time:                             0.284
% 3.20/1.00  num_of_symbols:                         56
% 3.20/1.00  num_of_terms:                           11874
% 3.20/1.00  
% 3.20/1.00  ------ Preprocessing
% 3.20/1.00  
% 3.20/1.00  num_of_splits:                          0
% 3.20/1.00  num_of_split_atoms:                     0
% 3.20/1.00  num_of_reused_defs:                     0
% 3.20/1.00  num_eq_ax_congr_red:                    36
% 3.20/1.00  num_of_sem_filtered_clauses:            3
% 3.20/1.00  num_of_subtypes:                        0
% 3.20/1.00  monotx_restored_types:                  0
% 3.20/1.00  sat_num_of_epr_types:                   0
% 3.20/1.00  sat_num_of_non_cyclic_types:            0
% 3.20/1.00  sat_guarded_non_collapsed_types:        0
% 3.20/1.00  num_pure_diseq_elim:                    0
% 3.20/1.00  simp_replaced_by:                       0
% 3.20/1.00  res_preprocessed:                       171
% 3.20/1.00  prep_upred:                             0
% 3.20/1.00  prep_unflattend:                        64
% 3.20/1.00  smt_new_axioms:                         0
% 3.20/1.00  pred_elim_cands:                        9
% 3.20/1.00  pred_elim:                              2
% 3.20/1.00  pred_elim_cl:                           2
% 3.20/1.00  pred_elim_cycles:                       9
% 3.20/1.00  merged_defs:                            8
% 3.20/1.00  merged_defs_ncl:                        0
% 3.20/1.00  bin_hyper_res:                          8
% 3.20/1.00  prep_cycles:                            4
% 3.20/1.00  pred_elim_time:                         0.011
% 3.20/1.00  splitting_time:                         0.
% 3.20/1.00  sem_filter_time:                        0.
% 3.20/1.00  monotx_time:                            0.
% 3.20/1.00  subtype_inf_time:                       0.
% 3.20/1.00  
% 3.20/1.00  ------ Problem properties
% 3.20/1.00  
% 3.20/1.00  clauses:                                34
% 3.20/1.00  conjectures:                            10
% 3.20/1.00  epr:                                    9
% 3.20/1.00  horn:                                   31
% 3.20/1.00  ground:                                 11
% 3.20/1.00  unary:                                  13
% 3.20/1.00  binary:                                 7
% 3.20/1.00  lits:                                   94
% 3.20/1.00  lits_eq:                                14
% 3.20/1.00  fd_pure:                                0
% 3.20/1.00  fd_pseudo:                              0
% 3.20/1.00  fd_cond:                                1
% 3.20/1.00  fd_pseudo_cond:                         4
% 3.20/1.00  ac_symbols:                             0
% 3.20/1.00  
% 3.20/1.00  ------ Propositional Solver
% 3.20/1.00  
% 3.20/1.00  prop_solver_calls:                      27
% 3.20/1.00  prop_fast_solver_calls:                 1407
% 3.20/1.00  smt_solver_calls:                       0
% 3.20/1.00  smt_fast_solver_calls:                  0
% 3.20/1.00  prop_num_of_clauses:                    3183
% 3.20/1.00  prop_preprocess_simplified:             10242
% 3.20/1.00  prop_fo_subsumed:                       26
% 3.20/1.00  prop_solver_time:                       0.
% 3.20/1.00  smt_solver_time:                        0.
% 3.20/1.00  smt_fast_solver_time:                   0.
% 3.20/1.00  prop_fast_solver_time:                  0.
% 3.20/1.00  prop_unsat_core_time:                   0.
% 3.20/1.00  
% 3.20/1.00  ------ QBF
% 3.20/1.00  
% 3.20/1.00  qbf_q_res:                              0
% 3.20/1.00  qbf_num_tautologies:                    0
% 3.20/1.00  qbf_prep_cycles:                        0
% 3.20/1.00  
% 3.20/1.00  ------ BMC1
% 3.20/1.00  
% 3.20/1.00  bmc1_current_bound:                     -1
% 3.20/1.00  bmc1_last_solved_bound:                 -1
% 3.20/1.00  bmc1_unsat_core_size:                   -1
% 3.20/1.00  bmc1_unsat_core_parents_size:           -1
% 3.20/1.00  bmc1_merge_next_fun:                    0
% 3.20/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.20/1.00  
% 3.20/1.00  ------ Instantiation
% 3.20/1.00  
% 3.20/1.00  inst_num_of_clauses:                    853
% 3.20/1.00  inst_num_in_passive:                    511
% 3.20/1.00  inst_num_in_active:                     324
% 3.20/1.00  inst_num_in_unprocessed:                18
% 3.20/1.00  inst_num_of_loops:                      380
% 3.20/1.00  inst_num_of_learning_restarts:          0
% 3.20/1.00  inst_num_moves_active_passive:          55
% 3.20/1.00  inst_lit_activity:                      0
% 3.20/1.00  inst_lit_activity_moves:                0
% 3.20/1.00  inst_num_tautologies:                   0
% 3.20/1.00  inst_num_prop_implied:                  0
% 3.20/1.00  inst_num_existing_simplified:           0
% 3.20/1.00  inst_num_eq_res_simplified:             0
% 3.20/1.00  inst_num_child_elim:                    0
% 3.20/1.00  inst_num_of_dismatching_blockings:      147
% 3.20/1.00  inst_num_of_non_proper_insts:           745
% 3.20/1.00  inst_num_of_duplicates:                 0
% 3.20/1.00  inst_inst_num_from_inst_to_res:         0
% 3.20/1.00  inst_dismatching_checking_time:         0.
% 3.20/1.00  
% 3.20/1.00  ------ Resolution
% 3.20/1.00  
% 3.20/1.00  res_num_of_clauses:                     0
% 3.20/1.00  res_num_in_passive:                     0
% 3.20/1.00  res_num_in_active:                      0
% 3.20/1.00  res_num_of_loops:                       175
% 3.20/1.00  res_forward_subset_subsumed:            32
% 3.20/1.00  res_backward_subset_subsumed:           0
% 3.20/1.00  res_forward_subsumed:                   0
% 3.20/1.00  res_backward_subsumed:                  0
% 3.20/1.00  res_forward_subsumption_resolution:     2
% 3.20/1.00  res_backward_subsumption_resolution:    0
% 3.20/1.00  res_clause_to_clause_subsumption:       208
% 3.20/1.00  res_orphan_elimination:                 0
% 3.20/1.00  res_tautology_del:                      63
% 3.20/1.00  res_num_eq_res_simplified:              0
% 3.20/1.00  res_num_sel_changes:                    0
% 3.20/1.00  res_moves_from_active_to_pass:          0
% 3.20/1.00  
% 3.20/1.00  ------ Superposition
% 3.20/1.00  
% 3.20/1.00  sup_time_total:                         0.
% 3.20/1.00  sup_time_generating:                    0.
% 3.20/1.00  sup_time_sim_full:                      0.
% 3.20/1.00  sup_time_sim_immed:                     0.
% 3.20/1.00  
% 3.20/1.00  sup_num_of_clauses:                     99
% 3.20/1.00  sup_num_in_active:                      69
% 3.20/1.00  sup_num_in_passive:                     30
% 3.20/1.00  sup_num_of_loops:                       74
% 3.20/1.00  sup_fw_superposition:                   74
% 3.20/1.00  sup_bw_superposition:                   6
% 3.20/1.00  sup_immediate_simplified:               9
% 3.20/1.00  sup_given_eliminated:                   0
% 3.20/1.00  comparisons_done:                       0
% 3.20/1.00  comparisons_avoided:                    3
% 3.20/1.00  
% 3.20/1.00  ------ Simplifications
% 3.20/1.00  
% 3.20/1.00  
% 3.20/1.00  sim_fw_subset_subsumed:                 3
% 3.20/1.00  sim_bw_subset_subsumed:                 2
% 3.20/1.00  sim_fw_subsumed:                        2
% 3.20/1.00  sim_bw_subsumed:                        0
% 3.20/1.00  sim_fw_subsumption_res:                 0
% 3.20/1.00  sim_bw_subsumption_res:                 0
% 3.20/1.00  sim_tautology_del:                      1
% 3.20/1.00  sim_eq_tautology_del:                   6
% 3.20/1.00  sim_eq_res_simp:                        0
% 3.20/1.00  sim_fw_demodulated:                     2
% 3.20/1.00  sim_bw_demodulated:                     5
% 3.20/1.00  sim_light_normalised:                   2
% 3.20/1.00  sim_joinable_taut:                      0
% 3.20/1.00  sim_joinable_simp:                      0
% 3.20/1.00  sim_ac_normalised:                      0
% 3.20/1.00  sim_smt_subsumption:                    0
% 3.20/1.00  
%------------------------------------------------------------------------------
