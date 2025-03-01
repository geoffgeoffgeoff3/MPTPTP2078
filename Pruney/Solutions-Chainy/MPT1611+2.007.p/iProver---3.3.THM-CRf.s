%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:20:21 EST 2020

% Result     : Theorem 0.68s
% Output     : CNFRefutation 0.68s
% Verified   : 
% Statistics : Number of formulae       :   50 (  54 expanded)
%              Number of clauses        :   16 (  16 expanded)
%              Number of leaves         :   10 (  12 expanded)
%              Depth                    :   10
%              Number of atoms          :  124 ( 128 expanded)
%              Number of equality atoms :   52 (  56 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] : ~ v1_xboole_0(k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f39,plain,(
    ! [X0] : ~ v1_xboole_0(k9_setfam_1(X0)) ),
    inference(definition_unfolding,[],[f29,f30])).

fof(f6,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ( r2_hidden(k3_tarski(X0),X0)
       => k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f11,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f10])).

fof(f31,plain,(
    ! [X0] :
      ( k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))
      | ~ r2_hidden(k3_tarski(X0),X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f3,axiom,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f3])).

fof(f38,plain,(
    ! [X0] : k3_tarski(k9_setfam_1(X0)) = X0 ),
    inference(definition_unfolding,[],[f28,f30])).

fof(f1,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f13])).

