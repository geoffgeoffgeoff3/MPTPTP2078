%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:55:12 EST 2020

% Result     : Theorem 2.57s
% Output     : CNFRefutation 2.57s
% Verified   : 
% Statistics : Number of formulae       :  121 ( 314 expanded)
%              Number of clauses        :   71 ( 141 expanded)
%              Number of leaves         :   15 (  56 expanded)
%              Depth                    :   16
%              Number of atoms          :  270 ( 791 expanded)
%              Number of equality atoms :   97 ( 167 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0] :
      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f45,plain,(
    ! [X0] :
      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f23])).

fof(f15,conjecture,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( r1_tarski(k6_relat_1(X2),X3)
       => ( r1_tarski(X2,k2_relset_1(X0,X1,X3))
          & r1_tarski(X2,k1_relset_1(X0,X1,X3)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
       => ( r1_tarski(k6_relat_1(X2),X3)
         => ( r1_tarski(X2,k2_relset_1(X0,X1,X3))
            & r1_tarski(X2,k1_relset_1(X0,X1,X3)) ) ) ) ),
    inference(negated_conjecture,[],[f15])).

fof(f27,plain,(
    ? [X0,X1,X2,X3] :
      ( ( ~ r1_tarski(X2,k2_relset_1(X0,X1,X3))
        | ~ r1_tarski(X2,k1_relset_1(X0,X1,X3)) )
      & r1_tarski(k6_relat_1(X2),X3)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f28,plain,(
    ? [X0,X1,X2,X3] :
      ( ( ~ r1_tarski(X2,k2_relset_1(X0,X1,X3))
        | ~ r1_tarski(X2,k1_relset_1(X0,X1,X3)) )
      & r1_tarski(k6_relat_1(X2),X3)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f27])).

fof(f32,plain,
    ( ? [X0,X1,X2,X3] :
        ( ( ~ r1_tarski(X2,k2_relset_1(X0,X1,X3))
          | ~ r1_tarski(X2,k1_relset_1(X0,X1,X3)) )
        & r1_tarski(k6_relat_1(X2),X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
   => ( ( ~ r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3))
        | ~ r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3)) )
      & r1_tarski(k6_relat_1(sK2),sK3)
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ) ),
    introduced(choice_axiom,[])).

fof(f33,plain,
    ( ( ~ r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3))
      | ~ r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3)) )
    & r1_tarski(k6_relat_1(sK2),sK3)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f28,f32])).

fof(f54,plain,(
    r1_tarski(k6_relat_1(sK2),sK3) ),
    inference(cnf_transformation,[],[f33])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(k2_xboole_0(X0,X1),X2)
     => r1_tarski(X0,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(k2_xboole_0(X0,X1),X2) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f34,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X2)
      | ~ r1_tarski(k2_xboole_0(X0,X1),X2) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f38,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f12,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( ( v5_relat_1(X2,X1)
        & v4_relat_1(X2,X0) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f49,plain,(
    ! [X2,X0,X1] :
      ( v4_relat_1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ( v4_relat_1(X1,X0)
      <=> r1_tarski(k1_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f30,plain,(
    ! [X0,X1] :
      ( ( ( v4_relat_1(X1,X0)
          | ~ r1_tarski(k1_relat_1(X1),X0) )
        & ( r1_tarski(k1_relat_1(X1),X0)
          | ~ v4_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f21])).

fof(f40,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X1),X0)
      | ~ v4_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f10,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f10])).

fof(f8,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f44,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f5,axiom,(
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
    inference(ennf_transformation,[],[f5])).

fof(f39,plain,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f53,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f33])).

fof(f37,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f3,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f3])).

fof(f50,plain,(
    ! [X2,X0,X1] :
      ( v5_relat_1(X2,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( v5_relat_1(X1,X0)
      <=> r1_tarski(k2_relat_1(X1),X0) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f31,plain,(
    ! [X0,X1] :
      ( ( ( v5_relat_1(X1,X0)
          | ~ r1_tarski(k2_relat_1(X1),X0) )
        & ( r1_tarski(k2_relat_1(X1),X0)
          | ~ v5_relat_1(X1,X0) ) )
      | ~ v1_relat_1(X1) ) ),
    inference(nnf_transformation,[],[f22])).

fof(f42,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_relat_1(X1),X0)
      | ~ v5_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f47,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f10])).

fof(f14,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k2_relat_1(X2) = k2_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1,X2] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k2_relat_1(X2) = k2_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f55,plain,
    ( ~ r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3))
    | ~ r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3)) ),
    inference(cnf_transformation,[],[f33])).

fof(f13,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k1_relat_1(X2) = k1_relset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1,X2] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( k1_relat_1(X2) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_11,plain,
    ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_1166,plain,
    ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_20,negated_conjecture,
    ( r1_tarski(k6_relat_1(sK2),sK3) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_1161,plain,
    ( r1_tarski(k6_relat_1(sK2),sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | k2_xboole_0(X0,X1) = X1 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_1171,plain,
    ( k2_xboole_0(X0,X1) = X1
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1583,plain,
    ( k2_xboole_0(k6_relat_1(sK2),sK3) = sK3 ),
    inference(superposition,[status(thm)],[c_1161,c_1171])).

cnf(c_0,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k2_xboole_0(X0,X2),X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_1172,plain,
    ( r1_tarski(X0,X1) = iProver_top
    | r1_tarski(k2_xboole_0(X0,X2),X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1871,plain,
    ( r1_tarski(k6_relat_1(sK2),X0) = iProver_top
    | r1_tarski(sK3,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1583,c_1172])).

cnf(c_3,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_1169,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_16,plain,
    ( v4_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_7,plain,
    ( ~ v4_relat_1(X0,X1)
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_277,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_16,c_7])).

cnf(c_1158,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | r1_tarski(k1_relat_1(X0),X1) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_277])).

cnf(c_2606,plain,
    ( r1_tarski(X0,k2_zfmisc_1(X1,X2)) != iProver_top
    | r1_tarski(k1_relat_1(X0),X1) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1169,c_1158])).

cnf(c_5447,plain,
    ( r1_tarski(k1_relat_1(k6_relat_1(sK2)),X0) = iProver_top
    | r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
    | v1_relat_1(k6_relat_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1871,c_2606])).

cnf(c_13,plain,
    ( k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_5466,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
    | r1_tarski(sK2,X0) = iProver_top
    | v1_relat_1(k6_relat_1(sK2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_5447,c_13])).

cnf(c_10,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_1791,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_10])).

cnf(c_1792,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1791])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_168,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_3])).

cnf(c_169,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_168])).

cnf(c_203,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_relat_1(X1)
    | v1_relat_1(X0) ),
    inference(bin_hyper_res,[status(thm)],[c_5,c_169])).

cnf(c_1297,plain,
    ( ~ r1_tarski(X0,k2_zfmisc_1(X1,X2))
    | v1_relat_1(X0)
    | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_203])).

cnf(c_1691,plain,
    ( ~ r1_tarski(k6_relat_1(sK2),k2_zfmisc_1(X0,X1))
    | ~ v1_relat_1(k2_zfmisc_1(X0,X1))
    | v1_relat_1(k6_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_1297])).

cnf(c_2974,plain,
    ( ~ r1_tarski(k6_relat_1(sK2),k2_zfmisc_1(sK0,sK1))
    | ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
    | v1_relat_1(k6_relat_1(sK2)) ),
    inference(instantiation,[status(thm)],[c_1691])).

cnf(c_2977,plain,
    ( r1_tarski(k6_relat_1(sK2),k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(k6_relat_1(sK2)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2974])).

cnf(c_21,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f53])).

cnf(c_1160,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_4,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_1168,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1773,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(sK0,sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1160,c_1168])).

cnf(c_2349,plain,
    ( k2_xboole_0(k6_relat_1(sK2),X0) = X0
    | r1_tarski(sK3,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1871,c_1171])).

cnf(c_2596,plain,
    ( k2_xboole_0(k6_relat_1(sK2),k2_zfmisc_1(sK0,sK1)) = k2_zfmisc_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_1773,c_2349])).

cnf(c_2,plain,
    ( r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_1170,plain,
    ( r1_tarski(X0,k2_xboole_0(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_3212,plain,
    ( r1_tarski(k6_relat_1(sK2),k2_zfmisc_1(sK0,sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_2596,c_1170])).

cnf(c_5593,plain,
    ( r1_tarski(sK2,X0) = iProver_top
    | r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_5466,c_1792,c_2977,c_3212])).

cnf(c_5594,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
    | r1_tarski(sK2,X0) = iProver_top ),
    inference(renaming,[status(thm)],[c_5593])).

cnf(c_5599,plain,
    ( r1_tarski(sK2,k1_relat_1(sK3)) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1166,c_5594])).

cnf(c_15,plain,
    ( v5_relat_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_9,plain,
    ( ~ v5_relat_1(X0,X1)
    | r1_tarski(k2_relat_1(X0),X1)
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_296,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | r1_tarski(k2_relat_1(X0),X2)
    | ~ v1_relat_1(X0) ),
    inference(resolution,[status(thm)],[c_15,c_9])).

cnf(c_1157,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
    | r1_tarski(k2_relat_1(X0),X2) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_296])).

cnf(c_1779,plain,
    ( r1_tarski(X0,k2_zfmisc_1(X1,X2)) != iProver_top
    | r1_tarski(k2_relat_1(X0),X2) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1169,c_1157])).

