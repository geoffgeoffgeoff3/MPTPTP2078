%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n025.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:35:39 EST 2020

% Result     : Theorem 0.15s
% Output     : CNFRefutation 0.15s
% Verified   : 
% Statistics : Number of formulae       :   46 ( 572 expanded)
%              Number of clauses        :   25 ( 239 expanded)
%              Number of leaves         :   10 ( 166 expanded)
%              Depth                    :   10
%              Number of atoms          :   46 ( 572 expanded)
%              Number of equality atoms :   45 ( 571 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    6 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t44_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_enumset1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t48_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_tarski(X1,X2),k1_enumset1(X3,X4,X5)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_enumset1)).

fof(t58_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k2_xboole_0(k1_enumset1(X1,X2,X3),k2_enumset1(X4,X5,X6,X7)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t58_enumset1)).

fof(t64_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8] : k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k1_enumset1(X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_enumset1)).

fof(t47_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t47_enumset1)).

fof(t42_enumset1,axiom,(
    ! [X1,X2,X3] : k1_enumset1(X1,X2,X3) = k2_xboole_0(k1_tarski(X1),k2_tarski(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t42_enumset1)).

fof(t71_enumset1,conjecture,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(c_0_10,plain,(
    ! [X14,X15,X16,X17] : k2_enumset1(X14,X15,X16,X17) = k2_xboole_0(k1_tarski(X14),k1_enumset1(X15,X16,X17)) ),
    inference(variable_rename,[status(thm)],[t44_enumset1])).

fof(c_0_11,plain,(
    ! [X43] : k2_tarski(X43,X43) = k1_tarski(X43) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_12,plain,(
    ! [X44,X45] : k1_enumset1(X44,X44,X45) = k2_tarski(X44,X45) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_13,plain,(
    ! [X9,X10] : k2_xboole_0(X9,X10) = k5_xboole_0(X9,k4_xboole_0(X10,X9)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_14,plain,(
    ! [X23,X24,X25,X26,X27] : k3_enumset1(X23,X24,X25,X26,X27) = k2_xboole_0(k2_tarski(X23,X24),k1_enumset1(X25,X26,X27)) ),
    inference(variable_rename,[status(thm)],[t48_enumset1])).

fof(c_0_15,plain,(
    ! [X28,X29,X30,X31,X32,X33,X34] : k5_enumset1(X28,X29,X30,X31,X32,X33,X34) = k2_xboole_0(k1_enumset1(X28,X29,X30),k2_enumset1(X31,X32,X33,X34)) ),
    inference(variable_rename,[status(thm)],[t58_enumset1])).

cnf(c_0_16,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_20,plain,(
    ! [X35,X36,X37,X38,X39,X40,X41,X42] : k6_enumset1(X35,X36,X37,X38,X39,X40,X41,X42) = k2_xboole_0(k1_enumset1(X35,X36,X37),k3_enumset1(X38,X39,X40,X41,X42)) ),
    inference(variable_rename,[status(thm)],[t64_enumset1])).

cnf(c_0_21,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_tarski(X1,X2),k1_enumset1(X3,X4,X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_22,plain,(
    ! [X18,X19,X20,X21,X22] : k3_enumset1(X18,X19,X20,X21,X22) = k2_xboole_0(k1_tarski(X18),k2_enumset1(X19,X20,X21,X22)) ),
    inference(variable_rename,[status(thm)],[t47_enumset1])).

cnf(c_0_23,plain,
    ( k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k2_xboole_0(k1_enumset1(X1,X2,X3),k2_enumset1(X4,X5,X6,X7)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k1_enumset1(X2,X3,X4),k1_enumset1(X1,X1,X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16,c_0_17]),c_0_18]),c_0_19])).

cnf(c_0_25,plain,
    ( k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k1_enumset1(X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k5_xboole_0(k1_enumset1(X1,X1,X2),k4_xboole_0(k1_enumset1(X3,X4,X5),k1_enumset1(X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21,c_0_18]),c_0_19])).

cnf(c_0_27,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_28,plain,
    ( k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k5_xboole_0(k1_enumset1(X4,X4,X4),k4_xboole_0(k1_enumset1(X5,X6,X7),k1_enumset1(X4,X4,X4))),k1_enumset1(X1,X2,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23,c_0_19]),c_0_24])).

cnf(c_0_29,plain,
    ( k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k5_xboole_0(k1_enumset1(X4,X4,X5),k4_xboole_0(k1_enumset1(X6,X7,X8),k1_enumset1(X4,X4,X5))),k1_enumset1(X1,X2,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25,c_0_19]),c_0_26])).

fof(c_0_30,plain,(
    ! [X11,X12,X13] : k1_enumset1(X11,X12,X13) = k2_xboole_0(k1_tarski(X11),k2_tarski(X12,X13)) ),
    inference(variable_rename,[status(thm)],[t42_enumset1])).

fof(c_0_31,negated_conjecture,(
    ~ ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(assume_negation,[status(cth)],[t71_enumset1])).

cnf(c_0_32,plain,
    ( k5_xboole_0(k1_enumset1(X1,X1,X2),k4_xboole_0(k1_enumset1(X3,X4,X5),k1_enumset1(X1,X1,X2))) = k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k5_xboole_0(k1_enumset1(X2,X2,X2),k4_xboole_0(k1_enumset1(X3,X4,X5),k1_enumset1(X2,X2,X2))),k1_enumset1(X1,X1,X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_17]),c_0_18]),c_0_19]),c_0_24]),c_0_26])).

