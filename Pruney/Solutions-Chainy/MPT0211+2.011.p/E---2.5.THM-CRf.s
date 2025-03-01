%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:36:43 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 946 expanded)
%              Number of clauses        :   37 ( 359 expanded)
%              Number of leaves         :   18 ( 293 expanded)
%              Depth                    :    8
%              Number of atoms          :   74 ( 946 expanded)
%              Number of equality atoms :   73 ( 945 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t137_enumset1,conjecture,(
    ! [X1,X2,X3] : k2_xboole_0(k2_tarski(X2,X1),k2_tarski(X3,X1)) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t137_enumset1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t125_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X4,X3,X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t125_enumset1)).

fof(t46_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_enumset1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(l57_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_enumset1(X1,X2,X3),k2_tarski(X4,X5)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l57_enumset1)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t91_xboole_1)).

fof(commutativity_k5_xboole_0,axiom,(
    ! [X1,X2] : k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k5_xboole_0)).

fof(t131_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8,X9] : k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_enumset1(X6,X7,X8,X9)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t131_enumset1)).

fof(t48_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_tarski(X1,X2),k1_enumset1(X3,X4,X5)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_enumset1)).

fof(l53_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k2_tarski(X1,X2),k2_tarski(X3,X4)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l53_enumset1)).

fof(t107_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X4,X3,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t107_enumset1)).

fof(t104_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X3,X2,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t104_enumset1)).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1,X2,X3] : k2_xboole_0(k2_tarski(X2,X1),k2_tarski(X3,X1)) = k1_enumset1(X1,X2,X3) ),
    inference(assume_negation,[status(cth)],[t137_enumset1])).

fof(c_0_19,plain,(
    ! [X19,X20] : k2_xboole_0(X19,X20) = k5_xboole_0(X19,k4_xboole_0(X20,X19)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_20,plain,(
    ! [X14,X15] : k4_xboole_0(X14,X15) = k5_xboole_0(X14,k3_xboole_0(X14,X15)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_21,negated_conjecture,(
    k2_xboole_0(k2_tarski(esk2_0,esk1_0),k2_tarski(esk3_0,esk1_0)) != k1_enumset1(esk1_0,esk2_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).

fof(c_0_22,plain,(
    ! [X65,X66] : k1_enumset1(X65,X65,X66) = k2_tarski(X65,X66) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

cnf(c_0_23,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_24,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_25,plain,(
    ! [X67,X68,X69] : k2_enumset1(X67,X67,X68,X69) = k1_enumset1(X67,X68,X69) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_26,plain,(
    ! [X70,X71,X72,X73] : k3_enumset1(X70,X70,X71,X72,X73) = k2_enumset1(X70,X71,X72,X73) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

cnf(c_0_27,negated_conjecture,
    ( k2_xboole_0(k2_tarski(esk2_0,esk1_0),k2_tarski(esk3_0,esk1_0)) != k1_enumset1(esk1_0,esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_28,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_29,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))) ),
    inference(rw,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_30,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_31,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_32,plain,(
    ! [X10,X11] : k3_xboole_0(X10,X11) = k3_xboole_0(X11,X10) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

fof(c_0_33,plain,(
    ! [X42,X43,X44,X45] : k2_enumset1(X42,X43,X44,X45) = k2_enumset1(X45,X44,X43,X42) ),
    inference(variable_rename,[status(thm)],[t125_enumset1])).

fof(c_0_34,plain,(
    ! [X55,X56,X57,X58] : k2_enumset1(X55,X56,X57,X58) = k2_xboole_0(k1_enumset1(X55,X56,X57),k1_tarski(X58)) ),
    inference(variable_rename,[status(thm)],[t46_enumset1])).

fof(c_0_35,plain,(
    ! [X64] : k2_tarski(X64,X64) = k1_tarski(X64) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_36,plain,(
    ! [X25,X26,X27,X28,X29] : k3_enumset1(X25,X26,X27,X28,X29) = k2_xboole_0(k1_enumset1(X25,X26,X27),k2_tarski(X28,X29)) ),
    inference(variable_rename,[status(thm)],[l57_enumset1])).

cnf(c_0_37,negated_conjecture,
    ( k5_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk1_0),k5_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk1_0),k3_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk1_0),k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk1_0)))) != k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_28]),c_0_28]),c_0_29]),c_0_30]),c_0_30]),c_0_30]),c_0_30]),c_0_30]),c_0_31]),c_0_31]),c_0_31]),c_0_31]),c_0_31])).

