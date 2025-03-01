%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:36:05 EST 2020

% Result     : Theorem 2.15s
% Output     : CNFRefutation 2.15s
% Verified   : 
% Statistics : Number of formulae       :   56 (  88 expanded)
%              Number of clauses        :   28 (  30 expanded)
%              Number of leaves         :    9 (  20 expanded)
%              Depth                    :   10
%              Number of atoms          :  234 ( 493 expanded)
%              Number of equality atoms :   90 ( 173 expanded)
%              Maximal formula depth    :   11 (   5 average)
%              Maximal clause size      :   14 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k4_xboole_0(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ( ~ r2_hidden(X3,X1)
            & r2_hidden(X3,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f6,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f7,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(flattening,[],[f6])).

fof(f8,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ? [X3] :
            ( ( r2_hidden(X3,X1)
              | ~ r2_hidden(X3,X0)
              | ~ r2_hidden(X3,X2) )
            & ( ( ~ r2_hidden(X3,X1)
                & r2_hidden(X3,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( ~ r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f7])).

fof(f9,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( r2_hidden(X3,X1)
            | ~ r2_hidden(X3,X0)
            | ~ r2_hidden(X3,X2) )
          & ( ( ~ r2_hidden(X3,X1)
              & r2_hidden(X3,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( r2_hidden(sK0(X0,X1,X2),X1)
          | ~ r2_hidden(sK0(X0,X1,X2),X0)
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
            & r2_hidden(sK0(X0,X1,X2),X0) )
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f10,plain,(
    ! [X0,X1,X2] :
      ( ( k4_xboole_0(X0,X1) = X2
        | ( ( r2_hidden(sK0(X0,X1,X2),X1)
            | ~ r2_hidden(sK0(X0,X1,X2),X0)
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( ( ~ r2_hidden(sK0(X0,X1,X2),X1)
              & r2_hidden(sK0(X0,X1,X2),X0) )
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X4] :
            ( ( r2_hidden(X4,X2)
              | r2_hidden(X4,X1)
              | ~ r2_hidden(X4,X0) )
            & ( ( ~ r2_hidden(X4,X1)
                & r2_hidden(X4,X0) )
              | ~ r2_hidden(X4,X2) ) )
        | k4_xboole_0(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f8,f9])).

fof(f19,plain,(
    ! [X4,X2,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,X2)
      | k4_xboole_0(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f10])).

fof(f31,plain,(
    ! [X4,X0,X1] :
      ( ~ r2_hidden(X4,X1)
      | ~ r2_hidden(X4,k4_xboole_0(X0,X1)) ) ),
    inference(equality_resolution,[],[f19])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( k1_tarski(X0) = X1
    <=> ! [X2] :
          ( r2_hidden(X2,X1)
        <=> X0 = X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X2] :
            ( ( r2_hidden(X2,X1)
              | X0 != X2 )
            & ( X0 = X2
              | ~ r2_hidden(X2,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(nnf_transformation,[],[f2])).

fof(f12,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ? [X2] :
            ( ( X0 != X2
              | ~ r2_hidden(X2,X1) )
            & ( X0 = X2
              | r2_hidden(X2,X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(rectify,[],[f11])).

fof(f13,plain,(
    ! [X1,X0] :
      ( ? [X2] :
          ( ( X0 != X2
            | ~ r2_hidden(X2,X1) )
          & ( X0 = X2
            | r2_hidden(X2,X1) ) )
     => ( ( sK1(X0,X1) != X0
          | ~ r2_hidden(sK1(X0,X1),X1) )
        & ( sK1(X0,X1) = X0
          | r2_hidden(sK1(X0,X1),X1) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( k1_tarski(X0) = X1
        | ( ( sK1(X0,X1) != X0
            | ~ r2_hidden(sK1(X0,X1),X1) )
          & ( sK1(X0,X1) = X0
            | r2_hidden(sK1(X0,X1),X1) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X1)
              | X0 != X3 )
            & ( X0 = X3
              | ~ r2_hidden(X3,X1) ) )
        | k1_tarski(X0) != X1 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f12,f13])).

fof(f24,plain,(
    ! [X0,X3,X1] :
      ( X0 = X3
      | ~ r2_hidden(X3,X1)
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f35,plain,(
    ! [X0,X3] :
      ( X0 = X3
      | ~ r2_hidden(X3,k1_tarski(X0)) ) ),
    inference(equality_resolution,[],[f24])).

fof(f23,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X0,X1) = X2
      | r2_hidden(sK0(X0,X1,X2),X1)
      | ~ r2_hidden(sK0(X0,X1,X2),X0)
      | ~ r2_hidden(sK0(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f21,plain,(
    ! [X2,X0,X1] :
      ( k4_xboole_0(X0,X1) = X2
      | r2_hidden(sK0(X0,X1,X2),X0)
      | r2_hidden(sK0(X0,X1,X2),X2) ) ),
    inference(cnf_transformation,[],[f10])).

fof(f25,plain,(
    ! [X0,X3,X1] :
      ( r2_hidden(X3,X1)
      | X0 != X3
      | k1_tarski(X0) != X1 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f33,plain,(
    ! [X3,X1] :
      ( r2_hidden(X3,X1)
      | k1_tarski(X3) != X1 ) ),
    inference(equality_resolution,[],[f25])).

fof(f34,plain,(
    ! [X3] : r2_hidden(X3,k1_tarski(X3)) ),
    inference(equality_resolution,[],[f33])).

fof(f3,conjecture,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
    <=> ~ r2_hidden(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f4,negated_conjecture,(
    ~ ! [X0,X1] :
        ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
      <=> ~ r2_hidden(X0,X1) ) ),
    inference(negated_conjecture,[],[f3])).

fof(f5,plain,(
    ? [X0,X1] :
      ( k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)
    <~> ~ r2_hidden(X0,X1) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f15,plain,(
    ? [X0,X1] :
      ( ( r2_hidden(X0,X1)
        | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0) )
      & ( ~ r2_hidden(X0,X1)
        | k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) ) ) ),
    inference(nnf_transformation,[],[f5])).

fof(f16,plain,
    ( ? [X0,X1] :
        ( ( r2_hidden(X0,X1)
          | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0) )
        & ( ~ r2_hidden(X0,X1)
          | k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) ) )
   => ( ( r2_hidden(sK2,sK3)
        | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) )
      & ( ~ r2_hidden(sK2,sK3)
        | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f17,plain,
    ( ( r2_hidden(sK2,sK3)
      | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) )
    & ( ~ r2_hidden(sK2,sK3)
      | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f15,f16])).

fof(f29,plain,
    ( r2_hidden(sK2,sK3)
    | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) ),
    inference(cnf_transformation,[],[f17])).

fof(f28,plain,
    ( ~ r2_hidden(sK2,sK3)
    | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ),
    inference(cnf_transformation,[],[f17])).

cnf(c_4,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ r2_hidden(X0,k4_xboole_0(X2,X1)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_482,plain,
    ( ~ r2_hidden(sK2,k4_xboole_0(X0,sK3))
    | ~ r2_hidden(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_3499,plain,
    ( ~ r2_hidden(sK2,k4_xboole_0(k1_tarski(sK2),sK3))
    | ~ r2_hidden(sK2,sK3) ),
    inference(instantiation,[status(thm)],[c_482])).

cnf(c_168,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_1209,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X2,k1_tarski(X2))
    | X0 != X2
    | X1 != k1_tarski(X2) ),
    inference(instantiation,[status(thm)],[c_168])).

cnf(c_2140,plain,
    ( r2_hidden(X0,k4_xboole_0(k1_tarski(sK2),sK3))
    | ~ r2_hidden(sK2,k1_tarski(sK2))
    | X0 != sK2
    | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) ),
    inference(instantiation,[status(thm)],[c_1209])).

cnf(c_2142,plain,
    ( r2_hidden(sK2,k4_xboole_0(k1_tarski(sK2),sK3))
    | ~ r2_hidden(sK2,k1_tarski(sK2))
    | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2)
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_2140])).

cnf(c_9,plain,
    ( ~ r2_hidden(X0,k1_tarski(X1))
    | X0 = X1 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_2098,plain,
    ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),k1_tarski(X0))
    | sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) = X0 ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_2100,plain,
    ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),k1_tarski(sK2))
    | sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) = sK2 ),
    inference(instantiation,[status(thm)],[c_2098])).

cnf(c_166,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_1092,plain,
    ( sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) != X0
    | sK2 != X0
    | sK2 = sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) ),
    inference(instantiation,[status(thm)],[c_166])).

cnf(c_1093,plain,
    ( sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) != sK2
    | sK2 = sK0(k1_tarski(sK2),sK3,k1_tarski(sK2))
    | sK2 != sK2 ),
    inference(instantiation,[status(thm)],[c_1092])).

cnf(c_165,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_1064,plain,
    ( sK3 = sK3 ),
    inference(instantiation,[status(thm)],[c_165])).

cnf(c_535,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(sK2,X2)
    | X2 != X1
    | sK2 != X0 ),
    inference(instantiation,[status(thm)],[c_168])).

cnf(c_671,plain,
    ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),sK3)
    | r2_hidden(sK2,X0)
    | X0 != sK3
    | sK2 != sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) ),
    inference(instantiation,[status(thm)],[c_535])).

cnf(c_797,plain,
    ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),sK3)
    | r2_hidden(sK2,sK3)
    | sK3 != sK3
    | sK2 != sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) ),
    inference(instantiation,[status(thm)],[c_671])).

cnf(c_0,plain,
    ( ~ r2_hidden(sK0(X0,X1,X2),X0)
    | ~ r2_hidden(sK0(X0,X1,X2),X2)
    | r2_hidden(sK0(X0,X1,X2),X1)
    | k4_xboole_0(X0,X1) = X2 ),
    inference(cnf_transformation,[],[f23])).

cnf(c_464,plain,
    ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),k1_tarski(sK2))
    | r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),sK3)
    | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ),
    inference(instantiation,[status(thm)],[c_0])).

