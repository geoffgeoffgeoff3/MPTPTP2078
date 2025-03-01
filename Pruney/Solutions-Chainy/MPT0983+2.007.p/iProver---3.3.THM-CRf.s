%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:01:46 EST 2020

% Result     : Theorem 2.78s
% Output     : CNFRefutation 2.78s
% Verified   : 
% Statistics : Number of formulae       :  177 (1727 expanded)
%              Number of clauses        :   91 ( 446 expanded)
%              Number of leaves         :   23 ( 437 expanded)
%              Depth                    :   23
%              Number of atoms          :  645 (11091 expanded)
%              Number of equality atoms :  188 ( 840 expanded)
%              Maximal formula depth    :   15 (   5 average)
%              Maximal clause size      :   18 (   3 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f32,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f31])).

fof(f49,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f32])).

fof(f72,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r2_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f20,conjecture,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,negated_conjecture,(
    ~ ! [X0,X1,X2] :
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
    inference(negated_conjecture,[],[f20])).

fof(f41,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ( ~ v2_funct_2(X3,X0)
            | ~ v2_funct_1(X2) )
          & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(X3,X1,X0)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f42,plain,(
    ? [X0,X1,X2] :
      ( ? [X3] :
          ( ( ~ v2_funct_2(X3,X0)
            | ~ v2_funct_1(X2) )
          & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(X3,X1,X0)
          & v1_funct_1(X3) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f41])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( ? [X3] :
          ( ( ~ v2_funct_2(X3,X0)
            | ~ v2_funct_1(X2) )
          & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(X3,X1,X0)
          & v1_funct_1(X3) )
     => ( ( ~ v2_funct_2(sK4,X0)
          | ~ v2_funct_1(X2) )
        & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,sK4),k6_partfun1(X0))
        & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        & v1_funct_2(sK4,X1,X0)
        & v1_funct_1(sK4) ) ) ),
    introduced(choice_axiom,[])).

fof(f51,plain,
    ( ? [X0,X1,X2] :
        ( ? [X3] :
            ( ( ~ v2_funct_2(X3,X0)
              | ~ v2_funct_1(X2) )
            & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
            & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(X3,X1,X0)
            & v1_funct_1(X3) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( ? [X3] :
          ( ( ~ v2_funct_2(X3,sK1)
            | ~ v2_funct_1(sK3) )
          & r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK2,sK2,sK1,sK3,X3),k6_partfun1(sK1))
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
          & v1_funct_2(X3,sK2,sK1)
          & v1_funct_1(X3) )
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
      & v1_funct_2(sK3,sK1,sK2)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f53,plain,
    ( ( ~ v2_funct_2(sK4,sK1)
      | ~ v2_funct_1(sK3) )
    & r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k6_partfun1(sK1))
    & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
    & v1_funct_2(sK4,sK2,sK1)
    & v1_funct_1(sK4)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    & v1_funct_2(sK3,sK1,sK2)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f42,f52,f51])).

fof(f89,plain,(
    r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k6_partfun1(sK1)) ),
    inference(cnf_transformation,[],[f53])).

fof(f14,axiom,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f74,plain,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f14])).

fof(f17,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f79,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f17])).

fof(f93,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(definition_unfolding,[],[f74,f79])).

fof(f83,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f53])).

fof(f85,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f53])).

fof(f86,plain,(
    v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f53])).

fof(f88,plain,(
    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(cnf_transformation,[],[f53])).

fof(f16,axiom,(
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
    inference(ennf_transformation,[],[f16])).

fof(f36,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f35])).

fof(f78,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X3,X0,X1)
        & v1_funct_1(X3) )
     => ! [X4] :
          ( ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
            & v1_funct_2(X4,X1,X2)
            & v1_funct_1(X4) )
         => ( v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))
           => ( v2_funct_1(X3)
              | ( k1_xboole_0 != X1
                & k1_xboole_0 = X2 ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1,X2,X3] :
      ( ! [X4] :
          ( v2_funct_1(X3)
          | ( k1_xboole_0 != X1
            & k1_xboole_0 = X2 )
          | ~ v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))
          | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X4,X1,X2)
          | ~ v1_funct_1(X4) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f40,plain,(
    ! [X0,X1,X2,X3] :
      ( ! [X4] :
          ( v2_funct_1(X3)
          | ( k1_xboole_0 != X1
            & k1_xboole_0 = X2 )
          | ~ v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))
          | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
          | ~ v1_funct_2(X4,X1,X2)
          | ~ v1_funct_1(X4) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(flattening,[],[f39])).

fof(f81,plain,(
    ! [X4,X2,X0,X3,X1] :
      ( v2_funct_1(X3)
      | k1_xboole_0 = X2
      | ~ v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ v1_funct_2(X4,X1,X2)
      | ~ v1_funct_1(X4)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X3,X0,X1)
      | ~ v1_funct_1(X3) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f84,plain,(
    v1_funct_2(sK3,sK1,sK2) ),
    inference(cnf_transformation,[],[f53])).

fof(f87,plain,(
    v1_funct_2(sK4,sK2,sK1) ),
    inference(cnf_transformation,[],[f53])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relset_1(X0,X1,X2) = k2_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f18,axiom,(
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

fof(f37,plain,(
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
    inference(ennf_transformation,[],[f18])).

fof(f38,plain,(
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
    inference(flattening,[],[f37])).

fof(f80,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_relset_1(X0,X1,X2) = X1
      | ~ r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ v1_funct_2(X3,X1,X0)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f73,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f96,plain,(
    ! [X0,X3,X1] :
      ( r2_relset_1(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(equality_resolution,[],[f73])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f11])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f70,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f15,axiom,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f33])).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( ( v2_funct_2(X1,X0)
          | k2_relat_1(X1) != X0 )
        & ( k2_relat_1(X1) = X0
          | ~ v2_funct_2(X1,X0) ) )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f34])).

fof(f76,plain,(
    ! [X0,X1] :
      ( v2_funct_2(X1,X0)
      | k2_relat_1(X1) != X0
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f97,plain,(
    ! [X1] :
      ( v2_funct_2(X1,k2_relat_1(X1))
      | ~ v5_relat_1(X1,k2_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(equality_resolution,[],[f76])).

fof(f90,plain,
    ( ~ v2_funct_2(sK4,sK1)
    | ~ v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f53])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f62,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f7,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f7])).

fof(f10,axiom,(
    ! [X0] :
      ( v2_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f69,plain,(
    ! [X0] : v2_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f10])).

fof(f91,plain,(
    ! [X0] : v2_funct_1(k6_partfun1(X0)) ),
    inference(definition_unfolding,[],[f69,f79])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f48,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f47])).

fof(f58,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f48])).

fof(f95,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f58])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
    <=> ! [X1] : ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X1] : ~ r2_hidden(X1,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f44,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | ? [X1] : r2_hidden(X1,X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(rectify,[],[f43])).

fof(f45,plain,(
    ! [X0] :
      ( ? [X1] : r2_hidden(X1,X0)
     => r2_hidden(sK0(X0),X0) ) ),
    introduced(choice_axiom,[])).

fof(f46,plain,(
    ! [X0] :
      ( ( v1_xboole_0(X0)
        | r2_hidden(sK0(X0),X0) )
      & ( ! [X2] : ~ r2_hidden(X2,X0)
        | ~ v1_xboole_0(X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f44,f45])).

fof(f55,plain,(
    ! [X0] :
      ( v1_xboole_0(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(cnf_transformation,[],[f46])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ~ ( v1_xboole_0(X2)
        & m1_subset_1(X1,k1_zfmisc_1(X2))
        & r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( ~ v1_xboole_0(X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X2))
      | ~ r2_hidden(X0,X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f9,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0)
        & v1_xboole_0(X0) )
     => ( v2_funct_1(X0)
        & v1_funct_1(X0)
        & v1_relat_1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f28,plain,(
    ! [X0] :
      ( ( v2_funct_1(X0)
        & v1_funct_1(X0)
        & v1_relat_1(X0) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(flattening,[],[f27])).

fof(f67,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_funct_1(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] :
      ( v1_funct_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f64,plain,(
    ! [X0] :
      ( v1_funct_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_relat_1(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f61,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f2,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f2])).

cnf(c_19,plain,
    ( ~ r2_relset_1(X0,X1,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | X3 = X2 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_29,negated_conjecture,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k6_partfun1(sK1)) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_505,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | X3 = X0
    | k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) != X0
    | k6_partfun1(sK1) != X3
    | sK1 != X2
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_29])).

cnf(c_506,plain,
    ( ~ m1_subset_1(k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ m1_subset_1(k6_partfun1(sK1),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | k6_partfun1(sK1) = k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) ),
    inference(unflattening,[status(thm)],[c_505])).

cnf(c_20,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f93])).

cnf(c_514,plain,
    ( ~ m1_subset_1(k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | k6_partfun1(sK1) = k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_506,c_20])).

cnf(c_1234,plain,
    ( k6_partfun1(sK1) = k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
    | m1_subset_1(k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_514])).

cnf(c_35,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_33,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_32,negated_conjecture,
    ( v1_funct_1(sK4) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_30,negated_conjecture,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_23,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1568,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k1_partfun1(X1,X2,sK2,sK1,X0,sK4),k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_23])).

cnf(c_1721,plain,
    ( m1_subset_1(k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK4) ),
    inference(instantiation,[status(thm)],[c_1568])).

cnf(c_1779,plain,
    ( k6_partfun1(sK1) = k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1234,c_35,c_33,c_32,c_30,c_514,c_1721])).

cnf(c_27,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X4,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v2_funct_1(X3)
    | ~ v2_funct_1(k1_partfun1(X4,X1,X1,X2,X3,X0))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1246,plain,
    ( k1_xboole_0 = X0
    | v1_funct_2(X1,X2,X0) != iProver_top
    | v1_funct_2(X3,X4,X2) != iProver_top
    | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X2))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) != iProver_top
    | v2_funct_1(X3) = iProver_top
    | v2_funct_1(k1_partfun1(X4,X2,X2,X0,X3,X1)) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_4973,plain,
    ( sK1 = k1_xboole_0
    | v1_funct_2(sK3,sK1,sK2) != iProver_top
    | v1_funct_2(sK4,sK2,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top
    | v2_funct_1(k6_partfun1(sK1)) != iProver_top
    | v2_funct_1(sK3) = iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1779,c_1246])).

cnf(c_36,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_34,negated_conjecture,
    ( v1_funct_2(sK3,sK1,sK2) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_37,plain,
    ( v1_funct_2(sK3,sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_38,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_39,plain,
    ( v1_funct_1(sK4) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_31,negated_conjecture,
    ( v1_funct_2(sK4,sK2,sK1) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_40,plain,
    ( v1_funct_2(sK4,sK2,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_41,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_1245,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1251,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_2782,plain,
    ( k2_relset_1(sK2,sK1,sK4) = k2_relat_1(sK4) ),
    inference(superposition,[status(thm)],[c_1245,c_1251])).

cnf(c_25,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X2,X0,X1)
    | ~ v1_funct_2(X3,X1,X0)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X1,X0,X3) = X0 ),
    inference(cnf_transformation,[],[f80])).

cnf(c_518,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X3)
    | ~ v1_funct_1(X0)
    | k1_partfun1(X1,X2,X2,X1,X0,X3) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
    | k2_relset_1(X2,X1,X3) = X1
    | k6_partfun1(X1) != k6_partfun1(sK1)
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_25,c_29])).

cnf(c_519,plain,
    ( ~ v1_funct_2(X0,X1,sK1)
    | ~ v1_funct_2(X2,sK1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK1,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X0)
    | k1_partfun1(sK1,X1,X1,sK1,X2,X0) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
    | k2_relset_1(X1,sK1,X0) = sK1
    | k6_partfun1(sK1) != k6_partfun1(sK1) ),
    inference(unflattening,[status(thm)],[c_518])).

cnf(c_598,plain,
    ( ~ v1_funct_2(X0,X1,sK1)
    | ~ v1_funct_2(X2,sK1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK1,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X2)
    | k1_partfun1(sK1,X1,X1,sK1,X2,X0) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
    | k2_relset_1(X1,sK1,X0) = sK1 ),
    inference(equality_resolution_simp,[status(thm)],[c_519])).

cnf(c_1233,plain,
    ( k1_partfun1(sK1,X0,X0,sK1,X1,X2) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
    | k2_relset_1(X0,sK1,X2) = sK1
    | v1_funct_2(X2,X0,sK1) != iProver_top
    | v1_funct_2(X1,sK1,X0) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_598])).

cnf(c_1871,plain,
    ( k1_partfun1(sK1,X0,X0,sK1,X1,X2) != k6_partfun1(sK1)
    | k2_relset_1(X0,sK1,X2) = sK1
    | v1_funct_2(X2,X0,sK1) != iProver_top
    | v1_funct_2(X1,sK1,X0) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1233,c_1779])).

cnf(c_1883,plain,
    ( k2_relset_1(sK2,sK1,sK4) = sK1
    | v1_funct_2(sK3,sK1,sK2) != iProver_top
    | v1_funct_2(sK4,sK2,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
    | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK4) != iProver_top ),
    inference(superposition,[status(thm)],[c_1779,c_1871])).

cnf(c_18,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f96])).

cnf(c_470,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X2,X1)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | X1 != X6
    | X1 != X5
    | k1_partfun1(X1,X2,X2,X1,X0,X3) != X4
    | k2_relset_1(X2,X1,X3) = X1
    | k6_partfun1(X1) != X4 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_25])).