cnf(c_0_33,plain,
    ( k6_enumset1(X1,X2,X3,X4,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(rw,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_34,plain,
    ( k1_enumset1(X1,X2,X3) = k2_xboole_0(k1_tarski(X1),k2_tarski(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

fof(c_0_35,negated_conjecture,(
    k2_enumset1(esk1_0,esk1_0,esk2_0,esk3_0) != k1_enumset1(esk1_0,esk2_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_31])])])).

cnf(c_0_36,plain,
    ( k5_xboole_0(k1_enumset1(X1,X1,X2),k4_xboole_0(k1_enumset1(X3,X4,X5),k1_enumset1(X1,X1,X2))) = k5_enumset1(X1,X1,X1,X2,X3,X4,X5) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_29]),c_0_33])).

cnf(c_0_37,plain,
    ( k1_enumset1(X1,X2,X3) = k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k1_enumset1(X2,X2,X3),k1_enumset1(X1,X1,X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_34,c_0_17]),c_0_18]),c_0_18]),c_0_19])).

cnf(c_0_38,negated_conjecture,
    ( k2_enumset1(esk1_0,esk1_0,esk2_0,esk3_0) != k1_enumset1(esk1_0,esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_39,plain,
    ( k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k5_enumset1(X4,X4,X4,X5,X6,X7,X8),k1_enumset1(X1,X2,X3))) = k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(rw,[status(thm)],[c_0_29,c_0_36])).

cnf(c_0_40,plain,
    ( k5_enumset1(X1,X1,X1,X1,X2,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(rw,[status(thm)],[c_0_37,c_0_36])).

cnf(c_0_41,negated_conjecture,
    ( k5_xboole_0(k1_enumset1(esk1_0,esk1_0,esk1_0),k4_xboole_0(k1_enumset1(esk1_0,esk2_0,esk3_0),k1_enumset1(esk1_0,esk1_0,esk1_0))) != k1_enumset1(esk1_0,esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[c_0_38,c_0_24])).

cnf(c_0_42,plain,
    ( k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k1_enumset1(X4,X5,X6),k1_enumset1(X1,X2,X3))) = k5_enumset1(X1,X2,X3,X4,X5,X5,X6) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_33])).

cnf(c_0_43,negated_conjecture,
    ( k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0) != k1_enumset1(esk1_0,esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[c_0_41,c_0_36])).

cnf(c_0_44,plain,
    ( k5_enumset1(X1,X1,X1,X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_42]),c_0_36])).