cnf(c_2,plain,
    ( r2_hidden(sK0(X0,X1,X2),X0)
    | r2_hidden(sK0(X0,X1,X2),X2)
    | k4_xboole_0(X0,X1) = X2 ),
    inference(cnf_transformation,[],[f21])).

cnf(c_466,plain,
    ( r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),k1_tarski(sK2))
    | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_8,plain,
    ( r2_hidden(X0,k1_tarski(X0)) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_18,plain,
    ( r2_hidden(sK2,k1_tarski(sK2)) ),
    inference(instantiation,[status(thm)],[c_8])).

cnf(c_15,plain,
    ( ~ r2_hidden(sK2,k1_tarski(sK2))
    | sK2 = sK2 ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_10,negated_conjecture,
    ( r2_hidden(sK2,sK3)
    | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_11,negated_conjecture,
    ( ~ r2_hidden(sK2,sK3)
    | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ),
    inference(cnf_transformation,[],[f28])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_3499,c_2142,c_2100,c_1093,c_1064,c_797,c_464,c_466,c_18,c_15,c_10,c_11])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 17:20:07 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.15/0.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.15/0.98  
% 2.15/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.15/0.98  
% 2.15/0.98  ------  iProver source info
% 2.15/0.98  
% 2.15/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.15/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.15/0.98  git: non_committed_changes: false
% 2.15/0.98  git: last_make_outside_of_git: false
% 2.15/0.98  
% 2.15/0.98  ------ 
% 2.15/0.98  
% 2.15/0.98  ------ Input Options
% 2.15/0.98  
% 2.15/0.98  --out_options                           all
% 2.15/0.98  --tptp_safe_out                         true
% 2.15/0.98  --problem_path                          ""
% 2.15/0.98  --include_path                          ""
% 2.15/0.98  --clausifier                            res/vclausify_rel
% 2.15/0.98  --clausifier_options                    ""
% 2.15/0.98  --stdin                                 false
% 2.15/0.98  --stats_out                             all
% 2.15/0.98  
% 2.15/0.98  ------ General Options
% 2.15/0.98  
% 2.15/0.98  --fof                                   false
% 2.15/0.98  --time_out_real                         305.
% 2.15/0.98  --time_out_virtual                      -1.
% 2.15/0.98  --symbol_type_check                     false
% 2.15/0.98  --clausify_out                          false
% 2.15/0.98  --sig_cnt_out                           false
% 2.15/0.98  --trig_cnt_out                          false
% 2.15/0.98  --trig_cnt_out_tolerance                1.
% 2.15/0.98  --trig_cnt_out_sk_spl                   false
% 2.15/0.98  --abstr_cl_out                          false
% 2.15/0.98  
% 2.15/0.98  ------ Global Options
% 2.15/0.98  
% 2.15/0.98  --schedule                              default
% 2.15/0.98  --add_important_lit                     false
% 2.15/0.98  --prop_solver_per_cl                    1000
% 2.15/0.98  --min_unsat_core                        false
% 2.15/0.98  --soft_assumptions                      false
% 2.15/0.98  --soft_lemma_size                       3
% 2.15/0.98  --prop_impl_unit_size                   0
% 2.15/0.98  --prop_impl_unit                        []
% 2.15/0.98  --share_sel_clauses                     true
% 2.15/0.98  --reset_solvers                         false
% 2.15/0.98  --bc_imp_inh                            [conj_cone]
% 2.15/0.98  --conj_cone_tolerance                   3.
% 2.15/0.98  --extra_neg_conj                        none
% 2.15/0.98  --large_theory_mode                     true
% 2.15/0.98  --prolific_symb_bound                   200
% 2.15/0.98  --lt_threshold                          2000
% 2.15/0.98  --clause_weak_htbl                      true
% 2.15/0.98  --gc_record_bc_elim                     false
% 2.15/0.98  
% 2.15/0.98  ------ Preprocessing Options
% 2.15/0.98  
% 2.15/0.98  --preprocessing_flag                    true
% 2.15/0.98  --time_out_prep_mult                    0.1
% 2.15/0.98  --splitting_mode                        input
% 2.15/0.98  --splitting_grd                         true
% 2.15/0.98  --splitting_cvd                         false
% 2.15/0.98  --splitting_cvd_svl                     false
% 2.15/0.98  --splitting_nvd                         32
% 2.15/0.98  --sub_typing                            true
% 2.15/0.98  --prep_gs_sim                           true
% 2.15/0.98  --prep_unflatten                        true
% 2.15/0.98  --prep_res_sim                          true
% 2.15/0.98  --prep_upred                            true
% 2.15/0.98  --prep_sem_filter                       exhaustive
% 2.15/0.98  --prep_sem_filter_out                   false
% 2.15/0.98  --pred_elim                             true
% 2.15/0.98  --res_sim_input                         true
% 2.15/0.98  --eq_ax_congr_red                       true
% 2.15/0.98  --pure_diseq_elim                       true
% 2.15/0.98  --brand_transform                       false
% 2.15/0.98  --non_eq_to_eq                          false
% 2.15/0.98  --prep_def_merge                        true
% 2.15/0.98  --prep_def_merge_prop_impl              false
% 2.15/0.98  --prep_def_merge_mbd                    true
% 2.15/0.98  --prep_def_merge_tr_red                 false
% 2.15/0.98  --prep_def_merge_tr_cl                  false
% 2.15/0.98  --smt_preprocessing                     true
% 2.15/0.98  --smt_ac_axioms                         fast
% 2.15/0.98  --preprocessed_out                      false
% 2.15/0.98  --preprocessed_stats                    false
% 2.15/0.98  
% 2.15/0.98  ------ Abstraction refinement Options
% 2.15/0.98  
% 2.15/0.98  --abstr_ref                             []
% 2.15/0.98  --abstr_ref_prep                        false
% 2.15/0.98  --abstr_ref_until_sat                   false
% 2.15/0.98  --abstr_ref_sig_restrict                funpre
% 2.15/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.15/0.98  --abstr_ref_under                       []
% 2.15/0.98  
% 2.15/0.98  ------ SAT Options
% 2.15/0.98  
% 2.15/0.98  --sat_mode                              false
% 2.15/0.98  --sat_fm_restart_options                ""
% 2.15/0.98  --sat_gr_def                            false
% 2.15/0.98  --sat_epr_types                         true
% 2.15/0.98  --sat_non_cyclic_types                  false
% 2.15/0.98  --sat_finite_models                     false
% 2.15/0.98  --sat_fm_lemmas                         false
% 2.15/0.98  --sat_fm_prep                           false
% 2.15/0.98  --sat_fm_uc_incr                        true
% 2.15/0.98  --sat_out_model                         small
% 2.15/0.98  --sat_out_clauses                       false
% 2.15/0.98  
% 2.15/0.98  ------ QBF Options
% 2.15/0.98  
% 2.15/0.98  --qbf_mode                              false
% 2.15/0.98  --qbf_elim_univ                         false
% 2.15/0.98  --qbf_dom_inst                          none
% 2.15/0.98  --qbf_dom_pre_inst                      false
% 2.15/0.98  --qbf_sk_in                             false
% 2.15/0.98  --qbf_pred_elim                         true
% 2.15/0.98  --qbf_split                             512
% 2.15/0.98  
% 2.15/0.98  ------ BMC1 Options
% 2.15/0.98  
% 2.15/0.98  --bmc1_incremental                      false
% 2.15/0.98  --bmc1_axioms                           reachable_all
% 2.15/0.98  --bmc1_min_bound                        0
% 2.15/0.98  --bmc1_max_bound                        -1
% 2.15/0.98  --bmc1_max_bound_default                -1
% 2.15/0.98  --bmc1_symbol_reachability              true
% 2.15/0.98  --bmc1_property_lemmas                  false
% 2.15/0.98  --bmc1_k_induction                      false
% 2.15/0.98  --bmc1_non_equiv_states                 false
% 2.15/0.98  --bmc1_deadlock                         false
% 2.15/0.98  --bmc1_ucm                              false
% 2.15/0.98  --bmc1_add_unsat_core                   none
% 2.15/0.98  --bmc1_unsat_core_children              false
% 2.15/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.15/0.98  --bmc1_out_stat                         full
% 2.15/0.98  --bmc1_ground_init                      false
% 2.15/0.98  --bmc1_pre_inst_next_state              false
% 2.15/0.98  --bmc1_pre_inst_state                   false
% 2.15/0.98  --bmc1_pre_inst_reach_state             false
% 2.15/0.98  --bmc1_out_unsat_core                   false
% 2.15/0.98  --bmc1_aig_witness_out                  false
% 2.15/0.98  --bmc1_verbose                          false
% 2.15/0.98  --bmc1_dump_clauses_tptp                false
% 2.15/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.15/0.98  --bmc1_dump_file                        -
% 2.15/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.15/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.15/0.98  --bmc1_ucm_extend_mode                  1
% 2.15/0.98  --bmc1_ucm_init_mode                    2
% 2.15/0.98  --bmc1_ucm_cone_mode                    none
% 2.15/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.15/0.98  --bmc1_ucm_relax_model                  4
% 2.15/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.15/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.15/0.98  --bmc1_ucm_layered_model                none
% 2.15/0.98  --bmc1_ucm_max_lemma_size               10
% 2.15/0.98  
% 2.15/0.98  ------ AIG Options
% 2.15/0.98  
% 2.15/0.98  --aig_mode                              false
% 2.15/0.98  
% 2.15/0.98  ------ Instantiation Options
% 2.15/0.98  
% 2.15/0.98  --instantiation_flag                    true
% 2.15/0.98  --inst_sos_flag                         true
% 2.15/0.98  --inst_sos_phase                        true
% 2.15/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.15/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.15/0.98  --inst_lit_sel_side                     num_symb
% 2.15/0.98  --inst_solver_per_active                1400
% 2.15/0.98  --inst_solver_calls_frac                1.
% 2.15/0.98  --inst_passive_queue_type               priority_queues
% 2.15/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.15/0.98  --inst_passive_queues_freq              [25;2]
% 2.15/0.98  --inst_dismatching                      true
% 2.15/0.98  --inst_eager_unprocessed_to_passive     true
% 2.15/0.98  --inst_prop_sim_given                   true
% 2.15/0.98  --inst_prop_sim_new                     false
% 2.15/0.98  --inst_subs_new                         false
% 2.15/0.98  --inst_eq_res_simp                      false
% 2.15/0.98  --inst_subs_given                       false
% 2.15/0.98  --inst_orphan_elimination               true
% 2.15/0.98  --inst_learning_loop_flag               true
% 2.15/0.98  --inst_learning_start                   3000
% 2.15/0.98  --inst_learning_factor                  2
% 2.15/0.98  --inst_start_prop_sim_after_learn       3
% 2.15/0.98  --inst_sel_renew                        solver
% 2.15/0.98  --inst_lit_activity_flag                true
% 2.15/0.98  --inst_restr_to_given                   false
% 2.15/0.98  --inst_activity_threshold               500
% 2.15/0.98  --inst_out_proof                        true
% 2.15/0.98  
% 2.15/0.98  ------ Resolution Options
% 2.15/0.98  
% 2.15/0.98  --resolution_flag                       true
% 2.15/0.98  --res_lit_sel                           adaptive
% 2.15/0.98  --res_lit_sel_side                      none
% 2.15/0.98  --res_ordering                          kbo
% 2.15/0.98  --res_to_prop_solver                    active
% 2.15/0.98  --res_prop_simpl_new                    false
% 2.15/0.98  --res_prop_simpl_given                  true
% 2.15/0.98  --res_passive_queue_type                priority_queues
% 2.15/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.15/0.98  --res_passive_queues_freq               [15;5]
% 2.15/0.98  --res_forward_subs                      full
% 2.15/0.98  --res_backward_subs                     full
% 2.15/0.98  --res_forward_subs_resolution           true
% 2.15/0.98  --res_backward_subs_resolution          true
% 2.15/0.98  --res_orphan_elimination                true
% 2.15/0.98  --res_time_limit                        2.
% 2.15/0.98  --res_out_proof                         true
% 2.15/0.98  
% 2.15/0.98  ------ Superposition Options
% 2.15/0.98  
% 2.15/0.98  --superposition_flag                    true
% 2.15/0.98  --sup_passive_queue_type                priority_queues
% 2.15/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.15/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.15/0.98  --demod_completeness_check              fast
% 2.15/0.98  --demod_use_ground                      true
% 2.15/0.98  --sup_to_prop_solver                    passive
% 2.15/0.98  --sup_prop_simpl_new                    true
% 2.15/0.98  --sup_prop_simpl_given                  true
% 2.15/0.98  --sup_fun_splitting                     true
% 2.15/0.98  --sup_smt_interval                      50000
% 2.15/0.98  
% 2.15/0.98  ------ Superposition Simplification Setup
% 2.15/0.98  
% 2.15/0.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 2.15/0.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 2.15/0.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 2.15/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 2.15/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.15/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 2.15/0.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 2.15/0.98  --sup_immed_triv                        [TrivRules]
% 2.15/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.15/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 2.15/0.98  --sup_immed_bw_main                     []
% 2.15/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 2.15/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.15/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 2.15/0.98  --sup_input_bw                          []
% 2.15/0.98  
% 2.15/0.98  ------ Combination Options
% 2.15/0.98  
% 2.15/0.98  --comb_res_mult                         3
% 2.15/0.98  --comb_sup_mult                         2
% 2.15/0.98  --comb_inst_mult                        10
% 2.15/0.98  
% 2.15/0.98  ------ Debug Options
% 2.15/0.98  
% 2.15/0.98  --dbg_backtrace                         false
% 2.15/0.98  --dbg_dump_prop_clauses                 false
% 2.15/0.98  --dbg_dump_prop_clauses_file            -
% 2.15/0.98  --dbg_out_stat                          false
% 2.15/0.98  ------ Parsing...
% 2.15/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.15/0.98  
% 2.15/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.15/0.98  
% 2.15/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.15/0.98  
% 2.15/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.15/0.98  ------ Proving...
% 2.15/0.98  ------ Problem Properties 
% 2.15/0.98  
% 2.15/0.98  
% 2.15/0.98  clauses                                 12
% 2.15/0.98  conjectures                             2
% 2.15/0.98  EPR                                     0
% 2.15/0.98  Horn                                    7
% 2.15/0.98  unary                                   1
% 2.15/0.98  binary                                  5
% 2.15/0.98  lits                                    30
% 2.15/0.98  lits eq                                 10
% 2.15/0.98  fd_pure                                 0
% 2.15/0.98  fd_pseudo                               0
% 2.15/0.98  fd_cond                                 0
% 2.15/0.98  fd_pseudo_cond                          5
% 2.15/0.98  AC symbols                              0
% 2.15/0.98  
% 2.15/0.98  ------ Schedule dynamic 5 is on 
% 2.15/0.98  
% 2.15/0.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.15/0.98  
% 2.15/0.98  
% 2.15/0.98  ------ 
% 2.15/0.98  Current options:
% 2.15/0.98  ------ 
% 2.15/0.98  
% 2.15/0.98  ------ Input Options
% 2.15/0.98  
% 2.15/0.98  --out_options                           all
% 2.15/0.98  --tptp_safe_out                         true
% 2.15/0.98  --problem_path                          ""
% 2.15/0.98  --include_path                          ""
% 2.15/0.98  --clausifier                            res/vclausify_rel
% 2.15/0.98  --clausifier_options                    ""
% 2.15/0.98  --stdin                                 false
% 2.15/0.98  --stats_out                             all
% 2.15/0.98  
% 2.15/0.98  ------ General Options
% 2.15/0.98  
% 2.15/0.98  --fof                                   false
% 2.15/0.98  --time_out_real                         305.
% 2.15/0.98  --time_out_virtual                      -1.
% 2.15/0.98  --symbol_type_check                     false
% 2.15/0.98  --clausify_out                          false
% 2.15/0.98  --sig_cnt_out                           false
% 2.15/0.98  --trig_cnt_out                          false
% 2.15/0.98  --trig_cnt_out_tolerance                1.
% 2.15/0.98  --trig_cnt_out_sk_spl                   false
% 2.15/0.98  --abstr_cl_out                          false
% 2.15/0.98  
% 2.15/0.98  ------ Global Options
% 2.15/0.98  
% 2.15/0.98  --schedule                              default
% 2.15/0.98  --add_important_lit                     false
% 2.15/0.98  --prop_solver_per_cl                    1000
% 2.15/0.98  --min_unsat_core                        false
% 2.15/0.98  --soft_assumptions                      false
% 2.15/0.98  --soft_lemma_size                       3
% 2.15/0.98  --prop_impl_unit_size                   0
% 2.15/0.98  --prop_impl_unit                        []
% 2.15/0.98  --share_sel_clauses                     true
% 2.15/0.98  --reset_solvers                         false
% 2.15/0.98  --bc_imp_inh                            [conj_cone]
% 2.15/0.98  --conj_cone_tolerance                   3.
% 2.15/0.98  --extra_neg_conj                        none
% 2.15/0.98  --large_theory_mode                     true
% 2.15/0.98  --prolific_symb_bound                   200
% 2.15/0.98  --lt_threshold                          2000
% 2.15/0.98  --clause_weak_htbl                      true
% 2.15/0.98  --gc_record_bc_elim                     false
% 2.15/0.98  
% 2.15/0.98  ------ Preprocessing Options
% 2.15/0.98  
% 2.15/0.98  --preprocessing_flag                    true
% 2.15/0.98  --time_out_prep_mult                    0.1
% 2.15/0.98  --splitting_mode                        input
% 2.15/0.98  --splitting_grd                         true
% 2.15/0.98  --splitting_cvd                         false
% 2.15/0.98  --splitting_cvd_svl                     false
% 2.15/0.98  --splitting_nvd                         32
% 2.15/0.98  --sub_typing                            true
% 2.15/0.98  --prep_gs_sim                           true
% 2.15/0.98  --prep_unflatten                        true
% 2.15/0.98  --prep_res_sim                          true
% 2.15/0.98  --prep_upred                            true
% 2.15/0.98  --prep_sem_filter                       exhaustive
% 2.15/0.98  --prep_sem_filter_out                   false
% 2.15/0.98  --pred_elim                             true
% 2.15/0.98  --res_sim_input                         true
% 2.15/0.98  --eq_ax_congr_red                       true
% 2.15/0.98  --pure_diseq_elim                       true
% 2.15/0.98  --brand_transform                       false
% 2.15/0.98  --non_eq_to_eq                          false
% 2.15/0.98  --prep_def_merge                        true
% 2.15/0.98  --prep_def_merge_prop_impl              false
% 2.15/0.98  --prep_def_merge_mbd                    true
% 2.15/0.98  --prep_def_merge_tr_red                 false
% 2.15/0.98  --prep_def_merge_tr_cl                  false
% 2.15/0.98  --smt_preprocessing                     true
% 2.15/0.98  --smt_ac_axioms                         fast
% 2.15/0.98  --preprocessed_out                      false
% 2.15/0.98  --preprocessed_stats                    false
% 2.15/0.98  
% 2.15/0.98  ------ Abstraction refinement Options
% 2.15/0.98  
% 2.15/0.98  --abstr_ref                             []
% 2.15/0.98  --abstr_ref_prep                        false
% 2.15/0.98  --abstr_ref_until_sat                   false
% 2.15/0.98  --abstr_ref_sig_restrict                funpre
% 2.15/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.15/0.98  --abstr_ref_under                       []
% 2.15/0.98  
% 2.15/0.98  ------ SAT Options
% 2.15/0.98  
% 2.15/0.98  --sat_mode                              false
% 2.15/0.98  --sat_fm_restart_options                ""
% 2.15/0.98  --sat_gr_def                            false
% 2.15/0.98  --sat_epr_types                         true
% 2.15/0.98  --sat_non_cyclic_types                  false
% 2.15/0.98  --sat_finite_models                     false
% 2.15/0.99  --sat_fm_lemmas                         false
% 2.15/0.99  --sat_fm_prep                           false
% 2.15/0.99  --sat_fm_uc_incr                        true
% 2.15/0.99  --sat_out_model                         small
% 2.15/0.99  --sat_out_clauses                       false
% 2.15/0.99  
% 2.15/0.99  ------ QBF Options
% 2.15/0.99  
% 2.15/0.99  --qbf_mode                              false
% 2.15/0.99  --qbf_elim_univ                         false
% 2.15/0.99  --qbf_dom_inst                          none
% 2.15/0.99  --qbf_dom_pre_inst                      false
% 2.15/0.99  --qbf_sk_in                             false
% 2.15/0.99  --qbf_pred_elim                         true
% 2.15/0.99  --qbf_split                             512
% 2.15/0.99  
% 2.15/0.99  ------ BMC1 Options
% 2.15/0.99  
% 2.15/0.99  --bmc1_incremental                      false
% 2.15/0.99  --bmc1_axioms                           reachable_all
% 2.15/0.99  --bmc1_min_bound                        0
% 2.15/0.99  --bmc1_max_bound                        -1
% 2.15/0.99  --bmc1_max_bound_default                -1
% 2.15/0.99  --bmc1_symbol_reachability              true
% 2.15/0.99  --bmc1_property_lemmas                  false
% 2.15/0.99  --bmc1_k_induction                      false
% 2.15/0.99  --bmc1_non_equiv_states                 false
% 2.15/0.99  --bmc1_deadlock                         false
% 2.15/0.99  --bmc1_ucm                              false
% 2.15/0.99  --bmc1_add_unsat_core                   none
% 2.15/0.99  --bmc1_unsat_core_children              false
% 2.15/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.15/0.99  --bmc1_out_stat                         full
% 2.15/0.99  --bmc1_ground_init                      false
% 2.15/0.99  --bmc1_pre_inst_next_state              false
% 2.15/0.99  --bmc1_pre_inst_state                   false
% 2.15/0.99  --bmc1_pre_inst_reach_state             false
% 2.15/0.99  --bmc1_out_unsat_core                   false
% 2.15/0.99  --bmc1_aig_witness_out                  false
% 2.15/0.99  --bmc1_verbose                          false
% 2.15/0.99  --bmc1_dump_clauses_tptp                false
% 2.15/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.15/0.99  --bmc1_dump_file                        -
% 2.15/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.15/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.15/0.99  --bmc1_ucm_extend_mode                  1
% 2.15/0.99  --bmc1_ucm_init_mode                    2
% 2.15/0.99  --bmc1_ucm_cone_mode                    none
% 2.15/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.15/0.99  --bmc1_ucm_relax_model                  4
% 2.15/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.15/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.15/0.99  --bmc1_ucm_layered_model                none
% 2.15/0.99  --bmc1_ucm_max_lemma_size               10
% 2.15/0.99  
% 2.15/0.99  ------ AIG Options
% 2.15/0.99  
% 2.15/0.99  --aig_mode                              false
% 2.15/0.99  
% 2.15/0.99  ------ Instantiation Options
% 2.15/0.99  
% 2.15/0.99  --instantiation_flag                    true
% 2.15/0.99  --inst_sos_flag                         true
% 2.15/0.99  --inst_sos_phase                        true
% 2.15/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.15/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.15/0.99  --inst_lit_sel_side                     none
% 2.15/0.99  --inst_solver_per_active                1400
% 2.15/0.99  --inst_solver_calls_frac                1.
% 2.15/0.99  --inst_passive_queue_type               priority_queues
% 2.15/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.15/0.99  --inst_passive_queues_freq              [25;2]
% 2.15/0.99  --inst_dismatching                      true
% 2.15/0.99  --inst_eager_unprocessed_to_passive     true
% 2.15/0.99  --inst_prop_sim_given                   true
% 2.15/0.99  --inst_prop_sim_new                     false
% 2.15/0.99  --inst_subs_new                         false
% 2.15/0.99  --inst_eq_res_simp                      false
% 2.15/0.99  --inst_subs_given                       false
% 2.15/0.99  --inst_orphan_elimination               true
% 2.15/0.99  --inst_learning_loop_flag               true
% 2.15/0.99  --inst_learning_start                   3000
% 2.15/0.99  --inst_learning_factor                  2
% 2.15/0.99  --inst_start_prop_sim_after_learn       3
% 2.15/0.99  --inst_sel_renew                        solver
% 2.15/0.99  --inst_lit_activity_flag                true
% 2.15/0.99  --inst_restr_to_given                   false
% 2.15/0.99  --inst_activity_threshold               500
% 2.15/0.99  --inst_out_proof                        true
% 2.15/0.99  
% 2.15/0.99  ------ Resolution Options
% 2.15/0.99  
% 2.15/0.99  --resolution_flag                       false
% 2.15/0.99  --res_lit_sel                           adaptive
% 2.15/0.99  --res_lit_sel_side                      none
% 2.15/0.99  --res_ordering                          kbo
% 2.15/0.99  --res_to_prop_solver                    active
% 2.15/0.99  --res_prop_simpl_new                    false
% 2.15/0.99  --res_prop_simpl_given                  true
% 2.15/0.99  --res_passive_queue_type                priority_queues
% 2.15/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.15/0.99  --res_passive_queues_freq               [15;5]
% 2.15/0.99  --res_forward_subs                      full
% 2.15/0.99  --res_backward_subs                     full
% 2.15/0.99  --res_forward_subs_resolution           true
% 2.15/0.99  --res_backward_subs_resolution          true
% 2.15/0.99  --res_orphan_elimination                true
% 2.15/0.99  --res_time_limit                        2.
% 2.15/0.99  --res_out_proof                         true
% 2.15/0.99  
% 2.15/0.99  ------ Superposition Options
% 2.15/0.99  
% 2.15/0.99  --superposition_flag                    true
% 2.15/0.99  --sup_passive_queue_type                priority_queues
% 2.15/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.15/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.15/0.99  --demod_completeness_check              fast
% 2.15/0.99  --demod_use_ground                      true
% 2.15/0.99  --sup_to_prop_solver                    passive
% 2.15/0.99  --sup_prop_simpl_new                    true
% 2.15/0.99  --sup_prop_simpl_given                  true
% 2.15/0.99  --sup_fun_splitting                     true
% 2.15/0.99  --sup_smt_interval                      50000
% 2.15/0.99  
% 2.15/0.99  ------ Superposition Simplification Setup
% 2.15/0.99  
% 2.15/0.99  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 2.15/0.99  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 2.15/0.99  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 2.15/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 2.15/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.15/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 2.15/0.99  --sup_full_bw                           [BwDemod;BwSubsumption]
% 2.15/0.99  --sup_immed_triv                        [TrivRules]
% 2.15/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.15/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 2.15/0.99  --sup_immed_bw_main                     []
% 2.15/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 2.15/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.15/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 2.15/0.99  --sup_input_bw                          []
% 2.15/0.99  
% 2.15/0.99  ------ Combination Options
% 2.15/0.99  
% 2.15/0.99  --comb_res_mult                         3
% 2.15/0.99  --comb_sup_mult                         2
% 2.15/0.99  --comb_inst_mult                        10
% 2.15/0.99  
% 2.15/0.99  ------ Debug Options
% 2.15/0.99  
% 2.15/0.99  --dbg_backtrace                         false
% 2.15/0.99  --dbg_dump_prop_clauses                 false
% 2.15/0.99  --dbg_dump_prop_clauses_file            -
% 2.15/0.99  --dbg_out_stat                          false
% 2.15/0.99  
% 2.15/0.99  
% 2.15/0.99  
% 2.15/0.99  
% 2.15/0.99  ------ Proving...
% 2.15/0.99  
% 2.15/0.99  
% 2.15/0.99  % SZS status Theorem for theBenchmark.p
% 2.15/0.99  
% 2.15/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.15/0.99  
% 2.15/0.99  fof(f1,axiom,(
% 2.15/0.99    ! [X0,X1,X2] : (k4_xboole_0(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> (~r2_hidden(X3,X1) & r2_hidden(X3,X0))))),
% 2.15/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.15/0.99  
% 2.15/0.99  fof(f6,plain,(
% 2.15/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : (((r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | (r2_hidden(X3,X1) | ~r2_hidden(X3,X0))) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 2.15/0.99    inference(nnf_transformation,[],[f1])).
% 2.15/0.99  
% 2.15/0.99  fof(f7,plain,(
% 2.15/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | r2_hidden(X3,X1) | ~r2_hidden(X3,X0)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | ~r2_hidden(X3,X2))) | k4_xboole_0(X0,X1) != X2))),
% 2.15/0.99    inference(flattening,[],[f6])).
% 2.15/0.99  
% 2.15/0.99  fof(f8,plain,(
% 2.15/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 2.15/0.99    inference(rectify,[],[f7])).
% 2.15/0.99  
% 2.15/0.99  fof(f9,plain,(
% 2.15/0.99    ! [X2,X1,X0] : (? [X3] : ((r2_hidden(X3,X1) | ~r2_hidden(X3,X0) | ~r2_hidden(X3,X2)) & ((~r2_hidden(X3,X1) & r2_hidden(X3,X0)) | r2_hidden(X3,X2))) => ((r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((~r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 2.15/0.99    introduced(choice_axiom,[])).
% 2.15/0.99  
% 2.15/0.99  fof(f10,plain,(
% 2.15/0.99    ! [X0,X1,X2] : ((k4_xboole_0(X0,X1) = X2 | ((r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((~r2_hidden(sK0(X0,X1,X2),X1) & r2_hidden(sK0(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X4] : ((r2_hidden(X4,X2) | r2_hidden(X4,X1) | ~r2_hidden(X4,X0)) & ((~r2_hidden(X4,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X4,X2))) | k4_xboole_0(X0,X1) != X2))),
% 2.15/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f8,f9])).
% 2.15/0.99  
% 2.15/0.99  fof(f19,plain,(
% 2.15/0.99    ( ! [X4,X2,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,X2) | k4_xboole_0(X0,X1) != X2) )),
% 2.15/0.99    inference(cnf_transformation,[],[f10])).
% 2.15/0.99  
% 2.15/0.99  fof(f31,plain,(
% 2.15/0.99    ( ! [X4,X0,X1] : (~r2_hidden(X4,X1) | ~r2_hidden(X4,k4_xboole_0(X0,X1))) )),
% 2.15/0.99    inference(equality_resolution,[],[f19])).
% 2.15/0.99  
% 2.15/0.99  fof(f2,axiom,(
% 2.15/0.99    ! [X0,X1] : (k1_tarski(X0) = X1 <=> ! [X2] : (r2_hidden(X2,X1) <=> X0 = X2))),
% 2.15/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.15/0.99  
% 2.15/0.99  fof(f11,plain,(
% 2.15/0.99    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X2] : ((r2_hidden(X2,X1) | X0 != X2) & (X0 = X2 | ~r2_hidden(X2,X1))) | k1_tarski(X0) != X1))),
% 2.15/0.99    inference(nnf_transformation,[],[f2])).
% 2.15/0.99  
% 2.15/0.99  fof(f12,plain,(
% 2.15/0.99    ! [X0,X1] : ((k1_tarski(X0) = X1 | ? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.15/0.99    inference(rectify,[],[f11])).
% 2.15/0.99  
% 2.15/0.99  fof(f13,plain,(
% 2.15/0.99    ! [X1,X0] : (? [X2] : ((X0 != X2 | ~r2_hidden(X2,X1)) & (X0 = X2 | r2_hidden(X2,X1))) => ((sK1(X0,X1) != X0 | ~r2_hidden(sK1(X0,X1),X1)) & (sK1(X0,X1) = X0 | r2_hidden(sK1(X0,X1),X1))))),
% 2.15/0.99    introduced(choice_axiom,[])).
% 2.15/0.99  
% 2.15/0.99  fof(f14,plain,(
% 2.15/0.99    ! [X0,X1] : ((k1_tarski(X0) = X1 | ((sK1(X0,X1) != X0 | ~r2_hidden(sK1(X0,X1),X1)) & (sK1(X0,X1) = X0 | r2_hidden(sK1(X0,X1),X1)))) & (! [X3] : ((r2_hidden(X3,X1) | X0 != X3) & (X0 = X3 | ~r2_hidden(X3,X1))) | k1_tarski(X0) != X1))),
% 2.15/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1])],[f12,f13])).
% 2.15/0.99  
% 2.15/0.99  fof(f24,plain,(
% 2.15/0.99    ( ! [X0,X3,X1] : (X0 = X3 | ~r2_hidden(X3,X1) | k1_tarski(X0) != X1) )),
% 2.15/0.99    inference(cnf_transformation,[],[f14])).
% 2.15/0.99  
% 2.15/0.99  fof(f35,plain,(
% 2.15/0.99    ( ! [X0,X3] : (X0 = X3 | ~r2_hidden(X3,k1_tarski(X0))) )),
% 2.15/0.99    inference(equality_resolution,[],[f24])).
% 2.15/0.99  
% 2.15/0.99  fof(f23,plain,(
% 2.15/0.99    ( ! [X2,X0,X1] : (k4_xboole_0(X0,X1) = X2 | r2_hidden(sK0(X0,X1,X2),X1) | ~r2_hidden(sK0(X0,X1,X2),X0) | ~r2_hidden(sK0(X0,X1,X2),X2)) )),
% 2.15/0.99    inference(cnf_transformation,[],[f10])).
% 2.15/0.99  
% 2.15/0.99  fof(f21,plain,(
% 2.15/0.99    ( ! [X2,X0,X1] : (k4_xboole_0(X0,X1) = X2 | r2_hidden(sK0(X0,X1,X2),X0) | r2_hidden(sK0(X0,X1,X2),X2)) )),
% 2.15/0.99    inference(cnf_transformation,[],[f10])).
% 2.15/0.99  
% 2.15/0.99  fof(f25,plain,(
% 2.15/0.99    ( ! [X0,X3,X1] : (r2_hidden(X3,X1) | X0 != X3 | k1_tarski(X0) != X1) )),
% 2.15/0.99    inference(cnf_transformation,[],[f14])).
% 2.15/0.99  
% 2.15/0.99  fof(f33,plain,(
% 2.15/0.99    ( ! [X3,X1] : (r2_hidden(X3,X1) | k1_tarski(X3) != X1) )),
% 2.15/0.99    inference(equality_resolution,[],[f25])).
% 2.15/0.99  
% 2.15/0.99  fof(f34,plain,(
% 2.15/0.99    ( ! [X3] : (r2_hidden(X3,k1_tarski(X3))) )),
% 2.15/0.99    inference(equality_resolution,[],[f33])).
% 2.15/0.99  
% 2.15/0.99  fof(f3,conjecture,(
% 2.15/0.99    ! [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) <=> ~r2_hidden(X0,X1))),
% 2.15/0.99    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.15/0.99  
% 2.15/0.99  fof(f4,negated_conjecture,(
% 2.15/0.99    ~! [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) <=> ~r2_hidden(X0,X1))),
% 2.15/0.99    inference(negated_conjecture,[],[f3])).
% 2.15/0.99  
% 2.15/0.99  fof(f5,plain,(
% 2.15/0.99    ? [X0,X1] : (k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0) <~> ~r2_hidden(X0,X1))),
% 2.15/0.99    inference(ennf_transformation,[],[f4])).
% 2.15/0.99  
% 2.15/0.99  fof(f15,plain,(
% 2.15/0.99    ? [X0,X1] : ((r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0)) & (~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0)))),
% 2.15/0.99    inference(nnf_transformation,[],[f5])).
% 2.15/0.99  
% 2.15/0.99  fof(f16,plain,(
% 2.15/0.99    ? [X0,X1] : ((r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) != k1_tarski(X0)) & (~r2_hidden(X0,X1) | k4_xboole_0(k1_tarski(X0),X1) = k1_tarski(X0))) => ((r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2)) & (~r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2)))),
% 2.15/0.99    introduced(choice_axiom,[])).
% 2.15/0.99  
% 2.15/0.99  fof(f17,plain,(
% 2.15/0.99    (r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2)) & (~r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2))),
% 2.15/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK2,sK3])],[f15,f16])).
% 2.15/0.99  
% 2.15/0.99  fof(f29,plain,(
% 2.15/0.99    r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2)),
% 2.15/0.99    inference(cnf_transformation,[],[f17])).
% 2.15/0.99  
% 2.15/0.99  fof(f28,plain,(
% 2.15/0.99    ~r2_hidden(sK2,sK3) | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2)),
% 2.15/0.99    inference(cnf_transformation,[],[f17])).
% 2.15/0.99  
% 2.15/0.99  cnf(c_4,plain,
% 2.15/0.99      ( ~ r2_hidden(X0,X1) | ~ r2_hidden(X0,k4_xboole_0(X2,X1)) ),
% 2.15/0.99      inference(cnf_transformation,[],[f31]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_482,plain,
% 2.15/0.99      ( ~ r2_hidden(sK2,k4_xboole_0(X0,sK3)) | ~ r2_hidden(sK2,sK3) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_4]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_3499,plain,
% 2.15/0.99      ( ~ r2_hidden(sK2,k4_xboole_0(k1_tarski(sK2),sK3))
% 2.15/0.99      | ~ r2_hidden(sK2,sK3) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_482]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_168,plain,
% 2.15/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.15/0.99      theory(equality) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_1209,plain,
% 2.15/0.99      ( r2_hidden(X0,X1)
% 2.15/0.99      | ~ r2_hidden(X2,k1_tarski(X2))
% 2.15/0.99      | X0 != X2
% 2.15/0.99      | X1 != k1_tarski(X2) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_168]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_2140,plain,
% 2.15/0.99      ( r2_hidden(X0,k4_xboole_0(k1_tarski(sK2),sK3))
% 2.15/0.99      | ~ r2_hidden(sK2,k1_tarski(sK2))
% 2.15/0.99      | X0 != sK2
% 2.15/0.99      | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_1209]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_2142,plain,
% 2.15/0.99      ( r2_hidden(sK2,k4_xboole_0(k1_tarski(sK2),sK3))
% 2.15/0.99      | ~ r2_hidden(sK2,k1_tarski(sK2))
% 2.15/0.99      | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2)
% 2.15/0.99      | sK2 != sK2 ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_2140]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_9,plain,
% 2.15/0.99      ( ~ r2_hidden(X0,k1_tarski(X1)) | X0 = X1 ),
% 2.15/0.99      inference(cnf_transformation,[],[f35]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_2098,plain,
% 2.15/0.99      ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),k1_tarski(X0))
% 2.15/0.99      | sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) = X0 ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_9]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_2100,plain,
% 2.15/0.99      ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),k1_tarski(sK2))
% 2.15/0.99      | sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) = sK2 ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_2098]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_166,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_1092,plain,
% 2.15/0.99      ( sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) != X0
% 2.15/0.99      | sK2 != X0
% 2.15/0.99      | sK2 = sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_166]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_1093,plain,
% 2.15/0.99      ( sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) != sK2
% 2.15/0.99      | sK2 = sK0(k1_tarski(sK2),sK3,k1_tarski(sK2))
% 2.15/0.99      | sK2 != sK2 ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_1092]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_165,plain,( X0 = X0 ),theory(equality) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_1064,plain,
% 2.15/0.99      ( sK3 = sK3 ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_165]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_535,plain,
% 2.15/0.99      ( ~ r2_hidden(X0,X1) | r2_hidden(sK2,X2) | X2 != X1 | sK2 != X0 ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_168]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_671,plain,
% 2.15/0.99      ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),sK3)
% 2.15/0.99      | r2_hidden(sK2,X0)
% 2.15/0.99      | X0 != sK3
% 2.15/0.99      | sK2 != sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_535]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_797,plain,
% 2.15/0.99      ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),sK3)
% 2.15/0.99      | r2_hidden(sK2,sK3)
% 2.15/0.99      | sK3 != sK3
% 2.15/0.99      | sK2 != sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_671]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_0,plain,
% 2.15/0.99      ( ~ r2_hidden(sK0(X0,X1,X2),X0)
% 2.15/0.99      | ~ r2_hidden(sK0(X0,X1,X2),X2)
% 2.15/0.99      | r2_hidden(sK0(X0,X1,X2),X1)
% 2.15/0.99      | k4_xboole_0(X0,X1) = X2 ),
% 2.15/0.99      inference(cnf_transformation,[],[f23]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_464,plain,
% 2.15/0.99      ( ~ r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),k1_tarski(sK2))
% 2.15/0.99      | r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),sK3)
% 2.15/0.99      | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_0]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_2,plain,
% 2.15/0.99      ( r2_hidden(sK0(X0,X1,X2),X0)
% 2.15/0.99      | r2_hidden(sK0(X0,X1,X2),X2)
% 2.15/0.99      | k4_xboole_0(X0,X1) = X2 ),
% 2.15/0.99      inference(cnf_transformation,[],[f21]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_466,plain,
% 2.15/0.99      ( r2_hidden(sK0(k1_tarski(sK2),sK3,k1_tarski(sK2)),k1_tarski(sK2))
% 2.15/0.99      | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_2]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_8,plain,
% 2.15/0.99      ( r2_hidden(X0,k1_tarski(X0)) ),
% 2.15/0.99      inference(cnf_transformation,[],[f34]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_18,plain,
% 2.15/0.99      ( r2_hidden(sK2,k1_tarski(sK2)) ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_8]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_15,plain,
% 2.15/0.99      ( ~ r2_hidden(sK2,k1_tarski(sK2)) | sK2 = sK2 ),
% 2.15/0.99      inference(instantiation,[status(thm)],[c_9]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_10,negated_conjecture,
% 2.15/0.99      ( r2_hidden(sK2,sK3)
% 2.15/0.99      | k4_xboole_0(k1_tarski(sK2),sK3) != k1_tarski(sK2) ),
% 2.15/0.99      inference(cnf_transformation,[],[f29]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(c_11,negated_conjecture,
% 2.15/0.99      ( ~ r2_hidden(sK2,sK3)
% 2.15/0.99      | k4_xboole_0(k1_tarski(sK2),sK3) = k1_tarski(sK2) ),
% 2.15/0.99      inference(cnf_transformation,[],[f28]) ).
% 2.15/0.99  
% 2.15/0.99  cnf(contradiction,plain,
% 2.15/0.99      ( $false ),
% 2.15/0.99      inference(minisat,
% 2.15/0.99                [status(thm)],
% 2.15/0.99                [c_3499,c_2142,c_2100,c_1093,c_1064,c_797,c_464,c_466,
% 2.15/0.99                 c_18,c_15,c_10,c_11]) ).
% 2.15/0.99  
% 2.15/0.99  
% 2.15/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.15/0.99  
% 2.15/0.99  ------                               Statistics
% 2.15/0.99  
% 2.15/0.99  ------ General
% 2.15/0.99  
% 2.15/0.99  abstr_ref_over_cycles:                  0
% 2.15/0.99  abstr_ref_under_cycles:                 0
% 2.15/0.99  gc_basic_clause_elim:                   0
% 2.15/0.99  forced_gc_time:                         0
% 2.15/0.99  parsing_time:                           0.015
% 2.15/0.99  unif_index_cands_time:                  0.
% 2.15/0.99  unif_index_add_time:                    0.
% 2.15/0.99  orderings_time:                         0.
% 2.15/0.99  out_proof_time:                         0.008
% 2.15/0.99  total_time:                             0.16
% 2.15/0.99  num_of_symbols:                         39
% 2.15/0.99  num_of_terms:                           4245
% 2.15/0.99  
% 2.15/0.99  ------ Preprocessing
% 2.15/0.99  
% 2.15/0.99  num_of_splits:                          0
% 2.15/0.99  num_of_split_atoms:                     1
% 2.15/0.99  num_of_reused_defs:                     0
% 2.15/0.99  num_eq_ax_congr_red:                    10
% 2.15/0.99  num_of_sem_filtered_clauses:            1
% 2.15/0.99  num_of_subtypes:                        0
% 2.15/0.99  monotx_restored_types:                  0
% 2.15/0.99  sat_num_of_epr_types:                   0
% 2.15/0.99  sat_num_of_non_cyclic_types:            0
% 2.15/0.99  sat_guarded_non_collapsed_types:        0
% 2.15/0.99  num_pure_diseq_elim:                    0
% 2.15/0.99  simp_replaced_by:                       0
% 2.15/0.99  res_preprocessed:                       47
% 2.15/0.99  prep_upred:                             0
% 2.15/0.99  prep_unflattend:                        0
% 2.15/0.99  smt_new_axioms:                         0
% 2.15/0.99  pred_elim_cands:                        1
% 2.15/0.99  pred_elim:                              0
% 2.15/0.99  pred_elim_cl:                           0
% 2.15/0.99  pred_elim_cycles:                       1
% 2.15/0.99  merged_defs:                            6
% 2.15/0.99  merged_defs_ncl:                        0
% 2.15/0.99  bin_hyper_res:                          6
% 2.15/0.99  prep_cycles:                            3
% 2.15/0.99  pred_elim_time:                         0.
% 2.15/0.99  splitting_time:                         0.
% 2.15/0.99  sem_filter_time:                        0.
% 2.15/0.99  monotx_time:                            0.
% 2.15/0.99  subtype_inf_time:                       0.
% 2.15/0.99  
% 2.15/0.99  ------ Problem properties
% 2.15/0.99  
% 2.15/0.99  clauses:                                12
% 2.15/0.99  conjectures:                            2
% 2.15/0.99  epr:                                    0
% 2.15/0.99  horn:                                   7
% 2.15/0.99  ground:                                 2
% 2.15/0.99  unary:                                  1
% 2.15/0.99  binary:                                 5
% 2.15/0.99  lits:                                   30
% 2.15/0.99  lits_eq:                                10
% 2.15/0.99  fd_pure:                                0
% 2.15/0.99  fd_pseudo:                              0
% 2.15/0.99  fd_cond:                                0
% 2.15/0.99  fd_pseudo_cond:                         5
% 2.15/0.99  ac_symbols:                             0
% 2.15/0.99  
% 2.15/0.99  ------ Propositional Solver
% 2.15/0.99  
% 2.15/0.99  prop_solver_calls:                      26
% 2.15/0.99  prop_fast_solver_calls:                 328
% 2.15/0.99  smt_solver_calls:                       0
% 2.15/0.99  smt_fast_solver_calls:                  0
% 2.15/0.99  prop_num_of_clauses:                    1542
% 2.15/0.99  prop_preprocess_simplified:             4524
% 2.15/0.99  prop_fo_subsumed:                       2
% 2.15/0.99  prop_solver_time:                       0.
% 2.15/0.99  smt_solver_time:                        0.
% 2.15/0.99  smt_fast_solver_time:                   0.
% 2.15/0.99  prop_fast_solver_time:                  0.
% 2.15/0.99  prop_unsat_core_time:                   0.
% 2.15/0.99  
% 2.15/0.99  ------ QBF
% 2.15/0.99  
% 2.15/0.99  qbf_q_res:                              0
% 2.15/0.99  qbf_num_tautologies:                    0
% 2.15/0.99  qbf_prep_cycles:                        0
% 2.15/0.99  
% 2.15/0.99  ------ BMC1
% 2.15/0.99  
% 2.15/0.99  bmc1_current_bound:                     -1
% 2.15/0.99  bmc1_last_solved_bound:                 -1
% 2.15/0.99  bmc1_unsat_core_size:                   -1
% 2.15/0.99  bmc1_unsat_core_parents_size:           -1
% 2.15/0.99  bmc1_merge_next_fun:                    0
% 2.15/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.15/0.99  
% 2.15/0.99  ------ Instantiation
% 2.15/0.99  
% 2.15/0.99  inst_num_of_clauses:                    412
% 2.15/0.99  inst_num_in_passive:                    242
% 2.15/0.99  inst_num_in_active:                     163
% 2.15/0.99  inst_num_in_unprocessed:                6
% 2.15/0.99  inst_num_of_loops:                      219
% 2.15/0.99  inst_num_of_learning_restarts:          0
% 2.15/0.99  inst_num_moves_active_passive:          53
% 2.15/0.99  inst_lit_activity:                      0
% 2.15/0.99  inst_lit_activity_moves:                0
% 2.15/0.99  inst_num_tautologies:                   0
% 2.15/0.99  inst_num_prop_implied:                  0
% 2.15/0.99  inst_num_existing_simplified:           0
% 2.15/0.99  inst_num_eq_res_simplified:             0
% 2.15/0.99  inst_num_child_elim:                    0
% 2.15/0.99  inst_num_of_dismatching_blockings:      205
% 2.15/0.99  inst_num_of_non_proper_insts:           388
% 2.15/0.99  inst_num_of_duplicates:                 0
% 2.15/0.99  inst_inst_num_from_inst_to_res:         0
% 2.15/0.99  inst_dismatching_checking_time:         0.
% 2.15/0.99  
% 2.15/0.99  ------ Resolution
% 2.15/0.99  
% 2.15/0.99  res_num_of_clauses:                     0
% 2.15/0.99  res_num_in_passive:                     0
% 2.15/0.99  res_num_in_active:                      0
% 2.15/0.99  res_num_of_loops:                       50
% 2.15/0.99  res_forward_subset_subsumed:            5
% 2.15/0.99  res_backward_subset_subsumed:           0
% 2.15/0.99  res_forward_subsumed:                   0
% 2.15/0.99  res_backward_subsumed:                  0
% 2.15/0.99  res_forward_subsumption_resolution:     0
% 2.15/0.99  res_backward_subsumption_resolution:    0
% 2.15/0.99  res_clause_to_clause_subsumption:       489
% 2.15/0.99  res_orphan_elimination:                 0
% 2.15/0.99  res_tautology_del:                      48
% 2.15/0.99  res_num_eq_res_simplified:              0
% 2.15/0.99  res_num_sel_changes:                    0
% 2.15/0.99  res_moves_from_active_to_pass:          0
% 2.15/0.99  
% 2.15/0.99  ------ Superposition
% 2.15/0.99  
% 2.15/0.99  sup_time_total:                         0.
% 2.15/0.99  sup_time_generating:                    0.
% 2.15/0.99  sup_time_sim_full:                      0.
% 2.15/0.99  sup_time_sim_immed:                     0.
% 2.15/0.99  
% 2.15/0.99  sup_num_of_clauses:                     93
% 2.15/0.99  sup_num_in_active:                      37
% 2.15/0.99  sup_num_in_passive:                     56
% 2.15/0.99  sup_num_of_loops:                       42
% 2.15/0.99  sup_fw_superposition:                   70
% 2.15/0.99  sup_bw_superposition:                   128
% 2.15/0.99  sup_immediate_simplified:               102
% 2.15/0.99  sup_given_eliminated:                   1
% 2.15/0.99  comparisons_done:                       0
% 2.15/0.99  comparisons_avoided:                    23
% 2.15/0.99  
% 2.15/0.99  ------ Simplifications
% 2.15/0.99  
% 2.15/0.99  
% 2.15/0.99  sim_fw_subset_subsumed:                 21
% 2.15/0.99  sim_bw_subset_subsumed:                 4
% 2.15/0.99  sim_fw_subsumed:                        32
% 2.15/0.99  sim_bw_subsumed:                        1
% 2.15/0.99  sim_fw_subsumption_res:                 0
% 2.15/0.99  sim_bw_subsumption_res:                 0
% 2.15/0.99  sim_tautology_del:                      9
% 2.15/0.99  sim_eq_tautology_del:                   25
% 2.15/0.99  sim_eq_res_simp:                        1
% 2.15/0.99  sim_fw_demodulated:                     35
% 2.15/0.99  sim_bw_demodulated:                     4
% 2.15/0.99  sim_light_normalised:                   28
% 2.15/0.99  sim_joinable_taut:                      0
% 2.15/0.99  sim_joinable_simp:                      0
% 2.15/0.99  sim_ac_normalised:                      0
% 2.15/0.99  sim_smt_subsumption:                    0
% 2.15/0.99  
%------------------------------------------------------------------------------
