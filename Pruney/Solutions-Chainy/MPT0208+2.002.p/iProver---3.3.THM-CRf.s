%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:28:21 EST 2020

% Result     : Theorem 1.33s
% Output     : CNFRefutation 1.33s
% Verified   : 
% Statistics : Number of formulae       :   50 ( 185 expanded)
%              Number of clauses        :   19 (  38 expanded)
%              Number of leaves         :   11 (  60 expanded)
%              Depth                    :   13
%              Number of atoms          :   51 ( 186 expanded)
%              Number of equality atoms :   50 ( 185 expanded)
%              Maximal formula depth    :   12 (   5 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    4 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f5,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k1_enumset1(X0,X1,X2),k4_enumset1(X3,X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f19,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k2_xboole_0(k1_enumset1(X0,X1,X2),k4_enumset1(X3,X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(cnf_transformation,[],[f5])).

fof(f9,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f9])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f17,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(cnf_transformation,[],[f3])).

fof(f2,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f16,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0)) ),
    inference(cnf_transformation,[],[f2])).

fof(f25,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(definition_unfolding,[],[f17,f16])).

fof(f29,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) = k5_xboole_0(k1_enumset1(X0,X1,X2),k4_xboole_0(k5_enumset1(X3,X3,X4,X5,X6,X7,X8),k1_enumset1(X0,X1,X2))) ),
    inference(definition_unfolding,[],[f19,f16,f23,f25])).

fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f15,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f27,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k5_xboole_0(X1,k4_xboole_0(X0,X1)) ),
    inference(definition_unfolding,[],[f15,f16,f16])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f20,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(cnf_transformation,[],[f6])).

fof(f30,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) = k5_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k4_xboole_0(k2_enumset1(X5,X6,X7,X8),k3_enumset1(X0,X1,X2,X3,X4))) ),
    inference(definition_unfolding,[],[f20,f16,f25])).

fof(f4,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k1_tarski(X0),k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f18,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k2_xboole_0(k1_tarski(X0),k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(cnf_transformation,[],[f4])).

fof(f7,axiom,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f21,plain,(
    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0) ),
    inference(cnf_transformation,[],[f7])).

fof(f8,axiom,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1) ),
    inference(cnf_transformation,[],[f8])).

fof(f26,plain,(
    ! [X0] : k1_tarski(X0) = k1_enumset1(X0,X0,X0) ),
    inference(definition_unfolding,[],[f21,f22])).

fof(f28,plain,(
    ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) = k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k1_enumset1(X0,X0,X0))) ),
    inference(definition_unfolding,[],[f18,f16,f26,f25])).

fof(f10,conjecture,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,negated_conjecture,(
    ~ ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(negated_conjecture,[],[f10])).

fof(f12,plain,(
    ? [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) != k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(ennf_transformation,[],[f11])).

fof(f13,plain,
    ( ? [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) != k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)
   => k2_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k1_tarski(sK8)) != k7_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7,sK8) ),
    introduced(choice_axiom,[])).

fof(f14,plain,(
    k2_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k1_tarski(sK8)) != k7_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7,sK8) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7,sK8])],[f12,f13])).

fof(f24,plain,(
    k2_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k1_tarski(sK8)) != k7_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7,sK8) ),
    inference(cnf_transformation,[],[f14])).

fof(f31,plain,(
    k5_xboole_0(k2_enumset1(sK0,sK1,sK2,sK3),k4_xboole_0(k3_enumset1(sK4,sK5,sK6,sK7,sK8),k2_enumset1(sK0,sK1,sK2,sK3))) != k5_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k4_xboole_0(k1_enumset1(sK8,sK8,sK8),k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7))) ),
    inference(definition_unfolding,[],[f24,f16,f26,f25])).

cnf(c_2,plain,
    ( k5_xboole_0(k1_enumset1(X0,X1,X2),k4_xboole_0(k5_enumset1(X3,X3,X4,X5,X6,X7,X8),k1_enumset1(X0,X1,X2))) = k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) ),
    inference(cnf_transformation,[],[f29])).

cnf(c_19,plain,
    ( k5_xboole_0(k1_enumset1(X0_47,X1_47,X2_47),k4_xboole_0(k5_enumset1(X3_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X1_47,X2_47))) = k5_xboole_0(k2_enumset1(X0_47,X1_47,X2_47,X3_47),k4_xboole_0(k3_enumset1(X4_47,X5_47,X6_47,X7_47,X8_47),k2_enumset1(X0_47,X1_47,X2_47,X3_47))) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_0,plain,
    ( k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k5_xboole_0(X1,k4_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f27])).

cnf(c_21,plain,
    ( k5_xboole_0(X0_45,k4_xboole_0(X1_45,X0_45)) = k5_xboole_0(X1_45,k4_xboole_0(X0_45,X1_45)) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_3,plain,
    ( k5_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k4_xboole_0(k2_enumset1(X5,X6,X7,X8),k3_enumset1(X0,X1,X2,X3,X4))) = k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) ),
    inference(cnf_transformation,[],[f30])).

cnf(c_18,plain,
    ( k5_xboole_0(k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47),k4_xboole_0(k2_enumset1(X5_47,X6_47,X7_47,X8_47),k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47))) = k5_xboole_0(k2_enumset1(X0_47,X1_47,X2_47,X3_47),k4_xboole_0(k3_enumset1(X4_47,X5_47,X6_47,X7_47,X8_47),k2_enumset1(X0_47,X1_47,X2_47,X3_47))) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_29,plain,
    ( k5_xboole_0(k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47),k4_xboole_0(k2_enumset1(X5_47,X6_47,X7_47,X8_47),k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47))) = k5_xboole_0(k1_enumset1(X0_47,X1_47,X2_47),k4_xboole_0(k5_enumset1(X3_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X1_47,X2_47))) ),
    inference(light_normalisation,[status(thm)],[c_18,c_19])).

cnf(c_50,plain,
    ( k5_xboole_0(k1_enumset1(X0_47,X1_47,X2_47),k4_xboole_0(k5_enumset1(X3_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X1_47,X2_47))) = k5_xboole_0(k2_enumset1(X5_47,X6_47,X7_47,X8_47),k4_xboole_0(k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47),k2_enumset1(X5_47,X6_47,X7_47,X8_47))) ),
    inference(superposition,[status(thm)],[c_21,c_29])).

cnf(c_57,plain,
    ( k5_xboole_0(k1_enumset1(X0_47,X1_47,X2_47),k4_xboole_0(k5_enumset1(X3_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X1_47,X2_47))) = k5_xboole_0(k1_enumset1(X5_47,X6_47,X7_47),k4_xboole_0(k5_enumset1(X8_47,X8_47,X0_47,X1_47,X2_47,X3_47,X4_47),k1_enumset1(X5_47,X6_47,X7_47))) ),
    inference(superposition,[status(thm)],[c_19,c_50])).

cnf(c_1,plain,
    ( k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k1_enumset1(X0,X0,X0))) = k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) ),
    inference(cnf_transformation,[],[f28])).

cnf(c_20,plain,
    ( k5_xboole_0(k1_enumset1(X0_47,X0_47,X0_47),k4_xboole_0(k6_enumset1(X1_47,X2_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X0_47,X0_47))) = k5_xboole_0(k2_enumset1(X0_47,X1_47,X2_47,X3_47),k4_xboole_0(k3_enumset1(X4_47,X5_47,X6_47,X7_47,X8_47),k2_enumset1(X0_47,X1_47,X2_47,X3_47))) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_4,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(sK0,sK1,sK2,sK3),k4_xboole_0(k3_enumset1(sK4,sK5,sK6,sK7,sK8),k2_enumset1(sK0,sK1,sK2,sK3))) != k5_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k4_xboole_0(k1_enumset1(sK8,sK8,sK8),k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7))) ),
    inference(cnf_transformation,[],[f31])).

