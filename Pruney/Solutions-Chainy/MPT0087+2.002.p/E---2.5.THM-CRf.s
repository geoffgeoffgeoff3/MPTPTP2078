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
% DateTime   : Thu Dec  3 10:33:34 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   50 (  76 expanded)
%              Number of clauses        :   27 (  34 expanded)
%              Number of leaves         :   11 (  20 expanded)
%              Depth                    :    8
%              Number of atoms          :   64 (  97 expanded)
%              Number of equality atoms :   41 (  65 expanded)
%              Maximal formula depth    :    6 (   2 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d7_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k3_xboole_0(X1,X2) = k1_xboole_0 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d7_xboole_0)).

fof(t48_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t48_xboole_1)).

fof(t80_xboole_1,conjecture,(
    ! [X1,X2,X3] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X1,k4_xboole_0(X2,X3)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t80_xboole_1)).

fof(t47_xboole_1,axiom,(
    ! [X1,X2] : k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t47_xboole_1)).

fof(t2_boole,axiom,(
    ! [X1] : k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_boole)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).

fof(commutativity_k2_xboole_0,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',commutativity_k2_xboole_0)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t12_xboole_1)).

fof(t36_xboole_1,axiom,(
    ! [X1,X2] : r1_tarski(k4_xboole_0(X1,X2),X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t36_xboole_1)).

fof(t49_xboole_1,axiom,(
    ! [X1,X2,X3] : k3_xboole_0(X1,k4_xboole_0(X2,X3)) = k4_xboole_0(k3_xboole_0(X1,X2),X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t49_xboole_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t3_boole)).

fof(c_0_11,plain,(
    ! [X6,X7] :
      ( ( ~ r1_xboole_0(X6,X7)
        | k3_xboole_0(X6,X7) = k1_xboole_0 )
      & ( k3_xboole_0(X6,X7) != k1_xboole_0
        | r1_xboole_0(X6,X7) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).

fof(c_0_12,plain,(
    ! [X17,X18] : k4_xboole_0(X17,k4_xboole_0(X17,X18)) = k3_xboole_0(X17,X18) ),
    inference(variable_rename,[status(thm)],[t48_xboole_1])).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( r1_xboole_0(X1,X2)
       => r1_xboole_0(X1,k4_xboole_0(X2,X3)) ) ),
    inference(assume_negation,[status(cth)],[t80_xboole_1])).

fof(c_0_14,plain,(
    ! [X15,X16] : k4_xboole_0(X15,k3_xboole_0(X15,X16)) = k4_xboole_0(X15,X16) ),
    inference(variable_rename,[status(thm)],[t47_xboole_1])).

cnf(c_0_15,plain,
    ( k3_xboole_0(X1,X2) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_16,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k3_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_17,negated_conjecture,
    ( r1_xboole_0(esk1_0,esk2_0)
    & ~ r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).

fof(c_0_18,plain,(
    ! [X11] : k3_xboole_0(X11,k1_xboole_0) = k1_xboole_0 ),
    inference(variable_rename,[status(thm)],[t2_boole])).

fof(c_0_19,plain,(
    ! [X10] : k2_xboole_0(X10,k1_xboole_0) = X10 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

fof(c_0_20,plain,(
    ! [X4,X5] : k2_xboole_0(X4,X5) = k2_xboole_0(X5,X4) ),
    inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).

fof(c_0_21,plain,(
    ! [X8,X9] :
      ( ~ r1_tarski(X8,X9)
      | k2_xboole_0(X8,X9) = X9 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

fof(c_0_22,plain,(
    ! [X12,X13] : r1_tarski(k4_xboole_0(X12,X13),X12) ),
    inference(variable_rename,[status(thm)],[t36_xboole_1])).

fof(c_0_23,plain,(
    ! [X19,X20,X21] : k3_xboole_0(X19,k4_xboole_0(X20,X21)) = k4_xboole_0(k3_xboole_0(X19,X20),X21) ),
    inference(variable_rename,[status(thm)],[t49_xboole_1])).

cnf(c_0_24,plain,
    ( k4_xboole_0(X1,k3_xboole_0(X1,X2)) = k4_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_25,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,X2)) = k1_xboole_0
    | ~ r1_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_15,c_0_16])).

cnf(c_0_26,negated_conjecture,
    ( r1_xboole_0(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_27,plain,(
    ! [X14] : k4_xboole_0(X14,k1_xboole_0) = X14 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

cnf(c_0_28,plain,
    ( k3_xboole_0(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_29,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_30,plain,
    ( k2_xboole_0(X1,X2) = k2_xboole_0(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_31,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_32,plain,
    ( r1_tarski(k4_xboole_0(X1,X2),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_33,plain,
    ( k3_xboole_0(X1,k4_xboole_0(X2,X3)) = k4_xboole_0(k3_xboole_0(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_34,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2))) = k4_xboole_0(X1,X2) ),
    inference(rw,[status(thm)],[c_0_24,c_0_16])).

cnf(c_0_35,negated_conjecture,
    ( k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0)) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_36,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_37,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0)) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_28,c_0_16])).

cnf(c_0_38,plain,
    ( k2_xboole_0(k1_xboole_0,X1) = X1 ),
    inference(spm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_39,plain,
    ( k2_xboole_0(X1,k4_xboole_0(X1,X2)) = X1 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_30])).

cnf(c_0_40,plain,
    ( r1_xboole_0(X1,X2)
    | k3_xboole_0(X1,X2) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_41,plain,
    ( k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X2,X3))) = k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X3) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33,c_0_16]),c_0_16])).

cnf(c_0_42,negated_conjecture,
    ( k4_xboole_0(esk1_0,esk2_0) = esk1_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_36])).

cnf(c_0_43,plain,
    ( k4_xboole_0(X1,X1) = k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_37,c_0_36])).

cnf(c_0_44,plain,
    ( k4_xboole_0(k1_xboole_0,X1) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_45,plain,
    ( r1_xboole_0(X1,X2)
    | k4_xboole_0(X1,k4_xboole_0(X1,X2)) != k1_xboole_0 ),
    inference(rw,[status(thm)],[c_0_40,c_0_16])).

cnf(c_0_46,negated_conjecture,
    ( k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,X1))) = k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_43]),c_0_44])).

