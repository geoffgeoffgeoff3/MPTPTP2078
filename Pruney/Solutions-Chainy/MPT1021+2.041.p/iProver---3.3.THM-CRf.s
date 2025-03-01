%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:07:26 EST 2020

% Result     : Theorem 3.22s
% Output     : CNFRefutation 3.22s
% Verified   : 
% Statistics : Number of formulae       :  180 ( 829 expanded)
%              Number of clauses        :  116 ( 274 expanded)
%              Number of leaves         :   20 ( 163 expanded)
%              Depth                    :   17
%              Number of atoms          :  608 (3905 expanded)
%              Number of equality atoms :  247 ( 442 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :   12 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f15,conjecture,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => ( r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
        & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0,X1] :
        ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
          & v3_funct_2(X1,X0,X0)
          & v1_funct_2(X1,X0,X0)
          & v1_funct_1(X1) )
       => ( r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
          & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f38,plain,(
    ? [X0,X1] :
      ( ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
        | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v3_funct_2(X1,X0,X0)
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f39,plain,(
    ? [X0,X1] :
      ( ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
        | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) )
      & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v3_funct_2(X1,X0,X0)
      & v1_funct_2(X1,X0,X0)
      & v1_funct_1(X1) ) ),
    inference(flattening,[],[f38])).

fof(f43,plain,
    ( ? [X0,X1] :
        ( ( ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0))
          | ~ r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0)) )
        & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
   => ( ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1))
        | ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) )
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
      & v3_funct_2(sK2,sK1,sK1)
      & v1_funct_2(sK2,sK1,sK1)
      & v1_funct_1(sK2) ) ),
    introduced(choice_axiom,[])).

fof(f44,plain,
    ( ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1))
      | ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) )
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    & v3_funct_2(sK2,sK1,sK1)
    & v1_funct_2(sK2,sK1,sK1)
    & v1_funct_1(sK2) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f39,f43])).

fof(f69,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
    inference(cnf_transformation,[],[f44])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => k1_relset_1(X0,X0,X1) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( k1_relset_1(X0,X0,X1) = X0
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f37,plain,(
    ! [X0,X1] :
      ( k1_relset_1(X0,X0,X1) = X0
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(flattening,[],[f36])).

fof(f65,plain,(
    ! [X0,X1] :
      ( k1_relset_1(X0,X0,X1) = X0
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f5,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f66,plain,(
    v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f44])).

fof(f67,plain,(
    v1_funct_2(sK2,sK1,sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f3,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f48,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f2,axiom,(
    ! [X0] :
      ( ( v1_funct_1(X0)
        & v1_relat_1(X0) )
     => ( v2_funct_1(X0)
       => ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
          & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f20,plain,(
    ! [X0] :
      ( ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
        & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) )
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f19])).

fof(f46,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f13,axiom,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0) ),
    inference(cnf_transformation,[],[f13])).

fof(f72,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f46,f64])).

fof(f68,plain,(
    v3_funct_2(sK2,sK1,sK1) ),
    inference(cnf_transformation,[],[f44])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( v3_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( v2_funct_2(X2,X1)
          & v2_funct_1(X2)
          & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f26])).

fof(f54,plain,(
    ! [X2,X0,X1] :
      ( v2_funct_1(X2)
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => k2_funct_1(X1) = k2_funct_2(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X1) = k2_funct_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X1) = k2_funct_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(flattening,[],[f34])).

fof(f63,plain,(
    ! [X0,X1] :
      ( k2_funct_1(X1) = k2_funct_2(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(X1,X0,X0)
        & v1_funct_2(X1,X0,X0)
        & v1_funct_1(X1) )
     => ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_1(k2_funct_2(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_1(k2_funct_2(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
        & v3_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_2(k2_funct_2(X0,X1),X0,X0)
        & v1_funct_1(k2_funct_2(X0,X1)) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(flattening,[],[f30])).

fof(f61,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f11,axiom,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( ( m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
        & v1_funct_1(X5)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & v1_funct_1(X4) )
     => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f33,plain,(
    ! [X0,X1,X2,X3,X4,X5] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(flattening,[],[f32])).

fof(f62,plain,(
    ! [X4,X2,X0,X5,X3,X1] :
      ( k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5)
      | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
      | ~ v1_funct_1(X5)
      | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_funct_1(X4) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f58,plain,(
    ! [X0,X1] :
      ( v1_funct_1(k2_funct_2(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      | ~ v3_funct_2(X1,X0,X0)
      | ~ v1_funct_2(X1,X0,X0)
      | ~ v1_funct_1(X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f70,plain,
    ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1))
    | ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) ),
    inference(cnf_transformation,[],[f44])).

fof(f7,axiom,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f7])).

fof(f73,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(definition_unfolding,[],[f52,f64])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => r2_relset_1(X0,X1,X2,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f25,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f24])).

fof(f51,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( v2_funct_2(X2,X1)
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f4])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f28])).

fof(f42,plain,(
    ! [X0,X1] :
      ( ( ( v2_funct_2(X1,X0)
          | k2_relat_1(X1) != X0 )
        & ( k2_relat_1(X1) = X0
          | ~ v2_funct_2(X1,X0) ) )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f29])).

fof(f56,plain,(
    ! [X0,X1] :
      ( k2_relat_1(X1) = X0
      | ~ v2_funct_2(X1,X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f42])).

fof(f47,plain,(
    ! [X0] :
      ( k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f71,plain,(
    ! [X0] :
      ( k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0))
      | ~ v2_funct_1(X0)
      | ~ v1_funct_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f47,f64])).

cnf(c_699,plain,
    ( X0_50 != X1_50
    | X2_50 != X1_50
    | X2_50 = X0_50 ),
    theory(equality)).

cnf(c_1430,plain,
    ( X0_50 != X1_50
    | X0_50 = k6_partfun1(X0_51)
    | k6_partfun1(X0_51) != X1_50 ),
    inference(instantiation,[status(thm)],[c_699])).

cnf(c_2987,plain,
    ( X0_50 != k5_relat_1(k2_funct_1(X1_50),X1_50)
    | X0_50 = k6_partfun1(sK1)
    | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(X1_50),X1_50) ),
    inference(instantiation,[status(thm)],[c_1430])).

cnf(c_4562,plain,
    ( k1_partfun1(X0_51,X1_51,X2_51,X3_51,k2_funct_1(sK2),sK2) != k5_relat_1(k2_funct_1(sK2),sK2)
    | k1_partfun1(X0_51,X1_51,X2_51,X3_51,k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
    | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(sK2),sK2) ),
    inference(instantiation,[status(thm)],[c_2987])).

cnf(c_4566,plain,
    ( k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) != k5_relat_1(k2_funct_1(sK2),sK2)
    | k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
    | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(sK2),sK2) ),
    inference(instantiation,[status(thm)],[c_4562])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_677,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
    inference(subtyping,[status(esa)],[c_21])).

cnf(c_1139,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_677])).

cnf(c_19,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | k1_relset_1(X1,X1,X0) = X1 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_679,plain,
    ( ~ v1_funct_2(X0_50,X0_51,X0_51)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
    | ~ v1_funct_1(X0_50)
    | k1_relset_1(X0_51,X0_51,X0_50) = X0_51 ),
    inference(subtyping,[status(esa)],[c_19])).

cnf(c_1137,plain,
    ( k1_relset_1(X0_51,X0_51,X0_50) = X0_51
    | v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_679])).

cnf(c_2215,plain,
    ( k1_relset_1(sK1,sK1,sK2) = sK1
    | v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1139,c_1137])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_689,plain,
    ( ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | k1_relset_1(X0_51,X1_51,X0_50) = k1_relat_1(X0_50) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_1127,plain,
    ( k1_relset_1(X0_51,X1_51,X0_50) = k1_relat_1(X0_50)
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_689])).

cnf(c_1466,plain,
    ( k1_relset_1(sK1,sK1,sK2) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1139,c_1127])).

cnf(c_2248,plain,
    ( k1_relat_1(sK2) = sK1
    | v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2215,c_1466])).

cnf(c_24,negated_conjecture,
    ( v1_funct_1(sK2) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_25,plain,
    ( v1_funct_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_23,negated_conjecture,
    ( v1_funct_2(sK2,sK1,sK1) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_26,plain,
    ( v1_funct_2(sK2,sK1,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_2778,plain,
    ( k1_relat_1(sK2) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2248,c_25,c_26])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_690,plain,
    ( ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | v1_relat_1(X0_50) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_1126,plain,
    ( m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_relat_1(X0_50) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_690])).

cnf(c_1377,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1139,c_1126])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_691,plain,
    ( ~ v1_relat_1(X0_50)
    | ~ v1_funct_1(X0_50)
    | ~ v2_funct_1(X0_50)
    | k5_relat_1(X0_50,k2_funct_1(X0_50)) = k6_partfun1(k1_relat_1(X0_50)) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_1125,plain,
    ( k5_relat_1(X0_50,k2_funct_1(X0_50)) = k6_partfun1(k1_relat_1(X0_50))
    | v1_relat_1(X0_50) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v2_funct_1(X0_50) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_691])).

cnf(c_1675,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2))
    | v1_funct_1(sK2) != iProver_top
    | v2_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1377,c_1125])).

cnf(c_22,negated_conjecture,
    ( v3_funct_2(sK2,sK1,sK1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_735,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2)
    | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_691])).

cnf(c_738,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_690])).

cnf(c_9,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_686,plain,
    ( ~ v3_funct_2(X0_50,X0_51,X1_51)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | ~ v1_funct_1(X0_50)
    | v2_funct_1(X0_50) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_748,plain,
    ( ~ v3_funct_2(sK2,sK1,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ v1_funct_1(sK2)
    | v2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_686])).

cnf(c_1819,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1675,c_24,c_22,c_21,c_735,c_738,c_748])).

cnf(c_2781,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK1) ),
    inference(demodulation,[status(thm)],[c_2778,c_1819])).

cnf(c_18,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | k2_funct_2(X1,X0) = k2_funct_1(X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_680,plain,
    ( ~ v1_funct_2(X0_50,X0_51,X0_51)
    | ~ v3_funct_2(X0_50,X0_51,X0_51)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
    | ~ v1_funct_1(X0_50)
    | k2_funct_2(X0_51,X0_50) = k2_funct_1(X0_50) ),
    inference(subtyping,[status(esa)],[c_18])).

cnf(c_1136,plain,
    ( k2_funct_2(X0_51,X0_50) = k2_funct_1(X0_50)
    | v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_680])).

cnf(c_2382,plain,
    ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2)
    | v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v3_funct_2(sK2,sK1,sK1) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1139,c_1136])).

cnf(c_766,plain,
    ( ~ v1_funct_2(sK2,sK1,sK1)
    | ~ v3_funct_2(sK2,sK1,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ v1_funct_1(sK2)
    | k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_680])).

cnf(c_2562,plain,
    ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2382,c_24,c_23,c_22,c_21,c_766])).

cnf(c_13,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_685,plain,
    ( ~ v1_funct_2(X0_50,X0_51,X0_51)
    | ~ v3_funct_2(X0_50,X0_51,X0_51)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
    | m1_subset_1(k2_funct_2(X0_51,X0_50),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
    | ~ v1_funct_1(X0_50) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_1131,plain,
    ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
    | m1_subset_1(k2_funct_2(X0_51,X0_50),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) = iProver_top
    | v1_funct_1(X0_50) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_685])).

cnf(c_2575,plain,
    ( v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v3_funct_2(sK2,sK1,sK1) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2562,c_1131])).

cnf(c_27,plain,
    ( v3_funct_2(sK2,sK1,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_28,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_2849,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2575,c_25,c_26,c_27,c_28])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | ~ v1_funct_1(X3)
    | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_681,plain,
    ( ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | ~ m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51)))
    | ~ v1_funct_1(X0_50)
    | ~ v1_funct_1(X1_50)
    | k1_partfun1(X2_51,X3_51,X0_51,X1_51,X1_50,X0_50) = k5_relat_1(X1_50,X0_50) ),
    inference(subtyping,[status(esa)],[c_17])).

cnf(c_1135,plain,
    ( k1_partfun1(X0_51,X1_51,X2_51,X3_51,X0_50,X1_50) = k5_relat_1(X0_50,X1_50)
    | m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51))) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v1_funct_1(X1_50) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_681])).

