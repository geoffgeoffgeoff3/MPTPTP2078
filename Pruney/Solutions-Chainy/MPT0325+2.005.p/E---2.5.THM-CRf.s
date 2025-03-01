%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:44:06 EST 2020

% Result     : Theorem 1.72s
% Output     : CNFRefutation 1.72s
% Verified   : 
% Statistics : Number of formulae       :  150 (3848 expanded)
%              Number of clauses        :  105 (1731 expanded)
%              Number of leaves         :   22 (1042 expanded)
%              Depth                    :   35
%              Number of atoms          :  217 (5882 expanded)
%              Number of equality atoms :  163 (5156 expanded)
%              Maximal formula depth    :    9 (   2 average)
%              Maximal clause size      :    7 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t123_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] : k2_zfmisc_1(k3_xboole_0(X1,X2),k3_xboole_0(X3,X4)) = k3_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t123_zfmisc_1)).

fof(idempotence_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k3_xboole_0)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(t138_zfmisc_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))
     => ( k2_zfmisc_1(X1,X2) = k1_xboole_0
        | ( r1_tarski(X1,X3)
          & r1_tarski(X2,X4) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t138_zfmisc_1)).

fof(l32_xboole_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,X2) = k1_xboole_0
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l32_xboole_1)).

fof(t100_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t125_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( k2_zfmisc_1(k4_xboole_0(X1,X2),X3) = k4_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))
      & k2_zfmisc_1(X3,k4_xboole_0(X1,X2)) = k4_xboole_0(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X3,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t125_zfmisc_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_xboole_1)).

fof(t17_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k3_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t17_xboole_1)).

fof(t92_xboole_1,axiom,(
    ! [X1] : k5_xboole_0(X1,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t92_xboole_1)).

fof(t3_xboole_1,axiom,(
    ! [X1] :
      ( r1_tarski(X1,k1_xboole_0)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_xboole_1)).

fof(t5_boole,axiom,(
    ! [X1] : k5_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_boole)).

fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t120_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ( k2_zfmisc_1(k2_xboole_0(X1,X2),X3) = k2_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))
      & k2_zfmisc_1(X3,k2_xboole_0(X1,X2)) = k2_xboole_0(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X3,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t120_zfmisc_1)).

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

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(t22_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t22_xboole_1)).

fof(c_0_22,plain,(
    ! [X58,X59,X60,X61] : k2_zfmisc_1(k3_xboole_0(X58,X59),k3_xboole_0(X60,X61)) = k3_xboole_0(k2_zfmisc_1(X58,X60),k2_zfmisc_1(X59,X61)) ),
    inference(variable_rename,[status(thm)],[t123_zfmisc_1])).

fof(c_0_23,plain,(
    ! [X8] : k3_xboole_0(X8,X8) = X8 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).

fof(c_0_24,plain,(
    ! [X53,X54] :
      ( ( k2_zfmisc_1(X53,X54) != k1_xboole_0
        | X53 = k1_xboole_0
        | X54 = k1_xboole_0 )
      & ( X53 != k1_xboole_0
        | k2_zfmisc_1(X53,X54) = k1_xboole_0 )
      & ( X54 != k1_xboole_0
        | k2_zfmisc_1(X53,X54) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

fof(c_0_25,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))
       => ( k2_zfmisc_1(X1,X2) = k1_xboole_0
          | ( r1_tarski(X1,X3)
            & r1_tarski(X2,X4) ) ) ) ),
    inference(assume_negation,[status(cth)],[t138_zfmisc_1])).

cnf(c_0_26,plain,
    ( k2_zfmisc_1(k3_xboole_0(X1,X2),k3_xboole_0(X3,X4)) = k3_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_27,plain,
    ( k3_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_28,plain,
    ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_29,plain,(
    ! [X9,X10] :
      ( ( k4_xboole_0(X9,X10) != k1_xboole_0
        | r1_tarski(X9,X10) )
      & ( ~ r1_tarski(X9,X10)
        | k4_xboole_0(X9,X10) = k1_xboole_0 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).

fof(c_0_30,plain,(
    ! [X11,X12] : k4_xboole_0(X11,X12) = k5_xboole_0(X11,k3_xboole_0(X11,X12)) ),
    inference(variable_rename,[status(thm)],[t100_xboole_1])).

fof(c_0_31,plain,(
    ! [X62,X63,X64] :
      ( k2_zfmisc_1(k4_xboole_0(X62,X63),X64) = k4_xboole_0(k2_zfmisc_1(X62,X64),k2_zfmisc_1(X63,X64))
      & k2_zfmisc_1(X64,k4_xboole_0(X62,X63)) = k4_xboole_0(k2_zfmisc_1(X64,X62),k2_zfmisc_1(X64,X63)) ) ),
    inference(variable_rename,[status(thm)],[t125_zfmisc_1])).

fof(c_0_32,plain,(
    ! [X17,X18] :
      ( ~ r1_tarski(X17,X18)
      | k3_xboole_0(X17,X18) = X17 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

fof(c_0_33,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0))
    & k2_zfmisc_1(esk1_0,esk2_0) != k1_xboole_0
    & ( ~ r1_tarski(esk1_0,esk3_0)
      | ~ r1_tarski(esk2_0,esk4_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_25])])])).

cnf(c_0_34,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_35,plain,
    ( k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X2)) = k2_zfmisc_1(k3_xboole_0(X1,X3),X2) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_36,plain,
    ( k2_zfmisc_1(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_28])).

cnf(c_0_37,plain,
    ( r1_tarski(X1,X2)
    | k4_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_38,plain,
    ( k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_39,plain,
    ( k2_zfmisc_1(X1,k4_xboole_0(X2,X3)) = k4_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

fof(c_0_40,plain,(
    ! [X13,X14] : r1_tarski(k3_xboole_0(X13,X14),X13) ),
    inference(variable_rename,[status(thm)],[t17_xboole_1])).

cnf(c_0_41,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_42,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_43,plain,
    ( k2_zfmisc_1(k4_xboole_0(X1,X2),X3) = k4_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_44,plain,
    ( k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3)) = k2_zfmisc_1(X1,k3_xboole_0(X2,X3)) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_45,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_34])).

cnf(c_0_46,plain,
    ( k3_xboole_0(k2_zfmisc_1(X1,X2),k1_xboole_0) = k2_zfmisc_1(k3_xboole_0(X1,k1_xboole_0),X2) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_47,plain,
    ( r1_tarski(X1,X2)
    | k5_xboole_0(X1,k3_xboole_0(X1,X2)) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_48,plain,
    ( k2_zfmisc_1(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3))) = k5_xboole_0(k2_zfmisc_1(X1,X2),k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_38]),c_0_38])).

cnf(c_0_49,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

fof(c_0_50,plain,(
    ! [X21] : k5_xboole_0(X21,X21) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t92_xboole_1])).

cnf(c_0_51,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_zfmisc_1(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_52,negated_conjecture,
    ( k3_xboole_0(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0)) = k2_zfmisc_1(esk1_0,esk2_0) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_53,plain,
    ( k2_zfmisc_1(k5_xboole_0(X1,k3_xboole_0(X1,X2)),X3) = k5_xboole_0(k2_zfmisc_1(X1,X3),k3_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43,c_0_38]),c_0_38])).

cnf(c_0_54,plain,
    ( k2_zfmisc_1(k3_xboole_0(X1,k1_xboole_0),X2) = k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_46])).

cnf(c_0_55,plain,
    ( r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))
    | k2_zfmisc_1(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3))) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_56,plain,
    ( k3_xboole_0(k3_xboole_0(X1,X2),X1) = k3_xboole_0(X1,X2) ),
    inference(spm,[status(thm)],[c_0_41,c_0_49])).

