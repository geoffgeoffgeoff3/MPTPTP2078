%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:40:01 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   97 (1329 expanded)
%              Number of clauses        :   52 ( 506 expanded)
%              Number of leaves         :   22 ( 403 expanded)
%              Depth                    :   14
%              Number of atoms          :  152 (1603 expanded)
%              Number of equality atoms :   98 (1475 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    6 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t44_zfmisc_1,conjecture,(
    ! [X1,X2,X3] :
      ~ ( k1_tarski(X1) = k2_xboole_0(X2,X3)
        & X2 != X3
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_zfmisc_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_xboole_1)).

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

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t95_xboole_1,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_xboole_1)).

fof(l3_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,k1_tarski(X2))
    <=> ( X1 = k1_xboole_0
        | X1 = k1_tarski(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l3_zfmisc_1)).

fof(t83_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k4_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t83_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(l27_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( ~ r2_hidden(X1,X2)
     => r1_xboole_0(k1_tarski(X1),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l27_zfmisc_1)).

fof(idempotence_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(idempotence_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(t92_xboole_1,axiom,(
    ! [X1] : k5_xboole_0(X1,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t92_xboole_1)).

fof(commutativity_k5_xboole_0,axiom,(
    ! [X1,X2] : k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k5_xboole_0)).

fof(t38_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k2_tarski(X1,X2),X3)
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t38_zfmisc_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(c_0_22,plain,(
    ! [X58,X59] : k3_tarski(k2_tarski(X58,X59)) = k2_xboole_0(X58,X59) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_23,plain,(
    ! [X27,X28] : k1_enumset1(X27,X27,X28) = k2_tarski(X27,X28) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_24,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ~ ( k1_tarski(X1) = k2_xboole_0(X2,X3)
          & X2 != X3
          & X2 != k1_xboole_0
          & X3 != k1_xboole_0 ) ),
    inference(assume_negation,[status(cth)],[t44_zfmisc_1])).

fof(c_0_25,plain,(
    ! [X16,X17] : r1_tarski(X16,k2_xboole_0(X16,X17)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

cnf(c_0_26,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_27,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_28,plain,(
    ! [X29,X30,X31] : k2_enumset1(X29,X29,X30,X31) = k1_enumset1(X29,X30,X31) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_29,plain,(
    ! [X32,X33,X34,X35] : k3_enumset1(X32,X32,X33,X34,X35) = k2_enumset1(X32,X33,X34,X35) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_30,plain,(
    ! [X36,X37,X38,X39,X40] : k4_enumset1(X36,X36,X37,X38,X39,X40) = k3_enumset1(X36,X37,X38,X39,X40) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_31,plain,(
    ! [X41,X42,X43,X44,X45,X46] : k5_enumset1(X41,X41,X42,X43,X44,X45,X46) = k4_enumset1(X41,X42,X43,X44,X45,X46) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_32,plain,(
    ! [X47,X48,X49,X50,X51,X52,X53] : k6_enumset1(X47,X47,X48,X49,X50,X51,X52,X53) = k5_enumset1(X47,X48,X49,X50,X51,X52,X53) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

fof(c_0_33,negated_conjecture,
    ( k1_tarski(esk1_0) = k2_xboole_0(esk2_0,esk3_0)
    & esk2_0 != esk3_0
    & esk2_0 != k1_xboole_0
    & esk3_0 != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_24])])])).

fof(c_0_34,plain,(
    ! [X26] : k2_tarski(X26,X26) = k1_tarski(X26) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_35,plain,(
    ! [X24,X25] : k3_xboole_0(X24,X25) = k5_xboole_0(k5_xboole_0(X24,X25),k2_xboole_0(X24,X25)) ),
    inference(variable_rename,[status(thm)],[t95_xboole_1])).

fof(c_0_36,plain,(
    ! [X56,X57] :
      ( ( ~ r1_tarski(X56,k1_tarski(X57))
        | X56 = k1_xboole_0
        | X56 = k1_tarski(X57) )
      & ( X56 != k1_xboole_0
        | r1_tarski(X56,k1_tarski(X57)) )
      & ( X56 != k1_tarski(X57)
        | r1_tarski(X56,k1_tarski(X57)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l3_zfmisc_1])])])).

cnf(c_0_37,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_38,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_39,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_40,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_41,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_42,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_43,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_44,negated_conjecture,
    ( k1_tarski(esk1_0) = k2_xboole_0(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_45,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

fof(c_0_46,plain,(
    ! [X18,X19] :
      ( ( ~ r1_xboole_0(X18,X19)
        | k4_xboole_0(X18,X19) = X18 )
      & ( k4_xboole_0(X18,X19) != X18
        | r1_xboole_0(X18,X19) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).

fof(c_0_47,plain,(
    ! [X12,X13] : k4_xboole_0(X12,X13) = k5_xboole_0(X12,k3_xboole_0(X12,X13)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

cnf(c_0_48,plain,
    ( k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

fof(c_0_49,plain,(
    ! [X54,X55] :
      ( r2_hidden(X54,X55)
      | r1_xboole_0(k1_tarski(X54),X55) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l27_zfmisc_1])])])).

cnf(c_0_50,plain,
    ( X1 = k1_xboole_0
    | X1 = k1_tarski(X2)
    | ~ r1_tarski(X1,k1_tarski(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_51,plain,
    ( r1_tarski(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37,c_0_38]),c_0_39]),c_0_40]),c_0_41]),c_0_42]),c_0_43])).

cnf(c_0_52,negated_conjecture,
    ( k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0) = k3_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk3_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44,c_0_45]),c_0_27]),c_0_38]),c_0_39]),c_0_39]),c_0_40]),c_0_40]),c_0_41]),c_0_41]),c_0_42]),c_0_42]),c_0_43]),c_0_43])).

