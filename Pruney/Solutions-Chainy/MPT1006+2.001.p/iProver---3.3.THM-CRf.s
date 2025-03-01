%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:04:30 EST 2020

% Result     : Theorem 1.71s
% Output     : CNFRefutation 1.71s
% Verified   : 
% Statistics : Number of formulae       :  109 ( 346 expanded)
%              Number of clauses        :   63 ( 136 expanded)
%              Number of leaves         :   14 (  64 expanded)
%              Depth                    :   22
%              Number of atoms          :  318 (1132 expanded)
%              Number of equality atoms :  156 ( 503 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   13 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,conjecture,(
    ! [X0,X1,X2] :
      ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
        & v1_funct_2(X2,k1_xboole_0,X0)
        & v1_funct_1(X2) )
     => k1_xboole_0 = k8_relset_1(k1_xboole_0,X0,X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ( ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
          & v1_funct_2(X2,k1_xboole_0,X0)
          & v1_funct_1(X2) )
       => k1_xboole_0 = k8_relset_1(k1_xboole_0,X0,X2,X1) ) ),
    inference(negated_conjecture,[],[f12])).

fof(f24,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != k8_relset_1(k1_xboole_0,X0,X2,X1)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
      & v1_funct_2(X2,k1_xboole_0,X0)
      & v1_funct_1(X2) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f25,plain,(
    ? [X0,X1,X2] :
      ( k1_xboole_0 != k8_relset_1(k1_xboole_0,X0,X2,X1)
      & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
      & v1_funct_2(X2,k1_xboole_0,X0)
      & v1_funct_1(X2) ) ),
    inference(flattening,[],[f24])).

fof(f31,plain,
    ( ? [X0,X1,X2] :
        ( k1_xboole_0 != k8_relset_1(k1_xboole_0,X0,X2,X1)
        & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
        & v1_funct_2(X2,k1_xboole_0,X0)
        & v1_funct_1(X2) )
   => ( k1_xboole_0 != k8_relset_1(k1_xboole_0,sK1,sK3,sK2)
      & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1)))
      & v1_funct_2(sK3,k1_xboole_0,sK1)
      & v1_funct_1(sK3) ) ),
    introduced(choice_axiom,[])).

fof(f32,plain,
    ( k1_xboole_0 != k8_relset_1(k1_xboole_0,sK1,sK3,sK2)
    & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1)))
    & v1_funct_2(sK3,k1_xboole_0,sK1)
    & v1_funct_1(sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f25,f31])).

fof(f54,plain,(
    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1))) ),
    inference(cnf_transformation,[],[f32])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
    <=> ( k1_xboole_0 = X1
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(nnf_transformation,[],[f3])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
        | ( k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) )
      & ( k1_xboole_0 = X1
        | k1_xboole_0 = X0
        | k1_xboole_0 != k2_zfmisc_1(X0,X1) ) ) ),
    inference(flattening,[],[f28])).

fof(f36,plain,(
    ! [X0,X1] :
      ( k1_xboole_0 = k2_zfmisc_1(X0,X1)
      | k1_xboole_0 != X0 ) ),
    inference(cnf_transformation,[],[f29])).

fof(f57,plain,(
    ! [X1] : k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1) ),
    inference(equality_resolution,[],[f36])).

fof(f5,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f39,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f2,axiom,(
    ? [X0] : v1_xboole_0(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,
    ( ? [X0] : v1_xboole_0(X0)
   => v1_xboole_0(sK0) ),
    introduced(choice_axiom,[])).

fof(f27,plain,(
    v1_xboole_0(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f2,f26])).

fof(f34,plain,(
    v1_xboole_0(sK0) ),
    inference(cnf_transformation,[],[f27])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f33,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f11,axiom,(
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

fof(f22,plain,(
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
    inference(ennf_transformation,[],[f11])).

fof(f23,plain,(
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
    inference(flattening,[],[f22])).

fof(f30,plain,(
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
    inference(nnf_transformation,[],[f23])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( v1_xboole_0(X0)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
         => v1_partfun1(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( v1_partfun1(X2,X0)
          | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f45,plain,(
    ! [X2,X0,X1] :
      ( v1_partfun1(X2,X0)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f9,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( ( v1_partfun1(X2,X0)
          & v1_funct_1(X2) )
       => ( v1_funct_2(X2,X0,X1)
          & v1_funct_1(X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1,X2] :
      ( ( v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
      | ~ v1_partfun1(X2,X0)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f20,plain,(
    ! [X0,X1,X2] :
      ( ( v1_funct_2(X2,X0,X1)
        & v1_funct_1(X2) )
      | ~ v1_partfun1(X2,X0)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(flattening,[],[f19])).

fof(f44,plain,(
    ! [X2,X0,X1] :
      ( v1_funct_2(X2,X0,X1)
      | ~ v1_partfun1(X2,X0)
      | ~ v1_funct_1(X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f52,plain,(
    v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f32])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( k1_relset_1(X0,X1,X2) = X0
      | ~ v1_funct_2(X2,X0,X1)
      | k1_xboole_0 != X0
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f62,plain,(
    ! [X2,X1] :
      ( k1_xboole_0 = k1_relset_1(k1_xboole_0,X1,X2)
      | ~ v1_funct_2(X2,k1_xboole_0,X1)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) ) ),
    inference(equality_resolution,[],[f47])).

fof(f4,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f38,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f8,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1,X2] :
      ( ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
        & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2) )
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f42,plain,(
    ! [X2,X0,X1] :
      ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
     => k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2,X3] :
      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f40,plain,(
    ! [X2,X0,X3,X1] :
      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f55,plain,(
    k1_xboole_0 != k8_relset_1(k1_xboole_0,sK1,sK3,sK2) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_20,negated_conjecture,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1))) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_648,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_20])).

cnf(c_3,plain,
    ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_666,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(demodulation,[status(thm)],[c_648,c_3])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_652,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_962,plain,
    ( v1_xboole_0(sK3) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_666,c_652])).

cnf(c_1,plain,
    ( v1_xboole_0(sK0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_66,plain,
    ( v1_xboole_0(sK0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_422,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | X1 != X0 ),
    theory(equality)).

cnf(c_810,plain,
    ( v1_xboole_0(X0)
    | ~ v1_xboole_0(sK0)
    | X0 != sK0 ),
    inference(instantiation,[status(thm)],[c_422])).

cnf(c_811,plain,
    ( X0 != sK0
    | v1_xboole_0(X0) = iProver_top
    | v1_xboole_0(sK0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_810])).

cnf(c_813,plain,
    ( k1_xboole_0 != sK0
    | v1_xboole_0(sK0) != iProver_top
    | v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_811])).

cnf(c_0,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f33])).

cnf(c_971,plain,
    ( ~ v1_xboole_0(sK0)
    | k1_xboole_0 = sK0 ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_1087,plain,
    ( v1_xboole_0(sK3) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_962,c_1,c_66,c_813,c_971])).

cnf(c_655,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1105,plain,
    ( sK3 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1087,c_655])).

cnf(c_18,plain,
    ( ~ v1_funct_2(X0,X1,X2)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k1_relset_1(X1,X2,X0) = X1
    | k1_xboole_0 = X2 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_12,plain,
    ( v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_10,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_22,negated_conjecture,
    ( v1_funct_1(sK3) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_213,plain,
    ( v1_funct_2(X0,X1,X2)
    | ~ v1_partfun1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | sK3 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_10,c_22])).

cnf(c_214,plain,
    ( v1_funct_2(sK3,X0,X1)
    | ~ v1_partfun1(sK3,X0)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
    inference(unflattening,[status(thm)],[c_213])).

cnf(c_232,plain,
    ( v1_funct_2(sK3,X0,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_xboole_0(X3)
    | X0 != X3
    | sK3 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_12,c_214])).

cnf(c_233,plain,
    ( v1_funct_2(sK3,X0,X1)
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ v1_xboole_0(X0) ),
    inference(unflattening,[status(thm)],[c_232])).

cnf(c_276,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X3,X5)))
    | ~ v1_xboole_0(X3)
    | X3 != X1
    | X4 != X2
    | k1_relset_1(X1,X2,X0) = X1
    | sK3 != X0
    | k1_xboole_0 = X2 ),
    inference(resolution_lifted,[status(thm)],[c_18,c_233])).

cnf(c_277,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
    | ~ v1_xboole_0(X0)
    | k1_relset_1(X0,X1,sK3) = X0
    | k1_xboole_0 = X1 ),
    inference(unflattening,[status(thm)],[c_276])).

cnf(c_647,plain,
    ( k1_relset_1(X0,X1,sK3) = X0
    | k1_xboole_0 = X1
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) != iProver_top
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_277])).

cnf(c_1030,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
    | k1_xboole_0 = X0
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) != iProver_top
    | m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(superposition,[status(thm)],[c_3,c_647])).

cnf(c_1031,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
    | k1_xboole_0 = X0
    | m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_1030,c_3])).

cnf(c_17,plain,
    ( ~ v1_funct_2(X0,k1_xboole_0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | k1_relset_1(k1_xboole_0,X1,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f62])).

cnf(c_313,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
    | ~ v1_xboole_0(X2)
    | X4 != X1
    | k1_relset_1(k1_xboole_0,X1,X0) = k1_xboole_0
    | sK3 != X0
    | k1_xboole_0 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_17,c_233])).

cnf(c_314,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
    | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
    | ~ v1_xboole_0(k1_xboole_0)
    | k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_313])).

cnf(c_418,plain,
    ( ~ v1_xboole_0(k1_xboole_0)
    | sP1_iProver_split
    | sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[])],[c_314])).

cnf(c_416,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
    | ~ sP0_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP0_iProver_split])],[c_314])).

