%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n013.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:40:00 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   88 (1194 expanded)
%              Number of clauses        :   47 ( 463 expanded)
%              Number of leaves         :   20 ( 361 expanded)
%              Depth                    :   12
%              Number of atoms          :  113 (1333 expanded)
%              Number of equality atoms :   92 (1279 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t46_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(t74_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(t75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).

fof(t21_xboole_1,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,k2_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t21_xboole_1)).

fof(t44_zfmisc_1,conjecture,(
    ! [X1,X2,X3] :
      ~ ( k1_tarski(X1) = k2_xboole_0(X2,X3)
        & X2 != X3
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(l3_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,k1_tarski(X2))
    <=> ( X1 = k1_xboole_0
        | X1 = k1_tarski(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l3_zfmisc_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t5_boole,axiom,(
    ! [X1] : k5_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t5_boole)).

fof(t29_xboole_1,axiom,(
    ! [X1,X2,X3] : r1_tarski(k3_xboole_0(X1,X2),k2_xboole_0(X1,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t29_xboole_1)).

fof(t22_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_xboole_1)).

fof(c_0_20,plain,(
    ! [X59,X60] : k3_tarski(k2_tarski(X59,X60)) = k2_xboole_0(X59,X60) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_21,plain,(
    ! [X30,X31] : k1_enumset1(X30,X30,X31) = k2_tarski(X30,X31) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_22,plain,(
    ! [X19,X20] : k4_xboole_0(X19,k2_xboole_0(X19,X20)) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t46_xboole_1])).

cnf(c_0_23,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_24,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_25,plain,(
    ! [X10,X11] : k4_xboole_0(X10,X11) = k5_xboole_0(X10,k3_xboole_0(X10,X11)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_26,plain,(
    ! [X32,X33,X34] : k2_enumset1(X32,X32,X33,X34) = k1_enumset1(X32,X33,X34) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_27,plain,(
    ! [X35,X36,X37,X38] : k3_enumset1(X35,X35,X36,X37,X38) = k2_enumset1(X35,X36,X37,X38) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_28,plain,(
    ! [X39,X40,X41,X42,X43] : k4_enumset1(X39,X39,X40,X41,X42,X43) = k3_enumset1(X39,X40,X41,X42,X43) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_29,plain,(
    ! [X44,X45,X46,X47,X48,X49] : k5_enumset1(X44,X44,X45,X46,X47,X48,X49) = k4_enumset1(X44,X45,X46,X47,X48,X49) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_30,plain,(
    ! [X50,X51,X52,X53,X54,X55,X56] : k6_enumset1(X50,X50,X51,X52,X53,X54,X55,X56) = k5_enumset1(X50,X51,X52,X53,X54,X55,X56) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

fof(c_0_31,plain,(
    ! [X12,X13] : k3_xboole_0(X12,k2_xboole_0(X12,X13)) = X12 ),
    inference(variable_rename,[status(thm)],[t21_xboole_1])).

fof(c_0_32,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ~ ( k1_tarski(X1) = k2_xboole_0(X2,X3)
          & X2 != X3
          & X2 != k1_xboole_0
          & X3 != k1_xboole_0 ) ),
    inference(assume_negation,[status(cth)],[t44_zfmisc_1])).

cnf(c_0_33,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_34,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_35,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_36,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_37,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_38,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_39,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_40,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_41,plain,
    ( k3_xboole_0(X1,k2_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

fof(c_0_42,negated_conjecture,
    ( k1_tarski(esk1_0) = k2_xboole_0(esk2_0,esk3_0)
    & esk2_0 != esk3_0
    & esk2_0 != k1_xboole_0
    & esk3_0 != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_32])])])).

fof(c_0_43,plain,(
    ! [X29] : k2_tarski(X29,X29) = k1_tarski(X29) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_44,plain,(
    ! [X27,X28] : k2_xboole_0(X27,X28) = k5_xboole_0(X27,k4_xboole_0(X28,X27)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_45,plain,(
    ! [X22,X23] : r1_tarski(X22,k2_xboole_0(X22,X23)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

fof(c_0_46,plain,(
    ! [X24,X25,X26] : k5_xboole_0(k5_xboole_0(X24,X25),X26) = k5_xboole_0(X24,k5_xboole_0(X25,X26)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

cnf(c_0_47,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_34]),c_0_35]),c_0_36]),c_0_37]),c_0_38]),c_0_39]),c_0_40])).

cnf(c_0_48,plain,
    ( k3_xboole_0(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_34]),c_0_36]),c_0_37]),c_0_38]),c_0_39]),c_0_40])).