cnf(c_17,negated_conjecture,
    ( k5_xboole_0(k2_enumset1(sK0,sK1,sK2,sK3),k4_xboole_0(k3_enumset1(sK4,sK5,sK6,sK7,sK8),k2_enumset1(sK0,sK1,sK2,sK3))) != k5_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k4_xboole_0(k1_enumset1(sK8,sK8,sK8),k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7))) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_30,plain,
    ( k5_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k4_xboole_0(k1_enumset1(sK8,sK8,sK8),k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
    inference(demodulation,[status(thm)],[c_17,c_19])).

cnf(c_31,plain,
    ( k5_xboole_0(k1_enumset1(sK8,sK8,sK8),k4_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k1_enumset1(sK8,sK8,sK8))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
    inference(demodulation,[status(thm)],[c_21,c_30])).

cnf(c_36,plain,
    ( k5_xboole_0(k2_enumset1(sK8,sK0,sK1,sK2),k4_xboole_0(k3_enumset1(sK3,sK4,sK5,sK6,sK7),k2_enumset1(sK8,sK0,sK1,sK2))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
    inference(demodulation,[status(thm)],[c_20,c_31])).

cnf(c_37,plain,
    ( k5_xboole_0(k1_enumset1(sK8,sK0,sK1),k4_xboole_0(k5_enumset1(sK2,sK2,sK3,sK4,sK5,sK6,sK7),k1_enumset1(sK8,sK0,sK1))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
    inference(demodulation,[status(thm)],[c_36,c_19])).

cnf(c_96,plain,
    ( k5_xboole_0(k1_enumset1(sK4,sK5,sK6),k4_xboole_0(k5_enumset1(sK7,sK7,sK8,sK0,sK1,sK2,sK3),k1_enumset1(sK4,sK5,sK6))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
    inference(demodulation,[status(thm)],[c_57,c_37])).

cnf(c_175,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_57,c_96])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.14  % Command    : iproveropt_run.sh %d %s
% 0.13/0.35  % Computer   : n007.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 15:34:06 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running in FOF mode
% 1.33/1.05  % SZS status Started for /export/starexec/sandbox/benchmark/theBenchmark.p
% 1.33/1.05  
% 1.33/1.05  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 1.33/1.05  
% 1.33/1.05  ------  iProver source info
% 1.33/1.05  
% 1.33/1.05  git: date: 2020-06-30 10:37:57 +0100
% 1.33/1.05  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 1.33/1.05  git: non_committed_changes: false
% 1.33/1.05  git: last_make_outside_of_git: false
% 1.33/1.05  
% 1.33/1.05  ------ 
% 1.33/1.05  
% 1.33/1.05  ------ Input Options
% 1.33/1.05  
% 1.33/1.05  --out_options                           all
% 1.33/1.05  --tptp_safe_out                         true
% 1.33/1.05  --problem_path                          ""
% 1.33/1.05  --include_path                          ""
% 1.33/1.05  --clausifier                            res/vclausify_rel
% 1.33/1.05  --clausifier_options                    --mode clausify
% 1.33/1.05  --stdin                                 false
% 1.33/1.05  --stats_out                             all
% 1.33/1.05  
% 1.33/1.05  ------ General Options
% 1.33/1.05  
% 1.33/1.05  --fof                                   false
% 1.33/1.05  --time_out_real                         305.
% 1.33/1.05  --time_out_virtual                      -1.
% 1.33/1.05  --symbol_type_check                     false
% 1.33/1.05  --clausify_out                          false
% 1.33/1.05  --sig_cnt_out                           false
% 1.33/1.05  --trig_cnt_out                          false
% 1.33/1.05  --trig_cnt_out_tolerance                1.
% 1.33/1.05  --trig_cnt_out_sk_spl                   false
% 1.33/1.05  --abstr_cl_out                          false
% 1.33/1.05  
% 1.33/1.05  ------ Global Options
% 1.33/1.05  
% 1.33/1.05  --schedule                              default
% 1.33/1.05  --add_important_lit                     false
% 1.33/1.05  --prop_solver_per_cl                    1000
% 1.33/1.05  --min_unsat_core                        false
% 1.33/1.05  --soft_assumptions                      false
% 1.33/1.05  --soft_lemma_size                       3
% 1.33/1.05  --prop_impl_unit_size                   0
% 1.33/1.05  --prop_impl_unit                        []
% 1.33/1.05  --share_sel_clauses                     true
% 1.33/1.05  --reset_solvers                         false
% 1.33/1.05  --bc_imp_inh                            [conj_cone]
% 1.33/1.05  --conj_cone_tolerance                   3.
% 1.33/1.05  --extra_neg_conj                        none
% 1.33/1.05  --large_theory_mode                     true
% 1.33/1.05  --prolific_symb_bound                   200
% 1.33/1.05  --lt_threshold                          2000
% 1.33/1.05  --clause_weak_htbl                      true
% 1.33/1.05  --gc_record_bc_elim                     false
% 1.33/1.05  
% 1.33/1.05  ------ Preprocessing Options
% 1.33/1.05  
% 1.33/1.05  --preprocessing_flag                    true
% 1.33/1.05  --time_out_prep_mult                    0.1
% 1.33/1.05  --splitting_mode                        input
% 1.33/1.05  --splitting_grd                         true
% 1.33/1.05  --splitting_cvd                         false
% 1.33/1.05  --splitting_cvd_svl                     false
% 1.33/1.05  --splitting_nvd                         32
% 1.33/1.05  --sub_typing                            true
% 1.33/1.05  --prep_gs_sim                           true
% 1.33/1.05  --prep_unflatten                        true
% 1.33/1.05  --prep_res_sim                          true
% 1.33/1.05  --prep_upred                            true
% 1.33/1.05  --prep_sem_filter                       exhaustive
% 1.33/1.05  --prep_sem_filter_out                   false
% 1.33/1.05  --pred_elim                             true
% 1.33/1.05  --res_sim_input                         true
% 1.33/1.05  --eq_ax_congr_red                       true
% 1.33/1.05  --pure_diseq_elim                       true
% 1.33/1.05  --brand_transform                       false
% 1.33/1.05  --non_eq_to_eq                          false
% 1.33/1.05  --prep_def_merge                        true
% 1.33/1.05  --prep_def_merge_prop_impl              false
% 1.33/1.05  --prep_def_merge_mbd                    true
% 1.33/1.05  --prep_def_merge_tr_red                 false
% 1.33/1.05  --prep_def_merge_tr_cl                  false
% 1.33/1.05  --smt_preprocessing                     true
% 1.33/1.05  --smt_ac_axioms                         fast
% 1.33/1.05  --preprocessed_out                      false
% 1.33/1.05  --preprocessed_stats                    false
% 1.33/1.05  
% 1.33/1.05  ------ Abstraction refinement Options
% 1.33/1.05  
% 1.33/1.05  --abstr_ref                             []
% 1.33/1.05  --abstr_ref_prep                        false
% 1.33/1.05  --abstr_ref_until_sat                   false
% 1.33/1.05  --abstr_ref_sig_restrict                funpre
% 1.33/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 1.33/1.05  --abstr_ref_under                       []
% 1.33/1.05  
% 1.33/1.05  ------ SAT Options
% 1.33/1.05  
% 1.33/1.05  --sat_mode                              false
% 1.33/1.05  --sat_fm_restart_options                ""
% 1.33/1.05  --sat_gr_def                            false
% 1.33/1.05  --sat_epr_types                         true
% 1.33/1.05  --sat_non_cyclic_types                  false
% 1.33/1.05  --sat_finite_models                     false
% 1.33/1.05  --sat_fm_lemmas                         false
% 1.33/1.05  --sat_fm_prep                           false
% 1.33/1.05  --sat_fm_uc_incr                        true
% 1.33/1.05  --sat_out_model                         small
% 1.33/1.05  --sat_out_clauses                       false
% 1.33/1.05  
% 1.33/1.05  ------ QBF Options
% 1.33/1.05  
% 1.33/1.05  --qbf_mode                              false
% 1.33/1.05  --qbf_elim_univ                         false
% 1.33/1.05  --qbf_dom_inst                          none
% 1.33/1.05  --qbf_dom_pre_inst                      false
% 1.33/1.05  --qbf_sk_in                             false
% 1.33/1.05  --qbf_pred_elim                         true
% 1.33/1.05  --qbf_split                             512
% 1.33/1.05  
% 1.33/1.05  ------ BMC1 Options
% 1.33/1.05  
% 1.33/1.05  --bmc1_incremental                      false
% 1.33/1.05  --bmc1_axioms                           reachable_all
% 1.33/1.05  --bmc1_min_bound                        0
% 1.33/1.05  --bmc1_max_bound                        -1
% 1.33/1.05  --bmc1_max_bound_default                -1
% 1.33/1.05  --bmc1_symbol_reachability              true
% 1.33/1.05  --bmc1_property_lemmas                  false
% 1.33/1.05  --bmc1_k_induction                      false
% 1.33/1.05  --bmc1_non_equiv_states                 false
% 1.33/1.05  --bmc1_deadlock                         false
% 1.33/1.05  --bmc1_ucm                              false
% 1.33/1.05  --bmc1_add_unsat_core                   none
% 1.33/1.05  --bmc1_unsat_core_children              false
% 1.33/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 1.33/1.05  --bmc1_out_stat                         full
% 1.33/1.05  --bmc1_ground_init                      false
% 1.33/1.05  --bmc1_pre_inst_next_state              false
% 1.33/1.05  --bmc1_pre_inst_state                   false
% 1.33/1.05  --bmc1_pre_inst_reach_state             false
% 1.33/1.05  --bmc1_out_unsat_core                   false
% 1.33/1.05  --bmc1_aig_witness_out                  false
% 1.33/1.05  --bmc1_verbose                          false
% 1.33/1.05  --bmc1_dump_clauses_tptp                false
% 1.33/1.05  --bmc1_dump_unsat_core_tptp             false
% 1.33/1.05  --bmc1_dump_file                        -
% 1.33/1.05  --bmc1_ucm_expand_uc_limit              128
% 1.33/1.05  --bmc1_ucm_n_expand_iterations          6
% 1.33/1.05  --bmc1_ucm_extend_mode                  1
% 1.33/1.05  --bmc1_ucm_init_mode                    2
% 1.33/1.05  --bmc1_ucm_cone_mode                    none
% 1.33/1.05  --bmc1_ucm_reduced_relation_type        0
% 1.33/1.05  --bmc1_ucm_relax_model                  4
% 1.33/1.05  --bmc1_ucm_full_tr_after_sat            true
% 1.33/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 1.33/1.05  --bmc1_ucm_layered_model                none
% 1.33/1.05  --bmc1_ucm_max_lemma_size               10
% 1.33/1.05  
% 1.33/1.05  ------ AIG Options
% 1.33/1.05  
% 1.33/1.05  --aig_mode                              false
% 1.33/1.05  
% 1.33/1.05  ------ Instantiation Options
% 1.33/1.05  
% 1.33/1.05  --instantiation_flag                    true
% 1.33/1.05  --inst_sos_flag                         false
% 1.33/1.05  --inst_sos_phase                        true
% 1.33/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.33/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.33/1.05  --inst_lit_sel_side                     num_symb
% 1.33/1.05  --inst_solver_per_active                1400
% 1.33/1.05  --inst_solver_calls_frac                1.
% 1.33/1.05  --inst_passive_queue_type               priority_queues
% 1.33/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.33/1.05  --inst_passive_queues_freq              [25;2]
% 1.33/1.05  --inst_dismatching                      true
% 1.33/1.05  --inst_eager_unprocessed_to_passive     true
% 1.33/1.05  --inst_prop_sim_given                   true
% 1.33/1.05  --inst_prop_sim_new                     false
% 1.33/1.05  --inst_subs_new                         false
% 1.33/1.05  --inst_eq_res_simp                      false
% 1.33/1.05  --inst_subs_given                       false
% 1.33/1.05  --inst_orphan_elimination               true
% 1.33/1.05  --inst_learning_loop_flag               true
% 1.33/1.05  --inst_learning_start                   3000
% 1.33/1.05  --inst_learning_factor                  2
% 1.33/1.05  --inst_start_prop_sim_after_learn       3
% 1.33/1.05  --inst_sel_renew                        solver
% 1.33/1.05  --inst_lit_activity_flag                true
% 1.33/1.05  --inst_restr_to_given                   false
% 1.33/1.05  --inst_activity_threshold               500
% 1.33/1.05  --inst_out_proof                        true
% 1.33/1.05  
% 1.33/1.05  ------ Resolution Options
% 1.33/1.05  
% 1.33/1.05  --resolution_flag                       true
% 1.33/1.05  --res_lit_sel                           adaptive
% 1.33/1.05  --res_lit_sel_side                      none
% 1.33/1.05  --res_ordering                          kbo
% 1.33/1.05  --res_to_prop_solver                    active
% 1.33/1.05  --res_prop_simpl_new                    false
% 1.33/1.05  --res_prop_simpl_given                  true
% 1.33/1.05  --res_passive_queue_type                priority_queues
% 1.33/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.33/1.05  --res_passive_queues_freq               [15;5]
% 1.33/1.05  --res_forward_subs                      full
% 1.33/1.05  --res_backward_subs                     full
% 1.33/1.05  --res_forward_subs_resolution           true
% 1.33/1.05  --res_backward_subs_resolution          true
% 1.33/1.05  --res_orphan_elimination                true
% 1.33/1.05  --res_time_limit                        2.
% 1.33/1.05  --res_out_proof                         true
% 1.33/1.05  
% 1.33/1.05  ------ Superposition Options
% 1.33/1.05  
% 1.33/1.05  --superposition_flag                    true
% 1.33/1.05  --sup_passive_queue_type                priority_queues
% 1.33/1.05  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.33/1.05  --sup_passive_queues_freq               [8;1;4]
% 1.33/1.05  --demod_completeness_check              fast
% 1.33/1.05  --demod_use_ground                      true
% 1.33/1.05  --sup_to_prop_solver                    passive
% 1.33/1.05  --sup_prop_simpl_new                    true
% 1.33/1.05  --sup_prop_simpl_given                  true
% 1.33/1.05  --sup_fun_splitting                     false
% 1.33/1.05  --sup_smt_interval                      50000
% 1.33/1.05  
% 1.33/1.05  ------ Superposition Simplification Setup
% 1.33/1.05  
% 1.33/1.05  --sup_indices_passive                   []
% 1.33/1.05  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.33/1.05  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.33/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.33/1.05  --sup_full_triv                         [TrivRules;PropSubs]
% 1.33/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.33/1.05  --sup_full_bw                           [BwDemod]
% 1.33/1.05  --sup_immed_triv                        [TrivRules]
% 1.33/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.33/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.33/1.05  --sup_immed_bw_main                     []
% 1.33/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.33/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 1.33/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 1.33/1.05  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 1.33/1.05  
% 1.33/1.05  ------ Combination Options
% 1.33/1.05  
% 1.33/1.05  --comb_res_mult                         3
% 1.33/1.05  --comb_sup_mult                         2
% 1.33/1.05  --comb_inst_mult                        10
% 1.33/1.05  
% 1.33/1.05  ------ Debug Options
% 1.33/1.05  
% 1.33/1.05  --dbg_backtrace                         false
% 1.33/1.05  --dbg_dump_prop_clauses                 false
% 1.33/1.05  --dbg_dump_prop_clauses_file            -
% 1.33/1.05  --dbg_out_stat                          false
% 1.33/1.05  ------ Parsing...
% 1.33/1.05  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 1.33/1.05  
% 1.33/1.05  ------ Preprocessing... sf_s  rm: 0 0s  sf_e  pe_s  pe_e 
% 1.33/1.05  
% 1.33/1.05  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 1.33/1.05  
% 1.33/1.05  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 1.33/1.05  ------ Proving...
% 1.33/1.05  ------ Problem Properties 
% 1.33/1.05  
% 1.33/1.05  
% 1.33/1.05  clauses                                 5
% 1.33/1.05  conjectures                             1
% 1.33/1.05  EPR                                     0
% 1.33/1.05  Horn                                    5
% 1.33/1.05  unary                                   5
% 1.33/1.05  binary                                  0
% 1.33/1.05  lits                                    5
% 1.33/1.05  lits eq                                 5
% 1.33/1.05  fd_pure                                 0
% 1.33/1.05  fd_pseudo                               0
% 1.33/1.05  fd_cond                                 0
% 1.33/1.05  fd_pseudo_cond                          0
% 1.33/1.05  AC symbols                              0
% 1.33/1.05  
% 1.33/1.05  ------ Schedule UEQ
% 1.33/1.05  
% 1.33/1.05  ------ pure equality problem: resolution off 
% 1.33/1.05  
% 1.33/1.05  ------ Option_UEQ Time Limit: Unbounded
% 1.33/1.05  
% 1.33/1.05  
% 1.33/1.05  ------ 
% 1.33/1.05  Current options:
% 1.33/1.05  ------ 
% 1.33/1.05  
% 1.33/1.05  ------ Input Options
% 1.33/1.05  
% 1.33/1.05  --out_options                           all
% 1.33/1.05  --tptp_safe_out                         true
% 1.33/1.05  --problem_path                          ""
% 1.33/1.05  --include_path                          ""
% 1.33/1.05  --clausifier                            res/vclausify_rel
% 1.33/1.05  --clausifier_options                    --mode clausify
% 1.33/1.05  --stdin                                 false
% 1.33/1.05  --stats_out                             all
% 1.33/1.05  
% 1.33/1.05  ------ General Options
% 1.33/1.05  
% 1.33/1.05  --fof                                   false
% 1.33/1.05  --time_out_real                         305.
% 1.33/1.05  --time_out_virtual                      -1.
% 1.33/1.05  --symbol_type_check                     false
% 1.33/1.05  --clausify_out                          false
% 1.33/1.05  --sig_cnt_out                           false
% 1.33/1.05  --trig_cnt_out                          false
% 1.33/1.05  --trig_cnt_out_tolerance                1.
% 1.33/1.05  --trig_cnt_out_sk_spl                   false
% 1.33/1.05  --abstr_cl_out                          false
% 1.33/1.05  
% 1.33/1.05  ------ Global Options
% 1.33/1.05  
% 1.33/1.05  --schedule                              default
% 1.33/1.05  --add_important_lit                     false
% 1.33/1.05  --prop_solver_per_cl                    1000
% 1.33/1.05  --min_unsat_core                        false
% 1.33/1.05  --soft_assumptions                      false
% 1.33/1.05  --soft_lemma_size                       3
% 1.33/1.05  --prop_impl_unit_size                   0
% 1.33/1.05  --prop_impl_unit                        []
% 1.33/1.05  --share_sel_clauses                     true
% 1.33/1.05  --reset_solvers                         false
% 1.33/1.05  --bc_imp_inh                            [conj_cone]
% 1.33/1.05  --conj_cone_tolerance                   3.
% 1.33/1.05  --extra_neg_conj                        none
% 1.33/1.05  --large_theory_mode                     true
% 1.33/1.05  --prolific_symb_bound                   200
% 1.33/1.05  --lt_threshold                          2000
% 1.33/1.05  --clause_weak_htbl                      true
% 1.33/1.05  --gc_record_bc_elim                     false
% 1.33/1.05  
% 1.33/1.05  ------ Preprocessing Options
% 1.33/1.05  
% 1.33/1.05  --preprocessing_flag                    true
% 1.33/1.05  --time_out_prep_mult                    0.1
% 1.33/1.05  --splitting_mode                        input
% 1.33/1.05  --splitting_grd                         true
% 1.33/1.05  --splitting_cvd                         false
% 1.33/1.05  --splitting_cvd_svl                     false
% 1.33/1.05  --splitting_nvd                         32
% 1.33/1.05  --sub_typing                            true
% 1.33/1.05  --prep_gs_sim                           true
% 1.33/1.05  --prep_unflatten                        true
% 1.33/1.05  --prep_res_sim                          true
% 1.33/1.05  --prep_upred                            true
% 1.33/1.05  --prep_sem_filter                       exhaustive
% 1.33/1.05  --prep_sem_filter_out                   false
% 1.33/1.05  --pred_elim                             true
% 1.33/1.05  --res_sim_input                         true
% 1.33/1.05  --eq_ax_congr_red                       true
% 1.33/1.05  --pure_diseq_elim                       true
% 1.33/1.05  --brand_transform                       false
% 1.33/1.05  --non_eq_to_eq                          false
% 1.33/1.05  --prep_def_merge                        true
% 1.33/1.05  --prep_def_merge_prop_impl              false
% 1.33/1.05  --prep_def_merge_mbd                    true
% 1.33/1.05  --prep_def_merge_tr_red                 false
% 1.33/1.05  --prep_def_merge_tr_cl                  false
% 1.33/1.05  --smt_preprocessing                     true
% 1.33/1.05  --smt_ac_axioms                         fast
% 1.33/1.05  --preprocessed_out                      false
% 1.33/1.05  --preprocessed_stats                    false
% 1.33/1.05  
% 1.33/1.05  ------ Abstraction refinement Options
% 1.33/1.05  
% 1.33/1.05  --abstr_ref                             []
% 1.33/1.05  --abstr_ref_prep                        false
% 1.33/1.05  --abstr_ref_until_sat                   false
% 1.33/1.05  --abstr_ref_sig_restrict                funpre
% 1.33/1.05  --abstr_ref_af_restrict_to_split_sk     false
% 1.33/1.05  --abstr_ref_under                       []
% 1.33/1.05  
% 1.33/1.05  ------ SAT Options
% 1.33/1.05  
% 1.33/1.05  --sat_mode                              false
% 1.33/1.05  --sat_fm_restart_options                ""
% 1.33/1.05  --sat_gr_def                            false
% 1.33/1.05  --sat_epr_types                         true
% 1.33/1.05  --sat_non_cyclic_types                  false
% 1.33/1.05  --sat_finite_models                     false
% 1.33/1.05  --sat_fm_lemmas                         false
% 1.33/1.05  --sat_fm_prep                           false
% 1.33/1.05  --sat_fm_uc_incr                        true
% 1.33/1.05  --sat_out_model                         small
% 1.33/1.05  --sat_out_clauses                       false
% 1.33/1.05  
% 1.33/1.05  ------ QBF Options
% 1.33/1.05  
% 1.33/1.05  --qbf_mode                              false
% 1.33/1.05  --qbf_elim_univ                         false
% 1.33/1.05  --qbf_dom_inst                          none
% 1.33/1.05  --qbf_dom_pre_inst                      false
% 1.33/1.05  --qbf_sk_in                             false
% 1.33/1.05  --qbf_pred_elim                         true
% 1.33/1.05  --qbf_split                             512
% 1.33/1.05  
% 1.33/1.05  ------ BMC1 Options
% 1.33/1.05  
% 1.33/1.05  --bmc1_incremental                      false
% 1.33/1.05  --bmc1_axioms                           reachable_all
% 1.33/1.05  --bmc1_min_bound                        0
% 1.33/1.05  --bmc1_max_bound                        -1
% 1.33/1.05  --bmc1_max_bound_default                -1
% 1.33/1.05  --bmc1_symbol_reachability              true
% 1.33/1.05  --bmc1_property_lemmas                  false
% 1.33/1.05  --bmc1_k_induction                      false
% 1.33/1.05  --bmc1_non_equiv_states                 false
% 1.33/1.05  --bmc1_deadlock                         false
% 1.33/1.05  --bmc1_ucm                              false
% 1.33/1.05  --bmc1_add_unsat_core                   none
% 1.33/1.05  --bmc1_unsat_core_children              false
% 1.33/1.05  --bmc1_unsat_core_extrapolate_axioms    false
% 1.33/1.05  --bmc1_out_stat                         full
% 1.33/1.05  --bmc1_ground_init                      false
% 1.33/1.05  --bmc1_pre_inst_next_state              false
% 1.33/1.05  --bmc1_pre_inst_state                   false
% 1.33/1.05  --bmc1_pre_inst_reach_state             false
% 1.33/1.05  --bmc1_out_unsat_core                   false
% 1.33/1.05  --bmc1_aig_witness_out                  false
% 1.33/1.05  --bmc1_verbose                          false
% 1.33/1.05  --bmc1_dump_clauses_tptp                false
% 1.33/1.05  --bmc1_dump_unsat_core_tptp             false
% 1.33/1.05  --bmc1_dump_file                        -
% 1.33/1.05  --bmc1_ucm_expand_uc_limit              128
% 1.33/1.05  --bmc1_ucm_n_expand_iterations          6
% 1.33/1.05  --bmc1_ucm_extend_mode                  1
% 1.33/1.05  --bmc1_ucm_init_mode                    2
% 1.33/1.05  --bmc1_ucm_cone_mode                    none
% 1.33/1.05  --bmc1_ucm_reduced_relation_type        0
% 1.33/1.05  --bmc1_ucm_relax_model                  4
% 1.33/1.05  --bmc1_ucm_full_tr_after_sat            true
% 1.33/1.05  --bmc1_ucm_expand_neg_assumptions       false
% 1.33/1.05  --bmc1_ucm_layered_model                none
% 1.33/1.05  --bmc1_ucm_max_lemma_size               10
% 1.33/1.05  
% 1.33/1.05  ------ AIG Options
% 1.33/1.05  
% 1.33/1.05  --aig_mode                              false
% 1.33/1.05  
% 1.33/1.05  ------ Instantiation Options
% 1.33/1.05  
% 1.33/1.05  --instantiation_flag                    false
% 1.33/1.05  --inst_sos_flag                         false
% 1.33/1.05  --inst_sos_phase                        true
% 1.33/1.05  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 1.33/1.05  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 1.33/1.05  --inst_lit_sel_side                     num_symb
% 1.33/1.05  --inst_solver_per_active                1400
% 1.33/1.05  --inst_solver_calls_frac                1.
% 1.33/1.05  --inst_passive_queue_type               priority_queues
% 1.33/1.05  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 1.33/1.05  --inst_passive_queues_freq              [25;2]
% 1.33/1.05  --inst_dismatching                      true
% 1.33/1.05  --inst_eager_unprocessed_to_passive     true
% 1.33/1.05  --inst_prop_sim_given                   true
% 1.33/1.05  --inst_prop_sim_new                     false
% 1.33/1.05  --inst_subs_new                         false
% 1.33/1.05  --inst_eq_res_simp                      false
% 1.33/1.05  --inst_subs_given                       false
% 1.33/1.05  --inst_orphan_elimination               true
% 1.33/1.05  --inst_learning_loop_flag               true
% 1.33/1.05  --inst_learning_start                   3000
% 1.33/1.05  --inst_learning_factor                  2
% 1.33/1.05  --inst_start_prop_sim_after_learn       3
% 1.33/1.05  --inst_sel_renew                        solver
% 1.33/1.05  --inst_lit_activity_flag                true
% 1.33/1.05  --inst_restr_to_given                   false
% 1.33/1.05  --inst_activity_threshold               500
% 1.33/1.05  --inst_out_proof                        true
% 1.33/1.05  
% 1.33/1.05  ------ Resolution Options
% 1.33/1.05  
% 1.33/1.05  --resolution_flag                       false
% 1.33/1.05  --res_lit_sel                           adaptive
% 1.33/1.05  --res_lit_sel_side                      none
% 1.33/1.05  --res_ordering                          kbo
% 1.33/1.05  --res_to_prop_solver                    active
% 1.33/1.05  --res_prop_simpl_new                    false
% 1.33/1.05  --res_prop_simpl_given                  true
% 1.33/1.05  --res_passive_queue_type                priority_queues
% 1.33/1.05  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 1.33/1.05  --res_passive_queues_freq               [15;5]
% 1.33/1.05  --res_forward_subs                      full
% 1.33/1.05  --res_backward_subs                     full
% 1.33/1.05  --res_forward_subs_resolution           true
% 1.33/1.05  --res_backward_subs_resolution          true
% 1.33/1.05  --res_orphan_elimination                true
% 1.33/1.05  --res_time_limit                        2.
% 1.33/1.05  --res_out_proof                         true
% 1.33/1.05  
% 1.33/1.05  ------ Superposition Options
% 1.33/1.05  
% 1.33/1.05  --superposition_flag                    true
% 1.33/1.05  --sup_passive_queue_type                priority_queues
% 1.33/1.05  --sup_passive_queues                    [[-conj_dist;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 1.33/1.05  --sup_passive_queues_freq               [8;1;4]
% 1.33/1.05  --demod_completeness_check              fast
% 1.33/1.05  --demod_use_ground                      true
% 1.33/1.05  --sup_to_prop_solver                    active
% 1.33/1.05  --sup_prop_simpl_new                    false
% 1.33/1.05  --sup_prop_simpl_given                  false
% 1.33/1.05  --sup_fun_splitting                     true
% 1.33/1.05  --sup_smt_interval                      10000
% 1.33/1.05  
% 1.33/1.05  ------ Superposition Simplification Setup
% 1.33/1.05  
% 1.33/1.05  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 1.33/1.05  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 1.33/1.05  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 1.33/1.05  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 1.33/1.05  --sup_full_triv                         [TrivRules]
% 1.33/1.05  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 1.33/1.05  --sup_full_bw                           [BwDemod;BwSubsumption]
% 1.33/1.05  --sup_immed_triv                        [TrivRules]
% 1.33/1.05  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 1.33/1.05  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 1.33/1.05  --sup_immed_bw_main                     []
% 1.33/1.05  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 1.33/1.05  --sup_input_triv                        [Unflattening;TrivRules]
% 1.33/1.05  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 1.33/1.05  --sup_input_bw                          [BwDemod;BwSubsumption]
% 1.33/1.05  
% 1.33/1.05  ------ Combination Options
% 1.33/1.05  
% 1.33/1.05  --comb_res_mult                         1
% 1.33/1.05  --comb_sup_mult                         1
% 1.33/1.05  --comb_inst_mult                        1000000
% 1.33/1.05  
% 1.33/1.05  ------ Debug Options
% 1.33/1.05  
% 1.33/1.05  --dbg_backtrace                         false
% 1.33/1.05  --dbg_dump_prop_clauses                 false
% 1.33/1.05  --dbg_dump_prop_clauses_file            -
% 1.33/1.05  --dbg_out_stat                          false
% 1.33/1.05  
% 1.33/1.05  
% 1.33/1.05  
% 1.33/1.05  
% 1.33/1.05  ------ Proving...
% 1.33/1.05  
% 1.33/1.05  
% 1.33/1.05  % SZS status Theorem for theBenchmark.p
% 1.33/1.05  
% 1.33/1.05   Resolution empty clause
% 1.33/1.05  
% 1.33/1.05  % SZS output start CNFRefutation for theBenchmark.p
% 1.33/1.05  
% 1.33/1.05  fof(f5,axiom,(
% 1.33/1.05    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k1_enumset1(X0,X1,X2),k4_enumset1(X3,X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f19,plain,(
% 1.33/1.05    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k2_xboole_0(k1_enumset1(X0,X1,X2),k4_enumset1(X3,X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 1.33/1.05    inference(cnf_transformation,[],[f5])).
% 1.33/1.05  
% 1.33/1.05  fof(f9,axiom,(
% 1.33/1.05    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f23,plain,(
% 1.33/1.05    ( ! [X4,X2,X0,X5,X3,X1] : (k4_enumset1(X0,X1,X2,X3,X4,X5) = k5_enumset1(X0,X0,X1,X2,X3,X4,X5)) )),
% 1.33/1.05    inference(cnf_transformation,[],[f9])).
% 1.33/1.05  
% 1.33/1.05  fof(f3,axiom,(
% 1.33/1.05    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f17,plain,(
% 1.33/1.05    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 1.33/1.05    inference(cnf_transformation,[],[f3])).
% 1.33/1.05  
% 1.33/1.05  fof(f2,axiom,(
% 1.33/1.05    ! [X0,X1] : k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f16,plain,(
% 1.33/1.05    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k5_xboole_0(X0,k4_xboole_0(X1,X0))) )),
% 1.33/1.05    inference(cnf_transformation,[],[f2])).
% 1.33/1.05  
% 1.33/1.05  fof(f25,plain,(
% 1.33/1.05    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 1.33/1.05    inference(definition_unfolding,[],[f17,f16])).
% 1.33/1.05  
% 1.33/1.05  fof(f29,plain,(
% 1.33/1.05    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) = k5_xboole_0(k1_enumset1(X0,X1,X2),k4_xboole_0(k5_enumset1(X3,X3,X4,X5,X6,X7,X8),k1_enumset1(X0,X1,X2)))) )),
% 1.33/1.05    inference(definition_unfolding,[],[f19,f16,f23,f25])).
% 1.33/1.05  
% 1.33/1.05  fof(f1,axiom,(
% 1.33/1.05    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f15,plain,(
% 1.33/1.05    ( ! [X0,X1] : (k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0)) )),
% 1.33/1.05    inference(cnf_transformation,[],[f1])).
% 1.33/1.05  
% 1.33/1.05  fof(f27,plain,(
% 1.33/1.05    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k5_xboole_0(X1,k4_xboole_0(X0,X1))) )),
% 1.33/1.05    inference(definition_unfolding,[],[f15,f16,f16])).
% 1.33/1.05  
% 1.33/1.05  fof(f6,axiom,(
% 1.33/1.05    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f20,plain,(
% 1.33/1.05    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k2_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 1.33/1.05    inference(cnf_transformation,[],[f6])).
% 1.33/1.05  
% 1.33/1.05  fof(f30,plain,(
% 1.33/1.05    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) = k5_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k4_xboole_0(k2_enumset1(X5,X6,X7,X8),k3_enumset1(X0,X1,X2,X3,X4)))) )),
% 1.33/1.05    inference(definition_unfolding,[],[f20,f16,f25])).
% 1.33/1.05  
% 1.33/1.05  fof(f4,axiom,(
% 1.33/1.05    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k1_tarski(X0),k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f18,plain,(
% 1.33/1.05    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k2_xboole_0(k1_tarski(X0),k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)) )),
% 1.33/1.05    inference(cnf_transformation,[],[f4])).
% 1.33/1.05  
% 1.33/1.05  fof(f7,axiom,(
% 1.33/1.05    ! [X0] : k1_tarski(X0) = k2_tarski(X0,X0)),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f21,plain,(
% 1.33/1.05    ( ! [X0] : (k1_tarski(X0) = k2_tarski(X0,X0)) )),
% 1.33/1.05    inference(cnf_transformation,[],[f7])).
% 1.33/1.05  
% 1.33/1.05  fof(f8,axiom,(
% 1.33/1.05    ! [X0,X1] : k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f22,plain,(
% 1.33/1.05    ( ! [X0,X1] : (k1_enumset1(X0,X0,X1) = k2_tarski(X0,X1)) )),
% 1.33/1.05    inference(cnf_transformation,[],[f8])).
% 1.33/1.05  
% 1.33/1.05  fof(f26,plain,(
% 1.33/1.05    ( ! [X0] : (k1_tarski(X0) = k1_enumset1(X0,X0,X0)) )),
% 1.33/1.05    inference(definition_unfolding,[],[f21,f22])).
% 1.33/1.05  
% 1.33/1.05  fof(f28,plain,(
% 1.33/1.05    ( ! [X6,X4,X2,X0,X8,X7,X5,X3,X1] : (k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) = k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k1_enumset1(X0,X0,X0)))) )),
% 1.33/1.05    inference(definition_unfolding,[],[f18,f16,f26,f25])).
% 1.33/1.05  
% 1.33/1.05  fof(f10,conjecture,(
% 1.33/1.05    ! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)),
% 1.33/1.05    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).
% 1.33/1.05  
% 1.33/1.05  fof(f11,negated_conjecture,(
% 1.33/1.05    ~! [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) = k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)),
% 1.33/1.05    inference(negated_conjecture,[],[f10])).
% 1.33/1.05  
% 1.33/1.05  fof(f12,plain,(
% 1.33/1.05    ? [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) != k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8)),
% 1.33/1.05    inference(ennf_transformation,[],[f11])).
% 1.33/1.05  
% 1.33/1.05  fof(f13,plain,(
% 1.33/1.05    ? [X0,X1,X2,X3,X4,X5,X6,X7,X8] : k2_xboole_0(k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7),k1_tarski(X8)) != k7_enumset1(X0,X1,X2,X3,X4,X5,X6,X7,X8) => k2_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k1_tarski(sK8)) != k7_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7,sK8)),
% 1.33/1.05    introduced(choice_axiom,[])).
% 1.33/1.05  
% 1.33/1.05  fof(f14,plain,(
% 1.33/1.05    k2_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k1_tarski(sK8)) != k7_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7,sK8)),
% 1.33/1.05    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7,sK8])],[f12,f13])).
% 1.33/1.05  
% 1.33/1.05  fof(f24,plain,(
% 1.33/1.05    k2_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k1_tarski(sK8)) != k7_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7,sK8)),
% 1.33/1.05    inference(cnf_transformation,[],[f14])).
% 1.33/1.05  
% 1.33/1.05  fof(f31,plain,(
% 1.33/1.05    k5_xboole_0(k2_enumset1(sK0,sK1,sK2,sK3),k4_xboole_0(k3_enumset1(sK4,sK5,sK6,sK7,sK8),k2_enumset1(sK0,sK1,sK2,sK3))) != k5_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k4_xboole_0(k1_enumset1(sK8,sK8,sK8),k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7)))),
% 1.33/1.05    inference(definition_unfolding,[],[f24,f16,f26,f25])).
% 1.33/1.05  
% 1.33/1.05  cnf(c_2,plain,
% 1.33/1.05      ( k5_xboole_0(k1_enumset1(X0,X1,X2),k4_xboole_0(k5_enumset1(X3,X3,X4,X5,X6,X7,X8),k1_enumset1(X0,X1,X2))) = k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) ),
% 1.33/1.05      inference(cnf_transformation,[],[f29]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_19,plain,
% 1.33/1.05      ( k5_xboole_0(k1_enumset1(X0_47,X1_47,X2_47),k4_xboole_0(k5_enumset1(X3_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X1_47,X2_47))) = k5_xboole_0(k2_enumset1(X0_47,X1_47,X2_47,X3_47),k4_xboole_0(k3_enumset1(X4_47,X5_47,X6_47,X7_47,X8_47),k2_enumset1(X0_47,X1_47,X2_47,X3_47))) ),
% 1.33/1.05      inference(subtyping,[status(esa)],[c_2]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_0,plain,
% 1.33/1.05      ( k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k5_xboole_0(X1,k4_xboole_0(X0,X1)) ),
% 1.33/1.05      inference(cnf_transformation,[],[f27]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_21,plain,
% 1.33/1.05      ( k5_xboole_0(X0_45,k4_xboole_0(X1_45,X0_45)) = k5_xboole_0(X1_45,k4_xboole_0(X0_45,X1_45)) ),
% 1.33/1.05      inference(subtyping,[status(esa)],[c_0]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_3,plain,
% 1.33/1.05      ( k5_xboole_0(k3_enumset1(X0,X1,X2,X3,X4),k4_xboole_0(k2_enumset1(X5,X6,X7,X8),k3_enumset1(X0,X1,X2,X3,X4))) = k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) ),
% 1.33/1.05      inference(cnf_transformation,[],[f30]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_18,plain,
% 1.33/1.05      ( k5_xboole_0(k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47),k4_xboole_0(k2_enumset1(X5_47,X6_47,X7_47,X8_47),k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47))) = k5_xboole_0(k2_enumset1(X0_47,X1_47,X2_47,X3_47),k4_xboole_0(k3_enumset1(X4_47,X5_47,X6_47,X7_47,X8_47),k2_enumset1(X0_47,X1_47,X2_47,X3_47))) ),
% 1.33/1.05      inference(subtyping,[status(esa)],[c_3]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_29,plain,
% 1.33/1.05      ( k5_xboole_0(k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47),k4_xboole_0(k2_enumset1(X5_47,X6_47,X7_47,X8_47),k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47))) = k5_xboole_0(k1_enumset1(X0_47,X1_47,X2_47),k4_xboole_0(k5_enumset1(X3_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X1_47,X2_47))) ),
% 1.33/1.05      inference(light_normalisation,[status(thm)],[c_18,c_19]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_50,plain,
% 1.33/1.05      ( k5_xboole_0(k1_enumset1(X0_47,X1_47,X2_47),k4_xboole_0(k5_enumset1(X3_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X1_47,X2_47))) = k5_xboole_0(k2_enumset1(X5_47,X6_47,X7_47,X8_47),k4_xboole_0(k3_enumset1(X0_47,X1_47,X2_47,X3_47,X4_47),k2_enumset1(X5_47,X6_47,X7_47,X8_47))) ),
% 1.33/1.05      inference(superposition,[status(thm)],[c_21,c_29]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_57,plain,
% 1.33/1.05      ( k5_xboole_0(k1_enumset1(X0_47,X1_47,X2_47),k4_xboole_0(k5_enumset1(X3_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X1_47,X2_47))) = k5_xboole_0(k1_enumset1(X5_47,X6_47,X7_47),k4_xboole_0(k5_enumset1(X8_47,X8_47,X0_47,X1_47,X2_47,X3_47,X4_47),k1_enumset1(X5_47,X6_47,X7_47))) ),
% 1.33/1.05      inference(superposition,[status(thm)],[c_19,c_50]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_1,plain,
% 1.33/1.05      ( k5_xboole_0(k1_enumset1(X0,X0,X0),k4_xboole_0(k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8),k1_enumset1(X0,X0,X0))) = k5_xboole_0(k2_enumset1(X0,X1,X2,X3),k4_xboole_0(k3_enumset1(X4,X5,X6,X7,X8),k2_enumset1(X0,X1,X2,X3))) ),
% 1.33/1.05      inference(cnf_transformation,[],[f28]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_20,plain,
% 1.33/1.05      ( k5_xboole_0(k1_enumset1(X0_47,X0_47,X0_47),k4_xboole_0(k6_enumset1(X1_47,X2_47,X3_47,X4_47,X5_47,X6_47,X7_47,X8_47),k1_enumset1(X0_47,X0_47,X0_47))) = k5_xboole_0(k2_enumset1(X0_47,X1_47,X2_47,X3_47),k4_xboole_0(k3_enumset1(X4_47,X5_47,X6_47,X7_47,X8_47),k2_enumset1(X0_47,X1_47,X2_47,X3_47))) ),
% 1.33/1.05      inference(subtyping,[status(esa)],[c_1]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_4,negated_conjecture,
% 1.33/1.05      ( k5_xboole_0(k2_enumset1(sK0,sK1,sK2,sK3),k4_xboole_0(k3_enumset1(sK4,sK5,sK6,sK7,sK8),k2_enumset1(sK0,sK1,sK2,sK3))) != k5_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k4_xboole_0(k1_enumset1(sK8,sK8,sK8),k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7))) ),
% 1.33/1.05      inference(cnf_transformation,[],[f31]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_17,negated_conjecture,
% 1.33/1.05      ( k5_xboole_0(k2_enumset1(sK0,sK1,sK2,sK3),k4_xboole_0(k3_enumset1(sK4,sK5,sK6,sK7,sK8),k2_enumset1(sK0,sK1,sK2,sK3))) != k5_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k4_xboole_0(k1_enumset1(sK8,sK8,sK8),k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7))) ),
% 1.33/1.05      inference(subtyping,[status(esa)],[c_4]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_30,plain,
% 1.33/1.05      ( k5_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k4_xboole_0(k1_enumset1(sK8,sK8,sK8),k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
% 1.33/1.05      inference(demodulation,[status(thm)],[c_17,c_19]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_31,plain,
% 1.33/1.05      ( k5_xboole_0(k1_enumset1(sK8,sK8,sK8),k4_xboole_0(k6_enumset1(sK0,sK1,sK2,sK3,sK4,sK5,sK6,sK7),k1_enumset1(sK8,sK8,sK8))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
% 1.33/1.05      inference(demodulation,[status(thm)],[c_21,c_30]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_36,plain,
% 1.33/1.05      ( k5_xboole_0(k2_enumset1(sK8,sK0,sK1,sK2),k4_xboole_0(k3_enumset1(sK3,sK4,sK5,sK6,sK7),k2_enumset1(sK8,sK0,sK1,sK2))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
% 1.33/1.05      inference(demodulation,[status(thm)],[c_20,c_31]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_37,plain,
% 1.33/1.05      ( k5_xboole_0(k1_enumset1(sK8,sK0,sK1),k4_xboole_0(k5_enumset1(sK2,sK2,sK3,sK4,sK5,sK6,sK7),k1_enumset1(sK8,sK0,sK1))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
% 1.33/1.05      inference(demodulation,[status(thm)],[c_36,c_19]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_96,plain,
% 1.33/1.05      ( k5_xboole_0(k1_enumset1(sK4,sK5,sK6),k4_xboole_0(k5_enumset1(sK7,sK7,sK8,sK0,sK1,sK2,sK3),k1_enumset1(sK4,sK5,sK6))) != k5_xboole_0(k1_enumset1(sK0,sK1,sK2),k4_xboole_0(k5_enumset1(sK3,sK3,sK4,sK5,sK6,sK7,sK8),k1_enumset1(sK0,sK1,sK2))) ),
% 1.33/1.05      inference(demodulation,[status(thm)],[c_57,c_37]) ).
% 1.33/1.05  
% 1.33/1.05  cnf(c_175,plain,
% 1.33/1.05      ( $false ),
% 1.33/1.05      inference(superposition,[status(thm)],[c_57,c_96]) ).
% 1.33/1.05  
% 1.33/1.05  
% 1.33/1.05  % SZS output end CNFRefutation for theBenchmark.p
% 1.33/1.05  
% 1.33/1.05  ------                               Statistics
% 1.33/1.05  
% 1.33/1.05  ------ General
% 1.33/1.05  
% 1.33/1.05  abstr_ref_over_cycles:                  0
% 1.33/1.05  abstr_ref_under_cycles:                 0
% 1.33/1.05  gc_basic_clause_elim:                   0
% 1.33/1.05  forced_gc_time:                         0
% 1.33/1.05  parsing_time:                           0.023
% 1.33/1.05  unif_index_cands_time:                  0.
% 1.33/1.05  unif_index_add_time:                    0.
% 1.33/1.05  orderings_time:                         0.
% 1.33/1.05  out_proof_time:                         0.008
% 1.33/1.05  total_time:                             0.061
% 1.33/1.05  num_of_symbols:                         48
% 1.33/1.05  num_of_terms:                           452
% 1.33/1.05  
% 1.33/1.05  ------ Preprocessing
% 1.33/1.05  
% 1.33/1.05  num_of_splits:                          0
% 1.33/1.05  num_of_split_atoms:                     0
% 1.33/1.05  num_of_reused_defs:                     0
% 1.33/1.05  num_eq_ax_congr_red:                    38
% 1.33/1.05  num_of_sem_filtered_clauses:            0
% 1.33/1.05  num_of_subtypes:                        4
% 1.33/1.05  monotx_restored_types:                  0
% 1.33/1.05  sat_num_of_epr_types:                   0
% 1.33/1.05  sat_num_of_non_cyclic_types:            0
% 1.33/1.05  sat_guarded_non_collapsed_types:        0
% 1.33/1.05  num_pure_diseq_elim:                    0
% 1.33/1.05  simp_replaced_by:                       0
% 1.33/1.05  res_preprocessed:                       12
% 1.33/1.05  prep_upred:                             0
% 1.33/1.05  prep_unflattend:                        0
% 1.33/1.05  smt_new_axioms:                         0
% 1.33/1.05  pred_elim_cands:                        0
% 1.33/1.05  pred_elim:                              0
% 1.33/1.05  pred_elim_cl:                           0
% 1.33/1.05  pred_elim_cycles:                       0
% 1.33/1.05  merged_defs:                            0
% 1.33/1.05  merged_defs_ncl:                        0
% 1.33/1.05  bin_hyper_res:                          0
% 1.33/1.05  prep_cycles:                            2
% 1.33/1.05  pred_elim_time:                         0.
% 1.33/1.05  splitting_time:                         0.
% 1.33/1.05  sem_filter_time:                        0.
% 1.33/1.05  monotx_time:                            0.
% 1.33/1.05  subtype_inf_time:                       0.
% 1.33/1.05  
% 1.33/1.05  ------ Problem properties
% 1.33/1.05  
% 1.33/1.05  clauses:                                5
% 1.33/1.05  conjectures:                            1
% 1.33/1.05  epr:                                    0
% 1.33/1.05  horn:                                   5
% 1.33/1.05  ground:                                 1
% 1.33/1.05  unary:                                  5
% 1.33/1.05  binary:                                 0
% 1.33/1.05  lits:                                   5
% 1.33/1.05  lits_eq:                                5
% 1.33/1.05  fd_pure:                                0
% 1.33/1.05  fd_pseudo:                              0
% 1.33/1.05  fd_cond:                                0
% 1.33/1.05  fd_pseudo_cond:                         0
% 1.33/1.05  ac_symbols:                             0
% 1.33/1.05  
% 1.33/1.05  ------ Propositional Solver
% 1.33/1.05  
% 1.33/1.05  prop_solver_calls:                      13
% 1.33/1.05  prop_fast_solver_calls:                 28
% 1.33/1.05  smt_solver_calls:                       0
% 1.33/1.05  smt_fast_solver_calls:                  0
% 1.33/1.05  prop_num_of_clauses:                    36
% 1.33/1.05  prop_preprocess_simplified:             151
% 1.33/1.05  prop_fo_subsumed:                       0
% 1.33/1.05  prop_solver_time:                       0.
% 1.33/1.05  smt_solver_time:                        0.
% 1.33/1.05  smt_fast_solver_time:                   0.
% 1.33/1.05  prop_fast_solver_time:                  0.
% 1.33/1.05  prop_unsat_core_time:                   0.
% 1.33/1.05  
% 1.33/1.05  ------ QBF
% 1.33/1.05  
% 1.33/1.05  qbf_q_res:                              0
% 1.33/1.05  qbf_num_tautologies:                    0
% 1.33/1.05  qbf_prep_cycles:                        0
% 1.33/1.05  
% 1.33/1.05  ------ BMC1
% 1.33/1.05  
% 1.33/1.05  bmc1_current_bound:                     -1
% 1.33/1.05  bmc1_last_solved_bound:                 -1
% 1.33/1.05  bmc1_unsat_core_size:                   -1
% 1.33/1.05  bmc1_unsat_core_parents_size:           -1
% 1.33/1.05  bmc1_merge_next_fun:                    0
% 1.33/1.05  bmc1_unsat_core_clauses_time:           0.
% 1.33/1.05  
% 1.33/1.05  ------ Instantiation
% 1.33/1.05  
% 1.33/1.05  inst_num_of_clauses:                    0
% 1.33/1.05  inst_num_in_passive:                    0
% 1.33/1.05  inst_num_in_active:                     0
% 1.33/1.05  inst_num_in_unprocessed:                0
% 1.33/1.05  inst_num_of_loops:                      0
% 1.33/1.05  inst_num_of_learning_restarts:          0
% 1.33/1.05  inst_num_moves_active_passive:          0
% 1.33/1.05  inst_lit_activity:                      0
% 1.33/1.05  inst_lit_activity_moves:                0
% 1.33/1.05  inst_num_tautologies:                   0
% 1.33/1.05  inst_num_prop_implied:                  0
% 1.33/1.05  inst_num_existing_simplified:           0
% 1.33/1.05  inst_num_eq_res_simplified:             0
% 1.33/1.05  inst_num_child_elim:                    0
% 1.33/1.05  inst_num_of_dismatching_blockings:      0
% 1.33/1.05  inst_num_of_non_proper_insts:           0
% 1.33/1.05  inst_num_of_duplicates:                 0
% 1.33/1.05  inst_inst_num_from_inst_to_res:         0
% 1.33/1.05  inst_dismatching_checking_time:         0.
% 1.33/1.05  
% 1.33/1.05  ------ Resolution
% 1.33/1.05  
% 1.33/1.05  res_num_of_clauses:                     0
% 1.33/1.05  res_num_in_passive:                     0
% 1.33/1.05  res_num_in_active:                      0
% 1.33/1.05  res_num_of_loops:                       14
% 1.33/1.05  res_forward_subset_subsumed:            0
% 1.33/1.05  res_backward_subset_subsumed:           0
% 1.33/1.05  res_forward_subsumed:                   0
% 1.33/1.05  res_backward_subsumed:                  0
% 1.33/1.05  res_forward_subsumption_resolution:     0
% 1.33/1.05  res_backward_subsumption_resolution:    0
% 1.33/1.05  res_clause_to_clause_subsumption:       113
% 1.33/1.05  res_orphan_elimination:                 0
% 1.33/1.05  res_tautology_del:                      0
% 1.33/1.05  res_num_eq_res_simplified:              0
% 1.33/1.05  res_num_sel_changes:                    0
% 1.33/1.05  res_moves_from_active_to_pass:          0
% 1.33/1.05  
% 1.33/1.05  ------ Superposition
% 1.33/1.05  
% 1.33/1.05  sup_time_total:                         0.
% 1.33/1.05  sup_time_generating:                    0.
% 1.33/1.05  sup_time_sim_full:                      0.
% 1.33/1.05  sup_time_sim_immed:                     0.
% 1.33/1.05  
% 1.33/1.05  sup_num_of_clauses:                     25
% 1.33/1.05  sup_num_in_active:                      11
% 1.33/1.05  sup_num_in_passive:                     14
% 1.33/1.05  sup_num_of_loops:                       13
% 1.33/1.05  sup_fw_superposition:                   66
% 1.33/1.05  sup_bw_superposition:                   66
% 1.33/1.05  sup_immediate_simplified:               6
% 1.33/1.05  sup_given_eliminated:                   0
% 1.33/1.05  comparisons_done:                       0
% 1.33/1.05  comparisons_avoided:                    0
% 1.33/1.05  
% 1.33/1.05  ------ Simplifications
% 1.33/1.05  
% 1.33/1.05  
% 1.33/1.05  sim_fw_subset_subsumed:                 0
% 1.33/1.05  sim_bw_subset_subsumed:                 0
% 1.33/1.05  sim_fw_subsumed:                        1
% 1.33/1.05  sim_bw_subsumed:                        0
% 1.33/1.05  sim_fw_subsumption_res:                 0
% 1.33/1.05  sim_bw_subsumption_res:                 0
% 1.33/1.05  sim_tautology_del:                      0
% 1.33/1.05  sim_eq_tautology_del:                   0
% 1.33/1.05  sim_eq_res_simp:                        0
% 1.33/1.05  sim_fw_demodulated:                     5
% 1.33/1.05  sim_bw_demodulated:                     3
% 1.33/1.05  sim_light_normalised:                   2
% 1.33/1.05  sim_joinable_taut:                      0
% 1.33/1.05  sim_joinable_simp:                      0
% 1.33/1.05  sim_ac_normalised:                      0
% 1.33/1.05  sim_smt_subsumption:                    0
% 1.33/1.05  
%------------------------------------------------------------------------------
