%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:07:22 EST 2020

% Result     : Theorem 3.54s
% Output     : CNFRefutation 3.54s
% Verified   : 
% Statistics : Number of formulae       :  205 (3531 expanded)
%              Number of clauses        :  122 (1042 expanded)
%              Number of leaves         :   20 ( 692 expanded)
%              Depth                    :   27
%              Number of atoms          :  658 (16625 expanded)
%              Number of equality atoms :  296 (1838 expanded)
%              Maximal formula depth    :   12 (   4 average)
%              Maximal clause size      :   13 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f20,conjecture,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => ( r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
        & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v3_funct_2(X1,X0,X0)
          & v1_funct_2(X1,X0,X0)
          & v1_funct_1(X1) )
       => ( r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
          & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) ) ) ),
    inference(negated_conjecture,[],[f20])).

fof(f46,plain,(
    ? [X0,X1] :
      ( ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
        | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v3_funct_2(X1,X0,X0)
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f47,plain,(
    ? [X0,X1] :
      ( ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
        | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v3_funct_2(X1,X0,X0)
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(flattening,[],[f46])).

fof(f51,plain,
    ( ? [X0,X1] :
        ( ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
          | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) )
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
   => ( ( ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0))
        | ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0)) )
      & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
      & v3_funct_2(sK1,sK0,sK0)
      & v1_funct_2(sK1,sK0,sK0)
      & v1_funct_1(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f52,plain,
    ( ( ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0))
      | ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0)) )
    & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    & v3_funct_2(sK1,sK0,sK0)
    & v1_funct_2(sK1,sK0,sK0)
    & v1_funct_1(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f47,f51])).

fof(f91,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(cnf_transformation,[],[f52])).

fof(f14,axiom,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    inference(ennf_transformation,[],[f14])).

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

fof(f49,plain,(
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

fof(f73,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f66,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f89,plain,(
    v1_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f52])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => k2_funct_1(X1) = k2_funct_2(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X1) = k2_funct_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f45,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X1) = k2_funct_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(flattening,[],[f44])).

fof(f86,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X1) = k2_funct_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f88,plain,(
    v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f52])).

fof(f90,plain,(
    v3_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f52])).

fof(f16,axiom,(
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

fof(f40,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_1(k2_funct_2(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f41,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_1(k2_funct_2(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(flattening,[],[f40])).

fof(f84,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f17,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f43,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f42])).

fof(f85,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f81,plain,(
    ! [X0,X1] :
      ( v1_funct_1(k2_funct_2(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f7,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k6_relat_1(k2_relat_1(X0)) = k5_relat_1(k2_funct_1(X0),X0)
          & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] :
      ( ( k6_relat_1(k2_relat_1(X0)) = k5_relat_1(k2_funct_1(X0),X0)
        & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f28,plain,(
    ! [X0] :
      ( ( k6_relat_1(k2_relat_1(X0)) = k5_relat_1(k2_funct_1(X0),X0)
        & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f27])).

fof(f62,plain,(
    ! [X0] :
      ( k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f19,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f87,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f19])).

fof(f99,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f62,f87])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f64,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( v3_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( v2_funct_2(X2,X1)
          & v2_funct_1(X2)
          & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f34])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( v2_funct_1(X2)
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f63,plain,(
    ! [X0] :
      ( k6_relat_1(k2_relat_1(X0)) = k5_relat_1(k2_funct_1(X0),X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f98,plain,(
    ! [X0] :
      ( k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f63,f87])).

fof(f72,plain,(
    ! [X2,X0,X1] :
      ( v2_funct_2(X2,X1)
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

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

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f23])).

fof(f65,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f15,axiom,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f39,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f38])).

fof(f50,plain,(
    ! [X0,X1] :
      ( ( ( v2_funct_2(X1,X0)
          | k2_relat_1(X1) != X0 )
        & ( k2_relat_1(X1) = X0
          | ~ v2_funct_2(X1,X0) ) )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f39])).

fof(f79,plain,(
    ! [X0,X1] :
      ( k2_relat_1(X1) = X0
      | ~ v2_funct_2(X1,X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f50])).

fof(f92,plain,
    ( ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0))
    | ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f52])).

fof(f12,axiom,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f69,plain,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f12])).

fof(f100,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(definition_unfolding,[],[f69,f87])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f33,plain,(
    ! [X0,X1,X2,X3] :
      ( ( r2_relset_1(X0,X1,X2,X3)
      <=> X2 = X3 )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f32])).

fof(f48,plain,(
    ! [X0,X1,X2,X3] :
      ( ( ( r2_relset_1(X0,X1,X2,X3)
          | X2 != X3 )
        & ( X2 = X3
          | ~ r2_relset_1(X0,X1,X2,X3) ) )
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(nnf_transformation,[],[f33])).

fof(f68,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X3)
      | X2 != X3
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f48])).

fof(f101,plain,(
    ! [X0,X3,X1] :
      ( r2_relset_1(X0,X1,X3,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(equality_resolution,[],[f68])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f26,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f25])).

fof(f56,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f5,axiom,(
    k1_xboole_0 = k6_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f59,plain,(
    k1_xboole_0 = k6_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f5])).

fof(f95,plain,(
    k1_xboole_0 = k6_partfun1(k1_xboole_0) ),
    inference(definition_unfolding,[],[f59,f87])).

fof(f4,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f57,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f4])).

fof(f94,plain,(
    ! [X0] : k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(definition_unfolding,[],[f57,f87])).

fof(f1,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f53,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(unused_predicate_definition_removal,[],[f2])).

fof(f24,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f54,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_35,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
    inference(cnf_transformation,[],[f91])).

cnf(c_1709,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_25,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1717,plain,
    ( k1_relset_1(X0,X1,X2) = X0
    | k1_xboole_0 = X1
    | v1_funct_2(X2,X0,X1) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_4301,plain,
    ( k1_relset_1(sK0,sK0,sK1) = sK0
    | sK0 = k1_xboole_0
    | v1_funct_2(sK1,sK0,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1709,c_1717])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_1726,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2856,plain,
    ( k1_relset_1(sK0,sK0,sK1) = k1_relat_1(sK1) ),
    inference(superposition,[status(thm)],[c_1709,c_1726])).

cnf(c_4313,plain,
    ( k1_relat_1(sK1) = sK0
    | sK0 = k1_xboole_0
    | v1_funct_2(sK1,sK0,sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4301,c_2856])).

cnf(c_37,negated_conjecture,
    ( v1_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_40,plain,
    ( v1_funct_2(sK1,sK0,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_7641,plain,
    ( sK0 = k1_xboole_0
    | k1_relat_1(sK1) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4313,c_40])).

cnf(c_7642,plain,
    ( k1_relat_1(sK1) = sK0
    | sK0 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_7641])).

cnf(c_33,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | k2_funct_2(X1,X0) = k2_funct_1(X0) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_1711,plain,
    ( k2_funct_2(X0,X1) = k2_funct_1(X1)
    | v1_funct_2(X1,X0,X0) != iProver_top
    | v3_funct_2(X1,X0,X0) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_33])).

cnf(c_4600,plain,
    ( k2_funct_2(sK0,sK1) = k2_funct_1(sK1)
    | v1_funct_2(sK1,sK0,sK0) != iProver_top
    | v3_funct_2(sK1,sK0,sK0) != iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1709,c_1711])).

cnf(c_38,negated_conjecture,
    ( v1_funct_1(sK1) ),
    inference(cnf_transformation,[],[f88])).

cnf(c_36,negated_conjecture,
    ( v3_funct_2(sK1,sK0,sK0) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_2098,plain,
    ( ~ v1_funct_2(sK1,X0,X0)
    | ~ v3_funct_2(sK1,X0,X0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
    | ~ v1_funct_1(sK1)
    | k2_funct_2(X0,sK1) = k2_funct_1(sK1) ),
    inference(instantiation,[status(thm)],[c_33])).

cnf(c_2242,plain,
    ( ~ v1_funct_2(sK1,sK0,sK0)
    | ~ v3_funct_2(sK1,sK0,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_funct_1(sK1)
    | k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2098])).

cnf(c_4878,plain,
    ( k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_4600,c_38,c_37,c_36,c_35,c_2242])).

cnf(c_28,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_1716,plain,
    ( v1_funct_2(X0,X1,X1) != iProver_top
    | v3_funct_2(X0,X1,X1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) != iProver_top
    | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) = iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_5255,plain,
    ( v1_funct_2(sK1,sK0,sK0) != iProver_top
    | v3_funct_2(sK1,sK0,sK0) != iProver_top
    | m1_subset_1(k2_funct_1(sK1),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_4878,c_1716])).

cnf(c_39,plain,
    ( v1_funct_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_41,plain,
    ( v3_funct_2(sK1,sK0,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_36])).

cnf(c_42,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_6295,plain,
    ( m1_subset_1(k2_funct_1(sK1),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5255,c_39,c_40,c_41,c_42])).

cnf(c_32,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_1712,plain,
    ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
    | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
    | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X5) != iProver_top
    | v1_funct_1(X4) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_32])).

cnf(c_6312,plain,
    ( k1_partfun1(X0,X1,sK0,sK0,X2,k2_funct_1(sK1)) = k5_relat_1(X2,k2_funct_1(sK1))
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(k2_funct_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6295,c_1712])).

cnf(c_31,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_2(X1,X0)) ),
    inference(cnf_transformation,[],[f81])).

cnf(c_1713,plain,
    ( v1_funct_2(X0,X1,X1) != iProver_top
    | v3_funct_2(X0,X1,X1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_funct_1(k2_funct_2(X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_31])).

cnf(c_4053,plain,
    ( v1_funct_2(sK1,sK0,sK0) != iProver_top
    | v3_funct_2(sK1,sK0,sK0) != iProver_top
    | v1_funct_1(k2_funct_2(sK0,sK1)) = iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1709,c_1713])).

cnf(c_2083,plain,
    ( ~ v1_funct_2(sK1,X0,X0)
    | ~ v3_funct_2(sK1,X0,X0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
    | v1_funct_1(k2_funct_2(X0,sK1))
    | ~ v1_funct_1(sK1) ),
    inference(instantiation,[status(thm)],[c_31])).

cnf(c_2234,plain,
    ( ~ v1_funct_2(sK1,sK0,sK0)
    | ~ v3_funct_2(sK1,sK0,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | v1_funct_1(k2_funct_2(sK0,sK1))
    | ~ v1_funct_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2083])).

cnf(c_2235,plain,
    ( v1_funct_2(sK1,sK0,sK0) != iProver_top
    | v3_funct_2(sK1,sK0,sK0) != iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_funct_1(k2_funct_2(sK0,sK1)) = iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2234])).

cnf(c_4730,plain,
    ( v1_funct_1(k2_funct_2(sK0,sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4053,c_39,c_40,c_41,c_42,c_2235])).

cnf(c_4881,plain,
    ( v1_funct_1(k2_funct_1(sK1)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_4878,c_4730])).

cnf(c_10032,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK0,sK0,X2,k2_funct_1(sK1)) = k5_relat_1(X2,k2_funct_1(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_6312,c_4881])).

cnf(c_10033,plain,
    ( k1_partfun1(X0,X1,sK0,sK0,X2,k2_funct_1(sK1)) = k5_relat_1(X2,k2_funct_1(sK1))
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_10032])).

cnf(c_10043,plain,
    ( k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)) = k5_relat_1(sK1,k2_funct_1(sK1))
    | v1_funct_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1709,c_10033])).

cnf(c_1706,plain,
    ( v1_funct_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_38])).

cnf(c_10,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) ),
    inference(cnf_transformation,[],[f99])).

cnf(c_1728,plain,
    ( k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0))
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_3658,plain,
    ( k5_relat_1(sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1))
    | v2_funct_1(sK1) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1706,c_1728])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_2000,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | v1_relat_1(sK1) ),
    inference(instantiation,[status(thm)],[c_11])).

cnf(c_2019,plain,
    ( ~ v1_funct_1(sK1)
    | ~ v2_funct_1(sK1)
    | ~ v1_relat_1(sK1)
    | k5_relat_1(sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1)) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_18,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_2054,plain,
    ( ~ v3_funct_2(sK1,X0,X1)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_funct_1(sK1)
    | v2_funct_1(sK1) ),
    inference(instantiation,[status(thm)],[c_18])).

