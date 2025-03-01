%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:03:16 EST 2020

% Result     : Theorem 3.98s
% Output     : CNFRefutation 3.98s
% Verified   : 
% Statistics : Number of formulae       :  186 (1077 expanded)
%              Number of clauses        :  108 ( 283 expanded)
%              Number of leaves         :   20 ( 284 expanded)
%              Depth                    :   20
%              Number of atoms          :  761 (9401 expanded)
%              Number of equality atoms :  351 (3403 expanded)
%              Maximal formula depth    :   16 (   5 average)
%              Maximal clause size      :   24 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,axiom,(
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

fof(f33,plain,(
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
    inference(ennf_transformation,[],[f13])).

fof(f34,plain,(
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
    inference(flattening,[],[f33])).

fof(f62,plain,(
    ! [X2,X0,X3,X1] :
      ( k2_relset_1(X0,X1,X2) = X1
      | ~ r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
      | ~ v1_funct_2(X3,X1,X0)
      | ~ v1_funct_1(X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f16,conjecture,(
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

fof(f17,negated_conjecture,(
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
    inference(negated_conjecture,[],[f16])).

fof(f39,plain,(
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
    inference(ennf_transformation,[],[f17])).

fof(f40,plain,(
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
    inference(flattening,[],[f39])).

fof(f43,plain,(
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

fof(f42,plain,
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

fof(f44,plain,
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f40,f43,f42])).

fof(f76,plain,(
    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f44])).

fof(f69,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f44])).

fof(f70,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f71,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f44])).

fof(f72,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f44])).

fof(f73,plain,(
    v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f44])).

fof(f74,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f44])).

fof(f15,axiom,(
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

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( ( k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
        & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) )
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( ( k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1)
        & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) )
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(flattening,[],[f37])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)
      | k1_xboole_0 = X1
      | ~ v2_funct_1(X2)
      | k2_relset_1(X0,X1,X2) != X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f78,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f44])).

fof(f2,axiom,(
    ! [X0] :
      ( v2_funct_1(k6_relat_1(X0))
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0] : v2_funct_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f2])).

fof(f12,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f12])).

fof(f83,plain,(
    ! [X0] : v2_funct_1(k6_partfun1(X0)) ),
    inference(definition_unfolding,[],[f48,f61])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f28,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f27])).

fof(f41,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f28])).

fof(f55,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r2_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f10,axiom,(
    ! [X0] :
      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_partfun1(k6_partfun1(X0),X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(pure_predicate_removal,[],[f10])).

fof(f59,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f18])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f30,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f29])).

fof(f58,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f75,plain,(
    k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f44])).

fof(f14,axiom,(
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
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
    inference(ennf_transformation,[],[f14])).

fof(f36,plain,(
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
    inference(flattening,[],[f35])).

fof(f65,plain,(
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
    inference(cnf_transformation,[],[f36])).

fof(f4,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
          & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
        & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f22,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
        & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f21])).

fof(f51,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f53,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f1,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f1])).

fof(f81,plain,(
    ! [X0] : k2_relat_1(k6_partfun1(X0)) = X0 ),
    inference(definition_unfolding,[],[f46,f61])).

fof(f77,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f44])).

fof(f79,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f44])).

fof(f50,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f45,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f1])).

fof(f82,plain,(
    ! [X0] : k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(definition_unfolding,[],[f45,f61])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f32,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f31])).

fof(f60,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f5,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ! [X1] :
          ( ( v1_funct_1(X1)
            & v1_relat_1(X1) )
         => ( ( k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,X1)
              & k1_relat_1(X1) = k2_relat_1(X0)
              & v2_funct_1(X0) )
           => k2_funct_1(X0) = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1)
          | k1_relat_1(X1) != k2_relat_1(X0)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f24,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_funct_1(X0) = X1
          | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1)
          | k1_relat_1(X1) != k2_relat_1(X0)
          | ~ v2_funct_1(X0)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f23])).

fof(f52,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X0) = X1
      | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1)
      | k1_relat_1(X1) != k2_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f86,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X0) = X1
      | k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0))
      | k1_relat_1(X1) != k2_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f52,f61])).

fof(f3,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( ? [X1] :
            ( k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,X1)
            & v1_funct_1(X1)
            & v1_relat_1(X1) )
       => v2_funct_1(X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | ! [X1] :
          ( k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f20,plain,(
    ! [X0] :
      ( v2_funct_1(X0)
      | ! [X1] :
          ( k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1)
          | ~ v1_funct_1(X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f19])).

fof(f49,plain,(
    ! [X0,X1] :
      ( v2_funct_1(X0)
      | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f85,plain,(
    ! [X0,X1] :
      ( v2_funct_1(X0)
      | k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f49,f61])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f80,plain,(
    k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_16,plain,
    ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
    | ~ v1_funct_2(X2,X0,X1)
    | ~ v1_funct_2(X3,X1,X0)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_1(X3)
    | k2_relset_1(X1,X0,X3) = X0 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_27,negated_conjecture,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_384,plain,
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
    inference(resolution_lifted,[status(thm)],[c_16,c_27])).

cnf(c_385,plain,
    ( ~ v1_funct_2(X0,X1,sK0)
    | ~ v1_funct_2(X2,sK0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X2)
    | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X1,sK0,X0) = sK0
    | k6_partfun1(sK0) != k6_partfun1(sK0) ),
    inference(unflattening,[status(thm)],[c_384])).

cnf(c_467,plain,
    ( ~ v1_funct_2(X0,X1,sK0)
    | ~ v1_funct_2(X2,sK0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X2)
    | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X1,sK0,X0) = sK0 ),
    inference(equality_resolution_simp,[status(thm)],[c_385])).

cnf(c_1102,plain,
    ( k1_partfun1(sK0,X0,X0,sK0,X1,X2) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | k2_relset_1(X0,sK0,X2) = sK0
    | v1_funct_2(X2,X0,sK0) != iProver_top
    | v1_funct_2(X1,sK0,X0) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK0))) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_467])).

cnf(c_1642,plain,
    ( k2_relset_1(sK1,sK0,sK3) = sK0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | v1_funct_2(sK2,sK0,sK1) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_1102])).

cnf(c_34,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_35,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_33,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_36,plain,
    ( v1_funct_2(sK2,sK0,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_32,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_37,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_31,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_38,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_30,negated_conjecture,
    ( v1_funct_2(sK3,sK1,sK0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_39,plain,
    ( v1_funct_2(sK3,sK1,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_30])).

cnf(c_29,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_40,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_1811,plain,
    ( k2_relset_1(sK1,sK0,sK3) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1642,c_35,c_36,c_37,c_38,c_39,c_40])).

cnf(c_22,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_relset_1(X1,X2,X0) != X2
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f67])).

cnf(c_1113,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)
    | k1_xboole_0 = X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v2_funct_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_3670,plain,
    ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1)
    | sK0 = k1_xboole_0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v2_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1811,c_1113])).

cnf(c_25,negated_conjecture,
    ( k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f78])).

cnf(c_631,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_662,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_631])).

cnf(c_632,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1210,plain,
    ( sK0 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK0 ),
    inference(instantiation,[status(thm)],[c_632])).

cnf(c_1211,plain,
    ( sK0 != k1_xboole_0
    | k1_xboole_0 = sK0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1210])).

cnf(c_2,plain,
    ( v2_funct_1(k6_partfun1(X0)) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_4820,plain,
    ( v2_funct_1(k6_partfun1(sK0)) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_4821,plain,
    ( v2_funct_1(k6_partfun1(sK0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4820])).

cnf(c_11,plain,
    ( ~ r2_relset_1(X0,X1,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | X3 = X2 ),
    inference(cnf_transformation,[],[f55])).

cnf(c_371,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | X3 = X0
    | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
    | k6_partfun1(sK0) != X3
    | sK0 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_27])).

cnf(c_372,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_371])).

cnf(c_14,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_380,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(forward_subsumption_resolution,[status(thm)],[c_372,c_14])).

cnf(c_1103,plain,
    ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_380])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_1212,plain,
    ( m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_1804,plain,
    ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1103,c_34,c_32,c_31,c_29,c_380,c_1212])).

cnf(c_28,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f75])).

cnf(c_18,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ v1_funct_2(X3,X4,X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X1)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | v2_funct_1(X0)
    | ~ v2_funct_1(k1_partfun1(X4,X1,X1,X2,X3,X0))
    | k2_relset_1(X4,X1,X3) != X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1117,plain,
    ( k2_relset_1(X0,X1,X2) != X1
    | k1_xboole_0 = X3
    | v1_funct_2(X4,X1,X3) != iProver_top
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X4) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v2_funct_1(X4) = iProver_top
    | v2_funct_1(k1_partfun1(X0,X1,X1,X3,X2,X4)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_4814,plain,
    ( k1_xboole_0 = X0
    | v1_funct_2(X1,sK1,X0) != iProver_top
    | v1_funct_2(sK2,sK0,sK1) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(X1) = iProver_top
    | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_28,c_1117])).

cnf(c_4993,plain,
    ( v1_funct_1(X1) != iProver_top
    | v1_funct_2(X1,sK1,X0) != iProver_top
    | k1_xboole_0 = X0
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
    | v2_funct_1(X1) = iProver_top
    | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4814,c_35,c_36,c_37])).

cnf(c_4994,plain,
    ( k1_xboole_0 = X0
    | v1_funct_2(X1,sK1,X0) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v2_funct_1(X1) = iProver_top
    | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top ),
    inference(renaming,[status(thm)],[c_4993])).

cnf(c_4997,plain,
    ( sK0 = k1_xboole_0
    | v1_funct_2(sK3,sK1,sK0) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_funct_1(sK3) != iProver_top
    | v2_funct_1(k6_partfun1(sK0)) != iProver_top
    | v2_funct_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1804,c_4994])).

cnf(c_9682,plain,
    ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3670,c_38,c_39,c_40,c_25,c_662,c_1211,c_4821,c_4997])).

cnf(c_5000,plain,
    ( v2_funct_1(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4997,c_38,c_39,c_40,c_25,c_662,c_1211,c_4821])).

cnf(c_1109,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_5,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v2_funct_1(X0)
    | k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1126,plain,
    ( k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0)
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v2_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2287,plain,
    ( k2_relat_1(k5_relat_1(sK3,k2_funct_1(sK3))) = k1_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top
    | v2_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1109,c_1126])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1257,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_1628,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_1257])).

cnf(c_1629,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1628])).

cnf(c_2625,plain,
    ( k2_relat_1(k5_relat_1(sK3,k2_funct_1(sK3))) = k1_relat_1(sK3)
    | v2_funct_1(sK3) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2287,c_40,c_1629])).

cnf(c_5004,plain,
    ( k2_relat_1(k5_relat_1(sK3,k2_funct_1(sK3))) = k1_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_5000,c_2625])).

cnf(c_9685,plain,
    ( k2_relat_1(k6_partfun1(sK1)) = k1_relat_1(sK3) ),
    inference(demodulation,[status(thm)],[c_9682,c_5004])).

cnf(c_0,plain,
    ( k2_relat_1(k6_partfun1(X0)) = X0 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_9686,plain,
    ( k1_relat_1(sK3) = sK1 ),
    inference(demodulation,[status(thm)],[c_9685,c_0])).

cnf(c_3669,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
    | sK1 = k1_xboole_0
    | v1_funct_2(sK2,sK0,sK1) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_28,c_1113])).

cnf(c_26,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_24,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1175,plain,
    ( ~ v1_funct_2(X0,X1,sK1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k2_relset_1(X1,sK1,X0) != sK1
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_22])).

cnf(c_1303,plain,
    ( ~ v1_funct_2(sK2,X0,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1)))
    | ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2)
    | k2_relset_1(X0,sK1,sK2) != sK1
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_1175])).

cnf(c_1527,plain,
    ( ~ v1_funct_2(sK2,sK0,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2)
    | k2_relset_1(sK0,sK1,sK2) != sK1
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_1303])).

cnf(c_3798,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3669,c_34,c_33,c_32,c_28,c_26,c_24,c_1527])).

cnf(c_1106,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_6,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | ~ v2_funct_1(X0)
    | k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_1125,plain,
    ( k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0)
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v2_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_2080,plain,
    ( k1_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1106,c_1125])).