cnf(c_0_57,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_58,plain,
    ( k3_xboole_0(X1,X2) = k1_xboole_0
    | k3_xboole_0(X3,X4) = k1_xboole_0
    | k3_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4)) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_51,c_0_26])).

cnf(c_0_59,negated_conjecture,
    ( k3_xboole_0(k2_zfmisc_1(X1,k2_zfmisc_1(esk1_0,esk2_0)),k2_zfmisc_1(X2,k2_zfmisc_1(esk3_0,esk4_0))) = k2_zfmisc_1(k3_xboole_0(X1,X2),k2_zfmisc_1(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_26,c_0_52])).

cnf(c_0_60,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,esk2_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_61,plain,
    ( r1_tarski(k2_zfmisc_1(X1,X2),k1_xboole_0)
    | k5_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(k3_xboole_0(X1,k1_xboole_0),X2)) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_47,c_0_46])).

cnf(c_0_62,plain,
    ( k5_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(k3_xboole_0(X1,X3),X2)) = k2_zfmisc_1(k5_xboole_0(X1,k3_xboole_0(X1,X3)),X2) ),
    inference(rw,[status(thm)],[c_0_53,c_0_35])).

cnf(c_0_63,plain,
    ( k2_zfmisc_1(X1,k3_xboole_0(k3_xboole_0(X2,X3),k1_xboole_0)) = k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_54]),c_0_36]),c_0_46]),c_0_54])).

cnf(c_0_64,plain,
    ( r1_tarski(k2_zfmisc_1(X1,k3_xboole_0(X2,X3)),k2_zfmisc_1(X1,X2)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_57]),c_0_45])])).

cnf(c_0_65,negated_conjecture,
    ( k3_xboole_0(X1,X2) = k1_xboole_0
    | k2_zfmisc_1(k3_xboole_0(X1,X2),k2_zfmisc_1(esk1_0,esk2_0)) != k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_59]),c_0_52]),c_0_60])).

fof(c_0_66,plain,(
    ! [X19] :
      ( ~ r1_tarski(X19,k1_xboole_0)
      | X19 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).

cnf(c_0_67,plain,
    ( r1_tarski(k2_zfmisc_1(X1,X2),k1_xboole_0)
    | k2_zfmisc_1(k5_xboole_0(X1,k3_xboole_0(X1,k1_xboole_0)),X2) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_68,plain,
    ( k2_zfmisc_1(k5_xboole_0(X1,k3_xboole_0(X1,X2)),k3_xboole_0(X3,k1_xboole_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_63]),c_0_63]),c_0_26]),c_0_45]),c_0_46]),c_0_54]),c_0_57]),c_0_63])).

cnf(c_0_69,plain,
    ( k4_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_70,plain,
    ( r1_tarski(k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4)),k2_zfmisc_1(k3_xboole_0(X1,X3),X2)) ),
    inference(spm,[status(thm)],[c_0_64,c_0_26])).

cnf(c_0_71,negated_conjecture,
    ( X1 = k1_xboole_0
    | k2_zfmisc_1(X1,k2_zfmisc_1(esk1_0,esk2_0)) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_65,c_0_27])).

cnf(c_0_72,plain,
    ( X1 = k1_xboole_0
    | ~ r1_tarski(X1,k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[c_0_66])).

cnf(c_0_73,plain,
    ( r1_tarski(k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0)),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_67,c_0_68])).

cnf(c_0_74,plain,
    ( k5_xboole_0(X1,k3_xboole_0(X1,X2)) = k1_xboole_0
    | ~ r1_tarski(X1,X2) ),
    inference(rw,[status(thm)],[c_0_69,c_0_38])).

cnf(c_0_75,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0)) ),
    inference(spm,[status(thm)],[c_0_70,c_0_52])).

cnf(c_0_76,negated_conjecture,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0
    | k2_zfmisc_1(X1,k2_zfmisc_1(esk1_0,k3_xboole_0(esk2_0,k1_xboole_0))) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71,c_0_54]),c_0_46]),c_0_54])).

cnf(c_0_77,plain,
    ( k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_72,c_0_73])).

cnf(c_0_78,negated_conjecture,
    ( k2_zfmisc_1(k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0))),esk2_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_75]),c_0_35]),c_0_62])).

cnf(c_0_79,negated_conjecture,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_76,c_0_77]),c_0_45])])).

cnf(c_0_80,negated_conjecture,
    ( k3_xboole_0(X1,k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0)))) = k1_xboole_0
    | k3_xboole_0(X2,esk2_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_78]),c_0_46]),c_0_79]),c_0_36])])).

cnf(c_0_81,negated_conjecture,
    ( k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0))) = k1_xboole_0
    | k3_xboole_0(X1,esk2_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_27,c_0_80])).

cnf(c_0_82,negated_conjecture,
    ( k3_xboole_0(X1,esk2_0) = k1_xboole_0
    | r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_47,c_0_81])).

fof(c_0_83,plain,(
    ! [X20] : k5_xboole_0(X20,k1_xboole_0) = X20 ),
    inference(variable_rename,[status(thm)],[t5_boole])).

cnf(c_0_84,negated_conjecture,
    ( k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0))) = k1_xboole_0
    | esk2_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_51,c_0_78])).

cnf(c_0_85,negated_conjecture,
    ( k3_xboole_0(esk2_0,X1) = k1_xboole_0
    | r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_56,c_0_82])).

cnf(c_0_86,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_83])).

cnf(c_0_87,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_47,c_0_84])).

cnf(c_0_88,negated_conjecture,
    ( r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))
    | r1_tarski(esk2_0,X1) ),
    inference(csr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_85]),c_0_86]),c_0_87])).

cnf(c_0_89,negated_conjecture,
    ( k3_xboole_0(esk2_0,X1) = esk2_0
    | r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_41,c_0_88])).

cnf(c_0_90,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(X1,esk2_0),k2_zfmisc_1(X1,X2))
    | r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_89]),c_0_57]),c_0_45])])).

cnf(c_0_91,plain,
    ( k3_xboole_0(k2_zfmisc_1(X1,X2),k1_xboole_0) = k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0)) ),
    inference(rw,[status(thm)],[c_0_46,c_0_54])).

cnf(c_0_92,negated_conjecture,
    ( r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))
    | r1_tarski(k2_zfmisc_1(X1,esk2_0),k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_90,c_0_45])).

cnf(c_0_93,plain,
    ( k3_xboole_0(k2_zfmisc_1(X1,X2),k1_xboole_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_91,c_0_77])).

cnf(c_0_94,negated_conjecture,
    ( k2_zfmisc_1(k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0)),esk2_0) = k2_zfmisc_1(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_75]),c_0_35])).

cnf(c_0_95,negated_conjecture,
    ( k2_zfmisc_1(X1,esk2_0) = k1_xboole_0
    | r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_92]),c_0_93])).

cnf(c_0_96,negated_conjecture,
    ( r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_94,c_0_95]),c_0_60])).

cnf(c_0_97,negated_conjecture,
    ( k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0)) = esk1_0 ),
    inference(spm,[status(thm)],[c_0_41,c_0_96])).

