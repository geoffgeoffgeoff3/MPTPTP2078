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
% DateTime   : Thu Dec  3 10:32:15 EST 2020

% Result     : Theorem 0.22s
% Output     : CNFRefutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   71 ( 233 expanded)
%              Number of clauses        :   42 ( 106 expanded)
%              Number of leaves         :   14 (  63 expanded)
%              Depth                    :   14
%              Number of atoms          :   80 ( 254 expanded)
%              Number of equality atoms :   53 ( 203 expanded)
%              Maximal formula depth    :    6 (   2 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_boole)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t39_xboole_1)).

fof(t41_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t41_xboole_1)).

fof(t40_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t40_xboole_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t36_xboole_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(t44_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(k4_xboole_0(X1,X2),X3)
     => r1_tarski(X1,k2_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t44_xboole_1)).

fof(t17_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k3_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t17_xboole_1)).

fof(t16_xboole_1,axiom,(
    ! [X1,X2,X3] : k3_xboole_0(k3_xboole_0(X1,X2),X3) = k3_xboole_0(X1,k3_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t16_xboole_1)).

fof(t28_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k3_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_xboole_1)).

fof(commutativity_k3_xboole_0,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k3_xboole_0)).

fof(t22_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t22_xboole_1)).

fof(t47_xboole_1,conjecture,(
    ! [X1,X2] : k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t47_xboole_1)).

fof(c_0_14,plain,(
    ! [X15] : k2_xboole_0(X15,k1_xboole_0) = X15 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

fof(c_0_15,plain,(
    ! [X4,X5] : k2_xboole_0(X4,X5) = k2_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

fof(c_0_16,plain,(
    ! [X22,X23] : k2_xboole_0(X22,k4_xboole_0(X23,X22)) = k2_xboole_0(X22,X23) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

fof(c_0_17,plain,(
    ! [X26,X27,X28] : k4_xboole_0(k4_xboole_0(X26,X27),X28) = k4_xboole_0(X26,k2_xboole_0(X27,X28)) ),
    inference(variable_rename,[status(thm)],[t41_xboole_1])).

fof(c_0_18,plain,(
    ! [X24,X25] : k4_xboole_0(k2_xboole_0(X24,X25),X25) = k4_xboole_0(X24,X25) ),
    inference(variable_rename,[status(thm)],[t40_xboole_1])).

cnf(c_0_19,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_22,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

fof(c_0_24,plain,(
    ! [X20,X21] : r1_tarski(k4_xboole_0(X20,X21),X20) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

cnf(c_0_25,plain,
    ( k2_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_26,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1))) = k2_xboole_0(X1,k4_xboole_0(X2,X3)) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_27,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X1) = k4_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_23,c_0_20])).

fof(c_0_28,plain,(
    ! [X8,X9] :
      ( ~ r1_tarski(X8,X9)
      | k2_xboole_0(X8,X9) = X9 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

fof(c_0_29,plain,(
    ! [X29,X30,X31] :
      ( ~ r1_tarski(k4_xboole_0(X29,X30),X31)
      | r1_tarski(X29,k2_xboole_0(X30,X31)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).

cnf(c_0_30,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_31,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_25]),c_0_25])).

cnf(c_0_32,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X1,X3))) = k2_xboole_0(X1,k4_xboole_0(X2,X3)) ),
    inference(spm,[status(thm)],[c_0_26,c_0_20])).

cnf(c_0_33,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X1,X3)) = k4_xboole_0(X2,k2_xboole_0(X1,X3)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_27]),c_0_22])).

cnf(c_0_34,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X2,X1)) = k4_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_21])).

cnf(c_0_35,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_36,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,X3))
    | ~ r1_tarski(k4_xboole_0(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_37,plain,
    ( r1_tarski(X1,X1) ),
    inference(spm,[status(thm)],[c_0_30,c_0_31])).

cnf(c_0_38,plain,
    ( k2_xboole_0(X1,k4_xboole_0(k2_xboole_0(X1,X2),X3)) = k2_xboole_0(X1,k4_xboole_0(X2,X3)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_32])).

cnf(c_0_39,plain,
    ( k4_xboole_0(k2_xboole_0(X1,k4_xboole_0(X2,X3)),k4_xboole_0(X2,k2_xboole_0(X3,X1))) = k4_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1))) ),
    inference(spm,[status(thm)],[c_0_34,c_0_22])).

