%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n024.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:32:14 EST 2020

% Result     : Theorem 1.82s
% Output     : CNFRefutation 1.82s
% Verified   : 
% Statistics : Number of formulae       :   54 ( 236 expanded)
%              Number of clauses        :   27 (  66 expanded)
%              Number of leaves         :    7 (  61 expanded)
%              Depth                    :   16
%              Number of atoms          :  154 ( 836 expanded)
%              Number of equality atoms :  141 ( 799 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   14 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f14,axiom,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f45,plain,(
    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f14])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f19,conjecture,(
    ! [X0,X1,X2] :
      ~ ( ~ ( k1_xboole_0 = X2
            & k1_tarski(X0) = X1 )
        & ~ ( k1_tarski(X0) = X2
            & k1_xboole_0 = X1 )
        & ~ ( k1_tarski(X0) = X2
            & k1_tarski(X0) = X1 )
        & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,negated_conjecture,(
    ~ ! [X0,X1,X2] :
        ~ ( ~ ( k1_xboole_0 = X2
              & k1_tarski(X0) = X1 )
          & ~ ( k1_tarski(X0) = X2
              & k1_xboole_0 = X1 )
          & ~ ( k1_tarski(X0) = X2
              & k1_tarski(X0) = X1 )
          & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    inference(negated_conjecture,[],[f19])).

fof(f25,plain,(
    ? [X0,X1,X2] :
      ( ( k1_xboole_0 != X2
        | k1_tarski(X0) != X1 )
      & ( k1_tarski(X0) != X2
        | k1_xboole_0 != X1 )
      & ( k1_tarski(X0) != X2
        | k1_tarski(X0) != X1 )
      & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f30,plain,
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

fof(f31,plain,
    ( ( k1_xboole_0 != sK2
      | k1_tarski(sK0) != sK1 )
    & ( k1_tarski(sK0) != sK2
      | k1_xboole_0 != sK1 )
    & ( k1_tarski(sK0) != sK2
      | k1_tarski(sK0) != sK1 )
    & k2_xboole_0(sK1,sK2) = k1_tarski(sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f25,f30])).

fof(f56,plain,(
    k2_xboole_0(sK1,sK2) = k1_tarski(sK0) ),
    inference(cnf_transformation,[],[f31])).

fof(f15,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f46,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f15])).

fof(f73,plain,(
    k2_xboole_0(sK1,sK2) = k2_tarski(sK0,sK0) ),
    inference(definition_unfolding,[],[f56,f46])).

fof(f18,axiom,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ~ ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1,X2] :
      ( r1_tarski(X0,k2_tarski(X1,X2))
    <=> ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0 ) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f28,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(nnf_transformation,[],[f24])).

fof(f29,plain,(
    ! [X0,X1,X2] :
      ( ( r1_tarski(X0,k2_tarski(X1,X2))
        | ( k2_tarski(X1,X2) != X0
          & k1_tarski(X2) != X0
          & k1_tarski(X1) != X0
          & k1_xboole_0 != X0 ) )
      & ( k2_tarski(X1,X2) = X0
        | k1_tarski(X2) = X0
        | k1_tarski(X1) = X0
        | k1_xboole_0 = X0
        | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ) ),
    inference(flattening,[],[f28])).

fof(f51,plain,(
    ! [X2,X0,X1] :
      ( k2_tarski(X1,X2) = X0
      | k1_tarski(X2) = X0
      | k1_tarski(X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f69,plain,(
    ! [X2,X0,X1] :
      ( k2_tarski(X1,X2) = X0
      | k2_tarski(X2,X2) = X0
      | k2_tarski(X1,X1) = X0
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,k2_tarski(X1,X2)) ) ),
    inference(definition_unfolding,[],[f51,f46,f46])).

fof(f57,plain,
    ( k1_tarski(sK0) != sK2
    | k1_tarski(sK0) != sK1 ),
    inference(cnf_transformation,[],[f31])).

fof(f72,plain,
    ( k2_tarski(sK0,sK0) != sK2
    | k2_tarski(sK0,sK0) != sK1 ),
    inference(definition_unfolding,[],[f57,f46,f46])).

fof(f58,plain,
    ( k1_tarski(sK0) != sK2
    | k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f31])).

fof(f71,plain,
    ( k2_tarski(sK0,sK0) != sK2
    | k1_xboole_0 != sK1 ),
    inference(definition_unfolding,[],[f58,f46])).

fof(f59,plain,
    ( k1_xboole_0 != sK2
    | k1_tarski(sK0) != sK1 ),
    inference(cnf_transformation,[],[f31])).

fof(f70,plain,
    ( k1_xboole_0 != sK2
    | k2_tarski(sK0,sK0) != sK1 ),
    inference(definition_unfolding,[],[f59,f46])).

fof(f4,axiom,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f4])).

cnf(c_12,plain,
    ( r1_tarski(X0,k2_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_472,plain,
    ( r1_tarski(X0,k2_xboole_0(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_0,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_25,negated_conjecture,
    ( k2_xboole_0(sK1,sK2) = k2_tarski(sK0,sK0) ),
    inference(cnf_transformation,[],[f73])).

cnf(c_490,plain,
    ( k2_tarski(sK0,sK0) = k2_xboole_0(sK2,sK1) ),
    inference(demodulation,[status(thm)],[c_0,c_25])).

cnf(c_21,plain,
    ( ~ r1_tarski(X0,k2_tarski(X1,X2))
    | k2_tarski(X1,X1) = X0
    | k2_tarski(X1,X2) = X0
    | k2_tarski(X2,X2) = X0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_464,plain,
    ( k2_tarski(X0,X0) = X1
    | k2_tarski(X0,X2) = X1
    | k2_tarski(X2,X2) = X1
    | k1_xboole_0 = X1
    | r1_tarski(X1,k2_tarski(X0,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_772,plain,
    ( k2_tarski(sK0,sK0) = X0
    | k1_xboole_0 = X0
    | r1_tarski(X0,k2_xboole_0(sK2,sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_490,c_464])).

cnf(c_773,plain,
    ( k2_xboole_0(sK2,sK1) = X0
    | k1_xboole_0 = X0
    | r1_tarski(X0,k2_xboole_0(sK2,sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_772,c_490])).

cnf(c_1440,plain,
    ( k2_xboole_0(sK2,sK1) = sK2
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_472,c_773])).

cnf(c_24,negated_conjecture,
    ( k2_tarski(sK0,sK0) != sK1
    | k2_tarski(sK0,sK0) != sK2 ),
    inference(cnf_transformation,[],[f72])).

cnf(c_518,plain,
    ( k2_xboole_0(sK2,sK1) != sK1
    | k2_xboole_0(sK2,sK1) != sK2 ),
    inference(light_normalisation,[status(thm)],[c_24,c_490])).

cnf(c_1529,plain,
    ( k2_xboole_0(sK2,sK1) != sK1
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1440,c_518])).

cnf(c_23,negated_conjecture,
    ( k2_tarski(sK0,sK0) != sK2
    | k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f71])).

cnf(c_502,plain,
    ( k2_xboole_0(sK2,sK1) != sK2
    | sK1 != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_23,c_490])).

cnf(c_1531,plain,
    ( sK1 != k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1440,c_502])).

cnf(c_1434,plain,
    ( r1_tarski(X0,k2_xboole_0(X1,X0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_0,c_472])).

cnf(c_1880,plain,
    ( k2_xboole_0(sK2,sK1) = sK1
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1434,c_773])).

cnf(c_2069,plain,
    ( sK2 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1529,c_1531,c_1880])).

cnf(c_22,negated_conjecture,
    ( k2_tarski(sK0,sK0) != sK1
    | k1_xboole_0 != sK2 ),
    inference(cnf_transformation,[],[f70])).

cnf(c_507,plain,
    ( k2_xboole_0(sK2,sK1) != sK1
    | sK2 != k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_22,c_490])).

cnf(c_2078,plain,
    ( k2_xboole_0(k1_xboole_0,sK1) != sK1
    | k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2069,c_507])).

cnf(c_2088,plain,
    ( k2_xboole_0(k1_xboole_0,sK1) != sK1 ),
    inference(equality_resolution_simp,[status(thm)],[c_2078])).

cnf(c_3,plain,
    ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_681,plain,
    ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_3,c_0])).

cnf(c_2090,plain,
    ( sK1 != sK1 ),
    inference(demodulation,[status(thm)],[c_2088,c_681])).

cnf(c_2091,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_2090])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n024.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:42:21 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 1.82/1.01  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.82/1.01  
% 1.82/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.82/1.01  
% 1.82/1.01  ------  iProver source info
% 1.82/1.01  
% 1.82/1.01  git: date: 2020-06-30 10:37:57 +0100
% 1.82/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.82/1.01  git: non_committed_changes: false
% 1.82/1.01  git: last_make_outside_of_git: false
% 1.82/1.01  
% 1.82/1.01  ------ 
% 1.82/1.01  
% 1.82/1.01  ------ Input Options
% 1.82/1.01  
% 1.82/1.01  --out_options                           all
% 1.82/1.01  --tptp_safe_out                         true
% 1.82/1.01  --problem_path                          ""
% 1.82/1.01  --include_path                          ""
% 1.82/1.01  --clausifier                            res/vclausify_rel
% 1.82/1.01  --clausifier_options                    --mode clausify
% 1.82/1.01  --stdin                                 false
% 1.82/1.01  --stats_out                             all
% 1.82/1.01  
% 1.82/1.01  ------ General Options
% 1.82/1.01  
% 1.82/1.01  --fof                                   false
% 1.82/1.01  --time_out_real                         305.
% 1.82/1.01  --time_out_virtual                      -1.
% 1.82/1.01  --symbol_type_check                     false
% 1.82/1.01  --clausify_out                          false
% 1.82/1.01  --sig_cnt_out                           false
% 1.82/1.01  --trig_cnt_out                          false
% 1.82/1.01  --trig_cnt_out_tolerance                1.
% 1.82/1.01  --trig_cnt_out_sk_spl                   false
% 1.82/1.01  --abstr_cl_out                          false
% 1.82/1.01  
% 1.82/1.01  ------ Global Options
% 1.82/1.01  
% 1.82/1.01  --schedule                              default
% 1.82/1.01  --add_important_lit                     false
% 1.82/1.01  --prop_solver_per_cl                    1000
% 1.82/1.01  --min_unsat_core                        false
% 1.82/1.01  --soft_assumptions                      false
% 1.82/1.01  --soft_lemma_size                       3
% 1.82/1.01  --prop_impl_unit_size                   0
% 1.82/1.01  --prop_impl_unit                        []
% 1.82/1.01  --share_sel_clauses                     true
% 1.82/1.01  --reset_solvers                         false
% 1.82/1.01  --bc_imp_inh                            [conj_cone]
% 1.82/1.01  --conj_cone_tolerance                   3.
% 1.82/1.01  --extra_neg_conj                        none
% 1.82/1.01  --large_theory_mode                     true
% 1.82/1.01  --prolific_symb_bound                   200
% 1.82/1.01  --lt_threshold                          2000
% 1.82/1.01  --clause_weak_htbl                      true
% 1.82/1.01  --gc_record_bc_elim                     false
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing Options
% 1.82/1.01  
% 1.82/1.01  --preprocessing_flag                    true
% 1.82/1.01  --time_out_prep_mult                    0.1
% 1.82/1.01  --splitting_mode                        input
% 1.82/1.01  --splitting_grd                         true
% 1.82/1.01  --splitting_cvd                         false
% 1.82/1.01  --splitting_cvd_svl                     false
% 1.82/1.01  --splitting_nvd                         32
% 1.82/1.01  --sub_typing                            true
% 1.82/1.01  --prep_gs_sim                           true
% 1.82/1.01  --prep_unflatten                        true
% 1.82/1.01  --prep_res_sim                          true
% 1.82/1.01  --prep_upred                            true
% 1.82/1.01  --prep_sem_filter                       exhaustive
% 1.82/1.01  --prep_sem_filter_out                   false
% 1.82/1.01  --pred_elim                             true
% 1.82/1.01  --res_sim_input                         true
% 1.82/1.01  --eq_ax_congr_red                       true
% 1.82/1.01  --pure_diseq_elim                       true
% 1.82/1.01  --brand_transform                       false
% 1.82/1.01  --non_eq_to_eq                          false
% 1.82/1.01  --prep_def_merge                        true
% 1.82/1.01  --prep_def_merge_prop_impl              false
% 1.82/1.01  --prep_def_merge_mbd                    true
% 1.82/1.01  --prep_def_merge_tr_red                 false
% 1.82/1.01  --prep_def_merge_tr_cl                  false
% 1.82/1.01  --smt_preprocessing                     true
% 1.82/1.01  --smt_ac_axioms                         fast
% 1.82/1.01  --preprocessed_out                      false
% 1.82/1.01  --preprocessed_stats                    false
% 1.82/1.01  
% 1.82/1.01  ------ Abstraction refinement Options
% 1.82/1.01  
% 1.82/1.01  --abstr_ref                             []
% 1.82/1.01  --abstr_ref_prep                        false
% 1.82/1.01  --abstr_ref_until_sat                   false
% 1.82/1.01  --abstr_ref_sig_restrict                funpre
% 1.82/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.82/1.01  --abstr_ref_under                       []
% 1.82/1.01  
% 1.82/1.01  ------ SAT Options
% 1.82/1.01  
% 1.82/1.01  --sat_mode                              false
% 1.82/1.01  --sat_fm_restart_options                ""
% 1.82/1.01  --sat_gr_def                            false
% 1.82/1.01  --sat_epr_types                         true
% 1.82/1.01  --sat_non_cyclic_types                  false
% 1.82/1.01  --sat_finite_models                     false
% 1.82/1.01  --sat_fm_lemmas                         false
% 1.82/1.01  --sat_fm_prep                           false
% 1.82/1.01  --sat_fm_uc_incr                        true
% 1.82/1.01  --sat_out_model                         small
% 1.82/1.01  --sat_out_clauses                       false
% 1.82/1.01  
% 1.82/1.01  ------ QBF Options
% 1.82/1.01  
% 1.82/1.01  --qbf_mode                              false
% 1.82/1.01  --qbf_elim_univ                         false
% 1.82/1.01  --qbf_dom_inst                          none
% 1.82/1.01  --qbf_dom_pre_inst                      false
% 1.82/1.01  --qbf_sk_in                             false
% 1.82/1.01  --qbf_pred_elim                         true
% 1.82/1.01  --qbf_split                             512
% 1.82/1.01  
% 1.82/1.01  ------ BMC1 Options
% 1.82/1.01  
% 1.82/1.01  --bmc1_incremental                      false
% 1.82/1.01  --bmc1_axioms                           reachable_all
% 1.82/1.01  --bmc1_min_bound                        0
% 1.82/1.01  --bmc1_max_bound                        -1
% 1.82/1.01  --bmc1_max_bound_default                -1
% 1.82/1.01  --bmc1_symbol_reachability              true
% 1.82/1.01  --bmc1_property_lemmas                  false
% 1.82/1.01  --bmc1_k_induction                      false
% 1.82/1.01  --bmc1_non_equiv_states                 false
% 1.82/1.01  --bmc1_deadlock                         false
% 1.82/1.01  --bmc1_ucm                              false
% 1.82/1.01  --bmc1_add_unsat_core                   none
% 1.82/1.01  --bmc1_unsat_core_children              false
% 1.82/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 1.82/1.01  --bmc1_out_stat                         full
% 1.82/1.01  --bmc1_ground_init                      false
% 1.82/1.01  --bmc1_pre_inst_next_state              false
% 1.82/1.01  --bmc1_pre_inst_state                   false
% 1.82/1.01  --bmc1_pre_inst_reach_state             false
% 1.82/1.01  --bmc1_out_unsat_core                   false
% 1.82/1.01  --bmc1_aig_witness_out                  false
% 1.82/1.01  --bmc1_verbose                          false
% 1.82/1.01  --bmc1_dump_clauses_tptp                false
% 1.82/1.01  --bmc1_dump_unsat_core_tptp             false
% 1.82/1.01  --bmc1_dump_file                        -
% 1.82/1.01  --bmc1_ucm_expand_uc_limit              128
% 1.82/1.01  --bmc1_ucm_n_expand_iterations          6
% 1.82/1.01  --bmc1_ucm_extend_mode                  1
% 1.82/1.01  --bmc1_ucm_init_mode                    2
% 1.82/1.01  --bmc1_ucm_cone_mode                    none
% 1.82/1.01  --bmc1_ucm_reduced_relation_type        0
% 1.82/1.01  --bmc1_ucm_relax_model                  4
% 1.82/1.01  --bmc1_ucm_full_tr_after_sat            true
% 1.82/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 1.82/1.01  --bmc1_ucm_layered_model                none
% 1.82/1.01  --bmc1_ucm_max_lemma_size               10
% 1.82/1.01  
% 1.82/1.01  ------ AIG Options
% 1.82/1.01  
% 1.82/1.01  --aig_mode                              false
% 1.82/1.01  
% 1.82/1.01  ------ Instantiation Options
% 1.82/1.01  
% 1.82/1.01  --instantiation_flag                    true
% 1.82/1.01  --inst_sos_flag                         false
% 1.82/1.01  --inst_sos_phase                        true
% 1.82/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.82/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.82/1.01  --inst_lit_sel_side                     num_symb
% 1.82/1.01  --inst_solver_per_active                1400
% 1.82/1.01  --inst_solver_calls_frac                1.
% 1.82/1.01  --inst_passive_queue_type               priority_queues
% 1.82/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.82/1.01  --inst_passive_queues_freq              [25;2]
% 1.82/1.01  --inst_dismatching                      true
% 1.82/1.01  --inst_eager_unprocessed_to_passive     true
% 1.82/1.01  --inst_prop_sim_given                   true
% 1.82/1.01  --inst_prop_sim_new                     false
% 1.82/1.01  --inst_subs_new                         false
% 1.82/1.01  --inst_eq_res_simp                      false
% 1.82/1.01  --inst_subs_given                       false
% 1.82/1.01  --inst_orphan_elimination               true
% 1.82/1.01  --inst_learning_loop_flag               true
% 1.82/1.01  --inst_learning_start                   3000
% 1.82/1.01  --inst_learning_factor                  2
% 1.82/1.01  --inst_start_prop_sim_after_learn       3
% 1.82/1.01  --inst_sel_renew                        solver
% 1.82/1.01  --inst_lit_activity_flag                true
% 1.82/1.01  --inst_restr_to_given                   false
% 1.82/1.01  --inst_activity_threshold               500
% 1.82/1.01  --inst_out_proof                        true
% 1.82/1.01  
% 1.82/1.01  ------ Resolution Options
% 1.82/1.01  
% 1.82/1.01  --resolution_flag                       true
% 1.82/1.01  --res_lit_sel                           adaptive
% 1.82/1.01  --res_lit_sel_side                      none
% 1.82/1.01  --res_ordering                          kbo
% 1.82/1.01  --res_to_prop_solver                    active
% 1.82/1.01  --res_prop_simpl_new                    false
% 1.82/1.01  --res_prop_simpl_given                  true
% 1.82/1.01  --res_passive_queue_type                priority_queues
% 1.82/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.82/1.01  --res_passive_queues_freq               [15;5]
% 1.82/1.01  --res_forward_subs                      full
% 1.82/1.01  --res_backward_subs                     full
% 1.82/1.01  --res_forward_subs_resolution           true
% 1.82/1.01  --res_backward_subs_resolution          true
% 1.82/1.01  --res_orphan_elimination                true
% 1.82/1.01  --res_time_limit                        2.
% 1.82/1.01  --res_out_proof                         true
% 1.82/1.01  
% 1.82/1.01  ------ Superposition Options
% 1.82/1.01  
% 1.82/1.01  --superposition_flag                    true
% 1.82/1.01  --sup_passive_queue_type                priority_queues
% 1.82/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.82/1.01  --sup_passive_queues_freq               [8;1;4]
% 1.82/1.01  --demod_completeness_check              fast
% 1.82/1.01  --demod_use_ground                      true
% 1.82/1.01  --sup_to_prop_solver                    passive
% 1.82/1.01  --sup_prop_simpl_new                    true
% 1.82/1.01  --sup_prop_simpl_given                  true
% 1.82/1.01  --sup_fun_splitting                     false
% 1.82/1.01  --sup_smt_interval                      50000
% 1.82/1.01  
% 1.82/1.01  ------ Superposition Simplification Setup
% 1.82/1.01  
% 1.82/1.01  --sup_indices_passive                   []
% 1.82/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 1.82/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.01  --sup_full_bw                           [BwDemod]
% 1.82/1.01  --sup_immed_triv                        [TrivRules]
% 1.82/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.82/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.01  --sup_immed_bw_main                     []
% 1.82/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.82/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 1.82/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.82/1.01  
% 1.82/1.01  ------ Combination Options
% 1.82/1.01  
% 1.82/1.01  --comb_res_mult                         3
% 1.82/1.01  --comb_sup_mult                         2
% 1.82/1.01  --comb_inst_mult                        10
% 1.82/1.01  
% 1.82/1.01  ------ Debug Options
% 1.82/1.01  
% 1.82/1.01  --dbg_backtrace                         false
% 1.82/1.01  --dbg_dump_prop_clauses                 false
% 1.82/1.01  --dbg_dump_prop_clauses_file            -
% 1.82/1.01  --dbg_out_stat                          false
% 1.82/1.01  ------ Parsing...
% 1.82/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.82/1.01  ------ Proving...
% 1.82/1.01  ------ Problem Properties 
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  clauses                                 25
% 1.82/1.01  conjectures                             4
% 1.82/1.01  EPR                                     0
% 1.82/1.01  Horn                                    23
% 1.82/1.01  unary                                   17
% 1.82/1.01  binary                                  6
% 1.82/1.01  lits                                    37
% 1.82/1.01  lits eq                                 22
% 1.82/1.01  fd_pure                                 0
% 1.82/1.01  fd_pseudo                               0
% 1.82/1.01  fd_cond                                 0
% 1.82/1.01  fd_pseudo_cond                          2
% 1.82/1.01  AC symbols                              0
% 1.82/1.01  
% 1.82/1.01  ------ Schedule dynamic 5 is on 
% 1.82/1.01  
% 1.82/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.82/1.01  
% 1.82/1.01  
% 1.82/1.01  ------ 
% 1.82/1.01  Current options:
% 1.82/1.01  ------ 
% 1.82/1.01  
% 1.82/1.01  ------ Input Options
% 1.82/1.01  
% 1.82/1.01  --out_options                           all
% 1.82/1.01  --tptp_safe_out                         true
% 1.82/1.01  --problem_path                          ""
% 1.82/1.01  --include_path                          ""
% 1.82/1.01  --clausifier                            res/vclausify_rel
% 1.82/1.01  --clausifier_options                    --mode clausify
% 1.82/1.01  --stdin                                 false
% 1.82/1.01  --stats_out                             all
% 1.82/1.01  
% 1.82/1.01  ------ General Options
% 1.82/1.01  
% 1.82/1.01  --fof                                   false
% 1.82/1.01  --time_out_real                         305.
% 1.82/1.01  --time_out_virtual                      -1.
% 1.82/1.01  --symbol_type_check                     false
% 1.82/1.01  --clausify_out                          false
% 1.82/1.01  --sig_cnt_out                           false
% 1.82/1.01  --trig_cnt_out                          false
% 1.82/1.01  --trig_cnt_out_tolerance                1.
% 1.82/1.01  --trig_cnt_out_sk_spl                   false
% 1.82/1.01  --abstr_cl_out                          false
% 1.82/1.01  
% 1.82/1.01  ------ Global Options
% 1.82/1.01  
% 1.82/1.01  --schedule                              default
% 1.82/1.01  --add_important_lit                     false
% 1.82/1.01  --prop_solver_per_cl                    1000
% 1.82/1.01  --min_unsat_core                        false
% 1.82/1.01  --soft_assumptions                      false
% 1.82/1.01  --soft_lemma_size                       3
% 1.82/1.01  --prop_impl_unit_size                   0
% 1.82/1.01  --prop_impl_unit                        []
% 1.82/1.01  --share_sel_clauses                     true
% 1.82/1.01  --reset_solvers                         false
% 1.82/1.01  --bc_imp_inh                            [conj_cone]
% 1.82/1.01  --conj_cone_tolerance                   3.
% 1.82/1.01  --extra_neg_conj                        none
% 1.82/1.01  --large_theory_mode                     true
% 1.82/1.01  --prolific_symb_bound                   200
% 1.82/1.01  --lt_threshold                          2000
% 1.82/1.01  --clause_weak_htbl                      true
% 1.82/1.01  --gc_record_bc_elim                     false
% 1.82/1.01  
% 1.82/1.01  ------ Preprocessing Options
% 1.82/1.01  
% 1.82/1.01  --preprocessing_flag                    true
% 1.82/1.01  --time_out_prep_mult                    0.1
% 1.82/1.01  --splitting_mode                        input
% 1.82/1.01  --splitting_grd                         true
% 1.82/1.01  --splitting_cvd                         false
% 1.82/1.01  --splitting_cvd_svl                     false
% 1.82/1.01  --splitting_nvd                         32
% 1.82/1.01  --sub_typing                            true
% 1.82/1.01  --prep_gs_sim                           true
% 1.82/1.01  --prep_unflatten                        true
% 1.82/1.01  --prep_res_sim                          true
% 1.82/1.01  --prep_upred                            true
% 1.82/1.01  --prep_sem_filter                       exhaustive
% 1.82/1.01  --prep_sem_filter_out                   false
% 1.82/1.01  --pred_elim                             true
% 1.82/1.01  --res_sim_input                         true
% 1.82/1.01  --eq_ax_congr_red                       true
% 1.82/1.01  --pure_diseq_elim                       true
% 1.82/1.01  --brand_transform                       false
% 1.82/1.01  --non_eq_to_eq                          false
% 1.82/1.01  --prep_def_merge                        true
% 1.82/1.01  --prep_def_merge_prop_impl              false
% 1.82/1.01  --prep_def_merge_mbd                    true
% 1.82/1.01  --prep_def_merge_tr_red                 false
% 1.82/1.01  --prep_def_merge_tr_cl                  false
% 1.82/1.01  --smt_preprocessing                     true
% 1.82/1.01  --smt_ac_axioms                         fast
% 1.82/1.01  --preprocessed_out                      false
% 1.82/1.01  --preprocessed_stats                    false
% 1.82/1.01  
% 1.82/1.01  ------ Abstraction refinement Options
% 1.82/1.01  
% 1.82/1.01  --abstr_ref                             []
% 1.82/1.01  --abstr_ref_prep                        false
% 1.82/1.01  --abstr_ref_until_sat                   false
% 1.82/1.01  --abstr_ref_sig_restrict                funpre
% 1.82/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 1.82/1.01  --abstr_ref_under                       []
% 1.82/1.01  
% 1.82/1.01  ------ SAT Options
% 1.82/1.01  
% 1.82/1.01  --sat_mode                              false
% 1.82/1.01  --sat_fm_restart_options                ""
% 1.82/1.02  --sat_gr_def                            false
% 1.82/1.02  --sat_epr_types                         true
% 1.82/1.02  --sat_non_cyclic_types                  false
% 1.82/1.02  --sat_finite_models                     false
% 1.82/1.02  --sat_fm_lemmas                         false
% 1.82/1.02  --sat_fm_prep                           false
% 1.82/1.02  --sat_fm_uc_incr                        true
% 1.82/1.02  --sat_out_model                         small
% 1.82/1.02  --sat_out_clauses                       false
% 1.82/1.02  
% 1.82/1.02  ------ QBF Options
% 1.82/1.02  
% 1.82/1.02  --qbf_mode                              false
% 1.82/1.02  --qbf_elim_univ                         false
% 1.82/1.02  --qbf_dom_inst                          none
% 1.82/1.02  --qbf_dom_pre_inst                      false
% 1.82/1.02  --qbf_sk_in                             false
% 1.82/1.02  --qbf_pred_elim                         true
% 1.82/1.02  --qbf_split                             512
% 1.82/1.02  
% 1.82/1.02  ------ BMC1 Options
% 1.82/1.02  
% 1.82/1.02  --bmc1_incremental                      false
% 1.82/1.02  --bmc1_axioms                           reachable_all
% 1.82/1.02  --bmc1_min_bound                        0
% 1.82/1.02  --bmc1_max_bound                        -1
% 1.82/1.02  --bmc1_max_bound_default                -1
% 1.82/1.02  --bmc1_symbol_reachability              true
% 1.82/1.02  --bmc1_property_lemmas                  false
% 1.82/1.02  --bmc1_k_induction                      false
% 1.82/1.02  --bmc1_non_equiv_states                 false
% 1.82/1.02  --bmc1_deadlock                         false
% 1.82/1.02  --bmc1_ucm                              false
% 1.82/1.02  --bmc1_add_unsat_core                   none
% 1.82/1.02  --bmc1_unsat_core_children              false
% 1.82/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 1.82/1.02  --bmc1_out_stat                         full
% 1.82/1.02  --bmc1_ground_init                      false
% 1.82/1.02  --bmc1_pre_inst_next_state              false
% 1.82/1.02  --bmc1_pre_inst_state                   false
% 1.82/1.02  --bmc1_pre_inst_reach_state             false
% 1.82/1.02  --bmc1_out_unsat_core                   false
% 1.82/1.02  --bmc1_aig_witness_out                  false
% 1.82/1.02  --bmc1_verbose                          false
% 1.82/1.02  --bmc1_dump_clauses_tptp                false
% 1.82/1.02  --bmc1_dump_unsat_core_tptp             false
% 1.82/1.02  --bmc1_dump_file                        -
% 1.82/1.02  --bmc1_ucm_expand_uc_limit              128
% 1.82/1.02  --bmc1_ucm_n_expand_iterations          6
% 1.82/1.02  --bmc1_ucm_extend_mode                  1
% 1.82/1.02  --bmc1_ucm_init_mode                    2
% 1.82/1.02  --bmc1_ucm_cone_mode                    none
% 1.82/1.02  --bmc1_ucm_reduced_relation_type        0
% 1.82/1.02  --bmc1_ucm_relax_model                  4
% 1.82/1.02  --bmc1_ucm_full_tr_after_sat            true
% 1.82/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 1.82/1.02  --bmc1_ucm_layered_model                none
% 1.82/1.02  --bmc1_ucm_max_lemma_size               10
% 1.82/1.02  
% 1.82/1.02  ------ AIG Options
% 1.82/1.02  
% 1.82/1.02  --aig_mode                              false
% 1.82/1.02  
% 1.82/1.02  ------ Instantiation Options
% 1.82/1.02  
% 1.82/1.02  --instantiation_flag                    true
% 1.82/1.02  --inst_sos_flag                         false
% 1.82/1.02  --inst_sos_phase                        true
% 1.82/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.82/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.82/1.02  --inst_lit_sel_side                     none
% 1.82/1.02  --inst_solver_per_active                1400
% 1.82/1.02  --inst_solver_calls_frac                1.
% 1.82/1.02  --inst_passive_queue_type               priority_queues
% 1.82/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.82/1.02  --inst_passive_queues_freq              [25;2]
% 1.82/1.02  --inst_dismatching                      true
% 1.82/1.02  --inst_eager_unprocessed_to_passive     true
% 1.82/1.02  --inst_prop_sim_given                   true
% 1.82/1.02  --inst_prop_sim_new                     false
% 1.82/1.02  --inst_subs_new                         false
% 1.82/1.02  --inst_eq_res_simp                      false
% 1.82/1.02  --inst_subs_given                       false
% 1.82/1.02  --inst_orphan_elimination               true
% 1.82/1.02  --inst_learning_loop_flag               true
% 1.82/1.02  --inst_learning_start                   3000
% 1.82/1.02  --inst_learning_factor                  2
% 1.82/1.02  --inst_start_prop_sim_after_learn       3
% 1.82/1.02  --inst_sel_renew                        solver
% 1.82/1.02  --inst_lit_activity_flag                true
% 1.82/1.02  --inst_restr_to_given                   false
% 1.82/1.02  --inst_activity_threshold               500
% 1.82/1.02  --inst_out_proof                        true
% 1.82/1.02  
% 1.82/1.02  ------ Resolution Options
% 1.82/1.02  
% 1.82/1.02  --resolution_flag                       false
% 1.82/1.02  --res_lit_sel                           adaptive
% 1.82/1.02  --res_lit_sel_side                      none
% 1.82/1.02  --res_ordering                          kbo
% 1.82/1.02  --res_to_prop_solver                    active
% 1.82/1.02  --res_prop_simpl_new                    false
% 1.82/1.02  --res_prop_simpl_given                  true
% 1.82/1.02  --res_passive_queue_type                priority_queues
% 1.82/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.82/1.02  --res_passive_queues_freq               [15;5]
% 1.82/1.02  --res_forward_subs                      full
% 1.82/1.02  --res_backward_subs                     full
% 1.82/1.02  --res_forward_subs_resolution           true
% 1.82/1.02  --res_backward_subs_resolution          true
% 1.82/1.02  --res_orphan_elimination                true
% 1.82/1.02  --res_time_limit                        2.
% 1.82/1.02  --res_out_proof                         true
% 1.82/1.02  
% 1.82/1.02  ------ Superposition Options
% 1.82/1.02  
% 1.82/1.02  --superposition_flag                    true
% 1.82/1.02  --sup_passive_queue_type                priority_queues
% 1.82/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.82/1.02  --sup_passive_queues_freq               [8;1;4]
% 1.82/1.02  --demod_completeness_check              fast
% 1.82/1.02  --demod_use_ground                      true
% 1.82/1.02  --sup_to_prop_solver                    passive
% 1.82/1.02  --sup_prop_simpl_new                    true
% 1.82/1.02  --sup_prop_simpl_given                  true
% 1.82/1.02  --sup_fun_splitting                     false
% 1.82/1.02  --sup_smt_interval                      50000
% 1.82/1.02  
% 1.82/1.02  ------ Superposition Simplification Setup
% 1.82/1.02  
% 1.82/1.02  --sup_indices_passive                   []
% 1.82/1.02  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.02  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.02  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.82/1.02  --sup_full_triv                         [TrivRules;PropSubs]
% 1.82/1.02  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.02  --sup_full_bw                           [BwDemod]
% 1.82/1.02  --sup_immed_triv                        [TrivRules]
% 1.82/1.02  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.82/1.02  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.02  --sup_immed_bw_main                     []
% 1.82/1.02  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.82/1.02  --sup_input_triv                        [Unflattening;TrivRules]
% 1.82/1.02  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.82/1.02  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.82/1.02  
% 1.82/1.02  ------ Combination Options
% 1.82/1.02  
% 1.82/1.02  --comb_res_mult                         3
% 1.82/1.02  --comb_sup_mult                         2
% 1.82/1.02  --comb_inst_mult                        10
% 1.82/1.02  
% 1.82/1.02  ------ Debug Options
% 1.82/1.02  
% 1.82/1.02  --dbg_backtrace                         false
% 1.82/1.02  --dbg_dump_prop_clauses                 false
% 1.82/1.02  --dbg_dump_prop_clauses_file            -
% 1.82/1.02  --dbg_out_stat                          false
% 1.82/1.02  
% 1.82/1.02  
% 1.82/1.02  
% 1.82/1.02  
% 1.82/1.02  ------ Proving...
% 1.82/1.02  
% 1.82/1.02  
% 1.82/1.02  % SZS status Theorem for theBenchmark.p
% 1.82/1.02  
% 1.82/1.02   Resolution empty clause
% 1.82/1.02  
% 1.82/1.02  % SZS output start CNFRefutation for theBenchmark.p
% 1.82/1.02  
% 1.82/1.02  fof(f14,axiom,(
% 1.82/1.02    ! [X0,X1] : r1_tarski(X0,k2_xboole_0(X0,X1))),
% 1.82/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.02  
% 1.82/1.02  fof(f45,plain,(
% 1.82/1.02    ( ! [X0,X1] : (r1_tarski(X0,k2_xboole_0(X0,X1))) )),
% 1.82/1.02    inference(cnf_transformation,[],[f14])).
% 1.82/1.02  
% 1.82/1.02  fof(f1,axiom,(
% 1.82/1.02    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 1.82/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.02  
% 1.82/1.02  fof(f32,plain,(
% 1.82/1.02    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 1.82/1.02    inference(cnf_transformation,[],[f1])).
% 1.82/1.02  
% 1.82/1.02  fof(f19,conjecture,(
% 1.82/1.02    ! [X0,X1,X2] : ~(~(k1_xboole_0 = X2 & k1_tarski(X0) = X1) & ~(k1_tarski(X0) = X2 & k1_xboole_0 = X1) & ~(k1_tarski(X0) = X2 & k1_tarski(X0) = X1) & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 1.82/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.02  
% 1.82/1.02  fof(f20,negated_conjecture,(
% 1.82/1.02    ~! [X0,X1,X2] : ~(~(k1_xboole_0 = X2 & k1_tarski(X0) = X1) & ~(k1_tarski(X0) = X2 & k1_xboole_0 = X1) & ~(k1_tarski(X0) = X2 & k1_tarski(X0) = X1) & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 1.82/1.02    inference(negated_conjecture,[],[f19])).
% 1.82/1.02  
% 1.82/1.02  fof(f25,plain,(
% 1.82/1.02    ? [X0,X1,X2] : ((k1_xboole_0 != X2 | k1_tarski(X0) != X1) & (k1_tarski(X0) != X2 | k1_xboole_0 != X1) & (k1_tarski(X0) != X2 | k1_tarski(X0) != X1) & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 1.82/1.02    inference(ennf_transformation,[],[f20])).
% 1.82/1.02  
% 1.82/1.02  fof(f30,plain,(
% 1.82/1.02    ? [X0,X1,X2] : ((k1_xboole_0 != X2 | k1_tarski(X0) != X1) & (k1_tarski(X0) != X2 | k1_xboole_0 != X1) & (k1_tarski(X0) != X2 | k1_tarski(X0) != X1) & k2_xboole_0(X1,X2) = k1_tarski(X0)) => ((k1_xboole_0 != sK2 | k1_tarski(sK0) != sK1) & (k1_tarski(sK0) != sK2 | k1_xboole_0 != sK1) & (k1_tarski(sK0) != sK2 | k1_tarski(sK0) != sK1) & k2_xboole_0(sK1,sK2) = k1_tarski(sK0))),
% 1.82/1.02    introduced(choice_axiom,[])).
% 1.82/1.02  
% 1.82/1.02  fof(f31,plain,(
% 1.82/1.02    (k1_xboole_0 != sK2 | k1_tarski(sK0) != sK1) & (k1_tarski(sK0) != sK2 | k1_xboole_0 != sK1) & (k1_tarski(sK0) != sK2 | k1_tarski(sK0) != sK1) & k2_xboole_0(sK1,sK2) = k1_tarski(sK0)),
% 1.82/1.02    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f25,f30])).
% 1.82/1.02  
% 1.82/1.02  fof(f56,plain,(
% 1.82/1.02    k2_xboole_0(sK1,sK2) = k1_tarski(sK0)),
% 1.82/1.02    inference(cnf_transformation,[],[f31])).
% 1.82/1.02  
% 1.82/1.02  fof(f15,axiom,(
% 1.82/1.02    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 1.82/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.02  
% 1.82/1.02  fof(f46,plain,(
% 1.82/1.02    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 1.82/1.02    inference(cnf_transformation,[],[f15])).
% 1.82/1.02  
% 1.82/1.02  fof(f73,plain,(
% 1.82/1.02    k2_xboole_0(sK1,sK2) = k2_tarski(sK0,sK0)),
% 1.82/1.02    inference(definition_unfolding,[],[f56,f46])).
% 1.82/1.02  
% 1.82/1.02  fof(f18,axiom,(
% 1.82/1.02    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> ~(k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0))),
% 1.82/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.02  
% 1.82/1.02  fof(f24,plain,(
% 1.82/1.02    ! [X0,X1,X2] : (r1_tarski(X0,k2_tarski(X1,X2)) <=> (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0))),
% 1.82/1.02    inference(ennf_transformation,[],[f18])).
% 1.82/1.02  
% 1.82/1.02  fof(f28,plain,(
% 1.82/1.02    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & ((k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0) | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 1.82/1.02    inference(nnf_transformation,[],[f24])).
% 1.82/1.02  
% 1.82/1.02  fof(f29,plain,(
% 1.82/1.02    ! [X0,X1,X2] : ((r1_tarski(X0,k2_tarski(X1,X2)) | (k2_tarski(X1,X2) != X0 & k1_tarski(X2) != X0 & k1_tarski(X1) != X0 & k1_xboole_0 != X0)) & (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_tarski(X1,X2))))),
% 1.82/1.02    inference(flattening,[],[f28])).
% 1.82/1.02  
% 1.82/1.02  fof(f51,plain,(
% 1.82/1.02    ( ! [X2,X0,X1] : (k2_tarski(X1,X2) = X0 | k1_tarski(X2) = X0 | k1_tarski(X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_tarski(X1,X2))) )),
% 1.82/1.02    inference(cnf_transformation,[],[f29])).
% 1.82/1.02  
% 1.82/1.02  fof(f69,plain,(
% 1.82/1.02    ( ! [X2,X0,X1] : (k2_tarski(X1,X2) = X0 | k2_tarski(X2,X2) = X0 | k2_tarski(X1,X1) = X0 | k1_xboole_0 = X0 | ~r1_tarski(X0,k2_tarski(X1,X2))) )),
% 1.82/1.02    inference(definition_unfolding,[],[f51,f46,f46])).
% 1.82/1.02  
% 1.82/1.02  fof(f57,plain,(
% 1.82/1.02    k1_tarski(sK0) != sK2 | k1_tarski(sK0) != sK1),
% 1.82/1.02    inference(cnf_transformation,[],[f31])).
% 1.82/1.02  
% 1.82/1.02  fof(f72,plain,(
% 1.82/1.02    k2_tarski(sK0,sK0) != sK2 | k2_tarski(sK0,sK0) != sK1),
% 1.82/1.02    inference(definition_unfolding,[],[f57,f46,f46])).
% 1.82/1.02  
% 1.82/1.02  fof(f58,plain,(
% 1.82/1.02    k1_tarski(sK0) != sK2 | k1_xboole_0 != sK1),
% 1.82/1.02    inference(cnf_transformation,[],[f31])).
% 1.82/1.02  
% 1.82/1.02  fof(f71,plain,(
% 1.82/1.02    k2_tarski(sK0,sK0) != sK2 | k1_xboole_0 != sK1),
% 1.82/1.02    inference(definition_unfolding,[],[f58,f46])).
% 1.82/1.02  
% 1.82/1.02  fof(f59,plain,(
% 1.82/1.02    k1_xboole_0 != sK2 | k1_tarski(sK0) != sK1),
% 1.82/1.02    inference(cnf_transformation,[],[f31])).
% 1.82/1.02  
% 1.82/1.02  fof(f70,plain,(
% 1.82/1.02    k1_xboole_0 != sK2 | k2_tarski(sK0,sK0) != sK1),
% 1.82/1.02    inference(definition_unfolding,[],[f59,f46])).
% 1.82/1.02  
% 1.82/1.02  fof(f4,axiom,(
% 1.82/1.02    ! [X0] : k2_xboole_0(X0,k1_xboole_0) = X0),
% 1.82/1.02    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.82/1.02  
% 1.82/1.02  fof(f35,plain,(
% 1.82/1.02    ( ! [X0] : (k2_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.82/1.02    inference(cnf_transformation,[],[f4])).
% 1.82/1.02  
% 1.82/1.02  cnf(c_12,plain,
% 1.82/1.02      ( r1_tarski(X0,k2_xboole_0(X0,X1)) ),
% 1.82/1.02      inference(cnf_transformation,[],[f45]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_472,plain,
% 1.82/1.02      ( r1_tarski(X0,k2_xboole_0(X0,X1)) = iProver_top ),
% 1.82/1.02      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_0,plain,
% 1.82/1.02      ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
% 1.82/1.02      inference(cnf_transformation,[],[f32]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_25,negated_conjecture,
% 1.82/1.02      ( k2_xboole_0(sK1,sK2) = k2_tarski(sK0,sK0) ),
% 1.82/1.02      inference(cnf_transformation,[],[f73]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_490,plain,
% 1.82/1.02      ( k2_tarski(sK0,sK0) = k2_xboole_0(sK2,sK1) ),
% 1.82/1.02      inference(demodulation,[status(thm)],[c_0,c_25]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_21,plain,
% 1.82/1.02      ( ~ r1_tarski(X0,k2_tarski(X1,X2))
% 1.82/1.02      | k2_tarski(X1,X1) = X0
% 1.82/1.02      | k2_tarski(X1,X2) = X0
% 1.82/1.02      | k2_tarski(X2,X2) = X0
% 1.82/1.02      | k1_xboole_0 = X0 ),
% 1.82/1.02      inference(cnf_transformation,[],[f69]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_464,plain,
% 1.82/1.02      ( k2_tarski(X0,X0) = X1
% 1.82/1.02      | k2_tarski(X0,X2) = X1
% 1.82/1.02      | k2_tarski(X2,X2) = X1
% 1.82/1.02      | k1_xboole_0 = X1
% 1.82/1.02      | r1_tarski(X1,k2_tarski(X0,X2)) != iProver_top ),
% 1.82/1.02      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_772,plain,
% 1.82/1.02      ( k2_tarski(sK0,sK0) = X0
% 1.82/1.02      | k1_xboole_0 = X0
% 1.82/1.02      | r1_tarski(X0,k2_xboole_0(sK2,sK1)) != iProver_top ),
% 1.82/1.02      inference(superposition,[status(thm)],[c_490,c_464]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_773,plain,
% 1.82/1.02      ( k2_xboole_0(sK2,sK1) = X0
% 1.82/1.02      | k1_xboole_0 = X0
% 1.82/1.02      | r1_tarski(X0,k2_xboole_0(sK2,sK1)) != iProver_top ),
% 1.82/1.02      inference(demodulation,[status(thm)],[c_772,c_490]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_1440,plain,
% 1.82/1.02      ( k2_xboole_0(sK2,sK1) = sK2 | sK2 = k1_xboole_0 ),
% 1.82/1.02      inference(superposition,[status(thm)],[c_472,c_773]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_24,negated_conjecture,
% 1.82/1.02      ( k2_tarski(sK0,sK0) != sK1 | k2_tarski(sK0,sK0) != sK2 ),
% 1.82/1.02      inference(cnf_transformation,[],[f72]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_518,plain,
% 1.82/1.02      ( k2_xboole_0(sK2,sK1) != sK1 | k2_xboole_0(sK2,sK1) != sK2 ),
% 1.82/1.02      inference(light_normalisation,[status(thm)],[c_24,c_490]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_1529,plain,
% 1.82/1.02      ( k2_xboole_0(sK2,sK1) != sK1 | sK2 = k1_xboole_0 ),
% 1.82/1.02      inference(superposition,[status(thm)],[c_1440,c_518]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_23,negated_conjecture,
% 1.82/1.02      ( k2_tarski(sK0,sK0) != sK2 | k1_xboole_0 != sK1 ),
% 1.82/1.02      inference(cnf_transformation,[],[f71]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_502,plain,
% 1.82/1.02      ( k2_xboole_0(sK2,sK1) != sK2 | sK1 != k1_xboole_0 ),
% 1.82/1.02      inference(light_normalisation,[status(thm)],[c_23,c_490]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_1531,plain,
% 1.82/1.02      ( sK1 != k1_xboole_0 | sK2 = k1_xboole_0 ),
% 1.82/1.02      inference(superposition,[status(thm)],[c_1440,c_502]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_1434,plain,
% 1.82/1.02      ( r1_tarski(X0,k2_xboole_0(X1,X0)) = iProver_top ),
% 1.82/1.02      inference(superposition,[status(thm)],[c_0,c_472]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_1880,plain,
% 1.82/1.02      ( k2_xboole_0(sK2,sK1) = sK1 | sK1 = k1_xboole_0 ),
% 1.82/1.02      inference(superposition,[status(thm)],[c_1434,c_773]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_2069,plain,
% 1.82/1.02      ( sK2 = k1_xboole_0 ),
% 1.82/1.02      inference(global_propositional_subsumption,
% 1.82/1.02                [status(thm)],
% 1.82/1.02                [c_1529,c_1531,c_1880]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_22,negated_conjecture,
% 1.82/1.02      ( k2_tarski(sK0,sK0) != sK1 | k1_xboole_0 != sK2 ),
% 1.82/1.02      inference(cnf_transformation,[],[f70]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_507,plain,
% 1.82/1.02      ( k2_xboole_0(sK2,sK1) != sK1 | sK2 != k1_xboole_0 ),
% 1.82/1.02      inference(light_normalisation,[status(thm)],[c_22,c_490]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_2078,plain,
% 1.82/1.02      ( k2_xboole_0(k1_xboole_0,sK1) != sK1 | k1_xboole_0 != k1_xboole_0 ),
% 1.82/1.02      inference(demodulation,[status(thm)],[c_2069,c_507]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_2088,plain,
% 1.82/1.02      ( k2_xboole_0(k1_xboole_0,sK1) != sK1 ),
% 1.82/1.02      inference(equality_resolution_simp,[status(thm)],[c_2078]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_3,plain,
% 1.82/1.02      ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
% 1.82/1.02      inference(cnf_transformation,[],[f35]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_681,plain,
% 1.82/1.02      ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
% 1.82/1.02      inference(superposition,[status(thm)],[c_3,c_0]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_2090,plain,
% 1.82/1.02      ( sK1 != sK1 ),
% 1.82/1.02      inference(demodulation,[status(thm)],[c_2088,c_681]) ).
% 1.82/1.02  
% 1.82/1.02  cnf(c_2091,plain,
% 1.82/1.02      ( $false ),
% 1.82/1.02      inference(equality_resolution_simp,[status(thm)],[c_2090]) ).
% 1.82/1.02  
% 1.82/1.02  
% 1.82/1.02  % SZS output end CNFRefutation for theBenchmark.p
% 1.82/1.02  
% 1.82/1.02  ------                               Statistics
% 1.82/1.02  
% 1.82/1.02  ------ General
% 1.82/1.02  
% 1.82/1.02  abstr_ref_over_cycles:                  0
% 1.82/1.02  abstr_ref_under_cycles:                 0
% 1.82/1.02  gc_basic_clause_elim:                   0
% 1.82/1.02  forced_gc_time:                         0
% 1.82/1.02  parsing_time:                           0.021
% 1.82/1.02  unif_index_cands_time:                  0.
% 1.82/1.02  unif_index_add_time:                    0.
% 1.82/1.02  orderings_time:                         0.
% 1.82/1.02  out_proof_time:                         0.026
% 1.82/1.02  total_time:                             0.141
% 1.82/1.02  num_of_symbols:                         39
% 1.82/1.02  num_of_terms:                           2753
% 1.82/1.02  
% 1.82/1.02  ------ Preprocessing
% 1.82/1.02  
% 1.82/1.02  num_of_splits:                          0
% 1.82/1.02  num_of_split_atoms:                     0
% 1.82/1.02  num_of_reused_defs:                     0
% 1.82/1.02  num_eq_ax_congr_red:                    0
% 1.82/1.02  num_of_sem_filtered_clauses:            1
% 1.82/1.02  num_of_subtypes:                        0
% 1.82/1.02  monotx_restored_types:                  0
% 1.82/1.02  sat_num_of_epr_types:                   0
% 1.82/1.02  sat_num_of_non_cyclic_types:            0
% 1.82/1.02  sat_guarded_non_collapsed_types:        0
% 1.82/1.02  num_pure_diseq_elim:                    0
% 1.82/1.02  simp_replaced_by:                       0
% 1.82/1.02  res_preprocessed:                       113
% 1.82/1.02  prep_upred:                             0
% 1.82/1.02  prep_unflattend:                        0
% 1.82/1.02  smt_new_axioms:                         0
% 1.82/1.02  pred_elim_cands:                        1
% 1.82/1.02  pred_elim:                              0
% 1.82/1.02  pred_elim_cl:                           0
% 1.82/1.02  pred_elim_cycles:                       2
% 1.82/1.02  merged_defs:                            0
% 1.82/1.02  merged_defs_ncl:                        0
% 1.82/1.02  bin_hyper_res:                          0
% 1.82/1.02  prep_cycles:                            4
% 1.82/1.02  pred_elim_time:                         0.
% 1.82/1.02  splitting_time:                         0.
% 1.82/1.02  sem_filter_time:                        0.
% 1.82/1.02  monotx_time:                            0.
% 1.82/1.02  subtype_inf_time:                       0.
% 1.82/1.02  
% 1.82/1.02  ------ Problem properties
% 1.82/1.02  
% 1.82/1.02  clauses:                                25
% 1.82/1.02  conjectures:                            4
% 1.82/1.02  epr:                                    0
% 1.82/1.02  horn:                                   23
% 1.82/1.02  ground:                                 4
% 1.82/1.02  unary:                                  17
% 1.82/1.02  binary:                                 6
% 1.82/1.02  lits:                                   37
% 1.82/1.02  lits_eq:                                22
% 1.82/1.02  fd_pure:                                0
% 1.82/1.02  fd_pseudo:                              0
% 1.82/1.02  fd_cond:                                0
% 1.82/1.02  fd_pseudo_cond:                         2
% 1.82/1.02  ac_symbols:                             0
% 1.82/1.02  
% 1.82/1.02  ------ Propositional Solver
% 1.82/1.02  
% 1.82/1.02  prop_solver_calls:                      25
% 1.82/1.02  prop_fast_solver_calls:                 408
% 1.82/1.02  smt_solver_calls:                       0
% 1.82/1.02  smt_fast_solver_calls:                  0
% 1.82/1.02  prop_num_of_clauses:                    736
% 1.82/1.02  prop_preprocess_simplified:             3753
% 1.82/1.02  prop_fo_subsumed:                       1
% 1.82/1.02  prop_solver_time:                       0.
% 1.82/1.02  smt_solver_time:                        0.
% 1.82/1.02  smt_fast_solver_time:                   0.
% 1.82/1.02  prop_fast_solver_time:                  0.
% 1.82/1.02  prop_unsat_core_time:                   0.
% 1.82/1.02  
% 1.82/1.02  ------ QBF
% 1.82/1.02  
% 1.82/1.02  qbf_q_res:                              0
% 1.82/1.02  qbf_num_tautologies:                    0
% 1.82/1.02  qbf_prep_cycles:                        0
% 1.82/1.02  
% 1.82/1.02  ------ BMC1
% 1.82/1.02  
% 1.82/1.02  bmc1_current_bound:                     -1
% 1.82/1.02  bmc1_last_solved_bound:                 -1
% 1.82/1.02  bmc1_unsat_core_size:                   -1
% 1.82/1.02  bmc1_unsat_core_parents_size:           -1
% 1.82/1.02  bmc1_merge_next_fun:                    0
% 1.82/1.02  bmc1_unsat_core_clauses_time:           0.
% 1.82/1.02  
% 1.82/1.02  ------ Instantiation
% 1.82/1.02  
% 1.82/1.02  inst_num_of_clauses:                    258
% 1.82/1.02  inst_num_in_passive:                    16
% 1.82/1.02  inst_num_in_active:                     121
% 1.82/1.02  inst_num_in_unprocessed:                121
% 1.82/1.02  inst_num_of_loops:                      130
% 1.82/1.02  inst_num_of_learning_restarts:          0
% 1.82/1.02  inst_num_moves_active_passive:          8
% 1.82/1.02  inst_lit_activity:                      0
% 1.82/1.02  inst_lit_activity_moves:                0
% 1.82/1.02  inst_num_tautologies:                   0
% 1.82/1.02  inst_num_prop_implied:                  0
% 1.82/1.02  inst_num_existing_simplified:           0
% 1.82/1.02  inst_num_eq_res_simplified:             0
% 1.82/1.02  inst_num_child_elim:                    0
% 1.82/1.02  inst_num_of_dismatching_blockings:      92
% 1.82/1.02  inst_num_of_non_proper_insts:           217
% 1.82/1.02  inst_num_of_duplicates:                 0
% 1.82/1.02  inst_inst_num_from_inst_to_res:         0
% 1.82/1.02  inst_dismatching_checking_time:         0.
% 1.82/1.02  
% 1.82/1.02  ------ Resolution
% 1.82/1.02  
% 1.82/1.02  res_num_of_clauses:                     0
% 1.82/1.02  res_num_in_passive:                     0
% 1.82/1.02  res_num_in_active:                      0
% 1.82/1.02  res_num_of_loops:                       117
% 1.82/1.02  res_forward_subset_subsumed:            18
% 1.82/1.02  res_backward_subset_subsumed:           0
% 1.82/1.02  res_forward_subsumed:                   0
% 1.82/1.02  res_backward_subsumed:                  0
% 1.82/1.02  res_forward_subsumption_resolution:     0
% 1.82/1.02  res_backward_subsumption_resolution:    0
% 1.82/1.02  res_clause_to_clause_subsumption:       210
% 1.82/1.02  res_orphan_elimination:                 0
% 1.82/1.02  res_tautology_del:                      12
% 1.82/1.02  res_num_eq_res_simplified:              0
% 1.82/1.02  res_num_sel_changes:                    0
% 1.82/1.02  res_moves_from_active_to_pass:          0
% 1.82/1.02  
% 1.82/1.02  ------ Superposition
% 1.82/1.02  
% 1.82/1.02  sup_time_total:                         0.
% 1.82/1.02  sup_time_generating:                    0.
% 1.82/1.02  sup_time_sim_full:                      0.
% 1.82/1.02  sup_time_sim_immed:                     0.
% 1.82/1.02  
% 1.82/1.02  sup_num_of_clauses:                     57
% 1.82/1.02  sup_num_in_active:                      16
% 1.82/1.02  sup_num_in_passive:                     41
% 1.82/1.02  sup_num_of_loops:                       25
% 1.82/1.02  sup_fw_superposition:                   54
% 1.82/1.02  sup_bw_superposition:                   39
% 1.82/1.02  sup_immediate_simplified:               34
% 1.82/1.02  sup_given_eliminated:                   0
% 1.82/1.02  comparisons_done:                       0
% 1.82/1.02  comparisons_avoided:                    0
% 1.82/1.02  
% 1.82/1.02  ------ Simplifications
% 1.82/1.02  
% 1.82/1.02  
% 1.82/1.02  sim_fw_subset_subsumed:                 1
% 1.82/1.02  sim_bw_subset_subsumed:                 4
% 1.82/1.02  sim_fw_subsumed:                        7
% 1.82/1.02  sim_bw_subsumed:                        0
% 1.82/1.02  sim_fw_subsumption_res:                 0
% 1.82/1.02  sim_bw_subsumption_res:                 0
% 1.82/1.02  sim_tautology_del:                      1
% 1.82/1.02  sim_eq_tautology_del:                   12
% 1.82/1.02  sim_eq_res_simp:                        1
% 1.82/1.02  sim_fw_demodulated:                     30
% 1.82/1.02  sim_bw_demodulated:                     10
% 1.82/1.02  sim_light_normalised:                   20
% 1.82/1.02  sim_joinable_taut:                      0
% 1.82/1.02  sim_joinable_simp:                      0
% 1.82/1.02  sim_ac_normalised:                      0
% 1.82/1.02  sim_smt_subsumption:                    0
% 1.82/1.02  
%------------------------------------------------------------------------------
