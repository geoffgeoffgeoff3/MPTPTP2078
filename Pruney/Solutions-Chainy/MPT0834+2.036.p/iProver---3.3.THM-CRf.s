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
% DateTime   : Thu Dec  3 11:56:06 EST 2020

% Result     : Theorem 2.33s
% Output     : CNFRefutation 2.33s
% Verified   : 
% Statistics : Number of formulae       :  150 ( 453 expanded)
%              Number of clauses        :   91 ( 213 expanded)
%              Number of leaves         :   20 (  89 expanded)
%              Depth                    :   26
%              Number of atoms          :  331 (1122 expanded)
%              Number of equality atoms :  175 ( 523 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    7 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,axiom,(
    ! [X0] :
      ( v5_relat_1(k6_relat_1(X0),X0)
      & v4_relat_1(k6_relat_1(X0),X0)
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f52,plain,(
    ! [X0] : v4_relat_1(k6_relat_1(X0),X0) ),
    inference(cnf_transformation,[],[f11])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => ! [X2] :
          ( ( v4_relat_1(X2,X0)
            & v1_relat_1(X2) )
         => v4_relat_1(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v4_relat_1(X2,X1)
          | ~ v4_relat_1(X2,X0)
          | ~ v1_relat_1(X2) )
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f28,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v4_relat_1(X2,X1)
          | ~ v4_relat_1(X2,X0)
          | ~ v1_relat_1(X2) )
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f27])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X1)
      | ~ v4_relat_1(X2,X0)
      | ~ v1_relat_1(X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f36,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1,X2] :
      ( ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f56,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f18,conjecture,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1)
        & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
       => ( k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1)
          & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0) ) ) ),
    inference(negated_conjecture,[],[f18])).

fof(f35,plain,(
    ? [X0,X1,X2] :
      ( ( k1_relset_1(X0,X1,X2) != k8_relset_1(X0,X1,X2,X1)
        | k2_relset_1(X0,X1,X2) != k7_relset_1(X0,X1,X2,X0) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f37,plain,
    ( ? [X0,X1,X2] :
        ( ( k1_relset_1(X0,X1,X2) != k8_relset_1(X0,X1,X2,X1)
          | k2_relset_1(X0,X1,X2) != k7_relset_1(X0,X1,X2,X0) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
   => ( ( k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1)
        | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0) )
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ) ),
    introduced(choice_axiom,[])).

fof(f38,plain,
    ( ( k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1)
      | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0) )
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f35,f37])).

fof(f61,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f38])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f39,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f3,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f42,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f51,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f11])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => k7_relat_1(X1,X0) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f26,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f25])).

fof(f46,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f50,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f12,axiom,(
    ! [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f54,plain,(
    ! [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f12])).

fof(f9,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f9])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0] :
      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f45,plain,(
    ! [X0] :
      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f55,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f43,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f57,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f58,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f32])).

fof(f62,plain,
    ( k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1)
    | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0) ),
    inference(cnf_transformation,[],[f38])).

fof(f17,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2,X3] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f60,plain,(
    ! [X2,X0,X3,X1] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f16,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f59,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_13,plain,
    ( v4_relat_1(k6_relat_1(X0),X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_766,plain,
    ( v4_relat_1(k6_relat_1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_8,plain,
    ( ~ v4_relat_1(X0,X1)
    | v4_relat_1(X0,X2)
    | ~ r1_tarski(X1,X2)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_2,plain,
    ( r1_tarski(k2_relat_1(X0),X1)
    | ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_16,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_23,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_266,plain,
    ( v5_relat_1(X0,X1)
    | k1_zfmisc_1(k2_zfmisc_1(X2,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_23])).

cnf(c_267,plain,
    ( v5_relat_1(sK2,X0)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_266])).

cnf(c_360,plain,
    ( r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | X2 != X1
    | k1_zfmisc_1(k2_zfmisc_1(X3,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_267])).

cnf(c_361,plain,
    ( r1_tarski(k2_relat_1(sK2),X0)
    | ~ v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_360])).

cnf(c_396,plain,
    ( ~ v4_relat_1(X0,X1)
    | v4_relat_1(X0,X2)
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(sK2)
    | X3 != X2
    | k2_relat_1(sK2) != X1
    | k1_zfmisc_1(k2_zfmisc_1(X4,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(resolution_lifted,[status(thm)],[c_8,c_361])).

cnf(c_397,plain,
    ( v4_relat_1(X0,X1)
    | ~ v4_relat_1(X0,k2_relat_1(sK2))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X2,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_396])).

cnf(c_761,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | v4_relat_1(X2,X1) = iProver_top
    | v4_relat_1(X2,k2_relat_1(sK2)) != iProver_top
    | v1_relat_1(X2) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_397])).

cnf(c_1041,plain,
    ( v4_relat_1(X0,k2_relat_1(sK2)) != iProver_top
    | v4_relat_1(X0,sK1) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(equality_resolution,[status(thm)],[c_761])).

cnf(c_523,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_883,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) = k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_523])).

cnf(c_0,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_251,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(X1)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0)
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_23])).

cnf(c_252,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0) ),
    inference(unflattening,[status(thm)],[c_251])).

cnf(c_873,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(X0,X1))
    | v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
    inference(instantiation,[status(thm)],[c_252])).

cnf(c_1022,plain,
    ( ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
    | v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_873])).

cnf(c_1023,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1022])).

cnf(c_3,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_1117,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1118,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1117])).

cnf(c_1382,plain,
    ( v1_relat_1(X0) != iProver_top
    | v4_relat_1(X0,sK1) = iProver_top
    | v4_relat_1(X0,k2_relat_1(sK2)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1041,c_883,c_1023,c_1118])).

cnf(c_1383,plain,
    ( v4_relat_1(X0,k2_relat_1(sK2)) != iProver_top
    | v4_relat_1(X0,sK1) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(renaming,[status(thm)],[c_1382])).

cnf(c_1413,plain,
    ( v4_relat_1(k6_relat_1(k2_relat_1(sK2)),sK1) = iProver_top
    | v1_relat_1(k6_relat_1(k2_relat_1(sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_766,c_1383])).

cnf(c_14,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_765,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_1688,plain,
    ( v4_relat_1(k6_relat_1(k2_relat_1(sK2)),sK1) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_1413,c_765])).

cnf(c_7,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_768,plain,
    ( k7_relat_1(X0,X1) = X0
    | v4_relat_1(X0,X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2187,plain,
    ( k7_relat_1(k6_relat_1(k2_relat_1(sK2)),sK1) = k6_relat_1(k2_relat_1(sK2))
    | v1_relat_1(k6_relat_1(k2_relat_1(sK2))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1688,c_768])).

cnf(c_11,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_767,plain,
    ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1515,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k7_relat_1(k6_relat_1(X1),X0) ),
    inference(superposition,[status(thm)],[c_765,c_767])).

cnf(c_15,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k6_relat_1(k3_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1520,plain,
    ( k6_relat_1(k3_xboole_0(X0,X1)) = k7_relat_1(k6_relat_1(X0),X1) ),
    inference(light_normalisation,[status(thm)],[c_1515,c_15])).

cnf(c_2190,plain,
    ( k6_relat_1(k3_xboole_0(k2_relat_1(sK2),sK1)) = k6_relat_1(k2_relat_1(sK2))
    | v1_relat_1(k6_relat_1(k2_relat_1(sK2))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2187,c_1520])).

cnf(c_2203,plain,
    ( ~ v1_relat_1(k6_relat_1(k2_relat_1(sK2)))
    | k6_relat_1(k3_xboole_0(k2_relat_1(sK2),sK1)) = k6_relat_1(k2_relat_1(sK2)) ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2190])).

cnf(c_2305,plain,
    ( v1_relat_1(k6_relat_1(k2_relat_1(sK2))) ),
    inference(instantiation,[status(thm)],[c_14])).

cnf(c_2358,plain,
    ( k6_relat_1(k3_xboole_0(k2_relat_1(sK2),sK1)) = k6_relat_1(k2_relat_1(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_2190,c_2203,c_2305])).

cnf(c_9,plain,
    ( k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f49])).

cnf(c_2372,plain,
    ( k3_xboole_0(k2_relat_1(sK2),sK1) = k2_relat_1(k6_relat_1(k2_relat_1(sK2))) ),
    inference(superposition,[status(thm)],[c_2358,c_9])).

cnf(c_2374,plain,
    ( k3_xboole_0(k2_relat_1(sK2),sK1) = k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_2372,c_9])).

cnf(c_764,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0)
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_252])).

cnf(c_1281,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_764,c_883,c_1023,c_1118])).

cnf(c_5,plain,
    ( ~ v1_relat_1(X0)
    | k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_770,plain,
    ( k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_2103,plain,
    ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0)) = k10_relat_1(sK2,X0) ),
    inference(superposition,[status(thm)],[c_1281,c_770])).

cnf(c_2381,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) = k10_relat_1(sK2,sK1) ),
    inference(superposition,[status(thm)],[c_2374,c_2103])).

cnf(c_6,plain,
    ( ~ v1_relat_1(X0)
    | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_769,plain,
    ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1448,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_1281,c_769])).

cnf(c_2383,plain,
    ( k10_relat_1(sK2,sK1) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_2381,c_1448])).

cnf(c_17,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_314,plain,
    ( v4_relat_1(X0,X1)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_23])).

cnf(c_315,plain,
    ( v4_relat_1(sK2,X0)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_314])).

cnf(c_763,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | v4_relat_1(sK2,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_315])).

cnf(c_1214,plain,
    ( v4_relat_1(sK2,sK0) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_763])).

cnf(c_2186,plain,
    ( k7_relat_1(sK2,sK0) = sK2
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1214,c_768])).

cnf(c_888,plain,
    ( v4_relat_1(sK2,sK0)
    | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_315])).

