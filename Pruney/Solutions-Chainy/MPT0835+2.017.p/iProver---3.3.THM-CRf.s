%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:56:10 EST 2020

% Result     : Theorem 1.49s
% Output     : CNFRefutation 1.49s
% Verified   : 
% Statistics : Number of formulae       :  139 ( 458 expanded)
%              Number of clauses        :   90 ( 206 expanded)
%              Number of leaves         :   16 (  88 expanded)
%              Depth                    :   20
%              Number of atoms          :  299 (1082 expanded)
%              Number of equality atoms :  183 ( 592 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k3_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X0,X1) = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f17])).

fof(f35,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f14,conjecture,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
     => ( k1_relset_1(X1,X0,X2) = k8_relset_1(X1,X0,X2,k7_relset_1(X1,X0,X2,X1))
        & k2_relset_1(X1,X0,X2) = k7_relset_1(X1,X0,X2,k8_relset_1(X1,X0,X2,X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
       => ( k1_relset_1(X1,X0,X2) = k8_relset_1(X1,X0,X2,k7_relset_1(X1,X0,X2,X1))
          & k2_relset_1(X1,X0,X2) = k7_relset_1(X1,X0,X2,k8_relset_1(X1,X0,X2,X0)) ) ) ),
    inference(negated_conjecture,[],[f14])).

fof(f30,plain,(
    ? [X0,X1,X2] :
      ( ( k1_relset_1(X1,X0,X2) != k8_relset_1(X1,X0,X2,k7_relset_1(X1,X0,X2,X1))
        | k2_relset_1(X1,X0,X2) != k7_relset_1(X1,X0,X2,k8_relset_1(X1,X0,X2,X0)) )
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f32,plain,
    ( ? [X0,X1,X2] :
        ( ( k1_relset_1(X1,X0,X2) != k8_relset_1(X1,X0,X2,k7_relset_1(X1,X0,X2,X1))
          | k2_relset_1(X1,X0,X2) != k7_relset_1(X1,X0,X2,k8_relset_1(X1,X0,X2,X0)) )
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
   => ( ( k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1))
        | k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0)) )
      & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ( k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1))
      | k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0)) )
    & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f30,f32])).

fof(f49,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f33])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f39,plain,(
    ! [X0,X1] :
      ( k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k1_relat_1(X0) = k10_relat_1(X0,k2_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k10_relat_1(X0,k2_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f40,plain,(
    ! [X0] :
      ( k1_relat_1(X0) = k10_relat_1(X0,k2_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f43,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
        & v1_relat_1(X1) )
     => k7_relat_1(X1,X0) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f23,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f22])).

fof(f41,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f38,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f10,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f50,plain,
    ( k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1))
    | k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0)) ),
    inference(cnf_transformation,[],[f33])).

fof(f12,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1,X2,X3] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f47,plain,(
    ! [X2,X0,X3,X1] :
      ( k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f13,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1,X2,X3] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f48,plain,(
    ! [X2,X0,X3,X1] :
      ( k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f37,plain,(
    ! [X0] :
      ( k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f18])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_xboole_0(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f34])).

cnf(c_2,plain,
    ( ~ v5_relat_1(X0,X1)
    | r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_223,plain,
    ( ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | X1 != X2
    | k3_xboole_0(X3,X2) = X3
    | k2_relat_1(X0) != X3 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_2])).

cnf(c_224,plain,
    ( ~ v5_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k3_xboole_0(k2_relat_1(X0),X1) = k2_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_223])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v5_relat_1(X0,X2) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_242,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X3)
    | X0 != X3
    | X2 != X4
    | k3_xboole_0(k2_relat_1(X3),X4) = k2_relat_1(X3) ),
    inference(resolution_lifted,[status(thm)],[c_224,c_9])).

cnf(c_243,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k3_xboole_0(k2_relat_1(X0),X2) = k2_relat_1(X0) ),
    inference(unflattening,[status(thm)],[c_242])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_247,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k3_xboole_0(k2_relat_1(X0),X2) = k2_relat_1(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_243,c_8])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_263,plain,
    ( k3_xboole_0(k2_relat_1(X0),X1) = k2_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(X2,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_247,c_16])).

cnf(c_264,plain,
    ( k3_xboole_0(k2_relat_1(sK2),X0) = k2_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_263])).

cnf(c_411,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k3_xboole_0(k2_relat_1(sK2),X0_48) = k2_relat_1(sK2) ),
    inference(subtyping,[status(esa)],[c_264])).

cnf(c_654,plain,
    ( k3_xboole_0(k2_relat_1(sK2),sK0) = k2_relat_1(sK2) ),
    inference(equality_resolution,[status(thm)],[c_411])).

cnf(c_5,plain,
    ( ~ v1_relat_1(X0)
    | k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_317,plain,
    ( v1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_16])).

cnf(c_318,plain,
    ( v1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_317])).

cnf(c_353,plain,
    ( k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1)
    | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_318])).

cnf(c_354,plain,
    ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0)) = k10_relat_1(sK2,X0)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_353])).

cnf(c_404,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X1_48)) = k10_relat_1(sK2,X1_48) ),
    inference(subtyping,[status(esa)],[c_354])).

cnf(c_413,plain,
    ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0_48)) = k10_relat_1(sK2,X0_48)
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_404])).

cnf(c_555,plain,
    ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0_48)) = k10_relat_1(sK2,X0_48)
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_413])).

cnf(c_415,plain,
    ( sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_404])).

cnf(c_414,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_404])).

cnf(c_465,plain,
    ( ~ sP1_iProver_split
    | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_414])).

cnf(c_421,plain,
    ( X0_51 = X0_51 ),
    theory(equality)).

cnf(c_630,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_421])).

cnf(c_954,plain,
    ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0_48)) = k10_relat_1(sK2,X0_48) ),
    inference(global_propositional_subsumption,[status(thm)],[c_555,c_415,c_465,c_413,c_630])).

cnf(c_958,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) = k10_relat_1(sK2,sK0) ),
    inference(superposition,[status(thm)],[c_654,c_954])).

cnf(c_6,plain,
    ( ~ v1_relat_1(X0)
    | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_344,plain,
    ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_318])).

cnf(c_345,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_344])).

cnf(c_405,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
    inference(subtyping,[status(esa)],[c_345])).

cnf(c_462,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_405])).

cnf(c_674,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_405,c_462,c_630])).

cnf(c_959,plain,
    ( k10_relat_1(sK2,sK0) = k1_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_958,c_674])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v4_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_7,plain,
    ( ~ v4_relat_1(X0,X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_202,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(resolution,[status(thm)],[c_10,c_7])).

cnf(c_206,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relat_1(X0,X1) = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_202,c_10,c_8,c_7])).

cnf(c_272,plain,
    ( k7_relat_1(X0,X1) = X0
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_206,c_16])).

cnf(c_273,plain,
    ( k7_relat_1(sK2,X0) = sK2
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_272])).

cnf(c_410,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k7_relat_1(sK2,X0_50) = sK2 ),
    inference(subtyping,[status(esa)],[c_273])).

cnf(c_629,plain,
    ( k7_relat_1(sK2,sK1) = sK2 ),
    inference(equality_resolution,[status(thm)],[c_410])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_362,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k2_relat_1(k7_relat_1(X2,X3)) = k9_relat_1(X2,X3)
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_318])).

cnf(c_363,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k2_relat_1(k7_relat_1(sK2,X2)) = k9_relat_1(sK2,X2) ),
    inference(unflattening,[status(thm)],[c_362])).

cnf(c_403,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k2_relat_1(k7_relat_1(sK2,X1_50)) = k9_relat_1(sK2,X1_50) ),
    inference(subtyping,[status(esa)],[c_363])).

cnf(c_416,plain,
    ( k2_relat_1(k7_relat_1(sK2,X0_50)) = k9_relat_1(sK2,X0_50)
    | ~ sP2_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP2_iProver_split])],[c_403])).

cnf(c_558,plain,
    ( k2_relat_1(k7_relat_1(sK2,X0_50)) = k9_relat_1(sK2,X0_50)
    | sP2_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_416])).

cnf(c_417,plain,
    ( sP2_iProver_split
    | sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_403])).

cnf(c_821,plain,
    ( k2_relat_1(k7_relat_1(sK2,X0_50)) = k9_relat_1(sK2,X0_50) ),
    inference(global_propositional_subsumption,[status(thm)],[c_558,c_465,c_417,c_416,c_630])).

cnf(c_825,plain,
    ( k9_relat_1(sK2,sK1) = k2_relat_1(sK2) ),
    inference(superposition,[status(thm)],[c_629,c_821])).

cnf(c_12,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_299,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_16])).

cnf(c_300,plain,
    ( k2_relset_1(X0,X1,sK2) = k2_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_299])).

cnf(c_407,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k2_relset_1(X0_50,X0_48,sK2) = k2_relat_1(sK2) ),
    inference(subtyping,[status(esa)],[c_300])).

cnf(c_647,plain,
    ( k2_relset_1(sK1,sK0,sK2) = k2_relat_1(sK2) ),
    inference(equality_resolution,[status(thm)],[c_407])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_308,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_11,c_16])).

cnf(c_309,plain,
    ( k1_relset_1(X0,X1,sK2) = k1_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_308])).

cnf(c_406,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k1_relset_1(X0_50,X0_48,sK2) = k1_relat_1(sK2) ),
    inference(subtyping,[status(esa)],[c_309])).

cnf(c_644,plain,
    ( k1_relset_1(sK1,sK0,sK2) = k1_relat_1(sK2) ),
    inference(equality_resolution,[status(thm)],[c_406])).

