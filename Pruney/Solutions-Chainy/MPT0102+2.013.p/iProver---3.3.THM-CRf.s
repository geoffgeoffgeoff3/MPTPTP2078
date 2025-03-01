%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:25:04 EST 2020

% Result     : Theorem 11.97s
% Output     : CNFRefutation 11.97s
% Verified   : 
% Statistics : Number of formulae       :  117 (2333 expanded)
%              Number of clauses        :   86 (1116 expanded)
%              Number of leaves         :   12 ( 530 expanded)
%              Depth                    :   28
%              Number of atoms          :  137 (3366 expanded)
%              Number of equality atoms :  120 (2363 expanded)
%              Maximal formula depth    :    6 (   2 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f8,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f2,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f2])).

fof(f10,axiom,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f10])).

fof(f30,plain,(
    ! [X0,X1] : k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(definition_unfolding,[],[f19,f28,f28])).

fof(f7,axiom,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f7])).

fof(f4,axiom,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
    <=> r1_tarski(X0,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] :
      ( ( k4_xboole_0(X0,X1) = k1_xboole_0
        | ~ r1_tarski(X0,X1) )
      & ( r1_tarski(X0,X1)
        | k4_xboole_0(X0,X1) != k1_xboole_0 ) ) ),
    inference(nnf_transformation,[],[f4])).

fof(f22,plain,(
    ! [X0,X1] :
      ( k4_xboole_0(X0,X1) = k1_xboole_0
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f15])).

fof(f6,axiom,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f24,plain,(
    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f6])).

fof(f9,axiom,(
    ! [X0,X1,X2] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X2,X0,X1] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f9])).

fof(f21,plain,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
      | k4_xboole_0(X0,X1) != k1_xboole_0 ) ),
    inference(cnf_transformation,[],[f15])).

fof(f5,axiom,(
    ! [X0,X1] :
      ( r1_tarski(X0,X1)
     => k2_xboole_0(X0,X1) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(ennf_transformation,[],[f5])).

fof(f23,plain,(
    ! [X0,X1] :
      ( k2_xboole_0(X0,X1) = X1
      | ~ r1_tarski(X0,X1) ) ),
    inference(cnf_transformation,[],[f13])).

fof(f11,conjecture,(
    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,negated_conjecture,(
    ~ ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    inference(negated_conjecture,[],[f11])).

fof(f14,plain,(
    ? [X0,X1] : k3_xboole_0(X0,X1) != k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) ),
    inference(ennf_transformation,[],[f12])).

fof(f16,plain,
    ( ? [X0,X1] : k3_xboole_0(X0,X1) != k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))
   => k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1)) ),
    introduced(choice_axiom,[])).

fof(f17,plain,(
    k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f14,f16])).

fof(f29,plain,(
    k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1)) ),
    inference(cnf_transformation,[],[f17])).

fof(f3,axiom,(
    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k5_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k5_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f3])).

fof(f31,plain,(
    k2_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1)),k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(definition_unfolding,[],[f29,f28,f20,f20])).

cnf(c_0,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f18])).

cnf(c_7,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_371,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),X0) = k4_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_0,c_7])).

cnf(c_1,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_845,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k4_xboole_0(X0,k4_xboole_0(X0,k2_xboole_0(X0,X1))) ),
    inference(superposition,[status(thm)],[c_371,c_1])).

cnf(c_6,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(cnf_transformation,[],[f25])).

cnf(c_2,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(cnf_transformation,[],[f22])).

cnf(c_48,plain,
    ( ~ r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) = k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_2])).

cnf(c_5,plain,
    ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
    inference(cnf_transformation,[],[f24])).

cnf(c_97,plain,
    ( X0 != X1
    | k4_xboole_0(X0,X2) != X3
    | k4_xboole_0(X3,X1) = k1_xboole_0 ),
    inference(resolution_lifted,[status(thm)],[c_48,c_5])).

cnf(c_98,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),X0) = k1_xboole_0 ),
    inference(unflattening,[status(thm)],[c_97])).

cnf(c_306,plain,
    ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_6,c_98])).

cnf(c_8,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_473,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k4_xboole_0(k1_xboole_0,X1) ),
    inference(superposition,[status(thm)],[c_306,c_8])).

cnf(c_310,plain,
    ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_98,c_6])).

cnf(c_488,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_473,c_310])).

cnf(c_848,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = X0 ),
    inference(light_normalisation,[status(thm)],[c_845,c_6,c_488])).

cnf(c_1819,plain,
    ( k4_xboole_0(k2_xboole_0(X0,k2_xboole_0(X0,X1)),k4_xboole_0(X1,X0)) = X0 ),
    inference(superposition,[status(thm)],[c_371,c_848])).

cnf(c_483,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,X0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_8,c_98])).

cnf(c_3,plain,
    ( r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) != k1_xboole_0 ),
    inference(cnf_transformation,[],[f21])).

cnf(c_46,plain,
    ( r1_tarski(X0,X1)
    | k4_xboole_0(X0,X1) != k1_xboole_0 ),
    inference(prop_impl,[status(thm)],[c_3])).

cnf(c_4,plain,
    ( ~ r1_tarski(X0,X1)
    | k2_xboole_0(X0,X1) = X1 ),
    inference(cnf_transformation,[],[f23])).

cnf(c_82,plain,
    ( k4_xboole_0(X0,X1) != k1_xboole_0
    | k2_xboole_0(X0,X1) = X1 ),
    inference(resolution,[status(thm)],[c_46,c_4])).

cnf(c_761,plain,
    ( k2_xboole_0(X0,k2_xboole_0(X1,X0)) = k2_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_483,c_82])).

cnf(c_1385,plain,
    ( k2_xboole_0(X0,k2_xboole_0(X0,X1)) = k2_xboole_0(X1,X0) ),
    inference(superposition,[status(thm)],[c_0,c_761])).

cnf(c_1855,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = X1 ),
    inference(light_normalisation,[status(thm)],[c_1819,c_1385])).

cnf(c_2570,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X2)) = k4_xboole_0(X1,X2) ),
    inference(superposition,[status(thm)],[c_1855,c_8])).

cnf(c_9,negated_conjecture,
    ( k2_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1)),k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_204,plain,
    ( k2_xboole_0(k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))),k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(demodulation,[status(thm)],[c_0,c_9])).

cnf(c_56844,plain,
    ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)),k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(demodulation,[status(thm)],[c_2570,c_204])).

cnf(c_377,plain,
    ( k4_xboole_0(X0,k1_xboole_0) = k2_xboole_0(X0,k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_7,c_6])).

cnf(c_378,plain,
    ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
    inference(light_normalisation,[status(thm)],[c_377,c_6])).

cnf(c_484,plain,
    ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,X1))) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_8,c_306])).

cnf(c_1831,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X1,X0),X0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_848,c_484])).

cnf(c_1811,plain,
    ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X0),k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
    inference(superposition,[status(thm)],[c_1,c_848])).

cnf(c_91,plain,
    ( X0 != X1
    | k4_xboole_0(X0,X2) != X3
    | k2_xboole_0(X3,X1) = X1 ),
    inference(resolution_lifted,[status(thm)],[c_4,c_5])).

cnf(c_92,plain,
    ( k2_xboole_0(k4_xboole_0(X0,X1),X0) = X0 ),
    inference(unflattening,[status(thm)],[c_91])).

cnf(c_1861,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
    inference(light_normalisation,[status(thm)],[c_1811,c_92])).

cnf(c_8572,plain,
    ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k4_xboole_0(k2_xboole_0(X1,X0),k1_xboole_0)) = k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k2_xboole_0(X1,X0)) ),
    inference(superposition,[status(thm)],[c_1831,c_1861])).

cnf(c_470,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
    inference(superposition,[status(thm)],[c_7,c_8])).

cnf(c_490,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(X1,X2)) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    inference(demodulation,[status(thm)],[c_470,c_8])).

cnf(c_472,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X0,X2)) = k4_xboole_0(k1_xboole_0,X2) ),
    inference(superposition,[status(thm)],[c_98,c_8])).

cnf(c_489,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X0,X2)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_472,c_8,c_310])).

cnf(c_1213,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X2,X0)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_0,c_489])).

cnf(c_2555,plain,
    ( k4_xboole_0(k2_xboole_0(X0,k2_xboole_0(X0,X1)),k1_xboole_0) = k2_xboole_0(X0,X1) ),
    inference(superposition,[status(thm)],[c_488,c_1855])).

cnf(c_2588,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k1_xboole_0) = k2_xboole_0(X1,X0) ),
    inference(light_normalisation,[status(thm)],[c_2555,c_1385])).

cnf(c_8650,plain,
    ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_8572,c_490,c_1213,c_2588])).

cnf(c_480,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k2_xboole_0(X1,X2))) = k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X0,X1))) ),
    inference(superposition,[status(thm)],[c_8,c_1])).

cnf(c_22012,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(k2_xboole_0(k4_xboole_0(X1,X0),X0),X1))) = k4_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(X1,X0),X0),X1),k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_8650,c_480])).

cnf(c_2918,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k1_xboole_0,X2)) = k4_xboole_0(k2_xboole_0(X1,X0),X2) ),
    inference(superposition,[status(thm)],[c_2588,c_8])).

cnf(c_315,plain,
    ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
    inference(superposition,[status(thm)],[c_306,c_92])).

cnf(c_2934,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),X2) = k4_xboole_0(k2_xboole_0(X1,X0),X2) ),
    inference(demodulation,[status(thm)],[c_2918,c_315])).

