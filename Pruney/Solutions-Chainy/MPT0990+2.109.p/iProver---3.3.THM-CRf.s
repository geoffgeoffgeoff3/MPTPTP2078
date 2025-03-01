%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:03:19 EST 2020

% Result     : Theorem 15.50s
% Output     : CNFRefutation 15.50s
% Verified   : 
% Statistics : Number of formulae       :  199 ( 888 expanded)
%              Number of clauses        :  108 ( 292 expanded)
%              Number of leaves         :   24 ( 212 expanded)
%              Depth                    :   20
%              Number of atoms          :  603 (6278 expanded)
%              Number of equality atoms :  274 (2249 expanded)
%              Maximal formula depth    :   15 (   4 average)
%              Maximal clause size      :   24 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f78,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f27,conjecture,(
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

fof(f28,negated_conjecture,(
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
    inference(negated_conjecture,[],[f27])).

fof(f63,plain,(
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
    inference(ennf_transformation,[],[f28])).

fof(f64,plain,(
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
    inference(flattening,[],[f63])).

fof(f70,plain,(
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

fof(f69,plain,
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

fof(f71,plain,
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
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f64,f70,f69])).

fof(f114,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f71])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f75,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f111,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f71])).

fof(f109,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f71])).

fof(f12,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f42,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f41])).

fof(f87,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ! [X2] :
              ( v1_relat_1(X2)
             => k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ! [X2] :
              ( k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2)
              | ~ v1_relat_1(X2) )
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f82,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2)
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f117,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f71])).

fof(f17,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
          & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f50,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f49])).

fof(f97,plain,(
    ! [X0] :
      ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f25,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f107,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f25])).

fof(f127,plain,(
    ! [X0] :
      ( k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f97,f107])).

fof(f20,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f100,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f54])).

fof(f115,plain,(
    k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f71])).

fof(f24,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f24])).

fof(f60,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f59])).

fof(f106,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f60])).

fof(f112,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f71])).

fof(f21,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f56,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f55])).

fof(f68,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f56])).

fof(f101,plain,(
    ! [X2,X0,X3,X1] :
      ( X2 = X3
      | ~ r2_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f68])).

fof(f116,plain,(
    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f71])).

fof(f23,axiom,(
    ! [X0] :
      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_partfun1(k6_partfun1(X0),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(pure_predicate_removal,[],[f23])).

fof(f105,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f29])).

fof(f22,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f58,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
        & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5)) )
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f57])).

fof(f104,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3)))
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f58])).

fof(f19,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f19])).

fof(f53,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f30])).

fof(f99,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f53])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f67,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f32])).

fof(f76,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f67])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r1_tarski(X0,k2_relat_1(X1))
       => k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,k10_relat_1(X1,X0)) = X0
      | ~ r1_tarski(X0,k2_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,k10_relat_1(X1,X0)) = X0
      | ~ r1_tarski(X0,k2_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f43])).

fof(f91,plain,(
    ! [X0,X1] :
      ( k9_relat_1(X1,k10_relat_1(X1,X0)) = X0
      | ~ r1_tarski(X0,k2_relat_1(X1))
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f80,plain,(
    ! [X0,X1] :
      ( k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f9,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f83,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f9])).

fof(f122,plain,(
    ! [X0] : k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(definition_unfolding,[],[f83,f107])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => k7_relat_1(X1,X0) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f35])).

fof(f81,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f79,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f10,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] :
      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f85,plain,(
    ! [X0] :
      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f123,plain,(
    ! [X0] :
      ( k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f85,f107])).

fof(f16,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
          & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f47,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f48,plain,(
    ! [X0] :
      ( ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
        & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f47])).

fof(f95,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f48])).

fof(f11,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k2_relat_1(X1),X0)
       => k5_relat_1(X1,k6_relat_1(X0)) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f40,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f39])).

fof(f86,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f40])).

fof(f124,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_partfun1(X0)) = X1
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f86,f107])).

fof(f120,plain,(
    k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_6,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_1626,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_42,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f114])).

cnf(c_1600,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_42])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_1629,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_3926,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1600,c_1629])).

cnf(c_3992,plain,
    ( v1_relat_1(sK3) = iProver_top ),
    inference(superposition,[status(thm)],[c_1626,c_3926])).

cnf(c_45,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f111])).

cnf(c_1597,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_45])).

cnf(c_3927,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1597,c_1629])).

cnf(c_4080,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1626,c_3927])).

cnf(c_47,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f109])).

cnf(c_1595,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_47])).

cnf(c_16,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_1618,plain,
    ( v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_10,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | ~ v1_relat_1(X2)
    | k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2)) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_1622,plain,
    ( k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_8120,plain,
    ( k5_relat_1(k2_funct_1(X0),k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(k2_funct_1(X0),X1),X2)
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1618,c_1622])).

cnf(c_43806,plain,
    ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1595,c_8120])).

cnf(c_44458,plain,
    ( v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top
    | k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_43806,c_4080])).

cnf(c_44459,plain,
    ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_44458])).

cnf(c_44468,plain,
    ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k5_relat_1(k2_funct_1(sK2),sK2),X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_4080,c_44459])).

cnf(c_39,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f117])).

cnf(c_1601,plain,
    ( v2_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_39])).

cnf(c_24,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) ),
    inference(cnf_transformation,[],[f127])).

cnf(c_1610,plain,
    ( k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0))
    | v2_funct_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_6261,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(k2_relat_1(sK2))
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1601,c_1610])).

cnf(c_28,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_1606,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_3032,plain,
    ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1597,c_1606])).

cnf(c_41,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f115])).

cnf(c_3033,plain,
    ( k2_relat_1(sK2) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_3032,c_41])).

cnf(c_6262,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_6261,c_3033])).

cnf(c_48,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_47])).

cnf(c_7275,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_6262,c_48,c_4080])).

cnf(c_44473,plain,
    ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k6_partfun1(sK1),X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_44468,c_7275])).

cnf(c_44667,plain,
    ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,sK3)) = k5_relat_1(k6_partfun1(sK1),sK3) ),
    inference(superposition,[status(thm)],[c_3992,c_44473])).

cnf(c_34,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f106])).

cnf(c_1602,plain,
    ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X4) != iProver_top
    | v1_funct_1(X5) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_8769,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1600,c_1602])).

cnf(c_44,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f112])).

cnf(c_51,plain,
    ( v1_funct_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_44])).

cnf(c_8861,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8769,c_51])).

cnf(c_8862,plain,
    ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_8861])).

cnf(c_8870,plain,
    ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1597,c_8862])).

cnf(c_30,plain,
    ( ~ r2_relset_1(X0,X1,X2,X3)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | X3 = X2 ),
    inference(cnf_transformation,[],[f101])).

cnf(c_40,negated_conjecture,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f116])).

cnf(c_559,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | X3 = X0
    | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
    | k6_partfun1(sK0) != X3
    | sK0 != X2
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_30,c_40])).

cnf(c_560,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(unflattening,[status(thm)],[c_559])).

cnf(c_33,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f105])).

cnf(c_63,plain,
    ( m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(instantiation,[status(thm)],[c_33])).

cnf(c_562,plain,
    ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_560,c_63])).

cnf(c_1593,plain,
    ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
    | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_562])).

cnf(c_31,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3) ),
    inference(cnf_transformation,[],[f104])).

cnf(c_1694,plain,
    ( m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | ~ v1_funct_1(sK3)
    | ~ v1_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_31])).

cnf(c_2332,plain,
    ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1593,c_47,c_45,c_44,c_42,c_63,c_560,c_1694])).

cnf(c_8871,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
    | v1_funct_1(sK2) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_8870,c_2332])).

cnf(c_9009,plain,
    ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8871,c_48])).

cnf(c_27,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_1607,plain,
    ( v4_relat_1(X0,X1) = iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_27])).

cnf(c_2814,plain,
    ( v4_relat_1(sK3,sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1600,c_1607])).

cnf(c_5,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_1627,plain,
    ( v4_relat_1(X0,X1) != iProver_top
    | r1_tarski(k1_relat_1(X0),X1) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_19,plain,
    ( ~ r1_tarski(X0,k2_relat_1(X1))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1615,plain,
    ( k9_relat_1(X0,k10_relat_1(X0,X1)) = X1
    | r1_tarski(X1,k2_relat_1(X0)) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_8082,plain,
    ( k9_relat_1(sK2,k10_relat_1(sK2,X0)) = X0
    | r1_tarski(X0,sK1) != iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_3033,c_1615])).

cnf(c_8170,plain,
    ( k9_relat_1(sK2,k10_relat_1(sK2,X0)) = X0
    | r1_tarski(X0,sK1) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_8082,c_48,c_4080])).

cnf(c_8177,plain,
    ( k9_relat_1(sK2,k10_relat_1(sK2,k1_relat_1(X0))) = k1_relat_1(X0)
    | v4_relat_1(X0,sK1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1627,c_8170])).

cnf(c_8210,plain,
    ( k9_relat_1(sK2,k10_relat_1(sK2,k1_relat_1(sK3))) = k1_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_2814,c_8177])).

cnf(c_8,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k10_relat_1(X0,k1_relat_1(X1)) = k1_relat_1(k5_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_1624,plain,
    ( k10_relat_1(X0,k1_relat_1(X1)) = k1_relat_1(k5_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_4726,plain,
    ( k10_relat_1(sK2,k1_relat_1(X0)) = k1_relat_1(k5_relat_1(sK2,X0))
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_4080,c_1624])).

cnf(c_6251,plain,
    ( k10_relat_1(sK2,k1_relat_1(sK3)) = k1_relat_1(k5_relat_1(sK2,sK3)) ),
    inference(superposition,[status(thm)],[c_3992,c_4726])).

cnf(c_8215,plain,
    ( k9_relat_1(sK2,k1_relat_1(k5_relat_1(sK2,sK3))) = k1_relat_1(sK3)
    | v1_relat_1(sK3) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_8210,c_6251])).

cnf(c_13639,plain,
    ( k9_relat_1(sK2,k1_relat_1(k5_relat_1(sK2,sK3))) = k1_relat_1(sK3) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8215,c_3992])).

cnf(c_13641,plain,
    ( k9_relat_1(sK2,k1_relat_1(k6_partfun1(sK0))) = k1_relat_1(sK3) ),
    inference(light_normalisation,[status(thm)],[c_13639,c_9009])).

cnf(c_12,plain,
    ( k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(cnf_transformation,[],[f122])).

cnf(c_2815,plain,
    ( v4_relat_1(sK2,sK0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1597,c_1607])).

cnf(c_9,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1623,plain,
    ( k7_relat_1(X0,X1) = X0
    | v4_relat_1(X0,X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_3474,plain,
    ( k7_relat_1(sK2,sK0) = sK2
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2815,c_1623])).

cnf(c_4188,plain,
    ( k7_relat_1(sK2,sK0) = sK2 ),
    inference(superposition,[status(thm)],[c_4080,c_3474])).

cnf(c_7,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_1625,plain,
    ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_4186,plain,
    ( k2_relat_1(k7_relat_1(sK2,X0)) = k9_relat_1(sK2,X0) ),
    inference(superposition,[status(thm)],[c_4080,c_1625])).

cnf(c_5051,plain,
    ( k9_relat_1(sK2,sK0) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_4188,c_4186])).

cnf(c_5053,plain,
    ( k9_relat_1(sK2,sK0) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_5051,c_3033])).

