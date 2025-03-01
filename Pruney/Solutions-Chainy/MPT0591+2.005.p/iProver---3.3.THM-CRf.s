%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:48:11 EST 2020

% Result     : Theorem 0.99s
% Output     : CNFRefutation 0.99s
% Verified   : 
% Statistics : Number of formulae       :   72 ( 134 expanded)
%              Number of clauses        :   44 (  59 expanded)
%              Number of leaves         :    9 (  26 expanded)
%              Depth                    :   15
%              Number of atoms          :  168 ( 361 expanded)
%              Number of equality atoms :   92 ( 198 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f7,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0] :
      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f27,plain,(
    ! [X0] :
      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f12])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f18,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f3,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1,X2,X3] :
          ( ( r1_tarski(k2_zfmisc_1(X1,X0),k2_zfmisc_1(X3,X2))
            | r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(X2,X3)) )
         => r1_tarski(X1,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( ! [X1,X2,X3] :
          ( r1_tarski(X1,X3)
          | ( ~ r1_tarski(k2_zfmisc_1(X1,X0),k2_zfmisc_1(X3,X2))
            & ~ r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(X2,X3)) ) )
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f23,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_tarski(X1,X3)
      | ~ r1_tarski(k2_zfmisc_1(X1,X0),k2_zfmisc_1(X3,X2))
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f4,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,axiom,(
    ! [X0,X1] : r1_tarski(k1_relat_1(k2_zfmisc_1(X0,X1)),X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] : r1_tarski(k1_relat_1(k2_zfmisc_1(X0,X1)),X0) ),
    inference(cnf_transformation,[],[f5])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( X0 = X1
    <=> ( r1_tarski(X1,X0)
        & r1_tarski(X0,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( X0 = X1
        | ~ r1_tarski(X1,X0)
        | ~ r1_tarski(X0,X1) )
      & ( ( r1_tarski(X1,X0)
          & r1_tarski(X0,X1) )
        | X0 != X1 ) ) ),
    inference(flattening,[],[f14])).

fof(f21,plain,(
    ! [X0,X1] :
      ( X0 = X1
      | ~ r1_tarski(X1,X0)
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f22,plain,(
    ! [X2,X0,X3,X1] :
      ( r1_tarski(X1,X3)
      | ~ r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(X2,X3))
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f6,axiom,(
    ! [X0,X1] : r1_tarski(k2_relat_1(k2_zfmisc_1(X0,X1)),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] : r1_tarski(k2_relat_1(k2_zfmisc_1(X0,X1)),X1) ),
    inference(cnf_transformation,[],[f6])).

fof(f8,conjecture,(
    ! [X0,X1] :
      ~ ( ~ ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
            & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 )
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,negated_conjecture,(
    ~ ! [X0,X1] :
        ~ ( ~ ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
              & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 )
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) ),
    inference(negated_conjecture,[],[f8])).

fof(f13,plain,(
    ? [X0,X1] :
      ( ( k2_relat_1(k2_zfmisc_1(X0,X1)) != X1
        | k1_relat_1(k2_zfmisc_1(X0,X1)) != X0 )
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0 ) ),
    inference(ennf_transformation,[],[f9])).

fof(f16,plain,
    ( ? [X0,X1] :
        ( ( k2_relat_1(k2_zfmisc_1(X0,X1)) != X1
          | k1_relat_1(k2_zfmisc_1(X0,X1)) != X0 )
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 )
   => ( ( k2_relat_1(k2_zfmisc_1(sK0,sK1)) != sK1
        | k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0 )
      & k1_xboole_0 != sK1
      & k1_xboole_0 != sK0 ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,
    ( ( k2_relat_1(k2_zfmisc_1(sK0,sK1)) != sK1
      | k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0 )
    & k1_xboole_0 != sK1
    & k1_xboole_0 != sK0 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f13,f16])).

fof(f30,plain,
    ( k2_relat_1(k2_zfmisc_1(sK0,sK1)) != sK1
    | k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0 ),
    inference(cnf_transformation,[],[f17])).

fof(f28,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f17])).

fof(f29,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f17])).

cnf(c_9,plain,
    ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
    | ~ v1_relat_1(X0) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_381,plain,
    ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_0,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f18])).

cnf(c_4,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3))
    | v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f23])).

cnf(c_138,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3))
    | X2 != X4
    | k1_xboole_0 = X4 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_4])).

cnf(c_139,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3))
    | k1_xboole_0 = X2 ),
    inference(unflattening,[status(thm)],[c_138])).

cnf(c_379,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X1,X2) = iProver_top
    | r1_tarski(k2_zfmisc_1(X1,X0),k2_zfmisc_1(X2,X3)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_139])).

cnf(c_791,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X1,k1_relat_1(k2_zfmisc_1(X1,X0))) = iProver_top
    | v1_relat_1(k2_zfmisc_1(X1,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_381,c_379])).

cnf(c_6,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_384,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1016,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X1,k1_relat_1(k2_zfmisc_1(X1,X0))) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_791,c_384])).

cnf(c_7,plain,
    ( r1_tarski(k1_relat_1(k2_zfmisc_1(X0,X1)),X0) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_383,plain,
    ( r1_tarski(k1_relat_1(k2_zfmisc_1(X0,X1)),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_tarski(X1,X0)
    | X0 = X1 ),
    inference(cnf_transformation,[],[f21])).

cnf(c_386,plain,
    ( X0 = X1
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(X1,X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_808,plain,
    ( k1_relat_1(k2_zfmisc_1(X0,X1)) = X0
    | r1_tarski(X0,k1_relat_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_383,c_386])).

cnf(c_1021,plain,
    ( k1_relat_1(k2_zfmisc_1(X0,X1)) = X0
    | k1_xboole_0 = X1 ),
    inference(superposition,[status(thm)],[c_1016,c_808])).

cnf(c_5,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X3,X1))
    | v1_xboole_0(X2) ),
    inference(cnf_transformation,[],[f22])).

cnf(c_125,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X3,X1))
    | X2 != X4
    | k1_xboole_0 = X4 ),
    inference(resolution_lifted,[status(thm)],[c_0,c_5])).

cnf(c_126,plain,
    ( r1_tarski(X0,X1)
    | ~ r1_tarski(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X3,X1))
    | k1_xboole_0 = X2 ),
    inference(unflattening,[status(thm)],[c_125])).

cnf(c_380,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X1,X2) = iProver_top
    | r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(X3,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_126])).

cnf(c_1097,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X1,k2_relat_1(k2_zfmisc_1(X0,X1))) = iProver_top
    | v1_relat_1(k2_zfmisc_1(X0,X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_381,c_380])).

cnf(c_22,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1184,plain,
    ( r1_tarski(X1,k2_relat_1(k2_zfmisc_1(X0,X1))) = iProver_top
    | k1_xboole_0 = X0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1097,c_22])).

cnf(c_1185,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X1,k2_relat_1(k2_zfmisc_1(X0,X1))) = iProver_top ),
    inference(renaming,[status(thm)],[c_1184])).

cnf(c_8,plain,
    ( r1_tarski(k2_relat_1(k2_zfmisc_1(X0,X1)),X1) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_382,plain,
    ( r1_tarski(k2_relat_1(k2_zfmisc_1(X0,X1)),X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_809,plain,
    ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
    | r1_tarski(X1,k2_relat_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_382,c_386])).

cnf(c_1193,plain,
    ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
    | k1_xboole_0 = X0 ),
    inference(superposition,[status(thm)],[c_1185,c_809])).

cnf(c_10,negated_conjecture,
    ( k2_relat_1(k2_zfmisc_1(sK0,sK1)) != sK1
    | k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_1206,plain,
    ( k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0
    | sK0 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1193,c_10])).

cnf(c_12,negated_conjecture,
    ( k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f28])).