cnf(c_646,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0))) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_416])).

cnf(c_681,plain,
    ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | sP0_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_646,c_3])).

cnf(c_684,plain,
    ( sP0_iProver_split != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_681,c_666])).

cnf(c_737,plain,
    ( ~ sP0_iProver_split ),
    inference(predicate_to_equality_rev,[status(thm)],[c_684])).

cnf(c_417,plain,
    ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
    | k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
    | ~ sP1_iProver_split ),
    inference(splitting,[splitting(split),new_symbols(definition,[sP1_iProver_split])],[c_314])).

cnf(c_645,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
    | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0))) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_417])).

cnf(c_715,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
    | m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | sP1_iProver_split != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_645,c_3])).

cnf(c_719,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
    | sP1_iProver_split != iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_715,c_666])).

cnf(c_738,plain,
    ( ~ sP1_iProver_split
    | k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_719])).

cnf(c_812,plain,
    ( ~ v1_xboole_0(sK0)
    | v1_xboole_0(k1_xboole_0)
    | k1_xboole_0 != sK0 ),
    inference(instantiation,[status(thm)],[c_810])).

cnf(c_1097,plain,
    ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1031,c_1,c_418,c_737,c_738,c_812,c_971])).

cnf(c_1181,plain,
    ( k1_relset_1(k1_xboole_0,X0,k1_xboole_0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1105,c_1097])).

cnf(c_5,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_653,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X2) = k1_relset_1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_650,plain,
    ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1965,plain,
    ( k8_relset_1(X0,X1,k1_xboole_0,X1) = k1_relset_1(X0,X1,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_653,c_650])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_651,plain,
    ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
    | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1397,plain,
    ( k8_relset_1(X0,X1,k1_xboole_0,X2) = k10_relat_1(k1_xboole_0,X2) ),
    inference(superposition,[status(thm)],[c_653,c_651])).

cnf(c_1977,plain,
    ( k1_relset_1(X0,X1,k1_xboole_0) = k10_relat_1(k1_xboole_0,X1) ),
    inference(demodulation,[status(thm)],[c_1965,c_1397])).

cnf(c_2045,plain,
    ( k10_relat_1(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1181,c_1977])).

cnf(c_19,negated_conjecture,
    ( k1_xboole_0 != k8_relset_1(k1_xboole_0,sK1,sK3,sK2) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_1186,plain,
    ( k8_relset_1(k1_xboole_0,sK1,k1_xboole_0,sK2) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1105,c_19])).

cnf(c_1752,plain,
    ( k10_relat_1(k1_xboole_0,sK2) != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1397,c_1186])).

cnf(c_2051,plain,
    ( k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2045,c_1752])).