cnf(c_13213,plain,
    ( k4_xboole_0(k4_xboole_0(k2_xboole_0(X0,X1),X2),X3) = k4_xboole_0(k2_xboole_0(X1,X0),k2_xboole_0(X2,X3)) ),
    inference(superposition,[status(thm)],[c_2934,c_8])).

cnf(c_467,plain,
    ( k4_xboole_0(X0,k2_xboole_0(k4_xboole_0(X0,X1),X2)) = k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X2) ),
    inference(superposition,[status(thm)],[c_1,c_8])).

cnf(c_21657,plain,
    ( k4_xboole_0(k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X1))),X2) = k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k2_xboole_0(k1_xboole_0,X2)) ),
    inference(superposition,[status(thm)],[c_8650,c_467])).

cnf(c_452,plain,
    ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X1) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_1,c_98])).

cnf(c_997,plain,
    ( k4_xboole_0(X0,k2_xboole_0(k4_xboole_0(X0,X1),X1)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_452,c_8])).

cnf(c_1880,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X1)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_7,c_997])).

cnf(c_21750,plain,
    ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k2_xboole_0(k1_xboole_0,X2)) = k4_xboole_0(k2_xboole_0(X1,X0),X2) ),
    inference(light_normalisation,[status(thm)],[c_21657,c_1880,c_2588])).

cnf(c_21751,plain,
    ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),X2) = k4_xboole_0(k2_xboole_0(X1,X0),X2) ),
    inference(demodulation,[status(thm)],[c_21750,c_315])).

cnf(c_22492,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(k2_xboole_0(X0,X1),X1))) = k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X0)),X1) ),
    inference(demodulation,[status(thm)],[c_22012,c_378,c_13213,c_21751])).

cnf(c_447,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) ),
    inference(superposition,[status(thm)],[c_98,c_1])).

cnf(c_455,plain,
    ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
    inference(demodulation,[status(thm)],[c_447,c_8,c_378])).

cnf(c_22493,plain,
    ( k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X0)),X1) = k4_xboole_0(X0,X1) ),
    inference(light_normalisation,[status(thm)],[c_22492,c_7,c_455])).

cnf(c_23378,plain,
    ( k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,k2_xboole_0(X0,k4_xboole_0(X1,X0)))) ),
    inference(superposition,[status(thm)],[c_22493,c_1])).

cnf(c_23411,plain,
    ( k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = X1 ),
    inference(demodulation,[status(thm)],[c_23378,c_6,c_484])).

cnf(c_24227,plain,
    ( k4_xboole_0(k2_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X1))),k1_xboole_0) = k2_xboole_0(X0,X1) ),
    inference(superposition,[status(thm)],[c_8650,c_23411])).

cnf(c_24525,plain,
    ( k4_xboole_0(k2_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k1_xboole_0),k1_xboole_0) = k2_xboole_0(X0,X1) ),
    inference(light_normalisation,[status(thm)],[c_24227,c_1880])).

cnf(c_779,plain,
    ( k2_xboole_0(X0,k2_xboole_0(X0,X1)) = k2_xboole_0(X0,X1) ),
    inference(superposition,[status(thm)],[c_488,c_82])).

cnf(c_246,plain,
    ( k2_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
    inference(superposition,[status(thm)],[c_92,c_0])).

cnf(c_664,plain,
    ( k2_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = k2_xboole_0(X0,X1) ),
    inference(superposition,[status(thm)],[c_7,c_246])).

cnf(c_3485,plain,
    ( k2_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,k2_xboole_0(X0,X1))) = k2_xboole_0(X0,k2_xboole_0(X0,X1)) ),
    inference(superposition,[status(thm)],[c_779,c_664])).

cnf(c_3572,plain,
    ( k2_xboole_0(k2_xboole_0(X0,X1),k1_xboole_0) = k2_xboole_0(X1,X0) ),
    inference(light_normalisation,[status(thm)],[c_3485,c_488,c_1385])).

cnf(c_24526,plain,
    ( k2_xboole_0(k4_xboole_0(X0,X1),X1) = k2_xboole_0(X0,X1) ),
    inference(demodulation,[status(thm)],[c_24525,c_2588,c_3572])).

cnf(c_375,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_7,c_98])).

cnf(c_873,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k2_xboole_0(X0,X1),X2)) = k4_xboole_0(k1_xboole_0,X2) ),
    inference(superposition,[status(thm)],[c_375,c_8])).

cnf(c_882,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k2_xboole_0(X0,X1),X2)) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_873,c_8,c_310])).

cnf(c_4842,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k2_xboole_0(k2_xboole_0(X1,X0),k1_xboole_0),X2)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_2588,c_882])).

cnf(c_474,plain,
    ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X2,X3)) = k4_xboole_0(k4_xboole_0(X0,k2_xboole_0(X1,X2)),X3) ),
    inference(superposition,[status(thm)],[c_8,c_8])).

cnf(c_487,plain,
    ( k4_xboole_0(X0,k2_xboole_0(k2_xboole_0(X1,X2),X3)) = k4_xboole_0(X0,k2_xboole_0(X1,k2_xboole_0(X2,X3))) ),
    inference(demodulation,[status(thm)],[c_474,c_8])).

cnf(c_4949,plain,
    ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(X0,k2_xboole_0(X1,X2))) = k1_xboole_0 ),
    inference(demodulation,[status(thm)],[c_4842,c_487,c_3572])).

cnf(c_17176,plain,
    ( k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X2)),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_92,c_4949])).

cnf(c_34249,plain,
    ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X2)),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
    inference(superposition,[status(thm)],[c_24526,c_17176])).

cnf(c_56845,plain,
    ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(demodulation,[status(thm)],[c_56844,c_378,c_34249])).

cnf(c_325,plain,
    ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)) = k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
    inference(instantiation,[status(thm)],[c_1])).

