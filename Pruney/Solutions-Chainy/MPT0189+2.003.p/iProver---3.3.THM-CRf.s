%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:27:51 EST 2020

% Result     : Theorem 7.41s
% Output     : CNFRefutation 7.41s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 305 expanded)
%              Number of clauses        :   30 (  65 expanded)
%              Number of leaves         :   16 (  95 expanded)
%              Depth                    :   14
%              Number of atoms          :   75 ( 306 expanded)
%              Number of equality atoms :   74 ( 305 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    5 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f13,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f34,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f13])).

fof(f14,axiom,(
    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f35,plain,(
    ! [X4,X2,X0,X3,X1] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4) ),
    inference(cnf_transformation,[],[f14])).

fof(f49,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k4_enumset1(X0,X0,X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f34,f35])).

fof(f16,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f37,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f16])).

fof(f7,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6] : k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k1_tarski(X6)) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f28,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k1_tarski(X6)) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    inference(cnf_transformation,[],[f7])).

fof(f10,axiom,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f31,plain,(
    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0) ),
    inference(cnf_transformation,[],[f10])).

fof(f11,axiom,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f32,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1) ),
    inference(cnf_transformation,[],[f11])).

fof(f40,plain,(
    ! [X0,X1] : k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1) ),
    inference(definition_unfolding,[],[f32,f33])).

fof(f41,plain,(
    ! [X0] : k2_enumset1(X0,X0,X0,X0) = k1_tarski(X0) ),
    inference(definition_unfolding,[],[f31,f40])).

fof(f42,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k5_xboole_0(k2_enumset1(X6,X6,X6,X6),k3_xboole_0(k2_enumset1(X6,X6,X6,X6),k4_enumset1(X0,X1,X2,X3,X4,X5)))) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6) ),
    inference(definition_unfolding,[],[f28,f39,f41])).

fof(f8,axiom,(
    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k1_enumset1(X0,X1,X2),k3_enumset1(X3,X4,X5,X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f29,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k2_xboole_0(k1_enumset1(X0,X1,X2),k3_enumset1(X3,X4,X5,X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(cnf_transformation,[],[f8])).

fof(f2,axiom,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f23,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1) ),
    inference(cnf_transformation,[],[f2])).

fof(f1,axiom,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f22,plain,(
    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1)) ),
    inference(cnf_transformation,[],[f1])).

fof(f39,plain,(
    ! [X0,X1] : k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1) ),
    inference(definition_unfolding,[],[f23,f22])).

fof(f12,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f33,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2) ),
    inference(cnf_transformation,[],[f12])).

fof(f43,plain,(
    ! [X6,X4,X2,X0,X7,X5,X3,X1] : k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k5_xboole_0(k4_enumset1(X3,X3,X4,X5,X6,X7),k3_xboole_0(k4_enumset1(X3,X3,X4,X5,X6,X7),k2_enumset1(X0,X0,X1,X2)))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7) ),
    inference(definition_unfolding,[],[f29,f39,f33,f35])).

fof(f50,plain,(
    ! [X6,X4,X2,X0,X5,X3,X1] : k5_xboole_0(k2_enumset1(X0,X0,X0,X1),k5_xboole_0(k4_enumset1(X2,X2,X3,X4,X5,X6),k3_xboole_0(k4_enumset1(X2,X2,X3,X4,X5,X6),k2_enumset1(X0,X0,X0,X1)))) = k5_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k5_xboole_0(k2_enumset1(X6,X6,X6,X6),k3_xboole_0(k2_enumset1(X6,X6,X6,X6),k4_enumset1(X0,X1,X2,X3,X4,X5)))) ),
    inference(definition_unfolding,[],[f37,f42,f43])).

fof(f15,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f36,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f15])).

fof(f45,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k5_xboole_0(k4_enumset1(X0,X0,X1,X2,X3,X4),k5_xboole_0(k2_enumset1(X5,X5,X5,X5),k3_xboole_0(k2_enumset1(X5,X5,X5,X5),k4_enumset1(X0,X0,X1,X2,X3,X4)))) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(definition_unfolding,[],[f36,f42])).

fof(f5,axiom,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X0,X2,X3,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f26,plain,(
    ! [X2,X0,X3,X1] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X0,X2,X3,X1) ),
    inference(cnf_transformation,[],[f5])).

fof(f4,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f25,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0) ),
    inference(cnf_transformation,[],[f4])).

fof(f47,plain,(
    ! [X2,X0,X1] : k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X1,X1,X2,X0) ),
    inference(definition_unfolding,[],[f25,f33,f33])).

fof(f6,axiom,(
    ! [X0,X1,X2,X3] : k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f27,plain,(
    ! [X2,X0,X3,X1] : k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f6])).

fof(f44,plain,(
    ! [X2,X0,X3,X1] : k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k5_xboole_0(k2_enumset1(X3,X3,X3,X3),k3_xboole_0(k2_enumset1(X3,X3,X3,X3),k2_enumset1(X0,X0,X1,X2)))) = k2_enumset1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f27,f39,f33,f41])).

fof(f17,conjecture,(
    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X1,X0,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f18,negated_conjecture,(
    ~ ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X1,X0,X2,X3) ),
    inference(negated_conjecture,[],[f17])).

fof(f19,plain,(
    ? [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) != k2_enumset1(X1,X0,X2,X3) ),
    inference(ennf_transformation,[],[f18])).

fof(f20,plain,
    ( ? [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) != k2_enumset1(X1,X0,X2,X3)
   => k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3) ),
    introduced(choice_axiom,[])).

fof(f21,plain,(
    k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f19,f20])).

fof(f38,plain,(
    k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3) ),
    inference(cnf_transformation,[],[f21])).

cnf(c_6,plain,
    ( k4_enumset1(X0,X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f49])).

cnf(c_21,plain,
    ( k4_enumset1(X0_37,X0_37,X0_37,X1_37,X2_37,X3_37) = k2_enumset1(X0_37,X1_37,X2_37,X3_37) ),
    inference(subtyping,[status(esa)],[c_6])).

cnf(c_7,plain,
    ( k5_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k5_xboole_0(k2_enumset1(X6,X6,X6,X6),k3_xboole_0(k2_enumset1(X6,X6,X6,X6),k4_enumset1(X0,X1,X2,X3,X4,X5)))) = k5_xboole_0(k2_enumset1(X0,X0,X0,X1),k5_xboole_0(k4_enumset1(X2,X2,X3,X4,X5,X6),k3_xboole_0(k4_enumset1(X2,X2,X3,X4,X5,X6),k2_enumset1(X0,X0,X0,X1)))) ),
    inference(cnf_transformation,[],[f50])).

cnf(c_20,plain,
    ( k5_xboole_0(k4_enumset1(X0_37,X1_37,X2_37,X3_37,X4_37,X5_37),k5_xboole_0(k2_enumset1(X6_37,X6_37,X6_37,X6_37),k3_xboole_0(k2_enumset1(X6_37,X6_37,X6_37,X6_37),k4_enumset1(X0_37,X1_37,X2_37,X3_37,X4_37,X5_37)))) = k5_xboole_0(k2_enumset1(X0_37,X0_37,X0_37,X1_37),k5_xboole_0(k4_enumset1(X2_37,X2_37,X3_37,X4_37,X5_37,X6_37),k3_xboole_0(k4_enumset1(X2_37,X2_37,X3_37,X4_37,X5_37,X6_37),k2_enumset1(X0_37,X0_37,X0_37,X1_37)))) ),
    inference(subtyping,[status(esa)],[c_7])).

cnf(c_210,plain,
    ( k5_xboole_0(k4_enumset1(X0_37,X1_37,X2_37,X2_37,X3_37,X4_37),k5_xboole_0(k2_enumset1(X5_37,X5_37,X5_37,X5_37),k3_xboole_0(k2_enumset1(X5_37,X5_37,X5_37,X5_37),k4_enumset1(X0_37,X1_37,X2_37,X2_37,X3_37,X4_37)))) = k5_xboole_0(k2_enumset1(X0_37,X0_37,X0_37,X1_37),k5_xboole_0(k2_enumset1(X2_37,X3_37,X4_37,X5_37),k3_xboole_0(k2_enumset1(X2_37,X3_37,X4_37,X5_37),k2_enumset1(X0_37,X0_37,X0_37,X1_37)))) ),
    inference(superposition,[status(thm)],[c_21,c_20])).

cnf(c_23216,plain,
    ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X0_37,X0_37),k5_xboole_0(k2_enumset1(X0_37,X1_37,X2_37,X3_37),k3_xboole_0(k2_enumset1(X0_37,X1_37,X2_37,X3_37),k2_enumset1(X0_37,X0_37,X0_37,X0_37)))) = k5_xboole_0(k2_enumset1(X0_37,X0_37,X1_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X0_37,X1_37,X2_37)))) ),
    inference(superposition,[status(thm)],[c_21,c_210])).

cnf(c_1,plain,
    ( k5_xboole_0(k4_enumset1(X0,X0,X1,X2,X3,X4),k5_xboole_0(k2_enumset1(X5,X5,X5,X5),k3_xboole_0(k2_enumset1(X5,X5,X5,X5),k4_enumset1(X0,X0,X1,X2,X3,X4)))) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
    inference(cnf_transformation,[],[f45])).

cnf(c_26,plain,
    ( k5_xboole_0(k4_enumset1(X0_37,X0_37,X1_37,X2_37,X3_37,X4_37),k5_xboole_0(k2_enumset1(X5_37,X5_37,X5_37,X5_37),k3_xboole_0(k2_enumset1(X5_37,X5_37,X5_37,X5_37),k4_enumset1(X0_37,X0_37,X1_37,X2_37,X3_37,X4_37)))) = k4_enumset1(X0_37,X1_37,X2_37,X3_37,X4_37,X5_37) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_23712,plain,
    ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X0_37,X0_37),k5_xboole_0(k2_enumset1(X1_37,X2_37,X3_37,X4_37),k3_xboole_0(k2_enumset1(X1_37,X2_37,X3_37,X4_37),k2_enumset1(X0_37,X0_37,X0_37,X0_37)))) = k4_enumset1(X0_37,X1_37,X1_37,X2_37,X3_37,X4_37) ),
    inference(superposition,[status(thm)],[c_210,c_26])).

