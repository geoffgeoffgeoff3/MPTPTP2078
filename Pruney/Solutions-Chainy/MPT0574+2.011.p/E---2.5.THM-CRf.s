%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:51:49 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :  101 (2141 expanded)
%              Number of clauses        :   70 ( 969 expanded)
%              Number of leaves         :   15 ( 580 expanded)
%              Depth                    :   22
%              Number of atoms          :  133 (2616 expanded)
%              Number of equality atoms :   65 (1814 expanded)
%              Maximal formula depth    :    7 (   2 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(l51_zfmisc_1,axiom,(
    ! [X1,X2] : k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',l51_zfmisc_1)).

fof(t70_enumset1,axiom,(
    ! [X1,X2] : k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_enumset1)).

fof(t41_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).

fof(t71_enumset1,axiom,(
    ! [X1,X2,X3] : k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_enumset1)).

fof(idempotence_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).

fof(t12_setfam_1,axiom,(
    ! [X1,X2] : k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_setfam_1)).

fof(t178_relat_1,conjecture,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(X1,X2)
       => r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t178_relat_1)).

fof(t83_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k4_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_xboole_1)).

fof(t7_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_xboole_1)).

fof(commutativity_k2_tarski,axiom,(
    ! [X1,X2] : k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_tarski)).

fof(t22_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t22_xboole_1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(t63_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_xboole_0(X2,X3) )
     => r1_xboole_0(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_xboole_1)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(t175_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => k10_relat_1(X3,k2_xboole_0(X1,X2)) = k2_xboole_0(k10_relat_1(X3,X1),k10_relat_1(X3,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t175_relat_1)).

fof(c_0_15,plain,(
    ! [X28,X29] : k3_tarski(k2_tarski(X28,X29)) = k2_xboole_0(X28,X29) ),
    inference(variable_rename,[status(thm)],[l51_zfmisc_1])).

fof(c_0_16,plain,(
    ! [X23,X24] : k1_enumset1(X23,X23,X24) = k2_tarski(X23,X24) ),
    inference(variable_rename,[status(thm)],[t70_enumset1])).

fof(c_0_17,plain,(
    ! [X9,X10,X11] : k4_xboole_0(k4_xboole_0(X9,X10),X11) = k4_xboole_0(X9,k2_xboole_0(X10,X11)) ),
    inference(variable_rename,[status(thm)],[t41_xboole_1])).

cnf(c_0_18,plain,
    ( k3_tarski(k2_tarski(X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( k1_enumset1(X1,X1,X2) = k2_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_20,plain,(
    ! [X25,X26,X27] : k2_enumset1(X25,X25,X26,X27) = k1_enumset1(X25,X26,X27) ),
    inference(variable_rename,[status(thm)],[t71_enumset1])).

fof(c_0_21,plain,(
    ! [X4] : k2_xboole_0(X4,X4) = X4 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).

cnf(c_0_22,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,plain,
    ( k3_tarski(k1_enumset1(X1,X1,X2)) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_24,plain,
    ( k2_enumset1(X1,X1,X2,X3) = k1_enumset1(X1,X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_25,plain,
    ( k2_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_26,plain,(
    ! [X30,X31] : k1_setfam_1(k2_tarski(X30,X31)) = k3_xboole_0(X30,X31) ),
    inference(variable_rename,[status(thm)],[t12_setfam_1])).

fof(c_0_27,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( v1_relat_1(X3)
       => ( r1_tarski(X1,X2)
         => r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2)) ) ) ),
    inference(assume_negation,[status(cth)],[t178_relat_1])).

fof(c_0_28,plain,(
    ! [X19,X20] :
      ( ( ~ r1_xboole_0(X19,X20)
        | k4_xboole_0(X19,X20) = X19 )
      & ( k4_xboole_0(X19,X20) != X19
        | r1_xboole_0(X19,X20) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).

cnf(c_0_29,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k3_tarski(k2_enumset1(X2,X2,X2,X3))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22,c_0_23]),c_0_24])).

cnf(c_0_30,plain,
    ( k3_tarski(k2_enumset1(X1,X1,X1,X1)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25,c_0_23]),c_0_24])).

fof(c_0_31,plain,(
    ! [X17,X18] : r1_tarski(X17,k2_xboole_0(X17,X18)) ),
    inference(variable_rename,[status(thm)],[t7_xboole_1])).

fof(c_0_32,plain,(
    ! [X21,X22] : k2_tarski(X21,X22) = k2_tarski(X22,X21) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).

fof(c_0_33,plain,(
    ! [X7,X8] : k2_xboole_0(X7,k3_xboole_0(X7,X8)) = X7 ),
    inference(variable_rename,[status(thm)],[t22_xboole_1])).

cnf(c_0_34,plain,
    ( k1_setfam_1(k2_tarski(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_35,plain,(
    ! [X12,X13] : k4_xboole_0(X12,k4_xboole_0(X12,X13)) = k3_xboole_0(X12,X13) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_36,plain,(
    ! [X14,X15,X16] :
      ( ~ r1_tarski(X14,X15)
      | ~ r1_xboole_0(X15,X16)
      | r1_xboole_0(X14,X16) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_xboole_1])])).

fof(c_0_37,negated_conjecture,
    ( v1_relat_1(esk3_0)
    & r1_tarski(esk1_0,esk2_0)
    & ~ r1_tarski(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_27])])])).

fof(c_0_38,plain,(
    ! [X5,X6] :
      ( ~ r1_xboole_0(X5,X6)
      | r1_xboole_0(X6,X5) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

cnf(c_0_39,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X1,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_40,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_41,plain,
    ( r1_tarski(X1,k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_42,plain,
    ( k2_tarski(X1,X2) = k2_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_43,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_44,plain,
    ( k1_setfam_1(k1_enumset1(X1,X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_34,c_0_19])).

cnf(c_0_45,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_46,plain,
    ( r1_xboole_0(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_xboole_0(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_47,negated_conjecture,
    ( r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_48,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_49,plain,
    ( r1_xboole_0(k4_xboole_0(X1,X2),X2) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_50,plain,
    ( r1_tarski(X1,k3_tarski(k2_enumset1(X1,X1,X1,X2))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_23]),c_0_24])).

cnf(c_0_51,plain,
    ( k2_enumset1(X1,X1,X1,X2) = k2_enumset1(X2,X2,X2,X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42,c_0_19]),c_0_19]),c_0_24]),c_0_24])).

cnf(c_0_52,plain,
    ( k3_tarski(k2_enumset1(X1,X1,X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X2)))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43,c_0_23]),c_0_44]),c_0_24]),c_0_24])).

