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
% DateTime   : Thu Dec  3 12:15:47 EST 2020

% Result     : Theorem 1.61s
% Output     : CNFRefutation 1.61s
% Verified   : 
% Statistics : Number of formulae       :  120 ( 450 expanded)
%              Number of clauses        :   74 ( 152 expanded)
%              Number of leaves         :   17 ( 110 expanded)
%              Depth                    :   17
%              Number of atoms          :  283 (1486 expanded)
%              Number of equality atoms :  126 ( 213 expanded)
%              Maximal formula depth    :    8 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,conjecture,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v5_tops_1(X1,X0)
           => r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0] :
        ( l1_pre_topc(X0)
       => ! [X1] :
            ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
           => ( v5_tops_1(X1,X0)
             => r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1))) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f23,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1)))
          & v5_tops_1(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f24,plain,(
    ? [X0] :
      ( ? [X1] :
          ( ~ r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1)))
          & v5_tops_1(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      & l1_pre_topc(X0) ) ),
    inference(flattening,[],[f23])).

fof(f27,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ~ r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1)))
          & v5_tops_1(X1,X0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
     => ( ~ r1_tarski(k2_tops_1(X0,sK1),k2_pre_topc(X0,k1_tops_1(X0,sK1)))
        & v5_tops_1(sK1,X0)
        & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( ~ r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1)))
            & v5_tops_1(X1,X0)
            & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
        & l1_pre_topc(X0) )
   => ( ? [X1] :
          ( ~ r1_tarski(k2_tops_1(sK0,X1),k2_pre_topc(sK0,k1_tops_1(sK0,X1)))
          & v5_tops_1(X1,sK0)
          & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0))) )
      & l1_pre_topc(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ~ r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1)))
    & v5_tops_1(sK1,sK0)
    & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    & l1_pre_topc(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f24,f27,f26])).

fof(f41,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f28])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => m1_subset_1(k1_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f20,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f19])).

fof(f37,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k1_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0)))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f40,plain,(
    l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
        & l1_pre_topc(X0) )
     => k2_pre_topc(X0,X1) = k2_pre_topc(X0,k2_pre_topc(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = k2_pre_topc(X0,k2_pre_topc(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f17,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = k2_pre_topc(X0,k2_pre_topc(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(flattening,[],[f16])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,X1) = k2_pre_topc(X0,k2_pre_topc(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f7,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => ( v5_tops_1(X1,X0)
          <=> k2_pre_topc(X0,k1_tops_1(X0,X1)) = X1 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( v5_tops_1(X1,X0)
          <=> k2_pre_topc(X0,k1_tops_1(X0,X1)) = X1 )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f25,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( ( v5_tops_1(X1,X0)
              | k2_pre_topc(X0,k1_tops_1(X0,X1)) != X1 )
            & ( k2_pre_topc(X0,k1_tops_1(X0,X1)) = X1
              | ~ v5_tops_1(X1,X0) ) )
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(nnf_transformation,[],[f18])).

fof(f35,plain,(
    ! [X0,X1] :
      ( k2_pre_topc(X0,k1_tops_1(X0,X1)) = X1
      | ~ v5_tops_1(X1,X0)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f25])).

fof(f42,plain,(
    v5_tops_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f28])).

fof(f10,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => r1_tarski(k2_tops_1(X0,k2_pre_topc(X0,X1)),k2_tops_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] :
      ( ! [X1] :
          ( r1_tarski(k2_tops_1(X0,k2_pre_topc(X0,X1)),k2_tops_1(X0,X1))
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f39,plain,(
    ! [X0,X1] :
      ( r1_tarski(k2_tops_1(X0,k2_pre_topc(X0,X1)),k2_tops_1(X0,X1))
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f9,axiom,(
    ! [X0] :
      ( l1_pre_topc(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
         => k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) )
      | ~ l1_pre_topc(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f38,plain,(
    ! [X0,X1] :
      ( k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))
      | ~ l1_pre_topc(X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f4,axiom,(
    ! [X0,X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f1,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f1])).

fof(f5,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f3,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f44,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k1_enumset1(X0,X0,X1)) ),
    inference(definition_unfolding,[],[f33,f31])).

fof(f45,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1))) ),
    inference(definition_unfolding,[],[f29,f44])).

fof(f47,plain,(
    ! [X2,X0,X1] :
      ( k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2))) = k7_subset_1(X0,X1,X2)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(definition_unfolding,[],[f32,f45])).

fof(f2,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
     => ( r1_xboole_0(X0,X2)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k4_xboole_0(X1,X2))
     => r1_tarski(X0,X1) ) ),
    inference(pure_predicate_removal,[],[f2])).

fof(f14,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,X1)
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f30,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r1_tarski(X0,k4_xboole_0(X1,X2)) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f46,plain,(
    ! [X2,X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ r1_tarski(X0,k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2)))) ) ),
    inference(definition_unfolding,[],[f30,f45])).

fof(f43,plain,(
    ~ r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_10,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_283,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(subtyping,[status(esa)],[c_10])).

cnf(c_477,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_283])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k1_tops_1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_11,negated_conjecture,
    ( l1_pre_topc(sK0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_175,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | m1_subset_1(k1_tops_1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_11])).

cnf(c_176,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | m1_subset_1(k1_tops_1(sK0,X0),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(unflattening,[status(thm)],[c_175])).

cnf(c_279,plain,
    ( ~ m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0)))
    | m1_subset_1(k1_tops_1(sK0,X0_43),k1_zfmisc_1(u1_struct_0(sK0))) ),
    inference(subtyping,[status(esa)],[c_176])).

cnf(c_480,plain,
    ( m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | m1_subset_1(k1_tops_1(sK0,X0_43),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_279])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k2_pre_topc(X1,X0)) = k2_pre_topc(X1,X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_187,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k2_pre_topc(X1,k2_pre_topc(X1,X0)) = k2_pre_topc(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_11])).

cnf(c_188,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,k2_pre_topc(sK0,X0)) = k2_pre_topc(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_187])).

cnf(c_278,plain,
    ( ~ m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0)))
    | k2_pre_topc(sK0,k2_pre_topc(sK0,X0_43)) = k2_pre_topc(sK0,X0_43) ),
    inference(subtyping,[status(esa)],[c_188])).

cnf(c_481,plain,
    ( k2_pre_topc(sK0,k2_pre_topc(sK0,X0_43)) = k2_pre_topc(sK0,X0_43)
    | m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_278])).

cnf(c_592,plain,
    ( k2_pre_topc(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,X0_43))) = k2_pre_topc(sK0,k1_tops_1(sK0,X0_43))
    | m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_480,c_481])).

cnf(c_1085,plain,
    ( k2_pre_topc(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) = k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) ),
    inference(superposition,[status(thm)],[c_477,c_592])).

cnf(c_4,plain,
    ( ~ v5_tops_1(X0,X1)
    | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k1_tops_1(X1,X0)) = X0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_9,negated_conjecture,
    ( v5_tops_1(sK1,sK0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_142,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k2_pre_topc(X1,k1_tops_1(X1,X0)) = X0
    | sK1 != X0
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_9])).

cnf(c_143,plain,
    ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
    | ~ l1_pre_topc(sK0)
    | k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) = sK1 ),
    inference(unflattening,[status(thm)],[c_142])).

cnf(c_145,plain,
    ( k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) = sK1 ),
    inference(global_propositional_subsumption,[status(thm)],[c_143,c_11,c_10])).

cnf(c_282,plain,
    ( k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) = sK1 ),
    inference(subtyping,[status(esa)],[c_145])).

cnf(c_1092,plain,
    ( k2_pre_topc(sK0,sK1) = sK1 ),
    inference(light_normalisation,[status(thm)],[c_1085,c_282])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(k2_tops_1(X1,k2_pre_topc(X1,X0)),k2_tops_1(X1,X0))
    | ~ l1_pre_topc(X1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_151,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | r1_tarski(k2_tops_1(X1,k2_pre_topc(X1,X0)),k2_tops_1(X1,X0))
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_7,c_11])).

cnf(c_152,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0)),k2_tops_1(sK0,X0)) ),
    inference(unflattening,[status(thm)],[c_151])).

cnf(c_281,plain,
    ( ~ m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0)))
    | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)),k2_tops_1(sK0,X0_43)) ),
    inference(subtyping,[status(esa)],[c_152])).

cnf(c_478,plain,
    ( m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)),k2_tops_1(sK0,X0_43)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_281])).

cnf(c_1102,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(k2_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_1092,c_478])).

cnf(c_13,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_299,plain,
    ( X0_43 != X1_43
    | k2_tops_1(X0_46,X0_43) = k2_tops_1(X0_46,X1_43) ),
    theory(equality)).

cnf(c_307,plain,
    ( k2_tops_1(sK0,sK1) = k2_tops_1(sK0,sK1)
    | sK1 != sK1 ),
    inference(instantiation,[status(thm)],[c_299])).

cnf(c_288,plain,
    ( X0_43 = X0_43 ),
    theory(equality)).

cnf(c_309,plain,
    ( sK1 = sK1 ),
    inference(instantiation,[status(thm)],[c_288])).

cnf(c_320,plain,
    ( m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)),k2_tops_1(sK0,X0_43)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_281])).

cnf(c_322,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
    | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,sK1)),k2_tops_1(sK0,sK1)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_320])).

cnf(c_292,plain,
    ( ~ r1_tarski(X0_43,X1_43)
    | r1_tarski(X2_43,X3_43)
    | X2_43 != X0_43
    | X3_43 != X1_43 ),
    theory(equality)).

cnf(c_540,plain,
    ( r1_tarski(X0_43,X1_43)
    | ~ r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X2_43)),k2_tops_1(sK0,X2_43))
    | X1_43 != k2_tops_1(sK0,X2_43)
    | X0_43 != k2_tops_1(sK0,k2_pre_topc(sK0,X2_43)) ),
    inference(instantiation,[status(thm)],[c_292])).

cnf(c_573,plain,
    ( r1_tarski(X0_43,k2_tops_1(sK0,X1_43))
    | ~ r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X1_43)),k2_tops_1(sK0,X1_43))
    | X0_43 != k2_tops_1(sK0,k2_pre_topc(sK0,X1_43))
    | k2_tops_1(sK0,X1_43) != k2_tops_1(sK0,X1_43) ),
    inference(instantiation,[status(thm)],[c_540])).