fof(c_0_53,plain,(
    ! [X11] : k3_xboole_0(X11,X11) = X11 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).

fof(c_0_54,plain,(
    ! [X10] : k2_xboole_0(X10,X10) = X10 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).

cnf(c_0_55,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_56,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_57,plain,
    ( k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k3_enumset1(X1,X1,X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48,c_0_38]),c_0_39]),c_0_40])).

fof(c_0_58,plain,(
    ! [X20,X21,X22] : k5_xboole_0(k5_xboole_0(X20,X21),X22) = k5_xboole_0(X20,k5_xboole_0(X21,X22)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

cnf(c_0_59,plain,
    ( r2_hidden(X1,X2)
    | r1_xboole_0(k1_tarski(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_60,plain,
    ( X1 = k1_xboole_0
    | X1 = k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)
    | ~ r1_tarski(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50,c_0_45]),c_0_45]),c_0_27]),c_0_27]),c_0_39]),c_0_39]),c_0_40]),c_0_40]),c_0_41]),c_0_41]),c_0_42]),c_0_42]),c_0_43]),c_0_43])).

cnf(c_0_61,negated_conjecture,
    ( r1_tarski(esk2_0,k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)) ),
    inference(spm,[status(thm)],[c_0_51,c_0_52])).

cnf(c_0_62,negated_conjecture,
    ( esk2_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_63,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

fof(c_0_64,plain,(
    ! [X23] : k5_xboole_0(X23,X23) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t92_xboole_1])).

cnf(c_0_65,plain,
    ( k2_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

cnf(c_0_66,plain,
    ( k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55,c_0_56]),c_0_57]),c_0_41]),c_0_42]),c_0_43])).

cnf(c_0_67,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_68,plain,
    ( r2_hidden(X1,X2)
    | r1_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59,c_0_45]),c_0_27]),c_0_39]),c_0_40]),c_0_41]),c_0_42]),c_0_43])).

cnf(c_0_69,negated_conjecture,
    ( k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0) = esk2_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_61]),c_0_62])).

fof(c_0_70,plain,(
    ! [X8,X9] : k5_xboole_0(X8,X9) = k5_xboole_0(X9,X8) ),
    inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).

