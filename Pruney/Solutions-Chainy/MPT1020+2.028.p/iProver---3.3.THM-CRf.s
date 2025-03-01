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
% DateTime   : Thu Dec  3 12:07:10 EST 2020

% Result     : Theorem 3.76s
% Output     : CNFRefutation 3.76s
% Verified   : 
% Statistics : ERROR: Analysing output (Could not find formula named c_42)

% Comments   : 
%------------------------------------------------------------------------------
fof(f20,conjecture,(
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

fof(f21,negated_conjecture,(
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
    inference(negated_conjecture,[],[f20])).

fof(f47,plain,(
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
    inference(ennf_transformation,[],[f21])).

fof(f48,plain,(
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
    inference(flattening,[],[f47])).

fof(f52,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1))
          & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0))
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v3_funct_2(X2,X0,X0)
          & v1_funct_2(X2,X0,X0)
          & v1_funct_1(X2) )
     => ( ~ r2_relset_1(X0,X0,sK2,k2_funct_2(X0,X1))
        & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,sK2),k6_partfun1(X0))
        & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(sK2,X0,X0)
        & v1_funct_2(sK2,X0,X0)
        & v1_funct_1(sK2) ) ) ),
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
          ( ~ r2_relset_1(sK0,sK0,X2,k2_funct_2(sK0,sK1))
          & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,X2),k6_partfun1(sK0))
          & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
          & v3_funct_2(X2,sK0,sK0)
          & v1_funct_2(X2,sK0,sK0)
          & v1_funct_1(X2) )
      & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
      & v3_funct_2(sK1,sK0,sK0)
      & v1_funct_2(sK1,sK0,sK0)
      & v1_funct_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f53,plain,
    ( ~ r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1))
    & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0))
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    & v3_funct_2(sK2,sK0,sK0)
    & v1_funct_2(sK2,sK0,sK0)
    & v1_funct_1(sK2)
    & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    & v3_funct_2(sK1,sK0,sK0)
    & v1_funct_2(sK1,sK0,sK0)
    & v1_funct_1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f48,f52,f51])).

fof(f90,plain,(
    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f53])).

fof(f85,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(cnf_transformation,[],[f53])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f9])).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f37])).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( ( v2_funct_2(X1,X0)
          | k2_relat_1(X1) != X0 )
        & ( k2_relat_1(X1) = X0
          | ~ v2_funct_2(X1,X0) ) )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f38])).

fof(f72,plain,(
    ! [X0,X1] :
      ( k2_relat_1(X1) = X0
      | ~ v2_funct_2(X1,X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f82,plain,(
    v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f53])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( v3_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( v2_funct_2(X2,X1)
          & v2_funct_1(X2)
          & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f35])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( v2_funct_2(X2,X1)
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f84,plain,(
    v3_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f53])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f19,axiom,(
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

fof(f45,plain,(
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
    inference(ennf_transformation,[],[f19])).

fof(f46,plain,(
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
    inference(flattening,[],[f45])).

fof(f81,plain,(
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
    inference(cnf_transformation,[],[f46])).

fof(f18,axiom,(
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

fof(f43,plain,(
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
    inference(ennf_transformation,[],[f18])).

fof(f44,plain,(
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
    inference(flattening,[],[f43])).

fof(f79,plain,(
    ! [X2,X0,X3,X1] :
      ( v2_funct_1(X2)
      | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ v1_funct_2(X3,X1,X0)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f83,plain,(
    v1_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f53])).

fof(f86,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f53])).

fof(f87,plain,(
    v1_funct_2(sK2,sK0,sK0) ),
    inference(cnf_transformation,[],[f53])).

fof(f89,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(cnf_transformation,[],[f53])).

fof(f91,plain,(
    ~ r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1)) ),
    inference(cnf_transformation,[],[f53])).

fof(f16,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => k2_funct_1(X1) = k2_funct_2(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X1) = k2_funct_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f42,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X1) = k2_funct_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(flattening,[],[f41])).

fof(f77,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X1) = k2_funct_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f42])).

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

fof(f49,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f34])).

fof(f68,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f97,plain,(
    ! [X0,X3,X1] :
      ( r2_relset_1(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(equality_resolution,[],[f68])).

fof(f4,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k2_relat_1(X0) = k1_xboole_0
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k2_relat_1(X0) != k1_xboole_0
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f27,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k2_relat_1(X0) != k1_xboole_0
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f26])).

fof(f59,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k2_relat_1(X0) != k1_xboole_0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f88,plain,(
    v3_funct_2(sK2,sK0,sK0) ),
    inference(cnf_transformation,[],[f53])).

fof(f5,axiom,(
    k6_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f60,plain,(
    k6_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f5])).

fof(f17,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f78,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f17])).

fof(f93,plain,(
    k1_xboole_0 = k6_partfun1(k1_xboole_0) ),
    inference(definition_unfolding,[],[f60,f78])).

fof(f6,axiom,(
    ! [X0] :
      ( v2_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f95,plain,(
    ! [X0] : v1_relat_1(k6_partfun1(X0)) ),
    inference(definition_unfolding,[],[f61,f78])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k8_relat_1(k2_relat_1(X0),X0) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( k8_relat_1(k2_relat_1(X0),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f55,plain,(
    ! [X0] :
      ( k8_relat_1(k2_relat_1(X0),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f3,axiom,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0
    & k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f3])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f54,plain,(
    ! [X0,X1] :
      ( k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f92,plain,(
    ! [X0,X1] :
      ( k8_relat_1(X0,X1) = k5_relat_1(X1,k6_partfun1(X0))
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f54,f78])).

fof(f7,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,X1)
              & k2_relat_1(X0) = k1_relat_1(X1)
              & v2_funct_1(X0) )
           => k2_funct_1(X0) = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1)
          | k2_relat_1(X0) != k1_relat_1(X1)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f29,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1)
          | k2_relat_1(X0) != k1_relat_1(X1)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f28])).

fof(f63,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X0) = X1
      | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1)
      | k2_relat_1(X0) != k1_relat_1(X1)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f96,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X0) = X1
      | k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0))
      | k2_relat_1(X0) != k1_relat_1(X1)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f63,f78])).

fof(f56,plain,(
    k1_xboole_0 = k1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f3])).

fof(f62,plain,(
    ! [X0] : v2_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f6])).

fof(f94,plain,(
    ! [X0] : v2_funct_1(k6_partfun1(X0)) ),
    inference(definition_unfolding,[],[f62,f78])).

fof(f15,axiom,(
    ! [X0] :
      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_partfun1(k6_partfun1(X0),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(pure_predicate_removal,[],[f15])).

fof(f76,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f22])).

cnf(c_28,negated_conjecture,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_1792,negated_conjecture,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0)) ),
    inference(subtyping,[status(esa)],[c_28])).

cnf(c_2400,plain,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1792])).

cnf(c_33,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_1788,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(subtyping,[status(esa)],[c_33])).

cnf(c_2404,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1788])).

cnf(c_11,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_19,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_383,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_11,c_19])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_395,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | k2_relat_1(X0) = X1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_383,c_10])).

cnf(c_1784,plain,
    ( ~ v2_funct_2(X0_52,X1_52)
    | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X2_52,X1_52)))
    | k2_relat_1(X0_52) = X1_52 ),
    inference(subtyping,[status(esa)],[c_395])).

cnf(c_2408,plain,
    ( k2_relat_1(X0_52) = X1_52
    | v2_funct_2(X0_52,X1_52) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X2_52,X1_52))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1784])).

cnf(c_6320,plain,
    ( k2_relat_1(sK1) = sK0
    | v2_funct_2(sK1,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2404,c_2408])).

cnf(c_36,negated_conjecture,
    ( v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_37,plain,
    ( v1_funct_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_40,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_15,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | v2_funct_2(X0,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_34,negated_conjecture,
    ( v3_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_529,plain,
    ( v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0)
    | sK1 != X0
    | sK0 != X1
    | sK0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_34])).

cnf(c_530,plain,
    ( v2_funct_2(sK1,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_funct_1(sK1) ),
    inference(unflattening,[status(thm)],[c_529])).

cnf(c_531,plain,
    ( v2_funct_2(sK1,sK0) = iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_530])).

cnf(c_6407,plain,
    ( k2_relat_1(sK1) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6320,c_37,c_40,c_531])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1801,plain,
    ( ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X1_52,X2_52)))
    | k2_relset_1(X1_52,X2_52,X0_52) = k2_relat_1(X0_52) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_2391,plain,
    ( k2_relset_1(X0_52,X1_52,X2_52) = k2_relat_1(X2_52)
    | m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1801])).

cnf(c_4236,plain,
    ( k2_relset_1(sK0,sK0,sK1) = k2_relat_1(sK1) ),
    inference(superposition,[status(thm)],[c_2404,c_2391])).

cnf(c_6413,plain,
    ( k2_relset_1(sK0,sK0,sK1) = sK0 ),
    inference(demodulation,[status(thm)],[c_6407,c_4236])).

cnf(c_26,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X3,X1,X0)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | ~ v2_funct_1(X2)
    | k2_relset_1(X0,X1,X2) != X1
    | k2_funct_1(X2) = X3
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_25,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X3,X1,X0)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | v2_funct_1(X2) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_196,plain,
    ( ~ v1_funct_1(X3)
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_2(X2,X0,X1)
    | ~ v1_funct_2(X3,X1,X0)
    | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | k2_relset_1(X0,X1,X2) != X1
    | k2_funct_1(X2) = X3
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_26,c_25])).

cnf(c_197,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X3,X1,X0)
    | ~ v1_funct_2(X2,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X0,X1,X2) != X1
    | k2_funct_1(X2) = X3
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(renaming,[status(thm)],[c_196])).

cnf(c_1785,plain,
    ( ~ r2_relset_1(X0_52,X0_52,k1_partfun1(X0_52,X1_52,X1_52,X0_52,X2_52,X3_52),k6_partfun1(X0_52))
    | ~ v1_funct_2(X3_52,X1_52,X0_52)
    | ~ v1_funct_2(X2_52,X0_52,X1_52)
    | ~ m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52)))
    | ~ m1_subset_1(X3_52,k1_zfmisc_1(k2_zfmisc_1(X1_52,X0_52)))
    | ~ v1_funct_1(X2_52)
    | ~ v1_funct_1(X3_52)
    | k2_relset_1(X0_52,X1_52,X2_52) != X1_52
    | k2_funct_1(X2_52) = X3_52
    | k1_xboole_0 = X0_52
    | k1_xboole_0 = X1_52 ),
    inference(subtyping,[status(esa)],[c_197])).

cnf(c_2407,plain,
    ( k2_relset_1(X0_52,X1_52,X2_52) != X1_52
    | k2_funct_1(X2_52) = X3_52
    | k1_xboole_0 = X0_52
    | k1_xboole_0 = X1_52
    | r2_relset_1(X0_52,X0_52,k1_partfun1(X0_52,X1_52,X1_52,X0_52,X2_52,X3_52),k6_partfun1(X0_52)) != iProver_top
    | v1_funct_2(X3_52,X1_52,X0_52) != iProver_top
    | v1_funct_2(X2_52,X0_52,X1_52) != iProver_top
    | m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top
    | m1_subset_1(X3_52,k1_zfmisc_1(k2_zfmisc_1(X1_52,X0_52))) != iProver_top
    | v1_funct_1(X2_52) != iProver_top
    | v1_funct_1(X3_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1785])).

cnf(c_6735,plain,
    ( k2_funct_1(sK1) = X0_52
    | sK0 = k1_xboole_0
    | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,X0_52),k6_partfun1(sK0)) != iProver_top
    | v1_funct_2(X0_52,sK0,sK0) != iProver_top
    | v1_funct_2(sK1,sK0,sK0) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_6413,c_2407])).

cnf(c_35,negated_conjecture,
    ( v1_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_38,plain,
    ( v1_funct_2(sK1,sK0,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_7326,plain,
    ( v1_funct_1(X0_52) != iProver_top
    | v1_funct_2(X0_52,sK0,sK0) != iProver_top
    | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,X0_52),k6_partfun1(sK0)) != iProver_top
    | sK0 = k1_xboole_0
    | k2_funct_1(sK1) = X0_52
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6735,c_37,c_38,c_40])).

cnf(c_7327,plain,
    ( k2_funct_1(sK1) = X0_52
    | sK0 = k1_xboole_0
    | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,X0_52),k6_partfun1(sK0)) != iProver_top
    | v1_funct_2(X0_52,sK0,sK0) != iProver_top
    | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_funct_1(X0_52) != iProver_top ),
    inference(renaming,[status(thm)],[c_7326])).

cnf(c_7332,plain,
    ( k2_funct_1(sK1) = sK2
    | sK0 = k1_xboole_0
    | v1_funct_2(sK2,sK0,sK0) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2400,c_7327])).

cnf(c_32,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_31,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK0) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_29,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_7333,plain,
    ( ~ v1_funct_2(sK2,sK0,sK0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_funct_1(sK2)
    | k2_funct_1(sK1) = sK2
    | sK0 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_7332])).

cnf(c_7482,plain,
    ( sK0 = k1_xboole_0
    | k2_funct_1(sK1) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_7332,c_41,c_42,c_44])).

cnf(c_7483,plain,
    ( k2_funct_1(sK1) = sK2
    | sK0 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_7482])).

cnf(c_27,negated_conjecture,
    ( ~ r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1)) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1793,negated_conjecture,
    ( ~ r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1)) ),
    inference(subtyping,[status(esa)],[c_27])).

cnf(c_2399,plain,
    ( r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1793])).

cnf(c_23,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | k2_funct_2(X1,X0) = k2_funct_1(X0) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_548,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | k2_funct_2(X1,X0) = k2_funct_1(X0)
    | sK1 != X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_23,c_34])).