cnf(c_471,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ m1_subset_1(k1_partfun1(X1,X2,X2,X1,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X2,X1,X3) = X1
    | k6_partfun1(X1) != k1_partfun1(X1,X2,X2,X1,X0,X3) ),
    inference(unflattening,[status(thm)],[c_470])).

cnf(c_493,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X2,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X2,X1,X3) = X1
    | k6_partfun1(X1) != k1_partfun1(X1,X2,X2,X1,X0,X3) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_471,c_23])).

cnf(c_1586,plain,
    ( ~ v1_funct_2(X0,sK2,sK1)
    | ~ v1_funct_2(sK3,sK1,sK2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(sK3)
    | k2_relset_1(sK2,sK1,X0) = sK1
    | k6_partfun1(sK1) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,X0) ),
    inference(instantiation,[status(thm)],[c_493])).

cnf(c_1630,plain,
    ( ~ v1_funct_2(sK3,sK1,sK2)
    | ~ v1_funct_2(sK4,sK2,sK1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
    | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK4)
    | k2_relset_1(sK2,sK1,sK4) = sK1
    | k6_partfun1(sK1) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) ),
    inference(instantiation,[status(thm)],[c_1586])).

cnf(c_1993,plain,
    ( k2_relset_1(sK2,sK1,sK4) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1883,c_35,c_34,c_33,c_32,c_31,c_30,c_514,c_1630,c_1721])).

cnf(c_2797,plain,
    ( k2_relat_1(sK4) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_2782,c_1993])).

cnf(c_16,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_21,plain,
    ( v2_funct_2(X0,k2_relat_1(X0))
    | ~ v5_relat_1(X0,k2_relat_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f97])).

cnf(c_28,negated_conjecture,
    ( ~ v2_funct_2(sK4,sK1)
    | ~ v2_funct_1(sK3) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_424,plain,
    ( ~ v5_relat_1(X0,k2_relat_1(X0))
    | ~ v2_funct_1(sK3)
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) != sK1
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_28])).

cnf(c_425,plain,
    ( ~ v5_relat_1(sK4,k2_relat_1(sK4))
    | ~ v2_funct_1(sK3)
    | ~ v1_relat_1(sK4)
    | k2_relat_1(sK4) != sK1 ),
    inference(unflattening,[status(thm)],[c_424])).

cnf(c_445,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v2_funct_1(sK3)
    | ~ v1_relat_1(sK4)
    | k2_relat_1(sK4) != X2
    | k2_relat_1(sK4) != sK1
    | sK4 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_425])).

cnf(c_446,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK4))))
    | ~ v2_funct_1(sK3)
    | ~ v1_relat_1(sK4)
    | k2_relat_1(sK4) != sK1 ),
    inference(unflattening,[status(thm)],[c_445])).

cnf(c_747,plain,
    ( ~ v2_funct_1(sK3)
    | ~ v1_relat_1(sK4)
    | sP0_iProver_split
    | k2_relat_1(sK4) != sK1 ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_446])).

cnf(c_1236,plain,
    ( k2_relat_1(sK4) != sK1
    | v2_funct_1(sK3) != iProver_top
    | v1_relat_1(sK4) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_747])).

cnf(c_2873,plain,
    ( sK1 != sK1
    | v2_funct_1(sK3) != iProver_top
    | v1_relat_1(sK4) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(demodulation,[status(thm)],[c_2797,c_1236])).

cnf(c_2879,plain,
    ( v2_funct_1(sK3) != iProver_top
    | v1_relat_1(sK4) != iProver_top
    | sP0_iProver_split = iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_2873])).

cnf(c_746,plain,
    ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK4))))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_446])).

cnf(c_1237,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK4)))) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_746])).

cnf(c_2874,plain,
    ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,sK1))) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(demodulation,[status(thm)],[c_2797,c_1237])).

cnf(c_2893,plain,
    ( sP0_iProver_split != iProver_top ),
    inference(superposition,[status(thm)],[c_1245,c_2874])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_1256,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_3913,plain,
    ( v1_relat_1(k2_zfmisc_1(sK2,sK1)) != iProver_top
    | v1_relat_1(sK4) = iProver_top ),
    inference(superposition,[status(thm)],[c_1245,c_1256])).

cnf(c_9,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_1255,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_4428,plain,
    ( v1_relat_1(sK4) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3913,c_1255])).

cnf(c_5222,plain,
    ( v2_funct_1(k6_partfun1(sK1)) != iProver_top
    | sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4973,c_36,c_37,c_38,c_39,c_40,c_41,c_2879,c_2893,c_4428])).

cnf(c_5223,plain,
    ( sK1 = k1_xboole_0
    | v2_funct_1(k6_partfun1(sK1)) != iProver_top ),
    inference(renaming,[status(thm)],[c_5222])).

cnf(c_14,plain,
    ( v2_funct_1(k6_partfun1(X0)) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1253,plain,
    ( v2_funct_1(k6_partfun1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_5228,plain,
    ( sK1 = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_5223,c_1253])).

cnf(c_1242,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_5238,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2))) = iProver_top ),
    inference(demodulation,[status(thm)],[c_5228,c_1242])).

cnf(c_4,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f95])).

cnf(c_5246,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_5238,c_4])).

cnf(c_0,plain,
    ( r2_hidden(sK0(X0),X0)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_366,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X2)
    | X0 != X2
    | sK0(X2) != X3 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_6])).

cnf(c_367,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_366])).

cnf(c_1892,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(X0))
    | ~ v1_xboole_0(X0)
    | v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_367])).

cnf(c_1893,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(X0)) != iProver_top
    | v1_xboole_0(X0) != iProver_top
    | v1_xboole_0(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1892])).

cnf(c_1895,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_xboole_0(sK3) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1893])).