fof(c_0_49,plain,(
    ! [X57,X58] :
      ( ( ~ r1_tarski(X57,k1_tarski(X58))
        | X57 = k1_xboole_0
        | X57 = k1_tarski(X58) )
      & ( X57 != k1_xboole_0
        | r1_tarski(X57,k1_tarski(X58)) )
      & ( X57 != k1_tarski(X58)
        | r1_tarski(X57,k1_tarski(X58)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l3_zfmisc_1])])])).

cnf(c_0_50,negated_conjecture,
    ( k1_tarski(esk1_0) = k2_xboole_0(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_51,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_52,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

fof(c_0_53,plain,(
    ! [X8,X9] : k3_xboole_0(X8,X9) = k3_xboole_0(X9,X8) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

cnf(c_0_54,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_55,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_56,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_47,c_0_48])).

fof(c_0_57,plain,(
    ! [X21] : k5_xboole_0(X21,k1_xboole_0) = X21 ),
    inference(variable_rename,[status(thm)],[t5_boole])).

cnf(c_0_58,plain,
    ( X1 = k1_xboole_0
    | X1 = k1_tarski(X2)
    | ~ r1_tarski(X1,k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_59,negated_conjecture,
    ( k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0) = k3_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk3_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50,c_0_51]),c_0_24]),c_0_34]),c_0_36]),c_0_36]),c_0_37]),c_0_37]),c_0_38]),c_0_38]),c_0_39]),c_0_39]),c_0_40]),c_0_40])).

cnf(c_0_60,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) = k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_52,c_0_34]),c_0_35]),c_0_36]),c_0_37]),c_0_38]),c_0_39]),c_0_40])).

cnf(c_0_61,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_62,plain,
    ( r1_tarski(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54,c_0_34]),c_0_36]),c_0_37]),c_0_38]),c_0_39]),c_0_40])).

cnf(c_0_63,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = k5_xboole_0(k1_xboole_0,X2) ),
    inference(spm,[status(thm)],[c_0_55,c_0_56])).

cnf(c_0_64,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_65,plain,
    ( X1 = k1_xboole_0
    | X1 = k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)
    | ~ r1_tarski(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_58,c_0_51]),c_0_51]),c_0_24]),c_0_24]),c_0_36]),c_0_36]),c_0_37]),c_0_37]),c_0_38]),c_0_38]),c_0_39]),c_0_39]),c_0_40]),c_0_40])).

cnf(c_0_66,negated_conjecture,
    ( k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0) = k5_xboole_0(esk2_0,k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59,c_0_60]),c_0_61])).

cnf(c_0_67,plain,
    ( r1_tarski(X1,k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))) ),
    inference(spm,[status(thm)],[c_0_62,c_0_60])).

fof(c_0_68,plain,(
    ! [X16,X17,X18] : r1_tarski(k3_xboole_0(X16,X17),k2_xboole_0(X16,X18)) ),
    inference(variable_rename,[status(thm)],[t29_xboole_1])).

fof(c_0_69,plain,(
    ! [X14,X15] : k2_xboole_0(X14,k3_xboole_0(X14,X15)) = X14 ),
    inference(variable_rename,[status(thm)],[t22_xboole_1])).

cnf(c_0_70,plain,
    ( k5_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_56]),c_0_64])).

cnf(c_0_71,negated_conjecture,
    ( X1 = k5_xboole_0(esk2_0,k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0)))
    | X1 = k1_xboole_0
    | ~ r1_tarski(X1,k5_xboole_0(esk2_0,k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0)))) ),
    inference(spm,[status(thm)],[c_0_65,c_0_66])).

cnf(c_0_72,plain,
    ( r1_tarski(X1,k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X1,X2)))) ),
    inference(spm,[status(thm)],[c_0_67,c_0_61])).

cnf(c_0_73,negated_conjecture,
    ( esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_74,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),k2_xboole_0(X1,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_75,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_69])).

cnf(c_0_76,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = X2 ),
    inference(rw,[status(thm)],[c_0_63,c_0_70])).

cnf(c_0_77,negated_conjecture,
    ( k5_xboole_0(esk2_0,k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0))) = esk2_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_72]),c_0_73])).

cnf(c_0_78,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_74,c_0_34]),c_0_36]),c_0_37]),c_0_38]),c_0_39]),c_0_40])).

