%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 12:24:33 EST 2020

% Result     : Theorem 1.09s
% Output     : CNFRefutation 1.09s
% Verified   : 
% Statistics : Number of formulae       :   83 ( 214 expanded)
%              Number of clauses        :   41 (  62 expanded)
%              Number of leaves         :   12 (  52 expanded)
%              Depth                    :   16
%              Number of atoms          :  228 ( 846 expanded)
%              Number of equality atoms :   96 ( 241 expanded)
%              Maximal formula depth    :   10 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f8,axiom,(
    ! [X0,X1] :
      ( ( m1_subset_1(X1,X0)
        & ~ v1_xboole_0(X0) )
     => k1_tarski(X1) = k6_domain_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f19,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(flattening,[],[f18])).

fof(f44,plain,(
    ! [X0,X1] :
      ( k1_tarski(X1) = k6_domain_1(X0,X1)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f9,axiom,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ( v1_zfmisc_1(X0)
      <=> ? [X1] :
            ( k6_domain_1(X0,X1) = X0
            & m1_subset_1(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0] :
      ( ( v1_zfmisc_1(X0)
      <=> ? [X1] :
            ( k6_domain_1(X0,X1) = X0
            & m1_subset_1(X1,X0) ) )
      | v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f23,plain,(
    ! [X0] :
      ( ( ( v1_zfmisc_1(X0)
          | ! [X1] :
              ( k6_domain_1(X0,X1) != X0
              | ~ m1_subset_1(X1,X0) ) )
        & ( ? [X1] :
              ( k6_domain_1(X0,X1) = X0
              & m1_subset_1(X1,X0) )
          | ~ v1_zfmisc_1(X0) ) )
      | v1_xboole_0(X0) ) ),
    inference(nnf_transformation,[],[f20])).

fof(f24,plain,(
    ! [X0] :
      ( ( ( v1_zfmisc_1(X0)
          | ! [X1] :
              ( k6_domain_1(X0,X1) != X0
              | ~ m1_subset_1(X1,X0) ) )
        & ( ? [X2] :
              ( k6_domain_1(X0,X2) = X0
              & m1_subset_1(X2,X0) )
          | ~ v1_zfmisc_1(X0) ) )
      | v1_xboole_0(X0) ) ),
    inference(rectify,[],[f23])).

fof(f25,plain,(
    ! [X0] :
      ( ? [X2] :
          ( k6_domain_1(X0,X2) = X0
          & m1_subset_1(X2,X0) )
     => ( k6_domain_1(X0,sK0(X0)) = X0
        & m1_subset_1(sK0(X0),X0) ) ) ),
    introduced(choice_axiom,[])).

fof(f26,plain,(
    ! [X0] :
      ( ( ( v1_zfmisc_1(X0)
          | ! [X1] :
              ( k6_domain_1(X0,X1) != X0
              | ~ m1_subset_1(X1,X0) ) )
        & ( ( k6_domain_1(X0,sK0(X0)) = X0
            & m1_subset_1(sK0(X0),X0) )
          | ~ v1_zfmisc_1(X0) ) )
      | v1_xboole_0(X0) ) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f25])).

fof(f45,plain,(
    ! [X0] :
      ( m1_subset_1(sK0(X0),X0)
      | ~ v1_zfmisc_1(X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f10,conjecture,(
    ! [X0] :
      ( ~ v1_xboole_0(X0)
     => ! [X1] :
          ( ( v1_zfmisc_1(X1)
            & ~ v1_xboole_0(X1) )
         => ( r1_tarski(X0,X1)
           => X0 = X1 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0] :
        ( ~ v1_xboole_0(X0)
       => ! [X1] :
            ( ( v1_zfmisc_1(X1)
              & ~ v1_xboole_0(X1) )
           => ( r1_tarski(X0,X1)
             => X0 = X1 ) ) ) ),
    inference(negated_conjecture,[],[f10])).

fof(f21,plain,(
    ? [X0] :
      ( ? [X1] :
          ( X0 != X1
          & r1_tarski(X0,X1)
          & v1_zfmisc_1(X1)
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f11])).

fof(f22,plain,(
    ? [X0] :
      ( ? [X1] :
          ( X0 != X1
          & r1_tarski(X0,X1)
          & v1_zfmisc_1(X1)
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(X0) ) ),
    inference(flattening,[],[f21])).

fof(f28,plain,(
    ! [X0] :
      ( ? [X1] :
          ( X0 != X1
          & r1_tarski(X0,X1)
          & v1_zfmisc_1(X1)
          & ~ v1_xboole_0(X1) )
     => ( sK2 != X0
        & r1_tarski(X0,sK2)
        & v1_zfmisc_1(sK2)
        & ~ v1_xboole_0(sK2) ) ) ),
    introduced(choice_axiom,[])).

fof(f27,plain,
    ( ? [X0] :
        ( ? [X1] :
            ( X0 != X1
            & r1_tarski(X0,X1)
            & v1_zfmisc_1(X1)
            & ~ v1_xboole_0(X1) )
        & ~ v1_xboole_0(X0) )
   => ( ? [X1] :
          ( sK1 != X1
          & r1_tarski(sK1,X1)
          & v1_zfmisc_1(X1)
          & ~ v1_xboole_0(X1) )
      & ~ v1_xboole_0(sK1) ) ),
    introduced(choice_axiom,[])).

fof(f29,plain,
    ( sK1 != sK2
    & r1_tarski(sK1,sK2)
    & v1_zfmisc_1(sK2)
    & ~ v1_xboole_0(sK2)
    & ~ v1_xboole_0(sK1) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f22,f28,f27])).

fof(f50,plain,(
    v1_zfmisc_1(sK2) ),
    inference(cnf_transformation,[],[f29])).

fof(f49,plain,(
    ~ v1_xboole_0(sK2) ),
    inference(cnf_transformation,[],[f29])).

fof(f46,plain,(
    ! [X0] :
      ( k6_domain_1(X0,sK0(X0)) = X0
      | ~ v1_zfmisc_1(X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f31,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f51,plain,(
    r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f29])).

fof(f7,axiom,(
    ! [X0,X1,X2] :
      ~ ( ~ ( k1_xboole_0 = X2
            & k1_tarski(X0) = X1 )
        & ~ ( k1_tarski(X0) = X2
            & k1_xboole_0 = X1 )
        & ~ ( k1_tarski(X0) = X2
            & k1_tarski(X0) = X1 )
        & k2_xboole_0(X1,X2) = k1_tarski(X0) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1,X2] :
      ( ( k1_xboole_0 = X2
        & k1_tarski(X0) = X1 )
      | ( k1_tarski(X0) = X2
        & k1_xboole_0 = X1 )
      | ( k1_tarski(X0) = X2
        & k1_tarski(X0) = X1 )
      | k2_xboole_0(X1,X2) != k1_tarski(X0) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f36,plain,(
    ! [X2,X0,X1] :
      ( k1_tarski(X0) = X1
      | k1_xboole_0 = X1
      | k1_tarski(X0) = X1
      | k2_xboole_0(X1,X2) != k1_tarski(X0) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f48,plain,(
    ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f29])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
    <=> k4_xboole_0(X0,X1) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = X0
     => r1_xboole_0(X0,X1) ) ),
    inference(unused_predicate_definition_removal,[],[f6])).

fof(f16,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
      | k4_xboole_0(X0,X1) != X0 ) ),
    inference(ennf_transformation,[],[f12])).

fof(f35,plain,(
    ! [X0,X1] :
      ( r1_xboole_0(X0,X1)
      | k4_xboole_0(X0,X1) != X0 ) ),
    inference(cnf_transformation,[],[f16])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ~ ( r1_xboole_0(X1,X0)
          & r1_tarski(X1,X0) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f15,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f14])).

fof(f34,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

fof(f4,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f4])).

fof(f52,plain,(
    sK1 != sK2 ),
    inference(cnf_transformation,[],[f29])).

cnf(c_14,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | k6_domain_1(X1,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_17,plain,
    ( m1_subset_1(sK0(X0),X0)
    | ~ v1_zfmisc_1(X0)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_215,plain,
    ( ~ v1_zfmisc_1(X0)
    | v1_xboole_0(X1)
    | v1_xboole_0(X0)
    | X0 != X1
    | k6_domain_1(X1,X2) = k1_tarski(X2)
    | sK0(X0) != X2 ),
    inference(resolution_lifted,[status(thm)],[c_14,c_17])).

cnf(c_216,plain,
    ( ~ v1_zfmisc_1(X0)
    | v1_xboole_0(X0)
    | k6_domain_1(X0,sK0(X0)) = k1_tarski(sK0(X0)) ),
    inference(unflattening,[status(thm)],[c_215])).

cnf(c_20,negated_conjecture,
    ( v1_zfmisc_1(sK2) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_232,plain,
    ( v1_xboole_0(X0)
    | k6_domain_1(X0,sK0(X0)) = k1_tarski(sK0(X0))
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_216,c_20])).

cnf(c_233,plain,
    ( v1_xboole_0(sK2)
    | k6_domain_1(sK2,sK0(sK2)) = k1_tarski(sK0(sK2)) ),
    inference(unflattening,[status(thm)],[c_232])).

cnf(c_21,negated_conjecture,
    ( ~ v1_xboole_0(sK2) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_235,plain,
    ( k6_domain_1(sK2,sK0(sK2)) = k1_tarski(sK0(sK2)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_233,c_21])).

cnf(c_16,plain,
    ( ~ v1_zfmisc_1(X0)
    | v1_xboole_0(X0)
    | k6_domain_1(X0,sK0(X0)) = X0 ),
    inference(cnf_transformation,[],[f46])).

cnf(c_240,plain,
    ( v1_xboole_0(X0)
    | k6_domain_1(X0,sK0(X0)) = X0
    | sK2 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_16,c_20])).

cnf(c_241,plain,
    ( v1_xboole_0(sK2)
    | k6_domain_1(sK2,sK0(sK2)) = sK2 ),
    inference(unflattening,[status(thm)],[c_240])).

cnf(c_243,plain,
    ( k6_domain_1(sK2,sK0(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_241,c_21])).

cnf(c_391,plain,
    ( k1_tarski(sK0(sK2)) = sK2 ),
    inference(light_normalisation,[status(thm)],[c_235,c_243])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | k2_xboole_0(X0,X1) = X1 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_19,negated_conjecture,
    ( r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_203,plain,
    ( k2_xboole_0(X0,X1) = X1
    | sK2 != X1
    | sK1 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_1,c_19])).

cnf(c_204,plain,
    ( k2_xboole_0(sK1,sK2) = sK2 ),
    inference(unflattening,[status(thm)],[c_203])).

cnf(c_13,plain,
    ( k2_xboole_0(X0,X1) != k1_tarski(X2)
    | k1_tarski(X2) = X0
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_678,plain,
    ( k1_tarski(X0) != sK2
    | k1_tarski(X0) = sK1
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_204,c_13])).

cnf(c_22,negated_conjecture,
    ( ~ v1_xboole_0(sK1) ),
    inference(cnf_transformation,[],[f48])).

cnf(c_5,plain,
    ( r1_xboole_0(X0,X1)
    | k4_xboole_0(X0,X1) != X0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_4,plain,
    ( ~ r1_xboole_0(X0,X1)
    | ~ r1_tarski(X0,X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_158,plain,
    ( ~ r1_tarski(X0,X1)
    | v1_xboole_0(X0)
    | k4_xboole_0(X0,X1) != X0 ),
    inference(resolution,[status(thm)],[c_5,c_4])).

cnf(c_2,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_176,plain,
    ( v1_xboole_0(X0)
    | X1 != X2
    | k4_xboole_0(X0,X2) != X0
    | k1_xboole_0 != X0 ),
    inference(resolution_lifted,[status(thm)],[c_158,c_2])).

cnf(c_177,plain,
    ( v1_xboole_0(k1_xboole_0)
    | k4_xboole_0(k1_xboole_0,X0) != k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_176])).

cnf(c_42,plain,
    ( r1_xboole_0(k1_xboole_0,k1_xboole_0)
    | k4_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_5])).

cnf(c_45,plain,
    ( ~ r1_xboole_0(k1_xboole_0,k1_xboole_0)
    | ~ r1_tarski(k1_xboole_0,k1_xboole_0)
    | v1_xboole_0(k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_3,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f33])).

cnf(c_47,plain,
    ( k4_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_49,plain,
    ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
    inference(instantiation,[status(thm)],[c_2])).

cnf(c_181,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_177,c_42,c_45,c_47,c_49])).

cnf(c_254,plain,
    ( sK1 != k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_22,c_181])).

cnf(c_686,plain,
    ( k1_tarski(X0) = sK1
    | k1_tarski(X0) != sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_678,c_254])).

cnf(c_687,plain,
    ( k1_tarski(X0) != sK2
    | k1_tarski(X0) = sK1 ),
    inference(renaming,[status(thm)],[c_686])).

cnf(c_691,plain,
    ( k1_tarski(sK0(sK2)) = sK1 ),
    inference(superposition,[status(thm)],[c_391,c_687])).

cnf(c_829,plain,
    ( sK2 = sK1 ),
    inference(demodulation,[status(thm)],[c_691,c_391])).

cnf(c_18,negated_conjecture,
    ( sK1 != sK2 ),
    inference(cnf_transformation,[],[f52])).

cnf(c_838,plain,
    ( sK1 != sK1 ),
    inference(demodulation,[status(thm)],[c_829,c_18])).

cnf(c_839,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_838])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n003.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:23:12 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 1.09/0.97  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.09/0.97  
% 1.09/0.97  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.09/0.97  
% 1.09/0.97  ------  iProver source info
% 1.09/0.97  
% 1.09/0.97  git: date: 2020-06-30 10:37:57 +0100
% 1.09/0.97  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.09/0.97  git: non_committed_changes: false
% 1.09/0.97  git: last_make_outside_of_git: false
% 1.09/0.97  
% 1.09/0.97  ------ 
% 1.09/0.97  
% 1.09/0.97  ------ Input Options
% 1.09/0.97  
% 1.09/0.97  --out_options                           all
% 1.09/0.97  --tptp_safe_out                         true
% 1.09/0.97  --problem_path                          ""
% 1.09/0.97  --include_path                          ""
% 1.09/0.97  --clausifier                            res/vclausify_rel
% 1.09/0.97  --clausifier_options                    --mode clausify
% 1.09/0.97  --stdin                                 false
% 1.09/0.97  --stats_out                             all
% 1.09/0.97  
% 1.09/0.97  ------ General Options
% 1.09/0.97  
% 1.09/0.97  --fof                                   false
% 1.09/0.97  --time_out_real                         305.
% 1.09/0.97  --time_out_virtual                      -1.
% 1.09/0.97  --symbol_type_check                     false
% 1.09/0.97  --clausify_out                          false
% 1.09/0.97  --sig_cnt_out                           false
% 1.09/0.97  --trig_cnt_out                          false
% 1.09/0.97  --trig_cnt_out_tolerance                1.
% 1.09/0.97  --trig_cnt_out_sk_spl                   false
% 1.09/0.97  --abstr_cl_out                          false
% 1.09/0.97  
% 1.09/0.97  ------ Global Options
% 1.09/0.97  
% 1.09/0.97  --schedule                              default
% 1.09/0.97  --add_important_lit                     false
% 1.09/0.97  --prop_solver_per_cl                    1000
% 1.09/0.97  --min_unsat_core                        false
% 1.09/0.97  --soft_assumptions                      false
% 1.09/0.97  --soft_lemma_size                       3
% 1.09/0.97  --prop_impl_unit_size                   0
% 1.09/0.97  --prop_impl_unit                        []
% 1.09/0.97  --share_sel_clauses                     true
% 1.09/0.97  --reset_solvers                         false
% 1.09/0.97  --bc_imp_inh                            [conj_cone]
% 1.09/0.97  --conj_cone_tolerance                   3.
% 1.09/0.97  --extra_neg_conj                        none
% 1.09/0.97  --large_theory_mode                     true
% 1.09/0.97  --prolific_symb_bound                   200
% 1.09/0.97  --lt_threshold                          2000
% 1.09/0.97  --clause_weak_htbl                      true
% 1.09/0.97  --gc_record_bc_elim                     false
% 1.09/0.97  
% 1.09/0.97  ------ Preprocessing Options
% 1.09/0.97  
% 1.09/0.97  --preprocessing_flag                    true
% 1.09/0.97  --time_out_prep_mult                    0.1
% 1.09/0.97  --splitting_mode                        input
% 1.09/0.97  --splitting_grd                         true
% 1.09/0.97  --splitting_cvd                         false
% 1.09/0.97  --splitting_cvd_svl                     false
% 1.09/0.97  --splitting_nvd                         32
% 1.09/0.97  --sub_typing                            true
% 1.09/0.97  --prep_gs_sim                           true
% 1.09/0.97  --prep_unflatten                        true
% 1.09/0.97  --prep_res_sim                          true
% 1.09/0.97  --prep_upred                            true
% 1.09/0.97  --prep_sem_filter                       exhaustive
% 1.09/0.97  --prep_sem_filter_out                   false
% 1.09/0.97  --pred_elim                             true
% 1.09/0.97  --res_sim_input                         true
% 1.09/0.97  --eq_ax_congr_red                       true
% 1.09/0.97  --pure_diseq_elim                       true
% 1.09/0.97  --brand_transform                       false
% 1.09/0.97  --non_eq_to_eq                          false
% 1.09/0.97  --prep_def_merge                        true
% 1.09/0.97  --prep_def_merge_prop_impl              false
% 1.09/0.97  --prep_def_merge_mbd                    true
% 1.09/0.97  --prep_def_merge_tr_red                 false
% 1.09/0.97  --prep_def_merge_tr_cl                  false
% 1.09/0.97  --smt_preprocessing                     true
% 1.09/0.97  --smt_ac_axioms                         fast
% 1.09/0.97  --preprocessed_out                      false
% 1.09/0.97  --preprocessed_stats                    false
% 1.09/0.97  
% 1.09/0.97  ------ Abstraction refinement Options
% 1.09/0.97  
% 1.09/0.97  --abstr_ref                             []
% 1.09/0.97  --abstr_ref_prep                        false
% 1.09/0.97  --abstr_ref_until_sat                   false
% 1.09/0.97  --abstr_ref_sig_restrict                funpre
% 1.09/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 1.09/0.97  --abstr_ref_under                       []
% 1.09/0.97  
% 1.09/0.97  ------ SAT Options
% 1.09/0.97  
% 1.09/0.97  --sat_mode                              false
% 1.09/0.97  --sat_fm_restart_options                ""
% 1.09/0.97  --sat_gr_def                            false
% 1.09/0.97  --sat_epr_types                         true
% 1.09/0.97  --sat_non_cyclic_types                  false
% 1.09/0.97  --sat_finite_models                     false
% 1.09/0.97  --sat_fm_lemmas                         false
% 1.09/0.97  --sat_fm_prep                           false
% 1.09/0.97  --sat_fm_uc_incr                        true
% 1.09/0.97  --sat_out_model                         small
% 1.09/0.97  --sat_out_clauses                       false
% 1.09/0.97  
% 1.09/0.97  ------ QBF Options
% 1.09/0.97  
% 1.09/0.97  --qbf_mode                              false
% 1.09/0.97  --qbf_elim_univ                         false
% 1.09/0.97  --qbf_dom_inst                          none
% 1.09/0.97  --qbf_dom_pre_inst                      false
% 1.09/0.97  --qbf_sk_in                             false
% 1.09/0.97  --qbf_pred_elim                         true
% 1.09/0.97  --qbf_split                             512
% 1.09/0.97  
% 1.09/0.97  ------ BMC1 Options
% 1.09/0.97  
% 1.09/0.97  --bmc1_incremental                      false
% 1.09/0.97  --bmc1_axioms                           reachable_all
% 1.09/0.97  --bmc1_min_bound                        0
% 1.09/0.97  --bmc1_max_bound                        -1
% 1.09/0.97  --bmc1_max_bound_default                -1
% 1.09/0.97  --bmc1_symbol_reachability              true
% 1.09/0.97  --bmc1_property_lemmas                  false
% 1.09/0.97  --bmc1_k_induction                      false
% 1.09/0.97  --bmc1_non_equiv_states                 false
% 1.09/0.97  --bmc1_deadlock                         false
% 1.09/0.97  --bmc1_ucm                              false
% 1.09/0.97  --bmc1_add_unsat_core                   none
% 1.09/0.97  --bmc1_unsat_core_children              false
% 1.09/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 1.09/0.97  --bmc1_out_stat                         full
% 1.09/0.97  --bmc1_ground_init                      false
% 1.09/0.97  --bmc1_pre_inst_next_state              false
% 1.09/0.97  --bmc1_pre_inst_state                   false
% 1.09/0.97  --bmc1_pre_inst_reach_state             false
% 1.09/0.97  --bmc1_out_unsat_core                   false
% 1.09/0.97  --bmc1_aig_witness_out                  false
% 1.09/0.97  --bmc1_verbose                          false
% 1.09/0.97  --bmc1_dump_clauses_tptp                false
% 1.09/0.97  --bmc1_dump_unsat_core_tptp             false
% 1.09/0.97  --bmc1_dump_file                        -
% 1.09/0.97  --bmc1_ucm_expand_uc_limit              128
% 1.09/0.97  --bmc1_ucm_n_expand_iterations          6
% 1.09/0.97  --bmc1_ucm_extend_mode                  1
% 1.09/0.97  --bmc1_ucm_init_mode                    2
% 1.09/0.97  --bmc1_ucm_cone_mode                    none
% 1.09/0.97  --bmc1_ucm_reduced_relation_type        0
% 1.09/0.97  --bmc1_ucm_relax_model                  4
% 1.09/0.97  --bmc1_ucm_full_tr_after_sat            true
% 1.09/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 1.09/0.97  --bmc1_ucm_layered_model                none
% 1.09/0.97  --bmc1_ucm_max_lemma_size               10
% 1.09/0.97  
% 1.09/0.97  ------ AIG Options
% 1.09/0.97  
% 1.09/0.97  --aig_mode                              false
% 1.09/0.97  
% 1.09/0.97  ------ Instantiation Options
% 1.09/0.97  
% 1.09/0.97  --instantiation_flag                    true
% 1.09/0.97  --inst_sos_flag                         false
% 1.09/0.97  --inst_sos_phase                        true
% 1.09/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.09/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.09/0.97  --inst_lit_sel_side                     num_symb
% 1.09/0.97  --inst_solver_per_active                1400
% 1.09/0.97  --inst_solver_calls_frac                1.
% 1.09/0.97  --inst_passive_queue_type               priority_queues
% 1.09/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.09/0.97  --inst_passive_queues_freq              [25;2]
% 1.09/0.97  --inst_dismatching                      true
% 1.09/0.97  --inst_eager_unprocessed_to_passive     true
% 1.09/0.97  --inst_prop_sim_given                   true
% 1.09/0.97  --inst_prop_sim_new                     false
% 1.09/0.97  --inst_subs_new                         false
% 1.09/0.97  --inst_eq_res_simp                      false
% 1.09/0.97  --inst_subs_given                       false
% 1.09/0.97  --inst_orphan_elimination               true
% 1.09/0.97  --inst_learning_loop_flag               true
% 1.09/0.97  --inst_learning_start                   3000
% 1.09/0.97  --inst_learning_factor                  2
% 1.09/0.97  --inst_start_prop_sim_after_learn       3
% 1.09/0.97  --inst_sel_renew                        solver
% 1.09/0.97  --inst_lit_activity_flag                true
% 1.09/0.97  --inst_restr_to_given                   false
% 1.09/0.97  --inst_activity_threshold               500
% 1.09/0.97  --inst_out_proof                        true
% 1.09/0.97  
% 1.09/0.97  ------ Resolution Options
% 1.09/0.97  
% 1.09/0.97  --resolution_flag                       true
% 1.09/0.97  --res_lit_sel                           adaptive
% 1.09/0.97  --res_lit_sel_side                      none
% 1.09/0.97  --res_ordering                          kbo
% 1.09/0.97  --res_to_prop_solver                    active
% 1.09/0.97  --res_prop_simpl_new                    false
% 1.09/0.97  --res_prop_simpl_given                  true
% 1.09/0.97  --res_passive_queue_type                priority_queues
% 1.09/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.09/0.97  --res_passive_queues_freq               [15;5]
% 1.09/0.97  --res_forward_subs                      full
% 1.09/0.97  --res_backward_subs                     full
% 1.09/0.97  --res_forward_subs_resolution           true
% 1.09/0.97  --res_backward_subs_resolution          true
% 1.09/0.97  --res_orphan_elimination                true
% 1.09/0.97  --res_time_limit                        2.
% 1.09/0.97  --res_out_proof                         true
% 1.09/0.97  
% 1.09/0.97  ------ Superposition Options
% 1.09/0.97  
% 1.09/0.97  --superposition_flag                    true
% 1.09/0.97  --sup_passive_queue_type                priority_queues
% 1.09/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.09/0.97  --sup_passive_queues_freq               [8;1;4]
% 1.09/0.97  --demod_completeness_check              fast
% 1.09/0.97  --demod_use_ground                      true
% 1.09/0.97  --sup_to_prop_solver                    passive
% 1.09/0.97  --sup_prop_simpl_new                    true
% 1.09/0.97  --sup_prop_simpl_given                  true
% 1.09/0.97  --sup_fun_splitting                     false
% 1.09/0.97  --sup_smt_interval                      50000
% 1.09/0.97  
% 1.09/0.97  ------ Superposition Simplification Setup
% 1.09/0.97  
% 1.09/0.97  --sup_indices_passive                   []
% 1.09/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 1.09/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.97  --sup_full_bw                           [BwDemod]
% 1.09/0.97  --sup_immed_triv                        [TrivRules]
% 1.09/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.09/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.97  --sup_immed_bw_main                     []
% 1.09/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.09/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 1.09/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.09/0.97  
% 1.09/0.97  ------ Combination Options
% 1.09/0.97  
% 1.09/0.97  --comb_res_mult                         3
% 1.09/0.97  --comb_sup_mult                         2
% 1.09/0.97  --comb_inst_mult                        10
% 1.09/0.97  
% 1.09/0.97  ------ Debug Options
% 1.09/0.97  
% 1.09/0.97  --dbg_backtrace                         false
% 1.09/0.97  --dbg_dump_prop_clauses                 false
% 1.09/0.97  --dbg_dump_prop_clauses_file            -
% 1.09/0.97  --dbg_out_stat                          false
% 1.09/0.97  ------ Parsing...
% 1.09/0.97  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.09/0.97  
% 1.09/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe:4:0s pe_e  sf_s  rm: 4 0s  sf_e  pe_s  pe_e 
% 1.09/0.97  
% 1.09/0.97  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.09/0.97  
% 1.09/0.97  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.09/0.97  ------ Proving...
% 1.09/0.97  ------ Problem Properties 
% 1.09/0.97  
% 1.09/0.97  
% 1.09/0.97  clauses                                 14
% 1.09/0.97  conjectures                             3
% 1.09/0.97  EPR                                     4
% 1.09/0.97  Horn                                    11
% 1.09/0.97  unary                                   11
% 1.09/0.97  binary                                  0
% 1.09/0.97  lits                                    20
% 1.09/0.97  lits eq                                 17
% 1.09/0.97  fd_pure                                 0
% 1.09/0.97  fd_pseudo                               0
% 1.09/0.97  fd_cond                                 0
% 1.09/0.97  fd_pseudo_cond                          3
% 1.09/0.97  AC symbols                              0
% 1.09/0.97  
% 1.09/0.97  ------ Schedule dynamic 5 is on 
% 1.09/0.97  
% 1.09/0.97  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.09/0.97  
% 1.09/0.97  
% 1.09/0.97  ------ 
% 1.09/0.97  Current options:
% 1.09/0.97  ------ 
% 1.09/0.97  
% 1.09/0.97  ------ Input Options
% 1.09/0.97  
% 1.09/0.97  --out_options                           all
% 1.09/0.97  --tptp_safe_out                         true
% 1.09/0.97  --problem_path                          ""
% 1.09/0.97  --include_path                          ""
% 1.09/0.97  --clausifier                            res/vclausify_rel
% 1.09/0.97  --clausifier_options                    --mode clausify
% 1.09/0.97  --stdin                                 false
% 1.09/0.97  --stats_out                             all
% 1.09/0.97  
% 1.09/0.97  ------ General Options
% 1.09/0.97  
% 1.09/0.97  --fof                                   false
% 1.09/0.97  --time_out_real                         305.
% 1.09/0.97  --time_out_virtual                      -1.
% 1.09/0.97  --symbol_type_check                     false
% 1.09/0.97  --clausify_out                          false
% 1.09/0.97  --sig_cnt_out                           false
% 1.09/0.97  --trig_cnt_out                          false
% 1.09/0.97  --trig_cnt_out_tolerance                1.
% 1.09/0.97  --trig_cnt_out_sk_spl                   false
% 1.09/0.97  --abstr_cl_out                          false
% 1.09/0.97  
% 1.09/0.97  ------ Global Options
% 1.09/0.97  
% 1.09/0.97  --schedule                              default
% 1.09/0.97  --add_important_lit                     false
% 1.09/0.97  --prop_solver_per_cl                    1000
% 1.09/0.97  --min_unsat_core                        false
% 1.09/0.97  --soft_assumptions                      false
% 1.09/0.97  --soft_lemma_size                       3
% 1.09/0.97  --prop_impl_unit_size                   0
% 1.09/0.97  --prop_impl_unit                        []
% 1.09/0.97  --share_sel_clauses                     true
% 1.09/0.97  --reset_solvers                         false
% 1.09/0.97  --bc_imp_inh                            [conj_cone]
% 1.09/0.97  --conj_cone_tolerance                   3.
% 1.09/0.97  --extra_neg_conj                        none
% 1.09/0.97  --large_theory_mode                     true
% 1.09/0.97  --prolific_symb_bound                   200
% 1.09/0.97  --lt_threshold                          2000
% 1.09/0.97  --clause_weak_htbl                      true
% 1.09/0.97  --gc_record_bc_elim                     false
% 1.09/0.97  
% 1.09/0.97  ------ Preprocessing Options
% 1.09/0.97  
% 1.09/0.97  --preprocessing_flag                    true
% 1.09/0.97  --time_out_prep_mult                    0.1
% 1.09/0.97  --splitting_mode                        input
% 1.09/0.97  --splitting_grd                         true
% 1.09/0.97  --splitting_cvd                         false
% 1.09/0.97  --splitting_cvd_svl                     false
% 1.09/0.97  --splitting_nvd                         32
% 1.09/0.97  --sub_typing                            true
% 1.09/0.97  --prep_gs_sim                           true
% 1.09/0.97  --prep_unflatten                        true
% 1.09/0.97  --prep_res_sim                          true
% 1.09/0.97  --prep_upred                            true
% 1.09/0.97  --prep_sem_filter                       exhaustive
% 1.09/0.97  --prep_sem_filter_out                   false
% 1.09/0.97  --pred_elim                             true
% 1.09/0.97  --res_sim_input                         true
% 1.09/0.97  --eq_ax_congr_red                       true
% 1.09/0.97  --pure_diseq_elim                       true
% 1.09/0.97  --brand_transform                       false
% 1.09/0.97  --non_eq_to_eq                          false
% 1.09/0.97  --prep_def_merge                        true
% 1.09/0.97  --prep_def_merge_prop_impl              false
% 1.09/0.97  --prep_def_merge_mbd                    true
% 1.09/0.97  --prep_def_merge_tr_red                 false
% 1.09/0.97  --prep_def_merge_tr_cl                  false
% 1.09/0.97  --smt_preprocessing                     true
% 1.09/0.97  --smt_ac_axioms                         fast
% 1.09/0.97  --preprocessed_out                      false
% 1.09/0.97  --preprocessed_stats                    false
% 1.09/0.97  
% 1.09/0.97  ------ Abstraction refinement Options
% 1.09/0.97  
% 1.09/0.97  --abstr_ref                             []
% 1.09/0.97  --abstr_ref_prep                        false
% 1.09/0.97  --abstr_ref_until_sat                   false
% 1.09/0.97  --abstr_ref_sig_restrict                funpre
% 1.09/0.97  --abstr_ref_af_restrict_to_split_sk     false
% 1.09/0.97  --abstr_ref_under                       []
% 1.09/0.97  
% 1.09/0.97  ------ SAT Options
% 1.09/0.97  
% 1.09/0.97  --sat_mode                              false
% 1.09/0.97  --sat_fm_restart_options                ""
% 1.09/0.97  --sat_gr_def                            false
% 1.09/0.97  --sat_epr_types                         true
% 1.09/0.97  --sat_non_cyclic_types                  false
% 1.09/0.97  --sat_finite_models                     false
% 1.09/0.97  --sat_fm_lemmas                         false
% 1.09/0.97  --sat_fm_prep                           false
% 1.09/0.97  --sat_fm_uc_incr                        true
% 1.09/0.97  --sat_out_model                         small
% 1.09/0.97  --sat_out_clauses                       false
% 1.09/0.97  
% 1.09/0.97  ------ QBF Options
% 1.09/0.97  
% 1.09/0.97  --qbf_mode                              false
% 1.09/0.97  --qbf_elim_univ                         false
% 1.09/0.97  --qbf_dom_inst                          none
% 1.09/0.97  --qbf_dom_pre_inst                      false
% 1.09/0.97  --qbf_sk_in                             false
% 1.09/0.97  --qbf_pred_elim                         true
% 1.09/0.97  --qbf_split                             512
% 1.09/0.97  
% 1.09/0.97  ------ BMC1 Options
% 1.09/0.97  
% 1.09/0.97  --bmc1_incremental                      false
% 1.09/0.97  --bmc1_axioms                           reachable_all
% 1.09/0.97  --bmc1_min_bound                        0
% 1.09/0.97  --bmc1_max_bound                        -1
% 1.09/0.97  --bmc1_max_bound_default                -1
% 1.09/0.97  --bmc1_symbol_reachability              true
% 1.09/0.97  --bmc1_property_lemmas                  false
% 1.09/0.97  --bmc1_k_induction                      false
% 1.09/0.97  --bmc1_non_equiv_states                 false
% 1.09/0.97  --bmc1_deadlock                         false
% 1.09/0.97  --bmc1_ucm                              false
% 1.09/0.97  --bmc1_add_unsat_core                   none
% 1.09/0.97  --bmc1_unsat_core_children              false
% 1.09/0.97  --bmc1_unsat_core_extrapolate_axioms    false
% 1.09/0.97  --bmc1_out_stat                         full
% 1.09/0.97  --bmc1_ground_init                      false
% 1.09/0.97  --bmc1_pre_inst_next_state              false
% 1.09/0.97  --bmc1_pre_inst_state                   false
% 1.09/0.97  --bmc1_pre_inst_reach_state             false
% 1.09/0.97  --bmc1_out_unsat_core                   false
% 1.09/0.97  --bmc1_aig_witness_out                  false
% 1.09/0.97  --bmc1_verbose                          false
% 1.09/0.97  --bmc1_dump_clauses_tptp                false
% 1.09/0.97  --bmc1_dump_unsat_core_tptp             false
% 1.09/0.97  --bmc1_dump_file                        -
% 1.09/0.97  --bmc1_ucm_expand_uc_limit              128
% 1.09/0.97  --bmc1_ucm_n_expand_iterations          6
% 1.09/0.97  --bmc1_ucm_extend_mode                  1
% 1.09/0.97  --bmc1_ucm_init_mode                    2
% 1.09/0.97  --bmc1_ucm_cone_mode                    none
% 1.09/0.97  --bmc1_ucm_reduced_relation_type        0
% 1.09/0.97  --bmc1_ucm_relax_model                  4
% 1.09/0.97  --bmc1_ucm_full_tr_after_sat            true
% 1.09/0.97  --bmc1_ucm_expand_neg_assumptions       false
% 1.09/0.97  --bmc1_ucm_layered_model                none
% 1.09/0.97  --bmc1_ucm_max_lemma_size               10
% 1.09/0.97  
% 1.09/0.97  ------ AIG Options
% 1.09/0.97  
% 1.09/0.97  --aig_mode                              false
% 1.09/0.97  
% 1.09/0.97  ------ Instantiation Options
% 1.09/0.97  
% 1.09/0.97  --instantiation_flag                    true
% 1.09/0.97  --inst_sos_flag                         false
% 1.09/0.97  --inst_sos_phase                        true
% 1.09/0.97  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.09/0.97  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.09/0.97  --inst_lit_sel_side                     none
% 1.09/0.97  --inst_solver_per_active                1400
% 1.09/0.97  --inst_solver_calls_frac                1.
% 1.09/0.97  --inst_passive_queue_type               priority_queues
% 1.09/0.97  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.09/0.97  --inst_passive_queues_freq              [25;2]
% 1.09/0.97  --inst_dismatching                      true
% 1.09/0.97  --inst_eager_unprocessed_to_passive     true
% 1.09/0.97  --inst_prop_sim_given                   true
% 1.09/0.97  --inst_prop_sim_new                     false
% 1.09/0.97  --inst_subs_new                         false
% 1.09/0.97  --inst_eq_res_simp                      false
% 1.09/0.97  --inst_subs_given                       false
% 1.09/0.97  --inst_orphan_elimination               true
% 1.09/0.97  --inst_learning_loop_flag               true
% 1.09/0.97  --inst_learning_start                   3000
% 1.09/0.97  --inst_learning_factor                  2
% 1.09/0.97  --inst_start_prop_sim_after_learn       3
% 1.09/0.97  --inst_sel_renew                        solver
% 1.09/0.97  --inst_lit_activity_flag                true
% 1.09/0.97  --inst_restr_to_given                   false
% 1.09/0.97  --inst_activity_threshold               500
% 1.09/0.97  --inst_out_proof                        true
% 1.09/0.97  
% 1.09/0.97  ------ Resolution Options
% 1.09/0.97  
% 1.09/0.97  --resolution_flag                       false
% 1.09/0.97  --res_lit_sel                           adaptive
% 1.09/0.97  --res_lit_sel_side                      none
% 1.09/0.97  --res_ordering                          kbo
% 1.09/0.97  --res_to_prop_solver                    active
% 1.09/0.97  --res_prop_simpl_new                    false
% 1.09/0.97  --res_prop_simpl_given                  true
% 1.09/0.97  --res_passive_queue_type                priority_queues
% 1.09/0.97  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.09/0.97  --res_passive_queues_freq               [15;5]
% 1.09/0.97  --res_forward_subs                      full
% 1.09/0.97  --res_backward_subs                     full
% 1.09/0.97  --res_forward_subs_resolution           true
% 1.09/0.97  --res_backward_subs_resolution          true
% 1.09/0.97  --res_orphan_elimination                true
% 1.09/0.97  --res_time_limit                        2.
% 1.09/0.97  --res_out_proof                         true
% 1.09/0.97  
% 1.09/0.97  ------ Superposition Options
% 1.09/0.97  
% 1.09/0.97  --superposition_flag                    true
% 1.09/0.97  --sup_passive_queue_type                priority_queues
% 1.09/0.97  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.09/0.97  --sup_passive_queues_freq               [8;1;4]
% 1.09/0.97  --demod_completeness_check              fast
% 1.09/0.97  --demod_use_ground                      true
% 1.09/0.97  --sup_to_prop_solver                    passive
% 1.09/0.97  --sup_prop_simpl_new                    true
% 1.09/0.97  --sup_prop_simpl_given                  true
% 1.09/0.97  --sup_fun_splitting                     false
% 1.09/0.97  --sup_smt_interval                      50000
% 1.09/0.97  
% 1.09/0.97  ------ Superposition Simplification Setup
% 1.09/0.97  
% 1.09/0.97  --sup_indices_passive                   []
% 1.09/0.97  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.97  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.97  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.09/0.97  --sup_full_triv                         [TrivRules;PropSubs]
% 1.09/0.97  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.97  --sup_full_bw                           [BwDemod]
% 1.09/0.97  --sup_immed_triv                        [TrivRules]
% 1.09/0.97  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.09/0.97  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.97  --sup_immed_bw_main                     []
% 1.09/0.97  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.09/0.97  --sup_input_triv                        [Unflattening;TrivRules]
% 1.09/0.97  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.09/0.97  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.09/0.97  
% 1.09/0.97  ------ Combination Options
% 1.09/0.97  
% 1.09/0.97  --comb_res_mult                         3
% 1.09/0.97  --comb_sup_mult                         2
% 1.09/0.97  --comb_inst_mult                        10
% 1.09/0.97  
% 1.09/0.97  ------ Debug Options
% 1.09/0.97  
% 1.09/0.97  --dbg_backtrace                         false
% 1.09/0.97  --dbg_dump_prop_clauses                 false
% 1.09/0.97  --dbg_dump_prop_clauses_file            -
% 1.09/0.97  --dbg_out_stat                          false
% 1.09/0.97  
% 1.09/0.97  
% 1.09/0.97  
% 1.09/0.97  
% 1.09/0.97  ------ Proving...
% 1.09/0.97  
% 1.09/0.97  
% 1.09/0.97  % SZS status Theorem for theBenchmark.p
% 1.09/0.97  
% 1.09/0.97   Resolution empty clause
% 1.09/0.97  
% 1.09/0.97  % SZS output start CNFRefutation for theBenchmark.p
% 1.09/0.97  
% 1.09/0.97  fof(f8,axiom,(
% 1.09/0.97    ! [X0,X1] : ((m1_subset_1(X1,X0) & ~v1_xboole_0(X0)) => k1_tarski(X1) = k6_domain_1(X0,X1))),
% 1.09/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.97  
% 1.09/0.97  fof(f18,plain,(
% 1.09/0.97    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | (~m1_subset_1(X1,X0) | v1_xboole_0(X0)))),
% 1.09/0.97    inference(ennf_transformation,[],[f8])).
% 1.09/0.97  
% 1.09/0.97  fof(f19,plain,(
% 1.09/0.97    ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0))),
% 1.09/0.97    inference(flattening,[],[f18])).
% 1.09/0.97  
% 1.09/0.97  fof(f44,plain,(
% 1.09/0.97    ( ! [X0,X1] : (k1_tarski(X1) = k6_domain_1(X0,X1) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 1.09/0.97    inference(cnf_transformation,[],[f19])).
% 1.09/0.97  
% 1.09/0.97  fof(f9,axiom,(
% 1.09/0.97    ! [X0] : (~v1_xboole_0(X0) => (v1_zfmisc_1(X0) <=> ? [X1] : (k6_domain_1(X0,X1) = X0 & m1_subset_1(X1,X0))))),
% 1.09/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.97  
% 1.09/0.97  fof(f20,plain,(
% 1.09/0.97    ! [X0] : ((v1_zfmisc_1(X0) <=> ? [X1] : (k6_domain_1(X0,X1) = X0 & m1_subset_1(X1,X0))) | v1_xboole_0(X0))),
% 1.09/0.97    inference(ennf_transformation,[],[f9])).
% 1.09/0.97  
% 1.09/0.97  fof(f23,plain,(
% 1.09/0.97    ! [X0] : (((v1_zfmisc_1(X0) | ! [X1] : (k6_domain_1(X0,X1) != X0 | ~m1_subset_1(X1,X0))) & (? [X1] : (k6_domain_1(X0,X1) = X0 & m1_subset_1(X1,X0)) | ~v1_zfmisc_1(X0))) | v1_xboole_0(X0))),
% 1.09/0.97    inference(nnf_transformation,[],[f20])).
% 1.09/0.97  
% 1.09/0.97  fof(f24,plain,(
% 1.09/0.97    ! [X0] : (((v1_zfmisc_1(X0) | ! [X1] : (k6_domain_1(X0,X1) != X0 | ~m1_subset_1(X1,X0))) & (? [X2] : (k6_domain_1(X0,X2) = X0 & m1_subset_1(X2,X0)) | ~v1_zfmisc_1(X0))) | v1_xboole_0(X0))),
% 1.09/0.97    inference(rectify,[],[f23])).
% 1.09/0.97  
% 1.09/0.97  fof(f25,plain,(
% 1.09/0.97    ! [X0] : (? [X2] : (k6_domain_1(X0,X2) = X0 & m1_subset_1(X2,X0)) => (k6_domain_1(X0,sK0(X0)) = X0 & m1_subset_1(sK0(X0),X0)))),
% 1.09/0.97    introduced(choice_axiom,[])).
% 1.09/0.97  
% 1.09/0.97  fof(f26,plain,(
% 1.09/0.97    ! [X0] : (((v1_zfmisc_1(X0) | ! [X1] : (k6_domain_1(X0,X1) != X0 | ~m1_subset_1(X1,X0))) & ((k6_domain_1(X0,sK0(X0)) = X0 & m1_subset_1(sK0(X0),X0)) | ~v1_zfmisc_1(X0))) | v1_xboole_0(X0))),
% 1.09/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0])],[f24,f25])).
% 1.09/0.97  
% 1.09/0.97  fof(f45,plain,(
% 1.09/0.97    ( ! [X0] : (m1_subset_1(sK0(X0),X0) | ~v1_zfmisc_1(X0) | v1_xboole_0(X0)) )),
% 1.09/0.97    inference(cnf_transformation,[],[f26])).
% 1.09/0.97  
% 1.09/0.97  fof(f10,conjecture,(
% 1.09/0.97    ! [X0] : (~v1_xboole_0(X0) => ! [X1] : ((v1_zfmisc_1(X1) & ~v1_xboole_0(X1)) => (r1_tarski(X0,X1) => X0 = X1)))),
% 1.09/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.97  
% 1.09/0.97  fof(f11,negated_conjecture,(
% 1.09/0.97    ~! [X0] : (~v1_xboole_0(X0) => ! [X1] : ((v1_zfmisc_1(X1) & ~v1_xboole_0(X1)) => (r1_tarski(X0,X1) => X0 = X1)))),
% 1.09/0.97    inference(negated_conjecture,[],[f10])).
% 1.09/0.97  
% 1.09/0.97  fof(f21,plain,(
% 1.09/0.97    ? [X0] : (? [X1] : ((X0 != X1 & r1_tarski(X0,X1)) & (v1_zfmisc_1(X1) & ~v1_xboole_0(X1))) & ~v1_xboole_0(X0))),
% 1.09/0.97    inference(ennf_transformation,[],[f11])).
% 1.09/0.97  
% 1.09/0.97  fof(f22,plain,(
% 1.09/0.97    ? [X0] : (? [X1] : (X0 != X1 & r1_tarski(X0,X1) & v1_zfmisc_1(X1) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0))),
% 1.09/0.97    inference(flattening,[],[f21])).
% 1.09/0.97  
% 1.09/0.97  fof(f28,plain,(
% 1.09/0.97    ( ! [X0] : (? [X1] : (X0 != X1 & r1_tarski(X0,X1) & v1_zfmisc_1(X1) & ~v1_xboole_0(X1)) => (sK2 != X0 & r1_tarski(X0,sK2) & v1_zfmisc_1(sK2) & ~v1_xboole_0(sK2))) )),
% 1.09/0.97    introduced(choice_axiom,[])).
% 1.09/0.97  
% 1.09/0.97  fof(f27,plain,(
% 1.09/0.97    ? [X0] : (? [X1] : (X0 != X1 & r1_tarski(X0,X1) & v1_zfmisc_1(X1) & ~v1_xboole_0(X1)) & ~v1_xboole_0(X0)) => (? [X1] : (sK1 != X1 & r1_tarski(sK1,X1) & v1_zfmisc_1(X1) & ~v1_xboole_0(X1)) & ~v1_xboole_0(sK1))),
% 1.09/0.97    introduced(choice_axiom,[])).
% 1.09/0.97  
% 1.09/0.97  fof(f29,plain,(
% 1.09/0.97    (sK1 != sK2 & r1_tarski(sK1,sK2) & v1_zfmisc_1(sK2) & ~v1_xboole_0(sK2)) & ~v1_xboole_0(sK1)),
% 1.09/0.97    inference(skolemisation,[status(esa),new_symbols(skolem,[sK1,sK2])],[f22,f28,f27])).
% 1.09/0.97  
% 1.09/0.97  fof(f50,plain,(
% 1.09/0.97    v1_zfmisc_1(sK2)),
% 1.09/0.97    inference(cnf_transformation,[],[f29])).
% 1.09/0.97  
% 1.09/0.97  fof(f49,plain,(
% 1.09/0.97    ~v1_xboole_0(sK2)),
% 1.09/0.97    inference(cnf_transformation,[],[f29])).
% 1.09/0.97  
% 1.09/0.97  fof(f46,plain,(
% 1.09/0.97    ( ! [X0] : (k6_domain_1(X0,sK0(X0)) = X0 | ~v1_zfmisc_1(X0) | v1_xboole_0(X0)) )),
% 1.09/0.97    inference(cnf_transformation,[],[f26])).
% 1.09/0.97  
% 1.09/0.97  fof(f2,axiom,(
% 1.09/0.97    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 1.09/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.97  
% 1.09/0.97  fof(f13,plain,(
% 1.09/0.97    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 1.09/0.97    inference(ennf_transformation,[],[f2])).
% 1.09/0.97  
% 1.09/0.97  fof(f31,plain,(
% 1.09/0.97    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 1.09/0.97    inference(cnf_transformation,[],[f13])).
% 1.09/0.97  
% 1.09/0.97  fof(f51,plain,(
% 1.09/0.97    r1_tarski(sK1,sK2)),
% 1.09/0.97    inference(cnf_transformation,[],[f29])).
% 1.09/0.97  
% 1.09/0.97  fof(f7,axiom,(
% 1.09/0.97    ! [X0,X1,X2] : ~(~(k1_xboole_0 = X2 & k1_tarski(X0) = X1) & ~(k1_tarski(X0) = X2 & k1_xboole_0 = X1) & ~(k1_tarski(X0) = X2 & k1_tarski(X0) = X1) & k2_xboole_0(X1,X2) = k1_tarski(X0))),
% 1.09/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.97  
% 1.09/0.97  fof(f17,plain,(
% 1.09/0.97    ! [X0,X1,X2] : ((k1_xboole_0 = X2 & k1_tarski(X0) = X1) | (k1_tarski(X0) = X2 & k1_xboole_0 = X1) | (k1_tarski(X0) = X2 & k1_tarski(X0) = X1) | k2_xboole_0(X1,X2) != k1_tarski(X0))),
% 1.09/0.97    inference(ennf_transformation,[],[f7])).
% 1.09/0.97  
% 1.09/0.97  fof(f36,plain,(
% 1.09/0.97    ( ! [X2,X0,X1] : (k1_tarski(X0) = X1 | k1_xboole_0 = X1 | k1_tarski(X0) = X1 | k2_xboole_0(X1,X2) != k1_tarski(X0)) )),
% 1.09/0.97    inference(cnf_transformation,[],[f17])).
% 1.09/0.97  
% 1.09/0.97  fof(f48,plain,(
% 1.09/0.97    ~v1_xboole_0(sK1)),
% 1.09/0.97    inference(cnf_transformation,[],[f29])).
% 1.09/0.97  
% 1.09/0.97  fof(f6,axiom,(
% 1.09/0.97    ! [X0,X1] : (r1_xboole_0(X0,X1) <=> k4_xboole_0(X0,X1) = X0)),
% 1.09/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.97  
% 1.09/0.97  fof(f12,plain,(
% 1.09/0.97    ! [X0,X1] : (k4_xboole_0(X0,X1) = X0 => r1_xboole_0(X0,X1))),
% 1.09/0.97    inference(unused_predicate_definition_removal,[],[f6])).
% 1.09/0.97  
% 1.09/0.97  fof(f16,plain,(
% 1.09/0.97    ! [X0,X1] : (r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0)),
% 1.09/0.97    inference(ennf_transformation,[],[f12])).
% 1.09/0.97  
% 1.09/0.97  fof(f35,plain,(
% 1.09/0.97    ( ! [X0,X1] : (r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0) )),
% 1.09/0.97    inference(cnf_transformation,[],[f16])).
% 1.09/0.97  
% 1.09/0.97  fof(f5,axiom,(
% 1.09/0.97    ! [X0,X1] : (~v1_xboole_0(X1) => ~(r1_xboole_0(X1,X0) & r1_tarski(X1,X0)))),
% 1.09/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.97  
% 1.09/0.97  fof(f14,plain,(
% 1.09/0.97    ! [X0,X1] : ((~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0)) | v1_xboole_0(X1))),
% 1.09/0.97    inference(ennf_transformation,[],[f5])).
% 1.09/0.97  
% 1.09/0.97  fof(f15,plain,(
% 1.09/0.97    ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1))),
% 1.09/0.97    inference(flattening,[],[f14])).
% 1.09/0.97  
% 1.09/0.97  fof(f34,plain,(
% 1.09/0.97    ( ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1)) )),
% 1.09/0.97    inference(cnf_transformation,[],[f15])).
% 1.09/0.97  
% 1.09/0.97  fof(f3,axiom,(
% 1.09/0.97    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 1.09/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.97  
% 1.09/0.97  fof(f32,plain,(
% 1.09/0.97    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 1.09/0.97    inference(cnf_transformation,[],[f3])).
% 1.09/0.97  
% 1.09/0.97  fof(f4,axiom,(
% 1.09/0.97    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 1.09/0.97    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.09/0.97  
% 1.09/0.97  fof(f33,plain,(
% 1.09/0.97    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 1.09/0.97    inference(cnf_transformation,[],[f4])).
% 1.09/0.97  
% 1.09/0.97  fof(f52,plain,(
% 1.09/0.97    sK1 != sK2),
% 1.09/0.97    inference(cnf_transformation,[],[f29])).
% 1.09/0.97  
% 1.09/0.97  cnf(c_14,plain,
% 1.09/0.97      ( ~ m1_subset_1(X0,X1)
% 1.09/0.97      | v1_xboole_0(X1)
% 1.09/0.97      | k6_domain_1(X1,X0) = k1_tarski(X0) ),
% 1.09/0.97      inference(cnf_transformation,[],[f44]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_17,plain,
% 1.09/0.97      ( m1_subset_1(sK0(X0),X0) | ~ v1_zfmisc_1(X0) | v1_xboole_0(X0) ),
% 1.09/0.97      inference(cnf_transformation,[],[f45]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_215,plain,
% 1.09/0.97      ( ~ v1_zfmisc_1(X0)
% 1.09/0.97      | v1_xboole_0(X1)
% 1.09/0.97      | v1_xboole_0(X0)
% 1.09/0.97      | X0 != X1
% 1.09/0.97      | k6_domain_1(X1,X2) = k1_tarski(X2)
% 1.09/0.97      | sK0(X0) != X2 ),
% 1.09/0.97      inference(resolution_lifted,[status(thm)],[c_14,c_17]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_216,plain,
% 1.09/0.97      ( ~ v1_zfmisc_1(X0)
% 1.09/0.97      | v1_xboole_0(X0)
% 1.09/0.97      | k6_domain_1(X0,sK0(X0)) = k1_tarski(sK0(X0)) ),
% 1.09/0.97      inference(unflattening,[status(thm)],[c_215]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_20,negated_conjecture,
% 1.09/0.97      ( v1_zfmisc_1(sK2) ),
% 1.09/0.97      inference(cnf_transformation,[],[f50]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_232,plain,
% 1.09/0.97      ( v1_xboole_0(X0)
% 1.09/0.97      | k6_domain_1(X0,sK0(X0)) = k1_tarski(sK0(X0))
% 1.09/0.97      | sK2 != X0 ),
% 1.09/0.97      inference(resolution_lifted,[status(thm)],[c_216,c_20]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_233,plain,
% 1.09/0.97      ( v1_xboole_0(sK2) | k6_domain_1(sK2,sK0(sK2)) = k1_tarski(sK0(sK2)) ),
% 1.09/0.97      inference(unflattening,[status(thm)],[c_232]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_21,negated_conjecture,
% 1.09/0.97      ( ~ v1_xboole_0(sK2) ),
% 1.09/0.97      inference(cnf_transformation,[],[f49]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_235,plain,
% 1.09/0.97      ( k6_domain_1(sK2,sK0(sK2)) = k1_tarski(sK0(sK2)) ),
% 1.09/0.97      inference(global_propositional_subsumption,[status(thm)],[c_233,c_21]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_16,plain,
% 1.09/0.97      ( ~ v1_zfmisc_1(X0) | v1_xboole_0(X0) | k6_domain_1(X0,sK0(X0)) = X0 ),
% 1.09/0.97      inference(cnf_transformation,[],[f46]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_240,plain,
% 1.09/0.97      ( v1_xboole_0(X0) | k6_domain_1(X0,sK0(X0)) = X0 | sK2 != X0 ),
% 1.09/0.97      inference(resolution_lifted,[status(thm)],[c_16,c_20]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_241,plain,
% 1.09/0.97      ( v1_xboole_0(sK2) | k6_domain_1(sK2,sK0(sK2)) = sK2 ),
% 1.09/0.97      inference(unflattening,[status(thm)],[c_240]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_243,plain,
% 1.09/0.97      ( k6_domain_1(sK2,sK0(sK2)) = sK2 ),
% 1.09/0.97      inference(global_propositional_subsumption,[status(thm)],[c_241,c_21]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_391,plain,
% 1.09/0.97      ( k1_tarski(sK0(sK2)) = sK2 ),
% 1.09/0.97      inference(light_normalisation,[status(thm)],[c_235,c_243]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_1,plain,
% 1.09/0.97      ( ~ r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1 ),
% 1.09/0.97      inference(cnf_transformation,[],[f31]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_19,negated_conjecture,
% 1.09/0.97      ( r1_tarski(sK1,sK2) ),
% 1.09/0.97      inference(cnf_transformation,[],[f51]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_203,plain,
% 1.09/0.97      ( k2_xboole_0(X0,X1) = X1 | sK2 != X1 | sK1 != X0 ),
% 1.09/0.97      inference(resolution_lifted,[status(thm)],[c_1,c_19]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_204,plain,
% 1.09/0.97      ( k2_xboole_0(sK1,sK2) = sK2 ),
% 1.09/0.97      inference(unflattening,[status(thm)],[c_203]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_13,plain,
% 1.09/0.97      ( k2_xboole_0(X0,X1) != k1_tarski(X2)
% 1.09/0.97      | k1_tarski(X2) = X0
% 1.09/0.97      | k1_xboole_0 = X0 ),
% 1.09/0.97      inference(cnf_transformation,[],[f36]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_678,plain,
% 1.09/0.97      ( k1_tarski(X0) != sK2 | k1_tarski(X0) = sK1 | sK1 = k1_xboole_0 ),
% 1.09/0.97      inference(superposition,[status(thm)],[c_204,c_13]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_22,negated_conjecture,
% 1.09/0.97      ( ~ v1_xboole_0(sK1) ),
% 1.09/0.97      inference(cnf_transformation,[],[f48]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_5,plain,
% 1.09/0.97      ( r1_xboole_0(X0,X1) | k4_xboole_0(X0,X1) != X0 ),
% 1.09/0.97      inference(cnf_transformation,[],[f35]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_4,plain,
% 1.09/0.97      ( ~ r1_xboole_0(X0,X1) | ~ r1_tarski(X0,X1) | v1_xboole_0(X0) ),
% 1.09/0.97      inference(cnf_transformation,[],[f34]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_158,plain,
% 1.09/0.97      ( ~ r1_tarski(X0,X1) | v1_xboole_0(X0) | k4_xboole_0(X0,X1) != X0 ),
% 1.09/0.97      inference(resolution,[status(thm)],[c_5,c_4]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_2,plain,
% 1.09/0.97      ( r1_tarski(k1_xboole_0,X0) ),
% 1.09/0.97      inference(cnf_transformation,[],[f32]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_176,plain,
% 1.09/0.97      ( v1_xboole_0(X0)
% 1.09/0.97      | X1 != X2
% 1.09/0.97      | k4_xboole_0(X0,X2) != X0
% 1.09/0.97      | k1_xboole_0 != X0 ),
% 1.09/0.97      inference(resolution_lifted,[status(thm)],[c_158,c_2]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_177,plain,
% 1.09/0.97      ( v1_xboole_0(k1_xboole_0) | k4_xboole_0(k1_xboole_0,X0) != k1_xboole_0 ),
% 1.09/0.97      inference(unflattening,[status(thm)],[c_176]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_42,plain,
% 1.09/0.97      ( r1_xboole_0(k1_xboole_0,k1_xboole_0)
% 1.09/0.97      | k4_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0 ),
% 1.09/0.97      inference(instantiation,[status(thm)],[c_5]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_45,plain,
% 1.09/0.97      ( ~ r1_xboole_0(k1_xboole_0,k1_xboole_0)
% 1.09/0.97      | ~ r1_tarski(k1_xboole_0,k1_xboole_0)
% 1.09/0.97      | v1_xboole_0(k1_xboole_0) ),
% 1.09/0.97      inference(instantiation,[status(thm)],[c_4]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_3,plain,
% 1.09/0.97      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 1.09/0.97      inference(cnf_transformation,[],[f33]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_47,plain,
% 1.09/0.97      ( k4_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 1.09/0.97      inference(instantiation,[status(thm)],[c_3]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_49,plain,
% 1.09/0.97      ( r1_tarski(k1_xboole_0,k1_xboole_0) ),
% 1.09/0.97      inference(instantiation,[status(thm)],[c_2]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_181,plain,
% 1.09/0.97      ( v1_xboole_0(k1_xboole_0) ),
% 1.09/0.97      inference(global_propositional_subsumption,
% 1.09/0.97                [status(thm)],
% 1.09/0.97                [c_177,c_42,c_45,c_47,c_49]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_254,plain,
% 1.09/0.97      ( sK1 != k1_xboole_0 ),
% 1.09/0.97      inference(resolution_lifted,[status(thm)],[c_22,c_181]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_686,plain,
% 1.09/0.97      ( k1_tarski(X0) = sK1 | k1_tarski(X0) != sK2 ),
% 1.09/0.97      inference(global_propositional_subsumption,[status(thm)],[c_678,c_254]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_687,plain,
% 1.09/0.97      ( k1_tarski(X0) != sK2 | k1_tarski(X0) = sK1 ),
% 1.09/0.97      inference(renaming,[status(thm)],[c_686]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_691,plain,
% 1.09/0.97      ( k1_tarski(sK0(sK2)) = sK1 ),
% 1.09/0.97      inference(superposition,[status(thm)],[c_391,c_687]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_829,plain,
% 1.09/0.97      ( sK2 = sK1 ),
% 1.09/0.97      inference(demodulation,[status(thm)],[c_691,c_391]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_18,negated_conjecture,
% 1.09/0.97      ( sK1 != sK2 ),
% 1.09/0.97      inference(cnf_transformation,[],[f52]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_838,plain,
% 1.09/0.97      ( sK1 != sK1 ),
% 1.09/0.97      inference(demodulation,[status(thm)],[c_829,c_18]) ).
% 1.09/0.97  
% 1.09/0.97  cnf(c_839,plain,
% 1.09/0.97      ( $false ),
% 1.09/0.97      inference(equality_resolution_simp,[status(thm)],[c_838]) ).
% 1.09/0.97  
% 1.09/0.97  
% 1.09/0.97  % SZS output end CNFRefutation for theBenchmark.p
% 1.09/0.97  
% 1.09/0.97  ------                               Statistics
% 1.09/0.97  
% 1.09/0.97  ------ General
% 1.09/0.97  
% 1.09/0.97  abstr_ref_over_cycles:                  0
% 1.09/0.97  abstr_ref_under_cycles:                 0
% 1.09/0.97  gc_basic_clause_elim:                   0
% 1.09/0.97  forced_gc_time:                         0
% 1.09/0.97  parsing_time:                           0.008
% 1.09/0.97  unif_index_cands_time:                  0.
% 1.09/0.97  unif_index_add_time:                    0.
% 1.09/0.97  orderings_time:                         0.
% 1.09/0.97  out_proof_time:                         0.008
% 1.09/0.97  total_time:                             0.06
% 1.09/0.97  num_of_symbols:                         44
% 1.09/0.97  num_of_terms:                           844
% 1.09/0.97  
% 1.09/0.97  ------ Preprocessing
% 1.09/0.97  
% 1.09/0.97  num_of_splits:                          0
% 1.09/0.97  num_of_split_atoms:                     0
% 1.09/0.97  num_of_reused_defs:                     0
% 1.09/0.97  num_eq_ax_congr_red:                    9
% 1.09/0.97  num_of_sem_filtered_clauses:            1
% 1.09/0.97  num_of_subtypes:                        0
% 1.09/0.97  monotx_restored_types:                  0
% 1.09/0.97  sat_num_of_epr_types:                   0
% 1.09/0.97  sat_num_of_non_cyclic_types:            0
% 1.09/0.97  sat_guarded_non_collapsed_types:        0
% 1.09/0.97  num_pure_diseq_elim:                    0
% 1.09/0.97  simp_replaced_by:                       0
% 1.09/0.97  res_preprocessed:                       77
% 1.09/0.97  prep_upred:                             0
% 1.09/0.97  prep_unflattend:                        14
% 1.09/0.97  smt_new_axioms:                         0
% 1.09/0.97  pred_elim_cands:                        1
% 1.09/0.97  pred_elim:                              4
% 1.09/0.97  pred_elim_cl:                           4
% 1.09/0.97  pred_elim_cycles:                       6
% 1.09/0.97  merged_defs:                            0
% 1.09/0.97  merged_defs_ncl:                        0
% 1.09/0.97  bin_hyper_res:                          0
% 1.09/0.97  prep_cycles:                            4
% 1.09/0.97  pred_elim_time:                         0.001
% 1.09/0.97  splitting_time:                         0.
% 1.09/0.97  sem_filter_time:                        0.
% 1.09/0.97  monotx_time:                            0.
% 1.09/0.97  subtype_inf_time:                       0.
% 1.09/0.97  
% 1.09/0.97  ------ Problem properties
% 1.09/0.97  
% 1.09/0.97  clauses:                                14
% 1.09/0.97  conjectures:                            3
% 1.09/0.97  epr:                                    4
% 1.09/0.97  horn:                                   11
% 1.09/0.97  ground:                                 8
% 1.09/0.97  unary:                                  11
% 1.09/0.97  binary:                                 0
% 1.09/0.97  lits:                                   20
% 1.09/0.97  lits_eq:                                17
% 1.09/0.97  fd_pure:                                0
% 1.09/0.97  fd_pseudo:                              0
% 1.09/0.97  fd_cond:                                0
% 1.09/0.97  fd_pseudo_cond:                         3
% 1.09/0.97  ac_symbols:                             0
% 1.09/0.97  
% 1.09/0.97  ------ Propositional Solver
% 1.09/0.97  
% 1.09/0.97  prop_solver_calls:                      26
% 1.09/0.97  prop_fast_solver_calls:                 355
% 1.09/0.97  smt_solver_calls:                       0
% 1.09/0.97  smt_fast_solver_calls:                  0
% 1.09/0.97  prop_num_of_clauses:                    314
% 1.09/0.97  prop_preprocess_simplified:             1611
% 1.09/0.97  prop_fo_subsumed:                       9
% 1.09/0.97  prop_solver_time:                       0.
% 1.09/0.97  smt_solver_time:                        0.
% 1.09/0.97  smt_fast_solver_time:                   0.
% 1.09/0.97  prop_fast_solver_time:                  0.
% 1.09/0.97  prop_unsat_core_time:                   0.
% 1.09/0.97  
% 1.09/0.97  ------ QBF
% 1.09/0.97  
% 1.09/0.97  qbf_q_res:                              0
% 1.09/0.97  qbf_num_tautologies:                    0
% 1.09/0.97  qbf_prep_cycles:                        0
% 1.09/0.97  
% 1.09/0.97  ------ BMC1
% 1.09/0.97  
% 1.09/0.97  bmc1_current_bound:                     -1
% 1.09/0.97  bmc1_last_solved_bound:                 -1
% 1.09/0.97  bmc1_unsat_core_size:                   -1
% 1.09/0.97  bmc1_unsat_core_parents_size:           -1
% 1.09/0.97  bmc1_merge_next_fun:                    0
% 1.09/0.97  bmc1_unsat_core_clauses_time:           0.
% 1.09/0.97  
% 1.09/0.97  ------ Instantiation
% 1.09/0.97  
% 1.09/0.97  inst_num_of_clauses:                    164
% 1.09/0.97  inst_num_in_passive:                    35
% 1.09/0.97  inst_num_in_active:                     75
% 1.09/0.97  inst_num_in_unprocessed:                54
% 1.09/0.97  inst_num_of_loops:                      80
% 1.09/0.97  inst_num_of_learning_restarts:          0
% 1.09/0.97  inst_num_moves_active_passive:          1
% 1.09/0.97  inst_lit_activity:                      0
% 1.09/0.97  inst_lit_activity_moves:                0
% 1.09/0.97  inst_num_tautologies:                   0
% 1.09/0.97  inst_num_prop_implied:                  0
% 1.09/0.97  inst_num_existing_simplified:           0
% 1.09/0.97  inst_num_eq_res_simplified:             0
% 1.09/0.97  inst_num_child_elim:                    0
% 1.09/0.97  inst_num_of_dismatching_blockings:      12
% 1.09/0.97  inst_num_of_non_proper_insts:           101
% 1.09/0.97  inst_num_of_duplicates:                 0
% 1.09/0.97  inst_inst_num_from_inst_to_res:         0
% 1.09/0.97  inst_dismatching_checking_time:         0.
% 1.09/0.97  
% 1.09/0.97  ------ Resolution
% 1.09/0.97  
% 1.09/0.97  res_num_of_clauses:                     0
% 1.09/0.97  res_num_in_passive:                     0
% 1.09/0.97  res_num_in_active:                      0
% 1.09/0.97  res_num_of_loops:                       81
% 1.09/0.97  res_forward_subset_subsumed:            31
% 1.09/0.97  res_backward_subset_subsumed:           0
% 1.09/0.97  res_forward_subsumed:                   0
% 1.09/0.97  res_backward_subsumed:                  0
% 1.09/0.97  res_forward_subsumption_resolution:     0
% 1.09/0.97  res_backward_subsumption_resolution:    0
% 1.09/0.97  res_clause_to_clause_subsumption:       22
% 1.09/0.97  res_orphan_elimination:                 0
% 1.09/0.97  res_tautology_del:                      22
% 1.09/0.97  res_num_eq_res_simplified:              0
% 1.09/0.97  res_num_sel_changes:                    0
% 1.09/0.97  res_moves_from_active_to_pass:          0
% 1.09/0.97  
% 1.09/0.97  ------ Superposition
% 1.09/0.97  
% 1.09/0.97  sup_time_total:                         0.
% 1.09/0.97  sup_time_generating:                    0.
% 1.09/0.97  sup_time_sim_full:                      0.
% 1.09/0.97  sup_time_sim_immed:                     0.
% 1.09/0.97  
% 1.09/0.97  sup_num_of_clauses:                     10
% 1.09/0.97  sup_num_in_active:                      7
% 1.09/0.97  sup_num_in_passive:                     3
% 1.09/0.97  sup_num_of_loops:                       15
% 1.09/0.97  sup_fw_superposition:                   11
% 1.09/0.97  sup_bw_superposition:                   3
% 1.09/0.97  sup_immediate_simplified:               1
% 1.09/0.97  sup_given_eliminated:                   0
% 1.09/0.97  comparisons_done:                       0
% 1.09/0.97  comparisons_avoided:                    0
% 1.09/0.97  
% 1.09/0.97  ------ Simplifications
% 1.09/0.97  
% 1.09/0.97  
% 1.09/0.97  sim_fw_subset_subsumed:                 1
% 1.09/0.97  sim_bw_subset_subsumed:                 0
% 1.09/0.97  sim_fw_subsumed:                        0
% 1.09/0.97  sim_bw_subsumed:                        0
% 1.09/0.97  sim_fw_subsumption_res:                 0
% 1.09/0.97  sim_bw_subsumption_res:                 0
% 1.09/0.97  sim_tautology_del:                      2
% 1.09/0.97  sim_eq_tautology_del:                   1
% 1.09/0.97  sim_eq_res_simp:                        0
% 1.09/0.97  sim_fw_demodulated:                     0
% 1.09/0.97  sim_bw_demodulated:                     8
% 1.09/0.97  sim_light_normalised:                   1
% 1.09/0.97  sim_joinable_taut:                      0
% 1.09/0.97  sim_joinable_simp:                      0
% 1.09/0.97  sim_ac_normalised:                      0
% 1.09/0.97  sim_smt_subsumption:                    0
% 1.09/0.97  
%------------------------------------------------------------------------------
