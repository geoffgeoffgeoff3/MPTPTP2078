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
% DateTime   : Thu Dec  3 11:50:07 EST 2020

% Result     : Theorem 3.41s
% Output     : CNFRefutation 3.41s
% Verified   : 
% Statistics : Number of formulae       :  122 (1666 expanded)
%              Number of clauses        :   76 ( 858 expanded)
%              Number of leaves         :   15 ( 323 expanded)
%              Depth                    :   19
%              Number of atoms          :  203 (2630 expanded)
%              Number of equality atoms :  137 (1413 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    3 (   2 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f11,axiom,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f50,plain,(
    ! [X0] : v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f11])).

fof(f12,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(X1,k6_relat_1(X0)) = k8_relat_1(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = k8_relat_1(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f12])).

fof(f51,plain,(
    ! [X0,X1] :
      ( k5_relat_1(X1,k6_relat_1(X0)) = k8_relat_1(X0,X1)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f27])).

fof(f22,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f22])).

fof(f62,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f36])).

fof(f21,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f21])).

fof(f61,plain,(
    ! [X0,X1] :
      ( k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f35])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f41,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f2])).

fof(f71,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(k1_relat_1(X1),k4_xboole_0(k1_relat_1(X1),X0)) = k1_relat_1(k7_relat_1(X1,X0))
      | ~ v1_relat_1(X1) ) ),
    inference(definition_unfolding,[],[f61,f41])).

fof(f17,axiom,(
    ! [X0] :
      ( k2_relat_1(k6_relat_1(X0)) = X0
      & k1_relat_1(k6_relat_1(X0)) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f56,plain,(
    ! [X0] : k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f17])).

fof(f1,axiom,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f40,plain,(
    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f69,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) ),
    inference(definition_unfolding,[],[f40,f41])).

fof(f19,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ( r1_tarski(k1_relat_1(X1),X0)
       => k5_relat_1(k6_relat_1(X0),X1) = X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f19])).

fof(f33,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(flattening,[],[f32])).

fof(f59,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k6_relat_1(X0),X1) = X1
      | ~ r1_tarski(k1_relat_1(X1),X0)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f33])).

fof(f10,axiom,(
    ! [X0,X1] :
      ( ( v1_relat_1(X1)
        & v1_relat_1(X0) )
     => v1_relat_1(k5_relat_1(X0,X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f10])).

fof(f26,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(flattening,[],[f25])).

fof(f49,plain,(
    ! [X0,X1] :
      ( v1_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f26])).

fof(f13,axiom,(
    ! [X0,X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => k5_relat_1(X1,k8_relat_1(X0,X2)) = k8_relat_1(X0,k5_relat_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] :
      ( ! [X2] :
          ( k5_relat_1(X1,k8_relat_1(X0,X2)) = k8_relat_1(X0,k5_relat_1(X1,X2))
          | ~ v1_relat_1(X2) )
      | ~ v1_relat_1(X1) ) ),
    inference(ennf_transformation,[],[f13])).

fof(f52,plain,(
    ! [X2,X0,X1] :
      ( k5_relat_1(X1,k8_relat_1(X0,X2)) = k8_relat_1(X0,k5_relat_1(X1,X2))
      | ~ v1_relat_1(X2)
      | ~ v1_relat_1(X1) ) ),
    inference(cnf_transformation,[],[f28])).

fof(f15,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => ! [X1] :
          ( v1_relat_1(X1)
         => k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f30,plain,(
    ! [X0] :
      ( ! [X1] :
          ( k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1))
          | ~ v1_relat_1(X1) )
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f15])).

fof(f54,plain,(
    ! [X0,X1] :
      ( k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1))
      | ~ v1_relat_1(X1)
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f30])).

fof(f18,axiom,(
    ! [X0] : k6_relat_1(X0) = k4_relat_1(k6_relat_1(X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f58,plain,(
    ! [X0] : k6_relat_1(X0) = k4_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f18])).

fof(f20,axiom,(
    ! [X0] :
      ( v1_relat_1(X0)
     => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(ennf_transformation,[],[f20])).

fof(f60,plain,(
    ! [X0] :
      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
      | ~ v1_relat_1(X0) ) ),
    inference(cnf_transformation,[],[f34])).

fof(f57,plain,(
    ! [X0] : k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f17])).

fof(f23,conjecture,(
    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,negated_conjecture,(
    ~ ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1)) ),
    inference(negated_conjecture,[],[f23])).

fof(f37,plain,(
    ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1)) ),
    inference(ennf_transformation,[],[f24])).

fof(f38,plain,
    ( ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1))
   => k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1)) ),
    introduced(choice_axiom,[])).

fof(f39,plain,(
    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f37,f38])).

fof(f63,plain,(
    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1)) ),
    inference(cnf_transformation,[],[f39])).

fof(f72,plain,(
    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) ),
    inference(definition_unfolding,[],[f63,f41])).

cnf(c_3,plain,
    ( v1_relat_1(k6_relat_1(X0)) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_438,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_4,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,X0) ),
    inference(cnf_transformation,[],[f51])).

cnf(c_437,plain,
    ( k5_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,X0)
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_4])).

cnf(c_1885,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k8_relat_1(X1,k6_relat_1(X0)) ),
    inference(superposition,[status(thm)],[c_438,c_437])).

cnf(c_15,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
    inference(cnf_transformation,[],[f62])).

cnf(c_429,plain,
    ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_15])).

cnf(c_1281,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k7_relat_1(k6_relat_1(X1),X0) ),
    inference(superposition,[status(thm)],[c_438,c_429])).

cnf(c_1888,plain,
    ( k7_relat_1(k6_relat_1(X0),X1) = k8_relat_1(X0,k6_relat_1(X1)) ),
    inference(demodulation,[status(thm)],[c_1885,c_1281])).

cnf(c_14,plain,
    ( ~ v1_relat_1(X0)
    | k4_xboole_0(k1_relat_1(X0),k4_xboole_0(k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1)) ),
    inference(cnf_transformation,[],[f71])).

cnf(c_430,plain,
    ( k4_xboole_0(k1_relat_1(X0),k4_xboole_0(k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1))
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_14])).

cnf(c_845,plain,
    ( k4_xboole_0(k1_relat_1(k6_relat_1(X0)),k4_xboole_0(k1_relat_1(k6_relat_1(X0)),X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
    inference(superposition,[status(thm)],[c_438,c_430])).

cnf(c_10,plain,
    ( k1_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f56])).

cnf(c_846,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
    inference(light_normalisation,[status(thm)],[c_845,c_10])).

cnf(c_0,plain,
    ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) ),
    inference(cnf_transformation,[],[f69])).

cnf(c_440,plain,
    ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_0])).

cnf(c_1111,plain,
    ( r1_tarski(k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)),X0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_846,c_440])).

cnf(c_3392,plain,
    ( r1_tarski(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))),X0) = iProver_top ),
    inference(demodulation,[status(thm)],[c_1888,c_1111])).

cnf(c_12,plain,
    ( ~ r1_tarski(k1_relat_1(X0),X1)
    | ~ v1_relat_1(X0)
    | k5_relat_1(k6_relat_1(X1),X0) = X0 ),
    inference(cnf_transformation,[],[f59])).

cnf(c_432,plain,
    ( k5_relat_1(k6_relat_1(X0),X1) = X1
    | r1_tarski(k1_relat_1(X1),X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_12])).

cnf(c_3457,plain,
    ( k5_relat_1(k6_relat_1(X0),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1))
    | v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) != iProver_top ),
    inference(superposition,[status(thm)],[c_3392,c_432])).

cnf(c_2,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | v1_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_439,plain,
    ( v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(k5_relat_1(X1,X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_2])).

cnf(c_3232,plain,
    ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_1885,c_439])).

cnf(c_47,plain,
    ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_3])).

cnf(c_4978,plain,
    ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(global_propositional_subsumption,[status(thm)],[c_3232,c_47])).

cnf(c_4984,plain,
    ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top ),
    inference(forward_subsumption_resolution,[status(thm)],[c_4978,c_438])).

cnf(c_5366,plain,
    ( k5_relat_1(k6_relat_1(X0),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1)) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3457,c_4984])).

cnf(c_5,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k8_relat_1(X2,k5_relat_1(X0,X1)) = k5_relat_1(X0,k8_relat_1(X2,X1)) ),
    inference(cnf_transformation,[],[f52])).

cnf(c_436,plain,
    ( k8_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(X1,k8_relat_1(X0,X2))
    | v1_relat_1(X1) != iProver_top
    | v1_relat_1(X2) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_5])).

cnf(c_3893,plain,
    ( k8_relat_1(X0,k5_relat_1(k6_relat_1(X1),X2)) = k5_relat_1(k6_relat_1(X1),k8_relat_1(X0,X2))
    | v1_relat_1(X2) != iProver_top ),
    inference(superposition,[status(thm)],[c_438,c_436])).

cnf(c_4892,plain,
    ( k8_relat_1(X0,k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) = k5_relat_1(k6_relat_1(X1),k8_relat_1(X0,k6_relat_1(X2))) ),
    inference(superposition,[status(thm)],[c_438,c_3893])).

cnf(c_4894,plain,
    ( k5_relat_1(k6_relat_1(X0),k8_relat_1(X1,k6_relat_1(X2))) = k8_relat_1(X1,k8_relat_1(X2,k6_relat_1(X0))) ),
    inference(demodulation,[status(thm)],[c_4892,c_1885])).

cnf(c_5374,plain,
    ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X0))) = k8_relat_1(X0,k6_relat_1(X1)) ),
    inference(superposition,[status(thm)],[c_5366,c_4894])).

cnf(c_7,plain,
    ( ~ v1_relat_1(X0)
    | ~ v1_relat_1(X1)
    | k5_relat_1(k4_relat_1(X0),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,X0)) ),
    inference(cnf_transformation,[],[f54])).

cnf(c_434,plain,
    ( k5_relat_1(k4_relat_1(X0),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,X0))
    | v1_relat_1(X0) != iProver_top
    | v1_relat_1(X1) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_7])).

