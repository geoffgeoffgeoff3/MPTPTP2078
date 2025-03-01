%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:35:09 EST 2020

% Result     : Theorem 2.62s
% Output     : CNFRefutation 2.62s
% Verified   : 
% Statistics : Number of formulae       :   69 (1156 expanded)
%              Number of clauses        :   42 ( 519 expanded)
%              Number of leaves         :   13 ( 318 expanded)
%              Depth                    :   10
%              Number of atoms          :   69 (1156 expanded)
%              Number of equality atoms :   68 (1155 expanded)
%              Maximal formula depth    :    8 (   2 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    8 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t41_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_xboole_1)).

fof(idempotence_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(t41_enumset1,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_enumset1)).

fof(t42_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t42_xboole_1)).

fof(t47_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t47_enumset1)).

fof(t42_enumset1,axiom,(
    ! [X1,X2,X3] : k1_enumset1(X1,X2,X3) = k2_xboole_0(k1_tarski(X1),k2_tarski(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t42_enumset1)).

fof(t54_enumset1,conjecture,(
    ! [X1,X2,X3,X4,X5,X6] : k4_enumset1(X1,X2,X3,X4,X5,X6) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_tarski(X5,X6)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t54_enumset1)).

fof(t51_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k4_enumset1(X1,X2,X3,X4,X5,X6) = k2_xboole_0(k1_tarski(X1),k3_enumset1(X2,X3,X4,X5,X6)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t51_enumset1)).

fof(t44_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_enumset1)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t91_xboole_1)).

fof(t50_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t50_enumset1)).

fof(c_0_13,plain,(
    ! [X10,X11,X12] : k4_xboole_0(k4_xboole_0(X10,X11),X12) = k4_xboole_0(X10,k2_xboole_0(X11,X12)) ),
    inference(variable_rename,[status(thm)],[t41_xboole_1])).

fof(c_0_14,plain,(
    ! [X19,X20] : k2_xboole_0(X19,X20) = k5_xboole_0(X19,k4_xboole_0(X20,X19)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_15,plain,(
    ! [X9] : k2_xboole_0(X9,X9) = X9 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).

cnf(c_0_16,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_17,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_18,plain,
    ( k2_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_19,plain,(
    ! [X7,X8] : k2_xboole_0(X7,X8) = k2_xboole_0(X8,X7) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

fof(c_0_20,plain,(
    ! [X21,X22] : k2_tarski(X21,X22) = k2_xboole_0(k1_tarski(X21),k1_tarski(X22)) ),
    inference(variable_rename,[status(thm)],[t41_enumset1])).

fof(c_0_21,plain,(
    ! [X13,X14,X15] : k4_xboole_0(k2_xboole_0(X13,X14),X15) = k2_xboole_0(k4_xboole_0(X13,X15),k4_xboole_0(X14,X15)) ),
    inference(variable_rename,[status(thm)],[t42_xboole_1])).

cnf(c_0_22,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k5_xboole_0(X2,k4_xboole_0(X3,X2))) ),
    inference(rw,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_23,plain,
    ( k5_xboole_0(X1,k4_xboole_0(X1,X1)) = X1 ),
    inference(rw,[status(thm)],[c_0_18,c_0_17])).

fof(c_0_24,plain,(
    ! [X30,X31,X32,X33,X34] : k3_enumset1(X30,X31,X32,X33,X34) = k2_xboole_0(k1_tarski(X30),k2_enumset1(X31,X32,X33,X34)) ),
    inference(variable_rename,[status(thm)],[t47_enumset1])).

cnf(c_0_25,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_26,plain,(
    ! [X23,X24,X25] : k1_enumset1(X23,X24,X25) = k2_xboole_0(k1_tarski(X23),k2_tarski(X24,X25)) ),
    inference(variable_rename,[status(thm)],[t42_enumset1])).

cnf(c_0_27,plain,
    ( k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    inference(spm,[status(thm)],[c_0_22,c_0_23])).

fof(c_0_30,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5,X6] : k4_enumset1(X1,X2,X3,X4,X5,X6) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_tarski(X5,X6)) ),
    inference(assume_negation,[status(cth)],[t54_enumset1])).

fof(c_0_31,plain,(
    ! [X40,X41,X42,X43,X44,X45] : k4_enumset1(X40,X41,X42,X43,X44,X45) = k2_xboole_0(k1_tarski(X40),k3_enumset1(X41,X42,X43,X44,X45)) ),
    inference(variable_rename,[status(thm)],[t51_enumset1])).

cnf(c_0_32,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_33,plain,
    ( k5_xboole_0(X1,k4_xboole_0(X2,X1)) = k5_xboole_0(X2,k4_xboole_0(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25,c_0_17]),c_0_17])).

fof(c_0_34,plain,(
    ! [X26,X27,X28,X29] : k2_enumset1(X26,X27,X28,X29) = k2_xboole_0(k1_tarski(X26),k1_enumset1(X27,X28,X29)) ),
    inference(variable_rename,[status(thm)],[t44_enumset1])).

cnf(c_0_35,plain,
    ( k1_enumset1(X1,X2,X3) = k2_xboole_0(k1_tarski(X1),k2_tarski(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_36,plain,
    ( k2_tarski(X1,X2) = k5_xboole_0(k1_tarski(X1),k4_xboole_0(k1_tarski(X2),k1_tarski(X1))) ),
    inference(rw,[status(thm)],[c_0_27,c_0_17])).

fof(c_0_37,plain,(
    ! [X16,X17,X18] : k5_xboole_0(k5_xboole_0(X16,X17),X18) = k5_xboole_0(X16,k5_xboole_0(X17,X18)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

cnf(c_0_38,plain,
    ( k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X2,X1)),X3) = k5_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(k4_xboole_0(X2,X3),k4_xboole_0(X1,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28,c_0_17]),c_0_17])).

cnf(c_0_39,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X3,X2)) = k4_xboole_0(k4_xboole_0(X1,X2),X3) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_29]),c_0_22])).

