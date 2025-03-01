%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:54:39 EST 2020

% Result     : Theorem 0.95s
% Output     : CNFRefutation 0.95s
% Verified   : 
% Statistics : Number of formulae       :   48 (  74 expanded)
%              Number of clauses        :   23 (  23 expanded)
%              Number of leaves         :    8 (  20 expanded)
%              Depth                    :   11
%              Number of atoms          :  202 ( 446 expanded)
%              Number of equality atoms :   55 ( 125 expanded)
%              Maximal formula depth    :   14 (   6 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f3,conjecture,(
    ! [X0,X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ~ ( ! [X4,X5] :
              ~ ( r2_hidden(X5,X2)
                & r2_hidden(X4,X1)
                & k4_tarski(X4,X5) = X0 )
          & r2_hidden(X0,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f4,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] :
        ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
       => ~ ( ! [X4,X5] :
                ~ ( r2_hidden(X5,X2)
                  & r2_hidden(X4,X1)
                  & k4_tarski(X4,X5) = X0 )
            & r2_hidden(X0,X3) ) ) ),
    inference(negated_conjecture,[],[f3])).

fof(f6,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4,X5] :
          ( ~ r2_hidden(X5,X2)
          | ~ r2_hidden(X4,X1)
          | k4_tarski(X4,X5) != X0 )
      & r2_hidden(X0,X3)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ),
    inference(ennf_transformation,[],[f4])).

fof(f7,plain,(
    ? [X0,X1,X2,X3] :
      ( ! [X4,X5] :
          ( ~ r2_hidden(X5,X2)
          | ~ r2_hidden(X4,X1)
          | k4_tarski(X4,X5) != X0 )
      & r2_hidden(X0,X3)
      & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ) ),
    inference(flattening,[],[f6])).

fof(f14,plain,
    ( ? [X0,X1,X2,X3] :
        ( ! [X4,X5] :
            ( ~ r2_hidden(X5,X2)
            | ~ r2_hidden(X4,X1)
            | k4_tarski(X4,X5) != X0 )
        & r2_hidden(X0,X3)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
   => ( ! [X5,X4] :
          ( ~ r2_hidden(X5,sK7)
          | ~ r2_hidden(X4,sK6)
          | k4_tarski(X4,X5) != sK5 )
      & r2_hidden(sK5,sK8)
      & m1_subset_1(sK8,k1_zfmisc_1(k2_zfmisc_1(sK6,sK7))) ) ),
    introduced(choice_axiom,[])).

fof(f15,plain,
    ( ! [X4,X5] :
        ( ~ r2_hidden(X5,sK7)
        | ~ r2_hidden(X4,sK6)
        | k4_tarski(X4,X5) != sK5 )
    & r2_hidden(sK5,sK8)
    & m1_subset_1(sK8,k1_zfmisc_1(k2_zfmisc_1(sK6,sK7))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7,sK8])],[f7,f14])).

fof(f27,plain,(
    ! [X4,X5] :
      ( ~ r2_hidden(X5,sK7)
      | ~ r2_hidden(X4,sK6)
      | k4_tarski(X4,X5) != sK5 ) ),
    inference(cnf_transformation,[],[f15])).

