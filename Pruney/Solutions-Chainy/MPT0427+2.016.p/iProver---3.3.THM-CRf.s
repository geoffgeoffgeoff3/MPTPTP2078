%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:42:30 EST 2020

% Result     : Theorem 2.48s
% Output     : CNFRefutation 2.48s
% Verified   : 
% Statistics : Number of formulae       :  103 ( 610 expanded)
%              Number of clauses        :   65 ( 226 expanded)
%              Number of leaves         :   12 ( 137 expanded)
%              Depth                    :   24
%              Number of atoms          :  206 (1838 expanded)
%              Number of equality atoms :  105 ( 480 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    8 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,conjecture,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))
         => ( r1_tarski(X1,X2)
           => r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1] :
        ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))
           => ( r1_tarski(X1,X2)
             => r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) ) ) ) ),
    inference(negated_conjecture,[],[f11])).

fof(f20,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1))
          & r1_tarski(X1,X2)
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f21,plain,(
    ? [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1))
          & r1_tarski(X1,X2)
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
      & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(flattening,[],[f20])).

fof(f24,plain,(
    ! [X0,X1] :
      ( ? [X2] :
          ( ~ r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1))
          & r1_tarski(X1,X2)
          & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) )
     => ( ~ r1_tarski(k8_setfam_1(X0,sK2),k8_setfam_1(X0,X1))
        & r1_tarski(X1,sK2)
        & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ) ),
    introduced(choice_axiom,[])).

fof(f23,plain,
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

fof(f25,plain,
    ( ~ r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1))
    & r1_tarski(sK1,sK2)
    & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0)))
    & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f21,f24,f23])).

fof(f38,plain,(
    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f25])).

fof(f8,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X0,k1_zfmisc_1(X1))
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] :
      ( ( m1_subset_1(X0,k1_zfmisc_1(X1))
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ) ),
    inference(nnf_transformation,[],[f8])).

fof(f34,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | ~ m1_subset_1(X0,k1_zfmisc_1(X1)) ) ),
    inference(cnf_transformation,[],[f22])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => ( r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
        | k1_xboole_0 = X0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f19,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(flattening,[],[f18])).

fof(f36,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
      | k1_xboole_0 = X0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f19])).

fof(f2,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f14,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f2])).

fof(f27,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f14])).

fof(f6,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f6])).

fof(f32,plain,(
    ! [X0,X1] :
      ( m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0))
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f16])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => ( ( k1_xboole_0 = X1
         => k8_setfam_1(X0,X1) = X0 )
        & ( k1_xboole_0 != X1
         => k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( ( k8_setfam_1(X0,X1) = X0
          | k1_xboole_0 != X1 )
        & ( k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1)
          | k1_xboole_0 = X1 ) )
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f30,plain,(
    ! [X0,X1] :
      ( k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1)
      | k1_xboole_0 = X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f7,axiom,(
    ! [X0,X1] :
      ( m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))
     => k6_setfam_1(X0,X1) = k1_setfam_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X0,X1] :
      ( k6_setfam_1(X0,X1) = k1_setfam_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(ennf_transformation,[],[f7])).

fof(f33,plain,(
    ! [X0,X1] :
      ( k6_setfam_1(X0,X1) = k1_setfam_1(X1)
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f17])).

fof(f37,plain,(
    m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f25])).

fof(f40,plain,(
    ~ r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f25])).

fof(f39,plain,(
    r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f25])).

fof(f31,plain,(
    ! [X0,X1] :
      ( k8_setfam_1(X0,X1) = X0
      | k1_xboole_0 != X1
      | ~ m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f41,plain,(
    ! [X0] :
      ( k8_setfam_1(X0,k1_xboole_0) = X0
      | ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) ) ),
    inference(equality_resolution,[],[f31])).

fof(f4,axiom,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f4])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f3,axiom,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0] : r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f3])).

cnf(c_13,negated_conjecture,
    ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_512,plain,
    ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_9,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(X1))
    | r1_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f34])).

cnf(c_516,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
    | r1_tarski(X0,X1) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_915,plain,
    ( r1_tarski(sK2,k1_zfmisc_1(sK0)) = iProver_top ),
    inference(superposition,[status(thm)],[c_512,c_516])).

cnf(c_10,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f36])).

cnf(c_515,plain,
    ( k1_xboole_0 = X0
    | r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_1,plain,
    ( ~ r1_tarski(X0,X1)
    | k2_xboole_0(X0,X1) = X1 ),
    inference(cnf_transformation,[],[f27])).

cnf(c_524,plain,
    ( k2_xboole_0(X0,X1) = X1
    | r1_tarski(X0,X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_1])).

cnf(c_874,plain,
    ( k2_xboole_0(k1_setfam_1(X0),k1_setfam_1(X1)) = k1_setfam_1(X1)
    | k1_xboole_0 = X1
    | r1_tarski(X1,X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_515,c_524])).

cnf(c_2406,plain,
    ( k2_xboole_0(k1_setfam_1(k1_zfmisc_1(sK0)),k1_setfam_1(sK2)) = k1_setfam_1(sK2)
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_915,c_874])).

cnf(c_6,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | m1_subset_1(k8_setfam_1(X1,X0),k1_zfmisc_1(X1)) ),
    inference(cnf_transformation,[],[f32])).

cnf(c_623,plain,
    ( m1_subset_1(k8_setfam_1(sK0,sK2),k1_zfmisc_1(sK0))
    | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(instantiation,[status(thm)],[c_6])).

cnf(c_5,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | k6_setfam_1(X1,X0) = k8_setfam_1(X1,X0)
    | k1_xboole_0 = X0 ),
    inference(cnf_transformation,[],[f30])).

cnf(c_520,plain,
    ( k6_setfam_1(X0,X1) = k8_setfam_1(X0,X1)
    | k1_xboole_0 = X1
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_1554,plain,
    ( k6_setfam_1(sK0,sK2) = k8_setfam_1(sK0,sK2)
    | sK2 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_512,c_520])).

cnf(c_7,plain,
    ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
    | k6_setfam_1(X1,X0) = k1_setfam_1(X0) ),
    inference(cnf_transformation,[],[f33])).

cnf(c_518,plain,
    ( k6_setfam_1(X0,X1) = k1_setfam_1(X1)
    | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_1030,plain,
    ( k6_setfam_1(sK0,sK2) = k1_setfam_1(sK2) ),
    inference(superposition,[status(thm)],[c_512,c_518])).

cnf(c_1563,plain,
    ( k8_setfam_1(sK0,sK2) = k1_setfam_1(sK2)
    | sK2 = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1554,c_1030])).

cnf(c_14,negated_conjecture,
    ( m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
    inference(cnf_transformation,[],[f37])).

cnf(c_511,plain,
    ( m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_1555,plain,
    ( k6_setfam_1(sK0,sK1) = k8_setfam_1(sK0,sK1)
    | sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_511,c_520])).

cnf(c_1031,plain,
    ( k6_setfam_1(sK0,sK1) = k1_setfam_1(sK1) ),
    inference(superposition,[status(thm)],[c_511,c_518])).

cnf(c_1558,plain,
    ( k8_setfam_1(sK0,sK1) = k1_setfam_1(sK1)
    | sK1 = k1_xboole_0 ),
    inference(light_normalisation,[status(thm)],[c_1555,c_1031])).

cnf(c_11,negated_conjecture,
    ( ~ r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) ),
    inference(cnf_transformation,[],[f40])).

cnf(c_514,plain,
    ( r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1875,plain,
    ( sK1 = k1_xboole_0
    | r1_tarski(k8_setfam_1(sK0,sK2),k1_setfam_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1558,c_514])).

cnf(c_1999,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0
    | r1_tarski(k1_setfam_1(sK2),k1_setfam_1(sK1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1563,c_1875])).

cnf(c_2124,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0
    | r1_tarski(sK1,sK2) != iProver_top ),
    inference(superposition,[status(thm)],[c_515,c_1999])).

cnf(c_12,negated_conjecture,
    ( r1_tarski(sK1,sK2) ),
    inference(cnf_transformation,[],[f39])).

cnf(c_2125,plain,
    ( ~ r1_tarski(sK1,sK2)
    | sK1 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2124])).

cnf(c_2127,plain,
    ( sK2 = k1_xboole_0
    | sK1 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2124,c_12,c_2125])).

cnf(c_2128,plain,
    ( sK1 = k1_xboole_0
    | sK2 = k1_xboole_0 ),
    inference(renaming,[status(thm)],[c_2127])).

cnf(c_2139,plain,
    ( sK2 = k1_xboole_0
    | r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,k1_xboole_0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2128,c_514])).

cnf(c_4,plain,
    ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0)))
    | k8_setfam_1(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f41])).

