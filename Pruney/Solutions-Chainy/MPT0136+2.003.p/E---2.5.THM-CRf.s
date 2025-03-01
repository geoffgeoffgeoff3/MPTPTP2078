%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:35:08 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   32 ( 222 expanded)
%              Number of clauses        :   17 (  91 expanded)
%              Number of leaves         :    7 (  65 expanded)
%              Depth                    :    7
%              Number of atoms          :   32 ( 222 expanded)
%              Number of equality atoms :   31 ( 221 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    6 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t43_enumset1,axiom,(
    ! [X1,X2,X3] : k1_enumset1(X1,X2,X3) = k2_xboole_0(k2_tarski(X1,X2),k1_tarski(X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t43_enumset1)).

fof(t41_enumset1,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_enumset1)).

fof(t94_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t94_xboole_1)).

fof(t4_xboole_1,axiom,(
    ! [X1,X2,X3] : k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_xboole_1)).

fof(t52_enumset1,conjecture,(
    ! [X1,X2,X3,X4,X5,X6] : k4_enumset1(X1,X2,X3,X4,X5,X6) = k2_xboole_0(k2_tarski(X1,X2),k2_enumset1(X3,X4,X5,X6)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t52_enumset1)).

fof(t46_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_enumset1)).

fof(l62_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k4_enumset1(X1,X2,X3,X4,X5,X6) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X4,X5,X6)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l62_enumset1)).

fof(c_0_7,plain,(
    ! [X24,X25,X26] : k1_enumset1(X24,X25,X26) = k2_xboole_0(k2_tarski(X24,X25),k1_tarski(X26)) ),
    inference(variable_rename,[status(thm)],[t43_enumset1])).

fof(c_0_8,plain,(
    ! [X22,X23] : k2_tarski(X22,X23) = k2_xboole_0(k1_tarski(X22),k1_tarski(X23)) ),
    inference(variable_rename,[status(thm)],[t41_enumset1])).

fof(c_0_9,plain,(
    ! [X14,X15] : k2_xboole_0(X14,X15) = k5_xboole_0(k5_xboole_0(X14,X15),k3_xboole_0(X14,X15)) ),
    inference(variable_rename,[status(thm)],[t94_xboole_1])).

fof(c_0_10,plain,(
    ! [X11,X12,X13] : k2_xboole_0(k2_xboole_0(X11,X12),X13) = k2_xboole_0(X11,k2_xboole_0(X12,X13)) ),
    inference(variable_rename,[status(thm)],[t4_xboole_1])).

cnf(c_0_11,plain,
    ( k1_enumset1(X1,X2,X3) = k2_xboole_0(k2_tarski(X1,X2),k1_tarski(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,plain,
    ( k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_15,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5,X6] : k4_enumset1(X1,X2,X3,X4,X5,X6) = k2_xboole_0(k2_tarski(X1,X2),k2_enumset1(X3,X4,X5,X6)) ),
    inference(assume_negation,[status(cth)],[t52_enumset1])).

fof(c_0_16,plain,(
    ! [X27,X28,X29,X30] : k2_enumset1(X27,X28,X29,X30) = k2_xboole_0(k1_enumset1(X27,X28,X29),k1_tarski(X30)) ),
    inference(variable_rename,[status(thm)],[t46_enumset1])).

fof(c_0_17,plain,(
    ! [X16,X17,X18,X19,X20,X21] : k4_enumset1(X16,X17,X18,X19,X20,X21) = k2_xboole_0(k1_enumset1(X16,X17,X18),k1_enumset1(X19,X20,X21)) ),
    inference(variable_rename,[status(thm)],[l62_enumset1])).

cnf(c_0_18,plain,
    ( k1_enumset1(X1,X2,X3) = k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_tarski(X2)),k3_xboole_0(k1_tarski(X1),k1_tarski(X2))),k1_tarski(X3)),k3_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_tarski(X2)),k3_xboole_0(k1_tarski(X1),k1_tarski(X2))),k1_tarski(X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11,c_0_12]),c_0_13]),c_0_13])).