fof(c_0_98,plain,(
    ! [X51,X52] : k3_tarski(k2_tarski(X51,X52)) = k2_xboole_0(X51,X52) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_99,plain,(
    ! [X24,X25] : k1_enumset1(X24,X24,X25) = k2_tarski(X24,X25) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

cnf(c_0_100,negated_conjecture,
    ( k3_xboole_0(k2_zfmisc_1(esk1_0,X1),k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),X2)) = k2_zfmisc_1(esk1_0,k3_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_26,c_0_97])).

fof(c_0_101,plain,(
    ! [X55,X56,X57] :
      ( k2_zfmisc_1(k2_xboole_0(X55,X56),X57) = k2_xboole_0(k2_zfmisc_1(X55,X57),k2_zfmisc_1(X56,X57))
      & k2_zfmisc_1(X57,k2_xboole_0(X55,X56)) = k2_xboole_0(k2_zfmisc_1(X57,X55),k2_zfmisc_1(X57,X56)) ) ),
    inference(variable_rename,[status(thm)],[t120_zfmisc_1])).

cnf(c_0_102,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_98])).

cnf(c_0_103,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_99])).

fof(c_0_104,plain,(
    ! [X26,X27,X28] : k2_enumset1(X26,X26,X27,X28) = k1_enumset1(X26,X27,X28) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_105,plain,(
    ! [X29,X30,X31,X32] : k3_enumset1(X29,X29,X30,X31,X32) = k2_enumset1(X29,X30,X31,X32) ),
    inference(variable_rename,[status(thm)],[t72_enumset1])).

fof(c_0_106,plain,(
    ! [X33,X34,X35,X36,X37] : k4_enumset1(X33,X33,X34,X35,X36,X37) = k3_enumset1(X33,X34,X35,X36,X37) ),
    inference(variable_rename,[status(thm)],[t73_enumset1])).

fof(c_0_107,plain,(
    ! [X38,X39,X40,X41,X42,X43] : k5_enumset1(X38,X38,X39,X40,X41,X42,X43) = k4_enumset1(X38,X39,X40,X41,X42,X43) ),
    inference(variable_rename,[status(thm)],[t74_enumset1])).

fof(c_0_108,plain,(
    ! [X44,X45,X46,X47,X48,X49,X50] : k6_enumset1(X44,X44,X45,X46,X47,X48,X49,X50) = k5_enumset1(X44,X45,X46,X47,X48,X49,X50) ),
    inference(variable_rename,[status(thm)],[t75_enumset1])).

cnf(c_0_109,negated_conjecture,
    ( k3_xboole_0(k2_zfmisc_1(esk1_0,X1),k3_xboole_0(k2_zfmisc_1(esk1_0,X2),k2_zfmisc_1(esk3_0,X3))) = k2_zfmisc_1(esk1_0,k3_xboole_0(X1,k3_xboole_0(X2,X3))) ),
    inference(spm,[status(thm)],[c_0_100,c_0_26])).

cnf(c_0_110,plain,
    ( k2_zfmisc_1(X1,k2_xboole_0(X2,X3)) = k2_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_101])).

cnf(c_0_111,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_102,c_0_103])).

cnf(c_0_112,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_104])).

cnf(c_0_113,plain,
    ( k3_enumset1(X1,X1,X2,X3,X4) = k2_enumset1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_105])).

cnf(c_0_114,plain,
    ( k4_enumset1(X1,X1,X2,X3,X4,X5) = k3_enumset1(X1,X2,X3,X4,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_106])).

cnf(c_0_115,plain,
    ( k5_enumset1(X1,X1,X2,X3,X4,X5,X6) = k4_enumset1(X1,X2,X3,X4,X5,X6) ),
    inference(split_conjunct,[status(thm)],[c_0_107])).

cnf(c_0_116,plain,
    ( k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7) = k5_enumset1(X1,X2,X3,X4,X5,X6,X7) ),
    inference(split_conjunct,[status(thm)],[c_0_108])).

fof(c_0_117,plain,(
    ! [X22,X23] : k2_tarski(X22,X23) = k2_tarski(X23,X22) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

cnf(c_0_118,plain,
    ( k3_xboole_0(k2_zfmisc_1(X1,k3_xboole_0(X2,X3)),k2_zfmisc_1(X4,X2)) = k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X4,X3)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_56]),c_0_26])).

cnf(c_0_119,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,k3_xboole_0(X1,k3_xboole_0(esk2_0,esk4_0))) = k2_zfmisc_1(esk1_0,k3_xboole_0(X1,esk2_0)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_109,c_0_52]),c_0_44])).

cnf(c_0_120,plain,
    ( k2_zfmisc_1(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3))) = k3_tarski(k6_enumset1(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_110,c_0_111]),c_0_111]),c_0_112]),c_0_112]),c_0_113]),c_0_113]),c_0_114]),c_0_114]),c_0_115]),c_0_115]),c_0_116]),c_0_116])).

cnf(c_0_121,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_117])).

fof(c_0_122,plain,(
    ! [X15,X16] : k2_xboole_0(X15,k3_xboole_0(X15,X16)) = X15 ),
    inference(variable_rename,[status(thm)],[t22_xboole_1])).

cnf(c_0_123,plain,
    ( k3_xboole_0(k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4)),k2_zfmisc_1(X5,k3_xboole_0(X2,X4))) = k3_xboole_0(k2_zfmisc_1(k3_xboole_0(X1,X3),X2),k2_zfmisc_1(X5,X4)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_26]),c_0_26])).

cnf(c_0_124,negated_conjecture,
    ( k3_xboole_0(k2_zfmisc_1(esk1_0,X1),k2_zfmisc_1(X2,k3_xboole_0(esk2_0,esk4_0))) = k3_xboole_0(k2_zfmisc_1(esk1_0,X1),k2_zfmisc_1(X2,esk2_0)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_118,c_0_119]),c_0_118])).

cnf(c_0_125,plain,
    ( k2_zfmisc_1(k2_xboole_0(X1,X2),X3) = k2_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_101])).

cnf(c_0_126,plain,
    ( k3_tarski(k6_enumset1(k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k3_xboole_0(k2_zfmisc_1(X1,X4),k2_zfmisc_1(X2,X5)))) = k2_zfmisc_1(k3_xboole_0(X1,X2),k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,k3_xboole_0(X4,X5)))) ),
    inference(spm,[status(thm)],[c_0_120,c_0_26])).

cnf(c_0_127,plain,
    ( k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2) = k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_121,c_0_103]),c_0_103]),c_0_112]),c_0_112]),c_0_113]),c_0_113]),c_0_114]),c_0_114]),c_0_115]),c_0_115]),c_0_116]),c_0_116])).

cnf(c_0_128,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_122])).

cnf(c_0_129,negated_conjecture,
    ( k3_xboole_0(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(X1,esk4_0)) = k2_zfmisc_1(k3_xboole_0(esk1_0,X1),esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_123,c_0_52]),c_0_124]),c_0_35])).

cnf(c_0_130,plain,
    ( k2_zfmisc_1(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),X3) = k3_tarski(k6_enumset1(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_125,c_0_111]),c_0_111]),c_0_112]),c_0_112]),c_0_113]),c_0_113]),c_0_114]),c_0_114]),c_0_115]),c_0_115]),c_0_116]),c_0_116])).

cnf(c_0_131,negated_conjecture,
    ( k3_tarski(k6_enumset1(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),X1))) = k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_xboole_0(esk2_0,esk4_0)))) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_126,c_0_52]),c_0_127])).

cnf(c_0_132,plain,
    ( k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_xboole_0(X1,X2))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_128,c_0_111]),c_0_112]),c_0_113]),c_0_114]),c_0_115]),c_0_116])).

cnf(c_0_133,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(X1,esk4_0))
    | k5_xboole_0(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(k3_xboole_0(esk1_0,X1),esk2_0)) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_47,c_0_129])).

cnf(c_0_134,negated_conjecture,
    ( k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0) = k2_zfmisc_1(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_130,c_0_131]),c_0_132]),c_0_132])).

cnf(c_0_135,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(esk1_0,esk4_0))
    | k5_xboole_0(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(esk1_0,esk2_0)) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_133,c_0_27])).

