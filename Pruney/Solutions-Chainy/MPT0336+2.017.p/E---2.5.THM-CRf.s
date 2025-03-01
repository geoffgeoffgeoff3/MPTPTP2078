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
% DateTime   : Thu Dec  3 10:44:50 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   91 ( 181 expanded)
%              Number of clauses        :   54 (  81 expanded)
%              Number of leaves         :   18 (  47 expanded)
%              Depth                    :   21
%              Number of atoms          :  143 ( 343 expanded)
%              Number of equality atoms :   45 (  99 expanded)
%              Maximal formula depth    :   11 (   3 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t149_zfmisc_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( ( r1_tarski(k3_xboole_0(X1,X2),k1_tarski(X4))
        & r2_hidden(X4,X3)
        & r1_xboole_0(X3,X2) )
     => r1_xboole_0(k2_xboole_0(X1,X3),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t149_zfmisc_1)).

fof(t3_xboole_0,axiom,(
    ! [X1,X2] :
      ( ~ ( ~ r1_xboole_0(X1,X2)
          & ! [X3] :
              ~ ( r2_hidden(X3,X1)
                & r2_hidden(X3,X2) ) )
      & ~ ( ? [X3] :
              ( r2_hidden(X3,X1)
              & r2_hidden(X3,X2) )
          & r1_xboole_0(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_xboole_0)).

fof(l27_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( ~ r2_hidden(X1,X2)
     => r1_xboole_0(k1_tarski(X1),X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l27_zfmisc_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t69_enumset1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_enumset1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t71_enumset1)).

fof(t72_enumset1,axiom,(
    ! [X1,X2,X3,X4] : k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t72_enumset1)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(t74_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ~ ( ~ r1_xboole_0(X1,k3_xboole_0(X2,X3))
        & r1_xboole_0(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t74_xboole_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(d7_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k3_xboole_0(X1,X2) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_xboole_0)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t65_xboole_1,axiom,(
    ! [X1] : r1_xboole_0(X1,k1_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_xboole_1)).

fof(t79_xboole_1,axiom,(
    ! [X1,X2] : r1_xboole_0(k4_xboole_0(X1,X2),X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t79_xboole_1)).

fof(t78_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_xboole_0(X1,X2)
     => k3_xboole_0(X1,k2_xboole_0(X2,X3)) = k3_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t78_xboole_1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(c_0_18,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( ( r1_tarski(k3_xboole_0(X1,X2),k1_tarski(X4))
          & r2_hidden(X4,X3)
          & r1_xboole_0(X3,X2) )
       => r1_xboole_0(k2_xboole_0(X1,X3),X2) ) ),
    inference(assume_negation,[status(cth)],[t149_zfmisc_1])).

fof(c_0_19,plain,(
    ! [X13,X14,X16,X17,X18] :
      ( ( r2_hidden(esk1_2(X13,X14),X13)
        | r1_xboole_0(X13,X14) )
      & ( r2_hidden(esk1_2(X13,X14),X14)
        | r1_xboole_0(X13,X14) )
      & ( ~ r2_hidden(X18,X16)
        | ~ r2_hidden(X18,X17)
        | ~ r1_xboole_0(X16,X17) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_xboole_0])])])])])])])).

fof(c_0_20,negated_conjecture,
    ( r1_tarski(k3_xboole_0(esk2_0,esk3_0),k1_tarski(esk5_0))
    & r2_hidden(esk5_0,esk4_0)
    & r1_xboole_0(esk4_0,esk3_0)
    & ~ r1_xboole_0(k2_xboole_0(esk2_0,esk4_0),esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).

fof(c_0_21,plain,(
    ! [X43,X44] :
      ( r2_hidden(X43,X44)
      | r1_xboole_0(k1_tarski(X43),X44) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l27_zfmisc_1])])])).