cnf(c_631,plain,
    ( r1_tarski(k2_tops_1(sK0,X0_43),k2_tops_1(sK0,X1_43))
    | ~ r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X1_43)),k2_tops_1(sK0,X1_43))
    | k2_tops_1(sK0,X1_43) != k2_tops_1(sK0,X1_43)
    | k2_tops_1(sK0,X0_43) != k2_tops_1(sK0,k2_pre_topc(sK0,X1_43)) ),
    inference(instantiation,[status(thm)],[c_573])).

cnf(c_633,plain,
    ( k2_tops_1(sK0,X0_43) != k2_tops_1(sK0,X0_43)
    | k2_tops_1(sK0,X1_43) != k2_tops_1(sK0,k2_pre_topc(sK0,X0_43))
    | r1_tarski(k2_tops_1(sK0,X1_43),k2_tops_1(sK0,X0_43)) = iProver_top
    | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)),k2_tops_1(sK0,X0_43)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_631])).

cnf(c_635,plain,
    ( k2_tops_1(sK0,sK1) != k2_tops_1(sK0,k2_pre_topc(sK0,sK1))
    | k2_tops_1(sK0,sK1) != k2_tops_1(sK0,sK1)
    | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,sK1)),k2_tops_1(sK0,sK1)) != iProver_top
    | r1_tarski(k2_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_633])).

cnf(c_291,plain,
    ( X0_43 != X1_43
    | X2_43 != X1_43
    | X2_43 = X0_43 ),
    theory(equality)).

cnf(c_580,plain,
    ( X0_43 != X1_43
    | X0_43 = k2_tops_1(sK0,X2_43)
    | k2_tops_1(sK0,X2_43) != X1_43 ),
    inference(instantiation,[status(thm)],[c_291])).

cnf(c_615,plain,
    ( X0_43 != k2_tops_1(sK0,X1_43)
    | X0_43 = k2_tops_1(sK0,X2_43)
    | k2_tops_1(sK0,X2_43) != k2_tops_1(sK0,X1_43) ),
    inference(instantiation,[status(thm)],[c_580])).

cnf(c_746,plain,
    ( k2_tops_1(sK0,X0_43) != k2_tops_1(sK0,X0_43)
    | k2_tops_1(sK0,X1_43) != k2_tops_1(sK0,X0_43)
    | k2_tops_1(sK0,X0_43) = k2_tops_1(sK0,X1_43) ),
    inference(instantiation,[status(thm)],[c_615])).

cnf(c_869,plain,
    ( k2_tops_1(sK0,X0_43) != k2_tops_1(sK0,X0_43)
    | k2_tops_1(sK0,X0_43) = k2_tops_1(sK0,k2_pre_topc(sK0,X1_43))
    | k2_tops_1(sK0,k2_pre_topc(sK0,X1_43)) != k2_tops_1(sK0,X0_43) ),
    inference(instantiation,[status(thm)],[c_746])).

cnf(c_871,plain,
    ( k2_tops_1(sK0,k2_pre_topc(sK0,sK1)) != k2_tops_1(sK0,sK1)
    | k2_tops_1(sK0,sK1) = k2_tops_1(sK0,k2_pre_topc(sK0,sK1))
    | k2_tops_1(sK0,sK1) != k2_tops_1(sK0,sK1) ),
    inference(instantiation,[status(thm)],[c_869])).

cnf(c_583,plain,
    ( X0_43 != X1_43
    | k2_tops_1(sK0,X0_43) = k2_tops_1(sK0,X1_43) ),
    inference(instantiation,[status(thm)],[c_299])).

cnf(c_1045,plain,
    ( k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)) = k2_tops_1(sK0,X1_43)
    | k2_pre_topc(sK0,X0_43) != X1_43 ),
    inference(instantiation,[status(thm)],[c_583])).

cnf(c_1046,plain,
    ( k2_tops_1(sK0,k2_pre_topc(sK0,sK1)) = k2_tops_1(sK0,sK1)
    | k2_pre_topc(sK0,sK1) != sK1 ),
    inference(instantiation,[status(thm)],[c_1045])).

cnf(c_1234,plain,
    ( r1_tarski(k2_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1102,c_13,c_307,c_309,c_322,c_635,c_871,c_1046,c_1092])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k1_tops_1(X1,X0)) = k2_tops_1(X1,X0) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_163,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
    | k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k1_tops_1(X1,X0)) = k2_tops_1(X1,X0)
    | sK0 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_11])).

cnf(c_164,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
    | k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k1_tops_1(sK0,X0)) = k2_tops_1(sK0,X0) ),
    inference(unflattening,[status(thm)],[c_163])).

cnf(c_280,plain,
    ( ~ m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0)))
    | k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0_43),k1_tops_1(sK0,X0_43)) = k2_tops_1(sK0,X0_43) ),
    inference(subtyping,[status(esa)],[c_164])).

cnf(c_479,plain,
    ( k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0_43),k1_tops_1(sK0,X0_43)) = k2_tops_1(sK0,X0_43)
    | m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_280])).

cnf(c_691,plain,
    ( k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,sK1),k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(superposition,[status(thm)],[c_477,c_479])).

cnf(c_1098,plain,
    ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
    inference(demodulation,[status(thm)],[c_1092,c_691])).

cnf(c_1,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X2))) = k7_subset_1(X1,X0,X2) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_285,plain,
    ( ~ m1_subset_1(X0_43,k1_zfmisc_1(X0_45))
    | k5_xboole_0(X0_43,k1_setfam_1(k1_enumset1(X0_43,X0_43,X1_43))) = k7_subset_1(X0_45,X0_43,X1_43) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_475,plain,
    ( k5_xboole_0(X0_43,k1_setfam_1(k1_enumset1(X0_43,X0_43,X1_43))) = k7_subset_1(X0_45,X0_43,X1_43)
    | m1_subset_1(X0_43,k1_zfmisc_1(X0_45)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_285])).

cnf(c_764,plain,
    ( k5_xboole_0(sK1,k1_setfam_1(k1_enumset1(sK1,sK1,X0_43))) = k7_subset_1(u1_struct_0(sK0),sK1,X0_43) ),
    inference(superposition,[status(thm)],[c_477,c_475])).

cnf(c_0,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(X0,k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2)))) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_286,plain,
    ( r1_tarski(X0_43,X1_43)
    | ~ r1_tarski(X0_43,k5_xboole_0(X1_43,k1_setfam_1(k1_enumset1(X1_43,X1_43,X2_43)))) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_474,plain,
    ( r1_tarski(X0_43,X1_43) = iProver_top
    | r1_tarski(X0_43,k5_xboole_0(X1_43,k1_setfam_1(k1_enumset1(X1_43,X1_43,X2_43)))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_286])).

cnf(c_864,plain,
    ( r1_tarski(X0_43,k7_subset_1(u1_struct_0(sK0),sK1,X1_43)) != iProver_top
    | r1_tarski(X0_43,sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_764,c_474])).

cnf(c_1229,plain,
    ( r1_tarski(X0_43,k2_tops_1(sK0,sK1)) != iProver_top
    | r1_tarski(X0_43,sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1098,c_864])).

cnf(c_1767,plain,
    ( r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
    inference(superposition,[status(thm)],[c_1234,c_1229])).

cnf(c_8,negated_conjecture,
    ( ~ r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_284,negated_conjecture,
    ( ~ r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_476,plain,
    ( r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_284])).

cnf(c_486,plain,
    ( r1_tarski(k2_tops_1(sK0,sK1),sK1) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_476,c_282])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1767,c_486])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.33  % Computer   : n001.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 10:18:59 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.61/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.61/0.98  
