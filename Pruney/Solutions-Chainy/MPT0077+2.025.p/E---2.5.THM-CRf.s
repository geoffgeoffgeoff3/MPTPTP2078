%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:32:56 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   53 ( 547 expanded)
%              Number of clauses        :   34 ( 242 expanded)
%              Number of leaves         :    9 ( 149 expanded)
%              Depth                    :   10
%              Number of atoms          :   96 ( 837 expanded)
%              Number of equality atoms :   38 ( 521 expanded)
%              Maximal formula depth    :   10 (   3 average)
%              Maximal clause size      :   15 (   1 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t47_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t47_xboole_1)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(d7_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k3_xboole_0(X1,X2) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d7_xboole_0)).

fof(t46_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t46_xboole_1)).

fof(idempotence_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',idempotence_k2_xboole_0)).

fof(t41_xboole_1,axiom,(
    ! [X1,X2,X3] : k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t41_xboole_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_boole)).

fof(t39_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t39_xboole_1)).

fof(t70_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( ~ ( ~ r1_xboole_0(X1,k2_xboole_0(X2,X3))
          & r1_xboole_0(X1,X2)
          & r1_xboole_0(X1,X3) )
      & ~ ( ~ ( r1_xboole_0(X1,X2)
              & r1_xboole_0(X1,X3) )
          & r1_xboole_0(X1,k2_xboole_0(X2,X3)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t70_xboole_1)).

fof(c_0_9,plain,(
    ! [X15,X16] : k4_xboole_0(X15,k3_xboole_0(X15,X16)) = k4_xboole_0(X15,X16) ),
    inference(variable_rename,[status(thm)],[t47_xboole_1])).

fof(c_0_10,plain,(
    ! [X17,X18] : k4_xboole_0(X17,k4_xboole_0(X17,X18)) = k3_xboole_0(X17,X18) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_11,plain,(
    ! [X4,X5] :
      ( ( ~ r1_xboole_0(X4,X5)
        | k3_xboole_0(X4,X5) = k1_xboole_0 )
      & ( k3_xboole_0(X4,X5) != k1_xboole_0
        | r1_xboole_0(X4,X5) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).

fof(c_0_12,plain,(
    ! [X13,X14] : k4_xboole_0(X13,k2_xboole_0(X13,X14)) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t46_xboole_1])).

fof(c_0_13,plain,(
    ! [X6] : k2_xboole_0(X6,X6) = X6 ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).

fof(c_0_14,plain,(
    ! [X10,X11,X12] : k4_xboole_0(k4_xboole_0(X10,X11),X12) = k4_xboole_0(X10,k2_xboole_0(X11,X12)) ),
    inference(variable_rename,[status(thm)],[t41_xboole_1])).

cnf(c_0_15,plain,
    ( k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_16,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( k3_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_18,plain,(
    ! [X9] : k4_xboole_0(X9,k1_xboole_0) = X9 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

cnf(c_0_19,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X1,X2)) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( k2_xboole_0(X1,X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_21,plain,(
    ! [X7,X8] : k2_xboole_0(X7,k4_xboole_0(X8,X7)) = k2_xboole_0(X7,X8) ),
    inference(variable_rename,[status(thm)],[t39_xboole_1])).

cnf(c_0_22,plain,
    ( k4_xboole_0(k4_xboole_0(X1,X2),X3) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_23,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2))) = k4_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_24,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_17,c_0_16])).

cnf(c_0_25,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_26,plain,
    ( k4_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_27,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X2,X1)) = k2_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_28,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ~ ( ~ r1_xboole_0(X1,k2_xboole_0(X2,X3))
            & r1_xboole_0(X1,X2)
            & r1_xboole_0(X1,X3) )
        & ~ ( ~ ( r1_xboole_0(X1,X2)
                & r1_xboole_0(X1,X3) )
            & r1_xboole_0(X1,k2_xboole_0(X2,X3)) ) ) ),
    inference(assume_negation,[status(cth)],[t70_xboole_1])).

cnf(c_0_29,plain,
    ( r1_xboole_0(X1,X2)
    | k3_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_30,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X2,k4_xboole_0(X1,k2_xboole_0(X2,k4_xboole_0(X1,k2_xboole_0(X2,X3)))))) = k4_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_22]),c_0_22]),c_0_22])).

cnf(c_0_31,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_24]),c_0_25])).

