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
% DateTime   : Thu Dec  3 10:44:35 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   94 (3241 expanded)
%              Number of clauses        :   55 (1202 expanded)
%              Number of leaves         :   19 (1016 expanded)
%              Depth                    :   13
%              Number of atoms          :  185 (3494 expanded)
%              Number of equality atoms :  116 (3296 expanded)
%              Maximal formula depth    :   17 (   3 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    9 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t145_zfmisc_1,conjecture,(
    ! [X1,X2,X3] :
      ~ ( ~ r2_hidden(X1,X3)
        & ~ r2_hidden(X2,X3)
        & X3 != k4_xboole_0(k2_xboole_0(X3,k2_tarski(X1,X2)),k2_tarski(X1,X2)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t145_zfmisc_1)).

fof(t95_xboole_1,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_xboole_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t73_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5] : k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t73_enumset1)).

fof(t74_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] : k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_enumset1)).

fof(t75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_enumset1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(t40_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t40_xboole_1)).

fof(idempotence_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(idempotence_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).

fof(commutativity_k5_xboole_0,axiom,(
    ! [X1,X2] : k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k5_xboole_0)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(t92_xboole_1,axiom,(
    ! [X1] : k5_xboole_0(X1,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t92_xboole_1)).

fof(d5_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k4_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            & ~ r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_xboole_0)).

fof(d2_tarski,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_tarski(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X4 = X1
            | X4 = X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d2_tarski)).

fof(c_0_19,plain,(
    ! [X69,X70] : k3_tarski(k2_tarski(X69,X70)) = k2_xboole_0(X69,X70) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_20,plain,(
    ! [X42,X43] : k1_enumset1(X42,X42,X43) = k2_tarski(X42,X43) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_21,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ~ ( ~ r2_hidden(X1,X3)
          & ~ r2_hidden(X2,X3)
          & X3 != k4_xboole_0(k2_xboole_0(X3,k2_tarski(X1,X2)),k2_tarski(X1,X2)) ) ),
    inference(assume_negation,[status(cth)],[t145_zfmisc_1])).

fof(c_0_22,plain,(
    ! [X29,X30] : k3_xboole_0(X29,X30) = k5_xboole_0(k5_xboole_0(X29,X30),k2_xboole_0(X29,X30)) ),
    inference(variable_rename,[status(thm)],[t95_xboole_1])).

cnf(c_0_23,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_24,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_25,plain,(
    ! [X44,X45,X46] : k2_enumset1(X44,X44,X45,X46) = k1_enumset1(X44,X45,X46) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_26,plain,(
    ! [X47,X48,X49,X50] : k3_enumset1(X47,X47,X48,X49,X50) = k2_enumset1(X47,X48,X49,X50) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_27,negated_conjecture,
    ( ~ r2_hidden(esk3_0,esk5_0)
    & ~ r2_hidden(esk4_0,esk5_0)
    & esk5_0 != k4_xboole_0(k2_xboole_0(esk5_0,k2_tarski(esk3_0,esk4_0)),k2_tarski(esk3_0,esk4_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_21])])])])).

