%------------------------------------------------------------------------------
% File       : iProver---3.3
% Problem    : MPT0183+1.001 : TPTP v7.4.0. Released v7.4.0.
% Transform  : none
% Format     : tptp:raw
% Command    : iproveropt_run.sh %d %s

% Computer   : n031.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 08:42:40 EST 2020

% Result     : Theorem 0.71s
% Output     : CNFRefutation 0.71s
% Verified   : 
% Statistics : Number of formulae       :   23 (  27 expanded)
%              Number of clauses        :    9 (   9 expanded)
%              Number of leaves         :    5 (   7 expanded)
%              Depth                    :    9
%              Number of atoms          :   24 (  28 expanded)
%              Number of equality atoms :   23 (  27 expanded)
%              Maximal formula depth    :    6 (   3 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(f1,axiom,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f9,plain,(
    ! [X0,X1] : k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f1])).

fof(f3,axiom,(
    ! [X0,X1,X2] : k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2)) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f11,plain,(
    ! [X2,X0,X1] : k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2)) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f3])).

fof(f2,axiom,(
    ! [X0,X1,X2] : k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) = k1_enumset1(X0,X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f10,plain,(
    ! [X2,X0,X1] : k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) = k1_enumset1(X0,X1,X2) ),
    inference(cnf_transformation,[],[f2])).

fof(f13,plain,(
    ! [X2,X0,X1] : k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) = k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2)) ),
    inference(definition_unfolding,[],[f11,f10])).

fof(f4,conjecture,(
    ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',unknown)).

fof(f5,negated_conjecture,(
    ~ ! [X0,X1,X2] : k1_enumset1(X0,X1,X2) = k1_enumset1(X1,X2,X0) ),
    inference(negated_conjecture,[],[f4])).

fof(f6,plain,(
    ? [X0,X1,X2] : k1_enumset1(X0,X1,X2) != k1_enumset1(X1,X2,X0) ),
    inference(ennf_transformation,[],[f5])).

fof(f7,plain,
    ( ? [X0,X1,X2] : k1_enumset1(X0,X1,X2) != k1_enumset1(X1,X2,X0)
   => k1_enumset1(sK0,sK1,sK2) != k1_enumset1(sK1,sK2,sK0) ),
    introduced(choice_axiom,[])).

fof(f8,plain,(
    k1_enumset1(sK0,sK1,sK2) != k1_enumset1(sK1,sK2,sK0) ),
    inference(skolemisation,[status(esa),new_symbols(skolem,[sK0,sK1,sK2])],[f6,f7])).

fof(f12,plain,(
    k1_enumset1(sK0,sK1,sK2) != k1_enumset1(sK1,sK2,sK0) ),
    inference(cnf_transformation,[],[f8])).

fof(f14,plain,(
    k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)) != k2_xboole_0(k1_tarski(sK1),k2_tarski(sK2,sK0)) ),
    inference(definition_unfolding,[],[f12,f10,f10])).

cnf(c_0,plain,
    ( k2_xboole_0(X0,X1) = k2_xboole_0(X1,X0) ),
    inference(cnf_transformation,[],[f9])).

cnf(c_12,plain,
    ( k2_xboole_0(X0_35,X1_35) = k2_xboole_0(X1_35,X0_35) ),
    inference(subtyping,[status(esa)],[c_0])).

cnf(c_1,plain,
    ( k2_xboole_0(k2_tarski(X0,X1),k1_tarski(X2)) = k2_xboole_0(k1_tarski(X0),k2_tarski(X1,X2)) ),
    inference(cnf_transformation,[],[f13])).

cnf(c_11,plain,
    ( k2_xboole_0(k2_tarski(X0_36,X1_36),k1_tarski(X2_36)) = k2_xboole_0(k1_tarski(X0_36),k2_tarski(X1_36,X2_36)) ),
    inference(subtyping,[status(esa)],[c_1])).

cnf(c_18,plain,
    ( k2_xboole_0(k1_tarski(X0_36),k2_tarski(X1_36,X2_36)) = k2_xboole_0(k1_tarski(X2_36),k2_tarski(X0_36,X1_36)) ),
    inference(superposition,[status(thm)],[c_12,c_11])).

cnf(c_2,negated_conjecture,
    ( k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)) != k2_xboole_0(k1_tarski(sK1),k2_tarski(sK2,sK0)) ),
    inference(cnf_transformation,[],[f14])).

cnf(c_10,negated_conjecture,
    ( k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)) != k2_xboole_0(k1_tarski(sK1),k2_tarski(sK2,sK0)) ),
    inference(subtyping,[status(esa)],[c_2])).

cnf(c_22,plain,
    ( k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)) != k2_xboole_0(k1_tarski(sK0),k2_tarski(sK1,sK2)) ),
    inference(demodulation,[status(thm)],[c_18,c_10])).

cnf(c_36,plain,
    ( $false ),
    inference(equality_resolution_simp,[status(thm)],[c_22])).


%------------------------------------------------------------------------------