cnf(c_0_32,plain,
    ( k4_xboole_0(X1,k2_xboole_0(X2,X1)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_22]),c_0_27])).

cnf(c_0_33,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_26]),c_0_20])).

fof(c_0_34,negated_conjecture,
    ( ( ~ r1_xboole_0(esk1_0,esk2_0)
      | ~ r1_xboole_0(esk1_0,esk3_0)
      | ~ r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0)) )
    & ( r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))
      | ~ r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0)) )
    & ( ~ r1_xboole_0(esk1_0,esk2_0)
      | ~ r1_xboole_0(esk1_0,esk3_0)
      | r1_xboole_0(esk1_0,esk2_0) )
    & ( r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))
      | r1_xboole_0(esk1_0,esk2_0) )
    & ( ~ r1_xboole_0(esk1_0,esk2_0)
      | ~ r1_xboole_0(esk1_0,esk3_0)
      | r1_xboole_0(esk1_0,esk3_0) )
    & ( r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))
      | r1_xboole_0(esk1_0,esk3_0) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_28])])])])])).

cnf(c_0_35,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X1,k4_xboole_0(X1,X2)) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_29,c_0_16])).

cnf(c_0_36,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_32]),c_0_33])).

cnf(c_0_37,negated_conjecture,
    ( r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))
    | r1_xboole_0(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_38,plain,
    ( r1_xboole_0(k4_xboole_0(X1,X2),X3)
    | k4_xboole_0(X1,k2_xboole_0(X2,k4_xboole_0(X1,k2_xboole_0(X2,X3)))) != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_22]),c_0_22])).

cnf(c_0_39,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk2_0) = esk1_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_36,c_0_37]),c_0_31])).

cnf(c_0_40,plain,
    ( r1_xboole_0(k4_xboole_0(X1,X2),X3)
    | ~ r1_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_31]),c_0_32])])).

cnf(c_0_41,negated_conjecture,
    ( ~ r1_xboole_0(esk1_0,esk2_0)
    | ~ r1_xboole_0(esk1_0,esk3_0)
    | ~ r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_42,negated_conjecture,
    ( r1_xboole_0(esk1_0,esk2_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_39]),c_0_26])])).

cnf(c_0_43,negated_conjecture,
    ( r1_xboole_0(esk1_0,X1)
    | ~ r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,X1)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_39])).

cnf(c_0_44,negated_conjecture,
    ( r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))
    | r1_xboole_0(esk1_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_45,plain,
    ( r1_xboole_0(k4_xboole_0(X1,X2),X2) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_20]),c_0_27]),c_0_32])])).

cnf(c_0_46,negated_conjecture,
    ( k4_xboole_0(esk1_0,k2_xboole_0(esk2_0,X1)) = k4_xboole_0(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_22,c_0_39])).

cnf(c_0_47,negated_conjecture,
    ( ~ r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))
    | ~ r1_xboole_0(esk1_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_42])])).

cnf(c_0_48,negated_conjecture,
    ( r1_xboole_0(esk1_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_49,negated_conjecture,
    ( r1_xboole_0(k4_xboole_0(esk1_0,X1),k2_xboole_0(esk2_0,X1)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_50,negated_conjecture,
    ( ~ r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_47,c_0_48])])).

cnf(c_0_51,negated_conjecture,
    ( r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,X1))
    | ~ r1_xboole_0(esk1_0,X1) ),
    inference(spm,[status(thm)],[c_0_49,c_0_31])).

