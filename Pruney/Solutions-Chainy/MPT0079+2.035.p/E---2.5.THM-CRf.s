%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:33:05 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   67 ( 652 expanded)
%              Number of clauses        :   42 ( 281 expanded)
%              Number of leaves         :   12 ( 178 expanded)
%              Depth                    :   12
%              Number of atoms          :   85 ( 847 expanded)
%              Number of equality atoms :   63 ( 672 expanded)
%              Maximal formula depth    :    9 (   2 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t2_boole,axiom,(
    ! [X1] : k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_boole)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_boole)).

fof(t72_xboole_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( ( k2_xboole_0(X1,X2) = k2_xboole_0(X3,X4)
        & r1_xboole_0(X3,X1)
        & r1_xboole_0(X4,X2) )
     => X3 = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t72_xboole_1)).

fof(t41_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).

fof(d7_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k3_xboole_0(X1,X2) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d7_xboole_0)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(t51_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t51_xboole_1)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).

fof(t42_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t42_xboole_1)).

fof(c_0_12,plain,(
    ! [X12] : k3_xboole_0(X12,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t2_boole])).

fof(c_0_13,plain,(
    ! [X22,X23] : k4_xboole_0(X22,k4_xboole_0(X22,X23)) = k3_xboole_0(X22,X23) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

cnf(c_0_14,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_15,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_16,plain,(
    ! [X15] : k4_xboole_0(X15,k1_xboole_0) = X15 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

fof(c_0_17,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( ( k2_xboole_0(X1,X2) = k2_xboole_0(X3,X4)
          & r1_xboole_0(X3,X1)
          & r1_xboole_0(X4,X2) )
       => X3 = X2 ) ),
    inference(assume_negation,[status(cth)],[t72_xboole_1])).

cnf(c_0_18,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_19,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_20,plain,(
    ! [X16,X17,X18] : k4_xboole_0(k4_xboole_0(X16,X17),X18) = k4_xboole_0(X16,k2_xboole_0(X17,X18)) ),
    inference(variable_rename,[status(thm)],[t41_xboole_1])).

fof(c_0_21,plain,(
    ! [X13,X14] : k2_xboole_0(X13,k4_xboole_0(X14,X13)) = k2_xboole_0(X13,X14) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

fof(c_0_22,plain,(
    ! [X7,X8] :
      ( ( ~ r1_xboole_0(X7,X8)
        | k3_xboole_0(X7,X8) = k1_xboole_0 )
      & ( k3_xboole_0(X7,X8) != k1_xboole_0
        | r1_xboole_0(X7,X8) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).

fof(c_0_23,plain,(
    ! [X9,X10] :
      ( ~ r1_xboole_0(X9,X10)
      | r1_xboole_0(X10,X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

fof(c_0_24,negated_conjecture,
    ( k2_xboole_0(esk1_0,esk2_0) = k2_xboole_0(esk3_0,esk4_0)
    & r1_xboole_0(esk3_0,esk1_0)
    & r1_xboole_0(esk4_0,esk2_0)
    & esk3_0 != esk2_0 ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).

fof(c_0_25,plain,(
    ! [X27,X28] : k2_xboole_0(k3_xboole_0(X27,X28),k4_xboole_0(X27,X28)) = X27 ),
    inference(variable_rename,[status(thm)],[t51_xboole_1])).

cnf(c_0_26,plain,
    ( k4_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_27,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_29,plain,(
    ! [X5,X6] : k2_xboole_0(X5,X6) = k2_xboole_0(X6,X5) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

cnf(c_0_30,plain,
    ( k3_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_32,negated_conjecture,
    ( r1_xboole_0(esk3_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_33,plain,
    ( k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_34,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X2,X1)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28])).

cnf(c_0_35,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_36,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_30,c_0_15])).

cnf(c_0_37,negated_conjecture,
    ( r1_xboole_0(esk1_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

fof(c_0_38,plain,(
    ! [X11] : k2_xboole_0(X11,k1_xboole_0) = X11 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

cnf(c_0_39,plain,
    ( k2_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X2)),k4_xboole_0(X1,X2)) = X1 ),
    inference(rw,[status(thm)],[c_0_33,c_0_15])).

cnf(c_0_40,negated_conjecture,
    ( r1_xboole_0(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_41,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_34,c_0_35])).

cnf(c_0_42,negated_conjecture,
    ( k2_xboole_0(esk1_0,esk2_0) = k2_xboole_0(esk3_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_43,negated_conjecture,
    ( k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk3_0)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_36,c_0_37])).

cnf(c_0_44,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_45,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X1,X2)) = X1 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_35]),c_0_28]),c_0_35])).

cnf(c_0_46,negated_conjecture,
    ( k4_xboole_0(esk3_0,k4_xboole_0(esk3_0,esk1_0)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_36,c_0_32])).

fof(c_0_47,plain,(
    ! [X19,X20,X21] : k4_xboole_0(k2_xboole_0(X19,X20),X21) = k2_xboole_0(k4_xboole_0(X19,X21),k4_xboole_0(X20,X21)) ),
    inference(variable_rename,[status(thm)],[t42_xboole_1])).

cnf(c_0_48,negated_conjecture,
    ( r1_xboole_0(esk2_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_31,c_0_40])).

cnf(c_0_49,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1))) = k2_xboole_0(X1,k4_xboole_0(X2,X3)) ),
    inference(spm,[status(thm)],[c_0_28,c_0_27])).

cnf(c_0_50,negated_conjecture,
    ( k4_xboole_0(esk1_0,k2_xboole_0(esk3_0,esk4_0)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_51,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk3_0) = esk1_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_43]),c_0_44]),c_0_35]),c_0_45])).

