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
% DateTime   : Thu Dec  3 10:40:54 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   73 ( 250 expanded)
%              Number of clauses        :   42 ( 103 expanded)
%              Number of leaves         :   15 (  72 expanded)
%              Depth                    :    8
%              Number of atoms          :  150 ( 384 expanded)
%              Number of equality atoms :   60 ( 245 expanded)
%              Maximal formula depth    :   16 (   3 average)
%              Maximal clause size      :   20 (   2 average)
%              Maximal term depth       :    5 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t38_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k2_tarski(X1,X2),X3)
    <=> ( r2_hidden(X1,X3)
        & r2_hidden(X2,X3) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_enumset1)).

fof(t48_zfmisc_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(X1,X2)
        & r2_hidden(X3,X2) )
     => k2_xboole_0(k2_tarski(X1,X3),X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_zfmisc_1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(d5_xboole_0,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k4_xboole_0(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( r2_hidden(X4,X1)
            & ~ r2_hidden(X4,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d5_xboole_0)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_xboole_1)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(c_0_15,plain,(
    ! [X43,X44,X45] :
      ( ( r2_hidden(X43,X45)
        | ~ r1_tarski(k2_tarski(X43,X44),X45) )
      & ( r2_hidden(X44,X45)
        | ~ r1_tarski(k2_tarski(X43,X44),X45) )
      & ( ~ r2_hidden(X43,X45)
        | ~ r2_hidden(X44,X45)
        | r1_tarski(k2_tarski(X43,X44),X45) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).

fof(c_0_16,plain,(
    ! [X32,X33] : k1_enumset1(X32,X32,X33) = k2_tarski(X32,X33) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_17,plain,(
    ! [X34,X35,X36] : k2_enumset1(X34,X34,X35,X36) = k1_enumset1(X34,X35,X36) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_18,plain,(
    ! [X37,X38,X39,X40] : k3_enumset1(X37,X37,X38,X39,X40) = k2_enumset1(X37,X38,X39,X40) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_19,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( r2_hidden(X1,X2)
          & r2_hidden(X3,X2) )
       => k2_xboole_0(k2_tarski(X1,X3),X2) = X2 ) ),
    inference(assume_negation,[status(cth)],[t48_zfmisc_1])).

cnf(c_0_20,plain,
    ( r1_tarski(k2_tarski(X1,X3),X2)
    | ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_22,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_24,negated_conjecture,
    ( r2_hidden(esk3_0,esk4_0)
    & r2_hidden(esk5_0,esk4_0)
    & k2_xboole_0(k2_tarski(esk3_0,esk5_0),esk4_0) != esk4_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])).

fof(c_0_25,plain,(
    ! [X30,X31] : k2_tarski(X30,X31) = k2_tarski(X31,X30) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

fof(c_0_26,plain,(
    ! [X11,X12,X13,X14,X15,X16,X17,X18] :
      ( ( r2_hidden(X14,X11)
        | ~ r2_hidden(X14,X13)
        | X13 != k4_xboole_0(X11,X12) )
      & ( ~ r2_hidden(X14,X12)
        | ~ r2_hidden(X14,X13)
        | X13 != k4_xboole_0(X11,X12) )
      & ( ~ r2_hidden(X15,X11)
        | r2_hidden(X15,X12)
        | r2_hidden(X15,X13)
        | X13 != k4_xboole_0(X11,X12) )
      & ( ~ r2_hidden(esk2_3(X16,X17,X18),X18)
        | ~ r2_hidden(esk2_3(X16,X17,X18),X16)
        | r2_hidden(esk2_3(X16,X17,X18),X17)
        | X18 = k4_xboole_0(X16,X17) )
      & ( r2_hidden(esk2_3(X16,X17,X18),X16)
        | r2_hidden(esk2_3(X16,X17,X18),X18)
        | X18 = k4_xboole_0(X16,X17) )
      & ( ~ r2_hidden(esk2_3(X16,X17,X18),X17)
        | r2_hidden(esk2_3(X16,X17,X18),X18)
        | X18 = k4_xboole_0(X16,X17) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).

fof(c_0_27,plain,(
    ! [X22,X23] : k4_xboole_0(X22,X23) = k5_xboole_0(X22,k3_xboole_0(X22,X23)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_28,plain,(
    ! [X20,X21] :
      ( ( r1_tarski(X20,X21)
        | X20 != X21 )
      & ( r1_tarski(X21,X20)
        | X20 != X21 )
      & ( ~ r1_tarski(X20,X21)
        | ~ r1_tarski(X21,X20)
        | X20 = X21 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_29,plain,(
    ! [X41,X42] : k3_tarski(k2_tarski(X41,X42)) = k2_xboole_0(X41,X42) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

cnf(c_0_30,plain,
    ( r1_tarski(k3_enumset1(X1,X1,X1,X1,X3),X2)
    | ~ r2_hidden(X3,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20,c_0_21]),c_0_22]),c_0_23])).

cnf(c_0_31,negated_conjecture,
    ( r2_hidden(esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_32,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_33,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X1,X3)
    | X3 != k4_xboole_0(X4,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_34,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

fof(c_0_35,plain,(
    ! [X25,X26] :
      ( ~ r1_tarski(X25,X26)
      | k3_xboole_0(X25,X26) = X25 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_36,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

fof(c_0_37,plain,(
    ! [X28,X29] : k2_xboole_0(X28,k4_xboole_0(X29,X28)) = k2_xboole_0(X28,X29) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

cnf(c_0_38,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_39,negated_conjecture,
    ( r1_tarski(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,X1),esk4_0)
    | ~ r2_hidden(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_40,negated_conjecture,
    ( r2_hidden(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_41,plain,
    ( k3_enumset1(X1,X1,X1,X1,X2) = k3_enumset1(X2,X2,X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32,c_0_21]),c_0_21]),c_0_22]),c_0_22]),c_0_23]),c_0_23])).

fof(c_0_42,plain,(
    ! [X27] : r1_tarski(k1_xboole_0,X27) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

fof(c_0_43,plain,(
    ! [X24] : k2_xboole_0(X24,k1_xboole_0) = X24 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

cnf(c_0_44,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(X1,X3)
    | X3 != k4_xboole_0(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_45,plain,
    ( X3 != k5_xboole_0(X4,k3_xboole_0(X4,X2))
    | ~ r2_hidden(X1,X3)
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[c_0_33,c_0_34])).

cnf(c_0_46,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_47,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_36])).

cnf(c_0_48,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_49,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_38,c_0_21])).

cnf(c_0_50,negated_conjecture,
    ( r1_tarski(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),esk4_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_40]),c_0_41])).

cnf(c_0_51,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_52,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

fof(c_0_53,plain,(
    ! [X5,X6,X7,X8,X9] :
      ( ( ~ r1_tarski(X5,X6)
        | ~ r2_hidden(X7,X5)
        | r2_hidden(X7,X6) )
      & ( r2_hidden(esk1_2(X8,X9),X8)
        | r1_tarski(X8,X9) )
      & ( ~ r2_hidden(esk1_2(X8,X9),X9)
        | r1_tarski(X8,X9) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_54,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_55,negated_conjecture,
    ( k2_xboole_0(k2_tarski(esk3_0,esk5_0),esk4_0) != esk4_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_56,plain,
    ( r2_hidden(X1,X2)
    | X3 != k5_xboole_0(X2,k3_xboole_0(X2,X4))
    | ~ r2_hidden(X1,X3) ),
    inference(rw,[status(thm)],[c_0_44,c_0_34])).

cnf(c_0_57,plain,
    ( ~ r2_hidden(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3)))
    | ~ r2_hidden(X1,X3) ),
    inference(er,[status(thm)],[c_0_45])).

cnf(c_0_58,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_59,plain,
    ( k3_tarski(k3_enumset1(X1,X1,X1,X1,k5_xboole_0(X2,k3_xboole_0(X2,X1)))) = k3_tarski(k3_enumset1(X1,X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48,c_0_49]),c_0_49]),c_0_34]),c_0_22]),c_0_22]),c_0_23]),c_0_23])).

cnf(c_0_60,negated_conjecture,
    ( k3_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),esk4_0) = k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_46,c_0_50])).

cnf(c_0_61,plain,
    ( k1_xboole_0 = X1
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_51,c_0_52])).

cnf(c_0_62,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_53])).

