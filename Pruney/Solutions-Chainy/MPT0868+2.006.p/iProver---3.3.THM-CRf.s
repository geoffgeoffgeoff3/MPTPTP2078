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
% DateTime   : Thu Dec  3 11:58:08 EST 2020

% Result     : Theorem 1.64s
% Output     : CNFRefutation 1.64s
% Verified   : 
% Statistics : Number of formulae       :   99 (1017 expanded)
%              Number of clauses        :   60 ( 407 expanded)
%              Number of leaves         :   13 ( 228 expanded)
%              Depth                    :   21
%              Number of atoms          :  252 (3628 expanded)
%              Number of equality atoms :  170 (2050 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :   10 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f9,conjecture,(
    ! [X0,X1] :
      ~ ( ~ ! [X2] :
              ( m1_subset_1(X2,k2_zfmisc_1(X0,X1))
             => ( k2_mcart_1(X2) != X2
                & k1_mcart_1(X2) != X2 ) )
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,negated_conjecture,(
    ~ ! [X0,X1] :
        ~ ( ~ ! [X2] :
                ( m1_subset_1(X2,k2_zfmisc_1(X0,X1))
               => ( k2_mcart_1(X2) != X2
                  & k1_mcart_1(X2) != X2 ) )
          & k1_xboole_0 != X1
          & k1_xboole_0 != X0 ) ),
    inference(negated_conjecture,[],[f9])).

fof(f18,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ( k2_mcart_1(X2) = X2
            | k1_mcart_1(X2) = X2 )
          & m1_subset_1(X2,k2_zfmisc_1(X0,X1)) )
      & k1_xboole_0 != X1
      & k1_xboole_0 != X0 ) ),
    inference(ennf_transformation,[],[f10])).

fof(f21,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ( k2_mcart_1(X2) = X2
            | k1_mcart_1(X2) = X2 )
          & m1_subset_1(X2,k2_zfmisc_1(X0,X1)) )
     => ( ( k2_mcart_1(sK2) = sK2
          | k1_mcart_1(sK2) = sK2 )
        & m1_subset_1(sK2,k2_zfmisc_1(X0,X1)) ) ) ),
    introduced(choice_axiom,[])).

fof(f20,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ( k2_mcart_1(X2) = X2
              | k1_mcart_1(X2) = X2 )
            & m1_subset_1(X2,k2_zfmisc_1(X0,X1)) )
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 )
   => ( ? [X2] :
          ( ( k2_mcart_1(X2) = X2
            | k1_mcart_1(X2) = X2 )
          & m1_subset_1(X2,k2_zfmisc_1(sK0,sK1)) )
      & k1_xboole_0 != sK1
      & k1_xboole_0 != sK0 ) ),
    introduced(choice_axiom,[])).

fof(f22,plain,
    ( ( k2_mcart_1(sK2) = sK2
      | k1_mcart_1(sK2) = sK2 )
    & m1_subset_1(sK2,k2_zfmisc_1(sK0,sK1))
    & k1_xboole_0 != sK1
    & k1_xboole_0 != sK0 ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f18,f21,f20])).

fof(f40,plain,
    ( k2_mcart_1(sK2) = sK2
    | k1_mcart_1(sK2) = sK2 ),
    inference(cnf_transformation,[],[f22])).

fof(f39,plain,(
    m1_subset_1(sK2,k2_zfmisc_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f22])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( ( v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) ) )
      & ( ~ v1_xboole_0(X0)
       => ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X0,X1] :
      ( ( ( m1_subset_1(X1,X0)
        <=> v1_xboole_0(X1) )
        | ~ v1_xboole_0(X0) )
      & ( ( m1_subset_1(X1,X0)
        <=> r2_hidden(X1,X0) )
        | v1_xboole_0(X0) ) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f19,plain,(
    ! [X0,X1] :
      ( ( ( ( m1_subset_1(X1,X0)
            | ~ v1_xboole_0(X1) )
          & ( v1_xboole_0(X1)
            | ~ m1_subset_1(X1,X0) ) )
        | ~ v1_xboole_0(X0) )
      & ( ( ( m1_subset_1(X1,X0)
            | ~ r2_hidden(X1,X0) )
          & ( r2_hidden(X1,X0)
            | ~ m1_subset_1(X1,X0) ) )
        | v1_xboole_0(X0) ) ) ),
    inference(nnf_transformation,[],[f12])).

fof(f24,plain,(
    ! [X0,X1] :
      ( r2_hidden(X1,X0)
      | ~ m1_subset_1(X1,X0)
      | v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f4,axiom,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r2_hidden(X0,X1)
       => k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
      | ~ r2_hidden(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f17,plain,(
    ! [X0,X1] :
      ( k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
      | ~ r2_hidden(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f16])).

fof(f34,plain,(
    ! [X0,X1] :
      ( k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
      | ~ r2_hidden(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f23,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f11])).

fof(f6,axiom,(
    ! [X0] :
      ( ? [X1,X2] : k4_tarski(X1,X2) = X0
     => ( k2_mcart_1(X0) != X0
        & k1_mcart_1(X0) != X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0] :
      ( ( k2_mcart_1(X0) != X0
        & k1_mcart_1(X0) != X0 )
      | ! [X1,X2] : k4_tarski(X1,X2) != X0 ) ),
    inference(ennf_transformation,[],[f6])).

fof(f32,plain,(
    ! [X2,X0,X1] :
      ( k1_mcart_1(X0) != X0
      | k4_tarski(X1,X2) != X0 ) ),
    inference(cnf_transformation,[],[f15])).

fof(f42,plain,(
    ! [X2,X1] : k4_tarski(X1,X2) != k1_mcart_1(k4_tarski(X1,X2)) ),
    inference(equality_resolution,[],[f32])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( k2_mcart_1(k4_tarski(X0,X1)) = X1
      & k1_mcart_1(k4_tarski(X0,X1)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] : k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f8])).

fof(f37,plain,(
    k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f22])).

fof(f38,plain,(
    k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f22])).

fof(f5,axiom,(
    ! [X0,X1] :
      ~ ( ~ ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
            & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 )
        & k1_xboole_0 != X1
        & k1_xboole_0 != X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
        & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0 )
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(ennf_transformation,[],[f5])).

fof(f31,plain,(
    ! [X0,X1] :
      ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
      | k1_xboole_0 = X1
      | k1_xboole_0 = X0 ) ),
    inference(cnf_transformation,[],[f14])).

fof(f3,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => v1_xboole_0(k2_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0] :
      ( v1_xboole_0(k2_relat_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f28,plain,(
    ! [X0] :
      ( v1_xboole_0(k2_relat_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f26,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
      | ~ m1_subset_1(X1,X0)
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f33,plain,(
    ! [X2,X0,X1] :
      ( k2_mcart_1(X0) != X0
      | k4_tarski(X1,X2) != X0 ) ),
    inference(cnf_transformation,[],[f15])).

fof(f41,plain,(
    ! [X2,X1] : k4_tarski(X1,X2) != k2_mcart_1(k4_tarski(X1,X2)) ),
    inference(equality_resolution,[],[f33])).

fof(f36,plain,(
    ! [X0,X1] : k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f8])).

cnf(c_14,negated_conjecture,
    ( k1_mcart_1(sK2) = sK2
    | k2_mcart_1(sK2) = sK2 ),
    inference(cnf_transformation,[],[f40])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK2,k2_zfmisc_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_4,plain,
    ( r2_hidden(X0,X1)
    | ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_6,plain,
    ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_11,plain,
    ( ~ r2_hidden(X0,X1)
    | ~ v1_relat_1(X1)
    | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f34])).

cnf(c_124,plain,
    ( ~ r2_hidden(X0,X1)
    | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
    | k2_zfmisc_1(X2,X3) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_6,c_11])).

cnf(c_125,plain,
    ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
    | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_124])).

cnf(c_140,plain,
    ( ~ m1_subset_1(X0,X1)
    | v1_xboole_0(X1)
    | X2 != X0
    | k4_tarski(k1_mcart_1(X2),k2_mcart_1(X2)) = X2
    | k2_zfmisc_1(X3,X4) != X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_125])).

cnf(c_141,plain,
    ( ~ m1_subset_1(X0,k2_zfmisc_1(X1,X2))
    | v1_xboole_0(k2_zfmisc_1(X1,X2))
    | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
    inference(unflattening,[status(thm)],[c_140])).

cnf(c_172,plain,
    ( v1_xboole_0(k2_zfmisc_1(X0,X1))
    | k4_tarski(k1_mcart_1(X2),k2_mcart_1(X2)) = X2
    | k2_zfmisc_1(X0,X1) != k2_zfmisc_1(sK0,sK1)
    | sK2 != X2 ),
    inference(resolution_lifted,[status(thm)],[c_15,c_141])).

cnf(c_173,plain,
    ( v1_xboole_0(k2_zfmisc_1(X0,X1))
    | k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
    | k2_zfmisc_1(X0,X1) != k2_zfmisc_1(sK0,sK1) ),
    inference(unflattening,[status(thm)],[c_172])).

cnf(c_325,plain,
    ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
    | k2_zfmisc_1(X0,X1) != k2_zfmisc_1(sK0,sK1)
    | v1_xboole_0(k2_zfmisc_1(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_173])).

cnf(c_431,plain,
    ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
    | v1_xboole_0(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
    inference(equality_resolution,[status(thm)],[c_325])).

cnf(c_0,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f23])).

cnf(c_328,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_505,plain,
    ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
    | k2_zfmisc_1(sK0,sK1) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_431,c_328])).

cnf(c_733,plain,
    ( k4_tarski(sK2,k2_mcart_1(sK2)) = sK2
    | k2_zfmisc_1(sK0,sK1) = k1_xboole_0
    | k2_mcart_1(sK2) = sK2 ),
    inference(superposition,[status(thm)],[c_14,c_505])).