cnf(c_448,plain,
    ( ~ r1_tarski(k2_relat_1(k2_zfmisc_1(sK0,sK1)),sK1)
    | ~ r1_tarski(sK1,k2_relat_1(k2_zfmisc_1(sK0,sK1)))
    | k2_relat_1(k2_zfmisc_1(sK0,sK1)) = sK1 ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_476,plain,
    ( r1_tarski(k2_relat_1(k2_zfmisc_1(sK0,sK1)),sK1) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_549,plain,
    ( ~ r1_tarski(k2_zfmisc_1(X0,sK1),k2_zfmisc_1(X1,k2_relat_1(k2_zfmisc_1(sK0,sK1))))
    | r1_tarski(sK1,k2_relat_1(k2_zfmisc_1(sK0,sK1)))
    | k1_xboole_0 = X0 ),
    inference(instantiation,[status(thm)],[c_126])).

cnf(c_762,plain,
    ( ~ r1_tarski(k2_zfmisc_1(sK0,sK1),k2_zfmisc_1(k1_relat_1(k2_zfmisc_1(sK0,sK1)),k2_relat_1(k2_zfmisc_1(sK0,sK1))))
    | r1_tarski(sK1,k2_relat_1(k2_zfmisc_1(sK0,sK1)))
    | k1_xboole_0 = sK0 ),
    inference(instantiation,[status(thm)],[c_549])).

cnf(c_443,plain,
    ( r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(k1_relat_1(k2_zfmisc_1(X0,X1)),k2_relat_1(k2_zfmisc_1(X0,X1))))
    | ~ v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_763,plain,
    ( r1_tarski(k2_zfmisc_1(sK0,sK1),k2_zfmisc_1(k1_relat_1(k2_zfmisc_1(sK0,sK1)),k2_relat_1(k2_zfmisc_1(sK0,sK1))))
    | ~ v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_443])).

cnf(c_1179,plain,
    ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_1296,plain,
    ( k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_1206,c_12,c_10,c_448,c_476,c_762,c_763,c_1179])).

cnf(c_1299,plain,
    ( sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1021,c_1296])).

cnf(c_11,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f29])).

cnf(c_1303,plain,
    ( k1_xboole_0 != k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1299,c_11])).

