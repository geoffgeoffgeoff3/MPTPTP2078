%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:34:15 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   64 ( 678 expanded)
%              Number of clauses        :   37 ( 317 expanded)
%              Number of leaves         :   13 ( 180 expanded)
%              Depth                    :   13
%              Number of atoms          :   70 ( 684 expanded)
%              Number of equality atoms :   69 ( 683 expanded)
%              Maximal formula depth    :    5 (   2 average)
%              Maximal clause size      :    2 (   1 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t46_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t46_xboole_1)).

fof(t98_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t98_xboole_1)).

fof(t41_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t41_xboole_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(t95_xboole_1,axiom,(
    ! [X1,X2] : k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t95_xboole_1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t48_xboole_1)).

fof(t40_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t40_xboole_1)).

fof(t91_xboole_1,axiom,(
    ! [X1,X2,X3] : k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t91_xboole_1)).

fof(t92_xboole_1,axiom,(
    ! [X1] : k5_xboole_0(X1,X1) = k1_xboole_0 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t92_xboole_1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(t32_xboole_1,axiom,(
    ! [X1,X2] :
      ( k4_xboole_0(X1,X2) = k4_xboole_0(X2,X1)
     => X1 = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t32_xboole_1)).

fof(t100_xboole_1,conjecture,(
    ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t100_xboole_1)).

fof(t47_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t47_xboole_1)).

fof(c_0_13,plain,(
    ! [X14,X15] : k4_xboole_0(X14,k2_xboole_0(X14,X15)) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t46_xboole_1])).

fof(c_0_14,plain,(
    ! [X26,X27] : k2_xboole_0(X26,X27) = k5_xboole_0(X26,k4_xboole_0(X27,X26)) ),
    inference(variable_rename,[status(thm)],[t98_xboole_1])).

fof(c_0_15,plain,(
    ! [X11,X12,X13] : k4_xboole_0(k4_xboole_0(X11,X12),X13) = k4_xboole_0(X11,k2_xboole_0(X12,X13)) ),
    inference(variable_rename,[status(thm)],[t41_xboole_1])).

cnf(c_0_16,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_17,plain,
    ( k2_xboole_0(X1,X2) = k5_xboole_0(X1,k4_xboole_0(X2,X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_18,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_19,plain,(
    ! [X8] : k4_xboole_0(X8,k1_xboole_0) = X8 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

cnf(c_0_20,plain,
    ( k4_xboole_0(X1,k5_xboole_0(X1,k4_xboole_0(X2,X1))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_21,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k5_xboole_0(X2,k4_xboole_0(X3,X2))) ),
    inference(rw,[status(thm)],[c_0_18,c_0_17])).

fof(c_0_22,plain,(
    ! [X24,X25] : k3_xboole_0(X24,X25) = k5_xboole_0(k5_xboole_0(X24,X25),k2_xboole_0(X24,X25)) ),
    inference(variable_rename,[status(thm)],[t95_xboole_1])).

fof(c_0_23,plain,(
    ! [X18,X19] : k4_xboole_0(X18,k4_xboole_0(X18,X19)) = k3_xboole_0(X18,X19) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_24,plain,(
    ! [X9,X10] : k4_xboole_0(k2_xboole_0(X9,X10),X10) = k4_xboole_0(X9,X10) ),
    inference(variable_rename,[status(thm)],[t40_xboole_1])).

cnf(c_0_25,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_26,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X1),X2) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_20,c_0_21])).

cnf(c_0_27,plain,
    ( k3_xboole_0(X1,X2) = k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_28,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

fof(c_0_29,plain,(
    ! [X20,X21,X22] : k5_xboole_0(k5_xboole_0(X20,X21),X22) = k5_xboole_0(X20,k5_xboole_0(X21,X22)) ),
    inference(variable_rename,[status(thm)],[t91_xboole_1])).

fof(c_0_30,plain,(
    ! [X23] : k5_xboole_0(X23,X23) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t92_xboole_1])).

cnf(c_0_31,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X2) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_32,plain,
    ( k4_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

fof(c_0_33,plain,(
    ! [X4,X5] : k2_xboole_0(X4,X5) = k2_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

cnf(c_0_34,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k5_xboole_0(k5_xboole_0(X1,X2),k5_xboole_0(X1,k4_xboole_0(X2,X1))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27,c_0_17]),c_0_28])).

cnf(c_0_35,plain,
    ( k5_xboole_0(k5_xboole_0(X1,X2),X3) = k5_xboole_0(X1,k5_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_36,plain,
    ( k5_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_37,plain,
    ( k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X2,X1)),X2) = k4_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_31,c_0_17])).

cnf(c_0_38,plain,
    ( k4_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_26,c_0_32])).

cnf(c_0_39,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_40,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X1,k4_xboole_0(X2,X1)))) = k4_xboole_0(X1,k4_xboole_0(X1,X2)) ),
    inference(rw,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_41,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = k5_xboole_0(k1_xboole_0,X2) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_42,plain,
    ( k5_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_25]),c_0_25])).

