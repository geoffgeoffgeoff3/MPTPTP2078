%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n017.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:44:17 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   43 ( 156 expanded)
%              Number of clauses        :   22 (  62 expanded)
%              Number of leaves         :   10 (  46 expanded)
%              Depth                    :    8
%              Number of atoms          :   56 ( 172 expanded)
%              Number of equality atoms :   41 ( 154 expanded)
%              Maximal formula depth    :    7 (   3 average)
%              Maximal clause size      :    3 (   1 average)
%              Maximal term depth       :    9 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t140_zfmisc_1,conjecture,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => k2_xboole_0(k4_xboole_0(X2,k1_tarski(X1)),k1_tarski(X1)) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t140_zfmisc_1)).

fof(t95_xboole_1,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_xboole_1)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t77_enumset1,axiom,(
    ! [X1,X2] : k2_enumset1(X1,X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t77_enumset1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_xboole_1)).

fof(t48_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(X1,X2)
        & r2_hidden(X3,X2) )
     => k2_xboole_0(k2_tarski(X1,X3),X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_zfmisc_1)).

fof(c_0_10,negated_conjecture,(
    ~ ! [X1,X2] :
        ( r2_hidden(X1,X2)
       => k2_xboole_0(k4_xboole_0(X2,k1_tarski(X1)),k1_tarski(X1)) = X2 ) ),
    inference(assume_negation,[status(cth)],[t140_zfmisc_1])).

fof(c_0_11,plain,(
    ! [X11,X12] : k3_xboole_0(X11,X12) = k5_xboole_0(k5_xboole_0(X11,X12),k2_xboole_0(X11,X12)) ),
    inference(variable_rename,[status(thm)],[t95_xboole_1])).

fof(c_0_12,plain,(
    ! [X18,X19] : k3_tarski(k2_tarski(X18,X19)) = k2_xboole_0(X18,X19) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_13,plain,(
    ! [X16,X17] : k2_enumset1(X16,X16,X16,X17) = k2_tarski(X16,X17) ),
    inference(variable_rename,[status(thm)],[t77_enumset1])).

fof(c_0_14,negated_conjecture,
    ( r2_hidden(esk1_0,esk2_0)
    & k2_xboole_0(k4_xboole_0(esk2_0,k1_tarski(esk1_0)),k1_tarski(esk1_0)) != esk2_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).

fof(c_0_15,plain,(
    ! [X15] : k2_tarski(X15,X15) = k1_tarski(X15) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_16,plain,(
    ! [X4,X5] : k4_xboole_0(X4,X5) = k5_xboole_0(X4,k3_xboole_0(X4,X5)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

cnf(c_0_17,plain,
    ( k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( k2_enumset1(X1,X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_20,negated_conjecture,
    ( k2_xboole_0(k4_xboole_0(esk2_0,k1_tarski(esk1_0)),k1_tarski(esk1_0)) != esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_21,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_23,plain,
    ( k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k2_enumset1(X1,X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17,c_0_18]),c_0_19])).

fof(c_0_24,plain,(
    ! [X8,X9,X10] : k5_xboole_0(k5_xboole_0(X8,X9),X10) = k5_xboole_0(X8,k5_xboole_0(X9,X10)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

fof(c_0_25,plain,(
    ! [X13,X14] : k2_tarski(X13,X14) = k2_tarski(X14,X13) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

fof(c_0_26,plain,(
    ! [X6,X7] : k2_xboole_0(X6,k4_xboole_0(X7,X6)) = k2_xboole_0(X6,X7) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

cnf(c_0_27,negated_conjecture,
    ( k3_tarski(k2_enumset1(k5_xboole_0(esk2_0,k5_xboole_0(k5_xboole_0(esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))))),k5_xboole_0(esk2_0,k5_xboole_0(k5_xboole_0(esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))))),k5_xboole_0(esk2_0,k5_xboole_0(k5_xboole_0(esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))))),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))) != esk2_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_21]),c_0_21]),c_0_18]),c_0_19]),c_0_19]),c_0_19]),c_0_22]),c_0_22]),c_0_22]),c_0_23]),c_0_23]),c_0_23])).

