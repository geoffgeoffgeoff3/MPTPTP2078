%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:36:14 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   55 ( 747 expanded)
%              Number of clauses        :   26 ( 274 expanded)
%              Number of leaves         :   14 ( 236 expanded)
%              Depth                    :    8
%              Number of atoms          :   55 ( 747 expanded)
%              Number of equality atoms :   54 ( 746 expanded)
%              Maximal formula depth    :    9 (   3 average)
%              Maximal clause size      :    1 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t50_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t50_enumset1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t73_enumset1)).

fof(t74_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t74_enumset1)).

fof(t60_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_tarski(X6,X7)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_enumset1)).

fof(t67_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8] : k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k4_enumset1(X1,X2,X3,X4,X5,X6),k2_tarski(X7,X8)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t67_enumset1)).

fof(t104_enumset1,conjecture,(
    ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X3,X2,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t104_enumset1)).

fof(l75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7,X8] : k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l75_enumset1)).

fof(t99_enumset1,axiom,(
    ! [X1,X2,X3] : k1_enumset1(X1,X2,X3) = k1_enumset1(X2,X1,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t99_enumset1)).

fof(c_0_14,plain,(
    ! [X11,X12] : k2_xboole_0(X11,X12) = k5_xboole_0(X11,k4_xboole_0(X12,X11)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_15,plain,(
    ! [X9,X10] : k4_xboole_0(X9,X10) = k5_xboole_0(X9,k3_xboole_0(X9,X10)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_16,plain,(
    ! [X21,X22,X23,X24,X25] : k3_enumset1(X21,X22,X23,X24,X25) = k2_xboole_0(k2_enumset1(X21,X22,X23,X24),k1_tarski(X25)) ),
    inference(variable_rename,[status(thm)],[t50_enumset1])).

fof(c_0_17,plain,(
    ! [X41] : k2_tarski(X41,X41) = k1_tarski(X41) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_18,plain,(
    ! [X42,X43] : k1_enumset1(X42,X42,X43) = k2_tarski(X42,X43) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

cnf(c_0_19,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_21,plain,(
    ! [X44,X45,X46] : k2_enumset1(X44,X44,X45,X46) = k1_enumset1(X44,X45,X46) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_22,plain,(
    ! [X47,X48,X49,X50] : k3_enumset1(X47,X47,X48,X49,X50) = k2_enumset1(X47,X48,X49,X50) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_23,plain,(
    ! [X51,X52,X53,X54,X55] : k4_enumset1(X51,X51,X52,X53,X54,X55) = k3_enumset1(X51,X52,X53,X54,X55) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_24,plain,(
    ! [X56,X57,X58,X59,X60,X61] : k5_enumset1(X56,X56,X57,X58,X59,X60,X61) = k4_enumset1(X56,X57,X58,X59,X60,X61) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_25,plain,(
    ! [X26,X27,X28,X29,X30,X31,X32] : k5_enumset1(X26,X27,X28,X29,X30,X31,X32) = k2_xboole_0(k3_enumset1(X26,X27,X28,X29,X30),k2_tarski(X31,X32)) ),
    inference(variable_rename,[status(thm)],[t60_enumset1])).

fof(c_0_26,plain,(
    ! [X33,X34,X35,X36,X37,X38,X39,X40] : k6_enumset1(X33,X34,X35,X36,X37,X38,X39,X40) = k2_xboole_0(k4_enumset1(X33,X34,X35,X36,X37,X38),k2_tarski(X39,X40)) ),
    inference(variable_rename,[status(thm)],[t67_enumset1])).

cnf(c_0_27,plain,
    ( k3_enumset1(X1,X2,X3,X4,X5) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_28,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_29,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_30,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))) ),
    inference(rw,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_31,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_32,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_33,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_34,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_35,plain,
    ( k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_tarski(X6,X7)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_36,plain,
    ( k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k4_enumset1(X1,X2,X3,X4,X5,X6),k2_tarski(X7,X8)) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_37,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] : k2_enumset1(X1,X2,X3,X4) = k2_enumset1(X1,X3,X2,X4) ),
    inference(assume_negation,[status(cth)],[t104_enumset1])).

fof(c_0_38,plain,(
    ! [X13,X14,X15,X16,X17,X18,X19,X20] : k6_enumset1(X13,X14,X15,X16,X17,X18,X19,X20) = k2_xboole_0(k2_enumset1(X13,X14,X15,X16),k2_enumset1(X17,X18,X19,X20)) ),
    inference(variable_rename,[status(thm)],[l75_enumset1])).

fof(c_0_39,plain,(
    ! [X62,X63,X64] : k1_enumset1(X62,X63,X64) = k1_enumset1(X63,X62,X64) ),
    inference(variable_rename,[status(thm)],[t99_enumset1])).

cnf(c_0_40,plain,
    ( k5_enumset1(X1,X1,X1,X2,X3,X4,X5) = k5_xboole_0(k5_enumset1(X1,X1,X1,X1,X2,X3,X4),k5_xboole_0(k5_enumset1(X5,X5,X5,X5,X5,X5,X5),k3_xboole_0(k5_enumset1(X5,X5,X5,X5,X5,X5,X5),k5_enumset1(X1,X1,X1,X1,X2,X3,X4)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_28]),c_0_29]),c_0_30]),c_0_31]),c_0_31]),c_0_32]),c_0_32]),c_0_32]),c_0_32]),c_0_33]),c_0_33]),c_0_33]),c_0_33]),c_0_33]),c_0_34]),c_0_34]),c_0_34]),c_0_34]),c_0_34])).

