%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:02:37 EST 2020

% Result     : Theorem 3.06s
% Output     : CNFRefutation 3.06s
% Verified   : 
% Statistics : Number of formulae       :  141 ( 801 expanded)
%              Number of clauses        :   85 ( 282 expanded)
%              Number of leaves         :   14 ( 149 expanded)
%              Depth                    :   24
%              Number of atoms          :  430 (4062 expanded)
%              Number of equality atoms :  196 ( 792 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   16 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f17,axiom,(
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

fof(f40,plain,(
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
    inference(ennf_transformation,[],[f17])).

fof(f41,plain,(
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
    inference(flattening,[],[f40])).

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
    inference(nnf_transformation,[],[f41])).

fof(f75,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f49])).

fof(f19,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
     => ( ( k2_relset_1(X0,X1,X2) = X1
          & v2_funct_1(X2) )
       => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          & v1_funct_2(k2_funct_1(X2),X1,X0)
          & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
          & v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( ( k2_relset_1(X0,X1,X2) = X1
            & v2_funct_1(X2) )
         => ( m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
            & v1_funct_2(k2_funct_1(X2),X1,X0)
            & v1_funct_1(k2_funct_1(X2)) ) ) ) ),
    inference(negated_conjecture,[],[f19])).

fof(f44,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
        | ~ v1_funct_1(k2_funct_1(X2)) )
      & k2_relset_1(X0,X1,X2) = X1
      & v2_funct_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f45,plain,(
    ? [X0,X1,X2] :
      ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
        | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
        | ~ v1_funct_1(k2_funct_1(X2)) )
      & k2_relset_1(X0,X1,X2) = X1
      & v2_funct_1(X2)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      & v1_funct_2(X2,X0,X1)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f44])).

fof(f50,plain,
    ( ? [X0,X1,X2] :
        ( ( ~ m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
          | ~ v1_funct_2(k2_funct_1(X2),X1,X0)
          | ~ v1_funct_1(k2_funct_1(X2)) )
        & k2_relset_1(X0,X1,X2) = X1
        & v2_funct_1(X2)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
   => ( ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
        | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
        | ~ v1_funct_1(k2_funct_1(sK2)) )
      & k2_relset_1(sK0,sK1,sK2) = sK1
      & v2_funct_1(sK2)
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
      & v1_funct_2(sK2,sK0,sK1)
      & v1_funct_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f51,plain,
    ( ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
      | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
      | ~ v1_funct_1(k2_funct_1(sK2)) )
    & k2_relset_1(sK0,sK1,sK2) = sK1
    & v2_funct_1(sK2)
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    & v1_funct_2(sK2,sK0,sK1)
    & v1_funct_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f45,f50])).

fof(f85,plain,(
    v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f51])).

fof(f86,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f51])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f73,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f74,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f88,plain,(
    k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f51])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f11,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
          & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f35,plain,(
    ! [X0] :
      ( ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
        & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f34])).

fof(f67,plain,(
    ! [X0] :
      ( k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f87,plain,(
    v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f51])).

fof(f84,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f51])).

fof(f18,axiom,(
    ! [X0,X1] :
      ( ( v1_funct_1(X1)
        & v1_relat_1(X1) )
     => ( r1_tarski(k2_relat_1(X1),X0)
       => ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
          & v1_funct_2(X1,k1_relat_1(X1),X0)
          & v1_funct_1(X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f43,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
        & v1_funct_2(X1,k1_relat_1(X1),X0)
        & v1_funct_1(X1) )
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f42])).

fof(f83,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0)))
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f68,plain,(
    ! [X0] :
      ( k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f9,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f31,plain,(
    ! [X0] :
      ( ( v1_funct_1(k2_funct_1(X0))
        & v1_relat_1(k2_funct_1(X0)) )
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f30])).

fof(f65,plain,(
    ! [X0] :
      ( v1_funct_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f64,plain,(
    ! [X0] :
      ( v1_relat_1(k2_funct_1(X0))
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f82,plain,(
    ! [X0,X1] :
      ( v1_funct_2(X1,k1_relat_1(X1),X0)
      | ~ r1_tarski(k2_relat_1(X1),X0)
      | ~ v1_funct_1(X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f43])).

fof(f89,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
    | ~ v1_funct_1(k2_funct_1(sK2)) ),
    inference(cnf_transformation,[],[f51])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f47,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f46])).

fof(f53,plain,(
    ! [X0,X1] :
      ( r1_tarski(X1,X0)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f47])).

fof(f90,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f53])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ( ( k1_xboole_0 = k2_relat_1(X0)
          | k1_xboole_0 = k1_relat_1(X0) )
       => k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f29,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ( k1_xboole_0 != k2_relat_1(X0)
        & k1_xboole_0 != k1_relat_1(X0) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f28])).

fof(f60,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | k1_xboole_0 != k2_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f8,axiom,(
    k1_xboole_0 = k6_relat_1(k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    k1_xboole_0 = k6_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f8])).

fof(f7,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f2,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

cnf(c_28,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f75])).

cnf(c_36,negated_conjecture,
    ( v1_funct_2(sK2,sK0,sK1) ),
    inference(cnf_transformation,[],[f85])).

cnf(c_1116,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | sK0 != X1
    | sK1 != X2
    | sK2 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_28,c_36])).

cnf(c_1117,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | k1_relset_1(sK0,sK1,sK2) = sK0
    | k1_xboole_0 = sK1 ),
    inference(unflattening,[status(thm)],[c_1116])).

cnf(c_35,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f86])).

cnf(c_1119,plain,
    ( k1_relset_1(sK0,sK1,sK2) = sK0
    | k1_xboole_0 = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1117,c_35])).

cnf(c_1982,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_1985,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_4824,plain,
    ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1982,c_1985])).

cnf(c_4986,plain,
    ( k1_relat_1(sK2) = sK0
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1119,c_4824])).

cnf(c_22,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_1984,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_4548,plain,
    ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1982,c_1984])).

cnf(c_33,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
    inference(cnf_transformation,[],[f88])).

cnf(c_4549,plain,
    ( k2_relat_1(sK2) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_4548,c_33])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_1986,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_3018,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1982,c_1986])).

cnf(c_16,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_34,negated_conjecture,
    ( v2_funct_1(sK2) ),
    inference(cnf_transformation,[],[f87])).

cnf(c_395,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_34])).

cnf(c_396,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_395])).

cnf(c_37,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f84])).

cnf(c_398,plain,
    ( ~ v1_relat_1(sK2)
    | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_396,c_37])).

cnf(c_1979,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_398])).

cnf(c_3074,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_3018,c_1979])).

cnf(c_4557,plain,
    ( k1_relat_1(k2_funct_1(sK2)) = sK1 ),
    inference(demodulation,[status(thm)],[c_4549,c_3074])).

cnf(c_29,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f83])).

cnf(c_1983,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1))) = iProver_top
    | r1_tarski(k2_relat_1(X0),X1) != iProver_top
    | v1_funct_1(X0) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_29])).

cnf(c_6228,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
    | r1_tarski(k2_relat_1(k2_funct_1(sK2)),X0) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_4557,c_1983])).

cnf(c_15,plain,
    ( ~ v2_funct_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_409,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_34])).

cnf(c_410,plain,
    ( ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(unflattening,[status(thm)],[c_409])).

cnf(c_412,plain,
    ( ~ v1_relat_1(sK2)
    | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_410,c_37])).

cnf(c_1978,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_412])).

cnf(c_3075,plain,
    ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_3018,c_1978])).

cnf(c_6265,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
    | r1_tarski(k1_relat_1(sK2),X0) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_6228,c_3075])).

cnf(c_38,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_37])).

cnf(c_40,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_35])).

cnf(c_12,plain,
    ( ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_2259,plain,
    ( v1_funct_1(k2_funct_1(sK2))
    | ~ v1_funct_1(sK2)
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_12])).

cnf(c_2260,plain,
    ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2259])).

cnf(c_2262,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_2405,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_2262])).

cnf(c_2406,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2405])).

cnf(c_13,plain,
    ( ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0)
    | v1_relat_1(k2_funct_1(X0)) ),
    inference(cnf_transformation,[],[f64])).

cnf(c_6342,plain,
    ( ~ v1_funct_1(sK2)
    | v1_relat_1(k2_funct_1(sK2))
    | ~ v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_13])).

cnf(c_6343,plain,
    ( v1_funct_1(sK2) != iProver_top
    | v1_relat_1(k2_funct_1(sK2)) = iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6342])).

cnf(c_8125,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
    | r1_tarski(k1_relat_1(sK2),X0) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_6265,c_38,c_40,c_2260,c_2406,c_6343])).

cnf(c_30,plain,
    ( v1_funct_2(X0,k1_relat_1(X0),X1)
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_funct_1(X0)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f82])).

cnf(c_32,negated_conjecture,
    ( ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
    | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ v1_funct_1(k2_funct_1(sK2)) ),
    inference(cnf_transformation,[],[f89])).

cnf(c_1127,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(X0)
    | k2_funct_1(sK2) != X0
    | k1_relat_1(X0) != sK1
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_30,c_32])).

cnf(c_1128,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | ~ v1_relat_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(unflattening,[status(thm)],[c_1127])).

cnf(c_1140,plain,
    ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
    | ~ v1_funct_1(k2_funct_1(sK2))
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1128,c_19])).

cnf(c_1968,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1140])).

cnf(c_1145,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1140])).

cnf(c_2644,plain,
    ( r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1968,c_38,c_40,c_1145,c_2260,c_2406])).

cnf(c_2645,plain,
    ( k1_relat_1(k2_funct_1(sK2)) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top ),
    inference(renaming,[status(thm)],[c_2644])).