cnf(c_0_45,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_43,c_0_44])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.15/0.35  % Computer   : n025.cluster.edu
% 0.15/0.35  % Model      : x86_64 x86_64
% 0.15/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.15/0.35  % Memory     : 8042.1875MB
% 0.15/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.15/0.35  % CPULimit   : 60
% 0.15/0.35  % WCLimit    : 600
% 0.15/0.35  % DateTime   : Tue Dec  1 13:30:50 EST 2020
% 0.15/0.35  % CPUTime    : 
% 0.15/0.36  # Version: 2.5pre002
% 0.15/0.36  # No SInE strategy applied
% 0.15/0.36  # Trying AutoSched0 for 299 seconds
% 0.15/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.15/0.38  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.15/0.38  #
% 0.15/0.38  # Preprocessing time       : 0.026 s
% 0.15/0.38  # Presaturation interreduction done
% 0.15/0.38  
% 0.15/0.38  # Proof found!
% 0.15/0.38  # SZS status Theorem
% 0.15/0.38  # SZS output start CNFRefutation
% 0.15/0.38  fof(t44_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_enumset1)).
% 0.15/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.15/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.15/0.38  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.15/0.38  fof(t48_enumset1, axiom, ![X1, X2, X3, X4, X5]:k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_tarski(X1,X2),k1_enumset1(X3,X4,X5)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_enumset1)).
% 0.15/0.38  fof(t58_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k2_xboole_0(k1_enumset1(X1,X2,X3),k2_enumset1(X4,X5,X6,X7)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t58_enumset1)).
% 0.15/0.38  fof(t64_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7, X8]:k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k1_enumset1(X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t64_enumset1)).
% 0.15/0.38  fof(t47_enumset1, axiom, ![X1, X2, X3, X4, X5]:k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t47_enumset1)).
% 0.15/0.38  fof(t42_enumset1, axiom, ![X1, X2, X3]:k1_enumset1(X1,X2,X3)=k2_xboole_0(k1_tarski(X1),k2_tarski(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t42_enumset1)).
% 0.15/0.38  fof(t71_enumset1, conjecture, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.15/0.38  fof(c_0_10, plain, ![X14, X15, X16, X17]:k2_enumset1(X14,X15,X16,X17)=k2_xboole_0(k1_tarski(X14),k1_enumset1(X15,X16,X17)), inference(variable_rename,[status(thm)],[t44_enumset1])).
% 0.15/0.38  fof(c_0_11, plain, ![X43]:k2_tarski(X43,X43)=k1_tarski(X43), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.15/0.38  fof(c_0_12, plain, ![X44, X45]:k1_enumset1(X44,X44,X45)=k2_tarski(X44,X45), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.15/0.38  fof(c_0_13, plain, ![X9, X10]:k2_xboole_0(X9,X10)=k5_xboole_0(X9,k4_xboole_0(X10,X9)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.15/0.38  fof(c_0_14, plain, ![X23, X24, X25, X26, X27]:k3_enumset1(X23,X24,X25,X26,X27)=k2_xboole_0(k2_tarski(X23,X24),k1_enumset1(X25,X26,X27)), inference(variable_rename,[status(thm)],[t48_enumset1])).
% 0.15/0.38  fof(c_0_15, plain, ![X28, X29, X30, X31, X32, X33, X34]:k5_enumset1(X28,X29,X30,X31,X32,X33,X34)=k2_xboole_0(k1_enumset1(X28,X29,X30),k2_enumset1(X31,X32,X33,X34)), inference(variable_rename,[status(thm)],[t58_enumset1])).
% 0.15/0.38  cnf(c_0_16, plain, (k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.15/0.38  cnf(c_0_17, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.15/0.38  cnf(c_0_18, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.15/0.38  cnf(c_0_19, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.15/0.38  fof(c_0_20, plain, ![X35, X36, X37, X38, X39, X40, X41, X42]:k6_enumset1(X35,X36,X37,X38,X39,X40,X41,X42)=k2_xboole_0(k1_enumset1(X35,X36,X37),k3_enumset1(X38,X39,X40,X41,X42)), inference(variable_rename,[status(thm)],[t64_enumset1])).
% 0.15/0.38  cnf(c_0_21, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_tarski(X1,X2),k1_enumset1(X3,X4,X5))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.15/0.38  fof(c_0_22, plain, ![X18, X19, X20, X21, X22]:k3_enumset1(X18,X19,X20,X21,X22)=k2_xboole_0(k1_tarski(X18),k2_enumset1(X19,X20,X21,X22)), inference(variable_rename,[status(thm)],[t47_enumset1])).
% 0.15/0.38  cnf(c_0_23, plain, (k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k2_xboole_0(k1_enumset1(X1,X2,X3),k2_enumset1(X4,X5,X6,X7))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.15/0.38  cnf(c_0_24, plain, (k2_enumset1(X1,X2,X3,X4)=k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k1_enumset1(X2,X3,X4),k1_enumset1(X1,X1,X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16, c_0_17]), c_0_18]), c_0_19])).
% 0.15/0.38  cnf(c_0_25, plain, (k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k1_enumset1(X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.15/0.38  cnf(c_0_26, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k5_xboole_0(k1_enumset1(X1,X1,X2),k4_xboole_0(k1_enumset1(X3,X4,X5),k1_enumset1(X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_21, c_0_18]), c_0_19])).
% 0.15/0.38  cnf(c_0_27, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k1_tarski(X1),k2_enumset1(X2,X3,X4,X5))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.15/0.38  cnf(c_0_28, plain, (k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k5_xboole_0(k1_enumset1(X4,X4,X4),k4_xboole_0(k1_enumset1(X5,X6,X7),k1_enumset1(X4,X4,X4))),k1_enumset1(X1,X2,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23, c_0_19]), c_0_24])).
% 0.15/0.38  cnf(c_0_29, plain, (k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k5_xboole_0(k1_enumset1(X4,X4,X5),k4_xboole_0(k1_enumset1(X6,X7,X8),k1_enumset1(X4,X4,X5))),k1_enumset1(X1,X2,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25, c_0_19]), c_0_26])).
% 0.15/0.38  fof(c_0_30, plain, ![X11, X12, X13]:k1_enumset1(X11,X12,X13)=k2_xboole_0(k1_tarski(X11),k2_tarski(X12,X13)), inference(variable_rename,[status(thm)],[t42_enumset1])).
% 0.15/0.38  fof(c_0_31, negated_conjecture, ~(![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(assume_negation,[status(cth)],[t71_enumset1])).
% 0.15/0.38  cnf(c_0_32, plain, (k5_xboole_0(k1_enumset1(X1,X1,X2),k4_xboole_0(k1_enumset1(X3,X4,X5),k1_enumset1(X1,X1,X2)))=k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k5_xboole_0(k1_enumset1(X2,X2,X2),k4_xboole_0(k1_enumset1(X3,X4,X5),k1_enumset1(X2,X2,X2))),k1_enumset1(X1,X1,X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_17]), c_0_18]), c_0_19]), c_0_24]), c_0_26])).
% 0.15/0.38  cnf(c_0_33, plain, (k6_enumset1(X1,X2,X3,X4,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(rw,[status(thm)],[c_0_28, c_0_29])).
% 0.15/0.38  cnf(c_0_34, plain, (k1_enumset1(X1,X2,X3)=k2_xboole_0(k1_tarski(X1),k2_tarski(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.15/0.38  fof(c_0_35, negated_conjecture, k2_enumset1(esk1_0,esk1_0,esk2_0,esk3_0)!=k1_enumset1(esk1_0,esk2_0,esk3_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_31])])])).
% 0.15/0.38  cnf(c_0_36, plain, (k5_xboole_0(k1_enumset1(X1,X1,X2),k4_xboole_0(k1_enumset1(X3,X4,X5),k1_enumset1(X1,X1,X2)))=k5_enumset1(X1,X1,X1,X2,X3,X4,X5)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_29]), c_0_33])).
% 0.15/0.38  cnf(c_0_37, plain, (k1_enumset1(X1,X2,X3)=k5_xboole_0(k1_enumset1(X1,X1,X1),k4_xboole_0(k1_enumset1(X2,X2,X3),k1_enumset1(X1,X1,X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_34, c_0_17]), c_0_18]), c_0_18]), c_0_19])).
% 0.15/0.38  cnf(c_0_38, negated_conjecture, (k2_enumset1(esk1_0,esk1_0,esk2_0,esk3_0)!=k1_enumset1(esk1_0,esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.15/0.38  cnf(c_0_39, plain, (k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k5_enumset1(X4,X4,X4,X5,X6,X7,X8),k1_enumset1(X1,X2,X3)))=k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)), inference(rw,[status(thm)],[c_0_29, c_0_36])).
% 0.15/0.38  cnf(c_0_40, plain, (k5_enumset1(X1,X1,X1,X1,X2,X2,X3)=k1_enumset1(X1,X2,X3)), inference(rw,[status(thm)],[c_0_37, c_0_36])).
% 0.15/0.38  cnf(c_0_41, negated_conjecture, (k5_xboole_0(k1_enumset1(esk1_0,esk1_0,esk1_0),k4_xboole_0(k1_enumset1(esk1_0,esk2_0,esk3_0),k1_enumset1(esk1_0,esk1_0,esk1_0)))!=k1_enumset1(esk1_0,esk2_0,esk3_0)), inference(rw,[status(thm)],[c_0_38, c_0_24])).
% 0.15/0.38  cnf(c_0_42, plain, (k5_xboole_0(k1_enumset1(X1,X2,X3),k4_xboole_0(k1_enumset1(X4,X5,X6),k1_enumset1(X1,X2,X3)))=k5_enumset1(X1,X2,X3,X4,X5,X5,X6)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_33])).
% 0.15/0.38  cnf(c_0_43, negated_conjecture, (k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0)!=k1_enumset1(esk1_0,esk2_0,esk3_0)), inference(rw,[status(thm)],[c_0_41, c_0_36])).
% 0.15/0.38  cnf(c_0_44, plain, (k5_enumset1(X1,X1,X1,X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_42]), c_0_36])).
% 0.15/0.38  cnf(c_0_45, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_43, c_0_44])]), ['proof']).
% 0.15/0.38  # SZS output end CNFRefutation
% 0.15/0.38  # Proof object total steps             : 46
% 0.15/0.38  # Proof object clause steps            : 25
% 0.15/0.38  # Proof object formula steps           : 21
% 0.15/0.38  # Proof object conjectures             : 7
% 0.15/0.38  # Proof object clause conjectures      : 4
% 0.15/0.38  # Proof object formula conjectures     : 3
% 0.15/0.38  # Proof object initial clauses used    : 10
% 0.15/0.38  # Proof object initial formulas used   : 10
% 0.15/0.38  # Proof object generating inferences   : 2
% 0.15/0.38  # Proof object simplifying inferences  : 29
% 0.15/0.38  # Training examples: 0 positive, 0 negative
% 0.15/0.38  # Parsed axioms                        : 10
% 0.15/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.15/0.38  # Initial clauses                      : 10
% 0.15/0.38  # Removed in clause preprocessing      : 5
% 0.15/0.38  # Initial clauses in saturation        : 5
% 0.15/0.38  # Processed clauses                    : 16
% 0.15/0.38  # ...of these trivial                  : 0
% 0.15/0.38  # ...subsumed                          : 0
% 0.15/0.38  # ...remaining for further processing  : 16
% 0.15/0.38  # Other redundant clauses eliminated   : 0
% 0.15/0.38  # Clauses deleted for lack of memory   : 0
% 0.15/0.38  # Backward-subsumed                    : 0
% 0.15/0.38  # Backward-rewritten                   : 5
% 0.15/0.38  # Generated clauses                    : 5
% 0.15/0.38  # ...of the previous two non-trivial   : 8
% 0.15/0.38  # Contextual simplify-reflections      : 0
% 0.15/0.38  # Paramodulations                      : 5
% 0.15/0.38  # Factorizations                       : 0
% 0.15/0.38  # Equation resolutions                 : 0
% 0.15/0.38  # Propositional unsat checks           : 0
% 0.15/0.38  #    Propositional check models        : 0
% 0.15/0.38  #    Propositional check unsatisfiable : 0
% 0.15/0.38  #    Propositional clauses             : 0
% 0.15/0.38  #    Propositional clauses after purity: 0
% 0.15/0.38  #    Propositional unsat core size     : 0
% 0.15/0.38  #    Propositional preprocessing time  : 0.000
% 0.15/0.38  #    Propositional encoding time       : 0.000
% 0.15/0.38  #    Propositional solver time         : 0.000
% 0.15/0.38  #    Success case prop preproc time    : 0.000
% 0.15/0.38  #    Success case prop encoding time   : 0.000
% 0.15/0.38  #    Success case prop solver time     : 0.000
% 0.15/0.38  # Current number of processed clauses  : 6
% 0.15/0.38  #    Positive orientable unit clauses  : 5
% 0.15/0.38  #    Positive unorientable unit clauses: 1
% 0.15/0.38  #    Negative unit clauses             : 0
% 0.15/0.38  #    Non-unit-clauses                  : 0
% 0.15/0.38  # Current number of unprocessed clauses: 2
% 0.15/0.38  # ...number of literals in the above   : 2
% 0.15/0.38  # Current number of archived formulas  : 0
% 0.15/0.38  # Current number of archived clauses   : 15
% 0.15/0.38  # Clause-clause subsumption calls (NU) : 0
% 0.15/0.38  # Rec. Clause-clause subsumption calls : 0
% 0.15/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.15/0.38  # Unit Clause-clause subsumption calls : 1
% 0.15/0.38  # Rewrite failures with RHS unbound    : 0
% 0.15/0.38  # BW rewrite match attempts            : 21
% 0.15/0.38  # BW rewrite match successes           : 7
% 0.15/0.38  # Condensation attempts                : 0
% 0.15/0.38  # Condensation successes               : 0
% 0.15/0.38  # Termbank termtop insertions          : 785
% 0.15/0.38  
% 0.15/0.38  # -------------------------------------------------
% 0.15/0.38  # User time                : 0.025 s
% 0.15/0.38  # System time              : 0.006 s
% 0.15/0.38  # Total time               : 0.030 s
% 0.15/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