fof(c_0_40,negated_conjecture,(
    k4_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0) != k2_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k2_tarski(esk5_0,esk6_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_30])])])).

cnf(c_0_41,plain,
    ( k4_enumset1(X1,X2,X3,X4,X5,X6) = k2_xboole_0(k1_tarski(X1),k3_enumset1(X2,X3,X4,X5,X6)) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_42,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k5_xboole_0(k1_tarski(X1),k4_xboole_0(k2_enumset1(X2,X3,X4,X5),k1_tarski(X1))) ),
    inference(rw,[status(thm)],[c_0_32,c_0_17])).

fof(c_0_43,plain,(
    ! [X35,X36,X37,X38,X39] : k3_enumset1(X35,X36,X37,X38,X39) = k2_xboole_0(k2_enumset1(X35,X36,X37,X38),k1_tarski(X39)) ),
    inference(variable_rename,[status(thm)],[t50_enumset1])).

cnf(c_0_44,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(k4_xboole_0(X1,X3),X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_33]),c_0_22])).

cnf(c_0_45,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_46,plain,
    ( k1_enumset1(X1,X2,X3) = k5_xboole_0(k1_tarski(X1),k4_xboole_0(k5_xboole_0(k1_tarski(X2),k4_xboole_0(k1_tarski(X3),k1_tarski(X2))),k1_tarski(X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_17]),c_0_36])).

cnf(c_0_47,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_48,plain,
    ( k5_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(k4_xboole_0(X3,X2),X1)) = k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X3,X1)),X2) ),
    inference(rw,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_49,negated_conjecture,
    ( k4_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0) != k2_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k2_tarski(esk5_0,esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_50,plain,
    ( k4_enumset1(X1,X2,X3,X4,X5,X6) = k5_xboole_0(k1_tarski(X1),k4_xboole_0(k5_xboole_0(k1_tarski(X2),k4_xboole_0(k2_enumset1(X3,X4,X5,X6),k1_tarski(X2))),k1_tarski(X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_17]),c_0_42])).

cnf(c_0_51,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_52,plain,
    ( k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,X2),X3),X2) = k4_xboole_0(k4_xboole_0(X1,X2),X3) ),
    inference(spm,[status(thm)],[c_0_29,c_0_44])).

