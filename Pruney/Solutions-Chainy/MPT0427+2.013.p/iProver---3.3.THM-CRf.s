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
% DateTime   : Thu Dec  3 11:42:29 EST 2020

% Result     : Theorem 2.24s
% Output     : CNFRefutation 2.24s
% Verified   : 
% Statistics : Number of formulae       :  132 ( 604 expanded)
%              Number of clauses        :   86 ( 238 expanded)
%              Number of leaves         :   16 ( 134 expanded)
%              Depth                    :   24
%              Number of atoms          :  292 (1811 expanded)
%              Number of equality atoms :  147 ( 490 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f12,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => ( r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f24,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f23])).

fof(f43,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f24])).

fof(f13,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))
         => ( r1_tarski(X1,X2)
           => r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f14,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))
           => ( r1_tarski(X1,X2)
             => r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) ) ) ) ),
    inference(negated_conjecture,[],[f13])).

fof(f25,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1))
          & r1_tarski(X1,X2)
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f26,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1))
          & r1_tarski(X1,X2)
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(flattening,[],[f25])).

fof(f29,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1))
          & r1_tarski(X1,X2)
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
     => ( ~ r1_tarski(k8_setfam_1(X0,sK2),k8_setfam_1(X0,X1))
        & r1_tarski(X1,sK2)
        & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f28,plain,
    ( ? [X0,X1] :
        ( ? [X2] :
            ( ~ r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1))
            & r1_tarski(X1,X2)
            & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
        & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) )
   => ( ? [X2] :
          ( ~ r1_tarski(k8_setfam_1(sK0,X2),k8_setfam_1(sK0,sK1))
          & r1_tarski(sK1,X2)
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(sK0))) )
      & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ) ),
    introduced(choice_axiom,[])).

fof(f30,plain,
    ( ~ r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1))
    & r1_tarski(sK1,sK2)
    & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0)))
    & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f29,f28])).

fof(f45,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f30])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ( ( k1_xboole_0 = X1
         => k8_setfam_1(X0,X1) = X0 )
        & ( k1_xboole_0 != X1
         => k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] :
      ( ( ( k8_setfam_1(X0,X1) = X0
          | k1_xboole_0 != X1 )
        & ( k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1)
          | k1_xboole_0 = X1 ) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f37,plain,(
    ! [X0,X1] :
      ( k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f9,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => k6_setfam_1(X0,X1) = k1_setfam_1(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( k6_setfam_1(X0,X1) = k1_setfam_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f9])).

fof(f40,plain,(
    ! [X0,X1] :
      ( k6_setfam_1(X0,X1) = k1_setfam_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f44,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f30])).

fof(f47,plain,(
    ~ r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f30])).

fof(f46,plain,(
    r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f30])).

fof(f38,plain,(
    ! [X0,X1] :
      ( k8_setfam_1(X0,X1) = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f20])).

fof(f48,plain,(
    ! [X0] :
      ( k8_setfam_1(X0,k1_xboole_0) = X0
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(equality_resolution,[],[f38])).

fof(f5,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f5])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f8])).

fof(f39,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f21])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f10])).

fof(f41,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f6,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => ! [X1] :
          ( m1_subset_1(X1,k1_zfmisc_1(X0))
         => v1_xboole_0(X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0] :
      ( ! [X1] :
          ( v1_xboole_0(X1)
          | ~ m1_subset_1(X1,k1_zfmisc_1(X0)) )
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f36,plain,(
    ! [X0,X1] :
      ( v1_xboole_0(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(X0))
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f42,plain,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f2,axiom,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f3,axiom,(
    ! [X0,X1] :
      ( ~ v1_xboole_0(X1)
     => ~ ( r1_xboole_0(X1,X0)
          & r1_tarski(X1,X0) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(ennf_transformation,[],[f3])).

fof(f18,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(flattening,[],[f17])).

fof(f33,plain,(
    ! [X0,X1] :
      ( ~ r1_xboole_0(X1,X0)
      | ~ r1_tarski(X1,X0)
      | v1_xboole_0(X1) ) ),
    inference(cnf_transformation,[],[f18])).

fof(f4,axiom,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f4])).

fof(f1,axiom,(
    ! [X0] :
      ( v1_xboole_0(X0)
     => k1_xboole_0 = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(ennf_transformation,[],[f1])).

fof(f31,plain,(
    ! [X0] :
      ( k1_xboole_0 = X0
      | ~ v1_xboole_0(X0) ) ),
    inference(cnf_transformation,[],[f16])).

cnf(c_12,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f43])).

cnf(c_738,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_15,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_735,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | k6_setfam_1(X1,X0) = k8_setfam_1(X1,X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f37])).

cnf(c_743,plain,
    ( k6_setfam_1(X0,X1) = k8_setfam_1(X0,X1)
    | k1_xboole_0 = X1
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1807,plain,
    ( k6_setfam_1(sK0,sK2) = k8_setfam_1(sK0,sK2)
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_735,c_743])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | k6_setfam_1(X1,X0) = k1_setfam_1(X0) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_741,plain,
    ( k6_setfam_1(X0,X1) = k1_setfam_1(X1)
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1302,plain,
    ( k6_setfam_1(sK0,sK2) = k1_setfam_1(sK2) ),
    inference(superposition,[status(thm)],[c_735,c_741])).

cnf(c_1816,plain,
    ( k8_setfam_1(sK0,sK2) = k1_setfam_1(sK2)
    | sK2 = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1807,c_1302])).

cnf(c_16,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_734,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_16])).

cnf(c_1808,plain,
    ( k6_setfam_1(sK0,sK1) = k8_setfam_1(sK0,sK1)
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_734,c_743])).

cnf(c_1303,plain,
    ( k6_setfam_1(sK0,sK1) = k1_setfam_1(sK1) ),
    inference(superposition,[status(thm)],[c_734,c_741])).

cnf(c_1811,plain,
    ( k8_setfam_1(sK0,sK1) = k1_setfam_1(sK1)
    | sK1 = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1808,c_1303])).

cnf(c_13,negated_conjecture,
    ( ~ r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_737,plain,
    ( r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_2076,plain,
    ( sK1 = k1_xboole_0
    | r1_tarski(k8_setfam_1(sK0,sK2),k1_setfam_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1811,c_737])).

cnf(c_2156,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0
    | r1_tarski(k1_setfam_1(sK2),k1_setfam_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1816,c_2076])).

cnf(c_2228,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0
    | r1_tarski(sK1,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_738,c_2156])).

cnf(c_14,negated_conjecture,
    ( r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f46])).

cnf(c_2229,plain,
    ( ~ r1_tarski(sK1,sK2)
    | sK1 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2228])).

cnf(c_2231,plain,
    ( sK2 = k1_xboole_0
    | sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2228,c_14,c_2229])).

cnf(c_2232,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_2231])).

cnf(c_2240,plain,
    ( sK2 = k1_xboole_0
    | r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2232,c_737])).

cnf(c_6,plain,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0)))
    | k8_setfam_1(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f48])).

cnf(c_744,plain,
    ( k8_setfam_1(X0,k1_xboole_0) = X0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_4,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f35])).

cnf(c_745,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_773,plain,
    ( k8_setfam_1(X0,k1_xboole_0) = X0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_744,c_745])).

cnf(c_2249,plain,
    ( sK2 = k1_xboole_0
    | r1_tarski(k8_setfam_1(sK0,sK2),sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2240,c_773])).

cnf(c_8,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | m1_subset_1(k8_setfam_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_742,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
    | m1_subset_1(k8_setfam_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_11,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f41])).

cnf(c_739,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1721,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
    | r1_tarski(k8_setfam_1(X1,X0),X1) = iProver_top ),
    inference(superposition,[status(thm)],[c_742,c_739])).

cnf(c_2580,plain,
    ( r1_tarski(k8_setfam_1(sK0,sK2),sK0) = iProver_top ),
    inference(superposition,[status(thm)],[c_735,c_1721])).

cnf(c_2813,plain,
    ( sK2 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2249,c_2580])).

cnf(c_736,plain,
    ( r1_tarski(sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f36])).

cnf(c_10,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f42])).

cnf(c_128,plain,
    ( ~ r1_tarski(X0,X1)
    | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
    inference(prop_impl,[status(thm)],[c_10])).

cnf(c_129,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1))
    | ~ r1_tarski(X0,X1) ),
    inference(renaming,[status(thm)],[c_128])).

cnf(c_153,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ v1_xboole_0(X1)
    | v1_xboole_0(X0) ),
    inference(bin_hyper_res,[status(thm)],[c_5,c_129])).

cnf(c_733,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | v1_xboole_0(X1) != iProver_top
    | v1_xboole_0(X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_153])).

cnf(c_1615,plain,
    ( v1_xboole_0(sK1) = iProver_top
    | v1_xboole_0(sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_736,c_733])).

cnf(c_2820,plain,
    ( v1_xboole_0(sK1) = iProver_top
    | v1_xboole_0(k1_xboole_0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2813,c_1615])).

cnf(c_24,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_26,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
    | r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_24])).

cnf(c_43,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_45,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_43])).

cnf(c_1,plain,
    ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f32])).

cnf(c_52,plain,
    ( k4_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | ~ r1_xboole_0(X0,X1)
    | v1_xboole_0(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_3,plain,
    ( r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_213,plain,
    ( ~ r1_tarski(X0,X1)
    | v1_xboole_0(X0)
    | X2 != X1
    | k4_xboole_0(X3,X2) != X0 ),
    inference(resolution_lifted,[status(thm)],[c_2,c_3])).

cnf(c_214,plain,
    ( ~ r1_tarski(k4_xboole_0(X0,X1),X1)
    | v1_xboole_0(k4_xboole_0(X0,X1)) ),
    inference(unflattening,[status(thm)],[c_213])).

cnf(c_215,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),X1) != iProver_top
    | v1_xboole_0(k4_xboole_0(X0,X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_214])).

cnf(c_217,plain,
    ( r1_tarski(k4_xboole_0(k1_xboole_0,k1_xboole_0),k1_xboole_0) != iProver_top
    | v1_xboole_0(k4_xboole_0(k1_xboole_0,k1_xboole_0)) = iProver_top ),
    inference(instantiation,[status(thm)],[c_215])).

cnf(c_364,plain,
    ( X0 = X0 ),
    theory(equality)).

cnf(c_379,plain,
    ( k1_xboole_0 = k1_xboole_0 ),
    inference(instantiation,[status(thm)],[c_364])).

cnf(c_368,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,X3)
    | X2 != X0
    | X3 != X1 ),
    theory(equality)).