cnf(c_0_47,negated_conjecture,
    ( ~ r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_48,negated_conjecture,
    ( r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,X1)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_49,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_47,c_0_48])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n013.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 14:47:39 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.38  # AutoSched0-Mode selected heuristic G_____Y1346__C12_02_nc_F1_AE_CS_SP_S2S
% 0.20/0.38  # and selection function SelectNewComplexAHP.
% 0.20/0.38  #
% 0.20/0.38  # Preprocessing time       : 0.039 s
% 0.20/0.38  # Presaturation interreduction done
% 0.20/0.38  
% 0.20/0.38  # Proof found!
% 0.20/0.38  # SZS status Theorem
% 0.20/0.38  # SZS output start CNFRefutation
% 0.20/0.38  fof(d7_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k3_xboole_0(X1,X2)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d7_xboole_0)).
% 0.20/0.38  fof(t48_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t48_xboole_1)).
% 0.20/0.38  fof(t80_xboole_1, conjecture, ![X1, X2, X3]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X1,k4_xboole_0(X2,X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t80_xboole_1)).
% 0.20/0.38  fof(t47_xboole_1, axiom, ![X1, X2]:k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t47_xboole_1)).
% 0.20/0.38  fof(t2_boole, axiom, ![X1]:k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_boole)).
% 0.20/0.38  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_boole)).
% 0.20/0.38  fof(commutativity_k2_xboole_0, axiom, ![X1, X2]:k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', commutativity_k2_xboole_0)).
% 0.20/0.38  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.20/0.38  fof(t36_xboole_1, axiom, ![X1, X2]:r1_tarski(k4_xboole_0(X1,X2),X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t36_xboole_1)).
% 0.20/0.38  fof(t49_xboole_1, axiom, ![X1, X2, X3]:k3_xboole_0(X1,k4_xboole_0(X2,X3))=k4_xboole_0(k3_xboole_0(X1,X2),X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t49_xboole_1)).
% 0.20/0.38  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t3_boole)).
% 0.20/0.38  fof(c_0_11, plain, ![X6, X7]:((~r1_xboole_0(X6,X7)|k3_xboole_0(X6,X7)=k1_xboole_0)&(k3_xboole_0(X6,X7)!=k1_xboole_0|r1_xboole_0(X6,X7))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_xboole_0])])).
% 0.20/0.38  fof(c_0_12, plain, ![X17, X18]:k4_xboole_0(X17,k4_xboole_0(X17,X18))=k3_xboole_0(X17,X18), inference(variable_rename,[status(thm)],[t48_xboole_1])).
% 0.20/0.38  fof(c_0_13, negated_conjecture, ~(![X1, X2, X3]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X1,k4_xboole_0(X2,X3)))), inference(assume_negation,[status(cth)],[t80_xboole_1])).
% 0.20/0.38  fof(c_0_14, plain, ![X15, X16]:k4_xboole_0(X15,k3_xboole_0(X15,X16))=k4_xboole_0(X15,X16), inference(variable_rename,[status(thm)],[t47_xboole_1])).
% 0.20/0.38  cnf(c_0_15, plain, (k3_xboole_0(X1,X2)=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.38  cnf(c_0_16, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k3_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.38  fof(c_0_17, negated_conjecture, (r1_xboole_0(esk1_0,esk2_0)&~r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).
% 0.20/0.38  fof(c_0_18, plain, ![X11]:k3_xboole_0(X11,k1_xboole_0)=k1_xboole_0, inference(variable_rename,[status(thm)],[t2_boole])).
% 0.20/0.38  fof(c_0_19, plain, ![X10]:k2_xboole_0(X10,k1_xboole_0)=X10, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.20/0.38  fof(c_0_20, plain, ![X4, X5]:k2_xboole_0(X4,X5)=k2_xboole_0(X5,X4), inference(variable_rename,[status(thm)],[commutativity_k2_xboole_0])).
% 0.20/0.38  fof(c_0_21, plain, ![X8, X9]:(~r1_tarski(X8,X9)|k2_xboole_0(X8,X9)=X9), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.20/0.38  fof(c_0_22, plain, ![X12, X13]:r1_tarski(k4_xboole_0(X12,X13),X12), inference(variable_rename,[status(thm)],[t36_xboole_1])).
% 0.20/0.38  fof(c_0_23, plain, ![X19, X20, X21]:k3_xboole_0(X19,k4_xboole_0(X20,X21))=k4_xboole_0(k3_xboole_0(X19,X20),X21), inference(variable_rename,[status(thm)],[t49_xboole_1])).
% 0.20/0.38  cnf(c_0_24, plain, (k4_xboole_0(X1,k3_xboole_0(X1,X2))=k4_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.38  cnf(c_0_25, plain, (k4_xboole_0(X1,k4_xboole_0(X1,X2))=k1_xboole_0|~r1_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_15, c_0_16])).
% 0.20/0.38  cnf(c_0_26, negated_conjecture, (r1_xboole_0(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.38  fof(c_0_27, plain, ![X14]:k4_xboole_0(X14,k1_xboole_0)=X14, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.20/0.38  cnf(c_0_28, plain, (k3_xboole_0(X1,k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.38  cnf(c_0_29, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.38  cnf(c_0_30, plain, (k2_xboole_0(X1,X2)=k2_xboole_0(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.38  cnf(c_0_31, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.38  cnf(c_0_32, plain, (r1_tarski(k4_xboole_0(X1,X2),X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.20/0.38  cnf(c_0_33, plain, (k3_xboole_0(X1,k4_xboole_0(X2,X3))=k4_xboole_0(k3_xboole_0(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.20/0.38  cnf(c_0_34, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X1,X2)))=k4_xboole_0(X1,X2)), inference(rw,[status(thm)],[c_0_24, c_0_16])).
% 0.20/0.38  cnf(c_0_35, negated_conjecture, (k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,esk2_0))=k1_xboole_0), inference(spm,[status(thm)],[c_0_25, c_0_26])).
% 0.20/0.38  cnf(c_0_36, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.20/0.38  cnf(c_0_37, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k1_xboole_0))=k1_xboole_0), inference(rw,[status(thm)],[c_0_28, c_0_16])).
% 0.20/0.38  cnf(c_0_38, plain, (k2_xboole_0(k1_xboole_0,X1)=X1), inference(spm,[status(thm)],[c_0_29, c_0_30])).
% 0.20/0.38  cnf(c_0_39, plain, (k2_xboole_0(X1,k4_xboole_0(X1,X2))=X1), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_30])).
% 0.20/0.38  cnf(c_0_40, plain, (r1_xboole_0(X1,X2)|k3_xboole_0(X1,X2)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.38  cnf(c_0_41, plain, (k4_xboole_0(X1,k4_xboole_0(X1,k4_xboole_0(X2,X3)))=k4_xboole_0(k4_xboole_0(X1,k4_xboole_0(X1,X2)),X3)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_33, c_0_16]), c_0_16])).
% 0.20/0.38  cnf(c_0_42, negated_conjecture, (k4_xboole_0(esk1_0,esk2_0)=esk1_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_36])).
% 0.20/0.38  cnf(c_0_43, plain, (k4_xboole_0(X1,X1)=k1_xboole_0), inference(rw,[status(thm)],[c_0_37, c_0_36])).
% 0.20/0.38  cnf(c_0_44, plain, (k4_xboole_0(k1_xboole_0,X1)=k1_xboole_0), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.20/0.38  cnf(c_0_45, plain, (r1_xboole_0(X1,X2)|k4_xboole_0(X1,k4_xboole_0(X1,X2))!=k1_xboole_0), inference(rw,[status(thm)],[c_0_40, c_0_16])).
% 0.20/0.38  cnf(c_0_46, negated_conjecture, (k4_xboole_0(esk1_0,k4_xboole_0(esk1_0,k4_xboole_0(esk2_0,X1)))=k1_xboole_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_43]), c_0_44])).
% 0.20/0.38  cnf(c_0_47, negated_conjecture, (~r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.38  cnf(c_0_48, negated_conjecture, (r1_xboole_0(esk1_0,k4_xboole_0(esk2_0,X1))), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.20/0.38  cnf(c_0_49, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_47, c_0_48])]), ['proof']).
% 0.20/0.38  # SZS output end CNFRefutation
% 0.20/0.38  # Proof object total steps             : 50
% 0.20/0.38  # Proof object clause steps            : 27
% 0.20/0.38  # Proof object formula steps           : 23
% 0.20/0.38  # Proof object conjectures             : 10
% 0.20/0.38  # Proof object clause conjectures      : 7
% 0.20/0.38  # Proof object formula conjectures     : 3
% 0.20/0.38  # Proof object initial clauses used    : 13
% 0.20/0.38  # Proof object initial formulas used   : 11
% 0.20/0.38  # Proof object generating inferences   : 7
% 0.20/0.38  # Proof object simplifying inferences  : 13
% 0.20/0.38  # Training examples: 0 positive, 0 negative
% 0.20/0.38  # Parsed axioms                        : 11
% 0.20/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.38  # Initial clauses                      : 13
% 0.20/0.38  # Removed in clause preprocessing      : 1
% 0.20/0.38  # Initial clauses in saturation        : 12
% 0.20/0.38  # Processed clauses                    : 44
% 0.20/0.38  # ...of these trivial                  : 2
% 0.20/0.38  # ...subsumed                          : 4
% 0.20/0.38  # ...remaining for further processing  : 38
% 0.20/0.38  # Other redundant clauses eliminated   : 0
% 0.20/0.38  # Clauses deleted for lack of memory   : 0
% 0.20/0.38  # Backward-subsumed                    : 0
% 0.20/0.38  # Backward-rewritten                   : 2
% 0.20/0.38  # Generated clauses                    : 82
% 0.20/0.38  # ...of the previous two non-trivial   : 36
% 0.20/0.38  # Contextual simplify-reflections      : 0
% 0.20/0.38  # Paramodulations                      : 81
% 0.20/0.38  # Factorizations                       : 0
% 0.20/0.38  # Equation resolutions                 : 1
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
% 0.20/0.38  # Current number of processed clauses  : 24
% 0.20/0.38  #    Positive orientable unit clauses  : 18
% 0.20/0.38  #    Positive unorientable unit clauses: 1
% 0.20/0.38  #    Negative unit clauses             : 0
% 0.20/0.38  #    Non-unit-clauses                  : 5
% 0.20/0.38  # Current number of unprocessed clauses: 16
% 0.20/0.38  # ...number of literals in the above   : 20
% 0.20/0.38  # Current number of archived formulas  : 0
% 0.20/0.38  # Current number of archived clauses   : 15
% 0.20/0.38  # Clause-clause subsumption calls (NU) : 8
% 0.20/0.38  # Rec. Clause-clause subsumption calls : 8
% 0.20/0.38  # Non-unit clause-clause subsumptions  : 4
% 0.20/0.38  # Unit Clause-clause subsumption calls : 1
% 0.20/0.38  # Rewrite failures with RHS unbound    : 0
% 0.20/0.38  # BW rewrite match attempts            : 15
% 0.20/0.38  # BW rewrite match successes           : 6
% 0.20/0.38  # Condensation attempts                : 0
% 0.20/0.38  # Condensation successes               : 0
% 0.20/0.38  # Termbank termtop insertions          : 1231
% 0.20/0.38  
% 0.20/0.38  # -------------------------------------------------
% 0.20/0.38  # User time                : 0.044 s
% 0.20/0.38  # System time              : 0.000 s
% 0.20/0.38  # Total time               : 0.044 s
% 0.20/0.38  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
