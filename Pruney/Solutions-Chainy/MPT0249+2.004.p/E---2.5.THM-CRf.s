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
% DateTime   : Thu Dec  3 10:39:59 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :  104 (2065 expanded)
%              Number of clauses        :   59 ( 804 expanded)
%              Number of leaves         :   22 ( 615 expanded)
%              Depth                    :   19
%              Number of atoms          :  189 (2869 expanded)
%              Number of equality atoms :  126 (2426 expanded)
%              Maximal formula depth    :   22 (   3 average)
%              Maximal clause size      :   28 (   1 average)
%              Maximal term depth       :    8 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t44_zfmisc_1,conjecture,(
    ! [X1,X2,X3] :
      ~ ( k1_tarski(X1) = k2_xboole_0(X2,X3)
        & X2 != X3
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t44_zfmisc_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

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

fof(t75_enumset1,axiom,(
    ! [X1,X2,X3,X4,X5,X6,X7] : k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t75_enumset1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(d1_enumset1,axiom,(
    ! [X1,X2,X3,X4] :
      ( X4 = k1_enumset1(X1,X2,X3)
    <=> ! [X5] :
          ( r2_hidden(X5,X4)
        <=> ~ ( X5 != X1
              & X5 != X2
              & X5 != X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_enumset1)).

fof(t7_xboole_0,axiom,(
    ! [X1] :
      ~ ( X1 != k1_xboole_0
        & ! [X2] : ~ r2_hidden(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_0)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t91_xboole_1)).

fof(t92_xboole_1,axiom,(
    ! [X1] : k5_xboole_0(X1,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t92_xboole_1)).

fof(t95_xboole_1,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t95_xboole_1)).

fof(l1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(k1_tarski(X1),X2)
    <=> r2_hidden(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l1_zfmisc_1)).

fof(t5_boole,axiom,(
    ! [X1] : k5_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_boole)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(c_0_22,plain,(
    ! [X74,X75] : k3_tarski(k2_tarski(X74,X75)) = k2_xboole_0(X74,X75) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_23,plain,(
    ! [X45,X46] : k1_enumset1(X45,X45,X46) = k2_tarski(X45,X46) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_24,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ~ ( k1_tarski(X1) = k2_xboole_0(X2,X3)
          & X2 != X3
          & X2 != k1_xboole_0
          & X3 != k1_xboole_0 ) ),
    inference(assume_negation,[status(cth)],[t44_zfmisc_1])).

fof(c_0_25,plain,(
    ! [X25,X26] : r1_tarski(X25,k2_xboole_0(X25,X26)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

cnf(c_0_26,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_27,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_28,plain,(
    ! [X47,X48,X49] : k2_enumset1(X47,X47,X48,X49) = k1_enumset1(X47,X48,X49) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_29,plain,(
    ! [X50,X51,X52,X53] : k3_enumset1(X50,X50,X51,X52,X53) = k2_enumset1(X50,X51,X52,X53) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_30,plain,(
    ! [X54,X55,X56,X57,X58] : k4_enumset1(X54,X54,X55,X56,X57,X58) = k3_enumset1(X54,X55,X56,X57,X58) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_31,plain,(
    ! [X59,X60,X61,X62,X63,X64] : k5_enumset1(X59,X59,X60,X61,X62,X63,X64) = k4_enumset1(X59,X60,X61,X62,X63,X64) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_32,plain,(
    ! [X65,X66,X67,X68,X69,X70,X71] : k6_enumset1(X65,X65,X66,X67,X68,X69,X70,X71) = k5_enumset1(X65,X66,X67,X68,X69,X70,X71) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

fof(c_0_33,negated_conjecture,
    ( k1_tarski(esk4_0) = k2_xboole_0(esk5_0,esk6_0)
    & esk5_0 != esk6_0
    & esk5_0 != k1_xboole_0
    & esk6_0 != k1_xboole_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_24])])])).

fof(c_0_34,plain,(
    ! [X44] : k2_tarski(X44,X44) = k1_tarski(X44) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

cnf(c_0_35,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_36,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_37,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_38,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_39,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_40,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_41,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_42,negated_conjecture,
    ( k1_tarski(esk4_0) = k2_xboole_0(esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_43,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

fof(c_0_44,plain,(
    ! [X10,X11,X12,X13,X14] :
      ( ( ~ r1_tarski(X10,X11)
        | ~ r2_hidden(X12,X10)
        | r2_hidden(X12,X11) )
      & ( r2_hidden(esk1_2(X13,X14),X13)
        | r1_tarski(X13,X14) )
      & ( ~ r2_hidden(esk1_2(X13,X14),X14)
        | r1_tarski(X13,X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_45,plain,
    ( r1_tarski(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35,c_0_36]),c_0_37]),c_0_38]),c_0_39]),c_0_40]),c_0_41])).

cnf(c_0_46,negated_conjecture,
    ( k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0) = k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk6_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42,c_0_43]),c_0_27]),c_0_36]),c_0_37]),c_0_37]),c_0_38]),c_0_38]),c_0_39]),c_0_39]),c_0_40]),c_0_40]),c_0_41]),c_0_41])).

