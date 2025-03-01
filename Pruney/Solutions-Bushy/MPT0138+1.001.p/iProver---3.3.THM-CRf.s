%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0138+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n031.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:42:34 EST 2020

% Result     : Theorem 0.60s
% Output     : CNFRefutation 0.60s
% Verified   : 
% Statistics : Number of formulae       :   25 (  41 expanded)
%              Number of clauses        :    8 (  14 expanded)
%              Number of leaves         :    6 (  11 expanded)
%              Depth                    :   11
%              Number of atoms          :   26 (  42 expanded)
%              Number of equality atoms :   25 (  41 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    5 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f4,axiom,(
    ! [X0,X1,X2] : k2_xboole_0(X0,k2_xboole_0(X1,X2)) = k2_xboole_0(k2_xboole_0(X0,X1),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f13,plain,(
    ! [X2,X0,X1] : k2_xboole_0(X0,k2_xboole_0(X1,X2)) = k2_xboole_0(k2_xboole_0(X0,X1),X2) ),
    inference(cnf_transformation,[],[f4])).

fof(f5,conjecture,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k2_tarski(X4,X5)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f6,negated_conjecture,(
    ~ ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k2_tarski(X4,X5)) ),
    inference(negated_conjecture,[],[f5])).

fof(f7,plain,(
    ? [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) != k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k2_tarski(X4,X5)) ),
    inference(ennf_transformation,[],[f6])).

fof(f8,plain,
    ( ? [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) != k2_xboole_0(k2_enumset1(X0,X1,X2,X3),k2_tarski(X4,X5))
   => k4_enumset1(sK0,sK1,sK2,sK3,sK4,sK5) != k2_xboole_0(k2_enumset1(sK0,sK1,sK2,sK3),k2_tarski(sK4,sK5)) ),
    introduced(choice_axiom,[])).

fof(f9,plain,(
    k4_enumset1(sK0,sK1,sK2,sK3,sK4,sK5) != k2_xboole_0(k2_enumset1(sK0,sK1,sK2,sK3),k2_tarski(sK4,sK5)) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2,sK3,sK4,sK5])],[f7,f8])).

fof(f14,plain,(
    k4_enumset1(sK0,sK1,sK2,sK3,sK4,sK5) != k2_xboole_0(k2_enumset1(sK0,sK1,sK2,sK3),k2_tarski(sK4,sK5)) ),
    inference(cnf_transformation,[],[f9])).

fof(f1,axiom,(
    ! [X0,X1,X2,X3,X4,X5] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_enumset1(X3,X4,X5)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k2_xboole_0(k1_enumset1(X0,X1,X2),k1_enumset1(X3,X4,X5)) ),
    inference(cnf_transformation,[],[f1])).

fof(f15,plain,(
    ! [X4,X2,X0,X5,X3,X1] : k4_enumset1(X0,X1,X2,X3,X4,X5) = k2_xboole_0(k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)),k2_xboole_0(k1_tarski(X3),k2_tarski(X4,X5))) ),
    inference(definition_unfolding,[],[f10,f11,f11])).

fof(f3,axiom,(
    ! [X0,X1,X2,X3] : k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f12,plain,(
    ! [X2,X0,X3,X1] : k2_xboole_0(k1_enumset1(X0,X1,X2),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3) ),
    inference(cnf_transformation,[],[f3])).

fof(f2,axiom,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X2,X0,X1] : k1_enumset1(X0,X1,X2) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) ),
    inference(cnf_transformation,[],[f2])).

fof(f16,plain,(
    ! [X2,X0,X3,X1] : k2_xboole_0(k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)),k1_tarski(X3)) = k2_enumset1(X0,X1,X2,X3) ),
    inference(definition_unfolding,[],[f12,f11])).

fof(f17,plain,(
    k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)),k1_tarski(sK3)),k2_tarski(sK4,sK5)) != k2_xboole_0(k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)),k2_xboole_0(k1_tarski(sK3),k2_tarski(sK4,sK5))) ),
    inference(definition_unfolding,[],[f14,f15,f16])).

cnf(c_0,plain,
    ( k2_xboole_0(k2_xboole_0(X0,X1),X2) = k2_xboole_0(X0,k2_xboole_0(X1,X2)) ),
    inference(cnf_transformation,[],[f13])).

cnf(c_9,plain,
    ( k2_xboole_0(k2_xboole_0(X0_37,X1_37),X2_37) = k2_xboole_0(X0_37,k2_xboole_0(X1_37,X2_37)) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_1,negated_conjecture,
    ( k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)),k1_tarski(sK3)),k2_tarski(sK4,sK5)) != k2_xboole_0(k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)),k2_xboole_0(k1_tarski(sK3),k2_tarski(sK4,sK5))) ),
    inference(cnf_transformation,[],[f17])).

cnf(c_8,negated_conjecture,
    ( k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)),k1_tarski(sK3)),k2_tarski(sK4,sK5)) != k2_xboole_0(k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)),k2_xboole_0(k1_tarski(sK3),k2_tarski(sK4,sK5))) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_16,plain,
    ( k2_xboole_0(k2_xboole_0(k1_tarski(sK0),k2_xboole_0(k2_tarski(sK1,sK2),k1_tarski(sK3))),k2_tarski(sK4,sK5)) != k2_xboole_0(k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)),k2_xboole_0(k1_tarski(sK3),k2_tarski(sK4,sK5))) ),
    inference(demodulation,[status(thm)],[c_9,c_8])).

cnf(c_17,plain,
    ( k2_xboole_0(k1_tarski(sK0),k2_xboole_0(k2_xboole_0(k2_tarski(sK1,sK2),k1_tarski(sK3)),k2_tarski(sK4,sK5))) != k2_xboole_0(k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)),k2_xboole_0(k1_tarski(sK3),k2_tarski(sK4,sK5))) ),
    inference(superposition,[status(thm)],[c_9,c_16])).

cnf(c_18,plain,
    ( k2_xboole_0(k1_tarski(sK0),k2_xboole_0(k2_tarski(sK1,sK2),k2_xboole_0(k1_tarski(sK3),k2_tarski(sK4,sK5)))) != k2_xboole_0(k1_tarski(sK0),k2_xboole_0(k2_xboole_0(k2_tarski(sK1,sK2),k1_tarski(sK3)),k2_tarski(sK4,sK5))) ),
    inference(superposition,[status(thm)],[c_9,c_17])).

cnf(c_19,plain,
    ( $false ),
    inference(superposition,[status(thm)],[c_9,c_18])).


%------------------------------------------------------------------------------
