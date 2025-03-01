%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:07:23 EST 2020

% Result     : Theorem 1.87s
% Output     : CNFRefutation 1.87s
% Verified   : 
% Statistics : Number of formulae       :  181 ( 828 expanded)
%              Number of clauses        :  117 ( 275 expanded)
%              Number of leaves         :   20 ( 162 expanded)
%              Depth                    :   18
%              Number of atoms          :  607 (3902 expanded)
%              Number of equality atoms :  237 ( 430 expanded)
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( v3_funct_2(X2,X0,X1)
          & v1_funct_1(X2) )
       => ( v2_funct_2(X2,X1)
          & v2_funct_1(X2)
          & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( ( v2_funct_2(X2,X1)
        & v2_funct_1(X2)
        & v1_funct_1(X2) )
      | ~ v3_funct_2(X2,X0,X1)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f26])).

fof(f53,plain,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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

fof(f9,axiom,(
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
    inference(ennf_transformation,[],[f9])).

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

fof(f60,plain,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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

fof(f57,plain,(
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

fof(f10,axiom,(
    ! [X0] :
      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))
      & v1_partfun1(k6_partfun1(X0),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(pure_predicate_removal,[],[f10])).

fof(f61,plain,(
    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f17])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => r2_relset_1(X0,X1,X2,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

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

fof(f54,plain,(
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
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v5_relat_1(X2,X1) ) ),
    inference(pure_predicate_removal,[],[f4])).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( v2_funct_2(X1,X0)
      <=> k2_relat_1(X1) = X0 )
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

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

fof(f55,plain,(
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

cnf(c_1427,plain,
    ( X0_50 != X1_50
    | X0_50 = k6_partfun1(X0_51)
    | k6_partfun1(X0_51) != X1_50 ),
    inference(instantiation,[status(thm)],[c_699])).

cnf(c_3157,plain,
    ( X0_50 != k5_relat_1(k2_funct_1(X1_50),X1_50)
    | X0_50 = k6_partfun1(sK1)
    | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(X1_50),X1_50) ),
    inference(instantiation,[status(thm)],[c_1427])).

cnf(c_4798,plain,
    ( k1_partfun1(X0_51,X1_51,X2_51,X3_51,k2_funct_1(sK2),sK2) != k5_relat_1(k2_funct_1(sK2),sK2)
    | k1_partfun1(X0_51,X1_51,X2_51,X3_51,k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
    | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(sK2),sK2) ),
    inference(instantiation,[status(thm)],[c_3157])).

cnf(c_4802,plain,
    ( k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) != k5_relat_1(k2_funct_1(sK2),sK2)
    | k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
    | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(sK2),sK2) ),
    inference(instantiation,[status(thm)],[c_4798])).

cnf(c_707,plain,
    ( ~ r2_relset_1(X0_51,X1_51,X0_50,X1_50)
    | r2_relset_1(X2_51,X3_51,X2_50,X3_50)
    | X2_51 != X0_51
    | X3_51 != X1_51
    | X2_50 != X0_50
    | X3_50 != X1_50 ),
    theory(equality)).

cnf(c_2213,plain,
    ( ~ r2_relset_1(X0_51,X1_51,X0_50,X1_50)
    | r2_relset_1(X2_51,X3_51,k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X2_50),k6_partfun1(X8_51))
    | X2_51 != X0_51
    | X3_51 != X1_51
    | k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X2_50) != X0_50
    | k6_partfun1(X8_51) != X1_50 ),
    inference(instantiation,[status(thm)],[c_707])).

cnf(c_3377,plain,
    ( ~ r2_relset_1(X0_51,X1_51,X0_50,k6_partfun1(X2_51))
    | r2_relset_1(X3_51,X4_51,k1_partfun1(X5_51,X6_51,X7_51,X8_51,k2_funct_1(sK2),X1_50),k6_partfun1(X9_51))
    | X3_51 != X0_51
    | X4_51 != X1_51
    | k1_partfun1(X5_51,X6_51,X7_51,X8_51,k2_funct_1(sK2),X1_50) != X0_50
    | k6_partfun1(X9_51) != k6_partfun1(X2_51) ),
    inference(instantiation,[status(thm)],[c_2213])).

cnf(c_4632,plain,
    ( r2_relset_1(X0_51,X1_51,k1_partfun1(X2_51,X3_51,X4_51,X5_51,k2_funct_1(sK2),X0_50),k6_partfun1(X6_51))
    | ~ r2_relset_1(X7_51,X8_51,k6_partfun1(X9_51),k6_partfun1(X9_51))
    | X0_51 != X7_51
    | X1_51 != X8_51
    | k1_partfun1(X2_51,X3_51,X4_51,X5_51,k2_funct_1(sK2),X0_50) != k6_partfun1(X9_51)
    | k6_partfun1(X6_51) != k6_partfun1(X9_51) ),
    inference(instantiation,[status(thm)],[c_3377])).

cnf(c_4635,plain,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1))
    | ~ r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1))
    | sK1 != sK1
    | k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) != k6_partfun1(sK1)
    | k6_partfun1(sK1) != k6_partfun1(sK1) ),
    inference(instantiation,[status(thm)],[c_4632])).

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

cnf(c_2225,plain,
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

cnf(c_1461,plain,
    ( k1_relset_1(sK1,sK1,sK2) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1139,c_1127])).

cnf(c_2258,plain,
    ( k1_relat_1(sK2) = sK1
    | v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2225,c_1461])).

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

cnf(c_2773,plain,
    ( k1_relat_1(sK2) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2258,c_25,c_26])).

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

cnf(c_1676,plain,
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

cnf(c_8,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0)
    | v2_funct_1(X0) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_687,plain,
    ( ~ v3_funct_2(X0_50,X0_51,X1_51)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
    | ~ v1_funct_1(X0_50)
    | v2_funct_1(X0_50) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_747,plain,
    ( ~ v3_funct_2(sK2,sK1,sK1)
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
    | ~ v1_funct_1(sK2)
    | v2_funct_1(sK2) ),
    inference(instantiation,[status(thm)],[c_687])).

cnf(c_1834,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_1676,c_24,c_22,c_21,c_735,c_738,c_747])).

cnf(c_2776,plain,
    ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK1) ),
    inference(demodulation,[status(thm)],[c_2773,c_1834])).

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

cnf(c_2413,plain,
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

cnf(c_2599,plain,
    ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2413,c_24,c_23,c_22,c_21,c_766])).

cnf(c_12,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_686,plain,
    ( ~ v1_funct_2(X0_50,X0_51,X0_51)
    | ~ v3_funct_2(X0_50,X0_51,X0_51)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
    | m1_subset_1(k2_funct_2(X0_51,X0_50),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
    | ~ v1_funct_1(X0_50) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_1130,plain,
    ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
    | m1_subset_1(k2_funct_2(X0_51,X0_50),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) = iProver_top
    | v1_funct_1(X0_50) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_686])).

cnf(c_2612,plain,
    ( v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v3_funct_2(sK2,sK1,sK1) != iProver_top
    | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2599,c_1130])).

cnf(c_27,plain,
    ( v3_funct_2(sK2,sK1,sK1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_28,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_2851,plain,
    ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2612,c_25,c_26,c_27,c_28])).

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

cnf(c_3075,plain,
    ( k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50)
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1139,c_1135])).

cnf(c_3322,plain,
    ( v1_funct_1(X0_50) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3075,c_25])).

cnf(c_3323,plain,
    ( k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50)
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top ),
    inference(renaming,[status(thm)],[c_3322])).

cnf(c_3333,plain,
    ( k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)) = k5_relat_1(sK2,k2_funct_1(sK2))
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2851,c_3323])).

cnf(c_15,plain,
    ( ~ v1_funct_2(X0,X1,X1)
    | ~ v3_funct_2(X0,X1,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
    | ~ v1_funct_1(X0)
    | v1_funct_1(k2_funct_2(X1,X0)) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_683,plain,
    ( ~ v1_funct_2(X0_50,X0_51,X0_51)
    | ~ v3_funct_2(X0_50,X0_51,X0_51)
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
    | ~ v1_funct_1(X0_50)
    | v1_funct_1(k2_funct_2(X0_51,X0_50)) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_1133,plain,
    ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v1_funct_1(k2_funct_2(X0_51,X0_50)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_683])).

cnf(c_2278,plain,
    ( v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v3_funct_2(sK2,sK1,sK1) != iProver_top
    | v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1139,c_1133])).

cnf(c_758,plain,
    ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v1_funct_1(k2_funct_2(X0_51,X0_50)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_683])).

cnf(c_760,plain,
    ( v1_funct_2(sK2,sK1,sK1) != iProver_top
    | v3_funct_2(sK2,sK1,sK1) != iProver_top
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_758])).

cnf(c_2593,plain,
    ( v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2278,c_25,c_26,c_27,c_28,c_760])).

cnf(c_2602,plain,
    ( v1_funct_1(k2_funct_1(sK2)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_2599,c_2593])).

cnf(c_3574,plain,
    ( k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)) = k5_relat_1(sK2,k2_funct_1(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3333,c_2602])).

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

cnf(c_2603,plain,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
    | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)),k6_partfun1(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2599,c_1138])).

cnf(c_3577,plain,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
    | r2_relset_1(sK1,sK1,k5_relat_1(sK2,k2_funct_1(sK2)),k6_partfun1(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3574,c_2603])).

cnf(c_4483,plain,
    ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
    | r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2776,c_3577])).

cnf(c_4491,plain,
    ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1))
    | ~ r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_4483])).

cnf(c_3079,plain,
    ( k1_partfun1(sK1,sK1,X0_51,X1_51,k2_funct_1(sK2),X0_50) = k5_relat_1(k2_funct_1(sK2),X0_50)
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
    | v1_funct_1(X0_50) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2851,c_1135])).

cnf(c_3139,plain,
    ( k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) = k5_relat_1(k2_funct_1(sK2),sK2)
    | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
    | v1_funct_1(k2_funct_1(sK2)) != iProver_top
    | v1_funct_1(sK2) != iProver_top ),
    inference(instantiation,[status(thm)],[c_3079])).

cnf(c_700,plain,
    ( X0_51 != X1_51
    | X2_51 != X1_51
    | X2_51 = X0_51 ),
    theory(equality)).

cnf(c_2037,plain,
    ( k2_relat_1(X0_50) != X0_51
    | sK1 != X0_51
    | sK1 = k2_relat_1(X0_50) ),
    inference(instantiation,[status(thm)],[c_700])).

cnf(c_2038,plain,
    ( k2_relat_1(sK2) != sK1
    | sK1 = k2_relat_1(sK2)
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_2037])).

cnf(c_703,plain,
    ( X0_51 != X1_51
    | k6_partfun1(X0_51) = k6_partfun1(X1_51) ),
    theory(equality)).

cnf(c_1401,plain,
    ( sK1 != X0_51
    | k6_partfun1(sK1) = k6_partfun1(X0_51) ),
    inference(instantiation,[status(thm)],[c_703])).

cnf(c_1937,plain,
    ( sK1 != k2_relat_1(X0_50)
    | k6_partfun1(sK1) = k6_partfun1(k2_relat_1(X0_50)) ),
    inference(instantiation,[status(thm)],[c_1401])).

cnf(c_1938,plain,
    ( sK1 != k2_relat_1(sK2)
    | k6_partfun1(sK1) = k6_partfun1(k2_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_1937])).

cnf(c_1399,plain,
    ( X0_50 != X1_50
    | k6_partfun1(sK1) != X1_50
    | k6_partfun1(sK1) = X0_50 ),
    inference(instantiation,[status(thm)],[c_699])).

cnf(c_1484,plain,
    ( X0_50 != k6_partfun1(X0_51)
    | k6_partfun1(sK1) = X0_50
    | k6_partfun1(sK1) != k6_partfun1(X0_51) ),
    inference(instantiation,[status(thm)],[c_1399])).

cnf(c_1576,plain,
    ( k5_relat_1(k2_funct_1(X0_50),X0_50) != k6_partfun1(k2_relat_1(X0_50))
    | k6_partfun1(sK1) = k5_relat_1(k2_funct_1(X0_50),X0_50)
    | k6_partfun1(sK1) != k6_partfun1(k2_relat_1(X0_50)) ),
    inference(instantiation,[status(thm)],[c_1484])).