cnf(c_0_40,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X1,X2)) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_30]),c_0_20])).

fof(c_0_41,plain,(
    ! [X13,X14] : r1_tarski(k3_xboole_0(X13,X14),X13) ),
    inference(variable_rename,[status(thm)],[t17_xboole_1])).

fof(c_0_42,plain,(
    ! [X10,X11,X12] : k3_xboole_0(k3_xboole_0(X10,X11),X12) = k3_xboole_0(X10,k3_xboole_0(X11,X12)) ),
    inference(variable_rename,[status(thm)],[t16_xboole_1])).

fof(c_0_43,plain,(
    ! [X18,X19] :
      ( ~ r1_tarski(X18,X19)
      | k3_xboole_0(X18,X19) = X18 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).

fof(c_0_44,plain,(
    ! [X6,X7] : k3_xboole_0(X6,X7) = k3_xboole_0(X7,X6) ),
    inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).

cnf(c_0_45,plain,
    ( r1_tarski(X1,k2_xboole_0(X2,X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_21])).

cnf(c_0_46,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,k4_xboole_0(X2,X1)))) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_40]),c_0_22]),c_0_32])).

cnf(c_0_47,plain,
    ( r1_tarski(k3_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_48,plain,
    ( k3_xboole_0(k3_xboole_0(X1,X2),X3) = k3_xboole_0(X1,k3_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_49,plain,
    ( k3_xboole_0(X1,X2) = X1
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_50,plain,
    ( k3_xboole_0(X1,X2) = k3_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_44])).

cnf(c_0_51,plain,
    ( r1_tarski(k4_xboole_0(X1,k2_xboole_0(X2,k4_xboole_0(X1,X3))),X3) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

fof(c_0_52,plain,(
    ! [X16,X17] : k2_xboole_0(X16,k3_xboole_0(X16,X17)) = X16 ),
    inference(variable_rename,[status(thm)],[t22_xboole_1])).

cnf(c_0_53,plain,
    ( r1_tarski(k3_xboole_0(X1,k3_xboole_0(X2,X3)),k3_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_54,plain,
    ( k3_xboole_0(X1,k4_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_30]),c_0_50])).

cnf(c_0_55,plain,
    ( r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X2) ),
    inference(spm,[status(thm)],[c_0_51,c_0_25])).

cnf(c_0_56,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_57,plain,
    ( r1_tarski(k3_xboole_0(X1,k4_xboole_0(X2,X3)),k3_xboole_0(X1,X2)) ),
    inference(spm,[status(thm)],[c_0_53,c_0_54])).

cnf(c_0_58,plain,
    ( k3_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1))) = k4_xboole_0(X2,k4_xboole_0(X2,X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_55]),c_0_50])).

cnf(c_0_59,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X2,X1)) = X1 ),
    inference(spm,[status(thm)],[c_0_56,c_0_50])).

fof(c_0_60,negated_conjecture,(
    ~ ! [X1,X2] : k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    inference(assume_negation,[status(cth)],[t47_xboole_1])).

cnf(c_0_61,plain,
    ( r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),k3_xboole_0(X2,X1)) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_62,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,k3_xboole_0(X3,X1))) = k2_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_59]),c_0_21])).

fof(c_0_63,negated_conjecture,(
    k4_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk2_0)) != k4_xboole_0(esk1_0,esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_60])])])).

cnf(c_0_64,plain,
    ( r1_tarski(X1,k2_xboole_0(k3_xboole_0(X2,X1),k4_xboole_0(X1,X2))) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_61]),c_0_20])).

cnf(c_0_65,plain,
    ( k2_xboole_0(X1,k2_xboole_0(k3_xboole_0(X2,X1),X3)) = k2_xboole_0(X1,X3) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_27]),c_0_62])).

cnf(c_0_66,negated_conjecture,
    ( k4_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk2_0)) != k4_xboole_0(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

cnf(c_0_67,plain,
    ( k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X2,X1)) = X2 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_64]),c_0_65]),c_0_40])).