fof(f21,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | X0 != X1 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f42,plain,(
    ! [X1] : r1_tarski(X1,X1) ),
    inference(equality_resolution,[],[f21])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( k1_zfmisc_1(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> r1_tarski(X2,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | ~ r1_tarski(X2,X0) )
            & ( r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f16,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ? [X2] :
            ( ( ~ r1_tarski(X2,X0)
              | ~ r2_hidden(X2,X1) )
            & ( r1_tarski(X2,X0)
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(rectify,[],[f15])).

fof(f17,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( ~ r1_tarski(X2,X0)
            | ~ r2_hidden(X2,X1) )
          & ( r1_tarski(X2,X0)
            | r2_hidden(X2,X1) ) )
     => ( ( ~ r1_tarski(sK0(X0,X1),X0)
          | ~ r2_hidden(sK0(X0,X1),X1) )
        & ( r1_tarski(sK0(X0,X1),X0)
          | r2_hidden(sK0(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ( k1_zfmisc_1(X0) = X1
        | ( ( ~ r1_tarski(sK0(X0,X1),X0)
            | ~ r2_hidden(sK0(X0,X1),X1) )
          & ( r1_tarski(sK0(X0,X1),X0)
            | r2_hidden(sK0(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r1_tarski(X3,X0) )
            & ( r1_tarski(X3,X0)
              | ~ r2_hidden(X3,X1) ) )
        | k1_zfmisc_1(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).

fof(f25,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r1_tarski(X3,X0)
      | k1_zfmisc_1(X0) != X1 ) ),
    inference(cnf_transformation,[],[f18])).

fof(f36,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | ~ r1_tarski(X3,X0)
      | k9_setfam_1(X0) != X1 ) ),
    inference(definition_unfolding,[],[f25,f30])).

fof(f43,plain,(
    ! [X0,X3] :
      ( r2_hidden(X3,k9_setfam_1(X0))
      | ~ r1_tarski(X3,X0) ) ),
    inference(equality_resolution,[],[f36])).

fof(f8,conjecture,(
    ! [X0] : k4_yellow_0(k3_yellow_1(X0)) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0] : k4_yellow_0(k3_yellow_1(X0)) = X0 ),
    inference(negated_conjecture,[],[f8])).

fof(f12,plain,(
    ? [X0] : k4_yellow_0(k3_yellow_1(X0)) != X0 ),
    inference(ennf_transformation,[],[f9])).

fof(f19,plain,
    ( ? [X0] : k4_yellow_0(k3_yellow_1(X0)) != X0
   => k4_yellow_0(k3_yellow_1(sK1)) != sK1 ),
    introduced(choice_axiom,[])).

fof(f20,plain,(
    k4_yellow_0(k3_yellow_1(sK1)) != sK1 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f12,f19])).

fof(f33,plain,(
    k4_yellow_0(k3_yellow_1(sK1)) != sK1 ),
    inference(cnf_transformation,[],[f20])).

fof(f7,axiom,(
    ! [X0] : k2_yellow_1(k9_setfam_1(X0)) = k3_yellow_1(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] : k2_yellow_1(k9_setfam_1(X0)) = k3_yellow_1(X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f40,plain,(
    k4_yellow_0(k2_yellow_1(k9_setfam_1(sK1))) != sK1 ),
    inference(definition_unfolding,[],[f33,f32])).

cnf(c_8,plain,
    ( ~ v1_xboole_0(k9_setfam_1(X0)) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_9,plain,
    ( ~ r2_hidden(k3_tarski(X0),X0)
    | v1_xboole_0(X0)
    | k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_132,plain,
    ( ~ r2_hidden(k3_tarski(X0),X0)
    | k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0)
    | k9_setfam_1(X1) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_9])).

cnf(c_133,plain,
    ( ~ r2_hidden(k3_tarski(k9_setfam_1(X0)),k9_setfam_1(X0))
    | k4_yellow_0(k2_yellow_1(k9_setfam_1(X0))) = k3_tarski(k9_setfam_1(X0)) ),
    inference(unflattening,[status(thm)],[c_132])).

cnf(c_587,plain,
    ( k4_yellow_0(k2_yellow_1(k9_setfam_1(X0))) = k3_tarski(k9_setfam_1(X0))
    | r2_hidden(k3_tarski(k9_setfam_1(X0)),k9_setfam_1(X0)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_133])).

cnf(c_7,plain,
    ( k3_tarski(k9_setfam_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_614,plain,
    ( k4_yellow_0(k2_yellow_1(k9_setfam_1(X0))) = X0
    | r2_hidden(X0,k9_setfam_1(X0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_587,c_7])).

cnf(c_635,plain,
    ( k4_yellow_0(k2_yellow_1(k9_setfam_1(sK1))) = sK1
    | r2_hidden(sK1,k9_setfam_1(sK1)) != iProver_top ),
    inference(instantiation,[status(thm)],[c_614])).

cnf(c_2,plain,
    ( r1_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_30,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_32,plain,
    ( r1_tarski(sK1,sK1) = iProver_top ),
    inference(instantiation,[status(thm)],[c_30])).

cnf(c_5,plain,
    ( r2_hidden(X0,k9_setfam_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f43])).

cnf(c_21,plain,
    ( r2_hidden(X0,k9_setfam_1(X1)) = iProver_top
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_23,plain,
    ( r2_hidden(sK1,k9_setfam_1(sK1)) = iProver_top
    | r1_tarski(sK1,sK1) != iProver_top ),
    inference(instantiation,[status(thm)],[c_21])).

cnf(c_10,negated_conjecture,
    ( k4_yellow_0(k2_yellow_1(k9_setfam_1(sK1))) != sK1 ),
    inference(cnf_transformation,[],[f40])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_635,c_32,c_23,c_10])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n021.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 15:51:04 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 0.68/0.96  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.68/0.96  
% 0.68/0.96  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.68/0.96  
% 0.68/0.96  ------  iProver source info
% 0.68/0.96  
% 0.68/0.96  git: date: 2020-06-30 10:37:57 +0100
% 0.68/0.96  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.68/0.96  git: non_committed_changes: false
% 0.68/0.96  git: last_make_outside_of_git: false
% 0.68/0.96  
% 0.68/0.96  ------ 
% 0.68/0.96  
% 0.68/0.96  ------ Input Options
% 0.68/0.96  
% 0.68/0.96  --out_options                           all
% 0.68/0.96  --tptp_safe_out                         true
% 0.68/0.96  --problem_path                          ""
% 0.68/0.96  --include_path                          ""
% 0.68/0.96  --clausifier                            res/vclausify_rel
% 0.68/0.96  --clausifier_options                    --mode clausify
% 0.68/0.96  --stdin                                 false
% 0.68/0.96  --stats_out                             all
% 0.68/0.96  
% 0.68/0.96  ------ General Options
% 0.68/0.96  
% 0.68/0.96  --fof                                   false
% 0.68/0.96  --time_out_real                         305.
% 0.68/0.96  --time_out_virtual                      -1.
% 0.68/0.96  --symbol_type_check                     false
% 0.68/0.96  --clausify_out                          false
% 0.68/0.96  --sig_cnt_out                           false
% 0.68/0.96  --trig_cnt_out                          false
% 0.68/0.96  --trig_cnt_out_tolerance                1.
% 0.68/0.96  --trig_cnt_out_sk_spl                   false
% 0.68/0.96  --abstr_cl_out                          false
% 0.68/0.96  
% 0.68/0.96  ------ Global Options
% 0.68/0.96  
% 0.68/0.96  --schedule                              default
% 0.68/0.96  --add_important_lit                     false
% 0.68/0.96  --prop_solver_per_cl                    1000
% 0.68/0.96  --min_unsat_core                        false
% 0.68/0.96  --soft_assumptions                      false
% 0.68/0.96  --soft_lemma_size                       3
% 0.68/0.96  --prop_impl_unit_size                   0
% 0.68/0.96  --prop_impl_unit                        []
% 0.68/0.96  --share_sel_clauses                     true
% 0.68/0.96  --reset_solvers                         false
% 0.68/0.96  --bc_imp_inh                            [conj_cone]
% 0.68/0.96  --conj_cone_tolerance                   3.
% 0.68/0.96  --extra_neg_conj                        none
% 0.68/0.96  --large_theory_mode                     true
% 0.68/0.96  --prolific_symb_bound                   200
% 0.68/0.96  --lt_threshold                          2000
% 0.68/0.96  --clause_weak_htbl                      true
% 0.68/0.96  --gc_record_bc_elim                     false
% 0.68/0.96  
% 0.68/0.96  ------ Preprocessing Options
% 0.68/0.96  
% 0.68/0.96  --preprocessing_flag                    true
% 0.68/0.96  --time_out_prep_mult                    0.1
% 0.68/0.96  --splitting_mode                        input
% 0.68/0.96  --splitting_grd                         true
% 0.68/0.96  --splitting_cvd                         false
% 0.68/0.96  --splitting_cvd_svl                     false
% 0.68/0.96  --splitting_nvd                         32
% 0.68/0.96  --sub_typing                            true
% 0.68/0.96  --prep_gs_sim                           true
% 0.68/0.96  --prep_unflatten                        true
% 0.68/0.96  --prep_res_sim                          true
% 0.68/0.96  --prep_upred                            true
% 0.68/0.96  --prep_sem_filter                       exhaustive
% 0.68/0.96  --prep_sem_filter_out                   false
% 0.68/0.96  --pred_elim                             true
% 0.68/0.96  --res_sim_input                         true
% 0.68/0.96  --eq_ax_congr_red                       true
% 0.68/0.96  --pure_diseq_elim                       true
% 0.68/0.96  --brand_transform                       false
% 0.68/0.96  --non_eq_to_eq                          false
% 0.68/0.96  --prep_def_merge                        true
% 0.68/0.96  --prep_def_merge_prop_impl              false
% 0.68/0.96  --prep_def_merge_mbd                    true
% 0.68/0.96  --prep_def_merge_tr_red                 false
% 0.68/0.96  --prep_def_merge_tr_cl                  false
% 0.68/0.96  --smt_preprocessing                     true
% 0.68/0.96  --smt_ac_axioms                         fast
% 0.68/0.96  --preprocessed_out                      false
% 0.68/0.96  --preprocessed_stats                    false
% 0.68/0.96  
% 0.68/0.96  ------ Abstraction refinement Options
% 0.68/0.96  
% 0.68/0.96  --abstr_ref                             []
% 0.68/0.96  --abstr_ref_prep                        false
% 0.68/0.96  --abstr_ref_until_sat                   false
% 0.68/0.96  --abstr_ref_sig_restrict                funpre
% 0.68/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 0.68/0.96  --abstr_ref_under                       []
% 0.68/0.96  
% 0.68/0.96  ------ SAT Options
% 0.68/0.96  
% 0.68/0.96  --sat_mode                              false
% 0.68/0.96  --sat_fm_restart_options                ""
% 0.68/0.96  --sat_gr_def                            false
% 0.68/0.96  --sat_epr_types                         true
% 0.68/0.96  --sat_non_cyclic_types                  false
% 0.68/0.96  --sat_finite_models                     false
% 0.68/0.96  --sat_fm_lemmas                         false
% 0.68/0.96  --sat_fm_prep                           false
% 0.68/0.96  --sat_fm_uc_incr                        true
% 0.68/0.96  --sat_out_model                         small
% 0.68/0.96  --sat_out_clauses                       false
% 0.68/0.96  
% 0.68/0.96  ------ QBF Options
% 0.68/0.96  
% 0.68/0.96  --qbf_mode                              false
% 0.68/0.96  --qbf_elim_univ                         false
% 0.68/0.96  --qbf_dom_inst                          none
% 0.68/0.96  --qbf_dom_pre_inst                      false
% 0.68/0.96  --qbf_sk_in                             false
% 0.68/0.96  --qbf_pred_elim                         true
% 0.68/0.96  --qbf_split                             512
% 0.68/0.96  
% 0.68/0.96  ------ BMC1 Options
% 0.68/0.96  
% 0.68/0.96  --bmc1_incremental                      false
% 0.68/0.96  --bmc1_axioms                           reachable_all
% 0.68/0.96  --bmc1_min_bound                        0
% 0.68/0.96  --bmc1_max_bound                        -1
% 0.68/0.96  --bmc1_max_bound_default                -1
% 0.68/0.96  --bmc1_symbol_reachability              true
% 0.68/0.96  --bmc1_property_lemmas                  false
% 0.68/0.96  --bmc1_k_induction                      false
% 0.68/0.96  --bmc1_non_equiv_states                 false
% 0.68/0.96  --bmc1_deadlock                         false
% 0.68/0.96  --bmc1_ucm                              false
% 0.68/0.96  --bmc1_add_unsat_core                   none
% 0.68/0.96  --bmc1_unsat_core_children              false
% 0.68/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 0.68/0.96  --bmc1_out_stat                         full
% 0.68/0.96  --bmc1_ground_init                      false
% 0.68/0.96  --bmc1_pre_inst_next_state              false
% 0.68/0.96  --bmc1_pre_inst_state                   false
% 0.68/0.96  --bmc1_pre_inst_reach_state             false
% 0.68/0.96  --bmc1_out_unsat_core                   false
% 0.68/0.96  --bmc1_aig_witness_out                  false
% 0.68/0.96  --bmc1_verbose                          false
% 0.68/0.96  --bmc1_dump_clauses_tptp                false
% 0.68/0.96  --bmc1_dump_unsat_core_tptp             false
% 0.68/0.96  --bmc1_dump_file                        -
% 0.68/0.96  --bmc1_ucm_expand_uc_limit              128
% 0.68/0.96  --bmc1_ucm_n_expand_iterations          6
% 0.68/0.96  --bmc1_ucm_extend_mode                  1
% 0.68/0.96  --bmc1_ucm_init_mode                    2
% 0.68/0.96  --bmc1_ucm_cone_mode                    none
% 0.68/0.96  --bmc1_ucm_reduced_relation_type        0
% 0.68/0.96  --bmc1_ucm_relax_model                  4
% 0.68/0.96  --bmc1_ucm_full_tr_after_sat            true
% 0.68/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 0.68/0.96  --bmc1_ucm_layered_model                none
% 0.68/0.96  --bmc1_ucm_max_lemma_size               10
% 0.68/0.96  
% 0.68/0.96  ------ AIG Options
% 0.68/0.96  
% 0.68/0.96  --aig_mode                              false
% 0.68/0.96  
% 0.68/0.96  ------ Instantiation Options
% 0.68/0.96  
% 0.68/0.96  --instantiation_flag                    true
% 0.68/0.96  --inst_sos_flag                         false
% 0.68/0.96  --inst_sos_phase                        true
% 0.68/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.68/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.68/0.96  --inst_lit_sel_side                     num_symb
% 0.68/0.96  --inst_solver_per_active                1400
% 0.68/0.96  --inst_solver_calls_frac                1.
% 0.68/0.96  --inst_passive_queue_type               priority_queues
% 0.68/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.68/0.96  --inst_passive_queues_freq              [25;2]
% 0.68/0.96  --inst_dismatching                      true
% 0.68/0.96  --inst_eager_unprocessed_to_passive     true
% 0.68/0.96  --inst_prop_sim_given                   true
% 0.68/0.96  --inst_prop_sim_new                     false
% 0.68/0.96  --inst_subs_new                         false
% 0.68/0.96  --inst_eq_res_simp                      false
% 0.68/0.96  --inst_subs_given                       false
% 0.68/0.96  --inst_orphan_elimination               true
% 0.68/0.96  --inst_learning_loop_flag               true
% 0.68/0.96  --inst_learning_start                   3000
% 0.68/0.96  --inst_learning_factor                  2
% 0.68/0.96  --inst_start_prop_sim_after_learn       3
% 0.68/0.96  --inst_sel_renew                        solver
% 0.68/0.96  --inst_lit_activity_flag                true
% 0.68/0.96  --inst_restr_to_given                   false
% 0.68/0.96  --inst_activity_threshold               500
% 0.68/0.96  --inst_out_proof                        true
% 0.68/0.96  
% 0.68/0.96  ------ Resolution Options
% 0.68/0.96  
% 0.68/0.96  --resolution_flag                       true
% 0.68/0.96  --res_lit_sel                           adaptive
% 0.68/0.96  --res_lit_sel_side                      none
% 0.68/0.96  --res_ordering                          kbo
% 0.68/0.96  --res_to_prop_solver                    active
% 0.68/0.96  --res_prop_simpl_new                    false
% 0.68/0.96  --res_prop_simpl_given                  true
% 0.68/0.96  --res_passive_queue_type                priority_queues
% 0.68/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.68/0.96  --res_passive_queues_freq               [15;5]
% 0.68/0.96  --res_forward_subs                      full
% 0.68/0.96  --res_backward_subs                     full
% 0.68/0.96  --res_forward_subs_resolution           true
% 0.68/0.96  --res_backward_subs_resolution          true
% 0.68/0.96  --res_orphan_elimination                true
% 0.68/0.96  --res_time_limit                        2.
% 0.68/0.96  --res_out_proof                         true
% 0.68/0.96  
% 0.68/0.96  ------ Superposition Options
% 0.68/0.96  
% 0.68/0.96  --superposition_flag                    true
% 0.68/0.96  --sup_passive_queue_type                priority_queues
% 0.68/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.68/0.96  --sup_passive_queues_freq               [8;1;4]
% 0.68/0.96  --demod_completeness_check              fast
% 0.68/0.96  --demod_use_ground                      true
% 0.68/0.96  --sup_to_prop_solver                    passive
% 0.68/0.96  --sup_prop_simpl_new                    true
% 0.68/0.96  --sup_prop_simpl_given                  true
% 0.68/0.96  --sup_fun_splitting                     false
% 0.68/0.96  --sup_smt_interval                      50000
% 0.68/0.96  
% 0.68/0.96  ------ Superposition Simplification Setup
% 0.68/0.96  
% 0.68/0.96  --sup_indices_passive                   []
% 0.68/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.68/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.68/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.68/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 0.68/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.68/0.96  --sup_full_bw                           [BwDemod]
% 0.68/0.96  --sup_immed_triv                        [TrivRules]
% 0.68/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.68/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.68/0.96  --sup_immed_bw_main                     []
% 0.68/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.68/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 0.68/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.68/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.68/0.96  
% 0.68/0.96  ------ Combination Options
% 0.68/0.96  
% 0.68/0.96  --comb_res_mult                         3
% 0.68/0.96  --comb_sup_mult                         2
% 0.68/0.96  --comb_inst_mult                        10
% 0.68/0.96  
% 0.68/0.96  ------ Debug Options
% 0.68/0.96  
% 0.68/0.96  --dbg_backtrace                         false
% 0.68/0.96  --dbg_dump_prop_clauses                 false
% 0.68/0.96  --dbg_dump_prop_clauses_file            -
% 0.68/0.96  --dbg_out_stat                          false
% 0.68/0.96  ------ Parsing...
% 0.68/0.96  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.68/0.96  
% 0.68/0.96  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 0.68/0.96  
% 0.68/0.96  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.68/0.96  
% 0.68/0.96  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.68/0.96  ------ Proving...
% 0.68/0.96  ------ Problem Properties 
% 0.68/0.96  
% 0.68/0.96  
% 0.68/0.96  clauses                                 9
% 0.68/0.96  conjectures                             1
% 0.68/0.96  EPR                                     2
% 0.68/0.96  Horn                                    8
% 0.68/0.96  unary                                   3
% 0.68/0.96  binary                                  3
% 0.68/0.96  lits                                    18
% 0.68/0.96  lits eq                                 6
% 0.68/0.96  fd_pure                                 0
% 0.68/0.96  fd_pseudo                               0
% 0.68/0.96  fd_cond                                 0
% 0.68/0.96  fd_pseudo_cond                          3
% 0.68/0.96  AC symbols                              0
% 0.68/0.96  
% 0.68/0.96  ------ Schedule dynamic 5 is on 
% 0.68/0.96  
% 0.68/0.96  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.68/0.96  
% 0.68/0.96  
% 0.68/0.96  ------ 
% 0.68/0.96  Current options:
% 0.68/0.96  ------ 
% 0.68/0.96  
% 0.68/0.96  ------ Input Options
% 0.68/0.96  
% 0.68/0.96  --out_options                           all
% 0.68/0.96  --tptp_safe_out                         true
% 0.68/0.96  --problem_path                          ""
% 0.68/0.96  --include_path                          ""
% 0.68/0.96  --clausifier                            res/vclausify_rel
% 0.68/0.96  --clausifier_options                    --mode clausify
% 0.68/0.96  --stdin                                 false
% 0.68/0.96  --stats_out                             all
% 0.68/0.96  
% 0.68/0.96  ------ General Options
% 0.68/0.96  
% 0.68/0.96  --fof                                   false
% 0.68/0.96  --time_out_real                         305.
% 0.68/0.96  --time_out_virtual                      -1.
% 0.68/0.96  --symbol_type_check                     false
% 0.68/0.96  --clausify_out                          false
% 0.68/0.96  --sig_cnt_out                           false
% 0.68/0.96  --trig_cnt_out                          false
% 0.68/0.96  --trig_cnt_out_tolerance                1.
% 0.68/0.96  --trig_cnt_out_sk_spl                   false
% 0.68/0.96  --abstr_cl_out                          false
% 0.68/0.96  
% 0.68/0.96  ------ Global Options
% 0.68/0.96  
% 0.68/0.96  --schedule                              default
% 0.68/0.96  --add_important_lit                     false
% 0.68/0.96  --prop_solver_per_cl                    1000
% 0.68/0.96  --min_unsat_core                        false
% 0.68/0.96  --soft_assumptions                      false
% 0.68/0.96  --soft_lemma_size                       3
% 0.68/0.96  --prop_impl_unit_size                   0
% 0.68/0.96  --prop_impl_unit                        []
% 0.68/0.96  --share_sel_clauses                     true
% 0.68/0.96  --reset_solvers                         false
% 0.68/0.96  --bc_imp_inh                            [conj_cone]
% 0.68/0.96  --conj_cone_tolerance                   3.
% 0.68/0.96  --extra_neg_conj                        none
% 0.68/0.96  --large_theory_mode                     true
% 0.68/0.96  --prolific_symb_bound                   200
% 0.68/0.96  --lt_threshold                          2000
% 0.68/0.96  --clause_weak_htbl                      true
% 0.68/0.96  --gc_record_bc_elim                     false
% 0.68/0.96  
% 0.68/0.96  ------ Preprocessing Options
% 0.68/0.96  
% 0.68/0.96  --preprocessing_flag                    true
% 0.68/0.96  --time_out_prep_mult                    0.1
% 0.68/0.96  --splitting_mode                        input
% 0.68/0.96  --splitting_grd                         true
% 0.68/0.96  --splitting_cvd                         false
% 0.68/0.96  --splitting_cvd_svl                     false
% 0.68/0.96  --splitting_nvd                         32
% 0.68/0.96  --sub_typing                            true
% 0.68/0.96  --prep_gs_sim                           true
% 0.68/0.96  --prep_unflatten                        true
% 0.68/0.96  --prep_res_sim                          true
% 0.68/0.96  --prep_upred                            true
% 0.68/0.96  --prep_sem_filter                       exhaustive
% 0.68/0.96  --prep_sem_filter_out                   false
% 0.68/0.96  --pred_elim                             true
% 0.68/0.96  --res_sim_input                         true
% 0.68/0.96  --eq_ax_congr_red                       true
% 0.68/0.96  --pure_diseq_elim                       true
% 0.68/0.96  --brand_transform                       false
% 0.68/0.96  --non_eq_to_eq                          false
% 0.68/0.96  --prep_def_merge                        true
% 0.68/0.96  --prep_def_merge_prop_impl              false
% 0.68/0.96  --prep_def_merge_mbd                    true
% 0.68/0.96  --prep_def_merge_tr_red                 false
% 0.68/0.96  --prep_def_merge_tr_cl                  false
% 0.68/0.96  --smt_preprocessing                     true
% 0.68/0.96  --smt_ac_axioms                         fast
% 0.68/0.96  --preprocessed_out                      false
% 0.68/0.96  --preprocessed_stats                    false
% 0.68/0.96  
% 0.68/0.96  ------ Abstraction refinement Options
% 0.68/0.96  
% 0.68/0.96  --abstr_ref                             []
% 0.68/0.96  --abstr_ref_prep                        false
% 0.68/0.96  --abstr_ref_until_sat                   false
% 0.68/0.96  --abstr_ref_sig_restrict                funpre
% 0.68/0.96  --abstr_ref_af_restrict_to_split_sk     false
% 0.68/0.96  --abstr_ref_under                       []
% 0.68/0.96  
% 0.68/0.96  ------ SAT Options
% 0.68/0.96  
% 0.68/0.96  --sat_mode                              false
% 0.68/0.96  --sat_fm_restart_options                ""
% 0.68/0.96  --sat_gr_def                            false
% 0.68/0.96  --sat_epr_types                         true
% 0.68/0.96  --sat_non_cyclic_types                  false
% 0.68/0.96  --sat_finite_models                     false
% 0.68/0.96  --sat_fm_lemmas                         false
% 0.68/0.96  --sat_fm_prep                           false
% 0.68/0.96  --sat_fm_uc_incr                        true
% 0.68/0.96  --sat_out_model                         small
% 0.68/0.96  --sat_out_clauses                       false
% 0.68/0.96  
% 0.68/0.96  ------ QBF Options
% 0.68/0.96  
% 0.68/0.96  --qbf_mode                              false
% 0.68/0.96  --qbf_elim_univ                         false
% 0.68/0.96  --qbf_dom_inst                          none
% 0.68/0.96  --qbf_dom_pre_inst                      false
% 0.68/0.96  --qbf_sk_in                             false
% 0.68/0.96  --qbf_pred_elim                         true
% 0.68/0.96  --qbf_split                             512
% 0.68/0.96  
% 0.68/0.96  ------ BMC1 Options
% 0.68/0.96  
% 0.68/0.96  --bmc1_incremental                      false
% 0.68/0.96  --bmc1_axioms                           reachable_all
% 0.68/0.96  --bmc1_min_bound                        0
% 0.68/0.96  --bmc1_max_bound                        -1
% 0.68/0.96  --bmc1_max_bound_default                -1
% 0.68/0.96  --bmc1_symbol_reachability              true
% 0.68/0.96  --bmc1_property_lemmas                  false
% 0.68/0.96  --bmc1_k_induction                      false
% 0.68/0.96  --bmc1_non_equiv_states                 false
% 0.68/0.96  --bmc1_deadlock                         false
% 0.68/0.96  --bmc1_ucm                              false
% 0.68/0.96  --bmc1_add_unsat_core                   none
% 0.68/0.96  --bmc1_unsat_core_children              false
% 0.68/0.96  --bmc1_unsat_core_extrapolate_axioms    false
% 0.68/0.96  --bmc1_out_stat                         full
% 0.68/0.96  --bmc1_ground_init                      false
% 0.68/0.96  --bmc1_pre_inst_next_state              false
% 0.68/0.96  --bmc1_pre_inst_state                   false
% 0.68/0.96  --bmc1_pre_inst_reach_state             false
% 0.68/0.96  --bmc1_out_unsat_core                   false
% 0.68/0.96  --bmc1_aig_witness_out                  false
% 0.68/0.96  --bmc1_verbose                          false
% 0.68/0.96  --bmc1_dump_clauses_tptp                false
% 0.68/0.96  --bmc1_dump_unsat_core_tptp             false
% 0.68/0.96  --bmc1_dump_file                        -
% 0.68/0.96  --bmc1_ucm_expand_uc_limit              128
% 0.68/0.96  --bmc1_ucm_n_expand_iterations          6
% 0.68/0.96  --bmc1_ucm_extend_mode                  1
% 0.68/0.96  --bmc1_ucm_init_mode                    2
% 0.68/0.96  --bmc1_ucm_cone_mode                    none
% 0.68/0.96  --bmc1_ucm_reduced_relation_type        0
% 0.68/0.96  --bmc1_ucm_relax_model                  4
% 0.68/0.96  --bmc1_ucm_full_tr_after_sat            true
% 0.68/0.96  --bmc1_ucm_expand_neg_assumptions       false
% 0.68/0.96  --bmc1_ucm_layered_model                none
% 0.68/0.96  --bmc1_ucm_max_lemma_size               10
% 0.68/0.96  
% 0.68/0.96  ------ AIG Options
% 0.68/0.96  
% 0.68/0.96  --aig_mode                              false
% 0.68/0.96  
% 0.68/0.96  ------ Instantiation Options
% 0.68/0.96  
% 0.68/0.96  --instantiation_flag                    true
% 0.68/0.96  --inst_sos_flag                         false
% 0.68/0.96  --inst_sos_phase                        true
% 0.68/0.96  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.68/0.96  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.68/0.96  --inst_lit_sel_side                     none
% 0.68/0.96  --inst_solver_per_active                1400
% 0.68/0.96  --inst_solver_calls_frac                1.
% 0.68/0.96  --inst_passive_queue_type               priority_queues
% 0.68/0.96  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.68/0.96  --inst_passive_queues_freq              [25;2]
% 0.68/0.96  --inst_dismatching                      true
% 0.68/0.96  --inst_eager_unprocessed_to_passive     true
% 0.68/0.96  --inst_prop_sim_given                   true
% 0.68/0.96  --inst_prop_sim_new                     false
% 0.68/0.96  --inst_subs_new                         false
% 0.68/0.96  --inst_eq_res_simp                      false
% 0.68/0.96  --inst_subs_given                       false
% 0.68/0.96  --inst_orphan_elimination               true
% 0.68/0.96  --inst_learning_loop_flag               true
% 0.68/0.96  --inst_learning_start                   3000
% 0.68/0.96  --inst_learning_factor                  2
% 0.68/0.96  --inst_start_prop_sim_after_learn       3
% 0.68/0.96  --inst_sel_renew                        solver
% 0.68/0.96  --inst_lit_activity_flag                true
% 0.68/0.96  --inst_restr_to_given                   false
% 0.68/0.96  --inst_activity_threshold               500
% 0.68/0.96  --inst_out_proof                        true
% 0.68/0.96  
% 0.68/0.96  ------ Resolution Options
% 0.68/0.96  
% 0.68/0.96  --resolution_flag                       false
% 0.68/0.96  --res_lit_sel                           adaptive
% 0.68/0.96  --res_lit_sel_side                      none
% 0.68/0.96  --res_ordering                          kbo
% 0.68/0.96  --res_to_prop_solver                    active
% 0.68/0.96  --res_prop_simpl_new                    false
% 0.68/0.96  --res_prop_simpl_given                  true
% 0.68/0.96  --res_passive_queue_type                priority_queues
% 0.68/0.96  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.68/0.96  --res_passive_queues_freq               [15;5]
% 0.68/0.96  --res_forward_subs                      full
% 0.68/0.96  --res_backward_subs                     full
% 0.68/0.96  --res_forward_subs_resolution           true
% 0.68/0.96  --res_backward_subs_resolution          true
% 0.68/0.96  --res_orphan_elimination                true
% 0.68/0.96  --res_time_limit                        2.
% 0.68/0.96  --res_out_proof                         true
% 0.68/0.96  
% 0.68/0.96  ------ Superposition Options
% 0.68/0.96  
% 0.68/0.96  --superposition_flag                    true
% 0.68/0.96  --sup_passive_queue_type                priority_queues
% 0.68/0.96  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.68/0.96  --sup_passive_queues_freq               [8;1;4]
% 0.68/0.96  --demod_completeness_check              fast
% 0.68/0.96  --demod_use_ground                      true
% 0.68/0.96  --sup_to_prop_solver                    passive
% 0.68/0.96  --sup_prop_simpl_new                    true
% 0.68/0.96  --sup_prop_simpl_given                  true
% 0.68/0.96  --sup_fun_splitting                     false
% 0.68/0.96  --sup_smt_interval                      50000
% 0.68/0.96  
% 0.68/0.96  ------ Superposition Simplification Setup
% 0.68/0.96  
% 0.68/0.96  --sup_indices_passive                   []
% 0.68/0.96  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.68/0.96  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.68/0.96  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.68/0.96  --sup_full_triv                         [TrivRules;PropSubs]
% 0.68/0.96  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.68/0.96  --sup_full_bw                           [BwDemod]
% 0.68/0.96  --sup_immed_triv                        [TrivRules]
% 0.68/0.96  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.68/0.96  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.68/0.96  --sup_immed_bw_main                     []
% 0.68/0.96  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.68/0.96  --sup_input_triv                        [Unflattening;TrivRules]
% 0.68/0.96  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.68/0.96  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.68/0.96  
% 0.68/0.96  ------ Combination Options
% 0.68/0.96  
% 0.68/0.96  --comb_res_mult                         3
% 0.68/0.96  --comb_sup_mult                         2
% 0.68/0.96  --comb_inst_mult                        10
% 0.68/0.96  
% 0.68/0.96  ------ Debug Options
% 0.68/0.96  
% 0.68/0.96  --dbg_backtrace                         false
% 0.68/0.96  --dbg_dump_prop_clauses                 false
% 0.68/0.96  --dbg_dump_prop_clauses_file            -
% 0.68/0.96  --dbg_out_stat                          false
% 0.68/0.96  
% 0.68/0.96  
% 0.68/0.96  
% 0.68/0.96  
% 0.68/0.96  ------ Proving...
% 0.68/0.96  
% 0.68/0.96  
% 0.68/0.96  % SZS status Theorem for theBenchmark.p
% 0.68/0.96  
% 0.68/0.96  % SZS output start CNFRefutation for theBenchmark.p
% 0.68/0.96  
% 0.68/0.96  fof(f4,axiom,(
% 0.68/0.96    ! [X0] : ~v1_xboole_0(k1_zfmisc_1(X0))),
% 0.68/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.68/0.96  
% 0.68/0.96  fof(f29,plain,(
% 0.68/0.96    ( ! [X0] : (~v1_xboole_0(k1_zfmisc_1(X0))) )),
% 0.68/0.96    inference(cnf_transformation,[],[f4])).
% 0.68/0.96  
% 0.68/0.96  fof(f5,axiom,(
% 0.68/0.96    ! [X0] : k1_zfmisc_1(X0) = k9_setfam_1(X0)),
% 0.68/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.68/0.96  
% 0.68/0.96  fof(f30,plain,(
% 0.68/0.96    ( ! [X0] : (k1_zfmisc_1(X0) = k9_setfam_1(X0)) )),
% 0.68/0.96    inference(cnf_transformation,[],[f5])).
% 0.68/0.96  
% 0.68/0.96  fof(f39,plain,(
% 0.68/0.96    ( ! [X0] : (~v1_xboole_0(k9_setfam_1(X0))) )),
% 0.68/0.96    inference(definition_unfolding,[],[f29,f30])).
% 0.68/0.96  
% 0.68/0.96  fof(f6,axiom,(
% 0.68/0.96    ! [X0] : (~v1_xboole_0(X0) => (r2_hidden(k3_tarski(X0),X0) => k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0))))),
% 0.68/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.68/0.96  
% 0.68/0.96  fof(f10,plain,(
% 0.68/0.96    ! [X0] : ((k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) | ~r2_hidden(k3_tarski(X0),X0)) | v1_xboole_0(X0))),
% 0.68/0.96    inference(ennf_transformation,[],[f6])).
% 0.68/0.96  
% 0.68/0.96  fof(f11,plain,(
% 0.68/0.96    ! [X0] : (k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) | ~r2_hidden(k3_tarski(X0),X0) | v1_xboole_0(X0))),
% 0.68/0.96    inference(flattening,[],[f10])).
% 0.68/0.96  
% 0.68/0.96  fof(f31,plain,(
% 0.68/0.96    ( ! [X0] : (k3_tarski(X0) = k4_yellow_0(k2_yellow_1(X0)) | ~r2_hidden(k3_tarski(X0),X0) | v1_xboole_0(X0)) )),
% 0.68/0.96    inference(cnf_transformation,[],[f11])).
% 0.68/0.96  
% 0.68/0.96  fof(f3,axiom,(
% 0.68/0.96    ! [X0] : k3_tarski(k1_zfmisc_1(X0)) = X0),
% 0.68/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.68/0.96  
% 0.68/0.96  fof(f28,plain,(
% 0.68/0.96    ( ! [X0] : (k3_tarski(k1_zfmisc_1(X0)) = X0) )),
% 0.68/0.96    inference(cnf_transformation,[],[f3])).
% 0.68/0.96  
% 0.68/0.96  fof(f38,plain,(
% 0.68/0.96    ( ! [X0] : (k3_tarski(k9_setfam_1(X0)) = X0) )),
% 0.68/0.96    inference(definition_unfolding,[],[f28,f30])).
% 0.68/0.96  
% 0.68/0.96  fof(f1,axiom,(
% 0.68/0.96    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.68/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.68/0.96  
% 0.68/0.96  fof(f13,plain,(
% 0.68/0.96    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.68/0.96    inference(nnf_transformation,[],[f1])).
% 0.68/0.96  
% 0.68/0.96  fof(f14,plain,(
% 0.68/0.96    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.68/0.96    inference(flattening,[],[f13])).
% 0.68/0.96  
% 0.68/0.96  fof(f21,plain,(
% 0.68/0.96    ( ! [X0,X1] : (r1_tarski(X0,X1) | X0 != X1) )),
% 0.68/0.96    inference(cnf_transformation,[],[f14])).
% 0.68/0.96  
% 0.68/0.96  fof(f42,plain,(
% 0.68/0.96    ( ! [X1] : (r1_tarski(X1,X1)) )),
% 0.68/0.96    inference(equality_resolution,[],[f21])).
% 0.68/0.96  
% 0.68/0.96  fof(f2,axiom,(
% 0.68/0.96    ! [X0,X1] : (k1_zfmisc_1(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> r1_tarski(X2,X0)))),
% 0.68/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.68/0.96  
% 0.68/0.96  fof(f15,plain,(
% 0.68/0.96    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | ~r1_tarski(X2,X0)) & (r1_tarski(X2,X0) | ~r2_hidden(X2,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.68/0.96    inference(nnf_transformation,[],[f2])).
% 0.68/0.96  
% 0.68/0.96  fof(f16,plain,(
% 0.68/0.96    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.68/0.96    inference(rectify,[],[f15])).
% 0.68/0.96  
% 0.68/0.96  fof(f17,plain,(
% 0.68/0.96    ! [X1,X0] : (? [X2] : ((~r1_tarski(X2,X0) | ~r2_hidden(X2,X1)) & (r1_tarski(X2,X0) | r2_hidden(X2,X1))) => ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1))))),
% 0.68/0.96    introduced(choice_axiom,[])).
% 0.68/0.96  
% 0.68/0.96  fof(f18,plain,(
% 0.68/0.96    ! [X0,X1] : ((k1_zfmisc_1(X0) = X1 | ((~r1_tarski(sK0(X0,X1),X0) | ~r2_hidden(sK0(X0,X1),X1)) & (r1_tarski(sK0(X0,X1),X0) | r2_hidden(sK0(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | ~r1_tarski(X3,X0)) & (r1_tarski(X3,X0) | ~r2_hidden(X3,X1))) | k1_zfmisc_1(X0) != X1))),
% 0.68/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f17])).
% 0.68/0.96  
% 0.68/0.96  fof(f25,plain,(
% 0.68/0.96    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r1_tarski(X3,X0) | k1_zfmisc_1(X0) != X1) )),
% 0.68/0.96    inference(cnf_transformation,[],[f18])).
% 0.68/0.96  
% 0.68/0.96  fof(f36,plain,(
% 0.68/0.96    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | ~r1_tarski(X3,X0) | k9_setfam_1(X0) != X1) )),
% 0.68/0.96    inference(definition_unfolding,[],[f25,f30])).
% 0.68/0.96  
% 0.68/0.96  fof(f43,plain,(
% 0.68/0.96    ( ! [X0,X3] : (r2_hidden(X3,k9_setfam_1(X0)) | ~r1_tarski(X3,X0)) )),
% 0.68/0.96    inference(equality_resolution,[],[f36])).
% 0.68/0.96  
% 0.68/0.96  fof(f8,conjecture,(
% 0.68/0.96    ! [X0] : k4_yellow_0(k3_yellow_1(X0)) = X0),
% 0.68/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.68/0.96  
% 0.68/0.96  fof(f9,negated_conjecture,(
% 0.68/0.96    ~! [X0] : k4_yellow_0(k3_yellow_1(X0)) = X0),
% 0.68/0.96    inference(negated_conjecture,[],[f8])).
% 0.68/0.96  
% 0.68/0.96  fof(f12,plain,(
% 0.68/0.96    ? [X0] : k4_yellow_0(k3_yellow_1(X0)) != X0),
% 0.68/0.96    inference(ennf_transformation,[],[f9])).
% 0.68/0.96  
% 0.68/0.96  fof(f19,plain,(
% 0.68/0.96    ? [X0] : k4_yellow_0(k3_yellow_1(X0)) != X0 => k4_yellow_0(k3_yellow_1(sK1)) != sK1),
% 0.68/0.96    introduced(choice_axiom,[])).
% 0.68/0.96  
% 0.68/0.96  fof(f20,plain,(
% 0.68/0.96    k4_yellow_0(k3_yellow_1(sK1)) != sK1),
% 0.68/0.96    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f12,f19])).
% 0.68/0.96  
% 0.68/0.96  fof(f33,plain,(
% 0.68/0.96    k4_yellow_0(k3_yellow_1(sK1)) != sK1),
% 0.68/0.96    inference(cnf_transformation,[],[f20])).
% 0.68/0.96  
% 0.68/0.96  fof(f7,axiom,(
% 0.68/0.96    ! [X0] : k2_yellow_1(k9_setfam_1(X0)) = k3_yellow_1(X0)),
% 0.68/0.96    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.68/0.96  
% 0.68/0.96  fof(f32,plain,(
% 0.68/0.96    ( ! [X0] : (k2_yellow_1(k9_setfam_1(X0)) = k3_yellow_1(X0)) )),
% 0.68/0.96    inference(cnf_transformation,[],[f7])).
% 0.68/0.96  
% 0.68/0.96  fof(f40,plain,(
% 0.68/0.96    k4_yellow_0(k2_yellow_1(k9_setfam_1(sK1))) != sK1),
% 0.68/0.96    inference(definition_unfolding,[],[f33,f32])).
% 0.68/0.96  
% 0.68/0.96  cnf(c_8,plain,
% 0.68/0.96      ( ~ v1_xboole_0(k9_setfam_1(X0)) ),
% 0.68/0.96      inference(cnf_transformation,[],[f39]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_9,plain,
% 0.68/0.96      ( ~ r2_hidden(k3_tarski(X0),X0)
% 0.68/0.96      | v1_xboole_0(X0)
% 0.68/0.96      | k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0) ),
% 0.68/0.96      inference(cnf_transformation,[],[f31]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_132,plain,
% 0.68/0.96      ( ~ r2_hidden(k3_tarski(X0),X0)
% 0.68/0.96      | k4_yellow_0(k2_yellow_1(X0)) = k3_tarski(X0)
% 0.68/0.96      | k9_setfam_1(X1) != X0 ),
% 0.68/0.96      inference(resolution_lifted,[status(thm)],[c_8,c_9]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_133,plain,
% 0.68/0.96      ( ~ r2_hidden(k3_tarski(k9_setfam_1(X0)),k9_setfam_1(X0))
% 0.68/0.96      | k4_yellow_0(k2_yellow_1(k9_setfam_1(X0))) = k3_tarski(k9_setfam_1(X0)) ),
% 0.68/0.96      inference(unflattening,[status(thm)],[c_132]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_587,plain,
% 0.68/0.96      ( k4_yellow_0(k2_yellow_1(k9_setfam_1(X0))) = k3_tarski(k9_setfam_1(X0))
% 0.68/0.96      | r2_hidden(k3_tarski(k9_setfam_1(X0)),k9_setfam_1(X0)) != iProver_top ),
% 0.68/0.96      inference(predicate_to_equality,[status(thm)],[c_133]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_7,plain,
% 0.68/0.96      ( k3_tarski(k9_setfam_1(X0)) = X0 ),
% 0.68/0.96      inference(cnf_transformation,[],[f38]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_614,plain,
% 0.68/0.96      ( k4_yellow_0(k2_yellow_1(k9_setfam_1(X0))) = X0
% 0.68/0.96      | r2_hidden(X0,k9_setfam_1(X0)) != iProver_top ),
% 0.68/0.96      inference(light_normalisation,[status(thm)],[c_587,c_7]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_635,plain,
% 0.68/0.96      ( k4_yellow_0(k2_yellow_1(k9_setfam_1(sK1))) = sK1
% 0.68/0.96      | r2_hidden(sK1,k9_setfam_1(sK1)) != iProver_top ),
% 0.68/0.96      inference(instantiation,[status(thm)],[c_614]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_2,plain,
% 0.68/0.96      ( r1_tarski(X0,X0) ),
% 0.68/0.96      inference(cnf_transformation,[],[f42]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_30,plain,
% 0.68/0.96      ( r1_tarski(X0,X0) = iProver_top ),
% 0.68/0.96      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_32,plain,
% 0.68/0.96      ( r1_tarski(sK1,sK1) = iProver_top ),
% 0.68/0.96      inference(instantiation,[status(thm)],[c_30]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_5,plain,
% 0.68/0.96      ( r2_hidden(X0,k9_setfam_1(X1)) | ~ r1_tarski(X0,X1) ),
% 0.68/0.96      inference(cnf_transformation,[],[f43]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_21,plain,
% 0.68/0.96      ( r2_hidden(X0,k9_setfam_1(X1)) = iProver_top
% 0.68/0.96      | r1_tarski(X0,X1) != iProver_top ),
% 0.68/0.96      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_23,plain,
% 0.68/0.96      ( r2_hidden(sK1,k9_setfam_1(sK1)) = iProver_top
% 0.68/0.96      | r1_tarski(sK1,sK1) != iProver_top ),
% 0.68/0.96      inference(instantiation,[status(thm)],[c_21]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(c_10,negated_conjecture,
% 0.68/0.96      ( k4_yellow_0(k2_yellow_1(k9_setfam_1(sK1))) != sK1 ),
% 0.68/0.96      inference(cnf_transformation,[],[f40]) ).
% 0.68/0.96  
% 0.68/0.96  cnf(contradiction,plain,
% 0.68/0.96      ( $false ),
% 0.68/0.96      inference(minisat,[status(thm)],[c_635,c_32,c_23,c_10]) ).
% 0.68/0.96  
% 0.68/0.96  
% 0.68/0.96  % SZS output end CNFRefutation for theBenchmark.p
% 0.68/0.96  
% 0.68/0.96  ------                               Statistics
% 0.68/0.96  
% 0.68/0.96  ------ General
% 0.68/0.96  
% 0.68/0.96  abstr_ref_over_cycles:                  0
% 0.68/0.96  abstr_ref_under_cycles:                 0
% 0.68/0.96  gc_basic_clause_elim:                   0
% 0.68/0.96  forced_gc_time:                         0
% 0.68/0.96  parsing_time:                           0.005
% 0.68/0.96  unif_index_cands_time:                  0.
% 0.68/0.96  unif_index_add_time:                    0.
% 0.68/0.96  orderings_time:                         0.
% 0.68/0.96  out_proof_time:                         0.006
% 0.68/0.96  total_time:                             0.036
% 0.68/0.96  num_of_symbols:                         40
% 0.68/0.96  num_of_terms:                           317
% 0.68/0.96  
% 0.68/0.96  ------ Preprocessing
% 0.68/0.96  
% 0.68/0.96  num_of_splits:                          0
% 0.68/0.96  num_of_split_atoms:                     0
% 0.68/0.96  num_of_reused_defs:                     0
% 0.68/0.96  num_eq_ax_congr_red:                    9
% 0.68/0.96  num_of_sem_filtered_clauses:            1
% 0.68/0.96  num_of_subtypes:                        0
% 0.68/0.96  monotx_restored_types:                  0
% 0.68/0.96  sat_num_of_epr_types:                   0
% 0.68/0.96  sat_num_of_non_cyclic_types:            0
% 0.68/0.96  sat_guarded_non_collapsed_types:        0
% 0.68/0.96  num_pure_diseq_elim:                    0
% 0.68/0.96  simp_replaced_by:                       0
% 0.68/0.96  res_preprocessed:                       54
% 0.68/0.96  prep_upred:                             0
% 0.68/0.96  prep_unflattend:                        13
% 0.68/0.96  smt_new_axioms:                         0
% 0.68/0.96  pred_elim_cands:                        2
% 0.68/0.96  pred_elim:                              1
% 0.68/0.96  pred_elim_cl:                           1
% 0.68/0.96  pred_elim_cycles:                       3
% 0.68/0.96  merged_defs:                            8
% 0.68/0.96  merged_defs_ncl:                        0
% 0.68/0.96  bin_hyper_res:                          8
% 0.68/0.96  prep_cycles:                            4
% 0.68/0.96  pred_elim_time:                         0.001
% 0.68/0.96  splitting_time:                         0.
% 0.68/0.96  sem_filter_time:                        0.
% 0.68/0.96  monotx_time:                            0.
% 0.68/0.96  subtype_inf_time:                       0.
% 0.68/0.96  
% 0.68/0.96  ------ Problem properties
% 0.68/0.96  
% 0.68/0.96  clauses:                                9
% 0.68/0.96  conjectures:                            1
% 0.68/0.96  epr:                                    2
% 0.68/0.96  horn:                                   8
% 0.68/0.96  ground:                                 1
% 0.68/0.96  unary:                                  3
% 0.68/0.96  binary:                                 3
% 0.68/0.96  lits:                                   18
% 0.68/0.96  lits_eq:                                6
% 0.68/0.96  fd_pure:                                0
% 0.68/0.96  fd_pseudo:                              0
% 0.68/0.96  fd_cond:                                0
% 0.68/0.96  fd_pseudo_cond:                         3
% 0.68/0.96  ac_symbols:                             0
% 0.68/0.96  
% 0.68/0.96  ------ Propositional Solver
% 0.68/0.96  
% 0.68/0.96  prop_solver_calls:                      21
% 0.68/0.96  prop_fast_solver_calls:                 255
% 0.68/0.96  smt_solver_calls:                       0
% 0.68/0.96  smt_fast_solver_calls:                  0
% 0.68/0.96  prop_num_of_clauses:                    72
% 0.68/0.96  prop_preprocess_simplified:             1285
% 0.68/0.96  prop_fo_subsumed:                       0
% 0.68/0.96  prop_solver_time:                       0.
% 0.68/0.96  smt_solver_time:                        0.
% 0.68/0.96  smt_fast_solver_time:                   0.
% 0.68/0.96  prop_fast_solver_time:                  0.
% 0.68/0.96  prop_unsat_core_time:                   0.
% 0.68/0.96  
% 0.68/0.96  ------ QBF
% 0.68/0.96  
% 0.68/0.96  qbf_q_res:                              0
% 0.68/0.96  qbf_num_tautologies:                    0
% 0.68/0.96  qbf_prep_cycles:                        0
% 0.68/0.96  
% 0.68/0.96  ------ BMC1
% 0.68/0.96  
% 0.68/0.96  bmc1_current_bound:                     -1
% 0.68/0.96  bmc1_last_solved_bound:                 -1
% 0.68/0.96  bmc1_unsat_core_size:                   -1
% 0.68/0.96  bmc1_unsat_core_parents_size:           -1
% 0.68/0.96  bmc1_merge_next_fun:                    0
% 0.68/0.96  bmc1_unsat_core_clauses_time:           0.
% 0.68/0.96  
% 0.68/0.96  ------ Instantiation
% 0.68/0.96  
% 0.68/0.96  inst_num_of_clauses:                    17
% 0.68/0.96  inst_num_in_passive:                    0
% 0.68/0.96  inst_num_in_active:                     0
% 0.68/0.96  inst_num_in_unprocessed:                17
% 0.68/0.96  inst_num_of_loops:                      0
% 0.68/0.96  inst_num_of_learning_restarts:          0
% 0.68/0.96  inst_num_moves_active_passive:          0
% 0.68/0.96  inst_lit_activity:                      0
% 0.68/0.96  inst_lit_activity_moves:                0
% 0.68/0.96  inst_num_tautologies:                   0
% 0.68/0.96  inst_num_prop_implied:                  0
% 0.68/0.96  inst_num_existing_simplified:           0
% 0.68/0.96  inst_num_eq_res_simplified:             0
% 0.68/0.96  inst_num_child_elim:                    0
% 0.68/0.96  inst_num_of_dismatching_blockings:      0
% 0.68/0.96  inst_num_of_non_proper_insts:           0
% 0.68/0.96  inst_num_of_duplicates:                 0
% 0.68/0.96  inst_inst_num_from_inst_to_res:         0
% 0.68/0.96  inst_dismatching_checking_time:         0.
% 0.68/0.96  
% 0.68/0.96  ------ Resolution
% 0.68/0.96  
% 0.68/0.96  res_num_of_clauses:                     0
% 0.68/0.96  res_num_in_passive:                     0
% 0.68/0.96  res_num_in_active:                      0
% 0.68/0.96  res_num_of_loops:                       58
% 0.68/0.96  res_forward_subset_subsumed:            0
% 0.68/0.96  res_backward_subset_subsumed:           0
% 0.68/0.96  res_forward_subsumed:                   0
% 0.68/0.96  res_backward_subsumed:                  0
% 0.68/0.96  res_forward_subsumption_resolution:     0
% 0.68/0.96  res_backward_subsumption_resolution:    0
% 0.68/0.96  res_clause_to_clause_subsumption:       61
% 0.68/0.96  res_orphan_elimination:                 0
% 0.68/0.96  res_tautology_del:                      20
% 0.68/0.96  res_num_eq_res_simplified:              0
% 0.68/0.96  res_num_sel_changes:                    0
% 0.68/0.96  res_moves_from_active_to_pass:          0
% 0.68/0.96  
% 0.68/0.96  ------ Superposition
% 0.68/0.96  
% 0.68/0.96  sup_time_total:                         0.
% 0.68/0.96  sup_time_generating:                    0.
% 0.68/0.96  sup_time_sim_full:                      0.
% 0.68/0.96  sup_time_sim_immed:                     0.
% 0.68/0.96  
% 0.68/0.96  sup_num_of_clauses:                     4
% 0.68/0.96  sup_num_in_active:                      0
% 0.68/0.96  sup_num_in_passive:                     4
% 0.68/0.96  sup_num_of_loops:                       0
% 0.68/0.96  sup_fw_superposition:                   0
% 0.68/0.96  sup_bw_superposition:                   0
% 0.68/0.96  sup_immediate_simplified:               0
% 0.68/0.96  sup_given_eliminated:                   0
% 0.68/0.96  comparisons_done:                       0
% 0.68/0.96  comparisons_avoided:                    0
% 0.68/0.96  
% 0.68/0.96  ------ Simplifications
% 0.68/0.96  
% 0.68/0.96  
% 0.68/0.96  sim_fw_subset_subsumed:                 0
% 0.68/0.96  sim_bw_subset_subsumed:                 0
% 0.68/0.96  sim_fw_subsumed:                        0
% 0.68/0.96  sim_bw_subsumed:                        0
% 0.68/0.96  sim_fw_subsumption_res:                 0
% 0.68/0.96  sim_bw_subsumption_res:                 0
% 0.68/0.96  sim_tautology_del:                      0
% 0.68/0.96  sim_eq_tautology_del:                   0
% 0.68/0.96  sim_eq_res_simp:                        0
% 0.68/0.96  sim_fw_demodulated:                     0
% 0.68/0.96  sim_bw_demodulated:                     0
% 0.68/0.96  sim_light_normalised:                   1
% 0.68/0.96  sim_joinable_taut:                      0
% 0.68/0.96  sim_joinable_simp:                      0
% 0.68/0.96  sim_ac_normalised:                      0
% 0.68/0.96  sim_smt_subsumption:                    0
% 0.68/0.96  
%------------------------------------------------------------------------------
