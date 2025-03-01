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
% DateTime   : Thu Dec  3 11:55:59 EST 2020

% Result     : Theorem 3.78s
% Output     : CNFRefutation 3.78s
% Verified   : 
% Statistics : Number of formulae       :  175 ( 386 expanded)
%              Number of clauses        :  104 ( 166 expanded)
%              Number of leaves         :   21 (  72 expanded)
%              Depth                    :   19
%              Number of atoms          :  375 ( 900 expanded)
%              Number of equality atoms :  183 ( 426 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f21,conjecture,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1)
        & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
       => ( k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1)
          & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0) ) ) ),
    inference(negated_conjecture,[],[f21])).

fof(f42,plain,(
    ? [X0,X1,X2] :
      ( ( k1_relset_1(X0,X1,X2) != k8_relset_1(X0,X1,X2,X1)
        | k2_relset_1(X0,X1,X2) != k7_relset_1(X0,X1,X2,X0) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f46,plain,
    ( ? [X0,X1,X2] :
        ( ( k1_relset_1(X0,X1,X2) != k8_relset_1(X0,X1,X2,X1)
          | k2_relset_1(X0,X1,X2) != k7_relset_1(X0,X1,X2,X0) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
   => ( ( k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1)
        | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0) )
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ) ),
    introduced(choice_axiom,[])).

fof(f47,plain,
    ( ( k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1)
      | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0) )
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f42,f46])).

fof(f75,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f47])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f45,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f23])).

fof(f52,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f45])).

fof(f15,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1,X2] :
      ( ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f67,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f11,axiom,(
    ! [X0] :
      ( v5_relat_1(k6_relat_1(X0),X0)
      & v4_relat_1(k6_relat_1(X0),X0)
      & v1_relat_1(k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f63,plain,(
    ! [X0] : v4_relat_1(k6_relat_1(X0),X0) ),
    inference(cnf_transformation,[],[f11])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => ! [X2] :
          ( ( v4_relat_1(X2,X0)
            & v1_relat_1(X2) )
         => v4_relat_1(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v4_relat_1(X2,X1)
          | ~ v4_relat_1(X2,X0)
          | ~ v1_relat_1(X2) )
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v4_relat_1(X2,X1)
          | ~ v4_relat_1(X2,X0)
          | ~ v1_relat_1(X2) )
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f30])).

fof(f59,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X1)
      | ~ v4_relat_1(X2,X0)
      | ~ v1_relat_1(X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f62,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f11])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => k7_relat_1(X1,X0) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f29,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f28])).

fof(f58,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f55,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f10,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f61,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f10])).

fof(f13,axiom,(
    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f13])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f54,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f57,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] :
      ( r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f56,plain,(
    ! [X0,X1] :
      ( r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f43,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f44,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f43])).

fof(f49,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f44])).

fof(f78,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f49])).

fof(f20,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
     => ( r1_tarski(k1_relat_1(X3),X1)
       => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ r1_tarski(k1_relat_1(X3),X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f41,plain,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ r1_tarski(k1_relat_1(X3),X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ),
    inference(flattening,[],[f40])).

fof(f74,plain,(
    ! [X2,X0,X3,X1] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
      | ~ r1_tarski(k1_relat_1(X3),X1)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) ) ),
    inference(cnf_transformation,[],[f41])).

fof(f68,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(X0,k1_relat_1(X1))
       => r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f33,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f32])).

fof(f65,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
      | ~ r1_tarski(X0,k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f51,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f44])).

fof(f18,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f72,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f38])).

fof(f19,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f39,plain,(
    ! [X0,X1,X2,X3] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f73,plain,(
    ! [X2,X0,X3,X1] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f39])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f70,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f17,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f71,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f76,plain,
    ( k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1)
    | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_28,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_893,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_5,plain,
    ( ~ v5_relat_1(X0,X1)
    | r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_20,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v5_relat_1(X0,X2) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_308,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X3),X4)
    | ~ v1_relat_1(X3)
    | X0 != X3
    | X2 != X4 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_20])).

cnf(c_309,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_308])).

cnf(c_19,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f67])).

cnf(c_313,plain,
    ( r1_tarski(k2_relat_1(X0),X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(global_propositional_subsumption,[status(thm)],[c_309,c_19])).

cnf(c_314,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2) ),
    inference(renaming,[status(thm)],[c_313])).

cnf(c_891,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | r1_tarski(k2_relat_1(X0),X2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_314])).

cnf(c_1213,plain,
    ( r1_tarski(k2_relat_1(sK2),sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_893,c_891])).

cnf(c_15,plain,
    ( v4_relat_1(k6_relat_1(X0),X0) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_903,plain,
    ( v4_relat_1(k6_relat_1(X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_11,plain,
    ( ~ v4_relat_1(X0,X1)
    | v4_relat_1(X0,X2)
    | ~ r1_tarski(X1,X2)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f59])).

cnf(c_904,plain,
    ( v4_relat_1(X0,X1) != iProver_top
    | v4_relat_1(X0,X2) = iProver_top
    | r1_tarski(X1,X2) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_3775,plain,
    ( v4_relat_1(k6_relat_1(X0),X1) = iProver_top
    | r1_tarski(X0,X1) != iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_903,c_904])).

cnf(c_16,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_56,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_12131,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | v4_relat_1(k6_relat_1(X0),X1) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3775,c_56])).

cnf(c_12132,plain,
    ( v4_relat_1(k6_relat_1(X0),X1) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_12131])).

cnf(c_10,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f58])).

cnf(c_905,plain,
    ( k7_relat_1(X0,X1) = X0
    | v4_relat_1(X0,X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_12138,plain,
    ( k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0)
    | r1_tarski(X0,X1) != iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_12132,c_905])).

cnf(c_12876,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_12138,c_56])).

cnf(c_12877,plain,
    ( k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0)
    | r1_tarski(X0,X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_12876])).

cnf(c_12885,plain,
    ( k7_relat_1(k6_relat_1(k2_relat_1(sK2)),sK1) = k6_relat_1(k2_relat_1(sK2)) ),
    inference(superposition,[status(thm)],[c_1213,c_12877])).

cnf(c_902,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_7,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_908,plain,
    ( k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_3621,plain,
    ( k9_relat_1(k6_relat_1(X0),k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,k6_relat_1(X0)))
    | v1_relat_1(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_902,c_908])).

cnf(c_7720,plain,
    ( k9_relat_1(k6_relat_1(X0),k2_relat_1(k6_relat_1(X1))) = k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X0))) ),
    inference(superposition,[status(thm)],[c_902,c_3621])).

cnf(c_12,plain,
    ( k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f61])).

cnf(c_18,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k6_relat_1(k3_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_7725,plain,
    ( k9_relat_1(k6_relat_1(X0),X1) = k3_xboole_0(X0,X1) ),
    inference(demodulation,[status(thm)],[c_7720,c_12,c_18])).

cnf(c_6,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_909,plain,
    ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1342,plain,
    ( k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = k9_relat_1(k6_relat_1(X0),X1) ),
    inference(superposition,[status(thm)],[c_902,c_909])).

cnf(c_7809,plain,
    ( k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = k3_xboole_0(X0,X1) ),
    inference(demodulation,[status(thm)],[c_7725,c_1342])).

cnf(c_13417,plain,
    ( k2_relat_1(k6_relat_1(k2_relat_1(sK2))) = k3_xboole_0(k2_relat_1(sK2),sK1) ),
    inference(superposition,[status(thm)],[c_12885,c_7809])).

cnf(c_13418,plain,
    ( k3_xboole_0(k2_relat_1(sK2),sK1) = k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_13417,c_12])).

cnf(c_900,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v1_relat_1(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_1279,plain,
    ( v1_relat_1(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_893,c_900])).

cnf(c_9,plain,
    ( ~ v1_relat_1(X0)
    | k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_906,plain,
    ( k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1759,plain,
    ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0)) = k10_relat_1(sK2,X0) ),
    inference(superposition,[status(thm)],[c_1279,c_906])).

cnf(c_13572,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) = k10_relat_1(sK2,sK1) ),
    inference(superposition,[status(thm)],[c_13418,c_1759])).

cnf(c_8,plain,
    ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f56])).

cnf(c_907,plain,
    ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0)) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_3,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_910,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_26,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ r1_tarski(k1_relat_1(X0),X3) ),
    inference(cnf_transformation,[],[f74])).

cnf(c_894,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) = iProver_top
    | r1_tarski(k1_relat_1(X0),X3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_26])).

cnf(c_1771,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1))) = iProver_top
    | r1_tarski(k1_relat_1(sK2),X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_893,c_894])).

cnf(c_21,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v4_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_899,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | v4_relat_1(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_2217,plain,
    ( v4_relat_1(sK2,X0) = iProver_top
    | r1_tarski(k1_relat_1(sK2),X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1771,c_899])).

cnf(c_2514,plain,
    ( v4_relat_1(sK2,k1_relat_1(sK2)) = iProver_top ),
    inference(superposition,[status(thm)],[c_910,c_2217])).

cnf(c_3494,plain,
    ( k7_relat_1(sK2,k1_relat_1(sK2)) = sK2
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_2514,c_905])).

cnf(c_29,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_28])).

cnf(c_1056,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | v1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_19])).

cnf(c_1057,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | v1_relat_1(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1056])).

cnf(c_4394,plain,
    ( k7_relat_1(sK2,k1_relat_1(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3494,c_29,c_1057])).

cnf(c_1346,plain,
    ( k2_relat_1(k7_relat_1(sK2,X0)) = k9_relat_1(sK2,X0) ),
    inference(superposition,[status(thm)],[c_1279,c_909])).

cnf(c_4397,plain,
    ( k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_4394,c_1346])).

cnf(c_17,plain,
    ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
    | ~ r1_tarski(X0,k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f65])).