cnf(c_0_52,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_48])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n011.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 17:35:12 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.20/0.51  # AutoSched0-Mode selected heuristic G_E___208_C48_F1_AE_CS_SP_PS_S0Y
% 0.20/0.51  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.20/0.51  #
% 0.20/0.51  # Preprocessing time       : 0.026 s
% 0.20/0.51  # Presaturation interreduction done
% 0.20/0.51  
% 0.20/0.51  # Proof found!
% 0.20/0.51  # SZS status Theorem
% 0.20/0.51  # SZS output start CNFRefutation
% 0.20/0.51  fof(t47_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t47_xboole_1)).
% 0.20/0.51  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.20/0.51  fof(d7_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k3_xboole_0(X1,X2)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d7_xboole_0)).
% 0.20/0.51  fof(t46_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t46_xboole_1)).
% 0.20/0.51  fof(idempotence_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', idempotence_k2_xboole_0)).
% 0.20/0.52  fof(t41_xboole_1, axiom, ![X1, X2, X3]:k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t41_xboole_1)).
% 0.20/0.52  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_boole)).
% 0.20/0.52  fof(t39_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t39_xboole_1)).
% 0.20/0.52  fof(t70_xboole_1, conjecture, ![X1, X2, X3]:(~(((~(r1_xboole_0(X1,k2_xboole_0(X2,X3)))&r1_xboole_0(X1,X2))&r1_xboole_0(X1,X3)))&~((~((r1_xboole_0(X1,X2)&r1_xboole_0(X1,X3)))&r1_xboole_0(X1,k2_xboole_0(X2,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t70_xboole_1)).
% 0.20/0.52  fof(c_0_9, plain, ![X15, X16]:k4_xboole_0(X15,k3_xboole_0(X15,X16))=k4_xboole_0(X15,X16), inference(variable_rename,[status(thm)],[t47_xboole_1])).
% 0.20/0.52  fof(c_0_10, plain, ![X17, X18]:k4_xboole_0(X17,k4_xboole_0(X17,X18))=k3_xboole_0(X17,X18), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.20/0.52  fof(c_0_11, plain, ![X4, X5]:((~r1_xboole_0(X4,X5)|k3_xboole_0(X4,X5)=k1_xboole_0)&(k3_xboole_0(X4,X5)!=k1_xboole_0|r1_xboole_0(X4,X5))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).
% 0.20/0.52  fof(c_0_12, plain, ![X13, X14]:k4_xboole_0(X13,k2_xboole_0(X13,X14))=k1_xboole_0, inference(variable_rename,[status(thm)],[t46_xboole_1])).
% 0.20/0.52  fof(c_0_13, plain, ![X6]:k2_xboole_0(X6,X6)=X6, inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[idempotence_k2_xboole_0])])).
% 0.20/0.52  fof(c_0_14, plain, ![X10, X11, X12]:k4_xboole_0(k4_xboole_0(X10,X11),X12)=k4_xboole_0(X10,k2_xboole_0(X11,X12)), inference(variable_rename,[status(thm)],[t41_xboole_1])).
% 0.20/0.52  cnf(c_0_15, plain, (k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.52  cnf(c_0_16, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.52  cnf(c_0_17, plain, (k3_xboole_0(X1,X2)=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.52  fof(c_0_18, plain, ![X9]:k4_xboole_0(X9,k1_xboole_0)=X9, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.20/0.52  cnf(c_0_19, plain, (k4_xboole_0(X1,k2_xboole_0(X1,X2))=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.52  cnf(c_0_20, plain, (k2_xboole_0(X1,X1)=X1), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.20/0.52  fof(c_0_21, plain, ![X7, X8]:k2_xboole_0(X7,k4_xboole_0(X8,X7))=k2_xboole_0(X7,X8), inference(variable_rename,[status(thm)],[t39_xboole_1])).
% 0.20/0.52  cnf(c_0_22, plain, (k4_xboole_0(k4_xboole_0(X1,X2),X3)=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.52  cnf(c_0_23, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2)))=k4_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_15, c_0_16])).
% 0.20/0.52  cnf(c_0_24, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_17, c_0_16])).
% 0.20/0.52  cnf(c_0_25, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.52  cnf(c_0_26, plain, (k4_xboole_0(X1,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.20/0.52  cnf(c_0_27, plain, (k2_xboole_0(X1,k4_xboole_0(X2,X1))=k2_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.52  fof(c_0_28, negated_conjecture, ~(![X1, X2, X3]:(~(((~(r1_xboole_0(X1,k2_xboole_0(X2,X3)))&r1_xboole_0(X1,X2))&r1_xboole_0(X1,X3)))&~((~((r1_xboole_0(X1,X2)&r1_xboole_0(X1,X3)))&r1_xboole_0(X1,k2_xboole_0(X2,X3)))))), inference(assume_negation,[status(cth)],[t70_xboole_1])).
% 0.20/0.52  cnf(c_0_29, plain, (r1_xboole_0(X1,X2)|k3_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.52  cnf(c_0_30, plain, (k4_xboole_0(X1,k2_xboole_0(X2,k4_xboole_0(X1,k2_xboole_0(X2,k4_xboole_0(X1,k2_xboole_0(X2,X3))))))=k4_xboole_0(X1,k2_xboole_0(X2,X3))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_22]), c_0_22]), c_0_22])).
% 0.20/0.52  cnf(c_0_31, plain, (k4_xboole_0(X1,X2)=X1|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_24]), c_0_25])).
% 0.20/0.52  cnf(c_0_32, plain, (k4_xboole_0(X1,k2_xboole_0(X2,X1))=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_22]), c_0_27])).
% 0.20/0.52  cnf(c_0_33, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_26]), c_0_20])).
% 0.20/0.52  fof(c_0_34, negated_conjecture, ((((~r1_xboole_0(esk1_0,esk2_0)|~r1_xboole_0(esk1_0,esk3_0)|~r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0)))&(r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))|~r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))))&((~r1_xboole_0(esk1_0,esk2_0)|~r1_xboole_0(esk1_0,esk3_0)|r1_xboole_0(esk1_0,esk2_0))&(r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))|r1_xboole_0(esk1_0,esk2_0))))&((~r1_xboole_0(esk1_0,esk2_0)|~r1_xboole_0(esk1_0,esk3_0)|r1_xboole_0(esk1_0,esk3_0))&(r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))|r1_xboole_0(esk1_0,esk3_0)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_28])])])])])).
% 0.20/0.52  cnf(c_0_35, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X1,k4_xboole_0(X1,X2))!=k1_xboole_0), inference(rw,[status(thm)],[c_0_29, c_0_16])).
% 0.20/0.52  cnf(c_0_36, plain, (k4_xboole_0(X1,X2)=X1|~r1_xboole_0(X1,k2_xboole_0(X2,X3))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_32]), c_0_33])).
% 0.20/0.52  cnf(c_0_37, negated_conjecture, (r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))|r1_xboole_0(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.52  cnf(c_0_38, plain, (r1_xboole_0(k4_xboole_0(X1,X2),X3)|k4_xboole_0(X1,k2_xboole_0(X2,k4_xboole_0(X1,k2_xboole_0(X2,X3))))!=k1_xboole_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_22]), c_0_22])).
% 0.20/0.52  cnf(c_0_39, negated_conjecture, (k4_xboole_0(esk1_0,esk2_0)=esk1_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_36, c_0_37]), c_0_31])).
% 0.20/0.52  cnf(c_0_40, plain, (r1_xboole_0(k4_xboole_0(X1,X2),X3)|~r1_xboole_0(X1,k2_xboole_0(X2,X3))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_31]), c_0_32])])).
% 0.20/0.52  cnf(c_0_41, negated_conjecture, (~r1_xboole_0(esk1_0,esk2_0)|~r1_xboole_0(esk1_0,esk3_0)|~r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.52  cnf(c_0_42, negated_conjecture, (r1_xboole_0(esk1_0,esk2_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_39]), c_0_26])])).
% 0.20/0.52  cnf(c_0_43, negated_conjecture, (r1_xboole_0(esk1_0,X1)|~r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,X1))), inference(spm,[status(thm)],[c_0_40, c_0_39])).
% 0.20/0.52  cnf(c_0_44, negated_conjecture, (r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))|r1_xboole_0(esk1_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.52  cnf(c_0_45, plain, (r1_xboole_0(k4_xboole_0(X1,X2),X2)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_20]), c_0_27]), c_0_32])])).
% 0.20/0.52  cnf(c_0_46, negated_conjecture, (k4_xboole_0(esk1_0,k2_xboole_0(esk2_0,X1))=k4_xboole_0(esk1_0,X1)), inference(spm,[status(thm)],[c_0_22, c_0_39])).
% 0.20/0.52  cnf(c_0_47, negated_conjecture, (~r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))|~r1_xboole_0(esk1_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_42])])).
% 0.20/0.52  cnf(c_0_48, negated_conjecture, (r1_xboole_0(esk1_0,esk3_0)), inference(spm,[status(thm)],[c_0_43, c_0_44])).
% 0.20/0.52  cnf(c_0_49, negated_conjecture, (r1_xboole_0(k4_xboole_0(esk1_0,X1),k2_xboole_0(esk2_0,X1))), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.20/0.52  cnf(c_0_50, negated_conjecture, (~r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_47, c_0_48])])).
% 0.20/0.52  cnf(c_0_51, negated_conjecture, (r1_xboole_0(esk1_0,k2_xboole_0(esk2_0,X1))|~r1_xboole_0(esk1_0,X1)), inference(spm,[status(thm)],[c_0_49, c_0_31])).
% 0.20/0.52  cnf(c_0_52, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_48])]), ['proof']).
% 0.20/0.52  # SZS output end CNFRefutation
% 0.20/0.52  # Proof object total steps             : 53
% 0.20/0.52  # Proof object clause steps            : 34
% 0.20/0.52  # Proof object formula steps           : 19
% 0.20/0.52  # Proof object conjectures             : 16
% 0.20/0.52  # Proof object clause conjectures      : 13
% 0.20/0.52  # Proof object formula conjectures     : 3
% 0.20/0.52  # Proof object initial clauses used    : 12
% 0.20/0.52  # Proof object initial formulas used   : 9
% 0.20/0.52  # Proof object generating inferences   : 17
% 0.20/0.52  # Proof object simplifying inferences  : 26
% 0.20/0.52  # Training examples: 0 positive, 0 negative
% 0.20/0.52  # Parsed axioms                        : 9
% 0.20/0.52  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.52  # Initial clauses                      : 15
% 0.20/0.52  # Removed in clause preprocessing      : 4
% 0.20/0.52  # Initial clauses in saturation        : 11
% 0.20/0.52  # Processed clauses                    : 2104
% 0.20/0.52  # ...of these trivial                  : 28
% 0.20/0.52  # ...subsumed                          : 1780
% 0.20/0.52  # ...remaining for further processing  : 296
% 0.20/0.52  # Other redundant clauses eliminated   : 0
% 0.20/0.52  # Clauses deleted for lack of memory   : 0
% 0.20/0.52  # Backward-subsumed                    : 10
% 0.20/0.52  # Backward-rewritten                   : 14
% 0.20/0.52  # Generated clauses                    : 14994
% 0.20/0.52  # ...of the previous two non-trivial   : 11592
% 0.20/0.52  # Contextual simplify-reflections      : 6
% 0.20/0.52  # Paramodulations                      : 14994
% 0.20/0.52  # Factorizations                       : 0
% 0.20/0.52  # Equation resolutions                 : 0
% 0.20/0.52  # Propositional unsat checks           : 0
% 0.20/0.52  #    Propositional check models        : 0
% 0.20/0.52  #    Propositional check unsatisfiable : 0
% 0.20/0.52  #    Propositional clauses             : 0
% 0.20/0.52  #    Propositional clauses after purity: 0
% 0.20/0.52  #    Propositional unsat core size     : 0
% 0.20/0.52  #    Propositional preprocessing time  : 0.000
% 0.20/0.52  #    Propositional encoding time       : 0.000
% 0.20/0.52  #    Propositional solver time         : 0.000
% 0.20/0.52  #    Success case prop preproc time    : 0.000
% 0.20/0.52  #    Success case prop encoding time   : 0.000
% 0.20/0.52  #    Success case prop solver time     : 0.000
% 0.20/0.52  # Current number of processed clauses  : 261
% 0.20/0.52  #    Positive orientable unit clauses  : 66
% 0.20/0.52  #    Positive unorientable unit clauses: 0
% 0.20/0.52  #    Negative unit clauses             : 63
% 0.20/0.52  #    Non-unit-clauses                  : 132
% 0.20/0.52  # Current number of unprocessed clauses: 9472
% 0.20/0.52  # ...number of literals in the above   : 19802
% 0.20/0.52  # Current number of archived formulas  : 0
% 0.20/0.52  # Current number of archived clauses   : 36
% 0.20/0.52  # Clause-clause subsumption calls (NU) : 3238
% 0.20/0.52  # Rec. Clause-clause subsumption calls : 2932
% 0.20/0.52  # Non-unit clause-clause subsumptions  : 491
% 0.20/0.52  # Unit Clause-clause subsumption calls : 881
% 0.20/0.52  # Rewrite failures with RHS unbound    : 0
% 0.20/0.52  # BW rewrite match attempts            : 360
% 0.20/0.52  # BW rewrite match successes           : 9
% 0.20/0.52  # Condensation attempts                : 0
% 0.20/0.52  # Condensation successes               : 0
% 0.20/0.52  # Termbank termtop insertions          : 156780
% 0.20/0.52  
% 0.20/0.52  # -------------------------------------------------
% 0.20/0.52  # User time                : 0.160 s
% 0.20/0.52  # System time              : 0.012 s
% 0.20/0.52  # Total time               : 0.172 s
% 0.20/0.52  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