fof(c_0_47,plain,(
    ! [X33,X34,X35,X36,X37,X38,X39,X40,X41,X42] :
      ( ( ~ r2_hidden(X37,X36)
        | X37 = X33
        | X37 = X34
        | X37 = X35
        | X36 != k1_enumset1(X33,X34,X35) )
      & ( X38 != X33
        | r2_hidden(X38,X36)
        | X36 != k1_enumset1(X33,X34,X35) )
      & ( X38 != X34
        | r2_hidden(X38,X36)
        | X36 != k1_enumset1(X33,X34,X35) )
      & ( X38 != X35
        | r2_hidden(X38,X36)
        | X36 != k1_enumset1(X33,X34,X35) )
      & ( esk3_4(X39,X40,X41,X42) != X39
        | ~ r2_hidden(esk3_4(X39,X40,X41,X42),X42)
        | X42 = k1_enumset1(X39,X40,X41) )
      & ( esk3_4(X39,X40,X41,X42) != X40
        | ~ r2_hidden(esk3_4(X39,X40,X41,X42),X42)
        | X42 = k1_enumset1(X39,X40,X41) )
      & ( esk3_4(X39,X40,X41,X42) != X41
        | ~ r2_hidden(esk3_4(X39,X40,X41,X42),X42)
        | X42 = k1_enumset1(X39,X40,X41) )
      & ( r2_hidden(esk3_4(X39,X40,X41,X42),X42)
        | esk3_4(X39,X40,X41,X42) = X39
        | esk3_4(X39,X40,X41,X42) = X40
        | esk3_4(X39,X40,X41,X42) = X41
        | X42 = k1_enumset1(X39,X40,X41) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).

cnf(c_0_48,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_49,negated_conjecture,
    ( r1_tarski(esk5_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

fof(c_0_50,plain,(
    ! [X16] :
      ( X16 = k1_xboole_0
      | r2_hidden(esk2_1(X16),X16) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).

cnf(c_0_51,plain,
    ( X1 = X3
    | X1 = X4
    | X1 = X5
    | ~ r2_hidden(X1,X2)
    | X2 != k1_enumset1(X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_52,negated_conjecture,
    ( r2_hidden(X1,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))
    | ~ r2_hidden(X1,esk5_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_53,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk2_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_54,negated_conjecture,
    ( esk5_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_55,plain,
    ( X1 = X5
    | X1 = X4
    | X1 = X3
    | X2 != k6_enumset1(X3,X3,X3,X3,X3,X3,X4,X5)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_51,c_0_37]),c_0_38]),c_0_39]),c_0_40]),c_0_41])).

cnf(c_0_56,negated_conjecture,
    ( r2_hidden(esk2_1(esk5_0),k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_53]),c_0_54])).

fof(c_0_57,plain,(
    ! [X27,X28,X29] : k5_xboole_0(k5_xboole_0(X27,X28),X29) = k5_xboole_0(X27,k5_xboole_0(X28,X29)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

fof(c_0_58,plain,(
    ! [X30] : k5_xboole_0(X30,X30) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t92_xboole_1])).

fof(c_0_59,plain,(
    ! [X31,X32] : k3_xboole_0(X31,X32) = k5_xboole_0(k5_xboole_0(X31,X32),k2_xboole_0(X31,X32)) ),
    inference(variable_rename,[status(thm)],[t95_xboole_1])).

fof(c_0_60,plain,(
    ! [X72,X73] :
      ( ( ~ r1_tarski(k1_tarski(X72),X73)
        | r2_hidden(X72,X73) )
      & ( ~ r2_hidden(X72,X73)
        | r1_tarski(k1_tarski(X72),X73) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l1_zfmisc_1])])).

cnf(c_0_61,negated_conjecture,
    ( esk2_1(esk5_0) = X1
    | esk2_1(esk5_0) = X2
    | esk2_1(esk5_0) = X3
    | k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0) != k6_enumset1(X3,X3,X3,X3,X3,X3,X2,X1) ),
    inference(spm,[status(thm)],[c_0_55,c_0_56])).

cnf(c_0_62,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_63,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

fof(c_0_64,plain,(
    ! [X24] : k5_xboole_0(X24,k1_xboole_0) = X24 ),
    inference(variable_rename,[status(thm)],[t5_boole])).

fof(c_0_65,plain,(
    ! [X22,X23] : k2_xboole_0(X22,k4_xboole_0(X23,X22)) = k2_xboole_0(X22,X23) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

fof(c_0_66,plain,(
    ! [X20,X21] : k4_xboole_0(X20,X21) = k5_xboole_0(X20,k3_xboole_0(X20,X21)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

cnf(c_0_67,plain,
    ( k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_59])).

cnf(c_0_68,plain,
    ( r1_tarski(k1_tarski(X1),X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_69,negated_conjecture,
    ( esk2_1(esk5_0) = esk4_0 ),
    inference(er,[status(thm)],[c_0_61])).

cnf(c_0_70,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = k5_xboole_0(k1_xboole_0,X2) ),
    inference(spm,[status(thm)],[c_0_62,c_0_63])).

cnf(c_0_71,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

cnf(c_0_72,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_65])).

cnf(c_0_73,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_66])).

cnf(c_0_74,plain,
    ( k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k3_enumset1(X1,X1,X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67,c_0_36]),c_0_37]),c_0_38])).