cnf(c_521,plain,
    ( k8_setfam_1(X0,k1_xboole_0) = X0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_3,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_522,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_553,plain,
    ( k8_setfam_1(X0,k1_xboole_0) = X0 ),
    inference(forward_subsumption_resolution,[status(thm)],[c_521,c_522])).

cnf(c_2148,plain,
    ( sK2 = k1_xboole_0
    | r1_tarski(k8_setfam_1(sK0,sK2),sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2139,c_553])).

cnf(c_2172,plain,
    ( ~ r1_tarski(k8_setfam_1(sK0,sK2),sK0)
    | sK2 = k1_xboole_0 ),
    inference(predicate_to_equality_rev,[status(thm)],[c_2148])).

cnf(c_1524,plain,
    ( ~ m1_subset_1(k8_setfam_1(sK0,sK2),k1_zfmisc_1(X0))
    | r1_tarski(k8_setfam_1(sK0,sK2),X0) ),
    inference(instantiation,[status(thm)],[c_9])).

cnf(c_2448,plain,
    ( ~ m1_subset_1(k8_setfam_1(sK0,sK2),k1_zfmisc_1(sK0))
    | r1_tarski(k8_setfam_1(sK0,sK2),sK0) ),
    inference(instantiation,[status(thm)],[c_1524])).

cnf(c_2837,plain,
    ( sK2 = k1_xboole_0 ),
    inference(global_propositional_subsumption,[status(thm)],[c_2406,c_13,c_623,c_2172,c_2448])).

cnf(c_513,plain,
    ( r1_tarski(sK1,sK2) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_875,plain,
    ( k2_xboole_0(sK1,sK2) = sK2 ),
    inference(superposition,[status(thm)],[c_513,c_524])).

cnf(c_2847,plain,
    ( k2_xboole_0(sK1,k1_xboole_0) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_2837,c_875])).

cnf(c_0,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_2,plain,
    ( r1_tarski(k1_xboole_0,X0) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_523,plain,
    ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_873,plain,
    ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_523,c_524])).

cnf(c_1583,plain,
    ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(superposition,[status(thm)],[c_0,c_873])).

cnf(c_2949,plain,
    ( sK1 = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2847,c_1583])).

cnf(c_2848,plain,
    ( r1_tarski(k8_setfam_1(sK0,k1_xboole_0),k8_setfam_1(sK0,sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2837,c_514])).

cnf(c_2855,plain,
    ( r1_tarski(sK0,k8_setfam_1(sK0,sK1)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2848,c_553])).

cnf(c_3071,plain,
    ( r1_tarski(sK0,k8_setfam_1(sK0,k1_xboole_0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_2949,c_2855])).

cnf(c_3080,plain,
    ( r1_tarski(sK0,sK0) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3071,c_553])).

cnf(c_519,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
    | m1_subset_1(k8_setfam_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_6])).

cnf(c_1388,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
    inference(superposition,[status(thm)],[c_553,c_519])).

cnf(c_613,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) ),
    inference(instantiation,[status(thm)],[c_3])).

cnf(c_616,plain,
    ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_613])).

cnf(c_2594,plain,
    ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1388,c_616])).

cnf(c_2601,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_2594,c_516])).