cnf(c_0_71,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X1),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63,c_0_57]),c_0_41]),c_0_42]),c_0_43])).

cnf(c_0_72,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

cnf(c_0_73,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65,c_0_38]),c_0_39]),c_0_40]),c_0_41]),c_0_42]),c_0_43])).

cnf(c_0_74,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_66,c_0_67])).

cnf(c_0_75,negated_conjecture,
    ( r2_hidden(esk1_0,X1)
    | r1_xboole_0(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_68,c_0_69])).

cnf(c_0_76,plain,
    ( k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_77,plain,
    ( k5_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_71,c_0_72]),c_0_73])).

fof(c_0_78,plain,(
    ! [X60,X61,X62] :
      ( ( r2_hidden(X60,X62)
        | ~ r1_tarski(k2_tarski(X60,X61),X62) )
      & ( r2_hidden(X61,X62)
        | ~ r1_tarski(k2_tarski(X60,X61),X62) )
      & ( ~ r2_hidden(X60,X62)
        | ~ r2_hidden(X61,X62)
        | r1_tarski(k2_tarski(X60,X61),X62) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).

cnf(c_0_79,negated_conjecture,
    ( k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(X1,k3_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,X1))))) = esk2_0
    | r2_hidden(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_74,c_0_75])).

cnf(c_0_80,negated_conjecture,
    ( k3_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk3_0)) = esk2_0 ),
    inference(rw,[status(thm)],[c_0_52,c_0_69])).

cnf(c_0_81,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,X3)) = k5_xboole_0(X3,k5_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_76,c_0_67])).

cnf(c_0_82,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(spm,[status(thm)],[c_0_76,c_0_77])).

cnf(c_0_83,plain,
    ( r1_tarski(k2_tarski(X1,X3),X2)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_78])).

cnf(c_0_84,negated_conjecture,
    ( k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,esk3_0))) = esk2_0
    | r2_hidden(esk1_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_80]),c_0_76])).

cnf(c_0_85,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = X2 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81,c_0_72]),c_0_82])).

fof(c_0_86,plain,(
    ! [X14,X15] :
      ( ~ r1_tarski(X14,X15)
      | k2_xboole_0(X14,X15) = X15 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

cnf(c_0_87,plain,
    ( r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X3),X2)
    | ~ r2_hidden(X3,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_83,c_0_27]),c_0_39]),c_0_40]),c_0_41]),c_0_42]),c_0_43])).

cnf(c_0_88,negated_conjecture,
    ( k5_xboole_0(esk2_0,esk3_0) = esk2_0
    | r2_hidden(esk1_0,esk3_0) ),
    inference(rw,[status(thm)],[c_0_84,c_0_85])).

cnf(c_0_89,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_86])).

cnf(c_0_90,negated_conjecture,
    ( k5_xboole_0(esk2_0,esk3_0) = esk2_0
    | r1_tarski(k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,X1),esk3_0)
    | ~ r2_hidden(X1,esk3_0) ),
    inference(spm,[status(thm)],[c_0_87,c_0_88])).

cnf(c_0_91,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_89,c_0_38]),c_0_39]),c_0_40]),c_0_41]),c_0_42]),c_0_43])).

cnf(c_0_92,negated_conjecture,
    ( k5_xboole_0(esk2_0,esk3_0) = esk2_0
    | r1_tarski(esk2_0,esk3_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90,c_0_88]),c_0_69])).

cnf(c_0_93,negated_conjecture,
    ( esk2_0 != esk3_0 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_94,negated_conjecture,
    ( k5_xboole_0(esk2_0,esk3_0) = esk2_0 ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_91,c_0_92]),c_0_80]),c_0_93])).

cnf(c_0_95,negated_conjecture,
    ( esk3_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_96,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85,c_0_94]),c_0_72]),c_0_95]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n006.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:57:22 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_AE_CS_SP_PI_S0a