cnf(c_0_38,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_39,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X4,X3,X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_40,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_41,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_42,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_enumset1(X1,X2,X3),k2_tarski(X4,X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

fof(c_0_43,plain,(
    ! [X16,X17,X18] : k5_xboole_0(k5_xboole_0(X16,X17),X18) = k5_xboole_0(X16,k5_xboole_0(X17,X18)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

fof(c_0_44,plain,(
    ! [X12,X13] : k5_xboole_0(X12,X13) = k5_xboole_0(X13,X12) ),
    inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).

fof(c_0_45,plain,(
    ! [X46,X47,X48,X49,X50,X51,X52,X53,X54] : k7_enumset1(X46,X47,X48,X49,X50,X51,X52,X53,X54) = k2_xboole_0(k3_enumset1(X46,X47,X48,X49,X50),k2_enumset1(X51,X52,X53,X54)) ),
    inference(variable_rename,[status(thm)],[t131_enumset1])).

fof(c_0_46,plain,(
    ! [X59,X60,X61,X62,X63] : k3_enumset1(X59,X60,X61,X62,X63) = k2_xboole_0(k2_tarski(X59,X60),k1_enumset1(X61,X62,X63)) ),
    inference(variable_rename,[status(thm)],[t48_enumset1])).

fof(c_0_47,plain,(
    ! [X21,X22,X23,X24] : k2_enumset1(X21,X22,X23,X24) = k2_xboole_0(k2_tarski(X21,X22),k2_tarski(X23,X24)) ),
    inference(variable_rename,[status(thm)],[l53_enumset1])).

cnf(c_0_48,negated_conjecture,
    ( k5_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk1_0),k5_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk1_0),k3_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk1_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk1_0)))) != k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_49,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k3_enumset1(X4,X4,X3,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_31]),c_0_31])).

cnf(c_0_50,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k5_xboole_0(k3_enumset1(X1,X1,X1,X2,X3),k5_xboole_0(k3_enumset1(X4,X4,X4,X4,X4),k3_xboole_0(k3_enumset1(X4,X4,X4,X4,X4),k3_enumset1(X1,X1,X1,X2,X3)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40,c_0_41]),c_0_28]),c_0_29]),c_0_30]),c_0_30]),c_0_30]),c_0_30]),c_0_31]),c_0_31]),c_0_31]),c_0_31]),c_0_31])).

cnf(c_0_51,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k5_xboole_0(k3_enumset1(X1,X1,X1,X2,X3),k5_xboole_0(k3_enumset1(X4,X4,X4,X4,X5),k3_xboole_0(k3_enumset1(X4,X4,X4,X4,X5),k3_enumset1(X1,X1,X1,X2,X3)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42,c_0_28]),c_0_29]),c_0_30]),c_0_30]),c_0_30]),c_0_30]),c_0_31]),c_0_31]),c_0_31]),c_0_31])).

cnf(c_0_52,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_53,plain,
    ( k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_54,plain,
    ( k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_enumset1(X6,X7,X8,X9)) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_55,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_tarski(X1,X2),k1_enumset1(X3,X4,X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_56,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k2_tarski(X1,X2),k2_tarski(X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

fof(c_0_57,plain,(
    ! [X34,X35,X36,X37] : k2_enumset1(X34,X35,X36,X37) = k2_enumset1(X34,X37,X36,X35) ),
    inference(variable_rename,[status(thm)],[t107_enumset1])).

fof(c_0_58,plain,(
    ! [X30,X31,X32,X33] : k2_enumset1(X30,X31,X32,X33) = k2_enumset1(X30,X32,X31,X33) ),
    inference(variable_rename,[status(thm)],[t104_enumset1])).

cnf(c_0_59,negated_conjecture,
    ( k5_xboole_0(k3_enumset1(esk1_0,esk1_0,esk2_0,esk2_0,esk2_0),k5_xboole_0(k3_enumset1(esk1_0,esk1_0,esk3_0,esk3_0,esk3_0),k3_xboole_0(k3_enumset1(esk1_0,esk1_0,esk2_0,esk2_0,esk2_0),k3_enumset1(esk1_0,esk1_0,esk3_0,esk3_0,esk3_0)))) != k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48,c_0_49]),c_0_49]),c_0_49]),c_0_49])).