fof(c_0_75,plain,(
    ! [X18,X19] :
      ( ( r1_tarski(X18,X19)
        | X18 != X19 )
      & ( r1_tarski(X19,X18)
        | X18 != X19 )
      & ( ~ r1_tarski(X18,X19)
        | ~ r1_tarski(X19,X18)
        | X18 = X19 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_76,plain,
    ( r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_68,c_0_43]),c_0_27]),c_0_37]),c_0_38]),c_0_39]),c_0_40]),c_0_41])).

cnf(c_0_77,negated_conjecture,
    ( r2_hidden(esk4_0,esk5_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_69]),c_0_54])).

cnf(c_0_78,plain,
    ( k5_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_63]),c_0_71])).

cnf(c_0_79,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k5_xboole_0(X2,k5_xboole_0(k5_xboole_0(X2,X1),k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1)))))) = k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72,c_0_36]),c_0_36]),c_0_73]),c_0_37]),c_0_37]),c_0_38]),c_0_38]),c_0_74]),c_0_39]),c_0_39]),c_0_39]),c_0_40]),c_0_40]),c_0_40]),c_0_41]),c_0_41]),c_0_41])).

cnf(c_0_80,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_75])).

cnf(c_0_81,negated_conjecture,
    ( r1_tarski(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),esk5_0) ),
    inference(spm,[status(thm)],[c_0_76,c_0_77])).

cnf(c_0_82,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = X2 ),
    inference(rw,[status(thm)],[c_0_70,c_0_78])).

cnf(c_0_83,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X1,X2))) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_63,c_0_62])).

fof(c_0_84,plain,(
    ! [X8,X9] : k2_xboole_0(X8,X9) = k2_xboole_0(X9,X8) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

cnf(c_0_85,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))))))) = k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[c_0_79,c_0_62])).

cnf(c_0_86,negated_conjecture,
    ( k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0) = esk5_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_81]),c_0_49])])).

cnf(c_0_87,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,X1)) = X2 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82,c_0_83]),c_0_71])).

cnf(c_0_88,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_84])).