cnf(c_2182,plain,
    ( ~ v3_funct_2(sK1,sK0,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_funct_1(sK1)
    | v2_funct_1(sK1) ),
    inference(instantiation,[status(thm)],[c_2054])).

cnf(c_3661,plain,
    ( k5_relat_1(sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3658,c_38,c_36,c_35,c_2000,c_2019,c_2182])).

cnf(c_10056,plain,
    ( k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1))
    | v1_funct_1(sK1) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_10043,c_3661])).

cnf(c_10087,plain,
    ( k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_10056,c_39])).

cnf(c_5529,plain,
    ( k1_partfun1(X0,X1,sK0,sK0,X2,sK1) = k5_relat_1(X2,sK1)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1709,c_1712])).

cnf(c_5644,plain,
    ( v1_funct_1(X2) != iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | k1_partfun1(X0,X1,sK0,sK0,X2,sK1) = k5_relat_1(X2,sK1) ),
    inference(global_propositional_subsumption,[status(thm)],[c_5529,c_39])).

cnf(c_5645,plain,
    ( k1_partfun1(X0,X1,sK0,sK0,X2,sK1) = k5_relat_1(X2,sK1)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | v1_funct_1(X2) != iProver_top ),
    inference(renaming,[status(thm)],[c_5644])).

cnf(c_5654,plain,
    ( k1_partfun1(X0,X0,sK0,sK0,k2_funct_2(X0,X1),sK1) = k5_relat_1(k2_funct_2(X0,X1),sK1)
    | v1_funct_2(X1,X0,X0) != iProver_top
    | v3_funct_2(X1,X0,X0) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
    | v1_funct_1(X1) != iProver_top
    | v1_funct_1(k2_funct_2(X0,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1716,c_5645])).

cnf(c_7215,plain,
    ( k1_partfun1(X0,X0,sK0,sK0,k2_funct_2(X0,X1),sK1) = k5_relat_1(k2_funct_2(X0,X1),sK1)
    | v1_funct_2(X1,X0,X0) != iProver_top
    | v3_funct_2(X1,X0,X0) != iProver_top
    | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
    | v1_funct_1(X1) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_5654,c_1713])).

cnf(c_7221,plain,
    ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1) = k5_relat_1(k2_funct_2(sK0,sK1),sK1)
    | v1_funct_2(sK1,sK0,sK0) != iProver_top
    | v3_funct_2(sK1,sK0,sK0) != iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1709,c_7215])).

cnf(c_9,plain,
    ( ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) ),
    inference(cnf_transformation,[],[f98])).

cnf(c_1729,plain,
    ( k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0))
    | v1_funct_1(X0) != iProver_top
    | v2_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_3793,plain,
    ( k5_relat_1(k2_funct_1(sK1),sK1) = k6_partfun1(k2_relat_1(sK1))
    | v2_funct_1(sK1) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1706,c_1729])).

cnf(c_17,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | v2_funct_2(X0,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_12,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_27,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f79])).

cnf(c_427,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_12,c_27])).

cnf(c_439,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | k2_relat_1(X0) = X1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_427,c_11])).

cnf(c_470,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | X3 != X0
    | X5 != X2
    | k2_relat_1(X3) = X5 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_439])).

cnf(c_471,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ v1_funct_1(X0)
    | k2_relat_1(X0) = X2 ),
    inference(unflattening,[status(thm)],[c_470])).

cnf(c_1703,plain,
    ( k2_relat_1(X0) = X1
    | v3_funct_2(X0,X2,X1) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) != iProver_top
    | v1_funct_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_471])).

cnf(c_2730,plain,
    ( k2_relat_1(sK1) = sK0
    | v3_funct_2(sK1,sK0,sK0) != iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,sK0))) != iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_1709,c_1703])).

cnf(c_2088,plain,
    ( ~ v3_funct_2(sK1,X0,X1)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_funct_1(sK1)
    | k2_relat_1(sK1) = X1 ),
    inference(instantiation,[status(thm)],[c_471])).

cnf(c_2237,plain,
    ( ~ v3_funct_2(sK1,sK0,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,sK0)))
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_funct_1(sK1)
    | k2_relat_1(sK1) = sK0 ),
    inference(instantiation,[status(thm)],[c_2088])).

cnf(c_2366,plain,
    ( ~ v3_funct_2(sK1,sK0,sK0)
    | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
    | ~ v1_funct_1(sK1)
    | k2_relat_1(sK1) = sK0 ),
    inference(instantiation,[status(thm)],[c_2237])).

cnf(c_3069,plain,
    ( k2_relat_1(sK1) = sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2730,c_38,c_36,c_35,c_2366])).

cnf(c_3794,plain,
    ( k5_relat_1(k2_funct_1(sK1),sK1) = k6_partfun1(sK0)
    | v2_funct_1(sK1) != iProver_top
    | v1_relat_1(sK1) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3793,c_3069])).

cnf(c_2001,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_relat_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2000])).

cnf(c_2183,plain,
    ( v3_funct_2(sK1,sK0,sK0) != iProver_top
    | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
    | v1_funct_1(sK1) != iProver_top
    | v2_funct_1(sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2182])).

cnf(c_3872,plain,
    ( k5_relat_1(k2_funct_1(sK1),sK1) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3794,c_39,c_41,c_42,c_2001,c_2183])).

cnf(c_7244,plain,
    ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1) = k6_partfun1(sK0)
    | v1_funct_2(sK1,sK0,sK0) != iProver_top
    | v3_funct_2(sK1,sK0,sK0) != iProver_top
    | v1_funct_1(sK1) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_7221,c_3872,c_4878])).

cnf(c_6300,plain,
    ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1) = k5_relat_1(k2_funct_1(sK1),sK1)
    | v1_funct_1(k2_funct_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_6295,c_5645])).

cnf(c_6398,plain,
    ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1) = k6_partfun1(sK0)
    | v1_funct_1(k2_funct_1(sK1)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_6300,c_3872])).

cnf(c_7483,plain,
    ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1) = k6_partfun1(sK0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_7244,c_4881,c_6398])).

cnf(c_34,negated_conjecture,
    ( ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0))
    | ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0)) ),
    inference(cnf_transformation,[],[f92])).

cnf(c_1710,plain,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0)) != iProver_top
    | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_34])).

cnf(c_4882,plain,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1),k6_partfun1(sK0)) != iProver_top
    | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)),k6_partfun1(sK0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4878,c_1710])).

cnf(c_7486,plain,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)),k6_partfun1(sK0)) != iProver_top
    | r2_relset_1(sK0,sK0,k6_partfun1(sK0),k6_partfun1(sK0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_7483,c_4882])).

cnf(c_16,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f100])).

cnf(c_1723,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_14,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f101])).

cnf(c_1725,plain,
    ( r2_relset_1(X0,X1,X2,X2) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_2836,plain,
    ( r2_relset_1(X0,X0,k6_partfun1(X0),k6_partfun1(X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1723,c_1725])).

cnf(c_7491,plain,
    ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)),k6_partfun1(sK0)) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_7486,c_2836])).

cnf(c_10090,plain,
    ( r2_relset_1(sK0,sK0,k6_partfun1(k1_relat_1(sK1)),k6_partfun1(sK0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_10087,c_7491])).

cnf(c_10182,plain,
    ( sK0 = k1_xboole_0
    | r2_relset_1(sK0,sK0,k6_partfun1(sK0),k6_partfun1(sK0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7642,c_10090])).

cnf(c_10592,plain,
    ( sK0 = k1_xboole_0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_10182,c_2836])).

cnf(c_10596,plain,
    ( r2_relset_1(k1_xboole_0,k1_xboole_0,k6_partfun1(k1_relat_1(sK1)),k6_partfun1(k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_10592,c_10090])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_1733,plain,
    ( k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_3072,plain,
    ( sK1 = k1_xboole_0
    | sK0 != k1_xboole_0
    | v1_relat_1(sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_3069,c_1733])).

cnf(c_3073,plain,
    ( ~ v1_relat_1(sK1)
    | sK1 = k1_xboole_0
    | sK0 != k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_3072])).

cnf(c_3075,plain,
    ( sK0 != k1_xboole_0
    | sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3072,c_35,c_2000,c_3073])).

cnf(c_3076,plain,
    ( sK1 = k1_xboole_0
    | sK0 != k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_3075])).

cnf(c_10629,plain,
    ( sK1 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_10592,c_3076])).

cnf(c_10648,plain,
    ( sK1 = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_10629])).

cnf(c_10793,plain,
    ( r2_relset_1(k1_xboole_0,k1_xboole_0,k6_partfun1(k1_relat_1(k1_xboole_0)),k6_partfun1(k1_xboole_0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_10596,c_10648])).

cnf(c_6,plain,
    ( k6_partfun1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f95])).

cnf(c_5,plain,
    ( k1_relat_1(k6_partfun1(X0)) = X0 ),
    inference(cnf_transformation,[],[f94])).

cnf(c_2132,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_6,c_5])).

cnf(c_10795,plain,
    ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_10793,c_6,c_2132])).

cnf(c_0,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_412,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | X1 != X2
    | k1_xboole_0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_1])).

cnf(c_413,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(unflattening,[status(thm)],[c_412])).

cnf(c_2004,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(instantiation,[status(thm)],[c_413])).

cnf(c_2007,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2004])).

cnf(c_2009,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
    inference(instantiation,[status(thm)],[c_2007])).

cnf(c_99,plain,
    ( r2_relset_1(X0,X1,X2,X2) = iProver_top
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_101,plain,
    ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_99])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_10795,c_2009,c_101])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n010.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 20:01:44 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.54/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.54/0.98  