fof(c_0_28,plain,(
    ! [X21,X22] : k4_xboole_0(X21,X22) = k5_xboole_0(X21,k3_xboole_0(X21,X22)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

cnf(c_0_29,plain,
    ( k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_30,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_31,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_32,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_33,plain,(
    ! [X51,X52,X53,X54,X55] : k4_enumset1(X51,X51,X52,X53,X54,X55) = k3_enumset1(X51,X52,X53,X54,X55) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_34,plain,(
    ! [X56,X57,X58,X59,X60,X61] : k5_enumset1(X56,X56,X57,X58,X59,X60,X61) = k4_enumset1(X56,X57,X58,X59,X60,X61) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_35,plain,(
    ! [X62,X63,X64,X65,X66,X67,X68] : k6_enumset1(X62,X62,X63,X64,X65,X66,X67,X68) = k5_enumset1(X62,X63,X64,X65,X66,X67,X68) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

fof(c_0_36,plain,(
    ! [X31,X32] : k2_tarski(X31,X32) = k2_tarski(X32,X31) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

fof(c_0_37,plain,(
    ! [X23,X24] : k4_xboole_0(k2_xboole_0(X23,X24),X24) = k4_xboole_0(X23,X24) ),
    inference(variable_rename,[status(thm)],[t40_xboole_1])).

fof(c_0_38,plain,(
    ! [X20] : k3_xboole_0(X20,X20) = X20 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).

fof(c_0_39,plain,(
    ! [X19] : k2_xboole_0(X19,X19) = X19 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).

cnf(c_0_40,negated_conjecture,
    ( esk5_0 != k4_xboole_0(k2_xboole_0(esk5_0,k2_tarski(esk3_0,esk4_0)),k2_tarski(esk3_0,esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_41,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_42,plain,
    ( k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k3_enumset1(X1,X1,X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_30]),c_0_31]),c_0_32])).

cnf(c_0_43,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_44,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_45,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

fof(c_0_46,plain,(
    ! [X8,X9] : k5_xboole_0(X8,X9) = k5_xboole_0(X9,X8) ),
    inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).

cnf(c_0_47,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

fof(c_0_48,plain,(
    ! [X25,X26,X27] : k5_xboole_0(k5_xboole_0(X25,X26),X27) = k5_xboole_0(X25,k5_xboole_0(X26,X27)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

cnf(c_0_49,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_50,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

fof(c_0_51,plain,(
    ! [X28] : k5_xboole_0(X28,X28) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t92_xboole_1])).

cnf(c_0_52,plain,
    ( k2_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

fof(c_0_53,plain,(
    ! [X10,X11,X12,X13,X14,X15,X16,X17] :
      ( ( r2_hidden(X13,X10)
        | ~ r2_hidden(X13,X12)
        | X12 != k4_xboole_0(X10,X11) )
      & ( ~ r2_hidden(X13,X11)
        | ~ r2_hidden(X13,X12)
        | X12 != k4_xboole_0(X10,X11) )
      & ( ~ r2_hidden(X14,X10)
        | r2_hidden(X14,X11)
        | r2_hidden(X14,X12)
        | X12 != k4_xboole_0(X10,X11) )
      & ( ~ r2_hidden(esk1_3(X15,X16,X17),X17)
        | ~ r2_hidden(esk1_3(X15,X16,X17),X15)
        | r2_hidden(esk1_3(X15,X16,X17),X16)
        | X17 = k4_xboole_0(X15,X16) )
      & ( r2_hidden(esk1_3(X15,X16,X17),X15)
        | r2_hidden(esk1_3(X15,X16,X17),X17)
        | X17 = k4_xboole_0(X15,X16) )
      & ( ~ r2_hidden(esk1_3(X15,X16,X17),X16)
        | r2_hidden(esk1_3(X15,X16,X17),X17)
        | X17 = k4_xboole_0(X15,X16) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).

cnf(c_0_54,negated_conjecture,
    ( esk5_0 != k5_xboole_0(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k5_xboole_0(k5_xboole_0(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)),k3_tarski(k6_enumset1(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40,c_0_24]),c_0_24]),c_0_30]),c_0_41]),c_0_31]),c_0_31]),c_0_31]),c_0_31]),c_0_31]),c_0_32]),c_0_32]),c_0_32]),c_0_32]),c_0_32]),c_0_42]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45])).

cnf(c_0_55,plain,
    ( k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_56,plain,
    ( k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2) = k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_47,c_0_24]),c_0_24]),c_0_31]),c_0_31]),c_0_32]),c_0_32]),c_0_43]),c_0_43]),c_0_44]),c_0_44]),c_0_45]),c_0_45])).

cnf(c_0_57,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

cnf(c_0_58,plain,
    ( k5_xboole_0(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k5_xboole_0(k5_xboole_0(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),X2),k3_tarski(k6_enumset1(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),X2)))) = k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_49,c_0_30]),c_0_41]),c_0_41]),c_0_31]),c_0_31]),c_0_32]),c_0_32]),c_0_42]),c_0_42]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_43]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_44]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45]),c_0_45])).

cnf(c_0_59,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X1),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50,c_0_42]),c_0_43]),c_0_44]),c_0_45])).

cnf(c_0_60,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_61,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_52,c_0_30]),c_0_31]),c_0_32]),c_0_43]),c_0_44]),c_0_45])).

cnf(c_0_62,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),X1)
    | r2_hidden(esk1_3(X1,X2,X3),X3)
    | X3 = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_63,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),X2)
    | X3 = k4_xboole_0(X1,X2)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X3)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_64,negated_conjecture,
    ( k5_xboole_0(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k5_xboole_0(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)))))))) != esk5_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54,c_0_55]),c_0_56]),c_0_57])).