cnf(c_1304,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_1303])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n010.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 16:38:59 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 0.99/0.93  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.99/0.93  
% 0.99/0.93  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.99/0.93  
% 0.99/0.93  ------  iProver source info
% 0.99/0.93  
% 0.99/0.93  git: date: 2020-06-30 10:37:57 +0100
% 0.99/0.93  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.99/0.93  git: non_committed_changes: false
% 0.99/0.93  git: last_make_outside_of_git: false
% 0.99/0.93  
% 0.99/0.93  ------ 
% 0.99/0.93  
% 0.99/0.93  ------ Input Options
% 0.99/0.93  
% 0.99/0.93  --out_options                           all
% 0.99/0.93  --tptp_safe_out                         true
% 0.99/0.93  --problem_path                          ""
% 0.99/0.93  --include_path                          ""
% 0.99/0.93  --clausifier                            res/vclausify_rel
% 0.99/0.93  --clausifier_options                    --mode clausify
% 0.99/0.93  --stdin                                 false
% 0.99/0.93  --stats_out                             all
% 0.99/0.93  
% 0.99/0.93  ------ General Options
% 0.99/0.93  
% 0.99/0.93  --fof                                   false
% 0.99/0.93  --time_out_real                         305.
% 0.99/0.93  --time_out_virtual                      -1.
% 0.99/0.93  --symbol_type_check                     false
% 0.99/0.93  --clausify_out                          false
% 0.99/0.93  --sig_cnt_out                           false
% 0.99/0.93  --trig_cnt_out                          false
% 0.99/0.93  --trig_cnt_out_tolerance                1.
% 0.99/0.93  --trig_cnt_out_sk_spl                   false
% 0.99/0.93  --abstr_cl_out                          false
% 0.99/0.93  
% 0.99/0.93  ------ Global Options
% 0.99/0.93  
% 0.99/0.93  --schedule                              default
% 0.99/0.93  --add_important_lit                     false
% 0.99/0.93  --prop_solver_per_cl                    1000
% 0.99/0.93  --min_unsat_core                        false
% 0.99/0.93  --soft_assumptions                      false
% 0.99/0.93  --soft_lemma_size                       3
% 0.99/0.93  --prop_impl_unit_size                   0
% 0.99/0.93  --prop_impl_unit                        []
% 0.99/0.93  --share_sel_clauses                     true
% 0.99/0.93  --reset_solvers                         false
% 0.99/0.93  --bc_imp_inh                            [conj_cone]
% 0.99/0.93  --conj_cone_tolerance                   3.
% 0.99/0.93  --extra_neg_conj                        none
% 0.99/0.93  --large_theory_mode                     true
% 0.99/0.93  --prolific_symb_bound                   200
% 0.99/0.93  --lt_threshold                          2000
% 0.99/0.93  --clause_weak_htbl                      true
% 0.99/0.93  --gc_record_bc_elim                     false
% 0.99/0.93  
% 0.99/0.93  ------ Preprocessing Options
% 0.99/0.93  
% 0.99/0.93  --preprocessing_flag                    true
% 0.99/0.93  --time_out_prep_mult                    0.1
% 0.99/0.93  --splitting_mode                        input
% 0.99/0.93  --splitting_grd                         true
% 0.99/0.93  --splitting_cvd                         false
% 0.99/0.93  --splitting_cvd_svl                     false
% 0.99/0.93  --splitting_nvd                         32
% 0.99/0.93  --sub_typing                            true
% 0.99/0.93  --prep_gs_sim                           true
% 0.99/0.93  --prep_unflatten                        true
% 0.99/0.93  --prep_res_sim                          true
% 0.99/0.93  --prep_upred                            true
% 0.99/0.93  --prep_sem_filter                       exhaustive
% 0.99/0.93  --prep_sem_filter_out                   false
% 0.99/0.93  --pred_elim                             true
% 0.99/0.93  --res_sim_input                         true
% 0.99/0.93  --eq_ax_congr_red                       true
% 0.99/0.93  --pure_diseq_elim                       true
% 0.99/0.93  --brand_transform                       false
% 0.99/0.93  --non_eq_to_eq                          false
% 0.99/0.93  --prep_def_merge                        true
% 0.99/0.93  --prep_def_merge_prop_impl              false
% 0.99/0.93  --prep_def_merge_mbd                    true
% 0.99/0.93  --prep_def_merge_tr_red                 false
% 0.99/0.93  --prep_def_merge_tr_cl                  false
% 0.99/0.93  --smt_preprocessing                     true
% 0.99/0.93  --smt_ac_axioms                         fast
% 0.99/0.93  --preprocessed_out                      false
% 0.99/0.93  --preprocessed_stats                    false
% 0.99/0.93  
% 0.99/0.93  ------ Abstraction refinement Options
% 0.99/0.93  
% 0.99/0.93  --abstr_ref                             []
% 0.99/0.93  --abstr_ref_prep                        false
% 0.99/0.93  --abstr_ref_until_sat                   false
% 0.99/0.93  --abstr_ref_sig_restrict                funpre
% 0.99/0.93  --abstr_ref_af_restrict_to_split_sk     false
% 0.99/0.93  --abstr_ref_under                       []
% 0.99/0.93  
% 0.99/0.93  ------ SAT Options
% 0.99/0.93  
% 0.99/0.93  --sat_mode                              false
% 0.99/0.93  --sat_fm_restart_options                ""
% 0.99/0.93  --sat_gr_def                            false
% 0.99/0.93  --sat_epr_types                         true
% 0.99/0.93  --sat_non_cyclic_types                  false
% 0.99/0.93  --sat_finite_models                     false
% 0.99/0.93  --sat_fm_lemmas                         false
% 0.99/0.93  --sat_fm_prep                           false
% 0.99/0.93  --sat_fm_uc_incr                        true
% 0.99/0.93  --sat_out_model                         small
% 0.99/0.93  --sat_out_clauses                       false
% 0.99/0.93  
% 0.99/0.93  ------ QBF Options
% 0.99/0.93  
% 0.99/0.93  --qbf_mode                              false
% 0.99/0.93  --qbf_elim_univ                         false
% 0.99/0.93  --qbf_dom_inst                          none
% 0.99/0.93  --qbf_dom_pre_inst                      false
% 0.99/0.93  --qbf_sk_in                             false
% 0.99/0.93  --qbf_pred_elim                         true
% 0.99/0.93  --qbf_split                             512
% 0.99/0.93  
% 0.99/0.93  ------ BMC1 Options
% 0.99/0.93  
% 0.99/0.93  --bmc1_incremental                      false
% 0.99/0.93  --bmc1_axioms                           reachable_all
% 0.99/0.93  --bmc1_min_bound                        0
% 0.99/0.93  --bmc1_max_bound                        -1
% 0.99/0.93  --bmc1_max_bound_default                -1
% 0.99/0.93  --bmc1_symbol_reachability              true
% 0.99/0.93  --bmc1_property_lemmas                  false
% 0.99/0.93  --bmc1_k_induction                      false
% 0.99/0.93  --bmc1_non_equiv_states                 false
% 0.99/0.93  --bmc1_deadlock                         false
% 0.99/0.93  --bmc1_ucm                              false
% 0.99/0.93  --bmc1_add_unsat_core                   none
% 0.99/0.93  --bmc1_unsat_core_children              false
% 0.99/0.93  --bmc1_unsat_core_extrapolate_axioms    false
% 0.99/0.93  --bmc1_out_stat                         full
% 0.99/0.93  --bmc1_ground_init                      false
% 0.99/0.93  --bmc1_pre_inst_next_state              false
% 0.99/0.93  --bmc1_pre_inst_state                   false
% 0.99/0.93  --bmc1_pre_inst_reach_state             false
% 0.99/0.93  --bmc1_out_unsat_core                   false
% 0.99/0.93  --bmc1_aig_witness_out                  false
% 0.99/0.93  --bmc1_verbose                          false
% 0.99/0.93  --bmc1_dump_clauses_tptp                false
% 0.99/0.93  --bmc1_dump_unsat_core_tptp             false
% 0.99/0.93  --bmc1_dump_file                        -
% 0.99/0.93  --bmc1_ucm_expand_uc_limit              128
% 0.99/0.93  --bmc1_ucm_n_expand_iterations          6
% 0.99/0.93  --bmc1_ucm_extend_mode                  1
% 0.99/0.93  --bmc1_ucm_init_mode                    2
% 0.99/0.93  --bmc1_ucm_cone_mode                    none
% 0.99/0.93  --bmc1_ucm_reduced_relation_type        0
% 0.99/0.93  --bmc1_ucm_relax_model                  4
% 0.99/0.93  --bmc1_ucm_full_tr_after_sat            true
% 0.99/0.93  --bmc1_ucm_expand_neg_assumptions       false
% 0.99/0.93  --bmc1_ucm_layered_model                none
% 0.99/0.93  --bmc1_ucm_max_lemma_size               10
% 0.99/0.93  
% 0.99/0.93  ------ AIG Options
% 0.99/0.93  
% 0.99/0.93  --aig_mode                              false
% 0.99/0.93  
% 0.99/0.93  ------ Instantiation Options
% 0.99/0.93  
% 0.99/0.93  --instantiation_flag                    true
% 0.99/0.93  --inst_sos_flag                         false
% 0.99/0.93  --inst_sos_phase                        true
% 0.99/0.93  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.99/0.93  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.99/0.93  --inst_lit_sel_side                     num_symb
% 0.99/0.93  --inst_solver_per_active                1400
% 0.99/0.93  --inst_solver_calls_frac                1.
% 0.99/0.93  --inst_passive_queue_type               priority_queues
% 0.99/0.93  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.99/0.93  --inst_passive_queues_freq              [25;2]
% 0.99/0.93  --inst_dismatching                      true
% 0.99/0.93  --inst_eager_unprocessed_to_passive     true
% 0.99/0.93  --inst_prop_sim_given                   true
% 0.99/0.93  --inst_prop_sim_new                     false
% 0.99/0.93  --inst_subs_new                         false
% 0.99/0.93  --inst_eq_res_simp                      false
% 0.99/0.93  --inst_subs_given                       false
% 0.99/0.93  --inst_orphan_elimination               true
% 0.99/0.93  --inst_learning_loop_flag               true
% 0.99/0.93  --inst_learning_start                   3000
% 0.99/0.93  --inst_learning_factor                  2
% 0.99/0.93  --inst_start_prop_sim_after_learn       3
% 0.99/0.93  --inst_sel_renew                        solver
% 0.99/0.93  --inst_lit_activity_flag                true
% 0.99/0.93  --inst_restr_to_given                   false
% 0.99/0.93  --inst_activity_threshold               500
% 0.99/0.93  --inst_out_proof                        true
% 0.99/0.93  
% 0.99/0.93  ------ Resolution Options
% 0.99/0.93  
% 0.99/0.93  --resolution_flag                       true
% 0.99/0.93  --res_lit_sel                           adaptive
% 0.99/0.93  --res_lit_sel_side                      none
% 0.99/0.93  --res_ordering                          kbo
% 0.99/0.93  --res_to_prop_solver                    active
% 0.99/0.93  --res_prop_simpl_new                    false
% 0.99/0.93  --res_prop_simpl_given                  true
% 0.99/0.93  --res_passive_queue_type                priority_queues
% 0.99/0.93  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.99/0.93  --res_passive_queues_freq               [15;5]
% 0.99/0.93  --res_forward_subs                      full
% 0.99/0.93  --res_backward_subs                     full
% 0.99/0.93  --res_forward_subs_resolution           true
% 0.99/0.93  --res_backward_subs_resolution          true
% 0.99/0.93  --res_orphan_elimination                true
% 0.99/0.93  --res_time_limit                        2.
% 0.99/0.93  --res_out_proof                         true
% 0.99/0.93  
% 0.99/0.93  ------ Superposition Options
% 0.99/0.93  
% 0.99/0.93  --superposition_flag                    true
% 0.99/0.93  --sup_passive_queue_type                priority_queues
% 0.99/0.93  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.99/0.93  --sup_passive_queues_freq               [8;1;4]
% 0.99/0.93  --demod_completeness_check              fast
% 0.99/0.93  --demod_use_ground                      true
% 0.99/0.93  --sup_to_prop_solver                    passive
% 0.99/0.93  --sup_prop_simpl_new                    true
% 0.99/0.93  --sup_prop_simpl_given                  true
% 0.99/0.93  --sup_fun_splitting                     false
% 0.99/0.93  --sup_smt_interval                      50000
% 0.99/0.93  
% 0.99/0.93  ------ Superposition Simplification Setup
% 0.99/0.93  
% 0.99/0.93  --sup_indices_passive                   []
% 0.99/0.93  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.99/0.93  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.99/0.93  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.99/0.93  --sup_full_triv                         [TrivRules;PropSubs]
% 0.99/0.93  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.99/0.93  --sup_full_bw                           [BwDemod]
% 0.99/0.93  --sup_immed_triv                        [TrivRules]
% 0.99/0.93  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.99/0.93  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.99/0.93  --sup_immed_bw_main                     []
% 0.99/0.93  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.99/0.93  --sup_input_triv                        [Unflattening;TrivRules]
% 0.99/0.93  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.99/0.93  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.99/0.93  
% 0.99/0.93  ------ Combination Options
% 0.99/0.93  
% 0.99/0.93  --comb_res_mult                         3
% 0.99/0.93  --comb_sup_mult                         2
% 0.99/0.93  --comb_inst_mult                        10
% 0.99/0.93  
% 0.99/0.93  ------ Debug Options
% 0.99/0.93  
% 0.99/0.93  --dbg_backtrace                         false
% 0.99/0.93  --dbg_dump_prop_clauses                 false
% 0.99/0.93  --dbg_dump_prop_clauses_file            -
% 0.99/0.93  --dbg_out_stat                          false
% 0.99/0.93  ------ Parsing...
% 0.99/0.93  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.99/0.93  
% 0.99/0.93  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 0.99/0.93  
% 0.99/0.93  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.99/0.93  
% 0.99/0.93  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.99/0.93  ------ Proving...
% 0.99/0.93  ------ Problem Properties 
% 0.99/0.93  
% 0.99/0.93  
% 0.99/0.93  clauses                                 11
% 0.99/0.93  conjectures                             3
% 0.99/0.93  EPR                                     4
% 0.99/0.93  Horn                                    9
% 0.99/0.93  unary                                   6
% 0.99/0.93  binary                                  2
% 0.99/0.93  lits                                    19
% 0.99/0.93  lits eq                                 7
% 0.99/0.93  fd_pure                                 0
% 0.99/0.93  fd_pseudo                               0
% 0.99/0.93  fd_cond                                 2
% 0.99/0.93  fd_pseudo_cond                          1
% 0.99/0.93  AC symbols                              0
% 0.99/0.93  
% 0.99/0.93  ------ Schedule dynamic 5 is on 
% 0.99/0.93  
% 0.99/0.93  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.99/0.93  
% 0.99/0.93  
% 0.99/0.93  ------ 
% 0.99/0.93  Current options:
% 0.99/0.93  ------ 
% 0.99/0.93  
% 0.99/0.93  ------ Input Options
% 0.99/0.93  
% 0.99/0.93  --out_options                           all
% 0.99/0.93  --tptp_safe_out                         true
% 0.99/0.93  --problem_path                          ""
% 0.99/0.93  --include_path                          ""
% 0.99/0.93  --clausifier                            res/vclausify_rel
% 0.99/0.93  --clausifier_options                    --mode clausify
% 0.99/0.93  --stdin                                 false
% 0.99/0.93  --stats_out                             all
% 0.99/0.93  
% 0.99/0.93  ------ General Options
% 0.99/0.93  
% 0.99/0.93  --fof                                   false
% 0.99/0.93  --time_out_real                         305.
% 0.99/0.93  --time_out_virtual                      -1.
% 0.99/0.93  --symbol_type_check                     false
% 0.99/0.93  --clausify_out                          false
% 0.99/0.93  --sig_cnt_out                           false
% 0.99/0.93  --trig_cnt_out                          false
% 0.99/0.93  --trig_cnt_out_tolerance                1.
% 0.99/0.93  --trig_cnt_out_sk_spl                   false
% 0.99/0.93  --abstr_cl_out                          false
% 0.99/0.93  
% 0.99/0.93  ------ Global Options
% 0.99/0.93  
% 0.99/0.93  --schedule                              default
% 0.99/0.93  --add_important_lit                     false
% 0.99/0.93  --prop_solver_per_cl                    1000
% 0.99/0.93  --min_unsat_core                        false
% 0.99/0.93  --soft_assumptions                      false
% 0.99/0.93  --soft_lemma_size                       3
% 0.99/0.93  --prop_impl_unit_size                   0
% 0.99/0.93  --prop_impl_unit                        []
% 0.99/0.93  --share_sel_clauses                     true
% 0.99/0.93  --reset_solvers                         false
% 0.99/0.93  --bc_imp_inh                            [conj_cone]
% 0.99/0.93  --conj_cone_tolerance                   3.
% 0.99/0.93  --extra_neg_conj                        none
% 0.99/0.93  --large_theory_mode                     true
% 0.99/0.93  --prolific_symb_bound                   200
% 0.99/0.93  --lt_threshold                          2000
% 0.99/0.93  --clause_weak_htbl                      true
% 0.99/0.93  --gc_record_bc_elim                     false
% 0.99/0.93  
% 0.99/0.93  ------ Preprocessing Options
% 0.99/0.93  
% 0.99/0.93  --preprocessing_flag                    true
% 0.99/0.93  --time_out_prep_mult                    0.1
% 0.99/0.93  --splitting_mode                        input
% 0.99/0.93  --splitting_grd                         true
% 0.99/0.93  --splitting_cvd                         false
% 0.99/0.93  --splitting_cvd_svl                     false
% 0.99/0.93  --splitting_nvd                         32
% 0.99/0.93  --sub_typing                            true
% 0.99/0.93  --prep_gs_sim                           true
% 0.99/0.93  --prep_unflatten                        true
% 0.99/0.93  --prep_res_sim                          true
% 0.99/0.93  --prep_upred                            true
% 0.99/0.93  --prep_sem_filter                       exhaustive
% 0.99/0.93  --prep_sem_filter_out                   false
% 0.99/0.93  --pred_elim                             true
% 0.99/0.93  --res_sim_input                         true
% 0.99/0.93  --eq_ax_congr_red                       true
% 0.99/0.93  --pure_diseq_elim                       true
% 0.99/0.93  --brand_transform                       false
% 0.99/0.93  --non_eq_to_eq                          false
% 0.99/0.93  --prep_def_merge                        true
% 0.99/0.93  --prep_def_merge_prop_impl              false
% 0.99/0.93  --prep_def_merge_mbd                    true
% 0.99/0.93  --prep_def_merge_tr_red                 false
% 0.99/0.93  --prep_def_merge_tr_cl                  false
% 0.99/0.93  --smt_preprocessing                     true
% 0.99/0.93  --smt_ac_axioms                         fast
% 0.99/0.93  --preprocessed_out                      false
% 0.99/0.93  --preprocessed_stats                    false
% 0.99/0.93  
% 0.99/0.93  ------ Abstraction refinement Options
% 0.99/0.93  
% 0.99/0.93  --abstr_ref                             []
% 0.99/0.93  --abstr_ref_prep                        false
% 0.99/0.93  --abstr_ref_until_sat                   false
% 0.99/0.93  --abstr_ref_sig_restrict                funpre
% 0.99/0.93  --abstr_ref_af_restrict_to_split_sk     false
% 0.99/0.93  --abstr_ref_under                       []
% 0.99/0.93  
% 0.99/0.93  ------ SAT Options
% 0.99/0.93  
% 0.99/0.93  --sat_mode                              false
% 0.99/0.93  --sat_fm_restart_options                ""
% 0.99/0.93  --sat_gr_def                            false
% 0.99/0.93  --sat_epr_types                         true
% 0.99/0.93  --sat_non_cyclic_types                  false
% 0.99/0.93  --sat_finite_models                     false
% 0.99/0.93  --sat_fm_lemmas                         false
% 0.99/0.93  --sat_fm_prep                           false
% 0.99/0.93  --sat_fm_uc_incr                        true
% 0.99/0.93  --sat_out_model                         small
% 0.99/0.93  --sat_out_clauses                       false
% 0.99/0.93  
% 0.99/0.93  ------ QBF Options
% 0.99/0.93  
% 0.99/0.93  --qbf_mode                              false
% 0.99/0.93  --qbf_elim_univ                         false
% 0.99/0.93  --qbf_dom_inst                          none
% 0.99/0.93  --qbf_dom_pre_inst                      false
% 0.99/0.93  --qbf_sk_in                             false
% 0.99/0.93  --qbf_pred_elim                         true
% 0.99/0.93  --qbf_split                             512
% 0.99/0.93  
% 0.99/0.93  ------ BMC1 Options
% 0.99/0.93  
% 0.99/0.93  --bmc1_incremental                      false
% 0.99/0.93  --bmc1_axioms                           reachable_all
% 0.99/0.93  --bmc1_min_bound                        0
% 0.99/0.93  --bmc1_max_bound                        -1
% 0.99/0.93  --bmc1_max_bound_default                -1
% 0.99/0.93  --bmc1_symbol_reachability              true
% 0.99/0.93  --bmc1_property_lemmas                  false
% 0.99/0.93  --bmc1_k_induction                      false
% 0.99/0.93  --bmc1_non_equiv_states                 false
% 0.99/0.93  --bmc1_deadlock                         false
% 0.99/0.93  --bmc1_ucm                              false
% 0.99/0.93  --bmc1_add_unsat_core                   none
% 0.99/0.93  --bmc1_unsat_core_children              false
% 0.99/0.93  --bmc1_unsat_core_extrapolate_axioms    false
% 0.99/0.93  --bmc1_out_stat                         full
% 0.99/0.93  --bmc1_ground_init                      false
% 0.99/0.93  --bmc1_pre_inst_next_state              false
% 0.99/0.93  --bmc1_pre_inst_state                   false
% 0.99/0.93  --bmc1_pre_inst_reach_state             false
% 0.99/0.93  --bmc1_out_unsat_core                   false
% 0.99/0.93  --bmc1_aig_witness_out                  false
% 0.99/0.93  --bmc1_verbose                          false
% 0.99/0.93  --bmc1_dump_clauses_tptp                false
% 0.99/0.93  --bmc1_dump_unsat_core_tptp             false
% 0.99/0.93  --bmc1_dump_file                        -
% 0.99/0.93  --bmc1_ucm_expand_uc_limit              128
% 0.99/0.93  --bmc1_ucm_n_expand_iterations          6
% 0.99/0.93  --bmc1_ucm_extend_mode                  1
% 0.99/0.93  --bmc1_ucm_init_mode                    2
% 0.99/0.93  --bmc1_ucm_cone_mode                    none
% 0.99/0.93  --bmc1_ucm_reduced_relation_type        0
% 0.99/0.93  --bmc1_ucm_relax_model                  4
% 0.99/0.93  --bmc1_ucm_full_tr_after_sat            true
% 0.99/0.93  --bmc1_ucm_expand_neg_assumptions       false
% 0.99/0.93  --bmc1_ucm_layered_model                none
% 0.99/0.93  --bmc1_ucm_max_lemma_size               10
% 0.99/0.93  
% 0.99/0.93  ------ AIG Options
% 0.99/0.93  
% 0.99/0.93  --aig_mode                              false
% 0.99/0.93  
% 0.99/0.93  ------ Instantiation Options
% 0.99/0.93  
% 0.99/0.93  --instantiation_flag                    true
% 0.99/0.93  --inst_sos_flag                         false
% 0.99/0.93  --inst_sos_phase                        true
% 0.99/0.93  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.99/0.93  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.99/0.93  --inst_lit_sel_side                     none
% 0.99/0.93  --inst_solver_per_active                1400
% 0.99/0.93  --inst_solver_calls_frac                1.
% 0.99/0.93  --inst_passive_queue_type               priority_queues
% 0.99/0.93  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.99/0.93  --inst_passive_queues_freq              [25;2]
% 0.99/0.93  --inst_dismatching                      true
% 0.99/0.93  --inst_eager_unprocessed_to_passive     true
% 0.99/0.93  --inst_prop_sim_given                   true
% 0.99/0.93  --inst_prop_sim_new                     false
% 0.99/0.93  --inst_subs_new                         false
% 0.99/0.93  --inst_eq_res_simp                      false
% 0.99/0.93  --inst_subs_given                       false
% 0.99/0.93  --inst_orphan_elimination               true
% 0.99/0.93  --inst_learning_loop_flag               true
% 0.99/0.93  --inst_learning_start                   3000
% 0.99/0.93  --inst_learning_factor                  2
% 0.99/0.93  --inst_start_prop_sim_after_learn       3
% 0.99/0.93  --inst_sel_renew                        solver
% 0.99/0.93  --inst_lit_activity_flag                true
% 0.99/0.93  --inst_restr_to_given                   false
% 0.99/0.93  --inst_activity_threshold               500
% 0.99/0.93  --inst_out_proof                        true
% 0.99/0.93  
% 0.99/0.93  ------ Resolution Options
% 0.99/0.93  
% 0.99/0.93  --resolution_flag                       false
% 0.99/0.93  --res_lit_sel                           adaptive
% 0.99/0.93  --res_lit_sel_side                      none
% 0.99/0.93  --res_ordering                          kbo
% 0.99/0.93  --res_to_prop_solver                    active
% 0.99/0.93  --res_prop_simpl_new                    false
% 0.99/0.93  --res_prop_simpl_given                  true
% 0.99/0.93  --res_passive_queue_type                priority_queues
% 0.99/0.93  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.99/0.93  --res_passive_queues_freq               [15;5]
% 0.99/0.93  --res_forward_subs                      full
% 0.99/0.93  --res_backward_subs                     full
% 0.99/0.93  --res_forward_subs_resolution           true
% 0.99/0.93  --res_backward_subs_resolution          true
% 0.99/0.93  --res_orphan_elimination                true
% 0.99/0.93  --res_time_limit                        2.
% 0.99/0.93  --res_out_proof                         true
% 0.99/0.93  
% 0.99/0.93  ------ Superposition Options
% 0.99/0.93  
% 0.99/0.93  --superposition_flag                    true
% 0.99/0.93  --sup_passive_queue_type                priority_queues
% 0.99/0.93  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.99/0.93  --sup_passive_queues_freq               [8;1;4]
% 0.99/0.93  --demod_completeness_check              fast
% 0.99/0.93  --demod_use_ground                      true
% 0.99/0.93  --sup_to_prop_solver                    passive
% 0.99/0.93  --sup_prop_simpl_new                    true
% 0.99/0.93  --sup_prop_simpl_given                  true
% 0.99/0.93  --sup_fun_splitting                     false
% 0.99/0.93  --sup_smt_interval                      50000
% 0.99/0.93  
% 0.99/0.93  ------ Superposition Simplification Setup
% 0.99/0.93  
% 0.99/0.93  --sup_indices_passive                   []
% 0.99/0.93  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.99/0.93  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.99/0.93  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.99/0.93  --sup_full_triv                         [TrivRules;PropSubs]
% 0.99/0.93  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.99/0.93  --sup_full_bw                           [BwDemod]
% 0.99/0.93  --sup_immed_triv                        [TrivRules]
% 0.99/0.93  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.99/0.93  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.99/0.93  --sup_immed_bw_main                     []
% 0.99/0.93  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.99/0.93  --sup_input_triv                        [Unflattening;TrivRules]
% 0.99/0.93  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.99/0.93  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.99/0.93  
% 0.99/0.93  ------ Combination Options
% 0.99/0.93  
% 0.99/0.93  --comb_res_mult                         3
% 0.99/0.93  --comb_sup_mult                         2
% 0.99/0.93  --comb_inst_mult                        10
% 0.99/0.93  
% 0.99/0.93  ------ Debug Options
% 0.99/0.93  
% 0.99/0.93  --dbg_backtrace                         false
% 0.99/0.93  --dbg_dump_prop_clauses                 false
% 0.99/0.93  --dbg_dump_prop_clauses_file            -
% 0.99/0.93  --dbg_out_stat                          false
% 0.99/0.93  
% 0.99/0.93  
% 0.99/0.93  
% 0.99/0.93  
% 0.99/0.93  ------ Proving...
% 0.99/0.93  
% 0.99/0.93  
% 0.99/0.93  % SZS status Theorem for theBenchmark.p
% 0.99/0.93  
% 0.99/0.93   Resolution empty clause
% 0.99/0.93  
% 0.99/0.93  % SZS output start CNFRefutation for theBenchmark.p
% 0.99/0.93  
% 0.99/0.93  fof(f7,axiom,(
% 0.99/0.93    ! [X0] : (v1_relat_1(X0) => r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))))),
% 0.99/0.93    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.99/0.93  
% 0.99/0.93  fof(f12,plain,(
% 0.99/0.93    ! [X0] : (r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) | ~v1_relat_1(X0))),
% 0.99/0.93    inference(ennf_transformation,[],[f7])).
% 0.99/0.93  
% 0.99/0.93  fof(f27,plain,(
% 0.99/0.93    ( ! [X0] : (r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) | ~v1_relat_1(X0)) )),
% 0.99/0.93    inference(cnf_transformation,[],[f12])).
% 0.99/0.93  
% 0.99/0.93  fof(f1,axiom,(
% 0.99/0.93    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 0.99/0.93    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.99/0.93  
% 0.99/0.93  fof(f10,plain,(
% 0.99/0.93    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 0.99/0.93    inference(ennf_transformation,[],[f1])).
% 0.99/0.93  
% 0.99/0.93  fof(f18,plain,(
% 0.99/0.93    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 0.99/0.93    inference(cnf_transformation,[],[f10])).
% 0.99/0.93  
% 0.99/0.93  fof(f3,axiom,(
% 0.99/0.93    ! [X0] : (~v1_xboole_0(X0) => ! [X1,X2,X3] : ((r1_tarski(k2_zfmisc_1(X1,X0),k2_zfmisc_1(X3,X2)) | r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(X2,X3))) => r1_tarski(X1,X3)))),
% 0.99/0.93    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.99/0.93  
% 0.99/0.93  fof(f11,plain,(
% 0.99/0.93    ! [X0] : (! [X1,X2,X3] : (r1_tarski(X1,X3) | (~r1_tarski(k2_zfmisc_1(X1,X0),k2_zfmisc_1(X3,X2)) & ~r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(X2,X3)))) | v1_xboole_0(X0))),
% 0.99/0.93    inference(ennf_transformation,[],[f3])).
% 0.99/0.93  
% 0.99/0.93  fof(f23,plain,(
% 0.99/0.93    ( ! [X2,X0,X3,X1] : (r1_tarski(X1,X3) | ~r1_tarski(k2_zfmisc_1(X1,X0),k2_zfmisc_1(X3,X2)) | v1_xboole_0(X0)) )),
% 0.99/0.93    inference(cnf_transformation,[],[f11])).
% 0.99/0.93  
% 0.99/0.93  fof(f4,axiom,(
% 0.99/0.93    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 0.99/0.93    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.99/0.93  
% 0.99/0.93  fof(f24,plain,(
% 0.99/0.93    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 0.99/0.93    inference(cnf_transformation,[],[f4])).
% 0.99/0.93  
% 0.99/0.93  fof(f5,axiom,(
% 0.99/0.93    ! [X0,X1] : r1_tarski(k1_relat_1(k2_zfmisc_1(X0,X1)),X0)),
% 0.99/0.93    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.99/0.93  
% 0.99/0.93  fof(f25,plain,(
% 0.99/0.93    ( ! [X0,X1] : (r1_tarski(k1_relat_1(k2_zfmisc_1(X0,X1)),X0)) )),
% 0.99/0.93    inference(cnf_transformation,[],[f5])).
% 0.99/0.93  
% 0.99/0.93  fof(f2,axiom,(
% 0.99/0.93    ! [X0,X1] : (X0 = X1 <=> (r1_tarski(X1,X0) & r1_tarski(X0,X1)))),
% 0.99/0.93    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.99/0.93  
% 0.99/0.93  fof(f14,plain,(
% 0.99/0.93    ! [X0,X1] : ((X0 = X1 | (~r1_tarski(X1,X0) | ~r1_tarski(X0,X1))) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.99/0.93    inference(nnf_transformation,[],[f2])).
% 0.99/0.93  
% 0.99/0.93  fof(f15,plain,(
% 0.99/0.93    ! [X0,X1] : ((X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) & ((r1_tarski(X1,X0) & r1_tarski(X0,X1)) | X0 != X1))),
% 0.99/0.93    inference(flattening,[],[f14])).
% 0.99/0.93  
% 0.99/0.93  fof(f21,plain,(
% 0.99/0.93    ( ! [X0,X1] : (X0 = X1 | ~r1_tarski(X1,X0) | ~r1_tarski(X0,X1)) )),
% 0.99/0.93    inference(cnf_transformation,[],[f15])).
% 0.99/0.93  
% 0.99/0.93  fof(f22,plain,(
% 0.99/0.93    ( ! [X2,X0,X3,X1] : (r1_tarski(X1,X3) | ~r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(X2,X3)) | v1_xboole_0(X0)) )),
% 0.99/0.93    inference(cnf_transformation,[],[f11])).
% 0.99/0.93  
% 0.99/0.93  fof(f6,axiom,(
% 0.99/0.93    ! [X0,X1] : r1_tarski(k2_relat_1(k2_zfmisc_1(X0,X1)),X1)),
% 0.99/0.93    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.99/0.93  
% 0.99/0.93  fof(f26,plain,(
% 0.99/0.93    ( ! [X0,X1] : (r1_tarski(k2_relat_1(k2_zfmisc_1(X0,X1)),X1)) )),
% 0.99/0.93    inference(cnf_transformation,[],[f6])).
% 0.99/0.93  
% 0.99/0.93  fof(f8,conjecture,(
% 0.99/0.93    ! [X0,X1] : ~(~(k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0) & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 0.99/0.93    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 0.99/0.93  
% 0.99/0.93  fof(f9,negated_conjecture,(
% 0.99/0.93    ~! [X0,X1] : ~(~(k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0) & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 0.99/0.93    inference(negated_conjecture,[],[f8])).
% 0.99/0.93  
% 0.99/0.93  fof(f13,plain,(
% 0.99/0.93    ? [X0,X1] : ((k2_relat_1(k2_zfmisc_1(X0,X1)) != X1 | k1_relat_1(k2_zfmisc_1(X0,X1)) != X0) & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 0.99/0.93    inference(ennf_transformation,[],[f9])).
% 0.99/0.93  
% 0.99/0.93  fof(f16,plain,(
% 0.99/0.93    ? [X0,X1] : ((k2_relat_1(k2_zfmisc_1(X0,X1)) != X1 | k1_relat_1(k2_zfmisc_1(X0,X1)) != X0) & k1_xboole_0 != X1 & k1_xboole_0 != X0) => ((k2_relat_1(k2_zfmisc_1(sK0,sK1)) != sK1 | k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0) & k1_xboole_0 != sK1 & k1_xboole_0 != sK0)),
% 0.99/0.93    introduced(choice_axiom,[])).
% 0.99/0.93  
% 0.99/0.93  fof(f17,plain,(
% 0.99/0.93    (k2_relat_1(k2_zfmisc_1(sK0,sK1)) != sK1 | k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0) & k1_xboole_0 != sK1 & k1_xboole_0 != sK0),
% 0.99/0.93    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f13,f16])).
% 0.99/0.93  
% 0.99/0.93  fof(f30,plain,(
% 0.99/0.93    k2_relat_1(k2_zfmisc_1(sK0,sK1)) != sK1 | k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0),
% 0.99/0.93    inference(cnf_transformation,[],[f17])).
% 0.99/0.93  
% 0.99/0.93  fof(f28,plain,(
% 0.99/0.93    k1_xboole_0 != sK0),
% 0.99/0.93    inference(cnf_transformation,[],[f17])).
% 0.99/0.93  
% 0.99/0.93  fof(f29,plain,(
% 0.99/0.93    k1_xboole_0 != sK1),
% 0.99/0.93    inference(cnf_transformation,[],[f17])).
% 0.99/0.93  
% 0.99/0.93  cnf(c_9,plain,
% 0.99/0.93      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0)))
% 0.99/0.93      | ~ v1_relat_1(X0) ),
% 0.99/0.93      inference(cnf_transformation,[],[f27]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_381,plain,
% 0.99/0.93      ( r1_tarski(X0,k2_zfmisc_1(k1_relat_1(X0),k2_relat_1(X0))) = iProver_top
% 0.99/0.93      | v1_relat_1(X0) != iProver_top ),
% 0.99/0.93      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_0,plain,
% 0.99/0.93      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 0.99/0.93      inference(cnf_transformation,[],[f18]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_4,plain,
% 0.99/0.93      ( r1_tarski(X0,X1)
% 0.99/0.93      | ~ r1_tarski(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3))
% 0.99/0.93      | v1_xboole_0(X2) ),
% 0.99/0.93      inference(cnf_transformation,[],[f23]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_138,plain,
% 0.99/0.93      ( r1_tarski(X0,X1)
% 0.99/0.93      | ~ r1_tarski(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3))
% 0.99/0.93      | X2 != X4
% 0.99/0.93      | k1_xboole_0 = X4 ),
% 0.99/0.93      inference(resolution_lifted,[status(thm)],[c_0,c_4]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_139,plain,
% 0.99/0.93      ( r1_tarski(X0,X1)
% 0.99/0.93      | ~ r1_tarski(k2_zfmisc_1(X0,X2),k2_zfmisc_1(X1,X3))
% 0.99/0.93      | k1_xboole_0 = X2 ),
% 0.99/0.93      inference(unflattening,[status(thm)],[c_138]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_379,plain,
% 0.99/0.93      ( k1_xboole_0 = X0
% 0.99/0.93      | r1_tarski(X1,X2) = iProver_top
% 0.99/0.93      | r1_tarski(k2_zfmisc_1(X1,X0),k2_zfmisc_1(X2,X3)) != iProver_top ),
% 0.99/0.93      inference(predicate_to_equality,[status(thm)],[c_139]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_791,plain,
% 0.99/0.93      ( k1_xboole_0 = X0
% 0.99/0.93      | r1_tarski(X1,k1_relat_1(k2_zfmisc_1(X1,X0))) = iProver_top
% 0.99/0.93      | v1_relat_1(k2_zfmisc_1(X1,X0)) != iProver_top ),
% 0.99/0.93      inference(superposition,[status(thm)],[c_381,c_379]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_6,plain,
% 0.99/0.93      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 0.99/0.93      inference(cnf_transformation,[],[f24]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_384,plain,
% 0.99/0.93      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 0.99/0.93      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1016,plain,
% 0.99/0.93      ( k1_xboole_0 = X0
% 0.99/0.93      | r1_tarski(X1,k1_relat_1(k2_zfmisc_1(X1,X0))) = iProver_top ),
% 0.99/0.93      inference(forward_subsumption_resolution,[status(thm)],[c_791,c_384]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_7,plain,
% 0.99/0.93      ( r1_tarski(k1_relat_1(k2_zfmisc_1(X0,X1)),X0) ),
% 0.99/0.93      inference(cnf_transformation,[],[f25]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_383,plain,
% 0.99/0.93      ( r1_tarski(k1_relat_1(k2_zfmisc_1(X0,X1)),X0) = iProver_top ),
% 0.99/0.93      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1,plain,
% 0.99/0.93      ( ~ r1_tarski(X0,X1) | ~ r1_tarski(X1,X0) | X0 = X1 ),
% 0.99/0.93      inference(cnf_transformation,[],[f21]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_386,plain,
% 0.99/0.93      ( X0 = X1
% 0.99/0.93      | r1_tarski(X0,X1) != iProver_top
% 0.99/0.93      | r1_tarski(X1,X0) != iProver_top ),
% 0.99/0.93      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_808,plain,
% 0.99/0.93      ( k1_relat_1(k2_zfmisc_1(X0,X1)) = X0
% 0.99/0.93      | r1_tarski(X0,k1_relat_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 0.99/0.93      inference(superposition,[status(thm)],[c_383,c_386]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1021,plain,
% 0.99/0.93      ( k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 | k1_xboole_0 = X1 ),
% 0.99/0.93      inference(superposition,[status(thm)],[c_1016,c_808]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_5,plain,
% 0.99/0.93      ( r1_tarski(X0,X1)
% 0.99/0.93      | ~ r1_tarski(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X3,X1))
% 0.99/0.93      | v1_xboole_0(X2) ),
% 0.99/0.93      inference(cnf_transformation,[],[f22]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_125,plain,
% 0.99/0.93      ( r1_tarski(X0,X1)
% 0.99/0.93      | ~ r1_tarski(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X3,X1))
% 0.99/0.93      | X2 != X4
% 0.99/0.93      | k1_xboole_0 = X4 ),
% 0.99/0.93      inference(resolution_lifted,[status(thm)],[c_0,c_5]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_126,plain,
% 0.99/0.93      ( r1_tarski(X0,X1)
% 0.99/0.93      | ~ r1_tarski(k2_zfmisc_1(X2,X0),k2_zfmisc_1(X3,X1))
% 0.99/0.93      | k1_xboole_0 = X2 ),
% 0.99/0.93      inference(unflattening,[status(thm)],[c_125]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_380,plain,
% 0.99/0.93      ( k1_xboole_0 = X0
% 0.99/0.93      | r1_tarski(X1,X2) = iProver_top
% 0.99/0.93      | r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(X3,X2)) != iProver_top ),
% 0.99/0.93      inference(predicate_to_equality,[status(thm)],[c_126]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1097,plain,
% 0.99/0.93      ( k1_xboole_0 = X0
% 0.99/0.93      | r1_tarski(X1,k2_relat_1(k2_zfmisc_1(X0,X1))) = iProver_top
% 0.99/0.93      | v1_relat_1(k2_zfmisc_1(X0,X1)) != iProver_top ),
% 0.99/0.93      inference(superposition,[status(thm)],[c_381,c_380]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_22,plain,
% 0.99/0.93      ( v1_relat_1(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 0.99/0.93      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1184,plain,
% 0.99/0.93      ( r1_tarski(X1,k2_relat_1(k2_zfmisc_1(X0,X1))) = iProver_top
% 0.99/0.93      | k1_xboole_0 = X0 ),
% 0.99/0.93      inference(global_propositional_subsumption,[status(thm)],[c_1097,c_22]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1185,plain,
% 0.99/0.93      ( k1_xboole_0 = X0
% 0.99/0.93      | r1_tarski(X1,k2_relat_1(k2_zfmisc_1(X0,X1))) = iProver_top ),
% 0.99/0.93      inference(renaming,[status(thm)],[c_1184]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_8,plain,
% 0.99/0.93      ( r1_tarski(k2_relat_1(k2_zfmisc_1(X0,X1)),X1) ),
% 0.99/0.93      inference(cnf_transformation,[],[f26]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_382,plain,
% 0.99/0.93      ( r1_tarski(k2_relat_1(k2_zfmisc_1(X0,X1)),X1) = iProver_top ),
% 0.99/0.93      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_809,plain,
% 0.99/0.93      ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
% 0.99/0.93      | r1_tarski(X1,k2_relat_1(k2_zfmisc_1(X0,X1))) != iProver_top ),
% 0.99/0.93      inference(superposition,[status(thm)],[c_382,c_386]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1193,plain,
% 0.99/0.93      ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 | k1_xboole_0 = X0 ),
% 0.99/0.93      inference(superposition,[status(thm)],[c_1185,c_809]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_10,negated_conjecture,
% 0.99/0.93      ( k2_relat_1(k2_zfmisc_1(sK0,sK1)) != sK1
% 0.99/0.93      | k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0 ),
% 0.99/0.93      inference(cnf_transformation,[],[f30]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1206,plain,
% 0.99/0.93      ( k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0 | sK0 = k1_xboole_0 ),
% 0.99/0.93      inference(superposition,[status(thm)],[c_1193,c_10]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_12,negated_conjecture,
% 0.99/0.93      ( k1_xboole_0 != sK0 ),
% 0.99/0.93      inference(cnf_transformation,[],[f28]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_448,plain,
% 0.99/0.93      ( ~ r1_tarski(k2_relat_1(k2_zfmisc_1(sK0,sK1)),sK1)
% 0.99/0.93      | ~ r1_tarski(sK1,k2_relat_1(k2_zfmisc_1(sK0,sK1)))
% 0.99/0.93      | k2_relat_1(k2_zfmisc_1(sK0,sK1)) = sK1 ),
% 0.99/0.93      inference(instantiation,[status(thm)],[c_1]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_476,plain,
% 0.99/0.93      ( r1_tarski(k2_relat_1(k2_zfmisc_1(sK0,sK1)),sK1) ),
% 0.99/0.93      inference(instantiation,[status(thm)],[c_8]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_549,plain,
% 0.99/0.93      ( ~ r1_tarski(k2_zfmisc_1(X0,sK1),k2_zfmisc_1(X1,k2_relat_1(k2_zfmisc_1(sK0,sK1))))
% 0.99/0.93      | r1_tarski(sK1,k2_relat_1(k2_zfmisc_1(sK0,sK1)))
% 0.99/0.93      | k1_xboole_0 = X0 ),
% 0.99/0.93      inference(instantiation,[status(thm)],[c_126]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_762,plain,
% 0.99/0.93      ( ~ r1_tarski(k2_zfmisc_1(sK0,sK1),k2_zfmisc_1(k1_relat_1(k2_zfmisc_1(sK0,sK1)),k2_relat_1(k2_zfmisc_1(sK0,sK1))))
% 0.99/0.93      | r1_tarski(sK1,k2_relat_1(k2_zfmisc_1(sK0,sK1)))
% 0.99/0.93      | k1_xboole_0 = sK0 ),
% 0.99/0.93      inference(instantiation,[status(thm)],[c_549]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_443,plain,
% 0.99/0.93      ( r1_tarski(k2_zfmisc_1(X0,X1),k2_zfmisc_1(k1_relat_1(k2_zfmisc_1(X0,X1)),k2_relat_1(k2_zfmisc_1(X0,X1))))
% 0.99/0.93      | ~ v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 0.99/0.93      inference(instantiation,[status(thm)],[c_9]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_763,plain,
% 0.99/0.93      ( r1_tarski(k2_zfmisc_1(sK0,sK1),k2_zfmisc_1(k1_relat_1(k2_zfmisc_1(sK0,sK1)),k2_relat_1(k2_zfmisc_1(sK0,sK1))))
% 0.99/0.93      | ~ v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
% 0.99/0.93      inference(instantiation,[status(thm)],[c_443]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1179,plain,
% 0.99/0.93      ( v1_relat_1(k2_zfmisc_1(sK0,sK1)) ),
% 0.99/0.93      inference(instantiation,[status(thm)],[c_6]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1296,plain,
% 0.99/0.93      ( k1_relat_1(k2_zfmisc_1(sK0,sK1)) != sK0 ),
% 0.99/0.93      inference(global_propositional_subsumption,
% 0.99/0.93                [status(thm)],
% 0.99/0.93                [c_1206,c_12,c_10,c_448,c_476,c_762,c_763,c_1179]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1299,plain,
% 0.99/0.93      ( sK1 = k1_xboole_0 ),
% 0.99/0.93      inference(superposition,[status(thm)],[c_1021,c_1296]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_11,negated_conjecture,
% 0.99/0.93      ( k1_xboole_0 != sK1 ),
% 0.99/0.93      inference(cnf_transformation,[],[f29]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1303,plain,
% 0.99/0.93      ( k1_xboole_0 != k1_xboole_0 ),
% 0.99/0.93      inference(demodulation,[status(thm)],[c_1299,c_11]) ).
% 0.99/0.93  
% 0.99/0.93  cnf(c_1304,plain,
% 0.99/0.93      ( $false ),
% 0.99/0.93      inference(equality_resolution_simp,[status(thm)],[c_1303]) ).
% 0.99/0.93  
% 0.99/0.93  
% 0.99/0.93  % SZS output end CNFRefutation for theBenchmark.p
% 0.99/0.93  
% 0.99/0.93  ------                               Statistics
% 0.99/0.93  
% 0.99/0.93  ------ General
% 0.99/0.93  
% 0.99/0.93  abstr_ref_over_cycles:                  0
% 0.99/0.93  abstr_ref_under_cycles:                 0
% 0.99/0.93  gc_basic_clause_elim:                   0
% 0.99/0.93  forced_gc_time:                         0
% 0.99/0.93  parsing_time:                           0.007
% 0.99/0.93  unif_index_cands_time:                  0.
% 0.99/0.93  unif_index_add_time:                    0.
% 0.99/0.93  orderings_time:                         0.
% 0.99/0.93  out_proof_time:                         0.007
% 0.99/0.93  total_time:                             0.069
% 0.99/0.93  num_of_symbols:                         40
% 0.99/0.93  num_of_terms:                           1851
% 0.99/0.93  
% 0.99/0.93  ------ Preprocessing
% 0.99/0.93  
% 0.99/0.93  num_of_splits:                          0
% 0.99/0.93  num_of_split_atoms:                     0
% 0.99/0.93  num_of_reused_defs:                     0
% 0.99/0.93  num_eq_ax_congr_red:                    1
% 0.99/0.93  num_of_sem_filtered_clauses:            1
% 0.99/0.93  num_of_subtypes:                        0
% 0.99/0.93  monotx_restored_types:                  0
% 0.99/0.93  sat_num_of_epr_types:                   0
% 0.99/0.93  sat_num_of_non_cyclic_types:            0
% 0.99/0.93  sat_guarded_non_collapsed_types:        0
% 0.99/0.93  num_pure_diseq_elim:                    0
% 0.99/0.93  simp_replaced_by:                       0
% 0.99/0.93  res_preprocessed:                       60
% 0.99/0.93  prep_upred:                             0
% 0.99/0.93  prep_unflattend:                        4
% 0.99/0.93  smt_new_axioms:                         0
% 0.99/0.93  pred_elim_cands:                        2
% 0.99/0.93  pred_elim:                              1
% 0.99/0.93  pred_elim_cl:                           1
% 0.99/0.93  pred_elim_cycles:                       4
% 0.99/0.93  merged_defs:                            0
% 0.99/0.93  merged_defs_ncl:                        0
% 0.99/0.93  bin_hyper_res:                          0
% 0.99/0.93  prep_cycles:                            4
% 0.99/0.93  pred_elim_time:                         0.001
% 0.99/0.93  splitting_time:                         0.
% 0.99/0.93  sem_filter_time:                        0.
% 0.99/0.93  monotx_time:                            0.
% 0.99/0.93  subtype_inf_time:                       0.
% 0.99/0.93  
% 0.99/0.93  ------ Problem properties
% 0.99/0.93  
% 0.99/0.93  clauses:                                11
% 0.99/0.93  conjectures:                            3
% 0.99/0.93  epr:                                    4
% 0.99/0.93  horn:                                   9
% 0.99/0.93  ground:                                 3
% 0.99/0.93  unary:                                  6
% 0.99/0.93  binary:                                 2
% 0.99/0.93  lits:                                   19
% 0.99/0.93  lits_eq:                                7
% 0.99/0.93  fd_pure:                                0
% 0.99/0.93  fd_pseudo:                              0
% 0.99/0.93  fd_cond:                                2
% 0.99/0.93  fd_pseudo_cond:                         1
% 0.99/0.93  ac_symbols:                             0
% 0.99/0.93  
% 0.99/0.93  ------ Propositional Solver
% 0.99/0.93  
% 0.99/0.93  prop_solver_calls:                      27
% 0.99/0.93  prop_fast_solver_calls:                 283
% 0.99/0.93  smt_solver_calls:                       0
% 0.99/0.93  smt_fast_solver_calls:                  0
% 0.99/0.93  prop_num_of_clauses:                    494
% 0.99/0.93  prop_preprocess_simplified:             2013
% 0.99/0.93  prop_fo_subsumed:                       2
% 0.99/0.93  prop_solver_time:                       0.
% 0.99/0.93  smt_solver_time:                        0.
% 0.99/0.93  smt_fast_solver_time:                   0.
% 0.99/0.93  prop_fast_solver_time:                  0.
% 0.99/0.93  prop_unsat_core_time:                   0.
% 0.99/0.93  
% 0.99/0.93  ------ QBF
% 0.99/0.93  
% 0.99/0.93  qbf_q_res:                              0
% 0.99/0.93  qbf_num_tautologies:                    0
% 0.99/0.93  qbf_prep_cycles:                        0
% 0.99/0.93  
% 0.99/0.93  ------ BMC1
% 0.99/0.93  
% 0.99/0.93  bmc1_current_bound:                     -1
% 0.99/0.93  bmc1_last_solved_bound:                 -1
% 0.99/0.93  bmc1_unsat_core_size:                   -1
% 0.99/0.93  bmc1_unsat_core_parents_size:           -1
% 0.99/0.93  bmc1_merge_next_fun:                    0
% 0.99/0.93  bmc1_unsat_core_clauses_time:           0.
% 0.99/0.93  
% 0.99/0.93  ------ Instantiation
% 0.99/0.93  
% 0.99/0.93  inst_num_of_clauses:                    148
% 0.99/0.93  inst_num_in_passive:                    41
% 0.99/0.93  inst_num_in_active:                     96
% 0.99/0.93  inst_num_in_unprocessed:                11
% 0.99/0.93  inst_num_of_loops:                      100
% 0.99/0.93  inst_num_of_learning_restarts:          0
% 0.99/0.93  inst_num_moves_active_passive:          1
% 0.99/0.93  inst_lit_activity:                      0
% 0.99/0.93  inst_lit_activity_moves:                0
% 0.99/0.93  inst_num_tautologies:                   0
% 0.99/0.93  inst_num_prop_implied:                  0
% 0.99/0.93  inst_num_existing_simplified:           0
% 0.99/0.93  inst_num_eq_res_simplified:             0
% 0.99/0.93  inst_num_child_elim:                    0
% 0.99/0.93  inst_num_of_dismatching_blockings:      70
% 0.99/0.93  inst_num_of_non_proper_insts:           164
% 0.99/0.93  inst_num_of_duplicates:                 0
% 0.99/0.93  inst_inst_num_from_inst_to_res:         0
% 0.99/0.93  inst_dismatching_checking_time:         0.
% 0.99/0.93  
% 0.99/0.93  ------ Resolution
% 0.99/0.93  
% 0.99/0.93  res_num_of_clauses:                     0
% 0.99/0.93  res_num_in_passive:                     0
% 0.99/0.93  res_num_in_active:                      0
% 0.99/0.93  res_num_of_loops:                       64
% 0.99/0.93  res_forward_subset_subsumed:            18
% 0.99/0.93  res_backward_subset_subsumed:           0
% 0.99/0.93  res_forward_subsumed:                   0
% 0.99/0.93  res_backward_subsumed:                  0
% 0.99/0.93  res_forward_subsumption_resolution:     0
% 0.99/0.93  res_backward_subsumption_resolution:    0
% 0.99/0.93  res_clause_to_clause_subsumption:       95
% 0.99/0.93  res_orphan_elimination:                 0
% 0.99/0.93  res_tautology_del:                      6
% 0.99/0.93  res_num_eq_res_simplified:              0
% 0.99/0.93  res_num_sel_changes:                    0
% 0.99/0.93  res_moves_from_active_to_pass:          0
% 0.99/0.93  
% 0.99/0.93  ------ Superposition
% 0.99/0.93  
% 0.99/0.93  sup_time_total:                         0.
% 0.99/0.93  sup_time_generating:                    0.
% 0.99/0.93  sup_time_sim_full:                      0.
% 0.99/0.93  sup_time_sim_immed:                     0.
% 0.99/0.93  
% 0.99/0.93  sup_num_of_clauses:                     21
% 0.99/0.93  sup_num_in_active:                      16
% 0.99/0.93  sup_num_in_passive:                     5
% 0.99/0.93  sup_num_of_loops:                       19
% 0.99/0.93  sup_fw_superposition:                   9
% 0.99/0.93  sup_bw_superposition:                   15
% 0.99/0.93  sup_immediate_simplified:               5
% 0.99/0.93  sup_given_eliminated:                   0
% 0.99/0.93  comparisons_done:                       0
% 0.99/0.93  comparisons_avoided:                    2
% 0.99/0.93  
% 0.99/0.93  ------ Simplifications
% 0.99/0.93  
% 0.99/0.93  
% 0.99/0.93  sim_fw_subset_subsumed:                 4
% 0.99/0.93  sim_bw_subset_subsumed:                 0
% 0.99/0.93  sim_fw_subsumed:                        1
% 0.99/0.93  sim_bw_subsumed:                        0
% 0.99/0.93  sim_fw_subsumption_res:                 1
% 0.99/0.93  sim_bw_subsumption_res:                 0
% 0.99/0.93  sim_tautology_del:                      0
% 0.99/0.93  sim_eq_tautology_del:                   1
% 0.99/0.93  sim_eq_res_simp:                        0
% 0.99/0.93  sim_fw_demodulated:                     0
% 0.99/0.93  sim_bw_demodulated:                     3
% 0.99/0.93  sim_light_normalised:                   0
% 0.99/0.93  sim_joinable_taut:                      0
% 0.99/0.93  sim_joinable_simp:                      0
% 0.99/0.93  sim_ac_normalised:                      0
% 0.99/0.93  sim_smt_subsumption:                    0
% 0.99/0.93  
%------------------------------------------------------------------------------
