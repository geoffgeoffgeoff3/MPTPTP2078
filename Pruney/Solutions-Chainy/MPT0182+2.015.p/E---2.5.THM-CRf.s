%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:36:10 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   37 ( 263 expanded)
%              Number of clauses        :   20 ( 102 expanded)
%              Number of leaves         :    8 (  80 expanded)
%              Depth                    :    7
%              Number of atoms          :   37 ( 263 expanded)
%              Number of equality atoms :   36 ( 262 expanded)
%              Maximal formula depth    :    5 (   2 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t99_enumset1,conjecture,(
    ! [X1,X2,X3] : k1_enumset1(X1,X2,X3) = k1_enumset1(X2,X1,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t99_enumset1)).

fof(t98_enumset1,axiom,(
    ! [X1,X2,X3] : k1_enumset1(X1,X2,X3) = k1_enumset1(X1,X3,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(t46_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_enumset1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1,X2,X3] : k1_enumset1(X1,X2,X3) = k1_enumset1(X2,X1,X3) ),
    inference(assume_negation,[status(cth)],[t99_enumset1])).

fof(c_0_9,plain,(
    ! [X21,X22,X23] : k1_enumset1(X21,X22,X23) = k1_enumset1(X21,X23,X22) ),
    inference(variable_rename,[status(thm)],[t98_enumset1])).

fof(c_0_10,plain,(
    ! [X14,X15,X16] : k2_enumset1(X14,X14,X15,X16) = k1_enumset1(X14,X15,X16) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_11,plain,(
    ! [X17,X18,X19,X20] : k3_enumset1(X17,X17,X18,X19,X20) = k2_enumset1(X17,X18,X19,X20) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_12,plain,(
    ! [X7,X8,X9,X10] : k2_enumset1(X7,X8,X9,X10) = k2_xboole_0(k1_enumset1(X7,X8,X9),k1_tarski(X10)) ),
    inference(variable_rename,[status(thm)],[t46_enumset1])).

fof(c_0_13,plain,(
    ! [X11] : k2_tarski(X11,X11) = k1_tarski(X11) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_14,plain,(
    ! [X12,X13] : k1_enumset1(X12,X12,X13) = k2_tarski(X12,X13) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_15,negated_conjecture,(
    k1_enumset1(esk1_0,esk2_0,esk3_0) != k1_enumset1(esk2_0,esk1_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])).

cnf(c_0_16,plain,
    ( k1_enumset1(X1,X2,X3) = k1_enumset1(X1,X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_22,plain,(
    ! [X5,X6] : k2_tarski(X5,X6) = k2_tarski(X6,X5) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

cnf(c_0_23,negated_conjecture,
    ( k1_enumset1(esk1_0,esk2_0,esk3_0) != k1_enumset1(esk2_0,esk1_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_24,plain,
    ( k3_enumset1(X1,X1,X1,X2,X3) = k3_enumset1(X1,X1,X1,X3,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16,c_0_17]),c_0_17]),c_0_18]),c_0_18])).

cnf(c_0_25,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_xboole_0(k3_enumset1(X1,X1,X1,X2,X3),k3_enumset1(X4,X4,X4,X4,X4)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19,c_0_20]),c_0_21]),c_0_17]),c_0_17]),c_0_18]),c_0_18]),c_0_18])).

cnf(c_0_26,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_27,negated_conjecture,
    ( k3_enumset1(esk2_0,esk2_0,esk2_0,esk1_0,esk3_0) != k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23,c_0_17]),c_0_17]),c_0_18]),c_0_18])).

cnf(c_0_28,plain,
    ( k2_xboole_0(k3_enumset1(X1,X1,X1,X1,X2),k3_enumset1(X3,X3,X3,X3,X3)) = k3_enumset1(X1,X1,X1,X3,X2) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_29,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_xboole_0(k3_enumset1(X1,X1,X1,X3,X2),k3_enumset1(X4,X4,X4,X4,X4)) ),
    inference(spm,[status(thm)],[c_0_25,c_0_24])).

cnf(c_0_30,plain,
    ( k3_enumset1(X1,X1,X1,X1,X2) = k3_enumset1(X2,X2,X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_21]),c_0_21]),c_0_17]),c_0_17]),c_0_18]),c_0_18])).

cnf(c_0_31,negated_conjecture,
    ( k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0) != k2_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk3_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) ),
    inference(rw,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_32,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k3_enumset1(X1,X1,X3,X2,X4) ),
    inference(spm,[status(thm)],[c_0_25,c_0_29])).

cnf(c_0_33,plain,
    ( k3_enumset1(X1,X1,X1,X2,X3) = k2_xboole_0(k3_enumset1(X2,X2,X2,X2,X1),k3_enumset1(X3,X3,X3,X3,X3)) ),
    inference(spm,[status(thm)],[c_0_25,c_0_30])).