cnf(c_0_65,plain,
    ( k5_xboole_0(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k5_xboole_0(X2,k5_xboole_0(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))))) = k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_58,c_0_55]),c_0_56]),c_0_57]),c_0_57])).

cnf(c_0_66,plain,
    ( k5_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59,c_0_60]),c_0_61])).

cnf(c_0_67,plain,
    ( X3 = k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))
    | r2_hidden(esk1_3(X1,X2,X3),X3)
    | r2_hidden(esk1_3(X1,X2,X3),X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_62,c_0_41]),c_0_42]),c_0_43]),c_0_44]),c_0_45])).

fof(c_0_68,plain,(
    ! [X33,X34,X35,X36,X37,X38,X39,X40] :
      ( ( ~ r2_hidden(X36,X35)
        | X36 = X33
        | X36 = X34
        | X35 != k2_tarski(X33,X34) )
      & ( X37 != X33
        | r2_hidden(X37,X35)
        | X35 != k2_tarski(X33,X34) )
      & ( X37 != X34
        | r2_hidden(X37,X35)
        | X35 != k2_tarski(X33,X34) )
      & ( esk2_3(X38,X39,X40) != X38
        | ~ r2_hidden(esk2_3(X38,X39,X40),X40)
        | X40 = k2_tarski(X38,X39) )
      & ( esk2_3(X38,X39,X40) != X39
        | ~ r2_hidden(esk2_3(X38,X39,X40),X40)
        | X40 = k2_tarski(X38,X39) )
      & ( r2_hidden(esk2_3(X38,X39,X40),X40)
        | esk2_3(X38,X39,X40) = X38
        | esk2_3(X38,X39,X40) = X39
        | X40 = k2_tarski(X38,X39) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).

cnf(c_0_69,plain,
    ( X3 = k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))
    | r2_hidden(esk1_3(X1,X2,X3),X2)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X3)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63,c_0_41]),c_0_42]),c_0_43]),c_0_44]),c_0_45])).

cnf(c_0_70,negated_conjecture,
    ( k5_xboole_0(esk5_0,k5_xboole_0(esk5_0,k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)))))) != esk5_0 ),
    inference(rw,[status(thm)],[c_0_64,c_0_65])).

cnf(c_0_71,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = X2 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_60]),c_0_66])).

cnf(c_0_72,plain,
    ( X1 = k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X3,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))))
    | r2_hidden(esk1_3(X2,X3,X1),X2)
    | r2_hidden(esk1_3(X2,X3,X1),X1) ),
    inference(rw,[status(thm)],[c_0_67,c_0_57])).

cnf(c_0_73,plain,
    ( r2_hidden(esk1_3(X1,X2,X3),X3)
    | X3 = k4_xboole_0(X1,X2)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_74,plain,
    ( X1 = X3
    | X1 = X4
    | ~ r2_hidden(X1,X2)
    | X2 != k2_tarski(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_75,plain,
    ( X1 = k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X3,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))))
    | r2_hidden(esk1_3(X2,X3,X1),X3)
    | ~ r2_hidden(esk1_3(X2,X3,X1),X1)
    | ~ r2_hidden(esk1_3(X2,X3,X1),X2) ),
    inference(rw,[status(thm)],[c_0_69,c_0_57])).

cnf(c_0_76,negated_conjecture,
    ( k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)))) != esk5_0 ),
    inference(rw,[status(thm)],[c_0_70,c_0_71])).

cnf(c_0_77,plain,
    ( X1 = k5_xboole_0(X2,k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2)))
    | r2_hidden(esk1_3(X3,X2,X1),X1)
    | r2_hidden(esk1_3(X3,X2,X1),X3) ),
    inference(rw,[status(thm)],[c_0_72,c_0_71])).

cnf(c_0_78,plain,
    ( X3 = k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))
    | r2_hidden(esk1_3(X1,X2,X3),X3)
    | ~ r2_hidden(esk1_3(X1,X2,X3),X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_73,c_0_41]),c_0_42]),c_0_43]),c_0_44]),c_0_45])).

cnf(c_0_79,plain,
    ( X1 = X4
    | X1 = X3
    | X2 != k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X4)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_74,c_0_24]),c_0_31]),c_0_32]),c_0_43]),c_0_44]),c_0_45])).