cnf(c_881,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k4_xboole_0(X2,X3),X3)
    | X3 != X1
    | k4_xboole_0(X2,X3) != X0 ),
    inference(instantiation,[status(thm)],[c_368])).

cnf(c_882,plain,
    ( X0 != X1
    | k4_xboole_0(X2,X0) != X3
    | r1_tarski(X3,X1) != iProver_top
    | r1_tarski(k4_xboole_0(X2,X0),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_881])).

cnf(c_884,plain,
    ( k4_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0
    | r1_tarski(k4_xboole_0(k1_xboole_0,k1_xboole_0),k1_xboole_0) = iProver_top
    | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_882])).

cnf(c_928,plain,
    ( ~ r1_tarski(X0,k4_xboole_0(X1,X2))
    | v1_xboole_0(X0)
    | ~ v1_xboole_0(k4_xboole_0(X1,X2)) ),
    inference(instantiation,[status(thm)],[c_153])).

cnf(c_929,plain,
    ( r1_tarski(X0,k4_xboole_0(X1,X2)) != iProver_top
    | v1_xboole_0(X0) = iProver_top
    | v1_xboole_0(k4_xboole_0(X1,X2)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_928])).

cnf(c_931,plain,
    ( r1_tarski(k1_xboole_0,k4_xboole_0(k1_xboole_0,k1_xboole_0)) != iProver_top
    | v1_xboole_0(k4_xboole_0(k1_xboole_0,k1_xboole_0)) != iProver_top
    | v1_xboole_0(k1_xboole_0) = iProver_top ),
    inference(instantiation,[status(thm)],[c_929])).

cnf(c_1062,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(X2,k4_xboole_0(X3,X4))
    | X2 != X0
    | k4_xboole_0(X3,X4) != X1 ),
    inference(instantiation,[status(thm)],[c_368])).

cnf(c_1063,plain,
    ( X0 != X1
    | k4_xboole_0(X2,X3) != X4
    | r1_tarski(X1,X4) != iProver_top
    | r1_tarski(X0,k4_xboole_0(X2,X3)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1062])).

cnf(c_1065,plain,
    ( k4_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0
    | k1_xboole_0 != k1_xboole_0
    | r1_tarski(k1_xboole_0,k4_xboole_0(k1_xboole_0,k1_xboole_0)) = iProver_top
    | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
    inference(instantiation,[status(thm)],[c_1063])).

cnf(c_2995,plain,
    ( v1_xboole_0(sK1) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_2820,c_26,c_45,c_52,c_217,c_379,c_884,c_931,c_1065])).

cnf(c_0,plain,
    ( ~ v1_xboole_0(X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f31])).

cnf(c_746,plain,
    ( k1_xboole_0 = X0
    | v1_xboole_0(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_3001,plain,
    ( sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2995,c_746])).

cnf(c_2823,plain,
    ( r1_tarski(k8_setfam_1(sK0,k1_xboole_0),k8_setfam_1(sK0,sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2813,c_737])).

cnf(c_2830,plain,
    ( r1_tarski(sK0,k8_setfam_1(sK0,sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2823,c_773])).

cnf(c_3096,plain,
    ( r1_tarski(sK0,k8_setfam_1(sK0,k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3001,c_2830])).

cnf(c_3106,plain,
    ( r1_tarski(sK0,sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3096,c_773])).

cnf(c_1720,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_773,c_742])).

cnf(c_846,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) ),
    inference(instantiation,[status(thm)],[c_4])).

cnf(c_849,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_846])).

cnf(c_2415,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1720,c_849])).

cnf(c_2420,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2415,c_739])).

