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
% DateTime   : Thu Dec  3 11:54:05 EST 2020

% Result     : Theorem 0.61s
% Output     : CNFRefutation 0.61s
% Verified   : 
% Statistics : Number of formulae       :   54 (  54 expanded)
%              Number of clauses        :   18 (  18 expanded)
%              Number of leaves         :   12 (  12 expanded)
%              Depth                    :   11
%              Number of atoms          :  117 ( 117 expanded)
%              Number of equality atoms :   29 (  29 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f5,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
    <=> ~ r2_hidden(X1,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,k1_tarski(X1)) = X0
     => ~ r2_hidden(X1,X0) ) ),
    inference(unused_predicate_definition_removal,[],[f5])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ),
    inference(ennf_transformation,[],[f13])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | k4_xboole_0(X0,k1_tarski(X1)) != X0 ) ),
    inference(cnf_transformation,[],[f15])).

fof(f3,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f4])).

fof(f36,plain,(
    ! [X0] : k1_tarski(X0) = k1_enumset1(X0,X0,X0) ),
    inference(definition_unfolding,[],[f27,f28])).

fof(f37,plain,(
    ! [X0,X1] :
      ( ~ r2_hidden(X1,X0)
      | k4_xboole_0(X0,k1_enumset1(X1,X1,X1)) != X0 ) ),
    inference(definition_unfolding,[],[f29,f36])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
    <=> ! [X1] :
          ~ ( ! [X2,X3] : k4_tarski(X2,X3) != X1
            & r2_hidden(X1,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( ! [X1] :
          ~ ( ! [X2,X3] : k4_tarski(X2,X3) != X1
            & r2_hidden(X1,X0) )
     => v1_relat_1(X0) ) ),
    inference(unused_predicate_definition_removal,[],[f6])).

fof(f16,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ? [X1] :
          ( ! [X2,X3] : k4_tarski(X2,X3) != X1
          & r2_hidden(X1,X0) ) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f20,plain,(
    ! [X0] :
      ( ? [X1] :
          ( ! [X2,X3] : k4_tarski(X2,X3) != X1
          & r2_hidden(X1,X0) )
     => ( ! [X3,X2] : k4_tarski(X2,X3) != sK0(X0)
        & r2_hidden(sK0(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | ( ! [X2,X3] : k4_tarski(X2,X3) != sK0(X0)
        & r2_hidden(sK0(X0),X0) ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f20])).

fof(f30,plain,(
    ! [X0] :
      ( v1_relat_1(X0)
      | r2_hidden(sK0(X0),X0) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( v5_relat_1(k1_xboole_0,X1)
      & v4_relat_1(k1_xboole_0,X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] : v5_relat_1(k1_xboole_0,X1) ),
    inference(pure_predicate_removal,[],[f7])).

fof(f22,plain,(
    ! [X1] : v5_relat_1(k1_xboole_0,X1) ),
    inference(rectify,[],[f14])).

fof(f32,plain,(
    ! [X1] : v5_relat_1(k1_xboole_0,X1) ),
    inference(cnf_transformation,[],[f22])).

fof(f10,conjecture,(
    ! [X0] :
      ( v5_ordinal1(k1_xboole_0)
      & v1_funct_1(k1_xboole_0)
      & v5_relat_1(k1_xboole_0,X0)
      & v1_relat_1(k1_xboole_0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( v5_ordinal1(k1_xboole_0)
        & v1_funct_1(k1_xboole_0)
        & v5_relat_1(k1_xboole_0,X0)
        & v1_relat_1(k1_xboole_0) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f19,plain,(
    ? [X0] :
      ( ~ v5_ordinal1(k1_xboole_0)
      | ~ v1_funct_1(k1_xboole_0)
      | ~ v5_relat_1(k1_xboole_0,X0)
      | ~ v1_relat_1(k1_xboole_0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f23,plain,
    ( ? [X0] :
        ( ~ v5_ordinal1(k1_xboole_0)
        | ~ v1_funct_1(k1_xboole_0)
        | ~ v5_relat_1(k1_xboole_0,X0)
        | ~ v1_relat_1(k1_xboole_0) )
   => ( ~ v5_ordinal1(k1_xboole_0)
      | ~ v1_funct_1(k1_xboole_0)
      | ~ v5_relat_1(k1_xboole_0,sK1)
      | ~ v1_relat_1(k1_xboole_0) ) ),
    introduced(choice_axiom,[])).

fof(f24,plain,
    ( ~ v5_ordinal1(k1_xboole_0)
    | ~ v1_funct_1(k1_xboole_0)
    | ~ v5_relat_1(k1_xboole_0,sK1)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f19,f23])).

fof(f35,plain,
    ( ~ v5_ordinal1(k1_xboole_0)
    | ~ v1_funct_1(k1_xboole_0)
    | ~ v5_relat_1(k1_xboole_0,sK1)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f24])).

fof(f9,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v5_ordinal1(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0] :
      ( v5_ordinal1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f34,plain,(
    ! [X0] :
      ( v5_ordinal1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f8,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_funct_1(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0] :
      ( v1_funct_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f33,plain,(
    ! [X0] :
      ( v1_funct_1(X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f1,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f1])).

fof(f2,axiom,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

cnf(c_2,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_xboole_0(X1,k1_enumset1(X0,X0,X0)) != X1 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_4,plain,
    ( r2_hidden(sK0(X0),X0)
    | v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_110,plain,
    ( v1_relat_1(X0)
    | X0 != X1
    | k4_xboole_0(X1,k1_enumset1(X2,X2,X2)) != X1
    | sK0(X0) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_4])).

cnf(c_111,plain,
    ( v1_relat_1(X0)
    | k4_xboole_0(X0,k1_enumset1(sK0(X0),sK0(X0),sK0(X0))) != X0 ),
    inference(unflattening,[status(thm)],[c_110])).

cnf(c_5,plain,
    ( v5_relat_1(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_8,negated_conjecture,
    ( ~ v5_relat_1(k1_xboole_0,sK1)
    | ~ v5_ordinal1(k1_xboole_0)
    | ~ v1_funct_1(k1_xboole_0)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_7,plain,
    ( v5_ordinal1(X0)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_11,plain,
    ( v5_ordinal1(k1_xboole_0)
    | ~ v1_xboole_0(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_6,plain,
    ( v1_funct_1(X0)
    | ~ v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_14,plain,
    ( v1_funct_1(k1_xboole_0)
    | ~ v1_xboole_0(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_0,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_47,negated_conjecture,
    ( ~ v5_relat_1(k1_xboole_0,sK1)
    | ~ v1_relat_1(k1_xboole_0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_8,c_11,c_14,c_0])).

cnf(c_101,plain,
    ( ~ v1_relat_1(k1_xboole_0)
    | sK1 != X0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_5,c_47])).

cnf(c_102,plain,
    ( ~ v1_relat_1(k1_xboole_0) ),
    inference(unflattening,[status(thm)],[c_101])).

cnf(c_125,plain,
    ( k4_xboole_0(X0,k1_enumset1(sK0(X0),sK0(X0),sK0(X0))) != X0
    | k1_xboole_0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_111,c_102])).

cnf(c_126,plain,
    ( k4_xboole_0(k1_xboole_0,k1_enumset1(sK0(k1_xboole_0),sK0(k1_xboole_0),sK0(k1_xboole_0))) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_125])).

cnf(c_1,plain,
    ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f26])).

cnf(c_129,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_126,c_1])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n016.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:29:19 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 0.61/1.02  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.61/1.02  
% 0.61/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.61/1.02  
% 0.61/1.02  ------  iProver source info
% 0.61/1.02  
% 0.61/1.02  git: date: 2020-06-30 10:37:57 +0100
% 0.61/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.61/1.02  git: non_committed_changes: false
% 0.61/1.02  git: last_make_outside_of_git: false
% 0.61/1.02  
% 0.61/1.02  ------ 
% 0.61/1.02  
% 0.61/1.02  ------ Input Options
% 0.61/1.02  
% 0.61/1.02  --out_options                           all
% 0.61/1.02  --tptp_safe_out                         true
% 0.61/1.02  --problem_path                          ""
% 0.61/1.02  --include_path                          ""
% 0.61/1.02  --clausifier                            res/vclausify_rel
% 0.61/1.02  --clausifier_options                    --mode clausify
% 0.61/1.02  --stdin                                 false
% 0.61/1.02  --stats_out                             all
% 0.61/1.02  
% 0.61/1.02  ------ General Options
% 0.61/1.02  
% 0.61/1.02  --fof                                   false
% 0.61/1.02  --time_out_real                         305.
% 0.61/1.02  --time_out_virtual                      -1.
% 0.61/1.02  --symbol_type_check                     false
% 0.61/1.02  --clausify_out                          false
% 0.61/1.02  --sig_cnt_out                           false
% 0.61/1.02  --trig_cnt_out                          false
% 0.61/1.02  --trig_cnt_out_tolerance                1.
% 0.61/1.02  --trig_cnt_out_sk_spl                   false
% 0.61/1.02  --abstr_cl_out                          false
% 0.61/1.02  
% 0.61/1.02  ------ Global Options
% 0.61/1.02  
% 0.61/1.02  --schedule                              default
% 0.61/1.02  --add_important_lit                     false
% 0.61/1.02  --prop_solver_per_cl                    1000
% 0.61/1.02  --min_unsat_core                        false
% 0.61/1.02  --soft_assumptions                      false
% 0.61/1.02  --soft_lemma_size                       3
% 0.61/1.02  --prop_impl_unit_size                   0
% 0.61/1.02  --prop_impl_unit                        []
% 0.61/1.02  --share_sel_clauses                     true
% 0.61/1.02  --reset_solvers                         false
% 0.61/1.02  --bc_imp_inh                            [conj_cone]
% 0.61/1.02  --conj_cone_tolerance                   3.
% 0.61/1.02  --extra_neg_conj                        none
% 0.61/1.02  --large_theory_mode                     true
% 0.61/1.02  --prolific_symb_bound                   200
% 0.61/1.02  --lt_threshold                          2000
% 0.61/1.02  --clause_weak_htbl                      true
% 0.61/1.02  --gc_record_bc_elim                     false
% 0.61/1.02  
% 0.61/1.02  ------ Preprocessing Options
% 0.61/1.02  
% 0.61/1.02  --preprocessing_flag                    true
% 0.61/1.02  --time_out_prep_mult                    0.1
% 0.61/1.02  --splitting_mode                        input
% 0.61/1.02  --splitting_grd                         true
% 0.61/1.02  --splitting_cvd                         false
% 0.61/1.02  --splitting_cvd_svl                     false
% 0.61/1.02  --splitting_nvd                         32
% 0.61/1.02  --sub_typing                            true
% 0.61/1.02  --prep_gs_sim                           true
% 0.61/1.02  --prep_unflatten                        true
% 0.61/1.02  --prep_res_sim                          true
% 0.61/1.02  --prep_upred                            true
% 0.61/1.02  --prep_sem_filter                       exhaustive
% 0.61/1.02  --prep_sem_filter_out                   false
% 0.61/1.02  --pred_elim                             true
% 0.61/1.02  --res_sim_input                         true
% 0.61/1.02  --eq_ax_congr_red                       true
% 0.61/1.02  --pure_diseq_elim                       true
% 0.61/1.02  --brand_transform                       false
% 0.61/1.02  --non_eq_to_eq                          false
% 0.61/1.02  --prep_def_merge                        true
% 0.61/1.02  --prep_def_merge_prop_impl              false
% 0.61/1.02  --prep_def_merge_mbd                    true
% 0.61/1.02  --prep_def_merge_tr_red                 false
% 0.61/1.02  --prep_def_merge_tr_cl                  false
% 0.61/1.02  --smt_preprocessing                     true
% 0.61/1.02  --smt_ac_axioms                         fast
% 0.61/1.02  --preprocessed_out                      false
% 0.61/1.02  --preprocessed_stats                    false
% 0.61/1.02  
% 0.61/1.02  ------ Abstraction refinement Options
% 0.61/1.02  
% 0.61/1.02  --abstr_ref                             []
% 0.61/1.02  --abstr_ref_prep                        false
% 0.61/1.02  --abstr_ref_until_sat                   false
% 0.61/1.02  --abstr_ref_sig_restrict                funpre
% 0.61/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 0.61/1.02  --abstr_ref_under                       []
% 0.61/1.02  
% 0.61/1.02  ------ SAT Options
% 0.61/1.02  
% 0.61/1.02  --sat_mode                              false
% 0.61/1.02  --sat_fm_restart_options                ""
% 0.61/1.02  --sat_gr_def                            false
% 0.61/1.02  --sat_epr_types                         true
% 0.61/1.02  --sat_non_cyclic_types                  false
% 0.61/1.02  --sat_finite_models                     false
% 0.61/1.02  --sat_fm_lemmas                         false
% 0.61/1.02  --sat_fm_prep                           false
% 0.61/1.02  --sat_fm_uc_incr                        true
% 0.61/1.02  --sat_out_model                         small
% 0.61/1.02  --sat_out_clauses                       false
% 0.61/1.02  
% 0.61/1.02  ------ QBF Options
% 0.61/1.02  
% 0.61/1.02  --qbf_mode                              false
% 0.61/1.02  --qbf_elim_univ                         false
% 0.61/1.02  --qbf_dom_inst                          none
% 0.61/1.02  --qbf_dom_pre_inst                      false
% 0.61/1.02  --qbf_sk_in                             false
% 0.61/1.02  --qbf_pred_elim                         true
% 0.61/1.02  --qbf_split                             512
% 0.61/1.02  
% 0.61/1.02  ------ BMC1 Options
% 0.61/1.02  
% 0.61/1.02  --bmc1_incremental                      false
% 0.61/1.02  --bmc1_axioms                           reachable_all
% 0.61/1.02  --bmc1_min_bound                        0
% 0.61/1.02  --bmc1_max_bound                        -1
% 0.61/1.02  --bmc1_max_bound_default                -1
% 0.61/1.02  --bmc1_symbol_reachability              true
% 0.61/1.02  --bmc1_property_lemmas                  false
% 0.61/1.02  --bmc1_k_induction                      false
% 0.61/1.02  --bmc1_non_equiv_states                 false
% 0.61/1.02  --bmc1_deadlock                         false
% 0.61/1.02  --bmc1_ucm                              false
% 0.61/1.02  --bmc1_add_unsat_core                   none
% 0.61/1.02  --bmc1_unsat_core_children              false
% 0.61/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 0.61/1.02  --bmc1_out_stat                         full
% 0.61/1.02  --bmc1_ground_init                      false
% 0.61/1.02  --bmc1_pre_inst_next_state              false
% 0.61/1.02  --bmc1_pre_inst_state                   false
% 0.61/1.02  --bmc1_pre_inst_reach_state             false
% 0.61/1.02  --bmc1_out_unsat_core                   false
% 0.61/1.02  --bmc1_aig_witness_out                  false
% 0.61/1.02  --bmc1_verbose                          false
% 0.61/1.02  --bmc1_dump_clauses_tptp                false
% 0.61/1.02  --bmc1_dump_unsat_core_tptp             false
% 0.61/1.02  --bmc1_dump_file                        -
% 0.61/1.02  --bmc1_ucm_expand_uc_limit              128
% 0.61/1.02  --bmc1_ucm_n_expand_iterations          6
% 0.61/1.02  --bmc1_ucm_extend_mode                  1
% 0.61/1.02  --bmc1_ucm_init_mode                    2
% 0.61/1.02  --bmc1_ucm_cone_mode                    none
% 0.61/1.02  --bmc1_ucm_reduced_relation_type        0
% 0.61/1.02  --bmc1_ucm_relax_model                  4
% 0.61/1.02  --bmc1_ucm_full_tr_after_sat            true
% 0.61/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 0.61/1.02  --bmc1_ucm_layered_model                none
% 0.61/1.02  --bmc1_ucm_max_lemma_size               10
% 0.61/1.02  
% 0.61/1.02  ------ AIG Options
% 0.61/1.02  
% 0.61/1.02  --aig_mode                              false
% 0.61/1.02  
% 0.61/1.02  ------ Instantiation Options
% 0.61/1.02  
% 0.61/1.02  --instantiation_flag                    true
% 0.61/1.02  --inst_sos_flag                         false
% 0.61/1.02  --inst_sos_phase                        true
% 0.61/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.61/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.61/1.02  --inst_lit_sel_side                     num_symb
% 0.61/1.02  --inst_solver_per_active                1400
% 0.61/1.02  --inst_solver_calls_frac                1.
% 0.61/1.02  --inst_passive_queue_type               priority_queues
% 0.61/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.61/1.02  --inst_passive_queues_freq              [25;2]
% 0.61/1.02  --inst_dismatching                      true
% 0.61/1.02  --inst_eager_unprocessed_to_passive     true
% 0.61/1.02  --inst_prop_sim_given                   true
% 0.61/1.02  --inst_prop_sim_new                     false
% 0.61/1.02  --inst_subs_new                         false
% 0.61/1.02  --inst_eq_res_simp                      false
% 0.61/1.02  --inst_subs_given                       false
% 0.61/1.02  --inst_orphan_elimination               true
% 0.61/1.02  --inst_learning_loop_flag               true
% 0.61/1.02  --inst_learning_start                   3000
% 0.61/1.02  --inst_learning_factor                  2
% 0.61/1.02  --inst_start_prop_sim_after_learn       3
% 0.61/1.02  --inst_sel_renew                        solver
% 0.61/1.02  --inst_lit_activity_flag                true
% 0.61/1.02  --inst_restr_to_given                   false
% 0.61/1.02  --inst_activity_threshold               500
% 0.61/1.02  --inst_out_proof                        true
% 0.61/1.02  
% 0.61/1.02  ------ Resolution Options
% 0.61/1.02  
% 0.61/1.02  --resolution_flag                       true
% 0.61/1.02  --res_lit_sel                           adaptive
% 0.61/1.02  --res_lit_sel_side                      none
% 0.61/1.02  --res_ordering                          kbo
% 0.61/1.02  --res_to_prop_solver                    active
% 0.61/1.02  --res_prop_simpl_new                    false
% 0.61/1.02  --res_prop_simpl_given                  true
% 0.61/1.02  --res_passive_queue_type                priority_queues
% 0.61/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.61/1.02  --res_passive_queues_freq               [15;5]
% 0.61/1.02  --res_forward_subs                      full
% 0.61/1.02  --res_backward_subs                     full
% 0.61/1.02  --res_forward_subs_resolution           true
% 0.61/1.02  --res_backward_subs_resolution          true
% 0.61/1.02  --res_orphan_elimination                true
% 0.61/1.02  --res_time_limit                        2.
% 0.61/1.02  --res_out_proof                         true
% 0.61/1.02  
% 0.61/1.02  ------ Superposition Options
% 0.61/1.02  
% 0.61/1.02  --superposition_flag                    true
% 0.61/1.02  --sup_passive_queue_type                priority_queues
% 0.61/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.61/1.02  --sup_passive_queues_freq               [8;1;4]
% 0.61/1.02  --demod_completeness_check              fast
% 0.61/1.02  --demod_use_ground                      true
% 0.61/1.02  --sup_to_prop_solver                    passive
% 0.61/1.02  --sup_prop_simpl_new                    true
% 0.61/1.02  --sup_prop_simpl_given                  true
% 0.61/1.02  --sup_fun_splitting                     false
% 0.61/1.02  --sup_smt_interval                      50000
% 0.61/1.02  
% 0.61/1.02  ------ Superposition Simplification Setup
% 0.61/1.02  
% 0.61/1.02  --sup_indices_passive                   []
% 0.61/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.61/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.61/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.61/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 0.61/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.61/1.02  --sup_full_bw                           [BwDemod]
% 0.61/1.02  --sup_immed_triv                        [TrivRules]
% 0.61/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.61/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.61/1.02  --sup_immed_bw_main                     []
% 0.61/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.61/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 0.61/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.61/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.61/1.02  
% 0.61/1.02  ------ Combination Options
% 0.61/1.02  
% 0.61/1.02  --comb_res_mult                         3
% 0.61/1.02  --comb_sup_mult                         2
% 0.61/1.02  --comb_inst_mult                        10
% 0.61/1.02  
% 0.61/1.02  ------ Debug Options
% 0.61/1.02  
% 0.61/1.02  --dbg_backtrace                         false
% 0.61/1.02  --dbg_dump_prop_clauses                 false
% 0.61/1.02  --dbg_dump_prop_clauses_file            -
% 0.61/1.02  --dbg_out_stat                          false
% 0.61/1.02  ------ Parsing...
% 0.61/1.02  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.61/1.02  
% 0.61/1.02  ------ Preprocessing... sf_s  rm: 5 0s  sf_e  pe_s  pe:1:0s pe:2:0s
% 0.61/1.02  
% 0.61/1.02  % SZS status Theorem for theBenchmark.p
% 0.61/1.02  
% 0.61/1.02   Resolution empty clause
% 0.61/1.02  
% 0.61/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 0.61/1.02  
% 0.61/1.02  fof(f5,axiom,(
% 0.61/1.02    ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 <=> ~r2_hidden(X1,X0))),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f13,plain,(
% 0.61/1.02    ! [X0,X1] : (k4_xboole_0(X0,k1_tarski(X1)) = X0 => ~r2_hidden(X1,X0))),
% 0.61/1.02    inference(unused_predicate_definition_removal,[],[f5])).
% 0.61/1.02  
% 0.61/1.02  fof(f15,plain,(
% 0.61/1.02    ! [X0,X1] : (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0)),
% 0.61/1.02    inference(ennf_transformation,[],[f13])).
% 0.61/1.02  
% 0.61/1.02  fof(f29,plain,(
% 0.61/1.02    ( ! [X0,X1] : (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_tarski(X1)) != X0) )),
% 0.61/1.02    inference(cnf_transformation,[],[f15])).
% 0.61/1.02  
% 0.61/1.02  fof(f3,axiom,(
% 0.61/1.02    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f27,plain,(
% 0.61/1.02    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 0.61/1.02    inference(cnf_transformation,[],[f3])).
% 0.61/1.02  
% 0.61/1.02  fof(f4,axiom,(
% 0.61/1.02    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f28,plain,(
% 0.61/1.02    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 0.61/1.02    inference(cnf_transformation,[],[f4])).
% 0.61/1.02  
% 0.61/1.02  fof(f36,plain,(
% 0.61/1.02    ( ! [X0] : (k1_tarski(X0) = k1_enumset1(X0,X0,X0)) )),
% 0.61/1.02    inference(definition_unfolding,[],[f27,f28])).
% 0.61/1.02  
% 0.61/1.02  fof(f37,plain,(
% 0.61/1.02    ( ! [X0,X1] : (~r2_hidden(X1,X0) | k4_xboole_0(X0,k1_enumset1(X1,X1,X1)) != X0) )),
% 0.61/1.02    inference(definition_unfolding,[],[f29,f36])).
% 0.61/1.02  
% 0.61/1.02  fof(f6,axiom,(
% 0.61/1.02    ! [X0] : (v1_relat_1(X0) <=> ! [X1] : ~(! [X2,X3] : k4_tarski(X2,X3) != X1 & r2_hidden(X1,X0)))),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f12,plain,(
% 0.61/1.02    ! [X0] : (! [X1] : ~(! [X2,X3] : k4_tarski(X2,X3) != X1 & r2_hidden(X1,X0)) => v1_relat_1(X0))),
% 0.61/1.02    inference(unused_predicate_definition_removal,[],[f6])).
% 0.61/1.02  
% 0.61/1.02  fof(f16,plain,(
% 0.61/1.02    ! [X0] : (v1_relat_1(X0) | ? [X1] : (! [X2,X3] : k4_tarski(X2,X3) != X1 & r2_hidden(X1,X0)))),
% 0.61/1.02    inference(ennf_transformation,[],[f12])).
% 0.61/1.02  
% 0.61/1.02  fof(f20,plain,(
% 0.61/1.02    ! [X0] : (? [X1] : (! [X2,X3] : k4_tarski(X2,X3) != X1 & r2_hidden(X1,X0)) => (! [X3,X2] : k4_tarski(X2,X3) != sK0(X0) & r2_hidden(sK0(X0),X0)))),
% 0.61/1.02    introduced(choice_axiom,[])).
% 0.61/1.02  
% 0.61/1.02  fof(f21,plain,(
% 0.61/1.02    ! [X0] : (v1_relat_1(X0) | (! [X2,X3] : k4_tarski(X2,X3) != sK0(X0) & r2_hidden(sK0(X0),X0)))),
% 0.61/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f16,f20])).
% 0.61/1.02  
% 0.61/1.02  fof(f30,plain,(
% 0.61/1.02    ( ! [X0] : (v1_relat_1(X0) | r2_hidden(sK0(X0),X0)) )),
% 0.61/1.02    inference(cnf_transformation,[],[f21])).
% 0.61/1.02  
% 0.61/1.02  fof(f7,axiom,(
% 0.61/1.02    ! [X0,X1] : (v5_relat_1(k1_xboole_0,X1) & v4_relat_1(k1_xboole_0,X0))),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f14,plain,(
% 0.61/1.02    ! [X0,X1] : v5_relat_1(k1_xboole_0,X1)),
% 0.61/1.02    inference(pure_predicate_removal,[],[f7])).
% 0.61/1.02  
% 0.61/1.02  fof(f22,plain,(
% 0.61/1.02    ! [X1] : v5_relat_1(k1_xboole_0,X1)),
% 0.61/1.02    inference(rectify,[],[f14])).
% 0.61/1.02  
% 0.61/1.02  fof(f32,plain,(
% 0.61/1.02    ( ! [X1] : (v5_relat_1(k1_xboole_0,X1)) )),
% 0.61/1.02    inference(cnf_transformation,[],[f22])).
% 0.61/1.02  
% 0.61/1.02  fof(f10,conjecture,(
% 0.61/1.02    ! [X0] : (v5_ordinal1(k1_xboole_0) & v1_funct_1(k1_xboole_0) & v5_relat_1(k1_xboole_0,X0) & v1_relat_1(k1_xboole_0))),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f11,negated_conjecture,(
% 0.61/1.02    ~! [X0] : (v5_ordinal1(k1_xboole_0) & v1_funct_1(k1_xboole_0) & v5_relat_1(k1_xboole_0,X0) & v1_relat_1(k1_xboole_0))),
% 0.61/1.02    inference(negated_conjecture,[],[f10])).
% 0.61/1.02  
% 0.61/1.02  fof(f19,plain,(
% 0.61/1.02    ? [X0] : (~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v5_relat_1(k1_xboole_0,X0) | ~v1_relat_1(k1_xboole_0))),
% 0.61/1.02    inference(ennf_transformation,[],[f11])).
% 0.61/1.02  
% 0.61/1.02  fof(f23,plain,(
% 0.61/1.02    ? [X0] : (~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v5_relat_1(k1_xboole_0,X0) | ~v1_relat_1(k1_xboole_0)) => (~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v5_relat_1(k1_xboole_0,sK1) | ~v1_relat_1(k1_xboole_0))),
% 0.61/1.02    introduced(choice_axiom,[])).
% 0.61/1.02  
% 0.61/1.02  fof(f24,plain,(
% 0.61/1.02    ~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v5_relat_1(k1_xboole_0,sK1) | ~v1_relat_1(k1_xboole_0)),
% 0.61/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f19,f23])).
% 0.61/1.02  
% 0.61/1.02  fof(f35,plain,(
% 0.61/1.02    ~v5_ordinal1(k1_xboole_0) | ~v1_funct_1(k1_xboole_0) | ~v5_relat_1(k1_xboole_0,sK1) | ~v1_relat_1(k1_xboole_0)),
% 0.61/1.02    inference(cnf_transformation,[],[f24])).
% 0.61/1.02  
% 0.61/1.02  fof(f9,axiom,(
% 0.61/1.02    ! [X0] : (v1_xboole_0(X0) => v5_ordinal1(X0))),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f18,plain,(
% 0.61/1.02    ! [X0] : (v5_ordinal1(X0) | ~v1_xboole_0(X0))),
% 0.61/1.02    inference(ennf_transformation,[],[f9])).
% 0.61/1.02  
% 0.61/1.02  fof(f34,plain,(
% 0.61/1.02    ( ! [X0] : (v5_ordinal1(X0) | ~v1_xboole_0(X0)) )),
% 0.61/1.02    inference(cnf_transformation,[],[f18])).
% 0.61/1.02  
% 0.61/1.02  fof(f8,axiom,(
% 0.61/1.02    ! [X0] : (v1_xboole_0(X0) => v1_funct_1(X0))),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f17,plain,(
% 0.61/1.02    ! [X0] : (v1_funct_1(X0) | ~v1_xboole_0(X0))),
% 0.61/1.02    inference(ennf_transformation,[],[f8])).
% 0.61/1.02  
% 0.61/1.02  fof(f33,plain,(
% 0.61/1.02    ( ! [X0] : (v1_funct_1(X0) | ~v1_xboole_0(X0)) )),
% 0.61/1.02    inference(cnf_transformation,[],[f17])).
% 0.61/1.02  
% 0.61/1.02  fof(f1,axiom,(
% 0.61/1.02    v1_xboole_0(k1_xboole_0)),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f25,plain,(
% 0.61/1.02    v1_xboole_0(k1_xboole_0)),
% 0.61/1.02    inference(cnf_transformation,[],[f1])).
% 0.61/1.02  
% 0.61/1.02  fof(f2,axiom,(
% 0.61/1.02    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)),
% 0.61/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.61/1.02  
% 0.61/1.02  fof(f26,plain,(
% 0.61/1.02    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 0.61/1.02    inference(cnf_transformation,[],[f2])).
% 0.61/1.02  
% 0.61/1.02  cnf(c_2,plain,
% 0.61/1.02      ( ~ r2_hidden(X0,X1) | k4_xboole_0(X1,k1_enumset1(X0,X0,X0)) != X1 ),
% 0.61/1.02      inference(cnf_transformation,[],[f37]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_4,plain,
% 0.61/1.02      ( r2_hidden(sK0(X0),X0) | v1_relat_1(X0) ),
% 0.61/1.02      inference(cnf_transformation,[],[f30]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_110,plain,
% 0.61/1.02      ( v1_relat_1(X0)
% 0.61/1.02      | X0 != X1
% 0.61/1.02      | k4_xboole_0(X1,k1_enumset1(X2,X2,X2)) != X1
% 0.61/1.02      | sK0(X0) != X2 ),
% 0.61/1.02      inference(resolution_lifted,[status(thm)],[c_2,c_4]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_111,plain,
% 0.61/1.02      ( v1_relat_1(X0)
% 0.61/1.02      | k4_xboole_0(X0,k1_enumset1(sK0(X0),sK0(X0),sK0(X0))) != X0 ),
% 0.61/1.02      inference(unflattening,[status(thm)],[c_110]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_5,plain,
% 0.61/1.02      ( v5_relat_1(k1_xboole_0,X0) ),
% 0.61/1.02      inference(cnf_transformation,[],[f32]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_8,negated_conjecture,
% 0.61/1.02      ( ~ v5_relat_1(k1_xboole_0,sK1)
% 0.61/1.02      | ~ v5_ordinal1(k1_xboole_0)
% 0.61/1.02      | ~ v1_funct_1(k1_xboole_0)
% 0.61/1.02      | ~ v1_relat_1(k1_xboole_0) ),
% 0.61/1.02      inference(cnf_transformation,[],[f35]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_7,plain,
% 0.61/1.02      ( v5_ordinal1(X0) | ~ v1_xboole_0(X0) ),
% 0.61/1.02      inference(cnf_transformation,[],[f34]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_11,plain,
% 0.61/1.02      ( v5_ordinal1(k1_xboole_0) | ~ v1_xboole_0(k1_xboole_0) ),
% 0.61/1.02      inference(instantiation,[status(thm)],[c_7]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_6,plain,
% 0.61/1.02      ( v1_funct_1(X0) | ~ v1_xboole_0(X0) ),
% 0.61/1.02      inference(cnf_transformation,[],[f33]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_14,plain,
% 0.61/1.02      ( v1_funct_1(k1_xboole_0) | ~ v1_xboole_0(k1_xboole_0) ),
% 0.61/1.02      inference(instantiation,[status(thm)],[c_6]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_0,plain,
% 0.61/1.02      ( v1_xboole_0(k1_xboole_0) ),
% 0.61/1.02      inference(cnf_transformation,[],[f25]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_47,negated_conjecture,
% 0.61/1.02      ( ~ v5_relat_1(k1_xboole_0,sK1) | ~ v1_relat_1(k1_xboole_0) ),
% 0.61/1.02      inference(global_propositional_subsumption,
% 0.61/1.02                [status(thm)],
% 0.61/1.02                [c_8,c_11,c_14,c_0]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_101,plain,
% 0.61/1.02      ( ~ v1_relat_1(k1_xboole_0) | sK1 != X0 | k1_xboole_0 != k1_xboole_0 ),
% 0.61/1.02      inference(resolution_lifted,[status(thm)],[c_5,c_47]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_102,plain,
% 0.61/1.02      ( ~ v1_relat_1(k1_xboole_0) ),
% 0.61/1.02      inference(unflattening,[status(thm)],[c_101]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_125,plain,
% 0.61/1.02      ( k4_xboole_0(X0,k1_enumset1(sK0(X0),sK0(X0),sK0(X0))) != X0
% 0.61/1.02      | k1_xboole_0 != X0 ),
% 0.61/1.02      inference(resolution_lifted,[status(thm)],[c_111,c_102]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_126,plain,
% 0.61/1.02      ( k4_xboole_0(k1_xboole_0,k1_enumset1(sK0(k1_xboole_0),sK0(k1_xboole_0),sK0(k1_xboole_0))) != k1_xboole_0 ),
% 0.61/1.02      inference(unflattening,[status(thm)],[c_125]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_1,plain,
% 0.61/1.02      ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
% 0.61/1.02      inference(cnf_transformation,[],[f26]) ).
% 0.61/1.02  
% 0.61/1.02  cnf(c_129,plain,
% 0.61/1.02      ( $false ),
% 0.61/1.02      inference(forward_subsumption_resolution,[status(thm)],[c_126,c_1]) ).
% 0.61/1.02  
% 0.61/1.02  
% 0.61/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 0.61/1.02  
% 0.61/1.02  ------                               Statistics
% 0.61/1.02  
% 0.61/1.02  ------ General
% 0.61/1.02  
% 0.61/1.02  abstr_ref_over_cycles:                  0
% 0.61/1.02  abstr_ref_under_cycles:                 0
% 0.61/1.02  gc_basic_clause_elim:                   0
% 0.61/1.02  forced_gc_time:                         0
% 0.61/1.02  parsing_time:                           0.008
% 0.61/1.02  unif_index_cands_time:                  0.
% 0.61/1.02  unif_index_add_time:                    0.
% 0.61/1.02  orderings_time:                         0.
% 0.61/1.02  out_proof_time:                         0.008
% 0.61/1.02  total_time:                             0.032
% 0.61/1.02  num_of_symbols:                         40
% 0.61/1.02  num_of_terms:                           197
% 0.61/1.02  
% 0.61/1.02  ------ Preprocessing
% 0.61/1.02  
% 0.61/1.02  num_of_splits:                          0
% 0.61/1.02  num_of_split_atoms:                     0
% 0.61/1.02  num_of_reused_defs:                     0
% 0.61/1.02  num_eq_ax_congr_red:                    9
% 0.61/1.02  num_of_sem_filtered_clauses:            3
% 0.61/1.02  num_of_subtypes:                        0
% 0.61/1.02  monotx_restored_types:                  0
% 0.61/1.02  sat_num_of_epr_types:                   0
% 0.61/1.02  sat_num_of_non_cyclic_types:            0
% 0.61/1.02  sat_guarded_non_collapsed_types:        0
% 0.61/1.02  num_pure_diseq_elim:                    0
% 0.61/1.02  simp_replaced_by:                       0
% 0.61/1.02  res_preprocessed:                       9
% 0.61/1.02  prep_upred:                             0
% 0.61/1.02  prep_unflattend:                        4
% 0.61/1.02  smt_new_axioms:                         0
% 0.61/1.02  pred_elim_cands:                        3
% 0.61/1.02  pred_elim:                              2
% 0.61/1.02  pred_elim_cl:                           0
% 0.61/1.02  pred_elim_cycles:                       2
% 0.61/1.02  merged_defs:                            0
% 0.61/1.02  merged_defs_ncl:                        0
% 0.61/1.02  bin_hyper_res:                          0
% 0.61/1.02  prep_cycles:                            1
% 0.61/1.02  pred_elim_time:                         0.
% 0.61/1.02  splitting_time:                         0.
% 0.61/1.02  sem_filter_time:                        0.
% 0.61/1.02  monotx_time:                            0.
% 0.61/1.02  subtype_inf_time:                       0.
% 0.61/1.02  
% 0.61/1.02  ------ Problem properties
% 0.61/1.02  
% 0.61/1.02  clauses:                                0
% 0.61/1.02  conjectures:                            0
% 0.61/1.02  epr:                                    0
% 0.61/1.02  horn:                                   0
% 0.61/1.02  ground:                                 0
% 0.61/1.02  unary:                                  0
% 0.61/1.02  binary:                                 0
% 0.61/1.02  lits:                                   0
% 0.61/1.02  lits_eq:                                0
% 0.61/1.02  fd_pure:                                0
% 0.61/1.02  fd_pseudo:                              0
% 0.61/1.02  fd_cond:                                0
% 0.61/1.02  fd_pseudo_cond:                         0
% 0.61/1.02  ac_symbols:                             undef
% 0.61/1.02  
% 0.61/1.02  ------ Propositional Solver
% 0.61/1.02  
% 0.61/1.02  prop_solver_calls:                      6
% 0.61/1.02  prop_fast_solver_calls:                 38
% 0.61/1.02  smt_solver_calls:                       0
% 0.61/1.02  smt_fast_solver_calls:                  0
% 0.61/1.02  prop_num_of_clauses:                    39
% 0.61/1.02  prop_preprocess_simplified:             236
% 0.61/1.02  prop_fo_subsumed:                       2
% 0.61/1.02  prop_solver_time:                       0.
% 0.61/1.02  smt_solver_time:                        0.
% 0.61/1.02  smt_fast_solver_time:                   0.
% 0.61/1.02  prop_fast_solver_time:                  0.
% 0.61/1.02  prop_unsat_core_time:                   0.
% 0.61/1.02  
% 0.61/1.02  ------ QBF
% 0.61/1.02  
% 0.61/1.02  qbf_q_res:                              0
% 0.61/1.02  qbf_num_tautologies:                    0
% 0.61/1.02  qbf_prep_cycles:                        0
% 0.61/1.02  
% 0.61/1.02  ------ BMC1
% 0.61/1.02  
% 0.61/1.02  bmc1_current_bound:                     -1
% 0.61/1.02  bmc1_last_solved_bound:                 -1
% 0.61/1.02  bmc1_unsat_core_size:                   -1
% 0.61/1.02  bmc1_unsat_core_parents_size:           -1
% 0.61/1.02  bmc1_merge_next_fun:                    0
% 0.61/1.02  bmc1_unsat_core_clauses_time:           0.
% 0.61/1.02  
% 0.61/1.02  ------ Instantiation
% 0.61/1.02  
% 0.61/1.02  inst_num_of_clauses:                    undef
% 0.61/1.02  inst_num_in_passive:                    undef
% 0.61/1.02  inst_num_in_active:                     0
% 0.61/1.02  inst_num_in_unprocessed:                0
% 0.61/1.02  inst_num_of_loops:                      0
% 0.61/1.02  inst_num_of_learning_restarts:          0
% 0.61/1.02  inst_num_moves_active_passive:          0
% 0.61/1.02  inst_lit_activity:                      0
% 0.61/1.02  inst_lit_activity_moves:                0
% 0.61/1.02  inst_num_tautologies:                   0
% 0.61/1.02  inst_num_prop_implied:                  0
% 0.61/1.02  inst_num_existing_simplified:           0
% 0.61/1.02  inst_num_eq_res_simplified:             0
% 0.61/1.02  inst_num_child_elim:                    0
% 0.61/1.02  inst_num_of_dismatching_blockings:      0
% 0.61/1.02  inst_num_of_non_proper_insts:           0
% 0.61/1.02  inst_num_of_duplicates:                 0
% 0.61/1.02  inst_inst_num_from_inst_to_res:         0
% 0.61/1.02  inst_dismatching_checking_time:         0.
% 0.61/1.02  
% 0.61/1.02  ------ Resolution
% 0.61/1.02  
% 0.61/1.02  res_num_of_clauses:                     9
% 0.61/1.02  res_num_in_passive:                     0
% 0.61/1.02  res_num_in_active:                      0
% 0.61/1.02  res_num_of_loops:                       10
% 0.61/1.02  res_forward_subset_subsumed:            0
% 0.61/1.02  res_backward_subset_subsumed:           0
% 0.61/1.02  res_forward_subsumed:                   0
% 0.61/1.02  res_backward_subsumed:                  0
% 0.61/1.02  res_forward_subsumption_resolution:     1
% 0.61/1.02  res_backward_subsumption_resolution:    0
% 0.61/1.02  res_clause_to_clause_subsumption:       1
% 0.61/1.02  res_orphan_elimination:                 0
% 0.61/1.02  res_tautology_del:                      0
% 0.61/1.02  res_num_eq_res_simplified:              0
% 0.61/1.02  res_num_sel_changes:                    0
% 0.61/1.02  res_moves_from_active_to_pass:          0
% 0.61/1.02  
% 0.61/1.02  ------ Superposition
% 0.61/1.02  
% 0.61/1.02  sup_time_total:                         0.
% 0.61/1.02  sup_time_generating:                    0.
% 0.61/1.02  sup_time_sim_full:                      0.
% 0.61/1.02  sup_time_sim_immed:                     0.
% 0.61/1.02  
% 0.61/1.02  sup_num_of_clauses:                     undef
% 0.61/1.02  sup_num_in_active:                      undef
% 0.61/1.02  sup_num_in_passive:                     undef
% 0.61/1.02  sup_num_of_loops:                       0
% 0.61/1.02  sup_fw_superposition:                   0
% 0.61/1.02  sup_bw_superposition:                   0
% 0.61/1.02  sup_immediate_simplified:               0
% 0.61/1.02  sup_given_eliminated:                   0
% 0.61/1.02  comparisons_done:                       0
% 0.61/1.02  comparisons_avoided:                    0
% 0.61/1.02  
% 0.61/1.02  ------ Simplifications
% 0.61/1.02  
% 0.61/1.02  
% 0.61/1.02  sim_fw_subset_subsumed:                 0
% 0.61/1.02  sim_bw_subset_subsumed:                 0
% 0.61/1.02  sim_fw_subsumed:                        0
% 0.61/1.02  sim_bw_subsumed:                        0
% 0.61/1.02  sim_fw_subsumption_res:                 0
% 0.61/1.02  sim_bw_subsumption_res:                 0
% 0.61/1.02  sim_tautology_del:                      0
% 0.61/1.02  sim_eq_tautology_del:                   0
% 0.61/1.02  sim_eq_res_simp:                        0
% 0.61/1.02  sim_fw_demodulated:                     0
% 0.61/1.02  sim_bw_demodulated:                     0
% 0.61/1.02  sim_light_normalised:                   0
% 0.61/1.02  sim_joinable_taut:                      0
% 0.61/1.02  sim_joinable_simp:                      0
% 0.61/1.02  sim_ac_normalised:                      0
% 0.61/1.02  sim_smt_subsumption:                    0
% 0.61/1.02  
%------------------------------------------------------------------------------
