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
% DateTime   : Thu Dec  3 11:32:12 EST 2020

% Result     : Theorem 1.16s
% Output     : CNFRefutation 1.16s
% Verified   : 
% Statistics : Number of formulae       :   74 (1031 expanded)
%              Number of clauses        :   33 ( 133 expanded)
%              Number of leaves         :   13 ( 320 expanded)
%              Depth                    :   16
%              Number of atoms          :  156 (2121 expanded)
%              Number of equality atoms :  135 (1992 expanded)
%              Maximal formula depth    :   11 (   3 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f9,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f6,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f33,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f23,f24])).

fof(f34,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1)) ),
    inference(definition_unfolding,[],[f28,f33])).

fof(f37,plain,(
    ! [X0,X1] :
      ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(definition_unfolding,[],[f19,f34])).

fof(f10,conjecture,(
    ! [X0,X1,X2] :
      ~ ( ~ ( k1_xboole_0 = X2
            & k1_tarski(X0) = X1 )
        & ~ ( k1_tarski(X0) = X2
            & k1_xboole_0 = X1 )
        & ~ ( k1_tarski(X0) = X2
            & k1_tarski(X0) = X1 )
        & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ~ ( ~ ( k1_xboole_0 = X2
              & k1_tarski(X0) = X1 )
          & ~ ( k1_tarski(X0) = X2
              & k1_xboole_0 = X1 )
          & ~ ( k1_tarski(X0) = X2
              & k1_tarski(X0) = X1 )
          & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f13,plain,(
    ? [X0,X1,X2] :
      ( ( k1_xboole_0 != X2
        | k1_tarski(X0) != X1 )
      & ( k1_tarski(X0) != X2
        | k1_xboole_0 != X1 )
      & ( k1_tarski(X0) != X2
        | k1_tarski(X0) != X1 )
      & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f16,plain,
    ( ? [X0,X1,X2] :
        ( ( k1_xboole_0 != X2
          | k1_tarski(X0) != X1 )
        & ( k1_tarski(X0) != X2
          | k1_xboole_0 != X1 )
        & ( k1_tarski(X0) != X2
          | k1_tarski(X0) != X1 )
        & k2_xboole_0(X1,X2) = k1_tarski(X0) )
   => ( ( k1_xboole_0 != sK2
        | k1_tarski(sK0) != sK1 )
      & ( k1_tarski(sK0) != sK2
        | k1_xboole_0 != sK1 )
      & ( k1_tarski(sK0) != sK2
        | k1_tarski(sK0) != sK1 )
      & k2_xboole_0(sK1,sK2) = k1_tarski(sK0) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,
    ( ( k1_xboole_0 != sK2
      | k1_tarski(sK0) != sK1 )
    & ( k1_tarski(sK0) != sK2
      | k1_xboole_0 != sK1 )
    & ( k1_tarski(sK0) != sK2
      | k1_tarski(sK0) != sK1 )
    & k2_xboole_0(sK1,sK2) = k1_tarski(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f13,f16])).

fof(f29,plain,(
    k2_xboole_0(sK1,sK2) = k1_tarski(sK0) ),
    inference(cnf_transformation,[],[f17])).

fof(f5,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f35,plain,(
    ! [X0] : k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0) ),
    inference(definition_unfolding,[],[f22,f33])).

fof(f45,plain,(
    k2_enumset1(sK0,sK0,sK0,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK2)) ),
    inference(definition_unfolding,[],[f29,f34,f35])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f36,plain,(
    ! [X0,X1] : k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(X1,X1,X1,X0)) ),
    inference(definition_unfolding,[],[f18,f34,f34])).

fof(f4,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f38,plain,(
    ! [X0,X1] : r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) ),
    inference(definition_unfolding,[],[f21,f34])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,k1_tarski(X1))
    <=> ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(X0,k1_tarski(X1))
        | ( k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k1_tarski(X1)) ) ) ),
    inference(flattening,[],[f14])).

fof(f25,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k1_tarski(X1)) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f41,plain,(
    ! [X0,X1] :
      ( k2_enumset1(X1,X1,X1,X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X1)) ) ),
    inference(definition_unfolding,[],[f25,f35,f35])).

fof(f30,plain,
    ( k1_tarski(sK0) != sK2
    | k1_tarski(sK0) != sK1 ),
    inference(cnf_transformation,[],[f17])).

fof(f44,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) != sK2
    | k2_enumset1(sK0,sK0,sK0,sK0) != sK1 ),
    inference(definition_unfolding,[],[f30,f35,f35])).

fof(f32,plain,
    ( k1_xboole_0 != sK2
    | k1_tarski(sK0) != sK1 ),
    inference(cnf_transformation,[],[f17])).

fof(f42,plain,
    ( k1_xboole_0 != sK2
    | k2_enumset1(sK0,sK0,sK0,sK0) != sK1 ),
    inference(definition_unfolding,[],[f32,f35])).

fof(f31,plain,
    ( k1_tarski(sK0) != sK2
    | k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f17])).

fof(f43,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) != sK2
    | k1_xboole_0 != sK1 ),
    inference(definition_unfolding,[],[f31,f35])).

cnf(c_2,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f20])).

cnf(c_238,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_239,plain,
    ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_1124,plain,
    ( k3_tarski(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0)) = X0 ),
    inference(superposition,[status(thm)],[c_238,c_239])).

cnf(c_10,negated_conjecture,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK2)) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_0,plain,
    ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(X1,X1,X1,X0)) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_3,plain,
    ( r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_237,plain,
    ( r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_471,plain,
    ( r1_tarski(X0,k3_tarski(k2_enumset1(X1,X1,X1,X0))) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_237])).

cnf(c_547,plain,
    ( r1_tarski(sK2,k2_enumset1(sK0,sK0,sK0,sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_10,c_471])).

cnf(c_6,plain,
    ( ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X1))
    | k2_enumset1(X1,X1,X1,X1) = X0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_234,plain,
    ( k2_enumset1(X0,X0,X0,X0) = X1
    | k1_xboole_0 = X1
    | r1_tarski(X1,k2_enumset1(X0,X0,X0,X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_601,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = sK2
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_547,c_234])).

cnf(c_387,plain,
    ( r1_tarski(sK1,k2_enumset1(sK0,sK0,sK0,sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_10,c_237])).

cnf(c_538,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = sK1
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_387,c_234])).

cnf(c_9,negated_conjecture,
    ( k2_enumset1(sK0,sK0,sK0,sK0) != sK1
    | k2_enumset1(sK0,sK0,sK0,sK0) != sK2 ),
    inference(cnf_transformation,[],[f44])).

cnf(c_7,negated_conjecture,
    ( k2_enumset1(sK0,sK0,sK0,sK0) != sK1
    | k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f42])).

cnf(c_126,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_284,plain,
    ( sK2 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK2 ),
    inference(instantiation,[status(thm)],[c_126])).

cnf(c_331,plain,
    ( sK2 != k1_xboole_0
    | k1_xboole_0 = sK2
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_284])).

cnf(c_125,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_332,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_125])).

cnf(c_655,plain,
    ( sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_538,c_9,c_7,c_331,c_332,c_601])).

cnf(c_8,negated_conjecture,
    ( k2_enumset1(sK0,sK0,sK0,sK0) != sK2
    | k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_661,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) != sK2
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_655,c_8])).

cnf(c_670,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) != sK2 ),
    inference(equality_resolution_simp,[status(thm)],[c_661])).

cnf(c_969,plain,
    ( sK2 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_601,c_670])).

cnf(c_663,plain,
    ( k3_tarski(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,sK2)) = k2_enumset1(sK0,sK0,sK0,sK0) ),
    inference(demodulation,[status(thm)],[c_655,c_10])).

cnf(c_974,plain,
    ( k3_tarski(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0)) = k2_enumset1(sK0,sK0,sK0,sK0) ),
    inference(demodulation,[status(thm)],[c_969,c_663])).