cnf(c_11,plain,
    ( v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_10,plain,
    ( v1_funct_1(X0)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_7,plain,
    ( v1_relat_1(X0)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_200,plain,
    ( v2_funct_1(X0)
    | ~ v1_xboole_0(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_11,c_10,c_7])).

cnf(c_1491,plain,
    ( v2_funct_1(sK3)
    | ~ v1_xboole_0(sK3) ),
    inference(instantiation,[status(thm)],[c_200])).

cnf(c_1492,plain,
    ( v2_funct_1(sK3) = iProver_top
    | v1_xboole_0(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1491])).

cnf(c_2,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_106,plain,
    ( v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5246,c_4428,c_2893,c_2879,c_1895,c_1492,c_106])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:48:16 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.78/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.78/1.01  
% 2.78/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.78/1.01  
% 2.78/1.01  ------  iProver source info
% 2.78/1.01  
% 2.78/1.01  git: date: 2020-06-30 10:37:57 +0100
% 2.78/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.78/1.01  git: non_committed_changes: false
% 2.78/1.01  git: last_make_outside_of_git: false
% 2.78/1.01  
% 2.78/1.01  ------ 
% 2.78/1.01  
% 2.78/1.01  ------ Input Options
% 2.78/1.01  
% 2.78/1.01  --out_options                           all
% 2.78/1.01  --tptp_safe_out                         true
% 2.78/1.01  --problem_path                          ""
% 2.78/1.01  --include_path                          ""
% 2.78/1.01  --clausifier                            res/vclausify_rel
% 2.78/1.01  --clausifier_options                    --mode clausify
% 2.78/1.01  --stdin                                 false
% 2.78/1.01  --stats_out                             all
% 2.78/1.01  
% 2.78/1.01  ------ General Options
% 2.78/1.01  
% 2.78/1.01  --fof                                   false
% 2.78/1.01  --time_out_real                         305.
% 2.78/1.01  --time_out_virtual                      -1.
% 2.78/1.01  --symbol_type_check                     false
% 2.78/1.01  --clausify_out                          false
% 2.78/1.01  --sig_cnt_out                           false
% 2.78/1.01  --trig_cnt_out                          false
% 2.78/1.01  --trig_cnt_out_tolerance                1.
% 2.78/1.01  --trig_cnt_out_sk_spl                   false
% 2.78/1.01  --abstr_cl_out                          false
% 2.78/1.01  
% 2.78/1.01  ------ Global Options
% 2.78/1.01  
% 2.78/1.01  --schedule                              default
% 2.78/1.01  --add_important_lit                     false
% 2.78/1.01  --prop_solver_per_cl                    1000
% 2.78/1.01  --min_unsat_core                        false
% 2.78/1.01  --soft_assumptions                      false
% 2.78/1.01  --soft_lemma_size                       3
% 2.78/1.01  --prop_impl_unit_size                   0
% 2.78/1.01  --prop_impl_unit                        []
% 2.78/1.01  --share_sel_clauses                     true
% 2.78/1.01  --reset_solvers                         false
% 2.78/1.01  --bc_imp_inh                            [conj_cone]
% 2.78/1.01  --conj_cone_tolerance                   3.
% 2.78/1.01  --extra_neg_conj                        none
% 2.78/1.01  --large_theory_mode                     true
% 2.78/1.01  --prolific_symb_bound                   200
% 2.78/1.01  --lt_threshold                          2000
% 2.78/1.01  --clause_weak_htbl                      true
% 2.78/1.01  --gc_record_bc_elim                     false
% 2.78/1.01  
% 2.78/1.01  ------ Preprocessing Options
% 2.78/1.01  
% 2.78/1.01  --preprocessing_flag                    true
% 2.78/1.01  --time_out_prep_mult                    0.1
% 2.78/1.01  --splitting_mode                        input
% 2.78/1.01  --splitting_grd                         true
% 2.78/1.01  --splitting_cvd                         false
% 2.78/1.01  --splitting_cvd_svl                     false
% 2.78/1.01  --splitting_nvd                         32
% 2.78/1.01  --sub_typing                            true
% 2.78/1.01  --prep_gs_sim                           true
% 2.78/1.01  --prep_unflatten                        true
% 2.78/1.01  --prep_res_sim                          true
% 2.78/1.01  --prep_upred                            true
% 2.78/1.01  --prep_sem_filter                       exhaustive
% 2.78/1.01  --prep_sem_filter_out                   false
% 2.78/1.01  --pred_elim                             true
% 2.78/1.01  --res_sim_input                         true
% 2.78/1.01  --eq_ax_congr_red                       true
% 2.78/1.01  --pure_diseq_elim                       true
% 2.78/1.01  --brand_transform                       false
% 2.78/1.01  --non_eq_to_eq                          false
% 2.78/1.01  --prep_def_merge                        true
% 2.78/1.01  --prep_def_merge_prop_impl              false
% 2.78/1.01  --prep_def_merge_mbd                    true
% 2.78/1.01  --prep_def_merge_tr_red                 false
% 2.78/1.01  --prep_def_merge_tr_cl                  false
% 2.78/1.01  --smt_preprocessing                     true
% 2.78/1.01  --smt_ac_axioms                         fast
% 2.78/1.01  --preprocessed_out                      false
% 2.78/1.01  --preprocessed_stats                    false
% 2.78/1.01  
% 2.78/1.01  ------ Abstraction refinement Options
% 2.78/1.01  
% 2.78/1.01  --abstr_ref                             []
% 2.78/1.01  --abstr_ref_prep                        false
% 2.78/1.01  --abstr_ref_until_sat                   false
% 2.78/1.01  --abstr_ref_sig_restrict                funpre
% 2.78/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.78/1.01  --abstr_ref_under                       []
% 2.78/1.01  
% 2.78/1.01  ------ SAT Options
% 2.78/1.01  
% 2.78/1.01  --sat_mode                              false
% 2.78/1.01  --sat_fm_restart_options                ""
% 2.78/1.01  --sat_gr_def                            false
% 2.78/1.01  --sat_epr_types                         true
% 2.78/1.01  --sat_non_cyclic_types                  false
% 2.78/1.01  --sat_finite_models                     false
% 2.78/1.01  --sat_fm_lemmas                         false
% 2.78/1.01  --sat_fm_prep                           false
% 2.78/1.01  --sat_fm_uc_incr                        true
% 2.78/1.01  --sat_out_model                         small
% 2.78/1.01  --sat_out_clauses                       false
% 2.78/1.01  
% 2.78/1.01  ------ QBF Options
% 2.78/1.01  
% 2.78/1.01  --qbf_mode                              false
% 2.78/1.01  --qbf_elim_univ                         false
% 2.78/1.01  --qbf_dom_inst                          none
% 2.78/1.01  --qbf_dom_pre_inst                      false
% 2.78/1.01  --qbf_sk_in                             false
% 2.78/1.01  --qbf_pred_elim                         true
% 2.78/1.01  --qbf_split                             512
% 2.78/1.01  
% 2.78/1.01  ------ BMC1 Options
% 2.78/1.01  
% 2.78/1.01  --bmc1_incremental                      false
% 2.78/1.01  --bmc1_axioms                           reachable_all
% 2.78/1.01  --bmc1_min_bound                        0
% 2.78/1.01  --bmc1_max_bound                        -1
% 2.78/1.01  --bmc1_max_bound_default                -1
% 2.78/1.01  --bmc1_symbol_reachability              true
% 2.78/1.01  --bmc1_property_lemmas                  false
% 2.78/1.01  --bmc1_k_induction                      false
% 2.78/1.01  --bmc1_non_equiv_states                 false
% 2.78/1.01  --bmc1_deadlock                         false
% 2.78/1.01  --bmc1_ucm                              false
% 2.78/1.01  --bmc1_add_unsat_core                   none
% 2.78/1.01  --bmc1_unsat_core_children              false
% 2.78/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.78/1.01  --bmc1_out_stat                         full
% 2.78/1.01  --bmc1_ground_init                      false
% 2.78/1.01  --bmc1_pre_inst_next_state              false
% 2.78/1.01  --bmc1_pre_inst_state                   false
% 2.78/1.01  --bmc1_pre_inst_reach_state             false
% 2.78/1.01  --bmc1_out_unsat_core                   false
% 2.78/1.01  --bmc1_aig_witness_out                  false
% 2.78/1.01  --bmc1_verbose                          false
% 2.78/1.01  --bmc1_dump_clauses_tptp                false
% 2.78/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.78/1.01  --bmc1_dump_file                        -
% 2.78/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.78/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.78/1.01  --bmc1_ucm_extend_mode                  1
% 2.78/1.01  --bmc1_ucm_init_mode                    2
% 2.78/1.01  --bmc1_ucm_cone_mode                    none
% 2.78/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.78/1.01  --bmc1_ucm_relax_model                  4
% 2.78/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.78/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.78/1.01  --bmc1_ucm_layered_model                none
% 2.78/1.01  --bmc1_ucm_max_lemma_size               10
% 2.78/1.01  
% 2.78/1.01  ------ AIG Options
% 2.78/1.01  
% 2.78/1.01  --aig_mode                              false
% 2.78/1.01  
% 2.78/1.01  ------ Instantiation Options
% 2.78/1.01  
% 2.78/1.01  --instantiation_flag                    true
% 2.78/1.01  --inst_sos_flag                         false
% 2.78/1.01  --inst_sos_phase                        true
% 2.78/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.78/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.78/1.01  --inst_lit_sel_side                     num_symb
% 2.78/1.01  --inst_solver_per_active                1400
% 2.78/1.01  --inst_solver_calls_frac                1.
% 2.78/1.01  --inst_passive_queue_type               priority_queues
% 2.78/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.78/1.01  --inst_passive_queues_freq              [25;2]
% 2.78/1.01  --inst_dismatching                      true
% 2.78/1.01  --inst_eager_unprocessed_to_passive     true
% 2.78/1.01  --inst_prop_sim_given                   true
% 2.78/1.01  --inst_prop_sim_new                     false
% 2.78/1.01  --inst_subs_new                         false
% 2.78/1.01  --inst_eq_res_simp                      false
% 2.78/1.01  --inst_subs_given                       false
% 2.78/1.01  --inst_orphan_elimination               true
% 2.78/1.01  --inst_learning_loop_flag               true
% 2.78/1.01  --inst_learning_start                   3000
% 2.78/1.01  --inst_learning_factor                  2
% 2.78/1.01  --inst_start_prop_sim_after_learn       3
% 2.78/1.01  --inst_sel_renew                        solver
% 2.78/1.01  --inst_lit_activity_flag                true
% 2.78/1.01  --inst_restr_to_given                   false
% 2.78/1.01  --inst_activity_threshold               500
% 2.78/1.01  --inst_out_proof                        true
% 2.78/1.01  
% 2.78/1.01  ------ Resolution Options
% 2.78/1.01  
% 2.78/1.01  --resolution_flag                       true
% 2.78/1.01  --res_lit_sel                           adaptive
% 2.78/1.01  --res_lit_sel_side                      none
% 2.78/1.01  --res_ordering                          kbo
% 2.78/1.01  --res_to_prop_solver                    active
% 2.78/1.01  --res_prop_simpl_new                    false
% 2.78/1.01  --res_prop_simpl_given                  true
% 2.78/1.01  --res_passive_queue_type                priority_queues
% 2.78/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.78/1.01  --res_passive_queues_freq               [15;5]
% 2.78/1.01  --res_forward_subs                      full
% 2.78/1.01  --res_backward_subs                     full
% 2.78/1.01  --res_forward_subs_resolution           true
% 2.78/1.01  --res_backward_subs_resolution          true
% 2.78/1.01  --res_orphan_elimination                true
% 2.78/1.01  --res_time_limit                        2.
% 2.78/1.01  --res_out_proof                         true
% 2.78/1.01  
% 2.78/1.01  ------ Superposition Options
% 2.78/1.01  
% 2.78/1.01  --superposition_flag                    true
% 2.78/1.01  --sup_passive_queue_type                priority_queues
% 2.78/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.78/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.78/1.01  --demod_completeness_check              fast
% 2.78/1.01  --demod_use_ground                      true
% 2.78/1.01  --sup_to_prop_solver                    passive
% 2.78/1.01  --sup_prop_simpl_new                    true
% 2.78/1.01  --sup_prop_simpl_given                  true
% 2.78/1.01  --sup_fun_splitting                     false
% 2.78/1.01  --sup_smt_interval                      50000
% 2.78/1.01  
% 2.78/1.01  ------ Superposition Simplification Setup
% 2.78/1.01  
% 2.78/1.01  --sup_indices_passive                   []
% 2.78/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.78/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/1.01  --sup_full_bw                           [BwDemod]
% 2.78/1.01  --sup_immed_triv                        [TrivRules]
% 2.78/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.78/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/1.01  --sup_immed_bw_main                     []
% 2.78/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.78/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.78/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.78/1.01  
% 2.78/1.01  ------ Combination Options
% 2.78/1.01  
% 2.78/1.01  --comb_res_mult                         3
% 2.78/1.01  --comb_sup_mult                         2
% 2.78/1.01  --comb_inst_mult                        10
% 2.78/1.01  
% 2.78/1.01  ------ Debug Options
% 2.78/1.01  
% 2.78/1.01  --dbg_backtrace                         false
% 2.78/1.01  --dbg_dump_prop_clauses                 false
% 2.78/1.01  --dbg_dump_prop_clauses_file            -
% 2.78/1.01  --dbg_out_stat                          false
% 2.78/1.01  ------ Parsing...
% 2.78/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.78/1.01  
% 2.78/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 5 0s  sf_e  pe_s  pe_e 
% 2.78/1.01  
% 2.78/1.01  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.78/1.01  
% 2.78/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.78/1.01  ------ Proving...
% 2.78/1.01  ------ Problem Properties 
% 2.78/1.01  
% 2.78/1.01  
% 2.78/1.01  clauses                                 29
% 2.78/1.01  conjectures                             6
% 2.78/1.01  EPR                                     8
% 2.78/1.01  Horn                                    27
% 2.78/1.01  unary                                   13
% 2.78/1.01  binary                                  6
% 2.78/1.01  lits                                    81
% 2.78/1.01  lits eq                                 13
% 2.78/1.01  fd_pure                                 0
% 2.78/1.01  fd_pseudo                               0
% 2.78/1.01  fd_cond                                 2
% 2.78/1.01  fd_pseudo_cond                          0
% 2.78/1.01  AC symbols                              0
% 2.78/1.01  
% 2.78/1.01  ------ Schedule dynamic 5 is on 
% 2.78/1.01  
% 2.78/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.78/1.01  
% 2.78/1.01  
% 2.78/1.01  ------ 
% 2.78/1.01  Current options:
% 2.78/1.01  ------ 
% 2.78/1.01  
% 2.78/1.01  ------ Input Options
% 2.78/1.01  
% 2.78/1.01  --out_options                           all
% 2.78/1.01  --tptp_safe_out                         true
% 2.78/1.01  --problem_path                          ""
% 2.78/1.01  --include_path                          ""
% 2.78/1.01  --clausifier                            res/vclausify_rel
% 2.78/1.01  --clausifier_options                    --mode clausify
% 2.78/1.01  --stdin                                 false
% 2.78/1.01  --stats_out                             all
% 2.78/1.01  
% 2.78/1.01  ------ General Options
% 2.78/1.01  
% 2.78/1.01  --fof                                   false
% 2.78/1.01  --time_out_real                         305.
% 2.78/1.01  --time_out_virtual                      -1.
% 2.78/1.01  --symbol_type_check                     false
% 2.78/1.01  --clausify_out                          false
% 2.78/1.01  --sig_cnt_out                           false
% 2.78/1.01  --trig_cnt_out                          false
% 2.78/1.01  --trig_cnt_out_tolerance                1.
% 2.78/1.01  --trig_cnt_out_sk_spl                   false
% 2.78/1.01  --abstr_cl_out                          false
% 2.78/1.01  
% 2.78/1.01  ------ Global Options
% 2.78/1.01  
% 2.78/1.01  --schedule                              default
% 2.78/1.01  --add_important_lit                     false
% 2.78/1.01  --prop_solver_per_cl                    1000
% 2.78/1.01  --min_unsat_core                        false
% 2.78/1.01  --soft_assumptions                      false
% 2.78/1.01  --soft_lemma_size                       3
% 2.78/1.01  --prop_impl_unit_size                   0
% 2.78/1.01  --prop_impl_unit                        []
% 2.78/1.01  --share_sel_clauses                     true
% 2.78/1.01  --reset_solvers                         false
% 2.78/1.01  --bc_imp_inh                            [conj_cone]
% 2.78/1.01  --conj_cone_tolerance                   3.
% 2.78/1.01  --extra_neg_conj                        none
% 2.78/1.01  --large_theory_mode                     true
% 2.78/1.01  --prolific_symb_bound                   200
% 2.78/1.01  --lt_threshold                          2000
% 2.78/1.01  --clause_weak_htbl                      true
% 2.78/1.01  --gc_record_bc_elim                     false
% 2.78/1.01  
% 2.78/1.01  ------ Preprocessing Options
% 2.78/1.01  
% 2.78/1.01  --preprocessing_flag                    true
% 2.78/1.01  --time_out_prep_mult                    0.1
% 2.78/1.01  --splitting_mode                        input
% 2.78/1.01  --splitting_grd                         true
% 2.78/1.01  --splitting_cvd                         false
% 2.78/1.01  --splitting_cvd_svl                     false
% 2.78/1.01  --splitting_nvd                         32
% 2.78/1.01  --sub_typing                            true
% 2.78/1.01  --prep_gs_sim                           true
% 2.78/1.01  --prep_unflatten                        true
% 2.78/1.01  --prep_res_sim                          true
% 2.78/1.01  --prep_upred                            true
% 2.78/1.01  --prep_sem_filter                       exhaustive
% 2.78/1.01  --prep_sem_filter_out                   false
% 2.78/1.01  --pred_elim                             true
% 2.78/1.01  --res_sim_input                         true
% 2.78/1.01  --eq_ax_congr_red                       true
% 2.78/1.01  --pure_diseq_elim                       true
% 2.78/1.01  --brand_transform                       false
% 2.78/1.01  --non_eq_to_eq                          false
% 2.78/1.01  --prep_def_merge                        true
% 2.78/1.01  --prep_def_merge_prop_impl              false
% 2.78/1.01  --prep_def_merge_mbd                    true
% 2.78/1.01  --prep_def_merge_tr_red                 false
% 2.78/1.01  --prep_def_merge_tr_cl                  false
% 2.78/1.01  --smt_preprocessing                     true
% 2.78/1.01  --smt_ac_axioms                         fast
% 2.78/1.01  --preprocessed_out                      false
% 2.78/1.01  --preprocessed_stats                    false
% 2.78/1.01  
% 2.78/1.01  ------ Abstraction refinement Options
% 2.78/1.01  
% 2.78/1.01  --abstr_ref                             []
% 2.78/1.01  --abstr_ref_prep                        false
% 2.78/1.01  --abstr_ref_until_sat                   false
% 2.78/1.01  --abstr_ref_sig_restrict                funpre
% 2.78/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.78/1.01  --abstr_ref_under                       []
% 2.78/1.01  
% 2.78/1.01  ------ SAT Options
% 2.78/1.01  
% 2.78/1.01  --sat_mode                              false
% 2.78/1.01  --sat_fm_restart_options                ""
% 2.78/1.01  --sat_gr_def                            false
% 2.78/1.01  --sat_epr_types                         true
% 2.78/1.01  --sat_non_cyclic_types                  false
% 2.78/1.01  --sat_finite_models                     false
% 2.78/1.01  --sat_fm_lemmas                         false
% 2.78/1.01  --sat_fm_prep                           false
% 2.78/1.01  --sat_fm_uc_incr                        true
% 2.78/1.01  --sat_out_model                         small
% 2.78/1.01  --sat_out_clauses                       false
% 2.78/1.01  
% 2.78/1.01  ------ QBF Options
% 2.78/1.01  
% 2.78/1.01  --qbf_mode                              false
% 2.78/1.01  --qbf_elim_univ                         false
% 2.78/1.01  --qbf_dom_inst                          none
% 2.78/1.01  --qbf_dom_pre_inst                      false
% 2.78/1.01  --qbf_sk_in                             false
% 2.78/1.01  --qbf_pred_elim                         true
% 2.78/1.01  --qbf_split                             512
% 2.78/1.01  
% 2.78/1.01  ------ BMC1 Options
% 2.78/1.01  
% 2.78/1.01  --bmc1_incremental                      false
% 2.78/1.01  --bmc1_axioms                           reachable_all
% 2.78/1.01  --bmc1_min_bound                        0
% 2.78/1.01  --bmc1_max_bound                        -1
% 2.78/1.01  --bmc1_max_bound_default                -1
% 2.78/1.01  --bmc1_symbol_reachability              true
% 2.78/1.01  --bmc1_property_lemmas                  false
% 2.78/1.01  --bmc1_k_induction                      false
% 2.78/1.01  --bmc1_non_equiv_states                 false
% 2.78/1.01  --bmc1_deadlock                         false
% 2.78/1.01  --bmc1_ucm                              false
% 2.78/1.01  --bmc1_add_unsat_core                   none
% 2.78/1.01  --bmc1_unsat_core_children              false
% 2.78/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.78/1.01  --bmc1_out_stat                         full
% 2.78/1.01  --bmc1_ground_init                      false
% 2.78/1.01  --bmc1_pre_inst_next_state              false
% 2.78/1.01  --bmc1_pre_inst_state                   false
% 2.78/1.01  --bmc1_pre_inst_reach_state             false
% 2.78/1.01  --bmc1_out_unsat_core                   false
% 2.78/1.01  --bmc1_aig_witness_out                  false
% 2.78/1.01  --bmc1_verbose                          false
% 2.78/1.01  --bmc1_dump_clauses_tptp                false
% 2.78/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.78/1.01  --bmc1_dump_file                        -
% 2.78/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.78/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.78/1.01  --bmc1_ucm_extend_mode                  1
% 2.78/1.01  --bmc1_ucm_init_mode                    2
% 2.78/1.01  --bmc1_ucm_cone_mode                    none
% 2.78/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.78/1.01  --bmc1_ucm_relax_model                  4
% 2.78/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.78/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.78/1.01  --bmc1_ucm_layered_model                none
% 2.78/1.01  --bmc1_ucm_max_lemma_size               10
% 2.78/1.01  
% 2.78/1.01  ------ AIG Options
% 2.78/1.01  
% 2.78/1.01  --aig_mode                              false
% 2.78/1.01  
% 2.78/1.01  ------ Instantiation Options
% 2.78/1.01  
% 2.78/1.01  --instantiation_flag                    true
% 2.78/1.01  --inst_sos_flag                         false
% 2.78/1.01  --inst_sos_phase                        true
% 2.78/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.78/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.78/1.01  --inst_lit_sel_side                     none
% 2.78/1.01  --inst_solver_per_active                1400
% 2.78/1.01  --inst_solver_calls_frac                1.
% 2.78/1.01  --inst_passive_queue_type               priority_queues
% 2.78/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.78/1.01  --inst_passive_queues_freq              [25;2]
% 2.78/1.01  --inst_dismatching                      true
% 2.78/1.01  --inst_eager_unprocessed_to_passive     true
% 2.78/1.01  --inst_prop_sim_given                   true
% 2.78/1.01  --inst_prop_sim_new                     false
% 2.78/1.01  --inst_subs_new                         false
% 2.78/1.01  --inst_eq_res_simp                      false
% 2.78/1.01  --inst_subs_given                       false
% 2.78/1.01  --inst_orphan_elimination               true
% 2.78/1.01  --inst_learning_loop_flag               true
% 2.78/1.01  --inst_learning_start                   3000
% 2.78/1.01  --inst_learning_factor                  2
% 2.78/1.01  --inst_start_prop_sim_after_learn       3
% 2.78/1.01  --inst_sel_renew                        solver
% 2.78/1.01  --inst_lit_activity_flag                true
% 2.78/1.01  --inst_restr_to_given                   false
% 2.78/1.01  --inst_activity_threshold               500
% 2.78/1.01  --inst_out_proof                        true
% 2.78/1.01  
% 2.78/1.01  ------ Resolution Options
% 2.78/1.01  
% 2.78/1.01  --resolution_flag                       false
% 2.78/1.01  --res_lit_sel                           adaptive
% 2.78/1.01  --res_lit_sel_side                      none
% 2.78/1.01  --res_ordering                          kbo
% 2.78/1.01  --res_to_prop_solver                    active
% 2.78/1.01  --res_prop_simpl_new                    false
% 2.78/1.01  --res_prop_simpl_given                  true
% 2.78/1.01  --res_passive_queue_type                priority_queues
% 2.78/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.78/1.01  --res_passive_queues_freq               [15;5]
% 2.78/1.01  --res_forward_subs                      full
% 2.78/1.01  --res_backward_subs                     full
% 2.78/1.01  --res_forward_subs_resolution           true
% 2.78/1.01  --res_backward_subs_resolution          true
% 2.78/1.01  --res_orphan_elimination                true
% 2.78/1.01  --res_time_limit                        2.
% 2.78/1.01  --res_out_proof                         true
% 2.78/1.01  
% 2.78/1.01  ------ Superposition Options
% 2.78/1.01  
% 2.78/1.01  --superposition_flag                    true
% 2.78/1.01  --sup_passive_queue_type                priority_queues
% 2.78/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.78/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.78/1.01  --demod_completeness_check              fast
% 2.78/1.01  --demod_use_ground                      true
% 2.78/1.01  --sup_to_prop_solver                    passive
% 2.78/1.01  --sup_prop_simpl_new                    true
% 2.78/1.01  --sup_prop_simpl_given                  true
% 2.78/1.01  --sup_fun_splitting                     false
% 2.78/1.01  --sup_smt_interval                      50000
% 2.78/1.01  
% 2.78/1.01  ------ Superposition Simplification Setup
% 2.78/1.01  
% 2.78/1.01  --sup_indices_passive                   []
% 2.78/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.78/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.78/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/1.01  --sup_full_bw                           [BwDemod]
% 2.78/1.01  --sup_immed_triv                        [TrivRules]
% 2.78/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.78/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/1.01  --sup_immed_bw_main                     []
% 2.78/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.78/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.78/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.78/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.78/1.01  
% 2.78/1.01  ------ Combination Options
% 2.78/1.01  
% 2.78/1.01  --comb_res_mult                         3
% 2.78/1.01  --comb_sup_mult                         2
% 2.78/1.01  --comb_inst_mult                        10
% 2.78/1.01  
% 2.78/1.01  ------ Debug Options
% 2.78/1.01  
% 2.78/1.01  --dbg_backtrace                         false
% 2.78/1.01  --dbg_dump_prop_clauses                 false
% 2.78/1.01  --dbg_dump_prop_clauses_file            -
% 2.78/1.01  --dbg_out_stat                          false
% 2.78/1.01  
% 2.78/1.01  
% 2.78/1.01  
% 2.78/1.01  
% 2.78/1.01  ------ Proving...
% 2.78/1.01  
% 2.78/1.01  
% 2.78/1.01  % SZS status Theorem for theBenchmark.p
% 2.78/1.01  
% 2.78/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 2.78/1.01  
% 2.78/1.01  fof(f13,axiom,(
% 2.78/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f31,plain,(
% 2.78/1.01    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 2.78/1.01    inference(ennf_transformation,[],[f13])).
% 2.78/1.01  
% 2.78/1.01  fof(f32,plain,(
% 2.78/1.01    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/1.01    inference(flattening,[],[f31])).
% 2.78/1.01  
% 2.78/1.01  fof(f49,plain,(
% 2.78/1.01    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/1.01    inference(nnf_transformation,[],[f32])).
% 2.78/1.01  
% 2.78/1.01  fof(f72,plain,(
% 2.78/1.01    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.78/1.01    inference(cnf_transformation,[],[f49])).
% 2.78/1.01  
% 2.78/1.01  fof(f20,conjecture,(
% 2.78/1.01    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) => (v2_funct_2(X3,X0) & v2_funct_1(X2)))))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f21,negated_conjecture,(
% 2.78/1.01    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) => (v2_funct_2(X3,X0) & v2_funct_1(X2)))))),
% 2.78/1.01    inference(negated_conjecture,[],[f20])).
% 2.78/1.01  
% 2.78/1.01  fof(f41,plain,(
% 2.78/1.01    ? [X0,X1,X2] : (? [X3] : (((~v2_funct_2(X3,X0) | ~v2_funct_1(X2)) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 2.78/1.01    inference(ennf_transformation,[],[f21])).
% 2.78/1.01  
% 2.78/1.01  fof(f42,plain,(
% 2.78/1.01    ? [X0,X1,X2] : (? [X3] : ((~v2_funct_2(X3,X0) | ~v2_funct_1(X2)) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 2.78/1.01    inference(flattening,[],[f41])).
% 2.78/1.01  
% 2.78/1.01  fof(f52,plain,(
% 2.78/1.01    ( ! [X2,X0,X1] : (? [X3] : ((~v2_funct_2(X3,X0) | ~v2_funct_1(X2)) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((~v2_funct_2(sK4,X0) | ~v2_funct_1(X2)) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,sK4),k6_partfun1(X0)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(sK4,X1,X0) & v1_funct_1(sK4))) )),
% 2.78/1.01    introduced(choice_axiom,[])).
% 2.78/1.01  
% 2.78/1.01  fof(f51,plain,(
% 2.78/1.01    ? [X0,X1,X2] : (? [X3] : ((~v2_funct_2(X3,X0) | ~v2_funct_1(X2)) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : ((~v2_funct_2(X3,sK1) | ~v2_funct_1(sK3)) & r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK2,sK2,sK1,sK3,X3),k6_partfun1(sK1)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) & v1_funct_2(X3,sK2,sK1) & v1_funct_1(X3)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK3,sK1,sK2) & v1_funct_1(sK3))),
% 2.78/1.01    introduced(choice_axiom,[])).
% 2.78/1.01  
% 2.78/1.01  fof(f53,plain,(
% 2.78/1.01    ((~v2_funct_2(sK4,sK1) | ~v2_funct_1(sK3)) & r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k6_partfun1(sK1)) & m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) & v1_funct_2(sK4,sK2,sK1) & v1_funct_1(sK4)) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) & v1_funct_2(sK3,sK1,sK2) & v1_funct_1(sK3)),
% 2.78/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3,sK4])],[f42,f52,f51])).
% 2.78/1.01  
% 2.78/1.01  fof(f89,plain,(
% 2.78/1.01    r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k6_partfun1(sK1))),
% 2.78/1.01    inference(cnf_transformation,[],[f53])).
% 2.78/1.01  
% 2.78/1.01  fof(f14,axiom,(
% 2.78/1.01    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f74,plain,(
% 2.78/1.01    ( ! [X0] : (m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 2.78/1.01    inference(cnf_transformation,[],[f14])).
% 2.78/1.01  
% 2.78/1.01  fof(f17,axiom,(
% 2.78/1.01    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f79,plain,(
% 2.78/1.01    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f17])).
% 2.78/1.01  
% 2.78/1.01  fof(f93,plain,(
% 2.78/1.01    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 2.78/1.01    inference(definition_unfolding,[],[f74,f79])).
% 2.78/1.01  
% 2.78/1.01  fof(f83,plain,(
% 2.78/1.01    v1_funct_1(sK3)),
% 2.78/1.01    inference(cnf_transformation,[],[f53])).
% 2.78/1.01  
% 2.78/1.01  fof(f85,plain,(
% 2.78/1.01    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))),
% 2.78/1.01    inference(cnf_transformation,[],[f53])).
% 2.78/1.01  
% 2.78/1.01  fof(f86,plain,(
% 2.78/1.01    v1_funct_1(sK4)),
% 2.78/1.01    inference(cnf_transformation,[],[f53])).
% 2.78/1.01  
% 2.78/1.01  fof(f88,plain,(
% 2.78/1.01    m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))),
% 2.78/1.01    inference(cnf_transformation,[],[f53])).
% 2.78/1.01  
% 2.78/1.01  fof(f16,axiom,(
% 2.78/1.01    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f35,plain,(
% 2.78/1.01    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 2.78/1.01    inference(ennf_transformation,[],[f16])).
% 2.78/1.01  
% 2.78/1.01  fof(f36,plain,(
% 2.78/1.01    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 2.78/1.01    inference(flattening,[],[f35])).
% 2.78/1.01  
% 2.78/1.01  fof(f78,plain,(
% 2.78/1.01    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f36])).
% 2.78/1.01  
% 2.78/1.01  fof(f19,axiom,(
% 2.78/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => (v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)) => (v2_funct_1(X3) | (k1_xboole_0 != X1 & k1_xboole_0 = X2)))))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f39,plain,(
% 2.78/1.01    ! [X0,X1,X2,X3] : (! [X4] : (((v2_funct_1(X3) | (k1_xboole_0 != X1 & k1_xboole_0 = X2)) | ~v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X4,X1,X2) | ~v1_funct_1(X4))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 2.78/1.01    inference(ennf_transformation,[],[f19])).
% 2.78/1.01  
% 2.78/1.01  fof(f40,plain,(
% 2.78/1.01    ! [X0,X1,X2,X3] : (! [X4] : (v2_funct_1(X3) | (k1_xboole_0 != X1 & k1_xboole_0 = X2) | ~v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X4,X1,X2) | ~v1_funct_1(X4)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 2.78/1.01    inference(flattening,[],[f39])).
% 2.78/1.01  
% 2.78/1.01  fof(f81,plain,(
% 2.78/1.01    ( ! [X4,X2,X0,X3,X1] : (v2_funct_1(X3) | k1_xboole_0 = X2 | ~v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X4,X1,X2) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f40])).
% 2.78/1.01  
% 2.78/1.01  fof(f84,plain,(
% 2.78/1.01    v1_funct_2(sK3,sK1,sK2)),
% 2.78/1.01    inference(cnf_transformation,[],[f53])).
% 2.78/1.01  
% 2.78/1.01  fof(f87,plain,(
% 2.78/1.01    v1_funct_2(sK4,sK2,sK1)),
% 2.78/1.01    inference(cnf_transformation,[],[f53])).
% 2.78/1.01  
% 2.78/1.01  fof(f12,axiom,(
% 2.78/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relset_1(X0,X1,X2) = k2_relat_1(X2))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f30,plain,(
% 2.78/1.01    ! [X0,X1,X2] : (k2_relset_1(X0,X1,X2) = k2_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/1.01    inference(ennf_transformation,[],[f12])).
% 2.78/1.01  
% 2.78/1.01  fof(f71,plain,(
% 2.78/1.01    ( ! [X2,X0,X1] : (k2_relset_1(X0,X1,X2) = k2_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.78/1.01    inference(cnf_transformation,[],[f30])).
% 2.78/1.01  
% 2.78/1.01  fof(f18,axiom,(
% 2.78/1.01    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) => k2_relset_1(X0,X1,X2) = X1)))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f37,plain,(
% 2.78/1.01    ! [X0,X1,X2] : (! [X3] : ((k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 2.78/1.01    inference(ennf_transformation,[],[f18])).
% 2.78/1.01  
% 2.78/1.01  fof(f38,plain,(
% 2.78/1.01    ! [X0,X1,X2] : (! [X3] : (k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 2.78/1.01    inference(flattening,[],[f37])).
% 2.78/1.01  
% 2.78/1.01  fof(f80,plain,(
% 2.78/1.01    ( ! [X2,X0,X3,X1] : (k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f38])).
% 2.78/1.01  
% 2.78/1.01  fof(f73,plain,(
% 2.78/1.01    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.78/1.01    inference(cnf_transformation,[],[f49])).
% 2.78/1.01  
% 2.78/1.01  fof(f96,plain,(
% 2.78/1.01    ( ! [X0,X3,X1] : (r2_relset_1(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.78/1.01    inference(equality_resolution,[],[f73])).
% 2.78/1.01  
% 2.78/1.01  fof(f11,axiom,(
% 2.78/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f22,plain,(
% 2.78/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 2.78/1.01    inference(pure_predicate_removal,[],[f11])).
% 2.78/1.01  
% 2.78/1.01  fof(f29,plain,(
% 2.78/1.01    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.78/1.01    inference(ennf_transformation,[],[f22])).
% 2.78/1.01  
% 2.78/1.01  fof(f70,plain,(
% 2.78/1.01    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.78/1.01    inference(cnf_transformation,[],[f29])).
% 2.78/1.01  
% 2.78/1.01  fof(f15,axiom,(
% 2.78/1.01    ! [X0,X1] : ((v5_relat_1(X1,X0) & v1_relat_1(X1)) => (v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f33,plain,(
% 2.78/1.01    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | (~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 2.78/1.01    inference(ennf_transformation,[],[f15])).
% 2.78/1.01  
% 2.78/1.01  fof(f34,plain,(
% 2.78/1.01    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.78/1.01    inference(flattening,[],[f33])).
% 2.78/1.01  
% 2.78/1.01  fof(f50,plain,(
% 2.78/1.01    ! [X0,X1] : (((v2_funct_2(X1,X0) | k2_relat_1(X1) != X0) & (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0))) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.78/1.01    inference(nnf_transformation,[],[f34])).
% 2.78/1.01  
% 2.78/1.01  fof(f76,plain,(
% 2.78/1.01    ( ! [X0,X1] : (v2_funct_2(X1,X0) | k2_relat_1(X1) != X0 | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f50])).
% 2.78/1.01  
% 2.78/1.01  fof(f97,plain,(
% 2.78/1.01    ( ! [X1] : (v2_funct_2(X1,k2_relat_1(X1)) | ~v5_relat_1(X1,k2_relat_1(X1)) | ~v1_relat_1(X1)) )),
% 2.78/1.01    inference(equality_resolution,[],[f76])).
% 2.78/1.01  
% 2.78/1.01  fof(f90,plain,(
% 2.78/1.01    ~v2_funct_2(sK4,sK1) | ~v2_funct_1(sK3)),
% 2.78/1.01    inference(cnf_transformation,[],[f53])).
% 2.78/1.01  
% 2.78/1.01  fof(f6,axiom,(
% 2.78/1.01    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f25,plain,(
% 2.78/1.01    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.78/1.01    inference(ennf_transformation,[],[f6])).
% 2.78/1.01  
% 2.78/1.01  fof(f62,plain,(
% 2.78/1.01    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f25])).
% 2.78/1.01  
% 2.78/1.01  fof(f7,axiom,(
% 2.78/1.01    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f63,plain,(
% 2.78/1.01    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.78/1.01    inference(cnf_transformation,[],[f7])).
% 2.78/1.01  
% 2.78/1.01  fof(f10,axiom,(
% 2.78/1.01    ! [X0] : (v2_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f69,plain,(
% 2.78/1.01    ( ! [X0] : (v2_funct_1(k6_relat_1(X0))) )),
% 2.78/1.01    inference(cnf_transformation,[],[f10])).
% 2.78/1.01  
% 2.78/1.01  fof(f91,plain,(
% 2.78/1.01    ( ! [X0] : (v2_funct_1(k6_partfun1(X0))) )),
% 2.78/1.01    inference(definition_unfolding,[],[f69,f79])).
% 2.78/1.01  
% 2.78/1.01  fof(f3,axiom,(
% 2.78/1.01    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f47,plain,(
% 2.78/1.01    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 2.78/1.01    inference(nnf_transformation,[],[f3])).
% 2.78/1.01  
% 2.78/1.01  fof(f48,plain,(
% 2.78/1.01    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 2.78/1.01    inference(flattening,[],[f47])).
% 2.78/1.01  
% 2.78/1.01  fof(f58,plain,(
% 2.78/1.01    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 2.78/1.01    inference(cnf_transformation,[],[f48])).
% 2.78/1.01  
% 2.78/1.01  fof(f95,plain,(
% 2.78/1.01    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 2.78/1.01    inference(equality_resolution,[],[f58])).
% 2.78/1.01  
% 2.78/1.01  fof(f1,axiom,(
% 2.78/1.01    ! [X0] : (v1_xboole_0(X0) <=> ! [X1] : ~r2_hidden(X1,X0))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f43,plain,(
% 2.78/1.01    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X1] : ~r2_hidden(X1,X0) | ~v1_xboole_0(X0)))),
% 2.78/1.01    inference(nnf_transformation,[],[f1])).
% 2.78/1.01  
% 2.78/1.01  fof(f44,plain,(
% 2.78/1.01    ! [X0] : ((v1_xboole_0(X0) | ? [X1] : r2_hidden(X1,X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.78/1.01    inference(rectify,[],[f43])).
% 2.78/1.01  
% 2.78/1.01  fof(f45,plain,(
% 2.78/1.01    ! [X0] : (? [X1] : r2_hidden(X1,X0) => r2_hidden(sK0(X0),X0))),
% 2.78/1.01    introduced(choice_axiom,[])).
% 2.78/1.01  
% 2.78/1.01  fof(f46,plain,(
% 2.78/1.01    ! [X0] : ((v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) & (! [X2] : ~r2_hidden(X2,X0) | ~v1_xboole_0(X0)))),
% 2.78/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f44,f45])).
% 2.78/1.01  
% 2.78/1.01  fof(f55,plain,(
% 2.78/1.01    ( ! [X0] : (v1_xboole_0(X0) | r2_hidden(sK0(X0),X0)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f46])).
% 2.78/1.01  
% 2.78/1.01  fof(f4,axiom,(
% 2.78/1.01    ! [X0,X1,X2] : ~(v1_xboole_0(X2) & m1_subset_1(X1,k1_zfmisc_1(X2)) & r2_hidden(X0,X1))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f23,plain,(
% 2.78/1.01    ! [X0,X1,X2] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1))),
% 2.78/1.01    inference(ennf_transformation,[],[f4])).
% 2.78/1.01  
% 2.78/1.01  fof(f60,plain,(
% 2.78/1.01    ( ! [X2,X0,X1] : (~v1_xboole_0(X2) | ~m1_subset_1(X1,k1_zfmisc_1(X2)) | ~r2_hidden(X0,X1)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f23])).
% 2.78/1.01  
% 2.78/1.01  fof(f9,axiom,(
% 2.78/1.01    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0) & v1_xboole_0(X0)) => (v2_funct_1(X0) & v1_funct_1(X0) & v1_relat_1(X0)))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f27,plain,(
% 2.78/1.01    ! [X0] : ((v2_funct_1(X0) & v1_funct_1(X0) & v1_relat_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0) | ~v1_xboole_0(X0)))),
% 2.78/1.01    inference(ennf_transformation,[],[f9])).
% 2.78/1.01  
% 2.78/1.01  fof(f28,plain,(
% 2.78/1.01    ! [X0] : ((v2_funct_1(X0) & v1_funct_1(X0) & v1_relat_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0) | ~v1_xboole_0(X0))),
% 2.78/1.01    inference(flattening,[],[f27])).
% 2.78/1.01  
% 2.78/1.01  fof(f67,plain,(
% 2.78/1.01    ( ! [X0] : (v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0) | ~v1_xboole_0(X0)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f28])).
% 2.78/1.01  
% 2.78/1.01  fof(f8,axiom,(
% 2.78/1.01    ! [X0] : (v1_xboole_0(X0) => v1_funct_1(X0))),
% 2.78/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.01  
% 2.78/1.01  fof(f26,plain,(
% 2.78/1.01    ! [X0] : (v1_funct_1(X0) | ~v1_xboole_0(X0))),
% 2.78/1.01    inference(ennf_transformation,[],[f8])).
% 2.78/1.01  
% 2.78/1.01  fof(f64,plain,(
% 2.78/1.01    ( ! [X0] : (v1_funct_1(X0) | ~v1_xboole_0(X0)) )),
% 2.78/1.01    inference(cnf_transformation,[],[f26])).
% 2.78/1.02  
% 2.78/1.02  fof(f5,axiom,(
% 2.78/1.02    ! [X0] : (v1_xboole_0(X0) => v1_relat_1(X0))),
% 2.78/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.02  
% 2.78/1.02  fof(f24,plain,(
% 2.78/1.02    ! [X0] : (v1_relat_1(X0) | ~v1_xboole_0(X0))),
% 2.78/1.02    inference(ennf_transformation,[],[f5])).
% 2.78/1.02  
% 2.78/1.02  fof(f61,plain,(
% 2.78/1.02    ( ! [X0] : (v1_relat_1(X0) | ~v1_xboole_0(X0)) )),
% 2.78/1.02    inference(cnf_transformation,[],[f24])).
% 2.78/1.02  
% 2.78/1.02  fof(f2,axiom,(
% 2.78/1.02    v1_xboole_0(k1_xboole_0)),
% 2.78/1.02    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.78/1.02  
% 2.78/1.02  fof(f56,plain,(
% 2.78/1.02    v1_xboole_0(k1_xboole_0)),
% 2.78/1.02    inference(cnf_transformation,[],[f2])).
% 2.78/1.02  
% 2.78/1.02  cnf(c_19,plain,
% 2.78/1.02      ( ~ r2_relset_1(X0,X1,X2,X3)
% 2.78/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.78/1.02      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.78/1.02      | X3 = X2 ),
% 2.78/1.02      inference(cnf_transformation,[],[f72]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_29,negated_conjecture,
% 2.78/1.02      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k6_partfun1(sK1)) ),
% 2.78/1.02      inference(cnf_transformation,[],[f89]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_505,plain,
% 2.78/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | X3 = X0
% 2.78/1.02      | k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) != X0
% 2.78/1.02      | k6_partfun1(sK1) != X3
% 2.78/1.02      | sK1 != X2
% 2.78/1.02      | sK1 != X1 ),
% 2.78/1.02      inference(resolution_lifted,[status(thm)],[c_19,c_29]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_506,plain,
% 2.78/1.02      ( ~ m1_subset_1(k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 2.78/1.02      | ~ m1_subset_1(k6_partfun1(sK1),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 2.78/1.02      | k6_partfun1(sK1) = k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) ),
% 2.78/1.02      inference(unflattening,[status(thm)],[c_505]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_20,plain,
% 2.78/1.02      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 2.78/1.02      inference(cnf_transformation,[],[f93]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_514,plain,
% 2.78/1.02      ( ~ m1_subset_1(k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 2.78/1.02      | k6_partfun1(sK1) = k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) ),
% 2.78/1.02      inference(forward_subsumption_resolution,
% 2.78/1.02                [status(thm)],
% 2.78/1.02                [c_506,c_20]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1234,plain,
% 2.78/1.02      ( k6_partfun1(sK1) = k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
% 2.78/1.02      | m1_subset_1(k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_514]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_35,negated_conjecture,
% 2.78/1.02      ( v1_funct_1(sK3) ),
% 2.78/1.02      inference(cnf_transformation,[],[f83]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_33,negated_conjecture,
% 2.78/1.02      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) ),
% 2.78/1.02      inference(cnf_transformation,[],[f85]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_32,negated_conjecture,
% 2.78/1.02      ( v1_funct_1(sK4) ),
% 2.78/1.02      inference(cnf_transformation,[],[f86]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_30,negated_conjecture,
% 2.78/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
% 2.78/1.02      inference(cnf_transformation,[],[f88]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_23,plain,
% 2.78/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 2.78/1.02      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | ~ v1_funct_1(X3) ),
% 2.78/1.02      inference(cnf_transformation,[],[f78]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1568,plain,
% 2.78/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | m1_subset_1(k1_partfun1(X1,X2,sK2,sK1,X0,sK4),k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
% 2.78/1.02      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | ~ v1_funct_1(sK4) ),
% 2.78/1.02      inference(instantiation,[status(thm)],[c_23]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1721,plain,
% 2.78/1.02      ( m1_subset_1(k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 2.78/1.02      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.78/1.02      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
% 2.78/1.02      | ~ v1_funct_1(sK3)
% 2.78/1.02      | ~ v1_funct_1(sK4) ),
% 2.78/1.02      inference(instantiation,[status(thm)],[c_1568]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1779,plain,
% 2.78/1.02      ( k6_partfun1(sK1) = k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) ),
% 2.78/1.02      inference(global_propositional_subsumption,
% 2.78/1.02                [status(thm)],
% 2.78/1.02                [c_1234,c_35,c_33,c_32,c_30,c_514,c_1721]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_27,plain,
% 2.78/1.02      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/1.02      | ~ v1_funct_2(X3,X4,X1)
% 2.78/1.02      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X1)))
% 2.78/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | v2_funct_1(X3)
% 2.78/1.02      | ~ v2_funct_1(k1_partfun1(X4,X1,X1,X2,X3,X0))
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | ~ v1_funct_1(X3)
% 2.78/1.02      | k1_xboole_0 = X2 ),
% 2.78/1.02      inference(cnf_transformation,[],[f81]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1246,plain,
% 2.78/1.02      ( k1_xboole_0 = X0
% 2.78/1.02      | v1_funct_2(X1,X2,X0) != iProver_top
% 2.78/1.02      | v1_funct_2(X3,X4,X2) != iProver_top
% 2.78/1.02      | m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X2))) != iProver_top
% 2.78/1.02      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) != iProver_top
% 2.78/1.02      | v2_funct_1(X3) = iProver_top
% 2.78/1.02      | v2_funct_1(k1_partfun1(X4,X2,X2,X0,X3,X1)) != iProver_top
% 2.78/1.02      | v1_funct_1(X1) != iProver_top
% 2.78/1.02      | v1_funct_1(X3) != iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_4973,plain,
% 2.78/1.02      ( sK1 = k1_xboole_0
% 2.78/1.02      | v1_funct_2(sK3,sK1,sK2) != iProver_top
% 2.78/1.02      | v1_funct_2(sK4,sK2,sK1) != iProver_top
% 2.78/1.02      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 2.78/1.02      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top
% 2.78/1.02      | v2_funct_1(k6_partfun1(sK1)) != iProver_top
% 2.78/1.02      | v2_funct_1(sK3) = iProver_top
% 2.78/1.02      | v1_funct_1(sK3) != iProver_top
% 2.78/1.02      | v1_funct_1(sK4) != iProver_top ),
% 2.78/1.02      inference(superposition,[status(thm)],[c_1779,c_1246]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_36,plain,
% 2.78/1.02      ( v1_funct_1(sK3) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_34,negated_conjecture,
% 2.78/1.02      ( v1_funct_2(sK3,sK1,sK2) ),
% 2.78/1.02      inference(cnf_transformation,[],[f84]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_37,plain,
% 2.78/1.02      ( v1_funct_2(sK3,sK1,sK2) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_38,plain,
% 2.78/1.02      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_39,plain,
% 2.78/1.02      ( v1_funct_1(sK4) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_31,negated_conjecture,
% 2.78/1.02      ( v1_funct_2(sK4,sK2,sK1) ),
% 2.78/1.02      inference(cnf_transformation,[],[f87]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_40,plain,
% 2.78/1.02      ( v1_funct_2(sK4,sK2,sK1) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_41,plain,
% 2.78/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1245,plain,
% 2.78/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_17,plain,
% 2.78/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.78/1.02      inference(cnf_transformation,[],[f71]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1251,plain,
% 2.78/1.02      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.78/1.02      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_2782,plain,
% 2.78/1.02      ( k2_relset_1(sK2,sK1,sK4) = k2_relat_1(sK4) ),
% 2.78/1.02      inference(superposition,[status(thm)],[c_1245,c_1251]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_25,plain,
% 2.78/1.02      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 2.78/1.02      | ~ v1_funct_2(X2,X0,X1)
% 2.78/1.02      | ~ v1_funct_2(X3,X1,X0)
% 2.78/1.02      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 2.78/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 2.78/1.02      | ~ v1_funct_1(X2)
% 2.78/1.02      | ~ v1_funct_1(X3)
% 2.78/1.02      | k2_relset_1(X1,X0,X3) = X0 ),
% 2.78/1.02      inference(cnf_transformation,[],[f80]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_518,plain,
% 2.78/1.02      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/1.02      | ~ v1_funct_2(X3,X2,X1)
% 2.78/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 2.78/1.02      | ~ v1_funct_1(X3)
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | k1_partfun1(X1,X2,X2,X1,X0,X3) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
% 2.78/1.02      | k2_relset_1(X2,X1,X3) = X1
% 2.78/1.02      | k6_partfun1(X1) != k6_partfun1(sK1)
% 2.78/1.02      | sK1 != X1 ),
% 2.78/1.02      inference(resolution_lifted,[status(thm)],[c_25,c_29]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_519,plain,
% 2.78/1.02      ( ~ v1_funct_2(X0,X1,sK1)
% 2.78/1.02      | ~ v1_funct_2(X2,sK1,X1)
% 2.78/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
% 2.78/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK1,X1)))
% 2.78/1.02      | ~ v1_funct_1(X2)
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | k1_partfun1(sK1,X1,X1,sK1,X2,X0) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
% 2.78/1.02      | k2_relset_1(X1,sK1,X0) = sK1
% 2.78/1.02      | k6_partfun1(sK1) != k6_partfun1(sK1) ),
% 2.78/1.02      inference(unflattening,[status(thm)],[c_518]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_598,plain,
% 2.78/1.02      ( ~ v1_funct_2(X0,X1,sK1)
% 2.78/1.02      | ~ v1_funct_2(X2,sK1,X1)
% 2.78/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
% 2.78/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK1,X1)))
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | ~ v1_funct_1(X2)
% 2.78/1.02      | k1_partfun1(sK1,X1,X1,sK1,X2,X0) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
% 2.78/1.02      | k2_relset_1(X1,sK1,X0) = sK1 ),
% 2.78/1.02      inference(equality_resolution_simp,[status(thm)],[c_519]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1233,plain,
% 2.78/1.02      ( k1_partfun1(sK1,X0,X0,sK1,X1,X2) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4)
% 2.78/1.02      | k2_relset_1(X0,sK1,X2) = sK1
% 2.78/1.02      | v1_funct_2(X2,X0,sK1) != iProver_top
% 2.78/1.02      | v1_funct_2(X1,sK1,X0) != iProver_top
% 2.78/1.02      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1))) != iProver_top
% 2.78/1.02      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
% 2.78/1.02      | v1_funct_1(X2) != iProver_top
% 2.78/1.02      | v1_funct_1(X1) != iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_598]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1871,plain,
% 2.78/1.02      ( k1_partfun1(sK1,X0,X0,sK1,X1,X2) != k6_partfun1(sK1)
% 2.78/1.02      | k2_relset_1(X0,sK1,X2) = sK1
% 2.78/1.02      | v1_funct_2(X2,X0,sK1) != iProver_top
% 2.78/1.02      | v1_funct_2(X1,sK1,X0) != iProver_top
% 2.78/1.02      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1))) != iProver_top
% 2.78/1.02      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
% 2.78/1.02      | v1_funct_1(X1) != iProver_top
% 2.78/1.02      | v1_funct_1(X2) != iProver_top ),
% 2.78/1.02      inference(light_normalisation,[status(thm)],[c_1233,c_1779]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1883,plain,
% 2.78/1.02      ( k2_relset_1(sK2,sK1,sK4) = sK1
% 2.78/1.02      | v1_funct_2(sK3,sK1,sK2) != iProver_top
% 2.78/1.02      | v1_funct_2(sK4,sK2,sK1) != iProver_top
% 2.78/1.02      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) != iProver_top
% 2.78/1.02      | m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top
% 2.78/1.02      | v1_funct_1(sK3) != iProver_top
% 2.78/1.02      | v1_funct_1(sK4) != iProver_top ),
% 2.78/1.02      inference(superposition,[status(thm)],[c_1779,c_1871]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_18,plain,
% 2.78/1.02      ( r2_relset_1(X0,X1,X2,X2)
% 2.78/1.02      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 2.78/1.02      inference(cnf_transformation,[],[f96]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_470,plain,
% 2.78/1.02      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/1.02      | ~ v1_funct_2(X3,X2,X1)
% 2.78/1.02      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X5,X6)))
% 2.78/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | ~ v1_funct_1(X3)
% 2.78/1.02      | X1 != X6
% 2.78/1.02      | X1 != X5
% 2.78/1.02      | k1_partfun1(X1,X2,X2,X1,X0,X3) != X4
% 2.78/1.02      | k2_relset_1(X2,X1,X3) = X1
% 2.78/1.02      | k6_partfun1(X1) != X4 ),
% 2.78/1.02      inference(resolution_lifted,[status(thm)],[c_18,c_25]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_471,plain,
% 2.78/1.02      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/1.02      | ~ v1_funct_2(X3,X2,X1)
% 2.78/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 2.78/1.02      | ~ m1_subset_1(k1_partfun1(X1,X2,X2,X1,X0,X3),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | ~ v1_funct_1(X3)
% 2.78/1.02      | k2_relset_1(X2,X1,X3) = X1
% 2.78/1.02      | k6_partfun1(X1) != k1_partfun1(X1,X2,X2,X1,X0,X3) ),
% 2.78/1.02      inference(unflattening,[status(thm)],[c_470]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_493,plain,
% 2.78/1.02      ( ~ v1_funct_2(X0,X1,X2)
% 2.78/1.02      | ~ v1_funct_2(X3,X2,X1)
% 2.78/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | ~ v1_funct_1(X3)
% 2.78/1.02      | k2_relset_1(X2,X1,X3) = X1
% 2.78/1.02      | k6_partfun1(X1) != k1_partfun1(X1,X2,X2,X1,X0,X3) ),
% 2.78/1.02      inference(forward_subsumption_resolution,
% 2.78/1.02                [status(thm)],
% 2.78/1.02                [c_471,c_23]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1586,plain,
% 2.78/1.02      ( ~ v1_funct_2(X0,sK2,sK1)
% 2.78/1.02      | ~ v1_funct_2(sK3,sK1,sK2)
% 2.78/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
% 2.78/1.02      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | ~ v1_funct_1(sK3)
% 2.78/1.02      | k2_relset_1(sK2,sK1,X0) = sK1
% 2.78/1.02      | k6_partfun1(sK1) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,X0) ),
% 2.78/1.02      inference(instantiation,[status(thm)],[c_493]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1630,plain,
% 2.78/1.02      ( ~ v1_funct_2(sK3,sK1,sK2)
% 2.78/1.02      | ~ v1_funct_2(sK4,sK2,sK1)
% 2.78/1.02      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2)))
% 2.78/1.02      | ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
% 2.78/1.02      | ~ v1_funct_1(sK3)
% 2.78/1.02      | ~ v1_funct_1(sK4)
% 2.78/1.02      | k2_relset_1(sK2,sK1,sK4) = sK1
% 2.78/1.02      | k6_partfun1(sK1) != k1_partfun1(sK1,sK2,sK2,sK1,sK3,sK4) ),
% 2.78/1.02      inference(instantiation,[status(thm)],[c_1586]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1993,plain,
% 2.78/1.02      ( k2_relset_1(sK2,sK1,sK4) = sK1 ),
% 2.78/1.02      inference(global_propositional_subsumption,
% 2.78/1.02                [status(thm)],
% 2.78/1.02                [c_1883,c_35,c_34,c_33,c_32,c_31,c_30,c_514,c_1630,
% 2.78/1.02                 c_1721]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_2797,plain,
% 2.78/1.02      ( k2_relat_1(sK4) = sK1 ),
% 2.78/1.02      inference(light_normalisation,[status(thm)],[c_2782,c_1993]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_16,plain,
% 2.78/1.02      ( v5_relat_1(X0,X1)
% 2.78/1.02      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 2.78/1.02      inference(cnf_transformation,[],[f70]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_21,plain,
% 2.78/1.02      ( v2_funct_2(X0,k2_relat_1(X0))
% 2.78/1.02      | ~ v5_relat_1(X0,k2_relat_1(X0))
% 2.78/1.02      | ~ v1_relat_1(X0) ),
% 2.78/1.02      inference(cnf_transformation,[],[f97]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_28,negated_conjecture,
% 2.78/1.02      ( ~ v2_funct_2(sK4,sK1) | ~ v2_funct_1(sK3) ),
% 2.78/1.02      inference(cnf_transformation,[],[f90]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_424,plain,
% 2.78/1.02      ( ~ v5_relat_1(X0,k2_relat_1(X0))
% 2.78/1.02      | ~ v2_funct_1(sK3)
% 2.78/1.02      | ~ v1_relat_1(X0)
% 2.78/1.02      | k2_relat_1(X0) != sK1
% 2.78/1.02      | sK4 != X0 ),
% 2.78/1.02      inference(resolution_lifted,[status(thm)],[c_21,c_28]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_425,plain,
% 2.78/1.02      ( ~ v5_relat_1(sK4,k2_relat_1(sK4))
% 2.78/1.02      | ~ v2_funct_1(sK3)
% 2.78/1.02      | ~ v1_relat_1(sK4)
% 2.78/1.02      | k2_relat_1(sK4) != sK1 ),
% 2.78/1.02      inference(unflattening,[status(thm)],[c_424]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_445,plain,
% 2.78/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.78/1.02      | ~ v2_funct_1(sK3)
% 2.78/1.02      | ~ v1_relat_1(sK4)
% 2.78/1.02      | k2_relat_1(sK4) != X2
% 2.78/1.02      | k2_relat_1(sK4) != sK1
% 2.78/1.02      | sK4 != X0 ),
% 2.78/1.02      inference(resolution_lifted,[status(thm)],[c_16,c_425]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_446,plain,
% 2.78/1.02      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK4))))
% 2.78/1.02      | ~ v2_funct_1(sK3)
% 2.78/1.02      | ~ v1_relat_1(sK4)
% 2.78/1.02      | k2_relat_1(sK4) != sK1 ),
% 2.78/1.02      inference(unflattening,[status(thm)],[c_445]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_747,plain,
% 2.78/1.02      ( ~ v2_funct_1(sK3)
% 2.78/1.02      | ~ v1_relat_1(sK4)
% 2.78/1.02      | sP0_iProver_split
% 2.78/1.02      | k2_relat_1(sK4) != sK1 ),
% 2.78/1.02      inference(splitting,
% 2.78/1.02                [splitting(split),new_symbols(definition,[])],
% 2.78/1.02                [c_446]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1236,plain,
% 2.78/1.02      ( k2_relat_1(sK4) != sK1
% 2.78/1.02      | v2_funct_1(sK3) != iProver_top
% 2.78/1.02      | v1_relat_1(sK4) != iProver_top
% 2.78/1.02      | sP0_iProver_split = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_747]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_2873,plain,
% 2.78/1.02      ( sK1 != sK1
% 2.78/1.02      | v2_funct_1(sK3) != iProver_top
% 2.78/1.02      | v1_relat_1(sK4) != iProver_top
% 2.78/1.02      | sP0_iProver_split = iProver_top ),
% 2.78/1.02      inference(demodulation,[status(thm)],[c_2797,c_1236]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_2879,plain,
% 2.78/1.02      ( v2_funct_1(sK3) != iProver_top
% 2.78/1.02      | v1_relat_1(sK4) != iProver_top
% 2.78/1.02      | sP0_iProver_split = iProver_top ),
% 2.78/1.02      inference(equality_resolution_simp,[status(thm)],[c_2873]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_746,plain,
% 2.78/1.02      ( ~ m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK4))))
% 2.78/1.02      | ~ sP0_iProver_split ),
% 2.78/1.02      inference(splitting,
% 2.78/1.02                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 2.78/1.02                [c_446]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1237,plain,
% 2.78/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,k2_relat_1(sK4)))) != iProver_top
% 2.78/1.02      | sP0_iProver_split != iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_746]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_2874,plain,
% 2.78/1.02      ( m1_subset_1(sK4,k1_zfmisc_1(k2_zfmisc_1(X0,sK1))) != iProver_top
% 2.78/1.02      | sP0_iProver_split != iProver_top ),
% 2.78/1.02      inference(demodulation,[status(thm)],[c_2797,c_1237]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_2893,plain,
% 2.78/1.02      ( sP0_iProver_split != iProver_top ),
% 2.78/1.02      inference(superposition,[status(thm)],[c_1245,c_2874]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_8,plain,
% 2.78/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.78/1.02      | ~ v1_relat_1(X1)
% 2.78/1.02      | v1_relat_1(X0) ),
% 2.78/1.02      inference(cnf_transformation,[],[f62]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1256,plain,
% 2.78/1.02      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.78/1.02      | v1_relat_1(X1) != iProver_top
% 2.78/1.02      | v1_relat_1(X0) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_3913,plain,
% 2.78/1.02      ( v1_relat_1(k2_zfmisc_1(sK2,sK1)) != iProver_top
% 2.78/1.02      | v1_relat_1(sK4) = iProver_top ),
% 2.78/1.02      inference(superposition,[status(thm)],[c_1245,c_1256]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_9,plain,
% 2.78/1.02      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.78/1.02      inference(cnf_transformation,[],[f63]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1255,plain,
% 2.78/1.02      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_4428,plain,
% 2.78/1.02      ( v1_relat_1(sK4) = iProver_top ),
% 2.78/1.02      inference(forward_subsumption_resolution,
% 2.78/1.02                [status(thm)],
% 2.78/1.02                [c_3913,c_1255]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_5222,plain,
% 2.78/1.02      ( v2_funct_1(k6_partfun1(sK1)) != iProver_top | sK1 = k1_xboole_0 ),
% 2.78/1.02      inference(global_propositional_subsumption,
% 2.78/1.02                [status(thm)],
% 2.78/1.02                [c_4973,c_36,c_37,c_38,c_39,c_40,c_41,c_2879,c_2893,
% 2.78/1.02                 c_4428]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_5223,plain,
% 2.78/1.02      ( sK1 = k1_xboole_0 | v2_funct_1(k6_partfun1(sK1)) != iProver_top ),
% 2.78/1.02      inference(renaming,[status(thm)],[c_5222]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_14,plain,
% 2.78/1.02      ( v2_funct_1(k6_partfun1(X0)) ),
% 2.78/1.02      inference(cnf_transformation,[],[f91]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1253,plain,
% 2.78/1.02      ( v2_funct_1(k6_partfun1(X0)) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_5228,plain,
% 2.78/1.02      ( sK1 = k1_xboole_0 ),
% 2.78/1.02      inference(forward_subsumption_resolution,
% 2.78/1.02                [status(thm)],
% 2.78/1.02                [c_5223,c_1253]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1242,plain,
% 2.78/1.02      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK2))) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_5238,plain,
% 2.78/1.02      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK2))) = iProver_top ),
% 2.78/1.02      inference(demodulation,[status(thm)],[c_5228,c_1242]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_4,plain,
% 2.78/1.02      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 2.78/1.02      inference(cnf_transformation,[],[f95]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_5246,plain,
% 2.78/1.02      ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 2.78/1.02      inference(demodulation,[status(thm)],[c_5238,c_4]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_0,plain,
% 2.78/1.02      ( r2_hidden(sK0(X0),X0) | v1_xboole_0(X0) ),
% 2.78/1.02      inference(cnf_transformation,[],[f55]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_6,plain,
% 2.78/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.78/1.02      | ~ r2_hidden(X2,X0)
% 2.78/1.02      | ~ v1_xboole_0(X1) ),
% 2.78/1.02      inference(cnf_transformation,[],[f60]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_366,plain,
% 2.78/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.78/1.02      | ~ v1_xboole_0(X1)
% 2.78/1.02      | v1_xboole_0(X2)
% 2.78/1.02      | X0 != X2
% 2.78/1.02      | sK0(X2) != X3 ),
% 2.78/1.02      inference(resolution_lifted,[status(thm)],[c_0,c_6]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_367,plain,
% 2.78/1.02      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.78/1.02      | ~ v1_xboole_0(X1)
% 2.78/1.02      | v1_xboole_0(X0) ),
% 2.78/1.02      inference(unflattening,[status(thm)],[c_366]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1892,plain,
% 2.78/1.02      ( ~ m1_subset_1(sK3,k1_zfmisc_1(X0))
% 2.78/1.02      | ~ v1_xboole_0(X0)
% 2.78/1.02      | v1_xboole_0(sK3) ),
% 2.78/1.02      inference(instantiation,[status(thm)],[c_367]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1893,plain,
% 2.78/1.02      ( m1_subset_1(sK3,k1_zfmisc_1(X0)) != iProver_top
% 2.78/1.02      | v1_xboole_0(X0) != iProver_top
% 2.78/1.02      | v1_xboole_0(sK3) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_1892]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1895,plain,
% 2.78/1.02      ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 2.78/1.02      | v1_xboole_0(sK3) = iProver_top
% 2.78/1.02      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 2.78/1.02      inference(instantiation,[status(thm)],[c_1893]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_11,plain,
% 2.78/1.02      ( v2_funct_1(X0)
% 2.78/1.02      | ~ v1_funct_1(X0)
% 2.78/1.02      | ~ v1_relat_1(X0)
% 2.78/1.02      | ~ v1_xboole_0(X0) ),
% 2.78/1.02      inference(cnf_transformation,[],[f67]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_10,plain,
% 2.78/1.02      ( v1_funct_1(X0) | ~ v1_xboole_0(X0) ),
% 2.78/1.02      inference(cnf_transformation,[],[f64]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_7,plain,
% 2.78/1.02      ( v1_relat_1(X0) | ~ v1_xboole_0(X0) ),
% 2.78/1.02      inference(cnf_transformation,[],[f61]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_200,plain,
% 2.78/1.02      ( v2_funct_1(X0) | ~ v1_xboole_0(X0) ),
% 2.78/1.02      inference(global_propositional_subsumption,
% 2.78/1.02                [status(thm)],
% 2.78/1.02                [c_11,c_10,c_7]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1491,plain,
% 2.78/1.02      ( v2_funct_1(sK3) | ~ v1_xboole_0(sK3) ),
% 2.78/1.02      inference(instantiation,[status(thm)],[c_200]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_1492,plain,
% 2.78/1.02      ( v2_funct_1(sK3) = iProver_top | v1_xboole_0(sK3) != iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_1491]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_2,plain,
% 2.78/1.02      ( v1_xboole_0(k1_xboole_0) ),
% 2.78/1.02      inference(cnf_transformation,[],[f56]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(c_106,plain,
% 2.78/1.02      ( v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.78/1.02      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.78/1.02  
% 2.78/1.02  cnf(contradiction,plain,
% 2.78/1.02      ( $false ),
% 2.78/1.02      inference(minisat,
% 2.78/1.02                [status(thm)],
% 2.78/1.02                [c_5246,c_4428,c_2893,c_2879,c_1895,c_1492,c_106]) ).
% 2.78/1.02  
% 2.78/1.02  
% 2.78/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 2.78/1.02  
% 2.78/1.02  ------                               Statistics
% 2.78/1.02  
% 2.78/1.02  ------ General
% 2.78/1.02  
% 2.78/1.02  abstr_ref_over_cycles:                  0
% 2.78/1.02  abstr_ref_under_cycles:                 0
% 2.78/1.02  gc_basic_clause_elim:                   0
% 2.78/1.02  forced_gc_time:                         0
% 2.78/1.02  parsing_time:                           0.017
% 2.78/1.02  unif_index_cands_time:                  0.
% 2.78/1.02  unif_index_add_time:                    0.
% 2.78/1.02  orderings_time:                         0.
% 2.78/1.02  out_proof_time:                         0.011
% 2.78/1.02  total_time:                             0.181
% 2.78/1.02  num_of_symbols:                         54
% 2.78/1.02  num_of_terms:                           5804
% 2.78/1.02  
% 2.78/1.02  ------ Preprocessing
% 2.78/1.02  
% 2.78/1.02  num_of_splits:                          1
% 2.78/1.02  num_of_split_atoms:                     1
% 2.78/1.02  num_of_reused_defs:                     0
% 2.78/1.02  num_eq_ax_congr_red:                    11
% 2.78/1.02  num_of_sem_filtered_clauses:            1
% 2.78/1.02  num_of_subtypes:                        0
% 2.78/1.02  monotx_restored_types:                  0
% 2.78/1.02  sat_num_of_epr_types:                   0
% 2.78/1.02  sat_num_of_non_cyclic_types:            0
% 2.78/1.02  sat_guarded_non_collapsed_types:        0
% 2.78/1.02  num_pure_diseq_elim:                    0
% 2.78/1.02  simp_replaced_by:                       0
% 2.78/1.02  res_preprocessed:                       149
% 2.78/1.02  prep_upred:                             0
% 2.78/1.02  prep_unflattend:                        23
% 2.78/1.02  smt_new_axioms:                         0
% 2.78/1.02  pred_elim_cands:                        6
% 2.78/1.02  pred_elim:                              4
% 2.78/1.02  pred_elim_cl:                           6
% 2.78/1.02  pred_elim_cycles:                       7
% 2.78/1.02  merged_defs:                            0
% 2.78/1.02  merged_defs_ncl:                        0
% 2.78/1.02  bin_hyper_res:                          0
% 2.78/1.02  prep_cycles:                            4
% 2.78/1.02  pred_elim_time:                         0.004
% 2.78/1.02  splitting_time:                         0.
% 2.78/1.02  sem_filter_time:                        0.
% 2.78/1.02  monotx_time:                            0.
% 2.78/1.02  subtype_inf_time:                       0.
% 2.78/1.02  
% 2.78/1.02  ------ Problem properties
% 2.78/1.02  
% 2.78/1.02  clauses:                                29
% 2.78/1.02  conjectures:                            6
% 2.78/1.02  epr:                                    8
% 2.78/1.02  horn:                                   27
% 2.78/1.02  ground:                                 9
% 2.78/1.02  unary:                                  13
% 2.78/1.02  binary:                                 6
% 2.78/1.02  lits:                                   81
% 2.78/1.02  lits_eq:                                13
% 2.78/1.02  fd_pure:                                0
% 2.78/1.02  fd_pseudo:                              0
% 2.78/1.02  fd_cond:                                2
% 2.78/1.02  fd_pseudo_cond:                         0
% 2.78/1.02  ac_symbols:                             0
% 2.78/1.02  
% 2.78/1.02  ------ Propositional Solver
% 2.78/1.02  
% 2.78/1.02  prop_solver_calls:                      29
% 2.78/1.02  prop_fast_solver_calls:                 1030
% 2.78/1.02  smt_solver_calls:                       0
% 2.78/1.02  smt_fast_solver_calls:                  0
% 2.78/1.02  prop_num_of_clauses:                    2156
% 2.78/1.02  prop_preprocess_simplified:             7336
% 2.78/1.02  prop_fo_subsumed:                       22
% 2.78/1.02  prop_solver_time:                       0.
% 2.78/1.02  smt_solver_time:                        0.
% 2.78/1.02  smt_fast_solver_time:                   0.
% 2.78/1.02  prop_fast_solver_time:                  0.
% 2.78/1.02  prop_unsat_core_time:                   0.
% 2.78/1.02  
% 2.78/1.02  ------ QBF
% 2.78/1.02  
% 2.78/1.02  qbf_q_res:                              0
% 2.78/1.02  qbf_num_tautologies:                    0
% 2.78/1.02  qbf_prep_cycles:                        0
% 2.78/1.02  
% 2.78/1.02  ------ BMC1
% 2.78/1.02  
% 2.78/1.02  bmc1_current_bound:                     -1
% 2.78/1.02  bmc1_last_solved_bound:                 -1
% 2.78/1.02  bmc1_unsat_core_size:                   -1
% 2.78/1.02  bmc1_unsat_core_parents_size:           -1
% 2.78/1.02  bmc1_merge_next_fun:                    0
% 2.78/1.02  bmc1_unsat_core_clauses_time:           0.
% 2.78/1.02  
% 2.78/1.02  ------ Instantiation
% 2.78/1.02  
% 2.78/1.02  inst_num_of_clauses:                    763
% 2.78/1.02  inst_num_in_passive:                    520
% 2.78/1.02  inst_num_in_active:                     234
% 2.78/1.02  inst_num_in_unprocessed:                9
% 2.78/1.02  inst_num_of_loops:                      260
% 2.78/1.02  inst_num_of_learning_restarts:          0
% 2.78/1.02  inst_num_moves_active_passive:          24
% 2.78/1.02  inst_lit_activity:                      0
% 2.78/1.02  inst_lit_activity_moves:                1
% 2.78/1.02  inst_num_tautologies:                   0
% 2.78/1.02  inst_num_prop_implied:                  0
% 2.78/1.02  inst_num_existing_simplified:           0
% 2.78/1.02  inst_num_eq_res_simplified:             0
% 2.78/1.02  inst_num_child_elim:                    0
% 2.78/1.02  inst_num_of_dismatching_blockings:      33
% 2.78/1.02  inst_num_of_non_proper_insts:           371
% 2.78/1.02  inst_num_of_duplicates:                 0
% 2.78/1.02  inst_inst_num_from_inst_to_res:         0
% 2.78/1.02  inst_dismatching_checking_time:         0.
% 2.78/1.02  
% 2.78/1.02  ------ Resolution
% 2.78/1.02  
% 2.78/1.02  res_num_of_clauses:                     0
% 2.78/1.02  res_num_in_passive:                     0
% 2.78/1.02  res_num_in_active:                      0
% 2.78/1.02  res_num_of_loops:                       153
% 2.78/1.02  res_forward_subset_subsumed:            9
% 2.78/1.02  res_backward_subset_subsumed:           0
% 2.78/1.02  res_forward_subsumed:                   0
% 2.78/1.02  res_backward_subsumed:                  0
% 2.78/1.02  res_forward_subsumption_resolution:     2
% 2.78/1.02  res_backward_subsumption_resolution:    0
% 2.78/1.02  res_clause_to_clause_subsumption:       113
% 2.78/1.02  res_orphan_elimination:                 0
% 2.78/1.02  res_tautology_del:                      15
% 2.78/1.02  res_num_eq_res_simplified:              1
% 2.78/1.02  res_num_sel_changes:                    0
% 2.78/1.02  res_moves_from_active_to_pass:          0
% 2.78/1.02  
% 2.78/1.02  ------ Superposition
% 2.78/1.02  
% 2.78/1.02  sup_time_total:                         0.
% 2.78/1.02  sup_time_generating:                    0.
% 2.78/1.02  sup_time_sim_full:                      0.
% 2.78/1.02  sup_time_sim_immed:                     0.
% 2.78/1.02  
% 2.78/1.02  sup_num_of_clauses:                     60
% 2.78/1.02  sup_num_in_active:                      36
% 2.78/1.02  sup_num_in_passive:                     24
% 2.78/1.02  sup_num_of_loops:                       51
% 2.78/1.02  sup_fw_superposition:                   33
% 2.78/1.02  sup_bw_superposition:                   12
% 2.78/1.02  sup_immediate_simplified:               11
% 2.78/1.02  sup_given_eliminated:                   1
% 2.78/1.02  comparisons_done:                       0
% 2.78/1.02  comparisons_avoided:                    0
% 2.78/1.02  
% 2.78/1.02  ------ Simplifications
% 2.78/1.02  
% 2.78/1.02  
% 2.78/1.02  sim_fw_subset_subsumed:                 1
% 2.78/1.02  sim_bw_subset_subsumed:                 0
% 2.78/1.02  sim_fw_subsumed:                        2
% 2.78/1.02  sim_bw_subsumed:                        1
% 2.78/1.02  sim_fw_subsumption_res:                 3
% 2.78/1.02  sim_bw_subsumption_res:                 0
% 2.78/1.02  sim_tautology_del:                      0
% 2.78/1.02  sim_eq_tautology_del:                   1
% 2.78/1.02  sim_eq_res_simp:                        1
% 2.78/1.02  sim_fw_demodulated:                     7
% 2.78/1.02  sim_bw_demodulated:                     14
% 2.78/1.02  sim_light_normalised:                   3
% 2.78/1.02  sim_joinable_taut:                      0
% 2.78/1.02  sim_joinable_simp:                      0
% 2.78/1.02  sim_ac_normalised:                      0
% 2.78/1.02  sim_smt_subsumption:                    0
% 2.78/1.02  
%------------------------------------------------------------------------------