cnf(c_1311,plain,
    ( ~ v4_relat_1(sK2,X0)
    | ~ v1_relat_1(sK2)
    | k7_relat_1(sK2,X0) = sK2 ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_1337,plain,
    ( ~ v4_relat_1(sK2,sK0)
    | ~ v1_relat_1(sK2)
    | k7_relat_1(sK2,sK0) = sK2 ),
    inference(instantiation,[status(thm)],[c_1311])).

cnf(c_2279,plain,
    ( k7_relat_1(sK2,sK0) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2186,c_883,c_888,c_1022,c_1117,c_1337])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_771,plain,
    ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1900,plain,
    ( k2_relat_1(k7_relat_1(sK2,X0)) = k9_relat_1(sK2,X0) ),
    inference(superposition,[status(thm)],[c_1281,c_771])).

cnf(c_2282,plain,
    ( k9_relat_1(sK2,sK0) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_2279,c_1900])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_305,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_23])).

cnf(c_306,plain,
    ( k1_relset_1(X0,X1,sK2) = k1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_305])).

cnf(c_912,plain,
    ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
    inference(equality_resolution,[status(thm)],[c_306])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_296,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_19,c_23])).

cnf(c_297,plain,
    ( k2_relset_1(X0,X1,sK2) = k2_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_296])).

cnf(c_882,plain,
    ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
    inference(equality_resolution,[status(thm)],[c_297])).

cnf(c_22,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)
    | k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_976,plain,
    ( k8_relset_1(sK0,sK1,sK2,sK1) != k1_relset_1(sK0,sK1,sK2)
    | k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_882,c_22])).

cnf(c_1005,plain,
    ( k8_relset_1(sK0,sK1,sK2,sK1) != k1_relat_1(sK2)
    | k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_912,c_976])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f60])).

cnf(c_278,plain,
    ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_21,c_23])).

cnf(c_279,plain,
    ( k8_relset_1(X0,X1,sK2,X2) = k10_relat_1(sK2,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_278])).

cnf(c_915,plain,
    ( k8_relset_1(sK0,sK1,sK2,X0) = k10_relat_1(sK2,X0) ),
    inference(equality_resolution,[status(thm)],[c_279])).

cnf(c_20,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_287,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_20,c_23])).

cnf(c_288,plain,
    ( k7_relset_1(X0,X1,sK2,X2) = k9_relat_1(sK2,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(unflattening,[status(thm)],[c_287])).

cnf(c_973,plain,
    ( k7_relset_1(sK0,sK1,sK2,X0) = k9_relat_1(sK2,X0) ),
    inference(equality_resolution,[status(thm)],[c_288])).

cnf(c_1286,plain,
    ( k10_relat_1(sK2,sK1) != k1_relat_1(sK2)
    | k9_relat_1(sK2,sK0) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_1005,c_915,c_973])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_2383,c_2282,c_1286])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n013.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 13:21:09 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 2.33/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.33/1.01  
