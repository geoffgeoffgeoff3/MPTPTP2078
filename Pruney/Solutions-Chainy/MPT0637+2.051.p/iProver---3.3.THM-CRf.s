%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n019.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:50:03 EST 2020

% Result     : Theorem 15.67s
% Output     : CNFRefutation 15.67s
% Verified   : 
% Statistics : Number of formulae       :  109 ( 398 expanded)
%              Number of clauses        :   58 ( 188 expanded)
%              Number of leaves         :   16 (  84 expanded)
%              Depth                    :   16
%              Number of atoms          :  203 ( 612 expanded)
%              Number of equality atoms :  120 ( 356 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    5 (   2 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,axiom,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f55,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f11])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f57,plain,(
    ! [X0,X1] :
      ( k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f21,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1)
        & r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( ( r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1)
        & r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f68,plain,(
    ! [X0,X1] :
      ( r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f17,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => ( r1_tarski(X0,X1)
           => ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
              & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f17])).

fof(f33,plain,(
    ! [X0] :
      ( ! [X1] :
          ( ( r1_tarski(k2_relat_1(X0),k2_relat_1(X1))
            & r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) )
          | ~ r1_tarski(X0,X1)
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f32])).

fof(f61,plain,(
    ! [X0,X1] :
      ( r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
      | ~ r1_tarski(X0,X1)
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f22,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k5_relat_1(k6_relat_1(X0),X1) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f37,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f36])).

fof(f69,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f37])).

fof(f19,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f64,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f19])).

fof(f20,axiom,(
    ! [X0] : k6_relat_1(X0) = k4_relat_1(k6_relat_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f66,plain,(
    ! [X0] : k6_relat_1(X0) = k4_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f20])).

fof(f14,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k3_xboole_0(X1,k2_zfmisc_1(k1_relat_1(X1),X0)) = k8_relat_1(X0,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X1,k2_zfmisc_1(k1_relat_1(X1),X0)) = k8_relat_1(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f14])).

fof(f58,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(X1,k2_zfmisc_1(k1_relat_1(X1),X0)) = k8_relat_1(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f29])).

fof(f5,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f49,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f5])).

fof(f78,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X1,k4_xboole_0(X1,k2_zfmisc_1(k1_relat_1(X1),X0))) = k8_relat_1(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f58,f49])).

fof(f4,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f48,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f4])).

fof(f75,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(definition_unfolding,[],[f48,f49])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X0)
     => v1_relat_1(k3_xboole_0(X0,X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k3_xboole_0(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f56,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k3_xboole_0(X0,X1))
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f77,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1)))
      | ~ v1_relat_1(X0) ) ),
    inference(definition_unfolding,[],[f56,f49])).

fof(f18,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f18])).

fof(f63,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f16,axiom,(
    ! [X0,X1,X2] :
      ( v1_relat_1(X2)
     => k8_relat_1(X0,k8_relat_1(X1,X2)) = k8_relat_1(k3_xboole_0(X0,X1),X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0,X1,X2] :
      ( k8_relat_1(X0,k8_relat_1(X1,X2)) = k8_relat_1(k3_xboole_0(X0,X1),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(ennf_transformation,[],[f16])).

fof(f60,plain,(
    ! [X2,X0,X1] :
      ( k8_relat_1(X0,k8_relat_1(X1,X2)) = k8_relat_1(k3_xboole_0(X0,X1),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(cnf_transformation,[],[f31])).

fof(f79,plain,(
    ! [X2,X0,X1] :
      ( k8_relat_1(X0,k8_relat_1(X1,X2)) = k8_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2)
      | ~ v1_relat_1(X2) ) ),
    inference(definition_unfolding,[],[f60,f49])).

fof(f15,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k8_relat_1(k2_relat_1(X0),X0) = X0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( k8_relat_1(k2_relat_1(X0),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f59,plain,(
    ! [X0] :
      ( k8_relat_1(k2_relat_1(X0),X0) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f65,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f19])).

fof(f23,conjecture,(
    ! [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f24,negated_conjecture,(
    ~ ! [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) ),
    inference(negated_conjecture,[],[f23])).

fof(f38,plain,(
    ? [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) != k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) ),
    inference(ennf_transformation,[],[f24])).

fof(f41,plain,
    ( ? [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) != k5_relat_1(k6_relat_1(X1),k6_relat_1(X0))
   => k6_relat_1(k3_xboole_0(sK0,sK1)) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) ),
    introduced(choice_axiom,[])).

fof(f42,plain,(
    k6_relat_1(k3_xboole_0(sK0,sK1)) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f38,f41])).

fof(f70,plain,(
    k6_relat_1(k3_xboole_0(sK0,sK1)) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) ),
    inference(cnf_transformation,[],[f42])).

fof(f80,plain,(
    k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) ),
    inference(definition_unfolding,[],[f70,f49])).

cnf(c_7,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f55])).

cnf(c_630,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_9,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,X0) ),
    inference(cnf_transformation,[],[f57])).

cnf(c_628,plain,
    ( k5_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_9])).

cnf(c_1578,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k8_relat_1(X1,k6_relat_1(X0)) ),
    inference(superposition,[status(thm)],[c_630,c_628])).

cnf(c_19,plain,
    ( r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f68])).

cnf(c_621,plain,
    ( r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1) = iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_19])).

cnf(c_1583,plain,
    ( r1_tarski(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X0)) = iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1578,c_621])).

cnf(c_59,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2170,plain,
    ( r1_tarski(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X0)) = iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_1583,c_59])).

cnf(c_14,plain,
    ( ~ r1_tarski(X0,X1)
    | r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
    | ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1) ),
    inference(cnf_transformation,[],[f61])).

cnf(c_623,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) = iProver_top
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_21,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k5_relat_1(k6_relat_1(X1),X0) = X0 ),
    inference(cnf_transformation,[],[f69])).

cnf(c_619,plain,
    ( k5_relat_1(k6_relat_1(X0),X1) = X1
    | r1_tarski(k1_relat_1(X1),X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_21])).

cnf(c_4957,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X1) = X1
    | r1_tarski(X1,X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_623,c_619])).

cnf(c_49334,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(k6_relat_1(X0))),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1))
    | v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) != iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2170,c_4957])).

cnf(c_17,plain,
    ( k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f64])).

cnf(c_50657,plain,
    ( k5_relat_1(k6_relat_1(X0),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1))
    | v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) != iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_49334,c_17])).

cnf(c_18,plain,
    ( k4_relat_1(k6_relat_1(X0)) = k6_relat_1(X0) ),
    inference(cnf_transformation,[],[f66])).

cnf(c_10,plain,
    ( ~ v1_relat_1(X0)
    | k4_xboole_0(X0,k4_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),X1))) = k8_relat_1(X1,X0) ),
    inference(cnf_transformation,[],[f78])).

cnf(c_627,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),X1))) = k8_relat_1(X1,X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_10])).

cnf(c_2679,plain,
    ( k4_xboole_0(k6_relat_1(X0),k4_xboole_0(k6_relat_1(X0),k2_zfmisc_1(k1_relat_1(k6_relat_1(X0)),X1))) = k8_relat_1(X1,k6_relat_1(X0)) ),
    inference(superposition,[status(thm)],[c_630,c_627])).

cnf(c_2686,plain,
    ( k4_xboole_0(k6_relat_1(X0),k4_xboole_0(k6_relat_1(X0),k2_zfmisc_1(X0,X1))) = k8_relat_1(X1,k6_relat_1(X0)) ),
    inference(light_normalisation,[status(thm)],[c_2679,c_17])).

cnf(c_5,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f75])).

cnf(c_8,plain,
    ( ~ v1_relat_1(X0)
    | v1_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(cnf_transformation,[],[f77])).

cnf(c_629,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_8])).

cnf(c_1738,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(k4_xboole_0(X0,X1)) = iProver_top ),
    inference(superposition,[status(thm)],[c_5,c_629])).

cnf(c_2693,plain,
    ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_2686,c_1738])).

cnf(c_3112,plain,
    ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_2693,c_630])).

cnf(c_15,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f63])).

cnf(c_622,plain,
    ( k5_relat_1(k4_relat_1(X0),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,X0))
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_2180,plain,
    ( k5_relat_1(k4_relat_1(k6_relat_1(X0)),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,k6_relat_1(X0)))
    | v1_relat_1(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_630,c_622])).

cnf(c_2190,plain,
    ( k4_relat_1(k5_relat_1(X0,k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X1),k4_relat_1(X0))
    | v1_relat_1(X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2180,c_18])).

cnf(c_3118,plain,
    ( k4_relat_1(k5_relat_1(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X2))) = k5_relat_1(k6_relat_1(X2),k4_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
    inference(superposition,[status(thm)],[c_3112,c_2190])).

cnf(c_3120,plain,
    ( k5_relat_1(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X2)) = k8_relat_1(X2,k8_relat_1(X0,k6_relat_1(X1))) ),
    inference(superposition,[status(thm)],[c_3112,c_628])).

cnf(c_3131,plain,
    ( k5_relat_1(k6_relat_1(X0),k4_relat_1(k8_relat_1(X1,k6_relat_1(X2)))) = k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2)))) ),
    inference(light_normalisation,[status(thm)],[c_3118,c_3120])).

cnf(c_2600,plain,
    ( k4_relat_1(k5_relat_1(k6_relat_1(X0),k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X1),k4_relat_1(k6_relat_1(X0))) ),
    inference(superposition,[status(thm)],[c_630,c_2190])).

cnf(c_2607,plain,
    ( k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) ),
    inference(light_normalisation,[status(thm)],[c_2600,c_18,c_1578])).

