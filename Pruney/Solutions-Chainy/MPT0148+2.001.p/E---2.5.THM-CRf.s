%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n007.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:35:23 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   30 ( 101 expanded)
%              Number of clauses        :   15 (  42 expanded)
%              Number of leaves         :    7 (  29 expanded)
%              Depth                    :    8
%              Number of atoms          :   30 ( 101 expanded)
%              Number of equality atoms :   29 ( 100 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    9 (   3 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t43_enumset1,axiom,(
    ! [X1,X2,X3] : k1_enumset1(X1,X2,X3) = k2_xboole_0(k2_tarski(X1,X2),k1_tarski(X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t43_enumset1)).

fof(t41_enumset1,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_enumset1)).

fof(t46_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_enumset1)).

fof(t64_enumset1,conjecture,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8] : k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k1_enumset1(X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_enumset1)).

fof(t50_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t50_enumset1)).

fof(l75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8] : k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l75_enumset1)).

fof(t4_xboole_1,axiom,(
    ! [X1,X2,X3] : k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_xboole_1)).

fof(c_0_7,plain,(
    ! [X43,X44,X45] : k1_enumset1(X43,X44,X45) = k2_xboole_0(k2_tarski(X43,X44),k1_tarski(X45)) ),
    inference(variable_rename,[status(thm)],[t43_enumset1])).

fof(c_0_8,plain,(
    ! [X41,X42] : k2_tarski(X41,X42) = k2_xboole_0(k1_tarski(X41),k1_tarski(X42)) ),
    inference(variable_rename,[status(thm)],[t41_enumset1])).

fof(c_0_9,plain,(
    ! [X46,X47,X48,X49] : k2_enumset1(X46,X47,X48,X49) = k2_xboole_0(k1_enumset1(X46,X47,X48),k1_tarski(X49)) ),
    inference(variable_rename,[status(thm)],[t46_enumset1])).

cnf(c_0_10,plain,
    ( k1_enumset1(X1,X2,X3) = k2_xboole_0(k2_tarski(X1,X2),k1_tarski(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,plain,
    ( k2_tarski(X1,X2) = k2_xboole_0(k1_tarski(X1),k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5,X6,X7,X8] : k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k1_enumset1(X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)) ),
    inference(assume_negation,[status(cth)],[t64_enumset1])).

fof(c_0_13,plain,(
    ! [X50,X51,X52,X53,X54] : k3_enumset1(X50,X51,X52,X53,X54) = k2_xboole_0(k2_enumset1(X50,X51,X52,X53),k1_tarski(X54)) ),
    inference(variable_rename,[status(thm)],[t50_enumset1])).

cnf(c_0_14,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( k1_enumset1(X1,X2,X3) = k2_xboole_0(k2_xboole_0(k1_tarski(X1),k1_tarski(X2)),k1_tarski(X3)) ),
    inference(rw,[status(thm)],[c_0_10,c_0_11])).

fof(c_0_16,negated_conjecture,(
    k6_enumset1(esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0,esk10_0) != k2_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k3_enumset1(esk6_0,esk7_0,esk8_0,esk9_0,esk10_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).

cnf(c_0_17,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_18,plain,
    ( k2_enumset1(X1,X2,X3,X4) = k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(X1),k1_tarski(X2)),k1_tarski(X3)),k1_tarski(X4)) ),
    inference(rw,[status(thm)],[c_0_14,c_0_15])).

fof(c_0_19,plain,(
    ! [X33,X34,X35,X36,X37,X38,X39,X40] : k6_enumset1(X33,X34,X35,X36,X37,X38,X39,X40) = k2_xboole_0(k2_enumset1(X33,X34,X35,X36),k2_enumset1(X37,X38,X39,X40)) ),
    inference(variable_rename,[status(thm)],[l75_enumset1])).

cnf(c_0_20,negated_conjecture,
    ( k6_enumset1(esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0,esk10_0) != k2_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k3_enumset1(esk6_0,esk7_0,esk8_0,esk9_0,esk10_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(X1),k1_tarski(X2)),k1_tarski(X3)),k1_tarski(X4)),k1_tarski(X5)) ),
    inference(rw,[status(thm)],[c_0_17,c_0_18])).

fof(c_0_22,plain,(
    ! [X14,X15,X16] : k2_xboole_0(k2_xboole_0(X14,X15),X16) = k2_xboole_0(X14,k2_xboole_0(X15,X16)) ),
    inference(variable_rename,[status(thm)],[t4_xboole_1])).

cnf(c_0_23,plain,
    ( k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_24,negated_conjecture,
    ( k6_enumset1(esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0,esk10_0) != k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),k1_tarski(esk5_0)),k2_xboole_0(k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(esk6_0),k1_tarski(esk7_0)),k1_tarski(esk8_0)),k1_tarski(esk9_0)),k1_tarski(esk10_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_15]),c_0_21])).

cnf(c_0_25,plain,
    ( k2_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_26,plain,
    ( k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(X1),k1_tarski(X2)),k1_tarski(X3)),k1_tarski(X4)),k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(X5),k1_tarski(X6)),k1_tarski(X7)),k1_tarski(X8))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23,c_0_18]),c_0_18])).