cnf(c_13642,plain,
    ( k1_relat_1(sK3) = sK1 ),
    inference(demodulation,[status(thm)],[c_13641,c_12,c_5053])).

cnf(c_13,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0 ),
    inference(cnf_transformation,[],[f123])).

cnf(c_1621,plain,
    ( k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_4084,plain,
    ( k5_relat_1(k6_partfun1(k1_relat_1(sK3)),sK3) = sK3 ),
    inference(superposition,[status(thm)],[c_3992,c_1621])).

cnf(c_13649,plain,
    ( k5_relat_1(k6_partfun1(sK1),sK3) = sK3 ),
    inference(demodulation,[status(thm)],[c_13642,c_4084])).

cnf(c_22,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f95])).

cnf(c_1612,plain,
    ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | v2_funct_1(X0) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_6818,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1601,c_1612])).

cnf(c_7268,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_6818,c_48,c_4080])).

cnf(c_14,plain,
    ( ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_partfun1(X1)) = X0 ),
    inference(cnf_transformation,[],[f124])).

cnf(c_1620,plain,
    ( k5_relat_1(X0,k6_partfun1(X1)) = X0
    | r1_tarski(k2_relat_1(X0),X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_7270,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(X0)) = k2_funct_1(sK2)
    | r1_tarski(k1_relat_1(sK2),X0) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7268,c_1620])).

cnf(c_7837,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(X0)) = k2_funct_1(sK2)
    | v4_relat_1(sK2,X0) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1627,c_7270])).

cnf(c_14135,plain,
    ( ~ v1_funct_1(sK2)
    | v1_relat_1(k2_funct_1(sK2))
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_16])).

cnf(c_14136,plain,
    ( v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) = iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14135])).

cnf(c_30099,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(X0)) = k2_funct_1(sK2)
    | v4_relat_1(sK2,X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_7837,c_48,c_4080,c_14136])).

cnf(c_30105,plain,
    ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(sK0)) = k2_funct_1(sK2) ),
    inference(superposition,[status(thm)],[c_2815,c_30099])).

cnf(c_44675,plain,
    ( k2_funct_1(sK2) = sK3 ),
    inference(light_normalisation,[status(thm)],[c_44667,c_9009,c_13649,c_30105])).

cnf(c_36,negated_conjecture,
    ( k2_funct_1(sK2) != sK3 ),
    inference(cnf_transformation,[],[f120])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_44675,c_36])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n006.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 16:01:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 15.50/2.47  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 15.50/2.47  