cnf(c_0_60,plain,
    ( k3_enumset1(X1,X2,X3,X4,X4) = k3_enumset1(X1,X1,X2,X3,X4) ),
    inference(rw,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_61,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,X3)) = k5_xboole_0(X2,k5_xboole_0(X1,X3)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_53]),c_0_52])).

cnf(c_0_62,plain,
    ( k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9) = k5_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k5_xboole_0(k3_enumset1(X6,X6,X7,X8,X9),k3_xboole_0(k3_enumset1(X6,X6,X7,X8,X9),k3_enumset1(X1,X2,X3,X4,X5)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54,c_0_29]),c_0_31]),c_0_31])).

cnf(c_0_63,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k5_xboole_0(k3_enumset1(X1,X1,X1,X1,X2),k5_xboole_0(k3_enumset1(X3,X3,X3,X4,X5),k3_xboole_0(k3_enumset1(X3,X3,X3,X4,X5),k3_enumset1(X1,X1,X1,X1,X2)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55,c_0_28]),c_0_29]),c_0_30]),c_0_30]),c_0_30]),c_0_30]),c_0_31]),c_0_31]),c_0_31]),c_0_31])).

cnf(c_0_64,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k5_xboole_0(k3_enumset1(X1,X1,X1,X1,X2),k5_xboole_0(k3_enumset1(X3,X3,X3,X3,X4),k3_xboole_0(k3_enumset1(X3,X3,X3,X3,X4),k3_enumset1(X1,X1,X1,X1,X2)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56,c_0_28]),c_0_28]),c_0_29]),c_0_30]),c_0_30]),c_0_30]),c_0_30]),c_0_31]),c_0_31]),c_0_31]),c_0_31]),c_0_31])).

cnf(c_0_65,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X4,X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_66,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X3,X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_67,negated_conjecture,
    ( k5_xboole_0(k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0),k5_xboole_0(k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk3_0),k3_xboole_0(k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk3_0)))) != k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59,c_0_60]),c_0_60]),c_0_60]),c_0_60]),c_0_60]),c_0_60]),c_0_60]),c_0_60])).

cnf(c_0_68,plain,
    ( k5_xboole_0(k3_enumset1(X1,X1,X2,X3,X4),k5_xboole_0(k3_enumset1(X5,X6,X7,X8,X9),k3_xboole_0(k3_enumset1(X1,X1,X2,X3,X4),k3_enumset1(X5,X6,X7,X8,X9)))) = k7_enumset1(X5,X6,X7,X8,X9,X1,X2,X3,X4) ),
    inference(spm,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_69,plain,
    ( k7_enumset1(X1,X1,X1,X1,X2,X3,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(rw,[status(thm)],[c_0_63,c_0_62])).

cnf(c_0_70,plain,
    ( k3_enumset1(X1,X2,X3,X3,X4) = k3_enumset1(X1,X1,X2,X3,X4) ),
    inference(rw,[status(thm)],[c_0_64,c_0_63])).

cnf(c_0_71,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k3_enumset1(X1,X1,X4,X3,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65,c_0_31]),c_0_31])).

cnf(c_0_72,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k3_enumset1(X1,X1,X3,X2,X4) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_66,c_0_31]),c_0_31])).