fof(f1,axiom,(
    ! [X0,X1,X2] :
      ( k2_zfmisc_1(X0,X1) = X2
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> ? [X4,X5] :
              ( k4_tarski(X4,X5) = X3
              & r2_hidden(X5,X1)
              & r2_hidden(X4,X0) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f8,plain,(
    ! [X0,X1,X2] :
      ( ( k2_zfmisc_1(X0,X1) = X2
        | ? [X3] :
            ( ( ! [X4,X5] :
                  ( k4_tarski(X4,X5) != X3
                  | ~ r2_hidden(X5,X1)
                  | ~ r2_hidden(X4,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( ? [X4,X5] :
                  ( k4_tarski(X4,X5) = X3
                  & r2_hidden(X5,X1)
                  & r2_hidden(X4,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X3] :
            ( ( r2_hidden(X3,X2)
              | ! [X4,X5] :
                  ( k4_tarski(X4,X5) != X3
                  | ~ r2_hidden(X5,X1)
                  | ~ r2_hidden(X4,X0) ) )
            & ( ? [X4,X5] :
                  ( k4_tarski(X4,X5) = X3
                  & r2_hidden(X5,X1)
                  & r2_hidden(X4,X0) )
              | ~ r2_hidden(X3,X2) ) )
        | k2_zfmisc_1(X0,X1) != X2 ) ) ),
    inference(nnf_transformation,[],[f1])).

fof(f9,plain,(
    ! [X0,X1,X2] :
      ( ( k2_zfmisc_1(X0,X1) = X2
        | ? [X3] :
            ( ( ! [X4,X5] :
                  ( k4_tarski(X4,X5) != X3
                  | ~ r2_hidden(X5,X1)
                  | ~ r2_hidden(X4,X0) )
              | ~ r2_hidden(X3,X2) )
            & ( ? [X6,X7] :
                  ( k4_tarski(X6,X7) = X3
                  & r2_hidden(X7,X1)
                  & r2_hidden(X6,X0) )
              | r2_hidden(X3,X2) ) ) )
      & ( ! [X8] :
            ( ( r2_hidden(X8,X2)
              | ! [X9,X10] :
                  ( k4_tarski(X9,X10) != X8
                  | ~ r2_hidden(X10,X1)
                  | ~ r2_hidden(X9,X0) ) )
            & ( ? [X11,X12] :
                  ( k4_tarski(X11,X12) = X8
                  & r2_hidden(X12,X1)
                  & r2_hidden(X11,X0) )
              | ~ r2_hidden(X8,X2) ) )
        | k2_zfmisc_1(X0,X1) != X2 ) ) ),
    inference(rectify,[],[f8])).

fof(f12,plain,(
    ! [X8,X1,X0] :
      ( ? [X11,X12] :
          ( k4_tarski(X11,X12) = X8
          & r2_hidden(X12,X1)
          & r2_hidden(X11,X0) )
     => ( k4_tarski(sK3(X0,X1,X8),sK4(X0,X1,X8)) = X8
        & r2_hidden(sK4(X0,X1,X8),X1)
        & r2_hidden(sK3(X0,X1,X8),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f11,plain,(
    ! [X3,X2,X1,X0] :
      ( ? [X6,X7] :
          ( k4_tarski(X6,X7) = X3
          & r2_hidden(X7,X1)
          & r2_hidden(X6,X0) )
     => ( k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)) = X3
        & r2_hidden(sK2(X0,X1,X2),X1)
        & r2_hidden(sK1(X0,X1,X2),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f10,plain,(
    ! [X2,X1,X0] :
      ( ? [X3] :
          ( ( ! [X4,X5] :
                ( k4_tarski(X4,X5) != X3
                | ~ r2_hidden(X5,X1)
                | ~ r2_hidden(X4,X0) )
            | ~ r2_hidden(X3,X2) )
          & ( ? [X6,X7] :
                ( k4_tarski(X6,X7) = X3
                & r2_hidden(X7,X1)
                & r2_hidden(X6,X0) )
            | r2_hidden(X3,X2) ) )
     => ( ( ! [X5,X4] :
              ( k4_tarski(X4,X5) != sK0(X0,X1,X2)
              | ~ r2_hidden(X5,X1)
              | ~ r2_hidden(X4,X0) )
          | ~ r2_hidden(sK0(X0,X1,X2),X2) )
        & ( ? [X7,X6] :
              ( k4_tarski(X6,X7) = sK0(X0,X1,X2)
              & r2_hidden(X7,X1)
              & r2_hidden(X6,X0) )
          | r2_hidden(sK0(X0,X1,X2),X2) ) ) ) ),
    introduced(choice_axiom,[])).

fof(f13,plain,(
    ! [X0,X1,X2] :
      ( ( k2_zfmisc_1(X0,X1) = X2
        | ( ( ! [X4,X5] :
                ( k4_tarski(X4,X5) != sK0(X0,X1,X2)
                | ~ r2_hidden(X5,X1)
                | ~ r2_hidden(X4,X0) )
            | ~ r2_hidden(sK0(X0,X1,X2),X2) )
          & ( ( k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)) = sK0(X0,X1,X2)
              & r2_hidden(sK2(X0,X1,X2),X1)
              & r2_hidden(sK1(X0,X1,X2),X0) )
            | r2_hidden(sK0(X0,X1,X2),X2) ) ) )
      & ( ! [X8] :
            ( ( r2_hidden(X8,X2)
              | ! [X9,X10] :
                  ( k4_tarski(X9,X10) != X8
                  | ~ r2_hidden(X10,X1)
                  | ~ r2_hidden(X9,X0) ) )
            & ( ( k4_tarski(sK3(X0,X1,X8),sK4(X0,X1,X8)) = X8
                & r2_hidden(sK4(X0,X1,X8),X1)
                & r2_hidden(sK3(X0,X1,X8),X0) )
              | ~ r2_hidden(X8,X2) ) )
        | k2_zfmisc_1(X0,X1) != X2 ) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f9,f12,f11,f10])).

fof(f18,plain,(
    ! [X2,X0,X8,X1] :
      ( k4_tarski(sK3(X0,X1,X8),sK4(X0,X1,X8)) = X8
      | ~ r2_hidden(X8,X2)
      | k2_zfmisc_1(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f13])).

fof(f30,plain,(
    ! [X0,X8,X1] :
      ( k4_tarski(sK3(X0,X1,X8),sK4(X0,X1,X8)) = X8
      | ~ r2_hidden(X8,k2_zfmisc_1(X0,X1)) ) ),
    inference(equality_resolution,[],[f18])).

fof(f16,plain,(
    ! [X2,X0,X8,X1] :
      ( r2_hidden(sK3(X0,X1,X8),X0)
      | ~ r2_hidden(X8,X2)
      | k2_zfmisc_1(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f13])).

fof(f32,plain,(
    ! [X0,X8,X1] :
      ( r2_hidden(sK3(X0,X1,X8),X0)
      | ~ r2_hidden(X8,k2_zfmisc_1(X0,X1)) ) ),
    inference(equality_resolution,[],[f16])).

fof(f17,plain,(
    ! [X2,X0,X8,X1] :
      ( r2_hidden(sK4(X0,X1,X8),X1)
      | ~ r2_hidden(X8,X2)
      | k2_zfmisc_1(X0,X1) != X2 ) ),
    inference(cnf_transformation,[],[f13])).

fof(f31,plain,(
    ! [X0,X8,X1] :
      ( r2_hidden(sK4(X0,X1,X8),X1)
      | ~ r2_hidden(X8,k2_zfmisc_1(X0,X1)) ) ),
    inference(equality_resolution,[],[f17])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(X0))
     => ! [X2] :
          ( r2_hidden(X2,X1)
         => r2_hidden(X2,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f5,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( r2_hidden(X2,X0)
          | ~ r2_hidden(X2,X1) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f24,plain,(
    ! [X2,X0,X1] :
      ( r2_hidden(X2,X0)
      | ~ r2_hidden(X2,X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) ) ),
    inference(cnf_transformation,[],[f5])).

fof(f25,plain,(
    m1_subset_1(sK8,k1_zfmisc_1(k2_zfmisc_1(sK6,sK7))) ),
    inference(cnf_transformation,[],[f15])).

fof(f26,plain,(
    r2_hidden(sK5,sK8) ),
    inference(cnf_transformation,[],[f15])).

cnf(c_9,negated_conjecture,
    ( ~ r2_hidden(X0,sK6)
    | ~ r2_hidden(X1,sK7)
    | k4_tarski(X0,X1) != sK5 ),
    inference(cnf_transformation,[],[f27])).

cnf(c_802,plain,
    ( ~ r2_hidden(X0,sK7)
    | ~ r2_hidden(sK3(sK6,sK7,X1),sK6)
    | k4_tarski(sK3(sK6,sK7,X1),X0) != sK5 ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_924,plain,
    ( ~ r2_hidden(sK4(sK6,sK7,X0),sK7)
    | ~ r2_hidden(sK3(sK6,sK7,X1),sK6)
    | k4_tarski(sK3(sK6,sK7,X1),sK4(sK6,sK7,X0)) != sK5 ),
    inference(instantiation,[status(thm)],[c_802])).

cnf(c_926,plain,
    ( ~ r2_hidden(sK4(sK6,sK7,sK5),sK7)
    | ~ r2_hidden(sK3(sK6,sK7,sK5),sK6)
    | k4_tarski(sK3(sK6,sK7,sK5),sK4(sK6,sK7,sK5)) != sK5 ),
    inference(instantiation,[status(thm)],[c_924])).

cnf(c_5,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | k4_tarski(sK3(X1,X2,X0),sK4(X1,X2,X0)) = X0 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_612,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(sK6,sK7))
    | k4_tarski(sK3(sK6,sK7,X0),sK4(sK6,sK7,X0)) = X0 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_624,plain,
    ( ~ r2_hidden(sK5,k2_zfmisc_1(sK6,sK7))
    | k4_tarski(sK3(sK6,sK7,sK5),sK4(sK6,sK7,sK5)) = sK5 ),
    inference(instantiation,[status(thm)],[c_612])).

cnf(c_7,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | r2_hidden(sK3(X1,X2,X0),X1) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_613,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(sK6,sK7))
    | r2_hidden(sK3(sK6,sK7,X0),sK6) ),
    inference(instantiation,[status(thm)],[c_7])).

cnf(c_620,plain,
    ( r2_hidden(sK3(sK6,sK7,sK5),sK6)
    | ~ r2_hidden(sK5,k2_zfmisc_1(sK6,sK7)) ),
    inference(instantiation,[status(thm)],[c_613])).

cnf(c_6,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | r2_hidden(sK4(X1,X2,X0),X2) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_614,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(sK6,sK7))
    | r2_hidden(sK4(sK6,sK7,X0),sK7) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_616,plain,
    ( r2_hidden(sK4(sK6,sK7,sK5),sK7)
    | ~ r2_hidden(sK5,k2_zfmisc_1(sK6,sK7)) ),
    inference(instantiation,[status(thm)],[c_614])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r2_hidden(X2,X0)
    | r2_hidden(X2,X1) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_11,negated_conjecture,
    ( m1_subset_1(sK8,k1_zfmisc_1(k2_zfmisc_1(sK6,sK7))) ),
    inference(cnf_transformation,[],[f25])).

cnf(c_137,plain,
    ( ~ r2_hidden(X0,X1)
    | r2_hidden(X0,X2)
    | k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) != k1_zfmisc_1(X2)
    | sK8 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_8,c_11])).

cnf(c_138,plain,
    ( r2_hidden(X0,X1)
    | ~ r2_hidden(X0,sK8)
    | k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) != k1_zfmisc_1(X1) ),
    inference(unflattening,[status(thm)],[c_137])).

cnf(c_513,plain,
    ( r2_hidden(X0,k2_zfmisc_1(sK6,sK7))
    | ~ r2_hidden(X0,sK8)
    | k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) != k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) ),
    inference(instantiation,[status(thm)],[c_138])).

cnf(c_515,plain,
    ( r2_hidden(sK5,k2_zfmisc_1(sK6,sK7))
    | ~ r2_hidden(sK5,sK8)
    | k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) != k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) ),
    inference(instantiation,[status(thm)],[c_513])).

cnf(c_233,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_512,plain,
    ( k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) = k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) ),
    inference(instantiation,[status(thm)],[c_233])).

cnf(c_10,negated_conjecture,
    ( r2_hidden(sK5,sK8) ),
    inference(cnf_transformation,[],[f26])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_926,c_624,c_620,c_616,c_515,c_512,c_10])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 20:43:26 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 0.95/1.02  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.95/1.02  
% 0.95/1.02  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 0.95/1.02  
% 0.95/1.02  ------  iProver source info
% 0.95/1.02  
% 0.95/1.02  git: date: 2020-06-30 10:37:57 +0100
% 0.95/1.02  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 0.95/1.02  git: non_committed_changes: false
% 0.95/1.02  git: last_make_outside_of_git: false
% 0.95/1.02  
% 0.95/1.02  ------ 
% 0.95/1.02  
% 0.95/1.02  ------ Input Options
% 0.95/1.02  
% 0.95/1.02  --out_options                           all
% 0.95/1.02  --tptp_safe_out                         true
% 0.95/1.02  --problem_path                          ""
% 0.95/1.02  --include_path                          ""
% 0.95/1.02  --clausifier                            res/vclausify_rel
% 0.95/1.02  --clausifier_options                    --mode clausify
% 0.95/1.02  --stdin                                 false
% 0.95/1.02  --stats_out                             all
% 0.95/1.02  
% 0.95/1.02  ------ General Options
% 0.95/1.02  
% 0.95/1.02  --fof                                   false
% 0.95/1.02  --time_out_real                         305.
% 0.95/1.02  --time_out_virtual                      -1.
% 0.95/1.02  --symbol_type_check                     false
% 0.95/1.02  --clausify_out                          false
% 0.95/1.02  --sig_cnt_out                           false
% 0.95/1.02  --trig_cnt_out                          false
% 0.95/1.02  --trig_cnt_out_tolerance                1.
% 0.95/1.02  --trig_cnt_out_sk_spl                   false
% 0.95/1.02  --abstr_cl_out                          false
% 0.95/1.02  
% 0.95/1.02  ------ Global Options
% 0.95/1.02  
% 0.95/1.02  --schedule                              default
% 0.95/1.02  --add_important_lit                     false
% 0.95/1.02  --prop_solver_per_cl                    1000
% 0.95/1.02  --min_unsat_core                        false
% 0.95/1.02  --soft_assumptions                      false
% 0.95/1.02  --soft_lemma_size                       3
% 0.95/1.02  --prop_impl_unit_size                   0
% 0.95/1.02  --prop_impl_unit                        []
% 0.95/1.02  --share_sel_clauses                     true
% 0.95/1.02  --reset_solvers                         false
% 0.95/1.02  --bc_imp_inh                            [conj_cone]
% 0.95/1.02  --conj_cone_tolerance                   3.
% 0.95/1.02  --extra_neg_conj                        none
% 0.95/1.02  --large_theory_mode                     true
% 0.95/1.02  --prolific_symb_bound                   200
% 0.95/1.02  --lt_threshold                          2000
% 0.95/1.02  --clause_weak_htbl                      true
% 0.95/1.02  --gc_record_bc_elim                     false
% 0.95/1.02  
% 0.95/1.02  ------ Preprocessing Options
% 0.95/1.02  
% 0.95/1.02  --preprocessing_flag                    true
% 0.95/1.02  --time_out_prep_mult                    0.1
% 0.95/1.02  --splitting_mode                        input
% 0.95/1.02  --splitting_grd                         true
% 0.95/1.02  --splitting_cvd                         false
% 0.95/1.02  --splitting_cvd_svl                     false
% 0.95/1.02  --splitting_nvd                         32
% 0.95/1.02  --sub_typing                            true
% 0.95/1.02  --prep_gs_sim                           true
% 0.95/1.02  --prep_unflatten                        true
% 0.95/1.02  --prep_res_sim                          true
% 0.95/1.02  --prep_upred                            true
% 0.95/1.02  --prep_sem_filter                       exhaustive
% 0.95/1.02  --prep_sem_filter_out                   false
% 0.95/1.02  --pred_elim                             true
% 0.95/1.02  --res_sim_input                         true
% 0.95/1.02  --eq_ax_congr_red                       true
% 0.95/1.02  --pure_diseq_elim                       true
% 0.95/1.02  --brand_transform                       false
% 0.95/1.02  --non_eq_to_eq                          false
% 0.95/1.02  --prep_def_merge                        true
% 0.95/1.02  --prep_def_merge_prop_impl              false
% 0.95/1.02  --prep_def_merge_mbd                    true
% 0.95/1.02  --prep_def_merge_tr_red                 false
% 0.95/1.02  --prep_def_merge_tr_cl                  false
% 0.95/1.02  --smt_preprocessing                     true
% 0.95/1.02  --smt_ac_axioms                         fast
% 0.95/1.02  --preprocessed_out                      false
% 0.95/1.02  --preprocessed_stats                    false
% 0.95/1.02  
% 0.95/1.02  ------ Abstraction refinement Options
% 0.95/1.02  
% 0.95/1.02  --abstr_ref                             []
% 0.95/1.02  --abstr_ref_prep                        false
% 0.95/1.02  --abstr_ref_until_sat                   false
% 0.95/1.02  --abstr_ref_sig_restrict                funpre
% 0.95/1.02  --abstr_ref_af_restrict_to_split_sk     false
% 0.95/1.02  --abstr_ref_under                       []
% 0.95/1.02  
% 0.95/1.02  ------ SAT Options
% 0.95/1.02  
% 0.95/1.02  --sat_mode                              false
% 0.95/1.02  --sat_fm_restart_options                ""
% 0.95/1.02  --sat_gr_def                            false
% 0.95/1.02  --sat_epr_types                         true
% 0.95/1.02  --sat_non_cyclic_types                  false
% 0.95/1.02  --sat_finite_models                     false
% 0.95/1.02  --sat_fm_lemmas                         false
% 0.95/1.02  --sat_fm_prep                           false
% 0.95/1.02  --sat_fm_uc_incr                        true
% 0.95/1.02  --sat_out_model                         small
% 0.95/1.02  --sat_out_clauses                       false
% 0.95/1.02  
% 0.95/1.02  ------ QBF Options
% 0.95/1.02  
% 0.95/1.02  --qbf_mode                              false
% 0.95/1.02  --qbf_elim_univ                         false
% 0.95/1.02  --qbf_dom_inst                          none
% 0.95/1.02  --qbf_dom_pre_inst                      false
% 0.95/1.02  --qbf_sk_in                             false
% 0.95/1.02  --qbf_pred_elim                         true
% 0.95/1.02  --qbf_split                             512
% 0.95/1.02  
% 0.95/1.02  ------ BMC1 Options
% 0.95/1.02  
% 0.95/1.02  --bmc1_incremental                      false
% 0.95/1.02  --bmc1_axioms                           reachable_all
% 0.95/1.02  --bmc1_min_bound                        0
% 0.95/1.02  --bmc1_max_bound                        -1
% 0.95/1.02  --bmc1_max_bound_default                -1
% 0.95/1.02  --bmc1_symbol_reachability              true
% 0.95/1.02  --bmc1_property_lemmas                  false
% 0.95/1.02  --bmc1_k_induction                      false
% 0.95/1.02  --bmc1_non_equiv_states                 false
% 0.95/1.02  --bmc1_deadlock                         false
% 0.95/1.02  --bmc1_ucm                              false
% 0.95/1.02  --bmc1_add_unsat_core                   none
% 0.95/1.02  --bmc1_unsat_core_children              false
% 0.95/1.02  --bmc1_unsat_core_extrapolate_axioms    false
% 0.95/1.02  --bmc1_out_stat                         full
% 0.95/1.02  --bmc1_ground_init                      false
% 0.95/1.02  --bmc1_pre_inst_next_state              false
% 0.95/1.02  --bmc1_pre_inst_state                   false
% 0.95/1.02  --bmc1_pre_inst_reach_state             false
% 0.95/1.02  --bmc1_out_unsat_core                   false
% 0.95/1.02  --bmc1_aig_witness_out                  false
% 0.95/1.02  --bmc1_verbose                          false
% 0.95/1.02  --bmc1_dump_clauses_tptp                false
% 0.95/1.02  --bmc1_dump_unsat_core_tptp             false
% 0.95/1.02  --bmc1_dump_file                        -
% 0.95/1.02  --bmc1_ucm_expand_uc_limit              128
% 0.95/1.02  --bmc1_ucm_n_expand_iterations          6
% 0.95/1.02  --bmc1_ucm_extend_mode                  1
% 0.95/1.02  --bmc1_ucm_init_mode                    2
% 0.95/1.02  --bmc1_ucm_cone_mode                    none
% 0.95/1.02  --bmc1_ucm_reduced_relation_type        0
% 0.95/1.02  --bmc1_ucm_relax_model                  4
% 0.95/1.02  --bmc1_ucm_full_tr_after_sat            true
% 0.95/1.02  --bmc1_ucm_expand_neg_assumptions       false
% 0.95/1.02  --bmc1_ucm_layered_model                none
% 0.95/1.02  --bmc1_ucm_max_lemma_size               10
% 0.95/1.02  
% 0.95/1.02  ------ AIG Options
% 0.95/1.02  
% 0.95/1.02  --aig_mode                              false
% 0.95/1.02  
% 0.95/1.02  ------ Instantiation Options
% 0.95/1.02  
% 0.95/1.02  --instantiation_flag                    true
% 0.95/1.02  --inst_sos_flag                         false
% 0.95/1.02  --inst_sos_phase                        true
% 0.95/1.02  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.95/1.02  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.95/1.02  --inst_lit_sel_side                     num_symb
% 0.95/1.02  --inst_solver_per_active                1400
% 0.95/1.02  --inst_solver_calls_frac                1.
% 0.95/1.02  --inst_passive_queue_type               priority_queues
% 0.95/1.02  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.95/1.02  --inst_passive_queues_freq              [25;2]
% 0.95/1.02  --inst_dismatching                      true
% 0.95/1.02  --inst_eager_unprocessed_to_passive     true
% 0.95/1.02  --inst_prop_sim_given                   true
% 0.95/1.02  --inst_prop_sim_new                     false
% 0.95/1.02  --inst_subs_new                         false
% 0.95/1.02  --inst_eq_res_simp                      false
% 0.95/1.02  --inst_subs_given                       false
% 0.95/1.02  --inst_orphan_elimination               true
% 0.95/1.02  --inst_learning_loop_flag               true
% 0.95/1.02  --inst_learning_start                   3000
% 0.95/1.02  --inst_learning_factor                  2
% 0.95/1.02  --inst_start_prop_sim_after_learn       3
% 0.95/1.02  --inst_sel_renew                        solver
% 0.95/1.02  --inst_lit_activity_flag                true
% 0.95/1.02  --inst_restr_to_given                   false
% 0.95/1.02  --inst_activity_threshold               500
% 0.95/1.02  --inst_out_proof                        true
% 0.95/1.02  
% 0.95/1.02  ------ Resolution Options
% 0.95/1.02  
% 0.95/1.02  --resolution_flag                       true
% 0.95/1.02  --res_lit_sel                           adaptive
% 0.95/1.02  --res_lit_sel_side                      none
% 0.95/1.02  --res_ordering                          kbo
% 0.95/1.02  --res_to_prop_solver                    active
% 0.95/1.02  --res_prop_simpl_new                    false
% 0.95/1.02  --res_prop_simpl_given                  true
% 0.95/1.02  --res_passive_queue_type                priority_queues
% 0.95/1.02  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.95/1.02  --res_passive_queues_freq               [15;5]
% 0.95/1.02  --res_forward_subs                      full
% 0.95/1.02  --res_backward_subs                     full
% 0.95/1.02  --res_forward_subs_resolution           true
% 0.95/1.02  --res_backward_subs_resolution          true
% 0.95/1.02  --res_orphan_elimination                true
% 0.95/1.02  --res_time_limit                        2.
% 0.95/1.02  --res_out_proof                         true
% 0.95/1.02  
% 0.95/1.02  ------ Superposition Options
% 0.95/1.02  
% 0.95/1.02  --superposition_flag                    true
% 0.95/1.02  --sup_passive_queue_type                priority_queues
% 0.95/1.02  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.95/1.02  --sup_passive_queues_freq               [8;1;4]
% 0.95/1.02  --demod_completeness_check              fast
% 0.95/1.02  --demod_use_ground                      true
% 0.95/1.02  --sup_to_prop_solver                    passive
% 0.95/1.02  --sup_prop_simpl_new                    true
% 0.95/1.02  --sup_prop_simpl_given                  true
% 0.95/1.02  --sup_fun_splitting                     false
% 0.95/1.02  --sup_smt_interval                      50000
% 0.95/1.03  
% 0.95/1.03  ------ Superposition Simplification Setup
% 0.95/1.03  
% 0.95/1.03  --sup_indices_passive                   []
% 0.95/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 0.95/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.03  --sup_full_bw                           [BwDemod]
% 0.95/1.03  --sup_immed_triv                        [TrivRules]
% 0.95/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.95/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.03  --sup_immed_bw_main                     []
% 0.95/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 0.95/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.03  
% 0.95/1.03  ------ Combination Options
% 0.95/1.03  
% 0.95/1.03  --comb_res_mult                         3
% 0.95/1.03  --comb_sup_mult                         2
% 0.95/1.03  --comb_inst_mult                        10
% 0.95/1.03  
% 0.95/1.03  ------ Debug Options
% 0.95/1.03  
% 0.95/1.03  --dbg_backtrace                         false
% 0.95/1.03  --dbg_dump_prop_clauses                 false
% 0.95/1.03  --dbg_dump_prop_clauses_file            -
% 0.95/1.03  --dbg_out_stat                          false
% 0.95/1.03  ------ Parsing...
% 0.95/1.03  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 0.95/1.03  
% 0.95/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 0.95/1.03  
% 0.95/1.03  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 0.95/1.03  
% 0.95/1.03  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 0.95/1.03  ------ Proving...
% 0.95/1.03  ------ Problem Properties 
% 0.95/1.03  
% 0.95/1.03  
% 0.95/1.03  clauses                                 11
% 0.95/1.03  conjectures                             2
% 0.95/1.03  EPR                                     1
% 0.95/1.03  Horn                                    8
% 0.95/1.03  unary                                   1
% 0.95/1.03  binary                                  3
% 0.95/1.03  lits                                    30
% 0.95/1.03  lits eq                                 9
% 0.95/1.03  fd_pure                                 0
% 0.95/1.03  fd_pseudo                               0
% 0.95/1.03  fd_cond                                 0
% 0.95/1.03  fd_pseudo_cond                          4
% 0.95/1.03  AC symbols                              0
% 0.95/1.03  
% 0.95/1.03  ------ Schedule dynamic 5 is on 
% 0.95/1.03  
% 0.95/1.03  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 0.95/1.03  
% 0.95/1.03  
% 0.95/1.03  ------ 
% 0.95/1.03  Current options:
% 0.95/1.03  ------ 
% 0.95/1.03  
% 0.95/1.03  ------ Input Options
% 0.95/1.03  
% 0.95/1.03  --out_options                           all
% 0.95/1.03  --tptp_safe_out                         true
% 0.95/1.03  --problem_path                          ""
% 0.95/1.03  --include_path                          ""
% 0.95/1.03  --clausifier                            res/vclausify_rel
% 0.95/1.03  --clausifier_options                    --mode clausify
% 0.95/1.03  --stdin                                 false
% 0.95/1.03  --stats_out                             all
% 0.95/1.03  
% 0.95/1.03  ------ General Options
% 0.95/1.03  
% 0.95/1.03  --fof                                   false
% 0.95/1.03  --time_out_real                         305.
% 0.95/1.03  --time_out_virtual                      -1.
% 0.95/1.03  --symbol_type_check                     false
% 0.95/1.03  --clausify_out                          false
% 0.95/1.03  --sig_cnt_out                           false
% 0.95/1.03  --trig_cnt_out                          false
% 0.95/1.03  --trig_cnt_out_tolerance                1.
% 0.95/1.03  --trig_cnt_out_sk_spl                   false
% 0.95/1.03  --abstr_cl_out                          false
% 0.95/1.03  
% 0.95/1.03  ------ Global Options
% 0.95/1.03  
% 0.95/1.03  --schedule                              default
% 0.95/1.03  --add_important_lit                     false
% 0.95/1.03  --prop_solver_per_cl                    1000
% 0.95/1.03  --min_unsat_core                        false
% 0.95/1.03  --soft_assumptions                      false
% 0.95/1.03  --soft_lemma_size                       3
% 0.95/1.03  --prop_impl_unit_size                   0
% 0.95/1.03  --prop_impl_unit                        []
% 0.95/1.03  --share_sel_clauses                     true
% 0.95/1.03  --reset_solvers                         false
% 0.95/1.03  --bc_imp_inh                            [conj_cone]
% 0.95/1.03  --conj_cone_tolerance                   3.
% 0.95/1.03  --extra_neg_conj                        none
% 0.95/1.03  --large_theory_mode                     true
% 0.95/1.03  --prolific_symb_bound                   200
% 0.95/1.03  --lt_threshold                          2000
% 0.95/1.03  --clause_weak_htbl                      true
% 0.95/1.03  --gc_record_bc_elim                     false
% 0.95/1.03  
% 0.95/1.03  ------ Preprocessing Options
% 0.95/1.03  
% 0.95/1.03  --preprocessing_flag                    true
% 0.95/1.03  --time_out_prep_mult                    0.1
% 0.95/1.03  --splitting_mode                        input
% 0.95/1.03  --splitting_grd                         true
% 0.95/1.03  --splitting_cvd                         false
% 0.95/1.03  --splitting_cvd_svl                     false
% 0.95/1.03  --splitting_nvd                         32
% 0.95/1.03  --sub_typing                            true
% 0.95/1.03  --prep_gs_sim                           true
% 0.95/1.03  --prep_unflatten                        true
% 0.95/1.03  --prep_res_sim                          true
% 0.95/1.03  --prep_upred                            true
% 0.95/1.03  --prep_sem_filter                       exhaustive
% 0.95/1.03  --prep_sem_filter_out                   false
% 0.95/1.03  --pred_elim                             true
% 0.95/1.03  --res_sim_input                         true
% 0.95/1.03  --eq_ax_congr_red                       true
% 0.95/1.03  --pure_diseq_elim                       true
% 0.95/1.03  --brand_transform                       false
% 0.95/1.03  --non_eq_to_eq                          false
% 0.95/1.03  --prep_def_merge                        true
% 0.95/1.03  --prep_def_merge_prop_impl              false
% 0.95/1.03  --prep_def_merge_mbd                    true
% 0.95/1.03  --prep_def_merge_tr_red                 false
% 0.95/1.03  --prep_def_merge_tr_cl                  false
% 0.95/1.03  --smt_preprocessing                     true
% 0.95/1.03  --smt_ac_axioms                         fast
% 0.95/1.03  --preprocessed_out                      false
% 0.95/1.03  --preprocessed_stats                    false
% 0.95/1.03  
% 0.95/1.03  ------ Abstraction refinement Options
% 0.95/1.03  
% 0.95/1.03  --abstr_ref                             []
% 0.95/1.03  --abstr_ref_prep                        false
% 0.95/1.03  --abstr_ref_until_sat                   false
% 0.95/1.03  --abstr_ref_sig_restrict                funpre
% 0.95/1.03  --abstr_ref_af_restrict_to_split_sk     false
% 0.95/1.03  --abstr_ref_under                       []
% 0.95/1.03  
% 0.95/1.03  ------ SAT Options
% 0.95/1.03  
% 0.95/1.03  --sat_mode                              false
% 0.95/1.03  --sat_fm_restart_options                ""
% 0.95/1.03  --sat_gr_def                            false
% 0.95/1.03  --sat_epr_types                         true
% 0.95/1.03  --sat_non_cyclic_types                  false
% 0.95/1.03  --sat_finite_models                     false
% 0.95/1.03  --sat_fm_lemmas                         false
% 0.95/1.03  --sat_fm_prep                           false
% 0.95/1.03  --sat_fm_uc_incr                        true
% 0.95/1.03  --sat_out_model                         small
% 0.95/1.03  --sat_out_clauses                       false
% 0.95/1.03  
% 0.95/1.03  ------ QBF Options
% 0.95/1.03  
% 0.95/1.03  --qbf_mode                              false
% 0.95/1.03  --qbf_elim_univ                         false
% 0.95/1.03  --qbf_dom_inst                          none
% 0.95/1.03  --qbf_dom_pre_inst                      false
% 0.95/1.03  --qbf_sk_in                             false
% 0.95/1.03  --qbf_pred_elim                         true
% 0.95/1.03  --qbf_split                             512
% 0.95/1.03  
% 0.95/1.03  ------ BMC1 Options
% 0.95/1.03  
% 0.95/1.03  --bmc1_incremental                      false
% 0.95/1.03  --bmc1_axioms                           reachable_all
% 0.95/1.03  --bmc1_min_bound                        0
% 0.95/1.03  --bmc1_max_bound                        -1
% 0.95/1.03  --bmc1_max_bound_default                -1
% 0.95/1.03  --bmc1_symbol_reachability              true
% 0.95/1.03  --bmc1_property_lemmas                  false
% 0.95/1.03  --bmc1_k_induction                      false
% 0.95/1.03  --bmc1_non_equiv_states                 false
% 0.95/1.03  --bmc1_deadlock                         false
% 0.95/1.03  --bmc1_ucm                              false
% 0.95/1.03  --bmc1_add_unsat_core                   none
% 0.95/1.03  --bmc1_unsat_core_children              false
% 0.95/1.03  --bmc1_unsat_core_extrapolate_axioms    false
% 0.95/1.03  --bmc1_out_stat                         full
% 0.95/1.03  --bmc1_ground_init                      false
% 0.95/1.03  --bmc1_pre_inst_next_state              false
% 0.95/1.03  --bmc1_pre_inst_state                   false
% 0.95/1.03  --bmc1_pre_inst_reach_state             false
% 0.95/1.03  --bmc1_out_unsat_core                   false
% 0.95/1.03  --bmc1_aig_witness_out                  false
% 0.95/1.03  --bmc1_verbose                          false
% 0.95/1.03  --bmc1_dump_clauses_tptp                false
% 0.95/1.03  --bmc1_dump_unsat_core_tptp             false
% 0.95/1.03  --bmc1_dump_file                        -
% 0.95/1.03  --bmc1_ucm_expand_uc_limit              128
% 0.95/1.03  --bmc1_ucm_n_expand_iterations          6
% 0.95/1.03  --bmc1_ucm_extend_mode                  1
% 0.95/1.03  --bmc1_ucm_init_mode                    2
% 0.95/1.03  --bmc1_ucm_cone_mode                    none
% 0.95/1.03  --bmc1_ucm_reduced_relation_type        0
% 0.95/1.03  --bmc1_ucm_relax_model                  4
% 0.95/1.03  --bmc1_ucm_full_tr_after_sat            true
% 0.95/1.03  --bmc1_ucm_expand_neg_assumptions       false
% 0.95/1.03  --bmc1_ucm_layered_model                none
% 0.95/1.03  --bmc1_ucm_max_lemma_size               10
% 0.95/1.03  
% 0.95/1.03  ------ AIG Options
% 0.95/1.03  
% 0.95/1.03  --aig_mode                              false
% 0.95/1.03  
% 0.95/1.03  ------ Instantiation Options
% 0.95/1.03  
% 0.95/1.03  --instantiation_flag                    true
% 0.95/1.03  --inst_sos_flag                         false
% 0.95/1.03  --inst_sos_phase                        true
% 0.95/1.03  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 0.95/1.03  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 0.95/1.03  --inst_lit_sel_side                     none
% 0.95/1.03  --inst_solver_per_active                1400
% 0.95/1.03  --inst_solver_calls_frac                1.
% 0.95/1.03  --inst_passive_queue_type               priority_queues
% 0.95/1.03  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 0.95/1.03  --inst_passive_queues_freq              [25;2]
% 0.95/1.03  --inst_dismatching                      true
% 0.95/1.03  --inst_eager_unprocessed_to_passive     true
% 0.95/1.03  --inst_prop_sim_given                   true
% 0.95/1.03  --inst_prop_sim_new                     false
% 0.95/1.03  --inst_subs_new                         false
% 0.95/1.03  --inst_eq_res_simp                      false
% 0.95/1.03  --inst_subs_given                       false
% 0.95/1.03  --inst_orphan_elimination               true
% 0.95/1.03  --inst_learning_loop_flag               true
% 0.95/1.03  --inst_learning_start                   3000
% 0.95/1.03  --inst_learning_factor                  2
% 0.95/1.03  --inst_start_prop_sim_after_learn       3
% 0.95/1.03  --inst_sel_renew                        solver
% 0.95/1.03  --inst_lit_activity_flag                true
% 0.95/1.03  --inst_restr_to_given                   false
% 0.95/1.03  --inst_activity_threshold               500
% 0.95/1.03  --inst_out_proof                        true
% 0.95/1.03  
% 0.95/1.03  ------ Resolution Options
% 0.95/1.03  
% 0.95/1.03  --resolution_flag                       false
% 0.95/1.03  --res_lit_sel                           adaptive
% 0.95/1.03  --res_lit_sel_side                      none
% 0.95/1.03  --res_ordering                          kbo
% 0.95/1.03  --res_to_prop_solver                    active
% 0.95/1.03  --res_prop_simpl_new                    false
% 0.95/1.03  --res_prop_simpl_given                  true
% 0.95/1.03  --res_passive_queue_type                priority_queues
% 0.95/1.03  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 0.95/1.03  --res_passive_queues_freq               [15;5]
% 0.95/1.03  --res_forward_subs                      full
% 0.95/1.03  --res_backward_subs                     full
% 0.95/1.03  --res_forward_subs_resolution           true
% 0.95/1.03  --res_backward_subs_resolution          true
% 0.95/1.03  --res_orphan_elimination                true
% 0.95/1.03  --res_time_limit                        2.
% 0.95/1.03  --res_out_proof                         true
% 0.95/1.03  
% 0.95/1.03  ------ Superposition Options
% 0.95/1.03  
% 0.95/1.03  --superposition_flag                    true
% 0.95/1.03  --sup_passive_queue_type                priority_queues
% 0.95/1.03  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 0.95/1.03  --sup_passive_queues_freq               [8;1;4]
% 0.95/1.03  --demod_completeness_check              fast
% 0.95/1.03  --demod_use_ground                      true
% 0.95/1.03  --sup_to_prop_solver                    passive
% 0.95/1.03  --sup_prop_simpl_new                    true
% 0.95/1.03  --sup_prop_simpl_given                  true
% 0.95/1.03  --sup_fun_splitting                     false
% 0.95/1.03  --sup_smt_interval                      50000
% 0.95/1.03  
% 0.95/1.03  ------ Superposition Simplification Setup
% 0.95/1.03  
% 0.95/1.03  --sup_indices_passive                   []
% 0.95/1.03  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.03  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.03  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 0.95/1.03  --sup_full_triv                         [TrivRules;PropSubs]
% 0.95/1.03  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.03  --sup_full_bw                           [BwDemod]
% 0.95/1.03  --sup_immed_triv                        [TrivRules]
% 0.95/1.03  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 0.95/1.03  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.03  --sup_immed_bw_main                     []
% 0.95/1.03  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.03  --sup_input_triv                        [Unflattening;TrivRules]
% 0.95/1.03  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 0.95/1.03  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 0.95/1.03  
% 0.95/1.03  ------ Combination Options
% 0.95/1.03  
% 0.95/1.03  --comb_res_mult                         3
% 0.95/1.03  --comb_sup_mult                         2
% 0.95/1.03  --comb_inst_mult                        10
% 0.95/1.03  
% 0.95/1.03  ------ Debug Options
% 0.95/1.03  
% 0.95/1.03  --dbg_backtrace                         false
% 0.95/1.03  --dbg_dump_prop_clauses                 false
% 0.95/1.03  --dbg_dump_prop_clauses_file            -
% 0.95/1.03  --dbg_out_stat                          false
% 0.95/1.03  
% 0.95/1.03  
% 0.95/1.03  
% 0.95/1.03  
% 0.95/1.03  ------ Proving...
% 0.95/1.03  
% 0.95/1.03  
% 0.95/1.03  % SZS status Theorem for theBenchmark.p
% 0.95/1.03  
% 0.95/1.03  % SZS output start CNFRefutation for theBenchmark.p
% 0.95/1.03  
% 0.95/1.03  fof(f3,conjecture,(
% 0.95/1.03    ! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) => ~(! [X4,X5] : ~(r2_hidden(X5,X2) & r2_hidden(X4,X1) & k4_tarski(X4,X5) = X0) & r2_hidden(X0,X3)))),
% 0.95/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.03  
% 0.95/1.03  fof(f4,negated_conjecture,(
% 0.95/1.03    ~! [X0,X1,X2,X3] : (m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) => ~(! [X4,X5] : ~(r2_hidden(X5,X2) & r2_hidden(X4,X1) & k4_tarski(X4,X5) = X0) & r2_hidden(X0,X3)))),
% 0.95/1.03    inference(negated_conjecture,[],[f3])).
% 0.95/1.03  
% 0.95/1.03  fof(f6,plain,(
% 0.95/1.03    ? [X0,X1,X2,X3] : ((! [X4,X5] : (~r2_hidden(X5,X2) | ~r2_hidden(X4,X1) | k4_tarski(X4,X5) != X0) & r2_hidden(X0,X3)) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))),
% 0.95/1.03    inference(ennf_transformation,[],[f4])).
% 0.95/1.03  
% 0.95/1.03  fof(f7,plain,(
% 0.95/1.03    ? [X0,X1,X2,X3] : (! [X4,X5] : (~r2_hidden(X5,X2) | ~r2_hidden(X4,X1) | k4_tarski(X4,X5) != X0) & r2_hidden(X0,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))),
% 0.95/1.03    inference(flattening,[],[f6])).
% 0.95/1.03  
% 0.95/1.03  fof(f14,plain,(
% 0.95/1.03    ? [X0,X1,X2,X3] : (! [X4,X5] : (~r2_hidden(X5,X2) | ~r2_hidden(X4,X1) | k4_tarski(X4,X5) != X0) & r2_hidden(X0,X3) & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) => (! [X5,X4] : (~r2_hidden(X5,sK7) | ~r2_hidden(X4,sK6) | k4_tarski(X4,X5) != sK5) & r2_hidden(sK5,sK8) & m1_subset_1(sK8,k1_zfmisc_1(k2_zfmisc_1(sK6,sK7))))),
% 0.95/1.03    introduced(choice_axiom,[])).
% 0.95/1.03  
% 0.95/1.03  fof(f15,plain,(
% 0.95/1.03    ! [X4,X5] : (~r2_hidden(X5,sK7) | ~r2_hidden(X4,sK6) | k4_tarski(X4,X5) != sK5) & r2_hidden(sK5,sK8) & m1_subset_1(sK8,k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)))),
% 0.95/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK5,sK6,sK7,sK8])],[f7,f14])).
% 0.95/1.03  
% 0.95/1.03  fof(f27,plain,(
% 0.95/1.03    ( ! [X4,X5] : (~r2_hidden(X5,sK7) | ~r2_hidden(X4,sK6) | k4_tarski(X4,X5) != sK5) )),
% 0.95/1.03    inference(cnf_transformation,[],[f15])).
% 0.95/1.03  
% 0.95/1.03  fof(f1,axiom,(
% 0.95/1.03    ! [X0,X1,X2] : (k2_zfmisc_1(X0,X1) = X2 <=> ! [X3] : (r2_hidden(X3,X2) <=> ? [X4,X5] : (k4_tarski(X4,X5) = X3 & r2_hidden(X5,X1) & r2_hidden(X4,X0))))),
% 0.95/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.03  
% 0.95/1.03  fof(f8,plain,(
% 0.95/1.03    ! [X0,X1,X2] : ((k2_zfmisc_1(X0,X1) = X2 | ? [X3] : ((! [X4,X5] : (k4_tarski(X4,X5) != X3 | ~r2_hidden(X5,X1) | ~r2_hidden(X4,X0)) | ~r2_hidden(X3,X2)) & (? [X4,X5] : (k4_tarski(X4,X5) = X3 & r2_hidden(X5,X1) & r2_hidden(X4,X0)) | r2_hidden(X3,X2)))) & (! [X3] : ((r2_hidden(X3,X2) | ! [X4,X5] : (k4_tarski(X4,X5) != X3 | ~r2_hidden(X5,X1) | ~r2_hidden(X4,X0))) & (? [X4,X5] : (k4_tarski(X4,X5) = X3 & r2_hidden(X5,X1) & r2_hidden(X4,X0)) | ~r2_hidden(X3,X2))) | k2_zfmisc_1(X0,X1) != X2))),
% 0.95/1.03    inference(nnf_transformation,[],[f1])).
% 0.95/1.03  
% 0.95/1.03  fof(f9,plain,(
% 0.95/1.03    ! [X0,X1,X2] : ((k2_zfmisc_1(X0,X1) = X2 | ? [X3] : ((! [X4,X5] : (k4_tarski(X4,X5) != X3 | ~r2_hidden(X5,X1) | ~r2_hidden(X4,X0)) | ~r2_hidden(X3,X2)) & (? [X6,X7] : (k4_tarski(X6,X7) = X3 & r2_hidden(X7,X1) & r2_hidden(X6,X0)) | r2_hidden(X3,X2)))) & (! [X8] : ((r2_hidden(X8,X2) | ! [X9,X10] : (k4_tarski(X9,X10) != X8 | ~r2_hidden(X10,X1) | ~r2_hidden(X9,X0))) & (? [X11,X12] : (k4_tarski(X11,X12) = X8 & r2_hidden(X12,X1) & r2_hidden(X11,X0)) | ~r2_hidden(X8,X2))) | k2_zfmisc_1(X0,X1) != X2))),
% 0.95/1.03    inference(rectify,[],[f8])).
% 0.95/1.03  
% 0.95/1.03  fof(f12,plain,(
% 0.95/1.03    ! [X8,X1,X0] : (? [X11,X12] : (k4_tarski(X11,X12) = X8 & r2_hidden(X12,X1) & r2_hidden(X11,X0)) => (k4_tarski(sK3(X0,X1,X8),sK4(X0,X1,X8)) = X8 & r2_hidden(sK4(X0,X1,X8),X1) & r2_hidden(sK3(X0,X1,X8),X0)))),
% 0.95/1.03    introduced(choice_axiom,[])).
% 0.95/1.03  
% 0.95/1.03  fof(f11,plain,(
% 0.95/1.03    ( ! [X3] : (! [X2,X1,X0] : (? [X6,X7] : (k4_tarski(X6,X7) = X3 & r2_hidden(X7,X1) & r2_hidden(X6,X0)) => (k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)) = X3 & r2_hidden(sK2(X0,X1,X2),X1) & r2_hidden(sK1(X0,X1,X2),X0)))) )),
% 0.95/1.03    introduced(choice_axiom,[])).
% 0.95/1.03  
% 0.95/1.03  fof(f10,plain,(
% 0.95/1.03    ! [X2,X1,X0] : (? [X3] : ((! [X4,X5] : (k4_tarski(X4,X5) != X3 | ~r2_hidden(X5,X1) | ~r2_hidden(X4,X0)) | ~r2_hidden(X3,X2)) & (? [X6,X7] : (k4_tarski(X6,X7) = X3 & r2_hidden(X7,X1) & r2_hidden(X6,X0)) | r2_hidden(X3,X2))) => ((! [X5,X4] : (k4_tarski(X4,X5) != sK0(X0,X1,X2) | ~r2_hidden(X5,X1) | ~r2_hidden(X4,X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & (? [X7,X6] : (k4_tarski(X6,X7) = sK0(X0,X1,X2) & r2_hidden(X7,X1) & r2_hidden(X6,X0)) | r2_hidden(sK0(X0,X1,X2),X2))))),
% 0.95/1.03    introduced(choice_axiom,[])).
% 0.95/1.03  
% 0.95/1.03  fof(f13,plain,(
% 0.95/1.03    ! [X0,X1,X2] : ((k2_zfmisc_1(X0,X1) = X2 | ((! [X4,X5] : (k4_tarski(X4,X5) != sK0(X0,X1,X2) | ~r2_hidden(X5,X1) | ~r2_hidden(X4,X0)) | ~r2_hidden(sK0(X0,X1,X2),X2)) & ((k4_tarski(sK1(X0,X1,X2),sK2(X0,X1,X2)) = sK0(X0,X1,X2) & r2_hidden(sK2(X0,X1,X2),X1) & r2_hidden(sK1(X0,X1,X2),X0)) | r2_hidden(sK0(X0,X1,X2),X2)))) & (! [X8] : ((r2_hidden(X8,X2) | ! [X9,X10] : (k4_tarski(X9,X10) != X8 | ~r2_hidden(X10,X1) | ~r2_hidden(X9,X0))) & ((k4_tarski(sK3(X0,X1,X8),sK4(X0,X1,X8)) = X8 & r2_hidden(sK4(X0,X1,X8),X1) & r2_hidden(sK3(X0,X1,X8),X0)) | ~r2_hidden(X8,X2))) | k2_zfmisc_1(X0,X1) != X2))),
% 0.95/1.03    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4])],[f9,f12,f11,f10])).
% 0.95/1.03  
% 0.95/1.03  fof(f18,plain,(
% 0.95/1.03    ( ! [X2,X0,X8,X1] : (k4_tarski(sK3(X0,X1,X8),sK4(X0,X1,X8)) = X8 | ~r2_hidden(X8,X2) | k2_zfmisc_1(X0,X1) != X2) )),
% 0.95/1.03    inference(cnf_transformation,[],[f13])).
% 0.95/1.03  
% 0.95/1.03  fof(f30,plain,(
% 0.95/1.03    ( ! [X0,X8,X1] : (k4_tarski(sK3(X0,X1,X8),sK4(X0,X1,X8)) = X8 | ~r2_hidden(X8,k2_zfmisc_1(X0,X1))) )),
% 0.95/1.03    inference(equality_resolution,[],[f18])).
% 0.95/1.03  
% 0.95/1.03  fof(f16,plain,(
% 0.95/1.03    ( ! [X2,X0,X8,X1] : (r2_hidden(sK3(X0,X1,X8),X0) | ~r2_hidden(X8,X2) | k2_zfmisc_1(X0,X1) != X2) )),
% 0.95/1.03    inference(cnf_transformation,[],[f13])).
% 0.95/1.03  
% 0.95/1.03  fof(f32,plain,(
% 0.95/1.03    ( ! [X0,X8,X1] : (r2_hidden(sK3(X0,X1,X8),X0) | ~r2_hidden(X8,k2_zfmisc_1(X0,X1))) )),
% 0.95/1.03    inference(equality_resolution,[],[f16])).
% 0.95/1.03  
% 0.95/1.03  fof(f17,plain,(
% 0.95/1.03    ( ! [X2,X0,X8,X1] : (r2_hidden(sK4(X0,X1,X8),X1) | ~r2_hidden(X8,X2) | k2_zfmisc_1(X0,X1) != X2) )),
% 0.95/1.03    inference(cnf_transformation,[],[f13])).
% 0.95/1.03  
% 0.95/1.03  fof(f31,plain,(
% 0.95/1.03    ( ! [X0,X8,X1] : (r2_hidden(sK4(X0,X1,X8),X1) | ~r2_hidden(X8,k2_zfmisc_1(X0,X1))) )),
% 0.95/1.03    inference(equality_resolution,[],[f17])).
% 0.95/1.03  
% 0.95/1.03  fof(f2,axiom,(
% 0.95/1.03    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => ! [X2] : (r2_hidden(X2,X1) => r2_hidden(X2,X0)))),
% 0.95/1.03    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 0.95/1.03  
% 0.95/1.03  fof(f5,plain,(
% 0.95/1.03    ! [X0,X1] : (! [X2] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1)) | ~m1_subset_1(X1,k1_zfmisc_1(X0)))),
% 0.95/1.03    inference(ennf_transformation,[],[f2])).
% 0.95/1.03  
% 0.95/1.03  fof(f24,plain,(
% 0.95/1.03    ( ! [X2,X0,X1] : (r2_hidden(X2,X0) | ~r2_hidden(X2,X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) )),
% 0.95/1.03    inference(cnf_transformation,[],[f5])).
% 0.95/1.03  
% 0.95/1.03  fof(f25,plain,(
% 0.95/1.03    m1_subset_1(sK8,k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)))),
% 0.95/1.03    inference(cnf_transformation,[],[f15])).
% 0.95/1.03  
% 0.95/1.03  fof(f26,plain,(
% 0.95/1.03    r2_hidden(sK5,sK8)),
% 0.95/1.03    inference(cnf_transformation,[],[f15])).
% 0.95/1.03  
% 0.95/1.03  cnf(c_9,negated_conjecture,
% 0.95/1.03      ( ~ r2_hidden(X0,sK6)
% 0.95/1.03      | ~ r2_hidden(X1,sK7)
% 0.95/1.03      | k4_tarski(X0,X1) != sK5 ),
% 0.95/1.03      inference(cnf_transformation,[],[f27]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_802,plain,
% 0.95/1.03      ( ~ r2_hidden(X0,sK7)
% 0.95/1.03      | ~ r2_hidden(sK3(sK6,sK7,X1),sK6)
% 0.95/1.03      | k4_tarski(sK3(sK6,sK7,X1),X0) != sK5 ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_9]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_924,plain,
% 0.95/1.03      ( ~ r2_hidden(sK4(sK6,sK7,X0),sK7)
% 0.95/1.03      | ~ r2_hidden(sK3(sK6,sK7,X1),sK6)
% 0.95/1.03      | k4_tarski(sK3(sK6,sK7,X1),sK4(sK6,sK7,X0)) != sK5 ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_802]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_926,plain,
% 0.95/1.03      ( ~ r2_hidden(sK4(sK6,sK7,sK5),sK7)
% 0.95/1.03      | ~ r2_hidden(sK3(sK6,sK7,sK5),sK6)
% 0.95/1.03      | k4_tarski(sK3(sK6,sK7,sK5),sK4(sK6,sK7,sK5)) != sK5 ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_924]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_5,plain,
% 0.95/1.03      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
% 0.95/1.03      | k4_tarski(sK3(X1,X2,X0),sK4(X1,X2,X0)) = X0 ),
% 0.95/1.03      inference(cnf_transformation,[],[f30]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_612,plain,
% 0.95/1.03      ( ~ r2_hidden(X0,k2_zfmisc_1(sK6,sK7))
% 0.95/1.03      | k4_tarski(sK3(sK6,sK7,X0),sK4(sK6,sK7,X0)) = X0 ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_5]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_624,plain,
% 0.95/1.03      ( ~ r2_hidden(sK5,k2_zfmisc_1(sK6,sK7))
% 0.95/1.03      | k4_tarski(sK3(sK6,sK7,sK5),sK4(sK6,sK7,sK5)) = sK5 ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_612]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_7,plain,
% 0.95/1.03      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
% 0.95/1.03      | r2_hidden(sK3(X1,X2,X0),X1) ),
% 0.95/1.03      inference(cnf_transformation,[],[f32]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_613,plain,
% 0.95/1.03      ( ~ r2_hidden(X0,k2_zfmisc_1(sK6,sK7))
% 0.95/1.03      | r2_hidden(sK3(sK6,sK7,X0),sK6) ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_7]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_620,plain,
% 0.95/1.03      ( r2_hidden(sK3(sK6,sK7,sK5),sK6)
% 0.95/1.03      | ~ r2_hidden(sK5,k2_zfmisc_1(sK6,sK7)) ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_613]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_6,plain,
% 0.95/1.03      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
% 0.95/1.03      | r2_hidden(sK4(X1,X2,X0),X2) ),
% 0.95/1.03      inference(cnf_transformation,[],[f31]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_614,plain,
% 0.95/1.03      ( ~ r2_hidden(X0,k2_zfmisc_1(sK6,sK7))
% 0.95/1.03      | r2_hidden(sK4(sK6,sK7,X0),sK7) ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_6]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_616,plain,
% 0.95/1.03      ( r2_hidden(sK4(sK6,sK7,sK5),sK7)
% 0.95/1.03      | ~ r2_hidden(sK5,k2_zfmisc_1(sK6,sK7)) ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_614]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_8,plain,
% 0.95/1.03      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 0.95/1.03      | ~ r2_hidden(X2,X0)
% 0.95/1.03      | r2_hidden(X2,X1) ),
% 0.95/1.03      inference(cnf_transformation,[],[f24]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_11,negated_conjecture,
% 0.95/1.03      ( m1_subset_1(sK8,k1_zfmisc_1(k2_zfmisc_1(sK6,sK7))) ),
% 0.95/1.03      inference(cnf_transformation,[],[f25]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_137,plain,
% 0.95/1.03      ( ~ r2_hidden(X0,X1)
% 0.95/1.03      | r2_hidden(X0,X2)
% 0.95/1.03      | k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) != k1_zfmisc_1(X2)
% 0.95/1.03      | sK8 != X1 ),
% 0.95/1.03      inference(resolution_lifted,[status(thm)],[c_8,c_11]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_138,plain,
% 0.95/1.03      ( r2_hidden(X0,X1)
% 0.95/1.03      | ~ r2_hidden(X0,sK8)
% 0.95/1.03      | k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) != k1_zfmisc_1(X1) ),
% 0.95/1.03      inference(unflattening,[status(thm)],[c_137]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_513,plain,
% 0.95/1.03      ( r2_hidden(X0,k2_zfmisc_1(sK6,sK7))
% 0.95/1.03      | ~ r2_hidden(X0,sK8)
% 0.95/1.03      | k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) != k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_138]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_515,plain,
% 0.95/1.03      ( r2_hidden(sK5,k2_zfmisc_1(sK6,sK7))
% 0.95/1.03      | ~ r2_hidden(sK5,sK8)
% 0.95/1.03      | k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) != k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_513]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_233,plain,( X0 = X0 ),theory(equality) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_512,plain,
% 0.95/1.03      ( k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) = k1_zfmisc_1(k2_zfmisc_1(sK6,sK7)) ),
% 0.95/1.03      inference(instantiation,[status(thm)],[c_233]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(c_10,negated_conjecture,
% 0.95/1.03      ( r2_hidden(sK5,sK8) ),
% 0.95/1.03      inference(cnf_transformation,[],[f26]) ).
% 0.95/1.03  
% 0.95/1.03  cnf(contradiction,plain,
% 0.95/1.03      ( $false ),
% 0.95/1.03      inference(minisat,
% 0.95/1.03                [status(thm)],
% 0.95/1.03                [c_926,c_624,c_620,c_616,c_515,c_512,c_10]) ).
% 0.95/1.03  
% 0.95/1.03  
% 0.95/1.03  % SZS output end CNFRefutation for theBenchmark.p
% 0.95/1.03  
% 0.95/1.03  ------                               Statistics
% 0.95/1.03  
% 0.95/1.03  ------ General
% 0.95/1.03  
% 0.95/1.03  abstr_ref_over_cycles:                  0
% 0.95/1.03  abstr_ref_under_cycles:                 0
% 0.95/1.03  gc_basic_clause_elim:                   0
% 0.95/1.03  forced_gc_time:                         0
% 0.95/1.03  parsing_time:                           0.008
% 0.95/1.03  unif_index_cands_time:                  0.
% 0.95/1.03  unif_index_add_time:                    0.
% 0.95/1.03  orderings_time:                         0.
% 0.95/1.03  out_proof_time:                         0.008
% 0.95/1.03  total_time:                             0.062
% 0.95/1.03  num_of_symbols:                         45
% 0.95/1.03  num_of_terms:                           1188
% 0.95/1.03  
% 0.95/1.03  ------ Preprocessing
% 0.95/1.03  
% 0.95/1.03  num_of_splits:                          0
% 0.95/1.03  num_of_split_atoms:                     0
% 0.95/1.03  num_of_reused_defs:                     0
% 0.95/1.03  num_eq_ax_congr_red:                    45
% 0.95/1.03  num_of_sem_filtered_clauses:            1
% 0.95/1.03  num_of_subtypes:                        0
% 0.95/1.03  monotx_restored_types:                  0
% 0.95/1.03  sat_num_of_epr_types:                   0
% 0.95/1.03  sat_num_of_non_cyclic_types:            0
% 0.95/1.03  sat_guarded_non_collapsed_types:        0
% 0.95/1.03  num_pure_diseq_elim:                    0
% 0.95/1.03  simp_replaced_by:                       0
% 0.95/1.03  res_preprocessed:                       58
% 0.95/1.03  prep_upred:                             0
% 0.95/1.03  prep_unflattend:                        1
% 0.95/1.03  smt_new_axioms:                         0
% 0.95/1.03  pred_elim_cands:                        1
% 0.95/1.03  pred_elim:                              1
% 0.95/1.03  pred_elim_cl:                           1
% 0.95/1.03  pred_elim_cycles:                       3
% 0.95/1.03  merged_defs:                            0
% 0.95/1.03  merged_defs_ncl:                        0
% 0.95/1.03  bin_hyper_res:                          0
% 0.95/1.03  prep_cycles:                            4
% 0.95/1.03  pred_elim_time:                         0.
% 0.95/1.03  splitting_time:                         0.
% 0.95/1.03  sem_filter_time:                        0.
% 0.95/1.03  monotx_time:                            0.
% 0.95/1.03  subtype_inf_time:                       0.
% 0.95/1.03  
% 0.95/1.03  ------ Problem properties
% 0.95/1.03  
% 0.95/1.03  clauses:                                11
% 0.95/1.03  conjectures:                            2
% 0.95/1.03  epr:                                    1
% 0.95/1.03  horn:                                   8
% 0.95/1.03  ground:                                 1
% 0.95/1.03  unary:                                  1
% 0.95/1.03  binary:                                 3
% 0.95/1.03  lits:                                   30
% 0.95/1.03  lits_eq:                                9
% 0.95/1.03  fd_pure:                                0
% 0.95/1.03  fd_pseudo:                              0
% 0.95/1.03  fd_cond:                                0
% 0.95/1.03  fd_pseudo_cond:                         4
% 0.95/1.03  ac_symbols:                             0
% 0.95/1.03  
% 0.95/1.03  ------ Propositional Solver
% 0.95/1.03  
% 0.95/1.03  prop_solver_calls:                      25
% 0.95/1.03  prop_fast_solver_calls:                 328
% 0.95/1.03  smt_solver_calls:                       0
% 0.95/1.03  smt_fast_solver_calls:                  0
% 0.95/1.03  prop_num_of_clauses:                    300
% 0.95/1.03  prop_preprocess_simplified:             1986
% 0.95/1.03  prop_fo_subsumed:                       0
% 0.95/1.03  prop_solver_time:                       0.
% 0.95/1.03  smt_solver_time:                        0.
% 0.95/1.03  smt_fast_solver_time:                   0.
% 0.95/1.03  prop_fast_solver_time:                  0.
% 0.95/1.03  prop_unsat_core_time:                   0.
% 0.95/1.03  
% 0.95/1.03  ------ QBF
% 0.95/1.03  
% 0.95/1.03  qbf_q_res:                              0
% 0.95/1.03  qbf_num_tautologies:                    0
% 0.95/1.03  qbf_prep_cycles:                        0
% 0.95/1.03  
% 0.95/1.03  ------ BMC1
% 0.95/1.03  
% 0.95/1.03  bmc1_current_bound:                     -1
% 0.95/1.03  bmc1_last_solved_bound:                 -1
% 0.95/1.03  bmc1_unsat_core_size:                   -1
% 0.95/1.03  bmc1_unsat_core_parents_size:           -1
% 0.95/1.03  bmc1_merge_next_fun:                    0
% 0.95/1.03  bmc1_unsat_core_clauses_time:           0.
% 0.95/1.03  
% 0.95/1.03  ------ Instantiation
% 0.95/1.03  
% 0.95/1.03  inst_num_of_clauses:                    86
% 0.95/1.03  inst_num_in_passive:                    46
% 0.95/1.03  inst_num_in_active:                     35
% 0.95/1.03  inst_num_in_unprocessed:                4
% 0.95/1.03  inst_num_of_loops:                      42
% 0.95/1.03  inst_num_of_learning_restarts:          0
% 0.95/1.03  inst_num_moves_active_passive:          5
% 0.95/1.03  inst_lit_activity:                      0
% 0.95/1.03  inst_lit_activity_moves:                0
% 0.95/1.03  inst_num_tautologies:                   0
% 0.95/1.03  inst_num_prop_implied:                  0
% 0.95/1.03  inst_num_existing_simplified:           0
% 0.95/1.03  inst_num_eq_res_simplified:             0
% 0.95/1.03  inst_num_child_elim:                    0
% 0.95/1.03  inst_num_of_dismatching_blockings:      5
% 0.95/1.03  inst_num_of_non_proper_insts:           39
% 0.95/1.03  inst_num_of_duplicates:                 0
% 0.95/1.03  inst_inst_num_from_inst_to_res:         0
% 0.95/1.03  inst_dismatching_checking_time:         0.
% 0.95/1.03  
% 0.95/1.03  ------ Resolution
% 0.95/1.03  
% 0.95/1.03  res_num_of_clauses:                     0
% 0.95/1.03  res_num_in_passive:                     0
% 0.95/1.03  res_num_in_active:                      0
% 0.95/1.03  res_num_of_loops:                       62
% 0.95/1.03  res_forward_subset_subsumed:            1
% 0.95/1.03  res_backward_subset_subsumed:           0
% 0.95/1.03  res_forward_subsumed:                   0
% 0.95/1.03  res_backward_subsumed:                  0
% 0.95/1.03  res_forward_subsumption_resolution:     0
% 0.95/1.03  res_backward_subsumption_resolution:    0
% 0.95/1.03  res_clause_to_clause_subsumption:       23
% 0.95/1.03  res_orphan_elimination:                 0
% 0.95/1.03  res_tautology_del:                      2
% 0.95/1.03  res_num_eq_res_simplified:              0
% 0.95/1.03  res_num_sel_changes:                    0
% 0.95/1.03  res_moves_from_active_to_pass:          0
% 0.95/1.03  
% 0.95/1.03  ------ Superposition
% 0.95/1.03  
% 0.95/1.03  sup_time_total:                         0.
% 0.95/1.03  sup_time_generating:                    0.
% 0.95/1.03  sup_time_sim_full:                      0.
% 0.95/1.03  sup_time_sim_immed:                     0.
% 0.95/1.03  
% 0.95/1.03  sup_num_of_clauses:                     18
% 0.95/1.03  sup_num_in_active:                      8
% 0.95/1.03  sup_num_in_passive:                     10
% 0.95/1.03  sup_num_of_loops:                       8
% 0.95/1.03  sup_fw_superposition:                   6
% 0.95/1.03  sup_bw_superposition:                   0
% 0.95/1.03  sup_immediate_simplified:               0
% 0.95/1.03  sup_given_eliminated:                   0
% 0.95/1.03  comparisons_done:                       0
% 0.95/1.03  comparisons_avoided:                    0
% 0.95/1.03  
% 0.95/1.03  ------ Simplifications
% 0.95/1.03  
% 0.95/1.03  
% 0.95/1.03  sim_fw_subset_subsumed:                 0
% 0.95/1.03  sim_bw_subset_subsumed:                 0
% 0.95/1.03  sim_fw_subsumed:                        0
% 0.95/1.03  sim_bw_subsumed:                        0
% 0.95/1.03  sim_fw_subsumption_res:                 0
% 0.95/1.03  sim_bw_subsumption_res:                 0
% 0.95/1.03  sim_tautology_del:                      0
% 0.95/1.03  sim_eq_tautology_del:                   0
% 0.95/1.03  sim_eq_res_simp:                        0
% 0.95/1.03  sim_fw_demodulated:                     0
% 0.95/1.03  sim_bw_demodulated:                     0
% 0.95/1.03  sim_light_normalised:                   0
% 0.95/1.03  sim_joinable_taut:                      0
% 0.95/1.03  sim_joinable_simp:                      0
% 0.95/1.03  sim_ac_normalised:                      0
% 0.95/1.03  sim_smt_subsumption:                    0
% 0.95/1.03  
%------------------------------------------------------------------------------