% 15.50/2.47  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 15.50/2.47  
% 15.50/2.47  ------  iProver source info
% 15.50/2.47  
% 15.50/2.47  git: date: 2020-06-30 10:37:57 +0100
% 15.50/2.47  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 15.50/2.47  git: non_committed_changes: false
% 15.50/2.47  git: last_make_outside_of_git: false
% 15.50/2.47  
% 15.50/2.47  ------ 
% 15.50/2.47  
% 15.50/2.47  ------ Input Options
% 15.50/2.47  
% 15.50/2.47  --out_options                           all
% 15.50/2.47  --tptp_safe_out                         true
% 15.50/2.47  --problem_path                          ""
% 15.50/2.47  --include_path                          ""
% 15.50/2.47  --clausifier                            res/vclausify_rel
% 15.50/2.47  --clausifier_options                    ""
% 15.50/2.47  --stdin                                 false
% 15.50/2.47  --stats_out                             all
% 15.50/2.47  
% 15.50/2.47  ------ General Options
% 15.50/2.47  
% 15.50/2.47  --fof                                   false
% 15.50/2.47  --time_out_real                         305.
% 15.50/2.47  --time_out_virtual                      -1.
% 15.50/2.47  --symbol_type_check                     false
% 15.50/2.47  --clausify_out                          false
% 15.50/2.47  --sig_cnt_out                           false
% 15.50/2.47  --trig_cnt_out                          false
% 15.50/2.47  --trig_cnt_out_tolerance                1.
% 15.50/2.47  --trig_cnt_out_sk_spl                   false
% 15.50/2.47  --abstr_cl_out                          false
% 15.50/2.47  
% 15.50/2.47  ------ Global Options
% 15.50/2.47  
% 15.50/2.47  --schedule                              default
% 15.50/2.47  --add_important_lit                     false
% 15.50/2.47  --prop_solver_per_cl                    1000
% 15.50/2.47  --min_unsat_core                        false
% 15.50/2.47  --soft_assumptions                      false
% 15.50/2.47  --soft_lemma_size                       3
% 15.50/2.47  --prop_impl_unit_size                   0
% 15.50/2.47  --prop_impl_unit                        []
% 15.50/2.47  --share_sel_clauses                     true
% 15.50/2.47  --reset_solvers                         false
% 15.50/2.47  --bc_imp_inh                            [conj_cone]
% 15.50/2.47  --conj_cone_tolerance                   3.
% 15.50/2.47  --extra_neg_conj                        none
% 15.50/2.47  --large_theory_mode                     true
% 15.50/2.47  --prolific_symb_bound                   200
% 15.50/2.47  --lt_threshold                          2000
% 15.50/2.47  --clause_weak_htbl                      true
% 15.50/2.47  --gc_record_bc_elim                     false
% 15.50/2.47  
% 15.50/2.47  ------ Preprocessing Options
% 15.50/2.47  
% 15.50/2.47  --preprocessing_flag                    true
% 15.50/2.47  --time_out_prep_mult                    0.1
% 15.50/2.47  --splitting_mode                        input
% 15.50/2.47  --splitting_grd                         true
% 15.50/2.47  --splitting_cvd                         false
% 15.50/2.47  --splitting_cvd_svl                     false
% 15.50/2.47  --splitting_nvd                         32
% 15.50/2.47  --sub_typing                            true
% 15.50/2.47  --prep_gs_sim                           true
% 15.50/2.47  --prep_unflatten                        true
% 15.50/2.47  --prep_res_sim                          true
% 15.50/2.47  --prep_upred                            true
% 15.50/2.47  --prep_sem_filter                       exhaustive
% 15.50/2.47  --prep_sem_filter_out                   false
% 15.50/2.47  --pred_elim                             true
% 15.50/2.47  --res_sim_input                         true
% 15.50/2.47  --eq_ax_congr_red                       true
% 15.50/2.47  --pure_diseq_elim                       true
% 15.50/2.47  --brand_transform                       false
% 15.50/2.47  --non_eq_to_eq                          false
% 15.50/2.47  --prep_def_merge                        true
% 15.50/2.47  --prep_def_merge_prop_impl              false
% 15.50/2.47  --prep_def_merge_mbd                    true
% 15.50/2.47  --prep_def_merge_tr_red                 false
% 15.50/2.47  --prep_def_merge_tr_cl                  false
% 15.50/2.47  --smt_preprocessing                     true
% 15.50/2.47  --smt_ac_axioms                         fast
% 15.50/2.47  --preprocessed_out                      false
% 15.50/2.47  --preprocessed_stats                    false
% 15.50/2.47  
% 15.50/2.47  ------ Abstraction refinement Options
% 15.50/2.47  
% 15.50/2.47  --abstr_ref                             []
% 15.50/2.47  --abstr_ref_prep                        false
% 15.50/2.47  --abstr_ref_until_sat                   false
% 15.50/2.47  --abstr_ref_sig_restrict                funpre
% 15.50/2.47  --abstr_ref_af_restrict_to_split_sk     false
% 15.50/2.47  --abstr_ref_under                       []
% 15.50/2.47  
% 15.50/2.47  ------ SAT Options
% 15.50/2.47  
% 15.50/2.47  --sat_mode                              false
% 15.50/2.47  --sat_fm_restart_options                ""
% 15.50/2.47  --sat_gr_def                            false
% 15.50/2.47  --sat_epr_types                         true
% 15.50/2.47  --sat_non_cyclic_types                  false
% 15.50/2.47  --sat_finite_models                     false
% 15.50/2.47  --sat_fm_lemmas                         false
% 15.50/2.47  --sat_fm_prep                           false
% 15.50/2.47  --sat_fm_uc_incr                        true
% 15.50/2.47  --sat_out_model                         small
% 15.50/2.47  --sat_out_clauses                       false
% 15.50/2.47  
% 15.50/2.47  ------ QBF Options
% 15.50/2.47  
% 15.50/2.47  --qbf_mode                              false
% 15.50/2.47  --qbf_elim_univ                         false
% 15.50/2.47  --qbf_dom_inst                          none
% 15.50/2.47  --qbf_dom_pre_inst                      false
% 15.50/2.47  --qbf_sk_in                             false
% 15.50/2.47  --qbf_pred_elim                         true
% 15.50/2.47  --qbf_split                             512
% 15.50/2.47  
% 15.50/2.47  ------ BMC1 Options
% 15.50/2.47  
% 15.50/2.47  --bmc1_incremental                      false
% 15.50/2.47  --bmc1_axioms                           reachable_all
% 15.50/2.47  --bmc1_min_bound                        0
% 15.50/2.47  --bmc1_max_bound                        -1
% 15.50/2.47  --bmc1_max_bound_default                -1
% 15.50/2.47  --bmc1_symbol_reachability              true
% 15.50/2.47  --bmc1_property_lemmas                  false
% 15.50/2.47  --bmc1_k_induction                      false
% 15.50/2.47  --bmc1_non_equiv_states                 false
% 15.50/2.47  --bmc1_deadlock                         false
% 15.50/2.47  --bmc1_ucm                              false
% 15.50/2.47  --bmc1_add_unsat_core                   none
% 15.50/2.47  --bmc1_unsat_core_children              false
% 15.50/2.47  --bmc1_unsat_core_extrapolate_axioms    false
% 15.50/2.47  --bmc1_out_stat                         full
% 15.50/2.47  --bmc1_ground_init                      false
% 15.50/2.47  --bmc1_pre_inst_next_state              false
% 15.50/2.47  --bmc1_pre_inst_state                   false
% 15.50/2.47  --bmc1_pre_inst_reach_state             false
% 15.50/2.47  --bmc1_out_unsat_core                   false
% 15.50/2.47  --bmc1_aig_witness_out                  false
% 15.50/2.47  --bmc1_verbose                          false
% 15.50/2.47  --bmc1_dump_clauses_tptp                false
% 15.50/2.47  --bmc1_dump_unsat_core_tptp             false
% 15.50/2.47  --bmc1_dump_file                        -
% 15.50/2.47  --bmc1_ucm_expand_uc_limit              128
% 15.50/2.47  --bmc1_ucm_n_expand_iterations          6
% 15.50/2.47  --bmc1_ucm_extend_mode                  1
% 15.50/2.47  --bmc1_ucm_init_mode                    2
% 15.50/2.47  --bmc1_ucm_cone_mode                    none
% 15.50/2.47  --bmc1_ucm_reduced_relation_type        0
% 15.50/2.47  --bmc1_ucm_relax_model                  4
% 15.50/2.47  --bmc1_ucm_full_tr_after_sat            true
% 15.50/2.47  --bmc1_ucm_expand_neg_assumptions       false
% 15.50/2.47  --bmc1_ucm_layered_model                none
% 15.50/2.47  --bmc1_ucm_max_lemma_size               10
% 15.50/2.47  
% 15.50/2.47  ------ AIG Options
% 15.50/2.47  
% 15.50/2.47  --aig_mode                              false
% 15.50/2.47  
% 15.50/2.47  ------ Instantiation Options
% 15.50/2.47  
% 15.50/2.47  --instantiation_flag                    true
% 15.50/2.47  --inst_sos_flag                         true
% 15.50/2.47  --inst_sos_phase                        true
% 15.50/2.47  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 15.50/2.47  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 15.50/2.47  --inst_lit_sel_side                     num_symb
% 15.50/2.47  --inst_solver_per_active                1400
% 15.50/2.47  --inst_solver_calls_frac                1.
% 15.50/2.47  --inst_passive_queue_type               priority_queues
% 15.50/2.47  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 15.50/2.47  --inst_passive_queues_freq              [25;2]
% 15.50/2.47  --inst_dismatching                      true
% 15.50/2.47  --inst_eager_unprocessed_to_passive     true
% 15.50/2.47  --inst_prop_sim_given                   true
% 15.50/2.47  --inst_prop_sim_new                     false
% 15.50/2.47  --inst_subs_new                         false
% 15.50/2.47  --inst_eq_res_simp                      false
% 15.50/2.47  --inst_subs_given                       false
% 15.50/2.47  --inst_orphan_elimination               true
% 15.50/2.47  --inst_learning_loop_flag               true
% 15.50/2.47  --inst_learning_start                   3000
% 15.50/2.47  --inst_learning_factor                  2
% 15.50/2.47  --inst_start_prop_sim_after_learn       3
% 15.50/2.47  --inst_sel_renew                        solver
% 15.50/2.47  --inst_lit_activity_flag                true
% 15.50/2.47  --inst_restr_to_given                   false
% 15.50/2.47  --inst_activity_threshold               500
% 15.50/2.47  --inst_out_proof                        true
% 15.50/2.47  
% 15.50/2.47  ------ Resolution Options
% 15.50/2.47  
% 15.50/2.47  --resolution_flag                       true
% 15.50/2.47  --res_lit_sel                           adaptive
% 15.50/2.47  --res_lit_sel_side                      none
% 15.50/2.47  --res_ordering                          kbo
% 15.50/2.47  --res_to_prop_solver                    active
% 15.50/2.47  --res_prop_simpl_new                    false
% 15.50/2.47  --res_prop_simpl_given                  true
% 15.50/2.47  --res_passive_queue_type                priority_queues
% 15.50/2.47  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 15.50/2.47  --res_passive_queues_freq               [15;5]
% 15.50/2.47  --res_forward_subs                      full
% 15.50/2.47  --res_backward_subs                     full
% 15.50/2.47  --res_forward_subs_resolution           true
% 15.50/2.47  --res_backward_subs_resolution          true
% 15.50/2.47  --res_orphan_elimination                true
% 15.50/2.47  --res_time_limit                        2.
% 15.50/2.47  --res_out_proof                         true
% 15.50/2.47  
% 15.50/2.47  ------ Superposition Options
% 15.50/2.47  
% 15.50/2.47  --superposition_flag                    true
% 15.50/2.47  --sup_passive_queue_type                priority_queues
% 15.50/2.47  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 15.50/2.47  --sup_passive_queues_freq               [8;1;4]
% 15.50/2.47  --demod_completeness_check              fast
% 15.50/2.47  --demod_use_ground                      true
% 15.50/2.47  --sup_to_prop_solver                    passive
% 15.50/2.47  --sup_prop_simpl_new                    true
% 15.50/2.47  --sup_prop_simpl_given                  true
% 15.50/2.47  --sup_fun_splitting                     true
% 15.50/2.47  --sup_smt_interval                      50000
% 15.50/2.47  
% 15.50/2.47  ------ Superposition Simplification Setup
% 15.50/2.47  
% 15.50/2.47  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 15.50/2.47  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 15.50/2.47  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 15.50/2.47  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 15.50/2.47  --sup_full_triv                         [TrivRules;PropSubs]
% 15.50/2.47  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 15.50/2.47  --sup_full_bw                           [BwDemod;BwSubsumption]
% 15.50/2.47  --sup_immed_triv                        [TrivRules]
% 15.50/2.47  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 15.50/2.47  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 15.50/2.47  --sup_immed_bw_main                     []
% 15.50/2.47  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 15.50/2.47  --sup_input_triv                        [Unflattening;TrivRules]
% 15.50/2.47  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 15.50/2.47  --sup_input_bw                          []
% 15.50/2.47  
% 15.50/2.47  ------ Combination Options
% 15.50/2.47  
% 15.50/2.47  --comb_res_mult                         3
% 15.50/2.47  --comb_sup_mult                         2
% 15.50/2.47  --comb_inst_mult                        10
% 15.50/2.47  
% 15.50/2.47  ------ Debug Options
% 15.50/2.47  
% 15.50/2.47  --dbg_backtrace                         false
% 15.50/2.47  --dbg_dump_prop_clauses                 false
% 15.50/2.47  --dbg_dump_prop_clauses_file            -
% 15.50/2.47  --dbg_out_stat                          false
% 15.50/2.47  ------ Parsing...
% 15.50/2.47  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 15.50/2.47  
% 15.50/2.47  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 15.50/2.47  
% 15.50/2.47  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 15.50/2.47  
% 15.50/2.47  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 15.50/2.47  ------ Proving...
% 15.50/2.47  ------ Problem Properties 
% 15.50/2.47  
% 15.50/2.47  
% 15.50/2.47  clauses                                 46
% 15.50/2.47  conjectures                             11
% 15.50/2.47  EPR                                     9
% 15.50/2.47  Horn                                    46
% 15.50/2.47  unary                                   18
% 15.50/2.47  binary                                  5
% 15.50/2.47  lits                                    128
% 15.50/2.47  lits eq                                 28
% 15.50/2.47  fd_pure                                 0
% 15.50/2.47  fd_pseudo                               0
% 15.50/2.47  fd_cond                                 0
% 15.50/2.47  fd_pseudo_cond                          1
% 15.50/2.47  AC symbols                              0
% 15.50/2.47  
% 15.50/2.47  ------ Schedule dynamic 5 is on 
% 15.50/2.47  
% 15.50/2.47  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 15.50/2.47  
% 15.50/2.47  
% 15.50/2.47  ------ 
% 15.50/2.47  Current options:
% 15.50/2.47  ------ 
% 15.50/2.47  
% 15.50/2.47  ------ Input Options
% 15.50/2.47  
% 15.50/2.47  --out_options                           all
% 15.50/2.47  --tptp_safe_out                         true
% 15.50/2.47  --problem_path                          ""
% 15.50/2.47  --include_path                          ""
% 15.50/2.47  --clausifier                            res/vclausify_rel
% 15.50/2.47  --clausifier_options                    ""
% 15.50/2.47  --stdin                                 false
% 15.50/2.47  --stats_out                             all
% 15.50/2.47  
% 15.50/2.47  ------ General Options
% 15.50/2.47  
% 15.50/2.47  --fof                                   false
% 15.50/2.47  --time_out_real                         305.
% 15.50/2.47  --time_out_virtual                      -1.
% 15.50/2.47  --symbol_type_check                     false
% 15.50/2.47  --clausify_out                          false
% 15.50/2.47  --sig_cnt_out                           false
% 15.50/2.47  --trig_cnt_out                          false
% 15.50/2.47  --trig_cnt_out_tolerance                1.
% 15.50/2.47  --trig_cnt_out_sk_spl                   false
% 15.50/2.47  --abstr_cl_out                          false
% 15.50/2.47  
% 15.50/2.47  ------ Global Options
% 15.50/2.47  
% 15.50/2.47  --schedule                              default
% 15.50/2.47  --add_important_lit                     false
% 15.50/2.47  --prop_solver_per_cl                    1000
% 15.50/2.47  --min_unsat_core                        false
% 15.50/2.47  --soft_assumptions                      false
% 15.50/2.47  --soft_lemma_size                       3
% 15.50/2.47  --prop_impl_unit_size                   0
% 15.50/2.47  --prop_impl_unit                        []
% 15.50/2.47  --share_sel_clauses                     true
% 15.50/2.47  --reset_solvers                         false
% 15.50/2.47  --bc_imp_inh                            [conj_cone]
% 15.50/2.47  --conj_cone_tolerance                   3.
% 15.50/2.47  --extra_neg_conj                        none
% 15.50/2.47  --large_theory_mode                     true
% 15.50/2.47  --prolific_symb_bound                   200
% 15.50/2.47  --lt_threshold                          2000
% 15.50/2.47  --clause_weak_htbl                      true
% 15.50/2.47  --gc_record_bc_elim                     false
% 15.50/2.47  
% 15.50/2.47  ------ Preprocessing Options
% 15.50/2.47  
% 15.50/2.47  --preprocessing_flag                    true
% 15.50/2.47  --time_out_prep_mult                    0.1
% 15.50/2.47  --splitting_mode                        input
% 15.50/2.47  --splitting_grd                         true
% 15.50/2.47  --splitting_cvd                         false
% 15.50/2.47  --splitting_cvd_svl                     false
% 15.50/2.47  --splitting_nvd                         32
% 15.50/2.47  --sub_typing                            true
% 15.50/2.47  --prep_gs_sim                           true
% 15.50/2.47  --prep_unflatten                        true
% 15.50/2.47  --prep_res_sim                          true
% 15.50/2.47  --prep_upred                            true
% 15.50/2.47  --prep_sem_filter                       exhaustive
% 15.50/2.47  --prep_sem_filter_out                   false
% 15.50/2.47  --pred_elim                             true
% 15.50/2.47  --res_sim_input                         true
% 15.50/2.47  --eq_ax_congr_red                       true
% 15.50/2.47  --pure_diseq_elim                       true
% 15.50/2.47  --brand_transform                       false
% 15.50/2.47  --non_eq_to_eq                          false
% 15.50/2.47  --prep_def_merge                        true
% 15.50/2.47  --prep_def_merge_prop_impl              false
% 15.50/2.47  --prep_def_merge_mbd                    true
% 15.50/2.47  --prep_def_merge_tr_red                 false
% 15.50/2.47  --prep_def_merge_tr_cl                  false
% 15.50/2.47  --smt_preprocessing                     true
% 15.50/2.47  --smt_ac_axioms                         fast
% 15.50/2.47  --preprocessed_out                      false
% 15.50/2.47  --preprocessed_stats                    false
% 15.50/2.47  
% 15.50/2.47  ------ Abstraction refinement Options
% 15.50/2.47  
% 15.50/2.47  --abstr_ref                             []
% 15.50/2.47  --abstr_ref_prep                        false
% 15.50/2.47  --abstr_ref_until_sat                   false
% 15.50/2.47  --abstr_ref_sig_restrict                funpre
% 15.50/2.47  --abstr_ref_af_restrict_to_split_sk     false
% 15.50/2.47  --abstr_ref_under                       []
% 15.50/2.47  
% 15.50/2.47  ------ SAT Options
% 15.50/2.47  
% 15.50/2.47  --sat_mode                              false
% 15.50/2.47  --sat_fm_restart_options                ""
% 15.50/2.47  --sat_gr_def                            false
% 15.50/2.47  --sat_epr_types                         true
% 15.50/2.47  --sat_non_cyclic_types                  false
% 15.50/2.47  --sat_finite_models                     false
% 15.50/2.47  --sat_fm_lemmas                         false
% 15.50/2.47  --sat_fm_prep                           false
% 15.50/2.47  --sat_fm_uc_incr                        true
% 15.50/2.47  --sat_out_model                         small
% 15.50/2.47  --sat_out_clauses                       false
% 15.50/2.47  
% 15.50/2.47  ------ QBF Options
% 15.50/2.47  
% 15.50/2.47  --qbf_mode                              false
% 15.50/2.47  --qbf_elim_univ                         false
% 15.50/2.47  --qbf_dom_inst                          none
% 15.50/2.47  --qbf_dom_pre_inst                      false
% 15.50/2.47  --qbf_sk_in                             false
% 15.50/2.47  --qbf_pred_elim                         true
% 15.50/2.47  --qbf_split                             512
% 15.50/2.47  
% 15.50/2.47  ------ BMC1 Options
% 15.50/2.47  
% 15.50/2.47  --bmc1_incremental                      false
% 15.50/2.47  --bmc1_axioms                           reachable_all
% 15.50/2.47  --bmc1_min_bound                        0
% 15.50/2.47  --bmc1_max_bound                        -1
% 15.50/2.47  --bmc1_max_bound_default                -1
% 15.50/2.47  --bmc1_symbol_reachability              true
% 15.50/2.47  --bmc1_property_lemmas                  false
% 15.50/2.47  --bmc1_k_induction                      false
% 15.50/2.47  --bmc1_non_equiv_states                 false
% 15.50/2.47  --bmc1_deadlock                         false
% 15.50/2.47  --bmc1_ucm                              false
% 15.50/2.47  --bmc1_add_unsat_core                   none
% 15.50/2.47  --bmc1_unsat_core_children              false
% 15.50/2.47  --bmc1_unsat_core_extrapolate_axioms    false
% 15.50/2.47  --bmc1_out_stat                         full
% 15.50/2.47  --bmc1_ground_init                      false
% 15.50/2.47  --bmc1_pre_inst_next_state              false
% 15.50/2.47  --bmc1_pre_inst_state                   false
% 15.50/2.47  --bmc1_pre_inst_reach_state             false
% 15.50/2.47  --bmc1_out_unsat_core                   false
% 15.50/2.47  --bmc1_aig_witness_out                  false
% 15.50/2.47  --bmc1_verbose                          false
% 15.50/2.47  --bmc1_dump_clauses_tptp                false
% 15.50/2.47  --bmc1_dump_unsat_core_tptp             false
% 15.50/2.47  --bmc1_dump_file                        -
% 15.50/2.47  --bmc1_ucm_expand_uc_limit              128
% 15.50/2.47  --bmc1_ucm_n_expand_iterations          6
% 15.50/2.47  --bmc1_ucm_extend_mode                  1
% 15.50/2.47  --bmc1_ucm_init_mode                    2
% 15.50/2.47  --bmc1_ucm_cone_mode                    none
% 15.50/2.47  --bmc1_ucm_reduced_relation_type        0
% 15.50/2.47  --bmc1_ucm_relax_model                  4
% 15.50/2.47  --bmc1_ucm_full_tr_after_sat            true
% 15.50/2.47  --bmc1_ucm_expand_neg_assumptions       false
% 15.50/2.47  --bmc1_ucm_layered_model                none
% 15.50/2.47  --bmc1_ucm_max_lemma_size               10
% 15.50/2.47  
% 15.50/2.47  ------ AIG Options
% 15.50/2.47  
% 15.50/2.47  --aig_mode                              false
% 15.50/2.47  
% 15.50/2.47  ------ Instantiation Options
% 15.50/2.47  
% 15.50/2.47  --instantiation_flag                    true
% 15.50/2.47  --inst_sos_flag                         true
% 15.50/2.47  --inst_sos_phase                        true
% 15.50/2.47  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 15.50/2.47  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 15.50/2.47  --inst_lit_sel_side                     none
% 15.50/2.47  --inst_solver_per_active                1400
% 15.50/2.47  --inst_solver_calls_frac                1.
% 15.50/2.47  --inst_passive_queue_type               priority_queues
% 15.50/2.47  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 15.50/2.47  --inst_passive_queues_freq              [25;2]
% 15.50/2.47  --inst_dismatching                      true
% 15.50/2.47  --inst_eager_unprocessed_to_passive     true
% 15.50/2.47  --inst_prop_sim_given                   true
% 15.50/2.47  --inst_prop_sim_new                     false
% 15.50/2.47  --inst_subs_new                         false
% 15.50/2.47  --inst_eq_res_simp                      false
% 15.50/2.47  --inst_subs_given                       false
% 15.50/2.47  --inst_orphan_elimination               true
% 15.50/2.47  --inst_learning_loop_flag               true
% 15.50/2.47  --inst_learning_start                   3000
% 15.50/2.47  --inst_learning_factor                  2
% 15.50/2.47  --inst_start_prop_sim_after_learn       3
% 15.50/2.47  --inst_sel_renew                        solver
% 15.50/2.47  --inst_lit_activity_flag                true
% 15.50/2.47  --inst_restr_to_given                   false
% 15.50/2.47  --inst_activity_threshold               500
% 15.50/2.47  --inst_out_proof                        true
% 15.50/2.47  
% 15.50/2.47  ------ Resolution Options
% 15.50/2.47  
% 15.50/2.47  --resolution_flag                       false
% 15.50/2.47  --res_lit_sel                           adaptive
% 15.50/2.47  --res_lit_sel_side                      none
% 15.50/2.47  --res_ordering                          kbo
% 15.50/2.47  --res_to_prop_solver                    active
% 15.50/2.47  --res_prop_simpl_new                    false
% 15.50/2.47  --res_prop_simpl_given                  true
% 15.50/2.47  --res_passive_queue_type                priority_queues
% 15.50/2.47  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 15.50/2.47  --res_passive_queues_freq               [15;5]
% 15.50/2.47  --res_forward_subs                      full
% 15.50/2.47  --res_backward_subs                     full
% 15.50/2.47  --res_forward_subs_resolution           true
% 15.50/2.47  --res_backward_subs_resolution          true
% 15.50/2.47  --res_orphan_elimination                true
% 15.50/2.47  --res_time_limit                        2.
% 15.50/2.47  --res_out_proof                         true
% 15.50/2.47  
% 15.50/2.47  ------ Superposition Options
% 15.50/2.47  
% 15.50/2.47  --superposition_flag                    true
% 15.50/2.47  --sup_passive_queue_type                priority_queues
% 15.50/2.47  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 15.50/2.47  --sup_passive_queues_freq               [8;1;4]
% 15.50/2.47  --demod_completeness_check              fast
% 15.50/2.47  --demod_use_ground                      true
% 15.50/2.47  --sup_to_prop_solver                    passive
% 15.50/2.47  --sup_prop_simpl_new                    true
% 15.50/2.47  --sup_prop_simpl_given                  true
% 15.50/2.47  --sup_fun_splitting                     true
% 15.50/2.47  --sup_smt_interval                      50000
% 15.50/2.47  
% 15.50/2.47  ------ Superposition Simplification Setup
% 15.50/2.47  
% 15.50/2.47  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 15.50/2.47  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 15.50/2.47  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 15.50/2.47  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 15.50/2.47  --sup_full_triv                         [TrivRules;PropSubs]
% 15.50/2.47  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 15.50/2.47  --sup_full_bw                           [BwDemod;BwSubsumption]
% 15.50/2.47  --sup_immed_triv                        [TrivRules]
% 15.50/2.47  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 15.50/2.47  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 15.50/2.47  --sup_immed_bw_main                     []
% 15.50/2.47  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 15.50/2.47  --sup_input_triv                        [Unflattening;TrivRules]
% 15.50/2.47  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 15.50/2.47  --sup_input_bw                          []
% 15.50/2.47  
% 15.50/2.47  ------ Combination Options
% 15.50/2.47  
% 15.50/2.47  --comb_res_mult                         3
% 15.50/2.47  --comb_sup_mult                         2
% 15.50/2.47  --comb_inst_mult                        10
% 15.50/2.47  
% 15.50/2.47  ------ Debug Options
% 15.50/2.47  
% 15.50/2.47  --dbg_backtrace                         false
% 15.50/2.47  --dbg_dump_prop_clauses                 false
% 15.50/2.47  --dbg_dump_prop_clauses_file            -
% 15.50/2.47  --dbg_out_stat                          false
% 15.50/2.47  
% 15.50/2.47  
% 15.50/2.47  
% 15.50/2.47  
% 15.50/2.47  ------ Proving...
% 15.50/2.47  
% 15.50/2.47  
% 15.50/2.47  % SZS status Theorem for theBenchmark.p
% 15.50/2.47  
% 15.50/2.47  % SZS output start CNFRefutation for theBenchmark.p
% 15.50/2.47  
% 15.50/2.47  fof(f4,axiom,(
% 15.50/2.47    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f78,plain,(
% 15.50/2.47    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 15.50/2.47    inference(cnf_transformation,[],[f4])).
% 15.50/2.47  
% 15.50/2.47  fof(f27,conjecture,(
% 15.50/2.47    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f28,negated_conjecture,(
% 15.50/2.47    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ! [X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => ((v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1) => (k2_funct_1(X2) = X3 | k1_xboole_0 = X1 | k1_xboole_0 = X0))))),
% 15.50/2.47    inference(negated_conjecture,[],[f27])).
% 15.50/2.47  
% 15.50/2.47  fof(f63,plain,(
% 15.50/2.47    ? [X0,X1,X2] : (? [X3] : (((k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0) & (v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1)) & (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 15.50/2.47    inference(ennf_transformation,[],[f28])).
% 15.50/2.47  
% 15.50/2.47  fof(f64,plain,(
% 15.50/2.47    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 15.50/2.47    inference(flattening,[],[f63])).
% 15.50/2.47  
% 15.50/2.47  fof(f70,plain,(
% 15.50/2.47    ( ! [X2,X0,X1] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) => (k2_funct_1(X2) != sK3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,sK3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(sK3,X1,X0) & v1_funct_1(sK3))) )),
% 15.50/2.47    introduced(choice_axiom,[])).
% 15.50/2.47  
% 15.50/2.47  fof(f69,plain,(
% 15.50/2.47    ? [X0,X1,X2] : (? [X3] : (k2_funct_1(X2) != X3 & k1_xboole_0 != X1 & k1_xboole_0 != X0 & v2_funct_1(X2) & r2_relset_1(X0,X0,k1_partfun1(X0,X1,X1,X0,X2,X3),k6_partfun1(X0)) & k2_relset_1(X0,X1,X2) = X1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(X3,X1,X0) & v1_funct_1(X3)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (? [X3] : (k2_funct_1(sK2) != X3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,X3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(X3,sK1,sK0) & v1_funct_1(X3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 15.50/2.47    introduced(choice_axiom,[])).
% 15.50/2.47  
% 15.50/2.47  fof(f71,plain,(
% 15.50/2.47    (k2_funct_1(sK2) != sK3 & k1_xboole_0 != sK1 & k1_xboole_0 != sK0 & v2_funct_1(sK2) & r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) & k2_relset_1(sK0,sK1,sK2) = sK1 & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) & v1_funct_2(sK3,sK1,sK0) & v1_funct_1(sK3)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 15.50/2.47    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f64,f70,f69])).
% 15.50/2.47  
% 15.50/2.47  fof(f114,plain,(
% 15.50/2.47    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 15.50/2.47    inference(cnf_transformation,[],[f71])).
% 15.50/2.47  
% 15.50/2.47  fof(f2,axiom,(
% 15.50/2.47    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f31,plain,(
% 15.50/2.47    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 15.50/2.47    inference(ennf_transformation,[],[f2])).
% 15.50/2.47  
% 15.50/2.47  fof(f75,plain,(
% 15.50/2.47    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f31])).
% 15.50/2.47  
% 15.50/2.47  fof(f111,plain,(
% 15.50/2.47    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 15.50/2.47    inference(cnf_transformation,[],[f71])).
% 15.50/2.47  
% 15.50/2.47  fof(f109,plain,(
% 15.50/2.47    v1_funct_1(sK2)),
% 15.50/2.47    inference(cnf_transformation,[],[f71])).
% 15.50/2.47  
% 15.50/2.47  fof(f12,axiom,(
% 15.50/2.47    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f41,plain,(
% 15.50/2.47    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 15.50/2.47    inference(ennf_transformation,[],[f12])).
% 15.50/2.47  
% 15.50/2.47  fof(f42,plain,(
% 15.50/2.47    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 15.50/2.47    inference(flattening,[],[f41])).
% 15.50/2.47  
% 15.50/2.47  fof(f87,plain,(
% 15.50/2.47    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f42])).
% 15.50/2.47  
% 15.50/2.47  fof(f8,axiom,(
% 15.50/2.47    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2))))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f37,plain,(
% 15.50/2.47    ! [X0] : (! [X1] : (! [X2] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 15.50/2.47    inference(ennf_transformation,[],[f8])).
% 15.50/2.47  
% 15.50/2.47  fof(f82,plain,(
% 15.50/2.47    ( ! [X2,X0,X1] : (k5_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(X0,X1),X2) | ~v1_relat_1(X2) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f37])).
% 15.50/2.47  
% 15.50/2.47  fof(f117,plain,(
% 15.50/2.47    v2_funct_1(sK2)),
% 15.50/2.47    inference(cnf_transformation,[],[f71])).
% 15.50/2.47  
% 15.50/2.47  fof(f17,axiom,(
% 15.50/2.47    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)))))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f49,plain,(
% 15.50/2.47    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 15.50/2.47    inference(ennf_transformation,[],[f17])).
% 15.50/2.47  
% 15.50/2.47  fof(f50,plain,(
% 15.50/2.47    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 15.50/2.47    inference(flattening,[],[f49])).
% 15.50/2.47  
% 15.50/2.47  fof(f97,plain,(
% 15.50/2.47    ( ! [X0] : (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f50])).
% 15.50/2.47  
% 15.50/2.47  fof(f25,axiom,(
% 15.50/2.47    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f107,plain,(
% 15.50/2.47    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f25])).
% 15.50/2.47  
% 15.50/2.47  fof(f127,plain,(
% 15.50/2.47    ( ! [X0] : (k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 15.50/2.47    inference(definition_unfolding,[],[f97,f107])).
% 15.50/2.47  
% 15.50/2.47  fof(f20,axiom,(
% 15.50/2.47    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f54,plain,(
% 15.50/2.47    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 15.50/2.47    inference(ennf_transformation,[],[f20])).
% 15.50/2.47  
% 15.50/2.47  fof(f100,plain,(
% 15.50/2.47    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 15.50/2.47    inference(cnf_transformation,[],[f54])).
% 15.50/2.47  
% 15.50/2.47  fof(f115,plain,(
% 15.50/2.47    k2_relset_1(sK0,sK1,sK2) = sK1),
% 15.50/2.47    inference(cnf_transformation,[],[f71])).
% 15.50/2.47  
% 15.50/2.47  fof(f24,axiom,(
% 15.50/2.47    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f59,plain,(
% 15.50/2.47    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 15.50/2.47    inference(ennf_transformation,[],[f24])).
% 15.50/2.47  
% 15.50/2.47  fof(f60,plain,(
% 15.50/2.47    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 15.50/2.47    inference(flattening,[],[f59])).
% 15.50/2.47  
% 15.50/2.47  fof(f106,plain,(
% 15.50/2.47    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f60])).
% 15.50/2.47  
% 15.50/2.47  fof(f112,plain,(
% 15.50/2.47    v1_funct_1(sK3)),
% 15.50/2.47    inference(cnf_transformation,[],[f71])).
% 15.50/2.47  
% 15.50/2.47  fof(f21,axiom,(
% 15.50/2.47    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f55,plain,(
% 15.50/2.47    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 15.50/2.47    inference(ennf_transformation,[],[f21])).
% 15.50/2.47  
% 15.50/2.47  fof(f56,plain,(
% 15.50/2.47    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 15.50/2.47    inference(flattening,[],[f55])).
% 15.50/2.47  
% 15.50/2.47  fof(f68,plain,(
% 15.50/2.47    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 15.50/2.47    inference(nnf_transformation,[],[f56])).
% 15.50/2.47  
% 15.50/2.47  fof(f101,plain,(
% 15.50/2.47    ( ! [X2,X0,X3,X1] : (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 15.50/2.47    inference(cnf_transformation,[],[f68])).
% 15.50/2.47  
% 15.50/2.47  fof(f116,plain,(
% 15.50/2.47    r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0))),
% 15.50/2.47    inference(cnf_transformation,[],[f71])).
% 15.50/2.47  
% 15.50/2.47  fof(f23,axiom,(
% 15.50/2.47    ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_partfun1(k6_partfun1(X0),X0))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f29,plain,(
% 15.50/2.47    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 15.50/2.47    inference(pure_predicate_removal,[],[f23])).
% 15.50/2.47  
% 15.50/2.47  fof(f105,plain,(
% 15.50/2.47    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 15.50/2.47    inference(cnf_transformation,[],[f29])).
% 15.50/2.47  
% 15.50/2.47  fof(f22,axiom,(
% 15.50/2.47    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f57,plain,(
% 15.50/2.47    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 15.50/2.47    inference(ennf_transformation,[],[f22])).
% 15.50/2.47  
% 15.50/2.47  fof(f58,plain,(
% 15.50/2.47    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) & v1_funct_1(k1_partfun1(X0,X1,X2,X3,X4,X5))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 15.50/2.47    inference(flattening,[],[f57])).
% 15.50/2.47  
% 15.50/2.47  fof(f104,plain,(
% 15.50/2.47    ( ! [X4,X2,X0,X5,X3,X1] : (m1_subset_1(k1_partfun1(X0,X1,X2,X3,X4,X5),k1_zfmisc_1(k2_zfmisc_1(X0,X3))) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f58])).
% 15.50/2.47  
% 15.50/2.47  fof(f19,axiom,(
% 15.50/2.47    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f30,plain,(
% 15.50/2.47    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 15.50/2.47    inference(pure_predicate_removal,[],[f19])).
% 15.50/2.47  
% 15.50/2.47  fof(f53,plain,(
% 15.50/2.47    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 15.50/2.47    inference(ennf_transformation,[],[f30])).
% 15.50/2.47  
% 15.50/2.47  fof(f99,plain,(
% 15.50/2.47    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 15.50/2.47    inference(cnf_transformation,[],[f53])).
% 15.50/2.47  
% 15.50/2.47  fof(f3,axiom,(
% 15.50/2.47    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f32,plain,(
% 15.50/2.47    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 15.50/2.47    inference(ennf_transformation,[],[f3])).
% 15.50/2.47  
% 15.50/2.47  fof(f67,plain,(
% 15.50/2.47    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 15.50/2.47    inference(nnf_transformation,[],[f32])).
% 15.50/2.47  
% 15.50/2.47  fof(f76,plain,(
% 15.50/2.47    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f67])).
% 15.50/2.47  
% 15.50/2.47  fof(f14,axiom,(
% 15.50/2.47    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(X0,k2_relat_1(X1)) => k9_relat_1(X1,k10_relat_1(X1,X0)) = X0))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f43,plain,(
% 15.50/2.47    ! [X0,X1] : ((k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 | ~r1_tarski(X0,k2_relat_1(X1))) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 15.50/2.47    inference(ennf_transformation,[],[f14])).
% 15.50/2.47  
% 15.50/2.47  fof(f44,plain,(
% 15.50/2.47    ! [X0,X1] : (k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 | ~r1_tarski(X0,k2_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 15.50/2.47    inference(flattening,[],[f43])).
% 15.50/2.47  
% 15.50/2.47  fof(f91,plain,(
% 15.50/2.47    ( ! [X0,X1] : (k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 | ~r1_tarski(X0,k2_relat_1(X1)) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f44])).
% 15.50/2.47  
% 15.50/2.47  fof(f6,axiom,(
% 15.50/2.47    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1))))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f34,plain,(
% 15.50/2.47    ! [X0] : (! [X1] : (k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 15.50/2.47    inference(ennf_transformation,[],[f6])).
% 15.50/2.47  
% 15.50/2.47  fof(f80,plain,(
% 15.50/2.47    ( ! [X0,X1] : (k1_relat_1(k5_relat_1(X0,X1)) = k10_relat_1(X0,k1_relat_1(X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f34])).
% 15.50/2.47  
% 15.50/2.47  fof(f9,axiom,(
% 15.50/2.47    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f83,plain,(
% 15.50/2.47    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 15.50/2.47    inference(cnf_transformation,[],[f9])).
% 15.50/2.47  
% 15.50/2.47  fof(f122,plain,(
% 15.50/2.47    ( ! [X0] : (k1_relat_1(k6_partfun1(X0)) = X0) )),
% 15.50/2.47    inference(definition_unfolding,[],[f83,f107])).
% 15.50/2.47  
% 15.50/2.47  fof(f7,axiom,(
% 15.50/2.47    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => k7_relat_1(X1,X0) = X1)),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f35,plain,(
% 15.50/2.47    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 15.50/2.47    inference(ennf_transformation,[],[f7])).
% 15.50/2.47  
% 15.50/2.47  fof(f36,plain,(
% 15.50/2.47    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 15.50/2.47    inference(flattening,[],[f35])).
% 15.50/2.47  
% 15.50/2.47  fof(f81,plain,(
% 15.50/2.47    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f36])).
% 15.50/2.47  
% 15.50/2.47  fof(f5,axiom,(
% 15.50/2.47    ! [X0,X1] : (v1_relat_1(X1) => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f33,plain,(
% 15.50/2.47    ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 15.50/2.47    inference(ennf_transformation,[],[f5])).
% 15.50/2.47  
% 15.50/2.47  fof(f79,plain,(
% 15.50/2.47    ( ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f33])).
% 15.50/2.47  
% 15.50/2.47  fof(f10,axiom,(
% 15.50/2.47    ! [X0] : (v1_relat_1(X0) => k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0)),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f38,plain,(
% 15.50/2.47    ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0))),
% 15.50/2.47    inference(ennf_transformation,[],[f10])).
% 15.50/2.47  
% 15.50/2.47  fof(f85,plain,(
% 15.50/2.47    ( ! [X0] : (k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f38])).
% 15.50/2.47  
% 15.50/2.47  fof(f123,plain,(
% 15.50/2.47    ( ! [X0] : (k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0 | ~v1_relat_1(X0)) )),
% 15.50/2.47    inference(definition_unfolding,[],[f85,f107])).
% 15.50/2.47  
% 15.50/2.47  fof(f16,axiom,(
% 15.50/2.47    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0))))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f47,plain,(
% 15.50/2.47    ! [X0] : (((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 15.50/2.47    inference(ennf_transformation,[],[f16])).
% 15.50/2.47  
% 15.50/2.47  fof(f48,plain,(
% 15.50/2.47    ! [X0] : ((k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) & k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 15.50/2.47    inference(flattening,[],[f47])).
% 15.50/2.47  
% 15.50/2.47  fof(f95,plain,(
% 15.50/2.47    ( ! [X0] : (k1_relat_1(X0) = k2_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f48])).
% 15.50/2.47  
% 15.50/2.47  fof(f11,axiom,(
% 15.50/2.47    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k2_relat_1(X1),X0) => k5_relat_1(X1,k6_relat_1(X0)) = X1))),
% 15.50/2.47    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.50/2.47  
% 15.50/2.47  fof(f39,plain,(
% 15.50/2.47    ! [X0,X1] : ((k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 15.50/2.47    inference(ennf_transformation,[],[f11])).
% 15.50/2.47  
% 15.50/2.47  fof(f40,plain,(
% 15.50/2.47    ! [X0,X1] : (k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 15.50/2.47    inference(flattening,[],[f39])).
% 15.50/2.47  
% 15.50/2.47  fof(f86,plain,(
% 15.50/2.47    ( ! [X0,X1] : (k5_relat_1(X1,k6_relat_1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 15.50/2.47    inference(cnf_transformation,[],[f40])).
% 15.50/2.47  
% 15.50/2.47  fof(f124,plain,(
% 15.50/2.47    ( ! [X0,X1] : (k5_relat_1(X1,k6_partfun1(X0)) = X1 | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 15.50/2.47    inference(definition_unfolding,[],[f86,f107])).
% 15.50/2.47  
% 15.50/2.47  fof(f120,plain,(
% 15.50/2.47    k2_funct_1(sK2) != sK3),
% 15.50/2.47    inference(cnf_transformation,[],[f71])).
% 15.50/2.47  
% 15.50/2.47  cnf(c_6,plain,
% 15.50/2.47      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 15.50/2.47      inference(cnf_transformation,[],[f78]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1626,plain,
% 15.50/2.47      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_42,negated_conjecture,
% 15.50/2.47      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
% 15.50/2.47      inference(cnf_transformation,[],[f114]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1600,plain,
% 15.50/2.47      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_42]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_3,plain,
% 15.50/2.47      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 15.50/2.47      | ~ v1_relat_1(X1)
% 15.50/2.47      | v1_relat_1(X0) ),
% 15.50/2.47      inference(cnf_transformation,[],[f75]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1629,plain,
% 15.50/2.47      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 15.50/2.47      | v1_relat_1(X1) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) = iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_3926,plain,
% 15.50/2.47      ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) != iProver_top
% 15.50/2.47      | v1_relat_1(sK3) = iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1600,c_1629]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_3992,plain,
% 15.50/2.47      ( v1_relat_1(sK3) = iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1626,c_3926]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_45,negated_conjecture,
% 15.50/2.47      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 15.50/2.47      inference(cnf_transformation,[],[f111]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1597,plain,
% 15.50/2.47      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_45]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_3927,plain,
% 15.50/2.47      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 15.50/2.47      | v1_relat_1(sK2) = iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1597,c_1629]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_4080,plain,
% 15.50/2.47      ( v1_relat_1(sK2) = iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1626,c_3927]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_47,negated_conjecture,
% 15.50/2.47      ( v1_funct_1(sK2) ),
% 15.50/2.47      inference(cnf_transformation,[],[f109]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1595,plain,
% 15.50/2.47      ( v1_funct_1(sK2) = iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_47]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_16,plain,
% 15.50/2.47      ( ~ v1_funct_1(X0)
% 15.50/2.47      | ~ v1_relat_1(X0)
% 15.50/2.47      | v1_relat_1(k2_funct_1(X0)) ),
% 15.50/2.47      inference(cnf_transformation,[],[f87]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1618,plain,
% 15.50/2.47      ( v1_funct_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(k2_funct_1(X0)) = iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_10,plain,
% 15.50/2.47      ( ~ v1_relat_1(X0)
% 15.50/2.47      | ~ v1_relat_1(X1)
% 15.50/2.47      | ~ v1_relat_1(X2)
% 15.50/2.47      | k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2)) ),
% 15.50/2.47      inference(cnf_transformation,[],[f82]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1622,plain,
% 15.50/2.47      ( k5_relat_1(k5_relat_1(X0,X1),X2) = k5_relat_1(X0,k5_relat_1(X1,X2))
% 15.50/2.47      | v1_relat_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X1) != iProver_top
% 15.50/2.47      | v1_relat_1(X2) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8120,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(X0),k5_relat_1(X1,X2)) = k5_relat_1(k5_relat_1(k2_funct_1(X0),X1),X2)
% 15.50/2.47      | v1_funct_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X1) != iProver_top
% 15.50/2.47      | v1_relat_1(X2) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1618,c_1622]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_43806,plain,
% 15.50/2.47      ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
% 15.50/2.47      | v1_relat_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X1) != iProver_top
% 15.50/2.47      | v1_relat_1(sK2) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1595,c_8120]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_44458,plain,
% 15.50/2.47      ( v1_relat_1(X1) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top
% 15.50/2.47      | k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1)) ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_43806,c_4080]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_44459,plain,
% 15.50/2.47      ( k5_relat_1(k5_relat_1(k2_funct_1(sK2),X0),X1) = k5_relat_1(k2_funct_1(sK2),k5_relat_1(X0,X1))
% 15.50/2.47      | v1_relat_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X1) != iProver_top ),
% 15.50/2.47      inference(renaming,[status(thm)],[c_44458]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_44468,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k5_relat_1(k2_funct_1(sK2),sK2),X0)
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_4080,c_44459]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_39,negated_conjecture,
% 15.50/2.47      ( v2_funct_1(sK2) ),
% 15.50/2.47      inference(cnf_transformation,[],[f117]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1601,plain,
% 15.50/2.47      ( v2_funct_1(sK2) = iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_39]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_24,plain,
% 15.50/2.47      ( ~ v2_funct_1(X0)
% 15.50/2.47      | ~ v1_funct_1(X0)
% 15.50/2.47      | ~ v1_relat_1(X0)
% 15.50/2.47      | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) ),
% 15.50/2.47      inference(cnf_transformation,[],[f127]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1610,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0))
% 15.50/2.47      | v2_funct_1(X0) != iProver_top
% 15.50/2.47      | v1_funct_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_6261,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(k2_relat_1(sK2))
% 15.50/2.47      | v1_funct_1(sK2) != iProver_top
% 15.50/2.47      | v1_relat_1(sK2) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1601,c_1610]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_28,plain,
% 15.50/2.47      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 15.50/2.47      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 15.50/2.47      inference(cnf_transformation,[],[f100]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1606,plain,
% 15.50/2.47      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 15.50/2.47      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_3032,plain,
% 15.50/2.47      ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1597,c_1606]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_41,negated_conjecture,
% 15.50/2.47      ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
% 15.50/2.47      inference(cnf_transformation,[],[f115]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_3033,plain,
% 15.50/2.47      ( k2_relat_1(sK2) = sK1 ),
% 15.50/2.47      inference(light_normalisation,[status(thm)],[c_3032,c_41]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_6262,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
% 15.50/2.47      | v1_funct_1(sK2) != iProver_top
% 15.50/2.47      | v1_relat_1(sK2) != iProver_top ),
% 15.50/2.47      inference(light_normalisation,[status(thm)],[c_6261,c_3033]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_48,plain,
% 15.50/2.47      ( v1_funct_1(sK2) = iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_47]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_7275,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(sK1) ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_6262,c_48,c_4080]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_44473,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,X0)) = k5_relat_1(k6_partfun1(sK1),X0)
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(light_normalisation,[status(thm)],[c_44468,c_7275]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_44667,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),k5_relat_1(sK2,sK3)) = k5_relat_1(k6_partfun1(sK1),sK3) ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_3992,c_44473]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_34,plain,
% 15.50/2.47      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 15.50/2.47      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 15.50/2.47      | ~ v1_funct_1(X0)
% 15.50/2.47      | ~ v1_funct_1(X3)
% 15.50/2.47      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 15.50/2.47      inference(cnf_transformation,[],[f106]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1602,plain,
% 15.50/2.47      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 15.50/2.47      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 15.50/2.47      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 15.50/2.47      | v1_funct_1(X4) != iProver_top
% 15.50/2.47      | v1_funct_1(X5) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8769,plain,
% 15.50/2.47      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 15.50/2.47      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 15.50/2.47      | v1_funct_1(X2) != iProver_top
% 15.50/2.47      | v1_funct_1(sK3) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1600,c_1602]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_44,negated_conjecture,
% 15.50/2.47      ( v1_funct_1(sK3) ),
% 15.50/2.47      inference(cnf_transformation,[],[f112]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_51,plain,
% 15.50/2.47      ( v1_funct_1(sK3) = iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_44]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8861,plain,
% 15.50/2.47      ( v1_funct_1(X2) != iProver_top
% 15.50/2.47      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 15.50/2.47      | k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3) ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_8769,c_51]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8862,plain,
% 15.50/2.47      ( k1_partfun1(X0,X1,sK1,sK0,X2,sK3) = k5_relat_1(X2,sK3)
% 15.50/2.47      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 15.50/2.47      | v1_funct_1(X2) != iProver_top ),
% 15.50/2.47      inference(renaming,[status(thm)],[c_8861]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8870,plain,
% 15.50/2.47      ( k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) = k5_relat_1(sK2,sK3)
% 15.50/2.47      | v1_funct_1(sK2) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1597,c_8862]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_30,plain,
% 15.50/2.47      ( ~ r2_relset_1(X0,X1,X2,X3)
% 15.50/2.47      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 15.50/2.47      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 15.50/2.47      | X3 = X2 ),
% 15.50/2.47      inference(cnf_transformation,[],[f101]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_40,negated_conjecture,
% 15.50/2.47      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k6_partfun1(sK0)) ),
% 15.50/2.47      inference(cnf_transformation,[],[f116]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_559,plain,
% 15.50/2.47      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 15.50/2.47      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 15.50/2.47      | X3 = X0
% 15.50/2.47      | k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) != X0
% 15.50/2.47      | k6_partfun1(sK0) != X3
% 15.50/2.47      | sK0 != X2
% 15.50/2.47      | sK0 != X1 ),
% 15.50/2.47      inference(resolution_lifted,[status(thm)],[c_30,c_40]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_560,plain,
% 15.50/2.47      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 15.50/2.47      | ~ m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 15.50/2.47      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 15.50/2.47      inference(unflattening,[status(thm)],[c_559]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_33,plain,
% 15.50/2.47      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 15.50/2.47      inference(cnf_transformation,[],[f105]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_63,plain,
% 15.50/2.47      ( m1_subset_1(k6_partfun1(sK0),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
% 15.50/2.47      inference(instantiation,[status(thm)],[c_33]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_562,plain,
% 15.50/2.47      ( ~ m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 15.50/2.47      | k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_560,c_63]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1593,plain,
% 15.50/2.47      ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3)
% 15.50/2.47      | m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_562]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_31,plain,
% 15.50/2.47      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 15.50/2.47      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 15.50/2.47      | m1_subset_1(k1_partfun1(X4,X5,X1,X2,X3,X0),k1_zfmisc_1(k2_zfmisc_1(X4,X2)))
% 15.50/2.47      | ~ v1_funct_1(X0)
% 15.50/2.47      | ~ v1_funct_1(X3) ),
% 15.50/2.47      inference(cnf_transformation,[],[f104]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1694,plain,
% 15.50/2.47      ( m1_subset_1(k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 15.50/2.47      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 15.50/2.47      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 15.50/2.47      | ~ v1_funct_1(sK3)
% 15.50/2.47      | ~ v1_funct_1(sK2) ),
% 15.50/2.47      inference(instantiation,[status(thm)],[c_31]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_2332,plain,
% 15.50/2.47      ( k6_partfun1(sK0) = k1_partfun1(sK0,sK1,sK1,sK0,sK2,sK3) ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_1593,c_47,c_45,c_44,c_42,c_63,c_560,c_1694]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8871,plain,
% 15.50/2.47      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0)
% 15.50/2.47      | v1_funct_1(sK2) != iProver_top ),
% 15.50/2.47      inference(light_normalisation,[status(thm)],[c_8870,c_2332]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_9009,plain,
% 15.50/2.47      ( k5_relat_1(sK2,sK3) = k6_partfun1(sK0) ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_8871,c_48]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_27,plain,
% 15.50/2.47      ( v4_relat_1(X0,X1)
% 15.50/2.47      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 15.50/2.47      inference(cnf_transformation,[],[f99]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1607,plain,
% 15.50/2.47      ( v4_relat_1(X0,X1) = iProver_top
% 15.50/2.47      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_27]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_2814,plain,
% 15.50/2.47      ( v4_relat_1(sK3,sK1) = iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1600,c_1607]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_5,plain,
% 15.50/2.47      ( ~ v4_relat_1(X0,X1)
% 15.50/2.47      | r1_tarski(k1_relat_1(X0),X1)
% 15.50/2.47      | ~ v1_relat_1(X0) ),
% 15.50/2.47      inference(cnf_transformation,[],[f76]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1627,plain,
% 15.50/2.47      ( v4_relat_1(X0,X1) != iProver_top
% 15.50/2.47      | r1_tarski(k1_relat_1(X0),X1) = iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_19,plain,
% 15.50/2.47      ( ~ r1_tarski(X0,k2_relat_1(X1))
% 15.50/2.47      | ~ v1_funct_1(X1)
% 15.50/2.47      | ~ v1_relat_1(X1)
% 15.50/2.47      | k9_relat_1(X1,k10_relat_1(X1,X0)) = X0 ),
% 15.50/2.47      inference(cnf_transformation,[],[f91]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1615,plain,
% 15.50/2.47      ( k9_relat_1(X0,k10_relat_1(X0,X1)) = X1
% 15.50/2.47      | r1_tarski(X1,k2_relat_1(X0)) != iProver_top
% 15.50/2.47      | v1_funct_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8082,plain,
% 15.50/2.47      ( k9_relat_1(sK2,k10_relat_1(sK2,X0)) = X0
% 15.50/2.47      | r1_tarski(X0,sK1) != iProver_top
% 15.50/2.47      | v1_funct_1(sK2) != iProver_top
% 15.50/2.47      | v1_relat_1(sK2) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_3033,c_1615]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8170,plain,
% 15.50/2.47      ( k9_relat_1(sK2,k10_relat_1(sK2,X0)) = X0
% 15.50/2.47      | r1_tarski(X0,sK1) != iProver_top ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_8082,c_48,c_4080]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8177,plain,
% 15.50/2.47      ( k9_relat_1(sK2,k10_relat_1(sK2,k1_relat_1(X0))) = k1_relat_1(X0)
% 15.50/2.47      | v4_relat_1(X0,sK1) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1627,c_8170]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8210,plain,
% 15.50/2.47      ( k9_relat_1(sK2,k10_relat_1(sK2,k1_relat_1(sK3))) = k1_relat_1(sK3)
% 15.50/2.47      | v1_relat_1(sK3) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_2814,c_8177]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8,plain,
% 15.50/2.47      ( ~ v1_relat_1(X0)
% 15.50/2.47      | ~ v1_relat_1(X1)
% 15.50/2.47      | k10_relat_1(X0,k1_relat_1(X1)) = k1_relat_1(k5_relat_1(X0,X1)) ),
% 15.50/2.47      inference(cnf_transformation,[],[f80]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1624,plain,
% 15.50/2.47      ( k10_relat_1(X0,k1_relat_1(X1)) = k1_relat_1(k5_relat_1(X0,X1))
% 15.50/2.47      | v1_relat_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X1) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_4726,plain,
% 15.50/2.47      ( k10_relat_1(sK2,k1_relat_1(X0)) = k1_relat_1(k5_relat_1(sK2,X0))
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_4080,c_1624]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_6251,plain,
% 15.50/2.47      ( k10_relat_1(sK2,k1_relat_1(sK3)) = k1_relat_1(k5_relat_1(sK2,sK3)) ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_3992,c_4726]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_8215,plain,
% 15.50/2.47      ( k9_relat_1(sK2,k1_relat_1(k5_relat_1(sK2,sK3))) = k1_relat_1(sK3)
% 15.50/2.47      | v1_relat_1(sK3) != iProver_top ),
% 15.50/2.47      inference(light_normalisation,[status(thm)],[c_8210,c_6251]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_13639,plain,
% 15.50/2.47      ( k9_relat_1(sK2,k1_relat_1(k5_relat_1(sK2,sK3))) = k1_relat_1(sK3) ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_8215,c_3992]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_13641,plain,
% 15.50/2.47      ( k9_relat_1(sK2,k1_relat_1(k6_partfun1(sK0))) = k1_relat_1(sK3) ),
% 15.50/2.47      inference(light_normalisation,[status(thm)],[c_13639,c_9009]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_12,plain,
% 15.50/2.47      ( k1_relat_1(k6_partfun1(X0)) = X0 ),
% 15.50/2.47      inference(cnf_transformation,[],[f122]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_2815,plain,
% 15.50/2.47      ( v4_relat_1(sK2,sK0) = iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1597,c_1607]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_9,plain,
% 15.50/2.47      ( ~ v4_relat_1(X0,X1) | ~ v1_relat_1(X0) | k7_relat_1(X0,X1) = X0 ),
% 15.50/2.47      inference(cnf_transformation,[],[f81]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1623,plain,
% 15.50/2.47      ( k7_relat_1(X0,X1) = X0
% 15.50/2.47      | v4_relat_1(X0,X1) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_3474,plain,
% 15.50/2.47      ( k7_relat_1(sK2,sK0) = sK2 | v1_relat_1(sK2) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_2815,c_1623]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_4188,plain,
% 15.50/2.47      ( k7_relat_1(sK2,sK0) = sK2 ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_4080,c_3474]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_7,plain,
% 15.50/2.47      ( ~ v1_relat_1(X0)
% 15.50/2.47      | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 15.50/2.47      inference(cnf_transformation,[],[f79]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1625,plain,
% 15.50/2.47      ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_4186,plain,
% 15.50/2.47      ( k2_relat_1(k7_relat_1(sK2,X0)) = k9_relat_1(sK2,X0) ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_4080,c_1625]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_5051,plain,
% 15.50/2.47      ( k9_relat_1(sK2,sK0) = k2_relat_1(sK2) ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_4188,c_4186]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_5053,plain,
% 15.50/2.47      ( k9_relat_1(sK2,sK0) = sK1 ),
% 15.50/2.47      inference(light_normalisation,[status(thm)],[c_5051,c_3033]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_13642,plain,
% 15.50/2.47      ( k1_relat_1(sK3) = sK1 ),
% 15.50/2.47      inference(demodulation,[status(thm)],[c_13641,c_12,c_5053]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_13,plain,
% 15.50/2.47      ( ~ v1_relat_1(X0)
% 15.50/2.47      | k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0 ),
% 15.50/2.47      inference(cnf_transformation,[],[f123]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1621,plain,
% 15.50/2.47      ( k5_relat_1(k6_partfun1(k1_relat_1(X0)),X0) = X0
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_4084,plain,
% 15.50/2.47      ( k5_relat_1(k6_partfun1(k1_relat_1(sK3)),sK3) = sK3 ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_3992,c_1621]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_13649,plain,
% 15.50/2.47      ( k5_relat_1(k6_partfun1(sK1),sK3) = sK3 ),
% 15.50/2.47      inference(demodulation,[status(thm)],[c_13642,c_4084]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_22,plain,
% 15.50/2.47      ( ~ v2_funct_1(X0)
% 15.50/2.47      | ~ v1_funct_1(X0)
% 15.50/2.47      | ~ v1_relat_1(X0)
% 15.50/2.47      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 15.50/2.47      inference(cnf_transformation,[],[f95]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1612,plain,
% 15.50/2.47      ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 15.50/2.47      | v2_funct_1(X0) != iProver_top
% 15.50/2.47      | v1_funct_1(X0) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_6818,plain,
% 15.50/2.47      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 15.50/2.47      | v1_funct_1(sK2) != iProver_top
% 15.50/2.47      | v1_relat_1(sK2) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1601,c_1612]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_7268,plain,
% 15.50/2.47      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_6818,c_48,c_4080]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_14,plain,
% 15.50/2.47      ( ~ r1_tarski(k2_relat_1(X0),X1)
% 15.50/2.47      | ~ v1_relat_1(X0)
% 15.50/2.47      | k5_relat_1(X0,k6_partfun1(X1)) = X0 ),
% 15.50/2.47      inference(cnf_transformation,[],[f124]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_1620,plain,
% 15.50/2.47      ( k5_relat_1(X0,k6_partfun1(X1)) = X0
% 15.50/2.47      | r1_tarski(k2_relat_1(X0),X1) != iProver_top
% 15.50/2.47      | v1_relat_1(X0) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_7270,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(X0)) = k2_funct_1(sK2)
% 15.50/2.47      | r1_tarski(k1_relat_1(sK2),X0) != iProver_top
% 15.50/2.47      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_7268,c_1620]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_7837,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(X0)) = k2_funct_1(sK2)
% 15.50/2.47      | v4_relat_1(sK2,X0) != iProver_top
% 15.50/2.47      | v1_relat_1(k2_funct_1(sK2)) != iProver_top
% 15.50/2.47      | v1_relat_1(sK2) != iProver_top ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_1627,c_7270]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_14135,plain,
% 15.50/2.47      ( ~ v1_funct_1(sK2)
% 15.50/2.47      | v1_relat_1(k2_funct_1(sK2))
% 15.50/2.47      | ~ v1_relat_1(sK2) ),
% 15.50/2.47      inference(instantiation,[status(thm)],[c_16]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_14136,plain,
% 15.50/2.47      ( v1_funct_1(sK2) != iProver_top
% 15.50/2.47      | v1_relat_1(k2_funct_1(sK2)) = iProver_top
% 15.50/2.47      | v1_relat_1(sK2) != iProver_top ),
% 15.50/2.47      inference(predicate_to_equality,[status(thm)],[c_14135]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_30099,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(X0)) = k2_funct_1(sK2)
% 15.50/2.47      | v4_relat_1(sK2,X0) != iProver_top ),
% 15.50/2.47      inference(global_propositional_subsumption,
% 15.50/2.47                [status(thm)],
% 15.50/2.47                [c_7837,c_48,c_4080,c_14136]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_30105,plain,
% 15.50/2.47      ( k5_relat_1(k2_funct_1(sK2),k6_partfun1(sK0)) = k2_funct_1(sK2) ),
% 15.50/2.47      inference(superposition,[status(thm)],[c_2815,c_30099]) ).
% 15.50/2.47  
% 15.50/2.47  cnf(c_44675,plain,
% 15.50/2.47      ( k2_funct_1(sK2) = sK3 ),
% 15.50/2.48      inference(light_normalisation,
% 15.50/2.48                [status(thm)],
% 15.50/2.48                [c_44667,c_9009,c_13649,c_30105]) ).
% 15.50/2.48  
% 15.50/2.48  cnf(c_36,negated_conjecture,
% 15.50/2.48      ( k2_funct_1(sK2) != sK3 ),
% 15.50/2.48      inference(cnf_transformation,[],[f120]) ).
% 15.50/2.48  
% 15.50/2.48  cnf(contradiction,plain,
% 15.50/2.48      ( $false ),
% 15.50/2.48      inference(minisat,[status(thm)],[c_44675,c_36]) ).
% 15.50/2.48  
% 15.50/2.48  
% 15.50/2.48  % SZS output end CNFRefutation for theBenchmark.p
% 15.50/2.48  
% 15.50/2.48  ------                               Statistics
% 15.50/2.48  
% 15.50/2.48  ------ General
% 15.50/2.48  
% 15.50/2.48  abstr_ref_over_cycles:                  0
% 15.50/2.48  abstr_ref_under_cycles:                 0
% 15.50/2.48  gc_basic_clause_elim:                   0
% 15.50/2.48  forced_gc_time:                         0
% 15.50/2.48  parsing_time:                           0.01
% 15.50/2.48  unif_index_cands_time:                  0.
% 15.50/2.48  unif_index_add_time:                    0.
% 15.50/2.48  orderings_time:                         0.
% 15.50/2.48  out_proof_time:                         0.021
% 15.50/2.48  total_time:                             1.76
% 15.50/2.48  num_of_symbols:                         56
% 15.50/2.48  num_of_terms:                           74853
% 15.50/2.48  
% 15.50/2.48  ------ Preprocessing
% 15.50/2.48  
% 15.50/2.48  num_of_splits:                          0
% 15.50/2.48  num_of_split_atoms:                     0
% 15.50/2.48  num_of_reused_defs:                     0
% 15.50/2.48  num_eq_ax_congr_red:                    18
% 15.50/2.48  num_of_sem_filtered_clauses:            1
% 15.50/2.48  num_of_subtypes:                        0
% 15.50/2.48  monotx_restored_types:                  0
% 15.50/2.48  sat_num_of_epr_types:                   0
% 15.50/2.48  sat_num_of_non_cyclic_types:            0
% 15.50/2.48  sat_guarded_non_collapsed_types:        0
% 15.50/2.48  num_pure_diseq_elim:                    0
% 15.50/2.48  simp_replaced_by:                       0
% 15.50/2.48  res_preprocessed:                       224
% 15.50/2.48  prep_upred:                             0
% 15.50/2.48  prep_unflattend:                        12
% 15.50/2.48  smt_new_axioms:                         0
% 15.50/2.48  pred_elim_cands:                        7
% 15.50/2.48  pred_elim:                              1
% 15.50/2.48  pred_elim_cl:                           1
% 15.50/2.48  pred_elim_cycles:                       4
% 15.50/2.48  merged_defs:                            0
% 15.50/2.48  merged_defs_ncl:                        0
% 15.50/2.48  bin_hyper_res:                          0
% 15.50/2.48  prep_cycles:                            4
% 15.50/2.48  pred_elim_time:                         0.007
% 15.50/2.48  splitting_time:                         0.
% 15.50/2.48  sem_filter_time:                        0.
% 15.50/2.48  monotx_time:                            0.001
% 15.50/2.48  subtype_inf_time:                       0.
% 15.50/2.48  
% 15.50/2.48  ------ Problem properties
% 15.50/2.48  
% 15.50/2.48  clauses:                                46
% 15.50/2.48  conjectures:                            11
% 15.50/2.48  epr:                                    9
% 15.50/2.48  horn:                                   46
% 15.50/2.48  ground:                                 12
% 15.50/2.48  unary:                                  18
% 15.50/2.48  binary:                                 5
% 15.50/2.48  lits:                                   128
% 15.50/2.48  lits_eq:                                28
% 15.50/2.48  fd_pure:                                0
% 15.50/2.48  fd_pseudo:                              0
% 15.50/2.48  fd_cond:                                0
% 15.50/2.48  fd_pseudo_cond:                         1
% 15.50/2.48  ac_symbols:                             0
% 15.50/2.48  
% 15.50/2.48  ------ Propositional Solver
% 15.50/2.48  
% 15.50/2.48  prop_solver_calls:                      36
% 15.50/2.48  prop_fast_solver_calls:                 3233
% 15.50/2.48  smt_solver_calls:                       0
% 15.50/2.48  smt_fast_solver_calls:                  0
% 15.50/2.48  prop_num_of_clauses:                    26181
% 15.50/2.48  prop_preprocess_simplified:             37994
% 15.50/2.48  prop_fo_subsumed:                       285
% 15.50/2.48  prop_solver_time:                       0.
% 15.50/2.48  smt_solver_time:                        0.
% 15.50/2.48  smt_fast_solver_time:                   0.
% 15.50/2.48  prop_fast_solver_time:                  0.
% 15.50/2.48  prop_unsat_core_time:                   0.003
% 15.50/2.48  
% 15.50/2.48  ------ QBF
% 15.50/2.48  
% 15.50/2.48  qbf_q_res:                              0
% 15.50/2.48  qbf_num_tautologies:                    0
% 15.50/2.48  qbf_prep_cycles:                        0
% 15.50/2.48  
% 15.50/2.48  ------ BMC1
% 15.50/2.48  
% 15.50/2.48  bmc1_current_bound:                     -1
% 15.50/2.48  bmc1_last_solved_bound:                 -1
% 15.50/2.48  bmc1_unsat_core_size:                   -1
% 15.50/2.48  bmc1_unsat_core_parents_size:           -1
% 15.50/2.48  bmc1_merge_next_fun:                    0
% 15.50/2.48  bmc1_unsat_core_clauses_time:           0.
% 15.50/2.48  
% 15.50/2.48  ------ Instantiation
% 15.50/2.48  
% 15.50/2.48  inst_num_of_clauses:                    6538
% 15.50/2.48  inst_num_in_passive:                    1476
% 15.50/2.48  inst_num_in_active:                     2728
% 15.50/2.48  inst_num_in_unprocessed:                2334
% 15.50/2.48  inst_num_of_loops:                      3000
% 15.50/2.48  inst_num_of_learning_restarts:          0
% 15.50/2.48  inst_num_moves_active_passive:          268
% 15.50/2.48  inst_lit_activity:                      0
% 15.50/2.48  inst_lit_activity_moves:                3
% 15.50/2.48  inst_num_tautologies:                   0
% 15.50/2.48  inst_num_prop_implied:                  0
% 15.50/2.48  inst_num_existing_simplified:           0
% 15.50/2.48  inst_num_eq_res_simplified:             0
% 15.50/2.48  inst_num_child_elim:                    0
% 15.50/2.48  inst_num_of_dismatching_blockings:      1386
% 15.50/2.48  inst_num_of_non_proper_insts:           6364
% 15.50/2.48  inst_num_of_duplicates:                 0
% 15.50/2.48  inst_inst_num_from_inst_to_res:         0
% 15.50/2.48  inst_dismatching_checking_time:         0.
% 15.50/2.48  
% 15.50/2.48  ------ Resolution
% 15.50/2.48  
% 15.50/2.48  res_num_of_clauses:                     0
% 15.50/2.48  res_num_in_passive:                     0
% 15.50/2.48  res_num_in_active:                      0
% 15.50/2.48  res_num_of_loops:                       228
% 15.50/2.48  res_forward_subset_subsumed:            403
% 15.50/2.48  res_backward_subset_subsumed:           0
% 15.50/2.48  res_forward_subsumed:                   0
% 15.50/2.48  res_backward_subsumed:                  0
% 15.50/2.48  res_forward_subsumption_resolution:     1
% 15.50/2.48  res_backward_subsumption_resolution:    0
% 15.50/2.48  res_clause_to_clause_subsumption:       3642
% 15.50/2.48  res_orphan_elimination:                 0
% 15.50/2.48  res_tautology_del:                      233
% 15.50/2.48  res_num_eq_res_simplified:              1
% 15.50/2.48  res_num_sel_changes:                    0
% 15.50/2.48  res_moves_from_active_to_pass:          0
% 15.50/2.48  
% 15.50/2.48  ------ Superposition
% 15.50/2.48  
% 15.50/2.48  sup_time_total:                         0.
% 15.50/2.48  sup_time_generating:                    0.
% 15.50/2.48  sup_time_sim_full:                      0.
% 15.50/2.48  sup_time_sim_immed:                     0.
% 15.50/2.48  
% 15.50/2.48  sup_num_of_clauses:                     1795
% 15.50/2.48  sup_num_in_active:                      474
% 15.50/2.48  sup_num_in_passive:                     1321
% 15.50/2.48  sup_num_of_loops:                       598
% 15.50/2.48  sup_fw_superposition:                   1124
% 15.50/2.48  sup_bw_superposition:                   1040
% 15.50/2.48  sup_immediate_simplified:               620
% 15.50/2.48  sup_given_eliminated:                   5
% 15.50/2.48  comparisons_done:                       0
% 15.50/2.48  comparisons_avoided:                    0
% 15.50/2.48  
% 15.50/2.48  ------ Simplifications
% 15.50/2.48  
% 15.50/2.48  
% 15.50/2.48  sim_fw_subset_subsumed:                 31
% 15.50/2.48  sim_bw_subset_subsumed:                 64
% 15.50/2.48  sim_fw_subsumed:                        121
% 15.50/2.48  sim_bw_subsumed:                        11
% 15.50/2.48  sim_fw_subsumption_res:                 0
% 15.50/2.48  sim_bw_subsumption_res:                 0
% 15.50/2.48  sim_tautology_del:                      14
% 15.50/2.48  sim_eq_tautology_del:                   100
% 15.50/2.48  sim_eq_res_simp:                        2
% 15.50/2.48  sim_fw_demodulated:                     87
% 15.50/2.48  sim_bw_demodulated:                     93
% 15.50/2.48  sim_light_normalised:                   564
% 15.50/2.48  sim_joinable_taut:                      0
% 15.50/2.48  sim_joinable_simp:                      0
% 15.50/2.48  sim_ac_normalised:                      0
% 15.50/2.48  sim_smt_subsumption:                    0
% 15.50/2.48  
%------------------------------------------------------------------------------