cnf(c_0_19,plain,
    ( k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)),X3),k3_xboole_0(k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)),X3)) = k5_xboole_0(k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X2,X3),k3_xboole_0(X2,X3))),k3_xboole_0(X1,k5_xboole_0(k5_xboole_0(X2,X3),k3_xboole_0(X2,X3)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14,c_0_13]),c_0_13]),c_0_13]),c_0_13])).

fof(c_0_20,negated_conjecture,(
    k4_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0) != k2_xboole_0(k2_tarski(esk1_0,esk2_0),k2_enumset1(esk3_0,esk4_0,esk5_0,esk6_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).

cnf(c_0_21,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_22,plain,
    ( k4_enumset1(X1,X2,X3,X4,X5,X6) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X4,X5,X6)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,plain,
    ( k5_xboole_0(k5_xboole_0(k1_tarski(X1),k5_xboole_0(k5_xboole_0(k1_tarski(X2),k1_tarski(X3)),k3_xboole_0(k1_tarski(X2),k1_tarski(X3)))),k3_xboole_0(k1_tarski(X1),k5_xboole_0(k5_xboole_0(k1_tarski(X2),k1_tarski(X3)),k3_xboole_0(k1_tarski(X2),k1_tarski(X3))))) = k1_enumset1(X1,X2,X3) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_24,negated_conjecture,
    ( k4_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0) != k2_xboole_0(k2_tarski(esk1_0,esk2_0),k2_enumset1(esk3_0,esk4_0,esk5_0,esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_25,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)),k3_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4))) ),
    inference(rw,[status(thm)],[c_0_21,c_0_13])).

cnf(c_0_26,plain,
    ( k4_enumset1(X1,X2,X3,X4,X5,X6) = k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X4,X5,X6)),k3_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X4,X5,X6))) ),
    inference(rw,[status(thm)],[c_0_22,c_0_13])).

cnf(c_0_27,plain,
    ( k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_tarski(X2)),k3_xboole_0(k1_tarski(X1),k1_tarski(X2))),k5_xboole_0(k5_xboole_0(k1_tarski(X3),X4),k3_xboole_0(k1_tarski(X3),X4))),k3_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_tarski(X2)),k3_xboole_0(k1_tarski(X1),k1_tarski(X2))),k5_xboole_0(k5_xboole_0(k1_tarski(X3),X4),k3_xboole_0(k1_tarski(X3),X4)))) = k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X2,X3),X4),k3_xboole_0(k1_enumset1(X1,X2,X3),X4)) ),
    inference(spm,[status(thm)],[c_0_19,c_0_18])).

cnf(c_0_28,plain,
    ( k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(X1,k1_tarski(X2)),k3_xboole_0(X1,k1_tarski(X2))),k5_xboole_0(k5_xboole_0(k1_tarski(X3),k1_tarski(X4)),k3_xboole_0(k1_tarski(X3),k1_tarski(X4)))),k3_xboole_0(k5_xboole_0(k5_xboole_0(X1,k1_tarski(X2)),k3_xboole_0(X1,k1_tarski(X2))),k5_xboole_0(k5_xboole_0(k1_tarski(X3),k1_tarski(X4)),k3_xboole_0(k1_tarski(X3),k1_tarski(X4))))) = k5_xboole_0(k5_xboole_0(X1,k1_enumset1(X2,X3,X4)),k3_xboole_0(X1,k1_enumset1(X2,X3,X4))) ),
    inference(spm,[status(thm)],[c_0_19,c_0_23])).

cnf(c_0_29,negated_conjecture,
    ( k5_xboole_0(k5_xboole_0(k1_enumset1(esk1_0,esk2_0,esk3_0),k1_enumset1(esk4_0,esk5_0,esk6_0)),k3_xboole_0(k1_enumset1(esk1_0,esk2_0,esk3_0),k1_enumset1(esk4_0,esk5_0,esk6_0))) != k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0)),k3_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0))),k5_xboole_0(k5_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k1_tarski(esk6_0)),k3_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k1_tarski(esk6_0)))),k3_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0)),k3_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0))),k5_xboole_0(k5_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k1_tarski(esk6_0)),k3_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k1_tarski(esk6_0))))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_12]),c_0_13]),c_0_13]),c_0_25]),c_0_25]),c_0_26])).