cnf(c_4090,plain,
    ( r1_tarski(k2_relat_1(k6_relat_1(sK2)),X0) = iProver_top
    | r1_tarski(sK3,k2_zfmisc_1(X1,X0)) != iProver_top
    | v1_relat_1(k6_relat_1(sK2)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1871,c_1779])).

cnf(c_12,plain,
    ( k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f47])).

cnf(c_4106,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
    | r1_tarski(sK2,X1) = iProver_top
    | v1_relat_1(k6_relat_1(sK2)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_4090,c_12])).

cnf(c_4548,plain,
    ( r1_tarski(sK2,X1) = iProver_top
    | r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_4106,c_1792,c_2977,c_3212])).

cnf(c_4549,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
    | r1_tarski(sK2,X1) = iProver_top ),
    inference(renaming,[status(thm)],[c_4548])).

cnf(c_4556,plain,
    ( r1_tarski(sK2,k2_relat_1(sK3)) = iProver_top
    | v1_relat_1(sK3) != iProver_top ),
    inference(superposition,[status(thm)],[c_1166,c_4549])).

cnf(c_18,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_1163,plain,
    ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_18])).

cnf(c_2724,plain,
    ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1160,c_1163])).

cnf(c_19,negated_conjecture,
    ( ~ r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3))
    | ~ r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1162,plain,
    ( r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3)) != iProver_top
    | r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_2901,plain,
    ( r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3)) != iProver_top
    | r1_tarski(sK2,k2_relat_1(sK3)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2724,c_1162])).

cnf(c_17,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_1164,plain,
    ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_17])).

cnf(c_2738,plain,
    ( k1_relset_1(sK0,sK1,sK3) = k1_relat_1(sK3) ),
    inference(superposition,[status(thm)],[c_1160,c_1164])).

cnf(c_2960,plain,
    ( r1_tarski(sK2,k2_relat_1(sK3)) != iProver_top
    | r1_tarski(sK2,k1_relat_1(sK3)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2901,c_2738])).

cnf(c_1667,plain,
    ( ~ r1_tarski(sK3,k2_zfmisc_1(sK0,sK1))
    | ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
    | v1_relat_1(sK3) ),
    inference(instantiation,[status(thm)],[c_1297])).

cnf(c_1668,plain,
    ( r1_tarski(sK3,k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_relat_1(sK3) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1667])).

