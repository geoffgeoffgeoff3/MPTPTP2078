%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : enumset1__t50_enumset1.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n026.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:36:00 EDT 2019

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   24 (  24 expanded)
%              Number of clauses        :   11 (  11 expanded)
%              Number of leaves         :    6 (   6 expanded)
%              Depth                    :    5
%              Number of atoms          :   24 (  24 expanded)
%              Number of equality atoms :   23 (  23 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    4 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t50_enumset1,conjecture,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t50_enumset1.p',t50_enumset1)).

fof(l57_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_enumset1(X1,X2,X3),k2_tarski(X4,X5)) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t50_enumset1.p',l57_enumset1)).

fof(t41_enumset1,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t50_enumset1.p',t41_enumset1)).

fof(t46_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t50_enumset1.p',t46_enumset1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t50_enumset1.p',commutativity_k2_xboole_0)).

fof(t4_xboole_1,axiom,(
    ! [X1,X2,X3] : k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/enumset1__t50_enumset1.p',t4_xboole_1)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    inference(assume_negation,[status(cth)],[t50_enumset1])).

fof(c_0_7,plain,(
    ! [X16,X17,X18,X19,X20] : k3_enumset1(X16,X17,X18,X19,X20) = k2_xboole_0(k1_enumset1(X16,X17,X18),k2_tarski(X19,X20)) ),
    inference(variable_rename,[status(thm)],[l57_enumset1])).

fof(c_0_8,plain,(
    ! [X21,X22] : k2_tarski(X21,X22) = k2_xboole_0(k1_tarski(X21),k1_tarski(X22)) ),
    inference(variable_rename,[status(thm)],[t41_enumset1])).

fof(c_0_9,negated_conjecture,(
    k3_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != k2_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k1_tarski(esk5_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

fof(c_0_10,plain,(
    ! [X23,X24,X25,X26] : k2_enumset1(X23,X24,X25,X26) = k2_xboole_0(k1_enumset1(X23,X24,X25),k1_tarski(X26)) ),
    inference(variable_rename,[status(thm)],[t46_enumset1])).

cnf(c_0_11,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_enumset1(X1,X2,X3),k2_tarski(X4,X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_13,plain,(
    ! [X13,X14] : k2_xboole_0(X13,X14) = k2_xboole_0(X14,X13) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

fof(c_0_14,plain,(
    ! [X27,X28,X29] : k2_xboole_0(k2_xboole_0(X27,X28),X29) = k2_xboole_0(X27,k2_xboole_0(X28,X29)) ),
    inference(variable_rename,[status(thm)],[t4_xboole_1])).

cnf(c_0_15,negated_conjecture,
    ( k3_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0) != k2_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k1_tarski(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_16,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_enumset1(X1,X2,X3),k2_xboole_0(k1_tarski(X4),k1_tarski(X5))) ),
    inference(rw,[status(thm)],[c_0_11,c_0_12])).

cnf(c_0_18,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_19,plain,
    ( k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( k2_xboole_0(k1_enumset1(esk1_0,esk2_0,esk3_0),k2_xboole_0(k1_tarski(esk4_0),k1_tarski(esk5_0))) != k2_xboole_0(k2_xboole_0(k1_enumset1(esk1_0,esk2_0,esk3_0),k1_tarski(esk4_0)),k1_tarski(esk5_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_15,c_0_16]),c_0_17])).

cnf(c_0_21,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    c_0_18).

cnf(c_0_22,plain,
    ( k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    c_0_19).

cnf(c_0_23,negated_conjecture,
    ( $false ),
    inference(ar,[status(thm)],[c_0_20,c_0_21,c_0_22]),
    [proof]).
%------------------------------------------------------------------------------
