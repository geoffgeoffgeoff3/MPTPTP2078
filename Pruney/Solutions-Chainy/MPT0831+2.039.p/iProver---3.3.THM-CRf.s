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
% DateTime   : Thu Dec  3 11:55:42 EST 2020

% Result     : Theorem 1.01s
% Output     : CNFRefutation 1.01s
% Verified   : 
% Statistics : Number of formulae       :  100 ( 178 expanded)
%              Number of clauses        :   63 (  84 expanded)
%              Number of leaves         :   14 (  33 expanded)
%              Depth                    :   13
%              Number of atoms          :  248 ( 475 expanded)
%              Number of equality atoms :   88 ( 104 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,conjecture,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
     => ( r1_tarski(X1,X2)
       => r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))
       => ( r1_tarski(X1,X2)
         => r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) ) ) ),
    inference(negated_conjecture,[],[f9])).

fof(f22,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)
      & r1_tarski(X1,X2)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f23,plain,(
    ? [X0,X1,X2,X3] :
      ( ~ r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)
      & r1_tarski(X1,X2)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) ) ),
    inference(flattening,[],[f22])).

fof(f25,plain,
    ( ? [X0,X1,X2,X3] :
        ( ~ r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)
        & r1_tarski(X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) )
   => ( ~ r2_relset_1(sK1,sK0,k5_relset_1(sK1,sK0,sK3,sK2),sK3)
      & r1_tarski(sK1,sK2)
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ~ r2_relset_1(sK1,sK0,k5_relset_1(sK1,sK0,sK3,sK2),sK3)
    & r1_tarski(sK1,sK2)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f23,f25])).

fof(f36,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f26])).

fof(f6,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => v4_relat_1(X2,X0) ) ),
    inference(pure_predicate_removal,[],[f6])).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f15])).

fof(f29,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f4,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f2,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_relat_1(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_relat_1(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f28,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f37,plain,(
    r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f26])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X0,X1) )
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f12])).

fof(f27,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(X1,X2)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k7_relat_1(X1,X0) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f17,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f16])).

fof(f32,plain,(
    ! [X0,X1] :
      ( k7_relat_1(X1,X0) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2,X3] :
      ( k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f34,plain,(
    ! [X2,X0,X3,X1] :
      ( k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
     => r2_relset_1(X0,X1,X2,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f21,plain,(
    ! [X0,X1,X2,X3] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f20])).

fof(f35,plain,(
    ! [X2,X0,X3,X1] :
      ( r2_relset_1(X0,X1,X2,X2)
      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f38,plain,(
    ~ r2_relset_1(sK1,sK0,k5_relset_1(sK1,sK0,sK3,sK2),sK3) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_255,plain,
    ( ~ m1_subset_1(X0_42,X0_43)
    | m1_subset_1(X1_42,X1_43)
    | X1_43 != X0_43
    | X1_42 != X0_42 ),
    theory(equality)).

cnf(c_564,plain,
    ( m1_subset_1(X0_42,X0_43)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | X0_43 != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | X0_42 != sK3 ),
    inference(instantiation,[status(thm)],[c_255])).

cnf(c_595,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | X0_42 != sK3 ),
    inference(instantiation,[status(thm)],[c_564])).

cnf(c_1127,plain,
    ( m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
    | k5_relset_1(sK1,sK0,sK3,sK2) != sK3 ),
    inference(instantiation,[status(thm)],[c_595])).

cnf(c_11,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_238,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
    inference(subtyping,[status(esa)],[c_11])).

cnf(c_467,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_238])).

cnf(c_6,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_3,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_153,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_6,c_3])).

cnf(c_236,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45)))
    | r1_tarski(k1_relat_1(X0_42),X0_44)
    | ~ v1_relat_1(X0_42) ),
    inference(subtyping,[status(esa)],[c_153])).

cnf(c_470,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top
    | r1_tarski(k1_relat_1(X0_42),X0_44) = iProver_top
    | v1_relat_1(X0_42) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_236])).

cnf(c_4,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_242,plain,
    ( v1_relat_1(k2_zfmisc_1(X0_44,X0_45)) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_270,plain,
    ( v1_relat_1(k2_zfmisc_1(X0_44,X0_45)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_242])).

cnf(c_285,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top
    | r1_tarski(k1_relat_1(X0_42),X0_44) = iProver_top
    | v1_relat_1(X0_42) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_236])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_243,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X1_42))
    | ~ v1_relat_1(X1_42)
    | v1_relat_1(X0_42) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_537,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45)))
    | v1_relat_1(X0_42)
    | ~ v1_relat_1(k2_zfmisc_1(X0_44,X0_45)) ),
    inference(instantiation,[status(thm)],[c_243])).

cnf(c_538,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top
    | v1_relat_1(X0_42) = iProver_top
    | v1_relat_1(k2_zfmisc_1(X0_44,X0_45)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_537])).

cnf(c_868,plain,
    ( r1_tarski(k1_relat_1(X0_42),X0_44) = iProver_top
    | m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_470,c_270,c_285,c_538])).

cnf(c_869,plain,
    ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top
    | r1_tarski(k1_relat_1(X0_42),X0_44) = iProver_top ),
    inference(renaming,[status(thm)],[c_868])).

cnf(c_876,plain,
    ( r1_tarski(k1_relat_1(sK3),sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_467,c_869])).

cnf(c_10,negated_conjecture,
    ( r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_239,negated_conjecture,
    ( r1_tarski(sK1,sK2) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_466,plain,
    ( r1_tarski(sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_239])).

cnf(c_0,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X2,X0)
    | r1_tarski(X2,X1) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_244,plain,
    ( ~ r1_tarski(X0_44,X1_44)
    | ~ r1_tarski(X2_44,X0_44)
    | r1_tarski(X2_44,X1_44) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_461,plain,
    ( r1_tarski(X0_44,X1_44) != iProver_top
    | r1_tarski(X2_44,X0_44) != iProver_top
    | r1_tarski(X2_44,X1_44) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_244])).

cnf(c_680,plain,
    ( r1_tarski(X0_44,sK2) = iProver_top
    | r1_tarski(X0_44,sK1) != iProver_top ),
    inference(superposition,[status(thm)],[c_466,c_461])).

cnf(c_882,plain,
    ( r1_tarski(k1_relat_1(sK3),sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_876,c_680])).

cnf(c_5,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k7_relat_1(X0,X1) = X0 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_241,plain,
    ( ~ r1_tarski(k1_relat_1(X0_42),X0_44)
    | ~ v1_relat_1(X0_42)
    | k7_relat_1(X0_42,X0_44) = X0_42 ),
    inference(subtyping,[status(esa)],[c_5])).

cnf(c_790,plain,
    ( ~ r1_tarski(k1_relat_1(sK3),sK2)
    | ~ v1_relat_1(sK3)
    | k7_relat_1(sK3,sK2) = sK3 ),
    inference(instantiation,[status(thm)],[c_241])).

cnf(c_791,plain,
    ( k7_relat_1(sK3,sK2) = sK3
    | r1_tarski(k1_relat_1(sK3),sK2) != iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_790])).

cnf(c_251,plain,
    ( X0_42 != X1_42
    | X2_42 != X1_42
    | X2_42 = X0_42 ),
    theory(equality)).

cnf(c_611,plain,
    ( X0_42 != X1_42
    | k5_relset_1(sK1,sK0,sK3,sK2) != X1_42
    | k5_relset_1(sK1,sK0,sK3,sK2) = X0_42 ),
    inference(instantiation,[status(thm)],[c_251])).

cnf(c_663,plain,
    ( X0_42 != k7_relat_1(sK3,sK2)
    | k5_relset_1(sK1,sK0,sK3,sK2) = X0_42
    | k5_relset_1(sK1,sK0,sK3,sK2) != k7_relat_1(sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_611])).

cnf(c_664,plain,
    ( k5_relset_1(sK1,sK0,sK3,sK2) != k7_relat_1(sK3,sK2)
    | k5_relset_1(sK1,sK0,sK3,sK2) = sK3
    | sK3 != k7_relat_1(sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_663])).

cnf(c_652,plain,
    ( k7_relat_1(sK3,sK2) != X0_42
    | sK3 != X0_42
    | sK3 = k7_relat_1(sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_251])).

cnf(c_653,plain,
    ( k7_relat_1(sK3,sK2) != sK3
    | sK3 = k7_relat_1(sK3,sK2)
    | sK3 != sK3 ),
    inference(instantiation,[status(thm)],[c_652])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k5_relset_1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_240,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45)))
    | k5_relset_1(X0_44,X0_45,X0_42,X1_44) = k7_relat_1(X0_42,X1_44) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_607,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | k5_relset_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_240])).

cnf(c_574,plain,
    ( k5_relset_1(sK1,sK0,sK3,sK2) != X0_42
    | sK3 != X0_42
    | sK3 = k5_relset_1(sK1,sK0,sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_251])).