cnf(c_3086,plain,
    ( k2_relat_1(sK2) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3074,c_2645])).

cnf(c_3300,plain,
    ( k2_relat_1(sK2) != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_3086,c_3075])).

cnf(c_4555,plain,
    ( sK1 != sK1
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4549,c_3300])).

cnf(c_4562,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
    inference(equality_resolution_simp,[status(thm)],[c_4555])).

cnf(c_8138,plain,
    ( r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_8125,c_4562])).

cnf(c_8333,plain,
    ( sK1 = k1_xboole_0
    | r1_tarski(sK0,sK0) != iProver_top ),
    inference(superposition,[status(thm)],[c_4986,c_8138])).

cnf(c_1,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f90])).

cnf(c_3853,plain,
    ( r1_tarski(sK0,sK0) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_3856,plain,
    ( r1_tarski(sK0,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3853])).

cnf(c_9208,plain,
    ( sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_8333,c_3856])).

cnf(c_7,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_1992,plain,
    ( k2_relat_1(X0) != k1_xboole_0
    | k1_xboole_0 = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_4601,plain,
    ( sK1 != k1_xboole_0
    | sK2 = k1_xboole_0
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_4549,c_1992])).

cnf(c_4989,plain,
    ( sK2 = k1_xboole_0
    | sK1 != k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_4601,c_40,c_2406])).

cnf(c_4990,plain,
    ( sK1 != k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_4989])).

cnf(c_9228,plain,
    ( sK2 = k1_xboole_0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_9208,c_4990])).

cnf(c_9286,plain,
    ( sK2 = k1_xboole_0 ),
    inference(equality_resolution_simp,[status(thm)],[c_9228])).

cnf(c_9596,plain,
    ( r1_tarski(k1_relat_1(k1_xboole_0),sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_9286,c_8138])).

cnf(c_11,plain,
    ( k6_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f63])).

cnf(c_10,plain,
    ( k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_2399,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_11,c_10])).

cnf(c_9643,plain,
    ( r1_tarski(k1_xboole_0,sK0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_9596,c_2399])).

cnf(c_3,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_5234,plain,
    ( r1_tarski(k1_xboole_0,sK0) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_5237,plain,
    ( r1_tarski(k1_xboole_0,sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5234])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_9643,c_5237])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n011.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 20:51:57 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.06/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.06/0.99  