cnf(c_0_136,negated_conjecture,
    ( k2_zfmisc_1(k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0)),esk2_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_134]),c_0_57])).

cnf(c_0_137,negated_conjecture,
    ( r1_tarski(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_135,c_0_134]),c_0_134]),c_0_57])])).

cnf(c_0_138,plain,
    ( k5_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,k3_xboole_0(X2,X3))) = k2_zfmisc_1(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3))) ),
    inference(rw,[status(thm)],[c_0_48,c_0_44])).

cnf(c_0_139,negated_conjecture,
    ( k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0)) = k1_xboole_0
    | esk2_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_51,c_0_136])).

cnf(c_0_140,negated_conjecture,
    ( k2_zfmisc_1(esk1_0,k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,esk4_0))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_137]),c_0_44]),c_0_138])).

cnf(c_0_141,negated_conjecture,
    ( ~ r1_tarski(esk1_0,esk3_0)
    | ~ r1_tarski(esk2_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_142,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | r1_tarski(esk1_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_139])).

cnf(c_0_143,negated_conjecture,
    ( k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,esk4_0)) = k1_xboole_0
    | esk1_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_51,c_0_140])).

cnf(c_0_144,negated_conjecture,
    ( esk2_0 = k1_xboole_0
    | ~ r1_tarski(esk2_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_141,c_0_142])).

cnf(c_0_145,negated_conjecture,
    ( esk1_0 = k1_xboole_0
    | r1_tarski(esk2_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_143])).

cnf(c_0_146,negated_conjecture,
    ( esk1_0 = k1_xboole_0
    | esk2_0 = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_144,c_0_145])).

cnf(c_0_147,negated_conjecture,
    ( k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0)) != k1_xboole_0 ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_52]),c_0_60])).

cnf(c_0_148,negated_conjecture,
    ( esk1_0 = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_146]),c_0_45])])).