cnf(c_0_63,plain,
    ( k3_tarski(k3_enumset1(X1,X1,X1,X1,k1_xboole_0)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54,c_0_49]),c_0_22]),c_0_23])).

cnf(c_0_64,negated_conjecture,
    ( k3_tarski(k3_enumset1(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),esk4_0)) != esk4_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55,c_0_21]),c_0_49]),c_0_22]),c_0_22]),c_0_22]),c_0_23]),c_0_23]),c_0_23]),c_0_23])).

cnf(c_0_65,plain,
    ( r2_hidden(X1,X2)
    | ~ r2_hidden(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3))) ),
    inference(er,[status(thm)],[c_0_56])).

cnf(c_0_66,plain,
    ( ~ r2_hidden(X1,k5_xboole_0(X2,X2))
    | ~ r2_hidden(X1,X2) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_67,negated_conjecture,
    ( k3_tarski(k3_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,k5_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0)))) = k3_tarski(k3_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0))) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_68,plain,
    ( k1_xboole_0 = X1
    | r2_hidden(esk1_2(X1,k1_xboole_0),X1) ),
    inference(spm,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_69,plain,
    ( k3_tarski(k3_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,X1)) = X1 ),
    inference(spm,[status(thm)],[c_0_63,c_0_41])).

cnf(c_0_70,negated_conjecture,
    ( k3_tarski(k3_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0))) != esk4_0 ),
    inference(rw,[status(thm)],[c_0_64,c_0_41])).