cnf(c_1577,plain,
    ( k5_relat_1(k2_funct_1(sK2),sK2) != k6_partfun1(k2_relat_1(sK2))
    | k6_partfun1(sK1) = k5_relat_1(k2_funct_1(sK2),sK2)
    | k6_partfun1(sK1) != k6_partfun1(k2_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_1576])).

cnf(c_16,plain,
    ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_682,plain,
    ( m1_subset_1(k6_partfun1(X0_51),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) ),
    inference(subtyping,[status(esa)],[c_16])).

cnf(c_1134,plain,
    ( m1_subset_1(k6_partfun1(X0_51),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_682])).

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

cnf(c_1546,plain,
    ( r2_relset_1(X0_51,X0_51,k6_partfun1(X0_51),k6_partfun1(X0_51)) = iProver_top
    | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1134,c_1128])).

cnf(c_1561,plain,
    ( r2_relset_1(X0_51,X0_51,k6_partfun1(X0_51),k6_partfun1(X0_51))
    | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_1546])).

cnf(c_1563,plain,
    ( r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
    inference(instantiation,[status(thm)],[c_1561])).

cnf(c_7,plain,
    ( ~ v3_funct_2(X0,X1,X2)
    | v2_funct_2(X0,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_4,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_11,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(cnf_transformation,[],[f55])).

cnf(c_278,plain,
    ( ~ v2_funct_2(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ v1_relat_1(X0)
    | k2_relat_1(X0) = X1 ),
    inference(resolution,[status(thm)],[c_4,c_11])).

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
    inference(resolution_lifted,[status(thm)],[c_7,c_290])).

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

cnf(c_714,plain,
    ( sK1 != sK1
    | k6_partfun1(sK1) = k6_partfun1(sK1) ),
    inference(instantiation,[status(thm)],[c_703])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_4802,c_4635,c_4491,c_3139,c_2602,c_2038,c_1938,c_1577,c_1563,c_777,c_747,c_738,c_732,c_725,c_714,c_28,c_21,c_22,c_25,c_24])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n013.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 14:30:09 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.87/1.03  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.87/1.03  
% 1.87/1.03  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.87/1.03  
% 1.87/1.03  ------  iProver source info
% 1.87/1.03  
% 1.87/1.03  git: date: 2020-06-30 10:37:57 +0100
% 1.87/1.03  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.87/1.03  git: non_committed_changes: false
% 1.87/1.03  git: last_make_outside_of_git: false
% 1.87/1.03  
% 1.87/1.03  ------ 
% 1.87/1.03  
% 1.87/1.03  ------ Input Options
% 1.87/1.03  
% 1.87/1.03  --out_options                           all
% 1.87/1.03  --tptp_safe_out                         true
% 1.87/1.03  --problem_path                          ""
% 1.87/1.03  --include_path                          ""
% 1.87/1.03  --clausifier                            res/vclausify_rel
% 1.87/1.03  --clausifier_options                    --mode clausify
% 1.87/1.03  --stdin                                 false
% 1.87/1.03  --stats_out                             all
% 1.87/1.03  
% 1.87/1.03  ------ General Options
% 1.87/1.03  
% 1.87/1.03  --fof                                   false
% 1.87/1.03  --time_out_real                         305.
% 1.87/1.03  --time_out_virtual                      -1.
% 1.87/1.03  --symbol_type_check                     false
% 1.87/1.03  --clausify_out                          false
% 1.87/1.03  --sig_cnt_out                           false
% 1.87/1.03  --trig_cnt_out                          false
% 1.87/1.03  --trig_cnt_out_tolerance                1.
% 1.87/1.03  --trig_cnt_out_sk_spl                   false
% 1.87/1.03  --abstr_cl_out                          false
% 1.87/1.03  
% 1.87/1.03  ------ Global Options
% 1.87/1.03  
% 1.87/1.03  --schedule                              default
% 1.87/1.03  --add_important_lit                     false
% 1.87/1.03  --prop_solver_per_cl                    1000
% 1.87/1.03  --min_unsat_core                        false
% 1.87/1.03  --soft_assumptions                      false
% 1.87/1.03  --soft_lemma_size                       3
% 1.87/1.03  --prop_impl_unit_size                   0
% 1.87/1.03  --prop_impl_unit                        []
% 1.87/1.03  --share_sel_clauses                     true
% 1.87/1.03  --reset_solvers                         false
% 1.87/1.03  --bc_imp_inh                            [conj_cone]
% 1.87/1.03  --conj_cone_tolerance                   3.
% 1.87/1.03  --extra_neg_conj                        none
% 1.87/1.03  --large_theory_mode                     true
% 1.87/1.03  --prolific_symb_bound                   200
% 1.87/1.03  --lt_threshold                          2000
% 1.87/1.03  --clause_weak_htbl                      true
% 1.87/1.03  --gc_record_bc_elim                     false
% 1.87/1.03  
% 1.87/1.03  ------ Preprocessing Options
% 1.87/1.03  
% 1.87/1.03  --preprocessing_flag                    true
% 1.87/1.03  --time_out_prep_mult                    0.1
% 1.87/1.03  --splitting_mode                        input
% 1.87/1.03  --splitting_grd                         true
% 1.87/1.03  --splitting_cvd                         false
% 1.87/1.03  --splitting_cvd_svl                     false
% 1.87/1.03  --splitting_nvd                         32
% 1.87/1.03  --sub_typing                            true
% 1.87/1.03  --prep_gs_sim                           true
% 1.87/1.03  --prep_unflatten                        true
% 1.87/1.03  --prep_res_sim                          true
% 1.87/1.03  --prep_upred                            true
% 1.87/1.03  --prep_sem_filter                       exhaustive
% 1.87/1.03  --prep_sem_filter_out                   false
% 1.87/1.03  --pred_elim                             true
% 1.87/1.03  --res_sim_input                         true
% 1.87/1.03  --eq_ax_congr_red                       true
% 1.87/1.03  --pure_diseq_elim                       true
% 1.87/1.03  --brand_transform                       false
% 1.87/1.03  --non_eq_to_eq                          false
% 1.87/1.03  --prep_def_merge                        true
% 1.87/1.03  --prep_def_merge_prop_impl              false
% 1.87/1.03  --prep_def_merge_mbd                    true
% 1.87/1.03  --prep_def_merge_tr_red                 false
% 1.87/1.03  --prep_def_merge_tr_cl                  false
% 1.87/1.03  --smt_preprocessing                     true
% 1.87/1.03  --smt_ac_axioms                         fast
% 1.87/1.03  --preprocessed_out                      false
% 1.87/1.03  --preprocessed_stats                    false
% 1.87/1.03  
% 1.87/1.03  ------ Abstraction refinement Options
% 1.87/1.03  
% 1.87/1.03  --abstr_ref                             []
% 1.87/1.03  --abstr_ref_prep                        false
% 1.87/1.03  --abstr_ref_until_sat                   false
% 1.87/1.03  --abstr_ref_sig_restrict                funpre
% 1.87/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 1.87/1.03  --abstr_ref_under                       []
% 1.87/1.03  
% 1.87/1.03  ------ SAT Options
% 1.87/1.03  
% 1.87/1.03  --sat_mode                              false
% 1.87/1.03  --sat_fm_restart_options                ""
% 1.87/1.03  --sat_gr_def                            false
% 1.87/1.03  --sat_epr_types                         true
% 1.87/1.03  --sat_non_cyclic_types                  false
% 1.87/1.03  --sat_finite_models                     false
% 1.87/1.03  --sat_fm_lemmas                         false
% 1.87/1.03  --sat_fm_prep                           false
% 1.87/1.03  --sat_fm_uc_incr                        true
% 1.87/1.03  --sat_out_model                         small
% 1.87/1.03  --sat_out_clauses                       false
% 1.87/1.03  
% 1.87/1.03  ------ QBF Options
% 1.87/1.03  
% 1.87/1.03  --qbf_mode                              false
% 1.87/1.03  --qbf_elim_univ                         false
% 1.87/1.03  --qbf_dom_inst                          none
% 1.87/1.03  --qbf_dom_pre_inst                      false
% 1.87/1.03  --qbf_sk_in                             false
% 1.87/1.03  --qbf_pred_elim                         true
% 1.87/1.03  --qbf_split                             512
% 1.87/1.03  
% 1.87/1.03  ------ BMC1 Options
% 1.87/1.03  
% 1.87/1.03  --bmc1_incremental                      false
% 1.87/1.03  --bmc1_axioms                           reachable_all
% 1.87/1.03  --bmc1_min_bound                        0
% 1.87/1.03  --bmc1_max_bound                        -1
% 1.87/1.03  --bmc1_max_bound_default                -1
% 1.87/1.03  --bmc1_symbol_reachability              true
% 1.87/1.03  --bmc1_property_lemmas                  false
% 1.87/1.03  --bmc1_k_induction                      false
% 1.87/1.03  --bmc1_non_equiv_states                 false
% 1.87/1.03  --bmc1_deadlock                         false
% 1.87/1.03  --bmc1_ucm                              false
% 1.87/1.03  --bmc1_add_unsat_core                   none
% 1.87/1.03  --bmc1_unsat_core_children              false
% 1.87/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 1.87/1.03  --bmc1_out_stat                         full
% 1.87/1.03  --bmc1_ground_init                      false
% 1.87/1.03  --bmc1_pre_inst_next_state              false
% 1.87/1.03  --bmc1_pre_inst_state                   false
% 1.87/1.03  --bmc1_pre_inst_reach_state             false
% 1.87/1.03  --bmc1_out_unsat_core                   false
% 1.87/1.03  --bmc1_aig_witness_out                  false
% 1.87/1.03  --bmc1_verbose                          false
% 1.87/1.03  --bmc1_dump_clauses_tptp                false
% 1.87/1.03  --bmc1_dump_unsat_core_tptp             false
% 1.87/1.03  --bmc1_dump_file                        -
% 1.87/1.03  --bmc1_ucm_expand_uc_limit              128
% 1.87/1.03  --bmc1_ucm_n_expand_iterations          6
% 1.87/1.03  --bmc1_ucm_extend_mode                  1
% 1.87/1.03  --bmc1_ucm_init_mode                    2
% 1.87/1.03  --bmc1_ucm_cone_mode                    none
% 1.87/1.03  --bmc1_ucm_reduced_relation_type        0
% 1.87/1.03  --bmc1_ucm_relax_model                  4
% 1.87/1.03  --bmc1_ucm_full_tr_after_sat            true
% 1.87/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 1.87/1.03  --bmc1_ucm_layered_model                none
% 1.87/1.03  --bmc1_ucm_max_lemma_size               10
% 1.87/1.03  
% 1.87/1.03  ------ AIG Options
% 1.87/1.03  
% 1.87/1.03  --aig_mode                              false
% 1.87/1.03  
% 1.87/1.03  ------ Instantiation Options
% 1.87/1.03  
% 1.87/1.03  --instantiation_flag                    true
% 1.87/1.03  --inst_sos_flag                         false
% 1.87/1.03  --inst_sos_phase                        true
% 1.87/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.87/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.87/1.03  --inst_lit_sel_side                     num_symb
% 1.87/1.03  --inst_solver_per_active                1400
% 1.87/1.03  --inst_solver_calls_frac                1.
% 1.87/1.03  --inst_passive_queue_type               priority_queues
% 1.87/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.87/1.03  --inst_passive_queues_freq              [25;2]
% 1.87/1.03  --inst_dismatching                      true
% 1.87/1.03  --inst_eager_unprocessed_to_passive     true
% 1.87/1.03  --inst_prop_sim_given                   true
% 1.87/1.03  --inst_prop_sim_new                     false
% 1.87/1.03  --inst_subs_new                         false
% 1.87/1.03  --inst_eq_res_simp                      false
% 1.87/1.03  --inst_subs_given                       false
% 1.87/1.03  --inst_orphan_elimination               true
% 1.87/1.03  --inst_learning_loop_flag               true
% 1.87/1.03  --inst_learning_start                   3000
% 1.87/1.03  --inst_learning_factor                  2
% 1.87/1.03  --inst_start_prop_sim_after_learn       3
% 1.87/1.03  --inst_sel_renew                        solver
% 1.87/1.03  --inst_lit_activity_flag                true
% 1.87/1.03  --inst_restr_to_given                   false
% 1.87/1.03  --inst_activity_threshold               500
% 1.87/1.03  --inst_out_proof                        true
% 1.87/1.03  
% 1.87/1.03  ------ Resolution Options
% 1.87/1.03  
% 1.87/1.03  --resolution_flag                       true
% 1.87/1.03  --res_lit_sel                           adaptive
% 1.87/1.03  --res_lit_sel_side                      none
% 1.87/1.03  --res_ordering                          kbo
% 1.87/1.03  --res_to_prop_solver                    active
% 1.87/1.03  --res_prop_simpl_new                    false
% 1.87/1.03  --res_prop_simpl_given                  true
% 1.87/1.03  --res_passive_queue_type                priority_queues
% 1.87/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.87/1.03  --res_passive_queues_freq               [15;5]
% 1.87/1.03  --res_forward_subs                      full
% 1.87/1.03  --res_backward_subs                     full
% 1.87/1.03  --res_forward_subs_resolution           true
% 1.87/1.03  --res_backward_subs_resolution          true
% 1.87/1.03  --res_orphan_elimination                true
% 1.87/1.03  --res_time_limit                        2.
% 1.87/1.03  --res_out_proof                         true
% 1.87/1.03  
% 1.87/1.03  ------ Superposition Options
% 1.87/1.03  
% 1.87/1.03  --superposition_flag                    true
% 1.87/1.03  --sup_passive_queue_type                priority_queues
% 1.87/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.87/1.03  --sup_passive_queues_freq               [8;1;4]
% 1.87/1.03  --demod_completeness_check              fast
% 1.87/1.03  --demod_use_ground                      true
% 1.87/1.03  --sup_to_prop_solver                    passive
% 1.87/1.03  --sup_prop_simpl_new                    true
% 1.87/1.03  --sup_prop_simpl_given                  true
% 1.87/1.03  --sup_fun_splitting                     false
% 1.87/1.03  --sup_smt_interval                      50000
% 1.87/1.03  
% 1.87/1.03  ------ Superposition Simplification Setup
% 1.87/1.03  
% 1.87/1.03  --sup_indices_passive                   []
% 1.87/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.87/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.87/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.87/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 1.87/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.87/1.03  --sup_full_bw                           [BwDemod]
% 1.87/1.03  --sup_immed_triv                        [TrivRules]
% 1.87/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.87/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.87/1.03  --sup_immed_bw_main                     []
% 1.87/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.87/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 1.87/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.87/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.87/1.03  
% 1.87/1.03  ------ Combination Options
% 1.87/1.03  
% 1.87/1.03  --comb_res_mult                         3
% 1.87/1.03  --comb_sup_mult                         2
% 1.87/1.03  --comb_inst_mult                        10
% 1.87/1.03  
% 1.87/1.03  ------ Debug Options
% 1.87/1.03  
% 1.87/1.03  --dbg_backtrace                         false
% 1.87/1.03  --dbg_dump_prop_clauses                 false
% 1.87/1.03  --dbg_dump_prop_clauses_file            -
% 1.87/1.03  --dbg_out_stat                          false
% 1.87/1.03  ------ Parsing...
% 1.87/1.03  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.87/1.03  
% 1.87/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.87/1.03  
% 1.87/1.03  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.87/1.03  
% 1.87/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.87/1.03  ------ Proving...
% 1.87/1.03  ------ Problem Properties 
% 1.87/1.03  
% 1.87/1.03  
% 1.87/1.03  clauses                                 21
% 1.87/1.03  conjectures                             5
% 1.87/1.03  EPR                                     3
% 1.87/1.03  Horn                                    21
% 1.87/1.03  unary                                   6
% 1.87/1.03  binary                                  3
% 1.87/1.03  lits                                    66
% 1.87/1.03  lits eq                                 7
% 1.87/1.03  fd_pure                                 0
% 1.87/1.03  fd_pseudo                               0
% 1.87/1.03  fd_cond                                 0
% 1.87/1.03  fd_pseudo_cond                          1
% 1.87/1.03  AC symbols                              0
% 1.87/1.03  
% 1.87/1.03  ------ Schedule dynamic 5 is on 
% 1.87/1.03  
% 1.87/1.03  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.87/1.03  
% 1.87/1.03  
% 1.87/1.03  ------ 
% 1.87/1.03  Current options:
% 1.87/1.03  ------ 
% 1.87/1.03  
% 1.87/1.03  ------ Input Options
% 1.87/1.03  
% 1.87/1.03  --out_options                           all
% 1.87/1.03  --tptp_safe_out                         true
% 1.87/1.03  --problem_path                          ""
% 1.87/1.03  --include_path                          ""
% 1.87/1.03  --clausifier                            res/vclausify_rel
% 1.87/1.03  --clausifier_options                    --mode clausify
% 1.87/1.03  --stdin                                 false
% 1.87/1.03  --stats_out                             all
% 1.87/1.03  
% 1.87/1.03  ------ General Options
% 1.87/1.03  
% 1.87/1.03  --fof                                   false
% 1.87/1.03  --time_out_real                         305.
% 1.87/1.03  --time_out_virtual                      -1.
% 1.87/1.03  --symbol_type_check                     false
% 1.87/1.03  --clausify_out                          false
% 1.87/1.03  --sig_cnt_out                           false
% 1.87/1.03  --trig_cnt_out                          false
% 1.87/1.03  --trig_cnt_out_tolerance                1.
% 1.87/1.03  --trig_cnt_out_sk_spl                   false
% 1.87/1.03  --abstr_cl_out                          false
% 1.87/1.03  
% 1.87/1.03  ------ Global Options
% 1.87/1.03  
% 1.87/1.03  --schedule                              default
% 1.87/1.03  --add_important_lit                     false
% 1.87/1.03  --prop_solver_per_cl                    1000
% 1.87/1.03  --min_unsat_core                        false
% 1.87/1.03  --soft_assumptions                      false
% 1.87/1.03  --soft_lemma_size                       3
% 1.87/1.03  --prop_impl_unit_size                   0
% 1.87/1.03  --prop_impl_unit                        []
% 1.87/1.03  --share_sel_clauses                     true
% 1.87/1.03  --reset_solvers                         false
% 1.87/1.03  --bc_imp_inh                            [conj_cone]
% 1.87/1.03  --conj_cone_tolerance                   3.
% 1.87/1.03  --extra_neg_conj                        none
% 1.87/1.03  --large_theory_mode                     true
% 1.87/1.03  --prolific_symb_bound                   200
% 1.87/1.03  --lt_threshold                          2000
% 1.87/1.03  --clause_weak_htbl                      true
% 1.87/1.03  --gc_record_bc_elim                     false
% 1.87/1.03  
% 1.87/1.03  ------ Preprocessing Options
% 1.87/1.03  
% 1.87/1.03  --preprocessing_flag                    true
% 1.87/1.03  --time_out_prep_mult                    0.1
% 1.87/1.03  --splitting_mode                        input
% 1.87/1.03  --splitting_grd                         true
% 1.87/1.03  --splitting_cvd                         false
% 1.87/1.03  --splitting_cvd_svl                     false
% 1.87/1.03  --splitting_nvd                         32
% 1.87/1.03  --sub_typing                            true
% 1.87/1.03  --prep_gs_sim                           true
% 1.87/1.03  --prep_unflatten                        true
% 1.87/1.03  --prep_res_sim                          true
% 1.87/1.03  --prep_upred                            true
% 1.87/1.03  --prep_sem_filter                       exhaustive
% 1.87/1.03  --prep_sem_filter_out                   false
% 1.87/1.03  --pred_elim                             true
% 1.87/1.03  --res_sim_input                         true
% 1.87/1.03  --eq_ax_congr_red                       true
% 1.87/1.03  --pure_diseq_elim                       true
% 1.87/1.03  --brand_transform                       false
% 1.87/1.03  --non_eq_to_eq                          false
% 1.87/1.03  --prep_def_merge                        true
% 1.87/1.03  --prep_def_merge_prop_impl              false
% 1.87/1.03  --prep_def_merge_mbd                    true
% 1.87/1.03  --prep_def_merge_tr_red                 false
% 1.87/1.03  --prep_def_merge_tr_cl                  false
% 1.87/1.03  --smt_preprocessing                     true
% 1.87/1.03  --smt_ac_axioms                         fast
% 1.87/1.03  --preprocessed_out                      false
% 1.87/1.03  --preprocessed_stats                    false
% 1.87/1.03  
% 1.87/1.03  ------ Abstraction refinement Options
% 1.87/1.03  
% 1.87/1.03  --abstr_ref                             []
% 1.87/1.03  --abstr_ref_prep                        false
% 1.87/1.03  --abstr_ref_until_sat                   false
% 1.87/1.03  --abstr_ref_sig_restrict                funpre
% 1.87/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 1.87/1.03  --abstr_ref_under                       []
% 1.87/1.03  
% 1.87/1.03  ------ SAT Options
% 1.87/1.03  
% 1.87/1.03  --sat_mode                              false
% 1.87/1.03  --sat_fm_restart_options                ""
% 1.87/1.03  --sat_gr_def                            false
% 1.87/1.03  --sat_epr_types                         true
% 1.87/1.03  --sat_non_cyclic_types                  false
% 1.87/1.03  --sat_finite_models                     false
% 1.87/1.03  --sat_fm_lemmas                         false
% 1.87/1.03  --sat_fm_prep                           false
% 1.87/1.03  --sat_fm_uc_incr                        true
% 1.87/1.03  --sat_out_model                         small
% 1.87/1.03  --sat_out_clauses                       false
% 1.87/1.03  
% 1.87/1.03  ------ QBF Options
% 1.87/1.03  
% 1.87/1.03  --qbf_mode                              false
% 1.87/1.03  --qbf_elim_univ                         false
% 1.87/1.03  --qbf_dom_inst                          none
% 1.87/1.03  --qbf_dom_pre_inst                      false
% 1.87/1.03  --qbf_sk_in                             false
% 1.87/1.03  --qbf_pred_elim                         true
% 1.87/1.03  --qbf_split                             512
% 1.87/1.03  
% 1.87/1.03  ------ BMC1 Options
% 1.87/1.03  
% 1.87/1.03  --bmc1_incremental                      false
% 1.87/1.03  --bmc1_axioms                           reachable_all
% 1.87/1.03  --bmc1_min_bound                        0
% 1.87/1.03  --bmc1_max_bound                        -1
% 1.87/1.03  --bmc1_max_bound_default                -1
% 1.87/1.03  --bmc1_symbol_reachability              true
% 1.87/1.03  --bmc1_property_lemmas                  false
% 1.87/1.03  --bmc1_k_induction                      false
% 1.87/1.03  --bmc1_non_equiv_states                 false
% 1.87/1.03  --bmc1_deadlock                         false
% 1.87/1.03  --bmc1_ucm                              false
% 1.87/1.03  --bmc1_add_unsat_core                   none
% 1.87/1.03  --bmc1_unsat_core_children              false
% 1.87/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 1.87/1.03  --bmc1_out_stat                         full
% 1.87/1.03  --bmc1_ground_init                      false
% 1.87/1.03  --bmc1_pre_inst_next_state              false
% 1.87/1.03  --bmc1_pre_inst_state                   false
% 1.87/1.03  --bmc1_pre_inst_reach_state             false
% 1.87/1.03  --bmc1_out_unsat_core                   false
% 1.87/1.03  --bmc1_aig_witness_out                  false
% 1.87/1.03  --bmc1_verbose                          false
% 1.87/1.03  --bmc1_dump_clauses_tptp                false
% 1.87/1.03  --bmc1_dump_unsat_core_tptp             false
% 1.87/1.03  --bmc1_dump_file                        -
% 1.87/1.03  --bmc1_ucm_expand_uc_limit              128
% 1.87/1.03  --bmc1_ucm_n_expand_iterations          6
% 1.87/1.03  --bmc1_ucm_extend_mode                  1
% 1.87/1.03  --bmc1_ucm_init_mode                    2
% 1.87/1.03  --bmc1_ucm_cone_mode                    none
% 1.87/1.03  --bmc1_ucm_reduced_relation_type        0
% 1.87/1.03  --bmc1_ucm_relax_model                  4
% 1.87/1.03  --bmc1_ucm_full_tr_after_sat            true
% 1.87/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 1.87/1.03  --bmc1_ucm_layered_model                none
% 1.87/1.03  --bmc1_ucm_max_lemma_size               10
% 1.87/1.03  
% 1.87/1.03  ------ AIG Options
% 1.87/1.03  
% 1.87/1.03  --aig_mode                              false
% 1.87/1.03  
% 1.87/1.03  ------ Instantiation Options
% 1.87/1.03  
% 1.87/1.03  --instantiation_flag                    true
% 1.87/1.03  --inst_sos_flag                         false
% 1.87/1.03  --inst_sos_phase                        true
% 1.87/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.87/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.87/1.03  --inst_lit_sel_side                     none
% 1.87/1.03  --inst_solver_per_active                1400
% 1.87/1.03  --inst_solver_calls_frac                1.
% 1.87/1.03  --inst_passive_queue_type               priority_queues
% 1.87/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.87/1.03  --inst_passive_queues_freq              [25;2]
% 1.87/1.03  --inst_dismatching                      true
% 1.87/1.03  --inst_eager_unprocessed_to_passive     true
% 1.87/1.03  --inst_prop_sim_given                   true
% 1.87/1.03  --inst_prop_sim_new                     false
% 1.87/1.03  --inst_subs_new                         false
% 1.87/1.03  --inst_eq_res_simp                      false
% 1.87/1.03  --inst_subs_given                       false
% 1.87/1.03  --inst_orphan_elimination               true
% 1.87/1.03  --inst_learning_loop_flag               true
% 1.87/1.03  --inst_learning_start                   3000
% 1.87/1.03  --inst_learning_factor                  2
% 1.87/1.03  --inst_start_prop_sim_after_learn       3
% 1.87/1.03  --inst_sel_renew                        solver
% 1.87/1.03  --inst_lit_activity_flag                true
% 1.87/1.03  --inst_restr_to_given                   false
% 1.87/1.03  --inst_activity_threshold               500
% 1.87/1.03  --inst_out_proof                        true
% 1.87/1.03  
% 1.87/1.03  ------ Resolution Options
% 1.87/1.03  
% 1.87/1.03  --resolution_flag                       false
% 1.87/1.03  --res_lit_sel                           adaptive
% 1.87/1.03  --res_lit_sel_side                      none
% 1.87/1.03  --res_ordering                          kbo
% 1.87/1.03  --res_to_prop_solver                    active
% 1.87/1.03  --res_prop_simpl_new                    false
% 1.87/1.03  --res_prop_simpl_given                  true
% 1.87/1.03  --res_passive_queue_type                priority_queues
% 1.87/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.87/1.03  --res_passive_queues_freq               [15;5]
% 1.87/1.03  --res_forward_subs                      full
% 1.87/1.03  --res_backward_subs                     full
% 1.87/1.03  --res_forward_subs_resolution           true
% 1.87/1.03  --res_backward_subs_resolution          true
% 1.87/1.03  --res_orphan_elimination                true
% 1.87/1.03  --res_time_limit                        2.
% 1.87/1.03  --res_out_proof                         true
% 1.87/1.03  
% 1.87/1.03  ------ Superposition Options
% 1.87/1.03  
% 1.87/1.03  --superposition_flag                    true
% 1.87/1.03  --sup_passive_queue_type                priority_queues
% 1.87/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.87/1.03  --sup_passive_queues_freq               [8;1;4]
% 1.87/1.03  --demod_completeness_check              fast
% 1.87/1.03  --demod_use_ground                      true
% 1.87/1.03  --sup_to_prop_solver                    passive
% 1.87/1.03  --sup_prop_simpl_new                    true
% 1.87/1.03  --sup_prop_simpl_given                  true
% 1.87/1.03  --sup_fun_splitting                     false
% 1.87/1.03  --sup_smt_interval                      50000
% 1.87/1.03  
% 1.87/1.03  ------ Superposition Simplification Setup
% 1.87/1.03  
% 1.87/1.03  --sup_indices_passive                   []
% 1.87/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.87/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.87/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.87/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 1.87/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.87/1.03  --sup_full_bw                           [BwDemod]
% 1.87/1.03  --sup_immed_triv                        [TrivRules]
% 1.87/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.87/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.87/1.03  --sup_immed_bw_main                     []
% 1.87/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.87/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 1.87/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.87/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.87/1.03  
% 1.87/1.03  ------ Combination Options
% 1.87/1.03  
% 1.87/1.03  --comb_res_mult                         3
% 1.87/1.03  --comb_sup_mult                         2
% 1.87/1.03  --comb_inst_mult                        10
% 1.87/1.03  
% 1.87/1.03  ------ Debug Options
% 1.87/1.03  
% 1.87/1.03  --dbg_backtrace                         false
% 1.87/1.03  --dbg_dump_prop_clauses                 false
% 1.87/1.03  --dbg_dump_prop_clauses_file            -
% 1.87/1.03  --dbg_out_stat                          false
% 1.87/1.03  
% 1.87/1.03  
% 1.87/1.03  
% 1.87/1.03  
% 1.87/1.03  ------ Proving...
% 1.87/1.03  
% 1.87/1.03  
% 1.87/1.03  % SZS status Theorem for theBenchmark.p
% 1.87/1.03  
% 1.87/1.03  % SZS output start CNFRefutation for theBenchmark.p
% 1.87/1.03  
% 1.87/1.03  fof(f15,conjecture,(
% 1.87/1.03    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f16,negated_conjecture,(
% 1.87/1.03    ~! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) & r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))))),
% 1.87/1.03    inference(negated_conjecture,[],[f15])).
% 1.87/1.03  
% 1.87/1.03  fof(f38,plain,(
% 1.87/1.03    ? [X0,X1] : ((~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))) & (m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)))),
% 1.87/1.03    inference(ennf_transformation,[],[f16])).
% 1.87/1.03  
% 1.87/1.03  fof(f39,plain,(
% 1.87/1.03    ? [X0,X1] : ((~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1))),
% 1.87/1.03    inference(flattening,[],[f38])).
% 1.87/1.03  
% 1.87/1.03  fof(f43,plain,(
% 1.87/1.03    ? [X0,X1] : ((~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,k2_funct_2(X0,X1),X1),k6_partfun1(X0)) | ~r2_relset_1(X0,X0,k1_partfun1(X0,X0,X0,X0,X1,k2_funct_2(X0,X1)),k6_partfun1(X0))) & m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => ((~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1)) | ~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) & v3_funct_2(sK2,sK1,sK1) & v1_funct_2(sK2,sK1,sK1) & v1_funct_1(sK2))),
% 1.87/1.03    introduced(choice_axiom,[])).
% 1.87/1.03  
% 1.87/1.03  fof(f44,plain,(
% 1.87/1.03    (~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1)) | ~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) & v3_funct_2(sK2,sK1,sK1) & v1_funct_2(sK2,sK1,sK1) & v1_funct_1(sK2)),
% 1.87/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f39,f43])).
% 1.87/1.03  
% 1.87/1.03  fof(f69,plain,(
% 1.87/1.03    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))),
% 1.87/1.03    inference(cnf_transformation,[],[f44])).
% 1.87/1.03  
% 1.87/1.03  fof(f14,axiom,(
% 1.87/1.03    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => k1_relset_1(X0,X0,X1) = X0)),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f36,plain,(
% 1.87/1.03    ! [X0,X1] : (k1_relset_1(X0,X0,X1) = X0 | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 1.87/1.03    inference(ennf_transformation,[],[f14])).
% 1.87/1.03  
% 1.87/1.03  fof(f37,plain,(
% 1.87/1.03    ! [X0,X1] : (k1_relset_1(X0,X0,X1) = X0 | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 1.87/1.03    inference(flattening,[],[f36])).
% 1.87/1.03  
% 1.87/1.03  fof(f65,plain,(
% 1.87/1.03    ( ! [X0,X1] : (k1_relset_1(X0,X0,X1) = X0 | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 1.87/1.03    inference(cnf_transformation,[],[f37])).
% 1.87/1.03  
% 1.87/1.03  fof(f5,axiom,(
% 1.87/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f23,plain,(
% 1.87/1.03    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.87/1.03    inference(ennf_transformation,[],[f5])).
% 1.87/1.03  
% 1.87/1.03  fof(f50,plain,(
% 1.87/1.03    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.87/1.03    inference(cnf_transformation,[],[f23])).
% 1.87/1.03  
% 1.87/1.03  fof(f66,plain,(
% 1.87/1.03    v1_funct_1(sK2)),
% 1.87/1.03    inference(cnf_transformation,[],[f44])).
% 1.87/1.03  
% 1.87/1.03  fof(f67,plain,(
% 1.87/1.03    v1_funct_2(sK2,sK1,sK1)),
% 1.87/1.03    inference(cnf_transformation,[],[f44])).
% 1.87/1.03  
% 1.87/1.03  fof(f3,axiom,(
% 1.87/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f21,plain,(
% 1.87/1.03    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.87/1.03    inference(ennf_transformation,[],[f3])).
% 1.87/1.03  
% 1.87/1.03  fof(f48,plain,(
% 1.87/1.03    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.87/1.03    inference(cnf_transformation,[],[f21])).
% 1.87/1.03  
% 1.87/1.03  fof(f2,axiom,(
% 1.87/1.03    ! [X0] : ((v1_funct_1(X0) & v1_relat_1(X0)) => (v2_funct_1(X0) => (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)))))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f19,plain,(
% 1.87/1.03    ! [X0] : (((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0)) | (~v1_funct_1(X0) | ~v1_relat_1(X0)))),
% 1.87/1.03    inference(ennf_transformation,[],[f2])).
% 1.87/1.03  
% 1.87/1.03  fof(f20,plain,(
% 1.87/1.03    ! [X0] : ((k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) & k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0))) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0))),
% 1.87/1.03    inference(flattening,[],[f19])).
% 1.87/1.03  
% 1.87/1.03  fof(f46,plain,(
% 1.87/1.03    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_relat_1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.87/1.03    inference(cnf_transformation,[],[f20])).
% 1.87/1.03  
% 1.87/1.03  fof(f13,axiom,(
% 1.87/1.03    ! [X0] : k6_relat_1(X0) = k6_partfun1(X0)),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f64,plain,(
% 1.87/1.03    ( ! [X0] : (k6_relat_1(X0) = k6_partfun1(X0)) )),
% 1.87/1.03    inference(cnf_transformation,[],[f13])).
% 1.87/1.03  
% 1.87/1.03  fof(f72,plain,(
% 1.87/1.03    ( ! [X0] : (k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.87/1.03    inference(definition_unfolding,[],[f46,f64])).
% 1.87/1.03  
% 1.87/1.03  fof(f68,plain,(
% 1.87/1.03    v3_funct_2(sK2,sK1,sK1)),
% 1.87/1.03    inference(cnf_transformation,[],[f44])).
% 1.87/1.03  
% 1.87/1.03  fof(f7,axiom,(
% 1.87/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v3_funct_2(X2,X0,X1) & v1_funct_1(X2)) => (v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2))))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f26,plain,(
% 1.87/1.03    ! [X0,X1,X2] : (((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | (~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.87/1.03    inference(ennf_transformation,[],[f7])).
% 1.87/1.03  
% 1.87/1.03  fof(f27,plain,(
% 1.87/1.03    ! [X0,X1,X2] : ((v2_funct_2(X2,X1) & v2_funct_1(X2) & v1_funct_1(X2)) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.87/1.03    inference(flattening,[],[f26])).
% 1.87/1.03  
% 1.87/1.03  fof(f53,plain,(
% 1.87/1.03    ( ! [X2,X0,X1] : (v2_funct_1(X2) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.87/1.03    inference(cnf_transformation,[],[f27])).
% 1.87/1.03  
% 1.87/1.03  fof(f12,axiom,(
% 1.87/1.03    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => k2_funct_1(X1) = k2_funct_2(X0,X1))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f34,plain,(
% 1.87/1.03    ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 1.87/1.03    inference(ennf_transformation,[],[f12])).
% 1.87/1.03  
% 1.87/1.03  fof(f35,plain,(
% 1.87/1.03    ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 1.87/1.03    inference(flattening,[],[f34])).
% 1.87/1.03  
% 1.87/1.03  fof(f63,plain,(
% 1.87/1.03    ( ! [X0,X1] : (k2_funct_1(X1) = k2_funct_2(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 1.87/1.03    inference(cnf_transformation,[],[f35])).
% 1.87/1.03  
% 1.87/1.03  fof(f9,axiom,(
% 1.87/1.03    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(X1,X0,X0) & v1_funct_2(X1,X0,X0) & v1_funct_1(X1)) => (m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f30,plain,(
% 1.87/1.03    ! [X0,X1] : ((m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))) | (~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)))),
% 1.87/1.03    inference(ennf_transformation,[],[f9])).
% 1.87/1.03  
% 1.87/1.03  fof(f31,plain,(
% 1.87/1.03    ! [X0,X1] : ((m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v3_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_2(k2_funct_2(X0,X1),X0,X0) & v1_funct_1(k2_funct_2(X0,X1))) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1))),
% 1.87/1.03    inference(flattening,[],[f30])).
% 1.87/1.03  
% 1.87/1.03  fof(f60,plain,(
% 1.87/1.03    ( ! [X0,X1] : (m1_subset_1(k2_funct_2(X0,X1),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 1.87/1.03    inference(cnf_transformation,[],[f31])).
% 1.87/1.03  
% 1.87/1.03  fof(f11,axiom,(
% 1.87/1.03    ! [X0,X1,X2,X3,X4,X5] : ((m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) & v1_funct_1(X5) & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & v1_funct_1(X4)) => k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f32,plain,(
% 1.87/1.03    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | (~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)))),
% 1.87/1.03    inference(ennf_transformation,[],[f11])).
% 1.87/1.03  
% 1.87/1.03  fof(f33,plain,(
% 1.87/1.03    ! [X0,X1,X2,X3,X4,X5] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4))),
% 1.87/1.03    inference(flattening,[],[f32])).
% 1.87/1.03  
% 1.87/1.03  fof(f62,plain,(
% 1.87/1.03    ( ! [X4,X2,X0,X5,X3,X1] : (k5_relat_1(X4,X5) = k1_partfun1(X0,X1,X2,X3,X4,X5) | ~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) | ~v1_funct_1(X5) | ~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_funct_1(X4)) )),
% 1.87/1.03    inference(cnf_transformation,[],[f33])).
% 1.87/1.03  
% 1.87/1.03  fof(f57,plain,(
% 1.87/1.03    ( ! [X0,X1] : (v1_funct_1(k2_funct_2(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X0,X0))) | ~v3_funct_2(X1,X0,X0) | ~v1_funct_2(X1,X0,X0) | ~v1_funct_1(X1)) )),
% 1.87/1.03    inference(cnf_transformation,[],[f31])).
% 1.87/1.03  
% 1.87/1.03  fof(f70,plain,(
% 1.87/1.03    ~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1)) | ~r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1))),
% 1.87/1.03    inference(cnf_transformation,[],[f44])).
% 1.87/1.03  
% 1.87/1.03  fof(f10,axiom,(
% 1.87/1.03    ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) & v1_partfun1(k6_partfun1(X0),X0))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f17,plain,(
% 1.87/1.03    ! [X0] : m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))),
% 1.87/1.03    inference(pure_predicate_removal,[],[f10])).
% 1.87/1.03  
% 1.87/1.03  fof(f61,plain,(
% 1.87/1.03    ( ! [X0] : (m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0)))) )),
% 1.87/1.03    inference(cnf_transformation,[],[f17])).
% 1.87/1.03  
% 1.87/1.03  fof(f6,axiom,(
% 1.87/1.03    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => r2_relset_1(X0,X1,X2,X2))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f24,plain,(
% 1.87/1.03    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 1.87/1.03    inference(ennf_transformation,[],[f6])).
% 1.87/1.03  
% 1.87/1.03  fof(f25,plain,(
% 1.87/1.03    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.87/1.03    inference(flattening,[],[f24])).
% 1.87/1.03  
% 1.87/1.03  fof(f51,plain,(
% 1.87/1.03    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.87/1.03    inference(cnf_transformation,[],[f25])).
% 1.87/1.03  
% 1.87/1.03  fof(f54,plain,(
% 1.87/1.03    ( ! [X2,X0,X1] : (v2_funct_2(X2,X1) | ~v3_funct_2(X2,X0,X1) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.87/1.03    inference(cnf_transformation,[],[f27])).
% 1.87/1.03  
% 1.87/1.03  fof(f4,axiom,(
% 1.87/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f18,plain,(
% 1.87/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v5_relat_1(X2,X1))),
% 1.87/1.03    inference(pure_predicate_removal,[],[f4])).
% 1.87/1.03  
% 1.87/1.03  fof(f22,plain,(
% 1.87/1.03    ! [X0,X1,X2] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.87/1.03    inference(ennf_transformation,[],[f18])).
% 1.87/1.03  
% 1.87/1.03  fof(f49,plain,(
% 1.87/1.03    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.87/1.03    inference(cnf_transformation,[],[f22])).
% 1.87/1.03  
% 1.87/1.03  fof(f8,axiom,(
% 1.87/1.03    ! [X0,X1] : ((v5_relat_1(X1,X0) & v1_relat_1(X1)) => (v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0))),
% 1.87/1.03    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.87/1.03  
% 1.87/1.03  fof(f28,plain,(
% 1.87/1.03    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | (~v5_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.87/1.03    inference(ennf_transformation,[],[f8])).
% 1.87/1.03  
% 1.87/1.03  fof(f29,plain,(
% 1.87/1.03    ! [X0,X1] : ((v2_funct_2(X1,X0) <=> k2_relat_1(X1) = X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.87/1.03    inference(flattening,[],[f28])).
% 1.87/1.03  
% 1.87/1.03  fof(f42,plain,(
% 1.87/1.03    ! [X0,X1] : (((v2_funct_2(X1,X0) | k2_relat_1(X1) != X0) & (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0))) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.87/1.03    inference(nnf_transformation,[],[f29])).
% 1.87/1.03  
% 1.87/1.03  fof(f55,plain,(
% 1.87/1.03    ( ! [X0,X1] : (k2_relat_1(X1) = X0 | ~v2_funct_2(X1,X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.87/1.03    inference(cnf_transformation,[],[f42])).
% 1.87/1.03  
% 1.87/1.03  fof(f47,plain,(
% 1.87/1.03    ( ! [X0] : (k5_relat_1(k2_funct_1(X0),X0) = k6_relat_1(k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.87/1.03    inference(cnf_transformation,[],[f20])).
% 1.87/1.03  
% 1.87/1.03  fof(f71,plain,(
% 1.87/1.03    ( ! [X0] : (k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) | ~v2_funct_1(X0) | ~v1_funct_1(X0) | ~v1_relat_1(X0)) )),
% 1.87/1.03    inference(definition_unfolding,[],[f47,f64])).
% 1.87/1.03  
% 1.87/1.03  cnf(c_699,plain,
% 1.87/1.03      ( X0_50 != X1_50 | X2_50 != X1_50 | X2_50 = X0_50 ),
% 1.87/1.03      theory(equality) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1427,plain,
% 1.87/1.03      ( X0_50 != X1_50
% 1.87/1.03      | X0_50 = k6_partfun1(X0_51)
% 1.87/1.03      | k6_partfun1(X0_51) != X1_50 ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_699]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3157,plain,
% 1.87/1.03      ( X0_50 != k5_relat_1(k2_funct_1(X1_50),X1_50)
% 1.87/1.03      | X0_50 = k6_partfun1(sK1)
% 1.87/1.03      | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(X1_50),X1_50) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_1427]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_4798,plain,
% 1.87/1.03      ( k1_partfun1(X0_51,X1_51,X2_51,X3_51,k2_funct_1(sK2),sK2) != k5_relat_1(k2_funct_1(sK2),sK2)
% 1.87/1.03      | k1_partfun1(X0_51,X1_51,X2_51,X3_51,k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
% 1.87/1.03      | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(sK2),sK2) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_3157]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_4802,plain,
% 1.87/1.03      ( k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) != k5_relat_1(k2_funct_1(sK2),sK2)
% 1.87/1.03      | k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) = k6_partfun1(sK1)
% 1.87/1.03      | k6_partfun1(sK1) != k5_relat_1(k2_funct_1(sK2),sK2) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_4798]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_707,plain,
% 1.87/1.03      ( ~ r2_relset_1(X0_51,X1_51,X0_50,X1_50)
% 1.87/1.03      | r2_relset_1(X2_51,X3_51,X2_50,X3_50)
% 1.87/1.03      | X2_51 != X0_51
% 1.87/1.03      | X3_51 != X1_51
% 1.87/1.03      | X2_50 != X0_50
% 1.87/1.03      | X3_50 != X1_50 ),
% 1.87/1.03      theory(equality) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2213,plain,
% 1.87/1.03      ( ~ r2_relset_1(X0_51,X1_51,X0_50,X1_50)
% 1.87/1.03      | r2_relset_1(X2_51,X3_51,k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X2_50),k6_partfun1(X8_51))
% 1.87/1.03      | X2_51 != X0_51
% 1.87/1.03      | X3_51 != X1_51
% 1.87/1.03      | k1_partfun1(X4_51,X5_51,X6_51,X7_51,k2_funct_1(sK2),X2_50) != X0_50
% 1.87/1.03      | k6_partfun1(X8_51) != X1_50 ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_707]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3377,plain,
% 1.87/1.03      ( ~ r2_relset_1(X0_51,X1_51,X0_50,k6_partfun1(X2_51))
% 1.87/1.03      | r2_relset_1(X3_51,X4_51,k1_partfun1(X5_51,X6_51,X7_51,X8_51,k2_funct_1(sK2),X1_50),k6_partfun1(X9_51))
% 1.87/1.03      | X3_51 != X0_51
% 1.87/1.03      | X4_51 != X1_51
% 1.87/1.03      | k1_partfun1(X5_51,X6_51,X7_51,X8_51,k2_funct_1(sK2),X1_50) != X0_50
% 1.87/1.03      | k6_partfun1(X9_51) != k6_partfun1(X2_51) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_2213]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_4632,plain,
% 1.87/1.03      ( r2_relset_1(X0_51,X1_51,k1_partfun1(X2_51,X3_51,X4_51,X5_51,k2_funct_1(sK2),X0_50),k6_partfun1(X6_51))
% 1.87/1.03      | ~ r2_relset_1(X7_51,X8_51,k6_partfun1(X9_51),k6_partfun1(X9_51))
% 1.87/1.03      | X0_51 != X7_51
% 1.87/1.03      | X1_51 != X8_51
% 1.87/1.03      | k1_partfun1(X2_51,X3_51,X4_51,X5_51,k2_funct_1(sK2),X0_50) != k6_partfun1(X9_51)
% 1.87/1.03      | k6_partfun1(X6_51) != k6_partfun1(X9_51) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_3377]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_4635,plain,
% 1.87/1.03      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1))
% 1.87/1.03      | ~ r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1))
% 1.87/1.03      | sK1 != sK1
% 1.87/1.03      | k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) != k6_partfun1(sK1)
% 1.87/1.03      | k6_partfun1(sK1) != k6_partfun1(sK1) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_4632]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_21,negated_conjecture,
% 1.87/1.03      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
% 1.87/1.03      inference(cnf_transformation,[],[f69]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_677,negated_conjecture,
% 1.87/1.03      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_21]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1139,plain,
% 1.87/1.03      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_677]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_19,plain,
% 1.87/1.03      ( ~ v1_funct_2(X0,X1,X1)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 1.87/1.03      | ~ v1_funct_1(X0)
% 1.87/1.03      | k1_relset_1(X1,X1,X0) = X1 ),
% 1.87/1.03      inference(cnf_transformation,[],[f65]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_679,plain,
% 1.87/1.03      ( ~ v1_funct_2(X0_50,X0_51,X0_51)
% 1.87/1.03      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 1.87/1.03      | ~ v1_funct_1(X0_50)
% 1.87/1.03      | k1_relset_1(X0_51,X0_51,X0_50) = X0_51 ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_19]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1137,plain,
% 1.87/1.03      ( k1_relset_1(X0_51,X0_51,X0_50) = X0_51
% 1.87/1.03      | v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_679]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2225,plain,
% 1.87/1.03      ( k1_relset_1(sK1,sK1,sK2) = sK1
% 1.87/1.03      | v1_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | v1_funct_1(sK2) != iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_1139,c_1137]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_5,plain,
% 1.87/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.87/1.03      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.87/1.03      inference(cnf_transformation,[],[f50]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_689,plain,
% 1.87/1.03      ( ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.87/1.03      | k1_relset_1(X0_51,X1_51,X0_50) = k1_relat_1(X0_50) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_5]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1127,plain,
% 1.87/1.03      ( k1_relset_1(X0_51,X1_51,X0_50) = k1_relat_1(X0_50)
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_689]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1461,plain,
% 1.87/1.03      ( k1_relset_1(sK1,sK1,sK2) = k1_relat_1(sK2) ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_1139,c_1127]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2258,plain,
% 1.87/1.03      ( k1_relat_1(sK2) = sK1
% 1.87/1.03      | v1_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | v1_funct_1(sK2) != iProver_top ),
% 1.87/1.03      inference(demodulation,[status(thm)],[c_2225,c_1461]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_24,negated_conjecture,
% 1.87/1.03      ( v1_funct_1(sK2) ),
% 1.87/1.03      inference(cnf_transformation,[],[f66]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_25,plain,
% 1.87/1.03      ( v1_funct_1(sK2) = iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_23,negated_conjecture,
% 1.87/1.03      ( v1_funct_2(sK2,sK1,sK1) ),
% 1.87/1.03      inference(cnf_transformation,[],[f67]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_26,plain,
% 1.87/1.03      ( v1_funct_2(sK2,sK1,sK1) = iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2773,plain,
% 1.87/1.03      ( k1_relat_1(sK2) = sK1 ),
% 1.87/1.03      inference(global_propositional_subsumption,
% 1.87/1.03                [status(thm)],
% 1.87/1.03                [c_2258,c_25,c_26]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3,plain,
% 1.87/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.87/1.03      | v1_relat_1(X0) ),
% 1.87/1.03      inference(cnf_transformation,[],[f48]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_690,plain,
% 1.87/1.03      ( ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.87/1.03      | v1_relat_1(X0_50) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_3]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1126,plain,
% 1.87/1.03      ( m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 1.87/1.03      | v1_relat_1(X0_50) = iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_690]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1377,plain,
% 1.87/1.03      ( v1_relat_1(sK2) = iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_1139,c_1126]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2,plain,
% 1.87/1.03      ( ~ v1_relat_1(X0)
% 1.87/1.03      | ~ v1_funct_1(X0)
% 1.87/1.03      | ~ v2_funct_1(X0)
% 1.87/1.03      | k5_relat_1(X0,k2_funct_1(X0)) = k6_partfun1(k1_relat_1(X0)) ),
% 1.87/1.03      inference(cnf_transformation,[],[f72]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_691,plain,
% 1.87/1.03      ( ~ v1_relat_1(X0_50)
% 1.87/1.03      | ~ v1_funct_1(X0_50)
% 1.87/1.03      | ~ v2_funct_1(X0_50)
% 1.87/1.03      | k5_relat_1(X0_50,k2_funct_1(X0_50)) = k6_partfun1(k1_relat_1(X0_50)) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_2]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1125,plain,
% 1.87/1.03      ( k5_relat_1(X0_50,k2_funct_1(X0_50)) = k6_partfun1(k1_relat_1(X0_50))
% 1.87/1.03      | v1_relat_1(X0_50) != iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top
% 1.87/1.03      | v2_funct_1(X0_50) != iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_691]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1676,plain,
% 1.87/1.03      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2))
% 1.87/1.03      | v1_funct_1(sK2) != iProver_top
% 1.87/1.03      | v2_funct_1(sK2) != iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_1377,c_1125]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_22,negated_conjecture,
% 1.87/1.03      ( v3_funct_2(sK2,sK1,sK1) ),
% 1.87/1.03      inference(cnf_transformation,[],[f68]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_735,plain,
% 1.87/1.03      ( ~ v1_relat_1(sK2)
% 1.87/1.03      | ~ v1_funct_1(sK2)
% 1.87/1.03      | ~ v2_funct_1(sK2)
% 1.87/1.03      | k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2)) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_691]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_738,plain,
% 1.87/1.03      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 1.87/1.03      | v1_relat_1(sK2) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_690]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_8,plain,
% 1.87/1.03      ( ~ v3_funct_2(X0,X1,X2)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.87/1.03      | ~ v1_funct_1(X0)
% 1.87/1.03      | v2_funct_1(X0) ),
% 1.87/1.03      inference(cnf_transformation,[],[f53]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_687,plain,
% 1.87/1.03      ( ~ v3_funct_2(X0_50,X0_51,X1_51)
% 1.87/1.03      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.87/1.03      | ~ v1_funct_1(X0_50)
% 1.87/1.03      | v2_funct_1(X0_50) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_8]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_747,plain,
% 1.87/1.03      ( ~ v3_funct_2(sK2,sK1,sK1)
% 1.87/1.03      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 1.87/1.03      | ~ v1_funct_1(sK2)
% 1.87/1.03      | v2_funct_1(sK2) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_687]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1834,plain,
% 1.87/1.03      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(k1_relat_1(sK2)) ),
% 1.87/1.03      inference(global_propositional_subsumption,
% 1.87/1.03                [status(thm)],
% 1.87/1.03                [c_1676,c_24,c_22,c_21,c_735,c_738,c_747]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2776,plain,
% 1.87/1.03      ( k5_relat_1(sK2,k2_funct_1(sK2)) = k6_partfun1(sK1) ),
% 1.87/1.03      inference(demodulation,[status(thm)],[c_2773,c_1834]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_18,plain,
% 1.87/1.03      ( ~ v1_funct_2(X0,X1,X1)
% 1.87/1.03      | ~ v3_funct_2(X0,X1,X1)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 1.87/1.03      | ~ v1_funct_1(X0)
% 1.87/1.03      | k2_funct_2(X1,X0) = k2_funct_1(X0) ),
% 1.87/1.03      inference(cnf_transformation,[],[f63]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_680,plain,
% 1.87/1.03      ( ~ v1_funct_2(X0_50,X0_51,X0_51)
% 1.87/1.03      | ~ v3_funct_2(X0_50,X0_51,X0_51)
% 1.87/1.03      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 1.87/1.03      | ~ v1_funct_1(X0_50)
% 1.87/1.03      | k2_funct_2(X0_51,X0_50) = k2_funct_1(X0_50) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_18]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1136,plain,
% 1.87/1.03      ( k2_funct_2(X0_51,X0_50) = k2_funct_1(X0_50)
% 1.87/1.03      | v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 1.87/1.03      | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_680]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2413,plain,
% 1.87/1.03      ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2)
% 1.87/1.03      | v1_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | v3_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | v1_funct_1(sK2) != iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_1139,c_1136]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_766,plain,
% 1.87/1.03      ( ~ v1_funct_2(sK2,sK1,sK1)
% 1.87/1.03      | ~ v3_funct_2(sK2,sK1,sK1)
% 1.87/1.03      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 1.87/1.03      | ~ v1_funct_1(sK2)
% 1.87/1.03      | k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_680]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2599,plain,
% 1.87/1.03      ( k2_funct_2(sK1,sK2) = k2_funct_1(sK2) ),
% 1.87/1.03      inference(global_propositional_subsumption,
% 1.87/1.03                [status(thm)],
% 1.87/1.03                [c_2413,c_24,c_23,c_22,c_21,c_766]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_12,plain,
% 1.87/1.03      ( ~ v1_funct_2(X0,X1,X1)
% 1.87/1.03      | ~ v3_funct_2(X0,X1,X1)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 1.87/1.03      | m1_subset_1(k2_funct_2(X1,X0),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 1.87/1.03      | ~ v1_funct_1(X0) ),
% 1.87/1.03      inference(cnf_transformation,[],[f60]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_686,plain,
% 1.87/1.03      ( ~ v1_funct_2(X0_50,X0_51,X0_51)
% 1.87/1.03      | ~ v3_funct_2(X0_50,X0_51,X0_51)
% 1.87/1.03      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 1.87/1.03      | m1_subset_1(k2_funct_2(X0_51,X0_50),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 1.87/1.03      | ~ v1_funct_1(X0_50) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_12]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1130,plain,
% 1.87/1.03      ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 1.87/1.03      | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 1.87/1.03      | m1_subset_1(k2_funct_2(X0_51,X0_50),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) = iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_686]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2612,plain,
% 1.87/1.03      ( v1_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | v3_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top
% 1.87/1.03      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 1.87/1.03      | v1_funct_1(sK2) != iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_2599,c_1130]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_27,plain,
% 1.87/1.03      ( v3_funct_2(sK2,sK1,sK1) = iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_28,plain,
% 1.87/1.03      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2851,plain,
% 1.87/1.03      ( m1_subset_1(k2_funct_1(sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) = iProver_top ),
% 1.87/1.03      inference(global_propositional_subsumption,
% 1.87/1.03                [status(thm)],
% 1.87/1.03                [c_2612,c_25,c_26,c_27,c_28]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_17,plain,
% 1.87/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.87/1.03      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 1.87/1.03      | ~ v1_funct_1(X0)
% 1.87/1.03      | ~ v1_funct_1(X3)
% 1.87/1.03      | k1_partfun1(X4,X5,X1,X2,X3,X0) = k5_relat_1(X3,X0) ),
% 1.87/1.03      inference(cnf_transformation,[],[f62]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_681,plain,
% 1.87/1.03      ( ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.87/1.03      | ~ m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51)))
% 1.87/1.03      | ~ v1_funct_1(X0_50)
% 1.87/1.03      | ~ v1_funct_1(X1_50)
% 1.87/1.03      | k1_partfun1(X2_51,X3_51,X0_51,X1_51,X1_50,X0_50) = k5_relat_1(X1_50,X0_50) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_17]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1135,plain,
% 1.87/1.03      ( k1_partfun1(X0_51,X1_51,X2_51,X3_51,X0_50,X1_50) = k5_relat_1(X0_50,X1_50)
% 1.87/1.03      | m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X2_51,X3_51))) != iProver_top
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top
% 1.87/1.03      | v1_funct_1(X1_50) != iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_681]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3075,plain,
% 1.87/1.03      ( k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50)
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top
% 1.87/1.03      | v1_funct_1(sK2) != iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_1139,c_1135]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3322,plain,
% 1.87/1.03      ( v1_funct_1(X0_50) != iProver_top
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 1.87/1.03      | k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50) ),
% 1.87/1.03      inference(global_propositional_subsumption,
% 1.87/1.03                [status(thm)],
% 1.87/1.03                [c_3075,c_25]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3323,plain,
% 1.87/1.03      ( k1_partfun1(sK1,sK1,X0_51,X1_51,sK2,X0_50) = k5_relat_1(sK2,X0_50)
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top ),
% 1.87/1.03      inference(renaming,[status(thm)],[c_3322]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3333,plain,
% 1.87/1.03      ( k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)) = k5_relat_1(sK2,k2_funct_1(sK2))
% 1.87/1.03      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_2851,c_3323]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_15,plain,
% 1.87/1.03      ( ~ v1_funct_2(X0,X1,X1)
% 1.87/1.03      | ~ v3_funct_2(X0,X1,X1)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
% 1.87/1.03      | ~ v1_funct_1(X0)
% 1.87/1.03      | v1_funct_1(k2_funct_2(X1,X0)) ),
% 1.87/1.03      inference(cnf_transformation,[],[f57]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_683,plain,
% 1.87/1.03      ( ~ v1_funct_2(X0_50,X0_51,X0_51)
% 1.87/1.03      | ~ v3_funct_2(X0_50,X0_51,X0_51)
% 1.87/1.03      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51)))
% 1.87/1.03      | ~ v1_funct_1(X0_50)
% 1.87/1.03      | v1_funct_1(k2_funct_2(X0_51,X0_50)) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_15]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1133,plain,
% 1.87/1.03      ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 1.87/1.03      | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top
% 1.87/1.03      | v1_funct_1(k2_funct_2(X0_51,X0_50)) = iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_683]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2278,plain,
% 1.87/1.03      ( v1_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | v3_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top
% 1.87/1.03      | v1_funct_1(sK2) != iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_1139,c_1133]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_758,plain,
% 1.87/1.03      ( v1_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 1.87/1.03      | v3_funct_2(X0_50,X0_51,X0_51) != iProver_top
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top
% 1.87/1.03      | v1_funct_1(k2_funct_2(X0_51,X0_50)) = iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_683]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_760,plain,
% 1.87/1.03      ( v1_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | v3_funct_2(sK2,sK1,sK1) != iProver_top
% 1.87/1.03      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 1.87/1.03      | v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top
% 1.87/1.03      | v1_funct_1(sK2) != iProver_top ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_758]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2593,plain,
% 1.87/1.03      ( v1_funct_1(k2_funct_2(sK1,sK2)) = iProver_top ),
% 1.87/1.03      inference(global_propositional_subsumption,
% 1.87/1.03                [status(thm)],
% 1.87/1.03                [c_2278,c_25,c_26,c_27,c_28,c_760]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2602,plain,
% 1.87/1.03      ( v1_funct_1(k2_funct_1(sK2)) = iProver_top ),
% 1.87/1.03      inference(demodulation,[status(thm)],[c_2599,c_2593]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3574,plain,
% 1.87/1.03      ( k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)) = k5_relat_1(sK2,k2_funct_1(sK2)) ),
% 1.87/1.03      inference(global_propositional_subsumption,
% 1.87/1.03                [status(thm)],
% 1.87/1.03                [c_3333,c_2602]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_20,negated_conjecture,
% 1.87/1.03      ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1))
% 1.87/1.03      | ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) ),
% 1.87/1.03      inference(cnf_transformation,[],[f70]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_678,negated_conjecture,
% 1.87/1.03      ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1))
% 1.87/1.03      | ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_20]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1138,plain,
% 1.87/1.03      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_2(sK1,sK2),sK2),k6_partfun1(sK1)) != iProver_top
% 1.87/1.03      | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_2(sK1,sK2)),k6_partfun1(sK1)) != iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_678]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2603,plain,
% 1.87/1.03      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
% 1.87/1.03      | r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,sK2,k2_funct_1(sK2)),k6_partfun1(sK1)) != iProver_top ),
% 1.87/1.03      inference(demodulation,[status(thm)],[c_2599,c_1138]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3577,plain,
% 1.87/1.03      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
% 1.87/1.03      | r2_relset_1(sK1,sK1,k5_relat_1(sK2,k2_funct_1(sK2)),k6_partfun1(sK1)) != iProver_top ),
% 1.87/1.03      inference(demodulation,[status(thm)],[c_3574,c_2603]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_4483,plain,
% 1.87/1.03      ( r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1)) != iProver_top
% 1.87/1.03      | r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) != iProver_top ),
% 1.87/1.03      inference(demodulation,[status(thm)],[c_2776,c_3577]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_4491,plain,
% 1.87/1.03      ( ~ r2_relset_1(sK1,sK1,k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2),k6_partfun1(sK1))
% 1.87/1.03      | ~ r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1)) ),
% 1.87/1.03      inference(predicate_to_equality_rev,[status(thm)],[c_4483]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3079,plain,
% 1.87/1.03      ( k1_partfun1(sK1,sK1,X0_51,X1_51,k2_funct_1(sK2),X0_50) = k5_relat_1(k2_funct_1(sK2),X0_50)
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 1.87/1.03      | v1_funct_1(X0_50) != iProver_top
% 1.87/1.03      | v1_funct_1(k2_funct_1(sK2)) != iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_2851,c_1135]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_3139,plain,
% 1.87/1.03      ( k1_partfun1(sK1,sK1,sK1,sK1,k2_funct_1(sK2),sK2) = k5_relat_1(k2_funct_1(sK2),sK2)
% 1.87/1.03      | m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) != iProver_top
% 1.87/1.03      | v1_funct_1(k2_funct_1(sK2)) != iProver_top
% 1.87/1.03      | v1_funct_1(sK2) != iProver_top ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_3079]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_700,plain,
% 1.87/1.03      ( X0_51 != X1_51 | X2_51 != X1_51 | X2_51 = X0_51 ),
% 1.87/1.03      theory(equality) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2037,plain,
% 1.87/1.03      ( k2_relat_1(X0_50) != X0_51
% 1.87/1.03      | sK1 != X0_51
% 1.87/1.03      | sK1 = k2_relat_1(X0_50) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_700]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_2038,plain,
% 1.87/1.03      ( k2_relat_1(sK2) != sK1 | sK1 = k2_relat_1(sK2) | sK1 != sK1 ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_2037]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_703,plain,
% 1.87/1.03      ( X0_51 != X1_51 | k6_partfun1(X0_51) = k6_partfun1(X1_51) ),
% 1.87/1.03      theory(equality) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1401,plain,
% 1.87/1.03      ( sK1 != X0_51 | k6_partfun1(sK1) = k6_partfun1(X0_51) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_703]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1937,plain,
% 1.87/1.03      ( sK1 != k2_relat_1(X0_50)
% 1.87/1.03      | k6_partfun1(sK1) = k6_partfun1(k2_relat_1(X0_50)) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_1401]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1938,plain,
% 1.87/1.03      ( sK1 != k2_relat_1(sK2)
% 1.87/1.03      | k6_partfun1(sK1) = k6_partfun1(k2_relat_1(sK2)) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_1937]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1399,plain,
% 1.87/1.03      ( X0_50 != X1_50
% 1.87/1.03      | k6_partfun1(sK1) != X1_50
% 1.87/1.03      | k6_partfun1(sK1) = X0_50 ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_699]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1484,plain,
% 1.87/1.03      ( X0_50 != k6_partfun1(X0_51)
% 1.87/1.03      | k6_partfun1(sK1) = X0_50
% 1.87/1.03      | k6_partfun1(sK1) != k6_partfun1(X0_51) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_1399]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1576,plain,
% 1.87/1.03      ( k5_relat_1(k2_funct_1(X0_50),X0_50) != k6_partfun1(k2_relat_1(X0_50))
% 1.87/1.03      | k6_partfun1(sK1) = k5_relat_1(k2_funct_1(X0_50),X0_50)
% 1.87/1.03      | k6_partfun1(sK1) != k6_partfun1(k2_relat_1(X0_50)) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_1484]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1577,plain,
% 1.87/1.03      ( k5_relat_1(k2_funct_1(sK2),sK2) != k6_partfun1(k2_relat_1(sK2))
% 1.87/1.03      | k6_partfun1(sK1) = k5_relat_1(k2_funct_1(sK2),sK2)
% 1.87/1.03      | k6_partfun1(sK1) != k6_partfun1(k2_relat_1(sK2)) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_1576]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_16,plain,
% 1.87/1.03      ( m1_subset_1(k6_partfun1(X0),k1_zfmisc_1(k2_zfmisc_1(X0,X0))) ),
% 1.87/1.03      inference(cnf_transformation,[],[f61]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_682,plain,
% 1.87/1.03      ( m1_subset_1(k6_partfun1(X0_51),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_16]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1134,plain,
% 1.87/1.03      ( m1_subset_1(k6_partfun1(X0_51),k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) = iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_682]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_6,plain,
% 1.87/1.03      ( r2_relset_1(X0,X1,X2,X2)
% 1.87/1.03      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.87/1.03      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 1.87/1.03      inference(cnf_transformation,[],[f51]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_688,plain,
% 1.87/1.03      ( r2_relset_1(X0_51,X1_51,X0_50,X0_50)
% 1.87/1.03      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.87/1.03      | ~ m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_6]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1128,plain,
% 1.87/1.03      ( r2_relset_1(X0_51,X1_51,X0_50,X0_50) = iProver_top
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top
% 1.87/1.03      | m1_subset_1(X1_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51))) != iProver_top ),
% 1.87/1.03      inference(predicate_to_equality,[status(thm)],[c_688]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1546,plain,
% 1.87/1.03      ( r2_relset_1(X0_51,X0_51,k6_partfun1(X0_51),k6_partfun1(X0_51)) = iProver_top
% 1.87/1.03      | m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) != iProver_top ),
% 1.87/1.03      inference(superposition,[status(thm)],[c_1134,c_1128]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1561,plain,
% 1.87/1.03      ( r2_relset_1(X0_51,X0_51,k6_partfun1(X0_51),k6_partfun1(X0_51))
% 1.87/1.03      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X0_51))) ),
% 1.87/1.03      inference(predicate_to_equality_rev,[status(thm)],[c_1546]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1563,plain,
% 1.87/1.03      ( r2_relset_1(sK1,sK1,k6_partfun1(sK1),k6_partfun1(sK1))
% 1.87/1.03      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1))) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_1561]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_7,plain,
% 1.87/1.03      ( ~ v3_funct_2(X0,X1,X2)
% 1.87/1.03      | v2_funct_2(X0,X2)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.87/1.03      | ~ v1_funct_1(X0) ),
% 1.87/1.03      inference(cnf_transformation,[],[f54]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_4,plain,
% 1.87/1.03      ( v5_relat_1(X0,X1)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 1.87/1.03      inference(cnf_transformation,[],[f49]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_11,plain,
% 1.87/1.03      ( ~ v2_funct_2(X0,X1)
% 1.87/1.03      | ~ v5_relat_1(X0,X1)
% 1.87/1.03      | ~ v1_relat_1(X0)
% 1.87/1.03      | k2_relat_1(X0) = X1 ),
% 1.87/1.03      inference(cnf_transformation,[],[f55]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_278,plain,
% 1.87/1.03      ( ~ v2_funct_2(X0,X1)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 1.87/1.03      | ~ v1_relat_1(X0)
% 1.87/1.03      | k2_relat_1(X0) = X1 ),
% 1.87/1.03      inference(resolution,[status(thm)],[c_4,c_11]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_290,plain,
% 1.87/1.03      ( ~ v2_funct_2(X0,X1)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
% 1.87/1.03      | k2_relat_1(X0) = X1 ),
% 1.87/1.03      inference(forward_subsumption_resolution,[status(thm)],[c_278,c_3]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_363,plain,
% 1.87/1.03      ( ~ v3_funct_2(X0,X1,X2)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.87/1.03      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X4,X5)))
% 1.87/1.03      | ~ v1_funct_1(X0)
% 1.87/1.03      | X3 != X0
% 1.87/1.03      | X5 != X2
% 1.87/1.03      | k2_relat_1(X3) = X5 ),
% 1.87/1.03      inference(resolution_lifted,[status(thm)],[c_7,c_290]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_364,plain,
% 1.87/1.03      ( ~ v3_funct_2(X0,X1,X2)
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.87/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
% 1.87/1.03      | ~ v1_funct_1(X0)
% 1.87/1.03      | k2_relat_1(X0) = X2 ),
% 1.87/1.03      inference(unflattening,[status(thm)],[c_363]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_673,plain,
% 1.87/1.03      ( ~ v3_funct_2(X0_50,X0_51,X1_51)
% 1.87/1.03      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X0_51,X1_51)))
% 1.87/1.03      | ~ m1_subset_1(X0_50,k1_zfmisc_1(k2_zfmisc_1(X2_51,X1_51)))
% 1.87/1.03      | ~ v1_funct_1(X0_50)
% 1.87/1.03      | k2_relat_1(X0_50) = X1_51 ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_364]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_777,plain,
% 1.87/1.03      ( ~ v3_funct_2(sK2,sK1,sK1)
% 1.87/1.03      | ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK1)))
% 1.87/1.03      | ~ v1_funct_1(sK2)
% 1.87/1.03      | k2_relat_1(sK2) = sK1 ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_673]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_1,plain,
% 1.87/1.03      ( ~ v1_relat_1(X0)
% 1.87/1.03      | ~ v1_funct_1(X0)
% 1.87/1.03      | ~ v2_funct_1(X0)
% 1.87/1.03      | k5_relat_1(k2_funct_1(X0),X0) = k6_partfun1(k2_relat_1(X0)) ),
% 1.87/1.03      inference(cnf_transformation,[],[f71]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_692,plain,
% 1.87/1.03      ( ~ v1_relat_1(X0_50)
% 1.87/1.03      | ~ v1_funct_1(X0_50)
% 1.87/1.03      | ~ v2_funct_1(X0_50)
% 1.87/1.03      | k5_relat_1(k2_funct_1(X0_50),X0_50) = k6_partfun1(k2_relat_1(X0_50)) ),
% 1.87/1.03      inference(subtyping,[status(esa)],[c_1]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_732,plain,
% 1.87/1.03      ( ~ v1_relat_1(sK2)
% 1.87/1.03      | ~ v1_funct_1(sK2)
% 1.87/1.03      | ~ v2_funct_1(sK2)
% 1.87/1.03      | k5_relat_1(k2_funct_1(sK2),sK2) = k6_partfun1(k2_relat_1(sK2)) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_692]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_696,plain,( X0_51 = X0_51 ),theory(equality) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_725,plain,
% 1.87/1.03      ( sK1 = sK1 ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_696]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(c_714,plain,
% 1.87/1.03      ( sK1 != sK1 | k6_partfun1(sK1) = k6_partfun1(sK1) ),
% 1.87/1.03      inference(instantiation,[status(thm)],[c_703]) ).
% 1.87/1.03  
% 1.87/1.03  cnf(contradiction,plain,
% 1.87/1.03      ( $false ),
% 1.87/1.03      inference(minisat,
% 1.87/1.03                [status(thm)],
% 1.87/1.03                [c_4802,c_4635,c_4491,c_3139,c_2602,c_2038,c_1938,c_1577,
% 1.87/1.03                 c_1563,c_777,c_747,c_738,c_732,c_725,c_714,c_28,c_21,
% 1.87/1.03                 c_22,c_25,c_24]) ).
% 1.87/1.03  
% 1.87/1.03  
% 1.87/1.03  % SZS output end CNFRefutation for theBenchmark.p
% 1.87/1.03  
% 1.87/1.03  ------                               Statistics
% 1.87/1.03  
% 1.87/1.03  ------ General
% 1.87/1.03  
% 1.87/1.03  abstr_ref_over_cycles:                  0
% 1.87/1.03  abstr_ref_under_cycles:                 0
% 1.87/1.03  gc_basic_clause_elim:                   0
% 1.87/1.03  forced_gc_time:                         0
% 1.87/1.03  parsing_time:                           0.009
% 1.87/1.03  unif_index_cands_time:                  0.
% 1.87/1.03  unif_index_add_time:                    0.
% 1.87/1.03  orderings_time:                         0.
% 1.87/1.03  out_proof_time:                         0.016
% 1.87/1.03  total_time:                             0.235
% 1.87/1.03  num_of_symbols:                         57
% 1.87/1.03  num_of_terms:                           4343
% 1.87/1.03  
% 1.87/1.03  ------ Preprocessing
% 1.87/1.03  
% 1.87/1.03  num_of_splits:                          0
% 1.87/1.03  num_of_split_atoms:                     0
% 1.87/1.03  num_of_reused_defs:                     0
% 1.87/1.03  num_eq_ax_congr_red:                    29
% 1.87/1.03  num_of_sem_filtered_clauses:            1
% 1.87/1.03  num_of_subtypes:                        4
% 1.87/1.03  monotx_restored_types:                  1
% 1.87/1.03  sat_num_of_epr_types:                   0
% 1.87/1.03  sat_num_of_non_cyclic_types:            0
% 1.87/1.03  sat_guarded_non_collapsed_types:        0
% 1.87/1.03  num_pure_diseq_elim:                    0
% 1.87/1.03  simp_replaced_by:                       0
% 1.87/1.03  res_preprocessed:                       122
% 1.87/1.03  prep_upred:                             0
% 1.87/1.03  prep_unflattend:                        6
% 1.87/1.03  smt_new_axioms:                         0
% 1.87/1.03  pred_elim_cands:                        7
% 1.87/1.03  pred_elim:                              2
% 1.87/1.03  pred_elim_cl:                           3
% 1.87/1.03  pred_elim_cycles:                       6
% 1.87/1.03  merged_defs:                            0
% 1.87/1.03  merged_defs_ncl:                        0
% 1.87/1.03  bin_hyper_res:                          0
% 1.87/1.03  prep_cycles:                            4
% 1.87/1.03  pred_elim_time:                         0.006
% 1.87/1.03  splitting_time:                         0.
% 1.87/1.03  sem_filter_time:                        0.
% 1.87/1.03  monotx_time:                            0.
% 1.87/1.03  subtype_inf_time:                       0.001
% 1.87/1.03  
% 1.87/1.03  ------ Problem properties
% 1.87/1.03  
% 1.87/1.03  clauses:                                21
% 1.87/1.03  conjectures:                            5
% 1.87/1.03  epr:                                    3
% 1.87/1.03  horn:                                   21
% 1.87/1.03  ground:                                 5
% 1.87/1.03  unary:                                  6
% 1.87/1.03  binary:                                 3
% 1.87/1.03  lits:                                   66
% 1.87/1.03  lits_eq:                                7
% 1.87/1.03  fd_pure:                                0
% 1.87/1.03  fd_pseudo:                              0
% 1.87/1.03  fd_cond:                                0
% 1.87/1.03  fd_pseudo_cond:                         1
% 1.87/1.03  ac_symbols:                             0
% 1.87/1.03  
% 1.87/1.03  ------ Propositional Solver
% 1.87/1.03  
% 1.87/1.03  prop_solver_calls:                      28
% 1.87/1.03  prop_fast_solver_calls:                 1007
% 1.87/1.03  smt_solver_calls:                       0
% 1.87/1.03  smt_fast_solver_calls:                  0
% 1.87/1.03  prop_num_of_clauses:                    1393
% 1.87/1.03  prop_preprocess_simplified:             5188
% 1.87/1.03  prop_fo_subsumed:                       46
% 1.87/1.03  prop_solver_time:                       0.
% 1.87/1.03  smt_solver_time:                        0.
% 1.87/1.03  smt_fast_solver_time:                   0.
% 1.87/1.03  prop_fast_solver_time:                  0.
% 1.87/1.03  prop_unsat_core_time:                   0.
% 1.87/1.03  
% 1.87/1.03  ------ QBF
% 1.87/1.03  
% 1.87/1.03  qbf_q_res:                              0
% 1.87/1.03  qbf_num_tautologies:                    0
% 1.87/1.03  qbf_prep_cycles:                        0
% 1.87/1.03  
% 1.87/1.03  ------ BMC1
% 1.87/1.03  
% 1.87/1.03  bmc1_current_bound:                     -1
% 1.87/1.03  bmc1_last_solved_bound:                 -1
% 1.87/1.03  bmc1_unsat_core_size:                   -1
% 1.87/1.03  bmc1_unsat_core_parents_size:           -1
% 1.87/1.03  bmc1_merge_next_fun:                    0
% 1.87/1.03  bmc1_unsat_core_clauses_time:           0.
% 1.87/1.03  
% 1.87/1.03  ------ Instantiation
% 1.87/1.03  
% 1.87/1.03  inst_num_of_clauses:                    460
% 1.87/1.03  inst_num_in_passive:                    30
% 1.87/1.03  inst_num_in_active:                     290
% 1.87/1.03  inst_num_in_unprocessed:                139
% 1.87/1.03  inst_num_of_loops:                      309
% 1.87/1.03  inst_num_of_learning_restarts:          0
% 1.87/1.03  inst_num_moves_active_passive:          14
% 1.87/1.03  inst_lit_activity:                      0
% 1.87/1.03  inst_lit_activity_moves:                0
% 1.87/1.03  inst_num_tautologies:                   0
% 1.87/1.03  inst_num_prop_implied:                  0
% 1.87/1.03  inst_num_existing_simplified:           0
% 1.87/1.03  inst_num_eq_res_simplified:             0
% 1.87/1.03  inst_num_child_elim:                    0
% 1.87/1.03  inst_num_of_dismatching_blockings:      447
% 1.87/1.03  inst_num_of_non_proper_insts:           633
% 1.87/1.03  inst_num_of_duplicates:                 0
% 1.87/1.03  inst_inst_num_from_inst_to_res:         0
% 1.87/1.03  inst_dismatching_checking_time:         0.
% 1.87/1.03  
% 1.87/1.03  ------ Resolution
% 1.87/1.03  
% 1.87/1.03  res_num_of_clauses:                     0
% 1.87/1.03  res_num_in_passive:                     0
% 1.87/1.03  res_num_in_active:                      0
% 1.87/1.03  res_num_of_loops:                       126
% 1.87/1.03  res_forward_subset_subsumed:            111
% 1.87/1.03  res_backward_subset_subsumed:           4
% 1.87/1.03  res_forward_subsumed:                   0
% 1.87/1.03  res_backward_subsumed:                  0
% 1.87/1.03  res_forward_subsumption_resolution:     2
% 1.87/1.03  res_backward_subsumption_resolution:    0
% 1.87/1.03  res_clause_to_clause_subsumption:       199
% 1.87/1.03  res_orphan_elimination:                 0
% 1.87/1.03  res_tautology_del:                      88
% 1.87/1.03  res_num_eq_res_simplified:              0
% 1.87/1.03  res_num_sel_changes:                    0
% 1.87/1.03  res_moves_from_active_to_pass:          0
% 1.87/1.03  
% 1.87/1.03  ------ Superposition
% 1.87/1.03  
% 1.87/1.03  sup_time_total:                         0.
% 1.87/1.03  sup_time_generating:                    0.
% 1.87/1.03  sup_time_sim_full:                      0.
% 1.87/1.03  sup_time_sim_immed:                     0.
% 1.87/1.03  
% 1.87/1.03  sup_num_of_clauses:                     94
% 1.87/1.03  sup_num_in_active:                      51
% 1.87/1.03  sup_num_in_passive:                     43
% 1.87/1.03  sup_num_of_loops:                       60
% 1.87/1.03  sup_fw_superposition:                   58
% 1.87/1.03  sup_bw_superposition:                   21
% 1.87/1.03  sup_immediate_simplified:               10
% 1.87/1.03  sup_given_eliminated:                   0
% 1.87/1.03  comparisons_done:                       0
% 1.87/1.03  comparisons_avoided:                    0
% 1.87/1.03  
% 1.87/1.03  ------ Simplifications
% 1.87/1.03  
% 1.87/1.03  
% 1.87/1.03  sim_fw_subset_subsumed:                 1
% 1.87/1.03  sim_bw_subset_subsumed:                 2
% 1.87/1.03  sim_fw_subsumed:                        0
% 1.87/1.03  sim_bw_subsumed:                        1
% 1.87/1.03  sim_fw_subsumption_res:                 3
% 1.87/1.03  sim_bw_subsumption_res:                 0
% 1.87/1.03  sim_tautology_del:                      0
% 1.87/1.03  sim_eq_tautology_del:                   1
% 1.87/1.03  sim_eq_res_simp:                        0
% 1.87/1.03  sim_fw_demodulated:                     1
% 1.87/1.03  sim_bw_demodulated:                     9
% 1.87/1.03  sim_light_normalised:                   3
% 1.87/1.03  sim_joinable_taut:                      0
% 1.87/1.03  sim_joinable_simp:                      0
% 1.87/1.03  sim_ac_normalised:                      0
% 1.87/1.03  sim_smt_subsumption:                    0
% 1.87/1.03  
%------------------------------------------------------------------------------