% 3.06/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.06/0.99  
% 3.06/0.99  ------  iProver source info
% 3.06/0.99  
% 3.06/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.06/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.06/0.99  git: non_committed_changes: false
% 3.06/0.99  git: last_make_outside_of_git: false
% 3.06/0.99  
% 3.06/0.99  ------ 
% 3.06/0.99  
% 3.06/0.99  ------ Input Options
% 3.06/0.99  
% 3.06/0.99  --out_options                           all
% 3.06/0.99  --tptp_safe_out                         true
% 3.06/0.99  --problem_path                          ""
% 3.06/0.99  --include_path                          ""
% 3.06/0.99  --clausifier                            res/vclausify_rel
% 3.06/0.99  --clausifier_options                    --mode clausify
% 3.06/0.99  --stdin                                 false
% 3.06/0.99  --stats_out                             all
% 3.06/0.99  
% 3.06/0.99  ------ General Options
% 3.06/0.99  
% 3.06/0.99  --fof                                   false
% 3.06/0.99  --time_out_real                         305.
% 3.06/0.99  --time_out_virtual                      -1.
% 3.06/0.99  --symbol_type_check                     false
% 3.06/0.99  --clausify_out                          false
% 3.06/0.99  --sig_cnt_out                           false
% 3.06/0.99  --trig_cnt_out                          false
% 3.06/0.99  --trig_cnt_out_tolerance                1.
% 3.06/0.99  --trig_cnt_out_sk_spl                   false
% 3.06/0.99  --abstr_cl_out                          false
% 3.06/0.99  
% 3.06/0.99  ------ Global Options
% 3.06/0.99  
% 3.06/0.99  --schedule                              default
% 3.06/0.99  --add_important_lit                     false
% 3.06/0.99  --prop_solver_per_cl                    1000
% 3.06/0.99  --min_unsat_core                        false
% 3.06/0.99  --soft_assumptions                      false
% 3.06/0.99  --soft_lemma_size                       3
% 3.06/0.99  --prop_impl_unit_size                   0
% 3.06/0.99  --prop_impl_unit                        []
% 3.06/0.99  --share_sel_clauses                     true
% 3.06/0.99  --reset_solvers                         false
% 3.06/0.99  --bc_imp_inh                            [conj_cone]
% 3.06/0.99  --conj_cone_tolerance                   3.
% 3.06/0.99  --extra_neg_conj                        none
% 3.06/0.99  --large_theory_mode                     true
% 3.06/0.99  --prolific_symb_bound                   200
% 3.06/0.99  --lt_threshold                          2000
% 3.06/0.99  --clause_weak_htbl                      true
% 3.06/0.99  --gc_record_bc_elim                     false
% 3.06/0.99  
% 3.06/0.99  ------ Preprocessing Options
% 3.06/0.99  
% 3.06/0.99  --preprocessing_flag                    true
% 3.06/0.99  --time_out_prep_mult                    0.1
% 3.06/0.99  --splitting_mode                        input
% 3.06/0.99  --splitting_grd                         true
% 3.06/0.99  --splitting_cvd                         false
% 3.06/0.99  --splitting_cvd_svl                     false
% 3.06/0.99  --splitting_nvd                         32
% 3.06/0.99  --sub_typing                            true
% 3.06/0.99  --prep_gs_sim                           true
% 3.06/0.99  --prep_unflatten                        true
% 3.06/0.99  --prep_res_sim                          true
% 3.06/0.99  --prep_upred                            true
% 3.06/0.99  --prep_sem_filter                       exhaustive
% 3.06/0.99  --prep_sem_filter_out                   false
% 3.06/0.99  --pred_elim                             true
% 3.06/0.99  --res_sim_input                         true
% 3.06/0.99  --eq_ax_congr_red                       true
% 3.06/0.99  --pure_diseq_elim                       true
% 3.06/0.99  --brand_transform                       false
% 3.06/0.99  --non_eq_to_eq                          false
% 3.06/0.99  --prep_def_merge                        true
% 3.06/0.99  --prep_def_merge_prop_impl              false
% 3.06/0.99  --prep_def_merge_mbd                    true
% 3.06/0.99  --prep_def_merge_tr_red                 false
% 3.06/0.99  --prep_def_merge_tr_cl                  false
% 3.06/0.99  --smt_preprocessing                     true
% 3.06/0.99  --smt_ac_axioms                         fast
% 3.06/0.99  --preprocessed_out                      false
% 3.06/0.99  --preprocessed_stats                    false
% 3.06/0.99  
% 3.06/0.99  ------ Abstraction refinement Options
% 3.06/0.99  
% 3.06/0.99  --abstr_ref                             []
% 3.06/0.99  --abstr_ref_prep                        false
% 3.06/0.99  --abstr_ref_until_sat                   false
% 3.06/0.99  --abstr_ref_sig_restrict                funpre
% 3.06/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.06/0.99  --abstr_ref_under                       []
% 3.06/0.99  
% 3.06/0.99  ------ SAT Options
% 3.06/0.99  
% 3.06/0.99  --sat_mode                              false
% 3.06/0.99  --sat_fm_restart_options                ""
% 3.06/0.99  --sat_gr_def                            false
% 3.06/0.99  --sat_epr_types                         true
% 3.06/0.99  --sat_non_cyclic_types                  false
% 3.06/0.99  --sat_finite_models                     false
% 3.06/0.99  --sat_fm_lemmas                         false
% 3.06/0.99  --sat_fm_prep                           false
% 3.06/0.99  --sat_fm_uc_incr                        true
% 3.06/0.99  --sat_out_model                         small
% 3.06/0.99  --sat_out_clauses                       false
% 3.06/0.99  
% 3.06/0.99  ------ QBF Options
% 3.06/0.99  
% 3.06/0.99  --qbf_mode                              false
% 3.06/0.99  --qbf_elim_univ                         false
% 3.06/0.99  --qbf_dom_inst                          none
% 3.06/0.99  --qbf_dom_pre_inst                      false
% 3.06/0.99  --qbf_sk_in                             false
% 3.06/0.99  --qbf_pred_elim                         true
% 3.06/0.99  --qbf_split                             512
% 3.06/0.99  
% 3.06/0.99  ------ BMC1 Options
% 3.06/0.99  
% 3.06/0.99  --bmc1_incremental                      false
% 3.06/0.99  --bmc1_axioms                           reachable_all
% 3.06/0.99  --bmc1_min_bound                        0
% 3.06/0.99  --bmc1_max_bound                        -1
% 3.06/0.99  --bmc1_max_bound_default                -1
% 3.06/0.99  --bmc1_symbol_reachability              true
% 3.06/0.99  --bmc1_property_lemmas                  false
% 3.06/0.99  --bmc1_k_induction                      false
% 3.06/0.99  --bmc1_non_equiv_states                 false
% 3.06/0.99  --bmc1_deadlock                         false
% 3.06/0.99  --bmc1_ucm                              false
% 3.06/0.99  --bmc1_add_unsat_core                   none
% 3.06/0.99  --bmc1_unsat_core_children              false
% 3.06/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.06/0.99  --bmc1_out_stat                         full
% 3.06/0.99  --bmc1_ground_init                      false
% 3.06/0.99  --bmc1_pre_inst_next_state              false
% 3.06/0.99  --bmc1_pre_inst_state                   false
% 3.06/0.99  --bmc1_pre_inst_reach_state             false
% 3.06/0.99  --bmc1_out_unsat_core                   false
% 3.06/0.99  --bmc1_aig_witness_out                  false
% 3.06/0.99  --bmc1_verbose                          false
% 3.06/0.99  --bmc1_dump_clauses_tptp                false
% 3.06/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.06/0.99  --bmc1_dump_file                        -
% 3.06/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.06/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.06/0.99  --bmc1_ucm_extend_mode                  1
% 3.06/0.99  --bmc1_ucm_init_mode                    2
% 3.06/0.99  --bmc1_ucm_cone_mode                    none
% 3.06/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.06/0.99  --bmc1_ucm_relax_model                  4
% 3.06/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.06/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.06/0.99  --bmc1_ucm_layered_model                none
% 3.06/0.99  --bmc1_ucm_max_lemma_size               10
% 3.06/0.99  
% 3.06/0.99  ------ AIG Options
% 3.06/0.99  
% 3.06/0.99  --aig_mode                              false
% 3.06/0.99  
% 3.06/0.99  ------ Instantiation Options
% 3.06/0.99  
% 3.06/0.99  --instantiation_flag                    true
% 3.06/0.99  --inst_sos_flag                         false
% 3.06/0.99  --inst_sos_phase                        true
% 3.06/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.06/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.06/0.99  --inst_lit_sel_side                     num_symb
% 3.06/0.99  --inst_solver_per_active                1400
% 3.06/0.99  --inst_solver_calls_frac                1.
% 3.06/0.99  --inst_passive_queue_type               priority_queues
% 3.06/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.06/0.99  --inst_passive_queues_freq              [25;2]
% 3.06/0.99  --inst_dismatching                      true
% 3.06/0.99  --inst_eager_unprocessed_to_passive     true
% 3.06/0.99  --inst_prop_sim_given                   true
% 3.06/0.99  --inst_prop_sim_new                     false
% 3.06/0.99  --inst_subs_new                         false
% 3.06/0.99  --inst_eq_res_simp                      false
% 3.06/0.99  --inst_subs_given                       false
% 3.06/0.99  --inst_orphan_elimination               true
% 3.06/0.99  --inst_learning_loop_flag               true
% 3.06/0.99  --inst_learning_start                   3000
% 3.06/0.99  --inst_learning_factor                  2
% 3.06/0.99  --inst_start_prop_sim_after_learn       3
% 3.06/0.99  --inst_sel_renew                        solver
% 3.06/0.99  --inst_lit_activity_flag                true
% 3.06/0.99  --inst_restr_to_given                   false
% 3.06/0.99  --inst_activity_threshold               500
% 3.06/0.99  --inst_out_proof                        true
% 3.06/0.99  
% 3.06/0.99  ------ Resolution Options
% 3.06/0.99  
% 3.06/0.99  --resolution_flag                       true
% 3.06/0.99  --res_lit_sel                           adaptive
% 3.06/0.99  --res_lit_sel_side                      none
% 3.06/0.99  --res_ordering                          kbo
% 3.06/0.99  --res_to_prop_solver                    active
% 3.06/0.99  --res_prop_simpl_new                    false
% 3.06/0.99  --res_prop_simpl_given                  true
% 3.06/0.99  --res_passive_queue_type                priority_queues
% 3.06/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.06/0.99  --res_passive_queues_freq               [15;5]
% 3.06/0.99  --res_forward_subs                      full
% 3.06/0.99  --res_backward_subs                     full
% 3.06/0.99  --res_forward_subs_resolution           true
% 3.06/0.99  --res_backward_subs_resolution          true
% 3.06/0.99  --res_orphan_elimination                true
% 3.06/0.99  --res_time_limit                        2.
% 3.06/0.99  --res_out_proof                         true
% 3.06/0.99  
% 3.06/0.99  ------ Superposition Options
% 3.06/0.99  
% 3.06/0.99  --superposition_flag                    true
% 3.06/0.99  --sup_passive_queue_type                priority_queues
% 3.06/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.06/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.06/0.99  --demod_completeness_check              fast
% 3.06/0.99  --demod_use_ground                      true
% 3.06/0.99  --sup_to_prop_solver                    passive
% 3.06/0.99  --sup_prop_simpl_new                    true
% 3.06/0.99  --sup_prop_simpl_given                  true
% 3.06/0.99  --sup_fun_splitting                     false
% 3.06/0.99  --sup_smt_interval                      50000
% 3.06/0.99  
% 3.06/0.99  ------ Superposition Simplification Setup
% 3.06/0.99  
% 3.06/0.99  --sup_indices_passive                   []
% 3.06/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.06/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.06/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.06/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.06/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.06/0.99  --sup_full_bw                           [BwDemod]
% 3.06/0.99  --sup_immed_triv                        [TrivRules]
% 3.06/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.06/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.06/0.99  --sup_immed_bw_main                     []
% 3.06/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.06/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.06/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.06/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.06/0.99  
% 3.06/0.99  ------ Combination Options
% 3.06/0.99  
% 3.06/0.99  --comb_res_mult                         3
% 3.06/0.99  --comb_sup_mult                         2
% 3.06/0.99  --comb_inst_mult                        10
% 3.06/0.99  
% 3.06/0.99  ------ Debug Options
% 3.06/0.99  
% 3.06/0.99  --dbg_backtrace                         false
% 3.06/0.99  --dbg_dump_prop_clauses                 false
% 3.06/0.99  --dbg_dump_prop_clauses_file            -
% 3.06/0.99  --dbg_out_stat                          false
% 3.06/0.99  ------ Parsing...
% 3.06/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.06/0.99  
% 3.06/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.06/0.99  
% 3.06/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.06/0.99  
% 3.06/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.06/0.99  ------ Proving...
% 3.06/0.99  ------ Problem Properties 
% 3.06/0.99  
% 3.06/0.99  
% 3.06/0.99  clauses                                 36
% 3.06/0.99  conjectures                             3
% 3.06/0.99  EPR                                     6
% 3.06/0.99  Horn                                    32
% 3.06/0.99  unary                                   10
% 3.06/0.99  binary                                  10
% 3.06/0.99  lits                                    94
% 3.06/0.99  lits eq                                 40
% 3.06/0.99  fd_pure                                 0
% 3.06/0.99  fd_pseudo                               0
% 3.06/0.99  fd_cond                                 4
% 3.06/0.99  fd_pseudo_cond                          1
% 3.06/0.99  AC symbols                              0
% 3.06/0.99  
% 3.06/0.99  ------ Schedule dynamic 5 is on 
% 3.06/0.99  
% 3.06/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.06/0.99  
% 3.06/0.99  
% 3.06/0.99  ------ 
% 3.06/0.99  Current options:
% 3.06/0.99  ------ 
% 3.06/0.99  
% 3.06/0.99  ------ Input Options
% 3.06/0.99  
% 3.06/0.99  --out_options                           all
% 3.06/0.99  --tptp_safe_out                         true
% 3.06/0.99  --problem_path                          ""
% 3.06/0.99  --include_path                          ""
% 3.06/0.99  --clausifier                            res/vclausify_rel
% 3.06/0.99  --clausifier_options                    --mode clausify
% 3.06/0.99  --stdin                                 false
% 3.06/0.99  --stats_out                             all
% 3.06/0.99  
% 3.06/0.99  ------ General Options
% 3.06/0.99  
% 3.06/0.99  --fof                                   false
% 3.06/0.99  --time_out_real                         305.
% 3.06/0.99  --time_out_virtual                      -1.
% 3.06/0.99  --symbol_type_check                     false
% 3.06/0.99  --clausify_out                          false
% 3.06/0.99  --sig_cnt_out                           false
% 3.06/0.99  --trig_cnt_out                          false
% 3.06/0.99  --trig_cnt_out_tolerance                1.
% 3.06/0.99  --trig_cnt_out_sk_spl                   false
% 3.06/0.99  --abstr_cl_out                          false
% 3.06/0.99  
% 3.06/0.99  ------ Global Options
% 3.06/0.99  
% 3.06/0.99  --schedule                              default
% 3.06/0.99  --add_important_lit                     false
% 3.06/0.99  --prop_solver_per_cl                    1000
% 3.06/0.99  --min_unsat_core                        false
% 3.06/0.99  --soft_assumptions                      false
% 3.06/0.99  --soft_lemma_size                       3
% 3.06/0.99  --prop_impl_unit_size                   0
% 3.06/0.99  --prop_impl_unit                        []
% 3.06/0.99  --share_sel_clauses                     true
% 3.06/0.99  --reset_solvers                         false
% 3.06/0.99  --bc_imp_inh                            [conj_cone]
% 3.06/0.99  --conj_cone_tolerance                   3.
% 3.06/0.99  --extra_neg_conj                        none
% 3.06/0.99  --large_theory_mode                     true
% 3.06/0.99  --prolific_symb_bound                   200
% 3.06/0.99  --lt_threshold                          2000
% 3.06/0.99  --clause_weak_htbl                      true
% 3.06/0.99  --gc_record_bc_elim                     false
% 3.06/0.99  
% 3.06/0.99  ------ Preprocessing Options
% 3.06/0.99  
% 3.06/0.99  --preprocessing_flag                    true
% 3.06/0.99  --time_out_prep_mult                    0.1
% 3.06/0.99  --splitting_mode                        input
% 3.06/0.99  --splitting_grd                         true
% 3.06/0.99  --splitting_cvd                         false
% 3.06/0.99  --splitting_cvd_svl                     false
% 3.06/0.99  --splitting_nvd                         32
% 3.06/0.99  --sub_typing                            true
% 3.06/0.99  --prep_gs_sim                           true
% 3.06/0.99  --prep_unflatten                        true
% 3.06/0.99  --prep_res_sim                          true
% 3.06/0.99  --prep_upred                            true
% 3.06/0.99  --prep_sem_filter                       exhaustive
% 3.06/0.99  --prep_sem_filter_out                   false
% 3.06/0.99  --pred_elim                             true
% 3.06/0.99  --res_sim_input                         true
% 3.06/0.99  --eq_ax_congr_red                       true
% 3.06/0.99  --pure_diseq_elim                       true
% 3.06/0.99  --brand_transform                       false
% 3.06/0.99  --non_eq_to_eq                          false
% 3.06/0.99  --prep_def_merge                        true
% 3.06/0.99  --prep_def_merge_prop_impl              false
% 3.06/0.99  --prep_def_merge_mbd                    true
% 3.06/0.99  --prep_def_merge_tr_red                 false
% 3.06/0.99  --prep_def_merge_tr_cl                  false
% 3.06/0.99  --smt_preprocessing                     true
% 3.06/0.99  --smt_ac_axioms                         fast
% 3.06/0.99  --preprocessed_out                      false
% 3.06/0.99  --preprocessed_stats                    false
% 3.06/0.99  
% 3.06/0.99  ------ Abstraction refinement Options
% 3.06/0.99  
% 3.06/0.99  --abstr_ref                             []
% 3.06/0.99  --abstr_ref_prep                        false
% 3.06/0.99  --abstr_ref_until_sat                   false
% 3.06/0.99  --abstr_ref_sig_restrict                funpre
% 3.06/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.06/0.99  --abstr_ref_under                       []
% 3.06/0.99  
% 3.06/0.99  ------ SAT Options
% 3.06/0.99  
% 3.06/0.99  --sat_mode                              false
% 3.06/0.99  --sat_fm_restart_options                ""
% 3.06/0.99  --sat_gr_def                            false
% 3.06/0.99  --sat_epr_types                         true
% 3.06/0.99  --sat_non_cyclic_types                  false
% 3.06/0.99  --sat_finite_models                     false
% 3.06/0.99  --sat_fm_lemmas                         false
% 3.06/0.99  --sat_fm_prep                           false
% 3.06/0.99  --sat_fm_uc_incr                        true
% 3.06/0.99  --sat_out_model                         small
% 3.06/0.99  --sat_out_clauses                       false
% 3.06/0.99  
% 3.06/0.99  ------ QBF Options
% 3.06/0.99  
% 3.06/0.99  --qbf_mode                              false
% 3.06/0.99  --qbf_elim_univ                         false
% 3.06/0.99  --qbf_dom_inst                          none
% 3.06/0.99  --qbf_dom_pre_inst                      false
% 3.06/0.99  --qbf_sk_in                             false
% 3.06/0.99  --qbf_pred_elim                         true
% 3.06/0.99  --qbf_split                             512
% 3.06/0.99  
% 3.06/0.99  ------ BMC1 Options
% 3.06/0.99  
% 3.06/0.99  --bmc1_incremental                      false
% 3.06/0.99  --bmc1_axioms                           reachable_all
% 3.06/0.99  --bmc1_min_bound                        0
% 3.06/0.99  --bmc1_max_bound                        -1
% 3.06/0.99  --bmc1_max_bound_default                -1
% 3.06/0.99  --bmc1_symbol_reachability              true
% 3.06/0.99  --bmc1_property_lemmas                  false
% 3.06/0.99  --bmc1_k_induction                      false
% 3.06/0.99  --bmc1_non_equiv_states                 false
% 3.06/0.99  --bmc1_deadlock                         false
% 3.06/0.99  --bmc1_ucm                              false
% 3.06/0.99  --bmc1_add_unsat_core                   none
% 3.06/0.99  --bmc1_unsat_core_children              false
% 3.06/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.06/0.99  --bmc1_out_stat                         full
% 3.06/0.99  --bmc1_ground_init                      false
% 3.06/0.99  --bmc1_pre_inst_next_state              false
% 3.06/0.99  --bmc1_pre_inst_state                   false
% 3.06/0.99  --bmc1_pre_inst_reach_state             false
% 3.06/0.99  --bmc1_out_unsat_core                   false
% 3.06/0.99  --bmc1_aig_witness_out                  false
% 3.06/0.99  --bmc1_verbose                          false
% 3.06/0.99  --bmc1_dump_clauses_tptp                false
% 3.06/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.06/0.99  --bmc1_dump_file                        -
% 3.06/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.06/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.06/0.99  --bmc1_ucm_extend_mode                  1
% 3.06/0.99  --bmc1_ucm_init_mode                    2
% 3.06/0.99  --bmc1_ucm_cone_mode                    none
% 3.06/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.06/0.99  --bmc1_ucm_relax_model                  4
% 3.06/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.06/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.06/0.99  --bmc1_ucm_layered_model                none
% 3.06/0.99  --bmc1_ucm_max_lemma_size               10
% 3.06/0.99  
% 3.06/0.99  ------ AIG Options
% 3.06/0.99  
% 3.06/0.99  --aig_mode                              false
% 3.06/0.99  
% 3.06/0.99  ------ Instantiation Options
% 3.06/0.99  
% 3.06/0.99  --instantiation_flag                    true
% 3.06/0.99  --inst_sos_flag                         false
% 3.06/0.99  --inst_sos_phase                        true
% 3.06/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.06/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.06/0.99  --inst_lit_sel_side                     none
% 3.06/0.99  --inst_solver_per_active                1400
% 3.06/0.99  --inst_solver_calls_frac                1.
% 3.06/0.99  --inst_passive_queue_type               priority_queues
% 3.06/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.06/0.99  --inst_passive_queues_freq              [25;2]
% 3.06/0.99  --inst_dismatching                      true
% 3.06/0.99  --inst_eager_unprocessed_to_passive     true
% 3.06/0.99  --inst_prop_sim_given                   true
% 3.06/0.99  --inst_prop_sim_new                     false
% 3.06/0.99  --inst_subs_new                         false
% 3.06/0.99  --inst_eq_res_simp                      false
% 3.06/0.99  --inst_subs_given                       false
% 3.06/0.99  --inst_orphan_elimination               true
% 3.06/0.99  --inst_learning_loop_flag               true
% 3.06/0.99  --inst_learning_start                   3000
% 3.06/0.99  --inst_learning_factor                  2
% 3.06/0.99  --inst_start_prop_sim_after_learn       3
% 3.06/0.99  --inst_sel_renew                        solver
% 3.06/0.99  --inst_lit_activity_flag                true
% 3.06/0.99  --inst_restr_to_given                   false
% 3.06/0.99  --inst_activity_threshold               500
% 3.06/0.99  --inst_out_proof                        true
% 3.06/0.99  
% 3.06/0.99  ------ Resolution Options
% 3.06/0.99  
% 3.06/0.99  --resolution_flag                       false
% 3.06/0.99  --res_lit_sel                           adaptive
% 3.06/0.99  --res_lit_sel_side                      none
% 3.06/0.99  --res_ordering                          kbo
% 3.06/0.99  --res_to_prop_solver                    active
% 3.06/0.99  --res_prop_simpl_new                    false
% 3.06/0.99  --res_prop_simpl_given                  true
% 3.06/0.99  --res_passive_queue_type                priority_queues
% 3.06/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.06/0.99  --res_passive_queues_freq               [15;5]
% 3.06/0.99  --res_forward_subs                      full
% 3.06/0.99  --res_backward_subs                     full
% 3.06/0.99  --res_forward_subs_resolution           true
% 3.06/0.99  --res_backward_subs_resolution          true
% 3.06/0.99  --res_orphan_elimination                true
% 3.06/0.99  --res_time_limit                        2.
% 3.06/0.99  --res_out_proof                         true
% 3.06/0.99  
% 3.06/0.99  ------ Superposition Options
% 3.06/0.99  
% 3.06/0.99  --superposition_flag                    true
% 3.06/0.99  --sup_passive_queue_type                priority_queues
% 3.06/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.06/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.06/0.99  --demod_completeness_check              fast
% 3.06/0.99  --demod_use_ground                      true
% 3.06/0.99  --sup_to_prop_solver                    passive
% 3.06/0.99  --sup_prop_simpl_new                    true
% 3.06/0.99  --sup_prop_simpl_given                  true
% 3.06/0.99  --sup_fun_splitting                     false
% 3.06/0.99  --sup_smt_interval                      50000
% 3.06/0.99  
% 3.06/0.99  ------ Superposition Simplification Setup
% 3.06/0.99  
% 3.06/0.99  --sup_indices_passive                   []
% 3.06/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.06/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.06/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.06/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.06/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.06/0.99  --sup_full_bw                           [BwDemod]
% 3.06/0.99  --sup_immed_triv                        [TrivRules]
% 3.06/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.06/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.06/0.99  --sup_immed_bw_main                     []
% 3.06/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.06/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.06/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.06/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.06/0.99  
% 3.06/0.99  ------ Combination Options
% 3.06/0.99  
% 3.06/0.99  --comb_res_mult                         3
% 3.06/0.99  --comb_sup_mult                         2
% 3.06/0.99  --comb_inst_mult                        10
% 3.06/0.99  
% 3.06/0.99  ------ Debug Options
% 3.06/0.99  
% 3.06/0.99  --dbg_backtrace                         false
% 3.06/0.99  --dbg_dump_prop_clauses                 false
% 3.06/0.99  --dbg_dump_prop_clauses_file            -
% 3.06/0.99  --dbg_out_stat                          false
% 3.06/0.99  
% 3.06/0.99  
% 3.06/0.99  
% 3.06/0.99  
% 3.06/0.99  ------ Proving...
% 3.06/0.99  
% 3.06/0.99  
% 3.06/0.99  % SZS status Theorem for theBenchmark.p
% 3.06/0.99  
% 3.06/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.06/0.99  
% 3.06/0.99  fof(f17,axiom,(
% 3.06/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f40,plain,(
% 3.06/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.06/0.99    inference(ennf_transformation,[],[f17])).
% 3.06/0.99  
% 3.06/0.99  fof(f41,plain,(
% 3.06/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.06/0.99    inference(flattening,[],[f40])).
% 3.06/0.99  
% 3.06/0.99  fof(f49,plain,(
% 3.06/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.06/0.99    inference(nnf_transformation,[],[f41])).
% 3.06/0.99  
% 3.06/0.99  fof(f75,plain,(
% 3.06/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.06/0.99    inference(cnf_transformation,[],[f49])).
% 3.06/0.99  
% 3.06/0.99  fof(f19,conjecture,(
% 3.06/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f20,negated_conjecture,(
% 3.06/0.99    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2)) => (m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) & v1_funct_2(k2_funct_1(X2),X1,X0) & v1_funct_1(k2_funct_1(X2)))))),
% 3.06/0.99    inference(negated_conjecture,[],[f19])).
% 3.06/0.99  
% 3.06/0.99  fof(f44,plain,(
% 3.06/0.99    ? [X0,X1,X2] : (((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & (k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2))) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)))),
% 3.06/0.99    inference(ennf_transformation,[],[f20])).
% 3.06/0.99  
% 3.06/0.99  fof(f45,plain,(
% 3.06/0.99    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2))),
% 3.06/0.99    inference(flattening,[],[f44])).
% 3.06/0.99  
% 3.06/0.99  fof(f50,plain,(
% 3.06/0.99    ? [X0,X1,X2] : ((~m1_subset_1(k2_funct_1(X2),k1_zfmisc_1(k2_zfmisc_1(X1,X0))) | ~v1_funct_2(k2_funct_1(X2),X1,X0) | ~v1_funct_1(k2_funct_1(X2))) & k2_relset_1(X0,X1,X2) = X1 & v2_funct_1(X2) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) => ((~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))) & k2_relset_1(sK0,sK1,sK2) = sK1 & v2_funct_1(sK2) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2))),
% 3.06/0.99    introduced(choice_axiom,[])).
% 3.06/0.99  
% 3.06/0.99  fof(f51,plain,(
% 3.06/0.99    (~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))) & k2_relset_1(sK0,sK1,sK2) = sK1 & v2_funct_1(sK2) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) & v1_funct_2(sK2,sK0,sK1) & v1_funct_1(sK2)),
% 3.06/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f45,f50])).
% 3.06/0.99  
% 3.06/0.99  fof(f85,plain,(
% 3.06/0.99    v1_funct_2(sK2,sK0,sK1)),
% 3.06/0.99    inference(cnf_transformation,[],[f51])).
% 3.06/0.99  
% 3.06/0.99  fof(f86,plain,(
% 3.06/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.06/0.99    inference(cnf_transformation,[],[f51])).
% 3.06/0.99  
% 3.06/0.99  fof(f15,axiom,(
% 3.06/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f38,plain,(
% 3.06/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.06/0.99    inference(ennf_transformation,[],[f15])).
% 3.06/0.99  
% 3.06/0.99  fof(f73,plain,(
% 3.06/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.06/0.99    inference(cnf_transformation,[],[f38])).
% 3.06/0.99  
% 3.06/0.99  fof(f16,axiom,(
% 3.06/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f39,plain,(
% 3.06/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.06/0.99    inference(ennf_transformation,[],[f16])).
% 3.06/0.99  
% 3.06/0.99  fof(f74,plain,(
% 3.06/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.06/0.99    inference(cnf_transformation,[],[f39])).
% 3.06/0.99  
% 3.06/0.99  fof(f88,plain,(
% 3.06/0.99    k2_relset_1(sK0,sK1,sK2) = sK1),
% 3.06/0.99    inference(cnf_transformation,[],[f51])).
% 3.06/0.99  
% 3.06/0.99  fof(f13,axiom,(
% 3.06/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f36,plain,(
% 3.06/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.06/0.99    inference(ennf_transformation,[],[f13])).
% 3.06/0.99  
% 3.06/0.99  fof(f71,plain,(
% 3.06/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.06/0.99    inference(cnf_transformation,[],[f36])).
% 3.06/0.99  
% 3.06/0.99  fof(f11,axiom,(
% 3.06/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)))))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f34,plain,(
% 3.06/0.99    ! [X0] : (((k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.06/0.99    inference(ennf_transformation,[],[f11])).
% 3.06/0.99  
% 3.06/0.99  fof(f35,plain,(
% 3.06/0.99    ! [X0] : ((k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) & k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.06/0.99    inference(flattening,[],[f34])).
% 3.06/0.99  
% 3.06/0.99  fof(f67,plain,(
% 3.06/0.99    ( ! [X0] : (k2_relat_1(X0) = k1_relat_1(k2_funct_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.06/0.99    inference(cnf_transformation,[],[f35])).
% 3.06/0.99  
% 3.06/0.99  fof(f87,plain,(
% 3.06/0.99    v2_funct_1(sK2)),
% 3.06/0.99    inference(cnf_transformation,[],[f51])).
% 3.06/0.99  
% 3.06/0.99  fof(f84,plain,(
% 3.06/0.99    v1_funct_1(sK2)),
% 3.06/0.99    inference(cnf_transformation,[],[f51])).
% 3.06/0.99  
% 3.06/0.99  fof(f18,axiom,(
% 3.06/0.99    ! [X0,X1] : ((v1_funct_1(X1) & v1_relat_1(X1)) => (r1_tarski(k2_relat_1(X1),X0) => (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1))))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f42,plain,(
% 3.06/0.99    ! [X0,X1] : (((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0)) | (~v1_funct_1(X1) | ~v1_relat_1(X1)))),
% 3.06/0.99    inference(ennf_transformation,[],[f18])).
% 3.06/0.99  
% 3.06/0.99  fof(f43,plain,(
% 3.06/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) & v1_funct_2(X1,k1_relat_1(X1),X0) & v1_funct_1(X1)) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1))),
% 3.06/0.99    inference(flattening,[],[f42])).
% 3.06/0.99  
% 3.06/0.99  fof(f83,plain,(
% 3.06/0.99    ( ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X1),X0))) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.06/0.99    inference(cnf_transformation,[],[f43])).
% 3.06/0.99  
% 3.06/0.99  fof(f68,plain,(
% 3.06/0.99    ( ! [X0] : (k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.06/0.99    inference(cnf_transformation,[],[f35])).
% 3.06/0.99  
% 3.06/0.99  fof(f9,axiom,(
% 3.06/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f30,plain,(
% 3.06/0.99    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.06/0.99    inference(ennf_transformation,[],[f9])).
% 3.06/0.99  
% 3.06/0.99  fof(f31,plain,(
% 3.06/0.99    ! [X0] : ((v1_funct_1(k2_funct_1(X0)) & v1_relat_1(k2_funct_1(X0))) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.06/0.99    inference(flattening,[],[f30])).
% 3.06/0.99  
% 3.06/0.99  fof(f65,plain,(
% 3.06/0.99    ( ! [X0] : (v1_funct_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.06/0.99    inference(cnf_transformation,[],[f31])).
% 3.06/0.99  
% 3.06/0.99  fof(f64,plain,(
% 3.06/0.99    ( ! [X0] : (v1_relat_1(k2_funct_1(X0)) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.06/0.99    inference(cnf_transformation,[],[f31])).
% 3.06/0.99  
% 3.06/0.99  fof(f82,plain,(
% 3.06/0.99    ( ! [X0,X1] : (v1_funct_2(X1,k1_relat_1(X1),X0) | ~r1_tarski(k2_relat_1(X1),X0) | ~v1_funct_1(X1) | ~v1_relat_1(X1)) )),
% 3.06/0.99    inference(cnf_transformation,[],[f43])).
% 3.06/0.99  
% 3.06/0.99  fof(f89,plain,(
% 3.06/0.99    ~m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) | ~v1_funct_2(k2_funct_1(sK2),sK1,sK0) | ~v1_funct_1(k2_funct_1(sK2))),
% 3.06/0.99    inference(cnf_transformation,[],[f51])).
% 3.06/0.99  
% 3.06/0.99  fof(f1,axiom,(
% 3.06/0.99    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f46,plain,(
% 3.06/0.99    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.06/0.99    inference(nnf_transformation,[],[f1])).
% 3.06/0.99  
% 3.06/0.99  fof(f47,plain,(
% 3.06/0.99    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.06/0.99    inference(flattening,[],[f46])).
% 3.06/0.99  
% 3.06/0.99  fof(f53,plain,(
% 3.06/0.99    ( ! [X0,X1] : (r1_tarski(X1,X0) | X0 != X1) )),
% 3.06/0.99    inference(cnf_transformation,[],[f47])).
% 3.06/0.99  
% 3.06/0.99  fof(f90,plain,(
% 3.06/0.99    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.06/0.99    inference(equality_resolution,[],[f53])).
% 3.06/0.99  
% 3.06/0.99  fof(f6,axiom,(
% 3.06/0.99    ! [X0] : (v1_relat_1(X0) => ((k1_xboole_0 = k2_relat_1(X0) | k1_xboole_0 = k1_relat_1(X0)) => k1_xboole_0 = X0))),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f28,plain,(
% 3.06/0.99    ! [X0] : ((k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0))) | ~v1_relat_1(X0))),
% 3.06/0.99    inference(ennf_transformation,[],[f6])).
% 3.06/0.99  
% 3.06/0.99  fof(f29,plain,(
% 3.06/0.99    ! [X0] : (k1_xboole_0 = X0 | (k1_xboole_0 != k2_relat_1(X0) & k1_xboole_0 != k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 3.06/0.99    inference(flattening,[],[f28])).
% 3.06/0.99  
% 3.06/0.99  fof(f60,plain,(
% 3.06/0.99    ( ! [X0] : (k1_xboole_0 = X0 | k1_xboole_0 != k2_relat_1(X0) | ~v1_relat_1(X0)) )),
% 3.06/0.99    inference(cnf_transformation,[],[f29])).
% 3.06/0.99  
% 3.06/0.99  fof(f8,axiom,(
% 3.06/0.99    k1_xboole_0 = k6_relat_1(k1_xboole_0)),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f63,plain,(
% 3.06/0.99    k1_xboole_0 = k6_relat_1(k1_xboole_0)),
% 3.06/0.99    inference(cnf_transformation,[],[f8])).
% 3.06/0.99  
% 3.06/0.99  fof(f7,axiom,(
% 3.06/0.99    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f61,plain,(
% 3.06/0.99    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 3.06/0.99    inference(cnf_transformation,[],[f7])).
% 3.06/0.99  
% 3.06/0.99  fof(f2,axiom,(
% 3.06/0.99    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 3.06/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.06/0.99  
% 3.06/0.99  fof(f55,plain,(
% 3.06/0.99    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 3.06/0.99    inference(cnf_transformation,[],[f2])).
% 3.06/0.99  
% 3.06/0.99  cnf(c_28,plain,
% 3.06/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 3.06/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.06/0.99      | k1_relset_1(X1,X2,X0) = X1
% 3.06/0.99      | k1_xboole_0 = X2 ),
% 3.06/0.99      inference(cnf_transformation,[],[f75]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_36,negated_conjecture,
% 3.06/0.99      ( v1_funct_2(sK2,sK0,sK1) ),
% 3.06/0.99      inference(cnf_transformation,[],[f85]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1116,plain,
% 3.06/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.06/0.99      | k1_relset_1(X1,X2,X0) = X1
% 3.06/0.99      | sK0 != X1
% 3.06/0.99      | sK1 != X2
% 3.06/0.99      | sK2 != X0
% 3.06/0.99      | k1_xboole_0 = X2 ),
% 3.06/0.99      inference(resolution_lifted,[status(thm)],[c_28,c_36]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1117,plain,
% 3.06/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.06/0.99      | k1_relset_1(sK0,sK1,sK2) = sK0
% 3.06/0.99      | k1_xboole_0 = sK1 ),
% 3.06/0.99      inference(unflattening,[status(thm)],[c_1116]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_35,negated_conjecture,
% 3.06/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.06/0.99      inference(cnf_transformation,[],[f86]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1119,plain,
% 3.06/0.99      ( k1_relset_1(sK0,sK1,sK2) = sK0 | k1_xboole_0 = sK1 ),
% 3.06/0.99      inference(global_propositional_subsumption,
% 3.06/0.99                [status(thm)],
% 3.06/0.99                [c_1117,c_35]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1982,plain,
% 3.06/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_21,plain,
% 3.06/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.06/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f73]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1985,plain,
% 3.06/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.06/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4824,plain,
% 3.06/0.99      ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_1982,c_1985]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4986,plain,
% 3.06/0.99      ( k1_relat_1(sK2) = sK0 | sK1 = k1_xboole_0 ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_1119,c_4824]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_22,plain,
% 3.06/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.06/0.99      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f74]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1984,plain,
% 3.06/0.99      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.06/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4548,plain,
% 3.06/0.99      ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_1982,c_1984]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_33,negated_conjecture,
% 3.06/0.99      ( k2_relset_1(sK0,sK1,sK2) = sK1 ),
% 3.06/0.99      inference(cnf_transformation,[],[f88]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4549,plain,
% 3.06/0.99      ( k2_relat_1(sK2) = sK1 ),
% 3.06/0.99      inference(light_normalisation,[status(thm)],[c_4548,c_33]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_19,plain,
% 3.06/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.06/0.99      | v1_relat_1(X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1986,plain,
% 3.06/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.06/0.99      | v1_relat_1(X0) = iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_3018,plain,
% 3.06/0.99      ( v1_relat_1(sK2) = iProver_top ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_1982,c_1986]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_16,plain,
% 3.06/0.99      ( ~ v2_funct_1(X0)
% 3.06/0.99      | ~ v1_funct_1(X0)
% 3.06/0.99      | ~ v1_relat_1(X0)
% 3.06/0.99      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_34,negated_conjecture,
% 3.06/0.99      ( v2_funct_1(sK2) ),
% 3.06/0.99      inference(cnf_transformation,[],[f87]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_395,plain,
% 3.06/0.99      ( ~ v1_funct_1(X0)
% 3.06/0.99      | ~ v1_relat_1(X0)
% 3.06/0.99      | k1_relat_1(k2_funct_1(X0)) = k2_relat_1(X0)
% 3.06/0.99      | sK2 != X0 ),
% 3.06/0.99      inference(resolution_lifted,[status(thm)],[c_16,c_34]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_396,plain,
% 3.06/0.99      ( ~ v1_funct_1(sK2)
% 3.06/0.99      | ~ v1_relat_1(sK2)
% 3.06/0.99      | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.06/0.99      inference(unflattening,[status(thm)],[c_395]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_37,negated_conjecture,
% 3.06/0.99      ( v1_funct_1(sK2) ),
% 3.06/0.99      inference(cnf_transformation,[],[f84]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_398,plain,
% 3.06/0.99      ( ~ v1_relat_1(sK2)
% 3.06/0.99      | k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.06/0.99      inference(global_propositional_subsumption,
% 3.06/0.99                [status(thm)],
% 3.06/0.99                [c_396,c_37]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1979,plain,
% 3.06/0.99      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2)
% 3.06/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_398]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_3074,plain,
% 3.06/0.99      ( k1_relat_1(k2_funct_1(sK2)) = k2_relat_1(sK2) ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_3018,c_1979]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4557,plain,
% 3.06/0.99      ( k1_relat_1(k2_funct_1(sK2)) = sK1 ),
% 3.06/0.99      inference(demodulation,[status(thm)],[c_4549,c_3074]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_29,plain,
% 3.06/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1)))
% 3.06/0.99      | ~ r1_tarski(k2_relat_1(X0),X1)
% 3.06/0.99      | ~ v1_funct_1(X0)
% 3.06/0.99      | ~ v1_relat_1(X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f83]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1983,plain,
% 3.06/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(X0),X1))) = iProver_top
% 3.06/0.99      | r1_tarski(k2_relat_1(X0),X1) != iProver_top
% 3.06/0.99      | v1_funct_1(X0) != iProver_top
% 3.06/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_29]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_6228,plain,
% 3.06/0.99      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
% 3.06/0.99      | r1_tarski(k2_relat_1(k2_funct_1(sK2)),X0) != iProver_top
% 3.06/0.99      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.06/0.99      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_4557,c_1983]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_15,plain,
% 3.06/0.99      ( ~ v2_funct_1(X0)
% 3.06/0.99      | ~ v1_funct_1(X0)
% 3.06/0.99      | ~ v1_relat_1(X0)
% 3.06/0.99      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f68]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_409,plain,
% 3.06/0.99      ( ~ v1_funct_1(X0)
% 3.06/0.99      | ~ v1_relat_1(X0)
% 3.06/0.99      | k2_relat_1(k2_funct_1(X0)) = k1_relat_1(X0)
% 3.06/0.99      | sK2 != X0 ),
% 3.06/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_34]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_410,plain,
% 3.06/0.99      ( ~ v1_funct_1(sK2)
% 3.06/0.99      | ~ v1_relat_1(sK2)
% 3.06/0.99      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.06/0.99      inference(unflattening,[status(thm)],[c_409]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_412,plain,
% 3.06/0.99      ( ~ v1_relat_1(sK2)
% 3.06/0.99      | k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.06/0.99      inference(global_propositional_subsumption,
% 3.06/0.99                [status(thm)],
% 3.06/0.99                [c_410,c_37]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1978,plain,
% 3.06/0.99      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2)
% 3.06/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_412]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_3075,plain,
% 3.06/0.99      ( k2_relat_1(k2_funct_1(sK2)) = k1_relat_1(sK2) ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_3018,c_1978]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_6265,plain,
% 3.06/0.99      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
% 3.06/0.99      | r1_tarski(k1_relat_1(sK2),X0) != iProver_top
% 3.06/0.99      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.06/0.99      | v1_relat_1(k2_funct_1(sK2)) != iProver_top ),
% 3.06/0.99      inference(light_normalisation,[status(thm)],[c_6228,c_3075]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_38,plain,
% 3.06/0.99      ( v1_funct_1(sK2) = iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_37]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_40,plain,
% 3.06/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_35]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_12,plain,
% 3.06/0.99      ( ~ v1_funct_1(X0)
% 3.06/0.99      | v1_funct_1(k2_funct_1(X0))
% 3.06/0.99      | ~ v1_relat_1(X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f65]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_2259,plain,
% 3.06/0.99      ( v1_funct_1(k2_funct_1(sK2))
% 3.06/0.99      | ~ v1_funct_1(sK2)
% 3.06/0.99      | ~ v1_relat_1(sK2) ),
% 3.06/0.99      inference(instantiation,[status(thm)],[c_12]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_2260,plain,
% 3.06/0.99      ( v1_funct_1(k2_funct_1(sK2)) = iProver_top
% 3.06/0.99      | v1_funct_1(sK2) != iProver_top
% 3.06/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_2259]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_2262,plain,
% 3.06/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.06/0.99      | v1_relat_1(sK2) ),
% 3.06/0.99      inference(instantiation,[status(thm)],[c_19]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_2405,plain,
% 3.06/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.06/0.99      | v1_relat_1(sK2) ),
% 3.06/0.99      inference(instantiation,[status(thm)],[c_2262]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_2406,plain,
% 3.06/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.06/0.99      | v1_relat_1(sK2) = iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_2405]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_13,plain,
% 3.06/0.99      ( ~ v1_funct_1(X0)
% 3.06/0.99      | ~ v1_relat_1(X0)
% 3.06/0.99      | v1_relat_1(k2_funct_1(X0)) ),
% 3.06/0.99      inference(cnf_transformation,[],[f64]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_6342,plain,
% 3.06/0.99      ( ~ v1_funct_1(sK2)
% 3.06/0.99      | v1_relat_1(k2_funct_1(sK2))
% 3.06/0.99      | ~ v1_relat_1(sK2) ),
% 3.06/0.99      inference(instantiation,[status(thm)],[c_13]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_6343,plain,
% 3.06/0.99      ( v1_funct_1(sK2) != iProver_top
% 3.06/0.99      | v1_relat_1(k2_funct_1(sK2)) = iProver_top
% 3.06/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_6342]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_8125,plain,
% 3.06/0.99      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,X0))) = iProver_top
% 3.06/0.99      | r1_tarski(k1_relat_1(sK2),X0) != iProver_top ),
% 3.06/0.99      inference(global_propositional_subsumption,
% 3.06/0.99                [status(thm)],
% 3.06/0.99                [c_6265,c_38,c_40,c_2260,c_2406,c_6343]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_30,plain,
% 3.06/0.99      ( v1_funct_2(X0,k1_relat_1(X0),X1)
% 3.06/0.99      | ~ r1_tarski(k2_relat_1(X0),X1)
% 3.06/0.99      | ~ v1_funct_1(X0)
% 3.06/0.99      | ~ v1_relat_1(X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f82]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_32,negated_conjecture,
% 3.06/0.99      ( ~ v1_funct_2(k2_funct_1(sK2),sK1,sK0)
% 3.06/0.99      | ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.06/0.99      | ~ v1_funct_1(k2_funct_1(sK2)) ),
% 3.06/0.99      inference(cnf_transformation,[],[f89]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1127,plain,
% 3.06/0.99      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.06/0.99      | ~ r1_tarski(k2_relat_1(X0),X1)
% 3.06/0.99      | ~ v1_funct_1(X0)
% 3.06/0.99      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.06/0.99      | ~ v1_relat_1(X0)
% 3.06/0.99      | k2_funct_1(sK2) != X0
% 3.06/0.99      | k1_relat_1(X0) != sK1
% 3.06/0.99      | sK0 != X1 ),
% 3.06/0.99      inference(resolution_lifted,[status(thm)],[c_30,c_32]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1128,plain,
% 3.06/0.99      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.06/0.99      | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
% 3.06/0.99      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.06/0.99      | ~ v1_relat_1(k2_funct_1(sK2))
% 3.06/0.99      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 3.06/0.99      inference(unflattening,[status(thm)],[c_1127]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1140,plain,
% 3.06/0.99      ( ~ m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 3.06/0.99      | ~ r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0)
% 3.06/0.99      | ~ v1_funct_1(k2_funct_1(sK2))
% 3.06/0.99      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 3.06/0.99      inference(forward_subsumption_resolution,
% 3.06/0.99                [status(thm)],
% 3.06/0.99                [c_1128,c_19]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1968,plain,
% 3.06/0.99      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.06/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.06/0.99      | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top
% 3.06/0.99      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_1140]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1145,plain,
% 3.06/0.99      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.06/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.06/0.99      | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top
% 3.06/0.99      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_1140]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_2644,plain,
% 3.06/0.99      ( r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top
% 3.06/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.06/0.99      | k1_relat_1(k2_funct_1(sK2)) != sK1 ),
% 3.06/0.99      inference(global_propositional_subsumption,
% 3.06/0.99                [status(thm)],
% 3.06/0.99                [c_1968,c_38,c_40,c_1145,c_2260,c_2406]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_2645,plain,
% 3.06/0.99      ( k1_relat_1(k2_funct_1(sK2)) != sK1
% 3.06/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.06/0.99      | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top ),
% 3.06/0.99      inference(renaming,[status(thm)],[c_2644]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_3086,plain,
% 3.06/0.99      ( k2_relat_1(sK2) != sK1
% 3.06/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.06/0.99      | r1_tarski(k2_relat_1(k2_funct_1(sK2)),sK0) != iProver_top ),
% 3.06/0.99      inference(demodulation,[status(thm)],[c_3074,c_2645]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_3300,plain,
% 3.06/0.99      ( k2_relat_1(sK2) != sK1
% 3.06/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.06/0.99      | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
% 3.06/0.99      inference(light_normalisation,[status(thm)],[c_3086,c_3075]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4555,plain,
% 3.06/0.99      ( sK1 != sK1
% 3.06/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.06/0.99      | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
% 3.06/0.99      inference(demodulation,[status(thm)],[c_4549,c_3300]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4562,plain,
% 3.06/0.99      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 3.06/0.99      | r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
% 3.06/0.99      inference(equality_resolution_simp,[status(thm)],[c_4555]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_8138,plain,
% 3.06/0.99      ( r1_tarski(k1_relat_1(sK2),sK0) != iProver_top ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_8125,c_4562]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_8333,plain,
% 3.06/0.99      ( sK1 = k1_xboole_0 | r1_tarski(sK0,sK0) != iProver_top ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_4986,c_8138]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1,plain,
% 3.06/0.99      ( r1_tarski(X0,X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f90]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_3853,plain,
% 3.06/0.99      ( r1_tarski(sK0,sK0) ),
% 3.06/0.99      inference(instantiation,[status(thm)],[c_1]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_3856,plain,
% 3.06/0.99      ( r1_tarski(sK0,sK0) = iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_3853]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_9208,plain,
% 3.06/0.99      ( sK1 = k1_xboole_0 ),
% 3.06/0.99      inference(global_propositional_subsumption,
% 3.06/0.99                [status(thm)],
% 3.06/0.99                [c_8333,c_3856]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_7,plain,
% 3.06/0.99      ( ~ v1_relat_1(X0)
% 3.06/0.99      | k2_relat_1(X0) != k1_xboole_0
% 3.06/0.99      | k1_xboole_0 = X0 ),
% 3.06/0.99      inference(cnf_transformation,[],[f60]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_1992,plain,
% 3.06/0.99      ( k2_relat_1(X0) != k1_xboole_0
% 3.06/0.99      | k1_xboole_0 = X0
% 3.06/0.99      | v1_relat_1(X0) != iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4601,plain,
% 3.06/0.99      ( sK1 != k1_xboole_0
% 3.06/0.99      | sK2 = k1_xboole_0
% 3.06/0.99      | v1_relat_1(sK2) != iProver_top ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_4549,c_1992]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4989,plain,
% 3.06/0.99      ( sK2 = k1_xboole_0 | sK1 != k1_xboole_0 ),
% 3.06/0.99      inference(global_propositional_subsumption,
% 3.06/0.99                [status(thm)],
% 3.06/0.99                [c_4601,c_40,c_2406]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_4990,plain,
% 3.06/0.99      ( sK1 != k1_xboole_0 | sK2 = k1_xboole_0 ),
% 3.06/0.99      inference(renaming,[status(thm)],[c_4989]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_9228,plain,
% 3.06/0.99      ( sK2 = k1_xboole_0 | k1_xboole_0 != k1_xboole_0 ),
% 3.06/0.99      inference(demodulation,[status(thm)],[c_9208,c_4990]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_9286,plain,
% 3.06/0.99      ( sK2 = k1_xboole_0 ),
% 3.06/0.99      inference(equality_resolution_simp,[status(thm)],[c_9228]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_9596,plain,
% 3.06/0.99      ( r1_tarski(k1_relat_1(k1_xboole_0),sK0) != iProver_top ),
% 3.06/0.99      inference(demodulation,[status(thm)],[c_9286,c_8138]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_11,plain,
% 3.06/0.99      ( k6_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.06/0.99      inference(cnf_transformation,[],[f63]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_10,plain,
% 3.06/0.99      ( k1_relat_1(k6_relat_1(X0)) = X0 ),
% 3.06/0.99      inference(cnf_transformation,[],[f61]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_2399,plain,
% 3.06/0.99      ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
% 3.06/0.99      inference(superposition,[status(thm)],[c_11,c_10]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_9643,plain,
% 3.06/0.99      ( r1_tarski(k1_xboole_0,sK0) != iProver_top ),
% 3.06/0.99      inference(light_normalisation,[status(thm)],[c_9596,c_2399]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_3,plain,
% 3.06/0.99      ( r1_tarski(k1_xboole_0,X0) ),
% 3.06/0.99      inference(cnf_transformation,[],[f55]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_5234,plain,
% 3.06/0.99      ( r1_tarski(k1_xboole_0,sK0) ),
% 3.06/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(c_5237,plain,
% 3.06/0.99      ( r1_tarski(k1_xboole_0,sK0) = iProver_top ),
% 3.06/0.99      inference(predicate_to_equality,[status(thm)],[c_5234]) ).
% 3.06/0.99  
% 3.06/0.99  cnf(contradiction,plain,
% 3.06/0.99      ( $false ),
% 3.06/0.99      inference(minisat,[status(thm)],[c_9643,c_5237]) ).
% 3.06/0.99  
% 3.06/0.99  
% 3.06/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.06/0.99  
% 3.06/0.99  ------                               Statistics
% 3.06/0.99  
% 3.06/0.99  ------ General
% 3.06/0.99  
% 3.06/0.99  abstr_ref_over_cycles:                  0
% 3.06/0.99  abstr_ref_under_cycles:                 0
% 3.06/0.99  gc_basic_clause_elim:                   0
% 3.06/0.99  forced_gc_time:                         0
% 3.06/0.99  parsing_time:                           0.01
% 3.06/0.99  unif_index_cands_time:                  0.
% 3.06/0.99  unif_index_add_time:                    0.
% 3.06/0.99  orderings_time:                         0.
% 3.06/0.99  out_proof_time:                         0.01
% 3.06/0.99  total_time:                             0.262
% 3.06/0.99  num_of_symbols:                         53
% 3.06/0.99  num_of_terms:                           7208
% 3.06/0.99  
% 3.06/0.99  ------ Preprocessing
% 3.06/0.99  
% 3.06/0.99  num_of_splits:                          0
% 3.06/0.99  num_of_split_atoms:                     0
% 3.06/0.99  num_of_reused_defs:                     0
% 3.06/0.99  num_eq_ax_congr_red:                    15
% 3.06/0.99  num_of_sem_filtered_clauses:            1
% 3.06/0.99  num_of_subtypes:                        0
% 3.06/0.99  monotx_restored_types:                  0
% 3.06/0.99  sat_num_of_epr_types:                   0
% 3.06/0.99  sat_num_of_non_cyclic_types:            0
% 3.06/0.99  sat_guarded_non_collapsed_types:        0
% 3.06/0.99  num_pure_diseq_elim:                    0
% 3.06/0.99  simp_replaced_by:                       0
% 3.06/0.99  res_preprocessed:                       177
% 3.06/0.99  prep_upred:                             0
% 3.06/0.99  prep_unflattend:                        66
% 3.06/0.99  smt_new_axioms:                         0
% 3.06/0.99  pred_elim_cands:                        4
% 3.06/0.99  pred_elim:                              3
% 3.06/0.99  pred_elim_cl:                           0
% 3.06/0.99  pred_elim_cycles:                       6
% 3.06/0.99  merged_defs:                            0
% 3.06/0.99  merged_defs_ncl:                        0
% 3.06/0.99  bin_hyper_res:                          0
% 3.06/0.99  prep_cycles:                            4
% 3.06/0.99  pred_elim_time:                         0.019
% 3.06/0.99  splitting_time:                         0.
% 3.06/0.99  sem_filter_time:                        0.
% 3.06/0.99  monotx_time:                            0.001
% 3.06/0.99  subtype_inf_time:                       0.
% 3.06/0.99  
% 3.06/0.99  ------ Problem properties
% 3.06/0.99  
% 3.06/0.99  clauses:                                36
% 3.06/0.99  conjectures:                            3
% 3.06/0.99  epr:                                    6
% 3.06/0.99  horn:                                   32
% 3.06/0.99  ground:                                 16
% 3.06/0.99  unary:                                  10
% 3.06/0.99  binary:                                 10
% 3.06/0.99  lits:                                   94
% 3.06/0.99  lits_eq:                                40
% 3.06/0.99  fd_pure:                                0
% 3.06/0.99  fd_pseudo:                              0
% 3.06/0.99  fd_cond:                                4
% 3.06/0.99  fd_pseudo_cond:                         1
% 3.06/0.99  ac_symbols:                             0
% 3.06/0.99  
% 3.06/0.99  ------ Propositional Solver
% 3.06/0.99  
% 3.06/0.99  prop_solver_calls:                      28
% 3.06/0.99  prop_fast_solver_calls:                 1432
% 3.06/0.99  smt_solver_calls:                       0
% 3.06/0.99  smt_fast_solver_calls:                  0
% 3.06/0.99  prop_num_of_clauses:                    3616
% 3.06/0.99  prop_preprocess_simplified:             9415
% 3.06/0.99  prop_fo_subsumed:                       43
% 3.06/0.99  prop_solver_time:                       0.
% 3.06/0.99  smt_solver_time:                        0.
% 3.06/0.99  smt_fast_solver_time:                   0.
% 3.06/0.99  prop_fast_solver_time:                  0.
% 3.06/0.99  prop_unsat_core_time:                   0.
% 3.06/0.99  
% 3.06/0.99  ------ QBF
% 3.06/0.99  
% 3.06/0.99  qbf_q_res:                              0
% 3.06/0.99  qbf_num_tautologies:                    0
% 3.06/0.99  qbf_prep_cycles:                        0
% 3.06/0.99  
% 3.06/0.99  ------ BMC1
% 3.06/0.99  
% 3.06/0.99  bmc1_current_bound:                     -1
% 3.06/0.99  bmc1_last_solved_bound:                 -1
% 3.06/0.99  bmc1_unsat_core_size:                   -1
% 3.06/0.99  bmc1_unsat_core_parents_size:           -1
% 3.06/0.99  bmc1_merge_next_fun:                    0
% 3.06/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.06/0.99  
% 3.06/0.99  ------ Instantiation
% 3.06/0.99  
% 3.06/0.99  inst_num_of_clauses:                    1180
% 3.06/0.99  inst_num_in_passive:                    434
% 3.06/0.99  inst_num_in_active:                     479
% 3.06/0.99  inst_num_in_unprocessed:                267
% 3.06/0.99  inst_num_of_loops:                      530
% 3.06/0.99  inst_num_of_learning_restarts:          0
% 3.06/0.99  inst_num_moves_active_passive:          48
% 3.06/0.99  inst_lit_activity:                      0
% 3.06/0.99  inst_lit_activity_moves:                0
% 3.06/0.99  inst_num_tautologies:                   0
% 3.06/0.99  inst_num_prop_implied:                  0
% 3.06/0.99  inst_num_existing_simplified:           0
% 3.06/0.99  inst_num_eq_res_simplified:             0
% 3.06/0.99  inst_num_child_elim:                    0
% 3.06/0.99  inst_num_of_dismatching_blockings:      220
% 3.06/0.99  inst_num_of_non_proper_insts:           951
% 3.06/0.99  inst_num_of_duplicates:                 0
% 3.06/0.99  inst_inst_num_from_inst_to_res:         0
% 3.06/0.99  inst_dismatching_checking_time:         0.
% 3.06/0.99  
% 3.06/0.99  ------ Resolution
% 3.06/0.99  
% 3.06/0.99  res_num_of_clauses:                     0
% 3.06/0.99  res_num_in_passive:                     0
% 3.06/0.99  res_num_in_active:                      0
% 3.06/0.99  res_num_of_loops:                       181
% 3.06/0.99  res_forward_subset_subsumed:            66
% 3.06/0.99  res_backward_subset_subsumed:           2
% 3.06/0.99  res_forward_subsumed:                   0
% 3.06/0.99  res_backward_subsumed:                  0
% 3.06/0.99  res_forward_subsumption_resolution:     3
% 3.06/0.99  res_backward_subsumption_resolution:    0
% 3.06/0.99  res_clause_to_clause_subsumption:       319
% 3.06/0.99  res_orphan_elimination:                 0
% 3.06/0.99  res_tautology_del:                      80
% 3.06/0.99  res_num_eq_res_simplified:              0
% 3.06/0.99  res_num_sel_changes:                    0
% 3.06/0.99  res_moves_from_active_to_pass:          0
% 3.06/0.99  
% 3.06/0.99  ------ Superposition
% 3.06/0.99  
% 3.06/0.99  sup_time_total:                         0.
% 3.06/0.99  sup_time_generating:                    0.
% 3.06/0.99  sup_time_sim_full:                      0.
% 3.06/0.99  sup_time_sim_immed:                     0.
% 3.06/0.99  
% 3.06/0.99  sup_num_of_clauses:                     79
% 3.06/0.99  sup_num_in_active:                      41
% 3.06/0.99  sup_num_in_passive:                     38
% 3.06/0.99  sup_num_of_loops:                       105
% 3.06/0.99  sup_fw_superposition:                   61
% 3.06/0.99  sup_bw_superposition:                   56
% 3.06/0.99  sup_immediate_simplified:               80
% 3.06/0.99  sup_given_eliminated:                   0
% 3.06/0.99  comparisons_done:                       0
% 3.06/0.99  comparisons_avoided:                    8
% 3.06/0.99  
% 3.06/0.99  ------ Simplifications
% 3.06/0.99  
% 3.06/0.99  
% 3.06/0.99  sim_fw_subset_subsumed:                 10
% 3.06/0.99  sim_bw_subset_subsumed:                 9
% 3.06/0.99  sim_fw_subsumed:                        1
% 3.06/0.99  sim_bw_subsumed:                        2
% 3.06/0.99  sim_fw_subsumption_res:                 1
% 3.06/0.99  sim_bw_subsumption_res:                 1
% 3.06/0.99  sim_tautology_del:                      2
% 3.06/0.99  sim_eq_tautology_del:                   23
% 3.06/0.99  sim_eq_res_simp:                        7
% 3.06/0.99  sim_fw_demodulated:                     7
% 3.06/0.99  sim_bw_demodulated:                     67
% 3.06/0.99  sim_light_normalised:                   55
% 3.06/0.99  sim_joinable_taut:                      0
% 3.06/0.99  sim_joinable_simp:                      0
% 3.06/0.99  sim_ac_normalised:                      0
% 3.06/0.99  sim_smt_subsumption:                    0
% 3.06/0.99  
%------------------------------------------------------------------------------