cnf(c_0_41,plain,
    ( k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k5_xboole_0(k5_enumset1(X1,X1,X1,X2,X3,X4,X5),k5_xboole_0(k5_enumset1(X6,X6,X6,X6,X6,X6,X7),k3_xboole_0(k5_enumset1(X6,X6,X6,X6,X6,X6,X7),k5_enumset1(X1,X1,X1,X2,X3,X4,X5)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_29]),c_0_30]),c_0_31]),c_0_31]),c_0_32]),c_0_32]),c_0_33]),c_0_33]),c_0_33]),c_0_33]),c_0_34]),c_0_34]),c_0_34]),c_0_34])).

cnf(c_0_42,plain,
    ( k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k5_xboole_0(k5_enumset1(X1,X1,X2,X3,X4,X5,X6),k5_xboole_0(k5_enumset1(X7,X7,X7,X7,X7,X7,X8),k3_xboole_0(k5_enumset1(X7,X7,X7,X7,X7,X7,X8),k5_enumset1(X1,X1,X2,X3,X4,X5,X6)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36,c_0_29]),c_0_30]),c_0_31]),c_0_31]),c_0_32]),c_0_32]),c_0_33]),c_0_33]),c_0_34]),c_0_34]),c_0_34]),c_0_34])).

fof(c_0_43,negated_conjecture,(
    k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0) != k2_enumset1(esk1_0,esk3_0,esk2_0,esk4_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_37])])])).

cnf(c_0_44,plain,
    ( k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_45,plain,
    ( k1_enumset1(X1,X2,X3) = k1_enumset1(X2,X1,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_46,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X5) = k5_enumset1(X1,X1,X1,X2,X3,X4,X5) ),
    inference(rw,[status(thm)],[c_0_40,c_0_41])).

cnf(c_0_47,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(rw,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_48,negated_conjecture,
    ( k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0) != k2_enumset1(esk1_0,esk3_0,esk2_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_49,plain,
    ( k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8) = k5_xboole_0(k5_enumset1(X1,X1,X1,X1,X2,X3,X4),k5_xboole_0(k5_enumset1(X5,X5,X5,X5,X6,X7,X8),k3_xboole_0(k5_enumset1(X5,X5,X5,X5,X6,X7,X8),k5_enumset1(X1,X1,X1,X1,X2,X3,X4)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44,c_0_30]),c_0_32]),c_0_32]),c_0_32]),c_0_32]),c_0_33]),c_0_33]),c_0_33]),c_0_33]),c_0_34]),c_0_34]),c_0_34]),c_0_34])).