cnf(c_42,plain,
    ( v2_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_1730,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_1731,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1730])).

cnf(c_2264,plain,
    ( k1_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2080,c_37,c_42,c_1731])).

cnf(c_3801,plain,
    ( k1_relat_1(k6_partfun1(sK0)) = k1_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_3798,c_2264])).

cnf(c_1,plain,
    ( k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(cnf_transformation,[],[f82])).

cnf(c_3802,plain,
    ( k1_relat_1(sK2) = sK0 ),
    inference(demodulation,[status(thm)],[c_3801,c_1])).

cnf(c_1108,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_1111,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_15,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1119,plain,
    ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X5) != iProver_top
    | v1_funct_1(X4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2760,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1111,c_1119])).

cnf(c_2816,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2760,c_38])).

cnf(c_2817,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_2816])).

cnf(c_2825,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1108,c_2817])).

cnf(c_2826,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
    | v1_funct_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2825,c_1804])).

cnf(c_3606,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2826,c_35])).

cnf(c_7,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v2_funct_1(X1)
    | k5_relat_1(X1,X0) != k6_partfun1(k1_relat_1(X1))
    | k2_funct_1(X1) = X0
    | k1_relat_1(X0) != k2_relat_1(X1) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_4,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v2_funct_1(X1)
    | k5_relat_1(X1,X0) != k6_partfun1(k1_relat_1(X1)) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_186,plain,
    ( ~ v1_relat_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_1(X0)
    | k5_relat_1(X1,X0) != k6_partfun1(k1_relat_1(X1))
    | k2_funct_1(X1) = X0
    | k1_relat_1(X0) != k2_relat_1(X1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_7,c_4])).

cnf(c_187,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0))
    | k2_funct_1(X0) = X1
    | k1_relat_1(X1) != k2_relat_1(X0) ),
    inference(renaming,[status(thm)],[c_186])).

cnf(c_1105,plain,
    ( k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0))
    | k2_funct_1(X0) = X1
    | k1_relat_1(X1) != k2_relat_1(X0)
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_187])).

cnf(c_3609,plain,
    ( k2_funct_1(sK2) = sK3
    | k1_relat_1(sK3) != k2_relat_1(sK2)
    | k6_partfun1(k1_relat_1(sK2)) != k6_partfun1(sK0)
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK3) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3606,c_1105])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1123,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_2039,plain,
    ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1108,c_1123])).

cnf(c_2040,plain,
    ( k2_relat_1(sK2) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_2039,c_28])).

cnf(c_3610,plain,
    ( k2_funct_1(sK2) = sK3
    | k1_relat_1(sK3) != sK1
    | k6_partfun1(k1_relat_1(sK2)) != k6_partfun1(sK0)
    | v1_funct_1(sK3) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK3) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3609,c_2040])).

cnf(c_23,negated_conjecture,
    ( k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f80])).

cnf(c_3611,plain,
    ( ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK3)
    | ~ v1_relat_1(sK2)
    | k2_funct_1(sK2) = sK3
    | k1_relat_1(sK3) != sK1
    | k6_partfun1(k1_relat_1(sK2)) != k6_partfun1(sK0) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3610])).

cnf(c_3613,plain,
    ( k1_relat_1(sK3) != sK1
    | k6_partfun1(k1_relat_1(sK2)) != k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3610,c_34,c_32,c_31,c_29,c_23,c_1628,c_1730,c_3611])).

cnf(c_3806,plain,
    ( k1_relat_1(sK3) != sK1
    | k6_partfun1(sK0) != k6_partfun1(sK0) ),
    inference(demodulation,[status(thm)],[c_3802,c_3613])).

cnf(c_4385,plain,
    ( k1_relat_1(sK3) != sK1 ),
    inference(equality_resolution_simp,[status(thm)],[c_3806])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_9686,c_4385])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.02/0.08  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.02/0.08  % Command    : iproveropt_run.sh %d %s