cnf(c_0_80,plain,
    ( X1 = k5_xboole_0(X2,k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2)))
    | r2_hidden(esk1_3(X3,X2,X1),X2)
    | ~ r2_hidden(esk1_3(X3,X2,X1),X1)
    | ~ r2_hidden(esk1_3(X3,X2,X1),X3) ),
    inference(rw,[status(thm)],[c_0_75,c_0_71])).

cnf(c_0_81,negated_conjecture,
    ( r2_hidden(esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0),esk5_0) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_77])])).

cnf(c_0_82,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_68])).

cnf(c_0_83,plain,
    ( X1 = k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X3,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))))
    | r2_hidden(esk1_3(X2,X3,X1),X1)
    | ~ r2_hidden(esk1_3(X2,X3,X1),X3) ),
    inference(rw,[status(thm)],[c_0_78,c_0_57])).

cnf(c_0_84,plain,
    ( X1 = X2
    | X1 = X3
    | ~ r2_hidden(X1,k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2)) ),
    inference(er,[status(thm)],[c_0_79])).

cnf(c_0_85,negated_conjecture,
    ( r2_hidden(esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_81]),c_0_81])]),c_0_76])).

cnf(c_0_86,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k6_enumset1(X4,X4,X4,X4,X4,X4,X4,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_82,c_0_24]),c_0_31]),c_0_32]),c_0_43]),c_0_44]),c_0_45])).

cnf(c_0_87,plain,
    ( X1 = k5_xboole_0(X2,k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2)))
    | r2_hidden(esk1_3(X3,X2,X1),X1)
    | ~ r2_hidden(esk1_3(X3,X2,X1),X2) ),
    inference(rw,[status(thm)],[c_0_83,c_0_71])).

cnf(c_0_88,negated_conjecture,
    ( esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0) = esk4_0
    | esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0) = esk3_0 ),
    inference(spm,[status(thm)],[c_0_84,c_0_85])).

cnf(c_0_89,plain,
    ( r2_hidden(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_86])])).

cnf(c_0_90,negated_conjecture,
    ( ~ r2_hidden(esk4_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_91,negated_conjecture,
    ( esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0) = esk3_0 ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87,c_0_88]),c_0_89])]),c_0_76]),c_0_90])).

