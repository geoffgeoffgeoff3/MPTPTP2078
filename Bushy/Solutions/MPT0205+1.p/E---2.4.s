%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : enumset1__t131_enumset1.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n030.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:35:57 EDT 2019

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   28 ( 134 expanded)
%              Number of clauses        :   15 (  57 expanded)
%              Number of leaves         :    6 (  38 expanded)
%              Depth                    :    7
%              Number of atoms          :   28 ( 134 expanded)
%              Number of equality atoms :   27 ( 133 expanded)
%              Maximal formula depth    :   11 (   4 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    4 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t131_enumset1,conjecture,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8,X9] : k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_enumset1(X6,X7,X8,X9)) ),
    file('/export/starexec/sandbox2/benchmark/enumset1__t131_enumset1.p',t131_enumset1)).

fof(l142_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8,X9] : k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k3_enumset1(X5,X6,X7,X8,X9)) ),
    file('/export/starexec/sandbox2/benchmark/enumset1__t131_enumset1.p',l142_enumset1)).

fof(t47_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5)) ),
    file('/export/starexec/sandbox2/benchmark/enumset1__t131_enumset1.p',t47_enumset1)).

fof(t50_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    file('/export/starexec/sandbox2/benchmark/enumset1__t131_enumset1.p',t50_enumset1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/enumset1__t131_enumset1.p',commutativity_k2_xboole_0)).

fof(t4_xboole_1,axiom,(
    ! [X1,X2,X3] : k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/enumset1__t131_enumset1.p',t4_xboole_1)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5,X6,X7,X8,X9] : k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_enumset1(X6,X7,X8,X9)) ),
    inference(assume_negation,[status(cth)],[t131_enumset1])).

fof(c_0_7,plain,(
    ! [X22,X23,X24,X25,X26,X27,X28,X29,X30] : k7_enumset1(X22,X23,X24,X25,X26,X27,X28,X29,X30) = k2_xboole_0(k2_enumset1(X22,X23,X24,X25),k3_enumset1(X26,X27,X28,X29,X30)) ),
    inference(variable_rename,[status(thm)],[l142_enumset1])).

fof(c_0_8,plain,(
    ! [X31,X32,X33,X34,X35] : k3_enumset1(X31,X32,X33,X34,X35) = k2_xboole_0(k1_tarski(X31),k2_enumset1(X32,X33,X34,X35)) ),
    inference(variable_rename,[status(thm)],[t47_enumset1])).

fof(c_0_9,negated_conjecture,(
    k7_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0) != k2_xboole_0(k3_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k2_enumset1(esk6_0,esk7_0,esk8_0,esk9_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

cnf(c_0_10,plain,
    ( k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k3_enumset1(X5,X6,X7,X8,X9)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_12,plain,(
    ! [X39,X40,X41,X42,X43] : k3_enumset1(X39,X40,X41,X42,X43) = k2_xboole_0(k2_enumset1(X39,X40,X41,X42),k1_tarski(X43)) ),
    inference(variable_rename,[status(thm)],[t50_enumset1])).

cnf(c_0_13,negated_conjecture,
    ( k7_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0) != k2_xboole_0(k3_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0),k2_enumset1(esk6_0,esk7_0,esk8_0,esk9_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_xboole_0(k1_tarski(X5),k2_enumset1(X6,X7,X8,X9))) ),
    inference(rw,[status(thm)],[c_0_10,c_0_11])).

fof(c_0_15,plain,(
    ! [X19,X20] : k2_xboole_0(X19,X20) = k2_xboole_0(X20,X19) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

fof(c_0_16,plain,(
    ! [X36,X37,X38] : k2_xboole_0(k2_xboole_0(X36,X37),X38) = k2_xboole_0(X36,k2_xboole_0(X37,X38)) ),
    inference(variable_rename,[status(thm)],[t4_xboole_1])).

cnf(c_0_17,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,negated_conjecture,
    ( k2_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k2_xboole_0(k1_tarski(esk5_0),k2_enumset1(esk6_0,esk7_0,esk8_0,esk9_0))) != k2_xboole_0(k2_xboole_0(k1_tarski(esk1_0),k2_enumset1(esk2_0,esk3_0,esk4_0,esk5_0)),k2_enumset1(esk6_0,esk7_0,esk8_0,esk9_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_13,c_0_11]),c_0_14])).

cnf(c_0_19,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,plain,
    ( k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,plain,
    ( k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5)) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    inference(rw,[status(thm)],[c_0_17,c_0_11])).

cnf(c_0_22,negated_conjecture,
    ( k2_xboole_0(k2_enumset1(esk6_0,esk7_0,esk8_0,esk9_0),k2_xboole_0(k1_tarski(esk1_0),k2_enumset1(esk2_0,esk3_0,esk4_0,esk5_0))) != k2_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k2_xboole_0(k1_tarski(esk5_0),k2_enumset1(esk6_0,esk7_0,esk8_0,esk9_0))) ),
    inference(rw,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_23,plain,
    ( k2_xboole_0(X1,k2_xboole_0(X2,X3)) = k2_xboole_0(X3,k2_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_24,plain,
    ( k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_xboole_0(k1_tarski(X5),X6)) = k2_xboole_0(k1_tarski(X1),k2_xboole_0(k2_enumset1(X2,X3,X4,X5),X6)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_20,c_0_21]),c_0_20])).

cnf(c_0_25,negated_conjecture,
    ( k2_xboole_0(k1_tarski(esk5_0),k2_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k2_enumset1(esk6_0,esk7_0,esk8_0,esk9_0))) != k2_xboole_0(k1_tarski(esk1_0),k2_xboole_0(k2_enumset1(esk2_0,esk3_0,esk4_0,esk5_0),k2_enumset1(esk6_0,esk7_0,esk8_0,esk9_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22,c_0_23]),c_0_23]),c_0_19])).

cnf(c_0_26,plain,
    ( k2_xboole_0(k1_tarski(X1),k2_xboole_0(k2_enumset1(X2,X3,X4,X5),X6)) = k2_xboole_0(k1_tarski(X5),k2_xboole_0(X6,k2_enumset1(X1,X2,X3,X4))) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_24]),c_0_20])).

cnf(c_0_27,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25,c_0_26]),c_0_19]),c_0_26]),c_0_19]),c_0_26]),c_0_19]),c_0_26]),c_0_19])]),
    [proof]).
%------------------------------------------------------------------------------