cnf(c_0_28,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_29,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_30,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_31,plain,(
    ! [X20,X21,X22] :
      ( ~ r2_hidden(X20,X21)
      | ~ r2_hidden(X22,X21)
      | k2_xboole_0(k2_tarski(X20,X22),X21) = X21 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_zfmisc_1])])).

cnf(c_0_32,negated_conjecture,
    ( k3_tarski(k2_enumset1(k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))))),k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))))),k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))))),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))) != esk2_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_28]),c_0_28]),c_0_28])).

cnf(c_0_33,plain,
    ( k2_enumset1(X1,X1,X1,X2) = k2_enumset1(X2,X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_19]),c_0_19])).

cnf(c_0_34,plain,
    ( k3_tarski(k2_enumset1(X1,X1,X1,k5_xboole_0(X2,k5_xboole_0(k5_xboole_0(X2,X1),k3_tarski(k2_enumset1(X2,X2,X2,X1)))))) = k3_tarski(k2_enumset1(X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30,c_0_18]),c_0_18]),c_0_19]),c_0_19]),c_0_22]),c_0_23])).

cnf(c_0_35,plain,
    ( k2_xboole_0(k2_tarski(X1,X3),X2) = X2
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_36,negated_conjecture,
    ( k3_tarski(k2_enumset1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))))))) != esk2_0 ),
    inference(rw,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_37,plain,
    ( k3_tarski(k2_enumset1(X1,X1,X1,k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X1,k3_tarski(k2_enumset1(X2,X2,X2,X1))))))) = k3_tarski(k2_enumset1(X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[c_0_34,c_0_28])).

cnf(c_0_38,plain,
    ( k3_tarski(k2_enumset1(k2_enumset1(X1,X1,X1,X3),k2_enumset1(X1,X1,X1,X3),k2_enumset1(X1,X1,X1,X3),X2)) = X2
    | ~ r2_hidden(X3,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_18]),c_0_19]),c_0_19])).

cnf(c_0_39,negated_conjecture,
    ( k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))) != esk2_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36,c_0_37]),c_0_33])).

cnf(c_0_40,plain,
    ( k3_tarski(k2_enumset1(X1,X1,X1,k2_enumset1(X2,X2,X2,X3))) = X1
    | ~ r2_hidden(X3,X1)
    | ~ r2_hidden(X2,X1) ),
    inference(spm,[status(thm)],[c_0_38,c_0_33])).

cnf(c_0_41,negated_conjecture,
    ( r2_hidden(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_42,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_41])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n017.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 19:47:46 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.19/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.026 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t140_zfmisc_1, conjecture, ![X1, X2]:(r2_hidden(X1,X2)=>k2_xboole_0(k4_xboole_0(X2,k1_tarski(X1)),k1_tarski(X1))=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t140_zfmisc_1)).
