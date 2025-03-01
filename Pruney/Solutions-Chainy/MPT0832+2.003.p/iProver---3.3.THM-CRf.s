%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:55:46 EST 2020

% Result     : Theorem 2.19s
% Output     : CNFRefutation 2.19s
% Verified   : 
% Statistics : Number of formulae       :  132 ( 262 expanded)
%              Number of clauses        :   89 ( 132 expanded)
%              Number of leaves         :   15 (  44 expanded)
%              Depth                    :   18
%              Number of atoms          :  290 ( 566 expanded)
%              Number of equality atoms :   98 ( 117 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    4 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k2_relat_1(k8_relat_1(X0,X1)),X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(k8_relat_1(X0,X1)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f34,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(k8_relat_1(X0,X1)),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k1_relat_1(k8_relat_1(X0,X1)),k1_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k8_relat_1(X0,X1)),k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f36,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(k8_relat_1(X0,X1)),k1_relat_1(X1))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f12,conjecture,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
     => m1_subset_1(k6_relset_1(X2,X0,X1,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))
       => m1_subset_1(k6_relset_1(X2,X0,X1,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f26,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ m1_subset_1(k6_relset_1(X2,X0,X1,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f28,plain,
    ( ? [X0,X1,X2,X3] :
        ( ~ m1_subset_1(k6_relset_1(X2,X0,X1,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) )
   => ( ~ m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,
    ( ~ m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f26,f28])).

fof(f42,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) ),
    inference(cnf_transformation,[],[f29])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f39,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f38,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f31,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f14])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v1_relat_1(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f37,plain,(
    ! [X2,X0,X1] :
      ( v1_relat_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f11,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => ( ( r1_tarski(k2_relat_1(X2),X1)
          & r1_tarski(k1_relat_1(X2),X0) )
       => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(flattening,[],[f24])).

fof(f41,plain,(
    ! [X2,X0,X1] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ r1_tarski(k2_relat_1(X2),X1)
      | ~ r1_tarski(k1_relat_1(X2),X0)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f10,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k8_relat_1(X2,X3) = k6_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1,X2,X3] :
      ( k8_relat_1(X2,X3) = k6_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f40,plain,(
    ! [X2,X0,X3,X1] :
      ( k8_relat_1(X2,X3) = k6_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f43,plain,(
    ~ m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(cnf_transformation,[],[f29])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => r1_tarski(k8_relat_1(X0,X1),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_tarski(k8_relat_1(X0,X1),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f35,plain,(
    ! [X0,X1] :
      ( r1_tarski(k8_relat_1(X0,X1),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f32,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f33,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f16])).

cnf(c_4,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(X0,X1)),X0)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_203,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(X0_42,X1_42)),X0_42)
    | ~ v1_relat_1(X1_42) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_570,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(X0_42,X1_42)),X0_42) = iProver_top
    | v1_relat_1(X1_42) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_203])).

cnf(c_6,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(X0,X1)),k1_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_201,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,X1_42)),k1_relat_1(X1_42))
    | ~ v1_relat_1(X1_42) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_572,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,X1_42)),k1_relat_1(X1_42)) = iProver_top
    | v1_relat_1(X1_42) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_201])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_194,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) ),
    inference(subtyping,[status(esa)],[c_13])).

cnf(c_579,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_194])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_198,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
    | k1_relset_1(X1_42,X2_42,X0_42) = k1_relat_1(X0_42) ),
    inference(subtyping,[status(esa)],[c_9])).

cnf(c_575,plain,
    ( k1_relset_1(X0_42,X1_42,X2_42) = k1_relat_1(X2_42)
    | m1_subset_1(X2_42,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_198])).

cnf(c_1056,plain,
    ( k1_relset_1(sK2,sK0,sK3) = k1_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_579,c_575])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | m1_subset_1(k1_relset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_199,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
    | m1_subset_1(k1_relset_1(X1_42,X2_42,X0_42),k1_zfmisc_1(X1_42)) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_574,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42))) != iProver_top
    | m1_subset_1(k1_relset_1(X1_42,X2_42,X0_42),k1_zfmisc_1(X1_42)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_199])).

cnf(c_1353,plain,
    ( m1_subset_1(k1_relat_1(sK3),k1_zfmisc_1(sK2)) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_1056,c_574])).

cnf(c_14,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_1449,plain,
    ( m1_subset_1(k1_relat_1(sK3),k1_zfmisc_1(sK2)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1353,c_14])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_204,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X1_42))
    | r1_tarski(X0_42,X1_42) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_569,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(X1_42)) != iProver_top
    | r1_tarski(X0_42,X1_42) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_204])).

cnf(c_1454,plain,
    ( r1_tarski(k1_relat_1(sK3),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1449,c_569])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X2,X0)
    | r1_tarski(X2,X1) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_206,plain,
    ( ~ r1_tarski(X0_42,X1_42)
    | ~ r1_tarski(X2_42,X0_42)
    | r1_tarski(X2_42,X1_42) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_567,plain,
    ( r1_tarski(X0_42,X1_42) != iProver_top
    | r1_tarski(X2_42,X0_42) != iProver_top
    | r1_tarski(X2_42,X1_42) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_206])).

cnf(c_1458,plain,
    ( r1_tarski(X0_42,k1_relat_1(sK3)) != iProver_top
    | r1_tarski(X0_42,sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_1454,c_567])).

cnf(c_1659,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),sK2) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_572,c_1458])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_200,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
    | v1_relat_1(X0_42) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_671,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0)))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_200])).

cnf(c_672,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_671])).

cnf(c_677,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0)))
    | k1_relset_1(sK2,sK0,sK3) = k1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_198])).

cnf(c_680,plain,
    ( m1_subset_1(k1_relset_1(sK2,sK0,sK3),k1_zfmisc_1(sK2))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) ),
    inference(instantiation,[status(thm)],[c_199])).

cnf(c_681,plain,
    ( m1_subset_1(k1_relset_1(sK2,sK0,sK3),k1_zfmisc_1(sK2)) = iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_680])).

cnf(c_706,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relat_1(sK3))
    | ~ v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_201])).

cnf(c_712,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relat_1(sK3)) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_706])).

cnf(c_740,plain,
    ( ~ m1_subset_1(k1_relset_1(sK2,sK0,sK3),k1_zfmisc_1(sK2))
    | r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2) ),
    inference(instantiation,[status(thm)],[c_204])).

cnf(c_741,plain,
    ( m1_subset_1(k1_relset_1(sK2,sK0,sK3),k1_zfmisc_1(sK2)) != iProver_top
    | r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_740])).

cnf(c_211,plain,
    ( ~ r1_tarski(X0_42,X1_42)
    | r1_tarski(X2_42,X3_42)
    | X2_42 != X0_42
    | X3_42 != X1_42 ),
    theory(equality)).

cnf(c_795,plain,
    ( r1_tarski(X0_42,X1_42)
    | ~ r1_tarski(k1_relat_1(k8_relat_1(X2_42,sK3)),k1_relat_1(sK3))
    | X0_42 != k1_relat_1(k8_relat_1(X2_42,sK3))
    | X1_42 != k1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_211])).

cnf(c_982,plain,
    ( r1_tarski(X0_42,k1_relset_1(sK2,sK0,sK3))
    | ~ r1_tarski(k1_relat_1(k8_relat_1(X1_42,sK3)),k1_relat_1(sK3))
    | X0_42 != k1_relat_1(k8_relat_1(X1_42,sK3))
    | k1_relset_1(sK2,sK0,sK3) != k1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_795])).

cnf(c_987,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relset_1(sK2,sK0,sK3))
    | ~ r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relat_1(sK3))
    | k1_relset_1(sK2,sK0,sK3) != k1_relat_1(sK3)
    | k1_relat_1(k8_relat_1(X0_42,sK3)) != k1_relat_1(k8_relat_1(X0_42,sK3)) ),
    inference(instantiation,[status(thm)],[c_982])).

cnf(c_989,plain,
    ( k1_relset_1(sK2,sK0,sK3) != k1_relat_1(sK3)
    | k1_relat_1(k8_relat_1(X0_42,sK3)) != k1_relat_1(k8_relat_1(X0_42,sK3))
    | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relset_1(sK2,sK0,sK3)) = iProver_top
    | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relat_1(sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_987])).

cnf(c_208,plain,
    ( X0_42 = X0_42 ),
    theory(equality)).

cnf(c_988,plain,
    ( k1_relat_1(k8_relat_1(X0_42,sK3)) = k1_relat_1(k8_relat_1(X0_42,sK3)) ),
    inference(instantiation,[status(thm)],[c_208])).

cnf(c_767,plain,
    ( ~ r1_tarski(X0_42,k1_relset_1(sK2,sK0,sK3))
    | r1_tarski(X0_42,sK2)
    | ~ r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2) ),
    inference(instantiation,[status(thm)],[c_206])).

cnf(c_1339,plain,
    ( ~ r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2)
    | ~ r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relset_1(sK2,sK0,sK3))
    | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),sK2) ),
    inference(instantiation,[status(thm)],[c_767])).

cnf(c_1340,plain,
    ( r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2) != iProver_top
    | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relset_1(sK2,sK0,sK3)) != iProver_top
    | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1339])).

cnf(c_3500,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),sK2) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1659,c_13,c_14,c_672,c_677,c_681,c_712,c_741,c_989,c_988,c_1340])).

cnf(c_11,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_196,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
    | ~ r1_tarski(k1_relat_1(X0_42),X1_42)
    | ~ r1_tarski(k2_relat_1(X0_42),X2_42)
    | ~ v1_relat_1(X0_42) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_577,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42))) = iProver_top
    | r1_tarski(k1_relat_1(X0_42),X1_42) != iProver_top
    | r1_tarski(k2_relat_1(X0_42),X2_42) != iProver_top
    | v1_relat_1(X0_42) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_196])).