cnf(c_0_53,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k1_setfam_1(k2_enumset1(X1,X1,X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45,c_0_44]),c_0_24])).

cnf(c_0_54,negated_conjecture,
    ( r1_xboole_0(esk1_0,X1)
    | ~ r1_xboole_0(esk2_0,X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_55,plain,
    ( r1_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_56,plain,
    ( r1_tarski(X1,k3_tarski(k2_enumset1(X2,X2,X2,X1))) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_57,plain,
    ( k3_tarski(k2_enumset1(X1,X1,X1,k4_xboole_0(X1,k4_xboole_0(X1,X2)))) = X1 ),
    inference(rw,[status(thm)],[c_0_52,c_0_53])).

cnf(c_0_58,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_59,negated_conjecture,
    ( r1_xboole_0(esk1_0,k4_xboole_0(X1,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_60,plain,
    ( r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X1) ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_61,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k4_xboole_0(X2,k4_xboole_0(X2,X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_51]),c_0_53])).

cnf(c_0_62,plain,
    ( r1_xboole_0(X1,X2)
    | ~ r1_xboole_0(k3_tarski(k2_enumset1(X1,X1,X1,X3)),X2) ),
    inference(spm,[status(thm)],[c_0_46,c_0_50])).

cnf(c_0_63,negated_conjecture,
    ( k4_xboole_0(esk1_0,k4_xboole_0(X1,esk2_0)) = esk1_0 ),
    inference(spm,[status(thm)],[c_0_58,c_0_59])).

cnf(c_0_64,plain,
    ( r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X2) ),
    inference(spm,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_65,plain,
    ( r1_xboole_0(X1,X2)
    | ~ r1_xboole_0(k3_tarski(k2_enumset1(X3,X3,X3,X1)),X2) ),
    inference(spm,[status(thm)],[c_0_62,c_0_51])).

cnf(c_0_66,negated_conjecture,
    ( k3_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,k4_xboole_0(esk1_0,esk1_0))) = esk1_0 ),
    inference(spm,[status(thm)],[c_0_57,c_0_63])).

cnf(c_0_67,negated_conjecture,
    ( r1_tarski(k4_xboole_0(esk1_0,esk1_0),k4_xboole_0(X1,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_64,c_0_63])).

cnf(c_0_68,plain,
    ( r1_xboole_0(X1,k4_xboole_0(k4_xboole_0(X2,X1),X3)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_55]),c_0_29])).

cnf(c_0_69,negated_conjecture,
    ( r1_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1)
    | ~ r1_xboole_0(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_65,c_0_66])).

cnf(c_0_70,negated_conjecture,
    ( r1_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1)
    | ~ r1_xboole_0(k4_xboole_0(X2,esk2_0),X1) ),
    inference(spm,[status(thm)],[c_0_46,c_0_67])).