% 1.61/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.61/0.98  
% 1.61/0.98  ------  iProver source info
% 1.61/0.98  
% 1.61/0.98  git: date: 2020-06-30 10:37:57 +0100
% 1.61/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.61/0.98  git: non_committed_changes: false
% 1.61/0.98  git: last_make_outside_of_git: false
% 1.61/0.98  
% 1.61/0.98  ------ 
% 1.61/0.98  
% 1.61/0.98  ------ Input Options
% 1.61/0.98  
% 1.61/0.98  --out_options                           all
% 1.61/0.98  --tptp_safe_out                         true
% 1.61/0.98  --problem_path                          ""
% 1.61/0.98  --include_path                          ""
% 1.61/0.98  --clausifier                            res/vclausify_rel
% 1.61/0.98  --clausifier_options                    --mode clausify
% 1.61/0.98  --stdin                                 false
% 1.61/0.98  --stats_out                             all
% 1.61/0.98  
% 1.61/0.98  ------ General Options
% 1.61/0.98  
% 1.61/0.98  --fof                                   false
% 1.61/0.98  --time_out_real                         305.
% 1.61/0.98  --time_out_virtual                      -1.
% 1.61/0.98  --symbol_type_check                     false
% 1.61/0.98  --clausify_out                          false
% 1.61/0.98  --sig_cnt_out                           false
% 1.61/0.98  --trig_cnt_out                          false
% 1.61/0.98  --trig_cnt_out_tolerance                1.
% 1.61/0.98  --trig_cnt_out_sk_spl                   false
% 1.61/0.98  --abstr_cl_out                          false
% 1.61/0.98  
% 1.61/0.98  ------ Global Options
% 1.61/0.98  
% 1.61/0.98  --schedule                              default
% 1.61/0.98  --add_important_lit                     false
% 1.61/0.98  --prop_solver_per_cl                    1000
% 1.61/0.98  --min_unsat_core                        false
% 1.61/0.98  --soft_assumptions                      false
% 1.61/0.98  --soft_lemma_size                       3
% 1.61/0.98  --prop_impl_unit_size                   0
% 1.61/0.98  --prop_impl_unit                        []
% 1.61/0.98  --share_sel_clauses                     true
% 1.61/0.98  --reset_solvers                         false
% 1.61/0.98  --bc_imp_inh                            [conj_cone]
% 1.61/0.98  --conj_cone_tolerance                   3.
% 1.61/0.98  --extra_neg_conj                        none
% 1.61/0.98  --large_theory_mode                     true
% 1.61/0.98  --prolific_symb_bound                   200
% 1.61/0.98  --lt_threshold                          2000
% 1.61/0.98  --clause_weak_htbl                      true
% 1.61/0.98  --gc_record_bc_elim                     false
% 1.61/0.98  
% 1.61/0.98  ------ Preprocessing Options
% 1.61/0.98  
% 1.61/0.98  --preprocessing_flag                    true
% 1.61/0.98  --time_out_prep_mult                    0.1
% 1.61/0.98  --splitting_mode                        input
% 1.61/0.98  --splitting_grd                         true
% 1.61/0.98  --splitting_cvd                         false
% 1.61/0.98  --splitting_cvd_svl                     false
% 1.61/0.98  --splitting_nvd                         32
% 1.61/0.98  --sub_typing                            true
% 1.61/0.98  --prep_gs_sim                           true
% 1.61/0.98  --prep_unflatten                        true
% 1.61/0.98  --prep_res_sim                          true
% 1.61/0.98  --prep_upred                            true
% 1.61/0.98  --prep_sem_filter                       exhaustive
% 1.61/0.98  --prep_sem_filter_out                   false
% 1.61/0.98  --pred_elim                             true
% 1.61/0.98  --res_sim_input                         true
% 1.61/0.98  --eq_ax_congr_red                       true
% 1.61/0.98  --pure_diseq_elim                       true
% 1.61/0.98  --brand_transform                       false
% 1.61/0.98  --non_eq_to_eq                          false
% 1.61/0.98  --prep_def_merge                        true
% 1.61/0.98  --prep_def_merge_prop_impl              false
% 1.61/0.98  --prep_def_merge_mbd                    true
% 1.61/0.98  --prep_def_merge_tr_red                 false
% 1.61/0.98  --prep_def_merge_tr_cl                  false
% 1.61/0.98  --smt_preprocessing                     true
% 1.61/0.98  --smt_ac_axioms                         fast
% 1.61/0.98  --preprocessed_out                      false
% 1.61/0.98  --preprocessed_stats                    false
% 1.61/0.98  
% 1.61/0.98  ------ Abstraction refinement Options
% 1.61/0.98  
% 1.61/0.98  --abstr_ref                             []
% 1.61/0.98  --abstr_ref_prep                        false
% 1.61/0.98  --abstr_ref_until_sat                   false
% 1.61/0.98  --abstr_ref_sig_restrict                funpre
% 1.61/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.61/0.98  --abstr_ref_under                       []
% 1.61/0.98  
% 1.61/0.98  ------ SAT Options
% 1.61/0.98  
% 1.61/0.98  --sat_mode                              false
% 1.61/0.98  --sat_fm_restart_options                ""
% 1.61/0.98  --sat_gr_def                            false
% 1.61/0.98  --sat_epr_types                         true
% 1.61/0.98  --sat_non_cyclic_types                  false
% 1.61/0.98  --sat_finite_models                     false
% 1.61/0.98  --sat_fm_lemmas                         false
% 1.61/0.98  --sat_fm_prep                           false
% 1.61/0.98  --sat_fm_uc_incr                        true
% 1.61/0.98  --sat_out_model                         small
% 1.61/0.98  --sat_out_clauses                       false
% 1.61/0.98  
% 1.61/0.98  ------ QBF Options
% 1.61/0.98  
% 1.61/0.98  --qbf_mode                              false
% 1.61/0.98  --qbf_elim_univ                         false
% 1.61/0.98  --qbf_dom_inst                          none
% 1.61/0.98  --qbf_dom_pre_inst                      false
% 1.61/0.98  --qbf_sk_in                             false
% 1.61/0.98  --qbf_pred_elim                         true
% 1.61/0.98  --qbf_split                             512
% 1.61/0.98  
% 1.61/0.98  ------ BMC1 Options
% 1.61/0.98  
% 1.61/0.98  --bmc1_incremental                      false
% 1.61/0.98  --bmc1_axioms                           reachable_all
% 1.61/0.98  --bmc1_min_bound                        0
% 1.61/0.98  --bmc1_max_bound                        -1
% 1.61/0.98  --bmc1_max_bound_default                -1
% 1.61/0.98  --bmc1_symbol_reachability              true
% 1.61/0.98  --bmc1_property_lemmas                  false
% 1.61/0.98  --bmc1_k_induction                      false
% 1.61/0.98  --bmc1_non_equiv_states                 false
% 1.61/0.98  --bmc1_deadlock                         false
% 1.61/0.98  --bmc1_ucm                              false
% 1.61/0.98  --bmc1_add_unsat_core                   none
% 1.61/0.98  --bmc1_unsat_core_children              false
% 1.61/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.61/0.98  --bmc1_out_stat                         full
% 1.61/0.98  --bmc1_ground_init                      false
% 1.61/0.98  --bmc1_pre_inst_next_state              false
% 1.61/0.98  --bmc1_pre_inst_state                   false
% 1.61/0.98  --bmc1_pre_inst_reach_state             false
% 1.61/0.98  --bmc1_out_unsat_core                   false
% 1.61/0.98  --bmc1_aig_witness_out                  false
% 1.61/0.98  --bmc1_verbose                          false
% 1.61/0.98  --bmc1_dump_clauses_tptp                false
% 1.61/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.61/0.98  --bmc1_dump_file                        -
% 1.61/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.61/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.61/0.98  --bmc1_ucm_extend_mode                  1
% 1.61/0.98  --bmc1_ucm_init_mode                    2
% 1.61/0.98  --bmc1_ucm_cone_mode                    none
% 1.61/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.61/0.98  --bmc1_ucm_relax_model                  4
% 1.61/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.61/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.61/0.98  --bmc1_ucm_layered_model                none
% 1.61/0.98  --bmc1_ucm_max_lemma_size               10
% 1.61/0.98  
% 1.61/0.98  ------ AIG Options
% 1.61/0.98  
% 1.61/0.98  --aig_mode                              false
% 1.61/0.98  
% 1.61/0.98  ------ Instantiation Options
% 1.61/0.98  
% 1.61/0.98  --instantiation_flag                    true
% 1.61/0.98  --inst_sos_flag                         false
% 1.61/0.98  --inst_sos_phase                        true
% 1.61/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.61/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.61/0.98  --inst_lit_sel_side                     num_symb
% 1.61/0.98  --inst_solver_per_active                1400
% 1.61/0.98  --inst_solver_calls_frac                1.
% 1.61/0.98  --inst_passive_queue_type               priority_queues
% 1.61/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.61/0.98  --inst_passive_queues_freq              [25;2]
% 1.61/0.98  --inst_dismatching                      true
% 1.61/0.98  --inst_eager_unprocessed_to_passive     true
% 1.61/0.98  --inst_prop_sim_given                   true
% 1.61/0.98  --inst_prop_sim_new                     false
% 1.61/0.98  --inst_subs_new                         false
% 1.61/0.98  --inst_eq_res_simp                      false
% 1.61/0.98  --inst_subs_given                       false
% 1.61/0.98  --inst_orphan_elimination               true
% 1.61/0.98  --inst_learning_loop_flag               true
% 1.61/0.98  --inst_learning_start                   3000
% 1.61/0.98  --inst_learning_factor                  2
% 1.61/0.98  --inst_start_prop_sim_after_learn       3
% 1.61/0.98  --inst_sel_renew                        solver
% 1.61/0.98  --inst_lit_activity_flag                true
% 1.61/0.98  --inst_restr_to_given                   false
% 1.61/0.98  --inst_activity_threshold               500
% 1.61/0.98  --inst_out_proof                        true
% 1.61/0.98  
% 1.61/0.98  ------ Resolution Options
% 1.61/0.98  
% 1.61/0.98  --resolution_flag                       true
% 1.61/0.98  --res_lit_sel                           adaptive
% 1.61/0.98  --res_lit_sel_side                      none
% 1.61/0.98  --res_ordering                          kbo
% 1.61/0.98  --res_to_prop_solver                    active
% 1.61/0.98  --res_prop_simpl_new                    false
% 1.61/0.98  --res_prop_simpl_given                  true
% 1.61/0.98  --res_passive_queue_type                priority_queues
% 1.61/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.61/0.98  --res_passive_queues_freq               [15;5]
% 1.61/0.98  --res_forward_subs                      full
% 1.61/0.98  --res_backward_subs                     full
% 1.61/0.98  --res_forward_subs_resolution           true
% 1.61/0.98  --res_backward_subs_resolution          true
% 1.61/0.98  --res_orphan_elimination                true
% 1.61/0.98  --res_time_limit                        2.
% 1.61/0.98  --res_out_proof                         true
% 1.61/0.98  
% 1.61/0.98  ------ Superposition Options
% 1.61/0.98  
% 1.61/0.98  --superposition_flag                    true
% 1.61/0.98  --sup_passive_queue_type                priority_queues
% 1.61/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.61/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.61/0.98  --demod_completeness_check              fast
% 1.61/0.98  --demod_use_ground                      true
% 1.61/0.98  --sup_to_prop_solver                    passive
% 1.61/0.98  --sup_prop_simpl_new                    true
% 1.61/0.98  --sup_prop_simpl_given                  true
% 1.61/0.98  --sup_fun_splitting                     false
% 1.61/0.98  --sup_smt_interval                      50000
% 1.61/0.98  
% 1.61/0.98  ------ Superposition Simplification Setup
% 1.61/0.98  
% 1.61/0.98  --sup_indices_passive                   []
% 1.61/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.61/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.98  --sup_full_bw                           [BwDemod]
% 1.61/0.98  --sup_immed_triv                        [TrivRules]
% 1.61/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.61/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.98  --sup_immed_bw_main                     []
% 1.61/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.61/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.61/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.61/0.98  
% 1.61/0.98  ------ Combination Options
% 1.61/0.98  
% 1.61/0.98  --comb_res_mult                         3
% 1.61/0.98  --comb_sup_mult                         2
% 1.61/0.98  --comb_inst_mult                        10
% 1.61/0.98  
% 1.61/0.98  ------ Debug Options
% 1.61/0.98  
% 1.61/0.98  --dbg_backtrace                         false
% 1.61/0.98  --dbg_dump_prop_clauses                 false
% 1.61/0.98  --dbg_dump_prop_clauses_file            -
% 1.61/0.98  --dbg_out_stat                          false
% 1.61/0.98  ------ Parsing...
% 1.61/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.61/0.98  
% 1.61/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.61/0.98  
% 1.61/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.61/0.98  
% 1.61/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.61/0.98  ------ Proving...
% 1.61/0.98  ------ Problem Properties 
% 1.61/0.98  
% 1.61/0.98  
% 1.61/0.98  clauses                                 9
% 1.61/0.98  conjectures                             2
% 1.61/0.98  EPR                                     0
% 1.61/0.98  Horn                                    9
% 1.61/0.98  unary                                   3
% 1.61/0.98  binary                                  6
% 1.61/0.98  lits                                    15
% 1.61/0.98  lits eq                                 4
% 1.61/0.98  fd_pure                                 0
% 1.61/0.98  fd_pseudo                               0
% 1.61/0.98  fd_cond                                 0
% 1.61/0.98  fd_pseudo_cond                          0
% 1.61/0.98  AC symbols                              0
% 1.61/0.98  
% 1.61/0.98  ------ Schedule dynamic 5 is on 
% 1.61/0.98  
% 1.61/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.61/0.98  
% 1.61/0.98  
% 1.61/0.98  ------ 
% 1.61/0.98  Current options:
% 1.61/0.98  ------ 
% 1.61/0.98  
% 1.61/0.98  ------ Input Options
% 1.61/0.98  
% 1.61/0.98  --out_options                           all
% 1.61/0.98  --tptp_safe_out                         true
% 1.61/0.98  --problem_path                          ""
% 1.61/0.98  --include_path                          ""
% 1.61/0.98  --clausifier                            res/vclausify_rel
% 1.61/0.98  --clausifier_options                    --mode clausify
% 1.61/0.98  --stdin                                 false
% 1.61/0.98  --stats_out                             all
% 1.61/0.98  
% 1.61/0.98  ------ General Options
% 1.61/0.98  
% 1.61/0.98  --fof                                   false
% 1.61/0.98  --time_out_real                         305.
% 1.61/0.98  --time_out_virtual                      -1.
% 1.61/0.98  --symbol_type_check                     false
% 1.61/0.98  --clausify_out                          false
% 1.61/0.98  --sig_cnt_out                           false
% 1.61/0.98  --trig_cnt_out                          false
% 1.61/0.98  --trig_cnt_out_tolerance                1.
% 1.61/0.98  --trig_cnt_out_sk_spl                   false
% 1.61/0.98  --abstr_cl_out                          false
% 1.61/0.98  
% 1.61/0.98  ------ Global Options
% 1.61/0.98  
% 1.61/0.98  --schedule                              default
% 1.61/0.98  --add_important_lit                     false
% 1.61/0.98  --prop_solver_per_cl                    1000
% 1.61/0.98  --min_unsat_core                        false
% 1.61/0.98  --soft_assumptions                      false
% 1.61/0.98  --soft_lemma_size                       3
% 1.61/0.98  --prop_impl_unit_size                   0
% 1.61/0.98  --prop_impl_unit                        []
% 1.61/0.98  --share_sel_clauses                     true
% 1.61/0.98  --reset_solvers                         false
% 1.61/0.98  --bc_imp_inh                            [conj_cone]
% 1.61/0.98  --conj_cone_tolerance                   3.
% 1.61/0.98  --extra_neg_conj                        none
% 1.61/0.98  --large_theory_mode                     true
% 1.61/0.98  --prolific_symb_bound                   200
% 1.61/0.98  --lt_threshold                          2000
% 1.61/0.98  --clause_weak_htbl                      true
% 1.61/0.98  --gc_record_bc_elim                     false
% 1.61/0.98  
% 1.61/0.98  ------ Preprocessing Options
% 1.61/0.98  
% 1.61/0.98  --preprocessing_flag                    true
% 1.61/0.98  --time_out_prep_mult                    0.1
% 1.61/0.98  --splitting_mode                        input
% 1.61/0.98  --splitting_grd                         true
% 1.61/0.98  --splitting_cvd                         false
% 1.61/0.98  --splitting_cvd_svl                     false
% 1.61/0.98  --splitting_nvd                         32
% 1.61/0.98  --sub_typing                            true
% 1.61/0.98  --prep_gs_sim                           true
% 1.61/0.98  --prep_unflatten                        true
% 1.61/0.98  --prep_res_sim                          true
% 1.61/0.98  --prep_upred                            true
% 1.61/0.98  --prep_sem_filter                       exhaustive
% 1.61/0.98  --prep_sem_filter_out                   false
% 1.61/0.98  --pred_elim                             true
% 1.61/0.98  --res_sim_input                         true
% 1.61/0.98  --eq_ax_congr_red                       true
% 1.61/0.98  --pure_diseq_elim                       true
% 1.61/0.98  --brand_transform                       false
% 1.61/0.98  --non_eq_to_eq                          false
% 1.61/0.98  --prep_def_merge                        true
% 1.61/0.98  --prep_def_merge_prop_impl              false
% 1.61/0.98  --prep_def_merge_mbd                    true
% 1.61/0.98  --prep_def_merge_tr_red                 false
% 1.61/0.98  --prep_def_merge_tr_cl                  false
% 1.61/0.98  --smt_preprocessing                     true
% 1.61/0.98  --smt_ac_axioms                         fast
% 1.61/0.98  --preprocessed_out                      false
% 1.61/0.98  --preprocessed_stats                    false
% 1.61/0.98  
% 1.61/0.98  ------ Abstraction refinement Options
% 1.61/0.98  
% 1.61/0.98  --abstr_ref                             []
% 1.61/0.98  --abstr_ref_prep                        false
% 1.61/0.98  --abstr_ref_until_sat                   false
% 1.61/0.98  --abstr_ref_sig_restrict                funpre
% 1.61/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 1.61/0.98  --abstr_ref_under                       []
% 1.61/0.98  
% 1.61/0.98  ------ SAT Options
% 1.61/0.98  
% 1.61/0.98  --sat_mode                              false
% 1.61/0.98  --sat_fm_restart_options                ""
% 1.61/0.98  --sat_gr_def                            false
% 1.61/0.98  --sat_epr_types                         true
% 1.61/0.98  --sat_non_cyclic_types                  false
% 1.61/0.98  --sat_finite_models                     false
% 1.61/0.98  --sat_fm_lemmas                         false
% 1.61/0.98  --sat_fm_prep                           false
% 1.61/0.98  --sat_fm_uc_incr                        true
% 1.61/0.98  --sat_out_model                         small
% 1.61/0.98  --sat_out_clauses                       false
% 1.61/0.98  
% 1.61/0.98  ------ QBF Options
% 1.61/0.98  
% 1.61/0.98  --qbf_mode                              false
% 1.61/0.98  --qbf_elim_univ                         false
% 1.61/0.98  --qbf_dom_inst                          none
% 1.61/0.98  --qbf_dom_pre_inst                      false
% 1.61/0.98  --qbf_sk_in                             false
% 1.61/0.98  --qbf_pred_elim                         true
% 1.61/0.98  --qbf_split                             512
% 1.61/0.98  
% 1.61/0.98  ------ BMC1 Options
% 1.61/0.98  
% 1.61/0.98  --bmc1_incremental                      false
% 1.61/0.98  --bmc1_axioms                           reachable_all
% 1.61/0.98  --bmc1_min_bound                        0
% 1.61/0.98  --bmc1_max_bound                        -1
% 1.61/0.98  --bmc1_max_bound_default                -1
% 1.61/0.98  --bmc1_symbol_reachability              true
% 1.61/0.98  --bmc1_property_lemmas                  false
% 1.61/0.98  --bmc1_k_induction                      false
% 1.61/0.98  --bmc1_non_equiv_states                 false
% 1.61/0.98  --bmc1_deadlock                         false
% 1.61/0.98  --bmc1_ucm                              false
% 1.61/0.98  --bmc1_add_unsat_core                   none
% 1.61/0.98  --bmc1_unsat_core_children              false
% 1.61/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 1.61/0.98  --bmc1_out_stat                         full
% 1.61/0.98  --bmc1_ground_init                      false
% 1.61/0.98  --bmc1_pre_inst_next_state              false
% 1.61/0.98  --bmc1_pre_inst_state                   false
% 1.61/0.98  --bmc1_pre_inst_reach_state             false
% 1.61/0.98  --bmc1_out_unsat_core                   false
% 1.61/0.98  --bmc1_aig_witness_out                  false
% 1.61/0.98  --bmc1_verbose                          false
% 1.61/0.98  --bmc1_dump_clauses_tptp                false
% 1.61/0.98  --bmc1_dump_unsat_core_tptp             false
% 1.61/0.98  --bmc1_dump_file                        -
% 1.61/0.98  --bmc1_ucm_expand_uc_limit              128
% 1.61/0.98  --bmc1_ucm_n_expand_iterations          6
% 1.61/0.98  --bmc1_ucm_extend_mode                  1
% 1.61/0.98  --bmc1_ucm_init_mode                    2
% 1.61/0.98  --bmc1_ucm_cone_mode                    none
% 1.61/0.98  --bmc1_ucm_reduced_relation_type        0
% 1.61/0.98  --bmc1_ucm_relax_model                  4
% 1.61/0.98  --bmc1_ucm_full_tr_after_sat            true
% 1.61/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 1.61/0.98  --bmc1_ucm_layered_model                none
% 1.61/0.98  --bmc1_ucm_max_lemma_size               10
% 1.61/0.98  
% 1.61/0.98  ------ AIG Options
% 1.61/0.98  
% 1.61/0.98  --aig_mode                              false
% 1.61/0.98  
% 1.61/0.98  ------ Instantiation Options
% 1.61/0.98  
% 1.61/0.98  --instantiation_flag                    true
% 1.61/0.98  --inst_sos_flag                         false
% 1.61/0.98  --inst_sos_phase                        true
% 1.61/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.61/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.61/0.98  --inst_lit_sel_side                     none
% 1.61/0.98  --inst_solver_per_active                1400
% 1.61/0.98  --inst_solver_calls_frac                1.
% 1.61/0.98  --inst_passive_queue_type               priority_queues
% 1.61/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.61/0.98  --inst_passive_queues_freq              [25;2]
% 1.61/0.98  --inst_dismatching                      true
% 1.61/0.98  --inst_eager_unprocessed_to_passive     true
% 1.61/0.98  --inst_prop_sim_given                   true
% 1.61/0.98  --inst_prop_sim_new                     false
% 1.61/0.98  --inst_subs_new                         false
% 1.61/0.98  --inst_eq_res_simp                      false
% 1.61/0.98  --inst_subs_given                       false
% 1.61/0.98  --inst_orphan_elimination               true
% 1.61/0.98  --inst_learning_loop_flag               true
% 1.61/0.98  --inst_learning_start                   3000
% 1.61/0.98  --inst_learning_factor                  2
% 1.61/0.98  --inst_start_prop_sim_after_learn       3
% 1.61/0.98  --inst_sel_renew                        solver
% 1.61/0.98  --inst_lit_activity_flag                true
% 1.61/0.98  --inst_restr_to_given                   false
% 1.61/0.98  --inst_activity_threshold               500
% 1.61/0.98  --inst_out_proof                        true
% 1.61/0.98  
% 1.61/0.98  ------ Resolution Options
% 1.61/0.98  
% 1.61/0.98  --resolution_flag                       false
% 1.61/0.98  --res_lit_sel                           adaptive
% 1.61/0.98  --res_lit_sel_side                      none
% 1.61/0.98  --res_ordering                          kbo
% 1.61/0.98  --res_to_prop_solver                    active
% 1.61/0.98  --res_prop_simpl_new                    false
% 1.61/0.98  --res_prop_simpl_given                  true
% 1.61/0.98  --res_passive_queue_type                priority_queues
% 1.61/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.61/0.98  --res_passive_queues_freq               [15;5]
% 1.61/0.98  --res_forward_subs                      full
% 1.61/0.98  --res_backward_subs                     full
% 1.61/0.98  --res_forward_subs_resolution           true
% 1.61/0.98  --res_backward_subs_resolution          true
% 1.61/0.98  --res_orphan_elimination                true
% 1.61/0.98  --res_time_limit                        2.
% 1.61/0.98  --res_out_proof                         true
% 1.61/0.98  
% 1.61/0.98  ------ Superposition Options
% 1.61/0.98  
% 1.61/0.98  --superposition_flag                    true
% 1.61/0.98  --sup_passive_queue_type                priority_queues
% 1.61/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.61/0.98  --sup_passive_queues_freq               [8;1;4]
% 1.61/0.98  --demod_completeness_check              fast
% 1.61/0.98  --demod_use_ground                      true
% 1.61/0.98  --sup_to_prop_solver                    passive
% 1.61/0.98  --sup_prop_simpl_new                    true
% 1.61/0.98  --sup_prop_simpl_given                  true
% 1.61/0.98  --sup_fun_splitting                     false
% 1.61/0.98  --sup_smt_interval                      50000
% 1.61/0.98  
% 1.61/0.98  ------ Superposition Simplification Setup
% 1.61/0.98  
% 1.61/0.98  --sup_indices_passive                   []
% 1.61/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.61/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 1.61/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.98  --sup_full_bw                           [BwDemod]
% 1.61/0.98  --sup_immed_triv                        [TrivRules]
% 1.61/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.61/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.98  --sup_immed_bw_main                     []
% 1.61/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.61/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 1.61/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.61/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.61/0.98  
% 1.61/0.98  ------ Combination Options
% 1.61/0.98  
% 1.61/0.98  --comb_res_mult                         3
% 1.61/0.98  --comb_sup_mult                         2
% 1.61/0.98  --comb_inst_mult                        10
% 1.61/0.98  
% 1.61/0.98  ------ Debug Options
% 1.61/0.98  
% 1.61/0.98  --dbg_backtrace                         false
% 1.61/0.98  --dbg_dump_prop_clauses                 false
% 1.61/0.98  --dbg_dump_prop_clauses_file            -
% 1.61/0.98  --dbg_out_stat                          false
% 1.61/0.98  
% 1.61/0.98  
% 1.61/0.98  
% 1.61/0.98  
% 1.61/0.98  ------ Proving...
% 1.61/0.98  
% 1.61/0.98  
% 1.61/0.98  % SZS status Theorem for theBenchmark.p
% 1.61/0.98  
% 1.61/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 1.61/0.98  
% 1.61/0.98  fof(f11,conjecture,(
% 1.61/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v5_tops_1(X1,X0) => r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1))))))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f12,negated_conjecture,(
% 1.61/0.98    ~! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v5_tops_1(X1,X0) => r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1))))))),
% 1.61/0.98    inference(negated_conjecture,[],[f11])).
% 1.61/0.98  
% 1.61/0.98  fof(f23,plain,(
% 1.61/0.98    ? [X0] : (? [X1] : ((~r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1))) & v5_tops_1(X1,X0)) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 1.61/0.98    inference(ennf_transformation,[],[f12])).
% 1.61/0.98  
% 1.61/0.98  fof(f24,plain,(
% 1.61/0.98    ? [X0] : (? [X1] : (~r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1))) & v5_tops_1(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0))),
% 1.61/0.98    inference(flattening,[],[f23])).
% 1.61/0.98  
% 1.61/0.98  fof(f27,plain,(
% 1.61/0.98    ( ! [X0] : (? [X1] : (~r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1))) & v5_tops_1(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) => (~r1_tarski(k2_tops_1(X0,sK1),k2_pre_topc(X0,k1_tops_1(X0,sK1))) & v5_tops_1(sK1,X0) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(X0))))) )),
% 1.61/0.98    introduced(choice_axiom,[])).
% 1.61/0.98  
% 1.61/0.98  fof(f26,plain,(
% 1.61/0.98    ? [X0] : (? [X1] : (~r1_tarski(k2_tops_1(X0,X1),k2_pre_topc(X0,k1_tops_1(X0,X1))) & v5_tops_1(X1,X0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) & l1_pre_topc(X0)) => (? [X1] : (~r1_tarski(k2_tops_1(sK0,X1),k2_pre_topc(sK0,k1_tops_1(sK0,X1))) & v5_tops_1(X1,sK0) & m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0))),
% 1.61/0.98    introduced(choice_axiom,[])).
% 1.61/0.98  
% 1.61/0.98  fof(f28,plain,(
% 1.61/0.98    (~r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) & v5_tops_1(sK1,sK0) & m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))) & l1_pre_topc(sK0)),
% 1.61/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f24,f27,f26])).
% 1.61/0.98  
% 1.61/0.98  fof(f41,plain,(
% 1.61/0.98    m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))),
% 1.61/0.98    inference(cnf_transformation,[],[f28])).
% 1.61/0.98  
% 1.61/0.98  fof(f8,axiom,(
% 1.61/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => m1_subset_1(k1_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f19,plain,(
% 1.61/0.98    ! [X0,X1] : (m1_subset_1(k1_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 1.61/0.98    inference(ennf_transformation,[],[f8])).
% 1.61/0.98  
% 1.61/0.98  fof(f20,plain,(
% 1.61/0.98    ! [X0,X1] : (m1_subset_1(k1_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 1.61/0.98    inference(flattening,[],[f19])).
% 1.61/0.98  
% 1.61/0.98  fof(f37,plain,(
% 1.61/0.98    ( ! [X0,X1] : (m1_subset_1(k1_tops_1(X0,X1),k1_zfmisc_1(u1_struct_0(X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.61/0.98    inference(cnf_transformation,[],[f20])).
% 1.61/0.98  
% 1.61/0.98  fof(f40,plain,(
% 1.61/0.98    l1_pre_topc(sK0)),
% 1.61/0.98    inference(cnf_transformation,[],[f28])).
% 1.61/0.98  
% 1.61/0.98  fof(f6,axiom,(
% 1.61/0.98    ! [X0,X1] : ((m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) & l1_pre_topc(X0)) => k2_pre_topc(X0,X1) = k2_pre_topc(X0,k2_pre_topc(X0,X1)))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f16,plain,(
% 1.61/0.98    ! [X0,X1] : (k2_pre_topc(X0,X1) = k2_pre_topc(X0,k2_pre_topc(X0,X1)) | (~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)))),
% 1.61/0.98    inference(ennf_transformation,[],[f6])).
% 1.61/0.98  
% 1.61/0.98  fof(f17,plain,(
% 1.61/0.98    ! [X0,X1] : (k2_pre_topc(X0,X1) = k2_pre_topc(X0,k2_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0))),
% 1.61/0.98    inference(flattening,[],[f16])).
% 1.61/0.98  
% 1.61/0.98  fof(f34,plain,(
% 1.61/0.98    ( ! [X0,X1] : (k2_pre_topc(X0,X1) = k2_pre_topc(X0,k2_pre_topc(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.61/0.98    inference(cnf_transformation,[],[f17])).
% 1.61/0.98  
% 1.61/0.98  fof(f7,axiom,(
% 1.61/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => (v5_tops_1(X1,X0) <=> k2_pre_topc(X0,k1_tops_1(X0,X1)) = X1)))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f18,plain,(
% 1.61/0.98    ! [X0] : (! [X1] : ((v5_tops_1(X1,X0) <=> k2_pre_topc(X0,k1_tops_1(X0,X1)) = X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.61/0.98    inference(ennf_transformation,[],[f7])).
% 1.61/0.98  
% 1.61/0.98  fof(f25,plain,(
% 1.61/0.98    ! [X0] : (! [X1] : (((v5_tops_1(X1,X0) | k2_pre_topc(X0,k1_tops_1(X0,X1)) != X1) & (k2_pre_topc(X0,k1_tops_1(X0,X1)) = X1 | ~v5_tops_1(X1,X0))) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.61/0.98    inference(nnf_transformation,[],[f18])).
% 1.61/0.98  
% 1.61/0.98  fof(f35,plain,(
% 1.61/0.98    ( ! [X0,X1] : (k2_pre_topc(X0,k1_tops_1(X0,X1)) = X1 | ~v5_tops_1(X1,X0) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.61/0.98    inference(cnf_transformation,[],[f25])).
% 1.61/0.98  
% 1.61/0.98  fof(f42,plain,(
% 1.61/0.98    v5_tops_1(sK1,sK0)),
% 1.61/0.98    inference(cnf_transformation,[],[f28])).
% 1.61/0.98  
% 1.61/0.98  fof(f10,axiom,(
% 1.61/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => r1_tarski(k2_tops_1(X0,k2_pre_topc(X0,X1)),k2_tops_1(X0,X1))))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f22,plain,(
% 1.61/0.98    ! [X0] : (! [X1] : (r1_tarski(k2_tops_1(X0,k2_pre_topc(X0,X1)),k2_tops_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.61/0.98    inference(ennf_transformation,[],[f10])).
% 1.61/0.98  
% 1.61/0.98  fof(f39,plain,(
% 1.61/0.98    ( ! [X0,X1] : (r1_tarski(k2_tops_1(X0,k2_pre_topc(X0,X1)),k2_tops_1(X0,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.61/0.98    inference(cnf_transformation,[],[f22])).
% 1.61/0.98  
% 1.61/0.98  fof(f9,axiom,(
% 1.61/0.98    ! [X0] : (l1_pre_topc(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) => k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1)))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f21,plain,(
% 1.61/0.98    ! [X0] : (! [X1] : (k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0)))) | ~l1_pre_topc(X0))),
% 1.61/0.98    inference(ennf_transformation,[],[f9])).
% 1.61/0.98  
% 1.61/0.98  fof(f38,plain,(
% 1.61/0.98    ( ! [X0,X1] : (k7_subset_1(u1_struct_0(X0),k2_pre_topc(X0,X1),k1_tops_1(X0,X1)) = k2_tops_1(X0,X1) | ~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X0))) | ~l1_pre_topc(X0)) )),
% 1.61/0.98    inference(cnf_transformation,[],[f21])).
% 1.61/0.98  
% 1.61/0.98  fof(f4,axiom,(
% 1.61/0.98    ! [X0,X1,X2] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f15,plain,(
% 1.61/0.98    ! [X0,X1,X2] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 1.61/0.98    inference(ennf_transformation,[],[f4])).
% 1.61/0.98  
% 1.61/0.98  fof(f32,plain,(
% 1.61/0.98    ( ! [X2,X0,X1] : (k4_xboole_0(X1,X2) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.61/0.98    inference(cnf_transformation,[],[f15])).
% 1.61/0.98  
% 1.61/0.98  fof(f1,axiom,(
% 1.61/0.98    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f29,plain,(
% 1.61/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 1.61/0.98    inference(cnf_transformation,[],[f1])).
% 1.61/0.98  
% 1.61/0.98  fof(f5,axiom,(
% 1.61/0.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f33,plain,(
% 1.61/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k2_tarski(X0,X1))) )),
% 1.61/0.98    inference(cnf_transformation,[],[f5])).
% 1.61/0.98  
% 1.61/0.98  fof(f3,axiom,(
% 1.61/0.98    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f31,plain,(
% 1.61/0.98    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.61/0.98    inference(cnf_transformation,[],[f3])).
% 1.61/0.98  
% 1.61/0.98  fof(f44,plain,(
% 1.61/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k1_setfam_1(k1_enumset1(X0,X0,X1))) )),
% 1.61/0.98    inference(definition_unfolding,[],[f33,f31])).
% 1.61/0.98  
% 1.61/0.98  fof(f45,plain,(
% 1.61/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X1)))) )),
% 1.61/0.98    inference(definition_unfolding,[],[f29,f44])).
% 1.61/0.98  
% 1.61/0.98  fof(f47,plain,(
% 1.61/0.98    ( ! [X2,X0,X1] : (k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2))) = k7_subset_1(X0,X1,X2) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 1.61/0.98    inference(definition_unfolding,[],[f32,f45])).
% 1.61/0.98  
% 1.61/0.98  fof(f2,axiom,(
% 1.61/0.98    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) => (r1_xboole_0(X0,X2) & r1_tarski(X0,X1)))),
% 1.61/0.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.61/0.98  
% 1.61/0.98  fof(f13,plain,(
% 1.61/0.98    ! [X0,X1,X2] : (r1_tarski(X0,k4_xboole_0(X1,X2)) => r1_tarski(X0,X1))),
% 1.61/0.98    inference(pure_predicate_removal,[],[f2])).
% 1.61/0.98  
% 1.61/0.98  fof(f14,plain,(
% 1.61/0.98    ! [X0,X1,X2] : (r1_tarski(X0,X1) | ~r1_tarski(X0,k4_xboole_0(X1,X2)))),
% 1.61/0.98    inference(ennf_transformation,[],[f13])).
% 1.61/0.98  
% 1.61/0.98  fof(f30,plain,(
% 1.61/0.98    ( ! [X2,X0,X1] : (r1_tarski(X0,X1) | ~r1_tarski(X0,k4_xboole_0(X1,X2))) )),
% 1.61/0.98    inference(cnf_transformation,[],[f14])).
% 1.61/0.98  
% 1.61/0.98  fof(f46,plain,(
% 1.61/0.98    ( ! [X2,X0,X1] : (r1_tarski(X0,X1) | ~r1_tarski(X0,k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2))))) )),
% 1.61/0.98    inference(definition_unfolding,[],[f30,f45])).
% 1.61/0.98  
% 1.61/0.98  fof(f43,plain,(
% 1.61/0.98    ~r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1)))),
% 1.61/0.98    inference(cnf_transformation,[],[f28])).
% 1.61/0.98  
% 1.61/0.98  cnf(c_10,negated_conjecture,
% 1.61/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.61/0.98      inference(cnf_transformation,[],[f41]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_283,negated_conjecture,
% 1.61/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.61/0.98      inference(subtyping,[status(esa)],[c_10]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_477,plain,
% 1.61/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_283]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_5,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | m1_subset_1(k1_tops_1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | ~ l1_pre_topc(X1) ),
% 1.61/0.98      inference(cnf_transformation,[],[f37]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_11,negated_conjecture,
% 1.61/0.98      ( l1_pre_topc(sK0) ),
% 1.61/0.98      inference(cnf_transformation,[],[f40]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_175,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | m1_subset_1(k1_tops_1(X1,X0),k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | sK0 != X1 ),
% 1.61/0.98      inference(resolution_lifted,[status(thm)],[c_5,c_11]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_176,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.61/0.98      | m1_subset_1(k1_tops_1(sK0,X0),k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.61/0.98      inference(unflattening,[status(thm)],[c_175]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_279,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.61/0.98      | m1_subset_1(k1_tops_1(sK0,X0_43),k1_zfmisc_1(u1_struct_0(sK0))) ),
% 1.61/0.98      inference(subtyping,[status(esa)],[c_176]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_480,plain,
% 1.61/0.98      ( m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 1.61/0.98      | m1_subset_1(k1_tops_1(sK0,X0_43),k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_279]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_2,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | ~ l1_pre_topc(X1)
% 1.61/0.98      | k2_pre_topc(X1,k2_pre_topc(X1,X0)) = k2_pre_topc(X1,X0) ),
% 1.61/0.98      inference(cnf_transformation,[],[f34]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_187,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | k2_pre_topc(X1,k2_pre_topc(X1,X0)) = k2_pre_topc(X1,X0)
% 1.61/0.98      | sK0 != X1 ),
% 1.61/0.98      inference(resolution_lifted,[status(thm)],[c_2,c_11]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_188,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.61/0.98      | k2_pre_topc(sK0,k2_pre_topc(sK0,X0)) = k2_pre_topc(sK0,X0) ),
% 1.61/0.98      inference(unflattening,[status(thm)],[c_187]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_278,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.61/0.98      | k2_pre_topc(sK0,k2_pre_topc(sK0,X0_43)) = k2_pre_topc(sK0,X0_43) ),
% 1.61/0.98      inference(subtyping,[status(esa)],[c_188]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_481,plain,
% 1.61/0.98      ( k2_pre_topc(sK0,k2_pre_topc(sK0,X0_43)) = k2_pre_topc(sK0,X0_43)
% 1.61/0.98      | m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_278]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_592,plain,
% 1.61/0.98      ( k2_pre_topc(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,X0_43))) = k2_pre_topc(sK0,k1_tops_1(sK0,X0_43))
% 1.61/0.98      | m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.61/0.98      inference(superposition,[status(thm)],[c_480,c_481]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1085,plain,
% 1.61/0.98      ( k2_pre_topc(sK0,k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) = k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) ),
% 1.61/0.98      inference(superposition,[status(thm)],[c_477,c_592]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_4,plain,
% 1.61/0.98      ( ~ v5_tops_1(X0,X1)
% 1.61/0.98      | ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | ~ l1_pre_topc(X1)
% 1.61/0.98      | k2_pre_topc(X1,k1_tops_1(X1,X0)) = X0 ),
% 1.61/0.98      inference(cnf_transformation,[],[f35]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_9,negated_conjecture,
% 1.61/0.98      ( v5_tops_1(sK1,sK0) ),
% 1.61/0.98      inference(cnf_transformation,[],[f42]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_142,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | ~ l1_pre_topc(X1)
% 1.61/0.98      | k2_pre_topc(X1,k1_tops_1(X1,X0)) = X0
% 1.61/0.98      | sK1 != X0
% 1.61/0.98      | sK0 != X1 ),
% 1.61/0.98      inference(resolution_lifted,[status(thm)],[c_4,c_9]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_143,plain,
% 1.61/0.98      ( ~ m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.61/0.98      | ~ l1_pre_topc(sK0)
% 1.61/0.98      | k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) = sK1 ),
% 1.61/0.98      inference(unflattening,[status(thm)],[c_142]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_145,plain,
% 1.61/0.98      ( k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) = sK1 ),
% 1.61/0.98      inference(global_propositional_subsumption,
% 1.61/0.98                [status(thm)],
% 1.61/0.98                [c_143,c_11,c_10]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_282,plain,
% 1.61/0.98      ( k2_pre_topc(sK0,k1_tops_1(sK0,sK1)) = sK1 ),
% 1.61/0.98      inference(subtyping,[status(esa)],[c_145]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1092,plain,
% 1.61/0.98      ( k2_pre_topc(sK0,sK1) = sK1 ),
% 1.61/0.98      inference(light_normalisation,[status(thm)],[c_1085,c_282]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_7,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | r1_tarski(k2_tops_1(X1,k2_pre_topc(X1,X0)),k2_tops_1(X1,X0))
% 1.61/0.98      | ~ l1_pre_topc(X1) ),
% 1.61/0.98      inference(cnf_transformation,[],[f39]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_151,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | r1_tarski(k2_tops_1(X1,k2_pre_topc(X1,X0)),k2_tops_1(X1,X0))
% 1.61/0.98      | sK0 != X1 ),
% 1.61/0.98      inference(resolution_lifted,[status(thm)],[c_7,c_11]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_152,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0)),k2_tops_1(sK0,X0)) ),
% 1.61/0.98      inference(unflattening,[status(thm)],[c_151]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_281,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)),k2_tops_1(sK0,X0_43)) ),
% 1.61/0.98      inference(subtyping,[status(esa)],[c_152]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_478,plain,
% 1.61/0.98      ( m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)),k2_tops_1(sK0,X0_43)) = iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_281]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1102,plain,
% 1.61/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) = iProver_top ),
% 1.61/0.98      inference(superposition,[status(thm)],[c_1092,c_478]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_13,plain,
% 1.61/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) = iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_299,plain,
% 1.61/0.98      ( X0_43 != X1_43
% 1.61/0.98      | k2_tops_1(X0_46,X0_43) = k2_tops_1(X0_46,X1_43) ),
% 1.61/0.98      theory(equality) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_307,plain,
% 1.61/0.98      ( k2_tops_1(sK0,sK1) = k2_tops_1(sK0,sK1) | sK1 != sK1 ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_299]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_288,plain,( X0_43 = X0_43 ),theory(equality) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_309,plain,
% 1.61/0.98      ( sK1 = sK1 ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_288]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_320,plain,
% 1.61/0.98      ( m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)),k2_tops_1(sK0,X0_43)) = iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_281]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_322,plain,
% 1.61/0.98      ( m1_subset_1(sK1,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,sK1)),k2_tops_1(sK0,sK1)) = iProver_top ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_320]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_292,plain,
% 1.61/0.98      ( ~ r1_tarski(X0_43,X1_43)
% 1.61/0.98      | r1_tarski(X2_43,X3_43)
% 1.61/0.98      | X2_43 != X0_43
% 1.61/0.98      | X3_43 != X1_43 ),
% 1.61/0.98      theory(equality) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_540,plain,
% 1.61/0.98      ( r1_tarski(X0_43,X1_43)
% 1.61/0.98      | ~ r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X2_43)),k2_tops_1(sK0,X2_43))
% 1.61/0.98      | X1_43 != k2_tops_1(sK0,X2_43)
% 1.61/0.98      | X0_43 != k2_tops_1(sK0,k2_pre_topc(sK0,X2_43)) ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_292]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_573,plain,
% 1.61/0.98      ( r1_tarski(X0_43,k2_tops_1(sK0,X1_43))
% 1.61/0.98      | ~ r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X1_43)),k2_tops_1(sK0,X1_43))
% 1.61/0.98      | X0_43 != k2_tops_1(sK0,k2_pre_topc(sK0,X1_43))
% 1.61/0.98      | k2_tops_1(sK0,X1_43) != k2_tops_1(sK0,X1_43) ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_540]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_631,plain,
% 1.61/0.98      ( r1_tarski(k2_tops_1(sK0,X0_43),k2_tops_1(sK0,X1_43))
% 1.61/0.98      | ~ r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X1_43)),k2_tops_1(sK0,X1_43))
% 1.61/0.98      | k2_tops_1(sK0,X1_43) != k2_tops_1(sK0,X1_43)
% 1.61/0.98      | k2_tops_1(sK0,X0_43) != k2_tops_1(sK0,k2_pre_topc(sK0,X1_43)) ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_573]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_633,plain,
% 1.61/0.98      ( k2_tops_1(sK0,X0_43) != k2_tops_1(sK0,X0_43)
% 1.61/0.98      | k2_tops_1(sK0,X1_43) != k2_tops_1(sK0,k2_pre_topc(sK0,X0_43))
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,X1_43),k2_tops_1(sK0,X0_43)) = iProver_top
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)),k2_tops_1(sK0,X0_43)) != iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_631]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_635,plain,
% 1.61/0.98      ( k2_tops_1(sK0,sK1) != k2_tops_1(sK0,k2_pre_topc(sK0,sK1))
% 1.61/0.98      | k2_tops_1(sK0,sK1) != k2_tops_1(sK0,sK1)
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,k2_pre_topc(sK0,sK1)),k2_tops_1(sK0,sK1)) != iProver_top
% 1.61/0.98      | r1_tarski(k2_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) = iProver_top ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_633]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_291,plain,
% 1.61/0.98      ( X0_43 != X1_43 | X2_43 != X1_43 | X2_43 = X0_43 ),
% 1.61/0.98      theory(equality) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_580,plain,
% 1.61/0.98      ( X0_43 != X1_43
% 1.61/0.98      | X0_43 = k2_tops_1(sK0,X2_43)
% 1.61/0.98      | k2_tops_1(sK0,X2_43) != X1_43 ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_291]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_615,plain,
% 1.61/0.98      ( X0_43 != k2_tops_1(sK0,X1_43)
% 1.61/0.98      | X0_43 = k2_tops_1(sK0,X2_43)
% 1.61/0.98      | k2_tops_1(sK0,X2_43) != k2_tops_1(sK0,X1_43) ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_580]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_746,plain,
% 1.61/0.98      ( k2_tops_1(sK0,X0_43) != k2_tops_1(sK0,X0_43)
% 1.61/0.98      | k2_tops_1(sK0,X1_43) != k2_tops_1(sK0,X0_43)
% 1.61/0.98      | k2_tops_1(sK0,X0_43) = k2_tops_1(sK0,X1_43) ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_615]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_869,plain,
% 1.61/0.98      ( k2_tops_1(sK0,X0_43) != k2_tops_1(sK0,X0_43)
% 1.61/0.98      | k2_tops_1(sK0,X0_43) = k2_tops_1(sK0,k2_pre_topc(sK0,X1_43))
% 1.61/0.98      | k2_tops_1(sK0,k2_pre_topc(sK0,X1_43)) != k2_tops_1(sK0,X0_43) ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_746]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_871,plain,
% 1.61/0.98      ( k2_tops_1(sK0,k2_pre_topc(sK0,sK1)) != k2_tops_1(sK0,sK1)
% 1.61/0.98      | k2_tops_1(sK0,sK1) = k2_tops_1(sK0,k2_pre_topc(sK0,sK1))
% 1.61/0.98      | k2_tops_1(sK0,sK1) != k2_tops_1(sK0,sK1) ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_869]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_583,plain,
% 1.61/0.98      ( X0_43 != X1_43 | k2_tops_1(sK0,X0_43) = k2_tops_1(sK0,X1_43) ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_299]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1045,plain,
% 1.61/0.98      ( k2_tops_1(sK0,k2_pre_topc(sK0,X0_43)) = k2_tops_1(sK0,X1_43)
% 1.61/0.98      | k2_pre_topc(sK0,X0_43) != X1_43 ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_583]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1046,plain,
% 1.61/0.98      ( k2_tops_1(sK0,k2_pre_topc(sK0,sK1)) = k2_tops_1(sK0,sK1)
% 1.61/0.98      | k2_pre_topc(sK0,sK1) != sK1 ),
% 1.61/0.98      inference(instantiation,[status(thm)],[c_1045]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1234,plain,
% 1.61/0.98      ( r1_tarski(k2_tops_1(sK0,sK1),k2_tops_1(sK0,sK1)) = iProver_top ),
% 1.61/0.98      inference(global_propositional_subsumption,
% 1.61/0.98                [status(thm)],
% 1.61/0.98                [c_1102,c_13,c_307,c_309,c_322,c_635,c_871,c_1046,c_1092]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_6,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | ~ l1_pre_topc(X1)
% 1.61/0.98      | k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k1_tops_1(X1,X0)) = k2_tops_1(X1,X0) ),
% 1.61/0.98      inference(cnf_transformation,[],[f38]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_163,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(X1)))
% 1.61/0.98      | k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X0),k1_tops_1(X1,X0)) = k2_tops_1(X1,X0)
% 1.61/0.98      | sK0 != X1 ),
% 1.61/0.98      inference(resolution_lifted,[status(thm)],[c_6,c_11]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_164,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.61/0.98      | k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0),k1_tops_1(sK0,X0)) = k2_tops_1(sK0,X0) ),
% 1.61/0.98      inference(unflattening,[status(thm)],[c_163]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_280,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0)))
% 1.61/0.98      | k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0_43),k1_tops_1(sK0,X0_43)) = k2_tops_1(sK0,X0_43) ),
% 1.61/0.98      inference(subtyping,[status(esa)],[c_164]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_479,plain,
% 1.61/0.98      ( k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,X0_43),k1_tops_1(sK0,X0_43)) = k2_tops_1(sK0,X0_43)
% 1.61/0.98      | m1_subset_1(X0_43,k1_zfmisc_1(u1_struct_0(sK0))) != iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_280]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_691,plain,
% 1.61/0.98      ( k7_subset_1(u1_struct_0(sK0),k2_pre_topc(sK0,sK1),k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 1.61/0.98      inference(superposition,[status(thm)],[c_477,c_479]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1098,plain,
% 1.61/0.98      ( k7_subset_1(u1_struct_0(sK0),sK1,k1_tops_1(sK0,sK1)) = k2_tops_1(sK0,sK1) ),
% 1.61/0.98      inference(demodulation,[status(thm)],[c_1092,c_691]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 1.61/0.98      | k5_xboole_0(X0,k1_setfam_1(k1_enumset1(X0,X0,X2))) = k7_subset_1(X1,X0,X2) ),
% 1.61/0.98      inference(cnf_transformation,[],[f47]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_285,plain,
% 1.61/0.98      ( ~ m1_subset_1(X0_43,k1_zfmisc_1(X0_45))
% 1.61/0.98      | k5_xboole_0(X0_43,k1_setfam_1(k1_enumset1(X0_43,X0_43,X1_43))) = k7_subset_1(X0_45,X0_43,X1_43) ),
% 1.61/0.98      inference(subtyping,[status(esa)],[c_1]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_475,plain,
% 1.61/0.98      ( k5_xboole_0(X0_43,k1_setfam_1(k1_enumset1(X0_43,X0_43,X1_43))) = k7_subset_1(X0_45,X0_43,X1_43)
% 1.61/0.98      | m1_subset_1(X0_43,k1_zfmisc_1(X0_45)) != iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_285]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_764,plain,
% 1.61/0.98      ( k5_xboole_0(sK1,k1_setfam_1(k1_enumset1(sK1,sK1,X0_43))) = k7_subset_1(u1_struct_0(sK0),sK1,X0_43) ),
% 1.61/0.98      inference(superposition,[status(thm)],[c_477,c_475]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_0,plain,
% 1.61/0.98      ( r1_tarski(X0,X1)
% 1.61/0.98      | ~ r1_tarski(X0,k5_xboole_0(X1,k1_setfam_1(k1_enumset1(X1,X1,X2)))) ),
% 1.61/0.98      inference(cnf_transformation,[],[f46]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_286,plain,
% 1.61/0.98      ( r1_tarski(X0_43,X1_43)
% 1.61/0.98      | ~ r1_tarski(X0_43,k5_xboole_0(X1_43,k1_setfam_1(k1_enumset1(X1_43,X1_43,X2_43)))) ),
% 1.61/0.98      inference(subtyping,[status(esa)],[c_0]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_474,plain,
% 1.61/0.98      ( r1_tarski(X0_43,X1_43) = iProver_top
% 1.61/0.98      | r1_tarski(X0_43,k5_xboole_0(X1_43,k1_setfam_1(k1_enumset1(X1_43,X1_43,X2_43)))) != iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_286]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_864,plain,
% 1.61/0.98      ( r1_tarski(X0_43,k7_subset_1(u1_struct_0(sK0),sK1,X1_43)) != iProver_top
% 1.61/0.98      | r1_tarski(X0_43,sK1) = iProver_top ),
% 1.61/0.98      inference(superposition,[status(thm)],[c_764,c_474]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1229,plain,
% 1.61/0.98      ( r1_tarski(X0_43,k2_tops_1(sK0,sK1)) != iProver_top
% 1.61/0.98      | r1_tarski(X0_43,sK1) = iProver_top ),
% 1.61/0.98      inference(superposition,[status(thm)],[c_1098,c_864]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_1767,plain,
% 1.61/0.98      ( r1_tarski(k2_tops_1(sK0,sK1),sK1) = iProver_top ),
% 1.61/0.98      inference(superposition,[status(thm)],[c_1234,c_1229]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_8,negated_conjecture,
% 1.61/0.98      ( ~ r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) ),
% 1.61/0.98      inference(cnf_transformation,[],[f43]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_284,negated_conjecture,
% 1.61/0.98      ( ~ r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) ),
% 1.61/0.98      inference(subtyping,[status(esa)],[c_8]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_476,plain,
% 1.61/0.98      ( r1_tarski(k2_tops_1(sK0,sK1),k2_pre_topc(sK0,k1_tops_1(sK0,sK1))) != iProver_top ),
% 1.61/0.98      inference(predicate_to_equality,[status(thm)],[c_284]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(c_486,plain,
% 1.61/0.98      ( r1_tarski(k2_tops_1(sK0,sK1),sK1) != iProver_top ),
% 1.61/0.98      inference(light_normalisation,[status(thm)],[c_476,c_282]) ).
% 1.61/0.98  
% 1.61/0.98  cnf(contradiction,plain,
% 1.61/0.98      ( $false ),
% 1.61/0.98      inference(minisat,[status(thm)],[c_1767,c_486]) ).
% 1.61/0.98  
% 1.61/0.98  
% 1.61/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 1.61/0.98  
% 1.61/0.98  ------                               Statistics
% 1.61/0.98  
% 1.61/0.98  ------ General
% 1.61/0.98  
% 1.61/0.98  abstr_ref_over_cycles:                  0
% 1.61/0.98  abstr_ref_under_cycles:                 0
% 1.61/0.98  gc_basic_clause_elim:                   0
% 1.61/0.98  forced_gc_time:                         0
% 1.61/0.98  parsing_time:                           0.009
% 1.61/0.98  unif_index_cands_time:                  0.
% 1.61/0.98  unif_index_add_time:                    0.
% 1.61/0.98  orderings_time:                         0.
% 1.61/0.98  out_proof_time:                         0.011
% 1.61/0.98  total_time:                             0.098
% 1.61/0.98  num_of_symbols:                         49
% 1.61/0.98  num_of_terms:                           1798
% 1.61/0.98  
% 1.61/0.98  ------ Preprocessing
% 1.61/0.98  
% 1.61/0.98  num_of_splits:                          0
% 1.61/0.98  num_of_split_atoms:                     0
% 1.61/0.98  num_of_reused_defs:                     0
% 1.61/0.98  num_eq_ax_congr_red:                    19
% 1.61/0.98  num_of_sem_filtered_clauses:            1
% 1.61/0.98  num_of_subtypes:                        6
% 1.61/0.98  monotx_restored_types:                  0
% 1.61/0.98  sat_num_of_epr_types:                   0
% 1.61/0.98  sat_num_of_non_cyclic_types:            0
% 1.61/0.98  sat_guarded_non_collapsed_types:        0
% 1.61/0.98  num_pure_diseq_elim:                    0
% 1.61/0.98  simp_replaced_by:                       0
% 1.61/0.98  res_preprocessed:                       64
% 1.61/0.98  prep_upred:                             0
% 1.61/0.98  prep_unflattend:                        6
% 1.61/0.98  smt_new_axioms:                         0
% 1.61/0.98  pred_elim_cands:                        2
% 1.61/0.98  pred_elim:                              2
% 1.61/0.98  pred_elim_cl:                           3
% 1.61/0.98  pred_elim_cycles:                       4
% 1.61/0.98  merged_defs:                            0
% 1.61/0.98  merged_defs_ncl:                        0
% 1.61/0.98  bin_hyper_res:                          0
% 1.61/0.98  prep_cycles:                            4
% 1.61/0.98  pred_elim_time:                         0.001
% 1.61/0.98  splitting_time:                         0.
% 1.61/0.98  sem_filter_time:                        0.
% 1.61/0.98  monotx_time:                            0.
% 1.61/0.98  subtype_inf_time:                       0.
% 1.61/0.98  
% 1.61/0.98  ------ Problem properties
% 1.61/0.98  
% 1.61/0.98  clauses:                                9
% 1.61/0.98  conjectures:                            2
% 1.61/0.98  epr:                                    0
% 1.61/0.98  horn:                                   9
% 1.61/0.98  ground:                                 3
% 1.61/0.98  unary:                                  3
% 1.61/0.98  binary:                                 6
% 1.61/0.98  lits:                                   15
% 1.61/0.98  lits_eq:                                4
% 1.61/0.98  fd_pure:                                0
% 1.61/0.98  fd_pseudo:                              0
% 1.61/0.98  fd_cond:                                0
% 1.61/0.98  fd_pseudo_cond:                         0
% 1.61/0.98  ac_symbols:                             0
% 1.61/0.98  
% 1.61/0.98  ------ Propositional Solver
% 1.61/0.98  
% 1.61/0.98  prop_solver_calls:                      28
% 1.61/0.98  prop_fast_solver_calls:                 309
% 1.61/0.98  smt_solver_calls:                       0
% 1.61/0.98  smt_fast_solver_calls:                  0
% 1.61/0.98  prop_num_of_clauses:                    624
% 1.61/0.98  prop_preprocess_simplified:             2366
% 1.61/0.98  prop_fo_subsumed:                       5
% 1.61/0.98  prop_solver_time:                       0.
% 1.61/0.98  smt_solver_time:                        0.
% 1.61/0.98  smt_fast_solver_time:                   0.
% 1.61/0.98  prop_fast_solver_time:                  0.
% 1.61/0.98  prop_unsat_core_time:                   0.
% 1.61/0.98  
% 1.61/0.98  ------ QBF
% 1.61/0.98  
% 1.61/0.98  qbf_q_res:                              0
% 1.61/0.98  qbf_num_tautologies:                    0
% 1.61/0.98  qbf_prep_cycles:                        0
% 1.61/0.98  
% 1.61/0.98  ------ BMC1
% 1.61/0.98  
% 1.61/0.98  bmc1_current_bound:                     -1
% 1.61/0.98  bmc1_last_solved_bound:                 -1
% 1.61/0.98  bmc1_unsat_core_size:                   -1
% 1.61/0.98  bmc1_unsat_core_parents_size:           -1
% 1.61/0.98  bmc1_merge_next_fun:                    0
% 1.61/0.98  bmc1_unsat_core_clauses_time:           0.
% 1.61/0.98  
% 1.61/0.98  ------ Instantiation
% 1.61/0.98  
% 1.61/0.98  inst_num_of_clauses:                    218
% 1.61/0.98  inst_num_in_passive:                    89
% 1.61/0.98  inst_num_in_active:                     101
% 1.61/0.98  inst_num_in_unprocessed:                28
% 1.61/0.98  inst_num_of_loops:                      130
% 1.61/0.98  inst_num_of_learning_restarts:          0
% 1.61/0.98  inst_num_moves_active_passive:          23
% 1.61/0.98  inst_lit_activity:                      0
% 1.61/0.98  inst_lit_activity_moves:                0
% 1.61/0.98  inst_num_tautologies:                   0
% 1.61/0.98  inst_num_prop_implied:                  0
% 1.61/0.98  inst_num_existing_simplified:           0
% 1.61/0.98  inst_num_eq_res_simplified:             0
% 1.61/0.98  inst_num_child_elim:                    0
% 1.61/0.98  inst_num_of_dismatching_blockings:      145
% 1.61/0.98  inst_num_of_non_proper_insts:           280
% 1.61/0.98  inst_num_of_duplicates:                 0
% 1.61/0.98  inst_inst_num_from_inst_to_res:         0
% 1.61/0.98  inst_dismatching_checking_time:         0.
% 1.61/0.98  
% 1.61/0.98  ------ Resolution
% 1.61/0.98  
% 1.61/0.98  res_num_of_clauses:                     0
% 1.61/0.98  res_num_in_passive:                     0
% 1.61/0.98  res_num_in_active:                      0
% 1.61/0.98  res_num_of_loops:                       68
% 1.61/0.98  res_forward_subset_subsumed:            10
% 1.61/0.98  res_backward_subset_subsumed:           0
% 1.61/0.98  res_forward_subsumed:                   0
% 1.61/0.98  res_backward_subsumed:                  0
% 1.61/0.98  res_forward_subsumption_resolution:     0
% 1.61/0.98  res_backward_subsumption_resolution:    0
% 1.61/0.98  res_clause_to_clause_subsumption:       55
% 1.61/0.98  res_orphan_elimination:                 0
% 1.61/0.98  res_tautology_del:                      31
% 1.61/0.98  res_num_eq_res_simplified:              0
% 1.61/0.98  res_num_sel_changes:                    0
% 1.61/0.98  res_moves_from_active_to_pass:          0
% 1.61/0.98  
% 1.61/0.98  ------ Superposition
% 1.61/0.98  
% 1.61/0.98  sup_time_total:                         0.
% 1.61/0.98  sup_time_generating:                    0.
% 1.61/0.98  sup_time_sim_full:                      0.
% 1.61/0.98  sup_time_sim_immed:                     0.
% 1.61/0.98  
% 1.61/0.98  sup_num_of_clauses:                     29
% 1.61/0.98  sup_num_in_active:                      23
% 1.61/0.98  sup_num_in_passive:                     6
% 1.61/0.98  sup_num_of_loops:                       24
% 1.61/0.98  sup_fw_superposition:                   18
% 1.61/0.98  sup_bw_superposition:                   5
% 1.61/0.98  sup_immediate_simplified:               3
% 1.61/0.98  sup_given_eliminated:                   0
% 1.61/0.98  comparisons_done:                       0
% 1.61/0.98  comparisons_avoided:                    0
% 1.61/0.98  
% 1.61/0.98  ------ Simplifications
% 1.61/0.98  
% 1.61/0.98  
% 1.61/0.98  sim_fw_subset_subsumed:                 1
% 1.61/0.98  sim_bw_subset_subsumed:                 0
% 1.61/0.98  sim_fw_subsumed:                        0
% 1.61/0.98  sim_bw_subsumed:                        0
% 1.61/0.98  sim_fw_subsumption_res:                 0
% 1.61/0.98  sim_bw_subsumption_res:                 0
% 1.61/0.98  sim_tautology_del:                      0
% 1.61/0.98  sim_eq_tautology_del:                   0
% 1.61/0.98  sim_eq_res_simp:                        0
% 1.61/0.98  sim_fw_demodulated:                     0
% 1.61/0.98  sim_bw_demodulated:                     2
% 1.61/0.98  sim_light_normalised:                   5
% 1.61/0.98  sim_joinable_taut:                      0
% 1.61/0.98  sim_joinable_simp:                      0
% 1.61/0.98  sim_ac_normalised:                      0
% 1.61/0.98  sim_smt_subsumption:                    0
% 1.61/0.98  
%------------------------------------------------------------------------------