% 0.13/0.38  # and selection function SelectNegativeLiterals.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.027 s
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.13/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.13/0.38  fof(t44_zfmisc_1, conjecture, ![X1, X2, X3]:~((((k1_tarski(X1)=k2_xboole_0(X2,X3)&X2!=X3)&X2!=k1_xboole_0)&X3!=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_zfmisc_1)).
% 0.13/0.38  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.13/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.13/0.38  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.13/0.38  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.13/0.38  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_enumset1)).
% 0.13/0.38  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_enumset1)).
% 0.13/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.13/0.38  fof(t95_xboole_1, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t95_xboole_1)).
% 0.13/0.38  fof(l3_zfmisc_1, axiom, ![X1, X2]:(r1_tarski(X1,k1_tarski(X2))<=>(X1=k1_xboole_0|X1=k1_tarski(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l3_zfmisc_1)).
% 0.13/0.38  fof(t83_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k4_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t83_xboole_1)).
% 0.13/0.38  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.13/0.38  fof(l27_zfmisc_1, axiom, ![X1, X2]:(~(r2_hidden(X1,X2))=>r1_xboole_0(k1_tarski(X1),X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l27_zfmisc_1)).
% 0.13/0.38  fof(idempotence_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', idempotence_k3_xboole_0)).
% 0.13/0.38  fof(idempotence_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', idempotence_k2_xboole_0)).
% 0.13/0.38  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.13/0.38  fof(t92_xboole_1, axiom, ![X1]:k5_xboole_0(X1,X1)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t92_xboole_1)).
% 0.13/0.38  fof(commutativity_k5_xboole_0, axiom, ![X1, X2]:k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k5_xboole_0)).
% 0.13/0.38  fof(t38_zfmisc_1, axiom, ![X1, X2, X3]:(r1_tarski(k2_tarski(X1,X2),X3)<=>(r2_hidden(X1,X3)&r2_hidden(X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t38_zfmisc_1)).
% 0.13/0.38  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.13/0.38  fof(c_0_22, plain, ![X58, X59]:k3_tarski(k2_tarski(X58,X59))=k2_xboole_0(X58,X59), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.13/0.38  fof(c_0_23, plain, ![X27, X28]:k1_enumset1(X27,X27,X28)=k2_tarski(X27,X28), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.13/0.38  fof(c_0_24, negated_conjecture, ~(![X1, X2, X3]:~((((k1_tarski(X1)=k2_xboole_0(X2,X3)&X2!=X3)&X2!=k1_xboole_0)&X3!=k1_xboole_0))), inference(assume_negation,[status(cth)],[t44_zfmisc_1])).
% 0.13/0.38  fof(c_0_25, plain, ![X16, X17]:r1_tarski(X16,k2_xboole_0(X16,X17)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.13/0.38  cnf(c_0_26, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.38  cnf(c_0_27, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.38  fof(c_0_28, plain, ![X29, X30, X31]:k2_enumset1(X29,X29,X30,X31)=k1_enumset1(X29,X30,X31), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.13/0.38  fof(c_0_29, plain, ![X32, X33, X34, X35]:k3_enumset1(X32,X32,X33,X34,X35)=k2_enumset1(X32,X33,X34,X35), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.13/0.38  fof(c_0_30, plain, ![X36, X37, X38, X39, X40]:k4_enumset1(X36,X36,X37,X38,X39,X40)=k3_enumset1(X36,X37,X38,X39,X40), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.13/0.38  fof(c_0_31, plain, ![X41, X42, X43, X44, X45, X46]:k5_enumset1(X41,X41,X42,X43,X44,X45,X46)=k4_enumset1(X41,X42,X43,X44,X45,X46), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.13/0.38  fof(c_0_32, plain, ![X47, X48, X49, X50, X51, X52, X53]:k6_enumset1(X47,X47,X48,X49,X50,X51,X52,X53)=k5_enumset1(X47,X48,X49,X50,X51,X52,X53), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.13/0.38  fof(c_0_33, negated_conjecture, (((k1_tarski(esk1_0)=k2_xboole_0(esk2_0,esk3_0)&esk2_0!=esk3_0)&esk2_0!=k1_xboole_0)&esk3_0!=k1_xboole_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_24])])])).
% 0.13/0.38  fof(c_0_34, plain, ![X26]:k2_tarski(X26,X26)=k1_tarski(X26), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.13/0.38  fof(c_0_35, plain, ![X24, X25]:k3_xboole_0(X24,X25)=k5_xboole_0(k5_xboole_0(X24,X25),k2_xboole_0(X24,X25)), inference(variable_rename,[status(thm)],[t95_xboole_1])).
% 0.13/0.38  fof(c_0_36, plain, ![X56, X57]:((~r1_tarski(X56,k1_tarski(X57))|(X56=k1_xboole_0|X56=k1_tarski(X57)))&((X56!=k1_xboole_0|r1_tarski(X56,k1_tarski(X57)))&(X56!=k1_tarski(X57)|r1_tarski(X56,k1_tarski(X57))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l3_zfmisc_1])])])).
% 0.13/0.38  cnf(c_0_37, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.13/0.38  cnf(c_0_38, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_26, c_0_27])).
% 0.13/0.38  cnf(c_0_39, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.13/0.38  cnf(c_0_40, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.13/0.38  cnf(c_0_41, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.13/0.38  cnf(c_0_42, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.13/0.38  cnf(c_0_43, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.13/0.38  cnf(c_0_44, negated_conjecture, (k1_tarski(esk1_0)=k2_xboole_0(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.38  cnf(c_0_45, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.13/0.38  fof(c_0_46, plain, ![X18, X19]:((~r1_xboole_0(X18,X19)|k4_xboole_0(X18,X19)=X18)&(k4_xboole_0(X18,X19)!=X18|r1_xboole_0(X18,X19))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).
% 0.13/0.38  fof(c_0_47, plain, ![X12, X13]:k4_xboole_0(X12,X13)=k5_xboole_0(X12,k3_xboole_0(X12,X13)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.13/0.38  cnf(c_0_48, plain, (k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.13/0.38  fof(c_0_49, plain, ![X54, X55]:(r2_hidden(X54,X55)|r1_xboole_0(k1_tarski(X54),X55)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l27_zfmisc_1])])])).
% 0.13/0.38  cnf(c_0_50, plain, (X1=k1_xboole_0|X1=k1_tarski(X2)|~r1_tarski(X1,k1_tarski(X2))), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.13/0.38  cnf(c_0_51, plain, (r1_tarski(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_37, c_0_38]), c_0_39]), c_0_40]), c_0_41]), c_0_42]), c_0_43])).
% 0.13/0.38  cnf(c_0_52, negated_conjecture, (k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)=k3_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk3_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_44, c_0_45]), c_0_27]), c_0_38]), c_0_39]), c_0_39]), c_0_40]), c_0_40]), c_0_41]), c_0_41]), c_0_42]), c_0_42]), c_0_43]), c_0_43])).
% 0.13/0.38  fof(c_0_53, plain, ![X11]:k3_xboole_0(X11,X11)=X11, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).
% 0.13/0.38  fof(c_0_54, plain, ![X10]:k2_xboole_0(X10,X10)=X10, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).
% 0.13/0.38  cnf(c_0_55, plain, (k4_xboole_0(X1,X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.13/0.38  cnf(c_0_56, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.13/0.38  cnf(c_0_57, plain, (k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48, c_0_38]), c_0_39]), c_0_40])).
% 0.13/0.38  fof(c_0_58, plain, ![X20, X21, X22]:k5_xboole_0(k5_xboole_0(X20,X21),X22)=k5_xboole_0(X20,k5_xboole_0(X21,X22)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.13/0.38  cnf(c_0_59, plain, (r2_hidden(X1,X2)|r1_xboole_0(k1_tarski(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_49])).
% 0.13/0.38  cnf(c_0_60, plain, (X1=k1_xboole_0|X1=k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2)|~r1_tarski(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50, c_0_45]), c_0_45]), c_0_27]), c_0_27]), c_0_39]), c_0_39]), c_0_40]), c_0_40]), c_0_41]), c_0_41]), c_0_42]), c_0_42]), c_0_43]), c_0_43])).
% 0.13/0.38  cnf(c_0_61, negated_conjecture, (r1_tarski(esk2_0,k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0))), inference(spm,[status(thm)],[c_0_51, c_0_52])).
% 0.13/0.38  cnf(c_0_62, negated_conjecture, (esk2_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.38  cnf(c_0_63, plain, (k3_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.13/0.38  fof(c_0_64, plain, ![X23]:k5_xboole_0(X23,X23)=k1_xboole_0, inference(variable_rename,[status(thm)],[t92_xboole_1])).
% 0.13/0.38  cnf(c_0_65, plain, (k2_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.13/0.38  cnf(c_0_66, plain, (k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))=X1|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55, c_0_56]), c_0_57]), c_0_41]), c_0_42]), c_0_43])).
% 0.13/0.38  cnf(c_0_67, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.13/0.38  cnf(c_0_68, plain, (r2_hidden(X1,X2)|r1_xboole_0(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59, c_0_45]), c_0_27]), c_0_39]), c_0_40]), c_0_41]), c_0_42]), c_0_43])).
% 0.13/0.38  cnf(c_0_69, negated_conjecture, (k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0)=esk2_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_61]), c_0_62])).
% 0.13/0.38  fof(c_0_70, plain, ![X8, X9]:k5_xboole_0(X8,X9)=k5_xboole_0(X9,X8), inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).
% 0.13/0.38  cnf(c_0_71, plain, (k5_xboole_0(k5_xboole_0(X1,X1),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63, c_0_57]), c_0_41]), c_0_42]), c_0_43])).
% 0.13/0.38  cnf(c_0_72, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.13/0.38  cnf(c_0_73, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_65, c_0_38]), c_0_39]), c_0_40]), c_0_41]), c_0_42]), c_0_43])).
% 0.13/0.38  cnf(c_0_74, plain, (k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))))=X1|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_66, c_0_67])).
% 0.13/0.38  cnf(c_0_75, negated_conjecture, (r2_hidden(esk1_0,X1)|r1_xboole_0(esk2_0,X1)), inference(spm,[status(thm)],[c_0_68, c_0_69])).
% 0.13/0.38  cnf(c_0_76, plain, (k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.13/0.38  cnf(c_0_77, plain, (k5_xboole_0(k1_xboole_0,X1)=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_71, c_0_72]), c_0_73])).
% 0.13/0.38  fof(c_0_78, plain, ![X60, X61, X62]:(((r2_hidden(X60,X62)|~r1_tarski(k2_tarski(X60,X61),X62))&(r2_hidden(X61,X62)|~r1_tarski(k2_tarski(X60,X61),X62)))&(~r2_hidden(X60,X62)|~r2_hidden(X61,X62)|r1_tarski(k2_tarski(X60,X61),X62))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).
% 0.13/0.38  cnf(c_0_79, negated_conjecture, (k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(X1,k3_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,X1)))))=esk2_0|r2_hidden(esk1_0,X1)), inference(spm,[status(thm)],[c_0_74, c_0_75])).
% 0.13/0.38  cnf(c_0_80, negated_conjecture, (k3_tarski(k6_enumset1(esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk2_0,esk3_0))=esk2_0), inference(rw,[status(thm)],[c_0_52, c_0_69])).
% 0.13/0.38  cnf(c_0_81, plain, (k5_xboole_0(X1,k5_xboole_0(X2,X3))=k5_xboole_0(X3,k5_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_76, c_0_67])).
% 0.13/0.38  cnf(c_0_82, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(spm,[status(thm)],[c_0_76, c_0_77])).
% 0.13/0.38  cnf(c_0_83, plain, (r1_tarski(k2_tarski(X1,X3),X2)|~r2_hidden(X1,X2)|~r2_hidden(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_78])).
% 0.13/0.38  cnf(c_0_84, negated_conjecture, (k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,k5_xboole_0(esk2_0,esk3_0)))=esk2_0|r2_hidden(esk1_0,esk3_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_80]), c_0_76])).
% 0.13/0.38  cnf(c_0_85, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=X2), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_81, c_0_72]), c_0_82])).
% 0.13/0.38  fof(c_0_86, plain, ![X14, X15]:(~r1_tarski(X14,X15)|k2_xboole_0(X14,X15)=X15), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.13/0.38  cnf(c_0_87, plain, (r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X3),X2)|~r2_hidden(X3,X2)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_83, c_0_27]), c_0_39]), c_0_40]), c_0_41]), c_0_42]), c_0_43])).
% 0.13/0.38  cnf(c_0_88, negated_conjecture, (k5_xboole_0(esk2_0,esk3_0)=esk2_0|r2_hidden(esk1_0,esk3_0)), inference(rw,[status(thm)],[c_0_84, c_0_85])).
% 0.13/0.38  cnf(c_0_89, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_86])).
% 0.13/0.38  cnf(c_0_90, negated_conjecture, (k5_xboole_0(esk2_0,esk3_0)=esk2_0|r1_tarski(k6_enumset1(esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,esk1_0,X1),esk3_0)|~r2_hidden(X1,esk3_0)), inference(spm,[status(thm)],[c_0_87, c_0_88])).
% 0.13/0.38  cnf(c_0_91, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))=X2|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_89, c_0_38]), c_0_39]), c_0_40]), c_0_41]), c_0_42]), c_0_43])).
% 0.13/0.38  cnf(c_0_92, negated_conjecture, (k5_xboole_0(esk2_0,esk3_0)=esk2_0|r1_tarski(esk2_0,esk3_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_90, c_0_88]), c_0_69])).
% 0.13/0.38  cnf(c_0_93, negated_conjecture, (esk2_0!=esk3_0), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.38  cnf(c_0_94, negated_conjecture, (k5_xboole_0(esk2_0,esk3_0)=esk2_0), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_91, c_0_92]), c_0_80]), c_0_93])).
% 0.13/0.38  cnf(c_0_95, negated_conjecture, (esk3_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.13/0.38  cnf(c_0_96, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85, c_0_94]), c_0_72]), c_0_95]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 97
% 0.13/0.38  # Proof object clause steps            : 52
% 0.13/0.38  # Proof object formula steps           : 45
% 0.13/0.38  # Proof object conjectures             : 19
% 0.13/0.38  # Proof object clause conjectures      : 16
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 25
% 0.13/0.38  # Proof object initial formulas used   : 22
% 0.13/0.38  # Proof object generating inferences   : 12
% 0.13/0.38  # Proof object simplifying inferences  : 84
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 22
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 30
% 0.13/0.38  # Removed in clause preprocessing      : 10
% 0.13/0.38  # Initial clauses in saturation        : 20
% 0.13/0.38  # Processed clauses                    : 56
% 0.13/0.38  # ...of these trivial                  : 3
% 0.13/0.38  # ...subsumed                          : 5
% 0.13/0.38  # ...remaining for further processing  : 48
% 0.13/0.38  # Other redundant clauses eliminated   : 0
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 11
% 0.13/0.38  # Generated clauses                    : 157
% 0.13/0.38  # ...of the previous two non-trivial   : 123
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 154
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 3
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 37
% 0.13/0.38  #    Positive orientable unit clauses  : 16
% 0.13/0.38  #    Positive unorientable unit clauses: 2
% 0.13/0.38  #    Negative unit clauses             : 3
% 0.13/0.38  #    Non-unit-clauses                  : 16
% 0.13/0.38  # Current number of unprocessed clauses: 82
% 0.13/0.38  # ...number of literals in the above   : 109
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 21
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 14
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 13
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 4
% 0.13/0.38  # Unit Clause-clause subsumption calls : 11
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 31
% 0.13/0.38  # BW rewrite match successes           : 14
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 3035
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.032 s
% 0.13/0.38  # System time              : 0.003 s
% 0.13/0.38  # Total time               : 0.035 s
% 0.13/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