cnf(c_0_27,negated_conjecture,
    ( k2_xboole_0(k1_tarski(esk3_0),k2_xboole_0(k1_tarski(esk4_0),k2_xboole_0(k1_tarski(esk5_0),k2_xboole_0(k1_tarski(esk6_0),k2_xboole_0(k1_tarski(esk7_0),k2_xboole_0(k1_tarski(esk8_0),k2_xboole_0(k1_tarski(esk9_0),k1_tarski(esk10_0)))))))) != k6_enumset1(esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0,esk10_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24,c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_25])).

cnf(c_0_28,plain,
    ( k2_xboole_0(k1_tarski(X1),k2_xboole_0(k1_tarski(X2),k2_xboole_0(k1_tarski(X3),k2_xboole_0(k1_tarski(X4),k2_xboole_0(k1_tarski(X5),k2_xboole_0(k1_tarski(X6),k2_xboole_0(k1_tarski(X7),k1_tarski(X8)))))))) = k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26,c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_25]),c_0_25])).

cnf(c_0_29,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_28])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.34  % Computer   : n007.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 20:56:21 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.028 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t43_enumset1, axiom, ![X1, X2, X3]:k1_enumset1(X1,X2,X3)=k2_xboole_0(k2_tarski(X1,X2),k1_tarski(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t43_enumset1)).
% 0.12/0.37  fof(t41_enumset1, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_enumset1)).
% 0.12/0.37  fof(t46_enumset1, axiom, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t46_enumset1)).
% 0.12/0.37  fof(t64_enumset1, conjecture, ![X1, X2, X3, X4, X5, X6, X7, X8]:k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k1_enumset1(X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_enumset1)).
% 0.12/0.37  fof(t50_enumset1, axiom, ![X1, X2, X3, X4, X5]:k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t50_enumset1)).
% 0.12/0.37  fof(l75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7, X8]:k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l75_enumset1)).
% 0.12/0.37  fof(t4_xboole_1, axiom, ![X1, X2, X3]:k2_xboole_0(k2_xboole_0(X1,X2),X3)=k2_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_xboole_1)).
% 0.12/0.37  fof(c_0_7, plain, ![X43, X44, X45]:k1_enumset1(X43,X44,X45)=k2_xboole_0(k2_tarski(X43,X44),k1_tarski(X45)), inference(variable_rename,[status(thm)],[t43_enumset1])).
% 0.12/0.37  fof(c_0_8, plain, ![X41, X42]:k2_tarski(X41,X42)=k2_xboole_0(k1_tarski(X41),k1_tarski(X42)), inference(variable_rename,[status(thm)],[t41_enumset1])).
% 0.12/0.37  fof(c_0_9, plain, ![X46, X47, X48, X49]:k2_enumset1(X46,X47,X48,X49)=k2_xboole_0(k1_enumset1(X46,X47,X48),k1_tarski(X49)), inference(variable_rename,[status(thm)],[t46_enumset1])).
% 0.12/0.37  cnf(c_0_10, plain, (k1_enumset1(X1,X2,X3)=k2_xboole_0(k2_tarski(X1,X2),k1_tarski(X3))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.37  cnf(c_0_11, plain, (k2_tarski(X1,X2)=k2_xboole_0(k1_tarski(X1),k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  fof(c_0_12, negated_conjecture, ~(![X1, X2, X3, X4, X5, X6, X7, X8]:k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k1_enumset1(X1,X2,X3),k3_enumset1(X4,X5,X6,X7,X8))), inference(assume_negation,[status(cth)],[t64_enumset1])).
% 0.12/0.37  fof(c_0_13, plain, ![X50, X51, X52, X53, X54]:k3_enumset1(X50,X51,X52,X53,X54)=k2_xboole_0(k2_enumset1(X50,X51,X52,X53),k1_tarski(X54)), inference(variable_rename,[status(thm)],[t50_enumset1])).
% 0.12/0.37  cnf(c_0_14, plain, (k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k1_enumset1(X1,X2,X3),k1_tarski(X4))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_15, plain, (k1_enumset1(X1,X2,X3)=k2_xboole_0(k2_xboole_0(k1_tarski(X1),k1_tarski(X2)),k1_tarski(X3))), inference(rw,[status(thm)],[c_0_10, c_0_11])).
% 0.12/0.37  fof(c_0_16, negated_conjecture, k6_enumset1(esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0,esk10_0)!=k2_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k3_enumset1(esk6_0,esk7_0,esk8_0,esk9_0,esk10_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_12])])])).
% 0.12/0.37  cnf(c_0_17, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.37  cnf(c_0_18, plain, (k2_enumset1(X1,X2,X3,X4)=k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(X1),k1_tarski(X2)),k1_tarski(X3)),k1_tarski(X4))), inference(rw,[status(thm)],[c_0_14, c_0_15])).
% 0.12/0.37  fof(c_0_19, plain, ![X33, X34, X35, X36, X37, X38, X39, X40]:k6_enumset1(X33,X34,X35,X36,X37,X38,X39,X40)=k2_xboole_0(k2_enumset1(X33,X34,X35,X36),k2_enumset1(X37,X38,X39,X40)), inference(variable_rename,[status(thm)],[l75_enumset1])).
% 0.12/0.37  cnf(c_0_20, negated_conjecture, (k6_enumset1(esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0,esk10_0)!=k2_xboole_0(k1_enumset1(esk3_0,esk4_0,esk5_0),k3_enumset1(esk6_0,esk7_0,esk8_0,esk9_0,esk10_0))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.12/0.37  cnf(c_0_21, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(X1),k1_tarski(X2)),k1_tarski(X3)),k1_tarski(X4)),k1_tarski(X5))), inference(rw,[status(thm)],[c_0_17, c_0_18])).
% 0.12/0.37  fof(c_0_22, plain, ![X14, X15, X16]:k2_xboole_0(k2_xboole_0(X14,X15),X16)=k2_xboole_0(X14,k2_xboole_0(X15,X16)), inference(variable_rename,[status(thm)],[t4_xboole_1])).
% 0.12/0.37  cnf(c_0_23, plain, (k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.37  cnf(c_0_24, negated_conjecture, (k6_enumset1(esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0,esk10_0)!=k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(esk3_0),k1_tarski(esk4_0)),k1_tarski(esk5_0)),k2_xboole_0(k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(esk6_0),k1_tarski(esk7_0)),k1_tarski(esk8_0)),k1_tarski(esk9_0)),k1_tarski(esk10_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_15]), c_0_21])).
% 0.12/0.37  cnf(c_0_25, plain, (k2_xboole_0(k2_xboole_0(X1,X2),X3)=k2_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.37  cnf(c_0_26, plain, (k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(X1),k1_tarski(X2)),k1_tarski(X3)),k1_tarski(X4)),k2_xboole_0(k2_xboole_0(k2_xboole_0(k1_tarski(X5),k1_tarski(X6)),k1_tarski(X7)),k1_tarski(X8)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_23, c_0_18]), c_0_18])).
% 0.12/0.37  cnf(c_0_27, negated_conjecture, (k2_xboole_0(k1_tarski(esk3_0),k2_xboole_0(k1_tarski(esk4_0),k2_xboole_0(k1_tarski(esk5_0),k2_xboole_0(k1_tarski(esk6_0),k2_xboole_0(k1_tarski(esk7_0),k2_xboole_0(k1_tarski(esk8_0),k2_xboole_0(k1_tarski(esk9_0),k1_tarski(esk10_0))))))))!=k6_enumset1(esk3_0,esk4_0,esk5_0,esk6_0,esk7_0,esk8_0,esk9_0,esk10_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_24, c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_25])).
% 0.12/0.37  cnf(c_0_28, plain, (k2_xboole_0(k1_tarski(X1),k2_xboole_0(k1_tarski(X2),k2_xboole_0(k1_tarski(X3),k2_xboole_0(k1_tarski(X4),k2_xboole_0(k1_tarski(X5),k2_xboole_0(k1_tarski(X6),k2_xboole_0(k1_tarski(X7),k1_tarski(X8))))))))=k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_26, c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_25]), c_0_25])).
% 0.12/0.37  cnf(c_0_29, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_28])]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 30
% 0.12/0.37  # Proof object clause steps            : 15
% 0.12/0.37  # Proof object formula steps           : 15
% 0.12/0.37  # Proof object conjectures             : 7
% 0.12/0.37  # Proof object clause conjectures      : 4
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 7
% 0.12/0.37  # Proof object initial formulas used   : 7
% 0.12/0.37  # Proof object generating inferences   : 0
% 0.12/0.37  # Proof object simplifying inferences  : 24
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 11
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 19
% 0.12/0.37  # Removed in clause preprocessing      : 4
% 0.12/0.37  # Initial clauses in saturation        : 15
% 0.12/0.37  # Processed clauses                    : 21
% 0.12/0.37  # ...of these trivial                  : 1
% 0.12/0.37  # ...subsumed                          : 0
% 0.12/0.37  # ...remaining for further processing  : 20
% 0.12/0.37  # Other redundant clauses eliminated   : 8
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 2
% 0.12/0.37  # Generated clauses                    : 5
% 0.12/0.37  # ...of the previous two non-trivial   : 6
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 0
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 8
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
% 0.12/0.37  # Current number of processed clauses  : 13
% 0.12/0.37  #    Positive orientable unit clauses  : 6
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 0
% 0.12/0.37  #    Non-unit-clauses                  : 7
% 0.12/0.37  # Current number of unprocessed clauses: 0
% 0.12/0.37  # ...number of literals in the above   : 0
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 6
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 14
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 10
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 0
% 0.12/0.37  # Unit Clause-clause subsumption calls : 0
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 12
% 0.12/0.37  # BW rewrite match successes           : 6
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 1387
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.028 s
% 0.12/0.37  # System time              : 0.004 s
% 0.12/0.37  # Total time               : 0.032 s
% 0.12/0.37  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