cnf(c_10,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k6_relset_1(X1,X2,X3,X0) = k8_relat_1(X3,X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_197,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
    | k6_relset_1(X1_42,X2_42,X3_42,X0_42) = k8_relat_1(X3_42,X0_42) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_576,plain,
    ( k6_relset_1(X0_42,X1_42,X2_42,X3_42) = k8_relat_1(X2_42,X3_42)
    | m1_subset_1(X3_42,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_197])).

cnf(c_1947,plain,
    ( k6_relset_1(sK2,sK0,X0_42,sK3) = k8_relat_1(X0_42,sK3) ),
    inference(superposition,[status(thm)],[c_579,c_576])).

cnf(c_12,negated_conjecture,
    ( ~ m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_195,negated_conjecture,
    ( ~ m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
    inference(subtyping,[status(esa)],[c_12])).

cnf(c_578,plain,
    ( m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_195])).

cnf(c_2146,plain,
    ( m1_subset_1(k8_relat_1(sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1947,c_578])).

cnf(c_2350,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(sK1,sK3)),sK2) != iProver_top
    | r1_tarski(k2_relat_1(k8_relat_1(sK1,sK3)),sK1) != iProver_top
    | v1_relat_1(k8_relat_1(sK1,sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_577,c_2146])).

cnf(c_3509,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(sK1,sK3)),sK1) != iProver_top
    | v1_relat_1(k8_relat_1(sK1,sK3)) != iProver_top ),
    inference(superposition,[status(thm)],[c_3500,c_2350])).

cnf(c_5,plain,
    ( r1_tarski(k8_relat_1(X0,X1),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_202,plain,
    ( r1_tarski(k8_relat_1(X0_42,X1_42),X1_42)
    | ~ v1_relat_1(X1_42) ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_571,plain,
    ( r1_tarski(k8_relat_1(X0_42,X1_42),X1_42) = iProver_top
    | v1_relat_1(X1_42) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_202])).

cnf(c_751,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(sK2,sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_579,c_569])).

cnf(c_1071,plain,
    ( r1_tarski(X0_42,k2_zfmisc_1(sK2,sK0)) = iProver_top
    | r1_tarski(X0_42,sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_751,c_567])).

cnf(c_1,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_205,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(X1_42))
    | ~ r1_tarski(X0_42,X1_42) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_568,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(X1_42)) = iProver_top
    | r1_tarski(X0_42,X1_42) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_205])).

cnf(c_573,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42))) != iProver_top
    | v1_relat_1(X0_42) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_200])).

cnf(c_935,plain,
    ( r1_tarski(X0_42,k2_zfmisc_1(X1_42,X2_42)) != iProver_top
    | v1_relat_1(X0_42) = iProver_top ),
    inference(superposition,[status(thm)],[c_568,c_573])).

cnf(c_2365,plain,
    ( r1_tarski(X0_42,sK3) != iProver_top
    | v1_relat_1(X0_42) = iProver_top ),
    inference(superposition,[status(thm)],[c_1071,c_935])).

cnf(c_2636,plain,
    ( v1_relat_1(k8_relat_1(X0_42,sK3)) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_571,c_2365])).

cnf(c_705,plain,
    ( r1_tarski(k8_relat_1(X0_42,sK3),sK3)
    | ~ v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_202])).

cnf(c_716,plain,
    ( r1_tarski(k8_relat_1(X0_42,sK3),sK3) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_705])).

cnf(c_3,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_115,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_1])).

cnf(c_116,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_115])).

cnf(c_140,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(bin_hyper_res,[status(thm)],[c_3,c_116])).

cnf(c_193,plain,
    ( ~ r1_tarski(X0_42,X1_42)
    | ~ v1_relat_1(X1_42)
    | v1_relat_1(X0_42) ),
    inference(subtyping,[status(esa)],[c_140])).

cnf(c_707,plain,
    ( ~ r1_tarski(X0_42,sK3)
    | v1_relat_1(X0_42)
    | ~ v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_193])).

cnf(c_840,plain,
    ( ~ r1_tarski(k8_relat_1(X0_42,sK3),sK3)
    | v1_relat_1(k8_relat_1(X0_42,sK3))
    | ~ v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_707])).

cnf(c_841,plain,
    ( r1_tarski(k8_relat_1(X0_42,sK3),sK3) != iProver_top
    | v1_relat_1(k8_relat_1(X0_42,sK3)) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_840])).

cnf(c_2653,plain,
    ( v1_relat_1(k8_relat_1(X0_42,sK3)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2636,c_14,c_672,c_716,c_841])).

cnf(c_3967,plain,
    ( r1_tarski(k2_relat_1(k8_relat_1(sK1,sK3)),sK1) != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3509,c_2653])).

cnf(c_3969,plain,
    ( v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_570,c_3967])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3969,c_672,c_14])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n009.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 11:10:11 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 2.19/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.19/0.98  