cnf(c_0_89,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k5_xboole_0(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))))) = k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_85,c_0_70]),c_0_78])).

cnf(c_0_90,negated_conjecture,
    ( k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk6_0)) = esk5_0 ),
    inference(rw,[status(thm)],[c_0_46,c_0_86])).

cnf(c_0_91,plain,
    ( k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_82,c_0_87])).

cnf(c_0_92,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)) = k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_88,c_0_36]),c_0_36]),c_0_37]),c_0_37]),c_0_38]),c_0_38]),c_0_39]),c_0_39]),c_0_40]),c_0_40]),c_0_41]),c_0_41])).

cnf(c_0_93,negated_conjecture,
    ( k3_tarski(k6_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0,esk6_0,esk6_0,k5_xboole_0(esk5_0,esk6_0))) = esk5_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_90]),c_0_91]),c_0_92]),c_0_46]),c_0_86])).

cnf(c_0_94,plain,
    ( X1 = k1_xboole_0
    | r2_hidden(esk2_1(X1),X2)
    | ~ r1_tarski(X1,X2) ),
    inference(spm,[status(thm)],[c_0_48,c_0_53])).

cnf(c_0_95,negated_conjecture,
    ( r1_tarski(esk6_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_93])).

cnf(c_0_96,negated_conjecture,
    ( esk6_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_97,negated_conjecture,
    ( X1 = esk4_0
    | X2 != esk5_0
    | ~ r2_hidden(X1,X2) ),
    inference(spm,[status(thm)],[c_0_55,c_0_86])).

cnf(c_0_98,negated_conjecture,
    ( r2_hidden(esk2_1(esk6_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_94,c_0_95]),c_0_96])).

cnf(c_0_99,negated_conjecture,
    ( esk2_1(esk6_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_97,c_0_98])).

cnf(c_0_100,negated_conjecture,
    ( esk5_0 != esk6_0 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_101,negated_conjecture,
    ( r2_hidden(esk4_0,esk6_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_99]),c_0_96])).

cnf(c_0_102,negated_conjecture,
    ( ~ r1_tarski(esk5_0,esk6_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_80,c_0_95]),c_0_100])).