cnf(c_0_50,plain,
    ( k5_enumset1(X1,X1,X1,X1,X1,X2,X3) = k5_enumset1(X2,X2,X2,X2,X2,X1,X3) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45,c_0_31]),c_0_31]),c_0_32]),c_0_32]),c_0_33]),c_0_33]),c_0_34]),c_0_34])).

cnf(c_0_51,plain,
    ( k6_enumset1(X1,X2,X3,X4,X5,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_46]),c_0_42]),c_0_47])).

cnf(c_0_52,negated_conjecture,
    ( k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk3_0,esk2_0,esk4_0) != k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0,esk4_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48,c_0_32]),c_0_32]),c_0_33]),c_0_33]),c_0_34]),c_0_34])).

cnf(c_0_53,plain,
    ( k5_enumset1(X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X6,X5,X7) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_49]),c_0_51]),c_0_51])).

cnf(c_0_54,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_52,c_0_53])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:02:26 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.41  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.19/0.41  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.19/0.41  #
% 0.19/0.41  # Preprocessing time       : 0.039 s
% 0.19/0.41  # Presaturation interreduction done
% 0.19/0.41  
% 0.19/0.41  # Proof found!
% 0.19/0.41  # SZS status Theorem
% 0.19/0.41  # SZS output start CNFRefutation
% 0.19/0.41  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.19/0.41  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.19/0.41  fof(t50_enumset1, axiom, ![X1, X2, X3, X4, X5]:k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t50_enumset1)).
% 0.19/0.41  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.19/0.41  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.19/0.41  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.19/0.41  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 0.19/0.41  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t73_enumset1)).
% 0.19/0.41  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t74_enumset1)).
% 0.19/0.41  fof(t60_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_tarski(X6,X7)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t60_enumset1)).
% 0.19/0.41  fof(t67_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7, X8]:k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k4_enumset1(X1,X2,X3,X4,X5,X6),k2_tarski(X7,X8)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t67_enumset1)).
% 0.19/0.41  fof(t104_enumset1, conjecture, ![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X3,X2,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t104_enumset1)).
% 0.19/0.41  fof(l75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7, X8]:k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l75_enumset1)).
% 0.19/0.41  fof(t99_enumset1, axiom, ![X1, X2, X3]:k1_enumset1(X1,X2,X3)=k1_enumset1(X2,X1,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t99_enumset1)).
% 0.19/0.41  fof(c_0_14, plain, ![X11, X12]:k2_xboole_0(X11,X12)=k5_xboole_0(X11,k4_xboole_0(X12,X11)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.19/0.41  fof(c_0_15, plain, ![X9, X10]:k4_xboole_0(X9,X10)=k5_xboole_0(X9,k3_xboole_0(X9,X10)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.19/0.41  fof(c_0_16, plain, ![X21, X22, X23, X24, X25]:k3_enumset1(X21,X22,X23,X24,X25)=k2_xboole_0(k2_enumset1(X21,X22,X23,X24),k1_tarski(X25)), inference(variable_rename,[status(thm)],[t50_enumset1])).
% 0.19/0.41  fof(c_0_17, plain, ![X41]:k2_tarski(X41,X41)=k1_tarski(X41), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.19/0.41  fof(c_0_18, plain, ![X42, X43]:k1_enumset1(X42,X42,X43)=k2_tarski(X42,X43), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.19/0.41  cnf(c_0_19, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  cnf(c_0_20, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.41  fof(c_0_21, plain, ![X44, X45, X46]:k2_enumset1(X44,X44,X45,X46)=k1_enumset1(X44,X45,X46), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.19/0.41  fof(c_0_22, plain, ![X47, X48, X49, X50]:k3_enumset1(X47,X47,X48,X49,X50)=k2_enumset1(X47,X48,X49,X50), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.19/0.41  fof(c_0_23, plain, ![X51, X52, X53, X54, X55]:k4_enumset1(X51,X51,X52,X53,X54,X55)=k3_enumset1(X51,X52,X53,X54,X55), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.19/0.41  fof(c_0_24, plain, ![X56, X57, X58, X59, X60, X61]:k5_enumset1(X56,X56,X57,X58,X59,X60,X61)=k4_enumset1(X56,X57,X58,X59,X60,X61), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.19/0.41  fof(c_0_25, plain, ![X26, X27, X28, X29, X30, X31, X32]:k5_enumset1(X26,X27,X28,X29,X30,X31,X32)=k2_xboole_0(k3_enumset1(X26,X27,X28,X29,X30),k2_tarski(X31,X32)), inference(variable_rename,[status(thm)],[t60_enumset1])).
% 0.19/0.41  fof(c_0_26, plain, ![X33, X34, X35, X36, X37, X38, X39, X40]:k6_enumset1(X33,X34,X35,X36,X37,X38,X39,X40)=k2_xboole_0(k4_enumset1(X33,X34,X35,X36,X37,X38),k2_tarski(X39,X40)), inference(variable_rename,[status(thm)],[t67_enumset1])).
% 0.19/0.41  cnf(c_0_27, plain, (k3_enumset1(X1,X2,X3,X4,X5)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k1_tarski(X5))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.41  cnf(c_0_28, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.41  cnf(c_0_29, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.41  cnf(c_0_30, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))), inference(rw,[status(thm)],[c_0_19, c_0_20])).
% 0.19/0.41  cnf(c_0_31, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.41  cnf(c_0_32, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.41  cnf(c_0_33, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.41  cnf(c_0_34, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.41  cnf(c_0_35, plain, (k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k2_xboole_0(k3_enumset1(X1,X2,X3,X4,X5),k2_tarski(X6,X7))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.41  cnf(c_0_36, plain, (k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k4_enumset1(X1,X2,X3,X4,X5,X6),k2_tarski(X7,X8))), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.41  fof(c_0_37, negated_conjecture, ~(![X1, X2, X3, X4]:k2_enumset1(X1,X2,X3,X4)=k2_enumset1(X1,X3,X2,X4)), inference(assume_negation,[status(cth)],[t104_enumset1])).
% 0.19/0.41  fof(c_0_38, plain, ![X13, X14, X15, X16, X17, X18, X19, X20]:k6_enumset1(X13,X14,X15,X16,X17,X18,X19,X20)=k2_xboole_0(k2_enumset1(X13,X14,X15,X16),k2_enumset1(X17,X18,X19,X20)), inference(variable_rename,[status(thm)],[l75_enumset1])).
% 0.19/0.41  fof(c_0_39, plain, ![X62, X63, X64]:k1_enumset1(X62,X63,X64)=k1_enumset1(X63,X62,X64), inference(variable_rename,[status(thm)],[t99_enumset1])).
% 0.19/0.41  cnf(c_0_40, plain, (k5_enumset1(X1,X1,X1,X2,X3,X4,X5)=k5_xboole_0(k5_enumset1(X1,X1,X1,X1,X2,X3,X4),k5_xboole_0(k5_enumset1(X5,X5,X5,X5,X5,X5,X5),k3_xboole_0(k5_enumset1(X5,X5,X5,X5,X5,X5,X5),k5_enumset1(X1,X1,X1,X1,X2,X3,X4))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_28]), c_0_29]), c_0_30]), c_0_31]), c_0_31]), c_0_32]), c_0_32]), c_0_32]), c_0_32]), c_0_33]), c_0_33]), c_0_33]), c_0_33]), c_0_33]), c_0_34]), c_0_34]), c_0_34]), c_0_34]), c_0_34])).
% 0.19/0.41  cnf(c_0_41, plain, (k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k5_xboole_0(k5_enumset1(X1,X1,X1,X2,X3,X4,X5),k5_xboole_0(k5_enumset1(X6,X6,X6,X6,X6,X6,X7),k3_xboole_0(k5_enumset1(X6,X6,X6,X6,X6,X6,X7),k5_enumset1(X1,X1,X1,X2,X3,X4,X5))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_29]), c_0_30]), c_0_31]), c_0_31]), c_0_32]), c_0_32]), c_0_33]), c_0_33]), c_0_33]), c_0_33]), c_0_34]), c_0_34]), c_0_34]), c_0_34])).
% 0.19/0.41  cnf(c_0_42, plain, (k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k5_xboole_0(k5_enumset1(X1,X1,X2,X3,X4,X5,X6),k5_xboole_0(k5_enumset1(X7,X7,X7,X7,X7,X7,X8),k3_xboole_0(k5_enumset1(X7,X7,X7,X7,X7,X7,X8),k5_enumset1(X1,X1,X2,X3,X4,X5,X6))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_36, c_0_29]), c_0_30]), c_0_31]), c_0_31]), c_0_32]), c_0_32]), c_0_33]), c_0_33]), c_0_34]), c_0_34]), c_0_34]), c_0_34])).
% 0.19/0.41  fof(c_0_43, negated_conjecture, k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0)!=k2_enumset1(esk1_0,esk3_0,esk2_0,esk4_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_37])])])).
% 0.19/0.41  cnf(c_0_44, plain, (k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k2_xboole_0(k2_enumset1(X1,X2,X3,X4),k2_enumset1(X5,X6,X7,X8))), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.19/0.41  cnf(c_0_45, plain, (k1_enumset1(X1,X2,X3)=k1_enumset1(X2,X1,X3)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.41  cnf(c_0_46, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X5)=k5_enumset1(X1,X1,X1,X2,X3,X4,X5)), inference(rw,[status(thm)],[c_0_40, c_0_41])).
% 0.19/0.41  cnf(c_0_47, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(rw,[status(thm)],[c_0_41, c_0_42])).
% 0.19/0.41  cnf(c_0_48, negated_conjecture, (k2_enumset1(esk1_0,esk2_0,esk3_0,esk4_0)!=k2_enumset1(esk1_0,esk3_0,esk2_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.41  cnf(c_0_49, plain, (k6_enumset1(X1,X2,X3,X4,X5,X6,X7,X8)=k5_xboole_0(k5_enumset1(X1,X1,X1,X1,X2,X3,X4),k5_xboole_0(k5_enumset1(X5,X5,X5,X5,X6,X7,X8),k3_xboole_0(k5_enumset1(X5,X5,X5,X5,X6,X7,X8),k5_enumset1(X1,X1,X1,X1,X2,X3,X4))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44, c_0_30]), c_0_32]), c_0_32]), c_0_32]), c_0_32]), c_0_33]), c_0_33]), c_0_33]), c_0_33]), c_0_34]), c_0_34]), c_0_34]), c_0_34])).
% 0.19/0.41  cnf(c_0_50, plain, (k5_enumset1(X1,X1,X1,X1,X1,X2,X3)=k5_enumset1(X2,X2,X2,X2,X2,X1,X3)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45, c_0_31]), c_0_31]), c_0_32]), c_0_32]), c_0_33]), c_0_33]), c_0_34]), c_0_34])).
% 0.19/0.41  cnf(c_0_51, plain, (k6_enumset1(X1,X2,X3,X4,X5,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_46]), c_0_42]), c_0_47])).
% 0.19/0.41  cnf(c_0_52, negated_conjecture, (k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk3_0,esk2_0,esk4_0)!=k5_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk2_0,esk3_0,esk4_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48, c_0_32]), c_0_32]), c_0_33]), c_0_33]), c_0_34]), c_0_34])).
% 0.19/0.41  cnf(c_0_53, plain, (k5_enumset1(X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X6,X5,X7)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_49]), c_0_51]), c_0_51])).
% 0.19/0.41  cnf(c_0_54, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_52, c_0_53])]), ['proof']).
% 0.19/0.41  # SZS output end CNFRefutation
% 0.19/0.41  # Proof object total steps             : 55
% 0.19/0.41  # Proof object clause steps            : 26
% 0.19/0.41  # Proof object formula steps           : 29
% 0.19/0.41  # Proof object conjectures             : 6
% 0.19/0.41  # Proof object clause conjectures      : 3
% 0.19/0.41  # Proof object formula conjectures     : 3
% 0.19/0.41  # Proof object initial clauses used    : 14
% 0.19/0.41  # Proof object initial formulas used   : 14
% 0.19/0.41  # Proof object generating inferences   : 2
% 0.19/0.41  # Proof object simplifying inferences  : 82
% 0.19/0.41  # Training examples: 0 positive, 0 negative
% 0.19/0.41  # Parsed axioms                        : 14
% 0.19/0.41  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.41  # Initial clauses                      : 14
% 0.19/0.41  # Removed in clause preprocessing      : 8
% 0.19/0.41  # Initial clauses in saturation        : 6
% 0.19/0.41  # Processed clauses                    : 94
% 0.19/0.41  # ...of these trivial                  : 3
% 0.19/0.41  # ...subsumed                          : 45
% 0.19/0.41  # ...remaining for further processing  : 46
% 0.19/0.41  # Other redundant clauses eliminated   : 0
% 0.19/0.41  # Clauses deleted for lack of memory   : 0
% 0.19/0.41  # Backward-subsumed                    : 0
% 0.19/0.41  # Backward-rewritten                   : 2
% 0.19/0.41  # Generated clauses                    : 1517
% 0.19/0.41  # ...of the previous two non-trivial   : 1325
% 0.19/0.41  # Contextual simplify-reflections      : 0
% 0.19/0.41  # Paramodulations                      : 1517
% 0.19/0.41  # Factorizations                       : 0
% 0.19/0.41  # Equation resolutions                 : 0
% 0.19/0.41  # Propositional unsat checks           : 0
% 0.19/0.41  #    Propositional check models        : 0
% 0.19/0.41  #    Propositional check unsatisfiable : 0
% 0.19/0.41  #    Propositional clauses             : 0
% 0.19/0.41  #    Propositional clauses after purity: 0
% 0.19/0.41  #    Propositional unsat core size     : 0
% 0.19/0.41  #    Propositional preprocessing time  : 0.000
% 0.19/0.41  #    Propositional encoding time       : 0.000
% 0.19/0.41  #    Propositional solver time         : 0.000
% 0.19/0.41  #    Success case prop preproc time    : 0.000
% 0.19/0.41  #    Success case prop encoding time   : 0.000
% 0.19/0.41  #    Success case prop solver time     : 0.000
% 0.19/0.41  # Current number of processed clauses  : 38
% 0.19/0.41  #    Positive orientable unit clauses  : 11
% 0.19/0.41  #    Positive unorientable unit clauses: 27
% 0.19/0.41  #    Negative unit clauses             : 0
% 0.19/0.41  #    Non-unit-clauses                  : 0
% 0.19/0.41  # Current number of unprocessed clauses: 1243
% 0.19/0.41  # ...number of literals in the above   : 1243
% 0.19/0.41  # Current number of archived formulas  : 0
% 0.19/0.41  # Current number of archived clauses   : 16
% 0.19/0.41  # Clause-clause subsumption calls (NU) : 0
% 0.19/0.41  # Rec. Clause-clause subsumption calls : 0
% 0.19/0.41  # Non-unit clause-clause subsumptions  : 0
% 0.19/0.41  # Unit Clause-clause subsumption calls : 405
% 0.19/0.41  # Rewrite failures with RHS unbound    : 0
% 0.19/0.41  # BW rewrite match attempts            : 1325
% 0.19/0.41  # BW rewrite match successes           : 434
% 0.19/0.41  # Condensation attempts                : 0
% 0.19/0.41  # Condensation successes               : 0
% 0.19/0.41  # Termbank termtop insertions          : 5953
% 0.19/0.41  
% 0.19/0.41  # -------------------------------------------------
% 0.19/0.41  # User time                : 0.059 s
% 0.19/0.41  # System time              : 0.008 s
% 0.19/0.41  # Total time               : 0.067 s
% 0.19/0.41  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