cnf(c_23738,plain,
    ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X1_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X0_37,X1_37,X2_37)))) = k4_enumset1(X0_37,X0_37,X0_37,X1_37,X2_37,X3_37) ),
    inference(demodulation,[status(thm)],[c_23216,c_23712])).

cnf(c_4,plain,
    ( k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X0,X3,X1,X2) ),
    inference(cnf_transformation,[],[f26])).

cnf(c_23,plain,
    ( k2_enumset1(X0_37,X1_37,X2_37,X3_37) = k2_enumset1(X0_37,X3_37,X1_37,X2_37) ),
    inference(subtyping,[status(esa)],[c_4])).

cnf(c_3,plain,
    ( k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X2,X2,X0,X1) ),
    inference(cnf_transformation,[],[f47])).

cnf(c_24,plain,
    ( k2_enumset1(X0_37,X0_37,X1_37,X2_37) = k2_enumset1(X2_37,X2_37,X0_37,X1_37) ),
    inference(subtyping,[status(esa)],[c_3])).

cnf(c_47,plain,
    ( k2_enumset1(X0_37,X0_37,X1_37,X2_37) = k2_enumset1(X2_37,X1_37,X2_37,X0_37) ),
    inference(superposition,[status(thm)],[c_23,c_24])).

cnf(c_0,plain,
    ( k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k5_xboole_0(k2_enumset1(X3,X3,X3,X3),k3_xboole_0(k2_enumset1(X3,X3,X3,X3),k2_enumset1(X0,X0,X1,X2)))) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f44])).

cnf(c_27,plain,
    ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X1_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X0_37,X1_37,X2_37)))) = k2_enumset1(X0_37,X1_37,X2_37,X3_37) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_228,plain,
    ( k5_xboole_0(k2_enumset1(X0_37,X1_37,X0_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X1_37,X0_37,X2_37)))) = k2_enumset1(X2_37,X1_37,X0_37,X3_37) ),
    inference(superposition,[status(thm)],[c_47,c_27])).

cnf(c_2525,plain,
    ( k2_enumset1(X0_37,X1_37,X1_37,X2_37) = k2_enumset1(X1_37,X1_37,X0_37,X2_37) ),
    inference(superposition,[status(thm)],[c_228,c_27])).

cnf(c_3380,plain,
    ( k2_enumset1(X0_37,X1_37,X1_37,X2_37) = k2_enumset1(X0_37,X0_37,X2_37,X1_37) ),
    inference(superposition,[status(thm)],[c_2525,c_24])).

cnf(c_49,plain,
    ( k2_enumset1(X0_37,X0_37,X1_37,X2_37) = k2_enumset1(X2_37,X0_37,X1_37,X2_37) ),
    inference(superposition,[status(thm)],[c_23,c_24])).

cnf(c_227,plain,
    ( k5_xboole_0(k2_enumset1(X0_37,X1_37,X2_37,X0_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X1_37,X2_37,X0_37)))) = k2_enumset1(X1_37,X2_37,X0_37,X3_37) ),
    inference(superposition,[status(thm)],[c_49,c_27])).

cnf(c_2526,plain,
    ( k2_enumset1(X0_37,X1_37,X1_37,X2_37) = k2_enumset1(X1_37,X0_37,X1_37,X2_37) ),
    inference(superposition,[status(thm)],[c_228,c_227])).

cnf(c_4144,plain,
    ( k2_enumset1(X0_37,X1_37,X0_37,X2_37) = k2_enumset1(X1_37,X1_37,X2_37,X0_37) ),
    inference(superposition,[status(thm)],[c_3380,c_2526])).

cnf(c_13061,plain,
    ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X1_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X0_37,X1_37,X2_37)))) = k2_enumset1(X1_37,X0_37,X2_37,X3_37) ),
    inference(superposition,[status(thm)],[c_4144,c_228])).

cnf(c_23739,plain,
    ( k2_enumset1(X0_37,X1_37,X2_37,X3_37) = k2_enumset1(X1_37,X0_37,X2_37,X3_37) ),
    inference(light_normalisation,[status(thm)],[c_23738,c_21,c_13061])).

cnf(c_8,negated_conjecture,
    ( k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3) ),
    inference(cnf_transformation,[],[f38])).

cnf(c_19,negated_conjecture,
    ( k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3) ),
    inference(subtyping,[status(esa)],[c_8])).

cnf(c_23740,plain,
    ( k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK0,sK1,sK2,sK3) ),
    inference(demodulation,[status(thm)],[c_23739,c_19])).

