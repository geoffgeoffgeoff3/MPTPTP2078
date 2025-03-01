%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n008.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:25:21 EST 2020

% Result     : Theorem 3.90s
% Output     : CNFRefutation 3.90s
% Verified   : 
% Statistics : Number of formulae       :   69 ( 108 expanded)
%              Number of clauses        :   30 (  40 expanded)
%              Number of leaves         :   15 (  28 expanded)
%              Depth                    :   13
%              Number of atoms          :   77 ( 123 expanded)
%              Number of equality atoms :   68 ( 106 expanded)
%              Maximal formula depth    :    5 (   2 average)
%              Maximal clause size      :    3 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f8])).

fof(f9,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f9])).

fof(f38,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f28,f29])).

fof(f6,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f13,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f13])).

fof(f36,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),X1) ),
    inference(definition_unfolding,[],[f26,f33])).

fof(f1,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f35,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f21,f29,f29])).

fof(f7,axiom,(
    ! [X0,X1,X2] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X2,X0,X1] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f7])).

fof(f37,plain,(
    ! [X2,X0,X1] : k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k5_xboole_0(X1,k4_xboole_0(X2,X1))) ),
    inference(definition_unfolding,[],[f27,f33])).

fof(f5,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f5])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k4_xboole_0(X0,X1) = k1_xboole_0 ) ),
    inference(unused_predicate_definition_removal,[],[f3])).

fof(f17,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f23,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f4,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f12,axiom,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f12])).

fof(f11,axiom,(
    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X2,X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f11])).

fof(f10,axiom,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f10])).

fof(f2,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f14,conjecture,(
    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,negated_conjecture,(
    ~ ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1) ),
    inference(negated_conjecture,[],[f14])).

fof(f18,plain,(
    ? [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) != k4_xboole_0(X0,X1) ),
    inference(ennf_transformation,[],[f15])).

fof(f19,plain,
    ( ? [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) != k4_xboole_0(X0,X1)
   => k5_xboole_0(sK0,k3_xboole_0(sK0,sK1)) != k4_xboole_0(sK0,sK1) ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    k5_xboole_0(sK0,k3_xboole_0(sK0,sK1)) != k4_xboole_0(sK0,sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f18,f19])).

fof(f34,plain,(
    k5_xboole_0(sK0,k3_xboole_0(sK0,sK1)) != k4_xboole_0(sK0,sK1) ),
    inference(cnf_transformation,[],[f20])).

fof(f39,plain,(
    k5_xboole_0(sK0,k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,sK1) ),
    inference(definition_unfolding,[],[f34,f29])).

cnf(c_7,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_5,plain,
    ( k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),X1) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_0,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_116,plain,
    ( k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,k5_xboole_0(X0,k4_xboole_0(X1,X0)))) ),
    inference(superposition,[status(thm)],[c_5,c_0])).

cnf(c_6,plain,
    ( k4_xboole_0(X0,k5_xboole_0(X1,k4_xboole_0(X2,X1))) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_119,plain,
    ( k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(k4_xboole_0(X1,X0),X1)) ),
    inference(demodulation,[status(thm)],[c_116,c_6])).

cnf(c_4,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f25])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f23])).

cnf(c_3,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_45,plain,
    ( X0 != X1
    | k4_xboole_0(X0,X2) != X3
    | k4_xboole_0(X3,X1) = k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_3])).

cnf(c_46,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),X0) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_45])).

cnf(c_120,plain,
    ( k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = X1 ),
    inference(demodulation,[status(thm)],[c_119,c_4,c_46])).

cnf(c_1083,plain,
    ( k4_xboole_0(k5_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X0,X1)),k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0)) = X0 ),
    inference(superposition,[status(thm)],[c_7,c_120])).

cnf(c_1170,plain,
    ( k5_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X0,X1)) = X0 ),
    inference(demodulation,[status(thm)],[c_1083,c_4,c_46])).

cnf(c_10,plain,
    ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_9,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_147,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
    inference(superposition,[status(thm)],[c_10,c_9])).

cnf(c_8,plain,
    ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_1,plain,
    ( k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f22])).

cnf(c_65,plain,
    ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_8,c_1])).

cnf(c_154,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1 ),
    inference(demodulation,[status(thm)],[c_147,c_65])).

cnf(c_62,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(X1,k5_xboole_0(X0,X2)) ),
    inference(superposition,[status(thm)],[c_9,c_1])).

cnf(c_88,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = k5_xboole_0(X1,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_10,c_62])).

cnf(c_95,plain,
    ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = X1 ),
    inference(demodulation,[status(thm)],[c_88,c_8])).

cnf(c_208,plain,
    ( k5_xboole_0(k5_xboole_0(X0,X1),X1) = X0 ),
    inference(superposition,[status(thm)],[c_154,c_95])).

cnf(c_7937,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(superposition,[status(thm)],[c_1170,c_208])).