cnf(c_3253,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3106,c_2420])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n006.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:34:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 2.24/1.01  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 2.24/1.01  
% 2.24/1.01  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.24/1.01  
% 2.24/1.01  ------  iProver source info
% 2.24/1.01  
% 2.24/1.01  git: date: 2020-06-30 10:37:57 +0100
% 2.24/1.01  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.24/1.01  git: non_committed_changes: false
% 2.24/1.01  git: last_make_outside_of_git: false
% 2.24/1.01  
% 2.24/1.01  ------ 
% 2.24/1.01  
% 2.24/1.01  ------ Input Options
% 2.24/1.01  
% 2.24/1.01  --out_options                           all
% 2.24/1.01  --tptp_safe_out                         true
% 2.24/1.01  --problem_path                          ""
% 2.24/1.01  --include_path                          ""
% 2.24/1.01  --clausifier                            res/vclausify_rel
% 2.24/1.01  --clausifier_options                    --mode clausify
% 2.24/1.01  --stdin                                 false
% 2.24/1.01  --stats_out                             all
% 2.24/1.01  
% 2.24/1.01  ------ General Options
% 2.24/1.01  
% 2.24/1.01  --fof                                   false
% 2.24/1.01  --time_out_real                         305.
% 2.24/1.01  --time_out_virtual                      -1.
% 2.24/1.01  --symbol_type_check                     false
% 2.24/1.01  --clausify_out                          false
% 2.24/1.01  --sig_cnt_out                           false
% 2.24/1.01  --trig_cnt_out                          false
% 2.24/1.01  --trig_cnt_out_tolerance                1.
% 2.24/1.01  --trig_cnt_out_sk_spl                   false
% 2.24/1.01  --abstr_cl_out                          false
% 2.24/1.01  
% 2.24/1.01  ------ Global Options
% 2.24/1.01  
% 2.24/1.01  --schedule                              default
% 2.24/1.01  --add_important_lit                     false
% 2.24/1.01  --prop_solver_per_cl                    1000
% 2.24/1.01  --min_unsat_core                        false
% 2.24/1.01  --soft_assumptions                      false
% 2.24/1.01  --soft_lemma_size                       3
% 2.24/1.01  --prop_impl_unit_size                   0
% 2.24/1.01  --prop_impl_unit                        []
% 2.24/1.01  --share_sel_clauses                     true
% 2.24/1.01  --reset_solvers                         false
% 2.24/1.01  --bc_imp_inh                            [conj_cone]
% 2.24/1.01  --conj_cone_tolerance                   3.
% 2.24/1.01  --extra_neg_conj                        none
% 2.24/1.01  --large_theory_mode                     true
% 2.24/1.01  --prolific_symb_bound                   200
% 2.24/1.01  --lt_threshold                          2000
% 2.24/1.01  --clause_weak_htbl                      true
% 2.24/1.01  --gc_record_bc_elim                     false
% 2.24/1.01  
% 2.24/1.01  ------ Preprocessing Options
% 2.24/1.01  
% 2.24/1.01  --preprocessing_flag                    true
% 2.24/1.01  --time_out_prep_mult                    0.1
% 2.24/1.01  --splitting_mode                        input
% 2.24/1.01  --splitting_grd                         true
% 2.24/1.01  --splitting_cvd                         false
% 2.24/1.01  --splitting_cvd_svl                     false
% 2.24/1.01  --splitting_nvd                         32
% 2.24/1.01  --sub_typing                            true
% 2.24/1.01  --prep_gs_sim                           true
% 2.24/1.01  --prep_unflatten                        true
% 2.24/1.01  --prep_res_sim                          true
% 2.24/1.01  --prep_upred                            true
% 2.24/1.01  --prep_sem_filter                       exhaustive
% 2.24/1.01  --prep_sem_filter_out                   false
% 2.24/1.01  --pred_elim                             true
% 2.24/1.01  --res_sim_input                         true
% 2.24/1.01  --eq_ax_congr_red                       true
% 2.24/1.01  --pure_diseq_elim                       true
% 2.24/1.01  --brand_transform                       false
% 2.24/1.01  --non_eq_to_eq                          false
% 2.24/1.01  --prep_def_merge                        true
% 2.24/1.01  --prep_def_merge_prop_impl              false
% 2.24/1.01  --prep_def_merge_mbd                    true
% 2.24/1.01  --prep_def_merge_tr_red                 false
% 2.24/1.01  --prep_def_merge_tr_cl                  false
% 2.24/1.01  --smt_preprocessing                     true
% 2.24/1.01  --smt_ac_axioms                         fast
% 2.24/1.01  --preprocessed_out                      false
% 2.24/1.01  --preprocessed_stats                    false
% 2.24/1.01  
% 2.24/1.01  ------ Abstraction refinement Options
% 2.24/1.01  
% 2.24/1.01  --abstr_ref                             []
% 2.24/1.01  --abstr_ref_prep                        false
% 2.24/1.01  --abstr_ref_until_sat                   false
% 2.24/1.01  --abstr_ref_sig_restrict                funpre
% 2.24/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.24/1.01  --abstr_ref_under                       []
% 2.24/1.01  
% 2.24/1.01  ------ SAT Options
% 2.24/1.01  
% 2.24/1.01  --sat_mode                              false
% 2.24/1.01  --sat_fm_restart_options                ""
% 2.24/1.01  --sat_gr_def                            false
% 2.24/1.01  --sat_epr_types                         true
% 2.24/1.01  --sat_non_cyclic_types                  false
% 2.24/1.01  --sat_finite_models                     false
% 2.24/1.01  --sat_fm_lemmas                         false
% 2.24/1.01  --sat_fm_prep                           false
% 2.24/1.01  --sat_fm_uc_incr                        true
% 2.24/1.01  --sat_out_model                         small
% 2.24/1.01  --sat_out_clauses                       false
% 2.24/1.01  
% 2.24/1.01  ------ QBF Options
% 2.24/1.01  
% 2.24/1.01  --qbf_mode                              false
% 2.24/1.01  --qbf_elim_univ                         false
% 2.24/1.01  --qbf_dom_inst                          none
% 2.24/1.01  --qbf_dom_pre_inst                      false
% 2.24/1.01  --qbf_sk_in                             false
% 2.24/1.01  --qbf_pred_elim                         true
% 2.24/1.01  --qbf_split                             512
% 2.24/1.01  
% 2.24/1.01  ------ BMC1 Options
% 2.24/1.01  
% 2.24/1.01  --bmc1_incremental                      false
% 2.24/1.01  --bmc1_axioms                           reachable_all
% 2.24/1.01  --bmc1_min_bound                        0
% 2.24/1.01  --bmc1_max_bound                        -1
% 2.24/1.01  --bmc1_max_bound_default                -1
% 2.24/1.01  --bmc1_symbol_reachability              true
% 2.24/1.01  --bmc1_property_lemmas                  false
% 2.24/1.01  --bmc1_k_induction                      false
% 2.24/1.01  --bmc1_non_equiv_states                 false
% 2.24/1.01  --bmc1_deadlock                         false
% 2.24/1.01  --bmc1_ucm                              false
% 2.24/1.01  --bmc1_add_unsat_core                   none
% 2.24/1.01  --bmc1_unsat_core_children              false
% 2.24/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.24/1.01  --bmc1_out_stat                         full
% 2.24/1.01  --bmc1_ground_init                      false
% 2.24/1.01  --bmc1_pre_inst_next_state              false
% 2.24/1.01  --bmc1_pre_inst_state                   false
% 2.24/1.01  --bmc1_pre_inst_reach_state             false
% 2.24/1.01  --bmc1_out_unsat_core                   false
% 2.24/1.01  --bmc1_aig_witness_out                  false
% 2.24/1.01  --bmc1_verbose                          false
% 2.24/1.01  --bmc1_dump_clauses_tptp                false
% 2.24/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.24/1.01  --bmc1_dump_file                        -
% 2.24/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.24/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.24/1.01  --bmc1_ucm_extend_mode                  1
% 2.24/1.01  --bmc1_ucm_init_mode                    2
% 2.24/1.01  --bmc1_ucm_cone_mode                    none
% 2.24/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.24/1.01  --bmc1_ucm_relax_model                  4
% 2.24/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.24/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.24/1.01  --bmc1_ucm_layered_model                none
% 2.24/1.01  --bmc1_ucm_max_lemma_size               10
% 2.24/1.01  
% 2.24/1.01  ------ AIG Options
% 2.24/1.01  
% 2.24/1.01  --aig_mode                              false
% 2.24/1.01  
% 2.24/1.01  ------ Instantiation Options
% 2.24/1.01  
% 2.24/1.01  --instantiation_flag                    true
% 2.24/1.01  --inst_sos_flag                         false
% 2.24/1.01  --inst_sos_phase                        true
% 2.24/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.24/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.24/1.01  --inst_lit_sel_side                     num_symb
% 2.24/1.01  --inst_solver_per_active                1400
% 2.24/1.01  --inst_solver_calls_frac                1.
% 2.24/1.01  --inst_passive_queue_type               priority_queues
% 2.24/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.24/1.01  --inst_passive_queues_freq              [25;2]
% 2.24/1.01  --inst_dismatching                      true
% 2.24/1.01  --inst_eager_unprocessed_to_passive     true
% 2.24/1.01  --inst_prop_sim_given                   true
% 2.24/1.01  --inst_prop_sim_new                     false
% 2.24/1.01  --inst_subs_new                         false
% 2.24/1.01  --inst_eq_res_simp                      false
% 2.24/1.01  --inst_subs_given                       false
% 2.24/1.01  --inst_orphan_elimination               true
% 2.24/1.01  --inst_learning_loop_flag               true
% 2.24/1.01  --inst_learning_start                   3000
% 2.24/1.01  --inst_learning_factor                  2
% 2.24/1.01  --inst_start_prop_sim_after_learn       3
% 2.24/1.01  --inst_sel_renew                        solver
% 2.24/1.01  --inst_lit_activity_flag                true
% 2.24/1.01  --inst_restr_to_given                   false
% 2.24/1.01  --inst_activity_threshold               500
% 2.24/1.01  --inst_out_proof                        true
% 2.24/1.01  
% 2.24/1.01  ------ Resolution Options
% 2.24/1.01  
% 2.24/1.01  --resolution_flag                       true
% 2.24/1.01  --res_lit_sel                           adaptive
% 2.24/1.01  --res_lit_sel_side                      none
% 2.24/1.01  --res_ordering                          kbo
% 2.24/1.01  --res_to_prop_solver                    active
% 2.24/1.01  --res_prop_simpl_new                    false
% 2.24/1.01  --res_prop_simpl_given                  true
% 2.24/1.01  --res_passive_queue_type                priority_queues
% 2.24/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.24/1.01  --res_passive_queues_freq               [15;5]
% 2.24/1.01  --res_forward_subs                      full
% 2.24/1.01  --res_backward_subs                     full
% 2.24/1.01  --res_forward_subs_resolution           true
% 2.24/1.01  --res_backward_subs_resolution          true
% 2.24/1.01  --res_orphan_elimination                true
% 2.24/1.01  --res_time_limit                        2.
% 2.24/1.01  --res_out_proof                         true
% 2.24/1.01  
% 2.24/1.01  ------ Superposition Options
% 2.24/1.01  
% 2.24/1.01  --superposition_flag                    true
% 2.24/1.01  --sup_passive_queue_type                priority_queues
% 2.24/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.24/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.24/1.01  --demod_completeness_check              fast
% 2.24/1.01  --demod_use_ground                      true
% 2.24/1.01  --sup_to_prop_solver                    passive
% 2.24/1.01  --sup_prop_simpl_new                    true
% 2.24/1.01  --sup_prop_simpl_given                  true
% 2.24/1.01  --sup_fun_splitting                     false
% 2.24/1.01  --sup_smt_interval                      50000
% 2.24/1.01  
% 2.24/1.01  ------ Superposition Simplification Setup
% 2.24/1.01  
% 2.24/1.01  --sup_indices_passive                   []
% 2.24/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.24/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.24/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.24/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.24/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.24/1.01  --sup_full_bw                           [BwDemod]
% 2.24/1.01  --sup_immed_triv                        [TrivRules]
% 2.24/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.24/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.24/1.01  --sup_immed_bw_main                     []
% 2.24/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.24/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.24/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.24/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.24/1.01  
% 2.24/1.01  ------ Combination Options
% 2.24/1.01  
% 2.24/1.01  --comb_res_mult                         3
% 2.24/1.01  --comb_sup_mult                         2
% 2.24/1.01  --comb_inst_mult                        10
% 2.24/1.01  
% 2.24/1.01  ------ Debug Options
% 2.24/1.01  
% 2.24/1.01  --dbg_backtrace                         false
% 2.24/1.01  --dbg_dump_prop_clauses                 false
% 2.24/1.01  --dbg_dump_prop_clauses_file            -
% 2.24/1.01  --dbg_out_stat                          false
% 2.24/1.01  ------ Parsing...
% 2.24/1.01  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.24/1.01  
% 2.24/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 2.24/1.01  
% 2.24/1.01  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.24/1.01  
% 2.24/1.01  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.24/1.01  ------ Proving...
% 2.24/1.01  ------ Problem Properties 
% 2.24/1.01  
% 2.24/1.01  
% 2.24/1.01  clauses                                 16
% 2.24/1.01  conjectures                             4
% 2.24/1.01  EPR                                     3
% 2.24/1.01  Horn                                    14
% 2.24/1.01  unary                                   6
% 2.24/1.01  binary                                  7
% 2.24/1.01  lits                                    29
% 2.24/1.01  lits eq                                 7
% 2.24/1.01  fd_pure                                 0
% 2.24/1.01  fd_pseudo                               0
% 2.24/1.01  fd_cond                                 3
% 2.24/1.01  fd_pseudo_cond                          0
% 2.24/1.01  AC symbols                              0
% 2.24/1.01  
% 2.24/1.01  ------ Schedule dynamic 5 is on 
% 2.24/1.01  
% 2.24/1.01  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.24/1.01  
% 2.24/1.01  
% 2.24/1.01  ------ 
% 2.24/1.01  Current options:
% 2.24/1.01  ------ 
% 2.24/1.01  
% 2.24/1.01  ------ Input Options
% 2.24/1.01  
% 2.24/1.01  --out_options                           all
% 2.24/1.01  --tptp_safe_out                         true
% 2.24/1.01  --problem_path                          ""
% 2.24/1.01  --include_path                          ""
% 2.24/1.01  --clausifier                            res/vclausify_rel
% 2.24/1.01  --clausifier_options                    --mode clausify
% 2.24/1.01  --stdin                                 false
% 2.24/1.01  --stats_out                             all
% 2.24/1.01  
% 2.24/1.01  ------ General Options
% 2.24/1.01  
% 2.24/1.01  --fof                                   false
% 2.24/1.01  --time_out_real                         305.
% 2.24/1.01  --time_out_virtual                      -1.
% 2.24/1.01  --symbol_type_check                     false
% 2.24/1.01  --clausify_out                          false
% 2.24/1.01  --sig_cnt_out                           false
% 2.24/1.01  --trig_cnt_out                          false
% 2.24/1.01  --trig_cnt_out_tolerance                1.
% 2.24/1.01  --trig_cnt_out_sk_spl                   false
% 2.24/1.01  --abstr_cl_out                          false
% 2.24/1.01  
% 2.24/1.01  ------ Global Options
% 2.24/1.01  
% 2.24/1.01  --schedule                              default
% 2.24/1.01  --add_important_lit                     false
% 2.24/1.01  --prop_solver_per_cl                    1000
% 2.24/1.01  --min_unsat_core                        false
% 2.24/1.01  --soft_assumptions                      false
% 2.24/1.01  --soft_lemma_size                       3
% 2.24/1.01  --prop_impl_unit_size                   0
% 2.24/1.01  --prop_impl_unit                        []
% 2.24/1.01  --share_sel_clauses                     true
% 2.24/1.01  --reset_solvers                         false
% 2.24/1.01  --bc_imp_inh                            [conj_cone]
% 2.24/1.01  --conj_cone_tolerance                   3.
% 2.24/1.01  --extra_neg_conj                        none
% 2.24/1.01  --large_theory_mode                     true
% 2.24/1.01  --prolific_symb_bound                   200
% 2.24/1.01  --lt_threshold                          2000
% 2.24/1.01  --clause_weak_htbl                      true
% 2.24/1.01  --gc_record_bc_elim                     false
% 2.24/1.01  
% 2.24/1.01  ------ Preprocessing Options
% 2.24/1.01  
% 2.24/1.01  --preprocessing_flag                    true
% 2.24/1.01  --time_out_prep_mult                    0.1
% 2.24/1.01  --splitting_mode                        input
% 2.24/1.01  --splitting_grd                         true
% 2.24/1.01  --splitting_cvd                         false
% 2.24/1.01  --splitting_cvd_svl                     false
% 2.24/1.01  --splitting_nvd                         32
% 2.24/1.01  --sub_typing                            true
% 2.24/1.01  --prep_gs_sim                           true
% 2.24/1.01  --prep_unflatten                        true
% 2.24/1.01  --prep_res_sim                          true
% 2.24/1.01  --prep_upred                            true
% 2.24/1.01  --prep_sem_filter                       exhaustive
% 2.24/1.01  --prep_sem_filter_out                   false
% 2.24/1.01  --pred_elim                             true
% 2.24/1.01  --res_sim_input                         true
% 2.24/1.01  --eq_ax_congr_red                       true
% 2.24/1.01  --pure_diseq_elim                       true
% 2.24/1.01  --brand_transform                       false
% 2.24/1.01  --non_eq_to_eq                          false
% 2.24/1.01  --prep_def_merge                        true
% 2.24/1.01  --prep_def_merge_prop_impl              false
% 2.24/1.01  --prep_def_merge_mbd                    true
% 2.24/1.01  --prep_def_merge_tr_red                 false
% 2.24/1.01  --prep_def_merge_tr_cl                  false
% 2.24/1.01  --smt_preprocessing                     true
% 2.24/1.01  --smt_ac_axioms                         fast
% 2.24/1.01  --preprocessed_out                      false
% 2.24/1.01  --preprocessed_stats                    false
% 2.24/1.01  
% 2.24/1.01  ------ Abstraction refinement Options
% 2.24/1.01  
% 2.24/1.01  --abstr_ref                             []
% 2.24/1.01  --abstr_ref_prep                        false
% 2.24/1.01  --abstr_ref_until_sat                   false
% 2.24/1.01  --abstr_ref_sig_restrict                funpre
% 2.24/1.01  --abstr_ref_af_restrict_to_split_sk     false
% 2.24/1.01  --abstr_ref_under                       []
% 2.24/1.01  
% 2.24/1.01  ------ SAT Options
% 2.24/1.01  
% 2.24/1.01  --sat_mode                              false
% 2.24/1.01  --sat_fm_restart_options                ""
% 2.24/1.01  --sat_gr_def                            false
% 2.24/1.01  --sat_epr_types                         true
% 2.24/1.01  --sat_non_cyclic_types                  false
% 2.24/1.01  --sat_finite_models                     false
% 2.24/1.01  --sat_fm_lemmas                         false
% 2.24/1.01  --sat_fm_prep                           false
% 2.24/1.01  --sat_fm_uc_incr                        true
% 2.24/1.01  --sat_out_model                         small
% 2.24/1.01  --sat_out_clauses                       false
% 2.24/1.01  
% 2.24/1.01  ------ QBF Options
% 2.24/1.01  
% 2.24/1.01  --qbf_mode                              false
% 2.24/1.01  --qbf_elim_univ                         false
% 2.24/1.01  --qbf_dom_inst                          none
% 2.24/1.01  --qbf_dom_pre_inst                      false
% 2.24/1.01  --qbf_sk_in                             false
% 2.24/1.01  --qbf_pred_elim                         true
% 2.24/1.01  --qbf_split                             512
% 2.24/1.01  
% 2.24/1.01  ------ BMC1 Options
% 2.24/1.01  
% 2.24/1.01  --bmc1_incremental                      false
% 2.24/1.01  --bmc1_axioms                           reachable_all
% 2.24/1.01  --bmc1_min_bound                        0
% 2.24/1.01  --bmc1_max_bound                        -1
% 2.24/1.01  --bmc1_max_bound_default                -1
% 2.24/1.01  --bmc1_symbol_reachability              true
% 2.24/1.01  --bmc1_property_lemmas                  false
% 2.24/1.01  --bmc1_k_induction                      false
% 2.24/1.01  --bmc1_non_equiv_states                 false
% 2.24/1.01  --bmc1_deadlock                         false
% 2.24/1.01  --bmc1_ucm                              false
% 2.24/1.01  --bmc1_add_unsat_core                   none
% 2.24/1.01  --bmc1_unsat_core_children              false
% 2.24/1.01  --bmc1_unsat_core_extrapolate_axioms    false
% 2.24/1.01  --bmc1_out_stat                         full
% 2.24/1.01  --bmc1_ground_init                      false
% 2.24/1.01  --bmc1_pre_inst_next_state              false
% 2.24/1.01  --bmc1_pre_inst_state                   false
% 2.24/1.01  --bmc1_pre_inst_reach_state             false
% 2.24/1.01  --bmc1_out_unsat_core                   false
% 2.24/1.01  --bmc1_aig_witness_out                  false
% 2.24/1.01  --bmc1_verbose                          false
% 2.24/1.01  --bmc1_dump_clauses_tptp                false
% 2.24/1.01  --bmc1_dump_unsat_core_tptp             false
% 2.24/1.01  --bmc1_dump_file                        -
% 2.24/1.01  --bmc1_ucm_expand_uc_limit              128
% 2.24/1.01  --bmc1_ucm_n_expand_iterations          6
% 2.24/1.01  --bmc1_ucm_extend_mode                  1
% 2.24/1.01  --bmc1_ucm_init_mode                    2
% 2.24/1.01  --bmc1_ucm_cone_mode                    none
% 2.24/1.01  --bmc1_ucm_reduced_relation_type        0
% 2.24/1.01  --bmc1_ucm_relax_model                  4
% 2.24/1.01  --bmc1_ucm_full_tr_after_sat            true
% 2.24/1.01  --bmc1_ucm_expand_neg_assumptions       false
% 2.24/1.01  --bmc1_ucm_layered_model                none
% 2.24/1.01  --bmc1_ucm_max_lemma_size               10
% 2.24/1.01  
% 2.24/1.01  ------ AIG Options
% 2.24/1.01  
% 2.24/1.01  --aig_mode                              false
% 2.24/1.01  
% 2.24/1.01  ------ Instantiation Options
% 2.24/1.01  
% 2.24/1.01  --instantiation_flag                    true
% 2.24/1.01  --inst_sos_flag                         false
% 2.24/1.01  --inst_sos_phase                        true
% 2.24/1.01  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.24/1.01  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.24/1.01  --inst_lit_sel_side                     none
% 2.24/1.01  --inst_solver_per_active                1400
% 2.24/1.01  --inst_solver_calls_frac                1.
% 2.24/1.01  --inst_passive_queue_type               priority_queues
% 2.24/1.01  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.24/1.01  --inst_passive_queues_freq              [25;2]
% 2.24/1.01  --inst_dismatching                      true
% 2.24/1.01  --inst_eager_unprocessed_to_passive     true
% 2.24/1.01  --inst_prop_sim_given                   true
% 2.24/1.01  --inst_prop_sim_new                     false
% 2.24/1.01  --inst_subs_new                         false
% 2.24/1.01  --inst_eq_res_simp                      false
% 2.24/1.01  --inst_subs_given                       false
% 2.24/1.01  --inst_orphan_elimination               true
% 2.24/1.01  --inst_learning_loop_flag               true
% 2.24/1.01  --inst_learning_start                   3000
% 2.24/1.01  --inst_learning_factor                  2
% 2.24/1.01  --inst_start_prop_sim_after_learn       3
% 2.24/1.01  --inst_sel_renew                        solver
% 2.24/1.01  --inst_lit_activity_flag                true
% 2.24/1.01  --inst_restr_to_given                   false
% 2.24/1.01  --inst_activity_threshold               500
% 2.24/1.01  --inst_out_proof                        true
% 2.24/1.01  
% 2.24/1.01  ------ Resolution Options
% 2.24/1.01  
% 2.24/1.01  --resolution_flag                       false
% 2.24/1.01  --res_lit_sel                           adaptive
% 2.24/1.01  --res_lit_sel_side                      none
% 2.24/1.01  --res_ordering                          kbo
% 2.24/1.01  --res_to_prop_solver                    active
% 2.24/1.01  --res_prop_simpl_new                    false
% 2.24/1.01  --res_prop_simpl_given                  true
% 2.24/1.01  --res_passive_queue_type                priority_queues
% 2.24/1.01  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.24/1.01  --res_passive_queues_freq               [15;5]
% 2.24/1.01  --res_forward_subs                      full
% 2.24/1.01  --res_backward_subs                     full
% 2.24/1.01  --res_forward_subs_resolution           true
% 2.24/1.01  --res_backward_subs_resolution          true
% 2.24/1.01  --res_orphan_elimination                true
% 2.24/1.01  --res_time_limit                        2.
% 2.24/1.01  --res_out_proof                         true
% 2.24/1.01  
% 2.24/1.01  ------ Superposition Options
% 2.24/1.01  
% 2.24/1.01  --superposition_flag                    true
% 2.24/1.01  --sup_passive_queue_type                priority_queues
% 2.24/1.01  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.24/1.01  --sup_passive_queues_freq               [8;1;4]
% 2.24/1.01  --demod_completeness_check              fast
% 2.24/1.01  --demod_use_ground                      true
% 2.24/1.01  --sup_to_prop_solver                    passive
% 2.24/1.01  --sup_prop_simpl_new                    true
% 2.24/1.01  --sup_prop_simpl_given                  true
% 2.24/1.01  --sup_fun_splitting                     false
% 2.24/1.01  --sup_smt_interval                      50000
% 2.24/1.01  
% 2.24/1.01  ------ Superposition Simplification Setup
% 2.24/1.01  
% 2.24/1.01  --sup_indices_passive                   []
% 2.24/1.01  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.24/1.01  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.24/1.01  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.24/1.01  --sup_full_triv                         [TrivRules;PropSubs]
% 2.24/1.01  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.24/1.01  --sup_full_bw                           [BwDemod]
% 2.24/1.01  --sup_immed_triv                        [TrivRules]
% 2.24/1.01  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.24/1.01  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.24/1.01  --sup_immed_bw_main                     []
% 2.24/1.01  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.24/1.01  --sup_input_triv                        [Unflattening;TrivRules]
% 2.24/1.01  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.24/1.01  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.24/1.01  
% 2.24/1.01  ------ Combination Options
% 2.24/1.01  
% 2.24/1.01  --comb_res_mult                         3
% 2.24/1.01  --comb_sup_mult                         2
% 2.24/1.01  --comb_inst_mult                        10
% 2.24/1.01  
% 2.24/1.01  ------ Debug Options
% 2.24/1.01  
% 2.24/1.01  --dbg_backtrace                         false
% 2.24/1.01  --dbg_dump_prop_clauses                 false
% 2.24/1.01  --dbg_dump_prop_clauses_file            -
% 2.24/1.01  --dbg_out_stat                          false
% 2.24/1.01  
% 2.24/1.01  
% 2.24/1.01  
% 2.24/1.01  
% 2.24/1.01  ------ Proving...
% 2.24/1.01  
% 2.24/1.01  
% 2.24/1.01  % SZS status Theorem for theBenchmark.p
% 2.24/1.01  
% 2.24/1.01   Resolution empty clause
% 2.24/1.01  
% 2.24/1.01  % SZS output start CNFRefutation for theBenchmark.p
% 2.24/1.01  
% 2.24/1.01  fof(f12,axiom,(
% 2.24/1.01    ! [X0,X1] : (r1_tarski(X0,X1) => (r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) | k1_xboole_0 = X0))),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f23,plain,(
% 2.24/1.01    ! [X0,X1] : ((r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) | k1_xboole_0 = X0) | ~r1_tarski(X0,X1))),
% 2.24/1.01    inference(ennf_transformation,[],[f12])).
% 2.24/1.01  
% 2.24/1.01  fof(f24,plain,(
% 2.24/1.01    ! [X0,X1] : (r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) | k1_xboole_0 = X0 | ~r1_tarski(X0,X1))),
% 2.24/1.01    inference(flattening,[],[f23])).
% 2.24/1.01  
% 2.24/1.01  fof(f43,plain,(
% 2.24/1.01    ( ! [X0,X1] : (r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) | k1_xboole_0 = X0 | ~r1_tarski(X0,X1)) )),
% 2.24/1.01    inference(cnf_transformation,[],[f24])).
% 2.24/1.01  
% 2.24/1.01  fof(f13,conjecture,(
% 2.24/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) => (r1_tarski(X1,X2) => r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)))))),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f14,negated_conjecture,(
% 2.24/1.01    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) => (r1_tarski(X1,X2) => r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)))))),
% 2.24/1.01    inference(negated_conjecture,[],[f13])).
% 2.24/1.01  
% 2.24/1.01  fof(f25,plain,(
% 2.24/1.01    ? [X0,X1] : (? [X2] : ((~r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) & r1_tarski(X1,X2)) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.24/1.01    inference(ennf_transformation,[],[f14])).
% 2.24/1.01  
% 2.24/1.01  fof(f26,plain,(
% 2.24/1.01    ? [X0,X1] : (? [X2] : (~r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.24/1.01    inference(flattening,[],[f25])).
% 2.24/1.01  
% 2.24/1.01  fof(f29,plain,(
% 2.24/1.01    ( ! [X0,X1] : (? [X2] : (~r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) => (~r1_tarski(k8_setfam_1(X0,sK2),k8_setfam_1(X0,X1)) & r1_tarski(X1,sK2) & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(X0))))) )),
% 2.24/1.01    introduced(choice_axiom,[])).
% 2.24/1.01  
% 2.24/1.01  fof(f28,plain,(
% 2.24/1.01    ? [X0,X1] : (? [X2] : (~r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) => (? [X2] : (~r1_tarski(k8_setfam_1(sK0,X2),k8_setfam_1(sK0,sK1)) & r1_tarski(sK1,X2) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(sK0)))) & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))))),
% 2.24/1.01    introduced(choice_axiom,[])).
% 2.24/1.01  
% 2.24/1.01  fof(f30,plain,(
% 2.24/1.01    (~r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) & r1_tarski(sK1,sK2) & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0)))) & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 2.24/1.01    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f26,f29,f28])).
% 2.24/1.01  
% 2.24/1.01  fof(f45,plain,(
% 2.24/1.01    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 2.24/1.01    inference(cnf_transformation,[],[f30])).
% 2.24/1.01  
% 2.24/1.01  fof(f7,axiom,(
% 2.24/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ((k1_xboole_0 = X1 => k8_setfam_1(X0,X1) = X0) & (k1_xboole_0 != X1 => k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1))))),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f20,plain,(
% 2.24/1.01    ! [X0,X1] : (((k8_setfam_1(X0,X1) = X0 | k1_xboole_0 != X1) & (k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1) | k1_xboole_0 = X1)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.24/1.01    inference(ennf_transformation,[],[f7])).
% 2.24/1.01  
% 2.24/1.01  fof(f37,plain,(
% 2.24/1.01    ( ! [X0,X1] : (k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.24/1.01    inference(cnf_transformation,[],[f20])).
% 2.24/1.01  
% 2.24/1.01  fof(f9,axiom,(
% 2.24/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => k6_setfam_1(X0,X1) = k1_setfam_1(X1))),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f22,plain,(
% 2.24/1.01    ! [X0,X1] : (k6_setfam_1(X0,X1) = k1_setfam_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.24/1.01    inference(ennf_transformation,[],[f9])).
% 2.24/1.01  
% 2.24/1.01  fof(f40,plain,(
% 2.24/1.01    ( ! [X0,X1] : (k6_setfam_1(X0,X1) = k1_setfam_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.24/1.01    inference(cnf_transformation,[],[f22])).
% 2.24/1.01  
% 2.24/1.01  fof(f44,plain,(
% 2.24/1.01    m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 2.24/1.01    inference(cnf_transformation,[],[f30])).
% 2.24/1.01  
% 2.24/1.01  fof(f47,plain,(
% 2.24/1.01    ~r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1))),
% 2.24/1.01    inference(cnf_transformation,[],[f30])).
% 2.24/1.01  
% 2.24/1.01  fof(f46,plain,(
% 2.24/1.01    r1_tarski(sK1,sK2)),
% 2.24/1.01    inference(cnf_transformation,[],[f30])).
% 2.24/1.01  
% 2.24/1.01  fof(f38,plain,(
% 2.24/1.01    ( ! [X0,X1] : (k8_setfam_1(X0,X1) = X0 | k1_xboole_0 != X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.24/1.01    inference(cnf_transformation,[],[f20])).
% 2.24/1.01  
% 2.24/1.01  fof(f48,plain,(
% 2.24/1.01    ( ! [X0] : (k8_setfam_1(X0,k1_xboole_0) = X0 | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.24/1.01    inference(equality_resolution,[],[f38])).
% 2.24/1.01  
% 2.24/1.01  fof(f5,axiom,(
% 2.24/1.01    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f35,plain,(
% 2.24/1.01    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 2.24/1.01    inference(cnf_transformation,[],[f5])).
% 2.24/1.01  
% 2.24/1.01  fof(f8,axiom,(
% 2.24/1.01    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0)))),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f21,plain,(
% 2.24/1.01    ! [X0,X1] : (m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.24/1.01    inference(ennf_transformation,[],[f8])).
% 2.24/1.01  
% 2.24/1.01  fof(f39,plain,(
% 2.24/1.01    ( ! [X0,X1] : (m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.24/1.01    inference(cnf_transformation,[],[f21])).
% 2.24/1.01  
% 2.24/1.01  fof(f10,axiom,(
% 2.24/1.01    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f27,plain,(
% 2.24/1.01    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.24/1.01    inference(nnf_transformation,[],[f10])).
% 2.24/1.01  
% 2.24/1.01  fof(f41,plain,(
% 2.24/1.01    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.24/1.01    inference(cnf_transformation,[],[f27])).
% 2.24/1.01  
% 2.24/1.01  fof(f6,axiom,(
% 2.24/1.01    ! [X0] : (v1_xboole_0(X0) => ! [X1] : (m1_subset_1(X1,k1_zfmisc_1(X0)) => v1_xboole_0(X1)))),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f19,plain,(
% 2.24/1.01    ! [X0] : (! [X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0))) | ~v1_xboole_0(X0))),
% 2.24/1.01    inference(ennf_transformation,[],[f6])).
% 2.24/1.01  
% 2.24/1.01  fof(f36,plain,(
% 2.24/1.01    ( ! [X0,X1] : (v1_xboole_0(X1) | ~m1_subset_1(X1,k1_zfmisc_1(X0)) | ~v1_xboole_0(X0)) )),
% 2.24/1.01    inference(cnf_transformation,[],[f19])).
% 2.24/1.01  
% 2.24/1.01  fof(f42,plain,(
% 2.24/1.01    ( ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) )),
% 2.24/1.01    inference(cnf_transformation,[],[f27])).
% 2.24/1.01  
% 2.24/1.01  fof(f2,axiom,(
% 2.24/1.01    ! [X0] : k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f32,plain,(
% 2.24/1.01    ( ! [X0] : (k1_xboole_0 = k4_xboole_0(k1_xboole_0,X0)) )),
% 2.24/1.01    inference(cnf_transformation,[],[f2])).
% 2.24/1.01  
% 2.24/1.01  fof(f3,axiom,(
% 2.24/1.01    ! [X0,X1] : (~v1_xboole_0(X1) => ~(r1_xboole_0(X1,X0) & r1_tarski(X1,X0)))),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f17,plain,(
% 2.24/1.01    ! [X0,X1] : ((~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0)) | v1_xboole_0(X1))),
% 2.24/1.01    inference(ennf_transformation,[],[f3])).
% 2.24/1.01  
% 2.24/1.01  fof(f18,plain,(
% 2.24/1.01    ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1))),
% 2.24/1.01    inference(flattening,[],[f17])).
% 2.24/1.01  
% 2.24/1.01  fof(f33,plain,(
% 2.24/1.01    ( ! [X0,X1] : (~r1_xboole_0(X1,X0) | ~r1_tarski(X1,X0) | v1_xboole_0(X1)) )),
% 2.24/1.01    inference(cnf_transformation,[],[f18])).
% 2.24/1.01  
% 2.24/1.01  fof(f4,axiom,(
% 2.24/1.01    ! [X0,X1] : r1_xboole_0(k4_xboole_0(X0,X1),X1)),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f34,plain,(
% 2.24/1.01    ( ! [X0,X1] : (r1_xboole_0(k4_xboole_0(X0,X1),X1)) )),
% 2.24/1.01    inference(cnf_transformation,[],[f4])).
% 2.24/1.01  
% 2.24/1.01  fof(f1,axiom,(
% 2.24/1.01    ! [X0] : (v1_xboole_0(X0) => k1_xboole_0 = X0)),
% 2.24/1.01    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 2.24/1.01  
% 2.24/1.01  fof(f16,plain,(
% 2.24/1.01    ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0))),
% 2.24/1.01    inference(ennf_transformation,[],[f1])).
% 2.24/1.01  
% 2.24/1.01  fof(f31,plain,(
% 2.24/1.01    ( ! [X0] : (k1_xboole_0 = X0 | ~v1_xboole_0(X0)) )),
% 2.24/1.01    inference(cnf_transformation,[],[f16])).
% 2.24/1.01  
% 2.24/1.01  cnf(c_12,plain,
% 2.24/1.01      ( ~ r1_tarski(X0,X1)
% 2.24/1.01      | r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
% 2.24/1.01      | k1_xboole_0 = X0 ),
% 2.24/1.01      inference(cnf_transformation,[],[f43]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_738,plain,
% 2.24/1.01      ( k1_xboole_0 = X0
% 2.24/1.01      | r1_tarski(X0,X1) != iProver_top
% 2.24/1.01      | r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_15,negated_conjecture,
% 2.24/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
% 2.24/1.01      inference(cnf_transformation,[],[f45]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_735,plain,
% 2.24/1.01      ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_7,plain,
% 2.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 2.24/1.01      | k6_setfam_1(X1,X0) = k8_setfam_1(X1,X0)
% 2.24/1.01      | k1_xboole_0 = X0 ),
% 2.24/1.01      inference(cnf_transformation,[],[f37]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_743,plain,
% 2.24/1.01      ( k6_setfam_1(X0,X1) = k8_setfam_1(X0,X1)
% 2.24/1.01      | k1_xboole_0 = X1
% 2.24/1.01      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1807,plain,
% 2.24/1.01      ( k6_setfam_1(sK0,sK2) = k8_setfam_1(sK0,sK2) | sK2 = k1_xboole_0 ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_735,c_743]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_9,plain,
% 2.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 2.24/1.01      | k6_setfam_1(X1,X0) = k1_setfam_1(X0) ),
% 2.24/1.01      inference(cnf_transformation,[],[f40]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_741,plain,
% 2.24/1.01      ( k6_setfam_1(X0,X1) = k1_setfam_1(X1)
% 2.24/1.01      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1302,plain,
% 2.24/1.01      ( k6_setfam_1(sK0,sK2) = k1_setfam_1(sK2) ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_735,c_741]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1816,plain,
% 2.24/1.01      ( k8_setfam_1(sK0,sK2) = k1_setfam_1(sK2) | sK2 = k1_xboole_0 ),
% 2.24/1.01      inference(light_normalisation,[status(thm)],[c_1807,c_1302]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_16,negated_conjecture,
% 2.24/1.01      ( m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
% 2.24/1.01      inference(cnf_transformation,[],[f44]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_734,plain,
% 2.24/1.01      ( m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_16]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1808,plain,
% 2.24/1.01      ( k6_setfam_1(sK0,sK1) = k8_setfam_1(sK0,sK1) | sK1 = k1_xboole_0 ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_734,c_743]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1303,plain,
% 2.24/1.01      ( k6_setfam_1(sK0,sK1) = k1_setfam_1(sK1) ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_734,c_741]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1811,plain,
% 2.24/1.01      ( k8_setfam_1(sK0,sK1) = k1_setfam_1(sK1) | sK1 = k1_xboole_0 ),
% 2.24/1.01      inference(light_normalisation,[status(thm)],[c_1808,c_1303]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_13,negated_conjecture,
% 2.24/1.01      ( ~ r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) ),
% 2.24/1.01      inference(cnf_transformation,[],[f47]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_737,plain,
% 2.24/1.01      ( r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) != iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2076,plain,
% 2.24/1.01      ( sK1 = k1_xboole_0
% 2.24/1.01      | r1_tarski(k8_setfam_1(sK0,sK2),k1_setfam_1(sK1)) != iProver_top ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_1811,c_737]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2156,plain,
% 2.24/1.01      ( sK1 = k1_xboole_0
% 2.24/1.01      | sK2 = k1_xboole_0
% 2.24/1.01      | r1_tarski(k1_setfam_1(sK2),k1_setfam_1(sK1)) != iProver_top ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_1816,c_2076]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2228,plain,
% 2.24/1.01      ( sK1 = k1_xboole_0
% 2.24/1.01      | sK2 = k1_xboole_0
% 2.24/1.01      | r1_tarski(sK1,sK2) != iProver_top ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_738,c_2156]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_14,negated_conjecture,
% 2.24/1.01      ( r1_tarski(sK1,sK2) ),
% 2.24/1.01      inference(cnf_transformation,[],[f46]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2229,plain,
% 2.24/1.01      ( ~ r1_tarski(sK1,sK2) | sK1 = k1_xboole_0 | sK2 = k1_xboole_0 ),
% 2.24/1.01      inference(predicate_to_equality_rev,[status(thm)],[c_2228]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2231,plain,
% 2.24/1.01      ( sK2 = k1_xboole_0 | sK1 = k1_xboole_0 ),
% 2.24/1.01      inference(global_propositional_subsumption,
% 2.24/1.01                [status(thm)],
% 2.24/1.01                [c_2228,c_14,c_2229]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2232,plain,
% 2.24/1.01      ( sK1 = k1_xboole_0 | sK2 = k1_xboole_0 ),
% 2.24/1.01      inference(renaming,[status(thm)],[c_2231]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2240,plain,
% 2.24/1.01      ( sK2 = k1_xboole_0
% 2.24/1.01      | r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,k1_xboole_0)) != iProver_top ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_2232,c_737]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_6,plain,
% 2.24/1.01      ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0)))
% 2.24/1.01      | k8_setfam_1(X0,k1_xboole_0) = X0 ),
% 2.24/1.01      inference(cnf_transformation,[],[f48]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_744,plain,
% 2.24/1.01      ( k8_setfam_1(X0,k1_xboole_0) = X0
% 2.24/1.01      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_4,plain,
% 2.24/1.01      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 2.24/1.01      inference(cnf_transformation,[],[f35]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_745,plain,
% 2.24/1.01      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_773,plain,
% 2.24/1.01      ( k8_setfam_1(X0,k1_xboole_0) = X0 ),
% 2.24/1.01      inference(forward_subsumption_resolution,[status(thm)],[c_744,c_745]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2249,plain,
% 2.24/1.01      ( sK2 = k1_xboole_0
% 2.24/1.01      | r1_tarski(k8_setfam_1(sK0,sK2),sK0) != iProver_top ),
% 2.24/1.01      inference(demodulation,[status(thm)],[c_2240,c_773]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_8,plain,
% 2.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 2.24/1.01      | m1_subset_1(k8_setfam_1(X1,X0),k1_zfmisc_1(X1)) ),
% 2.24/1.01      inference(cnf_transformation,[],[f39]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_742,plain,
% 2.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
% 2.24/1.01      | m1_subset_1(k8_setfam_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_11,plain,
% 2.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.24/1.01      inference(cnf_transformation,[],[f41]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_739,plain,
% 2.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.24/1.01      | r1_tarski(X0,X1) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1721,plain,
% 2.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
% 2.24/1.01      | r1_tarski(k8_setfam_1(X1,X0),X1) = iProver_top ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_742,c_739]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2580,plain,
% 2.24/1.01      ( r1_tarski(k8_setfam_1(sK0,sK2),sK0) = iProver_top ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_735,c_1721]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2813,plain,
% 2.24/1.01      ( sK2 = k1_xboole_0 ),
% 2.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_2249,c_2580]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_736,plain,
% 2.24/1.01      ( r1_tarski(sK1,sK2) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_5,plain,
% 2.24/1.01      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
% 2.24/1.01      | ~ v1_xboole_0(X1)
% 2.24/1.01      | v1_xboole_0(X0) ),
% 2.24/1.01      inference(cnf_transformation,[],[f36]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_10,plain,
% 2.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.24/1.01      inference(cnf_transformation,[],[f42]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_128,plain,
% 2.24/1.01      ( ~ r1_tarski(X0,X1) | m1_subset_1(X0,k1_zfmisc_1(X1)) ),
% 2.24/1.01      inference(prop_impl,[status(thm)],[c_10]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_129,plain,
% 2.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X1)) | ~ r1_tarski(X0,X1) ),
% 2.24/1.01      inference(renaming,[status(thm)],[c_128]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_153,plain,
% 2.24/1.01      ( ~ r1_tarski(X0,X1) | ~ v1_xboole_0(X1) | v1_xboole_0(X0) ),
% 2.24/1.01      inference(bin_hyper_res,[status(thm)],[c_5,c_129]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_733,plain,
% 2.24/1.01      ( r1_tarski(X0,X1) != iProver_top
% 2.24/1.01      | v1_xboole_0(X1) != iProver_top
% 2.24/1.01      | v1_xboole_0(X0) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_153]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1615,plain,
% 2.24/1.01      ( v1_xboole_0(sK1) = iProver_top | v1_xboole_0(sK2) != iProver_top ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_736,c_733]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2820,plain,
% 2.24/1.01      ( v1_xboole_0(sK1) = iProver_top
% 2.24/1.01      | v1_xboole_0(k1_xboole_0) != iProver_top ),
% 2.24/1.01      inference(demodulation,[status(thm)],[c_2813,c_1615]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_24,plain,
% 2.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.24/1.01      | r1_tarski(X0,X1) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_26,plain,
% 2.24/1.01      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) != iProver_top
% 2.24/1.01      | r1_tarski(k1_xboole_0,k1_xboole_0) = iProver_top ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_24]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_43,plain,
% 2.24/1.01      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_45,plain,
% 2.24/1.01      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_xboole_0)) = iProver_top ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_43]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1,plain,
% 2.24/1.01      ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
% 2.24/1.01      inference(cnf_transformation,[],[f32]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_52,plain,
% 2.24/1.01      ( k4_xboole_0(k1_xboole_0,k1_xboole_0) = k1_xboole_0 ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_1]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2,plain,
% 2.24/1.01      ( ~ r1_tarski(X0,X1) | ~ r1_xboole_0(X0,X1) | v1_xboole_0(X0) ),
% 2.24/1.01      inference(cnf_transformation,[],[f33]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_3,plain,
% 2.24/1.01      ( r1_xboole_0(k4_xboole_0(X0,X1),X1) ),
% 2.24/1.01      inference(cnf_transformation,[],[f34]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_213,plain,
% 2.24/1.01      ( ~ r1_tarski(X0,X1)
% 2.24/1.01      | v1_xboole_0(X0)
% 2.24/1.01      | X2 != X1
% 2.24/1.01      | k4_xboole_0(X3,X2) != X0 ),
% 2.24/1.01      inference(resolution_lifted,[status(thm)],[c_2,c_3]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_214,plain,
% 2.24/1.01      ( ~ r1_tarski(k4_xboole_0(X0,X1),X1) | v1_xboole_0(k4_xboole_0(X0,X1)) ),
% 2.24/1.01      inference(unflattening,[status(thm)],[c_213]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_215,plain,
% 2.24/1.01      ( r1_tarski(k4_xboole_0(X0,X1),X1) != iProver_top
% 2.24/1.01      | v1_xboole_0(k4_xboole_0(X0,X1)) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_214]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_217,plain,
% 2.24/1.01      ( r1_tarski(k4_xboole_0(k1_xboole_0,k1_xboole_0),k1_xboole_0) != iProver_top
% 2.24/1.01      | v1_xboole_0(k4_xboole_0(k1_xboole_0,k1_xboole_0)) = iProver_top ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_215]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_364,plain,( X0 = X0 ),theory(equality) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_379,plain,
% 2.24/1.01      ( k1_xboole_0 = k1_xboole_0 ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_364]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_368,plain,
% 2.24/1.01      ( ~ r1_tarski(X0,X1) | r1_tarski(X2,X3) | X2 != X0 | X3 != X1 ),
% 2.24/1.01      theory(equality) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_881,plain,
% 2.24/1.01      ( ~ r1_tarski(X0,X1)
% 2.24/1.01      | r1_tarski(k4_xboole_0(X2,X3),X3)
% 2.24/1.01      | X3 != X1
% 2.24/1.01      | k4_xboole_0(X2,X3) != X0 ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_368]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_882,plain,
% 2.24/1.01      ( X0 != X1
% 2.24/1.01      | k4_xboole_0(X2,X0) != X3
% 2.24/1.01      | r1_tarski(X3,X1) != iProver_top
% 2.24/1.01      | r1_tarski(k4_xboole_0(X2,X0),X0) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_881]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_884,plain,
% 2.24/1.01      ( k4_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 2.24/1.01      | k1_xboole_0 != k1_xboole_0
% 2.24/1.01      | r1_tarski(k4_xboole_0(k1_xboole_0,k1_xboole_0),k1_xboole_0) = iProver_top
% 2.24/1.01      | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_882]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_928,plain,
% 2.24/1.01      ( ~ r1_tarski(X0,k4_xboole_0(X1,X2))
% 2.24/1.01      | v1_xboole_0(X0)
% 2.24/1.01      | ~ v1_xboole_0(k4_xboole_0(X1,X2)) ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_153]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_929,plain,
% 2.24/1.01      ( r1_tarski(X0,k4_xboole_0(X1,X2)) != iProver_top
% 2.24/1.01      | v1_xboole_0(X0) = iProver_top
% 2.24/1.01      | v1_xboole_0(k4_xboole_0(X1,X2)) != iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_928]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_931,plain,
% 2.24/1.01      ( r1_tarski(k1_xboole_0,k4_xboole_0(k1_xboole_0,k1_xboole_0)) != iProver_top
% 2.24/1.01      | v1_xboole_0(k4_xboole_0(k1_xboole_0,k1_xboole_0)) != iProver_top
% 2.24/1.01      | v1_xboole_0(k1_xboole_0) = iProver_top ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_929]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1062,plain,
% 2.24/1.01      ( ~ r1_tarski(X0,X1)
% 2.24/1.01      | r1_tarski(X2,k4_xboole_0(X3,X4))
% 2.24/1.01      | X2 != X0
% 2.24/1.01      | k4_xboole_0(X3,X4) != X1 ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_368]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1063,plain,
% 2.24/1.01      ( X0 != X1
% 2.24/1.01      | k4_xboole_0(X2,X3) != X4
% 2.24/1.01      | r1_tarski(X1,X4) != iProver_top
% 2.24/1.01      | r1_tarski(X0,k4_xboole_0(X2,X3)) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_1062]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1065,plain,
% 2.24/1.01      ( k4_xboole_0(k1_xboole_0,k1_xboole_0) != k1_xboole_0
% 2.24/1.01      | k1_xboole_0 != k1_xboole_0
% 2.24/1.01      | r1_tarski(k1_xboole_0,k4_xboole_0(k1_xboole_0,k1_xboole_0)) = iProver_top
% 2.24/1.01      | r1_tarski(k1_xboole_0,k1_xboole_0) != iProver_top ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_1063]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2995,plain,
% 2.24/1.01      ( v1_xboole_0(sK1) = iProver_top ),
% 2.24/1.01      inference(global_propositional_subsumption,
% 2.24/1.01                [status(thm)],
% 2.24/1.01                [c_2820,c_26,c_45,c_52,c_217,c_379,c_884,c_931,c_1065]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_0,plain,
% 2.24/1.01      ( ~ v1_xboole_0(X0) | k1_xboole_0 = X0 ),
% 2.24/1.01      inference(cnf_transformation,[],[f31]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_746,plain,
% 2.24/1.01      ( k1_xboole_0 = X0 | v1_xboole_0(X0) != iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_3001,plain,
% 2.24/1.01      ( sK1 = k1_xboole_0 ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_2995,c_746]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2823,plain,
% 2.24/1.01      ( r1_tarski(k8_setfam_1(sK0,k1_xboole_0),k8_setfam_1(sK0,sK1)) != iProver_top ),
% 2.24/1.01      inference(demodulation,[status(thm)],[c_2813,c_737]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2830,plain,
% 2.24/1.01      ( r1_tarski(sK0,k8_setfam_1(sK0,sK1)) != iProver_top ),
% 2.24/1.01      inference(demodulation,[status(thm)],[c_2823,c_773]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_3096,plain,
% 2.24/1.01      ( r1_tarski(sK0,k8_setfam_1(sK0,k1_xboole_0)) != iProver_top ),
% 2.24/1.01      inference(demodulation,[status(thm)],[c_3001,c_2830]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_3106,plain,
% 2.24/1.01      ( r1_tarski(sK0,sK0) != iProver_top ),
% 2.24/1.01      inference(demodulation,[status(thm)],[c_3096,c_773]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_1720,plain,
% 2.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top
% 2.24/1.01      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_773,c_742]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_846,plain,
% 2.24/1.01      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) ),
% 2.24/1.01      inference(instantiation,[status(thm)],[c_4]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_849,plain,
% 2.24/1.01      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) = iProver_top ),
% 2.24/1.01      inference(predicate_to_equality,[status(thm)],[c_846]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2415,plain,
% 2.24/1.01      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 2.24/1.01      inference(global_propositional_subsumption,[status(thm)],[c_1720,c_849]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_2420,plain,
% 2.24/1.01      ( r1_tarski(X0,X0) = iProver_top ),
% 2.24/1.01      inference(superposition,[status(thm)],[c_2415,c_739]) ).
% 2.24/1.01  
% 2.24/1.01  cnf(c_3253,plain,
% 2.24/1.01      ( $false ),
% 2.24/1.01      inference(forward_subsumption_resolution,[status(thm)],[c_3106,c_2420]) ).
% 2.24/1.01  
% 2.24/1.01  
% 2.24/1.01  % SZS output end CNFRefutation for theBenchmark.p
% 2.24/1.01  
% 2.24/1.01  ------                               Statistics
% 2.24/1.01  
% 2.24/1.01  ------ General
% 2.24/1.01  
% 2.24/1.01  abstr_ref_over_cycles:                  0
% 2.24/1.01  abstr_ref_under_cycles:                 0
% 2.24/1.01  gc_basic_clause_elim:                   0
% 2.24/1.01  forced_gc_time:                         0
% 2.24/1.01  parsing_time:                           0.027
% 2.24/1.01  unif_index_cands_time:                  0.
% 2.24/1.01  unif_index_add_time:                    0.
% 2.24/1.01  orderings_time:                         0.
% 2.24/1.01  out_proof_time:                         0.007
% 2.24/1.01  total_time:                             0.159
% 2.24/1.01  num_of_symbols:                         44
% 2.24/1.01  num_of_terms:                           2903
% 2.24/1.01  
% 2.24/1.01  ------ Preprocessing
% 2.24/1.01  
% 2.24/1.01  num_of_splits:                          0
% 2.24/1.01  num_of_split_atoms:                     0
% 2.24/1.01  num_of_reused_defs:                     0
% 2.24/1.01  num_eq_ax_congr_red:                    14
% 2.24/1.01  num_of_sem_filtered_clauses:            1
% 2.24/1.01  num_of_subtypes:                        0
% 2.24/1.01  monotx_restored_types:                  0
% 2.24/1.01  sat_num_of_epr_types:                   0
% 2.24/1.01  sat_num_of_non_cyclic_types:            0
% 2.24/1.01  sat_guarded_non_collapsed_types:        0
% 2.24/1.01  num_pure_diseq_elim:                    0
% 2.24/1.01  simp_replaced_by:                       0
% 2.24/1.01  res_preprocessed:                       82
% 2.24/1.01  prep_upred:                             0
% 2.24/1.01  prep_unflattend:                        2
% 2.24/1.01  smt_new_axioms:                         0
% 2.24/1.01  pred_elim_cands:                        3
% 2.24/1.01  pred_elim:                              1
% 2.24/1.01  pred_elim_cl:                           1
% 2.24/1.01  pred_elim_cycles:                       3
% 2.24/1.01  merged_defs:                            8
% 2.24/1.01  merged_defs_ncl:                        0
% 2.24/1.01  bin_hyper_res:                          9
% 2.24/1.01  prep_cycles:                            4
% 2.24/1.01  pred_elim_time:                         0.
% 2.24/1.01  splitting_time:                         0.
% 2.24/1.01  sem_filter_time:                        0.
% 2.24/1.01  monotx_time:                            0.
% 2.24/1.01  subtype_inf_time:                       0.
% 2.24/1.01  
% 2.24/1.01  ------ Problem properties
% 2.24/1.01  
% 2.24/1.01  clauses:                                16
% 2.24/1.01  conjectures:                            4
% 2.24/1.01  epr:                                    3
% 2.24/1.01  horn:                                   14
% 2.24/1.01  ground:                                 4
% 2.24/1.01  unary:                                  6
% 2.24/1.01  binary:                                 7
% 2.24/1.01  lits:                                   29
% 2.24/1.01  lits_eq:                                7
% 2.24/1.01  fd_pure:                                0
% 2.24/1.01  fd_pseudo:                              0
% 2.24/1.01  fd_cond:                                3
% 2.24/1.01  fd_pseudo_cond:                         0
% 2.24/1.01  ac_symbols:                             0
% 2.24/1.01  
% 2.24/1.01  ------ Propositional Solver
% 2.24/1.01  
% 2.24/1.01  prop_solver_calls:                      29
% 2.24/1.01  prop_fast_solver_calls:                 424
% 2.24/1.01  smt_solver_calls:                       0
% 2.24/1.01  smt_fast_solver_calls:                  0
% 2.24/1.01  prop_num_of_clauses:                    1200
% 2.24/1.01  prop_preprocess_simplified:             3625
% 2.24/1.01  prop_fo_subsumed:                       8
% 2.24/1.01  prop_solver_time:                       0.
% 2.24/1.01  smt_solver_time:                        0.
% 2.24/1.01  smt_fast_solver_time:                   0.
% 2.24/1.01  prop_fast_solver_time:                  0.
% 2.24/1.01  prop_unsat_core_time:                   0.
% 2.24/1.01  
% 2.24/1.01  ------ QBF
% 2.24/1.01  
% 2.24/1.01  qbf_q_res:                              0
% 2.24/1.01  qbf_num_tautologies:                    0
% 2.24/1.01  qbf_prep_cycles:                        0
% 2.24/1.01  
% 2.24/1.01  ------ BMC1
% 2.24/1.01  
% 2.24/1.01  bmc1_current_bound:                     -1
% 2.24/1.01  bmc1_last_solved_bound:                 -1
% 2.24/1.01  bmc1_unsat_core_size:                   -1
% 2.24/1.01  bmc1_unsat_core_parents_size:           -1
% 2.24/1.01  bmc1_merge_next_fun:                    0
% 2.24/1.01  bmc1_unsat_core_clauses_time:           0.
% 2.24/1.01  
% 2.24/1.01  ------ Instantiation
% 2.24/1.01  
% 2.24/1.01  inst_num_of_clauses:                    385
% 2.24/1.01  inst_num_in_passive:                    157
% 2.24/1.01  inst_num_in_active:                     225
% 2.24/1.01  inst_num_in_unprocessed:                3
% 2.24/1.01  inst_num_of_loops:                      250
% 2.24/1.01  inst_num_of_learning_restarts:          0
% 2.24/1.01  inst_num_moves_active_passive:          21
% 2.24/1.01  inst_lit_activity:                      0
% 2.24/1.01  inst_lit_activity_moves:                0
% 2.24/1.01  inst_num_tautologies:                   0
% 2.24/1.01  inst_num_prop_implied:                  0
% 2.24/1.01  inst_num_existing_simplified:           0
% 2.24/1.01  inst_num_eq_res_simplified:             0
% 2.24/1.01  inst_num_child_elim:                    0
% 2.24/1.01  inst_num_of_dismatching_blockings:      131
% 2.24/1.01  inst_num_of_non_proper_insts:           405
% 2.24/1.01  inst_num_of_duplicates:                 0
% 2.24/1.01  inst_inst_num_from_inst_to_res:         0
% 2.24/1.01  inst_dismatching_checking_time:         0.
% 2.24/1.01  
% 2.24/1.01  ------ Resolution
% 2.24/1.01  
% 2.24/1.01  res_num_of_clauses:                     0
% 2.24/1.01  res_num_in_passive:                     0
% 2.24/1.01  res_num_in_active:                      0
% 2.24/1.01  res_num_of_loops:                       86
% 2.24/1.01  res_forward_subset_subsumed:            32
% 2.24/1.01  res_backward_subset_subsumed:           0
% 2.24/1.01  res_forward_subsumed:                   0
% 2.24/1.01  res_backward_subsumed:                  0
% 2.24/1.01  res_forward_subsumption_resolution:     0
% 2.24/1.01  res_backward_subsumption_resolution:    0
% 2.24/1.01  res_clause_to_clause_subsumption:       143
% 2.24/1.01  res_orphan_elimination:                 0
% 2.24/1.01  res_tautology_del:                      36
% 2.24/1.01  res_num_eq_res_simplified:              0
% 2.24/1.01  res_num_sel_changes:                    0
% 2.24/1.01  res_moves_from_active_to_pass:          0
% 2.24/1.01  
% 2.24/1.01  ------ Superposition
% 2.24/1.01  
% 2.24/1.01  sup_time_total:                         0.
% 2.24/1.01  sup_time_generating:                    0.
% 2.24/1.01  sup_time_sim_full:                      0.
% 2.24/1.01  sup_time_sim_immed:                     0.
% 2.24/1.01  
% 2.24/1.01  sup_num_of_clauses:                     39
% 2.24/1.01  sup_num_in_active:                      26
% 2.24/1.01  sup_num_in_passive:                     13
% 2.24/1.01  sup_num_of_loops:                       48
% 2.24/1.01  sup_fw_superposition:                   44
% 2.24/1.01  sup_bw_superposition:                   29
% 2.24/1.01  sup_immediate_simplified:               29
% 2.24/1.01  sup_given_eliminated:                   1
% 2.24/1.01  comparisons_done:                       0
% 2.24/1.01  comparisons_avoided:                    10
% 2.24/1.01  
% 2.24/1.01  ------ Simplifications
% 2.24/1.01  
% 2.24/1.01  
% 2.24/1.01  sim_fw_subset_subsumed:                 8
% 2.24/1.01  sim_bw_subset_subsumed:                 9
% 2.24/1.01  sim_fw_subsumed:                        9
% 2.24/1.01  sim_bw_subsumed:                        0
% 2.24/1.01  sim_fw_subsumption_res:                 2
% 2.24/1.01  sim_bw_subsumption_res:                 0
% 2.24/1.01  sim_tautology_del:                      2
% 2.24/1.01  sim_eq_tautology_del:                   6
% 2.24/1.01  sim_eq_res_simp:                        0
% 2.24/1.01  sim_fw_demodulated:                     9
% 2.24/1.01  sim_bw_demodulated:                     19
% 2.24/1.01  sim_light_normalised:                   5
% 2.24/1.01  sim_joinable_taut:                      0
% 2.24/1.01  sim_joinable_simp:                      0
% 2.24/1.01  sim_ac_normalised:                      0
% 2.24/1.01  sim_smt_subsumption:                    0
% 2.24/1.01  
%------------------------------------------------------------------------------