cnf(c_26205,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_23740])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : iproveropt_run.sh %d %s
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 11:56:23 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.19/0.34  % Running in FOF mode
% 7.41/1.52  % SZS status Started for /export/starexec/sandbox2/benchmark/theBenchmark.p
% 7.41/1.52  
% 7.41/1.52  %---------------- iProver v3.3 (CASC-J10 2020) ----------------%
% 7.41/1.52  
% 7.41/1.52  ------  iProver source info
% 7.41/1.52  
% 7.41/1.52  git: date: 2020-06-30 10:37:57 +0100
% 7.41/1.52  git: sha1: e3013b43002810b07ddde22341e87fe21d0d6388
% 7.41/1.52  git: non_committed_changes: false
% 7.41/1.52  git: last_make_outside_of_git: false
% 7.41/1.52  
% 7.41/1.52  ------ 
% 7.41/1.52  
% 7.41/1.52  ------ Input Options
% 7.41/1.52  
% 7.41/1.52  --out_options                           all
% 7.41/1.52  --tptp_safe_out                         true
% 7.41/1.52  --problem_path                          ""
% 7.41/1.52  --include_path                          ""
% 7.41/1.52  --clausifier                            res/vclausify_rel
% 7.41/1.52  --clausifier_options                    --mode clausify
% 7.41/1.52  --stdin                                 false
% 7.41/1.52  --stats_out                             all
% 7.41/1.52  
% 7.41/1.52  ------ General Options
% 7.41/1.52  
% 7.41/1.52  --fof                                   false
% 7.41/1.52  --time_out_real                         305.
% 7.41/1.52  --time_out_virtual                      -1.
% 7.41/1.52  --symbol_type_check                     false
% 7.41/1.52  --clausify_out                          false
% 7.41/1.52  --sig_cnt_out                           false
% 7.41/1.52  --trig_cnt_out                          false
% 7.41/1.52  --trig_cnt_out_tolerance                1.
% 7.41/1.52  --trig_cnt_out_sk_spl                   false
% 7.41/1.52  --abstr_cl_out                          false
% 7.41/1.52  
% 7.41/1.52  ------ Global Options
% 7.41/1.52  
% 7.41/1.52  --schedule                              default
% 7.41/1.52  --add_important_lit                     false
% 7.41/1.52  --prop_solver_per_cl                    1000
% 7.41/1.52  --min_unsat_core                        false
% 7.41/1.52  --soft_assumptions                      false
% 7.41/1.52  --soft_lemma_size                       3
% 7.41/1.52  --prop_impl_unit_size                   0
% 7.41/1.52  --prop_impl_unit                        []
% 7.41/1.52  --share_sel_clauses                     true
% 7.41/1.52  --reset_solvers                         false
% 7.41/1.52  --bc_imp_inh                            [conj_cone]
% 7.41/1.52  --conj_cone_tolerance                   3.
% 7.41/1.52  --extra_neg_conj                        none
% 7.41/1.52  --large_theory_mode                     true
% 7.41/1.52  --prolific_symb_bound                   200
% 7.41/1.52  --lt_threshold                          2000
% 7.41/1.52  --clause_weak_htbl                      true
% 7.41/1.52  --gc_record_bc_elim                     false
% 7.41/1.52  
% 7.41/1.52  ------ Preprocessing Options
% 7.41/1.52  
% 7.41/1.52  --preprocessing_flag                    true
% 7.41/1.52  --time_out_prep_mult                    0.1
% 7.41/1.52  --splitting_mode                        input
% 7.41/1.52  --splitting_grd                         true
% 7.41/1.52  --splitting_cvd                         false
% 7.41/1.52  --splitting_cvd_svl                     false
% 7.41/1.52  --splitting_nvd                         32
% 7.41/1.52  --sub_typing                            true
% 7.41/1.52  --prep_gs_sim                           true
% 7.41/1.52  --prep_unflatten                        true
% 7.41/1.52  --prep_res_sim                          true
% 7.41/1.52  --prep_upred                            true
% 7.41/1.52  --prep_sem_filter                       exhaustive
% 7.41/1.52  --prep_sem_filter_out                   false
% 7.41/1.52  --pred_elim                             true
% 7.41/1.52  --res_sim_input                         true
% 7.41/1.52  --eq_ax_congr_red                       true
% 7.41/1.52  --pure_diseq_elim                       true
% 7.41/1.52  --brand_transform                       false
% 7.41/1.52  --non_eq_to_eq                          false
% 7.41/1.52  --prep_def_merge                        true
% 7.41/1.52  --prep_def_merge_prop_impl              false
% 7.41/1.52  --prep_def_merge_mbd                    true
% 7.41/1.52  --prep_def_merge_tr_red                 false
% 7.41/1.52  --prep_def_merge_tr_cl                  false
% 7.41/1.52  --smt_preprocessing                     true
% 7.41/1.52  --smt_ac_axioms                         fast
% 7.41/1.52  --preprocessed_out                      false
% 7.41/1.52  --preprocessed_stats                    false
% 7.41/1.52  
% 7.41/1.52  ------ Abstraction refinement Options
% 7.41/1.52  
% 7.41/1.52  --abstr_ref                             []
% 7.41/1.52  --abstr_ref_prep                        false
% 7.41/1.52  --abstr_ref_until_sat                   false
% 7.41/1.52  --abstr_ref_sig_restrict                funpre
% 7.41/1.52  --abstr_ref_af_restrict_to_split_sk     false
% 7.41/1.52  --abstr_ref_under                       []
% 7.41/1.52  
% 7.41/1.52  ------ SAT Options
% 7.41/1.52  
% 7.41/1.52  --sat_mode                              false
% 7.41/1.52  --sat_fm_restart_options                ""
% 7.41/1.52  --sat_gr_def                            false
% 7.41/1.52  --sat_epr_types                         true
% 7.41/1.52  --sat_non_cyclic_types                  false
% 7.41/1.52  --sat_finite_models                     false
% 7.41/1.52  --sat_fm_lemmas                         false
% 7.41/1.52  --sat_fm_prep                           false
% 7.41/1.52  --sat_fm_uc_incr                        true
% 7.41/1.52  --sat_out_model                         small
% 7.41/1.52  --sat_out_clauses                       false
% 7.41/1.52  
% 7.41/1.52  ------ QBF Options
% 7.41/1.52  
% 7.41/1.52  --qbf_mode                              false
% 7.41/1.52  --qbf_elim_univ                         false
% 7.41/1.52  --qbf_dom_inst                          none
% 7.41/1.52  --qbf_dom_pre_inst                      false
% 7.41/1.52  --qbf_sk_in                             false
% 7.41/1.52  --qbf_pred_elim                         true
% 7.41/1.52  --qbf_split                             512
% 7.41/1.52  
% 7.41/1.52  ------ BMC1 Options
% 7.41/1.52  
% 7.41/1.52  --bmc1_incremental                      false
% 7.41/1.52  --bmc1_axioms                           reachable_all
% 7.41/1.52  --bmc1_min_bound                        0
% 7.41/1.52  --bmc1_max_bound                        -1
% 7.41/1.52  --bmc1_max_bound_default                -1
% 7.41/1.52  --bmc1_symbol_reachability              true
% 7.41/1.52  --bmc1_property_lemmas                  false
% 7.41/1.52  --bmc1_k_induction                      false
% 7.41/1.52  --bmc1_non_equiv_states                 false
% 7.41/1.52  --bmc1_deadlock                         false
% 7.41/1.52  --bmc1_ucm                              false
% 7.41/1.52  --bmc1_add_unsat_core                   none
% 7.41/1.52  --bmc1_unsat_core_children              false
% 7.41/1.52  --bmc1_unsat_core_extrapolate_axioms    false
% 7.41/1.52  --bmc1_out_stat                         full
% 7.41/1.52  --bmc1_ground_init                      false
% 7.41/1.52  --bmc1_pre_inst_next_state              false
% 7.41/1.52  --bmc1_pre_inst_state                   false
% 7.41/1.52  --bmc1_pre_inst_reach_state             false
% 7.41/1.52  --bmc1_out_unsat_core                   false
% 7.41/1.52  --bmc1_aig_witness_out                  false
% 7.41/1.52  --bmc1_verbose                          false
% 7.41/1.52  --bmc1_dump_clauses_tptp                false
% 7.41/1.52  --bmc1_dump_unsat_core_tptp             false
% 7.41/1.52  --bmc1_dump_file                        -
% 7.41/1.52  --bmc1_ucm_expand_uc_limit              128
% 7.41/1.52  --bmc1_ucm_n_expand_iterations          6
% 7.41/1.52  --bmc1_ucm_extend_mode                  1
% 7.41/1.52  --bmc1_ucm_init_mode                    2
% 7.41/1.52  --bmc1_ucm_cone_mode                    none
% 7.41/1.52  --bmc1_ucm_reduced_relation_type        0
% 7.41/1.52  --bmc1_ucm_relax_model                  4
% 7.41/1.52  --bmc1_ucm_full_tr_after_sat            true
% 7.41/1.52  --bmc1_ucm_expand_neg_assumptions       false
% 7.41/1.52  --bmc1_ucm_layered_model                none
% 7.41/1.52  --bmc1_ucm_max_lemma_size               10
% 7.41/1.52  
% 7.41/1.52  ------ AIG Options
% 7.41/1.52  
% 7.41/1.52  --aig_mode                              false
% 7.41/1.52  
% 7.41/1.52  ------ Instantiation Options
% 7.41/1.52  
% 7.41/1.52  --instantiation_flag                    true
% 7.41/1.52  --inst_sos_flag                         false
% 7.41/1.52  --inst_sos_phase                        true
% 7.41/1.52  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.41/1.52  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.41/1.52  --inst_lit_sel_side                     num_symb
% 7.41/1.52  --inst_solver_per_active                1400
% 7.41/1.52  --inst_solver_calls_frac                1.
% 7.41/1.52  --inst_passive_queue_type               priority_queues
% 7.41/1.52  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.41/1.52  --inst_passive_queues_freq              [25;2]
% 7.41/1.52  --inst_dismatching                      true
% 7.41/1.52  --inst_eager_unprocessed_to_passive     true
% 7.41/1.52  --inst_prop_sim_given                   true
% 7.41/1.52  --inst_prop_sim_new                     false
% 7.41/1.52  --inst_subs_new                         false
% 7.41/1.52  --inst_eq_res_simp                      false
% 7.41/1.52  --inst_subs_given                       false
% 7.41/1.52  --inst_orphan_elimination               true
% 7.41/1.52  --inst_learning_loop_flag               true
% 7.41/1.52  --inst_learning_start                   3000
% 7.41/1.52  --inst_learning_factor                  2
% 7.41/1.52  --inst_start_prop_sim_after_learn       3
% 7.41/1.52  --inst_sel_renew                        solver
% 7.41/1.52  --inst_lit_activity_flag                true
% 7.41/1.52  --inst_restr_to_given                   false
% 7.41/1.52  --inst_activity_threshold               500
% 7.41/1.52  --inst_out_proof                        true
% 7.41/1.52  
% 7.41/1.52  ------ Resolution Options
% 7.41/1.52  
% 7.41/1.52  --resolution_flag                       true
% 7.41/1.52  --res_lit_sel                           adaptive
% 7.41/1.52  --res_lit_sel_side                      none
% 7.41/1.52  --res_ordering                          kbo
% 7.41/1.52  --res_to_prop_solver                    active
% 7.41/1.52  --res_prop_simpl_new                    false
% 7.41/1.52  --res_prop_simpl_given                  true
% 7.41/1.52  --res_passive_queue_type                priority_queues
% 7.41/1.52  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.41/1.52  --res_passive_queues_freq               [15;5]
% 7.41/1.52  --res_forward_subs                      full
% 7.41/1.52  --res_backward_subs                     full
% 7.41/1.52  --res_forward_subs_resolution           true
% 7.41/1.52  --res_backward_subs_resolution          true
% 7.41/1.52  --res_orphan_elimination                true
% 7.41/1.52  --res_time_limit                        2.
% 7.41/1.52  --res_out_proof                         true
% 7.41/1.52  
% 7.41/1.52  ------ Superposition Options
% 7.41/1.52  
% 7.41/1.52  --superposition_flag                    true
% 7.41/1.52  --sup_passive_queue_type                priority_queues
% 7.41/1.52  --sup_passive_queues                    [[-conj_dist;+horn;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.41/1.52  --sup_passive_queues_freq               [8;1;4]
% 7.41/1.52  --demod_completeness_check              fast
% 7.41/1.52  --demod_use_ground                      true
% 7.41/1.52  --sup_to_prop_solver                    passive
% 7.41/1.52  --sup_prop_simpl_new                    true
% 7.41/1.52  --sup_prop_simpl_given                  true
% 7.41/1.52  --sup_fun_splitting                     false
% 7.41/1.52  --sup_smt_interval                      50000
% 7.41/1.52  
% 7.41/1.52  ------ Superposition Simplification Setup
% 7.41/1.52  
% 7.41/1.52  --sup_indices_passive                   []
% 7.41/1.52  --sup_indices_active                    [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.41/1.52  --sup_indices_immed                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.41/1.52  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.41/1.52  --sup_full_triv                         [TrivRules;PropSubs]
% 7.41/1.52  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.41/1.52  --sup_full_bw                           [BwDemod]
% 7.41/1.52  --sup_immed_triv                        [TrivRules]
% 7.41/1.52  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.41/1.52  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.41/1.52  --sup_immed_bw_main                     []
% 7.41/1.52  --sup_immed_bw_immed                    [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.41/1.52  --sup_input_triv                        [Unflattening;TrivRules]
% 7.41/1.52  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption;FwSubsumptionRes]
% 7.41/1.52  --sup_input_bw                          [BwDemod;BwSubsumption;BwSubsumptionRes]
% 7.41/1.52  
% 7.41/1.52  ------ Combination Options
% 7.41/1.52  
% 7.41/1.52  --comb_res_mult                         3
% 7.41/1.52  --comb_sup_mult                         2
% 7.41/1.52  --comb_inst_mult                        10
% 7.41/1.52  
% 7.41/1.52  ------ Debug Options
% 7.41/1.52  
% 7.41/1.52  --dbg_backtrace                         false
% 7.41/1.52  --dbg_dump_prop_clauses                 false
% 7.41/1.52  --dbg_dump_prop_clauses_file            -
% 7.41/1.52  --dbg_out_stat                          false
% 7.41/1.52  ------ Parsing...
% 7.41/1.52  ------ Clausification by vclausify_rel  & Parsing by iProver...
% 7.41/1.52  
% 7.41/1.52  ------ Preprocessing... sf_s  rm: 0 0s  sf_e  pe_s  pe_e 
% 7.41/1.52  
% 7.41/1.52  ------ Preprocessing... gs_s  sp: 0 0s  gs_e  snvd_s sp: 0 0s snvd_e 
% 7.41/1.52  
% 7.41/1.52  ------ Preprocessing... sf_s  rm: 0 0s  sf_e 
% 7.41/1.52  ------ Proving...
% 7.41/1.52  ------ Problem Properties 
% 7.41/1.52  
% 7.41/1.52  
% 7.41/1.52  clauses                                 9
% 7.41/1.52  conjectures                             1
% 7.41/1.52  EPR                                     0
% 7.41/1.52  Horn                                    9
% 7.41/1.52  unary                                   9
% 7.41/1.52  binary                                  0
% 7.41/1.52  lits                                    9
% 7.41/1.52  lits eq                                 9
% 7.41/1.52  fd_pure                                 0
% 7.41/1.52  fd_pseudo                               0
% 7.41/1.52  fd_cond                                 0
% 7.41/1.52  fd_pseudo_cond                          0
% 7.41/1.52  AC symbols                              0
% 7.41/1.52  
% 7.41/1.52  ------ Schedule UEQ
% 7.41/1.52  
% 7.41/1.52  ------ pure equality problem: resolution off 
% 7.41/1.52  
% 7.41/1.52  ------ Option_UEQ Time Limit: Unbounded
% 7.41/1.52  
% 7.41/1.52  
% 7.41/1.52  ------ 
% 7.41/1.52  Current options:
% 7.41/1.52  ------ 
% 7.41/1.52  
% 7.41/1.52  ------ Input Options
% 7.41/1.52  
% 7.41/1.52  --out_options                           all
% 7.41/1.52  --tptp_safe_out                         true
% 7.41/1.52  --problem_path                          ""
% 7.41/1.52  --include_path                          ""
% 7.41/1.52  --clausifier                            res/vclausify_rel
% 7.41/1.52  --clausifier_options                    --mode clausify
% 7.41/1.52  --stdin                                 false
% 7.41/1.52  --stats_out                             all
% 7.41/1.52  
% 7.41/1.52  ------ General Options
% 7.41/1.52  
% 7.41/1.52  --fof                                   false
% 7.41/1.52  --time_out_real                         305.
% 7.41/1.52  --time_out_virtual                      -1.
% 7.41/1.52  --symbol_type_check                     false
% 7.41/1.52  --clausify_out                          false
% 7.41/1.52  --sig_cnt_out                           false
% 7.41/1.52  --trig_cnt_out                          false
% 7.41/1.52  --trig_cnt_out_tolerance                1.
% 7.41/1.52  --trig_cnt_out_sk_spl                   false
% 7.41/1.52  --abstr_cl_out                          false
% 7.41/1.52  
% 7.41/1.52  ------ Global Options
% 7.41/1.52  
% 7.41/1.52  --schedule                              default
% 7.41/1.52  --add_important_lit                     false
% 7.41/1.52  --prop_solver_per_cl                    1000
% 7.41/1.52  --min_unsat_core                        false
% 7.41/1.52  --soft_assumptions                      false
% 7.41/1.52  --soft_lemma_size                       3
% 7.41/1.52  --prop_impl_unit_size                   0
% 7.41/1.52  --prop_impl_unit                        []
% 7.41/1.52  --share_sel_clauses                     true
% 7.41/1.52  --reset_solvers                         false
% 7.41/1.52  --bc_imp_inh                            [conj_cone]
% 7.41/1.52  --conj_cone_tolerance                   3.
% 7.41/1.52  --extra_neg_conj                        none
% 7.41/1.52  --large_theory_mode                     true
% 7.41/1.52  --prolific_symb_bound                   200
% 7.41/1.52  --lt_threshold                          2000
% 7.41/1.52  --clause_weak_htbl                      true
% 7.41/1.52  --gc_record_bc_elim                     false
% 7.41/1.52  
% 7.41/1.52  ------ Preprocessing Options
% 7.41/1.52  
% 7.41/1.52  --preprocessing_flag                    true
% 7.41/1.52  --time_out_prep_mult                    0.1
% 7.41/1.52  --splitting_mode                        input
% 7.41/1.52  --splitting_grd                         true
% 7.41/1.52  --splitting_cvd                         false
% 7.41/1.52  --splitting_cvd_svl                     false
% 7.41/1.52  --splitting_nvd                         32
% 7.41/1.52  --sub_typing                            true
% 7.41/1.52  --prep_gs_sim                           true
% 7.41/1.52  --prep_unflatten                        true
% 7.41/1.52  --prep_res_sim                          true
% 7.41/1.52  --prep_upred                            true
% 7.41/1.52  --prep_sem_filter                       exhaustive
% 7.41/1.52  --prep_sem_filter_out                   false
% 7.41/1.52  --pred_elim                             true
% 7.41/1.52  --res_sim_input                         true
% 7.41/1.52  --eq_ax_congr_red                       true
% 7.41/1.52  --pure_diseq_elim                       true
% 7.41/1.52  --brand_transform                       false
% 7.41/1.52  --non_eq_to_eq                          false
% 7.41/1.52  --prep_def_merge                        true
% 7.41/1.52  --prep_def_merge_prop_impl              false
% 7.41/1.52  --prep_def_merge_mbd                    true
% 7.41/1.52  --prep_def_merge_tr_red                 false
% 7.41/1.52  --prep_def_merge_tr_cl                  false
% 7.41/1.52  --smt_preprocessing                     true
% 7.41/1.52  --smt_ac_axioms                         fast
% 7.41/1.52  --preprocessed_out                      false
% 7.41/1.52  --preprocessed_stats                    false
% 7.41/1.52  
% 7.41/1.52  ------ Abstraction refinement Options
% 7.41/1.52  
% 7.41/1.52  --abstr_ref                             []
% 7.41/1.52  --abstr_ref_prep                        false
% 7.41/1.52  --abstr_ref_until_sat                   false
% 7.41/1.52  --abstr_ref_sig_restrict                funpre
% 7.41/1.52  --abstr_ref_af_restrict_to_split_sk     false
% 7.41/1.52  --abstr_ref_under                       []
% 7.41/1.52  
% 7.41/1.52  ------ SAT Options
% 7.41/1.52  
% 7.41/1.52  --sat_mode                              false
% 7.41/1.52  --sat_fm_restart_options                ""
% 7.41/1.52  --sat_gr_def                            false
% 7.41/1.52  --sat_epr_types                         true
% 7.41/1.52  --sat_non_cyclic_types                  false
% 7.41/1.52  --sat_finite_models                     false
% 7.41/1.52  --sat_fm_lemmas                         false
% 7.41/1.52  --sat_fm_prep                           false
% 7.41/1.52  --sat_fm_uc_incr                        true
% 7.41/1.52  --sat_out_model                         small
% 7.41/1.52  --sat_out_clauses                       false
% 7.41/1.52  
% 7.41/1.52  ------ QBF Options
% 7.41/1.52  
% 7.41/1.52  --qbf_mode                              false
% 7.41/1.52  --qbf_elim_univ                         false
% 7.41/1.52  --qbf_dom_inst                          none
% 7.41/1.52  --qbf_dom_pre_inst                      false
% 7.41/1.52  --qbf_sk_in                             false
% 7.41/1.52  --qbf_pred_elim                         true
% 7.41/1.52  --qbf_split                             512
% 7.41/1.52  
% 7.41/1.52  ------ BMC1 Options
% 7.41/1.52  
% 7.41/1.52  --bmc1_incremental                      false
% 7.41/1.52  --bmc1_axioms                           reachable_all
% 7.41/1.52  --bmc1_min_bound                        0
% 7.41/1.52  --bmc1_max_bound                        -1
% 7.41/1.52  --bmc1_max_bound_default                -1
% 7.41/1.52  --bmc1_symbol_reachability              true
% 7.41/1.52  --bmc1_property_lemmas                  false
% 7.41/1.52  --bmc1_k_induction                      false
% 7.41/1.52  --bmc1_non_equiv_states                 false
% 7.41/1.52  --bmc1_deadlock                         false
% 7.41/1.52  --bmc1_ucm                              false
% 7.41/1.52  --bmc1_add_unsat_core                   none
% 7.41/1.52  --bmc1_unsat_core_children              false
% 7.41/1.52  --bmc1_unsat_core_extrapolate_axioms    false
% 7.41/1.52  --bmc1_out_stat                         full
% 7.41/1.52  --bmc1_ground_init                      false
% 7.41/1.52  --bmc1_pre_inst_next_state              false
% 7.41/1.52  --bmc1_pre_inst_state                   false
% 7.41/1.52  --bmc1_pre_inst_reach_state             false
% 7.41/1.52  --bmc1_out_unsat_core                   false
% 7.41/1.52  --bmc1_aig_witness_out                  false
% 7.41/1.52  --bmc1_verbose                          false
% 7.41/1.52  --bmc1_dump_clauses_tptp                false
% 7.41/1.52  --bmc1_dump_unsat_core_tptp             false
% 7.41/1.52  --bmc1_dump_file                        -
% 7.41/1.52  --bmc1_ucm_expand_uc_limit              128
% 7.41/1.52  --bmc1_ucm_n_expand_iterations          6
% 7.41/1.52  --bmc1_ucm_extend_mode                  1
% 7.41/1.52  --bmc1_ucm_init_mode                    2
% 7.41/1.52  --bmc1_ucm_cone_mode                    none
% 7.41/1.52  --bmc1_ucm_reduced_relation_type        0
% 7.41/1.52  --bmc1_ucm_relax_model                  4
% 7.41/1.52  --bmc1_ucm_full_tr_after_sat            true
% 7.41/1.52  --bmc1_ucm_expand_neg_assumptions       false
% 7.41/1.52  --bmc1_ucm_layered_model                none
% 7.41/1.52  --bmc1_ucm_max_lemma_size               10
% 7.41/1.52  
% 7.41/1.52  ------ AIG Options
% 7.41/1.52  
% 7.41/1.52  --aig_mode                              false
% 7.41/1.52  
% 7.41/1.52  ------ Instantiation Options
% 7.41/1.52  
% 7.41/1.52  --instantiation_flag                    false
% 7.41/1.52  --inst_sos_flag                         false
% 7.41/1.52  --inst_sos_phase                        true
% 7.41/1.52  --inst_sos_sth_lit_sel                  [+prop;+non_prol_conj_symb;-eq;+ground;-num_var;-num_symb]
% 7.41/1.52  --inst_lit_sel                          [+prop;+sign;+ground;-num_var;-num_symb]
% 7.41/1.52  --inst_lit_sel_side                     num_symb
% 7.41/1.52  --inst_solver_per_active                1400
% 7.41/1.52  --inst_solver_calls_frac                1.
% 7.41/1.52  --inst_passive_queue_type               priority_queues
% 7.41/1.52  --inst_passive_queues                   [[-conj_dist;+conj_symb;-num_var];[+age;-num_symb]]
% 7.41/1.52  --inst_passive_queues_freq              [25;2]
% 7.41/1.52  --inst_dismatching                      true
% 7.41/1.52  --inst_eager_unprocessed_to_passive     true
% 7.41/1.52  --inst_prop_sim_given                   true
% 7.41/1.52  --inst_prop_sim_new                     false
% 7.41/1.52  --inst_subs_new                         false
% 7.41/1.52  --inst_eq_res_simp                      false
% 7.41/1.52  --inst_subs_given                       false
% 7.41/1.52  --inst_orphan_elimination               true
% 7.41/1.52  --inst_learning_loop_flag               true
% 7.41/1.52  --inst_learning_start                   3000
% 7.41/1.52  --inst_learning_factor                  2
% 7.41/1.52  --inst_start_prop_sim_after_learn       3
% 7.41/1.52  --inst_sel_renew                        solver
% 7.41/1.52  --inst_lit_activity_flag                true
% 7.41/1.52  --inst_restr_to_given                   false
% 7.41/1.52  --inst_activity_threshold               500
% 7.41/1.52  --inst_out_proof                        true
% 7.41/1.52  
% 7.41/1.52  ------ Resolution Options
% 7.41/1.52  
% 7.41/1.52  --resolution_flag                       false
% 7.41/1.52  --res_lit_sel                           adaptive
% 7.41/1.52  --res_lit_sel_side                      none
% 7.41/1.52  --res_ordering                          kbo
% 7.41/1.52  --res_to_prop_solver                    active
% 7.41/1.52  --res_prop_simpl_new                    false
% 7.41/1.52  --res_prop_simpl_given                  true
% 7.41/1.52  --res_passive_queue_type                priority_queues
% 7.41/1.52  --res_passive_queues                    [[-conj_dist;+conj_symb;-num_symb];[+age;-num_symb]]
% 7.41/1.52  --res_passive_queues_freq               [15;5]
% 7.41/1.52  --res_forward_subs                      full
% 7.41/1.52  --res_backward_subs                     full
% 7.41/1.52  --res_forward_subs_resolution           true
% 7.41/1.52  --res_backward_subs_resolution          true
% 7.41/1.52  --res_orphan_elimination                true
% 7.41/1.52  --res_time_limit                        2.
% 7.41/1.52  --res_out_proof                         true
% 7.41/1.52  
% 7.41/1.52  ------ Superposition Options
% 7.41/1.52  
% 7.41/1.52  --superposition_flag                    true
% 7.41/1.52  --sup_passive_queue_type                priority_queues
% 7.41/1.52  --sup_passive_queues                    [[-conj_dist;-num_symb];[+min_def_symb;-max_atom_input_occur;+conj_non_prolific_symb];[+age;-num_symb]]
% 7.41/1.52  --sup_passive_queues_freq               [8;1;4]
% 7.41/1.52  --demod_completeness_check              fast
% 7.41/1.52  --demod_use_ground                      true
% 7.41/1.52  --sup_to_prop_solver                    active
% 7.41/1.52  --sup_prop_simpl_new                    false
% 7.41/1.52  --sup_prop_simpl_given                  false
% 7.41/1.52  --sup_fun_splitting                     true
% 7.41/1.52  --sup_smt_interval                      10000
% 7.41/1.52  
% 7.41/1.52  ------ Superposition Simplification Setup
% 7.41/1.52  
% 7.41/1.52  --sup_indices_passive                   [LightNormIndex;FwDemodIndex]
% 7.41/1.52  --sup_indices_active                    [SubsumptionIndex;BwDemodIndex]
% 7.41/1.52  --sup_indices_immed                     [SubsumptionIndex;FwDemodIndex;BwDemodIndex]
% 7.41/1.52  --sup_indices_input                     [SubsumptionIndex;LightNormIndex;FwDemodIndex;BwDemodIndex]
% 7.41/1.52  --sup_full_triv                         [TrivRules]
% 7.41/1.52  --sup_full_fw                           [FwDemodLightNormLoopTriv;FwSubsumption;Joinability]
% 7.41/1.52  --sup_full_bw                           [BwDemod;BwSubsumption]
% 7.41/1.52  --sup_immed_triv                        [TrivRules]
% 7.41/1.52  --sup_immed_fw_main                     [Joinability;FwDemodLightNormLoopTriv;FwSubsumption]
% 7.41/1.52  --sup_immed_fw_immed                    [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.41/1.52  --sup_immed_bw_main                     []
% 7.41/1.52  --sup_immed_bw_immed                    [BwDemod;BwSubsumption]
% 7.41/1.52  --sup_input_triv                        [Unflattening;TrivRules]
% 7.41/1.52  --sup_input_fw                          [FwDemodLightNormLoopTriv;FwSubsumption]
% 7.41/1.52  --sup_input_bw                          [BwDemod;BwSubsumption]
% 7.41/1.52  
% 7.41/1.52  ------ Combination Options
% 7.41/1.52  
% 7.41/1.52  --comb_res_mult                         1
% 7.41/1.52  --comb_sup_mult                         1
% 7.41/1.52  --comb_inst_mult                        1000000
% 7.41/1.52  
% 7.41/1.52  ------ Debug Options
% 7.41/1.52  
% 7.41/1.52  --dbg_backtrace                         false
% 7.41/1.52  --dbg_dump_prop_clauses                 false
% 7.41/1.52  --dbg_dump_prop_clauses_file            -
% 7.41/1.52  --dbg_out_stat                          false
% 7.41/1.52  
% 7.41/1.52  
% 7.41/1.52  
% 7.41/1.52  
% 7.41/1.52  ------ Proving...
% 7.41/1.52  
% 7.41/1.52  
% 7.41/1.52  % SZS status Theorem for theBenchmark.p
% 7.41/1.52  
% 7.41/1.52   Resolution empty clause
% 7.41/1.52  
% 7.41/1.52  % SZS output start CNFRefutation for theBenchmark.p
% 7.41/1.52  
% 7.41/1.52  fof(f13,axiom,(
% 7.41/1.52    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)),
% 7.41/1.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.52  
% 7.41/1.52  fof(f34,plain,(
% 7.41/1.52    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k3_enumset1(X0,X0,X1,X2,X3)) )),
% 7.41/1.52    inference(cnf_transformation,[],[f13])).
% 7.41/1.52  
% 7.41/1.52  fof(f14,axiom,(
% 7.41/1.52    ! [X0,X1,X2,X3,X4] : k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)),
% 7.41/1.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.52  
% 7.41/1.52  fof(f35,plain,(
% 7.41/1.52    ( ! [X4,X2,X0,X3,X1] : (k4_enumset1(X0,X0,X1,X2,X3,X4) = k3_enumset1(X0,X1,X2,X3,X4)) )),
% 7.41/1.52    inference(cnf_transformation,[],[f14])).
% 7.41/1.52  
% 7.41/1.52  fof(f49,plain,(
% 7.41/1.52    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k4_enumset1(X0,X0,X0,X1,X2,X3)) )),
% 7.41/1.52    inference(definition_unfolding,[],[f34,f35])).
% 7.41/1.52  
% 7.41/1.52  fof(f16,axiom,(
% 7.41/1.52    ! [X0,X1,X2,X3,X4,X5,X6] : k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)),
% 7.41/1.52    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.52  
% 7.41/1.52  fof(f37,plain,(
% 7.41/1.52    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X1,X2,X3,X4,X5,X6) = k6_enumset1(X0,X0,X1,X2,X3,X4,X5,X6)) )),
% 7.41/1.52    inference(cnf_transformation,[],[f16])).
% 7.41/1.52  
% 7.41/1.52  fof(f7,axiom,(
% 7.41/1.52    ! [X0,X1,X2,X3,X4,X5,X6] : k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k1_tarski(X6)) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f28,plain,(
% 7.41/1.53    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k2_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k1_tarski(X6)) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f7])).
% 7.41/1.53  
% 7.41/1.53  fof(f10,axiom,(
% 7.41/1.53    ! [X0] : k2_tarski(X0,X0) = k1_tarski(X0)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f31,plain,(
% 7.41/1.53    ( ! [X0] : (k2_tarski(X0,X0) = k1_tarski(X0)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f10])).
% 7.41/1.53  
% 7.41/1.53  fof(f11,axiom,(
% 7.41/1.53    ! [X0,X1] : k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f32,plain,(
% 7.41/1.53    ( ! [X0,X1] : (k2_tarski(X0,X1) = k1_enumset1(X0,X0,X1)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f11])).
% 7.41/1.53  
% 7.41/1.53  fof(f40,plain,(
% 7.41/1.53    ( ! [X0,X1] : (k2_tarski(X0,X1) = k2_enumset1(X0,X0,X0,X1)) )),
% 7.41/1.53    inference(definition_unfolding,[],[f32,f33])).
% 7.41/1.53  
% 7.41/1.53  fof(f41,plain,(
% 7.41/1.53    ( ! [X0] : (k2_enumset1(X0,X0,X0,X0) = k1_tarski(X0)) )),
% 7.41/1.53    inference(definition_unfolding,[],[f31,f40])).
% 7.41/1.53  
% 7.41/1.53  fof(f42,plain,(
% 7.41/1.53    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k5_xboole_0(k2_enumset1(X6,X6,X6,X6),k3_xboole_0(k2_enumset1(X6,X6,X6,X6),k4_enumset1(X0,X1,X2,X3,X4,X5)))) = k5_enumset1(X0,X1,X2,X3,X4,X5,X6)) )),
% 7.41/1.53    inference(definition_unfolding,[],[f28,f39,f41])).
% 7.41/1.53  
% 7.41/1.53  fof(f8,axiom,(
% 7.41/1.53    ! [X0,X1,X2,X3,X4,X5,X6,X7] : k2_xboole_0(k1_enumset1(X0,X1,X2),k3_enumset1(X3,X4,X5,X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f29,plain,(
% 7.41/1.53    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k2_xboole_0(k1_enumset1(X0,X1,X2),k3_enumset1(X3,X4,X5,X6,X7)) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f8])).
% 7.41/1.53  
% 7.41/1.53  fof(f2,axiom,(
% 7.41/1.53    ! [X0,X1] : k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f23,plain,(
% 7.41/1.53    ( ! [X0,X1] : (k5_xboole_0(X0,k4_xboole_0(X1,X0)) = k2_xboole_0(X0,X1)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f2])).
% 7.41/1.53  
% 7.41/1.53  fof(f1,axiom,(
% 7.41/1.53    ! [X0,X1] : k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f22,plain,(
% 7.41/1.53    ( ! [X0,X1] : (k4_xboole_0(X0,X1) = k5_xboole_0(X0,k3_xboole_0(X0,X1))) )),
% 7.41/1.53    inference(cnf_transformation,[],[f1])).
% 7.41/1.53  
% 7.41/1.53  fof(f39,plain,(
% 7.41/1.53    ( ! [X0,X1] : (k5_xboole_0(X0,k5_xboole_0(X1,k3_xboole_0(X1,X0))) = k2_xboole_0(X0,X1)) )),
% 7.41/1.53    inference(definition_unfolding,[],[f23,f22])).
% 7.41/1.53  
% 7.41/1.53  fof(f12,axiom,(
% 7.41/1.53    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f33,plain,(
% 7.41/1.53    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k2_enumset1(X0,X0,X1,X2)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f12])).
% 7.41/1.53  
% 7.41/1.53  fof(f43,plain,(
% 7.41/1.53    ( ! [X6,X4,X2,X0,X7,X5,X3,X1] : (k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k5_xboole_0(k4_enumset1(X3,X3,X4,X5,X6,X7),k3_xboole_0(k4_enumset1(X3,X3,X4,X5,X6,X7),k2_enumset1(X0,X0,X1,X2)))) = k6_enumset1(X0,X1,X2,X3,X4,X5,X6,X7)) )),
% 7.41/1.53    inference(definition_unfolding,[],[f29,f39,f33,f35])).
% 7.41/1.53  
% 7.41/1.53  fof(f50,plain,(
% 7.41/1.53    ( ! [X6,X4,X2,X0,X5,X3,X1] : (k5_xboole_0(k2_enumset1(X0,X0,X0,X1),k5_xboole_0(k4_enumset1(X2,X2,X3,X4,X5,X6),k3_xboole_0(k4_enumset1(X2,X2,X3,X4,X5,X6),k2_enumset1(X0,X0,X0,X1)))) = k5_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k5_xboole_0(k2_enumset1(X6,X6,X6,X6),k3_xboole_0(k2_enumset1(X6,X6,X6,X6),k4_enumset1(X0,X1,X2,X3,X4,X5))))) )),
% 7.41/1.53    inference(definition_unfolding,[],[f37,f42,f43])).
% 7.41/1.53  
% 7.41/1.53  fof(f15,axiom,(
% 7.41/1.53    ! [X0,X1,X2,X3,X4,X5] : k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f36,plain,(
% 7.41/1.53    ( ! [X4,X2,X0,X5,X3,X1] : (k5_enumset1(X0,X0,X1,X2,X3,X4,X5) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f15])).
% 7.41/1.53  
% 7.41/1.53  fof(f45,plain,(
% 7.41/1.53    ( ! [X4,X2,X0,X5,X3,X1] : (k5_xboole_0(k4_enumset1(X0,X0,X1,X2,X3,X4),k5_xboole_0(k2_enumset1(X5,X5,X5,X5),k3_xboole_0(k2_enumset1(X5,X5,X5,X5),k4_enumset1(X0,X0,X1,X2,X3,X4)))) = k4_enumset1(X0,X1,X2,X3,X4,X5)) )),
% 7.41/1.53    inference(definition_unfolding,[],[f36,f42])).
% 7.41/1.53  
% 7.41/1.53  fof(f5,axiom,(
% 7.41/1.53    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X0,X2,X3,X1)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f26,plain,(
% 7.41/1.53    ( ! [X2,X0,X3,X1] : (k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X0,X2,X3,X1)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f5])).
% 7.41/1.53  
% 7.41/1.53  fof(f4,axiom,(
% 7.41/1.53    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f25,plain,(
% 7.41/1.53    ( ! [X2,X0,X1] : (k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f4])).
% 7.41/1.53  
% 7.41/1.53  fof(f47,plain,(
% 7.41/1.53    ( ! [X2,X0,X1] : (k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X1,X1,X2,X0)) )),
% 7.41/1.53    inference(definition_unfolding,[],[f25,f33,f33])).
% 7.41/1.53  
% 7.41/1.53  fof(f6,axiom,(
% 7.41/1.53    ! [X0,X1,X2,X3] : k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f27,plain,(
% 7.41/1.53    ( ! [X2,X0,X3,X1] : (k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3)) )),
% 7.41/1.53    inference(cnf_transformation,[],[f6])).
% 7.41/1.53  
% 7.41/1.53  fof(f44,plain,(
% 7.41/1.53    ( ! [X2,X0,X3,X1] : (k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k5_xboole_0(k2_enumset1(X3,X3,X3,X3),k3_xboole_0(k2_enumset1(X3,X3,X3,X3),k2_enumset1(X0,X0,X1,X2)))) = k2_enumset1(X0,X1,X2,X3)) )),
% 7.41/1.53    inference(definition_unfolding,[],[f27,f39,f33,f41])).
% 7.41/1.53  
% 7.41/1.53  fof(f17,conjecture,(
% 7.41/1.53    ! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X1,X0,X2,X3)),
% 7.41/1.53    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).
% 7.41/1.53  
% 7.41/1.53  fof(f18,negated_conjecture,(
% 7.41/1.53    ~! [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X1,X0,X2,X3)),
% 7.41/1.53    inference(negated_conjecture,[],[f17])).
% 7.41/1.53  
% 7.41/1.53  fof(f19,plain,(
% 7.41/1.53    ? [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) != k2_enumset1(X1,X0,X2,X3)),
% 7.41/1.53    inference(ennf_transformation,[],[f18])).
% 7.41/1.53  
% 7.41/1.53  fof(f20,plain,(
% 7.41/1.53    ? [X0,X1,X2,X3] : k2_enumset1(X0,X1,X2,X3) != k2_enumset1(X1,X0,X2,X3) => k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3)),
% 7.41/1.53    introduced(choice_axiom,[])).
% 7.41/1.53  
% 7.41/1.53  fof(f21,plain,(
% 7.41/1.53    k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3)),
% 7.41/1.53    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3])],[f19,f20])).
% 7.41/1.53  
% 7.41/1.53  fof(f38,plain,(
% 7.41/1.53    k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3)),
% 7.41/1.53    inference(cnf_transformation,[],[f21])).
% 7.41/1.53  
% 7.41/1.53  cnf(c_6,plain,
% 7.41/1.53      ( k4_enumset1(X0,X0,X0,X1,X2,X3) = k2_enumset1(X0,X1,X2,X3) ),
% 7.41/1.53      inference(cnf_transformation,[],[f49]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_21,plain,
% 7.41/1.53      ( k4_enumset1(X0_37,X0_37,X0_37,X1_37,X2_37,X3_37) = k2_enumset1(X0_37,X1_37,X2_37,X3_37) ),
% 7.41/1.53      inference(subtyping,[status(esa)],[c_6]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_7,plain,
% 7.41/1.53      ( k5_xboole_0(k4_enumset1(X0,X1,X2,X3,X4,X5),k5_xboole_0(k2_enumset1(X6,X6,X6,X6),k3_xboole_0(k2_enumset1(X6,X6,X6,X6),k4_enumset1(X0,X1,X2,X3,X4,X5)))) = k5_xboole_0(k2_enumset1(X0,X0,X0,X1),k5_xboole_0(k4_enumset1(X2,X2,X3,X4,X5,X6),k3_xboole_0(k4_enumset1(X2,X2,X3,X4,X5,X6),k2_enumset1(X0,X0,X0,X1)))) ),
% 7.41/1.53      inference(cnf_transformation,[],[f50]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_20,plain,
% 7.41/1.53      ( k5_xboole_0(k4_enumset1(X0_37,X1_37,X2_37,X3_37,X4_37,X5_37),k5_xboole_0(k2_enumset1(X6_37,X6_37,X6_37,X6_37),k3_xboole_0(k2_enumset1(X6_37,X6_37,X6_37,X6_37),k4_enumset1(X0_37,X1_37,X2_37,X3_37,X4_37,X5_37)))) = k5_xboole_0(k2_enumset1(X0_37,X0_37,X0_37,X1_37),k5_xboole_0(k4_enumset1(X2_37,X2_37,X3_37,X4_37,X5_37,X6_37),k3_xboole_0(k4_enumset1(X2_37,X2_37,X3_37,X4_37,X5_37,X6_37),k2_enumset1(X0_37,X0_37,X0_37,X1_37)))) ),
% 7.41/1.53      inference(subtyping,[status(esa)],[c_7]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_210,plain,
% 7.41/1.53      ( k5_xboole_0(k4_enumset1(X0_37,X1_37,X2_37,X2_37,X3_37,X4_37),k5_xboole_0(k2_enumset1(X5_37,X5_37,X5_37,X5_37),k3_xboole_0(k2_enumset1(X5_37,X5_37,X5_37,X5_37),k4_enumset1(X0_37,X1_37,X2_37,X2_37,X3_37,X4_37)))) = k5_xboole_0(k2_enumset1(X0_37,X0_37,X0_37,X1_37),k5_xboole_0(k2_enumset1(X2_37,X3_37,X4_37,X5_37),k3_xboole_0(k2_enumset1(X2_37,X3_37,X4_37,X5_37),k2_enumset1(X0_37,X0_37,X0_37,X1_37)))) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_21,c_20]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_23216,plain,
% 7.41/1.53      ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X0_37,X0_37),k5_xboole_0(k2_enumset1(X0_37,X1_37,X2_37,X3_37),k3_xboole_0(k2_enumset1(X0_37,X1_37,X2_37,X3_37),k2_enumset1(X0_37,X0_37,X0_37,X0_37)))) = k5_xboole_0(k2_enumset1(X0_37,X0_37,X1_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X0_37,X1_37,X2_37)))) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_21,c_210]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_1,plain,
% 7.41/1.53      ( k5_xboole_0(k4_enumset1(X0,X0,X1,X2,X3,X4),k5_xboole_0(k2_enumset1(X5,X5,X5,X5),k3_xboole_0(k2_enumset1(X5,X5,X5,X5),k4_enumset1(X0,X0,X1,X2,X3,X4)))) = k4_enumset1(X0,X1,X2,X3,X4,X5) ),
% 7.41/1.53      inference(cnf_transformation,[],[f45]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_26,plain,
% 7.41/1.53      ( k5_xboole_0(k4_enumset1(X0_37,X0_37,X1_37,X2_37,X3_37,X4_37),k5_xboole_0(k2_enumset1(X5_37,X5_37,X5_37,X5_37),k3_xboole_0(k2_enumset1(X5_37,X5_37,X5_37,X5_37),k4_enumset1(X0_37,X0_37,X1_37,X2_37,X3_37,X4_37)))) = k4_enumset1(X0_37,X1_37,X2_37,X3_37,X4_37,X5_37) ),
% 7.41/1.53      inference(subtyping,[status(esa)],[c_1]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_23712,plain,
% 7.41/1.53      ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X0_37,X0_37),k5_xboole_0(k2_enumset1(X1_37,X2_37,X3_37,X4_37),k3_xboole_0(k2_enumset1(X1_37,X2_37,X3_37,X4_37),k2_enumset1(X0_37,X0_37,X0_37,X0_37)))) = k4_enumset1(X0_37,X1_37,X1_37,X2_37,X3_37,X4_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_210,c_26]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_23738,plain,
% 7.41/1.53      ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X1_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X0_37,X1_37,X2_37)))) = k4_enumset1(X0_37,X0_37,X0_37,X1_37,X2_37,X3_37) ),
% 7.41/1.53      inference(demodulation,[status(thm)],[c_23216,c_23712]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_4,plain,
% 7.41/1.53      ( k2_enumset1(X0,X1,X2,X3) = k2_enumset1(X0,X3,X1,X2) ),
% 7.41/1.53      inference(cnf_transformation,[],[f26]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_23,plain,
% 7.41/1.53      ( k2_enumset1(X0_37,X1_37,X2_37,X3_37) = k2_enumset1(X0_37,X3_37,X1_37,X2_37) ),
% 7.41/1.53      inference(subtyping,[status(esa)],[c_4]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_3,plain,
% 7.41/1.53      ( k2_enumset1(X0,X0,X1,X2) = k2_enumset1(X2,X2,X0,X1) ),
% 7.41/1.53      inference(cnf_transformation,[],[f47]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_24,plain,
% 7.41/1.53      ( k2_enumset1(X0_37,X0_37,X1_37,X2_37) = k2_enumset1(X2_37,X2_37,X0_37,X1_37) ),
% 7.41/1.53      inference(subtyping,[status(esa)],[c_3]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_47,plain,
% 7.41/1.53      ( k2_enumset1(X0_37,X0_37,X1_37,X2_37) = k2_enumset1(X2_37,X1_37,X2_37,X0_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_23,c_24]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_0,plain,
% 7.41/1.53      ( k5_xboole_0(k2_enumset1(X0,X0,X1,X2),k5_xboole_0(k2_enumset1(X3,X3,X3,X3),k3_xboole_0(k2_enumset1(X3,X3,X3,X3),k2_enumset1(X0,X0,X1,X2)))) = k2_enumset1(X0,X1,X2,X3) ),
% 7.41/1.53      inference(cnf_transformation,[],[f44]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_27,plain,
% 7.41/1.53      ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X1_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X0_37,X1_37,X2_37)))) = k2_enumset1(X0_37,X1_37,X2_37,X3_37) ),
% 7.41/1.53      inference(subtyping,[status(esa)],[c_0]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_228,plain,
% 7.41/1.53      ( k5_xboole_0(k2_enumset1(X0_37,X1_37,X0_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X1_37,X0_37,X2_37)))) = k2_enumset1(X2_37,X1_37,X0_37,X3_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_47,c_27]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_2525,plain,
% 7.41/1.53      ( k2_enumset1(X0_37,X1_37,X1_37,X2_37) = k2_enumset1(X1_37,X1_37,X0_37,X2_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_228,c_27]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_3380,plain,
% 7.41/1.53      ( k2_enumset1(X0_37,X1_37,X1_37,X2_37) = k2_enumset1(X0_37,X0_37,X2_37,X1_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_2525,c_24]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_49,plain,
% 7.41/1.53      ( k2_enumset1(X0_37,X0_37,X1_37,X2_37) = k2_enumset1(X2_37,X0_37,X1_37,X2_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_23,c_24]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_227,plain,
% 7.41/1.53      ( k5_xboole_0(k2_enumset1(X0_37,X1_37,X2_37,X0_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X1_37,X2_37,X0_37)))) = k2_enumset1(X1_37,X2_37,X0_37,X3_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_49,c_27]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_2526,plain,
% 7.41/1.53      ( k2_enumset1(X0_37,X1_37,X1_37,X2_37) = k2_enumset1(X1_37,X0_37,X1_37,X2_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_228,c_227]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_4144,plain,
% 7.41/1.53      ( k2_enumset1(X0_37,X1_37,X0_37,X2_37) = k2_enumset1(X1_37,X1_37,X2_37,X0_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_3380,c_2526]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_13061,plain,
% 7.41/1.53      ( k5_xboole_0(k2_enumset1(X0_37,X0_37,X1_37,X2_37),k5_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k3_xboole_0(k2_enumset1(X3_37,X3_37,X3_37,X3_37),k2_enumset1(X0_37,X0_37,X1_37,X2_37)))) = k2_enumset1(X1_37,X0_37,X2_37,X3_37) ),
% 7.41/1.53      inference(superposition,[status(thm)],[c_4144,c_228]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_23739,plain,
% 7.41/1.53      ( k2_enumset1(X0_37,X1_37,X2_37,X3_37) = k2_enumset1(X1_37,X0_37,X2_37,X3_37) ),
% 7.41/1.53      inference(light_normalisation,[status(thm)],[c_23738,c_21,c_13061]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_8,negated_conjecture,
% 7.41/1.53      ( k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3) ),
% 7.41/1.53      inference(cnf_transformation,[],[f38]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_19,negated_conjecture,
% 7.41/1.53      ( k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK1,sK0,sK2,sK3) ),
% 7.41/1.53      inference(subtyping,[status(esa)],[c_8]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_23740,plain,
% 7.41/1.53      ( k2_enumset1(sK0,sK1,sK2,sK3) != k2_enumset1(sK0,sK1,sK2,sK3) ),
% 7.41/1.53      inference(demodulation,[status(thm)],[c_23739,c_19]) ).
% 7.41/1.53  
% 7.41/1.53  cnf(c_26205,plain,
% 7.41/1.53      ( $false ),
% 7.41/1.53      inference(equality_resolution_simp,[status(thm)],[c_23740]) ).
% 7.41/1.53  
% 7.41/1.53  
% 7.41/1.53  % SZS output end CNFRefutation for theBenchmark.p
% 7.41/1.53  
% 7.41/1.53  ------                               Statistics
% 7.41/1.53  
% 7.41/1.53  ------ General
% 7.41/1.53  
% 7.41/1.53  abstr_ref_over_cycles:                  0
% 7.41/1.53  abstr_ref_under_cycles:                 0
% 7.41/1.53  gc_basic_clause_elim:                   0
% 7.41/1.53  forced_gc_time:                         0
% 7.41/1.53  parsing_time:                           0.008
% 7.41/1.53  unif_index_cands_time:                  0.
% 7.41/1.53  unif_index_add_time:                    0.
% 7.41/1.53  orderings_time:                         0.
% 7.41/1.53  out_proof_time:                         0.006
% 7.41/1.53  total_time:                             0.657
% 7.41/1.53  num_of_symbols:                         41
% 7.41/1.53  num_of_terms:                           2678
% 7.41/1.53  
% 7.41/1.53  ------ Preprocessing
% 7.41/1.53  
% 7.41/1.53  num_of_splits:                          0
% 7.41/1.53  num_of_split_atoms:                     0
% 7.41/1.53  num_of_reused_defs:                     0
% 7.41/1.53  num_eq_ax_congr_red:                    16
% 7.41/1.53  num_of_sem_filtered_clauses:            0
% 7.41/1.53  num_of_subtypes:                        2
% 7.41/1.53  monotx_restored_types:                  0
% 7.41/1.53  sat_num_of_epr_types:                   0
% 7.41/1.53  sat_num_of_non_cyclic_types:            0
% 7.41/1.53  sat_guarded_non_collapsed_types:        0
% 7.41/1.53  num_pure_diseq_elim:                    0
% 7.41/1.53  simp_replaced_by:                       0
% 7.41/1.53  res_preprocessed:                       22
% 7.41/1.53  prep_upred:                             0
% 7.41/1.53  prep_unflattend:                        0
% 7.41/1.53  smt_new_axioms:                         0
% 7.41/1.53  pred_elim_cands:                        0
% 7.41/1.53  pred_elim:                              0
% 7.41/1.53  pred_elim_cl:                           0
% 7.41/1.53  pred_elim_cycles:                       0
% 7.41/1.53  merged_defs:                            0
% 7.41/1.53  merged_defs_ncl:                        0
% 7.41/1.53  bin_hyper_res:                          0
% 7.41/1.53  prep_cycles:                            2
% 7.41/1.53  pred_elim_time:                         0.
% 7.41/1.53  splitting_time:                         0.
% 7.41/1.53  sem_filter_time:                        0.
% 7.41/1.53  monotx_time:                            0.
% 7.41/1.53  subtype_inf_time:                       0.
% 7.41/1.53  
% 7.41/1.53  ------ Problem properties
% 7.41/1.53  
% 7.41/1.53  clauses:                                9
% 7.41/1.53  conjectures:                            1
% 7.41/1.53  epr:                                    0
% 7.41/1.53  horn:                                   9
% 7.41/1.53  ground:                                 1
% 7.41/1.53  unary:                                  9
% 7.41/1.53  binary:                                 0
% 7.41/1.53  lits:                                   9
% 7.41/1.53  lits_eq:                                9
% 7.41/1.53  fd_pure:                                0
% 7.41/1.53  fd_pseudo:                              0
% 7.41/1.53  fd_cond:                                0
% 7.41/1.53  fd_pseudo_cond:                         0
% 7.41/1.53  ac_symbols:                             0
% 7.41/1.53  
% 7.41/1.53  ------ Propositional Solver
% 7.41/1.53  
% 7.41/1.53  prop_solver_calls:                      13
% 7.41/1.53  prop_fast_solver_calls:                 56
% 7.41/1.53  smt_solver_calls:                       0
% 7.41/1.53  smt_fast_solver_calls:                  0
% 7.41/1.53  prop_num_of_clauses:                    154
% 7.41/1.53  prop_preprocess_simplified:             406
% 7.41/1.53  prop_fo_subsumed:                       0
% 7.41/1.53  prop_solver_time:                       0.
% 7.41/1.53  smt_solver_time:                        0.
% 7.41/1.53  smt_fast_solver_time:                   0.
% 7.41/1.53  prop_fast_solver_time:                  0.
% 7.41/1.53  prop_unsat_core_time:                   0.
% 7.41/1.53  
% 7.41/1.53  ------ QBF
% 7.41/1.53  
% 7.41/1.53  qbf_q_res:                              0
% 7.41/1.53  qbf_num_tautologies:                    0
% 7.41/1.53  qbf_prep_cycles:                        0
% 7.41/1.53  
% 7.41/1.53  ------ BMC1
% 7.41/1.53  
% 7.41/1.53  bmc1_current_bound:                     -1
% 7.41/1.53  bmc1_last_solved_bound:                 -1
% 7.41/1.53  bmc1_unsat_core_size:                   -1
% 7.41/1.53  bmc1_unsat_core_parents_size:           -1
% 7.41/1.53  bmc1_merge_next_fun:                    0
% 7.41/1.53  bmc1_unsat_core_clauses_time:           0.
% 7.41/1.53  
% 7.41/1.53  ------ Instantiation
% 7.41/1.53  
% 7.41/1.53  inst_num_of_clauses:                    0
% 7.41/1.53  inst_num_in_passive:                    0
% 7.41/1.53  inst_num_in_active:                     0
% 7.41/1.53  inst_num_in_unprocessed:                0
% 7.41/1.53  inst_num_of_loops:                      0
% 7.41/1.53  inst_num_of_learning_restarts:          0
% 7.41/1.53  inst_num_moves_active_passive:          0
% 7.41/1.53  inst_lit_activity:                      0
% 7.41/1.53  inst_lit_activity_moves:                0
% 7.41/1.53  inst_num_tautologies:                   0
% 7.41/1.53  inst_num_prop_implied:                  0
% 7.41/1.53  inst_num_existing_simplified:           0
% 7.41/1.53  inst_num_eq_res_simplified:             0
% 7.41/1.53  inst_num_child_elim:                    0
% 7.41/1.53  inst_num_of_dismatching_blockings:      0
% 7.41/1.53  inst_num_of_non_proper_insts:           0
% 7.41/1.53  inst_num_of_duplicates:                 0
% 7.41/1.53  inst_inst_num_from_inst_to_res:         0
% 7.41/1.53  inst_dismatching_checking_time:         0.
% 7.41/1.53  
% 7.41/1.53  ------ Resolution
% 7.41/1.53  
% 7.41/1.53  res_num_of_clauses:                     0
% 7.41/1.53  res_num_in_passive:                     0
% 7.41/1.53  res_num_in_active:                      0
% 7.41/1.53  res_num_of_loops:                       24
% 7.41/1.53  res_forward_subset_subsumed:            0
% 7.41/1.53  res_backward_subset_subsumed:           0
% 7.41/1.53  res_forward_subsumed:                   0
% 7.41/1.53  res_backward_subsumed:                  0
% 7.41/1.53  res_forward_subsumption_resolution:     0
% 7.41/1.53  res_backward_subsumption_resolution:    0
% 7.41/1.53  res_clause_to_clause_subsumption:       37666
% 7.41/1.53  res_orphan_elimination:                 0
% 7.41/1.53  res_tautology_del:                      0
% 7.41/1.53  res_num_eq_res_simplified:              0
% 7.41/1.53  res_num_sel_changes:                    0
% 7.41/1.53  res_moves_from_active_to_pass:          0
% 7.41/1.53  
% 7.41/1.53  ------ Superposition
% 7.41/1.53  
% 7.41/1.53  sup_time_total:                         0.
% 7.41/1.53  sup_time_generating:                    0.
% 7.41/1.53  sup_time_sim_full:                      0.
% 7.41/1.53  sup_time_sim_immed:                     0.
% 7.41/1.53  
% 7.41/1.53  sup_num_of_clauses:                     518
% 7.41/1.53  sup_num_in_active:                      103
% 7.41/1.53  sup_num_in_passive:                     415
% 7.41/1.53  sup_num_of_loops:                       125
% 7.41/1.53  sup_fw_superposition:                   13196
% 7.41/1.53  sup_bw_superposition:                   12950
% 7.41/1.53  sup_immediate_simplified:               58
% 7.41/1.53  sup_given_eliminated:                   0
% 7.41/1.53  comparisons_done:                       0
% 7.41/1.53  comparisons_avoided:                    0
% 7.41/1.53  
% 7.41/1.53  ------ Simplifications
% 7.41/1.53  
% 7.41/1.53  
% 7.41/1.53  sim_fw_subset_subsumed:                 0
% 7.41/1.53  sim_bw_subset_subsumed:                 0
% 7.41/1.53  sim_fw_subsumed:                        42
% 7.41/1.53  sim_bw_subsumed:                        28
% 7.41/1.53  sim_fw_subsumption_res:                 0
% 7.41/1.53  sim_bw_subsumption_res:                 0
% 7.41/1.53  sim_tautology_del:                      0
% 7.41/1.53  sim_eq_tautology_del:                   4
% 7.41/1.53  sim_eq_res_simp:                        0
% 7.41/1.53  sim_fw_demodulated:                     9
% 7.41/1.53  sim_bw_demodulated:                     1
% 7.41/1.53  sim_light_normalised:                   6
% 7.41/1.53  sim_joinable_taut:                      0
% 7.41/1.53  sim_joinable_simp:                      0
% 7.41/1.53  sim_ac_normalised:                      0
% 7.41/1.53  sim_smt_subsumption:                    0
% 7.41/1.53  
%------------------------------------------------------------------------------