cnf(c_0_43,plain,
    ( k5_xboole_0(X1,k4_xboole_0(X2,X1)) = k5_xboole_0(X2,k4_xboole_0(X1,X2)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_17]),c_0_17])).

cnf(c_0_44,plain,
    ( k5_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_41]),c_0_32]),c_0_42]),c_0_32]),c_0_25])).

fof(c_0_45,plain,(
    ! [X6,X7] :
      ( k4_xboole_0(X6,X7) != k4_xboole_0(X7,X6)
      | X6 = X7 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t32_xboole_1])])).

cnf(c_0_46,plain,
    ( k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X2,X1)),X1) = k4_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_37,c_0_43])).

fof(c_0_47,negated_conjecture,(
    ~ ! [X1,X2] : k4_xboole_0(X1,X2) = k5_xboole_0(X1,k3_xboole_0(X1,X2)) ),
    inference(assume_negation,[status(cth)],[t100_xboole_1])).

cnf(c_0_48,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X1,X2)) = X2 ),
    inference(rw,[status(thm)],[c_0_41,c_0_44])).

cnf(c_0_49,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X1,X2))) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_36,c_0_35])).

cnf(c_0_50,plain,
    ( X1 = X2
    | k4_xboole_0(X1,X2) != k4_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_51,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_46]),c_0_21]),c_0_46]),c_0_21]),c_0_32]),c_0_38])).

fof(c_0_52,negated_conjecture,(
    k4_xboole_0(esk1_0,esk2_0) != k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_47])])])).

cnf(c_0_53,plain,
    ( k5_xboole_0(X1,k5_xboole_0(X2,X1)) = X2 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_42])).

cnf(c_0_54,plain,
    ( k5_xboole_0(X1,k4_xboole_0(X2,X1)) = X2
    | k4_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_37]),c_0_21]),c_0_51])).

fof(c_0_55,plain,(
    ! [X16,X17] : k4_xboole_0(X16,k3_xboole_0(X16,X17)) = k4_xboole_0(X16,X17) ),
    inference(variable_rename,[status(thm)],[t47_xboole_1])).

cnf(c_0_56,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk2_0) != k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_52])).

cnf(c_0_57,plain,
    ( k5_xboole_0(X1,X2) = k5_xboole_0(X2,X1) ),
    inference(spm,[status(thm)],[c_0_48,c_0_53])).

cnf(c_0_58,plain,
    ( k5_xboole_0(X1,X2) = k4_xboole_0(X2,X1)
    | k4_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_48,c_0_54])).

cnf(c_0_59,plain,
    ( k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_60,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk2_0) != k5_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0))) ),
    inference(rw,[status(thm)],[c_0_56,c_0_28])).

cnf(c_0_61,plain,
    ( k5_xboole_0(X1,X2) = k4_xboole_0(X1,X2)
    | k4_xboole_0(X2,X1) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_62,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2))) = k4_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_59,c_0_28])).