cnf(c_15,negated_conjecture,
    ( k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0))
    | k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_412,negated_conjecture,
    ( k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1))
    | k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0)) ),
    inference(subtyping,[status(esa)],[c_15])).

cnf(c_678,plain,
    ( k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1)) != k1_relat_1(sK2)
    | k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0)) != k2_relset_1(sK1,sK0,sK2) ),
    inference(demodulation,[status(thm)],[c_644,c_412])).

cnf(c_701,plain,
    ( k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1)) != k1_relat_1(sK2)
    | k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0)) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_647,c_678])).

cnf(c_13,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_290,plain,
    ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_13,c_16])).

cnf(c_291,plain,
    ( k7_relset_1(X0,X1,sK2,X2) = k9_relat_1(sK2,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_290])).

cnf(c_408,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k7_relset_1(X0_50,X0_48,sK2,X1_50) = k9_relat_1(sK2,X1_50) ),
    inference(subtyping,[status(esa)],[c_291])).

cnf(c_657,plain,
    ( k7_relset_1(sK1,sK0,sK2,X0_50) = k9_relat_1(sK2,X0_50) ),
    inference(equality_resolution,[status(thm)],[c_408])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_281,plain,
    ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_16])).

cnf(c_282,plain,
    ( k8_relset_1(X0,X1,sK2,X2) = k10_relat_1(sK2,X2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_281])).

cnf(c_409,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k8_relset_1(X0_50,X0_48,sK2,X1_48) = k10_relat_1(sK2,X1_48) ),
    inference(subtyping,[status(esa)],[c_282])).

cnf(c_666,plain,
    ( k8_relset_1(sK1,sK0,sK2,X0_48) = k10_relat_1(sK2,X0_48) ),
    inference(equality_resolution,[status(thm)],[c_409])).

cnf(c_817,plain,
    ( k10_relat_1(sK2,k9_relat_1(sK2,sK1)) != k1_relat_1(sK2)
    | k9_relat_1(sK2,k10_relat_1(sK2,sK0)) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_701,c_657,c_666])).

cnf(c_889,plain,
    ( k10_relat_1(sK2,k2_relat_1(sK2)) != k1_relat_1(sK2)
    | k9_relat_1(sK2,k10_relat_1(sK2,sK0)) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_825,c_817])).

cnf(c_890,plain,
    ( k1_relat_1(sK2) != k1_relat_1(sK2)
    | k9_relat_1(sK2,k10_relat_1(sK2,sK0)) != k2_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_889,c_674])).

cnf(c_891,plain,
    ( k9_relat_1(sK2,k10_relat_1(sK2,sK0)) != k2_relat_1(sK2) ),
    inference(equality_resolution_simp,[status(thm)],[c_890])).

cnf(c_1001,plain,
    ( k9_relat_1(sK2,k1_relat_1(sK2)) != k2_relat_1(sK2) ),
    inference(demodulation,[status(thm)],[c_959,c_891])).

cnf(c_3,plain,
    ( ~ v1_relat_1(X0)
    | k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_371,plain,
    ( k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0)
    | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_3,c_318])).

cnf(c_372,plain,
    ( k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2)
    | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(unflattening,[status(thm)],[c_371])).

cnf(c_402,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2) ),
    inference(subtyping,[status(esa)],[c_372])).

cnf(c_475,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2) ),
    inference(instantiation,[status(thm)],[c_402])).

cnf(c_671,plain,
    ( k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_402,c_475,c_630])).

cnf(c_1002,plain,
    ( k2_relat_1(sK2) != k2_relat_1(sK2) ),
    inference(light_normalisation,[status(thm)],[c_1001,c_671])).