cnf(c_0_52,negated_conjecture,
    ( k4_xboole_0(esk3_0,esk1_0) = esk3_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_46]),c_0_44]),c_0_35]),c_0_45])).

cnf(c_0_53,plain,
    ( k4_xboole_0(k2_xboole_0(X1,X2),X3) = k2_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_54,negated_conjecture,
    ( k4_xboole_0(esk2_0,k4_xboole_0(esk2_0,esk4_0)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_36,c_0_48])).

cnf(c_0_55,negated_conjecture,
    ( k2_xboole_0(esk1_0,esk4_0) = esk4_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_44]),c_0_51]),c_0_35])).

cnf(c_0_56,negated_conjecture,
    ( k4_xboole_0(esk3_0,k2_xboole_0(esk1_0,X1)) = k4_xboole_0(esk3_0,X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_52])).

cnf(c_0_57,negated_conjecture,
    ( k2_xboole_0(k4_xboole_0(esk1_0,X1),k4_xboole_0(esk2_0,X1)) = k2_xboole_0(k4_xboole_0(esk3_0,X1),k4_xboole_0(esk4_0,X1)) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_42]),c_0_53])).

cnf(c_0_58,negated_conjecture,
    ( k4_xboole_0(esk2_0,esk4_0) = esk2_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_54]),c_0_44]),c_0_35]),c_0_45])).

cnf(c_0_59,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk4_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_41,c_0_55])).

cnf(c_0_60,plain,
    ( k2_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_44,c_0_35])).

cnf(c_0_61,negated_conjecture,
    ( k4_xboole_0(esk3_0,esk2_0) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_42]),c_0_41])).

cnf(c_0_62,negated_conjecture,
    ( esk3_0 != esk2_0 ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_63,negated_conjecture,
    ( esk2_0 = k4_xboole_0(esk3_0,esk4_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_58]),c_0_59]),c_0_60]),c_0_26]),c_0_44])).

cnf(c_0_64,negated_conjecture,
    ( k2_xboole_0(esk3_0,esk2_0) = esk2_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_61]),c_0_44]),c_0_35])).