cnf(c_0_63,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_61]),c_0_62]),c_0_51])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n021.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % WCLimit    : 600
% 0.12/0.34  % DateTime   : Tue Dec  1 15:16:19 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S5PRR_RG_S04BN
% 0.12/0.37  # and selection function PSelectComplexExceptUniqMaxHorn.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.025 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t46_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t46_xboole_1)).
% 0.12/0.37  fof(t98_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t98_xboole_1)).
% 0.12/0.37  fof(t41_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t41_xboole_1)).
% 0.12/0.37  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_boole)).
% 0.12/0.37  fof(t95_xboole_1, axiom, ![X1, X2]:k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t95_xboole_1)).
% 0.12/0.37  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.12/0.37  fof(t40_xboole_1, axiom, ![X1, X2]:k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t40_xboole_1)).
% 0.12/0.37  fof(t91_xboole_1, axiom, ![X1, X2, X3]:k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t91_xboole_1)).
% 0.12/0.37  fof(t92_xboole_1, axiom, ![X1]:k5_xboole_0(X1,X1)=k1_xboole_0, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t92_xboole_1)).
% 0.12/0.37  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.12/0.37  fof(t32_xboole_1, axiom, ![X1, X2]:(k4_xboole_0(X1,X2)=k4_xboole_0(X2,X1)=>X1=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t32_xboole_1)).
% 0.12/0.37  fof(t100_xboole_1, conjecture, ![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t100_xboole_1)).
% 0.12/0.37  fof(t47_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t47_xboole_1)).
% 0.12/0.37  fof(c_0_13, plain, ![X14, X15]:k4_xboole_0(X14,k2_xboole_0(X14,X15))=k1_xboole_0, inference(variable_rename,[status(thm)],[t46_xboole_1])).
% 0.12/0.37  fof(c_0_14, plain, ![X26, X27]:k2_xboole_0(X26,X27)=k5_xboole_0(X26,k4_xboole_0(X27,X26)), inference(variable_rename,[status(thm)],[t98_xboole_1])).
% 0.12/0.37  fof(c_0_15, plain, ![X11, X12, X13]:k4_xboole_0(k4_xboole_0(X11,X12),X13)=k4_xboole_0(X11,k2_xboole_0(X12,X13)), inference(variable_rename,[status(thm)],[t41_xboole_1])).
% 0.12/0.37  cnf(c_0_16, plain, (k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.37  cnf(c_0_17, plain, (k2_xboole_0(X1,X2)=k5_xboole_0(X1,k4_xboole_0(X2,X1))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.12/0.37  cnf(c_0_18, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.12/0.37  fof(c_0_19, plain, ![X8]:k4_xboole_0(X8,k1_xboole_0)=X8, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.12/0.37  cnf(c_0_20, plain, (k4_xboole_0(X1,k5_xboole_0(X1,k4_xboole_0(X2,X1)))=k1_xboole_0), inference(rw,[status(thm)],[c_0_16, c_0_17])).
% 0.12/0.37  cnf(c_0_21, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k5_xboole_0(X2,k4_xboole_0(X3,X2)))), inference(rw,[status(thm)],[c_0_18, c_0_17])).
% 0.12/0.37  fof(c_0_22, plain, ![X24, X25]:k3_xboole_0(X24,X25)=k5_xboole_0(k5_xboole_0(X24,X25),k2_xboole_0(X24,X25)), inference(variable_rename,[status(thm)],[t95_xboole_1])).
% 0.12/0.37  fof(c_0_23, plain, ![X18, X19]:k4_xboole_0(X18,k4_xboole_0(X18,X19))=k3_xboole_0(X18,X19), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.12/0.37  fof(c_0_24, plain, ![X9, X10]:k4_xboole_0(k2_xboole_0(X9,X10),X10)=k4_xboole_0(X9,X10), inference(variable_rename,[status(thm)],[t40_xboole_1])).
% 0.12/0.37  cnf(c_0_25, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.12/0.37  cnf(c_0_26, plain, (k4_xboole_0(k4_xboole_0(X1,X1),X2)=k1_xboole_0), inference(rw,[status(thm)],[c_0_20, c_0_21])).
% 0.12/0.37  cnf(c_0_27, plain, (k3_xboole_0(X1,X2)=k5_xboole_0(k5_xboole_0(X1,X2),k2_xboole_0(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.37  cnf(c_0_28, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.12/0.37  fof(c_0_29, plain, ![X20, X21, X22]:k5_xboole_0(k5_xboole_0(X20,X21),X22)=k5_xboole_0(X20,k5_xboole_0(X21,X22)), inference(variable_rename,[status(thm)],[t91_xboole_1])).
% 0.12/0.37  fof(c_0_30, plain, ![X23]:k5_xboole_0(X23,X23)=k1_xboole_0, inference(variable_rename,[status(thm)],[t92_xboole_1])).
% 0.12/0.37  cnf(c_0_31, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X2)=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.12/0.37  cnf(c_0_32, plain, (k4_xboole_0(X1,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.12/0.37  fof(c_0_33, plain, ![X4, X5]:k2_xboole_0(X4,X5)=k2_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.12/0.37  cnf(c_0_34, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k5_xboole_0(k5_xboole_0(X1,X2),k5_xboole_0(X1,k4_xboole_0(X2,X1)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_27, c_0_17]), c_0_28])).
% 0.12/0.37  cnf(c_0_35, plain, (k5_xboole_0(k5_xboole_0(X1,X2),X3)=k5_xboole_0(X1,k5_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.12/0.37  cnf(c_0_36, plain, (k5_xboole_0(X1,X1)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.12/0.37  cnf(c_0_37, plain, (k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X2,X1)),X2)=k4_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_31, c_0_17])).
% 0.12/0.37  cnf(c_0_38, plain, (k4_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(rw,[status(thm)],[c_0_26, c_0_32])).
% 0.12/0.37  cnf(c_0_39, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.12/0.37  cnf(c_0_40, plain, (k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X1,k4_xboole_0(X2,X1))))=k4_xboole_0(X1,k4_xboole_0(X1,X2))), inference(rw,[status(thm)],[c_0_34, c_0_35])).
% 0.12/0.37  cnf(c_0_41, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=k5_xboole_0(k1_xboole_0,X2)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.12/0.37  cnf(c_0_42, plain, (k5_xboole_0(X1,k1_xboole_0)=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_25]), c_0_25])).
% 0.12/0.37  cnf(c_0_43, plain, (k5_xboole_0(X1,k4_xboole_0(X2,X1))=k5_xboole_0(X2,k4_xboole_0(X1,X2))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_17]), c_0_17])).
% 0.12/0.37  cnf(c_0_44, plain, (k5_xboole_0(k1_xboole_0,X1)=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_41]), c_0_32]), c_0_42]), c_0_32]), c_0_25])).
% 0.12/0.37  fof(c_0_45, plain, ![X6, X7]:(k4_xboole_0(X6,X7)!=k4_xboole_0(X7,X6)|X6=X7), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t32_xboole_1])])).
% 0.12/0.37  cnf(c_0_46, plain, (k4_xboole_0(k5_xboole_0(X1,k4_xboole_0(X2,X1)),X1)=k4_xboole_0(X2,X1)), inference(spm,[status(thm)],[c_0_37, c_0_43])).
% 0.12/0.37  fof(c_0_47, negated_conjecture, ~(![X1, X2]:k4_xboole_0(X1,X2)=k5_xboole_0(X1,k3_xboole_0(X1,X2))), inference(assume_negation,[status(cth)],[t100_xboole_1])).
% 0.12/0.37  cnf(c_0_48, plain, (k5_xboole_0(X1,k5_xboole_0(X1,X2))=X2), inference(rw,[status(thm)],[c_0_41, c_0_44])).
% 0.12/0.37  cnf(c_0_49, plain, (k5_xboole_0(X1,k5_xboole_0(X2,k5_xboole_0(X1,X2)))=k1_xboole_0), inference(spm,[status(thm)],[c_0_36, c_0_35])).
% 0.12/0.37  cnf(c_0_50, plain, (X1=X2|k4_xboole_0(X1,X2)!=k4_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.12/0.37  cnf(c_0_51, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X1)=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_46]), c_0_21]), c_0_46]), c_0_21]), c_0_32]), c_0_38])).
% 0.12/0.37  fof(c_0_52, negated_conjecture, k4_xboole_0(esk1_0,esk2_0)!=k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk2_0)), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_47])])])).
% 0.12/0.37  cnf(c_0_53, plain, (k5_xboole_0(X1,k5_xboole_0(X2,X1))=X2), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_42])).
% 0.12/0.37  cnf(c_0_54, plain, (k5_xboole_0(X1,k4_xboole_0(X2,X1))=X2|k4_xboole_0(X1,X2)!=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_37]), c_0_21]), c_0_51])).
% 0.12/0.37  fof(c_0_55, plain, ![X16, X17]:k4_xboole_0(X16,k3_xboole_0(X16,X17))=k4_xboole_0(X16,X17), inference(variable_rename,[status(thm)],[t47_xboole_1])).
% 0.12/0.37  cnf(c_0_56, negated_conjecture, (k4_xboole_0(esk1_0,esk2_0)!=k5_xboole_0(esk1_0,k3_xboole_0(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_52])).
% 0.12/0.37  cnf(c_0_57, plain, (k5_xboole_0(X1,X2)=k5_xboole_0(X2,X1)), inference(spm,[status(thm)],[c_0_48, c_0_53])).
% 0.12/0.37  cnf(c_0_58, plain, (k5_xboole_0(X1,X2)=k4_xboole_0(X2,X1)|k4_xboole_0(X1,X2)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_48, c_0_54])).
% 0.12/0.37  cnf(c_0_59, plain, (k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.12/0.37  cnf(c_0_60, negated_conjecture, (k4_xboole_0(esk1_0,esk2_0)!=k5_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0)))), inference(rw,[status(thm)],[c_0_56, c_0_28])).
% 0.12/0.37  cnf(c_0_61, plain, (k5_xboole_0(X1,X2)=k4_xboole_0(X1,X2)|k4_xboole_0(X2,X1)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 0.12/0.37  cnf(c_0_62, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2)))=k4_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_59, c_0_28])).
% 0.12/0.37  cnf(c_0_63, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60, c_0_61]), c_0_62]), c_0_51])]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 64
% 0.12/0.37  # Proof object clause steps            : 37
% 0.12/0.37  # Proof object formula steps           : 27
% 0.12/0.37  # Proof object conjectures             : 6
% 0.12/0.37  # Proof object clause conjectures      : 3
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 13
% 0.12/0.37  # Proof object initial formulas used   : 13
% 0.12/0.37  # Proof object generating inferences   : 13
% 0.12/0.37  # Proof object simplifying inferences  : 30
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 13
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 13
% 0.12/0.37  # Removed in clause preprocessing      : 2
% 0.12/0.37  # Initial clauses in saturation        : 11
% 0.12/0.37  # Processed clauses                    : 67
% 0.12/0.37  # ...of these trivial                  : 13
% 0.12/0.37  # ...subsumed                          : 8
% 0.12/0.37  # ...remaining for further processing  : 46
% 0.12/0.37  # Other redundant clauses eliminated   : 3
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 6
% 0.12/0.37  # Generated clauses                    : 436
% 0.12/0.37  # ...of the previous two non-trivial   : 221
% 0.12/0.37  # Contextual simplify-reflections      : 0
% 0.12/0.37  # Paramodulations                      : 432
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 4
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
% 0.12/0.37  # Current number of processed clauses  : 29
% 0.12/0.37  #    Positive orientable unit clauses  : 17
% 0.12/0.37  #    Positive unorientable unit clauses: 2
% 0.12/0.37  #    Negative unit clauses             : 2
% 0.12/0.37  #    Non-unit-clauses                  : 8
% 0.12/0.37  # Current number of unprocessed clauses: 172
% 0.12/0.37  # ...number of literals in the above   : 243
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 19
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 26
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 26
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 7
% 0.12/0.37  # Unit Clause-clause subsumption calls : 6
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 70
% 0.12/0.37  # BW rewrite match successes           : 44
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 3944
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.031 s
% 0.12/0.37  # System time              : 0.002 s
% 0.12/0.37  # Total time               : 0.034 s
% 0.12/0.37  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