cnf(c_606,plain,
    ( k5_relset_1(sK1,sK0,sK3,sK2) != k7_relat_1(sK3,sK2)
    | sK3 = k5_relset_1(sK1,sK0,sK3,sK2)
    | sK3 != k7_relat_1(sK3,sK2) ),
    inference(instantiation,[status(thm)],[c_574])).

cnf(c_249,plain,
    ( X0_43 = X0_43 ),
    theory(equality)).

cnf(c_596,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
    inference(instantiation,[status(thm)],[c_249])).

cnf(c_540,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK1,sK0)) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(instantiation,[status(thm)],[c_538])).

cnf(c_8,plain,
    ( r2_relset_1(X0,X1,X2,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_9,negated_conjecture,
    ( ~ r2_relset_1(sK1,sK0,k5_relset_1(sK1,sK0,sK3,sK2),sK3) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_134,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k5_relset_1(sK1,sK0,sK3,sK2) != X0
    | sK3 != X0
    | sK0 != X2
    | sK1 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_9])).

cnf(c_135,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | sK3 != k5_relset_1(sK1,sK0,sK3,sK2) ),
    inference(unflattening,[status(thm)],[c_134])).

cnf(c_237,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | sK3 != k5_relset_1(sK1,sK0,sK3,sK2) ),
    inference(subtyping,[status(esa)],[c_135])).

cnf(c_246,plain,
    ( ~ m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | sP0_iProver_split
    | sK3 != k5_relset_1(sK1,sK0,sK3,sK2) ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_237])).

cnf(c_245,plain,
    ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_237])).

cnf(c_283,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | ~ sP0_iProver_split ),
    inference(instantiation,[status(thm)],[c_245])).

cnf(c_312,plain,
    ( ~ m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
    | sK3 != k5_relset_1(sK1,sK0,sK3,sK2) ),
    inference(global_propositional_subsumption,[status(thm)],[c_246,c_11,c_283])).

cnf(c_272,plain,
    ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_270])).

cnf(c_248,plain,
    ( X0_42 = X0_42 ),
    theory(equality)).

cnf(c_265,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_248])).