fof(c_0_22,plain,(
    ! [X33] : k2_tarski(X33,X33) = k1_tarski(X33) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_23,plain,(
    ! [X34,X35] : k1_enumset1(X34,X34,X35) = k2_tarski(X34,X35) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_24,plain,(
    ! [X36,X37,X38] : k2_enumset1(X36,X36,X37,X38) = k1_enumset1(X36,X37,X38) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_25,plain,(
    ! [X39,X40,X41,X42] : k3_enumset1(X39,X39,X40,X41,X42) = k2_enumset1(X39,X40,X41,X42) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

cnf(c_0_26,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r2_hidden(X1,X3)
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,plain,
    ( r2_hidden(X1,X2)
    | r1_xboole_0(k1_tarski(X1),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_30,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_31,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_32,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

fof(c_0_33,plain,(
    ! [X11,X12] :
      ( ~ r1_xboole_0(X11,X12)
      | r1_xboole_0(X12,X11) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

cnf(c_0_34,negated_conjecture,
    ( ~ r2_hidden(esk5_0,X1)
    | ~ r1_xboole_0(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_35,plain,
    ( r2_hidden(X1,X2)
    | r1_xboole_0(k3_enumset1(X1,X1,X1,X1,X1),X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28,c_0_29]),c_0_30]),c_0_31]),c_0_32])).

cnf(c_0_36,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_37,negated_conjecture,
    ( r1_xboole_0(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_38,negated_conjecture,
    ( r1_xboole_0(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0),X1)
    | ~ r1_xboole_0(X1,esk4_0) ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_39,negated_conjecture,
    ( r1_xboole_0(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

fof(c_0_40,plain,(
    ! [X25,X26,X27] :
      ( r1_xboole_0(X25,k3_xboole_0(X26,X27))
      | ~ r1_xboole_0(X25,X26) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t74_xboole_1])])])).

cnf(c_0_41,negated_conjecture,
    ( r1_xboole_0(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_42,negated_conjecture,
    ( r1_tarski(k3_xboole_0(esk2_0,esk3_0),k1_tarski(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_43,plain,(
    ! [X7,X8] : k3_xboole_0(X7,X8) = k3_xboole_0(X8,X7) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

cnf(c_0_44,plain,
    ( r1_xboole_0(X1,k3_xboole_0(X2,X3))
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_45,negated_conjecture,
    ( r1_xboole_0(esk3_0,k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0)) ),
    inference(spm,[status(thm)],[c_0_36,c_0_41])).

fof(c_0_46,plain,(
    ! [X21,X22] :
      ( ~ r1_tarski(X21,X22)
      | k3_xboole_0(X21,X22) = X21 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

cnf(c_0_47,negated_conjecture,
    ( r1_tarski(k3_xboole_0(esk2_0,esk3_0),k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42,c_0_29]),c_0_30]),c_0_31]),c_0_32])).

cnf(c_0_48,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_49,negated_conjecture,
    ( r1_xboole_0(esk3_0,k3_xboole_0(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0),X1)) ),
    inference(spm,[status(thm)],[c_0_44,c_0_45])).

cnf(c_0_50,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_46])).

cnf(c_0_51,negated_conjecture,
    ( r1_tarski(k3_xboole_0(esk3_0,esk2_0),k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0)) ),
    inference(rw,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_52,negated_conjecture,
    ( r1_xboole_0(esk3_0,k3_xboole_0(X1,k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0))) ),
    inference(spm,[status(thm)],[c_0_49,c_0_48])).

cnf(c_0_53,negated_conjecture,
    ( k3_xboole_0(k3_xboole_0(esk3_0,esk2_0),k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0)) = k3_xboole_0(esk3_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_54,plain,
    ( r2_hidden(esk1_2(X1,X2),X1)
    | r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_55,negated_conjecture,
    ( r1_xboole_0(esk3_0,k3_xboole_0(esk3_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_52,c_0_53])).

cnf(c_0_56,plain,
    ( r1_xboole_0(X1,X2)
    | ~ r2_hidden(esk1_2(X1,X2),X3)
    | ~ r1_xboole_0(X3,X1) ),
    inference(spm,[status(thm)],[c_0_26,c_0_54])).

cnf(c_0_57,negated_conjecture,
    ( r1_xboole_0(k3_xboole_0(esk3_0,esk2_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_36,c_0_55])).

fof(c_0_58,plain,(
    ! [X9,X10] :
      ( ( ~ r1_xboole_0(X9,X10)
        | k3_xboole_0(X9,X10) = k1_xboole_0 )
      & ( k3_xboole_0(X9,X10) != k1_xboole_0
        | r1_xboole_0(X9,X10) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).

cnf(c_0_59,plain,
    ( r1_xboole_0(X1,X2)
    | ~ r1_xboole_0(X1,X1) ),
    inference(spm,[status(thm)],[c_0_56,c_0_54])).

cnf(c_0_60,negated_conjecture,
    ( r1_xboole_0(k3_xboole_0(esk3_0,esk2_0),k3_xboole_0(esk3_0,X1)) ),
    inference(spm,[status(thm)],[c_0_44,c_0_57])).

fof(c_0_61,plain,(
    ! [X23] : k4_xboole_0(X23,k1_xboole_0) = X23 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

fof(c_0_62,plain,(
    ! [X19,X20] : k4_xboole_0(X19,X20) = k5_xboole_0(X19,k3_xboole_0(X19,X20)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_63,plain,(
    ! [X24] : r1_xboole_0(X24,k1_xboole_0) ),
    inference(variable_rename,[status(thm)],[t65_xboole_1])).

fof(c_0_64,plain,(
    ! [X31,X32] : r1_xboole_0(k4_xboole_0(X31,X32),X32) ),
    inference(variable_rename,[status(thm)],[t79_xboole_1])).

cnf(c_0_65,plain,
    ( k3_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_66,negated_conjecture,
    ( r1_xboole_0(k3_xboole_0(esk3_0,esk2_0),X1) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_67,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_61])).

cnf(c_0_68,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_62])).

cnf(c_0_69,plain,
    ( r1_xboole_0(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

cnf(c_0_70,plain,
    ( r1_xboole_0(k4_xboole_0(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

cnf(c_0_71,negated_conjecture,
    ( k3_xboole_0(k3_xboole_0(esk3_0,esk2_0),X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_65,c_0_66])).

cnf(c_0_72,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,k1_xboole_0)) = X1 ),
    inference(rw,[status(thm)],[c_0_67,c_0_68])).

cnf(c_0_73,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_65,c_0_69])).

fof(c_0_74,plain,(
    ! [X28,X29,X30] :
      ( ~ r1_xboole_0(X28,X29)
      | k3_xboole_0(X28,k2_xboole_0(X29,X30)) = k3_xboole_0(X28,X30) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t78_xboole_1])])).

cnf(c_0_75,plain,
    ( r1_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X2)),X2) ),
    inference(rw,[status(thm)],[c_0_70,c_0_68])).

cnf(c_0_76,negated_conjecture,
    ( k3_xboole_0(esk3_0,esk2_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_53,c_0_71])).

cnf(c_0_77,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(rw,[status(thm)],[c_0_72,c_0_73])).

cnf(c_0_78,plain,
    ( k3_xboole_0(X1,k2_xboole_0(X2,X3)) = k3_xboole_0(X1,X3)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_74])).

cnf(c_0_79,negated_conjecture,
    ( r1_xboole_0(esk3_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_76]),c_0_77])).

cnf(c_0_80,plain,
    ( r1_xboole_0(X1,X2)
    | k3_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_81,negated_conjecture,
    ( k3_xboole_0(esk3_0,k2_xboole_0(esk2_0,X1)) = k3_xboole_0(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_78,c_0_79])).

cnf(c_0_82,negated_conjecture,
    ( r1_xboole_0(esk3_0,k2_xboole_0(esk2_0,X1))
    | k3_xboole_0(esk3_0,X1) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_80,c_0_81])).

fof(c_0_83,plain,(
    ! [X5,X6] : k2_xboole_0(X5,X6) = k2_xboole_0(X6,X5) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

cnf(c_0_84,negated_conjecture,
    ( r1_xboole_0(esk3_0,k2_xboole_0(esk2_0,X1))
    | k3_xboole_0(X1,esk3_0) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_82,c_0_48])).

cnf(c_0_85,negated_conjecture,
    ( k3_xboole_0(esk4_0,esk3_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_65,c_0_37])).

cnf(c_0_86,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_83])).

cnf(c_0_87,negated_conjecture,
    ( ~ r1_xboole_0(k2_xboole_0(esk2_0,esk4_0),esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_88,negated_conjecture,
    ( r1_xboole_0(esk3_0,k2_xboole_0(esk4_0,esk2_0)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84,c_0_85]),c_0_86])).

cnf(c_0_89,negated_conjecture,
    ( ~ r1_xboole_0(k2_xboole_0(esk4_0,esk2_0),esk3_0) ),
    inference(rw,[status(thm)],[c_0_87,c_0_86])).

cnf(c_0_90,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_88]),c_0_89]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:27:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S03EI
% 0.20/0.38  # and selection function SelectLComplex.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.027 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(t149_zfmisc_1, conjecture, ![X1, X2, X3, X4]:(((r1_tarski(k3_xboole_0(X1,X2),k1_tarski(X4))&r2_hidden(X4,X3))&r1_xboole_0(X3,X2))=>r1_xboole_0(k2_xboole_0(X1,X3),X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t149_zfmisc_1)).
% 0.20/0.38  fof(t3_xboole_0, axiom, ![X1, X2]:(~((~(r1_xboole_0(X1,X2))&![X3]:~((r2_hidden(X3,X1)&r2_hidden(X3,X2)))))&~((?[X3]:(r2_hidden(X3,X1)&r2_hidden(X3,X2))&r1_xboole_0(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_xboole_0)).
% 0.20/0.38  fof(l27_zfmisc_1, axiom, ![X1, X2]:(~(r2_hidden(X1,X2))=>r1_xboole_0(k1_tarski(X1),X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l27_zfmisc_1)).
% 0.20/0.38  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t69_enumset1)).
% 0.20/0.38  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.38  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t71_enumset1)).
% 0.20/0.38  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t72_enumset1)).
% 0.20/0.38  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.20/0.38  fof(t74_xboole_1, axiom, ![X1, X2, X3]:~((~(r1_xboole_0(X1,k3_xboole_0(X2,X3)))&r1_xboole_0(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t74_xboole_1)).
% 0.20/0.38  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.20/0.38  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.20/0.38  fof(d7_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k3_xboole_0(X1,X2)=k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d7_xboole_0)).
% 0.20/0.38  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_boole)).
% 0.20/0.38  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.20/0.38  fof(t65_xboole_1, axiom, ![X1]:r1_xboole_0(X1,k1_xboole_0), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_xboole_1)).
% 0.20/0.38  fof(t79_xboole_1, axiom, ![X1, X2]:r1_xboole_0(k4_xboole_0(X1,X2),X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t79_xboole_1)).
% 0.20/0.38  fof(t78_xboole_1, axiom, ![X1, X2, X3]:(r1_xboole_0(X1,X2)=>k3_xboole_0(X1,k2_xboole_0(X2,X3))=k3_xboole_0(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t78_xboole_1)).
% 0.20/0.38  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.20/0.38  fof(c_0_18, negated_conjecture, ~(![X1, X2, X3, X4]:(((r1_tarski(k3_xboole_0(X1,X2),k1_tarski(X4))&r2_hidden(X4,X3))&r1_xboole_0(X3,X2))=>r1_xboole_0(k2_xboole_0(X1,X3),X2))), inference(assume_negation,[status(cth)],[t149_zfmisc_1])).
% 0.20/0.38  fof(c_0_19, plain, ![X13, X14, X16, X17, X18]:(((r2_hidden(esk1_2(X13,X14),X13)|r1_xboole_0(X13,X14))&(r2_hidden(esk1_2(X13,X14),X14)|r1_xboole_0(X13,X14)))&(~r2_hidden(X18,X16)|~r2_hidden(X18,X17)|~r1_xboole_0(X16,X17))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t3_xboole_0])])])])])])])).
% 0.20/0.38  fof(c_0_20, negated_conjecture, (((r1_tarski(k3_xboole_0(esk2_0,esk3_0),k1_tarski(esk5_0))&r2_hidden(esk5_0,esk4_0))&r1_xboole_0(esk4_0,esk3_0))&~r1_xboole_0(k2_xboole_0(esk2_0,esk4_0),esk3_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_18])])])).
% 0.20/0.38  fof(c_0_21, plain, ![X43, X44]:(r2_hidden(X43,X44)|r1_xboole_0(k1_tarski(X43),X44)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[l27_zfmisc_1])])])).
% 0.20/0.38  fof(c_0_22, plain, ![X33]:k2_tarski(X33,X33)=k1_tarski(X33), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.20/0.38  fof(c_0_23, plain, ![X34, X35]:k1_enumset1(X34,X34,X35)=k2_tarski(X34,X35), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.38  fof(c_0_24, plain, ![X36, X37, X38]:k2_enumset1(X36,X36,X37,X38)=k1_enumset1(X36,X37,X38), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.20/0.38  fof(c_0_25, plain, ![X39, X40, X41, X42]:k3_enumset1(X39,X39,X40,X41,X42)=k2_enumset1(X39,X40,X41,X42), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 0.20/0.38  cnf(c_0_26, plain, (~r2_hidden(X1,X2)|~r2_hidden(X1,X3)|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.38  cnf(c_0_27, negated_conjecture, (r2_hidden(esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.38  cnf(c_0_28, plain, (r2_hidden(X1,X2)|r1_xboole_0(k1_tarski(X1),X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.38  cnf(c_0_29, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.38  cnf(c_0_30, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.38  cnf(c_0_31, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.20/0.38  cnf(c_0_32, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.20/0.38  fof(c_0_33, plain, ![X11, X12]:(~r1_xboole_0(X11,X12)|r1_xboole_0(X12,X11)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.20/0.38  cnf(c_0_34, negated_conjecture, (~r2_hidden(esk5_0,X1)|~r1_xboole_0(X1,esk4_0)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.20/0.38  cnf(c_0_35, plain, (r2_hidden(X1,X2)|r1_xboole_0(k3_enumset1(X1,X1,X1,X1,X1),X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_28, c_0_29]), c_0_30]), c_0_31]), c_0_32])).
% 0.20/0.38  cnf(c_0_36, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.20/0.38  cnf(c_0_37, negated_conjecture, (r1_xboole_0(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.38  cnf(c_0_38, negated_conjecture, (r1_xboole_0(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0),X1)|~r1_xboole_0(X1,esk4_0)), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.20/0.38  cnf(c_0_39, negated_conjecture, (r1_xboole_0(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.20/0.38  fof(c_0_40, plain, ![X25, X26, X27]:(r1_xboole_0(X25,k3_xboole_0(X26,X27))|~r1_xboole_0(X25,X26)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t74_xboole_1])])])).
% 0.20/0.38  cnf(c_0_41, negated_conjecture, (r1_xboole_0(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0),esk3_0)), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.20/0.38  cnf(c_0_42, negated_conjecture, (r1_tarski(k3_xboole_0(esk2_0,esk3_0),k1_tarski(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.38  fof(c_0_43, plain, ![X7, X8]:k3_xboole_0(X7,X8)=k3_xboole_0(X8,X7), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.20/0.38  cnf(c_0_44, plain, (r1_xboole_0(X1,k3_xboole_0(X2,X3))|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.20/0.38  cnf(c_0_45, negated_conjecture, (r1_xboole_0(esk3_0,k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0))), inference(spm,[status(thm)],[c_0_36, c_0_41])).
% 0.20/0.38  fof(c_0_46, plain, ![X21, X22]:(~r1_tarski(X21,X22)|k3_xboole_0(X21,X22)=X21), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.20/0.38  cnf(c_0_47, negated_conjecture, (r1_tarski(k3_xboole_0(esk2_0,esk3_0),k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42, c_0_29]), c_0_30]), c_0_31]), c_0_32])).
% 0.20/0.38  cnf(c_0_48, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.20/0.38  cnf(c_0_49, negated_conjecture, (r1_xboole_0(esk3_0,k3_xboole_0(k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0),X1))), inference(spm,[status(thm)],[c_0_44, c_0_45])).
% 0.20/0.38  cnf(c_0_50, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_46])).
% 0.20/0.38  cnf(c_0_51, negated_conjecture, (r1_tarski(k3_xboole_0(esk3_0,esk2_0),k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0))), inference(rw,[status(thm)],[c_0_47, c_0_48])).
% 0.20/0.38  cnf(c_0_52, negated_conjecture, (r1_xboole_0(esk3_0,k3_xboole_0(X1,k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0)))), inference(spm,[status(thm)],[c_0_49, c_0_48])).
% 0.20/0.38  cnf(c_0_53, negated_conjecture, (k3_xboole_0(k3_xboole_0(esk3_0,esk2_0),k3_enumset1(esk5_0,esk5_0,esk5_0,esk5_0,esk5_0))=k3_xboole_0(esk3_0,esk2_0)), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.20/0.38  cnf(c_0_54, plain, (r2_hidden(esk1_2(X1,X2),X1)|r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.38  cnf(c_0_55, negated_conjecture, (r1_xboole_0(esk3_0,k3_xboole_0(esk3_0,esk2_0))), inference(spm,[status(thm)],[c_0_52, c_0_53])).
% 0.20/0.38  cnf(c_0_56, plain, (r1_xboole_0(X1,X2)|~r2_hidden(esk1_2(X1,X2),X3)|~r1_xboole_0(X3,X1)), inference(spm,[status(thm)],[c_0_26, c_0_54])).
% 0.20/0.38  cnf(c_0_57, negated_conjecture, (r1_xboole_0(k3_xboole_0(esk3_0,esk2_0),esk3_0)), inference(spm,[status(thm)],[c_0_36, c_0_55])).
% 0.20/0.38  fof(c_0_58, plain, ![X9, X10]:((~r1_xboole_0(X9,X10)|k3_xboole_0(X9,X10)=k1_xboole_0)&(k3_xboole_0(X9,X10)!=k1_xboole_0|r1_xboole_0(X9,X10))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).
% 0.20/0.38  cnf(c_0_59, plain, (r1_xboole_0(X1,X2)|~r1_xboole_0(X1,X1)), inference(spm,[status(thm)],[c_0_56, c_0_54])).
% 0.20/0.38  cnf(c_0_60, negated_conjecture, (r1_xboole_0(k3_xboole_0(esk3_0,esk2_0),k3_xboole_0(esk3_0,X1))), inference(spm,[status(thm)],[c_0_44, c_0_57])).
% 0.20/0.38  fof(c_0_61, plain, ![X23]:k4_xboole_0(X23,k1_xboole_0)=X23, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.20/0.38  fof(c_0_62, plain, ![X19, X20]:k4_xboole_0(X19,X20)=k5_xboole_0(X19,k3_xboole_0(X19,X20)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 0.20/0.38  fof(c_0_63, plain, ![X24]:r1_xboole_0(X24,k1_xboole_0), inference(variable_rename,[status(thm)],[t65_xboole_1])).
% 0.20/0.38  fof(c_0_64, plain, ![X31, X32]:r1_xboole_0(k4_xboole_0(X31,X32),X32), inference(variable_rename,[status(thm)],[t79_xboole_1])).
% 0.20/0.38  cnf(c_0_65, plain, (k3_xboole_0(X1,X2)=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.20/0.38  cnf(c_0_66, negated_conjecture, (r1_xboole_0(k3_xboole_0(esk3_0,esk2_0),X1)), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.20/0.38  cnf(c_0_67, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_61])).
% 0.20/0.38  cnf(c_0_68, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_62])).
% 0.20/0.38  cnf(c_0_69, plain, (r1_xboole_0(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_63])).
% 0.20/0.38  cnf(c_0_70, plain, (r1_xboole_0(k4_xboole_0(X1,X2),X2)), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.20/0.38  cnf(c_0_71, negated_conjecture, (k3_xboole_0(k3_xboole_0(esk3_0,esk2_0),X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_65, c_0_66])).
% 0.20/0.38  cnf(c_0_72, plain, (k5_xboole_0(X1,k3_xboole_0(X1,k1_xboole_0))=X1), inference(rw,[status(thm)],[c_0_67, c_0_68])).
% 0.20/0.38  cnf(c_0_73, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_65, c_0_69])).
% 0.20/0.38  fof(c_0_74, plain, ![X28, X29, X30]:(~r1_xboole_0(X28,X29)|k3_xboole_0(X28,k2_xboole_0(X29,X30))=k3_xboole_0(X28,X30)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t78_xboole_1])])).
% 0.20/0.38  cnf(c_0_75, plain, (r1_xboole_0(k5_xboole_0(X1,k3_xboole_0(X1,X2)),X2)), inference(rw,[status(thm)],[c_0_70, c_0_68])).
% 0.20/0.38  cnf(c_0_76, negated_conjecture, (k3_xboole_0(esk3_0,esk2_0)=k1_xboole_0), inference(rw,[status(thm)],[c_0_53, c_0_71])).
% 0.20/0.38  cnf(c_0_77, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(rw,[status(thm)],[c_0_72, c_0_73])).
% 0.20/0.38  cnf(c_0_78, plain, (k3_xboole_0(X1,k2_xboole_0(X2,X3))=k3_xboole_0(X1,X3)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_74])).
% 0.20/0.38  cnf(c_0_79, negated_conjecture, (r1_xboole_0(esk3_0,esk2_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_76]), c_0_77])).
% 0.20/0.38  cnf(c_0_80, plain, (r1_xboole_0(X1,X2)|k3_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.20/0.38  cnf(c_0_81, negated_conjecture, (k3_xboole_0(esk3_0,k2_xboole_0(esk2_0,X1))=k3_xboole_0(esk3_0,X1)), inference(spm,[status(thm)],[c_0_78, c_0_79])).
% 0.20/0.38  cnf(c_0_82, negated_conjecture, (r1_xboole_0(esk3_0,k2_xboole_0(esk2_0,X1))|k3_xboole_0(esk3_0,X1)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_80, c_0_81])).
% 0.20/0.38  fof(c_0_83, plain, ![X5, X6]:k2_xboole_0(X5,X6)=k2_xboole_0(X6,X5), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.20/0.38  cnf(c_0_84, negated_conjecture, (r1_xboole_0(esk3_0,k2_xboole_0(esk2_0,X1))|k3_xboole_0(X1,esk3_0)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_82, c_0_48])).
% 0.20/0.38  cnf(c_0_85, negated_conjecture, (k3_xboole_0(esk4_0,esk3_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_65, c_0_37])).
% 0.20/0.38  cnf(c_0_86, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_83])).
% 0.20/0.38  cnf(c_0_87, negated_conjecture, (~r1_xboole_0(k2_xboole_0(esk2_0,esk4_0),esk3_0)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.38  cnf(c_0_88, negated_conjecture, (r1_xboole_0(esk3_0,k2_xboole_0(esk4_0,esk2_0))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_84, c_0_85]), c_0_86])).
% 0.20/0.38  cnf(c_0_89, negated_conjecture, (~r1_xboole_0(k2_xboole_0(esk4_0,esk2_0),esk3_0)), inference(rw,[status(thm)],[c_0_87, c_0_86])).
% 0.20/0.38  cnf(c_0_90, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_88]), c_0_89]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 91
% 0.20/0.38  # Proof object clause steps            : 54
% 0.20/0.38  # Proof object formula steps           : 37
% 0.20/0.38  # Proof object conjectures             : 31
% 0.20/0.38  # Proof object clause conjectures      : 28
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 23
% 0.20/0.38  # Proof object initial formulas used   : 18
% 0.20/0.38  # Proof object generating inferences   : 23
% 0.20/0.38  # Proof object simplifying inferences  : 17
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 18
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 24
% 0.20/0.38  # Removed in clause preprocessing      : 5
% 0.20/0.38  # Initial clauses in saturation        : 19
% 0.20/0.38  # Processed clauses                    : 178
% 0.20/0.38  # ...of these trivial                  : 52
% 0.20/0.38  # ...subsumed                          : 3
% 0.20/0.38  # ...remaining for further processing  : 123
% 0.20/0.38  # Other redundant clauses eliminated   : 0
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 21
% 0.20/0.38  # Generated clauses                    : 709
% 0.20/0.38  # ...of the previous two non-trivial   : 363
% 0.20/0.38  # Contextual simplify-reflections      : 0
% 0.20/0.38  # Paramodulations                      : 709
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 0
% 0.20/0.38  # Propositional unsat checks           : 0
% 0.20/0.38  #    Propositional check models        : 0
% 0.20/0.38  #    Propositional check unsatisfiable : 0
% 0.20/0.38  #    Propositional clauses             : 0
% 0.20/0.38  #    Propositional clauses after purity: 0
% 0.20/0.38  #    Propositional unsat core size     : 0
% 0.20/0.38  #    Propositional preprocessing time  : 0.000
% 0.20/0.38  #    Propositional encoding time       : 0.000
% 0.20/0.38  #    Propositional solver time         : 0.000
% 0.20/0.38  #    Success case prop preproc time    : 0.000
% 0.20/0.38  #    Success case prop encoding time   : 0.000
% 0.20/0.38  #    Success case prop solver time     : 0.000
% 0.20/0.38  # Current number of processed clauses  : 83
% 0.20/0.38  #    Positive orientable unit clauses  : 58
% 0.20/0.38  #    Positive unorientable unit clauses: 2
% 0.20/0.38  #    Negative unit clauses             : 2
% 0.20/0.38  #    Non-unit-clauses                  : 21
% 0.20/0.38  # Current number of unprocessed clauses: 203
% 0.20/0.38  # ...number of literals in the above   : 259
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 45
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 149
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 145
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 3
% 0.20/0.38  # Unit Clause-clause subsumption calls : 20
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 38
% 0.20/0.38  # BW rewrite match successes           : 38
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 7345
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.036 s
% 0.20/0.38  # System time              : 0.003 s
% 0.20/0.38  # Total time               : 0.039 s
% 0.20/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