cnf(c_0_73,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67,c_0_68]),c_0_69]),c_0_70]),c_0_71]),c_0_72])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n011.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 11:49:27 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.39  #
% 0.12/0.39  # Preprocessing time       : 0.026 s
% 0.12/0.39  # Presaturation interreduction done
% 0.12/0.39  
% 0.12/0.39  # Proof found!
% 0.12/0.39  # SZS status Theorem
% 0.12/0.39  # SZS output start CNFRefutation
% 0.12/0.39  fof(t137_enumset1, conjecture, ![X1, X2, X3]:k2_xboole_0(k2_tarski(X2,X1),k2_tarski(X3,X1))=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t137_enumset1)).
% 0.12/0.39  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.12/0.39  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.12/0.39  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.12/0.39  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.12/0.39  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 0.12/0.39  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.12/0.39  fof(t125_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X4,X3,X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t125_enumset1)).
% 0.12/0.39  fof(t46_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t46_enumset1)).
% 0.12/0.39  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.12/0.39  fof(l57_enumset1, axiom, ![X1, X2, X3, X4, X5]:k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k1_enumset1(X1,X2,X3),k2_tarski(X4,X5)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l57_enumset1)).
% 0.12/0.39  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.12/0.39  fof(commutativity_k5_xboole_0, axiom, ![X1, X2]:k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k5_xboole_0)).
% 0.12/0.39  fof(t131_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7, X8, X9]:k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9)=k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_enumset1(X6,X7,X8,X9)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t131_enumset1)).
% 0.12/0.39  fof(t48_enumset1, axiom, ![X1, X2, X3, X4, X5]:k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_tarski(X1,X2),k1_enumset1(X3,X4,X5)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_enumset1)).
% 0.12/0.39  fof(l53_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k2_tarski(X1,X2),k2_tarski(X3,X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l53_enumset1)).
% 0.12/0.39  fof(t107_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X4,X3,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t107_enumset1)).
% 0.12/0.39  fof(t104_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X3,X2,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t104_enumset1)).
% 0.12/0.39  fof(c_0_18, negated_conjecture, ~(![X1, X2, X3]:k2_xboole_0(k2_tarski(X2,X1),k2_tarski(X3,X1))=k1_enumset1(X1,X2,X3)), inference(assume_negation,[status(cth)],[t137_enumset1])).
% 0.12/0.39  fof(c_0_19, plain, ![X19, X20]:k2_xboole_0(X19,X20)=k5_xboole_0(X19,k4_xboole_0(X20,X19)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.12/0.39  fof(c_0_20, plain, ![X14, X15]:k4_xboole_0(X14,X15)=k5_xboole_0(X14,k3_xboole_0(X14,X15)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.12/0.39  fof(c_0_21, negated_conjecture, k2_xboole_0(k2_tarski(esk2_0,esk1_0),k2_tarski(esk3_0,esk1_0))!=k1_enumset1(esk1_0,esk2_0,esk3_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).
% 0.12/0.39  fof(c_0_22, plain, ![X65, X66]:k1_enumset1(X65,X65,X66)=k2_tarski(X65,X66), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.12/0.39  cnf(c_0_23, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.39  cnf(c_0_24, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.12/0.39  fof(c_0_25, plain, ![X67, X68, X69]:k2_enumset1(X67,X67,X68,X69)=k1_enumset1(X67,X68,X69), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.12/0.39  fof(c_0_26, plain, ![X70, X71, X72, X73]:k3_enumset1(X70,X70,X71,X72,X73)=k2_enumset1(X70,X71,X72,X73), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.12/0.39  cnf(c_0_27, negated_conjecture, (k2_xboole_0(k2_tarski(esk2_0,esk1_0),k2_tarski(esk3_0,esk1_0))!=k1_enumset1(esk1_0,esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.12/0.39  cnf(c_0_28, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.39  cnf(c_0_29, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))), inference(rw,[status(thm)],[c_0_23, c_0_24])).
% 0.12/0.39  cnf(c_0_30, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.12/0.39  cnf(c_0_31, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.12/0.39  fof(c_0_32, plain, ![X10, X11]:k3_xboole_0(X10,X11)=k3_xboole_0(X11,X10), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.12/0.39  fof(c_0_33, plain, ![X42, X43, X44, X45]:k2_enumset1(X42,X43,X44,X45)=k2_enumset1(X45,X44,X43,X42), inference(variable_rename,[status(thm)],[t125_enumset1])).
% 0.12/0.39  fof(c_0_34, plain, ![X55, X56, X57, X58]:k2_enumset1(X55,X56,X57,X58)=k2_xboole_0(k1_enumset1(X55,X56,X57),k1_tarski(X58)), inference(variable_rename,[status(thm)],[t46_enumset1])).
% 0.12/0.39  fof(c_0_35, plain, ![X64]:k2_tarski(X64,X64)=k1_tarski(X64), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.12/0.39  fof(c_0_36, plain, ![X25, X26, X27, X28, X29]:k3_enumset1(X25,X26,X27,X28,X29)=k2_xboole_0(k1_enumset1(X25,X26,X27),k2_tarski(X28,X29)), inference(variable_rename,[status(thm)],[l57_enumset1])).
% 0.12/0.39  cnf(c_0_37, negated_conjecture, (k5_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk1_0),k5_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk1_0),k3_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk1_0),k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk1_0))))!=k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_28]), c_0_28]), c_0_29]), c_0_30]), c_0_30]), c_0_30]), c_0_30]), c_0_30]), c_0_31]), c_0_31]), c_0_31]), c_0_31]), c_0_31])).
% 0.12/0.39  cnf(c_0_38, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.12/0.39  cnf(c_0_39, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X4,X3,X2,X1)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.12/0.39  cnf(c_0_40, plain, (k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.12/0.39  cnf(c_0_41, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.12/0.39  cnf(c_0_42, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k1_enumset1(X1,X2,X3),k2_tarski(X4,X5))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.12/0.39  fof(c_0_43, plain, ![X16, X17, X18]:k5_xboole_0(k5_xboole_0(X16,X17),X18)=k5_xboole_0(X16,k5_xboole_0(X17,X18)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.12/0.39  fof(c_0_44, plain, ![X12, X13]:k5_xboole_0(X12,X13)=k5_xboole_0(X13,X12), inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).
% 0.12/0.39  fof(c_0_45, plain, ![X46, X47, X48, X49, X50, X51, X52, X53, X54]:k7_enumset1(X46,X47,X48,X49,X50,X51,X52,X53,X54)=k2_xboole_0(k3_enumset1(X46,X47,X48,X49,X50),k2_enumset1(X51,X52,X53,X54)), inference(variable_rename,[status(thm)],[t131_enumset1])).
% 0.12/0.39  fof(c_0_46, plain, ![X59, X60, X61, X62, X63]:k3_enumset1(X59,X60,X61,X62,X63)=k2_xboole_0(k2_tarski(X59,X60),k1_enumset1(X61,X62,X63)), inference(variable_rename,[status(thm)],[t48_enumset1])).
% 0.12/0.39  fof(c_0_47, plain, ![X21, X22, X23, X24]:k2_enumset1(X21,X22,X23,X24)=k2_xboole_0(k2_tarski(X21,X22),k2_tarski(X23,X24)), inference(variable_rename,[status(thm)],[l53_enumset1])).
% 0.12/0.39  cnf(c_0_48, negated_conjecture, (k5_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk1_0),k5_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk1_0),k3_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk1_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk1_0))))!=k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0)), inference(rw,[status(thm)],[c_0_37, c_0_38])).
% 0.12/0.39  cnf(c_0_49, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k3_enumset1(X4,X4,X3,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_31]), c_0_31])).
% 0.12/0.39  cnf(c_0_50, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k5_xboole_0(k3_enumset1(X1,X1,X1,X2,X3),k5_xboole_0(k3_enumset1(X4,X4,X4,X4,X4),k3_xboole_0(k3_enumset1(X4,X4,X4,X4,X4),k3_enumset1(X1,X1,X1,X2,X3))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40, c_0_41]), c_0_28]), c_0_29]), c_0_30]), c_0_30]), c_0_30]), c_0_30]), c_0_31]), c_0_31]), c_0_31]), c_0_31]), c_0_31])).
% 0.12/0.39  cnf(c_0_51, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k5_xboole_0(k3_enumset1(X1,X1,X1,X2,X3),k5_xboole_0(k3_enumset1(X4,X4,X4,X4,X5),k3_xboole_0(k3_enumset1(X4,X4,X4,X4,X5),k3_enumset1(X1,X1,X1,X2,X3))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42, c_0_28]), c_0_29]), c_0_30]), c_0_30]), c_0_30]), c_0_30]), c_0_31]), c_0_31]), c_0_31]), c_0_31])).
% 0.12/0.39  cnf(c_0_52, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.12/0.39  cnf(c_0_53, plain, (k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.12/0.39  cnf(c_0_54, plain, (k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9)=k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_enumset1(X6,X7,X8,X9))), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.12/0.39  cnf(c_0_55, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_tarski(X1,X2),k1_enumset1(X3,X4,X5))), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.12/0.39  cnf(c_0_56, plain, (k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k2_tarski(X1,X2),k2_tarski(X3,X4))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.12/0.39  fof(c_0_57, plain, ![X34, X35, X36, X37]:k2_enumset1(X34,X35,X36,X37)=k2_enumset1(X34,X37,X36,X35), inference(variable_rename,[status(thm)],[t107_enumset1])).
% 0.12/0.39  fof(c_0_58, plain, ![X30, X31, X32, X33]:k2_enumset1(X30,X31,X32,X33)=k2_enumset1(X30,X32,X31,X33), inference(variable_rename,[status(thm)],[t104_enumset1])).
% 0.12/0.39  cnf(c_0_59, negated_conjecture, (k5_xboole_0(k3_enumset1(esk1_0,esk1_0,esk2_0,esk2_0,esk2_0),k5_xboole_0(k3_enumset1(esk1_0,esk1_0,esk3_0,esk3_0,esk3_0),k3_xboole_0(k3_enumset1(esk1_0,esk1_0,esk2_0,esk2_0,esk2_0),k3_enumset1(esk1_0,esk1_0,esk3_0,esk3_0,esk3_0))))!=k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48, c_0_49]), c_0_49]), c_0_49]), c_0_49])).
% 0.12/0.39  cnf(c_0_60, plain, (k3_enumset1(X1,X2,X3,X4,X4)=k3_enumset1(X1,X1,X2,X3,X4)), inference(rw,[status(thm)],[c_0_50, c_0_51])).
% 0.12/0.39  cnf(c_0_61, plain, (k5_xboole_0(X1,k5_xboole_0(X2,X3))=k5_xboole_0(X2,k5_xboole_0(X1,X3))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_53]), c_0_52])).
% 0.12/0.39  cnf(c_0_62, plain, (k7_enumset1(X1,X2,X3,X4,X5,X6,X7,X8,X9)=k5_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k5_xboole_0(k3_enumset1(X6,X6,X7,X8,X9),k3_xboole_0(k3_enumset1(X6,X6,X7,X8,X9),k3_enumset1(X1,X2,X3,X4,X5))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54, c_0_29]), c_0_31]), c_0_31])).
% 0.12/0.39  cnf(c_0_63, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k5_xboole_0(k3_enumset1(X1,X1,X1,X1,X2),k5_xboole_0(k3_enumset1(X3,X3,X3,X4,X5),k3_xboole_0(k3_enumset1(X3,X3,X3,X4,X5),k3_enumset1(X1,X1,X1,X1,X2))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55, c_0_28]), c_0_29]), c_0_30]), c_0_30]), c_0_30]), c_0_30]), c_0_31]), c_0_31]), c_0_31]), c_0_31])).
% 0.12/0.39  cnf(c_0_64, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k5_xboole_0(k3_enumset1(X1,X1,X1,X1,X2),k5_xboole_0(k3_enumset1(X3,X3,X3,X3,X4),k3_xboole_0(k3_enumset1(X3,X3,X3,X3,X4),k3_enumset1(X1,X1,X1,X1,X2))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_56, c_0_28]), c_0_28]), c_0_29]), c_0_30]), c_0_30]), c_0_30]), c_0_30]), c_0_31]), c_0_31]), c_0_31]), c_0_31]), c_0_31])).
% 0.12/0.39  cnf(c_0_65, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X4,X3,X2)), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.12/0.39  cnf(c_0_66, plain, (k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X3,X2,X4)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.12/0.39  cnf(c_0_67, negated_conjecture, (k5_xboole_0(k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0),k5_xboole_0(k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk3_0),k3_xboole_0(k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk3_0))))!=k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59, c_0_60]), c_0_60]), c_0_60]), c_0_60]), c_0_60]), c_0_60]), c_0_60]), c_0_60])).
% 0.12/0.39  cnf(c_0_68, plain, (k5_xboole_0(k3_enumset1(X1,X1,X2,X3,X4),k5_xboole_0(k3_enumset1(X5,X6,X7,X8,X9),k3_xboole_0(k3_enumset1(X1,X1,X2,X3,X4),k3_enumset1(X5,X6,X7,X8,X9))))=k7_enumset1(X5,X6,X7,X8,X9,X1,X2,X3,X4)), inference(spm,[status(thm)],[c_0_61, c_0_62])).
% 0.12/0.39  cnf(c_0_69, plain, (k7_enumset1(X1,X1,X1,X1,X2,X3,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(rw,[status(thm)],[c_0_63, c_0_62])).
% 0.12/0.39  cnf(c_0_70, plain, (k3_enumset1(X1,X2,X3,X3,X4)=k3_enumset1(X1,X1,X2,X3,X4)), inference(rw,[status(thm)],[c_0_64, c_0_63])).
% 0.12/0.39  cnf(c_0_71, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k3_enumset1(X1,X1,X4,X3,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65, c_0_31]), c_0_31])).
% 0.12/0.39  cnf(c_0_72, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k3_enumset1(X1,X1,X3,X2,X4)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_66, c_0_31]), c_0_31])).
% 0.12/0.39  cnf(c_0_73, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67, c_0_68]), c_0_69]), c_0_70]), c_0_71]), c_0_72])]), ['proof']).
% 0.12/0.39  # SZS output end CNFRefutation
% 0.12/0.39  # Proof object total steps             : 74
% 0.12/0.39  # Proof object clause steps            : 37
% 0.12/0.39  # Proof object formula steps           : 37
% 0.12/0.39  # Proof object conjectures             : 9
% 0.12/0.39  # Proof object clause conjectures      : 6
% 0.12/0.39  # Proof object formula conjectures     : 3
% 0.12/0.39  # Proof object initial clauses used    : 18
% 0.12/0.39  # Proof object initial formulas used   : 18
% 0.12/0.39  # Proof object generating inferences   : 2
% 0.12/0.39  # Proof object simplifying inferences  : 90
% 0.12/0.39  # Training examples: 0 positive, 0 negative
% 0.12/0.39  # Parsed axioms                        : 19
% 0.12/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.39  # Initial clauses                      : 19
% 0.12/0.39  # Removed in clause preprocessing      : 6
% 0.12/0.39  # Initial clauses in saturation        : 13
% 0.12/0.39  # Processed clauses                    : 204
% 0.12/0.39  # ...of these trivial                  : 56
% 0.12/0.39  # ...subsumed                          : 88
% 0.12/0.39  # ...remaining for further processing  : 60
% 0.12/0.39  # Other redundant clauses eliminated   : 0
% 0.12/0.39  # Clauses deleted for lack of memory   : 0
% 0.12/0.39  # Backward-subsumed                    : 0
% 0.12/0.39  # Backward-rewritten                   : 5
% 0.12/0.39  # Generated clauses                    : 2780
% 0.12/0.39  # ...of the previous two non-trivial   : 2534
% 0.12/0.39  # Contextual simplify-reflections      : 0
% 0.12/0.39  # Paramodulations                      : 2780
% 0.12/0.39  # Factorizations                       : 0
% 0.12/0.39  # Equation resolutions                 : 0
% 0.12/0.39  # Propositional unsat checks           : 0
% 0.12/0.39  #    Propositional check models        : 0
% 0.12/0.39  #    Propositional check unsatisfiable : 0
% 0.12/0.39  #    Propositional clauses             : 0
% 0.12/0.39  #    Propositional clauses after purity: 0
% 0.12/0.39  #    Propositional unsat core size     : 0
% 0.12/0.39  #    Propositional preprocessing time  : 0.000
% 0.12/0.39  #    Propositional encoding time       : 0.000
% 0.12/0.39  #    Propositional solver time         : 0.000
% 0.12/0.39  #    Success case prop preproc time    : 0.000
% 0.12/0.39  #    Success case prop encoding time   : 0.000
% 0.12/0.39  #    Success case prop solver time     : 0.000
% 0.12/0.39  # Current number of processed clauses  : 42
% 0.12/0.39  #    Positive orientable unit clauses  : 8
% 0.12/0.39  #    Positive unorientable unit clauses: 34
% 0.12/0.39  #    Negative unit clauses             : 0
% 0.12/0.39  #    Non-unit-clauses                  : 0
% 0.12/0.39  # Current number of unprocessed clauses: 2356
% 0.12/0.39  # ...number of literals in the above   : 2356
% 0.12/0.39  # Current number of archived formulas  : 0
% 0.12/0.39  # Current number of archived clauses   : 24
% 0.12/0.39  # Clause-clause subsumption calls (NU) : 0
% 0.12/0.39  # Rec. Clause-clause subsumption calls : 0
% 0.12/0.39  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.39  # Unit Clause-clause subsumption calls : 489
% 0.12/0.39  # Rewrite failures with RHS unbound    : 0
% 0.12/0.39  # BW rewrite match attempts            : 1188
% 0.12/0.39  # BW rewrite match successes           : 555
% 0.12/0.39  # Condensation attempts                : 0
% 0.12/0.39  # Condensation successes               : 0
% 0.12/0.39  # Termbank termtop insertions          : 15263
% 0.12/0.39  
% 0.12/0.39  # -------------------------------------------------
% 0.12/0.39  # User time                : 0.050 s
% 0.12/0.39  # System time              : 0.004 s
% 0.12/0.39  # Total time               : 0.054 s
% 0.12/0.39  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