% 3.54/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.54/0.98  
% 3.54/0.98  ------  iProver source info
% 3.54/0.98  
% 3.54/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.54/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.54/0.98  git: non_committed_changes: false
% 3.54/0.98  git: last_make_outside_of_git: false
% 3.54/0.98  
% 3.54/0.98  ------ 
% 3.54/0.98  
% 3.54/0.98  ------ Input Options
% 3.54/0.98  
% 3.54/0.98  --out_options                           all
% 3.54/0.98  --tptp_safe_out                         true
% 3.54/0.98  --problem_path                          ""
% 3.54/0.98  --include_path                          ""
% 3.54/0.98  --clausifier                            res/vclausify_rel
% 3.54/0.98  --clausifier_options                    --mode clausify
% 3.54/0.98  --stdin                                 false
% 3.54/0.98  --stats_out                             all
% 3.54/0.98  
% 3.54/0.98  ------ General Options
% 3.54/0.98  
% 3.54/0.98  --fof                                   false
% 3.54/0.98  --time_out_real                         305.
% 3.54/0.98  --time_out_virtual                      -1.
% 3.54/0.98  --symbol_type_check                     false
% 3.54/0.98  --clausify_out                          false
% 3.54/0.98  --sig_cnt_out                           false
% 3.54/0.98  --trig_cnt_out                          false
% 3.54/0.98  --trig_cnt_out_tolerance                1.
% 3.54/0.98  --trig_cnt_out_sk_spl                   false
% 3.54/0.98  --abstr_cl_out                          false
% 3.54/0.98  
% 3.54/0.98  ------ Global Options
% 3.54/0.98  
% 3.54/0.98  --schedule                              default
% 3.54/0.98  --add_important_lit                     false
% 3.54/0.98  --prop_solver_per_cl                    1000
% 3.54/0.98  --min_unsat_core                        false
% 3.54/0.98  --soft_assumptions                      false
% 3.54/0.98  --soft_lemma_size                       3
% 3.54/0.98  --prop_impl_unit_size                   0
% 3.54/0.98  --prop_impl_unit                        []
% 3.54/0.98  --share_sel_clauses                     true
% 3.54/0.98  --reset_solvers                         false
% 3.54/0.98  --bc_imp_inh                            [conj_cone]
% 3.54/0.98  --conj_cone_tolerance                   3.
% 3.54/0.98  --extra_neg_conj                        none
% 3.54/0.98  --large_theory_mode                     true
% 3.54/0.98  --prolific_symb_bound                   200
% 3.54/0.98  --lt_threshold                          2000
% 3.54/0.98  --clause_weak_htbl                      true
% 3.54/0.98  --gc_record_bc_elim                     false
% 3.54/0.98  
% 3.54/0.98  ------ Preprocessing Options
% 3.54/0.98  
% 3.54/0.98  --preprocessing_flag                    true
% 3.54/0.98  --time_out_prep_mult                    0.1
% 3.54/0.98  --splitting_mode                        input
% 3.54/0.98  --splitting_grd                         true
% 3.54/0.98  --splitting_cvd                         false
% 3.54/0.98  --splitting_cvd_svl                     false
% 3.54/0.98  --splitting_nvd                         32
% 3.54/0.98  --sub_typing                            true
% 3.54/0.98  --prep_gs_sim                           true
% 3.54/0.98  --prep_unflatten                        true
% 3.54/0.98  --prep_res_sim                          true
% 3.54/0.98  --prep_upred                            true
% 3.54/0.98  --prep_sem_filter                       exhaustive
% 3.54/0.98  --prep_sem_filter_out                   false
% 3.54/0.98  --pred_elim                             true
% 3.54/0.98  --res_sim_input                         true
% 3.54/0.98  --eq_ax_congr_red                       true
% 3.54/0.98  --pure_diseq_elim                       true
% 3.54/0.98  --brand_transform                       false
% 3.54/0.98  --non_eq_to_eq                          false
% 3.54/0.98  --prep_def_merge                        true
% 3.54/0.98  --prep_def_merge_prop_impl              false
% 3.54/0.98  --prep_def_merge_mbd                    true
% 3.54/0.98  --prep_def_merge_tr_red                 false
% 3.54/0.98  --prep_def_merge_tr_cl                  false
% 3.54/0.98  --smt_preprocessing                     true
% 3.54/0.98  --smt_ac_axioms                         fast
% 3.54/0.98  --preprocessed_out                      false
% 3.54/0.98  --preprocessed_stats                    false
% 3.54/0.98  
% 3.54/0.98  ------ Abstraction refinement Options
% 3.54/0.98  
% 3.54/0.98  --abstr_ref                             []
% 3.54/0.98  --abstr_ref_prep                        false
% 3.54/0.98  --abstr_ref_until_sat                   false
% 3.54/0.98  --abstr_ref_sig_restrict                funpre
% 3.54/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.54/0.98  --abstr_ref_under                       []
% 3.54/0.98  
% 3.54/0.98  ------ SAT Options
% 3.54/0.98  
% 3.54/0.98  --sat_mode                              false
% 3.54/0.98  --sat_fm_restart_options                ""
% 3.54/0.98  --sat_gr_def                            false
% 3.54/0.98  --sat_epr_types                         true
% 3.54/0.98  --sat_non_cyclic_types                  false
% 3.54/0.98  --sat_finite_models                     false
% 3.54/0.98  --sat_fm_lemmas                         false
% 3.54/0.98  --sat_fm_prep                           false
% 3.54/0.98  --sat_fm_uc_incr                        true
% 3.54/0.98  --sat_out_model                         small
% 3.54/0.98  --sat_out_clauses                       false
% 3.54/0.98  
% 3.54/0.98  ------ QBF Options
% 3.54/0.98  
% 3.54/0.98  --qbf_mode                              false
% 3.54/0.98  --qbf_elim_univ                         false
% 3.54/0.98  --qbf_dom_inst                          none
% 3.54/0.98  --qbf_dom_pre_inst                      false
% 3.54/0.98  --qbf_sk_in                             false
% 3.54/0.98  --qbf_pred_elim                         true
% 3.54/0.98  --qbf_split                             512
% 3.54/0.98  
% 3.54/0.98  ------ BMC1 Options
% 3.54/0.98  
% 3.54/0.98  --bmc1_incremental                      false
% 3.54/0.98  --bmc1_axioms                           reachable_all
% 3.54/0.98  --bmc1_min_bound                        0
% 3.54/0.98  --bmc1_max_bound                        -1
% 3.54/0.98  --bmc1_max_bound_default                -1
% 3.54/0.98  --bmc1_symbol_reachability              true
% 3.54/0.98  --bmc1_property_lemmas                  false
% 3.54/0.98  --bmc1_k_induction                      false
% 3.54/0.98  --bmc1_non_equiv_states                 false
% 3.54/0.98  --bmc1_deadlock                         false
% 3.54/0.98  --bmc1_ucm                              false
% 3.54/0.98  --bmc1_add_unsat_core                   none
% 3.54/0.98  --bmc1_unsat_core_children              false
% 3.54/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.54/0.98  --bmc1_out_stat                         full
% 3.54/0.98  --bmc1_ground_init                      false
% 3.54/0.98  --bmc1_pre_inst_next_state              false
% 3.54/0.98  --bmc1_pre_inst_state                   false
% 3.54/0.98  --bmc1_pre_inst_reach_state             false
% 3.54/0.98  --bmc1_out_unsat_core                   false
% 3.54/0.98  --bmc1_aig_witness_out                  false
% 3.54/0.98  --bmc1_verbose                          false
% 3.54/0.98  --bmc1_dump_clauses_tptp                false
% 3.54/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.54/0.98  --bmc1_dump_file                        -
% 3.54/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.54/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.54/0.98  --bmc1_ucm_extend_mode                  1
% 3.54/0.98  --bmc1_ucm_init_mode                    2
% 3.54/0.98  --bmc1_ucm_cone_mode                    none
% 3.54/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.54/0.98  --bmc1_ucm_relax_model                  4
% 3.54/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.54/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.54/0.98  --bmc1_ucm_layered_model                none
% 3.54/0.98  --bmc1_ucm_max_lemma_size               10
% 3.54/0.98  
% 3.54/0.98  ------ AIG Options
% 3.54/0.98  
% 3.54/0.98  --aig_mode                              false
% 3.54/0.98  
% 3.54/0.98  ------ Instantiation Options
% 3.54/0.98  
% 3.54/0.98  --instantiation_flag                    true
% 3.54/0.98  --inst_sos_flag                         false
% 3.54/0.98  --inst_sos_phase                        true
% 3.54/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.54/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.54/0.98  --inst_lit_sel_side                     num_symb
% 3.54/0.98  --inst_solver_per_active                1400
% 3.54/0.98  --inst_solver_calls_frac                1.
% 3.54/0.98  --inst_passive_queue_type               priority_queues
% 3.54/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.54/0.98  --inst_passive_queues_freq              [25;2]
% 3.54/0.98  --inst_dismatching                      true
% 3.54/0.98  --inst_eager_unprocessed_to_passive     true
% 3.54/0.98  --inst_prop_sim_given                   true
% 3.54/0.98  --inst_prop_sim_new                     false
% 3.54/0.98  --inst_subs_new                         false
% 3.54/0.98  --inst_eq_res_simp                      false
% 3.54/0.98  --inst_subs_given                       false
% 3.54/0.98  --inst_orphan_elimination               true
% 3.54/0.98  --inst_learning_loop_flag               true
% 3.54/0.98  --inst_learning_start                   3000
% 3.54/0.98  --inst_learning_factor                  2
% 3.54/0.98  --inst_start_prop_sim_after_learn       3
% 3.54/0.98  --inst_sel_renew                        solver
% 3.54/0.98  --inst_lit_activity_flag                true
% 3.54/0.98  --inst_restr_to_given                   false
% 3.54/0.98  --inst_activity_threshold               500
% 3.54/0.98  --inst_out_proof                        true
% 3.54/0.98  
% 3.54/0.98  ------ Resolution Options
% 3.54/0.98  
% 3.54/0.98  --resolution_flag                       true
% 3.54/0.98  --res_lit_sel                           adaptive
% 3.54/0.98  --res_lit_sel_side                      none
% 3.54/0.98  --res_ordering                          kbo
% 3.54/0.98  --res_to_prop_solver                    active
% 3.54/0.98  --res_prop_simpl_new                    false
% 3.54/0.98  --res_prop_simpl_given                  true
% 3.54/0.98  --res_passive_queue_type                priority_queues
% 3.54/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.54/0.98  --res_passive_queues_freq               [15;5]
% 3.54/0.98  --res_forward_subs                      full
% 3.54/0.98  --res_backward_subs                     full
% 3.54/0.98  --res_forward_subs_resolution           true
% 3.54/0.98  --res_backward_subs_resolution          true
% 3.54/0.98  --res_orphan_elimination                true
% 3.54/0.98  --res_time_limit                        2.
% 3.54/0.98  --res_out_proof                         true
% 3.54/0.98  
% 3.54/0.98  ------ Superposition Options
% 3.54/0.98  
% 3.54/0.98  --superposition_flag                    true
% 3.54/0.98  --sup_passive_queue_type                priority_queues
% 3.54/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.54/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.54/0.98  --demod_completeness_check              fast
% 3.54/0.98  --demod_use_ground                      true
% 3.54/0.98  --sup_to_prop_solver                    passive
% 3.54/0.98  --sup_prop_simpl_new                    true
% 3.54/0.98  --sup_prop_simpl_given                  true
% 3.54/0.98  --sup_fun_splitting                     false
% 3.54/0.98  --sup_smt_interval                      50000
% 3.54/0.98  
% 3.54/0.98  ------ Superposition Simplification Setup
% 3.54/0.98  
% 3.54/0.98  --sup_indices_passive                   []
% 3.54/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.54/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.54/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.54/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.54/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.54/0.98  --sup_full_bw                           [BwDemod]
% 3.54/0.98  --sup_immed_triv                        [TrivRules]
% 3.54/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.54/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.54/0.98  --sup_immed_bw_main                     []
% 3.54/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.54/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.54/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.54/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.54/0.98  
% 3.54/0.98  ------ Combination Options
% 3.54/0.98  
% 3.54/0.98  --comb_res_mult                         3
% 3.54/0.98  --comb_sup_mult                         2
% 3.54/0.98  --comb_inst_mult                        10
% 3.54/0.98  
% 3.54/0.98  ------ Debug Options
% 3.54/0.98  
% 3.54/0.98  --dbg_backtrace                         false
% 3.54/0.98  --dbg_dump_prop_clauses                 false
% 3.54/0.98  --dbg_dump_prop_clauses_file            -
% 3.54/0.98  --dbg_out_stat                          false
% 3.54/0.98  ------ Parsing...
% 3.54/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.54/0.98  
% 3.54/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 3.54/0.98  
% 3.54/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.54/0.98  
% 3.54/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.54/0.98  ------ Proving...
% 3.54/0.98  ------ Problem Properties 
% 3.54/0.98  
% 3.54/0.98  
% 3.54/0.98  clauses                                 34
% 3.54/0.98  conjectures                             5
% 3.54/0.98  EPR                                     4
% 3.54/0.98  Horn                                    30
% 3.54/0.98  unary                                   11
% 3.54/0.98  binary                                  5
% 3.54/0.98  lits                                    96
% 3.54/0.98  lits eq                                 23
% 3.54/0.98  fd_pure                                 0
% 3.54/0.98  fd_pseudo                               0
% 3.54/0.98  fd_cond                                 5
% 3.54/0.98  fd_pseudo_cond                          2
% 3.54/0.98  AC symbols                              0
% 3.54/0.98  
% 3.54/0.98  ------ Schedule dynamic 5 is on 
% 3.54/0.98  
% 3.54/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.54/0.98  
% 3.54/0.98  
% 3.54/0.98  ------ 
% 3.54/0.98  Current options:
% 3.54/0.98  ------ 
% 3.54/0.98  
% 3.54/0.98  ------ Input Options
% 3.54/0.98  
% 3.54/0.98  --out_options                           all
% 3.54/0.98  --tptp_safe_out                         true
% 3.54/0.98  --problem_path                          ""
% 3.54/0.98  --include_path                          ""
% 3.54/0.98  --clausifier                            res/vclausify_rel
% 3.54/0.98  --clausifier_options                    --mode clausify
% 3.54/0.98  --stdin                                 false
% 3.54/0.98  --stats_out                             all
% 3.54/0.98  
% 3.54/0.98  ------ General Options
% 3.54/0.98  
% 3.54/0.98  --fof                                   false
% 3.54/0.98  --time_out_real                         305.
% 3.54/0.98  --time_out_virtual                      -1.
% 3.54/0.98  --symbol_type_check                     false
% 3.54/0.98  --clausify_out                          false
% 3.54/0.98  --sig_cnt_out                           false
% 3.54/0.98  --trig_cnt_out                          false
% 3.54/0.98  --trig_cnt_out_tolerance                1.
% 3.54/0.98  --trig_cnt_out_sk_spl                   false
% 3.54/0.98  --abstr_cl_out                          false
% 3.54/0.98  
% 3.54/0.98  ------ Global Options
% 3.54/0.98  
% 3.54/0.98  --schedule                              default
% 3.54/0.98  --add_important_lit                     false
% 3.54/0.98  --prop_solver_per_cl                    1000
% 3.54/0.98  --min_unsat_core                        false
% 3.54/0.98  --soft_assumptions                      false
% 3.54/0.98  --soft_lemma_size                       3
% 3.54/0.98  --prop_impl_unit_size                   0
% 3.54/0.98  --prop_impl_unit                        []
% 3.54/0.98  --share_sel_clauses                     true
% 3.54/0.98  --reset_solvers                         false
% 3.54/0.98  --bc_imp_inh                            [conj_cone]
% 3.54/0.98  --conj_cone_tolerance                   3.
% 3.54/0.98  --extra_neg_conj                        none
% 3.54/0.98  --large_theory_mode                     true
% 3.54/0.98  --prolific_symb_bound                   200
% 3.54/0.98  --lt_threshold                          2000
% 3.54/0.98  --clause_weak_htbl                      true
% 3.54/0.98  --gc_record_bc_elim                     false
% 3.54/0.98  
% 3.54/0.98  ------ Preprocessing Options
% 3.54/0.98  
% 3.54/0.98  --preprocessing_flag                    true
% 3.54/0.98  --time_out_prep_mult                    0.1
% 3.54/0.98  --splitting_mode                        input
% 3.54/0.98  --splitting_grd                         true
% 3.54/0.98  --splitting_cvd                         false
% 3.54/0.98  --splitting_cvd_svl                     false
% 3.54/0.98  --splitting_nvd                         32
% 3.54/0.98  --sub_typing                            true
% 3.54/0.98  --prep_gs_sim                           true
% 3.54/0.98  --prep_unflatten                        true
% 3.54/0.98  --prep_res_sim                          true
% 3.54/0.98  --prep_upred                            true
% 3.54/0.98  --prep_sem_filter                       exhaustive
% 3.54/0.98  --prep_sem_filter_out                   false
% 3.54/0.98  --pred_elim                             true
% 3.54/0.98  --res_sim_input                         true
% 3.54/0.98  --eq_ax_congr_red                       true
% 3.54/0.98  --pure_diseq_elim                       true
% 3.54/0.98  --brand_transform                       false
% 3.54/0.98  --non_eq_to_eq                          false
% 3.54/0.98  --prep_def_merge                        true
% 3.54/0.98  --prep_def_merge_prop_impl              false
% 3.54/0.98  --prep_def_merge_mbd                    true
% 3.54/0.98  --prep_def_merge_tr_red                 false
% 3.54/0.98  --prep_def_merge_tr_cl                  false
% 3.54/0.98  --smt_preprocessing                     true
% 3.54/0.98  --smt_ac_axioms                         fast
% 3.54/0.98  --preprocessed_out                      false
% 3.54/0.98  --preprocessed_stats                    false
% 3.54/0.98  
% 3.54/0.98  ------ Abstraction refinement Options
% 3.54/0.98  
% 3.54/0.98  --abstr_ref                             []
% 3.54/0.98  --abstr_ref_prep                        false
% 3.54/0.98  --abstr_ref_until_sat                   false
% 3.54/0.98  --abstr_ref_sig_restrict                funpre
% 3.54/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.54/0.98  --abstr_ref_under                       []
% 3.54/0.98  
% 3.54/0.98  ------ SAT Options
% 3.54/0.98  
% 3.54/0.98  --sat_mode                              false
% 3.54/0.98  --sat_fm_restart_options                ""
% 3.54/0.98  --sat_gr_def                            false
% 3.54/0.98  --sat_epr_types                         true
% 3.54/0.98  --sat_non_cyclic_types                  false
% 3.54/0.98  --sat_finite_models                     false
% 3.54/0.98  --sat_fm_lemmas                         false
% 3.54/0.98  --sat_fm_prep                           false
% 3.54/0.98  --sat_fm_uc_incr                        true
% 3.54/0.98  --sat_out_model                         small
% 3.54/0.98  --sat_out_clauses                       false
% 3.54/0.98  
% 3.54/0.98  ------ QBF Options
% 3.54/0.98  
% 3.54/0.98  --qbf_mode                              false
% 3.54/0.98  --qbf_elim_univ                         false
% 3.54/0.98  --qbf_dom_inst                          none
% 3.54/0.98  --qbf_dom_pre_inst                      false
% 3.54/0.98  --qbf_sk_in                             false
% 3.54/0.98  --qbf_pred_elim                         true
% 3.54/0.98  --qbf_split                             512
% 3.54/0.98  
% 3.54/0.98  ------ BMC1 Options
% 3.54/0.98  
% 3.54/0.98  --bmc1_incremental                      false
% 3.54/0.98  --bmc1_axioms                           reachable_all
% 3.54/0.98  --bmc1_min_bound                        0
% 3.54/0.98  --bmc1_max_bound                        -1
% 3.54/0.98  --bmc1_max_bound_default                -1
% 3.54/0.98  --bmc1_symbol_reachability              true
% 3.54/0.98  --bmc1_property_lemmas                  false
% 3.54/0.98  --bmc1_k_induction                      false
% 3.54/0.98  --bmc1_non_equiv_states                 false
% 3.54/0.98  --bmc1_deadlock                         false
% 3.54/0.98  --bmc1_ucm                              false
% 3.54/0.98  --bmc1_add_unsat_core                   none
% 3.54/0.98  --bmc1_unsat_core_children              false
% 3.54/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.54/0.98  --bmc1_out_stat                         full
% 3.54/0.98  --bmc1_ground_init                      false
% 3.54/0.98  --bmc1_pre_inst_next_state              false
% 3.54/0.98  --bmc1_pre_inst_state                   false
% 3.54/0.98  --bmc1_pre_inst_reach_state             false
% 3.54/0.98  --bmc1_out_unsat_core                   false
% 3.54/0.98  --bmc1_aig_witness_out                  false
% 3.54/0.98  --bmc1_verbose                          false
% 3.54/0.98  --bmc1_dump_clauses_tptp                false
% 3.54/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.54/0.98  --bmc1_dump_file                        -
% 3.54/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.54/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.54/0.98  --bmc1_ucm_extend_mode                  1
% 3.54/0.98  --bmc1_ucm_init_mode                    2
% 3.54/0.98  --bmc1_ucm_cone_mode                    none
% 3.54/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.54/0.98  --bmc1_ucm_relax_model                  4
% 3.54/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.54/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.54/0.98  --bmc1_ucm_layered_model                none
% 3.54/0.98  --bmc1_ucm_max_lemma_size               10
% 3.54/0.98  
% 3.54/0.98  ------ AIG Options
% 3.54/0.98  
% 3.54/0.98  --aig_mode                              false
% 3.54/0.98  
% 3.54/0.98  ------ Instantiation Options
% 3.54/0.98  
% 3.54/0.98  --instantiation_flag                    true
% 3.54/0.98  --inst_sos_flag                         false
% 3.54/0.98  --inst_sos_phase                        true
% 3.54/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.54/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.54/0.98  --inst_lit_sel_side                     none
% 3.54/0.98  --inst_solver_per_active                1400
% 3.54/0.98  --inst_solver_calls_frac                1.
% 3.54/0.98  --inst_passive_queue_type               priority_queues
% 3.54/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.54/0.98  --inst_passive_queues_freq              [25;2]
% 3.54/0.98  --inst_dismatching                      true
% 3.54/0.98  --inst_eager_unprocessed_to_passive     true
% 3.54/0.98  --inst_prop_sim_given                   true
% 3.54/0.98  --inst_prop_sim_new                     false
% 3.54/0.98  --inst_subs_new                         false
% 3.54/0.98  --inst_eq_res_simp                      false
% 3.54/0.98  --inst_subs_given                       false
% 3.54/0.98  --inst_orphan_elimination               true
% 3.54/0.98  --inst_learning_loop_flag               true
% 3.54/0.98  --inst_learning_start                   3000
% 3.54/0.98  --inst_learning_factor                  2
% 3.54/0.98  --inst_start_prop_sim_after_learn       3
% 3.54/0.98  --inst_sel_renew                        solver
% 3.54/0.98  --inst_lit_activity_flag                true
% 3.54/0.98  --inst_restr_to_given                   false
% 3.54/0.98  --inst_activity_threshold               500
% 3.54/0.98  --inst_out_proof                        true
% 3.54/0.98  
% 3.54/0.98  ------ Resolution Options
% 3.54/0.98  
% 3.54/0.98  --resolution_flag                       false
% 3.54/0.98  --res_lit_sel                           adaptive
% 3.54/0.98  --res_lit_sel_side                      none
% 3.54/0.98  --res_ordering                          kbo
% 3.54/0.98  --res_to_prop_solver                    active
% 3.54/0.98  --res_prop_simpl_new                    false
% 3.54/0.98  --res_prop_simpl_given                  true
% 3.54/0.98  --res_passive_queue_type                priority_queues
% 3.54/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.54/0.98  --res_passive_queues_freq               [15;5]
% 3.54/0.98  --res_forward_subs                      full
% 3.54/0.98  --res_backward_subs                     full
% 3.54/0.98  --res_forward_subs_resolution           true
% 3.54/0.98  --res_backward_subs_resolution          true
% 3.54/0.98  --res_orphan_elimination                true
% 3.54/0.98  --res_time_limit                        2.
% 3.54/0.98  --res_out_proof                         true
% 3.54/0.98  
% 3.54/0.98  ------ Superposition Options
% 3.54/0.98  
% 3.54/0.98  --superposition_flag                    true
% 3.54/0.98  --sup_passive_queue_type                priority_queues
% 3.54/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.54/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.54/0.98  --demod_completeness_check              fast
% 3.54/0.98  --demod_use_ground                      true
% 3.54/0.98  --sup_to_prop_solver                    passive
% 3.54/0.98  --sup_prop_simpl_new                    true
% 3.54/0.98  --sup_prop_simpl_given                  true
% 3.54/0.98  --sup_fun_splitting                     false
% 3.54/0.98  --sup_smt_interval                      50000
% 3.54/0.98  
% 3.54/0.98  ------ Superposition Simplification Setup
% 3.54/0.98  
% 3.54/0.98  --sup_indices_passive                   []
% 3.54/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.54/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.54/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.54/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.54/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.54/0.98  --sup_full_bw                           [BwDemod]
% 3.54/0.98  --sup_immed_triv                        [TrivRules]
% 3.54/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.54/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.54/0.98  --sup_immed_bw_main                     []
% 3.54/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.54/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.54/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.54/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.54/0.98  
% 3.54/0.98  ------ Combination Options
% 3.54/0.98  
% 3.54/0.98  --comb_res_mult                         3
% 3.54/0.98  --comb_sup_mult                         2
% 3.54/0.98  --comb_inst_mult                        10
% 3.54/0.98  
% 3.54/0.98  ------ Debug Options
% 3.54/0.98  
% 3.54/0.98  --dbg_backtrace                         false
% 3.54/0.98  --dbg_dump_prop_clauses                 false
% 3.54/0.98  --dbg_dump_prop_clauses_file            -
% 3.54/0.98  --dbg_out_stat                          false
% 3.54/0.98  
% 3.54/0.98  
% 3.54/0.98  
% 3.54/0.98  
% 3.54/0.98  ------ Proving...
% 3.54/0.98  
% 3.54/0.98  
% 3.54/0.98  % SZS status Theorem for theBenchmark.p
% 3.54/0.98  
% 3.54/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.54/0.98  
% 3.54/0.98  fof(f20,conjecture,(
% 3.54/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f21,negated_conjecture,(
% 3.54/0.98    ~! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))))),
% 3.54/0.98    inference(negated_conjecture,[],[f20])).
% 3.54/0.98  
% 3.54/0.98  fof(f46,plain,(
% 3.54/0.98    ? [X0,X1] : ((~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)))),
% 3.54/0.98    inference(ennf_transformation,[],[f21])).
% 3.54/0.98  
% 3.54/0.98  fof(f47,plain,(
% 3.54/0.98    ? [X0,X1] : ((~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 3.54/0.98    inference(flattening,[],[f46])).
% 3.54/0.98  
% 3.54/0.98  fof(f51,plain,(
% 3.54/0.98    ? [X0,X1] : ((~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ((~r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0)) | ~r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0))) & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) & v3_funct_2(sK1,sK0,sK0) & v1_funct_2(sK1,sK0,sK0) & v1_funct_1(sK1))),
% 3.54/0.98    introduced(choice_axiom,[])).
% 3.54/0.98  
% 3.54/0.98  fof(f52,plain,(
% 3.54/0.98    (~r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0)) | ~r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0))) & m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) & v3_funct_2(sK1,sK0,sK0) & v1_funct_2(sK1,sK0,sK0) & v1_funct_1(sK1)),
% 3.54/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f47,f51])).
% 3.54/0.98  
% 3.54/0.98  fof(f91,plain,(
% 3.54/0.98    m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))),
% 3.54/0.98    inference(cnf_transformation,[],[f52])).
% 3.54/0.98  
% 3.54/0.98  fof(f14,axiom,(
% 3.54/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f36,plain,(
% 3.54/0.98    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(ennf_transformation,[],[f14])).
% 3.54/0.98  
% 3.54/0.98  fof(f37,plain,(
% 3.54/0.98    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(flattening,[],[f36])).
% 3.54/0.98  
% 3.54/0.98  fof(f49,plain,(
% 3.54/0.98    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(nnf_transformation,[],[f37])).
% 3.54/0.98  
% 3.54/0.98  fof(f73,plain,(
% 3.54/0.98    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.54/0.98    inference(cnf_transformation,[],[f49])).
% 3.54/0.98  
% 3.54/0.98  fof(f10,axiom,(
% 3.54/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f31,plain,(
% 3.54/0.98    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(ennf_transformation,[],[f10])).
% 3.54/0.98  
% 3.54/0.98  fof(f66,plain,(
% 3.54/0.98    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.54/0.98    inference(cnf_transformation,[],[f31])).
% 3.54/0.98  
% 3.54/0.98  fof(f89,plain,(
% 3.54/0.98    v1_funct_2(sK1,sK0,sK0)),
% 3.54/0.98    inference(cnf_transformation,[],[f52])).
% 3.54/0.98  
% 3.54/0.98  fof(f18,axiom,(
% 3.54/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => k2_funct_1(X1) = k2_funct_2(X0,X1))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f44,plain,(
% 3.54/0.98    ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 3.54/0.98    inference(ennf_transformation,[],[f18])).
% 3.54/0.98  
% 3.54/0.98  fof(f45,plain,(
% 3.54/0.98    ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 3.54/0.98    inference(flattening,[],[f44])).
% 3.54/0.98  
% 3.54/0.98  fof(f86,plain,(
% 3.54/0.98    ( ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f45])).
% 3.54/0.98  
% 3.54/0.98  fof(f88,plain,(
% 3.54/0.98    v1_funct_1(sK1)),
% 3.54/0.98    inference(cnf_transformation,[],[f52])).
% 3.54/0.98  
% 3.54/0.98  fof(f90,plain,(
% 3.54/0.98    v3_funct_2(sK1,sK0,sK0)),
% 3.54/0.98    inference(cnf_transformation,[],[f52])).
% 3.54/0.98  
% 3.54/0.98  fof(f16,axiom,(
% 3.54/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f40,plain,(
% 3.54/0.98    ! [X0,X1] : ((m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 3.54/0.98    inference(ennf_transformation,[],[f16])).
% 3.54/0.98  
% 3.54/0.98  fof(f41,plain,(
% 3.54/0.98    ! [X0,X1] : ((m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 3.54/0.98    inference(flattening,[],[f40])).
% 3.54/0.98  
% 3.54/0.98  fof(f84,plain,(
% 3.54/0.98    ( ! [X0,X1] : (m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f41])).
% 3.54/0.98  
% 3.54/0.98  fof(f17,axiom,(
% 3.54/0.98    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f42,plain,(
% 3.54/0.98    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.54/0.98    inference(ennf_transformation,[],[f17])).
% 3.54/0.98  
% 3.54/0.98  fof(f43,plain,(
% 3.54/0.98    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.54/0.98    inference(flattening,[],[f42])).
% 3.54/0.98  
% 3.54/0.98  fof(f85,plain,(
% 3.54/0.98    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f43])).
% 3.54/0.98  
% 3.54/0.98  fof(f81,plain,(
% 3.54/0.98    ( ! [X0,X1] : (v1_funct_1(k2_funct_2(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f41])).
% 3.54/0.98  
% 3.54/0.98  fof(f7,axiom,(
% 3.54/0.98    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k6_relat_1(k2_relat_1(X0)) = k5_relat_1(k2_funct_1(X0),X0) & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)))))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f27,plain,(
% 3.54/0.98    ! [X0] : (((k6_relat_1(k2_relat_1(X0)) = k5_relat_1(k2_funct_1(X0),X0) & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.54/0.98    inference(ennf_transformation,[],[f7])).
% 3.54/0.98  
% 3.54/0.98  fof(f28,plain,(
% 3.54/0.98    ! [X0] : ((k6_relat_1(k2_relat_1(X0)) = k5_relat_1(k2_funct_1(X0),X0) & k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.54/0.98    inference(flattening,[],[f27])).
% 3.54/0.98  
% 3.54/0.98  fof(f62,plain,(
% 3.54/0.98    ( ! [X0] : (k6_relat_1(k1_relat_1(X0)) = k5_relat_1(X0,k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f28])).
% 3.54/0.98  
% 3.54/0.98  fof(f19,axiom,(
% 3.54/0.98    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f87,plain,(
% 3.54/0.98    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f19])).
% 3.54/0.98  
% 3.54/0.98  fof(f99,plain,(
% 3.54/0.98    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.54/0.98    inference(definition_unfolding,[],[f62,f87])).
% 3.54/0.98  
% 3.54/0.98  fof(f8,axiom,(
% 3.54/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f29,plain,(
% 3.54/0.98    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(ennf_transformation,[],[f8])).
% 3.54/0.98  
% 3.54/0.98  fof(f64,plain,(
% 3.54/0.98    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.54/0.98    inference(cnf_transformation,[],[f29])).
% 3.54/0.98  
% 3.54/0.98  fof(f13,axiom,(
% 3.54/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v3_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2))))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f34,plain,(
% 3.54/0.98    ! [X0,X1,X2] : (((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | (~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(ennf_transformation,[],[f13])).
% 3.54/0.98  
% 3.54/0.98  fof(f35,plain,(
% 3.54/0.98    ! [X0,X1,X2] : ((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(flattening,[],[f34])).
% 3.54/0.98  
% 3.54/0.98  fof(f71,plain,(
% 3.54/0.98    ( ! [X2,X0,X1] : (v2_funct_1(X2) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.54/0.98    inference(cnf_transformation,[],[f35])).
% 3.54/0.98  
% 3.54/0.98  fof(f63,plain,(
% 3.54/0.98    ( ! [X0] : (k6_relat_1(k2_relat_1(X0)) = k5_relat_1(k2_funct_1(X0),X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f28])).
% 3.54/0.98  
% 3.54/0.98  fof(f98,plain,(
% 3.54/0.98    ( ! [X0] : (k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.54/0.98    inference(definition_unfolding,[],[f63,f87])).
% 3.54/0.98  
% 3.54/0.98  fof(f72,plain,(
% 3.54/0.98    ( ! [X2,X0,X1] : (v2_funct_2(X2,X1) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.54/0.98    inference(cnf_transformation,[],[f35])).
% 3.54/0.98  
% 3.54/0.98  fof(f9,axiom,(
% 3.54/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f23,plain,(
% 3.54/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 3.54/0.98    inference(pure_predicate_removal,[],[f9])).
% 3.54/0.98  
% 3.54/0.98  fof(f30,plain,(
% 3.54/0.98    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(ennf_transformation,[],[f23])).
% 3.54/0.98  
% 3.54/0.98  fof(f65,plain,(
% 3.54/0.98    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.54/0.98    inference(cnf_transformation,[],[f30])).
% 3.54/0.98  
% 3.54/0.98  fof(f15,axiom,(
% 3.54/0.98    ! [X0,X1] : ((v5_relat_1(X1,X0) & v1_relat_1(X1)) => (v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f38,plain,(
% 3.54/0.98    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | (~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 3.54/0.98    inference(ennf_transformation,[],[f15])).
% 3.54/0.98  
% 3.54/0.98  fof(f39,plain,(
% 3.54/0.98    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.54/0.98    inference(flattening,[],[f38])).
% 3.54/0.98  
% 3.54/0.98  fof(f50,plain,(
% 3.54/0.98    ! [X0,X1] : (((v2_funct_2(X1,X0) | k2_relat_1(X1) != X0) & (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0))) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.54/0.98    inference(nnf_transformation,[],[f39])).
% 3.54/0.98  
% 3.54/0.98  fof(f79,plain,(
% 3.54/0.98    ( ! [X0,X1] : (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f50])).
% 3.54/0.98  
% 3.54/0.98  fof(f92,plain,(
% 3.54/0.98    ~r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0)) | ~r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0))),
% 3.54/0.98    inference(cnf_transformation,[],[f52])).
% 3.54/0.98  
% 3.54/0.98  fof(f12,axiom,(
% 3.54/0.98    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f69,plain,(
% 3.54/0.98    ( ! [X0] : (m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 3.54/0.98    inference(cnf_transformation,[],[f12])).
% 3.54/0.98  
% 3.54/0.98  fof(f100,plain,(
% 3.54/0.98    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 3.54/0.98    inference(definition_unfolding,[],[f69,f87])).
% 3.54/0.98  
% 3.54/0.98  fof(f11,axiom,(
% 3.54/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => (r2_relset_1(X0,X1,X2,X3) <=> X2 = X3))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f32,plain,(
% 3.54/0.98    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 3.54/0.98    inference(ennf_transformation,[],[f11])).
% 3.54/0.98  
% 3.54/0.98  fof(f33,plain,(
% 3.54/0.98    ! [X0,X1,X2,X3] : ((r2_relset_1(X0,X1,X2,X3) <=> X2 = X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(flattening,[],[f32])).
% 3.54/0.98  
% 3.54/0.98  fof(f48,plain,(
% 3.54/0.98    ! [X0,X1,X2,X3] : (((r2_relset_1(X0,X1,X2,X3) | X2 != X3) & (X2 = X3 | ~r2_relset_1(X0,X1,X2,X3))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.54/0.98    inference(nnf_transformation,[],[f33])).
% 3.54/0.98  
% 3.54/0.98  fof(f68,plain,(
% 3.54/0.98    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X3) | X2 != X3 | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.54/0.98    inference(cnf_transformation,[],[f48])).
% 3.54/0.98  
% 3.54/0.98  fof(f101,plain,(
% 3.54/0.98    ( ! [X0,X3,X1] : (r2_relset_1(X0,X1,X3,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.54/0.98    inference(equality_resolution,[],[f68])).
% 3.54/0.98  
% 3.54/0.98  fof(f3,axiom,(
% 3.54/0.98    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f25,plain,(
% 3.54/0.98    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 3.54/0.98    inference(ennf_transformation,[],[f3])).
% 3.54/0.98  
% 3.54/0.98  fof(f26,plain,(
% 3.54/0.98    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 3.54/0.98    inference(flattening,[],[f25])).
% 3.54/0.98  
% 3.54/0.98  fof(f56,plain,(
% 3.54/0.98    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f26])).
% 3.54/0.98  
% 3.54/0.98  fof(f5,axiom,(
% 3.54/0.98    k1_xboole_0 = k6_relat_1(k1_xboole_0)),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f59,plain,(
% 3.54/0.98    k1_xboole_0 = k6_relat_1(k1_xboole_0)),
% 3.54/0.98    inference(cnf_transformation,[],[f5])).
% 3.54/0.98  
% 3.54/0.98  fof(f95,plain,(
% 3.54/0.98    k1_xboole_0 = k6_partfun1(k1_xboole_0)),
% 3.54/0.98    inference(definition_unfolding,[],[f59,f87])).
% 3.54/0.98  
% 3.54/0.98  fof(f4,axiom,(
% 3.54/0.98    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f57,plain,(
% 3.54/0.98    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 3.54/0.98    inference(cnf_transformation,[],[f4])).
% 3.54/0.98  
% 3.54/0.98  fof(f94,plain,(
% 3.54/0.98    ( ! [X0] : (k1_relat_1(k6_partfun1(X0)) = X0) )),
% 3.54/0.98    inference(definition_unfolding,[],[f57,f87])).
% 3.54/0.98  
% 3.54/0.98  fof(f1,axiom,(
% 3.54/0.98    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f53,plain,(
% 3.54/0.98    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f1])).
% 3.54/0.98  
% 3.54/0.98  fof(f2,axiom,(
% 3.54/0.98    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 3.54/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.54/0.98  
% 3.54/0.98  fof(f22,plain,(
% 3.54/0.98    ! [X0,X1] : (r1_tarski(X0,X1) => m1_subset_1(X0,k1_zfmisc_1(X1)))),
% 3.54/0.98    inference(unused_predicate_definition_removal,[],[f2])).
% 3.54/0.98  
% 3.54/0.98  fof(f24,plain,(
% 3.54/0.98    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1))),
% 3.54/0.98    inference(ennf_transformation,[],[f22])).
% 3.54/0.98  
% 3.54/0.98  fof(f54,plain,(
% 3.54/0.98    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 3.54/0.98    inference(cnf_transformation,[],[f24])).
% 3.54/0.98  
% 3.54/0.98  cnf(c_35,negated_conjecture,
% 3.54/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) ),
% 3.54/0.98      inference(cnf_transformation,[],[f91]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1709,plain,
% 3.54/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_25,plain,
% 3.54/0.98      ( ~ v1_funct_2(X0,X1,X2)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.54/0.98      | k1_relset_1(X1,X2,X0) = X1
% 3.54/0.98      | k1_xboole_0 = X2 ),
% 3.54/0.98      inference(cnf_transformation,[],[f73]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1717,plain,
% 3.54/0.98      ( k1_relset_1(X0,X1,X2) = X0
% 3.54/0.98      | k1_xboole_0 = X1
% 3.54/0.98      | v1_funct_2(X2,X0,X1) != iProver_top
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_4301,plain,
% 3.54/0.98      ( k1_relset_1(sK0,sK0,sK1) = sK0
% 3.54/0.98      | sK0 = k1_xboole_0
% 3.54/0.98      | v1_funct_2(sK1,sK0,sK0) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1709,c_1717]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_13,plain,
% 3.54/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.54/0.98      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f66]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1726,plain,
% 3.54/0.98      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2856,plain,
% 3.54/0.98      ( k1_relset_1(sK0,sK0,sK1) = k1_relat_1(sK1) ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1709,c_1726]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_4313,plain,
% 3.54/0.98      ( k1_relat_1(sK1) = sK0
% 3.54/0.98      | sK0 = k1_xboole_0
% 3.54/0.98      | v1_funct_2(sK1,sK0,sK0) != iProver_top ),
% 3.54/0.98      inference(demodulation,[status(thm)],[c_4301,c_2856]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_37,negated_conjecture,
% 3.54/0.98      ( v1_funct_2(sK1,sK0,sK0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f89]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_40,plain,
% 3.54/0.98      ( v1_funct_2(sK1,sK0,sK0) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_7641,plain,
% 3.54/0.98      ( sK0 = k1_xboole_0 | k1_relat_1(sK1) = sK0 ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_4313,c_40]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_7642,plain,
% 3.54/0.98      ( k1_relat_1(sK1) = sK0 | sK0 = k1_xboole_0 ),
% 3.54/0.98      inference(renaming,[status(thm)],[c_7641]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_33,plain,
% 3.54/0.98      ( ~ v1_funct_2(X0,X1,X1)
% 3.54/0.98      | ~ v3_funct_2(X0,X1,X1)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.54/0.98      | ~ v1_funct_1(X0)
% 3.54/0.98      | k2_funct_2(X1,X0) = k2_funct_1(X0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f86]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1711,plain,
% 3.54/0.98      ( k2_funct_2(X0,X1) = k2_funct_1(X1)
% 3.54/0.98      | v1_funct_2(X1,X0,X0) != iProver_top
% 3.54/0.98      | v3_funct_2(X1,X0,X0) != iProver_top
% 3.54/0.98      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
% 3.54/0.98      | v1_funct_1(X1) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_33]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_4600,plain,
% 3.54/0.98      ( k2_funct_2(sK0,sK1) = k2_funct_1(sK1)
% 3.54/0.98      | v1_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v3_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1709,c_1711]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_38,negated_conjecture,
% 3.54/0.98      ( v1_funct_1(sK1) ),
% 3.54/0.98      inference(cnf_transformation,[],[f88]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_36,negated_conjecture,
% 3.54/0.98      ( v3_funct_2(sK1,sK0,sK0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f90]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2098,plain,
% 3.54/0.98      ( ~ v1_funct_2(sK1,X0,X0)
% 3.54/0.98      | ~ v3_funct_2(sK1,X0,X0)
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
% 3.54/0.98      | ~ v1_funct_1(sK1)
% 3.54/0.98      | k2_funct_2(X0,sK1) = k2_funct_1(sK1) ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_33]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2242,plain,
% 3.54/0.98      ( ~ v1_funct_2(sK1,sK0,sK0)
% 3.54/0.98      | ~ v3_funct_2(sK1,sK0,sK0)
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.54/0.98      | ~ v1_funct_1(sK1)
% 3.54/0.98      | k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_2098]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_4878,plain,
% 3.54/0.98      ( k2_funct_2(sK0,sK1) = k2_funct_1(sK1) ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_4600,c_38,c_37,c_36,c_35,c_2242]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_28,plain,
% 3.54/0.98      ( ~ v1_funct_2(X0,X1,X1)
% 3.54/0.98      | ~ v3_funct_2(X0,X1,X1)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.54/0.98      | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.54/0.98      | ~ v1_funct_1(X0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f84]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1716,plain,
% 3.54/0.98      ( v1_funct_2(X0,X1,X1) != iProver_top
% 3.54/0.98      | v3_funct_2(X0,X1,X1) != iProver_top
% 3.54/0.98      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) != iProver_top
% 3.54/0.98      | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) = iProver_top
% 3.54/0.98      | v1_funct_1(X0) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_5255,plain,
% 3.54/0.98      ( v1_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v3_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | m1_subset_1(k2_funct_1(sK1),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top
% 3.54/0.98      | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_4878,c_1716]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_39,plain,
% 3.54/0.98      ( v1_funct_1(sK1) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_41,plain,
% 3.54/0.98      ( v3_funct_2(sK1,sK0,sK0) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_36]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_42,plain,
% 3.54/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_6295,plain,
% 3.54/0.98      ( m1_subset_1(k2_funct_1(sK1),k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) = iProver_top ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_5255,c_39,c_40,c_41,c_42]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_32,plain,
% 3.54/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.54/0.98      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.54/0.98      | ~ v1_funct_1(X0)
% 3.54/0.98      | ~ v1_funct_1(X3)
% 3.54/0.98      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f85]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1712,plain,
% 3.54/0.98      ( k1_partfun1(X0,X1,X2,X3,X4,X5) = k5_relat_1(X4,X5)
% 3.54/0.98      | m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) != iProver_top
% 3.54/0.98      | m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.54/0.98      | v1_funct_1(X5) != iProver_top
% 3.54/0.98      | v1_funct_1(X4) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_32]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_6312,plain,
% 3.54/0.98      ( k1_partfun1(X0,X1,sK0,sK0,X2,k2_funct_1(sK1)) = k5_relat_1(X2,k2_funct_1(sK1))
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.54/0.98      | v1_funct_1(X2) != iProver_top
% 3.54/0.98      | v1_funct_1(k2_funct_1(sK1)) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_6295,c_1712]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_31,plain,
% 3.54/0.98      ( ~ v1_funct_2(X0,X1,X1)
% 3.54/0.98      | ~ v3_funct_2(X0,X1,X1)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.54/0.98      | ~ v1_funct_1(X0)
% 3.54/0.98      | v1_funct_1(k2_funct_2(X1,X0)) ),
% 3.54/0.98      inference(cnf_transformation,[],[f81]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1713,plain,
% 3.54/0.98      ( v1_funct_2(X0,X1,X1) != iProver_top
% 3.54/0.98      | v3_funct_2(X0,X1,X1) != iProver_top
% 3.54/0.98      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) != iProver_top
% 3.54/0.98      | v1_funct_1(X0) != iProver_top
% 3.54/0.98      | v1_funct_1(k2_funct_2(X1,X0)) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_31]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_4053,plain,
% 3.54/0.98      ( v1_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v3_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v1_funct_1(k2_funct_2(sK0,sK1)) = iProver_top
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1709,c_1713]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2083,plain,
% 3.54/0.98      ( ~ v1_funct_2(sK1,X0,X0)
% 3.54/0.98      | ~ v3_funct_2(sK1,X0,X0)
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
% 3.54/0.98      | v1_funct_1(k2_funct_2(X0,sK1))
% 3.54/0.98      | ~ v1_funct_1(sK1) ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_31]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2234,plain,
% 3.54/0.98      ( ~ v1_funct_2(sK1,sK0,sK0)
% 3.54/0.98      | ~ v3_funct_2(sK1,sK0,sK0)
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.54/0.98      | v1_funct_1(k2_funct_2(sK0,sK1))
% 3.54/0.98      | ~ v1_funct_1(sK1) ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_2083]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2235,plain,
% 3.54/0.98      ( v1_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v3_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.54/0.98      | v1_funct_1(k2_funct_2(sK0,sK1)) = iProver_top
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_2234]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_4730,plain,
% 3.54/0.98      ( v1_funct_1(k2_funct_2(sK0,sK1)) = iProver_top ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_4053,c_39,c_40,c_41,c_42,c_2235]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_4881,plain,
% 3.54/0.98      ( v1_funct_1(k2_funct_1(sK1)) = iProver_top ),
% 3.54/0.98      inference(demodulation,[status(thm)],[c_4878,c_4730]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10032,plain,
% 3.54/0.98      ( v1_funct_1(X2) != iProver_top
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.54/0.98      | k1_partfun1(X0,X1,sK0,sK0,X2,k2_funct_1(sK1)) = k5_relat_1(X2,k2_funct_1(sK1)) ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_6312,c_4881]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10033,plain,
% 3.54/0.98      ( k1_partfun1(X0,X1,sK0,sK0,X2,k2_funct_1(sK1)) = k5_relat_1(X2,k2_funct_1(sK1))
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.54/0.98      | v1_funct_1(X2) != iProver_top ),
% 3.54/0.98      inference(renaming,[status(thm)],[c_10032]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10043,plain,
% 3.54/0.98      ( k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)) = k5_relat_1(sK1,k2_funct_1(sK1))
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1709,c_10033]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1706,plain,
% 3.54/0.98      ( v1_funct_1(sK1) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_38]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10,plain,
% 3.54/0.98      ( ~ v1_funct_1(X0)
% 3.54/0.98      | ~ v2_funct_1(X0)
% 3.54/0.98      | ~ v1_relat_1(X0)
% 3.54/0.98      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) ),
% 3.54/0.98      inference(cnf_transformation,[],[f99]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1728,plain,
% 3.54/0.98      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0))
% 3.54/0.98      | v1_funct_1(X0) != iProver_top
% 3.54/0.98      | v2_funct_1(X0) != iProver_top
% 3.54/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3658,plain,
% 3.54/0.98      ( k5_relat_1(sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1))
% 3.54/0.98      | v2_funct_1(sK1) != iProver_top
% 3.54/0.98      | v1_relat_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1706,c_1728]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_11,plain,
% 3.54/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.54/0.98      | v1_relat_1(X0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f64]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2000,plain,
% 3.54/0.98      ( ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.54/0.98      | v1_relat_1(sK1) ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_11]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2019,plain,
% 3.54/0.98      ( ~ v1_funct_1(sK1)
% 3.54/0.98      | ~ v2_funct_1(sK1)
% 3.54/0.98      | ~ v1_relat_1(sK1)
% 3.54/0.98      | k5_relat_1(sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1)) ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_10]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_18,plain,
% 3.54/0.98      ( ~ v3_funct_2(X0,X1,X2)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.54/0.98      | ~ v1_funct_1(X0)
% 3.54/0.98      | v2_funct_1(X0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f71]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2054,plain,
% 3.54/0.98      ( ~ v3_funct_2(sK1,X0,X1)
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.54/0.98      | ~ v1_funct_1(sK1)
% 3.54/0.98      | v2_funct_1(sK1) ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_18]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2182,plain,
% 3.54/0.98      ( ~ v3_funct_2(sK1,sK0,sK0)
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.54/0.98      | ~ v1_funct_1(sK1)
% 3.54/0.98      | v2_funct_1(sK1) ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_2054]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3661,plain,
% 3.54/0.98      ( k5_relat_1(sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1)) ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_3658,c_38,c_36,c_35,c_2000,c_2019,c_2182]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10056,plain,
% 3.54/0.98      ( k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1))
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(light_normalisation,[status(thm)],[c_10043,c_3661]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10087,plain,
% 3.54/0.98      ( k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)) = k6_partfun1(k1_relat_1(sK1)) ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_10056,c_39]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_5529,plain,
% 3.54/0.98      ( k1_partfun1(X0,X1,sK0,sK0,X2,sK1) = k5_relat_1(X2,sK1)
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.54/0.98      | v1_funct_1(X2) != iProver_top
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1709,c_1712]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_5644,plain,
% 3.54/0.98      ( v1_funct_1(X2) != iProver_top
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.54/0.98      | k1_partfun1(X0,X1,sK0,sK0,X2,sK1) = k5_relat_1(X2,sK1) ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_5529,c_39]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_5645,plain,
% 3.54/0.98      ( k1_partfun1(X0,X1,sK0,sK0,X2,sK1) = k5_relat_1(X2,sK1)
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 3.54/0.98      | v1_funct_1(X2) != iProver_top ),
% 3.54/0.98      inference(renaming,[status(thm)],[c_5644]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_5654,plain,
% 3.54/0.98      ( k1_partfun1(X0,X0,sK0,sK0,k2_funct_2(X0,X1),sK1) = k5_relat_1(k2_funct_2(X0,X1),sK1)
% 3.54/0.98      | v1_funct_2(X1,X0,X0) != iProver_top
% 3.54/0.98      | v3_funct_2(X1,X0,X0) != iProver_top
% 3.54/0.98      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
% 3.54/0.98      | v1_funct_1(X1) != iProver_top
% 3.54/0.98      | v1_funct_1(k2_funct_2(X0,X1)) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1716,c_5645]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_7215,plain,
% 3.54/0.98      ( k1_partfun1(X0,X0,sK0,sK0,k2_funct_2(X0,X1),sK1) = k5_relat_1(k2_funct_2(X0,X1),sK1)
% 3.54/0.98      | v1_funct_2(X1,X0,X0) != iProver_top
% 3.54/0.98      | v3_funct_2(X1,X0,X0) != iProver_top
% 3.54/0.98      | m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) != iProver_top
% 3.54/0.98      | v1_funct_1(X1) != iProver_top ),
% 3.54/0.98      inference(forward_subsumption_resolution,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_5654,c_1713]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_7221,plain,
% 3.54/0.98      ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1) = k5_relat_1(k2_funct_2(sK0,sK1),sK1)
% 3.54/0.98      | v1_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v3_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1709,c_7215]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_9,plain,
% 3.54/0.98      ( ~ v1_funct_1(X0)
% 3.54/0.98      | ~ v2_funct_1(X0)
% 3.54/0.98      | ~ v1_relat_1(X0)
% 3.54/0.98      | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) ),
% 3.54/0.98      inference(cnf_transformation,[],[f98]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1729,plain,
% 3.54/0.98      ( k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0))
% 3.54/0.98      | v1_funct_1(X0) != iProver_top
% 3.54/0.98      | v2_funct_1(X0) != iProver_top
% 3.54/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3793,plain,
% 3.54/0.98      ( k5_relat_1(k2_funct_1(sK1),sK1) = k6_partfun1(k2_relat_1(sK1))
% 3.54/0.98      | v2_funct_1(sK1) != iProver_top
% 3.54/0.98      | v1_relat_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1706,c_1729]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_17,plain,
% 3.54/0.98      ( ~ v3_funct_2(X0,X1,X2)
% 3.54/0.98      | v2_funct_2(X0,X2)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.54/0.98      | ~ v1_funct_1(X0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f72]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_12,plain,
% 3.54/0.98      ( v5_relat_1(X0,X1)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 3.54/0.98      inference(cnf_transformation,[],[f65]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_27,plain,
% 3.54/0.98      ( ~ v2_funct_2(X0,X1)
% 3.54/0.98      | ~ v5_relat_1(X0,X1)
% 3.54/0.98      | ~ v1_relat_1(X0)
% 3.54/0.98      | k2_relat_1(X0) = X1 ),
% 3.54/0.98      inference(cnf_transformation,[],[f79]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_427,plain,
% 3.54/0.98      ( ~ v2_funct_2(X0,X1)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.54/0.98      | ~ v1_relat_1(X0)
% 3.54/0.98      | k2_relat_1(X0) = X1 ),
% 3.54/0.98      inference(resolution,[status(thm)],[c_12,c_27]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_439,plain,
% 3.54/0.98      ( ~ v2_funct_2(X0,X1)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.54/0.98      | k2_relat_1(X0) = X1 ),
% 3.54/0.98      inference(forward_subsumption_resolution,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_427,c_11]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_470,plain,
% 3.54/0.98      ( ~ v3_funct_2(X0,X1,X2)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.54/0.98      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.54/0.98      | ~ v1_funct_1(X0)
% 3.54/0.98      | X3 != X0
% 3.54/0.98      | X5 != X2
% 3.54/0.98      | k2_relat_1(X3) = X5 ),
% 3.54/0.98      inference(resolution_lifted,[status(thm)],[c_17,c_439]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_471,plain,
% 3.54/0.98      ( ~ v3_funct_2(X0,X1,X2)
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.54/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
% 3.54/0.98      | ~ v1_funct_1(X0)
% 3.54/0.98      | k2_relat_1(X0) = X2 ),
% 3.54/0.98      inference(unflattening,[status(thm)],[c_470]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1703,plain,
% 3.54/0.98      ( k2_relat_1(X0) = X1
% 3.54/0.98      | v3_funct_2(X0,X2,X1) != iProver_top
% 3.54/0.98      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) != iProver_top
% 3.54/0.98      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) != iProver_top
% 3.54/0.98      | v1_funct_1(X0) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_471]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2730,plain,
% 3.54/0.98      ( k2_relat_1(sK1) = sK0
% 3.54/0.98      | v3_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,sK0))) != iProver_top
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1709,c_1703]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2088,plain,
% 3.54/0.98      ( ~ v3_funct_2(sK1,X0,X1)
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.54/0.98      | ~ v1_funct_1(sK1)
% 3.54/0.98      | k2_relat_1(sK1) = X1 ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_471]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2237,plain,
% 3.54/0.98      ( ~ v3_funct_2(sK1,sK0,sK0)
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(X0,sK0)))
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.54/0.98      | ~ v1_funct_1(sK1)
% 3.54/0.98      | k2_relat_1(sK1) = sK0 ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_2088]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2366,plain,
% 3.54/0.98      ( ~ v3_funct_2(sK1,sK0,sK0)
% 3.54/0.98      | ~ m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0)))
% 3.54/0.98      | ~ v1_funct_1(sK1)
% 3.54/0.98      | k2_relat_1(sK1) = sK0 ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_2237]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3069,plain,
% 3.54/0.98      ( k2_relat_1(sK1) = sK0 ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_2730,c_38,c_36,c_35,c_2366]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3794,plain,
% 3.54/0.98      ( k5_relat_1(k2_funct_1(sK1),sK1) = k6_partfun1(sK0)
% 3.54/0.98      | v2_funct_1(sK1) != iProver_top
% 3.54/0.98      | v1_relat_1(sK1) != iProver_top ),
% 3.54/0.98      inference(light_normalisation,[status(thm)],[c_3793,c_3069]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2001,plain,
% 3.54/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.54/0.98      | v1_relat_1(sK1) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_2000]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2183,plain,
% 3.54/0.98      ( v3_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | m1_subset_1(sK1,k1_zfmisc_1(k2_zfmisc_1(sK0,sK0))) != iProver_top
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top
% 3.54/0.98      | v2_funct_1(sK1) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_2182]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3872,plain,
% 3.54/0.98      ( k5_relat_1(k2_funct_1(sK1),sK1) = k6_partfun1(sK0) ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_3794,c_39,c_41,c_42,c_2001,c_2183]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_7244,plain,
% 3.54/0.98      ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1) = k6_partfun1(sK0)
% 3.54/0.98      | v1_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v3_funct_2(sK1,sK0,sK0) != iProver_top
% 3.54/0.98      | v1_funct_1(sK1) != iProver_top ),
% 3.54/0.98      inference(light_normalisation,[status(thm)],[c_7221,c_3872,c_4878]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_6300,plain,
% 3.54/0.98      ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1) = k5_relat_1(k2_funct_1(sK1),sK1)
% 3.54/0.98      | v1_funct_1(k2_funct_1(sK1)) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_6295,c_5645]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_6398,plain,
% 3.54/0.98      ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1) = k6_partfun1(sK0)
% 3.54/0.98      | v1_funct_1(k2_funct_1(sK1)) != iProver_top ),
% 3.54/0.98      inference(light_normalisation,[status(thm)],[c_6300,c_3872]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_7483,plain,
% 3.54/0.98      ( k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1) = k6_partfun1(sK0) ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_7244,c_4881,c_6398]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_34,negated_conjecture,
% 3.54/0.98      ( ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0))
% 3.54/0.98      | ~ r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0)) ),
% 3.54/0.98      inference(cnf_transformation,[],[f92]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1710,plain,
% 3.54/0.98      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_2(sK0,sK1),sK1),k6_partfun1(sK0)) != iProver_top
% 3.54/0.98      | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_2(sK0,sK1)),k6_partfun1(sK0)) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_34]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_4882,plain,
% 3.54/0.98      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,k2_funct_1(sK1),sK1),k6_partfun1(sK0)) != iProver_top
% 3.54/0.98      | r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)),k6_partfun1(sK0)) != iProver_top ),
% 3.54/0.98      inference(demodulation,[status(thm)],[c_4878,c_1710]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_7486,plain,
% 3.54/0.98      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)),k6_partfun1(sK0)) != iProver_top
% 3.54/0.98      | r2_relset_1(sK0,sK0,k6_partfun1(sK0),k6_partfun1(sK0)) != iProver_top ),
% 3.54/0.98      inference(demodulation,[status(thm)],[c_7483,c_4882]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_16,plain,
% 3.54/0.98      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 3.54/0.98      inference(cnf_transformation,[],[f100]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1723,plain,
% 3.54/0.98      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_14,plain,
% 3.54/0.98      ( r2_relset_1(X0,X1,X2,X2)
% 3.54/0.98      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 3.54/0.98      inference(cnf_transformation,[],[f101]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1725,plain,
% 3.54/0.98      ( r2_relset_1(X0,X1,X2,X2) = iProver_top
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2836,plain,
% 3.54/0.98      ( r2_relset_1(X0,X0,k6_partfun1(X0),k6_partfun1(X0)) = iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_1723,c_1725]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_7491,plain,
% 3.54/0.98      ( r2_relset_1(sK0,sK0,k1_partfun1(sK0,sK0,sK0,sK0,sK1,k2_funct_1(sK1)),k6_partfun1(sK0)) != iProver_top ),
% 3.54/0.98      inference(forward_subsumption_resolution,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_7486,c_2836]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10090,plain,
% 3.54/0.98      ( r2_relset_1(sK0,sK0,k6_partfun1(k1_relat_1(sK1)),k6_partfun1(sK0)) != iProver_top ),
% 3.54/0.98      inference(demodulation,[status(thm)],[c_10087,c_7491]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10182,plain,
% 3.54/0.98      ( sK0 = k1_xboole_0
% 3.54/0.98      | r2_relset_1(sK0,sK0,k6_partfun1(sK0),k6_partfun1(sK0)) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_7642,c_10090]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10592,plain,
% 3.54/0.98      ( sK0 = k1_xboole_0 ),
% 3.54/0.98      inference(forward_subsumption_resolution,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_10182,c_2836]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10596,plain,
% 3.54/0.98      ( r2_relset_1(k1_xboole_0,k1_xboole_0,k6_partfun1(k1_relat_1(sK1)),k6_partfun1(k1_xboole_0)) != iProver_top ),
% 3.54/0.98      inference(demodulation,[status(thm)],[c_10592,c_10090]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2,plain,
% 3.54/0.98      ( ~ v1_relat_1(X0)
% 3.54/0.98      | k2_relat_1(X0) != k1_xboole_0
% 3.54/0.98      | k1_xboole_0 = X0 ),
% 3.54/0.98      inference(cnf_transformation,[],[f56]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1733,plain,
% 3.54/0.98      ( k2_relat_1(X0) != k1_xboole_0
% 3.54/0.98      | k1_xboole_0 = X0
% 3.54/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3072,plain,
% 3.54/0.98      ( sK1 = k1_xboole_0
% 3.54/0.98      | sK0 != k1_xboole_0
% 3.54/0.98      | v1_relat_1(sK1) != iProver_top ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_3069,c_1733]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3073,plain,
% 3.54/0.98      ( ~ v1_relat_1(sK1) | sK1 = k1_xboole_0 | sK0 != k1_xboole_0 ),
% 3.54/0.98      inference(predicate_to_equality_rev,[status(thm)],[c_3072]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3075,plain,
% 3.54/0.98      ( sK0 != k1_xboole_0 | sK1 = k1_xboole_0 ),
% 3.54/0.98      inference(global_propositional_subsumption,
% 3.54/0.98                [status(thm)],
% 3.54/0.98                [c_3072,c_35,c_2000,c_3073]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_3076,plain,
% 3.54/0.98      ( sK1 = k1_xboole_0 | sK0 != k1_xboole_0 ),
% 3.54/0.98      inference(renaming,[status(thm)],[c_3075]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10629,plain,
% 3.54/0.98      ( sK1 = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 3.54/0.98      inference(demodulation,[status(thm)],[c_10592,c_3076]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10648,plain,
% 3.54/0.98      ( sK1 = k1_xboole_0 ),
% 3.54/0.98      inference(equality_resolution_simp,[status(thm)],[c_10629]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10793,plain,
% 3.54/0.98      ( r2_relset_1(k1_xboole_0,k1_xboole_0,k6_partfun1(k1_relat_1(k1_xboole_0)),k6_partfun1(k1_xboole_0)) != iProver_top ),
% 3.54/0.98      inference(light_normalisation,[status(thm)],[c_10596,c_10648]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_6,plain,
% 3.54/0.98      ( k6_partfun1(k1_xboole_0) = k1_xboole_0 ),
% 3.54/0.98      inference(cnf_transformation,[],[f95]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_5,plain,
% 3.54/0.98      ( k1_relat_1(k6_partfun1(X0)) = X0 ),
% 3.54/0.98      inference(cnf_transformation,[],[f94]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2132,plain,
% 3.54/0.98      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.54/0.98      inference(superposition,[status(thm)],[c_6,c_5]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_10795,plain,
% 3.54/0.98      ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) != iProver_top ),
% 3.54/0.98      inference(light_normalisation,[status(thm)],[c_10793,c_6,c_2132]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_0,plain,
% 3.54/0.98      ( r1_tarski(k1_xboole_0,X0) ),
% 3.54/0.98      inference(cnf_transformation,[],[f53]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_1,plain,
% 3.54/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 3.54/0.98      inference(cnf_transformation,[],[f54]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_412,plain,
% 3.54/0.98      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | X1 != X2 | k1_xboole_0 != X0 ),
% 3.54/0.98      inference(resolution_lifted,[status(thm)],[c_0,c_1]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_413,plain,
% 3.54/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 3.54/0.98      inference(unflattening,[status(thm)],[c_412]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2004,plain,
% 3.54/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_413]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2007,plain,
% 3.54/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) = iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_2004]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_2009,plain,
% 3.54/0.98      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) = iProver_top ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_2007]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_99,plain,
% 3.54/0.98      ( r2_relset_1(X0,X1,X2,X2) = iProver_top
% 3.54/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.54/0.98      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(c_101,plain,
% 3.54/0.98      ( r2_relset_1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0) = iProver_top
% 3.54/0.98      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,k1_xboole_0))) != iProver_top ),
% 3.54/0.98      inference(instantiation,[status(thm)],[c_99]) ).
% 3.54/0.98  
% 3.54/0.98  cnf(contradiction,plain,
% 3.54/0.98      ( $false ),
% 3.54/0.98      inference(minisat,[status(thm)],[c_10795,c_2009,c_101]) ).
% 3.54/0.98  
% 3.54/0.98  
% 3.54/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.54/0.98  
% 3.54/0.98  ------                               Statistics
% 3.54/0.98  
% 3.54/0.98  ------ General
% 3.54/0.98  
% 3.54/0.98  abstr_ref_over_cycles:                  0
% 3.54/0.98  abstr_ref_under_cycles:                 0
% 3.54/0.98  gc_basic_clause_elim:                   0
% 3.54/0.98  forced_gc_time:                         0
% 3.54/0.98  parsing_time:                           0.011
% 3.54/0.98  unif_index_cands_time:                  0.
% 3.54/0.98  unif_index_add_time:                    0.
% 3.54/0.98  orderings_time:                         0.
% 3.54/0.98  out_proof_time:                         0.014
% 3.54/0.98  total_time:                             0.332
% 3.54/0.98  num_of_symbols:                         54
% 3.54/0.98  num_of_terms:                           9198
% 3.54/0.98  
% 3.54/0.98  ------ Preprocessing
% 3.54/0.98  
% 3.54/0.98  num_of_splits:                          0
% 3.54/0.98  num_of_split_atoms:                     0
% 3.54/0.98  num_of_reused_defs:                     0
% 3.54/0.98  num_eq_ax_congr_red:                    12
% 3.54/0.98  num_of_sem_filtered_clauses:            1
% 3.54/0.98  num_of_subtypes:                        0
% 3.54/0.98  monotx_restored_types:                  0
% 3.54/0.98  sat_num_of_epr_types:                   0
% 3.54/0.98  sat_num_of_non_cyclic_types:            0
% 3.54/0.98  sat_guarded_non_collapsed_types:        0
% 3.54/0.98  num_pure_diseq_elim:                    0
% 3.54/0.98  simp_replaced_by:                       0
% 3.54/0.98  res_preprocessed:                       177
% 3.54/0.98  prep_upred:                             0
% 3.54/0.98  prep_unflattend:                        20
% 3.54/0.98  smt_new_axioms:                         0
% 3.54/0.98  pred_elim_cands:                        7
% 3.54/0.98  pred_elim:                              3
% 3.54/0.98  pred_elim_cl:                           4
% 3.54/0.98  pred_elim_cycles:                       7
% 3.54/0.98  merged_defs:                            0
% 3.54/0.98  merged_defs_ncl:                        0
% 3.54/0.98  bin_hyper_res:                          0
% 3.54/0.98  prep_cycles:                            4
% 3.54/0.98  pred_elim_time:                         0.016
% 3.54/0.98  splitting_time:                         0.
% 3.54/0.98  sem_filter_time:                        0.
% 3.54/0.98  monotx_time:                            0.002
% 3.54/0.98  subtype_inf_time:                       0.
% 3.54/0.98  
% 3.54/0.98  ------ Problem properties
% 3.54/0.98  
% 3.54/0.98  clauses:                                34
% 3.54/0.98  conjectures:                            5
% 3.54/0.98  epr:                                    4
% 3.54/0.98  horn:                                   30
% 3.54/0.98  ground:                                 6
% 3.54/0.98  unary:                                  11
% 3.54/0.98  binary:                                 5
% 3.54/0.98  lits:                                   96
% 3.54/0.98  lits_eq:                                23
% 3.54/0.98  fd_pure:                                0
% 3.54/0.98  fd_pseudo:                              0
% 3.54/0.98  fd_cond:                                5
% 3.54/0.98  fd_pseudo_cond:                         2
% 3.54/0.98  ac_symbols:                             0
% 3.54/0.98  
% 3.54/0.98  ------ Propositional Solver
% 3.54/0.98  
% 3.54/0.98  prop_solver_calls:                      28
% 3.54/0.98  prop_fast_solver_calls:                 1524
% 3.54/0.98  smt_solver_calls:                       0
% 3.54/0.98  smt_fast_solver_calls:                  0
% 3.54/0.98  prop_num_of_clauses:                    3816
% 3.54/0.98  prop_preprocess_simplified:             10756
% 3.54/0.98  prop_fo_subsumed:                       70
% 3.54/0.98  prop_solver_time:                       0.
% 3.54/0.98  smt_solver_time:                        0.
% 3.54/0.98  smt_fast_solver_time:                   0.
% 3.54/0.98  prop_fast_solver_time:                  0.
% 3.54/0.98  prop_unsat_core_time:                   0.
% 3.54/0.98  
% 3.54/0.98  ------ QBF
% 3.54/0.98  
% 3.54/0.98  qbf_q_res:                              0
% 3.54/0.98  qbf_num_tautologies:                    0
% 3.54/0.98  qbf_prep_cycles:                        0
% 3.54/0.98  
% 3.54/0.98  ------ BMC1
% 3.54/0.98  
% 3.54/0.98  bmc1_current_bound:                     -1
% 3.54/0.98  bmc1_last_solved_bound:                 -1
% 3.54/0.98  bmc1_unsat_core_size:                   -1
% 3.54/0.98  bmc1_unsat_core_parents_size:           -1
% 3.54/0.98  bmc1_merge_next_fun:                    0
% 3.54/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.54/0.98  
% 3.54/0.98  ------ Instantiation
% 3.54/0.98  
% 3.54/0.98  inst_num_of_clauses:                    1196
% 3.54/0.98  inst_num_in_passive:                    480
% 3.54/0.98  inst_num_in_active:                     428
% 3.54/0.98  inst_num_in_unprocessed:                290
% 3.54/0.98  inst_num_of_loops:                      580
% 3.54/0.98  inst_num_of_learning_restarts:          0
% 3.54/0.98  inst_num_moves_active_passive:          150
% 3.54/0.98  inst_lit_activity:                      0
% 3.54/0.98  inst_lit_activity_moves:                0
% 3.54/0.98  inst_num_tautologies:                   0
% 3.54/0.98  inst_num_prop_implied:                  0
% 3.54/0.98  inst_num_existing_simplified:           0
% 3.54/0.98  inst_num_eq_res_simplified:             0
% 3.54/0.98  inst_num_child_elim:                    0
% 3.54/0.98  inst_num_of_dismatching_blockings:      369
% 3.54/0.98  inst_num_of_non_proper_insts:           1070
% 3.54/0.98  inst_num_of_duplicates:                 0
% 3.54/0.98  inst_inst_num_from_inst_to_res:         0
% 3.54/0.98  inst_dismatching_checking_time:         0.
% 3.54/0.98  
% 3.54/0.98  ------ Resolution
% 3.54/0.98  
% 3.54/0.98  res_num_of_clauses:                     0
% 3.54/0.98  res_num_in_passive:                     0
% 3.54/0.98  res_num_in_active:                      0
% 3.54/0.98  res_num_of_loops:                       181
% 3.54/0.98  res_forward_subset_subsumed:            47
% 3.54/0.98  res_backward_subset_subsumed:           8
% 3.54/0.98  res_forward_subsumed:                   0
% 3.54/0.98  res_backward_subsumed:                  0
% 3.54/0.98  res_forward_subsumption_resolution:     2
% 3.54/0.98  res_backward_subsumption_resolution:    1
% 3.54/0.98  res_clause_to_clause_subsumption:       342
% 3.54/0.98  res_orphan_elimination:                 0
% 3.54/0.98  res_tautology_del:                      53
% 3.54/0.98  res_num_eq_res_simplified:              0
% 3.54/0.98  res_num_sel_changes:                    0
% 3.54/0.98  res_moves_from_active_to_pass:          0
% 3.54/0.98  
% 3.54/0.98  ------ Superposition
% 3.54/0.98  
% 3.54/0.98  sup_time_total:                         0.
% 3.54/0.98  sup_time_generating:                    0.
% 3.54/0.98  sup_time_sim_full:                      0.
% 3.54/0.98  sup_time_sim_immed:                     0.
% 3.54/0.98  
% 3.54/0.98  sup_num_of_clauses:                     108
% 3.54/0.98  sup_num_in_active:                      62
% 3.54/0.98  sup_num_in_passive:                     46
% 3.54/0.98  sup_num_of_loops:                       114
% 3.54/0.98  sup_fw_superposition:                   111
% 3.54/0.98  sup_bw_superposition:                   43
% 3.54/0.98  sup_immediate_simplified:               101
% 3.54/0.98  sup_given_eliminated:                   0
% 3.54/0.98  comparisons_done:                       0
% 3.54/0.98  comparisons_avoided:                    0
% 3.54/0.98  
% 3.54/0.98  ------ Simplifications
% 3.54/0.98  
% 3.54/0.98  
% 3.54/0.98  sim_fw_subset_subsumed:                 12
% 3.54/0.98  sim_bw_subset_subsumed:                 9
% 3.54/0.98  sim_fw_subsumed:                        5
% 3.54/0.98  sim_bw_subsumed:                        0
% 3.54/0.98  sim_fw_subsumption_res:                 5
% 3.54/0.98  sim_bw_subsumption_res:                 0
% 3.54/0.98  sim_tautology_del:                      0
% 3.54/0.98  sim_eq_tautology_del:                   20
% 3.54/0.98  sim_eq_res_simp:                        2
% 3.54/0.98  sim_fw_demodulated:                     8
% 3.54/0.98  sim_bw_demodulated:                     72
% 3.54/0.98  sim_light_normalised:                   59
% 3.54/0.98  sim_joinable_taut:                      0
% 3.54/0.98  sim_joinable_simp:                      0
% 3.54/0.98  sim_ac_normalised:                      0
% 3.54/0.98  sim_smt_subsumption:                    0
% 3.54/0.98  
%------------------------------------------------------------------------------