% 0.07/0.27  % Computer   : n004.cluster.edu
% 0.07/0.27  % Model      : x86_64 x86_64
% 0.07/0.27  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.07/0.27  % Memory     : 8042.1875MB
% 0.07/0.27  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.07/0.27  % CPULimit   : 60
% 0.07/0.27  % WCLimit    : 600
% 0.07/0.27  % DateTime   : Tue Dec  1 16:45:38 EST 2020
% 0.07/0.27  % CPUTime    : 
% 0.07/0.28  % Running in FOF mode
% 3.98/0.87  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.98/0.87  
% 3.98/0.87  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.98/0.87  
% 3.98/0.87  ------  iProver source info
% 3.98/0.87  
% 3.98/0.87  git: date: 2020-06-30 10:37:57 +0100
% 3.98/0.87  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.98/0.87  git: non_committed_changes: false
% 3.98/0.87  git: last_make_outside_of_git: false
% 3.98/0.87  
% 3.98/0.87  ------ 
% 3.98/0.87  
% 3.98/0.87  ------ Input Options
% 3.98/0.87  
% 3.98/0.87  --out_options                           all
% 3.98/0.87  --tptp_safe_out                         true
% 3.98/0.87  --problem_path                          ""
% 3.98/0.87  --include_path                          ""
% 3.98/0.87  --clausifier                            res/vclausify_rel
% 3.98/0.87  --clausifier_options                    ""
% 3.98/0.87  --stdin                                 false
% 3.98/0.87  --stats_out                             all
% 3.98/0.87  
% 3.98/0.87  ------ General Options
% 3.98/0.87  
% 3.98/0.87  --fof                                   false
% 3.98/0.87  --time_out_real                         305.
% 3.98/0.87  --time_out_virtual                      -1.
% 3.98/0.87  --symbol_type_check                     false
% 3.98/0.87  --clausify_out                          false
% 3.98/0.87  --sig_cnt_out                           false
% 3.98/0.87  --trig_cnt_out                          false
% 3.98/0.87  --trig_cnt_out_tolerance                1.
% 3.98/0.87  --trig_cnt_out_sk_spl                   false
% 3.98/0.87  --abstr_cl_out                          false
% 3.98/0.87  
% 3.98/0.87  ------ Global Options
% 3.98/0.87  
% 3.98/0.87  --schedule                              default
% 3.98/0.87  --add_important_lit                     false
% 3.98/0.87  --prop_solver_per_cl                    1000
% 3.98/0.87  --min_unsat_core                        false
% 3.98/0.87  --soft_assumptions                      false
% 3.98/0.87  --soft_lemma_size                       3
% 3.98/0.87  --prop_impl_unit_size                   0
% 3.98/0.87  --prop_impl_unit                        []
% 3.98/0.87  --share_sel_clauses                     true
% 3.98/0.87  --reset_solvers                         false
% 3.98/0.87  --bc_imp_inh                            [conj_cone]
% 3.98/0.87  --conj_cone_tolerance                   3.
% 3.98/0.87  --extra_neg_conj                        none
% 3.98/0.87  --large_theory_mode                     true
% 3.98/0.87  --prolific_symb_bound                   200
% 3.98/0.87  --lt_threshold                          2000
% 3.98/0.87  --clause_weak_htbl                      true
% 3.98/0.87  --gc_record_bc_elim                     false
% 3.98/0.87  
% 3.98/0.87  ------ Preprocessing Options
% 3.98/0.87  
% 3.98/0.87  --preprocessing_flag                    true
% 3.98/0.87  --time_out_prep_mult                    0.1
% 3.98/0.87  --splitting_mode                        input
% 3.98/0.87  --splitting_grd                         true
% 3.98/0.87  --splitting_cvd                         false
% 3.98/0.87  --splitting_cvd_svl                     false
% 3.98/0.87  --splitting_nvd                         32
% 3.98/0.87  --sub_typing                            true
% 3.98/0.87  --prep_gs_sim                           true
% 3.98/0.87  --prep_unflatten                        true
% 3.98/0.87  --prep_res_sim                          true
% 3.98/0.87  --prep_upred                            true
% 3.98/0.87  --prep_sem_filter                       exhaustive
% 3.98/0.87  --prep_sem_filter_out                   false
% 3.98/0.87  --pred_elim                             true
% 3.98/0.87  --res_sim_input                         true
% 3.98/0.87  --eq_ax_congr_red                       true
% 3.98/0.87  --pure_diseq_elim                       true
% 3.98/0.87  --brand_transform                       false
% 3.98/0.87  --non_eq_to_eq                          false
% 3.98/0.87  --prep_def_merge                        true
% 3.98/0.87  --prep_def_merge_prop_impl              false
% 3.98/0.87  --prep_def_merge_mbd                    true
% 3.98/0.87  --prep_def_merge_tr_red                 false
% 3.98/0.87  --prep_def_merge_tr_cl                  false
% 3.98/0.87  --smt_preprocessing                     true
% 3.98/0.87  --smt_ac_axioms                         fast
% 3.98/0.87  --preprocessed_out                      false
% 3.98/0.87  --preprocessed_stats                    false
% 3.98/0.87  
% 3.98/0.87  ------ Abstraction refinement Options
% 3.98/0.87  
% 3.98/0.87  --abstr_ref                             []
% 3.98/0.87  --abstr_ref_prep                        false
% 3.98/0.87  --abstr_ref_until_sat                   false
% 3.98/0.87  --abstr_ref_sig_restrict                funpre
% 3.98/0.87  --abstr_ref_af_restrict_to_split_sk     false
% 3.98/0.87  --abstr_ref_under                       []
% 3.98/0.87  
% 3.98/0.87  ------ SAT Options
% 3.98/0.87  
% 3.98/0.87  --sat_mode                              false
% 3.98/0.87  --sat_fm_restart_options                ""
% 3.98/0.87  --sat_gr_def                            false
% 3.98/0.87  --sat_epr_types                         true
% 3.98/0.87  --sat_non_cyclic_types                  false
% 3.98/0.87  --sat_finite_models                     false
% 3.98/0.87  --sat_fm_lemmas                         false
% 3.98/0.87  --sat_fm_prep                           false
% 3.98/0.87  --sat_fm_uc_incr                        true
% 3.98/0.87  --sat_out_model                         small
% 3.98/0.87  --sat_out_clauses                       false
% 3.98/0.87  
% 3.98/0.87  ------ QBF Options
% 3.98/0.87  
% 3.98/0.87  --qbf_mode                              false
% 3.98/0.87  --qbf_elim_univ                         false
% 3.98/0.87  --qbf_dom_inst                          none
% 3.98/0.87  --qbf_dom_pre_inst                      false
% 3.98/0.87  --qbf_sk_in                             false
% 3.98/0.87  --qbf_pred_elim                         true
% 3.98/0.87  --qbf_split                             512
% 3.98/0.87  
% 3.98/0.87  ------ BMC1 Options
% 3.98/0.87  
% 3.98/0.87  --bmc1_incremental                      false
% 3.98/0.87  --bmc1_axioms                           reachable_all
% 3.98/0.87  --bmc1_min_bound                        0
% 3.98/0.87  --bmc1_max_bound                        -1
% 3.98/0.87  --bmc1_max_bound_default                -1
% 3.98/0.87  --bmc1_symbol_reachability              true
% 3.98/0.87  --bmc1_property_lemmas                  false
% 3.98/0.87  --bmc1_k_induction                      false
% 3.98/0.87  --bmc1_non_equiv_states                 false
% 3.98/0.87  --bmc1_deadlock                         false
% 3.98/0.87  --bmc1_ucm                              false
% 3.98/0.87  --bmc1_add_unsat_core                   none
% 3.98/0.87  --bmc1_unsat_core_children              false
% 3.98/0.87  --bmc1_unsat_core_extrapolate_axioms    false
% 3.98/0.87  --bmc1_out_stat                         full
% 3.98/0.87  --bmc1_ground_init                      false
% 3.98/0.87  --bmc1_pre_inst_next_state              false
% 3.98/0.87  --bmc1_pre_inst_state                   false
% 3.98/0.87  --bmc1_pre_inst_reach_state             false
% 3.98/0.87  --bmc1_out_unsat_core                   false
% 3.98/0.87  --bmc1_aig_witness_out                  false
% 3.98/0.87  --bmc1_verbose                          false
% 3.98/0.87  --bmc1_dump_clauses_tptp                false
% 3.98/0.87  --bmc1_dump_unsat_core_tptp             false
% 3.98/0.87  --bmc1_dump_file                        -
% 3.98/0.87  --bmc1_ucm_expand_uc_limit              128
% 3.98/0.87  --bmc1_ucm_n_expand_iterations          6
% 3.98/0.87  --bmc1_ucm_extend_mode                  1
% 3.98/0.87  --bmc1_ucm_init_mode                    2
% 3.98/0.87  --bmc1_ucm_cone_mode                    none
% 3.98/0.87  --bmc1_ucm_reduced_relation_type        0
% 3.98/0.87  --bmc1_ucm_relax_model                  4
% 3.98/0.87  --bmc1_ucm_full_tr_after_sat            true
% 3.98/0.87  --bmc1_ucm_expand_neg_assumptions       false
% 3.98/0.87  --bmc1_ucm_layered_model                none
% 3.98/0.87  --bmc1_ucm_max_lemma_size               10
% 3.98/0.87  
% 3.98/0.87  ------ AIG Options
% 3.98/0.87  
% 3.98/0.87  --aig_mode                              false
% 3.98/0.87  
% 3.98/0.87  ------ Instantiation Options
% 3.98/0.87  
% 3.98/0.87  --instantiation_flag                    true
% 3.98/0.87  --inst_sos_flag                         true
% 3.98/0.87  --inst_sos_phase                        true
% 3.98/0.87  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.98/0.87  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.98/0.87  --inst_lit_sel_side                     num_symb
% 3.98/0.87  --inst_solver_per_active                1400
% 3.98/0.87  --inst_solver_calls_frac                1.
% 3.98/0.87  --inst_passive_queue_type               priority_queues
% 3.98/0.87  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.98/0.87  --inst_passive_queues_freq              [25;2]
% 3.98/0.87  --inst_dismatching                      true
% 3.98/0.87  --inst_eager_unprocessed_to_passive     true
% 3.98/0.87  --inst_prop_sim_given                   true
% 3.98/0.87  --inst_prop_sim_new                     false
% 3.98/0.87  --inst_subs_new                         false
% 3.98/0.87  --inst_eq_res_simp                      false
% 3.98/0.87  --inst_subs_given                       false
% 3.98/0.87  --inst_orphan_elimination               true
% 3.98/0.87  --inst_learning_loop_flag               true
% 3.98/0.87  --inst_learning_start                   3000
% 3.98/0.87  --inst_learning_factor                  2
% 3.98/0.87  --inst_start_prop_sim_after_learn       3
% 3.98/0.87  --inst_sel_renew                        solver
% 3.98/0.87  --inst_lit_activity_flag                true
% 3.98/0.87  --inst_restr_to_given                   false
% 3.98/0.87  --inst_activity_threshold               500
% 3.98/0.87  --inst_out_proof                        true
% 3.98/0.87  
% 3.98/0.87  ------ Resolution Options
% 3.98/0.87  
% 3.98/0.87  --resolution_flag                       true
% 3.98/0.87  --res_lit_sel                           adaptive
% 3.98/0.87  --res_lit_sel_side                      none
% 3.98/0.87  --res_ordering                          kbo
% 3.98/0.87  --res_to_prop_solver                    active
% 3.98/0.87  --res_prop_simpl_new                    false
% 3.98/0.87  --res_prop_simpl_given                  true
% 3.98/0.87  --res_passive_queue_type                priority_queues
% 3.98/0.87  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.98/0.87  --res_passive_queues_freq               [15;5]
% 3.98/0.87  --res_forward_subs                      full
% 3.98/0.87  --res_backward_subs                     full
% 3.98/0.87  --res_forward_subs_resolution           true
% 3.98/0.87  --res_backward_subs_resolution          true
% 3.98/0.87  --res_orphan_elimination                true
% 3.98/0.87  --res_time_limit                        2.
% 3.98/0.87  --res_out_proof                         true
% 3.98/0.87  
% 3.98/0.87  ------ Superposition Options
% 3.98/0.87  
% 3.98/0.87  --superposition_flag                    true
% 3.98/0.87  --sup_passive_queue_type                priority_queues
% 3.98/0.87  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.98/0.87  --sup_passive_queues_freq               [8;1;4]
% 3.98/0.87  --demod_completeness_check              fast
% 3.98/0.87  --demod_use_ground                      true
% 3.98/0.87  --sup_to_prop_solver                    passive
% 3.98/0.87  --sup_prop_simpl_new                    true
% 3.98/0.87  --sup_prop_simpl_given                  true
% 3.98/0.87  --sup_fun_splitting                     true
% 3.98/0.87  --sup_smt_interval                      50000
% 3.98/0.87  
% 3.98/0.87  ------ Superposition Simplification Setup
% 3.98/0.87  
% 3.98/0.87  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.98/0.87  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.98/0.87  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.98/0.87  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.98/0.87  --sup_full_triv                         [TrivRules;PropSubs]
% 3.98/0.87  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.98/0.87  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.98/0.87  --sup_immed_triv                        [TrivRules]
% 3.98/0.87  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.98/0.87  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.98/0.87  --sup_immed_bw_main                     []
% 3.98/0.87  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.98/0.87  --sup_input_triv                        [Unflattening;TrivRules]
% 3.98/0.87  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.98/0.87  --sup_input_bw                          []
% 3.98/0.87  
% 3.98/0.87  ------ Combination Options
% 3.98/0.87  
% 3.98/0.87  --comb_res_mult                         3
% 3.98/0.87  --comb_sup_mult                         2
% 3.98/0.87  --comb_inst_mult                        10
% 3.98/0.87  
% 3.98/0.87  ------ Debug Options
% 3.98/0.87  
% 3.98/0.87  --dbg_backtrace                         false
% 3.98/0.87  --dbg_dump_prop_clauses                 false
% 3.98/0.87  --dbg_dump_prop_clauses_file            -
% 3.98/0.87  --dbg_out_stat                          false
% 3.98/0.87  ------ Parsing...
% 3.98/0.87  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.98/0.87  
% 3.98/0.87  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.98/0.87  
% 3.98/0.87  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.98/0.87  
% 3.98/0.87  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.98/0.87  ------ Proving...
% 3.98/0.87  ------ Problem Properties 
% 3.98/0.87  
% 3.98/0.87  
% 3.98/0.87  clauses                                 34
% 3.98/0.87  conjectures                             11
% 3.98/0.87  EPR                                     7
% 3.98/0.87  Horn                                    30
% 3.98/0.87  unary                                   16
% 3.98/0.87  binary                                  3
% 3.98/0.87  lits                                    126
% 3.98/0.87  lits eq                                 31
% 3.98/0.87  fd_pure                                 0
% 3.98/0.87  fd_pseudo                               0
% 3.98/0.87  fd_cond                                 4
% 3.98/0.87  fd_pseudo_cond                          1
% 3.98/0.87  AC symbols                              0
% 3.98/0.87  
% 3.98/0.87  ------ Schedule dynamic 5 is on 
% 3.98/0.87  
% 3.98/0.87  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.98/0.87  
% 3.98/0.87  
% 3.98/0.87  ------ 
% 3.98/0.87  Current options:
% 3.98/0.87  ------ 
% 3.98/0.87  
% 3.98/0.87  ------ Input Options
% 3.98/0.87  
% 3.98/0.87  --out_options                           all
% 3.98/0.87  --tptp_safe_out                         true
% 3.98/0.87  --problem_path                          ""
% 3.98/0.87  --include_path                          ""
% 3.98/0.87  --clausifier                            res/vclausify_rel
% 3.98/0.87  --clausifier_options                    ""
% 3.98/0.87  --stdin                                 false
% 3.98/0.87  --stats_out                             all
% 3.98/0.87  
% 3.98/0.87  ------ General Options
% 3.98/0.87  
% 3.98/0.87  --fof                                   false
% 3.98/0.87  --time_out_real                         305.
% 3.98/0.87  --time_out_virtual                      -1.
% 3.98/0.87  --symbol_type_check                     false
% 3.98/0.87  --clausify_out                          false
% 3.98/0.87  --sig_cnt_out                           false
% 3.98/0.87  --trig_cnt_out                          false
% 3.98/0.87  --trig_cnt_out_tolerance                1.
% 3.98/0.87  --trig_cnt_out_sk_spl                   false
% 3.98/0.87  --abstr_cl_out                          false
% 3.98/0.87  
% 3.98/0.87  ------ Global Options
% 3.98/0.87  
% 3.98/0.87  --schedule                              default
% 3.98/0.87  --add_important_lit                     false
% 3.98/0.87  --prop_solver_per_cl                    1000
% 3.98/0.87  --min_unsat_core                        false
% 3.98/0.87  --soft_assumptions                      false
% 3.98/0.87  --soft_lemma_size                       3
% 3.98/0.87  --prop_impl_unit_size                   0
% 3.98/0.87  --prop_impl_unit                        []
% 3.98/0.87  --share_sel_clauses                     true
% 3.98/0.87  --reset_solvers                         false
% 3.98/0.87  --bc_imp_inh                            [conj_cone]
% 3.98/0.87  --conj_cone_tolerance                   3.
% 3.98/0.87  --extra_neg_conj                        none
% 3.98/0.87  --large_theory_mode                     true
% 3.98/0.87  --prolific_symb_bound                   200
% 3.98/0.87  --lt_threshold                          2000
% 3.98/0.87  --clause_weak_htbl                      true
% 3.98/0.87  --gc_record_bc_elim                     false
% 3.98/0.87  
% 3.98/0.87  ------ Preprocessing Options
% 3.98/0.87  
% 3.98/0.87  --preprocessing_flag                    true
% 3.98/0.87  --time_out_prep_mult                    0.1
% 3.98/0.87  --splitting_mode                        input
% 3.98/0.87  --splitting_grd                         true
% 3.98/0.87  --splitting_cvd                         false
% 3.98/0.87  --splitting_cvd_svl                     false
% 3.98/0.87  --splitting_nvd                         32
% 3.98/0.87  --sub_typing                            true
% 3.98/0.87  --prep_gs_sim                           true
% 3.98/0.87  --prep_unflatten                        true
% 3.98/0.87  --prep_res_sim                          true
% 3.98/0.87  --prep_upred                            true
% 3.98/0.87  --prep_sem_filter                       exhaustive
% 3.98/0.87  --prep_sem_filter_out                   false
% 3.98/0.87  --pred_elim                             true
% 3.98/0.87  --res_sim_input                         true
% 3.98/0.87  --eq_ax_congr_red                       true
% 3.98/0.87  --pure_diseq_elim                       true
% 3.98/0.87  --brand_transform                       false
% 3.98/0.87  --non_eq_to_eq                          false
% 3.98/0.87  --prep_def_merge                        true
% 3.98/0.87  --prep_def_merge_prop_impl              false
% 3.98/0.87  --prep_def_merge_mbd                    true
% 3.98/0.87  --prep_def_merge_tr_red                 false
% 3.98/0.87  --prep_def_merge_tr_cl                  false
% 3.98/0.87  --smt_preprocessing                     true
% 3.98/0.87  --smt_ac_axioms                         fast
% 3.98/0.87  --preprocessed_out                      false
% 3.98/0.87  --preprocessed_stats                    false
% 3.98/0.87  
% 3.98/0.87  ------ Abstraction refinement Options
% 3.98/0.87  
% 3.98/0.87  --abstr_ref                             []
% 3.98/0.87  --abstr_ref_prep                        false
% 3.98/0.87  --abstr_ref_until_sat                   false
% 3.98/0.87  --abstr_ref_sig_restrict                funpre
% 3.98/0.87  --abstr_ref_af_restrict_to_split_sk     false
% 3.98/0.87  --abstr_ref_under                       []
% 3.98/0.87  
% 3.98/0.87  ------ SAT Options
% 3.98/0.87  
% 3.98/0.87  --sat_mode                              false
% 3.98/0.87  --sat_fm_restart_options                ""
% 3.98/0.87  --sat_gr_def                            false
% 3.98/0.87  --sat_epr_types                         true
% 3.98/0.87  --sat_non_cyclic_types                  false
% 3.98/0.87  --sat_finite_models                     false
% 3.98/0.87  --sat_fm_lemmas                         false
% 3.98/0.87  --sat_fm_prep                           false
% 3.98/0.87  --sat_fm_uc_incr                        true
% 3.98/0.87  --sat_out_model                         small
% 3.98/0.87  --sat_out_clauses                       false
% 3.98/0.87  
% 3.98/0.87  ------ QBF Options
% 3.98/0.87  
% 3.98/0.87  --qbf_mode                              false
% 3.98/0.87  --qbf_elim_univ                         false
% 3.98/0.87  --qbf_dom_inst                          none
% 3.98/0.87  --qbf_dom_pre_inst                      false
% 3.98/0.87  --qbf_sk_in                             false
% 3.98/0.87  --qbf_pred_elim                         true
% 3.98/0.87  --qbf_split                             512
% 3.98/0.87  
% 3.98/0.87  ------ BMC1 Options
% 3.98/0.87  
% 3.98/0.87  --bmc1_incremental                      false
% 3.98/0.87  --bmc1_axioms                           reachable_all
% 3.98/0.87  --bmc1_min_bound                        0
% 3.98/0.87  --bmc1_max_bound                        -1
% 3.98/0.87  --bmc1_max_bound_default                -1
% 3.98/0.87  --bmc1_symbol_reachability              true
% 3.98/0.87  --bmc1_property_lemmas                  false
% 3.98/0.87  --bmc1_k_induction                      false
% 3.98/0.87  --bmc1_non_equiv_states                 false
% 3.98/0.87  --bmc1_deadlock                         false
% 3.98/0.87  --bmc1_ucm                              false
% 3.98/0.87  --bmc1_add_unsat_core                   none
% 3.98/0.87  --bmc1_unsat_core_children              false
% 3.98/0.87  --bmc1_unsat_core_extrapolate_axioms    false
% 3.98/0.87  --bmc1_out_stat                         full
% 3.98/0.87  --bmc1_ground_init                      false
% 3.98/0.87  --bmc1_pre_inst_next_state              false
% 3.98/0.87  --bmc1_pre_inst_state                   false
% 3.98/0.87  --bmc1_pre_inst_reach_state             false
% 3.98/0.87  --bmc1_out_unsat_core                   false
% 3.98/0.87  --bmc1_aig_witness_out                  false
% 3.98/0.87  --bmc1_verbose                          false
% 3.98/0.87  --bmc1_dump_clauses_tptp                false
% 3.98/0.87  --bmc1_dump_unsat_core_tptp             false
% 3.98/0.87  --bmc1_dump_file                        -
% 3.98/0.87  --bmc1_ucm_expand_uc_limit              128
% 3.98/0.87  --bmc1_ucm_n_expand_iterations          6
% 3.98/0.87  --bmc1_ucm_extend_mode                  1
% 3.98/0.87  --bmc1_ucm_init_mode                    2
% 3.98/0.87  --bmc1_ucm_cone_mode                    none
% 3.98/0.87  --bmc1_ucm_reduced_relation_type        0
% 3.98/0.87  --bmc1_ucm_relax_model                  4
% 3.98/0.87  --bmc1_ucm_full_tr_after_sat            true
% 3.98/0.87  --bmc1_ucm_expand_neg_assumptions       false
% 3.98/0.87  --bmc1_ucm_layered_model                none
% 3.98/0.87  --bmc1_ucm_max_lemma_size               10
% 3.98/0.87  
% 3.98/0.87  ------ AIG Options
% 3.98/0.87  
% 3.98/0.87  --aig_mode                              false
% 3.98/0.87  
% 3.98/0.87  ------ Instantiation Options
% 3.98/0.87  
% 3.98/0.87  --instantiation_flag                    true
% 3.98/0.87  --inst_sos_flag                         true
% 3.98/0.87  --inst_sos_phase                        true
% 3.98/0.87  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.98/0.87  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.98/0.87  --inst_lit_sel_side                     none
% 3.98/0.87  --inst_solver_per_active                1400
% 3.98/0.87  --inst_solver_calls_frac                1.
% 3.98/0.87  --inst_passive_queue_type               priority_queues
% 3.98/0.87  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.98/0.87  --inst_passive_queues_freq              [25;2]
% 3.98/0.87  --inst_dismatching                      true
% 3.98/0.87  --inst_eager_unprocessed_to_passive     true
% 3.98/0.87  --inst_prop_sim_given                   true
% 3.98/0.87  --inst_prop_sim_new                     false
% 3.98/0.87  --inst_subs_new                         false
% 3.98/0.87  --inst_eq_res_simp                      false
% 3.98/0.87  --inst_subs_given                       false
% 3.98/0.87  --inst_orphan_elimination               true
% 3.98/0.87  --inst_learning_loop_flag               true
% 3.98/0.87  --inst_learning_start                   3000
% 3.98/0.87  --inst_learning_factor                  2
% 3.98/0.87  --inst_start_prop_sim_after_learn       3
% 3.98/0.87  --inst_sel_renew                        solver
% 3.98/0.87  --inst_lit_activity_flag                true
% 3.98/0.87  --inst_restr_to_given                   false
% 3.98/0.87  --inst_activity_threshold               500
% 3.98/0.87  --inst_out_proof                        true
% 3.98/0.87  
% 3.98/0.87  ------ Resolution Options
% 3.98/0.87  
% 3.98/0.87  --resolution_flag                       false
% 3.98/0.87  --res_lit_sel                           adaptive
% 3.98/0.87  --res_lit_sel_side                      none
% 3.98/0.87  --res_ordering                          kbo
% 3.98/0.87  --res_to_prop_solver                    active
% 3.98/0.87  --res_prop_simpl_new                    false
% 3.98/0.87  --res_prop_simpl_given                  true
% 3.98/0.87  --res_passive_queue_type                priority_queues
% 3.98/0.87  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.98/0.87  --res_passive_queues_freq               [15;5]
% 3.98/0.87  --res_forward_subs                      full
% 3.98/0.87  --res_backward_subs                     full
% 3.98/0.87  --res_forward_subs_resolution           true
% 3.98/0.87  --res_backward_subs_resolution          true
% 3.98/0.87  --res_orphan_elimination                true
% 3.98/0.87  --res_time_limit                        2.
% 3.98/0.87  --res_out_proof                         true
% 3.98/0.87  
% 3.98/0.87  ------ Superposition Options
% 3.98/0.87  
% 3.98/0.87  --superposition_flag                    true
% 3.98/0.87  --sup_passive_queue_type                priority_queues
% 3.98/0.87  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.98/0.87  --sup_passive_queues_freq               [8;1;4]
% 3.98/0.87  --demod_completeness_check              fast
% 3.98/0.87  --demod_use_ground                      true
% 3.98/0.87  --sup_to_prop_solver                    passive
% 3.98/0.87  --sup_prop_simpl_new                    true
% 3.98/0.87  --sup_prop_simpl_given                  true
% 3.98/0.87  --sup_fun_splitting                     true
% 3.98/0.87  --sup_smt_interval                      50000
% 3.98/0.87  
% 3.98/0.87  ------ Superposition Simplification Setup
% 3.98/0.87  
% 3.98/0.87  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.98/0.87  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.98/0.87  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.98/0.87  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 3.98/0.87  --sup_full_triv                         [TrivRules;PropSubs]
% 3.98/0.87  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.98/0.87  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.98/0.87  --sup_immed_triv                        [TrivRules]
% 3.98/0.87  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.98/0.87  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.98/0.87  --sup_immed_bw_main                     []
% 3.98/0.87  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.98/0.87  --sup_input_triv                        [Unflattening;TrivRules]
% 3.98/0.87  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.98/0.87  --sup_input_bw                          []
% 3.98/0.87  
% 3.98/0.87  ------ Combination Options
% 3.98/0.87  
% 3.98/0.87  --comb_res_mult                         3
% 3.98/0.87  --comb_sup_mult                         2
% 3.98/0.87  --comb_inst_mult                        10
% 3.98/0.87  
% 3.98/0.87  ------ Debug Options
% 3.98/0.87  
% 3.98/0.87  --dbg_backtrace                         false
% 3.98/0.87  --dbg_dump_prop_clauses                 false
% 3.98/0.87  --dbg_dump_prop_clauses_file            -
% 3.98/0.87  --dbg_out_stat                          false
% 3.98/0.87  
% 3.98/0.87  
% 3.98/0.87  
% 3.98/0.87  
% 3.98/0.87  ------ Proving...
% 3.98/0.87  
% 3.98/0.87  
% 3.98/0.87  % SZS status Theorem for theBenchmark.p
% 3.98/0.87  
% 3.98/0.87  % SZS output start CNFRefutation for theBenchmark.p
% 3.98/0.87  
% 3.98/0.87  fof(f13,axiom,(
% 3.98/0.87    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) => k2_relset_1(X0,X1,X2) = X1)))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f33,plain,(
% 3.98/0.87    ! [X0,X1,X2] : (! [X3] : ((k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3))) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.98/0.87    inference(ennf_transformation,[],[f13])).
% 3.98/0.87  
% 3.98/0.87  fof(f34,plain,(
% 3.98/0.87    ! [X0,X1,X2] : (! [X3] : (k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.98/0.87    inference(flattening,[],[f33])).
% 3.98/0.87  
% 3.98/0.87  fof(f62,plain,(
% 3.98/0.87    ( ! [X2,X0,X3,X1] : (k2_relset_1(X0,X1,X2) = X1 | ~r2_relset_1(X1,X1,k1_partfun1(X1,X0,X0,X1,X3,X2),k6_partfun1(X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(X3,X1,X0) | ~v1_funct_1(X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f34])).
% 3.98/0.87  
% 3.98/0.87  fof(f16,conjecture,(
% 3.98/0.87    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f17,negated_conjecture,(
% 3.98/0.87    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 3.98/0.87    inference(negated_conjecture,[],[f16])).
% 3.98/0.87  
% 3.98/0.87  fof(f39,plain,(
% 3.98/0.87    ? [X0,X1,X2] : (? [X3] : (((k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & (v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 3.98/0.87    inference(ennf_transformation,[],[f17])).
% 3.98/0.87  
% 3.98/0.87  fof(f40,plain,(
% 3.98/0.87    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 3.98/0.87    inference(flattening,[],[f39])).
% 3.98/0.87  
% 3.98/0.87  fof(f43,plain,(
% 3.98/0.87    ( ! [X2,X0,X1] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (k2_funct_1(X2) != sK3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,sK3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(sK3,X1,X0) & v1_funct_1(sK3))) )),
% 3.98/0.87    introduced(choice_axiom,[])).
% 3.98/0.87  
% 3.98/0.87  fof(f42,plain,(
% 3.98/0.87    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (k2_funct_1(sK2) != X3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,X3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(X3,sK1,sK0) & v1_funct_1(X3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 3.98/0.87    introduced(choice_axiom,[])).
% 3.98/0.87  
% 3.98/0.87  fof(f44,plain,(
% 3.98/0.87    (k2_funct_1(sK2) != sK3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(sK3,sK1,sK0) & v1_funct_1(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 3.98/0.87    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f40,f43,f42])).
% 3.98/0.87  
% 3.98/0.87  fof(f76,plain,(
% 3.98/0.87    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0))),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f69,plain,(
% 3.98/0.87    v1_funct_1(sK2)),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f70,plain,(
% 3.98/0.87    v1_funct_2(sK2,sK0,sK1)),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f71,plain,(
% 3.98/0.87    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f72,plain,(
% 3.98/0.87    v1_funct_1(sK3)),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f73,plain,(
% 3.98/0.87    v1_funct_2(sK3,sK1,sK0)),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f74,plain,(
% 3.98/0.87    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f15,axiom,(
% 3.98/0.87    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((v2_funct_1(X2) & k2_relset_1(X0,X1,X2) = X1) => ((k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)) | k1_xboole_0 = X1)))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f37,plain,(
% 3.98/0.87    ! [X0,X1,X2] : ((((k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)) | k1_xboole_0 = X1) | (~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1)) | (~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)))),
% 3.98/0.87    inference(ennf_transformation,[],[f15])).
% 3.98/0.87  
% 3.98/0.87  fof(f38,plain,(
% 3.98/0.87    ! [X0,X1,X2] : ((k5_relat_1(k2_funct_1(X2),X2) = k6_partfun1(X1) & k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)) | k1_xboole_0 = X1 | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2))),
% 3.98/0.87    inference(flattening,[],[f37])).
% 3.98/0.87  
% 3.98/0.87  fof(f67,plain,(
% 3.98/0.87    ( ! [X2,X0,X1] : (k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0) | k1_xboole_0 = X1 | ~v2_funct_1(X2) | k2_relset_1(X0,X1,X2) != X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X2,X0,X1) | ~v1_funct_1(X2)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f38])).
% 3.98/0.87  
% 3.98/0.87  fof(f78,plain,(
% 3.98/0.87    k1_xboole_0 != sK0),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f2,axiom,(
% 3.98/0.87    ! [X0] : (v2_funct_1(k6_relat_1(X0)) & v1_relat_1(k6_relat_1(X0)))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f48,plain,(
% 3.98/0.87    ( ! [X0] : (v2_funct_1(k6_relat_1(X0))) )),
% 3.98/0.87    inference(cnf_transformation,[],[f2])).
% 3.98/0.87  
% 3.98/0.87  fof(f12,axiom,(
% 3.98/0.87    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f61,plain,(
% 3.98/0.87    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f12])).
% 3.98/0.87  
% 3.98/0.87  fof(f83,plain,(
% 3.98/0.87    ( ! [X0] : (v2_funct_1(k6_partfun1(X0))) )),
% 3.98/0.87    inference(definition_unfolding,[],[f48,f61])).
% 3.98/0.87  
% 3.98/0.87  fof(f8,axiom,(
% 3.98/0.87    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f27,plain,(
% 3.98/0.87    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 3.98/0.87    inference(ennf_transformation,[],[f8])).
% 3.98/0.87  
% 3.98/0.87  fof(f28,plain,(
% 3.98/0.87    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.98/0.87    inference(flattening,[],[f27])).
% 3.98/0.87  
% 3.98/0.87  fof(f41,plain,(
% 3.98/0.87    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.98/0.87    inference(nnf_transformation,[],[f28])).
% 3.98/0.87  
% 3.98/0.87  fof(f55,plain,(
% 3.98/0.87    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.98/0.87    inference(cnf_transformation,[],[f41])).
% 3.98/0.87  
% 3.98/0.87  fof(f10,axiom,(
% 3.98/0.87    ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_partfun1(k6_partfun1(X0),X0))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f18,plain,(
% 3.98/0.87    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 3.98/0.87    inference(pure_predicate_removal,[],[f10])).
% 3.98/0.87  
% 3.98/0.87  fof(f59,plain,(
% 3.98/0.87    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 3.98/0.87    inference(cnf_transformation,[],[f18])).
% 3.98/0.87  
% 3.98/0.87  fof(f9,axiom,(
% 3.98/0.87    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f29,plain,(
% 3.98/0.87    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.98/0.87    inference(ennf_transformation,[],[f9])).
% 3.98/0.87  
% 3.98/0.87  fof(f30,plain,(
% 3.98/0.87    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.98/0.87    inference(flattening,[],[f29])).
% 3.98/0.87  
% 3.98/0.87  fof(f58,plain,(
% 3.98/0.87    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f30])).
% 3.98/0.87  
% 3.98/0.87  fof(f75,plain,(
% 3.98/0.87    k2_relset_1(sK0,sK1,sK2) = sK1),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f14,axiom,(
% 3.98/0.87    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X3,X0,X1) & v1_funct_1(X3)) => ! [X4] : ((m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) & v1_funct_2(X4,X1,X2) & v1_funct_1(X4)) => ((k2_relset_1(X0,X1,X3) = X1 & v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4))) => ((v2_funct_1(X4) & v2_funct_1(X3)) | (k1_xboole_0 != X1 & k1_xboole_0 = X2)))))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f35,plain,(
% 3.98/0.87    ! [X0,X1,X2,X3] : (! [X4] : ((((v2_funct_1(X4) & v2_funct_1(X3)) | (k1_xboole_0 != X1 & k1_xboole_0 = X2)) | (k2_relset_1(X0,X1,X3) != X1 | ~v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)))) | (~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X4,X1,X2) | ~v1_funct_1(X4))) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)))),
% 3.98/0.87    inference(ennf_transformation,[],[f14])).
% 3.98/0.87  
% 3.98/0.87  fof(f36,plain,(
% 3.98/0.87    ! [X0,X1,X2,X3] : (! [X4] : ((v2_funct_1(X4) & v2_funct_1(X3)) | (k1_xboole_0 != X1 & k1_xboole_0 = X2) | k2_relset_1(X0,X1,X3) != X1 | ~v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X4,X1,X2) | ~v1_funct_1(X4)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3))),
% 3.98/0.87    inference(flattening,[],[f35])).
% 3.98/0.87  
% 3.98/0.87  fof(f65,plain,(
% 3.98/0.87    ( ! [X4,X2,X0,X3,X1] : (v2_funct_1(X4) | k1_xboole_0 = X2 | k2_relset_1(X0,X1,X3) != X1 | ~v2_funct_1(k1_partfun1(X0,X1,X1,X2,X3,X4)) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~v1_funct_2(X4,X1,X2) | ~v1_funct_1(X4) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_2(X3,X0,X1) | ~v1_funct_1(X3)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f36])).
% 3.98/0.87  
% 3.98/0.87  fof(f4,axiom,(
% 3.98/0.87    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))))))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f21,plain,(
% 3.98/0.87    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.98/0.87    inference(ennf_transformation,[],[f4])).
% 3.98/0.87  
% 3.98/0.87  fof(f22,plain,(
% 3.98/0.87    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) & k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0)))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.98/0.87    inference(flattening,[],[f21])).
% 3.98/0.87  
% 3.98/0.87  fof(f51,plain,(
% 3.98/0.87    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f22])).
% 3.98/0.87  
% 3.98/0.87  fof(f6,axiom,(
% 3.98/0.87    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f25,plain,(
% 3.98/0.87    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.98/0.87    inference(ennf_transformation,[],[f6])).
% 3.98/0.87  
% 3.98/0.87  fof(f53,plain,(
% 3.98/0.87    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.98/0.87    inference(cnf_transformation,[],[f25])).
% 3.98/0.87  
% 3.98/0.87  fof(f1,axiom,(
% 3.98/0.87    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f46,plain,(
% 3.98/0.87    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 3.98/0.87    inference(cnf_transformation,[],[f1])).
% 3.98/0.87  
% 3.98/0.87  fof(f81,plain,(
% 3.98/0.87    ( ! [X0] : (k2_relat_1(k6_partfun1(X0)) = X0) )),
% 3.98/0.87    inference(definition_unfolding,[],[f46,f61])).
% 3.98/0.87  
% 3.98/0.87  fof(f77,plain,(
% 3.98/0.87    v2_funct_1(sK2)),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f79,plain,(
% 3.98/0.87    k1_xboole_0 != sK1),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  fof(f50,plain,(
% 3.98/0.87    ( ! [X0] : (k1_relat_1(X0) = k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f22])).
% 3.98/0.87  
% 3.98/0.87  fof(f45,plain,(
% 3.98/0.87    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 3.98/0.87    inference(cnf_transformation,[],[f1])).
% 3.98/0.87  
% 3.98/0.87  fof(f82,plain,(
% 3.98/0.87    ( ! [X0] : (k1_relat_1(k6_partfun1(X0)) = X0) )),
% 3.98/0.87    inference(definition_unfolding,[],[f45,f61])).
% 3.98/0.87  
% 3.98/0.87  fof(f11,axiom,(
% 3.98/0.87    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f31,plain,(
% 3.98/0.87    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.98/0.87    inference(ennf_transformation,[],[f11])).
% 3.98/0.87  
% 3.98/0.87  fof(f32,plain,(
% 3.98/0.87    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.98/0.87    inference(flattening,[],[f31])).
% 3.98/0.87  
% 3.98/0.87  fof(f60,plain,(
% 3.98/0.87    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f32])).
% 3.98/0.87  
% 3.98/0.87  fof(f5,axiom,(
% 3.98/0.87    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => ! [X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => ((k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,X1) & k1_relat_1(X1) = k2_relat_1(X0) & v2_funct_1(X0)) => k2_funct_1(X0) = X1)))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f23,plain,(
% 3.98/0.87    ! [X0] : (! [X1] : ((k2_funct_1(X0) = X1 | (k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1) | k1_relat_1(X1) != k2_relat_1(X0) | ~v2_funct_1(X0))) | (~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.98/0.87    inference(ennf_transformation,[],[f5])).
% 3.98/0.87  
% 3.98/0.87  fof(f24,plain,(
% 3.98/0.87    ! [X0] : (! [X1] : (k2_funct_1(X0) = X1 | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1) | k1_relat_1(X1) != k2_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.98/0.87    inference(flattening,[],[f23])).
% 3.98/0.87  
% 3.98/0.87  fof(f52,plain,(
% 3.98/0.87    ( ! [X0,X1] : (k2_funct_1(X0) = X1 | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1) | k1_relat_1(X1) != k2_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f24])).
% 3.98/0.87  
% 3.98/0.87  fof(f86,plain,(
% 3.98/0.87    ( ! [X0,X1] : (k2_funct_1(X0) = X1 | k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0)) | k1_relat_1(X1) != k2_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.98/0.87    inference(definition_unfolding,[],[f52,f61])).
% 3.98/0.87  
% 3.98/0.87  fof(f3,axiom,(
% 3.98/0.87    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (? [X1] : (k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,X1) & v1_funct_1(X1) & v1_relat_1(X1)) => v2_funct_1(X0)))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f19,plain,(
% 3.98/0.87    ! [X0] : ((v2_funct_1(X0) | ! [X1] : (k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.98/0.87    inference(ennf_transformation,[],[f3])).
% 3.98/0.87  
% 3.98/0.87  fof(f20,plain,(
% 3.98/0.87    ! [X0] : (v2_funct_1(X0) | ! [X1] : (k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.98/0.87    inference(flattening,[],[f19])).
% 3.98/0.87  
% 3.98/0.87  fof(f49,plain,(
% 3.98/0.87    ( ! [X0,X1] : (v2_funct_1(X0) | k6_relat_1(k1_relat_1(X0)) != k5_relat_1(X0,X1) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.98/0.87    inference(cnf_transformation,[],[f20])).
% 3.98/0.87  
% 3.98/0.87  fof(f85,plain,(
% 3.98/0.87    ( ! [X0,X1] : (v2_funct_1(X0) | k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0)) | ~v1_funct_1(X1) | ~v1_relat_1(X1) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.98/0.87    inference(definition_unfolding,[],[f49,f61])).
% 3.98/0.87  
% 3.98/0.87  fof(f7,axiom,(
% 3.98/0.87    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.98/0.87    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.98/0.87  
% 3.98/0.87  fof(f26,plain,(
% 3.98/0.87    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.98/0.87    inference(ennf_transformation,[],[f7])).
% 3.98/0.87  
% 3.98/0.87  fof(f54,plain,(
% 3.98/0.87    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.98/0.87    inference(cnf_transformation,[],[f26])).
% 3.98/0.87  
% 3.98/0.87  fof(f80,plain,(
% 3.98/0.87    k2_funct_1(sK2) != sK3),
% 3.98/0.87    inference(cnf_transformation,[],[f44])).
% 3.98/0.87  
% 3.98/0.87  cnf(c_16,plain,
% 3.98/0.87      ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0))
% 3.98/0.87      | ~ v1_funct_2(X2,X0,X1)
% 3.98/0.87      | ~ v1_funct_2(X3,X1,X0)
% 3.98/0.87      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
% 3.98/0.87      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.98/0.87      | ~ v1_funct_1(X2)
% 3.98/0.87      | ~ v1_funct_1(X3)
% 3.98/0.87      | k2_relset_1(X1,X0,X3) = X0 ),
% 3.98/0.87      inference(cnf_transformation,[],[f62]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_27,negated_conjecture,
% 3.98/0.87      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
% 3.98/0.87      inference(cnf_transformation,[],[f76]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_384,plain,
% 3.98/0.87      ( ~ v1_funct_2(X0,X1,X2)
% 3.98/0.87      | ~ v1_funct_2(X3,X2,X1)
% 3.98/0.87      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.98/0.87      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.98/0.87      | ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X3)
% 3.98/0.87      | k1_partfun1(X2,X1,X1,X2,X3,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.98/0.87      | k2_relset_1(X1,X2,X0) = X2
% 3.98/0.87      | k6_partfun1(X2) != k6_partfun1(sK0)
% 3.98/0.87      | sK0 != X2 ),
% 3.98/0.87      inference(resolution_lifted,[status(thm)],[c_16,c_27]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_385,plain,
% 3.98/0.87      ( ~ v1_funct_2(X0,X1,sK0)
% 3.98/0.87      | ~ v1_funct_2(X2,sK0,X1)
% 3.98/0.87      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
% 3.98/0.87      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
% 3.98/0.87      | ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X2)
% 3.98/0.87      | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.98/0.87      | k2_relset_1(X1,sK0,X0) = sK0
% 3.98/0.87      | k6_partfun1(sK0) != k6_partfun1(sK0) ),
% 3.98/0.87      inference(unflattening,[status(thm)],[c_384]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_467,plain,
% 3.98/0.87      ( ~ v1_funct_2(X0,X1,sK0)
% 3.98/0.87      | ~ v1_funct_2(X2,sK0,X1)
% 3.98/0.87      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK0)))
% 3.98/0.87      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(sK0,X1)))
% 3.98/0.87      | ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X2)
% 3.98/0.87      | k1_partfun1(sK0,X1,X1,sK0,X2,X0) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.98/0.87      | k2_relset_1(X1,sK0,X0) = sK0 ),
% 3.98/0.87      inference(equality_resolution_simp,[status(thm)],[c_385]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1102,plain,
% 3.98/0.87      ( k1_partfun1(sK0,X0,X0,sK0,X1,X2) != k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.98/0.87      | k2_relset_1(X0,sK0,X2) = sK0
% 3.98/0.87      | v1_funct_2(X2,X0,sK0) != iProver_top
% 3.98/0.87      | v1_funct_2(X1,sK0,X0) != iProver_top
% 3.98/0.87      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,sK0))) != iProver_top
% 3.98/0.87      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK0,X0))) != iProver_top
% 3.98/0.87      | v1_funct_1(X2) != iProver_top
% 3.98/0.87      | v1_funct_1(X1) != iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_467]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1642,plain,
% 3.98/0.87      ( k2_relset_1(sK1,sK0,sK3) = sK0
% 3.98/0.87      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.98/0.87      | v1_funct_2(sK2,sK0,sK1) != iProver_top
% 3.98/0.87      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.98/0.87      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.98/0.87      | v1_funct_1(sK3) != iProver_top
% 3.98/0.87      | v1_funct_1(sK2) != iProver_top ),
% 3.98/0.87      inference(equality_resolution,[status(thm)],[c_1102]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_34,negated_conjecture,
% 3.98/0.87      ( v1_funct_1(sK2) ),
% 3.98/0.87      inference(cnf_transformation,[],[f69]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_35,plain,
% 3.98/0.87      ( v1_funct_1(sK2) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_33,negated_conjecture,
% 3.98/0.87      ( v1_funct_2(sK2,sK0,sK1) ),
% 3.98/0.87      inference(cnf_transformation,[],[f70]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_36,plain,
% 3.98/0.87      ( v1_funct_2(sK2,sK0,sK1) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_32,negated_conjecture,
% 3.98/0.87      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.98/0.87      inference(cnf_transformation,[],[f71]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_37,plain,
% 3.98/0.87      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_31,negated_conjecture,
% 3.98/0.87      ( v1_funct_1(sK3) ),
% 3.98/0.87      inference(cnf_transformation,[],[f72]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_38,plain,
% 3.98/0.87      ( v1_funct_1(sK3) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_30,negated_conjecture,
% 3.98/0.87      ( v1_funct_2(sK3,sK1,sK0) ),
% 3.98/0.87      inference(cnf_transformation,[],[f73]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_39,plain,
% 3.98/0.87      ( v1_funct_2(sK3,sK1,sK0) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_30]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_29,negated_conjecture,
% 3.98/0.87      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
% 3.98/0.87      inference(cnf_transformation,[],[f74]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_40,plain,
% 3.98/0.87      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1811,plain,
% 3.98/0.87      ( k2_relset_1(sK1,sK0,sK3) = sK0 ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_1642,c_35,c_36,c_37,c_38,c_39,c_40]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_22,plain,
% 3.98/0.87      ( ~ v1_funct_2(X0,X1,X2)
% 3.98/0.87      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.98/0.87      | ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v2_funct_1(X0)
% 3.98/0.87      | k2_relset_1(X1,X2,X0) != X2
% 3.98/0.87      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
% 3.98/0.87      | k1_xboole_0 = X2 ),
% 3.98/0.87      inference(cnf_transformation,[],[f67]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1113,plain,
% 3.98/0.87      ( k2_relset_1(X0,X1,X2) != X1
% 3.98/0.87      | k5_relat_1(X2,k2_funct_1(X2)) = k6_partfun1(X0)
% 3.98/0.87      | k1_xboole_0 = X1
% 3.98/0.87      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.98/0.87      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.98/0.87      | v1_funct_1(X2) != iProver_top
% 3.98/0.87      | v2_funct_1(X2) != iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3670,plain,
% 3.98/0.87      ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1)
% 3.98/0.87      | sK0 = k1_xboole_0
% 3.98/0.87      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.98/0.87      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.98/0.87      | v1_funct_1(sK3) != iProver_top
% 3.98/0.87      | v2_funct_1(sK3) != iProver_top ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_1811,c_1113]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_25,negated_conjecture,
% 3.98/0.87      ( k1_xboole_0 != sK0 ),
% 3.98/0.87      inference(cnf_transformation,[],[f78]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_631,plain,( X0 = X0 ),theory(equality) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_662,plain,
% 3.98/0.87      ( k1_xboole_0 = k1_xboole_0 ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_631]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_632,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1210,plain,
% 3.98/0.87      ( sK0 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK0 ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_632]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1211,plain,
% 3.98/0.87      ( sK0 != k1_xboole_0
% 3.98/0.87      | k1_xboole_0 = sK0
% 3.98/0.87      | k1_xboole_0 != k1_xboole_0 ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_1210]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2,plain,
% 3.98/0.87      ( v2_funct_1(k6_partfun1(X0)) ),
% 3.98/0.87      inference(cnf_transformation,[],[f83]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_4820,plain,
% 3.98/0.87      ( v2_funct_1(k6_partfun1(sK0)) ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_2]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_4821,plain,
% 3.98/0.87      ( v2_funct_1(k6_partfun1(sK0)) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_4820]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_11,plain,
% 3.98/0.87      ( ~ r2_relset_1(X0,X1,X2,X3)
% 3.98/0.87      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.98/0.87      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.98/0.87      | X3 = X2 ),
% 3.98/0.87      inference(cnf_transformation,[],[f55]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_371,plain,
% 3.98/0.87      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.98/0.87      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.98/0.87      | X3 = X0
% 3.98/0.87      | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
% 3.98/0.87      | k6_partfun1(sK0) != X3
% 3.98/0.87      | sK0 != X2
% 3.98/0.87      | sK0 != X1 ),
% 3.98/0.87      inference(resolution_lifted,[status(thm)],[c_11,c_27]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_372,plain,
% 3.98/0.87      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.98/0.87      | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.98/0.87      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 3.98/0.87      inference(unflattening,[status(thm)],[c_371]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_14,plain,
% 3.98/0.87      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 3.98/0.87      inference(cnf_transformation,[],[f59]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_380,plain,
% 3.98/0.87      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.98/0.87      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 3.98/0.87      inference(forward_subsumption_resolution,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_372,c_14]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1103,plain,
% 3.98/0.87      ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 3.98/0.87      | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_380]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_12,plain,
% 3.98/0.87      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.98/0.87      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.98/0.87      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 3.98/0.87      | ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X3) ),
% 3.98/0.87      inference(cnf_transformation,[],[f58]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1212,plain,
% 3.98/0.87      ( m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.98/0.87      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.98/0.87      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.98/0.87      | ~ v1_funct_1(sK3)
% 3.98/0.87      | ~ v1_funct_1(sK2) ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_12]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1804,plain,
% 3.98/0.87      ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_1103,c_34,c_32,c_31,c_29,c_380,c_1212]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_28,negated_conjecture,
% 3.98/0.87      ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
% 3.98/0.87      inference(cnf_transformation,[],[f75]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_18,plain,
% 3.98/0.87      ( ~ v1_funct_2(X0,X1,X2)
% 3.98/0.87      | ~ v1_funct_2(X3,X4,X1)
% 3.98/0.87      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X1)))
% 3.98/0.87      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.98/0.87      | ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X3)
% 3.98/0.87      | v2_funct_1(X0)
% 3.98/0.87      | ~ v2_funct_1(k1_partfun1(X4,X1,X1,X2,X3,X0))
% 3.98/0.87      | k2_relset_1(X4,X1,X3) != X1
% 3.98/0.87      | k1_xboole_0 = X2 ),
% 3.98/0.87      inference(cnf_transformation,[],[f65]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1117,plain,
% 3.98/0.87      ( k2_relset_1(X0,X1,X2) != X1
% 3.98/0.87      | k1_xboole_0 = X3
% 3.98/0.87      | v1_funct_2(X4,X1,X3) != iProver_top
% 3.98/0.87      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.98/0.87      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) != iProver_top
% 3.98/0.87      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.98/0.87      | v1_funct_1(X4) != iProver_top
% 3.98/0.87      | v1_funct_1(X2) != iProver_top
% 3.98/0.87      | v2_funct_1(X4) = iProver_top
% 3.98/0.87      | v2_funct_1(k1_partfun1(X0,X1,X1,X3,X2,X4)) != iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_4814,plain,
% 3.98/0.87      ( k1_xboole_0 = X0
% 3.98/0.87      | v1_funct_2(X1,sK1,X0) != iProver_top
% 3.98/0.87      | v1_funct_2(sK2,sK0,sK1) != iProver_top
% 3.98/0.87      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
% 3.98/0.87      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.98/0.87      | v1_funct_1(X1) != iProver_top
% 3.98/0.87      | v1_funct_1(sK2) != iProver_top
% 3.98/0.87      | v2_funct_1(X1) = iProver_top
% 3.98/0.87      | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_28,c_1117]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_4993,plain,
% 3.98/0.87      ( v1_funct_1(X1) != iProver_top
% 3.98/0.87      | v1_funct_2(X1,sK1,X0) != iProver_top
% 3.98/0.87      | k1_xboole_0 = X0
% 3.98/0.87      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
% 3.98/0.87      | v2_funct_1(X1) = iProver_top
% 3.98/0.87      | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_4814,c_35,c_36,c_37]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_4994,plain,
% 3.98/0.87      ( k1_xboole_0 = X0
% 3.98/0.87      | v1_funct_2(X1,sK1,X0) != iProver_top
% 3.98/0.87      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) != iProver_top
% 3.98/0.87      | v1_funct_1(X1) != iProver_top
% 3.98/0.87      | v2_funct_1(X1) = iProver_top
% 3.98/0.87      | v2_funct_1(k1_partfun1(sK0,sK1,sK1,X0,sK2,X1)) != iProver_top ),
% 3.98/0.87      inference(renaming,[status(thm)],[c_4993]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_4997,plain,
% 3.98/0.87      ( sK0 = k1_xboole_0
% 3.98/0.87      | v1_funct_2(sK3,sK1,sK0) != iProver_top
% 3.98/0.87      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.98/0.87      | v1_funct_1(sK3) != iProver_top
% 3.98/0.87      | v2_funct_1(k6_partfun1(sK0)) != iProver_top
% 3.98/0.87      | v2_funct_1(sK3) = iProver_top ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_1804,c_4994]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_9682,plain,
% 3.98/0.87      ( k5_relat_1(sK3,k2_funct_1(sK3)) = k6_partfun1(sK1) ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_3670,c_38,c_39,c_40,c_25,c_662,c_1211,c_4821,c_4997]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_5000,plain,
% 3.98/0.87      ( v2_funct_1(sK3) = iProver_top ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_4997,c_38,c_39,c_40,c_25,c_662,c_1211,c_4821]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1109,plain,
% 3.98/0.87      ( v1_funct_1(sK3) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_5,plain,
% 3.98/0.87      ( ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_relat_1(X0)
% 3.98/0.87      | ~ v2_funct_1(X0)
% 3.98/0.87      | k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0) ),
% 3.98/0.87      inference(cnf_transformation,[],[f51]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1126,plain,
% 3.98/0.87      ( k2_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0)
% 3.98/0.87      | v1_funct_1(X0) != iProver_top
% 3.98/0.87      | v1_relat_1(X0) != iProver_top
% 3.98/0.87      | v2_funct_1(X0) != iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2287,plain,
% 3.98/0.87      ( k2_relat_1(k5_relat_1(sK3,k2_funct_1(sK3))) = k1_relat_1(sK3)
% 3.98/0.87      | v1_relat_1(sK3) != iProver_top
% 3.98/0.87      | v2_funct_1(sK3) != iProver_top ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_1109,c_1126]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_8,plain,
% 3.98/0.87      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.98/0.87      | v1_relat_1(X0) ),
% 3.98/0.87      inference(cnf_transformation,[],[f53]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1257,plain,
% 3.98/0.87      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.98/0.87      | v1_relat_1(sK3) ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_8]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1628,plain,
% 3.98/0.87      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.98/0.87      | v1_relat_1(sK3) ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_1257]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1629,plain,
% 3.98/0.87      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.98/0.87      | v1_relat_1(sK3) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_1628]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2625,plain,
% 3.98/0.87      ( k2_relat_1(k5_relat_1(sK3,k2_funct_1(sK3))) = k1_relat_1(sK3)
% 3.98/0.87      | v2_funct_1(sK3) != iProver_top ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_2287,c_40,c_1629]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_5004,plain,
% 3.98/0.87      ( k2_relat_1(k5_relat_1(sK3,k2_funct_1(sK3))) = k1_relat_1(sK3) ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_5000,c_2625]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_9685,plain,
% 3.98/0.87      ( k2_relat_1(k6_partfun1(sK1)) = k1_relat_1(sK3) ),
% 3.98/0.87      inference(demodulation,[status(thm)],[c_9682,c_5004]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_0,plain,
% 3.98/0.87      ( k2_relat_1(k6_partfun1(X0)) = X0 ),
% 3.98/0.87      inference(cnf_transformation,[],[f81]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_9686,plain,
% 3.98/0.87      ( k1_relat_1(sK3) = sK1 ),
% 3.98/0.87      inference(demodulation,[status(thm)],[c_9685,c_0]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3669,plain,
% 3.98/0.87      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
% 3.98/0.87      | sK1 = k1_xboole_0
% 3.98/0.87      | v1_funct_2(sK2,sK0,sK1) != iProver_top
% 3.98/0.87      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.98/0.87      | v1_funct_1(sK2) != iProver_top
% 3.98/0.87      | v2_funct_1(sK2) != iProver_top ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_28,c_1113]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_26,negated_conjecture,
% 3.98/0.87      ( v2_funct_1(sK2) ),
% 3.98/0.87      inference(cnf_transformation,[],[f77]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_24,negated_conjecture,
% 3.98/0.87      ( k1_xboole_0 != sK1 ),
% 3.98/0.87      inference(cnf_transformation,[],[f79]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1175,plain,
% 3.98/0.87      ( ~ v1_funct_2(X0,X1,sK1)
% 3.98/0.87      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,sK1)))
% 3.98/0.87      | ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v2_funct_1(X0)
% 3.98/0.87      | k2_relset_1(X1,sK1,X0) != sK1
% 3.98/0.87      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(X1)
% 3.98/0.87      | k1_xboole_0 = sK1 ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_22]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1303,plain,
% 3.98/0.87      ( ~ v1_funct_2(sK2,X0,sK1)
% 3.98/0.87      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1)))
% 3.98/0.87      | ~ v1_funct_1(sK2)
% 3.98/0.87      | ~ v2_funct_1(sK2)
% 3.98/0.87      | k2_relset_1(X0,sK1,sK2) != sK1
% 3.98/0.87      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(X0)
% 3.98/0.87      | k1_xboole_0 = sK1 ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_1175]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1527,plain,
% 3.98/0.87      ( ~ v1_funct_2(sK2,sK0,sK1)
% 3.98/0.87      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.98/0.87      | ~ v1_funct_1(sK2)
% 3.98/0.87      | ~ v2_funct_1(sK2)
% 3.98/0.87      | k2_relset_1(sK0,sK1,sK2) != sK1
% 3.98/0.87      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0)
% 3.98/0.87      | k1_xboole_0 = sK1 ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_1303]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3798,plain,
% 3.98/0.87      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK0) ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_3669,c_34,c_33,c_32,c_28,c_26,c_24,c_1527]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1106,plain,
% 3.98/0.87      ( v1_funct_1(sK2) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_6,plain,
% 3.98/0.87      ( ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_relat_1(X0)
% 3.98/0.87      | ~ v2_funct_1(X0)
% 3.98/0.87      | k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0) ),
% 3.98/0.87      inference(cnf_transformation,[],[f50]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1125,plain,
% 3.98/0.87      ( k1_relat_1(k5_relat_1(X0,k2_funct_1(X0))) = k1_relat_1(X0)
% 3.98/0.87      | v1_funct_1(X0) != iProver_top
% 3.98/0.87      | v1_relat_1(X0) != iProver_top
% 3.98/0.87      | v2_funct_1(X0) != iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2080,plain,
% 3.98/0.87      ( k1_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2)
% 3.98/0.87      | v1_relat_1(sK2) != iProver_top
% 3.98/0.87      | v2_funct_1(sK2) != iProver_top ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_1106,c_1125]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_42,plain,
% 3.98/0.87      ( v2_funct_1(sK2) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1730,plain,
% 3.98/0.87      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.98/0.87      | v1_relat_1(sK2) ),
% 3.98/0.87      inference(instantiation,[status(thm)],[c_8]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1731,plain,
% 3.98/0.87      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.98/0.87      | v1_relat_1(sK2) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_1730]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2264,plain,
% 3.98/0.87      ( k1_relat_1(k5_relat_1(sK2,k2_funct_1(sK2))) = k1_relat_1(sK2) ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_2080,c_37,c_42,c_1731]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3801,plain,
% 3.98/0.87      ( k1_relat_1(k6_partfun1(sK0)) = k1_relat_1(sK2) ),
% 3.98/0.87      inference(demodulation,[status(thm)],[c_3798,c_2264]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1,plain,
% 3.98/0.87      ( k1_relat_1(k6_partfun1(X0)) = X0 ),
% 3.98/0.87      inference(cnf_transformation,[],[f82]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3802,plain,
% 3.98/0.87      ( k1_relat_1(sK2) = sK0 ),
% 3.98/0.87      inference(demodulation,[status(thm)],[c_3801,c_1]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1108,plain,
% 3.98/0.87      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1111,plain,
% 3.98/0.87      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_15,plain,
% 3.98/0.87      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.98/0.87      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.98/0.87      | ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X3)
% 3.98/0.87      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 3.98/0.87      inference(cnf_transformation,[],[f60]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1119,plain,
% 3.98/0.87      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 3.98/0.87      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 3.98/0.87      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.98/0.87      | v1_funct_1(X5) != iProver_top
% 3.98/0.87      | v1_funct_1(X4) != iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2760,plain,
% 3.98/0.87      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 3.98/0.87      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.98/0.87      | v1_funct_1(X2) != iProver_top
% 3.98/0.87      | v1_funct_1(sK3) != iProver_top ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_1111,c_1119]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2816,plain,
% 3.98/0.87      ( v1_funct_1(X2) != iProver_top
% 3.98/0.87      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.98/0.87      | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_2760,c_38]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2817,plain,
% 3.98/0.87      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 3.98/0.87      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.98/0.87      | v1_funct_1(X2) != iProver_top ),
% 3.98/0.87      inference(renaming,[status(thm)],[c_2816]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2825,plain,
% 3.98/0.87      ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
% 3.98/0.87      | v1_funct_1(sK2) != iProver_top ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_1108,c_2817]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2826,plain,
% 3.98/0.87      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
% 3.98/0.87      | v1_funct_1(sK2) != iProver_top ),
% 3.98/0.87      inference(light_normalisation,[status(thm)],[c_2825,c_1804]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3606,plain,
% 3.98/0.87      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_2826,c_35]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_7,plain,
% 3.98/0.87      ( ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X1)
% 3.98/0.87      | ~ v1_relat_1(X0)
% 3.98/0.87      | ~ v1_relat_1(X1)
% 3.98/0.87      | ~ v2_funct_1(X1)
% 3.98/0.87      | k5_relat_1(X1,X0) != k6_partfun1(k1_relat_1(X1))
% 3.98/0.87      | k2_funct_1(X1) = X0
% 3.98/0.87      | k1_relat_1(X0) != k2_relat_1(X1) ),
% 3.98/0.87      inference(cnf_transformation,[],[f86]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_4,plain,
% 3.98/0.87      ( ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X1)
% 3.98/0.87      | ~ v1_relat_1(X0)
% 3.98/0.87      | ~ v1_relat_1(X1)
% 3.98/0.87      | v2_funct_1(X1)
% 3.98/0.87      | k5_relat_1(X1,X0) != k6_partfun1(k1_relat_1(X1)) ),
% 3.98/0.87      inference(cnf_transformation,[],[f85]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_186,plain,
% 3.98/0.87      ( ~ v1_relat_1(X1)
% 3.98/0.87      | ~ v1_relat_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X1)
% 3.98/0.87      | ~ v1_funct_1(X0)
% 3.98/0.87      | k5_relat_1(X1,X0) != k6_partfun1(k1_relat_1(X1))
% 3.98/0.87      | k2_funct_1(X1) = X0
% 3.98/0.87      | k1_relat_1(X0) != k2_relat_1(X1) ),
% 3.98/0.87      inference(global_propositional_subsumption,[status(thm)],[c_7,c_4]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_187,plain,
% 3.98/0.87      ( ~ v1_funct_1(X0)
% 3.98/0.87      | ~ v1_funct_1(X1)
% 3.98/0.87      | ~ v1_relat_1(X0)
% 3.98/0.87      | ~ v1_relat_1(X1)
% 3.98/0.87      | k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0))
% 3.98/0.87      | k2_funct_1(X0) = X1
% 3.98/0.87      | k1_relat_1(X1) != k2_relat_1(X0) ),
% 3.98/0.87      inference(renaming,[status(thm)],[c_186]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1105,plain,
% 3.98/0.87      ( k5_relat_1(X0,X1) != k6_partfun1(k1_relat_1(X0))
% 3.98/0.87      | k2_funct_1(X0) = X1
% 3.98/0.87      | k1_relat_1(X1) != k2_relat_1(X0)
% 3.98/0.87      | v1_funct_1(X0) != iProver_top
% 3.98/0.87      | v1_funct_1(X1) != iProver_top
% 3.98/0.87      | v1_relat_1(X0) != iProver_top
% 3.98/0.87      | v1_relat_1(X1) != iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_187]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3609,plain,
% 3.98/0.87      ( k2_funct_1(sK2) = sK3
% 3.98/0.87      | k1_relat_1(sK3) != k2_relat_1(sK2)
% 3.98/0.87      | k6_partfun1(k1_relat_1(sK2)) != k6_partfun1(sK0)
% 3.98/0.87      | v1_funct_1(sK3) != iProver_top
% 3.98/0.87      | v1_funct_1(sK2) != iProver_top
% 3.98/0.87      | v1_relat_1(sK3) != iProver_top
% 3.98/0.87      | v1_relat_1(sK2) != iProver_top ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_3606,c_1105]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_9,plain,
% 3.98/0.87      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.98/0.87      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.98/0.87      inference(cnf_transformation,[],[f54]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_1123,plain,
% 3.98/0.87      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.98/0.87      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.98/0.87      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2039,plain,
% 3.98/0.87      ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
% 3.98/0.87      inference(superposition,[status(thm)],[c_1108,c_1123]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_2040,plain,
% 3.98/0.87      ( k2_relat_1(sK2) = sK1 ),
% 3.98/0.87      inference(light_normalisation,[status(thm)],[c_2039,c_28]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3610,plain,
% 3.98/0.87      ( k2_funct_1(sK2) = sK3
% 3.98/0.87      | k1_relat_1(sK3) != sK1
% 3.98/0.87      | k6_partfun1(k1_relat_1(sK2)) != k6_partfun1(sK0)
% 3.98/0.87      | v1_funct_1(sK3) != iProver_top
% 3.98/0.87      | v1_funct_1(sK2) != iProver_top
% 3.98/0.87      | v1_relat_1(sK3) != iProver_top
% 3.98/0.87      | v1_relat_1(sK2) != iProver_top ),
% 3.98/0.87      inference(light_normalisation,[status(thm)],[c_3609,c_2040]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_23,negated_conjecture,
% 3.98/0.87      ( k2_funct_1(sK2) != sK3 ),
% 3.98/0.87      inference(cnf_transformation,[],[f80]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3611,plain,
% 3.98/0.87      ( ~ v1_funct_1(sK3)
% 3.98/0.87      | ~ v1_funct_1(sK2)
% 3.98/0.87      | ~ v1_relat_1(sK3)
% 3.98/0.87      | ~ v1_relat_1(sK2)
% 3.98/0.87      | k2_funct_1(sK2) = sK3
% 3.98/0.87      | k1_relat_1(sK3) != sK1
% 3.98/0.87      | k6_partfun1(k1_relat_1(sK2)) != k6_partfun1(sK0) ),
% 3.98/0.87      inference(predicate_to_equality_rev,[status(thm)],[c_3610]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3613,plain,
% 3.98/0.87      ( k1_relat_1(sK3) != sK1
% 3.98/0.87      | k6_partfun1(k1_relat_1(sK2)) != k6_partfun1(sK0) ),
% 3.98/0.87      inference(global_propositional_subsumption,
% 3.98/0.87                [status(thm)],
% 3.98/0.87                [c_3610,c_34,c_32,c_31,c_29,c_23,c_1628,c_1730,c_3611]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_3806,plain,
% 3.98/0.87      ( k1_relat_1(sK3) != sK1 | k6_partfun1(sK0) != k6_partfun1(sK0) ),
% 3.98/0.87      inference(demodulation,[status(thm)],[c_3802,c_3613]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(c_4385,plain,
% 3.98/0.87      ( k1_relat_1(sK3) != sK1 ),
% 3.98/0.87      inference(equality_resolution_simp,[status(thm)],[c_3806]) ).
% 3.98/0.87  
% 3.98/0.87  cnf(contradiction,plain,
% 3.98/0.87      ( $false ),
% 3.98/0.87      inference(minisat,[status(thm)],[c_9686,c_4385]) ).
% 3.98/0.87  
% 3.98/0.87  
% 3.98/0.87  % SZS output end CNFRefutation for theBenchmark.p
% 3.98/0.87  
% 3.98/0.87  ------                               Statistics
% 3.98/0.87  
% 3.98/0.87  ------ General
% 3.98/0.87  
% 3.98/0.87  abstr_ref_over_cycles:                  0
% 3.98/0.87  abstr_ref_under_cycles:                 0
% 3.98/0.87  gc_basic_clause_elim:                   0
% 3.98/0.87  forced_gc_time:                         0
% 3.98/0.87  parsing_time:                           0.007
% 3.98/0.87  unif_index_cands_time:                  0.
% 3.98/0.87  unif_index_add_time:                    0.
% 3.98/0.87  orderings_time:                         0.
% 3.98/0.87  out_proof_time:                         0.013
% 3.98/0.87  total_time:                             0.477
% 3.98/0.87  num_of_symbols:                         51
% 3.98/0.87  num_of_terms:                           14805
% 3.98/0.87  
% 3.98/0.87  ------ Preprocessing
% 3.98/0.87  
% 3.98/0.87  num_of_splits:                          0
% 3.98/0.87  num_of_split_atoms:                     0
% 3.98/0.87  num_of_reused_defs:                     0
% 3.98/0.87  num_eq_ax_congr_red:                    0
% 3.98/0.87  num_of_sem_filtered_clauses:            1
% 3.98/0.87  num_of_subtypes:                        0
% 3.98/0.87  monotx_restored_types:                  0
% 3.98/0.87  sat_num_of_epr_types:                   0
% 3.98/0.87  sat_num_of_non_cyclic_types:            0
% 3.98/0.87  sat_guarded_non_collapsed_types:        0
% 3.98/0.87  num_pure_diseq_elim:                    0
% 3.98/0.87  simp_replaced_by:                       0
% 3.98/0.87  res_preprocessed:                       170
% 3.98/0.87  prep_upred:                             0
% 3.98/0.87  prep_unflattend:                        12
% 3.98/0.87  smt_new_axioms:                         0
% 3.98/0.87  pred_elim_cands:                        5
% 3.98/0.87  pred_elim:                              1
% 3.98/0.87  pred_elim_cl:                           1
% 3.98/0.87  pred_elim_cycles:                       3
% 3.98/0.87  merged_defs:                            0
% 3.98/0.87  merged_defs_ncl:                        0
% 3.98/0.87  bin_hyper_res:                          0
% 3.98/0.87  prep_cycles:                            4
% 3.98/0.87  pred_elim_time:                         0.003
% 3.98/0.87  splitting_time:                         0.
% 3.98/0.87  sem_filter_time:                        0.
% 3.98/0.87  monotx_time:                            0.
% 3.98/0.87  subtype_inf_time:                       0.
% 3.98/0.87  
% 3.98/0.87  ------ Problem properties
% 3.98/0.87  
% 3.98/0.87  clauses:                                34
% 3.98/0.87  conjectures:                            11
% 3.98/0.87  epr:                                    7
% 3.98/0.87  horn:                                   30
% 3.98/0.87  ground:                                 12
% 3.98/0.87  unary:                                  16
% 3.98/0.87  binary:                                 3
% 3.98/0.87  lits:                                   126
% 3.98/0.87  lits_eq:                                31
% 3.98/0.87  fd_pure:                                0
% 3.98/0.87  fd_pseudo:                              0
% 3.98/0.87  fd_cond:                                4
% 3.98/0.87  fd_pseudo_cond:                         1
% 3.98/0.87  ac_symbols:                             0
% 3.98/0.87  
% 3.98/0.87  ------ Propositional Solver
% 3.98/0.87  
% 3.98/0.87  prop_solver_calls:                      31
% 3.98/0.87  prop_fast_solver_calls:                 1896
% 3.98/0.87  smt_solver_calls:                       0
% 3.98/0.87  smt_fast_solver_calls:                  0
% 3.98/0.87  prop_num_of_clauses:                    5188
% 3.98/0.87  prop_preprocess_simplified:             12268
% 3.98/0.87  prop_fo_subsumed:                       184
% 3.98/0.87  prop_solver_time:                       0.
% 3.98/0.87  smt_solver_time:                        0.
% 3.98/0.87  smt_fast_solver_time:                   0.
% 3.98/0.87  prop_fast_solver_time:                  0.
% 3.98/0.87  prop_unsat_core_time:                   0.
% 3.98/0.87  
% 3.98/0.87  ------ QBF
% 3.98/0.87  
% 3.98/0.87  qbf_q_res:                              0
% 3.98/0.87  qbf_num_tautologies:                    0
% 3.98/0.87  qbf_prep_cycles:                        0
% 3.98/0.87  
% 3.98/0.87  ------ BMC1
% 3.98/0.87  
% 3.98/0.87  bmc1_current_bound:                     -1
% 3.98/0.87  bmc1_last_solved_bound:                 -1
% 3.98/0.87  bmc1_unsat_core_size:                   -1
% 3.98/0.87  bmc1_unsat_core_parents_size:           -1
% 3.98/0.87  bmc1_merge_next_fun:                    0
% 3.98/0.87  bmc1_unsat_core_clauses_time:           0.
% 3.98/0.87  
% 3.98/0.87  ------ Instantiation
% 3.98/0.87  
% 3.98/0.87  inst_num_of_clauses:                    1295
% 3.98/0.87  inst_num_in_passive:                    500
% 3.98/0.87  inst_num_in_active:                     623
% 3.98/0.87  inst_num_in_unprocessed:                172
% 3.98/0.87  inst_num_of_loops:                      750
% 3.98/0.87  inst_num_of_learning_restarts:          0
% 3.98/0.87  inst_num_moves_active_passive:          125
% 3.98/0.87  inst_lit_activity:                      0
% 3.98/0.87  inst_lit_activity_moves:                1
% 3.98/0.87  inst_num_tautologies:                   0
% 3.98/0.87  inst_num_prop_implied:                  0
% 3.98/0.87  inst_num_existing_simplified:           0
% 3.98/0.87  inst_num_eq_res_simplified:             0
% 3.98/0.87  inst_num_child_elim:                    0
% 3.98/0.87  inst_num_of_dismatching_blockings:      159
% 3.98/0.87  inst_num_of_non_proper_insts:           1200
% 3.98/0.87  inst_num_of_duplicates:                 0
% 3.98/0.87  inst_inst_num_from_inst_to_res:         0
% 3.98/0.87  inst_dismatching_checking_time:         0.
% 3.98/0.87  
% 3.98/0.87  ------ Resolution
% 3.98/0.87  
% 3.98/0.87  res_num_of_clauses:                     0
% 3.98/0.87  res_num_in_passive:                     0
% 3.98/0.87  res_num_in_active:                      0
% 3.98/0.87  res_num_of_loops:                       174
% 3.98/0.87  res_forward_subset_subsumed:            115
% 3.98/0.87  res_backward_subset_subsumed:           0
% 3.98/0.87  res_forward_subsumed:                   0
% 3.98/0.87  res_backward_subsumed:                  0
% 3.98/0.87  res_forward_subsumption_resolution:     2
% 3.98/0.87  res_backward_subsumption_resolution:    0
% 3.98/0.87  res_clause_to_clause_subsumption:       699
% 3.98/0.87  res_orphan_elimination:                 0
% 3.98/0.87  res_tautology_del:                      55
% 3.98/0.87  res_num_eq_res_simplified:              1
% 3.98/0.87  res_num_sel_changes:                    0
% 3.98/0.87  res_moves_from_active_to_pass:          0
% 3.98/0.87  
% 3.98/0.87  ------ Superposition
% 3.98/0.87  
% 3.98/0.87  sup_time_total:                         0.
% 3.98/0.87  sup_time_generating:                    0.
% 3.98/0.87  sup_time_sim_full:                      0.
% 3.98/0.87  sup_time_sim_immed:                     0.
% 3.98/0.87  
% 3.98/0.87  sup_num_of_clauses:                     339
% 3.98/0.87  sup_num_in_active:                      137
% 3.98/0.87  sup_num_in_passive:                     202
% 3.98/0.87  sup_num_of_loops:                       148
% 3.98/0.87  sup_fw_superposition:                   183
% 3.98/0.87  sup_bw_superposition:                   174
% 3.98/0.87  sup_immediate_simplified:               128
% 3.98/0.87  sup_given_eliminated:                   0
% 3.98/0.87  comparisons_done:                       0
% 3.98/0.87  comparisons_avoided:                    0
% 3.98/0.87  
% 3.98/0.87  ------ Simplifications
% 3.98/0.87  
% 3.98/0.87  
% 3.98/0.87  sim_fw_subset_subsumed:                 10
% 3.98/0.87  sim_bw_subset_subsumed:                 8
% 3.98/0.87  sim_fw_subsumed:                        13
% 3.98/0.87  sim_bw_subsumed:                        0
% 3.98/0.87  sim_fw_subsumption_res:                 0
% 3.98/0.87  sim_bw_subsumption_res:                 0
% 3.98/0.87  sim_tautology_del:                      0
% 3.98/0.87  sim_eq_tautology_del:                   15
% 3.98/0.87  sim_eq_res_simp:                        1
% 3.98/0.87  sim_fw_demodulated:                     11
% 3.98/0.87  sim_bw_demodulated:                     6
% 3.98/0.87  sim_light_normalised:                   104
% 3.98/0.87  sim_joinable_taut:                      0
% 3.98/0.87  sim_joinable_simp:                      0
% 3.98/0.87  sim_ac_normalised:                      0
% 3.98/0.87  sim_smt_subsumption:                    0
% 3.98/0.87  
%------------------------------------------------------------------------------