cnf(c_2608,plain,
    ( k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X1,k6_relat_1(X0)) ),
    inference(demodulation,[status(thm)],[c_2607,c_1578])).

cnf(c_3133,plain,
    ( k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2)))) = k5_relat_1(k6_relat_1(X0),k8_relat_1(X2,k6_relat_1(X1))) ),
    inference(demodulation,[status(thm)],[c_3131,c_2608])).

cnf(c_12,plain,
    ( ~ v1_relat_1(X0)
    | k8_relat_1(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X0) = k8_relat_1(X1,k8_relat_1(X2,X0)) ),
    inference(cnf_transformation,[],[f79])).

cnf(c_625,plain,
    ( k8_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2) = k8_relat_1(X0,k8_relat_1(X1,X2))
    | v1_relat_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_4123,plain,
    ( k8_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k6_relat_1(X2)) = k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2))) ),
    inference(superposition,[status(thm)],[c_630,c_625])).

cnf(c_11,plain,
    ( ~ v1_relat_1(X0)
    | k8_relat_1(k2_relat_1(X0),X0) = X0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_626,plain,
    ( k8_relat_1(k2_relat_1(X0),X0) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_11])).

cnf(c_1359,plain,
    ( k8_relat_1(k2_relat_1(k6_relat_1(X0)),k6_relat_1(X0)) = k6_relat_1(X0) ),
    inference(superposition,[status(thm)],[c_630,c_626])).

cnf(c_16,plain,
    ( k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f65])).

cnf(c_1360,plain,
    ( k8_relat_1(X0,k6_relat_1(X0)) = k6_relat_1(X0) ),
    inference(light_normalisation,[status(thm)],[c_1359,c_16])).

cnf(c_5602,plain,
    ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))))) = k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(superposition,[status(thm)],[c_4123,c_1360])).

cnf(c_5607,plain,
    ( k8_relat_1(X0,k6_relat_1(k4_xboole_0(X1,k4_xboole_0(X1,X2)))) = k4_relat_1(k8_relat_1(X1,k8_relat_1(X2,k6_relat_1(X0)))) ),
    inference(superposition,[status(thm)],[c_4123,c_2608])).

cnf(c_5630,plain,
    ( k8_relat_1(X0,k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X1))))) = k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(demodulation,[status(thm)],[c_5602,c_5607])).

cnf(c_5632,plain,
    ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X0))) = k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
    inference(demodulation,[status(thm)],[c_5630,c_1360,c_2608])).

cnf(c_50658,plain,
    ( k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k8_relat_1(X0,k6_relat_1(X1))
    | v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) != iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_50657,c_18,c_3133,c_5632])).

cnf(c_53786,plain,
    ( k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k8_relat_1(X0,k6_relat_1(X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_50658,c_59,c_3112])).

cnf(c_22,negated_conjecture,
    ( k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) ),
    inference(cnf_transformation,[],[f80])).

cnf(c_1581,plain,
    ( k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k8_relat_1(sK0,k6_relat_1(sK1)) ),
    inference(demodulation,[status(thm)],[c_1578,c_22])).

cnf(c_53790,plain,
    ( k8_relat_1(sK0,k6_relat_1(sK1)) != k8_relat_1(sK0,k6_relat_1(sK1)) ),
    inference(demodulation,[status(thm)],[c_53786,c_1581])).