cnf(c_0_68,negated_conjecture,
    ( k4_xboole_0(esk1_0,k3_xboole_0(esk2_0,esk1_0)) != k4_xboole_0(esk1_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_66,c_0_50])).

cnf(c_0_69,plain,
    ( k4_xboole_0(X1,k3_xboole_0(X2,X1)) = k4_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_67]),c_0_22]),c_0_56])).

cnf(c_0_70,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_68,c_0_69])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.14  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.15  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.16/0.36  % Computer   : n007.cluster.edu
% 0.16/0.36  % Model      : x86_64 x86_64
% 0.16/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.16/0.36  % Memory     : 8042.1875MB
% 0.16/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.16/0.36  % CPULimit   : 60
% 0.16/0.36  % WCLimit    : 600
% 0.16/0.36  % DateTime   : Tue Dec  1 20:09:36 EST 2020
% 0.16/0.36  % CPUTime    : 
% 0.16/0.36  # Version: 2.5pre002
% 0.16/0.36  # No SInE strategy applied
% 0.16/0.36  # Trying AutoSched0 for 299 seconds
% 0.22/0.60  # AutoSched0-Mode selected heuristic G_____Y1346__C12_02_nc_F1_AE_CS_SP_S2S
% 0.22/0.60  # and selection function SelectNewComplexAHP.
% 0.22/0.60  #
% 0.22/0.60  # Preprocessing time       : 0.027 s
% 0.22/0.60  # Presaturation interreduction done
% 0.22/0.60  
% 0.22/0.60  # Proof found!
% 0.22/0.60  # SZS status Theorem
% 0.22/0.60  # SZS output start CNFRefutation
% 0.22/0.60  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_boole)).
% 0.22/0.60  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.22/0.60  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.22/0.60  fof(t41_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t41_xboole_1)).
% 0.22/0.60  fof(t40_xboole_1, axiom, ![X1, X2]:k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t40_xboole_1)).
% 0.22/0.60  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.22/0.60  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.22/0.60  fof(t44_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(k4_xboole_0(X1,X2),X3)=>r1_tarski(X1,k2_xboole_0(X2,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t44_xboole_1)).
% 0.22/0.60  fof(t17_xboole_1, axiom, ![X1, X2]:r1_tarski(k3_xboole_0(X1,X2),X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t17_xboole_1)).
% 0.22/0.60  fof(t16_xboole_1, axiom, ![X1, X2, X3]:k3_xboole_0(k3_xboole_0(X1,X2),X3)=k3_xboole_0(X1,k3_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t16_xboole_1)).
% 0.22/0.60  fof(t28_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k3_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_xboole_1)).
% 0.22/0.60  fof(commutativity_k3_xboole_0, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k3_xboole_0)).
% 0.22/0.60  fof(t22_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t22_xboole_1)).
% 0.22/0.60  fof(t47_xboole_1, conjecture, ![X1, X2]:k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t47_xboole_1)).
% 0.22/0.60  fof(c_0_14, plain, ![X15]:k2_xboole_0(X15,k1_xboole_0)=X15, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.22/0.60  fof(c_0_15, plain, ![X4, X5]:k2_xboole_0(X4,X5)=k2_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.22/0.60  fof(c_0_16, plain, ![X22, X23]:k2_xboole_0(X22,k4_xboole_0(X23,X22))=k2_xboole_0(X22,X23), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.22/0.60  fof(c_0_17, plain, ![X26, X27, X28]:k4_xboole_0(k4_xboole_0(X26,X27),X28)=k4_xboole_0(X26,k2_xboole_0(X27,X28)), inference(variable_rename,[status(thm)],[t41_xboole_1])).
% 0.22/0.60  fof(c_0_18, plain, ![X24, X25]:k4_xboole_0(k2_xboole_0(X24,X25),X25)=k4_xboole_0(X24,X25), inference(variable_rename,[status(thm)],[t40_xboole_1])).
% 0.22/0.60  cnf(c_0_19, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.22/0.60  cnf(c_0_20, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.22/0.60  cnf(c_0_21, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.22/0.60  cnf(c_0_22, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.22/0.60  cnf(c_0_23, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.22/0.60  fof(c_0_24, plain, ![X20, X21]:r1_tarski(k4_xboole_0(X20,X21),X20), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.22/0.60  cnf(c_0_25, plain, (k2_xboole_0(k1_xboole_0,X1)=X1), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.22/0.60  cnf(c_0_26, plain, (k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1)))=k2_xboole_0(X1,k4_xboole_0(X2,X3))), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.22/0.60  cnf(c_0_27, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X1)=k4_xboole_0(X2,X1)), inference(spm,[status(thm)],[c_0_23, c_0_20])).
% 0.22/0.60  fof(c_0_28, plain, ![X8, X9]:(~r1_tarski(X8,X9)|k2_xboole_0(X8,X9)=X9), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.22/0.60  fof(c_0_29, plain, ![X29, X30, X31]:(~r1_tarski(k4_xboole_0(X29,X30),X31)|r1_tarski(X29,k2_xboole_0(X30,X31))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t44_xboole_1])])).
% 0.22/0.60  cnf(c_0_30, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.22/0.60  cnf(c_0_31, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_25]), c_0_25])).
% 0.22/0.60  cnf(c_0_32, plain, (k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X1,X3)))=k2_xboole_0(X1,k4_xboole_0(X2,X3))), inference(spm,[status(thm)],[c_0_26, c_0_20])).
% 0.22/0.60  cnf(c_0_33, plain, (k4_xboole_0(k2_xboole_0(X1,X2),k2_xboole_0(X1,X3))=k4_xboole_0(X2,k2_xboole_0(X1,X3))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_27]), c_0_22])).
% 0.22/0.60  cnf(c_0_34, plain, (k4_xboole_0(k2_xboole_0(X1,X2),k4_xboole_0(X2,X1))=k4_xboole_0(X1,k4_xboole_0(X2,X1))), inference(spm,[status(thm)],[c_0_23, c_0_21])).
% 0.22/0.60  cnf(c_0_35, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.22/0.60  cnf(c_0_36, plain, (r1_tarski(X1,k2_xboole_0(X2,X3))|~r1_tarski(k4_xboole_0(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.22/0.60  cnf(c_0_37, plain, (r1_tarski(X1,X1)), inference(spm,[status(thm)],[c_0_30, c_0_31])).
% 0.22/0.60  cnf(c_0_38, plain, (k2_xboole_0(X1,k4_xboole_0(k2_xboole_0(X1,X2),X3))=k2_xboole_0(X1,k4_xboole_0(X2,X3))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_32])).
% 0.22/0.60  cnf(c_0_39, plain, (k4_xboole_0(k2_xboole_0(X1,k4_xboole_0(X2,X3)),k4_xboole_0(X2,k2_xboole_0(X3,X1)))=k4_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1)))), inference(spm,[status(thm)],[c_0_34, c_0_22])).
% 0.22/0.60  cnf(c_0_40, plain, (k2_xboole_0(X1,k4_xboole_0(X1,X2))=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_30]), c_0_20])).
% 0.22/0.60  fof(c_0_41, plain, ![X13, X14]:r1_tarski(k3_xboole_0(X13,X14),X13), inference(variable_rename,[status(thm)],[t17_xboole_1])).
% 0.22/0.60  fof(c_0_42, plain, ![X10, X11, X12]:k3_xboole_0(k3_xboole_0(X10,X11),X12)=k3_xboole_0(X10,k3_xboole_0(X11,X12)), inference(variable_rename,[status(thm)],[t16_xboole_1])).
% 0.22/0.60  fof(c_0_43, plain, ![X18, X19]:(~r1_tarski(X18,X19)|k3_xboole_0(X18,X19)=X18), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t28_xboole_1])])).
% 0.22/0.60  fof(c_0_44, plain, ![X6, X7]:k3_xboole_0(X6,X7)=k3_xboole_0(X7,X6), inference(variable_rename,[status(thm)],[commutativity_k3_xboole_0])).
% 0.22/0.60  cnf(c_0_45, plain, (r1_tarski(X1,k2_xboole_0(X2,X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_21])).
% 0.22/0.60  cnf(c_0_46, plain, (k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,k4_xboole_0(X2,X1))))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_40]), c_0_22]), c_0_32])).
% 0.22/0.60  cnf(c_0_47, plain, (r1_tarski(k3_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.22/0.60  cnf(c_0_48, plain, (k3_xboole_0(k3_xboole_0(X1,X2),X3)=k3_xboole_0(X1,k3_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.22/0.60  cnf(c_0_49, plain, (k3_xboole_0(X1,X2)=X1|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.22/0.60  cnf(c_0_50, plain, (k3_xboole_0(X1,X2)=k3_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_44])).
% 0.22/0.60  cnf(c_0_51, plain, (r1_tarski(k4_xboole_0(X1,k2_xboole_0(X2,k4_xboole_0(X1,X3))),X3)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.22/0.60  fof(c_0_52, plain, ![X16, X17]:k2_xboole_0(X16,k3_xboole_0(X16,X17))=X16, inference(variable_rename,[status(thm)],[t22_xboole_1])).
% 0.22/0.60  cnf(c_0_53, plain, (r1_tarski(k3_xboole_0(X1,k3_xboole_0(X2,X3)),k3_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.22/0.60  cnf(c_0_54, plain, (k3_xboole_0(X1,k4_xboole_0(X1,X2))=k4_xboole_0(X1,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_30]), c_0_50])).
% 0.22/0.60  cnf(c_0_55, plain, (r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X2)), inference(spm,[status(thm)],[c_0_51, c_0_25])).
% 0.22/0.60  cnf(c_0_56, plain, (k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.22/0.60  cnf(c_0_57, plain, (r1_tarski(k3_xboole_0(X1,k4_xboole_0(X2,X3)),k3_xboole_0(X1,X2))), inference(spm,[status(thm)],[c_0_53, c_0_54])).
% 0.22/0.60  cnf(c_0_58, plain, (k3_xboole_0(X1,k4_xboole_0(X2,k4_xboole_0(X2,X1)))=k4_xboole_0(X2,k4_xboole_0(X2,X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_55]), c_0_50])).
% 0.22/0.60  cnf(c_0_59, plain, (k2_xboole_0(X1,k3_xboole_0(X2,X1))=X1), inference(spm,[status(thm)],[c_0_56, c_0_50])).
% 0.22/0.60  fof(c_0_60, negated_conjecture, ~(![X1, X2]:k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2)), inference(assume_negation,[status(cth)],[t47_xboole_1])).
% 0.22/0.60  cnf(c_0_61, plain, (r1_tarski(k4_xboole_0(X1,k4_xboole_0(X1,X2)),k3_xboole_0(X2,X1))), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 0.22/0.60  cnf(c_0_62, plain, (k2_xboole_0(X1,k4_xboole_0(X2,k3_xboole_0(X3,X1)))=k2_xboole_0(X1,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_59]), c_0_21])).
% 0.22/0.60  fof(c_0_63, negated_conjecture, k4_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk2_0))!=k4_xboole_0(esk1_0,esk2_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_60])])])).
% 0.22/0.60  cnf(c_0_64, plain, (r1_tarski(X1,k2_xboole_0(k3_xboole_0(X2,X1),k4_xboole_0(X1,X2)))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_61]), c_0_20])).
% 0.22/0.60  cnf(c_0_65, plain, (k2_xboole_0(X1,k2_xboole_0(k3_xboole_0(X2,X1),X3))=k2_xboole_0(X1,X3)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62, c_0_27]), c_0_62])).
% 0.22/0.60  cnf(c_0_66, negated_conjecture, (k4_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk2_0))!=k4_xboole_0(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_63])).
% 0.22/0.60  cnf(c_0_67, plain, (k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X2,X1))=X2), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_64]), c_0_65]), c_0_40])).
% 0.22/0.60  cnf(c_0_68, negated_conjecture, (k4_xboole_0(esk1_0,k3_xboole_0(esk2_0,esk1_0))!=k4_xboole_0(esk1_0,esk2_0)), inference(rw,[status(thm)],[c_0_66, c_0_50])).
% 0.22/0.60  cnf(c_0_69, plain, (k4_xboole_0(X1,k3_xboole_0(X2,X1))=k4_xboole_0(X1,X2)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_67]), c_0_22]), c_0_56])).
% 0.22/0.60  cnf(c_0_70, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_68, c_0_69])]), ['proof']).
% 0.22/0.60  # SZS output end CNFRefutation
% 0.22/0.60  # Proof object total steps             : 71
% 0.22/0.60  # Proof object clause steps            : 42
% 0.22/0.60  # Proof object formula steps           : 29
% 0.22/0.60  # Proof object conjectures             : 6
% 0.22/0.60  # Proof object clause conjectures      : 3
% 0.22/0.60  # Proof object formula conjectures     : 3
% 0.22/0.60  # Proof object initial clauses used    : 14
% 0.22/0.60  # Proof object initial formulas used   : 14
% 0.22/0.60  # Proof object generating inferences   : 26
% 0.22/0.60  # Proof object simplifying inferences  : 20
% 0.22/0.60  # Training examples: 0 positive, 0 negative
% 0.22/0.60  # Parsed axioms                        : 14
% 0.22/0.60  # Removed by relevancy pruning/SinE    : 0
% 0.22/0.60  # Initial clauses                      : 14
% 0.22/0.60  # Removed in clause preprocessing      : 0
% 0.22/0.60  # Initial clauses in saturation        : 14
% 0.22/0.60  # Processed clauses                    : 1685
% 0.22/0.60  # ...of these trivial                  : 911
% 0.22/0.60  # ...subsumed                          : 384
% 0.22/0.60  # ...remaining for further processing  : 390
% 0.22/0.60  # Other redundant clauses eliminated   : 0
% 0.22/0.60  # Clauses deleted for lack of memory   : 0
% 0.22/0.60  # Backward-subsumed                    : 0
% 0.22/0.60  # Backward-rewritten                   : 81
% 0.22/0.60  # Generated clauses                    : 42633
% 0.22/0.60  # ...of the previous two non-trivial   : 20996
% 0.22/0.60  # Contextual simplify-reflections      : 0
% 0.22/0.60  # Paramodulations                      : 42633
% 0.22/0.60  # Factorizations                       : 0
% 0.22/0.60  # Equation resolutions                 : 0
% 0.22/0.60  # Propositional unsat checks           : 0
% 0.22/0.60  #    Propositional check models        : 0
% 0.22/0.60  #    Propositional check unsatisfiable : 0
% 0.22/0.60  #    Propositional clauses             : 0
% 0.22/0.60  #    Propositional clauses after purity: 0
% 0.22/0.60  #    Propositional unsat core size     : 0
% 0.22/0.60  #    Propositional preprocessing time  : 0.000
% 0.22/0.60  #    Propositional encoding time       : 0.000
% 0.22/0.60  #    Propositional solver time         : 0.000
% 0.22/0.60  #    Success case prop preproc time    : 0.000
% 0.22/0.60  #    Success case prop encoding time   : 0.000
% 0.22/0.60  #    Success case prop solver time     : 0.000
% 0.22/0.60  # Current number of processed clauses  : 295
% 0.22/0.60  #    Positive orientable unit clauses  : 278
% 0.22/0.60  #    Positive unorientable unit clauses: 7
% 0.22/0.60  #    Negative unit clauses             : 0
% 0.22/0.60  #    Non-unit-clauses                  : 10
% 0.22/0.60  # Current number of unprocessed clauses: 19015
% 0.22/0.60  # ...number of literals in the above   : 19350
% 0.22/0.60  # Current number of archived formulas  : 0
% 0.22/0.60  # Current number of archived clauses   : 95
% 0.22/0.60  # Clause-clause subsumption calls (NU) : 51
% 0.22/0.60  # Rec. Clause-clause subsumption calls : 51
% 0.22/0.60  # Non-unit clause-clause subsumptions  : 6
% 0.22/0.60  # Unit Clause-clause subsumption calls : 63
% 0.22/0.60  # Rewrite failures with RHS unbound    : 0
% 0.22/0.60  # BW rewrite match attempts            : 968
% 0.22/0.60  # BW rewrite match successes           : 309
% 0.22/0.60  # Condensation attempts                : 0
% 0.22/0.60  # Condensation successes               : 0
% 0.22/0.60  # Termbank termtop insertions          : 309105
% 0.22/0.60  
% 0.22/0.60  # -------------------------------------------------
% 0.22/0.60  # User time                : 0.225 s
% 0.22/0.60  # System time              : 0.015 s
% 0.22/0.60  # Total time               : 0.240 s
% 0.22/0.60  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