cnf(c_3069,plain,
    ( k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50)
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1139,c_1135])).

cnf(c_3360,plain,
    ( v1_funct_1(X0_50) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3069,c_25])).

cnf(c_3361,plain,
    ( k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50)
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top ),
    inference(renaming,[status(thm)],[c_3360])).

cnf(c_3371,plain,
    ( k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)) = k5_relat_1(sK2,k2_funct_1(sK2))
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2849,c_3361])).

cnf(c_16,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_2(X1,X0)) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_682,plain,
    ( ~ v1_funct_2(X0_50,X0_51,X0_51)
    | ~ v3_funct_2(X0_50,X0_51,X0_51)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
    | ~ v1_funct_1(X0_50)
    | v1_funct_1(k2_funct_2(X0_51,X0_50)) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_1134,plain,
    ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v1_funct_1(k2_funct_2(X0_51,X0_50)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_682])).

cnf(c_2268,plain,
    ( v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v3_funct_2(sK2,sK1,sK1) != iProver_top
    | v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1139,c_1134])).

cnf(c_759,plain,
    ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v1_funct_1(k2_funct_2(X0_51,X0_50)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_682])).

cnf(c_761,plain,
    ( v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v3_funct_2(sK2,sK1,sK1) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_759])).

cnf(c_2556,plain,
    ( v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2268,c_25,c_26,c_27,c_28,c_761])).

cnf(c_2565,plain,
    ( v1_funct_1(k2_funct_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2562,c_2556])).

cnf(c_3629,plain,
    ( k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)) = k5_relat_1(sK2,k2_funct_1(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3371,c_2565])).

cnf(c_20,negated_conjecture,
    ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1))
    | ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_678,negated_conjecture,
    ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1))
    | ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) ),
    inference(subtyping,[status(esa)],[c_20])).

cnf(c_1138,plain,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1)) != iProver_top
    | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_678])).

cnf(c_2566,plain,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
    | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)),k6_partfun1(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2562,c_1138])).

cnf(c_3632,plain,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
    | r2_relset_1(sK1,sK1,k5_relat_1(sK2,k2_funct_1(sK2)),k6_partfun1(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3629,c_2566])).

cnf(c_4506,plain,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
    | r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2781,c_3632])).

cnf(c_707,plain,
    ( ~ r2_relset_1(X0_51,X1_51,X0_50,X1_50)
    | r2_relset_1(X2_51,X3_51,X2_50,X3_50)
    | X2_51 != X0_51
    | X3_51 != X1_51
    | X2_50 != X0_50
    | X3_50 != X1_50 ),
    theory(equality)).

cnf(c_2202,plain,
    ( ~ r2_relset_1(X0_51,X1_51,X0_50,X1_50)
    | r2_relset_1(X2_51,X3_51,k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X2_50),k6_partfun1(X8_51))
    | X2_51 != X0_51
    | X3_51 != X1_51
    | k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X2_50) != X0_50
    | k6_partfun1(X8_51) != X1_50 ),
    inference(instantiation,[status(thm)],[c_707])).

cnf(c_3251,plain,
    ( ~ r2_relset_1(X0_51,X1_51,X0_50,k6_partfun1(X2_51))
    | r2_relset_1(X3_51,X4_51,k1_partfun1(X5_51,X6_51,X7_51,X8_51,k2_funct_1(sK2),X1_50),k6_partfun1(X9_51))
    | X3_51 != X0_51
    | X4_51 != X1_51
    | k1_partfun1(X5_51,X6_51,X7_51,X8_51,k2_funct_1(sK2),X1_50) != X0_50
    | k6_partfun1(X9_51) != k6_partfun1(X2_51) ),
    inference(instantiation,[status(thm)],[c_2202])).

cnf(c_4334,plain,
    ( r2_relset_1(X0_51,X1_51,k1_partfun1(X2_51,X3_51,X4_51,X5_51,k2_funct_1(sK2),X0_50),k6_partfun1(X6_51))
    | ~ r2_relset_1(X7_51,X8_51,k6_partfun1(X9_51),k6_partfun1(X9_51))
    | X0_51 != X7_51
    | X1_51 != X8_51
    | k1_partfun1(X2_51,X3_51,X4_51,X5_51,k2_funct_1(sK2),X0_50) != k6_partfun1(X9_51)
    | k6_partfun1(X6_51) != k6_partfun1(X9_51) ),
    inference(instantiation,[status(thm)],[c_3251])).

cnf(c_4336,plain,
    ( X0_51 != X1_51
    | X2_51 != X3_51
    | k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X0_50) != k6_partfun1(X8_51)
    | k6_partfun1(X9_51) != k6_partfun1(X8_51)
    | r2_relset_1(X0_51,X2_51,k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X0_50),k6_partfun1(X9_51)) = iProver_top
    | r2_relset_1(X1_51,X3_51,k6_partfun1(X8_51),k6_partfun1(X8_51)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4334])).

cnf(c_4338,plain,
    ( sK1 != sK1
    | k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) != k6_partfun1(sK1)
    | k6_partfun1(sK1) != k6_partfun1(sK1)
    | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) = iProver_top
    | r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_4336])).

cnf(c_3073,plain,
    ( k1_partfun1(sK1,sK1,X0_51,X1_51,k2_funct_1(sK2),X0_50) = k5_relat_1(k2_funct_1(sK2),X0_50)
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2849,c_1135])).

cnf(c_3133,plain,
    ( k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) = k5_relat_1(k2_funct_1(sK2),sK2)
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_3073])).

cnf(c_700,plain,
    ( X0_51 != X1_51
    | X2_51 != X1_51
    | X2_51 = X0_51 ),
    theory(equality)).

cnf(c_2141,plain,
    ( k2_relat_1(X0_50) != X0_51
    | sK1 != X0_51
    | sK1 = k2_relat_1(X0_50) ),
    inference(instantiation,[status(thm)],[c_700])).

cnf(c_2142,plain,
    ( k2_relat_1(sK2) != sK1
    | sK1 = k2_relat_1(sK2)
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_2141])).

cnf(c_704,plain,
    ( X0_51 != X1_51
    | k6_partfun1(X0_51) = k6_partfun1(X1_51) ),
    theory(equality)).

cnf(c_1401,plain,
    ( sK1 != X0_51
    | k6_partfun1(sK1) = k6_partfun1(X0_51) ),
    inference(instantiation,[status(thm)],[c_704])).

cnf(c_1922,plain,
    ( sK1 != k2_relat_1(X0_50)
    | k6_partfun1(sK1) = k6_partfun1(k2_relat_1(X0_50)) ),
    inference(instantiation,[status(thm)],[c_1401])).

cnf(c_1923,plain,
    ( sK1 != k2_relat_1(sK2)
    | k6_partfun1(sK1) = k6_partfun1(k2_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_1922])).

cnf(c_1399,plain,
    ( X0_50 != X1_50
    | k6_partfun1(sK1) != X1_50
    | k6_partfun1(sK1) = X0_50 ),
    inference(instantiation,[status(thm)],[c_699])).

cnf(c_1489,plain,
    ( X0_50 != k6_partfun1(X0_51)
    | k6_partfun1(sK1) = X0_50
    | k6_partfun1(sK1) != k6_partfun1(X0_51) ),
    inference(instantiation,[status(thm)],[c_1399])).

cnf(c_1582,plain,
    ( k5_relat_1(k2_funct_1(X0_50),X0_50) != k6_partfun1(k2_relat_1(X0_50))
    | k6_partfun1(sK1) = k5_relat_1(k2_funct_1(X0_50),X0_50)
    | k6_partfun1(sK1) != k6_partfun1(k2_relat_1(X0_50)) ),
    inference(instantiation,[status(thm)],[c_1489])).

cnf(c_1583,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) != k6_partfun1(k2_relat_1(sK2))
    | k6_partfun1(sK1) = k5_relat_1(k2_funct_1(sK2),sK2)
    | k6_partfun1(sK1) != k6_partfun1(k2_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_1582])).

cnf(c_7,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_687,plain,
    ( m1_subset_1(k6_partfun1(X0_51),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_1129,plain,
    ( m1_subset_1(k6_partfun1(X0_51),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_687])).

cnf(c_6,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_688,plain,
    ( r2_relset_1(X0_51,X1_51,X0_50,X0_50)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | ~ m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_1128,plain,
    ( r2_relset_1(X0_51,X1_51,X0_50,X0_50) = iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_688])).

cnf(c_1552,plain,
    ( r2_relset_1(X0_51,X0_51,k6_partfun1(X0_51),k6_partfun1(X0_51)) = iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1129,c_1128])).

cnf(c_1568,plain,
    ( r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1552])).

cnf(c_8,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | v2_funct_2(X0,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_4,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_12,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_278,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_4,c_12])).

cnf(c_290,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | k2_relat_1(X0) = X1 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_278,c_3])).

cnf(c_363,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
    | ~ v1_funct_1(X0)
    | X3 != X0
    | X5 != X2
    | k2_relat_1(X3) = X5 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_290])).

cnf(c_364,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ v1_funct_1(X0)
    | k2_relat_1(X0) = X2 ),
    inference(unflattening,[status(thm)],[c_363])).

cnf(c_673,plain,
    ( ~ v3_funct_2(X0_50,X0_51,X1_51)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X2_51,X1_51)))
    | ~ v1_funct_1(X0_50)
    | k2_relat_1(X0_50) = X1_51 ),
    inference(subtyping,[status(esa)],[c_364])).

cnf(c_777,plain,
    ( ~ v3_funct_2(sK2,sK1,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ v1_funct_1(sK2)
    | k2_relat_1(sK2) = sK1 ),
    inference(instantiation,[status(thm)],[c_673])).

cnf(c_1,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_funct_1(X0)
    | ~ v2_funct_1(X0)
    | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_692,plain,
    ( ~ v1_relat_1(X0_50)
    | ~ v1_funct_1(X0_50)
    | ~ v2_funct_1(X0_50)
    | k5_relat_1(k2_funct_1(X0_50),X0_50) = k6_partfun1(k2_relat_1(X0_50)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_732,plain,
    ( ~ v1_relat_1(sK2)
    | ~ v1_funct_1(sK2)
    | ~ v2_funct_1(sK2)
    | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(k2_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_692])).

cnf(c_696,plain,
    ( X0_51 = X0_51 ),
    theory(equality)).

cnf(c_725,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_696])).

cnf(c_715,plain,
    ( sK1 != sK1
    | k6_partfun1(sK1) = k6_partfun1(sK1) ),
    inference(instantiation,[status(thm)],[c_704])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4566,c_4506,c_4338,c_3133,c_2565,c_2142,c_1923,c_1583,c_1568,c_777,c_748,c_738,c_732,c_725,c_715,c_28,c_21,c_22,c_25,c_24])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:34:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 3.22/0.99  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.22/0.99  