cnf(c_2052,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_2051])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n016.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 11:17:34 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.71/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.71/0.98  
% 1.71/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.71/0.98  
% 1.71/0.98  ------  iProver source info
% 1.71/0.98  
% 1.71/0.98  git: date: 2020-06-30 10:37:57 +0100
% 1.71/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.71/0.98  git: non_committed_changes: false
% 1.71/0.98  git: last_make_outside_of_git: false
% 1.71/0.98  
% 1.71/0.98  ------ 
% 1.71/0.98  
% 1.71/0.98  ------ Input Options
% 1.71/0.98  
% 1.71/0.98  --out_options                           all
% 1.71/0.98  --tptp_safe_out                         true
% 1.71/0.98  --problem_path                          ""
% 1.71/0.98  --include_path                          ""
% 1.71/0.98  --clausifier                            res/vclausify_rel
% 1.71/0.98  --clausifier_options                    --mode clausify
% 1.71/0.98  --stdin                                 false
% 1.71/0.98  --stats_out                             all
% 1.71/0.98  
% 1.71/0.98  ------ General Options
% 1.71/0.98  
% 1.71/0.98  --fof                                   false
% 1.71/0.98  --time_out_real                         305.
% 1.71/0.98  --time_out_virtual                      -1.
% 1.71/0.98  --symbol_type_check                     false
% 1.71/0.98  --clausify_out                          false
% 1.71/0.98  --sig_cnt_out                           false
% 1.71/0.98  --trig_cnt_out                          false
% 1.71/0.98  --trig_cnt_out_tolerance                1.
% 1.71/0.98  --trig_cnt_out_sk_spl                   false
% 1.71/0.98  --abstr_cl_out                          false
% 1.71/0.98  
% 1.71/0.98  ------ Global Options
% 1.71/0.98  
% 1.71/0.98  --schedule                              default
% 1.71/0.98  --add_important_lit                     false
% 1.71/0.98  --prop_solver_per_cl                    1000
% 1.71/0.98  --min_unsat_core                        false
% 1.71/0.98  --soft_assumptions                      false
% 1.71/0.98  --soft_lemma_size                       3
% 1.71/0.98  --prop_impl_unit_size                   0
% 1.71/0.98  --prop_impl_unit                        []
% 1.71/0.98  --share_sel_clauses                     true
% 1.71/0.98  --reset_solvers                         false
% 1.71/0.98  --bc_imp_inh                            [conj_cone]
% 1.71/0.98  --conj_cone_tolerance                   3.
% 1.71/0.98  --extra_neg_conj                        none
% 1.71/0.98  --large_theory_mode                     true
% 1.71/0.98  --prolific_symb_bound                   200
% 1.71/0.98  --lt_threshold                          2000
% 1.71/0.98  --clause_weak_htbl                      true
% 1.71/0.98  --gc_record_bc_elim                     false
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing Options
% 1.71/0.98  
% 1.71/0.98  --preprocessing_flag                    true
% 1.71/0.98  --time_out_prep_mult                    0.1
% 1.71/0.98  --splitting_mode                        input
% 1.71/0.98  --splitting_grd                         true
% 1.71/0.98  --splitting_cvd                         false
% 1.71/0.98  --splitting_cvd_svl                     false
% 1.71/0.98  --splitting_nvd                         32
% 1.71/0.98  --sub_typing                            true
% 1.71/0.98  --prep_gs_sim                           true
% 1.71/0.98  --prep_unflatten                        true
% 1.71/0.98  --prep_res_sim                          true
% 1.71/0.98  --prep_upred                            true
% 1.71/0.98  --prep_sem_filter                       exhaustive
% 1.71/0.98  --prep_sem_filter_out                   false
% 1.71/0.98  --pred_elim                             true
% 1.71/0.98  --res_sim_input                         true
% 1.71/0.98  --eq_ax_congr_red                       true
% 1.71/0.98  --pure_diseq_elim                       true
% 1.71/0.98  --brand_transform                       false
% 1.71/0.98  --non_eq_to_eq                          false
% 1.71/0.98  --prep_def_merge                        true
% 1.71/0.98  --prep_def_merge_prop_impl              false
% 1.71/0.98  --prep_def_merge_mbd                    true
% 1.71/0.98  --prep_def_merge_tr_red                 false
% 1.71/0.98  --prep_def_merge_tr_cl                  false
% 1.71/0.98  --smt_preprocessing                     true
% 1.71/0.98  --smt_ac_axioms                         fast
% 1.71/0.98  --preprocessed_out                      false
% 1.71/0.98  --preprocessed_stats                    false
% 1.71/0.98  
% 1.71/0.98  ------ Abstraction refinement Options
% 1.71/0.98  
% 1.71/0.98  --abstr_ref                             []
% 1.71/0.98  --abstr_ref_prep                        false
% 1.71/0.98  --abstr_ref_until_sat                   false
% 1.71/0.98  --abstr_ref_sig_restrict                funpre
% 1.71/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.71/0.98  --abstr_ref_under                       []
% 1.71/0.98  
% 1.71/0.98  ------ SAT Options
% 1.71/0.98  
% 1.71/0.98  --sat_mode                              false
% 1.71/0.98  --sat_fm_restart_options                ""
% 1.71/0.98  --sat_gr_def                            false
% 1.71/0.98  --sat_epr_types                         true
% 1.71/0.98  --sat_non_cyclic_types                  false
% 1.71/0.98  --sat_finite_models                     false
% 1.71/0.98  --sat_fm_lemmas                         false
% 1.71/0.98  --sat_fm_prep                           false
% 1.71/0.98  --sat_fm_uc_incr                        true
% 1.71/0.98  --sat_out_model                         small
% 1.71/0.98  --sat_out_clauses                       false
% 1.71/0.98  
% 1.71/0.98  ------ QBF Options
% 1.71/0.98  
% 1.71/0.98  --qbf_mode                              false
% 1.71/0.98  --qbf_elim_univ                         false
% 1.71/0.98  --qbf_dom_inst                          none
% 1.71/0.98  --qbf_dom_pre_inst                      false
% 1.71/0.98  --qbf_sk_in                             false
% 1.71/0.98  --qbf_pred_elim                         true
% 1.71/0.98  --qbf_split                             512
% 1.71/0.98  
% 1.71/0.98  ------ BMC1 Options
% 1.71/0.98  
% 1.71/0.98  --bmc1_incremental                      false
% 1.71/0.98  --bmc1_axioms                           reachable_all
% 1.71/0.98  --bmc1_min_bound                        0
% 1.71/0.98  --bmc1_max_bound                        -1
% 1.71/0.98  --bmc1_max_bound_default                -1
% 1.71/0.98  --bmc1_symbol_reachability              true
% 1.71/0.98  --bmc1_property_lemmas                  false
% 1.71/0.98  --bmc1_k_induction                      false
% 1.71/0.98  --bmc1_non_equiv_states                 false
% 1.71/0.98  --bmc1_deadlock                         false
% 1.71/0.98  --bmc1_ucm                              false
% 1.71/0.98  --bmc1_add_unsat_core                   none
% 1.71/0.98  --bmc1_unsat_core_children              false
% 1.71/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.71/0.98  --bmc1_out_stat                         full
% 1.71/0.98  --bmc1_ground_init                      false
% 1.71/0.98  --bmc1_pre_inst_next_state              false
% 1.71/0.98  --bmc1_pre_inst_state                   false
% 1.71/0.98  --bmc1_pre_inst_reach_state             false
% 1.71/0.98  --bmc1_out_unsat_core                   false
% 1.71/0.98  --bmc1_aig_witness_out                  false
% 1.71/0.98  --bmc1_verbose                          false
% 1.71/0.98  --bmc1_dump_clauses_tptp                false
% 1.71/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.71/0.98  --bmc1_dump_file                        -
% 1.71/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.71/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.71/0.98  --bmc1_ucm_extend_mode                  1
% 1.71/0.98  --bmc1_ucm_init_mode                    2
% 1.71/0.98  --bmc1_ucm_cone_mode                    none
% 1.71/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.71/0.98  --bmc1_ucm_relax_model                  4
% 1.71/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.71/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.71/0.98  --bmc1_ucm_layered_model                none
% 1.71/0.98  --bmc1_ucm_max_lemma_size               10
% 1.71/0.98  
% 1.71/0.98  ------ AIG Options
% 1.71/0.98  
% 1.71/0.98  --aig_mode                              false
% 1.71/0.98  
% 1.71/0.98  ------ Instantiation Options
% 1.71/0.98  
% 1.71/0.98  --instantiation_flag                    true
% 1.71/0.98  --inst_sos_flag                         false
% 1.71/0.98  --inst_sos_phase                        true
% 1.71/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.71/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.71/0.98  --inst_lit_sel_side                     num_symb
% 1.71/0.98  --inst_solver_per_active                1400
% 1.71/0.98  --inst_solver_calls_frac                1.
% 1.71/0.98  --inst_passive_queue_type               priority_queues
% 1.71/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.71/0.98  --inst_passive_queues_freq              [25;2]
% 1.71/0.98  --inst_dismatching                      true
% 1.71/0.98  --inst_eager_unprocessed_to_passive     true
% 1.71/0.98  --inst_prop_sim_given                   true
% 1.71/0.98  --inst_prop_sim_new                     false
% 1.71/0.98  --inst_subs_new                         false
% 1.71/0.98  --inst_eq_res_simp                      false
% 1.71/0.98  --inst_subs_given                       false
% 1.71/0.98  --inst_orphan_elimination               true
% 1.71/0.98  --inst_learning_loop_flag               true
% 1.71/0.98  --inst_learning_start                   3000
% 1.71/0.98  --inst_learning_factor                  2
% 1.71/0.98  --inst_start_prop_sim_after_learn       3
% 1.71/0.98  --inst_sel_renew                        solver
% 1.71/0.98  --inst_lit_activity_flag                true
% 1.71/0.98  --inst_restr_to_given                   false
% 1.71/0.98  --inst_activity_threshold               500
% 1.71/0.98  --inst_out_proof                        true
% 1.71/0.98  
% 1.71/0.98  ------ Resolution Options
% 1.71/0.98  
% 1.71/0.98  --resolution_flag                       true
% 1.71/0.98  --res_lit_sel                           adaptive
% 1.71/0.98  --res_lit_sel_side                      none
% 1.71/0.98  --res_ordering                          kbo
% 1.71/0.98  --res_to_prop_solver                    active
% 1.71/0.98  --res_prop_simpl_new                    false
% 1.71/0.98  --res_prop_simpl_given                  true
% 1.71/0.98  --res_passive_queue_type                priority_queues
% 1.71/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.71/0.98  --res_passive_queues_freq               [15;5]
% 1.71/0.98  --res_forward_subs                      full
% 1.71/0.98  --res_backward_subs                     full
% 1.71/0.98  --res_forward_subs_resolution           true
% 1.71/0.98  --res_backward_subs_resolution          true
% 1.71/0.98  --res_orphan_elimination                true
% 1.71/0.98  --res_time_limit                        2.
% 1.71/0.98  --res_out_proof                         true
% 1.71/0.98  
% 1.71/0.98  ------ Superposition Options
% 1.71/0.98  
% 1.71/0.98  --superposition_flag                    true
% 1.71/0.98  --sup_passive_queue_type                priority_queues
% 1.71/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.71/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.71/0.98  --demod_completeness_check              fast
% 1.71/0.98  --demod_use_ground                      true
% 1.71/0.98  --sup_to_prop_solver                    passive
% 1.71/0.98  --sup_prop_simpl_new                    true
% 1.71/0.98  --sup_prop_simpl_given                  true
% 1.71/0.98  --sup_fun_splitting                     false
% 1.71/0.98  --sup_smt_interval                      50000
% 1.71/0.98  
% 1.71/0.98  ------ Superposition Simplification Setup
% 1.71/0.98  
% 1.71/0.98  --sup_indices_passive                   []
% 1.71/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.71/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.98  --sup_full_bw                           [BwDemod]
% 1.71/0.98  --sup_immed_triv                        [TrivRules]
% 1.71/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.71/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.98  --sup_immed_bw_main                     []
% 1.71/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.71/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.71/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.71/0.98  
% 1.71/0.98  ------ Combination Options
% 1.71/0.98  
% 1.71/0.98  --comb_res_mult                         3
% 1.71/0.98  --comb_sup_mult                         2
% 1.71/0.98  --comb_inst_mult                        10
% 1.71/0.98  
% 1.71/0.98  ------ Debug Options
% 1.71/0.98  
% 1.71/0.98  --dbg_backtrace                         false
% 1.71/0.98  --dbg_dump_prop_clauses                 false
% 1.71/0.98  --dbg_dump_prop_clauses_file            -
% 1.71/0.98  --dbg_out_stat                          false
% 1.71/0.98  ------ Parsing...
% 1.71/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing... gs_s  sp: 2 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.71/0.98  
% 1.71/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.71/0.98  ------ Proving...
% 1.71/0.98  ------ Problem Properties 
% 1.71/0.98  
% 1.71/0.98  
% 1.71/0.98  clauses                                 17
% 1.71/0.98  conjectures                             2
% 1.71/0.99  EPR                                     3
% 1.71/0.99  Horn                                    14
% 1.71/0.99  unary                                   7
% 1.71/0.99  binary                                  5
% 1.71/0.99  lits                                    34
% 1.71/0.99  lits eq                                 14
% 1.71/0.99  fd_pure                                 0
% 1.71/0.99  fd_pseudo                               0
% 1.71/0.99  fd_cond                                 2
% 1.71/0.99  fd_pseudo_cond                          0
% 1.71/0.99  AC symbols                              0
% 1.71/0.99  
% 1.71/0.99  ------ Schedule dynamic 5 is on 
% 1.71/0.99  
% 1.71/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.71/0.99  
% 1.71/0.99  
% 1.71/0.99  ------ 
% 1.71/0.99  Current options:
% 1.71/0.99  ------ 
% 1.71/0.99  
% 1.71/0.99  ------ Input Options
% 1.71/0.99  
% 1.71/0.99  --out_options                           all
% 1.71/0.99  --tptp_safe_out                         true
% 1.71/0.99  --problem_path                          ""
% 1.71/0.99  --include_path                          ""
% 1.71/0.99  --clausifier                            res/vclausify_rel
% 1.71/0.99  --clausifier_options                    --mode clausify
% 1.71/0.99  --stdin                                 false
% 1.71/0.99  --stats_out                             all
% 1.71/0.99  
% 1.71/0.99  ------ General Options
% 1.71/0.99  
% 1.71/0.99  --fof                                   false
% 1.71/0.99  --time_out_real                         305.
% 1.71/0.99  --time_out_virtual                      -1.
% 1.71/0.99  --symbol_type_check                     false
% 1.71/0.99  --clausify_out                          false
% 1.71/0.99  --sig_cnt_out                           false
% 1.71/0.99  --trig_cnt_out                          false
% 1.71/0.99  --trig_cnt_out_tolerance                1.
% 1.71/0.99  --trig_cnt_out_sk_spl                   false
% 1.71/0.99  --abstr_cl_out                          false
% 1.71/0.99  
% 1.71/0.99  ------ Global Options
% 1.71/0.99  
% 1.71/0.99  --schedule                              default
% 1.71/0.99  --add_important_lit                     false
% 1.71/0.99  --prop_solver_per_cl                    1000
% 1.71/0.99  --min_unsat_core                        false
% 1.71/0.99  --soft_assumptions                      false
% 1.71/0.99  --soft_lemma_size                       3
% 1.71/0.99  --prop_impl_unit_size                   0
% 1.71/0.99  --prop_impl_unit                        []
% 1.71/0.99  --share_sel_clauses                     true
% 1.71/0.99  --reset_solvers                         false
% 1.71/0.99  --bc_imp_inh                            [conj_cone]
% 1.71/0.99  --conj_cone_tolerance                   3.
% 1.71/0.99  --extra_neg_conj                        none
% 1.71/0.99  --large_theory_mode                     true
% 1.71/0.99  --prolific_symb_bound                   200
% 1.71/0.99  --lt_threshold                          2000
% 1.71/0.99  --clause_weak_htbl                      true
% 1.71/0.99  --gc_record_bc_elim                     false
% 1.71/0.99  
% 1.71/0.99  ------ Preprocessing Options
% 1.71/0.99  
% 1.71/0.99  --preprocessing_flag                    true
% 1.71/0.99  --time_out_prep_mult                    0.1
% 1.71/0.99  --splitting_mode                        input
% 1.71/0.99  --splitting_grd                         true
% 1.71/0.99  --splitting_cvd                         false
% 1.71/0.99  --splitting_cvd_svl                     false
% 1.71/0.99  --splitting_nvd                         32
% 1.71/0.99  --sub_typing                            true
% 1.71/0.99  --prep_gs_sim                           true
% 1.71/0.99  --prep_unflatten                        true
% 1.71/0.99  --prep_res_sim                          true
% 1.71/0.99  --prep_upred                            true
% 1.71/0.99  --prep_sem_filter                       exhaustive
% 1.71/0.99  --prep_sem_filter_out                   false
% 1.71/0.99  --pred_elim                             true
% 1.71/0.99  --res_sim_input                         true
% 1.71/0.99  --eq_ax_congr_red                       true
% 1.71/0.99  --pure_diseq_elim                       true
% 1.71/0.99  --brand_transform                       false
% 1.71/0.99  --non_eq_to_eq                          false
% 1.71/0.99  --prep_def_merge                        true
% 1.71/0.99  --prep_def_merge_prop_impl              false
% 1.71/0.99  --prep_def_merge_mbd                    true
% 1.71/0.99  --prep_def_merge_tr_red                 false
% 1.71/0.99  --prep_def_merge_tr_cl                  false
% 1.71/0.99  --smt_preprocessing                     true
% 1.71/0.99  --smt_ac_axioms                         fast
% 1.71/0.99  --preprocessed_out                      false
% 1.71/0.99  --preprocessed_stats                    false
% 1.71/0.99  
% 1.71/0.99  ------ Abstraction refinement Options
% 1.71/0.99  
% 1.71/0.99  --abstr_ref                             []
% 1.71/0.99  --abstr_ref_prep                        false
% 1.71/0.99  --abstr_ref_until_sat                   false
% 1.71/0.99  --abstr_ref_sig_restrict                funpre
% 1.71/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.71/0.99  --abstr_ref_under                       []
% 1.71/0.99  
% 1.71/0.99  ------ SAT Options
% 1.71/0.99  
% 1.71/0.99  --sat_mode                              false
% 1.71/0.99  --sat_fm_restart_options                ""
% 1.71/0.99  --sat_gr_def                            false
% 1.71/0.99  --sat_epr_types                         true
% 1.71/0.99  --sat_non_cyclic_types                  false
% 1.71/0.99  --sat_finite_models                     false
% 1.71/0.99  --sat_fm_lemmas                         false
% 1.71/0.99  --sat_fm_prep                           false
% 1.71/0.99  --sat_fm_uc_incr                        true
% 1.71/0.99  --sat_out_model                         small
% 1.71/0.99  --sat_out_clauses                       false
% 1.71/0.99  
% 1.71/0.99  ------ QBF Options
% 1.71/0.99  
% 1.71/0.99  --qbf_mode                              false
% 1.71/0.99  --qbf_elim_univ                         false
% 1.71/0.99  --qbf_dom_inst                          none
% 1.71/0.99  --qbf_dom_pre_inst                      false
% 1.71/0.99  --qbf_sk_in                             false
% 1.71/0.99  --qbf_pred_elim                         true
% 1.71/0.99  --qbf_split                             512
% 1.71/0.99  
% 1.71/0.99  ------ BMC1 Options
% 1.71/0.99  
% 1.71/0.99  --bmc1_incremental                      false
% 1.71/0.99  --bmc1_axioms                           reachable_all
% 1.71/0.99  --bmc1_min_bound                        0
% 1.71/0.99  --bmc1_max_bound                        -1
% 1.71/0.99  --bmc1_max_bound_default                -1
% 1.71/0.99  --bmc1_symbol_reachability              true
% 1.71/0.99  --bmc1_property_lemmas                  false
% 1.71/0.99  --bmc1_k_induction                      false
% 1.71/0.99  --bmc1_non_equiv_states                 false
% 1.71/0.99  --bmc1_deadlock                         false
% 1.71/0.99  --bmc1_ucm                              false
% 1.71/0.99  --bmc1_add_unsat_core                   none
% 1.71/0.99  --bmc1_unsat_core_children              false
% 1.71/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.71/0.99  --bmc1_out_stat                         full
% 1.71/0.99  --bmc1_ground_init                      false
% 1.71/0.99  --bmc1_pre_inst_next_state              false
% 1.71/0.99  --bmc1_pre_inst_state                   false
% 1.71/0.99  --bmc1_pre_inst_reach_state             false
% 1.71/0.99  --bmc1_out_unsat_core                   false
% 1.71/0.99  --bmc1_aig_witness_out                  false
% 1.71/0.99  --bmc1_verbose                          false
% 1.71/0.99  --bmc1_dump_clauses_tptp                false
% 1.71/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.71/0.99  --bmc1_dump_file                        -
% 1.71/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.71/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.71/0.99  --bmc1_ucm_extend_mode                  1
% 1.71/0.99  --bmc1_ucm_init_mode                    2
% 1.71/0.99  --bmc1_ucm_cone_mode                    none
% 1.71/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.71/0.99  --bmc1_ucm_relax_model                  4
% 1.71/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.71/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.71/0.99  --bmc1_ucm_layered_model                none
% 1.71/0.99  --bmc1_ucm_max_lemma_size               10
% 1.71/0.99  
% 1.71/0.99  ------ AIG Options
% 1.71/0.99  
% 1.71/0.99  --aig_mode                              false
% 1.71/0.99  
% 1.71/0.99  ------ Instantiation Options
% 1.71/0.99  
% 1.71/0.99  --instantiation_flag                    true
% 1.71/0.99  --inst_sos_flag                         false
% 1.71/0.99  --inst_sos_phase                        true
% 1.71/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.71/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.71/0.99  --inst_lit_sel_side                     none
% 1.71/0.99  --inst_solver_per_active                1400
% 1.71/0.99  --inst_solver_calls_frac                1.
% 1.71/0.99  --inst_passive_queue_type               priority_queues
% 1.71/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.71/0.99  --inst_passive_queues_freq              [25;2]
% 1.71/0.99  --inst_dismatching                      true
% 1.71/0.99  --inst_eager_unprocessed_to_passive     true
% 1.71/0.99  --inst_prop_sim_given                   true
% 1.71/0.99  --inst_prop_sim_new                     false
% 1.71/0.99  --inst_subs_new                         false
% 1.71/0.99  --inst_eq_res_simp                      false
% 1.71/0.99  --inst_subs_given                       false
% 1.71/0.99  --inst_orphan_elimination               true
% 1.71/0.99  --inst_learning_loop_flag               true
% 1.71/0.99  --inst_learning_start                   3000
% 1.71/0.99  --inst_learning_factor                  2
% 1.71/0.99  --inst_start_prop_sim_after_learn       3
% 1.71/0.99  --inst_sel_renew                        solver
% 1.71/0.99  --inst_lit_activity_flag                true
% 1.71/0.99  --inst_restr_to_given                   false
% 1.71/0.99  --inst_activity_threshold               500
% 1.71/0.99  --inst_out_proof                        true
% 1.71/0.99  
% 1.71/0.99  ------ Resolution Options
% 1.71/0.99  
% 1.71/0.99  --resolution_flag                       false
% 1.71/0.99  --res_lit_sel                           adaptive
% 1.71/0.99  --res_lit_sel_side                      none
% 1.71/0.99  --res_ordering                          kbo
% 1.71/0.99  --res_to_prop_solver                    active
% 1.71/0.99  --res_prop_simpl_new                    false
% 1.71/0.99  --res_prop_simpl_given                  true
% 1.71/0.99  --res_passive_queue_type                priority_queues
% 1.71/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.71/0.99  --res_passive_queues_freq               [15;5]
% 1.71/0.99  --res_forward_subs                      full
% 1.71/0.99  --res_backward_subs                     full
% 1.71/0.99  --res_forward_subs_resolution           true
% 1.71/0.99  --res_backward_subs_resolution          true
% 1.71/0.99  --res_orphan_elimination                true
% 1.71/0.99  --res_time_limit                        2.
% 1.71/0.99  --res_out_proof                         true
% 1.71/0.99  
% 1.71/0.99  ------ Superposition Options
% 1.71/0.99  
% 1.71/0.99  --superposition_flag                    true
% 1.71/0.99  --sup_passive_queue_type                priority_queues
% 1.71/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.71/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.71/0.99  --demod_completeness_check              fast
% 1.71/0.99  --demod_use_ground                      true
% 1.71/0.99  --sup_to_prop_solver                    passive
% 1.71/0.99  --sup_prop_simpl_new                    true
% 1.71/0.99  --sup_prop_simpl_given                  true
% 1.71/0.99  --sup_fun_splitting                     false
% 1.71/0.99  --sup_smt_interval                      50000
% 1.71/0.99  
% 1.71/0.99  ------ Superposition Simplification Setup
% 1.71/0.99  
% 1.71/0.99  --sup_indices_passive                   []
% 1.71/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.71/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.71/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.99  --sup_full_bw                           [BwDemod]
% 1.71/0.99  --sup_immed_triv                        [TrivRules]
% 1.71/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.71/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.99  --sup_immed_bw_main                     []
% 1.71/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.71/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.71/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.71/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.71/0.99  
% 1.71/0.99  ------ Combination Options
% 1.71/0.99  
% 1.71/0.99  --comb_res_mult                         3
% 1.71/0.99  --comb_sup_mult                         2
% 1.71/0.99  --comb_inst_mult                        10
% 1.71/0.99  
% 1.71/0.99  ------ Debug Options
% 1.71/0.99  
% 1.71/0.99  --dbg_backtrace                         false
% 1.71/0.99  --dbg_dump_prop_clauses                 false
% 1.71/0.99  --dbg_dump_prop_clauses_file            -
% 1.71/0.99  --dbg_out_stat                          false
% 1.71/0.99  
% 1.71/0.99  
% 1.71/0.99  
% 1.71/0.99  
% 1.71/0.99  ------ Proving...
% 1.71/0.99  
% 1.71/0.99  
% 1.71/0.99  % SZS status Theorem for theBenchmark.p
% 1.71/0.99  
% 1.71/0.99   Resolution empty clause
% 1.71/0.99  
% 1.71/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.71/0.99  
% 1.71/0.99  fof(f12,conjecture,(
% 1.71/0.99    ! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0))) & v1_funct_2(X2,k1_xboole_0,X0) & v1_funct_1(X2)) => k1_xboole_0 = k8_relset_1(k1_xboole_0,X0,X2,X1))),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f13,negated_conjecture,(
% 1.71/0.99    ~! [X0,X1,X2] : ((m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0))) & v1_funct_2(X2,k1_xboole_0,X0) & v1_funct_1(X2)) => k1_xboole_0 = k8_relset_1(k1_xboole_0,X0,X2,X1))),
% 1.71/0.99    inference(negated_conjecture,[],[f12])).
% 1.71/0.99  
% 1.71/0.99  fof(f24,plain,(
% 1.71/0.99    ? [X0,X1,X2] : (k1_xboole_0 != k8_relset_1(k1_xboole_0,X0,X2,X1) & (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0))) & v1_funct_2(X2,k1_xboole_0,X0) & v1_funct_1(X2)))),
% 1.71/0.99    inference(ennf_transformation,[],[f13])).
% 1.71/0.99  
% 1.71/0.99  fof(f25,plain,(
% 1.71/0.99    ? [X0,X1,X2] : (k1_xboole_0 != k8_relset_1(k1_xboole_0,X0,X2,X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0))) & v1_funct_2(X2,k1_xboole_0,X0) & v1_funct_1(X2))),
% 1.71/0.99    inference(flattening,[],[f24])).
% 1.71/0.99  
% 1.71/0.99  fof(f31,plain,(
% 1.71/0.99    ? [X0,X1,X2] : (k1_xboole_0 != k8_relset_1(k1_xboole_0,X0,X2,X1) & m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0))) & v1_funct_2(X2,k1_xboole_0,X0) & v1_funct_1(X2)) => (k1_xboole_0 != k8_relset_1(k1_xboole_0,sK1,sK3,sK2) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1))) & v1_funct_2(sK3,k1_xboole_0,sK1) & v1_funct_1(sK3))),
% 1.71/0.99    introduced(choice_axiom,[])).
% 1.71/0.99  
% 1.71/0.99  fof(f32,plain,(
% 1.71/0.99    k1_xboole_0 != k8_relset_1(k1_xboole_0,sK1,sK3,sK2) & m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1))) & v1_funct_2(sK3,k1_xboole_0,sK1) & v1_funct_1(sK3)),
% 1.71/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2,sK3])],[f25,f31])).
% 1.71/0.99  
% 1.71/0.99  fof(f54,plain,(
% 1.71/0.99    m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1)))),
% 1.71/0.99    inference(cnf_transformation,[],[f32])).
% 1.71/0.99  
% 1.71/0.99  fof(f3,axiom,(
% 1.71/0.99    ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) <=> (k1_xboole_0 = X1 | k1_xboole_0 = X0))),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f28,plain,(
% 1.71/0.99    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & ((k1_xboole_0 = X1 | k1_xboole_0 = X0) | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 1.71/0.99    inference(nnf_transformation,[],[f3])).
% 1.71/0.99  
% 1.71/0.99  fof(f29,plain,(
% 1.71/0.99    ! [X0,X1] : ((k1_xboole_0 = k2_zfmisc_1(X0,X1) | (k1_xboole_0 != X1 & k1_xboole_0 != X0)) & (k1_xboole_0 = X1 | k1_xboole_0 = X0 | k1_xboole_0 != k2_zfmisc_1(X0,X1)))),
% 1.71/0.99    inference(flattening,[],[f28])).
% 1.71/0.99  
% 1.71/0.99  fof(f36,plain,(
% 1.71/0.99    ( ! [X0,X1] : (k1_xboole_0 = k2_zfmisc_1(X0,X1) | k1_xboole_0 != X0) )),
% 1.71/0.99    inference(cnf_transformation,[],[f29])).
% 1.71/0.99  
% 1.71/0.99  fof(f57,plain,(
% 1.71/0.99    ( ! [X1] : (k1_xboole_0 = k2_zfmisc_1(k1_xboole_0,X1)) )),
% 1.71/0.99    inference(equality_resolution,[],[f36])).
% 1.71/0.99  
% 1.71/0.99  fof(f5,axiom,(
% 1.71/0.99    ! [X0] : (v1_xboole_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_xboole_0(X1)))),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f16,plain,(
% 1.71/0.99    ! [X0] : (! [X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_xboole_0(X0))),
% 1.71/0.99    inference(ennf_transformation,[],[f5])).
% 1.71/0.99  
% 1.71/0.99  fof(f39,plain,(
% 1.71/0.99    ( ! [X0,X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_xboole_0(X0)) )),
% 1.71/0.99    inference(cnf_transformation,[],[f16])).
% 1.71/0.99  
% 1.71/0.99  fof(f2,axiom,(
% 1.71/0.99    ? [X0] : v1_xboole_0(X0)),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f26,plain,(
% 1.71/0.99    ? [X0] : v1_xboole_0(X0) => v1_xboole_0(sK0)),
% 1.71/0.99    introduced(choice_axiom,[])).
% 1.71/0.99  
% 1.71/0.99  fof(f27,plain,(
% 1.71/0.99    v1_xboole_0(sK0)),
% 1.71/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f2,f26])).
% 1.71/0.99  
% 1.71/0.99  fof(f34,plain,(
% 1.71/0.99    v1_xboole_0(sK0)),
% 1.71/0.99    inference(cnf_transformation,[],[f27])).
% 1.71/0.99  
% 1.71/0.99  fof(f1,axiom,(
% 1.71/0.99    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f15,plain,(
% 1.71/0.99    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 1.71/0.99    inference(ennf_transformation,[],[f1])).
% 1.71/0.99  
% 1.71/0.99  fof(f33,plain,(
% 1.71/0.99    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 1.71/0.99    inference(cnf_transformation,[],[f15])).
% 1.71/0.99  
% 1.71/0.99  fof(f11,axiom,(
% 1.71/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((k1_xboole_0 = X1 => ((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0)) & ((k1_xboole_0 = X1 => k1_xboole_0 = X0) => (v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0))))),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f22,plain,(
% 1.71/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0) | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.71/0.99    inference(ennf_transformation,[],[f11])).
% 1.71/0.99  
% 1.71/0.99  fof(f23,plain,(
% 1.71/0.99    ! [X0,X1,X2] : ((((v1_funct_2(X2,X0,X1) <=> k1_xboole_0 = X2) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & ((v1_funct_2(X2,X0,X1) <=> k1_relset_1(X0,X1,X2) = X0) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.71/0.99    inference(flattening,[],[f22])).
% 1.71/0.99  
% 1.71/0.99  fof(f30,plain,(
% 1.71/0.99    ! [X0,X1,X2] : (((((v1_funct_2(X2,X0,X1) | k1_xboole_0 != X2) & (k1_xboole_0 = X2 | ~v1_funct_2(X2,X0,X1))) | k1_xboole_0 = X0 | k1_xboole_0 != X1) & (((v1_funct_2(X2,X0,X1) | k1_relset_1(X0,X1,X2) != X0) & (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1))) | (k1_xboole_0 != X0 & k1_xboole_0 = X1))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.71/0.99    inference(nnf_transformation,[],[f23])).
% 1.71/0.99  
% 1.71/0.99  fof(f46,plain,(
% 1.71/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.71/0.99    inference(cnf_transformation,[],[f30])).
% 1.71/0.99  
% 1.71/0.99  fof(f10,axiom,(
% 1.71/0.99    ! [X0,X1] : (v1_xboole_0(X0) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => v1_partfun1(X2,X0)))),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f21,plain,(
% 1.71/0.99    ! [X0,X1] : (! [X2] : (v1_partfun1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) | ~v1_xboole_0(X0))),
% 1.71/0.99    inference(ennf_transformation,[],[f10])).
% 1.71/0.99  
% 1.71/0.99  fof(f45,plain,(
% 1.71/0.99    ( ! [X2,X0,X1] : (v1_partfun1(X2,X0) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) | ~v1_xboole_0(X0)) )),
% 1.71/0.99    inference(cnf_transformation,[],[f21])).
% 1.71/0.99  
% 1.71/0.99  fof(f9,axiom,(
% 1.71/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => ((v1_partfun1(X2,X0) & v1_funct_1(X2)) => (v1_funct_2(X2,X0,X1) & v1_funct_1(X2))))),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f19,plain,(
% 1.71/0.99    ! [X0,X1,X2] : (((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) | (~v1_partfun1(X2,X0) | ~v1_funct_1(X2))) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.71/0.99    inference(ennf_transformation,[],[f9])).
% 1.71/0.99  
% 1.71/0.99  fof(f20,plain,(
% 1.71/0.99    ! [X0,X1,X2] : ((v1_funct_2(X2,X0,X1) & v1_funct_1(X2)) | ~v1_partfun1(X2,X0) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.71/0.99    inference(flattening,[],[f19])).
% 1.71/0.99  
% 1.71/0.99  fof(f44,plain,(
% 1.71/0.99    ( ! [X2,X0,X1] : (v1_funct_2(X2,X0,X1) | ~v1_partfun1(X2,X0) | ~v1_funct_1(X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.71/0.99    inference(cnf_transformation,[],[f20])).
% 1.71/0.99  
% 1.71/0.99  fof(f52,plain,(
% 1.71/0.99    v1_funct_1(sK3)),
% 1.71/0.99    inference(cnf_transformation,[],[f32])).
% 1.71/0.99  
% 1.71/0.99  fof(f47,plain,(
% 1.71/0.99    ( ! [X2,X0,X1] : (k1_relset_1(X0,X1,X2) = X0 | ~v1_funct_2(X2,X0,X1) | k1_xboole_0 != X0 | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.71/0.99    inference(cnf_transformation,[],[f30])).
% 1.71/0.99  
% 1.71/0.99  fof(f62,plain,(
% 1.71/0.99    ( ! [X2,X1] : (k1_xboole_0 = k1_relset_1(k1_xboole_0,X1,X2) | ~v1_funct_2(X2,k1_xboole_0,X1) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))) )),
% 1.71/0.99    inference(equality_resolution,[],[f47])).
% 1.71/0.99  
% 1.71/0.99  fof(f4,axiom,(
% 1.71/0.99    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f38,plain,(
% 1.71/0.99    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 1.71/0.99    inference(cnf_transformation,[],[f4])).
% 1.71/0.99  
% 1.71/0.99  fof(f8,axiom,(
% 1.71/0.99    ! [X0,X1,X2] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => (k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)))),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f18,plain,(
% 1.71/0.99    ! [X0,X1,X2] : ((k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) & k7_relset_1(X0,X1,X2,X0) = k2_relset_1(X0,X1,X2)) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.71/0.99    inference(ennf_transformation,[],[f8])).
% 1.71/0.99  
% 1.71/0.99  fof(f42,plain,(
% 1.71/0.99    ( ! [X2,X0,X1] : (k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.71/0.99    inference(cnf_transformation,[],[f18])).
% 1.71/0.99  
% 1.71/0.99  fof(f7,axiom,(
% 1.71/0.99    ! [X0,X1,X2,X3] : (m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) => k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3))),
% 1.71/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.71/0.99  
% 1.71/0.99  fof(f17,plain,(
% 1.71/0.99    ! [X0,X1,X2,X3] : (k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))))),
% 1.71/0.99    inference(ennf_transformation,[],[f7])).
% 1.71/0.99  
% 1.71/0.99  fof(f40,plain,(
% 1.71/0.99    ( ! [X2,X0,X3,X1] : (k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3) | ~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))) )),
% 1.71/0.99    inference(cnf_transformation,[],[f17])).
% 1.71/0.99  
% 1.71/0.99  fof(f55,plain,(
% 1.71/0.99    k1_xboole_0 != k8_relset_1(k1_xboole_0,sK1,sK3,sK2)),
% 1.71/0.99    inference(cnf_transformation,[],[f32])).
% 1.71/0.99  
% 1.71/0.99  cnf(c_20,negated_conjecture,
% 1.71/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1))) ),
% 1.71/0.99      inference(cnf_transformation,[],[f54]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_648,plain,
% 1.71/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,sK1))) = iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_20]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_3,plain,
% 1.71/0.99      ( k2_zfmisc_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 1.71/0.99      inference(cnf_transformation,[],[f57]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_666,plain,
% 1.71/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 1.71/0.99      inference(demodulation,[status(thm)],[c_648,c_3]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_6,plain,
% 1.71/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.71/0.99      | ~ v1_xboole_0(X1)
% 1.71/0.99      | v1_xboole_0(X0) ),
% 1.71/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_652,plain,
% 1.71/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 1.71/0.99      | v1_xboole_0(X1) != iProver_top
% 1.71/0.99      | v1_xboole_0(X0) = iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_962,plain,
% 1.71/0.99      ( v1_xboole_0(sK3) = iProver_top
% 1.71/0.99      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 1.71/0.99      inference(superposition,[status(thm)],[c_666,c_652]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1,plain,( v1_xboole_0(sK0) ),inference(cnf_transformation,[],[f34]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_66,plain,
% 1.71/0.99      ( v1_xboole_0(sK0) = iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_422,plain,
% 1.71/0.99      ( ~ v1_xboole_0(X0) | v1_xboole_0(X1) | X1 != X0 ),
% 1.71/0.99      theory(equality) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_810,plain,
% 1.71/0.99      ( v1_xboole_0(X0) | ~ v1_xboole_0(sK0) | X0 != sK0 ),
% 1.71/0.99      inference(instantiation,[status(thm)],[c_422]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_811,plain,
% 1.71/0.99      ( X0 != sK0
% 1.71/0.99      | v1_xboole_0(X0) = iProver_top
% 1.71/0.99      | v1_xboole_0(sK0) != iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_810]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_813,plain,
% 1.71/0.99      ( k1_xboole_0 != sK0
% 1.71/0.99      | v1_xboole_0(sK0) != iProver_top
% 1.71/0.99      | v1_xboole_0(k1_xboole_0) = iProver_top ),
% 1.71/0.99      inference(instantiation,[status(thm)],[c_811]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_0,plain,
% 1.71/0.99      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 1.71/0.99      inference(cnf_transformation,[],[f33]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_971,plain,
% 1.71/0.99      ( ~ v1_xboole_0(sK0) | k1_xboole_0 = sK0 ),
% 1.71/0.99      inference(instantiation,[status(thm)],[c_0]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1087,plain,
% 1.71/0.99      ( v1_xboole_0(sK3) = iProver_top ),
% 1.71/0.99      inference(global_propositional_subsumption,
% 1.71/0.99                [status(thm)],
% 1.71/0.99                [c_962,c_1,c_66,c_813,c_971]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_655,plain,
% 1.71/0.99      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1105,plain,
% 1.71/0.99      ( sK3 = k1_xboole_0 ),
% 1.71/0.99      inference(superposition,[status(thm)],[c_1087,c_655]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_18,plain,
% 1.71/0.99      ( ~ v1_funct_2(X0,X1,X2)
% 1.71/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.71/0.99      | k1_relset_1(X1,X2,X0) = X1
% 1.71/0.99      | k1_xboole_0 = X2 ),
% 1.71/0.99      inference(cnf_transformation,[],[f46]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_12,plain,
% 1.71/0.99      ( v1_partfun1(X0,X1)
% 1.71/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.71/0.99      | ~ v1_xboole_0(X1) ),
% 1.71/0.99      inference(cnf_transformation,[],[f45]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_10,plain,
% 1.71/0.99      ( v1_funct_2(X0,X1,X2)
% 1.71/0.99      | ~ v1_partfun1(X0,X1)
% 1.71/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.71/0.99      | ~ v1_funct_1(X0) ),
% 1.71/0.99      inference(cnf_transformation,[],[f44]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_22,negated_conjecture,
% 1.71/0.99      ( v1_funct_1(sK3) ),
% 1.71/0.99      inference(cnf_transformation,[],[f52]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_213,plain,
% 1.71/0.99      ( v1_funct_2(X0,X1,X2)
% 1.71/0.99      | ~ v1_partfun1(X0,X1)
% 1.71/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.71/0.99      | sK3 != X0 ),
% 1.71/0.99      inference(resolution_lifted,[status(thm)],[c_10,c_22]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_214,plain,
% 1.71/0.99      ( v1_funct_2(sK3,X0,X1)
% 1.71/0.99      | ~ v1_partfun1(sK3,X0)
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) ),
% 1.71/0.99      inference(unflattening,[status(thm)],[c_213]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_232,plain,
% 1.71/0.99      ( v1_funct_2(sK3,X0,X1)
% 1.71/0.99      | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.71/0.99      | ~ v1_xboole_0(X3)
% 1.71/0.99      | X0 != X3
% 1.71/0.99      | sK3 != X2 ),
% 1.71/0.99      inference(resolution_lifted,[status(thm)],[c_12,c_214]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_233,plain,
% 1.71/0.99      ( v1_funct_2(sK3,X0,X1)
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.71/0.99      | ~ v1_xboole_0(X0) ),
% 1.71/0.99      inference(unflattening,[status(thm)],[c_232]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_276,plain,
% 1.71/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X3,X5)))
% 1.71/0.99      | ~ v1_xboole_0(X3)
% 1.71/0.99      | X3 != X1
% 1.71/0.99      | X4 != X2
% 1.71/0.99      | k1_relset_1(X1,X2,X0) = X1
% 1.71/0.99      | sK3 != X0
% 1.71/0.99      | k1_xboole_0 = X2 ),
% 1.71/0.99      inference(resolution_lifted,[status(thm)],[c_18,c_233]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_277,plain,
% 1.71/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1)))
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X2)))
% 1.71/0.99      | ~ v1_xboole_0(X0)
% 1.71/0.99      | k1_relset_1(X0,X1,sK3) = X0
% 1.71/0.99      | k1_xboole_0 = X1 ),
% 1.71/0.99      inference(unflattening,[status(thm)],[c_276]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_647,plain,
% 1.71/0.99      ( k1_relset_1(X0,X1,sK3) = X0
% 1.71/0.99      | k1_xboole_0 = X1
% 1.71/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top
% 1.71/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X0,X2))) != iProver_top
% 1.71/0.99      | v1_xboole_0(X0) != iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_277]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1030,plain,
% 1.71/0.99      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
% 1.71/0.99      | k1_xboole_0 = X0
% 1.71/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1))) != iProver_top
% 1.71/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 1.71/0.99      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 1.71/0.99      inference(superposition,[status(thm)],[c_3,c_647]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1031,plain,
% 1.71/0.99      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
% 1.71/0.99      | k1_xboole_0 = X0
% 1.71/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 1.71/0.99      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 1.71/0.99      inference(demodulation,[status(thm)],[c_1030,c_3]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_17,plain,
% 1.71/0.99      ( ~ v1_funct_2(X0,k1_xboole_0,X1)
% 1.71/0.99      | ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 1.71/0.99      | k1_relset_1(k1_xboole_0,X1,X0) = k1_xboole_0 ),
% 1.71/0.99      inference(cnf_transformation,[],[f62]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_313,plain,
% 1.71/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(X2,X4)))
% 1.71/0.99      | ~ v1_xboole_0(X2)
% 1.71/0.99      | X4 != X1
% 1.71/0.99      | k1_relset_1(k1_xboole_0,X1,X0) = k1_xboole_0
% 1.71/0.99      | sK3 != X0
% 1.71/0.99      | k1_xboole_0 != X2 ),
% 1.71/0.99      inference(resolution_lifted,[status(thm)],[c_17,c_233]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_314,plain,
% 1.71/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
% 1.71/0.99      | ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X1)))
% 1.71/0.99      | ~ v1_xboole_0(k1_xboole_0)
% 1.71/0.99      | k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0 ),
% 1.71/0.99      inference(unflattening,[status(thm)],[c_313]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_418,plain,
% 1.71/0.99      ( ~ v1_xboole_0(k1_xboole_0) | sP1_iProver_split | sP0_iProver_split ),
% 1.71/0.99      inference(splitting,
% 1.71/0.99                [splitting(split),new_symbols(definition,[])],
% 1.71/0.99                [c_314]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_416,plain,
% 1.71/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
% 1.71/0.99      | ~ sP0_iProver_split ),
% 1.71/0.99      inference(splitting,
% 1.71/0.99                [splitting(split),new_symbols(definition,[sP0_iProver_split])],
% 1.71/0.99                [c_314]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_646,plain,
% 1.71/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0))) != iProver_top
% 1.71/0.99      | sP0_iProver_split != iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_416]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_681,plain,
% 1.71/0.99      ( m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 1.71/0.99      | sP0_iProver_split != iProver_top ),
% 1.71/0.99      inference(light_normalisation,[status(thm)],[c_646,c_3]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_684,plain,
% 1.71/0.99      ( sP0_iProver_split != iProver_top ),
% 1.71/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_681,c_666]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_737,plain,
% 1.71/0.99      ( ~ sP0_iProver_split ),
% 1.71/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_684]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_417,plain,
% 1.71/0.99      ( ~ m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0)))
% 1.71/0.99      | k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
% 1.71/0.99      | ~ sP1_iProver_split ),
% 1.71/0.99      inference(splitting,
% 1.71/0.99                [splitting(split),new_symbols(definition,[sP1_iProver_split])],
% 1.71/0.99                [c_314]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_645,plain,
% 1.71/0.99      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
% 1.71/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k2_zfmisc_1(k1_xboole_0,X0))) != iProver_top
% 1.71/0.99      | sP1_iProver_split != iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_417]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_715,plain,
% 1.71/0.99      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
% 1.71/0.99      | m1_subset_1(sK3,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 1.71/0.99      | sP1_iProver_split != iProver_top ),
% 1.71/0.99      inference(light_normalisation,[status(thm)],[c_645,c_3]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_719,plain,
% 1.71/0.99      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0
% 1.71/0.99      | sP1_iProver_split != iProver_top ),
% 1.71/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_715,c_666]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_738,plain,
% 1.71/0.99      ( ~ sP1_iProver_split | k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0 ),
% 1.71/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_719]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_812,plain,
% 1.71/0.99      ( ~ v1_xboole_0(sK0) | v1_xboole_0(k1_xboole_0) | k1_xboole_0 != sK0 ),
% 1.71/0.99      inference(instantiation,[status(thm)],[c_810]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1097,plain,
% 1.71/0.99      ( k1_relset_1(k1_xboole_0,X0,sK3) = k1_xboole_0 ),
% 1.71/0.99      inference(global_propositional_subsumption,
% 1.71/0.99                [status(thm)],
% 1.71/0.99                [c_1031,c_1,c_418,c_737,c_738,c_812,c_971]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1181,plain,
% 1.71/0.99      ( k1_relset_1(k1_xboole_0,X0,k1_xboole_0) = k1_xboole_0 ),
% 1.71/0.99      inference(demodulation,[status(thm)],[c_1105,c_1097]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_5,plain,
% 1.71/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 1.71/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_653,plain,
% 1.71/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_8,plain,
% 1.71/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.71/0.99      | k8_relset_1(X1,X2,X0,X2) = k1_relset_1(X1,X2,X0) ),
% 1.71/0.99      inference(cnf_transformation,[],[f42]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_650,plain,
% 1.71/0.99      ( k8_relset_1(X0,X1,X2,X1) = k1_relset_1(X0,X1,X2)
% 1.71/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1965,plain,
% 1.71/0.99      ( k8_relset_1(X0,X1,k1_xboole_0,X1) = k1_relset_1(X0,X1,k1_xboole_0) ),
% 1.71/0.99      inference(superposition,[status(thm)],[c_653,c_650]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_7,plain,
% 1.71/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
% 1.71/0.99      | k8_relset_1(X1,X2,X0,X3) = k10_relat_1(X0,X3) ),
% 1.71/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_651,plain,
% 1.71/0.99      ( k8_relset_1(X0,X1,X2,X3) = k10_relat_1(X2,X3)
% 1.71/0.99      | m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 1.71/0.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1397,plain,
% 1.71/0.99      ( k8_relset_1(X0,X1,k1_xboole_0,X2) = k10_relat_1(k1_xboole_0,X2) ),
% 1.71/0.99      inference(superposition,[status(thm)],[c_653,c_651]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1977,plain,
% 1.71/0.99      ( k1_relset_1(X0,X1,k1_xboole_0) = k10_relat_1(k1_xboole_0,X1) ),
% 1.71/0.99      inference(demodulation,[status(thm)],[c_1965,c_1397]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_2045,plain,
% 1.71/0.99      ( k10_relat_1(k1_xboole_0,X0) = k1_xboole_0 ),
% 1.71/0.99      inference(superposition,[status(thm)],[c_1181,c_1977]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_19,negated_conjecture,
% 1.71/0.99      ( k1_xboole_0 != k8_relset_1(k1_xboole_0,sK1,sK3,sK2) ),
% 1.71/0.99      inference(cnf_transformation,[],[f55]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1186,plain,
% 1.71/0.99      ( k8_relset_1(k1_xboole_0,sK1,k1_xboole_0,sK2) != k1_xboole_0 ),
% 1.71/0.99      inference(demodulation,[status(thm)],[c_1105,c_19]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_1752,plain,
% 1.71/0.99      ( k10_relat_1(k1_xboole_0,sK2) != k1_xboole_0 ),
% 1.71/0.99      inference(demodulation,[status(thm)],[c_1397,c_1186]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_2051,plain,
% 1.71/0.99      ( k1_xboole_0 != k1_xboole_0 ),
% 1.71/0.99      inference(demodulation,[status(thm)],[c_2045,c_1752]) ).
% 1.71/0.99  
% 1.71/0.99  cnf(c_2052,plain,
% 1.71/0.99      ( $false ),
% 1.71/0.99      inference(equality_resolution_simp,[status(thm)],[c_2051]) ).
% 1.71/0.99  
% 1.71/0.99  
% 1.71/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.71/0.99  
% 1.71/0.99  ------                               Statistics
% 1.71/0.99  
% 1.71/0.99  ------ General
% 1.71/0.99  
% 1.71/0.99  abstr_ref_over_cycles:                  0
% 1.71/0.99  abstr_ref_under_cycles:                 0
% 1.71/0.99  gc_basic_clause_elim:                   0
% 1.71/0.99  forced_gc_time:                         0
% 1.71/0.99  parsing_time:                           0.009
% 1.71/0.99  unif_index_cands_time:                  0.
% 1.71/0.99  unif_index_add_time:                    0.
% 1.71/0.99  orderings_time:                         0.
% 1.71/0.99  out_proof_time:                         0.011
% 1.71/0.99  total_time:                             0.106
% 1.71/0.99  num_of_symbols:                         50
% 1.71/0.99  num_of_terms:                           2238
% 1.71/0.99  
% 1.71/0.99  ------ Preprocessing
% 1.71/0.99  
% 1.71/0.99  num_of_splits:                          2
% 1.71/0.99  num_of_split_atoms:                     2
% 1.71/0.99  num_of_reused_defs:                     0
% 1.71/0.99  num_eq_ax_congr_red:                    31
% 1.71/0.99  num_of_sem_filtered_clauses:            1
% 1.71/0.99  num_of_subtypes:                        0
% 1.71/0.99  monotx_restored_types:                  0
% 1.71/0.99  sat_num_of_epr_types:                   0
% 1.71/0.99  sat_num_of_non_cyclic_types:            0
% 1.71/0.99  sat_guarded_non_collapsed_types:        0
% 1.71/0.99  num_pure_diseq_elim:                    0
% 1.71/0.99  simp_replaced_by:                       0
% 1.71/0.99  res_preprocessed:                       88
% 1.71/0.99  prep_upred:                             0
% 1.71/0.99  prep_unflattend:                        39
% 1.71/0.99  smt_new_axioms:                         0
% 1.71/0.99  pred_elim_cands:                        2
% 1.71/0.99  pred_elim:                              3
% 1.71/0.99  pred_elim_cl:                           7
% 1.71/0.99  pred_elim_cycles:                       5
% 1.71/0.99  merged_defs:                            0
% 1.71/0.99  merged_defs_ncl:                        0
% 1.71/0.99  bin_hyper_res:                          0
% 1.71/0.99  prep_cycles:                            4
% 1.71/0.99  pred_elim_time:                         0.003
% 1.71/0.99  splitting_time:                         0.
% 1.71/0.99  sem_filter_time:                        0.
% 1.71/0.99  monotx_time:                            0.001
% 1.71/0.99  subtype_inf_time:                       0.
% 1.71/0.99  
% 1.71/0.99  ------ Problem properties
% 1.71/0.99  
% 1.71/0.99  clauses:                                17
% 1.71/0.99  conjectures:                            2
% 1.71/0.99  epr:                                    3
% 1.71/0.99  horn:                                   14
% 1.71/0.99  ground:                                 5
% 1.71/0.99  unary:                                  7
% 1.71/0.99  binary:                                 5
% 1.71/0.99  lits:                                   34
% 1.71/0.99  lits_eq:                                14
% 1.71/0.99  fd_pure:                                0
% 1.71/0.99  fd_pseudo:                              0
% 1.71/0.99  fd_cond:                                2
% 1.71/0.99  fd_pseudo_cond:                         0
% 1.71/0.99  ac_symbols:                             0
% 1.71/0.99  
% 1.71/0.99  ------ Propositional Solver
% 1.71/0.99  
% 1.71/0.99  prop_solver_calls:                      27
% 1.71/0.99  prop_fast_solver_calls:                 500
% 1.71/0.99  smt_solver_calls:                       0
% 1.71/0.99  smt_fast_solver_calls:                  0
% 1.71/0.99  prop_num_of_clauses:                    804
% 1.71/0.99  prop_preprocess_simplified:             3245
% 1.71/0.99  prop_fo_subsumed:                       8
% 1.71/0.99  prop_solver_time:                       0.
% 1.71/0.99  smt_solver_time:                        0.
% 1.71/0.99  smt_fast_solver_time:                   0.
% 1.71/0.99  prop_fast_solver_time:                  0.
% 1.71/0.99  prop_unsat_core_time:                   0.
% 1.71/0.99  
% 1.71/0.99  ------ QBF
% 1.71/0.99  
% 1.71/0.99  qbf_q_res:                              0
% 1.71/0.99  qbf_num_tautologies:                    0
% 1.71/0.99  qbf_prep_cycles:                        0
% 1.71/0.99  
% 1.71/0.99  ------ BMC1
% 1.71/0.99  
% 1.71/0.99  bmc1_current_bound:                     -1
% 1.71/0.99  bmc1_last_solved_bound:                 -1
% 1.71/0.99  bmc1_unsat_core_size:                   -1
% 1.71/0.99  bmc1_unsat_core_parents_size:           -1
% 1.71/0.99  bmc1_merge_next_fun:                    0
% 1.71/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.71/0.99  
% 1.71/0.99  ------ Instantiation
% 1.71/0.99  
% 1.71/0.99  inst_num_of_clauses:                    354
% 1.71/0.99  inst_num_in_passive:                    81
% 1.71/0.99  inst_num_in_active:                     161
% 1.71/0.99  inst_num_in_unprocessed:                112
% 1.71/0.99  inst_num_of_loops:                      180
% 1.71/0.99  inst_num_of_learning_restarts:          0
% 1.71/0.99  inst_num_moves_active_passive:          17
% 1.71/0.99  inst_lit_activity:                      0
% 1.71/0.99  inst_lit_activity_moves:                0
% 1.71/0.99  inst_num_tautologies:                   0
% 1.71/0.99  inst_num_prop_implied:                  0
% 1.71/0.99  inst_num_existing_simplified:           0
% 1.71/0.99  inst_num_eq_res_simplified:             0
% 1.71/0.99  inst_num_child_elim:                    0
% 1.71/0.99  inst_num_of_dismatching_blockings:      50
% 1.71/0.99  inst_num_of_non_proper_insts:           221
% 1.71/0.99  inst_num_of_duplicates:                 0
% 1.71/0.99  inst_inst_num_from_inst_to_res:         0
% 1.71/0.99  inst_dismatching_checking_time:         0.
% 1.71/0.99  
% 1.71/0.99  ------ Resolution
% 1.71/0.99  
% 1.71/0.99  res_num_of_clauses:                     0
% 1.71/0.99  res_num_in_passive:                     0
% 1.71/0.99  res_num_in_active:                      0
% 1.71/0.99  res_num_of_loops:                       92
% 1.71/0.99  res_forward_subset_subsumed:            15
% 1.71/0.99  res_backward_subset_subsumed:           1
% 1.71/0.99  res_forward_subsumed:                   0
% 1.71/0.99  res_backward_subsumed:                  0
% 1.71/0.99  res_forward_subsumption_resolution:     0
% 1.71/0.99  res_backward_subsumption_resolution:    0
% 1.71/0.99  res_clause_to_clause_subsumption:       84
% 1.71/0.99  res_orphan_elimination:                 0
% 1.71/0.99  res_tautology_del:                      26
% 1.71/0.99  res_num_eq_res_simplified:              0
% 1.71/0.99  res_num_sel_changes:                    0
% 1.71/0.99  res_moves_from_active_to_pass:          0
% 1.71/0.99  
% 1.71/0.99  ------ Superposition
% 1.71/0.99  
% 1.71/0.99  sup_time_total:                         0.
% 1.71/0.99  sup_time_generating:                    0.
% 1.71/0.99  sup_time_sim_full:                      0.
% 1.71/0.99  sup_time_sim_immed:                     0.
% 1.71/0.99  
% 1.71/0.99  sup_num_of_clauses:                     32
% 1.71/0.99  sup_num_in_active:                      21
% 1.71/0.99  sup_num_in_passive:                     11
% 1.71/0.99  sup_num_of_loops:                       35
% 1.71/0.99  sup_fw_superposition:                   22
% 1.71/0.99  sup_bw_superposition:                   6
% 1.71/0.99  sup_immediate_simplified:               6
% 1.71/0.99  sup_given_eliminated:                   0
% 1.71/0.99  comparisons_done:                       0
% 1.71/0.99  comparisons_avoided:                    2
% 1.71/0.99  
% 1.71/0.99  ------ Simplifications
% 1.71/0.99  
% 1.71/0.99  
% 1.71/0.99  sim_fw_subset_subsumed:                 1
% 1.71/0.99  sim_bw_subset_subsumed:                 1
% 1.71/0.99  sim_fw_subsumed:                        3
% 1.71/0.99  sim_bw_subsumed:                        1
% 1.71/0.99  sim_fw_subsumption_res:                 3
% 1.71/0.99  sim_bw_subsumption_res:                 1
% 1.71/0.99  sim_tautology_del:                      0
% 1.71/0.99  sim_eq_tautology_del:                   3
% 1.71/0.99  sim_eq_res_simp:                        0
% 1.71/0.99  sim_fw_demodulated:                     4
% 1.71/0.99  sim_bw_demodulated:                     13
% 1.71/0.99  sim_light_normalised:                   2
% 1.71/0.99  sim_joinable_taut:                      0
% 1.71/0.99  sim_joinable_simp:                      0
% 1.71/0.99  sim_ac_normalised:                      0
% 1.71/0.99  sim_smt_subsumption:                    0
% 1.71/0.99  
%------------------------------------------------------------------------------