cnf(c_549,plain,
    ( ~ v1_funct_2(sK1,sK0,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_funct_1(sK1)
    | k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
    inference(unflattening,[status(thm)],[c_548])).

cnf(c_551,plain,
    ( k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_549,c_36,c_35,c_33])).

cnf(c_1777,plain,
    ( k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
    inference(subtyping,[status(esa)],[c_551])).

cnf(c_2414,plain,
    ( r2_relset_1(sK0,sK0,sK2,k2_funct_1(sK1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2399,c_1777])).

cnf(c_7484,plain,
    ( sK0 = k1_xboole_0
    | r2_relset_1(sK0,sK0,sK2,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_7483,c_2414])).

cnf(c_44,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_13,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_1800,plain,
    ( r2_relset_1(X0_52,X1_52,X2_52,X2_52)
    | ~ m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_2479,plain,
    ( r2_relset_1(sK0,sK0,sK2,sK2)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(instantiation,[status(thm)],[c_1800])).

cnf(c_2480,plain,
    ( r2_relset_1(sK0,sK0,sK2,sK2) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2479])).

cnf(c_7487,plain,
    ( sK0 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_7484,c_44,c_2480])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_1808,plain,
    ( ~ v1_relat_1(X0_52)
    | k2_relat_1(X0_52) != k1_xboole_0
    | k1_xboole_0 = X0_52 ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_2385,plain,
    ( k2_relat_1(X0_52) != k1_xboole_0
    | k1_xboole_0 = X0_52
    | v1_relat_1(X0_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1808])).

cnf(c_6420,plain,
    ( sK1 = k1_xboole_0
    | sK0 != k1_xboole_0
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_6407,c_2385])).

cnf(c_1802,plain,
    ( ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X1_52,X2_52)))
    | v1_relat_1(X0_52) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_3602,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52)))
    | v1_relat_1(sK1) ),
    inference(instantiation,[status(thm)],[c_1802])).

cnf(c_3603,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top
    | v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3602])).

cnf(c_3605,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_relat_1(sK1) = iProver_top ),
    inference(instantiation,[status(thm)],[c_3603])).

cnf(c_6608,plain,
    ( sK0 != k1_xboole_0
    | sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6420,c_40,c_3605])).

cnf(c_6609,plain,
    ( sK1 = k1_xboole_0
    | sK0 != k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_6608])).

cnf(c_7501,plain,
    ( sK1 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_7487,c_6609])).

cnf(c_7544,plain,
    ( sK1 = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_7501])).

cnf(c_1791,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(subtyping,[status(esa)],[c_29])).

cnf(c_2401,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1791])).

cnf(c_6319,plain,
    ( k2_relat_1(sK2) = sK0
    | v2_funct_2(sK2,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_2401,c_2408])).

cnf(c_41,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_30,negated_conjecture,
    ( v3_funct_2(sK2,sK0,sK0) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_507,plain,
    ( v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0)
    | sK2 != X0
    | sK0 != X1
    | sK0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_30])).

cnf(c_508,plain,
    ( v2_funct_2(sK2,sK0)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_funct_1(sK2) ),
    inference(unflattening,[status(thm)],[c_507])).

cnf(c_509,plain,
    ( v2_funct_2(sK2,sK0) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_508])).

cnf(c_6333,plain,
    ( k2_relat_1(sK2) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6319,c_41,c_44,c_509])).

cnf(c_6346,plain,
    ( sK2 = k1_xboole_0
    | sK0 != k1_xboole_0
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_6333,c_2385])).

cnf(c_3505,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_1802])).

cnf(c_3506,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3505])).

cnf(c_3508,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(instantiation,[status(thm)],[c_3506])).

cnf(c_6510,plain,
    ( sK0 != k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_6346,c_44,c_3508])).

cnf(c_6511,plain,
    ( sK2 = k1_xboole_0
    | sK0 != k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_6510])).

cnf(c_7502,plain,
    ( sK2 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_7487,c_6511])).

cnf(c_7530,plain,
    ( sK2 = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_7502])).

cnf(c_7517,plain,
    ( r2_relset_1(k1_xboole_0,k1_xboole_0,sK2,k2_funct_1(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_7487,c_2414])).

cnf(c_7538,plain,
    ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k2_funct_1(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_7530,c_7517])).

cnf(c_7545,plain,
    ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k2_funct_1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_7544,c_7538])).

cnf(c_1789,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(subtyping,[status(esa)],[c_32])).

cnf(c_2403,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1789])).

cnf(c_7805,plain,
    ( v1_funct_1(k1_xboole_0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_7530,c_2403])).

cnf(c_6,plain,
    ( k6_partfun1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f93])).

cnf(c_1806,plain,
    ( k6_partfun1(k1_xboole_0) = k1_xboole_0 ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_8,plain,
    ( v1_relat_1(k6_partfun1(X0)) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_1804,plain,
    ( v1_relat_1(k6_partfun1(X0_52)) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_2388,plain,
    ( v1_relat_1(k6_partfun1(X0_52)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1804])).

cnf(c_3473,plain,
    ( v1_relat_1(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1806,c_2388])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | k8_relat_1(k2_relat_1(X0),X0) = X0 ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1811,plain,
    ( ~ v1_relat_1(X0_52)
    | k8_relat_1(k2_relat_1(X0_52),X0_52) = X0_52 ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_2384,plain,
    ( k8_relat_1(k2_relat_1(X0_52),X0_52) = X0_52
    | v1_relat_1(X0_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1811])).

cnf(c_3687,plain,
    ( k8_relat_1(k2_relat_1(k1_xboole_0),k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_3473,c_2384])).

cnf(c_2,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_1810,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_3688,plain,
    ( k8_relat_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_3687,c_1810])).

cnf(c_0,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_partfun1(X1)) = k8_relat_1(X1,X0) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_1812,plain,
    ( ~ v1_relat_1(X0_52)
    | k5_relat_1(X0_52,k6_partfun1(X1_52)) = k8_relat_1(X1_52,X0_52) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_2383,plain,
    ( k5_relat_1(X0_52,k6_partfun1(X1_52)) = k8_relat_1(X1_52,X0_52)
    | v1_relat_1(X0_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1812])).

cnf(c_3558,plain,
    ( k5_relat_1(k1_xboole_0,k6_partfun1(X0_52)) = k8_relat_1(X0_52,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_3473,c_2383])).

cnf(c_9,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k5_relat_1(X1,X0) != k6_partfun1(k1_relat_1(X1))
    | k2_funct_1(X1) = X0
    | k1_relat_1(X0) != k2_relat_1(X1) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_1803,plain,
    ( ~ v1_funct_1(X0_52)
    | ~ v1_funct_1(X1_52)
    | ~ v2_funct_1(X1_52)
    | ~ v1_relat_1(X0_52)
    | ~ v1_relat_1(X1_52)
    | k5_relat_1(X1_52,X0_52) != k6_partfun1(k1_relat_1(X1_52))
    | k2_funct_1(X1_52) = X0_52
    | k1_relat_1(X0_52) != k2_relat_1(X1_52) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_2389,plain,
    ( k5_relat_1(X0_52,X1_52) != k6_partfun1(k1_relat_1(X0_52))
    | k2_funct_1(X0_52) = X1_52
    | k1_relat_1(X1_52) != k2_relat_1(X0_52)
    | v1_funct_1(X0_52) != iProver_top
    | v1_funct_1(X1_52) != iProver_top
    | v2_funct_1(X0_52) != iProver_top
    | v1_relat_1(X1_52) != iProver_top
    | v1_relat_1(X0_52) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1803])).

cnf(c_4104,plain,
    ( k8_relat_1(X0_52,k1_xboole_0) != k6_partfun1(k1_relat_1(k1_xboole_0))
    | k1_relat_1(k6_partfun1(X0_52)) != k2_relat_1(k1_xboole_0)
    | k6_partfun1(X0_52) = k2_funct_1(k1_xboole_0)
    | v1_funct_1(k6_partfun1(X0_52)) != iProver_top
    | v1_funct_1(k1_xboole_0) != iProver_top
    | v2_funct_1(k1_xboole_0) != iProver_top
    | v1_relat_1(k6_partfun1(X0_52)) != iProver_top
    | v1_relat_1(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3558,c_2389])).

cnf(c_3,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1809,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_4110,plain,
    ( k8_relat_1(X0_52,k1_xboole_0) != k1_xboole_0
    | k1_relat_1(k6_partfun1(X0_52)) != k1_xboole_0
    | k6_partfun1(X0_52) = k2_funct_1(k1_xboole_0)
    | v1_funct_1(k6_partfun1(X0_52)) != iProver_top
    | v1_funct_1(k1_xboole_0) != iProver_top
    | v2_funct_1(k1_xboole_0) != iProver_top
    | v1_relat_1(k6_partfun1(X0_52)) != iProver_top
    | v1_relat_1(k1_xboole_0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_4104,c_1806,c_1809,c_1810])).

cnf(c_1869,plain,
    ( v1_relat_1(k6_partfun1(X0_52)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1804])).

cnf(c_7,plain,
    ( v2_funct_1(k6_partfun1(X0)) ),
    inference(cnf_transformation,[],[f94])).

cnf(c_1805,plain,
    ( v2_funct_1(k6_partfun1(X0_52)) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_2387,plain,
    ( v2_funct_1(k6_partfun1(X0_52)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1805])).

cnf(c_3012,plain,
    ( v2_funct_1(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1806,c_2387])).

cnf(c_5524,plain,
    ( v1_funct_1(k1_xboole_0) != iProver_top
    | v1_funct_1(k6_partfun1(X0_52)) != iProver_top
    | k6_partfun1(X0_52) = k2_funct_1(k1_xboole_0)
    | k1_relat_1(k6_partfun1(X0_52)) != k1_xboole_0
    | k8_relat_1(X0_52,k1_xboole_0) != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4110,c_1869,c_3012,c_3473])).

cnf(c_5525,plain,
    ( k8_relat_1(X0_52,k1_xboole_0) != k1_xboole_0
    | k1_relat_1(k6_partfun1(X0_52)) != k1_xboole_0
    | k6_partfun1(X0_52) = k2_funct_1(k1_xboole_0)
    | v1_funct_1(k6_partfun1(X0_52)) != iProver_top
    | v1_funct_1(k1_xboole_0) != iProver_top ),
    inference(renaming,[status(thm)],[c_5524])).

cnf(c_5530,plain,
    ( k2_funct_1(k1_xboole_0) = k6_partfun1(k1_xboole_0)
    | k1_relat_1(k6_partfun1(k1_xboole_0)) != k1_xboole_0
    | v1_funct_1(k6_partfun1(k1_xboole_0)) != iProver_top
    | v1_funct_1(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3688,c_5525])).

cnf(c_5531,plain,
    ( k2_funct_1(k1_xboole_0) = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0
    | v1_funct_1(k1_xboole_0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_5530,c_1806,c_1809])).

cnf(c_5532,plain,
    ( k2_funct_1(k1_xboole_0) = k1_xboole_0
    | v1_funct_1(k1_xboole_0) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_5531])).

cnf(c_7808,plain,
    ( k2_funct_1(k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_7805,c_5532])).

cnf(c_8226,plain,
    ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_7545,c_7808])).

cnf(c_22,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1796,plain,
    ( m1_subset_1(k6_partfun1(X0_52),k1_zfmisc_1(k2_zfmisc_1(X0_52,X0_52))) ),
    inference(subtyping,[status(esa)],[c_22])).

cnf(c_2396,plain,
    ( m1_subset_1(k6_partfun1(X0_52),k1_zfmisc_1(k2_zfmisc_1(X0_52,X0_52))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1796])).

cnf(c_3646,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_1806,c_2396])).

cnf(c_2392,plain,
    ( r2_relset_1(X0_52,X1_52,X2_52,X2_52) = iProver_top
    | m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1800])).

cnf(c_4614,plain,
    ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_3646,c_2392])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_8226,c_4614])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n019.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:17:07 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.76/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.76/0.98  