cnf(c_0_79,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_xboole_0(X1,X2))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_75,c_0_34]),c_0_36]),c_0_37]),c_0_38]),c_0_39]),c_0_40])).

cnf(c_0_80,negated_conjecture,
    ( k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_77]),c_0_56])).

cnf(c_0_81,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),X1) ),
    inference(spm,[status(thm)],[c_0_78,c_0_79])).

cnf(c_0_82,negated_conjecture,
    ( k3_xboole_0(esk2_0,esk3_0) = esk3_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_80]),c_0_64])).

cnf(c_0_83,negated_conjecture,
    ( X1 = k1_xboole_0
    | X1 = esk2_0
    | ~ r1_tarski(X1,esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_71,c_0_77]),c_0_77])).

cnf(c_0_84,negated_conjecture,
    ( r1_tarski(esk3_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_81,c_0_82])).

cnf(c_0_85,negated_conjecture,
    ( esk3_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_86,negated_conjecture,
    ( esk2_0 != esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_87,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_84]),c_0_85]),c_0_86]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n013.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:50:09 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.39  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_AE_CS_SP_PI_S0a
% 0.19/0.39  # and selection function SelectNegativeLiterals.
% 0.19/0.39  #
% 0.19/0.39  # Preprocessing time       : 0.028 s
% 0.19/0.39  
% 0.19/0.39  # Proof found!
% 0.19/0.39  # SZS status Theorem
% 0.19/0.39  # SZS output start CNFRefutation
% 0.19/0.39  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.19/0.39  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.19/0.39  fof(t46_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_xboole_1)).
% 0.19/0.39  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.19/0.39  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.19/0.39  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.19/0.39  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.19/0.39  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_enumset1)).
% 0.19/0.39  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_enumset1)).
% 0.19/0.39  fof(t21_xboole_1, axiom, ![X1, X2]:k3_xboole_0(X1,k2_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t21_xboole_1)).
% 0.19/0.39  fof(t44_zfmisc_1, conjecture, ![X1, X2, X3]:~((((k1_tarski(X1)=k2_xboole_0(X2,X3)&X2!=X3)&X2!=k1_xboole_0)&X3!=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_zfmisc_1)).
% 0.19/0.39  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.19/0.39  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.19/0.39  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.19/0.39  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.19/0.39  fof(l3_zfmisc_1, axiom, ![X1, X2]:(r1_tarski(X1,k1_tarski(X2))<=>(X1=k1_xboole_0|X1=k1_tarski(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l3_zfmisc_1)).
% 0.19/0.39  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.19/0.39  fof(t5_boole, axiom, ![X1]:k5_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t5_boole)).
% 0.19/0.39  fof(t29_xboole_1, axiom, ![X1, X2, X3]:r1_tarski(k3_xboole_0(X1,X2),k2_xboole_0(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t29_xboole_1)).
% 0.19/0.39  fof(t22_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t22_xboole_1)).
% 0.19/0.39  fof(c_0_20, plain, ![X59, X60]:k3_tarski(k2_tarski(X59,X60))=k2_xboole_0(X59,X60), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.19/0.39  fof(c_0_21, plain, ![X30, X31]:k1_enumset1(X30,X30,X31)=k2_tarski(X30,X31), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.19/0.39  fof(c_0_22, plain, ![X19, X20]:k4_xboole_0(X19,k2_xboole_0(X19,X20))=k1_xboole_0, inference(variable_rename,[status(thm)],[t46_xboole_1])).
% 0.19/0.39  cnf(c_0_23, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.39  cnf(c_0_24, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.39  fof(c_0_25, plain, ![X10, X11]:k4_xboole_0(X10,X11)=k5_xboole_0(X10,k3_xboole_0(X10,X11)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.19/0.39  fof(c_0_26, plain, ![X32, X33, X34]:k2_enumset1(X32,X32,X33,X34)=k1_enumset1(X32,X33,X34), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.19/0.39  fof(c_0_27, plain, ![X35, X36, X37, X38]:k3_enumset1(X35,X35,X36,X37,X38)=k2_enumset1(X35,X36,X37,X38), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.19/0.39  fof(c_0_28, plain, ![X39, X40, X41, X42, X43]:k4_enumset1(X39,X39,X40,X41,X42,X43)=k3_enumset1(X39,X40,X41,X42,X43), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.19/0.39  fof(c_0_29, plain, ![X44, X45, X46, X47, X48, X49]:k5_enumset1(X44,X44,X45,X46,X47,X48,X49)=k4_enumset1(X44,X45,X46,X47,X48,X49), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.19/0.39  fof(c_0_30, plain, ![X50, X51, X52, X53, X54, X55, X56]:k6_enumset1(X50,X50,X51,X52,X53,X54,X55,X56)=k5_enumset1(X50,X51,X52,X53,X54,X55,X56), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.19/0.39  fof(c_0_31, plain, ![X12, X13]:k3_xboole_0(X12,k2_xboole_0(X12,X13))=X12, inference(variable_rename,[status(thm)],[t21_xboole_1])).
% 0.19/0.39  fof(c_0_32, negated_conjecture, ~(![X1, X2, X3]:~((((k1_tarski(X1)=k2_xboole_0(X2,X3)&X2!=X3)&X2!=k1_xboole_0)&X3!=k1_xboole_0))), inference(assume_negation,[status(cth)],[t44_zfmisc_1])).
% 0.19/0.39  cnf(c_0_33, plain, (k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.39  cnf(c_0_34, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_23, c_0_24])).
% 0.19/0.39  cnf(c_0_35, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.39  cnf(c_0_36, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.39  cnf(c_0_37, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.19/0.39  cnf(c_0_38, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.39  cnf(c_0_39, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.39  cnf(c_0_40, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.19/0.39  cnf(c_0_41, plain, (k3_xboole_0(X1,k2_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.19/0.39  fof(c_0_42, negated_conjecture, (((k1_tarski(esk1_0)=k2_xboole_0(esk2_0,esk3_0)&esk2_0!=esk3_0)&esk2_0!=k1_xboole_0)&esk3_0!=k1_xboole_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_32])])])).
% 0.19/0.39  fof(c_0_43, plain, ![X29]:k2_tarski(X29,X29)=k1_tarski(X29), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.19/0.39  fof(c_0_44, plain, ![X27, X28]:k2_xboole_0(X27,X28)=k5_xboole_0(X27,k4_xboole_0(X28,X27)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.19/0.39  fof(c_0_45, plain, ![X22, X23]:r1_tarski(X22,k2_xboole_0(X22,X23)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.19/0.39  fof(c_0_46, plain, ![X24, X25, X26]:k5_xboole_0(k5_xboole_0(X24,X25),X26)=k5_xboole_0(X24,k5_xboole_0(X25,X26)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.19/0.39  cnf(c_0_47, plain, (k5_xboole_0(X1,k3_xboole_0(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_34]), c_0_35]), c_0_36]), c_0_37]), c_0_38]), c_0_39]), c_0_40])).
% 0.19/0.39  cnf(c_0_48, plain, (k3_xboole_0(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_34]), c_0_36]), c_0_37]), c_0_38]), c_0_39]), c_0_40])).
% 0.19/0.39  fof(c_0_49, plain, ![X57, X58]:((~r1_tarski(X57,k1_tarski(X58))|(X57=k1_xboole_0|X57=k1_tarski(X58)))&((X57!=k1_xboole_0|r1_tarski(X57,k1_tarski(X58)))&(X57!=k1_tarski(X58)|r1_tarski(X57,k1_tarski(X58))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l3_zfmisc_1])])])).
% 0.19/0.39  cnf(c_0_50, negated_conjecture, (k1_tarski(esk1_0)=k2_xboole_0(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.39  cnf(c_0_51, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.39  cnf(c_0_52, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.19/0.39  fof(c_0_53, plain, ![X8, X9]:k3_xboole_0(X8,X9)=k3_xboole_0(X9,X8), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.19/0.39  cnf(c_0_54, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.19/0.39  cnf(c_0_55, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.19/0.39  cnf(c_0_56, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[c_0_47, c_0_48])).
% 0.19/0.39  fof(c_0_57, plain, ![X21]:k5_xboole_0(X21,k1_xboole_0)=X21, inference(variable_rename,[status(thm)],[t5_boole])).
% 0.19/0.39  cnf(c_0_58, plain, (X1=k1_xboole_0|X1=k1_tarski(X2)|~r1_tarski(X1,k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.19/0.39  cnf(c_0_59, negated_conjecture, (k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)=k3_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk3_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50, c_0_51]), c_0_24]), c_0_34]), c_0_36]), c_0_36]), c_0_37]), c_0_37]), c_0_38]), c_0_38]), c_0_39]), c_0_39]), c_0_40]), c_0_40])).
% 0.19/0.39  cnf(c_0_60, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))=k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_52, c_0_34]), c_0_35]), c_0_36]), c_0_37]), c_0_38]), c_0_39]), c_0_40])).
% 0.19/0.39  cnf(c_0_61, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.19/0.39  cnf(c_0_62, plain, (r1_tarski(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54, c_0_34]), c_0_36]), c_0_37]), c_0_38]), c_0_39]), c_0_40])).
% 0.19/0.39  cnf(c_0_63, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=k5_xboole_0(k1_xboole_0,X2)), inference(spm,[status(thm)],[c_0_55, c_0_56])).
% 0.19/0.39  cnf(c_0_64, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.19/0.39  cnf(c_0_65, plain, (X1=k1_xboole_0|X1=k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)|~r1_tarski(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_58, c_0_51]), c_0_51]), c_0_24]), c_0_24]), c_0_36]), c_0_36]), c_0_37]), c_0_37]), c_0_38]), c_0_38]), c_0_39]), c_0_39]), c_0_40]), c_0_40])).
% 0.19/0.39  cnf(c_0_66, negated_conjecture, (k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)=k5_xboole_0(esk2_0,k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59, c_0_60]), c_0_61])).
% 0.19/0.39  cnf(c_0_67, plain, (r1_tarski(X1,k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))))), inference(spm,[status(thm)],[c_0_62, c_0_60])).
% 0.19/0.39  fof(c_0_68, plain, ![X16, X17, X18]:r1_tarski(k3_xboole_0(X16,X17),k2_xboole_0(X16,X18)), inference(variable_rename,[status(thm)],[t29_xboole_1])).
% 0.19/0.39  fof(c_0_69, plain, ![X14, X15]:k2_xboole_0(X14,k3_xboole_0(X14,X15))=X14, inference(variable_rename,[status(thm)],[t22_xboole_1])).
% 0.19/0.39  cnf(c_0_70, plain, (k5_xboole_0(k1_xboole_0,X1)=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_56]), c_0_64])).
% 0.19/0.39  cnf(c_0_71, negated_conjecture, (X1=k5_xboole_0(esk2_0,k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0)))|X1=k1_xboole_0|~r1_tarski(X1,k5_xboole_0(esk2_0,k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0))))), inference(spm,[status(thm)],[c_0_65, c_0_66])).
% 0.19/0.39  cnf(c_0_72, plain, (r1_tarski(X1,k5_xboole_0(X1,k5_xboole_0(X2,k3_xboole_0(X1,X2))))), inference(spm,[status(thm)],[c_0_67, c_0_61])).
% 0.19/0.39  cnf(c_0_73, negated_conjecture, (esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.39  cnf(c_0_74, plain, (r1_tarski(k3_xboole_0(X1,X2),k2_xboole_0(X1,X3))), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.19/0.39  cnf(c_0_75, plain, (k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_69])).
% 0.19/0.39  cnf(c_0_76, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=X2), inference(rw,[status(thm)],[c_0_63, c_0_70])).
% 0.19/0.39  cnf(c_0_77, negated_conjecture, (k5_xboole_0(esk2_0,k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0)))=esk2_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_72]), c_0_73])).
% 0.19/0.39  cnf(c_0_78, plain, (r1_tarski(k3_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_74, c_0_34]), c_0_36]), c_0_37]), c_0_38]), c_0_39]), c_0_40])).
% 0.19/0.39  cnf(c_0_79, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_xboole_0(X1,X2)))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_75, c_0_34]), c_0_36]), c_0_37]), c_0_38]), c_0_39]), c_0_40])).
% 0.19/0.39  cnf(c_0_80, negated_conjecture, (k5_xboole_0(esk3_0,k3_xboole_0(esk2_0,esk3_0))=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_77]), c_0_56])).
% 0.19/0.39  cnf(c_0_81, plain, (r1_tarski(k3_xboole_0(X1,X2),X1)), inference(spm,[status(thm)],[c_0_78, c_0_79])).
% 0.19/0.39  cnf(c_0_82, negated_conjecture, (k3_xboole_0(esk2_0,esk3_0)=esk3_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_80]), c_0_64])).
% 0.19/0.39  cnf(c_0_83, negated_conjecture, (X1=k1_xboole_0|X1=esk2_0|~r1_tarski(X1,esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_71, c_0_77]), c_0_77])).
% 0.19/0.39  cnf(c_0_84, negated_conjecture, (r1_tarski(esk3_0,esk2_0)), inference(spm,[status(thm)],[c_0_81, c_0_82])).
% 0.19/0.39  cnf(c_0_85, negated_conjecture, (esk3_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.39  cnf(c_0_86, negated_conjecture, (esk2_0!=esk3_0), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.39  cnf(c_0_87, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_84]), c_0_85]), c_0_86]), ['proof']).
% 0.19/0.39  # SZS output end CNFRefutation
% 0.19/0.39  # Proof object total steps             : 88
% 0.19/0.39  # Proof object clause steps            : 47
% 0.19/0.39  # Proof object formula steps           : 41
% 0.19/0.39  # Proof object conjectures             : 16
% 0.19/0.39  # Proof object clause conjectures      : 13
% 0.19/0.39  # Proof object formula conjectures     : 3
% 0.19/0.39  # Proof object initial clauses used    : 23
% 0.19/0.39  # Proof object initial formulas used   : 20
% 0.19/0.39  # Proof object generating inferences   : 11
% 0.19/0.39  # Proof object simplifying inferences  : 78
% 0.19/0.39  # Training examples: 0 positive, 0 negative
% 0.19/0.39  # Parsed axioms                        : 20
% 0.19/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.39  # Initial clauses                      : 25
% 0.19/0.39  # Removed in clause preprocessing      : 9
% 0.19/0.39  # Initial clauses in saturation        : 16
% 0.19/0.39  # Processed clauses                    : 225
% 0.19/0.39  # ...of these trivial                  : 70
% 0.19/0.39  # ...subsumed                          : 57
% 0.19/0.39  # ...remaining for further processing  : 98
% 0.19/0.39  # Other redundant clauses eliminated   : 0
% 0.19/0.39  # Clauses deleted for lack of memory   : 0
% 0.19/0.39  # Backward-subsumed                    : 0
% 0.19/0.39  # Backward-rewritten                   : 15
% 0.19/0.39  # Generated clauses                    : 1653
% 0.19/0.39  # ...of the previous two non-trivial   : 858
% 0.19/0.39  # Contextual simplify-reflections      : 0
% 0.19/0.39  # Paramodulations                      : 1649
% 0.19/0.39  # Factorizations                       : 0
% 0.19/0.39  # Equation resolutions                 : 4
% 0.19/0.39  # Propositional unsat checks           : 0
% 0.19/0.39  #    Propositional check models        : 0
% 0.19/0.39  #    Propositional check unsatisfiable : 0
% 0.19/0.39  #    Propositional clauses             : 0
% 0.19/0.39  #    Propositional clauses after purity: 0
% 0.19/0.39  #    Propositional unsat core size     : 0
% 0.19/0.39  #    Propositional preprocessing time  : 0.000
% 0.19/0.39  #    Propositional encoding time       : 0.000
% 0.19/0.39  #    Propositional solver time         : 0.000
% 0.19/0.39  #    Success case prop preproc time    : 0.000
% 0.19/0.39  #    Success case prop encoding time   : 0.000
% 0.19/0.39  #    Success case prop solver time     : 0.000
% 0.19/0.39  # Current number of processed clauses  : 83
% 0.19/0.39  #    Positive orientable unit clauses  : 66
% 0.19/0.39  #    Positive unorientable unit clauses: 9
% 0.19/0.39  #    Negative unit clauses             : 3
% 0.19/0.39  #    Non-unit-clauses                  : 5
% 0.19/0.39  # Current number of unprocessed clauses: 638
% 0.19/0.39  # ...number of literals in the above   : 647
% 0.19/0.39  # Current number of archived formulas  : 0
% 0.19/0.39  # Current number of archived clauses   : 24
% 0.19/0.39  # Clause-clause subsumption calls (NU) : 0
% 0.19/0.39  # Rec. Clause-clause subsumption calls : 0
% 0.19/0.39  # Non-unit clause-clause subsumptions  : 0
% 0.19/0.39  # Unit Clause-clause subsumption calls : 18
% 0.19/0.39  # Rewrite failures with RHS unbound    : 0
% 0.19/0.39  # BW rewrite match attempts            : 164
% 0.19/0.39  # BW rewrite match successes           : 55
% 0.19/0.39  # Condensation attempts                : 0
% 0.19/0.39  # Condensation successes               : 0
% 0.19/0.39  # Termbank termtop insertions          : 19588
% 0.19/0.39  
% 0.19/0.39  # -------------------------------------------------
% 0.19/0.39  # User time                : 0.039 s
% 0.19/0.39  # System time              : 0.011 s
% 0.19/0.39  # Total time               : 0.051 s
% 0.19/0.39  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