cnf(c_0_71,plain,
    ( ~ r2_hidden(X1,k5_xboole_0(X2,X2)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_58]),c_0_66])).

cnf(c_0_72,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_68]),c_0_41]),c_0_69]),c_0_70]),c_0_71]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n006.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 17:27:37 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic h208_C18_F1_SE_CS_SP_PS_S002A
% 0.19/0.38  # and selection function SelectNegativeLiterals.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.028 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t38_zfmisc_1, axiom, ![X1, X2, X3]:(r1_tarski(k2_tarski(X1,X2),X3)<=>(r2_hidden(X1,X3)&r2_hidden(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t38_zfmisc_1)).
% 0.19/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.19/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.19/0.38  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 0.19/0.38  fof(t48_zfmisc_1, conjecture, ![X1, X2, X3]:((r2_hidden(X1,X2)&r2_hidden(X3,X2))=>k2_xboole_0(k2_tarski(X1,X3),X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_zfmisc_1)).
% 0.19/0.38  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.19/0.38  fof(d5_xboole_0, axiom, ![X1, X2, X3]:(X3=k4_xboole_0(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(r2_hidden(X4,X1)&~(r2_hidden(X4,X2))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d5_xboole_0)).
% 0.19/0.38  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.19/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.19/0.38  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.19/0.38  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.19/0.38  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.19/0.38  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.19/0.38  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_boole)).
% 0.19/0.38  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.19/0.38  fof(c_0_15, plain, ![X43, X44, X45]:(((r2_hidden(X43,X45)|~r1_tarski(k2_tarski(X43,X44),X45))&(r2_hidden(X44,X45)|~r1_tarski(k2_tarski(X43,X44),X45)))&(~r2_hidden(X43,X45)|~r2_hidden(X44,X45)|r1_tarski(k2_tarski(X43,X44),X45))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t38_zfmisc_1])])])).
% 0.19/0.39  fof(c_0_16, plain, ![X32, X33]:k1_enumset1(X32,X32,X33)=k2_tarski(X32,X33), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.19/0.39  fof(c_0_17, plain, ![X34, X35, X36]:k2_enumset1(X34,X34,X35,X36)=k1_enumset1(X34,X35,X36), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.19/0.39  fof(c_0_18, plain, ![X37, X38, X39, X40]:k3_enumset1(X37,X37,X38,X39,X40)=k2_enumset1(X37,X38,X39,X40), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.19/0.39  fof(c_0_19, negated_conjecture, ~(![X1, X2, X3]:((r2_hidden(X1,X2)&r2_hidden(X3,X2))=>k2_xboole_0(k2_tarski(X1,X3),X2)=X2)), inference(assume_negation,[status(cth)],[t48_zfmisc_1])).
% 0.19/0.39  cnf(c_0_20, plain, (r1_tarski(k2_tarski(X1,X3),X2)|~r2_hidden(X1,X2)|~r2_hidden(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.39  cnf(c_0_21, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.39  cnf(c_0_22, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.39  cnf(c_0_23, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.19/0.39  fof(c_0_24, negated_conjecture, ((r2_hidden(esk3_0,esk4_0)&r2_hidden(esk5_0,esk4_0))&k2_xboole_0(k2_tarski(esk3_0,esk5_0),esk4_0)!=esk4_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_19])])])).
% 0.19/0.39  fof(c_0_25, plain, ![X30, X31]:k2_tarski(X30,X31)=k2_tarski(X31,X30), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.19/0.39  fof(c_0_26, plain, ![X11, X12, X13, X14, X15, X16, X17, X18]:((((r2_hidden(X14,X11)|~r2_hidden(X14,X13)|X13!=k4_xboole_0(X11,X12))&(~r2_hidden(X14,X12)|~r2_hidden(X14,X13)|X13!=k4_xboole_0(X11,X12)))&(~r2_hidden(X15,X11)|r2_hidden(X15,X12)|r2_hidden(X15,X13)|X13!=k4_xboole_0(X11,X12)))&((~r2_hidden(esk2_3(X16,X17,X18),X18)|(~r2_hidden(esk2_3(X16,X17,X18),X16)|r2_hidden(esk2_3(X16,X17,X18),X17))|X18=k4_xboole_0(X16,X17))&((r2_hidden(esk2_3(X16,X17,X18),X16)|r2_hidden(esk2_3(X16,X17,X18),X18)|X18=k4_xboole_0(X16,X17))&(~r2_hidden(esk2_3(X16,X17,X18),X17)|r2_hidden(esk2_3(X16,X17,X18),X18)|X18=k4_xboole_0(X16,X17))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d5_xboole_0])])])])])])])).
% 0.19/0.39  fof(c_0_27, plain, ![X22, X23]:k4_xboole_0(X22,X23)=k5_xboole_0(X22,k3_xboole_0(X22,X23)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.19/0.39  fof(c_0_28, plain, ![X20, X21]:(((r1_tarski(X20,X21)|X20!=X21)&(r1_tarski(X21,X20)|X20!=X21))&(~r1_tarski(X20,X21)|~r1_tarski(X21,X20)|X20=X21)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.19/0.39  fof(c_0_29, plain, ![X41, X42]:k3_tarski(k2_tarski(X41,X42))=k2_xboole_0(X41,X42), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.19/0.39  cnf(c_0_30, plain, (r1_tarski(k3_enumset1(X1,X1,X1,X1,X3),X2)|~r2_hidden(X3,X2)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_20, c_0_21]), c_0_22]), c_0_23])).
% 0.19/0.39  cnf(c_0_31, negated_conjecture, (r2_hidden(esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.39  cnf(c_0_32, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.39  cnf(c_0_33, plain, (~r2_hidden(X1,X2)|~r2_hidden(X1,X3)|X3!=k4_xboole_0(X4,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.39  cnf(c_0_34, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.19/0.39  fof(c_0_35, plain, ![X25, X26]:(~r1_tarski(X25,X26)|k3_xboole_0(X25,X26)=X25), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.19/0.39  cnf(c_0_36, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.39  fof(c_0_37, plain, ![X28, X29]:k2_xboole_0(X28,k4_xboole_0(X29,X28))=k2_xboole_0(X28,X29), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.19/0.39  cnf(c_0_38, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.39  cnf(c_0_39, negated_conjecture, (r1_tarski(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,X1),esk4_0)|~r2_hidden(X1,esk4_0)), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.19/0.39  cnf(c_0_40, negated_conjecture, (r2_hidden(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.39  cnf(c_0_41, plain, (k3_enumset1(X1,X1,X1,X1,X2)=k3_enumset1(X2,X2,X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_32, c_0_21]), c_0_21]), c_0_22]), c_0_22]), c_0_23]), c_0_23])).
% 0.19/0.39  fof(c_0_42, plain, ![X27]:r1_tarski(k1_xboole_0,X27), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.19/0.39  fof(c_0_43, plain, ![X24]:k2_xboole_0(X24,k1_xboole_0)=X24, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.19/0.39  cnf(c_0_44, plain, (r2_hidden(X1,X2)|~r2_hidden(X1,X3)|X3!=k4_xboole_0(X2,X4)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.39  cnf(c_0_45, plain, (X3!=k5_xboole_0(X4,k3_xboole_0(X4,X2))|~r2_hidden(X1,X3)|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[c_0_33, c_0_34])).
% 0.19/0.39  cnf(c_0_46, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.19/0.39  cnf(c_0_47, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_36])).
% 0.19/0.39  cnf(c_0_48, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.19/0.39  cnf(c_0_49, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_38, c_0_21])).
% 0.19/0.39  cnf(c_0_50, negated_conjecture, (r1_tarski(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),esk4_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_39, c_0_40]), c_0_41])).
% 0.19/0.39  cnf(c_0_51, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.39  cnf(c_0_52, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.39  fof(c_0_53, plain, ![X5, X6, X7, X8, X9]:((~r1_tarski(X5,X6)|(~r2_hidden(X7,X5)|r2_hidden(X7,X6)))&((r2_hidden(esk1_2(X8,X9),X8)|r1_tarski(X8,X9))&(~r2_hidden(esk1_2(X8,X9),X9)|r1_tarski(X8,X9)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.19/0.39  cnf(c_0_54, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.39  cnf(c_0_55, negated_conjecture, (k2_xboole_0(k2_tarski(esk3_0,esk5_0),esk4_0)!=esk4_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.39  cnf(c_0_56, plain, (r2_hidden(X1,X2)|X3!=k5_xboole_0(X2,k3_xboole_0(X2,X4))|~r2_hidden(X1,X3)), inference(rw,[status(thm)],[c_0_44, c_0_34])).
% 0.19/0.39  cnf(c_0_57, plain, (~r2_hidden(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3)))|~r2_hidden(X1,X3)), inference(er,[status(thm)],[c_0_45])).
% 0.19/0.39  cnf(c_0_58, plain, (k3_xboole_0(X1,X1)=X1), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.19/0.39  cnf(c_0_59, plain, (k3_tarski(k3_enumset1(X1,X1,X1,X1,k5_xboole_0(X2,k3_xboole_0(X2,X1))))=k3_tarski(k3_enumset1(X1,X1,X1,X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_48, c_0_49]), c_0_49]), c_0_34]), c_0_22]), c_0_22]), c_0_23]), c_0_23])).
% 0.19/0.39  cnf(c_0_60, negated_conjecture, (k3_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),esk4_0)=k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0)), inference(spm,[status(thm)],[c_0_46, c_0_50])).
% 0.19/0.39  cnf(c_0_61, plain, (k1_xboole_0=X1|~r1_tarski(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_51, c_0_52])).
% 0.19/0.39  cnf(c_0_62, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_53])).
% 0.19/0.39  cnf(c_0_63, plain, (k3_tarski(k3_enumset1(X1,X1,X1,X1,k1_xboole_0))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_54, c_0_49]), c_0_22]), c_0_23])).
% 0.19/0.39  cnf(c_0_64, negated_conjecture, (k3_tarski(k3_enumset1(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),esk4_0))!=esk4_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_55, c_0_21]), c_0_49]), c_0_22]), c_0_22]), c_0_22]), c_0_23]), c_0_23]), c_0_23]), c_0_23])).
% 0.19/0.39  cnf(c_0_65, plain, (r2_hidden(X1,X2)|~r2_hidden(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3)))), inference(er,[status(thm)],[c_0_56])).
% 0.19/0.39  cnf(c_0_66, plain, (~r2_hidden(X1,k5_xboole_0(X2,X2))|~r2_hidden(X1,X2)), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 0.19/0.39  cnf(c_0_67, negated_conjecture, (k3_tarski(k3_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,k5_xboole_0(k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0),k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0))))=k3_tarski(k3_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0)))), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.19/0.39  cnf(c_0_68, plain, (k1_xboole_0=X1|r2_hidden(esk1_2(X1,k1_xboole_0),X1)), inference(spm,[status(thm)],[c_0_61, c_0_62])).
% 0.19/0.39  cnf(c_0_69, plain, (k3_tarski(k3_enumset1(k1_xboole_0,k1_xboole_0,k1_xboole_0,k1_xboole_0,X1))=X1), inference(spm,[status(thm)],[c_0_63, c_0_41])).
% 0.19/0.39  cnf(c_0_70, negated_conjecture, (k3_tarski(k3_enumset1(esk4_0,esk4_0,esk4_0,esk4_0,k3_enumset1(esk3_0,esk3_0,esk3_0,esk3_0,esk5_0)))!=esk4_0), inference(rw,[status(thm)],[c_0_64, c_0_41])).
% 0.19/0.39  cnf(c_0_71, plain, (~r2_hidden(X1,k5_xboole_0(X2,X2))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_58]), c_0_66])).
% 0.19/0.39  cnf(c_0_72, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_68]), c_0_41]), c_0_69]), c_0_70]), c_0_71]), ['proof']).
% 0.19/0.39  # SZS output end CNFRefutation
% 0.19/0.39  # Proof object total steps             : 73
% 0.19/0.39  # Proof object clause steps            : 42
% 0.19/0.39  # Proof object formula steps           : 31
% 0.19/0.39  # Proof object conjectures             : 13
% 0.19/0.39  # Proof object clause conjectures      : 10
% 0.19/0.39  # Proof object formula conjectures     : 3
% 0.19/0.39  # Proof object initial clauses used    : 19
% 0.19/0.39  # Proof object initial formulas used   : 15
% 0.19/0.39  # Proof object generating inferences   : 11
% 0.19/0.39  # Proof object simplifying inferences  : 41
% 0.19/0.39  # Training examples: 0 positive, 0 negative
% 0.19/0.39  # Parsed axioms                        : 15
% 0.19/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.39  # Initial clauses                      : 28
% 0.19/0.39  # Removed in clause preprocessing      : 5
% 0.19/0.39  # Initial clauses in saturation        : 23
% 0.19/0.39  # Processed clauses                    : 222
% 0.19/0.39  # ...of these trivial                  : 13
% 0.19/0.39  # ...subsumed                          : 75
% 0.19/0.39  # ...remaining for further processing  : 134
% 0.19/0.39  # Other redundant clauses eliminated   : 5
% 0.19/0.39  # Clauses deleted for lack of memory   : 0
% 0.19/0.39  # Backward-subsumed                    : 1
% 0.19/0.39  # Backward-rewritten                   : 8
% 0.19/0.39  # Generated clauses                    : 1015
% 0.19/0.39  # ...of the previous two non-trivial   : 807
% 0.19/0.39  # Contextual simplify-reflections      : 2
% 0.19/0.39  # Paramodulations                      : 1010
% 0.19/0.39  # Factorizations                       : 0
% 0.19/0.39  # Equation resolutions                 : 5
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
% 0.19/0.39  # Current number of processed clauses  : 98
% 0.19/0.39  #    Positive orientable unit clauses  : 31
% 0.19/0.39  #    Positive unorientable unit clauses: 1
% 0.19/0.39  #    Negative unit clauses             : 3
% 0.19/0.39  #    Non-unit-clauses                  : 63
% 0.19/0.39  # Current number of unprocessed clauses: 614
% 0.19/0.39  # ...number of literals in the above   : 1600
% 0.19/0.39  # Current number of archived formulas  : 0
% 0.19/0.39  # Current number of archived clauses   : 36
% 0.19/0.39  # Clause-clause subsumption calls (NU) : 752
% 0.19/0.39  # Rec. Clause-clause subsumption calls : 634
% 0.19/0.39  # Non-unit clause-clause subsumptions  : 47
% 0.19/0.39  # Unit Clause-clause subsumption calls : 102
% 0.19/0.39  # Rewrite failures with RHS unbound    : 0
% 0.19/0.39  # BW rewrite match attempts            : 103
% 0.19/0.39  # BW rewrite match successes           : 31
% 0.19/0.39  # Condensation attempts                : 0
% 0.19/0.39  # Condensation successes               : 0
% 0.19/0.39  # Termbank termtop insertions          : 15324
% 0.19/0.39  
% 0.19/0.39  # -------------------------------------------------
% 0.19/0.39  # User time                : 0.044 s
% 0.19/0.39  # System time              : 0.005 s
% 0.19/0.39  # Total time               : 0.050 s
% 0.19/0.39  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