cnf(c_0_65,negated_conjecture,
    ( k4_xboole_0(esk3_0,esk4_0) != esk3_0 ),
    inference(rw,[status(thm)],[c_0_62,c_0_63])).

cnf(c_0_66,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_64,c_0_63]),c_0_45]),c_0_63]),c_0_65]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.08/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.08/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 14:30:38 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.39  # AutoSched0-Mode selected heuristic G_E___200_B02_F1_AE_CS_SP_PI_S0S
% 0.13/0.39  # and selection function SelectComplexG.
% 0.13/0.39  #
% 0.13/0.39  # Preprocessing time       : 0.027 s
% 0.13/0.39  
% 0.13/0.39  # Proof found!
% 0.13/0.39  # SZS status Theorem
% 0.13/0.39  # SZS output start CNFRefutation
% 0.13/0.39  fof(t2_boole, axiom, ![X1]:k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_boole)).
% 0.13/0.39  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.13/0.39  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_boole)).
% 0.13/0.39  fof(t72_xboole_1, conjecture, ![X1, X2, X3, X4]:(((k2_xboole_0(X1,X2)=k2_xboole_0(X3,X4)&r1_xboole_0(X3,X1))&r1_xboole_0(X4,X2))=>X3=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t72_xboole_1)).
% 0.13/0.39  fof(t41_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_xboole_1)).
% 0.13/0.39  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.13/0.39  fof(d7_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k3_xboole_0(X1,X2)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d7_xboole_0)).
% 0.13/0.39  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.13/0.39  fof(t51_xboole_1, axiom, ![X1, X2]:k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t51_xboole_1)).
% 0.13/0.39  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.13/0.39  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_boole)).
% 0.13/0.39  fof(t42_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k2_xboole_0(X1,X2),X3)=k2_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t42_xboole_1)).
% 0.13/0.39  fof(c_0_12, plain, ![X12]:k3_xboole_0(X12,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t2_boole])).
% 0.13/0.39  fof(c_0_13, plain, ![X22, X23]:k4_xboole_0(X22,k4_xboole_0(X22,X23))=k3_xboole_0(X22,X23), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.13/0.39  cnf(c_0_14, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.39  cnf(c_0_15, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.39  fof(c_0_16, plain, ![X15]:k4_xboole_0(X15,k1_xboole_0)=X15, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.13/0.39  fof(c_0_17, negated_conjecture, ~(![X1, X2, X3, X4]:(((k2_xboole_0(X1,X2)=k2_xboole_0(X3,X4)&r1_xboole_0(X3,X1))&r1_xboole_0(X4,X2))=>X3=X2)), inference(assume_negation,[status(cth)],[t72_xboole_1])).
% 0.13/0.39  cnf(c_0_18, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0))=k1_xboole_0), inference(rw,[status(thm)],[c_0_14, c_0_15])).
% 0.13/0.39  cnf(c_0_19, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.39  fof(c_0_20, plain, ![X16, X17, X18]:k4_xboole_0(k4_xboole_0(X16,X17),X18)=k4_xboole_0(X16,k2_xboole_0(X17,X18)), inference(variable_rename,[status(thm)],[t41_xboole_1])).
% 0.13/0.39  fof(c_0_21, plain, ![X13, X14]:k2_xboole_0(X13,k4_xboole_0(X14,X13))=k2_xboole_0(X13,X14), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.13/0.39  fof(c_0_22, plain, ![X7, X8]:((~r1_xboole_0(X7,X8)|k3_xboole_0(X7,X8)=k1_xboole_0)&(k3_xboole_0(X7,X8)!=k1_xboole_0|r1_xboole_0(X7,X8))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).
% 0.13/0.39  fof(c_0_23, plain, ![X9, X10]:(~r1_xboole_0(X9,X10)|r1_xboole_0(X10,X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.13/0.39  fof(c_0_24, negated_conjecture, (((k2_xboole_0(esk1_0,esk2_0)=k2_xboole_0(esk3_0,esk4_0)&r1_xboole_0(esk3_0,esk1_0))&r1_xboole_0(esk4_0,esk2_0))&esk3_0!=esk2_0), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_17])])])).
% 0.13/0.39  fof(c_0_25, plain, ![X27, X28]:k2_xboole_0(k3_xboole_0(X27,X28),k4_xboole_0(X27,X28))=X27, inference(variable_rename,[status(thm)],[t51_xboole_1])).
% 0.13/0.39  cnf(c_0_26, plain, (k4_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[c_0_18, c_0_19])).
% 0.13/0.39  cnf(c_0_27, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.13/0.39  cnf(c_0_28, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.13/0.39  fof(c_0_29, plain, ![X5, X6]:k2_xboole_0(X5,X6)=k2_xboole_0(X6,X5), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.13/0.39  cnf(c_0_30, plain, (k3_xboole_0(X1,X2)=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.39  cnf(c_0_31, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.13/0.39  cnf(c_0_32, negated_conjecture, (r1_xboole_0(esk3_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  cnf(c_0_33, plain, (k2_xboole_0(k3_xboole_0(X1,X2),k4_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.13/0.39  cnf(c_0_34, plain, (k4_xboole_0(X1,k2_xboole_0(X2,X1))=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28])).
% 0.13/0.39  cnf(c_0_35, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.13/0.39  cnf(c_0_36, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_30, c_0_15])).
% 0.13/0.39  cnf(c_0_37, negated_conjecture, (r1_xboole_0(esk1_0,esk3_0)), inference(spm,[status(thm)],[c_0_31, c_0_32])).
% 0.13/0.39  fof(c_0_38, plain, ![X11]:k2_xboole_0(X11,k1_xboole_0)=X11, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.13/0.39  cnf(c_0_39, plain, (k2_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X2)),k4_xboole_0(X1,X2))=X1), inference(rw,[status(thm)],[c_0_33, c_0_15])).
% 0.13/0.39  cnf(c_0_40, negated_conjecture, (r1_xboole_0(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  cnf(c_0_41, plain, (k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0), inference(spm,[status(thm)],[c_0_34, c_0_35])).
% 0.13/0.39  cnf(c_0_42, negated_conjecture, (k2_xboole_0(esk1_0,esk2_0)=k2_xboole_0(esk3_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  cnf(c_0_43, negated_conjecture, (k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk3_0))=k1_xboole_0), inference(spm,[status(thm)],[c_0_36, c_0_37])).
% 0.13/0.39  cnf(c_0_44, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.13/0.39  cnf(c_0_45, plain, (k2_xboole_0(X1,k4_xboole_0(X1,X2))=X1), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_35]), c_0_28]), c_0_35])).
% 0.13/0.39  cnf(c_0_46, negated_conjecture, (k4_xboole_0(esk3_0,k4_xboole_0(esk3_0,esk1_0))=k1_xboole_0), inference(spm,[status(thm)],[c_0_36, c_0_32])).
% 0.13/0.39  fof(c_0_47, plain, ![X19, X20, X21]:k4_xboole_0(k2_xboole_0(X19,X20),X21)=k2_xboole_0(k4_xboole_0(X19,X21),k4_xboole_0(X20,X21)), inference(variable_rename,[status(thm)],[t42_xboole_1])).
% 0.13/0.39  cnf(c_0_48, negated_conjecture, (r1_xboole_0(esk2_0,esk4_0)), inference(spm,[status(thm)],[c_0_31, c_0_40])).
% 0.13/0.39  cnf(c_0_49, plain, (k2_xboole_0(X1,k4_xboole_0(X2,k2_xboole_0(X3,X1)))=k2_xboole_0(X1,k4_xboole_0(X2,X3))), inference(spm,[status(thm)],[c_0_28, c_0_27])).
% 0.13/0.39  cnf(c_0_50, negated_conjecture, (k4_xboole_0(esk1_0,k2_xboole_0(esk3_0,esk4_0))=k1_xboole_0), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.13/0.39  cnf(c_0_51, negated_conjecture, (k4_xboole_0(esk1_0,esk3_0)=esk1_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_43]), c_0_44]), c_0_35]), c_0_45])).
% 0.13/0.39  cnf(c_0_52, negated_conjecture, (k4_xboole_0(esk3_0,esk1_0)=esk3_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_46]), c_0_44]), c_0_35]), c_0_45])).
% 0.13/0.39  cnf(c_0_53, plain, (k4_xboole_0(k2_xboole_0(X1,X2),X3)=k2_xboole_0(k4_xboole_0(X1,X3),k4_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.13/0.39  cnf(c_0_54, negated_conjecture, (k4_xboole_0(esk2_0,k4_xboole_0(esk2_0,esk4_0))=k1_xboole_0), inference(spm,[status(thm)],[c_0_36, c_0_48])).
% 0.13/0.39  cnf(c_0_55, negated_conjecture, (k2_xboole_0(esk1_0,esk4_0)=esk4_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_44]), c_0_51]), c_0_35])).
% 0.13/0.39  cnf(c_0_56, negated_conjecture, (k4_xboole_0(esk3_0,k2_xboole_0(esk1_0,X1))=k4_xboole_0(esk3_0,X1)), inference(spm,[status(thm)],[c_0_27, c_0_52])).
% 0.13/0.39  cnf(c_0_57, negated_conjecture, (k2_xboole_0(k4_xboole_0(esk1_0,X1),k4_xboole_0(esk2_0,X1))=k2_xboole_0(k4_xboole_0(esk3_0,X1),k4_xboole_0(esk4_0,X1))), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_42]), c_0_53])).
% 0.13/0.39  cnf(c_0_58, negated_conjecture, (k4_xboole_0(esk2_0,esk4_0)=esk2_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_54]), c_0_44]), c_0_35]), c_0_45])).
% 0.13/0.39  cnf(c_0_59, negated_conjecture, (k4_xboole_0(esk1_0,esk4_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_41, c_0_55])).
% 0.13/0.39  cnf(c_0_60, plain, (k2_xboole_0(k1_xboole_0,X1)=X1), inference(spm,[status(thm)],[c_0_44, c_0_35])).
% 0.13/0.39  cnf(c_0_61, negated_conjecture, (k4_xboole_0(esk3_0,esk2_0)=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_42]), c_0_41])).
% 0.13/0.39  cnf(c_0_62, negated_conjecture, (esk3_0!=esk2_0), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.13/0.39  cnf(c_0_63, negated_conjecture, (esk2_0=k4_xboole_0(esk3_0,esk4_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_58]), c_0_59]), c_0_60]), c_0_26]), c_0_44])).
% 0.13/0.39  cnf(c_0_64, negated_conjecture, (k2_xboole_0(esk3_0,esk2_0)=esk2_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_61]), c_0_44]), c_0_35])).
% 0.13/0.39  cnf(c_0_65, negated_conjecture, (k4_xboole_0(esk3_0,esk4_0)!=esk3_0), inference(rw,[status(thm)],[c_0_62, c_0_63])).
% 0.13/0.39  cnf(c_0_66, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_64, c_0_63]), c_0_45]), c_0_63]), c_0_65]), ['proof']).
% 0.13/0.39  # SZS output end CNFRefutation
% 0.13/0.39  # Proof object total steps             : 67
% 0.13/0.39  # Proof object clause steps            : 42
% 0.13/0.39  # Proof object formula steps           : 25
% 0.13/0.39  # Proof object conjectures             : 25
% 0.13/0.39  # Proof object clause conjectures      : 22
% 0.13/0.39  # Proof object formula conjectures     : 3
% 0.13/0.39  # Proof object initial clauses used    : 15
% 0.13/0.39  # Proof object initial formulas used   : 12
% 0.13/0.39  # Proof object generating inferences   : 20
% 0.13/0.39  # Proof object simplifying inferences  : 33
% 0.13/0.39  # Training examples: 0 positive, 0 negative
% 0.13/0.39  # Parsed axioms                        : 13
% 0.13/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.39  # Initial clauses                      : 17
% 0.13/0.39  # Removed in clause preprocessing      : 1
% 0.13/0.39  # Initial clauses in saturation        : 16
% 0.13/0.39  # Processed clauses                    : 210
% 0.13/0.39  # ...of these trivial                  : 49
% 0.13/0.39  # ...subsumed                          : 54
% 0.13/0.39  # ...remaining for further processing  : 106
% 0.13/0.39  # Other redundant clauses eliminated   : 0
% 0.13/0.39  # Clauses deleted for lack of memory   : 0
% 0.13/0.39  # Backward-subsumed                    : 1
% 0.13/0.39  # Backward-rewritten                   : 48
% 0.13/0.39  # Generated clauses                    : 1493
% 0.13/0.39  # ...of the previous two non-trivial   : 981
% 0.13/0.39  # Contextual simplify-reflections      : 0
% 0.13/0.39  # Paramodulations                      : 1490
% 0.13/0.39  # Factorizations                       : 0
% 0.13/0.39  # Equation resolutions                 : 3
% 0.13/0.39  # Propositional unsat checks           : 0
% 0.13/0.39  #    Propositional check models        : 0
% 0.13/0.39  #    Propositional check unsatisfiable : 0
% 0.13/0.39  #    Propositional clauses             : 0
% 0.13/0.39  #    Propositional clauses after purity: 0
% 0.13/0.39  #    Propositional unsat core size     : 0
% 0.13/0.39  #    Propositional preprocessing time  : 0.000
% 0.13/0.39  #    Propositional encoding time       : 0.000
% 0.13/0.39  #    Propositional solver time         : 0.000
% 0.13/0.39  #    Success case prop preproc time    : 0.000
% 0.13/0.39  #    Success case prop encoding time   : 0.000
% 0.13/0.39  #    Success case prop solver time     : 0.000
% 0.13/0.39  # Current number of processed clauses  : 57
% 0.13/0.39  #    Positive orientable unit clauses  : 40
% 0.13/0.39  #    Positive unorientable unit clauses: 3
% 0.13/0.39  #    Negative unit clauses             : 1
% 0.13/0.39  #    Non-unit-clauses                  : 13
% 0.13/0.39  # Current number of unprocessed clauses: 770
% 0.13/0.39  # ...number of literals in the above   : 908
% 0.13/0.39  # Current number of archived formulas  : 0
% 0.13/0.39  # Current number of archived clauses   : 50
% 0.13/0.39  # Clause-clause subsumption calls (NU) : 125
% 0.13/0.39  # Rec. Clause-clause subsumption calls : 125
% 0.13/0.39  # Non-unit clause-clause subsumptions  : 42
% 0.13/0.39  # Unit Clause-clause subsumption calls : 16
% 0.13/0.39  # Rewrite failures with RHS unbound    : 0
% 0.13/0.39  # BW rewrite match attempts            : 142
% 0.13/0.39  # BW rewrite match successes           : 79
% 0.13/0.39  # Condensation attempts                : 0
% 0.13/0.39  # Condensation successes               : 0
% 0.13/0.39  # Termbank termtop insertions          : 16369
% 0.13/0.39  
% 0.13/0.39  # -------------------------------------------------
% 0.13/0.39  # User time                : 0.046 s
% 0.13/0.39  # System time              : 0.003 s
% 0.13/0.39  # Total time               : 0.049 s
% 0.13/0.39  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