cnf(c_0_149,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_147,c_0_148]),c_0_36]),c_0_148]),c_0_36]),c_0_36])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n018.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 12:15:26 EST 2020
% 0.13/0.33  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 1.72/1.93  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S054N
% 1.72/1.93  # and selection function GSelectMinInfpos.
% 1.72/1.93  #
% 1.72/1.93  # Preprocessing time       : 0.051 s
% 1.72/1.93  # Presaturation interreduction done
% 1.72/1.93  
% 1.72/1.93  # Proof found!
% 1.72/1.93  # SZS status Theorem
% 1.72/1.93  # SZS output start CNFRefutation
% 1.72/1.93  fof(t123_zfmisc_1, axiom, ![X1, X2, X3, X4]:k2_zfmisc_1(k3_xboole_0(X1,X2),k3_xboole_0(X3,X4))=k3_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t123_zfmisc_1)).
% 1.72/1.93  fof(idempotence_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', idempotence_k3_xboole_0)).
% 1.72/1.93  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 1.72/1.93  fof(t138_zfmisc_1, conjecture, ![X1, X2, X3, X4]:(r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))=>(k2_zfmisc_1(X1,X2)=k1_xboole_0|(r1_tarski(X1,X3)&r1_tarski(X2,X4)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t138_zfmisc_1)).
% 1.72/1.93  fof(l32_xboole_1, axiom, ![X1, X2]:(k4_xboole_0(X1,X2)=k1_xboole_0<=>r1_tarski(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l32_xboole_1)).
% 1.72/1.93  fof(t100_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t100_xboole_1)).
% 1.72/1.93  fof(t125_zfmisc_1, axiom, ![X1, X2, X3]:(k2_zfmisc_1(k4_xboole_0(X1,X2),X3)=k4_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))&k2_zfmisc_1(X3,k4_xboole_0(X1,X2))=k4_xboole_0(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t125_zfmisc_1)).
% 1.72/1.93  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t28_xboole_1)).
% 1.72/1.93  fof(t17_xboole_1, axiom, ![X1, X2]:r1_tarski(k3_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t17_xboole_1)).
% 1.72/1.93  fof(t92_xboole_1, axiom, ![X1]:k5_xboole_0(X1,X1)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t92_xboole_1)).
% 1.72/1.93  fof(t3_xboole_1, axiom, ![X1]:(r1_tarski(X1,k1_xboole_0)=>X1=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_xboole_1)).
% 1.72/1.93  fof(t5_boole, axiom, ![X1]:k5_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_boole)).
% 1.72/1.93  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 1.72/1.93  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 1.72/1.93  fof(t120_zfmisc_1, axiom, ![X1, X2, X3]:(k2_zfmisc_1(k2_xboole_0(X1,X2),X3)=k2_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))&k2_zfmisc_1(X3,k2_xboole_0(X1,X2))=k2_xboole_0(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t120_zfmisc_1)).
% 1.72/1.93  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 1.72/1.93  fof(t72_enumset1, axiom, ![X1, X2, X3, X4]:k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_enumset1)).
% 1.72/1.93  fof(t73_enumset1, axiom, ![X1, X2, X3, X4, X5]:k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t73_enumset1)).
% 1.72/1.93  fof(t74_enumset1, axiom, ![X1, X2, X3, X4, X5, X6]:k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t74_enumset1)).
% 1.72/1.93  fof(t75_enumset1, axiom, ![X1, X2, X3, X4, X5, X6, X7]:k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t75_enumset1)).
% 1.72/1.93  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 1.72/1.93  fof(t22_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t22_xboole_1)).
% 1.72/1.93  fof(c_0_22, plain, ![X58, X59, X60, X61]:k2_zfmisc_1(k3_xboole_0(X58,X59),k3_xboole_0(X60,X61))=k3_xboole_0(k2_zfmisc_1(X58,X60),k2_zfmisc_1(X59,X61)), inference(variable_rename,[status(thm)],[t123_zfmisc_1])).
% 1.72/1.93  fof(c_0_23, plain, ![X8]:k3_xboole_0(X8,X8)=X8, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k3_xboole_0])])).
% 1.72/1.93  fof(c_0_24, plain, ![X53, X54]:((k2_zfmisc_1(X53,X54)!=k1_xboole_0|(X53=k1_xboole_0|X54=k1_xboole_0))&((X53!=k1_xboole_0|k2_zfmisc_1(X53,X54)=k1_xboole_0)&(X54!=k1_xboole_0|k2_zfmisc_1(X53,X54)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 1.72/1.93  fof(c_0_25, negated_conjecture, ~(![X1, X2, X3, X4]:(r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4))=>(k2_zfmisc_1(X1,X2)=k1_xboole_0|(r1_tarski(X1,X3)&r1_tarski(X2,X4))))), inference(assume_negation,[status(cth)],[t138_zfmisc_1])).
% 1.72/1.93  cnf(c_0_26, plain, (k2_zfmisc_1(k3_xboole_0(X1,X2),k3_xboole_0(X3,X4))=k3_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 1.72/1.93  cnf(c_0_27, plain, (k3_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_23])).
% 1.72/1.93  cnf(c_0_28, plain, (k2_zfmisc_1(X1,X2)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.72/1.93  fof(c_0_29, plain, ![X9, X10]:((k4_xboole_0(X9,X10)!=k1_xboole_0|r1_tarski(X9,X10))&(~r1_tarski(X9,X10)|k4_xboole_0(X9,X10)=k1_xboole_0)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l32_xboole_1])])).
% 1.72/1.93  fof(c_0_30, plain, ![X11, X12]:k4_xboole_0(X11,X12)=k5_xboole_0(X11,k3_xboole_0(X11,X12)), inference(variable_rename,[status(thm)],[t100_xboole_1])).
% 1.72/1.93  fof(c_0_31, plain, ![X62, X63, X64]:(k2_zfmisc_1(k4_xboole_0(X62,X63),X64)=k4_xboole_0(k2_zfmisc_1(X62,X64),k2_zfmisc_1(X63,X64))&k2_zfmisc_1(X64,k4_xboole_0(X62,X63))=k4_xboole_0(k2_zfmisc_1(X64,X62),k2_zfmisc_1(X64,X63))), inference(variable_rename,[status(thm)],[t125_zfmisc_1])).
% 1.72/1.93  fof(c_0_32, plain, ![X17, X18]:(~r1_tarski(X17,X18)|k3_xboole_0(X17,X18)=X17), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 1.72/1.93  fof(c_0_33, negated_conjecture, (r1_tarski(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0))&(k2_zfmisc_1(esk1_0,esk2_0)!=k1_xboole_0&(~r1_tarski(esk1_0,esk3_0)|~r1_tarski(esk2_0,esk4_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_25])])])).
% 1.72/1.93  cnf(c_0_34, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.72/1.93  cnf(c_0_35, plain, (k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X2))=k2_zfmisc_1(k3_xboole_0(X1,X3),X2)), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 1.72/1.93  cnf(c_0_36, plain, (k2_zfmisc_1(k1_xboole_0,X1)=k1_xboole_0), inference(er,[status(thm)],[c_0_28])).
% 1.72/1.93  cnf(c_0_37, plain, (r1_tarski(X1,X2)|k4_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_29])).
% 1.72/1.93  cnf(c_0_38, plain, (k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 1.72/1.93  cnf(c_0_39, plain, (k2_zfmisc_1(X1,k4_xboole_0(X2,X3))=k4_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 1.72/1.93  fof(c_0_40, plain, ![X13, X14]:r1_tarski(k3_xboole_0(X13,X14),X13), inference(variable_rename,[status(thm)],[t17_xboole_1])).
% 1.72/1.93  cnf(c_0_41, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 1.72/1.93  cnf(c_0_42, negated_conjecture, (r1_tarski(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 1.72/1.93  cnf(c_0_43, plain, (k2_zfmisc_1(k4_xboole_0(X1,X2),X3)=k4_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 1.72/1.93  cnf(c_0_44, plain, (k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))=k2_zfmisc_1(X1,k3_xboole_0(X2,X3))), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 1.72/1.93  cnf(c_0_45, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_34])).
% 1.72/1.93  cnf(c_0_46, plain, (k3_xboole_0(k2_zfmisc_1(X1,X2),k1_xboole_0)=k2_zfmisc_1(k3_xboole_0(X1,k1_xboole_0),X2)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 1.72/1.93  cnf(c_0_47, plain, (r1_tarski(X1,X2)|k5_xboole_0(X1,k3_xboole_0(X1,X2))!=k1_xboole_0), inference(rw,[status(thm)],[c_0_37, c_0_38])).
% 1.72/1.93  cnf(c_0_48, plain, (k2_zfmisc_1(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3)))=k5_xboole_0(k2_zfmisc_1(X1,X2),k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_38]), c_0_38])).
% 1.72/1.93  cnf(c_0_49, plain, (r1_tarski(k3_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 1.72/1.93  fof(c_0_50, plain, ![X21]:k5_xboole_0(X21,X21)=k1_xboole_0, inference(variable_rename,[status(thm)],[t92_xboole_1])).
% 1.72/1.93  cnf(c_0_51, plain, (X1=k1_xboole_0|X2=k1_xboole_0|k2_zfmisc_1(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 1.72/1.93  cnf(c_0_52, negated_conjecture, (k3_xboole_0(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk3_0,esk4_0))=k2_zfmisc_1(esk1_0,esk2_0)), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 1.72/1.93  cnf(c_0_53, plain, (k2_zfmisc_1(k5_xboole_0(X1,k3_xboole_0(X1,X2)),X3)=k5_xboole_0(k2_zfmisc_1(X1,X3),k3_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43, c_0_38]), c_0_38])).
% 1.72/1.93  cnf(c_0_54, plain, (k2_zfmisc_1(k3_xboole_0(X1,k1_xboole_0),X2)=k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_46])).
% 1.72/1.93  cnf(c_0_55, plain, (r1_tarski(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))|k2_zfmisc_1(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3)))!=k1_xboole_0), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 1.72/1.93  cnf(c_0_56, plain, (k3_xboole_0(k3_xboole_0(X1,X2),X1)=k3_xboole_0(X1,X2)), inference(spm,[status(thm)],[c_0_41, c_0_49])).
% 1.72/1.93  cnf(c_0_57, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_50])).
% 1.72/1.93  cnf(c_0_58, plain, (k3_xboole_0(X1,X2)=k1_xboole_0|k3_xboole_0(X3,X4)=k1_xboole_0|k3_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4))!=k1_xboole_0), inference(spm,[status(thm)],[c_0_51, c_0_26])).
% 1.72/1.93  cnf(c_0_59, negated_conjecture, (k3_xboole_0(k2_zfmisc_1(X1,k2_zfmisc_1(esk1_0,esk2_0)),k2_zfmisc_1(X2,k2_zfmisc_1(esk3_0,esk4_0)))=k2_zfmisc_1(k3_xboole_0(X1,X2),k2_zfmisc_1(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_26, c_0_52])).
% 1.72/1.93  cnf(c_0_60, negated_conjecture, (k2_zfmisc_1(esk1_0,esk2_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_33])).
% 1.72/1.93  cnf(c_0_61, plain, (r1_tarski(k2_zfmisc_1(X1,X2),k1_xboole_0)|k5_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(k3_xboole_0(X1,k1_xboole_0),X2))!=k1_xboole_0), inference(spm,[status(thm)],[c_0_47, c_0_46])).
% 1.72/1.93  cnf(c_0_62, plain, (k5_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(k3_xboole_0(X1,X3),X2))=k2_zfmisc_1(k5_xboole_0(X1,k3_xboole_0(X1,X3)),X2)), inference(rw,[status(thm)],[c_0_53, c_0_35])).
% 1.72/1.93  cnf(c_0_63, plain, (k2_zfmisc_1(X1,k3_xboole_0(k3_xboole_0(X2,X3),k1_xboole_0))=k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_54]), c_0_36]), c_0_46]), c_0_54])).
% 1.72/1.93  cnf(c_0_64, plain, (r1_tarski(k2_zfmisc_1(X1,k3_xboole_0(X2,X3)),k2_zfmisc_1(X1,X2))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_57]), c_0_45])])).
% 1.72/1.93  cnf(c_0_65, negated_conjecture, (k3_xboole_0(X1,X2)=k1_xboole_0|k2_zfmisc_1(k3_xboole_0(X1,X2),k2_zfmisc_1(esk1_0,esk2_0))!=k1_xboole_0), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_59]), c_0_52]), c_0_60])).
% 1.72/1.93  fof(c_0_66, plain, ![X19]:(~r1_tarski(X19,k1_xboole_0)|X19=k1_xboole_0), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_xboole_1])])).
% 1.72/1.93  cnf(c_0_67, plain, (r1_tarski(k2_zfmisc_1(X1,X2),k1_xboole_0)|k2_zfmisc_1(k5_xboole_0(X1,k3_xboole_0(X1,k1_xboole_0)),X2)!=k1_xboole_0), inference(rw,[status(thm)],[c_0_61, c_0_62])).
% 1.72/1.93  cnf(c_0_68, plain, (k2_zfmisc_1(k5_xboole_0(X1,k3_xboole_0(X1,X2)),k3_xboole_0(X3,k1_xboole_0))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_63]), c_0_63]), c_0_26]), c_0_45]), c_0_46]), c_0_54]), c_0_57]), c_0_63])).
% 1.72/1.93  cnf(c_0_69, plain, (k4_xboole_0(X1,X2)=k1_xboole_0|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 1.72/1.93  cnf(c_0_70, plain, (r1_tarski(k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4)),k2_zfmisc_1(k3_xboole_0(X1,X3),X2))), inference(spm,[status(thm)],[c_0_64, c_0_26])).
% 1.72/1.93  cnf(c_0_71, negated_conjecture, (X1=k1_xboole_0|k2_zfmisc_1(X1,k2_zfmisc_1(esk1_0,esk2_0))!=k1_xboole_0), inference(spm,[status(thm)],[c_0_65, c_0_27])).
% 1.72/1.93  cnf(c_0_72, plain, (X1=k1_xboole_0|~r1_tarski(X1,k1_xboole_0)), inference(split_conjunct,[status(thm)],[c_0_66])).
% 1.72/1.93  cnf(c_0_73, plain, (r1_tarski(k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0)),k1_xboole_0)), inference(spm,[status(thm)],[c_0_67, c_0_68])).
% 1.72/1.93  cnf(c_0_74, plain, (k5_xboole_0(X1,k3_xboole_0(X1,X2))=k1_xboole_0|~r1_tarski(X1,X2)), inference(rw,[status(thm)],[c_0_69, c_0_38])).
% 1.72/1.93  cnf(c_0_75, negated_conjecture, (r1_tarski(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0))), inference(spm,[status(thm)],[c_0_70, c_0_52])).
% 1.72/1.93  cnf(c_0_76, negated_conjecture, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0|k2_zfmisc_1(X1,k2_zfmisc_1(esk1_0,k3_xboole_0(esk2_0,k1_xboole_0)))!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_71, c_0_54]), c_0_46]), c_0_54])).
% 1.72/1.93  cnf(c_0_77, plain, (k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0))=k1_xboole_0), inference(spm,[status(thm)],[c_0_72, c_0_73])).
% 1.72/1.93  cnf(c_0_78, negated_conjecture, (k2_zfmisc_1(k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0))),esk2_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_75]), c_0_35]), c_0_62])).
% 1.72/1.93  cnf(c_0_79, negated_conjecture, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_76, c_0_77]), c_0_45])])).
% 1.72/1.93  cnf(c_0_80, negated_conjecture, (k3_xboole_0(X1,k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0))))=k1_xboole_0|k3_xboole_0(X2,esk2_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_58, c_0_78]), c_0_46]), c_0_79]), c_0_36])])).
% 1.72/1.93  cnf(c_0_81, negated_conjecture, (k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0)))=k1_xboole_0|k3_xboole_0(X1,esk2_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_27, c_0_80])).
% 1.72/1.93  cnf(c_0_82, negated_conjecture, (k3_xboole_0(X1,esk2_0)=k1_xboole_0|r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))), inference(spm,[status(thm)],[c_0_47, c_0_81])).
% 1.72/1.93  fof(c_0_83, plain, ![X20]:k5_xboole_0(X20,k1_xboole_0)=X20, inference(variable_rename,[status(thm)],[t5_boole])).
% 1.72/1.93  cnf(c_0_84, negated_conjecture, (k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0)))=k1_xboole_0|esk2_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_51, c_0_78])).
% 1.72/1.93  cnf(c_0_85, negated_conjecture, (k3_xboole_0(esk2_0,X1)=k1_xboole_0|r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))), inference(spm,[status(thm)],[c_0_56, c_0_82])).
% 1.72/1.93  cnf(c_0_86, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_83])).
% 1.72/1.93  cnf(c_0_87, negated_conjecture, (esk2_0=k1_xboole_0|r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))), inference(spm,[status(thm)],[c_0_47, c_0_84])).
% 1.72/1.93  cnf(c_0_88, negated_conjecture, (r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))|r1_tarski(esk2_0,X1)), inference(csr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_85]), c_0_86]), c_0_87])).
% 1.72/1.93  cnf(c_0_89, negated_conjecture, (k3_xboole_0(esk2_0,X1)=esk2_0|r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))), inference(spm,[status(thm)],[c_0_41, c_0_88])).
% 1.72/1.93  cnf(c_0_90, negated_conjecture, (r1_tarski(k2_zfmisc_1(X1,esk2_0),k2_zfmisc_1(X1,X2))|r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_89]), c_0_57]), c_0_45])])).
% 1.72/1.93  cnf(c_0_91, plain, (k3_xboole_0(k2_zfmisc_1(X1,X2),k1_xboole_0)=k2_zfmisc_1(X1,k3_xboole_0(X2,k1_xboole_0))), inference(rw,[status(thm)],[c_0_46, c_0_54])).
% 1.72/1.93  cnf(c_0_92, negated_conjecture, (r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))|r1_tarski(k2_zfmisc_1(X1,esk2_0),k1_xboole_0)), inference(spm,[status(thm)],[c_0_90, c_0_45])).
% 1.72/1.93  cnf(c_0_93, plain, (k3_xboole_0(k2_zfmisc_1(X1,X2),k1_xboole_0)=k1_xboole_0), inference(rw,[status(thm)],[c_0_91, c_0_77])).
% 1.72/1.93  cnf(c_0_94, negated_conjecture, (k2_zfmisc_1(k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0)),esk2_0)=k2_zfmisc_1(esk1_0,esk2_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_75]), c_0_35])).
% 1.72/1.93  cnf(c_0_95, negated_conjecture, (k2_zfmisc_1(X1,esk2_0)=k1_xboole_0|r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_92]), c_0_93])).
% 1.72/1.93  cnf(c_0_96, negated_conjecture, (r1_tarski(esk1_0,k3_xboole_0(esk1_0,esk3_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_94, c_0_95]), c_0_60])).
% 1.72/1.93  cnf(c_0_97, negated_conjecture, (k3_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0))=esk1_0), inference(spm,[status(thm)],[c_0_41, c_0_96])).
% 1.72/1.93  fof(c_0_98, plain, ![X51, X52]:k3_tarski(k2_tarski(X51,X52))=k2_xboole_0(X51,X52), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 1.72/1.93  fof(c_0_99, plain, ![X24, X25]:k1_enumset1(X24,X24,X25)=k2_tarski(X24,X25), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 1.72/1.93  cnf(c_0_100, negated_conjecture, (k3_xboole_0(k2_zfmisc_1(esk1_0,X1),k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),X2))=k2_zfmisc_1(esk1_0,k3_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_26, c_0_97])).
% 1.72/1.93  fof(c_0_101, plain, ![X55, X56, X57]:(k2_zfmisc_1(k2_xboole_0(X55,X56),X57)=k2_xboole_0(k2_zfmisc_1(X55,X57),k2_zfmisc_1(X56,X57))&k2_zfmisc_1(X57,k2_xboole_0(X55,X56))=k2_xboole_0(k2_zfmisc_1(X57,X55),k2_zfmisc_1(X57,X56))), inference(variable_rename,[status(thm)],[t120_zfmisc_1])).
% 1.72/1.93  cnf(c_0_102, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_98])).
% 1.72/1.93  cnf(c_0_103, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_99])).
% 1.72/1.93  fof(c_0_104, plain, ![X26, X27, X28]:k2_enumset1(X26,X26,X27,X28)=k1_enumset1(X26,X27,X28), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 1.72/1.93  fof(c_0_105, plain, ![X29, X30, X31, X32]:k3_enumset1(X29,X29,X30,X31,X32)=k2_enumset1(X29,X30,X31,X32), inference(variable_rename,[status(thm)],[t72_enumset1])).
% 1.72/1.93  fof(c_0_106, plain, ![X33, X34, X35, X36, X37]:k4_enumset1(X33,X33,X34,X35,X36,X37)=k3_enumset1(X33,X34,X35,X36,X37), inference(variable_rename,[status(thm)],[t73_enumset1])).
% 1.72/1.93  fof(c_0_107, plain, ![X38, X39, X40, X41, X42, X43]:k5_enumset1(X38,X38,X39,X40,X41,X42,X43)=k4_enumset1(X38,X39,X40,X41,X42,X43), inference(variable_rename,[status(thm)],[t74_enumset1])).
% 1.72/1.93  fof(c_0_108, plain, ![X44, X45, X46, X47, X48, X49, X50]:k6_enumset1(X44,X44,X45,X46,X47,X48,X49,X50)=k5_enumset1(X44,X45,X46,X47,X48,X49,X50), inference(variable_rename,[status(thm)],[t75_enumset1])).
% 1.72/1.93  cnf(c_0_109, negated_conjecture, (k3_xboole_0(k2_zfmisc_1(esk1_0,X1),k3_xboole_0(k2_zfmisc_1(esk1_0,X2),k2_zfmisc_1(esk3_0,X3)))=k2_zfmisc_1(esk1_0,k3_xboole_0(X1,k3_xboole_0(X2,X3)))), inference(spm,[status(thm)],[c_0_100, c_0_26])).
% 1.72/1.93  cnf(c_0_110, plain, (k2_zfmisc_1(X1,k2_xboole_0(X2,X3))=k2_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3))), inference(split_conjunct,[status(thm)],[c_0_101])).
% 1.72/1.93  cnf(c_0_111, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_102, c_0_103])).
% 1.72/1.93  cnf(c_0_112, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_104])).
% 1.72/1.93  cnf(c_0_113, plain, (k3_enumset1(X1,X1,X2,X3,X4)=k2_enumset1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_105])).
% 1.72/1.93  cnf(c_0_114, plain, (k4_enumset1(X1,X1,X2,X3,X4,X5)=k3_enumset1(X1,X2,X3,X4,X5)), inference(split_conjunct,[status(thm)],[c_0_106])).
% 1.72/1.93  cnf(c_0_115, plain, (k5_enumset1(X1,X1,X2,X3,X4,X5,X6)=k4_enumset1(X1,X2,X3,X4,X5,X6)), inference(split_conjunct,[status(thm)],[c_0_107])).
% 1.72/1.93  cnf(c_0_116, plain, (k6_enumset1(X1,X1,X2,X3,X4,X5,X6,X7)=k5_enumset1(X1,X2,X3,X4,X5,X6,X7)), inference(split_conjunct,[status(thm)],[c_0_108])).
% 1.72/1.93  fof(c_0_117, plain, ![X22, X23]:k2_tarski(X22,X23)=k2_tarski(X23,X22), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 1.72/1.93  cnf(c_0_118, plain, (k3_xboole_0(k2_zfmisc_1(X1,k3_xboole_0(X2,X3)),k2_zfmisc_1(X4,X2))=k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X4,X3))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_56]), c_0_26])).
% 1.72/1.93  cnf(c_0_119, negated_conjecture, (k2_zfmisc_1(esk1_0,k3_xboole_0(X1,k3_xboole_0(esk2_0,esk4_0)))=k2_zfmisc_1(esk1_0,k3_xboole_0(X1,esk2_0))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_109, c_0_52]), c_0_44])).
% 1.72/1.93  cnf(c_0_120, plain, (k2_zfmisc_1(X1,k3_tarski(k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X3)))=k3_tarski(k6_enumset1(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_110, c_0_111]), c_0_111]), c_0_112]), c_0_112]), c_0_113]), c_0_113]), c_0_114]), c_0_114]), c_0_115]), c_0_115]), c_0_116]), c_0_116])).
% 1.72/1.93  cnf(c_0_121, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_117])).
% 1.72/1.93  fof(c_0_122, plain, ![X15, X16]:k2_xboole_0(X15,k3_xboole_0(X15,X16))=X15, inference(variable_rename,[status(thm)],[t22_xboole_1])).
% 1.72/1.93  cnf(c_0_123, plain, (k3_xboole_0(k3_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X3,X4)),k2_zfmisc_1(X5,k3_xboole_0(X2,X4)))=k3_xboole_0(k2_zfmisc_1(k3_xboole_0(X1,X3),X2),k2_zfmisc_1(X5,X4))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_26]), c_0_26])).
% 1.72/1.93  cnf(c_0_124, negated_conjecture, (k3_xboole_0(k2_zfmisc_1(esk1_0,X1),k2_zfmisc_1(X2,k3_xboole_0(esk2_0,esk4_0)))=k3_xboole_0(k2_zfmisc_1(esk1_0,X1),k2_zfmisc_1(X2,esk2_0))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_118, c_0_119]), c_0_118])).
% 1.72/1.93  cnf(c_0_125, plain, (k2_zfmisc_1(k2_xboole_0(X1,X2),X3)=k2_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_101])).
% 1.72/1.93  cnf(c_0_126, plain, (k3_tarski(k6_enumset1(k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k2_zfmisc_1(k3_xboole_0(X1,X2),X3),k3_xboole_0(k2_zfmisc_1(X1,X4),k2_zfmisc_1(X2,X5))))=k2_zfmisc_1(k3_xboole_0(X1,X2),k3_tarski(k6_enumset1(X3,X3,X3,X3,X3,X3,X3,k3_xboole_0(X4,X5))))), inference(spm,[status(thm)],[c_0_120, c_0_26])).
% 1.72/1.93  cnf(c_0_127, plain, (k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)=k6_enumset1(X2,X2,X2,X2,X2,X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_121, c_0_103]), c_0_103]), c_0_112]), c_0_112]), c_0_113]), c_0_113]), c_0_114]), c_0_114]), c_0_115]), c_0_115]), c_0_116]), c_0_116])).
% 1.72/1.93  cnf(c_0_128, plain, (k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_122])).
% 1.72/1.93  cnf(c_0_129, negated_conjecture, (k3_xboole_0(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(X1,esk4_0))=k2_zfmisc_1(k3_xboole_0(esk1_0,X1),esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_123, c_0_52]), c_0_124]), c_0_35])).
% 1.72/1.93  cnf(c_0_130, plain, (k2_zfmisc_1(k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,X2)),X3)=k3_tarski(k6_enumset1(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_125, c_0_111]), c_0_111]), c_0_112]), c_0_112]), c_0_113]), c_0_113]), c_0_114]), c_0_114]), c_0_115]), c_0_115]), c_0_116]), c_0_116])).
% 1.72/1.93  cnf(c_0_131, negated_conjecture, (k3_tarski(k6_enumset1(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),X1)))=k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_xboole_0(esk2_0,esk4_0))))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_126, c_0_52]), c_0_127])).
% 1.72/1.93  cnf(c_0_132, plain, (k3_tarski(k6_enumset1(X1,X1,X1,X1,X1,X1,X1,k3_xboole_0(X1,X2)))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_128, c_0_111]), c_0_112]), c_0_113]), c_0_114]), c_0_115]), c_0_116])).
% 1.72/1.93  cnf(c_0_133, negated_conjecture, (r1_tarski(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(X1,esk4_0))|k5_xboole_0(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(k3_xboole_0(esk1_0,X1),esk2_0))!=k1_xboole_0), inference(spm,[status(thm)],[c_0_47, c_0_129])).
% 1.72/1.93  cnf(c_0_134, negated_conjecture, (k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0)=k2_zfmisc_1(esk1_0,esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_130, c_0_131]), c_0_132]), c_0_132])).
% 1.72/1.93  cnf(c_0_135, negated_conjecture, (r1_tarski(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(esk1_0,esk4_0))|k5_xboole_0(k2_zfmisc_1(k3_xboole_0(esk1_0,esk3_0),esk2_0),k2_zfmisc_1(esk1_0,esk2_0))!=k1_xboole_0), inference(spm,[status(thm)],[c_0_133, c_0_27])).
% 1.72/1.93  cnf(c_0_136, negated_conjecture, (k2_zfmisc_1(k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0)),esk2_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_134]), c_0_57])).
% 1.72/1.93  cnf(c_0_137, negated_conjecture, (r1_tarski(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_135, c_0_134]), c_0_134]), c_0_57])])).
% 1.72/1.93  cnf(c_0_138, plain, (k5_xboole_0(k2_zfmisc_1(X1,X2),k2_zfmisc_1(X1,k3_xboole_0(X2,X3)))=k2_zfmisc_1(X1,k5_xboole_0(X2,k3_xboole_0(X2,X3)))), inference(rw,[status(thm)],[c_0_48, c_0_44])).
% 1.72/1.93  cnf(c_0_139, negated_conjecture, (k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk3_0))=k1_xboole_0|esk2_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_51, c_0_136])).
% 1.72/1.93  cnf(c_0_140, negated_conjecture, (k2_zfmisc_1(esk1_0,k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,esk4_0)))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_137]), c_0_44]), c_0_138])).
% 1.72/1.93  cnf(c_0_141, negated_conjecture, (~r1_tarski(esk1_0,esk3_0)|~r1_tarski(esk2_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 1.72/1.93  cnf(c_0_142, negated_conjecture, (esk2_0=k1_xboole_0|r1_tarski(esk1_0,esk3_0)), inference(spm,[status(thm)],[c_0_47, c_0_139])).
% 1.72/1.93  cnf(c_0_143, negated_conjecture, (k5_xboole_0(esk2_0,k3_xboole_0(esk2_0,esk4_0))=k1_xboole_0|esk1_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_51, c_0_140])).
% 1.72/1.93  cnf(c_0_144, negated_conjecture, (esk2_0=k1_xboole_0|~r1_tarski(esk2_0,esk4_0)), inference(spm,[status(thm)],[c_0_141, c_0_142])).
% 1.72/1.93  cnf(c_0_145, negated_conjecture, (esk1_0=k1_xboole_0|r1_tarski(esk2_0,esk4_0)), inference(spm,[status(thm)],[c_0_47, c_0_143])).
% 1.72/1.93  cnf(c_0_146, negated_conjecture, (esk1_0=k1_xboole_0|esk2_0=k1_xboole_0), inference(spm,[status(thm)],[c_0_144, c_0_145])).
% 1.72/1.93  cnf(c_0_147, negated_conjecture, (k2_zfmisc_1(k2_zfmisc_1(esk1_0,esk2_0),k2_zfmisc_1(esk1_0,esk2_0))!=k1_xboole_0), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_52]), c_0_60])).
% 1.72/1.93  cnf(c_0_148, negated_conjecture, (esk1_0=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_146]), c_0_45])])).
% 1.72/1.93  cnf(c_0_149, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_147, c_0_148]), c_0_36]), c_0_148]), c_0_36]), c_0_36])]), ['proof']).
% 1.72/1.93  # SZS output end CNFRefutation
% 1.72/1.93  # Proof object total steps             : 150
% 1.72/1.93  # Proof object clause steps            : 105
% 1.72/1.93  # Proof object formula steps           : 45
% 1.72/1.93  # Proof object conjectures             : 49
% 1.72/1.93  # Proof object clause conjectures      : 46
% 1.72/1.93  # Proof object formula conjectures     : 3
% 1.72/1.93  # Proof object initial clauses used    : 29
% 1.72/1.93  # Proof object initial formulas used   : 22
% 1.72/1.93  # Proof object generating inferences   : 57
% 1.72/1.93  # Proof object simplifying inferences  : 116
% 1.72/1.93  # Training examples: 0 positive, 0 negative
% 1.72/1.93  # Parsed axioms                        : 22
% 1.72/1.93  # Removed by relevancy pruning/SinE    : 0
% 1.72/1.93  # Initial clauses                      : 29
% 1.72/1.93  # Removed in clause preprocessing      : 8
% 1.72/1.93  # Initial clauses in saturation        : 21
% 1.72/1.93  # Processed clauses                    : 3360
% 1.72/1.93  # ...of these trivial                  : 120
% 1.72/1.93  # ...subsumed                          : 2019
% 1.72/1.93  # ...remaining for further processing  : 1221
% 1.72/1.93  # Other redundant clauses eliminated   : 8
% 1.72/1.93  # Clauses deleted for lack of memory   : 0
% 1.72/1.93  # Backward-subsumed                    : 76
% 1.72/1.93  # Backward-rewritten                   : 1008
% 1.72/1.93  # Generated clauses                    : 79487
% 1.72/1.93  # ...of the previous two non-trivial   : 59391
% 1.72/1.93  # Contextual simplify-reflections      : 1
% 1.72/1.93  # Paramodulations                      : 79479
% 1.72/1.93  # Factorizations                       : 0
% 1.72/1.93  # Equation resolutions                 : 8
% 1.72/1.93  # Propositional unsat checks           : 0
% 1.72/1.93  #    Propositional check models        : 0
% 1.72/1.93  #    Propositional check unsatisfiable : 0
% 1.72/1.93  #    Propositional clauses             : 0
% 1.72/1.93  #    Propositional clauses after purity: 0
% 1.72/1.93  #    Propositional unsat core size     : 0
% 1.72/1.93  #    Propositional preprocessing time  : 0.000
% 1.72/1.93  #    Propositional encoding time       : 0.000
% 1.72/1.93  #    Propositional solver time         : 0.000
% 1.72/1.93  #    Success case prop preproc time    : 0.000
% 1.72/1.93  #    Success case prop encoding time   : 0.000
% 1.72/1.93  #    Success case prop solver time     : 0.000
% 1.72/1.93  # Current number of processed clauses  : 114
% 1.72/1.93  #    Positive orientable unit clauses  : 78
% 1.72/1.93  #    Positive unorientable unit clauses: 1
% 1.72/1.93  #    Negative unit clauses             : 0
% 1.72/1.93  #    Non-unit-clauses                  : 35
% 1.72/1.93  # Current number of unprocessed clauses: 55530
% 1.72/1.93  # ...number of literals in the above   : 109330
% 1.72/1.93  # Current number of archived formulas  : 0
% 1.72/1.93  # Current number of archived clauses   : 1113
% 1.72/1.93  # Clause-clause subsumption calls (NU) : 66600
% 1.72/1.93  # Rec. Clause-clause subsumption calls : 63517
% 1.72/1.93  # Non-unit clause-clause subsumptions  : 1832
% 1.72/1.93  # Unit Clause-clause subsumption calls : 7772
% 1.72/1.93  # Rewrite failures with RHS unbound    : 0
% 1.72/1.93  # BW rewrite match attempts            : 22000
% 1.72/1.93  # BW rewrite match successes           : 94
% 1.72/1.93  # Condensation attempts                : 0
% 1.72/1.93  # Condensation successes               : 0
% 1.72/1.93  # Termbank termtop insertions          : 2514622
% 1.72/1.94  
% 1.72/1.94  # -------------------------------------------------
% 1.72/1.94  # User time                : 1.544 s
% 1.72/1.94  # System time              : 0.060 s
% 1.72/1.94  # Total time               : 1.603 s
% 1.72/1.94  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