cnf(c_12,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1127,c_882,c_791,c_664,c_653,c_607,c_606,c_596,c_540,c_312,c_272,c_265,c_12,c_11])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n020.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 19:25:37 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.01/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.01/1.01  
% 1.01/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.01/1.01  
% 1.01/1.01  ------  iProver source info
% 1.01/1.01  
% 1.01/1.01  git: date: 2020-06-30 10:37:57 +0100
% 1.01/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.01/1.01  git: non_committed_changes: false
% 1.01/1.01  git: last_make_outside_of_git: false
% 1.01/1.01  
% 1.01/1.01  ------ 
% 1.01/1.01  
% 1.01/1.01  ------ Input Options
% 1.01/1.01  
% 1.01/1.01  --out_options                           all
% 1.01/1.01  --tptp_safe_out                         true
% 1.01/1.01  --problem_path                          ""
% 1.01/1.01  --include_path                          ""
% 1.01/1.01  --clausifier                            res/vclausify_rel
% 1.01/1.01  --clausifier_options                    --mode clausify
% 1.01/1.01  --stdin                                 false
% 1.01/1.01  --stats_out                             all
% 1.01/1.01  
% 1.01/1.01  ------ General Options
% 1.01/1.01  
% 1.01/1.01  --fof                                   false
% 1.01/1.01  --time_out_real                         305.
% 1.01/1.01  --time_out_virtual                      -1.
% 1.01/1.01  --symbol_type_check                     false
% 1.01/1.01  --clausify_out                          false
% 1.01/1.01  --sig_cnt_out                           false
% 1.01/1.01  --trig_cnt_out                          false
% 1.01/1.01  --trig_cnt_out_tolerance                1.
% 1.01/1.01  --trig_cnt_out_sk_spl                   false
% 1.01/1.01  --abstr_cl_out                          false
% 1.01/1.01  
% 1.01/1.01  ------ Global Options
% 1.01/1.01  
% 1.01/1.01  --schedule                              default
% 1.01/1.01  --add_important_lit                     false
% 1.01/1.01  --prop_solver_per_cl                    1000
% 1.01/1.01  --min_unsat_core                        false
% 1.01/1.01  --soft_assumptions                      false
% 1.01/1.01  --soft_lemma_size                       3
% 1.01/1.01  --prop_impl_unit_size                   0
% 1.01/1.01  --prop_impl_unit                        []
% 1.01/1.01  --share_sel_clauses                     true
% 1.01/1.01  --reset_solvers                         false
% 1.01/1.01  --bc_imp_inh                            [conj_cone]
% 1.01/1.01  --conj_cone_tolerance                   3.
% 1.01/1.01  --extra_neg_conj                        none
% 1.01/1.01  --large_theory_mode                     true
% 1.01/1.01  --prolific_symb_bound                   200
% 1.01/1.01  --lt_threshold                          2000
% 1.01/1.01  --clause_weak_htbl                      true
% 1.01/1.01  --gc_record_bc_elim                     false
% 1.01/1.01  
% 1.01/1.01  ------ Preprocessing Options
% 1.01/1.01  
% 1.01/1.01  --preprocessing_flag                    true
% 1.01/1.01  --time_out_prep_mult                    0.1
% 1.01/1.01  --splitting_mode                        input
% 1.01/1.01  --splitting_grd                         true
% 1.01/1.01  --splitting_cvd                         false
% 1.01/1.01  --splitting_cvd_svl                     false
% 1.01/1.01  --splitting_nvd                         32
% 1.01/1.01  --sub_typing                            true
% 1.01/1.01  --prep_gs_sim                           true
% 1.01/1.01  --prep_unflatten                        true
% 1.01/1.01  --prep_res_sim                          true
% 1.01/1.01  --prep_upred                            true
% 1.01/1.01  --prep_sem_filter                       exhaustive
% 1.01/1.01  --prep_sem_filter_out                   false
% 1.01/1.01  --pred_elim                             true
% 1.01/1.01  --res_sim_input                         true
% 1.01/1.01  --eq_ax_congr_red                       true
% 1.01/1.01  --pure_diseq_elim                       true
% 1.01/1.01  --brand_transform                       false
% 1.01/1.01  --non_eq_to_eq                          false
% 1.01/1.01  --prep_def_merge                        true
% 1.01/1.01  --prep_def_merge_prop_impl              false
% 1.01/1.01  --prep_def_merge_mbd                    true
% 1.01/1.01  --prep_def_merge_tr_red                 false
% 1.01/1.01  --prep_def_merge_tr_cl                  false
% 1.01/1.01  --smt_preprocessing                     true
% 1.01/1.01  --smt_ac_axioms                         fast
% 1.01/1.01  --preprocessed_out                      false
% 1.01/1.01  --preprocessed_stats                    false
% 1.01/1.01  
% 1.01/1.01  ------ Abstraction refinement Options
% 1.01/1.01  
% 1.01/1.01  --abstr_ref                             []
% 1.01/1.01  --abstr_ref_prep                        false
% 1.01/1.01  --abstr_ref_until_sat                   false
% 1.01/1.01  --abstr_ref_sig_restrict                funpre
% 1.01/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.01/1.01  --abstr_ref_under                       []
% 1.01/1.01  
% 1.01/1.01  ------ SAT Options
% 1.01/1.01  
% 1.01/1.01  --sat_mode                              false
% 1.01/1.01  --sat_fm_restart_options                ""
% 1.01/1.01  --sat_gr_def                            false
% 1.01/1.01  --sat_epr_types                         true
% 1.01/1.01  --sat_non_cyclic_types                  false
% 1.01/1.01  --sat_finite_models                     false
% 1.01/1.01  --sat_fm_lemmas                         false
% 1.01/1.01  --sat_fm_prep                           false
% 1.01/1.01  --sat_fm_uc_incr                        true
% 1.01/1.01  --sat_out_model                         small
% 1.01/1.01  --sat_out_clauses                       false
% 1.01/1.01  
% 1.01/1.01  ------ QBF Options
% 1.01/1.01  
% 1.01/1.01  --qbf_mode                              false
% 1.01/1.01  --qbf_elim_univ                         false
% 1.01/1.01  --qbf_dom_inst                          none
% 1.01/1.01  --qbf_dom_pre_inst                      false
% 1.01/1.01  --qbf_sk_in                             false
% 1.01/1.01  --qbf_pred_elim                         true
% 1.01/1.01  --qbf_split                             512
% 1.01/1.01  
% 1.01/1.01  ------ BMC1 Options
% 1.01/1.01  
% 1.01/1.01  --bmc1_incremental                      false
% 1.01/1.01  --bmc1_axioms                           reachable_all
% 1.01/1.01  --bmc1_min_bound                        0
% 1.01/1.01  --bmc1_max_bound                        -1
% 1.01/1.01  --bmc1_max_bound_default                -1
% 1.01/1.01  --bmc1_symbol_reachability              true
% 1.01/1.01  --bmc1_property_lemmas                  false
% 1.01/1.01  --bmc1_k_induction                      false
% 1.01/1.01  --bmc1_non_equiv_states                 false
% 1.01/1.01  --bmc1_deadlock                         false
% 1.01/1.01  --bmc1_ucm                              false
% 1.01/1.01  --bmc1_add_unsat_core                   none
% 1.01/1.01  --bmc1_unsat_core_children              false
% 1.01/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.01/1.01  --bmc1_out_stat                         full
% 1.01/1.01  --bmc1_ground_init                      false
% 1.01/1.01  --bmc1_pre_inst_next_state              false
% 1.01/1.01  --bmc1_pre_inst_state                   false
% 1.01/1.01  --bmc1_pre_inst_reach_state             false
% 1.01/1.01  --bmc1_out_unsat_core                   false
% 1.01/1.01  --bmc1_aig_witness_out                  false
% 1.01/1.01  --bmc1_verbose                          false
% 1.01/1.01  --bmc1_dump_clauses_tptp                false
% 1.01/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.01/1.01  --bmc1_dump_file                        -
% 1.01/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.01/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.01/1.01  --bmc1_ucm_extend_mode                  1
% 1.01/1.01  --bmc1_ucm_init_mode                    2
% 1.01/1.01  --bmc1_ucm_cone_mode                    none
% 1.01/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.01/1.01  --bmc1_ucm_relax_model                  4
% 1.01/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.01/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.01/1.01  --bmc1_ucm_layered_model                none
% 1.01/1.01  --bmc1_ucm_max_lemma_size               10
% 1.01/1.01  
% 1.01/1.01  ------ AIG Options
% 1.01/1.01  
% 1.01/1.01  --aig_mode                              false
% 1.01/1.01  
% 1.01/1.01  ------ Instantiation Options
% 1.01/1.01  
% 1.01/1.01  --instantiation_flag                    true
% 1.01/1.01  --inst_sos_flag                         false
% 1.01/1.01  --inst_sos_phase                        true
% 1.01/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.01/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.01/1.01  --inst_lit_sel_side                     num_symb
% 1.01/1.01  --inst_solver_per_active                1400
% 1.01/1.01  --inst_solver_calls_frac                1.
% 1.01/1.01  --inst_passive_queue_type               priority_queues
% 1.01/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.01/1.01  --inst_passive_queues_freq              [25;2]
% 1.01/1.01  --inst_dismatching                      true
% 1.01/1.01  --inst_eager_unprocessed_to_passive     true
% 1.01/1.01  --inst_prop_sim_given                   true
% 1.01/1.01  --inst_prop_sim_new                     false
% 1.01/1.01  --inst_subs_new                         false
% 1.01/1.01  --inst_eq_res_simp                      false
% 1.01/1.01  --inst_subs_given                       false
% 1.01/1.01  --inst_orphan_elimination               true
% 1.01/1.01  --inst_learning_loop_flag               true
% 1.01/1.01  --inst_learning_start                   3000
% 1.01/1.01  --inst_learning_factor                  2
% 1.01/1.01  --inst_start_prop_sim_after_learn       3
% 1.01/1.01  --inst_sel_renew                        solver
% 1.01/1.01  --inst_lit_activity_flag                true
% 1.01/1.01  --inst_restr_to_given                   false
% 1.01/1.01  --inst_activity_threshold               500
% 1.01/1.01  --inst_out_proof                        true
% 1.01/1.01  
% 1.01/1.01  ------ Resolution Options
% 1.01/1.01  
% 1.01/1.01  --resolution_flag                       true
% 1.01/1.01  --res_lit_sel                           adaptive
% 1.01/1.01  --res_lit_sel_side                      none
% 1.01/1.01  --res_ordering                          kbo
% 1.01/1.01  --res_to_prop_solver                    active
% 1.01/1.01  --res_prop_simpl_new                    false
% 1.01/1.01  --res_prop_simpl_given                  true
% 1.01/1.01  --res_passive_queue_type                priority_queues
% 1.01/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.01/1.01  --res_passive_queues_freq               [15;5]
% 1.01/1.01  --res_forward_subs                      full
% 1.01/1.01  --res_backward_subs                     full
% 1.01/1.01  --res_forward_subs_resolution           true
% 1.01/1.01  --res_backward_subs_resolution          true
% 1.01/1.01  --res_orphan_elimination                true
% 1.01/1.01  --res_time_limit                        2.
% 1.01/1.01  --res_out_proof                         true
% 1.01/1.01  
% 1.01/1.01  ------ Superposition Options
% 1.01/1.01  
% 1.01/1.01  --superposition_flag                    true
% 1.01/1.01  --sup_passive_queue_type                priority_queues
% 1.01/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.01/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.01/1.01  --demod_completeness_check              fast
% 1.01/1.01  --demod_use_ground                      true
% 1.01/1.01  --sup_to_prop_solver                    passive
% 1.01/1.01  --sup_prop_simpl_new                    true
% 1.01/1.01  --sup_prop_simpl_given                  true
% 1.01/1.01  --sup_fun_splitting                     false
% 1.01/1.01  --sup_smt_interval                      50000
% 1.01/1.01  
% 1.01/1.01  ------ Superposition Simplification Setup
% 1.01/1.01  
% 1.01/1.01  --sup_indices_passive                   []
% 1.01/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.01/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.01/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.01/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.01/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.01/1.01  --sup_full_bw                           [BwDemod]
% 1.01/1.01  --sup_immed_triv                        [TrivRules]
% 1.01/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.01/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.01/1.01  --sup_immed_bw_main                     []
% 1.01/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.01/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.01/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.01/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.01/1.01  
% 1.01/1.01  ------ Combination Options
% 1.01/1.01  
% 1.01/1.01  --comb_res_mult                         3
% 1.01/1.01  --comb_sup_mult                         2
% 1.01/1.01  --comb_inst_mult                        10
% 1.01/1.01  
% 1.01/1.01  ------ Debug Options
% 1.01/1.01  
% 1.01/1.01  --dbg_backtrace                         false
% 1.01/1.01  --dbg_dump_prop_clauses                 false
% 1.01/1.01  --dbg_dump_prop_clauses_file            -
% 1.01/1.01  --dbg_out_stat                          false
% 1.01/1.01  ------ Parsing...
% 1.01/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.01/1.01  
% 1.01/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 1.01/1.01  
% 1.01/1.01  ------ Preprocessing... gs_s  sp: 1 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.01/1.01  
% 1.01/1.01  ------ Preprocessing... sf_s  rm: 2 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.01/1.01  ------ Proving...
% 1.01/1.01  ------ Problem Properties 
% 1.01/1.01  
% 1.01/1.01  
% 1.01/1.01  clauses                                 10
% 1.01/1.01  conjectures                             2
% 1.01/1.01  EPR                                     2
% 1.01/1.01  Horn                                    10
% 1.01/1.01  unary                                   3
% 1.01/1.01  binary                                  2
% 1.01/1.01  lits                                    22
% 1.01/1.01  lits eq                                 3
% 1.01/1.01  fd_pure                                 0
% 1.01/1.01  fd_pseudo                               0
% 1.01/1.01  fd_cond                                 0
% 1.01/1.01  fd_pseudo_cond                          0
% 1.01/1.01  AC symbols                              0
% 1.01/1.01  
% 1.01/1.01  ------ Schedule dynamic 5 is on 
% 1.01/1.01  
% 1.01/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.01/1.01  
% 1.01/1.01  
% 1.01/1.01  ------ 
% 1.01/1.01  Current options:
% 1.01/1.01  ------ 
% 1.01/1.01  
% 1.01/1.01  ------ Input Options
% 1.01/1.01  
% 1.01/1.01  --out_options                           all
% 1.01/1.01  --tptp_safe_out                         true
% 1.01/1.01  --problem_path                          ""
% 1.01/1.01  --include_path                          ""
% 1.01/1.01  --clausifier                            res/vclausify_rel
% 1.01/1.01  --clausifier_options                    --mode clausify
% 1.01/1.01  --stdin                                 false
% 1.01/1.01  --stats_out                             all
% 1.01/1.01  
% 1.01/1.01  ------ General Options
% 1.01/1.01  
% 1.01/1.01  --fof                                   false
% 1.01/1.01  --time_out_real                         305.
% 1.01/1.01  --time_out_virtual                      -1.
% 1.01/1.01  --symbol_type_check                     false
% 1.01/1.01  --clausify_out                          false
% 1.01/1.01  --sig_cnt_out                           false
% 1.01/1.01  --trig_cnt_out                          false
% 1.01/1.01  --trig_cnt_out_tolerance                1.
% 1.01/1.01  --trig_cnt_out_sk_spl                   false
% 1.01/1.01  --abstr_cl_out                          false
% 1.01/1.01  
% 1.01/1.01  ------ Global Options
% 1.01/1.01  
% 1.01/1.01  --schedule                              default
% 1.01/1.01  --add_important_lit                     false
% 1.01/1.01  --prop_solver_per_cl                    1000
% 1.01/1.01  --min_unsat_core                        false
% 1.01/1.01  --soft_assumptions                      false
% 1.01/1.01  --soft_lemma_size                       3
% 1.01/1.01  --prop_impl_unit_size                   0
% 1.01/1.01  --prop_impl_unit                        []
% 1.01/1.01  --share_sel_clauses                     true
% 1.01/1.01  --reset_solvers                         false
% 1.01/1.01  --bc_imp_inh                            [conj_cone]
% 1.01/1.01  --conj_cone_tolerance                   3.
% 1.01/1.01  --extra_neg_conj                        none
% 1.01/1.01  --large_theory_mode                     true
% 1.01/1.01  --prolific_symb_bound                   200
% 1.01/1.01  --lt_threshold                          2000
% 1.01/1.01  --clause_weak_htbl                      true
% 1.01/1.01  --gc_record_bc_elim                     false
% 1.01/1.01  
% 1.01/1.01  ------ Preprocessing Options
% 1.01/1.01  
% 1.01/1.01  --preprocessing_flag                    true
% 1.01/1.01  --time_out_prep_mult                    0.1
% 1.01/1.01  --splitting_mode                        input
% 1.01/1.01  --splitting_grd                         true
% 1.01/1.01  --splitting_cvd                         false
% 1.01/1.01  --splitting_cvd_svl                     false
% 1.01/1.01  --splitting_nvd                         32
% 1.01/1.01  --sub_typing                            true
% 1.01/1.01  --prep_gs_sim                           true
% 1.01/1.01  --prep_unflatten                        true
% 1.01/1.01  --prep_res_sim                          true
% 1.01/1.01  --prep_upred                            true
% 1.01/1.01  --prep_sem_filter                       exhaustive
% 1.01/1.01  --prep_sem_filter_out                   false
% 1.01/1.01  --pred_elim                             true
% 1.01/1.01  --res_sim_input                         true
% 1.01/1.01  --eq_ax_congr_red                       true
% 1.01/1.01  --pure_diseq_elim                       true
% 1.01/1.01  --brand_transform                       false
% 1.01/1.01  --non_eq_to_eq                          false
% 1.01/1.01  --prep_def_merge                        true
% 1.01/1.01  --prep_def_merge_prop_impl              false
% 1.01/1.01  --prep_def_merge_mbd                    true
% 1.01/1.01  --prep_def_merge_tr_red                 false
% 1.01/1.01  --prep_def_merge_tr_cl                  false
% 1.01/1.01  --smt_preprocessing                     true
% 1.01/1.01  --smt_ac_axioms                         fast
% 1.01/1.01  --preprocessed_out                      false
% 1.01/1.01  --preprocessed_stats                    false
% 1.01/1.01  
% 1.01/1.01  ------ Abstraction refinement Options
% 1.01/1.01  
% 1.01/1.01  --abstr_ref                             []
% 1.01/1.01  --abstr_ref_prep                        false
% 1.01/1.01  --abstr_ref_until_sat                   false
% 1.01/1.01  --abstr_ref_sig_restrict                funpre
% 1.01/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.01/1.01  --abstr_ref_under                       []
% 1.01/1.01  
% 1.01/1.01  ------ SAT Options
% 1.01/1.01  
% 1.01/1.01  --sat_mode                              false
% 1.01/1.01  --sat_fm_restart_options                ""
% 1.01/1.01  --sat_gr_def                            false
% 1.01/1.01  --sat_epr_types                         true
% 1.01/1.01  --sat_non_cyclic_types                  false
% 1.01/1.01  --sat_finite_models                     false
% 1.01/1.01  --sat_fm_lemmas                         false
% 1.01/1.01  --sat_fm_prep                           false
% 1.01/1.01  --sat_fm_uc_incr                        true
% 1.01/1.01  --sat_out_model                         small
% 1.01/1.01  --sat_out_clauses                       false
% 1.01/1.01  
% 1.01/1.01  ------ QBF Options
% 1.01/1.01  
% 1.01/1.01  --qbf_mode                              false
% 1.01/1.01  --qbf_elim_univ                         false
% 1.01/1.01  --qbf_dom_inst                          none
% 1.01/1.01  --qbf_dom_pre_inst                      false
% 1.01/1.01  --qbf_sk_in                             false
% 1.01/1.01  --qbf_pred_elim                         true
% 1.01/1.01  --qbf_split                             512
% 1.01/1.01  
% 1.01/1.01  ------ BMC1 Options
% 1.01/1.01  
% 1.01/1.01  --bmc1_incremental                      false
% 1.01/1.01  --bmc1_axioms                           reachable_all
% 1.01/1.01  --bmc1_min_bound                        0
% 1.01/1.01  --bmc1_max_bound                        -1
% 1.01/1.01  --bmc1_max_bound_default                -1
% 1.01/1.01  --bmc1_symbol_reachability              true
% 1.01/1.01  --bmc1_property_lemmas                  false
% 1.01/1.01  --bmc1_k_induction                      false
% 1.01/1.01  --bmc1_non_equiv_states                 false
% 1.01/1.01  --bmc1_deadlock                         false
% 1.01/1.01  --bmc1_ucm                              false
% 1.01/1.01  --bmc1_add_unsat_core                   none
% 1.01/1.01  --bmc1_unsat_core_children              false
% 1.01/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.01/1.01  --bmc1_out_stat                         full
% 1.01/1.01  --bmc1_ground_init                      false
% 1.01/1.01  --bmc1_pre_inst_next_state              false
% 1.01/1.01  --bmc1_pre_inst_state                   false
% 1.01/1.01  --bmc1_pre_inst_reach_state             false
% 1.01/1.01  --bmc1_out_unsat_core                   false
% 1.01/1.01  --bmc1_aig_witness_out                  false
% 1.01/1.01  --bmc1_verbose                          false
% 1.01/1.01  --bmc1_dump_clauses_tptp                false
% 1.01/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.01/1.01  --bmc1_dump_file                        -
% 1.01/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.01/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.01/1.01  --bmc1_ucm_extend_mode                  1
% 1.01/1.01  --bmc1_ucm_init_mode                    2
% 1.01/1.01  --bmc1_ucm_cone_mode                    none
% 1.01/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.01/1.01  --bmc1_ucm_relax_model                  4
% 1.01/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.01/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.01/1.01  --bmc1_ucm_layered_model                none
% 1.01/1.01  --bmc1_ucm_max_lemma_size               10
% 1.01/1.01  
% 1.01/1.01  ------ AIG Options
% 1.01/1.01  
% 1.01/1.01  --aig_mode                              false
% 1.01/1.01  
% 1.01/1.01  ------ Instantiation Options
% 1.01/1.01  
% 1.01/1.01  --instantiation_flag                    true
% 1.01/1.01  --inst_sos_flag                         false
% 1.01/1.01  --inst_sos_phase                        true
% 1.01/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.01/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.01/1.01  --inst_lit_sel_side                     none
% 1.01/1.01  --inst_solver_per_active                1400
% 1.01/1.01  --inst_solver_calls_frac                1.
% 1.01/1.01  --inst_passive_queue_type               priority_queues
% 1.01/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.01/1.01  --inst_passive_queues_freq              [25;2]
% 1.01/1.01  --inst_dismatching                      true
% 1.01/1.01  --inst_eager_unprocessed_to_passive     true
% 1.01/1.01  --inst_prop_sim_given                   true
% 1.01/1.01  --inst_prop_sim_new                     false
% 1.01/1.01  --inst_subs_new                         false
% 1.01/1.01  --inst_eq_res_simp                      false
% 1.01/1.01  --inst_subs_given                       false
% 1.01/1.01  --inst_orphan_elimination               true
% 1.01/1.01  --inst_learning_loop_flag               true
% 1.01/1.01  --inst_learning_start                   3000
% 1.01/1.01  --inst_learning_factor                  2
% 1.01/1.01  --inst_start_prop_sim_after_learn       3
% 1.01/1.01  --inst_sel_renew                        solver
% 1.01/1.01  --inst_lit_activity_flag                true
% 1.01/1.01  --inst_restr_to_given                   false
% 1.01/1.01  --inst_activity_threshold               500
% 1.01/1.01  --inst_out_proof                        true
% 1.01/1.01  
% 1.01/1.01  ------ Resolution Options
% 1.01/1.01  
% 1.01/1.01  --resolution_flag                       false
% 1.01/1.01  --res_lit_sel                           adaptive
% 1.01/1.01  --res_lit_sel_side                      none
% 1.01/1.01  --res_ordering                          kbo
% 1.01/1.01  --res_to_prop_solver                    active
% 1.01/1.01  --res_prop_simpl_new                    false
% 1.01/1.01  --res_prop_simpl_given                  true
% 1.01/1.01  --res_passive_queue_type                priority_queues
% 1.01/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.01/1.01  --res_passive_queues_freq               [15;5]
% 1.01/1.01  --res_forward_subs                      full
% 1.01/1.01  --res_backward_subs                     full
% 1.01/1.01  --res_forward_subs_resolution           true
% 1.01/1.01  --res_backward_subs_resolution          true
% 1.01/1.01  --res_orphan_elimination                true
% 1.01/1.01  --res_time_limit                        2.
% 1.01/1.01  --res_out_proof                         true
% 1.01/1.01  
% 1.01/1.01  ------ Superposition Options
% 1.01/1.01  
% 1.01/1.01  --superposition_flag                    true
% 1.01/1.01  --sup_passive_queue_type                priority_queues
% 1.01/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.01/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.01/1.01  --demod_completeness_check              fast
% 1.01/1.01  --demod_use_ground                      true
% 1.01/1.01  --sup_to_prop_solver                    passive
% 1.01/1.01  --sup_prop_simpl_new                    true
% 1.01/1.01  --sup_prop_simpl_given                  true
% 1.01/1.01  --sup_fun_splitting                     false
% 1.01/1.01  --sup_smt_interval                      50000
% 1.01/1.01  
% 1.01/1.01  ------ Superposition Simplification Setup
% 1.01/1.01  
% 1.01/1.01  --sup_indices_passive                   []
% 1.01/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.01/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.01/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.01/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.01/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.01/1.01  --sup_full_bw                           [BwDemod]
% 1.01/1.01  --sup_immed_triv                        [TrivRules]
% 1.01/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.01/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.01/1.01  --sup_immed_bw_main                     []
% 1.01/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.01/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.01/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.01/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.01/1.01  
% 1.01/1.01  ------ Combination Options
% 1.01/1.01  
% 1.01/1.01  --comb_res_mult                         3
% 1.01/1.01  --comb_sup_mult                         2
% 1.01/1.01  --comb_inst_mult                        10
% 1.01/1.01  
% 1.01/1.01  ------ Debug Options
% 1.01/1.01  
% 1.01/1.01  --dbg_backtrace                         false
% 1.01/1.01  --dbg_dump_prop_clauses                 false
% 1.01/1.01  --dbg_dump_prop_clauses_file            -
% 1.01/1.01  --dbg_out_stat                          false
% 1.01/1.01  
% 1.01/1.01  
% 1.01/1.01  
% 1.01/1.01  
% 1.01/1.01  ------ Proving...
% 1.01/1.01  
% 1.01/1.01  
% 1.01/1.01  % SZS status Theorem for theBenchmark.p
% 1.01/1.01  
% 1.01/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 1.01/1.01  
% 1.01/1.01  fof(f9,conjecture,(
% 1.01/1.01    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => (r1_tarski(X1,X2) => r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)))),
% 1.01/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.01/1.01  
% 1.01/1.01  fof(f10,negated_conjecture,(
% 1.01/1.01    ~! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))) => (r1_tarski(X1,X2) => r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3)))),
% 1.01/1.01    inference(negated_conjecture,[],[f9])).
% 1.01/1.01  
% 1.01/1.01  fof(f22,plain,(
% 1.01/1.01    ? [X0,X1,X2,X3] : ((~r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) & r1_tarski(X1,X2)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 1.01/1.01    inference(ennf_transformation,[],[f10])).
% 1.01/1.01  
% 1.01/1.01  fof(f23,plain,(
% 1.01/1.01    ? [X0,X1,X2,X3] : (~r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) & r1_tarski(X1,X2) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0))))),
% 1.01/1.01    inference(flattening,[],[f22])).
% 1.01/1.01  
% 1.01/1.01  fof(f25,plain,(
% 1.01/1.01    ? [X0,X1,X2,X3] : (~r2_relset_1(X1,X0,k5_relset_1(X1,X0,X3,X2),X3) & r1_tarski(X1,X2) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X0)))) => (~r2_relset_1(sK1,sK0,k5_relset_1(sK1,sK0,sK3,sK2),sK3) & r1_tarski(sK1,sK2) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))))),
% 1.01/1.01    introduced(choice_axiom,[])).
% 1.01/1.01  
% 1.01/1.01  fof(f26,plain,(
% 1.01/1.01    ~r2_relset_1(sK1,sK0,k5_relset_1(sK1,sK0,sK3,sK2),sK3) & r1_tarski(sK1,sK2) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 1.01/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f23,f25])).
% 1.01/1.01  
% 1.01/1.01  fof(f36,plain,(
% 1.01/1.01    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))),
% 1.01/1.01    inference(cnf_transformation,[],[f26])).
% 1.01/1.01  
% 1.01/1.01  fof(f6,axiom,(
% 1.01/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 1.01/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.01/1.01  
% 1.01/1.01  fof(f11,plain,(
% 1.01/1.01    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v4_relat_1(X2,X0))),
% 1.01/1.01    inference(pure_predicate_removal,[],[f6])).
% 1.01/1.01  
% 1.01/1.01  fof(f18,plain,(
% 1.01/1.01    ! [X0,X1,X2] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.01/1.01    inference(ennf_transformation,[],[f11])).
% 1.01/1.01  
% 1.01/1.01  fof(f33,plain,(
% 1.01/1.01    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.01/1.01    inference(cnf_transformation,[],[f18])).
% 1.01/1.01  
% 1.01/1.01  fof(f3,axiom,(
% 1.01/1.01    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 1.01/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.01/1.01  
% 1.01/1.01  fof(f15,plain,(
% 1.01/1.01    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.01/1.01    inference(ennf_transformation,[],[f3])).
% 1.01/1.01  
% 1.01/1.01  fof(f24,plain,(
% 1.01/1.01    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 1.01/1.01    inference(nnf_transformation,[],[f15])).
% 1.01/1.01  
% 1.01/1.01  fof(f29,plain,(
% 1.01/1.01    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 1.01/1.01    inference(cnf_transformation,[],[f24])).
% 1.01/1.01  
% 1.01/1.01  fof(f4,axiom,(
% 1.01/1.01    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.01/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.01/1.01  
% 1.01/1.01  fof(f31,plain,(
% 1.01/1.01    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.01/1.01    inference(cnf_transformation,[],[f4])).
% 1.01/1.01  
% 1.01/1.01  fof(f2,axiom,(
% 1.01/1.01    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 1.01/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.01/1.01  
% 1.01/1.01  fof(f14,plain,(
% 1.01/1.01    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 1.01/1.01    inference(ennf_transformation,[],[f2])).
% 1.01/1.01  
% 1.01/1.01  fof(f28,plain,(
% 1.01/1.01    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 1.01/1.01    inference(cnf_transformation,[],[f14])).
% 1.01/1.01  
% 1.01/1.01  fof(f37,plain,(
% 1.01/1.01    r1_tarski(sK1,sK2)),
% 1.01/1.01    inference(cnf_transformation,[],[f26])).
% 1.01/1.01  
% 1.01/1.01  fof(f1,axiom,(
% 1.01/1.01    ! [X0,X1,X2] : ((r1_tarski(X1,X2) & r1_tarski(X0,X1)) => r1_tarski(X0,X2))),
% 1.01/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.01/1.01  
% 1.01/1.01  fof(f12,plain,(
% 1.01/1.01    ! [X0,X1,X2] : (r1_tarski(X0,X2) | (~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)))),
% 1.01/1.01    inference(ennf_transformation,[],[f1])).
% 1.01/1.01  
% 1.01/1.01  fof(f13,plain,(
% 1.01/1.01    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1))),
% 1.01/1.01    inference(flattening,[],[f12])).
% 1.01/1.01  
% 1.01/1.01  fof(f27,plain,(
% 1.01/1.01    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(X1,X2) | ~r1_tarski(X0,X1)) )),
% 1.01/1.01    inference(cnf_transformation,[],[f13])).
% 1.01/1.01  
% 1.01/1.01  fof(f5,axiom,(
% 1.01/1.01    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k7_relat_1(X1,X0) = X1))),
% 1.01/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.01/1.01  
% 1.01/1.01  fof(f16,plain,(
% 1.01/1.01    ! [X0,X1] : ((k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 1.01/1.01    inference(ennf_transformation,[],[f5])).
% 1.01/1.01  
% 1.01/1.01  fof(f17,plain,(
% 1.01/1.01    ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 1.01/1.01    inference(flattening,[],[f16])).
% 1.01/1.01  
% 1.01/1.01  fof(f32,plain,(
% 1.01/1.01    ( ! [X0,X1] : (k7_relat_1(X1,X0) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 1.01/1.01    inference(cnf_transformation,[],[f17])).
% 1.01/1.01  
% 1.01/1.01  fof(f7,axiom,(
% 1.01/1.01    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3))),
% 1.01/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.01/1.01  
% 1.01/1.01  fof(f19,plain,(
% 1.01/1.01    ! [X0,X1,X2,X3] : (k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.01/1.01    inference(ennf_transformation,[],[f7])).
% 1.01/1.01  
% 1.01/1.01  fof(f34,plain,(
% 1.01/1.01    ( ! [X2,X0,X3,X1] : (k7_relat_1(X2,X3) = k5_relset_1(X0,X1,X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.01/1.01    inference(cnf_transformation,[],[f19])).
% 1.01/1.01  
% 1.01/1.01  fof(f8,axiom,(
% 1.01/1.01    ! [X0,X1,X2,X3] : ((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => r2_relset_1(X0,X1,X2,X2))),
% 1.01/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.01/1.01  
% 1.01/1.01  fof(f20,plain,(
% 1.01/1.01    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | (~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))))),
% 1.01/1.01    inference(ennf_transformation,[],[f8])).
% 1.01/1.01  
% 1.01/1.01  fof(f21,plain,(
% 1.01/1.01    ! [X0,X1,X2,X3] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.01/1.01    inference(flattening,[],[f20])).
% 1.01/1.01  
% 1.01/1.01  fof(f35,plain,(
% 1.01/1.01    ( ! [X2,X0,X3,X1] : (r2_relset_1(X0,X1,X2,X2) | ~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.01/1.01    inference(cnf_transformation,[],[f21])).
% 1.01/1.01  
% 1.01/1.01  fof(f38,plain,(
% 1.01/1.01    ~r2_relset_1(sK1,sK0,k5_relset_1(sK1,sK0,sK3,sK2),sK3)),
% 1.01/1.01    inference(cnf_transformation,[],[f26])).
% 1.01/1.01  
% 1.01/1.01  cnf(c_255,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0_42,X0_43)
% 1.01/1.01      | m1_subset_1(X1_42,X1_43)
% 1.01/1.01      | X1_43 != X0_43
% 1.01/1.01      | X1_42 != X0_42 ),
% 1.01/1.01      theory(equality) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_564,plain,
% 1.01/1.01      ( m1_subset_1(X0_42,X0_43)
% 1.01/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | X0_43 != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.01/1.01      | X0_42 != sK3 ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_255]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_595,plain,
% 1.01/1.01      ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.01/1.01      | X0_42 != sK3 ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_564]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_1127,plain,
% 1.01/1.01      ( m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) != k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))
% 1.01/1.01      | k5_relset_1(sK1,sK0,sK3,sK2) != sK3 ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_595]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_11,negated_conjecture,
% 1.01/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
% 1.01/1.01      inference(cnf_transformation,[],[f36]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_238,negated_conjecture,
% 1.01/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) ),
% 1.01/1.01      inference(subtyping,[status(esa)],[c_11]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_467,plain,
% 1.01/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 1.01/1.01      inference(predicate_to_equality,[status(thm)],[c_238]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_6,plain,
% 1.01/1.01      ( v4_relat_1(X0,X1)
% 1.01/1.01      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 1.01/1.01      inference(cnf_transformation,[],[f33]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_3,plain,
% 1.01/1.01      ( ~ v4_relat_1(X0,X1)
% 1.01/1.01      | r1_tarski(k1_relat_1(X0),X1)
% 1.01/1.01      | ~ v1_relat_1(X0) ),
% 1.01/1.01      inference(cnf_transformation,[],[f29]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_153,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.01/1.01      | r1_tarski(k1_relat_1(X0),X1)
% 1.01/1.01      | ~ v1_relat_1(X0) ),
% 1.01/1.01      inference(resolution,[status(thm)],[c_6,c_3]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_236,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45)))
% 1.01/1.01      | r1_tarski(k1_relat_1(X0_42),X0_44)
% 1.01/1.01      | ~ v1_relat_1(X0_42) ),
% 1.01/1.01      inference(subtyping,[status(esa)],[c_153]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_470,plain,
% 1.01/1.01      ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top
% 1.01/1.01      | r1_tarski(k1_relat_1(X0_42),X0_44) = iProver_top
% 1.01/1.01      | v1_relat_1(X0_42) != iProver_top ),
% 1.01/1.01      inference(predicate_to_equality,[status(thm)],[c_236]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_4,plain,
% 1.01/1.01      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.01/1.01      inference(cnf_transformation,[],[f31]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_242,plain,
% 1.01/1.01      ( v1_relat_1(k2_zfmisc_1(X0_44,X0_45)) ),
% 1.01/1.01      inference(subtyping,[status(esa)],[c_4]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_270,plain,
% 1.01/1.01      ( v1_relat_1(k2_zfmisc_1(X0_44,X0_45)) = iProver_top ),
% 1.01/1.01      inference(predicate_to_equality,[status(thm)],[c_242]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_285,plain,
% 1.01/1.01      ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top
% 1.01/1.01      | r1_tarski(k1_relat_1(X0_42),X0_44) = iProver_top
% 1.01/1.01      | v1_relat_1(X0_42) != iProver_top ),
% 1.01/1.01      inference(predicate_to_equality,[status(thm)],[c_236]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_1,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.01/1.01      | ~ v1_relat_1(X1)
% 1.01/1.01      | v1_relat_1(X0) ),
% 1.01/1.01      inference(cnf_transformation,[],[f28]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_243,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(X1_42))
% 1.01/1.01      | ~ v1_relat_1(X1_42)
% 1.01/1.01      | v1_relat_1(X0_42) ),
% 1.01/1.01      inference(subtyping,[status(esa)],[c_1]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_537,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45)))
% 1.01/1.01      | v1_relat_1(X0_42)
% 1.01/1.01      | ~ v1_relat_1(k2_zfmisc_1(X0_44,X0_45)) ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_243]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_538,plain,
% 1.01/1.01      ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top
% 1.01/1.01      | v1_relat_1(X0_42) = iProver_top
% 1.01/1.01      | v1_relat_1(k2_zfmisc_1(X0_44,X0_45)) != iProver_top ),
% 1.01/1.01      inference(predicate_to_equality,[status(thm)],[c_537]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_868,plain,
% 1.01/1.01      ( r1_tarski(k1_relat_1(X0_42),X0_44) = iProver_top
% 1.01/1.01      | m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top ),
% 1.01/1.01      inference(global_propositional_subsumption,
% 1.01/1.01                [status(thm)],
% 1.01/1.01                [c_470,c_270,c_285,c_538]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_869,plain,
% 1.01/1.01      ( m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45))) != iProver_top
% 1.01/1.01      | r1_tarski(k1_relat_1(X0_42),X0_44) = iProver_top ),
% 1.01/1.01      inference(renaming,[status(thm)],[c_868]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_876,plain,
% 1.01/1.01      ( r1_tarski(k1_relat_1(sK3),sK1) = iProver_top ),
% 1.01/1.01      inference(superposition,[status(thm)],[c_467,c_869]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_10,negated_conjecture,
% 1.01/1.01      ( r1_tarski(sK1,sK2) ),
% 1.01/1.01      inference(cnf_transformation,[],[f37]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_239,negated_conjecture,
% 1.01/1.01      ( r1_tarski(sK1,sK2) ),
% 1.01/1.01      inference(subtyping,[status(esa)],[c_10]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_466,plain,
% 1.01/1.01      ( r1_tarski(sK1,sK2) = iProver_top ),
% 1.01/1.01      inference(predicate_to_equality,[status(thm)],[c_239]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_0,plain,
% 1.01/1.01      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X2,X0) | r1_tarski(X2,X1) ),
% 1.01/1.01      inference(cnf_transformation,[],[f27]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_244,plain,
% 1.01/1.01      ( ~ r1_tarski(X0_44,X1_44)
% 1.01/1.01      | ~ r1_tarski(X2_44,X0_44)
% 1.01/1.01      | r1_tarski(X2_44,X1_44) ),
% 1.01/1.01      inference(subtyping,[status(esa)],[c_0]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_461,plain,
% 1.01/1.01      ( r1_tarski(X0_44,X1_44) != iProver_top
% 1.01/1.01      | r1_tarski(X2_44,X0_44) != iProver_top
% 1.01/1.01      | r1_tarski(X2_44,X1_44) = iProver_top ),
% 1.01/1.01      inference(predicate_to_equality,[status(thm)],[c_244]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_680,plain,
% 1.01/1.01      ( r1_tarski(X0_44,sK2) = iProver_top
% 1.01/1.01      | r1_tarski(X0_44,sK1) != iProver_top ),
% 1.01/1.01      inference(superposition,[status(thm)],[c_466,c_461]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_882,plain,
% 1.01/1.01      ( r1_tarski(k1_relat_1(sK3),sK2) = iProver_top ),
% 1.01/1.01      inference(superposition,[status(thm)],[c_876,c_680]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_5,plain,
% 1.01/1.01      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 1.01/1.01      | ~ v1_relat_1(X0)
% 1.01/1.01      | k7_relat_1(X0,X1) = X0 ),
% 1.01/1.01      inference(cnf_transformation,[],[f32]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_241,plain,
% 1.01/1.01      ( ~ r1_tarski(k1_relat_1(X0_42),X0_44)
% 1.01/1.01      | ~ v1_relat_1(X0_42)
% 1.01/1.01      | k7_relat_1(X0_42,X0_44) = X0_42 ),
% 1.01/1.01      inference(subtyping,[status(esa)],[c_5]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_790,plain,
% 1.01/1.01      ( ~ r1_tarski(k1_relat_1(sK3),sK2)
% 1.01/1.01      | ~ v1_relat_1(sK3)
% 1.01/1.01      | k7_relat_1(sK3,sK2) = sK3 ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_241]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_791,plain,
% 1.01/1.01      ( k7_relat_1(sK3,sK2) = sK3
% 1.01/1.01      | r1_tarski(k1_relat_1(sK3),sK2) != iProver_top
% 1.01/1.01      | v1_relat_1(sK3) != iProver_top ),
% 1.01/1.01      inference(predicate_to_equality,[status(thm)],[c_790]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_251,plain,
% 1.01/1.01      ( X0_42 != X1_42 | X2_42 != X1_42 | X2_42 = X0_42 ),
% 1.01/1.01      theory(equality) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_611,plain,
% 1.01/1.01      ( X0_42 != X1_42
% 1.01/1.01      | k5_relset_1(sK1,sK0,sK3,sK2) != X1_42
% 1.01/1.01      | k5_relset_1(sK1,sK0,sK3,sK2) = X0_42 ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_251]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_663,plain,
% 1.01/1.01      ( X0_42 != k7_relat_1(sK3,sK2)
% 1.01/1.01      | k5_relset_1(sK1,sK0,sK3,sK2) = X0_42
% 1.01/1.01      | k5_relset_1(sK1,sK0,sK3,sK2) != k7_relat_1(sK3,sK2) ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_611]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_664,plain,
% 1.01/1.01      ( k5_relset_1(sK1,sK0,sK3,sK2) != k7_relat_1(sK3,sK2)
% 1.01/1.01      | k5_relset_1(sK1,sK0,sK3,sK2) = sK3
% 1.01/1.01      | sK3 != k7_relat_1(sK3,sK2) ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_663]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_652,plain,
% 1.01/1.01      ( k7_relat_1(sK3,sK2) != X0_42
% 1.01/1.01      | sK3 != X0_42
% 1.01/1.01      | sK3 = k7_relat_1(sK3,sK2) ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_251]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_653,plain,
% 1.01/1.01      ( k7_relat_1(sK3,sK2) != sK3
% 1.01/1.01      | sK3 = k7_relat_1(sK3,sK2)
% 1.01/1.01      | sK3 != sK3 ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_652]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_7,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.01/1.01      | k5_relset_1(X1,X2,X0,X3) = k7_relat_1(X0,X3) ),
% 1.01/1.01      inference(cnf_transformation,[],[f34]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_240,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(X0_44,X0_45)))
% 1.01/1.01      | k5_relset_1(X0_44,X0_45,X0_42,X1_44) = k7_relat_1(X0_42,X1_44) ),
% 1.01/1.01      inference(subtyping,[status(esa)],[c_7]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_607,plain,
% 1.01/1.01      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | k5_relset_1(sK1,sK0,sK3,sK2) = k7_relat_1(sK3,sK2) ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_240]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_574,plain,
% 1.01/1.01      ( k5_relset_1(sK1,sK0,sK3,sK2) != X0_42
% 1.01/1.01      | sK3 != X0_42
% 1.01/1.01      | sK3 = k5_relset_1(sK1,sK0,sK3,sK2) ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_251]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_606,plain,
% 1.01/1.01      ( k5_relset_1(sK1,sK0,sK3,sK2) != k7_relat_1(sK3,sK2)
% 1.01/1.01      | sK3 = k5_relset_1(sK1,sK0,sK3,sK2)
% 1.01/1.01      | sK3 != k7_relat_1(sK3,sK2) ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_574]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_249,plain,( X0_43 = X0_43 ),theory(equality) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_596,plain,
% 1.01/1.01      ( k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) = k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)) ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_249]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_540,plain,
% 1.01/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) != iProver_top
% 1.01/1.01      | v1_relat_1(k2_zfmisc_1(sK1,sK0)) != iProver_top
% 1.01/1.01      | v1_relat_1(sK3) = iProver_top ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_538]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_8,plain,
% 1.01/1.01      ( r2_relset_1(X0,X1,X2,X2)
% 1.01/1.01      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.01/1.01      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 1.01/1.01      inference(cnf_transformation,[],[f35]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_9,negated_conjecture,
% 1.01/1.01      ( ~ r2_relset_1(sK1,sK0,k5_relset_1(sK1,sK0,sK3,sK2),sK3) ),
% 1.01/1.01      inference(cnf_transformation,[],[f38]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_134,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.01/1.01      | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.01/1.01      | k5_relset_1(sK1,sK0,sK3,sK2) != X0
% 1.01/1.01      | sK3 != X0
% 1.01/1.01      | sK0 != X2
% 1.01/1.01      | sK1 != X1 ),
% 1.01/1.01      inference(resolution_lifted,[status(thm)],[c_8,c_9]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_135,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | ~ m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | sK3 != k5_relset_1(sK1,sK0,sK3,sK2) ),
% 1.01/1.01      inference(unflattening,[status(thm)],[c_134]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_237,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | ~ m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | sK3 != k5_relset_1(sK1,sK0,sK3,sK2) ),
% 1.01/1.01      inference(subtyping,[status(esa)],[c_135]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_246,plain,
% 1.01/1.01      ( ~ m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | sP0_iProver_split
% 1.01/1.01      | sK3 != k5_relset_1(sK1,sK0,sK3,sK2) ),
% 1.01/1.01      inference(splitting,
% 1.01/1.01                [splitting(split),new_symbols(definition,[])],
% 1.01/1.01                [c_237]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_245,plain,
% 1.01/1.01      ( ~ m1_subset_1(X0_42,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | ~ sP0_iProver_split ),
% 1.01/1.01      inference(splitting,
% 1.01/1.01                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.01/1.01                [c_237]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_283,plain,
% 1.01/1.01      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | ~ sP0_iProver_split ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_245]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_312,plain,
% 1.01/1.01      ( ~ m1_subset_1(k5_relset_1(sK1,sK0,sK3,sK2),k1_zfmisc_1(k2_zfmisc_1(sK1,sK0)))
% 1.01/1.01      | sK3 != k5_relset_1(sK1,sK0,sK3,sK2) ),
% 1.01/1.01      inference(global_propositional_subsumption,
% 1.01/1.01                [status(thm)],
% 1.01/1.01                [c_246,c_11,c_283]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_272,plain,
% 1.01/1.01      ( v1_relat_1(k2_zfmisc_1(sK1,sK0)) = iProver_top ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_270]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_248,plain,( X0_42 = X0_42 ),theory(equality) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_265,plain,
% 1.01/1.01      ( sK3 = sK3 ),
% 1.01/1.01      inference(instantiation,[status(thm)],[c_248]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(c_12,plain,
% 1.01/1.01      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK1,sK0))) = iProver_top ),
% 1.01/1.01      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 1.01/1.01  
% 1.01/1.01  cnf(contradiction,plain,
% 1.01/1.01      ( $false ),
% 1.01/1.01      inference(minisat,
% 1.01/1.01                [status(thm)],
% 1.01/1.01                [c_1127,c_882,c_791,c_664,c_653,c_607,c_606,c_596,c_540,
% 1.01/1.01                 c_312,c_272,c_265,c_12,c_11]) ).
% 1.01/1.01  
% 1.01/1.01  
% 1.01/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 1.01/1.01  
% 1.01/1.01  ------                               Statistics
% 1.01/1.01  
% 1.01/1.01  ------ General
% 1.01/1.01  
% 1.01/1.01  abstr_ref_over_cycles:                  0
% 1.01/1.01  abstr_ref_under_cycles:                 0
% 1.01/1.01  gc_basic_clause_elim:                   0
% 1.01/1.01  forced_gc_time:                         0
% 1.01/1.01  parsing_time:                           0.011
% 1.01/1.01  unif_index_cands_time:                  0.
% 1.01/1.01  unif_index_add_time:                    0.
% 1.01/1.01  orderings_time:                         0.
% 1.01/1.01  out_proof_time:                         0.01
% 1.01/1.01  total_time:                             0.087
% 1.01/1.01  num_of_symbols:                         47
% 1.01/1.01  num_of_terms:                           1141
% 1.01/1.01  
% 1.01/1.01  ------ Preprocessing
% 1.01/1.01  
% 1.01/1.01  num_of_splits:                          1
% 1.01/1.01  num_of_split_atoms:                     1
% 1.01/1.01  num_of_reused_defs:                     0
% 1.01/1.01  num_eq_ax_congr_red:                    13
% 1.01/1.01  num_of_sem_filtered_clauses:            2
% 1.01/1.01  num_of_subtypes:                        4
% 1.01/1.01  monotx_restored_types:                  1
% 1.01/1.01  sat_num_of_epr_types:                   0
% 1.01/1.01  sat_num_of_non_cyclic_types:            0
% 1.01/1.01  sat_guarded_non_collapsed_types:        0
% 1.01/1.01  num_pure_diseq_elim:                    0
% 1.01/1.01  simp_replaced_by:                       0
% 1.01/1.01  res_preprocessed:                       61
% 1.01/1.01  prep_upred:                             0
% 1.01/1.01  prep_unflattend:                        3
% 1.01/1.01  smt_new_axioms:                         0
% 1.01/1.01  pred_elim_cands:                        3
% 1.01/1.01  pred_elim:                              2
% 1.01/1.01  pred_elim_cl:                           3
% 1.01/1.01  pred_elim_cycles:                       4
% 1.01/1.01  merged_defs:                            0
% 1.01/1.01  merged_defs_ncl:                        0
% 1.01/1.01  bin_hyper_res:                          0
% 1.01/1.01  prep_cycles:                            4
% 1.01/1.01  pred_elim_time:                         0.001
% 1.01/1.01  splitting_time:                         0.
% 1.01/1.01  sem_filter_time:                        0.
% 1.01/1.01  monotx_time:                            0.001
% 1.01/1.01  subtype_inf_time:                       0.001
% 1.01/1.01  
% 1.01/1.01  ------ Problem properties
% 1.01/1.01  
% 1.01/1.01  clauses:                                10
% 1.01/1.01  conjectures:                            2
% 1.01/1.01  epr:                                    2
% 1.01/1.01  horn:                                   10
% 1.01/1.01  ground:                                 3
% 1.01/1.01  unary:                                  3
% 1.01/1.01  binary:                                 2
% 1.01/1.01  lits:                                   22
% 1.01/1.01  lits_eq:                                3
% 1.01/1.01  fd_pure:                                0
% 1.01/1.01  fd_pseudo:                              0
% 1.01/1.01  fd_cond:                                0
% 1.01/1.01  fd_pseudo_cond:                         0
% 1.01/1.01  ac_symbols:                             0
% 1.01/1.01  
% 1.01/1.01  ------ Propositional Solver
% 1.01/1.01  
% 1.01/1.01  prop_solver_calls:                      27
% 1.01/1.01  prop_fast_solver_calls:                 323
% 1.01/1.01  smt_solver_calls:                       0
% 1.01/1.01  smt_fast_solver_calls:                  0
% 1.01/1.01  prop_num_of_clauses:                    367
% 1.01/1.01  prop_preprocess_simplified:             2038
% 1.01/1.01  prop_fo_subsumed:                       7
% 1.01/1.01  prop_solver_time:                       0.
% 1.01/1.01  smt_solver_time:                        0.
% 1.01/1.01  smt_fast_solver_time:                   0.
% 1.01/1.01  prop_fast_solver_time:                  0.
% 1.01/1.01  prop_unsat_core_time:                   0.
% 1.01/1.01  
% 1.01/1.01  ------ QBF
% 1.01/1.01  
% 1.01/1.01  qbf_q_res:                              0
% 1.01/1.01  qbf_num_tautologies:                    0
% 1.01/1.01  qbf_prep_cycles:                        0
% 1.01/1.01  
% 1.01/1.01  ------ BMC1
% 1.01/1.01  
% 1.01/1.01  bmc1_current_bound:                     -1
% 1.01/1.01  bmc1_last_solved_bound:                 -1
% 1.01/1.01  bmc1_unsat_core_size:                   -1
% 1.01/1.01  bmc1_unsat_core_parents_size:           -1
% 1.01/1.01  bmc1_merge_next_fun:                    0
% 1.01/1.01  bmc1_unsat_core_clauses_time:           0.
% 1.01/1.01  
% 1.01/1.01  ------ Instantiation
% 1.01/1.01  
% 1.01/1.01  inst_num_of_clauses:                    142
% 1.01/1.01  inst_num_in_passive:                    55
% 1.01/1.01  inst_num_in_active:                     86
% 1.01/1.01  inst_num_in_unprocessed:                0
% 1.01/1.01  inst_num_of_loops:                      100
% 1.01/1.01  inst_num_of_learning_restarts:          0
% 1.01/1.01  inst_num_moves_active_passive:          10
% 1.01/1.01  inst_lit_activity:                      0
% 1.01/1.01  inst_lit_activity_moves:                0
% 1.01/1.01  inst_num_tautologies:                   0
% 1.01/1.01  inst_num_prop_implied:                  0
% 1.01/1.01  inst_num_existing_simplified:           0
% 1.01/1.01  inst_num_eq_res_simplified:             0
% 1.01/1.01  inst_num_child_elim:                    0
% 1.01/1.01  inst_num_of_dismatching_blockings:      33
% 1.01/1.01  inst_num_of_non_proper_insts:           103
% 1.01/1.01  inst_num_of_duplicates:                 0
% 1.01/1.01  inst_inst_num_from_inst_to_res:         0
% 1.01/1.01  inst_dismatching_checking_time:         0.
% 1.01/1.01  
% 1.01/1.01  ------ Resolution
% 1.01/1.01  
% 1.01/1.01  res_num_of_clauses:                     0
% 1.01/1.01  res_num_in_passive:                     0
% 1.01/1.01  res_num_in_active:                      0
% 1.01/1.01  res_num_of_loops:                       65
% 1.01/1.01  res_forward_subset_subsumed:            15
% 1.01/1.01  res_backward_subset_subsumed:           0
% 1.01/1.01  res_forward_subsumed:                   0
% 1.01/1.01  res_backward_subsumed:                  0
% 1.01/1.01  res_forward_subsumption_resolution:     0
% 1.01/1.01  res_backward_subsumption_resolution:    0
% 1.01/1.01  res_clause_to_clause_subsumption:       20
% 1.01/1.01  res_orphan_elimination:                 0
% 1.01/1.01  res_tautology_del:                      17
% 1.01/1.01  res_num_eq_res_simplified:              0
% 1.01/1.01  res_num_sel_changes:                    0
% 1.01/1.01  res_moves_from_active_to_pass:          0
% 1.01/1.01  
% 1.01/1.01  ------ Superposition
% 1.01/1.01  
% 1.01/1.01  sup_time_total:                         0.
% 1.01/1.01  sup_time_generating:                    0.
% 1.01/1.01  sup_time_sim_full:                      0.
% 1.01/1.01  sup_time_sim_immed:                     0.
% 1.01/1.01  
% 1.01/1.01  sup_num_of_clauses:                     19
% 1.01/1.01  sup_num_in_active:                      17
% 1.01/1.01  sup_num_in_passive:                     2
% 1.01/1.01  sup_num_of_loops:                       18
% 1.01/1.01  sup_fw_superposition:                   4
% 1.01/1.01  sup_bw_superposition:                   5
% 1.01/1.01  sup_immediate_simplified:               0
% 1.01/1.01  sup_given_eliminated:                   0
% 1.01/1.01  comparisons_done:                       0
% 1.01/1.01  comparisons_avoided:                    0
% 1.01/1.01  
% 1.01/1.01  ------ Simplifications
% 1.01/1.01  
% 1.01/1.01  
% 1.01/1.01  sim_fw_subset_subsumed:                 0
% 1.01/1.01  sim_bw_subset_subsumed:                 0
% 1.01/1.01  sim_fw_subsumed:                        0
% 1.01/1.01  sim_bw_subsumed:                        0
% 1.01/1.01  sim_fw_subsumption_res:                 1
% 1.01/1.01  sim_bw_subsumption_res:                 0
% 1.01/1.01  sim_tautology_del:                      0
% 1.01/1.01  sim_eq_tautology_del:                   0
% 1.01/1.01  sim_eq_res_simp:                        0
% 1.01/1.01  sim_fw_demodulated:                     0
% 1.01/1.01  sim_bw_demodulated:                     1
% 1.01/1.01  sim_light_normalised:                   0
% 1.01/1.01  sim_joinable_taut:                      0
% 1.01/1.01  sim_joinable_simp:                      0
% 1.01/1.01  sim_ac_normalised:                      0
% 1.01/1.01  sim_smt_subsumption:                    0
% 1.01/1.01  
%------------------------------------------------------------------------------