% 0.19/0.38  fof(t95_xboole_1, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t95_xboole_1)).
% 0.19/0.38  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.19/0.38  fof(t77_enumset1, axiom, ![X1, X2]:k2_enumset1(X1,X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t77_enumset1)).
% 0.19/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.19/0.38  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.19/0.38  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.19/0.38  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.19/0.38  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.19/0.38  fof(t48_zfmisc_1, axiom, ![X1, X2, X3]:((r2_hidden(X1,X2)&r2_hidden(X3,X2))=>k2_xboole_0(k2_tarski(X1,X3),X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_zfmisc_1)).
% 0.19/0.38  fof(c_0_10, negated_conjecture, ~(![X1, X2]:(r2_hidden(X1,X2)=>k2_xboole_0(k4_xboole_0(X2,k1_tarski(X1)),k1_tarski(X1))=X2)), inference(assume_negation,[status(cth)],[t140_zfmisc_1])).
% 0.19/0.38  fof(c_0_11, plain, ![X11, X12]:k3_xboole_0(X11,X12)=k5_xboole_0(k5_xboole_0(X11,X12),k2_xboole_0(X11,X12)), inference(variable_rename,[status(thm)],[t95_xboole_1])).
% 0.19/0.38  fof(c_0_12, plain, ![X18, X19]:k3_tarski(k2_tarski(X18,X19))=k2_xboole_0(X18,X19), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.19/0.38  fof(c_0_13, plain, ![X16, X17]:k2_enumset1(X16,X16,X16,X17)=k2_tarski(X16,X17), inference(variable_rename,[status(thm)],[t77_enumset1])).
% 0.19/0.38  fof(c_0_14, negated_conjecture, (r2_hidden(esk1_0,esk2_0)&k2_xboole_0(k4_xboole_0(esk2_0,k1_tarski(esk1_0)),k1_tarski(esk1_0))!=esk2_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).
% 0.19/0.38  fof(c_0_15, plain, ![X15]:k2_tarski(X15,X15)=k1_tarski(X15), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.19/0.38  fof(c_0_16, plain, ![X4, X5]:k4_xboole_0(X4,X5)=k5_xboole_0(X4,k3_xboole_0(X4,X5)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.19/0.38  cnf(c_0_17, plain, (k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.38  cnf(c_0_18, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.38  cnf(c_0_19, plain, (k2_enumset1(X1,X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.38  cnf(c_0_20, negated_conjecture, (k2_xboole_0(k4_xboole_0(esk2_0,k1_tarski(esk1_0)),k1_tarski(esk1_0))!=esk2_0), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.38  cnf(c_0_21, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.38  cnf(c_0_22, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.38  cnf(c_0_23, plain, (k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k2_enumset1(X1,X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17, c_0_18]), c_0_19])).
% 0.19/0.38  fof(c_0_24, plain, ![X8, X9, X10]:k5_xboole_0(k5_xboole_0(X8,X9),X10)=k5_xboole_0(X8,k5_xboole_0(X9,X10)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.19/0.38  fof(c_0_25, plain, ![X13, X14]:k2_tarski(X13,X14)=k2_tarski(X14,X13), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.19/0.38  fof(c_0_26, plain, ![X6, X7]:k2_xboole_0(X6,k4_xboole_0(X7,X6))=k2_xboole_0(X6,X7), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.19/0.38  cnf(c_0_27, negated_conjecture, (k3_tarski(k2_enumset1(k5_xboole_0(esk2_0,k5_xboole_0(k5_xboole_0(esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))))),k5_xboole_0(esk2_0,k5_xboole_0(k5_xboole_0(esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))))),k5_xboole_0(esk2_0,k5_xboole_0(k5_xboole_0(esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))))),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))!=esk2_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_21]), c_0_21]), c_0_18]), c_0_19]), c_0_19]), c_0_19]), c_0_22]), c_0_22]), c_0_22]), c_0_23]), c_0_23]), c_0_23])).
% 0.19/0.38  cnf(c_0_28, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.38  cnf(c_0_29, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.38  cnf(c_0_30, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.38  fof(c_0_31, plain, ![X20, X21, X22]:(~r2_hidden(X20,X21)|~r2_hidden(X22,X21)|k2_xboole_0(k2_tarski(X20,X22),X21)=X21), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t48_zfmisc_1])])).
% 0.19/0.38  cnf(c_0_32, negated_conjecture, (k3_tarski(k2_enumset1(k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))))),k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))))),k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))))),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))!=esk2_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_28]), c_0_28]), c_0_28])).
% 0.19/0.38  cnf(c_0_33, plain, (k2_enumset1(X1,X1,X1,X2)=k2_enumset1(X2,X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_19]), c_0_19])).
% 0.19/0.38  cnf(c_0_34, plain, (k3_tarski(k2_enumset1(X1,X1,X1,k5_xboole_0(X2,k5_xboole_0(k5_xboole_0(X2,X1),k3_tarski(k2_enumset1(X2,X2,X2,X1))))))=k3_tarski(k2_enumset1(X1,X1,X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_30, c_0_18]), c_0_18]), c_0_19]), c_0_19]), c_0_22]), c_0_23])).
% 0.19/0.38  cnf(c_0_35, plain, (k2_xboole_0(k2_tarski(X1,X3),X2)=X2|~r2_hidden(X1,X2)|~r2_hidden(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.19/0.38  cnf(c_0_36, negated_conjecture, (k3_tarski(k2_enumset1(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0),k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0))))))))!=esk2_0), inference(rw,[status(thm)],[c_0_32, c_0_33])).
% 0.19/0.38  cnf(c_0_37, plain, (k3_tarski(k2_enumset1(X1,X1,X1,k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X1,k3_tarski(k2_enumset1(X2,X2,X2,X1)))))))=k3_tarski(k2_enumset1(X1,X1,X1,X2))), inference(rw,[status(thm)],[c_0_34, c_0_28])).
% 0.19/0.38  cnf(c_0_38, plain, (k3_tarski(k2_enumset1(k2_enumset1(X1,X1,X1,X3),k2_enumset1(X1,X1,X1,X3),k2_enumset1(X1,X1,X1,X3),X2))=X2|~r2_hidden(X3,X2)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_18]), c_0_19]), c_0_19])).
% 0.19/0.38  cnf(c_0_39, negated_conjecture, (k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k2_enumset1(esk1_0,esk1_0,esk1_0,esk1_0)))!=esk2_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36, c_0_37]), c_0_33])).
% 0.19/0.38  cnf(c_0_40, plain, (k3_tarski(k2_enumset1(X1,X1,X1,k2_enumset1(X2,X2,X2,X3)))=X1|~r2_hidden(X3,X1)|~r2_hidden(X2,X1)), inference(spm,[status(thm)],[c_0_38, c_0_33])).
% 0.19/0.38  cnf(c_0_41, negated_conjecture, (r2_hidden(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.38  cnf(c_0_42, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_41])]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 43
% 0.19/0.38  # Proof object clause steps            : 22
% 0.19/0.38  # Proof object formula steps           : 21
% 0.19/0.38  # Proof object conjectures             : 10
% 0.19/0.38  # Proof object clause conjectures      : 7
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 11
% 0.19/0.38  # Proof object initial formulas used   : 10
% 0.19/0.38  # Proof object generating inferences   : 2
% 0.19/0.38  # Proof object simplifying inferences  : 34
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 10
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 11
% 0.19/0.38  # Removed in clause preprocessing      : 5
% 0.19/0.38  # Initial clauses in saturation        : 6
% 0.19/0.38  # Processed clauses                    : 18
% 0.19/0.38  # ...of these trivial                  : 0
% 0.19/0.38  # ...subsumed                          : 2
% 0.19/0.38  # ...remaining for further processing  : 16
% 0.19/0.38  # Other redundant clauses eliminated   : 0
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 0
% 0.19/0.38  # Backward-rewritten                   : 3
% 0.19/0.38  # Generated clauses                    : 26
% 0.19/0.38  # ...of the previous two non-trivial   : 21
% 0.19/0.38  # Contextual simplify-reflections      : 0
% 0.19/0.38  # Paramodulations                      : 26
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
% 0.19/0.38  # Current number of processed clauses  : 7
% 0.19/0.38  #    Positive orientable unit clauses  : 3
% 0.19/0.38  #    Positive unorientable unit clauses: 1
% 0.19/0.38  #    Negative unit clauses             : 1
% 0.19/0.38  #    Non-unit-clauses                  : 2
% 0.19/0.38  # Current number of unprocessed clauses: 15
% 0.19/0.38  # ...number of literals in the above   : 33
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 14
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 1
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 1
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.19/0.38  # Unit Clause-clause subsumption calls : 0
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 14
% 0.19/0.38  # BW rewrite match successes           : 12
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 1046
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.026 s
% 0.19/0.38  # System time              : 0.005 s
% 0.19/0.38  # Total time               : 0.031 s
% 0.19/0.38  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