cnf(c_10,plain,
    ( k1_mcart_1(k4_tarski(X0,X1)) != k4_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_13,plain,
    ( k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
    inference(cnf_transformation,[],[f35])).

cnf(c_341,plain,
    ( k4_tarski(X0,X1) != X0 ),
    inference(light_normalisation,[status(thm)],[c_10,c_13])).

cnf(c_735,plain,
    ( k2_zfmisc_1(sK0,sK1) = k1_xboole_0
    | k1_mcart_1(sK2) != sK2 ),
    inference(superposition,[status(thm)],[c_505,c_341])).

cnf(c_749,plain,
    ( k2_zfmisc_1(sK0,sK1) = k1_xboole_0
    | k2_mcart_1(sK2) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_733,c_14,c_735])).

cnf(c_755,plain,
    ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
    | k2_mcart_1(sK2) = sK2
    | v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(superposition,[status(thm)],[c_749,c_431])).

cnf(c_17,negated_conjecture,
    ( k1_xboole_0 != sK0 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_16,negated_conjecture,
    ( k1_xboole_0 != sK1 ),
    inference(cnf_transformation,[],[f38])).

cnf(c_232,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_249,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_232])).

cnf(c_233,plain,
    ( X0 != X1
    | X2 != X1
    | X2 = X0 ),
    theory(equality)).

cnf(c_405,plain,
    ( sK1 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK1 ),
    inference(instantiation,[status(thm)],[c_233])).

cnf(c_406,plain,
    ( sK1 != k1_xboole_0
    | k1_xboole_0 = sK1
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_405])).

cnf(c_407,plain,
    ( sK0 != X0
    | k1_xboole_0 != X0
    | k1_xboole_0 = sK0 ),
    inference(instantiation,[status(thm)],[c_233])).

cnf(c_408,plain,
    ( sK0 != k1_xboole_0
    | k1_xboole_0 = sK0
    | k1_xboole_0 != k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_407])).

cnf(c_7,plain,
    ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
    | k1_xboole_0 = X0
    | k1_xboole_0 = X1 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_5,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(k2_relat_1(X0)) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_327,plain,
    ( v1_xboole_0(X0) != iProver_top
    | v1_xboole_0(k2_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1026,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | v1_xboole_0(X0) = iProver_top
    | v1_xboole_0(k2_zfmisc_1(X1,X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_7,c_327])).

cnf(c_44,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1054,plain,
    ( k1_xboole_0 = X1
    | k1_xboole_0 = X0
    | v1_xboole_0(k2_zfmisc_1(X1,X0)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1026,c_44])).

cnf(c_1055,plain,
    ( k1_xboole_0 = X0
    | k1_xboole_0 = X1
    | v1_xboole_0(k2_zfmisc_1(X1,X0)) != iProver_top ),
    inference(renaming,[status(thm)],[c_1054])).

cnf(c_1061,plain,
    ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
    | sK1 = k1_xboole_0
    | sK0 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_431,c_1055])).

cnf(c_1215,plain,
    ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2 ),
    inference(global_propositional_subsumption,[status(thm)],[c_755,c_17,c_16,c_249,c_406,c_408,c_1061])).

cnf(c_2,plain,
    ( ~ m1_subset_1(X0,X1)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_160,plain,
    ( ~ v1_xboole_0(X0)
    | v1_xboole_0(X1)
    | k2_zfmisc_1(sK0,sK1) != X0
    | sK2 != X1 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_15])).

cnf(c_161,plain,
    ( ~ v1_xboole_0(k2_zfmisc_1(sK0,sK1))
    | v1_xboole_0(sK2) ),
    inference(unflattening,[status(thm)],[c_160])).

cnf(c_326,plain,
    ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) != iProver_top
    | v1_xboole_0(sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_161])).

cnf(c_436,plain,
    ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
    | v1_xboole_0(sK2) = iProver_top ),
    inference(superposition,[status(thm)],[c_431,c_326])).

cnf(c_506,plain,
    ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_436,c_328])).

cnf(c_618,plain,
    ( k4_tarski(sK2,k2_mcart_1(sK2)) = sK2
    | k2_mcart_1(sK2) = sK2
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_14,c_506])).

cnf(c_619,plain,
    ( k1_mcart_1(sK2) != sK2
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_506,c_341])).

cnf(c_657,plain,
    ( k2_mcart_1(sK2) = sK2
    | sK2 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_618,c_14,c_619])).

cnf(c_661,plain,
    ( k4_tarski(k1_mcart_1(sK2),sK2) = sK2
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_657,c_506])).

cnf(c_9,plain,
    ( k2_mcart_1(k4_tarski(X0,X1)) != k4_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_12,plain,
    ( k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_344,plain,
    ( k4_tarski(X0,X1) != X1 ),
    inference(light_normalisation,[status(thm)],[c_9,c_12])).

cnf(c_1015,plain,
    ( sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_661,c_344])).

cnf(c_1217,plain,
    ( k4_tarski(k1_mcart_1(k1_xboole_0),k2_mcart_1(k1_xboole_0)) = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1215,c_1015])).

cnf(c_1221,plain,
    ( k1_mcart_1(k1_xboole_0) != k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1217,c_341])).

cnf(c_1220,plain,
    ( k2_mcart_1(k1_xboole_0) != k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1217,c_344])).

cnf(c_1092,plain,
    ( k1_mcart_1(k1_xboole_0) = k1_xboole_0
    | k2_mcart_1(k1_xboole_0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_1015,c_14])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_1221,c_1220,c_1092])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 14:53:22 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  % Running in FOF mode