cnf(c_2048,plain,
    ( k5_relat_1(k4_relat_1(k6_relat_1(X0)),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,k6_relat_1(X0)))
    | v1_relat_1(X1) != iProver_top ),
    inference(superposition,[status(thm)],[c_438,c_434])).

cnf(c_11,plain,
    ( k4_relat_1(k6_relat_1(X0)) = k6_relat_1(X0) ),
    inference(cnf_transformation,[],[f58])).

cnf(c_2049,plain,
    ( k4_relat_1(k5_relat_1(X0,k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X1),k4_relat_1(X0))
    | v1_relat_1(X0) != iProver_top ),
    inference(light_normalisation,[status(thm)],[c_2048,c_11])).

cnf(c_4993,plain,
    ( k4_relat_1(k5_relat_1(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X2))) = k5_relat_1(k6_relat_1(X2),k4_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
    inference(superposition,[status(thm)],[c_4984,c_2049])).

cnf(c_4995,plain,
    ( k5_relat_1(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X2)) = k8_relat_1(X2,k8_relat_1(X0,k6_relat_1(X1))) ),
    inference(superposition,[status(thm)],[c_4984,c_437])).

cnf(c_5010,plain,
    ( k5_relat_1(k6_relat_1(X0),k4_relat_1(k8_relat_1(X1,k6_relat_1(X2)))) = k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2)))) ),
    inference(light_normalisation,[status(thm)],[c_4993,c_4995])).

cnf(c_2400,plain,
    ( k4_relat_1(k5_relat_1(k6_relat_1(X0),k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X1),k4_relat_1(k6_relat_1(X0))) ),
    inference(superposition,[status(thm)],[c_438,c_2049])).

cnf(c_2401,plain,
    ( k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) ),
    inference(light_normalisation,[status(thm)],[c_2400,c_11,c_1885])).

cnf(c_2402,plain,
    ( k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X1,k6_relat_1(X0)) ),
    inference(demodulation,[status(thm)],[c_2401,c_1885])).

cnf(c_5012,plain,
    ( k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2)))) = k8_relat_1(X2,k8_relat_1(X1,k6_relat_1(X0))) ),
    inference(demodulation,[status(thm)],[c_5010,c_2402,c_4894])).

cnf(c_5483,plain,
    ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X0))) = k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) ),
    inference(superposition,[status(thm)],[c_5374,c_5012])).

cnf(c_5484,plain,
    ( k8_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,k6_relat_1(X0)) ),
    inference(light_normalisation,[status(thm)],[c_5483,c_2402,c_5374])).

cnf(c_3301,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k6_relat_1(X1)
    | r1_tarski(X1,X0) != iProver_top
    | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
    inference(superposition,[status(thm)],[c_10,c_432])).

cnf(c_3305,plain,
    ( k8_relat_1(X0,k6_relat_1(X1)) = k6_relat_1(X0)
    | r1_tarski(X0,X1) != iProver_top
    | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
    inference(demodulation,[status(thm)],[c_3301,c_1885])).

cnf(c_5328,plain,
    ( r1_tarski(X0,X1) != iProver_top
    | k8_relat_1(X0,k6_relat_1(X1)) = k6_relat_1(X0) ),
    inference(global_propositional_subsumption,[status(thm)],[c_3305,c_47])).

cnf(c_5329,plain,
    ( k8_relat_1(X0,k6_relat_1(X1)) = k6_relat_1(X0)
    | r1_tarski(X0,X1) != iProver_top ),
    inference(renaming,[status(thm)],[c_5328])).

cnf(c_5336,plain,
    ( k8_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))),k6_relat_1(X0)) = k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
    inference(superposition,[status(thm)],[c_3392,c_5329])).

cnf(c_6570,plain,
    ( k8_relat_1(X0,k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))))) = k4_relat_1(k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))))) ),
    inference(superposition,[status(thm)],[c_5336,c_2402])).

cnf(c_6615,plain,
    ( k8_relat_1(X0,k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))))) = k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
    inference(demodulation,[status(thm)],[c_6570,c_11])).

cnf(c_6728,plain,
    ( k8_relat_1(X0,k6_relat_1(k1_relat_1(k8_relat_1(X1,k6_relat_1(X0))))) = k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
    inference(superposition,[status(thm)],[c_5484,c_6615])).

cnf(c_13,plain,
    ( ~ v1_relat_1(X0)
    | k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ),
    inference(cnf_transformation,[],[f60])).

cnf(c_431,plain,
    ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(predicate_to_equality,[status(thm)],[c_13])).

cnf(c_678,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(k2_relat_1(k6_relat_1(X0)))) = k6_relat_1(X0) ),
    inference(superposition,[status(thm)],[c_438,c_431])).

cnf(c_9,plain,
    ( k2_relat_1(k6_relat_1(X0)) = X0 ),
    inference(cnf_transformation,[],[f57])).

cnf(c_679,plain,
    ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X0)) = k6_relat_1(X0) ),
    inference(light_normalisation,[status(thm)],[c_678,c_9])).

cnf(c_1616,plain,
    ( k7_relat_1(k6_relat_1(X0),X0) = k6_relat_1(X0) ),
    inference(superposition,[status(thm)],[c_679,c_1281])).

cnf(c_1830,plain,
    ( r1_tarski(k1_relat_1(k6_relat_1(X0)),X0) = iProver_top ),
    inference(superposition,[status(thm)],[c_1616,c_1111])).

cnf(c_1831,plain,
    ( r1_tarski(X0,X0) = iProver_top ),
    inference(light_normalisation,[status(thm)],[c_1830,c_10])).

cnf(c_3300,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
    | v1_relat_1(X0) != iProver_top ),
    inference(superposition,[status(thm)],[c_1831,c_432])).

cnf(c_4992,plain,
    ( k5_relat_1(k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1)) ),
    inference(superposition,[status(thm)],[c_4984,c_3300])).

cnf(c_5208,plain,
    ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))))) = k8_relat_1(X0,k6_relat_1(X1)) ),
    inference(superposition,[status(thm)],[c_4992,c_4894])).

cnf(c_6947,plain,
    ( k8_relat_1(X0,k6_relat_1(k1_relat_1(k8_relat_1(X1,k6_relat_1(X0))))) = k8_relat_1(X0,k6_relat_1(X1)) ),
    inference(demodulation,[status(thm)],[c_6728,c_5208])).

cnf(c_7139,plain,
    ( k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) = k8_relat_1(X0,k6_relat_1(X1)) ),
    inference(demodulation,[status(thm)],[c_6947,c_6728])).

cnf(c_16,negated_conjecture,
    ( k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) ),
    inference(cnf_transformation,[],[f72])).

cnf(c_1113,plain,
    ( k6_relat_1(k1_relat_1(k7_relat_1(k6_relat_1(sK0),sK1))) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) ),
    inference(demodulation,[status(thm)],[c_846,c_16])).

cnf(c_1615,plain,
    ( k6_relat_1(k1_relat_1(k7_relat_1(k6_relat_1(sK0),sK1))) != k7_relat_1(k6_relat_1(sK0),sK1) ),
    inference(demodulation,[status(thm)],[c_1281,c_1113])).

cnf(c_3394,plain,
    ( k6_relat_1(k1_relat_1(k8_relat_1(sK0,k6_relat_1(sK1)))) != k8_relat_1(sK0,k6_relat_1(sK1)) ),
    inference(demodulation,[status(thm)],[c_1888,c_1615])).

cnf(c_5490,plain,
    ( k6_relat_1(k1_relat_1(k8_relat_1(sK1,k6_relat_1(sK0)))) != k8_relat_1(sK1,k6_relat_1(sK0)) ),
    inference(demodulation,[status(thm)],[c_5484,c_3394])).

cnf(c_7310,plain,
    ( k8_relat_1(sK1,k6_relat_1(sK0)) != k8_relat_1(sK1,k6_relat_1(sK0)) ),
    inference(demodulation,[status(thm)],[c_7139,c_5490])).