% 3.22/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.22/0.99  
% 3.22/0.99  ------  iProver source info
% 3.22/0.99  
% 3.22/0.99  git: date: 2020-06-30 10:37:57 +0100
% 3.22/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.22/0.99  git: non_committed_changes: false
% 3.22/0.99  git: last_make_outside_of_git: false
% 3.22/0.99  
% 3.22/0.99  ------ 
% 3.22/0.99  
% 3.22/0.99  ------ Input Options
% 3.22/0.99  
% 3.22/0.99  --out_options                           all
% 3.22/0.99  --tptp_safe_out                         true
% 3.22/0.99  --problem_path                          ""
% 3.22/0.99  --include_path                          ""
% 3.22/0.99  --clausifier                            res/vclausify_rel
% 3.22/0.99  --clausifier_options                    --mode clausify
% 3.22/0.99  --stdin                                 false
% 3.22/0.99  --stats_out                             all
% 3.22/0.99  
% 3.22/0.99  ------ General Options
% 3.22/0.99  
% 3.22/0.99  --fof                                   false
% 3.22/0.99  --time_out_real                         305.
% 3.22/0.99  --time_out_virtual                      -1.
% 3.22/0.99  --symbol_type_check                     false
% 3.22/0.99  --clausify_out                          false
% 3.22/0.99  --sig_cnt_out                           false
% 3.22/0.99  --trig_cnt_out                          false
% 3.22/0.99  --trig_cnt_out_tolerance                1.
% 3.22/0.99  --trig_cnt_out_sk_spl                   false
% 3.22/0.99  --abstr_cl_out                          false
% 3.22/0.99  
% 3.22/0.99  ------ Global Options
% 3.22/0.99  
% 3.22/0.99  --schedule                              default
% 3.22/0.99  --add_important_lit                     false
% 3.22/0.99  --prop_solver_per_cl                    1000
% 3.22/0.99  --min_unsat_core                        false
% 3.22/0.99  --soft_assumptions                      false
% 3.22/0.99  --soft_lemma_size                       3
% 3.22/0.99  --prop_impl_unit_size                   0
% 3.22/0.99  --prop_impl_unit                        []
% 3.22/0.99  --share_sel_clauses                     true
% 3.22/0.99  --reset_solvers                         false
% 3.22/0.99  --bc_imp_inh                            [conj_cone]
% 3.22/0.99  --conj_cone_tolerance                   3.
% 3.22/0.99  --extra_neg_conj                        none
% 3.22/0.99  --large_theory_mode                     true
% 3.22/0.99  --prolific_symb_bound                   200
% 3.22/0.99  --lt_threshold                          2000
% 3.22/0.99  --clause_weak_htbl                      true
% 3.22/0.99  --gc_record_bc_elim                     false
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing Options
% 3.22/0.99  
% 3.22/0.99  --preprocessing_flag                    true
% 3.22/0.99  --time_out_prep_mult                    0.1
% 3.22/0.99  --splitting_mode                        input
% 3.22/0.99  --splitting_grd                         true
% 3.22/0.99  --splitting_cvd                         false
% 3.22/0.99  --splitting_cvd_svl                     false
% 3.22/0.99  --splitting_nvd                         32
% 3.22/0.99  --sub_typing                            true
% 3.22/0.99  --prep_gs_sim                           true
% 3.22/0.99  --prep_unflatten                        true
% 3.22/0.99  --prep_res_sim                          true
% 3.22/0.99  --prep_upred                            true
% 3.22/0.99  --prep_sem_filter                       exhaustive
% 3.22/0.99  --prep_sem_filter_out                   false
% 3.22/0.99  --pred_elim                             true
% 3.22/0.99  --res_sim_input                         true
% 3.22/0.99  --eq_ax_congr_red                       true
% 3.22/0.99  --pure_diseq_elim                       true
% 3.22/0.99  --brand_transform                       false
% 3.22/0.99  --non_eq_to_eq                          false
% 3.22/0.99  --prep_def_merge                        true
% 3.22/0.99  --prep_def_merge_prop_impl              false
% 3.22/0.99  --prep_def_merge_mbd                    true
% 3.22/0.99  --prep_def_merge_tr_red                 false
% 3.22/0.99  --prep_def_merge_tr_cl                  false
% 3.22/0.99  --smt_preprocessing                     true
% 3.22/0.99  --smt_ac_axioms                         fast
% 3.22/0.99  --preprocessed_out                      false
% 3.22/0.99  --preprocessed_stats                    false
% 3.22/0.99  
% 3.22/0.99  ------ Abstraction refinement Options
% 3.22/0.99  
% 3.22/0.99  --abstr_ref                             []
% 3.22/0.99  --abstr_ref_prep                        false
% 3.22/0.99  --abstr_ref_until_sat                   false
% 3.22/0.99  --abstr_ref_sig_restrict                funpre
% 3.22/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.22/0.99  --abstr_ref_under                       []
% 3.22/0.99  
% 3.22/0.99  ------ SAT Options
% 3.22/0.99  
% 3.22/0.99  --sat_mode                              false
% 3.22/0.99  --sat_fm_restart_options                ""
% 3.22/0.99  --sat_gr_def                            false
% 3.22/0.99  --sat_epr_types                         true
% 3.22/0.99  --sat_non_cyclic_types                  false
% 3.22/0.99  --sat_finite_models                     false
% 3.22/0.99  --sat_fm_lemmas                         false
% 3.22/0.99  --sat_fm_prep                           false
% 3.22/0.99  --sat_fm_uc_incr                        true
% 3.22/0.99  --sat_out_model                         small
% 3.22/0.99  --sat_out_clauses                       false
% 3.22/0.99  
% 3.22/0.99  ------ QBF Options
% 3.22/0.99  
% 3.22/0.99  --qbf_mode                              false
% 3.22/0.99  --qbf_elim_univ                         false
% 3.22/0.99  --qbf_dom_inst                          none
% 3.22/0.99  --qbf_dom_pre_inst                      false
% 3.22/0.99  --qbf_sk_in                             false
% 3.22/0.99  --qbf_pred_elim                         true
% 3.22/0.99  --qbf_split                             512
% 3.22/0.99  
% 3.22/0.99  ------ BMC1 Options
% 3.22/0.99  
% 3.22/0.99  --bmc1_incremental                      false
% 3.22/0.99  --bmc1_axioms                           reachable_all
% 3.22/0.99  --bmc1_min_bound                        0
% 3.22/0.99  --bmc1_max_bound                        -1
% 3.22/0.99  --bmc1_max_bound_default                -1
% 3.22/0.99  --bmc1_symbol_reachability              true
% 3.22/0.99  --bmc1_property_lemmas                  false
% 3.22/0.99  --bmc1_k_induction                      false
% 3.22/0.99  --bmc1_non_equiv_states                 false
% 3.22/0.99  --bmc1_deadlock                         false
% 3.22/0.99  --bmc1_ucm                              false
% 3.22/0.99  --bmc1_add_unsat_core                   none
% 3.22/0.99  --bmc1_unsat_core_children              false
% 3.22/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.22/0.99  --bmc1_out_stat                         full
% 3.22/0.99  --bmc1_ground_init                      false
% 3.22/0.99  --bmc1_pre_inst_next_state              false
% 3.22/0.99  --bmc1_pre_inst_state                   false
% 3.22/0.99  --bmc1_pre_inst_reach_state             false
% 3.22/0.99  --bmc1_out_unsat_core                   false
% 3.22/0.99  --bmc1_aig_witness_out                  false
% 3.22/0.99  --bmc1_verbose                          false
% 3.22/0.99  --bmc1_dump_clauses_tptp                false
% 3.22/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.22/0.99  --bmc1_dump_file                        -
% 3.22/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.22/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.22/0.99  --bmc1_ucm_extend_mode                  1
% 3.22/0.99  --bmc1_ucm_init_mode                    2
% 3.22/0.99  --bmc1_ucm_cone_mode                    none
% 3.22/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.22/0.99  --bmc1_ucm_relax_model                  4
% 3.22/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.22/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.22/0.99  --bmc1_ucm_layered_model                none
% 3.22/0.99  --bmc1_ucm_max_lemma_size               10
% 3.22/0.99  
% 3.22/0.99  ------ AIG Options
% 3.22/0.99  
% 3.22/0.99  --aig_mode                              false
% 3.22/0.99  
% 3.22/0.99  ------ Instantiation Options
% 3.22/0.99  
% 3.22/0.99  --instantiation_flag                    true
% 3.22/0.99  --inst_sos_flag                         false
% 3.22/0.99  --inst_sos_phase                        true
% 3.22/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.22/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.22/0.99  --inst_lit_sel_side                     num_symb
% 3.22/0.99  --inst_solver_per_active                1400
% 3.22/0.99  --inst_solver_calls_frac                1.
% 3.22/0.99  --inst_passive_queue_type               priority_queues
% 3.22/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.22/0.99  --inst_passive_queues_freq              [25;2]
% 3.22/0.99  --inst_dismatching                      true
% 3.22/0.99  --inst_eager_unprocessed_to_passive     true
% 3.22/0.99  --inst_prop_sim_given                   true
% 3.22/0.99  --inst_prop_sim_new                     false
% 3.22/0.99  --inst_subs_new                         false
% 3.22/0.99  --inst_eq_res_simp                      false
% 3.22/0.99  --inst_subs_given                       false
% 3.22/0.99  --inst_orphan_elimination               true
% 3.22/0.99  --inst_learning_loop_flag               true
% 3.22/0.99  --inst_learning_start                   3000
% 3.22/0.99  --inst_learning_factor                  2
% 3.22/0.99  --inst_start_prop_sim_after_learn       3
% 3.22/0.99  --inst_sel_renew                        solver
% 3.22/0.99  --inst_lit_activity_flag                true
% 3.22/0.99  --inst_restr_to_given                   false
% 3.22/0.99  --inst_activity_threshold               500
% 3.22/0.99  --inst_out_proof                        true
% 3.22/0.99  
% 3.22/0.99  ------ Resolution Options
% 3.22/0.99  
% 3.22/0.99  --resolution_flag                       true
% 3.22/0.99  --res_lit_sel                           adaptive
% 3.22/0.99  --res_lit_sel_side                      none
% 3.22/0.99  --res_ordering                          kbo
% 3.22/0.99  --res_to_prop_solver                    active
% 3.22/0.99  --res_prop_simpl_new                    false
% 3.22/0.99  --res_prop_simpl_given                  true
% 3.22/0.99  --res_passive_queue_type                priority_queues
% 3.22/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.22/0.99  --res_passive_queues_freq               [15;5]
% 3.22/0.99  --res_forward_subs                      full
% 3.22/0.99  --res_backward_subs                     full
% 3.22/0.99  --res_forward_subs_resolution           true
% 3.22/0.99  --res_backward_subs_resolution          true
% 3.22/0.99  --res_orphan_elimination                true
% 3.22/0.99  --res_time_limit                        2.
% 3.22/0.99  --res_out_proof                         true
% 3.22/0.99  
% 3.22/0.99  ------ Superposition Options
% 3.22/0.99  
% 3.22/0.99  --superposition_flag                    true
% 3.22/0.99  --sup_passive_queue_type                priority_queues
% 3.22/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.22/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.22/0.99  --demod_completeness_check              fast
% 3.22/0.99  --demod_use_ground                      true
% 3.22/0.99  --sup_to_prop_solver                    passive
% 3.22/0.99  --sup_prop_simpl_new                    true
% 3.22/0.99  --sup_prop_simpl_given                  true
% 3.22/0.99  --sup_fun_splitting                     false
% 3.22/0.99  --sup_smt_interval                      50000
% 3.22/0.99  
% 3.22/0.99  ------ Superposition Simplification Setup
% 3.22/0.99  
% 3.22/0.99  --sup_indices_passive                   []
% 3.22/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.22/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_full_bw                           [BwDemod]
% 3.22/0.99  --sup_immed_triv                        [TrivRules]
% 3.22/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.22/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_immed_bw_main                     []
% 3.22/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.22/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.22/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.22/0.99  
% 3.22/0.99  ------ Combination Options
% 3.22/0.99  
% 3.22/0.99  --comb_res_mult                         3
% 3.22/0.99  --comb_sup_mult                         2
% 3.22/0.99  --comb_inst_mult                        10
% 3.22/0.99  
% 3.22/0.99  ------ Debug Options
% 3.22/0.99  
% 3.22/0.99  --dbg_backtrace                         false
% 3.22/0.99  --dbg_dump_prop_clauses                 false
% 3.22/0.99  --dbg_dump_prop_clauses_file            -
% 3.22/0.99  --dbg_out_stat                          false
% 3.22/0.99  ------ Parsing...
% 3.22/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.22/0.99  ------ Proving...
% 3.22/0.99  ------ Problem Properties 
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  clauses                                 21
% 3.22/0.99  conjectures                             5
% 3.22/0.99  EPR                                     3
% 3.22/0.99  Horn                                    21
% 3.22/0.99  unary                                   6
% 3.22/0.99  binary                                  3
% 3.22/0.99  lits                                    66
% 3.22/0.99  lits eq                                 7
% 3.22/0.99  fd_pure                                 0
% 3.22/0.99  fd_pseudo                               0
% 3.22/0.99  fd_cond                                 0
% 3.22/0.99  fd_pseudo_cond                          1
% 3.22/0.99  AC symbols                              0
% 3.22/0.99  
% 3.22/0.99  ------ Schedule dynamic 5 is on 
% 3.22/0.99  
% 3.22/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  ------ 
% 3.22/0.99  Current options:
% 3.22/0.99  ------ 
% 3.22/0.99  
% 3.22/0.99  ------ Input Options
% 3.22/0.99  
% 3.22/0.99  --out_options                           all
% 3.22/0.99  --tptp_safe_out                         true
% 3.22/0.99  --problem_path                          ""
% 3.22/0.99  --include_path                          ""
% 3.22/0.99  --clausifier                            res/vclausify_rel
% 3.22/0.99  --clausifier_options                    --mode clausify
% 3.22/0.99  --stdin                                 false
% 3.22/0.99  --stats_out                             all
% 3.22/0.99  
% 3.22/0.99  ------ General Options
% 3.22/0.99  
% 3.22/0.99  --fof                                   false
% 3.22/0.99  --time_out_real                         305.
% 3.22/0.99  --time_out_virtual                      -1.
% 3.22/0.99  --symbol_type_check                     false
% 3.22/0.99  --clausify_out                          false
% 3.22/0.99  --sig_cnt_out                           false
% 3.22/0.99  --trig_cnt_out                          false
% 3.22/0.99  --trig_cnt_out_tolerance                1.
% 3.22/0.99  --trig_cnt_out_sk_spl                   false
% 3.22/0.99  --abstr_cl_out                          false
% 3.22/0.99  
% 3.22/0.99  ------ Global Options
% 3.22/0.99  
% 3.22/0.99  --schedule                              default
% 3.22/0.99  --add_important_lit                     false
% 3.22/0.99  --prop_solver_per_cl                    1000
% 3.22/0.99  --min_unsat_core                        false
% 3.22/0.99  --soft_assumptions                      false
% 3.22/0.99  --soft_lemma_size                       3
% 3.22/0.99  --prop_impl_unit_size                   0
% 3.22/0.99  --prop_impl_unit                        []
% 3.22/0.99  --share_sel_clauses                     true
% 3.22/0.99  --reset_solvers                         false
% 3.22/0.99  --bc_imp_inh                            [conj_cone]
% 3.22/0.99  --conj_cone_tolerance                   3.
% 3.22/0.99  --extra_neg_conj                        none
% 3.22/0.99  --large_theory_mode                     true
% 3.22/0.99  --prolific_symb_bound                   200
% 3.22/0.99  --lt_threshold                          2000
% 3.22/0.99  --clause_weak_htbl                      true
% 3.22/0.99  --gc_record_bc_elim                     false
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing Options
% 3.22/0.99  
% 3.22/0.99  --preprocessing_flag                    true
% 3.22/0.99  --time_out_prep_mult                    0.1
% 3.22/0.99  --splitting_mode                        input
% 3.22/0.99  --splitting_grd                         true
% 3.22/0.99  --splitting_cvd                         false
% 3.22/0.99  --splitting_cvd_svl                     false
% 3.22/0.99  --splitting_nvd                         32
% 3.22/0.99  --sub_typing                            true
% 3.22/0.99  --prep_gs_sim                           true
% 3.22/0.99  --prep_unflatten                        true
% 3.22/0.99  --prep_res_sim                          true
% 3.22/0.99  --prep_upred                            true
% 3.22/0.99  --prep_sem_filter                       exhaustive
% 3.22/0.99  --prep_sem_filter_out                   false
% 3.22/0.99  --pred_elim                             true
% 3.22/0.99  --res_sim_input                         true
% 3.22/0.99  --eq_ax_congr_red                       true
% 3.22/0.99  --pure_diseq_elim                       true
% 3.22/0.99  --brand_transform                       false
% 3.22/0.99  --non_eq_to_eq                          false
% 3.22/0.99  --prep_def_merge                        true
% 3.22/0.99  --prep_def_merge_prop_impl              false
% 3.22/0.99  --prep_def_merge_mbd                    true
% 3.22/0.99  --prep_def_merge_tr_red                 false
% 3.22/0.99  --prep_def_merge_tr_cl                  false
% 3.22/0.99  --smt_preprocessing                     true
% 3.22/0.99  --smt_ac_axioms                         fast
% 3.22/0.99  --preprocessed_out                      false
% 3.22/0.99  --preprocessed_stats                    false
% 3.22/0.99  
% 3.22/0.99  ------ Abstraction refinement Options
% 3.22/0.99  
% 3.22/0.99  --abstr_ref                             []
% 3.22/0.99  --abstr_ref_prep                        false
% 3.22/0.99  --abstr_ref_until_sat                   false
% 3.22/0.99  --abstr_ref_sig_restrict                funpre
% 3.22/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 3.22/0.99  --abstr_ref_under                       []
% 3.22/0.99  
% 3.22/0.99  ------ SAT Options
% 3.22/0.99  
% 3.22/0.99  --sat_mode                              false
% 3.22/0.99  --sat_fm_restart_options                ""
% 3.22/0.99  --sat_gr_def                            false
% 3.22/0.99  --sat_epr_types                         true
% 3.22/0.99  --sat_non_cyclic_types                  false
% 3.22/0.99  --sat_finite_models                     false
% 3.22/0.99  --sat_fm_lemmas                         false
% 3.22/0.99  --sat_fm_prep                           false
% 3.22/0.99  --sat_fm_uc_incr                        true
% 3.22/0.99  --sat_out_model                         small
% 3.22/0.99  --sat_out_clauses                       false
% 3.22/0.99  
% 3.22/0.99  ------ QBF Options
% 3.22/0.99  
% 3.22/0.99  --qbf_mode                              false
% 3.22/0.99  --qbf_elim_univ                         false
% 3.22/0.99  --qbf_dom_inst                          none
% 3.22/0.99  --qbf_dom_pre_inst                      false
% 3.22/0.99  --qbf_sk_in                             false
% 3.22/0.99  --qbf_pred_elim                         true
% 3.22/0.99  --qbf_split                             512
% 3.22/0.99  
% 3.22/0.99  ------ BMC1 Options
% 3.22/0.99  
% 3.22/0.99  --bmc1_incremental                      false
% 3.22/0.99  --bmc1_axioms                           reachable_all
% 3.22/0.99  --bmc1_min_bound                        0
% 3.22/0.99  --bmc1_max_bound                        -1
% 3.22/0.99  --bmc1_max_bound_default                -1
% 3.22/0.99  --bmc1_symbol_reachability              true
% 3.22/0.99  --bmc1_property_lemmas                  false
% 3.22/0.99  --bmc1_k_induction                      false
% 3.22/0.99  --bmc1_non_equiv_states                 false
% 3.22/0.99  --bmc1_deadlock                         false
% 3.22/0.99  --bmc1_ucm                              false
% 3.22/0.99  --bmc1_add_unsat_core                   none
% 3.22/0.99  --bmc1_unsat_core_children              false
% 3.22/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 3.22/0.99  --bmc1_out_stat                         full
% 3.22/0.99  --bmc1_ground_init                      false
% 3.22/0.99  --bmc1_pre_inst_next_state              false
% 3.22/0.99  --bmc1_pre_inst_state                   false
% 3.22/0.99  --bmc1_pre_inst_reach_state             false
% 3.22/0.99  --bmc1_out_unsat_core                   false
% 3.22/0.99  --bmc1_aig_witness_out                  false
% 3.22/0.99  --bmc1_verbose                          false
% 3.22/0.99  --bmc1_dump_clauses_tptp                false
% 3.22/0.99  --bmc1_dump_unsat_core_tptp             false
% 3.22/0.99  --bmc1_dump_file                        -
% 3.22/0.99  --bmc1_ucm_expand_uc_limit              128
% 3.22/0.99  --bmc1_ucm_n_expand_iterations          6
% 3.22/0.99  --bmc1_ucm_extend_mode                  1
% 3.22/0.99  --bmc1_ucm_init_mode                    2
% 3.22/0.99  --bmc1_ucm_cone_mode                    none
% 3.22/0.99  --bmc1_ucm_reduced_relation_type        0
% 3.22/0.99  --bmc1_ucm_relax_model                  4
% 3.22/0.99  --bmc1_ucm_full_tr_after_sat            true
% 3.22/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 3.22/0.99  --bmc1_ucm_layered_model                none
% 3.22/0.99  --bmc1_ucm_max_lemma_size               10
% 3.22/0.99  
% 3.22/0.99  ------ AIG Options
% 3.22/0.99  
% 3.22/0.99  --aig_mode                              false
% 3.22/0.99  
% 3.22/0.99  ------ Instantiation Options
% 3.22/0.99  
% 3.22/0.99  --instantiation_flag                    true
% 3.22/0.99  --inst_sos_flag                         false
% 3.22/0.99  --inst_sos_phase                        true
% 3.22/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.22/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.22/0.99  --inst_lit_sel_side                     none
% 3.22/0.99  --inst_solver_per_active                1400
% 3.22/0.99  --inst_solver_calls_frac                1.
% 3.22/0.99  --inst_passive_queue_type               priority_queues
% 3.22/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.22/0.99  --inst_passive_queues_freq              [25;2]
% 3.22/0.99  --inst_dismatching                      true
% 3.22/0.99  --inst_eager_unprocessed_to_passive     true
% 3.22/0.99  --inst_prop_sim_given                   true
% 3.22/0.99  --inst_prop_sim_new                     false
% 3.22/0.99  --inst_subs_new                         false
% 3.22/0.99  --inst_eq_res_simp                      false
% 3.22/0.99  --inst_subs_given                       false
% 3.22/0.99  --inst_orphan_elimination               true
% 3.22/0.99  --inst_learning_loop_flag               true
% 3.22/0.99  --inst_learning_start                   3000
% 3.22/0.99  --inst_learning_factor                  2
% 3.22/0.99  --inst_start_prop_sim_after_learn       3
% 3.22/0.99  --inst_sel_renew                        solver
% 3.22/0.99  --inst_lit_activity_flag                true
% 3.22/0.99  --inst_restr_to_given                   false
% 3.22/0.99  --inst_activity_threshold               500
% 3.22/0.99  --inst_out_proof                        true
% 3.22/0.99  
% 3.22/0.99  ------ Resolution Options
% 3.22/0.99  
% 3.22/0.99  --resolution_flag                       false
% 3.22/0.99  --res_lit_sel                           adaptive
% 3.22/0.99  --res_lit_sel_side                      none
% 3.22/0.99  --res_ordering                          kbo
% 3.22/0.99  --res_to_prop_solver                    active
% 3.22/0.99  --res_prop_simpl_new                    false
% 3.22/0.99  --res_prop_simpl_given                  true
% 3.22/0.99  --res_passive_queue_type                priority_queues
% 3.22/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.22/0.99  --res_passive_queues_freq               [15;5]
% 3.22/0.99  --res_forward_subs                      full
% 3.22/0.99  --res_backward_subs                     full
% 3.22/0.99  --res_forward_subs_resolution           true
% 3.22/0.99  --res_backward_subs_resolution          true
% 3.22/0.99  --res_orphan_elimination                true
% 3.22/0.99  --res_time_limit                        2.
% 3.22/0.99  --res_out_proof                         true
% 3.22/0.99  
% 3.22/0.99  ------ Superposition Options
% 3.22/0.99  
% 3.22/0.99  --superposition_flag                    true
% 3.22/0.99  --sup_passive_queue_type                priority_queues
% 3.22/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.22/0.99  --sup_passive_queues_freq               [8;1;4]
% 3.22/0.99  --demod_completeness_check              fast
% 3.22/0.99  --demod_use_ground                      true
% 3.22/0.99  --sup_to_prop_solver                    passive
% 3.22/0.99  --sup_prop_simpl_new                    true
% 3.22/0.99  --sup_prop_simpl_given                  true
% 3.22/0.99  --sup_fun_splitting                     false
% 3.22/0.99  --sup_smt_interval                      50000
% 3.22/0.99  
% 3.22/0.99  ------ Superposition Simplification Setup
% 3.22/0.99  
% 3.22/0.99  --sup_indices_passive                   []
% 3.22/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.22/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 3.22/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_full_bw                           [BwDemod]
% 3.22/0.99  --sup_immed_triv                        [TrivRules]
% 3.22/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.22/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_immed_bw_main                     []
% 3.22/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.22/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 3.22/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.22/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.22/0.99  
% 3.22/0.99  ------ Combination Options
% 3.22/0.99  
% 3.22/0.99  --comb_res_mult                         3
% 3.22/0.99  --comb_sup_mult                         2
% 3.22/0.99  --comb_inst_mult                        10
% 3.22/0.99  
% 3.22/0.99  ------ Debug Options
% 3.22/0.99  
% 3.22/0.99  --dbg_backtrace                         false
% 3.22/0.99  --dbg_dump_prop_clauses                 false
% 3.22/0.99  --dbg_dump_prop_clauses_file            -
% 3.22/0.99  --dbg_out_stat                          false
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  ------ Proving...
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  % SZS status Theorem for theBenchmark.p
% 3.22/0.99  
% 3.22/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 3.22/0.99  
% 3.22/0.99  fof(f15,conjecture,(
% 3.22/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f16,negated_conjecture,(
% 3.22/0.99    ~! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))))),
% 3.22/0.99    inference(negated_conjecture,[],[f15])).
% 3.22/0.99  
% 3.22/0.99  fof(f38,plain,(
% 3.22/0.99    ? [X0,X1] : ((~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)))),
% 3.22/0.99    inference(ennf_transformation,[],[f16])).
% 3.22/0.99  
% 3.22/0.99  fof(f39,plain,(
% 3.22/0.99    ? [X0,X1] : ((~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 3.22/0.99    inference(flattening,[],[f38])).
% 3.22/0.99  
% 3.22/0.99  fof(f43,plain,(
% 3.22/0.99    ? [X0,X1] : ((~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ((~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1)) | ~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) & v3_funct_2(sK2,sK1,sK1) & v1_funct_2(sK2,sK1,sK1) & v1_funct_1(sK2))),
% 3.22/0.99    introduced(choice_axiom,[])).
% 3.22/0.99  
% 3.22/0.99  fof(f44,plain,(
% 3.22/0.99    (~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1)) | ~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) & v3_funct_2(sK2,sK1,sK1) & v1_funct_2(sK2,sK1,sK1) & v1_funct_1(sK2)),
% 3.22/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f39,f43])).
% 3.22/0.99  
% 3.22/0.99  fof(f69,plain,(
% 3.22/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))),
% 3.22/0.99    inference(cnf_transformation,[],[f44])).
% 3.22/0.99  
% 3.22/0.99  fof(f14,axiom,(
% 3.22/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => k1_relset_1(X0,X0,X1) = X0)),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f36,plain,(
% 3.22/0.99    ! [X0,X1] : (k1_relset_1(X0,X0,X1) = X0 | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 3.22/0.99    inference(ennf_transformation,[],[f14])).
% 3.22/0.99  
% 3.22/0.99  fof(f37,plain,(
% 3.22/0.99    ! [X0,X1] : (k1_relset_1(X0,X0,X1) = X0 | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 3.22/0.99    inference(flattening,[],[f36])).
% 3.22/0.99  
% 3.22/0.99  fof(f65,plain,(
% 3.22/0.99    ( ! [X0,X1] : (k1_relset_1(X0,X0,X1) = X0 | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f37])).
% 3.22/0.99  
% 3.22/0.99  fof(f5,axiom,(
% 3.22/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f23,plain,(
% 3.22/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.22/0.99    inference(ennf_transformation,[],[f5])).
% 3.22/0.99  
% 3.22/0.99  fof(f50,plain,(
% 3.22/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f23])).
% 3.22/0.99  
% 3.22/0.99  fof(f66,plain,(
% 3.22/0.99    v1_funct_1(sK2)),
% 3.22/0.99    inference(cnf_transformation,[],[f44])).
% 3.22/0.99  
% 3.22/0.99  fof(f67,plain,(
% 3.22/0.99    v1_funct_2(sK2,sK1,sK1)),
% 3.22/0.99    inference(cnf_transformation,[],[f44])).
% 3.22/0.99  
% 3.22/0.99  fof(f3,axiom,(
% 3.22/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f21,plain,(
% 3.22/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.22/0.99    inference(ennf_transformation,[],[f3])).
% 3.22/0.99  
% 3.22/0.99  fof(f48,plain,(
% 3.22/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f21])).
% 3.22/0.99  
% 3.22/0.99  fof(f2,axiom,(
% 3.22/0.99    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)))))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f19,plain,(
% 3.22/0.99    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 3.22/0.99    inference(ennf_transformation,[],[f2])).
% 3.22/0.99  
% 3.22/0.99  fof(f20,plain,(
% 3.22/0.99    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 3.22/0.99    inference(flattening,[],[f19])).
% 3.22/0.99  
% 3.22/0.99  fof(f46,plain,(
% 3.22/0.99    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f20])).
% 3.22/0.99  
% 3.22/0.99  fof(f13,axiom,(
% 3.22/0.99    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f64,plain,(
% 3.22/0.99    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f13])).
% 3.22/0.99  
% 3.22/0.99  fof(f72,plain,(
% 3.22/0.99    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.22/0.99    inference(definition_unfolding,[],[f46,f64])).
% 3.22/0.99  
% 3.22/0.99  fof(f68,plain,(
% 3.22/0.99    v3_funct_2(sK2,sK1,sK1)),
% 3.22/0.99    inference(cnf_transformation,[],[f44])).
% 3.22/0.99  
% 3.22/0.99  fof(f8,axiom,(
% 3.22/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v3_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2))))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f26,plain,(
% 3.22/0.99    ! [X0,X1,X2] : (((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | (~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.22/0.99    inference(ennf_transformation,[],[f8])).
% 3.22/0.99  
% 3.22/0.99  fof(f27,plain,(
% 3.22/0.99    ! [X0,X1,X2] : ((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.22/0.99    inference(flattening,[],[f26])).
% 3.22/0.99  
% 3.22/0.99  fof(f54,plain,(
% 3.22/0.99    ( ! [X2,X0,X1] : (v2_funct_1(X2) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f27])).
% 3.22/0.99  
% 3.22/0.99  fof(f12,axiom,(
% 3.22/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => k2_funct_1(X1) = k2_funct_2(X0,X1))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f34,plain,(
% 3.22/0.99    ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 3.22/0.99    inference(ennf_transformation,[],[f12])).
% 3.22/0.99  
% 3.22/0.99  fof(f35,plain,(
% 3.22/0.99    ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 3.22/0.99    inference(flattening,[],[f34])).
% 3.22/0.99  
% 3.22/0.99  fof(f63,plain,(
% 3.22/0.99    ( ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f35])).
% 3.22/0.99  
% 3.22/0.99  fof(f10,axiom,(
% 3.22/0.99    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f30,plain,(
% 3.22/0.99    ! [X0,X1] : ((m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 3.22/0.99    inference(ennf_transformation,[],[f10])).
% 3.22/0.99  
% 3.22/0.99  fof(f31,plain,(
% 3.22/0.99    ! [X0,X1] : ((m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 3.22/0.99    inference(flattening,[],[f30])).
% 3.22/0.99  
% 3.22/0.99  fof(f61,plain,(
% 3.22/0.99    ( ! [X0,X1] : (m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f31])).
% 3.22/0.99  
% 3.22/0.99  fof(f11,axiom,(
% 3.22/0.99    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f32,plain,(
% 3.22/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 3.22/0.99    inference(ennf_transformation,[],[f11])).
% 3.22/0.99  
% 3.22/0.99  fof(f33,plain,(
% 3.22/0.99    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 3.22/0.99    inference(flattening,[],[f32])).
% 3.22/0.99  
% 3.22/0.99  fof(f62,plain,(
% 3.22/0.99    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f33])).
% 3.22/0.99  
% 3.22/0.99  fof(f58,plain,(
% 3.22/0.99    ( ! [X0,X1] : (v1_funct_1(k2_funct_2(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f31])).
% 3.22/0.99  
% 3.22/0.99  fof(f70,plain,(
% 3.22/0.99    ~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1)) | ~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1))),
% 3.22/0.99    inference(cnf_transformation,[],[f44])).
% 3.22/0.99  
% 3.22/0.99  fof(f7,axiom,(
% 3.22/0.99    ! [X0] : m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f52,plain,(
% 3.22/0.99    ( ! [X0] : (m1_subset_1(k6_relat_1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f7])).
% 3.22/0.99  
% 3.22/0.99  fof(f73,plain,(
% 3.22/0.99    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 3.22/0.99    inference(definition_unfolding,[],[f52,f64])).
% 3.22/0.99  
% 3.22/0.99  fof(f6,axiom,(
% 3.22/0.99    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => r2_relset_1(X0,X1,X2,X2))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f24,plain,(
% 3.22/0.99    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 3.22/0.99    inference(ennf_transformation,[],[f6])).
% 3.22/0.99  
% 3.22/0.99  fof(f25,plain,(
% 3.22/0.99    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.22/0.99    inference(flattening,[],[f24])).
% 3.22/0.99  
% 3.22/0.99  fof(f51,plain,(
% 3.22/0.99    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f25])).
% 3.22/0.99  
% 3.22/0.99  fof(f55,plain,(
% 3.22/0.99    ( ! [X2,X0,X1] : (v2_funct_2(X2,X1) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f27])).
% 3.22/0.99  
% 3.22/0.99  fof(f4,axiom,(
% 3.22/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f17,plain,(
% 3.22/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 3.22/0.99    inference(pure_predicate_removal,[],[f4])).
% 3.22/0.99  
% 3.22/0.99  fof(f22,plain,(
% 3.22/0.99    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.22/0.99    inference(ennf_transformation,[],[f17])).
% 3.22/0.99  
% 3.22/0.99  fof(f49,plain,(
% 3.22/0.99    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.22/0.99    inference(cnf_transformation,[],[f22])).
% 3.22/0.99  
% 3.22/0.99  fof(f9,axiom,(
% 3.22/0.99    ! [X0,X1] : ((v5_relat_1(X1,X0) & v1_relat_1(X1)) => (v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0))),
% 3.22/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.22/0.99  
% 3.22/0.99  fof(f28,plain,(
% 3.22/0.99    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | (~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 3.22/0.99    inference(ennf_transformation,[],[f9])).
% 3.22/0.99  
% 3.22/0.99  fof(f29,plain,(
% 3.22/0.99    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.22/0.99    inference(flattening,[],[f28])).
% 3.22/0.99  
% 3.22/0.99  fof(f42,plain,(
% 3.22/0.99    ! [X0,X1] : (((v2_funct_2(X1,X0) | k2_relat_1(X1) != X0) & (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0))) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.22/0.99    inference(nnf_transformation,[],[f29])).
% 3.22/0.99  
% 3.22/0.99  fof(f56,plain,(
% 3.22/0.99    ( ! [X0,X1] : (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f42])).
% 3.22/0.99  
% 3.22/0.99  fof(f47,plain,(
% 3.22/0.99    ( ! [X0] : (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.22/0.99    inference(cnf_transformation,[],[f20])).
% 3.22/0.99  
% 3.22/0.99  fof(f71,plain,(
% 3.22/0.99    ( ! [X0] : (k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 3.22/0.99    inference(definition_unfolding,[],[f47,f64])).
% 3.22/0.99  
% 3.22/0.99  cnf(c_699,plain,
% 3.22/0.99      ( X0_50 != X1_50 | X2_50 != X1_50 | X2_50 = X0_50 ),
% 3.22/0.99      theory(equality) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1430,plain,
% 3.22/0.99      ( X0_50 != X1_50
% 3.22/0.99      | X0_50 = k6_partfun1(X0_51)
% 3.22/0.99      | k6_partfun1(X0_51) != X1_50 ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_699]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2987,plain,
% 3.22/0.99      ( X0_50 != k5_relat_1(k2_funct_1(X1_50),X1_50)
% 3.22/0.99      | X0_50 = k6_partfun1(sK1)
% 3.22/0.99      | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(X1_50),X1_50) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_1430]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_4562,plain,
% 3.22/0.99      ( k1_partfun1(X0_51,X1_51,X2_51,X3_51,k2_funct_1(sK2),sK2) != k5_relat_1(k2_funct_1(sK2),sK2)
% 3.22/0.99      | k1_partfun1(X0_51,X1_51,X2_51,X3_51,k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
% 3.22/0.99      | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(sK2),sK2) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_2987]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_4566,plain,
% 3.22/0.99      ( k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) != k5_relat_1(k2_funct_1(sK2),sK2)
% 3.22/0.99      | k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
% 3.22/0.99      | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(sK2),sK2) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_4562]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_21,negated_conjecture,
% 3.22/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
% 3.22/0.99      inference(cnf_transformation,[],[f69]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_677,negated_conjecture,
% 3.22/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_21]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1139,plain,
% 3.22/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_677]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_19,plain,
% 3.22/0.99      ( ~ v1_funct_2(X0,X1,X1)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.22/0.99      | ~ v1_funct_1(X0)
% 3.22/0.99      | k1_relset_1(X1,X1,X0) = X1 ),
% 3.22/0.99      inference(cnf_transformation,[],[f65]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_679,plain,
% 3.22/0.99      ( ~ v1_funct_2(X0_50,X0_51,X0_51)
% 3.22/0.99      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 3.22/0.99      | ~ v1_funct_1(X0_50)
% 3.22/0.99      | k1_relset_1(X0_51,X0_51,X0_50) = X0_51 ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_19]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1137,plain,
% 3.22/0.99      ( k1_relset_1(X0_51,X0_51,X0_50) = X0_51
% 3.22/0.99      | v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_679]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2215,plain,
% 3.22/0.99      ( k1_relset_1(sK1,sK1,sK2) = sK1
% 3.22/0.99      | v1_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1139,c_1137]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_5,plain,
% 3.22/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.22/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.22/0.99      inference(cnf_transformation,[],[f50]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_689,plain,
% 3.22/0.99      ( ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 3.22/0.99      | k1_relset_1(X0_51,X1_51,X0_50) = k1_relat_1(X0_50) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_5]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1127,plain,
% 3.22/0.99      ( k1_relset_1(X0_51,X1_51,X0_50) = k1_relat_1(X0_50)
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_689]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1466,plain,
% 3.22/0.99      ( k1_relset_1(sK1,sK1,sK2) = k1_relat_1(sK2) ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1139,c_1127]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2248,plain,
% 3.22/0.99      ( k1_relat_1(sK2) = sK1
% 3.22/0.99      | v1_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_2215,c_1466]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_24,negated_conjecture,
% 3.22/0.99      ( v1_funct_1(sK2) ),
% 3.22/0.99      inference(cnf_transformation,[],[f66]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_25,plain,
% 3.22/0.99      ( v1_funct_1(sK2) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_23,negated_conjecture,
% 3.22/0.99      ( v1_funct_2(sK2,sK1,sK1) ),
% 3.22/0.99      inference(cnf_transformation,[],[f67]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_26,plain,
% 3.22/0.99      ( v1_funct_2(sK2,sK1,sK1) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2778,plain,
% 3.22/0.99      ( k1_relat_1(sK2) = sK1 ),
% 3.22/0.99      inference(global_propositional_subsumption,
% 3.22/0.99                [status(thm)],
% 3.22/0.99                [c_2248,c_25,c_26]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3,plain,
% 3.22/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.22/0.99      | v1_relat_1(X0) ),
% 3.22/0.99      inference(cnf_transformation,[],[f48]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_690,plain,
% 3.22/0.99      ( ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 3.22/0.99      | v1_relat_1(X0_50) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_3]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1126,plain,
% 3.22/0.99      ( m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 3.22/0.99      | v1_relat_1(X0_50) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_690]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1377,plain,
% 3.22/0.99      ( v1_relat_1(sK2) = iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1139,c_1126]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2,plain,
% 3.22/0.99      ( ~ v1_relat_1(X0)
% 3.22/0.99      | ~ v1_funct_1(X0)
% 3.22/0.99      | ~ v2_funct_1(X0)
% 3.22/0.99      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) ),
% 3.22/0.99      inference(cnf_transformation,[],[f72]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_691,plain,
% 3.22/0.99      ( ~ v1_relat_1(X0_50)
% 3.22/0.99      | ~ v1_funct_1(X0_50)
% 3.22/0.99      | ~ v2_funct_1(X0_50)
% 3.22/0.99      | k5_relat_1(X0_50,k2_funct_1(X0_50)) = k6_partfun1(k1_relat_1(X0_50)) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_2]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1125,plain,
% 3.22/0.99      ( k5_relat_1(X0_50,k2_funct_1(X0_50)) = k6_partfun1(k1_relat_1(X0_50))
% 3.22/0.99      | v1_relat_1(X0_50) != iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top
% 3.22/0.99      | v2_funct_1(X0_50) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_691]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1675,plain,
% 3.22/0.99      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2))
% 3.22/0.99      | v1_funct_1(sK2) != iProver_top
% 3.22/0.99      | v2_funct_1(sK2) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1377,c_1125]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_22,negated_conjecture,
% 3.22/0.99      ( v3_funct_2(sK2,sK1,sK1) ),
% 3.22/0.99      inference(cnf_transformation,[],[f68]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_735,plain,
% 3.22/0.99      ( ~ v1_relat_1(sK2)
% 3.22/0.99      | ~ v1_funct_1(sK2)
% 3.22/0.99      | ~ v2_funct_1(sK2)
% 3.22/0.99      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2)) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_691]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_738,plain,
% 3.22/0.99      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.22/0.99      | v1_relat_1(sK2) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_690]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_9,plain,
% 3.22/0.99      ( ~ v3_funct_2(X0,X1,X2)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.22/0.99      | ~ v1_funct_1(X0)
% 3.22/0.99      | v2_funct_1(X0) ),
% 3.22/0.99      inference(cnf_transformation,[],[f54]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_686,plain,
% 3.22/0.99      ( ~ v3_funct_2(X0_50,X0_51,X1_51)
% 3.22/0.99      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 3.22/0.99      | ~ v1_funct_1(X0_50)
% 3.22/0.99      | v2_funct_1(X0_50) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_9]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_748,plain,
% 3.22/0.99      ( ~ v3_funct_2(sK2,sK1,sK1)
% 3.22/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.22/0.99      | ~ v1_funct_1(sK2)
% 3.22/0.99      | v2_funct_1(sK2) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_686]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1819,plain,
% 3.22/0.99      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2)) ),
% 3.22/0.99      inference(global_propositional_subsumption,
% 3.22/0.99                [status(thm)],
% 3.22/0.99                [c_1675,c_24,c_22,c_21,c_735,c_738,c_748]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2781,plain,
% 3.22/0.99      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK1) ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_2778,c_1819]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_18,plain,
% 3.22/0.99      ( ~ v1_funct_2(X0,X1,X1)
% 3.22/0.99      | ~ v3_funct_2(X0,X1,X1)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.22/0.99      | ~ v1_funct_1(X0)
% 3.22/0.99      | k2_funct_2(X1,X0) = k2_funct_1(X0) ),
% 3.22/0.99      inference(cnf_transformation,[],[f63]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_680,plain,
% 3.22/0.99      ( ~ v1_funct_2(X0_50,X0_51,X0_51)
% 3.22/0.99      | ~ v3_funct_2(X0_50,X0_51,X0_51)
% 3.22/0.99      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 3.22/0.99      | ~ v1_funct_1(X0_50)
% 3.22/0.99      | k2_funct_2(X0_51,X0_50) = k2_funct_1(X0_50) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_18]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1136,plain,
% 3.22/0.99      ( k2_funct_2(X0_51,X0_50) = k2_funct_1(X0_50)
% 3.22/0.99      | v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 3.22/0.99      | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_680]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2382,plain,
% 3.22/0.99      ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2)
% 3.22/0.99      | v1_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | v3_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1139,c_1136]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_766,plain,
% 3.22/0.99      ( ~ v1_funct_2(sK2,sK1,sK1)
% 3.22/0.99      | ~ v3_funct_2(sK2,sK1,sK1)
% 3.22/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.22/0.99      | ~ v1_funct_1(sK2)
% 3.22/0.99      | k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_680]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2562,plain,
% 3.22/0.99      ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
% 3.22/0.99      inference(global_propositional_subsumption,
% 3.22/0.99                [status(thm)],
% 3.22/0.99                [c_2382,c_24,c_23,c_22,c_21,c_766]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_13,plain,
% 3.22/0.99      ( ~ v1_funct_2(X0,X1,X1)
% 3.22/0.99      | ~ v3_funct_2(X0,X1,X1)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.22/0.99      | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.22/0.99      | ~ v1_funct_1(X0) ),
% 3.22/0.99      inference(cnf_transformation,[],[f61]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_685,plain,
% 3.22/0.99      ( ~ v1_funct_2(X0_50,X0_51,X0_51)
% 3.22/0.99      | ~ v3_funct_2(X0_50,X0_51,X0_51)
% 3.22/0.99      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 3.22/0.99      | m1_subset_1(k2_funct_2(X0_51,X0_50),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 3.22/0.99      | ~ v1_funct_1(X0_50) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_13]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1131,plain,
% 3.22/0.99      ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 3.22/0.99      | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 3.22/0.99      | m1_subset_1(k2_funct_2(X0_51,X0_50),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) = iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_685]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2575,plain,
% 3.22/0.99      ( v1_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | v3_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top
% 3.22/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 3.22/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_2562,c_1131]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_27,plain,
% 3.22/0.99      ( v3_funct_2(sK2,sK1,sK1) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_28,plain,
% 3.22/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2849,plain,
% 3.22/0.99      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 3.22/0.99      inference(global_propositional_subsumption,
% 3.22/0.99                [status(thm)],
% 3.22/0.99                [c_2575,c_25,c_26,c_27,c_28]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_17,plain,
% 3.22/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.22/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.22/0.99      | ~ v1_funct_1(X0)
% 3.22/0.99      | ~ v1_funct_1(X3)
% 3.22/0.99      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 3.22/0.99      inference(cnf_transformation,[],[f62]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_681,plain,
% 3.22/0.99      ( ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 3.22/0.99      | ~ m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51)))
% 3.22/0.99      | ~ v1_funct_1(X0_50)
% 3.22/0.99      | ~ v1_funct_1(X1_50)
% 3.22/0.99      | k1_partfun1(X2_51,X3_51,X0_51,X1_51,X1_50,X0_50) = k5_relat_1(X1_50,X0_50) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_17]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1135,plain,
% 3.22/0.99      ( k1_partfun1(X0_51,X1_51,X2_51,X3_51,X0_50,X1_50) = k5_relat_1(X0_50,X1_50)
% 3.22/0.99      | m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51))) != iProver_top
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top
% 3.22/0.99      | v1_funct_1(X1_50) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_681]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3069,plain,
% 3.22/0.99      ( k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50)
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top
% 3.22/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1139,c_1135]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3360,plain,
% 3.22/0.99      ( v1_funct_1(X0_50) != iProver_top
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 3.22/0.99      | k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50) ),
% 3.22/0.99      inference(global_propositional_subsumption,
% 3.22/0.99                [status(thm)],
% 3.22/0.99                [c_3069,c_25]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3361,plain,
% 3.22/0.99      ( k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50)
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top ),
% 3.22/0.99      inference(renaming,[status(thm)],[c_3360]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3371,plain,
% 3.22/0.99      ( k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)) = k5_relat_1(sK2,k2_funct_1(sK2))
% 3.22/0.99      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_2849,c_3361]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_16,plain,
% 3.22/0.99      ( ~ v1_funct_2(X0,X1,X1)
% 3.22/0.99      | ~ v3_funct_2(X0,X1,X1)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 3.22/0.99      | ~ v1_funct_1(X0)
% 3.22/0.99      | v1_funct_1(k2_funct_2(X1,X0)) ),
% 3.22/0.99      inference(cnf_transformation,[],[f58]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_682,plain,
% 3.22/0.99      ( ~ v1_funct_2(X0_50,X0_51,X0_51)
% 3.22/0.99      | ~ v3_funct_2(X0_50,X0_51,X0_51)
% 3.22/0.99      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 3.22/0.99      | ~ v1_funct_1(X0_50)
% 3.22/0.99      | v1_funct_1(k2_funct_2(X0_51,X0_50)) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_16]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1134,plain,
% 3.22/0.99      ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 3.22/0.99      | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top
% 3.22/0.99      | v1_funct_1(k2_funct_2(X0_51,X0_50)) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_682]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2268,plain,
% 3.22/0.99      ( v1_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | v3_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top
% 3.22/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1139,c_1134]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_759,plain,
% 3.22/0.99      ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 3.22/0.99      | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top
% 3.22/0.99      | v1_funct_1(k2_funct_2(X0_51,X0_50)) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_682]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_761,plain,
% 3.22/0.99      ( v1_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | v3_funct_2(sK2,sK1,sK1) != iProver_top
% 3.22/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 3.22/0.99      | v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top
% 3.22/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_759]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2556,plain,
% 3.22/0.99      ( v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top ),
% 3.22/0.99      inference(global_propositional_subsumption,
% 3.22/0.99                [status(thm)],
% 3.22/0.99                [c_2268,c_25,c_26,c_27,c_28,c_761]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2565,plain,
% 3.22/0.99      ( v1_funct_1(k2_funct_1(sK2)) = iProver_top ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_2562,c_2556]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3629,plain,
% 3.22/0.99      ( k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)) = k5_relat_1(sK2,k2_funct_1(sK2)) ),
% 3.22/0.99      inference(global_propositional_subsumption,
% 3.22/0.99                [status(thm)],
% 3.22/0.99                [c_3371,c_2565]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_20,negated_conjecture,
% 3.22/0.99      ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1))
% 3.22/0.99      | ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) ),
% 3.22/0.99      inference(cnf_transformation,[],[f70]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_678,negated_conjecture,
% 3.22/0.99      ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1))
% 3.22/0.99      | ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_20]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1138,plain,
% 3.22/0.99      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1)) != iProver_top
% 3.22/0.99      | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_678]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2566,plain,
% 3.22/0.99      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
% 3.22/0.99      | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)),k6_partfun1(sK1)) != iProver_top ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_2562,c_1138]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3632,plain,
% 3.22/0.99      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
% 3.22/0.99      | r2_relset_1(sK1,sK1,k5_relat_1(sK2,k2_funct_1(sK2)),k6_partfun1(sK1)) != iProver_top ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_3629,c_2566]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_4506,plain,
% 3.22/0.99      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
% 3.22/0.99      | r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) != iProver_top ),
% 3.22/0.99      inference(demodulation,[status(thm)],[c_2781,c_3632]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_707,plain,
% 3.22/0.99      ( ~ r2_relset_1(X0_51,X1_51,X0_50,X1_50)
% 3.22/0.99      | r2_relset_1(X2_51,X3_51,X2_50,X3_50)
% 3.22/0.99      | X2_51 != X0_51
% 3.22/0.99      | X3_51 != X1_51
% 3.22/0.99      | X2_50 != X0_50
% 3.22/0.99      | X3_50 != X1_50 ),
% 3.22/0.99      theory(equality) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2202,plain,
% 3.22/0.99      ( ~ r2_relset_1(X0_51,X1_51,X0_50,X1_50)
% 3.22/0.99      | r2_relset_1(X2_51,X3_51,k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X2_50),k6_partfun1(X8_51))
% 3.22/0.99      | X2_51 != X0_51
% 3.22/0.99      | X3_51 != X1_51
% 3.22/0.99      | k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X2_50) != X0_50
% 3.22/0.99      | k6_partfun1(X8_51) != X1_50 ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_707]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3251,plain,
% 3.22/0.99      ( ~ r2_relset_1(X0_51,X1_51,X0_50,k6_partfun1(X2_51))
% 3.22/0.99      | r2_relset_1(X3_51,X4_51,k1_partfun1(X5_51,X6_51,X7_51,X8_51,k2_funct_1(sK2),X1_50),k6_partfun1(X9_51))
% 3.22/0.99      | X3_51 != X0_51
% 3.22/0.99      | X4_51 != X1_51
% 3.22/0.99      | k1_partfun1(X5_51,X6_51,X7_51,X8_51,k2_funct_1(sK2),X1_50) != X0_50
% 3.22/0.99      | k6_partfun1(X9_51) != k6_partfun1(X2_51) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_2202]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_4334,plain,
% 3.22/0.99      ( r2_relset_1(X0_51,X1_51,k1_partfun1(X2_51,X3_51,X4_51,X5_51,k2_funct_1(sK2),X0_50),k6_partfun1(X6_51))
% 3.22/0.99      | ~ r2_relset_1(X7_51,X8_51,k6_partfun1(X9_51),k6_partfun1(X9_51))
% 3.22/0.99      | X0_51 != X7_51
% 3.22/0.99      | X1_51 != X8_51
% 3.22/0.99      | k1_partfun1(X2_51,X3_51,X4_51,X5_51,k2_funct_1(sK2),X0_50) != k6_partfun1(X9_51)
% 3.22/0.99      | k6_partfun1(X6_51) != k6_partfun1(X9_51) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_3251]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_4336,plain,
% 3.22/0.99      ( X0_51 != X1_51
% 3.22/0.99      | X2_51 != X3_51
% 3.22/0.99      | k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X0_50) != k6_partfun1(X8_51)
% 3.22/0.99      | k6_partfun1(X9_51) != k6_partfun1(X8_51)
% 3.22/0.99      | r2_relset_1(X0_51,X2_51,k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X0_50),k6_partfun1(X9_51)) = iProver_top
% 3.22/0.99      | r2_relset_1(X1_51,X3_51,k6_partfun1(X8_51),k6_partfun1(X8_51)) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_4334]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_4338,plain,
% 3.22/0.99      ( sK1 != sK1
% 3.22/0.99      | k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) != k6_partfun1(sK1)
% 3.22/0.99      | k6_partfun1(sK1) != k6_partfun1(sK1)
% 3.22/0.99      | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) = iProver_top
% 3.22/0.99      | r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) != iProver_top ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_4336]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3073,plain,
% 3.22/0.99      ( k1_partfun1(sK1,sK1,X0_51,X1_51,k2_funct_1(sK2),X0_50) = k5_relat_1(k2_funct_1(sK2),X0_50)
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 3.22/0.99      | v1_funct_1(X0_50) != iProver_top
% 3.22/0.99      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_2849,c_1135]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_3133,plain,
% 3.22/0.99      ( k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) = k5_relat_1(k2_funct_1(sK2),sK2)
% 3.22/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 3.22/0.99      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 3.22/0.99      | v1_funct_1(sK2) != iProver_top ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_3073]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_700,plain,
% 3.22/0.99      ( X0_51 != X1_51 | X2_51 != X1_51 | X2_51 = X0_51 ),
% 3.22/0.99      theory(equality) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2141,plain,
% 3.22/0.99      ( k2_relat_1(X0_50) != X0_51
% 3.22/0.99      | sK1 != X0_51
% 3.22/0.99      | sK1 = k2_relat_1(X0_50) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_700]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_2142,plain,
% 3.22/0.99      ( k2_relat_1(sK2) != sK1 | sK1 = k2_relat_1(sK2) | sK1 != sK1 ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_2141]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_704,plain,
% 3.22/0.99      ( X0_51 != X1_51 | k6_partfun1(X0_51) = k6_partfun1(X1_51) ),
% 3.22/0.99      theory(equality) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1401,plain,
% 3.22/0.99      ( sK1 != X0_51 | k6_partfun1(sK1) = k6_partfun1(X0_51) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_704]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1922,plain,
% 3.22/0.99      ( sK1 != k2_relat_1(X0_50)
% 3.22/0.99      | k6_partfun1(sK1) = k6_partfun1(k2_relat_1(X0_50)) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_1401]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1923,plain,
% 3.22/0.99      ( sK1 != k2_relat_1(sK2)
% 3.22/0.99      | k6_partfun1(sK1) = k6_partfun1(k2_relat_1(sK2)) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_1922]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1399,plain,
% 3.22/0.99      ( X0_50 != X1_50
% 3.22/0.99      | k6_partfun1(sK1) != X1_50
% 3.22/0.99      | k6_partfun1(sK1) = X0_50 ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_699]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1489,plain,
% 3.22/0.99      ( X0_50 != k6_partfun1(X0_51)
% 3.22/0.99      | k6_partfun1(sK1) = X0_50
% 3.22/0.99      | k6_partfun1(sK1) != k6_partfun1(X0_51) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_1399]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1582,plain,
% 3.22/0.99      ( k5_relat_1(k2_funct_1(X0_50),X0_50) != k6_partfun1(k2_relat_1(X0_50))
% 3.22/0.99      | k6_partfun1(sK1) = k5_relat_1(k2_funct_1(X0_50),X0_50)
% 3.22/0.99      | k6_partfun1(sK1) != k6_partfun1(k2_relat_1(X0_50)) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_1489]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1583,plain,
% 3.22/0.99      ( k5_relat_1(k2_funct_1(sK2),sK2) != k6_partfun1(k2_relat_1(sK2))
% 3.22/0.99      | k6_partfun1(sK1) = k5_relat_1(k2_funct_1(sK2),sK2)
% 3.22/0.99      | k6_partfun1(sK1) != k6_partfun1(k2_relat_1(sK2)) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_1582]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_7,plain,
% 3.22/0.99      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 3.22/0.99      inference(cnf_transformation,[],[f73]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_687,plain,
% 3.22/0.99      ( m1_subset_1(k6_partfun1(X0_51),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_7]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1129,plain,
% 3.22/0.99      ( m1_subset_1(k6_partfun1(X0_51),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) = iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_687]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_6,plain,
% 3.22/0.99      ( r2_relset_1(X0,X1,X2,X2)
% 3.22/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 3.22/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 3.22/0.99      inference(cnf_transformation,[],[f51]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_688,plain,
% 3.22/0.99      ( r2_relset_1(X0_51,X1_51,X0_50,X0_50)
% 3.22/0.99      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 3.22/0.99      | ~ m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_6]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1128,plain,
% 3.22/0.99      ( r2_relset_1(X0_51,X1_51,X0_50,X0_50) = iProver_top
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 3.22/0.99      | m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
% 3.22/0.99      inference(predicate_to_equality,[status(thm)],[c_688]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1552,plain,
% 3.22/0.99      ( r2_relset_1(X0_51,X0_51,k6_partfun1(X0_51),k6_partfun1(X0_51)) = iProver_top
% 3.22/0.99      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top ),
% 3.22/0.99      inference(superposition,[status(thm)],[c_1129,c_1128]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1568,plain,
% 3.22/0.99      ( r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) = iProver_top
% 3.22/0.99      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_1552]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_8,plain,
% 3.22/0.99      ( ~ v3_funct_2(X0,X1,X2)
% 3.22/0.99      | v2_funct_2(X0,X2)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.22/0.99      | ~ v1_funct_1(X0) ),
% 3.22/0.99      inference(cnf_transformation,[],[f55]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_4,plain,
% 3.22/0.99      ( v5_relat_1(X0,X1)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 3.22/0.99      inference(cnf_transformation,[],[f49]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_12,plain,
% 3.22/0.99      ( ~ v2_funct_2(X0,X1)
% 3.22/0.99      | ~ v5_relat_1(X0,X1)
% 3.22/0.99      | ~ v1_relat_1(X0)
% 3.22/0.99      | k2_relat_1(X0) = X1 ),
% 3.22/0.99      inference(cnf_transformation,[],[f56]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_278,plain,
% 3.22/0.99      ( ~ v2_funct_2(X0,X1)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.22/0.99      | ~ v1_relat_1(X0)
% 3.22/0.99      | k2_relat_1(X0) = X1 ),
% 3.22/0.99      inference(resolution,[status(thm)],[c_4,c_12]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_290,plain,
% 3.22/0.99      ( ~ v2_funct_2(X0,X1)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 3.22/0.99      | k2_relat_1(X0) = X1 ),
% 3.22/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_278,c_3]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_363,plain,
% 3.22/0.99      ( ~ v3_funct_2(X0,X1,X2)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.22/0.99      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 3.22/0.99      | ~ v1_funct_1(X0)
% 3.22/0.99      | X3 != X0
% 3.22/0.99      | X5 != X2
% 3.22/0.99      | k2_relat_1(X3) = X5 ),
% 3.22/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_290]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_364,plain,
% 3.22/0.99      ( ~ v3_funct_2(X0,X1,X2)
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.22/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
% 3.22/0.99      | ~ v1_funct_1(X0)
% 3.22/0.99      | k2_relat_1(X0) = X2 ),
% 3.22/0.99      inference(unflattening,[status(thm)],[c_363]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_673,plain,
% 3.22/0.99      ( ~ v3_funct_2(X0_50,X0_51,X1_51)
% 3.22/0.99      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 3.22/0.99      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X2_51,X1_51)))
% 3.22/0.99      | ~ v1_funct_1(X0_50)
% 3.22/0.99      | k2_relat_1(X0_50) = X1_51 ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_364]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_777,plain,
% 3.22/0.99      ( ~ v3_funct_2(sK2,sK1,sK1)
% 3.22/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 3.22/0.99      | ~ v1_funct_1(sK2)
% 3.22/0.99      | k2_relat_1(sK2) = sK1 ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_673]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_1,plain,
% 3.22/0.99      ( ~ v1_relat_1(X0)
% 3.22/0.99      | ~ v1_funct_1(X0)
% 3.22/0.99      | ~ v2_funct_1(X0)
% 3.22/0.99      | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) ),
% 3.22/0.99      inference(cnf_transformation,[],[f71]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_692,plain,
% 3.22/0.99      ( ~ v1_relat_1(X0_50)
% 3.22/0.99      | ~ v1_funct_1(X0_50)
% 3.22/0.99      | ~ v2_funct_1(X0_50)
% 3.22/0.99      | k5_relat_1(k2_funct_1(X0_50),X0_50) = k6_partfun1(k2_relat_1(X0_50)) ),
% 3.22/0.99      inference(subtyping,[status(esa)],[c_1]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_732,plain,
% 3.22/0.99      ( ~ v1_relat_1(sK2)
% 3.22/0.99      | ~ v1_funct_1(sK2)
% 3.22/0.99      | ~ v2_funct_1(sK2)
% 3.22/0.99      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(k2_relat_1(sK2)) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_692]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_696,plain,( X0_51 = X0_51 ),theory(equality) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_725,plain,
% 3.22/0.99      ( sK1 = sK1 ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_696]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(c_715,plain,
% 3.22/0.99      ( sK1 != sK1 | k6_partfun1(sK1) = k6_partfun1(sK1) ),
% 3.22/0.99      inference(instantiation,[status(thm)],[c_704]) ).
% 3.22/0.99  
% 3.22/0.99  cnf(contradiction,plain,
% 3.22/0.99      ( $false ),
% 3.22/0.99      inference(minisat,
% 3.22/0.99                [status(thm)],
% 3.22/0.99                [c_4566,c_4506,c_4338,c_3133,c_2565,c_2142,c_1923,c_1583,
% 3.22/0.99                 c_1568,c_777,c_748,c_738,c_732,c_725,c_715,c_28,c_21,
% 3.22/0.99                 c_22,c_25,c_24]) ).
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 3.22/0.99  
% 3.22/0.99  ------                               Statistics
% 3.22/0.99  
% 3.22/0.99  ------ General
% 3.22/0.99  
% 3.22/0.99  abstr_ref_over_cycles:                  0
% 3.22/0.99  abstr_ref_under_cycles:                 0
% 3.22/0.99  gc_basic_clause_elim:                   0
% 3.22/0.99  forced_gc_time:                         0
% 3.22/0.99  parsing_time:                           0.011
% 3.22/0.99  unif_index_cands_time:                  0.
% 3.22/0.99  unif_index_add_time:                    0.
% 3.22/0.99  orderings_time:                         0.
% 3.22/0.99  out_proof_time:                         0.021
% 3.22/0.99  total_time:                             0.226
% 3.22/0.99  num_of_symbols:                         57
% 3.22/0.99  num_of_terms:                           4199
% 3.22/0.99  
% 3.22/0.99  ------ Preprocessing
% 3.22/0.99  
% 3.22/0.99  num_of_splits:                          0
% 3.22/0.99  num_of_split_atoms:                     0
% 3.22/0.99  num_of_reused_defs:                     0
% 3.22/0.99  num_eq_ax_congr_red:                    29
% 3.22/0.99  num_of_sem_filtered_clauses:            1
% 3.22/0.99  num_of_subtypes:                        4
% 3.22/0.99  monotx_restored_types:                  1
% 3.22/0.99  sat_num_of_epr_types:                   0
% 3.22/0.99  sat_num_of_non_cyclic_types:            0
% 3.22/0.99  sat_guarded_non_collapsed_types:        0
% 3.22/0.99  num_pure_diseq_elim:                    0
% 3.22/0.99  simp_replaced_by:                       0
% 3.22/0.99  res_preprocessed:                       122
% 3.22/0.99  prep_upred:                             0
% 3.22/0.99  prep_unflattend:                        6
% 3.22/0.99  smt_new_axioms:                         0
% 3.22/0.99  pred_elim_cands:                        7
% 3.22/0.99  pred_elim:                              2
% 3.22/0.99  pred_elim_cl:                           3
% 3.22/0.99  pred_elim_cycles:                       6
% 3.22/0.99  merged_defs:                            0
% 3.22/0.99  merged_defs_ncl:                        0
% 3.22/0.99  bin_hyper_res:                          0
% 3.22/0.99  prep_cycles:                            4
% 3.22/0.99  pred_elim_time:                         0.006
% 3.22/0.99  splitting_time:                         0.
% 3.22/0.99  sem_filter_time:                        0.
% 3.22/0.99  monotx_time:                            0.001
% 3.22/0.99  subtype_inf_time:                       0.001
% 3.22/0.99  
% 3.22/0.99  ------ Problem properties
% 3.22/0.99  
% 3.22/0.99  clauses:                                21
% 3.22/0.99  conjectures:                            5
% 3.22/0.99  epr:                                    3
% 3.22/0.99  horn:                                   21
% 3.22/0.99  ground:                                 5
% 3.22/0.99  unary:                                  6
% 3.22/0.99  binary:                                 3
% 3.22/0.99  lits:                                   66
% 3.22/0.99  lits_eq:                                7
% 3.22/0.99  fd_pure:                                0
% 3.22/0.99  fd_pseudo:                              0
% 3.22/0.99  fd_cond:                                0
% 3.22/0.99  fd_pseudo_cond:                         1
% 3.22/0.99  ac_symbols:                             0
% 3.22/0.99  
% 3.22/0.99  ------ Propositional Solver
% 3.22/0.99  
% 3.22/0.99  prop_solver_calls:                      28
% 3.22/0.99  prop_fast_solver_calls:                 990
% 3.22/0.99  smt_solver_calls:                       0
% 3.22/0.99  smt_fast_solver_calls:                  0
% 3.22/0.99  prop_num_of_clauses:                    1331
% 3.22/0.99  prop_preprocess_simplified:             5040
% 3.22/0.99  prop_fo_subsumed:                       37
% 3.22/0.99  prop_solver_time:                       0.
% 3.22/0.99  smt_solver_time:                        0.
% 3.22/0.99  smt_fast_solver_time:                   0.
% 3.22/0.99  prop_fast_solver_time:                  0.
% 3.22/0.99  prop_unsat_core_time:                   0.
% 3.22/0.99  
% 3.22/0.99  ------ QBF
% 3.22/0.99  
% 3.22/0.99  qbf_q_res:                              0
% 3.22/0.99  qbf_num_tautologies:                    0
% 3.22/0.99  qbf_prep_cycles:                        0
% 3.22/0.99  
% 3.22/0.99  ------ BMC1
% 3.22/0.99  
% 3.22/0.99  bmc1_current_bound:                     -1
% 3.22/0.99  bmc1_last_solved_bound:                 -1
% 3.22/0.99  bmc1_unsat_core_size:                   -1
% 3.22/0.99  bmc1_unsat_core_parents_size:           -1
% 3.22/0.99  bmc1_merge_next_fun:                    0
% 3.22/0.99  bmc1_unsat_core_clauses_time:           0.
% 3.22/0.99  
% 3.22/0.99  ------ Instantiation
% 3.22/0.99  
% 3.22/0.99  inst_num_of_clauses:                    450
% 3.22/0.99  inst_num_in_passive:                    51
% 3.22/0.99  inst_num_in_active:                     264
% 3.22/0.99  inst_num_in_unprocessed:                134
% 3.22/0.99  inst_num_of_loops:                      285
% 3.22/0.99  inst_num_of_learning_restarts:          0
% 3.22/0.99  inst_num_moves_active_passive:          16
% 3.22/0.99  inst_lit_activity:                      0
% 3.22/0.99  inst_lit_activity_moves:                0
% 3.22/0.99  inst_num_tautologies:                   0
% 3.22/0.99  inst_num_prop_implied:                  0
% 3.22/0.99  inst_num_existing_simplified:           0
% 3.22/0.99  inst_num_eq_res_simplified:             0
% 3.22/0.99  inst_num_child_elim:                    0
% 3.22/0.99  inst_num_of_dismatching_blockings:      416
% 3.22/0.99  inst_num_of_non_proper_insts:           597
% 3.22/0.99  inst_num_of_duplicates:                 0
% 3.22/0.99  inst_inst_num_from_inst_to_res:         0
% 3.22/0.99  inst_dismatching_checking_time:         0.
% 3.22/0.99  
% 3.22/0.99  ------ Resolution
% 3.22/0.99  
% 3.22/0.99  res_num_of_clauses:                     0
% 3.22/0.99  res_num_in_passive:                     0
% 3.22/0.99  res_num_in_active:                      0
% 3.22/0.99  res_num_of_loops:                       126
% 3.22/0.99  res_forward_subset_subsumed:            102
% 3.22/0.99  res_backward_subset_subsumed:           4
% 3.22/0.99  res_forward_subsumed:                   0
% 3.22/0.99  res_backward_subsumed:                  0
% 3.22/0.99  res_forward_subsumption_resolution:     2
% 3.22/0.99  res_backward_subsumption_resolution:    0
% 3.22/0.99  res_clause_to_clause_subsumption:       199
% 3.22/0.99  res_orphan_elimination:                 0
% 3.22/0.99  res_tautology_del:                      78
% 3.22/0.99  res_num_eq_res_simplified:              0
% 3.22/0.99  res_num_sel_changes:                    0
% 3.22/0.99  res_moves_from_active_to_pass:          0
% 3.22/0.99  
% 3.22/0.99  ------ Superposition
% 3.22/0.99  
% 3.22/0.99  sup_time_total:                         0.
% 3.22/0.99  sup_time_generating:                    0.
% 3.22/0.99  sup_time_sim_full:                      0.
% 3.22/0.99  sup_time_sim_immed:                     0.
% 3.22/0.99  
% 3.22/0.99  sup_num_of_clauses:                     94
% 3.22/0.99  sup_num_in_active:                      47
% 3.22/0.99  sup_num_in_passive:                     47
% 3.22/0.99  sup_num_of_loops:                       56
% 3.22/0.99  sup_fw_superposition:                   58
% 3.22/0.99  sup_bw_superposition:                   21
% 3.22/0.99  sup_immediate_simplified:               10
% 3.22/0.99  sup_given_eliminated:                   0
% 3.22/0.99  comparisons_done:                       0
% 3.22/0.99  comparisons_avoided:                    0
% 3.22/0.99  
% 3.22/0.99  ------ Simplifications
% 3.22/0.99  
% 3.22/0.99  
% 3.22/0.99  sim_fw_subset_subsumed:                 1
% 3.22/0.99  sim_bw_subset_subsumed:                 2
% 3.22/0.99  sim_fw_subsumed:                        0
% 3.22/0.99  sim_bw_subsumed:                        1
% 3.22/0.99  sim_fw_subsumption_res:                 3
% 3.22/0.99  sim_bw_subsumption_res:                 0
% 3.22/0.99  sim_tautology_del:                      0
% 3.22/0.99  sim_eq_tautology_del:                   1
% 3.22/0.99  sim_eq_res_simp:                        0
% 3.22/0.99  sim_fw_demodulated:                     1
% 3.22/0.99  sim_bw_demodulated:                     9
% 3.22/0.99  sim_light_normalised:                   3
% 3.22/0.99  sim_joinable_taut:                      0
% 3.22/0.99  sim_joinable_simp:                      0
% 3.22/0.99  sim_ac_normalised:                      0
% 3.22/0.99  sim_smt_subsumption:                    0
% 3.22/0.99  
%------------------------------------------------------------------------------