cnf(c_1137,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1124,c_974])).

cnf(c_662,plain,
    ( k2_enumset1(sK0,sK0,sK0,sK0) != k1_xboole_0
    | sK2 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_655,c_7])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1137,c_670,c_662,c_601])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:27:42 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 1.16/1.10  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.16/1.10  
% 1.16/1.10  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.16/1.10  
% 1.16/1.10  ------  iProver source info
% 1.16/1.10  
% 1.16/1.10  git: date: 2020-06-30 10:37:57 +0100
% 1.16/1.10  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.16/1.10  git: non_committed_changes: false
% 1.16/1.10  git: last_make_outside_of_git: false
% 1.16/1.10  
% 1.16/1.10  ------ 
% 1.16/1.10  
% 1.16/1.10  ------ Input Options
% 1.16/1.10  
% 1.16/1.10  --out_options                           all
% 1.16/1.10  --tptp_safe_out                         true
% 1.16/1.10  --problem_path                          ""
% 1.16/1.10  --include_path                          ""
% 1.16/1.10  --clausifier                            res/vclausify_rel
% 1.16/1.10  --clausifier_options                    --mode clausify
% 1.16/1.10  --stdin                                 false
% 1.16/1.10  --stats_out                             all
% 1.16/1.10  
% 1.16/1.10  ------ General Options
% 1.16/1.10  
% 1.16/1.10  --fof                                   false
% 1.16/1.10  --time_out_real                         305.
% 1.16/1.10  --time_out_virtual                      -1.
% 1.16/1.10  --symbol_type_check                     false
% 1.16/1.10  --clausify_out                          false
% 1.16/1.10  --sig_cnt_out                           false
% 1.16/1.10  --trig_cnt_out                          false
% 1.16/1.10  --trig_cnt_out_tolerance                1.
% 1.16/1.10  --trig_cnt_out_sk_spl                   false
% 1.16/1.10  --abstr_cl_out                          false
% 1.16/1.10  
% 1.16/1.10  ------ Global Options
% 1.16/1.10  
% 1.16/1.10  --schedule                              default
% 1.16/1.10  --add_important_lit                     false
% 1.16/1.10  --prop_solver_per_cl                    1000
% 1.16/1.10  --min_unsat_core                        false
% 1.16/1.10  --soft_assumptions                      false
% 1.16/1.10  --soft_lemma_size                       3
% 1.16/1.10  --prop_impl_unit_size                   0
% 1.16/1.10  --prop_impl_unit                        []
% 1.16/1.10  --share_sel_clauses                     true
% 1.16/1.10  --reset_solvers                         false
% 1.16/1.10  --bc_imp_inh                            [conj_cone]
% 1.16/1.10  --conj_cone_tolerance                   3.
% 1.16/1.10  --extra_neg_conj                        none
% 1.16/1.10  --large_theory_mode                     true
% 1.16/1.10  --prolific_symb_bound                   200
% 1.16/1.10  --lt_threshold                          2000
% 1.16/1.10  --clause_weak_htbl                      true
% 1.16/1.10  --gc_record_bc_elim                     false
% 1.16/1.10  
% 1.16/1.10  ------ Preprocessing Options
% 1.16/1.10  
% 1.16/1.10  --preprocessing_flag                    true
% 1.16/1.10  --time_out_prep_mult                    0.1
% 1.16/1.10  --splitting_mode                        input
% 1.16/1.10  --splitting_grd                         true
% 1.16/1.10  --splitting_cvd                         false
% 1.16/1.10  --splitting_cvd_svl                     false
% 1.16/1.10  --splitting_nvd                         32
% 1.16/1.10  --sub_typing                            true
% 1.16/1.10  --prep_gs_sim                           true
% 1.16/1.10  --prep_unflatten                        true
% 1.16/1.10  --prep_res_sim                          true
% 1.16/1.10  --prep_upred                            true
% 1.16/1.10  --prep_sem_filter                       exhaustive
% 1.16/1.10  --prep_sem_filter_out                   false
% 1.16/1.10  --pred_elim                             true
% 1.16/1.10  --res_sim_input                         true
% 1.16/1.10  --eq_ax_congr_red                       true
% 1.16/1.10  --pure_diseq_elim                       true
% 1.16/1.10  --brand_transform                       false
% 1.16/1.10  --non_eq_to_eq                          false
% 1.16/1.10  --prep_def_merge                        true
% 1.16/1.10  --prep_def_merge_prop_impl              false
% 1.16/1.10  --prep_def_merge_mbd                    true
% 1.16/1.10  --prep_def_merge_tr_red                 false
% 1.16/1.10  --prep_def_merge_tr_cl                  false
% 1.16/1.10  --smt_preprocessing                     true
% 1.16/1.10  --smt_ac_axioms                         fast
% 1.16/1.10  --preprocessed_out                      false
% 1.16/1.10  --preprocessed_stats                    false
% 1.16/1.10  
% 1.16/1.10  ------ Abstraction refinement Options
% 1.16/1.10  
% 1.16/1.10  --abstr_ref                             []
% 1.16/1.10  --abstr_ref_prep                        false
% 1.16/1.10  --abstr_ref_until_sat                   false
% 1.16/1.10  --abstr_ref_sig_restrict                funpre
% 1.16/1.10  --abstr_ref_af_restrict_to_split_sk     false
% 1.16/1.10  --abstr_ref_under                       []
% 1.16/1.10  
% 1.16/1.10  ------ SAT Options
% 1.16/1.10  
% 1.16/1.10  --sat_mode                              false
% 1.16/1.10  --sat_fm_restart_options                ""
% 1.16/1.10  --sat_gr_def                            false
% 1.16/1.10  --sat_epr_types                         true
% 1.16/1.10  --sat_non_cyclic_types                  false
% 1.16/1.10  --sat_finite_models                     false
% 1.16/1.10  --sat_fm_lemmas                         false
% 1.16/1.10  --sat_fm_prep                           false
% 1.16/1.10  --sat_fm_uc_incr                        true
% 1.16/1.10  --sat_out_model                         small
% 1.16/1.10  --sat_out_clauses                       false
% 1.16/1.10  
% 1.16/1.10  ------ QBF Options
% 1.16/1.10  
% 1.16/1.10  --qbf_mode                              false
% 1.16/1.10  --qbf_elim_univ                         false
% 1.16/1.10  --qbf_dom_inst                          none
% 1.16/1.10  --qbf_dom_pre_inst                      false
% 1.16/1.10  --qbf_sk_in                             false
% 1.16/1.10  --qbf_pred_elim                         true
% 1.16/1.10  --qbf_split                             512
% 1.16/1.10  
% 1.16/1.10  ------ BMC1 Options
% 1.16/1.10  
% 1.16/1.10  --bmc1_incremental                      false
% 1.16/1.10  --bmc1_axioms                           reachable_all
% 1.16/1.10  --bmc1_min_bound                        0
% 1.16/1.10  --bmc1_max_bound                        -1
% 1.16/1.10  --bmc1_max_bound_default                -1
% 1.16/1.10  --bmc1_symbol_reachability              true
% 1.16/1.10  --bmc1_property_lemmas                  false
% 1.16/1.10  --bmc1_k_induction                      false
% 1.16/1.10  --bmc1_non_equiv_states                 false
% 1.16/1.10  --bmc1_deadlock                         false
% 1.16/1.10  --bmc1_ucm                              false
% 1.16/1.10  --bmc1_add_unsat_core                   none
% 1.16/1.10  --bmc1_unsat_core_children              false
% 1.16/1.10  --bmc1_unsat_core_extrapolate_axioms    false
% 1.16/1.10  --bmc1_out_stat                         full
% 1.16/1.10  --bmc1_ground_init                      false
% 1.16/1.10  --bmc1_pre_inst_next_state              false
% 1.16/1.10  --bmc1_pre_inst_state                   false
% 1.16/1.10  --bmc1_pre_inst_reach_state             false
% 1.16/1.10  --bmc1_out_unsat_core                   false
% 1.16/1.10  --bmc1_aig_witness_out                  false
% 1.16/1.10  --bmc1_verbose                          false
% 1.16/1.10  --bmc1_dump_clauses_tptp                false
% 1.16/1.10  --bmc1_dump_unsat_core_tptp             false
% 1.16/1.10  --bmc1_dump_file                        -
% 1.16/1.10  --bmc1_ucm_expand_uc_limit              128
% 1.16/1.10  --bmc1_ucm_n_expand_iterations          6
% 1.16/1.10  --bmc1_ucm_extend_mode                  1
% 1.16/1.10  --bmc1_ucm_init_mode                    2
% 1.16/1.10  --bmc1_ucm_cone_mode                    none
% 1.16/1.10  --bmc1_ucm_reduced_relation_type        0
% 1.16/1.10  --bmc1_ucm_relax_model                  4
% 1.16/1.10  --bmc1_ucm_full_tr_after_sat            true
% 1.16/1.10  --bmc1_ucm_expand_neg_assumptions       false
% 1.16/1.10  --bmc1_ucm_layered_model                none
% 1.16/1.10  --bmc1_ucm_max_lemma_size               10
% 1.16/1.10  
% 1.16/1.10  ------ AIG Options
% 1.16/1.10  
% 1.16/1.10  --aig_mode                              false
% 1.16/1.10  
% 1.16/1.10  ------ Instantiation Options
% 1.16/1.10  
% 1.16/1.10  --instantiation_flag                    true
% 1.16/1.10  --inst_sos_flag                         false
% 1.16/1.10  --inst_sos_phase                        true
% 1.16/1.10  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.16/1.10  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.16/1.10  --inst_lit_sel_side                     num_symb
% 1.16/1.10  --inst_solver_per_active                1400
% 1.16/1.10  --inst_solver_calls_frac                1.
% 1.16/1.10  --inst_passive_queue_type               priority_queues
% 1.16/1.10  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.16/1.10  --inst_passive_queues_freq              [25;2]
% 1.16/1.10  --inst_dismatching                      true
% 1.16/1.10  --inst_eager_unprocessed_to_passive     true
% 1.16/1.10  --inst_prop_sim_given                   true
% 1.16/1.10  --inst_prop_sim_new                     false
% 1.16/1.10  --inst_subs_new                         false
% 1.16/1.10  --inst_eq_res_simp                      false
% 1.16/1.10  --inst_subs_given                       false
% 1.16/1.10  --inst_orphan_elimination               true
% 1.16/1.10  --inst_learning_loop_flag               true
% 1.16/1.10  --inst_learning_start                   3000
% 1.16/1.10  --inst_learning_factor                  2
% 1.16/1.10  --inst_start_prop_sim_after_learn       3
% 1.16/1.10  --inst_sel_renew                        solver
% 1.16/1.10  --inst_lit_activity_flag                true
% 1.16/1.10  --inst_restr_to_given                   false
% 1.16/1.10  --inst_activity_threshold               500
% 1.16/1.10  --inst_out_proof                        true
% 1.16/1.10  
% 1.16/1.10  ------ Resolution Options
% 1.16/1.10  
% 1.16/1.10  --resolution_flag                       true
% 1.16/1.10  --res_lit_sel                           adaptive
% 1.16/1.10  --res_lit_sel_side                      none
% 1.16/1.10  --res_ordering                          kbo
% 1.16/1.10  --res_to_prop_solver                    active
% 1.16/1.10  --res_prop_simpl_new                    false
% 1.16/1.10  --res_prop_simpl_given                  true
% 1.16/1.10  --res_passive_queue_type                priority_queues
% 1.16/1.10  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.16/1.10  --res_passive_queues_freq               [15;5]
% 1.16/1.10  --res_forward_subs                      full
% 1.16/1.10  --res_backward_subs                     full
% 1.16/1.10  --res_forward_subs_resolution           true
% 1.16/1.10  --res_backward_subs_resolution          true
% 1.16/1.10  --res_orphan_elimination                true
% 1.16/1.10  --res_time_limit                        2.
% 1.16/1.10  --res_out_proof                         true
% 1.16/1.10  
% 1.16/1.10  ------ Superposition Options
% 1.16/1.10  
% 1.16/1.10  --superposition_flag                    true
% 1.16/1.10  --sup_passive_queue_type                priority_queues
% 1.16/1.10  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.16/1.10  --sup_passive_queues_freq               [8;1;4]
% 1.16/1.10  --demod_completeness_check              fast
% 1.16/1.10  --demod_use_ground                      true
% 1.16/1.10  --sup_to_prop_solver                    passive
% 1.16/1.10  --sup_prop_simpl_new                    true
% 1.16/1.10  --sup_prop_simpl_given                  true
% 1.16/1.10  --sup_fun_splitting                     false
% 1.16/1.10  --sup_smt_interval                      50000
% 1.16/1.10  
% 1.16/1.10  ------ Superposition Simplification Setup
% 1.16/1.10  
% 1.16/1.10  --sup_indices_passive                   []
% 1.16/1.10  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.16/1.10  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.16/1.10  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.16/1.10  --sup_full_triv                         [TrivRules;PropSubs]
% 1.16/1.10  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.16/1.10  --sup_full_bw                           [BwDemod]
% 1.16/1.10  --sup_immed_triv                        [TrivRules]
% 1.16/1.10  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.16/1.10  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.16/1.10  --sup_immed_bw_main                     []
% 1.16/1.10  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.16/1.10  --sup_input_triv                        [Unflattening;TrivRules]
% 1.16/1.10  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.16/1.10  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.16/1.10  
% 1.16/1.10  ------ Combination Options
% 1.16/1.10  
% 1.16/1.10  --comb_res_mult                         3
% 1.16/1.10  --comb_sup_mult                         2
% 1.16/1.10  --comb_inst_mult                        10
% 1.16/1.10  
% 1.16/1.10  ------ Debug Options
% 1.16/1.10  
% 1.16/1.10  --dbg_backtrace                         false
% 1.16/1.10  --dbg_dump_prop_clauses                 false
% 1.16/1.10  --dbg_dump_prop_clauses_file            -
% 1.16/1.10  --dbg_out_stat                          false
% 1.16/1.10  ------ Parsing...
% 1.16/1.10  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.16/1.10  
% 1.16/1.10  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.16/1.10  
% 1.16/1.10  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.16/1.10  
% 1.16/1.10  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.16/1.10  ------ Proving...
% 1.16/1.10  ------ Problem Properties 
% 1.16/1.10  
% 1.16/1.10  
% 1.16/1.10  clauses                                 11
% 1.16/1.10  conjectures                             4
% 1.16/1.10  EPR                                     1
% 1.16/1.10  Horn                                    10
% 1.16/1.10  unary                                   6
% 1.16/1.10  binary                                  4
% 1.16/1.10  lits                                    17
% 1.16/1.10  lits eq                                 11
% 1.16/1.10  fd_pure                                 0
% 1.16/1.10  fd_pseudo                               0
% 1.16/1.10  fd_cond                                 0
% 1.16/1.10  fd_pseudo_cond                          1
% 1.16/1.10  AC symbols                              0
% 1.16/1.10  
% 1.16/1.10  ------ Schedule dynamic 5 is on 
% 1.16/1.10  
% 1.16/1.10  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.16/1.10  
% 1.16/1.10  
% 1.16/1.10  ------ 
% 1.16/1.10  Current options:
% 1.16/1.10  ------ 
% 1.16/1.10  
% 1.16/1.10  ------ Input Options
% 1.16/1.10  
% 1.16/1.10  --out_options                           all
% 1.16/1.10  --tptp_safe_out                         true
% 1.16/1.10  --problem_path                          ""
% 1.16/1.10  --include_path                          ""
% 1.16/1.10  --clausifier                            res/vclausify_rel
% 1.16/1.10  --clausifier_options                    --mode clausify
% 1.16/1.10  --stdin                                 false
% 1.16/1.10  --stats_out                             all
% 1.16/1.10  
% 1.16/1.10  ------ General Options
% 1.16/1.10  
% 1.16/1.10  --fof                                   false
% 1.16/1.10  --time_out_real                         305.
% 1.16/1.10  --time_out_virtual                      -1.
% 1.16/1.10  --symbol_type_check                     false
% 1.16/1.10  --clausify_out                          false
% 1.16/1.10  --sig_cnt_out                           false
% 1.16/1.10  --trig_cnt_out                          false
% 1.16/1.10  --trig_cnt_out_tolerance                1.
% 1.16/1.10  --trig_cnt_out_sk_spl                   false
% 1.16/1.10  --abstr_cl_out                          false
% 1.16/1.10  
% 1.16/1.10  ------ Global Options
% 1.16/1.10  
% 1.16/1.10  --schedule                              default
% 1.16/1.10  --add_important_lit                     false
% 1.16/1.10  --prop_solver_per_cl                    1000
% 1.16/1.10  --min_unsat_core                        false
% 1.16/1.10  --soft_assumptions                      false
% 1.16/1.10  --soft_lemma_size                       3
% 1.16/1.10  --prop_impl_unit_size                   0
% 1.16/1.10  --prop_impl_unit                        []
% 1.16/1.10  --share_sel_clauses                     true
% 1.16/1.10  --reset_solvers                         false
% 1.16/1.10  --bc_imp_inh                            [conj_cone]
% 1.16/1.10  --conj_cone_tolerance                   3.
% 1.16/1.10  --extra_neg_conj                        none
% 1.16/1.10  --large_theory_mode                     true
% 1.16/1.10  --prolific_symb_bound                   200
% 1.16/1.10  --lt_threshold                          2000
% 1.16/1.10  --clause_weak_htbl                      true
% 1.16/1.10  --gc_record_bc_elim                     false
% 1.16/1.10  
% 1.16/1.10  ------ Preprocessing Options
% 1.16/1.10  
% 1.16/1.10  --preprocessing_flag                    true
% 1.16/1.10  --time_out_prep_mult                    0.1
% 1.16/1.10  --splitting_mode                        input
% 1.16/1.10  --splitting_grd                         true
% 1.16/1.10  --splitting_cvd                         false
% 1.16/1.10  --splitting_cvd_svl                     false
% 1.16/1.10  --splitting_nvd                         32
% 1.16/1.10  --sub_typing                            true
% 1.16/1.10  --prep_gs_sim                           true
% 1.16/1.10  --prep_unflatten                        true
% 1.16/1.10  --prep_res_sim                          true
% 1.16/1.10  --prep_upred                            true
% 1.16/1.10  --prep_sem_filter                       exhaustive
% 1.16/1.10  --prep_sem_filter_out                   false
% 1.16/1.10  --pred_elim                             true
% 1.16/1.10  --res_sim_input                         true
% 1.16/1.10  --eq_ax_congr_red                       true
% 1.16/1.10  --pure_diseq_elim                       true
% 1.16/1.10  --brand_transform                       false
% 1.16/1.10  --non_eq_to_eq                          false
% 1.16/1.10  --prep_def_merge                        true
% 1.16/1.10  --prep_def_merge_prop_impl              false
% 1.16/1.10  --prep_def_merge_mbd                    true
% 1.16/1.10  --prep_def_merge_tr_red                 false
% 1.16/1.10  --prep_def_merge_tr_cl                  false
% 1.16/1.10  --smt_preprocessing                     true
% 1.16/1.10  --smt_ac_axioms                         fast
% 1.16/1.10  --preprocessed_out                      false
% 1.16/1.10  --preprocessed_stats                    false
% 1.16/1.10  
% 1.16/1.10  ------ Abstraction refinement Options
% 1.16/1.10  
% 1.16/1.10  --abstr_ref                             []
% 1.16/1.10  --abstr_ref_prep                        false
% 1.16/1.10  --abstr_ref_until_sat                   false
% 1.16/1.10  --abstr_ref_sig_restrict                funpre
% 1.16/1.10  --abstr_ref_af_restrict_to_split_sk     false
% 1.16/1.10  --abstr_ref_under                       []
% 1.16/1.10  
% 1.16/1.10  ------ SAT Options
% 1.16/1.10  
% 1.16/1.10  --sat_mode                              false
% 1.16/1.10  --sat_fm_restart_options                ""
% 1.16/1.10  --sat_gr_def                            false
% 1.16/1.10  --sat_epr_types                         true
% 1.16/1.10  --sat_non_cyclic_types                  false
% 1.16/1.10  --sat_finite_models                     false
% 1.16/1.10  --sat_fm_lemmas                         false
% 1.16/1.10  --sat_fm_prep                           false
% 1.16/1.10  --sat_fm_uc_incr                        true
% 1.16/1.10  --sat_out_model                         small
% 1.16/1.10  --sat_out_clauses                       false
% 1.16/1.10  
% 1.16/1.10  ------ QBF Options
% 1.16/1.10  
% 1.16/1.10  --qbf_mode                              false
% 1.16/1.10  --qbf_elim_univ                         false
% 1.16/1.10  --qbf_dom_inst                          none
% 1.16/1.10  --qbf_dom_pre_inst                      false
% 1.16/1.10  --qbf_sk_in                             false
% 1.16/1.10  --qbf_pred_elim                         true
% 1.16/1.10  --qbf_split                             512
% 1.16/1.10  
% 1.16/1.10  ------ BMC1 Options
% 1.16/1.10  
% 1.16/1.10  --bmc1_incremental                      false
% 1.16/1.10  --bmc1_axioms                           reachable_all
% 1.16/1.10  --bmc1_min_bound                        0
% 1.16/1.10  --bmc1_max_bound                        -1
% 1.16/1.10  --bmc1_max_bound_default                -1
% 1.16/1.10  --bmc1_symbol_reachability              true
% 1.16/1.10  --bmc1_property_lemmas                  false
% 1.16/1.10  --bmc1_k_induction                      false
% 1.16/1.10  --bmc1_non_equiv_states                 false
% 1.16/1.10  --bmc1_deadlock                         false
% 1.16/1.10  --bmc1_ucm                              false
% 1.16/1.10  --bmc1_add_unsat_core                   none
% 1.16/1.10  --bmc1_unsat_core_children              false
% 1.16/1.10  --bmc1_unsat_core_extrapolate_axioms    false
% 1.16/1.10  --bmc1_out_stat                         full
% 1.16/1.10  --bmc1_ground_init                      false
% 1.16/1.10  --bmc1_pre_inst_next_state              false
% 1.16/1.10  --bmc1_pre_inst_state                   false
% 1.16/1.10  --bmc1_pre_inst_reach_state             false
% 1.16/1.10  --bmc1_out_unsat_core                   false
% 1.16/1.10  --bmc1_aig_witness_out                  false
% 1.16/1.10  --bmc1_verbose                          false
% 1.16/1.10  --bmc1_dump_clauses_tptp                false
% 1.16/1.10  --bmc1_dump_unsat_core_tptp             false
% 1.16/1.10  --bmc1_dump_file                        -
% 1.16/1.10  --bmc1_ucm_expand_uc_limit              128
% 1.16/1.10  --bmc1_ucm_n_expand_iterations          6
% 1.16/1.10  --bmc1_ucm_extend_mode                  1
% 1.16/1.10  --bmc1_ucm_init_mode                    2
% 1.16/1.10  --bmc1_ucm_cone_mode                    none
% 1.16/1.10  --bmc1_ucm_reduced_relation_type        0
% 1.16/1.10  --bmc1_ucm_relax_model                  4
% 1.16/1.10  --bmc1_ucm_full_tr_after_sat            true
% 1.16/1.10  --bmc1_ucm_expand_neg_assumptions       false
% 1.16/1.10  --bmc1_ucm_layered_model                none
% 1.16/1.10  --bmc1_ucm_max_lemma_size               10
% 1.16/1.10  
% 1.16/1.10  ------ AIG Options
% 1.16/1.10  
% 1.16/1.10  --aig_mode                              false
% 1.16/1.10  
% 1.16/1.10  ------ Instantiation Options
% 1.16/1.10  
% 1.16/1.10  --instantiation_flag                    true
% 1.16/1.10  --inst_sos_flag                         false
% 1.16/1.10  --inst_sos_phase                        true
% 1.16/1.10  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.16/1.10  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.16/1.10  --inst_lit_sel_side                     none
% 1.16/1.10  --inst_solver_per_active                1400
% 1.16/1.10  --inst_solver_calls_frac                1.
% 1.16/1.10  --inst_passive_queue_type               priority_queues
% 1.16/1.10  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.16/1.10  --inst_passive_queues_freq              [25;2]
% 1.16/1.10  --inst_dismatching                      true
% 1.16/1.10  --inst_eager_unprocessed_to_passive     true
% 1.16/1.10  --inst_prop_sim_given                   true
% 1.16/1.10  --inst_prop_sim_new                     false
% 1.16/1.10  --inst_subs_new                         false
% 1.16/1.10  --inst_eq_res_simp                      false
% 1.16/1.10  --inst_subs_given                       false
% 1.16/1.10  --inst_orphan_elimination               true
% 1.16/1.10  --inst_learning_loop_flag               true
% 1.16/1.10  --inst_learning_start                   3000
% 1.16/1.10  --inst_learning_factor                  2
% 1.16/1.10  --inst_start_prop_sim_after_learn       3
% 1.16/1.10  --inst_sel_renew                        solver
% 1.16/1.10  --inst_lit_activity_flag                true
% 1.16/1.10  --inst_restr_to_given                   false
% 1.16/1.10  --inst_activity_threshold               500
% 1.16/1.10  --inst_out_proof                        true
% 1.16/1.10  
% 1.16/1.10  ------ Resolution Options
% 1.16/1.10  
% 1.16/1.10  --resolution_flag                       false
% 1.16/1.10  --res_lit_sel                           adaptive
% 1.16/1.10  --res_lit_sel_side                      none
% 1.16/1.10  --res_ordering                          kbo
% 1.16/1.10  --res_to_prop_solver                    active
% 1.16/1.10  --res_prop_simpl_new                    false
% 1.16/1.10  --res_prop_simpl_given                  true
% 1.16/1.10  --res_passive_queue_type                priority_queues
% 1.16/1.10  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.16/1.10  --res_passive_queues_freq               [15;5]
% 1.16/1.10  --res_forward_subs                      full
% 1.16/1.10  --res_backward_subs                     full
% 1.16/1.10  --res_forward_subs_resolution           true
% 1.16/1.10  --res_backward_subs_resolution          true
% 1.16/1.10  --res_orphan_elimination                true
% 1.16/1.10  --res_time_limit                        2.
% 1.16/1.10  --res_out_proof                         true
% 1.16/1.10  
% 1.16/1.10  ------ Superposition Options
% 1.16/1.10  
% 1.16/1.10  --superposition_flag                    true
% 1.16/1.10  --sup_passive_queue_type                priority_queues
% 1.16/1.10  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.16/1.10  --sup_passive_queues_freq               [8;1;4]
% 1.16/1.10  --demod_completeness_check              fast
% 1.16/1.10  --demod_use_ground                      true
% 1.16/1.10  --sup_to_prop_solver                    passive
% 1.16/1.10  --sup_prop_simpl_new                    true
% 1.16/1.10  --sup_prop_simpl_given                  true
% 1.16/1.10  --sup_fun_splitting                     false
% 1.16/1.10  --sup_smt_interval                      50000
% 1.16/1.10  
% 1.16/1.10  ------ Superposition Simplification Setup
% 1.16/1.10  
% 1.16/1.10  --sup_indices_passive                   []
% 1.16/1.10  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.16/1.10  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.16/1.10  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.16/1.10  --sup_full_triv                         [TrivRules;PropSubs]
% 1.16/1.10  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.16/1.10  --sup_full_bw                           [BwDemod]
% 1.16/1.10  --sup_immed_triv                        [TrivRules]
% 1.16/1.10  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.16/1.10  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.16/1.10  --sup_immed_bw_main                     []
% 1.16/1.10  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.16/1.10  --sup_input_triv                        [Unflattening;TrivRules]
% 1.16/1.10  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.16/1.10  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.16/1.10  
% 1.16/1.10  ------ Combination Options
% 1.16/1.10  
% 1.16/1.10  --comb_res_mult                         3
% 1.16/1.10  --comb_sup_mult                         2
% 1.16/1.10  --comb_inst_mult                        10
% 1.16/1.10  
% 1.16/1.10  ------ Debug Options
% 1.16/1.10  
% 1.16/1.10  --dbg_backtrace                         false
% 1.16/1.10  --dbg_dump_prop_clauses                 false
% 1.16/1.10  --dbg_dump_prop_clauses_file            -
% 1.16/1.10  --dbg_out_stat                          false
% 1.16/1.10  
% 1.16/1.10  
% 1.16/1.10  
% 1.16/1.10  
% 1.16/1.10  ------ Proving...
% 1.16/1.10  
% 1.16/1.10  
% 1.16/1.10  % SZS status Theorem for theBenchmark.p
% 1.16/1.10  
% 1.16/1.10  % SZS output start CNFRefutation for theBenchmark.p
% 1.16/1.10  
% 1.16/1.10  fof(f3,axiom,(
% 1.16/1.10    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f20,plain,(
% 1.16/1.10    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.16/1.10    inference(cnf_transformation,[],[f3])).
% 1.16/1.10  
% 1.16/1.10  fof(f2,axiom,(
% 1.16/1.10    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f12,plain,(
% 1.16/1.10    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 1.16/1.10    inference(ennf_transformation,[],[f2])).
% 1.16/1.10  
% 1.16/1.10  fof(f19,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 1.16/1.10    inference(cnf_transformation,[],[f12])).
% 1.16/1.10  
% 1.16/1.10  fof(f9,axiom,(
% 1.16/1.10    ! [X0,X1] : k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f28,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_tarski(X0,X1))) )),
% 1.16/1.10    inference(cnf_transformation,[],[f9])).
% 1.16/1.10  
% 1.16/1.10  fof(f6,axiom,(
% 1.16/1.10    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f23,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 1.16/1.10    inference(cnf_transformation,[],[f6])).
% 1.16/1.10  
% 1.16/1.10  fof(f7,axiom,(
% 1.16/1.10    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f24,plain,(
% 1.16/1.10    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 1.16/1.10    inference(cnf_transformation,[],[f7])).
% 1.16/1.10  
% 1.16/1.10  fof(f33,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 1.16/1.10    inference(definition_unfolding,[],[f23,f24])).
% 1.16/1.10  
% 1.16/1.10  fof(f34,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k3_tarski(k2_enumset1(X0,X0,X0,X1))) )),
% 1.16/1.10    inference(definition_unfolding,[],[f28,f33])).
% 1.16/1.10  
% 1.16/1.10  fof(f37,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1 | ~r1_tarski(X0,X1)) )),
% 1.16/1.10    inference(definition_unfolding,[],[f19,f34])).
% 1.16/1.10  
% 1.16/1.10  fof(f10,conjecture,(
% 1.16/1.10    ! [X0,X1,X2] : ~(~(k1_xboole_0 = X2 & k1_tarski(X0) = X1) & ~(k1_tarski(X0) = X2 & k1_xboole_0 = X1) & ~(k1_tarski(X0) = X2 & k1_tarski(X0) = X1) & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f11,negated_conjecture,(
% 1.16/1.10    ~! [X0,X1,X2] : ~(~(k1_xboole_0 = X2 & k1_tarski(X0) = X1) & ~(k1_tarski(X0) = X2 & k1_xboole_0 = X1) & ~(k1_tarski(X0) = X2 & k1_tarski(X0) = X1) & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 1.16/1.10    inference(negated_conjecture,[],[f10])).
% 1.16/1.10  
% 1.16/1.10  fof(f13,plain,(
% 1.16/1.10    ? [X0,X1,X2] : ((k1_xboole_0 != X2 | k1_tarski(X0) != X1) & (k1_tarski(X0) != X2 | k1_xboole_0 != X1) & (k1_tarski(X0) != X2 | k1_tarski(X0) != X1) & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 1.16/1.10    inference(ennf_transformation,[],[f11])).
% 1.16/1.10  
% 1.16/1.10  fof(f16,plain,(
% 1.16/1.10    ? [X0,X1,X2] : ((k1_xboole_0 != X2 | k1_tarski(X0) != X1) & (k1_tarski(X0) != X2 | k1_xboole_0 != X1) & (k1_tarski(X0) != X2 | k1_tarski(X0) != X1) & k2_xboole_0(X1,X2) = k1_tarski(X0)) => ((k1_xboole_0 != sK2 | k1_tarski(sK0) != sK1) & (k1_tarski(sK0) != sK2 | k1_xboole_0 != sK1) & (k1_tarski(sK0) != sK2 | k1_tarski(sK0) != sK1) & k2_xboole_0(sK1,sK2) = k1_tarski(sK0))),
% 1.16/1.10    introduced(choice_axiom,[])).
% 1.16/1.10  
% 1.16/1.10  fof(f17,plain,(
% 1.16/1.10    (k1_xboole_0 != sK2 | k1_tarski(sK0) != sK1) & (k1_tarski(sK0) != sK2 | k1_xboole_0 != sK1) & (k1_tarski(sK0) != sK2 | k1_tarski(sK0) != sK1) & k2_xboole_0(sK1,sK2) = k1_tarski(sK0)),
% 1.16/1.10    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f13,f16])).
% 1.16/1.10  
% 1.16/1.10  fof(f29,plain,(
% 1.16/1.10    k2_xboole_0(sK1,sK2) = k1_tarski(sK0)),
% 1.16/1.10    inference(cnf_transformation,[],[f17])).
% 1.16/1.10  
% 1.16/1.10  fof(f5,axiom,(
% 1.16/1.10    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f22,plain,(
% 1.16/1.10    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.16/1.10    inference(cnf_transformation,[],[f5])).
% 1.16/1.10  
% 1.16/1.10  fof(f35,plain,(
% 1.16/1.10    ( ! [X0] : (k1_tarski(X0) = k2_enumset1(X0,X0,X0,X0)) )),
% 1.16/1.10    inference(definition_unfolding,[],[f22,f33])).
% 1.16/1.10  
% 1.16/1.10  fof(f45,plain,(
% 1.16/1.10    k2_enumset1(sK0,sK0,sK0,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK2))),
% 1.16/1.10    inference(definition_unfolding,[],[f29,f34,f35])).
% 1.16/1.10  
% 1.16/1.10  fof(f1,axiom,(
% 1.16/1.10    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f18,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 1.16/1.10    inference(cnf_transformation,[],[f1])).
% 1.16/1.10  
% 1.16/1.10  fof(f36,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(X1,X1,X1,X0))) )),
% 1.16/1.10    inference(definition_unfolding,[],[f18,f34,f34])).
% 1.16/1.10  
% 1.16/1.10  fof(f4,axiom,(
% 1.16/1.10    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f21,plain,(
% 1.16/1.10    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 1.16/1.10    inference(cnf_transformation,[],[f4])).
% 1.16/1.10  
% 1.16/1.10  fof(f38,plain,(
% 1.16/1.10    ( ! [X0,X1] : (r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1)))) )),
% 1.16/1.10    inference(definition_unfolding,[],[f21,f34])).
% 1.16/1.10  
% 1.16/1.10  fof(f8,axiom,(
% 1.16/1.10    ! [X0,X1] : (r1_tarski(X0,k1_tarski(X1)) <=> (k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 1.16/1.10    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.16/1.10  
% 1.16/1.10  fof(f14,plain,(
% 1.16/1.10    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k1_tarski(X1))))),
% 1.16/1.10    inference(nnf_transformation,[],[f8])).
% 1.16/1.10  
% 1.16/1.10  fof(f15,plain,(
% 1.16/1.10    ! [X0,X1] : ((r1_tarski(X0,k1_tarski(X1)) | (k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))))),
% 1.16/1.10    inference(flattening,[],[f14])).
% 1.16/1.10  
% 1.16/1.10  fof(f25,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k1_tarski(X1))) )),
% 1.16/1.10    inference(cnf_transformation,[],[f15])).
% 1.16/1.10  
% 1.16/1.10  fof(f41,plain,(
% 1.16/1.10    ( ! [X0,X1] : (k2_enumset1(X1,X1,X1,X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_enumset1(X1,X1,X1,X1))) )),
% 1.16/1.10    inference(definition_unfolding,[],[f25,f35,f35])).
% 1.16/1.10  
% 1.16/1.10  fof(f30,plain,(
% 1.16/1.10    k1_tarski(sK0) != sK2 | k1_tarski(sK0) != sK1),
% 1.16/1.10    inference(cnf_transformation,[],[f17])).
% 1.16/1.10  
% 1.16/1.10  fof(f44,plain,(
% 1.16/1.10    k2_enumset1(sK0,sK0,sK0,sK0) != sK2 | k2_enumset1(sK0,sK0,sK0,sK0) != sK1),
% 1.16/1.10    inference(definition_unfolding,[],[f30,f35,f35])).
% 1.16/1.10  
% 1.16/1.10  fof(f32,plain,(
% 1.16/1.10    k1_xboole_0 != sK2 | k1_tarski(sK0) != sK1),
% 1.16/1.10    inference(cnf_transformation,[],[f17])).
% 1.16/1.10  
% 1.16/1.10  fof(f42,plain,(
% 1.16/1.10    k1_xboole_0 != sK2 | k2_enumset1(sK0,sK0,sK0,sK0) != sK1),
% 1.16/1.10    inference(definition_unfolding,[],[f32,f35])).
% 1.16/1.10  
% 1.16/1.10  fof(f31,plain,(
% 1.16/1.10    k1_tarski(sK0) != sK2 | k1_xboole_0 != sK1),
% 1.16/1.10    inference(cnf_transformation,[],[f17])).
% 1.16/1.10  
% 1.16/1.10  fof(f43,plain,(
% 1.16/1.10    k2_enumset1(sK0,sK0,sK0,sK0) != sK2 | k1_xboole_0 != sK1),
% 1.16/1.10    inference(definition_unfolding,[],[f31,f35])).
% 1.16/1.10  
% 1.16/1.10  cnf(c_2,plain,
% 1.16/1.10      ( r1_tarski(k1_xboole_0,X0) ),
% 1.16/1.10      inference(cnf_transformation,[],[f20]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_238,plain,
% 1.16/1.10      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 1.16/1.10      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_1,plain,
% 1.16/1.10      ( ~ r1_tarski(X0,X1) | k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1 ),
% 1.16/1.10      inference(cnf_transformation,[],[f37]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_239,plain,
% 1.16/1.10      ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = X1
% 1.16/1.10      | r1_tarski(X0,X1) != iProver_top ),
% 1.16/1.10      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_1124,plain,
% 1.16/1.10      ( k3_tarski(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,X0)) = X0 ),
% 1.16/1.10      inference(superposition,[status(thm)],[c_238,c_239]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_10,negated_conjecture,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) = k3_tarski(k2_enumset1(sK1,sK1,sK1,sK2)) ),
% 1.16/1.10      inference(cnf_transformation,[],[f45]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_0,plain,
% 1.16/1.10      ( k3_tarski(k2_enumset1(X0,X0,X0,X1)) = k3_tarski(k2_enumset1(X1,X1,X1,X0)) ),
% 1.16/1.10      inference(cnf_transformation,[],[f36]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_3,plain,
% 1.16/1.10      ( r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) ),
% 1.16/1.10      inference(cnf_transformation,[],[f38]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_237,plain,
% 1.16/1.10      ( r1_tarski(X0,k3_tarski(k2_enumset1(X0,X0,X0,X1))) = iProver_top ),
% 1.16/1.10      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_471,plain,
% 1.16/1.10      ( r1_tarski(X0,k3_tarski(k2_enumset1(X1,X1,X1,X0))) = iProver_top ),
% 1.16/1.10      inference(superposition,[status(thm)],[c_0,c_237]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_547,plain,
% 1.16/1.10      ( r1_tarski(sK2,k2_enumset1(sK0,sK0,sK0,sK0)) = iProver_top ),
% 1.16/1.10      inference(superposition,[status(thm)],[c_10,c_471]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_6,plain,
% 1.16/1.10      ( ~ r1_tarski(X0,k2_enumset1(X1,X1,X1,X1))
% 1.16/1.10      | k2_enumset1(X1,X1,X1,X1) = X0
% 1.16/1.10      | k1_xboole_0 = X0 ),
% 1.16/1.10      inference(cnf_transformation,[],[f41]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_234,plain,
% 1.16/1.10      ( k2_enumset1(X0,X0,X0,X0) = X1
% 1.16/1.10      | k1_xboole_0 = X1
% 1.16/1.10      | r1_tarski(X1,k2_enumset1(X0,X0,X0,X0)) != iProver_top ),
% 1.16/1.10      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_601,plain,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) = sK2 | sK2 = k1_xboole_0 ),
% 1.16/1.10      inference(superposition,[status(thm)],[c_547,c_234]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_387,plain,
% 1.16/1.10      ( r1_tarski(sK1,k2_enumset1(sK0,sK0,sK0,sK0)) = iProver_top ),
% 1.16/1.10      inference(superposition,[status(thm)],[c_10,c_237]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_538,plain,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) = sK1 | sK1 = k1_xboole_0 ),
% 1.16/1.10      inference(superposition,[status(thm)],[c_387,c_234]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_9,negated_conjecture,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) != sK1
% 1.16/1.10      | k2_enumset1(sK0,sK0,sK0,sK0) != sK2 ),
% 1.16/1.10      inference(cnf_transformation,[],[f44]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_7,negated_conjecture,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) != sK1 | k1_xboole_0 != sK2 ),
% 1.16/1.10      inference(cnf_transformation,[],[f42]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_126,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_284,plain,
% 1.16/1.10      ( sK2 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK2 ),
% 1.16/1.10      inference(instantiation,[status(thm)],[c_126]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_331,plain,
% 1.16/1.10      ( sK2 != k1_xboole_0
% 1.16/1.10      | k1_xboole_0 = sK2
% 1.16/1.10      | k1_xboole_0 != k1_xboole_0 ),
% 1.16/1.10      inference(instantiation,[status(thm)],[c_284]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_125,plain,( X0 = X0 ),theory(equality) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_332,plain,
% 1.16/1.10      ( k1_xboole_0 = k1_xboole_0 ),
% 1.16/1.10      inference(instantiation,[status(thm)],[c_125]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_655,plain,
% 1.16/1.10      ( sK1 = k1_xboole_0 ),
% 1.16/1.10      inference(global_propositional_subsumption,
% 1.16/1.10                [status(thm)],
% 1.16/1.10                [c_538,c_9,c_7,c_331,c_332,c_601]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_8,negated_conjecture,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) != sK2 | k1_xboole_0 != sK1 ),
% 1.16/1.10      inference(cnf_transformation,[],[f43]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_661,plain,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) != sK2
% 1.16/1.10      | k1_xboole_0 != k1_xboole_0 ),
% 1.16/1.10      inference(demodulation,[status(thm)],[c_655,c_8]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_670,plain,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) != sK2 ),
% 1.16/1.10      inference(equality_resolution_simp,[status(thm)],[c_661]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_969,plain,
% 1.16/1.10      ( sK2 = k1_xboole_0 ),
% 1.16/1.10      inference(global_propositional_subsumption,
% 1.16/1.10                [status(thm)],
% 1.16/1.10                [c_601,c_670]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_663,plain,
% 1.16/1.10      ( k3_tarski(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,sK2)) = k2_enumset1(sK0,sK0,sK0,sK0) ),
% 1.16/1.10      inference(demodulation,[status(thm)],[c_655,c_10]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_974,plain,
% 1.16/1.10      ( k3_tarski(k2_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0)) = k2_enumset1(sK0,sK0,sK0,sK0) ),
% 1.16/1.10      inference(demodulation,[status(thm)],[c_969,c_663]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_1137,plain,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) = k1_xboole_0 ),
% 1.16/1.10      inference(demodulation,[status(thm)],[c_1124,c_974]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(c_662,plain,
% 1.16/1.10      ( k2_enumset1(sK0,sK0,sK0,sK0) != k1_xboole_0
% 1.16/1.10      | sK2 != k1_xboole_0 ),
% 1.16/1.10      inference(demodulation,[status(thm)],[c_655,c_7]) ).
% 1.16/1.10  
% 1.16/1.10  cnf(contradiction,plain,
% 1.16/1.10      ( $false ),
% 1.16/1.10      inference(minisat,[status(thm)],[c_1137,c_670,c_662,c_601]) ).
% 1.16/1.10  
% 1.16/1.10  
% 1.16/1.10  % SZS output end CNFRefutation for theBenchmark.p
% 1.16/1.10  
% 1.16/1.10  ------                               Statistics
% 1.16/1.10  
% 1.16/1.10  ------ General
% 1.16/1.10  
% 1.16/1.10  abstr_ref_over_cycles:                  0
% 1.16/1.10  abstr_ref_under_cycles:                 0
% 1.16/1.10  gc_basic_clause_elim:                   0
% 1.16/1.10  forced_gc_time:                         0
% 1.16/1.10  parsing_time:                           0.026
% 1.16/1.10  unif_index_cands_time:                  0.
% 1.16/1.10  unif_index_add_time:                    0.
% 1.16/1.10  orderings_time:                         0.
% 1.16/1.10  out_proof_time:                         0.024
% 1.16/1.10  total_time:                             0.154
% 1.16/1.10  num_of_symbols:                         35
% 1.16/1.10  num_of_terms:                           1258
% 1.16/1.10  
% 1.16/1.10  ------ Preprocessing
% 1.16/1.10  
% 1.16/1.10  num_of_splits:                          0
% 1.16/1.10  num_of_split_atoms:                     0
% 1.16/1.10  num_of_reused_defs:                     0
% 1.16/1.10  num_eq_ax_congr_red:                    0
% 1.16/1.10  num_of_sem_filtered_clauses:            1
% 1.16/1.10  num_of_subtypes:                        0
% 1.16/1.10  monotx_restored_types:                  0
% 1.16/1.10  sat_num_of_epr_types:                   0
% 1.16/1.10  sat_num_of_non_cyclic_types:            0
% 1.16/1.10  sat_guarded_non_collapsed_types:        0
% 1.16/1.10  num_pure_diseq_elim:                    0
% 1.16/1.10  simp_replaced_by:                       0
% 1.16/1.10  res_preprocessed:                       44
% 1.16/1.10  prep_upred:                             0
% 1.16/1.10  prep_unflattend:                        13
% 1.16/1.10  smt_new_axioms:                         0
% 1.16/1.10  pred_elim_cands:                        1
% 1.16/1.10  pred_elim:                              0
% 1.16/1.10  pred_elim_cl:                           0
% 1.16/1.10  pred_elim_cycles:                       1
% 1.16/1.10  merged_defs:                            0
% 1.16/1.10  merged_defs_ncl:                        0
% 1.16/1.10  bin_hyper_res:                          0
% 1.16/1.10  prep_cycles:                            3
% 1.16/1.10  pred_elim_time:                         0.001
% 1.16/1.10  splitting_time:                         0.
% 1.16/1.10  sem_filter_time:                        0.
% 1.16/1.10  monotx_time:                            0.
% 1.16/1.10  subtype_inf_time:                       0.
% 1.16/1.10  
% 1.16/1.10  ------ Problem properties
% 1.16/1.10  
% 1.16/1.10  clauses:                                11
% 1.16/1.10  conjectures:                            4
% 1.16/1.10  epr:                                    1
% 1.16/1.10  horn:                                   10
% 1.16/1.10  ground:                                 4
% 1.16/1.10  unary:                                  6
% 1.16/1.10  binary:                                 4
% 1.16/1.10  lits:                                   17
% 1.16/1.10  lits_eq:                                11
% 1.16/1.10  fd_pure:                                0
% 1.16/1.10  fd_pseudo:                              0
% 1.16/1.10  fd_cond:                                0
% 1.16/1.10  fd_pseudo_cond:                         1
% 1.16/1.10  ac_symbols:                             0
% 1.16/1.10  
% 1.16/1.10  ------ Propositional Solver
% 1.16/1.10  
% 1.16/1.10  prop_solver_calls:                      23
% 1.16/1.10  prop_fast_solver_calls:                 205
% 1.16/1.10  smt_solver_calls:                       0
% 1.16/1.10  smt_fast_solver_calls:                  0
% 1.16/1.10  prop_num_of_clauses:                    427
% 1.16/1.10  prop_preprocess_simplified:             1540
% 1.16/1.10  prop_fo_subsumed:                       3
% 1.16/1.10  prop_solver_time:                       0.
% 1.16/1.10  smt_solver_time:                        0.
% 1.16/1.10  smt_fast_solver_time:                   0.
% 1.16/1.10  prop_fast_solver_time:                  0.
% 1.16/1.10  prop_unsat_core_time:                   0.
% 1.16/1.10  
% 1.16/1.10  ------ QBF
% 1.16/1.10  
% 1.16/1.10  qbf_q_res:                              0
% 1.16/1.10  qbf_num_tautologies:                    0
% 1.16/1.10  qbf_prep_cycles:                        0
% 1.16/1.10  
% 1.16/1.10  ------ BMC1
% 1.16/1.10  
% 1.16/1.10  bmc1_current_bound:                     -1
% 1.16/1.10  bmc1_last_solved_bound:                 -1
% 1.16/1.10  bmc1_unsat_core_size:                   -1
% 1.16/1.10  bmc1_unsat_core_parents_size:           -1
% 1.16/1.10  bmc1_merge_next_fun:                    0
% 1.16/1.10  bmc1_unsat_core_clauses_time:           0.
% 1.16/1.10  
% 1.16/1.10  ------ Instantiation
% 1.16/1.10  
% 1.16/1.10  inst_num_of_clauses:                    196
% 1.16/1.10  inst_num_in_passive:                    57
% 1.16/1.10  inst_num_in_active:                     100
% 1.16/1.10  inst_num_in_unprocessed:                39
% 1.16/1.10  inst_num_of_loops:                      110
% 1.16/1.10  inst_num_of_learning_restarts:          0
% 1.16/1.10  inst_num_moves_active_passive:          7
% 1.16/1.10  inst_lit_activity:                      0
% 1.16/1.10  inst_lit_activity_moves:                0
% 1.16/1.10  inst_num_tautologies:                   0
% 1.16/1.10  inst_num_prop_implied:                  0
% 1.16/1.10  inst_num_existing_simplified:           0
% 1.16/1.10  inst_num_eq_res_simplified:             0
% 1.16/1.10  inst_num_child_elim:                    0
% 1.16/1.10  inst_num_of_dismatching_blockings:      85
% 1.16/1.10  inst_num_of_non_proper_insts:           207
% 1.16/1.10  inst_num_of_duplicates:                 0
% 1.16/1.10  inst_inst_num_from_inst_to_res:         0
% 1.16/1.10  inst_dismatching_checking_time:         0.
% 1.16/1.10  
% 1.16/1.10  ------ Resolution
% 1.16/1.10  
% 1.16/1.10  res_num_of_clauses:                     0
% 1.16/1.10  res_num_in_passive:                     0
% 1.16/1.10  res_num_in_active:                      0
% 1.16/1.10  res_num_of_loops:                       47
% 1.16/1.10  res_forward_subset_subsumed:            39
% 1.16/1.10  res_backward_subset_subsumed:           0
% 1.16/1.10  res_forward_subsumed:                   1
% 1.16/1.10  res_backward_subsumed:                  0
% 1.16/1.10  res_forward_subsumption_resolution:     0
% 1.16/1.10  res_backward_subsumption_resolution:    0
% 1.16/1.10  res_clause_to_clause_subsumption:       37
% 1.16/1.10  res_orphan_elimination:                 0
% 1.16/1.10  res_tautology_del:                      25
% 1.16/1.10  res_num_eq_res_simplified:              0
% 1.16/1.10  res_num_sel_changes:                    0
% 1.16/1.10  res_moves_from_active_to_pass:          0
% 1.16/1.10  
% 1.16/1.10  ------ Superposition
% 1.16/1.10  
% 1.16/1.10  sup_time_total:                         0.
% 1.16/1.10  sup_time_generating:                    0.
% 1.16/1.10  sup_time_sim_full:                      0.
% 1.16/1.10  sup_time_sim_immed:                     0.
% 1.16/1.10  
% 1.16/1.10  sup_num_of_clauses:                     16
% 1.16/1.10  sup_num_in_active:                      10
% 1.16/1.10  sup_num_in_passive:                     6
% 1.16/1.11  sup_num_of_loops:                       21
% 1.16/1.11  sup_fw_superposition:                   14
% 1.16/1.11  sup_bw_superposition:                   16
% 1.16/1.11  sup_immediate_simplified:               2
% 1.16/1.11  sup_given_eliminated:                   0
% 1.16/1.11  comparisons_done:                       0
% 1.16/1.11  comparisons_avoided:                    0
% 1.16/1.11  
% 1.16/1.11  ------ Simplifications
% 1.16/1.11  
% 1.16/1.11  
% 1.16/1.11  sim_fw_subset_subsumed:                 1
% 1.16/1.11  sim_bw_subset_subsumed:                 0
% 1.16/1.11  sim_fw_subsumed:                        2
% 1.16/1.11  sim_bw_subsumed:                        0
% 1.16/1.11  sim_fw_subsumption_res:                 0
% 1.16/1.11  sim_bw_subsumption_res:                 0
% 1.16/1.11  sim_tautology_del:                      0
% 1.16/1.11  sim_eq_tautology_del:                   2
% 1.16/1.11  sim_eq_res_simp:                        1
% 1.16/1.11  sim_fw_demodulated:                     0
% 1.16/1.11  sim_bw_demodulated:                     11
% 1.16/1.11  sim_light_normalised:                   0
% 1.16/1.11  sim_joinable_taut:                      0
% 1.16/1.11  sim_joinable_simp:                      0
% 1.16/1.11  sim_ac_normalised:                      0
% 1.16/1.11  sim_smt_subsumption:                    0
% 1.16/1.11  
%------------------------------------------------------------------------------