cnf(c_0_30,plain,
    ( k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4)),k3_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4))) = k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)),k3_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4))) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_31,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_30]),c_0_30]),c_0_27])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n002.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 20:46:06 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___300_C01_F1_SE_CS_SP_S0Y
% 0.12/0.37  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.026 s
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t43_enumset1, axiom, ![X1, X2, X3]:k1_enumset1(X1,X2,X3)=k2_xboole_0(k2_tarski(X1,X2),k1_tarski(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t43_enumset1)).
% 0.12/0.37  fof(t41_enumset1, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_enumset1)).
% 0.12/0.37  fof(t94_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t94_xboole_1)).
% 0.12/0.37  fof(t4_xboole_1, axiom, ![X1, X2, X3]:k2_xboole_0(k2_xboole_0(X1,X2),X3)=k2_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_xboole_1)).
% 0.12/0.37  fof(t52_enumset1, conjecture, ![X1, X2, X3, X4, X5, X6]:k4_enumset1(X1,X2,X3,X4,X5,X6)=k2_xboole_0(k2_tarski(X1,X2),k2_enumset1(X3,X4,X5,X6)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t52_enumset1)).
% 0.12/0.37  fof(t46_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t46_enumset1)).
% 0.12/0.37  fof(l62_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k4_enumset1(X1,X2,X3,X4,X5,X6)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X4,X5,X6)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l62_enumset1)).
% 0.12/0.37  fof(c_0_7, plain, ![X24, X25, X26]:k1_enumset1(X24,X25,X26)=k2_xboole_0(k2_tarski(X24,X25),k1_tarski(X26)), inference(variable_rename,[status(thm)],[t43_enumset1])).
% 0.12/0.37  fof(c_0_8, plain, ![X22, X23]:k2_tarski(X22,X23)=k2_xboole_0(k1_tarski(X22),k1_tarski(X23)), inference(variable_rename,[status(thm)],[t41_enumset1])).
% 0.12/0.37  fof(c_0_9, plain, ![X14, X15]:k2_xboole_0(X14,X15)=k5_xboole_0(k5_xboole_0(X14,X15),k3_xboole_0(X14,X15)), inference(variable_rename,[status(thm)],[t94_xboole_1])).
% 0.12/0.37  fof(c_0_10, plain, ![X11, X12, X13]:k2_xboole_0(k2_xboole_0(X11,X12),X13)=k2_xboole_0(X11,k2_xboole_0(X12,X13)), inference(variable_rename,[status(thm)],[t4_xboole_1])).
% 0.12/0.37  cnf(c_0_11, plain, (k1_enumset1(X1,X2,X3)=k2_xboole_0(k2_tarski(X1,X2),k1_tarski(X3))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_12, plain, (k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_13, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_14, plain, (k2_xboole_0(k2_xboole_0(X1,X2),X3)=k2_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.37  fof(c_0_15, negated_conjecture, ~(![X1, X2, X3, X4, X5, X6]:k4_enumset1(X1,X2,X3,X4,X5,X6)=k2_xboole_0(k2_tarski(X1,X2),k2_enumset1(X3,X4,X5,X6))), inference(assume_negation,[status(cth)],[t52_enumset1])).
% 0.12/0.37  fof(c_0_16, plain, ![X27, X28, X29, X30]:k2_enumset1(X27,X28,X29,X30)=k2_xboole_0(k1_enumset1(X27,X28,X29),k1_tarski(X30)), inference(variable_rename,[status(thm)],[t46_enumset1])).
% 0.12/0.37  fof(c_0_17, plain, ![X16, X17, X18, X19, X20, X21]:k4_enumset1(X16,X17,X18,X19,X20,X21)=k2_xboole_0(k1_enumset1(X16,X17,X18),k1_enumset1(X19,X20,X21)), inference(variable_rename,[status(thm)],[l62_enumset1])).
% 0.12/0.37  cnf(c_0_18, plain, (k1_enumset1(X1,X2,X3)=k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_tarski(X2)),k3_xboole_0(k1_tarski(X1),k1_tarski(X2))),k1_tarski(X3)),k3_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_tarski(X2)),k3_xboole_0(k1_tarski(X1),k1_tarski(X2))),k1_tarski(X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_11, c_0_12]), c_0_13]), c_0_13])).
% 0.12/0.37  cnf(c_0_19, plain, (k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)),X3),k3_xboole_0(k5_xboole_0(k5_xboole_0(X1,X2),k3_xboole_0(X1,X2)),X3))=k5_xboole_0(k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X2,X3),k3_xboole_0(X2,X3))),k3_xboole_0(X1,k5_xboole_0(k5_xboole_0(X2,X3),k3_xboole_0(X2,X3))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_14, c_0_13]), c_0_13]), c_0_13]), c_0_13])).
% 0.12/0.37  fof(c_0_20, negated_conjecture, k4_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0)!=k2_xboole_0(k2_tarski(esk1_0,esk2_0),k2_enumset1(esk3_0,esk4_0,esk5_0,esk6_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_15])])])).
% 0.12/0.37  cnf(c_0_21, plain, (k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  cnf(c_0_22, plain, (k4_enumset1(X1,X2,X3,X4,X5,X6)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X4,X5,X6))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.12/0.37  cnf(c_0_23, plain, (k5_xboole_0(k5_xboole_0(k1_tarski(X1),k5_xboole_0(k5_xboole_0(k1_tarski(X2),k1_tarski(X3)),k3_xboole_0(k1_tarski(X2),k1_tarski(X3)))),k3_xboole_0(k1_tarski(X1),k5_xboole_0(k5_xboole_0(k1_tarski(X2),k1_tarski(X3)),k3_xboole_0(k1_tarski(X2),k1_tarski(X3)))))=k1_enumset1(X1,X2,X3)), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.12/0.37  cnf(c_0_24, negated_conjecture, (k4_enumset1(esk1_0,esk2_0,esk3_0,esk4_0,esk5_0,esk6_0)!=k2_xboole_0(k2_tarski(esk1_0,esk2_0),k2_enumset1(esk3_0,esk4_0,esk5_0,esk6_0))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.12/0.37  cnf(c_0_25, plain, (k2_enumset1(X1,X2,X3,X4)=k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)),k3_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)))), inference(rw,[status(thm)],[c_0_21, c_0_13])).
% 0.12/0.37  cnf(c_0_26, plain, (k4_enumset1(X1,X2,X3,X4,X5,X6)=k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X4,X5,X6)),k3_xboole_0(k1_enumset1(X1,X2,X3),k1_enumset1(X4,X5,X6)))), inference(rw,[status(thm)],[c_0_22, c_0_13])).
% 0.12/0.37  cnf(c_0_27, plain, (k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_tarski(X2)),k3_xboole_0(k1_tarski(X1),k1_tarski(X2))),k5_xboole_0(k5_xboole_0(k1_tarski(X3),X4),k3_xboole_0(k1_tarski(X3),X4))),k3_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_tarski(X2)),k3_xboole_0(k1_tarski(X1),k1_tarski(X2))),k5_xboole_0(k5_xboole_0(k1_tarski(X3),X4),k3_xboole_0(k1_tarski(X3),X4))))=k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X2,X3),X4),k3_xboole_0(k1_enumset1(X1,X2,X3),X4))), inference(spm,[status(thm)],[c_0_19, c_0_18])).
% 0.12/0.37  cnf(c_0_28, plain, (k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(X1,k1_tarski(X2)),k3_xboole_0(X1,k1_tarski(X2))),k5_xboole_0(k5_xboole_0(k1_tarski(X3),k1_tarski(X4)),k3_xboole_0(k1_tarski(X3),k1_tarski(X4)))),k3_xboole_0(k5_xboole_0(k5_xboole_0(X1,k1_tarski(X2)),k3_xboole_0(X1,k1_tarski(X2))),k5_xboole_0(k5_xboole_0(k1_tarski(X3),k1_tarski(X4)),k3_xboole_0(k1_tarski(X3),k1_tarski(X4)))))=k5_xboole_0(k5_xboole_0(X1,k1_enumset1(X2,X3,X4)),k3_xboole_0(X1,k1_enumset1(X2,X3,X4)))), inference(spm,[status(thm)],[c_0_19, c_0_23])).
% 0.12/0.37  cnf(c_0_29, negated_conjecture, (k5_xboole_0(k5_xboole_0(k1_enumset1(esk1_0,esk2_0,esk3_0),k1_enumset1(esk4_0,esk5_0,esk6_0)),k3_xboole_0(k1_enumset1(esk1_0,esk2_0,esk3_0),k1_enumset1(esk4_0,esk5_0,esk6_0)))!=k5_xboole_0(k5_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0)),k3_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0))),k5_xboole_0(k5_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k1_tarski(esk6_0)),k3_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k1_tarski(esk6_0)))),k3_xboole_0(k5_xboole_0(k5_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0)),k3_xboole_0(k1_tarski(esk1_0),k1_tarski(esk2_0))),k5_xboole_0(k5_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k1_tarski(esk6_0)),k3_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k1_tarski(esk6_0)))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_12]), c_0_13]), c_0_13]), c_0_25]), c_0_25]), c_0_26])).
% 0.12/0.37  cnf(c_0_30, plain, (k5_xboole_0(k5_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4)),k3_xboole_0(k1_tarski(X1),k1_enumset1(X2,X3,X4)))=k5_xboole_0(k5_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)),k3_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)))), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.12/0.37  cnf(c_0_31, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_30]), c_0_30]), c_0_27])]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 32
% 0.12/0.37  # Proof object clause steps            : 17
% 0.12/0.37  # Proof object formula steps           : 15
% 0.12/0.37  # Proof object conjectures             : 6
% 0.12/0.37  # Proof object clause conjectures      : 3
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 7
% 0.12/0.37  # Proof object initial formulas used   : 7
% 0.12/0.37  # Proof object generating inferences   : 4
% 0.12/0.37  # Proof object simplifying inferences  : 19
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 8
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 8
% 0.12/0.37  # Removed in clause preprocessing      : 4
% 0.12/0.37  # Initial clauses in saturation        : 4
% 0.12/0.37  # Processed clauses                    : 8
% 0.12/0.37  # ...of these trivial                  : 1
% 0.12/0.37  # ...subsumed                          : 0
% 0.12/0.37  # ...remaining for further processing  : 7
% 0.12/0.37  # Other redundant clauses eliminated   : 0
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 1
% 0.12/0.37  # Generated clauses                    : 55
% 0.12/0.37  # ...of the previous two non-trivial   : 42
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 55
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 0
% 0.12/0.37  # Propositional unsat checks           : 0
% 0.12/0.37  #    Propositional check models        : 0
% 0.12/0.37  #    Propositional check unsatisfiable : 0
% 0.12/0.37  #    Propositional clauses             : 0
% 0.12/0.37  #    Propositional clauses after purity: 0
% 0.12/0.37  #    Propositional unsat core size     : 0
% 0.12/0.37  #    Propositional preprocessing time  : 0.000
% 0.12/0.37  #    Propositional encoding time       : 0.000
% 0.12/0.37  #    Propositional solver time         : 0.000
% 0.12/0.37  #    Success case prop preproc time    : 0.000
% 0.12/0.37  #    Success case prop encoding time   : 0.000
% 0.12/0.37  #    Success case prop solver time     : 0.000
% 0.12/0.37  # Current number of processed clauses  : 6
% 0.12/0.37  #    Positive orientable unit clauses  : 4
% 0.12/0.37  #    Positive unorientable unit clauses: 2
% 0.12/0.37  #    Negative unit clauses             : 0
% 0.12/0.37  #    Non-unit-clauses                  : 0
% 0.12/0.37  # Current number of unprocessed clauses: 38
% 0.12/0.37  # ...number of literals in the above   : 38
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 5
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 0
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 0
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.37  # Unit Clause-clause subsumption calls : 0
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 5
% 0.12/0.37  # BW rewrite match successes           : 2
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 4110
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.025 s
% 0.12/0.37  # System time              : 0.005 s
% 0.12/0.37  # Total time               : 0.031 s
% 0.12/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