cnf(c_0_103,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76,c_0_101]),c_0_86]),c_0_102]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 20:13:52 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___207_C18_F1_AE_CS_SP_PI_S0a
% 0.12/0.37  # and selection function SelectNegativeLiterals.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.028 s
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.12/0.37  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.12/0.37  fof(t44_zfmisc_1, conjecture, ![X1, X2, X3]:~((((k1_tarski(X1)=k2_xboole_0(X2,X3)&X2!=X3)&X2!=k1_xboole_0)&X3!=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t44_zfmisc_1)).
% 0.12/0.37  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.12/0.37  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.12/0.37  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 0.12/0.37  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t73_enumset1)).
% 0.12/0.37  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t74_enumset1)).
% 0.12/0.37  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t75_enumset1)).
% 0.12/0.37  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.12/0.37  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.12/0.37  fof(d1_enumset1, axiom, ![X1, X2, X3, X4]:(X4=k1_enumset1(X1,X2,X3)<=>![X5]:(r2_hidden(X5,X4)<=>~(((X5!=X1&X5!=X2)&X5!=X3)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_enumset1)).
% 0.12/0.37  fof(t7_xboole_0, axiom, ![X1]:~((X1!=k1_xboole_0&![X2]:~(r2_hidden(X2,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_xboole_0)).
% 0.12/0.37  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.12/0.37  fof(t92_xboole_1, axiom, ![X1]:k5_xboole_0(X1,X1)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t92_xboole_1)).
% 0.12/0.37  fof(t95_xboole_1, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t95_xboole_1)).
% 0.12/0.37  fof(l1_zfmisc_1, axiom, ![X1, X2]:(r1_tarski(k1_tarski(X1),X2)<=>r2_hidden(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l1_zfmisc_1)).
% 0.12/0.37  fof(t5_boole, axiom, ![X1]:k5_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_boole)).
% 0.12/0.37  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.12/0.37  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.12/0.37  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.12/0.37  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.12/0.37  fof(c_0_22, plain, ![X74, X75]:k3_tarski(k2_tarski(X74,X75))=k2_xboole_0(X74,X75), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.12/0.37  fof(c_0_23, plain, ![X45, X46]:k1_enumset1(X45,X45,X46)=k2_tarski(X45,X46), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.12/0.37  fof(c_0_24, negated_conjecture, ~(![X1, X2, X3]:~((((k1_tarski(X1)=k2_xboole_0(X2,X3)&X2!=X3)&X2!=k1_xboole_0)&X3!=k1_xboole_0))), inference(assume_negation,[status(cth)],[t44_zfmisc_1])).
% 0.12/0.37  fof(c_0_25, plain, ![X25, X26]:r1_tarski(X25,k2_xboole_0(X25,X26)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.12/0.37  cnf(c_0_26, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.37  cnf(c_0_27, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.12/0.37  fof(c_0_28, plain, ![X47, X48, X49]:k2_enumset1(X47,X47,X48,X49)=k1_enumset1(X47,X48,X49), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.12/0.37  fof(c_0_29, plain, ![X50, X51, X52, X53]:k3_enumset1(X50,X50,X51,X52,X53)=k2_enumset1(X50,X51,X52,X53), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.12/0.37  fof(c_0_30, plain, ![X54, X55, X56, X57, X58]:k4_enumset1(X54,X54,X55,X56,X57,X58)=k3_enumset1(X54,X55,X56,X57,X58), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 0.12/0.37  fof(c_0_31, plain, ![X59, X60, X61, X62, X63, X64]:k5_enumset1(X59,X59,X60,X61,X62,X63,X64)=k4_enumset1(X59,X60,X61,X62,X63,X64), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 0.12/0.37  fof(c_0_32, plain, ![X65, X66, X67, X68, X69, X70, X71]:k6_enumset1(X65,X65,X66,X67,X68,X69,X70,X71)=k5_enumset1(X65,X66,X67,X68,X69,X70,X71), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 0.12/0.37  fof(c_0_33, negated_conjecture, (((k1_tarski(esk4_0)=k2_xboole_0(esk5_0,esk6_0)&esk5_0!=esk6_0)&esk5_0!=k1_xboole_0)&esk6_0!=k1_xboole_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_24])])])).
% 0.12/0.37  fof(c_0_34, plain, ![X44]:k2_tarski(X44,X44)=k1_tarski(X44), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.12/0.37  cnf(c_0_35, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.12/0.37  cnf(c_0_36, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_26, c_0_27])).
% 0.12/0.37  cnf(c_0_37, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.12/0.37  cnf(c_0_38, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.12/0.37  cnf(c_0_39, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.12/0.37  cnf(c_0_40, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.12/0.37  cnf(c_0_41, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.12/0.37  cnf(c_0_42, negated_conjecture, (k1_tarski(esk4_0)=k2_xboole_0(esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.12/0.37  cnf(c_0_43, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.12/0.37  fof(c_0_44, plain, ![X10, X11, X12, X13, X14]:((~r1_tarski(X10,X11)|(~r2_hidden(X12,X10)|r2_hidden(X12,X11)))&((r2_hidden(esk1_2(X13,X14),X13)|r1_tarski(X13,X14))&(~r2_hidden(esk1_2(X13,X14),X14)|r1_tarski(X13,X14)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.12/0.37  cnf(c_0_45, plain, (r1_tarski(X1,k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_35, c_0_36]), c_0_37]), c_0_38]), c_0_39]), c_0_40]), c_0_41])).
% 0.12/0.37  cnf(c_0_46, negated_conjecture, (k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)=k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk6_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42, c_0_43]), c_0_27]), c_0_36]), c_0_37]), c_0_37]), c_0_38]), c_0_38]), c_0_39]), c_0_39]), c_0_40]), c_0_40]), c_0_41]), c_0_41])).
% 0.12/0.37  fof(c_0_47, plain, ![X33, X34, X35, X36, X37, X38, X39, X40, X41, X42]:(((~r2_hidden(X37,X36)|(X37=X33|X37=X34|X37=X35)|X36!=k1_enumset1(X33,X34,X35))&(((X38!=X33|r2_hidden(X38,X36)|X36!=k1_enumset1(X33,X34,X35))&(X38!=X34|r2_hidden(X38,X36)|X36!=k1_enumset1(X33,X34,X35)))&(X38!=X35|r2_hidden(X38,X36)|X36!=k1_enumset1(X33,X34,X35))))&((((esk3_4(X39,X40,X41,X42)!=X39|~r2_hidden(esk3_4(X39,X40,X41,X42),X42)|X42=k1_enumset1(X39,X40,X41))&(esk3_4(X39,X40,X41,X42)!=X40|~r2_hidden(esk3_4(X39,X40,X41,X42),X42)|X42=k1_enumset1(X39,X40,X41)))&(esk3_4(X39,X40,X41,X42)!=X41|~r2_hidden(esk3_4(X39,X40,X41,X42),X42)|X42=k1_enumset1(X39,X40,X41)))&(r2_hidden(esk3_4(X39,X40,X41,X42),X42)|(esk3_4(X39,X40,X41,X42)=X39|esk3_4(X39,X40,X41,X42)=X40|esk3_4(X39,X40,X41,X42)=X41)|X42=k1_enumset1(X39,X40,X41)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_enumset1])])])])])])).
% 0.12/0.37  cnf(c_0_48, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.12/0.37  cnf(c_0_49, negated_conjecture, (r1_tarski(esk5_0,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.12/0.37  fof(c_0_50, plain, ![X16]:(X16=k1_xboole_0|r2_hidden(esk2_1(X16),X16)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t7_xboole_0])])])])).
% 0.12/0.37  cnf(c_0_51, plain, (X1=X3|X1=X4|X1=X5|~r2_hidden(X1,X2)|X2!=k1_enumset1(X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.12/0.37  cnf(c_0_52, negated_conjecture, (r2_hidden(X1,k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))|~r2_hidden(X1,esk5_0)), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.12/0.37  cnf(c_0_53, plain, (X1=k1_xboole_0|r2_hidden(esk2_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.12/0.37  cnf(c_0_54, negated_conjecture, (esk5_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.12/0.37  cnf(c_0_55, plain, (X1=X5|X1=X4|X1=X3|X2!=k6_enumset1(X3,X3,X3,X3,X3,X3,X4,X5)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_51, c_0_37]), c_0_38]), c_0_39]), c_0_40]), c_0_41])).
% 0.12/0.37  cnf(c_0_56, negated_conjecture, (r2_hidden(esk2_1(esk5_0),k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_53]), c_0_54])).
% 0.12/0.37  fof(c_0_57, plain, ![X27, X28, X29]:k5_xboole_0(k5_xboole_0(X27,X28),X29)=k5_xboole_0(X27,k5_xboole_0(X28,X29)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.12/0.37  fof(c_0_58, plain, ![X30]:k5_xboole_0(X30,X30)=k1_xboole_0, inference(variable_rename,[status(thm)],[t92_xboole_1])).
% 0.12/0.37  fof(c_0_59, plain, ![X31, X32]:k3_xboole_0(X31,X32)=k5_xboole_0(k5_xboole_0(X31,X32),k2_xboole_0(X31,X32)), inference(variable_rename,[status(thm)],[t95_xboole_1])).
% 0.12/0.37  fof(c_0_60, plain, ![X72, X73]:((~r1_tarski(k1_tarski(X72),X73)|r2_hidden(X72,X73))&(~r2_hidden(X72,X73)|r1_tarski(k1_tarski(X72),X73))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l1_zfmisc_1])])).
% 0.12/0.37  cnf(c_0_61, negated_conjecture, (esk2_1(esk5_0)=X1|esk2_1(esk5_0)=X2|esk2_1(esk5_0)=X3|k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)!=k6_enumset1(X3,X3,X3,X3,X3,X3,X2,X1)), inference(spm,[status(thm)],[c_0_55, c_0_56])).
% 0.12/0.37  cnf(c_0_62, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.12/0.37  cnf(c_0_63, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.12/0.37  fof(c_0_64, plain, ![X24]:k5_xboole_0(X24,k1_xboole_0)=X24, inference(variable_rename,[status(thm)],[t5_boole])).
% 0.12/0.37  fof(c_0_65, plain, ![X22, X23]:k2_xboole_0(X22,k4_xboole_0(X23,X22))=k2_xboole_0(X22,X23), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.12/0.37  fof(c_0_66, plain, ![X20, X21]:k4_xboole_0(X20,X21)=k5_xboole_0(X20,k3_xboole_0(X20,X21)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.12/0.37  cnf(c_0_67, plain, (k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_59])).
% 0.12/0.37  cnf(c_0_68, plain, (r1_tarski(k1_tarski(X1),X2)|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.12/0.37  cnf(c_0_69, negated_conjecture, (esk2_1(esk5_0)=esk4_0), inference(er,[status(thm)],[c_0_61])).
% 0.12/0.37  cnf(c_0_70, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=k5_xboole_0(k1_xboole_0,X2)), inference(spm,[status(thm)],[c_0_62, c_0_63])).
% 0.12/0.37  cnf(c_0_71, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.12/0.37  cnf(c_0_72, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_65])).
% 0.12/0.37  cnf(c_0_73, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_66])).
% 0.12/0.37  cnf(c_0_74, plain, (k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_67, c_0_36]), c_0_37]), c_0_38])).
% 0.12/0.37  fof(c_0_75, plain, ![X18, X19]:(((r1_tarski(X18,X19)|X18!=X19)&(r1_tarski(X19,X18)|X18!=X19))&(~r1_tarski(X18,X19)|~r1_tarski(X19,X18)|X18=X19)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.12/0.37  cnf(c_0_76, plain, (r1_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X1),X2)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_68, c_0_43]), c_0_27]), c_0_37]), c_0_38]), c_0_39]), c_0_40]), c_0_41])).
% 0.12/0.37  cnf(c_0_77, negated_conjecture, (r2_hidden(esk4_0,esk5_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_69]), c_0_54])).
% 0.12/0.37  cnf(c_0_78, plain, (k5_xboole_0(k1_xboole_0,X1)=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_63]), c_0_71])).
% 0.12/0.37  cnf(c_0_79, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k5_xboole_0(X2,k5_xboole_0(k5_xboole_0(X2,X1),k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))))))=k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_72, c_0_36]), c_0_36]), c_0_73]), c_0_37]), c_0_37]), c_0_38]), c_0_38]), c_0_74]), c_0_39]), c_0_39]), c_0_39]), c_0_40]), c_0_40]), c_0_40]), c_0_41]), c_0_41]), c_0_41])).
% 0.12/0.37  cnf(c_0_80, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_75])).
% 0.12/0.37  cnf(c_0_81, negated_conjecture, (r1_tarski(k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0),esk5_0)), inference(spm,[status(thm)],[c_0_76, c_0_77])).
% 0.12/0.37  cnf(c_0_82, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=X2), inference(rw,[status(thm)],[c_0_70, c_0_78])).
% 0.12/0.37  cnf(c_0_83, plain, (k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X1,X2)))=k1_xboole_0), inference(spm,[status(thm)],[c_0_63, c_0_62])).
% 0.12/0.37  fof(c_0_84, plain, ![X8, X9]:k2_xboole_0(X8,X9)=k2_xboole_0(X9,X8), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.12/0.37  cnf(c_0_85, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k5_xboole_0(X2,k5_xboole_0(X2,k5_xboole_0(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1)))))))=k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))), inference(rw,[status(thm)],[c_0_79, c_0_62])).
% 0.12/0.37  cnf(c_0_86, negated_conjecture, (k6_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0,esk4_0)=esk5_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_81]), c_0_49])])).
% 0.12/0.37  cnf(c_0_87, plain, (k5_xboole_0(X1,k5_xboole_0(X2,X1))=X2), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_82, c_0_83]), c_0_71])).
% 0.12/0.37  cnf(c_0_88, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_84])).
% 0.12/0.37  cnf(c_0_89, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k5_xboole_0(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1)))))=k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_85, c_0_70]), c_0_78])).
% 0.12/0.37  cnf(c_0_90, negated_conjecture, (k3_tarski(k6_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk5_0,esk6_0))=esk5_0), inference(rw,[status(thm)],[c_0_46, c_0_86])).
% 0.12/0.37  cnf(c_0_91, plain, (k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1)), inference(spm,[status(thm)],[c_0_82, c_0_87])).
% 0.12/0.37  cnf(c_0_92, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2))=k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_88, c_0_36]), c_0_36]), c_0_37]), c_0_37]), c_0_38]), c_0_38]), c_0_39]), c_0_39]), c_0_40]), c_0_40]), c_0_41]), c_0_41])).
% 0.12/0.37  cnf(c_0_93, negated_conjecture, (k3_tarski(k6_enumset1(esk6_0,esk6_0,esk6_0,esk6_0,esk6_0,esk6_0,esk6_0,k5_xboole_0(esk5_0,esk6_0)))=esk5_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_90]), c_0_91]), c_0_92]), c_0_46]), c_0_86])).
% 0.12/0.37  cnf(c_0_94, plain, (X1=k1_xboole_0|r2_hidden(esk2_1(X1),X2)|~r1_tarski(X1,X2)), inference(spm,[status(thm)],[c_0_48, c_0_53])).
% 0.12/0.37  cnf(c_0_95, negated_conjecture, (r1_tarski(esk6_0,esk5_0)), inference(spm,[status(thm)],[c_0_45, c_0_93])).
% 0.12/0.37  cnf(c_0_96, negated_conjecture, (esk6_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.12/0.37  cnf(c_0_97, negated_conjecture, (X1=esk4_0|X2!=esk5_0|~r2_hidden(X1,X2)), inference(spm,[status(thm)],[c_0_55, c_0_86])).
% 0.12/0.37  cnf(c_0_98, negated_conjecture, (r2_hidden(esk2_1(esk6_0),esk5_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_94, c_0_95]), c_0_96])).
% 0.12/0.37  cnf(c_0_99, negated_conjecture, (esk2_1(esk6_0)=esk4_0), inference(spm,[status(thm)],[c_0_97, c_0_98])).
% 0.12/0.37  cnf(c_0_100, negated_conjecture, (esk5_0!=esk6_0), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.12/0.37  cnf(c_0_101, negated_conjecture, (r2_hidden(esk4_0,esk6_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_99]), c_0_96])).
% 0.12/0.37  cnf(c_0_102, negated_conjecture, (~r1_tarski(esk5_0,esk6_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_80, c_0_95]), c_0_100])).
% 0.12/0.37  cnf(c_0_103, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_76, c_0_101]), c_0_86]), c_0_102]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 104
% 0.12/0.37  # Proof object clause steps            : 59
% 0.12/0.37  # Proof object formula steps           : 45
% 0.12/0.37  # Proof object conjectures             : 25
% 0.12/0.37  # Proof object clause conjectures      : 22
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 25
% 0.12/0.37  # Proof object initial formulas used   : 22
% 0.12/0.37  # Proof object generating inferences   : 22
% 0.12/0.37  # Proof object simplifying inferences  : 84
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 22
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 37
% 0.12/0.37  # Removed in clause preprocessing      : 10
% 0.12/0.37  # Initial clauses in saturation        : 27
% 0.12/0.37  # Processed clauses                    : 76
% 0.12/0.37  # ...of these trivial                  : 2
% 0.12/0.37  # ...subsumed                          : 6
% 0.12/0.37  # ...remaining for further processing  : 68
% 0.12/0.37  # Other redundant clauses eliminated   : 9
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 16
% 0.12/0.37  # Generated clauses                    : 276
% 0.12/0.37  # ...of the previous two non-trivial   : 209
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 260
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 16
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
% 0.12/0.37  # Current number of processed clauses  : 47
% 0.12/0.37  #    Positive orientable unit clauses  : 19
% 0.12/0.37  #    Positive unorientable unit clauses: 2
% 0.12/0.37  #    Negative unit clauses             : 4
% 0.12/0.37  #    Non-unit-clauses                  : 22
% 0.12/0.37  # Current number of unprocessed clauses: 155
% 0.12/0.37  # ...number of literals in the above   : 575
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 26
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 71
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 55
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 5
% 0.12/0.37  # Unit Clause-clause subsumption calls : 10
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 54
% 0.12/0.37  # BW rewrite match successes           : 30
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 5698
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.035 s
% 0.12/0.37  # System time              : 0.005 s
% 0.12/0.37  # Total time               : 0.040 s
% 0.12/0.37  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