cnf(c_0_53,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k5_xboole_0(k1_tarski(X1),k4_xboole_0(k5_xboole_0(k1_tarski(X2),k4_xboole_0(k5_xboole_0(k1_tarski(X3),k4_xboole_0(k1_tarski(X4),k1_tarski(X3))),k1_tarski(X2))),k1_tarski(X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45,c_0_17]),c_0_46])).

cnf(c_0_54,plain,
    ( k5_xboole_0(X1,k4_xboole_0(k5_xboole_0(X2,X3),X1)) = k5_xboole_0(X2,k5_xboole_0(X3,k4_xboole_0(X1,k5_xboole_0(X2,X3)))) ),
    inference(spm,[status(thm)],[c_0_47,c_0_33])).

cnf(c_0_55,plain,
    ( k5_xboole_0(X1,k4_xboole_0(k5_xboole_0(X2,k4_xboole_0(X3,X2)),X1)) = k5_xboole_0(X2,k4_xboole_0(k5_xboole_0(X3,k4_xboole_0(X1,X3)),X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_22]),c_0_47]),c_0_48])).

cnf(c_0_56,negated_conjecture,
    ( k5_xboole_0(k1_tarski(esk1_0),k4_xboole_0(k5_xboole_0(k1_tarski(esk2_0),k4_xboole_0(k2_enumset1(esk3_0,esk4_0,esk5_0,esk6_0),k1_tarski(esk2_0))),k1_tarski(esk1_0))) != k5_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k4_xboole_0(k5_xboole_0(k1_tarski(esk5_0),k4_xboole_0(k1_tarski(esk6_0),k1_tarski(esk5_0))),k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_49,c_0_17]),c_0_36]),c_0_50])).

cnf(c_0_57,plain,
    ( k5_xboole_0(k1_tarski(X1),k4_xboole_0(k2_enumset1(X2,X3,X4,X5),k1_tarski(X1))) = k5_xboole_0(k2_enumset1(X1,X2,X3,X4),k4_xboole_0(k1_tarski(X5),k2_enumset1(X1,X2,X3,X4))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_51,c_0_17]),c_0_42])).

cnf(c_0_58,plain,
    ( k5_xboole_0(X1,k5_xboole_0(k4_xboole_0(X2,X1),X3)) = k5_xboole_0(X2,k5_xboole_0(k4_xboole_0(X1,X2),X3)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_33]),c_0_47])).

cnf(c_0_59,plain,
    ( k5_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(k4_xboole_0(X3,X1),X2)) = k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X3,X1)),X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_52]),c_0_29])).

cnf(c_0_60,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X2,X4,X3) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_33]),c_0_53])).

cnf(c_0_61,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X4,X2,X3) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_54]),c_0_22]),c_0_48]),c_0_53])).

cnf(c_0_62,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X3,X4,X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_55]),c_0_22]),c_0_47]),c_0_48]),c_0_53])).

cnf(c_0_63,negated_conjecture,
    ( k5_xboole_0(k1_tarski(esk6_0),k4_xboole_0(k5_xboole_0(k1_tarski(esk1_0),k4_xboole_0(k2_enumset1(esk2_0,esk3_0,esk4_0,esk5_0),k1_tarski(esk1_0))),k1_tarski(esk6_0))) != k5_xboole_0(k1_tarski(esk1_0),k4_xboole_0(k5_xboole_0(k1_tarski(esk2_0),k4_xboole_0(k2_enumset1(esk3_0,esk4_0,esk5_0,esk6_0),k1_tarski(esk2_0))),k1_tarski(esk1_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56,c_0_55]),c_0_57])).

cnf(c_0_64,plain,
    ( k5_xboole_0(X1,k4_xboole_0(k5_xboole_0(X2,k4_xboole_0(X3,X2)),X1)) = k5_xboole_0(X2,k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X3,X1)),X2)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_48]),c_0_59])).