cnf(c_901,plain,
    ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) = iProver_top
    | r1_tarski(X0,k1_relat_1(X1)) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_4709,plain,
    ( r1_tarski(k1_relat_1(sK2),k10_relat_1(sK2,k2_relat_1(sK2))) = iProver_top
    | r1_tarski(k1_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_4397,c_901])).

cnf(c_1103,plain,
    ( r1_tarski(k1_relat_1(X0),k1_relat_1(X0)) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_1407,plain,
    ( r1_tarski(k1_relat_1(sK2),k1_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_1103])).

cnf(c_1410,plain,
    ( r1_tarski(k1_relat_1(sK2),k1_relat_1(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1407])).

cnf(c_8007,plain,
    ( r1_tarski(k1_relat_1(sK2),k10_relat_1(sK2,k2_relat_1(sK2))) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4709,c_29,c_1057,c_1410])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f51])).

cnf(c_911,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_8012,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2)
    | r1_tarski(k10_relat_1(sK2,k2_relat_1(sK2)),k1_relat_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_8007,c_911])).

cnf(c_10117,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2)
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_907,c_8012])).

cnf(c_10120,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_10117,c_29,c_1057])).

cnf(c_13574,plain,
    ( k10_relat_1(sK2,sK1) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_13572,c_10120])).

cnf(c_24,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_896,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_24])).

cnf(c_3607,plain,
    ( k7_relset_1(sK0,sK1,sK2,X0) = k9_relat_1(sK2,X0) ),
    inference(superposition,[status(thm)],[c_893,c_896])).

cnf(c_25,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_895,plain,
    ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_25])).

cnf(c_3146,plain,
    ( k8_relset_1(sK0,sK1,sK2,X0) = k10_relat_1(sK2,X0) ),
    inference(superposition,[status(thm)],[c_893,c_895])).

cnf(c_22,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f70])).

cnf(c_898,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_22])).

cnf(c_2018,plain,
    ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_893,c_898])).

cnf(c_23,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_897,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_23])).

cnf(c_2014,plain,
    ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_893,c_897])).

cnf(c_27,negated_conjecture,
    ( k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)
    | k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) ),
    inference(cnf_transformation,[],[f76])).

cnf(c_2077,plain,
    ( k8_relset_1(sK0,sK1,sK2,sK1) != k1_relset_1(sK0,sK1,sK2)
    | k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_2014,c_27])).

cnf(c_2210,plain,
    ( k8_relset_1(sK0,sK1,sK2,sK1) != k1_relat_1(sK2)
    | k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_2018,c_2077])).

cnf(c_3157,plain,
    ( k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2)
    | k10_relat_1(sK2,sK1) != k1_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_3146,c_2210])).

cnf(c_3863,plain,
    ( k10_relat_1(sK2,sK1) != k1_relat_1(sK2)
    | k9_relat_1(sK2,sK0) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_3607,c_3157])).

cnf(c_1567,plain,
    ( v4_relat_1(sK2,sK0) = iProver_top ),
    inference(superposition,[status(thm)],[c_893,c_899])).

cnf(c_3013,plain,
    ( k7_relat_1(sK2,sK0) = sK2
    | v1_relat_1(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_1567,c_905])).

cnf(c_1063,plain,
    ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | v4_relat_1(sK2,sK0) ),
    inference(instantiation,[status(thm)],[c_21])).

cnf(c_1170,plain,
    ( ~ v4_relat_1(sK2,X0)
    | ~ v1_relat_1(sK2)
    | k7_relat_1(sK2,X0) = sK2 ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1187,plain,
    ( ~ v4_relat_1(sK2,sK0)
    | ~ v1_relat_1(sK2)
    | k7_relat_1(sK2,sK0) = sK2 ),
    inference(instantiation,[status(thm)],[c_1170])).

cnf(c_3310,plain,
    ( k7_relat_1(sK2,sK0) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_3013,c_28,c_1056,c_1063,c_1187])).

cnf(c_3313,plain,
    ( k9_relat_1(sK2,sK0) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_3310,c_1346])).

cnf(c_3864,plain,
    ( k10_relat_1(sK2,sK1) != k1_relat_1(sK2)
    | k2_relat_1(sK2) != k2_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_3863,c_3313])).

cnf(c_3865,plain,
    ( k10_relat_1(sK2,sK1) != k1_relat_1(sK2) ),
    inference(equality_resolution_simp,[status(thm)],[c_3864])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_13574,c_3865])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n011.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 17:45:12 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.78/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.78/0.98  