% 1.64/0.99  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 1.64/0.99  
% 1.64/0.99  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.64/0.99  
% 1.64/0.99  ------  iProver source info
% 1.64/0.99  
% 1.64/0.99  git: date: 2020-06-30 10:37:57 +0100
% 1.64/0.99  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.64/0.99  git: non_committed_changes: false
% 1.64/0.99  git: last_make_outside_of_git: false
% 1.64/0.99  
% 1.64/0.99  ------ 
% 1.64/0.99  
% 1.64/0.99  ------ Input Options
% 1.64/0.99  
% 1.64/0.99  --out_options                           all
% 1.64/0.99  --tptp_safe_out                         true
% 1.64/0.99  --problem_path                          ""
% 1.64/0.99  --include_path                          ""
% 1.64/0.99  --clausifier                            res/vclausify_rel
% 1.64/0.99  --clausifier_options                    --mode clausify
% 1.64/0.99  --stdin                                 false
% 1.64/0.99  --stats_out                             all
% 1.64/0.99  
% 1.64/0.99  ------ General Options
% 1.64/0.99  
% 1.64/0.99  --fof                                   false
% 1.64/0.99  --time_out_real                         305.
% 1.64/0.99  --time_out_virtual                      -1.
% 1.64/0.99  --symbol_type_check                     false
% 1.64/0.99  --clausify_out                          false
% 1.64/0.99  --sig_cnt_out                           false
% 1.64/0.99  --trig_cnt_out                          false
% 1.64/0.99  --trig_cnt_out_tolerance                1.
% 1.64/0.99  --trig_cnt_out_sk_spl                   false
% 1.64/0.99  --abstr_cl_out                          false
% 1.64/0.99  
% 1.64/0.99  ------ Global Options
% 1.64/0.99  
% 1.64/0.99  --schedule                              default
% 1.64/0.99  --add_important_lit                     false
% 1.64/0.99  --prop_solver_per_cl                    1000
% 1.64/0.99  --min_unsat_core                        false
% 1.64/0.99  --soft_assumptions                      false
% 1.64/0.99  --soft_lemma_size                       3
% 1.64/0.99  --prop_impl_unit_size                   0
% 1.64/0.99  --prop_impl_unit                        []
% 1.64/0.99  --share_sel_clauses                     true
% 1.64/0.99  --reset_solvers                         false
% 1.64/0.99  --bc_imp_inh                            [conj_cone]
% 1.64/0.99  --conj_cone_tolerance                   3.
% 1.64/0.99  --extra_neg_conj                        none
% 1.64/0.99  --large_theory_mode                     true
% 1.64/0.99  --prolific_symb_bound                   200
% 1.64/0.99  --lt_threshold                          2000
% 1.64/0.99  --clause_weak_htbl                      true
% 1.64/0.99  --gc_record_bc_elim                     false
% 1.64/0.99  
% 1.64/0.99  ------ Preprocessing Options
% 1.64/0.99  
% 1.64/0.99  --preprocessing_flag                    true
% 1.64/0.99  --time_out_prep_mult                    0.1
% 1.64/0.99  --splitting_mode                        input
% 1.64/0.99  --splitting_grd                         true
% 1.64/0.99  --splitting_cvd                         false
% 1.64/0.99  --splitting_cvd_svl                     false
% 1.64/0.99  --splitting_nvd                         32
% 1.64/0.99  --sub_typing                            true
% 1.64/0.99  --prep_gs_sim                           true
% 1.64/0.99  --prep_unflatten                        true
% 1.64/0.99  --prep_res_sim                          true
% 1.64/0.99  --prep_upred                            true
% 1.64/0.99  --prep_sem_filter                       exhaustive
% 1.64/0.99  --prep_sem_filter_out                   false
% 1.64/0.99  --pred_elim                             true
% 1.64/0.99  --res_sim_input                         true
% 1.64/0.99  --eq_ax_congr_red                       true
% 1.64/0.99  --pure_diseq_elim                       true
% 1.64/0.99  --brand_transform                       false
% 1.64/0.99  --non_eq_to_eq                          false
% 1.64/0.99  --prep_def_merge                        true
% 1.64/0.99  --prep_def_merge_prop_impl              false
% 1.64/0.99  --prep_def_merge_mbd                    true
% 1.64/0.99  --prep_def_merge_tr_red                 false
% 1.64/0.99  --prep_def_merge_tr_cl                  false
% 1.64/0.99  --smt_preprocessing                     true
% 1.64/0.99  --smt_ac_axioms                         fast
% 1.64/0.99  --preprocessed_out                      false
% 1.64/0.99  --preprocessed_stats                    false
% 1.64/0.99  
% 1.64/0.99  ------ Abstraction refinement Options
% 1.64/0.99  
% 1.64/0.99  --abstr_ref                             []
% 1.64/0.99  --abstr_ref_prep                        false
% 1.64/0.99  --abstr_ref_until_sat                   false
% 1.64/0.99  --abstr_ref_sig_restrict                funpre
% 1.64/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.64/0.99  --abstr_ref_under                       []
% 1.64/0.99  
% 1.64/0.99  ------ SAT Options
% 1.64/0.99  
% 1.64/0.99  --sat_mode                              false
% 1.64/0.99  --sat_fm_restart_options                ""
% 1.64/0.99  --sat_gr_def                            false
% 1.64/0.99  --sat_epr_types                         true
% 1.64/0.99  --sat_non_cyclic_types                  false
% 1.64/0.99  --sat_finite_models                     false
% 1.64/0.99  --sat_fm_lemmas                         false
% 1.64/0.99  --sat_fm_prep                           false
% 1.64/0.99  --sat_fm_uc_incr                        true
% 1.64/0.99  --sat_out_model                         small
% 1.64/0.99  --sat_out_clauses                       false
% 1.64/0.99  
% 1.64/0.99  ------ QBF Options
% 1.64/0.99  
% 1.64/0.99  --qbf_mode                              false
% 1.64/0.99  --qbf_elim_univ                         false
% 1.64/0.99  --qbf_dom_inst                          none
% 1.64/0.99  --qbf_dom_pre_inst                      false
% 1.64/0.99  --qbf_sk_in                             false
% 1.64/0.99  --qbf_pred_elim                         true
% 1.64/0.99  --qbf_split                             512
% 1.64/0.99  
% 1.64/0.99  ------ BMC1 Options
% 1.64/0.99  
% 1.64/0.99  --bmc1_incremental                      false
% 1.64/0.99  --bmc1_axioms                           reachable_all
% 1.64/0.99  --bmc1_min_bound                        0
% 1.64/0.99  --bmc1_max_bound                        -1
% 1.64/0.99  --bmc1_max_bound_default                -1
% 1.64/0.99  --bmc1_symbol_reachability              true
% 1.64/0.99  --bmc1_property_lemmas                  false
% 1.64/0.99  --bmc1_k_induction                      false
% 1.64/0.99  --bmc1_non_equiv_states                 false
% 1.64/0.99  --bmc1_deadlock                         false
% 1.64/0.99  --bmc1_ucm                              false
% 1.64/0.99  --bmc1_add_unsat_core                   none
% 1.64/0.99  --bmc1_unsat_core_children              false
% 1.64/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.64/0.99  --bmc1_out_stat                         full
% 1.64/0.99  --bmc1_ground_init                      false
% 1.64/0.99  --bmc1_pre_inst_next_state              false
% 1.64/0.99  --bmc1_pre_inst_state                   false
% 1.64/0.99  --bmc1_pre_inst_reach_state             false
% 1.64/0.99  --bmc1_out_unsat_core                   false
% 1.64/0.99  --bmc1_aig_witness_out                  false
% 1.64/0.99  --bmc1_verbose                          false
% 1.64/0.99  --bmc1_dump_clauses_tptp                false
% 1.64/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.64/0.99  --bmc1_dump_file                        -
% 1.64/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.64/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.64/0.99  --bmc1_ucm_extend_mode                  1
% 1.64/0.99  --bmc1_ucm_init_mode                    2
% 1.64/0.99  --bmc1_ucm_cone_mode                    none
% 1.64/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.64/0.99  --bmc1_ucm_relax_model                  4
% 1.64/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.64/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.64/0.99  --bmc1_ucm_layered_model                none
% 1.64/0.99  --bmc1_ucm_max_lemma_size               10
% 1.64/0.99  
% 1.64/0.99  ------ AIG Options
% 1.64/0.99  
% 1.64/0.99  --aig_mode                              false
% 1.64/0.99  
% 1.64/0.99  ------ Instantiation Options
% 1.64/0.99  
% 1.64/0.99  --instantiation_flag                    true
% 1.64/0.99  --inst_sos_flag                         false
% 1.64/0.99  --inst_sos_phase                        true
% 1.64/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.64/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.64/0.99  --inst_lit_sel_side                     num_symb
% 1.64/0.99  --inst_solver_per_active                1400
% 1.64/0.99  --inst_solver_calls_frac                1.
% 1.64/0.99  --inst_passive_queue_type               priority_queues
% 1.64/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.64/0.99  --inst_passive_queues_freq              [25;2]
% 1.64/0.99  --inst_dismatching                      true
% 1.64/0.99  --inst_eager_unprocessed_to_passive     true
% 1.64/0.99  --inst_prop_sim_given                   true
% 1.64/0.99  --inst_prop_sim_new                     false
% 1.64/0.99  --inst_subs_new                         false
% 1.64/0.99  --inst_eq_res_simp                      false
% 1.64/0.99  --inst_subs_given                       false
% 1.64/0.99  --inst_orphan_elimination               true
% 1.64/0.99  --inst_learning_loop_flag               true
% 1.64/0.99  --inst_learning_start                   3000
% 1.64/0.99  --inst_learning_factor                  2
% 1.64/0.99  --inst_start_prop_sim_after_learn       3
% 1.64/0.99  --inst_sel_renew                        solver
% 1.64/0.99  --inst_lit_activity_flag                true
% 1.64/0.99  --inst_restr_to_given                   false
% 1.64/0.99  --inst_activity_threshold               500
% 1.64/0.99  --inst_out_proof                        true
% 1.64/0.99  
% 1.64/0.99  ------ Resolution Options
% 1.64/0.99  
% 1.64/0.99  --resolution_flag                       true
% 1.64/0.99  --res_lit_sel                           adaptive
% 1.64/0.99  --res_lit_sel_side                      none
% 1.64/0.99  --res_ordering                          kbo
% 1.64/0.99  --res_to_prop_solver                    active
% 1.64/0.99  --res_prop_simpl_new                    false
% 1.64/0.99  --res_prop_simpl_given                  true
% 1.64/0.99  --res_passive_queue_type                priority_queues
% 1.64/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.64/0.99  --res_passive_queues_freq               [15;5]
% 1.64/0.99  --res_forward_subs                      full
% 1.64/0.99  --res_backward_subs                     full
% 1.64/0.99  --res_forward_subs_resolution           true
% 1.64/0.99  --res_backward_subs_resolution          true
% 1.64/0.99  --res_orphan_elimination                true
% 1.64/0.99  --res_time_limit                        2.
% 1.64/0.99  --res_out_proof                         true
% 1.64/0.99  
% 1.64/0.99  ------ Superposition Options
% 1.64/0.99  
% 1.64/0.99  --superposition_flag                    true
% 1.64/0.99  --sup_passive_queue_type                priority_queues
% 1.64/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.64/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.64/0.99  --demod_completeness_check              fast
% 1.64/0.99  --demod_use_ground                      true
% 1.64/0.99  --sup_to_prop_solver                    passive
% 1.64/0.99  --sup_prop_simpl_new                    true
% 1.64/0.99  --sup_prop_simpl_given                  true
% 1.64/0.99  --sup_fun_splitting                     false
% 1.64/0.99  --sup_smt_interval                      50000
% 1.64/0.99  
% 1.64/0.99  ------ Superposition Simplification Setup
% 1.64/0.99  
% 1.64/0.99  --sup_indices_passive                   []
% 1.64/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.64/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.64/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.64/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.64/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.64/0.99  --sup_full_bw                           [BwDemod]
% 1.64/0.99  --sup_immed_triv                        [TrivRules]
% 1.64/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.64/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.64/0.99  --sup_immed_bw_main                     []
% 1.64/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.64/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.64/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.64/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.64/0.99  
% 1.64/0.99  ------ Combination Options
% 1.64/0.99  
% 1.64/0.99  --comb_res_mult                         3
% 1.64/0.99  --comb_sup_mult                         2
% 1.64/0.99  --comb_inst_mult                        10
% 1.64/0.99  
% 1.64/0.99  ------ Debug Options
% 1.64/0.99  
% 1.64/0.99  --dbg_backtrace                         false
% 1.64/0.99  --dbg_dump_prop_clauses                 false
% 1.64/0.99  --dbg_dump_prop_clauses_file            -
% 1.64/0.99  --dbg_out_stat                          false
% 1.64/0.99  ------ Parsing...
% 1.64/0.99  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.64/0.99  
% 1.64/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe:2:0s pe_e  sf_s  rm: 3 0s  sf_e  pe_s  pe_e 
% 1.64/0.99  
% 1.64/0.99  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.64/0.99  
% 1.64/0.99  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 1.64/0.99  ------ Proving...
% 1.64/0.99  ------ Problem Properties 
% 1.64/0.99  
% 1.64/0.99  
% 1.64/0.99  clauses                                 13
% 1.64/0.99  conjectures                             3
% 1.64/0.99  EPR                                     3
% 1.64/0.99  Horn                                    9
% 1.64/0.99  unary                                   6
% 1.64/0.99  binary                                  4
% 1.64/0.99  lits                                    23
% 1.64/0.99  lits eq                                 17
% 1.64/0.99  fd_pure                                 0
% 1.64/0.99  fd_pseudo                               0
% 1.64/0.99  fd_cond                                 1
% 1.64/0.99  fd_pseudo_cond                          0
% 1.64/0.99  AC symbols                              0
% 1.64/0.99  
% 1.64/0.99  ------ Schedule dynamic 5 is on 
% 1.64/0.99  
% 1.64/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 1.64/0.99  
% 1.64/0.99  
% 1.64/0.99  ------ 
% 1.64/0.99  Current options:
% 1.64/0.99  ------ 
% 1.64/0.99  
% 1.64/0.99  ------ Input Options
% 1.64/0.99  
% 1.64/0.99  --out_options                           all
% 1.64/0.99  --tptp_safe_out                         true
% 1.64/0.99  --problem_path                          ""
% 1.64/0.99  --include_path                          ""
% 1.64/0.99  --clausifier                            res/vclausify_rel
% 1.64/0.99  --clausifier_options                    --mode clausify
% 1.64/0.99  --stdin                                 false
% 1.64/0.99  --stats_out                             all
% 1.64/0.99  
% 1.64/0.99  ------ General Options
% 1.64/0.99  
% 1.64/0.99  --fof                                   false
% 1.64/0.99  --time_out_real                         305.
% 1.64/0.99  --time_out_virtual                      -1.
% 1.64/0.99  --symbol_type_check                     false
% 1.64/0.99  --clausify_out                          false
% 1.64/0.99  --sig_cnt_out                           false
% 1.64/0.99  --trig_cnt_out                          false
% 1.64/0.99  --trig_cnt_out_tolerance                1.
% 1.64/0.99  --trig_cnt_out_sk_spl                   false
% 1.64/0.99  --abstr_cl_out                          false
% 1.64/0.99  
% 1.64/0.99  ------ Global Options
% 1.64/0.99  
% 1.64/0.99  --schedule                              default
% 1.64/0.99  --add_important_lit                     false
% 1.64/0.99  --prop_solver_per_cl                    1000
% 1.64/0.99  --min_unsat_core                        false
% 1.64/0.99  --soft_assumptions                      false
% 1.64/0.99  --soft_lemma_size                       3
% 1.64/0.99  --prop_impl_unit_size                   0
% 1.64/0.99  --prop_impl_unit                        []
% 1.64/0.99  --share_sel_clauses                     true
% 1.64/0.99  --reset_solvers                         false
% 1.64/0.99  --bc_imp_inh                            [conj_cone]
% 1.64/0.99  --conj_cone_tolerance                   3.
% 1.64/0.99  --extra_neg_conj                        none
% 1.64/0.99  --large_theory_mode                     true
% 1.64/0.99  --prolific_symb_bound                   200
% 1.64/0.99  --lt_threshold                          2000
% 1.64/0.99  --clause_weak_htbl                      true
% 1.64/0.99  --gc_record_bc_elim                     false
% 1.64/0.99  
% 1.64/0.99  ------ Preprocessing Options
% 1.64/0.99  
% 1.64/0.99  --preprocessing_flag                    true
% 1.64/0.99  --time_out_prep_mult                    0.1
% 1.64/0.99  --splitting_mode                        input
% 1.64/0.99  --splitting_grd                         true
% 1.64/0.99  --splitting_cvd                         false
% 1.64/0.99  --splitting_cvd_svl                     false
% 1.64/0.99  --splitting_nvd                         32
% 1.64/0.99  --sub_typing                            true
% 1.64/0.99  --prep_gs_sim                           true
% 1.64/0.99  --prep_unflatten                        true
% 1.64/0.99  --prep_res_sim                          true
% 1.64/0.99  --prep_upred                            true
% 1.64/0.99  --prep_sem_filter                       exhaustive
% 1.64/0.99  --prep_sem_filter_out                   false
% 1.64/0.99  --pred_elim                             true
% 1.64/0.99  --res_sim_input                         true
% 1.64/0.99  --eq_ax_congr_red                       true
% 1.64/0.99  --pure_diseq_elim                       true
% 1.64/0.99  --brand_transform                       false
% 1.64/0.99  --non_eq_to_eq                          false
% 1.64/0.99  --prep_def_merge                        true
% 1.64/0.99  --prep_def_merge_prop_impl              false
% 1.64/0.99  --prep_def_merge_mbd                    true
% 1.64/0.99  --prep_def_merge_tr_red                 false
% 1.64/0.99  --prep_def_merge_tr_cl                  false
% 1.64/0.99  --smt_preprocessing                     true
% 1.64/0.99  --smt_ac_axioms                         fast
% 1.64/0.99  --preprocessed_out                      false
% 1.64/0.99  --preprocessed_stats                    false
% 1.64/0.99  
% 1.64/0.99  ------ Abstraction refinement Options
% 1.64/0.99  
% 1.64/0.99  --abstr_ref                             []
% 1.64/0.99  --abstr_ref_prep                        false
% 1.64/0.99  --abstr_ref_until_sat                   false
% 1.64/0.99  --abstr_ref_sig_restrict                funpre
% 1.64/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 1.64/0.99  --abstr_ref_under                       []
% 1.64/0.99  
% 1.64/0.99  ------ SAT Options
% 1.64/0.99  
% 1.64/0.99  --sat_mode                              false
% 1.64/0.99  --sat_fm_restart_options                ""
% 1.64/0.99  --sat_gr_def                            false
% 1.64/0.99  --sat_epr_types                         true
% 1.64/0.99  --sat_non_cyclic_types                  false
% 1.64/0.99  --sat_finite_models                     false
% 1.64/0.99  --sat_fm_lemmas                         false
% 1.64/0.99  --sat_fm_prep                           false
% 1.64/0.99  --sat_fm_uc_incr                        true
% 1.64/0.99  --sat_out_model                         small
% 1.64/0.99  --sat_out_clauses                       false
% 1.64/0.99  
% 1.64/0.99  ------ QBF Options
% 1.64/0.99  
% 1.64/0.99  --qbf_mode                              false
% 1.64/0.99  --qbf_elim_univ                         false
% 1.64/0.99  --qbf_dom_inst                          none
% 1.64/0.99  --qbf_dom_pre_inst                      false
% 1.64/0.99  --qbf_sk_in                             false
% 1.64/0.99  --qbf_pred_elim                         true
% 1.64/0.99  --qbf_split                             512
% 1.64/0.99  
% 1.64/0.99  ------ BMC1 Options
% 1.64/0.99  
% 1.64/0.99  --bmc1_incremental                      false
% 1.64/0.99  --bmc1_axioms                           reachable_all
% 1.64/0.99  --bmc1_min_bound                        0
% 1.64/0.99  --bmc1_max_bound                        -1
% 1.64/0.99  --bmc1_max_bound_default                -1
% 1.64/0.99  --bmc1_symbol_reachability              true
% 1.64/0.99  --bmc1_property_lemmas                  false
% 1.64/0.99  --bmc1_k_induction                      false
% 1.64/0.99  --bmc1_non_equiv_states                 false
% 1.64/0.99  --bmc1_deadlock                         false
% 1.64/0.99  --bmc1_ucm                              false
% 1.64/0.99  --bmc1_add_unsat_core                   none
% 1.64/0.99  --bmc1_unsat_core_children              false
% 1.64/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 1.64/0.99  --bmc1_out_stat                         full
% 1.64/0.99  --bmc1_ground_init                      false
% 1.64/0.99  --bmc1_pre_inst_next_state              false
% 1.64/0.99  --bmc1_pre_inst_state                   false
% 1.64/0.99  --bmc1_pre_inst_reach_state             false
% 1.64/0.99  --bmc1_out_unsat_core                   false
% 1.64/0.99  --bmc1_aig_witness_out                  false
% 1.64/0.99  --bmc1_verbose                          false
% 1.64/0.99  --bmc1_dump_clauses_tptp                false
% 1.64/0.99  --bmc1_dump_unsat_core_tptp             false
% 1.64/0.99  --bmc1_dump_file                        -
% 1.64/0.99  --bmc1_ucm_expand_uc_limit              128
% 1.64/0.99  --bmc1_ucm_n_expand_iterations          6
% 1.64/0.99  --bmc1_ucm_extend_mode                  1
% 1.64/0.99  --bmc1_ucm_init_mode                    2
% 1.64/0.99  --bmc1_ucm_cone_mode                    none
% 1.64/0.99  --bmc1_ucm_reduced_relation_type        0
% 1.64/0.99  --bmc1_ucm_relax_model                  4
% 1.64/0.99  --bmc1_ucm_full_tr_after_sat            true
% 1.64/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 1.64/0.99  --bmc1_ucm_layered_model                none
% 1.64/0.99  --bmc1_ucm_max_lemma_size               10
% 1.64/0.99  
% 1.64/0.99  ------ AIG Options
% 1.64/0.99  
% 1.64/0.99  --aig_mode                              false
% 1.64/0.99  
% 1.64/0.99  ------ Instantiation Options
% 1.64/0.99  
% 1.64/0.99  --instantiation_flag                    true
% 1.64/0.99  --inst_sos_flag                         false
% 1.64/0.99  --inst_sos_phase                        true
% 1.64/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.64/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.64/0.99  --inst_lit_sel_side                     none
% 1.64/0.99  --inst_solver_per_active                1400
% 1.64/0.99  --inst_solver_calls_frac                1.
% 1.64/0.99  --inst_passive_queue_type               priority_queues
% 1.64/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.64/0.99  --inst_passive_queues_freq              [25;2]
% 1.64/0.99  --inst_dismatching                      true
% 1.64/0.99  --inst_eager_unprocessed_to_passive     true
% 1.64/0.99  --inst_prop_sim_given                   true
% 1.64/0.99  --inst_prop_sim_new                     false
% 1.64/0.99  --inst_subs_new                         false
% 1.64/0.99  --inst_eq_res_simp                      false
% 1.64/0.99  --inst_subs_given                       false
% 1.64/0.99  --inst_orphan_elimination               true
% 1.64/0.99  --inst_learning_loop_flag               true
% 1.64/0.99  --inst_learning_start                   3000
% 1.64/0.99  --inst_learning_factor                  2
% 1.64/0.99  --inst_start_prop_sim_after_learn       3
% 1.64/0.99  --inst_sel_renew                        solver
% 1.64/0.99  --inst_lit_activity_flag                true
% 1.64/0.99  --inst_restr_to_given                   false
% 1.64/0.99  --inst_activity_threshold               500
% 1.64/0.99  --inst_out_proof                        true
% 1.64/0.99  
% 1.64/0.99  ------ Resolution Options
% 1.64/0.99  
% 1.64/0.99  --resolution_flag                       false
% 1.64/0.99  --res_lit_sel                           adaptive
% 1.64/0.99  --res_lit_sel_side                      none
% 1.64/0.99  --res_ordering                          kbo
% 1.64/0.99  --res_to_prop_solver                    active
% 1.64/0.99  --res_prop_simpl_new                    false
% 1.64/0.99  --res_prop_simpl_given                  true
% 1.64/0.99  --res_passive_queue_type                priority_queues
% 1.64/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.64/0.99  --res_passive_queues_freq               [15;5]
% 1.64/0.99  --res_forward_subs                      full
% 1.64/0.99  --res_backward_subs                     full
% 1.64/0.99  --res_forward_subs_resolution           true
% 1.64/0.99  --res_backward_subs_resolution          true
% 1.64/0.99  --res_orphan_elimination                true
% 1.64/0.99  --res_time_limit                        2.
% 1.64/0.99  --res_out_proof                         true
% 1.64/0.99  
% 1.64/0.99  ------ Superposition Options
% 1.64/0.99  
% 1.64/0.99  --superposition_flag                    true
% 1.64/0.99  --sup_passive_queue_type                priority_queues
% 1.64/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.64/0.99  --sup_passive_queues_freq               [8;1;4]
% 1.64/0.99  --demod_completeness_check              fast
% 1.64/0.99  --demod_use_ground                      true
% 1.64/0.99  --sup_to_prop_solver                    passive
% 1.64/0.99  --sup_prop_simpl_new                    true
% 1.64/0.99  --sup_prop_simpl_given                  true
% 1.64/0.99  --sup_fun_splitting                     false
% 1.64/0.99  --sup_smt_interval                      50000
% 1.64/0.99  
% 1.64/0.99  ------ Superposition Simplification Setup
% 1.64/0.99  
% 1.64/0.99  --sup_indices_passive                   []
% 1.64/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.64/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.64/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.64/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 1.64/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.64/0.99  --sup_full_bw                           [BwDemod]
% 1.64/0.99  --sup_immed_triv                        [TrivRules]
% 1.64/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.64/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.64/0.99  --sup_immed_bw_main                     []
% 1.64/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.64/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 1.64/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.64/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.64/0.99  
% 1.64/0.99  ------ Combination Options
% 1.64/0.99  
% 1.64/0.99  --comb_res_mult                         3
% 1.64/0.99  --comb_sup_mult                         2
% 1.64/0.99  --comb_inst_mult                        10
% 1.64/0.99  
% 1.64/0.99  ------ Debug Options
% 1.64/0.99  
% 1.64/0.99  --dbg_backtrace                         false
% 1.64/0.99  --dbg_dump_prop_clauses                 false
% 1.64/0.99  --dbg_dump_prop_clauses_file            -
% 1.64/0.99  --dbg_out_stat                          false
% 1.64/0.99  
% 1.64/0.99  
% 1.64/0.99  
% 1.64/0.99  
% 1.64/0.99  ------ Proving...
% 1.64/0.99  
% 1.64/0.99  
% 1.64/0.99  % SZS status Theorem for theBenchmark.p
% 1.64/0.99  
% 1.64/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 1.64/0.99  
% 1.64/0.99  fof(f9,conjecture,(
% 1.64/0.99    ! [X0,X1] : ~(~! [X2] : (m1_subset_1(X2,k2_zfmisc_1(X0,X1)) => (k2_mcart_1(X2) != X2 & k1_mcart_1(X2) != X2)) & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 1.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.64/0.99  
% 1.64/0.99  fof(f10,negated_conjecture,(
% 1.64/0.99    ~! [X0,X1] : ~(~! [X2] : (m1_subset_1(X2,k2_zfmisc_1(X0,X1)) => (k2_mcart_1(X2) != X2 & k1_mcart_1(X2) != X2)) & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 1.64/0.99    inference(negated_conjecture,[],[f9])).
% 1.64/0.99  
% 1.64/0.99  fof(f18,plain,(
% 1.64/0.99    ? [X0,X1] : (? [X2] : ((k2_mcart_1(X2) = X2 | k1_mcart_1(X2) = X2) & m1_subset_1(X2,k2_zfmisc_1(X0,X1))) & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 1.64/0.99    inference(ennf_transformation,[],[f10])).
% 1.64/0.99  
% 1.64/0.99  fof(f21,plain,(
% 1.64/0.99    ( ! [X0,X1] : (? [X2] : ((k2_mcart_1(X2) = X2 | k1_mcart_1(X2) = X2) & m1_subset_1(X2,k2_zfmisc_1(X0,X1))) => ((k2_mcart_1(sK2) = sK2 | k1_mcart_1(sK2) = sK2) & m1_subset_1(sK2,k2_zfmisc_1(X0,X1)))) )),
% 1.64/0.99    introduced(choice_axiom,[])).
% 1.64/0.99  
% 1.64/0.99  fof(f20,plain,(
% 1.64/0.99    ? [X0,X1] : (? [X2] : ((k2_mcart_1(X2) = X2 | k1_mcart_1(X2) = X2) & m1_subset_1(X2,k2_zfmisc_1(X0,X1))) & k1_xboole_0 != X1 & k1_xboole_0 != X0) => (? [X2] : ((k2_mcart_1(X2) = X2 | k1_mcart_1(X2) = X2) & m1_subset_1(X2,k2_zfmisc_1(sK0,sK1))) & k1_xboole_0 != sK1 & k1_xboole_0 != sK0)),
% 1.64/0.99    introduced(choice_axiom,[])).
% 1.64/0.99  
% 1.64/0.99  fof(f22,plain,(
% 1.64/0.99    ((k2_mcart_1(sK2) = sK2 | k1_mcart_1(sK2) = sK2) & m1_subset_1(sK2,k2_zfmisc_1(sK0,sK1))) & k1_xboole_0 != sK1 & k1_xboole_0 != sK0),
% 1.64/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f18,f21,f20])).
% 1.64/0.99  
% 1.64/0.99  fof(f40,plain,(
% 1.64/0.99    k2_mcart_1(sK2) = sK2 | k1_mcart_1(sK2) = sK2),
% 1.64/0.99    inference(cnf_transformation,[],[f22])).
% 1.64/0.99  
% 1.64/0.99  fof(f39,plain,(
% 1.64/0.99    m1_subset_1(sK2,k2_zfmisc_1(sK0,sK1))),
% 1.64/0.99    inference(cnf_transformation,[],[f22])).
% 1.64/0.99  
% 1.64/0.99  fof(f2,axiom,(
% 1.64/0.99    ! [X0,X1] : ((v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> v1_xboole_0(X1))) & (~v1_xboole_0(X0) => (m1_subset_1(X1,X0) <=> r2_hidden(X1,X0))))),
% 1.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.64/0.99  
% 1.64/0.99  fof(f12,plain,(
% 1.64/0.99    ! [X0,X1] : (((m1_subset_1(X1,X0) <=> v1_xboole_0(X1)) | ~v1_xboole_0(X0)) & ((m1_subset_1(X1,X0) <=> r2_hidden(X1,X0)) | v1_xboole_0(X0)))),
% 1.64/0.99    inference(ennf_transformation,[],[f2])).
% 1.64/0.99  
% 1.64/0.99  fof(f19,plain,(
% 1.64/0.99    ! [X0,X1] : ((((m1_subset_1(X1,X0) | ~v1_xboole_0(X1)) & (v1_xboole_0(X1) | ~m1_subset_1(X1,X0))) | ~v1_xboole_0(X0)) & (((m1_subset_1(X1,X0) | ~r2_hidden(X1,X0)) & (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0))) | v1_xboole_0(X0)))),
% 1.64/0.99    inference(nnf_transformation,[],[f12])).
% 1.64/0.99  
% 1.64/0.99  fof(f24,plain,(
% 1.64/0.99    ( ! [X0,X1] : (r2_hidden(X1,X0) | ~m1_subset_1(X1,X0) | v1_xboole_0(X0)) )),
% 1.64/0.99    inference(cnf_transformation,[],[f19])).
% 1.64/0.99  
% 1.64/0.99  fof(f4,axiom,(
% 1.64/0.99    ! [X0,X1] : v1_relat_1(k2_zfmisc_1(X0,X1))),
% 1.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.64/0.99  
% 1.64/0.99  fof(f29,plain,(
% 1.64/0.99    ( ! [X0,X1] : (v1_relat_1(k2_zfmisc_1(X0,X1))) )),
% 1.64/0.99    inference(cnf_transformation,[],[f4])).
% 1.64/0.99  
% 1.64/0.99  fof(f7,axiom,(
% 1.64/0.99    ! [X0,X1] : (v1_relat_1(X1) => (r2_hidden(X0,X1) => k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0))),
% 1.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.64/0.99  
% 1.64/0.99  fof(f16,plain,(
% 1.64/0.99    ! [X0,X1] : ((k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 | ~r2_hidden(X0,X1)) | ~v1_relat_1(X1))),
% 1.64/0.99    inference(ennf_transformation,[],[f7])).
% 1.64/0.99  
% 1.64/0.99  fof(f17,plain,(
% 1.64/0.99    ! [X0,X1] : (k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 | ~r2_hidden(X0,X1) | ~v1_relat_1(X1))),
% 1.64/0.99    inference(flattening,[],[f16])).
% 1.64/0.99  
% 1.64/0.99  fof(f34,plain,(
% 1.64/0.99    ( ! [X0,X1] : (k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 | ~r2_hidden(X0,X1) | ~v1_relat_1(X1)) )),
% 1.64/0.99    inference(cnf_transformation,[],[f17])).
% 1.64/0.99  
% 1.64/0.99  fof(f1,axiom,(
% 1.64/0.99    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 1.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.64/0.99  
% 1.64/0.99  fof(f11,plain,(
% 1.64/0.99    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 1.64/0.99    inference(ennf_transformation,[],[f1])).
% 1.64/0.99  
% 1.64/0.99  fof(f23,plain,(
% 1.64/0.99    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 1.64/0.99    inference(cnf_transformation,[],[f11])).
% 1.64/0.99  
% 1.64/0.99  fof(f6,axiom,(
% 1.64/0.99    ! [X0] : (? [X1,X2] : k4_tarski(X1,X2) = X0 => (k2_mcart_1(X0) != X0 & k1_mcart_1(X0) != X0))),
% 1.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.64/0.99  
% 1.64/0.99  fof(f15,plain,(
% 1.64/0.99    ! [X0] : ((k2_mcart_1(X0) != X0 & k1_mcart_1(X0) != X0) | ! [X1,X2] : k4_tarski(X1,X2) != X0)),
% 1.64/0.99    inference(ennf_transformation,[],[f6])).
% 1.64/0.99  
% 1.64/0.99  fof(f32,plain,(
% 1.64/0.99    ( ! [X2,X0,X1] : (k1_mcart_1(X0) != X0 | k4_tarski(X1,X2) != X0) )),
% 1.64/0.99    inference(cnf_transformation,[],[f15])).
% 1.64/0.99  
% 1.64/0.99  fof(f42,plain,(
% 1.64/0.99    ( ! [X2,X1] : (k4_tarski(X1,X2) != k1_mcart_1(k4_tarski(X1,X2))) )),
% 1.64/0.99    inference(equality_resolution,[],[f32])).
% 1.64/0.99  
% 1.64/0.99  fof(f8,axiom,(
% 1.64/0.99    ! [X0,X1] : (k2_mcart_1(k4_tarski(X0,X1)) = X1 & k1_mcart_1(k4_tarski(X0,X1)) = X0)),
% 1.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.64/0.99  
% 1.64/0.99  fof(f35,plain,(
% 1.64/0.99    ( ! [X0,X1] : (k1_mcart_1(k4_tarski(X0,X1)) = X0) )),
% 1.64/0.99    inference(cnf_transformation,[],[f8])).
% 1.64/0.99  
% 1.64/0.99  fof(f37,plain,(
% 1.64/0.99    k1_xboole_0 != sK0),
% 1.64/0.99    inference(cnf_transformation,[],[f22])).
% 1.64/0.99  
% 1.64/0.99  fof(f38,plain,(
% 1.64/0.99    k1_xboole_0 != sK1),
% 1.64/0.99    inference(cnf_transformation,[],[f22])).
% 1.64/0.99  
% 1.64/0.99  fof(f5,axiom,(
% 1.64/0.99    ! [X0,X1] : ~(~(k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0) & k1_xboole_0 != X1 & k1_xboole_0 != X0)),
% 1.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.64/0.99  
% 1.64/0.99  fof(f14,plain,(
% 1.64/0.99    ! [X0,X1] : ((k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 & k1_relat_1(k2_zfmisc_1(X0,X1)) = X0) | k1_xboole_0 = X1 | k1_xboole_0 = X0)),
% 1.64/0.99    inference(ennf_transformation,[],[f5])).
% 1.64/0.99  
% 1.64/0.99  fof(f31,plain,(
% 1.64/0.99    ( ! [X0,X1] : (k2_relat_1(k2_zfmisc_1(X0,X1)) = X1 | k1_xboole_0 = X1 | k1_xboole_0 = X0) )),
% 1.64/0.99    inference(cnf_transformation,[],[f14])).
% 1.64/0.99  
% 1.64/0.99  fof(f3,axiom,(
% 1.64/0.99    ! [X0] : (v1_xboole_0(X0) => v1_xboole_0(k2_relat_1(X0)))),
% 1.64/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 1.64/0.99  
% 1.64/0.99  fof(f13,plain,(
% 1.64/0.99    ! [X0] : (v1_xboole_0(k2_relat_1(X0)) | ~v1_xboole_0(X0))),
% 1.64/0.99    inference(ennf_transformation,[],[f3])).
% 1.64/0.99  
% 1.64/0.99  fof(f28,plain,(
% 1.64/0.99    ( ! [X0] : (v1_xboole_0(k2_relat_1(X0)) | ~v1_xboole_0(X0)) )),
% 1.64/0.99    inference(cnf_transformation,[],[f13])).
% 1.64/0.99  
% 1.64/0.99  fof(f26,plain,(
% 1.64/0.99    ( ! [X0,X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,X0) | ~v1_xboole_0(X0)) )),
% 1.64/0.99    inference(cnf_transformation,[],[f19])).
% 1.64/0.99  
% 1.64/0.99  fof(f33,plain,(
% 1.64/0.99    ( ! [X2,X0,X1] : (k2_mcart_1(X0) != X0 | k4_tarski(X1,X2) != X0) )),
% 1.64/0.99    inference(cnf_transformation,[],[f15])).
% 1.64/0.99  
% 1.64/0.99  fof(f41,plain,(
% 1.64/0.99    ( ! [X2,X1] : (k4_tarski(X1,X2) != k2_mcart_1(k4_tarski(X1,X2))) )),
% 1.64/0.99    inference(equality_resolution,[],[f33])).
% 1.64/0.99  
% 1.64/0.99  fof(f36,plain,(
% 1.64/0.99    ( ! [X0,X1] : (k2_mcart_1(k4_tarski(X0,X1)) = X1) )),
% 1.64/0.99    inference(cnf_transformation,[],[f8])).
% 1.64/0.99  
% 1.64/0.99  cnf(c_14,negated_conjecture,
% 1.64/0.99      ( k1_mcart_1(sK2) = sK2 | k2_mcart_1(sK2) = sK2 ),
% 1.64/0.99      inference(cnf_transformation,[],[f40]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_15,negated_conjecture,
% 1.64/0.99      ( m1_subset_1(sK2,k2_zfmisc_1(sK0,sK1)) ),
% 1.64/0.99      inference(cnf_transformation,[],[f39]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_4,plain,
% 1.64/0.99      ( r2_hidden(X0,X1) | ~ m1_subset_1(X0,X1) | v1_xboole_0(X1) ),
% 1.64/0.99      inference(cnf_transformation,[],[f24]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_6,plain,
% 1.64/0.99      ( v1_relat_1(k2_zfmisc_1(X0,X1)) ),
% 1.64/0.99      inference(cnf_transformation,[],[f29]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_11,plain,
% 1.64/0.99      ( ~ r2_hidden(X0,X1)
% 1.64/0.99      | ~ v1_relat_1(X1)
% 1.64/0.99      | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
% 1.64/0.99      inference(cnf_transformation,[],[f34]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_124,plain,
% 1.64/0.99      ( ~ r2_hidden(X0,X1)
% 1.64/0.99      | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0
% 1.64/0.99      | k2_zfmisc_1(X2,X3) != X1 ),
% 1.64/0.99      inference(resolution_lifted,[status(thm)],[c_6,c_11]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_125,plain,
% 1.64/0.99      ( ~ r2_hidden(X0,k2_zfmisc_1(X1,X2))
% 1.64/0.99      | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
% 1.64/0.99      inference(unflattening,[status(thm)],[c_124]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_140,plain,
% 1.64/0.99      ( ~ m1_subset_1(X0,X1)
% 1.64/0.99      | v1_xboole_0(X1)
% 1.64/0.99      | X2 != X0
% 1.64/0.99      | k4_tarski(k1_mcart_1(X2),k2_mcart_1(X2)) = X2
% 1.64/0.99      | k2_zfmisc_1(X3,X4) != X1 ),
% 1.64/0.99      inference(resolution_lifted,[status(thm)],[c_4,c_125]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_141,plain,
% 1.64/0.99      ( ~ m1_subset_1(X0,k2_zfmisc_1(X1,X2))
% 1.64/0.99      | v1_xboole_0(k2_zfmisc_1(X1,X2))
% 1.64/0.99      | k4_tarski(k1_mcart_1(X0),k2_mcart_1(X0)) = X0 ),
% 1.64/0.99      inference(unflattening,[status(thm)],[c_140]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_172,plain,
% 1.64/0.99      ( v1_xboole_0(k2_zfmisc_1(X0,X1))
% 1.64/0.99      | k4_tarski(k1_mcart_1(X2),k2_mcart_1(X2)) = X2
% 1.64/0.99      | k2_zfmisc_1(X0,X1) != k2_zfmisc_1(sK0,sK1)
% 1.64/0.99      | sK2 != X2 ),
% 1.64/0.99      inference(resolution_lifted,[status(thm)],[c_15,c_141]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_173,plain,
% 1.64/0.99      ( v1_xboole_0(k2_zfmisc_1(X0,X1))
% 1.64/0.99      | k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | k2_zfmisc_1(X0,X1) != k2_zfmisc_1(sK0,sK1) ),
% 1.64/0.99      inference(unflattening,[status(thm)],[c_172]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_325,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | k2_zfmisc_1(X0,X1) != k2_zfmisc_1(sK0,sK1)
% 1.64/0.99      | v1_xboole_0(k2_zfmisc_1(X0,X1)) = iProver_top ),
% 1.64/0.99      inference(predicate_to_equality,[status(thm)],[c_173]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_431,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | v1_xboole_0(k2_zfmisc_1(sK0,sK1)) = iProver_top ),
% 1.64/0.99      inference(equality_resolution,[status(thm)],[c_325]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_0,plain,
% 1.64/0.99      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 1.64/0.99      inference(cnf_transformation,[],[f23]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_328,plain,
% 1.64/0.99      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 1.64/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_505,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | k2_zfmisc_1(sK0,sK1) = k1_xboole_0 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_431,c_328]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_733,plain,
% 1.64/0.99      ( k4_tarski(sK2,k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | k2_zfmisc_1(sK0,sK1) = k1_xboole_0
% 1.64/0.99      | k2_mcart_1(sK2) = sK2 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_14,c_505]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_10,plain,
% 1.64/0.99      ( k1_mcart_1(k4_tarski(X0,X1)) != k4_tarski(X0,X1) ),
% 1.64/0.99      inference(cnf_transformation,[],[f42]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_13,plain,
% 1.64/0.99      ( k1_mcart_1(k4_tarski(X0,X1)) = X0 ),
% 1.64/0.99      inference(cnf_transformation,[],[f35]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_341,plain,
% 1.64/0.99      ( k4_tarski(X0,X1) != X0 ),
% 1.64/0.99      inference(light_normalisation,[status(thm)],[c_10,c_13]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_735,plain,
% 1.64/0.99      ( k2_zfmisc_1(sK0,sK1) = k1_xboole_0 | k1_mcart_1(sK2) != sK2 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_505,c_341]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_749,plain,
% 1.64/0.99      ( k2_zfmisc_1(sK0,sK1) = k1_xboole_0 | k2_mcart_1(sK2) = sK2 ),
% 1.64/0.99      inference(global_propositional_subsumption,
% 1.64/0.99                [status(thm)],
% 1.64/0.99                [c_733,c_14,c_735]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_755,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | k2_mcart_1(sK2) = sK2
% 1.64/0.99      | v1_xboole_0(k1_xboole_0) = iProver_top ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_749,c_431]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_17,negated_conjecture,
% 1.64/0.99      ( k1_xboole_0 != sK0 ),
% 1.64/0.99      inference(cnf_transformation,[],[f37]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_16,negated_conjecture,
% 1.64/0.99      ( k1_xboole_0 != sK1 ),
% 1.64/0.99      inference(cnf_transformation,[],[f38]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_232,plain,( X0 = X0 ),theory(equality) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_249,plain,
% 1.64/0.99      ( k1_xboole_0 = k1_xboole_0 ),
% 1.64/0.99      inference(instantiation,[status(thm)],[c_232]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_233,plain,( X0 != X1 | X2 != X1 | X2 = X0 ),theory(equality) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_405,plain,
% 1.64/0.99      ( sK1 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK1 ),
% 1.64/0.99      inference(instantiation,[status(thm)],[c_233]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_406,plain,
% 1.64/0.99      ( sK1 != k1_xboole_0
% 1.64/0.99      | k1_xboole_0 = sK1
% 1.64/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 1.64/0.99      inference(instantiation,[status(thm)],[c_405]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_407,plain,
% 1.64/0.99      ( sK0 != X0 | k1_xboole_0 != X0 | k1_xboole_0 = sK0 ),
% 1.64/0.99      inference(instantiation,[status(thm)],[c_233]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_408,plain,
% 1.64/0.99      ( sK0 != k1_xboole_0
% 1.64/0.99      | k1_xboole_0 = sK0
% 1.64/0.99      | k1_xboole_0 != k1_xboole_0 ),
% 1.64/0.99      inference(instantiation,[status(thm)],[c_407]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_7,plain,
% 1.64/0.99      ( k2_relat_1(k2_zfmisc_1(X0,X1)) = X1
% 1.64/0.99      | k1_xboole_0 = X0
% 1.64/0.99      | k1_xboole_0 = X1 ),
% 1.64/0.99      inference(cnf_transformation,[],[f31]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_5,plain,
% 1.64/0.99      ( ~ v1_xboole_0(X0) | v1_xboole_0(k2_relat_1(X0)) ),
% 1.64/0.99      inference(cnf_transformation,[],[f28]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_327,plain,
% 1.64/0.99      ( v1_xboole_0(X0) != iProver_top
% 1.64/0.99      | v1_xboole_0(k2_relat_1(X0)) = iProver_top ),
% 1.64/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1026,plain,
% 1.64/0.99      ( k1_xboole_0 = X0
% 1.64/0.99      | k1_xboole_0 = X1
% 1.64/0.99      | v1_xboole_0(X0) = iProver_top
% 1.64/0.99      | v1_xboole_0(k2_zfmisc_1(X1,X0)) != iProver_top ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_7,c_327]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_44,plain,
% 1.64/0.99      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 1.64/0.99      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1054,plain,
% 1.64/0.99      ( k1_xboole_0 = X1
% 1.64/0.99      | k1_xboole_0 = X0
% 1.64/0.99      | v1_xboole_0(k2_zfmisc_1(X1,X0)) != iProver_top ),
% 1.64/0.99      inference(global_propositional_subsumption,
% 1.64/0.99                [status(thm)],
% 1.64/0.99                [c_1026,c_44]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1055,plain,
% 1.64/0.99      ( k1_xboole_0 = X0
% 1.64/0.99      | k1_xboole_0 = X1
% 1.64/0.99      | v1_xboole_0(k2_zfmisc_1(X1,X0)) != iProver_top ),
% 1.64/0.99      inference(renaming,[status(thm)],[c_1054]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1061,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | sK1 = k1_xboole_0
% 1.64/0.99      | sK0 = k1_xboole_0 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_431,c_1055]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1215,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2 ),
% 1.64/0.99      inference(global_propositional_subsumption,
% 1.64/0.99                [status(thm)],
% 1.64/0.99                [c_755,c_17,c_16,c_249,c_406,c_408,c_1061]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_2,plain,
% 1.64/0.99      ( ~ m1_subset_1(X0,X1) | ~ v1_xboole_0(X1) | v1_xboole_0(X0) ),
% 1.64/0.99      inference(cnf_transformation,[],[f26]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_160,plain,
% 1.64/0.99      ( ~ v1_xboole_0(X0)
% 1.64/0.99      | v1_xboole_0(X1)
% 1.64/0.99      | k2_zfmisc_1(sK0,sK1) != X0
% 1.64/0.99      | sK2 != X1 ),
% 1.64/0.99      inference(resolution_lifted,[status(thm)],[c_2,c_15]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_161,plain,
% 1.64/0.99      ( ~ v1_xboole_0(k2_zfmisc_1(sK0,sK1)) | v1_xboole_0(sK2) ),
% 1.64/0.99      inference(unflattening,[status(thm)],[c_160]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_326,plain,
% 1.64/0.99      ( v1_xboole_0(k2_zfmisc_1(sK0,sK1)) != iProver_top
% 1.64/0.99      | v1_xboole_0(sK2) = iProver_top ),
% 1.64/0.99      inference(predicate_to_equality,[status(thm)],[c_161]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_436,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | v1_xboole_0(sK2) = iProver_top ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_431,c_326]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_506,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(sK2),k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | sK2 = k1_xboole_0 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_436,c_328]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_618,plain,
% 1.64/0.99      ( k4_tarski(sK2,k2_mcart_1(sK2)) = sK2
% 1.64/0.99      | k2_mcart_1(sK2) = sK2
% 1.64/0.99      | sK2 = k1_xboole_0 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_14,c_506]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_619,plain,
% 1.64/0.99      ( k1_mcart_1(sK2) != sK2 | sK2 = k1_xboole_0 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_506,c_341]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_657,plain,
% 1.64/0.99      ( k2_mcart_1(sK2) = sK2 | sK2 = k1_xboole_0 ),
% 1.64/0.99      inference(global_propositional_subsumption,
% 1.64/0.99                [status(thm)],
% 1.64/0.99                [c_618,c_14,c_619]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_661,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(sK2),sK2) = sK2 | sK2 = k1_xboole_0 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_657,c_506]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_9,plain,
% 1.64/0.99      ( k2_mcart_1(k4_tarski(X0,X1)) != k4_tarski(X0,X1) ),
% 1.64/0.99      inference(cnf_transformation,[],[f41]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_12,plain,
% 1.64/0.99      ( k2_mcart_1(k4_tarski(X0,X1)) = X1 ),
% 1.64/0.99      inference(cnf_transformation,[],[f36]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_344,plain,
% 1.64/0.99      ( k4_tarski(X0,X1) != X1 ),
% 1.64/0.99      inference(light_normalisation,[status(thm)],[c_9,c_12]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1015,plain,
% 1.64/0.99      ( sK2 = k1_xboole_0 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_661,c_344]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1217,plain,
% 1.64/0.99      ( k4_tarski(k1_mcart_1(k1_xboole_0),k2_mcart_1(k1_xboole_0)) = k1_xboole_0 ),
% 1.64/0.99      inference(light_normalisation,[status(thm)],[c_1215,c_1015]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1221,plain,
% 1.64/0.99      ( k1_mcart_1(k1_xboole_0) != k1_xboole_0 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_1217,c_341]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1220,plain,
% 1.64/0.99      ( k2_mcart_1(k1_xboole_0) != k1_xboole_0 ),
% 1.64/0.99      inference(superposition,[status(thm)],[c_1217,c_344]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(c_1092,plain,
% 1.64/0.99      ( k1_mcart_1(k1_xboole_0) = k1_xboole_0
% 1.64/0.99      | k2_mcart_1(k1_xboole_0) = k1_xboole_0 ),
% 1.64/0.99      inference(demodulation,[status(thm)],[c_1015,c_14]) ).
% 1.64/0.99  
% 1.64/0.99  cnf(contradiction,plain,
% 1.64/0.99      ( $false ),
% 1.64/0.99      inference(minisat,[status(thm)],[c_1221,c_1220,c_1092]) ).
% 1.64/0.99  
% 1.64/0.99  
% 1.64/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 1.64/0.99  
% 1.64/0.99  ------                               Statistics
% 1.64/0.99  
% 1.64/0.99  ------ General
% 1.64/0.99  
% 1.64/0.99  abstr_ref_over_cycles:                  0
% 1.64/0.99  abstr_ref_under_cycles:                 0
% 1.64/0.99  gc_basic_clause_elim:                   0
% 1.64/0.99  forced_gc_time:                         0
% 1.64/0.99  parsing_time:                           0.007
% 1.64/0.99  unif_index_cands_time:                  0.
% 1.64/0.99  unif_index_add_time:                    0.
% 1.64/0.99  orderings_time:                         0.
% 1.64/0.99  out_proof_time:                         0.007
% 1.64/0.99  total_time:                             0.076
% 1.64/0.99  num_of_symbols:                         45
% 1.64/0.99  num_of_terms:                           1275
% 1.64/0.99  
% 1.64/0.99  ------ Preprocessing
% 1.64/0.99  
% 1.64/0.99  num_of_splits:                          0
% 1.64/0.99  num_of_split_atoms:                     0
% 1.64/0.99  num_of_reused_defs:                     0
% 1.64/0.99  num_eq_ax_congr_red:                    2
% 1.64/0.99  num_of_sem_filtered_clauses:            1
% 1.64/0.99  num_of_subtypes:                        0
% 1.64/0.99  monotx_restored_types:                  0
% 1.64/0.99  sat_num_of_epr_types:                   0
% 1.64/0.99  sat_num_of_non_cyclic_types:            0
% 1.64/0.99  sat_guarded_non_collapsed_types:        0
% 1.64/0.99  num_pure_diseq_elim:                    0
% 1.64/0.99  simp_replaced_by:                       0
% 1.64/0.99  res_preprocessed:                       76
% 1.64/0.99  prep_upred:                             0
% 1.64/0.99  prep_unflattend:                        8
% 1.64/0.99  smt_new_axioms:                         0
% 1.64/0.99  pred_elim_cands:                        1
% 1.64/0.99  pred_elim:                              3
% 1.64/0.99  pred_elim_cl:                           5
% 1.64/0.99  pred_elim_cycles:                       5
% 1.64/0.99  merged_defs:                            0
% 1.64/0.99  merged_defs_ncl:                        0
% 1.64/0.99  bin_hyper_res:                          0
% 1.64/0.99  prep_cycles:                            4
% 1.64/0.99  pred_elim_time:                         0.001
% 1.64/0.99  splitting_time:                         0.
% 1.64/0.99  sem_filter_time:                        0.
% 1.64/0.99  monotx_time:                            0.
% 1.64/0.99  subtype_inf_time:                       0.
% 1.64/0.99  
% 1.64/0.99  ------ Problem properties
% 1.64/0.99  
% 1.64/0.99  clauses:                                13
% 1.64/0.99  conjectures:                            3
% 1.64/0.99  epr:                                    3
% 1.64/0.99  horn:                                   9
% 1.64/0.99  ground:                                 4
% 1.64/0.99  unary:                                  6
% 1.64/0.99  binary:                                 4
% 1.64/0.99  lits:                                   23
% 1.64/0.99  lits_eq:                                17
% 1.64/0.99  fd_pure:                                0
% 1.64/0.99  fd_pseudo:                              0
% 1.64/0.99  fd_cond:                                1
% 1.64/0.99  fd_pseudo_cond:                         0
% 1.64/0.99  ac_symbols:                             0
% 1.64/0.99  
% 1.64/0.99  ------ Propositional Solver
% 1.64/0.99  
% 1.64/0.99  prop_solver_calls:                      27
% 1.64/0.99  prop_fast_solver_calls:                 382
% 1.64/0.99  smt_solver_calls:                       0
% 1.64/0.99  smt_fast_solver_calls:                  0
% 1.64/0.99  prop_num_of_clauses:                    461
% 1.64/0.99  prop_preprocess_simplified:             1896
% 1.64/0.99  prop_fo_subsumed:                       10
% 1.64/0.99  prop_solver_time:                       0.
% 1.64/0.99  smt_solver_time:                        0.
% 1.64/0.99  smt_fast_solver_time:                   0.
% 1.64/0.99  prop_fast_solver_time:                  0.
% 1.64/0.99  prop_unsat_core_time:                   0.
% 1.64/0.99  
% 1.64/0.99  ------ QBF
% 1.64/0.99  
% 1.64/0.99  qbf_q_res:                              0
% 1.64/0.99  qbf_num_tautologies:                    0
% 1.64/0.99  qbf_prep_cycles:                        0
% 1.64/0.99  
% 1.64/0.99  ------ BMC1
% 1.64/0.99  
% 1.64/0.99  bmc1_current_bound:                     -1
% 1.64/0.99  bmc1_last_solved_bound:                 -1
% 1.64/0.99  bmc1_unsat_core_size:                   -1
% 1.64/0.99  bmc1_unsat_core_parents_size:           -1
% 1.64/0.99  bmc1_merge_next_fun:                    0
% 1.64/0.99  bmc1_unsat_core_clauses_time:           0.
% 1.64/0.99  
% 1.64/0.99  ------ Instantiation
% 1.64/0.99  
% 1.64/0.99  inst_num_of_clauses:                    221
% 1.64/0.99  inst_num_in_passive:                    69
% 1.64/0.99  inst_num_in_active:                     127
% 1.64/0.99  inst_num_in_unprocessed:                25
% 1.64/0.99  inst_num_of_loops:                      150
% 1.64/0.99  inst_num_of_learning_restarts:          0
% 1.64/0.99  inst_num_moves_active_passive:          20
% 1.64/0.99  inst_lit_activity:                      0
% 1.64/0.99  inst_lit_activity_moves:                0
% 1.64/0.99  inst_num_tautologies:                   0
% 1.64/0.99  inst_num_prop_implied:                  0
% 1.64/0.99  inst_num_existing_simplified:           0
% 1.64/0.99  inst_num_eq_res_simplified:             0
% 1.64/0.99  inst_num_child_elim:                    0
% 1.64/0.99  inst_num_of_dismatching_blockings:      6
% 1.64/0.99  inst_num_of_non_proper_insts:           187
% 1.64/0.99  inst_num_of_duplicates:                 0
% 1.64/0.99  inst_inst_num_from_inst_to_res:         0
% 1.64/0.99  inst_dismatching_checking_time:         0.
% 1.64/0.99  
% 1.64/0.99  ------ Resolution
% 1.64/0.99  
% 1.64/0.99  res_num_of_clauses:                     0
% 1.64/0.99  res_num_in_passive:                     0
% 1.64/0.99  res_num_in_active:                      0
% 1.64/0.99  res_num_of_loops:                       80
% 1.64/0.99  res_forward_subset_subsumed:            23
% 1.64/0.99  res_backward_subset_subsumed:           0
% 1.64/0.99  res_forward_subsumed:                   0
% 1.64/0.99  res_backward_subsumed:                  0
% 1.64/0.99  res_forward_subsumption_resolution:     0
% 1.64/0.99  res_backward_subsumption_resolution:    0
% 1.64/0.99  res_clause_to_clause_subsumption:       71
% 1.64/0.99  res_orphan_elimination:                 0
% 1.64/0.99  res_tautology_del:                      18
% 1.64/0.99  res_num_eq_res_simplified:              0
% 1.64/0.99  res_num_sel_changes:                    0
% 1.64/0.99  res_moves_from_active_to_pass:          0
% 1.64/0.99  
% 1.64/0.99  ------ Superposition
% 1.64/0.99  
% 1.64/0.99  sup_time_total:                         0.
% 1.64/0.99  sup_time_generating:                    0.
% 1.64/0.99  sup_time_sim_full:                      0.
% 1.64/0.99  sup_time_sim_immed:                     0.
% 1.64/0.99  
% 1.64/0.99  sup_num_of_clauses:                     29
% 1.64/0.99  sup_num_in_active:                      15
% 1.64/0.99  sup_num_in_passive:                     14
% 1.64/0.99  sup_num_of_loops:                       28
% 1.64/0.99  sup_fw_superposition:                   14
% 1.64/0.99  sup_bw_superposition:                   21
% 1.64/0.99  sup_immediate_simplified:               7
% 1.64/0.99  sup_given_eliminated:                   0
% 1.64/0.99  comparisons_done:                       0
% 1.64/0.99  comparisons_avoided:                    14
% 1.64/0.99  
% 1.64/0.99  ------ Simplifications
% 1.64/0.99  
% 1.64/0.99  
% 1.64/0.99  sim_fw_subset_subsumed:                 2
% 1.64/0.99  sim_bw_subset_subsumed:                 6
% 1.64/0.99  sim_fw_subsumed:                        3
% 1.64/0.99  sim_bw_subsumed:                        0
% 1.64/0.99  sim_fw_subsumption_res:                 1
% 1.64/0.99  sim_bw_subsumption_res:                 0
% 1.64/0.99  sim_tautology_del:                      1
% 1.64/0.99  sim_eq_tautology_del:                   4
% 1.64/0.99  sim_eq_res_simp:                        0
% 1.64/0.99  sim_fw_demodulated:                     0
% 1.64/0.99  sim_bw_demodulated:                     14
% 1.64/0.99  sim_light_normalised:                   4
% 1.64/0.99  sim_joinable_taut:                      0
% 1.64/0.99  sim_joinable_simp:                      0
% 1.64/0.99  sim_ac_normalised:                      0
% 1.64/0.99  sim_smt_subsumption:                    0
% 1.64/0.99  
%------------------------------------------------------------------------------