cnf(c_0_92,negated_conjecture,
    ( ~ r2_hidden(esk3_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_93,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_81,c_0_91]),c_0_92]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n013.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 11:26:54 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.19/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.028 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.19/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.19/0.38  fof(t145_zfmisc_1, conjecture, ![X1, X2, X3]:~(((~(r2_hidden(X1,X3))&~(r2_hidden(X2,X3)))&X3!=k4_xboole_0(k2_xboole_0(X3,k2_tarski(X1,X2)),k2_tarski(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t145_zfmisc_1)).
% 0.19/0.38  fof(t95_xboole_1, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t95_xboole_1)).
% 0.19/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.19/0.38  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.19/0.38  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.19/0.38  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t73_enumset1)).
% 0.19/0.38  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_enumset1)).
% 0.19/0.38  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_enumset1)).
% 0.19/0.38  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.19/0.38  fof(t40_xboole_1, axiom, ![X1, X2]:k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t40_xboole_1)).
% 0.19/0.38  fof(idempotence_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', idempotence_k3_xboole_0)).
% 0.19/0.38  fof(idempotence_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', idempotence_k2_xboole_0)).
% 0.19/0.38  fof(commutativity_k5_xboole_0, axiom, ![X1, X2]:k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k5_xboole_0)).
% 0.19/0.38  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.19/0.38  fof(t92_xboole_1, axiom, ![X1]:k5_xboole_0(X1,X1)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t92_xboole_1)).
% 0.19/0.38  fof(d5_xboole_0, axiom, ![X1, X2, X3]:(X3=k4_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)&~(r2_hidden(X4,X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d5_xboole_0)).
% 0.19/0.38  fof(d2_tarski, axiom, ![X1, X2, X3]:(X3=k2_tarski(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(X4=X1|X4=X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d2_tarski)).
% 0.19/0.38  fof(c_0_19, plain, ![X69, X70]:k3_tarski(k2_tarski(X69,X70))=k2_xboole_0(X69,X70), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.19/0.38  fof(c_0_20, plain, ![X42, X43]:k1_enumset1(X42,X42,X43)=k2_tarski(X42,X43), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.19/0.38  fof(c_0_21, negated_conjecture, ~(![X1, X2, X3]:~(((~(r2_hidden(X1,X3))&~(r2_hidden(X2,X3)))&X3!=k4_xboole_0(k2_xboole_0(X3,k2_tarski(X1,X2)),k2_tarski(X1,X2))))), inference(assume_negation,[status(cth)],[t145_zfmisc_1])).
% 0.19/0.38  fof(c_0_22, plain, ![X29, X30]:k3_xboole_0(X29,X30)=k5_xboole_0(k5_xboole_0(X29,X30),k2_xboole_0(X29,X30)), inference(variable_rename,[status(thm)],[t95_xboole_1])).
% 0.19/0.38  cnf(c_0_23, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.19/0.38  cnf(c_0_24, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.38  fof(c_0_25, plain, ![X44, X45, X46]:k2_enumset1(X44,X44,X45,X46)=k1_enumset1(X44,X45,X46), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.19/0.38  fof(c_0_26, plain, ![X47, X48, X49, X50]:k3_enumset1(X47,X47,X48,X49,X50)=k2_enumset1(X47,X48,X49,X50), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.19/0.38  fof(c_0_27, negated_conjecture, ((~r2_hidden(esk3_0,esk5_0)&~r2_hidden(esk4_0,esk5_0))&esk5_0!=k4_xboole_0(k2_xboole_0(esk5_0,k2_tarski(esk3_0,esk4_0)),k2_tarski(esk3_0,esk4_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_21])])])])).
% 0.19/0.38  fof(c_0_28, plain, ![X21, X22]:k4_xboole_0(X21,X22)=k5_xboole_0(X21,k3_xboole_0(X21,X22)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.19/0.38  cnf(c_0_29, plain, (k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.38  cnf(c_0_30, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_23, c_0_24])).
% 0.19/0.38  cnf(c_0_31, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.38  cnf(c_0_32, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.38  fof(c_0_33, plain, ![X51, X52, X53, X54, X55]:k4_enumset1(X51,X51,X52,X53,X54,X55)=k3_enumset1(X51,X52,X53,X54,X55), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.19/0.38  fof(c_0_34, plain, ![X56, X57, X58, X59, X60, X61]:k5_enumset1(X56,X56,X57,X58,X59,X60,X61)=k4_enumset1(X56,X57,X58,X59,X60,X61), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.19/0.38  fof(c_0_35, plain, ![X62, X63, X64, X65, X66, X67, X68]:k6_enumset1(X62,X62,X63,X64,X65,X66,X67,X68)=k5_enumset1(X62,X63,X64,X65,X66,X67,X68), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.19/0.38  fof(c_0_36, plain, ![X31, X32]:k2_tarski(X31,X32)=k2_tarski(X32,X31), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.19/0.38  fof(c_0_37, plain, ![X23, X24]:k4_xboole_0(k2_xboole_0(X23,X24),X24)=k4_xboole_0(X23,X24), inference(variable_rename,[status(thm)],[t40_xboole_1])).
% 0.19/0.38  fof(c_0_38, plain, ![X20]:k3_xboole_0(X20,X20)=X20, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).
% 0.19/0.38  fof(c_0_39, plain, ![X19]:k2_xboole_0(X19,X19)=X19, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).
% 0.19/0.38  cnf(c_0_40, negated_conjecture, (esk5_0!=k4_xboole_0(k2_xboole_0(esk5_0,k2_tarski(esk3_0,esk4_0)),k2_tarski(esk3_0,esk4_0))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.19/0.38  cnf(c_0_41, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.38  cnf(c_0_42, plain, (k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_30]), c_0_31]), c_0_32])).
% 0.19/0.38  cnf(c_0_43, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.19/0.38  cnf(c_0_44, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.19/0.38  cnf(c_0_45, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.19/0.38  fof(c_0_46, plain, ![X8, X9]:k5_xboole_0(X8,X9)=k5_xboole_0(X9,X8), inference(variable_rename,[status(thm)],[commutativity_k5_xboole_0])).
% 0.19/0.38  cnf(c_0_47, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.19/0.38  fof(c_0_48, plain, ![X25, X26, X27]:k5_xboole_0(k5_xboole_0(X25,X26),X27)=k5_xboole_0(X25,k5_xboole_0(X26,X27)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.19/0.38  cnf(c_0_49, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.19/0.38  cnf(c_0_50, plain, (k3_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.19/0.38  fof(c_0_51, plain, ![X28]:k5_xboole_0(X28,X28)=k1_xboole_0, inference(variable_rename,[status(thm)],[t92_xboole_1])).
% 0.19/0.38  cnf(c_0_52, plain, (k2_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.38  fof(c_0_53, plain, ![X10, X11, X12, X13, X14, X15, X16, X17]:((((r2_hidden(X13,X10)|~r2_hidden(X13,X12)|X12!=k4_xboole_0(X10,X11))&(~r2_hidden(X13,X11)|~r2_hidden(X13,X12)|X12!=k4_xboole_0(X10,X11)))&(~r2_hidden(X14,X10)|r2_hidden(X14,X11)|r2_hidden(X14,X12)|X12!=k4_xboole_0(X10,X11)))&((~r2_hidden(esk1_3(X15,X16,X17),X17)|(~r2_hidden(esk1_3(X15,X16,X17),X15)|r2_hidden(esk1_3(X15,X16,X17),X16))|X17=k4_xboole_0(X15,X16))&((r2_hidden(esk1_3(X15,X16,X17),X15)|r2_hidden(esk1_3(X15,X16,X17),X17)|X17=k4_xboole_0(X15,X16))&(~r2_hidden(esk1_3(X15,X16,X17),X16)|r2_hidden(esk1_3(X15,X16,X17),X17)|X17=k4_xboole_0(X15,X16))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).
% 0.19/0.38  cnf(c_0_54, negated_conjecture, (esk5_0!=k5_xboole_0(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k5_xboole_0(k5_xboole_0(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)),k3_tarski(k6_enumset1(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0)))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_40, c_0_24]), c_0_24]), c_0_30]), c_0_41]), c_0_31]), c_0_31]), c_0_31]), c_0_31]), c_0_31]), c_0_32]), c_0_32]), c_0_32]), c_0_32]), c_0_32]), c_0_42]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45])).
% 0.19/0.38  cnf(c_0_55, plain, (k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.19/0.38  cnf(c_0_56, plain, (k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)=k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_47, c_0_24]), c_0_24]), c_0_31]), c_0_31]), c_0_32]), c_0_32]), c_0_43]), c_0_43]), c_0_44]), c_0_44]), c_0_45]), c_0_45])).
% 0.19/0.38  cnf(c_0_57, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.19/0.38  cnf(c_0_58, plain, (k5_xboole_0(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k5_xboole_0(k5_xboole_0(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),X2),k3_tarski(k6_enumset1(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),X2))))=k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_49, c_0_30]), c_0_41]), c_0_41]), c_0_31]), c_0_31]), c_0_32]), c_0_32]), c_0_42]), c_0_42]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_43]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_44]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45]), c_0_45])).
% 0.19/0.38  cnf(c_0_59, plain, (k5_xboole_0(k5_xboole_0(X1,X1),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1)))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_50, c_0_42]), c_0_43]), c_0_44]), c_0_45])).
% 0.19/0.38  cnf(c_0_60, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.19/0.38  cnf(c_0_61, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_52, c_0_30]), c_0_31]), c_0_32]), c_0_43]), c_0_44]), c_0_45])).
% 0.19/0.38  cnf(c_0_62, plain, (r2_hidden(esk1_3(X1,X2,X3),X1)|r2_hidden(esk1_3(X1,X2,X3),X3)|X3=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.19/0.38  cnf(c_0_63, plain, (r2_hidden(esk1_3(X1,X2,X3),X2)|X3=k4_xboole_0(X1,X2)|~r2_hidden(esk1_3(X1,X2,X3),X3)|~r2_hidden(esk1_3(X1,X2,X3),X1)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.19/0.38  cnf(c_0_64, negated_conjecture, (k5_xboole_0(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k5_xboole_0(k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))),k3_tarski(k6_enumset1(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))))))))!=esk5_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54, c_0_55]), c_0_56]), c_0_57])).
% 0.19/0.38  cnf(c_0_65, plain, (k5_xboole_0(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k5_xboole_0(X2,k5_xboole_0(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))))))=k5_xboole_0(X1,k5_xboole_0(X1,k5_xboole_0(X2,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_58, c_0_55]), c_0_56]), c_0_57]), c_0_57])).
% 0.19/0.38  cnf(c_0_66, plain, (k5_xboole_0(k1_xboole_0,X1)=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_59, c_0_60]), c_0_61])).
% 0.19/0.38  cnf(c_0_67, plain, (X3=k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))|r2_hidden(esk1_3(X1,X2,X3),X3)|r2_hidden(esk1_3(X1,X2,X3),X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_62, c_0_41]), c_0_42]), c_0_43]), c_0_44]), c_0_45])).
% 0.19/0.38  fof(c_0_68, plain, ![X33, X34, X35, X36, X37, X38, X39, X40]:(((~r2_hidden(X36,X35)|(X36=X33|X36=X34)|X35!=k2_tarski(X33,X34))&((X37!=X33|r2_hidden(X37,X35)|X35!=k2_tarski(X33,X34))&(X37!=X34|r2_hidden(X37,X35)|X35!=k2_tarski(X33,X34))))&(((esk2_3(X38,X39,X40)!=X38|~r2_hidden(esk2_3(X38,X39,X40),X40)|X40=k2_tarski(X38,X39))&(esk2_3(X38,X39,X40)!=X39|~r2_hidden(esk2_3(X38,X39,X40),X40)|X40=k2_tarski(X38,X39)))&(r2_hidden(esk2_3(X38,X39,X40),X40)|(esk2_3(X38,X39,X40)=X38|esk2_3(X38,X39,X40)=X39)|X40=k2_tarski(X38,X39)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).
% 0.19/0.38  cnf(c_0_69, plain, (X3=k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))|r2_hidden(esk1_3(X1,X2,X3),X2)|~r2_hidden(esk1_3(X1,X2,X3),X3)|~r2_hidden(esk1_3(X1,X2,X3),X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_63, c_0_41]), c_0_42]), c_0_43]), c_0_44]), c_0_45])).
% 0.19/0.38  cnf(c_0_70, negated_conjecture, (k5_xboole_0(esk5_0,k5_xboole_0(esk5_0,k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))))))!=esk5_0), inference(rw,[status(thm)],[c_0_64, c_0_65])).
% 0.19/0.38  cnf(c_0_71, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=X2), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_60]), c_0_66])).
% 0.19/0.38  cnf(c_0_72, plain, (X1=k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X3,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))))|r2_hidden(esk1_3(X2,X3,X1),X2)|r2_hidden(esk1_3(X2,X3,X1),X1)), inference(rw,[status(thm)],[c_0_67, c_0_57])).
% 0.19/0.38  cnf(c_0_73, plain, (r2_hidden(esk1_3(X1,X2,X3),X3)|X3=k4_xboole_0(X1,X2)|~r2_hidden(esk1_3(X1,X2,X3),X2)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.19/0.38  cnf(c_0_74, plain, (X1=X3|X1=X4|~r2_hidden(X1,X2)|X2!=k2_tarski(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.19/0.38  cnf(c_0_75, plain, (X1=k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X3,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))))|r2_hidden(esk1_3(X2,X3,X1),X3)|~r2_hidden(esk1_3(X2,X3,X1),X1)|~r2_hidden(esk1_3(X2,X3,X1),X2)), inference(rw,[status(thm)],[c_0_69, c_0_57])).
% 0.19/0.38  cnf(c_0_76, negated_conjecture, (k5_xboole_0(k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))))!=esk5_0), inference(rw,[status(thm)],[c_0_70, c_0_71])).
% 0.19/0.38  cnf(c_0_77, plain, (X1=k5_xboole_0(X2,k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2)))|r2_hidden(esk1_3(X3,X2,X1),X1)|r2_hidden(esk1_3(X3,X2,X1),X3)), inference(rw,[status(thm)],[c_0_72, c_0_71])).
% 0.19/0.38  cnf(c_0_78, plain, (X3=k5_xboole_0(X1,k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))))|r2_hidden(esk1_3(X1,X2,X3),X3)|~r2_hidden(esk1_3(X1,X2,X3),X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_73, c_0_41]), c_0_42]), c_0_43]), c_0_44]), c_0_45])).
% 0.19/0.38  cnf(c_0_79, plain, (X1=X4|X1=X3|X2!=k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X4)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_74, c_0_24]), c_0_31]), c_0_32]), c_0_43]), c_0_44]), c_0_45])).
% 0.19/0.38  cnf(c_0_80, plain, (X1=k5_xboole_0(X2,k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2)))|r2_hidden(esk1_3(X3,X2,X1),X2)|~r2_hidden(esk1_3(X3,X2,X1),X1)|~r2_hidden(esk1_3(X3,X2,X1),X3)), inference(rw,[status(thm)],[c_0_75, c_0_71])).
% 0.19/0.38  cnf(c_0_81, negated_conjecture, (r2_hidden(esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0),esk5_0)), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_77])])).
% 0.19/0.38  cnf(c_0_82, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_tarski(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_68])).
% 0.19/0.38  cnf(c_0_83, plain, (X1=k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X3,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))))|r2_hidden(esk1_3(X2,X3,X1),X1)|~r2_hidden(esk1_3(X2,X3,X1),X3)), inference(rw,[status(thm)],[c_0_78, c_0_57])).
% 0.19/0.38  cnf(c_0_84, plain, (X1=X2|X1=X3|~r2_hidden(X1,k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2))), inference(er,[status(thm)],[c_0_79])).
% 0.19/0.38  cnf(c_0_85, negated_conjecture, (r2_hidden(esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0),k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_81]), c_0_81])]), c_0_76])).
% 0.19/0.38  cnf(c_0_86, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k6_enumset1(X4,X4,X4,X4,X4,X4,X4,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_82, c_0_24]), c_0_31]), c_0_32]), c_0_43]), c_0_44]), c_0_45])).
% 0.19/0.38  cnf(c_0_87, plain, (X1=k5_xboole_0(X2,k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,X2)))|r2_hidden(esk1_3(X3,X2,X1),X1)|~r2_hidden(esk1_3(X3,X2,X1),X2)), inference(rw,[status(thm)],[c_0_83, c_0_71])).
% 0.19/0.38  cnf(c_0_88, negated_conjecture, (esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0)=esk4_0|esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0)=esk3_0), inference(spm,[status(thm)],[c_0_84, c_0_85])).
% 0.19/0.38  cnf(c_0_89, plain, (r2_hidden(X1,k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_86])])).
% 0.19/0.38  cnf(c_0_90, negated_conjecture, (~r2_hidden(esk4_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.19/0.38  cnf(c_0_91, negated_conjecture, (esk1_3(esk5_0,k6_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk3_0,esk4_0),esk5_0)=esk3_0), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_87, c_0_88]), c_0_89])]), c_0_76]), c_0_90])).
% 0.19/0.38  cnf(c_0_92, negated_conjecture, (~r2_hidden(esk3_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.19/0.38  cnf(c_0_93, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_81, c_0_91]), c_0_92]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 94
% 0.19/0.38  # Proof object clause steps            : 55
% 0.19/0.38  # Proof object formula steps           : 39
% 0.19/0.38  # Proof object conjectures             : 15
% 0.19/0.38  # Proof object clause conjectures      : 12
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 24
% 0.19/0.38  # Proof object initial formulas used   : 19
% 0.19/0.38  # Proof object generating inferences   : 5
% 0.19/0.38  # Proof object simplifying inferences  : 186
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 19
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 31
% 0.19/0.38  # Removed in clause preprocessing      : 9
% 0.19/0.38  # Initial clauses in saturation        : 22
% 0.19/0.38  # Processed clauses                    : 157
% 0.19/0.38  # ...of these trivial                  : 8
% 0.19/0.38  # ...subsumed                          : 74
% 0.19/0.38  # ...remaining for further processing  : 75
% 0.19/0.38  # Other redundant clauses eliminated   : 14
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 0
% 0.19/0.38  # Backward-rewritten                   : 5
% 0.19/0.38  # Generated clauses                    : 649
% 0.19/0.38  # ...of the previous two non-trivial   : 538
% 0.19/0.38  # Contextual simplify-reflections      : 1
% 0.19/0.38  # Paramodulations                      : 636
% 0.19/0.38  # Factorizations                       : 1
% 0.19/0.38  # Equation resolutions                 : 14
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
% 0.19/0.38  # Current number of processed clauses  : 42
% 0.19/0.38  #    Positive orientable unit clauses  : 13
% 0.19/0.38  #    Positive unorientable unit clauses: 4
% 0.19/0.38  #    Negative unit clauses             : 4
% 0.19/0.38  #    Non-unit-clauses                  : 21
% 0.19/0.38  # Current number of unprocessed clauses: 425
% 0.19/0.38  # ...number of literals in the above   : 1318
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 36
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 192
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 159
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 41
% 0.19/0.38  # Unit Clause-clause subsumption calls : 26
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 86
% 0.19/0.38  # BW rewrite match successes           : 73
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 11111
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.042 s
% 0.19/0.38  # System time              : 0.005 s
% 0.19/0.38  # Total time               : 0.047 s
% 0.19/0.38  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