cnf(c_11,negated_conjecture,
    ( k5_xboole_0(sK0,k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,sK1) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_17109,plain,
    ( k4_xboole_0(sK0,k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,sK1) ),
    inference(demodulation,[status(thm)],[c_7937,c_11])).

cnf(c_17110,plain,
    ( k4_xboole_0(sK0,sK1) != k4_xboole_0(sK0,sK1) ),
    inference(demodulation,[status(thm)],[c_17109,c_7])).

cnf(c_17111,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_17110])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n008.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 19:44:30 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 3.90/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 3.90/0.98  
% 3.90/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.90/0.98  
% 3.90/0.98  ------  iProver source info
% 3.90/0.98  
% 3.90/0.98  git: date: 2020-06-30 10:37:57 +0100
% 3.90/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.90/0.98  git: non_committed_changes: false
% 3.90/0.98  git: last_make_outside_of_git: false
% 3.90/0.98  
% 3.90/0.98  ------ 
% 3.90/0.98  
% 3.90/0.98  ------ Input Options
% 3.90/0.98  
% 3.90/0.98  --out_options                           all
% 3.90/0.98  --tptp_safe_out                         true
% 3.90/0.98  --problem_path                          ""
% 3.90/0.98  --include_path                          ""
% 3.90/0.98  --clausifier                            res/vclausify_rel
% 3.90/0.98  --clausifier_options                    --mode clausify
% 3.90/0.98  --stdin                                 false
% 3.90/0.98  --stats_out                             all
% 3.90/0.98  
% 3.90/0.98  ------ General Options
% 3.90/0.98  
% 3.90/0.98  --fof                                   false
% 3.90/0.98  --time_out_real                         305.
% 3.90/0.98  --time_out_virtual                      -1.
% 3.90/0.98  --symbol_type_check                     false
% 3.90/0.98  --clausify_out                          false
% 3.90/0.98  --sig_cnt_out                           false
% 3.90/0.98  --trig_cnt_out                          false
% 3.90/0.98  --trig_cnt_out_tolerance                1.
% 3.90/0.98  --trig_cnt_out_sk_spl                   false
% 3.90/0.98  --abstr_cl_out                          false
% 3.90/0.98  
% 3.90/0.98  ------ Global Options
% 3.90/0.98  
% 3.90/0.98  --schedule                              default
% 3.90/0.98  --add_important_lit                     false
% 3.90/0.98  --prop_solver_per_cl                    1000
% 3.90/0.98  --min_unsat_core                        false
% 3.90/0.98  --soft_assumptions                      false
% 3.90/0.98  --soft_lemma_size                       3
% 3.90/0.98  --prop_impl_unit_size                   0
% 3.90/0.98  --prop_impl_unit                        []
% 3.90/0.98  --share_sel_clauses                     true
% 3.90/0.98  --reset_solvers                         false
% 3.90/0.98  --bc_imp_inh                            [conj_cone]
% 3.90/0.98  --conj_cone_tolerance                   3.
% 3.90/0.98  --extra_neg_conj                        none
% 3.90/0.98  --large_theory_mode                     true
% 3.90/0.98  --prolific_symb_bound                   200
% 3.90/0.98  --lt_threshold                          2000
% 3.90/0.98  --clause_weak_htbl                      true
% 3.90/0.98  --gc_record_bc_elim                     false
% 3.90/0.98  
% 3.90/0.98  ------ Preprocessing Options
% 3.90/0.98  
% 3.90/0.98  --preprocessing_flag                    true
% 3.90/0.98  --time_out_prep_mult                    0.1
% 3.90/0.98  --splitting_mode                        input
% 3.90/0.98  --splitting_grd                         true
% 3.90/0.98  --splitting_cvd                         false
% 3.90/0.98  --splitting_cvd_svl                     false
% 3.90/0.98  --splitting_nvd                         32
% 3.90/0.98  --sub_typing                            true
% 3.90/0.98  --prep_gs_sim                           true
% 3.90/0.98  --prep_unflatten                        true
% 3.90/0.98  --prep_res_sim                          true
% 3.90/0.98  --prep_upred                            true
% 3.90/0.98  --prep_sem_filter                       exhaustive
% 3.90/0.98  --prep_sem_filter_out                   false
% 3.90/0.98  --pred_elim                             true
% 3.90/0.98  --res_sim_input                         true
% 3.90/0.98  --eq_ax_congr_red                       true
% 3.90/0.98  --pure_diseq_elim                       true
% 3.90/0.98  --brand_transform                       false
% 3.90/0.98  --non_eq_to_eq                          false
% 3.90/0.98  --prep_def_merge                        true
% 3.90/0.98  --prep_def_merge_prop_impl              false
% 3.90/0.98  --prep_def_merge_mbd                    true
% 3.90/0.98  --prep_def_merge_tr_red                 false
% 3.90/0.98  --prep_def_merge_tr_cl                  false
% 3.90/0.98  --smt_preprocessing                     true
% 3.90/0.98  --smt_ac_axioms                         fast
% 3.90/0.98  --preprocessed_out                      false
% 3.90/0.98  --preprocessed_stats                    false
% 3.90/0.98  
% 3.90/0.98  ------ Abstraction refinement Options
% 3.90/0.98  
% 3.90/0.98  --abstr_ref                             []
% 3.90/0.98  --abstr_ref_prep                        false
% 3.90/0.98  --abstr_ref_until_sat                   false
% 3.90/0.98  --abstr_ref_sig_restrict                funpre
% 3.90/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.90/0.98  --abstr_ref_under                       []
% 3.90/0.98  
% 3.90/0.98  ------ SAT Options
% 3.90/0.98  
% 3.90/0.98  --sat_mode                              false
% 3.90/0.98  --sat_fm_restart_options                ""
% 3.90/0.98  --sat_gr_def                            false
% 3.90/0.98  --sat_epr_types                         true
% 3.90/0.98  --sat_non_cyclic_types                  false
% 3.90/0.98  --sat_finite_models                     false
% 3.90/0.98  --sat_fm_lemmas                         false
% 3.90/0.98  --sat_fm_prep                           false
% 3.90/0.98  --sat_fm_uc_incr                        true
% 3.90/0.98  --sat_out_model                         small
% 3.90/0.98  --sat_out_clauses                       false
% 3.90/0.98  
% 3.90/0.98  ------ QBF Options
% 3.90/0.98  
% 3.90/0.98  --qbf_mode                              false
% 3.90/0.98  --qbf_elim_univ                         false
% 3.90/0.98  --qbf_dom_inst                          none
% 3.90/0.98  --qbf_dom_pre_inst                      false
% 3.90/0.98  --qbf_sk_in                             false
% 3.90/0.98  --qbf_pred_elim                         true
% 3.90/0.98  --qbf_split                             512
% 3.90/0.98  
% 3.90/0.98  ------ BMC1 Options
% 3.90/0.98  
% 3.90/0.98  --bmc1_incremental                      false
% 3.90/0.98  --bmc1_axioms                           reachable_all
% 3.90/0.98  --bmc1_min_bound                        0
% 3.90/0.98  --bmc1_max_bound                        -1
% 3.90/0.98  --bmc1_max_bound_default                -1
% 3.90/0.98  --bmc1_symbol_reachability              true
% 3.90/0.98  --bmc1_property_lemmas                  false
% 3.90/0.98  --bmc1_k_induction                      false
% 3.90/0.98  --bmc1_non_equiv_states                 false
% 3.90/0.98  --bmc1_deadlock                         false
% 3.90/0.98  --bmc1_ucm                              false
% 3.90/0.98  --bmc1_add_unsat_core                   none
% 3.90/0.98  --bmc1_unsat_core_children              false
% 3.90/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.90/0.98  --bmc1_out_stat                         full
% 3.90/0.98  --bmc1_ground_init                      false
% 3.90/0.98  --bmc1_pre_inst_next_state              false
% 3.90/0.98  --bmc1_pre_inst_state                   false
% 3.90/0.98  --bmc1_pre_inst_reach_state             false
% 3.90/0.98  --bmc1_out_unsat_core                   false
% 3.90/0.98  --bmc1_aig_witness_out                  false
% 3.90/0.98  --bmc1_verbose                          false
% 3.90/0.98  --bmc1_dump_clauses_tptp                false
% 3.90/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.90/0.98  --bmc1_dump_file                        -
% 3.90/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.90/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.90/0.98  --bmc1_ucm_extend_mode                  1
% 3.90/0.98  --bmc1_ucm_init_mode                    2
% 3.90/0.98  --bmc1_ucm_cone_mode                    none
% 3.90/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.90/0.98  --bmc1_ucm_relax_model                  4
% 3.90/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.90/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.90/0.98  --bmc1_ucm_layered_model                none
% 3.90/0.98  --bmc1_ucm_max_lemma_size               10
% 3.90/0.98  
% 3.90/0.98  ------ AIG Options
% 3.90/0.98  
% 3.90/0.98  --aig_mode                              false
% 3.90/0.98  
% 3.90/0.98  ------ Instantiation Options
% 3.90/0.98  
% 3.90/0.98  --instantiation_flag                    true
% 3.90/0.98  --inst_sos_flag                         false
% 3.90/0.98  --inst_sos_phase                        true
% 3.90/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.90/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.90/0.98  --inst_lit_sel_side                     num_symb
% 3.90/0.98  --inst_solver_per_active                1400
% 3.90/0.98  --inst_solver_calls_frac                1.
% 3.90/0.98  --inst_passive_queue_type               priority_queues
% 3.90/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.90/0.98  --inst_passive_queues_freq              [25;2]
% 3.90/0.98  --inst_dismatching                      true
% 3.90/0.98  --inst_eager_unprocessed_to_passive     true
% 3.90/0.98  --inst_prop_sim_given                   true
% 3.90/0.98  --inst_prop_sim_new                     false
% 3.90/0.98  --inst_subs_new                         false
% 3.90/0.98  --inst_eq_res_simp                      false
% 3.90/0.98  --inst_subs_given                       false
% 3.90/0.98  --inst_orphan_elimination               true
% 3.90/0.98  --inst_learning_loop_flag               true
% 3.90/0.98  --inst_learning_start                   3000
% 3.90/0.98  --inst_learning_factor                  2
% 3.90/0.98  --inst_start_prop_sim_after_learn       3
% 3.90/0.98  --inst_sel_renew                        solver
% 3.90/0.98  --inst_lit_activity_flag                true
% 3.90/0.98  --inst_restr_to_given                   false
% 3.90/0.98  --inst_activity_threshold               500
% 3.90/0.98  --inst_out_proof                        true
% 3.90/0.98  
% 3.90/0.98  ------ Resolution Options
% 3.90/0.98  
% 3.90/0.98  --resolution_flag                       true
% 3.90/0.98  --res_lit_sel                           adaptive
% 3.90/0.98  --res_lit_sel_side                      none
% 3.90/0.98  --res_ordering                          kbo
% 3.90/0.98  --res_to_prop_solver                    active
% 3.90/0.98  --res_prop_simpl_new                    false
% 3.90/0.98  --res_prop_simpl_given                  true
% 3.90/0.98  --res_passive_queue_type                priority_queues
% 3.90/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.90/0.98  --res_passive_queues_freq               [15;5]
% 3.90/0.98  --res_forward_subs                      full
% 3.90/0.98  --res_backward_subs                     full
% 3.90/0.98  --res_forward_subs_resolution           true
% 3.90/0.98  --res_backward_subs_resolution          true
% 3.90/0.98  --res_orphan_elimination                true
% 3.90/0.98  --res_time_limit                        2.
% 3.90/0.98  --res_out_proof                         true
% 3.90/0.98  
% 3.90/0.98  ------ Superposition Options
% 3.90/0.98  
% 3.90/0.98  --superposition_flag                    true
% 3.90/0.98  --sup_passive_queue_type                priority_queues
% 3.90/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.90/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.90/0.98  --demod_completeness_check              fast
% 3.90/0.98  --demod_use_ground                      true
% 3.90/0.98  --sup_to_prop_solver                    passive
% 3.90/0.98  --sup_prop_simpl_new                    true
% 3.90/0.98  --sup_prop_simpl_given                  true
% 3.90/0.98  --sup_fun_splitting                     false
% 3.90/0.98  --sup_smt_interval                      50000
% 3.90/0.98  
% 3.90/0.98  ------ Superposition Simplification Setup
% 3.90/0.98  
% 3.90/0.98  --sup_indices_passive                   []
% 3.90/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.90/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.90/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.90/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 3.90/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.90/0.98  --sup_full_bw                           [BwDemod]
% 3.90/0.98  --sup_immed_triv                        [TrivRules]
% 3.90/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.90/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.90/0.98  --sup_immed_bw_main                     []
% 3.90/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.90/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.90/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.90/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.90/0.98  
% 3.90/0.98  ------ Combination Options
% 3.90/0.98  
% 3.90/0.98  --comb_res_mult                         3
% 3.90/0.98  --comb_sup_mult                         2
% 3.90/0.98  --comb_inst_mult                        10
% 3.90/0.98  
% 3.90/0.98  ------ Debug Options
% 3.90/0.98  
% 3.90/0.98  --dbg_backtrace                         false
% 3.90/0.98  --dbg_dump_prop_clauses                 false
% 3.90/0.98  --dbg_dump_prop_clauses_file            -
% 3.90/0.98  --dbg_out_stat                          false
% 3.90/0.98  ------ Parsing...
% 3.90/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.90/0.98  
% 3.90/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 3.90/0.98  
% 3.90/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.90/0.98  
% 3.90/0.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 3.90/0.98  ------ Proving...
% 3.90/0.98  ------ Problem Properties 
% 3.90/0.98  
% 3.90/0.98  
% 3.90/0.98  clauses                                 11
% 3.90/0.98  conjectures                             1
% 3.90/0.98  EPR                                     0
% 3.90/0.98  Horn                                    11
% 3.90/0.98  unary                                   11
% 3.90/0.98  binary                                  0
% 3.90/0.98  lits                                    11
% 3.90/0.98  lits eq                                 11
% 3.90/0.98  fd_pure                                 0
% 3.90/0.98  fd_pseudo                               0
% 3.90/0.98  fd_cond                                 0
% 3.90/0.98  fd_pseudo_cond                          0
% 3.90/0.98  AC symbols                              1
% 3.90/0.98  
% 3.90/0.98  ------ Schedule UEQ
% 3.90/0.98  
% 3.90/0.98  ------ pure equality problem: resolution off 
% 3.90/0.98  
% 3.90/0.98  ------ Option_UEQ Time Limit: Unbounded
% 3.90/0.98  
% 3.90/0.98  
% 3.90/0.98  ------ 
% 3.90/0.98  Current options:
% 3.90/0.98  ------ 
% 3.90/0.98  
% 3.90/0.98  ------ Input Options
% 3.90/0.98  
% 3.90/0.98  --out_options                           all
% 3.90/0.98  --tptp_safe_out                         true
% 3.90/0.98  --problem_path                          ""
% 3.90/0.98  --include_path                          ""
% 3.90/0.98  --clausifier                            res/vclausify_rel
% 3.90/0.98  --clausifier_options                    --mode clausify
% 3.90/0.98  --stdin                                 false
% 3.90/0.98  --stats_out                             all
% 3.90/0.98  
% 3.90/0.98  ------ General Options
% 3.90/0.98  
% 3.90/0.98  --fof                                   false
% 3.90/0.98  --time_out_real                         305.
% 3.90/0.98  --time_out_virtual                      -1.
% 3.90/0.98  --symbol_type_check                     false
% 3.90/0.98  --clausify_out                          false
% 3.90/0.98  --sig_cnt_out                           false
% 3.90/0.98  --trig_cnt_out                          false
% 3.90/0.98  --trig_cnt_out_tolerance                1.
% 3.90/0.98  --trig_cnt_out_sk_spl                   false
% 3.90/0.98  --abstr_cl_out                          false
% 3.90/0.98  
% 3.90/0.98  ------ Global Options
% 3.90/0.98  
% 3.90/0.98  --schedule                              default
% 3.90/0.98  --add_important_lit                     false
% 3.90/0.98  --prop_solver_per_cl                    1000
% 3.90/0.98  --min_unsat_core                        false
% 3.90/0.98  --soft_assumptions                      false
% 3.90/0.98  --soft_lemma_size                       3
% 3.90/0.98  --prop_impl_unit_size                   0
% 3.90/0.98  --prop_impl_unit                        []
% 3.90/0.98  --share_sel_clauses                     true
% 3.90/0.98  --reset_solvers                         false
% 3.90/0.98  --bc_imp_inh                            [conj_cone]
% 3.90/0.98  --conj_cone_tolerance                   3.
% 3.90/0.98  --extra_neg_conj                        none
% 3.90/0.98  --large_theory_mode                     true
% 3.90/0.98  --prolific_symb_bound                   200
% 3.90/0.98  --lt_threshold                          2000
% 3.90/0.98  --clause_weak_htbl                      true
% 3.90/0.98  --gc_record_bc_elim                     false
% 3.90/0.98  
% 3.90/0.98  ------ Preprocessing Options
% 3.90/0.98  
% 3.90/0.98  --preprocessing_flag                    true
% 3.90/0.98  --time_out_prep_mult                    0.1
% 3.90/0.98  --splitting_mode                        input
% 3.90/0.98  --splitting_grd                         true
% 3.90/0.98  --splitting_cvd                         false
% 3.90/0.98  --splitting_cvd_svl                     false
% 3.90/0.98  --splitting_nvd                         32
% 3.90/0.98  --sub_typing                            true
% 3.90/0.98  --prep_gs_sim                           true
% 3.90/0.98  --prep_unflatten                        true
% 3.90/0.98  --prep_res_sim                          true
% 3.90/0.98  --prep_upred                            true
% 3.90/0.98  --prep_sem_filter                       exhaustive
% 3.90/0.98  --prep_sem_filter_out                   false
% 3.90/0.98  --pred_elim                             true
% 3.90/0.98  --res_sim_input                         true
% 3.90/0.98  --eq_ax_congr_red                       true
% 3.90/0.98  --pure_diseq_elim                       true
% 3.90/0.98  --brand_transform                       false
% 3.90/0.98  --non_eq_to_eq                          false
% 3.90/0.98  --prep_def_merge                        true
% 3.90/0.98  --prep_def_merge_prop_impl              false
% 3.90/0.98  --prep_def_merge_mbd                    true
% 3.90/0.98  --prep_def_merge_tr_red                 false
% 3.90/0.98  --prep_def_merge_tr_cl                  false
% 3.90/0.98  --smt_preprocessing                     true
% 3.90/0.98  --smt_ac_axioms                         fast
% 3.90/0.98  --preprocessed_out                      false
% 3.90/0.98  --preprocessed_stats                    false
% 3.90/0.98  
% 3.90/0.98  ------ Abstraction refinement Options
% 3.90/0.98  
% 3.90/0.98  --abstr_ref                             []
% 3.90/0.98  --abstr_ref_prep                        false
% 3.90/0.98  --abstr_ref_until_sat                   false
% 3.90/0.98  --abstr_ref_sig_restrict                funpre
% 3.90/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 3.90/0.98  --abstr_ref_under                       []
% 3.90/0.98  
% 3.90/0.98  ------ SAT Options
% 3.90/0.98  
% 3.90/0.98  --sat_mode                              false
% 3.90/0.98  --sat_fm_restart_options                ""
% 3.90/0.98  --sat_gr_def                            false
% 3.90/0.98  --sat_epr_types                         true
% 3.90/0.98  --sat_non_cyclic_types                  false
% 3.90/0.98  --sat_finite_models                     false
% 3.90/0.98  --sat_fm_lemmas                         false
% 3.90/0.98  --sat_fm_prep                           false
% 3.90/0.98  --sat_fm_uc_incr                        true
% 3.90/0.98  --sat_out_model                         small
% 3.90/0.98  --sat_out_clauses                       false
% 3.90/0.98  
% 3.90/0.98  ------ QBF Options
% 3.90/0.98  
% 3.90/0.98  --qbf_mode                              false
% 3.90/0.98  --qbf_elim_univ                         false
% 3.90/0.98  --qbf_dom_inst                          none
% 3.90/0.98  --qbf_dom_pre_inst                      false
% 3.90/0.98  --qbf_sk_in                             false
% 3.90/0.98  --qbf_pred_elim                         true
% 3.90/0.98  --qbf_split                             512
% 3.90/0.98  
% 3.90/0.98  ------ BMC1 Options
% 3.90/0.98  
% 3.90/0.98  --bmc1_incremental                      false
% 3.90/0.98  --bmc1_axioms                           reachable_all
% 3.90/0.98  --bmc1_min_bound                        0
% 3.90/0.98  --bmc1_max_bound                        -1
% 3.90/0.98  --bmc1_max_bound_default                -1
% 3.90/0.98  --bmc1_symbol_reachability              true
% 3.90/0.98  --bmc1_property_lemmas                  false
% 3.90/0.98  --bmc1_k_induction                      false
% 3.90/0.98  --bmc1_non_equiv_states                 false
% 3.90/0.98  --bmc1_deadlock                         false
% 3.90/0.98  --bmc1_ucm                              false
% 3.90/0.98  --bmc1_add_unsat_core                   none
% 3.90/0.98  --bmc1_unsat_core_children              false
% 3.90/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 3.90/0.98  --bmc1_out_stat                         full
% 3.90/0.98  --bmc1_ground_init                      false
% 3.90/0.98  --bmc1_pre_inst_next_state              false
% 3.90/0.98  --bmc1_pre_inst_state                   false
% 3.90/0.98  --bmc1_pre_inst_reach_state             false
% 3.90/0.98  --bmc1_out_unsat_core                   false
% 3.90/0.98  --bmc1_aig_witness_out                  false
% 3.90/0.98  --bmc1_verbose                          false
% 3.90/0.98  --bmc1_dump_clauses_tptp                false
% 3.90/0.98  --bmc1_dump_unsat_core_tptp             false
% 3.90/0.98  --bmc1_dump_file                        -
% 3.90/0.98  --bmc1_ucm_expand_uc_limit              128
% 3.90/0.98  --bmc1_ucm_n_expand_iterations          6
% 3.90/0.98  --bmc1_ucm_extend_mode                  1
% 3.90/0.98  --bmc1_ucm_init_mode                    2
% 3.90/0.98  --bmc1_ucm_cone_mode                    none
% 3.90/0.98  --bmc1_ucm_reduced_relation_type        0
% 3.90/0.98  --bmc1_ucm_relax_model                  4
% 3.90/0.98  --bmc1_ucm_full_tr_after_sat            true
% 3.90/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 3.90/0.98  --bmc1_ucm_layered_model                none
% 3.90/0.98  --bmc1_ucm_max_lemma_size               10
% 3.90/0.98  
% 3.90/0.98  ------ AIG Options
% 3.90/0.98  
% 3.90/0.98  --aig_mode                              false
% 3.90/0.98  
% 3.90/0.98  ------ Instantiation Options
% 3.90/0.98  
% 3.90/0.98  --instantiation_flag                    false
% 3.90/0.98  --inst_sos_flag                         false
% 3.90/0.98  --inst_sos_phase                        true
% 3.90/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.90/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.90/0.98  --inst_lit_sel_side                     num_symb
% 3.90/0.98  --inst_solver_per_active                1400
% 3.90/0.98  --inst_solver_calls_frac                1.
% 3.90/0.98  --inst_passive_queue_type               priority_queues
% 3.90/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.90/0.98  --inst_passive_queues_freq              [25;2]
% 3.90/0.98  --inst_dismatching                      true
% 3.90/0.98  --inst_eager_unprocessed_to_passive     true
% 3.90/0.98  --inst_prop_sim_given                   true
% 3.90/0.98  --inst_prop_sim_new                     false
% 3.90/0.98  --inst_subs_new                         false
% 3.90/0.98  --inst_eq_res_simp                      false
% 3.90/0.98  --inst_subs_given                       false
% 3.90/0.98  --inst_orphan_elimination               true
% 3.90/0.98  --inst_learning_loop_flag               true
% 3.90/0.98  --inst_learning_start                   3000
% 3.90/0.98  --inst_learning_factor                  2
% 3.90/0.98  --inst_start_prop_sim_after_learn       3
% 3.90/0.98  --inst_sel_renew                        solver
% 3.90/0.98  --inst_lit_activity_flag                true
% 3.90/0.98  --inst_restr_to_given                   false
% 3.90/0.98  --inst_activity_threshold               500
% 3.90/0.98  --inst_out_proof                        true
% 3.90/0.98  
% 3.90/0.98  ------ Resolution Options
% 3.90/0.98  
% 3.90/0.98  --resolution_flag                       false
% 3.90/0.98  --res_lit_sel                           adaptive
% 3.90/0.98  --res_lit_sel_side                      none
% 3.90/0.98  --res_ordering                          kbo
% 3.90/0.98  --res_to_prop_solver                    active
% 3.90/0.98  --res_prop_simpl_new                    false
% 3.90/0.98  --res_prop_simpl_given                  true
% 3.90/0.98  --res_passive_queue_type                priority_queues
% 3.90/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.90/0.98  --res_passive_queues_freq               [15;5]
% 3.90/0.98  --res_forward_subs                      full
% 3.90/0.98  --res_backward_subs                     full
% 3.90/0.98  --res_forward_subs_resolution           true
% 3.90/0.98  --res_backward_subs_resolution          true
% 3.90/0.98  --res_orphan_elimination                true
% 3.90/0.98  --res_time_limit                        2.
% 3.90/0.98  --res_out_proof                         true
% 3.90/0.98  
% 3.90/0.98  ------ Superposition Options
% 3.90/0.98  
% 3.90/0.98  --superposition_flag                    true
% 3.90/0.98  --sup_passive_queue_type                priority_queues
% 3.90/0.98  --sup_passive_queues                    [[-conj_dist;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.90/0.98  --sup_passive_queues_freq               [8;1;4]
% 3.90/0.98  --demod_completeness_check              fast
% 3.90/0.98  --demod_use_ground                      true
% 3.90/0.98  --sup_to_prop_solver                    active
% 3.90/0.98  --sup_prop_simpl_new                    false
% 3.90/0.98  --sup_prop_simpl_given                  false
% 3.90/0.98  --sup_fun_splitting                     true
% 3.90/0.98  --sup_smt_interval                      10000
% 3.90/0.98  
% 3.90/0.98  ------ Superposition Simplification Setup
% 3.90/0.98  
% 3.90/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 3.90/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 3.90/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 3.90/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.90/0.98  --sup_full_triv                         [TrivRules]
% 3.90/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 3.90/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 3.90/0.98  --sup_immed_triv                        [TrivRules]
% 3.90/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.90/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.90/0.98  --sup_immed_bw_main                     []
% 3.90/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 3.90/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 3.90/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 3.90/0.98  --sup_input_bw                          [BwDemod;BwSubsumption]
% 3.90/0.98  
% 3.90/0.98  ------ Combination Options
% 3.90/0.98  
% 3.90/0.98  --comb_res_mult                         1
% 3.90/0.98  --comb_sup_mult                         1
% 3.90/0.98  --comb_inst_mult                        1000000
% 3.90/0.98  
% 3.90/0.98  ------ Debug Options
% 3.90/0.98  
% 3.90/0.98  --dbg_backtrace                         false
% 3.90/0.98  --dbg_dump_prop_clauses                 false
% 3.90/0.98  --dbg_dump_prop_clauses_file            -
% 3.90/0.98  --dbg_out_stat                          false
% 3.90/0.98  
% 3.90/0.98  
% 3.90/0.98  
% 3.90/0.98  
% 3.90/0.98  ------ Proving...
% 3.90/0.98  
% 3.90/0.98  
% 3.90/0.98  % SZS status Theorem for theBenchmark.p
% 3.90/0.98  
% 3.90/0.98   Resolution empty clause
% 3.90/0.98  
% 3.90/0.98  % SZS output start CNFRefutation for theBenchmark.p
% 3.90/0.98  
% 3.90/0.98  fof(f8,axiom,(
% 3.90/0.98    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f28,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 3.90/0.98    inference(cnf_transformation,[],[f8])).
% 3.90/0.98  
% 3.90/0.98  fof(f9,axiom,(
% 3.90/0.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f29,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 3.90/0.98    inference(cnf_transformation,[],[f9])).
% 3.90/0.98  
% 3.90/0.98  fof(f38,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 3.90/0.98    inference(definition_unfolding,[],[f28,f29])).
% 3.90/0.98  
% 3.90/0.98  fof(f6,axiom,(
% 3.90/0.98    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1)),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f26,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1)) )),
% 3.90/0.98    inference(cnf_transformation,[],[f6])).
% 3.90/0.98  
% 3.90/0.98  fof(f13,axiom,(
% 3.90/0.98    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f33,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 3.90/0.98    inference(cnf_transformation,[],[f13])).
% 3.90/0.98  
% 3.90/0.98  fof(f36,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),X1)) )),
% 3.90/0.98    inference(definition_unfolding,[],[f26,f33])).
% 3.90/0.98  
% 3.90/0.98  fof(f1,axiom,(
% 3.90/0.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f21,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 3.90/0.98    inference(cnf_transformation,[],[f1])).
% 3.90/0.98  
% 3.90/0.98  fof(f35,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 3.90/0.98    inference(definition_unfolding,[],[f21,f29,f29])).
% 3.90/0.98  
% 3.90/0.98  fof(f7,axiom,(
% 3.90/0.98    ! [X0,X1,X2] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2)),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f27,plain,(
% 3.90/0.98    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2)) )),
% 3.90/0.98    inference(cnf_transformation,[],[f7])).
% 3.90/0.98  
% 3.90/0.98  fof(f37,plain,(
% 3.90/0.98    ( ! [X2,X0,X1] : (k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k5_xboole_0(X1,k4_xboole_0(X2,X1)))) )),
% 3.90/0.98    inference(definition_unfolding,[],[f27,f33])).
% 3.90/0.98  
% 3.90/0.98  fof(f5,axiom,(
% 3.90/0.98    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f25,plain,(
% 3.90/0.98    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 3.90/0.98    inference(cnf_transformation,[],[f5])).
% 3.90/0.98  
% 3.90/0.98  fof(f3,axiom,(
% 3.90/0.98    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f16,plain,(
% 3.90/0.98    ! [X0,X1] : (r1_tarski(X0,X1) => k4_xboole_0(X0,X1) = k1_xboole_0)),
% 3.90/0.98    inference(unused_predicate_definition_removal,[],[f3])).
% 3.90/0.98  
% 3.90/0.98  fof(f17,plain,(
% 3.90/0.98    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1))),
% 3.90/0.98    inference(ennf_transformation,[],[f16])).
% 3.90/0.98  
% 3.90/0.98  fof(f23,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 3.90/0.98    inference(cnf_transformation,[],[f17])).
% 3.90/0.98  
% 3.90/0.98  fof(f4,axiom,(
% 3.90/0.98    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f24,plain,(
% 3.90/0.98    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 3.90/0.98    inference(cnf_transformation,[],[f4])).
% 3.90/0.98  
% 3.90/0.98  fof(f12,axiom,(
% 3.90/0.98    ! [X0] : k5_xboole_0(X0,X0) = k1_xboole_0),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f32,plain,(
% 3.90/0.98    ( ! [X0] : (k5_xboole_0(X0,X0) = k1_xboole_0) )),
% 3.90/0.98    inference(cnf_transformation,[],[f12])).
% 3.90/0.98  
% 3.90/0.98  fof(f11,axiom,(
% 3.90/0.98    ! [X0,X1,X2] : k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f31,plain,(
% 3.90/0.98    ( ! [X2,X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X0,X1),X2)) )),
% 3.90/0.98    inference(cnf_transformation,[],[f11])).
% 3.90/0.98  
% 3.90/0.98  fof(f10,axiom,(
% 3.90/0.98    ! [X0] : k5_xboole_0(X0,k1_xboole_0) = X0),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f30,plain,(
% 3.90/0.98    ( ! [X0] : (k5_xboole_0(X0,k1_xboole_0) = X0) )),
% 3.90/0.98    inference(cnf_transformation,[],[f10])).
% 3.90/0.98  
% 3.90/0.98  fof(f2,axiom,(
% 3.90/0.98    ! [X0,X1] : k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f22,plain,(
% 3.90/0.98    ( ! [X0,X1] : (k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0)) )),
% 3.90/0.98    inference(cnf_transformation,[],[f2])).
% 3.90/0.98  
% 3.90/0.98  fof(f14,conjecture,(
% 3.90/0.98    ! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)),
% 3.90/0.98    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 3.90/0.98  
% 3.90/0.98  fof(f15,negated_conjecture,(
% 3.90/0.98    ~! [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) = k4_xboole_0(X0,X1)),
% 3.90/0.98    inference(negated_conjecture,[],[f14])).
% 3.90/0.98  
% 3.90/0.98  fof(f18,plain,(
% 3.90/0.98    ? [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) != k4_xboole_0(X0,X1)),
% 3.90/0.98    inference(ennf_transformation,[],[f15])).
% 3.90/0.98  
% 3.90/0.98  fof(f19,plain,(
% 3.90/0.98    ? [X0,X1] : k5_xboole_0(X0,k3_xboole_0(X0,X1)) != k4_xboole_0(X0,X1) => k5_xboole_0(sK0,k3_xboole_0(sK0,sK1)) != k4_xboole_0(sK0,sK1)),
% 3.90/0.98    introduced(choice_axiom,[])).
% 3.90/0.98  
% 3.90/0.98  fof(f20,plain,(
% 3.90/0.98    k5_xboole_0(sK0,k3_xboole_0(sK0,sK1)) != k4_xboole_0(sK0,sK1)),
% 3.90/0.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f18,f19])).
% 3.90/0.98  
% 3.90/0.98  fof(f34,plain,(
% 3.90/0.98    k5_xboole_0(sK0,k3_xboole_0(sK0,sK1)) != k4_xboole_0(sK0,sK1)),
% 3.90/0.98    inference(cnf_transformation,[],[f20])).
% 3.90/0.98  
% 3.90/0.98  fof(f39,plain,(
% 3.90/0.98    k5_xboole_0(sK0,k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,sK1)),
% 3.90/0.98    inference(definition_unfolding,[],[f34,f29])).
% 3.90/0.98  
% 3.90/0.98  cnf(c_7,plain,
% 3.90/0.98      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
% 3.90/0.98      inference(cnf_transformation,[],[f38]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_5,plain,
% 3.90/0.98      ( k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),X1) = k4_xboole_0(X0,X1) ),
% 3.90/0.98      inference(cnf_transformation,[],[f36]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_0,plain,
% 3.90/0.98      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 3.90/0.98      inference(cnf_transformation,[],[f35]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_116,plain,
% 3.90/0.98      ( k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,k5_xboole_0(X0,k4_xboole_0(X1,X0)))) ),
% 3.90/0.98      inference(superposition,[status(thm)],[c_5,c_0]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_6,plain,
% 3.90/0.98      ( k4_xboole_0(X0,k5_xboole_0(X1,k4_xboole_0(X2,X1))) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
% 3.90/0.98      inference(cnf_transformation,[],[f37]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_119,plain,
% 3.90/0.98      ( k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(k4_xboole_0(X1,X0),X1)) ),
% 3.90/0.98      inference(demodulation,[status(thm)],[c_116,c_6]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_4,plain,
% 3.90/0.98      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.90/0.98      inference(cnf_transformation,[],[f25]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_2,plain,
% 3.90/0.98      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 3.90/0.98      inference(cnf_transformation,[],[f23]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_3,plain,
% 3.90/0.98      ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
% 3.90/0.98      inference(cnf_transformation,[],[f24]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_45,plain,
% 3.90/0.98      ( X0 != X1
% 3.90/0.98      | k4_xboole_0(X0,X2) != X3
% 3.90/0.98      | k4_xboole_0(X3,X1) = k1_xboole_0 ),
% 3.90/0.98      inference(resolution_lifted,[status(thm)],[c_2,c_3]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_46,plain,
% 3.90/0.98      ( k4_xboole_0(k4_xboole_0(X0,X1),X0) = k1_xboole_0 ),
% 3.90/0.98      inference(unflattening,[status(thm)],[c_45]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_120,plain,
% 3.90/0.98      ( k4_xboole_0(k5_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = X1 ),
% 3.90/0.98      inference(demodulation,[status(thm)],[c_119,c_4,c_46]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_1083,plain,
% 3.90/0.98      ( k4_xboole_0(k5_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X0,X1)),k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0)) = X0 ),
% 3.90/0.98      inference(superposition,[status(thm)],[c_7,c_120]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_1170,plain,
% 3.90/0.98      ( k5_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k4_xboole_0(X0,X1)) = X0 ),
% 3.90/0.98      inference(demodulation,[status(thm)],[c_1083,c_4,c_46]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_10,plain,
% 3.90/0.98      ( k5_xboole_0(X0,X0) = k1_xboole_0 ),
% 3.90/0.98      inference(cnf_transformation,[],[f32]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_9,plain,
% 3.90/0.98      ( k5_xboole_0(k5_xboole_0(X0,X1),X2) = k5_xboole_0(X0,k5_xboole_0(X1,X2)) ),
% 3.90/0.98      inference(cnf_transformation,[],[f31]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_147,plain,
% 3.90/0.98      ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = k5_xboole_0(k1_xboole_0,X1) ),
% 3.90/0.98      inference(superposition,[status(thm)],[c_10,c_9]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_8,plain,
% 3.90/0.98      ( k5_xboole_0(X0,k1_xboole_0) = X0 ),
% 3.90/0.98      inference(cnf_transformation,[],[f30]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_1,plain,
% 3.90/0.98      ( k5_xboole_0(X0,X1) = k5_xboole_0(X1,X0) ),
% 3.90/0.98      inference(cnf_transformation,[],[f22]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_65,plain,
% 3.90/0.98      ( k5_xboole_0(k1_xboole_0,X0) = X0 ),
% 3.90/0.98      inference(superposition,[status(thm)],[c_8,c_1]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_154,plain,
% 3.90/0.98      ( k5_xboole_0(X0,k5_xboole_0(X0,X1)) = X1 ),
% 3.90/0.98      inference(demodulation,[status(thm)],[c_147,c_65]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_62,plain,
% 3.90/0.98      ( k5_xboole_0(X0,k5_xboole_0(X1,X2)) = k5_xboole_0(X1,k5_xboole_0(X0,X2)) ),
% 3.90/0.98      inference(superposition,[status(thm)],[c_9,c_1]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_88,plain,
% 3.90/0.98      ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = k5_xboole_0(X1,k1_xboole_0) ),
% 3.90/0.98      inference(superposition,[status(thm)],[c_10,c_62]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_95,plain,
% 3.90/0.98      ( k5_xboole_0(X0,k5_xboole_0(X1,X0)) = X1 ),
% 3.90/0.98      inference(demodulation,[status(thm)],[c_88,c_8]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_208,plain,
% 3.90/0.98      ( k5_xboole_0(k5_xboole_0(X0,X1),X1) = X0 ),
% 3.90/0.98      inference(superposition,[status(thm)],[c_154,c_95]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_7937,plain,
% 3.90/0.98      ( k5_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
% 3.90/0.98      inference(superposition,[status(thm)],[c_1170,c_208]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_11,negated_conjecture,
% 3.90/0.98      ( k5_xboole_0(sK0,k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,sK1) ),
% 3.90/0.98      inference(cnf_transformation,[],[f39]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_17109,plain,
% 3.90/0.98      ( k4_xboole_0(sK0,k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,sK1) ),
% 3.90/0.98      inference(demodulation,[status(thm)],[c_7937,c_11]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_17110,plain,
% 3.90/0.98      ( k4_xboole_0(sK0,sK1) != k4_xboole_0(sK0,sK1) ),
% 3.90/0.98      inference(demodulation,[status(thm)],[c_17109,c_7]) ).
% 3.90/0.98  
% 3.90/0.98  cnf(c_17111,plain,
% 3.90/0.98      ( $false ),
% 3.90/0.98      inference(equality_resolution_simp,[status(thm)],[c_17110]) ).
% 3.90/0.98  
% 3.90/0.98  
% 3.90/0.98  % SZS output end CNFRefutation for theBenchmark.p
% 3.90/0.98  
% 3.90/0.98  ------                               Statistics
% 3.90/0.98  
% 3.90/0.98  ------ General
% 3.90/0.98  
% 3.90/0.98  abstr_ref_over_cycles:                  0
% 3.90/0.98  abstr_ref_under_cycles:                 0
% 3.90/0.98  gc_basic_clause_elim:                   0
% 3.90/0.98  forced_gc_time:                         0
% 3.90/0.98  parsing_time:                           0.007
% 3.90/0.98  unif_index_cands_time:                  0.
% 3.90/0.98  unif_index_add_time:                    0.
% 3.90/0.98  orderings_time:                         0.
% 3.90/0.98  out_proof_time:                         0.005
% 3.90/0.98  total_time:                             0.418
% 3.90/0.98  num_of_symbols:                         38
% 3.90/0.98  num_of_terms:                           20350
% 3.90/0.98  
% 3.90/0.98  ------ Preprocessing
% 3.90/0.98  
% 3.90/0.98  num_of_splits:                          0
% 3.90/0.98  num_of_split_atoms:                     1
% 3.90/0.98  num_of_reused_defs:                     0
% 3.90/0.98  num_eq_ax_congr_red:                    1
% 3.90/0.98  num_of_sem_filtered_clauses:            0
% 3.90/0.98  num_of_subtypes:                        0
% 3.90/0.98  monotx_restored_types:                  0
% 3.90/0.98  sat_num_of_epr_types:                   0
% 3.90/0.98  sat_num_of_non_cyclic_types:            0
% 3.90/0.98  sat_guarded_non_collapsed_types:        0
% 3.90/0.98  num_pure_diseq_elim:                    0
% 3.90/0.98  simp_replaced_by:                       0
% 3.90/0.98  res_preprocessed:                       38
% 3.90/0.98  prep_upred:                             0
% 3.90/0.98  prep_unflattend:                        2
% 3.90/0.98  smt_new_axioms:                         0
% 3.90/0.98  pred_elim_cands:                        0
% 3.90/0.98  pred_elim:                              1
% 3.90/0.98  pred_elim_cl:                           1
% 3.90/0.98  pred_elim_cycles:                       2
% 3.90/0.98  merged_defs:                            0
% 3.90/0.98  merged_defs_ncl:                        0
% 3.90/0.98  bin_hyper_res:                          0
% 3.90/0.98  prep_cycles:                            3
% 3.90/0.98  pred_elim_time:                         0.
% 3.90/0.98  splitting_time:                         0.
% 3.90/0.98  sem_filter_time:                        0.
% 3.90/0.98  monotx_time:                            0.
% 3.90/0.98  subtype_inf_time:                       0.
% 3.90/0.98  
% 3.90/0.98  ------ Problem properties
% 3.90/0.98  
% 3.90/0.98  clauses:                                11
% 3.90/0.98  conjectures:                            1
% 3.90/0.98  epr:                                    0
% 3.90/0.98  horn:                                   11
% 3.90/0.98  ground:                                 1
% 3.90/0.98  unary:                                  11
% 3.90/0.98  binary:                                 0
% 3.90/0.98  lits:                                   11
% 3.90/0.98  lits_eq:                                11
% 3.90/0.98  fd_pure:                                0
% 3.90/0.98  fd_pseudo:                              0
% 3.90/0.98  fd_cond:                                0
% 3.90/0.98  fd_pseudo_cond:                         0
% 3.90/0.98  ac_symbols:                             1
% 3.90/0.98  
% 3.90/0.98  ------ Propositional Solver
% 3.90/0.98  
% 3.90/0.98  prop_solver_calls:                      17
% 3.90/0.98  prop_fast_solver_calls:                 91
% 3.90/0.98  smt_solver_calls:                       0
% 3.90/0.98  smt_fast_solver_calls:                  0
% 3.90/0.98  prop_num_of_clauses:                    184
% 3.90/0.98  prop_preprocess_simplified:             590
% 3.90/0.98  prop_fo_subsumed:                       0
% 3.90/0.98  prop_solver_time:                       0.
% 3.90/0.98  smt_solver_time:                        0.
% 3.90/0.98  smt_fast_solver_time:                   0.
% 3.90/0.98  prop_fast_solver_time:                  0.
% 3.90/0.98  prop_unsat_core_time:                   0.
% 3.90/0.98  
% 3.90/0.98  ------ QBF
% 3.90/0.98  
% 3.90/0.98  qbf_q_res:                              0
% 3.90/0.98  qbf_num_tautologies:                    0
% 3.90/0.98  qbf_prep_cycles:                        0
% 3.90/0.98  
% 3.90/0.98  ------ BMC1
% 3.90/0.98  
% 3.90/0.98  bmc1_current_bound:                     -1
% 3.90/0.98  bmc1_last_solved_bound:                 -1
% 3.90/0.98  bmc1_unsat_core_size:                   -1
% 3.90/0.98  bmc1_unsat_core_parents_size:           -1
% 3.90/0.98  bmc1_merge_next_fun:                    0
% 3.90/0.98  bmc1_unsat_core_clauses_time:           0.
% 3.90/0.98  
% 3.90/0.98  ------ Instantiation
% 3.90/0.98  
% 3.90/0.98  inst_num_of_clauses:                    0
% 3.90/0.98  inst_num_in_passive:                    0
% 3.90/0.98  inst_num_in_active:                     0
% 3.90/0.98  inst_num_in_unprocessed:                0
% 3.90/0.98  inst_num_of_loops:                      0
% 3.90/0.98  inst_num_of_learning_restarts:          0
% 3.90/0.98  inst_num_moves_active_passive:          0
% 3.90/0.98  inst_lit_activity:                      0
% 3.90/0.98  inst_lit_activity_moves:                0
% 3.90/0.98  inst_num_tautologies:                   0
% 3.90/0.98  inst_num_prop_implied:                  0
% 3.90/0.98  inst_num_existing_simplified:           0
% 3.90/0.98  inst_num_eq_res_simplified:             0
% 3.90/0.98  inst_num_child_elim:                    0
% 3.90/0.98  inst_num_of_dismatching_blockings:      0
% 3.90/0.98  inst_num_of_non_proper_insts:           0
% 3.90/0.98  inst_num_of_duplicates:                 0
% 3.90/0.98  inst_inst_num_from_inst_to_res:         0
% 3.90/0.98  inst_dismatching_checking_time:         0.
% 3.90/0.98  
% 3.90/0.98  ------ Resolution
% 3.90/0.98  
% 3.90/0.98  res_num_of_clauses:                     0
% 3.90/0.98  res_num_in_passive:                     0
% 3.90/0.98  res_num_in_active:                      0
% 3.90/0.98  res_num_of_loops:                       41
% 3.90/0.98  res_forward_subset_subsumed:            0
% 3.90/0.98  res_backward_subset_subsumed:           0
% 3.90/0.98  res_forward_subsumed:                   0
% 3.90/0.98  res_backward_subsumed:                  0
% 3.90/0.98  res_forward_subsumption_resolution:     0
% 3.90/0.98  res_backward_subsumption_resolution:    0
% 3.90/0.98  res_clause_to_clause_subsumption:       29938
% 3.90/0.98  res_orphan_elimination:                 0
% 3.90/0.98  res_tautology_del:                      0
% 3.90/0.98  res_num_eq_res_simplified:              0
% 3.90/0.98  res_num_sel_changes:                    0
% 3.90/0.98  res_moves_from_active_to_pass:          0
% 3.90/0.98  
% 3.90/0.98  ------ Superposition
% 3.90/0.98  
% 3.90/0.98  sup_time_total:                         0.
% 3.90/0.98  sup_time_generating:                    0.
% 3.90/0.98  sup_time_sim_full:                      0.
% 3.90/0.98  sup_time_sim_immed:                     0.
% 3.90/0.98  
% 3.90/0.98  sup_num_of_clauses:                     1350
% 3.90/0.98  sup_num_in_active:                      103
% 3.90/0.98  sup_num_in_passive:                     1247
% 3.90/0.98  sup_num_of_loops:                       110
% 3.90/0.98  sup_fw_superposition:                   6499
% 3.90/0.98  sup_bw_superposition:                   5286
% 3.90/0.98  sup_immediate_simplified:               4616
% 3.90/0.98  sup_given_eliminated:                   2
% 3.90/0.98  comparisons_done:                       0
% 3.90/0.98  comparisons_avoided:                    0
% 3.90/0.98  
% 3.90/0.98  ------ Simplifications
% 3.90/0.98  
% 3.90/0.98  
% 3.90/0.98  sim_fw_subset_subsumed:                 0
% 3.90/0.98  sim_bw_subset_subsumed:                 0
% 3.90/0.98  sim_fw_subsumed:                        547
% 3.90/0.98  sim_bw_subsumed:                        9
% 3.90/0.98  sim_fw_subsumption_res:                 0
% 3.90/0.98  sim_bw_subsumption_res:                 0
% 3.90/0.98  sim_tautology_del:                      0
% 3.90/0.98  sim_eq_tautology_del:                   1822
% 3.90/0.98  sim_eq_res_simp:                        0
% 3.90/0.98  sim_fw_demodulated:                     2765
% 3.90/0.98  sim_bw_demodulated:                     35
% 3.90/0.98  sim_light_normalised:                   2118
% 3.90/0.98  sim_joinable_taut:                      136
% 3.90/0.98  sim_joinable_simp:                      0
% 3.90/0.98  sim_ac_normalised:                      0
% 3.90/0.98  sim_smt_subsumption:                    0
% 3.90/0.98  
%------------------------------------------------------------------------------