cnf(contradiction,plain,
    ( $false ),
    inference(minisat,[status(thm)],[c_56845,c_325])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.12  % Command    : iproveropt_run.sh %d %s
% 0.12/0.33  % Computer   : n016.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 19:27:49 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  % Running in FOF mode
% 11.97/1.98  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 11.97/1.98  
% 11.97/1.98  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 11.97/1.98  
% 11.97/1.98  ------  iProver source info
% 11.97/1.98  
% 11.97/1.98  git: date: 2020-06-30 10:37:57 +0100
% 11.97/1.98  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 11.97/1.98  git: non_committed_changes: false
% 11.97/1.98  git: last_make_outside_of_git: false
% 11.97/1.98  
% 11.97/1.98  ------ 
% 11.97/1.98  
% 11.97/1.98  ------ Input Options
% 11.97/1.98  
% 11.97/1.98  --out_options                           all
% 11.97/1.98  --tptp_safe_out                         true
% 11.97/1.98  --problem_path                          ""
% 11.97/1.98  --include_path                          ""
% 11.97/1.98  --clausifier                            res/vclausify_rel
% 11.97/1.98  --clausifier_options                    ""
% 11.97/1.98  --stdin                                 false
% 11.97/1.98  --stats_out                             all
% 11.97/1.98  
% 11.97/1.98  ------ General Options
% 11.97/1.98  
% 11.97/1.98  --fof                                   false
% 11.97/1.98  --time_out_real                         305.
% 11.97/1.98  --time_out_virtual                      -1.
% 11.97/1.98  --symbol_type_check                     false
% 11.97/1.98  --clausify_out                          false
% 11.97/1.98  --sig_cnt_out                           false
% 11.97/1.98  --trig_cnt_out                          false
% 11.97/1.98  --trig_cnt_out_tolerance                1.
% 11.97/1.98  --trig_cnt_out_sk_spl                   false
% 11.97/1.98  --abstr_cl_out                          false
% 11.97/1.98  
% 11.97/1.98  ------ Global Options
% 11.97/1.98  
% 11.97/1.98  --schedule                              default
% 11.97/1.98  --add_important_lit                     false
% 11.97/1.98  --prop_solver_per_cl                    1000
% 11.97/1.98  --min_unsat_core                        false
% 11.97/1.98  --soft_assumptions                      false
% 11.97/1.98  --soft_lemma_size                       3
% 11.97/1.98  --prop_impl_unit_size                   0
% 11.97/1.98  --prop_impl_unit                        []
% 11.97/1.98  --share_sel_clauses                     true
% 11.97/1.98  --reset_solvers                         false
% 11.97/1.98  --bc_imp_inh                            [conj_cone]
% 11.97/1.98  --conj_cone_tolerance                   3.
% 11.97/1.98  --extra_neg_conj                        none
% 11.97/1.98  --large_theory_mode                     true
% 11.97/1.98  --prolific_symb_bound                   200
% 11.97/1.98  --lt_threshold                          2000
% 11.97/1.98  --clause_weak_htbl                      true
% 11.97/1.98  --gc_record_bc_elim                     false
% 11.97/1.98  
% 11.97/1.98  ------ Preprocessing Options
% 11.97/1.98  
% 11.97/1.98  --preprocessing_flag                    true
% 11.97/1.98  --time_out_prep_mult                    0.1
% 11.97/1.98  --splitting_mode                        input
% 11.97/1.98  --splitting_grd                         true
% 11.97/1.98  --splitting_cvd                         false
% 11.97/1.98  --splitting_cvd_svl                     false
% 11.97/1.98  --splitting_nvd                         32
% 11.97/1.98  --sub_typing                            true
% 11.97/1.98  --prep_gs_sim                           true
% 11.97/1.98  --prep_unflatten                        true
% 11.97/1.98  --prep_res_sim                          true
% 11.97/1.98  --prep_upred                            true
% 11.97/1.98  --prep_sem_filter                       exhaustive
% 11.97/1.98  --prep_sem_filter_out                   false
% 11.97/1.98  --pred_elim                             true
% 11.97/1.98  --res_sim_input                         true
% 11.97/1.98  --eq_ax_congr_red                       true
% 11.97/1.98  --pure_diseq_elim                       true
% 11.97/1.98  --brand_transform                       false
% 11.97/1.98  --non_eq_to_eq                          false
% 11.97/1.98  --prep_def_merge                        true
% 11.97/1.98  --prep_def_merge_prop_impl              false
% 11.97/1.98  --prep_def_merge_mbd                    true
% 11.97/1.98  --prep_def_merge_tr_red                 false
% 11.97/1.98  --prep_def_merge_tr_cl                  false
% 11.97/1.98  --smt_preprocessing                     true
% 11.97/1.98  --smt_ac_axioms                         fast
% 11.97/1.98  --preprocessed_out                      false
% 11.97/1.98  --preprocessed_stats                    false
% 11.97/1.98  
% 11.97/1.98  ------ Abstraction refinement Options
% 11.97/1.98  
% 11.97/1.98  --abstr_ref                             []
% 11.97/1.98  --abstr_ref_prep                        false
% 11.97/1.98  --abstr_ref_until_sat                   false
% 11.97/1.98  --abstr_ref_sig_restrict                funpre
% 11.97/1.98  --abstr_ref_af_restrict_to_split_sk     false
% 11.97/1.98  --abstr_ref_under                       []
% 11.97/1.98  
% 11.97/1.98  ------ SAT Options
% 11.97/1.98  
% 11.97/1.98  --sat_mode                              false
% 11.97/1.98  --sat_fm_restart_options                ""
% 11.97/1.98  --sat_gr_def                            false
% 11.97/1.98  --sat_epr_types                         true
% 11.97/1.98  --sat_non_cyclic_types                  false
% 11.97/1.98  --sat_finite_models                     false
% 11.97/1.98  --sat_fm_lemmas                         false
% 11.97/1.98  --sat_fm_prep                           false
% 11.97/1.98  --sat_fm_uc_incr                        true
% 11.97/1.98  --sat_out_model                         small
% 11.97/1.98  --sat_out_clauses                       false
% 11.97/1.98  
% 11.97/1.98  ------ QBF Options
% 11.97/1.98  
% 11.97/1.98  --qbf_mode                              false
% 11.97/1.98  --qbf_elim_univ                         false
% 11.97/1.98  --qbf_dom_inst                          none
% 11.97/1.98  --qbf_dom_pre_inst                      false
% 11.97/1.98  --qbf_sk_in                             false
% 11.97/1.98  --qbf_pred_elim                         true
% 11.97/1.98  --qbf_split                             512
% 11.97/1.98  
% 11.97/1.98  ------ BMC1 Options
% 11.97/1.98  
% 11.97/1.98  --bmc1_incremental                      false
% 11.97/1.98  --bmc1_axioms                           reachable_all
% 11.97/1.98  --bmc1_min_bound                        0
% 11.97/1.98  --bmc1_max_bound                        -1
% 11.97/1.98  --bmc1_max_bound_default                -1
% 11.97/1.98  --bmc1_symbol_reachability              true
% 11.97/1.98  --bmc1_property_lemmas                  false
% 11.97/1.98  --bmc1_k_induction                      false
% 11.97/1.98  --bmc1_non_equiv_states                 false
% 11.97/1.98  --bmc1_deadlock                         false
% 11.97/1.98  --bmc1_ucm                              false
% 11.97/1.98  --bmc1_add_unsat_core                   none
% 11.97/1.98  --bmc1_unsat_core_children              false
% 11.97/1.98  --bmc1_unsat_core_extrapolate_axioms    false
% 11.97/1.98  --bmc1_out_stat                         full
% 11.97/1.98  --bmc1_ground_init                      false
% 11.97/1.98  --bmc1_pre_inst_next_state              false
% 11.97/1.98  --bmc1_pre_inst_state                   false
% 11.97/1.98  --bmc1_pre_inst_reach_state             false
% 11.97/1.98  --bmc1_out_unsat_core                   false
% 11.97/1.98  --bmc1_aig_witness_out                  false
% 11.97/1.98  --bmc1_verbose                          false
% 11.97/1.98  --bmc1_dump_clauses_tptp                false
% 11.97/1.98  --bmc1_dump_unsat_core_tptp             false
% 11.97/1.98  --bmc1_dump_file                        -
% 11.97/1.98  --bmc1_ucm_expand_uc_limit              128
% 11.97/1.98  --bmc1_ucm_n_expand_iterations          6
% 11.97/1.98  --bmc1_ucm_extend_mode                  1
% 11.97/1.98  --bmc1_ucm_init_mode                    2
% 11.97/1.98  --bmc1_ucm_cone_mode                    none
% 11.97/1.98  --bmc1_ucm_reduced_relation_type        0
% 11.97/1.98  --bmc1_ucm_relax_model                  4
% 11.97/1.98  --bmc1_ucm_full_tr_after_sat            true
% 11.97/1.98  --bmc1_ucm_expand_neg_assumptions       false
% 11.97/1.98  --bmc1_ucm_layered_model                none
% 11.97/1.98  --bmc1_ucm_max_lemma_size               10
% 11.97/1.98  
% 11.97/1.98  ------ AIG Options
% 11.97/1.98  
% 11.97/1.98  --aig_mode                              false
% 11.97/1.98  
% 11.97/1.98  ------ Instantiation Options
% 11.97/1.98  
% 11.97/1.98  --instantiation_flag                    true
% 11.97/1.98  --inst_sos_flag                         true
% 11.97/1.98  --inst_sos_phase                        true
% 11.97/1.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.97/1.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.97/1.98  --inst_lit_sel_side                     num_symb
% 11.97/1.98  --inst_solver_per_active                1400
% 11.97/1.98  --inst_solver_calls_frac                1.
% 11.97/1.98  --inst_passive_queue_type               priority_queues
% 11.97/1.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.97/1.98  --inst_passive_queues_freq              [25;2]
% 11.97/1.98  --inst_dismatching                      true
% 11.97/1.98  --inst_eager_unprocessed_to_passive     true
% 11.97/1.98  --inst_prop_sim_given                   true
% 11.97/1.98  --inst_prop_sim_new                     false
% 11.97/1.98  --inst_subs_new                         false
% 11.97/1.98  --inst_eq_res_simp                      false
% 11.97/1.98  --inst_subs_given                       false
% 11.97/1.98  --inst_orphan_elimination               true
% 11.97/1.98  --inst_learning_loop_flag               true
% 11.97/1.98  --inst_learning_start                   3000
% 11.97/1.98  --inst_learning_factor                  2
% 11.97/1.98  --inst_start_prop_sim_after_learn       3
% 11.97/1.98  --inst_sel_renew                        solver
% 11.97/1.98  --inst_lit_activity_flag                true
% 11.97/1.98  --inst_restr_to_given                   false
% 11.97/1.98  --inst_activity_threshold               500
% 11.97/1.98  --inst_out_proof                        true
% 11.97/1.98  
% 11.97/1.98  ------ Resolution Options
% 11.97/1.98  
% 11.97/1.98  --resolution_flag                       true
% 11.97/1.98  --res_lit_sel                           adaptive
% 11.97/1.98  --res_lit_sel_side                      none
% 11.97/1.98  --res_ordering                          kbo
% 11.97/1.98  --res_to_prop_solver                    active
% 11.97/1.98  --res_prop_simpl_new                    false
% 11.97/1.98  --res_prop_simpl_given                  true
% 11.97/1.98  --res_passive_queue_type                priority_queues
% 11.97/1.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.97/1.98  --res_passive_queues_freq               [15;5]
% 11.97/1.98  --res_forward_subs                      full
% 11.97/1.98  --res_backward_subs                     full
% 11.97/1.98  --res_forward_subs_resolution           true
% 11.97/1.98  --res_backward_subs_resolution          true
% 11.97/1.98  --res_orphan_elimination                true
% 11.97/1.98  --res_time_limit                        2.
% 11.97/1.98  --res_out_proof                         true
% 11.97/1.98  
% 11.97/1.98  ------ Superposition Options
% 11.97/1.98  
% 11.97/1.98  --superposition_flag                    true
% 11.97/1.98  --sup_passive_queue_type                priority_queues
% 11.97/1.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.97/1.98  --sup_passive_queues_freq               [8;1;4]
% 11.97/1.98  --demod_completeness_check              fast
% 11.97/1.98  --demod_use_ground                      true
% 11.97/1.98  --sup_to_prop_solver                    passive
% 11.97/1.98  --sup_prop_simpl_new                    true
% 11.97/1.98  --sup_prop_simpl_given                  true
% 11.97/1.98  --sup_fun_splitting                     true
% 11.97/1.98  --sup_smt_interval                      50000
% 11.97/1.98  
% 11.97/1.98  ------ Superposition Simplification Setup
% 11.97/1.98  
% 11.97/1.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 11.97/1.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 11.97/1.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 11.97/1.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 11.97/1.98  --sup_full_triv                         [TrivRules;PropSubs]
% 11.97/1.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 11.97/1.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 11.97/1.98  --sup_immed_triv                        [TrivRules]
% 11.97/1.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.97/1.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.97/1.98  --sup_immed_bw_main                     []
% 11.97/1.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 11.97/1.98  --sup_input_triv                        [Unflattening;TrivRules]
% 11.97/1.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.97/1.98  --sup_input_bw                          []
% 11.97/1.98  
% 11.97/1.98  ------ Combination Options
% 11.97/1.98  
% 11.97/1.98  --comb_res_mult                         3
% 11.97/1.98  --comb_sup_mult                         2
% 11.97/1.98  --comb_inst_mult                        10
% 11.97/1.98  
% 11.97/1.98  ------ Debug Options
% 11.97/1.98  
% 11.97/1.98  --dbg_backtrace                         false
% 11.97/1.98  --dbg_dump_prop_clauses                 false
% 11.97/1.98  --dbg_dump_prop_clauses_file            -
% 11.97/1.98  --dbg_out_stat                          false
% 11.97/1.98  ------ Parsing...
% 11.97/1.98  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 11.97/1.98  
% 11.97/1.98  ------ Preprocessing... sf_s  rm: 1 0s  sf_e  pe_s  pe:1:0s pe_e  sf_s  rm: 2 0s  sf_e  pe_s  pe_e 
% 11.97/1.98  
% 11.97/1.98  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 11.97/1.98  
% 11.97/1.98  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 11.97/1.98  ------ Proving...
% 11.97/1.98  ------ Problem Properties 
% 11.97/1.98  
% 11.97/1.98  
% 11.97/1.98  clauses                                 9
% 11.97/1.98  conjectures                             1
% 11.97/1.98  EPR                                     0
% 11.97/1.98  Horn                                    9
% 11.97/1.98  unary                                   8
% 11.97/1.98  binary                                  1
% 11.97/1.98  lits                                    10
% 11.97/1.98  lits eq                                 10
% 11.97/1.98  fd_pure                                 0
% 11.97/1.98  fd_pseudo                               0
% 11.97/1.98  fd_cond                                 0
% 11.97/1.98  fd_pseudo_cond                          0
% 11.97/1.98  AC symbols                              0
% 11.97/1.98  
% 11.97/1.98  ------ Schedule dynamic 5 is on 
% 11.97/1.98  
% 11.97/1.98  ------ pure equality problem: resolution off 
% 11.97/1.98  
% 11.97/1.98  ------ Input Options "--resolution_flag false --inst_lit_sel_side none" Time Limit: 10.
% 11.97/1.98  
% 11.97/1.98  
% 11.97/1.98  ------ 
% 11.97/1.98  Current options:
% 11.97/1.98  ------ 
% 11.97/1.98  
% 11.97/1.98  ------ Input Options
% 11.97/1.98  
% 11.97/1.98  --out_options                           all
% 11.97/1.98  --tptp_safe_out                         true
% 11.97/1.98  --problem_path                          ""
% 11.97/1.98  --include_path                          ""
% 11.97/1.98  --clausifier                            res/vclausify_rel
% 11.97/1.98  --clausifier_options                    ""
% 11.97/1.98  --stdin                                 false
% 11.97/1.98  --stats_out                             all
% 11.97/1.98  
% 11.97/1.98  ------ General Options
% 11.97/1.98  
% 11.97/1.98  --fof                                   false
% 11.97/1.98  --time_out_real                         305.
% 11.97/1.98  --time_out_virtual                      -1.
% 11.97/1.98  --symbol_type_check                     false
% 11.97/1.98  --clausify_out                          false
% 11.97/1.98  --sig_cnt_out                           false
% 11.97/1.98  --trig_cnt_out                          false
% 11.97/1.98  --trig_cnt_out_tolerance                1.
% 11.97/1.98  --trig_cnt_out_sk_spl                   false
% 11.97/1.98  --abstr_cl_out                          false
% 11.97/1.98  
% 11.97/1.98  ------ Global Options
% 11.97/1.98  
% 11.97/1.98  --schedule                              default
% 11.97/1.98  --add_important_lit                     false
% 11.97/1.98  --prop_solver_per_cl                    1000
% 11.97/1.98  --min_unsat_core                        false
% 11.97/1.98  --soft_assumptions                      false
% 11.97/1.98  --soft_lemma_size                       3
% 11.97/1.98  --prop_impl_unit_size                   0
% 11.97/1.98  --prop_impl_unit                        []
% 11.97/1.98  --share_sel_clauses                     true
% 11.97/1.98  --reset_solvers                         false
% 11.97/1.98  --bc_imp_inh                            [conj_cone]
% 11.97/1.98  --conj_cone_tolerance                   3.
% 11.97/1.98  --extra_neg_conj                        none
% 11.97/1.98  --large_theory_mode                     true
% 11.97/1.98  --prolific_symb_bound                   200
% 11.97/1.98  --lt_threshold                          2000
% 11.97/1.98  --clause_weak_htbl                      true
% 11.97/1.98  --gc_record_bc_elim                     false
% 11.97/1.98  
% 11.97/1.98  ------ Preprocessing Options
% 11.97/1.98  
% 11.97/1.98  --preprocessing_flag                    true
% 11.97/1.98  --time_out_prep_mult                    0.1
% 11.97/1.98  --splitting_mode                        input
% 11.97/1.98  --splitting_grd                         true
% 11.97/1.98  --splitting_cvd                         false
% 11.97/1.98  --splitting_cvd_svl                     false
% 11.97/1.98  --splitting_nvd                         32
% 11.97/1.98  --sub_typing                            true
% 11.97/1.98  --prep_gs_sim                           true
% 11.97/1.98  --prep_unflatten                        true
% 11.97/1.98  --prep_res_sim                          true
% 11.97/1.98  --prep_upred                            true
% 11.97/1.98  --prep_sem_filter                       exhaustive
% 11.97/1.98  --prep_sem_filter_out                   false
% 11.97/1.98  --pred_elim                             true
% 11.97/1.98  --res_sim_input                         true
% 11.97/1.98  --eq_ax_congr_red                       true
% 11.97/1.98  --pure_diseq_elim                       true
% 11.97/1.98  --brand_transform                       false
% 11.97/1.98  --non_eq_to_eq                          false
% 11.97/1.98  --prep_def_merge                        true
% 11.97/1.98  --prep_def_merge_prop_impl              false
% 11.97/1.98  --prep_def_merge_mbd                    true
% 11.97/1.98  --prep_def_merge_tr_red                 false
% 11.97/1.98  --prep_def_merge_tr_cl                  false
% 11.97/1.98  --smt_preprocessing                     true
% 11.97/1.98  --smt_ac_axioms                         fast
% 11.97/1.98  --preprocessed_out                      false
% 11.97/1.98  --preprocessed_stats                    false
% 11.97/1.98  
% 11.97/1.98  ------ Abstraction refinement Options
% 11.97/1.98  
% 11.97/1.98  --abstr_ref                             []
% 11.97/1.98  --abstr_ref_prep                        false
% 11.97/1.98  --abstr_ref_until_sat                   false
% 11.97/1.98  --abstr_ref_sig_restrict                funpre
% 11.97/1.98  --abstr_ref_af_restrict_to_split_sk     false
% 11.97/1.98  --abstr_ref_under                       []
% 11.97/1.98  
% 11.97/1.98  ------ SAT Options
% 11.97/1.98  
% 11.97/1.98  --sat_mode                              false
% 11.97/1.98  --sat_fm_restart_options                ""
% 11.97/1.98  --sat_gr_def                            false
% 11.97/1.98  --sat_epr_types                         true
% 11.97/1.98  --sat_non_cyclic_types                  false
% 11.97/1.98  --sat_finite_models                     false
% 11.97/1.98  --sat_fm_lemmas                         false
% 11.97/1.98  --sat_fm_prep                           false
% 11.97/1.98  --sat_fm_uc_incr                        true
% 11.97/1.98  --sat_out_model                         small
% 11.97/1.98  --sat_out_clauses                       false
% 11.97/1.98  
% 11.97/1.98  ------ QBF Options
% 11.97/1.98  
% 11.97/1.98  --qbf_mode                              false
% 11.97/1.98  --qbf_elim_univ                         false
% 11.97/1.98  --qbf_dom_inst                          none
% 11.97/1.98  --qbf_dom_pre_inst                      false
% 11.97/1.98  --qbf_sk_in                             false
% 11.97/1.98  --qbf_pred_elim                         true
% 11.97/1.98  --qbf_split                             512
% 11.97/1.98  
% 11.97/1.98  ------ BMC1 Options
% 11.97/1.98  
% 11.97/1.98  --bmc1_incremental                      false
% 11.97/1.98  --bmc1_axioms                           reachable_all
% 11.97/1.98  --bmc1_min_bound                        0
% 11.97/1.98  --bmc1_max_bound                        -1
% 11.97/1.98  --bmc1_max_bound_default                -1
% 11.97/1.98  --bmc1_symbol_reachability              true
% 11.97/1.98  --bmc1_property_lemmas                  false
% 11.97/1.98  --bmc1_k_induction                      false
% 11.97/1.98  --bmc1_non_equiv_states                 false
% 11.97/1.98  --bmc1_deadlock                         false
% 11.97/1.98  --bmc1_ucm                              false
% 11.97/1.98  --bmc1_add_unsat_core                   none
% 11.97/1.98  --bmc1_unsat_core_children              false
% 11.97/1.98  --bmc1_unsat_core_extrapolate_axioms    false
% 11.97/1.98  --bmc1_out_stat                         full
% 11.97/1.98  --bmc1_ground_init                      false
% 11.97/1.98  --bmc1_pre_inst_next_state              false
% 11.97/1.98  --bmc1_pre_inst_state                   false
% 11.97/1.98  --bmc1_pre_inst_reach_state             false
% 11.97/1.98  --bmc1_out_unsat_core                   false
% 11.97/1.98  --bmc1_aig_witness_out                  false
% 11.97/1.98  --bmc1_verbose                          false
% 11.97/1.98  --bmc1_dump_clauses_tptp                false
% 11.97/1.98  --bmc1_dump_unsat_core_tptp             false
% 11.97/1.98  --bmc1_dump_file                        -
% 11.97/1.98  --bmc1_ucm_expand_uc_limit              128
% 11.97/1.98  --bmc1_ucm_n_expand_iterations          6
% 11.97/1.98  --bmc1_ucm_extend_mode                  1
% 11.97/1.98  --bmc1_ucm_init_mode                    2
% 11.97/1.98  --bmc1_ucm_cone_mode                    none
% 11.97/1.98  --bmc1_ucm_reduced_relation_type        0
% 11.97/1.98  --bmc1_ucm_relax_model                  4
% 11.97/1.98  --bmc1_ucm_full_tr_after_sat            true
% 11.97/1.98  --bmc1_ucm_expand_neg_assumptions       false
% 11.97/1.98  --bmc1_ucm_layered_model                none
% 11.97/1.98  --bmc1_ucm_max_lemma_size               10
% 11.97/1.98  
% 11.97/1.98  ------ AIG Options
% 11.97/1.98  
% 11.97/1.98  --aig_mode                              false
% 11.97/1.98  
% 11.97/1.98  ------ Instantiation Options
% 11.97/1.98  
% 11.97/1.98  --instantiation_flag                    true
% 11.97/1.98  --inst_sos_flag                         true
% 11.97/1.98  --inst_sos_phase                        true
% 11.97/1.98  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 11.97/1.98  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 11.97/1.98  --inst_lit_sel_side                     none
% 11.97/1.98  --inst_solver_per_active                1400
% 11.97/1.98  --inst_solver_calls_frac                1.
% 11.97/1.98  --inst_passive_queue_type               priority_queues
% 11.97/1.98  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 11.97/1.98  --inst_passive_queues_freq              [25;2]
% 11.97/1.98  --inst_dismatching                      true
% 11.97/1.98  --inst_eager_unprocessed_to_passive     true
% 11.97/1.98  --inst_prop_sim_given                   true
% 11.97/1.98  --inst_prop_sim_new                     false
% 11.97/1.98  --inst_subs_new                         false
% 11.97/1.98  --inst_eq_res_simp                      false
% 11.97/1.98  --inst_subs_given                       false
% 11.97/1.98  --inst_orphan_elimination               true
% 11.97/1.98  --inst_learning_loop_flag               true
% 11.97/1.98  --inst_learning_start                   3000
% 11.97/1.98  --inst_learning_factor                  2
% 11.97/1.98  --inst_start_prop_sim_after_learn       3
% 11.97/1.98  --inst_sel_renew                        solver
% 11.97/1.98  --inst_lit_activity_flag                true
% 11.97/1.98  --inst_restr_to_given                   false
% 11.97/1.98  --inst_activity_threshold               500
% 11.97/1.98  --inst_out_proof                        true
% 11.97/1.98  
% 11.97/1.98  ------ Resolution Options
% 11.97/1.98  
% 11.97/1.98  --resolution_flag                       false
% 11.97/1.98  --res_lit_sel                           adaptive
% 11.97/1.98  --res_lit_sel_side                      none
% 11.97/1.98  --res_ordering                          kbo
% 11.97/1.98  --res_to_prop_solver                    active
% 11.97/1.98  --res_prop_simpl_new                    false
% 11.97/1.98  --res_prop_simpl_given                  true
% 11.97/1.98  --res_passive_queue_type                priority_queues
% 11.97/1.98  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 11.97/1.98  --res_passive_queues_freq               [15;5]
% 11.97/1.98  --res_forward_subs                      full
% 11.97/1.98  --res_backward_subs                     full
% 11.97/1.98  --res_forward_subs_resolution           true
% 11.97/1.98  --res_backward_subs_resolution          true
% 11.97/1.98  --res_orphan_elimination                true
% 11.97/1.98  --res_time_limit                        2.
% 11.97/1.98  --res_out_proof                         true
% 11.97/1.98  
% 11.97/1.98  ------ Superposition Options
% 11.97/1.98  
% 11.97/1.98  --superposition_flag                    true
% 11.97/1.98  --sup_passive_queue_type                priority_queues
% 11.97/1.98  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 11.97/1.98  --sup_passive_queues_freq               [8;1;4]
% 11.97/1.98  --demod_completeness_check              fast
% 11.97/1.98  --demod_use_ground                      true
% 11.97/1.98  --sup_to_prop_solver                    passive
% 11.97/1.98  --sup_prop_simpl_new                    true
% 11.97/1.98  --sup_prop_simpl_given                  true
% 11.97/1.98  --sup_fun_splitting                     true
% 11.97/1.98  --sup_smt_interval                      50000
% 11.97/1.98  
% 11.97/1.98  ------ Superposition Simplification Setup
% 11.97/1.98  
% 11.97/1.98  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 11.97/1.98  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 11.97/1.98  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 11.97/1.98  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex]
% 11.97/1.98  --sup_full_triv                         [TrivRules;PropSubs]
% 11.97/1.98  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 11.97/1.98  --sup_full_bw                           [BwDemod;BwSubsumption]
% 11.97/1.98  --sup_immed_triv                        [TrivRules]
% 11.97/1.98  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 11.97/1.98  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.97/1.98  --sup_immed_bw_main                     []
% 11.97/1.98  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 11.97/1.98  --sup_input_triv                        [Unflattening;TrivRules]
% 11.97/1.98  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 11.97/1.98  --sup_input_bw                          []
% 11.97/1.98  
% 11.97/1.98  ------ Combination Options
% 11.97/1.98  
% 11.97/1.98  --comb_res_mult                         3
% 11.97/1.98  --comb_sup_mult                         2
% 11.97/1.98  --comb_inst_mult                        10
% 11.97/1.98  
% 11.97/1.98  ------ Debug Options
% 11.97/1.98  
% 11.97/1.98  --dbg_backtrace                         false
% 11.97/1.98  --dbg_dump_prop_clauses                 false
% 11.97/1.98  --dbg_dump_prop_clauses_file            -
% 11.97/1.98  --dbg_out_stat                          false
% 11.97/1.98  
% 11.97/1.98  
% 11.97/1.98  
% 11.97/1.98  
% 11.97/1.98  ------ Proving...
% 11.97/1.98  
% 11.97/1.98  
% 11.97/1.98  % SZS status Theorem for theBenchmark.p
% 11.97/1.98  
% 11.97/1.98  % SZS output start CNFRefutation for theBenchmark.p
% 11.97/1.98  
% 11.97/1.98  fof(f1,axiom,(
% 11.97/1.98    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f18,plain,(
% 11.97/1.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 11.97/1.98    inference(cnf_transformation,[],[f1])).
% 11.97/1.98  
% 11.97/1.98  fof(f8,axiom,(
% 11.97/1.98    ! [X0,X1] : k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1)),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f26,plain,(
% 11.97/1.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k4_xboole_0(k2_xboole_0(X0,X1),X1)) )),
% 11.97/1.98    inference(cnf_transformation,[],[f8])).
% 11.97/1.98  
% 11.97/1.98  fof(f2,axiom,(
% 11.97/1.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f19,plain,(
% 11.97/1.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k3_xboole_0(X1,X0)) )),
% 11.97/1.98    inference(cnf_transformation,[],[f2])).
% 11.97/1.98  
% 11.97/1.98  fof(f10,axiom,(
% 11.97/1.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f28,plain,(
% 11.97/1.98    ( ! [X0,X1] : (k3_xboole_0(X0,X1) = k4_xboole_0(X0,k4_xboole_0(X0,X1))) )),
% 11.97/1.98    inference(cnf_transformation,[],[f10])).
% 11.97/1.98  
% 11.97/1.98  fof(f30,plain,(
% 11.97/1.98    ( ! [X0,X1] : (k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0))) )),
% 11.97/1.98    inference(definition_unfolding,[],[f19,f28,f28])).
% 11.97/1.98  
% 11.97/1.98  fof(f7,axiom,(
% 11.97/1.98    ! [X0] : k4_xboole_0(X0,k1_xboole_0) = X0),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f25,plain,(
% 11.97/1.98    ( ! [X0] : (k4_xboole_0(X0,k1_xboole_0) = X0) )),
% 11.97/1.98    inference(cnf_transformation,[],[f7])).
% 11.97/1.98  
% 11.97/1.98  fof(f4,axiom,(
% 11.97/1.98    ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 <=> r1_tarski(X0,X1))),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f15,plain,(
% 11.97/1.98    ! [X0,X1] : ((k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) & (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0))),
% 11.97/1.98    inference(nnf_transformation,[],[f4])).
% 11.97/1.98  
% 11.97/1.98  fof(f22,plain,(
% 11.97/1.98    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k1_xboole_0 | ~r1_tarski(X0,X1)) )),
% 11.97/1.98    inference(cnf_transformation,[],[f15])).
% 11.97/1.98  
% 11.97/1.98  fof(f6,axiom,(
% 11.97/1.98    ! [X0,X1] : r1_tarski(k4_xboole_0(X0,X1),X0)),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f24,plain,(
% 11.97/1.98    ( ! [X0,X1] : (r1_tarski(k4_xboole_0(X0,X1),X0)) )),
% 11.97/1.98    inference(cnf_transformation,[],[f6])).
% 11.97/1.98  
% 11.97/1.98  fof(f9,axiom,(
% 11.97/1.98    ! [X0,X1,X2] : k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2)),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f27,plain,(
% 11.97/1.98    ( ! [X2,X0,X1] : (k4_xboole_0(X0,k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2)) )),
% 11.97/1.98    inference(cnf_transformation,[],[f9])).
% 11.97/1.98  
% 11.97/1.98  fof(f21,plain,(
% 11.97/1.98    ( ! [X0,X1] : (r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0) )),
% 11.97/1.98    inference(cnf_transformation,[],[f15])).
% 11.97/1.98  
% 11.97/1.98  fof(f5,axiom,(
% 11.97/1.98    ! [X0,X1] : (r1_tarski(X0,X1) => k2_xboole_0(X0,X1) = X1)),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f13,plain,(
% 11.97/1.98    ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1))),
% 11.97/1.98    inference(ennf_transformation,[],[f5])).
% 11.97/1.98  
% 11.97/1.98  fof(f23,plain,(
% 11.97/1.98    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = X1 | ~r1_tarski(X0,X1)) )),
% 11.97/1.98    inference(cnf_transformation,[],[f13])).
% 11.97/1.98  
% 11.97/1.98  fof(f11,conjecture,(
% 11.97/1.98    ! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f12,negated_conjecture,(
% 11.97/1.98    ~! [X0,X1] : k3_xboole_0(X0,X1) = k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))),
% 11.97/1.98    inference(negated_conjecture,[],[f11])).
% 11.97/1.98  
% 11.97/1.98  fof(f14,plain,(
% 11.97/1.98    ? [X0,X1] : k3_xboole_0(X0,X1) != k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1))),
% 11.97/1.98    inference(ennf_transformation,[],[f12])).
% 11.97/1.98  
% 11.97/1.98  fof(f16,plain,(
% 11.97/1.98    ? [X0,X1] : k3_xboole_0(X0,X1) != k5_xboole_0(k5_xboole_0(X0,X1),k2_xboole_0(X0,X1)) => k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1))),
% 11.97/1.98    introduced(choice_axiom,[])).
% 11.97/1.98  
% 11.97/1.98  fof(f17,plain,(
% 11.97/1.98    k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1))),
% 11.97/1.98    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1])],[f14,f16])).
% 11.97/1.98  
% 11.97/1.98  fof(f29,plain,(
% 11.97/1.98    k3_xboole_0(sK0,sK1) != k5_xboole_0(k5_xboole_0(sK0,sK1),k2_xboole_0(sK0,sK1))),
% 11.97/1.98    inference(cnf_transformation,[],[f17])).
% 11.97/1.98  
% 11.97/1.98  fof(f3,axiom,(
% 11.97/1.98    ! [X0,X1] : k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k5_xboole_0(X0,X1)),
% 11.97/1.98    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 11.97/1.98  
% 11.97/1.98  fof(f20,plain,(
% 11.97/1.98    ( ! [X0,X1] : (k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k5_xboole_0(X0,X1)) )),
% 11.97/1.98    inference(cnf_transformation,[],[f3])).
% 11.97/1.98  
% 11.97/1.98  fof(f31,plain,(
% 11.97/1.98    k2_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1)),k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1))),
% 11.97/1.98    inference(definition_unfolding,[],[f29,f28,f20,f20])).
% 11.97/1.98  
% 11.97/1.98  cnf(c_0,plain,
% 11.97/1.98      ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
% 11.97/1.98      inference(cnf_transformation,[],[f18]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_7,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),X1) = k4_xboole_0(X0,X1) ),
% 11.97/1.98      inference(cnf_transformation,[],[f26]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_371,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),X0) = k4_xboole_0(X1,X0) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_0,c_7]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_1,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,X0)) ),
% 11.97/1.98      inference(cnf_transformation,[],[f30]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_845,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = k4_xboole_0(X0,k4_xboole_0(X0,k2_xboole_0(X0,X1))) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_371,c_1]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_6,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k1_xboole_0) = X0 ),
% 11.97/1.98      inference(cnf_transformation,[],[f25]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_2,plain,
% 11.97/1.98      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 11.97/1.98      inference(cnf_transformation,[],[f22]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_48,plain,
% 11.97/1.98      ( ~ r1_tarski(X0,X1) | k4_xboole_0(X0,X1) = k1_xboole_0 ),
% 11.97/1.98      inference(prop_impl,[status(thm)],[c_2]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_5,plain,
% 11.97/1.98      ( r1_tarski(k4_xboole_0(X0,X1),X0) ),
% 11.97/1.98      inference(cnf_transformation,[],[f24]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_97,plain,
% 11.97/1.98      ( X0 != X1
% 11.97/1.98      | k4_xboole_0(X0,X2) != X3
% 11.97/1.98      | k4_xboole_0(X3,X1) = k1_xboole_0 ),
% 11.97/1.98      inference(resolution_lifted,[status(thm)],[c_48,c_5]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_98,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,X1),X0) = k1_xboole_0 ),
% 11.97/1.98      inference(unflattening,[status(thm)],[c_97]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_306,plain,
% 11.97/1.98      ( k4_xboole_0(X0,X0) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_6,c_98]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_8,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,X1),X2) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
% 11.97/1.98      inference(cnf_transformation,[],[f27]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_473,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k4_xboole_0(k1_xboole_0,X1) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_306,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_310,plain,
% 11.97/1.98      ( k4_xboole_0(k1_xboole_0,X0) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_98,c_6]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_488,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k2_xboole_0(X0,X1)) = k1_xboole_0 ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_473,c_310]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_848,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X1,X0)) = X0 ),
% 11.97/1.98      inference(light_normalisation,[status(thm)],[c_845,c_6,c_488]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_1819,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,k2_xboole_0(X0,X1)),k4_xboole_0(X1,X0)) = X0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_371,c_848]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_483,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k2_xboole_0(X1,X0)) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_8,c_98]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_3,plain,
% 11.97/1.98      ( r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0 ),
% 11.97/1.98      inference(cnf_transformation,[],[f21]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_46,plain,
% 11.97/1.98      ( r1_tarski(X0,X1) | k4_xboole_0(X0,X1) != k1_xboole_0 ),
% 11.97/1.98      inference(prop_impl,[status(thm)],[c_3]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_4,plain,
% 11.97/1.98      ( ~ r1_tarski(X0,X1) | k2_xboole_0(X0,X1) = X1 ),
% 11.97/1.98      inference(cnf_transformation,[],[f23]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_82,plain,
% 11.97/1.98      ( k4_xboole_0(X0,X1) != k1_xboole_0 | k2_xboole_0(X0,X1) = X1 ),
% 11.97/1.98      inference(resolution,[status(thm)],[c_46,c_4]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_761,plain,
% 11.97/1.98      ( k2_xboole_0(X0,k2_xboole_0(X1,X0)) = k2_xboole_0(X1,X0) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_483,c_82]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_1385,plain,
% 11.97/1.98      ( k2_xboole_0(X0,k2_xboole_0(X0,X1)) = k2_xboole_0(X1,X0) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_0,c_761]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_1855,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = X1 ),
% 11.97/1.98      inference(light_normalisation,[status(thm)],[c_1819,c_1385]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_2570,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X2)) = k4_xboole_0(X1,X2) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_1855,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_9,negated_conjecture,
% 11.97/1.98      ( k2_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1)),k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.97/1.98      inference(cnf_transformation,[],[f31]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_204,plain,
% 11.97/1.98      ( k2_xboole_0(k4_xboole_0(k2_xboole_0(sK0,sK1),k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0))),k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_0,c_9]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_56844,plain,
% 11.97/1.98      ( k2_xboole_0(k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)),k4_xboole_0(k2_xboole_0(k4_xboole_0(sK0,sK1),k4_xboole_0(sK1,sK0)),k2_xboole_0(sK0,sK1))) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_2570,c_204]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_377,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k1_xboole_0) = k2_xboole_0(X0,k1_xboole_0) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_7,c_6]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_378,plain,
% 11.97/1.98      ( k2_xboole_0(X0,k1_xboole_0) = X0 ),
% 11.97/1.98      inference(light_normalisation,[status(thm)],[c_377,c_6]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_484,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k2_xboole_0(X1,k4_xboole_0(X0,X1))) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_8,c_306]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_1831,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X1,X0),X0)) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_848,c_484]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_1811,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X0),k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_1,c_848]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_91,plain,
% 11.97/1.98      ( X0 != X1 | k4_xboole_0(X0,X2) != X3 | k2_xboole_0(X3,X1) = X1 ),
% 11.97/1.98      inference(resolution_lifted,[status(thm)],[c_4,c_5]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_92,plain,
% 11.97/1.98      ( k2_xboole_0(k4_xboole_0(X0,X1),X0) = X0 ),
% 11.97/1.98      inference(unflattening,[status(thm)],[c_91]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_1861,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k4_xboole_0(X1,k4_xboole_0(X1,X0))) = k4_xboole_0(X0,X1) ),
% 11.97/1.98      inference(light_normalisation,[status(thm)],[c_1811,c_92]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_8572,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k4_xboole_0(k2_xboole_0(X1,X0),k1_xboole_0)) = k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k2_xboole_0(X1,X0)) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_1831,c_1861]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_470,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(X1,X2)) = k4_xboole_0(k4_xboole_0(X0,X1),X2) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_7,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_490,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(X1,X2)) = k4_xboole_0(X0,k2_xboole_0(X1,X2)) ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_470,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_472,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X0,X2)) = k4_xboole_0(k1_xboole_0,X2) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_98,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_489,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X0,X2)) = k1_xboole_0 ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_472,c_8,c_310]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_1213,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X2,X0)) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_0,c_489]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_2555,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,k2_xboole_0(X0,X1)),k1_xboole_0) = k2_xboole_0(X0,X1) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_488,c_1855]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_2588,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k1_xboole_0) = k2_xboole_0(X1,X0) ),
% 11.97/1.98      inference(light_normalisation,[status(thm)],[c_2555,c_1385]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_8650,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_8572,c_490,c_1213,c_2588]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_480,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X0,k2_xboole_0(X1,X2))) = k4_xboole_0(X2,k4_xboole_0(X2,k4_xboole_0(X0,X1))) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_8,c_1]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_22012,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(k2_xboole_0(k4_xboole_0(X1,X0),X0),X1))) = k4_xboole_0(k4_xboole_0(k2_xboole_0(k4_xboole_0(X1,X0),X0),X1),k1_xboole_0) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_8650,c_480]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_2918,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k1_xboole_0,X2)) = k4_xboole_0(k2_xboole_0(X1,X0),X2) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_2588,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_315,plain,
% 11.97/1.98      ( k2_xboole_0(k1_xboole_0,X0) = X0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_306,c_92]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_2934,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),X2) = k4_xboole_0(k2_xboole_0(X1,X0),X2) ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_2918,c_315]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_13213,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(k2_xboole_0(X0,X1),X2),X3) = k4_xboole_0(k2_xboole_0(X1,X0),k2_xboole_0(X2,X3)) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_2934,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_467,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k2_xboole_0(k4_xboole_0(X0,X1),X2)) = k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X0)),X2) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_1,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_21657,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X1))),X2) = k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k2_xboole_0(k1_xboole_0,X2)) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_8650,c_467]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_452,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,k4_xboole_0(X0,X1)),X1) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_1,c_98]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_997,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k2_xboole_0(k4_xboole_0(X0,X1),X1)) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_452,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_1880,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X1)) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_7,c_997]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_21750,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k2_xboole_0(k1_xboole_0,X2)) = k4_xboole_0(k2_xboole_0(X1,X0),X2) ),
% 11.97/1.98      inference(light_normalisation,
% 11.97/1.98                [status(thm)],
% 11.97/1.98                [c_21657,c_1880,c_2588]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_21751,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),X2) = k4_xboole_0(k2_xboole_0(X1,X0),X2) ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_21750,c_315]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_22492,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(k2_xboole_0(X0,X1),X1))) = k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X0)),X1) ),
% 11.97/1.98      inference(demodulation,
% 11.97/1.98                [status(thm)],
% 11.97/1.98                [c_22012,c_378,c_13213,c_21751]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_447,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(k4_xboole_0(X0,X1),k1_xboole_0) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_98,c_1]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_455,plain,
% 11.97/1.98      ( k4_xboole_0(X0,k4_xboole_0(X0,k4_xboole_0(X0,X1))) = k4_xboole_0(X0,X1) ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_447,c_8,c_378]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_22493,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X0)),X1) = k4_xboole_0(X0,X1) ),
% 11.97/1.98      inference(light_normalisation,[status(thm)],[c_22492,c_7,c_455]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_23378,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = k4_xboole_0(X1,k4_xboole_0(X1,k2_xboole_0(X0,k4_xboole_0(X1,X0)))) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_22493,c_1]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_23411,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X0)),k4_xboole_0(X0,X1)) = X1 ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_23378,c_6,c_484]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_24227,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k4_xboole_0(X0,X1),X1))),k1_xboole_0) = k2_xboole_0(X0,X1) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_8650,c_23411]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_24525,plain,
% 11.97/1.98      ( k4_xboole_0(k2_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),X1),k1_xboole_0),k1_xboole_0) = k2_xboole_0(X0,X1) ),
% 11.97/1.98      inference(light_normalisation,[status(thm)],[c_24227,c_1880]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_779,plain,
% 11.97/1.98      ( k2_xboole_0(X0,k2_xboole_0(X0,X1)) = k2_xboole_0(X0,X1) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_488,c_82]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_246,plain,
% 11.97/1.98      ( k2_xboole_0(X0,k4_xboole_0(X0,X1)) = X0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_92,c_0]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_664,plain,
% 11.97/1.98      ( k2_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,X1)) = k2_xboole_0(X0,X1) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_7,c_246]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_3485,plain,
% 11.97/1.98      ( k2_xboole_0(k2_xboole_0(X0,X1),k4_xboole_0(X0,k2_xboole_0(X0,X1))) = k2_xboole_0(X0,k2_xboole_0(X0,X1)) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_779,c_664]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_3572,plain,
% 11.97/1.98      ( k2_xboole_0(k2_xboole_0(X0,X1),k1_xboole_0) = k2_xboole_0(X1,X0) ),
% 11.97/1.98      inference(light_normalisation,[status(thm)],[c_3485,c_488,c_1385]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_24526,plain,
% 11.97/1.98      ( k2_xboole_0(k4_xboole_0(X0,X1),X1) = k2_xboole_0(X0,X1) ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_24525,c_2588,c_3572]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_375,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_7,c_98]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_873,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k2_xboole_0(X0,X1),X2)) = k4_xboole_0(k1_xboole_0,X2) ),
% 11.97/1.98      inference(superposition,[status(thm)],[c_375,c_8]) ).
% 11.97/1.98  
% 11.97/1.98  cnf(c_882,plain,
% 11.97/1.98      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(k2_xboole_0(X0,X1),X2)) = k1_xboole_0 ),
% 11.97/1.98      inference(demodulation,[status(thm)],[c_873,c_8,c_310]) ).
% 11.97/1.99  
% 11.97/1.99  cnf(c_4842,plain,
% 11.97/1.99      ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(k2_xboole_0(k2_xboole_0(X1,X0),k1_xboole_0),X2)) = k1_xboole_0 ),
% 11.97/1.99      inference(superposition,[status(thm)],[c_2588,c_882]) ).
% 11.97/1.99  
% 11.97/1.99  cnf(c_474,plain,
% 11.97/1.99      ( k4_xboole_0(k4_xboole_0(X0,X1),k2_xboole_0(X2,X3)) = k4_xboole_0(k4_xboole_0(X0,k2_xboole_0(X1,X2)),X3) ),
% 11.97/1.99      inference(superposition,[status(thm)],[c_8,c_8]) ).
% 11.97/1.99  
% 11.97/1.99  cnf(c_487,plain,
% 11.97/1.99      ( k4_xboole_0(X0,k2_xboole_0(k2_xboole_0(X1,X2),X3)) = k4_xboole_0(X0,k2_xboole_0(X1,k2_xboole_0(X2,X3))) ),
% 11.97/1.99      inference(demodulation,[status(thm)],[c_474,c_8]) ).
% 11.97/1.99  
% 11.97/1.99  cnf(c_4949,plain,
% 11.97/1.99      ( k4_xboole_0(k2_xboole_0(X0,X1),k2_xboole_0(X0,k2_xboole_0(X1,X2))) = k1_xboole_0 ),
% 11.97/1.99      inference(demodulation,[status(thm)],[c_4842,c_487,c_3572]) ).
% 11.97/1.99  
% 11.97/1.99  cnf(c_17176,plain,
% 11.97/1.99      ( k4_xboole_0(k2_xboole_0(X0,k4_xboole_0(X1,X2)),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
% 11.97/1.99      inference(superposition,[status(thm)],[c_92,c_4949]) ).
% 11.97/1.99  
% 11.97/1.99  cnf(c_34249,plain,
% 11.97/1.99      ( k4_xboole_0(k2_xboole_0(k4_xboole_0(X0,X1),k4_xboole_0(X1,X2)),k2_xboole_0(X0,X1)) = k1_xboole_0 ),
% 11.97/1.99      inference(superposition,[status(thm)],[c_24526,c_17176]) ).
% 11.97/1.99  
% 11.97/1.99  cnf(c_56845,plain,
% 11.97/1.99      ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)) != k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.97/1.99      inference(demodulation,[status(thm)],[c_56844,c_378,c_34249]) ).
% 11.97/1.99  
% 11.97/1.99  cnf(c_325,plain,
% 11.97/1.99      ( k4_xboole_0(sK1,k4_xboole_0(sK1,sK0)) = k4_xboole_0(sK0,k4_xboole_0(sK0,sK1)) ),
% 11.97/1.99      inference(instantiation,[status(thm)],[c_1]) ).
% 11.97/1.99  
% 11.97/1.99  cnf(contradiction,plain,
% 11.97/1.99      ( $false ),
% 11.97/1.99      inference(minisat,[status(thm)],[c_56845,c_325]) ).
% 11.97/1.99  
% 11.97/1.99  
% 11.97/1.99  % SZS output end CNFRefutation for theBenchmark.p
% 11.97/1.99  
% 11.97/1.99  ------                               Statistics
% 11.97/1.99  
% 11.97/1.99  ------ General
% 11.97/1.99  
% 11.97/1.99  abstr_ref_over_cycles:                  0
% 11.97/1.99  abstr_ref_under_cycles:                 0
% 11.97/1.99  gc_basic_clause_elim:                   0
% 11.97/1.99  forced_gc_time:                         0
% 11.97/1.99  parsing_time:                           0.007
% 11.97/1.99  unif_index_cands_time:                  0.
% 11.97/1.99  unif_index_add_time:                    0.
% 11.97/1.99  orderings_time:                         0.
% 11.97/1.99  out_proof_time:                         0.009
% 11.97/1.99  total_time:                             1.431
% 11.97/1.99  num_of_symbols:                         39
% 11.97/1.99  num_of_terms:                           77154
% 11.97/1.99  
% 11.97/1.99  ------ Preprocessing
% 11.97/1.99  
% 11.97/1.99  num_of_splits:                          0
% 11.97/1.99  num_of_split_atoms:                     2
% 11.97/1.99  num_of_reused_defs:                     0
% 11.97/1.99  num_eq_ax_congr_red:                    1
% 11.97/1.99  num_of_sem_filtered_clauses:            0
% 11.97/1.99  num_of_subtypes:                        0
% 11.97/1.99  monotx_restored_types:                  0
% 11.97/1.99  sat_num_of_epr_types:                   0
% 11.97/1.99  sat_num_of_non_cyclic_types:            0
% 11.97/1.99  sat_guarded_non_collapsed_types:        0
% 11.97/1.99  num_pure_diseq_elim:                    0
% 11.97/1.99  simp_replaced_by:                       0
% 11.97/1.99  res_preprocessed:                       32
% 11.97/1.99  prep_upred:                             0
% 11.97/1.99  prep_unflattend:                        4
% 11.97/1.99  smt_new_axioms:                         0
% 11.97/1.99  pred_elim_cands:                        0
% 11.97/1.99  pred_elim:                              1
% 11.97/1.99  pred_elim_cl:                           1
% 11.97/1.99  pred_elim_cycles:                       2
% 11.97/1.99  merged_defs:                            2
% 11.97/1.99  merged_defs_ncl:                        0
% 11.97/1.99  bin_hyper_res:                          2
% 11.97/1.99  prep_cycles:                            3
% 11.97/1.99  pred_elim_time:                         0.
% 11.97/1.99  splitting_time:                         0.
% 11.97/1.99  sem_filter_time:                        0.
% 11.97/1.99  monotx_time:                            0.
% 11.97/1.99  subtype_inf_time:                       0.
% 11.97/1.99  
% 11.97/1.99  ------ Problem properties
% 11.97/1.99  
% 11.97/1.99  clauses:                                9
% 11.97/1.99  conjectures:                            1
% 11.97/1.99  epr:                                    0
% 11.97/1.99  horn:                                   9
% 11.97/1.99  ground:                                 1
% 11.97/1.99  unary:                                  8
% 11.97/1.99  binary:                                 1
% 11.97/1.99  lits:                                   10
% 11.97/1.99  lits_eq:                                10
% 11.97/1.99  fd_pure:                                0
% 11.97/1.99  fd_pseudo:                              0
% 11.97/1.99  fd_cond:                                0
% 11.97/1.99  fd_pseudo_cond:                         0
% 11.97/1.99  ac_symbols:                             0
% 11.97/1.99  
% 11.97/1.99  ------ Propositional Solver
% 11.97/1.99  
% 11.97/1.99  prop_solver_calls:                      30
% 11.97/1.99  prop_fast_solver_calls:                 353
% 11.97/1.99  smt_solver_calls:                       0
% 11.97/1.99  smt_fast_solver_calls:                  0
% 11.97/1.99  prop_num_of_clauses:                    9878
% 11.97/1.99  prop_preprocess_simplified:             12128
% 11.97/1.99  prop_fo_subsumed:                       0
% 11.97/1.99  prop_solver_time:                       0.
% 11.97/1.99  smt_solver_time:                        0.
% 11.97/1.99  smt_fast_solver_time:                   0.
% 11.97/1.99  prop_fast_solver_time:                  0.
% 11.97/1.99  prop_unsat_core_time:                   0.001
% 11.97/1.99  
% 11.97/1.99  ------ QBF
% 11.97/1.99  
% 11.97/1.99  qbf_q_res:                              0
% 11.97/1.99  qbf_num_tautologies:                    0
% 11.97/1.99  qbf_prep_cycles:                        0
% 11.97/1.99  
% 11.97/1.99  ------ BMC1
% 11.97/1.99  
% 11.97/1.99  bmc1_current_bound:                     -1
% 11.97/1.99  bmc1_last_solved_bound:                 -1
% 11.97/1.99  bmc1_unsat_core_size:                   -1
% 11.97/1.99  bmc1_unsat_core_parents_size:           -1
% 11.97/1.99  bmc1_merge_next_fun:                    0
% 11.97/1.99  bmc1_unsat_core_clauses_time:           0.
% 11.97/1.99  
% 11.97/1.99  ------ Instantiation
% 11.97/1.99  
% 11.97/1.99  inst_num_of_clauses:                    2741
% 11.97/1.99  inst_num_in_passive:                    1724
% 11.97/1.99  inst_num_in_active:                     895
% 11.97/1.99  inst_num_in_unprocessed:                122
% 11.97/1.99  inst_num_of_loops:                      950
% 11.97/1.99  inst_num_of_learning_restarts:          0
% 11.97/1.99  inst_num_moves_active_passive:          50
% 11.97/1.99  inst_lit_activity:                      0
% 11.97/1.99  inst_lit_activity_moves:                0
% 11.97/1.99  inst_num_tautologies:                   0
% 11.97/1.99  inst_num_prop_implied:                  0
% 11.97/1.99  inst_num_existing_simplified:           0
% 11.97/1.99  inst_num_eq_res_simplified:             0
% 11.97/1.99  inst_num_child_elim:                    0
% 11.97/1.99  inst_num_of_dismatching_blockings:      1775
% 11.97/1.99  inst_num_of_non_proper_insts:           4774
% 11.97/1.99  inst_num_of_duplicates:                 0
% 11.97/1.99  inst_inst_num_from_inst_to_res:         0
% 11.97/1.99  inst_dismatching_checking_time:         0.
% 11.97/1.99  
% 11.97/1.99  ------ Resolution
% 11.97/1.99  
% 11.97/1.99  res_num_of_clauses:                     0
% 11.97/1.99  res_num_in_passive:                     0
% 11.97/1.99  res_num_in_active:                      0
% 11.97/1.99  res_num_of_loops:                       35
% 11.97/1.99  res_forward_subset_subsumed:            1043
% 11.97/1.99  res_backward_subset_subsumed:           6
% 11.97/1.99  res_forward_subsumed:                   0
% 11.97/1.99  res_backward_subsumed:                  0
% 11.97/1.99  res_forward_subsumption_resolution:     0
% 11.97/1.99  res_backward_subsumption_resolution:    0
% 11.97/1.99  res_clause_to_clause_subsumption:       94164
% 11.97/1.99  res_orphan_elimination:                 0
% 11.97/1.99  res_tautology_del:                      620
% 11.97/1.99  res_num_eq_res_simplified:              0
% 11.97/1.99  res_num_sel_changes:                    0
% 11.97/1.99  res_moves_from_active_to_pass:          0
% 11.97/1.99  
% 11.97/1.99  ------ Superposition
% 11.97/1.99  
% 11.97/1.99  sup_time_total:                         0.
% 11.97/1.99  sup_time_generating:                    0.
% 11.97/1.99  sup_time_sim_full:                      0.
% 11.97/1.99  sup_time_sim_immed:                     0.
% 11.97/1.99  
% 11.97/1.99  sup_num_of_clauses:                     3525
% 11.97/1.99  sup_num_in_active:                      152
% 11.97/1.99  sup_num_in_passive:                     3373
% 11.97/1.99  sup_num_of_loops:                       189
% 11.97/1.99  sup_fw_superposition:                   16055
% 11.97/1.99  sup_bw_superposition:                   12003
% 11.97/1.99  sup_immediate_simplified:               13584
% 11.97/1.99  sup_given_eliminated:                   3
% 11.97/1.99  comparisons_done:                       0
% 11.97/1.99  comparisons_avoided:                    0
% 11.97/1.99  
% 11.97/1.99  ------ Simplifications
% 11.97/1.99  
% 11.97/1.99  
% 11.97/1.99  sim_fw_subset_subsumed:                 5
% 11.97/1.99  sim_bw_subset_subsumed:                 0
% 11.97/1.99  sim_fw_subsumed:                        2242
% 11.97/1.99  sim_bw_subsumed:                        46
% 11.97/1.99  sim_fw_subsumption_res:                 0
% 11.97/1.99  sim_bw_subsumption_res:                 0
% 11.97/1.99  sim_tautology_del:                      26
% 11.97/1.99  sim_eq_tautology_del:                   4234
% 11.97/1.99  sim_eq_res_simp:                        7
% 11.97/1.99  sim_fw_demodulated:                     8485
% 11.97/1.99  sim_bw_demodulated:                     124
% 11.97/1.99  sim_light_normalised:                   5519
% 11.97/1.99  sim_joinable_taut:                      0
% 11.97/1.99  sim_joinable_simp:                      0
% 11.97/1.99  sim_ac_normalised:                      0
% 11.97/1.99  sim_smt_subsumption:                    0
% 11.97/1.99  
%------------------------------------------------------------------------------