cnf(c_0_71,plain,
    ( r1_xboole_0(k4_xboole_0(k4_xboole_0(X1,X2),X3),X2) ),
    inference(spm,[status(thm)],[c_0_48,c_0_68])).

cnf(c_0_72,negated_conjecture,
    ( r1_xboole_0(k4_xboole_0(esk1_0,esk1_0),k4_xboole_0(X1,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_69,c_0_59])).

cnf(c_0_73,negated_conjecture,
    ( r1_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1) ),
    inference(spm,[status(thm)],[c_0_70,c_0_71])).

cnf(c_0_74,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(esk1_0,esk1_0),k4_xboole_0(X1,esk2_0)) = k4_xboole_0(esk1_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_58,c_0_72])).

cnf(c_0_75,negated_conjecture,
    ( r1_xboole_0(X1,k4_xboole_0(esk1_0,esk1_0)) ),
    inference(spm,[status(thm)],[c_0_48,c_0_73])).

cnf(c_0_76,negated_conjecture,
    ( r1_xboole_0(k4_xboole_0(X1,esk2_0),esk1_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_59])).

cnf(c_0_77,negated_conjecture,
    ( k4_xboole_0(esk2_0,k4_xboole_0(esk2_0,k4_xboole_0(esk1_0,esk1_0))) = k4_xboole_0(esk1_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_74,c_0_61])).

cnf(c_0_78,negated_conjecture,
    ( k4_xboole_0(X1,k4_xboole_0(esk1_0,esk1_0)) = X1 ),
    inference(spm,[status(thm)],[c_0_58,c_0_75])).

cnf(c_0_79,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(X1,esk2_0),esk1_0) = k4_xboole_0(X1,esk2_0) ),
    inference(spm,[status(thm)],[c_0_58,c_0_76])).

cnf(c_0_80,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(k4_xboole_0(X1,X3),X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_51]),c_0_29])).

cnf(c_0_81,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1) = k4_xboole_0(esk1_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_58,c_0_73])).

cnf(c_0_82,negated_conjecture,
    ( k4_xboole_0(esk2_0,esk2_0) = k4_xboole_0(esk1_0,esk1_0) ),
    inference(rw,[status(thm)],[c_0_77,c_0_78])).

cnf(c_0_83,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(X1,esk1_0),esk2_0) = k4_xboole_0(X1,esk2_0) ),
    inference(rw,[status(thm)],[c_0_79,c_0_80])).

cnf(c_0_84,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(esk1_0,X1),esk1_0) = k4_xboole_0(esk1_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_80,c_0_81])).

cnf(c_0_85,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk2_0) = k4_xboole_0(esk1_0,esk1_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_82]),c_0_83])).

cnf(c_0_86,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk1_0) = k4_xboole_0(X1,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_81]),c_0_78])).

fof(c_0_87,plain,(
    ! [X32,X33,X34] :
      ( ~ v1_relat_1(X34)
      | k10_relat_1(X34,k2_xboole_0(X32,X33)) = k2_xboole_0(k10_relat_1(X34,X32),k10_relat_1(X34,X33)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t175_relat_1])])).

cnf(c_0_88,negated_conjecture,
    ( k4_xboole_0(k4_xboole_0(esk1_0,X1),esk2_0) = k4_xboole_0(esk1_0,esk1_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_84]),c_0_83]),c_0_85])).

cnf(c_0_89,negated_conjecture,
    ( k4_xboole_0(X1,k4_xboole_0(X2,X2)) = X1 ),
    inference(spm,[status(thm)],[c_0_78,c_0_86])).

cnf(c_0_90,plain,
    ( k10_relat_1(X1,k2_xboole_0(X2,X3)) = k2_xboole_0(k10_relat_1(X1,X2),k10_relat_1(X1,X3))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_87])).

cnf(c_0_91,negated_conjecture,
    ( k4_xboole_0(esk2_0,k4_xboole_0(esk2_0,k4_xboole_0(esk1_0,X1))) = k4_xboole_0(esk1_0,X1) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_88]),c_0_89])).

cnf(c_0_92,plain,
    ( k10_relat_1(X1,k3_tarski(k2_enumset1(X2,X2,X2,X3))) = k3_tarski(k2_enumset1(k10_relat_1(X1,X2),k10_relat_1(X1,X2),k10_relat_1(X1,X2),k10_relat_1(X1,X3)))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_90,c_0_23]),c_0_23]),c_0_24]),c_0_24])).

cnf(c_0_93,negated_conjecture,
    ( k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k4_xboole_0(esk1_0,X1))) = esk2_0 ),
    inference(spm,[status(thm)],[c_0_57,c_0_91])).