cnf(c_0_34,negated_conjecture,
    ( k3_enumset1(esk1_0,esk1_0,esk2_0,esk1_0,esk3_0) != k2_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk3_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) ),
    inference(rw,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_35,plain,
    ( k3_enumset1(X1,X1,X2,X1,X3) = k3_enumset1(X2,X2,X2,X1,X3) ),
    inference(spm,[status(thm)],[c_0_29,c_0_33])).

cnf(c_0_36,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_34,c_0_35]),c_0_28])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n020.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 10:15:52 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.35  # No SInE strategy applied
% 0.12/0.35  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic H_____102_B08_00_F1_PI_AE_CS_SP_PS_S2S
% 0.19/0.38  # and selection function SelectNewComplexAHP.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.026 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t99_enumset1, conjecture, ![X1, X2, X3]:k1_enumset1(X1,X2,X3)=k1_enumset1(X2,X1,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t99_enumset1)).
% 0.19/0.38  fof(t98_enumset1, axiom, ![X1, X2, X3]:k1_enumset1(X1,X2,X3)=k1_enumset1(X1,X3,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t98_enumset1)).
% 0.19/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.19/0.38  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.19/0.38  fof(t46_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_enumset1)).
% 0.19/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.19/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.19/0.38  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.19/0.38  fof(c_0_8, negated_conjecture, ~(![X1, X2, X3]:k1_enumset1(X1,X2,X3)=k1_enumset1(X2,X1,X3)), inference(assume_negation,[status(cth)],[t99_enumset1])).
% 0.19/0.38  fof(c_0_9, plain, ![X21, X22, X23]:k1_enumset1(X21,X22,X23)=k1_enumset1(X21,X23,X22), inference(variable_rename,[status(thm)],[t98_enumset1])).
% 0.19/0.38  fof(c_0_10, plain, ![X14, X15, X16]:k2_enumset1(X14,X14,X15,X16)=k1_enumset1(X14,X15,X16), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.19/0.38  fof(c_0_11, plain, ![X17, X18, X19, X20]:k3_enumset1(X17,X17,X18,X19,X20)=k2_enumset1(X17,X18,X19,X20), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.19/0.38  fof(c_0_12, plain, ![X7, X8, X9, X10]:k2_enumset1(X7,X8,X9,X10)=k2_xboole_0(k1_enumset1(X7,X8,X9),k1_tarski(X10)), inference(variable_rename,[status(thm)],[t46_enumset1])).
% 0.19/0.38  fof(c_0_13, plain, ![X11]:k2_tarski(X11,X11)=k1_tarski(X11), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.19/0.38  fof(c_0_14, plain, ![X12, X13]:k1_enumset1(X12,X12,X13)=k2_tarski(X12,X13), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.19/0.38  fof(c_0_15, negated_conjecture, k1_enumset1(esk1_0,esk2_0,esk3_0)!=k1_enumset1(esk2_0,esk1_0,esk3_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])).
% 0.19/0.38  cnf(c_0_16, plain, (k1_enumset1(X1,X2,X3)=k1_enumset1(X1,X3,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.19/0.38  cnf(c_0_17, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.19/0.38  cnf(c_0_18, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  cnf(c_0_19, plain, (k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.38  cnf(c_0_20, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.38  cnf(c_0_21, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.38  fof(c_0_22, plain, ![X5, X6]:k2_tarski(X5,X6)=k2_tarski(X6,X5), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.19/0.38  cnf(c_0_23, negated_conjecture, (k1_enumset1(esk1_0,esk2_0,esk3_0)!=k1_enumset1(esk2_0,esk1_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_24, plain, (k3_enumset1(X1,X1,X1,X2,X3)=k3_enumset1(X1,X1,X1,X3,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_16, c_0_17]), c_0_17]), c_0_18]), c_0_18])).
% 0.19/0.38  cnf(c_0_25, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_xboole_0(k3_enumset1(X1,X1,X1,X2,X3),k3_enumset1(X4,X4,X4,X4,X4))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_19, c_0_20]), c_0_21]), c_0_17]), c_0_17]), c_0_18]), c_0_18]), c_0_18])).
% 0.19/0.38  cnf(c_0_26, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.38  cnf(c_0_27, negated_conjecture, (k3_enumset1(esk2_0,esk2_0,esk2_0,esk1_0,esk3_0)!=k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23, c_0_17]), c_0_17]), c_0_18]), c_0_18])).
% 0.19/0.38  cnf(c_0_28, plain, (k2_xboole_0(k3_enumset1(X1,X1,X1,X1,X2),k3_enumset1(X3,X3,X3,X3,X3))=k3_enumset1(X1,X1,X1,X3,X2)), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.19/0.38  cnf(c_0_29, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_xboole_0(k3_enumset1(X1,X1,X1,X3,X2),k3_enumset1(X4,X4,X4,X4,X4))), inference(spm,[status(thm)],[c_0_25, c_0_24])).
% 0.19/0.38  cnf(c_0_30, plain, (k3_enumset1(X1,X1,X1,X1,X2)=k3_enumset1(X2,X2,X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_21]), c_0_21]), c_0_17]), c_0_17]), c_0_18]), c_0_18])).
% 0.19/0.38  cnf(c_0_31, negated_conjecture, (k3_enumset1(esk1_0,esk1_0,esk1_0,esk2_0,esk3_0)!=k2_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk3_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))), inference(rw,[status(thm)],[c_0_27, c_0_28])).
% 0.19/0.38  cnf(c_0_32, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k3_enumset1(X1,X1,X3,X2,X4)), inference(spm,[status(thm)],[c_0_25, c_0_29])).
% 0.19/0.38  cnf(c_0_33, plain, (k3_enumset1(X1,X1,X1,X2,X3)=k2_xboole_0(k3_enumset1(X2,X2,X2,X2,X1),k3_enumset1(X3,X3,X3,X3,X3))), inference(spm,[status(thm)],[c_0_25, c_0_30])).
% 0.19/0.38  cnf(c_0_34, negated_conjecture, (k3_enumset1(esk1_0,esk1_0,esk2_0,esk1_0,esk3_0)!=k2_xboole_0(k3_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk3_0),k3_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))), inference(rw,[status(thm)],[c_0_31, c_0_32])).
% 0.19/0.38  cnf(c_0_35, plain, (k3_enumset1(X1,X1,X2,X1,X3)=k3_enumset1(X2,X2,X2,X1,X3)), inference(spm,[status(thm)],[c_0_29, c_0_33])).
% 0.19/0.38  cnf(c_0_36, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_34, c_0_35]), c_0_28])]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 37
% 0.19/0.38  # Proof object clause steps            : 20
% 0.19/0.38  # Proof object formula steps           : 17
% 0.19/0.38  # Proof object conjectures             : 8
% 0.19/0.38  # Proof object clause conjectures      : 5
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 8
% 0.19/0.38  # Proof object initial formulas used   : 8
% 0.19/0.38  # Proof object generating inferences   : 5
% 0.19/0.38  # Proof object simplifying inferences  : 26
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 8
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 8
% 0.19/0.38  # Removed in clause preprocessing      : 4
% 0.19/0.38  # Initial clauses in saturation        : 4
% 0.19/0.38  # Processed clauses                    : 139
% 0.19/0.38  # ...of these trivial                  : 0
% 0.19/0.38  # ...subsumed                          : 114
% 0.19/0.38  # ...remaining for further processing  : 25
% 0.19/0.38  # Other redundant clauses eliminated   : 0
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 0
% 0.19/0.38  # Backward-rewritten                   : 3
% 0.19/0.38  # Generated clauses                    : 615
% 0.19/0.38  # ...of the previous two non-trivial   : 550
% 0.19/0.38  # Contextual simplify-reflections      : 0
% 0.19/0.38  # Paramodulations                      : 615
% 0.19/0.38  # Factorizations                       : 0
% 0.19/0.38  # Equation resolutions                 : 0
% 0.19/0.38  # Propositional unsat checks           : 0
% 0.19/0.38  #    Propositional check models        : 0
% 0.19/0.38  #    Propositional check unsatisfiable : 0
% 0.19/0.38  #    Propositional clauses             : 0
% 0.19/0.38  #    Propositional clauses after purity: 0
% 0.19/0.38  #    Propositional unsat core size     : 0
% 0.19/0.38  #    Propositional preprocessing time  : 0.000
% 0.19/0.38  #    Propositional encoding time       : 0.000
% 0.19/0.38  #    Propositional solver time         : 0.000
% 0.19/0.38  #    Success case prop preproc time    : 0.000
% 0.19/0.38  #    Success case prop encoding time   : 0.000
% 0.19/0.38  #    Success case prop solver time     : 0.000
% 0.19/0.38  # Current number of processed clauses  : 18
% 0.19/0.38  #    Positive orientable unit clauses  : 0
% 0.19/0.38  #    Positive unorientable unit clauses: 18
% 0.19/0.38  #    Negative unit clauses             : 0
% 0.19/0.38  #    Non-unit-clauses                  : 0
% 0.19/0.38  # Current number of unprocessed clauses: 419
% 0.19/0.38  # ...number of literals in the above   : 419
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 11
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 0
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 0
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.19/0.38  # Unit Clause-clause subsumption calls : 130
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 438
% 0.19/0.38  # BW rewrite match successes           : 256
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 2835
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.031 s
% 0.19/0.38  # System time              : 0.003 s
% 0.19/0.38  # Total time               : 0.034 s
% 0.19/0.38  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