% 2.33/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.33/1.01  
% 2.33/1.01  ------  iProver source info
% 2.33/1.01  
% 2.33/1.01  git: date: 2020-06-30 10:37:57 +0100
% 2.33/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.33/1.01  git: non_committed_changes: false
% 2.33/1.01  git: last_make_outside_of_git: false
% 2.33/1.01  
% 2.33/1.01  ------ 
% 2.33/1.01  
% 2.33/1.01  ------ Input Options
% 2.33/1.01  
% 2.33/1.01  --out_options                           all
% 2.33/1.01  --tptp_safe_out                         true
% 2.33/1.01  --problem_path                          ""
% 2.33/1.01  --include_path                          ""
% 2.33/1.01  --clausifier                            res/vclausify_rel
% 2.33/1.01  --clausifier_options                    --mode clausify
% 2.33/1.01  --stdin                                 false
% 2.33/1.01  --stats_out                             all
% 2.33/1.01  
% 2.33/1.01  ------ General Options
% 2.33/1.01  
% 2.33/1.01  --fof                                   false
% 2.33/1.01  --time_out_real                         305.
% 2.33/1.01  --time_out_virtual                      -1.
% 2.33/1.01  --symbol_type_check                     false
% 2.33/1.01  --clausify_out                          false
% 2.33/1.01  --sig_cnt_out                           false
% 2.33/1.01  --trig_cnt_out                          false
% 2.33/1.01  --trig_cnt_out_tolerance                1.
% 2.33/1.01  --trig_cnt_out_sk_spl                   false
% 2.33/1.01  --abstr_cl_out                          false
% 2.33/1.01  
% 2.33/1.01  ------ Global Options
% 2.33/1.01  
% 2.33/1.01  --schedule                              default
% 2.33/1.01  --add_important_lit                     false
% 2.33/1.01  --prop_solver_per_cl                    1000
% 2.33/1.01  --min_unsat_core                        false
% 2.33/1.01  --soft_assumptions                      false
% 2.33/1.01  --soft_lemma_size                       3
% 2.33/1.01  --prop_impl_unit_size                   0
% 2.33/1.01  --prop_impl_unit                        []
% 2.33/1.01  --share_sel_clauses                     true
% 2.33/1.01  --reset_solvers                         false
% 2.33/1.01  --bc_imp_inh                            [conj_cone]
% 2.33/1.01  --conj_cone_tolerance                   3.
% 2.33/1.01  --extra_neg_conj                        none
% 2.33/1.01  --large_theory_mode                     true
% 2.33/1.01  --prolific_symb_bound                   200
% 2.33/1.01  --lt_threshold                          2000
% 2.33/1.01  --clause_weak_htbl                      true
% 2.33/1.01  --gc_record_bc_elim                     false
% 2.33/1.01  
% 2.33/1.01  ------ Preprocessing Options
% 2.33/1.01  
% 2.33/1.01  --preprocessing_flag                    true
% 2.33/1.01  --time_out_prep_mult                    0.1
% 2.33/1.01  --splitting_mode                        input
% 2.33/1.01  --splitting_grd                         true
% 2.33/1.01  --splitting_cvd                         false
% 2.33/1.01  --splitting_cvd_svl                     false
% 2.33/1.01  --splitting_nvd                         32
% 2.33/1.01  --sub_typing                            true
% 2.33/1.01  --prep_gs_sim                           true
% 2.33/1.01  --prep_unflatten                        true
% 2.33/1.01  --prep_res_sim                          true
% 2.33/1.01  --prep_upred                            true
% 2.33/1.01  --prep_sem_filter                       exhaustive
% 2.33/1.01  --prep_sem_filter_out                   false
% 2.33/1.01  --pred_elim                             true
% 2.33/1.01  --res_sim_input                         true
% 2.33/1.01  --eq_ax_congr_red                       true
% 2.33/1.01  --pure_diseq_elim                       true
% 2.33/1.01  --brand_transform                       false
% 2.33/1.01  --non_eq_to_eq                          false
% 2.33/1.01  --prep_def_merge                        true
% 2.33/1.01  --prep_def_merge_prop_impl              false
% 2.33/1.01  --prep_def_merge_mbd                    true
% 2.33/1.01  --prep_def_merge_tr_red                 false
% 2.33/1.01  --prep_def_merge_tr_cl                  false
% 2.33/1.01  --smt_preprocessing                     true
% 2.33/1.01  --smt_ac_axioms                         fast
% 2.33/1.01  --preprocessed_out                      false
% 2.33/1.01  --preprocessed_stats                    false
% 2.33/1.01  
% 2.33/1.01  ------ Abstraction refinement Options
% 2.33/1.01  
% 2.33/1.01  --abstr_ref                             []
% 2.33/1.01  --abstr_ref_prep                        false
% 2.33/1.01  --abstr_ref_until_sat                   false
% 2.33/1.01  --abstr_ref_sig_restrict                funpre
% 2.33/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.33/1.01  --abstr_ref_under                       []
% 2.33/1.01  
% 2.33/1.01  ------ SAT Options
% 2.33/1.01  
% 2.33/1.01  --sat_mode                              false
% 2.33/1.01  --sat_fm_restart_options                ""
% 2.33/1.01  --sat_gr_def                            false
% 2.33/1.01  --sat_epr_types                         true
% 2.33/1.01  --sat_non_cyclic_types                  false
% 2.33/1.01  --sat_finite_models                     false
% 2.33/1.01  --sat_fm_lemmas                         false
% 2.33/1.01  --sat_fm_prep                           false
% 2.33/1.01  --sat_fm_uc_incr                        true
% 2.33/1.01  --sat_out_model                         small
% 2.33/1.01  --sat_out_clauses                       false
% 2.33/1.01  
% 2.33/1.01  ------ QBF Options
% 2.33/1.01  
% 2.33/1.01  --qbf_mode                              false
% 2.33/1.01  --qbf_elim_univ                         false
% 2.33/1.01  --qbf_dom_inst                          none
% 2.33/1.01  --qbf_dom_pre_inst                      false
% 2.33/1.01  --qbf_sk_in                             false
% 2.33/1.01  --qbf_pred_elim                         true
% 2.33/1.01  --qbf_split                             512
% 2.33/1.01  
% 2.33/1.01  ------ BMC1 Options
% 2.33/1.01  
% 2.33/1.01  --bmc1_incremental                      false
% 2.33/1.01  --bmc1_axioms                           reachable_all
% 2.33/1.01  --bmc1_min_bound                        0
% 2.33/1.01  --bmc1_max_bound                        -1
% 2.33/1.01  --bmc1_max_bound_default                -1
% 2.33/1.01  --bmc1_symbol_reachability              true
% 2.33/1.01  --bmc1_property_lemmas                  false
% 2.33/1.01  --bmc1_k_induction                      false
% 2.33/1.01  --bmc1_non_equiv_states                 false
% 2.33/1.01  --bmc1_deadlock                         false
% 2.33/1.01  --bmc1_ucm                              false
% 2.33/1.01  --bmc1_add_unsat_core                   none
% 2.33/1.01  --bmc1_unsat_core_children              false
% 2.33/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.33/1.01  --bmc1_out_stat                         full
% 2.33/1.01  --bmc1_ground_init                      false
% 2.33/1.01  --bmc1_pre_inst_next_state              false
% 2.33/1.01  --bmc1_pre_inst_state                   false
% 2.33/1.01  --bmc1_pre_inst_reach_state             false
% 2.33/1.01  --bmc1_out_unsat_core                   false
% 2.33/1.01  --bmc1_aig_witness_out                  false
% 2.33/1.01  --bmc1_verbose                          false
% 2.33/1.01  --bmc1_dump_clauses_tptp                false
% 2.33/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.33/1.01  --bmc1_dump_file                        -
% 2.33/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.33/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.33/1.01  --bmc1_ucm_extend_mode                  1
% 2.33/1.01  --bmc1_ucm_init_mode                    2
% 2.33/1.01  --bmc1_ucm_cone_mode                    none
% 2.33/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.33/1.01  --bmc1_ucm_relax_model                  4
% 2.33/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.33/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.33/1.01  --bmc1_ucm_layered_model                none
% 2.33/1.01  --bmc1_ucm_max_lemma_size               10
% 2.33/1.01  
% 2.33/1.01  ------ AIG Options
% 2.33/1.01  
% 2.33/1.01  --aig_mode                              false
% 2.33/1.01  
% 2.33/1.01  ------ Instantiation Options
% 2.33/1.01  
% 2.33/1.01  --instantiation_flag                    true
% 2.33/1.01  --inst_sos_flag                         false
% 2.33/1.01  --inst_sos_phase                        true
% 2.33/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.33/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.33/1.01  --inst_lit_sel_side                     num_symb
% 2.33/1.01  --inst_solver_per_active                1400
% 2.33/1.01  --inst_solver_calls_frac                1.
% 2.33/1.01  --inst_passive_queue_type               priority_queues
% 2.33/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.33/1.01  --inst_passive_queues_freq              [25;2]
% 2.33/1.01  --inst_dismatching                      true
% 2.33/1.01  --inst_eager_unprocessed_to_passive     true
% 2.33/1.01  --inst_prop_sim_given                   true
% 2.33/1.01  --inst_prop_sim_new                     false
% 2.33/1.01  --inst_subs_new                         false
% 2.33/1.01  --inst_eq_res_simp                      false
% 2.33/1.01  --inst_subs_given                       false
% 2.33/1.01  --inst_orphan_elimination               true
% 2.33/1.01  --inst_learning_loop_flag               true
% 2.33/1.01  --inst_learning_start                   3000
% 2.33/1.01  --inst_learning_factor                  2
% 2.33/1.01  --inst_start_prop_sim_after_learn       3
% 2.33/1.01  --inst_sel_renew                        solver
% 2.33/1.01  --inst_lit_activity_flag                true
% 2.33/1.01  --inst_restr_to_given                   false
% 2.33/1.01  --inst_activity_threshold               500
% 2.33/1.01  --inst_out_proof                        true
% 2.33/1.01  
% 2.33/1.01  ------ Resolution Options
% 2.33/1.01  
% 2.33/1.01  --resolution_flag                       true
% 2.33/1.01  --res_lit_sel                           adaptive
% 2.33/1.01  --res_lit_sel_side                      none
% 2.33/1.01  --res_ordering                          kbo
% 2.33/1.01  --res_to_prop_solver                    active
% 2.33/1.01  --res_prop_simpl_new                    false
% 2.33/1.01  --res_prop_simpl_given                  true
% 2.33/1.01  --res_passive_queue_type                priority_queues
% 2.33/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.33/1.01  --res_passive_queues_freq               [15;5]
% 2.33/1.01  --res_forward_subs                      full
% 2.33/1.01  --res_backward_subs                     full
% 2.33/1.01  --res_forward_subs_resolution           true
% 2.33/1.01  --res_backward_subs_resolution          true
% 2.33/1.01  --res_orphan_elimination                true
% 2.33/1.01  --res_time_limit                        2.
% 2.33/1.01  --res_out_proof                         true
% 2.33/1.01  
% 2.33/1.01  ------ Superposition Options
% 2.33/1.01  
% 2.33/1.01  --superposition_flag                    true
% 2.33/1.01  --sup_passive_queue_type                priority_queues
% 2.33/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.33/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.33/1.01  --demod_completeness_check              fast
% 2.33/1.01  --demod_use_ground                      true
% 2.33/1.01  --sup_to_prop_solver                    passive
% 2.33/1.01  --sup_prop_simpl_new                    true
% 2.33/1.01  --sup_prop_simpl_given                  true
% 2.33/1.01  --sup_fun_splitting                     false
% 2.33/1.01  --sup_smt_interval                      50000
% 2.33/1.01  
% 2.33/1.01  ------ Superposition Simplification Setup
% 2.33/1.01  
% 2.33/1.01  --sup_indices_passive                   []
% 2.33/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.33/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/1.01  --sup_full_bw                           [BwDemod]
% 2.33/1.01  --sup_immed_triv                        [TrivRules]
% 2.33/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.33/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/1.01  --sup_immed_bw_main                     []
% 2.33/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.33/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.33/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.33/1.01  
% 2.33/1.01  ------ Combination Options
% 2.33/1.01  
% 2.33/1.01  --comb_res_mult                         3
% 2.33/1.01  --comb_sup_mult                         2
% 2.33/1.01  --comb_inst_mult                        10
% 2.33/1.01  
% 2.33/1.01  ------ Debug Options
% 2.33/1.01  
% 2.33/1.01  --dbg_backtrace                         false
% 2.33/1.01  --dbg_dump_prop_clauses                 false
% 2.33/1.01  --dbg_dump_prop_clauses_file            -
% 2.33/1.01  --dbg_out_stat                          false
% 2.33/1.01  ------ Parsing...
% 2.33/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.33/1.01  
% 2.33/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 2.33/1.01  
% 2.33/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.33/1.01  
% 2.33/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.33/1.01  ------ Proving...
% 2.33/1.01  ------ Problem Properties 
% 2.33/1.01  
% 2.33/1.01  
% 2.33/1.01  clauses                                 20
% 2.33/1.01  conjectures                             1
% 2.33/1.01  EPR                                     0
% 2.33/1.01  Horn                                    20
% 2.33/1.01  unary                                   6
% 2.33/1.01  binary                                  10
% 2.33/1.01  lits                                    40
% 2.33/1.01  lits eq                                 21
% 2.33/1.01  fd_pure                                 0
% 2.33/1.01  fd_pseudo                               0
% 2.33/1.01  fd_cond                                 0
% 2.33/1.01  fd_pseudo_cond                          0
% 2.33/1.01  AC symbols                              0
% 2.33/1.01  
% 2.33/1.01  ------ Schedule dynamic 5 is on 
% 2.33/1.01  
% 2.33/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.33/1.01  
% 2.33/1.01  
% 2.33/1.01  ------ 
% 2.33/1.01  Current options:
% 2.33/1.01  ------ 
% 2.33/1.01  
% 2.33/1.01  ------ Input Options
% 2.33/1.01  
% 2.33/1.01  --out_options                           all
% 2.33/1.01  --tptp_safe_out                         true
% 2.33/1.01  --problem_path                          ""
% 2.33/1.01  --include_path                          ""
% 2.33/1.01  --clausifier                            res/vclausify_rel
% 2.33/1.01  --clausifier_options                    --mode clausify
% 2.33/1.01  --stdin                                 false
% 2.33/1.01  --stats_out                             all
% 2.33/1.01  
% 2.33/1.01  ------ General Options
% 2.33/1.01  
% 2.33/1.01  --fof                                   false
% 2.33/1.01  --time_out_real                         305.
% 2.33/1.01  --time_out_virtual                      -1.
% 2.33/1.01  --symbol_type_check                     false
% 2.33/1.01  --clausify_out                          false
% 2.33/1.01  --sig_cnt_out                           false
% 2.33/1.01  --trig_cnt_out                          false
% 2.33/1.01  --trig_cnt_out_tolerance                1.
% 2.33/1.01  --trig_cnt_out_sk_spl                   false
% 2.33/1.01  --abstr_cl_out                          false
% 2.33/1.01  
% 2.33/1.01  ------ Global Options
% 2.33/1.01  
% 2.33/1.01  --schedule                              default
% 2.33/1.01  --add_important_lit                     false
% 2.33/1.01  --prop_solver_per_cl                    1000
% 2.33/1.01  --min_unsat_core                        false
% 2.33/1.01  --soft_assumptions                      false
% 2.33/1.01  --soft_lemma_size                       3
% 2.33/1.01  --prop_impl_unit_size                   0
% 2.33/1.01  --prop_impl_unit                        []
% 2.33/1.01  --share_sel_clauses                     true
% 2.33/1.01  --reset_solvers                         false
% 2.33/1.01  --bc_imp_inh                            [conj_cone]
% 2.33/1.01  --conj_cone_tolerance                   3.
% 2.33/1.01  --extra_neg_conj                        none
% 2.33/1.01  --large_theory_mode                     true
% 2.33/1.01  --prolific_symb_bound                   200
% 2.33/1.01  --lt_threshold                          2000
% 2.33/1.01  --clause_weak_htbl                      true
% 2.33/1.01  --gc_record_bc_elim                     false
% 2.33/1.01  
% 2.33/1.01  ------ Preprocessing Options
% 2.33/1.01  
% 2.33/1.01  --preprocessing_flag                    true
% 2.33/1.01  --time_out_prep_mult                    0.1
% 2.33/1.01  --splitting_mode                        input
% 2.33/1.01  --splitting_grd                         true
% 2.33/1.01  --splitting_cvd                         false
% 2.33/1.01  --splitting_cvd_svl                     false
% 2.33/1.01  --splitting_nvd                         32
% 2.33/1.01  --sub_typing                            true
% 2.33/1.01  --prep_gs_sim                           true
% 2.33/1.01  --prep_unflatten                        true
% 2.33/1.01  --prep_res_sim                          true
% 2.33/1.01  --prep_upred                            true
% 2.33/1.01  --prep_sem_filter                       exhaustive
% 2.33/1.01  --prep_sem_filter_out                   false
% 2.33/1.01  --pred_elim                             true
% 2.33/1.01  --res_sim_input                         true
% 2.33/1.01  --eq_ax_congr_red                       true
% 2.33/1.01  --pure_diseq_elim                       true
% 2.33/1.01  --brand_transform                       false
% 2.33/1.01  --non_eq_to_eq                          false
% 2.33/1.01  --prep_def_merge                        true
% 2.33/1.01  --prep_def_merge_prop_impl              false
% 2.33/1.01  --prep_def_merge_mbd                    true
% 2.33/1.01  --prep_def_merge_tr_red                 false
% 2.33/1.01  --prep_def_merge_tr_cl                  false
% 2.33/1.01  --smt_preprocessing                     true
% 2.33/1.01  --smt_ac_axioms                         fast
% 2.33/1.01  --preprocessed_out                      false
% 2.33/1.01  --preprocessed_stats                    false
% 2.33/1.01  
% 2.33/1.01  ------ Abstraction refinement Options
% 2.33/1.01  
% 2.33/1.01  --abstr_ref                             []
% 2.33/1.01  --abstr_ref_prep                        false
% 2.33/1.01  --abstr_ref_until_sat                   false
% 2.33/1.01  --abstr_ref_sig_restrict                funpre
% 2.33/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.33/1.01  --abstr_ref_under                       []
% 2.33/1.01  
% 2.33/1.01  ------ SAT Options
% 2.33/1.01  
% 2.33/1.01  --sat_mode                              false
% 2.33/1.01  --sat_fm_restart_options                ""
% 2.33/1.01  --sat_gr_def                            false
% 2.33/1.01  --sat_epr_types                         true
% 2.33/1.01  --sat_non_cyclic_types                  false
% 2.33/1.01  --sat_finite_models                     false
% 2.33/1.01  --sat_fm_lemmas                         false
% 2.33/1.01  --sat_fm_prep                           false
% 2.33/1.01  --sat_fm_uc_incr                        true
% 2.33/1.01  --sat_out_model                         small
% 2.33/1.01  --sat_out_clauses                       false
% 2.33/1.01  
% 2.33/1.01  ------ QBF Options
% 2.33/1.01  
% 2.33/1.01  --qbf_mode                              false
% 2.33/1.01  --qbf_elim_univ                         false
% 2.33/1.01  --qbf_dom_inst                          none
% 2.33/1.01  --qbf_dom_pre_inst                      false
% 2.33/1.01  --qbf_sk_in                             false
% 2.33/1.01  --qbf_pred_elim                         true
% 2.33/1.01  --qbf_split                             512
% 2.33/1.01  
% 2.33/1.01  ------ BMC1 Options
% 2.33/1.01  
% 2.33/1.01  --bmc1_incremental                      false
% 2.33/1.01  --bmc1_axioms                           reachable_all
% 2.33/1.01  --bmc1_min_bound                        0
% 2.33/1.01  --bmc1_max_bound                        -1
% 2.33/1.01  --bmc1_max_bound_default                -1
% 2.33/1.01  --bmc1_symbol_reachability              true
% 2.33/1.01  --bmc1_property_lemmas                  false
% 2.33/1.01  --bmc1_k_induction                      false
% 2.33/1.01  --bmc1_non_equiv_states                 false
% 2.33/1.01  --bmc1_deadlock                         false
% 2.33/1.01  --bmc1_ucm                              false
% 2.33/1.01  --bmc1_add_unsat_core                   none
% 2.33/1.01  --bmc1_unsat_core_children              false
% 2.33/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.33/1.01  --bmc1_out_stat                         full
% 2.33/1.01  --bmc1_ground_init                      false
% 2.33/1.01  --bmc1_pre_inst_next_state              false
% 2.33/1.01  --bmc1_pre_inst_state                   false
% 2.33/1.01  --bmc1_pre_inst_reach_state             false
% 2.33/1.01  --bmc1_out_unsat_core                   false
% 2.33/1.01  --bmc1_aig_witness_out                  false
% 2.33/1.01  --bmc1_verbose                          false
% 2.33/1.01  --bmc1_dump_clauses_tptp                false
% 2.33/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.33/1.01  --bmc1_dump_file                        -
% 2.33/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.33/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.33/1.01  --bmc1_ucm_extend_mode                  1
% 2.33/1.01  --bmc1_ucm_init_mode                    2
% 2.33/1.01  --bmc1_ucm_cone_mode                    none
% 2.33/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.33/1.01  --bmc1_ucm_relax_model                  4
% 2.33/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.33/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.33/1.01  --bmc1_ucm_layered_model                none
% 2.33/1.01  --bmc1_ucm_max_lemma_size               10
% 2.33/1.01  
% 2.33/1.01  ------ AIG Options
% 2.33/1.01  
% 2.33/1.01  --aig_mode                              false
% 2.33/1.01  
% 2.33/1.01  ------ Instantiation Options
% 2.33/1.01  
% 2.33/1.01  --instantiation_flag                    true
% 2.33/1.01  --inst_sos_flag                         false
% 2.33/1.01  --inst_sos_phase                        true
% 2.33/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.33/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.33/1.01  --inst_lit_sel_side                     none
% 2.33/1.01  --inst_solver_per_active                1400
% 2.33/1.01  --inst_solver_calls_frac                1.
% 2.33/1.01  --inst_passive_queue_type               priority_queues
% 2.33/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.33/1.01  --inst_passive_queues_freq              [25;2]
% 2.33/1.01  --inst_dismatching                      true
% 2.33/1.01  --inst_eager_unprocessed_to_passive     true
% 2.33/1.01  --inst_prop_sim_given                   true
% 2.33/1.01  --inst_prop_sim_new                     false
% 2.33/1.01  --inst_subs_new                         false
% 2.33/1.01  --inst_eq_res_simp                      false
% 2.33/1.01  --inst_subs_given                       false
% 2.33/1.01  --inst_orphan_elimination               true
% 2.33/1.01  --inst_learning_loop_flag               true
% 2.33/1.01  --inst_learning_start                   3000
% 2.33/1.01  --inst_learning_factor                  2
% 2.33/1.01  --inst_start_prop_sim_after_learn       3
% 2.33/1.01  --inst_sel_renew                        solver
% 2.33/1.01  --inst_lit_activity_flag                true
% 2.33/1.01  --inst_restr_to_given                   false
% 2.33/1.01  --inst_activity_threshold               500
% 2.33/1.01  --inst_out_proof                        true
% 2.33/1.01  
% 2.33/1.01  ------ Resolution Options
% 2.33/1.01  
% 2.33/1.01  --resolution_flag                       false
% 2.33/1.01  --res_lit_sel                           adaptive
% 2.33/1.01  --res_lit_sel_side                      none
% 2.33/1.01  --res_ordering                          kbo
% 2.33/1.01  --res_to_prop_solver                    active
% 2.33/1.01  --res_prop_simpl_new                    false
% 2.33/1.01  --res_prop_simpl_given                  true
% 2.33/1.01  --res_passive_queue_type                priority_queues
% 2.33/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.33/1.01  --res_passive_queues_freq               [15;5]
% 2.33/1.01  --res_forward_subs                      full
% 2.33/1.01  --res_backward_subs                     full
% 2.33/1.01  --res_forward_subs_resolution           true
% 2.33/1.01  --res_backward_subs_resolution          true
% 2.33/1.01  --res_orphan_elimination                true
% 2.33/1.01  --res_time_limit                        2.
% 2.33/1.01  --res_out_proof                         true
% 2.33/1.01  
% 2.33/1.01  ------ Superposition Options
% 2.33/1.01  
% 2.33/1.01  --superposition_flag                    true
% 2.33/1.01  --sup_passive_queue_type                priority_queues
% 2.33/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.33/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.33/1.01  --demod_completeness_check              fast
% 2.33/1.01  --demod_use_ground                      true
% 2.33/1.01  --sup_to_prop_solver                    passive
% 2.33/1.01  --sup_prop_simpl_new                    true
% 2.33/1.01  --sup_prop_simpl_given                  true
% 2.33/1.01  --sup_fun_splitting                     false
% 2.33/1.01  --sup_smt_interval                      50000
% 2.33/1.01  
% 2.33/1.01  ------ Superposition Simplification Setup
% 2.33/1.01  
% 2.33/1.01  --sup_indices_passive                   []
% 2.33/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.33/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.33/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/1.01  --sup_full_bw                           [BwDemod]
% 2.33/1.01  --sup_immed_triv                        [TrivRules]
% 2.33/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.33/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/1.01  --sup_immed_bw_main                     []
% 2.33/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.33/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.33/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.33/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.33/1.01  
% 2.33/1.01  ------ Combination Options
% 2.33/1.01  
% 2.33/1.01  --comb_res_mult                         3
% 2.33/1.01  --comb_sup_mult                         2
% 2.33/1.01  --comb_inst_mult                        10
% 2.33/1.01  
% 2.33/1.01  ------ Debug Options
% 2.33/1.01  
% 2.33/1.01  --dbg_backtrace                         false
% 2.33/1.01  --dbg_dump_prop_clauses                 false
% 2.33/1.01  --dbg_dump_prop_clauses_file            -
% 2.33/1.01  --dbg_out_stat                          false
% 2.33/1.01  
% 2.33/1.01  
% 2.33/1.01  
% 2.33/1.01  
% 2.33/1.01  ------ Proving...
% 2.33/1.01  
% 2.33/1.01  
% 2.33/1.01  % SZS status Theorem for theBenchmark.p
% 2.33/1.01  
% 2.33/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 2.33/1.01  
% 2.33/1.01  fof(f11,axiom,(
% 2.33/1.01    ! [X0] : (v5_relat_1(k6_relat_1(X0),X0) & v4_relat_1(k6_relat_1(X0),X0) & v1_relat_1(k6_relat_1(X0)))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f52,plain,(
% 2.33/1.01    ( ! [X0] : (v4_relat_1(k6_relat_1(X0),X0)) )),
% 2.33/1.01    inference(cnf_transformation,[],[f11])).
% 2.33/1.01  
% 2.33/1.01  fof(f8,axiom,(
% 2.33/1.01    ! [X0,X1] : (r1_tarski(X0,X1) => ! [X2] : ((v4_relat_1(X2,X0) & v1_relat_1(X2)) => v4_relat_1(X2,X1)))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f27,plain,(
% 2.33/1.01    ! [X0,X1] : (! [X2] : (v4_relat_1(X2,X1) | (~v4_relat_1(X2,X0) | ~v1_relat_1(X2))) | ~r1_tarski(X0,X1))),
% 2.33/1.01    inference(ennf_transformation,[],[f8])).
% 2.33/1.01  
% 2.33/1.01  fof(f28,plain,(
% 2.33/1.01    ! [X0,X1] : (! [X2] : (v4_relat_1(X2,X1) | ~v4_relat_1(X2,X0) | ~v1_relat_1(X2)) | ~r1_tarski(X0,X1))),
% 2.33/1.01    inference(flattening,[],[f27])).
% 2.33/1.01  
% 2.33/1.01  fof(f47,plain,(
% 2.33/1.01    ( ! [X2,X0,X1] : (v4_relat_1(X2,X1) | ~v4_relat_1(X2,X0) | ~v1_relat_1(X2) | ~r1_tarski(X0,X1)) )),
% 2.33/1.01    inference(cnf_transformation,[],[f28])).
% 2.33/1.01  
% 2.33/1.01  fof(f2,axiom,(
% 2.33/1.01    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f21,plain,(
% 2.33/1.01    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.33/1.01    inference(ennf_transformation,[],[f2])).
% 2.33/1.01  
% 2.33/1.01  fof(f36,plain,(
% 2.33/1.01    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.33/1.01    inference(nnf_transformation,[],[f21])).
% 2.33/1.01  
% 2.33/1.01  fof(f40,plain,(
% 2.33/1.01    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.33/1.01    inference(cnf_transformation,[],[f36])).
% 2.33/1.01  
% 2.33/1.01  fof(f13,axiom,(
% 2.33/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f30,plain,(
% 2.33/1.01    ! [X0,X1,X2] : ((v5_relat_1(X2,X1) & v4_relat_1(X2,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.33/1.01    inference(ennf_transformation,[],[f13])).
% 2.33/1.01  
% 2.33/1.01  fof(f56,plain,(
% 2.33/1.01    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.33/1.01    inference(cnf_transformation,[],[f30])).
% 2.33/1.01  
% 2.33/1.01  fof(f18,conjecture,(
% 2.33/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1) & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0)))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f19,negated_conjecture,(
% 2.33/1.01    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1) & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0)))),
% 2.33/1.01    inference(negated_conjecture,[],[f18])).
% 2.33/1.01  
% 2.33/1.01  fof(f35,plain,(
% 2.33/1.01    ? [X0,X1,X2] : ((k1_relset_1(X0,X1,X2) != k8_relset_1(X0,X1,X2,X1) | k2_relset_1(X0,X1,X2) != k7_relset_1(X0,X1,X2,X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.33/1.01    inference(ennf_transformation,[],[f19])).
% 2.33/1.01  
% 2.33/1.01  fof(f37,plain,(
% 2.33/1.01    ? [X0,X1,X2] : ((k1_relset_1(X0,X1,X2) != k8_relset_1(X0,X1,X2,X1) | k2_relset_1(X0,X1,X2) != k7_relset_1(X0,X1,X2,X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => ((k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))))),
% 2.33/1.01    introduced(choice_axiom,[])).
% 2.33/1.01  
% 2.33/1.01  fof(f38,plain,(
% 2.33/1.01    (k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 2.33/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f35,f37])).
% 2.33/1.01  
% 2.33/1.01  fof(f61,plain,(
% 2.33/1.01    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 2.33/1.01    inference(cnf_transformation,[],[f38])).
% 2.33/1.01  
% 2.33/1.01  fof(f1,axiom,(
% 2.33/1.01    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f20,plain,(
% 2.33/1.01    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.33/1.01    inference(ennf_transformation,[],[f1])).
% 2.33/1.01  
% 2.33/1.01  fof(f39,plain,(
% 2.33/1.01    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.33/1.01    inference(cnf_transformation,[],[f20])).
% 2.33/1.01  
% 2.33/1.01  fof(f3,axiom,(
% 2.33/1.01    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f42,plain,(
% 2.33/1.01    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.33/1.01    inference(cnf_transformation,[],[f3])).
% 2.33/1.01  
% 2.33/1.01  fof(f51,plain,(
% 2.33/1.01    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 2.33/1.01    inference(cnf_transformation,[],[f11])).
% 2.33/1.01  
% 2.33/1.01  fof(f7,axiom,(
% 2.33/1.01    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => k7_relat_1(X1,X0) = X1)),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f25,plain,(
% 2.33/1.01    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 2.33/1.01    inference(ennf_transformation,[],[f7])).
% 2.33/1.01  
% 2.33/1.01  fof(f26,plain,(
% 2.33/1.01    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.33/1.01    inference(flattening,[],[f25])).
% 2.33/1.01  
% 2.33/1.01  fof(f46,plain,(
% 2.33/1.01    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.33/1.01    inference(cnf_transformation,[],[f26])).
% 2.33/1.01  
% 2.33/1.01  fof(f10,axiom,(
% 2.33/1.01    ! [X0,X1] : (v1_relat_1(X1) => k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f29,plain,(
% 2.33/1.01    ! [X0,X1] : (k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) | ~v1_relat_1(X1))),
% 2.33/1.01    inference(ennf_transformation,[],[f10])).
% 2.33/1.01  
% 2.33/1.01  fof(f50,plain,(
% 2.33/1.01    ( ! [X0,X1] : (k7_relat_1(X1,X0) = k5_relat_1(k6_relat_1(X0),X1) | ~v1_relat_1(X1)) )),
% 2.33/1.01    inference(cnf_transformation,[],[f29])).
% 2.33/1.01  
% 2.33/1.01  fof(f12,axiom,(
% 2.33/1.01    ! [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f54,plain,(
% 2.33/1.01    ( ! [X0,X1] : (k6_relat_1(k3_xboole_0(X0,X1)) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0))) )),
% 2.33/1.01    inference(cnf_transformation,[],[f12])).
% 2.33/1.01  
% 2.33/1.01  fof(f9,axiom,(
% 2.33/1.01    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f49,plain,(
% 2.33/1.01    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 2.33/1.01    inference(cnf_transformation,[],[f9])).
% 2.33/1.01  
% 2.33/1.01  fof(f5,axiom,(
% 2.33/1.01    ! [X0,X1] : (v1_relat_1(X1) => k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f23,plain,(
% 2.33/1.01    ! [X0,X1] : (k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.33/1.01    inference(ennf_transformation,[],[f5])).
% 2.33/1.01  
% 2.33/1.01  fof(f44,plain,(
% 2.33/1.01    ( ! [X0,X1] : (k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) | ~v1_relat_1(X1)) )),
% 2.33/1.01    inference(cnf_transformation,[],[f23])).
% 2.33/1.01  
% 2.33/1.01  fof(f6,axiom,(
% 2.33/1.01    ! [X0] : (v1_relat_1(X0) => k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f24,plain,(
% 2.33/1.01    ! [X0] : (k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) | ~v1_relat_1(X0))),
% 2.33/1.01    inference(ennf_transformation,[],[f6])).
% 2.33/1.01  
% 2.33/1.01  fof(f45,plain,(
% 2.33/1.01    ( ! [X0] : (k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) | ~v1_relat_1(X0)) )),
% 2.33/1.01    inference(cnf_transformation,[],[f24])).
% 2.33/1.01  
% 2.33/1.01  fof(f55,plain,(
% 2.33/1.01    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.33/1.01    inference(cnf_transformation,[],[f30])).
% 2.33/1.01  
% 2.33/1.01  fof(f4,axiom,(
% 2.33/1.01    ! [X0,X1] : (v1_relat_1(X1) => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f22,plain,(
% 2.33/1.01    ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 2.33/1.01    inference(ennf_transformation,[],[f4])).
% 2.33/1.01  
% 2.33/1.01  fof(f43,plain,(
% 2.33/1.01    ( ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.33/1.01    inference(cnf_transformation,[],[f22])).
% 2.33/1.01  
% 2.33/1.01  fof(f14,axiom,(
% 2.33/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f31,plain,(
% 2.33/1.01    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.33/1.01    inference(ennf_transformation,[],[f14])).
% 2.33/1.01  
% 2.33/1.01  fof(f57,plain,(
% 2.33/1.01    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.33/1.01    inference(cnf_transformation,[],[f31])).
% 2.33/1.01  
% 2.33/1.01  fof(f15,axiom,(
% 2.33/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f32,plain,(
% 2.33/1.01    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.33/1.01    inference(ennf_transformation,[],[f15])).
% 2.33/1.01  
% 2.33/1.01  fof(f58,plain,(
% 2.33/1.01    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.33/1.01    inference(cnf_transformation,[],[f32])).
% 2.33/1.01  
% 2.33/1.01  fof(f62,plain,(
% 2.33/1.01    k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)),
% 2.33/1.01    inference(cnf_transformation,[],[f38])).
% 2.33/1.01  
% 2.33/1.01  fof(f17,axiom,(
% 2.33/1.01    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f34,plain,(
% 2.33/1.01    ! [X0,X1,X2,X3] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.33/1.01    inference(ennf_transformation,[],[f17])).
% 2.33/1.01  
% 2.33/1.01  fof(f60,plain,(
% 2.33/1.01    ( ! [X2,X0,X3,X1] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.33/1.01    inference(cnf_transformation,[],[f34])).
% 2.33/1.01  
% 2.33/1.01  fof(f16,axiom,(
% 2.33/1.01    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 2.33/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.33/1.01  
% 2.33/1.01  fof(f33,plain,(
% 2.33/1.01    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.33/1.01    inference(ennf_transformation,[],[f16])).
% 2.33/1.01  
% 2.33/1.01  fof(f59,plain,(
% 2.33/1.01    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.33/1.01    inference(cnf_transformation,[],[f33])).
% 2.33/1.01  
% 2.33/1.01  cnf(c_13,plain,
% 2.33/1.01      ( v4_relat_1(k6_relat_1(X0),X0) ),
% 2.33/1.01      inference(cnf_transformation,[],[f52]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_766,plain,
% 2.33/1.01      ( v4_relat_1(k6_relat_1(X0),X0) = iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_8,plain,
% 2.33/1.01      ( ~ v4_relat_1(X0,X1)
% 2.33/1.01      | v4_relat_1(X0,X2)
% 2.33/1.01      | ~ r1_tarski(X1,X2)
% 2.33/1.01      | ~ v1_relat_1(X0) ),
% 2.33/1.01      inference(cnf_transformation,[],[f47]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2,plain,
% 2.33/1.01      ( r1_tarski(k2_relat_1(X0),X1)
% 2.33/1.01      | ~ v5_relat_1(X0,X1)
% 2.33/1.01      | ~ v1_relat_1(X0) ),
% 2.33/1.01      inference(cnf_transformation,[],[f40]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_16,plain,
% 2.33/1.01      ( v5_relat_1(X0,X1)
% 2.33/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 2.33/1.01      inference(cnf_transformation,[],[f56]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_23,negated_conjecture,
% 2.33/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 2.33/1.01      inference(cnf_transformation,[],[f61]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_266,plain,
% 2.33/1.01      ( v5_relat_1(X0,X1)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X2,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | sK2 != X0 ),
% 2.33/1.01      inference(resolution_lifted,[status(thm)],[c_16,c_23]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_267,plain,
% 2.33/1.01      ( v5_relat_1(sK2,X0)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X1,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(unflattening,[status(thm)],[c_266]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_360,plain,
% 2.33/1.01      ( r1_tarski(k2_relat_1(X0),X1)
% 2.33/1.01      | ~ v1_relat_1(X0)
% 2.33/1.01      | X2 != X1
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X3,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | sK2 != X0 ),
% 2.33/1.01      inference(resolution_lifted,[status(thm)],[c_2,c_267]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_361,plain,
% 2.33/1.01      ( r1_tarski(k2_relat_1(sK2),X0)
% 2.33/1.01      | ~ v1_relat_1(sK2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X1,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(unflattening,[status(thm)],[c_360]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_396,plain,
% 2.33/1.01      ( ~ v4_relat_1(X0,X1)
% 2.33/1.01      | v4_relat_1(X0,X2)
% 2.33/1.01      | ~ v1_relat_1(X0)
% 2.33/1.01      | ~ v1_relat_1(sK2)
% 2.33/1.01      | X3 != X2
% 2.33/1.01      | k2_relat_1(sK2) != X1
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X4,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(resolution_lifted,[status(thm)],[c_8,c_361]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_397,plain,
% 2.33/1.01      ( v4_relat_1(X0,X1)
% 2.33/1.01      | ~ v4_relat_1(X0,k2_relat_1(sK2))
% 2.33/1.01      | ~ v1_relat_1(X0)
% 2.33/1.01      | ~ v1_relat_1(sK2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X2,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(unflattening,[status(thm)],[c_396]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_761,plain,
% 2.33/1.01      ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | v4_relat_1(X2,X1) = iProver_top
% 2.33/1.01      | v4_relat_1(X2,k2_relat_1(sK2)) != iProver_top
% 2.33/1.01      | v1_relat_1(X2) != iProver_top
% 2.33/1.01      | v1_relat_1(sK2) != iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_397]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1041,plain,
% 2.33/1.01      ( v4_relat_1(X0,k2_relat_1(sK2)) != iProver_top
% 2.33/1.01      | v4_relat_1(X0,sK1) = iProver_top
% 2.33/1.01      | v1_relat_1(X0) != iProver_top
% 2.33/1.01      | v1_relat_1(sK2) != iProver_top ),
% 2.33/1.01      inference(equality_resolution,[status(thm)],[c_761]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_523,plain,( X0 = X0 ),theory(equality) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_883,plain,
% 2.33/1.01      ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) = k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(instantiation,[status(thm)],[c_523]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_0,plain,
% 2.33/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.33/1.01      | ~ v1_relat_1(X1)
% 2.33/1.01      | v1_relat_1(X0) ),
% 2.33/1.01      inference(cnf_transformation,[],[f39]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_251,plain,
% 2.33/1.01      ( ~ v1_relat_1(X0)
% 2.33/1.01      | v1_relat_1(X1)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0)
% 2.33/1.01      | sK2 != X1 ),
% 2.33/1.01      inference(resolution_lifted,[status(thm)],[c_0,c_23]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_252,plain,
% 2.33/1.01      ( ~ v1_relat_1(X0)
% 2.33/1.01      | v1_relat_1(sK2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0) ),
% 2.33/1.01      inference(unflattening,[status(thm)],[c_251]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_873,plain,
% 2.33/1.01      ( ~ v1_relat_1(k2_zfmisc_1(X0,X1))
% 2.33/1.01      | v1_relat_1(sK2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(X0,X1)) ),
% 2.33/1.01      inference(instantiation,[status(thm)],[c_252]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1022,plain,
% 2.33/1.01      ( ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | v1_relat_1(sK2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(instantiation,[status(thm)],[c_873]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1023,plain,
% 2.33/1.01      ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 2.33/1.01      | v1_relat_1(sK2) = iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_1022]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_3,plain,
% 2.33/1.01      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.33/1.01      inference(cnf_transformation,[],[f42]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1117,plain,
% 2.33/1.01      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(instantiation,[status(thm)],[c_3]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1118,plain,
% 2.33/1.01      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_1117]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1382,plain,
% 2.33/1.01      ( v1_relat_1(X0) != iProver_top
% 2.33/1.01      | v4_relat_1(X0,sK1) = iProver_top
% 2.33/1.01      | v4_relat_1(X0,k2_relat_1(sK2)) != iProver_top ),
% 2.33/1.01      inference(global_propositional_subsumption,
% 2.33/1.01                [status(thm)],
% 2.33/1.01                [c_1041,c_883,c_1023,c_1118]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1383,plain,
% 2.33/1.01      ( v4_relat_1(X0,k2_relat_1(sK2)) != iProver_top
% 2.33/1.01      | v4_relat_1(X0,sK1) = iProver_top
% 2.33/1.01      | v1_relat_1(X0) != iProver_top ),
% 2.33/1.01      inference(renaming,[status(thm)],[c_1382]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1413,plain,
% 2.33/1.01      ( v4_relat_1(k6_relat_1(k2_relat_1(sK2)),sK1) = iProver_top
% 2.33/1.01      | v1_relat_1(k6_relat_1(k2_relat_1(sK2))) != iProver_top ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_766,c_1383]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_14,plain,
% 2.33/1.01      ( v1_relat_1(k6_relat_1(X0)) ),
% 2.33/1.01      inference(cnf_transformation,[],[f51]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_765,plain,
% 2.33/1.01      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1688,plain,
% 2.33/1.01      ( v4_relat_1(k6_relat_1(k2_relat_1(sK2)),sK1) = iProver_top ),
% 2.33/1.01      inference(forward_subsumption_resolution,
% 2.33/1.01                [status(thm)],
% 2.33/1.01                [c_1413,c_765]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_7,plain,
% 2.33/1.01      ( ~ v4_relat_1(X0,X1) | ~ v1_relat_1(X0) | k7_relat_1(X0,X1) = X0 ),
% 2.33/1.01      inference(cnf_transformation,[],[f46]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_768,plain,
% 2.33/1.01      ( k7_relat_1(X0,X1) = X0
% 2.33/1.01      | v4_relat_1(X0,X1) != iProver_top
% 2.33/1.01      | v1_relat_1(X0) != iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2187,plain,
% 2.33/1.01      ( k7_relat_1(k6_relat_1(k2_relat_1(sK2)),sK1) = k6_relat_1(k2_relat_1(sK2))
% 2.33/1.01      | v1_relat_1(k6_relat_1(k2_relat_1(sK2))) != iProver_top ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_1688,c_768]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_11,plain,
% 2.33/1.01      ( ~ v1_relat_1(X0)
% 2.33/1.01      | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
% 2.33/1.01      inference(cnf_transformation,[],[f50]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_767,plain,
% 2.33/1.01      ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
% 2.33/1.01      | v1_relat_1(X1) != iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1515,plain,
% 2.33/1.01      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k7_relat_1(k6_relat_1(X1),X0) ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_765,c_767]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_15,plain,
% 2.33/1.01      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k6_relat_1(k3_xboole_0(X1,X0)) ),
% 2.33/1.01      inference(cnf_transformation,[],[f54]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1520,plain,
% 2.33/1.01      ( k6_relat_1(k3_xboole_0(X0,X1)) = k7_relat_1(k6_relat_1(X0),X1) ),
% 2.33/1.01      inference(light_normalisation,[status(thm)],[c_1515,c_15]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2190,plain,
% 2.33/1.01      ( k6_relat_1(k3_xboole_0(k2_relat_1(sK2),sK1)) = k6_relat_1(k2_relat_1(sK2))
% 2.33/1.01      | v1_relat_1(k6_relat_1(k2_relat_1(sK2))) != iProver_top ),
% 2.33/1.01      inference(demodulation,[status(thm)],[c_2187,c_1520]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2203,plain,
% 2.33/1.01      ( ~ v1_relat_1(k6_relat_1(k2_relat_1(sK2)))
% 2.33/1.01      | k6_relat_1(k3_xboole_0(k2_relat_1(sK2),sK1)) = k6_relat_1(k2_relat_1(sK2)) ),
% 2.33/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_2190]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2305,plain,
% 2.33/1.01      ( v1_relat_1(k6_relat_1(k2_relat_1(sK2))) ),
% 2.33/1.01      inference(instantiation,[status(thm)],[c_14]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2358,plain,
% 2.33/1.01      ( k6_relat_1(k3_xboole_0(k2_relat_1(sK2),sK1)) = k6_relat_1(k2_relat_1(sK2)) ),
% 2.33/1.01      inference(global_propositional_subsumption,
% 2.33/1.01                [status(thm)],
% 2.33/1.01                [c_2190,c_2203,c_2305]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_9,plain,
% 2.33/1.01      ( k2_relat_1(k6_relat_1(X0)) = X0 ),
% 2.33/1.01      inference(cnf_transformation,[],[f49]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2372,plain,
% 2.33/1.01      ( k3_xboole_0(k2_relat_1(sK2),sK1) = k2_relat_1(k6_relat_1(k2_relat_1(sK2))) ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_2358,c_9]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2374,plain,
% 2.33/1.01      ( k3_xboole_0(k2_relat_1(sK2),sK1) = k2_relat_1(sK2) ),
% 2.33/1.01      inference(demodulation,[status(thm)],[c_2372,c_9]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_764,plain,
% 2.33/1.01      ( k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(X0)
% 2.33/1.01      | v1_relat_1(X0) != iProver_top
% 2.33/1.01      | v1_relat_1(sK2) = iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_252]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1281,plain,
% 2.33/1.01      ( v1_relat_1(sK2) = iProver_top ),
% 2.33/1.01      inference(global_propositional_subsumption,
% 2.33/1.01                [status(thm)],
% 2.33/1.01                [c_764,c_883,c_1023,c_1118]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_5,plain,
% 2.33/1.01      ( ~ v1_relat_1(X0)
% 2.33/1.01      | k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1) ),
% 2.33/1.01      inference(cnf_transformation,[],[f44]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_770,plain,
% 2.33/1.01      ( k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1)
% 2.33/1.01      | v1_relat_1(X0) != iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2103,plain,
% 2.33/1.01      ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0)) = k10_relat_1(sK2,X0) ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_1281,c_770]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2381,plain,
% 2.33/1.01      ( k10_relat_1(sK2,k2_relat_1(sK2)) = k10_relat_1(sK2,sK1) ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_2374,c_2103]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_6,plain,
% 2.33/1.01      ( ~ v1_relat_1(X0)
% 2.33/1.01      | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
% 2.33/1.01      inference(cnf_transformation,[],[f45]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_769,plain,
% 2.33/1.01      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
% 2.33/1.01      | v1_relat_1(X0) != iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1448,plain,
% 2.33/1.01      ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_1281,c_769]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2383,plain,
% 2.33/1.01      ( k10_relat_1(sK2,sK1) = k1_relat_1(sK2) ),
% 2.33/1.01      inference(light_normalisation,[status(thm)],[c_2381,c_1448]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_17,plain,
% 2.33/1.01      ( v4_relat_1(X0,X1)
% 2.33/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.33/1.01      inference(cnf_transformation,[],[f55]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_314,plain,
% 2.33/1.01      ( v4_relat_1(X0,X1)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | sK2 != X0 ),
% 2.33/1.01      inference(resolution_lifted,[status(thm)],[c_17,c_23]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_315,plain,
% 2.33/1.01      ( v4_relat_1(sK2,X0)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(unflattening,[status(thm)],[c_314]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_763,plain,
% 2.33/1.01      ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | v4_relat_1(sK2,X0) = iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_315]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1214,plain,
% 2.33/1.01      ( v4_relat_1(sK2,sK0) = iProver_top ),
% 2.33/1.01      inference(equality_resolution,[status(thm)],[c_763]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2186,plain,
% 2.33/1.01      ( k7_relat_1(sK2,sK0) = sK2 | v1_relat_1(sK2) != iProver_top ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_1214,c_768]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_888,plain,
% 2.33/1.01      ( v4_relat_1(sK2,sK0)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(instantiation,[status(thm)],[c_315]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1311,plain,
% 2.33/1.01      ( ~ v4_relat_1(sK2,X0)
% 2.33/1.01      | ~ v1_relat_1(sK2)
% 2.33/1.01      | k7_relat_1(sK2,X0) = sK2 ),
% 2.33/1.01      inference(instantiation,[status(thm)],[c_7]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1337,plain,
% 2.33/1.01      ( ~ v4_relat_1(sK2,sK0)
% 2.33/1.01      | ~ v1_relat_1(sK2)
% 2.33/1.01      | k7_relat_1(sK2,sK0) = sK2 ),
% 2.33/1.01      inference(instantiation,[status(thm)],[c_1311]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2279,plain,
% 2.33/1.01      ( k7_relat_1(sK2,sK0) = sK2 ),
% 2.33/1.01      inference(global_propositional_subsumption,
% 2.33/1.01                [status(thm)],
% 2.33/1.01                [c_2186,c_883,c_888,c_1022,c_1117,c_1337]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_4,plain,
% 2.33/1.01      ( ~ v1_relat_1(X0)
% 2.33/1.01      | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 2.33/1.01      inference(cnf_transformation,[],[f43]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_771,plain,
% 2.33/1.01      ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
% 2.33/1.01      | v1_relat_1(X0) != iProver_top ),
% 2.33/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1900,plain,
% 2.33/1.01      ( k2_relat_1(k7_relat_1(sK2,X0)) = k9_relat_1(sK2,X0) ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_1281,c_771]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_2282,plain,
% 2.33/1.01      ( k9_relat_1(sK2,sK0) = k2_relat_1(sK2) ),
% 2.33/1.01      inference(superposition,[status(thm)],[c_2279,c_1900]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_18,plain,
% 2.33/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.33/1.01      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.33/1.01      inference(cnf_transformation,[],[f57]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_305,plain,
% 2.33/1.01      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | sK2 != X2 ),
% 2.33/1.01      inference(resolution_lifted,[status(thm)],[c_18,c_23]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_306,plain,
% 2.33/1.01      ( k1_relset_1(X0,X1,sK2) = k1_relat_1(sK2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(unflattening,[status(thm)],[c_305]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_912,plain,
% 2.33/1.01      ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
% 2.33/1.01      inference(equality_resolution,[status(thm)],[c_306]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_19,plain,
% 2.33/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.33/1.01      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.33/1.01      inference(cnf_transformation,[],[f58]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_296,plain,
% 2.33/1.01      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | sK2 != X2 ),
% 2.33/1.01      inference(resolution_lifted,[status(thm)],[c_19,c_23]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_297,plain,
% 2.33/1.01      ( k2_relset_1(X0,X1,sK2) = k2_relat_1(sK2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(unflattening,[status(thm)],[c_296]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_882,plain,
% 2.33/1.01      ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
% 2.33/1.01      inference(equality_resolution,[status(thm)],[c_297]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_22,negated_conjecture,
% 2.33/1.01      ( k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)
% 2.33/1.01      | k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) ),
% 2.33/1.01      inference(cnf_transformation,[],[f62]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_976,plain,
% 2.33/1.01      ( k8_relset_1(sK0,sK1,sK2,sK1) != k1_relset_1(sK0,sK1,sK2)
% 2.33/1.01      | k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2) ),
% 2.33/1.01      inference(demodulation,[status(thm)],[c_882,c_22]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1005,plain,
% 2.33/1.01      ( k8_relset_1(sK0,sK1,sK2,sK1) != k1_relat_1(sK2)
% 2.33/1.01      | k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2) ),
% 2.33/1.01      inference(demodulation,[status(thm)],[c_912,c_976]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_21,plain,
% 2.33/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.33/1.01      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 2.33/1.01      inference(cnf_transformation,[],[f60]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_278,plain,
% 2.33/1.01      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | sK2 != X2 ),
% 2.33/1.01      inference(resolution_lifted,[status(thm)],[c_21,c_23]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_279,plain,
% 2.33/1.01      ( k8_relset_1(X0,X1,sK2,X2) = k10_relat_1(sK2,X2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(unflattening,[status(thm)],[c_278]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_915,plain,
% 2.33/1.01      ( k8_relset_1(sK0,sK1,sK2,X0) = k10_relat_1(sK2,X0) ),
% 2.33/1.01      inference(equality_resolution,[status(thm)],[c_279]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_20,plain,
% 2.33/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.33/1.01      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 2.33/1.01      inference(cnf_transformation,[],[f59]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_287,plain,
% 2.33/1.01      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))
% 2.33/1.01      | sK2 != X2 ),
% 2.33/1.01      inference(resolution_lifted,[status(thm)],[c_20,c_23]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_288,plain,
% 2.33/1.01      ( k7_relset_1(X0,X1,sK2,X2) = k9_relat_1(sK2,X2)
% 2.33/1.01      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.33/1.01      inference(unflattening,[status(thm)],[c_287]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_973,plain,
% 2.33/1.01      ( k7_relset_1(sK0,sK1,sK2,X0) = k9_relat_1(sK2,X0) ),
% 2.33/1.01      inference(equality_resolution,[status(thm)],[c_288]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(c_1286,plain,
% 2.33/1.01      ( k10_relat_1(sK2,sK1) != k1_relat_1(sK2)
% 2.33/1.01      | k9_relat_1(sK2,sK0) != k2_relat_1(sK2) ),
% 2.33/1.01      inference(demodulation,[status(thm)],[c_1005,c_915,c_973]) ).
% 2.33/1.01  
% 2.33/1.01  cnf(contradiction,plain,
% 2.33/1.01      ( $false ),
% 2.33/1.01      inference(minisat,[status(thm)],[c_2383,c_2282,c_1286]) ).
% 2.33/1.01  
% 2.33/1.01  
% 2.33/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 2.33/1.01  
% 2.33/1.01  ------                               Statistics
% 2.33/1.01  
% 2.33/1.01  ------ General
% 2.33/1.01  
% 2.33/1.01  abstr_ref_over_cycles:                  0
% 2.33/1.01  abstr_ref_under_cycles:                 0
% 2.33/1.01  gc_basic_clause_elim:                   0
% 2.33/1.01  forced_gc_time:                         0
% 2.33/1.01  parsing_time:                           0.008
% 2.33/1.01  unif_index_cands_time:                  0.
% 2.33/1.01  unif_index_add_time:                    0.
% 2.33/1.01  orderings_time:                         0.
% 2.33/1.01  out_proof_time:                         0.016
% 2.33/1.01  total_time:                             0.171
% 2.33/1.01  num_of_symbols:                         53
% 2.33/1.01  num_of_terms:                           2814
% 2.33/1.01  
% 2.33/1.01  ------ Preprocessing
% 2.33/1.01  
% 2.33/1.01  num_of_splits:                          0
% 2.33/1.01  num_of_split_atoms:                     0
% 2.33/1.01  num_of_reused_defs:                     0
% 2.33/1.01  num_eq_ax_congr_red:                    17
% 2.33/1.01  num_of_sem_filtered_clauses:            1
% 2.33/1.01  num_of_subtypes:                        0
% 2.33/1.01  monotx_restored_types:                  0
% 2.33/1.01  sat_num_of_epr_types:                   0
% 2.33/1.01  sat_num_of_non_cyclic_types:            0
% 2.33/1.01  sat_guarded_non_collapsed_types:        0
% 2.33/1.01  num_pure_diseq_elim:                    0
% 2.33/1.01  simp_replaced_by:                       0
% 2.33/1.01  res_preprocessed:                       119
% 2.33/1.01  prep_upred:                             0
% 2.33/1.01  prep_unflattend:                        15
% 2.33/1.01  smt_new_axioms:                         0
% 2.33/1.01  pred_elim_cands:                        2
% 2.33/1.01  pred_elim:                              3
% 2.33/1.01  pred_elim_cl:                           4
% 2.33/1.01  pred_elim_cycles:                       5
% 2.33/1.01  merged_defs:                            0
% 2.33/1.01  merged_defs_ncl:                        0
% 2.33/1.01  bin_hyper_res:                          0
% 2.33/1.01  prep_cycles:                            4
% 2.33/1.01  pred_elim_time:                         0.018
% 2.33/1.01  splitting_time:                         0.
% 2.33/1.01  sem_filter_time:                        0.
% 2.33/1.01  monotx_time:                            0.
% 2.33/1.01  subtype_inf_time:                       0.
% 2.33/1.01  
% 2.33/1.01  ------ Problem properties
% 2.33/1.01  
% 2.33/1.01  clauses:                                20
% 2.33/1.01  conjectures:                            1
% 2.33/1.01  epr:                                    0
% 2.33/1.01  horn:                                   20
% 2.33/1.01  ground:                                 1
% 2.33/1.01  unary:                                  6
% 2.33/1.01  binary:                                 10
% 2.33/1.01  lits:                                   40
% 2.33/1.01  lits_eq:                                21
% 2.33/1.01  fd_pure:                                0
% 2.33/1.01  fd_pseudo:                              0
% 2.33/1.01  fd_cond:                                0
% 2.33/1.01  fd_pseudo_cond:                         0
% 2.33/1.01  ac_symbols:                             0
% 2.33/1.01  
% 2.33/1.01  ------ Propositional Solver
% 2.33/1.01  
% 2.33/1.01  prop_solver_calls:                      28
% 2.33/1.01  prop_fast_solver_calls:                 642
% 2.33/1.01  smt_solver_calls:                       0
% 2.33/1.01  smt_fast_solver_calls:                  0
% 2.33/1.01  prop_num_of_clauses:                    1020
% 2.33/1.01  prop_preprocess_simplified:             4000
% 2.33/1.01  prop_fo_subsumed:                       6
% 2.33/1.01  prop_solver_time:                       0.
% 2.33/1.01  smt_solver_time:                        0.
% 2.33/1.01  smt_fast_solver_time:                   0.
% 2.33/1.01  prop_fast_solver_time:                  0.
% 2.33/1.01  prop_unsat_core_time:                   0.
% 2.33/1.01  
% 2.33/1.01  ------ QBF
% 2.33/1.01  
% 2.33/1.01  qbf_q_res:                              0
% 2.33/1.01  qbf_num_tautologies:                    0
% 2.33/1.01  qbf_prep_cycles:                        0
% 2.33/1.01  
% 2.33/1.01  ------ BMC1
% 2.33/1.01  
% 2.33/1.01  bmc1_current_bound:                     -1
% 2.33/1.01  bmc1_last_solved_bound:                 -1
% 2.33/1.01  bmc1_unsat_core_size:                   -1
% 2.33/1.01  bmc1_unsat_core_parents_size:           -1
% 2.33/1.01  bmc1_merge_next_fun:                    0
% 2.33/1.01  bmc1_unsat_core_clauses_time:           0.
% 2.33/1.01  
% 2.33/1.01  ------ Instantiation
% 2.33/1.01  
% 2.33/1.01  inst_num_of_clauses:                    398
% 2.33/1.01  inst_num_in_passive:                    111
% 2.33/1.01  inst_num_in_active:                     214
% 2.33/1.01  inst_num_in_unprocessed:                73
% 2.33/1.01  inst_num_of_loops:                      220
% 2.33/1.01  inst_num_of_learning_restarts:          0
% 2.33/1.01  inst_num_moves_active_passive:          3
% 2.33/1.01  inst_lit_activity:                      0
% 2.33/1.01  inst_lit_activity_moves:                0
% 2.33/1.01  inst_num_tautologies:                   0
% 2.33/1.01  inst_num_prop_implied:                  0
% 2.33/1.01  inst_num_existing_simplified:           0
% 2.33/1.01  inst_num_eq_res_simplified:             0
% 2.33/1.01  inst_num_child_elim:                    0
% 2.33/1.01  inst_num_of_dismatching_blockings:      42
% 2.33/1.01  inst_num_of_non_proper_insts:           265
% 2.33/1.01  inst_num_of_duplicates:                 0
% 2.33/1.01  inst_inst_num_from_inst_to_res:         0
% 2.33/1.01  inst_dismatching_checking_time:         0.
% 2.33/1.01  
% 2.33/1.01  ------ Resolution
% 2.33/1.01  
% 2.33/1.01  res_num_of_clauses:                     0
% 2.33/1.01  res_num_in_passive:                     0
% 2.33/1.01  res_num_in_active:                      0
% 2.33/1.01  res_num_of_loops:                       123
% 2.33/1.01  res_forward_subset_subsumed:            29
% 2.33/1.01  res_backward_subset_subsumed:           2
% 2.33/1.01  res_forward_subsumed:                   0
% 2.33/1.01  res_backward_subsumed:                  0
% 2.33/1.01  res_forward_subsumption_resolution:     0
% 2.33/1.01  res_backward_subsumption_resolution:    0
% 2.33/1.01  res_clause_to_clause_subsumption:       67
% 2.33/1.01  res_orphan_elimination:                 0
% 2.33/1.01  res_tautology_del:                      35
% 2.33/1.01  res_num_eq_res_simplified:              0
% 2.33/1.01  res_num_sel_changes:                    0
% 2.33/1.01  res_moves_from_active_to_pass:          0
% 2.33/1.01  
% 2.33/1.01  ------ Superposition
% 2.33/1.01  
% 2.33/1.01  sup_time_total:                         0.
% 2.33/1.01  sup_time_generating:                    0.
% 2.33/1.01  sup_time_sim_full:                      0.
% 2.33/1.01  sup_time_sim_immed:                     0.
% 2.33/1.01  
% 2.33/1.01  sup_num_of_clauses:                     43
% 2.33/1.01  sup_num_in_active:                      40
% 2.33/1.01  sup_num_in_passive:                     3
% 2.33/1.01  sup_num_of_loops:                       43
% 2.33/1.01  sup_fw_superposition:                   15
% 2.33/1.01  sup_bw_superposition:                   16
% 2.33/1.01  sup_immediate_simplified:               9
% 2.33/1.01  sup_given_eliminated:                   1
% 2.33/1.01  comparisons_done:                       0
% 2.33/1.01  comparisons_avoided:                    0
% 2.33/1.01  
% 2.33/1.01  ------ Simplifications
% 2.33/1.01  
% 2.33/1.01  
% 2.33/1.01  sim_fw_subset_subsumed:                 0
% 2.33/1.01  sim_bw_subset_subsumed:                 0
% 2.33/1.01  sim_fw_subsumed:                        12
% 2.33/1.01  sim_bw_subsumed:                        0
% 2.33/1.01  sim_fw_subsumption_res:                 1
% 2.33/1.01  sim_bw_subsumption_res:                 0
% 2.33/1.01  sim_tautology_del:                      1
% 2.33/1.01  sim_eq_tautology_del:                   1
% 2.33/1.01  sim_eq_res_simp:                        1
% 2.33/1.01  sim_fw_demodulated:                     7
% 2.33/1.01  sim_bw_demodulated:                     4
% 2.33/1.01  sim_light_normalised:                   16
% 2.33/1.01  sim_joinable_taut:                      0
% 2.33/1.01  sim_joinable_simp:                      0
% 2.33/1.01  sim_ac_normalised:                      0
% 2.33/1.01  sim_smt_subsumption:                    0
% 2.33/1.01  
%------------------------------------------------------------------------------