cnf(c_7311,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_7310])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : iproveropt_run.sh %d %s
% 0.14/0.34  % Computer   : n003.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 10:58:42 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  % Running in FOF mode
% 3.41/1.00  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 3.41/1.00  
% 3.41/1.00  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 3.41/1.00  
% 3.41/1.00  ------  iProver source info
% 3.41/1.00  
% 3.41/1.00  git: date: 2020-06-30 10:37:57 +0100
% 3.41/1.00  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 3.41/1.00  git: non_committed_changes: false
% 3.41/1.00  git: last_make_outside_of_git: false
% 3.41/1.00  
% 3.41/1.00  ------ 
% 3.41/1.00  
% 3.41/1.00  ------ Input Options
% 3.41/1.00  
% 3.41/1.00  --out_options                           all
% 3.41/1.00  --tptp_safe_out                         true
% 3.41/1.00  --problem_path                          ""
% 3.41/1.00  --include_path                          ""
% 3.41/1.00  --clausifier                            res/vclausify_rel
% 3.41/1.00  --clausifier_options                    --mode clausify
% 3.41/1.00  --stdin                                 false
% 3.41/1.00  --stats_out                             all
% 3.41/1.00  
% 3.41/1.00  ------ General Options
% 3.41/1.00  
% 3.41/1.00  --fof                                   false
% 3.41/1.00  --time_out_real                         305.
% 3.41/1.00  --time_out_virtual                      -1.
% 3.41/1.00  --symbol_type_check                     false
% 3.41/1.00  --clausify_out                          false
% 3.41/1.00  --sig_cnt_out                           false
% 3.41/1.00  --trig_cnt_out                          false
% 3.41/1.00  --trig_cnt_out_tolerance                1.
% 3.41/1.00  --trig_cnt_out_sk_spl                   false
% 3.41/1.00  --abstr_cl_out                          false
% 3.41/1.00  
% 3.41/1.00  ------ Global Options
% 3.41/1.00  
% 3.41/1.00  --schedule                              default
% 3.41/1.00  --add_important_lit                     false
% 3.41/1.00  --prop_solver_per_cl                    1000
% 3.41/1.00  --min_unsat_core                        false
% 3.41/1.00  --soft_assumptions                      false
% 3.41/1.00  --soft_lemma_size                       3
% 3.41/1.00  --prop_impl_unit_size                   0
% 3.41/1.00  --prop_impl_unit                        []
% 3.41/1.00  --share_sel_clauses                     true
% 3.41/1.00  --reset_solvers                         false
% 3.41/1.00  --bc_imp_inh                            [conj_cone]
% 3.41/1.00  --conj_cone_tolerance                   3.
% 3.41/1.00  --extra_neg_conj                        none
% 3.41/1.00  --large_theory_mode                     true
% 3.41/1.00  --prolific_symb_bound                   200
% 3.41/1.00  --lt_threshold                          2000
% 3.41/1.00  --clause_weak_htbl                      true
% 3.41/1.00  --gc_record_bc_elim                     false
% 3.41/1.00  
% 3.41/1.00  ------ Preprocessing Options
% 3.41/1.00  
% 3.41/1.00  --preprocessing_flag                    true
% 3.41/1.00  --time_out_prep_mult                    0.1
% 3.41/1.00  --splitting_mode                        input
% 3.41/1.00  --splitting_grd                         true
% 3.41/1.00  --splitting_cvd                         false
% 3.41/1.00  --splitting_cvd_svl                     false
% 3.41/1.00  --splitting_nvd                         32
% 3.41/1.00  --sub_typing                            true
% 3.41/1.00  --prep_gs_sim                           true
% 3.41/1.00  --prep_unflatten                        true
% 3.41/1.00  --prep_res_sim                          true
% 3.41/1.00  --prep_upred                            true
% 3.41/1.00  --prep_sem_filter                       exhaustive
% 3.41/1.00  --prep_sem_filter_out                   false
% 3.41/1.00  --pred_elim                             true
% 3.41/1.00  --res_sim_input                         true
% 3.41/1.00  --eq_ax_congr_red                       true
% 3.41/1.00  --pure_diseq_elim                       true
% 3.41/1.00  --brand_transform                       false
% 3.41/1.00  --non_eq_to_eq                          false
% 3.41/1.00  --prep_def_merge                        true
% 3.41/1.00  --prep_def_merge_prop_impl              false
% 3.41/1.00  --prep_def_merge_mbd                    true
% 3.41/1.00  --prep_def_merge_tr_red                 false
% 3.41/1.00  --prep_def_merge_tr_cl                  false
% 3.41/1.00  --smt_preprocessing                     true
% 3.41/1.00  --smt_ac_axioms                         fast
% 3.41/1.00  --preprocessed_out                      false
% 3.41/1.00  --preprocessed_stats                    false
% 3.41/1.00  
% 3.41/1.00  ------ Abstraction refinement Options
% 3.41/1.00  
% 3.41/1.00  --abstr_ref                             []
% 3.41/1.00  --abstr_ref_prep                        false
% 3.41/1.00  --abstr_ref_until_sat                   false
% 3.41/1.00  --abstr_ref_sig_restrict                funpre
% 3.41/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.41/1.00  --abstr_ref_under                       []
% 3.41/1.00  
% 3.41/1.00  ------ SAT Options
% 3.41/1.00  
% 3.41/1.00  --sat_mode                              false
% 3.41/1.00  --sat_fm_restart_options                ""
% 3.41/1.00  --sat_gr_def                            false
% 3.41/1.00  --sat_epr_types                         true
% 3.41/1.00  --sat_non_cyclic_types                  false
% 3.41/1.00  --sat_finite_models                     false
% 3.41/1.00  --sat_fm_lemmas                         false
% 3.41/1.00  --sat_fm_prep                           false
% 3.41/1.00  --sat_fm_uc_incr                        true
% 3.41/1.00  --sat_out_model                         small
% 3.41/1.00  --sat_out_clauses                       false
% 3.41/1.00  
% 3.41/1.00  ------ QBF Options
% 3.41/1.00  
% 3.41/1.00  --qbf_mode                              false
% 3.41/1.00  --qbf_elim_univ                         false
% 3.41/1.00  --qbf_dom_inst                          none
% 3.41/1.00  --qbf_dom_pre_inst                      false
% 3.41/1.00  --qbf_sk_in                             false
% 3.41/1.00  --qbf_pred_elim                         true
% 3.41/1.00  --qbf_split                             512
% 3.41/1.00  
% 3.41/1.00  ------ BMC1 Options
% 3.41/1.00  
% 3.41/1.00  --bmc1_incremental                      false
% 3.41/1.00  --bmc1_axioms                           reachable_all
% 3.41/1.00  --bmc1_min_bound                        0
% 3.41/1.00  --bmc1_max_bound                        -1
% 3.41/1.00  --bmc1_max_bound_default                -1
% 3.41/1.00  --bmc1_symbol_reachability              true
% 3.41/1.00  --bmc1_property_lemmas                  false
% 3.41/1.00  --bmc1_k_induction                      false
% 3.41/1.00  --bmc1_non_equiv_states                 false
% 3.41/1.00  --bmc1_deadlock                         false
% 3.41/1.00  --bmc1_ucm                              false
% 3.41/1.00  --bmc1_add_unsat_core                   none
% 3.41/1.00  --bmc1_unsat_core_children              false
% 3.41/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.41/1.00  --bmc1_out_stat                         full
% 3.41/1.00  --bmc1_ground_init                      false
% 3.41/1.00  --bmc1_pre_inst_next_state              false
% 3.41/1.00  --bmc1_pre_inst_state                   false
% 3.41/1.00  --bmc1_pre_inst_reach_state             false
% 3.41/1.00  --bmc1_out_unsat_core                   false
% 3.41/1.00  --bmc1_aig_witness_out                  false
% 3.41/1.00  --bmc1_verbose                          false
% 3.41/1.00  --bmc1_dump_clauses_tptp                false
% 3.41/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.41/1.00  --bmc1_dump_file                        -
% 3.41/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.41/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.41/1.00  --bmc1_ucm_extend_mode                  1
% 3.41/1.00  --bmc1_ucm_init_mode                    2
% 3.41/1.00  --bmc1_ucm_cone_mode                    none
% 3.41/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.41/1.00  --bmc1_ucm_relax_model                  4
% 3.41/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.41/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.41/1.00  --bmc1_ucm_layered_model                none
% 3.41/1.00  --bmc1_ucm_max_lemma_size               10
% 3.41/1.00  
% 3.41/1.00  ------ AIG Options
% 3.41/1.00  
% 3.41/1.00  --aig_mode                              false
% 3.41/1.00  
% 3.41/1.00  ------ Instantiation Options
% 3.41/1.00  
% 3.41/1.00  --instantiation_flag                    true
% 3.41/1.00  --inst_sos_flag                         false
% 3.41/1.00  --inst_sos_phase                        true
% 3.41/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.41/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.41/1.00  --inst_lit_sel_side                     num_symb
% 3.41/1.00  --inst_solver_per_active                1400
% 3.41/1.00  --inst_solver_calls_frac                1.
% 3.41/1.00  --inst_passive_queue_type               priority_queues
% 3.41/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.41/1.00  --inst_passive_queues_freq              [25;2]
% 3.41/1.00  --inst_dismatching                      true
% 3.41/1.00  --inst_eager_unprocessed_to_passive     true
% 3.41/1.00  --inst_prop_sim_given                   true
% 3.41/1.00  --inst_prop_sim_new                     false
% 3.41/1.00  --inst_subs_new                         false
% 3.41/1.00  --inst_eq_res_simp                      false
% 3.41/1.00  --inst_subs_given                       false
% 3.41/1.00  --inst_orphan_elimination               true
% 3.41/1.00  --inst_learning_loop_flag               true
% 3.41/1.00  --inst_learning_start                   3000
% 3.41/1.00  --inst_learning_factor                  2
% 3.41/1.00  --inst_start_prop_sim_after_learn       3
% 3.41/1.00  --inst_sel_renew                        solver
% 3.41/1.00  --inst_lit_activity_flag                true
% 3.41/1.00  --inst_restr_to_given                   false
% 3.41/1.00  --inst_activity_threshold               500
% 3.41/1.00  --inst_out_proof                        true
% 3.41/1.00  
% 3.41/1.00  ------ Resolution Options
% 3.41/1.00  
% 3.41/1.00  --resolution_flag                       true
% 3.41/1.00  --res_lit_sel                           adaptive
% 3.41/1.00  --res_lit_sel_side                      none
% 3.41/1.00  --res_ordering                          kbo
% 3.41/1.00  --res_to_prop_solver                    active
% 3.41/1.00  --res_prop_simpl_new                    false
% 3.41/1.00  --res_prop_simpl_given                  true
% 3.41/1.00  --res_passive_queue_type                priority_queues
% 3.41/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.41/1.00  --res_passive_queues_freq               [15;5]
% 3.41/1.00  --res_forward_subs                      full
% 3.41/1.00  --res_backward_subs                     full
% 3.41/1.00  --res_forward_subs_resolution           true
% 3.41/1.00  --res_backward_subs_resolution          true
% 3.41/1.00  --res_orphan_elimination                true
% 3.41/1.00  --res_time_limit                        2.
% 3.41/1.00  --res_out_proof                         true
% 3.41/1.00  
% 3.41/1.00  ------ Superposition Options
% 3.41/1.00  
% 3.41/1.00  --superposition_flag                    true
% 3.41/1.00  --sup_passive_queue_type                priority_queues
% 3.41/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.41/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.41/1.00  --demod_completeness_check              fast
% 3.41/1.00  --demod_use_ground                      true
% 3.41/1.00  --sup_to_prop_solver                    passive
% 3.41/1.00  --sup_prop_simpl_new                    true
% 3.41/1.00  --sup_prop_simpl_given                  true
% 3.41/1.00  --sup_fun_splitting                     false
% 3.41/1.00  --sup_smt_interval                      50000
% 3.41/1.00  
% 3.41/1.00  ------ Superposition Simplification Setup
% 3.41/1.00  
% 3.41/1.00  --sup_indices_passive                   []
% 3.41/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.41/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/1.00  --sup_full_bw                           [BwDemod]
% 3.41/1.00  --sup_immed_triv                        [TrivRules]
% 3.41/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.41/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/1.00  --sup_immed_bw_main                     []
% 3.41/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.41/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.41/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.41/1.00  
% 3.41/1.00  ------ Combination Options
% 3.41/1.00  
% 3.41/1.00  --comb_res_mult                         3
% 3.41/1.00  --comb_sup_mult                         2
% 3.41/1.00  --comb_inst_mult                        10
% 3.41/1.00  
% 3.41/1.00  ------ Debug Options
% 3.41/1.00  
% 3.41/1.00  --dbg_backtrace                         false
% 3.41/1.00  --dbg_dump_prop_clauses                 false
% 3.41/1.00  --dbg_dump_prop_clauses_file            -
% 3.41/1.00  --dbg_out_stat                          false
% 3.41/1.00  ------ Parsing...
% 3.41/1.00  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 3.41/1.00  
% 3.41/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe_e 
% 3.41/1.00  
% 3.41/1.00  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 3.41/1.00  
% 3.41/1.00  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  sf_s  rm: 0 0s  sf_e 
% 3.41/1.00  ------ Proving...
% 3.41/1.00  ------ Problem Properties 
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  clauses                                 17
% 3.41/1.00  conjectures                             1
% 3.41/1.00  EPR                                     0
% 3.41/1.00  Horn                                    17
% 3.41/1.00  unary                                   7
% 3.41/1.00  binary                                  4
% 3.41/1.00  lits                                    34
% 3.41/1.00  lits eq                                 13
% 3.41/1.00  fd_pure                                 0
% 3.41/1.00  fd_pseudo                               0
% 3.41/1.00  fd_cond                                 0
% 3.41/1.00  fd_pseudo_cond                          0
% 3.41/1.00  AC symbols                              0
% 3.41/1.00  
% 3.41/1.00  ------ Schedule dynamic 5 is on 
% 3.41/1.00  
% 3.41/1.00  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  ------ 
% 3.41/1.00  Current options:
% 3.41/1.00  ------ 
% 3.41/1.00  
% 3.41/1.00  ------ Input Options
% 3.41/1.00  
% 3.41/1.00  --out_options                           all
% 3.41/1.00  --tptp_safe_out                         true
% 3.41/1.00  --problem_path                          ""
% 3.41/1.00  --include_path                          ""
% 3.41/1.00  --clausifier                            res/vclausify_rel
% 3.41/1.00  --clausifier_options                    --mode clausify
% 3.41/1.00  --stdin                                 false
% 3.41/1.00  --stats_out                             all
% 3.41/1.00  
% 3.41/1.00  ------ General Options
% 3.41/1.00  
% 3.41/1.00  --fof                                   false
% 3.41/1.00  --time_out_real                         305.
% 3.41/1.00  --time_out_virtual                      -1.
% 3.41/1.00  --symbol_type_check                     false
% 3.41/1.00  --clausify_out                          false
% 3.41/1.00  --sig_cnt_out                           false
% 3.41/1.00  --trig_cnt_out                          false
% 3.41/1.00  --trig_cnt_out_tolerance                1.
% 3.41/1.00  --trig_cnt_out_sk_spl                   false
% 3.41/1.00  --abstr_cl_out                          false
% 3.41/1.00  
% 3.41/1.00  ------ Global Options
% 3.41/1.00  
% 3.41/1.00  --schedule                              default
% 3.41/1.00  --add_important_lit                     false
% 3.41/1.00  --prop_solver_per_cl                    1000
% 3.41/1.00  --min_unsat_core                        false
% 3.41/1.00  --soft_assumptions                      false
% 3.41/1.00  --soft_lemma_size                       3
% 3.41/1.00  --prop_impl_unit_size                   0
% 3.41/1.00  --prop_impl_unit                        []
% 3.41/1.00  --share_sel_clauses                     true
% 3.41/1.00  --reset_solvers                         false
% 3.41/1.00  --bc_imp_inh                            [conj_cone]
% 3.41/1.00  --conj_cone_tolerance                   3.
% 3.41/1.00  --extra_neg_conj                        none
% 3.41/1.00  --large_theory_mode                     true
% 3.41/1.00  --prolific_symb_bound                   200
% 3.41/1.00  --lt_threshold                          2000
% 3.41/1.00  --clause_weak_htbl                      true
% 3.41/1.00  --gc_record_bc_elim                     false
% 3.41/1.00  
% 3.41/1.00  ------ Preprocessing Options
% 3.41/1.00  
% 3.41/1.00  --preprocessing_flag                    true
% 3.41/1.00  --time_out_prep_mult                    0.1
% 3.41/1.00  --splitting_mode                        input
% 3.41/1.00  --splitting_grd                         true
% 3.41/1.00  --splitting_cvd                         false
% 3.41/1.00  --splitting_cvd_svl                     false
% 3.41/1.00  --splitting_nvd                         32
% 3.41/1.00  --sub_typing                            true
% 3.41/1.00  --prep_gs_sim                           true
% 3.41/1.00  --prep_unflatten                        true
% 3.41/1.00  --prep_res_sim                          true
% 3.41/1.00  --prep_upred                            true
% 3.41/1.00  --prep_sem_filter                       exhaustive
% 3.41/1.00  --prep_sem_filter_out                   false
% 3.41/1.00  --pred_elim                             true
% 3.41/1.00  --res_sim_input                         true
% 3.41/1.00  --eq_ax_congr_red                       true
% 3.41/1.00  --pure_diseq_elim                       true
% 3.41/1.00  --brand_transform                       false
% 3.41/1.00  --non_eq_to_eq                          false
% 3.41/1.00  --prep_def_merge                        true
% 3.41/1.00  --prep_def_merge_prop_impl              false
% 3.41/1.00  --prep_def_merge_mbd                    true
% 3.41/1.00  --prep_def_merge_tr_red                 false
% 3.41/1.00  --prep_def_merge_tr_cl                  false
% 3.41/1.00  --smt_preprocessing                     true
% 3.41/1.00  --smt_ac_axioms                         fast
% 3.41/1.00  --preprocessed_out                      false
% 3.41/1.00  --preprocessed_stats                    false
% 3.41/1.00  
% 3.41/1.00  ------ Abstraction refinement Options
% 3.41/1.00  
% 3.41/1.00  --abstr_ref                             []
% 3.41/1.00  --abstr_ref_prep                        false
% 3.41/1.00  --abstr_ref_until_sat                   false
% 3.41/1.00  --abstr_ref_sig_restrict                funpre
% 3.41/1.00  --abstr_ref_af_restrict_to_split_sk     false
% 3.41/1.00  --abstr_ref_under                       []
% 3.41/1.00  
% 3.41/1.00  ------ SAT Options
% 3.41/1.00  
% 3.41/1.00  --sat_mode                              false
% 3.41/1.00  --sat_fm_restart_options                ""
% 3.41/1.00  --sat_gr_def                            false
% 3.41/1.00  --sat_epr_types                         true
% 3.41/1.00  --sat_non_cyclic_types                  false
% 3.41/1.00  --sat_finite_models                     false
% 3.41/1.00  --sat_fm_lemmas                         false
% 3.41/1.00  --sat_fm_prep                           false
% 3.41/1.00  --sat_fm_uc_incr                        true
% 3.41/1.00  --sat_out_model                         small
% 3.41/1.00  --sat_out_clauses                       false
% 3.41/1.00  
% 3.41/1.00  ------ QBF Options
% 3.41/1.00  
% 3.41/1.00  --qbf_mode                              false
% 3.41/1.00  --qbf_elim_univ                         false
% 3.41/1.00  --qbf_dom_inst                          none
% 3.41/1.00  --qbf_dom_pre_inst                      false
% 3.41/1.00  --qbf_sk_in                             false
% 3.41/1.00  --qbf_pred_elim                         true
% 3.41/1.00  --qbf_split                             512
% 3.41/1.00  
% 3.41/1.00  ------ BMC1 Options
% 3.41/1.00  
% 3.41/1.00  --bmc1_incremental                      false
% 3.41/1.00  --bmc1_axioms                           reachable_all
% 3.41/1.00  --bmc1_min_bound                        0
% 3.41/1.00  --bmc1_max_bound                        -1
% 3.41/1.00  --bmc1_max_bound_default                -1
% 3.41/1.00  --bmc1_symbol_reachability              true
% 3.41/1.00  --bmc1_property_lemmas                  false
% 3.41/1.00  --bmc1_k_induction                      false
% 3.41/1.00  --bmc1_non_equiv_states                 false
% 3.41/1.00  --bmc1_deadlock                         false
% 3.41/1.00  --bmc1_ucm                              false
% 3.41/1.00  --bmc1_add_unsat_core                   none
% 3.41/1.00  --bmc1_unsat_core_children              false
% 3.41/1.00  --bmc1_unsat_core_extrapolate_axioms    false
% 3.41/1.00  --bmc1_out_stat                         full
% 3.41/1.00  --bmc1_ground_init                      false
% 3.41/1.00  --bmc1_pre_inst_next_state              false
% 3.41/1.00  --bmc1_pre_inst_state                   false
% 3.41/1.00  --bmc1_pre_inst_reach_state             false
% 3.41/1.00  --bmc1_out_unsat_core                   false
% 3.41/1.00  --bmc1_aig_witness_out                  false
% 3.41/1.00  --bmc1_verbose                          false
% 3.41/1.00  --bmc1_dump_clauses_tptp                false
% 3.41/1.00  --bmc1_dump_unsat_core_tptp             false
% 3.41/1.00  --bmc1_dump_file                        -
% 3.41/1.00  --bmc1_ucm_expand_uc_limit              128
% 3.41/1.00  --bmc1_ucm_n_expand_iterations          6
% 3.41/1.00  --bmc1_ucm_extend_mode                  1
% 3.41/1.00  --bmc1_ucm_init_mode                    2
% 3.41/1.00  --bmc1_ucm_cone_mode                    none
% 3.41/1.00  --bmc1_ucm_reduced_relation_type        0
% 3.41/1.00  --bmc1_ucm_relax_model                  4
% 3.41/1.00  --bmc1_ucm_full_tr_after_sat            true
% 3.41/1.00  --bmc1_ucm_expand_neg_assumptions       false
% 3.41/1.00  --bmc1_ucm_layered_model                none
% 3.41/1.00  --bmc1_ucm_max_lemma_size               10
% 3.41/1.00  
% 3.41/1.00  ------ AIG Options
% 3.41/1.00  
% 3.41/1.00  --aig_mode                              false
% 3.41/1.00  
% 3.41/1.00  ------ Instantiation Options
% 3.41/1.00  
% 3.41/1.00  --instantiation_flag                    true
% 3.41/1.00  --inst_sos_flag                         false
% 3.41/1.00  --inst_sos_phase                        true
% 3.41/1.00  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 3.41/1.00  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 3.41/1.00  --inst_lit_sel_side                     none
% 3.41/1.00  --inst_solver_per_active                1400
% 3.41/1.00  --inst_solver_calls_frac                1.
% 3.41/1.00  --inst_passive_queue_type               priority_queues
% 3.41/1.00  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 3.41/1.00  --inst_passive_queues_freq              [25;2]
% 3.41/1.00  --inst_dismatching                      true
% 3.41/1.00  --inst_eager_unprocessed_to_passive     true
% 3.41/1.00  --inst_prop_sim_given                   true
% 3.41/1.00  --inst_prop_sim_new                     false
% 3.41/1.00  --inst_subs_new                         false
% 3.41/1.00  --inst_eq_res_simp                      false
% 3.41/1.00  --inst_subs_given                       false
% 3.41/1.00  --inst_orphan_elimination               true
% 3.41/1.00  --inst_learning_loop_flag               true
% 3.41/1.00  --inst_learning_start                   3000
% 3.41/1.00  --inst_learning_factor                  2
% 3.41/1.00  --inst_start_prop_sim_after_learn       3
% 3.41/1.00  --inst_sel_renew                        solver
% 3.41/1.00  --inst_lit_activity_flag                true
% 3.41/1.00  --inst_restr_to_given                   false
% 3.41/1.00  --inst_activity_threshold               500
% 3.41/1.00  --inst_out_proof                        true
% 3.41/1.00  
% 3.41/1.00  ------ Resolution Options
% 3.41/1.00  
% 3.41/1.00  --resolution_flag                       false
% 3.41/1.00  --res_lit_sel                           adaptive
% 3.41/1.00  --res_lit_sel_side                      none
% 3.41/1.00  --res_ordering                          kbo
% 3.41/1.00  --res_to_prop_solver                    active
% 3.41/1.00  --res_prop_simpl_new                    false
% 3.41/1.00  --res_prop_simpl_given                  true
% 3.41/1.00  --res_passive_queue_type                priority_queues
% 3.41/1.00  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 3.41/1.00  --res_passive_queues_freq               [15;5]
% 3.41/1.00  --res_forward_subs                      full
% 3.41/1.00  --res_backward_subs                     full
% 3.41/1.00  --res_forward_subs_resolution           true
% 3.41/1.00  --res_backward_subs_resolution          true
% 3.41/1.00  --res_orphan_elimination                true
% 3.41/1.00  --res_time_limit                        2.
% 3.41/1.00  --res_out_proof                         true
% 3.41/1.00  
% 3.41/1.00  ------ Superposition Options
% 3.41/1.00  
% 3.41/1.00  --superposition_flag                    true
% 3.41/1.00  --sup_passive_queue_type                priority_queues
% 3.41/1.00  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 3.41/1.00  --sup_passive_queues_freq               [8;1;4]
% 3.41/1.00  --demod_completeness_check              fast
% 3.41/1.00  --demod_use_ground                      true
% 3.41/1.00  --sup_to_prop_solver                    passive
% 3.41/1.00  --sup_prop_simpl_new                    true
% 3.41/1.00  --sup_prop_simpl_given                  true
% 3.41/1.00  --sup_fun_splitting                     false
% 3.41/1.00  --sup_smt_interval                      50000
% 3.41/1.00  
% 3.41/1.00  ------ Superposition Simplification Setup
% 3.41/1.00  
% 3.41/1.00  --sup_indices_passive                   []
% 3.41/1.00  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/1.00  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/1.00  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 3.41/1.00  --sup_full_triv                         [TrivRules;PropSubs]
% 3.41/1.00  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/1.00  --sup_full_bw                           [BwDemod]
% 3.41/1.00  --sup_immed_triv                        [TrivRules]
% 3.41/1.00  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 3.41/1.00  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/1.00  --sup_immed_bw_main                     []
% 3.41/1.00  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.41/1.00  --sup_input_triv                        [Unflattening;TrivRules]
% 3.41/1.00  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 3.41/1.00  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 3.41/1.00  
% 3.41/1.00  ------ Combination Options
% 3.41/1.00  
% 3.41/1.00  --comb_res_mult                         3
% 3.41/1.00  --comb_sup_mult                         2
% 3.41/1.00  --comb_inst_mult                        10
% 3.41/1.00  
% 3.41/1.00  ------ Debug Options
% 3.41/1.00  
% 3.41/1.00  --dbg_backtrace                         false
% 3.41/1.00  --dbg_dump_prop_clauses                 false
% 3.41/1.00  --dbg_dump_prop_clauses_file            -
% 3.41/1.00  --dbg_out_stat                          false
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  ------ Proving...
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  % SZS status Theorem for theBenchmark.p
% 3.41/1.00  
% 3.41/1.00   Resolution empty clause
% 3.41/1.00  
% 3.41/1.00  % SZS output start CNFRefutation for theBenchmark.p
% 3.41/1.00  
% 3.41/1.00  fof(f11,axiom,(
% 3.41/1.00    ! [X0] : v1_relat_1(k6_relat_1(X0))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f50,plain,(
% 3.41/1.00    ( ! [X0] : (v1_relat_1(k6_relat_1(X0))) )),
% 3.41/1.00    inference(cnf_transformation,[],[f11])).
% 3.41/1.00  
% 3.41/1.00  fof(f12,axiom,(
% 3.41/1.00    ! [X0,X1] : (v1_relat_1(X1) => k5_relat_1(X1,k6_relat_1(X0)) = k8_relat_1(X0,X1))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f27,plain,(
% 3.41/1.00    ! [X0,X1] : (k5_relat_1(X1,k6_relat_1(X0)) = k8_relat_1(X0,X1) | ~v1_relat_1(X1))),
% 3.41/1.00    inference(ennf_transformation,[],[f12])).
% 3.41/1.00  
% 3.41/1.00  fof(f51,plain,(
% 3.41/1.00    ( ! [X0,X1] : (k5_relat_1(X1,k6_relat_1(X0)) = k8_relat_1(X0,X1) | ~v1_relat_1(X1)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f27])).
% 3.41/1.00  
% 3.41/1.00  fof(f22,axiom,(
% 3.41/1.00    ! [X0,X1] : (v1_relat_1(X1) => k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f36,plain,(
% 3.41/1.00    ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0) | ~v1_relat_1(X1))),
% 3.41/1.00    inference(ennf_transformation,[],[f22])).
% 3.41/1.00  
% 3.41/1.00  fof(f62,plain,(
% 3.41/1.00    ( ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0) | ~v1_relat_1(X1)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f36])).
% 3.41/1.00  
% 3.41/1.00  fof(f21,axiom,(
% 3.41/1.00    ! [X0,X1] : (v1_relat_1(X1) => k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f35,plain,(
% 3.41/1.00    ! [X0,X1] : (k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1))),
% 3.41/1.00    inference(ennf_transformation,[],[f21])).
% 3.41/1.00  
% 3.41/1.00  fof(f61,plain,(
% 3.41/1.00    ( ! [X0,X1] : (k3_xboole_0(k1_relat_1(X1),X0) = k1_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f35])).
% 3.41/1.00  
% 3.41/1.00  fof(f2,axiom,(
% 3.41/1.00    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f41,plain,(
% 3.41/1.00    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 3.41/1.00    inference(cnf_transformation,[],[f2])).
% 3.41/1.00  
% 3.41/1.00  fof(f71,plain,(
% 3.41/1.00    ( ! [X0,X1] : (k4_xboole_0(k1_relat_1(X1),k4_xboole_0(k1_relat_1(X1),X0)) = k1_relat_1(k7_relat_1(X1,X0)) | ~v1_relat_1(X1)) )),
% 3.41/1.00    inference(definition_unfolding,[],[f61,f41])).
% 3.41/1.00  
% 3.41/1.00  fof(f17,axiom,(
% 3.41/1.00    ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0 & k1_relat_1(k6_relat_1(X0)) = X0)),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f56,plain,(
% 3.41/1.00    ( ! [X0] : (k1_relat_1(k6_relat_1(X0)) = X0) )),
% 3.41/1.00    inference(cnf_transformation,[],[f17])).
% 3.41/1.00  
% 3.41/1.00  fof(f1,axiom,(
% 3.41/1.00    ! [X0,X1] : r1_tarski(k3_xboole_0(X0,X1),X0)),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f40,plain,(
% 3.41/1.00    ( ! [X0,X1] : (r1_tarski(k3_xboole_0(X0,X1),X0)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f1])).
% 3.41/1.00  
% 3.41/1.00  fof(f69,plain,(
% 3.41/1.00    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0)) )),
% 3.41/1.00    inference(definition_unfolding,[],[f40,f41])).
% 3.41/1.00  
% 3.41/1.00  fof(f19,axiom,(
% 3.41/1.00    ! [X0,X1] : (v1_relat_1(X1) => (r1_tarski(k1_relat_1(X1),X0) => k5_relat_1(k6_relat_1(X0),X1) = X1))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f32,plain,(
% 3.41/1.00    ! [X0,X1] : ((k5_relat_1(k6_relat_1(X0),X1) = X1 | ~r1_tarski(k1_relat_1(X1),X0)) | ~v1_relat_1(X1))),
% 3.41/1.00    inference(ennf_transformation,[],[f19])).
% 3.41/1.00  
% 3.41/1.00  fof(f33,plain,(
% 3.41/1.00    ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1))),
% 3.41/1.00    inference(flattening,[],[f32])).
% 3.41/1.00  
% 3.41/1.00  fof(f59,plain,(
% 3.41/1.00    ( ! [X0,X1] : (k5_relat_1(k6_relat_1(X0),X1) = X1 | ~r1_tarski(k1_relat_1(X1),X0) | ~v1_relat_1(X1)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f33])).
% 3.41/1.00  
% 3.41/1.00  fof(f10,axiom,(
% 3.41/1.00    ! [X0,X1] : ((v1_relat_1(X1) & v1_relat_1(X0)) => v1_relat_1(k5_relat_1(X0,X1)))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f25,plain,(
% 3.41/1.00    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | (~v1_relat_1(X1) | ~v1_relat_1(X0)))),
% 3.41/1.00    inference(ennf_transformation,[],[f10])).
% 3.41/1.00  
% 3.41/1.00  fof(f26,plain,(
% 3.41/1.00    ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0))),
% 3.41/1.00    inference(flattening,[],[f25])).
% 3.41/1.00  
% 3.41/1.00  fof(f49,plain,(
% 3.41/1.00    ( ! [X0,X1] : (v1_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f26])).
% 3.41/1.00  
% 3.41/1.00  fof(f13,axiom,(
% 3.41/1.00    ! [X0,X1] : (v1_relat_1(X1) => ! [X2] : (v1_relat_1(X2) => k5_relat_1(X1,k8_relat_1(X0,X2)) = k8_relat_1(X0,k5_relat_1(X1,X2))))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f28,plain,(
% 3.41/1.00    ! [X0,X1] : (! [X2] : (k5_relat_1(X1,k8_relat_1(X0,X2)) = k8_relat_1(X0,k5_relat_1(X1,X2)) | ~v1_relat_1(X2)) | ~v1_relat_1(X1))),
% 3.41/1.00    inference(ennf_transformation,[],[f13])).
% 3.41/1.00  
% 3.41/1.00  fof(f52,plain,(
% 3.41/1.00    ( ! [X2,X0,X1] : (k5_relat_1(X1,k8_relat_1(X0,X2)) = k8_relat_1(X0,k5_relat_1(X1,X2)) | ~v1_relat_1(X2) | ~v1_relat_1(X1)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f28])).
% 3.41/1.00  
% 3.41/1.00  fof(f15,axiom,(
% 3.41/1.00    ! [X0] : (v1_relat_1(X0) => ! [X1] : (v1_relat_1(X1) => k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1))))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f30,plain,(
% 3.41/1.00    ! [X0] : (! [X1] : (k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1)) | ~v1_relat_1(X0))),
% 3.41/1.00    inference(ennf_transformation,[],[f15])).
% 3.41/1.00  
% 3.41/1.00  fof(f54,plain,(
% 3.41/1.00    ( ! [X0,X1] : (k5_relat_1(k4_relat_1(X1),k4_relat_1(X0)) = k4_relat_1(k5_relat_1(X0,X1)) | ~v1_relat_1(X1) | ~v1_relat_1(X0)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f30])).
% 3.41/1.00  
% 3.41/1.00  fof(f18,axiom,(
% 3.41/1.00    ! [X0] : k6_relat_1(X0) = k4_relat_1(k6_relat_1(X0))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f58,plain,(
% 3.41/1.00    ( ! [X0] : (k6_relat_1(X0) = k4_relat_1(k6_relat_1(X0))) )),
% 3.41/1.00    inference(cnf_transformation,[],[f18])).
% 3.41/1.00  
% 3.41/1.00  fof(f20,axiom,(
% 3.41/1.00    ! [X0] : (v1_relat_1(X0) => k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0)),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f34,plain,(
% 3.41/1.00    ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0))),
% 3.41/1.00    inference(ennf_transformation,[],[f20])).
% 3.41/1.00  
% 3.41/1.00  fof(f60,plain,(
% 3.41/1.00    ( ! [X0] : (k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 | ~v1_relat_1(X0)) )),
% 3.41/1.00    inference(cnf_transformation,[],[f34])).
% 3.41/1.00  
% 3.41/1.00  fof(f57,plain,(
% 3.41/1.00    ( ! [X0] : (k2_relat_1(k6_relat_1(X0)) = X0) )),
% 3.41/1.00    inference(cnf_transformation,[],[f17])).
% 3.41/1.00  
% 3.41/1.00  fof(f23,conjecture,(
% 3.41/1.00    ! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))),
% 3.41/1.00    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 3.41/1.00  
% 3.41/1.00  fof(f24,negated_conjecture,(
% 3.41/1.00    ~! [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) = k6_relat_1(k3_xboole_0(X0,X1))),
% 3.41/1.00    inference(negated_conjecture,[],[f23])).
% 3.41/1.00  
% 3.41/1.00  fof(f37,plain,(
% 3.41/1.00    ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1))),
% 3.41/1.00    inference(ennf_transformation,[],[f24])).
% 3.41/1.00  
% 3.41/1.00  fof(f38,plain,(
% 3.41/1.00    ? [X0,X1] : k5_relat_1(k6_relat_1(X1),k6_relat_1(X0)) != k6_relat_1(k3_xboole_0(X0,X1)) => k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1))),
% 3.41/1.00    introduced(choice_axiom,[])).
% 3.41/1.00  
% 3.41/1.00  fof(f39,plain,(
% 3.41/1.00    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1))),
% 3.41/1.00    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f37,f38])).
% 3.41/1.00  
% 3.41/1.00  fof(f63,plain,(
% 3.41/1.00    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k3_xboole_0(sK0,sK1))),
% 3.41/1.00    inference(cnf_transformation,[],[f39])).
% 3.41/1.00  
% 3.41/1.00  fof(f72,plain,(
% 3.41/1.00    k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)))),
% 3.41/1.00    inference(definition_unfolding,[],[f63,f41])).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3,plain,
% 3.41/1.00      ( v1_relat_1(k6_relat_1(X0)) ),
% 3.41/1.00      inference(cnf_transformation,[],[f50]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_438,plain,
% 3.41/1.00      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4,plain,
% 3.41/1.00      ( ~ v1_relat_1(X0) | k5_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,X0) ),
% 3.41/1.00      inference(cnf_transformation,[],[f51]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_437,plain,
% 3.41/1.00      ( k5_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,X0)
% 3.41/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_4]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1885,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k8_relat_1(X1,k6_relat_1(X0)) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_438,c_437]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_15,plain,
% 3.41/1.00      ( ~ v1_relat_1(X0) | k5_relat_1(k6_relat_1(X1),X0) = k7_relat_1(X0,X1) ),
% 3.41/1.00      inference(cnf_transformation,[],[f62]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_429,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),X1) = k7_relat_1(X1,X0)
% 3.41/1.00      | v1_relat_1(X1) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_15]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1281,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k7_relat_1(k6_relat_1(X1),X0) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_438,c_429]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1888,plain,
% 3.41/1.00      ( k7_relat_1(k6_relat_1(X0),X1) = k8_relat_1(X0,k6_relat_1(X1)) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_1885,c_1281]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_14,plain,
% 3.41/1.00      ( ~ v1_relat_1(X0)
% 3.41/1.00      | k4_xboole_0(k1_relat_1(X0),k4_xboole_0(k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1)) ),
% 3.41/1.00      inference(cnf_transformation,[],[f71]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_430,plain,
% 3.41/1.00      ( k4_xboole_0(k1_relat_1(X0),k4_xboole_0(k1_relat_1(X0),X1)) = k1_relat_1(k7_relat_1(X0,X1))
% 3.41/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_14]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_845,plain,
% 3.41/1.00      ( k4_xboole_0(k1_relat_1(k6_relat_1(X0)),k4_xboole_0(k1_relat_1(k6_relat_1(X0)),X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_438,c_430]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_10,plain,
% 3.41/1.00      ( k1_relat_1(k6_relat_1(X0)) = X0 ),
% 3.41/1.00      inference(cnf_transformation,[],[f56]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_846,plain,
% 3.41/1.00      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)) ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_845,c_10]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_0,plain,
% 3.41/1.00      ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) ),
% 3.41/1.00      inference(cnf_transformation,[],[f69]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_440,plain,
% 3.41/1.00      ( r1_tarski(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X0) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_0]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1111,plain,
% 3.41/1.00      ( r1_tarski(k1_relat_1(k7_relat_1(k6_relat_1(X0),X1)),X0) = iProver_top ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_846,c_440]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3392,plain,
% 3.41/1.00      ( r1_tarski(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))),X0) = iProver_top ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_1888,c_1111]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_12,plain,
% 3.41/1.00      ( ~ r1_tarski(k1_relat_1(X0),X1)
% 3.41/1.00      | ~ v1_relat_1(X0)
% 3.41/1.00      | k5_relat_1(k6_relat_1(X1),X0) = X0 ),
% 3.41/1.00      inference(cnf_transformation,[],[f59]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_432,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),X1) = X1
% 3.41/1.00      | r1_tarski(k1_relat_1(X1),X0) != iProver_top
% 3.41/1.00      | v1_relat_1(X1) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_12]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3457,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1))
% 3.41/1.00      | v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) != iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_3392,c_432]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2,plain,
% 3.41/1.00      ( ~ v1_relat_1(X0) | ~ v1_relat_1(X1) | v1_relat_1(k5_relat_1(X1,X0)) ),
% 3.41/1.00      inference(cnf_transformation,[],[f49]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_439,plain,
% 3.41/1.00      ( v1_relat_1(X0) != iProver_top
% 3.41/1.00      | v1_relat_1(X1) != iProver_top
% 3.41/1.00      | v1_relat_1(k5_relat_1(X1,X0)) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_2]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3232,plain,
% 3.41/1.00      ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top
% 3.41/1.00      | v1_relat_1(k6_relat_1(X0)) != iProver_top
% 3.41/1.00      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_1885,c_439]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_47,plain,
% 3.41/1.00      ( v1_relat_1(k6_relat_1(X0)) = iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_3]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4978,plain,
% 3.41/1.00      ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top
% 3.41/1.00      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 3.41/1.00      inference(global_propositional_subsumption,[status(thm)],[c_3232,c_47]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4984,plain,
% 3.41/1.00      ( v1_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = iProver_top ),
% 3.41/1.00      inference(forward_subsumption_resolution,[status(thm)],[c_4978,c_438]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5366,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1)) ),
% 3.41/1.00      inference(global_propositional_subsumption,[status(thm)],[c_3457,c_4984]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5,plain,
% 3.41/1.00      ( ~ v1_relat_1(X0)
% 3.41/1.00      | ~ v1_relat_1(X1)
% 3.41/1.00      | k8_relat_1(X2,k5_relat_1(X0,X1)) = k5_relat_1(X0,k8_relat_1(X2,X1)) ),
% 3.41/1.00      inference(cnf_transformation,[],[f52]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_436,plain,
% 3.41/1.00      ( k8_relat_1(X0,k5_relat_1(X1,X2)) = k5_relat_1(X1,k8_relat_1(X0,X2))
% 3.41/1.00      | v1_relat_1(X1) != iProver_top
% 3.41/1.00      | v1_relat_1(X2) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_5]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3893,plain,
% 3.41/1.00      ( k8_relat_1(X0,k5_relat_1(k6_relat_1(X1),X2)) = k5_relat_1(k6_relat_1(X1),k8_relat_1(X0,X2))
% 3.41/1.00      | v1_relat_1(X2) != iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_438,c_436]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4892,plain,
% 3.41/1.00      ( k8_relat_1(X0,k5_relat_1(k6_relat_1(X1),k6_relat_1(X2))) = k5_relat_1(k6_relat_1(X1),k8_relat_1(X0,k6_relat_1(X2))) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_438,c_3893]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4894,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),k8_relat_1(X1,k6_relat_1(X2))) = k8_relat_1(X1,k8_relat_1(X2,k6_relat_1(X0))) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_4892,c_1885]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5374,plain,
% 3.41/1.00      ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X0))) = k8_relat_1(X0,k6_relat_1(X1)) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_5366,c_4894]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_7,plain,
% 3.41/1.00      ( ~ v1_relat_1(X0)
% 3.41/1.00      | ~ v1_relat_1(X1)
% 3.41/1.00      | k5_relat_1(k4_relat_1(X0),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,X0)) ),
% 3.41/1.00      inference(cnf_transformation,[],[f54]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_434,plain,
% 3.41/1.00      ( k5_relat_1(k4_relat_1(X0),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,X0))
% 3.41/1.00      | v1_relat_1(X0) != iProver_top
% 3.41/1.00      | v1_relat_1(X1) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_7]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2048,plain,
% 3.41/1.00      ( k5_relat_1(k4_relat_1(k6_relat_1(X0)),k4_relat_1(X1)) = k4_relat_1(k5_relat_1(X1,k6_relat_1(X0)))
% 3.41/1.00      | v1_relat_1(X1) != iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_438,c_434]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_11,plain,
% 3.41/1.00      ( k4_relat_1(k6_relat_1(X0)) = k6_relat_1(X0) ),
% 3.41/1.00      inference(cnf_transformation,[],[f58]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2049,plain,
% 3.41/1.00      ( k4_relat_1(k5_relat_1(X0,k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X1),k4_relat_1(X0))
% 3.41/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_2048,c_11]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4993,plain,
% 3.41/1.00      ( k4_relat_1(k5_relat_1(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X2))) = k5_relat_1(k6_relat_1(X2),k4_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_4984,c_2049]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4995,plain,
% 3.41/1.00      ( k5_relat_1(k8_relat_1(X0,k6_relat_1(X1)),k6_relat_1(X2)) = k8_relat_1(X2,k8_relat_1(X0,k6_relat_1(X1))) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_4984,c_437]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5010,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),k4_relat_1(k8_relat_1(X1,k6_relat_1(X2)))) = k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2)))) ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_4993,c_4995]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2400,plain,
% 3.41/1.00      ( k4_relat_1(k5_relat_1(k6_relat_1(X0),k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X1),k4_relat_1(k6_relat_1(X0))) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_438,c_2049]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2401,plain,
% 3.41/1.00      ( k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_2400,c_11,c_1885]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_2402,plain,
% 3.41/1.00      ( k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X1,k6_relat_1(X0)) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_2401,c_1885]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5012,plain,
% 3.41/1.00      ( k4_relat_1(k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X2)))) = k8_relat_1(X2,k8_relat_1(X1,k6_relat_1(X0))) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_5010,c_2402,c_4894]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5483,plain,
% 3.41/1.00      ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(X0))) = k4_relat_1(k8_relat_1(X0,k6_relat_1(X1))) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_5374,c_5012]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5484,plain,
% 3.41/1.00      ( k8_relat_1(X0,k6_relat_1(X1)) = k8_relat_1(X1,k6_relat_1(X0)) ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_5483,c_2402,c_5374]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3301,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X1)) = k6_relat_1(X1)
% 3.41/1.00      | r1_tarski(X1,X0) != iProver_top
% 3.41/1.00      | v1_relat_1(k6_relat_1(X1)) != iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_10,c_432]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3305,plain,
% 3.41/1.00      ( k8_relat_1(X0,k6_relat_1(X1)) = k6_relat_1(X0)
% 3.41/1.00      | r1_tarski(X0,X1) != iProver_top
% 3.41/1.00      | v1_relat_1(k6_relat_1(X0)) != iProver_top ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_3301,c_1885]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5328,plain,
% 3.41/1.00      ( r1_tarski(X0,X1) != iProver_top
% 3.41/1.00      | k8_relat_1(X0,k6_relat_1(X1)) = k6_relat_1(X0) ),
% 3.41/1.00      inference(global_propositional_subsumption,[status(thm)],[c_3305,c_47]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5329,plain,
% 3.41/1.00      ( k8_relat_1(X0,k6_relat_1(X1)) = k6_relat_1(X0)
% 3.41/1.00      | r1_tarski(X0,X1) != iProver_top ),
% 3.41/1.00      inference(renaming,[status(thm)],[c_5328]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5336,plain,
% 3.41/1.00      ( k8_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))),k6_relat_1(X0)) = k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_3392,c_5329]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_6570,plain,
% 3.41/1.00      ( k8_relat_1(X0,k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))))) = k4_relat_1(k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))))) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_5336,c_2402]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_6615,plain,
% 3.41/1.00      ( k8_relat_1(X0,k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1))))) = k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_6570,c_11]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_6728,plain,
% 3.41/1.00      ( k8_relat_1(X0,k6_relat_1(k1_relat_1(k8_relat_1(X1,k6_relat_1(X0))))) = k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_5484,c_6615]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_13,plain,
% 3.41/1.00      ( ~ v1_relat_1(X0) | k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0 ),
% 3.41/1.00      inference(cnf_transformation,[],[f60]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_431,plain,
% 3.41/1.00      ( k5_relat_1(X0,k6_relat_1(k2_relat_1(X0))) = X0
% 3.41/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.41/1.00      inference(predicate_to_equality,[status(thm)],[c_13]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_678,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(k2_relat_1(k6_relat_1(X0)))) = k6_relat_1(X0) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_438,c_431]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_9,plain,
% 3.41/1.00      ( k2_relat_1(k6_relat_1(X0)) = X0 ),
% 3.41/1.00      inference(cnf_transformation,[],[f57]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_679,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(X0),k6_relat_1(X0)) = k6_relat_1(X0) ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_678,c_9]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1616,plain,
% 3.41/1.00      ( k7_relat_1(k6_relat_1(X0),X0) = k6_relat_1(X0) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_679,c_1281]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1830,plain,
% 3.41/1.00      ( r1_tarski(k1_relat_1(k6_relat_1(X0)),X0) = iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_1616,c_1111]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1831,plain,
% 3.41/1.00      ( r1_tarski(X0,X0) = iProver_top ),
% 3.41/1.00      inference(light_normalisation,[status(thm)],[c_1830,c_10]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3300,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(k1_relat_1(X0)),X0) = X0
% 3.41/1.00      | v1_relat_1(X0) != iProver_top ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_1831,c_432]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_4992,plain,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))),k8_relat_1(X0,k6_relat_1(X1))) = k8_relat_1(X0,k6_relat_1(X1)) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_4984,c_3300]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5208,plain,
% 3.41/1.00      ( k8_relat_1(X0,k8_relat_1(X1,k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))))) = k8_relat_1(X0,k6_relat_1(X1)) ),
% 3.41/1.00      inference(superposition,[status(thm)],[c_4992,c_4894]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_6947,plain,
% 3.41/1.00      ( k8_relat_1(X0,k6_relat_1(k1_relat_1(k8_relat_1(X1,k6_relat_1(X0))))) = k8_relat_1(X0,k6_relat_1(X1)) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_6728,c_5208]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_7139,plain,
% 3.41/1.00      ( k6_relat_1(k1_relat_1(k8_relat_1(X0,k6_relat_1(X1)))) = k8_relat_1(X0,k6_relat_1(X1)) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_6947,c_6728]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_16,negated_conjecture,
% 3.41/1.00      ( k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) != k6_relat_1(k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))) ),
% 3.41/1.00      inference(cnf_transformation,[],[f72]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1113,plain,
% 3.41/1.00      ( k6_relat_1(k1_relat_1(k7_relat_1(k6_relat_1(sK0),sK1))) != k5_relat_1(k6_relat_1(sK1),k6_relat_1(sK0)) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_846,c_16]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_1615,plain,
% 3.41/1.00      ( k6_relat_1(k1_relat_1(k7_relat_1(k6_relat_1(sK0),sK1))) != k7_relat_1(k6_relat_1(sK0),sK1) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_1281,c_1113]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_3394,plain,
% 3.41/1.00      ( k6_relat_1(k1_relat_1(k8_relat_1(sK0,k6_relat_1(sK1)))) != k8_relat_1(sK0,k6_relat_1(sK1)) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_1888,c_1615]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_5490,plain,
% 3.41/1.00      ( k6_relat_1(k1_relat_1(k8_relat_1(sK1,k6_relat_1(sK0)))) != k8_relat_1(sK1,k6_relat_1(sK0)) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_5484,c_3394]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_7310,plain,
% 3.41/1.00      ( k8_relat_1(sK1,k6_relat_1(sK0)) != k8_relat_1(sK1,k6_relat_1(sK0)) ),
% 3.41/1.00      inference(demodulation,[status(thm)],[c_7139,c_5490]) ).
% 3.41/1.00  
% 3.41/1.00  cnf(c_7311,plain,
% 3.41/1.00      ( $false ),
% 3.41/1.00      inference(equality_resolution_simp,[status(thm)],[c_7310]) ).
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  % SZS output end CNFRefutation for theBenchmark.p
% 3.41/1.00  
% 3.41/1.00  ------                               Statistics
% 3.41/1.00  
% 3.41/1.00  ------ General
% 3.41/1.00  
% 3.41/1.00  abstr_ref_over_cycles:                  0
% 3.41/1.00  abstr_ref_under_cycles:                 0
% 3.41/1.00  gc_basic_clause_elim:                   0
% 3.41/1.00  forced_gc_time:                         0
% 3.41/1.00  parsing_time:                           0.009
% 3.41/1.00  unif_index_cands_time:                  0.
% 3.41/1.00  unif_index_add_time:                    0.
% 3.41/1.00  orderings_time:                         0.
% 3.41/1.00  out_proof_time:                         0.009
% 3.41/1.00  total_time:                             0.279
% 3.41/1.00  num_of_symbols:                         45
% 3.41/1.00  num_of_terms:                           11492
% 3.41/1.00  
% 3.41/1.00  ------ Preprocessing
% 3.41/1.00  
% 3.41/1.00  num_of_splits:                          0
% 3.41/1.00  num_of_split_atoms:                     0
% 3.41/1.00  num_of_reused_defs:                     0
% 3.41/1.00  num_eq_ax_congr_red:                    22
% 3.41/1.00  num_of_sem_filtered_clauses:            1
% 3.41/1.00  num_of_subtypes:                        0
% 3.41/1.00  monotx_restored_types:                  0
% 3.41/1.00  sat_num_of_epr_types:                   0
% 3.41/1.00  sat_num_of_non_cyclic_types:            0
% 3.41/1.00  sat_guarded_non_collapsed_types:        0
% 3.41/1.00  num_pure_diseq_elim:                    0
% 3.41/1.00  simp_replaced_by:                       0
% 3.41/1.00  res_preprocessed:                       76
% 3.41/1.00  prep_upred:                             0
% 3.41/1.00  prep_unflattend:                        2
% 3.41/1.00  smt_new_axioms:                         0
% 3.41/1.00  pred_elim_cands:                        2
% 3.41/1.00  pred_elim:                              0
% 3.41/1.00  pred_elim_cl:                           0
% 3.41/1.00  pred_elim_cycles:                       1
% 3.41/1.00  merged_defs:                            0
% 3.41/1.00  merged_defs_ncl:                        0
% 3.41/1.00  bin_hyper_res:                          0
% 3.41/1.00  prep_cycles:                            3
% 3.41/1.00  pred_elim_time:                         0.001
% 3.41/1.00  splitting_time:                         0.
% 3.41/1.00  sem_filter_time:                        0.
% 3.41/1.00  monotx_time:                            0.
% 3.41/1.00  subtype_inf_time:                       0.
% 3.41/1.00  
% 3.41/1.00  ------ Problem properties
% 3.41/1.00  
% 3.41/1.00  clauses:                                17
% 3.41/1.00  conjectures:                            1
% 3.41/1.00  epr:                                    0
% 3.41/1.00  horn:                                   17
% 3.41/1.00  ground:                                 1
% 3.41/1.00  unary:                                  7
% 3.41/1.00  binary:                                 4
% 3.41/1.00  lits:                                   34
% 3.41/1.00  lits_eq:                                13
% 3.41/1.00  fd_pure:                                0
% 3.41/1.00  fd_pseudo:                              0
% 3.41/1.00  fd_cond:                                0
% 3.41/1.00  fd_pseudo_cond:                         0
% 3.41/1.00  ac_symbols:                             0
% 3.41/1.00  
% 3.41/1.00  ------ Propositional Solver
% 3.41/1.00  
% 3.41/1.00  prop_solver_calls:                      24
% 3.41/1.00  prop_fast_solver_calls:                 493
% 3.41/1.00  smt_solver_calls:                       0
% 3.41/1.00  smt_fast_solver_calls:                  0
% 3.41/1.00  prop_num_of_clauses:                    3213
% 3.41/1.00  prop_preprocess_simplified:             6676
% 3.41/1.00  prop_fo_subsumed:                       4
% 3.41/1.00  prop_solver_time:                       0.
% 3.41/1.00  smt_solver_time:                        0.
% 3.41/1.00  smt_fast_solver_time:                   0.
% 3.41/1.00  prop_fast_solver_time:                  0.
% 3.41/1.00  prop_unsat_core_time:                   0.
% 3.41/1.00  
% 3.41/1.00  ------ QBF
% 3.41/1.00  
% 3.41/1.00  qbf_q_res:                              0
% 3.41/1.00  qbf_num_tautologies:                    0
% 3.41/1.00  qbf_prep_cycles:                        0
% 3.41/1.00  
% 3.41/1.00  ------ BMC1
% 3.41/1.00  
% 3.41/1.00  bmc1_current_bound:                     -1
% 3.41/1.00  bmc1_last_solved_bound:                 -1
% 3.41/1.00  bmc1_unsat_core_size:                   -1
% 3.41/1.00  bmc1_unsat_core_parents_size:           -1
% 3.41/1.00  bmc1_merge_next_fun:                    0
% 3.41/1.00  bmc1_unsat_core_clauses_time:           0.
% 3.41/1.00  
% 3.41/1.00  ------ Instantiation
% 3.41/1.00  
% 3.41/1.00  inst_num_of_clauses:                    898
% 3.41/1.00  inst_num_in_passive:                    37
% 3.41/1.00  inst_num_in_active:                     486
% 3.41/1.00  inst_num_in_unprocessed:                375
% 3.41/1.00  inst_num_of_loops:                      510
% 3.41/1.00  inst_num_of_learning_restarts:          0
% 3.41/1.00  inst_num_moves_active_passive:          23
% 3.41/1.00  inst_lit_activity:                      0
% 3.41/1.00  inst_lit_activity_moves:                1
% 3.41/1.00  inst_num_tautologies:                   0
% 3.41/1.00  inst_num_prop_implied:                  0
% 3.41/1.00  inst_num_existing_simplified:           0
% 3.41/1.00  inst_num_eq_res_simplified:             0
% 3.41/1.00  inst_num_child_elim:                    0
% 3.41/1.00  inst_num_of_dismatching_blockings:      160
% 3.41/1.00  inst_num_of_non_proper_insts:           420
% 3.41/1.00  inst_num_of_duplicates:                 0
% 3.41/1.00  inst_inst_num_from_inst_to_res:         0
% 3.41/1.00  inst_dismatching_checking_time:         0.
% 3.41/1.00  
% 3.41/1.00  ------ Resolution
% 3.41/1.00  
% 3.41/1.00  res_num_of_clauses:                     0
% 3.41/1.00  res_num_in_passive:                     0
% 3.41/1.00  res_num_in_active:                      0
% 3.41/1.00  res_num_of_loops:                       79
% 3.41/1.00  res_forward_subset_subsumed:            60
% 3.41/1.00  res_backward_subset_subsumed:           0
% 3.41/1.00  res_forward_subsumed:                   0
% 3.41/1.00  res_backward_subsumed:                  0
% 3.41/1.00  res_forward_subsumption_resolution:     0
% 3.41/1.00  res_backward_subsumption_resolution:    0
% 3.41/1.00  res_clause_to_clause_subsumption:       989
% 3.41/1.00  res_orphan_elimination:                 0
% 3.41/1.00  res_tautology_del:                      43
% 3.41/1.00  res_num_eq_res_simplified:              0
% 3.41/1.00  res_num_sel_changes:                    0
% 3.41/1.00  res_moves_from_active_to_pass:          0
% 3.41/1.00  
% 3.41/1.00  ------ Superposition
% 3.41/1.00  
% 3.41/1.00  sup_time_total:                         0.
% 3.41/1.00  sup_time_generating:                    0.
% 3.41/1.00  sup_time_sim_full:                      0.
% 3.41/1.00  sup_time_sim_immed:                     0.
% 3.41/1.00  
% 3.41/1.00  sup_num_of_clauses:                     209
% 3.41/1.00  sup_num_in_active:                      80
% 3.41/1.00  sup_num_in_passive:                     129
% 3.41/1.00  sup_num_of_loops:                       101
% 3.41/1.00  sup_fw_superposition:                   471
% 3.41/1.00  sup_bw_superposition:                   499
% 3.41/1.00  sup_immediate_simplified:               351
% 3.41/1.00  sup_given_eliminated:                   0
% 3.41/1.00  comparisons_done:                       0
% 3.41/1.00  comparisons_avoided:                    0
% 3.41/1.00  
% 3.41/1.00  ------ Simplifications
% 3.41/1.00  
% 3.41/1.00  
% 3.41/1.00  sim_fw_subset_subsumed:                 2
% 3.41/1.00  sim_bw_subset_subsumed:                 0
% 3.41/1.00  sim_fw_subsumed:                        59
% 3.41/1.00  sim_bw_subsumed:                        0
% 3.41/1.00  sim_fw_subsumption_res:                 3
% 3.41/1.00  sim_bw_subsumption_res:                 0
% 3.41/1.00  sim_tautology_del:                      6
% 3.41/1.00  sim_eq_tautology_del:                   92
% 3.41/1.00  sim_eq_res_simp:                        0
% 3.41/1.00  sim_fw_demodulated:                     150
% 3.41/1.00  sim_bw_demodulated:                     26
% 3.41/1.00  sim_light_normalised:                   188
% 3.41/1.00  sim_joinable_taut:                      0
% 3.41/1.00  sim_joinable_simp:                      0
% 3.41/1.00  sim_ac_normalised:                      0
% 3.41/1.00  sim_smt_subsumption:                    0
% 3.41/1.00  
%------------------------------------------------------------------------------