cnf(c_1003,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_1002])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n001.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 12:33:14 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 1.49/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.49/0.99  
% 1.49/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.49/0.99  
% 1.49/0.99  ------  iProver source info
% 1.49/0.99  
% 1.49/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.49/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.49/0.99  git: non_committed_changes: false
% 1.49/0.99  git: last_make_outside_of_git: false
% 1.49/0.99  
% 1.49/0.99  ------ 
% 1.49/0.99  
% 1.49/0.99  ------ Input Options
% 1.49/0.99  
% 1.49/0.99  --out_options                           all
% 1.49/0.99  --tptp_safe_out                         true
% 1.49/0.99  --problem_path                          ""
% 1.49/0.99  --include_path                          ""
% 1.49/0.99  --clausifier                            res/vclausify_rel
% 1.49/0.99  --clausifier_options                    --mode clausify
% 1.49/0.99  --stdin                                 false
% 1.49/0.99  --stats_out                             all
% 1.49/0.99  
% 1.49/0.99  ------ General Options
% 1.49/0.99  
% 1.49/0.99  --fof                                   false
% 1.49/0.99  --time_out_real                         305.
% 1.49/0.99  --time_out_virtual                      -1.
% 1.49/0.99  --symbol_type_check                     false
% 1.49/0.99  --clausify_out                          false
% 1.49/0.99  --sig_cnt_out                           false
% 1.49/0.99  --trig_cnt_out                          false
% 1.49/0.99  --trig_cnt_out_tolerance                1.
% 1.49/0.99  --trig_cnt_out_sk_spl                   false
% 1.49/0.99  --abstr_cl_out                          false
% 1.49/0.99  
% 1.49/0.99  ------ Global Options
% 1.49/0.99  
% 1.49/0.99  --schedule                              default
% 1.49/0.99  --add_important_lit                     false
% 1.49/0.99  --prop_solver_per_cl                    1000
% 1.49/0.99  --min_unsat_core                        false
% 1.49/0.99  --soft_assumptions                      false
% 1.49/0.99  --soft_lemma_size                       3
% 1.49/0.99  --prop_impl_unit_size                   0
% 1.49/0.99  --prop_impl_unit                        []
% 1.49/0.99  --share_sel_clauses                     true
% 1.49/0.99  --reset_solvers                         false
% 1.49/0.99  --bc_imp_inh                            [conj_cone]
% 1.49/0.99  --conj_cone_tolerance                   3.
% 1.49/0.99  --extra_neg_conj                        none
% 1.49/0.99  --large_theory_mode                     true
% 1.49/0.99  --prolific_symb_bound                   200
% 1.49/0.99  --lt_threshold                          2000
% 1.49/0.99  --clause_weak_htbl                      true
% 1.49/0.99  --gc_record_bc_elim                     false
% 1.49/0.99  
% 1.49/0.99  ------ Preprocessing Options
% 1.49/0.99  
% 1.49/0.99  --preprocessing_flag                    true
% 1.49/0.99  --time_out_prep_mult                    0.1
% 1.49/0.99  --splitting_mode                        input
% 1.49/0.99  --splitting_grd                         true
% 1.49/0.99  --splitting_cvd                         false
% 1.49/0.99  --splitting_cvd_svl                     false
% 1.49/0.99  --splitting_nvd                         32
% 1.49/0.99  --sub_typing                            true
% 1.49/0.99  --prep_gs_sim                           true
% 1.49/0.99  --prep_unflatten                        true
% 1.49/0.99  --prep_res_sim                          true
% 1.49/0.99  --prep_upred                            true
% 1.49/0.99  --prep_sem_filter                       exhaustive
% 1.49/0.99  --prep_sem_filter_out                   false
% 1.49/0.99  --pred_elim                             true
% 1.49/0.99  --res_sim_input                         true
% 1.49/0.99  --eq_ax_congr_red                       true
% 1.49/0.99  --pure_diseq_elim                       true
% 1.49/0.99  --brand_transform                       false
% 1.49/0.99  --non_eq_to_eq                          false
% 1.49/0.99  --prep_def_merge                        true
% 1.49/0.99  --prep_def_merge_prop_impl              false
% 1.49/0.99  --prep_def_merge_mbd                    true
% 1.49/0.99  --prep_def_merge_tr_red                 false
% 1.49/0.99  --prep_def_merge_tr_cl                  false
% 1.49/0.99  --smt_preprocessing                     true
% 1.49/0.99  --smt_ac_axioms                         fast
% 1.49/0.99  --preprocessed_out                      false
% 1.49/0.99  --preprocessed_stats                    false
% 1.49/0.99  
% 1.49/0.99  ------ Abstraction refinement Options
% 1.49/0.99  
% 1.49/0.99  --abstr_ref                             []
% 1.49/0.99  --abstr_ref_prep                        false
% 1.49/0.99  --abstr_ref_until_sat                   false
% 1.49/0.99  --abstr_ref_sig_restrict                funpre
% 1.49/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.49/0.99  --abstr_ref_under                       []
% 1.49/0.99  
% 1.49/0.99  ------ SAT Options
% 1.49/0.99  
% 1.49/0.99  --sat_mode                              false
% 1.49/0.99  --sat_fm_restart_options                ""
% 1.49/0.99  --sat_gr_def                            false
% 1.49/0.99  --sat_epr_types                         true
% 1.49/0.99  --sat_non_cyclic_types                  false
% 1.49/0.99  --sat_finite_models                     false
% 1.49/0.99  --sat_fm_lemmas                         false
% 1.49/0.99  --sat_fm_prep                           false
% 1.49/0.99  --sat_fm_uc_incr                        true
% 1.49/0.99  --sat_out_model                         small
% 1.49/0.99  --sat_out_clauses                       false
% 1.49/0.99  
% 1.49/0.99  ------ QBF Options
% 1.49/0.99  
% 1.49/0.99  --qbf_mode                              false
% 1.49/0.99  --qbf_elim_univ                         false
% 1.49/0.99  --qbf_dom_inst                          none
% 1.49/0.99  --qbf_dom_pre_inst                      false
% 1.49/0.99  --qbf_sk_in                             false
% 1.49/0.99  --qbf_pred_elim                         true
% 1.49/0.99  --qbf_split                             512
% 1.49/0.99  
% 1.49/0.99  ------ BMC1 Options
% 1.49/0.99  
% 1.49/0.99  --bmc1_incremental                      false
% 1.49/0.99  --bmc1_axioms                           reachable_all
% 1.49/0.99  --bmc1_min_bound                        0
% 1.49/0.99  --bmc1_max_bound                        -1
% 1.49/0.99  --bmc1_max_bound_default                -1
% 1.49/0.99  --bmc1_symbol_reachability              true
% 1.49/0.99  --bmc1_property_lemmas                  false
% 1.49/0.99  --bmc1_k_induction                      false
% 1.49/0.99  --bmc1_non_equiv_states                 false
% 1.49/0.99  --bmc1_deadlock                         false
% 1.49/0.99  --bmc1_ucm                              false
% 1.49/0.99  --bmc1_add_unsat_core                   none
% 1.49/0.99  --bmc1_unsat_core_children              false
% 1.49/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.49/0.99  --bmc1_out_stat                         full
% 1.49/0.99  --bmc1_ground_init                      false
% 1.49/0.99  --bmc1_pre_inst_next_state              false
% 1.49/0.99  --bmc1_pre_inst_state                   false
% 1.49/0.99  --bmc1_pre_inst_reach_state             false
% 1.49/0.99  --bmc1_out_unsat_core                   false
% 1.49/0.99  --bmc1_aig_witness_out                  false
% 1.49/0.99  --bmc1_verbose                          false
% 1.49/0.99  --bmc1_dump_clauses_tptp                false
% 1.49/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.49/0.99  --bmc1_dump_file                        -
% 1.49/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.49/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.49/0.99  --bmc1_ucm_extend_mode                  1
% 1.49/0.99  --bmc1_ucm_init_mode                    2
% 1.49/0.99  --bmc1_ucm_cone_mode                    none
% 1.49/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.49/0.99  --bmc1_ucm_relax_model                  4
% 1.49/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.49/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.49/0.99  --bmc1_ucm_layered_model                none
% 1.49/0.99  --bmc1_ucm_max_lemma_size               10
% 1.49/0.99  
% 1.49/0.99  ------ AIG Options
% 1.49/0.99  
% 1.49/0.99  --aig_mode                              false
% 1.49/0.99  
% 1.49/0.99  ------ Instantiation Options
% 1.49/0.99  
% 1.49/0.99  --instantiation_flag                    true
% 1.49/0.99  --inst_sos_flag                         false
% 1.49/0.99  --inst_sos_phase                        true
% 1.49/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.49/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.49/0.99  --inst_lit_sel_side                     num_symb
% 1.49/0.99  --inst_solver_per_active                1400
% 1.49/0.99  --inst_solver_calls_frac                1.
% 1.49/0.99  --inst_passive_queue_type               priority_queues
% 1.49/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.49/0.99  --inst_passive_queues_freq              [25;2]
% 1.49/0.99  --inst_dismatching                      true
% 1.49/0.99  --inst_eager_unprocessed_to_passive     true
% 1.49/0.99  --inst_prop_sim_given                   true
% 1.49/0.99  --inst_prop_sim_new                     false
% 1.49/0.99  --inst_subs_new                         false
% 1.49/0.99  --inst_eq_res_simp                      false
% 1.49/0.99  --inst_subs_given                       false
% 1.49/0.99  --inst_orphan_elimination               true
% 1.49/0.99  --inst_learning_loop_flag               true
% 1.49/0.99  --inst_learning_start                   3000
% 1.49/0.99  --inst_learning_factor                  2
% 1.49/0.99  --inst_start_prop_sim_after_learn       3
% 1.49/0.99  --inst_sel_renew                        solver
% 1.49/0.99  --inst_lit_activity_flag                true
% 1.49/0.99  --inst_restr_to_given                   false
% 1.49/0.99  --inst_activity_threshold               500
% 1.49/0.99  --inst_out_proof                        true
% 1.49/0.99  
% 1.49/0.99  ------ Resolution Options
% 1.49/0.99  
% 1.49/0.99  --resolution_flag                       true
% 1.49/0.99  --res_lit_sel                           adaptive
% 1.49/0.99  --res_lit_sel_side                      none
% 1.49/0.99  --res_ordering                          kbo
% 1.49/0.99  --res_to_prop_solver                    active
% 1.49/0.99  --res_prop_simpl_new                    false
% 1.49/0.99  --res_prop_simpl_given                  true
% 1.49/0.99  --res_passive_queue_type                priority_queues
% 1.49/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.49/0.99  --res_passive_queues_freq               [15;5]
% 1.49/0.99  --res_forward_subs                      full
% 1.49/0.99  --res_backward_subs                     full
% 1.49/0.99  --res_forward_subs_resolution           true
% 1.49/0.99  --res_backward_subs_resolution          true
% 1.49/0.99  --res_orphan_elimination                true
% 1.49/0.99  --res_time_limit                        2.
% 1.49/0.99  --res_out_proof                         true
% 1.49/0.99  
% 1.49/0.99  ------ Superposition Options
% 1.49/0.99  
% 1.49/0.99  --superposition_flag                    true
% 1.49/0.99  --sup_passive_queue_type                priority_queues
% 1.49/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.49/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.49/0.99  --demod_completeness_check              fast
% 1.49/0.99  --demod_use_ground                      true
% 1.49/0.99  --sup_to_prop_solver                    passive
% 1.49/0.99  --sup_prop_simpl_new                    true
% 1.49/0.99  --sup_prop_simpl_given                  true
% 1.49/0.99  --sup_fun_splitting                     false
% 1.49/0.99  --sup_smt_interval                      50000
% 1.49/0.99  
% 1.49/0.99  ------ Superposition Simplification Setup
% 1.49/0.99  
% 1.49/0.99  --sup_indices_passive                   []
% 1.49/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.49/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.49/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.49/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.49/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.49/0.99  --sup_full_bw                           [BwDemod]
% 1.49/0.99  --sup_immed_triv                        [TrivRules]
% 1.49/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.49/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.49/0.99  --sup_immed_bw_main                     []
% 1.49/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.49/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.49/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.49/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.49/0.99  
% 1.49/0.99  ------ Combination Options
% 1.49/0.99  
% 1.49/0.99  --comb_res_mult                         3
% 1.49/0.99  --comb_sup_mult                         2
% 1.49/0.99  --comb_inst_mult                        10
% 1.49/0.99  
% 1.49/0.99  ------ Debug Options
% 1.49/0.99  
% 1.49/0.99  --dbg_backtrace                         false
% 1.49/0.99  --dbg_dump_prop_clauses                 false
% 1.49/0.99  --dbg_dump_prop_clauses_file            -
% 1.49/0.99  --dbg_out_stat                          false
% 1.49/0.99  ------ Parsing...
% 1.49/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.49/0.99  
% 1.49/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.49/0.99  
% 1.49/0.99  ------ Preprocessing... gs_s  sp: 4 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.49/0.99  
% 1.49/0.99  ------ Preprocessing... sf_s  rm: 0 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.49/0.99  ------ Proving...
% 1.49/0.99  ------ Problem Properties 
% 1.49/0.99  
% 1.49/0.99  
% 1.49/0.99  clauses                                 15
% 1.49/0.99  conjectures                             1
% 1.49/0.99  EPR                                     2
% 1.49/0.99  Horn                                    13
% 1.49/0.99  unary                                   0
% 1.49/0.99  binary                                  15
% 1.49/0.99  lits                                    30
% 1.49/0.99  lits eq                                 22
% 1.49/0.99  fd_pure                                 0
% 1.49/0.99  fd_pseudo                               0
% 1.49/0.99  fd_cond                                 0
% 1.49/0.99  fd_pseudo_cond                          0
% 1.49/0.99  AC symbols                              0
% 1.49/0.99  
% 1.49/0.99  ------ Schedule dynamic 5 is on 
% 1.49/0.99  
% 1.49/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.49/0.99  
% 1.49/0.99  
% 1.49/0.99  ------ 
% 1.49/0.99  Current options:
% 1.49/0.99  ------ 
% 1.49/0.99  
% 1.49/0.99  ------ Input Options
% 1.49/0.99  
% 1.49/0.99  --out_options                           all
% 1.49/0.99  --tptp_safe_out                         true
% 1.49/0.99  --problem_path                          ""
% 1.49/0.99  --include_path                          ""
% 1.49/0.99  --clausifier                            res/vclausify_rel
% 1.49/0.99  --clausifier_options                    --mode clausify
% 1.49/0.99  --stdin                                 false
% 1.49/0.99  --stats_out                             all
% 1.49/0.99  
% 1.49/0.99  ------ General Options
% 1.49/0.99  
% 1.49/0.99  --fof                                   false
% 1.49/0.99  --time_out_real                         305.
% 1.49/0.99  --time_out_virtual                      -1.
% 1.49/0.99  --symbol_type_check                     false
% 1.49/0.99  --clausify_out                          false
% 1.49/0.99  --sig_cnt_out                           false
% 1.49/0.99  --trig_cnt_out                          false
% 1.49/0.99  --trig_cnt_out_tolerance                1.
% 1.49/0.99  --trig_cnt_out_sk_spl                   false
% 1.49/0.99  --abstr_cl_out                          false
% 1.49/0.99  
% 1.49/0.99  ------ Global Options
% 1.49/0.99  
% 1.49/0.99  --schedule                              default
% 1.49/0.99  --add_important_lit                     false
% 1.49/0.99  --prop_solver_per_cl                    1000
% 1.49/0.99  --min_unsat_core                        false
% 1.49/0.99  --soft_assumptions                      false
% 1.49/0.99  --soft_lemma_size                       3
% 1.49/0.99  --prop_impl_unit_size                   0
% 1.49/0.99  --prop_impl_unit                        []
% 1.49/0.99  --share_sel_clauses                     true
% 1.49/0.99  --reset_solvers                         false
% 1.49/0.99  --bc_imp_inh                            [conj_cone]
% 1.49/0.99  --conj_cone_tolerance                   3.
% 1.49/0.99  --extra_neg_conj                        none
% 1.49/0.99  --large_theory_mode                     true
% 1.49/0.99  --prolific_symb_bound                   200
% 1.49/0.99  --lt_threshold                          2000
% 1.49/0.99  --clause_weak_htbl                      true
% 1.49/0.99  --gc_record_bc_elim                     false
% 1.49/0.99  
% 1.49/0.99  ------ Preprocessing Options
% 1.49/0.99  
% 1.49/0.99  --preprocessing_flag                    true
% 1.49/0.99  --time_out_prep_mult                    0.1
% 1.49/0.99  --splitting_mode                        input
% 1.49/0.99  --splitting_grd                         true
% 1.49/0.99  --splitting_cvd                         false
% 1.49/0.99  --splitting_cvd_svl                     false
% 1.49/0.99  --splitting_nvd                         32
% 1.49/0.99  --sub_typing                            true
% 1.49/0.99  --prep_gs_sim                           true
% 1.49/0.99  --prep_unflatten                        true
% 1.49/0.99  --prep_res_sim                          true
% 1.49/0.99  --prep_upred                            true
% 1.49/0.99  --prep_sem_filter                       exhaustive
% 1.49/0.99  --prep_sem_filter_out                   false
% 1.49/0.99  --pred_elim                             true
% 1.49/0.99  --res_sim_input                         true
% 1.49/0.99  --eq_ax_congr_red                       true
% 1.49/0.99  --pure_diseq_elim                       true
% 1.49/0.99  --brand_transform                       false
% 1.49/0.99  --non_eq_to_eq                          false
% 1.49/0.99  --prep_def_merge                        true
% 1.49/0.99  --prep_def_merge_prop_impl              false
% 1.49/0.99  --prep_def_merge_mbd                    true
% 1.49/0.99  --prep_def_merge_tr_red                 false
% 1.49/0.99  --prep_def_merge_tr_cl                  false
% 1.49/0.99  --smt_preprocessing                     true
% 1.49/0.99  --smt_ac_axioms                         fast
% 1.49/0.99  --preprocessed_out                      false
% 1.49/0.99  --preprocessed_stats                    false
% 1.49/0.99  
% 1.49/0.99  ------ Abstraction refinement Options
% 1.49/0.99  
% 1.49/0.99  --abstr_ref                             []
% 1.49/0.99  --abstr_ref_prep                        false
% 1.49/0.99  --abstr_ref_until_sat                   false
% 1.49/0.99  --abstr_ref_sig_restrict                funpre
% 1.49/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.49/0.99  --abstr_ref_under                       []
% 1.49/0.99  
% 1.49/0.99  ------ SAT Options
% 1.49/0.99  
% 1.49/0.99  --sat_mode                              false
% 1.49/0.99  --sat_fm_restart_options                ""
% 1.49/0.99  --sat_gr_def                            false
% 1.49/0.99  --sat_epr_types                         true
% 1.49/0.99  --sat_non_cyclic_types                  false
% 1.49/0.99  --sat_finite_models                     false
% 1.49/0.99  --sat_fm_lemmas                         false
% 1.49/0.99  --sat_fm_prep                           false
% 1.49/0.99  --sat_fm_uc_incr                        true
% 1.49/0.99  --sat_out_model                         small
% 1.49/0.99  --sat_out_clauses                       false
% 1.49/0.99  
% 1.49/0.99  ------ QBF Options
% 1.49/0.99  
% 1.49/0.99  --qbf_mode                              false
% 1.49/0.99  --qbf_elim_univ                         false
% 1.49/0.99  --qbf_dom_inst                          none
% 1.49/0.99  --qbf_dom_pre_inst                      false
% 1.49/0.99  --qbf_sk_in                             false
% 1.49/0.99  --qbf_pred_elim                         true
% 1.49/0.99  --qbf_split                             512
% 1.49/0.99  
% 1.49/0.99  ------ BMC1 Options
% 1.49/0.99  
% 1.49/0.99  --bmc1_incremental                      false
% 1.49/0.99  --bmc1_axioms                           reachable_all
% 1.49/0.99  --bmc1_min_bound                        0
% 1.49/0.99  --bmc1_max_bound                        -1
% 1.49/0.99  --bmc1_max_bound_default                -1
% 1.49/0.99  --bmc1_symbol_reachability              true
% 1.49/0.99  --bmc1_property_lemmas                  false
% 1.49/0.99  --bmc1_k_induction                      false
% 1.49/0.99  --bmc1_non_equiv_states                 false
% 1.49/0.99  --bmc1_deadlock                         false
% 1.49/0.99  --bmc1_ucm                              false
% 1.49/0.99  --bmc1_add_unsat_core                   none
% 1.49/0.99  --bmc1_unsat_core_children              false
% 1.49/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.49/0.99  --bmc1_out_stat                         full
% 1.49/0.99  --bmc1_ground_init                      false
% 1.49/0.99  --bmc1_pre_inst_next_state              false
% 1.49/0.99  --bmc1_pre_inst_state                   false
% 1.49/0.99  --bmc1_pre_inst_reach_state             false
% 1.49/0.99  --bmc1_out_unsat_core                   false
% 1.49/0.99  --bmc1_aig_witness_out                  false
% 1.49/0.99  --bmc1_verbose                          false
% 1.49/0.99  --bmc1_dump_clauses_tptp                false
% 1.49/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.49/0.99  --bmc1_dump_file                        -
% 1.49/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.49/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.49/0.99  --bmc1_ucm_extend_mode                  1
% 1.49/0.99  --bmc1_ucm_init_mode                    2
% 1.49/0.99  --bmc1_ucm_cone_mode                    none
% 1.49/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.49/0.99  --bmc1_ucm_relax_model                  4
% 1.49/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.49/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.49/0.99  --bmc1_ucm_layered_model                none
% 1.49/0.99  --bmc1_ucm_max_lemma_size               10
% 1.49/0.99  
% 1.49/0.99  ------ AIG Options
% 1.49/0.99  
% 1.49/0.99  --aig_mode                              false
% 1.49/0.99  
% 1.49/0.99  ------ Instantiation Options
% 1.49/0.99  
% 1.49/0.99  --instantiation_flag                    true
% 1.49/0.99  --inst_sos_flag                         false
% 1.49/0.99  --inst_sos_phase                        true
% 1.49/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.49/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.49/0.99  --inst_lit_sel_side                     none
% 1.49/0.99  --inst_solver_per_active                1400
% 1.49/0.99  --inst_solver_calls_frac                1.
% 1.49/0.99  --inst_passive_queue_type               priority_queues
% 1.49/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.49/0.99  --inst_passive_queues_freq              [25;2]
% 1.49/0.99  --inst_dismatching                      true
% 1.49/0.99  --inst_eager_unprocessed_to_passive     true
% 1.49/0.99  --inst_prop_sim_given                   true
% 1.49/0.99  --inst_prop_sim_new                     false
% 1.49/0.99  --inst_subs_new                         false
% 1.49/0.99  --inst_eq_res_simp                      false
% 1.49/0.99  --inst_subs_given                       false
% 1.49/0.99  --inst_orphan_elimination               true
% 1.49/0.99  --inst_learning_loop_flag               true
% 1.49/0.99  --inst_learning_start                   3000
% 1.49/0.99  --inst_learning_factor                  2
% 1.49/0.99  --inst_start_prop_sim_after_learn       3
% 1.49/0.99  --inst_sel_renew                        solver
% 1.49/0.99  --inst_lit_activity_flag                true
% 1.49/0.99  --inst_restr_to_given                   false
% 1.49/0.99  --inst_activity_threshold               500
% 1.49/0.99  --inst_out_proof                        true
% 1.49/0.99  
% 1.49/0.99  ------ Resolution Options
% 1.49/0.99  
% 1.49/0.99  --resolution_flag                       false
% 1.49/0.99  --res_lit_sel                           adaptive
% 1.49/0.99  --res_lit_sel_side                      none
% 1.49/0.99  --res_ordering                          kbo
% 1.49/0.99  --res_to_prop_solver                    active
% 1.49/0.99  --res_prop_simpl_new                    false
% 1.49/0.99  --res_prop_simpl_given                  true
% 1.49/0.99  --res_passive_queue_type                priority_queues
% 1.49/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.49/0.99  --res_passive_queues_freq               [15;5]
% 1.49/0.99  --res_forward_subs                      full
% 1.49/0.99  --res_backward_subs                     full
% 1.49/0.99  --res_forward_subs_resolution           true
% 1.49/0.99  --res_backward_subs_resolution          true
% 1.49/0.99  --res_orphan_elimination                true
% 1.49/0.99  --res_time_limit                        2.
% 1.49/0.99  --res_out_proof                         true
% 1.49/0.99  
% 1.49/0.99  ------ Superposition Options
% 1.49/0.99  
% 1.49/0.99  --superposition_flag                    true
% 1.49/0.99  --sup_passive_queue_type                priority_queues
% 1.49/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.49/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.49/0.99  --demod_completeness_check              fast
% 1.49/0.99  --demod_use_ground                      true
% 1.49/0.99  --sup_to_prop_solver                    passive
% 1.49/0.99  --sup_prop_simpl_new                    true
% 1.49/0.99  --sup_prop_simpl_given                  true
% 1.49/0.99  --sup_fun_splitting                     false
% 1.49/0.99  --sup_smt_interval                      50000
% 1.49/0.99  
% 1.49/0.99  ------ Superposition Simplification Setup
% 1.49/0.99  
% 1.49/0.99  --sup_indices_passive                   []
% 1.49/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.49/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.49/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.49/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.49/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.49/0.99  --sup_full_bw                           [BwDemod]
% 1.49/0.99  --sup_immed_triv                        [TrivRules]
% 1.49/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.49/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.49/0.99  --sup_immed_bw_main                     []
% 1.49/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.49/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.49/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.49/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.49/0.99  
% 1.49/0.99  ------ Combination Options
% 1.49/0.99  
% 1.49/0.99  --comb_res_mult                         3
% 1.49/0.99  --comb_sup_mult                         2
% 1.49/0.99  --comb_inst_mult                        10
% 1.49/0.99  
% 1.49/0.99  ------ Debug Options
% 1.49/0.99  
% 1.49/0.99  --dbg_backtrace                         false
% 1.49/0.99  --dbg_dump_prop_clauses                 false
% 1.49/0.99  --dbg_dump_prop_clauses_file            -
% 1.49/0.99  --dbg_out_stat                          false
% 1.49/0.99  
% 1.49/0.99  
% 1.49/0.99  
% 1.49/0.99  
% 1.49/0.99  ------ Proving...
% 1.49/0.99  
% 1.49/0.99  
% 1.49/0.99  % SZS status Theorem for theBenchmark.p
% 1.49/0.99  
% 1.49/0.99   Resolution empty clause
% 1.49/0.99  
% 1.49/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.49/0.99  
% 1.49/0.99  fof(f1,axiom,(
% 1.49/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => k3_xboole_0(X0,X1) = X0)),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f16,plain,(
% 1.49/0.99    ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1))),
% 1.49/0.99    inference(ennf_transformation,[],[f1])).
% 1.49/0.99  
% 1.49/0.99  fof(f34,plain,(
% 1.49/0.99    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = X0 | ~r1_tarski(X0,X1)) )),
% 1.49/0.99    inference(cnf_transformation,[],[f16])).
% 1.49/0.99  
% 1.49/0.99  fof(f2,axiom,(
% 1.49/0.99    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f17,plain,(
% 1.49/0.99    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.49/0.99    inference(ennf_transformation,[],[f2])).
% 1.49/0.99  
% 1.49/0.99  fof(f31,plain,(
% 1.49/0.99    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 1.49/0.99    inference(nnf_transformation,[],[f17])).
% 1.49/0.99  
% 1.49/0.99  fof(f35,plain,(
% 1.49/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.49/0.99    inference(cnf_transformation,[],[f31])).
% 1.49/0.99  
% 1.49/0.99  fof(f9,axiom,(
% 1.49/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f25,plain,(
% 1.49/0.99    ! [X0,X1,X2] : ((v5_relat_1(X2,X1) & v4_relat_1(X2,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.49/0.99    inference(ennf_transformation,[],[f9])).
% 1.49/0.99  
% 1.49/0.99  fof(f44,plain,(
% 1.49/0.99    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.49/0.99    inference(cnf_transformation,[],[f25])).
% 1.49/0.99  
% 1.49/0.99  fof(f8,axiom,(
% 1.49/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f24,plain,(
% 1.49/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.49/0.99    inference(ennf_transformation,[],[f8])).
% 1.49/0.99  
% 1.49/0.99  fof(f42,plain,(
% 1.49/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.49/0.99    inference(cnf_transformation,[],[f24])).
% 1.49/0.99  
% 1.49/0.99  fof(f14,conjecture,(
% 1.49/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => (k1_relset_1(X1,X0,X2) = k8_relset_1(X1,X0,X2,k7_relset_1(X1,X0,X2,X1)) & k2_relset_1(X1,X0,X2) = k7_relset_1(X1,X0,X2,k8_relset_1(X1,X0,X2,X0))))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f15,negated_conjecture,(
% 1.49/0.99    ~! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => (k1_relset_1(X1,X0,X2) = k8_relset_1(X1,X0,X2,k7_relset_1(X1,X0,X2,X1)) & k2_relset_1(X1,X0,X2) = k7_relset_1(X1,X0,X2,k8_relset_1(X1,X0,X2,X0))))),
% 1.49/0.99    inference(negated_conjecture,[],[f14])).
% 1.49/0.99  
% 1.49/0.99  fof(f30,plain,(
% 1.49/0.99    ? [X0,X1,X2] : ((k1_relset_1(X1,X0,X2) != k8_relset_1(X1,X0,X2,k7_relset_1(X1,X0,X2,X1)) | k2_relset_1(X1,X0,X2) != k7_relset_1(X1,X0,X2,k8_relset_1(X1,X0,X2,X0))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 1.49/0.99    inference(ennf_transformation,[],[f15])).
% 1.49/0.99  
% 1.49/0.99  fof(f32,plain,(
% 1.49/0.99    ? [X0,X1,X2] : ((k1_relset_1(X1,X0,X2) != k8_relset_1(X1,X0,X2,k7_relset_1(X1,X0,X2,X1)) | k2_relset_1(X1,X0,X2) != k7_relset_1(X1,X0,X2,k8_relset_1(X1,X0,X2,X0))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) => ((k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1)) | k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))))),
% 1.49/0.99    introduced(choice_axiom,[])).
% 1.49/0.99  
% 1.49/0.99  fof(f33,plain,(
% 1.49/0.99    (k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1)) | k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0))) & m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 1.49/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f30,f32])).
% 1.49/0.99  
% 1.49/0.99  fof(f49,plain,(
% 1.49/0.99    m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 1.49/0.99    inference(cnf_transformation,[],[f33])).
% 1.49/0.99  
% 1.49/0.99  fof(f5,axiom,(
% 1.49/0.99    ! [X0,X1] : (v1_relat_1(X1) => k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f20,plain,(
% 1.49/0.99    ! [X0,X1] : (k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.49/0.99    inference(ennf_transformation,[],[f5])).
% 1.49/0.99  
% 1.49/0.99  fof(f39,plain,(
% 1.49/0.99    ( ! [X0,X1] : (k10_relat_1(X1,X0) = k10_relat_1(X1,k3_xboole_0(k2_relat_1(X1),X0)) | ~v1_relat_1(X1)) )),
% 1.49/0.99    inference(cnf_transformation,[],[f20])).
% 1.49/0.99  
% 1.49/0.99  fof(f6,axiom,(
% 1.49/0.99    ! [X0] : (v1_relat_1(X0) => k1_relat_1(X0) = k10_relat_1(X0,k2_relat_1(X0)))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f21,plain,(
% 1.49/0.99    ! [X0] : (k1_relat_1(X0) = k10_relat_1(X0,k2_relat_1(X0)) | ~v1_relat_1(X0))),
% 1.49/0.99    inference(ennf_transformation,[],[f6])).
% 1.49/0.99  
% 1.49/0.99  fof(f40,plain,(
% 1.49/0.99    ( ! [X0] : (k1_relat_1(X0) = k10_relat_1(X0,k2_relat_1(X0)) | ~v1_relat_1(X0)) )),
% 1.49/0.99    inference(cnf_transformation,[],[f21])).
% 1.49/0.99  
% 1.49/0.99  fof(f43,plain,(
% 1.49/0.99    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.49/0.99    inference(cnf_transformation,[],[f25])).
% 1.49/0.99  
% 1.49/0.99  fof(f7,axiom,(
% 1.49/0.99    ! [X0,X1] : ((v4_relat_1(X1,X0) & v1_relat_1(X1)) => k7_relat_1(X1,X0) = X1)),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f22,plain,(
% 1.49/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | (~v4_relat_1(X1,X0) | ~v1_relat_1(X1)))),
% 1.49/0.99    inference(ennf_transformation,[],[f7])).
% 1.49/0.99  
% 1.49/0.99  fof(f23,plain,(
% 1.49/0.99    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.49/0.99    inference(flattening,[],[f22])).
% 1.49/0.99  
% 1.49/0.99  fof(f41,plain,(
% 1.49/0.99    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.49/0.99    inference(cnf_transformation,[],[f23])).
% 1.49/0.99  
% 1.49/0.99  fof(f4,axiom,(
% 1.49/0.99    ! [X0,X1] : (v1_relat_1(X1) => k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f19,plain,(
% 1.49/0.99    ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 1.49/0.99    inference(ennf_transformation,[],[f4])).
% 1.49/0.99  
% 1.49/0.99  fof(f38,plain,(
% 1.49/0.99    ( ! [X0,X1] : (k2_relat_1(k7_relat_1(X1,X0)) = k9_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.49/0.99    inference(cnf_transformation,[],[f19])).
% 1.49/0.99  
% 1.49/0.99  fof(f11,axiom,(
% 1.49/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f27,plain,(
% 1.49/0.99    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.49/0.99    inference(ennf_transformation,[],[f11])).
% 1.49/0.99  
% 1.49/0.99  fof(f46,plain,(
% 1.49/0.99    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.49/0.99    inference(cnf_transformation,[],[f27])).
% 1.49/0.99  
% 1.49/0.99  fof(f10,axiom,(
% 1.49/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f26,plain,(
% 1.49/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.49/0.99    inference(ennf_transformation,[],[f10])).
% 1.49/0.99  
% 1.49/0.99  fof(f45,plain,(
% 1.49/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.49/0.99    inference(cnf_transformation,[],[f26])).
% 1.49/0.99  
% 1.49/0.99  fof(f50,plain,(
% 1.49/0.99    k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1)) | k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0))),
% 1.49/0.99    inference(cnf_transformation,[],[f33])).
% 1.49/0.99  
% 1.49/0.99  fof(f12,axiom,(
% 1.49/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f28,plain,(
% 1.49/0.99    ! [X0,X1,X2,X3] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.49/0.99    inference(ennf_transformation,[],[f12])).
% 1.49/0.99  
% 1.49/0.99  fof(f47,plain,(
% 1.49/0.99    ( ! [X2,X0,X3,X1] : (k9_relat_1(X2,X3) = k7_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.49/0.99    inference(cnf_transformation,[],[f28])).
% 1.49/0.99  
% 1.49/0.99  fof(f13,axiom,(
% 1.49/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f29,plain,(
% 1.49/0.99    ! [X0,X1,X2,X3] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.49/0.99    inference(ennf_transformation,[],[f13])).
% 1.49/0.99  
% 1.49/0.99  fof(f48,plain,(
% 1.49/0.99    ( ! [X2,X0,X3,X1] : (k10_relat_1(X2,X3) = k8_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.49/0.99    inference(cnf_transformation,[],[f29])).
% 1.49/0.99  
% 1.49/0.99  fof(f3,axiom,(
% 1.49/0.99    ! [X0] : (v1_relat_1(X0) => k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0)))),
% 1.49/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.49/0.99  
% 1.49/0.99  fof(f18,plain,(
% 1.49/0.99    ! [X0] : (k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0)) | ~v1_relat_1(X0))),
% 1.49/0.99    inference(ennf_transformation,[],[f3])).
% 1.49/0.99  
% 1.49/0.99  fof(f37,plain,(
% 1.49/0.99    ( ! [X0] : (k2_relat_1(X0) = k9_relat_1(X0,k1_relat_1(X0)) | ~v1_relat_1(X0)) )),
% 1.49/0.99    inference(cnf_transformation,[],[f18])).
% 1.49/0.99  
% 1.49/0.99  cnf(c_0,plain,
% 1.49/0.99      ( ~ r1_tarski(X0,X1) | k3_xboole_0(X0,X1) = X0 ),
% 1.49/0.99      inference(cnf_transformation,[],[f34]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_2,plain,
% 1.49/0.99      ( ~ v5_relat_1(X0,X1) | r1_tarski(k2_relat_1(X0),X1) | ~ v1_relat_1(X0) ),
% 1.49/0.99      inference(cnf_transformation,[],[f35]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_223,plain,
% 1.49/0.99      ( ~ v5_relat_1(X0,X1)
% 1.49/0.99      | ~ v1_relat_1(X0)
% 1.49/0.99      | X1 != X2
% 1.49/0.99      | k3_xboole_0(X3,X2) = X3
% 1.49/0.99      | k2_relat_1(X0) != X3 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_0,c_2]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_224,plain,
% 1.49/0.99      ( ~ v5_relat_1(X0,X1)
% 1.49/0.99      | ~ v1_relat_1(X0)
% 1.49/0.99      | k3_xboole_0(k2_relat_1(X0),X1) = k2_relat_1(X0) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_223]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_9,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v5_relat_1(X0,X2) ),
% 1.49/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_242,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.49/0.99      | ~ v1_relat_1(X3)
% 1.49/0.99      | X0 != X3
% 1.49/0.99      | X2 != X4
% 1.49/0.99      | k3_xboole_0(k2_relat_1(X3),X4) = k2_relat_1(X3) ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_224,c_9]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_243,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.49/0.99      | ~ v1_relat_1(X0)
% 1.49/0.99      | k3_xboole_0(k2_relat_1(X0),X2) = k2_relat_1(X0) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_242]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_8,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v1_relat_1(X0) ),
% 1.49/0.99      inference(cnf_transformation,[],[f42]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_247,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.49/0.99      | k3_xboole_0(k2_relat_1(X0),X2) = k2_relat_1(X0) ),
% 1.49/0.99      inference(global_propositional_subsumption,[status(thm)],[c_243,c_8]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_16,negated_conjecture,
% 1.49/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
% 1.49/0.99      inference(cnf_transformation,[],[f49]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_263,plain,
% 1.49/0.99      ( k3_xboole_0(k2_relat_1(X0),X1) = k2_relat_1(X0)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X2,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X0 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_247,c_16]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_264,plain,
% 1.49/0.99      ( k3_xboole_0(k2_relat_1(sK2),X0) = k2_relat_1(sK2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_263]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_411,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k3_xboole_0(k2_relat_1(sK2),X0_48) = k2_relat_1(sK2) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_264]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_654,plain,
% 1.49/0.99      ( k3_xboole_0(k2_relat_1(sK2),sK0) = k2_relat_1(sK2) ),
% 1.49/0.99      inference(equality_resolution,[status(thm)],[c_411]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_5,plain,
% 1.49/0.99      ( ~ v1_relat_1(X0)
% 1.49/0.99      | k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1) ),
% 1.49/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_317,plain,
% 1.49/0.99      ( v1_relat_1(X0)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X0 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_8,c_16]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_318,plain,
% 1.49/0.99      ( v1_relat_1(sK2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_317]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_353,plain,
% 1.49/0.99      ( k10_relat_1(X0,k3_xboole_0(k2_relat_1(X0),X1)) = k10_relat_1(X0,X1)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X2,X3)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X0 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_5,c_318]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_354,plain,
% 1.49/0.99      ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0)) = k10_relat_1(sK2,X0)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_353]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_404,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X1_48)) = k10_relat_1(sK2,X1_48) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_354]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_413,plain,
% 1.49/0.99      ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0_48)) = k10_relat_1(sK2,X0_48)
% 1.49/0.99      | ~ sP0_iProver_split ),
% 1.49/0.99      inference(splitting,
% 1.49/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.49/0.99                [c_404]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_555,plain,
% 1.49/0.99      ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0_48)) = k10_relat_1(sK2,X0_48)
% 1.49/0.99      | sP0_iProver_split != iProver_top ),
% 1.49/0.99      inference(predicate_to_equality,[status(thm)],[c_413]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_415,plain,
% 1.49/0.99      ( sP1_iProver_split | sP0_iProver_split ),
% 1.49/0.99      inference(splitting,
% 1.49/0.99                [splitting(split),new_symbols(definition,[])],
% 1.49/0.99                [c_404]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_414,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | ~ sP1_iProver_split ),
% 1.49/0.99      inference(splitting,
% 1.49/0.99                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.49/0.99                [c_404]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_465,plain,
% 1.49/0.99      ( ~ sP1_iProver_split
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(instantiation,[status(thm)],[c_414]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_421,plain,( X0_51 = X0_51 ),theory(equality) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_630,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(instantiation,[status(thm)],[c_421]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_954,plain,
% 1.49/0.99      ( k10_relat_1(sK2,k3_xboole_0(k2_relat_1(sK2),X0_48)) = k10_relat_1(sK2,X0_48) ),
% 1.49/0.99      inference(global_propositional_subsumption,
% 1.49/0.99                [status(thm)],
% 1.49/0.99                [c_555,c_415,c_465,c_413,c_630]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_958,plain,
% 1.49/0.99      ( k10_relat_1(sK2,k2_relat_1(sK2)) = k10_relat_1(sK2,sK0) ),
% 1.49/0.99      inference(superposition,[status(thm)],[c_654,c_954]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_6,plain,
% 1.49/0.99      ( ~ v1_relat_1(X0) | k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0) ),
% 1.49/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_344,plain,
% 1.49/0.99      ( k10_relat_1(X0,k2_relat_1(X0)) = k1_relat_1(X0)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X0 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_318]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_345,plain,
% 1.49/0.99      ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_344]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_405,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_345]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_462,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
% 1.49/0.99      inference(instantiation,[status(thm)],[c_405]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_674,plain,
% 1.49/0.99      ( k10_relat_1(sK2,k2_relat_1(sK2)) = k1_relat_1(sK2) ),
% 1.49/0.99      inference(global_propositional_subsumption,
% 1.49/0.99                [status(thm)],
% 1.49/0.99                [c_405,c_462,c_630]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_959,plain,
% 1.49/0.99      ( k10_relat_1(sK2,sK0) = k1_relat_1(sK2) ),
% 1.49/0.99      inference(light_normalisation,[status(thm)],[c_958,c_674]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_10,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) | v4_relat_1(X0,X1) ),
% 1.49/0.99      inference(cnf_transformation,[],[f43]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_7,plain,
% 1.49/0.99      ( ~ v4_relat_1(X0,X1) | ~ v1_relat_1(X0) | k7_relat_1(X0,X1) = X0 ),
% 1.49/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_202,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.49/0.99      | ~ v1_relat_1(X0)
% 1.49/0.99      | k7_relat_1(X0,X1) = X0 ),
% 1.49/0.99      inference(resolution,[status(thm)],[c_10,c_7]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_206,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.49/0.99      | k7_relat_1(X0,X1) = X0 ),
% 1.49/0.99      inference(global_propositional_subsumption,
% 1.49/0.99                [status(thm)],
% 1.49/0.99                [c_202,c_10,c_8,c_7]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_272,plain,
% 1.49/0.99      ( k7_relat_1(X0,X1) = X0
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X0 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_206,c_16]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_273,plain,
% 1.49/0.99      ( k7_relat_1(sK2,X0) = sK2
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_272]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_410,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k7_relat_1(sK2,X0_50) = sK2 ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_273]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_629,plain,
% 1.49/0.99      ( k7_relat_1(sK2,sK1) = sK2 ),
% 1.49/0.99      inference(equality_resolution,[status(thm)],[c_410]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_4,plain,
% 1.49/0.99      ( ~ v1_relat_1(X0) | k2_relat_1(k7_relat_1(X0,X1)) = k9_relat_1(X0,X1) ),
% 1.49/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_362,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k2_relat_1(k7_relat_1(X2,X3)) = k9_relat_1(X2,X3)
% 1.49/0.99      | sK2 != X2 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_318]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_363,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k2_relat_1(k7_relat_1(sK2,X2)) = k9_relat_1(sK2,X2) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_362]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_403,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k2_relat_1(k7_relat_1(sK2,X1_50)) = k9_relat_1(sK2,X1_50) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_363]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_416,plain,
% 1.49/0.99      ( k2_relat_1(k7_relat_1(sK2,X0_50)) = k9_relat_1(sK2,X0_50)
% 1.49/0.99      | ~ sP2_iProver_split ),
% 1.49/0.99      inference(splitting,
% 1.49/0.99                [splitting(split),new_symbols(definition,[sP2_iProver_split])],
% 1.49/0.99                [c_403]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_558,plain,
% 1.49/0.99      ( k2_relat_1(k7_relat_1(sK2,X0_50)) = k9_relat_1(sK2,X0_50)
% 1.49/0.99      | sP2_iProver_split != iProver_top ),
% 1.49/0.99      inference(predicate_to_equality,[status(thm)],[c_416]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_417,plain,
% 1.49/0.99      ( sP2_iProver_split | sP1_iProver_split ),
% 1.49/0.99      inference(splitting,
% 1.49/0.99                [splitting(split),new_symbols(definition,[])],
% 1.49/0.99                [c_403]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_821,plain,
% 1.49/0.99      ( k2_relat_1(k7_relat_1(sK2,X0_50)) = k9_relat_1(sK2,X0_50) ),
% 1.49/0.99      inference(global_propositional_subsumption,
% 1.49/0.99                [status(thm)],
% 1.49/0.99                [c_558,c_465,c_417,c_416,c_630]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_825,plain,
% 1.49/0.99      ( k9_relat_1(sK2,sK1) = k2_relat_1(sK2) ),
% 1.49/0.99      inference(superposition,[status(thm)],[c_629,c_821]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_12,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.49/0.99      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 1.49/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_299,plain,
% 1.49/0.99      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X2 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_16]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_300,plain,
% 1.49/0.99      ( k2_relset_1(X0,X1,sK2) = k2_relat_1(sK2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_299]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_407,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k2_relset_1(X0_50,X0_48,sK2) = k2_relat_1(sK2) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_300]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_647,plain,
% 1.49/0.99      ( k2_relset_1(sK1,sK0,sK2) = k2_relat_1(sK2) ),
% 1.49/0.99      inference(equality_resolution,[status(thm)],[c_407]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_11,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.49/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 1.49/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_308,plain,
% 1.49/0.99      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X2 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_11,c_16]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_309,plain,
% 1.49/0.99      ( k1_relset_1(X0,X1,sK2) = k1_relat_1(sK2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_308]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_406,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k1_relset_1(X0_50,X0_48,sK2) = k1_relat_1(sK2) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_309]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_644,plain,
% 1.49/0.99      ( k1_relset_1(sK1,sK0,sK2) = k1_relat_1(sK2) ),
% 1.49/0.99      inference(equality_resolution,[status(thm)],[c_406]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_15,negated_conjecture,
% 1.49/0.99      ( k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0))
% 1.49/0.99      | k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1)) ),
% 1.49/0.99      inference(cnf_transformation,[],[f50]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_412,negated_conjecture,
% 1.49/0.99      ( k1_relset_1(sK1,sK0,sK2) != k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1))
% 1.49/0.99      | k2_relset_1(sK1,sK0,sK2) != k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0)) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_15]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_678,plain,
% 1.49/0.99      ( k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1)) != k1_relat_1(sK2)
% 1.49/0.99      | k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0)) != k2_relset_1(sK1,sK0,sK2) ),
% 1.49/0.99      inference(demodulation,[status(thm)],[c_644,c_412]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_701,plain,
% 1.49/0.99      ( k8_relset_1(sK1,sK0,sK2,k7_relset_1(sK1,sK0,sK2,sK1)) != k1_relat_1(sK2)
% 1.49/0.99      | k7_relset_1(sK1,sK0,sK2,k8_relset_1(sK1,sK0,sK2,sK0)) != k2_relat_1(sK2) ),
% 1.49/0.99      inference(demodulation,[status(thm)],[c_647,c_678]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_13,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.49/0.99      | k7_relset_1(X1,X2,X0,X3) = k9_relat_1(X0,X3) ),
% 1.49/0.99      inference(cnf_transformation,[],[f47]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_290,plain,
% 1.49/0.99      ( k7_relset_1(X0,X1,X2,X3) = k9_relat_1(X2,X3)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X2 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_13,c_16]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_291,plain,
% 1.49/0.99      ( k7_relset_1(X0,X1,sK2,X2) = k9_relat_1(sK2,X2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_290]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_408,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k7_relset_1(X0_50,X0_48,sK2,X1_50) = k9_relat_1(sK2,X1_50) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_291]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_657,plain,
% 1.49/0.99      ( k7_relset_1(sK1,sK0,sK2,X0_50) = k9_relat_1(sK2,X0_50) ),
% 1.49/0.99      inference(equality_resolution,[status(thm)],[c_408]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_14,plain,
% 1.49/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.49/0.99      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 1.49/0.99      inference(cnf_transformation,[],[f48]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_281,plain,
% 1.49/0.99      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X2 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_14,c_16]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_282,plain,
% 1.49/0.99      ( k8_relset_1(X0,X1,sK2,X2) = k10_relat_1(sK2,X2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_281]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_409,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k8_relset_1(X0_50,X0_48,sK2,X1_48) = k10_relat_1(sK2,X1_48) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_282]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_666,plain,
% 1.49/0.99      ( k8_relset_1(sK1,sK0,sK2,X0_48) = k10_relat_1(sK2,X0_48) ),
% 1.49/0.99      inference(equality_resolution,[status(thm)],[c_409]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_817,plain,
% 1.49/0.99      ( k10_relat_1(sK2,k9_relat_1(sK2,sK1)) != k1_relat_1(sK2)
% 1.49/0.99      | k9_relat_1(sK2,k10_relat_1(sK2,sK0)) != k2_relat_1(sK2) ),
% 1.49/0.99      inference(demodulation,[status(thm)],[c_701,c_657,c_666]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_889,plain,
% 1.49/0.99      ( k10_relat_1(sK2,k2_relat_1(sK2)) != k1_relat_1(sK2)
% 1.49/0.99      | k9_relat_1(sK2,k10_relat_1(sK2,sK0)) != k2_relat_1(sK2) ),
% 1.49/0.99      inference(demodulation,[status(thm)],[c_825,c_817]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_890,plain,
% 1.49/0.99      ( k1_relat_1(sK2) != k1_relat_1(sK2)
% 1.49/0.99      | k9_relat_1(sK2,k10_relat_1(sK2,sK0)) != k2_relat_1(sK2) ),
% 1.49/0.99      inference(light_normalisation,[status(thm)],[c_889,c_674]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_891,plain,
% 1.49/0.99      ( k9_relat_1(sK2,k10_relat_1(sK2,sK0)) != k2_relat_1(sK2) ),
% 1.49/0.99      inference(equality_resolution_simp,[status(thm)],[c_890]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_1001,plain,
% 1.49/0.99      ( k9_relat_1(sK2,k1_relat_1(sK2)) != k2_relat_1(sK2) ),
% 1.49/0.99      inference(demodulation,[status(thm)],[c_959,c_891]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_3,plain,
% 1.49/0.99      ( ~ v1_relat_1(X0) | k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0) ),
% 1.49/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_371,plain,
% 1.49/0.99      ( k9_relat_1(X0,k1_relat_1(X0)) = k2_relat_1(X0)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X1,X2)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | sK2 != X0 ),
% 1.49/0.99      inference(resolution_lifted,[status(thm)],[c_3,c_318]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_372,plain,
% 1.49/0.99      ( k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2)
% 1.49/0.99      | k1_zfmisc_1(k2_zfmisc_1(X0,X1)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.49/0.99      inference(unflattening,[status(thm)],[c_371]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_402,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(X0_50,X0_48)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2) ),
% 1.49/0.99      inference(subtyping,[status(esa)],[c_372]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_475,plain,
% 1.49/0.99      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.49/0.99      | k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2) ),
% 1.49/0.99      inference(instantiation,[status(thm)],[c_402]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_671,plain,
% 1.49/0.99      ( k9_relat_1(sK2,k1_relat_1(sK2)) = k2_relat_1(sK2) ),
% 1.49/0.99      inference(global_propositional_subsumption,
% 1.49/0.99                [status(thm)],
% 1.49/0.99                [c_402,c_475,c_630]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_1002,plain,
% 1.49/0.99      ( k2_relat_1(sK2) != k2_relat_1(sK2) ),
% 1.49/0.99      inference(light_normalisation,[status(thm)],[c_1001,c_671]) ).
% 1.49/0.99  
% 1.49/0.99  cnf(c_1003,plain,
% 1.49/0.99      ( $false ),
% 1.49/0.99      inference(equality_resolution_simp,[status(thm)],[c_1002]) ).
% 1.49/0.99  
% 1.49/0.99  
% 1.49/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.49/0.99  
% 1.49/0.99  ------                               Statistics
% 1.49/0.99  
% 1.49/0.99  ------ General
% 1.49/0.99  
% 1.49/0.99  abstr_ref_over_cycles:                  0
% 1.49/0.99  abstr_ref_under_cycles:                 0
% 1.49/0.99  gc_basic_clause_elim:                   0
% 1.49/0.99  forced_gc_time:                         0
% 1.49/0.99  parsing_time:                           0.008
% 1.49/0.99  unif_index_cands_time:                  0.
% 1.49/0.99  unif_index_add_time:                    0.
% 1.49/0.99  orderings_time:                         0.
% 1.49/0.99  out_proof_time:                         0.01
% 1.49/0.99  total_time:                             0.071
% 1.49/0.99  num_of_symbols:                         59
% 1.49/0.99  num_of_terms:                           1183
% 1.49/0.99  
% 1.49/0.99  ------ Preprocessing
% 1.49/0.99  
% 1.49/0.99  num_of_splits:                          4
% 1.49/0.99  num_of_split_atoms:                     3
% 1.49/0.99  num_of_reused_defs:                     1
% 1.49/0.99  num_eq_ax_congr_red:                    16
% 1.49/0.99  num_of_sem_filtered_clauses:            0
% 1.49/0.99  num_of_subtypes:                        5
% 1.49/0.99  monotx_restored_types:                  0
% 1.49/0.99  sat_num_of_epr_types:                   0
% 1.49/0.99  sat_num_of_non_cyclic_types:            0
% 1.49/0.99  sat_guarded_non_collapsed_types:        0
% 1.49/0.99  num_pure_diseq_elim:                    0
% 1.49/0.99  simp_replaced_by:                       0
% 1.49/0.99  res_preprocessed:                       98
% 1.49/0.99  prep_upred:                             0
% 1.49/0.99  prep_unflattend:                        15
% 1.49/0.99  smt_new_axioms:                         0
% 1.49/0.99  pred_elim_cands:                        0
% 1.49/0.99  pred_elim:                              5
% 1.49/0.99  pred_elim_cl:                           6
% 1.49/0.99  pred_elim_cycles:                       6
% 1.49/0.99  merged_defs:                            0
% 1.49/0.99  merged_defs_ncl:                        0
% 1.49/0.99  bin_hyper_res:                          0
% 1.49/0.99  prep_cycles:                            4
% 1.49/0.99  pred_elim_time:                         0.003
% 1.49/0.99  splitting_time:                         0.
% 1.49/0.99  sem_filter_time:                        0.
% 1.49/0.99  monotx_time:                            0.
% 1.49/0.99  subtype_inf_time:                       0.
% 1.49/0.99  
% 1.49/0.99  ------ Problem properties
% 1.49/0.99  
% 1.49/0.99  clauses:                                15
% 1.49/0.99  conjectures:                            1
% 1.49/0.99  epr:                                    2
% 1.49/0.99  horn:                                   13
% 1.49/0.99  ground:                                 3
% 1.49/0.99  unary:                                  0
% 1.49/0.99  binary:                                 15
% 1.49/0.99  lits:                                   30
% 1.49/0.99  lits_eq:                                22
% 1.49/0.99  fd_pure:                                0
% 1.49/0.99  fd_pseudo:                              0
% 1.49/0.99  fd_cond:                                0
% 1.49/0.99  fd_pseudo_cond:                         0
% 1.49/0.99  ac_symbols:                             0
% 1.49/0.99  
% 1.49/0.99  ------ Propositional Solver
% 1.49/0.99  
% 1.49/0.99  prop_solver_calls:                      27
% 1.49/0.99  prop_fast_solver_calls:                 525
% 1.49/0.99  smt_solver_calls:                       0
% 1.49/0.99  smt_fast_solver_calls:                  0
% 1.49/0.99  prop_num_of_clauses:                    330
% 1.49/0.99  prop_preprocess_simplified:             2215
% 1.49/0.99  prop_fo_subsumed:                       7
% 1.49/0.99  prop_solver_time:                       0.
% 1.49/0.99  smt_solver_time:                        0.
% 1.49/0.99  smt_fast_solver_time:                   0.
% 1.49/0.99  prop_fast_solver_time:                  0.
% 1.49/0.99  prop_unsat_core_time:                   0.
% 1.49/0.99  
% 1.49/0.99  ------ QBF
% 1.49/0.99  
% 1.49/0.99  qbf_q_res:                              0
% 1.49/0.99  qbf_num_tautologies:                    0
% 1.49/0.99  qbf_prep_cycles:                        0
% 1.49/0.99  
% 1.49/0.99  ------ BMC1
% 1.49/0.99  
% 1.49/0.99  bmc1_current_bound:                     -1
% 1.49/0.99  bmc1_last_solved_bound:                 -1
% 1.49/0.99  bmc1_unsat_core_size:                   -1
% 1.49/0.99  bmc1_unsat_core_parents_size:           -1
% 1.49/0.99  bmc1_merge_next_fun:                    0
% 1.49/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.49/0.99  
% 1.49/0.99  ------ Instantiation
% 1.49/0.99  
% 1.49/0.99  inst_num_of_clauses:                    141
% 1.49/0.99  inst_num_in_passive:                    35
% 1.49/0.99  inst_num_in_active:                     102
% 1.49/0.99  inst_num_in_unprocessed:                4
% 1.49/0.99  inst_num_of_loops:                      120
% 1.49/0.99  inst_num_of_learning_restarts:          0
% 1.49/0.99  inst_num_moves_active_passive:          13
% 1.49/0.99  inst_lit_activity:                      0
% 1.49/0.99  inst_lit_activity_moves:                0
% 1.49/0.99  inst_num_tautologies:                   0
% 1.49/0.99  inst_num_prop_implied:                  0
% 1.49/0.99  inst_num_existing_simplified:           0
% 1.49/0.99  inst_num_eq_res_simplified:             0
% 1.49/0.99  inst_num_child_elim:                    0
% 1.49/0.99  inst_num_of_dismatching_blockings:      20
% 1.49/0.99  inst_num_of_non_proper_insts:           99
% 1.49/0.99  inst_num_of_duplicates:                 0
% 1.49/0.99  inst_inst_num_from_inst_to_res:         0
% 1.49/0.99  inst_dismatching_checking_time:         0.
% 1.49/0.99  
% 1.49/0.99  ------ Resolution
% 1.49/0.99  
% 1.49/0.99  res_num_of_clauses:                     0
% 1.49/0.99  res_num_in_passive:                     0
% 1.49/0.99  res_num_in_active:                      0
% 1.49/0.99  res_num_of_loops:                       102
% 1.49/0.99  res_forward_subset_subsumed:            31
% 1.49/0.99  res_backward_subset_subsumed:           0
% 1.49/0.99  res_forward_subsumed:                   0
% 1.49/0.99  res_backward_subsumed:                  0
% 1.49/0.99  res_forward_subsumption_resolution:     0
% 1.49/0.99  res_backward_subsumption_resolution:    0
% 1.49/0.99  res_clause_to_clause_subsumption:       14
% 1.49/0.99  res_orphan_elimination:                 0
% 1.49/0.99  res_tautology_del:                      16
% 1.49/0.99  res_num_eq_res_simplified:              0
% 1.49/0.99  res_num_sel_changes:                    0
% 1.49/0.99  res_moves_from_active_to_pass:          0
% 1.49/0.99  
% 1.49/0.99  ------ Superposition
% 1.49/0.99  
% 1.49/0.99  sup_time_total:                         0.
% 1.49/0.99  sup_time_generating:                    0.
% 1.49/0.99  sup_time_sim_full:                      0.
% 1.49/0.99  sup_time_sim_immed:                     0.
% 1.49/0.99  
% 1.49/0.99  sup_num_of_clauses:                     21
% 1.49/0.99  sup_num_in_active:                      18
% 1.49/0.99  sup_num_in_passive:                     3
% 1.49/0.99  sup_num_of_loops:                       22
% 1.49/0.99  sup_fw_superposition:                   2
% 1.49/0.99  sup_bw_superposition:                   0
% 1.49/0.99  sup_immediate_simplified:               2
% 1.49/0.99  sup_given_eliminated:                   0
% 1.49/0.99  comparisons_done:                       0
% 1.49/0.99  comparisons_avoided:                    0
% 1.49/0.99  
% 1.49/0.99  ------ Simplifications
% 1.49/0.99  
% 1.49/0.99  
% 1.49/0.99  sim_fw_subset_subsumed:                 0
% 1.49/0.99  sim_bw_subset_subsumed:                 0
% 1.49/0.99  sim_fw_subsumed:                        0
% 1.49/0.99  sim_bw_subsumed:                        0
% 1.49/0.99  sim_fw_subsumption_res:                 0
% 1.49/0.99  sim_bw_subsumption_res:                 0
% 1.49/0.99  sim_tautology_del:                      0
% 1.49/0.99  sim_eq_tautology_del:                   0
% 1.49/0.99  sim_eq_res_simp:                        1
% 1.49/0.99  sim_fw_demodulated:                     1
% 1.49/0.99  sim_bw_demodulated:                     4
% 1.49/0.99  sim_light_normalised:                   3
% 1.49/0.99  sim_joinable_taut:                      0
% 1.49/0.99  sim_joinable_simp:                      0
% 1.49/0.99  sim_ac_normalised:                      0
% 1.49/0.99  sim_smt_subsumption:                    0
% 1.49/0.99  
%------------------------------------------------------------------------------