cnf(c_1280,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
    | r1_tarski(sK3,k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_1281,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
    | r1_tarski(sK3,k2_zfmisc_1(sK0,sK1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1280])).

cnf(c_22,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_5599,c_4556,c_2960,c_1792,c_1668,c_1281,c_22])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.35  % Computer   : n007.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 13:31:06 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  % Running in FOF mode
% 2.57/1.02  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.57/1.02  
% 2.57/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.57/1.02  
% 2.57/1.02  ------  iProver source info
% 2.57/1.02  
% 2.57/1.02  git: date: 2020-06-30 10:37:57 +0100
% 2.57/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.57/1.02  git: non_committed_changes: false
% 2.57/1.02  git: last_make_outside_of_git: false
% 2.57/1.02  
% 2.57/1.02  ------ 
% 2.57/1.02  
% 2.57/1.02  ------ Input Options
% 2.57/1.02  
% 2.57/1.02  --out_options                           all
% 2.57/1.02  --tptp_safe_out                         true
% 2.57/1.02  --problem_path                          ""
% 2.57/1.02  --include_path                          ""
% 2.57/1.02  --clausifier                            res/vclausify_rel
% 2.57/1.02  --clausifier_options                    --mode clausify
% 2.57/1.02  --stdin                                 false
% 2.57/1.02  --stats_out                             all
% 2.57/1.02  
% 2.57/1.02  ------ General Options
% 2.57/1.02  
% 2.57/1.02  --fof                                   false
% 2.57/1.02  --time_out_real                         305.
% 2.57/1.02  --time_out_virtual                      -1.
% 2.57/1.02  --symbol_type_check                     false
% 2.57/1.02  --clausify_out                          false
% 2.57/1.02  --sig_cnt_out                           false
% 2.57/1.02  --trig_cnt_out                          false
% 2.57/1.02  --trig_cnt_out_tolerance                1.
% 2.57/1.02  --trig_cnt_out_sk_spl                   false
% 2.57/1.02  --abstr_cl_out                          false
% 2.57/1.02  
% 2.57/1.02  ------ Global Options
% 2.57/1.02  
% 2.57/1.02  --schedule                              default
% 2.57/1.02  --add_important_lit                     false
% 2.57/1.02  --prop_solver_per_cl                    1000
% 2.57/1.02  --min_unsat_core                        false
% 2.57/1.02  --soft_assumptions                      false
% 2.57/1.02  --soft_lemma_size                       3
% 2.57/1.02  --prop_impl_unit_size                   0
% 2.57/1.02  --prop_impl_unit                        []
% 2.57/1.02  --share_sel_clauses                     true
% 2.57/1.02  --reset_solvers                         false
% 2.57/1.02  --bc_imp_inh                            [conj_cone]
% 2.57/1.02  --conj_cone_tolerance                   3.
% 2.57/1.02  --extra_neg_conj                        none
% 2.57/1.02  --large_theory_mode                     true
% 2.57/1.02  --prolific_symb_bound                   200
% 2.57/1.02  --lt_threshold                          2000
% 2.57/1.02  --clause_weak_htbl                      true
% 2.57/1.02  --gc_record_bc_elim                     false
% 2.57/1.03  
% 2.57/1.03  ------ Preprocessing Options
% 2.57/1.03  
% 2.57/1.03  --preprocessing_flag                    true
% 2.57/1.03  --time_out_prep_mult                    0.1
% 2.57/1.03  --splitting_mode                        input
% 2.57/1.03  --splitting_grd                         true
% 2.57/1.03  --splitting_cvd                         false
% 2.57/1.03  --splitting_cvd_svl                     false
% 2.57/1.03  --splitting_nvd                         32
% 2.57/1.03  --sub_typing                            true
% 2.57/1.03  --prep_gs_sim                           true
% 2.57/1.03  --prep_unflatten                        true
% 2.57/1.03  --prep_res_sim                          true
% 2.57/1.03  --prep_upred                            true
% 2.57/1.03  --prep_sem_filter                       exhaustive
% 2.57/1.03  --prep_sem_filter_out                   false
% 2.57/1.03  --pred_elim                             true
% 2.57/1.03  --res_sim_input                         true
% 2.57/1.03  --eq_ax_congr_red                       true
% 2.57/1.03  --pure_diseq_elim                       true
% 2.57/1.03  --brand_transform                       false
% 2.57/1.03  --non_eq_to_eq                          false
% 2.57/1.03  --prep_def_merge                        true
% 2.57/1.03  --prep_def_merge_prop_impl              false
% 2.57/1.03  --prep_def_merge_mbd                    true
% 2.57/1.03  --prep_def_merge_tr_red                 false
% 2.57/1.03  --prep_def_merge_tr_cl                  false
% 2.57/1.03  --smt_preprocessing                     true
% 2.57/1.03  --smt_ac_axioms                         fast
% 2.57/1.03  --preprocessed_out                      false
% 2.57/1.03  --preprocessed_stats                    false
% 2.57/1.03  
% 2.57/1.03  ------ Abstraction refinement Options
% 2.57/1.03  
% 2.57/1.03  --abstr_ref                             []
% 2.57/1.03  --abstr_ref_prep                        false
% 2.57/1.03  --abstr_ref_until_sat                   false
% 2.57/1.03  --abstr_ref_sig_restrict                funpre
% 2.57/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 2.57/1.03  --abstr_ref_under                       []
% 2.57/1.03  
% 2.57/1.03  ------ SAT Options
% 2.57/1.03  
% 2.57/1.03  --sat_mode                              false
% 2.57/1.03  --sat_fm_restart_options                ""
% 2.57/1.03  --sat_gr_def                            false
% 2.57/1.03  --sat_epr_types                         true
% 2.57/1.03  --sat_non_cyclic_types                  false
% 2.57/1.03  --sat_finite_models                     false
% 2.57/1.03  --sat_fm_lemmas                         false
% 2.57/1.03  --sat_fm_prep                           false
% 2.57/1.03  --sat_fm_uc_incr                        true
% 2.57/1.03  --sat_out_model                         small
% 2.57/1.03  --sat_out_clauses                       false
% 2.57/1.03  
% 2.57/1.03  ------ QBF Options
% 2.57/1.03  
% 2.57/1.03  --qbf_mode                              false
% 2.57/1.03  --qbf_elim_univ                         false
% 2.57/1.03  --qbf_dom_inst                          none
% 2.57/1.03  --qbf_dom_pre_inst                      false
% 2.57/1.03  --qbf_sk_in                             false
% 2.57/1.03  --qbf_pred_elim                         true
% 2.57/1.03  --qbf_split                             512
% 2.57/1.03  
% 2.57/1.03  ------ BMC1 Options
% 2.57/1.03  
% 2.57/1.03  --bmc1_incremental                      false
% 2.57/1.03  --bmc1_axioms                           reachable_all
% 2.57/1.03  --bmc1_min_bound                        0
% 2.57/1.03  --bmc1_max_bound                        -1
% 2.57/1.03  --bmc1_max_bound_default                -1
% 2.57/1.03  --bmc1_symbol_reachability              true
% 2.57/1.03  --bmc1_property_lemmas                  false
% 2.57/1.03  --bmc1_k_induction                      false
% 2.57/1.03  --bmc1_non_equiv_states                 false
% 2.57/1.03  --bmc1_deadlock                         false
% 2.57/1.03  --bmc1_ucm                              false
% 2.57/1.03  --bmc1_add_unsat_core                   none
% 2.57/1.03  --bmc1_unsat_core_children              false
% 2.57/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 2.57/1.03  --bmc1_out_stat                         full
% 2.57/1.03  --bmc1_ground_init                      false
% 2.57/1.03  --bmc1_pre_inst_next_state              false
% 2.57/1.03  --bmc1_pre_inst_state                   false
% 2.57/1.03  --bmc1_pre_inst_reach_state             false
% 2.57/1.03  --bmc1_out_unsat_core                   false
% 2.57/1.03  --bmc1_aig_witness_out                  false
% 2.57/1.03  --bmc1_verbose                          false
% 2.57/1.03  --bmc1_dump_clauses_tptp                false
% 2.57/1.03  --bmc1_dump_unsat_core_tptp             false
% 2.57/1.03  --bmc1_dump_file                        -
% 2.57/1.03  --bmc1_ucm_expand_uc_limit              128
% 2.57/1.03  --bmc1_ucm_n_expand_iterations          6
% 2.57/1.03  --bmc1_ucm_extend_mode                  1
% 2.57/1.03  --bmc1_ucm_init_mode                    2
% 2.57/1.03  --bmc1_ucm_cone_mode                    none
% 2.57/1.03  --bmc1_ucm_reduced_relation_type        0
% 2.57/1.03  --bmc1_ucm_relax_model                  4
% 2.57/1.03  --bmc1_ucm_full_tr_after_sat            true
% 2.57/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 2.57/1.03  --bmc1_ucm_layered_model                none
% 2.57/1.03  --bmc1_ucm_max_lemma_size               10
% 2.57/1.03  
% 2.57/1.03  ------ AIG Options
% 2.57/1.03  
% 2.57/1.03  --aig_mode                              false
% 2.57/1.03  
% 2.57/1.03  ------ Instantiation Options
% 2.57/1.03  
% 2.57/1.03  --instantiation_flag                    true
% 2.57/1.03  --inst_sos_flag                         false
% 2.57/1.03  --inst_sos_phase                        true
% 2.57/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.57/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.57/1.03  --inst_lit_sel_side                     num_symb
% 2.57/1.03  --inst_solver_per_active                1400
% 2.57/1.03  --inst_solver_calls_frac                1.
% 2.57/1.03  --inst_passive_queue_type               priority_queues
% 2.57/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.57/1.03  --inst_passive_queues_freq              [25;2]
% 2.57/1.03  --inst_dismatching                      true
% 2.57/1.03  --inst_eager_unprocessed_to_passive     true
% 2.57/1.03  --inst_prop_sim_given                   true
% 2.57/1.03  --inst_prop_sim_new                     false
% 2.57/1.03  --inst_subs_new                         false
% 2.57/1.03  --inst_eq_res_simp                      false
% 2.57/1.03  --inst_subs_given                       false
% 2.57/1.03  --inst_orphan_elimination               true
% 2.57/1.03  --inst_learning_loop_flag               true
% 2.57/1.03  --inst_learning_start                   3000
% 2.57/1.03  --inst_learning_factor                  2
% 2.57/1.03  --inst_start_prop_sim_after_learn       3
% 2.57/1.03  --inst_sel_renew                        solver
% 2.57/1.03  --inst_lit_activity_flag                true
% 2.57/1.03  --inst_restr_to_given                   false
% 2.57/1.03  --inst_activity_threshold               500
% 2.57/1.03  --inst_out_proof                        true
% 2.57/1.03  
% 2.57/1.03  ------ Resolution Options
% 2.57/1.03  
% 2.57/1.03  --resolution_flag                       true
% 2.57/1.03  --res_lit_sel                           adaptive
% 2.57/1.03  --res_lit_sel_side                      none
% 2.57/1.03  --res_ordering                          kbo
% 2.57/1.03  --res_to_prop_solver                    active
% 2.57/1.03  --res_prop_simpl_new                    false
% 2.57/1.03  --res_prop_simpl_given                  true
% 2.57/1.03  --res_passive_queue_type                priority_queues
% 2.57/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.57/1.03  --res_passive_queues_freq               [15;5]
% 2.57/1.03  --res_forward_subs                      full
% 2.57/1.03  --res_backward_subs                     full
% 2.57/1.03  --res_forward_subs_resolution           true
% 2.57/1.03  --res_backward_subs_resolution          true
% 2.57/1.03  --res_orphan_elimination                true
% 2.57/1.03  --res_time_limit                        2.
% 2.57/1.03  --res_out_proof                         true
% 2.57/1.03  
% 2.57/1.03  ------ Superposition Options
% 2.57/1.03  
% 2.57/1.03  --superposition_flag                    true
% 2.57/1.03  --sup_passive_queue_type                priority_queues
% 2.57/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.57/1.03  --sup_passive_queues_freq               [8;1;4]
% 2.57/1.03  --demod_completeness_check              fast
% 2.57/1.03  --demod_use_ground                      true
% 2.57/1.03  --sup_to_prop_solver                    passive
% 2.57/1.03  --sup_prop_simpl_new                    true
% 2.57/1.03  --sup_prop_simpl_given                  true
% 2.57/1.03  --sup_fun_splitting                     false
% 2.57/1.03  --sup_smt_interval                      50000
% 2.57/1.03  
% 2.57/1.03  ------ Superposition Simplification Setup
% 2.57/1.03  
% 2.57/1.03  --sup_indices_passive                   []
% 2.57/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 2.57/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.03  --sup_full_bw                           [BwDemod]
% 2.57/1.03  --sup_immed_triv                        [TrivRules]
% 2.57/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.57/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.03  --sup_immed_bw_main                     []
% 2.57/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.57/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 2.57/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.57/1.03  
% 2.57/1.03  ------ Combination Options
% 2.57/1.03  
% 2.57/1.03  --comb_res_mult                         3
% 2.57/1.03  --comb_sup_mult                         2
% 2.57/1.03  --comb_inst_mult                        10
% 2.57/1.03  
% 2.57/1.03  ------ Debug Options
% 2.57/1.03  
% 2.57/1.03  --dbg_backtrace                         false
% 2.57/1.03  --dbg_dump_prop_clauses                 false
% 2.57/1.03  --dbg_dump_prop_clauses_file            -
% 2.57/1.03  --dbg_out_stat                          false
% 2.57/1.03  ------ Parsing...
% 2.57/1.03  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.57/1.03  
% 2.57/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.57/1.03  
% 2.57/1.03  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.57/1.03  
% 2.57/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.57/1.03  ------ Proving...
% 2.57/1.03  ------ Problem Properties 
% 2.57/1.03  
% 2.57/1.03  
% 2.57/1.03  clauses                                 18
% 2.57/1.03  conjectures                             3
% 2.57/1.03  EPR                                     1
% 2.57/1.03  Horn                                    18
% 2.57/1.03  unary                                   7
% 2.57/1.03  binary                                  8
% 2.57/1.03  lits                                    32
% 2.57/1.03  lits eq                                 5
% 2.57/1.03  fd_pure                                 0
% 2.57/1.03  fd_pseudo                               0
% 2.57/1.03  fd_cond                                 0
% 2.57/1.03  fd_pseudo_cond                          0
% 2.57/1.03  AC symbols                              0
% 2.57/1.03  
% 2.57/1.03  ------ Schedule dynamic 5 is on 
% 2.57/1.03  
% 2.57/1.03  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.57/1.03  
% 2.57/1.03  
% 2.57/1.03  ------ 
% 2.57/1.03  Current options:
% 2.57/1.03  ------ 
% 2.57/1.03  
% 2.57/1.03  ------ Input Options
% 2.57/1.03  
% 2.57/1.03  --out_options                           all
% 2.57/1.03  --tptp_safe_out                         true
% 2.57/1.03  --problem_path                          ""
% 2.57/1.03  --include_path                          ""
% 2.57/1.03  --clausifier                            res/vclausify_rel
% 2.57/1.03  --clausifier_options                    --mode clausify
% 2.57/1.03  --stdin                                 false
% 2.57/1.03  --stats_out                             all
% 2.57/1.03  
% 2.57/1.03  ------ General Options
% 2.57/1.03  
% 2.57/1.03  --fof                                   false
% 2.57/1.03  --time_out_real                         305.
% 2.57/1.03  --time_out_virtual                      -1.
% 2.57/1.03  --symbol_type_check                     false
% 2.57/1.03  --clausify_out                          false
% 2.57/1.03  --sig_cnt_out                           false
% 2.57/1.03  --trig_cnt_out                          false
% 2.57/1.03  --trig_cnt_out_tolerance                1.
% 2.57/1.03  --trig_cnt_out_sk_spl                   false
% 2.57/1.03  --abstr_cl_out                          false
% 2.57/1.03  
% 2.57/1.03  ------ Global Options
% 2.57/1.03  
% 2.57/1.03  --schedule                              default
% 2.57/1.03  --add_important_lit                     false
% 2.57/1.03  --prop_solver_per_cl                    1000
% 2.57/1.03  --min_unsat_core                        false
% 2.57/1.03  --soft_assumptions                      false
% 2.57/1.03  --soft_lemma_size                       3
% 2.57/1.03  --prop_impl_unit_size                   0
% 2.57/1.03  --prop_impl_unit                        []
% 2.57/1.03  --share_sel_clauses                     true
% 2.57/1.03  --reset_solvers                         false
% 2.57/1.03  --bc_imp_inh                            [conj_cone]
% 2.57/1.03  --conj_cone_tolerance                   3.
% 2.57/1.03  --extra_neg_conj                        none
% 2.57/1.03  --large_theory_mode                     true
% 2.57/1.03  --prolific_symb_bound                   200
% 2.57/1.03  --lt_threshold                          2000
% 2.57/1.03  --clause_weak_htbl                      true
% 2.57/1.03  --gc_record_bc_elim                     false
% 2.57/1.03  
% 2.57/1.03  ------ Preprocessing Options
% 2.57/1.03  
% 2.57/1.03  --preprocessing_flag                    true
% 2.57/1.03  --time_out_prep_mult                    0.1
% 2.57/1.03  --splitting_mode                        input
% 2.57/1.03  --splitting_grd                         true
% 2.57/1.03  --splitting_cvd                         false
% 2.57/1.03  --splitting_cvd_svl                     false
% 2.57/1.03  --splitting_nvd                         32
% 2.57/1.03  --sub_typing                            true
% 2.57/1.03  --prep_gs_sim                           true
% 2.57/1.03  --prep_unflatten                        true
% 2.57/1.03  --prep_res_sim                          true
% 2.57/1.03  --prep_upred                            true
% 2.57/1.03  --prep_sem_filter                       exhaustive
% 2.57/1.03  --prep_sem_filter_out                   false
% 2.57/1.03  --pred_elim                             true
% 2.57/1.03  --res_sim_input                         true
% 2.57/1.03  --eq_ax_congr_red                       true
% 2.57/1.03  --pure_diseq_elim                       true
% 2.57/1.03  --brand_transform                       false
% 2.57/1.03  --non_eq_to_eq                          false
% 2.57/1.03  --prep_def_merge                        true
% 2.57/1.03  --prep_def_merge_prop_impl              false
% 2.57/1.03  --prep_def_merge_mbd                    true
% 2.57/1.03  --prep_def_merge_tr_red                 false
% 2.57/1.03  --prep_def_merge_tr_cl                  false
% 2.57/1.03  --smt_preprocessing                     true
% 2.57/1.03  --smt_ac_axioms                         fast
% 2.57/1.03  --preprocessed_out                      false
% 2.57/1.03  --preprocessed_stats                    false
% 2.57/1.03  
% 2.57/1.03  ------ Abstraction refinement Options
% 2.57/1.03  
% 2.57/1.03  --abstr_ref                             []
% 2.57/1.03  --abstr_ref_prep                        false
% 2.57/1.03  --abstr_ref_until_sat                   false
% 2.57/1.03  --abstr_ref_sig_restrict                funpre
% 2.57/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 2.57/1.03  --abstr_ref_under                       []
% 2.57/1.03  
% 2.57/1.03  ------ SAT Options
% 2.57/1.03  
% 2.57/1.03  --sat_mode                              false
% 2.57/1.03  --sat_fm_restart_options                ""
% 2.57/1.03  --sat_gr_def                            false
% 2.57/1.03  --sat_epr_types                         true
% 2.57/1.03  --sat_non_cyclic_types                  false
% 2.57/1.03  --sat_finite_models                     false
% 2.57/1.03  --sat_fm_lemmas                         false
% 2.57/1.03  --sat_fm_prep                           false
% 2.57/1.03  --sat_fm_uc_incr                        true
% 2.57/1.03  --sat_out_model                         small
% 2.57/1.03  --sat_out_clauses                       false
% 2.57/1.03  
% 2.57/1.03  ------ QBF Options
% 2.57/1.03  
% 2.57/1.03  --qbf_mode                              false
% 2.57/1.03  --qbf_elim_univ                         false
% 2.57/1.03  --qbf_dom_inst                          none
% 2.57/1.03  --qbf_dom_pre_inst                      false
% 2.57/1.03  --qbf_sk_in                             false
% 2.57/1.03  --qbf_pred_elim                         true
% 2.57/1.03  --qbf_split                             512
% 2.57/1.03  
% 2.57/1.03  ------ BMC1 Options
% 2.57/1.03  
% 2.57/1.03  --bmc1_incremental                      false
% 2.57/1.03  --bmc1_axioms                           reachable_all
% 2.57/1.03  --bmc1_min_bound                        0
% 2.57/1.03  --bmc1_max_bound                        -1
% 2.57/1.03  --bmc1_max_bound_default                -1
% 2.57/1.03  --bmc1_symbol_reachability              true
% 2.57/1.03  --bmc1_property_lemmas                  false
% 2.57/1.03  --bmc1_k_induction                      false
% 2.57/1.03  --bmc1_non_equiv_states                 false
% 2.57/1.03  --bmc1_deadlock                         false
% 2.57/1.03  --bmc1_ucm                              false
% 2.57/1.03  --bmc1_add_unsat_core                   none
% 2.57/1.03  --bmc1_unsat_core_children              false
% 2.57/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 2.57/1.03  --bmc1_out_stat                         full
% 2.57/1.03  --bmc1_ground_init                      false
% 2.57/1.03  --bmc1_pre_inst_next_state              false
% 2.57/1.03  --bmc1_pre_inst_state                   false
% 2.57/1.03  --bmc1_pre_inst_reach_state             false
% 2.57/1.03  --bmc1_out_unsat_core                   false
% 2.57/1.03  --bmc1_aig_witness_out                  false
% 2.57/1.03  --bmc1_verbose                          false
% 2.57/1.03  --bmc1_dump_clauses_tptp                false
% 2.57/1.03  --bmc1_dump_unsat_core_tptp             false
% 2.57/1.03  --bmc1_dump_file                        -
% 2.57/1.03  --bmc1_ucm_expand_uc_limit              128
% 2.57/1.03  --bmc1_ucm_n_expand_iterations          6
% 2.57/1.03  --bmc1_ucm_extend_mode                  1
% 2.57/1.03  --bmc1_ucm_init_mode                    2
% 2.57/1.03  --bmc1_ucm_cone_mode                    none
% 2.57/1.03  --bmc1_ucm_reduced_relation_type        0
% 2.57/1.03  --bmc1_ucm_relax_model                  4
% 2.57/1.03  --bmc1_ucm_full_tr_after_sat            true
% 2.57/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 2.57/1.03  --bmc1_ucm_layered_model                none
% 2.57/1.03  --bmc1_ucm_max_lemma_size               10
% 2.57/1.03  
% 2.57/1.03  ------ AIG Options
% 2.57/1.03  
% 2.57/1.03  --aig_mode                              false
% 2.57/1.03  
% 2.57/1.03  ------ Instantiation Options
% 2.57/1.03  
% 2.57/1.03  --instantiation_flag                    true
% 2.57/1.03  --inst_sos_flag                         false
% 2.57/1.03  --inst_sos_phase                        true
% 2.57/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.57/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.57/1.03  --inst_lit_sel_side                     none
% 2.57/1.03  --inst_solver_per_active                1400
% 2.57/1.03  --inst_solver_calls_frac                1.
% 2.57/1.03  --inst_passive_queue_type               priority_queues
% 2.57/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.57/1.03  --inst_passive_queues_freq              [25;2]
% 2.57/1.03  --inst_dismatching                      true
% 2.57/1.03  --inst_eager_unprocessed_to_passive     true
% 2.57/1.03  --inst_prop_sim_given                   true
% 2.57/1.03  --inst_prop_sim_new                     false
% 2.57/1.03  --inst_subs_new                         false
% 2.57/1.03  --inst_eq_res_simp                      false
% 2.57/1.03  --inst_subs_given                       false
% 2.57/1.03  --inst_orphan_elimination               true
% 2.57/1.03  --inst_learning_loop_flag               true
% 2.57/1.03  --inst_learning_start                   3000
% 2.57/1.03  --inst_learning_factor                  2
% 2.57/1.03  --inst_start_prop_sim_after_learn       3
% 2.57/1.03  --inst_sel_renew                        solver
% 2.57/1.03  --inst_lit_activity_flag                true
% 2.57/1.03  --inst_restr_to_given                   false
% 2.57/1.03  --inst_activity_threshold               500
% 2.57/1.03  --inst_out_proof                        true
% 2.57/1.03  
% 2.57/1.03  ------ Resolution Options
% 2.57/1.03  
% 2.57/1.03  --resolution_flag                       false
% 2.57/1.03  --res_lit_sel                           adaptive
% 2.57/1.03  --res_lit_sel_side                      none
% 2.57/1.03  --res_ordering                          kbo
% 2.57/1.03  --res_to_prop_solver                    active
% 2.57/1.03  --res_prop_simpl_new                    false
% 2.57/1.03  --res_prop_simpl_given                  true
% 2.57/1.03  --res_passive_queue_type                priority_queues
% 2.57/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.57/1.03  --res_passive_queues_freq               [15;5]
% 2.57/1.03  --res_forward_subs                      full
% 2.57/1.03  --res_backward_subs                     full
% 2.57/1.03  --res_forward_subs_resolution           true
% 2.57/1.03  --res_backward_subs_resolution          true
% 2.57/1.03  --res_orphan_elimination                true
% 2.57/1.03  --res_time_limit                        2.
% 2.57/1.03  --res_out_proof                         true
% 2.57/1.03  
% 2.57/1.03  ------ Superposition Options
% 2.57/1.03  
% 2.57/1.03  --superposition_flag                    true
% 2.57/1.03  --sup_passive_queue_type                priority_queues
% 2.57/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.57/1.03  --sup_passive_queues_freq               [8;1;4]
% 2.57/1.03  --demod_completeness_check              fast
% 2.57/1.03  --demod_use_ground                      true
% 2.57/1.03  --sup_to_prop_solver                    passive
% 2.57/1.03  --sup_prop_simpl_new                    true
% 2.57/1.03  --sup_prop_simpl_given                  true
% 2.57/1.03  --sup_fun_splitting                     false
% 2.57/1.03  --sup_smt_interval                      50000
% 2.57/1.03  
% 2.57/1.03  ------ Superposition Simplification Setup
% 2.57/1.03  
% 2.57/1.03  --sup_indices_passive                   []
% 2.57/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.57/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 2.57/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.03  --sup_full_bw                           [BwDemod]
% 2.57/1.03  --sup_immed_triv                        [TrivRules]
% 2.57/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.57/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.03  --sup_immed_bw_main                     []
% 2.57/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.57/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 2.57/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.57/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.57/1.03  
% 2.57/1.03  ------ Combination Options
% 2.57/1.03  
% 2.57/1.03  --comb_res_mult                         3
% 2.57/1.03  --comb_sup_mult                         2
% 2.57/1.03  --comb_inst_mult                        10
% 2.57/1.03  
% 2.57/1.03  ------ Debug Options
% 2.57/1.03  
% 2.57/1.03  --dbg_backtrace                         false
% 2.57/1.03  --dbg_dump_prop_clauses                 false
% 2.57/1.03  --dbg_dump_prop_clauses_file            -
% 2.57/1.03  --dbg_out_stat                          false
% 2.57/1.03  
% 2.57/1.03  
% 2.57/1.03  
% 2.57/1.03  
% 2.57/1.03  ------ Proving...
% 2.57/1.03  
% 2.57/1.03  
% 2.57/1.03  % SZS status Theorem for theBenchmark.p
% 2.57/1.03  
% 2.57/1.03  % SZS output start CNFRefutation for theBenchmark.p
% 2.57/1.03  
% 2.57/1.03  fof(f9,axiom,(
% 2.57/1.03    ! [X0] : (v1_relat_1(X0) => r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f23,plain,(
% 2.57/1.03    ! [X0] : (r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) | ~v1_relat_1(X0))),
% 2.57/1.03    inference(ennf_transformation,[],[f9])).
% 2.57/1.03  
% 2.57/1.03  fof(f45,plain,(
% 2.57/1.03    ( ! [X0] : (r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) | ~v1_relat_1(X0)) )),
% 2.57/1.03    inference(cnf_transformation,[],[f23])).
% 2.57/1.03  
% 2.57/1.03  fof(f15,conjecture,(
% 2.57/1.03    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (r1_tarski(k6_relat_1(X2),X3) => (r1_tarski(X2,k2_relset_1(X0,X1,X3)) & r1_tarski(X2,k1_relset_1(X0,X1,X3)))))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f16,negated_conjecture,(
% 2.57/1.03    ~! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (r1_tarski(k6_relat_1(X2),X3) => (r1_tarski(X2,k2_relset_1(X0,X1,X3)) & r1_tarski(X2,k1_relset_1(X0,X1,X3)))))),
% 2.57/1.03    inference(negated_conjecture,[],[f15])).
% 2.57/1.03  
% 2.57/1.03  fof(f27,plain,(
% 2.57/1.03    ? [X0,X1,X2,X3] : (((~r1_tarski(X2,k2_relset_1(X0,X1,X3)) | ~r1_tarski(X2,k1_relset_1(X0,X1,X3))) & r1_tarski(k6_relat_1(X2),X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.57/1.03    inference(ennf_transformation,[],[f16])).
% 2.57/1.03  
% 2.57/1.03  fof(f28,plain,(
% 2.57/1.03    ? [X0,X1,X2,X3] : ((~r1_tarski(X2,k2_relset_1(X0,X1,X3)) | ~r1_tarski(X2,k1_relset_1(X0,X1,X3))) & r1_tarski(k6_relat_1(X2),X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.57/1.03    inference(flattening,[],[f27])).
% 2.57/1.03  
% 2.57/1.03  fof(f32,plain,(
% 2.57/1.03    ? [X0,X1,X2,X3] : ((~r1_tarski(X2,k2_relset_1(X0,X1,X3)) | ~r1_tarski(X2,k1_relset_1(X0,X1,X3))) & r1_tarski(k6_relat_1(X2),X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) => ((~r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3)) | ~r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3))) & r1_tarski(k6_relat_1(sK2),sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))))),
% 2.57/1.03    introduced(choice_axiom,[])).
% 2.57/1.03  
% 2.57/1.03  fof(f33,plain,(
% 2.57/1.03    (~r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3)) | ~r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3))) & r1_tarski(k6_relat_1(sK2),sK3) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 2.57/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f28,f32])).
% 2.57/1.03  
% 2.57/1.03  fof(f54,plain,(
% 2.57/1.03    r1_tarski(k6_relat_1(sK2),sK3)),
% 2.57/1.03    inference(cnf_transformation,[],[f33])).
% 2.57/1.03  
% 2.57/1.03  fof(f2,axiom,(
% 2.57/1.03    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f19,plain,(
% 2.57/1.03    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 2.57/1.03    inference(ennf_transformation,[],[f2])).
% 2.57/1.03  
% 2.57/1.03  fof(f35,plain,(
% 2.57/1.03    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 2.57/1.03    inference(cnf_transformation,[],[f19])).
% 2.57/1.03  
% 2.57/1.03  fof(f1,axiom,(
% 2.57/1.03    ! [X0,X1,X2] : (r1_tarski(k2_xboole_0(X0,X1),X2) => r1_tarski(X0,X2))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f18,plain,(
% 2.57/1.03    ! [X0,X1,X2] : (r1_tarski(X0,X2) | ~r1_tarski(k2_xboole_0(X0,X1),X2))),
% 2.57/1.03    inference(ennf_transformation,[],[f1])).
% 2.57/1.03  
% 2.57/1.03  fof(f34,plain,(
% 2.57/1.03    ( ! [X2,X0,X1] : (r1_tarski(X0,X2) | ~r1_tarski(k2_xboole_0(X0,X1),X2)) )),
% 2.57/1.03    inference(cnf_transformation,[],[f18])).
% 2.57/1.03  
% 2.57/1.03  fof(f4,axiom,(
% 2.57/1.03    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f29,plain,(
% 2.57/1.03    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.57/1.03    inference(nnf_transformation,[],[f4])).
% 2.57/1.03  
% 2.57/1.03  fof(f38,plain,(
% 2.57/1.03    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.57/1.03    inference(cnf_transformation,[],[f29])).
% 2.57/1.03  
% 2.57/1.03  fof(f12,axiom,(
% 2.57/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (v5_relat_1(X2,X1) & v4_relat_1(X2,X0)))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f24,plain,(
% 2.57/1.03    ! [X0,X1,X2] : ((v5_relat_1(X2,X1) & v4_relat_1(X2,X0)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.57/1.03    inference(ennf_transformation,[],[f12])).
% 2.57/1.03  
% 2.57/1.03  fof(f49,plain,(
% 2.57/1.03    ( ! [X2,X0,X1] : (v4_relat_1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.57/1.03    inference(cnf_transformation,[],[f24])).
% 2.57/1.03  
% 2.57/1.03  fof(f6,axiom,(
% 2.57/1.03    ! [X0,X1] : (v1_relat_1(X1) => (v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f21,plain,(
% 2.57/1.03    ! [X0,X1] : ((v4_relat_1(X1,X0) <=> r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.57/1.03    inference(ennf_transformation,[],[f6])).
% 2.57/1.03  
% 2.57/1.03  fof(f30,plain,(
% 2.57/1.03    ! [X0,X1] : (((v4_relat_1(X1,X0) | ~r1_tarski(k1_relat_1(X1),X0)) & (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.57/1.03    inference(nnf_transformation,[],[f21])).
% 2.57/1.03  
% 2.57/1.03  fof(f40,plain,(
% 2.57/1.03    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X1),X0) | ~v4_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.57/1.03    inference(cnf_transformation,[],[f30])).
% 2.57/1.03  
% 2.57/1.03  fof(f10,axiom,(
% 2.57/1.03    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f46,plain,(
% 2.57/1.03    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 2.57/1.03    inference(cnf_transformation,[],[f10])).
% 2.57/1.03  
% 2.57/1.03  fof(f8,axiom,(
% 2.57/1.03    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f44,plain,(
% 2.57/1.03    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 2.57/1.03    inference(cnf_transformation,[],[f8])).
% 2.57/1.03  
% 2.57/1.03  fof(f5,axiom,(
% 2.57/1.03    ! [X0] : (v1_relat_1(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_relat_1(X1)))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f20,plain,(
% 2.57/1.03    ! [X0] : (! [X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_relat_1(X0))),
% 2.57/1.03    inference(ennf_transformation,[],[f5])).
% 2.57/1.03  
% 2.57/1.03  fof(f39,plain,(
% 2.57/1.03    ( ! [X0,X1] : (v1_relat_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_relat_1(X0)) )),
% 2.57/1.03    inference(cnf_transformation,[],[f20])).
% 2.57/1.03  
% 2.57/1.03  fof(f53,plain,(
% 2.57/1.03    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))),
% 2.57/1.03    inference(cnf_transformation,[],[f33])).
% 2.57/1.03  
% 2.57/1.03  fof(f37,plain,(
% 2.57/1.03    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.57/1.03    inference(cnf_transformation,[],[f29])).
% 2.57/1.03  
% 2.57/1.03  fof(f3,axiom,(
% 2.57/1.03    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f36,plain,(
% 2.57/1.03    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 2.57/1.03    inference(cnf_transformation,[],[f3])).
% 2.57/1.03  
% 2.57/1.03  fof(f50,plain,(
% 2.57/1.03    ( ! [X2,X0,X1] : (v5_relat_1(X2,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.57/1.03    inference(cnf_transformation,[],[f24])).
% 2.57/1.03  
% 2.57/1.03  fof(f7,axiom,(
% 2.57/1.03    ! [X0,X1] : (v1_relat_1(X1) => (v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f22,plain,(
% 2.57/1.03    ! [X0,X1] : ((v5_relat_1(X1,X0) <=> r1_tarski(k2_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 2.57/1.03    inference(ennf_transformation,[],[f7])).
% 2.57/1.03  
% 2.57/1.03  fof(f31,plain,(
% 2.57/1.03    ! [X0,X1] : (((v5_relat_1(X1,X0) | ~r1_tarski(k2_relat_1(X1),X0)) & (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0))) | ~v1_relat_1(X1))),
% 2.57/1.03    inference(nnf_transformation,[],[f22])).
% 2.57/1.03  
% 2.57/1.03  fof(f42,plain,(
% 2.57/1.03    ( ! [X0,X1] : (r1_tarski(k2_relat_1(X1),X0) | ~v5_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 2.57/1.03    inference(cnf_transformation,[],[f31])).
% 2.57/1.03  
% 2.57/1.03  fof(f47,plain,(
% 2.57/1.03    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 2.57/1.03    inference(cnf_transformation,[],[f10])).
% 2.57/1.03  
% 2.57/1.03  fof(f14,axiom,(
% 2.57/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k2_relat_1(X2) = k2_relset_1(X0,X1,X2))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f26,plain,(
% 2.57/1.03    ! [X0,X1,X2] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.57/1.03    inference(ennf_transformation,[],[f14])).
% 2.57/1.03  
% 2.57/1.03  fof(f52,plain,(
% 2.57/1.03    ( ! [X2,X0,X1] : (k2_relat_1(X2) = k2_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.57/1.03    inference(cnf_transformation,[],[f26])).
% 2.57/1.03  
% 2.57/1.03  fof(f55,plain,(
% 2.57/1.03    ~r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3)) | ~r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3))),
% 2.57/1.03    inference(cnf_transformation,[],[f33])).
% 2.57/1.03  
% 2.57/1.03  fof(f13,axiom,(
% 2.57/1.03    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k1_relat_1(X2) = k1_relset_1(X0,X1,X2))),
% 2.57/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.57/1.03  
% 2.57/1.03  fof(f25,plain,(
% 2.57/1.03    ! [X0,X1,X2] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 2.57/1.03    inference(ennf_transformation,[],[f13])).
% 2.57/1.03  
% 2.57/1.03  fof(f51,plain,(
% 2.57/1.03    ( ! [X2,X0,X1] : (k1_relat_1(X2) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 2.57/1.03    inference(cnf_transformation,[],[f25])).
% 2.57/1.03  
% 2.57/1.03  cnf(c_11,plain,
% 2.57/1.03      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
% 2.57/1.03      | ~ v1_relat_1(X0) ),
% 2.57/1.03      inference(cnf_transformation,[],[f45]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1166,plain,
% 2.57/1.03      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = iProver_top
% 2.57/1.03      | v1_relat_1(X0) != iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_20,negated_conjecture,
% 2.57/1.03      ( r1_tarski(k6_relat_1(sK2),sK3) ),
% 2.57/1.03      inference(cnf_transformation,[],[f54]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1161,plain,
% 2.57/1.03      ( r1_tarski(k6_relat_1(sK2),sK3) = iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1,plain,
% 2.57/1.03      ( ~ r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1 ),
% 2.57/1.03      inference(cnf_transformation,[],[f35]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1171,plain,
% 2.57/1.03      ( k2_xboole_0(X0,X1) = X1 | r1_tarski(X0,X1) != iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1583,plain,
% 2.57/1.03      ( k2_xboole_0(k6_relat_1(sK2),sK3) = sK3 ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1161,c_1171]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_0,plain,
% 2.57/1.03      ( r1_tarski(X0,X1) | ~ r1_tarski(k2_xboole_0(X0,X2),X1) ),
% 2.57/1.03      inference(cnf_transformation,[],[f34]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1172,plain,
% 2.57/1.03      ( r1_tarski(X0,X1) = iProver_top
% 2.57/1.03      | r1_tarski(k2_xboole_0(X0,X2),X1) != iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1871,plain,
% 2.57/1.03      ( r1_tarski(k6_relat_1(sK2),X0) = iProver_top
% 2.57/1.03      | r1_tarski(sK3,X0) != iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1583,c_1172]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_3,plain,
% 2.57/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.57/1.03      inference(cnf_transformation,[],[f38]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1169,plain,
% 2.57/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X1)) = iProver_top
% 2.57/1.03      | r1_tarski(X0,X1) != iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_16,plain,
% 2.57/1.03      ( v4_relat_1(X0,X1)
% 2.57/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
% 2.57/1.03      inference(cnf_transformation,[],[f49]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_7,plain,
% 2.57/1.03      ( ~ v4_relat_1(X0,X1)
% 2.57/1.03      | r1_tarski(k1_relat_1(X0),X1)
% 2.57/1.03      | ~ v1_relat_1(X0) ),
% 2.57/1.03      inference(cnf_transformation,[],[f40]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_277,plain,
% 2.57/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.57/1.03      | r1_tarski(k1_relat_1(X0),X1)
% 2.57/1.03      | ~ v1_relat_1(X0) ),
% 2.57/1.03      inference(resolution,[status(thm)],[c_16,c_7]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1158,plain,
% 2.57/1.03      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.57/1.03      | r1_tarski(k1_relat_1(X0),X1) = iProver_top
% 2.57/1.03      | v1_relat_1(X0) != iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_277]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2606,plain,
% 2.57/1.03      ( r1_tarski(X0,k2_zfmisc_1(X1,X2)) != iProver_top
% 2.57/1.03      | r1_tarski(k1_relat_1(X0),X1) = iProver_top
% 2.57/1.03      | v1_relat_1(X0) != iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1169,c_1158]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_5447,plain,
% 2.57/1.03      ( r1_tarski(k1_relat_1(k6_relat_1(sK2)),X0) = iProver_top
% 2.57/1.03      | r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
% 2.57/1.03      | v1_relat_1(k6_relat_1(sK2)) != iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1871,c_2606]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_13,plain,
% 2.57/1.03      ( k1_relat_1(k6_relat_1(X0)) = X0 ),
% 2.57/1.03      inference(cnf_transformation,[],[f46]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_5466,plain,
% 2.57/1.03      ( r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
% 2.57/1.03      | r1_tarski(sK2,X0) = iProver_top
% 2.57/1.03      | v1_relat_1(k6_relat_1(sK2)) != iProver_top ),
% 2.57/1.03      inference(demodulation,[status(thm)],[c_5447,c_13]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_10,plain,
% 2.57/1.03      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 2.57/1.03      inference(cnf_transformation,[],[f44]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1791,plain,
% 2.57/1.03      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
% 2.57/1.03      inference(instantiation,[status(thm)],[c_10]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1792,plain,
% 2.57/1.03      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_1791]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_5,plain,
% 2.57/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.57/1.03      | ~ v1_relat_1(X1)
% 2.57/1.03      | v1_relat_1(X0) ),
% 2.57/1.03      inference(cnf_transformation,[],[f39]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_168,plain,
% 2.57/1.03      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.57/1.03      inference(prop_impl,[status(thm)],[c_3]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_169,plain,
% 2.57/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.57/1.03      inference(renaming,[status(thm)],[c_168]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_203,plain,
% 2.57/1.03      ( ~ r1_tarski(X0,X1) | ~ v1_relat_1(X1) | v1_relat_1(X0) ),
% 2.57/1.03      inference(bin_hyper_res,[status(thm)],[c_5,c_169]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1297,plain,
% 2.57/1.03      ( ~ r1_tarski(X0,k2_zfmisc_1(X1,X2))
% 2.57/1.03      | v1_relat_1(X0)
% 2.57/1.03      | ~ v1_relat_1(k2_zfmisc_1(X1,X2)) ),
% 2.57/1.03      inference(instantiation,[status(thm)],[c_203]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1691,plain,
% 2.57/1.03      ( ~ r1_tarski(k6_relat_1(sK2),k2_zfmisc_1(X0,X1))
% 2.57/1.03      | ~ v1_relat_1(k2_zfmisc_1(X0,X1))
% 2.57/1.03      | v1_relat_1(k6_relat_1(sK2)) ),
% 2.57/1.03      inference(instantiation,[status(thm)],[c_1297]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2974,plain,
% 2.57/1.03      ( ~ r1_tarski(k6_relat_1(sK2),k2_zfmisc_1(sK0,sK1))
% 2.57/1.03      | ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
% 2.57/1.03      | v1_relat_1(k6_relat_1(sK2)) ),
% 2.57/1.03      inference(instantiation,[status(thm)],[c_1691]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2977,plain,
% 2.57/1.03      ( r1_tarski(k6_relat_1(sK2),k2_zfmisc_1(sK0,sK1)) != iProver_top
% 2.57/1.03      | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 2.57/1.03      | v1_relat_1(k6_relat_1(sK2)) = iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_2974]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_21,negated_conjecture,
% 2.57/1.03      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) ),
% 2.57/1.03      inference(cnf_transformation,[],[f53]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1160,plain,
% 2.57/1.03      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_4,plain,
% 2.57/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.57/1.03      inference(cnf_transformation,[],[f37]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1168,plain,
% 2.57/1.03      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.57/1.03      | r1_tarski(X0,X1) = iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1773,plain,
% 2.57/1.03      ( r1_tarski(sK3,k2_zfmisc_1(sK0,sK1)) = iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1160,c_1168]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2349,plain,
% 2.57/1.03      ( k2_xboole_0(k6_relat_1(sK2),X0) = X0
% 2.57/1.03      | r1_tarski(sK3,X0) != iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1871,c_1171]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2596,plain,
% 2.57/1.03      ( k2_xboole_0(k6_relat_1(sK2),k2_zfmisc_1(sK0,sK1)) = k2_zfmisc_1(sK0,sK1) ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1773,c_2349]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2,plain,
% 2.57/1.03      ( r1_tarski(X0,k2_xboole_0(X0,X1)) ),
% 2.57/1.03      inference(cnf_transformation,[],[f36]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1170,plain,
% 2.57/1.03      ( r1_tarski(X0,k2_xboole_0(X0,X1)) = iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_3212,plain,
% 2.57/1.03      ( r1_tarski(k6_relat_1(sK2),k2_zfmisc_1(sK0,sK1)) = iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_2596,c_1170]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_5593,plain,
% 2.57/1.03      ( r1_tarski(sK2,X0) = iProver_top
% 2.57/1.03      | r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top ),
% 2.57/1.03      inference(global_propositional_subsumption,
% 2.57/1.03                [status(thm)],
% 2.57/1.03                [c_5466,c_1792,c_2977,c_3212]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_5594,plain,
% 2.57/1.03      ( r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
% 2.57/1.03      | r1_tarski(sK2,X0) = iProver_top ),
% 2.57/1.03      inference(renaming,[status(thm)],[c_5593]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_5599,plain,
% 2.57/1.03      ( r1_tarski(sK2,k1_relat_1(sK3)) = iProver_top
% 2.57/1.03      | v1_relat_1(sK3) != iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1166,c_5594]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_15,plain,
% 2.57/1.03      ( v5_relat_1(X0,X1)
% 2.57/1.03      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
% 2.57/1.03      inference(cnf_transformation,[],[f50]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_9,plain,
% 2.57/1.03      ( ~ v5_relat_1(X0,X1)
% 2.57/1.03      | r1_tarski(k2_relat_1(X0),X1)
% 2.57/1.03      | ~ v1_relat_1(X0) ),
% 2.57/1.03      inference(cnf_transformation,[],[f42]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_296,plain,
% 2.57/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.57/1.03      | r1_tarski(k2_relat_1(X0),X2)
% 2.57/1.03      | ~ v1_relat_1(X0) ),
% 2.57/1.03      inference(resolution,[status(thm)],[c_15,c_9]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1157,plain,
% 2.57/1.03      ( m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != iProver_top
% 2.57/1.03      | r1_tarski(k2_relat_1(X0),X2) = iProver_top
% 2.57/1.03      | v1_relat_1(X0) != iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_296]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1779,plain,
% 2.57/1.03      ( r1_tarski(X0,k2_zfmisc_1(X1,X2)) != iProver_top
% 2.57/1.03      | r1_tarski(k2_relat_1(X0),X2) = iProver_top
% 2.57/1.03      | v1_relat_1(X0) != iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1169,c_1157]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_4090,plain,
% 2.57/1.03      ( r1_tarski(k2_relat_1(k6_relat_1(sK2)),X0) = iProver_top
% 2.57/1.03      | r1_tarski(sK3,k2_zfmisc_1(X1,X0)) != iProver_top
% 2.57/1.03      | v1_relat_1(k6_relat_1(sK2)) != iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1871,c_1779]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_12,plain,
% 2.57/1.03      ( k2_relat_1(k6_relat_1(X0)) = X0 ),
% 2.57/1.03      inference(cnf_transformation,[],[f47]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_4106,plain,
% 2.57/1.03      ( r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
% 2.57/1.03      | r1_tarski(sK2,X1) = iProver_top
% 2.57/1.03      | v1_relat_1(k6_relat_1(sK2)) != iProver_top ),
% 2.57/1.03      inference(demodulation,[status(thm)],[c_4090,c_12]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_4548,plain,
% 2.57/1.03      ( r1_tarski(sK2,X1) = iProver_top
% 2.57/1.03      | r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top ),
% 2.57/1.03      inference(global_propositional_subsumption,
% 2.57/1.03                [status(thm)],
% 2.57/1.03                [c_4106,c_1792,c_2977,c_3212]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_4549,plain,
% 2.57/1.03      ( r1_tarski(sK3,k2_zfmisc_1(X0,X1)) != iProver_top
% 2.57/1.03      | r1_tarski(sK2,X1) = iProver_top ),
% 2.57/1.03      inference(renaming,[status(thm)],[c_4548]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_4556,plain,
% 2.57/1.03      ( r1_tarski(sK2,k2_relat_1(sK3)) = iProver_top
% 2.57/1.03      | v1_relat_1(sK3) != iProver_top ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1166,c_4549]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_18,plain,
% 2.57/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.57/1.03      | k2_relset_1(X1,X2,X0) = k2_relat_1(X0) ),
% 2.57/1.03      inference(cnf_transformation,[],[f52]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1163,plain,
% 2.57/1.03      ( k2_relset_1(X0,X1,X2) = k2_relat_1(X2)
% 2.57/1.03      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_18]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2724,plain,
% 2.57/1.03      ( k2_relset_1(sK0,sK1,sK3) = k2_relat_1(sK3) ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1160,c_1163]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_19,negated_conjecture,
% 2.57/1.03      ( ~ r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3))
% 2.57/1.03      | ~ r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3)) ),
% 2.57/1.03      inference(cnf_transformation,[],[f55]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1162,plain,
% 2.57/1.03      ( r1_tarski(sK2,k2_relset_1(sK0,sK1,sK3)) != iProver_top
% 2.57/1.03      | r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3)) != iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2901,plain,
% 2.57/1.03      ( r1_tarski(sK2,k1_relset_1(sK0,sK1,sK3)) != iProver_top
% 2.57/1.03      | r1_tarski(sK2,k2_relat_1(sK3)) != iProver_top ),
% 2.57/1.03      inference(demodulation,[status(thm)],[c_2724,c_1162]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_17,plain,
% 2.57/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 2.57/1.03      | k1_relset_1(X1,X2,X0) = k1_relat_1(X0) ),
% 2.57/1.03      inference(cnf_transformation,[],[f51]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1164,plain,
% 2.57/1.03      ( k1_relset_1(X0,X1,X2) = k1_relat_1(X2)
% 2.57/1.03      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_17]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2738,plain,
% 2.57/1.03      ( k1_relset_1(sK0,sK1,sK3) = k1_relat_1(sK3) ),
% 2.57/1.03      inference(superposition,[status(thm)],[c_1160,c_1164]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_2960,plain,
% 2.57/1.03      ( r1_tarski(sK2,k2_relat_1(sK3)) != iProver_top
% 2.57/1.03      | r1_tarski(sK2,k1_relat_1(sK3)) != iProver_top ),
% 2.57/1.03      inference(light_normalisation,[status(thm)],[c_2901,c_2738]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1667,plain,
% 2.57/1.03      ( ~ r1_tarski(sK3,k2_zfmisc_1(sK0,sK1))
% 2.57/1.03      | ~ v1_relat_1(k2_zfmisc_1(sK0,sK1))
% 2.57/1.03      | v1_relat_1(sK3) ),
% 2.57/1.03      inference(instantiation,[status(thm)],[c_1297]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1668,plain,
% 2.57/1.03      ( r1_tarski(sK3,k2_zfmisc_1(sK0,sK1)) != iProver_top
% 2.57/1.03      | v1_relat_1(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 2.57/1.03      | v1_relat_1(sK3) = iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_1667]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1280,plain,
% 2.57/1.03      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1)))
% 2.57/1.03      | r1_tarski(sK3,k2_zfmisc_1(sK0,sK1)) ),
% 2.57/1.03      inference(instantiation,[status(thm)],[c_4]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_1281,plain,
% 2.57/1.03      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) != iProver_top
% 2.57/1.03      | r1_tarski(sK3,k2_zfmisc_1(sK0,sK1)) = iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_1280]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(c_22,plain,
% 2.57/1.03      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(sK0,sK1))) = iProver_top ),
% 2.57/1.03      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 2.57/1.03  
% 2.57/1.03  cnf(contradiction,plain,
% 2.57/1.03      ( $false ),
% 2.57/1.03      inference(minisat,
% 2.57/1.03                [status(thm)],
% 2.57/1.03                [c_5599,c_4556,c_2960,c_1792,c_1668,c_1281,c_22]) ).
% 2.57/1.03  
% 2.57/1.03  
% 2.57/1.03  % SZS output end CNFRefutation for theBenchmark.p
% 2.57/1.03  
% 2.57/1.03  ------                               Statistics
% 2.57/1.03  
% 2.57/1.03  ------ General
% 2.57/1.03  
% 2.57/1.03  abstr_ref_over_cycles:                  0
% 2.57/1.03  abstr_ref_under_cycles:                 0
% 2.57/1.03  gc_basic_clause_elim:                   0
% 2.57/1.03  forced_gc_time:                         0
% 2.57/1.03  parsing_time:                           0.022
% 2.57/1.03  unif_index_cands_time:                  0.
% 2.57/1.03  unif_index_add_time:                    0.
% 2.57/1.03  orderings_time:                         0.
% 2.57/1.03  out_proof_time:                         0.009
% 2.57/1.03  total_time:                             0.176
% 2.57/1.03  num_of_symbols:                         48
% 2.57/1.03  num_of_terms:                           4741
% 2.57/1.03  
% 2.57/1.03  ------ Preprocessing
% 2.57/1.03  
% 2.57/1.03  num_of_splits:                          0
% 2.57/1.03  num_of_split_atoms:                     0
% 2.57/1.03  num_of_reused_defs:                     0
% 2.57/1.03  num_eq_ax_congr_red:                    10
% 2.57/1.03  num_of_sem_filtered_clauses:            1
% 2.57/1.03  num_of_subtypes:                        0
% 2.57/1.03  monotx_restored_types:                  0
% 2.57/1.03  sat_num_of_epr_types:                   0
% 2.57/1.03  sat_num_of_non_cyclic_types:            0
% 2.57/1.03  sat_guarded_non_collapsed_types:        0
% 2.57/1.03  num_pure_diseq_elim:                    0
% 2.57/1.03  simp_replaced_by:                       0
% 2.57/1.03  res_preprocessed:                       101
% 2.57/1.03  prep_upred:                             0
% 2.57/1.03  prep_unflattend:                        18
% 2.57/1.03  smt_new_axioms:                         0
% 2.57/1.03  pred_elim_cands:                        3
% 2.57/1.03  pred_elim:                              2
% 2.57/1.03  pred_elim_cl:                           4
% 2.57/1.03  pred_elim_cycles:                       4
% 2.57/1.03  merged_defs:                            8
% 2.57/1.03  merged_defs_ncl:                        0
% 2.57/1.03  bin_hyper_res:                          9
% 2.57/1.03  prep_cycles:                            4
% 2.57/1.03  pred_elim_time:                         0.005
% 2.57/1.03  splitting_time:                         0.
% 2.57/1.03  sem_filter_time:                        0.
% 2.57/1.03  monotx_time:                            0.001
% 2.57/1.03  subtype_inf_time:                       0.
% 2.57/1.03  
% 2.57/1.03  ------ Problem properties
% 2.57/1.03  
% 2.57/1.03  clauses:                                18
% 2.57/1.03  conjectures:                            3
% 2.57/1.03  epr:                                    1
% 2.57/1.03  horn:                                   18
% 2.57/1.03  ground:                                 3
% 2.57/1.03  unary:                                  7
% 2.57/1.03  binary:                                 8
% 2.57/1.03  lits:                                   32
% 2.57/1.03  lits_eq:                                5
% 2.57/1.03  fd_pure:                                0
% 2.57/1.03  fd_pseudo:                              0
% 2.57/1.03  fd_cond:                                0
% 2.57/1.03  fd_pseudo_cond:                         0
% 2.57/1.03  ac_symbols:                             0
% 2.57/1.03  
% 2.57/1.03  ------ Propositional Solver
% 2.57/1.03  
% 2.57/1.03  prop_solver_calls:                      27
% 2.57/1.03  prop_fast_solver_calls:                 588
% 2.57/1.03  smt_solver_calls:                       0
% 2.57/1.03  smt_fast_solver_calls:                  0
% 2.57/1.03  prop_num_of_clauses:                    2238
% 2.57/1.03  prop_preprocess_simplified:             6533
% 2.57/1.03  prop_fo_subsumed:                       9
% 2.57/1.03  prop_solver_time:                       0.
% 2.57/1.03  smt_solver_time:                        0.
% 2.57/1.03  smt_fast_solver_time:                   0.
% 2.57/1.03  prop_fast_solver_time:                  0.
% 2.57/1.03  prop_unsat_core_time:                   0.
% 2.57/1.03  
% 2.57/1.03  ------ QBF
% 2.57/1.03  
% 2.57/1.03  qbf_q_res:                              0
% 2.57/1.03  qbf_num_tautologies:                    0
% 2.57/1.03  qbf_prep_cycles:                        0
% 2.57/1.03  
% 2.57/1.03  ------ BMC1
% 2.57/1.03  
% 2.57/1.03  bmc1_current_bound:                     -1
% 2.57/1.03  bmc1_last_solved_bound:                 -1
% 2.57/1.03  bmc1_unsat_core_size:                   -1
% 2.57/1.03  bmc1_unsat_core_parents_size:           -1
% 2.57/1.03  bmc1_merge_next_fun:                    0
% 2.57/1.03  bmc1_unsat_core_clauses_time:           0.
% 2.57/1.03  
% 2.57/1.03  ------ Instantiation
% 2.57/1.03  
% 2.57/1.03  inst_num_of_clauses:                    706
% 2.57/1.03  inst_num_in_passive:                    239
% 2.57/1.03  inst_num_in_active:                     303
% 2.57/1.03  inst_num_in_unprocessed:                164
% 2.57/1.03  inst_num_of_loops:                      320
% 2.57/1.03  inst_num_of_learning_restarts:          0
% 2.57/1.03  inst_num_moves_active_passive:          16
% 2.57/1.03  inst_lit_activity:                      0
% 2.57/1.03  inst_lit_activity_moves:                0
% 2.57/1.03  inst_num_tautologies:                   0
% 2.57/1.03  inst_num_prop_implied:                  0
% 2.57/1.03  inst_num_existing_simplified:           0
% 2.57/1.03  inst_num_eq_res_simplified:             0
% 2.57/1.03  inst_num_child_elim:                    0
% 2.57/1.03  inst_num_of_dismatching_blockings:      140
% 2.57/1.03  inst_num_of_non_proper_insts:           504
% 2.57/1.03  inst_num_of_duplicates:                 0
% 2.57/1.03  inst_inst_num_from_inst_to_res:         0
% 2.57/1.03  inst_dismatching_checking_time:         0.
% 2.57/1.03  
% 2.57/1.03  ------ Resolution
% 2.57/1.03  
% 2.57/1.03  res_num_of_clauses:                     0
% 2.57/1.03  res_num_in_passive:                     0
% 2.57/1.03  res_num_in_active:                      0
% 2.57/1.03  res_num_of_loops:                       105
% 2.57/1.03  res_forward_subset_subsumed:            19
% 2.57/1.03  res_backward_subset_subsumed:           0
% 2.57/1.03  res_forward_subsumed:                   0
% 2.57/1.03  res_backward_subsumed:                  0
% 2.57/1.03  res_forward_subsumption_resolution:     0
% 2.57/1.03  res_backward_subsumption_resolution:    0
% 2.57/1.03  res_clause_to_clause_subsumption:       283
% 2.57/1.03  res_orphan_elimination:                 0
% 2.57/1.03  res_tautology_del:                      42
% 2.57/1.03  res_num_eq_res_simplified:              0
% 2.57/1.03  res_num_sel_changes:                    0
% 2.57/1.03  res_moves_from_active_to_pass:          0
% 2.57/1.03  
% 2.57/1.03  ------ Superposition
% 2.57/1.03  
% 2.57/1.03  sup_time_total:                         0.
% 2.57/1.03  sup_time_generating:                    0.
% 2.57/1.03  sup_time_sim_full:                      0.
% 2.57/1.03  sup_time_sim_immed:                     0.
% 2.57/1.03  
% 2.57/1.03  sup_num_of_clauses:                     107
% 2.57/1.03  sup_num_in_active:                      62
% 2.57/1.03  sup_num_in_passive:                     45
% 2.57/1.03  sup_num_of_loops:                       62
% 2.57/1.03  sup_fw_superposition:                   88
% 2.57/1.03  sup_bw_superposition:                   76
% 2.57/1.03  sup_immediate_simplified:               29
% 2.57/1.03  sup_given_eliminated:                   0
% 2.57/1.03  comparisons_done:                       0
% 2.57/1.03  comparisons_avoided:                    0
% 2.57/1.03  
% 2.57/1.03  ------ Simplifications
% 2.57/1.03  
% 2.57/1.03  
% 2.57/1.03  sim_fw_subset_subsumed:                 3
% 2.57/1.03  sim_bw_subset_subsumed:                 0
% 2.57/1.03  sim_fw_subsumed:                        13
% 2.57/1.03  sim_bw_subsumed:                        0
% 2.57/1.03  sim_fw_subsumption_res:                 0
% 2.57/1.03  sim_bw_subsumption_res:                 0
% 2.57/1.03  sim_tautology_del:                      4
% 2.57/1.03  sim_eq_tautology_del:                   1
% 2.57/1.03  sim_eq_res_simp:                        0
% 2.57/1.03  sim_fw_demodulated:                     5
% 2.57/1.03  sim_bw_demodulated:                     1
% 2.57/1.03  sim_light_normalised:                   11
% 2.57/1.03  sim_joinable_taut:                      0
% 2.57/1.03  sim_joinable_simp:                      0
% 2.57/1.03  sim_ac_normalised:                      0
% 2.57/1.03  sim_smt_subsumption:                    0
% 2.57/1.03  
%------------------------------------------------------------------------------