cnf(c_3313,plain,
    ( $false ),
    inference(forward_subsumption_resolution,[status(thm)],[c_3080,c_2601])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : iproveropt_run.sh %d %s
% 0.12/0.34  % Computer   : n018.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 09:54:26 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 2.48/0.98  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 2.48/0.98  
% 2.48/0.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 2.48/0.98  
% 2.48/0.98  ------  iProver source info
% 2.48/0.98  
% 2.48/0.98  git: date: 2020-06-30 10:37:57 +0100
% 2.48/0.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 2.48/0.98  git: non_committed_changes: false
% 2.48/0.98  git: last_make_outside_of_git: false
% 2.48/0.98  
% 2.48/0.98  ------ 
% 2.48/0.98  
% 2.48/0.98  ------ Input Options
% 2.48/0.98  
% 2.48/0.98  --out_options                           all
% 2.48/0.98  --tptp_safe_out                         true
% 2.48/0.98  --problem_path                          ""
% 2.48/0.98  --include_path                          ""
% 2.48/0.98  --clausifier                            res/vclausify_rel
% 2.48/0.98  --clausifier_options                    --mode clausify
% 2.48/0.98  --stdin                                 false
% 2.48/0.98  --stats_out                             all
% 2.48/0.98  
% 2.48/0.98  ------ General Options
% 2.48/0.98  
% 2.48/0.98  --fof                                   false
% 2.48/0.98  --time_out_real                         305.
% 2.48/0.98  --time_out_virtual                      -1.
% 2.48/0.98  --symbol_type_check                     false
% 2.48/0.98  --clausify_out                          false
% 2.48/0.98  --sig_cnt_out                           false
% 2.48/0.98  --trig_cnt_out                          false
% 2.48/0.98  --trig_cnt_out_tolerance                1.
% 2.48/0.98  --trig_cnt_out_sk_spl                   false
% 2.48/0.98  --abstr_cl_out                          false
% 2.48/0.98  
% 2.48/0.98  ------ Global Options
% 2.48/0.98  
% 2.48/0.98  --schedule                              default
% 2.48/0.98  --add_important_lit                     false
% 2.48/0.98  --prop_solver_per_cl                    1000
% 2.48/0.98  --min_unsat_core                        false
% 2.48/0.98  --soft_assumptions                      false
% 2.48/0.98  --soft_lemma_size                       3
% 2.48/0.98  --prop_impl_unit_size                   0
% 2.48/0.98  --prop_impl_unit                        []
% 2.48/0.98  --share_sel_clauses                     true
% 2.48/0.98  --reset_solvers                         false
% 2.48/0.98  --bc_imp_inh                            [conj_cone]
% 2.48/0.98  --conj_cone_tolerance                   3.
% 2.48/0.98  --extra_neg_conj                        none
% 2.48/0.98  --large_theory_mode                     true
% 2.48/0.98  --prolific_symb_bound                   200
% 2.48/0.98  --lt_threshold                          2000
% 2.48/0.98  --clause_weak_htbl                      true
% 2.48/0.98  --gc_record_bc_elim                     false
% 2.48/0.98  
% 2.48/0.98  ------ Preprocessing Options
% 2.48/0.98  
% 2.48/0.98  --preprocessing_flag                    true
% 2.48/0.98  --time_out_prep_mult                    0.1
% 2.48/0.98  --splitting_mode                        input
% 2.48/0.98  --splitting_grd                         true
% 2.48/0.98  --splitting_cvd                         false
% 2.48/0.98  --splitting_cvd_svl                     false
% 2.48/0.98  --splitting_nvd                         32
% 2.48/0.98  --sub_typing                            true
% 2.48/0.98  --prep_gs_sim                           true
% 2.48/0.98  --prep_unflatten                        true
% 2.48/0.98  --prep_res_sim                          true
% 2.48/0.98  --prep_upred                            true
% 2.48/0.98  --prep_sem_filter                       exhaustive
% 2.48/0.98  --prep_sem_filter_out                   false
% 2.48/0.98  --pred_elim                             true
% 2.48/0.98  --res_sim_input                         true
% 2.48/0.98  --eq_ax_congr_red                       true
% 2.48/0.98  --pure_diseq_elim                       true
% 2.48/0.98  --brand_transform                       false
% 2.48/0.98  --non_eq_to_eq                          false
% 2.48/0.98  --prep_def_merge                        true
% 2.48/0.98  --prep_def_merge_prop_impl              false
% 2.48/0.98  --prep_def_merge_mbd                    true
% 2.48/0.98  --prep_def_merge_tr_red                 false
% 2.48/0.98  --prep_def_merge_tr_cl                  false
% 2.48/0.98  --smt_preprocessing                     true
% 2.48/0.98  --smt_ac_axioms                         fast
% 2.48/0.98  --preprocessed_out                      false
% 2.48/0.98  --preprocessed_stats                    false
% 2.48/0.98  
% 2.48/0.98  ------ Abstraction refinement Options
% 2.48/0.98  
% 2.48/0.98  --abstr_ref                             []
% 2.48/0.98  --abstr_ref_prep                        false
% 2.48/0.98  --abstr_ref_until_sat                   false
% 2.48/0.98  --abstr_ref_sig_restrict                funpre
% 2.48/0.98  --abstr_ref_af_restrict_to_split_sk     false
% 2.48/0.98  --abstr_ref_under                       []
% 2.48/0.98  
% 2.48/0.98  ------ SAT Options
% 2.48/0.98  
% 2.48/0.98  --sat_mode                              false
% 2.48/0.98  --sat_fm_restart_options                ""
% 2.48/0.98  --sat_gr_def                            false
% 2.48/0.98  --sat_epr_types                         true
% 2.48/0.98  --sat_non_cyclic_types                  false
% 2.48/0.98  --sat_finite_models                     false
% 2.48/0.98  --sat_fm_lemmas                         false
% 2.48/0.98  --sat_fm_prep                           false
% 2.48/0.98  --sat_fm_uc_incr                        true
% 2.48/0.98  --sat_out_model                         small
% 2.48/0.98  --sat_out_clauses                       false
% 2.48/0.98  
% 2.48/0.98  ------ QBF Options
% 2.48/0.98  
% 2.48/0.98  --qbf_mode                              false
% 2.48/0.98  --qbf_elim_univ                         false
% 2.48/0.98  --qbf_dom_inst                          none
% 2.48/0.98  --qbf_dom_pre_inst                      false
% 2.48/0.98  --qbf_sk_in                             false
% 2.48/0.98  --qbf_pred_elim                         true
% 2.48/0.98  --qbf_split                             512
% 2.48/0.98  
% 2.48/0.98  ------ BMC1 Options
% 2.48/0.98  
% 2.48/0.98  --bmc1_incremental                      false
% 2.48/0.98  --bmc1_axioms                           reachable_all
% 2.48/0.98  --bmc1_min_bound                        0
% 2.48/0.98  --bmc1_max_bound                        -1
% 2.48/0.98  --bmc1_max_bound_default                -1
% 2.48/0.98  --bmc1_symbol_reachability              true
% 2.48/0.98  --bmc1_property_lemmas                  false
% 2.48/0.98  --bmc1_k_induction                      false
% 2.48/0.98  --bmc1_non_equiv_states                 false
% 2.48/0.98  --bmc1_deadlock                         false
% 2.48/0.98  --bmc1_ucm                              false
% 2.48/0.98  --bmc1_add_unsat_core                   none
% 2.48/0.98  --bmc1_unsat_core_children              false
% 2.48/0.98  --bmc1_unsat_core_extrapolate_axioms    false
% 2.48/0.98  --bmc1_out_stat                         full
% 2.48/0.98  --bmc1_ground_init                      false
% 2.48/0.98  --bmc1_pre_inst_next_state              false
% 2.48/0.98  --bmc1_pre_inst_state                   false
% 2.48/0.98  --bmc1_pre_inst_reach_state             false
% 2.48/0.98  --bmc1_out_unsat_core                   false
% 2.48/0.98  --bmc1_aig_witness_out                  false
% 2.48/0.98  --bmc1_verbose                          false
% 2.48/0.98  --bmc1_dump_clauses_tptp                false
% 2.48/0.98  --bmc1_dump_unsat_core_tptp             false
% 2.48/0.98  --bmc1_dump_file                        -
% 2.48/0.98  --bmc1_ucm_expand_uc_limit              128
% 2.48/0.98  --bmc1_ucm_n_expand_iterations          6
% 2.48/0.98  --bmc1_ucm_extend_mode                  1
% 2.48/0.98  --bmc1_ucm_init_mode                    2
% 2.48/0.98  --bmc1_ucm_cone_mode                    none
% 2.48/0.98  --bmc1_ucm_reduced_relation_type        0
% 2.48/0.98  --bmc1_ucm_relax_model                  4
% 2.48/0.98  --bmc1_ucm_full_tr_after_sat            true
% 2.48/0.98  --bmc1_ucm_expand_neg_assumptions       false
% 2.48/0.98  --bmc1_ucm_layered_model                none
% 2.48/0.98  --bmc1_ucm_max_lemma_size               10
% 2.48/0.98  
% 2.48/0.98  ------ AIG Options
% 2.48/0.98  
% 2.48/0.98  --aig_mode                              false
% 2.48/0.98  
% 2.48/0.98  ------ Instantiation Options
% 2.48/0.98  
% 2.48/0.98  --instantiation_flag                    true
% 2.48/0.98  --inst_sos_flag                         false
% 2.48/0.98  --inst_sos_phase                        true
% 2.48/0.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.48/0.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.48/0.98  --inst_lit_sel_side                     num_symb
% 2.48/0.98  --inst_solver_per_active                1400
% 2.48/0.98  --inst_solver_calls_frac                1.
% 2.48/0.98  --inst_passive_queue_type               priority_queues
% 2.48/0.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.48/0.98  --inst_passive_queues_freq              [25;2]
% 2.48/0.98  --inst_dismatching                      true
% 2.48/0.98  --inst_eager_unprocessed_to_passive     true
% 2.48/0.98  --inst_prop_sim_given                   true
% 2.48/0.98  --inst_prop_sim_new                     false
% 2.48/0.98  --inst_subs_new                         false
% 2.48/0.98  --inst_eq_res_simp                      false
% 2.48/0.98  --inst_subs_given                       false
% 2.48/0.98  --inst_orphan_elimination               true
% 2.48/0.98  --inst_learning_loop_flag               true
% 2.48/0.98  --inst_learning_start                   3000
% 2.48/0.98  --inst_learning_factor                  2
% 2.48/0.98  --inst_start_prop_sim_after_learn       3
% 2.48/0.98  --inst_sel_renew                        solver
% 2.48/0.98  --inst_lit_activity_flag                true
% 2.48/0.98  --inst_restr_to_given                   false
% 2.48/0.98  --inst_activity_threshold               500
% 2.48/0.98  --inst_out_proof                        true
% 2.48/0.98  
% 2.48/0.98  ------ Resolution Options
% 2.48/0.98  
% 2.48/0.98  --resolution_flag                       true
% 2.48/0.98  --res_lit_sel                           adaptive
% 2.48/0.98  --res_lit_sel_side                      none
% 2.48/0.98  --res_ordering                          kbo
% 2.48/0.98  --res_to_prop_solver                    active
% 2.48/0.98  --res_prop_simpl_new                    false
% 2.48/0.98  --res_prop_simpl_given                  true
% 2.48/0.98  --res_passive_queue_type                priority_queues
% 2.48/0.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.48/0.98  --res_passive_queues_freq               [15;5]
% 2.48/0.98  --res_forward_subs                      full
% 2.48/0.98  --res_backward_subs                     full
% 2.48/0.98  --res_forward_subs_resolution           true
% 2.48/0.98  --res_backward_subs_resolution          true
% 2.48/0.98  --res_orphan_elimination                true
% 2.48/0.98  --res_time_limit                        2.
% 2.48/0.98  --res_out_proof                         true
% 2.48/0.98  
% 2.48/0.98  ------ Superposition Options
% 2.48/0.98  
% 2.48/0.98  --superposition_flag                    true
% 2.48/0.98  --sup_passive_queue_type                priority_queues
% 2.48/0.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.48/0.98  --sup_passive_queues_freq               [8;1;4]
% 2.48/0.98  --demod_completeness_check              fast
% 2.48/0.98  --demod_use_ground                      true
% 2.48/0.98  --sup_to_prop_solver                    passive
% 2.48/0.98  --sup_prop_simpl_new                    true
% 2.48/0.98  --sup_prop_simpl_given                  true
% 2.48/0.98  --sup_fun_splitting                     false
% 2.48/0.98  --sup_smt_interval                      50000
% 2.48/0.98  
% 2.48/0.98  ------ Superposition Simplification Setup
% 2.48/0.98  
% 2.48/0.98  --sup_indices_passive                   []
% 2.48/0.98  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.48/0.98  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.48/0.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.48/0.98  --sup_full_triv                         [TrivRules;PropSubs]
% 2.48/0.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.48/0.98  --sup_full_bw                           [BwDemod]
% 2.48/0.98  --sup_immed_triv                        [TrivRules]
% 2.48/0.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.48/0.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.48/0.98  --sup_immed_bw_main                     []
% 2.48/0.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.48/0.98  --sup_input_triv                        [Unflattening;TrivRules]
% 2.48/0.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.48/0.98  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.48/0.98  
% 2.48/0.98  ------ Combination Options
% 2.48/0.98  
% 2.48/0.98  --comb_res_mult                         3
% 2.48/0.98  --comb_sup_mult                         2
% 2.48/0.98  --comb_inst_mult                        10
% 2.48/0.98  
% 2.48/0.98  ------ Debug Options
% 2.48/0.98  
% 2.48/0.98  --dbg_backtrace                         false
% 2.48/0.98  --dbg_dump_prop_clauses                 false
% 2.48/0.98  --dbg_dump_prop_clauses_file            -
% 2.48/0.98  --dbg_out_stat                          false
% 2.48/0.98  ------ Parsing...
% 2.48/0.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 2.48/0.98  
% 2.48/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 2.48/0.98  
% 2.48/0.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 2.48/0.98  
% 2.48/0.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 2.48/0.98  ------ Proving...
% 2.48/0.98  ------ Problem Properties 
% 2.48/0.98  
% 2.48/0.98  
% 2.48/0.98  clauses                                 15
% 2.48/0.98  conjectures                             4
% 2.48/0.98  EPR                                     2
% 2.48/0.98  Horn                                    13
% 2.48/0.99  unary                                   7
% 2.48/0.99  binary                                  6
% 2.48/0.99  lits                                    25
% 2.48/0.99  lits eq                                 7
% 2.48/0.99  fd_pure                                 0
% 2.48/0.99  fd_pseudo                               0
% 2.48/0.99  fd_cond                                 2
% 2.48/0.99  fd_pseudo_cond                          0
% 2.48/0.99  AC symbols                              0
% 2.48/0.99  
% 2.48/0.99  ------ Schedule dynamic 5 is on 
% 2.48/0.99  
% 2.48/0.99  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 2.48/0.99  
% 2.48/0.99  
% 2.48/0.99  ------ 
% 2.48/0.99  Current options:
% 2.48/0.99  ------ 
% 2.48/0.99  
% 2.48/0.99  ------ Input Options
% 2.48/0.99  
% 2.48/0.99  --out_options                           all
% 2.48/0.99  --tptp_safe_out                         true
% 2.48/0.99  --problem_path                          ""
% 2.48/0.99  --include_path                          ""
% 2.48/0.99  --clausifier                            res/vclausify_rel
% 2.48/0.99  --clausifier_options                    --mode clausify
% 2.48/0.99  --stdin                                 false
% 2.48/0.99  --stats_out                             all
% 2.48/0.99  
% 2.48/0.99  ------ General Options
% 2.48/0.99  
% 2.48/0.99  --fof                                   false
% 2.48/0.99  --time_out_real                         305.
% 2.48/0.99  --time_out_virtual                      -1.
% 2.48/0.99  --symbol_type_check                     false
% 2.48/0.99  --clausify_out                          false
% 2.48/0.99  --sig_cnt_out                           false
% 2.48/0.99  --trig_cnt_out                          false
% 2.48/0.99  --trig_cnt_out_tolerance                1.
% 2.48/0.99  --trig_cnt_out_sk_spl                   false
% 2.48/0.99  --abstr_cl_out                          false
% 2.48/0.99  
% 2.48/0.99  ------ Global Options
% 2.48/0.99  
% 2.48/0.99  --schedule                              default
% 2.48/0.99  --add_important_lit                     false
% 2.48/0.99  --prop_solver_per_cl                    1000
% 2.48/0.99  --min_unsat_core                        false
% 2.48/0.99  --soft_assumptions                      false
% 2.48/0.99  --soft_lemma_size                       3
% 2.48/0.99  --prop_impl_unit_size                   0
% 2.48/0.99  --prop_impl_unit                        []
% 2.48/0.99  --share_sel_clauses                     true
% 2.48/0.99  --reset_solvers                         false
% 2.48/0.99  --bc_imp_inh                            [conj_cone]
% 2.48/0.99  --conj_cone_tolerance                   3.
% 2.48/0.99  --extra_neg_conj                        none
% 2.48/0.99  --large_theory_mode                     true
% 2.48/0.99  --prolific_symb_bound                   200
% 2.48/0.99  --lt_threshold                          2000
% 2.48/0.99  --clause_weak_htbl                      true
% 2.48/0.99  --gc_record_bc_elim                     false
% 2.48/0.99  
% 2.48/0.99  ------ Preprocessing Options
% 2.48/0.99  
% 2.48/0.99  --preprocessing_flag                    true
% 2.48/0.99  --time_out_prep_mult                    0.1
% 2.48/0.99  --splitting_mode                        input
% 2.48/0.99  --splitting_grd                         true
% 2.48/0.99  --splitting_cvd                         false
% 2.48/0.99  --splitting_cvd_svl                     false
% 2.48/0.99  --splitting_nvd                         32
% 2.48/0.99  --sub_typing                            true
% 2.48/0.99  --prep_gs_sim                           true
% 2.48/0.99  --prep_unflatten                        true
% 2.48/0.99  --prep_res_sim                          true
% 2.48/0.99  --prep_upred                            true
% 2.48/0.99  --prep_sem_filter                       exhaustive
% 2.48/0.99  --prep_sem_filter_out                   false
% 2.48/0.99  --pred_elim                             true
% 2.48/0.99  --res_sim_input                         true
% 2.48/0.99  --eq_ax_congr_red                       true
% 2.48/0.99  --pure_diseq_elim                       true
% 2.48/0.99  --brand_transform                       false
% 2.48/0.99  --non_eq_to_eq                          false
% 2.48/0.99  --prep_def_merge                        true
% 2.48/0.99  --prep_def_merge_prop_impl              false
% 2.48/0.99  --prep_def_merge_mbd                    true
% 2.48/0.99  --prep_def_merge_tr_red                 false
% 2.48/0.99  --prep_def_merge_tr_cl                  false
% 2.48/0.99  --smt_preprocessing                     true
% 2.48/0.99  --smt_ac_axioms                         fast
% 2.48/0.99  --preprocessed_out                      false
% 2.48/0.99  --preprocessed_stats                    false
% 2.48/0.99  
% 2.48/0.99  ------ Abstraction refinement Options
% 2.48/0.99  
% 2.48/0.99  --abstr_ref                             []
% 2.48/0.99  --abstr_ref_prep                        false
% 2.48/0.99  --abstr_ref_until_sat                   false
% 2.48/0.99  --abstr_ref_sig_restrict                funpre
% 2.48/0.99  --abstr_ref_af_restrict_to_split_sk     false
% 2.48/0.99  --abstr_ref_under                       []
% 2.48/0.99  
% 2.48/0.99  ------ SAT Options
% 2.48/0.99  
% 2.48/0.99  --sat_mode                              false
% 2.48/0.99  --sat_fm_restart_options                ""
% 2.48/0.99  --sat_gr_def                            false
% 2.48/0.99  --sat_epr_types                         true
% 2.48/0.99  --sat_non_cyclic_types                  false
% 2.48/0.99  --sat_finite_models                     false
% 2.48/0.99  --sat_fm_lemmas                         false
% 2.48/0.99  --sat_fm_prep                           false
% 2.48/0.99  --sat_fm_uc_incr                        true
% 2.48/0.99  --sat_out_model                         small
% 2.48/0.99  --sat_out_clauses                       false
% 2.48/0.99  
% 2.48/0.99  ------ QBF Options
% 2.48/0.99  
% 2.48/0.99  --qbf_mode                              false
% 2.48/0.99  --qbf_elim_univ                         false
% 2.48/0.99  --qbf_dom_inst                          none
% 2.48/0.99  --qbf_dom_pre_inst                      false
% 2.48/0.99  --qbf_sk_in                             false
% 2.48/0.99  --qbf_pred_elim                         true
% 2.48/0.99  --qbf_split                             512
% 2.48/0.99  
% 2.48/0.99  ------ BMC1 Options
% 2.48/0.99  
% 2.48/0.99  --bmc1_incremental                      false
% 2.48/0.99  --bmc1_axioms                           reachable_all
% 2.48/0.99  --bmc1_min_bound                        0
% 2.48/0.99  --bmc1_max_bound                        -1
% 2.48/0.99  --bmc1_max_bound_default                -1
% 2.48/0.99  --bmc1_symbol_reachability              true
% 2.48/0.99  --bmc1_property_lemmas                  false
% 2.48/0.99  --bmc1_k_induction                      false
% 2.48/0.99  --bmc1_non_equiv_states                 false
% 2.48/0.99  --bmc1_deadlock                         false
% 2.48/0.99  --bmc1_ucm                              false
% 2.48/0.99  --bmc1_add_unsat_core                   none
% 2.48/0.99  --bmc1_unsat_core_children              false
% 2.48/0.99  --bmc1_unsat_core_extrapolate_axioms    false
% 2.48/0.99  --bmc1_out_stat                         full
% 2.48/0.99  --bmc1_ground_init                      false
% 2.48/0.99  --bmc1_pre_inst_next_state              false
% 2.48/0.99  --bmc1_pre_inst_state                   false
% 2.48/0.99  --bmc1_pre_inst_reach_state             false
% 2.48/0.99  --bmc1_out_unsat_core                   false
% 2.48/0.99  --bmc1_aig_witness_out                  false
% 2.48/0.99  --bmc1_verbose                          false
% 2.48/0.99  --bmc1_dump_clauses_tptp                false
% 2.48/0.99  --bmc1_dump_unsat_core_tptp             false
% 2.48/0.99  --bmc1_dump_file                        -
% 2.48/0.99  --bmc1_ucm_expand_uc_limit              128
% 2.48/0.99  --bmc1_ucm_n_expand_iterations          6
% 2.48/0.99  --bmc1_ucm_extend_mode                  1
% 2.48/0.99  --bmc1_ucm_init_mode                    2
% 2.48/0.99  --bmc1_ucm_cone_mode                    none
% 2.48/0.99  --bmc1_ucm_reduced_relation_type        0
% 2.48/0.99  --bmc1_ucm_relax_model                  4
% 2.48/0.99  --bmc1_ucm_full_tr_after_sat            true
% 2.48/0.99  --bmc1_ucm_expand_neg_assumptions       false
% 2.48/0.99  --bmc1_ucm_layered_model                none
% 2.48/0.99  --bmc1_ucm_max_lemma_size               10
% 2.48/0.99  
% 2.48/0.99  ------ AIG Options
% 2.48/0.99  
% 2.48/0.99  --aig_mode                              false
% 2.48/0.99  
% 2.48/0.99  ------ Instantiation Options
% 2.48/0.99  
% 2.48/0.99  --instantiation_flag                    true
% 2.48/0.99  --inst_sos_flag                         false
% 2.48/0.99  --inst_sos_phase                        true
% 2.48/0.99  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 2.48/0.99  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 2.48/0.99  --inst_lit_sel_side                     none
% 2.48/0.99  --inst_solver_per_active                1400
% 2.48/0.99  --inst_solver_calls_frac                1.
% 2.48/0.99  --inst_passive_queue_type               priority_queues
% 2.48/0.99  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 2.48/0.99  --inst_passive_queues_freq              [25;2]
% 2.48/0.99  --inst_dismatching                      true
% 2.48/0.99  --inst_eager_unprocessed_to_passive     true
% 2.48/0.99  --inst_prop_sim_given                   true
% 2.48/0.99  --inst_prop_sim_new                     false
% 2.48/0.99  --inst_subs_new                         false
% 2.48/0.99  --inst_eq_res_simp                      false
% 2.48/0.99  --inst_subs_given                       false
% 2.48/0.99  --inst_orphan_elimination               true
% 2.48/0.99  --inst_learning_loop_flag               true
% 2.48/0.99  --inst_learning_start                   3000
% 2.48/0.99  --inst_learning_factor                  2
% 2.48/0.99  --inst_start_prop_sim_after_learn       3
% 2.48/0.99  --inst_sel_renew                        solver
% 2.48/0.99  --inst_lit_activity_flag                true
% 2.48/0.99  --inst_restr_to_given                   false
% 2.48/0.99  --inst_activity_threshold               500
% 2.48/0.99  --inst_out_proof                        true
% 2.48/0.99  
% 2.48/0.99  ------ Resolution Options
% 2.48/0.99  
% 2.48/0.99  --resolution_flag                       false
% 2.48/0.99  --res_lit_sel                           adaptive
% 2.48/0.99  --res_lit_sel_side                      none
% 2.48/0.99  --res_ordering                          kbo
% 2.48/0.99  --res_to_prop_solver                    active
% 2.48/0.99  --res_prop_simpl_new                    false
% 2.48/0.99  --res_prop_simpl_given                  true
% 2.48/0.99  --res_passive_queue_type                priority_queues
% 2.48/0.99  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 2.48/0.99  --res_passive_queues_freq               [15;5]
% 2.48/0.99  --res_forward_subs                      full
% 2.48/0.99  --res_backward_subs                     full
% 2.48/0.99  --res_forward_subs_resolution           true
% 2.48/0.99  --res_backward_subs_resolution          true
% 2.48/0.99  --res_orphan_elimination                true
% 2.48/0.99  --res_time_limit                        2.
% 2.48/0.99  --res_out_proof                         true
% 2.48/0.99  
% 2.48/0.99  ------ Superposition Options
% 2.48/0.99  
% 2.48/0.99  --superposition_flag                    true
% 2.48/0.99  --sup_passive_queue_type                priority_queues
% 2.48/0.99  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 2.48/0.99  --sup_passive_queues_freq               [8;1;4]
% 2.48/0.99  --demod_completeness_check              fast
% 2.48/0.99  --demod_use_ground                      true
% 2.48/0.99  --sup_to_prop_solver                    passive
% 2.48/0.99  --sup_prop_simpl_new                    true
% 2.48/0.99  --sup_prop_simpl_given                  true
% 2.48/0.99  --sup_fun_splitting                     false
% 2.48/0.99  --sup_smt_interval                      50000
% 2.48/0.99  
% 2.48/0.99  ------ Superposition Simplification Setup
% 2.48/0.99  
% 2.48/0.99  --sup_indices_passive                   []
% 2.48/0.99  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.48/0.99  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.48/0.99  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 2.48/0.99  --sup_full_triv                         [TrivRules;PropSubs]
% 2.48/0.99  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.48/0.99  --sup_full_bw                           [BwDemod]
% 2.48/0.99  --sup_immed_triv                        [TrivRules]
% 2.48/0.99  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 2.48/0.99  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.48/0.99  --sup_immed_bw_main                     []
% 2.48/0.99  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.48/0.99  --sup_input_triv                        [Unflattening;TrivRules]
% 2.48/0.99  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 2.48/0.99  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 2.48/0.99  
% 2.48/0.99  ------ Combination Options
% 2.48/0.99  
% 2.48/0.99  --comb_res_mult                         3
% 2.48/0.99  --comb_sup_mult                         2
% 2.48/0.99  --comb_inst_mult                        10
% 2.48/0.99  
% 2.48/0.99  ------ Debug Options
% 2.48/0.99  
% 2.48/0.99  --dbg_backtrace                         false
% 2.48/0.99  --dbg_dump_prop_clauses                 false
% 2.48/0.99  --dbg_dump_prop_clauses_file            -
% 2.48/0.99  --dbg_out_stat                          false
% 2.48/0.99  
% 2.48/0.99  
% 2.48/0.99  
% 2.48/0.99  
% 2.48/0.99  ------ Proving...
% 2.48/0.99  
% 2.48/0.99  
% 2.48/0.99  % SZS status Theorem for theBenchmark.p
% 2.48/0.99  
% 2.48/0.99   Resolution empty clause
% 2.48/0.99  
% 2.48/0.99  % SZS output start CNFRefutation for theBenchmark.p
% 2.48/0.99  
% 2.48/0.99  fof(f11,conjecture,(
% 2.48/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) => (r1_tarski(X1,X2) => r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)))))),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f12,negated_conjecture,(
% 2.48/0.99    ~! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ! [X2] : (m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0))) => (r1_tarski(X1,X2) => r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)))))),
% 2.48/0.99    inference(negated_conjecture,[],[f11])).
% 2.48/0.99  
% 2.48/0.99  fof(f20,plain,(
% 2.48/0.99    ? [X0,X1] : (? [X2] : ((~r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) & r1_tarski(X1,X2)) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.48/0.99    inference(ennf_transformation,[],[f12])).
% 2.48/0.99  
% 2.48/0.99  fof(f21,plain,(
% 2.48/0.99    ? [X0,X1] : (? [X2] : (~r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.48/0.99    inference(flattening,[],[f20])).
% 2.48/0.99  
% 2.48/0.99  fof(f24,plain,(
% 2.48/0.99    ( ! [X0,X1] : (? [X2] : (~r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) => (~r1_tarski(k8_setfam_1(X0,sK2),k8_setfam_1(X0,X1)) & r1_tarski(X1,sK2) & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(X0))))) )),
% 2.48/0.99    introduced(choice_axiom,[])).
% 2.48/0.99  
% 2.48/0.99  fof(f23,plain,(
% 2.48/0.99    ? [X0,X1] : (? [X2] : (~r1_tarski(k8_setfam_1(X0,X2),k8_setfam_1(X0,X1)) & r1_tarski(X1,X2) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(X0)))) & m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) => (? [X2] : (~r1_tarski(k8_setfam_1(sK0,X2),k8_setfam_1(sK0,sK1)) & r1_tarski(sK1,X2) & m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(sK0)))) & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))))),
% 2.48/0.99    introduced(choice_axiom,[])).
% 2.48/0.99  
% 2.48/0.99  fof(f25,plain,(
% 2.48/0.99    (~r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) & r1_tarski(sK1,sK2) & m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0)))) & m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 2.48/0.99    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f21,f24,f23])).
% 2.48/0.99  
% 2.48/0.99  fof(f38,plain,(
% 2.48/0.99    m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 2.48/0.99    inference(cnf_transformation,[],[f25])).
% 2.48/0.99  
% 2.48/0.99  fof(f8,axiom,(
% 2.48/0.99    ! [X0,X1] : (m1_subset_1(X0,k1_zfmisc_1(X1)) <=> r1_tarski(X0,X1))),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f22,plain,(
% 2.48/0.99    ! [X0,X1] : ((m1_subset_1(X0,k1_zfmisc_1(X1)) | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))))),
% 2.48/0.99    inference(nnf_transformation,[],[f8])).
% 2.48/0.99  
% 2.48/0.99  fof(f34,plain,(
% 2.48/0.99    ( ! [X0,X1] : (r1_tarski(X0,X1) | ~m1_subset_1(X0,k1_zfmisc_1(X1))) )),
% 2.48/0.99    inference(cnf_transformation,[],[f22])).
% 2.48/0.99  
% 2.48/0.99  fof(f10,axiom,(
% 2.48/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => (r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) | k1_xboole_0 = X0))),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f18,plain,(
% 2.48/0.99    ! [X0,X1] : ((r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) | k1_xboole_0 = X0) | ~r1_tarski(X0,X1))),
% 2.48/0.99    inference(ennf_transformation,[],[f10])).
% 2.48/0.99  
% 2.48/0.99  fof(f19,plain,(
% 2.48/0.99    ! [X0,X1] : (r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) | k1_xboole_0 = X0 | ~r1_tarski(X0,X1))),
% 2.48/0.99    inference(flattening,[],[f18])).
% 2.48/0.99  
% 2.48/0.99  fof(f36,plain,(
% 2.48/0.99    ( ! [X0,X1] : (r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) | k1_xboole_0 = X0 | ~r1_tarski(X0,X1)) )),
% 2.48/0.99    inference(cnf_transformation,[],[f19])).
% 2.48/0.99  
% 2.48/0.99  fof(f2,axiom,(
% 2.48/0.99    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f14,plain,(
% 2.48/0.99    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 2.48/0.99    inference(ennf_transformation,[],[f2])).
% 2.48/0.99  
% 2.48/0.99  fof(f27,plain,(
% 2.48/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 2.48/0.99    inference(cnf_transformation,[],[f14])).
% 2.48/0.99  
% 2.48/0.99  fof(f6,axiom,(
% 2.48/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0)))),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f16,plain,(
% 2.48/0.99    ! [X0,X1] : (m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.48/0.99    inference(ennf_transformation,[],[f6])).
% 2.48/0.99  
% 2.48/0.99  fof(f32,plain,(
% 2.48/0.99    ( ! [X0,X1] : (m1_subset_1(k8_setfam_1(X0,X1),k1_zfmisc_1(X0)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.48/0.99    inference(cnf_transformation,[],[f16])).
% 2.48/0.99  
% 2.48/0.99  fof(f5,axiom,(
% 2.48/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => ((k1_xboole_0 = X1 => k8_setfam_1(X0,X1) = X0) & (k1_xboole_0 != X1 => k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1))))),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f15,plain,(
% 2.48/0.99    ! [X0,X1] : (((k8_setfam_1(X0,X1) = X0 | k1_xboole_0 != X1) & (k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1) | k1_xboole_0 = X1)) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.48/0.99    inference(ennf_transformation,[],[f5])).
% 2.48/0.99  
% 2.48/0.99  fof(f30,plain,(
% 2.48/0.99    ( ! [X0,X1] : (k8_setfam_1(X0,X1) = k6_setfam_1(X0,X1) | k1_xboole_0 = X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.48/0.99    inference(cnf_transformation,[],[f15])).
% 2.48/0.99  
% 2.48/0.99  fof(f7,axiom,(
% 2.48/0.99    ! [X0,X1] : (m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) => k6_setfam_1(X0,X1) = k1_setfam_1(X1))),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f17,plain,(
% 2.48/0.99    ! [X0,X1] : (k6_setfam_1(X0,X1) = k1_setfam_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))))),
% 2.48/0.99    inference(ennf_transformation,[],[f7])).
% 2.48/0.99  
% 2.48/0.99  fof(f33,plain,(
% 2.48/0.99    ( ! [X0,X1] : (k6_setfam_1(X0,X1) = k1_setfam_1(X1) | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.48/0.99    inference(cnf_transformation,[],[f17])).
% 2.48/0.99  
% 2.48/0.99  fof(f37,plain,(
% 2.48/0.99    m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0)))),
% 2.48/0.99    inference(cnf_transformation,[],[f25])).
% 2.48/0.99  
% 2.48/0.99  fof(f40,plain,(
% 2.48/0.99    ~r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1))),
% 2.48/0.99    inference(cnf_transformation,[],[f25])).
% 2.48/0.99  
% 2.48/0.99  fof(f39,plain,(
% 2.48/0.99    r1_tarski(sK1,sK2)),
% 2.48/0.99    inference(cnf_transformation,[],[f25])).
% 2.48/0.99  
% 2.48/0.99  fof(f31,plain,(
% 2.48/0.99    ( ! [X0,X1] : (k8_setfam_1(X0,X1) = X0 | k1_xboole_0 != X1 | ~m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.48/0.99    inference(cnf_transformation,[],[f15])).
% 2.48/0.99  
% 2.48/0.99  fof(f41,plain,(
% 2.48/0.99    ( ! [X0] : (k8_setfam_1(X0,k1_xboole_0) = X0 | ~m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0)))) )),
% 2.48/0.99    inference(equality_resolution,[],[f31])).
% 2.48/0.99  
% 2.48/0.99  fof(f4,axiom,(
% 2.48/0.99    ! [X0] : m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f29,plain,(
% 2.48/0.99    ( ! [X0] : (m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0))) )),
% 2.48/0.99    inference(cnf_transformation,[],[f4])).
% 2.48/0.99  
% 2.48/0.99  fof(f1,axiom,(
% 2.48/0.99    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f26,plain,(
% 2.48/0.99    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 2.48/0.99    inference(cnf_transformation,[],[f1])).
% 2.48/0.99  
% 2.48/0.99  fof(f3,axiom,(
% 2.48/0.99    ! [X0] : r1_tarski(k1_xboole_0,X0)),
% 2.48/0.99    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 2.48/0.99  
% 2.48/0.99  fof(f28,plain,(
% 2.48/0.99    ( ! [X0] : (r1_tarski(k1_xboole_0,X0)) )),
% 2.48/0.99    inference(cnf_transformation,[],[f3])).
% 2.48/0.99  
% 2.48/0.99  cnf(c_13,negated_conjecture,
% 2.48/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
% 2.48/0.99      inference(cnf_transformation,[],[f38]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_512,plain,
% 2.48/0.99      ( m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) = iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_9,plain,
% 2.48/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(X1)) | r1_tarski(X0,X1) ),
% 2.48/0.99      inference(cnf_transformation,[],[f34]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_516,plain,
% 2.48/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X1)) != iProver_top
% 2.48/0.99      | r1_tarski(X0,X1) = iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_915,plain,
% 2.48/0.99      ( r1_tarski(sK2,k1_zfmisc_1(sK0)) = iProver_top ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_512,c_516]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_10,plain,
% 2.48/0.99      ( ~ r1_tarski(X0,X1)
% 2.48/0.99      | r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0))
% 2.48/0.99      | k1_xboole_0 = X0 ),
% 2.48/0.99      inference(cnf_transformation,[],[f36]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_515,plain,
% 2.48/0.99      ( k1_xboole_0 = X0
% 2.48/0.99      | r1_tarski(X0,X1) != iProver_top
% 2.48/0.99      | r1_tarski(k1_setfam_1(X1),k1_setfam_1(X0)) = iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1,plain,
% 2.48/0.99      ( ~ r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1 ),
% 2.48/0.99      inference(cnf_transformation,[],[f27]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_524,plain,
% 2.48/0.99      ( k2_xboole_0(X0,X1) = X1 | r1_tarski(X0,X1) != iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_1]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_874,plain,
% 2.48/0.99      ( k2_xboole_0(k1_setfam_1(X0),k1_setfam_1(X1)) = k1_setfam_1(X1)
% 2.48/0.99      | k1_xboole_0 = X1
% 2.48/0.99      | r1_tarski(X1,X0) != iProver_top ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_515,c_524]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2406,plain,
% 2.48/0.99      ( k2_xboole_0(k1_setfam_1(k1_zfmisc_1(sK0)),k1_setfam_1(sK2)) = k1_setfam_1(sK2)
% 2.48/0.99      | sK2 = k1_xboole_0 ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_915,c_874]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_6,plain,
% 2.48/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 2.48/0.99      | m1_subset_1(k8_setfam_1(X1,X0),k1_zfmisc_1(X1)) ),
% 2.48/0.99      inference(cnf_transformation,[],[f32]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_623,plain,
% 2.48/0.99      ( m1_subset_1(k8_setfam_1(sK0,sK2),k1_zfmisc_1(sK0))
% 2.48/0.99      | ~ m1_subset_1(sK2,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
% 2.48/0.99      inference(instantiation,[status(thm)],[c_6]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_5,plain,
% 2.48/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 2.48/0.99      | k6_setfam_1(X1,X0) = k8_setfam_1(X1,X0)
% 2.48/0.99      | k1_xboole_0 = X0 ),
% 2.48/0.99      inference(cnf_transformation,[],[f30]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_520,plain,
% 2.48/0.99      ( k6_setfam_1(X0,X1) = k8_setfam_1(X0,X1)
% 2.48/0.99      | k1_xboole_0 = X1
% 2.48/0.99      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1554,plain,
% 2.48/0.99      ( k6_setfam_1(sK0,sK2) = k8_setfam_1(sK0,sK2) | sK2 = k1_xboole_0 ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_512,c_520]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_7,plain,
% 2.48/0.99      ( ~ m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1)))
% 2.48/0.99      | k6_setfam_1(X1,X0) = k1_setfam_1(X0) ),
% 2.48/0.99      inference(cnf_transformation,[],[f33]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_518,plain,
% 2.48/0.99      ( k6_setfam_1(X0,X1) = k1_setfam_1(X1)
% 2.48/0.99      | m1_subset_1(X1,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1030,plain,
% 2.48/0.99      ( k6_setfam_1(sK0,sK2) = k1_setfam_1(sK2) ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_512,c_518]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1563,plain,
% 2.48/0.99      ( k8_setfam_1(sK0,sK2) = k1_setfam_1(sK2) | sK2 = k1_xboole_0 ),
% 2.48/0.99      inference(light_normalisation,[status(thm)],[c_1554,c_1030]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_14,negated_conjecture,
% 2.48/0.99      ( m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) ),
% 2.48/0.99      inference(cnf_transformation,[],[f37]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_511,plain,
% 2.48/0.99      ( m1_subset_1(sK1,k1_zfmisc_1(k1_zfmisc_1(sK0))) = iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1555,plain,
% 2.48/0.99      ( k6_setfam_1(sK0,sK1) = k8_setfam_1(sK0,sK1) | sK1 = k1_xboole_0 ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_511,c_520]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1031,plain,
% 2.48/0.99      ( k6_setfam_1(sK0,sK1) = k1_setfam_1(sK1) ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_511,c_518]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1558,plain,
% 2.48/0.99      ( k8_setfam_1(sK0,sK1) = k1_setfam_1(sK1) | sK1 = k1_xboole_0 ),
% 2.48/0.99      inference(light_normalisation,[status(thm)],[c_1555,c_1031]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_11,negated_conjecture,
% 2.48/0.99      ( ~ r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) ),
% 2.48/0.99      inference(cnf_transformation,[],[f40]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_514,plain,
% 2.48/0.99      ( r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,sK1)) != iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1875,plain,
% 2.48/0.99      ( sK1 = k1_xboole_0
% 2.48/0.99      | r1_tarski(k8_setfam_1(sK0,sK2),k1_setfam_1(sK1)) != iProver_top ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_1558,c_514]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1999,plain,
% 2.48/0.99      ( sK1 = k1_xboole_0
% 2.48/0.99      | sK2 = k1_xboole_0
% 2.48/0.99      | r1_tarski(k1_setfam_1(sK2),k1_setfam_1(sK1)) != iProver_top ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_1563,c_1875]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2124,plain,
% 2.48/0.99      ( sK1 = k1_xboole_0
% 2.48/0.99      | sK2 = k1_xboole_0
% 2.48/0.99      | r1_tarski(sK1,sK2) != iProver_top ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_515,c_1999]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_12,negated_conjecture,
% 2.48/0.99      ( r1_tarski(sK1,sK2) ),
% 2.48/0.99      inference(cnf_transformation,[],[f39]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2125,plain,
% 2.48/0.99      ( ~ r1_tarski(sK1,sK2) | sK1 = k1_xboole_0 | sK2 = k1_xboole_0 ),
% 2.48/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_2124]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2127,plain,
% 2.48/0.99      ( sK2 = k1_xboole_0 | sK1 = k1_xboole_0 ),
% 2.48/0.99      inference(global_propositional_subsumption,
% 2.48/0.99                [status(thm)],
% 2.48/0.99                [c_2124,c_12,c_2125]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2128,plain,
% 2.48/0.99      ( sK1 = k1_xboole_0 | sK2 = k1_xboole_0 ),
% 2.48/0.99      inference(renaming,[status(thm)],[c_2127]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2139,plain,
% 2.48/0.99      ( sK2 = k1_xboole_0
% 2.48/0.99      | r1_tarski(k8_setfam_1(sK0,sK2),k8_setfam_1(sK0,k1_xboole_0)) != iProver_top ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_2128,c_514]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_4,plain,
% 2.48/0.99      ( ~ m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0)))
% 2.48/0.99      | k8_setfam_1(X0,k1_xboole_0) = X0 ),
% 2.48/0.99      inference(cnf_transformation,[],[f41]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_521,plain,
% 2.48/0.99      ( k8_setfam_1(X0,k1_xboole_0) = X0
% 2.48/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_3,plain,
% 2.48/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) ),
% 2.48/0.99      inference(cnf_transformation,[],[f29]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_522,plain,
% 2.48/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(X0)) = iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_553,plain,
% 2.48/0.99      ( k8_setfam_1(X0,k1_xboole_0) = X0 ),
% 2.48/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_521,c_522]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2148,plain,
% 2.48/0.99      ( sK2 = k1_xboole_0
% 2.48/0.99      | r1_tarski(k8_setfam_1(sK0,sK2),sK0) != iProver_top ),
% 2.48/0.99      inference(demodulation,[status(thm)],[c_2139,c_553]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2172,plain,
% 2.48/0.99      ( ~ r1_tarski(k8_setfam_1(sK0,sK2),sK0) | sK2 = k1_xboole_0 ),
% 2.48/0.99      inference(predicate_to_equality_rev,[status(thm)],[c_2148]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1524,plain,
% 2.48/0.99      ( ~ m1_subset_1(k8_setfam_1(sK0,sK2),k1_zfmisc_1(X0))
% 2.48/0.99      | r1_tarski(k8_setfam_1(sK0,sK2),X0) ),
% 2.48/0.99      inference(instantiation,[status(thm)],[c_9]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2448,plain,
% 2.48/0.99      ( ~ m1_subset_1(k8_setfam_1(sK0,sK2),k1_zfmisc_1(sK0))
% 2.48/0.99      | r1_tarski(k8_setfam_1(sK0,sK2),sK0) ),
% 2.48/0.99      inference(instantiation,[status(thm)],[c_1524]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2837,plain,
% 2.48/0.99      ( sK2 = k1_xboole_0 ),
% 2.48/0.99      inference(global_propositional_subsumption,
% 2.48/0.99                [status(thm)],
% 2.48/0.99                [c_2406,c_13,c_623,c_2172,c_2448]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_513,plain,
% 2.48/0.99      ( r1_tarski(sK1,sK2) = iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_875,plain,
% 2.48/0.99      ( k2_xboole_0(sK1,sK2) = sK2 ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_513,c_524]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2847,plain,
% 2.48/0.99      ( k2_xboole_0(sK1,k1_xboole_0) = k1_xboole_0 ),
% 2.48/0.99      inference(demodulation,[status(thm)],[c_2837,c_875]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_0,plain,
% 2.48/0.99      ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
% 2.48/0.99      inference(cnf_transformation,[],[f26]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2,plain,
% 2.48/0.99      ( r1_tarski(k1_xboole_0,X0) ),
% 2.48/0.99      inference(cnf_transformation,[],[f28]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_523,plain,
% 2.48/0.99      ( r1_tarski(k1_xboole_0,X0) = iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_873,plain,
% 2.48/0.99      ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_523,c_524]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1583,plain,
% 2.48/0.99      ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_0,c_873]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2949,plain,
% 2.48/0.99      ( sK1 = k1_xboole_0 ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_2847,c_1583]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2848,plain,
% 2.48/0.99      ( r1_tarski(k8_setfam_1(sK0,k1_xboole_0),k8_setfam_1(sK0,sK1)) != iProver_top ),
% 2.48/0.99      inference(demodulation,[status(thm)],[c_2837,c_514]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2855,plain,
% 2.48/0.99      ( r1_tarski(sK0,k8_setfam_1(sK0,sK1)) != iProver_top ),
% 2.48/0.99      inference(demodulation,[status(thm)],[c_2848,c_553]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_3071,plain,
% 2.48/0.99      ( r1_tarski(sK0,k8_setfam_1(sK0,k1_xboole_0)) != iProver_top ),
% 2.48/0.99      inference(demodulation,[status(thm)],[c_2949,c_2855]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_3080,plain,
% 2.48/0.99      ( r1_tarski(sK0,sK0) != iProver_top ),
% 2.48/0.99      inference(demodulation,[status(thm)],[c_3071,c_553]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_519,plain,
% 2.48/0.99      ( m1_subset_1(X0,k1_zfmisc_1(k1_zfmisc_1(X1))) != iProver_top
% 2.48/0.99      | m1_subset_1(k8_setfam_1(X1,X0),k1_zfmisc_1(X1)) = iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_6]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_1388,plain,
% 2.48/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top
% 2.48/0.99      | m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) != iProver_top ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_553,c_519]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_613,plain,
% 2.48/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) ),
% 2.48/0.99      inference(instantiation,[status(thm)],[c_3]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_616,plain,
% 2.48/0.99      ( m1_subset_1(k1_xboole_0,k1_zfmisc_1(k1_zfmisc_1(X0))) = iProver_top ),
% 2.48/0.99      inference(predicate_to_equality,[status(thm)],[c_613]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2594,plain,
% 2.48/0.99      ( m1_subset_1(X0,k1_zfmisc_1(X0)) = iProver_top ),
% 2.48/0.99      inference(global_propositional_subsumption,[status(thm)],[c_1388,c_616]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_2601,plain,
% 2.48/0.99      ( r1_tarski(X0,X0) = iProver_top ),
% 2.48/0.99      inference(superposition,[status(thm)],[c_2594,c_516]) ).
% 2.48/0.99  
% 2.48/0.99  cnf(c_3313,plain,
% 2.48/0.99      ( $false ),
% 2.48/0.99      inference(forward_subsumption_resolution,[status(thm)],[c_3080,c_2601]) ).
% 2.48/0.99  
% 2.48/0.99  
% 2.48/0.99  % SZS output end CNFRefutation for theBenchmark.p
% 2.48/0.99  
% 2.48/0.99  ------                               Statistics
% 2.48/0.99  
% 2.48/0.99  ------ General
% 2.48/0.99  
% 2.48/0.99  abstr_ref_over_cycles:                  0
% 2.48/0.99  abstr_ref_under_cycles:                 0
% 2.48/0.99  gc_basic_clause_elim:                   0
% 2.48/0.99  forced_gc_time:                         0
% 2.48/0.99  parsing_time:                           0.008
% 2.48/0.99  unif_index_cands_time:                  0.
% 2.48/0.99  unif_index_add_time:                    0.
% 2.48/0.99  orderings_time:                         0.
% 2.48/0.99  out_proof_time:                         0.009
% 2.48/0.99  total_time:                             0.121
% 2.48/0.99  num_of_symbols:                         42
% 2.48/0.99  num_of_terms:                           3210
% 2.48/0.99  
% 2.48/0.99  ------ Preprocessing
% 2.48/0.99  
% 2.48/0.99  num_of_splits:                          0
% 2.48/0.99  num_of_split_atoms:                     0
% 2.48/0.99  num_of_reused_defs:                     0
% 2.48/0.99  num_eq_ax_congr_red:                    10
% 2.48/0.99  num_of_sem_filtered_clauses:            1
% 2.48/0.99  num_of_subtypes:                        0
% 2.48/0.99  monotx_restored_types:                  0
% 2.48/0.99  sat_num_of_epr_types:                   0
% 2.48/0.99  sat_num_of_non_cyclic_types:            0
% 2.48/0.99  sat_guarded_non_collapsed_types:        0
% 2.48/0.99  num_pure_diseq_elim:                    0
% 2.48/0.99  simp_replaced_by:                       0
% 2.48/0.99  res_preprocessed:                       58
% 2.48/0.99  prep_upred:                             0
% 2.48/0.99  prep_unflattend:                        0
% 2.48/0.99  smt_new_axioms:                         0
% 2.48/0.99  pred_elim_cands:                        2
% 2.48/0.99  pred_elim:                              0
% 2.48/0.99  pred_elim_cl:                           0
% 2.48/0.99  pred_elim_cycles:                       1
% 2.48/0.99  merged_defs:                            6
% 2.48/0.99  merged_defs_ncl:                        0
% 2.48/0.99  bin_hyper_res:                          6
% 2.48/0.99  prep_cycles:                            3
% 2.48/0.99  pred_elim_time:                         0.
% 2.48/0.99  splitting_time:                         0.
% 2.48/0.99  sem_filter_time:                        0.
% 2.48/0.99  monotx_time:                            0.
% 2.48/0.99  subtype_inf_time:                       0.
% 2.48/0.99  
% 2.48/0.99  ------ Problem properties
% 2.48/0.99  
% 2.48/0.99  clauses:                                15
% 2.48/0.99  conjectures:                            4
% 2.48/0.99  epr:                                    2
% 2.48/0.99  horn:                                   13
% 2.48/0.99  ground:                                 4
% 2.48/0.99  unary:                                  7
% 2.48/0.99  binary:                                 6
% 2.48/0.99  lits:                                   25
% 2.48/0.99  lits_eq:                                7
% 2.48/0.99  fd_pure:                                0
% 2.48/0.99  fd_pseudo:                              0
% 2.48/0.99  fd_cond:                                2
% 2.48/0.99  fd_pseudo_cond:                         0
% 2.48/0.99  ac_symbols:                             0
% 2.48/0.99  
% 2.48/0.99  ------ Propositional Solver
% 2.48/0.99  
% 2.48/0.99  prop_solver_calls:                      25
% 2.48/0.99  prop_fast_solver_calls:                 310
% 2.48/0.99  smt_solver_calls:                       0
% 2.48/0.99  smt_fast_solver_calls:                  0
% 2.48/0.99  prop_num_of_clauses:                    1335
% 2.48/0.99  prop_preprocess_simplified:             3823
% 2.48/0.99  prop_fo_subsumed:                       6
% 2.48/0.99  prop_solver_time:                       0.
% 2.48/0.99  smt_solver_time:                        0.
% 2.48/0.99  smt_fast_solver_time:                   0.
% 2.48/0.99  prop_fast_solver_time:                  0.
% 2.48/0.99  prop_unsat_core_time:                   0.
% 2.48/0.99  
% 2.48/0.99  ------ QBF
% 2.48/0.99  
% 2.48/0.99  qbf_q_res:                              0
% 2.48/0.99  qbf_num_tautologies:                    0
% 2.48/0.99  qbf_prep_cycles:                        0
% 2.48/0.99  
% 2.48/0.99  ------ BMC1
% 2.48/0.99  
% 2.48/0.99  bmc1_current_bound:                     -1
% 2.48/0.99  bmc1_last_solved_bound:                 -1
% 2.48/0.99  bmc1_unsat_core_size:                   -1
% 2.48/0.99  bmc1_unsat_core_parents_size:           -1
% 2.48/0.99  bmc1_merge_next_fun:                    0
% 2.48/0.99  bmc1_unsat_core_clauses_time:           0.
% 2.48/0.99  
% 2.48/0.99  ------ Instantiation
% 2.48/0.99  
% 2.48/0.99  inst_num_of_clauses:                    464
% 2.48/0.99  inst_num_in_passive:                    209
% 2.48/0.99  inst_num_in_active:                     198
% 2.48/0.99  inst_num_in_unprocessed:                57
% 2.48/0.99  inst_num_of_loops:                      250
% 2.48/0.99  inst_num_of_learning_restarts:          0
% 2.48/0.99  inst_num_moves_active_passive:          49
% 2.48/0.99  inst_lit_activity:                      0
% 2.48/0.99  inst_lit_activity_moves:                0
% 2.48/0.99  inst_num_tautologies:                   0
% 2.48/0.99  inst_num_prop_implied:                  0
% 2.48/0.99  inst_num_existing_simplified:           0
% 2.48/0.99  inst_num_eq_res_simplified:             0
% 2.48/0.99  inst_num_child_elim:                    0
% 2.48/0.99  inst_num_of_dismatching_blockings:      93
% 2.48/0.99  inst_num_of_non_proper_insts:           427
% 2.48/0.99  inst_num_of_duplicates:                 0
% 2.48/0.99  inst_inst_num_from_inst_to_res:         0
% 2.48/0.99  inst_dismatching_checking_time:         0.
% 2.48/0.99  
% 2.48/0.99  ------ Resolution
% 2.48/0.99  
% 2.48/0.99  res_num_of_clauses:                     0
% 2.48/0.99  res_num_in_passive:                     0
% 2.48/0.99  res_num_in_active:                      0
% 2.48/0.99  res_num_of_loops:                       61
% 2.48/0.99  res_forward_subset_subsumed:            85
% 2.48/0.99  res_backward_subset_subsumed:           0
% 2.48/0.99  res_forward_subsumed:                   0
% 2.48/0.99  res_backward_subsumed:                  0
% 2.48/0.99  res_forward_subsumption_resolution:     0
% 2.48/0.99  res_backward_subsumption_resolution:    0
% 2.48/0.99  res_clause_to_clause_subsumption:       138
% 2.48/0.99  res_orphan_elimination:                 0
% 2.48/0.99  res_tautology_del:                      38
% 2.48/0.99  res_num_eq_res_simplified:              0
% 2.48/0.99  res_num_sel_changes:                    0
% 2.48/0.99  res_moves_from_active_to_pass:          0
% 2.48/0.99  
% 2.48/0.99  ------ Superposition
% 2.48/0.99  
% 2.48/0.99  sup_time_total:                         0.
% 2.48/0.99  sup_time_generating:                    0.
% 2.48/0.99  sup_time_sim_full:                      0.
% 2.48/0.99  sup_time_sim_immed:                     0.
% 2.48/0.99  
% 2.48/0.99  sup_num_of_clauses:                     37
% 2.48/0.99  sup_num_in_active:                      24
% 2.48/0.99  sup_num_in_passive:                     13
% 2.48/0.99  sup_num_of_loops:                       48
% 2.48/0.99  sup_fw_superposition:                   48
% 2.48/0.99  sup_bw_superposition:                   38
% 2.48/0.99  sup_immediate_simplified:               29
% 2.48/0.99  sup_given_eliminated:                   1
% 2.48/0.99  comparisons_done:                       0
% 2.48/0.99  comparisons_avoided:                    13
% 2.48/0.99  
% 2.48/0.99  ------ Simplifications
% 2.48/0.99  
% 2.48/0.99  
% 2.48/0.99  sim_fw_subset_subsumed:                 5
% 2.48/0.99  sim_bw_subset_subsumed:                 8
% 2.48/0.99  sim_fw_subsumed:                        9
% 2.48/0.99  sim_bw_subsumed:                        1
% 2.48/0.99  sim_fw_subsumption_res:                 2
% 2.48/0.99  sim_bw_subsumption_res:                 0
% 2.48/0.99  sim_tautology_del:                      1
% 2.48/0.99  sim_eq_tautology_del:                   7
% 2.48/0.99  sim_eq_res_simp:                        0
% 2.48/0.99  sim_fw_demodulated:                     10
% 2.48/0.99  sim_bw_demodulated:                     19
% 2.48/0.99  sim_light_normalised:                   5
% 2.48/0.99  sim_joinable_taut:                      0
% 2.48/0.99  sim_joinable_simp:                      0
% 2.48/0.99  sim_ac_normalised:                      0
% 2.48/0.99  sim_smt_subsumption:                    0
% 2.48/0.99  
%------------------------------------------------------------------------------