cnf(c_53807,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_53790])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n019.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:56:07 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running in FOF mode
% 15.67/2.52  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 15.67/2.52  
% 15.67/2.52  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 15.67/2.52  
% 15.67/2.52  ------  iProver source info
% 15.67/2.52  
% 15.67/2.52  git: date: 2020-06-30 10:37:57 +0100
% 15.67/2.52  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 15.67/2.52  git: non_committed_changes: false
% 15.67/2.52  git: last_make_outside_of_git: false
% 15.67/2.52  
% 15.67/2.52  ------ 
% 15.67/2.52  
% 15.67/2.52  ------ Input Options
% 15.67/2.52  
% 15.67/2.52  --out_options                           all
% 15.67/2.52  --tptp_safe_out                         true
% 15.67/2.52  --problem_path                          ""
% 15.67/2.52  --include_path                          ""
% 15.67/2.52  --clausifier                            res/vclausify_rel
% 15.67/2.52  --clausifier_options                    --mode clausify
% 15.67/2.52  --stdin                                 false
% 15.67/2.52  --stats_out                             all
% 15.67/2.52  
% 15.67/2.52  ------ General Options
% 15.67/2.52  
% 15.67/2.52  --fof                                   false
% 15.67/2.52  --time_out_real                         305.
% 15.67/2.52  --time_out_virtual                      -1.
% 15.67/2.52  --symbol_type_check                     false
% 15.67/2.52  --clausify_out                          false
% 15.67/2.52  --sig_cnt_out                           false
% 15.67/2.52  --trig_cnt_out                          false
% 15.67/2.52  --trig_cnt_out_tolerance                1.
% 15.67/2.52  --trig_cnt_out_sk_spl                   false
% 15.67/2.52  --abstr_cl_out                          false
% 15.67/2.52  
% 15.67/2.52  ------ Global Options
% 15.67/2.52  
% 15.67/2.52  --schedule                              default
% 15.67/2.52  --add_important_lit                     false
% 15.67/2.52  --prop_solver_per_cl                    1000
% 15.67/2.52  --min_unsat_core                        false
% 15.67/2.52  --soft_assumptions                      false
% 15.67/2.52  --soft_lemma_size                       3
% 15.67/2.52  --prop_impl_unit_size                   0
% 15.67/2.52  --prop_impl_unit                        []
% 15.67/2.52  --share_sel_clauses                     true
% 15.67/2.52  --reset_solvers                         false
% 15.67/2.52  --bc_imp_inh                            [conj_cone]
% 15.67/2.52  --conj_cone_tolerance                   3.
% 15.67/2.52  --extra_neg_conj                        none
% 15.67/2.52  --large_theory_mode                     true
% 15.67/2.52  --prolific_symb_bound                   200
% 15.67/2.52  --lt_threshold                          2000
% 15.67/2.52  --clause_weak_htbl                      true
% 15.67/2.52  --gc_record_bc_elim                     false
% 15.67/2.52  
% 15.67/2.52  ------ Preprocessing Options
% 15.67/2.52  
% 15.67/2.52  --preprocessing_flag                    true
% 15.67/2.52  --time_out_prep_mult                    0.1
% 15.67/2.52  --splitting_mode                        input
% 15.67/2.52  --splitting_grd                         true
% 15.67/2.52  --splitting_cvd                         false
% 15.67/2.52  --splitting_cvd_svl                     false
% 15.67/2.52  --splitting_nvd                         32
% 15.67/2.52  --sub_typing                            true
% 15.67/2.52  --prep_gs_sim                           true
% 15.67/2.52  --prep_unflatten                        true
% 15.67/2.52  --prep_res_sim                          true
% 15.67/2.52  --prep_upred                            true
% 15.67/2.52  --prep_sem_filter                       exhaustive
% 15.67/2.52  --prep_sem_filter_out                   false
% 15.67/2.52  --pred_elim                             true
% 15.67/2.52  --res_sim_input                         true
% 15.67/2.52  --eq_ax_congr_red                       true
% 15.67/2.52  --pure_diseq_elim                       true
% 15.67/2.52  --brand_transform                       false
% 15.67/2.52  --non_eq_to_eq                          false
% 15.67/2.52  --prep_def_merge                        true
% 15.67/2.52  --prep_def_merge_prop_impl              false
% 15.67/2.53  --prep_def_merge_mbd                    true
% 15.67/2.53  --prep_def_merge_tr_red                 false
% 15.67/2.53  --prep_def_merge_tr_cl                  false
% 15.67/2.53  --smt_preprocessing                     true
% 15.67/2.53  --smt_ac_axioms                         fast
% 15.67/2.53  --preprocessed_out                      false
% 15.67/2.53  --preprocessed_stats                    false
% 15.67/2.53  
% 15.67/2.53  ------ Abstraction refinement Options
% 15.67/2.53  
% 15.67/2.53  --abstr_ref                             []
% 15.67/2.53  --abstr_ref_prep                        false
% 15.67/2.53  --abstr_ref_until_sat                   false
% 15.67/2.53  --abstr_ref_sig_restrict                funpre
% 15.67/2.53  --abstr_ref_af_restrict_to_split_sk     false
% 15.67/2.53  --abstr_ref_under                       []
% 15.67/2.53  
% 15.67/2.53  ------ SAT Options
% 15.67/2.53  
% 15.67/2.53  --sat_mode                              false
% 15.67/2.53  --sat_fm_restart_options                ""
% 15.67/2.53  --sat_gr_def                            false
% 15.67/2.53  --sat_epr_types                         true
% 15.67/2.53  --sat_non_cyclic_types                  false
% 15.67/2.53  --sat_finite_models                     false
% 15.67/2.53  --sat_fm_lemmas                         false
% 15.67/2.53  --sat_fm_prep                           false
% 15.67/2.53  --sat_fm_uc_incr                        true
% 15.67/2.53  --sat_out_model                         small
% 15.67/2.53  --sat_out_clauses                       false
% 15.67/2.53  
% 15.67/2.53  ------ QBF Options
% 15.67/2.53  
% 15.67/2.53  --qbf_mode                              false
% 15.67/2.53  --qbf_elim_univ                         false
% 15.67/2.53  --qbf_dom_inst                          none
% 15.67/2.53  --qbf_dom_pre_inst                      false
% 15.67/2.53  --qbf_sk_in                             false
% 15.67/2.53  --qbf_pred_elim                         true
% 15.67/2.53  --qbf_split                             512
% 15.67/2.53  
% 15.67/2.53  ------ BMC1 Options
% 15.67/2.53  
% 15.67/2.53  --bmc1_incremental                      false
% 15.67/2.53  --bmc1_axioms                           reachable_all
% 15.67/2.53  --bmc1_min_bound                        0
% 15.67/2.53  --bmc1_max_bound                        -1
% 15.67/2.53  --bmc1_max_bound_default                -1
% 15.67/2.53  --bmc1_symbol_reachability              true
% 15.67/2.53  --bmc1_property_lemmas                  false
% 15.67/2.53  --bmc1_k_induction                      false
% 15.67/2.53  --bmc1_non_equiv_states                 false
% 15.67/2.53  --bmc1_deadlock                         false
% 15.67/2.53  --bmc1_ucm                              false
% 15.67/2.53  --bmc1_add_unsat_core                   none
% 15.67/2.53  --bmc1_unsat_core_children              false
% 15.67/2.53  --bmc1_unsat_core_extrapolate_axioms    false
% 15.67/2.53  --bmc1_out_stat                         full
% 15.67/2.53  --bmc1_ground_init                      false
% 15.67/2.53  --bmc1_pre_inst_next_state              false
% 15.67/2.53  --bmc1_pre_inst_state                   false
% 15.67/2.53  --bmc1_pre_inst_reach_state             false
% 15.67/2.53  --bmc1_out_unsat_core                   false
% 15.67/2.53  --bmc1_aig_witness_out                  false
% 15.67/2.53  --bmc1_verbose                          false
% 15.67/2.53  --bmc1_dump_clauses_tptp                false
% 15.67/2.53  --bmc1_dump_unsat_core_tptp             false
% 15.67/2.53  --bmc1_dump_file                        -
% 15.67/2.53  --bmc1_ucm_expand_uc_limit              128
% 15.67/2.53  --bmc1_ucm_n_expand_iterations          6
% 15.67/2.53  --bmc1_ucm_extend_mode                  1
% 15.67/2.53  --bmc1_ucm_init_mode                    2
% 15.67/2.53  --bmc1_ucm_cone_mode                    none
% 15.67/2.53  --bmc1_ucm_reduced_relation_type        0
% 15.67/2.53  --bmc1_ucm_relax_model                  4
% 15.67/2.53  --bmc1_ucm_full_tr_after_sat            true
% 15.67/2.53  --bmc1_ucm_expand_neg_assumptions       false
% 15.67/2.53  --bmc1_ucm_layered_model                none
% 15.67/2.53  --bmc1_ucm_max_lemma_size               10
% 15.67/2.53  
% 15.67/2.53  ------ AIG Options
% 15.67/2.53  
% 15.67/2.53  --aig_mode                              false
% 15.67/2.53  
% 15.67/2.53  ------ Instantiation Options
% 15.67/2.53  
% 15.67/2.53  --instantiation_flag                    true
% 15.67/2.53  --inst_sos_flag                         false
% 15.67/2.53  --inst_sos_phase                        true
% 15.67/2.53  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 15.67/2.53  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 15.67/2.53  --inst_lit_sel_side                     num_symb
% 15.67/2.53  --inst_solver_per_active                1400
% 15.67/2.53  --inst_solver_calls_frac                1.
% 15.67/2.53  --inst_passive_queue_type               priority_queues
% 15.67/2.53  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 15.67/2.53  --inst_passive_queues_freq              [25;2]
% 15.67/2.53  --inst_dismatching                      true
% 15.67/2.53  --inst_eager_unprocessed_to_passive     true
% 15.67/2.53  --inst_prop_sim_given                   true
% 15.67/2.53  --inst_prop_sim_new                     false
% 15.67/2.53  --inst_subs_new                         false
% 15.67/2.53  --inst_eq_res_simp                      false
% 15.67/2.53  --inst_subs_given                       false
% 15.67/2.53  --inst_orphan_elimination               true
% 15.67/2.53  --inst_learning_loop_flag               true
% 15.67/2.53  --inst_learning_start                   3000
% 15.67/2.53  --inst_learning_factor                  2
% 15.67/2.53  --inst_start_prop_sim_after_learn       3
% 15.67/2.53  --inst_sel_renew                        solver
% 15.67/2.53  --inst_lit_activity_flag                true
% 15.67/2.53  --inst_restr_to_given                   false
% 15.67/2.53  --inst_activity_threshold               500
% 15.67/2.53  --inst_out_proof                        true
% 15.67/2.53  
% 15.67/2.53  ------ Resolution Options
% 15.67/2.53  
% 15.67/2.53  --resolution_flag                       true
% 15.67/2.53  --res_lit_sel                           adaptive
% 15.67/2.53  --res_lit_sel_side                      none
% 15.67/2.53  --res_ordering                          kbo
% 15.67/2.53  --res_to_prop_solver                    active
% 15.67/2.53  --res_prop_simpl_new                    false
% 15.67/2.53  --res_prop_simpl_given                  true
% 15.67/2.53  --res_passive_queue_type                priority_queues
% 15.67/2.53  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 15.67/2.53  --res_passive_queues_freq               [15;5]
% 15.67/2.53  --res_forward_subs                      full
% 15.67/2.53  --res_backward_subs                     full
% 15.67/2.53  --res_forward_subs_resolution           true
% 15.67/2.53  --res_backward_subs_resolution          true
% 15.67/2.53  --res_orphan_elimination                true
% 15.67/2.53  --res_time_limit                        2.
% 15.67/2.53  --res_out_proof                         true
% 15.67/2.53  
% 15.67/2.53  ------ Superposition Options
% 15.67/2.53  
% 15.67/2.53  --superposition_flag                    true
% 15.67/2.53  --sup_passive_queue_type                priority_queues
% 15.67/2.53  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 15.67/2.53  --sup_passive_queues_freq               [8;1;4]
% 15.67/2.53  --demod_completeness_check              fast
% 15.67/2.53  --demod_use_ground                      true
% 15.67/2.53  --sup_to_prop_solver                    passive
% 15.67/2.53  --sup_prop_simpl_new                    true
% 15.67/2.53  --sup_prop_simpl_given                  true
% 15.67/2.53  --sup_fun_splitting                     false
% 15.67/2.53  --sup_smt_interval                      50000
% 15.67/2.53  
% 15.67/2.53  ------ Superposition Simplification Setup
% 15.67/2.53  
% 15.67/2.53  --sup_indices_passive                   []
% 15.67/2.53  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 15.67/2.53  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 15.67/2.53  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 15.67/2.53  --sup_full_triv                         [TrivRules;PropSubs]
% 15.67/2.53  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 15.67/2.53  --sup_full_bw                           [BwDemod]
% 15.67/2.53  --sup_immed_triv                        [TrivRules]
% 15.67/2.53  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 15.67/2.53  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 15.67/2.53  --sup_immed_bw_main                     []
% 15.67/2.53  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 15.67/2.53  --sup_input_triv                        [Unflattening;TrivRules]
% 15.67/2.53  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 15.67/2.53  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 15.67/2.53  
% 15.67/2.53  ------ Combination Options
% 15.67/2.53  
% 15.67/2.53  --comb_res_mult                         3
% 15.67/2.53  --comb_sup_mult                         2
% 15.67/2.53  --comb_inst_mult                        10
% 15.67/2.53  
% 15.67/2.53  ------ Debug Options
% 15.67/2.53  
% 15.67/2.53  --dbg_backtrace                         false
% 15.67/2.53  --dbg_dump_prop_clauses                 false
% 15.67/2.53  --dbg_dump_prop_clauses_file            -
% 15.67/2.53  --dbg_out_stat                          false
% 15.67/2.53  ------ Parsing...
% 15.67/2.53  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 15.67/2.53  
% 15.67/2.53  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e  sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 15.67/2.53  
% 15.67/2.53  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 15.67/2.53  
% 15.67/2.53  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 15.67/2.53  ------ Proving...
% 15.67/2.53  ------ Problem Properties 
% 15.67/2.53  
% 15.67/2.53  
% 15.67/2.53  clauses                                 22
% 15.67/2.53  conjectures                             1
% 15.67/2.53  EPR                                     3
% 15.67/2.53  Horn                                    22
% 15.67/2.53  unary                                   9
% 15.67/2.53  binary                                  7
% 15.67/2.53  lits                                    43
% 15.67/2.53  lits eq                                 13
% 15.67/2.53  fd_pure                                 0
% 15.67/2.53  fd_pseudo                               0
% 15.67/2.53  fd_cond                                 0
% 15.67/2.53  fd_pseudo_cond                          1
% 15.67/2.53  AC symbols                              0
% 15.67/2.53  
% 15.67/2.53  ------ Schedule dynamic 5 is on 
% 15.67/2.53  
% 15.67/2.53  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 15.67/2.53  
% 15.67/2.53  
% 15.67/2.53  ------ 
% 15.67/2.53  Current options:
% 15.67/2.53  ------ 
% 15.67/2.53  
% 15.67/2.53  ------ Input Options
% 15.67/2.53  
% 15.67/2.53  --out_options                           all
% 15.67/2.53  --tptp_safe_out                         true
% 15.67/2.53  --problem_path                          ""
% 15.67/2.53  --include_path                          ""
% 15.67/2.53  --clausifier                            res/vclausify_rel
% 15.67/2.53  --clausifier_options                    --mode clausify
% 15.67/2.53  --stdin                                 false
% 15.67/2.53  --stats_out                             all
% 15.67/2.53  
% 15.67/2.53  ------ General Options
% 15.67/2.53  
% 15.67/2.53  --fof                                   false
% 15.67/2.53  --time_out_real                         305.
% 15.67/2.53  --time_out_virtual                      -1.
% 15.67/2.53  --symbol_type_check                     false
% 15.67/2.53  --clausify_out                          false
% 15.67/2.53  --sig_cnt_out                           false
% 15.67/2.53  --trig_cnt_out                          false
% 15.67/2.53  --trig_cnt_out_tolerance                1.
% 15.67/2.53  --trig_cnt_out_sk_spl                   false
% 15.67/2.53  --abstr_cl_out                          false
% 15.67/2.53  
% 15.67/2.53  ------ Global Options
% 15.67/2.53  
% 15.67/2.53  --schedule                              default
% 15.67/2.53  --add_important_lit                     false
% 15.67/2.53  --prop_solver_per_cl                    1000
% 15.67/2.53  --min_unsat_core                        false
% 15.67/2.53  --soft_assumptions                      false
% 15.67/2.53  --soft_lemma_size                       3
% 15.67/2.53  --prop_impl_unit_size                   0
% 15.67/2.53  --prop_impl_unit                        []
% 15.67/2.53  --share_sel_clauses                     true
% 15.67/2.53  --reset_solvers                         false
% 15.67/2.53  --bc_imp_inh                            [conj_cone]
% 15.67/2.53  --conj_cone_tolerance                   3.
% 15.67/2.53  --extra_neg_conj                        none
% 15.67/2.53  --large_theory_mode                     true
% 15.67/2.53  --prolific_symb_bound                   200
% 15.67/2.53  --lt_threshold                          2000
% 15.67/2.53  --clause_weak_htbl                      true
% 15.67/2.53  --gc_record_bc_elim                     false
% 15.67/2.53  
% 15.67/2.53  ------ Preprocessing Options
% 15.67/2.53  
% 15.67/2.53  --preprocessing_flag                    true
% 15.67/2.53  --time_out_prep_mult                    0.1
% 15.67/2.53  --splitting_mode                        input
% 15.67/2.53  --splitting_grd                         true
% 15.67/2.53  --splitting_cvd                         false
% 15.67/2.53  --splitting_cvd_svl                     false
% 15.67/2.53  --splitting_nvd                         32
% 15.67/2.53  --sub_typing                            true
% 15.67/2.53  --prep_gs_sim                           true
% 15.67/2.53  --prep_unflatten                        true
% 15.67/2.53  --prep_res_sim                          true
% 15.67/2.53  --prep_upred                            true
% 15.67/2.53  --prep_sem_filter                       exhaustive
% 15.67/2.53  --prep_sem_filter_out                   false
% 15.67/2.53  --pred_elim                             true
% 15.67/2.53  --res_sim_input                         true
% 15.67/2.53  --eq_ax_congr_red                       true
% 15.67/2.53  --pure_diseq_elim                       true
% 15.67/2.53  --brand_transform                       false
% 15.67/2.53  --non_eq_to_eq                          false
% 15.67/2.53  --prep_def_merge                        true
% 15.67/2.53  --prep_def_merge_prop_impl              false
% 15.67/2.53  --prep_def_merge_mbd                    true
% 15.67/2.53  --prep_def_merge_tr_red                 false
% 15.67/2.53  --prep_def_merge_tr_cl                  false
% 15.67/2.53  --smt_preprocessing                     true
% 15.67/2.53  --smt_ac_axioms                         fast
% 15.67/2.53  --preprocessed_out                      false
% 15.67/2.53  --preprocessed_stats                    false
% 15.67/2.53  
% 15.67/2.53  ------ Abstraction refinement Options
% 15.67/2.53  
% 15.67/2.53  --abstr_ref                             []
% 15.67/2.53  --abstr_ref_prep                        false
% 15.67/2.53  --abstr_ref_until_sat                   false
% 15.67/2.53  --abstr_ref_sig_restrict                funpre
% 15.67/2.53  --abstr_ref_af_restrict_to_split_sk     false
% 15.67/2.53  --abstr_ref_under                       []
% 15.67/2.53  
% 15.67/2.53  ------ SAT Options
% 15.67/2.53  
% 15.67/2.53  --sat_mode                              false
% 15.67/2.53  --sat_fm_restart_options                ""
% 15.67/2.53  --sat_gr_def                            false
% 15.67/2.53  --sat_epr_types                         true
% 15.67/2.53  --sat_non_cyclic_types                  false
% 15.67/2.53  --sat_finite_models                     false
% 15.67/2.53  --sat_fm_lemmas                         false
% 15.67/2.53  --sat_fm_prep                           false
% 15.67/2.53  --sat_fm_uc_incr                        true
% 15.67/2.53  --sat_out_model                         small
% 15.67/2.53  --sat_out_clauses                       false
% 15.67/2.53  
% 15.67/2.53  ------ QBF Options
% 15.67/2.53  
% 15.67/2.53  --qbf_mode                              false
% 15.67/2.53  --qbf_elim_univ                         false
% 15.67/2.53  --qbf_dom_inst                          none
% 15.67/2.53  --qbf_dom_pre_inst                      false
% 15.67/2.53  --qbf_sk_in                             false
% 15.67/2.53  --qbf_pred_elim                         true
% 15.67/2.53  --qbf_split                             512
% 15.67/2.53  
% 15.67/2.53  ------ BMC1 Options
% 15.67/2.53  
% 15.67/2.53  --bmc1_incremental                      false
% 15.67/2.53  --bmc1_axioms                           reachable_all
% 15.67/2.53  --bmc1_min_bound                        0
% 15.67/2.53  --bmc1_max_bound                        -1
% 15.67/2.53  --bmc1_max_bound_default                -1
% 15.67/2.53  --bmc1_symbol_reachability              true
% 15.67/2.53  --bmc1_property_lemmas                  false
% 15.67/2.53  --bmc1_k_induction                      false
% 15.67/2.53  --bmc1_non_equiv_states                 false
% 15.67/2.53  --bmc1_deadlock                         false
% 15.67/2.53  --bmc1_ucm                              false
% 15.67/2.53  --bmc1_add_unsat_core                   none
% 15.67/2.53  --bmc1_unsat_core_children              false
% 15.67/2.53  --bmc1_unsat_core_extrapolate_axioms    false
% 15.67/2.53  --bmc1_out_stat                         full
% 15.67/2.53  --bmc1_ground_init                      false
% 15.67/2.53  --bmc1_pre_inst_next_state              false
% 15.67/2.53  --bmc1_pre_inst_state                   false
% 15.67/2.53  --bmc1_pre_inst_reach_state             false
% 15.67/2.53  --bmc1_out_unsat_core                   false
% 15.67/2.53  --bmc1_aig_witness_out                  false
% 15.67/2.53  --bmc1_verbose                          false
% 15.67/2.53  --bmc1_dump_clauses_tptp                false
% 15.67/2.53  --bmc1_dump_unsat_core_tptp             false
% 15.67/2.53  --bmc1_dump_file                        -
% 15.67/2.53  --bmc1_ucm_expand_uc_limit              128
% 15.67/2.53  --bmc1_ucm_n_expand_iterations          6
% 15.67/2.53  --bmc1_ucm_extend_mode                  1
% 15.67/2.53  --bmc1_ucm_init_mode                    2
% 15.67/2.53  --bmc1_ucm_cone_mode                    none
% 15.67/2.53  --bmc1_ucm_reduced_relation_type        0
% 15.67/2.53  --bmc1_ucm_relax_model                  4
% 15.67/2.53  --bmc1_ucm_full_tr_after_sat            true
% 15.67/2.53  --bmc1_ucm_expand_neg_assumptions       false
% 15.67/2.53  --bmc1_ucm_layered_model                none
% 15.67/2.53  --bmc1_ucm_max_lemma_size               10
% 15.67/2.53  
% 15.67/2.53  ------ AIG Options
% 15.67/2.53  
% 15.67/2.53  --aig_mode                              false
% 15.67/2.53  
% 15.67/2.53  ------ Instantiation Options
% 15.67/2.53  
% 15.67/2.53  --instantiation_flag                    true
% 15.67/2.53  --inst_sos_flag                         false
% 15.67/2.53  --inst_sos_phase                        true
% 15.67/2.53  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 15.67/2.53  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 15.67/2.53  --inst_lit_sel_side                     none
% 15.67/2.53  --inst_solver_per_active                1400
% 15.67/2.53  --inst_solver_calls_frac                1.
% 15.67/2.53  --inst_passive_queue_type               priority_queues
% 15.67/2.53  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 15.67/2.53  --inst_passive_queues_freq              [25;2]
% 15.67/2.53  --inst_dismatching                      true
% 15.67/2.53  --inst_eager_unprocessed_to_passive     true
% 15.67/2.53  --inst_prop_sim_given                   true
% 15.67/2.53  --inst_prop_sim_new                     false
% 15.67/2.53  --inst_subs_new                         false
% 15.67/2.53  --inst_eq_res_simp                      false
% 15.67/2.53  --inst_subs_given                       false
% 15.67/2.53  --inst_orphan_elimination               true
% 15.67/2.53  --inst_learning_loop_flag               true
% 15.67/2.53  --inst_learning_start                   3000
% 15.67/2.53  --inst_learning_factor                  2
% 15.67/2.53  --inst_start_prop_sim_after_learn       3
% 15.67/2.53  --inst_sel_renew                        solver
% 15.67/2.53  --inst_lit_activity_flag                true
% 15.67/2.53  --inst_restr_to_given                   false
% 15.67/2.53  --inst_activity_threshold               500
% 15.67/2.53  --inst_out_proof                        true
% 15.67/2.53  
% 15.67/2.53  ------ Resolution Options
% 15.67/2.53  
% 15.67/2.53  --resolution_flag                       false
% 15.67/2.53  --res_lit_sel                           adaptive
% 15.67/2.53  --res_lit_sel_side                      none
% 15.67/2.53  --res_ordering                          kbo
% 15.67/2.53  --res_to_prop_solver                    active
% 15.67/2.53  --res_prop_simpl_new                    false
% 15.67/2.53  --res_prop_simpl_given                  true
% 15.67/2.53  --res_passive_queue_type                priority_queues
% 15.67/2.53  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 15.67/2.53  --res_passive_queues_freq               [15;5]
% 15.67/2.53  --res_forward_subs                      full
% 15.67/2.53  --res_backward_subs                     full
% 15.67/2.53  --res_forward_subs_resolution           true
% 15.67/2.53  --res_backward_subs_resolution          true
% 15.67/2.53  --res_orphan_elimination                true
% 15.67/2.53  --res_time_limit                        2.
% 15.67/2.53  --res_out_proof                         true
% 15.67/2.53  
% 15.67/2.53  ------ Superposition Options
% 15.67/2.53  
% 15.67/2.53  --superposition_flag                    true
% 15.67/2.53  --sup_passive_queue_type                priority_queues
% 15.67/2.53  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 15.67/2.53  --sup_passive_queues_freq               [8;1;4]
% 15.67/2.53  --demod_completeness_check              fast
% 15.67/2.53  --demod_use_ground                      true
% 15.67/2.53  --sup_to_prop_solver                    passive
% 15.67/2.53  --sup_prop_simpl_new                    true
% 15.67/2.53  --sup_prop_simpl_given                  true
% 15.67/2.53  --sup_fun_splitting                     false
% 15.67/2.53  --sup_smt_interval                      50000
% 15.67/2.53  
% 15.67/2.53  ------ Superposition Simplification Setup
% 15.67/2.53  
% 15.67/2.53  --sup_indices_passive                   []
% 15.67/2.53  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 15.67/2.53  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 15.67/2.53  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 15.67/2.53  --sup_full_triv                         [TrivRules;PropSubs]
% 15.67/2.53  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 15.67/2.53  --sup_full_bw                           [BwDemod]
% 15.67/2.53  --sup_immed_triv                        [TrivRules]
% 15.67/2.53  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 15.67/2.53  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 15.67/2.53  --sup_immed_bw_main                     []
% 15.67/2.53  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 15.67/2.53  --sup_input_triv                        [Unflattening;TrivRules]
% 15.67/2.53  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 15.67/2.53  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 15.67/2.53  
% 15.67/2.53  ------ Combination Options
% 15.67/2.53  
% 15.67/2.53  --comb_res_mult                         3
% 15.67/2.53  --comb_sup_mult                         2
% 15.67/2.53  --comb_inst_mult                        10
% 15.67/2.53  
% 15.67/2.53  ------ Debug Options
% 15.67/2.53  
% 15.67/2.53  --dbg_backtrace                         false
% 15.67/2.53  --dbg_dump_prop_clauses                 false
% 15.67/2.53  --dbg_dump_prop_clauses_file            -
% 15.67/2.53  --dbg_out_stat                          false
% 15.67/2.53  
% 15.67/2.53  
% 15.67/2.53  
% 15.67/2.53  
% 15.67/2.53  ------ Proving...
% 15.67/2.53  
% 15.67/2.53  
% 15.67/2.53  % SZS status Theorem for theBenchmark.p
% 15.67/2.53  
% 15.67/2.53   Resolution empty clause
% 15.67/2.53  
% 15.67/2.53  % SZS output start CNFRefutation for theBenchmark.p
% 15.67/2.53  
% 15.67/2.53  fof(f11,axiom,(
% 15.67/2.53    ! [X0] : v1_relat_1(k6_relat_1(X0))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f55,plain,(
% 15.67/2.53    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 15.67/2.53    inference(cnf_transformation,[],[f11])).
% 15.67/2.53  
% 15.67/2.53  fof(f13,axiom,(
% 15.67/2.53    ! [X0,X1] : (v1_relat_1(X1) => k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0)))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f28,plain,(
% 15.67/2.53    ! [X0,X1] : (k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0)) | ~v1_relat_1(X1))),
% 15.67/2.53    inference(ennf_transformation,[],[f13])).
% 15.67/2.53  
% 15.67/2.53  fof(f57,plain,(
% 15.67/2.53    ( ! [X0,X1] : (k8_relat_1(X0,X1) = k5_relat_1(X1,k6_relat_1(X0)) | ~v1_relat_1(X1)) )),
% 15.67/2.53    inference(cnf_transformation,[],[f28])).
% 15.67/2.53  
% 15.67/2.53  fof(f21,axiom,(
% 15.67/2.53    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1) & r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1)))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f35,plain,(
% 15.67/2.53    ! [X0,X1] : ((r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1) & r1_tarski(k5_relat_1(X1,k6_relat_1(X0)),X1)) | ~v1_relat_1(X1))),
% 15.67/2.53    inference(ennf_transformation,[],[f21])).
% 15.67/2.53  
% 15.67/2.53  fof(f68,plain,(
% 15.67/2.53    ( ! [X0,X1] : (r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1) | ~v1_relat_1(X1)) )),
% 15.67/2.53    inference(cnf_transformation,[],[f35])).
% 15.67/2.53  
% 15.67/2.53  fof(f17,axiom,(
% 15.67/2.53    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => (r1_tarski(X0,X1) => (r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))))))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f32,plain,(
% 15.67/2.53    ! [X0] : (! [X1] : (((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 15.67/2.53    inference(ennf_transformation,[],[f17])).
% 15.67/2.53  
% 15.67/2.53  fof(f33,plain,(
% 15.67/2.53    ! [X0] : (! [X1] : ((r1_tarski(k2_relat_1(X0),k2_relat_1(X1)) & r1_tarski(k1_relat_1(X0),k1_relat_1(X1))) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 15.67/2.53    inference(flattening,[],[f32])).
% 15.67/2.53  
% 15.67/2.53  fof(f61,plain,(
% 15.67/2.53    ( ! [X0,X1] : (r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) | ~r1_tarski(X0,X1) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 15.67/2.53    inference(cnf_transformation,[],[f33])).
% 15.67/2.53  
% 15.67/2.53  fof(f22,axiom,(
% 15.67/2.53    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k5_relat_1(k6_relat_1(X0),X1) = X1))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f36,plain,(
% 15.67/2.53    ! [X0,X1] : ((k5_relat_1(k6_relat_1(X0),X1) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 15.67/2.53    inference(ennf_transformation,[],[f22])).
% 15.67/2.53  
% 15.67/2.53  fof(f37,plain,(
% 15.67/2.53    ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 15.67/2.53    inference(flattening,[],[f36])).
% 15.67/2.53  
% 15.67/2.53  fof(f69,plain,(
% 15.67/2.53    ( ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 15.67/2.53    inference(cnf_transformation,[],[f37])).
% 15.67/2.53  
% 15.67/2.53  fof(f19,axiom,(
% 15.67/2.53    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f64,plain,(
% 15.67/2.53    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 15.67/2.53    inference(cnf_transformation,[],[f19])).
% 15.67/2.53  
% 15.67/2.53  fof(f20,axiom,(
% 15.67/2.53    ! [X0] : k6_relat_1(X0) = k4_relat_1(k6_relat_1(X0))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f66,plain,(
% 15.67/2.53    ( ! [X0] : (k6_relat_1(X0) = k4_relat_1(k6_relat_1(X0))) )),
% 15.67/2.53    inference(cnf_transformation,[],[f20])).
% 15.67/2.53  
% 15.67/2.53  fof(f14,axiom,(
% 15.67/2.53    ! [X0,X1] : (v1_relat_1(X1) => k3_xboole_0(X1,k2_zfmisc_1(k1_relat_1(X1),X0)) = k8_relat_1(X0,X1))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f29,plain,(
% 15.67/2.53    ! [X0,X1] : (k3_xboole_0(X1,k2_zfmisc_1(k1_relat_1(X1),X0)) = k8_relat_1(X0,X1) | ~v1_relat_1(X1))),
% 15.67/2.53    inference(ennf_transformation,[],[f14])).
% 15.67/2.53  
% 15.67/2.53  fof(f58,plain,(
% 15.67/2.53    ( ! [X0,X1] : (k3_xboole_0(X1,k2_zfmisc_1(k1_relat_1(X1),X0)) = k8_relat_1(X0,X1) | ~v1_relat_1(X1)) )),
% 15.67/2.53    inference(cnf_transformation,[],[f29])).
% 15.67/2.53  
% 15.67/2.53  fof(f5,axiom,(
% 15.67/2.53    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f49,plain,(
% 15.67/2.53    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 15.67/2.53    inference(cnf_transformation,[],[f5])).
% 15.67/2.53  
% 15.67/2.53  fof(f78,plain,(
% 15.67/2.53    ( ! [X0,X1] : (k4_xboole_0(X1,k4_xboole_0(X1,k2_zfmisc_1(k1_relat_1(X1),X0))) = k8_relat_1(X0,X1) | ~v1_relat_1(X1)) )),
% 15.67/2.53    inference(definition_unfolding,[],[f58,f49])).
% 15.67/2.53  
% 15.67/2.53  fof(f4,axiom,(
% 15.67/2.53    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f48,plain,(
% 15.67/2.53    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 15.67/2.53    inference(cnf_transformation,[],[f4])).
% 15.67/2.53  
% 15.67/2.53  fof(f75,plain,(
% 15.67/2.53    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1)))) )),
% 15.67/2.53    inference(definition_unfolding,[],[f48,f49])).
% 15.67/2.53  
% 15.67/2.53  fof(f12,axiom,(
% 15.67/2.53    ! [X0,X1] : (v1_relat_1(X0) => v1_relat_1(k3_xboole_0(X0,X1)))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f27,plain,(
% 15.67/2.53    ! [X0,X1] : (v1_relat_1(k3_xboole_0(X0,X1)) | ~v1_relat_1(X0))),
% 15.67/2.53    inference(ennf_transformation,[],[f12])).
% 15.67/2.53  
% 15.67/2.53  fof(f56,plain,(
% 15.67/2.53    ( ! [X0,X1] : (v1_relat_1(k3_xboole_0(X0,X1)) | ~v1_relat_1(X0)) )),
% 15.67/2.53    inference(cnf_transformation,[],[f27])).
% 15.67/2.53  
% 15.67/2.53  fof(f77,plain,(
% 15.67/2.53    ( ! [X0,X1] : (v1_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) | ~v1_relat_1(X0)) )),
% 15.67/2.53    inference(definition_unfolding,[],[f56,f49])).
% 15.67/2.53  
% 15.67/2.53  fof(f18,axiom,(
% 15.67/2.53    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1))))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f34,plain,(
% 15.67/2.53    ! [X0] : (! [X1] : (k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 15.67/2.53    inference(ennf_transformation,[],[f18])).
% 15.67/2.53  
% 15.67/2.53  fof(f63,plain,(
% 15.67/2.53    ( ! [X0,X1] : (k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 15.67/2.53    inference(cnf_transformation,[],[f34])).
% 15.67/2.53  
% 15.67/2.53  fof(f16,axiom,(
% 15.67/2.53    ! [X0,X1,X2] : (v1_relat_1(X2) => k8_relat_1(X0,k8_relat_1(X1,X2)) = k8_relat_1(k3_xboole_0(X0,X1),X2))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f31,plain,(
% 15.67/2.53    ! [X0,X1,X2] : (k8_relat_1(X0,k8_relat_1(X1,X2)) = k8_relat_1(k3_xboole_0(X0,X1),X2) | ~v1_relat_1(X2))),
% 15.67/2.53    inference(ennf_transformation,[],[f16])).
% 15.67/2.53  
% 15.67/2.53  fof(f60,plain,(
% 15.67/2.53    ( ! [X2,X0,X1] : (k8_relat_1(X0,k8_relat_1(X1,X2)) = k8_relat_1(k3_xboole_0(X0,X1),X2) | ~v1_relat_1(X2)) )),
% 15.67/2.53    inference(cnf_transformation,[],[f31])).
% 15.67/2.53  
% 15.67/2.53  fof(f79,plain,(
% 15.67/2.53    ( ! [X2,X0,X1] : (k8_relat_1(X0,k8_relat_1(X1,X2)) = k8_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2) | ~v1_relat_1(X2)) )),
% 15.67/2.53    inference(definition_unfolding,[],[f60,f49])).
% 15.67/2.53  
% 15.67/2.53  fof(f15,axiom,(
% 15.67/2.53    ! [X0] : (v1_relat_1(X0) => k8_relat_1(k2_relat_1(X0),X0) = X0)),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f30,plain,(
% 15.67/2.53    ! [X0] : (k8_relat_1(k2_relat_1(X0),X0) = X0 | ~v1_relat_1(X0))),
% 15.67/2.53    inference(ennf_transformation,[],[f15])).
% 15.67/2.53  
% 15.67/2.53  fof(f59,plain,(
% 15.67/2.53    ( ! [X0] : (k8_relat_1(k2_relat_1(X0),X0) = X0 | ~v1_relat_1(X0)) )),
% 15.67/2.53    inference(cnf_transformation,[],[f30])).
% 15.67/2.53  
% 15.67/2.53  fof(f65,plain,(
% 15.67/2.53    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 15.67/2.53    inference(cnf_transformation,[],[f19])).
% 15.67/2.53  
% 15.67/2.53  fof(f23,conjecture,(
% 15.67/2.53    ! [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0))),
% 15.67/2.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 15.67/2.53  
% 15.67/2.53  fof(f24,negated_conjecture,(
% 15.67/2.53    ~! [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) = k5_relat_1(k6_relat_1(X1),k6_relat_1(X0))),
% 15.67/2.53    inference(negated_conjecture,[],[f23])).
% 15.67/2.53  
% 15.67/2.53  fof(f38,plain,(
% 15.67/2.53    ? [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) != k5_relat_1(k6_relat_1(X1),k6_relat_1(X0))),
% 15.67/2.53    inference(ennf_transformation,[],[f24])).
% 15.67/2.53  
% 15.67/2.53  fof(f41,plain,(
% 15.67/2.53    ? [X0,X1] : k6_relat_1(k3_xboole_0(X0,X1)) != k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) => k6_relat_1(k3_xboole_0(sK0,sK1)) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0))),
% 15.67/2.53    introduced(choice_axiom,[])).
% 15.67/2.53  
% 15.67/2.53  fof(f42,plain,(
% 15.67/2.53    k6_relat_1(k3_xboole_0(sK0,sK1)) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0))),
% 15.67/2.53    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f38,f41])).
% 15.67/2.53  
% 15.67/2.53  fof(f70,plain,(
% 15.67/2.53    k6_relat_1(k3_xboole_0(sK0,sK1)) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0))),
% 15.67/2.53    inference(cnf_transformation,[],[f42])).
% 15.67/2.53  
% 15.67/2.53  fof(f80,plain,(
% 15.67/2.53    k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0))),
% 15.67/2.53    inference(definition_unfolding,[],[f70,f49])).
% 15.67/2.53  
% 15.67/2.53  cnf(c_7,plain,
% 15.67/2.53      ( v1_relat_1(k6_relat_1(X0)) ),
% 15.67/2.53      inference(cnf_transformation,[],[f55]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_630,plain,
% 15.67/2.53      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_9,plain,
% 15.67/2.53      ( ~ v1_relat_1(X0) | k5_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,X0) ),
% 15.67/2.53      inference(cnf_transformation,[],[f57]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_628,plain,
% 15.67/2.53      ( k5_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,X0)
% 15.67/2.53      | v1_relat_1(X0) != iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_9]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_1578,plain,
% 15.67/2.53      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k8_relat_1(X1,k6_relat_1(X0)) ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_630,c_628]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_19,plain,
% 15.67/2.53      ( r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1) | ~ v1_relat_1(X1) ),
% 15.67/2.53      inference(cnf_transformation,[],[f68]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_621,plain,
% 15.67/2.53      ( r1_tarski(k5_relat_1(k6_relat_1(X0),X1),X1) = iProver_top
% 15.67/2.53      | v1_relat_1(X1) != iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_19]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_1583,plain,
% 15.67/2.53      ( r1_tarski(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X0)) = iProver_top
% 15.67/2.53      | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_1578,c_621]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_59,plain,
% 15.67/2.53      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_2170,plain,
% 15.67/2.53      ( r1_tarski(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X0)) = iProver_top ),
% 15.67/2.53      inference(global_propositional_subsumption,[status(thm)],[c_1583,c_59]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_14,plain,
% 15.67/2.53      ( ~ r1_tarski(X0,X1)
% 15.67/2.53      | r1_tarski(k1_relat_1(X0),k1_relat_1(X1))
% 15.67/2.53      | ~ v1_relat_1(X0)
% 15.67/2.53      | ~ v1_relat_1(X1) ),
% 15.67/2.53      inference(cnf_transformation,[],[f61]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_623,plain,
% 15.67/2.53      ( r1_tarski(X0,X1) != iProver_top
% 15.67/2.53      | r1_tarski(k1_relat_1(X0),k1_relat_1(X1)) = iProver_top
% 15.67/2.53      | v1_relat_1(X0) != iProver_top
% 15.67/2.53      | v1_relat_1(X1) != iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_21,plain,
% 15.67/2.53      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 15.67/2.53      | ~ v1_relat_1(X0)
% 15.67/2.53      | k5_relat_1(k6_relat_1(X1),X0) = X0 ),
% 15.67/2.53      inference(cnf_transformation,[],[f69]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_619,plain,
% 15.67/2.53      ( k5_relat_1(k6_relat_1(X0),X1) = X1
% 15.67/2.53      | r1_tarski(k1_relat_1(X1),X0) != iProver_top
% 15.67/2.53      | v1_relat_1(X1) != iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_21]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_4957,plain,
% 15.67/2.53      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X1) = X1
% 15.67/2.53      | r1_tarski(X1,X0) != iProver_top
% 15.67/2.53      | v1_relat_1(X1) != iProver_top
% 15.67/2.53      | v1_relat_1(X0) != iProver_top ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_623,c_619]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_49334,plain,
% 15.67/2.53      ( k5_relat_1(k6_relat_1(k1_relat_1(k6_relat_1(X0))),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1))
% 15.67/2.53      | v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) != iProver_top
% 15.67/2.53      | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_2170,c_4957]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_17,plain,
% 15.67/2.53      ( k1_relat_1(k6_relat_1(X0)) = X0 ),
% 15.67/2.53      inference(cnf_transformation,[],[f64]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_50657,plain,
% 15.67/2.53      ( k5_relat_1(k6_relat_1(X0),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1))
% 15.67/2.53      | v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) != iProver_top
% 15.67/2.53      | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
% 15.67/2.53      inference(light_normalisation,[status(thm)],[c_49334,c_17]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_18,plain,
% 15.67/2.53      ( k4_relat_1(k6_relat_1(X0)) = k6_relat_1(X0) ),
% 15.67/2.53      inference(cnf_transformation,[],[f66]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_10,plain,
% 15.67/2.53      ( ~ v1_relat_1(X0)
% 15.67/2.53      | k4_xboole_0(X0,k4_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),X1))) = k8_relat_1(X1,X0) ),
% 15.67/2.53      inference(cnf_transformation,[],[f78]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_627,plain,
% 15.67/2.53      ( k4_xboole_0(X0,k4_xboole_0(X0,k2_zfmisc_1(k1_relat_1(X0),X1))) = k8_relat_1(X1,X0)
% 15.67/2.53      | v1_relat_1(X0) != iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_10]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_2679,plain,
% 15.67/2.53      ( k4_xboole_0(k6_relat_1(X0),k4_xboole_0(k6_relat_1(X0),k2_zfmisc_1(k1_relat_1(k6_relat_1(X0)),X1))) = k8_relat_1(X1,k6_relat_1(X0)) ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_630,c_627]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_2686,plain,
% 15.67/2.53      ( k4_xboole_0(k6_relat_1(X0),k4_xboole_0(k6_relat_1(X0),k2_zfmisc_1(X0,X1))) = k8_relat_1(X1,k6_relat_1(X0)) ),
% 15.67/2.53      inference(light_normalisation,[status(thm)],[c_2679,c_17]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_5,plain,
% 15.67/2.53      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
% 15.67/2.53      inference(cnf_transformation,[],[f75]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_8,plain,
% 15.67/2.53      ( ~ v1_relat_1(X0) | v1_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
% 15.67/2.53      inference(cnf_transformation,[],[f77]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_629,plain,
% 15.67/2.53      ( v1_relat_1(X0) != iProver_top
% 15.67/2.53      | v1_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) = iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_8]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_1738,plain,
% 15.67/2.53      ( v1_relat_1(X0) != iProver_top
% 15.67/2.53      | v1_relat_1(k4_xboole_0(X0,X1)) = iProver_top ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_5,c_629]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_2693,plain,
% 15.67/2.53      ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top
% 15.67/2.53      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_2686,c_1738]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_3112,plain,
% 15.67/2.53      ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top ),
% 15.67/2.53      inference(forward_subsumption_resolution,[status(thm)],[c_2693,c_630]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_15,plain,
% 15.67/2.53      ( ~ v1_relat_1(X0)
% 15.67/2.53      | ~ v1_relat_1(X1)
% 15.67/2.53      | k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1)) ),
% 15.67/2.53      inference(cnf_transformation,[],[f63]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_622,plain,
% 15.67/2.53      ( k5_relat_1(k4_relat_1(X0),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,X0))
% 15.67/2.53      | v1_relat_1(X1) != iProver_top
% 15.67/2.53      | v1_relat_1(X0) != iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_2180,plain,
% 15.67/2.53      ( k5_relat_1(k4_relat_1(k6_relat_1(X0)),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,k6_relat_1(X0)))
% 15.67/2.53      | v1_relat_1(X1) != iProver_top ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_630,c_622]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_2190,plain,
% 15.67/2.53      ( k4_relat_1(k5_relat_1(X0,k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X1),k4_relat_1(X0))
% 15.67/2.53      | v1_relat_1(X0) != iProver_top ),
% 15.67/2.53      inference(light_normalisation,[status(thm)],[c_2180,c_18]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_3118,plain,
% 15.67/2.53      ( k4_relat_1(k5_relat_1(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X2))) = k5_relat_1(k6_relat_1(X2),k4_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_3112,c_2190]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_3120,plain,
% 15.67/2.53      ( k5_relat_1(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X2)) = k8_relat_1(X2,k8_relat_1(X0,k6_relat_1(X1))) ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_3112,c_628]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_3131,plain,
% 15.67/2.53      ( k5_relat_1(k6_relat_1(X0),k4_relat_1(k8_relat_1(X1,k6_relat_1(X2)))) = k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2)))) ),
% 15.67/2.53      inference(light_normalisation,[status(thm)],[c_3118,c_3120]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_2600,plain,
% 15.67/2.53      ( k4_relat_1(k5_relat_1(k6_relat_1(X0),k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X1),k4_relat_1(k6_relat_1(X0))) ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_630,c_2190]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_2607,plain,
% 15.67/2.53      ( k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) ),
% 15.67/2.53      inference(light_normalisation,[status(thm)],[c_2600,c_18,c_1578]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_2608,plain,
% 15.67/2.53      ( k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X1,k6_relat_1(X0)) ),
% 15.67/2.53      inference(demodulation,[status(thm)],[c_2607,c_1578]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_3133,plain,
% 15.67/2.53      ( k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2)))) = k5_relat_1(k6_relat_1(X0),k8_relat_1(X2,k6_relat_1(X1))) ),
% 15.67/2.53      inference(demodulation,[status(thm)],[c_3131,c_2608]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_12,plain,
% 15.67/2.53      ( ~ v1_relat_1(X0)
% 15.67/2.53      | k8_relat_1(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X0) = k8_relat_1(X1,k8_relat_1(X2,X0)) ),
% 15.67/2.53      inference(cnf_transformation,[],[f79]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_625,plain,
% 15.67/2.53      ( k8_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X2) = k8_relat_1(X0,k8_relat_1(X1,X2))
% 15.67/2.53      | v1_relat_1(X2) != iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_4123,plain,
% 15.67/2.53      ( k8_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1)),k6_relat_1(X2)) = k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2))) ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_630,c_625]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_11,plain,
% 15.67/2.53      ( ~ v1_relat_1(X0) | k8_relat_1(k2_relat_1(X0),X0) = X0 ),
% 15.67/2.53      inference(cnf_transformation,[],[f59]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_626,plain,
% 15.67/2.53      ( k8_relat_1(k2_relat_1(X0),X0) = X0 | v1_relat_1(X0) != iProver_top ),
% 15.67/2.53      inference(predicate_to_equality,[status(thm)],[c_11]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_1359,plain,
% 15.67/2.53      ( k8_relat_1(k2_relat_1(k6_relat_1(X0)),k6_relat_1(X0)) = k6_relat_1(X0) ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_630,c_626]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_16,plain,
% 15.67/2.53      ( k2_relat_1(k6_relat_1(X0)) = X0 ),
% 15.67/2.53      inference(cnf_transformation,[],[f65]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_1360,plain,
% 15.67/2.53      ( k8_relat_1(X0,k6_relat_1(X0)) = k6_relat_1(X0) ),
% 15.67/2.53      inference(light_normalisation,[status(thm)],[c_1359,c_16]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_5602,plain,
% 15.67/2.53      ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))))) = k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_4123,c_1360]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_5607,plain,
% 15.67/2.53      ( k8_relat_1(X0,k6_relat_1(k4_xboole_0(X1,k4_xboole_0(X1,X2)))) = k4_relat_1(k8_relat_1(X1,k8_relat_1(X2,k6_relat_1(X0)))) ),
% 15.67/2.53      inference(superposition,[status(thm)],[c_4123,c_2608]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_5630,plain,
% 15.67/2.53      ( k8_relat_1(X0,k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X1))))) = k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
% 15.67/2.53      inference(demodulation,[status(thm)],[c_5602,c_5607]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_5632,plain,
% 15.67/2.53      ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X0))) = k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) ),
% 15.67/2.53      inference(demodulation,[status(thm)],[c_5630,c_1360,c_2608]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_50658,plain,
% 15.67/2.53      ( k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k8_relat_1(X0,k6_relat_1(X1))
% 15.67/2.53      | v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) != iProver_top
% 15.67/2.53      | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
% 15.67/2.53      inference(demodulation,[status(thm)],[c_50657,c_18,c_3133,c_5632]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_53786,plain,
% 15.67/2.53      ( k6_relat_1(k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k8_relat_1(X0,k6_relat_1(X1)) ),
% 15.67/2.53      inference(global_propositional_subsumption,
% 15.67/2.53                [status(thm)],
% 15.67/2.53                [c_50658,c_59,c_3112]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_22,negated_conjecture,
% 15.67/2.53      ( k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) ),
% 15.67/2.53      inference(cnf_transformation,[],[f80]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_1581,plain,
% 15.67/2.53      ( k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) != k8_relat_1(sK0,k6_relat_1(sK1)) ),
% 15.67/2.53      inference(demodulation,[status(thm)],[c_1578,c_22]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_53790,plain,
% 15.67/2.53      ( k8_relat_1(sK0,k6_relat_1(sK1)) != k8_relat_1(sK0,k6_relat_1(sK1)) ),
% 15.67/2.53      inference(demodulation,[status(thm)],[c_53786,c_1581]) ).
% 15.67/2.53  
% 15.67/2.53  cnf(c_53807,plain,
% 15.67/2.53      ( $false ),
% 15.67/2.53      inference(equality_resolution_simp,[status(thm)],[c_53790]) ).
% 15.67/2.53  
% 15.67/2.53  
% 15.67/2.53  % SZS output end CNFRefutation for theBenchmark.p
% 15.67/2.53  
% 15.67/2.53  ------                               Statistics
% 15.67/2.53  
% 15.67/2.53  ------ General
% 15.67/2.53  
% 15.67/2.53  abstr_ref_over_cycles:                  0
% 15.67/2.53  abstr_ref_under_cycles:                 0
% 15.67/2.53  gc_basic_clause_elim:                   0
% 15.67/2.53  forced_gc_time:                         0
% 15.67/2.53  parsing_time:                           0.021
% 15.67/2.53  unif_index_cands_time:                  0.
% 15.67/2.53  unif_index_add_time:                    0.
% 15.67/2.53  orderings_time:                         0.
% 15.67/2.53  out_proof_time:                         0.012
% 15.67/2.53  total_time:                             1.9
% 15.67/2.53  num_of_symbols:                         45
% 15.67/2.53  num_of_terms:                           64140
% 15.67/2.53  
% 15.67/2.53  ------ Preprocessing
% 15.67/2.53  
% 15.67/2.53  num_of_splits:                          0
% 15.67/2.53  num_of_split_atoms:                     0
% 15.67/2.53  num_of_reused_defs:                     0
% 15.67/2.53  num_eq_ax_congr_red:                    21
% 15.67/2.53  num_of_sem_filtered_clauses:            1
% 15.67/2.53  num_of_subtypes:                        0
% 15.67/2.53  monotx_restored_types:                  0
% 15.67/2.53  sat_num_of_epr_types:                   0
% 15.67/2.53  sat_num_of_non_cyclic_types:            0
% 15.67/2.53  sat_guarded_non_collapsed_types:        0
% 15.67/2.53  num_pure_diseq_elim:                    0
% 15.67/2.53  simp_replaced_by:                       0
% 15.67/2.53  res_preprocessed:                       115
% 15.67/2.53  prep_upred:                             0
% 15.67/2.53  prep_unflattend:                        0
% 15.67/2.53  smt_new_axioms:                         0
% 15.67/2.53  pred_elim_cands:                        2
% 15.67/2.53  pred_elim:                              0
% 15.67/2.53  pred_elim_cl:                           0
% 15.67/2.53  pred_elim_cycles:                       2
% 15.67/2.53  merged_defs:                            0
% 15.67/2.53  merged_defs_ncl:                        0
% 15.67/2.53  bin_hyper_res:                          0
% 15.67/2.53  prep_cycles:                            4
% 15.67/2.53  pred_elim_time:                         0.
% 15.67/2.53  splitting_time:                         0.
% 15.67/2.53  sem_filter_time:                        0.
% 15.67/2.53  monotx_time:                            0.
% 15.67/2.53  subtype_inf_time:                       0.
% 15.67/2.53  
% 15.67/2.53  ------ Problem properties
% 15.67/2.53  
% 15.67/2.53  clauses:                                22
% 15.67/2.53  conjectures:                            1
% 15.67/2.53  epr:                                    3
% 15.67/2.53  horn:                                   22
% 15.67/2.53  ground:                                 1
% 15.67/2.53  unary:                                  9
% 15.67/2.53  binary:                                 7
% 15.67/2.53  lits:                                   43
% 15.67/2.53  lits_eq:                                13
% 15.67/2.53  fd_pure:                                0
% 15.67/2.53  fd_pseudo:                              0
% 15.67/2.53  fd_cond:                                0
% 15.67/2.53  fd_pseudo_cond:                         1
% 15.67/2.53  ac_symbols:                             0
% 15.67/2.53  
% 15.67/2.53  ------ Propositional Solver
% 15.67/2.53  
% 15.67/2.53  prop_solver_calls:                      30
% 15.67/2.53  prop_fast_solver_calls:                 896
% 15.67/2.53  smt_solver_calls:                       0
% 15.67/2.53  smt_fast_solver_calls:                  0
% 15.67/2.53  prop_num_of_clauses:                    20507
% 15.67/2.53  prop_preprocess_simplified:             28312
% 15.67/2.53  prop_fo_subsumed:                       12
% 15.67/2.53  prop_solver_time:                       0.
% 15.67/2.53  smt_solver_time:                        0.
% 15.67/2.53  smt_fast_solver_time:                   0.
% 15.67/2.53  prop_fast_solver_time:                  0.
% 15.67/2.53  prop_unsat_core_time:                   0.
% 15.67/2.53  
% 15.67/2.53  ------ QBF
% 15.67/2.53  
% 15.67/2.53  qbf_q_res:                              0
% 15.67/2.53  qbf_num_tautologies:                    0
% 15.67/2.53  qbf_prep_cycles:                        0
% 15.67/2.53  
% 15.67/2.53  ------ BMC1
% 15.67/2.53  
% 15.67/2.53  bmc1_current_bound:                     -1
% 15.67/2.53  bmc1_last_solved_bound:                 -1
% 15.67/2.53  bmc1_unsat_core_size:                   -1
% 15.67/2.53  bmc1_unsat_core_parents_size:           -1
% 15.67/2.53  bmc1_merge_next_fun:                    0
% 15.67/2.53  bmc1_unsat_core_clauses_time:           0.
% 15.67/2.53  
% 15.67/2.53  ------ Instantiation
% 15.67/2.53  
% 15.67/2.53  inst_num_of_clauses:                    4517
% 15.67/2.53  inst_num_in_passive:                    1114
% 15.67/2.53  inst_num_in_active:                     1496
% 15.67/2.53  inst_num_in_unprocessed:                1911
% 15.67/2.53  inst_num_of_loops:                      1550
% 15.67/2.53  inst_num_of_learning_restarts:          0
% 15.67/2.53  inst_num_moves_active_passive:          53
% 15.67/2.53  inst_lit_activity:                      0
% 15.67/2.53  inst_lit_activity_moves:                1
% 15.67/2.53  inst_num_tautologies:                   0
% 15.67/2.53  inst_num_prop_implied:                  0
% 15.67/2.53  inst_num_existing_simplified:           0
% 15.67/2.53  inst_num_eq_res_simplified:             0
% 15.67/2.53  inst_num_child_elim:                    0
% 15.67/2.53  inst_num_of_dismatching_blockings:      2958
% 15.67/2.53  inst_num_of_non_proper_insts:           4930
% 15.67/2.53  inst_num_of_duplicates:                 0
% 15.67/2.53  inst_inst_num_from_inst_to_res:         0
% 15.67/2.53  inst_dismatching_checking_time:         0.
% 15.67/2.53  
% 15.67/2.53  ------ Resolution
% 15.67/2.53  
% 15.67/2.53  res_num_of_clauses:                     0
% 15.67/2.53  res_num_in_passive:                     0
% 15.67/2.53  res_num_in_active:                      0
% 15.67/2.53  res_num_of_loops:                       119
% 15.67/2.53  res_forward_subset_subsumed:            339
% 15.67/2.53  res_backward_subset_subsumed:           8
% 15.67/2.53  res_forward_subsumed:                   0
% 15.67/2.53  res_backward_subsumed:                  0
% 15.67/2.53  res_forward_subsumption_resolution:     0
% 15.67/2.53  res_backward_subsumption_resolution:    0
% 15.67/2.53  res_clause_to_clause_subsumption:       15021
% 15.67/2.53  res_orphan_elimination:                 0
% 15.67/2.53  res_tautology_del:                      488
% 15.67/2.53  res_num_eq_res_simplified:              0
% 15.67/2.53  res_num_sel_changes:                    0
% 15.67/2.53  res_moves_from_active_to_pass:          0
% 15.67/2.53  
% 15.67/2.53  ------ Superposition
% 15.67/2.53  
% 15.67/2.53  sup_time_total:                         0.
% 15.67/2.53  sup_time_generating:                    0.
% 15.67/2.53  sup_time_sim_full:                      0.
% 15.67/2.53  sup_time_sim_immed:                     0.
% 15.67/2.53  
% 15.67/2.53  sup_num_of_clauses:                     2259
% 15.67/2.53  sup_num_in_active:                      292
% 15.67/2.53  sup_num_in_passive:                     1967
% 15.67/2.53  sup_num_of_loops:                       309
% 15.67/2.53  sup_fw_superposition:                   4305
% 15.67/2.53  sup_bw_superposition:                   3398
% 15.67/2.53  sup_immediate_simplified:               3411
% 15.67/2.53  sup_given_eliminated:                   6
% 15.67/2.53  comparisons_done:                       0
% 15.67/2.53  comparisons_avoided:                    0
% 15.67/2.53  
% 15.67/2.53  ------ Simplifications
% 15.67/2.53  
% 15.67/2.53  
% 15.67/2.53  sim_fw_subset_subsumed:                 84
% 15.67/2.53  sim_bw_subset_subsumed:                 18
% 15.67/2.53  sim_fw_subsumed:                        2083
% 15.67/2.53  sim_bw_subsumed:                        9
% 15.67/2.53  sim_fw_subsumption_res:                 8
% 15.67/2.53  sim_bw_subsumption_res:                 0
% 15.67/2.53  sim_tautology_del:                      30
% 15.67/2.53  sim_eq_tautology_del:                   253
% 15.67/2.53  sim_eq_res_simp:                        0
% 15.67/2.53  sim_fw_demodulated:                     1040
% 15.67/2.53  sim_bw_demodulated:                     101
% 15.67/2.53  sim_light_normalised:                   737
% 15.67/2.53  sim_joinable_taut:                      0
% 15.67/2.53  sim_joinable_simp:                      0
% 15.67/2.53  sim_ac_normalised:                      0
% 15.67/2.53  sim_smt_subsumption:                    0
% 15.67/2.53  
%------------------------------------------------------------------------------