cnf(c_0_65,plain,
    ( k5_xboole_0(k1_tarski(X1),k4_xboole_0(k2_enumset1(X2,X3,X4,X5),k1_tarski(X1))) = k5_xboole_0(k1_tarski(X5),k4_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5))) ),
    inference(spm,[status(thm)],[c_0_33,c_0_57])).

cnf(c_0_66,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X3,X2,X4) ),
    inference(spm,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_67,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X2,X3,X1,X4) ),
    inference(spm,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_68,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63,c_0_64]),c_0_65]),c_0_62]),c_0_60]),c_0_66]),c_0_67]),c_0_66]),c_0_65]),c_0_60])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n023.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 11:37:06 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 2.62/2.80  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 2.62/2.80  # and selection function PSelectComplexExceptUniqMaxHorn.
% 2.62/2.80  #
% 2.62/2.80  # Preprocessing time       : 0.026 s
% 2.62/2.80  # Presaturation interreduction done
% 2.62/2.80  
% 2.62/2.80  # Proof found!
% 2.62/2.80  # SZS status Theorem
% 2.62/2.80  # SZS output start CNFRefutation
% 2.62/2.80  fof(t41_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_xboole_1)).
% 2.62/2.80  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t98_xboole_1)).
% 2.62/2.80  fof(idempotence_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', idempotence_k2_xboole_0)).
% 2.62/2.80  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 2.62/2.80  fof(t41_enumset1, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_enumset1)).
% 2.62/2.80  fof(t42_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k2_xboole_0(X1,X2),X3)=k2_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t42_xboole_1)).
% 2.62/2.80  fof(t47_enumset1, axiom, ![X1, X2, X3, X4, X5]:k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t47_enumset1)).
% 2.62/2.80  fof(t42_enumset1, axiom, ![X1, X2, X3]:k1_enumset1(X1,X2,X3)=k2_xboole_0(k1_tarski(X1),k2_tarski(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t42_enumset1)).
% 2.62/2.80  fof(t54_enumset1, conjecture, ![X1, X2, X3, X4, X5, X6]:k4_enumset1(X1,X2,X3,X4,X5,X6)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_tarski(X5,X6)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t54_enumset1)).
% 2.62/2.80  fof(t51_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k4_enumset1(X1,X2,X3,X4,X5,X6)=k2_xboole_0(k1_tarski(X1),k3_enumset1(X2,X3,X4,X5,X6)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t51_enumset1)).
% 2.62/2.80  fof(t44_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t44_enumset1)).
% 2.62/2.80  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t91_xboole_1)).
% 2.62/2.80  fof(t50_enumset1, axiom, ![X1, X2, X3, X4, X5]:k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t50_enumset1)).
% 2.62/2.80  fof(c_0_13, plain, ![X10, X11, X12]:k4_xboole_0(k4_xboole_0(X10,X11),X12)=k4_xboole_0(X10,k2_xboole_0(X11,X12)), inference(variable_rename,[status(thm)],[t41_xboole_1])).
% 2.62/2.80  fof(c_0_14, plain, ![X19, X20]:k2_xboole_0(X19,X20)=k5_xboole_0(X19,k4_xboole_0(X20,X19)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 2.62/2.80  fof(c_0_15, plain, ![X9]:k2_xboole_0(X9,X9)=X9, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).
% 2.62/2.80  cnf(c_0_16, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 2.62/2.80  cnf(c_0_17, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 2.62/2.80  cnf(c_0_18, plain, (k2_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_15])).
% 2.62/2.80  fof(c_0_19, plain, ![X7, X8]:k2_xboole_0(X7,X8)=k2_xboole_0(X8,X7), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 2.62/2.80  fof(c_0_20, plain, ![X21, X22]:k2_tarski(X21,X22)=k2_xboole_0(k1_tarski(X21),k1_tarski(X22)), inference(variable_rename,[status(thm)],[t41_enumset1])).
% 2.62/2.80  fof(c_0_21, plain, ![X13, X14, X15]:k4_xboole_0(k2_xboole_0(X13,X14),X15)=k2_xboole_0(k4_xboole_0(X13,X15),k4_xboole_0(X14,X15)), inference(variable_rename,[status(thm)],[t42_xboole_1])).
% 2.62/2.80  cnf(c_0_22, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k5_xboole_0(X2,k4_xboole_0(X3,X2)))), inference(rw,[status(thm)],[c_0_16, c_0_17])).
% 2.62/2.80  cnf(c_0_23, plain, (k5_xboole_0(X1,k4_xboole_0(X1,X1))=X1), inference(rw,[status(thm)],[c_0_18, c_0_17])).
% 2.62/2.80  fof(c_0_24, plain, ![X30, X31, X32, X33, X34]:k3_enumset1(X30,X31,X32,X33,X34)=k2_xboole_0(k1_tarski(X30),k2_enumset1(X31,X32,X33,X34)), inference(variable_rename,[status(thm)],[t47_enumset1])).
% 2.62/2.80  cnf(c_0_25, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 2.62/2.80  fof(c_0_26, plain, ![X23, X24, X25]:k1_enumset1(X23,X24,X25)=k2_xboole_0(k1_tarski(X23),k2_tarski(X24,X25)), inference(variable_rename,[status(thm)],[t42_enumset1])).
% 2.62/2.80  cnf(c_0_27, plain, (k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 2.62/2.80  cnf(c_0_28, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X3)=k2_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 2.62/2.80  cnf(c_0_29, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2)), inference(spm,[status(thm)],[c_0_22, c_0_23])).
% 2.62/2.80  fof(c_0_30, negated_conjecture, ~(![X1, X2, X3, X4, X5, X6]:k4_enumset1(X1,X2,X3,X4,X5,X6)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_tarski(X5,X6))), inference(assume_negation,[status(cth)],[t54_enumset1])).
% 2.62/2.80  fof(c_0_31, plain, ![X40, X41, X42, X43, X44, X45]:k4_enumset1(X40,X41,X42,X43,X44,X45)=k2_xboole_0(k1_tarski(X40),k3_enumset1(X41,X42,X43,X44,X45)), inference(variable_rename,[status(thm)],[t51_enumset1])).
% 2.62/2.80  cnf(c_0_32, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 2.62/2.80  cnf(c_0_33, plain, (k5_xboole_0(X1,k4_xboole_0(X2,X1))=k5_xboole_0(X2,k4_xboole_0(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25, c_0_17]), c_0_17])).
% 2.62/2.80  fof(c_0_34, plain, ![X26, X27, X28, X29]:k2_enumset1(X26,X27,X28,X29)=k2_xboole_0(k1_tarski(X26),k1_enumset1(X27,X28,X29)), inference(variable_rename,[status(thm)],[t44_enumset1])).
% 2.62/2.80  cnf(c_0_35, plain, (k1_enumset1(X1,X2,X3)=k2_xboole_0(k1_tarski(X1),k2_tarski(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 2.62/2.80  cnf(c_0_36, plain, (k2_tarski(X1,X2)=k5_xboole_0(k1_tarski(X1),k4_xboole_0(k1_tarski(X2),k1_tarski(X1)))), inference(rw,[status(thm)],[c_0_27, c_0_17])).
% 2.62/2.80  fof(c_0_37, plain, ![X16, X17, X18]:k5_xboole_0(k5_xboole_0(X16,X17),X18)=k5_xboole_0(X16,k5_xboole_0(X17,X18)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 2.62/2.80  cnf(c_0_38, plain, (k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X2,X1)),X3)=k5_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(k4_xboole_0(X2,X3),k4_xboole_0(X1,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28, c_0_17]), c_0_17])).
% 2.62/2.80  cnf(c_0_39, plain, (k4_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(X3,X2))=k4_xboole_0(k4_xboole_0(X1,X2),X3)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_29]), c_0_22])).
% 2.62/2.80  fof(c_0_40, negated_conjecture, k4_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0)!=k2_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k2_tarski(esk5_0,esk6_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_30])])])).
% 2.62/2.80  cnf(c_0_41, plain, (k4_enumset1(X1,X2,X3,X4,X5,X6)=k2_xboole_0(k1_tarski(X1),k3_enumset1(X2,X3,X4,X5,X6))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 2.62/2.80  cnf(c_0_42, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k5_xboole_0(k1_tarski(X1),k4_xboole_0(k2_enumset1(X2,X3,X4,X5),k1_tarski(X1)))), inference(rw,[status(thm)],[c_0_32, c_0_17])).
% 2.62/2.80  fof(c_0_43, plain, ![X35, X36, X37, X38, X39]:k3_enumset1(X35,X36,X37,X38,X39)=k2_xboole_0(k2_enumset1(X35,X36,X37,X38),k1_tarski(X39)), inference(variable_rename,[status(thm)],[t50_enumset1])).
% 2.62/2.80  cnf(c_0_44, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(k4_xboole_0(X1,X3),X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_33]), c_0_22])).
% 2.62/2.80  cnf(c_0_45, plain, (k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 2.62/2.80  cnf(c_0_46, plain, (k1_enumset1(X1,X2,X3)=k5_xboole_0(k1_tarski(X1),k4_xboole_0(k5_xboole_0(k1_tarski(X2),k4_xboole_0(k1_tarski(X3),k1_tarski(X2))),k1_tarski(X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_17]), c_0_36])).
% 2.62/2.80  cnf(c_0_47, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 2.62/2.80  cnf(c_0_48, plain, (k5_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(k4_xboole_0(X3,X2),X1))=k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X3,X1)),X2)), inference(rw,[status(thm)],[c_0_38, c_0_39])).
% 2.62/2.80  cnf(c_0_49, negated_conjecture, (k4_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0)!=k2_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k2_tarski(esk5_0,esk6_0))), inference(split_conjunct,[status(thm)],[c_0_40])).
% 2.62/2.80  cnf(c_0_50, plain, (k4_enumset1(X1,X2,X3,X4,X5,X6)=k5_xboole_0(k1_tarski(X1),k4_xboole_0(k5_xboole_0(k1_tarski(X2),k4_xboole_0(k2_enumset1(X3,X4,X5,X6),k1_tarski(X2))),k1_tarski(X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_17]), c_0_42])).
% 2.62/2.80  cnf(c_0_51, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5))), inference(split_conjunct,[status(thm)],[c_0_43])).
% 2.62/2.80  cnf(c_0_52, plain, (k4_xboole_0(k4_xboole_0(k4_xboole_0(X1,X2),X3),X2)=k4_xboole_0(k4_xboole_0(X1,X2),X3)), inference(spm,[status(thm)],[c_0_29, c_0_44])).
% 2.62/2.80  cnf(c_0_53, plain, (k2_enumset1(X1,X2,X3,X4)=k5_xboole_0(k1_tarski(X1),k4_xboole_0(k5_xboole_0(k1_tarski(X2),k4_xboole_0(k5_xboole_0(k1_tarski(X3),k4_xboole_0(k1_tarski(X4),k1_tarski(X3))),k1_tarski(X2))),k1_tarski(X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45, c_0_17]), c_0_46])).
% 2.62/2.80  cnf(c_0_54, plain, (k5_xboole_0(X1,k4_xboole_0(k5_xboole_0(X2,X3),X1))=k5_xboole_0(X2,k5_xboole_0(X3,k4_xboole_0(X1,k5_xboole_0(X2,X3))))), inference(spm,[status(thm)],[c_0_47, c_0_33])).
% 2.62/2.80  cnf(c_0_55, plain, (k5_xboole_0(X1,k4_xboole_0(k5_xboole_0(X2,k4_xboole_0(X3,X2)),X1))=k5_xboole_0(X2,k4_xboole_0(k5_xboole_0(X3,k4_xboole_0(X1,X3)),X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_22]), c_0_47]), c_0_48])).
% 2.62/2.80  cnf(c_0_56, negated_conjecture, (k5_xboole_0(k1_tarski(esk1_0),k4_xboole_0(k5_xboole_0(k1_tarski(esk2_0),k4_xboole_0(k2_enumset1(esk3_0,esk4_0,esk5_0,esk6_0),k1_tarski(esk2_0))),k1_tarski(esk1_0)))!=k5_xboole_0(k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0),k4_xboole_0(k5_xboole_0(k1_tarski(esk5_0),k4_xboole_0(k1_tarski(esk6_0),k1_tarski(esk5_0))),k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_49, c_0_17]), c_0_36]), c_0_50])).
% 2.62/2.80  cnf(c_0_57, plain, (k5_xboole_0(k1_tarski(X1),k4_xboole_0(k2_enumset1(X2,X3,X4,X5),k1_tarski(X1)))=k5_xboole_0(k2_enumset1(X1,X2,X3,X4),k4_xboole_0(k1_tarski(X5),k2_enumset1(X1,X2,X3,X4)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_51, c_0_17]), c_0_42])).
% 2.62/2.80  cnf(c_0_58, plain, (k5_xboole_0(X1,k5_xboole_0(k4_xboole_0(X2,X1),X3))=k5_xboole_0(X2,k5_xboole_0(k4_xboole_0(X1,X2),X3))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_33]), c_0_47])).
% 2.62/2.80  cnf(c_0_59, plain, (k5_xboole_0(k4_xboole_0(X1,X2),k4_xboole_0(k4_xboole_0(X3,X1),X2))=k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X3,X1)),X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_52]), c_0_29])).
% 2.62/2.80  cnf(c_0_60, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X2,X4,X3)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_33]), c_0_53])).
% 2.62/2.80  cnf(c_0_61, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X4,X2,X3)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_54]), c_0_22]), c_0_48]), c_0_53])).
% 2.62/2.80  cnf(c_0_62, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X3,X4,X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_55]), c_0_22]), c_0_47]), c_0_48]), c_0_53])).
% 2.62/2.80  cnf(c_0_63, negated_conjecture, (k5_xboole_0(k1_tarski(esk6_0),k4_xboole_0(k5_xboole_0(k1_tarski(esk1_0),k4_xboole_0(k2_enumset1(esk2_0,esk3_0,esk4_0,esk5_0),k1_tarski(esk1_0))),k1_tarski(esk6_0)))!=k5_xboole_0(k1_tarski(esk1_0),k4_xboole_0(k5_xboole_0(k1_tarski(esk2_0),k4_xboole_0(k2_enumset1(esk3_0,esk4_0,esk5_0,esk6_0),k1_tarski(esk2_0))),k1_tarski(esk1_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56, c_0_55]), c_0_57])).
% 2.62/2.80  cnf(c_0_64, plain, (k5_xboole_0(X1,k4_xboole_0(k5_xboole_0(X2,k4_xboole_0(X3,X2)),X1))=k5_xboole_0(X2,k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X3,X1)),X2))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_48]), c_0_59])).
% 2.62/2.80  cnf(c_0_65, plain, (k5_xboole_0(k1_tarski(X1),k4_xboole_0(k2_enumset1(X2,X3,X4,X5),k1_tarski(X1)))=k5_xboole_0(k1_tarski(X5),k4_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)))), inference(spm,[status(thm)],[c_0_33, c_0_57])).
% 2.62/2.80  cnf(c_0_66, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X3,X2,X4)), inference(spm,[status(thm)],[c_0_60, c_0_61])).
% 2.62/2.80  cnf(c_0_67, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X2,X3,X1,X4)), inference(spm,[status(thm)],[c_0_61, c_0_62])).
% 2.62/2.80  cnf(c_0_68, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63, c_0_64]), c_0_65]), c_0_62]), c_0_60]), c_0_66]), c_0_67]), c_0_66]), c_0_65]), c_0_60])]), ['proof']).
% 2.62/2.80  # SZS output end CNFRefutation
% 2.62/2.80  # Proof object total steps             : 69
% 2.62/2.80  # Proof object clause steps            : 42
% 2.62/2.80  # Proof object formula steps           : 27
% 2.62/2.80  # Proof object conjectures             : 7
% 2.62/2.80  # Proof object clause conjectures      : 4
% 2.62/2.80  # Proof object formula conjectures     : 3
% 2.62/2.80  # Proof object initial clauses used    : 13
% 2.62/2.80  # Proof object initial formulas used   : 13
% 2.62/2.80  # Proof object generating inferences   : 15
% 2.62/2.80  # Proof object simplifying inferences  : 47
% 2.62/2.80  # Training examples: 0 positive, 0 negative
% 2.62/2.80  # Parsed axioms                        : 13
% 2.62/2.80  # Removed by relevancy pruning/SinE    : 0
% 2.62/2.80  # Initial clauses                      : 13
% 2.62/2.80  # Removed in clause preprocessing      : 5
% 2.62/2.80  # Initial clauses in saturation        : 8
% 2.62/2.80  # Processed clauses                    : 6804
% 2.62/2.80  # ...of these trivial                  : 261
% 2.62/2.80  # ...subsumed                          : 6064
% 2.62/2.80  # ...remaining for further processing  : 479
% 2.62/2.80  # Other redundant clauses eliminated   : 0
% 2.62/2.80  # Clauses deleted for lack of memory   : 0
% 2.62/2.80  # Backward-subsumed                    : 22
% 2.62/2.80  # Backward-rewritten                   : 37
% 2.62/2.80  # Generated clauses                    : 202457
% 2.62/2.80  # ...of the previous two non-trivial   : 176944
% 2.62/2.80  # Contextual simplify-reflections      : 0
% 2.62/2.80  # Paramodulations                      : 202457
% 2.62/2.80  # Factorizations                       : 0
% 2.62/2.80  # Equation resolutions                 : 0
% 2.62/2.80  # Propositional unsat checks           : 0
% 2.62/2.80  #    Propositional check models        : 0
% 2.62/2.80  #    Propositional check unsatisfiable : 0
% 2.62/2.80  #    Propositional clauses             : 0
% 2.62/2.80  #    Propositional clauses after purity: 0
% 2.62/2.80  #    Propositional unsat core size     : 0
% 2.62/2.80  #    Propositional preprocessing time  : 0.000
% 2.62/2.80  #    Propositional encoding time       : 0.000
% 2.62/2.80  #    Propositional solver time         : 0.000
% 2.62/2.80  #    Success case prop preproc time    : 0.000
% 2.62/2.80  #    Success case prop encoding time   : 0.000
% 2.62/2.80  #    Success case prop solver time     : 0.000
% 2.62/2.80  # Current number of processed clauses  : 412
% 2.62/2.80  #    Positive orientable unit clauses  : 253
% 2.62/2.80  #    Positive unorientable unit clauses: 159
% 2.62/2.80  #    Negative unit clauses             : 0
% 2.62/2.80  #    Non-unit-clauses                  : 0
% 2.62/2.80  # Current number of unprocessed clauses: 168286
% 2.62/2.80  # ...number of literals in the above   : 168286
% 2.62/2.80  # Current number of archived formulas  : 0
% 2.62/2.80  # Current number of archived clauses   : 72
% 2.62/2.80  # Clause-clause subsumption calls (NU) : 0
% 2.62/2.80  # Rec. Clause-clause subsumption calls : 0
% 2.62/2.80  # Non-unit clause-clause subsumptions  : 0
% 2.62/2.80  # Unit Clause-clause subsumption calls : 8664
% 2.62/2.80  # Rewrite failures with RHS unbound    : 0
% 2.62/2.80  # BW rewrite match attempts            : 18810
% 2.62/2.80  # BW rewrite match successes           : 2719
% 2.62/2.80  # Condensation attempts                : 0
% 2.62/2.80  # Condensation successes               : 0
% 2.62/2.80  # Termbank termtop insertions          : 4623929
% 2.62/2.82  
% 2.62/2.82  # -------------------------------------------------
% 2.62/2.82  # User time                : 2.358 s
% 2.62/2.82  # System time              : 0.118 s
% 2.62/2.82  # Total time               : 2.475 s
% 2.62/2.82  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