% 3.76/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.76/0.98  
% 3.76/0.98  ------  iProver source info
% 3.76/0.98  
% 3.76/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.76/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.76/0.98  git: non_committed_changes: false
% 3.76/0.98  git: last_make_outside_of_git: false
% 3.76/0.98  
% 3.76/0.98  ------ 
% 3.76/0.98  
% 3.76/0.98  ------ Input Options
% 3.76/0.98  
% 3.76/0.98  --out_options                           all
% 3.76/0.98  --tptp_safe_out                         true
% 3.76/0.98  --problem_path                          ""
% 3.76/0.98  --include_path                          ""
% 3.76/0.98  --clausifier                            res/vclausify_rel
% 3.76/0.98  --clausifier_options                    ""
% 3.76/0.98  --stdin                                 false
% 3.76/0.98  --stats_out                             all
% 3.76/0.98  
% 3.76/0.98  ------ General Options
% 3.76/0.98  
% 3.76/0.98  --fof                                   false
% 3.76/0.98  --time_out_real                         305.
% 3.76/0.98  --time_out_virtual                      -1.
% 3.76/0.98  --symbol_type_check                     false
% 3.76/0.98  --clausify_out                          false
% 3.76/0.98  --sig_cnt_out                           false
% 3.76/0.98  --trig_cnt_out                          false
% 3.76/0.98  --trig_cnt_out_tolerance                1.
% 3.76/0.98  --trig_cnt_out_sk_spl                   false
% 3.76/0.98  --abstr_cl_out                          false
% 3.76/0.98  
% 3.76/0.98  ------ Global Options
% 3.76/0.98  
% 3.76/0.98  --schedule                              default
% 3.76/0.98  --add_important_lit                     false
% 3.76/0.98  --prop_solver_per_cl                    1000
% 3.76/0.98  --min_unsat_core                        false
% 3.76/0.98  --soft_assumptions                      false
% 3.76/0.98  --soft_lemma_size                       3
% 3.76/0.98  --prop_impl_unit_size                   0
% 3.76/0.98  --prop_impl_unit                        []
% 3.76/0.98  --share_sel_clauses                     true
% 3.76/0.98  --reset_solvers                         false
% 3.76/0.98  --bc_imp_inh                            [conj_cone]
% 3.76/0.98  --conj_cone_tolerance                   3.
% 3.76/0.98  --extra_neg_conj                        none
% 3.76/0.98  --large_theory_mode                     true
% 3.76/0.98  --prolific_symb_bound                   200
% 3.76/0.98  --lt_threshold                          2000
% 3.76/0.98  --clause_weak_htbl                      true
% 3.76/0.98  --gc_record_bc_elim                     false
% 3.76/0.98  
% 3.76/0.98  ------ Preprocessing Options
% 3.76/0.98  
% 3.76/0.98  --preprocessing_flag                    true
% 3.76/0.98  --time_out_prep_mult                    0.1
% 3.76/0.98  --splitting_mode                        input
% 3.76/0.98  --splitting_grd                         true
% 3.76/0.98  --splitting_cvd                         false
% 3.76/0.98  --splitting_cvd_svl                     false
% 3.76/0.98  --splitting_nvd                         32
% 3.76/0.98  --sub_typing                            true
% 3.76/0.98  --prep_gs_sim                           true
% 3.76/0.98  --prep_unflatten                        true
% 3.76/0.98  --prep_res_sim                          true
% 3.76/0.98  --prep_upred                            true
% 3.76/0.98  --prep_sem_filter                       exhaustive
% 3.76/0.98  --prep_sem_filter_out                   false
% 3.76/0.98  --pred_elim                             true
% 3.76/0.98  --res_sim_input                         true
% 3.76/0.98  --eq_ax_congr_red                       true
% 3.76/0.98  --pure_diseq_elim                       true
% 3.76/0.98  --brand_transform                       false
% 3.76/0.98  --non_eq_to_eq                          false
% 3.76/0.98  --prep_def_merge                        true
% 3.76/0.98  --prep_def_merge_prop_impl              false
% 3.76/0.98  --prep_def_merge_mbd                    true
% 3.76/0.98  --prep_def_merge_tr_red                 false
% 3.76/0.98  --prep_def_merge_tr_cl                  false
% 3.76/0.98  --smt_preprocessing                     true
% 3.76/0.98  --smt_ac_axioms                         fast
% 3.76/0.98  --preprocessed_out                      false
% 3.76/0.98  --preprocessed_stats                    false
% 3.76/0.98  
% 3.76/0.98  ------ Abstraction refinement Options
% 3.76/0.98  
% 3.76/0.98  --abstr_ref                             []
% 3.76/0.98  --abstr_ref_prep                        false
% 3.76/0.98  --abstr_ref_until_sat                   false
% 3.76/0.98  --abstr_ref_sig_restrict                funpre
% 3.76/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.76/0.98  --abstr_ref_under                       []
% 3.76/0.98  
% 3.76/0.98  ------ SAT Options
% 3.76/0.98  
% 3.76/0.98  --sat_mode                              false
% 3.76/0.98  --sat_fm_restart_options                ""
% 3.76/0.98  --sat_gr_def                            false
% 3.76/0.98  --sat_epr_types                         true
% 3.76/0.98  --sat_non_cyclic_types                  false
% 3.76/0.98  --sat_finite_models                     false
% 3.76/0.98  --sat_fm_lemmas                         false
% 3.76/0.98  --sat_fm_prep                           false
% 3.76/0.98  --sat_fm_uc_incr                        true
% 3.76/0.98  --sat_out_model                         small
% 3.76/0.98  --sat_out_clauses                       false
% 3.76/0.98  
% 3.76/0.98  ------ QBF Options
% 3.76/0.98  
% 3.76/0.98  --qbf_mode                              false
% 3.76/0.98  --qbf_elim_univ                         false
% 3.76/0.98  --qbf_dom_inst                          none
% 3.76/0.98  --qbf_dom_pre_inst                      false
% 3.76/0.98  --qbf_sk_in                             false
% 3.76/0.98  --qbf_pred_elim                         true
% 3.76/0.98  --qbf_split                             512
% 3.76/0.98  
% 3.76/0.98  ------ BMC1 Options
% 3.76/0.98  
% 3.76/0.98  --bmc1_incremental                      false
% 3.76/0.98  --bmc1_axioms                           reachable_all
% 3.76/0.98  --bmc1_min_bound                        0
% 3.76/0.98  --bmc1_max_bound                        -1
% 3.76/0.98  --bmc1_max_bound_default                -1
% 3.76/0.98  --bmc1_symbol_reachability              true
% 3.76/0.98  --bmc1_property_lemmas                  false
% 3.76/0.98  --bmc1_k_induction                      false
% 3.76/0.98  --bmc1_non_equiv_states                 false
% 3.76/0.98  --bmc1_deadlock                         false
% 3.76/0.98  --bmc1_ucm                              false
% 3.76/0.98  --bmc1_add_unsat_core                   none
% 3.76/0.98  --bmc1_unsat_core_children              false
% 3.76/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.76/0.98  --bmc1_out_stat                         full
% 3.76/0.98  --bmc1_ground_init                      false
% 3.76/0.98  --bmc1_pre_inst_next_state              false
% 3.76/0.98  --bmc1_pre_inst_state                   false
% 3.76/0.98  --bmc1_pre_inst_reach_state             false
% 3.76/0.98  --bmc1_out_unsat_core                   false
% 3.76/0.98  --bmc1_aig_witness_out                  false
% 3.76/0.98  --bmc1_verbose                          false
% 3.76/0.98  --bmc1_dump_clauses_tptp                false
% 3.76/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.76/0.98  --bmc1_dump_file                        -
% 3.76/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.76/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.76/0.98  --bmc1_ucm_extend_mode                  1
% 3.76/0.98  --bmc1_ucm_init_mode                    2
% 3.76/0.98  --bmc1_ucm_cone_mode                    none
% 3.76/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.76/0.98  --bmc1_ucm_relax_model                  4
% 3.76/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.76/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.76/0.98  --bmc1_ucm_layered_model                none
% 3.76/0.98  --bmc1_ucm_max_lemma_size               10
% 3.76/0.98  
% 3.76/0.98  ------ AIG Options
% 3.76/0.98  
% 3.76/0.98  --aig_mode                              false
% 3.76/0.98  
% 3.76/0.98  ------ Instantiation Options
% 3.76/0.98  
% 3.76/0.98  --instantiation_flag                    true
% 3.76/0.98  --inst_sos_flag                         true
% 3.76/0.98  --inst_sos_phase                        true
% 3.76/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.76/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.76/0.98  --inst_lit_sel_side                     num_symb
% 3.76/0.98  --inst_solver_per_active                1400
% 3.76/0.98  --inst_solver_calls_frac                1.
% 3.76/0.98  --inst_passive_queue_type               priority_queues
% 3.76/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.76/0.98  --inst_passive_queues_freq              [25;2]
% 3.76/0.98  --inst_dismatching                      true
% 3.76/0.98  --inst_eager_unprocessed_to_passive     true
% 3.76/0.98  --inst_prop_sim_given                   true
% 3.76/0.98  --inst_prop_sim_new                     false
% 3.76/0.98  --inst_subs_new                         false
% 3.76/0.98  --inst_eq_res_simp                      false
% 3.76/0.98  --inst_subs_given                       false
% 3.76/0.98  --inst_orphan_elimination               true
% 3.76/0.98  --inst_learning_loop_flag               true
% 3.76/0.98  --inst_learning_start                   3000
% 3.76/0.98  --inst_learning_factor                  2
% 3.76/0.98  --inst_start_prop_sim_after_learn       3
% 3.76/0.98  --inst_sel_renew                        solver
% 3.76/0.98  --inst_lit_activity_flag                true
% 3.76/0.98  --inst_restr_to_given                   false
% 3.76/0.98  --inst_activity_threshold               500
% 3.76/0.98  --inst_out_proof                        true
% 3.76/0.98  
% 3.76/0.98  ------ Resolution Options
% 3.76/0.98  
% 3.76/0.98  --resolution_flag                       true
% 3.76/0.98  --res_lit_sel                           adaptive
% 3.76/0.98  --res_lit_sel_side                      none
% 3.76/0.98  --res_ordering                          kbo
% 3.76/0.98  --res_to_prop_solver                    active
% 3.76/0.98  --res_prop_simpl_new                    false
% 3.76/0.98  --res_prop_simpl_given                  true
% 3.76/0.98  --res_passive_queue_type                priority_queues
% 3.76/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.76/0.98  --res_passive_queues_freq               [15;5]
% 3.76/0.98  --res_forward_subs                      full
% 3.76/0.98  --res_backward_subs                     full
% 3.76/0.98  --res_forward_subs_resolution           true
% 3.76/0.98  --res_backward_subs_resolution          true
% 3.76/0.98  --res_orphan_elimination                true
% 3.76/0.98  --res_time_limit                        2.
% 3.76/0.98  --res_out_proof                         true
% 3.76/0.98  
% 3.76/0.98  ------ Superposition Options
% 3.76/0.98  
% 3.76/0.98  --superposition_flag                    true
% 3.76/0.98  --sup_passive_queue_type                priority_queues
% 3.76/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.76/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.76/0.98  --demod_completeness_check              fast
% 3.76/0.98  --demod_use_ground                      true
% 3.76/0.98  --sup_to_prop_solver                    passive
% 3.76/0.98  --sup_prop_simpl_new                    true
% 3.76/0.98  --sup_prop_simpl_given                  true
% 3.76/0.98  --sup_fun_splitting                     true
% 3.76/0.98  --sup_smt_interval                      50000
% 3.76/0.98  
% 3.76/0.98  ------ Superposition Simplification Setup
% 3.76/0.98  
% 3.76/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.76/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.76/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.76/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.76/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.76/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.76/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.76/0.98  --sup_immed_triv                        [TrivRules]
% 3.76/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.76/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.76/0.98  --sup_immed_bw_main                     []
% 3.76/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.76/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.76/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.76/0.98  --sup_input_bw                          []
% 3.76/0.98  
% 3.76/0.98  ------ Combination Options
% 3.76/0.98  
% 3.76/0.98  --comb_res_mult                         3
% 3.76/0.98  --comb_sup_mult                         2
% 3.76/0.98  --comb_inst_mult                        10
% 3.76/0.98  
% 3.76/0.98  ------ Debug Options
% 3.76/0.98  
% 3.76/0.98  --dbg_backtrace                         false
% 3.76/0.98  --dbg_dump_prop_clauses                 false
% 3.76/0.98  --dbg_dump_prop_clauses_file            -
% 3.76/0.98  --dbg_out_stat                          false
% 3.76/0.98  ------ Parsing...
% 3.76/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.76/0.98  
% 3.76/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.76/0.98  
% 3.76/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.76/0.98  
% 3.76/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.76/0.98  ------ Proving...
% 3.76/0.98  ------ Problem Properties 
% 3.76/0.98  
% 3.76/0.98  
% 3.76/0.98  clauses                                 36
% 3.76/0.98  conjectures                             8
% 3.76/0.98  EPR                                     8
% 3.76/0.98  Horn                                    35
% 3.76/0.98  unary                                   20
% 3.76/0.98  binary                                  6
% 3.76/0.98  lits                                    90
% 3.76/0.98  lits eq                                 21
% 3.76/0.98  fd_pure                                 0
% 3.76/0.98  fd_pseudo                               0
% 3.76/0.98  fd_cond                                 2
% 3.76/0.98  fd_pseudo_cond                          4
% 3.76/0.98  AC symbols                              0
% 3.76/0.98  
% 3.76/0.98  ------ Schedule dynamic 5 is on 
% 3.76/0.98  
% 3.76/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.76/0.98  
% 3.76/0.98  
% 3.76/0.98  ------ 
% 3.76/0.98  Current options:
% 3.76/0.98  ------ 
% 3.76/0.98  
% 3.76/0.98  ------ Input Options
% 3.76/0.98  
% 3.76/0.98  --out_options                           all
% 3.76/0.98  --tptp_safe_out                         true
% 3.76/0.98  --problem_path                          ""
% 3.76/0.98  --include_path                          ""
% 3.76/0.98  --clausifier                            res/vclausify_rel
% 3.76/0.98  --clausifier_options                    ""
% 3.76/0.98  --stdin                                 false
% 3.76/0.98  --stats_out                             all
% 3.76/0.98  
% 3.76/0.98  ------ General Options
% 3.76/0.98  
% 3.76/0.98  --fof                                   false
% 3.76/0.98  --time_out_real                         305.
% 3.76/0.98  --time_out_virtual                      -1.
% 3.76/0.98  --symbol_type_check                     false
% 3.76/0.98  --clausify_out                          false
% 3.76/0.98  --sig_cnt_out                           false
% 3.76/0.98  --trig_cnt_out                          false
% 3.76/0.98  --trig_cnt_out_tolerance                1.
% 3.76/0.98  --trig_cnt_out_sk_spl                   false
% 3.76/0.98  --abstr_cl_out                          false
% 3.76/0.98  
% 3.76/0.98  ------ Global Options
% 3.76/0.98  
% 3.76/0.98  --schedule                              default
% 3.76/0.98  --add_important_lit                     false
% 3.76/0.98  --prop_solver_per_cl                    1000
% 3.76/0.98  --min_unsat_core                        false
% 3.76/0.98  --soft_assumptions                      false
% 3.76/0.98  --soft_lemma_size                       3
% 3.76/0.98  --prop_impl_unit_size                   0
% 3.76/0.98  --prop_impl_unit                        []
% 3.76/0.98  --share_sel_clauses                     true
% 3.76/0.98  --reset_solvers                         false
% 3.76/0.98  --bc_imp_inh                            [conj_cone]
% 3.76/0.98  --conj_cone_tolerance                   3.
% 3.76/0.98  --extra_neg_conj                        none
% 3.76/0.98  --large_theory_mode                     true
% 3.76/0.98  --prolific_symb_bound                   200
% 3.76/0.98  --lt_threshold                          2000
% 3.76/0.98  --clause_weak_htbl                      true
% 3.76/0.98  --gc_record_bc_elim                     false
% 3.76/0.98  
% 3.76/0.98  ------ Preprocessing Options
% 3.76/0.98  
% 3.76/0.98  --preprocessing_flag                    true
% 3.76/0.98  --time_out_prep_mult                    0.1
% 3.76/0.98  --splitting_mode                        input
% 3.76/0.98  --splitting_grd                         true
% 3.76/0.98  --splitting_cvd                         false
% 3.76/0.98  --splitting_cvd_svl                     false
% 3.76/0.98  --splitting_nvd                         32
% 3.76/0.98  --sub_typing                            true
% 3.76/0.98  --prep_gs_sim                           true
% 3.76/0.98  --prep_unflatten                        true
% 3.76/0.98  --prep_res_sim                          true
% 3.76/0.98  --prep_upred                            true
% 3.76/0.98  --prep_sem_filter                       exhaustive
% 3.76/0.98  --prep_sem_filter_out                   false
% 3.76/0.98  --pred_elim                             true
% 3.76/0.98  --res_sim_input                         true
% 3.76/0.98  --eq_ax_congr_red                       true
% 3.76/0.98  --pure_diseq_elim                       true
% 3.76/0.98  --brand_transform                       false
% 3.76/0.98  --non_eq_to_eq                          false
% 3.76/0.98  --prep_def_merge                        true
% 3.76/0.98  --prep_def_merge_prop_impl              false
% 3.76/0.98  --prep_def_merge_mbd                    true
% 3.76/0.98  --prep_def_merge_tr_red                 false
% 3.76/0.98  --prep_def_merge_tr_cl                  false
% 3.76/0.98  --smt_preprocessing                     true
% 3.76/0.98  --smt_ac_axioms                         fast
% 3.76/0.98  --preprocessed_out                      false
% 3.76/0.98  --preprocessed_stats                    false
% 3.76/0.98  
% 3.76/0.98  ------ Abstraction refinement Options
% 3.76/0.98  
% 3.76/0.98  --abstr_ref                             []
% 3.76/0.98  --abstr_ref_prep                        false
% 3.76/0.98  --abstr_ref_until_sat                   false
% 3.76/0.98  --abstr_ref_sig_restrict                funpre
% 3.76/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.76/0.98  --abstr_ref_under                       []
% 3.76/0.98  
% 3.76/0.98  ------ SAT Options
% 3.76/0.98  
% 3.76/0.98  --sat_mode                              false
% 3.76/0.98  --sat_fm_restart_options                ""
% 3.76/0.98  --sat_gr_def                            false
% 3.76/0.98  --sat_epr_types                         true
% 3.76/0.98  --sat_non_cyclic_types                  false
% 3.76/0.98  --sat_finite_models                     false
% 3.76/0.98  --sat_fm_lemmas                         false
% 3.76/0.98  --sat_fm_prep                           false
% 3.76/0.98  --sat_fm_uc_incr                        true
% 3.76/0.98  --sat_out_model                         small
% 3.76/0.98  --sat_out_clauses                       false
% 3.76/0.98  
% 3.76/0.98  ------ QBF Options
% 3.76/0.98  
% 3.76/0.98  --qbf_mode                              false
% 3.76/0.98  --qbf_elim_univ                         false
% 3.76/0.98  --qbf_dom_inst                          none
% 3.76/0.98  --qbf_dom_pre_inst                      false
% 3.76/0.98  --qbf_sk_in                             false
% 3.76/0.98  --qbf_pred_elim                         true
% 3.76/0.98  --qbf_split                             512
% 3.76/0.98  
% 3.76/0.98  ------ BMC1 Options
% 3.76/0.98  
% 3.76/0.98  --bmc1_incremental                      false
% 3.76/0.98  --bmc1_axioms                           reachable_all
% 3.76/0.98  --bmc1_min_bound                        0
% 3.76/0.98  --bmc1_max_bound                        -1
% 3.76/0.98  --bmc1_max_bound_default                -1
% 3.76/0.98  --bmc1_symbol_reachability              true
% 3.76/0.98  --bmc1_property_lemmas                  false
% 3.76/0.98  --bmc1_k_induction                      false
% 3.76/0.98  --bmc1_non_equiv_states                 false
% 3.76/0.98  --bmc1_deadlock                         false
% 3.76/0.98  --bmc1_ucm                              false
% 3.76/0.98  --bmc1_add_unsat_core                   none
% 3.76/0.98  --bmc1_unsat_core_children              false
% 3.76/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.76/0.98  --bmc1_out_stat                         full
% 3.76/0.98  --bmc1_ground_init                      false
% 3.76/0.98  --bmc1_pre_inst_next_state              false
% 3.76/0.98  --bmc1_pre_inst_state                   false
% 3.76/0.98  --bmc1_pre_inst_reach_state             false
% 3.76/0.98  --bmc1_out_unsat_core                   false
% 3.76/0.98  --bmc1_aig_witness_out                  false
% 3.76/0.98  --bmc1_verbose                          false
% 3.76/0.98  --bmc1_dump_clauses_tptp                false
% 3.76/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.76/0.98  --bmc1_dump_file                        -
% 3.76/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.76/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.76/0.98  --bmc1_ucm_extend_mode                  1
% 3.76/0.98  --bmc1_ucm_init_mode                    2
% 3.76/0.98  --bmc1_ucm_cone_mode                    none
% 3.76/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.76/0.98  --bmc1_ucm_relax_model                  4
% 3.76/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.76/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.76/0.98  --bmc1_ucm_layered_model                none
% 3.76/0.98  --bmc1_ucm_max_lemma_size               10
% 3.76/0.98  
% 3.76/0.98  ------ AIG Options
% 3.76/0.98  
% 3.76/0.98  --aig_mode                              false
% 3.76/0.98  
% 3.76/0.98  ------ Instantiation Options
% 3.76/0.98  
% 3.76/0.98  --instantiation_flag                    true
% 3.76/0.98  --inst_sos_flag                         true
% 3.76/0.98  --inst_sos_phase                        true
% 3.76/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.76/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.76/0.98  --inst_lit_sel_side                     none
% 3.76/0.98  --inst_solver_per_active                1400
% 3.76/0.98  --inst_solver_calls_frac                1.
% 3.76/0.98  --inst_passive_queue_type               priority_queues
% 3.76/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.76/0.98  --inst_passive_queues_freq              [25;2]
% 3.76/0.98  --inst_dismatching                      true
% 3.76/0.98  --inst_eager_unprocessed_to_passive     true
% 3.76/0.98  --inst_prop_sim_given                   true
% 3.76/0.98  --inst_prop_sim_new                     false
% 3.76/0.98  --inst_subs_new                         false
% 3.76/0.98  --inst_eq_res_simp                      false
% 3.76/0.98  --inst_subs_given                       false
% 3.76/0.98  --inst_orphan_elimination               true
% 3.76/0.98  --inst_learning_loop_flag               true
% 3.76/0.98  --inst_learning_start                   3000
% 3.76/0.98  --inst_learning_factor                  2
% 3.76/0.98  --inst_start_prop_sim_after_learn       3
% 3.76/0.98  --inst_sel_renew                        solver
% 3.76/0.98  --inst_lit_activity_flag                true
% 3.76/0.98  --inst_restr_to_given                   false
% 3.76/0.98  --inst_activity_threshold               500
% 3.76/0.98  --inst_out_proof                        true
% 3.76/0.98  
% 3.76/0.98  ------ Resolution Options
% 3.76/0.98  
% 3.76/0.98  --resolution_flag                       false
% 3.76/0.98  --res_lit_sel                           adaptive
% 3.76/0.98  --res_lit_sel_side                      none
% 3.76/0.98  --res_ordering                          kbo
% 3.76/0.98  --res_to_prop_solver                    active
% 3.76/0.98  --res_prop_simpl_new                    false
% 3.76/0.98  --res_prop_simpl_given                  true
% 3.76/0.98  --res_passive_queue_type                priority_queues
% 3.76/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.76/0.98  --res_passive_queues_freq               [15;5]
% 3.76/0.98  --res_forward_subs                      full
% 3.76/0.98  --res_backward_subs                     full
% 3.76/0.98  --res_forward_subs_resolution           true
% 3.76/0.98  --res_backward_subs_resolution          true
% 3.76/0.98  --res_orphan_elimination                true
% 3.76/0.98  --res_time_limit                        2.
% 3.76/0.98  --res_out_proof                         true
% 3.76/0.98  
% 3.76/0.98  ------ Superposition Options
% 3.76/0.98  
% 3.76/0.98  --superposition_flag                    true
% 3.76/0.98  --sup_passive_queue_type                priority_queues
% 3.76/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.76/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.76/0.98  --demod_completeness_check              fast
% 3.76/0.98  --demod_use_ground                      true
% 3.76/0.98  --sup_to_prop_solver                    passive
% 3.76/0.98  --sup_prop_simpl_new                    true
% 3.76/0.98  --sup_prop_simpl_given                  true
% 3.76/0.98  --sup_fun_splitting                     true
% 3.76/0.98  --sup_smt_interval                      50000
% 3.76/0.98  
% 3.76/0.98  ------ Superposition Simplification Setup
% 3.76/0.98  
% 3.76/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.76/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.76/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.76/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.76/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.76/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.76/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.76/0.98  --sup_immed_triv                        [TrivRules]
% 3.76/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.76/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.76/0.98  --sup_immed_bw_main                     []
% 3.76/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.76/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.76/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.76/0.98  --sup_input_bw                          []
% 3.76/0.98  
% 3.76/0.98  ------ Combination Options
% 3.76/0.98  
% 3.76/0.98  --comb_res_mult                         3
% 3.76/0.98  --comb_sup_mult                         2
% 3.76/0.98  --comb_inst_mult                        10
% 3.76/0.98  
% 3.76/0.98  ------ Debug Options
% 3.76/0.98  
% 3.76/0.98  --dbg_backtrace                         false
% 3.76/0.98  --dbg_dump_prop_clauses                 false
% 3.76/0.98  --dbg_dump_prop_clauses_file            -
% 3.76/0.98  --dbg_out_stat                          false
% 3.76/0.98  
% 3.76/0.98  
% 3.76/0.98  
% 3.76/0.98  
% 3.76/0.98  ------ Proving...
% 3.76/0.98  
% 3.76/0.98  
% 3.76/0.98  % SZS status Theorem for theBenchmark.p
% 3.76/0.98  
% 3.76/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.76/0.98  
% 3.76/0.98  fof(f20,conjecture,(
% 3.76/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) => r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)))))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f21,negated_conjecture,(
% 3.76/0.98    ~! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ! [X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) => r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)))))),
% 3.76/0.98    inference(negated_conjecture,[],[f20])).
% 3.76/0.98  
% 3.76/0.98  fof(f47,plain,(
% 3.76/0.98    ? [X0,X1] : (? [X2] : ((~r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)))),
% 3.76/0.98    inference(ennf_transformation,[],[f21])).
% 3.76/0.98  
% 3.76/0.98  fof(f48,plain,(
% 3.76/0.98    ? [X0,X1] : (? [X2] : (~r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 3.76/0.98    inference(flattening,[],[f47])).
% 3.76/0.98  
% 3.76/0.98  fof(f52,plain,(
% 3.76/0.98    ( ! [X0,X1] : (? [X2] : (~r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) => (~r2_relset_1(X0,X0,sK2,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,sK2),k6_partfun1(X0)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(sK2,X0,X0) & v1_funct_2(sK2,X0,X0) & v1_funct_1(sK2))) )),
% 3.76/0.98    introduced(choice_axiom,[])).
% 3.76/0.98  
% 3.76/0.98  fof(f51,plain,(
% 3.76/0.98    ? [X0,X1] : (? [X2] : (~r2_relset_1(X0,X0,X2,k2_funct_2(X0,X1)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,X2),k6_partfun1(X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X2,X0,X0) & v1_funct_2(X2,X0,X0) & v1_funct_1(X2)) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (? [X2] : (~r2_relset_1(sK0,sK0,X2,k2_funct_2(sK0,sK1)) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,X2),k6_partfun1(sK0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) & v3_funct_2(X2,sK0,sK0) & v1_funct_2(X2,sK0,sK0) & v1_funct_1(X2)) & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) & v3_funct_2(sK1,sK0,sK0) & v1_funct_2(sK1,sK0,sK0) & v1_funct_1(sK1))),
% 3.76/0.98    introduced(choice_axiom,[])).
% 3.76/0.98  
% 3.76/0.98  fof(f53,plain,(
% 3.76/0.98    (~r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1)) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) & v3_funct_2(sK2,sK0,sK0) & v1_funct_2(sK2,sK0,sK0) & v1_funct_1(sK2)) & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) & v3_funct_2(sK1,sK0,sK0) & v1_funct_2(sK1,sK0,sK0) & v1_funct_1(sK1)),
% 3.76/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f48,f52,f51])).
% 3.76/0.98  
% 3.76/0.98  fof(f90,plain,(
% 3.76/0.98    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0))),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f85,plain,(
% 3.76/0.98    m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f9,axiom,(
% 3.76/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f23,plain,(
% 3.76/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 3.76/0.98    inference(pure_predicate_removal,[],[f9])).
% 3.76/0.98  
% 3.76/0.98  fof(f31,plain,(
% 3.76/0.98    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.76/0.98    inference(ennf_transformation,[],[f23])).
% 3.76/0.98  
% 3.76/0.98  fof(f65,plain,(
% 3.76/0.98    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.76/0.98    inference(cnf_transformation,[],[f31])).
% 3.76/0.98  
% 3.76/0.98  fof(f13,axiom,(
% 3.76/0.98    ! [X0,X1] : ((v5_relat_1(X1,X0) & v1_relat_1(X1)) => (v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f37,plain,(
% 3.76/0.98    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | (~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 3.76/0.98    inference(ennf_transformation,[],[f13])).
% 3.76/0.98  
% 3.76/0.98  fof(f38,plain,(
% 3.76/0.98    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.76/0.98    inference(flattening,[],[f37])).
% 3.76/0.98  
% 3.76/0.98  fof(f50,plain,(
% 3.76/0.98    ! [X0,X1] : (((v2_funct_2(X1,X0) | k2_relat_1(X1) != X0) & (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0))) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.76/0.98    inference(nnf_transformation,[],[f38])).
% 3.76/0.98  
% 3.76/0.98  fof(f72,plain,(
% 3.76/0.98    ( ! [X0,X1] : (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.76/0.98    inference(cnf_transformation,[],[f50])).
% 3.76/0.98  
% 3.76/0.98  fof(f8,axiom,(
% 3.76/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f30,plain,(
% 3.76/0.98    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.76/0.98    inference(ennf_transformation,[],[f8])).
% 3.76/0.98  
% 3.76/0.98  fof(f64,plain,(
% 3.76/0.98    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.76/0.98    inference(cnf_transformation,[],[f30])).
% 3.76/0.98  
% 3.76/0.98  fof(f82,plain,(
% 3.76/0.98    v1_funct_1(sK1)),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f12,axiom,(
% 3.76/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v3_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2))))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f35,plain,(
% 3.76/0.98    ! [X0,X1,X2] : (((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | (~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.76/0.98    inference(ennf_transformation,[],[f12])).
% 3.76/0.98  
% 3.76/0.98  fof(f36,plain,(
% 3.76/0.98    ! [X0,X1,X2] : ((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.76/0.98    inference(flattening,[],[f35])).
% 3.76/0.98  
% 3.76/0.98  fof(f71,plain,(
% 3.76/0.98    ( ! [X2,X0,X1] : (v2_funct_2(X2,X1) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.76/0.98    inference(cnf_transformation,[],[f36])).
% 3.76/0.98  
% 3.76/0.98  fof(f84,plain,(
% 3.76/0.98    v3_funct_2(sK1,sK0,sK0)),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f10,axiom,(
% 3.76/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f32,plain,(
% 3.76/0.98    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.76/0.98    inference(ennf_transformation,[],[f10])).
% 3.76/0.98  
% 3.76/0.98  fof(f66,plain,(
% 3.76/0.98    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.76/0.98    inference(cnf_transformation,[],[f32])).
% 3.76/0.98  
% 3.76/0.98  fof(f19,axiom,(
% 3.76/0.98    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f45,plain,(
% 3.76/0.98    ! [X0,X1,X2] : (! [X3] : (((k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0) | (~v2_funct_1(X2) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.76/0.98    inference(ennf_transformation,[],[f19])).
% 3.76/0.98  
% 3.76/0.98  fof(f46,plain,(
% 3.76/0.98    ! [X0,X1,X2] : (! [X3] : (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~v2_funct_1(X2) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.76/0.98    inference(flattening,[],[f45])).
% 3.76/0.98  
% 3.76/0.98  fof(f81,plain,(
% 3.76/0.98    ( ! [X2,X0,X3,X1] : (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0 | ~v2_funct_1(X2) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.76/0.98    inference(cnf_transformation,[],[f46])).
% 3.76/0.98  
% 3.76/0.98  fof(f18,axiom,(
% 3.76/0.98    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) => (v2_funct_2(X3,X0) & v2_funct_1(X2)))))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f43,plain,(
% 3.76/0.98    ! [X0,X1,X2] : (! [X3] : (((v2_funct_2(X3,X0) & v2_funct_1(X2)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.76/0.98    inference(ennf_transformation,[],[f18])).
% 3.76/0.98  
% 3.76/0.98  fof(f44,plain,(
% 3.76/0.98    ! [X0,X1,X2] : (! [X3] : ((v2_funct_2(X3,X0) & v2_funct_1(X2)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.76/0.98    inference(flattening,[],[f43])).
% 3.76/0.98  
% 3.76/0.98  fof(f79,plain,(
% 3.76/0.98    ( ! [X2,X0,X3,X1] : (v2_funct_1(X2) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.76/0.98    inference(cnf_transformation,[],[f44])).
% 3.76/0.98  
% 3.76/0.98  fof(f83,plain,(
% 3.76/0.98    v1_funct_2(sK1,sK0,sK0)),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f86,plain,(
% 3.76/0.98    v1_funct_1(sK2)),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f87,plain,(
% 3.76/0.98    v1_funct_2(sK2,sK0,sK0)),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f89,plain,(
% 3.76/0.98    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f91,plain,(
% 3.76/0.98    ~r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1))),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f16,axiom,(
% 3.76/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => k2_funct_1(X1) = k2_funct_2(X0,X1))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f41,plain,(
% 3.76/0.98    ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 3.76/0.98    inference(ennf_transformation,[],[f16])).
% 3.76/0.98  
% 3.76/0.98  fof(f42,plain,(
% 3.76/0.98    ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 3.76/0.98    inference(flattening,[],[f41])).
% 3.76/0.98  
% 3.76/0.98  fof(f77,plain,(
% 3.76/0.98    ( ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.76/0.98    inference(cnf_transformation,[],[f42])).
% 3.76/0.98  
% 3.76/0.98  fof(f11,axiom,(
% 3.76/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f33,plain,(
% 3.76/0.98    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 3.76/0.98    inference(ennf_transformation,[],[f11])).
% 3.76/0.98  
% 3.76/0.98  fof(f34,plain,(
% 3.76/0.98    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.76/0.98    inference(flattening,[],[f33])).
% 3.76/0.98  
% 3.76/0.98  fof(f49,plain,(
% 3.76/0.98    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.76/0.98    inference(nnf_transformation,[],[f34])).
% 3.76/0.98  
% 3.76/0.98  fof(f68,plain,(
% 3.76/0.98    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.76/0.98    inference(cnf_transformation,[],[f49])).
% 3.76/0.98  
% 3.76/0.98  fof(f97,plain,(
% 3.76/0.98    ( ! [X0,X3,X1] : (r2_relset_1(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.76/0.98    inference(equality_resolution,[],[f68])).
% 3.76/0.98  
% 3.76/0.98  fof(f4,axiom,(
% 3.76/0.98    ! [X0] : (v1_relat_1(X0) => ((k2_relat_1(X0) = k1_xboole_0 | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f26,plain,(
% 3.76/0.98    ! [X0] : ((k1_xboole_0 = X0 | (k2_relat_1(X0) != k1_xboole_0 & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 3.76/0.98    inference(ennf_transformation,[],[f4])).
% 3.76/0.98  
% 3.76/0.98  fof(f27,plain,(
% 3.76/0.98    ! [X0] : (k1_xboole_0 = X0 | (k2_relat_1(X0) != k1_xboole_0 & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 3.76/0.98    inference(flattening,[],[f26])).
% 3.76/0.98  
% 3.76/0.98  fof(f59,plain,(
% 3.76/0.98    ( ! [X0] : (k1_xboole_0 = X0 | k2_relat_1(X0) != k1_xboole_0 | ~v1_relat_1(X0)) )),
% 3.76/0.98    inference(cnf_transformation,[],[f27])).
% 3.76/0.98  
% 3.76/0.98  fof(f88,plain,(
% 3.76/0.98    v3_funct_2(sK2,sK0,sK0)),
% 3.76/0.98    inference(cnf_transformation,[],[f53])).
% 3.76/0.98  
% 3.76/0.98  fof(f5,axiom,(
% 3.76/0.98    k6_relat_1(k1_xboole_0) = k1_xboole_0),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f60,plain,(
% 3.76/0.98    k6_relat_1(k1_xboole_0) = k1_xboole_0),
% 3.76/0.98    inference(cnf_transformation,[],[f5])).
% 3.76/0.98  
% 3.76/0.98  fof(f17,axiom,(
% 3.76/0.98    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f78,plain,(
% 3.76/0.98    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 3.76/0.98    inference(cnf_transformation,[],[f17])).
% 3.76/0.98  
% 3.76/0.98  fof(f93,plain,(
% 3.76/0.98    k1_xboole_0 = k6_partfun1(k1_xboole_0)),
% 3.76/0.98    inference(definition_unfolding,[],[f60,f78])).
% 3.76/0.98  
% 3.76/0.98  fof(f6,axiom,(
% 3.76/0.98    ! [X0] : (v2_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f61,plain,(
% 3.76/0.98    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 3.76/0.98    inference(cnf_transformation,[],[f6])).
% 3.76/0.98  
% 3.76/0.98  fof(f95,plain,(
% 3.76/0.98    ( ! [X0] : (v1_relat_1(k6_partfun1(X0))) )),
% 3.76/0.98    inference(definition_unfolding,[],[f61,f78])).
% 3.76/0.98  
% 3.76/0.98  fof(f2,axiom,(
% 3.76/0.98    ! [X0] : (v1_relat_1(X0) => k8_relat_1(k2_relat_1(X0),X0) = X0)),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f25,plain,(
% 3.76/0.98    ! [X0] : (k8_relat_1(k2_relat_1(X0),X0) = X0 | ~v1_relat_1(X0))),
% 3.76/0.98    inference(ennf_transformation,[],[f2])).
% 3.76/0.98  
% 3.76/0.98  fof(f55,plain,(
% 3.76/0.98    ( ! [X0] : (k8_relat_1(k2_relat_1(X0),X0) = X0 | ~v1_relat_1(X0)) )),
% 3.76/0.98    inference(cnf_transformation,[],[f25])).
% 3.76/0.98  
% 3.76/0.98  fof(f3,axiom,(
% 3.76/0.98    k2_relat_1(k1_xboole_0) = k1_xboole_0 & k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f57,plain,(
% 3.76/0.98    k2_relat_1(k1_xboole_0) = k1_xboole_0),
% 3.76/0.98    inference(cnf_transformation,[],[f3])).
% 3.76/0.98  
% 3.76/0.98  fof(f1,axiom,(
% 3.76/0.98    ! [X0,X1] : (v1_relat_1(X1) => k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0)))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f24,plain,(
% 3.76/0.98    ! [X0,X1] : (k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0)) | ~v1_relat_1(X1))),
% 3.76/0.98    inference(ennf_transformation,[],[f1])).
% 3.76/0.98  
% 3.76/0.98  fof(f54,plain,(
% 3.76/0.98    ( ! [X0,X1] : (k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0)) | ~v1_relat_1(X1)) )),
% 3.76/0.98    inference(cnf_transformation,[],[f24])).
% 3.76/0.98  
% 3.76/0.98  fof(f92,plain,(
% 3.76/0.98    ( ! [X0,X1] : (k8_relat_1(X0,X1) = k5_relat_1(X1,k6_partfun1(X0)) | ~v1_relat_1(X1)) )),
% 3.76/0.98    inference(definition_unfolding,[],[f54,f78])).
% 3.76/0.98  
% 3.76/0.98  fof(f7,axiom,(
% 3.76/0.98    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,X1) & k2_relat_1(X0) = k1_relat_1(X1) & v2_funct_1(X0)) => k2_funct_1(X0) = X1)))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f28,plain,(
% 3.76/0.98    ! [X0] : (! [X1] : ((k2_funct_1(X0) = X1 | (k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1) | k2_relat_1(X0) != k1_relat_1(X1) | ~v2_funct_1(X0))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.76/0.98    inference(ennf_transformation,[],[f7])).
% 3.76/0.98  
% 3.76/0.98  fof(f29,plain,(
% 3.76/0.98    ! [X0] : (! [X1] : (k2_funct_1(X0) = X1 | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1) | k2_relat_1(X0) != k1_relat_1(X1) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.76/0.98    inference(flattening,[],[f28])).
% 3.76/0.98  
% 3.76/0.98  fof(f63,plain,(
% 3.76/0.98    ( ! [X0,X1] : (k2_funct_1(X0) = X1 | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1) | k2_relat_1(X0) != k1_relat_1(X1) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.76/0.98    inference(cnf_transformation,[],[f29])).
% 3.76/0.98  
% 3.76/0.98  fof(f96,plain,(
% 3.76/0.98    ( ! [X0,X1] : (k2_funct_1(X0) = X1 | k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0)) | k2_relat_1(X0) != k1_relat_1(X1) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.76/0.98    inference(definition_unfolding,[],[f63,f78])).
% 3.76/0.98  
% 3.76/0.98  fof(f56,plain,(
% 3.76/0.98    k1_xboole_0 = k1_relat_1(k1_xboole_0)),
% 3.76/0.98    inference(cnf_transformation,[],[f3])).
% 3.76/0.98  
% 3.76/0.98  fof(f62,plain,(
% 3.76/0.98    ( ! [X0] : (v2_funct_1(k6_relat_1(X0))) )),
% 3.76/0.98    inference(cnf_transformation,[],[f6])).
% 3.76/0.98  
% 3.76/0.98  fof(f94,plain,(
% 3.76/0.98    ( ! [X0] : (v2_funct_1(k6_partfun1(X0))) )),
% 3.76/0.98    inference(definition_unfolding,[],[f62,f78])).
% 3.76/0.98  
% 3.76/0.98  fof(f15,axiom,(
% 3.76/0.98    ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_partfun1(k6_partfun1(X0),X0))),
% 3.76/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.76/0.98  
% 3.76/0.98  fof(f22,plain,(
% 3.76/0.98    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 3.76/0.98    inference(pure_predicate_removal,[],[f15])).
% 3.76/0.98  
% 3.76/0.98  fof(f76,plain,(
% 3.76/0.98    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 3.76/0.98    inference(cnf_transformation,[],[f22])).
% 3.76/0.98  
% 3.76/0.98  cnf(c_28,negated_conjecture,
% 3.76/0.98      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0)) ),
% 3.76/0.98      inference(cnf_transformation,[],[f90]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1792,negated_conjecture,
% 3.76/0.98      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0)) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_28]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2400,plain,
% 3.76/0.98      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,sK2),k6_partfun1(sK0)) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1792]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_33,negated_conjecture,
% 3.76/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
% 3.76/0.98      inference(cnf_transformation,[],[f85]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1788,negated_conjecture,
% 3.76/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_33]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2404,plain,
% 3.76/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1788]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_11,plain,
% 3.76/0.98      ( v5_relat_1(X0,X1)
% 3.76/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 3.76/0.98      inference(cnf_transformation,[],[f65]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_19,plain,
% 3.76/0.98      ( ~ v2_funct_2(X0,X1)
% 3.76/0.98      | ~ v5_relat_1(X0,X1)
% 3.76/0.98      | ~ v1_relat_1(X0)
% 3.76/0.98      | k2_relat_1(X0) = X1 ),
% 3.76/0.98      inference(cnf_transformation,[],[f72]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_383,plain,
% 3.76/0.98      ( ~ v2_funct_2(X0,X1)
% 3.76/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.76/0.98      | ~ v1_relat_1(X0)
% 3.76/0.98      | k2_relat_1(X0) = X1 ),
% 3.76/0.98      inference(resolution,[status(thm)],[c_11,c_19]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_10,plain,
% 3.76/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.76/0.98      | v1_relat_1(X0) ),
% 3.76/0.98      inference(cnf_transformation,[],[f64]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_395,plain,
% 3.76/0.98      ( ~ v2_funct_2(X0,X1)
% 3.76/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.76/0.98      | k2_relat_1(X0) = X1 ),
% 3.76/0.98      inference(forward_subsumption_resolution,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_383,c_10]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1784,plain,
% 3.76/0.98      ( ~ v2_funct_2(X0_52,X1_52)
% 3.76/0.98      | ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X2_52,X1_52)))
% 3.76/0.98      | k2_relat_1(X0_52) = X1_52 ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_395]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2408,plain,
% 3.76/0.98      ( k2_relat_1(X0_52) = X1_52
% 3.76/0.98      | v2_funct_2(X0_52,X1_52) != iProver_top
% 3.76/0.98      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X2_52,X1_52))) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1784]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6320,plain,
% 3.76/0.98      ( k2_relat_1(sK1) = sK0 | v2_funct_2(sK1,sK0) != iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_2404,c_2408]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_36,negated_conjecture,
% 3.76/0.98      ( v1_funct_1(sK1) ),
% 3.76/0.98      inference(cnf_transformation,[],[f82]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_37,plain,
% 3.76/0.98      ( v1_funct_1(sK1) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_40,plain,
% 3.76/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_15,plain,
% 3.76/0.98      ( ~ v3_funct_2(X0,X1,X2)
% 3.76/0.98      | v2_funct_2(X0,X2)
% 3.76/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.76/0.98      | ~ v1_funct_1(X0) ),
% 3.76/0.98      inference(cnf_transformation,[],[f71]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_34,negated_conjecture,
% 3.76/0.98      ( v3_funct_2(sK1,sK0,sK0) ),
% 3.76/0.98      inference(cnf_transformation,[],[f84]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_529,plain,
% 3.76/0.98      ( v2_funct_2(X0,X1)
% 3.76/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.76/0.98      | ~ v1_funct_1(X0)
% 3.76/0.98      | sK1 != X0
% 3.76/0.98      | sK0 != X1
% 3.76/0.98      | sK0 != X2 ),
% 3.76/0.98      inference(resolution_lifted,[status(thm)],[c_15,c_34]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_530,plain,
% 3.76/0.98      ( v2_funct_2(sK1,sK0)
% 3.76/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.76/0.98      | ~ v1_funct_1(sK1) ),
% 3.76/0.98      inference(unflattening,[status(thm)],[c_529]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_531,plain,
% 3.76/0.98      ( v2_funct_2(sK1,sK0) = iProver_top
% 3.76/0.98      | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.76/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_530]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6407,plain,
% 3.76/0.98      ( k2_relat_1(sK1) = sK0 ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_6320,c_37,c_40,c_531]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_12,plain,
% 3.76/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.76/0.98      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.76/0.98      inference(cnf_transformation,[],[f66]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1801,plain,
% 3.76/0.98      ( ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X1_52,X2_52)))
% 3.76/0.98      | k2_relset_1(X1_52,X2_52,X0_52) = k2_relat_1(X0_52) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_12]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2391,plain,
% 3.76/0.98      ( k2_relset_1(X0_52,X1_52,X2_52) = k2_relat_1(X2_52)
% 3.76/0.98      | m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1801]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_4236,plain,
% 3.76/0.98      ( k2_relset_1(sK0,sK0,sK1) = k2_relat_1(sK1) ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_2404,c_2391]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6413,plain,
% 3.76/0.98      ( k2_relset_1(sK0,sK0,sK1) = sK0 ),
% 3.76/0.98      inference(demodulation,[status(thm)],[c_6407,c_4236]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_26,plain,
% 3.76/0.98      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.76/0.98      | ~ v1_funct_2(X3,X1,X0)
% 3.76/0.98      | ~ v1_funct_2(X2,X0,X1)
% 3.76/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.76/0.98      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.76/0.98      | ~ v1_funct_1(X2)
% 3.76/0.98      | ~ v1_funct_1(X3)
% 3.76/0.98      | ~ v2_funct_1(X2)
% 3.76/0.98      | k2_relset_1(X0,X1,X2) != X1
% 3.76/0.98      | k2_funct_1(X2) = X3
% 3.76/0.98      | k1_xboole_0 = X0
% 3.76/0.98      | k1_xboole_0 = X1 ),
% 3.76/0.98      inference(cnf_transformation,[],[f81]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_25,plain,
% 3.76/0.98      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.76/0.98      | ~ v1_funct_2(X3,X1,X0)
% 3.76/0.98      | ~ v1_funct_2(X2,X0,X1)
% 3.76/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.76/0.98      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.76/0.98      | ~ v1_funct_1(X2)
% 3.76/0.98      | ~ v1_funct_1(X3)
% 3.76/0.98      | v2_funct_1(X2) ),
% 3.76/0.98      inference(cnf_transformation,[],[f79]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_196,plain,
% 3.76/0.98      ( ~ v1_funct_1(X3)
% 3.76/0.98      | ~ v1_funct_1(X2)
% 3.76/0.98      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.76/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.76/0.98      | ~ v1_funct_2(X2,X0,X1)
% 3.76/0.98      | ~ v1_funct_2(X3,X1,X0)
% 3.76/0.98      | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.76/0.98      | k2_relset_1(X0,X1,X2) != X1
% 3.76/0.98      | k2_funct_1(X2) = X3
% 3.76/0.98      | k1_xboole_0 = X0
% 3.76/0.98      | k1_xboole_0 = X1 ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_26,c_25]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_197,plain,
% 3.76/0.98      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.76/0.98      | ~ v1_funct_2(X3,X1,X0)
% 3.76/0.98      | ~ v1_funct_2(X2,X0,X1)
% 3.76/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.76/0.98      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.76/0.98      | ~ v1_funct_1(X2)
% 3.76/0.98      | ~ v1_funct_1(X3)
% 3.76/0.98      | k2_relset_1(X0,X1,X2) != X1
% 3.76/0.98      | k2_funct_1(X2) = X3
% 3.76/0.98      | k1_xboole_0 = X0
% 3.76/0.98      | k1_xboole_0 = X1 ),
% 3.76/0.98      inference(renaming,[status(thm)],[c_196]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1785,plain,
% 3.76/0.98      ( ~ r2_relset_1(X0_52,X0_52,k1_partfun1(X0_52,X1_52,X1_52,X0_52,X2_52,X3_52),k6_partfun1(X0_52))
% 3.76/0.98      | ~ v1_funct_2(X3_52,X1_52,X0_52)
% 3.76/0.98      | ~ v1_funct_2(X2_52,X0_52,X1_52)
% 3.76/0.98      | ~ m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52)))
% 3.76/0.98      | ~ m1_subset_1(X3_52,k1_zfmisc_1(k2_zfmisc_1(X1_52,X0_52)))
% 3.76/0.98      | ~ v1_funct_1(X2_52)
% 3.76/0.98      | ~ v1_funct_1(X3_52)
% 3.76/0.98      | k2_relset_1(X0_52,X1_52,X2_52) != X1_52
% 3.76/0.98      | k2_funct_1(X2_52) = X3_52
% 3.76/0.98      | k1_xboole_0 = X0_52
% 3.76/0.98      | k1_xboole_0 = X1_52 ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_197]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2407,plain,
% 3.76/0.98      ( k2_relset_1(X0_52,X1_52,X2_52) != X1_52
% 3.76/0.98      | k2_funct_1(X2_52) = X3_52
% 3.76/0.98      | k1_xboole_0 = X0_52
% 3.76/0.98      | k1_xboole_0 = X1_52
% 3.76/0.98      | r2_relset_1(X0_52,X0_52,k1_partfun1(X0_52,X1_52,X1_52,X0_52,X2_52,X3_52),k6_partfun1(X0_52)) != iProver_top
% 3.76/0.98      | v1_funct_2(X3_52,X1_52,X0_52) != iProver_top
% 3.76/0.98      | v1_funct_2(X2_52,X0_52,X1_52) != iProver_top
% 3.76/0.98      | m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top
% 3.76/0.98      | m1_subset_1(X3_52,k1_zfmisc_1(k2_zfmisc_1(X1_52,X0_52))) != iProver_top
% 3.76/0.98      | v1_funct_1(X2_52) != iProver_top
% 3.76/0.98      | v1_funct_1(X3_52) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1785]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6735,plain,
% 3.76/0.98      ( k2_funct_1(sK1) = X0_52
% 3.76/0.98      | sK0 = k1_xboole_0
% 3.76/0.98      | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,X0_52),k6_partfun1(sK0)) != iProver_top
% 3.76/0.98      | v1_funct_2(X0_52,sK0,sK0) != iProver_top
% 3.76/0.98      | v1_funct_2(sK1,sK0,sK0) != iProver_top
% 3.76/0.98      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.76/0.98      | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.76/0.98      | v1_funct_1(X0_52) != iProver_top
% 3.76/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_6413,c_2407]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_35,negated_conjecture,
% 3.76/0.98      ( v1_funct_2(sK1,sK0,sK0) ),
% 3.76/0.98      inference(cnf_transformation,[],[f83]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_38,plain,
% 3.76/0.98      ( v1_funct_2(sK1,sK0,sK0) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7326,plain,
% 3.76/0.98      ( v1_funct_1(X0_52) != iProver_top
% 3.76/0.98      | v1_funct_2(X0_52,sK0,sK0) != iProver_top
% 3.76/0.98      | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,X0_52),k6_partfun1(sK0)) != iProver_top
% 3.76/0.98      | sK0 = k1_xboole_0
% 3.76/0.98      | k2_funct_1(sK1) = X0_52
% 3.76/0.98      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_6735,c_37,c_38,c_40]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7327,plain,
% 3.76/0.98      ( k2_funct_1(sK1) = X0_52
% 3.76/0.98      | sK0 = k1_xboole_0
% 3.76/0.98      | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,X0_52),k6_partfun1(sK0)) != iProver_top
% 3.76/0.98      | v1_funct_2(X0_52,sK0,sK0) != iProver_top
% 3.76/0.98      | m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.76/0.98      | v1_funct_1(X0_52) != iProver_top ),
% 3.76/0.98      inference(renaming,[status(thm)],[c_7326]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7332,plain,
% 3.76/0.98      ( k2_funct_1(sK1) = sK2
% 3.76/0.98      | sK0 = k1_xboole_0
% 3.76/0.98      | v1_funct_2(sK2,sK0,sK0) != iProver_top
% 3.76/0.98      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.76/0.98      | v1_funct_1(sK2) != iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_2400,c_7327]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_32,negated_conjecture,
% 3.76/0.98      ( v1_funct_1(sK2) ),
% 3.76/0.98      inference(cnf_transformation,[],[f86]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_31,negated_conjecture,
% 3.76/0.98      ( v1_funct_2(sK2,sK0,sK0) ),
% 3.76/0.98      inference(cnf_transformation,[],[f87]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_29,negated_conjecture,
% 3.76/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
% 3.76/0.98      inference(cnf_transformation,[],[f89]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7333,plain,
% 3.76/0.98      ( ~ v1_funct_2(sK2,sK0,sK0)
% 3.76/0.98      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.76/0.98      | ~ v1_funct_1(sK2)
% 3.76/0.98      | k2_funct_1(sK1) = sK2
% 3.76/0.98      | sK0 = k1_xboole_0 ),
% 3.76/0.98      inference(predicate_to_equality_rev,[status(thm)],[c_7332]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7482,plain,
% 3.76/0.98      ( sK0 = k1_xboole_0 | k2_funct_1(sK1) = sK2 ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_7332,c_41,c_42,c_44]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7483,plain,
% 3.76/0.98      ( k2_funct_1(sK1) = sK2 | sK0 = k1_xboole_0 ),
% 3.76/0.98      inference(renaming,[status(thm)],[c_7482]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_27,negated_conjecture,
% 3.76/0.98      ( ~ r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1)) ),
% 3.76/0.98      inference(cnf_transformation,[],[f91]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1793,negated_conjecture,
% 3.76/0.98      ( ~ r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1)) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_27]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2399,plain,
% 3.76/0.98      ( r2_relset_1(sK0,sK0,sK2,k2_funct_2(sK0,sK1)) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1793]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_23,plain,
% 3.76/0.98      ( ~ v1_funct_2(X0,X1,X1)
% 3.76/0.98      | ~ v3_funct_2(X0,X1,X1)
% 3.76/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.76/0.98      | ~ v1_funct_1(X0)
% 3.76/0.98      | k2_funct_2(X1,X0) = k2_funct_1(X0) ),
% 3.76/0.98      inference(cnf_transformation,[],[f77]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_548,plain,
% 3.76/0.98      ( ~ v1_funct_2(X0,X1,X1)
% 3.76/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.76/0.98      | ~ v1_funct_1(X0)
% 3.76/0.98      | k2_funct_2(X1,X0) = k2_funct_1(X0)
% 3.76/0.98      | sK1 != X0
% 3.76/0.98      | sK0 != X1 ),
% 3.76/0.98      inference(resolution_lifted,[status(thm)],[c_23,c_34]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_549,plain,
% 3.76/0.98      ( ~ v1_funct_2(sK1,sK0,sK0)
% 3.76/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.76/0.98      | ~ v1_funct_1(sK1)
% 3.76/0.98      | k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
% 3.76/0.98      inference(unflattening,[status(thm)],[c_548]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_551,plain,
% 3.76/0.98      ( k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_549,c_36,c_35,c_33]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1777,plain,
% 3.76/0.98      ( k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_551]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2414,plain,
% 3.76/0.98      ( r2_relset_1(sK0,sK0,sK2,k2_funct_1(sK1)) != iProver_top ),
% 3.76/0.98      inference(light_normalisation,[status(thm)],[c_2399,c_1777]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7484,plain,
% 3.76/0.98      ( sK0 = k1_xboole_0 | r2_relset_1(sK0,sK0,sK2,sK2) != iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_7483,c_2414]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_44,plain,
% 3.76/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_13,plain,
% 3.76/0.98      ( r2_relset_1(X0,X1,X2,X2)
% 3.76/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 3.76/0.98      inference(cnf_transformation,[],[f97]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1800,plain,
% 3.76/0.98      ( r2_relset_1(X0_52,X1_52,X2_52,X2_52)
% 3.76/0.98      | ~ m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_13]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2479,plain,
% 3.76/0.98      ( r2_relset_1(sK0,sK0,sK2,sK2)
% 3.76/0.98      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
% 3.76/0.98      inference(instantiation,[status(thm)],[c_1800]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2480,plain,
% 3.76/0.98      ( r2_relset_1(sK0,sK0,sK2,sK2) = iProver_top
% 3.76/0.98      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_2479]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7487,plain,
% 3.76/0.98      ( sK0 = k1_xboole_0 ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_7484,c_44,c_2480]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_4,plain,
% 3.76/0.98      ( ~ v1_relat_1(X0)
% 3.76/0.98      | k2_relat_1(X0) != k1_xboole_0
% 3.76/0.98      | k1_xboole_0 = X0 ),
% 3.76/0.98      inference(cnf_transformation,[],[f59]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1808,plain,
% 3.76/0.98      ( ~ v1_relat_1(X0_52)
% 3.76/0.98      | k2_relat_1(X0_52) != k1_xboole_0
% 3.76/0.98      | k1_xboole_0 = X0_52 ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_4]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2385,plain,
% 3.76/0.98      ( k2_relat_1(X0_52) != k1_xboole_0
% 3.76/0.98      | k1_xboole_0 = X0_52
% 3.76/0.98      | v1_relat_1(X0_52) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1808]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6420,plain,
% 3.76/0.98      ( sK1 = k1_xboole_0
% 3.76/0.98      | sK0 != k1_xboole_0
% 3.76/0.98      | v1_relat_1(sK1) != iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_6407,c_2385]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1802,plain,
% 3.76/0.98      ( ~ m1_subset_1(X0_52,k1_zfmisc_1(k2_zfmisc_1(X1_52,X2_52)))
% 3.76/0.98      | v1_relat_1(X0_52) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_10]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3602,plain,
% 3.76/0.98      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52)))
% 3.76/0.98      | v1_relat_1(sK1) ),
% 3.76/0.98      inference(instantiation,[status(thm)],[c_1802]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3603,plain,
% 3.76/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top
% 3.76/0.98      | v1_relat_1(sK1) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_3602]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3605,plain,
% 3.76/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.76/0.98      | v1_relat_1(sK1) = iProver_top ),
% 3.76/0.98      inference(instantiation,[status(thm)],[c_3603]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6608,plain,
% 3.76/0.98      ( sK0 != k1_xboole_0 | sK1 = k1_xboole_0 ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_6420,c_40,c_3605]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6609,plain,
% 3.76/0.98      ( sK1 = k1_xboole_0 | sK0 != k1_xboole_0 ),
% 3.76/0.98      inference(renaming,[status(thm)],[c_6608]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7501,plain,
% 3.76/0.98      ( sK1 = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 3.76/0.98      inference(demodulation,[status(thm)],[c_7487,c_6609]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7544,plain,
% 3.76/0.98      ( sK1 = k1_xboole_0 ),
% 3.76/0.98      inference(equality_resolution_simp,[status(thm)],[c_7501]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1791,negated_conjecture,
% 3.76/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_29]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2401,plain,
% 3.76/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1791]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6319,plain,
% 3.76/0.98      ( k2_relat_1(sK2) = sK0 | v2_funct_2(sK2,sK0) != iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_2401,c_2408]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_41,plain,
% 3.76/0.98      ( v1_funct_1(sK2) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_30,negated_conjecture,
% 3.76/0.98      ( v3_funct_2(sK2,sK0,sK0) ),
% 3.76/0.98      inference(cnf_transformation,[],[f88]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_507,plain,
% 3.76/0.98      ( v2_funct_2(X0,X1)
% 3.76/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.76/0.98      | ~ v1_funct_1(X0)
% 3.76/0.98      | sK2 != X0
% 3.76/0.98      | sK0 != X1
% 3.76/0.98      | sK0 != X2 ),
% 3.76/0.98      inference(resolution_lifted,[status(thm)],[c_15,c_30]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_508,plain,
% 3.76/0.98      ( v2_funct_2(sK2,sK0)
% 3.76/0.98      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.76/0.98      | ~ v1_funct_1(sK2) ),
% 3.76/0.98      inference(unflattening,[status(thm)],[c_507]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_509,plain,
% 3.76/0.98      ( v2_funct_2(sK2,sK0) = iProver_top
% 3.76/0.98      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.76/0.98      | v1_funct_1(sK2) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_508]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6333,plain,
% 3.76/0.98      ( k2_relat_1(sK2) = sK0 ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_6319,c_41,c_44,c_509]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6346,plain,
% 3.76/0.98      ( sK2 = k1_xboole_0
% 3.76/0.98      | sK0 != k1_xboole_0
% 3.76/0.98      | v1_relat_1(sK2) != iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_6333,c_2385]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3505,plain,
% 3.76/0.98      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52)))
% 3.76/0.98      | v1_relat_1(sK2) ),
% 3.76/0.98      inference(instantiation,[status(thm)],[c_1802]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3506,plain,
% 3.76/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top
% 3.76/0.98      | v1_relat_1(sK2) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_3505]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3508,plain,
% 3.76/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.76/0.98      | v1_relat_1(sK2) = iProver_top ),
% 3.76/0.98      inference(instantiation,[status(thm)],[c_3506]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6510,plain,
% 3.76/0.98      ( sK0 != k1_xboole_0 | sK2 = k1_xboole_0 ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_6346,c_44,c_3508]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6511,plain,
% 3.76/0.98      ( sK2 = k1_xboole_0 | sK0 != k1_xboole_0 ),
% 3.76/0.98      inference(renaming,[status(thm)],[c_6510]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7502,plain,
% 3.76/0.98      ( sK2 = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 3.76/0.98      inference(demodulation,[status(thm)],[c_7487,c_6511]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7530,plain,
% 3.76/0.98      ( sK2 = k1_xboole_0 ),
% 3.76/0.98      inference(equality_resolution_simp,[status(thm)],[c_7502]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7517,plain,
% 3.76/0.98      ( r2_relset_1(k1_xboole_0,k1_xboole_0,sK2,k2_funct_1(sK1)) != iProver_top ),
% 3.76/0.98      inference(demodulation,[status(thm)],[c_7487,c_2414]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7538,plain,
% 3.76/0.98      ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k2_funct_1(sK1)) != iProver_top ),
% 3.76/0.98      inference(demodulation,[status(thm)],[c_7530,c_7517]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7545,plain,
% 3.76/0.98      ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k2_funct_1(k1_xboole_0)) != iProver_top ),
% 3.76/0.98      inference(demodulation,[status(thm)],[c_7544,c_7538]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1789,negated_conjecture,
% 3.76/0.98      ( v1_funct_1(sK2) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_32]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2403,plain,
% 3.76/0.98      ( v1_funct_1(sK2) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1789]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7805,plain,
% 3.76/0.98      ( v1_funct_1(k1_xboole_0) = iProver_top ),
% 3.76/0.98      inference(demodulation,[status(thm)],[c_7530,c_2403]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_6,plain,
% 3.76/0.98      ( k6_partfun1(k1_xboole_0) = k1_xboole_0 ),
% 3.76/0.98      inference(cnf_transformation,[],[f93]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1806,plain,
% 3.76/0.98      ( k6_partfun1(k1_xboole_0) = k1_xboole_0 ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_6]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_8,plain,
% 3.76/0.98      ( v1_relat_1(k6_partfun1(X0)) ),
% 3.76/0.98      inference(cnf_transformation,[],[f95]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1804,plain,
% 3.76/0.98      ( v1_relat_1(k6_partfun1(X0_52)) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_8]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2388,plain,
% 3.76/0.98      ( v1_relat_1(k6_partfun1(X0_52)) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1804]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3473,plain,
% 3.76/0.98      ( v1_relat_1(k1_xboole_0) = iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_1806,c_2388]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1,plain,
% 3.76/0.98      ( ~ v1_relat_1(X0) | k8_relat_1(k2_relat_1(X0),X0) = X0 ),
% 3.76/0.98      inference(cnf_transformation,[],[f55]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1811,plain,
% 3.76/0.98      ( ~ v1_relat_1(X0_52)
% 3.76/0.98      | k8_relat_1(k2_relat_1(X0_52),X0_52) = X0_52 ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_1]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2384,plain,
% 3.76/0.98      ( k8_relat_1(k2_relat_1(X0_52),X0_52) = X0_52
% 3.76/0.98      | v1_relat_1(X0_52) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1811]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3687,plain,
% 3.76/0.98      ( k8_relat_1(k2_relat_1(k1_xboole_0),k1_xboole_0) = k1_xboole_0 ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_3473,c_2384]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2,plain,
% 3.76/0.98      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.76/0.98      inference(cnf_transformation,[],[f57]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1810,plain,
% 3.76/0.98      ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_2]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3688,plain,
% 3.76/0.98      ( k8_relat_1(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 3.76/0.98      inference(light_normalisation,[status(thm)],[c_3687,c_1810]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_0,plain,
% 3.76/0.98      ( ~ v1_relat_1(X0)
% 3.76/0.98      | k5_relat_1(X0,k6_partfun1(X1)) = k8_relat_1(X1,X0) ),
% 3.76/0.98      inference(cnf_transformation,[],[f92]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1812,plain,
% 3.76/0.98      ( ~ v1_relat_1(X0_52)
% 3.76/0.98      | k5_relat_1(X0_52,k6_partfun1(X1_52)) = k8_relat_1(X1_52,X0_52) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_0]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2383,plain,
% 3.76/0.98      ( k5_relat_1(X0_52,k6_partfun1(X1_52)) = k8_relat_1(X1_52,X0_52)
% 3.76/0.98      | v1_relat_1(X0_52) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1812]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3558,plain,
% 3.76/0.98      ( k5_relat_1(k1_xboole_0,k6_partfun1(X0_52)) = k8_relat_1(X0_52,k1_xboole_0) ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_3473,c_2383]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_9,plain,
% 3.76/0.98      ( ~ v1_funct_1(X0)
% 3.76/0.98      | ~ v1_funct_1(X1)
% 3.76/0.98      | ~ v2_funct_1(X1)
% 3.76/0.98      | ~ v1_relat_1(X0)
% 3.76/0.98      | ~ v1_relat_1(X1)
% 3.76/0.98      | k5_relat_1(X1,X0) != k6_partfun1(k1_relat_1(X1))
% 3.76/0.98      | k2_funct_1(X1) = X0
% 3.76/0.98      | k1_relat_1(X0) != k2_relat_1(X1) ),
% 3.76/0.98      inference(cnf_transformation,[],[f96]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1803,plain,
% 3.76/0.98      ( ~ v1_funct_1(X0_52)
% 3.76/0.98      | ~ v1_funct_1(X1_52)
% 3.76/0.98      | ~ v2_funct_1(X1_52)
% 3.76/0.98      | ~ v1_relat_1(X0_52)
% 3.76/0.98      | ~ v1_relat_1(X1_52)
% 3.76/0.98      | k5_relat_1(X1_52,X0_52) != k6_partfun1(k1_relat_1(X1_52))
% 3.76/0.98      | k2_funct_1(X1_52) = X0_52
% 3.76/0.98      | k1_relat_1(X0_52) != k2_relat_1(X1_52) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_9]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2389,plain,
% 3.76/0.98      ( k5_relat_1(X0_52,X1_52) != k6_partfun1(k1_relat_1(X0_52))
% 3.76/0.98      | k2_funct_1(X0_52) = X1_52
% 3.76/0.98      | k1_relat_1(X1_52) != k2_relat_1(X0_52)
% 3.76/0.98      | v1_funct_1(X0_52) != iProver_top
% 3.76/0.98      | v1_funct_1(X1_52) != iProver_top
% 3.76/0.98      | v2_funct_1(X0_52) != iProver_top
% 3.76/0.98      | v1_relat_1(X1_52) != iProver_top
% 3.76/0.98      | v1_relat_1(X0_52) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1803]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_4104,plain,
% 3.76/0.98      ( k8_relat_1(X0_52,k1_xboole_0) != k6_partfun1(k1_relat_1(k1_xboole_0))
% 3.76/0.98      | k1_relat_1(k6_partfun1(X0_52)) != k2_relat_1(k1_xboole_0)
% 3.76/0.98      | k6_partfun1(X0_52) = k2_funct_1(k1_xboole_0)
% 3.76/0.98      | v1_funct_1(k6_partfun1(X0_52)) != iProver_top
% 3.76/0.98      | v1_funct_1(k1_xboole_0) != iProver_top
% 3.76/0.98      | v2_funct_1(k1_xboole_0) != iProver_top
% 3.76/0.98      | v1_relat_1(k6_partfun1(X0_52)) != iProver_top
% 3.76/0.98      | v1_relat_1(k1_xboole_0) != iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_3558,c_2389]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3,plain,
% 3.76/0.98      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.76/0.98      inference(cnf_transformation,[],[f56]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1809,plain,
% 3.76/0.98      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_3]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_4110,plain,
% 3.76/0.98      ( k8_relat_1(X0_52,k1_xboole_0) != k1_xboole_0
% 3.76/0.98      | k1_relat_1(k6_partfun1(X0_52)) != k1_xboole_0
% 3.76/0.98      | k6_partfun1(X0_52) = k2_funct_1(k1_xboole_0)
% 3.76/0.98      | v1_funct_1(k6_partfun1(X0_52)) != iProver_top
% 3.76/0.98      | v1_funct_1(k1_xboole_0) != iProver_top
% 3.76/0.98      | v2_funct_1(k1_xboole_0) != iProver_top
% 3.76/0.98      | v1_relat_1(k6_partfun1(X0_52)) != iProver_top
% 3.76/0.98      | v1_relat_1(k1_xboole_0) != iProver_top ),
% 3.76/0.98      inference(light_normalisation,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_4104,c_1806,c_1809,c_1810]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1869,plain,
% 3.76/0.98      ( v1_relat_1(k6_partfun1(X0_52)) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1804]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7,plain,
% 3.76/0.98      ( v2_funct_1(k6_partfun1(X0)) ),
% 3.76/0.98      inference(cnf_transformation,[],[f94]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1805,plain,
% 3.76/0.98      ( v2_funct_1(k6_partfun1(X0_52)) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_7]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2387,plain,
% 3.76/0.98      ( v2_funct_1(k6_partfun1(X0_52)) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1805]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3012,plain,
% 3.76/0.98      ( v2_funct_1(k1_xboole_0) = iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_1806,c_2387]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_5524,plain,
% 3.76/0.98      ( v1_funct_1(k1_xboole_0) != iProver_top
% 3.76/0.98      | v1_funct_1(k6_partfun1(X0_52)) != iProver_top
% 3.76/0.98      | k6_partfun1(X0_52) = k2_funct_1(k1_xboole_0)
% 3.76/0.98      | k1_relat_1(k6_partfun1(X0_52)) != k1_xboole_0
% 3.76/0.98      | k8_relat_1(X0_52,k1_xboole_0) != k1_xboole_0 ),
% 3.76/0.98      inference(global_propositional_subsumption,
% 3.76/0.98                [status(thm)],
% 3.76/0.98                [c_4110,c_1869,c_3012,c_3473]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_5525,plain,
% 3.76/0.98      ( k8_relat_1(X0_52,k1_xboole_0) != k1_xboole_0
% 3.76/0.98      | k1_relat_1(k6_partfun1(X0_52)) != k1_xboole_0
% 3.76/0.98      | k6_partfun1(X0_52) = k2_funct_1(k1_xboole_0)
% 3.76/0.98      | v1_funct_1(k6_partfun1(X0_52)) != iProver_top
% 3.76/0.98      | v1_funct_1(k1_xboole_0) != iProver_top ),
% 3.76/0.98      inference(renaming,[status(thm)],[c_5524]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_5530,plain,
% 3.76/0.98      ( k2_funct_1(k1_xboole_0) = k6_partfun1(k1_xboole_0)
% 3.76/0.98      | k1_relat_1(k6_partfun1(k1_xboole_0)) != k1_xboole_0
% 3.76/0.98      | v1_funct_1(k6_partfun1(k1_xboole_0)) != iProver_top
% 3.76/0.98      | v1_funct_1(k1_xboole_0) != iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_3688,c_5525]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_5531,plain,
% 3.76/0.98      ( k2_funct_1(k1_xboole_0) = k1_xboole_0
% 3.76/0.98      | k1_xboole_0 != k1_xboole_0
% 3.76/0.98      | v1_funct_1(k1_xboole_0) != iProver_top ),
% 3.76/0.98      inference(light_normalisation,[status(thm)],[c_5530,c_1806,c_1809]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_5532,plain,
% 3.76/0.98      ( k2_funct_1(k1_xboole_0) = k1_xboole_0
% 3.76/0.98      | v1_funct_1(k1_xboole_0) != iProver_top ),
% 3.76/0.98      inference(equality_resolution_simp,[status(thm)],[c_5531]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_7808,plain,
% 3.76/0.98      ( k2_funct_1(k1_xboole_0) = k1_xboole_0 ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_7805,c_5532]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_8226,plain,
% 3.76/0.98      ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) != iProver_top ),
% 3.76/0.98      inference(light_normalisation,[status(thm)],[c_7545,c_7808]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_22,plain,
% 3.76/0.98      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 3.76/0.98      inference(cnf_transformation,[],[f76]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_1796,plain,
% 3.76/0.98      ( m1_subset_1(k6_partfun1(X0_52),k1_zfmisc_1(k2_zfmisc_1(X0_52,X0_52))) ),
% 3.76/0.98      inference(subtyping,[status(esa)],[c_22]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2396,plain,
% 3.76/0.98      ( m1_subset_1(k6_partfun1(X0_52),k1_zfmisc_1(k2_zfmisc_1(X0_52,X0_52))) = iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1796]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_3646,plain,
% 3.76/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_1806,c_2396]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_2392,plain,
% 3.76/0.98      ( r2_relset_1(X0_52,X1_52,X2_52,X2_52) = iProver_top
% 3.76/0.98      | m1_subset_1(X2_52,k1_zfmisc_1(k2_zfmisc_1(X0_52,X1_52))) != iProver_top ),
% 3.76/0.98      inference(predicate_to_equality,[status(thm)],[c_1800]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(c_4614,plain,
% 3.76/0.98      ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) = iProver_top ),
% 3.76/0.98      inference(superposition,[status(thm)],[c_3646,c_2392]) ).
% 3.76/0.98  
% 3.76/0.98  cnf(contradiction,plain,
% 3.76/0.98      ( $false ),
% 3.76/0.98      inference(minisat,[status(thm)],[c_8226,c_4614]) ).
% 3.76/0.98  
% 3.76/0.98  
% 3.76/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.76/0.98  
% 3.76/0.98  ------                               Statistics
% 3.76/0.98  
% 3.76/0.98  ------ General
% 3.76/0.98  
% 3.76/0.98  abstr_ref_over_cycles:                  0
% 3.76/0.98  abstr_ref_under_cycles:                 0
% 3.76/0.98  gc_basic_clause_elim:                   0
% 3.76/0.98  forced_gc_time:                         0
% 3.76/0.98  parsing_time:                           0.013
% 3.76/0.98  unif_index_cands_time:                  0.
% 3.76/0.98  unif_index_add_time:                    0.
% 3.76/0.98  orderings_time:                         0.
% 3.76/0.98  out_proof_time:                         0.027
% 3.76/0.98  total_time:                             0.397
% 3.76/0.98  num_of_symbols:                         58
% 3.76/0.98  num_of_terms:                           10075
% 3.76/0.98  
% 3.76/0.98  ------ Preprocessing
% 3.76/0.98  
% 3.76/0.98  num_of_splits:                          0
% 3.76/0.98  num_of_split_atoms:                     0
% 3.76/0.98  num_of_reused_defs:                     0
% 3.76/0.98  num_eq_ax_congr_red:                    18
% 3.76/0.98  num_of_sem_filtered_clauses:            1
% 3.76/0.98  num_of_subtypes:                        3
% 3.76/0.98  monotx_restored_types:                  1
% 3.76/0.98  sat_num_of_epr_types:                   0
% 3.76/0.98  sat_num_of_non_cyclic_types:            0
% 3.76/0.98  sat_guarded_non_collapsed_types:        1
% 3.76/0.98  num_pure_diseq_elim:                    0
% 3.76/0.98  simp_replaced_by:                       0
% 3.76/0.98  res_preprocessed:                       187
% 3.76/0.98  prep_upred:                             0
% 3.76/0.98  prep_unflattend:                        94
% 3.76/0.98  smt_new_axioms:                         0
% 3.76/0.98  pred_elim_cands:                        7
% 3.76/0.98  pred_elim:                              2
% 3.76/0.98  pred_elim_cl:                           0
% 3.76/0.98  pred_elim_cycles:                       9
% 3.76/0.98  merged_defs:                            0
% 3.76/0.98  merged_defs_ncl:                        0
% 3.76/0.98  bin_hyper_res:                          0
% 3.76/0.98  prep_cycles:                            4
% 3.76/0.98  pred_elim_time:                         0.024
% 3.76/0.98  splitting_time:                         0.
% 3.76/0.98  sem_filter_time:                        0.
% 3.76/0.98  monotx_time:                            0.
% 3.76/0.98  subtype_inf_time:                       0.002
% 3.76/0.98  
% 3.76/0.98  ------ Problem properties
% 3.76/0.98  
% 3.76/0.98  clauses:                                36
% 3.76/0.98  conjectures:                            8
% 3.76/0.98  epr:                                    8
% 3.76/0.98  horn:                                   35
% 3.76/0.98  ground:                                 17
% 3.76/0.98  unary:                                  20
% 3.76/0.98  binary:                                 6
% 3.76/0.98  lits:                                   90
% 3.76/0.98  lits_eq:                                21
% 3.76/0.98  fd_pure:                                0
% 3.76/0.98  fd_pseudo:                              0
% 3.76/0.98  fd_cond:                                2
% 3.76/0.98  fd_pseudo_cond:                         4
% 3.76/0.98  ac_symbols:                             0
% 3.76/0.98  
% 3.76/0.98  ------ Propositional Solver
% 3.76/0.98  
% 3.76/0.98  prop_solver_calls:                      28
% 3.76/0.98  prop_fast_solver_calls:                 1751
% 3.76/0.98  smt_solver_calls:                       0
% 3.76/0.98  smt_fast_solver_calls:                  0
% 3.76/0.98  prop_num_of_clauses:                    3439
% 3.76/0.98  prop_preprocess_simplified:             9139
% 3.76/0.98  prop_fo_subsumed:                       68
% 3.76/0.98  prop_solver_time:                       0.
% 3.76/0.98  smt_solver_time:                        0.
% 3.76/0.98  smt_fast_solver_time:                   0.
% 3.76/0.98  prop_fast_solver_time:                  0.
% 3.76/0.98  prop_unsat_core_time:                   0.
% 3.76/0.98  
% 3.76/0.98  ------ QBF
% 3.76/0.98  
% 3.76/0.98  qbf_q_res:                              0
% 3.76/0.98  qbf_num_tautologies:                    0
% 3.76/0.98  qbf_prep_cycles:                        0
% 3.76/0.98  
% 3.76/0.98  ------ BMC1
% 3.76/0.98  
% 3.76/0.98  bmc1_current_bound:                     -1
% 3.76/0.98  bmc1_last_solved_bound:                 -1
% 3.76/0.98  bmc1_unsat_core_size:                   -1
% 3.76/0.98  bmc1_unsat_core_parents_size:           -1
% 3.76/0.98  bmc1_merge_next_fun:                    0
% 3.76/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.76/0.98  
% 3.76/0.98  ------ Instantiation
% 3.76/0.98  
% 3.76/0.98  inst_num_of_clauses:                    1028
% 3.76/0.98  inst_num_in_passive:                    447
% 3.76/0.98  inst_num_in_active:                     572
% 3.76/0.98  inst_num_in_unprocessed:                9
% 3.76/0.98  inst_num_of_loops:                      600
% 3.76/0.98  inst_num_of_learning_restarts:          0
% 3.76/0.98  inst_num_moves_active_passive:          22
% 3.76/0.98  inst_lit_activity:                      0
% 3.76/0.98  inst_lit_activity_moves:                0
% 3.76/0.98  inst_num_tautologies:                   0
% 3.76/0.98  inst_num_prop_implied:                  0
% 3.76/0.98  inst_num_existing_simplified:           0
% 3.76/0.98  inst_num_eq_res_simplified:             0
% 3.76/0.98  inst_num_child_elim:                    0
% 3.76/0.98  inst_num_of_dismatching_blockings:      472
% 3.76/0.98  inst_num_of_non_proper_insts:           1380
% 3.76/0.98  inst_num_of_duplicates:                 0
% 3.76/0.98  inst_inst_num_from_inst_to_res:         0
% 3.76/0.98  inst_dismatching_checking_time:         0.
% 3.76/0.98  
% 3.76/0.98  ------ Resolution
% 3.76/0.98  
% 3.76/0.98  res_num_of_clauses:                     0
% 3.76/0.98  res_num_in_passive:                     0
% 3.76/0.98  res_num_in_active:                      0
% 3.76/0.98  res_num_of_loops:                       191
% 3.76/0.98  res_forward_subset_subsumed:            37
% 3.76/0.98  res_backward_subset_subsumed:           0
% 3.76/0.98  res_forward_subsumed:                   0
% 3.76/0.98  res_backward_subsumed:                  0
% 3.76/0.98  res_forward_subsumption_resolution:     7
% 3.76/0.98  res_backward_subsumption_resolution:    0
% 3.76/0.98  res_clause_to_clause_subsumption:       354
% 3.76/0.98  res_orphan_elimination:                 0
% 3.76/0.98  res_tautology_del:                      70
% 3.76/0.98  res_num_eq_res_simplified:              0
% 3.76/0.98  res_num_sel_changes:                    0
% 3.76/0.98  res_moves_from_active_to_pass:          0
% 3.76/0.98  
% 3.76/0.98  ------ Superposition
% 3.76/0.98  
% 3.76/0.98  sup_time_total:                         0.
% 3.76/0.98  sup_time_generating:                    0.
% 3.76/0.98  sup_time_sim_full:                      0.
% 3.76/0.98  sup_time_sim_immed:                     0.
% 3.76/0.98  
% 3.76/0.98  sup_num_of_clauses:                     70
% 3.76/0.98  sup_num_in_active:                      55
% 3.76/0.98  sup_num_in_passive:                     15
% 3.76/0.98  sup_num_of_loops:                       118
% 3.76/0.98  sup_fw_superposition:                   86
% 3.76/0.98  sup_bw_superposition:                   22
% 3.76/0.98  sup_immediate_simplified:               71
% 3.76/0.98  sup_given_eliminated:                   0
% 3.76/0.98  comparisons_done:                       0
% 3.76/0.98  comparisons_avoided:                    3
% 3.76/0.98  
% 3.76/0.98  ------ Simplifications
% 3.76/0.98  
% 3.76/0.98  
% 3.76/0.98  sim_fw_subset_subsumed:                 6
% 3.76/0.98  sim_bw_subset_subsumed:                 8
% 3.76/0.98  sim_fw_subsumed:                        4
% 3.76/0.98  sim_bw_subsumed:                        1
% 3.76/0.98  sim_fw_subsumption_res:                 0
% 3.76/0.98  sim_bw_subsumption_res:                 0
% 3.76/0.98  sim_tautology_del:                      0
% 3.76/0.98  sim_eq_tautology_del:                   14
% 3.76/0.98  sim_eq_res_simp:                        9
% 3.76/0.98  sim_fw_demodulated:                     11
% 3.76/0.98  sim_bw_demodulated:                     83
% 3.76/0.98  sim_light_normalised:                   29
% 3.76/0.98  sim_joinable_taut:                      0
% 3.76/0.98  sim_joinable_simp:                      0
% 3.76/0.98  sim_ac_normalised:                      0
% 3.76/0.98  sim_smt_subsumption:                    0
% 3.76/0.98  
%------------------------------------------------------------------------------