cnf(c_0_94,plain,
    ( k4_xboole_0(X1,k4_xboole_0(k4_xboole_0(X2,X1),X3)) = X1 ),
    inference(spm,[status(thm)],[c_0_58,c_0_68])).

cnf(c_0_95,plain,
    ( r1_tarski(k10_relat_1(X1,X2),k10_relat_1(X1,k3_tarski(k2_enumset1(X2,X2,X2,X3))))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_50,c_0_92])).

cnf(c_0_96,negated_conjecture,
    ( k3_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,esk2_0)) = esk2_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_93,c_0_94]),c_0_51])).

cnf(c_0_97,negated_conjecture,
    ( ~ r1_tarski(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_98,negated_conjecture,
    ( r1_tarski(k10_relat_1(X1,esk1_0),k10_relat_1(X1,esk2_0))
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_95,c_0_96])).

cnf(c_0_99,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_100,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_97,c_0_98]),c_0_99])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n022.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 12:41:41 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.42  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S081N
% 0.20/0.42  # and selection function SelectCQArNTNp.
% 0.20/0.42  #
% 0.20/0.42  # Preprocessing time       : 0.027 s
% 0.20/0.42  # Presaturation interreduction done
% 0.20/0.42  
% 0.20/0.42  # Proof found!
% 0.20/0.42  # SZS status Theorem
% 0.20/0.42  # SZS output start CNFRefutation
% 0.20/0.42  fof(l51_zfmisc_1, axiom, ![X1, X2]:k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', l51_zfmisc_1)).
% 0.20/0.42  fof(t70_enumset1, axiom, ![X1, X2]:k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_enumset1)).
% 0.20/0.42  fof(t41_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_xboole_1)).
% 0.20/0.42  fof(t71_enumset1, axiom, ![X1, X2, X3]:k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_enumset1)).
% 0.20/0.42  fof(idempotence_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', idempotence_k2_xboole_0)).
% 0.20/0.42  fof(t12_setfam_1, axiom, ![X1, X2]:k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_setfam_1)).
% 0.20/0.42  fof(t178_relat_1, conjecture, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t178_relat_1)).
% 0.20/0.42  fof(t83_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k4_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t83_xboole_1)).
% 0.20/0.42  fof(t7_xboole_1, axiom, ![X1, X2]:r1_tarski(X1,k2_xboole_0(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_xboole_1)).
% 0.20/0.42  fof(commutativity_k2_tarski, axiom, ![X1, X2]:k2_tarski(X1,X2)=k2_tarski(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_tarski)).
% 0.20/0.42  fof(t22_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t22_xboole_1)).
% 0.20/0.42  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.20/0.42  fof(t63_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_xboole_0(X2,X3))=>r1_xboole_0(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t63_xboole_1)).
% 0.20/0.42  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.20/0.42  fof(t175_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>k10_relat_1(X3,k2_xboole_0(X1,X2))=k2_xboole_0(k10_relat_1(X3,X1),k10_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t175_relat_1)).
% 0.20/0.42  fof(c_0_15, plain, ![X28, X29]:k3_tarski(k2_tarski(X28,X29))=k2_xboole_0(X28,X29), inference(variable_rename,[status(thm)],[l51_zfmisc_1])).
% 0.20/0.42  fof(c_0_16, plain, ![X23, X24]:k1_enumset1(X23,X23,X24)=k2_tarski(X23,X24), inference(variable_rename,[status(thm)],[t70_enumset1])).
% 0.20/0.42  fof(c_0_17, plain, ![X9, X10, X11]:k4_xboole_0(k4_xboole_0(X9,X10),X11)=k4_xboole_0(X9,k2_xboole_0(X10,X11)), inference(variable_rename,[status(thm)],[t41_xboole_1])).
% 0.20/0.42  cnf(c_0_18, plain, (k3_tarski(k2_tarski(X1,X2))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.42  cnf(c_0_19, plain, (k1_enumset1(X1,X1,X2)=k2_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.42  fof(c_0_20, plain, ![X25, X26, X27]:k2_enumset1(X25,X25,X26,X27)=k1_enumset1(X25,X26,X27), inference(variable_rename,[status(thm)],[t71_enumset1])).
% 0.20/0.42  fof(c_0_21, plain, ![X4]:k2_xboole_0(X4,X4)=X4, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).
% 0.20/0.42  cnf(c_0_22, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.42  cnf(c_0_23, plain, (k3_tarski(k1_enumset1(X1,X1,X2))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_18, c_0_19])).
% 0.20/0.42  cnf(c_0_24, plain, (k2_enumset1(X1,X1,X2,X3)=k1_enumset1(X1,X2,X3)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.42  cnf(c_0_25, plain, (k2_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.42  fof(c_0_26, plain, ![X30, X31]:k1_setfam_1(k2_tarski(X30,X31))=k3_xboole_0(X30,X31), inference(variable_rename,[status(thm)],[t12_setfam_1])).
% 0.20/0.42  fof(c_0_27, negated_conjecture, ~(![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2))))), inference(assume_negation,[status(cth)],[t178_relat_1])).
% 0.20/0.42  fof(c_0_28, plain, ![X19, X20]:((~r1_xboole_0(X19,X20)|k4_xboole_0(X19,X20)=X19)&(k4_xboole_0(X19,X20)!=X19|r1_xboole_0(X19,X20))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).
% 0.20/0.42  cnf(c_0_29, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k3_tarski(k2_enumset1(X2,X2,X2,X3)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_22, c_0_23]), c_0_24])).
% 0.20/0.42  cnf(c_0_30, plain, (k3_tarski(k2_enumset1(X1,X1,X1,X1))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_25, c_0_23]), c_0_24])).
% 0.20/0.42  fof(c_0_31, plain, ![X17, X18]:r1_tarski(X17,k2_xboole_0(X17,X18)), inference(variable_rename,[status(thm)],[t7_xboole_1])).
% 0.20/0.42  fof(c_0_32, plain, ![X21, X22]:k2_tarski(X21,X22)=k2_tarski(X22,X21), inference(variable_rename,[status(thm)],[commutativity_k2_tarski])).
% 0.20/0.42  fof(c_0_33, plain, ![X7, X8]:k2_xboole_0(X7,k3_xboole_0(X7,X8))=X7, inference(variable_rename,[status(thm)],[t22_xboole_1])).
% 0.20/0.42  cnf(c_0_34, plain, (k1_setfam_1(k2_tarski(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.42  fof(c_0_35, plain, ![X12, X13]:k4_xboole_0(X12,k4_xboole_0(X12,X13))=k3_xboole_0(X12,X13), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.20/0.42  fof(c_0_36, plain, ![X14, X15, X16]:(~r1_tarski(X14,X15)|~r1_xboole_0(X15,X16)|r1_xboole_0(X14,X16)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_xboole_1])])).
% 0.20/0.42  fof(c_0_37, negated_conjecture, (v1_relat_1(esk3_0)&(r1_tarski(esk1_0,esk2_0)&~r1_tarski(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_27])])])).
% 0.20/0.42  fof(c_0_38, plain, ![X5, X6]:(~r1_xboole_0(X5,X6)|r1_xboole_0(X6,X5)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.20/0.42  cnf(c_0_39, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X1,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.42  cnf(c_0_40, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2)), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.20/0.42  cnf(c_0_41, plain, (r1_tarski(X1,k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.20/0.42  cnf(c_0_42, plain, (k2_tarski(X1,X2)=k2_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.20/0.42  cnf(c_0_43, plain, (k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.20/0.42  cnf(c_0_44, plain, (k1_setfam_1(k1_enumset1(X1,X1,X2))=k3_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_34, c_0_19])).
% 0.20/0.42  cnf(c_0_45, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.20/0.42  cnf(c_0_46, plain, (r1_xboole_0(X1,X3)|~r1_tarski(X1,X2)|~r1_xboole_0(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.20/0.42  cnf(c_0_47, negated_conjecture, (r1_tarski(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.20/0.42  cnf(c_0_48, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.20/0.42  cnf(c_0_49, plain, (r1_xboole_0(k4_xboole_0(X1,X2),X2)), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.20/0.42  cnf(c_0_50, plain, (r1_tarski(X1,k3_tarski(k2_enumset1(X1,X1,X1,X2)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_23]), c_0_24])).
% 0.20/0.42  cnf(c_0_51, plain, (k2_enumset1(X1,X1,X1,X2)=k2_enumset1(X2,X2,X2,X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_42, c_0_19]), c_0_19]), c_0_24]), c_0_24])).
% 0.20/0.42  cnf(c_0_52, plain, (k3_tarski(k2_enumset1(X1,X1,X1,k1_setfam_1(k2_enumset1(X1,X1,X1,X2))))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_43, c_0_23]), c_0_44]), c_0_24]), c_0_24])).
% 0.20/0.42  cnf(c_0_53, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k1_setfam_1(k2_enumset1(X1,X1,X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_45, c_0_44]), c_0_24])).
% 0.20/0.42  cnf(c_0_54, negated_conjecture, (r1_xboole_0(esk1_0,X1)|~r1_xboole_0(esk2_0,X1)), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.20/0.42  cnf(c_0_55, plain, (r1_xboole_0(X1,k4_xboole_0(X2,X1))), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.20/0.42  cnf(c_0_56, plain, (r1_tarski(X1,k3_tarski(k2_enumset1(X2,X2,X2,X1)))), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.20/0.42  cnf(c_0_57, plain, (k3_tarski(k2_enumset1(X1,X1,X1,k4_xboole_0(X1,k4_xboole_0(X1,X2))))=X1), inference(rw,[status(thm)],[c_0_52, c_0_53])).
% 0.20/0.42  cnf(c_0_58, plain, (k4_xboole_0(X1,X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.20/0.42  cnf(c_0_59, negated_conjecture, (r1_xboole_0(esk1_0,k4_xboole_0(X1,esk2_0))), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 0.20/0.42  cnf(c_0_60, plain, (r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X1)), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.20/0.42  cnf(c_0_61, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k4_xboole_0(X2,k4_xboole_0(X2,X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_51]), c_0_53])).
% 0.20/0.42  cnf(c_0_62, plain, (r1_xboole_0(X1,X2)|~r1_xboole_0(k3_tarski(k2_enumset1(X1,X1,X1,X3)),X2)), inference(spm,[status(thm)],[c_0_46, c_0_50])).
% 0.20/0.42  cnf(c_0_63, negated_conjecture, (k4_xboole_0(esk1_0,k4_xboole_0(X1,esk2_0))=esk1_0), inference(spm,[status(thm)],[c_0_58, c_0_59])).
% 0.20/0.42  cnf(c_0_64, plain, (r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X2)), inference(spm,[status(thm)],[c_0_60, c_0_61])).
% 0.20/0.42  cnf(c_0_65, plain, (r1_xboole_0(X1,X2)|~r1_xboole_0(k3_tarski(k2_enumset1(X3,X3,X3,X1)),X2)), inference(spm,[status(thm)],[c_0_62, c_0_51])).
% 0.20/0.42  cnf(c_0_66, negated_conjecture, (k3_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,k4_xboole_0(esk1_0,esk1_0)))=esk1_0), inference(spm,[status(thm)],[c_0_57, c_0_63])).
% 0.20/0.42  cnf(c_0_67, negated_conjecture, (r1_tarski(k4_xboole_0(esk1_0,esk1_0),k4_xboole_0(X1,esk2_0))), inference(spm,[status(thm)],[c_0_64, c_0_63])).
% 0.20/0.42  cnf(c_0_68, plain, (r1_xboole_0(X1,k4_xboole_0(k4_xboole_0(X2,X1),X3))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_55]), c_0_29])).
% 0.20/0.42  cnf(c_0_69, negated_conjecture, (r1_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1)|~r1_xboole_0(esk1_0,X1)), inference(spm,[status(thm)],[c_0_65, c_0_66])).
% 0.20/0.42  cnf(c_0_70, negated_conjecture, (r1_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1)|~r1_xboole_0(k4_xboole_0(X2,esk2_0),X1)), inference(spm,[status(thm)],[c_0_46, c_0_67])).
% 0.20/0.42  cnf(c_0_71, plain, (r1_xboole_0(k4_xboole_0(k4_xboole_0(X1,X2),X3),X2)), inference(spm,[status(thm)],[c_0_48, c_0_68])).
% 0.20/0.42  cnf(c_0_72, negated_conjecture, (r1_xboole_0(k4_xboole_0(esk1_0,esk1_0),k4_xboole_0(X1,esk2_0))), inference(spm,[status(thm)],[c_0_69, c_0_59])).
% 0.20/0.42  cnf(c_0_73, negated_conjecture, (r1_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1)), inference(spm,[status(thm)],[c_0_70, c_0_71])).
% 0.20/0.42  cnf(c_0_74, negated_conjecture, (k4_xboole_0(k4_xboole_0(esk1_0,esk1_0),k4_xboole_0(X1,esk2_0))=k4_xboole_0(esk1_0,esk1_0)), inference(spm,[status(thm)],[c_0_58, c_0_72])).
% 0.20/0.42  cnf(c_0_75, negated_conjecture, (r1_xboole_0(X1,k4_xboole_0(esk1_0,esk1_0))), inference(spm,[status(thm)],[c_0_48, c_0_73])).
% 0.20/0.42  cnf(c_0_76, negated_conjecture, (r1_xboole_0(k4_xboole_0(X1,esk2_0),esk1_0)), inference(spm,[status(thm)],[c_0_48, c_0_59])).
% 0.20/0.42  cnf(c_0_77, negated_conjecture, (k4_xboole_0(esk2_0,k4_xboole_0(esk2_0,k4_xboole_0(esk1_0,esk1_0)))=k4_xboole_0(esk1_0,esk1_0)), inference(spm,[status(thm)],[c_0_74, c_0_61])).
% 0.20/0.42  cnf(c_0_78, negated_conjecture, (k4_xboole_0(X1,k4_xboole_0(esk1_0,esk1_0))=X1), inference(spm,[status(thm)],[c_0_58, c_0_75])).
% 0.20/0.42  cnf(c_0_79, negated_conjecture, (k4_xboole_0(k4_xboole_0(X1,esk2_0),esk1_0)=k4_xboole_0(X1,esk2_0)), inference(spm,[status(thm)],[c_0_58, c_0_76])).
% 0.20/0.42  cnf(c_0_80, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(k4_xboole_0(X1,X3),X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_51]), c_0_29])).
% 0.20/0.42  cnf(c_0_81, negated_conjecture, (k4_xboole_0(k4_xboole_0(esk1_0,esk1_0),X1)=k4_xboole_0(esk1_0,esk1_0)), inference(spm,[status(thm)],[c_0_58, c_0_73])).
% 0.20/0.42  cnf(c_0_82, negated_conjecture, (k4_xboole_0(esk2_0,esk2_0)=k4_xboole_0(esk1_0,esk1_0)), inference(rw,[status(thm)],[c_0_77, c_0_78])).
% 0.20/0.42  cnf(c_0_83, negated_conjecture, (k4_xboole_0(k4_xboole_0(X1,esk1_0),esk2_0)=k4_xboole_0(X1,esk2_0)), inference(rw,[status(thm)],[c_0_79, c_0_80])).
% 0.20/0.42  cnf(c_0_84, negated_conjecture, (k4_xboole_0(k4_xboole_0(esk1_0,X1),esk1_0)=k4_xboole_0(esk1_0,esk1_0)), inference(spm,[status(thm)],[c_0_80, c_0_81])).
% 0.20/0.42  cnf(c_0_85, negated_conjecture, (k4_xboole_0(esk1_0,esk2_0)=k4_xboole_0(esk1_0,esk1_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_82]), c_0_83])).
% 0.20/0.42  cnf(c_0_86, negated_conjecture, (k4_xboole_0(esk1_0,esk1_0)=k4_xboole_0(X1,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_81]), c_0_78])).
% 0.20/0.42  fof(c_0_87, plain, ![X32, X33, X34]:(~v1_relat_1(X34)|k10_relat_1(X34,k2_xboole_0(X32,X33))=k2_xboole_0(k10_relat_1(X34,X32),k10_relat_1(X34,X33))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t175_relat_1])])).
% 0.20/0.42  cnf(c_0_88, negated_conjecture, (k4_xboole_0(k4_xboole_0(esk1_0,X1),esk2_0)=k4_xboole_0(esk1_0,esk1_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_84]), c_0_83]), c_0_85])).
% 0.20/0.42  cnf(c_0_89, negated_conjecture, (k4_xboole_0(X1,k4_xboole_0(X2,X2))=X1), inference(spm,[status(thm)],[c_0_78, c_0_86])).
% 0.20/0.42  cnf(c_0_90, plain, (k10_relat_1(X1,k2_xboole_0(X2,X3))=k2_xboole_0(k10_relat_1(X1,X2),k10_relat_1(X1,X3))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_87])).
% 0.20/0.42  cnf(c_0_91, negated_conjecture, (k4_xboole_0(esk2_0,k4_xboole_0(esk2_0,k4_xboole_0(esk1_0,X1)))=k4_xboole_0(esk1_0,X1)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_88]), c_0_89])).
% 0.20/0.42  cnf(c_0_92, plain, (k10_relat_1(X1,k3_tarski(k2_enumset1(X2,X2,X2,X3)))=k3_tarski(k2_enumset1(k10_relat_1(X1,X2),k10_relat_1(X1,X2),k10_relat_1(X1,X2),k10_relat_1(X1,X3)))|~v1_relat_1(X1)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_90, c_0_23]), c_0_23]), c_0_24]), c_0_24])).
% 0.20/0.42  cnf(c_0_93, negated_conjecture, (k3_tarski(k2_enumset1(esk2_0,esk2_0,esk2_0,k4_xboole_0(esk1_0,X1)))=esk2_0), inference(spm,[status(thm)],[c_0_57, c_0_91])).
% 0.20/0.42  cnf(c_0_94, plain, (k4_xboole_0(X1,k4_xboole_0(k4_xboole_0(X2,X1),X3))=X1), inference(spm,[status(thm)],[c_0_58, c_0_68])).
% 0.20/0.42  cnf(c_0_95, plain, (r1_tarski(k10_relat_1(X1,X2),k10_relat_1(X1,k3_tarski(k2_enumset1(X2,X2,X2,X3))))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_50, c_0_92])).
% 0.20/0.42  cnf(c_0_96, negated_conjecture, (k3_tarski(k2_enumset1(esk1_0,esk1_0,esk1_0,esk2_0))=esk2_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_93, c_0_94]), c_0_51])).
% 0.20/0.42  cnf(c_0_97, negated_conjecture, (~r1_tarski(k10_relat_1(esk3_0,esk1_0),k10_relat_1(esk3_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.20/0.42  cnf(c_0_98, negated_conjecture, (r1_tarski(k10_relat_1(X1,esk1_0),k10_relat_1(X1,esk2_0))|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_95, c_0_96])).
% 0.20/0.42  cnf(c_0_99, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.20/0.42  cnf(c_0_100, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_97, c_0_98]), c_0_99])]), ['proof']).
% 0.20/0.42  # SZS output end CNFRefutation
% 0.20/0.42  # Proof object total steps             : 101
% 0.20/0.42  # Proof object clause steps            : 70
% 0.20/0.42  # Proof object formula steps           : 31
% 0.20/0.42  # Proof object conjectures             : 34
% 0.20/0.42  # Proof object clause conjectures      : 31
% 0.20/0.42  # Proof object formula conjectures     : 3
% 0.20/0.42  # Proof object initial clauses used    : 18
% 0.20/0.42  # Proof object initial formulas used   : 15
% 0.20/0.42  # Proof object generating inferences   : 40
% 0.20/0.42  # Proof object simplifying inferences  : 36
% 0.20/0.42  # Training examples: 0 positive, 0 negative
% 0.20/0.42  # Parsed axioms                        : 15
% 0.20/0.42  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.42  # Initial clauses                      : 18
% 0.20/0.42  # Removed in clause preprocessing      : 4
% 0.20/0.42  # Initial clauses in saturation        : 14
% 0.20/0.42  # Processed clauses                    : 379
% 0.20/0.42  # ...of these trivial                  : 49
% 0.20/0.42  # ...subsumed                          : 155
% 0.20/0.42  # ...remaining for further processing  : 175
% 0.20/0.42  # Other redundant clauses eliminated   : 40
% 0.20/0.42  # Clauses deleted for lack of memory   : 0
% 0.20/0.42  # Backward-subsumed                    : 21
% 0.20/0.42  # Backward-rewritten                   : 36
% 0.20/0.42  # Generated clauses                    : 3154
% 0.20/0.42  # ...of the previous two non-trivial   : 1672
% 0.20/0.42  # Contextual simplify-reflections      : 0
% 0.20/0.42  # Paramodulations                      : 3110
% 0.20/0.42  # Factorizations                       : 0
% 0.20/0.42  # Equation resolutions                 : 44
% 0.20/0.42  # Propositional unsat checks           : 0
% 0.20/0.42  #    Propositional check models        : 0
% 0.20/0.42  #    Propositional check unsatisfiable : 0
% 0.20/0.42  #    Propositional clauses             : 0
% 0.20/0.42  #    Propositional clauses after purity: 0
% 0.20/0.42  #    Propositional unsat core size     : 0
% 0.20/0.42  #    Propositional preprocessing time  : 0.000
% 0.20/0.42  #    Propositional encoding time       : 0.000
% 0.20/0.42  #    Propositional solver time         : 0.000
% 0.20/0.42  #    Success case prop preproc time    : 0.000
% 0.20/0.42  #    Success case prop encoding time   : 0.000
% 0.20/0.42  #    Success case prop solver time     : 0.000
% 0.20/0.42  # Current number of processed clauses  : 104
% 0.20/0.42  #    Positive orientable unit clauses  : 55
% 0.20/0.42  #    Positive unorientable unit clauses: 4
% 0.20/0.42  #    Negative unit clauses             : 1
% 0.20/0.42  #    Non-unit-clauses                  : 44
% 0.20/0.42  # Current number of unprocessed clauses: 1239
% 0.20/0.42  # ...number of literals in the above   : 1908
% 0.20/0.42  # Current number of archived formulas  : 0
% 0.20/0.42  # Current number of archived clauses   : 75
% 0.20/0.42  # Clause-clause subsumption calls (NU) : 988
% 0.20/0.42  # Rec. Clause-clause subsumption calls : 874
% 0.20/0.42  # Non-unit clause-clause subsumptions  : 144
% 0.20/0.42  # Unit Clause-clause subsumption calls : 88
% 0.20/0.42  # Rewrite failures with RHS unbound    : 109
% 0.20/0.42  # BW rewrite match attempts            : 305
% 0.20/0.42  # BW rewrite match successes           : 70
% 0.20/0.42  # Condensation attempts                : 0
% 0.20/0.42  # Condensation successes               : 0
% 0.20/0.42  # Termbank termtop insertions          : 28818
% 0.20/0.42  
% 0.20/0.42  # -------------------------------------------------
% 0.20/0.42  # User time                : 0.065 s
% 0.20/0.42  # System time              : 0.006 s
% 0.20/0.42  # Total time               : 0.071 s
% 0.20/0.42  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