% 2.19/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.19/0.98  
% 2.19/0.98  ------  iProver source info
% 2.19/0.98  
% 2.19/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.19/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.19/0.98  git: non_committed_changes: false
% 2.19/0.98  git: last_make_outside_of_git: false
% 2.19/0.98  
% 2.19/0.98  ------ 
% 2.19/0.98  
% 2.19/0.98  ------ Input Options
% 2.19/0.98  
% 2.19/0.98  --out_options                           all
% 2.19/0.98  --tptp_safe_out                         true
% 2.19/0.98  --problem_path                          ""
% 2.19/0.98  --include_path                          ""
% 2.19/0.98  --clausifier                            res/vclausify_rel
% 2.19/0.98  --clausifier_options                    --mode clausify
% 2.19/0.98  --stdin                                 false
% 2.19/0.98  --stats_out                             all
% 2.19/0.98  
% 2.19/0.98  ------ General Options
% 2.19/0.98  
% 2.19/0.98  --fof                                   false
% 2.19/0.98  --time_out_real                         305.
% 2.19/0.98  --time_out_virtual                      -1.
% 2.19/0.98  --symbol_type_check                     false
% 2.19/0.98  --clausify_out                          false
% 2.19/0.98  --sig_cnt_out                           false
% 2.19/0.98  --trig_cnt_out                          false
% 2.19/0.98  --trig_cnt_out_tolerance                1.
% 2.19/0.98  --trig_cnt_out_sk_spl                   false
% 2.19/0.98  --abstr_cl_out                          false
% 2.19/0.98  
% 2.19/0.98  ------ Global Options
% 2.19/0.98  
% 2.19/0.98  --schedule                              default
% 2.19/0.98  --add_important_lit                     false
% 2.19/0.98  --prop_solver_per_cl                    1000
% 2.19/0.98  --min_unsat_core                        false
% 2.19/0.98  --soft_assumptions                      false
% 2.19/0.98  --soft_lemma_size                       3
% 2.19/0.98  --prop_impl_unit_size                   0
% 2.19/0.98  --prop_impl_unit                        []
% 2.19/0.98  --share_sel_clauses                     true
% 2.19/0.98  --reset_solvers                         false
% 2.19/0.98  --bc_imp_inh                            [conj_cone]
% 2.19/0.98  --conj_cone_tolerance                   3.
% 2.19/0.98  --extra_neg_conj                        none
% 2.19/0.98  --large_theory_mode                     true
% 2.19/0.98  --prolific_symb_bound                   200
% 2.19/0.98  --lt_threshold                          2000
% 2.19/0.98  --clause_weak_htbl                      true
% 2.19/0.98  --gc_record_bc_elim                     false
% 2.19/0.98  
% 2.19/0.98  ------ Preprocessing Options
% 2.19/0.98  
% 2.19/0.98  --preprocessing_flag                    true
% 2.19/0.98  --time_out_prep_mult                    0.1
% 2.19/0.98  --splitting_mode                        input
% 2.19/0.98  --splitting_grd                         true
% 2.19/0.98  --splitting_cvd                         false
% 2.19/0.98  --splitting_cvd_svl                     false
% 2.19/0.98  --splitting_nvd                         32
% 2.19/0.98  --sub_typing                            true
% 2.19/0.98  --prep_gs_sim                           true
% 2.19/0.98  --prep_unflatten                        true
% 2.19/0.98  --prep_res_sim                          true
% 2.19/0.98  --prep_upred                            true
% 2.19/0.98  --prep_sem_filter                       exhaustive
% 2.19/0.98  --prep_sem_filter_out                   false
% 2.19/0.98  --pred_elim                             true
% 2.19/0.98  --res_sim_input                         true
% 2.19/0.98  --eq_ax_congr_red                       true
% 2.19/0.98  --pure_diseq_elim                       true
% 2.19/0.98  --brand_transform                       false
% 2.19/0.98  --non_eq_to_eq                          false
% 2.19/0.98  --prep_def_merge                        true
% 2.19/0.98  --prep_def_merge_prop_impl              false
% 2.19/0.98  --prep_def_merge_mbd                    true
% 2.19/0.98  --prep_def_merge_tr_red                 false
% 2.19/0.98  --prep_def_merge_tr_cl                  false
% 2.19/0.98  --smt_preprocessing                     true
% 2.19/0.98  --smt_ac_axioms                         fast
% 2.19/0.98  --preprocessed_out                      false
% 2.19/0.98  --preprocessed_stats                    false
% 2.19/0.98  
% 2.19/0.98  ------ Abstraction refinement Options
% 2.19/0.98  
% 2.19/0.98  --abstr_ref                             []
% 2.19/0.98  --abstr_ref_prep                        false
% 2.19/0.98  --abstr_ref_until_sat                   false
% 2.19/0.98  --abstr_ref_sig_restrict                funpre
% 2.19/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.19/0.98  --abstr_ref_under                       []
% 2.19/0.98  
% 2.19/0.98  ------ SAT Options
% 2.19/0.98  
% 2.19/0.98  --sat_mode                              false
% 2.19/0.98  --sat_fm_restart_options                ""
% 2.19/0.98  --sat_gr_def                            false
% 2.19/0.98  --sat_epr_types                         true
% 2.19/0.98  --sat_non_cyclic_types                  false
% 2.19/0.98  --sat_finite_models                     false
% 2.19/0.98  --sat_fm_lemmas                         false
% 2.19/0.98  --sat_fm_prep                           false
% 2.19/0.98  --sat_fm_uc_incr                        true
% 2.19/0.98  --sat_out_model                         small
% 2.19/0.98  --sat_out_clauses                       false
% 2.19/0.98  
% 2.19/0.98  ------ QBF Options
% 2.19/0.98  
% 2.19/0.98  --qbf_mode                              false
% 2.19/0.98  --qbf_elim_univ                         false
% 2.19/0.98  --qbf_dom_inst                          none
% 2.19/0.98  --qbf_dom_pre_inst                      false
% 2.19/0.98  --qbf_sk_in                             false
% 2.19/0.98  --qbf_pred_elim                         true
% 2.19/0.98  --qbf_split                             512
% 2.19/0.98  
% 2.19/0.98  ------ BMC1 Options
% 2.19/0.98  
% 2.19/0.98  --bmc1_incremental                      false
% 2.19/0.98  --bmc1_axioms                           reachable_all
% 2.19/0.98  --bmc1_min_bound                        0
% 2.19/0.98  --bmc1_max_bound                        -1
% 2.19/0.98  --bmc1_max_bound_default                -1
% 2.19/0.98  --bmc1_symbol_reachability              true
% 2.19/0.98  --bmc1_property_lemmas                  false
% 2.19/0.98  --bmc1_k_induction                      false
% 2.19/0.98  --bmc1_non_equiv_states                 false
% 2.19/0.98  --bmc1_deadlock                         false
% 2.19/0.98  --bmc1_ucm                              false
% 2.19/0.98  --bmc1_add_unsat_core                   none
% 2.19/0.98  --bmc1_unsat_core_children              false
% 2.19/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.19/0.98  --bmc1_out_stat                         full
% 2.19/0.98  --bmc1_ground_init                      false
% 2.19/0.98  --bmc1_pre_inst_next_state              false
% 2.19/0.98  --bmc1_pre_inst_state                   false
% 2.19/0.98  --bmc1_pre_inst_reach_state             false
% 2.19/0.98  --bmc1_out_unsat_core                   false
% 2.19/0.98  --bmc1_aig_witness_out                  false
% 2.19/0.98  --bmc1_verbose                          false
% 2.19/0.98  --bmc1_dump_clauses_tptp                false
% 2.19/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.19/0.98  --bmc1_dump_file                        -
% 2.19/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.19/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.19/0.98  --bmc1_ucm_extend_mode                  1
% 2.19/0.98  --bmc1_ucm_init_mode                    2
% 2.19/0.98  --bmc1_ucm_cone_mode                    none
% 2.19/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.19/0.98  --bmc1_ucm_relax_model                  4
% 2.19/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.19/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.19/0.98  --bmc1_ucm_layered_model                none
% 2.19/0.98  --bmc1_ucm_max_lemma_size               10
% 2.19/0.98  
% 2.19/0.98  ------ AIG Options
% 2.19/0.98  
% 2.19/0.98  --aig_mode                              false
% 2.19/0.98  
% 2.19/0.98  ------ Instantiation Options
% 2.19/0.98  
% 2.19/0.98  --instantiation_flag                    true
% 2.19/0.98  --inst_sos_flag                         false
% 2.19/0.98  --inst_sos_phase                        true
% 2.19/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.19/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.19/0.98  --inst_lit_sel_side                     num_symb
% 2.19/0.98  --inst_solver_per_active                1400
% 2.19/0.98  --inst_solver_calls_frac                1.
% 2.19/0.98  --inst_passive_queue_type               priority_queues
% 2.19/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.19/0.98  --inst_passive_queues_freq              [25;2]
% 2.19/0.98  --inst_dismatching                      true
% 2.19/0.98  --inst_eager_unprocessed_to_passive     true
% 2.19/0.98  --inst_prop_sim_given                   true
% 2.19/0.98  --inst_prop_sim_new                     false
% 2.19/0.98  --inst_subs_new                         false
% 2.19/0.98  --inst_eq_res_simp                      false
% 2.19/0.98  --inst_subs_given                       false
% 2.19/0.98  --inst_orphan_elimination               true
% 2.19/0.98  --inst_learning_loop_flag               true
% 2.19/0.98  --inst_learning_start                   3000
% 2.19/0.98  --inst_learning_factor                  2
% 2.19/0.98  --inst_start_prop_sim_after_learn       3
% 2.19/0.98  --inst_sel_renew                        solver
% 2.19/0.98  --inst_lit_activity_flag                true
% 2.19/0.98  --inst_restr_to_given                   false
% 2.19/0.98  --inst_activity_threshold               500
% 2.19/0.98  --inst_out_proof                        true
% 2.19/0.98  
% 2.19/0.98  ------ Resolution Options
% 2.19/0.98  
% 2.19/0.98  --resolution_flag                       true
% 2.19/0.98  --res_lit_sel                           adaptive
% 2.19/0.98  --res_lit_sel_side                      none
% 2.19/0.98  --res_ordering                          kbo
% 2.19/0.98  --res_to_prop_solver                    active
% 2.19/0.98  --res_prop_simpl_new                    false
% 2.19/0.98  --res_prop_simpl_given                  true
% 2.19/0.98  --res_passive_queue_type                priority_queues
% 2.19/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.19/0.98  --res_passive_queues_freq               [15;5]
% 2.19/0.98  --res_forward_subs                      full
% 2.19/0.98  --res_backward_subs                     full
% 2.19/0.98  --res_forward_subs_resolution           true
% 2.19/0.98  --res_backward_subs_resolution          true
% 2.19/0.98  --res_orphan_elimination                true
% 2.19/0.98  --res_time_limit                        2.
% 2.19/0.98  --res_out_proof                         true
% 2.19/0.98  
% 2.19/0.98  ------ Superposition Options
% 2.19/0.98  
% 2.19/0.98  --superposition_flag                    true
% 2.19/0.98  --sup_passive_queue_type                priority_queues
% 2.19/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.19/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.19/0.98  --demod_completeness_check              fast
% 2.19/0.98  --demod_use_ground                      true
% 2.19/0.98  --sup_to_prop_solver                    passive
% 2.19/0.98  --sup_prop_simpl_new                    true
% 2.19/0.98  --sup_prop_simpl_given                  true
% 2.19/0.98  --sup_fun_splitting                     false
% 2.19/0.98  --sup_smt_interval                      50000
% 2.19/0.98  
% 2.19/0.98  ------ Superposition Simplification Setup
% 2.19/0.98  
% 2.19/0.98  --sup_indices_passive                   []
% 2.19/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.19/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.19/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.19/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.19/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.19/0.98  --sup_full_bw                           [BwDemod]
% 2.19/0.98  --sup_immed_triv                        [TrivRules]
% 2.19/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.19/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.19/0.98  --sup_immed_bw_main                     []
% 2.19/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.19/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.19/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.19/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.19/0.98  
% 2.19/0.98  ------ Combination Options
% 2.19/0.98  
% 2.19/0.98  --comb_res_mult                         3
% 2.19/0.98  --comb_sup_mult                         2
% 2.19/0.98  --comb_inst_mult                        10
% 2.19/0.98  
% 2.19/0.98  ------ Debug Options
% 2.19/0.98  
% 2.19/0.98  --dbg_backtrace                         false
% 2.19/0.98  --dbg_dump_prop_clauses                 false
% 2.19/0.98  --dbg_dump_prop_clauses_file            -
% 2.19/0.98  --dbg_out_stat                          false
% 2.19/0.98  ------ Parsing...
% 2.19/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.19/0.98  
% 2.19/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.19/0.98  
% 2.19/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.19/0.98  
% 2.19/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.19/0.98  ------ Proving...
% 2.19/0.98  ------ Problem Properties 
% 2.19/0.98  
% 2.19/0.98  
% 2.19/0.98  clauses                                 14
% 2.19/0.98  conjectures                             2
% 2.19/0.98  EPR                                     2
% 2.19/0.98  Horn                                    14
% 2.19/0.98  unary                                   2
% 2.19/0.98  binary                                  9
% 2.19/0.98  lits                                    30
% 2.19/0.98  lits eq                                 2
% 2.19/0.98  fd_pure                                 0
% 2.19/0.98  fd_pseudo                               0
% 2.19/0.98  fd_cond                                 0
% 2.19/0.98  fd_pseudo_cond                          0
% 2.19/0.98  AC symbols                              0
% 2.19/0.98  
% 2.19/0.98  ------ Schedule dynamic 5 is on 
% 2.19/0.98  
% 2.19/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.19/0.98  
% 2.19/0.98  
% 2.19/0.98  ------ 
% 2.19/0.98  Current options:
% 2.19/0.98  ------ 
% 2.19/0.98  
% 2.19/0.98  ------ Input Options
% 2.19/0.98  
% 2.19/0.98  --out_options                           all
% 2.19/0.98  --tptp_safe_out                         true
% 2.19/0.98  --problem_path                          ""
% 2.19/0.98  --include_path                          ""
% 2.19/0.98  --clausifier                            res/vclausify_rel
% 2.19/0.98  --clausifier_options                    --mode clausify
% 2.19/0.98  --stdin                                 false
% 2.19/0.98  --stats_out                             all
% 2.19/0.98  
% 2.19/0.98  ------ General Options
% 2.19/0.98  
% 2.19/0.98  --fof                                   false
% 2.19/0.98  --time_out_real                         305.
% 2.19/0.98  --time_out_virtual                      -1.
% 2.19/0.98  --symbol_type_check                     false
% 2.19/0.98  --clausify_out                          false
% 2.19/0.98  --sig_cnt_out                           false
% 2.19/0.98  --trig_cnt_out                          false
% 2.19/0.98  --trig_cnt_out_tolerance                1.
% 2.19/0.98  --trig_cnt_out_sk_spl                   false
% 2.19/0.98  --abstr_cl_out                          false
% 2.19/0.98  
% 2.19/0.98  ------ Global Options
% 2.19/0.98  
% 2.19/0.98  --schedule                              default
% 2.19/0.98  --add_important_lit                     false
% 2.19/0.98  --prop_solver_per_cl                    1000
% 2.19/0.98  --min_unsat_core                        false
% 2.19/0.98  --soft_assumptions                      false
% 2.19/0.98  --soft_lemma_size                       3
% 2.19/0.98  --prop_impl_unit_size                   0
% 2.19/0.98  --prop_impl_unit                        []
% 2.19/0.98  --share_sel_clauses                     true
% 2.19/0.98  --reset_solvers                         false
% 2.19/0.98  --bc_imp_inh                            [conj_cone]
% 2.19/0.98  --conj_cone_tolerance                   3.
% 2.19/0.98  --extra_neg_conj                        none
% 2.19/0.98  --large_theory_mode                     true
% 2.19/0.98  --prolific_symb_bound                   200
% 2.19/0.98  --lt_threshold                          2000
% 2.19/0.98  --clause_weak_htbl                      true
% 2.19/0.98  --gc_record_bc_elim                     false
% 2.19/0.98  
% 2.19/0.98  ------ Preprocessing Options
% 2.19/0.98  
% 2.19/0.98  --preprocessing_flag                    true
% 2.19/0.98  --time_out_prep_mult                    0.1
% 2.19/0.98  --splitting_mode                        input
% 2.19/0.98  --splitting_grd                         true
% 2.19/0.98  --splitting_cvd                         false
% 2.19/0.98  --splitting_cvd_svl                     false
% 2.19/0.98  --splitting_nvd                         32
% 2.19/0.98  --sub_typing                            true
% 2.19/0.98  --prep_gs_sim                           true
% 2.19/0.98  --prep_unflatten                        true
% 2.19/0.98  --prep_res_sim                          true
% 2.19/0.98  --prep_upred                            true
% 2.19/0.98  --prep_sem_filter                       exhaustive
% 2.19/0.98  --prep_sem_filter_out                   false
% 2.19/0.98  --pred_elim                             true
% 2.19/0.98  --res_sim_input                         true
% 2.19/0.98  --eq_ax_congr_red                       true
% 2.19/0.98  --pure_diseq_elim                       true
% 2.19/0.98  --brand_transform                       false
% 2.19/0.98  --non_eq_to_eq                          false
% 2.19/0.98  --prep_def_merge                        true
% 2.19/0.98  --prep_def_merge_prop_impl              false
% 2.19/0.98  --prep_def_merge_mbd                    true
% 2.19/0.98  --prep_def_merge_tr_red                 false
% 2.19/0.98  --prep_def_merge_tr_cl                  false
% 2.19/0.98  --smt_preprocessing                     true
% 2.19/0.98  --smt_ac_axioms                         fast
% 2.19/0.98  --preprocessed_out                      false
% 2.19/0.98  --preprocessed_stats                    false
% 2.19/0.98  
% 2.19/0.98  ------ Abstraction refinement Options
% 2.19/0.98  
% 2.19/0.98  --abstr_ref                             []
% 2.19/0.98  --abstr_ref_prep                        false
% 2.19/0.98  --abstr_ref_until_sat                   false
% 2.19/0.98  --abstr_ref_sig_restrict                funpre
% 2.19/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.19/0.98  --abstr_ref_under                       []
% 2.19/0.98  
% 2.19/0.98  ------ SAT Options
% 2.19/0.98  
% 2.19/0.98  --sat_mode                              false
% 2.19/0.98  --sat_fm_restart_options                ""
% 2.19/0.98  --sat_gr_def                            false
% 2.19/0.98  --sat_epr_types                         true
% 2.19/0.98  --sat_non_cyclic_types                  false
% 2.19/0.98  --sat_finite_models                     false
% 2.19/0.98  --sat_fm_lemmas                         false
% 2.19/0.98  --sat_fm_prep                           false
% 2.19/0.98  --sat_fm_uc_incr                        true
% 2.19/0.98  --sat_out_model                         small
% 2.19/0.98  --sat_out_clauses                       false
% 2.19/0.98  
% 2.19/0.98  ------ QBF Options
% 2.19/0.98  
% 2.19/0.98  --qbf_mode                              false
% 2.19/0.98  --qbf_elim_univ                         false
% 2.19/0.98  --qbf_dom_inst                          none
% 2.19/0.98  --qbf_dom_pre_inst                      false
% 2.19/0.98  --qbf_sk_in                             false
% 2.19/0.98  --qbf_pred_elim                         true
% 2.19/0.98  --qbf_split                             512
% 2.19/0.98  
% 2.19/0.98  ------ BMC1 Options
% 2.19/0.98  
% 2.19/0.98  --bmc1_incremental                      false
% 2.19/0.98  --bmc1_axioms                           reachable_all
% 2.19/0.98  --bmc1_min_bound                        0
% 2.19/0.98  --bmc1_max_bound                        -1
% 2.19/0.98  --bmc1_max_bound_default                -1
% 2.19/0.98  --bmc1_symbol_reachability              true
% 2.19/0.98  --bmc1_property_lemmas                  false
% 2.19/0.99  --bmc1_k_induction                      false
% 2.19/0.99  --bmc1_non_equiv_states                 false
% 2.19/0.99  --bmc1_deadlock                         false
% 2.19/0.99  --bmc1_ucm                              false
% 2.19/0.99  --bmc1_add_unsat_core                   none
% 2.19/0.99  --bmc1_unsat_core_children              false
% 2.19/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.19/0.99  --bmc1_out_stat                         full
% 2.19/0.99  --bmc1_ground_init                      false
% 2.19/0.99  --bmc1_pre_inst_next_state              false
% 2.19/0.99  --bmc1_pre_inst_state                   false
% 2.19/0.99  --bmc1_pre_inst_reach_state             false
% 2.19/0.99  --bmc1_out_unsat_core                   false
% 2.19/0.99  --bmc1_aig_witness_out                  false
% 2.19/0.99  --bmc1_verbose                          false
% 2.19/0.99  --bmc1_dump_clauses_tptp                false
% 2.19/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.19/0.99  --bmc1_dump_file                        -
% 2.19/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.19/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.19/0.99  --bmc1_ucm_extend_mode                  1
% 2.19/0.99  --bmc1_ucm_init_mode                    2
% 2.19/0.99  --bmc1_ucm_cone_mode                    none
% 2.19/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.19/0.99  --bmc1_ucm_relax_model                  4
% 2.19/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.19/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.19/0.99  --bmc1_ucm_layered_model                none
% 2.19/0.99  --bmc1_ucm_max_lemma_size               10
% 2.19/0.99  
% 2.19/0.99  ------ AIG Options
% 2.19/0.99  
% 2.19/0.99  --aig_mode                              false
% 2.19/0.99  
% 2.19/0.99  ------ Instantiation Options
% 2.19/0.99  
% 2.19/0.99  --instantiation_flag                    true
% 2.19/0.99  --inst_sos_flag                         false
% 2.19/0.99  --inst_sos_phase                        true
% 2.19/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.19/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.19/0.99  --inst_lit_sel_side                     none
% 2.19/0.99  --inst_solver_per_active                1400
% 2.19/0.99  --inst_solver_calls_frac                1.
% 2.19/0.99  --inst_passive_queue_type               priority_queues
% 2.19/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.19/0.99  --inst_passive_queues_freq              [25;2]
% 2.19/0.99  --inst_dismatching                      true
% 2.19/0.99  --inst_eager_unprocessed_to_passive     true
% 2.19/0.99  --inst_prop_sim_given                   true
% 2.19/0.99  --inst_prop_sim_new                     false
% 2.19/0.99  --inst_subs_new                         false
% 2.19/0.99  --inst_eq_res_simp                      false
% 2.19/0.99  --inst_subs_given                       false
% 2.19/0.99  --inst_orphan_elimination               true
% 2.19/0.99  --inst_learning_loop_flag               true
% 2.19/0.99  --inst_learning_start                   3000
% 2.19/0.99  --inst_learning_factor                  2
% 2.19/0.99  --inst_start_prop_sim_after_learn       3
% 2.19/0.99  --inst_sel_renew                        solver
% 2.19/0.99  --inst_lit_activity_flag                true
% 2.19/0.99  --inst_restr_to_given                   false
% 2.19/0.99  --inst_activity_threshold               500
% 2.19/0.99  --inst_out_proof                        true
% 2.19/0.99  
% 2.19/0.99  ------ Resolution Options
% 2.19/0.99  
% 2.19/0.99  --resolution_flag                       false
% 2.19/0.99  --res_lit_sel                           adaptive
% 2.19/0.99  --res_lit_sel_side                      none
% 2.19/0.99  --res_ordering                          kbo
% 2.19/0.99  --res_to_prop_solver                    active
% 2.19/0.99  --res_prop_simpl_new                    false
% 2.19/0.99  --res_prop_simpl_given                  true
% 2.19/0.99  --res_passive_queue_type                priority_queues
% 2.19/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.19/0.99  --res_passive_queues_freq               [15;5]
% 2.19/0.99  --res_forward_subs                      full
% 2.19/0.99  --res_backward_subs                     full
% 2.19/0.99  --res_forward_subs_resolution           true
% 2.19/0.99  --res_backward_subs_resolution          true
% 2.19/0.99  --res_orphan_elimination                true
% 2.19/0.99  --res_time_limit                        2.
% 2.19/0.99  --res_out_proof                         true
% 2.19/0.99  
% 2.19/0.99  ------ Superposition Options
% 2.19/0.99  
% 2.19/0.99  --superposition_flag                    true
% 2.19/0.99  --sup_passive_queue_type                priority_queues
% 2.19/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.19/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.19/0.99  --demod_completeness_check              fast
% 2.19/0.99  --demod_use_ground                      true
% 2.19/0.99  --sup_to_prop_solver                    passive
% 2.19/0.99  --sup_prop_simpl_new                    true
% 2.19/0.99  --sup_prop_simpl_given                  true
% 2.19/0.99  --sup_fun_splitting                     false
% 2.19/0.99  --sup_smt_interval                      50000
% 2.19/0.99  
% 2.19/0.99  ------ Superposition Simplification Setup
% 2.19/0.99  
% 2.19/0.99  --sup_indices_passive                   []
% 2.19/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.19/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.19/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.19/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.19/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.19/0.99  --sup_full_bw                           [BwDemod]
% 2.19/0.99  --sup_immed_triv                        [TrivRules]
% 2.19/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.19/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.19/0.99  --sup_immed_bw_main                     []
% 2.19/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.19/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.19/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.19/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.19/0.99  
% 2.19/0.99  ------ Combination Options
% 2.19/0.99  
% 2.19/0.99  --comb_res_mult                         3
% 2.19/0.99  --comb_sup_mult                         2
% 2.19/0.99  --comb_inst_mult                        10
% 2.19/0.99  
% 2.19/0.99  ------ Debug Options
% 2.19/0.99  
% 2.19/0.99  --dbg_backtrace                         false
% 2.19/0.99  --dbg_dump_prop_clauses                 false
% 2.19/0.99  --dbg_dump_prop_clauses_file            -
% 2.19/0.99  --dbg_out_stat                          false
% 2.19/0.99  
% 2.19/0.99  
% 2.19/0.99  
% 2.19/0.99  
% 2.19/0.99  ------ Proving...
% 2.19/0.99  
% 2.19/0.99  
% 2.19/0.99  % SZS status Theorem for theBenchmark.p
% 2.19/0.99  
% 2.19/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.19/0.99  
% 2.19/0.99  fof(f4,axiom,(
% 2.19/0.99    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k2_relat_1(k8_relat_1(X0,X1)),X0))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f17,plain,(
% 2.19/0.99    ! [X0,X1] : (r1_tarski(k2_relat_1(k8_relat_1(X0,X1)),X0) | ~v1_relat_1(X1))),
% 2.19/0.99    inference(ennf_transformation,[],[f4])).
% 2.19/0.99  
% 2.19/0.99  fof(f34,plain,(
% 2.19/0.99    ( ! [X0,X1] : (r1_tarski(k2_relat_1(k8_relat_1(X0,X1)),X0) | ~v1_relat_1(X1)) )),
% 2.19/0.99    inference(cnf_transformation,[],[f17])).
% 2.19/0.99  
% 2.19/0.99  fof(f6,axiom,(
% 2.19/0.99    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k1_relat_1(k8_relat_1(X0,X1)),k1_relat_1(X1)))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f19,plain,(
% 2.19/0.99    ! [X0,X1] : (r1_tarski(k1_relat_1(k8_relat_1(X0,X1)),k1_relat_1(X1)) | ~v1_relat_1(X1))),
% 2.19/0.99    inference(ennf_transformation,[],[f6])).
% 2.19/0.99  
% 2.19/0.99  fof(f36,plain,(
% 2.19/0.99    ( ! [X0,X1] : (r1_tarski(k1_relat_1(k8_relat_1(X0,X1)),k1_relat_1(X1)) | ~v1_relat_1(X1)) )),
% 2.19/0.99    inference(cnf_transformation,[],[f19])).
% 2.19/0.99  
% 2.19/0.99  fof(f12,conjecture,(
% 2.19/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) => m1_subset_1(k6_relset_1(X2,X0,X1,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f13,negated_conjecture,(
% 2.19/0.99    ~! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X0))) => m1_subset_1(k6_relset_1(X2,X0,X1,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))))),
% 2.19/0.99    inference(negated_conjecture,[],[f12])).
% 2.19/0.99  
% 2.19/0.99  fof(f26,plain,(
% 2.19/0.99    ? [X0,X1,X2,X3] : (~m1_subset_1(k6_relset_1(X2,X0,X1,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X0))))),
% 2.19/0.99    inference(ennf_transformation,[],[f13])).
% 2.19/0.99  
% 2.19/0.99  fof(f28,plain,(
% 2.19/0.99    ? [X0,X1,X2,X3] : (~m1_subset_1(k6_relset_1(X2,X0,X1,X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X0)))) => (~m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))))),
% 2.19/0.99    introduced(choice_axiom,[])).
% 2.19/0.99  
% 2.19/0.99  fof(f29,plain,(
% 2.19/0.99    ~m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0)))),
% 2.19/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f26,f28])).
% 2.19/0.99  
% 2.19/0.99  fof(f42,plain,(
% 2.19/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0)))),
% 2.19/0.99    inference(cnf_transformation,[],[f29])).
% 2.19/0.99  
% 2.19/0.99  fof(f9,axiom,(
% 2.19/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f22,plain,(
% 2.19/0.99    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.19/0.99    inference(ennf_transformation,[],[f9])).
% 2.19/0.99  
% 2.19/0.99  fof(f39,plain,(
% 2.19/0.99    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.19/0.99    inference(cnf_transformation,[],[f22])).
% 2.19/0.99  
% 2.19/0.99  fof(f8,axiom,(
% 2.19/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f21,plain,(
% 2.19/0.99    ! [X0,X1,X2] : (m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.19/0.99    inference(ennf_transformation,[],[f8])).
% 2.19/0.99  
% 2.19/0.99  fof(f38,plain,(
% 2.19/0.99    ( ! [X2,X0,X1] : (m1_subset_1(k1_relset_1(X0,X1,X2),k1_zfmisc_1(X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.19/0.99    inference(cnf_transformation,[],[f21])).
% 2.19/0.99  
% 2.19/0.99  fof(f2,axiom,(
% 2.19/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f27,plain,(
% 2.19/0.99    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.19/0.99    inference(nnf_transformation,[],[f2])).
% 2.19/0.99  
% 2.19/0.99  fof(f31,plain,(
% 2.19/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.19/0.99    inference(cnf_transformation,[],[f27])).
% 2.19/0.99  
% 2.19/0.99  fof(f1,axiom,(
% 2.19/0.99    ! [X0,X1,X2] : ((r1_tarski(X1,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,X2))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f14,plain,(
% 2.19/0.99    ! [X0,X1,X2] : (r1_tarski(X0,X2) | (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)))),
% 2.19/0.99    inference(ennf_transformation,[],[f1])).
% 2.19/0.99  
% 2.19/0.99  fof(f15,plain,(
% 2.19/0.99    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1))),
% 2.19/0.99    inference(flattening,[],[f14])).
% 2.19/0.99  
% 2.19/0.99  fof(f30,plain,(
% 2.19/0.99    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)) )),
% 2.19/0.99    inference(cnf_transformation,[],[f15])).
% 2.19/0.99  
% 2.19/0.99  fof(f7,axiom,(
% 2.19/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_relat_1(X2))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f20,plain,(
% 2.19/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.19/0.99    inference(ennf_transformation,[],[f7])).
% 2.19/0.99  
% 2.19/0.99  fof(f37,plain,(
% 2.19/0.99    ( ! [X2,X0,X1] : (v1_relat_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.19/0.99    inference(cnf_transformation,[],[f20])).
% 2.19/0.99  
% 2.19/0.99  fof(f11,axiom,(
% 2.19/0.99    ! [X0,X1,X2] : (v1_relat_1(X2) => ((r1_tarski(k2_relat_1(X2),X1) & r1_tarski(k1_relat_1(X2),X0)) => m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f24,plain,(
% 2.19/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | (~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0))) | ~v1_relat_1(X2))),
% 2.19/0.99    inference(ennf_transformation,[],[f11])).
% 2.19/0.99  
% 2.19/0.99  fof(f25,plain,(
% 2.19/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2))),
% 2.19/0.99    inference(flattening,[],[f24])).
% 2.19/0.99  
% 2.19/0.99  fof(f41,plain,(
% 2.19/0.99    ( ! [X2,X0,X1] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~r1_tarski(k2_relat_1(X2),X1) | ~r1_tarski(k1_relat_1(X2),X0) | ~v1_relat_1(X2)) )),
% 2.19/0.99    inference(cnf_transformation,[],[f25])).
% 2.19/0.99  
% 2.19/0.99  fof(f10,axiom,(
% 2.19/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k8_relat_1(X2,X3) = k6_relset_1(X0,X1,X2,X3))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f23,plain,(
% 2.19/0.99    ! [X0,X1,X2,X3] : (k8_relat_1(X2,X3) = k6_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.19/0.99    inference(ennf_transformation,[],[f10])).
% 2.19/0.99  
% 2.19/0.99  fof(f40,plain,(
% 2.19/0.99    ( ! [X2,X0,X3,X1] : (k8_relat_1(X2,X3) = k6_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.19/0.99    inference(cnf_transformation,[],[f23])).
% 2.19/0.99  
% 2.19/0.99  fof(f43,plain,(
% 2.19/0.99    ~m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1)))),
% 2.19/0.99    inference(cnf_transformation,[],[f29])).
% 2.19/0.99  
% 2.19/0.99  fof(f5,axiom,(
% 2.19/0.99    ! [X0,X1] : (v1_relat_1(X1) => r1_tarski(k8_relat_1(X0,X1),X1))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f18,plain,(
% 2.19/0.99    ! [X0,X1] : (r1_tarski(k8_relat_1(X0,X1),X1) | ~v1_relat_1(X1))),
% 2.19/0.99    inference(ennf_transformation,[],[f5])).
% 2.19/0.99  
% 2.19/0.99  fof(f35,plain,(
% 2.19/0.99    ( ! [X0,X1] : (r1_tarski(k8_relat_1(X0,X1),X1) | ~v1_relat_1(X1)) )),
% 2.19/0.99    inference(cnf_transformation,[],[f18])).
% 2.19/0.99  
% 2.19/0.99  fof(f32,plain,(
% 2.19/0.99    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.19/0.99    inference(cnf_transformation,[],[f27])).
% 2.19/0.99  
% 2.19/0.99  fof(f3,axiom,(
% 2.19/0.99    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.19/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.19/0.99  
% 2.19/0.99  fof(f16,plain,(
% 2.19/0.99    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.19/0.99    inference(ennf_transformation,[],[f3])).
% 2.19/0.99  
% 2.19/0.99  fof(f33,plain,(
% 2.19/0.99    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.19/0.99    inference(cnf_transformation,[],[f16])).
% 2.19/0.99  
% 2.19/0.99  cnf(c_4,plain,
% 2.19/0.99      ( r1_tarski(k2_relat_1(k8_relat_1(X0,X1)),X0) | ~ v1_relat_1(X1) ),
% 2.19/0.99      inference(cnf_transformation,[],[f34]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_203,plain,
% 2.19/0.99      ( r1_tarski(k2_relat_1(k8_relat_1(X0_42,X1_42)),X0_42)
% 2.19/0.99      | ~ v1_relat_1(X1_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_4]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_570,plain,
% 2.19/0.99      ( r1_tarski(k2_relat_1(k8_relat_1(X0_42,X1_42)),X0_42) = iProver_top
% 2.19/0.99      | v1_relat_1(X1_42) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_203]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_6,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(k8_relat_1(X0,X1)),k1_relat_1(X1))
% 2.19/0.99      | ~ v1_relat_1(X1) ),
% 2.19/0.99      inference(cnf_transformation,[],[f36]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_201,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,X1_42)),k1_relat_1(X1_42))
% 2.19/0.99      | ~ v1_relat_1(X1_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_6]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_572,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,X1_42)),k1_relat_1(X1_42)) = iProver_top
% 2.19/0.99      | v1_relat_1(X1_42) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_201]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_13,negated_conjecture,
% 2.19/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) ),
% 2.19/0.99      inference(cnf_transformation,[],[f42]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_194,negated_conjecture,
% 2.19/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_13]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_579,plain,
% 2.19/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) = iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_194]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_9,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.19/0.99      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.19/0.99      inference(cnf_transformation,[],[f39]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_198,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
% 2.19/0.99      | k1_relset_1(X1_42,X2_42,X0_42) = k1_relat_1(X0_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_9]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_575,plain,
% 2.19/0.99      ( k1_relset_1(X0_42,X1_42,X2_42) = k1_relat_1(X2_42)
% 2.19/0.99      | m1_subset_1(X2_42,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42))) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_198]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1056,plain,
% 2.19/0.99      ( k1_relset_1(sK2,sK0,sK3) = k1_relat_1(sK3) ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_579,c_575]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_8,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.19/0.99      | m1_subset_1(k1_relset_1(X1,X2,X0),k1_zfmisc_1(X1)) ),
% 2.19/0.99      inference(cnf_transformation,[],[f38]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_199,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
% 2.19/0.99      | m1_subset_1(k1_relset_1(X1_42,X2_42,X0_42),k1_zfmisc_1(X1_42)) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_8]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_574,plain,
% 2.19/0.99      ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42))) != iProver_top
% 2.19/0.99      | m1_subset_1(k1_relset_1(X1_42,X2_42,X0_42),k1_zfmisc_1(X1_42)) = iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_199]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1353,plain,
% 2.19/0.99      ( m1_subset_1(k1_relat_1(sK3),k1_zfmisc_1(sK2)) = iProver_top
% 2.19/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) != iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_1056,c_574]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_14,plain,
% 2.19/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) = iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1449,plain,
% 2.19/0.99      ( m1_subset_1(k1_relat_1(sK3),k1_zfmisc_1(sK2)) = iProver_top ),
% 2.19/0.99      inference(global_propositional_subsumption,
% 2.19/0.99                [status(thm)],
% 2.19/0.99                [c_1353,c_14]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_2,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.19/0.99      inference(cnf_transformation,[],[f31]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_204,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X1_42))
% 2.19/0.99      | r1_tarski(X0_42,X1_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_2]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_569,plain,
% 2.19/0.99      ( m1_subset_1(X0_42,k1_zfmisc_1(X1_42)) != iProver_top
% 2.19/0.99      | r1_tarski(X0_42,X1_42) = iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_204]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1454,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(sK3),sK2) = iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_1449,c_569]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_0,plain,
% 2.19/0.99      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X2,X0) | r1_tarski(X2,X1) ),
% 2.19/0.99      inference(cnf_transformation,[],[f30]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_206,plain,
% 2.19/0.99      ( ~ r1_tarski(X0_42,X1_42)
% 2.19/0.99      | ~ r1_tarski(X2_42,X0_42)
% 2.19/0.99      | r1_tarski(X2_42,X1_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_0]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_567,plain,
% 2.19/0.99      ( r1_tarski(X0_42,X1_42) != iProver_top
% 2.19/0.99      | r1_tarski(X2_42,X0_42) != iProver_top
% 2.19/0.99      | r1_tarski(X2_42,X1_42) = iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_206]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1458,plain,
% 2.19/0.99      ( r1_tarski(X0_42,k1_relat_1(sK3)) != iProver_top
% 2.19/0.99      | r1_tarski(X0_42,sK2) = iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_1454,c_567]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1659,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),sK2) = iProver_top
% 2.19/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_572,c_1458]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_7,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.19/0.99      | v1_relat_1(X0) ),
% 2.19/0.99      inference(cnf_transformation,[],[f37]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_200,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
% 2.19/0.99      | v1_relat_1(X0_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_7]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_671,plain,
% 2.19/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0)))
% 2.19/0.99      | v1_relat_1(sK3) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_200]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_672,plain,
% 2.19/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) != iProver_top
% 2.19/0.99      | v1_relat_1(sK3) = iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_671]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_677,plain,
% 2.19/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0)))
% 2.19/0.99      | k1_relset_1(sK2,sK0,sK3) = k1_relat_1(sK3) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_198]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_680,plain,
% 2.19/0.99      ( m1_subset_1(k1_relset_1(sK2,sK0,sK3),k1_zfmisc_1(sK2))
% 2.19/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_199]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_681,plain,
% 2.19/0.99      ( m1_subset_1(k1_relset_1(sK2,sK0,sK3),k1_zfmisc_1(sK2)) = iProver_top
% 2.19/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK2,sK0))) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_680]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_706,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relat_1(sK3))
% 2.19/0.99      | ~ v1_relat_1(sK3) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_201]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_712,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relat_1(sK3)) = iProver_top
% 2.19/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_706]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_740,plain,
% 2.19/0.99      ( ~ m1_subset_1(k1_relset_1(sK2,sK0,sK3),k1_zfmisc_1(sK2))
% 2.19/0.99      | r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_204]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_741,plain,
% 2.19/0.99      ( m1_subset_1(k1_relset_1(sK2,sK0,sK3),k1_zfmisc_1(sK2)) != iProver_top
% 2.19/0.99      | r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2) = iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_740]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_211,plain,
% 2.19/0.99      ( ~ r1_tarski(X0_42,X1_42)
% 2.19/0.99      | r1_tarski(X2_42,X3_42)
% 2.19/0.99      | X2_42 != X0_42
% 2.19/0.99      | X3_42 != X1_42 ),
% 2.19/0.99      theory(equality) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_795,plain,
% 2.19/0.99      ( r1_tarski(X0_42,X1_42)
% 2.19/0.99      | ~ r1_tarski(k1_relat_1(k8_relat_1(X2_42,sK3)),k1_relat_1(sK3))
% 2.19/0.99      | X0_42 != k1_relat_1(k8_relat_1(X2_42,sK3))
% 2.19/0.99      | X1_42 != k1_relat_1(sK3) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_211]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_982,plain,
% 2.19/0.99      ( r1_tarski(X0_42,k1_relset_1(sK2,sK0,sK3))
% 2.19/0.99      | ~ r1_tarski(k1_relat_1(k8_relat_1(X1_42,sK3)),k1_relat_1(sK3))
% 2.19/0.99      | X0_42 != k1_relat_1(k8_relat_1(X1_42,sK3))
% 2.19/0.99      | k1_relset_1(sK2,sK0,sK3) != k1_relat_1(sK3) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_795]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_987,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relset_1(sK2,sK0,sK3))
% 2.19/0.99      | ~ r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relat_1(sK3))
% 2.19/0.99      | k1_relset_1(sK2,sK0,sK3) != k1_relat_1(sK3)
% 2.19/0.99      | k1_relat_1(k8_relat_1(X0_42,sK3)) != k1_relat_1(k8_relat_1(X0_42,sK3)) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_982]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_989,plain,
% 2.19/0.99      ( k1_relset_1(sK2,sK0,sK3) != k1_relat_1(sK3)
% 2.19/0.99      | k1_relat_1(k8_relat_1(X0_42,sK3)) != k1_relat_1(k8_relat_1(X0_42,sK3))
% 2.19/0.99      | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relset_1(sK2,sK0,sK3)) = iProver_top
% 2.19/0.99      | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relat_1(sK3)) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_987]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_208,plain,( X0_42 = X0_42 ),theory(equality) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_988,plain,
% 2.19/0.99      ( k1_relat_1(k8_relat_1(X0_42,sK3)) = k1_relat_1(k8_relat_1(X0_42,sK3)) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_208]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_767,plain,
% 2.19/0.99      ( ~ r1_tarski(X0_42,k1_relset_1(sK2,sK0,sK3))
% 2.19/0.99      | r1_tarski(X0_42,sK2)
% 2.19/0.99      | ~ r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_206]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1339,plain,
% 2.19/0.99      ( ~ r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2)
% 2.19/0.99      | ~ r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relset_1(sK2,sK0,sK3))
% 2.19/0.99      | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),sK2) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_767]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1340,plain,
% 2.19/0.99      ( r1_tarski(k1_relset_1(sK2,sK0,sK3),sK2) != iProver_top
% 2.19/0.99      | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),k1_relset_1(sK2,sK0,sK3)) != iProver_top
% 2.19/0.99      | r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),sK2) = iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_1339]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_3500,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(k8_relat_1(X0_42,sK3)),sK2) = iProver_top ),
% 2.19/0.99      inference(global_propositional_subsumption,
% 2.19/0.99                [status(thm)],
% 2.19/0.99                [c_1659,c_13,c_14,c_672,c_677,c_681,c_712,c_741,c_989,
% 2.19/0.99                 c_988,c_1340]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_11,plain,
% 2.19/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.19/0.99      | ~ r1_tarski(k1_relat_1(X0),X1)
% 2.19/0.99      | ~ r1_tarski(k2_relat_1(X0),X2)
% 2.19/0.99      | ~ v1_relat_1(X0) ),
% 2.19/0.99      inference(cnf_transformation,[],[f41]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_196,plain,
% 2.19/0.99      ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
% 2.19/0.99      | ~ r1_tarski(k1_relat_1(X0_42),X1_42)
% 2.19/0.99      | ~ r1_tarski(k2_relat_1(X0_42),X2_42)
% 2.19/0.99      | ~ v1_relat_1(X0_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_11]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_577,plain,
% 2.19/0.99      ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42))) = iProver_top
% 2.19/0.99      | r1_tarski(k1_relat_1(X0_42),X1_42) != iProver_top
% 2.19/0.99      | r1_tarski(k2_relat_1(X0_42),X2_42) != iProver_top
% 2.19/0.99      | v1_relat_1(X0_42) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_196]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_10,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.19/0.99      | k6_relset_1(X1,X2,X3,X0) = k8_relat_1(X3,X0) ),
% 2.19/0.99      inference(cnf_transformation,[],[f40]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_197,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42)))
% 2.19/0.99      | k6_relset_1(X1_42,X2_42,X3_42,X0_42) = k8_relat_1(X3_42,X0_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_10]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_576,plain,
% 2.19/0.99      ( k6_relset_1(X0_42,X1_42,X2_42,X3_42) = k8_relat_1(X2_42,X3_42)
% 2.19/0.99      | m1_subset_1(X3_42,k1_zfmisc_1(k2_zfmisc_1(X0_42,X1_42))) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_197]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1947,plain,
% 2.19/0.99      ( k6_relset_1(sK2,sK0,X0_42,sK3) = k8_relat_1(X0_42,sK3) ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_579,c_576]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_12,negated_conjecture,
% 2.19/0.99      ( ~ m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
% 2.19/0.99      inference(cnf_transformation,[],[f43]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_195,negated_conjecture,
% 2.19/0.99      ( ~ m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_12]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_578,plain,
% 2.19/0.99      ( m1_subset_1(k6_relset_1(sK2,sK0,sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_195]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_2146,plain,
% 2.19/0.99      ( m1_subset_1(k8_relat_1(sK1,sK3),k1_zfmisc_1(k2_zfmisc_1(sK2,sK1))) != iProver_top ),
% 2.19/0.99      inference(demodulation,[status(thm)],[c_1947,c_578]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_2350,plain,
% 2.19/0.99      ( r1_tarski(k1_relat_1(k8_relat_1(sK1,sK3)),sK2) != iProver_top
% 2.19/0.99      | r1_tarski(k2_relat_1(k8_relat_1(sK1,sK3)),sK1) != iProver_top
% 2.19/0.99      | v1_relat_1(k8_relat_1(sK1,sK3)) != iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_577,c_2146]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_3509,plain,
% 2.19/0.99      ( r1_tarski(k2_relat_1(k8_relat_1(sK1,sK3)),sK1) != iProver_top
% 2.19/0.99      | v1_relat_1(k8_relat_1(sK1,sK3)) != iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_3500,c_2350]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_5,plain,
% 2.19/0.99      ( r1_tarski(k8_relat_1(X0,X1),X1) | ~ v1_relat_1(X1) ),
% 2.19/0.99      inference(cnf_transformation,[],[f35]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_202,plain,
% 2.19/0.99      ( r1_tarski(k8_relat_1(X0_42,X1_42),X1_42) | ~ v1_relat_1(X1_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_5]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_571,plain,
% 2.19/0.99      ( r1_tarski(k8_relat_1(X0_42,X1_42),X1_42) = iProver_top
% 2.19/0.99      | v1_relat_1(X1_42) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_202]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_751,plain,
% 2.19/0.99      ( r1_tarski(sK3,k2_zfmisc_1(sK2,sK0)) = iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_579,c_569]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1071,plain,
% 2.19/0.99      ( r1_tarski(X0_42,k2_zfmisc_1(sK2,sK0)) = iProver_top
% 2.19/0.99      | r1_tarski(X0_42,sK3) != iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_751,c_567]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_1,plain,
% 2.19/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.19/0.99      inference(cnf_transformation,[],[f32]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_205,plain,
% 2.19/0.99      ( m1_subset_1(X0_42,k1_zfmisc_1(X1_42))
% 2.19/0.99      | ~ r1_tarski(X0_42,X1_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_1]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_568,plain,
% 2.19/0.99      ( m1_subset_1(X0_42,k1_zfmisc_1(X1_42)) = iProver_top
% 2.19/0.99      | r1_tarski(X0_42,X1_42) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_205]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_573,plain,
% 2.19/0.99      ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X1_42,X2_42))) != iProver_top
% 2.19/0.99      | v1_relat_1(X0_42) = iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_200]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_935,plain,
% 2.19/0.99      ( r1_tarski(X0_42,k2_zfmisc_1(X1_42,X2_42)) != iProver_top
% 2.19/0.99      | v1_relat_1(X0_42) = iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_568,c_573]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_2365,plain,
% 2.19/0.99      ( r1_tarski(X0_42,sK3) != iProver_top
% 2.19/0.99      | v1_relat_1(X0_42) = iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_1071,c_935]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_2636,plain,
% 2.19/0.99      ( v1_relat_1(k8_relat_1(X0_42,sK3)) = iProver_top
% 2.19/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_571,c_2365]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_705,plain,
% 2.19/0.99      ( r1_tarski(k8_relat_1(X0_42,sK3),sK3) | ~ v1_relat_1(sK3) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_202]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_716,plain,
% 2.19/0.99      ( r1_tarski(k8_relat_1(X0_42,sK3),sK3) = iProver_top
% 2.19/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_705]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_3,plain,
% 2.19/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.19/0.99      | ~ v1_relat_1(X1)
% 2.19/0.99      | v1_relat_1(X0) ),
% 2.19/0.99      inference(cnf_transformation,[],[f33]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_115,plain,
% 2.19/0.99      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.19/0.99      inference(prop_impl,[status(thm)],[c_1]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_116,plain,
% 2.19/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.19/0.99      inference(renaming,[status(thm)],[c_115]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_140,plain,
% 2.19/0.99      ( ~ r1_tarski(X0,X1) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 2.19/0.99      inference(bin_hyper_res,[status(thm)],[c_3,c_116]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_193,plain,
% 2.19/0.99      ( ~ r1_tarski(X0_42,X1_42)
% 2.19/0.99      | ~ v1_relat_1(X1_42)
% 2.19/0.99      | v1_relat_1(X0_42) ),
% 2.19/0.99      inference(subtyping,[status(esa)],[c_140]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_707,plain,
% 2.19/0.99      ( ~ r1_tarski(X0_42,sK3) | v1_relat_1(X0_42) | ~ v1_relat_1(sK3) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_193]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_840,plain,
% 2.19/0.99      ( ~ r1_tarski(k8_relat_1(X0_42,sK3),sK3)
% 2.19/0.99      | v1_relat_1(k8_relat_1(X0_42,sK3))
% 2.19/0.99      | ~ v1_relat_1(sK3) ),
% 2.19/0.99      inference(instantiation,[status(thm)],[c_707]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_841,plain,
% 2.19/0.99      ( r1_tarski(k8_relat_1(X0_42,sK3),sK3) != iProver_top
% 2.19/0.99      | v1_relat_1(k8_relat_1(X0_42,sK3)) = iProver_top
% 2.19/0.99      | v1_relat_1(sK3) != iProver_top ),
% 2.19/0.99      inference(predicate_to_equality,[status(thm)],[c_840]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_2653,plain,
% 2.19/0.99      ( v1_relat_1(k8_relat_1(X0_42,sK3)) = iProver_top ),
% 2.19/0.99      inference(global_propositional_subsumption,
% 2.19/0.99                [status(thm)],
% 2.19/0.99                [c_2636,c_14,c_672,c_716,c_841]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_3967,plain,
% 2.19/0.99      ( r1_tarski(k2_relat_1(k8_relat_1(sK1,sK3)),sK1) != iProver_top ),
% 2.19/0.99      inference(forward_subsumption_resolution,
% 2.19/0.99                [status(thm)],
% 2.19/0.99                [c_3509,c_2653]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(c_3969,plain,
% 2.19/0.99      ( v1_relat_1(sK3) != iProver_top ),
% 2.19/0.99      inference(superposition,[status(thm)],[c_570,c_3967]) ).
% 2.19/0.99  
% 2.19/0.99  cnf(contradiction,plain,
% 2.19/0.99      ( $false ),
% 2.19/0.99      inference(minisat,[status(thm)],[c_3969,c_672,c_14]) ).
% 2.19/0.99  
% 2.19/0.99  
% 2.19/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.19/0.99  
% 2.19/0.99  ------                               Statistics
% 2.19/0.99  
% 2.19/0.99  ------ General
% 2.19/0.99  
% 2.19/0.99  abstr_ref_over_cycles:                  0
% 2.19/0.99  abstr_ref_under_cycles:                 0
% 2.19/0.99  gc_basic_clause_elim:                   0
% 2.19/0.99  forced_gc_time:                         0
% 2.19/0.99  parsing_time:                           0.007
% 2.19/0.99  unif_index_cands_time:                  0.
% 2.19/0.99  unif_index_add_time:                    0.
% 2.19/0.99  orderings_time:                         0.
% 2.19/0.99  out_proof_time:                         0.007
% 2.19/0.99  total_time:                             0.122
% 2.19/0.99  num_of_symbols:                         47
% 2.19/0.99  num_of_terms:                           4668
% 2.19/0.99  
% 2.19/0.99  ------ Preprocessing
% 2.19/0.99  
% 2.19/0.99  num_of_splits:                          0
% 2.19/0.99  num_of_split_atoms:                     0
% 2.19/0.99  num_of_reused_defs:                     0
% 2.19/0.99  num_eq_ax_congr_red:                    12
% 2.19/0.99  num_of_sem_filtered_clauses:            1
% 2.19/0.99  num_of_subtypes:                        2
% 2.19/0.99  monotx_restored_types:                  0
% 2.19/0.99  sat_num_of_epr_types:                   0
% 2.19/0.99  sat_num_of_non_cyclic_types:            0
% 2.19/0.99  sat_guarded_non_collapsed_types:        0
% 2.19/0.99  num_pure_diseq_elim:                    0
% 2.19/0.99  simp_replaced_by:                       0
% 2.19/0.99  res_preprocessed:                       63
% 2.19/0.99  prep_upred:                             0
% 2.19/0.99  prep_unflattend:                        0
% 2.19/0.99  smt_new_axioms:                         0
% 2.19/0.99  pred_elim_cands:                        3
% 2.19/0.99  pred_elim:                              0
% 2.19/0.99  pred_elim_cl:                           0
% 2.19/0.99  pred_elim_cycles:                       1
% 2.19/0.99  merged_defs:                            6
% 2.19/0.99  merged_defs_ncl:                        0
% 2.19/0.99  bin_hyper_res:                          7
% 2.19/0.99  prep_cycles:                            3
% 2.19/0.99  pred_elim_time:                         0.
% 2.19/0.99  splitting_time:                         0.
% 2.19/0.99  sem_filter_time:                        0.
% 2.19/0.99  monotx_time:                            0.
% 2.19/0.99  subtype_inf_time:                       0.
% 2.19/0.99  
% 2.19/0.99  ------ Problem properties
% 2.19/0.99  
% 2.19/0.99  clauses:                                14
% 2.19/0.99  conjectures:                            2
% 2.19/0.99  epr:                                    2
% 2.19/0.99  horn:                                   14
% 2.19/0.99  ground:                                 2
% 2.19/0.99  unary:                                  2
% 2.19/0.99  binary:                                 9
% 2.19/0.99  lits:                                   30
% 2.19/0.99  lits_eq:                                2
% 2.19/0.99  fd_pure:                                0
% 2.19/0.99  fd_pseudo:                              0
% 2.19/0.99  fd_cond:                                0
% 2.19/0.99  fd_pseudo_cond:                         0
% 2.19/0.99  ac_symbols:                             0
% 2.19/0.99  
% 2.19/0.99  ------ Propositional Solver
% 2.19/0.99  
% 2.19/0.99  prop_solver_calls:                      23
% 2.19/0.99  prop_fast_solver_calls:                 376
% 2.19/0.99  smt_solver_calls:                       0
% 2.19/0.99  smt_fast_solver_calls:                  0
% 2.19/0.99  prop_num_of_clauses:                    1950
% 2.19/0.99  prop_preprocess_simplified:             4721
% 2.19/0.99  prop_fo_subsumed:                       4
% 2.19/0.99  prop_solver_time:                       0.
% 2.19/0.99  smt_solver_time:                        0.
% 2.19/0.99  smt_fast_solver_time:                   0.
% 2.19/0.99  prop_fast_solver_time:                  0.
% 2.19/0.99  prop_unsat_core_time:                   0.
% 2.19/0.99  
% 2.19/0.99  ------ QBF
% 2.19/0.99  
% 2.19/0.99  qbf_q_res:                              0
% 2.19/0.99  qbf_num_tautologies:                    0
% 2.19/0.99  qbf_prep_cycles:                        0
% 2.19/0.99  
% 2.19/0.99  ------ BMC1
% 2.19/0.99  
% 2.19/0.99  bmc1_current_bound:                     -1
% 2.19/0.99  bmc1_last_solved_bound:                 -1
% 2.19/0.99  bmc1_unsat_core_size:                   -1
% 2.19/0.99  bmc1_unsat_core_parents_size:           -1
% 2.19/0.99  bmc1_merge_next_fun:                    0
% 2.19/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.19/0.99  
% 2.19/0.99  ------ Instantiation
% 2.19/0.99  
% 2.19/0.99  inst_num_of_clauses:                    505
% 2.19/0.99  inst_num_in_passive:                    232
% 2.19/0.99  inst_num_in_active:                     197
% 2.19/0.99  inst_num_in_unprocessed:                76
% 2.19/0.99  inst_num_of_loops:                      200
% 2.19/0.99  inst_num_of_learning_restarts:          0
% 2.19/0.99  inst_num_moves_active_passive:          0
% 2.19/0.99  inst_lit_activity:                      0
% 2.19/0.99  inst_lit_activity_moves:                0
% 2.19/0.99  inst_num_tautologies:                   0
% 2.19/0.99  inst_num_prop_implied:                  0
% 2.19/0.99  inst_num_existing_simplified:           0
% 2.19/0.99  inst_num_eq_res_simplified:             0
% 2.19/0.99  inst_num_child_elim:                    0
% 2.19/0.99  inst_num_of_dismatching_blockings:      97
% 2.19/0.99  inst_num_of_non_proper_insts:           248
% 2.19/0.99  inst_num_of_duplicates:                 0
% 2.19/0.99  inst_inst_num_from_inst_to_res:         0
% 2.19/0.99  inst_dismatching_checking_time:         0.
% 2.19/0.99  
% 2.19/0.99  ------ Resolution
% 2.19/0.99  
% 2.19/0.99  res_num_of_clauses:                     0
% 2.19/0.99  res_num_in_passive:                     0
% 2.19/0.99  res_num_in_active:                      0
% 2.19/0.99  res_num_of_loops:                       66
% 2.19/0.99  res_forward_subset_subsumed:            13
% 2.19/0.99  res_backward_subset_subsumed:           0
% 2.19/0.99  res_forward_subsumed:                   0
% 2.19/0.99  res_backward_subsumed:                  0
% 2.19/0.99  res_forward_subsumption_resolution:     0
% 2.19/0.99  res_backward_subsumption_resolution:    0
% 2.19/0.99  res_clause_to_clause_subsumption:       167
% 2.19/0.99  res_orphan_elimination:                 0
% 2.19/0.99  res_tautology_del:                      34
% 2.19/0.99  res_num_eq_res_simplified:              0
% 2.19/0.99  res_num_sel_changes:                    0
% 2.19/0.99  res_moves_from_active_to_pass:          0
% 2.19/0.99  
% 2.19/0.99  ------ Superposition
% 2.19/0.99  
% 2.19/0.99  sup_time_total:                         0.
% 2.19/0.99  sup_time_generating:                    0.
% 2.19/0.99  sup_time_sim_full:                      0.
% 2.19/0.99  sup_time_sim_immed:                     0.
% 2.19/0.99  
% 2.19/0.99  sup_num_of_clauses:                     73
% 2.19/0.99  sup_num_in_active:                      38
% 2.19/0.99  sup_num_in_passive:                     35
% 2.19/0.99  sup_num_of_loops:                       39
% 2.19/0.99  sup_fw_superposition:                   41
% 2.19/0.99  sup_bw_superposition:                   28
% 2.19/0.99  sup_immediate_simplified:               5
% 2.19/0.99  sup_given_eliminated:                   0
% 2.19/0.99  comparisons_done:                       0
% 2.19/0.99  comparisons_avoided:                    0
% 2.19/0.99  
% 2.19/0.99  ------ Simplifications
% 2.19/0.99  
% 2.19/0.99  
% 2.19/0.99  sim_fw_subset_subsumed:                 3
% 2.19/0.99  sim_bw_subset_subsumed:                 0
% 2.19/0.99  sim_fw_subsumed:                        2
% 2.19/0.99  sim_bw_subsumed:                        0
% 2.19/0.99  sim_fw_subsumption_res:                 1
% 2.19/0.99  sim_bw_subsumption_res:                 0
% 2.19/0.99  sim_tautology_del:                      2
% 2.19/0.99  sim_eq_tautology_del:                   0
% 2.19/0.99  sim_eq_res_simp:                        0
% 2.19/0.99  sim_fw_demodulated:                     1
% 2.19/0.99  sim_bw_demodulated:                     2
% 2.19/0.99  sim_light_normalised:                   0
% 2.19/0.99  sim_joinable_taut:                      0
% 2.19/0.99  sim_joinable_simp:                      0
% 2.19/0.99  sim_ac_normalised:                      0
% 2.19/0.99  sim_smt_subsumption:                    0
% 2.19/0.99  
%------------------------------------------------------------------------------