% 3.78/0.98  ------  iProver source info
% 3.78/0.98  
% 3.78/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.78/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.78/0.98  git: non_committed_changes: false
% 3.78/0.98  git: last_make_outside_of_git: false
% 3.78/0.98  
% 3.78/0.98  ------ 
% 3.78/0.98  
% 3.78/0.98  ------ Input Options
% 3.78/0.98  
% 3.78/0.98  --out_options                           all
% 3.78/0.98  --tptp_safe_out                         true
% 3.78/0.98  --problem_path                          ""
% 3.78/0.98  --include_path                          ""
% 3.78/0.98  --clausifier                            res/vclausify_rel
% 3.78/0.98  --clausifier_options                    --mode clausify
% 3.78/0.98  --stdin                                 false
% 3.78/0.98  --stats_out                             all
% 3.78/0.98  
% 3.78/0.98  ------ General Options
% 3.78/0.98  
% 3.78/0.98  --fof                                   false
% 3.78/0.98  --time_out_real                         305.
% 3.78/0.98  --time_out_virtual                      -1.
% 3.78/0.98  --symbol_type_check                     false
% 3.78/0.98  --clausify_out                          false
% 3.78/0.98  --sig_cnt_out                           false
% 3.78/0.98  --trig_cnt_out                          false
% 3.78/0.98  --trig_cnt_out_tolerance                1.
% 3.78/0.98  --trig_cnt_out_sk_spl                   false
% 3.78/0.98  --abstr_cl_out                          false
% 3.78/0.98  
% 3.78/0.98  ------ Global Options
% 3.78/0.98  
% 3.78/0.98  --schedule                              default
% 3.78/0.98  --add_important_lit                     false
% 3.78/0.98  --prop_solver_per_cl                    1000
% 3.78/0.98  --min_unsat_core                        false
% 3.78/0.98  --soft_assumptions                      false
% 3.78/0.98  --soft_lemma_size                       3
% 3.78/0.98  --prop_impl_unit_size                   0
% 3.78/0.98  --prop_impl_unit                        []
% 3.78/0.98  --share_sel_clauses                     true
% 3.78/0.98  --reset_solvers                         false
% 3.78/0.98  --bc_imp_inh                            [conj_cone]
% 3.78/0.98  --conj_cone_tolerance                   3.
% 3.78/0.98  --extra_neg_conj                        none
% 3.78/0.98  --large_theory_mode                     true
% 3.78/0.98  --prolific_symb_bound                   200
% 3.78/0.98  --lt_threshold                          2000
% 3.78/0.98  --clause_weak_htbl                      true
% 3.78/0.98  --gc_record_bc_elim                     false
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing Options
% 3.78/0.98  
% 3.78/0.98  --preprocessing_flag                    true
% 3.78/0.98  --time_out_prep_mult                    0.1
% 3.78/0.98  --splitting_mode                        input
% 3.78/0.98  --splitting_grd                         true
% 3.78/0.98  --splitting_cvd                         false
% 3.78/0.98  --splitting_cvd_svl                     false
% 3.78/0.98  --splitting_nvd                         32
% 3.78/0.98  --sub_typing                            true
% 3.78/0.98  --prep_gs_sim                           true
% 3.78/0.98  --prep_unflatten                        true
% 3.78/0.98  --prep_res_sim                          true
% 3.78/0.98  --prep_upred                            true
% 3.78/0.98  --prep_sem_filter                       exhaustive
% 3.78/0.98  --prep_sem_filter_out                   false
% 3.78/0.98  --pred_elim                             true
% 3.78/0.98  --res_sim_input                         true
% 3.78/0.98  --eq_ax_congr_red                       true
% 3.78/0.98  --pure_diseq_elim                       true
% 3.78/0.98  --brand_transform                       false
% 3.78/0.98  --non_eq_to_eq                          false
% 3.78/0.98  --prep_def_merge                        true
% 3.78/0.98  --prep_def_merge_prop_impl              false
% 3.78/0.98  --prep_def_merge_mbd                    true
% 3.78/0.98  --prep_def_merge_tr_red                 false
% 3.78/0.98  --prep_def_merge_tr_cl                  false
% 3.78/0.98  --smt_preprocessing                     true
% 3.78/0.98  --smt_ac_axioms                         fast
% 3.78/0.98  --preprocessed_out                      false
% 3.78/0.98  --preprocessed_stats                    false
% 3.78/0.98  
% 3.78/0.98  ------ Abstraction refinement Options
% 3.78/0.98  
% 3.78/0.98  --abstr_ref                             []
% 3.78/0.98  --abstr_ref_prep                        false
% 3.78/0.98  --abstr_ref_until_sat                   false
% 3.78/0.98  --abstr_ref_sig_restrict                funpre
% 3.78/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.78/0.98  --abstr_ref_under                       []
% 3.78/0.98  
% 3.78/0.98  ------ SAT Options
% 3.78/0.98  
% 3.78/0.98  --sat_mode                              false
% 3.78/0.98  --sat_fm_restart_options                ""
% 3.78/0.98  --sat_gr_def                            false
% 3.78/0.98  --sat_epr_types                         true
% 3.78/0.98  --sat_non_cyclic_types                  false
% 3.78/0.98  --sat_finite_models                     false
% 3.78/0.98  --sat_fm_lemmas                         false
% 3.78/0.98  --sat_fm_prep                           false
% 3.78/0.98  --sat_fm_uc_incr                        true
% 3.78/0.98  --sat_out_model                         small
% 3.78/0.98  --sat_out_clauses                       false
% 3.78/0.98  
% 3.78/0.98  ------ QBF Options
% 3.78/0.98  
% 3.78/0.98  --qbf_mode                              false
% 3.78/0.98  --qbf_elim_univ                         false
% 3.78/0.98  --qbf_dom_inst                          none
% 3.78/0.98  --qbf_dom_pre_inst                      false
% 3.78/0.98  --qbf_sk_in                             false
% 3.78/0.98  --qbf_pred_elim                         true
% 3.78/0.98  --qbf_split                             512
% 3.78/0.98  
% 3.78/0.98  ------ BMC1 Options
% 3.78/0.98  
% 3.78/0.98  --bmc1_incremental                      false
% 3.78/0.98  --bmc1_axioms                           reachable_all
% 3.78/0.98  --bmc1_min_bound                        0
% 3.78/0.98  --bmc1_max_bound                        -1
% 3.78/0.98  --bmc1_max_bound_default                -1
% 3.78/0.98  --bmc1_symbol_reachability              true
% 3.78/0.98  --bmc1_property_lemmas                  false
% 3.78/0.98  --bmc1_k_induction                      false
% 3.78/0.98  --bmc1_non_equiv_states                 false
% 3.78/0.98  --bmc1_deadlock                         false
% 3.78/0.98  --bmc1_ucm                              false
% 3.78/0.98  --bmc1_add_unsat_core                   none
% 3.78/0.98  --bmc1_unsat_core_children              false
% 3.78/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.78/0.98  --bmc1_out_stat                         full
% 3.78/0.98  --bmc1_ground_init                      false
% 3.78/0.98  --bmc1_pre_inst_next_state              false
% 3.78/0.98  --bmc1_pre_inst_state                   false
% 3.78/0.98  --bmc1_pre_inst_reach_state             false
% 3.78/0.98  --bmc1_out_unsat_core                   false
% 3.78/0.98  --bmc1_aig_witness_out                  false
% 3.78/0.98  --bmc1_verbose                          false
% 3.78/0.98  --bmc1_dump_clauses_tptp                false
% 3.78/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.78/0.98  --bmc1_dump_file                        -
% 3.78/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.78/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.78/0.98  --bmc1_ucm_extend_mode                  1
% 3.78/0.98  --bmc1_ucm_init_mode                    2
% 3.78/0.98  --bmc1_ucm_cone_mode                    none
% 3.78/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.78/0.98  --bmc1_ucm_relax_model                  4
% 3.78/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.78/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.78/0.98  --bmc1_ucm_layered_model                none
% 3.78/0.98  --bmc1_ucm_max_lemma_size               10
% 3.78/0.98  
% 3.78/0.98  ------ AIG Options
% 3.78/0.98  
% 3.78/0.98  --aig_mode                              false
% 3.78/0.98  
% 3.78/0.98  ------ Instantiation Options
% 3.78/0.98  
% 3.78/0.98  --instantiation_flag                    true
% 3.78/0.98  --inst_sos_flag                         false
% 3.78/0.98  --inst_sos_phase                        true
% 3.78/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel_side                     num_symb
% 3.78/0.98  --inst_solver_per_active                1400
% 3.78/0.98  --inst_solver_calls_frac                1.
% 3.78/0.98  --inst_passive_queue_type               priority_queues
% 3.78/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.78/0.98  --inst_passive_queues_freq              [25;2]
% 3.78/0.98  --inst_dismatching                      true
% 3.78/0.98  --inst_eager_unprocessed_to_passive     true
% 3.78/0.98  --inst_prop_sim_given                   true
% 3.78/0.98  --inst_prop_sim_new                     false
% 3.78/0.98  --inst_subs_new                         false
% 3.78/0.98  --inst_eq_res_simp                      false
% 3.78/0.98  --inst_subs_given                       false
% 3.78/0.98  --inst_orphan_elimination               true
% 3.78/0.98  --inst_learning_loop_flag               true
% 3.78/0.98  --inst_learning_start                   3000
% 3.78/0.98  --inst_learning_factor                  2
% 3.78/0.98  --inst_start_prop_sim_after_learn       3
% 3.78/0.98  --inst_sel_renew                        solver
% 3.78/0.98  --inst_lit_activity_flag                true
% 3.78/0.98  --inst_restr_to_given                   false
% 3.78/0.98  --inst_activity_threshold               500
% 3.78/0.98  --inst_out_proof                        true
% 3.78/0.98  
% 3.78/0.98  ------ Resolution Options
% 3.78/0.98  
% 3.78/0.98  --resolution_flag                       true
% 3.78/0.98  --res_lit_sel                           adaptive
% 3.78/0.98  --res_lit_sel_side                      none
% 3.78/0.98  --res_ordering                          kbo
% 3.78/0.98  --res_to_prop_solver                    active
% 3.78/0.98  --res_prop_simpl_new                    false
% 3.78/0.98  --res_prop_simpl_given                  true
% 3.78/0.98  --res_passive_queue_type                priority_queues
% 3.78/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.78/0.98  --res_passive_queues_freq               [15;5]
% 3.78/0.98  --res_forward_subs                      full
% 3.78/0.98  --res_backward_subs                     full
% 3.78/0.98  --res_forward_subs_resolution           true
% 3.78/0.98  --res_backward_subs_resolution          true
% 3.78/0.98  --res_orphan_elimination                true
% 3.78/0.98  --res_time_limit                        2.
% 3.78/0.98  --res_out_proof                         true
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Options
% 3.78/0.98  
% 3.78/0.98  --superposition_flag                    true
% 3.78/0.98  --sup_passive_queue_type                priority_queues
% 3.78/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.78/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.78/0.98  --demod_completeness_check              fast
% 3.78/0.98  --demod_use_ground                      true
% 3.78/0.98  --sup_to_prop_solver                    passive
% 3.78/0.98  --sup_prop_simpl_new                    true
% 3.78/0.98  --sup_prop_simpl_given                  true
% 3.78/0.98  --sup_fun_splitting                     false
% 3.78/0.98  --sup_smt_interval                      50000
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Simplification Setup
% 3.78/0.98  
% 3.78/0.98  --sup_indices_passive                   []
% 3.78/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.78/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_full_bw                           [BwDemod]
% 3.78/0.98  --sup_immed_triv                        [TrivRules]
% 3.78/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.78/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_immed_bw_main                     []
% 3.78/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.78/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  
% 3.78/0.98  ------ Combination Options
% 3.78/0.98  
% 3.78/0.98  --comb_res_mult                         3
% 3.78/0.98  --comb_sup_mult                         2
% 3.78/0.98  --comb_inst_mult                        10
% 3.78/0.98  
% 3.78/0.98  ------ Debug Options
% 3.78/0.98  
% 3.78/0.98  --dbg_backtrace                         false
% 3.78/0.98  --dbg_dump_prop_clauses                 false
% 3.78/0.98  --dbg_dump_prop_clauses_file            -
% 3.78/0.98  --dbg_out_stat                          false
% 3.78/0.98  ------ Parsing...
% 3.78/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.78/0.98  ------ Proving...
% 3.78/0.98  ------ Problem Properties 
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  clauses                                 26
% 3.78/0.98  conjectures                             2
% 3.78/0.98  EPR                                     3
% 3.78/0.98  Horn                                    26
% 3.78/0.98  unary                                   9
% 3.78/0.98  binary                                  11
% 3.78/0.98  lits                                    50
% 3.78/0.98  lits eq                                 15
% 3.78/0.98  fd_pure                                 0
% 3.78/0.98  fd_pseudo                               0
% 3.78/0.98  fd_cond                                 0
% 3.78/0.98  fd_pseudo_cond                          1
% 3.78/0.98  AC symbols                              0
% 3.78/0.98  
% 3.78/0.98  ------ Schedule dynamic 5 is on 
% 3.78/0.98  
% 3.78/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  ------ 
% 3.78/0.98  Current options:
% 3.78/0.98  ------ 
% 3.78/0.98  
% 3.78/0.98  ------ Input Options
% 3.78/0.98  
% 3.78/0.98  --out_options                           all
% 3.78/0.98  --tptp_safe_out                         true
% 3.78/0.98  --problem_path                          ""
% 3.78/0.98  --include_path                          ""
% 3.78/0.98  --clausifier                            res/vclausify_rel
% 3.78/0.98  --clausifier_options                    --mode clausify
% 3.78/0.98  --stdin                                 false
% 3.78/0.98  --stats_out                             all
% 3.78/0.98  
% 3.78/0.98  ------ General Options
% 3.78/0.98  
% 3.78/0.98  --fof                                   false
% 3.78/0.98  --time_out_real                         305.
% 3.78/0.98  --time_out_virtual                      -1.
% 3.78/0.98  --symbol_type_check                     false
% 3.78/0.98  --clausify_out                          false
% 3.78/0.98  --sig_cnt_out                           false
% 3.78/0.98  --trig_cnt_out                          false
% 3.78/0.98  --trig_cnt_out_tolerance                1.
% 3.78/0.98  --trig_cnt_out_sk_spl                   false
% 3.78/0.98  --abstr_cl_out                          false
% 3.78/0.98  
% 3.78/0.98  ------ Global Options
% 3.78/0.98  
% 3.78/0.98  --schedule                              default
% 3.78/0.98  --add_important_lit                     false
% 3.78/0.98  --prop_solver_per_cl                    1000
% 3.78/0.98  --min_unsat_core                        false
% 3.78/0.98  --soft_assumptions                      false
% 3.78/0.98  --soft_lemma_size                       3
% 3.78/0.98  --prop_impl_unit_size                   0
% 3.78/0.98  --prop_impl_unit                        []
% 3.78/0.98  --share_sel_clauses                     true
% 3.78/0.98  --reset_solvers                         false
% 3.78/0.98  --bc_imp_inh                            [conj_cone]
% 3.78/0.98  --conj_cone_tolerance                   3.
% 3.78/0.98  --extra_neg_conj                        none
% 3.78/0.98  --large_theory_mode                     true
% 3.78/0.98  --prolific_symb_bound                   200
% 3.78/0.98  --lt_threshold                          2000
% 3.78/0.98  --clause_weak_htbl                      true
% 3.78/0.98  --gc_record_bc_elim                     false
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing Options
% 3.78/0.98  
% 3.78/0.98  --preprocessing_flag                    true
% 3.78/0.98  --time_out_prep_mult                    0.1
% 3.78/0.98  --splitting_mode                        input
% 3.78/0.98  --splitting_grd                         true
% 3.78/0.98  --splitting_cvd                         false
% 3.78/0.98  --splitting_cvd_svl                     false
% 3.78/0.98  --splitting_nvd                         32
% 3.78/0.98  --sub_typing                            true
% 3.78/0.98  --prep_gs_sim                           true
% 3.78/0.98  --prep_unflatten                        true
% 3.78/0.98  --prep_res_sim                          true
% 3.78/0.98  --prep_upred                            true
% 3.78/0.98  --prep_sem_filter                       exhaustive
% 3.78/0.98  --prep_sem_filter_out                   false
% 3.78/0.98  --pred_elim                             true
% 3.78/0.98  --res_sim_input                         true
% 3.78/0.98  --eq_ax_congr_red                       true
% 3.78/0.98  --pure_diseq_elim                       true
% 3.78/0.98  --brand_transform                       false
% 3.78/0.98  --non_eq_to_eq                          false
% 3.78/0.98  --prep_def_merge                        true
% 3.78/0.98  --prep_def_merge_prop_impl              false
% 3.78/0.98  --prep_def_merge_mbd                    true
% 3.78/0.98  --prep_def_merge_tr_red                 false
% 3.78/0.98  --prep_def_merge_tr_cl                  false
% 3.78/0.98  --smt_preprocessing                     true
% 3.78/0.98  --smt_ac_axioms                         fast
% 3.78/0.98  --preprocessed_out                      false
% 3.78/0.98  --preprocessed_stats                    false
% 3.78/0.98  
% 3.78/0.98  ------ Abstraction refinement Options
% 3.78/0.98  
% 3.78/0.98  --abstr_ref                             []
% 3.78/0.98  --abstr_ref_prep                        false
% 3.78/0.98  --abstr_ref_until_sat                   false
% 3.78/0.98  --abstr_ref_sig_restrict                funpre
% 3.78/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.78/0.98  --abstr_ref_under                       []
% 3.78/0.98  
% 3.78/0.98  ------ SAT Options
% 3.78/0.98  
% 3.78/0.98  --sat_mode                              false
% 3.78/0.98  --sat_fm_restart_options                ""
% 3.78/0.98  --sat_gr_def                            false
% 3.78/0.98  --sat_epr_types                         true
% 3.78/0.98  --sat_non_cyclic_types                  false
% 3.78/0.98  --sat_finite_models                     false
% 3.78/0.98  --sat_fm_lemmas                         false
% 3.78/0.98  --sat_fm_prep                           false
% 3.78/0.98  --sat_fm_uc_incr                        true
% 3.78/0.98  --sat_out_model                         small
% 3.78/0.98  --sat_out_clauses                       false
% 3.78/0.98  
% 3.78/0.98  ------ QBF Options
% 3.78/0.98  
% 3.78/0.98  --qbf_mode                              false
% 3.78/0.98  --qbf_elim_univ                         false
% 3.78/0.98  --qbf_dom_inst                          none
% 3.78/0.98  --qbf_dom_pre_inst                      false
% 3.78/0.98  --qbf_sk_in                             false
% 3.78/0.98  --qbf_pred_elim                         true
% 3.78/0.98  --qbf_split                             512
% 3.78/0.98  
% 3.78/0.98  ------ BMC1 Options
% 3.78/0.98  
% 3.78/0.98  --bmc1_incremental                      false
% 3.78/0.98  --bmc1_axioms                           reachable_all
% 3.78/0.98  --bmc1_min_bound                        0
% 3.78/0.98  --bmc1_max_bound                        -1
% 3.78/0.98  --bmc1_max_bound_default                -1
% 3.78/0.98  --bmc1_symbol_reachability              true
% 3.78/0.98  --bmc1_property_lemmas                  false
% 3.78/0.98  --bmc1_k_induction                      false
% 3.78/0.98  --bmc1_non_equiv_states                 false
% 3.78/0.98  --bmc1_deadlock                         false
% 3.78/0.98  --bmc1_ucm                              false
% 3.78/0.98  --bmc1_add_unsat_core                   none
% 3.78/0.98  --bmc1_unsat_core_children              false
% 3.78/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.78/0.98  --bmc1_out_stat                         full
% 3.78/0.98  --bmc1_ground_init                      false
% 3.78/0.98  --bmc1_pre_inst_next_state              false
% 3.78/0.98  --bmc1_pre_inst_state                   false
% 3.78/0.98  --bmc1_pre_inst_reach_state             false
% 3.78/0.98  --bmc1_out_unsat_core                   false
% 3.78/0.98  --bmc1_aig_witness_out                  false
% 3.78/0.98  --bmc1_verbose                          false
% 3.78/0.98  --bmc1_dump_clauses_tptp                false
% 3.78/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.78/0.98  --bmc1_dump_file                        -
% 3.78/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.78/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.78/0.98  --bmc1_ucm_extend_mode                  1
% 3.78/0.98  --bmc1_ucm_init_mode                    2
% 3.78/0.98  --bmc1_ucm_cone_mode                    none
% 3.78/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.78/0.98  --bmc1_ucm_relax_model                  4
% 3.78/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.78/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.78/0.98  --bmc1_ucm_layered_model                none
% 3.78/0.98  --bmc1_ucm_max_lemma_size               10
% 3.78/0.98  
% 3.78/0.98  ------ AIG Options
% 3.78/0.98  
% 3.78/0.98  --aig_mode                              false
% 3.78/0.98  
% 3.78/0.98  ------ Instantiation Options
% 3.78/0.98  
% 3.78/0.98  --instantiation_flag                    true
% 3.78/0.98  --inst_sos_flag                         false
% 3.78/0.98  --inst_sos_phase                        true
% 3.78/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.78/0.98  --inst_lit_sel_side                     none
% 3.78/0.98  --inst_solver_per_active                1400
% 3.78/0.98  --inst_solver_calls_frac                1.
% 3.78/0.98  --inst_passive_queue_type               priority_queues
% 3.78/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.78/0.98  --inst_passive_queues_freq              [25;2]
% 3.78/0.98  --inst_dismatching                      true
% 3.78/0.98  --inst_eager_unprocessed_to_passive     true
% 3.78/0.98  --inst_prop_sim_given                   true
% 3.78/0.98  --inst_prop_sim_new                     false
% 3.78/0.98  --inst_subs_new                         false
% 3.78/0.98  --inst_eq_res_simp                      false
% 3.78/0.98  --inst_subs_given                       false
% 3.78/0.98  --inst_orphan_elimination               true
% 3.78/0.98  --inst_learning_loop_flag               true
% 3.78/0.98  --inst_learning_start                   3000
% 3.78/0.98  --inst_learning_factor                  2
% 3.78/0.98  --inst_start_prop_sim_after_learn       3
% 3.78/0.98  --inst_sel_renew                        solver
% 3.78/0.98  --inst_lit_activity_flag                true
% 3.78/0.98  --inst_restr_to_given                   false
% 3.78/0.98  --inst_activity_threshold               500
% 3.78/0.98  --inst_out_proof                        true
% 3.78/0.98  
% 3.78/0.98  ------ Resolution Options
% 3.78/0.98  
% 3.78/0.98  --resolution_flag                       false
% 3.78/0.98  --res_lit_sel                           adaptive
% 3.78/0.98  --res_lit_sel_side                      none
% 3.78/0.98  --res_ordering                          kbo
% 3.78/0.98  --res_to_prop_solver                    active
% 3.78/0.98  --res_prop_simpl_new                    false
% 3.78/0.98  --res_prop_simpl_given                  true
% 3.78/0.98  --res_passive_queue_type                priority_queues
% 3.78/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.78/0.98  --res_passive_queues_freq               [15;5]
% 3.78/0.98  --res_forward_subs                      full
% 3.78/0.98  --res_backward_subs                     full
% 3.78/0.98  --res_forward_subs_resolution           true
% 3.78/0.98  --res_backward_subs_resolution          true
% 3.78/0.98  --res_orphan_elimination                true
% 3.78/0.98  --res_time_limit                        2.
% 3.78/0.98  --res_out_proof                         true
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Options
% 3.78/0.98  
% 3.78/0.98  --superposition_flag                    true
% 3.78/0.98  --sup_passive_queue_type                priority_queues
% 3.78/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.78/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.78/0.98  --demod_completeness_check              fast
% 3.78/0.98  --demod_use_ground                      true
% 3.78/0.98  --sup_to_prop_solver                    passive
% 3.78/0.98  --sup_prop_simpl_new                    true
% 3.78/0.98  --sup_prop_simpl_given                  true
% 3.78/0.98  --sup_fun_splitting                     false
% 3.78/0.98  --sup_smt_interval                      50000
% 3.78/0.98  
% 3.78/0.98  ------ Superposition Simplification Setup
% 3.78/0.98  
% 3.78/0.98  --sup_indices_passive                   []
% 3.78/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.78/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.78/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_full_bw                           [BwDemod]
% 3.78/0.98  --sup_immed_triv                        [TrivRules]
% 3.78/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.78/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_immed_bw_main                     []
% 3.78/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.78/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.78/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.78/0.98  
% 3.78/0.98  ------ Combination Options
% 3.78/0.98  
% 3.78/0.98  --comb_res_mult                         3
% 3.78/0.98  --comb_sup_mult                         2
% 3.78/0.98  --comb_inst_mult                        10
% 3.78/0.98  
% 3.78/0.98  ------ Debug Options
% 3.78/0.98  
% 3.78/0.98  --dbg_backtrace                         false
% 3.78/0.98  --dbg_dump_prop_clauses                 false
% 3.78/0.98  --dbg_dump_prop_clauses_file            -
% 3.78/0.98  --dbg_out_stat                          false
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  ------ Proving...
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  % SZS status Theorem for theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  fof(f21,conjecture,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1) & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f22,negated_conjecture,(
% 3.78/0.98    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k1_relset_1(X0,X1,X2) = k8_relset_1(X0,X1,X2,X1) & k2_relset_1(X0,X1,X2) = k7_relset_1(X0,X1,X2,X0)))),
% 3.78/0.98    inference(negated_conjecture,[],[f21])).
% 3.78/0.98  
% 3.78/0.98  fof(f42,plain,(
% 3.78/0.98    ? [X0,X1,X2] : ((k1_relset_1(X0,X1,X2) != k8_relset_1(X0,X1,X2,X1) | k2_relset_1(X0,X1,X2) != k7_relset_1(X0,X1,X2,X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f22])).
% 3.78/0.98  
% 3.78/0.98  fof(f46,plain,(
% 3.78/0.98    ? [X0,X1,X2] : ((k1_relset_1(X0,X1,X2) != k8_relset_1(X0,X1,X2,X1) | k2_relset_1(X0,X1,X2) != k7_relset_1(X0,X1,X2,X0)) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => ((k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))))),
% 3.78/0.98    introduced(choice_axiom,[])).
% 3.78/0.98  
% 3.78/0.98  fof(f47,plain,(
% 3.78/0.98    (k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.78/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f42,f46])).
% 3.78/0.98  
% 3.78/0.98  fof(f75,plain,(
% 3.78/0.98    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  fof(f3,axiom,(
% 3.78/0.98    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f23,plain,(
% 3.78/0.98    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(ennf_transformation,[],[f3])).
% 3.78/0.98  
% 3.78/0.98  fof(f45,plain,(
% 3.78/0.98    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(nnf_transformation,[],[f23])).
% 3.78/0.98  
% 3.78/0.98  fof(f52,plain,(
% 3.78/0.98    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f45])).
% 3.78/0.98  
% 3.78/0.98  fof(f15,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f35,plain,(
% 3.78/0.98    ! [X0,X1,X2] : ((v5_relat_1(X2,X1) & v4_relat_1(X2,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f15])).
% 3.78/0.98  
% 3.78/0.98  fof(f69,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f35])).
% 3.78/0.98  
% 3.78/0.98  fof(f14,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f34,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f14])).
% 3.78/0.98  
% 3.78/0.98  fof(f67,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f34])).
% 3.78/0.98  
% 3.78/0.98  fof(f11,axiom,(
% 3.78/0.98    ! [X0] : (v5_relat_1(k6_relat_1(X0),X0) & v4_relat_1(k6_relat_1(X0),X0) & v1_relat_1(k6_relat_1(X0)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f63,plain,(
% 3.78/0.98    ( ! [X0] : (v4_relat_1(k6_relat_1(X0),X0)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f11])).
% 3.78/0.98  
% 3.78/0.98  fof(f9,axiom,(
% 3.78/0.98    ! [X0,X1] : (r1_tarski(X0,X1) => ! [X2] : ((v4_relat_1(X2,X0) & v1_relat_1(X2)) => v4_relat_1(X2,X1)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f30,plain,(
% 3.78/0.98    ! [X0,X1] : (! [X2] : (v4_relat_1(X2,X1) | (~v4_relat_1(X2,X0) | ~v1_relat_1(X2))) | ~r1_tarski(X0,X1))),
% 3.78/0.98    inference(ennf_transformation,[],[f9])).
% 3.78/0.98  
% 3.78/0.98  fof(f31,plain,(
% 3.78/0.98    ! [X0,X1] : (! [X2] : (v4_relat_1(X2,X1) | ~v4_relat_1(X2,X0) | ~v1_relat_1(X2)) | ~r1_tarski(X0,X1))),
% 3.78/0.98    inference(flattening,[],[f30])).
% 3.78/0.98  
% 3.78/0.98  fof(f59,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (v4_relat_1(X2,X1) | ~v4_relat_1(X2,X0) | ~v1_relat_1(X2) | ~r1_tarski(X0,X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f31])).
% 3.78/0.98  
% 3.78/0.98  fof(f62,plain,(
% 3.78/0.98    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f11])).
% 3.78/0.98  
% 3.78/0.98  fof(f8,axiom,(
% 3.78/0.98    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => k7_relat_1(X1,X0) = X1)),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f28,plain,(
% 3.78/0.98    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 3.78/0.98    inference(ennf_transformation,[],[f8])).
% 3.78/0.98  
% 3.78/0.98  fof(f29,plain,(
% 3.78/0.98    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(flattening,[],[f28])).
% 3.78/0.98  
% 3.78/0.98  fof(f58,plain,(
% 3.78/0.98    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f29])).
% 3.78/0.98  
% 3.78/0.98  fof(f5,axiom,(
% 3.78/0.98    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f25,plain,(
% 3.78/0.98    ! [X0] : (! [X1] : (k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.78/0.98    inference(ennf_transformation,[],[f5])).
% 3.78/0.98  
% 3.78/0.98  fof(f55,plain,(
% 3.78/0.98    ( ! [X0,X1] : (k2_relat_1(k5_relat_1(X0,X1)) = k9_relat_1(X1,k2_relat_1(X0)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f25])).
% 3.78/0.98  
% 3.78/0.98  fof(f10,axiom,(
% 3.78/0.98    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f61,plain,(
% 3.78/0.98    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 3.78/0.98    inference(cnf_transformation,[],[f10])).
% 3.78/0.98  
% 3.78/0.98  fof(f13,axiom,(
% 3.78/0.98    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f66,plain,(
% 3.78/0.98    ( ! [X0,X1] : (k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f13])).
% 3.78/0.98  
% 3.78/0.98  fof(f4,axiom,(
% 3.78/0.98    ! [X0,X1] : (v1_relat_1(X1) => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f24,plain,(
% 3.78/0.98    ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(ennf_transformation,[],[f4])).
% 3.78/0.98  
% 3.78/0.98  fof(f54,plain,(
% 3.78/0.98    ( ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f24])).
% 3.78/0.98  
% 3.78/0.98  fof(f7,axiom,(
% 3.78/0.98    ! [X0,X1] : (v1_relat_1(X1) => k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f27,plain,(
% 3.78/0.98    ! [X0,X1] : (k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(ennf_transformation,[],[f7])).
% 3.78/0.98  
% 3.78/0.98  fof(f57,plain,(
% 3.78/0.98    ( ! [X0,X1] : (k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f27])).
% 3.78/0.98  
% 3.78/0.98  fof(f6,axiom,(
% 3.78/0.98    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f26,plain,(
% 3.78/0.98    ! [X0,X1] : (r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(ennf_transformation,[],[f6])).
% 3.78/0.98  
% 3.78/0.98  fof(f56,plain,(
% 3.78/0.98    ( ! [X0,X1] : (r1_tarski(k10_relat_1(X1,X0),k1_relat_1(X1)) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f26])).
% 3.78/0.98  
% 3.78/0.98  fof(f2,axiom,(
% 3.78/0.98    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f43,plain,(
% 3.78/0.98    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.78/0.98    inference(nnf_transformation,[],[f2])).
% 3.78/0.98  
% 3.78/0.98  fof(f44,plain,(
% 3.78/0.98    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 3.78/0.98    inference(flattening,[],[f43])).
% 3.78/0.98  
% 3.78/0.98  fof(f49,plain,(
% 3.78/0.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 3.78/0.98    inference(cnf_transformation,[],[f44])).
% 3.78/0.98  
% 3.78/0.98  fof(f78,plain,(
% 3.78/0.98    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 3.78/0.98    inference(equality_resolution,[],[f49])).
% 3.78/0.98  
% 3.78/0.98  fof(f20,axiom,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) => (r1_tarski(k1_relat_1(X3),X1) => m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f40,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~r1_tarski(k1_relat_1(X3),X1)) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))))),
% 3.78/0.98    inference(ennf_transformation,[],[f20])).
% 3.78/0.98  
% 3.78/0.98  fof(f41,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~r1_tarski(k1_relat_1(X3),X1) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))))),
% 3.78/0.98    inference(flattening,[],[f40])).
% 3.78/0.98  
% 3.78/0.98  fof(f74,plain,(
% 3.78/0.98    ( ! [X2,X0,X3,X1] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | ~r1_tarski(k1_relat_1(X3),X1) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f41])).
% 3.78/0.98  
% 3.78/0.98  fof(f68,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f35])).
% 3.78/0.98  
% 3.78/0.98  fof(f12,axiom,(
% 3.78/0.98    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(X0,k1_relat_1(X1)) => r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f32,plain,(
% 3.78/0.98    ! [X0,X1] : ((r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) | ~r1_tarski(X0,k1_relat_1(X1))) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(ennf_transformation,[],[f12])).
% 3.78/0.98  
% 3.78/0.98  fof(f33,plain,(
% 3.78/0.98    ! [X0,X1] : (r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_relat_1(X1))),
% 3.78/0.98    inference(flattening,[],[f32])).
% 3.78/0.98  
% 3.78/0.98  fof(f65,plain,(
% 3.78/0.98    ( ! [X0,X1] : (r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) | ~r1_tarski(X0,k1_relat_1(X1)) | ~v1_relat_1(X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f33])).
% 3.78/0.98  
% 3.78/0.98  fof(f51,plain,(
% 3.78/0.98    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 3.78/0.98    inference(cnf_transformation,[],[f44])).
% 3.78/0.98  
% 3.78/0.98  fof(f18,axiom,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f38,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f18])).
% 3.78/0.98  
% 3.78/0.98  fof(f72,plain,(
% 3.78/0.98    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f38])).
% 3.78/0.98  
% 3.78/0.98  fof(f19,axiom,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f39,plain,(
% 3.78/0.98    ! [X0,X1,X2,X3] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f19])).
% 3.78/0.98  
% 3.78/0.98  fof(f73,plain,(
% 3.78/0.98    ( ! [X2,X0,X3,X1] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f39])).
% 3.78/0.98  
% 3.78/0.98  fof(f16,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f36,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f16])).
% 3.78/0.98  
% 3.78/0.98  fof(f70,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f36])).
% 3.78/0.98  
% 3.78/0.98  fof(f17,axiom,(
% 3.78/0.98    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 3.78/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.78/0.98  
% 3.78/0.98  fof(f37,plain,(
% 3.78/0.98    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 3.78/0.98    inference(ennf_transformation,[],[f17])).
% 3.78/0.98  
% 3.78/0.98  fof(f71,plain,(
% 3.78/0.98    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 3.78/0.98    inference(cnf_transformation,[],[f37])).
% 3.78/0.98  
% 3.78/0.98  fof(f76,plain,(
% 3.78/0.98    k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) | k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)),
% 3.78/0.98    inference(cnf_transformation,[],[f47])).
% 3.78/0.98  
% 3.78/0.98  cnf(c_28,negated_conjecture,
% 3.78/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 3.78/0.98      inference(cnf_transformation,[],[f75]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_893,plain,
% 3.78/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_5,plain,
% 3.78/0.98      ( ~ v5_relat_1(X0,X1)
% 3.78/0.98      | r1_tarski(k2_relat_1(X0),X1)
% 3.78/0.98      | ~ v1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f52]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_20,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | v5_relat_1(X0,X2) ),
% 3.78/0.98      inference(cnf_transformation,[],[f69]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_308,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | r1_tarski(k2_relat_1(X3),X4)
% 3.78/0.98      | ~ v1_relat_1(X3)
% 3.78/0.98      | X0 != X3
% 3.78/0.98      | X2 != X4 ),
% 3.78/0.98      inference(resolution_lifted,[status(thm)],[c_5,c_20]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_309,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | r1_tarski(k2_relat_1(X0),X2)
% 3.78/0.98      | ~ v1_relat_1(X0) ),
% 3.78/0.98      inference(unflattening,[status(thm)],[c_308]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_19,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | v1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f67]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_313,plain,
% 3.78/0.98      ( r1_tarski(k2_relat_1(X0),X2)
% 3.78/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_309,c_19]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_314,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | r1_tarski(k2_relat_1(X0),X2) ),
% 3.78/0.98      inference(renaming,[status(thm)],[c_313]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_891,plain,
% 3.78/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.78/0.98      | r1_tarski(k2_relat_1(X0),X2) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_314]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1213,plain,
% 3.78/0.98      ( r1_tarski(k2_relat_1(sK2),sK1) = iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_893,c_891]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_15,plain,
% 3.78/0.98      ( v4_relat_1(k6_relat_1(X0),X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f63]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_903,plain,
% 3.78/0.98      ( v4_relat_1(k6_relat_1(X0),X0) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_11,plain,
% 3.78/0.98      ( ~ v4_relat_1(X0,X1)
% 3.78/0.98      | v4_relat_1(X0,X2)
% 3.78/0.98      | ~ r1_tarski(X1,X2)
% 3.78/0.98      | ~ v1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f59]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_904,plain,
% 3.78/0.98      ( v4_relat_1(X0,X1) != iProver_top
% 3.78/0.98      | v4_relat_1(X0,X2) = iProver_top
% 3.78/0.98      | r1_tarski(X1,X2) != iProver_top
% 3.78/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3775,plain,
% 3.78/0.98      ( v4_relat_1(k6_relat_1(X0),X1) = iProver_top
% 3.78/0.98      | r1_tarski(X0,X1) != iProver_top
% 3.78/0.98      | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_903,c_904]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_16,plain,
% 3.78/0.98      ( v1_relat_1(k6_relat_1(X0)) ),
% 3.78/0.98      inference(cnf_transformation,[],[f62]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_56,plain,
% 3.78/0.98      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_12131,plain,
% 3.78/0.98      ( r1_tarski(X0,X1) != iProver_top
% 3.78/0.98      | v4_relat_1(k6_relat_1(X0),X1) = iProver_top ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_3775,c_56]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_12132,plain,
% 3.78/0.98      ( v4_relat_1(k6_relat_1(X0),X1) = iProver_top
% 3.78/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 3.78/0.98      inference(renaming,[status(thm)],[c_12131]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_10,plain,
% 3.78/0.98      ( ~ v4_relat_1(X0,X1) | ~ v1_relat_1(X0) | k7_relat_1(X0,X1) = X0 ),
% 3.78/0.98      inference(cnf_transformation,[],[f58]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_905,plain,
% 3.78/0.98      ( k7_relat_1(X0,X1) = X0
% 3.78/0.98      | v4_relat_1(X0,X1) != iProver_top
% 3.78/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_12138,plain,
% 3.78/0.98      ( k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0)
% 3.78/0.98      | r1_tarski(X0,X1) != iProver_top
% 3.78/0.98      | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_12132,c_905]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_12876,plain,
% 3.78/0.98      ( r1_tarski(X0,X1) != iProver_top
% 3.78/0.98      | k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0) ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_12138,c_56]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_12877,plain,
% 3.78/0.98      ( k7_relat_1(k6_relat_1(X0),X1) = k6_relat_1(X0)
% 3.78/0.98      | r1_tarski(X0,X1) != iProver_top ),
% 3.78/0.98      inference(renaming,[status(thm)],[c_12876]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_12885,plain,
% 3.78/0.98      ( k7_relat_1(k6_relat_1(k2_relat_1(sK2)),sK1) = k6_relat_1(k2_relat_1(sK2)) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_1213,c_12877]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_902,plain,
% 3.78/0.98      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_7,plain,
% 3.78/0.98      ( ~ v1_relat_1(X0)
% 3.78/0.98      | ~ v1_relat_1(X1)
% 3.78/0.98      | k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0)) ),
% 3.78/0.98      inference(cnf_transformation,[],[f55]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_908,plain,
% 3.78/0.98      ( k9_relat_1(X0,k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,X0))
% 3.78/0.98      | v1_relat_1(X0) != iProver_top
% 3.78/0.98      | v1_relat_1(X1) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3621,plain,
% 3.78/0.98      ( k9_relat_1(k6_relat_1(X0),k2_relat_1(X1)) = k2_relat_1(k5_relat_1(X1,k6_relat_1(X0)))
% 3.78/0.98      | v1_relat_1(X1) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_902,c_908]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_7720,plain,
% 3.78/0.98      ( k9_relat_1(k6_relat_1(X0),k2_relat_1(k6_relat_1(X1))) = k2_relat_1(k5_relat_1(k6_relat_1(X1),k6_relat_1(X0))) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_902,c_3621]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_12,plain,
% 3.78/0.98      ( k2_relat_1(k6_relat_1(X0)) = X0 ),
% 3.78/0.98      inference(cnf_transformation,[],[f61]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_18,plain,
% 3.78/0.98      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k6_relat_1(k3_xboole_0(X1,X0)) ),
% 3.78/0.98      inference(cnf_transformation,[],[f66]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_7725,plain,
% 3.78/0.98      ( k9_relat_1(k6_relat_1(X0),X1) = k3_xboole_0(X0,X1) ),
% 3.78/0.98      inference(demodulation,[status(thm)],[c_7720,c_12,c_18]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_6,plain,
% 3.78/0.98      ( ~ v1_relat_1(X0)
% 3.78/0.98      | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 3.78/0.98      inference(cnf_transformation,[],[f54]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_909,plain,
% 3.78/0.98      ( k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1)
% 3.78/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1342,plain,
% 3.78/0.98      ( k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = k9_relat_1(k6_relat_1(X0),X1) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_902,c_909]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_7809,plain,
% 3.78/0.98      ( k2_relat_1(k7_relat_1(k6_relat_1(X0),X1)) = k3_xboole_0(X0,X1) ),
% 3.78/0.98      inference(demodulation,[status(thm)],[c_7725,c_1342]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_13417,plain,
% 3.78/0.98      ( k2_relat_1(k6_relat_1(k2_relat_1(sK2))) = k3_xboole_0(k2_relat_1(sK2),sK1) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_12885,c_7809]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_13418,plain,
% 3.78/0.98      ( k3_xboole_0(k2_relat_1(sK2),sK1) = k2_relat_1(sK2) ),
% 3.78/0.98      inference(demodulation,[status(thm)],[c_13417,c_12]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_900,plain,
% 3.78/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.78/0.98      | v1_relat_1(X0) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1279,plain,
% 3.78/0.98      ( v1_relat_1(sK2) = iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_893,c_900]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_9,plain,
% 3.78/0.98      ( ~ v1_relat_1(X0)
% 3.78/0.98      | k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1) ),
% 3.78/0.98      inference(cnf_transformation,[],[f57]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_906,plain,
% 3.78/0.98      ( k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1)
% 3.78/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1759,plain,
% 3.78/0.98      ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0)) = k10_relat_1(sK2,X0) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_1279,c_906]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_13572,plain,
% 3.78/0.98      ( k10_relat_1(sK2,k2_relat_1(sK2)) = k10_relat_1(sK2,sK1) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_13418,c_1759]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_8,plain,
% 3.78/0.98      ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0)) | ~ v1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f56]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_907,plain,
% 3.78/0.98      ( r1_tarski(k10_relat_1(X0,X1),k1_relat_1(X0)) = iProver_top
% 3.78/0.98      | v1_relat_1(X0) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3,plain,
% 3.78/0.98      ( r1_tarski(X0,X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f78]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_910,plain,
% 3.78/0.98      ( r1_tarski(X0,X0) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_26,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
% 3.78/0.98      | ~ r1_tarski(k1_relat_1(X0),X3) ),
% 3.78/0.98      inference(cnf_transformation,[],[f74]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_894,plain,
% 3.78/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.78/0.98      | m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) = iProver_top
% 3.78/0.98      | r1_tarski(k1_relat_1(X0),X3) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_26]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1771,plain,
% 3.78/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(X0,sK1))) = iProver_top
% 3.78/0.98      | r1_tarski(k1_relat_1(sK2),X0) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_893,c_894]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_21,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | v4_relat_1(X0,X1) ),
% 3.78/0.98      inference(cnf_transformation,[],[f68]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_899,plain,
% 3.78/0.98      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 3.78/0.98      | v4_relat_1(X0,X1) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_2217,plain,
% 3.78/0.98      ( v4_relat_1(sK2,X0) = iProver_top
% 3.78/0.98      | r1_tarski(k1_relat_1(sK2),X0) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_1771,c_899]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_2514,plain,
% 3.78/0.98      ( v4_relat_1(sK2,k1_relat_1(sK2)) = iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_910,c_2217]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3494,plain,
% 3.78/0.98      ( k7_relat_1(sK2,k1_relat_1(sK2)) = sK2
% 3.78/0.98      | v1_relat_1(sK2) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_2514,c_905]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_29,plain,
% 3.78/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_28]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1056,plain,
% 3.78/0.98      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.78/0.98      | v1_relat_1(sK2) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_19]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1057,plain,
% 3.78/0.98      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 3.78/0.98      | v1_relat_1(sK2) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_1056]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_4394,plain,
% 3.78/0.98      ( k7_relat_1(sK2,k1_relat_1(sK2)) = sK2 ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_3494,c_29,c_1057]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1346,plain,
% 3.78/0.98      ( k2_relat_1(k7_relat_1(sK2,X0)) = k9_relat_1(sK2,X0) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_1279,c_909]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_4397,plain,
% 3.78/0.98      ( k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_4394,c_1346]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_17,plain,
% 3.78/0.98      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0)))
% 3.78/0.98      | ~ r1_tarski(X0,k1_relat_1(X1))
% 3.78/0.98      | ~ v1_relat_1(X1) ),
% 3.78/0.98      inference(cnf_transformation,[],[f65]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_901,plain,
% 3.78/0.98      ( r1_tarski(X0,k10_relat_1(X1,k9_relat_1(X1,X0))) = iProver_top
% 3.78/0.98      | r1_tarski(X0,k1_relat_1(X1)) != iProver_top
% 3.78/0.98      | v1_relat_1(X1) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_4709,plain,
% 3.78/0.98      ( r1_tarski(k1_relat_1(sK2),k10_relat_1(sK2,k2_relat_1(sK2))) = iProver_top
% 3.78/0.98      | r1_tarski(k1_relat_1(sK2),k1_relat_1(sK2)) != iProver_top
% 3.78/0.98      | v1_relat_1(sK2) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_4397,c_901]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1103,plain,
% 3.78/0.98      ( r1_tarski(k1_relat_1(X0),k1_relat_1(X0)) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_3]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1407,plain,
% 3.78/0.98      ( r1_tarski(k1_relat_1(sK2),k1_relat_1(sK2)) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_1103]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1410,plain,
% 3.78/0.98      ( r1_tarski(k1_relat_1(sK2),k1_relat_1(sK2)) = iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_1407]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_8007,plain,
% 3.78/0.98      ( r1_tarski(k1_relat_1(sK2),k10_relat_1(sK2,k2_relat_1(sK2))) = iProver_top ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_4709,c_29,c_1057,c_1410]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1,plain,
% 3.78/0.98      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 3.78/0.98      inference(cnf_transformation,[],[f51]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_911,plain,
% 3.78/0.98      ( X0 = X1
% 3.78/0.98      | r1_tarski(X0,X1) != iProver_top
% 3.78/0.98      | r1_tarski(X1,X0) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_8012,plain,
% 3.78/0.98      ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2)
% 3.78/0.98      | r1_tarski(k10_relat_1(sK2,k2_relat_1(sK2)),k1_relat_1(sK2)) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_8007,c_911]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_10117,plain,
% 3.78/0.98      ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2)
% 3.78/0.98      | v1_relat_1(sK2) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_907,c_8012]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_10120,plain,
% 3.78/0.98      ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_10117,c_29,c_1057]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_13574,plain,
% 3.78/0.98      ( k10_relat_1(sK2,sK1) = k1_relat_1(sK2) ),
% 3.78/0.98      inference(light_normalisation,[status(thm)],[c_13572,c_10120]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_24,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 3.78/0.98      inference(cnf_transformation,[],[f72]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_896,plain,
% 3.78/0.98      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 3.78/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_24]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3607,plain,
% 3.78/0.98      ( k7_relset_1(sK0,sK1,sK2,X0) = k9_relat_1(sK2,X0) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_893,c_896]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_25,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 3.78/0.98      inference(cnf_transformation,[],[f73]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_895,plain,
% 3.78/0.98      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
% 3.78/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_25]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3146,plain,
% 3.78/0.98      ( k8_relset_1(sK0,sK1,sK2,X0) = k10_relat_1(sK2,X0) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_893,c_895]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_22,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f70]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_898,plain,
% 3.78/0.98      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 3.78/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_22]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_2018,plain,
% 3.78/0.98      ( k1_relset_1(sK0,sK1,sK2) = k1_relat_1(sK2) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_893,c_898]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_23,plain,
% 3.78/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 3.78/0.98      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 3.78/0.98      inference(cnf_transformation,[],[f71]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_897,plain,
% 3.78/0.98      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 3.78/0.98      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 3.78/0.98      inference(predicate_to_equality,[status(thm)],[c_23]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_2014,plain,
% 3.78/0.98      ( k2_relset_1(sK0,sK1,sK2) = k2_relat_1(sK2) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_893,c_897]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_27,negated_conjecture,
% 3.78/0.98      ( k2_relset_1(sK0,sK1,sK2) != k7_relset_1(sK0,sK1,sK2,sK0)
% 3.78/0.98      | k1_relset_1(sK0,sK1,sK2) != k8_relset_1(sK0,sK1,sK2,sK1) ),
% 3.78/0.98      inference(cnf_transformation,[],[f76]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_2077,plain,
% 3.78/0.98      ( k8_relset_1(sK0,sK1,sK2,sK1) != k1_relset_1(sK0,sK1,sK2)
% 3.78/0.98      | k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2) ),
% 3.78/0.98      inference(demodulation,[status(thm)],[c_2014,c_27]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_2210,plain,
% 3.78/0.98      ( k8_relset_1(sK0,sK1,sK2,sK1) != k1_relat_1(sK2)
% 3.78/0.98      | k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2) ),
% 3.78/0.98      inference(demodulation,[status(thm)],[c_2018,c_2077]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3157,plain,
% 3.78/0.98      ( k7_relset_1(sK0,sK1,sK2,sK0) != k2_relat_1(sK2)
% 3.78/0.98      | k10_relat_1(sK2,sK1) != k1_relat_1(sK2) ),
% 3.78/0.98      inference(demodulation,[status(thm)],[c_3146,c_2210]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3863,plain,
% 3.78/0.98      ( k10_relat_1(sK2,sK1) != k1_relat_1(sK2)
% 3.78/0.98      | k9_relat_1(sK2,sK0) != k2_relat_1(sK2) ),
% 3.78/0.98      inference(demodulation,[status(thm)],[c_3607,c_3157]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1567,plain,
% 3.78/0.98      ( v4_relat_1(sK2,sK0) = iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_893,c_899]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3013,plain,
% 3.78/0.98      ( k7_relat_1(sK2,sK0) = sK2 | v1_relat_1(sK2) != iProver_top ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_1567,c_905]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1063,plain,
% 3.78/0.98      ( ~ m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 3.78/0.98      | v4_relat_1(sK2,sK0) ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_21]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1170,plain,
% 3.78/0.98      ( ~ v4_relat_1(sK2,X0)
% 3.78/0.98      | ~ v1_relat_1(sK2)
% 3.78/0.98      | k7_relat_1(sK2,X0) = sK2 ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_10]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_1187,plain,
% 3.78/0.98      ( ~ v4_relat_1(sK2,sK0)
% 3.78/0.98      | ~ v1_relat_1(sK2)
% 3.78/0.98      | k7_relat_1(sK2,sK0) = sK2 ),
% 3.78/0.98      inference(instantiation,[status(thm)],[c_1170]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3310,plain,
% 3.78/0.98      ( k7_relat_1(sK2,sK0) = sK2 ),
% 3.78/0.98      inference(global_propositional_subsumption,
% 3.78/0.98                [status(thm)],
% 3.78/0.98                [c_3013,c_28,c_1056,c_1063,c_1187]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3313,plain,
% 3.78/0.98      ( k9_relat_1(sK2,sK0) = k2_relat_1(sK2) ),
% 3.78/0.98      inference(superposition,[status(thm)],[c_3310,c_1346]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3864,plain,
% 3.78/0.98      ( k10_relat_1(sK2,sK1) != k1_relat_1(sK2)
% 3.78/0.98      | k2_relat_1(sK2) != k2_relat_1(sK2) ),
% 3.78/0.98      inference(light_normalisation,[status(thm)],[c_3863,c_3313]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(c_3865,plain,
% 3.78/0.98      ( k10_relat_1(sK2,sK1) != k1_relat_1(sK2) ),
% 3.78/0.98      inference(equality_resolution_simp,[status(thm)],[c_3864]) ).
% 3.78/0.98  
% 3.78/0.98  cnf(contradiction,plain,
% 3.78/0.98      ( $false ),
% 3.78/0.98      inference(minisat,[status(thm)],[c_13574,c_3865]) ).
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.78/0.98  
% 3.78/0.98  ------                               Statistics
% 3.78/0.98  
% 3.78/0.98  ------ General
% 3.78/0.98  
% 3.78/0.98  abstr_ref_over_cycles:                  0
% 3.78/0.98  abstr_ref_under_cycles:                 0
% 3.78/0.98  gc_basic_clause_elim:                   0
% 3.78/0.98  forced_gc_time:                         0
% 3.78/0.98  parsing_time:                           0.01
% 3.78/0.98  unif_index_cands_time:                  0.
% 3.78/0.98  unif_index_add_time:                    0.
% 3.78/0.98  orderings_time:                         0.
% 3.78/0.98  out_proof_time:                         0.012
% 3.78/0.98  total_time:                             0.377
% 3.78/0.98  num_of_symbols:                         53
% 3.78/0.98  num_of_terms:                           12463
% 3.78/0.98  
% 3.78/0.98  ------ Preprocessing
% 3.78/0.98  
% 3.78/0.98  num_of_splits:                          0
% 3.78/0.98  num_of_split_atoms:                     0
% 3.78/0.98  num_of_reused_defs:                     0
% 3.78/0.98  num_eq_ax_congr_red:                    19
% 3.78/0.98  num_of_sem_filtered_clauses:            1
% 3.78/0.98  num_of_subtypes:                        0
% 3.78/0.98  monotx_restored_types:                  0
% 3.78/0.98  sat_num_of_epr_types:                   0
% 3.78/0.98  sat_num_of_non_cyclic_types:            0
% 3.78/0.98  sat_guarded_non_collapsed_types:        0
% 3.78/0.98  num_pure_diseq_elim:                    0
% 3.78/0.98  simp_replaced_by:                       0
% 3.78/0.98  res_preprocessed:                       145
% 3.78/0.98  prep_upred:                             0
% 3.78/0.98  prep_unflattend:                        4
% 3.78/0.98  smt_new_axioms:                         0
% 3.78/0.98  pred_elim_cands:                        4
% 3.78/0.98  pred_elim:                              1
% 3.78/0.98  pred_elim_cl:                           2
% 3.78/0.98  pred_elim_cycles:                       3
% 3.78/0.98  merged_defs:                            0
% 3.78/0.98  merged_defs_ncl:                        0
% 3.78/0.98  bin_hyper_res:                          0
% 3.78/0.98  prep_cycles:                            4
% 3.78/0.98  pred_elim_time:                         0.002
% 3.78/0.98  splitting_time:                         0.
% 3.78/0.98  sem_filter_time:                        0.
% 3.78/0.98  monotx_time:                            0.001
% 3.78/0.98  subtype_inf_time:                       0.
% 3.78/0.98  
% 3.78/0.98  ------ Problem properties
% 3.78/0.98  
% 3.78/0.98  clauses:                                26
% 3.78/0.98  conjectures:                            2
% 3.78/0.98  epr:                                    3
% 3.78/0.98  horn:                                   26
% 3.78/0.98  ground:                                 2
% 3.78/0.98  unary:                                  9
% 3.78/0.98  binary:                                 11
% 3.78/0.98  lits:                                   50
% 3.78/0.98  lits_eq:                                15
% 3.78/0.98  fd_pure:                                0
% 3.78/0.98  fd_pseudo:                              0
% 3.78/0.98  fd_cond:                                0
% 3.78/0.98  fd_pseudo_cond:                         1
% 3.78/0.98  ac_symbols:                             0
% 3.78/0.98  
% 3.78/0.98  ------ Propositional Solver
% 3.78/0.98  
% 3.78/0.98  prop_solver_calls:                      29
% 3.78/0.98  prop_fast_solver_calls:                 1056
% 3.78/0.98  smt_solver_calls:                       0
% 3.78/0.98  smt_fast_solver_calls:                  0
% 3.78/0.98  prop_num_of_clauses:                    5913
% 3.78/0.98  prop_preprocess_simplified:             14297
% 3.78/0.98  prop_fo_subsumed:                       43
% 3.78/0.98  prop_solver_time:                       0.
% 3.78/0.98  smt_solver_time:                        0.
% 3.78/0.98  smt_fast_solver_time:                   0.
% 3.78/0.98  prop_fast_solver_time:                  0.
% 3.78/0.98  prop_unsat_core_time:                   0.
% 3.78/0.98  
% 3.78/0.98  ------ QBF
% 3.78/0.98  
% 3.78/0.98  qbf_q_res:                              0
% 3.78/0.98  qbf_num_tautologies:                    0
% 3.78/0.98  qbf_prep_cycles:                        0
% 3.78/0.98  
% 3.78/0.98  ------ BMC1
% 3.78/0.98  
% 3.78/0.98  bmc1_current_bound:                     -1
% 3.78/0.98  bmc1_last_solved_bound:                 -1
% 3.78/0.98  bmc1_unsat_core_size:                   -1
% 3.78/0.98  bmc1_unsat_core_parents_size:           -1
% 3.78/0.98  bmc1_merge_next_fun:                    0
% 3.78/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.78/0.98  
% 3.78/0.98  ------ Instantiation
% 3.78/0.98  
% 3.78/0.98  inst_num_of_clauses:                    1872
% 3.78/0.98  inst_num_in_passive:                    816
% 3.78/0.98  inst_num_in_active:                     765
% 3.78/0.98  inst_num_in_unprocessed:                291
% 3.78/0.98  inst_num_of_loops:                      780
% 3.78/0.98  inst_num_of_learning_restarts:          0
% 3.78/0.98  inst_num_moves_active_passive:          13
% 3.78/0.98  inst_lit_activity:                      0
% 3.78/0.98  inst_lit_activity_moves:                0
% 3.78/0.98  inst_num_tautologies:                   0
% 3.78/0.98  inst_num_prop_implied:                  0
% 3.78/0.98  inst_num_existing_simplified:           0
% 3.78/0.98  inst_num_eq_res_simplified:             0
% 3.78/0.98  inst_num_child_elim:                    0
% 3.78/0.98  inst_num_of_dismatching_blockings:      485
% 3.78/0.98  inst_num_of_non_proper_insts:           1655
% 3.78/0.98  inst_num_of_duplicates:                 0
% 3.78/0.98  inst_inst_num_from_inst_to_res:         0
% 3.78/0.98  inst_dismatching_checking_time:         0.
% 3.78/0.98  
% 3.78/0.98  ------ Resolution
% 3.78/0.98  
% 3.78/0.98  res_num_of_clauses:                     0
% 3.78/0.98  res_num_in_passive:                     0
% 3.78/0.98  res_num_in_active:                      0
% 3.78/0.98  res_num_of_loops:                       149
% 3.78/0.98  res_forward_subset_subsumed:            171
% 3.78/0.98  res_backward_subset_subsumed:           4
% 3.78/0.98  res_forward_subsumed:                   0
% 3.78/0.98  res_backward_subsumed:                  0
% 3.78/0.98  res_forward_subsumption_resolution:     0
% 3.78/0.98  res_backward_subsumption_resolution:    0
% 3.78/0.98  res_clause_to_clause_subsumption:       1046
% 3.78/0.98  res_orphan_elimination:                 0
% 3.78/0.98  res_tautology_del:                      147
% 3.78/0.98  res_num_eq_res_simplified:              0
% 3.78/0.98  res_num_sel_changes:                    0
% 3.78/0.98  res_moves_from_active_to_pass:          0
% 3.78/0.98  
% 3.78/0.98  ------ Superposition
% 3.78/0.98  
% 3.78/0.98  sup_time_total:                         0.
% 3.78/0.98  sup_time_generating:                    0.
% 3.78/0.98  sup_time_sim_full:                      0.
% 3.78/0.98  sup_time_sim_immed:                     0.
% 3.78/0.98  
% 3.78/0.98  sup_num_of_clauses:                     215
% 3.78/0.98  sup_num_in_active:                      131
% 3.78/0.98  sup_num_in_passive:                     84
% 3.78/0.98  sup_num_of_loops:                       154
% 3.78/0.98  sup_fw_superposition:                   225
% 3.78/0.98  sup_bw_superposition:                   119
% 3.78/0.98  sup_immediate_simplified:               100
% 3.78/0.98  sup_given_eliminated:                   1
% 3.78/0.98  comparisons_done:                       0
% 3.78/0.98  comparisons_avoided:                    0
% 3.78/0.98  
% 3.78/0.98  ------ Simplifications
% 3.78/0.98  
% 3.78/0.98  
% 3.78/0.98  sim_fw_subset_subsumed:                 21
% 3.78/0.98  sim_bw_subset_subsumed:                 10
% 3.78/0.98  sim_fw_subsumed:                        31
% 3.78/0.98  sim_bw_subsumed:                        0
% 3.78/0.98  sim_fw_subsumption_res:                 3
% 3.78/0.98  sim_bw_subsumption_res:                 0
% 3.78/0.98  sim_tautology_del:                      4
% 3.78/0.98  sim_eq_tautology_del:                   10
% 3.78/0.98  sim_eq_res_simp:                        1
% 3.78/0.98  sim_fw_demodulated:                     43
% 3.78/0.98  sim_bw_demodulated:                     24
% 3.78/0.98  sim_light_normalised:                   49
% 3.78/0.98  sim_joinable_taut:                      0
% 3.78/0.98  sim_joinable_simp:                      0
% 3.78/0.98  sim_ac_normalised:                      0
% 3.78/0.98  sim_smt_subsumption:                    0
% 3.78/0.98  
%------------------------------------------------------------------------------
